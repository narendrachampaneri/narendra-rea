// TrainingStage::runFireLesson  ghidra=0x419ee0-0x41a2bd  elf=0x409ee0-0x40a2bd  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  409ee0:      	push	{r4, r5, lr}
  409ee2:      	sub	sp, #0x5c
  409ee4:      	str	r0, [sp, #0x4]
  409ee6:      	str	r1, [sp]
  409ee8:      	ldr	r3, [sp, #0x4]
  409eea:      	vldr	s14, [r3, #408]
  409eee:      	vldr	s15, [sp]
  409ef2:      	vadd.f32	s15, s14, s15
  409ef6:      	ldr	r3, [sp, #0x4]
  409ef8:      	vstr	s15, [r3, #408]
  409efc:      	ldr	r3, [sp, #0x4]
  409efe:      	ldr.w	r3, [r3, #0x178]
  409f02:      	ldr	r3, [r3]
  409f04:      	add.w	r3, r3, #0x1f8
  409f08:      	ldr	r3, [r3]
  409f0a:      	ldr	r2, [sp, #0x4]
  409f0c:      	ldr.w	r2, [r2, #0x178]
  409f10:      	mov	r0, r2
  409f12:      	ldr	r2, [pc, #0x3b8]        @ 0x40a2cc <_ZN13TrainingStage13runFireLessonEf+0x3ec>
  409f14:      	add	r2, pc
  409f16:      	mov	r1, r2
  409f18:      	blx	r3
  409f1a:      	movs	r3, #0x1
  409f1c:      	str	r3, [sp, #0xc]
  409f1e:      	ldr	r3, [sp, #0x4]
  409f20:      	ldr.w	r3, [r3, #0x10c]
  409f24:      	ldr.w	r3, [r3, #0xf4]
  409f28:      	ldr.w	r3, [r3, #0xec]
  409f2c:      	ldr	r3, [r3]
  409f2e:      	adds	r3, #0x90
  409f30:      	ldr	r3, [r3]
  409f32:      	ldr	r2, [sp, #0x4]
  409f34:      	ldr.w	r2, [r2, #0x10c]
  409f38:      	ldr.w	r2, [r2, #0xf4]
  409f3c:      	ldr.w	r2, [r2, #0xec]
  409f40:      	mov	r0, r2
  409f42:      	movs	r1, #0x0
  409f44:      	blx	r3
  409f46:      	ldr	r3, [sp, #0x4]
  409f48:      	ldr.w	r3, [r3, #0x10c]
  409f4c:      	ldr.w	r3, [r3, #0xf4]
  409f50:      	movs	r2, #0x0
  409f52:      	strb.w	r2, [r3, #0x12e]
  409f56:      	ldr	r3, [sp, #0x4]
  409f58:      	ldrb.w	r3, [r3, #0x194]
  409f5c:      	cmp	r3, #0x0
  409f5e:      	beq.w	0x40a066 <_ZN13TrainingStage13runFireLessonEf+0x186> @ imm = #0x104
  409f62:      	ldr	r3, [sp, #0x4]
  409f64:      	vldr	s15, [r3, #412]
  409f68:      	vcvt.f64.f32	d6, s15
  409f6c:      	vmov.f64	d7, #5.000000e-01
  409f70:      	vsub.f64	d6, d6, d7
  409f74:      	vmov.f64	d7, #1.000000e+01
  409f78:      	vcmpe.f64	d6, d7
  409f7c:      	vmrs	APSR_nzcv, fpscr
  409f80:      	ble	0x409f9a <_ZN13TrainingStage13runFireLessonEf+0xba> @ imm = #0x16
  409f82:      	ldr	r3, [sp, #0x4]
  409f84:      	vldr	s15, [r3, #412]
  409f88:      	vcvt.f64.f32	d6, s15
  409f8c:      	vmov.f64	d7, #5.000000e-01
  409f90:      	vsub.f64	d7, d6, d7
  409f94:      	vcvt.f32.f64	s15, d7
  409f98:      	b	0x409f9e <_ZN13TrainingStage13runFireLessonEf+0xbe> @ imm = #0x2
  409f9a:      	vmov.f32	s15, #1.000000e+01
  409f9e:      	ldr	r3, [sp, #0x4]
  409fa0:      	vstr	s15, [r3, #412]
  409fa4:      	movs	r3, #0x3
  409fa6:      	str	r3, [sp, #0xc]
  409fa8:      	ldr	r3, [sp, #0x4]
  409faa:      	vldr	s14, [r3, #412]
  409fae:      	vmov.f32	s15, #1.000000e+01
  409fb2:      	vcmp.f32	s14, s15
  409fb6:      	vmrs	APSR_nzcv, fpscr
  409fba:      	bne	0x40a03c <_ZN13TrainingStage13runFireLessonEf+0x15c> @ imm = #0x7e
  409fbc:      	ldr	r3, [sp, #0x4]
  409fbe:      	vldr	s14, [r3, #416]
  409fc2:      	ldr	r3, [sp, #0xc]
  409fc4:      	vmov	s15, r3
  409fc8:      	vcvt.f32.s32	s13, s15
  409fcc:      	vldr	s15, [sp]
  409fd0:      	vmul.f32	s15, s13, s15
  409fd4:      	vadd.f32	s15, s14, s15
  409fd8:      	ldr	r3, [sp, #0x4]
  409fda:      	vstr	s15, [r3, #416]
  409fde:      	ldr	r3, [sp, #0x4]
  409fe0:      	ldr.w	r3, [r3, #0x178]
  409fe4:      	ldr	r3, [r3]
  409fe6:      	add.w	r3, r3, #0x1f8
  409fea:      	ldr	r3, [r3]
  409fec:      	ldr	r2, [sp, #0x4]
  409fee:      	ldr.w	r2, [r2, #0x178]
  409ff2:      	mov	r0, r2
  409ff4:      	ldr	r2, [pc, #0x2d8]        @ 0x40a2d0 <_ZN13TrainingStage13runFireLessonEf+0x3f0>
  409ff6:      	add	r2, pc
  409ff8:      	mov	r1, r2
  409ffa:      	blx	r3
  409ffc:      	ldr	r3, [sp, #0x4]
  409ffe:      	ldr.w	r3, [r3, #0x178]
  40a002:      	ldr	r3, [r3]
  40a004:      	add.w	r3, r3, #0x1bc
  40a008:      	ldr	r4, [r3]
  40a00a:      	ldr	r3, [sp, #0x4]
  40a00c:      	ldr.w	r3, [r3, #0x178]
  40a010:      	mov	r5, r3
  40a012:      	movs	r0, #0xff
  40a014:      	movs	r1, #0xff
  40a016:      	movs	r2, #0x0
  40a018:      	bl	0x408458 <_ZN6Tracer14checkCollisionEv+0x3cc> @ imm = #-0x1bc4
  40a01c:      	mov	r3, r0
  40a01e:      	mov	r2, r3
  40a020:      	strb.w	r2, [sp, #0x48]
  40a024:      	ubfx	r2, r3, #0x8, #0x8
  40a028:      	strb.w	r2, [sp, #0x49]
  40a02c:      	ubfx	r3, r3, #0x10, #0x8
  40a030:      	strb.w	r3, [sp, #0x4a]
  40a034:      	add	r3, sp, #0x48
  40a036:      	mov	r0, r5
  40a038:      	mov	r1, r3
  40a03a:      	blx	r4
  40a03c:      	ldr	r3, [sp, #0x4]
  40a03e:      	vldr	s14, [r3, #408]
  40a042:      	vmov.f32	s15, #4.000000e+00
  40a046:      	vcmpe.f32	s14, s15
  40a04a:      	vmrs	APSR_nzcv, fpscr
  40a04e:      	ble.w	0x40a19a <_ZN13TrainingStage13runFireLessonEf+0x2ba> @ imm = #0x148
  40a052:      	ldr	r3, [sp, #0x4]
  40a054:      	movs	r2, #0x0
  40a056:      	strb.w	r2, [r3, #0x194]
  40a05a:      	ldr	r3, [sp, #0x4]
  40a05c:      	mov.w	r2, #0x0
  40a060:      	str.w	r2, [r3, #0x198]
  40a064:      	b	0x40a19a <_ZN13TrainingStage13runFireLessonEf+0x2ba> @ imm = #0x132
  40a066:      	ldr	r3, [sp, #0x4]
  40a068:      	vldr	s15, [r3, #412]
  40a06c:      	vcvt.f64.f32	d6, s15
  40a070:      	vmov.f64	d7, #5.000000e-01
  40a074:      	vadd.f64	d6, d6, d7
  40a078:      	vldr	d7, [pc, #580]          @ 0x40a2c0 <_ZN13TrainingStage13runFireLessonEf+0x3e0>
  40a07c:      	vcmpe.f64	d6, d7
  40a080:      	vmrs	APSR_nzcv, fpscr
  40a084:      	bpl	0x40a09e <_ZN13TrainingStage13runFireLessonEf+0x1be> @ imm = #0x16
  40a086:      	ldr	r3, [sp, #0x4]
  40a088:      	vldr	s15, [r3, #412]
  40a08c:      	vcvt.f64.f32	d6, s15
  40a090:      	vmov.f64	d7, #5.000000e-01
  40a094:      	vadd.f64	d7, d6, d7
  40a098:      	vcvt.f32.f64	s15, d7
  40a09c:      	b	0x40a0a2 <_ZN13TrainingStage13runFireLessonEf+0x1c2> @ imm = #0x2
  40a09e:      	vldr	s15, [pc, #552]         @ 0x40a2c8 <_ZN13TrainingStage13runFireLessonEf+0x3e8>
  40a0a2:      	ldr	r3, [sp, #0x4]
  40a0a4:      	vstr	s15, [r3, #412]
  40a0a8:      	ldr	r3, [sp, #0x4]
  40a0aa:      	vldr	s14, [r3, #412]
  40a0ae:      	vldr	s15, [pc, #536]         @ 0x40a2c8 <_ZN13TrainingStage13runFireLessonEf+0x3e8>
  40a0b2:      	vcmp.f32	s14, s15
  40a0b6:      	vmrs	APSR_nzcv, fpscr
  40a0ba:      	bne	0x40a174 <_ZN13TrainingStage13runFireLessonEf+0x294> @ imm = #0xb6
  40a0bc:      	ldr	r3, [sp, #0x4]
  40a0be:      	ldr.w	r3, [r3, #0x178]
  40a0c2:      	ldr	r3, [r3]
  40a0c4:      	add.w	r3, r3, #0x1f8
  40a0c8:      	ldr	r3, [r3]
  40a0ca:      	ldr	r2, [sp, #0x4]
  40a0cc:      	ldr.w	r2, [r2, #0x178]
  40a0d0:      	mov	r0, r2
  40a0d2:      	ldr	r2, [pc, #0x200]        @ 0x40a2d4 <_ZN13TrainingStage13runFireLessonEf+0x3f4>
  40a0d4:      	add	r2, pc
  40a0d6:      	mov	r1, r2
  40a0d8:      	blx	r3
  40a0da:      	ldr	r3, [sp, #0x4]
  40a0dc:      	ldr.w	r3, [r3, #0x178]
  40a0e0:      	ldr	r3, [r3]
  40a0e2:      	add.w	r3, r3, #0x1bc
  40a0e6:      	ldr	r4, [r3]
  40a0e8:      	ldr	r3, [sp, #0x4]
  40a0ea:      	ldr.w	r3, [r3, #0x178]
  40a0ee:      	mov	r5, r3
  40a0f0:      	movs	r0, #0xff
  40a0f2:      	movs	r1, #0x0
  40a0f4:      	movs	r2, #0x0
  40a0f6:      	bl	0x408458 <_ZN6Tracer14checkCollisionEv+0x3cc> @ imm = #-0x1ca2
  40a0fa:      	mov	r3, r0
  40a0fc:      	mov	r2, r3
  40a0fe:      	strb.w	r2, [sp, #0x48]
  40a102:      	ubfx	r2, r3, #0x8, #0x8
  40a106:      	strb.w	r2, [sp, #0x49]
  40a10a:      	ubfx	r3, r3, #0x10, #0x8
  40a10e:      	strb.w	r3, [sp, #0x4a]
  40a112:      	add	r3, sp, #0x48
  40a114:      	mov	r0, r5
  40a116:      	mov	r1, r3
  40a118:      	blx	r4
  40a11a:      	ldr	r3, [sp, #0x4]
  40a11c:      	vldr	s14, [r3, #416]
  40a120:      	ldr	r3, [sp, #0xc]
  40a122:      	vmov	s15, r3
  40a126:      	vcvt.f32.s32	s13, s15
  40a12a:      	vldr	s15, [sp]
  40a12e:      	vmul.f32	s15, s13, s15
  40a132:      	vadd.f32	s15, s14, s15
  40a136:      	ldr	r3, [sp, #0x4]
  40a138:      	vstr	s15, [r3, #416]
  40a13c:      	ldr	r3, [sp, #0x4]
  40a13e:      	ldr.w	r3, [r3, #0x10c]
  40a142:      	ldr.w	r3, [r3, #0xf4]
  40a146:      	ldr.w	r3, [r3, #0xec]
  40a14a:      	ldr	r3, [r3]
  40a14c:      	adds	r3, #0x90
  40a14e:      	ldr	r3, [r3]
  40a150:      	ldr	r2, [sp, #0x4]
  40a152:      	ldr.w	r2, [r2, #0x10c]
  40a156:      	ldr.w	r2, [r2, #0xf4]
  40a15a:      	ldr.w	r2, [r2, #0xec]
  40a15e:      	mov	r0, r2
  40a160:      	movs	r1, #0x1
  40a162:      	blx	r3
  40a164:      	ldr	r3, [sp, #0x4]
  40a166:      	ldr.w	r3, [r3, #0x10c]
  40a16a:      	ldr.w	r3, [r3, #0xf4]
  40a16e:      	movs	r2, #0x1
  40a170:      	strb.w	r2, [r3, #0x12e]
  40a174:      	ldr	r3, [sp, #0x4]
  40a176:      	vldr	s14, [r3, #408]
  40a17a:      	vmov.f32	s15, #3.000000e+00
  40a17e:      	vcmpe.f32	s14, s15
  40a182:      	vmrs	APSR_nzcv, fpscr
  40a186:      	ble	0x40a19a <_ZN13TrainingStage13runFireLessonEf+0x2ba> @ imm = #0x10
  40a188:      	ldr	r3, [sp, #0x4]
  40a18a:      	movs	r2, #0x1
  40a18c:      	strb.w	r2, [r3, #0x194]
  40a190:      	ldr	r3, [sp, #0x4]
  40a192:      	mov.w	r2, #0x0
  40a196:      	str.w	r2, [r3, #0x198]
  40a19a:      	ldr	r3, [sp, #0x4]
  40a19c:      	vldr	s15, [r3, #416]
  40a1a0:      	vcvt.f64.f32	d7, s15
  40a1a4:      	vmov	r0, r1, d7
  40a1a8:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x1342a4
  40a1ac:      	mov	r4, r0
  40a1ae:      	mov	r5, r1
  40a1b0:      	ldr	r3, [sp, #0x4]
  40a1b2:      	vldr	s15, [r3, #416]
  40a1b6:      	vcvt.f64.f32	d7, s15
  40a1ba:      	vmov	r0, r1, d7
  40a1be:      	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x1342ac
  40a1c2:      	mov	r2, r0
  40a1c4:      	mov	r3, r1
  40a1c6:      	add	r1, sp, #0x38
  40a1c8:      	mov	r0, r1
  40a1ca:      	vmov	d0, r4, r5
  40a1ce:      	vmov	d1, r2, r3
  40a1d2:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x1d02
  40a1d6:      	ldr	r3, [sp, #0x4]
  40a1d8:      	vldr	s15, [r3, #412]
  40a1dc:      	vcvt.f64.f32	d7, s15
  40a1e0:      	add	r3, sp, #0x18
  40a1e2:      	vldr	d5, [sp, #56]
  40a1e6:      	vldr	d6, [sp, #64]
  40a1ea:      	mov	r0, r3
  40a1ec:      	vmov.f64	d0, d5
  40a1f0:      	vmov.f64	d1, d6
  40a1f4:      	vmov.f64	d2, d7
  40a1f8:      	bl	0x4085ac <_ZN6Tracer14checkCollisionEv+0x520> @ imm = #-0x1c50
  40a1fc:      	ldr	r3, [sp, #0x4]
  40a1fe:      	ldr.w	r3, [r3, #0x10c]
  40a202:      	ldr.w	r4, [r3, #0xf4]
  40a206:      	add	r3, sp, #0x18
  40a208:      	ldm	r3, {r0, r1, r2, r3}
  40a20a:      	bl	0x408700 <_ZN6Tracer14checkCollisionEv+0x674> @ imm = #-0x1b0e
  40a20e:      	mov	r3, r0
  40a210:      	str.w	r3, [r4, #0x124]
  40a214:      	ldr	r3, [sp, #0x4]
  40a216:      	ldr.w	r3, [r3, #0x10c]
  40a21a:      	ldr.w	r3, [r3, #0xf4]
  40a21e:      	vldr	s15, [r3, #252]
  40a222:      	vcvt.f64.f32	d6, s15
  40a226:      	ldr	r3, [sp, #0x4]
  40a228:      	ldr.w	r3, [r3, #0x10c]
  40a22c:      	ldr.w	r3, [r3, #0xf4]
  40a230:      	vldr	s15, [r3, #256]
  40a234:      	vcvt.f64.f32	d7, s15
  40a238:      	add	r3, sp, #0x48
  40a23a:      	mov	r0, r3
  40a23c:      	vmov.f64	d0, d6
  40a240:      	vmov.f64	d1, d7
  40a244:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x1d74
  40a248:      	add	r3, sp, #0x28
  40a24a:      	vldr	d4, [sp, #24]
  40a24e:      	vldr	d5, [sp, #32]
  40a252:      	vldr	d6, [sp, #72]
  40a256:      	vldr	d7, [sp, #80]
  40a25a:      	mov	r0, r3
  40a25c:      	vmov.f64	d0, d4
  40a260:      	vmov.f64	d1, d5
  40a264:      	vmov.f64	d2, d6
  40a268:      	vmov.f64	d3, d7
  40a26c:      	bl	0x4084fc <_ZN6Tracer14checkCollisionEv+0x470> @ imm = #-0x1d74
  40a270:      	ldr	r3, [sp, #0x4]
  40a272:      	ldr.w	r3, [r3, #0x10c]
  40a276:      	ldr.w	r3, [r3, #0xf4]
  40a27a:      	ldr.w	r3, [r3, #0xe8]
  40a27e:      	ldr	r3, [r3]
  40a280:      	adds	r3, #0x4c
  40a282:      	ldr	r4, [r3]
  40a284:      	ldr	r3, [sp, #0x4]
  40a286:      	ldr.w	r3, [r3, #0x10c]
  40a28a:      	ldr.w	r3, [r3, #0xf4]
  40a28e:      	ldr.w	r5, [r3, #0xe8]
  40a292:      	vldr	d7, [sp, #40]
  40a296:      	vcvt.f32.f64	s13, d7
  40a29a:      	vldr	d7, [sp, #48]
  40a29e:      	vcvt.f32.f64	s15, d7
  40a2a2:      	add	r3, sp, #0x10
  40a2a4:      	mov	r0, r3
  40a2a6:      	vmov	r1, s13
  40a2aa:      	vmov	r2, s15
  40a2ae:      	bl	0x592cf0 <_ZN7cocos2d7CCPointC2Eff> @ imm = #0x188a3e
  40a2b2:      	add	r3, sp, #0x10
  40a2b4:      	mov	r0, r5
  40a2b6:      	mov	r1, r3
  40a2b8:      	blx	r4
  40a2ba:      	add	sp, #0x5c
  40a2bc:      	pop	{r4, r5, pc}
