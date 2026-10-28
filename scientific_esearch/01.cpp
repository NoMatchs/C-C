#include <windows.h>
#include <iostream>
#include <vector>
#include <chrono>
#include <algorithm>

using namespace std::chrono;

int main()
{
    const size_t RECORD_SIZE = 512;
    const size_t N = 100000;
    const double SPIKE_THRESHOLD_US = 100.0;

    HANDLE hFile = CreateFileW(
        L"test_output.bin",
        GENERIC_WRITE,
        0, nullptr,
        CREATE_ALWAYS,
        FILE_ATTRIBUTE_NORMAL, // 默认缓存模式
        nullptr);

    if (hFile == INVALID_HANDLE_VALUE)
    {
        std::cerr << "CreateFile failed\n";
        return 1;
    }

    std::vector<char> buffer(RECORD_SIZE, 'x');
    std::vector<double> latencies_us;
    latencies_us.reserve(N);

    DWORD written = 0;

    for (size_t i = 0; i < N; ++i)
    {
        auto start = steady_clock::now();
        WriteFile(hFile, buffer.data(), RECORD_SIZE, &written, nullptr);
        auto end = steady_clock::now();

        double us = duration_cast<nanoseconds>(end - start).count() / 1000.0;
        latencies_us.push_back(us);
    }

    CloseHandle(hFile);

    // --- 下面是为你补充的统计代码 ---

    if (latencies_us.empty())
        return 0;

    // 1. 计算中位数 (需要先排序)
    std::sort(latencies_us.begin(), latencies_us.end());
    double median = latencies_us[N / 2];

    // 2. 最大值 (因为排好序了，直接取最后一个)
    double max_latency = latencies_us.back();

    // 3. 统计尖刺次数 (大于阈值的次数)
    int spike_count = 0;
    for (double lat : latencies_us)
    {
        if (lat > SPIKE_THRESHOLD_US)
        {
            spike_count++;
        }
    }

    // 输出结果
    std::cout << "--- 性能测试结果 ---" << std::endl;
    std::cout << "总写入次数: " << N << std::endl;
    std::cout << "中位数延迟: " << median << " us" << std::endl;
    std::cout << "最大延迟:   " << max_latency << " us" << std::endl;
    std::cout << "尖刺次数 (> " << SPIKE_THRESHOLD_US << " us): " << spike_count << " 次" << std::endl;

    return 0;
}