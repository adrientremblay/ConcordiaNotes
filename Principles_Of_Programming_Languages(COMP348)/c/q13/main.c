#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define MAX 255

void insert_dictionary_order(char *word);
void print_list();
void add_words(char *line);

struct Node
{
    char word[255];
    struct Node *next;
} head;

int main()
{
    char line[MAX];
    while (1)
    {
        gets(line);
        if (*line == '.')
            break;
        insert_dictionary_order(line);
    }
    print_list();
    return 0;
}

void insert_dictionary_order(char *word)
{
    struct Node *trav = &head;
    while (trav->next != 0)
    {
        if (trav->next != 0 && strcmp(trav->next->word, word) > 0)
        {
            break;
        }
        trav = trav->next;
    }
    struct Node *new_node_ptr = (struct Node *)malloc(sizeof(struct Node));
    strcpy(new_node_ptr->word, word);
    struct Node *temp = trav->next;
    trav->next = new_node_ptr;
    new_node_ptr->next = temp;
}

void print_list()
{
    struct Node *trav = &head;
    while (trav->next != 0)
    {
        trav = trav->next;
        printf("%s->", trav->word);
    }
    printf("NULL\n");
}