#include <iostream>
#include <vector>
#include <map>
#include <string>
#include <unordered_map>
#include <stack>
#include <algorithm>
#include <numeric>

using namespace std;

void t01()
{

    vector<int> v = {1, 2, 3};

    v.push_back(4);

    v.pop_back();

    for (int x : v)
    {
        cout << x << " ";
    }

    cout << v[0] << v.at(1);
}

void t02()
{
    map<string, int> age;
    age["Alice"] = 25;
    age["Bob"] = 30;

    for (auto &[name, a] : age)
    {
        cout << name << ": " << a << endl;
    }
}

void t03()
{
    unordered_map<string, int> mp;
    mp["key"] = 1;
}

void t04()
{
    stack<int> s;
    s.push(1);
    s.push(2);
    cout << s.top() << endl;
    s.pop();
    cout << s.top() << endl;
}

void t05()
{
    vector<int> v = {1, 2, 3, 4};
    auto it = v.begin();
    auto eit = v.end();
    // *it;

    ++it;

    // it + 2;

    // for (auto rit = v.rbegin(); rit != v.rend(); ++rit)
    // {
    //     cout << *rit << endl;
    // }

    for (const auto &x : v)
    {
        cout << x << " ";
    }

    cout << endl;
}

void print(vector<int> v)
{
    for (auto x : v)
    {
        cout << x << " ";
    }
    cout << endl;
}

void t06()
{
    vector<int> v = {3, 1, 4, 1, 5, 9, 2, 6};
    sort(v.begin(), v.end());

    print(v);

    sort(v.begin(), v.end(), greater<int>());
    print(v);
    auto it = find(v.begin(), v.end(), 4);
    int cnt = count(v.begin(), v.end(), 1);

    bool hasEven = any_of(v.begin(), v.end(),
                          [](int x)
                          { return x % 2 == 0; });

    cout << "hasEven: " << hasEven << endl;
    int sum = accumulate(v.begin(), v.end(), 0);

    reverse(v.begin(), v.end());
    print(v);

    std::sort(v.begin(), v.end());
    v.erase(std::unique(v.begin(), v.end()), v.end());
    print(v);
}

int main()
{
    // t01();
    // t02();
    // t04();
    t06();
    return 0;
}