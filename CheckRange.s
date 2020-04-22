.text
.global CheckRange
.type CheckRange,"function"

// w0 - limiar
// x1 - tamanho
// x2 - endereço do vetor

CheckRange: mov x3, #0
			neg w5, w0

ciclo:		cbz x1, end
			ldrsw x4, [x2]
			cmp w0, w4
			b.lt	res1
			cmp w5, w4
			b.gt 	res2
			b		aj

res1:		add x3, x3, #1
			str	w0, [x2]
			b		aj

res2:		add x3, x3, #1
			str	w5, [x2]
			b		aj

aj:			add x2, x2, #4
			sub x1, x1, #1
			b		ciclo

end:		mov x0, x3
			ret
