#include <cstdio>
#include <iostream>
#include <cstdlib>
using namespace std;

#define MAXSIZE 50

typedef int ElemType;

typedef struct
{
    ElemType data[MAXSIZE];
    int length;
} SqList;

void init(SqList *L)
{
    L->length = 0;
}

int get_Length(SqList L)
{
    return L.length;
}

int value_search(SqList L, ElemType e)
{
    for (int i = 0; i < L.length; i++)
    {
        if (L.data[i] == e)
        {
            return i + 1;
        }
    }
    return 0;
}

ElemType position_search(SqList L, int pos)
{
    return L.data[pos - 1];
}

int insert(SqList *L, int pos, ElemType e)
{
    if (pos < 1 || pos > L->length + 1)
    {
        return 0;
    }
    if (L->length >= MAXSIZE)
    {
        return 0;
    }
    for (int i = L->length; i >= pos; i--)
    {
        L->data[i] = L->data[i - 1];
    }
    L->data[pos - 1] = e;
    L->length++;
    return 1;
}

int del(SqList *L, int pos, ElemType *e)
{
    if (pos < 1 || pos > L->length)
    {
        return 0;
    }
    *e = L->data[pos - 1];
    for (int i = pos; i < L->length; i++)
    {
        L->data[i - 1] = L->data[i];
    }
    L->length--;
    return 1;
}

void print(SqList L)
{
    for (int i = 0; i < L.length; i++)
    {
        cout << L.data[i] << " ";
    }
    cout << endl;
}

int main()
{
    SqList L;
    init(&L);

    insert(&L, 1, 10);
    insert(&L, 2, 20);
    insert(&L, 3, 30);
    insert(&L, 2, 15); // 在 20 前插 15
    print(L);          // 10 15 20 30

    ElemType e;
    del(&L, 2, &e);              // 删除第 2 个
    printf("deleted = %d\n", e); // 15
    print(L);                    // 10 20 30

    printf("find 20 -> %d\n", value_search(L, 20)); // 2
    return 0;
}