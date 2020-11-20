int main()
{
    /* exercise 1 */

    // regular int variable
    int i = 1;
    int j = 2;

    // const int, cannot be redefined
    const int ci = i;
    const int cj = j;
    // ci = 3;

    // cont int pointer -> points to a constant int
    const int *pci = &ci;
    const int *pci = &cj;

    // cont pointer to an int -> points to an int, cannot be changed
    int *const cpi = &i;
    // cpi = &j;

    // const pointer to a const int
    const int *const cpci = &ci;

    i = ci;
    pci = &ci;
    // cpi = pci;
    pci = cpci;
    // cpci = &ci;
    // ci = *cpci;

    /* exercise 2 */
    int a;
    int b;
    int s;
    printf("Enter a first integer: ");
    scanf("%d", &a);
    printf("\n Enter a second integer: ");
    scanf("%d", &b);
    s = sum(a, b);
    printf("\n%d", s);
}