#include <stdio.h>
#include <stdlib.h>

extern int Calculator (unsigned int N, char *seq_OP, int *seq_B, int *seq_A);


int main(void)
{
unsigned int size =6;
int vectA[] = {13, 2, -8, 4, 5, 25};
//int vectB[] = {2, 9, 3, 0, 1, -25}; // com overflow : exemplo (a)
int vectB[] = {1, 2, 2147483645, 0, 1, -25}; // sem overflow  : exemplo (b);
char vectOP[] = {'P', '+', '*', '*', '-', '+'};

int execucao = Calculator (size, vectOP, vectB, vectA);
for (int i = 1; i <= execucao; i++)
      printf("elemento %d resultado = %d\n", i , vectA[i-1]);
if (execucao)
      printf("Overflow!\n");
else
{
	for (int i = 0; i < size; i++)
	{
		printf("%d ", vectA[i]);
	}
}
 return EXIT_SUCCESS;
}
