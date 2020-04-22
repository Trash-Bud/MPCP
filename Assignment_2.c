/*
 * assignment0.c
 *
 *  Created on: 1 Apr 2020
 *      Author: cmmes
 */

#include <stdio.h>
#include <stdlib.h>

extern int NMAinAB(int *ap, int n, int a, int b);

int main(void)
{
  int n = 8;
  int v[] = {7, 9, 23, 56, 20, 4, 0, 19};
  int a = 4, b= 23;
  int res;          // fazer testes adicionais com outros dados

  res = NMAinAB(v, n, a, b);
  printf("Ha %d valores do vetor maiores que %d e que pertencem a [%d; %d].\n", res, b-a, a, b);
  return EXIT_SUCCESS;
}

