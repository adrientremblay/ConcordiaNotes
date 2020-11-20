#include <stdio.h>
#include <stdlib.h>

struct node
{
    int key;
    struct node *left;
    struct node *right;
};

void insert(int key, struct node **leaf);
struct node *search(int key, struct node *leaf);

int main()
{
    struct node *tree;
    tree = 0;
    insert(2, &tree);
    insert(4, &tree);
    insert(5, &tree);
    insert(7, &tree);
    struct node k = *search(5, tree);
    printf("%d", k.key);
    return 0;
}

void insert(int key, struct node **leaf)
{
    if (*leaf == 0)
    {
        (*leaf) = (struct node *)malloc(sizeof(struct node));
        (*leaf)->key = key;
        (*leaf)->left = 0;
        (*leaf)->right = 0;
    }
    else if ((*leaf)->key > key)
        insert(key, &((*leaf)->left));
    else
        insert(key, &((*leaf)->right));
}

struct node *search(int key, struct node *leaf)
{
    if (leaf == 0)
        return 0;
    if (leaf->key == key)
    {
        return leaf;
    }

    if (leaf->key > key)
        return search(key, leaf->left);
    else
        return search(key, leaf->right);
}