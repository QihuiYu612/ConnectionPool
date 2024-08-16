#include <string>
#include <queue>
#include <mutex>
#include <atomic>
#include <thread>
#include <condition_variable>
#include <memory>
#include <functional>
#include "Connection.h"
using namespace std;


/*
实现连接池功能模块
*/

// 单例模式、线程安全
class ConnectionPool
{
public:
    // 获取连接池实例对象
    static ConnectionPool* instance();
    // 给外部提供接口，从连接池获取一个可以的空闲连接
    // 返回智能指针，出作用域析构
    shared_ptr<Connection> getConnection();
private:
    ConnectionPool();
    bool loadConfigFile();

    void produceConnectionTask();
    void scannerConnectionTask();

    string _ip;
    unsigned short _port;
    string _username;
    string _dbname;
    string _password;

    int _initSize;
    int _maxSize;
    // 连接池最大空闲时间
    int _maxIdleTime;
    // 连接池获取连接的超时时间
    int _connectionTimeout;

    // 智能指针
    // 存储mysql连接的队列
    // 多线程使用需要保证线程安全
    queue<Connection*> _connectionQue;
    // 互斥锁
    mutex _queueMutex;
    // 线程安全的int++ 
    // 记录连接所创建的connection连接的总数量
    atomic_int _connectionCnt;
    // 设置条件变量，用于连接生产者线程和消费者线程的通信
    condition_variable cv;
};