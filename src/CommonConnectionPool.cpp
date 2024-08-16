#include "CommonConnectionPool.h"
#include "public.h"

// 线程安全的懒汉单例函数接口
ConnectionPool *ConnectionPool::instance()
{
	// C++11 保证线程安全，只会编译一次
	static ConnectionPool _pool; // lock和unlock
	return &_pool;
}

// 连接池的构造
ConnectionPool::ConnectionPool()
{
	if (loadConfigFile())
	{
		return;
	}

	// 创建初始数量的连接
	for (int i = 0; i < _initSize; ++i)
	{
		Connection *p = new Connection();
		p->connect(_ip, _port, _username, _dbname, _password);
		p->refreshAliveTime();
		_connectionQue.push(p);
		_connectionCnt++;
	}

	// 启动一个新的线程作为连接生产者
	// 开始考虑线程安全
	// 线程函数都是C接口
	thread produce(std::bind(&ConnectionPool::produceConnectionTask, this));
	produce.detach();
	// 启动一个新的定时线程，扫描超过maxIdleTime时间的空闲连接，进行多余的连接回收
	thread scanner(std::bind(&ConnectionPool::scannerConnectionTask, this));
	scanner.detach();
}

bool ConnectionPool::loadConfigFile()
{
	FILE *pf = fopen("mysql.ini", "r");
	if (pf == nullptr)
	{
		LOG("mysql.ini file is not exist!");
		return false;
	}
	while (!feof(pf))
	{
		char line[1024] = {0};
		fgets(line, 1024, pf);
		string str = line;
		int idx = str.find('=', 0);
		// 无效配置项
		if (idx == -1)
		{
			continue;
		}
		// password=123456\n
		int endidx = str.find('\n', idx);
		string key = str.substr(0, idx);
		string value = str.substr(idx + 1, endidx - idx - 1);
		// cout << "key:" << key << "   value:" << value << endl;
		if (key == "ip")
		{
			_ip = value;
		}
		else if (key == "port")
		{
			_port = atoi(value.c_str());
		}
		else if (key == "username")
		{
			_username = value;
		}
		else if (key == "password")
		{
			_password = value;
		}
		else if (key == "dbname")
		{
			_dbname = value;
		}
		else if (key == "initSize")
		{
			_initSize = atoi(value.c_str());
		}
		else if (key == "maxSize")
		{
			_maxSize = atoi(value.c_str());
		}
		else if (key == "maxIdleTime")
		{
			_maxIdleTime = atoi(value.c_str());
		}
		else if (key == "connectionTimeOut")
		{
			_connectionTimeout = atoi(value.c_str());
		}
	}
	return true;
}

// 运行在独立的线程中，专门负责生产新连接（生产者）
void ConnectionPool::produceConnectionTask()
{
	for (;;)
	{
		unique_lock<mutex> lock(_queueMutex);
		while (!_connectionQue.empty())
		{
			cv.wait(lock); // 队列不为空，等待
		}
		if (_connectionCnt < _maxSize)
		{
			Connection *p = new Connection();
			p->connect(_ip, _port, _username, _dbname, _password);
			p->refreshAliveTime();
			// TODO:判断是否连接成功
			_connectionQue.push(p);
			_connectionCnt++;
		}
		// 通知消费者线程，可以消费连接了
		cv.notify_all();
	}
}

void ConnectionPool::scannerConnectionTask()
{
	for (;;)
	{
		// 通过sleep模拟定时效果
		this_thread::sleep_for(chrono::seconds(_maxIdleTime));

		// 扫描整个队列，释放多余的连接
		unique_lock<mutex> lock(_queueMutex);
		while (_connectionCnt > _initSize)
		{
			Connection *p = _connectionQue.front();
			if (p->getAliveTime() >= (_maxIdleTime * 1000))
			{
				_connectionQue.pop();
				_connectionCnt--;
				delete p; // 调用~Connection()释放连接
			}
			else
			{
				break; // 队头的连接没有超过_maxIdleTime，其它连接肯定没有
			}
		}
	}
}

// 给外部提供接口，从连接池获取一个可以的空闲连接
// 返回智能指针，出作用域析构
shared_ptr<Connection> ConnectionPool::getConnection()
{
	unique_lock<mutex> lock(_queueMutex);
	while (_connectionQue.empty())
	{
		if(cv_status::timeout == cv.wait_for(lock, chrono::milliseconds(_connectionTimeout)))
		{
			if (_connectionQue.empty())
			{
			LOG("获取空闲连接超时了...获取连接失败！");
			return nullptr;
			}
		}
	}
	/*
	shared_ptr智能指针析构时，会把connection资源直接delete掉

	*/
	// 队头元素
	shared_ptr<Connection> sp(_connectionQue.front(),
		[&](Connection *pcon){
			unique_lock<mutex> lock(_queueMutex);
			pcon->refreshAliveTime();
			_connectionQue.push(pcon);
		}
	);
	// 出队
	_connectionQue.pop();
	cv.notify_all(); // 通知生产者线程，检测是否需要生产连接
	return sp;
}