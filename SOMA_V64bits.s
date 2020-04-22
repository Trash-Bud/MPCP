//1 b)

.text
.global SOMA_V64bits
.type SOMA_V64bits,"function"

// x0 - endereço do vetor
// x1 - tamanho do vetor

SOMA_V: mov x2, 0 // x2 - sum results
ciclo:  cbz x1, end
		ldr x3, [x0]
		add x2, x2, x3
		sub x1, x1, #1
		add x0, x0, #8
		b		ciclo
end:	mov x0,x2
		ret
