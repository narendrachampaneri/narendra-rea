// HawkDrone::updateThrust  ghidra=0x34fe80-0x350031  elf=0x33fe80-0x340031  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  33fe80:      	push	{r4, lr}
  33fe82:      	sub	sp, #0x80
  33fe84:      	str	r0, [sp, #0x4]
  33fe86:      	str	r1, [sp]
  33fe88:      	ldr	r3, [sp, #0x4]
  33fe8a:      	ldr	r3, [r3]
  33fe8c:      	add.w	r3, r3, #0x1f8
  33fe90:      	ldr	r3, [r3]
  33fe92:      	ldr	r2, [sp, #0x4]
  33fe94:      	add	r1, sp, #0x50
  33fe96:      	mov	r0, r1
  33fe98:      	mov	r1, r2
  33fe9a:      	blx	r3
  33fe9c:      	add	r3, sp, #0x20
  33fe9e:      	vldr	d6, [sp, #80]
  33fea2:      	vldr	d7, [sp, #88]
  33fea6:      	mov	r0, r3
  33fea8:      	vmov.f64	d0, d6
  33feac:      	vmov.f64	d1, d7
  33feb0:      	vldr	d2, [pc, #388]          @ 0x340038 <_ZN9HawkDrone12updateThrustEf+0x1b8>
  33feb4:      	bl	0x33e484 <_ZThn228_N3HUD18editBoxTextChangedEPN7cocos2d9extension9CCEditBoxERKSs+0x2f8> @ imm = #-0x1a34
  33feb8:      	ldr	r3, [sp, #0x4]
  33feba:      	ldr	r3, [r3]
  33febc:      	add.w	r3, r3, #0x1f8
  33fec0:      	ldr	r3, [r3]
  33fec2:      	ldr	r2, [sp, #0x4]
  33fec4:      	add	r1, sp, #0x60
  33fec6:      	mov	r0, r1
  33fec8:      	mov	r1, r2
  33feca:      	blx	r3
  33fecc:      	add	r3, sp, #0x30
  33fece:      	vldr	d6, [sp, #96]
  33fed2:      	vldr	d7, [sp, #104]
  33fed6:      	mov	r0, r3
  33fed8:      	vmov.f64	d0, d6
  33fedc:      	vmov.f64	d1, d7
  33fee0:      	bl	0x33e560 <_ZThn228_N3HUD18editBoxTextChangedEPN7cocos2d9extension9CCEditBoxERKSs+0x3d4> @ imm = #-0x1984
  33fee4:      	add	r3, sp, #0x20
  33fee6:      	ldm	r3, {r0, r1, r2, r3}
  33fee8:      	bl	0x6d70b8 <cpvlength>    @ imm = #0x3971cc
  33feec:      	vmov	d7, r0, r1
  33fef0:      	vcvt.f32.f64	s15, d7
  33fef4:      	vstr	s15, [sp, #12]
  33fef8:      	vldr	s15, [sp, #12]
  33fefc:      	vcmp.f32	s15, #0
  33ff00:      	vmrs	APSR_nzcv, fpscr
  33ff04:      	beq.w	0x34002e <_ZN9HawkDrone12updateThrustEf+0x1ae> @ imm = #0x126
  33ff08:      	ldr	r3, [sp, #0x4]
  33ff0a:      	ldr.w	r3, [r3, #0x1c8]
  33ff0e:      	add	r4, sp, #0x40
  33ff10:      	adds	r3, #0x38
  33ff12:      	ldm	r3, {r0, r1, r2, r3}
  33ff14:      	stm.w	r4, {r0, r1, r2, r3}
  33ff18:      	vldr	d4, [sp, #64]
  33ff1c:      	vldr	d5, [sp, #72]
  33ff20:      	vldr	d6, [sp, #32]
  33ff24:      	vldr	d7, [sp, #40]
  33ff28:      	vmov.f64	d0, d4
  33ff2c:      	vmov.f64	d1, d5
  33ff30:      	vmov.f64	d2, d6
  33ff34:      	vmov.f64	d3, d7
  33ff38:      	bl	0x33e4d0 <_ZThn228_N3HUD18editBoxTextChangedEPN7cocos2d9extension9CCEditBoxERKSs+0x344> @ imm = #-0x1a6c
  33ff3c:      	vstr	d0, [sp, #16]
  33ff40:      	vldr	s14, [sp, #12]
  33ff44:      	vldr	s15, [sp, #12]
  33ff48:      	vmul.f32	s15, s14, s15
  33ff4c:      	vcvt.f64.f32	d7, s15
  33ff50:      	vldr	d6, [sp, #16]
  33ff54:      	vdiv.f64	d7, d6, d7
  33ff58:      	vcmpe.f64	d7, #0
  33ff5c:      	vmrs	APSR_nzcv, fpscr
  33ff60:      	bpl	0x33ff68 <_ZN9HawkDrone12updateThrustEf+0xe8> @ imm = #0x4
  33ff62:      	vldr	d7, [pc, #220]          @ 0x340040 <_ZN9HawkDrone12updateThrustEf+0x1c0>
  33ff66:      	b	0x33ff80 <_ZN9HawkDrone12updateThrustEf+0x100> @ imm = #0x16
  33ff68:      	vldr	s14, [sp, #12]
  33ff6c:      	vldr	s15, [sp, #12]
  33ff70:      	vmul.f32	s15, s14, s15
  33ff74:      	vcvt.f64.f32	d7, s15
  33ff78:      	vldr	d6, [sp, #16]
  33ff7c:      	vdiv.f64	d7, d6, d7
  33ff80:      	vstr	d7, [sp, #24]
  33ff84:      	vldr	s15, [sp, #12]
  33ff88:      	vcvt.f64.f32	d6, s15
  33ff8c:      	vldr	d7, [sp, #24]
  33ff90:      	vsub.f64	d6, d6, d7
  33ff94:      	vldr	d7, [pc, #176]          @ 0x340048 <_ZN9HawkDrone12updateThrustEf+0x1c8>
  33ff98:      	vcmpe.f64	d6, d7
  33ff9c:      	vmrs	APSR_nzcv, fpscr
  33ffa0:      	bpl	0x33ffa8 <_ZN9HawkDrone12updateThrustEf+0x128> @ imm = #0x4
  33ffa2:      	vldr	d7, [pc, #164]          @ 0x340048 <_ZN9HawkDrone12updateThrustEf+0x1c8>
  33ffa6:      	b	0x33ffb8 <_ZN9HawkDrone12updateThrustEf+0x138> @ imm = #0xe
  33ffa8:      	vldr	s15, [sp, #12]
  33ffac:      	vcvt.f64.f32	d6, s15
  33ffb0:      	vldr	d7, [sp, #24]
  33ffb4:      	vsub.f64	d7, d6, d7
  33ffb8:      	vstr	d7, [sp, #24]
  33ffbc:      	ldr	r3, [sp, #0x4]
  33ffbe:      	ldr.w	r4, [r3, #0x1c8]
  33ffc2:      	vldr	s15, [sp]
  33ffc6:      	vcvt.f64.f32	d6, s15
  33ffca:      	vmov.f64	d7, #1.500000e+00
  33ffce:      	vmul.f64	d6, d6, d7
  33ffd2:      	vldr	d7, [sp, #24]
  33ffd6:      	vmul.f64	d6, d6, d7
  33ffda:      	ldr	r3, [sp, #0x4]
  33ffdc:      	vldr	s15, [r3, #468]
  33ffe0:      	vcvt.f64.f32	d7, s15
  33ffe4:      	vmul.f64	d7, d6, d7
  33ffe8:      	add	r3, sp, #0x70
  33ffea:      	vldr	d5, [sp, #48]
  33ffee:      	vldr	d6, [sp, #56]
  33fff2:      	mov	r0, r3
  33fff4:      	vmov.f64	d0, d5
  33fff8:      	vmov.f64	d1, d6
  33fffc:      	vmov.f64	d2, d7
  340000:      	bl	0x33e484 <_ZThn228_N3HUD18editBoxTextChangedEPN7cocos2d9extension9CCEditBoxERKSs+0x2f8> @ imm = #-0x1b80
  340004:      	vldr	d4, [sp, #112]
  340008:      	vldr	d5, [sp, #120]
  34000c:      	ldr	r3, [pc, #0x40]         @ 0x340050 <_ZN9HawkDrone12updateThrustEf+0x1d0>
  34000e:      	add	r3, pc
  340010:      	vldr	d6, [r3]
  340014:      	vldr	d7, [r3, #8]
  340018:      	mov	r0, r4
  34001a:      	vmov.f64	d0, d4
  34001e:      	vmov.f64	d1, d5
  340022:      	vmov.f64	d2, d6
  340026:      	vmov.f64	d3, d7
  34002a:      	bl	0x33e680 <_ZThn228_N3HUD18editBoxTextChangedEPN7cocos2d9extension9CCEditBoxERKSs+0x4f4> @ imm = #-0x19ae
  34002e:      	add	sp, #0x80
  340030:      	pop	{r4, pc}
