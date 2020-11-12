#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include "selectionsort.h"
#include "selectionsort.h" // included twice

int *findmax(int *arr, int size);

const int ARR_SIZE = 5;

int main()
{
    int *arr = (int *)malloc(ARR_SIZE * sizeof(int));
    for (int i = 0; i < ARR_SIZE; i++)
    {
        arr[i] = rand() % 10;
    }

    int i;
    selectionsort(arr, 5, 0);
    printf("Ascending order:\n");
    for (i = 0; i < 5; i++)
        printf("%d ", arr[i]);

    selectionsort(arr, 5, findmax);
    printf("\nDescending order:\n");
    for (i = 0; i < 5; i++)
        printf("%d ", arr[i]);
    return 0;
}

int *findmax(int *arr, int size)
{
    int *max = arr;
    for (int i = 0; i < size; i++)
    {
        if (arr[i] > *max)
        {
            max = &arr[i];
        }
    }

    return max;
}