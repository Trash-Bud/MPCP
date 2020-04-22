//extern int Calculator (unsigned int N, char *seq_OP, int *seq_B, int *seq_A)

.text
.global Calculator
.type Calculator,"function"

//x0 - Dimensão dos vetores
//x1 - Endereço da seq_OP
//x2 - Endereço da seq_B
//x3 - Endereço da seq_A


Calculator:  mov x13, 0 // 0 se não ocorrer overflow, 1 se ocorrer
			 mov x14, 1 // guardar o indice atual do vetor em caso de overflow
			 mov x9, 0 // pare ver se ocorre overflow na ultiplicação

loop:		 cbz x0, end // verifica se os arrays terminaram

			 ldrb w15, [x1]   //w15 - valor da operação
			 ldrsw x10, [x2]  //x10 - valor da seq_B
			 ldrsw x11, [x3]  //x11 - valor da seq_A

			 cmp x15, #45
			 b.eq sub

			 cmp x15, #42
			 b.eq mul

			 cmp x15, #43
			 b.eq sum

 			 stp X29, X30, [SP, #-48]! //guardar os valores de FP e LR
 			 stp x0, x1, [SP, #16] // guardar os endereços dos vetores
 			 stp x2, x3, [SP, #32]
 			 mov x0, x11
 			 mov x1, x10
 			 mov x29, SP  //guardar copia do FP

 			 bl power

 			 mov x11,x0 // mover o resultado da subrotina
 			 ldp X29, X30, [SP], #16 // restablecer os valores de x29 e x30
  			 ldp x0, x1, [SP], #16   // restabelecer o valor de x0 e x1
			 ldp x2, x3, [SP], #16
			 str w11, [x3]
			 cbz x11, overflow

next:  		 add x1, x1, #1 //atualizar endereço da seq_OP
  			 add x2, x2, #4 //atualizar endereço da seq_B
  			 add x3, x3, #4 //atualizar endereço da seq_A
  			 sub x0, x0, #1 //tirar a dimensão do vetor
  			 add x14, x14, #1 // atualizar posição em caso de overflow
  			 b loop

sub:		 subs w11,w11,w10
			 str w11, [x3]
			 b.vs overflow
			 b	next


sum:		 adds w11,w11,w10
			 str w11, [x3]
			 b.vs overflow
			 b next

mul:		 smaddl x11, w11, w10, x9
			 str w11, [x3]
			 asr x7, x11, #31
			 cbz x7, next    //se ouver ouverflow x7 vai ser diferente de 0
			 b overflow



overflow: 	 mov x13, x14
end: 		 mov x0, x13
			 ret
