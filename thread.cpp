#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <semaphore.h>
#include <unistd.h>

#define BUFSIZE 5             // 缓冲区大小
#define PRODUCERS 2           // 生产者线程数
#define CONSUMERS 3           // 消费者线程数
#define ITEMS_PER_PRODUCER 10 // 每个生产者生产的数据个数

int buffer[BUFSIZE]; // 共享缓冲区
int in = 0;          // 生产者放入位置
int out = 0;         // 消费者取出位置

sem_t empty;           // 空位数量
sem_t full;            // 数据数量
pthread_mutex_t mutex; // 保护 buffer/in/out

// 生产者线程函数
void *producer(void *arg)
{
    int id = *(int *)arg;

    for (int i = 0; i < ITEMS_PER_PRODUCER; i++)
    {
        int item = id * 1000 + i; // 构造一个数据

        // 1. 等待一个空位
        sem_wait(&empty);

        // 2. 进入临界区
        pthread_mutex_lock(&mutex);

        buffer[in] = item;
        printf("[makes %d] input data %d position to %d\n", id, item, in);
        in = (in + 1) % BUFSIZE;

        pthread_mutex_unlock(&mutex);

        // 3. 通知有数据了
        sem_post(&full);

        // 模拟生产耗时
        usleep(100000); // 100ms
    }

    printf("[makes %d] end\n", id);
    return NULL;
}

// 消费者线程函数
void *consumer(void *arg)
{
    int id = *(int *)arg;

    for (int i = 0; i < ITEMS_PER_PRODUCER * PRODUCERS / CONSUMERS; i++)
    {
        // 1. 等待一个数据
        sem_wait(&full);

        // 2. 进入临界区
        pthread_mutex_lock(&mutex);

        int item = buffer[out];
        printf("[users %d] position to %d get data %d\n", id, out, item);
        out = (out + 1) % BUFSIZE;

        pthread_mutex_unlock(&mutex);

        // 3. 通知有空位了
        sem_post(&empty);

        // 模拟消费耗时
        usleep(150000); // 150ms
    }

    printf("[users %d] end\n", id);
    return NULL;
}

int main()
{
    pthread_t prod[PRODUCERS];
    pthread_t cons[CONSUMERS];
    int prod_id[PRODUCERS];
    int cons_id[CONSUMERS];

    // 初始化信号量和互斥锁
    sem_init(&empty, 0, BUFSIZE); // 初始有 BUFSIZE 个空位
    sem_init(&full, 0, 0);        // 初始没有数据
    pthread_mutex_init(&mutex, NULL);

    // 创建生产者线程
    for (int i = 0; i < PRODUCERS; i++)
    {
        prod_id[i] = i + 1;
        pthread_create(&prod[i], NULL, producer, &prod_id[i]);
    }

    // 创建消费者线程
    for (int i = 0; i < CONSUMERS; i++)
    {
        cons_id[i] = i + 1;
        pthread_create(&cons[i], NULL, consumer, &cons_id[i]);
    }

    // 等待所有线程结束
    for (int i = 0; i < PRODUCERS; i++)
    {
        pthread_join(prod[i], NULL);
    }
    for (int i = 0; i < CONSUMERS; i++)
    {
        pthread_join(cons[i], NULL);
    }

    // 清理资源
    sem_destroy(&empty);
    sem_destroy(&full);
    pthread_mutex_destroy(&mutex);

    printf("所有线程结束，程序退出。\n");
    return 0;
}