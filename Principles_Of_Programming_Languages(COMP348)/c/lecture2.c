// constructs: functions and variables
// data types: possible values var can store, collection of operations t
// simple or composite/aggregate datatypes
// composite datatypes can have subparts -> structs

// preprocessors
#include <stdio.h>

// headers
int factorial(int n);

// main function
int main()
{
    printf("%d", factorial(5));

    return 0;
}

int factorial(int n)
{
    if (n == 0)
        return 1;
    else
        return n * factorial(n - 1);
}