// #include <stdio.h>
// #include <stdlib.h>

// typedef struct
// {
//     int pid;
//     int arrival;
//     int burst;
//     int remaining;
//     int start;
//     int finish;
//     int waiting;
//     int turnaround;
// } Process;

// void qsort(
//     void *base,
//     size_t nmemb,
//     size_t size,
//     int (*compar)(const void *, const void *));

// int cmp_arrival(const void *a, const void *b)
// {
//     Process *p1 = (Process *)a;
//     Process *p2 = (Process *)b;
//     return p1->arrival - p2->arrival;
// }

// // qsort(procs,n,sizeof(Process),cmp_arrical);

// int main()
// {

//     return 0;
// }

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX 100

typedef struct
{
    int pid;
    int arrival;
    int burst;
    int remaining;
    int start;
    int finish;
    int waiting;
    int turnaround;
} Process;

// 按到达时间排序
int cmp_arrival(const void *a, const void *b)
{
    Process *p1 = (Process *)a;
    Process *p2 = (Process *)b;
    if (p1->arrival != p2->arrival)
        return p1->arrival - p2->arrival;
    return p1->pid - p2->pid;
}

// 按服务时间排序（用于 SJF 选择）
int cmp_burst(const void *a, const void *b)
{
    Process *p1 = (Process *)a;
    Process *p2 = (Process *)b;
    return p1->burst - p2->burst;
}

// 重置进程状态
void reset(Process *procs, Process *orig, int n)
{
    for (int i = 0; i < n; i++)
    {
        procs[i] = orig[i];
        procs[i].remaining = orig[i].burst;
        procs[i].start = -1;
        procs[i].finish = 0;
        procs[i].waiting = 0;
        procs[i].turnaround = 0;
    }
}

// 打印结果
void print_result(Process *procs, int n, const char *name)
{
    float total_wait = 0, total_turn = 0;
    printf("\n===== %s =====\n", name);
    printf("PID\t到达\t服务\t完成\t周转\t等待\n");
    for (int i = 0; i < n; i++)
    {
        printf("%d\t%d\t%d\t%d\t%d\t%d\n",
               procs[i].pid, procs[i].arrival, procs[i].burst,
               procs[i].finish, procs[i].turnaround, procs[i].waiting);
        total_wait += procs[i].waiting;
        total_turn += procs[i].turnaround;
    }
    printf("平均周转时间: %.2f\n", total_turn / n);
    printf("平均等待时间: %.2f\n", total_wait / n);
}

// ---------------- FCFS ----------------
void fcfs(Process *procs, int n)
{
    qsort(procs, n, sizeof(Process), cmp_arrival);
    int time = 0;
    for (int i = 0; i < n; i++)
    {
        if (time < procs[i].arrival)
            time = procs[i].arrival;
        procs[i].start = time;
        time += procs[i].burst;
        procs[i].finish = time;
        procs[i].turnaround = procs[i].finish - procs[i].arrival;
        procs[i].waiting = procs[i].turnaround - procs[i].burst;
    }
    print_result(procs, n, "FCFS");
}

// ---------------- SJF（非抢占） ----------------
void sjf(Process *procs, int n)
{
    int done[MAX] = {0};
    int time = 0, completed = 0;

    while (completed < n)
    {
        // 找出已到达且未完成中 burst 最小的
        int idx = -1;
        int min_burst = 1e9;
        for (int i = 0; i < n; i++)
        {
            if (!done[i] && procs[i].arrival <= time && procs[i].burst < min_burst)
            {
                min_burst = procs[i].burst;
                idx = i;
            }
        }

        if (idx == -1)
        {
            time++; // 没有可运行进程，时间前进
            continue;
        }

        procs[idx].start = time;
        time += procs[idx].burst;
        procs[idx].finish = time;
        procs[idx].turnaround = procs[idx].finish - procs[idx].arrival;
        procs[idx].waiting = procs[idx].turnaround - procs[idx].burst;
        done[idx] = 1;
        completed++;
    }
    print_result(procs, n, "SJF（非抢占）");
}

// ---------------- RR ----------------
void rr(Process *procs, int n, int quantum)
{
    int queue[MAX * 100];
    int front = 0, rear = 0;
    int in_queue[MAX] = {0};
    int completed = 0;
    int time = 0;
    int last_pid = -1;

    // 按到达时间排序，方便处理
    qsort(procs, n, sizeof(Process), cmp_arrival);

    // 先把 time=0 到达的加入队列
    for (int i = 0; i < n; i++)
    {
        if (procs[i].arrival == 0)
        {
            queue[rear++] = i;
            in_queue[i] = 1;
        }
    }

    while (completed < n)
    {
        if (front == rear)
        {
            time++;
            // 新到达进程入队
            for (int i = 0; i < n; i++)
            {
                if (!in_queue[i] && procs[i].remaining > 0 && procs[i].arrival <= time)
                {
                    queue[rear++] = i;
                    in_queue[i] = 1;
                }
            }
            continue;
        }

        int idx = queue[front++];
        in_queue[idx] = 0;

        int run = (procs[idx].remaining < quantum) ? procs[idx].remaining : quantum;

        if (procs[idx].start == -1)
            procs[idx].start = time;

        time += run;
        procs[idx].remaining -= run;

        // 时间推进过程中，新到达的进程入队
        for (int i = 0; i < n; i++)
        {
            if (!in_queue[i] && procs[i].remaining > 0 && procs[i].arrival <= time && i != idx)
            {
                queue[rear++] = i;
                in_queue[i] = 1;
            }
        }

        if (procs[idx].remaining == 0)
        {
            procs[idx].finish = time;
            procs[idx].turnaround = procs[idx].finish - procs[idx].arrival;
            procs[idx].waiting = procs[idx].turnaround - procs[idx].burst;
            completed++;
        }
        else
        {
            queue[rear++] = idx;
            in_queue[idx] = 1;
        }
    }
    print_result(procs, n, "RR（时间片=2）");
}

// ---------------- main ----------------
int main()
{
    Process orig[MAX] = {
        {1, 0, 5, 0, -1, 0, 0, 0},
        {2, 1, 4, 0, -1, 0, 0, 0},
        {3, 2, 2, 0, -1, 0, 0, 0},
        {4, 3, 1, 0, -1, 0, 0, 0},
    };
    int n = 4;
    Process procs[MAX];

    reset(procs, orig, n);
    fcfs(procs, n);

    reset(procs, orig, n);
    sjf(procs, n);

    reset(procs, orig, n);
    rr(procs, n, 2);

    return 0;
}