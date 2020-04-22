//7 c)
//SUMV(int *a, int *b, int i)
.text
.global MULVNC
.type MULVNC,"function"

// x0 - endereço do vetor 1
// x1 - endereço do vetor 2
// x2 - dim dos vetores

MULVNC: cbz x2, end
		ldrsw x5, [x0]
		ldrsw x4, [x1]
		sub x2, x2, #1
		add x1, x1, #4
		mul x6, x4, x5
		str x6, [x0]
		add x0, x0, #4
		b		MULVNC

end:	ret
