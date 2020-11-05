#include <stdio.h>

int main()
{
    // pointers
    int x = 5;
    printf("x is %d\n", x);
    printf("reference of x is %d\n", &x);
    printf("%d\n", *&x);
    return 0;
}