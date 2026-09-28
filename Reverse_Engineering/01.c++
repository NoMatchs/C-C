// #include <stdio.h>
// #include <string.h>

// int main()
// {
//     char input[20];
//     printf("Enter password: ");
//     scanf("%s", input);
//     if (strcmp(input, "secret123") == 0)
//     {
//         printf("Access granted!\n");
//     }
//     else
//     {
//         printf("Access denied.\n");
//     }
//     return 0;
// }
// 02.cpp
#include <iostream>
#include <string>

bool check(std::string s)
{
    if (s.length() != 6)
        return false;
    if (s[0] != 'H')
        return false;
    if (s[5] != '!')
        return false;
    if ((s[1] ^ 0x20) != 'A')
        return false;
    if (s[2] + 1 != 'c')
        return false;
    if (s[3] * 2 != 200)
        return false;
    if (s[4] != s[1])
        return false;
    return true;
}

int main()
{
    std::string input;
    std::cout << "Enter password: ";
    std::cin >> input;
    if (check(input))
    {
        std::cout << "Correct!\n";
    }
    else
    {
        std::cout << "Wrong!\n";
    }
    return 0;
}