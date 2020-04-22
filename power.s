//extern int power(int base, int exp)

.text
.global power
.type power,"function"

//x0 - Base
//x1 - Expoente

power: sub x1, x1, 1
	   eor x2,x2,x2
	   mov x5,x0
loop:  cbz x1, ov
	   smaddl x0, w0, w5, x2
	   sub x1,x1,1
	   b loop

ov:    asr x3, x0, #31
	   cbz x3, end
	   mov x0, #0
end:   ret

