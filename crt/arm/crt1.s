.global _start
_start:
	mov fp,#0
	mov lr,#0
	ldr a2,[sp],#4
	mov a3,sp
	mov a4,#0
	str fp,[sp,#-4]!
	str a1,[sp,#-4]!
	str fp,[sp,#-4]!
	ldr a1,=main
	bl __libc_start_main
1:	b 1b
