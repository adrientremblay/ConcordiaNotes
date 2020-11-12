#include <stdio.h>

int *findmin(int *arr, int size);

int main()
{
    int arr[] = {1, 4, 5, 6, -1};
    int *m = findmin(arr, 5);
    printf("%d", *m); // -1

    return 0;
}

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