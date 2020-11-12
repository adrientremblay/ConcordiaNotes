// constructs: functions and variables
// data types: possible values var can store, collection of operations t
// simple or composite/aggregate datatypes
// composite datatypes can have subparts -> structs

// preprocessors
#include <stdio.h>

// headers
long factorial(int n);

// main function
int main()
{
    int n;
    long f;
    printf("Enter a non-negative integer:");
    scanf("%d", &n);

    if (n < 0)
    {
        printf("Number cannot be less than zero!\n");
        return 0;
    }

    f = factorial(n);
    printf("%ld\n", f);

    return 0;
}

long factorial(int n)
{
    if (n == 0)
        return 1;
    else
        return n * factorial(n - 1);
}