// #include "pch.h"
#include <iostream>
#include "Connection.h"
#include "CommonConnectionPool.h"
using namespace std;


int main(int argc, char *argv[])
{
    /*

    std::cout << "Hello world!" << std::endl;
    Connection conn;
    char sql[1024] = {0};
    sprintf(sql,"insert into user0(name,password) values('%s','%s')",
        "zhang san1111","123456");
    conn.connect("127.0.0.1",3306,"root","964566733Yu.","chat");
    conn.update(sql);

    */
    // ConnectionPool *cp = ConnectionPool::instance();
    // cp->loadConfigFile();

    clock_t begin = clock();
    ConnectionPool *cp = ConnectionPool::instance();
    for(int i=0;i<1000;++i)
    {
        // Connection conn;
        // char sql[1024] = {0};
        // sprintf(sql,"insert into user1(id,name,password) values('%d','%s','%s')",
        // 2,"zhang san1111","123456");
        // conn.connect("127.0.0.1",3306,"root","964566733Yu.","chat");
        // conn.update(sql);
        shared_ptr<Connection> sp = cp->getConnection();
        char sql[1024] = {0};
        sprintf(sql,"insert into user1(id,name,password) values('%d','%s','%s')",
        2,"zhang san1111","123456");
        sp->update(sql);
    }
    clock_t end = clock();
    cout << (end - begin) << "ms" << endl;

    return 0;
}
