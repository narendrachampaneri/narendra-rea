// Weapon::updateRemoteWeaponStep  ghidra=0x4253e0-0x4255ad  elf=0x4153e0-0x4155ad  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  4153e0:      	push	{r4, r5, lr}
  4153e2:      	sub	sp, #0x74
  4153e4:      	str	r0, [sp, #0x4]
  4153e6:      	str	r1, [sp]
  4153e8:      	ldr	r3, [sp, #0x4]
  4153ea:      	vldr	s14, [r3, #400]
  4153ee:      	vldr	s15, [sp]
  4153f2:      	vadd.f32	s15, s14, s15
  4153f6:      	ldr	r3, [sp, #0x4]
  4153f8:      	vstr	s15, [r3, #400]
  4153fc:      	ldr	r3, [sp, #0x4]
  4153fe:      	vldr	s14, [r3, #276]
  415402:      	vldr	s15, [sp]
  415406:      	vadd.f32	s15, s14, s15
  41540a:      	ldr	r3, [sp, #0x4]
  41540c:      	vstr	s15, [r3, #276]
  415410:      	ldr	r3, [sp, #0x4]
  415412:      	ldr.w	r3, [r3, #0xe8]
  415416:      	vldr	d7, [r3, #40]
  41541a:      	vcvt.f32.f64	s13, d7
  41541e:      	ldr	r3, [sp, #0x4]
  415420:      	ldr.w	r3, [r3, #0xe8]
  415424:      	vldr	d7, [r3, #48]
  415428:      	vcvt.f32.f64	s15, d7
  41542c:      	add	r3, sp, #0x50
  41542e:      	mov	r0, r3
  415430:      	vmov	r1, s13
  415434:      	vmov	r2, s15
  415438:      	bl	0x592cf0 <_ZN7cocos2d7CCPointC2Eff> @ imm = #0x17d8b4
  41543c:      	ldr	r3, [sp, #0x4]
  41543e:      	ldr	r3, [r3]
  415440:      	adds	r3, #0x50
  415442:      	ldr	r3, [r3]
  415444:      	ldr	r2, [sp, #0x4]
  415446:      	mov	r0, r2
  415448:      	blx	r3
  41544a:      	mov	r3, r0
  41544c:      	add	r1, sp, #0x60
  41544e:      	add	r2, sp, #0x50
  415450:      	mov	r0, r1
  415452:      	mov	r1, r2
  415454:      	mov	r2, r3
  415456:      	bl	0x413ddc <_ZN3UZI9getDAMAGEEv+0x198> @ imm = #-0x167e
  41545a:      	add	r2, sp, #0x10
  41545c:      	add	r3, sp, #0x60
  41545e:      	mov	r0, r2
  415460:      	mov	r1, r3
  415462:      	vmov.f32	s0, #1.250000e-01
  415466:      	bl	0x413dfc <_ZN3UZI9getDAMAGEEv+0x1b8> @ imm = #-0x166e
  41546a:      	ldr	r3, [sp, #0x4]
  41546c:      	ldr	r3, [r3]
  41546e:      	adds	r3, #0x50
  415470:      	ldr	r3, [r3]
  415472:      	ldr	r2, [sp, #0x4]
  415474:      	mov	r0, r2
  415476:      	blx	r3
  415478:      	mov	r2, r0
  41547a:      	add	r1, sp, #0x18
  41547c:      	add	r3, sp, #0x10
  41547e:      	mov	r0, r1
  415480:      	mov	r1, r2
  415482:      	mov	r2, r3
  415484:      	bl	0x413dbc <_ZN3UZI9getDAMAGEEv+0x178> @ imm = #-0x16cc
  415488:      	ldr	r3, [sp, #0x4]
  41548a:      	ldr	r3, [r3]
  41548c:      	adds	r3, #0x4c
  41548e:      	ldr	r3, [r3]
  415490:      	ldr	r1, [sp, #0x4]
  415492:      	add	r2, sp, #0x18
  415494:      	mov	r0, r1
  415496:      	mov	r1, r2
  415498:      	blx	r3
  41549a:      	ldr	r3, [sp, #0x4]
  41549c:      	ldr	r3, [r3]
  41549e:      	adds	r3, #0x9c
  4154a0:      	ldr	r3, [r3]
  4154a2:      	ldr	r2, [sp, #0x4]
  4154a4:      	mov	r0, r2
  4154a6:      	blx	r3
  4154a8:      	vmov	s14, r0
  4154ac:      	vldr	s15, [pc, #272]         @ 0x4155c0 <_ZN6Weapon22updateRemoteWeaponStepEf+0x1e0>
  4154b0:      	vmul.f32	s15, s14, s15
  4154b4:      	vneg.f32	s15, s15
  4154b8:      	vstr	s15, [sp, #8]
  4154bc:      	vldr	s15, [sp, #8]
  4154c0:      	vcvt.f64.f32	d7, s15
  4154c4:      	vmov	r0, r1, d7
  4154c8:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x13f5c4
  4154cc:      	mov	r4, r0
  4154ce:      	mov	r5, r1
  4154d0:      	vldr	s15, [sp, #8]
  4154d4:      	vcvt.f64.f32	d7, s15
  4154d8:      	vmov	r0, r1, d7
  4154dc:      	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x13f5cc
  4154e0:      	mov	r2, r0
  4154e2:      	mov	r3, r1
  4154e4:      	add	r1, sp, #0x20
  4154e6:      	mov	r0, r1
  4154e8:      	vmov	d0, r4, r5
  4154ec:      	vmov	d1, r2, r3
  4154f0:      	bl	0x413ec0 <_ZN3UZI9getDAMAGEEv+0x27c> @ imm = #-0x1634
  4154f4:      	ldr	r3, [sp, #0x4]
  4154f6:      	ldr.w	r3, [r3, #0xe8]
  4154fa:      	ldrd	r2, r3, [r3, #88]
  4154fe:      	mov	r0, r2
  415500:      	mov	r1, r3
  415502:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x13f5fc
  415506:      	mov	r4, r0
  415508:      	mov	r5, r1
  41550a:      	ldr	r3, [sp, #0x4]
  41550c:      	ldr.w	r3, [r3, #0xe8]
  415510:      	ldrd	r2, r3, [r3, #88]
  415514:      	mov	r0, r2
  415516:      	mov	r1, r3
  415518:      	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x13f608
  41551c:      	mov	r2, r0
  41551e:      	mov	r3, r1
  415520:      	add	r1, sp, #0x30
  415522:      	mov	r0, r1
  415524:      	vmov	d0, r4, r5
  415528:      	vmov	d1, r2, r3
  41552c:      	bl	0x413ec0 <_ZN3UZI9getDAMAGEEv+0x27c> @ imm = #-0x1670
  415530:      	add	r3, sp, #0x50
  415532:      	vldr	d6, [sp, #32]
  415536:      	vldr	d7, [sp, #40]
  41553a:      	mov	r0, r3
  41553c:      	vmov.f64	d0, d6
  415540:      	vmov.f64	d1, d7
  415544:      	vldr	d2, [pc, #104]          @ 0x4155b0 <_ZN6Weapon22updateRemoteWeaponStepEf+0x1d0>
  415548:      	bl	0x413f40 <_ZN3UZI9getDAMAGEEv+0x2fc> @ imm = #-0x160c
  41554c:      	add	r3, sp, #0x60
  41554e:      	vldr	d6, [sp, #48]
  415552:      	vldr	d7, [sp, #56]
  415556:      	mov	r0, r3
  415558:      	vmov.f64	d0, d6
  41555c:      	vmov.f64	d1, d7
  415560:      	vldr	d2, [pc, #84]           @ 0x4155b8 <_ZN6Weapon22updateRemoteWeaponStepEf+0x1d8>
  415564:      	bl	0x413f40 <_ZN3UZI9getDAMAGEEv+0x2fc> @ imm = #-0x1628
  415568:      	add	r3, sp, #0x40
  41556a:      	vldr	d4, [sp, #80]
  41556e:      	vldr	d5, [sp, #88]
  415572:      	vldr	d6, [sp, #96]
  415576:      	vldr	d7, [sp, #104]
  41557a:      	mov	r0, r3
  41557c:      	vmov.f64	d0, d4
  415580:      	vmov.f64	d1, d5
  415584:      	vmov.f64	d2, d6
  415588:      	vmov.f64	d3, d7
  41558c:      	bl	0x413ee8 <_ZN3UZI9getDAMAGEEv+0x2a4> @ imm = #-0x16a8
  415590:      	add	r3, sp, #0x40
  415592:      	ldm	r3, {r0, r1, r2, r3}
  415594:      	bl	0x414128 <_ZN3UZI9getDAMAGEEv+0x4e4> @ imm = #-0x1470
  415598:      	str	r0, [sp, #0xc]
  41559a:      	ldr	r3, [sp, #0x4]
  41559c:      	ldr	r3, [r3]
  41559e:      	adds	r3, #0x98
  4155a0:      	ldr	r3, [r3]
  4155a2:      	ldr	r2, [sp, #0x4]
  4155a4:      	mov	r0, r2
  4155a6:      	ldr	r1, [sp, #0xc]
  4155a8:      	blx	r3
  4155aa:      	add	sp, #0x74
  4155ac:      	pop	{r4, r5, pc}
