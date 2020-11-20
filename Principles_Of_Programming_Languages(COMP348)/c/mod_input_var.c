#include <stdio.h>

void set_to_5(int *x);

int main()
{
    int x = 12;
    set_to_5(&x);
    printf("%d", x);

    return 0;
}

void set_to_5(int *x)
{
    *x = 5;
}