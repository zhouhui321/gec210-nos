.global _start

_start:
	// 关闭看门狗
	ldr	r0, =0xE2700000				
	mov	r1, #0
	str	r1, [r0]

	// 设置栈，以便调用c函数
	ldr	sp, =0x31000000

	// 调用main
	bl	main			

halt:
	b halt

