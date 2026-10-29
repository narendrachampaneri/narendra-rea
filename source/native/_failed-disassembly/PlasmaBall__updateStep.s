// PlasmaBall::updateStep  ghidra=0x3a3168-0x3a31eb  elf=0x393168-0x3931eb  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  393168:      	push	{r4, r5, r6, lr}
  39316a:      	vpush	{d8}
  39316e:      	sub	sp, #0x60
  393170:      	str	r0, [sp, #0x14]
  393172:      	str	r1, [sp, #0x10]
  393174:      	ldr	r4, [pc, #0x84]         @ 0x3931fc <_ZN10PlasmaBall10updateStepEf+0x94>
  393176:      	add	r4, pc
  393178:      	ldr	r3, [sp, #0x14]
  39317a:      	vldr	s14, [r3, #260]
  39317e:      	vldr	s15, [sp, #16]
  393182:      	vadd.f32	s15, s14, s15
  393186:      	ldr	r3, [sp, #0x14]
  393188:      	vstr	s15, [r3, #260]
  39318c:      	ldr	r3, [sp, #0x14]
  39318e:      	ldr	r3, [r3]
  393190:      	adds	r3, #0x90
  393192:      	ldr	r3, [r3]
  393194:      	ldr	r2, [sp, #0x14]
  393196:      	mov	r0, r2
  393198:      	movs	r1, #0x0
  39319a:      	blx	r3
  39319c:      	ldr	r3, [sp, #0x14]
  39319e:      	vldr	s14, [r3, #260]
  3931a2:      	vmov.f32	s15, #4.000000e+00
  3931a6:      	vcmpe.f32	s14, s15
  3931aa:      	vmrs	APSR_nzcv, fpscr
  3931ae:      	ble	0x3931ba <_ZN10PlasmaBall10updateStepEf+0x52> @ imm = #0x8
  3931b0:      	ldr	r3, [sp, #0x14]
  3931b2:      	movs	r2, #0x0
  3931b4:      	strb.w	r2, [r3, #0x148]
  3931b8:      	b	0x39367a <_ZN10PlasmaBall10updateStepEf+0x512> @ imm = #0x4be
  3931ba:      	ldr	r3, [sp, #0x14]
  3931bc:      	vldr	s15, [r3, #276]
  3931c0:      	vcvt.f64.f32	d6, s15
  3931c4:      	vldr	s15, [sp, #16]
  3931c8:      	vcvt.f64.f32	d5, s15
  3931cc:      	vmov.f64	d7, #7.500000e-01
  3931d0:      	vmul.f64	d7, d5, d7
  3931d4:      	vadd.f64	d6, d6, d7
  3931d8:      	vldr	d7, [pc, #20]           @ 0x3931f0 <_ZN10PlasmaBall10updateStepEf+0x88>
  3931dc:      	vcmpe.f64	d6, d7
  3931e0:      	vmrs	APSR_nzcv, fpscr
  3931e4:      	ble	0x393200 <_ZN10PlasmaBall10updateStepEf+0x98> @ imm = #0x18
  3931e6:      	vldr	s15, [pc, #16]          @ 0x3931f8 <_ZN10PlasmaBall10updateStepEf+0x90>
  3931ea:      	b	0x393222 <_ZN10PlasmaBall10updateStepEf+0xba> @ imm = #0x34
// PlasmaBall::updateStep  ghidra=0x3a3200-0x3a34ed  elf=0x393200-0x3934ed  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  393200:      	ldr	r3, [sp, #0x14]
  393202:      	vldr	s15, [r3, #276]
  393206:      	vcvt.f64.f32	d6, s15
  39320a:      	vldr	s15, [sp, #16]
  39320e:      	vcvt.f64.f32	d5, s15
  393212:      	vmov.f64	d7, #7.500000e-01
  393216:      	vmul.f64	d7, d5, d7
  39321a:      	vadd.f64	d7, d6, d7
  39321e:      	vcvt.f32.f64	s15, d7
  393222:      	ldr	r3, [sp, #0x14]
  393224:      	vstr	s15, [r3, #276]
  393228:      	ldr	r3, [sp, #0x14]
  39322a:      	ldr.w	r3, [r3, #0xe8]
  39322e:      	ldr	r3, [r3]
  393230:      	adds	r3, #0x40
  393232:      	ldr	r5, [r3]
  393234:      	ldr	r3, [sp, #0x14]
  393236:      	ldr.w	r6, [r3, #0xe8]
  39323a:      	ldr	r3, [sp, #0x14]
  39323c:      	vldr	s15, [r3, #276]
  393240:      	vcvt.f64.f32	d8, s15
  393244:      	ldr	r3, [sp, #0x14]
  393246:      	vldr	s14, [r3, #260]
  39324a:      	vmov.f32	s15, #1.000000e+01
  39324e:      	vmul.f32	s15, s14, s15
  393252:      	vcvt.f64.f32	d7, s15
  393256:      	vmov	r0, r1, d7
  39325a:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0xbd354
  39325e:      	vmov	d6, r0, r1
  393262:      	vldr	d7, [pc, #652]          @ 0x3934f0 <_ZN10PlasmaBall10updateStepEf+0x388>
  393266:      	vmul.f64	d7, d6, d7
  39326a:      	vadd.f64	d7, d8, d7
  39326e:      	vcvt.f32.f64	s15, d7
  393272:      	mov	r0, r6
  393274:      	vmov	r1, s15
  393278:      	blx	r5
  39327a:      	ldr	r3, [sp, #0x14]
  39327c:      	ldr.w	r3, [r3, #0xe4]
  393280:      	ldr	r3, [r3]
  393282:      	adds	r3, #0x40
  393284:      	ldr	r5, [r3]
  393286:      	ldr	r3, [sp, #0x14]
  393288:      	ldr.w	r6, [r3, #0xe4]
  39328c:      	ldr	r3, [sp, #0x14]
  39328e:      	ldr.w	r3, [r3, #0xe8]
  393292:      	ldr	r3, [r3]
  393294:      	adds	r3, #0x44
  393296:      	ldr	r3, [r3]
  393298:      	ldr	r2, [sp, #0x14]
  39329a:      	ldr.w	r2, [r2, #0xe8]
  39329e:      	mov	r0, r2
  3932a0:      	blx	r3
  3932a2:      	mov	r3, r0
  3932a4:      	mov	r0, r6
  3932a6:      	mov	r1, r3
  3932a8:      	blx	r5
  3932aa:      	ldr	r3, [sp, #0x14]
  3932ac:      	vldr	s14, [r3, #272]
  3932b0:      	vldr	s15, [sp, #16]
  3932b4:      	vadd.f32	s15, s14, s15
  3932b8:      	ldr	r3, [sp, #0x14]
  3932ba:      	vstr	s15, [r3, #272]
  3932be:      	ldr	r3, [sp, #0x14]
  3932c0:      	vldr	s14, [r3, #272]
  3932c4:      	vmov.f32	s15, #2.500000e-01
  3932c8:      	vcmpe.f32	s14, s15
  3932cc:      	vmrs	APSR_nzcv, fpscr
  3932d0:      	ble	0x39331c <_ZN10PlasmaBall10updateStepEf+0x1b4> @ imm = #0x48
  3932d2:      	ldr	r3, [sp, #0x14]
  3932d4:      	mov.w	r2, #0x0
  3932d8:      	str.w	r2, [r3, #0x110]
  3932dc:      	ldr	r3, [sp, #0x14]
  3932de:      	ldr.w	r3, [r3, #0xe4]
  3932e2:      	ldr	r3, [r3]
  3932e4:      	adds	r3, #0x98
  3932e6:      	ldr	r5, [r3]
  3932e8:      	ldr	r3, [sp, #0x14]
  3932ea:      	ldr.w	r6, [r3, #0xe4]
  3932ee:      	bl	0x391cc4 <_ZN14PhysicsManager10updateStepEf+0x1e8> @ imm = #-0x162e
  3932f2:      	mov	r3, r0
  3932f4:      	vmov	s15, r3
  3932f8:      	vcvt.f32.s32	s14, s15
  3932fc:      	vldr	s15, [pc, #528]         @ 0x393510 <_ZN10PlasmaBall10updateStepEf+0x3a8>
  393300:      	vdiv.f32	s14, s14, s15
  393304:      	vmov.f32	s15, #1.000000e+00
  393308:      	vsub.f32	s14, s14, s15
  39330c:      	vldr	s15, [pc, #516]         @ 0x393514 <_ZN10PlasmaBall10updateStepEf+0x3ac>
  393310:      	vmul.f32	s15, s14, s15
  393314:      	mov	r0, r6
  393316:      	vmov	r1, s15
  39331a:      	blx	r5
  39331c:      	ldr	r3, [sp, #0x14]
  39331e:      	vldr	s14, [r3, #268]
  393322:      	vldr	s15, [sp, #16]
  393326:      	vadd.f32	s15, s14, s15
  39332a:      	ldr	r3, [sp, #0x14]
  39332c:      	vstr	s15, [r3, #268]
  393330:      	ldr	r3, [sp, #0x14]
  393332:      	vldr	s15, [r3, #268]
  393336:      	vcvt.f64.f32	d6, s15
  39333a:      	vldr	d7, [pc, #444]          @ 0x3934f8 <_ZN10PlasmaBall10updateStepEf+0x390>
  39333e:      	vcmpe.f64	d6, d7
  393342:      	vmrs	APSR_nzcv, fpscr
  393346:      	ble	0x39339c <_ZN10PlasmaBall10updateStepEf+0x234> @ imm = #0x52
  393348:      	ldr	r3, [sp, #0x14]
  39334a:      	mov.w	r2, #0x0
  39334e:      	str.w	r2, [r3, #0x10c]
  393352:      	ldr	r3, [sp, #0x14]
  393354:      	ldr.w	r3, [r3, #0x144]
  393358:      	adds	r2, r3, #0x1
  39335a:      	ldr	r3, [sp, #0x14]
  39335c:      	str.w	r2, [r3, #0x144]
  393360:      	ldr	r3, [sp, #0x14]
  393362:      	ldr.w	r3, [r3, #0x144]
  393366:      	cmp	r3, #0x1
  393368:      	ble	0x393372 <_ZN10PlasmaBall10updateStepEf+0x20a> @ imm = #0x6
  39336a:      	ldr	r3, [sp, #0x14]
  39336c:      	movs	r2, #0x0
  39336e:      	str.w	r2, [r3, #0x144]
  393372:      	ldr	r3, [sp, #0x14]
  393374:      	ldr.w	r3, [r3, #0xe4]
  393378:      	ldr	r3, [r3]
  39337a:      	add.w	r3, r3, #0x208
  39337e:      	ldr	r3, [r3]
  393380:      	ldr	r2, [sp, #0x14]
  393382:      	ldr.w	r1, [r2, #0xe4]
  393386:      	ldr	r2, [sp, #0x14]
  393388:      	ldr.w	r2, [r2, #0x144]
  39338c:      	adds	r2, #0x12
  39338e:      	lsls	r2, r2, #0x4
  393390:      	ldr	r0, [sp, #0x14]
  393392:      	add	r2, r0
  393394:      	adds	r2, #0x4
  393396:      	mov	r0, r1
  393398:      	mov	r1, r2
  39339a:      	blx	r3
  39339c:      	ldr	r3, [sp, #0x14]
  39339e:      	ldr.w	r3, [r3, #0xe8]
  3933a2:      	ldr	r3, [r3]
  3933a4:      	adds	r3, #0x98
  3933a6:      	ldr	r3, [r3]
  3933a8:      	ldr	r2, [sp, #0x14]
  3933aa:      	ldr.w	r2, [r2, #0xe8]
  3933ae:      	ldr	r1, [sp, #0x14]
  3933b0:      	vldr	s14, [r1, #260]
  3933b4:      	vmov.f32	s15, #2.500000e+01
  3933b8:      	vmul.f32	s15, s14, s15
  3933bc:      	mov	r0, r2
  3933be:      	vmov	r1, s15
  3933c2:      	blx	r3
  3933c4:      	ldr	r3, [sp, #0x14]
  3933c6:      	vldr	s14, [r3, #260]
  3933ca:      	vmov.f32	s15, #3.750000e+00
  3933ce:      	vcmpe.f32	s14, s15
  3933d2:      	vmrs	APSR_nzcv, fpscr
  3933d6:      	bpl	0x3933e0 <_ZN10PlasmaBall10updateStepEf+0x278> @ imm = #0x6
  3933d8:      	ldr	r0, [sp, #0x14]
  3933da:      	ldr	r1, [sp, #0x10]
  3933dc:      	bl	0x392fc0 <_ZN10PlasmaBall11applyDamageEf> @ imm = #-0x420
  3933e0:      	ldr	r3, [sp, #0x14]
  3933e2:      	vldr	s14, [r3, #288]
  3933e6:      	vldr	s15, [sp, #16]
  3933ea:      	vadd.f32	s15, s14, s15
  3933ee:      	ldr	r3, [sp, #0x14]
  3933f0:      	vstr	s15, [r3, #288]
  3933f4:      	ldr	r3, [sp, #0x14]
  3933f6:      	vldr	s15, [r3, #288]
  3933fa:      	vcvt.f64.f32	d6, s15
  3933fe:      	vldr	d7, [pc, #256]          @ 0x393500 <_ZN10PlasmaBall10updateStepEf+0x398>
  393402:      	vcmpe.f64	d6, d7
  393406:      	vmrs	APSR_nzcv, fpscr
  39340a:      	ble	0x393474 <_ZN10PlasmaBall10updateStepEf+0x30c> @ imm = #0x66
  39340c:      	ldr	r3, [sp, #0x14]
  39340e:      	mov.w	r2, #0x0
  393412:      	str.w	r2, [r3, #0x120]
  393416:      	ldr	r3, [pc, #0x100]        @ 0x393518 <_ZN10PlasmaBall10updateStepEf+0x3b0>
  393418:      	ldr	r3, [r4, r3]
  39341a:      	ldr	r4, [r3]
  39341c:      	ldr	r3, [sp, #0x14]
  39341e:      	ldr	r3, [r3]
  393420:      	adds	r3, #0x50
  393422:      	ldr	r3, [r3]
  393424:      	ldr	r2, [sp, #0x14]
  393426:      	mov	r0, r2
  393428:      	blx	r3
  39342a:      	mov	r3, r0
  39342c:      	vldr	s15, [r3]
  393430:      	vcvt.f64.f32	d8, s15
  393434:      	ldr	r3, [sp, #0x14]
  393436:      	ldr	r3, [r3]
  393438:      	adds	r3, #0x50
  39343a:      	ldr	r3, [r3]
  39343c:      	ldr	r2, [sp, #0x14]
  39343e:      	mov	r0, r2
  393440:      	blx	r3
  393442:      	mov	r3, r0
  393444:      	vldr	s15, [r3, #4]
  393448:      	vcvt.f64.f32	d7, s15
  39344c:      	add	r3, sp, #0x30
  39344e:      	mov	r0, r3
  393450:      	vmov.f64	d0, d8
  393454:      	vmov.f64	d1, d7
  393458:      	bl	0x391d8c <_ZN14PhysicsManager10updateStepEf+0x2b0> @ imm = #-0x16d0
  39345c:      	mov	r3, sp
  39345e:      	add	r2, sp, #0x38
  393460:      	ldm.w	r2, {r0, r1}
  393464:      	stm.w	r3, {r0, r1}
  393468:      	add	r3, sp, #0x30
  39346a:      	ldm	r3, {r2, r3}
  39346c:      	mov	r0, r4
  39346e:      	movs	r1, #0x30
  393470:      	bl	0x3f7ff8 <_ZN5Sound17playSoundPositionEi6cpVect> @ imm = #0x64b84
  393474:      	ldr	r3, [sp, #0x14]
  393476:      	ldr	r3, [r3]
  393478:      	adds	r3, #0x50
  39347a:      	ldr	r3, [r3]
  39347c:      	ldr	r2, [sp, #0x14]
  39347e:      	mov	r0, r2
  393480:      	blx	r3
  393482:      	mov	r3, r0
  393484:      	vldr	s15, [r3]
  393488:      	vcvt.f64.f32	d8, s15
  39348c:      	ldr	r3, [sp, #0x14]
  39348e:      	ldr	r3, [r3]
  393490:      	adds	r3, #0x50
  393492:      	ldr	r3, [r3]
  393494:      	ldr	r2, [sp, #0x14]
  393496:      	mov	r0, r2
  393498:      	blx	r3
  39349a:      	mov	r3, r0
  39349c:      	vldr	s15, [r3, #4]
  3934a0:      	vcvt.f64.f32	d7, s15
  3934a4:      	add	r3, sp, #0x40
  3934a6:      	mov	r0, r3
  3934a8:      	vmov.f64	d0, d8
  3934ac:      	vmov.f64	d1, d7
  3934b0:      	bl	0x391d8c <_ZN14PhysicsManager10updateStepEf+0x2b0> @ imm = #-0x1728
  3934b4:      	add	r3, sp, #0x50
  3934b6:      	mov	r0, r3
  3934b8:      	vldr	d0, [pc, #76]           @ 0x393508 <_ZN10PlasmaBall10updateStepEf+0x3a0>
  3934bc:      	vldr	d1, [pc, #72]           @ 0x393508 <_ZN10PlasmaBall10updateStepEf+0x3a0>
  3934c0:      	bl	0x391d8c <_ZN14PhysicsManager10updateStepEf+0x2b0> @ imm = #-0x1738
  3934c4:      	mov	r4, sp
  3934c6:      	add	r3, sp, #0x50
  3934c8:      	ldm	r3, {r0, r1, r2, r3}
  3934ca:      	stm.w	r4, {r0, r1, r2, r3}
  3934ce:      	add	r3, sp, #0x40
  3934d0:      	ldm	r3, {r0, r1, r2, r3}
  3934d2:      	bl	0x3920a8 <_ZN14PhysicsManager10updateStepEf+0x5cc> @ imm = #-0x142e
  3934d6:      	mov	r3, r0
  3934d8:      	cmp	r3, #0x0
  3934da:      	beq	0x393520 <_ZN10PlasmaBall10updateStepEf+0x3b8> @ imm = #0x42
  3934dc:      	ldr	r3, [sp, #0x14]
  3934de:      	ldr	r3, [r3]
  3934e0:      	adds	r3, #0x90
  3934e2:      	ldr	r3, [r3]
  3934e4:      	ldr	r2, [sp, #0x14]
  3934e6:      	mov	r0, r2
  3934e8:      	movs	r1, #0x1
  3934ea:      	blx	r3
  3934ec:      	b	0x393520 <_ZN10PlasmaBall10updateStepEf+0x3b8> @ imm = #0x30
// PlasmaBall::updateStep  ghidra=0x3a3520-0x3a3681  elf=0x393520-0x393681  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  393520:      	ldr	r3, [sp, #0x14]
  393522:      	vldr	s14, [r3, #260]
  393526:      	vmov.f32	s15, #3.000000e+00
  39352a:      	vcmpe.f32	s14, s15
  39352e:      	vmrs	APSR_nzcv, fpscr
  393532:      	ble	0x393616 <_ZN10PlasmaBall10updateStepEf+0x4ae> @ imm = #0xe0
  393534:      	ldr	r3, [sp, #0x14]
  393536:      	vldr	s14, [r3, #264]
  39353a:      	vldr	s15, [sp, #16]
  39353e:      	vadd.f32	s15, s14, s15
  393542:      	ldr	r3, [sp, #0x14]
  393544:      	vstr	s15, [r3, #264]
  393548:      	ldr	r3, [sp, #0x14]
  39354a:      	ldr.w	r3, [r3, #0xe8]
  39354e:      	ldr	r3, [r3]
  393550:      	add.w	r3, r3, #0x1a4
  393554:      	ldr	r4, [r3]
  393556:      	ldr	r3, [sp, #0x14]
  393558:      	ldr.w	r5, [r3, #0xe8]
  39355c:      	ldr	r3, [sp, #0x14]
  39355e:      	ldr.w	r3, [r3, #0xe8]
  393562:      	ldr	r3, [r3]
  393564:      	add.w	r3, r3, #0x19c
  393568:      	ldr	r3, [r3]
  39356a:      	ldr	r2, [sp, #0x14]
  39356c:      	ldr.w	r2, [r2, #0xe8]
  393570:      	mov	r0, r2
  393572:      	blx	r3
  393574:      	mov	r3, r0
  393576:      	vmov	s15, r3
  39357a:      	vcvt.f32.s32	s14, s15
  39357e:      	ldr	r3, [sp, #0x14]
  393580:      	vldr	s13, [r3, #264]
  393584:      	vldr	s15, [pc, #-108]        @ 0x39351c <_ZN10PlasmaBall10updateStepEf+0x3b4>
  393588:      	vmul.f32	s15, s13, s15
  39358c:      	vsub.f32	s15, s14, s15
  393590:      	vcmpe.f32	s15, #0
  393594:      	vmrs	APSR_nzcv, fpscr
  393598:      	ble	0x3935da <_ZN10PlasmaBall10updateStepEf+0x472> @ imm = #0x3e
  39359a:      	ldr	r3, [sp, #0x14]
  39359c:      	ldr.w	r3, [r3, #0xe8]
  3935a0:      	ldr	r3, [r3]
  3935a2:      	add.w	r3, r3, #0x19c
  3935a6:      	ldr	r3, [r3]
  3935a8:      	ldr	r2, [sp, #0x14]
  3935aa:      	ldr.w	r2, [r2, #0xe8]
  3935ae:      	mov	r0, r2
  3935b0:      	blx	r3
  3935b2:      	mov	r3, r0
  3935b4:      	vmov	s15, r3
  3935b8:      	vcvt.f32.s32	s14, s15
  3935bc:      	ldr	r3, [sp, #0x14]
  3935be:      	vldr	s13, [r3, #264]
  3935c2:      	vldr	s15, [pc, #-168]        @ 0x39351c <_ZN10PlasmaBall10updateStepEf+0x3b4>
  3935c6:      	vmul.f32	s15, s13, s15
  3935ca:      	vsub.f32	s15, s14, s15
  3935ce:      	vcvt.u32.f32	s15, s15
  3935d2:      	vmov	r3, s15
  3935d6:      	uxtb	r3, r3
  3935d8:      	b	0x3935dc <_ZN10PlasmaBall10updateStepEf+0x474> @ imm = #0x0
  3935da:      	movs	r3, #0x0
  3935dc:      	mov	r0, r5
  3935de:      	mov	r1, r3
  3935e0:      	blx	r4
  3935e2:      	ldr	r3, [sp, #0x14]
  3935e4:      	ldr.w	r3, [r3, #0xe4]
  3935e8:      	ldr	r3, [r3]
  3935ea:      	add.w	r3, r3, #0x1a4
  3935ee:      	ldr	r4, [r3]
  3935f0:      	ldr	r3, [sp, #0x14]
  3935f2:      	ldr.w	r5, [r3, #0xe4]
  3935f6:      	ldr	r3, [sp, #0x14]
  3935f8:      	ldr.w	r3, [r3, #0xe8]
  3935fc:      	ldr	r3, [r3]
  3935fe:      	add.w	r3, r3, #0x19c
  393602:      	ldr	r3, [r3]
  393604:      	ldr	r2, [sp, #0x14]
  393606:      	ldr.w	r2, [r2, #0xe8]
  39360a:      	mov	r0, r2
  39360c:      	blx	r3
  39360e:      	mov	r3, r0
  393610:      	mov	r0, r5
  393612:      	mov	r1, r3
  393614:      	blx	r4
  393616:      	ldr	r3, [sp, #0x14]
  393618:      	ldr	r3, [r3]
  39361a:      	adds	r3, #0x4c
  39361c:      	ldr	r4, [r3]
  39361e:      	ldr	r5, [sp, #0x14]
  393620:      	ldr	r3, [sp, #0x14]
  393622:      	ldr	r3, [r3]
  393624:      	adds	r3, #0x50
  393626:      	ldr	r3, [r3]
  393628:      	ldr	r2, [sp, #0x14]
  39362a:      	mov	r0, r2
  39362c:      	blx	r3
  39362e:      	mov	r6, r0
  393630:      	ldr	r3, [sp, #0x14]
  393632:      	vldr	d7, [r3, #240]
  393636:      	vcvt.f32.f64	s13, d7
  39363a:      	ldr	r3, [sp, #0x14]
  39363c:      	vldr	d7, [r3, #248]
  393640:      	vcvt.f32.f64	s15, d7
  393644:      	add	r3, sp, #0x18
  393646:      	mov	r0, r3
  393648:      	vmov	r1, s13
  39364c:      	vmov	r2, s15
  393650:      	bl	0x592cf0 <_ZN7cocos2d7CCPointC2Eff> @ imm = #0x1ff69c
  393654:      	add	r2, sp, #0x20
  393656:      	add	r3, sp, #0x18
  393658:      	mov	r0, r2
  39365a:      	mov	r1, r3
  39365c:      	vldr	s0, [sp, #16]
  393660:      	bl	0x391d6c <_ZN14PhysicsManager10updateStepEf+0x290> @ imm = #-0x18f8
  393664:      	add	r2, sp, #0x28
  393666:      	add	r3, sp, #0x20
  393668:      	mov	r0, r2
  39366a:      	mov	r1, r6
  39366c:      	mov	r2, r3
  39366e:      	bl	0x391d2c <_ZN14PhysicsManager10updateStepEf+0x250> @ imm = #-0x1946
  393672:      	add	r3, sp, #0x28
  393674:      	mov	r0, r5
  393676:      	mov	r1, r3
  393678:      	blx	r4
  39367a:      	add	sp, #0x60
  39367c:      	vpop	{d8}
  393680:      	pop	{r4, r5, r6, pc}
