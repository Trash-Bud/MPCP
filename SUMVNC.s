//7 a)
//SUMV(int *a, int *b, int i)
.text
.global SUMVNC
.type SUMVNC,"function"

// x0 - endere�o do vetor 1
// x1 - endere�o do vetor 2
// x3 - endere�o do vetor 3 (return)
// x2 - dim dos vetores

SUMVNC: cbz x2, end
		ldrsw x5, [x0]
		ldrsw x4, [x1]
		sub x2, x2, #1
		add x0, x0, #4
		add x1, x1, #4
		add x6, x4, x5
		str x6, [x3]
		add x3, x3, #4
		b		SUMVNC

end:	ret
