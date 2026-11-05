#include <iostream>
#include <thread>
#include <chrono>

void worker(int id)
{
    for (int i = 0; i < 3; i++)
    {
        std::cout << "线程 " << id << " 输出 " << i << "\n";
        std::this_thread::sleep_for(std::chrono::milliseconds(100));
    }
}

int main()
{
    std::thread t1(worker, 1); // 创建线程，运行 worker(1)
    std::thread t2(worker, 2); // 再创建一个，运行 worker(2)

    std::cout << "主线程继续执行\n";

    t1.join(); // 等 t1 跑完
    t2.join(); // 等 t2 跑完

    std::cout << "全部结束\n";
    return 0;
}