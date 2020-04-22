/*
 ============================================================================
 Name        : TESTING.c
 Author      : 
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>


extern short MINHW(short *a, int n);

int main(void)

{
int dim = 5;
short v[] = {3, -1, 8, 0, -3}; // Para testar
short res;

res = MINHW(v,dim);

printf("Valor Máximo = %d\n", res);

return EXIT_SUCCESS;
}
