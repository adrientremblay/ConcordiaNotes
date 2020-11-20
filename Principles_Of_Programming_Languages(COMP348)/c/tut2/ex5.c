#include <stdio.h>

int main();
int bubble_sort(int a[], int n);
int bubble(int a[], int n);

int main()
{
    int a[] = {4,
               3,
               2,
               6,
               4,
               10,
               1};

    bubble_sort(a, 7);
    for (int i = 0; i < 7; i++)
    {
        printf("%d ", a[i]);
    }
}

int bubble_sort(int a[], int n)
{
    for (int i = 0; i < n; i++)
    {
        bubble(a, n - i);
    }
}

int bubble(int a[], int n)
{
    for (int i = 0; i < n - 1; i++)
    {
        if (a[i + 1] < a[i])
        {
            int temp = a[i];
            a[i] = a[i + 1];
            a[i + 1] = temp;
        }
    }
}