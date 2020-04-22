//2 b)

.text
.global MINHW
.type MINHW,"function"

// x0 - endereço do vetor
// x1 - tamanho do vetor

MINHW: 	mov w2, 0

ciclo:  cbz x1, end
		ldrh w3, [x0]
		sub x1, x1, #1
		add x0, x0, #2
		cmp x2, x3
		b.le	ciclo
		mov x2, x3
		b		ciclo

end:	mov x0,x2
		ret
