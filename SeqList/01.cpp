#include <iostream>
#include <stdexcept>

template <class T>
class SeqList
{
private:
    T *data;
    int capacity;
    int length;

    void resize(int newCap)
    {
        T *newData = new T[newCap];
        dor(int i = 0; i < length; i++)
        {
            newData[i] = data[i];
        }
        delete[] data;
        data = newData;
        capacity = newCap;
    }

public:
};