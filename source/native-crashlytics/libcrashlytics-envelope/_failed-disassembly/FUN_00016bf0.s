// FUN_00016bf0  ghidra=0x16bf0-0x16c2b  elf=0x6bf0-0x6c2b  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
    6bf0:      	push	{r4, r5, r6, r7, lr}
    6bf2:      	mov	r5, r9
    6bf4:      	mov	r4, r8
    6bf6:      	mov	r7, r11
    6bf8:      	mov	r6, r10
    6bfa:      	push	{r4, r5, r6, r7}
    6bfc:      	ldr	r4, [pc, #0x38c]        @ 0x6f8c <_ZN9__gnu_cxx27__verbose_terminate_handlerEv+0x267c>
    6bfe:      	ldr	r3, [r2]
    6c00:      	add	sp, r4
    6c02:      	str	r1, [sp, #0x1a8]
    6c04:      	adds	r4, r0, #0x0
    6c06:      	adds	r5, r2, #0x0
    6c08:      	cmp	r3, #0x4b
    6c0a:      	bls	0x6c26 <_ZN9__gnu_cxx27__verbose_terminate_handlerEv+0x2316> @ imm = #0x18
    6c0c:      	movs	r3, #0x8c
    6c0e:      	movs	r2, #0x1
    6c10:      	lsls	r3, r3, #0x1
    6c12:      	str	r2, [r4, r3]
    6c14:      	movs	r3, #0x83
    6c16:      	lsls	r3, r3, #0x2
    6c18:      	add	sp, r3
    6c1a:      	pop	{r2, r3, r4, r5}
    6c1c:      	mov	r8, r2
    6c1e:      	mov	r9, r3
    6c20:      	mov	r10, r4
    6c22:      	mov	r11, r5
    6c24:      	pop	{r4, r5, r6, r7, pc}
    6c26:      	adds	r0, r3, #0x0
    6c28:      	bl	0xaf6c <__gnu_thumb1_case_si> @ imm = #0x4340
