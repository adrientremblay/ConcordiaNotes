#include <stdio.h>

int sum(int a, int b);

int main()
{
    int a;
    int b;
    int s;
    printf("Enter a first integer: ");
    scanf("%d", &a);
    printf("\n Enter a second integer: ");
    scanf("%d", &b);
    s = sum(a, b);
    printf("\n%d", s);

    return 0;
}

int sum(int a, int b)
{
    return a + b;
}
