#ifndef PUSH_SWAP_H
#define PUSH_SWAP_H

#include "libft.h"
#include "ft_printf.h"
#include "push_swap.h"

typedef struct n{
  int data;
  int index; 
  struct n *next;
  struct n *prev;
} node;

//ft_argv_func.c
node *ft_process(int, char **);
int ft_atoi2(const char *);

//ft_error.c
void ft_error(char *);

//ft_lst_function.c
void ft_add_back(node **, node *);
node *ft_stack_new(int);
node *ft_lstlst(node *);
int ft_lstsize(node *);
int ft_max(node *);
int ft_min(node *);
int ft_find_index(node *, int);

//ft_freestr.c
void ft_freestr(char **);


//ft_check.c
int ft_checkdup(node *);

//ft_sort.c
void ft_sort(node **);

//ft_push.c
void ft_sa(node **a, int);
void ft_pa(node **, node **b, int);

//ft_rotate.c
int ft_rotate_type_ab(node *, node *);

//ft_case.c
int ft_case_rrarrb(node *, node *, int);
int ft_case_rarb(node *, node *, int);

//ft_find.c
int ft_find_place_b(node *, int);

#endif
