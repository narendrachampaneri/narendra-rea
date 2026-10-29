// Explosion::applyDamage  ghidra=0x32d018-0x32d391  elf=0x31d018-0x31d391  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  31d018:      	push	{r4, r5, r6, lr}
  31d01a:      	vpush	{d8}
  31d01e:      	sub	sp, #0x138
  31d020:      	add	r3, sp, #0x2c
  31d022:      	str	r0, [r3]
  31d024:      	add	r3, sp, #0x28
  31d026:      	str	r1, [r3]
  31d028:      	ldr	r4, [pc, #0x38c]        @ 0x31d3b8 <_ZN9Explosion11applyDamageEf+0x3a0>
  31d02a:      	add	r4, pc
  31d02c:      	add	r3, sp, #0x2c
  31d02e:      	ldr	r3, [r3]
  31d030:      	ldr	r3, [r3]
  31d032:      	adds	r3, #0x50
  31d034:      	ldr	r3, [r3]
  31d036:      	add	r2, sp, #0x2c
  31d038:      	ldr	r2, [r2]
  31d03a:      	mov	r0, r2
  31d03c:      	blx	r3
  31d03e:      	mov	r3, r0
  31d040:      	vldr	s15, [r3]
  31d044:      	vcvt.f64.f32	d8, s15
  31d048:      	add	r3, sp, #0x2c
  31d04a:      	ldr	r3, [r3]
  31d04c:      	ldr	r3, [r3]
  31d04e:      	adds	r3, #0x50
  31d050:      	ldr	r3, [r3]
  31d052:      	add	r2, sp, #0x2c
  31d054:      	ldr	r2, [r2]
  31d056:      	mov	r0, r2
  31d058:      	blx	r3
  31d05a:      	mov	r3, r0
  31d05c:      	vldr	s15, [r3, #4]
  31d060:      	vcvt.f64.f32	d7, s15
  31d064:      	add	r3, sp, #0x88
  31d066:      	mov	r0, r3
  31d068:      	vmov.f64	d0, d8
  31d06c:      	vmov.f64	d1, d7
  31d070:      	bl	0x31bb64 <_ZN12EnemyManager21onEnemyPositionUpdateEPN7cocos2d8CCObjectE+0x3fc> @ imm = #-0x1510
  31d074:      	ldr	r3, [pc, #0x344]        @ 0x31d3bc <_ZN9Explosion11applyDamageEf+0x3a4>
  31d076:      	ldr	r3, [r4, r3]
  31d078:      	ldr	r3, [r3]
  31d07a:      	ldr.w	r3, [r3, #0x138]
  31d07e:      	add	r2, sp, #0x98
  31d080:      	vldr	d4, [sp, #136]
  31d084:      	vldr	d5, [sp, #144]
  31d088:      	vldr	d6, [r3, #40]
  31d08c:      	vldr	d7, [r3, #48]
  31d090:      	mov	r0, r2
  31d092:      	vmov.f64	d0, d4
  31d096:      	vmov.f64	d1, d5
  31d09a:      	vmov.f64	d2, d6
  31d09e:      	vmov.f64	d3, d7
  31d0a2:      	bl	0x31bbe4 <_ZN12EnemyManager21onEnemyPositionUpdateEPN7cocos2d8CCObjectE+0x47c> @ imm = #-0x14c2
  31d0a6:      	add	r3, sp, #0x98
  31d0a8:      	ldm	r3, {r0, r1, r2, r3}
  31d0aa:      	bl	0x6d70b8 <cpvlength>    @ imm = #0x3ba00a
  31d0ae:      	mov	r2, r0
  31d0b0:      	mov	r3, r1
  31d0b2:      	strd	r2, r3, [sp, #64]
  31d0b6:      	add	r3, sp, #0x2c
  31d0b8:      	ldr	r3, [r3]
  31d0ba:      	ldr	r3, [r3]
  31d0bc:      	adds	r3, #0x44
  31d0be:      	ldr	r3, [r3]
  31d0c0:      	add	r2, sp, #0x2c
  31d0c2:      	ldr	r2, [r2]
  31d0c4:      	mov	r0, r2
  31d0c6:      	blx	r3
  31d0c8:      	vmov	s14, r0
  31d0cc:      	vldr	s15, [pc, #736]         @ 0x31d3b0 <_ZN9Explosion11applyDamageEf+0x398>
  31d0d0:      	vmul.f32	s15, s14, s15
  31d0d4:      	vcvt.f64.f32	d6, s15
  31d0d8:      	vldr	d7, [sp, #64]
  31d0dc:      	vcmpe.f64	d6, d7
  31d0e0:      	vmrs	APSR_nzcv, fpscr
  31d0e4:      	ite	le
  31d0e6:      	movle	r3, #0x0
  31d0e8:      	movgt	r3, #0x1
  31d0ea:      	uxtb	r3, r3
  31d0ec:      	cmp	r3, #0x0
  31d0ee:      	beq	0x31d158 <_ZN9Explosion11applyDamageEf+0x140> @ imm = #0x66
  31d0f0:      	vldr	d6, [pc, #676]          @ 0x31d398 <_ZN9Explosion11applyDamageEf+0x380>
  31d0f4:      	vldr	d7, [sp, #64]
  31d0f8:      	vsub.f64	d6, d6, d7
  31d0fc:      	vmov.f64	d7, #1.000000e+01
  31d100:      	vcmpe.f64	d6, d7
  31d104:      	vmrs	APSR_nzcv, fpscr
  31d108:      	bpl	0x31d10e <_ZN9Explosion11applyDamageEf+0xf6> @ imm = #0x2
  31d10a:      	movs	r2, #0x1
  31d10c:      	b	0x31d12a <_ZN9Explosion11applyDamageEf+0x112> @ imm = #0x1a
  31d10e:      	vldr	d6, [pc, #648]          @ 0x31d398 <_ZN9Explosion11applyDamageEf+0x380>
  31d112:      	vldr	d7, [sp, #64]
  31d116:      	vsub.f64	d6, d6, d7
  31d11a:      	vmov.f64	d7, #1.000000e+01
  31d11e:      	vdiv.f64	d7, d6, d7
  31d122:      	vcvt.s32.f64	s13, d7
  31d126:      	vmov	r2, s13
  31d12a:      	add	r3, sp, #0x38
  31d12c:      	str	r2, [r3]
  31d12e:      	bl	0x5e06b0 <_ZN7cocos2d20CCNotificationCenter24sharedNotificationCenterEv> @ imm = #0x2c357e
  31d132:      	mov	r5, r0
  31d134:      	add	r3, sp, #0x38
  31d136:      	ldr	r3, [r3]
  31d138:      	vmov	s14, r3
  31d13c:      	vcvt.f32.s32	s15, s14
  31d140:      	vmov	r0, s15
  31d144:      	bl	0x2dcc84 <_ZN7cocos2d7CCFloat6createEf> @ imm = #-0x404c4
  31d148:      	mov	r3, r0
  31d14a:      	mov	r0, r5
  31d14c:      	ldr	r2, [pc, #0x270]        @ 0x31d3c0 <_ZN9Explosion11applyDamageEf+0x3a8>
  31d14e:      	add	r2, pc
  31d150:      	mov	r1, r2
  31d152:      	mov	r2, r3
  31d154:      	bl	0x5e0b2c <_ZN7cocos2d20CCNotificationCenter16postNotificationEPKcPNS_8CCObjectE> @ imm = #0x2c39d4
  31d158:      	add	r3, sp, #0x2c
  31d15a:      	ldr	r3, [r3]
  31d15c:      	ldr	r3, [r3]
  31d15e:      	adds	r3, #0x44
  31d160:      	ldr	r3, [r3]
  31d162:      	add	r2, sp, #0x2c
  31d164:      	ldr	r2, [r2]
  31d166:      	mov	r0, r2
  31d168:      	blx	r3
  31d16a:      	vmov	s14, r0
  31d16e:      	vldr	s15, [pc, #580]         @ 0x31d3b4 <_ZN9Explosion11applyDamageEf+0x39c>
  31d172:      	vmul.f32	s15, s14, s15
  31d176:      	vcvt.f64.f32	d6, s15
  31d17a:      	vldr	d7, [sp, #64]
  31d17e:      	vcmpe.f64	d6, d7
  31d182:      	vmrs	APSR_nzcv, fpscr
  31d186:      	ite	le
  31d188:      	movle	r3, #0x0
  31d18a:      	movgt	r3, #0x1
  31d18c:      	uxtb	r3, r3
  31d18e:      	cmp	r3, #0x0
  31d190:      	beq.w	0x31d7ce <_ZN9Explosion11applyDamageEf+0x7b6> @ imm = #0x63a
  31d194:      	ldr	r3, [pc, #0x224]        @ 0x31d3bc <_ZN9Explosion11applyDamageEf+0x3a4>
  31d196:      	ldr	r3, [r4, r3]
  31d198:      	ldr	r3, [r3]
  31d19a:      	ldr	r3, [r3]
  31d19c:      	add.w	r3, r3, #0x258
  31d1a0:      	ldr	r5, [r3]
  31d1a2:      	ldr	r3, [pc, #0x218]        @ 0x31d3bc <_ZN9Explosion11applyDamageEf+0x3a4>
  31d1a4:      	ldr	r3, [r4, r3]
  31d1a6:      	ldr	r3, [r3]
  31d1a8:      	mov	r6, r3
  31d1aa:      	vldr	d6, [sp, #64]
  31d1ae:      	vldr	d7, [pc, #496]          @ 0x31d3a0 <_ZN9Explosion11applyDamageEf+0x388>
  31d1b2:      	vmul.f64	d6, d6, d7
  31d1b6:      	vldr	d7, [pc, #496]          @ 0x31d3a8 <_ZN9Explosion11applyDamageEf+0x390>
  31d1ba:      	vadd.f64	d6, d6, d7
  31d1be:      	vmov.f64	d7, #1.000000e+01
  31d1c2:      	vcmpe.f64	d6, d7
  31d1c6:      	vmrs	APSR_nzcv, fpscr
  31d1ca:      	bpl	0x31d1d2 <_ZN9Explosion11applyDamageEf+0x1ba> @ imm = #0x4
  31d1cc:      	vmov.f32	s16, #1.000000e+01
  31d1d0:      	b	0x31d1ea <_ZN9Explosion11applyDamageEf+0x1d2> @ imm = #0x16
  31d1d2:      	vldr	d6, [sp, #64]
  31d1d6:      	vldr	d7, [pc, #456]          @ 0x31d3a0 <_ZN9Explosion11applyDamageEf+0x388>
  31d1da:      	vmul.f64	d6, d6, d7
  31d1de:      	vldr	d7, [pc, #456]          @ 0x31d3a8 <_ZN9Explosion11applyDamageEf+0x390>
  31d1e2:      	vadd.f64	d7, d6, d7
  31d1e6:      	vcvt.f32.f64	s16, d7
  31d1ea:      	add	r3, sp, #0x2c
  31d1ec:      	ldr	r3, [r3]
  31d1ee:      	adds	r3, #0xf0
  31d1f0:      	add	r2, sp, #0x118
  31d1f2:      	mov	r0, r2
  31d1f4:      	mov	r1, r3
  31d1f6:      	bl	0x7b64e8 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19a38> @ imm = #0x4992ee
  31d1fa:      	add	r3, sp, #0x2c
  31d1fc:      	ldr	r3, [r3]
  31d1fe:      	ldr.w	r3, [r3, #0xf8]
  31d202:      	add	r2, sp, #0x118
  31d204:      	movs	r1, #0x1
  31d206:      	str	r1, [sp]
  31d208:      	mov	r0, r6
  31d20a:      	vmov	r1, s16
  31d20e:      	blx	r5
  31d210:      	add	r3, sp, #0x118
  31d212:      	mov	r0, r3
  31d214:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x4986fc
  31d218:      	ldr	r3, [pc, #0x1a0]        @ 0x31d3bc <_ZN9Explosion11applyDamageEf+0x3a4>
  31d21a:      	ldr	r3, [r4, r3]
  31d21c:      	ldr	r3, [r3]
  31d21e:      	ldr.w	r5, [r3, #0x138]
  31d222:      	add	r3, sp, #0x2c
  31d224:      	ldr	r3, [r3]
  31d226:      	ldr	r3, [r3]
  31d228:      	adds	r3, #0x50
  31d22a:      	ldr	r3, [r3]
  31d22c:      	add	r2, sp, #0x2c
  31d22e:      	ldr	r2, [r2]
  31d230:      	mov	r0, r2
  31d232:      	blx	r3
  31d234:      	mov	r3, r0
  31d236:      	vldr	s15, [r3]
  31d23a:      	vcvt.f64.f32	d8, s15
  31d23e:      	add	r3, sp, #0x2c
  31d240:      	ldr	r3, [r3]
  31d242:      	ldr	r3, [r3]
  31d244:      	adds	r3, #0x50
  31d246:      	ldr	r3, [r3]
  31d248:      	add	r2, sp, #0x2c
  31d24a:      	ldr	r2, [r2]
  31d24c:      	mov	r0, r2
  31d24e:      	blx	r3
  31d250:      	mov	r3, r0
  31d252:      	vldr	s15, [r3, #4]
  31d256:      	vcvt.f64.f32	d7, s15
  31d25a:      	add	r3, sp, #0xa8
  31d25c:      	mov	r0, r3
  31d25e:      	vmov.f64	d0, d8
  31d262:      	vmov.f64	d1, d7
  31d266:      	bl	0x31bb64 <_ZN12EnemyManager21onEnemyPositionUpdateEPN7cocos2d8CCObjectE+0x3fc> @ imm = #-0x1706
  31d26a:      	add	r3, sp, #0x68
  31d26c:      	vldr	d4, [r5, #40]
  31d270:      	vldr	d5, [r5, #48]
  31d274:      	vldr	d6, [sp, #168]
  31d278:      	vldr	d7, [sp, #176]
  31d27c:      	mov	r0, r3
  31d27e:      	vmov.f64	d0, d4
  31d282:      	vmov.f64	d1, d5
  31d286:      	vmov.f64	d2, d6
  31d28a:      	vmov.f64	d3, d7
  31d28e:      	bl	0x31bbe4 <_ZN12EnemyManager21onEnemyPositionUpdateEPN7cocos2d8CCObjectE+0x47c> @ imm = #-0x16ae
  31d292:      	add	r3, sp, #0x78
  31d294:      	vldr	d6, [sp, #104]
  31d298:      	vldr	d7, [sp, #112]
  31d29c:      	mov	r0, r3
  31d29e:      	vmov.f64	d0, d6
  31d2a2:      	vmov.f64	d1, d7
  31d2a6:      	bl	0x31bcd0 <_ZN12EnemyManager21onEnemyPositionUpdateEPN7cocos2d8CCObjectE+0x568> @ imm = #-0x15da
  31d2aa:      	add.w	r3, sp, #0x37
  31d2ae:      	movs	r2, #0x0
  31d2b0:      	strb	r2, [r3]
  31d2b2:      	ldr	r3, [pc, #0x108]        @ 0x31d3bc <_ZN9Explosion11applyDamageEf+0x3a4>
  31d2b4:      	ldr	r3, [r4, r3]
  31d2b6:      	ldr	r3, [r3]
  31d2b8:      	ldr.w	r5, [r3, #0x13c]
  31d2bc:      	add	r3, sp, #0x2c
  31d2be:      	ldr	r3, [r3]
  31d2c0:      	ldr	r3, [r3]
  31d2c2:      	adds	r3, #0x50
  31d2c4:      	ldr	r3, [r3]
  31d2c6:      	add	r2, sp, #0x2c
  31d2c8:      	ldr	r2, [r2]
  31d2ca:      	mov	r0, r2
  31d2cc:      	blx	r3
  31d2ce:      	mov	r3, r0
  31d2d0:      	vldr	s15, [r3]
  31d2d4:      	vcvt.f64.f32	d8, s15
  31d2d8:      	add	r3, sp, #0x2c
  31d2da:      	ldr	r3, [r3]
  31d2dc:      	ldr	r3, [r3]
  31d2de:      	adds	r3, #0x50
  31d2e0:      	ldr	r3, [r3]
  31d2e2:      	add	r2, sp, #0x2c
  31d2e4:      	ldr	r2, [r2]
  31d2e6:      	mov	r0, r2
  31d2e8:      	blx	r3
  31d2ea:      	mov	r3, r0
  31d2ec:      	vldr	s15, [r3, #4]
  31d2f0:      	vcvt.f64.f32	d7, s15
  31d2f4:      	add	r3, sp, #0xb8
  31d2f6:      	mov	r0, r3
  31d2f8:      	vmov.f64	d0, d8
  31d2fc:      	vmov.f64	d1, d7
  31d300:      	bl	0x31bb64 <_ZN12EnemyManager21onEnemyPositionUpdateEPN7cocos2d8CCObjectE+0x3fc> @ imm = #-0x17a0
  31d304:      	mov	r3, sp
  31d306:      	add	r2, sp, #0xc0
  31d308:      	ldm.w	r2, {r0, r1}
  31d30c:      	stm.w	r3, {r0, r1}
  31d310:      	add	r3, sp, #0xb8
  31d312:      	ldm	r3, {r2, r3}
  31d314:      	mov	r0, r5
  31d316:      	bl	0x6d505e <cpShapePointQuery> @ imm = #0x3b7d44
  31d31a:      	mov	r3, r0
  31d31c:      	cmp	r3, #0x0
  31d31e:      	bne	0x31d38e <_ZN9Explosion11applyDamageEf+0x376> @ imm = #0x6c
  31d320:      	ldr	r3, [pc, #0x98]         @ 0x31d3bc <_ZN9Explosion11applyDamageEf+0x3a4>
  31d322:      	ldr	r3, [r4, r3]
  31d324:      	ldr	r3, [r3]
  31d326:      	ldr.w	r5, [r3, #0x140]
  31d32a:      	add	r3, sp, #0x2c
  31d32c:      	ldr	r3, [r3]
  31d32e:      	ldr	r3, [r3]
  31d330:      	adds	r3, #0x50
  31d332:      	ldr	r3, [r3]
  31d334:      	add	r2, sp, #0x2c
  31d336:      	ldr	r2, [r2]
  31d338:      	mov	r0, r2
  31d33a:      	blx	r3
  31d33c:      	mov	r3, r0
  31d33e:      	vldr	s15, [r3]
  31d342:      	vcvt.f64.f32	d8, s15
  31d346:      	add	r3, sp, #0x2c
  31d348:      	ldr	r3, [r3]
  31d34a:      	ldr	r3, [r3]
  31d34c:      	adds	r3, #0x50
  31d34e:      	ldr	r3, [r3]
  31d350:      	add	r2, sp, #0x2c
  31d352:      	ldr	r2, [r2]
  31d354:      	mov	r0, r2
  31d356:      	blx	r3
  31d358:      	mov	r3, r0
  31d35a:      	vldr	s15, [r3, #4]
  31d35e:      	vcvt.f64.f32	d7, s15
  31d362:      	add	r3, sp, #0xc8
  31d364:      	mov	r0, r3
  31d366:      	vmov.f64	d0, d8
  31d36a:      	vmov.f64	d1, d7
  31d36e:      	bl	0x31bb64 <_ZN12EnemyManager21onEnemyPositionUpdateEPN7cocos2d8CCObjectE+0x3fc> @ imm = #-0x180e
  31d372:      	mov	r3, sp
  31d374:      	add	r2, sp, #0xd0
  31d376:      	ldm.w	r2, {r0, r1}
  31d37a:      	stm.w	r3, {r0, r1}
  31d37e:      	add	r3, sp, #0xc8
  31d380:      	ldm	r3, {r2, r3}
  31d382:      	mov	r0, r5
  31d384:      	bl	0x6d505e <cpShapePointQuery> @ imm = #0x3b7cd6
  31d388:      	mov	r3, r0
  31d38a:      	cmp	r3, #0x0
  31d38c:      	beq	0x31d3c4 <_ZN9Explosion11applyDamageEf+0x3ac> @ imm = #0x34
  31d38e:      	movs	r3, #0x1
  31d390:      	b	0x31d3c6 <_ZN9Explosion11applyDamageEf+0x3ae> @ imm = #0x32
// Explosion::applyDamage  ghidra=0x32d3c4-0x32d67b  elf=0x31d3c4-0x31d67b  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  31d3c4:      	movs	r3, #0x0
  31d3c6:      	cmp	r3, #0x0
  31d3c8:      	beq.w	0x31d508 <_ZN9Explosion11applyDamageEf+0x4f0> @ imm = #0x13c
  31d3cc:      	add	r3, sp, #0x68
  31d3ce:      	ldm	r3, {r0, r1, r2, r3}
  31d3d0:      	bl	0x6d70b8 <cpvlength>    @ imm = #0x3b9ce4
  31d3d4:      	mov	r2, r0
  31d3d6:      	mov	r3, r1
  31d3d8:      	strd	r2, r3, [sp, #72]
  31d3dc:      	vldr	d6, [sp, #72]
  31d3e0:      	vldr	d7, [pc, #668]          @ 0x31d680 <_ZN9Explosion11applyDamageEf+0x668>
  31d3e4:      	vmul.f64	d6, d6, d7
  31d3e8:      	vldr	d7, [pc, #668]          @ 0x31d688 <_ZN9Explosion11applyDamageEf+0x670>
  31d3ec:      	vadd.f64	d6, d6, d7
  31d3f0:      	vmov.f64	d7, #1.000000e+01
  31d3f4:      	vcmpe.f64	d6, d7
  31d3f8:      	vmrs	APSR_nzcv, fpscr
  31d3fc:      	bpl	0x31d404 <_ZN9Explosion11applyDamageEf+0x3ec> @ imm = #0x4
  31d3fe:      	vmov.f64	d7, #1.000000e+01
  31d402:      	b	0x31d418 <_ZN9Explosion11applyDamageEf+0x400> @ imm = #0x12
  31d404:      	vldr	d6, [sp, #72]
  31d408:      	vldr	d7, [pc, #628]          @ 0x31d680 <_ZN9Explosion11applyDamageEf+0x668>
  31d40c:      	vmul.f64	d6, d6, d7
  31d410:      	vldr	d7, [pc, #628]          @ 0x31d688 <_ZN9Explosion11applyDamageEf+0x670>
  31d414:      	vadd.f64	d7, d6, d7
  31d418:      	vstr	d7, [sp, #80]
  31d41c:      	ldr	r3, [pc, #0x280]        @ 0x31d6a0 <_ZN9Explosion11applyDamageEf+0x688>
  31d41e:      	ldr	r3, [r4, r3]
  31d420:      	ldr	r3, [r3]
  31d422:      	ldr	r3, [r3]
  31d424:      	add.w	r3, r3, #0x258
  31d428:      	ldr	r5, [r3]
  31d42a:      	ldr	r3, [pc, #0x274]        @ 0x31d6a0 <_ZN9Explosion11applyDamageEf+0x688>
  31d42c:      	ldr	r3, [r4, r3]
  31d42e:      	ldr	r3, [r3]
  31d430:      	mov	r6, r3
  31d432:      	vldr	d7, [sp, #80]
  31d436:      	vcvt.f32.f64	s16, d7
  31d43a:      	add	r3, sp, #0x2c
  31d43c:      	ldr	r3, [r3]
  31d43e:      	adds	r3, #0xf0
  31d440:      	add	r2, sp, #0x118
  31d442:      	mov	r0, r2
  31d444:      	mov	r1, r3
  31d446:      	bl	0x7b64e8 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19a38> @ imm = #0x49909e
  31d44a:      	add	r3, sp, #0x2c
  31d44c:      	ldr	r3, [r3]
  31d44e:      	ldr.w	r3, [r3, #0xf8]
  31d452:      	add	r2, sp, #0x118
  31d454:      	movs	r1, #0x1
  31d456:      	str	r1, [sp]
  31d458:      	mov	r0, r6
  31d45a:      	vmov	r1, s16
  31d45e:      	blx	r5
  31d460:      	add	r3, sp, #0x118
  31d462:      	mov	r0, r3
  31d464:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x4984ac
  31d468:      	ldr	r3, [pc, #0x234]        @ 0x31d6a0 <_ZN9Explosion11applyDamageEf+0x688>
  31d46a:      	ldr	r3, [r4, r3]
  31d46c:      	ldr	r3, [r3]
  31d46e:      	ldr.w	r5, [r3, #0x138]
  31d472:      	ldr	r3, [pc, #0x22c]        @ 0x31d6a0 <_ZN9Explosion11applyDamageEf+0x688>
  31d474:      	ldr	r3, [r4, r3]
  31d476:      	ldr	r3, [r3]
  31d478:      	ldr	r3, [r3]
  31d47a:      	add.w	r3, r3, #0x2d4
  31d47e:      	ldr	r3, [r3]
  31d480:      	ldr	r2, [pc, #0x21c]        @ 0x31d6a0 <_ZN9Explosion11applyDamageEf+0x688>
  31d482:      	ldr	r2, [r4, r2]
  31d484:      	ldr	r2, [r2]
  31d486:      	mov	r0, r2
  31d488:      	blx	r3
  31d48a:      	vmov	s14, r0
  31d48e:      	vmov.f32	s15, #1.000000e+01
  31d492:      	vmul.f32	s15, s14, s15
  31d496:      	vcvt.f64.f32	d6, s15
  31d49a:      	vldr	d5, [sp, #80]
  31d49e:      	vldr	d7, [pc, #496]          @ 0x31d690 <_ZN9Explosion11applyDamageEf+0x678>
  31d4a2:      	vcmpe.f64	d5, d7
  31d4a6:      	vmrs	APSR_nzcv, fpscr
  31d4aa:      	bpl	0x31d4b2 <_ZN9Explosion11applyDamageEf+0x49a> @ imm = #0x4
  31d4ac:      	vldr	d7, [sp, #80]
  31d4b0:      	b	0x31d4b6 <_ZN9Explosion11applyDamageEf+0x49e> @ imm = #0x2
  31d4b2:      	vldr	d7, [pc, #476]          @ 0x31d690 <_ZN9Explosion11applyDamageEf+0x678>
  31d4b6:      	vmul.f64	d7, d6, d7
  31d4ba:      	add	r3, sp, #0xd8
  31d4bc:      	vldr	d5, [sp, #120]
  31d4c0:      	vldr	d6, [sp, #128]
  31d4c4:      	mov	r0, r3
  31d4c6:      	vmov.f64	d0, d5
  31d4ca:      	vmov.f64	d1, d6
  31d4ce:      	vmov.f64	d2, d7
  31d4d2:      	bl	0x31bc3c <_ZN12EnemyManager21onEnemyPositionUpdateEPN7cocos2d8CCObjectE+0x4d4> @ imm = #-0x189a
  31d4d6:      	vldr	d4, [sp, #216]
  31d4da:      	vldr	d5, [sp, #224]
  31d4de:      	ldr	r3, [pc, #0x1c4]        @ 0x31d6a4 <_ZN9Explosion11applyDamageEf+0x68c>
  31d4e0:      	add	r3, pc
  31d4e2:      	vldr	d6, [r3]
  31d4e6:      	vldr	d7, [r3, #8]
  31d4ea:      	mov	r0, r5
  31d4ec:      	vmov.f64	d0, d4
  31d4f0:      	vmov.f64	d1, d5
  31d4f4:      	vmov.f64	d2, d6
  31d4f8:      	vmov.f64	d3, d7
  31d4fc:      	bl	0x31bd88 <_ZN12EnemyManager21onEnemyPositionUpdateEPN7cocos2d8CCObjectE+0x620> @ imm = #-0x1778
  31d500:      	add.w	r3, sp, #0x37
  31d504:      	movs	r2, #0x1
  31d506:      	strb	r2, [r3]
  31d508:      	add.w	r3, sp, #0x37
  31d50c:      	ldrb	r3, [r3]
  31d50e:      	eor	r3, r3, #0x1
  31d512:      	uxtb	r3, r3
  31d514:      	cmp	r3, #0x0
  31d516:      	beq.w	0x31d7a8 <_ZN9Explosion11applyDamageEf+0x790> @ imm = #0x28e
  31d51a:      	ldr	r3, [pc, #0x184]        @ 0x31d6a0 <_ZN9Explosion11applyDamageEf+0x688>
  31d51c:      	ldr	r3, [r4, r3]
  31d51e:      	ldr	r3, [r3]
  31d520:      	ldrb.w	r3, [r3, #0x15a]
  31d524:      	eor	r3, r3, #0x1
  31d528:      	uxtb	r3, r3
  31d52a:      	cmp	r3, #0x0
  31d52c:      	beq.w	0x31d7a8 <_ZN9Explosion11applyDamageEf+0x790> @ imm = #0x278
  31d530:      	ldr	r3, [pc, #0x174]        @ 0x31d6a8 <_ZN9Explosion11applyDamageEf+0x690>
  31d532:      	ldr	r3, [r4, r3]
  31d534:      	ldr	r6, [r3]
  31d536:      	add	r3, sp, #0x2c
  31d538:      	ldr	r3, [r3]
  31d53a:      	ldr	r3, [r3]
  31d53c:      	adds	r3, #0x50
  31d53e:      	ldr	r3, [r3]
  31d540:      	add	r2, sp, #0x2c
  31d542:      	ldr	r2, [r2]
  31d544:      	mov	r0, r2
  31d546:      	blx	r3
  31d548:      	mov	r3, r0
  31d54a:      	vldr	s15, [r3]
  31d54e:      	vcvt.f64.f32	d8, s15
  31d552:      	add	r3, sp, #0x2c
  31d554:      	ldr	r3, [r3]
  31d556:      	ldr	r3, [r3]
  31d558:      	adds	r3, #0x50
  31d55a:      	ldr	r3, [r3]
  31d55c:      	add	r2, sp, #0x2c
  31d55e:      	ldr	r2, [r2]
  31d560:      	mov	r0, r2
  31d562:      	blx	r3
  31d564:      	mov	r3, r0
  31d566:      	vldr	s15, [r3, #4]
  31d56a:      	vcvt.f64.f32	d7, s15
  31d56e:      	add	r3, sp, #0xe8
  31d570:      	mov	r0, r3
  31d572:      	vmov.f64	d0, d8
  31d576:      	vmov.f64	d1, d7
  31d57a:      	bl	0x31bb64 <_ZN12EnemyManager21onEnemyPositionUpdateEPN7cocos2d8CCObjectE+0x3fc> @ imm = #-0x1a1a
  31d57e:      	ldr	r3, [pc, #0x120]        @ 0x31d6a0 <_ZN9Explosion11applyDamageEf+0x688>
  31d580:      	ldr	r3, [r4, r3]
  31d582:      	ldr	r3, [r3]
  31d584:      	ldr.w	r3, [r3, #0x138]
  31d588:      	add	r5, sp, #0x8
  31d58a:      	adds	r3, #0x28
  31d58c:      	ldm	r3, {r0, r1, r2, r3}
  31d58e:      	stm.w	r5, {r0, r1, r2, r3}
  31d592:      	mov.w	r3, #0x118
  31d596:      	str	r3, [sp, #0x18]
  31d598:      	movs	r3, #0x0
  31d59a:      	str	r3, [sp, #0x1c]
  31d59c:      	add	r3, sp, #0x118
  31d59e:      	str	r3, [sp, #0x20]
  31d5a0:      	mov	r3, sp
  31d5a2:      	add	r2, sp, #0xf0
  31d5a4:      	ldm.w	r2, {r0, r1}
  31d5a8:      	stm.w	r3, {r0, r1}
  31d5ac:      	add	r3, sp, #0xe8
  31d5ae:      	ldm	r3, {r2, r3}
  31d5b0:      	mov	r0, r6
  31d5b2:      	bl	0x6d5f58 <cpSpaceSegmentQueryFirst> @ imm = #0x3b89a2
  31d5b6:      	mov	r3, r0
  31d5b8:      	str	r3, [sp, #0x3c]
  31d5ba:      	ldr	r3, [sp, #0x3c]
  31d5bc:      	cmp	r3, #0x0
  31d5be:      	beq.w	0x31d7a8 <_ZN9Explosion11applyDamageEf+0x790> @ imm = #0x1e6
  31d5c2:      	ldr	r3, [sp, #0x3c]
  31d5c4:      	ldr	r3, [r3, #0x5c]
  31d5c6:      	cmp	r3, #0x15
  31d5c8:      	bne.w	0x31d7a8 <_ZN9Explosion11applyDamageEf+0x790> @ imm = #0x1dc
  31d5cc:      	add	r3, sp, #0x2c
  31d5ce:      	ldr	r3, [r3]
  31d5d0:      	ldr	r3, [r3]
  31d5d2:      	adds	r3, #0x50
  31d5d4:      	ldr	r3, [r3]
  31d5d6:      	add	r2, sp, #0x2c
  31d5d8:      	ldr	r2, [r2]
  31d5da:      	mov	r0, r2
  31d5dc:      	blx	r3
  31d5de:      	mov	r3, r0
  31d5e0:      	vldr	s15, [r3]
  31d5e4:      	vcvt.f64.f32	d8, s15
  31d5e8:      	add	r3, sp, #0x2c
  31d5ea:      	ldr	r3, [r3]
  31d5ec:      	ldr	r3, [r3]
  31d5ee:      	adds	r3, #0x50
  31d5f0:      	ldr	r3, [r3]
  31d5f2:      	add	r2, sp, #0x2c
  31d5f4:      	ldr	r2, [r2]
  31d5f6:      	mov	r0, r2
  31d5f8:      	blx	r3
  31d5fa:      	mov	r3, r0
  31d5fc:      	vldr	s15, [r3, #4]
  31d600:      	vcvt.f64.f32	d7, s15
  31d604:      	add	r3, sp, #0xf8
  31d606:      	mov	r0, r3
  31d608:      	vmov.f64	d0, d8
  31d60c:      	vmov.f64	d1, d7
  31d610:      	bl	0x31bb64 <_ZN12EnemyManager21onEnemyPositionUpdateEPN7cocos2d8CCObjectE+0x3fc> @ imm = #-0x1ab0
  31d614:      	ldr	r3, [pc, #0x88]         @ 0x31d6a0 <_ZN9Explosion11applyDamageEf+0x688>
  31d616:      	ldr	r3, [r4, r3]
  31d618:      	ldr	r3, [r3]
  31d61a:      	ldr.w	r3, [r3, #0x138]
  31d61e:      	vldr	d4, [sp, #248]
  31d622:      	vldr	d5, [sp, #256]
  31d626:      	vldr	d6, [r3, #40]
  31d62a:      	vldr	d7, [r3, #48]
  31d62e:      	mov	r5, sp
  31d630:      	add	r3, sp, #0x128
  31d632:      	ldm	r3, {r0, r1, r2, r3}
  31d634:      	stm.w	r5, {r0, r1, r2, r3}
  31d638:      	add	r3, sp, #0x118
  31d63a:      	ldm	r3, {r0, r1, r2, r3}
  31d63c:      	vmov.f64	d0, d4
  31d640:      	vmov.f64	d1, d5
  31d644:      	vmov.f64	d2, d6
  31d648:      	vmov.f64	d3, d7
  31d64c:      	bl	0x31be54 <_ZN12EnemyManager21onEnemyPositionUpdateEPN7cocos2d8CCObjectE+0x6ec> @ imm = #-0x17fc
  31d650:      	vmov.f64	d7, d0
  31d654:      	vstr	d7, [sp, #88]
  31d658:      	vldr	d6, [sp, #88]
  31d65c:      	vldr	d7, [pc, #32]           @ 0x31d680 <_ZN9Explosion11applyDamageEf+0x668>
  31d660:      	vmul.f64	d6, d6, d7
  31d664:      	vldr	d7, [pc, #32]           @ 0x31d688 <_ZN9Explosion11applyDamageEf+0x670>
  31d668:      	vadd.f64	d7, d6, d7
  31d66c:      	vcmpe.f64	d7, #0
  31d670:      	vmrs	APSR_nzcv, fpscr
  31d674:      	bpl	0x31d6ac <_ZN9Explosion11applyDamageEf+0x694> @ imm = #0x34
  31d676:      	vldr	d7, [pc, #32]           @ 0x31d698 <_ZN9Explosion11applyDamageEf+0x680>
  31d67a:      	b	0x31d6c0 <_ZN9Explosion11applyDamageEf+0x6a8> @ imm = #0x42
// Explosion::applyDamage  ghidra=0x32d6ac-0x32d7a9  elf=0x31d6ac-0x31d7a9  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  31d6ac:      	vldr	d6, [sp, #88]
  31d6b0:      	vldr	d7, [pc, #292]          @ 0x31d7d8 <_ZN9Explosion11applyDamageEf+0x7c0>
  31d6b4:      	vmul.f64	d6, d6, d7
  31d6b8:      	vldr	d7, [pc, #292]          @ 0x31d7e0 <_ZN9Explosion11applyDamageEf+0x7c8>
  31d6bc:      	vadd.f64	d7, d6, d7
  31d6c0:      	vstr	d7, [sp, #96]
  31d6c4:      	ldr	r3, [pc, #0x128]        @ 0x31d7f0 <_ZN9Explosion11applyDamageEf+0x7d8>
  31d6c6:      	ldr	r3, [r4, r3]
  31d6c8:      	ldr	r3, [r3]
  31d6ca:      	ldr	r3, [r3]
  31d6cc:      	add.w	r3, r3, #0x258
  31d6d0:      	ldr	r5, [r3]
  31d6d2:      	ldr	r3, [pc, #0x11c]        @ 0x31d7f0 <_ZN9Explosion11applyDamageEf+0x7d8>
  31d6d4:      	ldr	r3, [r4, r3]
  31d6d6:      	ldr	r3, [r3]
  31d6d8:      	mov	r6, r3
  31d6da:      	vldr	d7, [sp, #96]
  31d6de:      	vcvt.f32.f64	s16, d7
  31d6e2:      	add	r3, sp, #0x2c
  31d6e4:      	ldr	r3, [r3]
  31d6e6:      	adds	r3, #0xf0
  31d6e8:      	add	r2, sp, #0x108
  31d6ea:      	mov	r0, r2
  31d6ec:      	mov	r1, r3
  31d6ee:      	bl	0x7b64e8 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19a38> @ imm = #0x498df6
  31d6f2:      	add	r3, sp, #0x2c
  31d6f4:      	ldr	r3, [r3]
  31d6f6:      	ldr.w	r3, [r3, #0xf8]
  31d6fa:      	add	r2, sp, #0x108
  31d6fc:      	movs	r1, #0x1
  31d6fe:      	str	r1, [sp]
  31d700:      	mov	r0, r6
  31d702:      	vmov	r1, s16
  31d706:      	blx	r5
  31d708:      	add	r3, sp, #0x108
  31d70a:      	mov	r0, r3
  31d70c:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x498204
  31d710:      	ldr	r3, [pc, #0xdc]         @ 0x31d7f0 <_ZN9Explosion11applyDamageEf+0x7d8>
  31d712:      	ldr	r3, [r4, r3]
  31d714:      	ldr	r3, [r3]
  31d716:      	ldr.w	r5, [r3, #0x138]
  31d71a:      	ldr	r3, [pc, #0xd4]         @ 0x31d7f0 <_ZN9Explosion11applyDamageEf+0x7d8>
  31d71c:      	ldr	r3, [r4, r3]
  31d71e:      	ldr	r3, [r3]
  31d720:      	ldr	r3, [r3]
  31d722:      	add.w	r3, r3, #0x2d4
  31d726:      	ldr	r3, [r3]
  31d728:      	ldr	r2, [pc, #0xc4]         @ 0x31d7f0 <_ZN9Explosion11applyDamageEf+0x7d8>
  31d72a:      	ldr	r2, [r4, r2]
  31d72c:      	ldr	r2, [r2]
  31d72e:      	mov	r0, r2
  31d730:      	blx	r3
  31d732:      	vmov	s14, r0
  31d736:      	vmov.f32	s15, #1.000000e+01
  31d73a:      	vmul.f32	s15, s14, s15
  31d73e:      	vcvt.f64.f32	d6, s15
  31d742:      	vldr	d5, [sp, #96]
  31d746:      	vldr	d7, [pc, #160]          @ 0x31d7e8 <_ZN9Explosion11applyDamageEf+0x7d0>
  31d74a:      	vcmpe.f64	d5, d7
  31d74e:      	vmrs	APSR_nzcv, fpscr
  31d752:      	bpl	0x31d75a <_ZN9Explosion11applyDamageEf+0x742> @ imm = #0x4
  31d754:      	vldr	d7, [sp, #96]
  31d758:      	b	0x31d75e <_ZN9Explosion11applyDamageEf+0x746> @ imm = #0x2
  31d75a:      	vldr	d7, [pc, #140]          @ 0x31d7e8 <_ZN9Explosion11applyDamageEf+0x7d0>
  31d75e:      	vmul.f64	d7, d6, d7
  31d762:      	add	r3, sp, #0x108
  31d764:      	vldr	d5, [sp, #120]
  31d768:      	vldr	d6, [sp, #128]
  31d76c:      	mov	r0, r3
  31d76e:      	vmov.f64	d0, d5
  31d772:      	vmov.f64	d1, d6
  31d776:      	vmov.f64	d2, d7
  31d77a:      	bl	0x31bc3c <_ZN12EnemyManager21onEnemyPositionUpdateEPN7cocos2d8CCObjectE+0x4d4> @ imm = #-0x1b42
  31d77e:      	vldr	d4, [sp, #264]
  31d782:      	vldr	d5, [sp, #272]
  31d786:      	ldr	r3, [pc, #0x6c]         @ 0x31d7f4 <_ZN9Explosion11applyDamageEf+0x7dc>
  31d788:      	add	r3, pc
  31d78a:      	vldr	d6, [r3]
  31d78e:      	vldr	d7, [r3, #8]
  31d792:      	mov	r0, r5
  31d794:      	vmov.f64	d0, d4
  31d798:      	vmov.f64	d1, d5
  31d79c:      	vmov.f64	d2, d6
  31d7a0:      	vmov.f64	d3, d7
  31d7a4:      	bl	0x31bd88 <_ZN12EnemyManager21onEnemyPositionUpdateEPN7cocos2d8CCObjectE+0x620> @ imm = #-0x1a20
  31d7a8:      	b	0x31d7ce <_ZN9Explosion11applyDamageEf+0x7b6> @ imm = #0x22
// Explosion::applyDamage  ghidra=0x32d7ce-0x32d7d5  elf=0x31d7ce-0x31d7d5  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  31d7ce:      	add	sp, #0x138
  31d7d0:      	vpop	{d8}
  31d7d4:      	pop	{r4, r5, r6, pc}
