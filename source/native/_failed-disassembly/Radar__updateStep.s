// Radar::updateStep  ghidra=0x3cdd70-0x3cdfa1  elf=0x3bdd70-0x3bdfa1  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  3bdd70:      	push	{r4, r5, r6, lr}
  3bdd72:      	vpush	{d8}
  3bdd76:      	sub	sp, #0xb0
  3bdd78:      	str	r0, [sp, #0x14]
  3bdd7a:      	str	r1, [sp, #0x10]
  3bdd7c:      	ldr	r4, [pc, #0x23c]        @ 0x3bdfbc <_ZN5Radar10updateStepEf+0x24c>
  3bdd7e:      	add	r4, pc
  3bdd80:      	movs	r3, #0x0
  3bdd82:      	str	r3, [sp, #0x2c]
  3bdd84:      	movs	r3, #0x0
  3bdd86:      	str	r3, [sp, #0x24]
  3bdd88:      	movs	r3, #0x0
  3bdd8a:      	str	r3, [sp, #0x28]
  3bdd8c:      	ldr	r3, [sp, #0x14]
  3bdd8e:      	ldr.w	r3, [r3, #0xe4]
  3bdd92:      	cmp	r3, #0x0
  3bdd94:      	beq	0x3bddac <_ZN5Radar10updateStepEf+0x3c> @ imm = #0x14
  3bdd96:      	ldr	r3, [sp, #0x14]
  3bdd98:      	ldr.w	r3, [r3, #0xe4]
  3bdd9c:      	mov	r0, r3
  3bdd9e:      	bl	0x593c6c <_ZN7cocos2d12CCDictionary5countEv> @ imm = #0x1d5eca
  3bdda2:      	mov	r3, r0
  3bdda4:      	cmp	r3, #0x0
  3bdda6:      	beq	0x3bddac <_ZN5Radar10updateStepEf+0x3c> @ imm = #0x2
  3bdda8:      	movs	r3, #0x1
  3bddaa:      	b	0x3bddae <_ZN5Radar10updateStepEf+0x3e> @ imm = #0x0
  3bddac:      	movs	r3, #0x0
  3bddae:      	cmp	r3, #0x0
  3bddb0:      	beq.w	0x3be294 <_ZN5Radar10updateStepEf+0x524> @ imm = #0x4e0
  3bddb4:      	ldr	r3, [sp, #0x14]
  3bddb6:      	ldr.w	r3, [r3, #0xe4]
  3bddba:      	ldr	r3, [r3, #0x14]
  3bddbc:      	str	r3, [sp, #0x24]
  3bddbe:      	ldr	r3, [sp, #0x14]
  3bddc0:      	ldr.w	r3, [r3, #0xe4]
  3bddc4:      	ldr	r3, [r3, #0x14]
  3bddc6:      	cmp	r3, #0x0
  3bddc8:      	beq	0x3bddd8 <_ZN5Radar10updateStepEf+0x68> @ imm = #0xc
  3bddca:      	ldr	r3, [sp, #0x14]
  3bddcc:      	ldr.w	r3, [r3, #0xe4]
  3bddd0:      	ldr	r3, [r3, #0x14]
  3bddd2:      	ldr.w	r3, [r3, #0x110]
  3bddd6:      	b	0x3bddda <_ZN5Radar10updateStepEf+0x6a> @ imm = #0x0
  3bddd8:      	movs	r3, #0x0
  3bddda:      	str	r3, [sp, #0x28]
  3bdddc:      	b	0x3be268 <_ZN5Radar10updateStepEf+0x4f8> @ imm = #0x488
  3bddde:      	ldr	r0, [sp, #0x24]
  3bdde0:      	bl	0x376488 <_ZNK7cocos2d13CCDictElement9getStrKeyEv> @ imm = #-0x4795c
  3bdde4:      	mov	r5, r0
  3bdde6:      	add	r3, sp, #0x50
  3bdde8:      	mov	r0, r3
  3bddea:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x3cc606
  3bddee:      	add	r2, sp, #0x20
  3bddf0:      	add	r3, sp, #0x50
  3bddf2:      	mov	r0, r2
  3bddf4:      	mov	r1, r5
  3bddf6:      	mov	r2, r3
  3bddf8:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3f8c64
  3bddfc:      	add	r3, sp, #0x50
  3bddfe:      	mov	r0, r3
  3bde00:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x3cc5f8
  3bde04:      	ldr	r0, [sp, #0x24]
  3bde06:      	bl	0x2fe634 <_ZNK7cocos2d13CCDictElement9getObjectEv> @ imm = #-0xbf7d6
  3bde0a:      	mov	r3, r0
  3bde0c:      	str	r3, [sp, #0x2c]
  3bde0e:      	add	r2, sp, #0x50
  3bde10:      	add	r3, sp, #0x20
  3bde12:      	mov	r0, r2
  3bde14:      	mov	r1, r3
  3bde16:      	bl	0x7b64e8 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19a38> @ imm = #0x3f86ce
  3bde1a:      	add	r3, sp, #0x50
  3bde1c:      	ldr	r0, [sp, #0x14]
  3bde1e:      	mov	r1, r3
  3bde20:      	bl	0x3bda80 <_ZN5Radar23findCollisionObjectByIdESs> @ imm = #-0x3a4
  3bde24:      	mov	r3, r0
  3bde26:      	str	r3, [sp, #0x30]
  3bde28:      	add	r3, sp, #0x50
  3bde2a:      	mov	r0, r3
  3bde2c:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3f7ae4
  3bde30:      	ldr	r3, [sp, #0x2c]
  3bde32:      	cmp	r3, #0x0
  3bde34:      	beq.w	0x3be24a <_ZN5Radar10updateStepEf+0x4da> @ imm = #0x412
  3bde38:      	ldr	r3, [sp, #0x2c]
  3bde3a:      	ldr	r3, [r3]
  3bde3c:      	adds	r3, #0x9c
  3bde3e:      	ldr	r3, [r3]
  3bde40:      	ldr	r2, [sp, #0x2c]
  3bde42:      	mov	r0, r2
  3bde44:      	blx	r3
  3bde46:      	vmov	s14, r0
  3bde4a:      	vldr	s15, [pc, #356]         @ 0x3bdfb0 <_ZN5Radar10updateStepEf+0x240>
  3bde4e:      	vmul.f32	s15, s14, s15
  3bde52:      	vneg.f32	s15, s15
  3bde56:      	vstr	s15, [sp, #52]
  3bde5a:      	vldr	s15, [sp, #52]
  3bde5e:      	vcvt.f64.f32	d7, s15
  3bde62:      	vmov	r0, r1, d7
  3bde66:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0xe7f60
  3bde6a:      	vmov	d7, r0, r1
  3bde6e:      	vcvt.f32.f64	s16, d7
  3bde72:      	vldr	s15, [sp, #52]
  3bde76:      	vcvt.f64.f32	d7, s15
  3bde7a:      	vmov	r0, r1, d7
  3bde7e:      	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0xe7f6c
  3bde82:      	vmov	d7, r0, r1
  3bde86:      	vcvt.f32.f64	s15, d7
  3bde8a:      	add	r3, sp, #0x50
  3bde8c:      	mov	r0, r3
  3bde8e:      	vmov	r1, s16
  3bde92:      	vmov	r2, s15
  3bde96:      	bl	0x592cf0 <_ZN7cocos2d7CCPointC2Eff> @ imm = #0x1d4e56
  3bde9a:      	ldr	r3, [pc, #0x124]        @ 0x3bdfc0 <_ZN5Radar10updateStepEf+0x250>
  3bde9c:      	ldr	r3, [r4, r3]
  3bde9e:      	vldr	s14, [r3, #4]
  3bdea2:      	vmov.f32	s15, #3.000000e+00
  3bdea6:      	vmul.f32	s14, s14, s15
  3bdeaa:      	vmov.f32	s15, #8.000000e+00
  3bdeae:      	vdiv.f32	s15, s14, s15
  3bdeb2:      	add	r2, sp, #0x48
  3bdeb4:      	add	r3, sp, #0x50
  3bdeb6:      	mov	r0, r2
  3bdeb8:      	mov	r1, r3
  3bdeba:      	vmov.f32	s0, s15
  3bdebe:      	bl	0x3bc8d0 <_ZN6ROCKET8detonateEPN7cocos2d8CCObjectE+0x1c8> @ imm = #-0x15f2
  3bdec2:      	ldr	r3, [sp, #0x2c]
  3bdec4:      	ldr	r3, [r3]
  3bdec6:      	adds	r3, #0x4c
  3bdec8:      	ldr	r5, [r3]
  3bdeca:      	ldr	r6, [sp, #0x2c]
  3bdecc:      	ldr	r3, [sp, #0x14]
  3bdece:      	add.w	r2, r3, #0xe8
  3bded2:      	add	r1, sp, #0x50
  3bded4:      	add	r3, sp, #0x48
  3bded6:      	mov	r0, r1
  3bded8:      	mov	r1, r2
  3bdeda:      	mov	r2, r3
  3bdedc:      	bl	0x3bc8b0 <_ZN6ROCKET8detonateEPN7cocos2d8CCObjectE+0x1a8> @ imm = #-0x1630
  3bdee0:      	add	r3, sp, #0x50
  3bdee2:      	mov	r0, r6
  3bdee4:      	mov	r1, r3
  3bdee6:      	blx	r5
  3bdee8:      	ldr	r3, [sp, #0x2c]
  3bdeea:      	ldr	r3, [r3]
  3bdeec:      	adds	r3, #0x40
  3bdeee:      	ldr	r5, [r3]
  3bdef0:      	ldr	r6, [sp, #0x2c]
  3bdef2:      	ldr	r3, [pc, #0xd0]         @ 0x3bdfc4 <_ZN5Radar10updateStepEf+0x254>
  3bdef4:      	ldr	r3, [r4, r3]
  3bdef6:      	ldr	r3, [r3]
  3bdef8:      	ldr	r3, [r3]
  3bdefa:      	add.w	r3, r3, #0x2c8
  3bdefe:      	ldr	r3, [r3]
  3bdf00:      	ldr	r2, [pc, #0xc0]         @ 0x3bdfc4 <_ZN5Radar10updateStepEf+0x254>
  3bdf02:      	ldr	r2, [r4, r2]
  3bdf04:      	ldr	r2, [r2]
  3bdf06:      	mov	r0, r2
  3bdf08:      	blx	r3
  3bdf0a:      	vmov	s16, r0
  3bdf0e:      	ldr	r0, [sp, #0x2c]
  3bdf10:      	bl	0x3bd80c <_ZN10ArrowAlert13getArrowScaleEv> @ imm = #-0x708
  3bdf14:      	vmov	s15, r0
  3bdf18:      	vmul.f32	s15, s16, s15
  3bdf1c:      	mov	r0, r6
  3bdf1e:      	vmov	r1, s15
  3bdf22:      	blx	r5
  3bdf24:      	ldr	r0, [sp, #0x2c]
  3bdf26:      	bl	0x3bd80c <_ZN10ArrowAlert13getArrowScaleEv> @ imm = #-0x71e
  3bdf2a:      	vmov	s14, r0
  3bdf2e:      	vldr	s15, [pc, #132]         @ 0x3bdfb4 <_ZN5Radar10updateStepEf+0x244>
  3bdf32:      	vsub.f32	s15, s14, s15
  3bdf36:      	vcvt.f64.f32	d6, s15
  3bdf3a:      	vldr	d7, [pc, #108]          @ 0x3bdfa8 <_ZN5Radar10updateStepEf+0x238>
  3bdf3e:      	vcmpe.f64	d6, d7
  3bdf42:      	vmrs	APSR_nzcv, fpscr
  3bdf46:      	ble	0x3bdf5c <_ZN5Radar10updateStepEf+0x1ec> @ imm = #0x12
  3bdf48:      	ldr	r0, [sp, #0x2c]
  3bdf4a:      	bl	0x3bd80c <_ZN10ArrowAlert13getArrowScaleEv> @ imm = #-0x742
  3bdf4e:      	vmov	s14, r0
  3bdf52:      	vldr	s15, [pc, #96]          @ 0x3bdfb4 <_ZN5Radar10updateStepEf+0x244>
  3bdf56:      	vsub.f32	s15, s14, s15
  3bdf5a:      	b	0x3bdf60 <_ZN5Radar10updateStepEf+0x1f0> @ imm = #0x2
  3bdf5c:      	vldr	s15, [pc, #88]          @ 0x3bdfb8 <_ZN5Radar10updateStepEf+0x248>
  3bdf60:      	vstr	s15, [sp, #56]
  3bdf64:      	ldr	r0, [sp, #0x2c]
  3bdf66:      	ldr	r1, [sp, #0x38]
  3bdf68:      	bl	0x3bd7f8 <_ZN10ArrowAlert13setArrowScaleEf> @ imm = #-0x774
  3bdf6c:      	ldr	r0, [sp, #0x2c]
  3bdf6e:      	bl	0x3bd81c <_ZN10ArrowAlert9getSpriteEv> @ imm = #-0x756
  3bdf72:      	mov	r3, r0
  3bdf74:      	ldr	r2, [r3]
  3bdf76:      	add.w	r2, r2, #0x19c
  3bdf7a:      	ldr	r2, [r2]
  3bdf7c:      	mov	r0, r3
  3bdf7e:      	blx	r2
  3bdf80:      	mov	r3, r0
  3bdf82:      	subs	r3, #0x5
  3bdf84:      	cmp	r3, #0x0
  3bdf86:      	ble	0x3bdfc8 <_ZN5Radar10updateStepEf+0x258> @ imm = #0x3e
  3bdf88:      	ldr	r0, [sp, #0x2c]
  3bdf8a:      	bl	0x3bd81c <_ZN10ArrowAlert9getSpriteEv> @ imm = #-0x772
  3bdf8e:      	mov	r3, r0
  3bdf90:      	ldr	r2, [r3]
  3bdf92:      	add.w	r2, r2, #0x19c
  3bdf96:      	ldr	r2, [r2]
  3bdf98:      	mov	r0, r3
  3bdf9a:      	blx	r2
  3bdf9c:      	mov	r3, r0
  3bdf9e:      	subs	r3, #0x5
  3bdfa0:      	b	0x3bdfca <_ZN5Radar10updateStepEf+0x25a> @ imm = #0x26
// Radar::updateStep  ghidra=0x3cdfc8-0x3ce271  elf=0x3bdfc8-0x3be271  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  3bdfc8:      	movs	r3, #0x0
  3bdfca:      	str	r3, [sp, #0x3c]
  3bdfcc:      	ldr	r0, [sp, #0x2c]
  3bdfce:      	bl	0x3bd81c <_ZN10ArrowAlert9getSpriteEv> @ imm = #-0x7b6
  3bdfd2:      	mov	r3, r0
  3bdfd4:      	ldr	r2, [r3]
  3bdfd6:      	add.w	r2, r2, #0x1a4
  3bdfda:      	ldr	r2, [r2]
  3bdfdc:      	ldr	r1, [sp, #0x3c]
  3bdfde:      	uxtb	r1, r1
  3bdfe0:      	mov	r0, r3
  3bdfe2:      	blx	r2
  3bdfe4:      	ldr	r0, [sp, #0x2c]
  3bdfe6:      	bl	0x3bd81c <_ZN10ArrowAlert9getSpriteEv> @ imm = #-0x7ce
  3bdfea:      	mov	r3, r0
  3bdfec:      	ldr	r2, [r3]
  3bdfee:      	add.w	r2, r2, #0x19c
  3bdff2:      	ldr	r2, [r2]
  3bdff4:      	mov	r0, r3
  3bdff6:      	blx	r2
  3bdff8:      	mov	r3, r0
  3bdffa:      	cmp	r3, #0x0
  3bdffc:      	ite	ne
  3bdffe:      	movne	r3, #0x0
  3be000:      	moveq	r3, #0x1
  3be002:      	uxtb	r3, r3
  3be004:      	cmp	r3, #0x0
  3be006:      	beq	0x3be018 <_ZN5Radar10updateStepEf+0x2a8> @ imm = #0xe
  3be008:      	ldr	r3, [sp, #0x2c]
  3be00a:      	ldr	r3, [r3]
  3be00c:      	adds	r3, #0x90
  3be00e:      	ldr	r3, [r3]
  3be010:      	ldr	r2, [sp, #0x2c]
  3be012:      	mov	r0, r2
  3be014:      	movs	r1, #0x0
  3be016:      	blx	r3
  3be018:      	ldr	r3, [sp, #0x30]
  3be01a:      	cmp	r3, #0x0
  3be01c:      	beq.w	0x3be24a <_ZN5Radar10updateStepEf+0x4da> @ imm = #0x22a
  3be020:      	ldr	r3, [sp, #0x30]
  3be022:      	ldr	r3, [r3]
  3be024:      	add.w	r3, r3, #0x1ac
  3be028:      	ldr	r3, [r3]
  3be02a:      	add	r2, sp, #0x60
  3be02c:      	mov	r0, r2
  3be02e:      	ldr	r1, [sp, #0x30]
  3be030:      	blx	r3
  3be032:      	ldr	r3, [pc, #0x284]        @ 0x3be2b8 <_ZN5Radar10updateStepEf+0x548>
  3be034:      	ldr	r3, [r4, r3]
  3be036:      	vldr	s15, [r3]
  3be03a:      	vcvt.f64.f32	d6, s15
  3be03e:      	ldr	r3, [pc, #0x278]        @ 0x3be2b8 <_ZN5Radar10updateStepEf+0x548>
  3be040:      	ldr	r3, [r4, r3]
  3be042:      	vldr	s15, [r3, #4]
  3be046:      	vcvt.f64.f32	d7, s15
  3be04a:      	add	r3, sp, #0x70
  3be04c:      	mov	r0, r3
  3be04e:      	vmov.f64	d0, d6
  3be052:      	vmov.f64	d1, d7
  3be056:      	bl	0x3bc8f0 <_ZN6ROCKET8detonateEPN7cocos2d8CCObjectE+0x1e8> @ imm = #-0x176a
  3be05a:      	add	r3, sp, #0x50
  3be05c:      	vldr	d4, [sp, #96]
  3be060:      	vldr	d5, [sp, #104]
  3be064:      	vldr	d6, [sp, #112]
  3be068:      	vldr	d7, [sp, #120]
  3be06c:      	mov	r0, r3
  3be06e:      	vmov.f64	d0, d4
  3be072:      	vmov.f64	d1, d5
  3be076:      	vmov.f64	d2, d6
  3be07a:      	vmov.f64	d3, d7
  3be07e:      	bl	0x3bc918 <_ZN6ROCKET8detonateEPN7cocos2d8CCObjectE+0x210> @ imm = #-0x176a
  3be082:      	add	r3, sp, #0x50
  3be084:      	ldm	r3, {r0, r1, r2, r3}
  3be086:      	bl	0x3bc9d0 <_ZN6ROCKET8detonateEPN7cocos2d8CCObjectE+0x2c8> @ imm = #-0x16ba
  3be08a:      	vmov	s15, r0
  3be08e:      	vcvt.f64.f32	d7, s15
  3be092:      	vstr	d7, [sp, #64]
  3be096:      	ldr	r3, [sp, #0x2c]
  3be098:      	ldr	r3, [r3]
  3be09a:      	adds	r3, #0x98
  3be09c:      	ldr	r3, [r3]
  3be09e:      	ldr	r2, [sp, #0x2c]
  3be0a0:      	vldr	d7, [sp, #64]
  3be0a4:      	vcvt.f32.f64	s15, d7
  3be0a8:      	mov	r0, r2
  3be0aa:      	vmov	r1, s15
  3be0ae:      	blx	r3
  3be0b0:      	ldr	r3, [sp, #0x30]
  3be0b2:      	ldr	r3, [r3]
  3be0b4:      	add.w	r3, r3, #0x1b0
  3be0b8:      	ldr	r3, [r3]
  3be0ba:      	add	r2, sp, #0x80
  3be0bc:      	mov	r0, r2
  3be0be:      	ldr	r1, [sp, #0x30]
  3be0c0:      	blx	r3
  3be0c2:      	add	r3, sp, #0x80
  3be0c4:      	ldm	r3, {r0, r1, r2, r3}
  3be0c6:      	bl	0x6d70b8 <cpvlength>    @ imm = #0x318fee
  3be0ca:      	vmov	d6, r0, r1
  3be0ce:      	vldr	d7, [pc, #464]          @ 0x3be2a0 <_ZN5Radar10updateStepEf+0x530>
  3be0d2:      	vcmpe.f64	d6, d7
  3be0d6:      	vmrs	APSR_nzcv, fpscr
  3be0da:      	ble	0x3be13a <_ZN5Radar10updateStepEf+0x3ca> @ imm = #0x5c
  3be0dc:      	add	r3, sp, #0x50
  3be0de:      	ldm	r3, {r0, r1, r2, r3}
  3be0e0:      	bl	0x6d70b8 <cpvlength>    @ imm = #0x318fd4
  3be0e4:      	vmov	d6, r0, r1
  3be0e8:      	vldr	d7, [pc, #444]          @ 0x3be2a8 <_ZN5Radar10updateStepEf+0x538>
  3be0ec:      	vcmpe.f64	d6, d7
  3be0f0:      	vmrs	APSR_nzcv, fpscr
  3be0f4:      	bpl	0x3be13a <_ZN5Radar10updateStepEf+0x3ca> @ imm = #0x42
  3be0f6:      	ldr	r3, [sp, #0x30]
  3be0f8:      	ldr	r3, [r3]
  3be0fa:      	add.w	r3, r3, #0x1ac
  3be0fe:      	ldr	r3, [r3]
  3be100:      	add	r2, sp, #0x90
  3be102:      	mov	r0, r2
  3be104:      	ldr	r1, [sp, #0x30]
  3be106:      	blx	r3
  3be108:      	add	r3, sp, #0xa0
  3be10a:      	mov	r0, r3
  3be10c:      	vldr	d0, [pc, #416]          @ 0x3be2b0 <_ZN5Radar10updateStepEf+0x540>
  3be110:      	vldr	d1, [pc, #412]          @ 0x3be2b0 <_ZN5Radar10updateStepEf+0x540>
  3be114:      	bl	0x3bc8f0 <_ZN6ROCKET8detonateEPN7cocos2d8CCObjectE+0x1e8> @ imm = #-0x1828
  3be118:      	mov	r5, sp
  3be11a:      	add	r3, sp, #0xa0
  3be11c:      	ldm	r3, {r0, r1, r2, r3}
  3be11e:      	stm.w	r5, {r0, r1, r2, r3}
  3be122:      	add	r3, sp, #0x90
  3be124:      	ldm	r3, {r0, r1, r2, r3}
  3be126:      	bl	0x3bcc60 <_ZN6ROCKET8detonateEPN7cocos2d8CCObjectE+0x558> @ imm = #-0x14ca
  3be12a:      	mov	r3, r0
  3be12c:      	eor	r3, r3, #0x1
  3be130:      	uxtb	r3, r3
  3be132:      	cmp	r3, #0x0
  3be134:      	beq	0x3be13a <_ZN5Radar10updateStepEf+0x3ca> @ imm = #0x2
  3be136:      	movs	r3, #0x1
  3be138:      	b	0x3be13c <_ZN5Radar10updateStepEf+0x3cc> @ imm = #0x0
  3be13a:      	movs	r3, #0x0
  3be13c:      	cmp	r3, #0x0
  3be13e:      	beq.w	0x3be24a <_ZN5Radar10updateStepEf+0x4da> @ imm = #0x108
  3be142:      	ldr	r3, [sp, #0x2c]
  3be144:      	ldr	r3, [r3]
  3be146:      	adds	r3, #0x90
  3be148:      	ldr	r3, [r3]
  3be14a:      	ldr	r2, [sp, #0x2c]
  3be14c:      	mov	r0, r2
  3be14e:      	movs	r1, #0x1
  3be150:      	blx	r3
  3be152:      	ldr	r0, [sp, #0x2c]
  3be154:      	bl	0x3bd81c <_ZN10ArrowAlert9getSpriteEv> @ imm = #-0x93c
  3be158:      	mov	r5, r0
  3be15a:      	ldr	r3, [r5]
  3be15c:      	add.w	r3, r3, #0x1a4
  3be160:      	ldr	r6, [r3]
  3be162:      	ldr	r0, [sp, #0x2c]
  3be164:      	bl	0x3bd81c <_ZN10ArrowAlert9getSpriteEv> @ imm = #-0x94c
  3be168:      	mov	r3, r0
  3be16a:      	ldr	r2, [r3]
  3be16c:      	add.w	r2, r2, #0x19c
  3be170:      	ldr	r2, [r2]
  3be172:      	mov	r0, r3
  3be174:      	blx	r2
  3be176:      	mov	r3, r0
  3be178:      	adds	r3, #0xa
  3be17a:      	cmp	r3, #0xc7
  3be17c:      	bgt	0x3be19a <_ZN5Radar10updateStepEf+0x42a> @ imm = #0x1a
  3be17e:      	ldr	r0, [sp, #0x2c]
  3be180:      	bl	0x3bd81c <_ZN10ArrowAlert9getSpriteEv> @ imm = #-0x968
  3be184:      	mov	r3, r0
  3be186:      	ldr	r2, [r3]
  3be188:      	add.w	r2, r2, #0x19c
  3be18c:      	ldr	r2, [r2]
  3be18e:      	mov	r0, r3
  3be190:      	blx	r2
  3be192:      	mov	r3, r0
  3be194:      	adds	r3, #0xa
  3be196:      	uxtb	r3, r3
  3be198:      	b	0x3be19c <_ZN5Radar10updateStepEf+0x42c> @ imm = #0x0
  3be19a:      	movs	r3, #0xc8
  3be19c:      	mov	r0, r5
  3be19e:      	mov	r1, r3
  3be1a0:      	blx	r6
  3be1a2:      	ldr	r3, [pc, #0x118]        @ 0x3be2bc <_ZN5Radar10updateStepEf+0x54c>
  3be1a4:      	ldr	r3, [r4, r3]
  3be1a6:      	ldr	r3, [r3]
  3be1a8:      	ldr	r3, [r3]
  3be1aa:      	add.w	r3, r3, #0x300
  3be1ae:      	ldr	r5, [r3]
  3be1b0:      	ldr	r3, [pc, #0x108]        @ 0x3be2bc <_ZN5Radar10updateStepEf+0x54c>
  3be1b2:      	ldr	r3, [r4, r3]
  3be1b4:      	ldr	r6, [r3]
  3be1b6:      	ldr	r3, [sp, #0x30]
  3be1b8:      	ldr	r3, [r3]
  3be1ba:      	add.w	r3, r3, #0x1c4
  3be1be:      	ldr	r3, [r3]
  3be1c0:      	ldr	r0, [sp, #0x30]
  3be1c2:      	blx	r3
  3be1c4:      	mov	r3, r0
  3be1c6:      	mov	r0, r6
  3be1c8:      	mov	r1, r3
  3be1ca:      	blx	r5
  3be1cc:      	mov	r3, r0
  3be1ce:      	cmp	r3, #0x0
  3be1d0:      	beq	0x3be20e <_ZN5Radar10updateStepEf+0x49e> @ imm = #0x3a
  3be1d2:      	ldr	r0, [sp, #0x2c]
  3be1d4:      	bl	0x3bd81c <_ZN10ArrowAlert9getSpriteEv> @ imm = #-0x9bc
  3be1d8:      	mov	r5, r0
  3be1da:      	ldr	r3, [r5]
  3be1dc:      	add.w	r3, r3, #0x1bc
  3be1e0:      	ldr	r6, [r3]
  3be1e2:      	movs	r0, #0x0
  3be1e4:      	movs	r1, #0xff
  3be1e6:      	movs	r2, #0x0
  3be1e8:      	bl	0x3bc854 <_ZN6ROCKET8detonateEPN7cocos2d8CCObjectE+0x14c> @ imm = #-0x1998
  3be1ec:      	mov	r3, r0
  3be1ee:      	mov	r2, r3
  3be1f0:      	strb.w	r2, [sp, #0x1c]
  3be1f4:      	ubfx	r2, r3, #0x8, #0x8
  3be1f8:      	strb.w	r2, [sp, #0x1d]
  3be1fc:      	ubfx	r3, r3, #0x10, #0x8
  3be200:      	strb.w	r3, [sp, #0x1e]
  3be204:      	add	r3, sp, #0x1c
  3be206:      	mov	r0, r5
  3be208:      	mov	r1, r3
  3be20a:      	blx	r6
  3be20c:      	b	0x3be24a <_ZN5Radar10updateStepEf+0x4da> @ imm = #0x3a
  3be20e:      	ldr	r0, [sp, #0x2c]
  3be210:      	bl	0x3bd81c <_ZN10ArrowAlert9getSpriteEv> @ imm = #-0x9f8
  3be214:      	mov	r5, r0
  3be216:      	ldr	r3, [r5]
  3be218:      	add.w	r3, r3, #0x1bc
  3be21c:      	ldr	r6, [r3]
  3be21e:      	movs	r0, #0xff
  3be220:      	movs	r1, #0x0
  3be222:      	movs	r2, #0x0
  3be224:      	bl	0x3bc854 <_ZN6ROCKET8detonateEPN7cocos2d8CCObjectE+0x14c> @ imm = #-0x19d4
  3be228:      	mov	r3, r0
  3be22a:      	mov	r2, r3
  3be22c:      	strb.w	r2, [sp, #0x1c]
  3be230:      	ubfx	r2, r3, #0x8, #0x8
  3be234:      	strb.w	r2, [sp, #0x1d]
  3be238:      	ubfx	r3, r3, #0x10, #0x8
  3be23c:      	strb.w	r3, [sp, #0x1e]
  3be240:      	add	r3, sp, #0x1c
  3be242:      	mov	r0, r5
  3be244:      	mov	r1, r3
  3be246:      	blx	r6
  3be248:      	b	0x3be24a <_ZN5Radar10updateStepEf+0x4da> @ imm = #-0x2
  3be24a:      	add	r3, sp, #0x20
  3be24c:      	mov	r0, r3
  3be24e:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3f76c2
  3be252:      	ldr	r3, [sp, #0x28]
  3be254:      	str	r3, [sp, #0x24]
  3be256:      	ldr	r3, [sp, #0x28]
  3be258:      	cmp	r3, #0x0
  3be25a:      	beq	0x3be264 <_ZN5Radar10updateStepEf+0x4f4> @ imm = #0x6
  3be25c:      	ldr	r3, [sp, #0x28]
  3be25e:      	ldr.w	r3, [r3, #0x110]
  3be262:      	b	0x3be266 <_ZN5Radar10updateStepEf+0x4f6> @ imm = #0x0
  3be264:      	movs	r3, #0x0
  3be266:      	str	r3, [sp, #0x28]
  3be268:      	ldr	r3, [sp, #0x24]
  3be26a:      	cmp	r3, #0x0
  3be26c:      	bne.w	0x3bddde <_ZN5Radar10updateStepEf+0x6e> @ imm = #-0x492
  3be270:      	b	0x3be294 <_ZN5Radar10updateStepEf+0x524> @ imm = #0x20
// Radar::updateStep  ghidra=0x3ce294-0x3ce29b  elf=0x3be294-0x3be29b  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  3be294:      	add	sp, #0xb0
  3be296:      	vpop	{d8}
  3be29a:      	pop	{r4, r5, r6, pc}
