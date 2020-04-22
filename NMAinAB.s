.text
.global NMAinAB
.type NMAinAB,"function"

//x0 = endereço do vetor
//w1 = numero de elementos do vetor
//w2 = minimo do intervalo
//w3 = máximo do intervalo

NMAinAB: sub w5, w3, w2
		mov w6, 0
ciclo:	cbz w1, fim
		ldrsw x4, [x0]
		sub w1, w1, 1
		add x0, x0, 4
		cmp w4, w2
		b.lt	ciclo
		cmp w4, w3
		b.gt	ciclo
		cmp w4, w5
		b.le	ciclo
		add w6, w6, 1
		b		ciclo
fim:	mov w0, w6
		ret
