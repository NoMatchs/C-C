#include <windows.h>
#include <iostream>
#include <vector>
#include <chrono>
#include <algorithm>
#include <iomanip>
#include <string>

using namespace std::chrono;

struct Stats
{
    double median_us;
    double max_us;
    int spike_count;
    double spike_ratio;
    std::vector<double> spike_values;
};

Stats run_write_test(size_t record_size, size_t n_writes, const std::wstring &filename,
                     double spike_threshold_us)
{
    HANDLE hFile = CreateFileW(
        filename.c_str(),
        GENERIC_WRITE,
        0, nullptr,
        CREATE_ALWAYS,
        FILE_ATTRIBUTE_NORMAL,
        nullptr);

    Stats result{};
    if (hFile == INVALID_HANDLE_VALUE)
    {
        std::cerr << "CreateFile failed for " << std::string(filename.begin(), filename.end()) << "\n";
        return result;
    }

    std::vector<char> buffer(record_size, 'x');
    std::vector<double> latencies_us;
    latencies_us.reserve(n_writes);
    std::vector<size_t> spike_positions;

    DWORD written = 0;

    for (size_t i = 0; i < n_writes; ++i)
    {
        auto start = steady_clock::now();
        WriteFile(hFile, buffer.data(), (DWORD)record_size, &written, nullptr);
        auto end = steady_clock::now();

        double us = duration_cast<nanoseconds>(end - start).count() / 1000.0;
        latencies_us.push_back(us);

        if (us > spike_threshold_us)
        {
            result.spike_count++;
            result.spike_values.push_back(us);
            spike_positions.push_back(i);
        }
    }

    CloseHandle(hFile);

    // 中位数
    std::vector<double> sorted = latencies_us;
    std::sort(sorted.begin(), sorted.end());
    result.median_us = sorted[sorted.size() / 2];
    result.max_us = sorted.back();
    result.spike_ratio = (double)result.spike_count / n_writes * 100.0;

    // 打印
    std::cout << std::fixed << std::setprecision(2);
    std::cout << "===== 记录大小 " << record_size << "B, 写入 " << n_writes << " 次 =====\n";
    std::cout << "中位数: " << result.median_us << " us\n";
    std::cout << "最大值: " << result.max_us << " us\n";
    std::cout << "尖刺次数 (>" << spike_threshold_us << " us): " << result.spike_count
              << " (" << result.spike_ratio << "%)\n";

    if (!result.spike_values.empty())
    {
        std::sort(result.spike_values.begin(), result.spike_values.end());
        std::cout << "尖刺幅度: 最小 " << result.spike_values.front()
                  << " us, 中位 " << result.spike_values[result.spike_values.size() / 2]
                  << " us, 最大 " << result.spike_values.back() << " us\n";

        // 幅度分桶
        int b1 = 0, b2 = 0, b3 = 0, b4 = 0;
        for (double v : result.spike_values)
        {
            if (v < 200)
                b1++;
            else if (v < 500)
                b2++;
            else if (v < 1000)
                b3++;
            else
                b4++;
        }
        std::cout << "幅度分布: 100~200us: " << b1
                  << ", 200~500us: " << b2
                  << ", 500~1000us: " << b3
                  << ", >1000us: " << b4 << "\n";

        // 位置分布（每 1/10 区间统计尖刺次数，看是否周期性）
        std::cout << "尖刺位置分布（按写入进度分 10 段）: ";
        std::vector<int> segments(10, 0);
        for (size_t pos : spike_positions)
        {
            segments[pos * 10 / n_writes]++;
        }
        for (int s : segments)
            std::cout << s << " ";
        std::cout << "\n";
    }
    std::cout << "\n";

    return result;
}

int main()
{
    const double SPIKE_THRESHOLD_US = 100.0;

    // 阶段二：改变记录大小，总写入量约 50MB
    run_write_test(512, 100000, L"test_512B.bin", SPIKE_THRESHOLD_US);
    run_write_test(4096, 12800, L"test_4KB.bin", SPIKE_THRESHOLD_US);
    run_write_test(65536, 800, L"test_64KB.bin", SPIKE_THRESHOLD_US);
    run_write_test(262144, 200, L"test_256KB.bin", SPIKE_THRESHOLD_US);

    system("pause");
    return 0;
}