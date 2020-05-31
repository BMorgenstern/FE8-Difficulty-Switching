	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"fe8difficultyswitching.cpp"
	.text
	.align	1
	.global	_Z7modularv
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	_Z7modularv, %function
_Z7modularv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L7
	push	{r4, lr}
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	ldr	r4, [r2, #4]
	movs	r1, #32
	ldrb	r2, [r0]
	cmp	r4, #0
	ble	.L2
	orrs	r2, r1
	strb	r2, [r0]
	cmp	r4, #1
	bne	.L3
.L4:
	movs	r1, #64
	ldr	r2, [r3, #8]
	ldrb	r3, [r2]
	bics	r3, r1
	b	.L6
.L2:
	bics	r2, r1
	strb	r2, [r0]
	b	.L4
.L3:
	ldr	r2, [r3, #8]
	movs	r3, #64
	ldrb	r1, [r2]
	orrs	r3, r1
.L6:
	@ sp needed
	strb	r3, [r2]
	pop	{r4}
	pop	{r0}
	bx	r0
.L8:
	.align	2
.L7:
	.word	.LANCHOR0
	.size	_Z7modularv, .-_Z7modularv
	.global	setval_args
	.global	hard_p
	.global	easy_p
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	setval_args, %object
	.size	setval_args, 4
setval_args:
	.word	50332856
	.type	easy_p, %object
	.size	easy_p, 4
easy_p:
	.word	33733938
	.type	hard_p, %object
	.size	hard_p, 4
hard_p:
	.word	33733892
	.ident	"GCC: (devkitARM release 53) 9.1.0"
