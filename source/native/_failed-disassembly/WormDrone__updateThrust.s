// WormDrone::updateThrust  ghidra=0x42e098-0x42e2bf  elf=0x41e098-0x41e2bf  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  41e098:      	push	{r4, lr}
  41e09a:      	sub	sp, #0x80
  41e09c:      	str	r0, [sp, #0x4]
  41e09e:      	str	r1, [sp]
  41e0a0:      	ldr	r3, [sp, #0x4]
  41e0a2:      	ldrb.w	r3, [r3, #0x1d4]
  41e0a6:      	cmp	r3, #0x0
  41e0a8:      	beq	0x41e116 <_ZN9WormDrone12updateThrustEf+0x7e> @ imm = #0x6a
  41e0aa:      	ldr	r3, [sp, #0x4]
  41e0ac:      	ldr.w	r3, [r3, #0x1c0]
  41e0b0:      	mov	r0, r3
  41e0b2:      	bl	0x6d3312 <cpBodyResetForces> @ imm = #0x2b525c
  41e0b6:      	ldr	r3, [sp, #0x4]
  41e0b8:      	ldr.w	r1, [r3, #0x1c0]
  41e0bc:      	mov.w	r2, #0x0
  41e0c0:      	mov.w	r3, #0x0
  41e0c4:      	strd	r2, r3, [r1, #96]
  41e0c8:      	ldr	r3, [sp, #0x4]
  41e0ca:      	ldr.w	r4, [r3, #0x1c0]
  41e0ce:      	ldr	r3, [sp, #0x4]
  41e0d0:      	ldr	r3, [r3]
  41e0d2:      	add.w	r3, r3, #0x1f8
  41e0d6:      	ldr	r3, [r3]
  41e0d8:      	ldr	r2, [sp, #0x4]
  41e0da:      	add	r1, sp, #0x30
  41e0dc:      	mov	r0, r1
  41e0de:      	mov	r1, r2
  41e0e0:      	blx	r3
  41e0e2:      	add	r3, sp, #0x40
  41e0e4:      	vldr	d6, [sp, #48]
  41e0e8:      	vldr	d7, [sp, #56]
  41e0ec:      	mov	r0, r3
  41e0ee:      	vmov.f64	d0, d6
  41e0f2:      	vmov.f64	d1, d7
  41e0f6:      	vldr	d2, [pc, #456]          @ 0x41e2c0 <_ZN9WormDrone12updateThrustEf+0x228>
  41e0fa:      	bl	0x41c314 <_ZN13WeaponManager15getRandomWeaponEv+0x330> @ imm = #-0x1dea
  41e0fe:      	vldr	d6, [sp, #64]
  41e102:      	vldr	d7, [sp, #72]
  41e106:      	mov	r0, r4
  41e108:      	vmov.f64	d0, d6
  41e10c:      	vmov.f64	d1, d7
  41e110:      	bl	0x41c510 <_ZN13WeaponManager15getRandomWeaponEv+0x52c> @ imm = #-0x1c04
  41e114:      	b	0x41e2bc <_ZN9WormDrone12updateThrustEf+0x224> @ imm = #0x1a4
  41e116:      	ldr	r3, [sp, #0x4]
  41e118:      	ldr	r3, [r3]
  41e11a:      	add.w	r3, r3, #0x1f8
  41e11e:      	ldr	r3, [r3]
  41e120:      	ldr	r2, [sp, #0x4]
  41e122:      	add	r1, sp, #0x50
  41e124:      	mov	r0, r1
  41e126:      	mov	r1, r2
  41e128:      	blx	r3
  41e12a:      	add	r3, sp, #0x20
  41e12c:      	vldr	d6, [sp, #80]
  41e130:      	vldr	d7, [sp, #88]
  41e134:      	mov	r0, r3
  41e136:      	vmov.f64	d0, d6
  41e13a:      	vmov.f64	d1, d7
  41e13e:      	vldr	d2, [pc, #392]          @ 0x41e2c8 <_ZN9WormDrone12updateThrustEf+0x230>
  41e142:      	bl	0x41c314 <_ZN13WeaponManager15getRandomWeaponEv+0x330> @ imm = #-0x1e32
  41e146:      	ldr	r3, [sp, #0x4]
  41e148:      	ldr	r3, [r3]
  41e14a:      	add.w	r3, r3, #0x1f8
  41e14e:      	ldr	r3, [r3]
  41e150:      	ldr	r2, [sp, #0x4]
  41e152:      	add	r1, sp, #0x60
  41e154:      	mov	r0, r1
  41e156:      	mov	r1, r2
  41e158:      	blx	r3
  41e15a:      	add	r3, sp, #0x30
  41e15c:      	vldr	d6, [sp, #96]
  41e160:      	vldr	d7, [sp, #104]
  41e164:      	mov	r0, r3
  41e166:      	vmov.f64	d0, d6
  41e16a:      	vmov.f64	d1, d7
  41e16e:      	bl	0x41c3f0 <_ZN13WeaponManager15getRandomWeaponEv+0x40c> @ imm = #-0x1d82
  41e172:      	add	r3, sp, #0x20
  41e174:      	ldm	r3, {r0, r1, r2, r3}
  41e176:      	bl	0x6d70b8 <cpvlength>    @ imm = #0x2b8f3e
  41e17a:      	vmov	d7, r0, r1
  41e17e:      	vcvt.f32.f64	s15, d7
  41e182:      	vstr	s15, [sp, #12]
  41e186:      	vldr	s15, [sp, #12]
  41e18a:      	vcmp.f32	s15, #0
  41e18e:      	vmrs	APSR_nzcv, fpscr
  41e192:      	beq.w	0x41e2bc <_ZN9WormDrone12updateThrustEf+0x224> @ imm = #0x126
  41e196:      	ldr	r3, [sp, #0x4]
  41e198:      	ldr.w	r3, [r3, #0x1c0]
  41e19c:      	add	r4, sp, #0x40
  41e19e:      	adds	r3, #0x38
  41e1a0:      	ldm	r3, {r0, r1, r2, r3}
  41e1a2:      	stm.w	r4, {r0, r1, r2, r3}
  41e1a6:      	vldr	d4, [sp, #64]
  41e1aa:      	vldr	d5, [sp, #72]
  41e1ae:      	vldr	d6, [sp, #32]
  41e1b2:      	vldr	d7, [sp, #40]
  41e1b6:      	vmov.f64	d0, d4
  41e1ba:      	vmov.f64	d1, d5
  41e1be:      	vmov.f64	d2, d6
  41e1c2:      	vmov.f64	d3, d7
  41e1c6:      	bl	0x41c360 <_ZN13WeaponManager15getRandomWeaponEv+0x37c> @ imm = #-0x1e6a
  41e1ca:      	vstr	d0, [sp, #16]
  41e1ce:      	vldr	s14, [sp, #12]
  41e1d2:      	vldr	s15, [sp, #12]
  41e1d6:      	vmul.f32	s15, s14, s15
  41e1da:      	vcvt.f64.f32	d7, s15
  41e1de:      	vldr	d6, [sp, #16]
  41e1e2:      	vdiv.f64	d7, d6, d7
  41e1e6:      	vcmpe.f64	d7, #0
  41e1ea:      	vmrs	APSR_nzcv, fpscr
  41e1ee:      	bpl	0x41e1f6 <_ZN9WormDrone12updateThrustEf+0x15e> @ imm = #0x4
  41e1f0:      	vldr	d7, [pc, #220]          @ 0x41e2d0 <_ZN9WormDrone12updateThrustEf+0x238>
  41e1f4:      	b	0x41e20e <_ZN9WormDrone12updateThrustEf+0x176> @ imm = #0x16
  41e1f6:      	vldr	s14, [sp, #12]
  41e1fa:      	vldr	s15, [sp, #12]
  41e1fe:      	vmul.f32	s15, s14, s15
  41e202:      	vcvt.f64.f32	d7, s15
  41e206:      	vldr	d6, [sp, #16]
  41e20a:      	vdiv.f64	d7, d6, d7
  41e20e:      	vstr	d7, [sp, #24]
  41e212:      	vldr	s15, [sp, #12]
  41e216:      	vcvt.f64.f32	d6, s15
  41e21a:      	vldr	d7, [sp, #24]
  41e21e:      	vsub.f64	d6, d6, d7
  41e222:      	vldr	d7, [pc, #180]          @ 0x41e2d8 <_ZN9WormDrone12updateThrustEf+0x240>
  41e226:      	vcmpe.f64	d6, d7
  41e22a:      	vmrs	APSR_nzcv, fpscr
  41e22e:      	bpl	0x41e236 <_ZN9WormDrone12updateThrustEf+0x19e> @ imm = #0x4
  41e230:      	vldr	d7, [pc, #164]          @ 0x41e2d8 <_ZN9WormDrone12updateThrustEf+0x240>
  41e234:      	b	0x41e246 <_ZN9WormDrone12updateThrustEf+0x1ae> @ imm = #0xe
  41e236:      	vldr	s15, [sp, #12]
  41e23a:      	vcvt.f64.f32	d6, s15
  41e23e:      	vldr	d7, [sp, #24]
  41e242:      	vsub.f64	d7, d6, d7
  41e246:      	vstr	d7, [sp, #24]
  41e24a:      	ldr	r3, [sp, #0x4]
  41e24c:      	ldr.w	r4, [r3, #0x1c0]
  41e250:      	vldr	s15, [sp]
  41e254:      	vcvt.f64.f32	d6, s15
  41e258:      	vmov.f64	d7, #1.500000e+00
  41e25c:      	vmul.f64	d6, d6, d7
  41e260:      	vldr	d7, [sp, #24]
  41e264:      	vmul.f64	d6, d6, d7
  41e268:      	ldr	r3, [sp, #0x4]
  41e26a:      	vldr	s15, [r3, #460]
  41e26e:      	vcvt.f64.f32	d7, s15
  41e272:      	vmul.f64	d7, d6, d7
  41e276:      	add	r3, sp, #0x70
  41e278:      	vldr	d5, [sp, #48]
  41e27c:      	vldr	d6, [sp, #56]
  41e280:      	mov	r0, r3
  41e282:      	vmov.f64	d0, d5
  41e286:      	vmov.f64	d1, d6
  41e28a:      	vmov.f64	d2, d7
  41e28e:      	bl	0x41c314 <_ZN13WeaponManager15getRandomWeaponEv+0x330> @ imm = #-0x1f7e
  41e292:      	vldr	d4, [sp, #112]
  41e296:      	vldr	d5, [sp, #120]
  41e29a:      	ldr	r3, [pc, #0x44]         @ 0x41e2e0 <_ZN9WormDrone12updateThrustEf+0x248>
  41e29c:      	add	r3, pc
  41e29e:      	vldr	d6, [r3]
  41e2a2:      	vldr	d7, [r3, #8]
  41e2a6:      	mov	r0, r4
  41e2a8:      	vmov.f64	d0, d4
  41e2ac:      	vmov.f64	d1, d5
  41e2b0:      	vmov.f64	d2, d6
  41e2b4:      	vmov.f64	d3, d7
  41e2b8:      	bl	0x41c53c <_ZN13WeaponManager15getRandomWeaponEv+0x558> @ imm = #-0x1d80
  41e2bc:      	add	sp, #0x80
  41e2be:      	pop	{r4, pc}
