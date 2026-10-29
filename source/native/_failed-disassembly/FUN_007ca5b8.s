// FUN_007ca5b8  ghidra=0x7ca5b8-0x7ca5f3  elf=0x7ba5b8-0x7ba5f3  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  7ba5b8:      	push	{r4, r5, r6, r7, lr}
  7ba5ba:      	mov	r5, r9
  7ba5bc:      	mov	r4, r8
  7ba5be:      	mov	r7, r11
  7ba5c0:      	mov	r6, r10
  7ba5c2:      	push	{r4, r5, r6, r7}
  7ba5c4:      	ldr	r4, [pc, #0x38c]        @ 0x7ba954 <_ZN9__gnu_cxx27__verbose_terminate_handlerEv+0x267c>
  7ba5c6:      	ldr	r3, [r2]
  7ba5c8:      	add	sp, r4
  7ba5ca:      	str	r1, [sp, #0x1a8]
  7ba5cc:      	adds	r4, r0, #0x0
  7ba5ce:      	adds	r5, r2, #0x0
  7ba5d0:      	cmp	r3, #0x4b
  7ba5d2:      	bls	0x7ba5ee <_ZN9__gnu_cxx27__verbose_terminate_handlerEv+0x2316> @ imm = #0x18
  7ba5d4:      	movs	r3, #0x8c
  7ba5d6:      	movs	r2, #0x1
  7ba5d8:      	lsls	r3, r3, #0x1
  7ba5da:      	str	r2, [r4, r3]
  7ba5dc:      	movs	r3, #0x83
  7ba5de:      	lsls	r3, r3, #0x2
  7ba5e0:      	add	sp, r3
  7ba5e2:      	pop	{r2, r3, r4, r5}
  7ba5e4:      	mov	r8, r2
  7ba5e6:      	mov	r9, r3
  7ba5e8:      	mov	r10, r4
  7ba5ea:      	mov	r11, r5
  7ba5ec:      	pop	{r4, r5, r6, r7, pc}
  7ba5ee:      	adds	r0, r3, #0x0
  7ba5f0:      	bl	0x7be934 <__gnu_thumb1_case_si> @ imm = #0x4340
