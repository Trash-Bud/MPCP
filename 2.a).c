/*
 * 2.a.c
 *
 *  Created on: 1 Apr 2020
 *      Author: cmmes
 */
#include <stdio.h>
#include <stdlib.h>

extern int MAX(int *a, int n);

int main(void)

{
int dim = 5;
int v[] = {3, -1, 8, 0, -3}; // Para testar
int res;

res = MAX(v, dim);

printf("Valor Máximo = %d\n", res);

return EXIT_SUCCESS;
}
