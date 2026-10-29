// ROCKET::updateItemStep  ghidra=0x3cbe98-0x3cc0ed  elf=0x3bbe98-0x3bc0ed  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  3bbe98:      	push	{r4, r5, r6, lr}
  3bbe9a:      	sub	sp, #0x48
  3bbe9c:      	str	r0, [sp, #0x1c]
  3bbe9e:      	str	r1, [sp, #0x18]
  3bbea0:      	ldr	r2, [pc, #0x26c]        @ 0x3bc110 <_ZN6ROCKET14updateItemStepEf+0x278>
  3bbea2:      	add	r2, pc
  3bbea4:      	ldr	r3, [sp, #0x1c]
  3bbea6:      	ldrb.w	r3, [r3, #0xe5]
  3bbeaa:      	cmp	r3, #0x0
  3bbeac:      	beq	0x3bbeb0 <_ZN6ROCKET14updateItemStepEf+0x18> @ imm = #0x0
  3bbeae:      	b	0x3bc0ea <_ZN6ROCKET14updateItemStepEf+0x252> @ imm = #0x238
  3bbeb0:      	ldr	r3, [sp, #0x1c]
  3bbeb2:      	ldrb.w	r3, [r3, #0x1f8]
  3bbeb6:      	cmp	r3, #0x0
  3bbeb8:      	beq	0x3bbf48 <_ZN6ROCKET14updateItemStepEf+0xb0> @ imm = #0x8c
  3bbeba:      	ldr	r3, [sp, #0x1c]
  3bbebc:      	ldr.w	r2, [r3, #0xe8]
  3bbec0:      	ldr	r3, [pc, #0x250]        @ 0x3bc114 <_ZN6ROCKET14updateItemStepEf+0x27c>
  3bbec2:      	add	r3, pc
  3bbec4:      	vldr	d6, [r3]
  3bbec8:      	vldr	d7, [r3, #8]
  3bbecc:      	mov	r0, r2
  3bbece:      	vmov.f64	d0, d6
  3bbed2:      	vmov.f64	d1, d7
  3bbed6:      	bl	0x3ba864 <_ZN10RIOTSHIELD8setRightEb+0x50c> @ imm = #-0x1676
  3bbeda:      	ldr	r3, [sp, #0x1c]
  3bbedc:      	ldr.w	r2, [r3, #0xe8]
  3bbee0:      	ldr	r3, [pc, #0x234]        @ 0x3bc118 <_ZN6ROCKET14updateItemStepEf+0x280>
  3bbee2:      	add	r3, pc
  3bbee4:      	vldr	d6, [r3]
  3bbee8:      	vldr	d7, [r3, #8]
  3bbeec:      	mov	r0, r2
  3bbeee:      	vmov.f64	d0, d6
  3bbef2:      	vmov.f64	d1, d7
  3bbef6:      	bl	0x3ba838 <_ZN10RIOTSHIELD8setRightEb+0x4e0> @ imm = #-0x16c2
  3bbefa:      	ldr	r3, [sp, #0x1c]
  3bbefc:      	ldr.w	r1, [r3, #0xe8]
  3bbf00:      	ldr	r3, [sp, #0x1c]
  3bbf02:      	ldr.w	r3, [r3, #0xe8]
  3bbf06:      	ldrd	r2, r3, [r3, #88]
  3bbf0a:      	mov	r0, r1
  3bbf0c:      	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x317282
  3bbf10:      	ldr	r3, [sp, #0x1c]
  3bbf12:      	vldr	s14, [r3, #508]
  3bbf16:      	vldr	s15, [sp, #24]
  3bbf1a:      	vadd.f32	s15, s14, s15
  3bbf1e:      	ldr	r3, [sp, #0x1c]
  3bbf20:      	vstr	s15, [r3, #508]
  3bbf24:      	ldr	r3, [sp, #0x1c]
  3bbf26:      	vldr	s15, [r3, #508]
  3bbf2a:      	vcvt.f64.f32	d6, s15
  3bbf2e:      	vldr	d7, [pc, #448]          @ 0x3bc0f0 <_ZN6ROCKET14updateItemStepEf+0x258>
  3bbf32:      	vcmpe.f64	d6, d7
  3bbf36:      	vmrs	APSR_nzcv, fpscr
  3bbf3a:      	bgt	0x3bbf3e <_ZN6ROCKET14updateItemStepEf+0xa6> @ imm = #0x0
  3bbf3c:      	b	0x3bc0ea <_ZN6ROCKET14updateItemStepEf+0x252> @ imm = #0x1aa
  3bbf3e:      	ldr	r3, [sp, #0x1c]
  3bbf40:      	movs	r2, #0x1
  3bbf42:      	strb.w	r2, [r3, #0xe5]
  3bbf46:      	b	0x3bc0ea <_ZN6ROCKET14updateItemStepEf+0x252> @ imm = #0x1a0
  3bbf48:      	ldr	r3, [sp, #0x1c]
  3bbf4a:      	mov.w	r1, #0x0
  3bbf4e:      	str.w	r1, [r3, #0x118]
  3bbf52:      	ldr	r3, [sp, #0x1c]
  3bbf54:      	mov.w	r1, #0x0
  3bbf58:      	str.w	r1, [r3, #0x11c]
  3bbf5c:      	ldr	r3, [sp, #0x1c]
  3bbf5e:      	vldr	s14, [r3, #272]
  3bbf62:      	vldr	s15, [sp, #24]
  3bbf66:      	vadd.f32	s15, s14, s15
  3bbf6a:      	ldr	r3, [sp, #0x1c]
  3bbf6c:      	vstr	s15, [r3, #272]
  3bbf70:      	ldr	r3, [pc, #0x1a8]        @ 0x3bc11c <_ZN6ROCKET14updateItemStepEf+0x284>
  3bbf72:      	ldr	r3, [r2, r3]
  3bbf74:      	ldr	r4, [r3]
  3bbf76:      	ldr	r3, [sp, #0x1c]
  3bbf78:      	ldr.w	r3, [r3, #0xe8]
  3bbf7c:      	mov.w	r2, #0x108
  3bbf80:      	str	r2, [sp, #0x8]
  3bbf82:      	movs	r2, #0x0
  3bbf84:      	str	r2, [sp, #0xc]
  3bbf86:      	mov	r2, sp
  3bbf88:      	add.w	r1, r3, #0x30
  3bbf8c:      	ldm	r1, {r0, r1}
  3bbf8e:      	stm.w	r2, {r0, r1}
  3bbf92:      	adds	r3, #0x28
  3bbf94:      	ldm	r3, {r2, r3}
  3bbf96:      	mov	r0, r4
  3bbf98:      	bl	0x6d5e38 <cpSpacePointQueryFirst> @ imm = #0x319e9c
  3bbf9c:      	mov	r3, r0
  3bbf9e:      	str	r3, [sp, #0x20]
  3bbfa0:      	ldr	r3, [sp, #0x20]
  3bbfa2:      	cmp	r3, #0x0
  3bbfa4:      	beq	0x3bbfae <_ZN6ROCKET14updateItemStepEf+0x116> @ imm = #0x6
  3bbfa6:      	ldr	r3, [sp, #0x1c]
  3bbfa8:      	movs	r2, #0x1
  3bbfaa:      	strb.w	r2, [r3, #0x1f8]
  3bbfae:      	ldr	r3, [sp, #0x1c]
  3bbfb0:      	ldrb.w	r3, [r3, #0xe4]
  3bbfb4:      	cmp	r3, #0x0
  3bbfb6:      	beq	0x3bbfcc <_ZN6ROCKET14updateItemStepEf+0x134> @ imm = #0x12
  3bbfb8:      	ldr	r3, [sp, #0x1c]
  3bbfba:      	vldr	s14, [r3, #272]
  3bbfbe:      	vmov.f32	s15, #5.000000e-01
  3bbfc2:      	vcmpe.f32	s14, s15
  3bbfc6:      	vmrs	APSR_nzcv, fpscr
  3bbfca:      	bgt	0x3bbfe0 <_ZN6ROCKET14updateItemStepEf+0x148> @ imm = #0x12
  3bbfcc:      	ldr	r3, [sp, #0x1c]
  3bbfce:      	vldr	s14, [r3, #272]
  3bbfd2:      	vmov.f32	s15, #5.000000e+00
  3bbfd6:      	vcmpe.f32	s14, s15
  3bbfda:      	vmrs	APSR_nzcv, fpscr
  3bbfde:      	ble	0x3bbfe8 <_ZN6ROCKET14updateItemStepEf+0x150> @ imm = #0x6
  3bbfe0:      	ldr	r3, [sp, #0x1c]
  3bbfe2:      	movs	r2, #0x1
  3bbfe4:      	strb.w	r2, [r3, #0x1f8]
  3bbfe8:      	ldr	r3, [sp, #0x1c]
  3bbfea:      	ldr.w	r3, [r3, #0xe8]
  3bbfee:      	adds	r3, #0x38
  3bbff0:      	ldm	r3, {r0, r1, r2, r3}
  3bbff2:      	bl	0x3ba8f0 <_ZN10RIOTSHIELD8setRightEb+0x598> @ imm = #-0x1706
  3bbff6:      	mov	r3, r0
  3bbff8:      	vmov	s15, r3
  3bbffc:      	vneg.f32	s14, s15
  3bc000:      	vldr	s15, [pc, #260]         @ 0x3bc108 <_ZN6ROCKET14updateItemStepEf+0x270>
  3bc004:      	vmul.f32	s15, s14, s15
  3bc008:      	vstr	s15, [sp, #36]
  3bc00c:      	ldr	r3, [sp, #0x1c]
  3bc00e:      	ldr.w	r3, [r3, #0xe8]
  3bc012:      	ldr	r2, [sp, #0x1c]
  3bc014:      	ldr.w	r2, [r2, #0xe8]
  3bc018:      	vldr	d6, [r2, #88]
  3bc01c:      	vldr	d7, [pc, #216]          @ 0x3bc0f8 <_ZN6ROCKET14updateItemStepEf+0x260>
  3bc020:      	vmul.f64	d6, d6, d7
  3bc024:      	vldr	s15, [sp, #36]
  3bc028:      	vcvt.f64.f32	d5, s15
  3bc02c:      	vldr	d7, [pc, #208]          @ 0x3bc100 <_ZN6ROCKET14updateItemStepEf+0x268>
  3bc030:      	vmul.f64	d7, d5, d7
  3bc034:      	vadd.f64	d7, d6, d7
  3bc038:      	mov	r0, r3
  3bc03a:      	vmov	r2, r3, d7
  3bc03e:      	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x317150
  3bc042:      	ldr	r3, [sp, #0x1c]
  3bc044:      	ldrb.w	r3, [r3, #0xe4]
  3bc048:      	eor	r3, r3, #0x1
  3bc04c:      	uxtb	r3, r3
  3bc04e:      	cmp	r3, #0x0
  3bc050:      	beq	0x3bc0e2 <_ZN6ROCKET14updateItemStepEf+0x24a> @ imm = #0x8e
  3bc052:      	ldr	r3, [sp, #0x1c]
  3bc054:      	ldr.w	r6, [r3, #0xe8]
  3bc058:      	ldr	r3, [sp, #0x1c]
  3bc05a:      	ldr.w	r3, [r3, #0xe8]
  3bc05e:      	ldrd	r2, r3, [r3, #88]
  3bc062:      	mov	r0, r2
  3bc064:      	mov	r1, r3
  3bc066:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0xe6160
  3bc06a:      	mov	r4, r0
  3bc06c:      	mov	r5, r1
  3bc06e:      	ldr	r3, [sp, #0x1c]
  3bc070:      	ldr.w	r3, [r3, #0xe8]
  3bc074:      	ldrd	r2, r3, [r3, #88]
  3bc078:      	mov	r0, r2
  3bc07a:      	mov	r1, r3
  3bc07c:      	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0xe616c
  3bc080:      	mov	r2, r0
  3bc082:      	mov	r3, r1
  3bc084:      	add	r1, sp, #0x28
  3bc086:      	mov	r0, r1
  3bc088:      	vmov	d0, r4, r5
  3bc08c:      	vmov	d1, r2, r3
  3bc090:      	bl	0x3ba604 <_ZN10RIOTSHIELD8setRightEb+0x2ac> @ imm = #-0x1a90
  3bc094:      	vldr	s14, [sp, #24]
  3bc098:      	vldr	s15, [pc, #112]         @ 0x3bc10c <_ZN6ROCKET14updateItemStepEf+0x274>
  3bc09c:      	vmul.f32	s15, s14, s15
  3bc0a0:      	vcvt.f64.f32	d7, s15
  3bc0a4:      	add	r3, sp, #0x38
  3bc0a6:      	vldr	d5, [sp, #40]
  3bc0aa:      	vldr	d6, [sp, #48]
  3bc0ae:      	mov	r0, r3
  3bc0b0:      	vmov.f64	d0, d5
  3bc0b4:      	vmov.f64	d1, d6
  3bc0b8:      	vmov.f64	d2, d7
  3bc0bc:      	bl	0x3ba684 <_ZN10RIOTSHIELD8setRightEb+0x32c> @ imm = #-0x1a3c
  3bc0c0:      	ldr	r3, [pc, #0x5c]         @ 0x3bc120 <_ZN6ROCKET14updateItemStepEf+0x288>
  3bc0c2:      	add	r3, pc
  3bc0c4:      	add	r4, sp, #0x8
  3bc0c6:      	ldm	r3, {r0, r1, r2, r3}
  3bc0c8:      	stm.w	r4, {r0, r1, r2, r3}
  3bc0cc:      	mov	r3, sp
  3bc0ce:      	add	r2, sp, #0x40
  3bc0d0:      	ldm.w	r2, {r0, r1}
  3bc0d4:      	stm.w	r3, {r0, r1}
  3bc0d8:      	add	r3, sp, #0x38
  3bc0da:      	ldm	r3, {r2, r3}
  3bc0dc:      	mov	r0, r6
  3bc0de:      	bl	0x6d3324 <cpBodyApplyForce> @ imm = #0x317242
  3bc0e2:      	ldr	r0, [sp, #0x1c]
  3bc0e4:      	ldr	r1, [sp, #0x18]
  3bc0e6:      	bl	0x3bbae8 <_ZN6ROCKET13updateEffectsEf> @ imm = #-0x602
  3bc0ea:      	add	sp, #0x48
  3bc0ec:      	pop	{r4, r5, r6, pc}
