#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX 100
#define MAX_TIME 1000

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

// 记录甘特图
void record(int *gantt, int start, int len, int pid)
{
    for (int t = start; t < start + len; t++)
    {
        if (t < MAX_TIME)
            gantt[t] = pid;
    }
}

// 打印甘特图
void print_gantt(int *gantt, int total_time)
{
    printf("甘特图:\n");
    for (int t = 0; t < total_time; t++)
    {
        if (gantt[t] == -1)
            printf("| -- ");
        else
            printf("| P%d ", gantt[t]);
    }
    printf("|\n");

    printf("0");
    for (int t = 1; t <= total_time; t++)
    {
        printf("%4d", t);
    }
    printf("\n");
}

// 打印统计结果
void print_stats(Process *procs, int n, const char *name)
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
    int gantt[MAX_TIME];
    memset(gantt, -1, sizeof(gantt));

    qsort(procs, n, sizeof(Process), cmp_arrival);
    int time = 0;

    for (int i = 0; i < n; i++)
    {
        if (time < procs[i].arrival)
        {
            time = procs[i].arrival; // CPU 空闲
        }
        procs[i].start = time;
        record(gantt, time, procs[i].burst, procs[i].pid);
        time += procs[i].burst;
        procs[i].finish = time;
        procs[i].turnaround = procs[i].finish - procs[i].arrival;
        procs[i].waiting = procs[i].turnaround - procs[i].burst;
    }

    print_stats(procs, n, "FCFS");
    print_gantt(gantt, time);
}

// ---------------- SJF（非抢占） ----------------
void sjf(Process *procs, int n)
{
    int gantt[MAX_TIME];
    memset(gantt, -1, sizeof(gantt));

    int done[MAX] = {0};
    int time = 0, completed = 0;

    while (completed < n)
    {
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
            time++; // 空闲
            continue;
        }

        procs[idx].start = time;
        record(gantt, time, procs[idx].burst, procs[idx].pid);
        time += procs[idx].burst;
        procs[idx].finish = time;
        procs[idx].turnaround = procs[idx].finish - procs[idx].arrival;
        procs[idx].waiting = procs[idx].turnaround - procs[idx].burst;
        done[idx] = 1;
        completed++;
    }

    print_stats(procs, n, "SJF（非抢占）");
    print_gantt(gantt, time);
}

// ---------------- RR ----------------
void rr(Process *procs, int n, int quantum)
{
    int gantt[MAX_TIME];
    memset(gantt, -1, sizeof(gantt));

    int queue[MAX * 100];
    int front = 0, rear = 0;
    int in_queue[MAX] = {0};
    int completed = 0;
    int time = 0;

    // 按到达时间排序
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
            // 队列空，CPU 空闲
            record(gantt, time, 1, -1);
            time++;
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

        record(gantt, time, run, procs[idx].pid);
        time += run;
        procs[idx].remaining -= run;

        // 时间推进过程中，新到达的进程入队
        for (int i = 0; i < n; i++)
        {
            if (!in_queue[i] && procs[i].remaining > 0 &&
                procs[i].arrival <= time && i != idx)
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

    char name[50];
    sprintf(name, "RR（时间片=%d）", quantum);
    print_stats(procs, n, name);
    print_gantt(gantt, time);
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

    // FCFS
    reset(procs, orig, n);
    fcfs(procs, n);

    // SJF
    reset(procs, orig, n);
    sjf(procs, n);

    // RR q=2
    reset(procs, orig, n);
    rr(procs, n, 2);

    // RR q=4
    reset(procs, orig, n);
    rr(procs, n, 4);

    return 0;
}