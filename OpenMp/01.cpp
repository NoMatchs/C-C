#include <stdio.h>
#include <stdlib.h>
#include <omp.h>
#include <math.h>

#define N 100000000 // 1亿个元素，保证计算量够大，能看出并行效果

int main()
{
    // 1. 分配内存并初始化
    double *a = (double *)malloc(N * sizeof(double));
    double *b = (double *)malloc(N * sizeof(double));
    double *c = (double *)malloc(N * sizeof(double));
    if (a == NULL || b == NULL || c == NULL)
    {
        printf("内存分配失败\n");
        return 1;
    }

    for (int i = 0; i < N; i++)
    {
        a[i] = 1.0;
        b[i] = 2.0;
    }

    // 2. 串行版本：逐元素相加 + 求和（与并行版计算量一致）
    double t_start = omp_get_wtime();
    double sum_serial = 0.0;
    for (int i = 0; i < N; i++)
    {
        double x = a[i] + b[i];
        for (int k = 0; k < 100; k++)
            x = x * 1.0001 + 0.5; // 与并行版相同的纯计算
        c[i] = x;
        sum_serial += x;
    }
    double t_serial = omp_get_wtime() - t_start;
    // 3. 并行版本：同样的计算
    t_start = omp_get_wtime();
    double sum_parallel = 0.0;

// parallel for 并行化循环；reduction 保证 sum 累加安全
#pragma omp parallel for reduction(+ : sum_parallel) num_threads(8)
    for (int i = 0; i < N; i++)
    {
        double x = a[i] + b[i];
        for (int k = 0; k < 100; k++)
            x = x * 1.0001 + 0.5; // 纯计算
        c[i] = x;
        sum_parallel += x;
    }
    double t_parallel = omp_get_wtime() - t_start;

    // 4. 输出结果与耗时对比
    printf("线程数: %d\n", omp_get_max_threads());
    printf("串行结果: sum = %.2f, 耗时 = %.4f 秒\n", sum_serial, t_serial);
    printf("并行结果: sum = %.2f, 耗时 = %.4f 秒\n", sum_parallel, t_parallel);
    printf("加速比: %.2fx\n", t_serial / t_parallel);
    printf("结果是否一致: %s\n", (sum_serial == sum_parallel) ? "是" : "否");

    double diff = fabs(sum_serial - sum_parallel);
    printf("结果是否一致: %s (差值 = %.6e)\n",
           (diff < 1e-3) ? "是" : "否", diff);

    free(a);
    free(b);
    free(c);
    return 0;
}