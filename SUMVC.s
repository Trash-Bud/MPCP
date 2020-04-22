//7 b)
//SUMV(int *a, int *b, int i)
.text
.global SUMVNC
.type SUMVNC,"function"

// x0 - endereço do vetor 1
// x1 - endereço do vetor 2
// x3 - endereço do vetor 3 (return)
// x2 - dim dos vetores

SUMNV:	 cbz x2, end
		ldrsw x5, [x0]
		ldrsw x4, [x1]
		sub x2, x2, #1
		add x0, x0, #4
		add x1, x1, #4
		add x6, x4, x5
		b.vs	overflow
store:	str x6, [x3]
		add x3, x3, #4
		b		SUMNV

overflow:	cmp x6, #0
			b.lt	lower
			mov x6, #2147483647
			b		store
lower		mov x6, #-2147483648
			b		store

end:	ret
