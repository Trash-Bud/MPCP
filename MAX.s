//2 a)

.text
.global MAX
.type MAX,"function"

// x0 - endereço do vetor
// x1 - tamanho do vetor

MAX: 	mov x2, 0

ciclo:  cbz x1, end
		ldrsw x3, [x0]
		sub x1, x1, #1
		add x0, x0, #4
		cmp x2, x3
		b.ge	ciclo
		mov x2, x3
		b		ciclo

end:	mov x0,x2
		ret
