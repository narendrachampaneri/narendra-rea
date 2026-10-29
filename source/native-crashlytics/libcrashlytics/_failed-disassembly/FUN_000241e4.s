// FUN_000241e4  ghidra=0x241e4-0x2421f  elf=0x141e4-0x1421f  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
   141e4:      	push	{r4, r5, r6, r7, lr}
   141e6:      	mov	r5, r9
   141e8:      	mov	r4, r8
   141ea:      	mov	r7, r11
   141ec:      	mov	r6, r10
   141ee:      	push	{r4, r5, r6, r7}
   141f0:      	ldr	r4, [pc, #0x38c]        @ 0x14580 <_ZN9__gnu_cxx27__verbose_terminate_handlerEv+0x267c>
   141f2:      	ldr	r3, [r2]
   141f4:      	add	sp, r4
   141f6:      	str	r1, [sp, #0x1a8]
   141f8:      	adds	r4, r0, #0x0
   141fa:      	adds	r5, r2, #0x0
   141fc:      	cmp	r3, #0x4b
   141fe:      	bls	0x1421a <_ZN9__gnu_cxx27__verbose_terminate_handlerEv+0x2316> @ imm = #0x18
   14200:      	movs	r3, #0x8c
   14202:      	movs	r2, #0x1
   14204:      	lsls	r3, r3, #0x1
   14206:      	str	r2, [r4, r3]
   14208:      	movs	r3, #0x83
   1420a:      	lsls	r3, r3, #0x2
   1420c:      	add	sp, r3
   1420e:      	pop	{r2, r3, r4, r5}
   14210:      	mov	r8, r2
   14212:      	mov	r9, r3
   14214:      	mov	r10, r4
   14216:      	mov	r11, r5
   14218:      	pop	{r4, r5, r6, r7, pc}
   1421a:      	adds	r0, r3, #0x0
   1421c:      	bl	0x18560 <__gnu_thumb1_case_si> @ imm = #0x4340
