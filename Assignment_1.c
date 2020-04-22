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

extern int CheckRange( int lim, int tam, int *seq);

int main(void)
{
 int limiar = 20;
 int tamanho = 8;
 int ve[] = {7, -8, -23, 56, 20, -10, 0, 40};
 int res;

 res = CheckRange(limiar, tamanho, ve);
 printf("Foram modificados %d elementos da sequencia ve[]", res);

// para o exemplo fornecido o output deve indicar que foram alterados 3 elementos

// no final da execuçao a sequencia ve[] = {7, -8, -20, 20, 20, -10, 0, 20} (podem verificar

//o seu conteúdo durante a execução em modo debug)

return EXIT_SUCCESS;
}
