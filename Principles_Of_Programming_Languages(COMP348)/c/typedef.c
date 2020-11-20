#include <stdio.h>

typedef union // union doesnt mean shit
{
    int int_label;
    char char_label;
} package; // the typedef is named package

int main()
{
    package u;
    u.int_label = 4;
    u.char_label = 'b';

    printf("%d\n", u.int_label);
    printf("%c\n", u.char_label);

    return 0;
}