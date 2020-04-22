//1 a)

.text
.global SOMA_V
.type SOMA_V,"function"

// x0 - endereço do vetor
// x1 - tamanho do vetor

SOMA_V: mov x2, 0 // x2 - sum results
ciclo:  cbz x1, end
		ldrsw x3, [x0]
		add x2, x2, x3
		sub x1, x1, #1
		add x0, x0, #4
		b		ciclo
end:	mov x0,x2
		ret
