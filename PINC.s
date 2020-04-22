//7 d)
//SUMV(int *a, int *b, int i)
.text
.global PINNC
.type PINNC,"function"

// x0 - endereço do vetor 1
// x1 - endereço do vetor 2
// x2 - dim dos vetores

PINC: 	mov x6, 0
ciclo:  cbz x2, end
		ldrsw x5, [x0]
		ldrsw x4, [x1]
		sub x2, x2, #1
		add x0, x0, #4
		add x1, x1, #4
		mul x7, x4, x5
		add x6, x6, x7
		b		ciclo

end:	mov x0, x6
		ret
