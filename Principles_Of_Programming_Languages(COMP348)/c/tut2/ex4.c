#include <stdio.h>

int factorial(int n);

int main()
{
    int n;
    printf("enter a non negative interger:\n");
    scanf("%d", &n);
    if (n < 0)
        return 0;

    printf("\n%d", factorial(n));

    return 0;
}

int factorial(int n)
{
    if (n <= 0)
        return 1;

    return n * factorial(n - 1);
}