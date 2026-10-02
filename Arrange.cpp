#include <iostream>
#include <chrono>
using namespace std;
using namespace std::chrono;

long long o_n(int n)
{
    long long s = 0;
    for (int i = 0; i < n; ++i)
        s += i;
    return s;
}

long long o_n2(int n)
{
    long long s = 0;
    for (int i = 0; i < n; ++i)
        for (int j = 0; j < n; ++j)
            s += 1;
    return s;
}

int main()
{
    for (int n : {1000, 2000, 4000})
    {
        auto t1 = high_resolution_clock::now();
        o_n(n);
        auto t2 = high_resolution_clock::now();
        o_n2(n);
        auto t3 = high_resolution_clock::now();

        double d1 = duration<double>(t2 - t1).count();
        double d2 = duration<double>(t3 - t2).count();
        cout << "n=" << n
             << "  O(n)=" << d1 << "s"
             << "  O(n^2)=" << d2 << "s\n";
    }
    return 0;
}