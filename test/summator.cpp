#include <iostream>

using namespace std;

bool AND(bool a, bool b) { return a && b; }
bool OR(bool a, bool b) { return a || b; }
bool XOR(bool a, bool b) { return a != b; }

// 半加器
struct HalfAdderResult
{
    bool sum;
    bool carry;
};

HalfAdderResult halfAdder(bool a, bool b)
{
    return {XOR(a, b), AND(a, b)};
}

// 全加器
struct FullAdderResult
{
    bool sum;
    bool carry;
};

FullAdderResult fullAdder(bool a, bool b, bool cin)
{
    auto h1 = halfAdder(a, b);
    auto h2 = halfAdder(h1.sum, cin);
    bool cout = OR(h1.carry, h2.carry);
    return {h2.sum, cout};
}

int main()
{
    // 测试全加器真值表
    std::cout << "A B Cin | Sum Cout\n";
    for (int a = 0; a <= 1; ++a)
        for (int b = 0; b <= 1; ++b)
            for (int c = 0; c <= 1; ++c)
            {
                auto r = fullAdder(a, b, c);
                std::cout << a << " " << b << " " << c
                          << "   |  " << r.sum << "   " << r.carry << "\n";
            }

    return 0;
}