#include "selectionsort.h"

int *findmin(int *arr, int size)
{
    // min is the pointer of the minimum value
    // *min declares min as a pointer, &arr[0] gets the address of the arr
    int *min = arr; // arr is equivalent to &arr[0]
    for (int i = 0; i < size; i++)
    {
        if (arr[i] < *min) // *min is dereferencing min -> getting the value of the pointer
        {
            min = &arr[i];
        }
    }

    return min;
}

void selectionsort(int *arr, int size)
{
    for (int i = 0; i < size; i++)
    {
        int temp = arr[i];
        int *smallest_ptr = findmin(&arr[i], size - i);
        arr[i] = *smallest_ptr;
        *smallest_ptr = temp;
    }
}
