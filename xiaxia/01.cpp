#include <iostream>

using namespace std;

template <class T>
void print(T a)
{
    for (int i = 0; i < 10; i++)
    {
        cout << a[i] << " ";
    }
    cout << endl;
}

int main()
{
    int a[10];
    char c[10];
    for (int i = 0; i < 10; i++)
    {
        a[i] = i;
    }
    for (char i = 97, j = 0; j < 10; i++, j++)
    {
        c[j] = i;
    }

    print(a);

    // for (int i = 0; i < 10; i++)
    // {
    //     cout << a[i] << " ";
    //     cout << c[i] << " ";
    // }
    cout << c[2] << endl;
    print(c);
    cout << endl;

    // for (int n : a)
    // {
    //     cout << n << " ";
    // }

    cout << endl;

    return 0;
}
