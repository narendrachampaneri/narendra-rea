// TrainingStage::doLesson  ghidra=0x41a2d8-0x41a3d9  elf=0x40a2d8-0x40a3d9  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  40a2d8:      	push	{r4, r5, r6, r7, lr}
  40a2da:      	subw	sp, sp, #0x424
  40a2de:      	add	r3, sp, #0x1c
  40a2e0:      	str	r0, [r3]
  40a2e2:      	add	r3, sp, #0x18
  40a2e4:      	str	r1, [r3]
  40a2e6:      	ldr	r4, [pc, #0x1d0]        @ 0x40a4b8 <_ZN13TrainingStage8doLessonEf+0x1e0>
  40a2e8:      	add	r4, pc
  40a2ea:      	add	r1, sp, #0xe0
  40a2ec:      	mov.w	r2, #0x0
  40a2f0:      	mov.w	r3, #0x0
  40a2f4:      	strd	r2, r3, [r1]
  40a2f8:      	add	r1, sp, #0xe0
  40a2fa:      	mov.w	r2, #0x0
  40a2fe:      	mov.w	r3, #0x0
  40a302:      	strd	r2, r3, [r1, #8]
  40a306:      	ldr	r3, [pc, #0x1b4]        @ 0x40a4bc <_ZN13TrainingStage8doLessonEf+0x1e4>
  40a308:      	ldr	r3, [r4, r3]
  40a30a:      	ldr	r3, [r3]
  40a30c:      	ldr.w	r3, [r3, #0x138]
  40a310:      	vldr	d6, [r3, #40]
  40a314:      	vldr	d7, [pc, #400]          @ 0x40a4a8 <_ZN13TrainingStage8doLessonEf+0x1d0>
  40a318:      	vcmpe.f64	d6, d7
  40a31c:      	vmrs	APSR_nzcv, fpscr
  40a320:      	bpl	0x40a354 <_ZN13TrainingStage8doLessonEf+0x7c> @ imm = #0x30
  40a322:      	ldr	r3, [pc, #0x198]        @ 0x40a4bc <_ZN13TrainingStage8doLessonEf+0x1e4>
  40a324:      	ldr	r3, [r4, r3]
  40a326:      	ldr	r3, [r3]
  40a328:      	ldr.w	r5, [r3, #0x138]
  40a32c:      	ldr	r3, [pc, #0x18c]        @ 0x40a4bc <_ZN13TrainingStage8doLessonEf+0x1e4>
  40a32e:      	ldr	r3, [r4, r3]
  40a330:      	ldr	r3, [r3]
  40a332:      	ldr.w	r3, [r3, #0x138]
  40a336:      	vldr	d7, [r3, #48]
  40a33a:      	add	r3, sp, #0x8
  40a33c:      	mov	r0, r3
  40a33e:      	vldr	d0, [pc, #360]          @ 0x40a4a8 <_ZN13TrainingStage8doLessonEf+0x1d0>
  40a342:      	vmov.f64	d1, d7
  40a346:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x1e76
  40a34a:      	add	r3, sp, #0x8
  40a34c:      	adds	r5, #0x28
  40a34e:      	ldm	r3, {r0, r1, r2, r3}
  40a350:      	stm.w	r5, {r0, r1, r2, r3}
  40a354:      	ldr	r3, [pc, #0x164]        @ 0x40a4bc <_ZN13TrainingStage8doLessonEf+0x1e4>
  40a356:      	ldr	r3, [r4, r3]
  40a358:      	ldr	r3, [r3]
  40a35a:      	ldr.w	r3, [r3, #0x138]
  40a35e:      	vldr	d6, [r3, #40]
  40a362:      	vldr	d7, [pc, #332]          @ 0x40a4b0 <_ZN13TrainingStage8doLessonEf+0x1d8>
  40a366:      	vcmpe.f64	d6, d7
  40a36a:      	vmrs	APSR_nzcv, fpscr
  40a36e:      	ble	0x40a3a2 <_ZN13TrainingStage8doLessonEf+0xca> @ imm = #0x30
  40a370:      	ldr	r3, [pc, #0x148]        @ 0x40a4bc <_ZN13TrainingStage8doLessonEf+0x1e4>
  40a372:      	ldr	r3, [r4, r3]
  40a374:      	ldr	r3, [r3]
  40a376:      	ldr.w	r5, [r3, #0x138]
  40a37a:      	ldr	r3, [pc, #0x140]        @ 0x40a4bc <_ZN13TrainingStage8doLessonEf+0x1e4>
  40a37c:      	ldr	r3, [r4, r3]
  40a37e:      	ldr	r3, [r3]
  40a380:      	ldr.w	r3, [r3, #0x138]
  40a384:      	vldr	d7, [r3, #48]
  40a388:      	add	r3, sp, #0x8
  40a38a:      	mov	r0, r3
  40a38c:      	vldr	d0, [pc, #288]          @ 0x40a4b0 <_ZN13TrainingStage8doLessonEf+0x1d8>
  40a390:      	vmov.f64	d1, d7
  40a394:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x1ec4
  40a398:      	add	r3, sp, #0x8
  40a39a:      	adds	r5, #0x28
  40a39c:      	ldm	r3, {r0, r1, r2, r3}
  40a39e:      	stm.w	r5, {r0, r1, r2, r3}
  40a3a2:      	add	r3, sp, #0xd0
  40a3a4:      	movs	r2, #0x0
  40a3a6:      	str	r2, [r3]
  40a3a8:      	add	r3, sp, #0x1c
  40a3aa:      	ldr	r3, [r3]
  40a3ac:      	vldr	s14, [r3, #392]
  40a3b0:      	add	r3, sp, #0x18
  40a3b2:      	vldr	s15, [r3]
  40a3b6:      	vadd.f32	s15, s14, s15
  40a3ba:      	add	r3, sp, #0x1c
  40a3bc:      	ldr	r3, [r3]
  40a3be:      	vstr	s15, [r3, #392]
  40a3c2:      	add	r3, sp, #0x1c
  40a3c4:      	ldr	r3, [r3]
  40a3c6:      	ldr.w	r3, [r3, #0x180]
  40a3ca:      	cmp	r3, #0x32
  40a3cc:      	bhi.w	0x411f12 <_ZN13TrainingStage8doLessonEf+0x7c3a> @ imm = #0x7b42
  40a3d0:      	adr	r1, #8 <_ZN13TrainingStage8doLessonEf+0xfe>
  40a3d2:      	ldr.w	r2, [r1, r3, lsl #2]
  40a3d6:      	add	r1, r2
  40a3d8:      	bx	r1
// TrainingStage::doLesson  ghidra=0x41a4c0-0x41a7cb  elf=0x40a4c0-0x40a7cb  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  40a4c0:      	add	r3, sp, #0x1c
  40a4c2:      	ldr	r3, [r3]
  40a4c4:      	ldr.w	r3, [r3, #0x10c]
  40a4c8:      	ldr.w	r3, [r3, #0x114]
  40a4cc:      	ldr	r3, [r3]
  40a4ce:      	adds	r3, #0x90
  40a4d0:      	ldr	r3, [r3]
  40a4d2:      	add	r2, sp, #0x1c
  40a4d4:      	ldr	r2, [r2]
  40a4d6:      	ldr.w	r2, [r2, #0x10c]
  40a4da:      	ldr.w	r2, [r2, #0x114]
  40a4de:      	mov	r0, r2
  40a4e0:      	movs	r1, #0x0
  40a4e2:      	blx	r3
  40a4e4:      	add	r3, sp, #0x1c
  40a4e6:      	ldr	r3, [r3]
  40a4e8:      	ldr.w	r3, [r3, #0x174]
  40a4ec:      	ldr	r3, [r3]
  40a4ee:      	adds	r3, #0x90
  40a4f0:      	ldr	r3, [r3]
  40a4f2:      	add	r2, sp, #0x1c
  40a4f4:      	ldr	r2, [r2]
  40a4f6:      	ldr.w	r2, [r2, #0x174]
  40a4fa:      	mov	r0, r2
  40a4fc:      	movs	r1, #0x0
  40a4fe:      	blx	r3
  40a500:      	add	r3, sp, #0x1c
  40a502:      	ldr	r3, [r3]
  40a504:      	ldr.w	r3, [r3, #0x174]
  40a508:      	ldr	r3, [r3]
  40a50a:      	adds	r3, #0x38
  40a50c:      	ldr	r3, [r3]
  40a50e:      	add	r2, sp, #0x1c
  40a510:      	ldr	r2, [r2]
  40a512:      	ldr.w	r2, [r2, #0x174]
  40a516:      	mov	r0, r2
  40a518:      	mov.w	r1, #0x3f800000
  40a51c:      	blx	r3
  40a51e:      	add	r3, sp, #0x1c
  40a520:      	ldr	r3, [r3]
  40a522:      	movs	r2, #0x1
  40a524:      	strb.w	r2, [r3, #0x18c]
  40a528:      	add	r3, sp, #0x1c
  40a52a:      	ldr	r3, [r3]
  40a52c:      	ldr.w	r3, [r3, #0x17c]
  40a530:      	ldr.w	r5, [r3, #0x138]
  40a534:      	add	r3, sp, #0x8
  40a536:      	mov	r0, r3
  40a538:      	vldr	d0, [pc, #660]          @ 0x40a7d0 <_ZN13TrainingStage8doLessonEf+0x4f8>
  40a53c:      	vldr	d1, [pc, #664]          @ 0x40a7d8 <_ZN13TrainingStage8doLessonEf+0x500>
  40a540:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x2070
  40a544:      	add	r3, sp, #0x8
  40a546:      	adds	r5, #0x28
  40a548:      	ldm	r3, {r0, r1, r2, r3}
  40a54a:      	stm.w	r5, {r0, r1, r2, r3}
  40a54e:      	ldr	r3, [pc, #0x298]        @ 0x40a7e8 <_ZN13TrainingStage8doLessonEf+0x510>
  40a550:      	ldr	r3, [r4, r3]
  40a552:      	ldr	r3, [r3]
  40a554:      	ldr.w	r5, [r3, #0x138]
  40a558:      	add	r3, sp, #0x8
  40a55a:      	mov	r0, r3
  40a55c:      	vldr	d0, [pc, #640]          @ 0x40a7e0 <_ZN13TrainingStage8doLessonEf+0x508>
  40a560:      	vldr	d1, [pc, #628]          @ 0x40a7d8 <_ZN13TrainingStage8doLessonEf+0x500>
  40a564:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x2094
  40a568:      	add	r3, sp, #0x8
  40a56a:      	adds	r5, #0x28
  40a56c:      	ldm	r3, {r0, r1, r2, r3}
  40a56e:      	stm.w	r5, {r0, r1, r2, r3}
  40a572:      	add	r3, sp, #0x1c
  40a574:      	ldr	r3, [r3]
  40a576:      	ldr.w	r3, [r3, #0x180]
  40a57a:      	adds	r2, r3, #0x1
  40a57c:      	add	r3, sp, #0x1c
  40a57e:      	ldr	r3, [r3]
  40a580:      	str.w	r2, [r3, #0x180]
  40a584:      	add	r3, sp, #0x1c
  40a586:      	ldr	r3, [r3]
  40a588:      	movs	r2, #0x0
  40a58a:      	str.w	r2, [r3, #0x190]
  40a58e:      	add	r3, sp, #0x1c
  40a590:      	ldr	r3, [r3]
  40a592:      	movs	r2, #0x1
  40a594:      	strb.w	r2, [r3, #0x194]
  40a598:      	add	r3, sp, #0x1c
  40a59a:      	ldr	r3, [r3]
  40a59c:      	mov.w	r2, #0x0
  40a5a0:      	str.w	r2, [r3, #0x198]
  40a5a4:      	add	r3, sp, #0x1c
  40a5a6:      	ldr	r3, [r3]
  40a5a8:      	mov.w	r2, #0x0
  40a5ac:      	movt	r2, #0x4140
  40a5b0:      	str.w	r2, [r3, #0x19c]
  40a5b4:      	add	r3, sp, #0x1c
  40a5b6:      	ldr	r3, [r3]
  40a5b8:      	ldr.w	r3, [r3, #0x178]
  40a5bc:      	ldr	r3, [r3]
  40a5be:      	adds	r3, #0x90
  40a5c0:      	ldr	r3, [r3]
  40a5c2:      	add	r2, sp, #0x1c
  40a5c4:      	ldr	r2, [r2]
  40a5c6:      	ldr.w	r2, [r2, #0x178]
  40a5ca:      	mov	r0, r2
  40a5cc:      	movs	r1, #0x0
  40a5ce:      	blx	r3
  40a5d0:      	add	r3, sp, #0x1c
  40a5d2:      	ldr	r3, [r3]
  40a5d4:      	ldr.w	r3, [r3, #0x170]
  40a5d8:      	ldr	r3, [r3]
  40a5da:      	adds	r3, #0x90
  40a5dc:      	ldr	r3, [r3]
  40a5de:      	add	r2, sp, #0x1c
  40a5e0:      	ldr	r2, [r2]
  40a5e2:      	ldr.w	r2, [r2, #0x170]
  40a5e6:      	mov	r0, r2
  40a5e8:      	movs	r1, #0x0
  40a5ea:      	blx	r3
  40a5ec:      	add	r3, sp, #0x1c
  40a5ee:      	ldr	r3, [r3]
  40a5f0:      	ldr.w	r3, [r3, #0x10c]
  40a5f4:      	ldr.w	r3, [r3, #0xf4]
  40a5f8:      	mov	r0, r3
  40a5fa:      	movs	r1, #0x1
  40a5fc:      	bl	0x34e874 <_ZN6Joypad15disableMovementEb> @ imm = #-0xbbd8c
  40a600:      	add	r3, sp, #0x1c
  40a602:      	ldr	r3, [r3]
  40a604:      	ldr.w	r3, [r3, #0x178]
  40a608:      	ldr	r3, [r3]
  40a60a:      	add.w	r3, r3, #0x1bc
  40a60e:      	ldr	r5, [r3]
  40a610:      	add	r3, sp, #0x1c
  40a612:      	ldr	r3, [r3]
  40a614:      	ldr.w	r3, [r3, #0x178]
  40a618:      	mov	r6, r3
  40a61a:      	movs	r0, #0xff
  40a61c:      	movs	r1, #0xff
  40a61e:      	movs	r2, #0x0
  40a620:      	bl	0x408458 <_ZN6Tracer14checkCollisionEv+0x3cc> @ imm = #-0x21cc
  40a624:      	mov	r3, r0
  40a626:      	mov	r2, r3
  40a628:      	strb.w	r2, [sp, #0x410]
  40a62c:      	ubfx	r2, r3, #0x8, #0x8
  40a630:      	strb.w	r2, [sp, #0x411]
  40a634:      	ubfx	r3, r3, #0x10, #0x8
  40a638:      	strb.w	r3, [sp, #0x412]
  40a63c:      	add.w	r3, sp, #0x410
  40a640:      	mov	r0, r6
  40a642:      	mov	r1, r3
  40a644:      	blx	r5
  40a646:      	add	r3, sp, #0x1c
  40a648:      	ldr	r3, [r3]
  40a64a:      	mov.w	r2, #0x0
  40a64e:      	str.w	r2, [r3, #0x1a0]
  40a652:      	add	r3, sp, #0xc8
  40a654:      	movs	r2, #0x0
  40a656:      	str	r2, [r3]
  40a658:      	add	r3, sp, #0x1c
  40a65a:      	ldr	r3, [r3]
  40a65c:      	ldr.w	r2, [r3, #0x1a4]
  40a660:      	add	r3, sp, #0xd4
  40a662:      	ldr	r2, [r2, #0x14]
  40a664:      	str	r2, [r3]
  40a666:      	add	r3, sp, #0xcc
  40a668:      	movs	r2, #0x0
  40a66a:      	str	r2, [r3]
  40a66c:      	add	r3, sp, #0xd4
  40a66e:      	ldr	r3, [r3]
  40a670:      	cmp	r3, #0x0
  40a672:      	beq	0x40a686 <_ZN13TrainingStage8doLessonEf+0x3ae> @ imm = #0x10
  40a674:      	add	r3, sp, #0xd4
  40a676:      	ldr	r0, [r3]
  40a678:      	bl	0x593c6c <_ZN7cocos2d12CCDictionary5countEv> @ imm = #0x1895f0
  40a67c:      	mov	r3, r0
  40a67e:      	cmp	r3, #0x0
  40a680:      	beq	0x40a686 <_ZN13TrainingStage8doLessonEf+0x3ae> @ imm = #0x2
  40a682:      	movs	r3, #0x1
  40a684:      	b	0x40a688 <_ZN13TrainingStage8doLessonEf+0x3b0> @ imm = #0x0
  40a686:      	movs	r3, #0x0
  40a688:      	cmp	r3, #0x0
  40a68a:      	beq	0x40a720 <_ZN13TrainingStage8doLessonEf+0x448> @ imm = #0x92
  40a68c:      	add	r3, sp, #0xc8
  40a68e:      	add	r2, sp, #0xd4
  40a690:      	ldr	r2, [r2]
  40a692:      	ldr	r2, [r2, #0x14]
  40a694:      	str	r2, [r3]
  40a696:      	add	r3, sp, #0xd4
  40a698:      	ldr	r3, [r3]
  40a69a:      	ldr	r3, [r3, #0x14]
  40a69c:      	cmp	r3, #0x0
  40a69e:      	beq	0x40a6ac <_ZN13TrainingStage8doLessonEf+0x3d4> @ imm = #0xa
  40a6a0:      	add	r3, sp, #0xd4
  40a6a2:      	ldr	r3, [r3]
  40a6a4:      	ldr	r3, [r3, #0x14]
  40a6a6:      	ldr.w	r3, [r3, #0x110]
  40a6aa:      	b	0x40a6ae <_ZN13TrainingStage8doLessonEf+0x3d6> @ imm = #0x0
  40a6ac:      	movs	r3, #0x0
  40a6ae:      	add	r2, sp, #0xcc
  40a6b0:      	str	r3, [r2]
  40a6b2:      	b	0x40a718 <_ZN13TrainingStage8doLessonEf+0x440> @ imm = #0x62
  40a6b4:      	add	r3, sp, #0xc8
  40a6b6:      	ldr	r0, [r3]
  40a6b8:      	bl	0x2fe634 <_ZNK7cocos2d13CCDictElement9getObjectEv> @ imm = #-0x10c088
  40a6bc:      	mov	r2, r0
  40a6be:      	add	r3, sp, #0xd8
  40a6c0:      	str	r2, [r3]
  40a6c2:      	add	r3, sp, #0x1c
  40a6c4:      	ldr	r3, [r3]
  40a6c6:      	ldr.w	r5, [r3, #0x1a4]
  40a6ca:      	add	r3, sp, #0xd8
  40a6cc:      	ldr	r3, [r3]
  40a6ce:      	ldr	r3, [r3]
  40a6d0:      	add.w	r3, r3, #0x1c0
  40a6d4:      	ldr	r3, [r3]
  40a6d6:      	add.w	r1, sp, #0x410
  40a6da:      	add	r2, sp, #0xd8
  40a6dc:      	mov	r0, r1
  40a6de:      	ldr	r1, [r2]
  40a6e0:      	blx	r3
  40a6e2:      	add.w	r3, sp, #0x410
  40a6e6:      	mov	r0, r5
  40a6e8:      	mov	r1, r3
  40a6ea:      	bl	0x319de0 <_ZN12EnemyManager15removeHawkDroneESs> @ imm = #-0xf090e
  40a6ee:      	add.w	r3, sp, #0x410
  40a6f2:      	mov	r0, r3
  40a6f4:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3ab21c
  40a6f8:      	add	r3, sp, #0xc8
  40a6fa:      	add	r2, sp, #0xcc
  40a6fc:      	ldr	r2, [r2]
  40a6fe:      	str	r2, [r3]
  40a700:      	add	r3, sp, #0xcc
  40a702:      	ldr	r3, [r3]
  40a704:      	cmp	r3, #0x0
  40a706:      	beq	0x40a712 <_ZN13TrainingStage8doLessonEf+0x43a> @ imm = #0x8
  40a708:      	add	r3, sp, #0xcc
  40a70a:      	ldr	r3, [r3]
  40a70c:      	ldr.w	r3, [r3, #0x110]
  40a710:      	b	0x40a714 <_ZN13TrainingStage8doLessonEf+0x43c> @ imm = #0x0
  40a712:      	movs	r3, #0x0
  40a714:      	add	r2, sp, #0xcc
  40a716:      	str	r3, [r2]
  40a718:      	add	r3, sp, #0xc8
  40a71a:      	ldr	r3, [r3]
  40a71c:      	cmp	r3, #0x0
  40a71e:      	bne	0x40a6b4 <_ZN13TrainingStage8doLessonEf+0x3dc> @ imm = #-0x6e
  40a720:      	add	r3, sp, #0x1c
  40a722:      	ldr	r3, [r3]
  40a724:      	ldr.w	r3, [r3, #0x1a8]
  40a728:      	cmp	r3, #0x0
  40a72a:      	beq	0x40a76c <_ZN13TrainingStage8doLessonEf+0x494> @ imm = #0x3e
  40a72c:      	add	r3, sp, #0x1c
  40a72e:      	ldr	r3, [r3]
  40a730:      	ldr.w	r5, [r3, #0x1a4]
  40a734:      	add	r3, sp, #0x1c
  40a736:      	ldr	r3, [r3]
  40a738:      	ldr.w	r3, [r3, #0x1a8]
  40a73c:      	ldr	r3, [r3]
  40a73e:      	add.w	r3, r3, #0x1c0
  40a742:      	ldr	r3, [r3]
  40a744:      	add	r2, sp, #0x1c
  40a746:      	ldr	r2, [r2]
  40a748:      	ldr.w	r2, [r2, #0x1a8]
  40a74c:      	add.w	r1, sp, #0x410
  40a750:      	mov	r0, r1
  40a752:      	mov	r1, r2
  40a754:      	blx	r3
  40a756:      	add.w	r3, sp, #0x410
  40a75a:      	mov	r0, r5
  40a75c:      	mov	r1, r3
  40a75e:      	bl	0x319ed0 <_ZN12EnemyManager19removeHumanoidDroneESs> @ imm = #-0xf0892
  40a762:      	add.w	r3, sp, #0x410
  40a766:      	mov	r0, r3
  40a768:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3ab1a8
  40a76c:      	ldr	r3, [pc, #0x7c]         @ 0x40a7ec <_ZN13TrainingStage8doLessonEf+0x514>
  40a76e:      	ldr	r3, [r4, r3]
  40a770:      	ldr	r3, [r3]
  40a772:      	mov	r0, r3
  40a774:      	bl	0x3f7d08 <_ZN5Sound9stopMusicEv> @ imm = #-0x12a70
  40a778:      	ldr	r3, [pc, #0x70]         @ 0x40a7ec <_ZN13TrainingStage8doLessonEf+0x514>
  40a77a:      	ldr	r3, [r4, r3]
  40a77c:      	ldr	r4, [r3]
  40a77e:      	add.w	r3, sp, #0x400
  40a782:      	mov	r0, r3
  40a784:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x37fc6c
  40a788:      	add.w	r2, sp, #0x410
  40a78c:      	add.w	r3, sp, #0x400
  40a790:      	mov	r0, r2
  40a792:      	ldr	r2, [pc, #0x5c]         @ 0x40a7f0 <_ZN13TrainingStage8doLessonEf+0x518>
  40a794:      	add	r2, pc
  40a796:      	mov	r1, r2
  40a798:      	mov	r2, r3
  40a79a:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3ac2c2
  40a79e:      	add.w	r3, sp, #0x410
  40a7a2:      	mov	r0, r4
  40a7a4:      	mov	r1, r3
  40a7a6:      	movw	r2, #0xcccd
  40a7aa:      	movt	r2, #0x3dcc
  40a7ae:      	movs	r3, #0x1
  40a7b0:      	bl	0x3f7ca4 <_ZN5Sound13playMusicFileESsfb> @ imm = #-0x12b10
  40a7b4:      	add.w	r3, sp, #0x410
  40a7b8:      	mov	r0, r3
  40a7ba:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3ab156
  40a7be:      	add.w	r3, sp, #0x400
  40a7c2:      	mov	r0, r3
  40a7c4:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x37fc34
  40a7c8:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x7748
// TrainingStage::doLesson  ghidra=0x41a7f4-0x41ab11  elf=0x40a7f4-0x40ab11  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  40a7f4:      	add	r3, sp, #0x1c
  40a7f6:      	ldr	r3, [r3]
  40a7f8:      	ldr.w	r3, [r3, #0x17c]
  40a7fc:      	ldr	r3, [r3]
  40a7fe:      	add.w	r3, r3, #0x238
  40a802:      	ldr	r3, [r3]
  40a804:      	add	r2, sp, #0x1c
  40a806:      	ldr	r2, [r2]
  40a808:      	ldr.w	r2, [r2, #0x17c]
  40a80c:      	mov	r0, r2
  40a80e:      	mov.w	r1, #0x0
  40a812:      	movt	r1, #0x4334
  40a816:      	blx	r3
  40a818:      	ldr	r3, [pc, #0x30c]        @ 0x40ab28 <_ZN13TrainingStage8doLessonEf+0x850>
  40a81a:      	ldr	r3, [r4, r3]
  40a81c:      	ldr	r3, [r3]
  40a81e:      	ldr	r3, [r3]
  40a820:      	add.w	r3, r3, #0x2a4
  40a824:      	ldr	r3, [r3]
  40a826:      	ldr	r2, [pc, #0x300]        @ 0x40ab28 <_ZN13TrainingStage8doLessonEf+0x850>
  40a828:      	ldr	r2, [r4, r2]
  40a82a:      	ldr	r2, [r2]
  40a82c:      	mov	r0, r2
  40a82e:      	mov.w	r1, #0x0
  40a832:      	blx	r3
  40a834:      	add	r3, sp, #0x1c
  40a836:      	ldr	r3, [r3]
  40a838:      	ldr.w	r3, [r3, #0x17c]
  40a83c:      	movs	r2, #0x1
  40a83e:      	strb.w	r2, [r3, #0x11c]
  40a842:      	add	r3, sp, #0x1c
  40a844:      	ldr	r3, [r3]
  40a846:      	ldr.w	r3, [r3, #0x17c]
  40a84a:      	ldr	r3, [r3]
  40a84c:      	add.w	r3, r3, #0x230
  40a850:      	ldr	r5, [r3]
  40a852:      	add	r3, sp, #0x1c
  40a854:      	ldr	r3, [r3]
  40a856:      	ldr.w	r3, [r3, #0x17c]
  40a85a:      	mov	r6, r3
  40a85c:      	add	r3, sp, #0xf0
  40a85e:      	mov	r0, r3
  40a860:      	vmov.f64	d0, #-7.500000e-01
  40a864:      	vldr	d1, [pc, #688]          @ 0x40ab18 <_ZN13TrainingStage8doLessonEf+0x840>
  40a868:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x2398
  40a86c:      	add	r3, sp, #0xf0
  40a86e:      	mov	r2, sp
  40a870:      	add.w	r1, r3, #0x8
  40a874:      	ldm	r1, {r0, r1}
  40a876:      	stm.w	r2, {r0, r1}
  40a87a:      	ldm	r3, {r2, r3}
  40a87c:      	mov	r0, r6
  40a87e:      	blx	r5
  40a880:      	add	r3, sp, #0x1c
  40a882:      	ldr	r3, [r3]
  40a884:      	ldr.w	r3, [r3, #0x17c]
  40a888:      	ldr.w	r3, [r3, #0x138]
  40a88c:      	vldr	d6, [r3, #40]
  40a890:      	ldr	r3, [pc, #0x294]        @ 0x40ab28 <_ZN13TrainingStage8doLessonEf+0x850>
  40a892:      	ldr	r3, [r4, r3]
  40a894:      	ldr	r3, [r3]
  40a896:      	ldr.w	r3, [r3, #0x138]
  40a89a:      	vldr	d5, [r3, #40]
  40a89e:      	vldr	d7, [pc, #640]          @ 0x40ab20 <_ZN13TrainingStage8doLessonEf+0x848>
  40a8a2:      	vadd.f64	d7, d5, d7
  40a8a6:      	vcmpe.f64	d6, d7
  40a8aa:      	vmrs	APSR_nzcv, fpscr
  40a8ae:      	bmi	0x40a8b4 <_ZN13TrainingStage8doLessonEf+0x5dc> @ imm = #0x2
  40a8b0:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x7660
  40a8b4:      	add	r3, sp, #0x1c
  40a8b6:      	ldr	r3, [r3]
  40a8b8:      	ldr.w	r3, [r3, #0x17c]
  40a8bc:      	ldr	r3, [r3]
  40a8be:      	add.w	r3, r3, #0x230
  40a8c2:      	ldr	r5, [r3]
  40a8c4:      	add	r3, sp, #0x1c
  40a8c6:      	ldr	r3, [r3]
  40a8c8:      	ldr.w	r3, [r3, #0x17c]
  40a8cc:      	mov	r6, r3
  40a8ce:      	add	r3, sp, #0x100
  40a8d0:      	mov	r0, r3
  40a8d2:      	vldr	d0, [pc, #580]          @ 0x40ab18 <_ZN13TrainingStage8doLessonEf+0x840>
  40a8d6:      	vldr	d1, [pc, #576]          @ 0x40ab18 <_ZN13TrainingStage8doLessonEf+0x840>
  40a8da:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x240a
  40a8de:      	add	r3, sp, #0x100
  40a8e0:      	mov	r2, sp
  40a8e2:      	add.w	r1, r3, #0x8
  40a8e6:      	ldm	r1, {r0, r1}
  40a8e8:      	stm.w	r2, {r0, r1}
  40a8ec:      	ldm	r3, {r2, r3}
  40a8ee:      	mov	r0, r6
  40a8f0:      	blx	r5
  40a8f2:      	add	r3, sp, #0x1c
  40a8f4:      	ldr	r3, [r3]
  40a8f6:      	ldr.w	r3, [r3, #0x17c]
  40a8fa:      	movs	r2, #0x0
  40a8fc:      	strb.w	r2, [r3, #0x11c]
  40a900:      	add	r3, sp, #0x1c
  40a902:      	ldr	r3, [r3]
  40a904:      	ldr.w	r3, [r3, #0x180]
  40a908:      	adds	r2, r3, #0x1
  40a90a:      	add	r3, sp, #0x1c
  40a90c:      	ldr	r3, [r3]
  40a90e:      	str.w	r2, [r3, #0x180]
  40a912:      	add	r3, sp, #0x1c
  40a914:      	ldr	r3, [r3]
  40a916:      	mov.w	r2, #0x0
  40a91a:      	str.w	r2, [r3, #0x188]
  40a91e:      	add	r3, sp, #0x1c
  40a920:      	ldr	r3, [r3]
  40a922:      	ldr.w	r5, [r3, #0x10c]
  40a926:      	add.w	r3, sp, #0x400
  40a92a:      	mov	r0, r3
  40a92c:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x37fac4
  40a930:      	add.w	r2, sp, #0x410
  40a934:      	add.w	r3, sp, #0x400
  40a938:      	mov	r0, r2
  40a93a:      	ldr	r2, [pc, #0x1f0]        @ 0x40ab2c <_ZN13TrainingStage8doLessonEf+0x854>
  40a93c:      	add	r2, pc
  40a93e:      	mov	r1, r2
  40a940:      	mov	r2, r3
  40a942:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3ac11a
  40a946:      	movs	r0, #0x0
  40a948:      	movs	r1, #0x0
  40a94a:      	movs	r2, #0xff
  40a94c:      	bl	0x408458 <_ZN6Tracer14checkCollisionEv+0x3cc> @ imm = #-0x24f8
  40a950:      	mov	r2, r0
  40a952:      	add	r3, sp, #0x24
  40a954:      	mov	r1, r2
  40a956:      	strb	r1, [r3]
  40a958:      	ubfx	r1, r2, #0x8, #0x8
  40a95c:      	strb	r1, [r3, #0x1]
  40a95e:      	ubfx	r2, r2, #0x10, #0x8
  40a962:      	strb	r2, [r3, #0x2]
  40a964:      	add.w	r2, sp, #0x410
  40a968:      	add	r3, sp, #0x24
  40a96a:      	mov	r0, r5
  40a96c:      	mov	r1, r2
  40a96e:      	ldr	r2, [r3]
  40a970:      	movs	r3, #0x3
  40a972:      	bl	0x33d2c0 <_ZN3HUD10addMessageESsN7cocos2d10_ccColor3BEs> @ imm = #-0xcd6b6
  40a976:      	add.w	r3, sp, #0x410
  40a97a:      	mov	r0, r3
  40a97c:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3aaf94
  40a980:      	add.w	r3, sp, #0x400
  40a984:      	mov	r0, r3
  40a986:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x37fa72
  40a98a:      	ldr	r3, [pc, #0x1a4]        @ 0x40ab30 <_ZN13TrainingStage8doLessonEf+0x858>
  40a98c:      	ldr	r3, [r4, r3]
  40a98e:      	ldr	r3, [r3]
  40a990:      	mov	r0, r3
  40a992:      	movs	r1, #0x5a
  40a994:      	movs	r2, #0x1
  40a996:      	bl	0x3f7d40 <_ZN5Sound18playSoundWithVoiceEii> @ imm = #-0x12c5a
  40a99a:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x7576
  40a99e:      	add	r3, sp, #0x1c
  40a9a0:      	ldr	r3, [r3]
  40a9a2:      	ldr.w	r3, [r3, #0x17c]
  40a9a6:      	ldr	r3, [r3]
  40a9a8:      	add.w	r3, r3, #0x238
  40a9ac:      	ldr	r3, [r3]
  40a9ae:      	add	r2, sp, #0x1c
  40a9b0:      	ldr	r2, [r2]
  40a9b2:      	ldr.w	r2, [r2, #0x17c]
  40a9b6:      	mov	r0, r2
  40a9b8:      	mov.w	r1, #0x0
  40a9bc:      	movt	r1, #0x4334
  40a9c0:      	blx	r3
  40a9c2:      	ldr	r3, [pc, #0x164]        @ 0x40ab28 <_ZN13TrainingStage8doLessonEf+0x850>
  40a9c4:      	ldr	r3, [r4, r3]
  40a9c6:      	ldr	r3, [r3]
  40a9c8:      	ldr	r3, [r3]
  40a9ca:      	add.w	r3, r3, #0x2a4
  40a9ce:      	ldr	r3, [r3]
  40a9d0:      	ldr	r2, [pc, #0x154]        @ 0x40ab28 <_ZN13TrainingStage8doLessonEf+0x850>
  40a9d2:      	ldr	r2, [r4, r2]
  40a9d4:      	ldr	r2, [r2]
  40a9d6:      	mov	r0, r2
  40a9d8:      	mov.w	r1, #0x0
  40a9dc:      	blx	r3
  40a9de:      	add	r3, sp, #0x1c
  40a9e0:      	ldr	r3, [r3]
  40a9e2:      	vldr	s14, [r3, #392]
  40a9e6:      	vmov.f32	s15, #2.000000e+00
  40a9ea:      	vcmpe.f32	s14, s15
  40a9ee:      	vmrs	APSR_nzcv, fpscr
  40a9f2:      	bpl	0x40aa00 <_ZN13TrainingStage8doLessonEf+0x728> @ imm = #0xa
  40a9f4:      	add	r2, sp, #0x1c
  40a9f6:      	add	r3, sp, #0x18
  40a9f8:      	ldr	r0, [r2]
  40a9fa:      	ldr	r1, [r3]
  40a9fc:      	bl	0x409e30 <_ZN13TrainingStage11headChatterEf> @ imm = #-0xbd0
  40aa00:      	add	r3, sp, #0x1c
  40aa02:      	ldr	r3, [r3]
  40aa04:      	vldr	s14, [r3, #392]
  40aa08:      	vmov.f32	s15, #3.000000e+00
  40aa0c:      	vcmpe.f32	s14, s15
  40aa10:      	vmrs	APSR_nzcv, fpscr
  40aa14:      	bgt	0x40aa1a <_ZN13TrainingStage8doLessonEf+0x742> @ imm = #0x2
  40aa16:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x74fa
  40aa1a:      	add	r3, sp, #0x1c
  40aa1c:      	ldr	r3, [r3]
  40aa1e:      	ldr.w	r3, [r3, #0x180]
  40aa22:      	adds	r2, r3, #0x1
  40aa24:      	add	r3, sp, #0x1c
  40aa26:      	ldr	r3, [r3]
  40aa28:      	str.w	r2, [r3, #0x180]
  40aa2c:      	add	r3, sp, #0x1c
  40aa2e:      	ldr	r3, [r3]
  40aa30:      	ldr.w	r5, [r3, #0x10c]
  40aa34:      	add.w	r3, sp, #0x400
  40aa38:      	mov	r0, r3
  40aa3a:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x37f9b6
  40aa3e:      	add.w	r2, sp, #0x410
  40aa42:      	add.w	r3, sp, #0x400
  40aa46:      	mov	r0, r2
  40aa48:      	ldr	r2, [pc, #0xe8]         @ 0x40ab34 <_ZN13TrainingStage8doLessonEf+0x85c>
  40aa4a:      	add	r2, pc
  40aa4c:      	mov	r1, r2
  40aa4e:      	mov	r2, r3
  40aa50:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3ac00c
  40aa54:      	movs	r0, #0xff
  40aa56:      	movs	r1, #0xff
  40aa58:      	movs	r2, #0xff
  40aa5a:      	bl	0x408458 <_ZN6Tracer14checkCollisionEv+0x3cc> @ imm = #-0x2606
  40aa5e:      	mov	r2, r0
  40aa60:      	add	r3, sp, #0x28
  40aa62:      	mov	r1, r2
  40aa64:      	strb	r1, [r3]
  40aa66:      	ubfx	r1, r2, #0x8, #0x8
  40aa6a:      	strb	r1, [r3, #0x1]
  40aa6c:      	ubfx	r2, r2, #0x10, #0x8
  40aa70:      	strb	r2, [r3, #0x2]
  40aa72:      	add.w	r2, sp, #0x410
  40aa76:      	add	r3, sp, #0x28
  40aa78:      	mov	r0, r5
  40aa7a:      	mov	r1, r2
  40aa7c:      	ldr	r2, [r3]
  40aa7e:      	movs	r3, #0x2
  40aa80:      	bl	0x33d2c0 <_ZN3HUD10addMessageESsN7cocos2d10_ccColor3BEs> @ imm = #-0xcd7c4
  40aa84:      	add.w	r3, sp, #0x410
  40aa88:      	mov	r0, r3
  40aa8a:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3aae86
  40aa8e:      	add.w	r3, sp, #0x400
  40aa92:      	mov	r0, r3
  40aa94:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x37f964
  40aa98:      	add	r3, sp, #0x1c
  40aa9a:      	ldr	r3, [r3]
  40aa9c:      	mov.w	r2, #0x0
  40aaa0:      	str.w	r2, [r3, #0x188]
  40aaa4:      	ldr	r3, [pc, #0x88]         @ 0x40ab30 <_ZN13TrainingStage8doLessonEf+0x858>
  40aaa6:      	ldr	r3, [r4, r3]
  40aaa8:      	ldr	r3, [r3]
  40aaaa:      	mov	r0, r3
  40aaac:      	movs	r1, #0x33
  40aaae:      	movs	r2, #0x1
  40aab0:      	bl	0x3f7d40 <_ZN5Sound18playSoundWithVoiceEii> @ imm = #-0x12d74
  40aab4:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x745c
  40aab8:      	add	r3, sp, #0x1c
  40aaba:      	ldr	r3, [r3]
  40aabc:      	ldr.w	r3, [r3, #0x17c]
  40aac0:      	ldr	r3, [r3]
  40aac2:      	add.w	r3, r3, #0x238
  40aac6:      	ldr	r3, [r3]
  40aac8:      	add	r2, sp, #0x1c
  40aaca:      	ldr	r2, [r2]
  40aacc:      	ldr.w	r2, [r2, #0x17c]
  40aad0:      	mov	r0, r2
  40aad2:      	mov.w	r1, #0x0
  40aad6:      	movt	r1, #0x4334
  40aada:      	blx	r3
  40aadc:      	ldr	r3, [pc, #0x48]         @ 0x40ab28 <_ZN13TrainingStage8doLessonEf+0x850>
  40aade:      	ldr	r3, [r4, r3]
  40aae0:      	ldr	r3, [r3]
  40aae2:      	ldr	r3, [r3]
  40aae4:      	add.w	r3, r3, #0x2a4
  40aae8:      	ldr	r3, [r3]
  40aaea:      	ldr	r2, [pc, #0x3c]         @ 0x40ab28 <_ZN13TrainingStage8doLessonEf+0x850>
  40aaec:      	ldr	r2, [r4, r2]
  40aaee:      	ldr	r2, [r2]
  40aaf0:      	mov	r0, r2
  40aaf2:      	mov.w	r1, #0x0
  40aaf6:      	blx	r3
  40aaf8:      	add	r3, sp, #0x1c
  40aafa:      	ldr	r3, [r3]
  40aafc:      	vldr	s14, [r3, #392]
  40ab00:      	vmov.f32	s15, #2.500000e+00
  40ab04:      	vcmpe.f32	s14, s15
  40ab08:      	vmrs	APSR_nzcv, fpscr
  40ab0c:      	bgt	0x40ab38 <_ZN13TrainingStage8doLessonEf+0x860> @ imm = #0x28
  40ab0e:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x7402
// TrainingStage::doLesson  ghidra=0x41ab38-0x41b423  elf=0x40ab38-0x40b423  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  40ab38:      	add	r3, sp, #0x1c
  40ab3a:      	ldr	r3, [r3]
  40ab3c:      	ldr.w	r3, [r3, #0x180]
  40ab40:      	adds	r2, r3, #0x1
  40ab42:      	add	r3, sp, #0x1c
  40ab44:      	ldr	r3, [r3]
  40ab46:      	str.w	r2, [r3, #0x180]
  40ab4a:      	add	r3, sp, #0x1c
  40ab4c:      	ldr	r3, [r3]
  40ab4e:      	ldr.w	r5, [r3, #0x10c]
  40ab52:      	add.w	r3, sp, #0x400
  40ab56:      	mov	r0, r3
  40ab58:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x37f898
  40ab5c:      	add.w	r2, sp, #0x410
  40ab60:      	add.w	r3, sp, #0x400
  40ab64:      	mov	r0, r2
  40ab66:      	ldr.w	r2, [pc, #0x8c8]        @ 0x40b430 <_ZN13TrainingStage8doLessonEf+0x1158>
  40ab6a:      	add	r2, pc
  40ab6c:      	mov	r1, r2
  40ab6e:      	mov	r2, r3
  40ab70:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3abeec
  40ab74:      	movs	r0, #0x0
  40ab76:      	movs	r1, #0x0
  40ab78:      	movs	r2, #0xff
  40ab7a:      	bl	0x408458 <_ZN6Tracer14checkCollisionEv+0x3cc> @ imm = #-0x2726
  40ab7e:      	mov	r2, r0
  40ab80:      	add	r3, sp, #0x2c
  40ab82:      	mov	r1, r2
  40ab84:      	strb	r1, [r3]
  40ab86:      	ubfx	r1, r2, #0x8, #0x8
  40ab8a:      	strb	r1, [r3, #0x1]
  40ab8c:      	ubfx	r2, r2, #0x10, #0x8
  40ab90:      	strb	r2, [r3, #0x2]
  40ab92:      	add.w	r2, sp, #0x410
  40ab96:      	add	r3, sp, #0x2c
  40ab98:      	mov	r0, r5
  40ab9a:      	mov	r1, r2
  40ab9c:      	ldr	r2, [r3]
  40ab9e:      	movs	r3, #0x2
  40aba0:      	bl	0x33d2c0 <_ZN3HUD10addMessageESsN7cocos2d10_ccColor3BEs> @ imm = #-0xcd8e4
  40aba4:      	add.w	r3, sp, #0x410
  40aba8:      	mov	r0, r3
  40abaa:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3aad66
  40abae:      	add.w	r3, sp, #0x400
  40abb2:      	mov	r0, r3
  40abb4:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x37f844
  40abb8:      	add	r3, sp, #0x1c
  40abba:      	ldr	r3, [r3]
  40abbc:      	mov.w	r2, #0x0
  40abc0:      	str.w	r2, [r3, #0x188]
  40abc4:      	ldr.w	r3, [pc, #0x86c]        @ 0x40b434 <_ZN13TrainingStage8doLessonEf+0x115c>
  40abc8:      	ldr	r3, [r4, r3]
  40abca:      	ldr	r3, [r3]
  40abcc:      	mov	r0, r3
  40abce:      	movs	r1, #0x34
  40abd0:      	movs	r2, #0x1
  40abd2:      	bl	0x3f7d40 <_ZN5Sound18playSoundWithVoiceEii> @ imm = #-0x12e96
  40abd6:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x733a
  40abda:      	add	r3, sp, #0x1c
  40abdc:      	ldr	r3, [r3]
  40abde:      	ldr.w	r3, [r3, #0x17c]
  40abe2:      	ldr	r3, [r3]
  40abe4:      	add.w	r3, r3, #0x238
  40abe8:      	ldr	r3, [r3]
  40abea:      	add	r2, sp, #0x1c
  40abec:      	ldr	r2, [r2]
  40abee:      	ldr.w	r2, [r2, #0x17c]
  40abf2:      	mov	r0, r2
  40abf4:      	mov.w	r1, #0x0
  40abf8:      	movt	r1, #0x4334
  40abfc:      	blx	r3
  40abfe:      	ldr.w	r3, [pc, #0x838]        @ 0x40b438 <_ZN13TrainingStage8doLessonEf+0x1160>
  40ac02:      	ldr	r3, [r4, r3]
  40ac04:      	ldr	r3, [r3]
  40ac06:      	ldr	r3, [r3]
  40ac08:      	add.w	r3, r3, #0x2a4
  40ac0c:      	ldr	r3, [r3]
  40ac0e:      	ldr.w	r2, [pc, #0x828]        @ 0x40b438 <_ZN13TrainingStage8doLessonEf+0x1160>
  40ac12:      	ldr	r2, [r4, r2]
  40ac14:      	ldr	r2, [r2]
  40ac16:      	mov	r0, r2
  40ac18:      	mov.w	r1, #0x0
  40ac1c:      	blx	r3
  40ac1e:      	add	r3, sp, #0x1c
  40ac20:      	ldr	r3, [r3]
  40ac22:      	vldr	s14, [r3, #392]
  40ac26:      	vmov.f32	s15, #2.000000e+00
  40ac2a:      	vcmpe.f32	s14, s15
  40ac2e:      	vmrs	APSR_nzcv, fpscr
  40ac32:      	bpl	0x40ac40 <_ZN13TrainingStage8doLessonEf+0x968> @ imm = #0xa
  40ac34:      	add	r2, sp, #0x1c
  40ac36:      	add	r3, sp, #0x18
  40ac38:      	ldr	r0, [r2]
  40ac3a:      	ldr	r1, [r3]
  40ac3c:      	bl	0x409e30 <_ZN13TrainingStage11headChatterEf> @ imm = #-0xe10
  40ac40:      	add	r3, sp, #0x1c
  40ac42:      	ldr	r3, [r3]
  40ac44:      	vldr	s14, [r3, #392]
  40ac48:      	vmov.f32	s15, #2.500000e+00
  40ac4c:      	vcmpe.f32	s14, s15
  40ac50:      	vmrs	APSR_nzcv, fpscr
  40ac54:      	bgt	0x40ac5a <_ZN13TrainingStage8doLessonEf+0x982> @ imm = #0x2
  40ac56:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x72ba
  40ac5a:      	add	r3, sp, #0x1c
  40ac5c:      	ldr	r3, [r3]
  40ac5e:      	ldr.w	r3, [r3, #0x180]
  40ac62:      	adds	r2, r3, #0x1
  40ac64:      	add	r3, sp, #0x1c
  40ac66:      	ldr	r3, [r3]
  40ac68:      	str.w	r2, [r3, #0x180]
  40ac6c:      	add	r3, sp, #0x1c
  40ac6e:      	ldr	r3, [r3]
  40ac70:      	ldr.w	r5, [r3, #0x10c]
  40ac74:      	add.w	r3, sp, #0x400
  40ac78:      	mov	r0, r3
  40ac7a:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x37f776
  40ac7e:      	add.w	r2, sp, #0x410
  40ac82:      	add.w	r3, sp, #0x400
  40ac86:      	mov	r0, r2
  40ac88:      	ldr.w	r2, [pc, #0x7b0]        @ 0x40b43c <_ZN13TrainingStage8doLessonEf+0x1164>
  40ac8c:      	add	r2, pc
  40ac8e:      	mov	r1, r2
  40ac90:      	mov	r2, r3
  40ac92:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3abdca
  40ac96:      	movs	r0, #0x0
  40ac98:      	movs	r1, #0x0
  40ac9a:      	movs	r2, #0xff
  40ac9c:      	bl	0x408458 <_ZN6Tracer14checkCollisionEv+0x3cc> @ imm = #-0x2848
  40aca0:      	mov	r2, r0
  40aca2:      	add	r3, sp, #0x30
  40aca4:      	mov	r1, r2
  40aca6:      	strb	r1, [r3]
  40aca8:      	ubfx	r1, r2, #0x8, #0x8
  40acac:      	strb	r1, [r3, #0x1]
  40acae:      	ubfx	r2, r2, #0x10, #0x8
  40acb2:      	strb	r2, [r3, #0x2]
  40acb4:      	add.w	r2, sp, #0x410
  40acb8:      	add	r3, sp, #0x30
  40acba:      	mov	r0, r5
  40acbc:      	mov	r1, r2
  40acbe:      	ldr	r2, [r3]
  40acc0:      	movs	r3, #0x2
  40acc2:      	bl	0x33d2c0 <_ZN3HUD10addMessageESsN7cocos2d10_ccColor3BEs> @ imm = #-0xcda06
  40acc6:      	add.w	r3, sp, #0x410
  40acca:      	mov	r0, r3
  40accc:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3aac44
  40acd0:      	add.w	r3, sp, #0x400
  40acd4:      	mov	r0, r3
  40acd6:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x37f722
  40acda:      	add	r3, sp, #0x1c
  40acdc:      	ldr	r3, [r3]
  40acde:      	mov.w	r2, #0x0
  40ace2:      	str.w	r2, [r3, #0x188]
  40ace6:      	ldr.w	r3, [pc, #0x74c]        @ 0x40b434 <_ZN13TrainingStage8doLessonEf+0x115c>
  40acea:      	ldr	r3, [r4, r3]
  40acec:      	ldr	r3, [r3]
  40acee:      	mov	r0, r3
  40acf0:      	movs	r1, #0x35
  40acf2:      	movs	r2, #0x1
  40acf4:      	bl	0x3f7d40 <_ZN5Sound18playSoundWithVoiceEii> @ imm = #-0x12fb8
  40acf8:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x7218
  40acfc:      	ldr.w	r3, [pc, #0x738]        @ 0x40b438 <_ZN13TrainingStage8doLessonEf+0x1160>
  40ad00:      	ldr	r3, [r4, r3]
  40ad02:      	ldr	r3, [r3]
  40ad04:      	mov.w	r2, #0x40000000
  40ad08:      	str.w	r2, [r3, #0x1a8]
  40ad0c:      	add	r3, sp, #0x1c
  40ad0e:      	ldr	r3, [r3]
  40ad10:      	ldr.w	r3, [r3, #0x17c]
  40ad14:      	ldr	r3, [r3]
  40ad16:      	add.w	r3, r3, #0x238
  40ad1a:      	ldr	r3, [r3]
  40ad1c:      	add	r2, sp, #0x1c
  40ad1e:      	ldr	r2, [r2]
  40ad20:      	ldr.w	r2, [r2, #0x17c]
  40ad24:      	mov	r0, r2
  40ad26:      	mov.w	r1, #0x0
  40ad2a:      	movt	r1, #0x4334
  40ad2e:      	blx	r3
  40ad30:      	ldr.w	r3, [pc, #0x704]        @ 0x40b438 <_ZN13TrainingStage8doLessonEf+0x1160>
  40ad34:      	ldr	r3, [r4, r3]
  40ad36:      	ldr	r3, [r3]
  40ad38:      	ldr	r3, [r3]
  40ad3a:      	add.w	r3, r3, #0x2a4
  40ad3e:      	ldr	r3, [r3]
  40ad40:      	ldr.w	r2, [pc, #0x6f4]        @ 0x40b438 <_ZN13TrainingStage8doLessonEf+0x1160>
  40ad44:      	ldr	r2, [r4, r2]
  40ad46:      	ldr	r2, [r2]
  40ad48:      	mov	r0, r2
  40ad4a:      	mov.w	r1, #0x0
  40ad4e:      	blx	r3
  40ad50:      	add	r3, sp, #0x1c
  40ad52:      	ldr	r3, [r3]
  40ad54:      	vldr	s14, [r3, #392]
  40ad58:      	vmov.f32	s15, #2.000000e+00
  40ad5c:      	vcmpe.f32	s14, s15
  40ad60:      	vmrs	APSR_nzcv, fpscr
  40ad64:      	bpl	0x40ad72 <_ZN13TrainingStage8doLessonEf+0xa9a> @ imm = #0xa
  40ad66:      	add	r2, sp, #0x1c
  40ad68:      	add	r3, sp, #0x18
  40ad6a:      	ldr	r0, [r2]
  40ad6c:      	ldr	r1, [r3]
  40ad6e:      	bl	0x409e30 <_ZN13TrainingStage11headChatterEf> @ imm = #-0xf42
  40ad72:      	add	r3, sp, #0x1c
  40ad74:      	ldr	r3, [r3]
  40ad76:      	vldr	s14, [r3, #392]
  40ad7a:      	vmov.f32	s15, #2.000000e+00
  40ad7e:      	vcmpe.f32	s14, s15
  40ad82:      	vmrs	APSR_nzcv, fpscr
  40ad86:      	bgt	0x40ad8c <_ZN13TrainingStage8doLessonEf+0xab4> @ imm = #0x2
  40ad88:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x7188
  40ad8c:      	add	r3, sp, #0x1c
  40ad8e:      	ldr	r3, [r3]
  40ad90:      	ldr.w	r3, [r3, #0x180]
  40ad94:      	adds	r2, r3, #0x1
  40ad96:      	add	r3, sp, #0x1c
  40ad98:      	ldr	r3, [r3]
  40ad9a:      	str.w	r2, [r3, #0x180]
  40ad9e:      	add	r3, sp, #0x1c
  40ada0:      	ldr	r3, [r3]
  40ada2:      	ldr.w	r5, [r3, #0x10c]
  40ada6:      	add.w	r3, sp, #0x400
  40adaa:      	mov	r0, r3
  40adac:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x37f644
  40adb0:      	add.w	r2, sp, #0x410
  40adb4:      	add.w	r3, sp, #0x400
  40adb8:      	mov	r0, r2
  40adba:      	ldr.w	r2, [pc, #0x684]        @ 0x40b440 <_ZN13TrainingStage8doLessonEf+0x1168>
  40adbe:      	add	r2, pc
  40adc0:      	mov	r1, r2
  40adc2:      	mov	r2, r3
  40adc4:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3abc98
  40adc8:      	movs	r0, #0x0
  40adca:      	movs	r1, #0x0
  40adcc:      	movs	r2, #0xff
  40adce:      	bl	0x408458 <_ZN6Tracer14checkCollisionEv+0x3cc> @ imm = #-0x297a
  40add2:      	mov	r2, r0
  40add4:      	add	r3, sp, #0x34
  40add6:      	mov	r1, r2
  40add8:      	strb	r1, [r3]
  40adda:      	ubfx	r1, r2, #0x8, #0x8
  40adde:      	strb	r1, [r3, #0x1]
  40ade0:      	ubfx	r2, r2, #0x10, #0x8
  40ade4:      	strb	r2, [r3, #0x2]
  40ade6:      	add.w	r2, sp, #0x410
  40adea:      	add	r3, sp, #0x34
  40adec:      	mov	r0, r5
  40adee:      	mov	r1, r2
  40adf0:      	ldr	r2, [r3]
  40adf2:      	movs	r3, #0x2
  40adf4:      	bl	0x33d2c0 <_ZN3HUD10addMessageESsN7cocos2d10_ccColor3BEs> @ imm = #-0xcdb38
  40adf8:      	add.w	r3, sp, #0x410
  40adfc:      	mov	r0, r3
  40adfe:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3aab12
  40ae02:      	add.w	r3, sp, #0x400
  40ae06:      	mov	r0, r3
  40ae08:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x37f5f0
  40ae0c:      	add	r3, sp, #0x1c
  40ae0e:      	ldr	r3, [r3]
  40ae10:      	mov.w	r2, #0x0
  40ae14:      	str.w	r2, [r3, #0x188]
  40ae18:      	ldr.w	r3, [pc, #0x618]        @ 0x40b434 <_ZN13TrainingStage8doLessonEf+0x115c>
  40ae1c:      	ldr	r3, [r4, r3]
  40ae1e:      	ldr	r3, [r3]
  40ae20:      	mov	r0, r3
  40ae22:      	movs	r1, #0x36
  40ae24:      	movs	r2, #0x1
  40ae26:      	bl	0x3f7d40 <_ZN5Sound18playSoundWithVoiceEii> @ imm = #-0x130ea
  40ae2a:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x70e6
  40ae2e:      	ldr.w	r3, [pc, #0x608]        @ 0x40b438 <_ZN13TrainingStage8doLessonEf+0x1160>
  40ae32:      	ldr	r3, [r4, r3]
  40ae34:      	ldr	r3, [r3]
  40ae36:      	mov.w	r2, #0x40000000
  40ae3a:      	str.w	r2, [r3, #0x1a8]
  40ae3e:      	add	r3, sp, #0x1c
  40ae40:      	ldr	r3, [r3]
  40ae42:      	ldr.w	r3, [r3, #0x17c]
  40ae46:      	ldr	r3, [r3]
  40ae48:      	add.w	r3, r3, #0x238
  40ae4c:      	ldr	r3, [r3]
  40ae4e:      	add	r2, sp, #0x1c
  40ae50:      	ldr	r2, [r2]
  40ae52:      	ldr.w	r2, [r2, #0x17c]
  40ae56:      	mov	r0, r2
  40ae58:      	mov.w	r1, #0x0
  40ae5c:      	movt	r1, #0x4334
  40ae60:      	blx	r3
  40ae62:      	ldr.w	r3, [pc, #0x5d4]        @ 0x40b438 <_ZN13TrainingStage8doLessonEf+0x1160>
  40ae66:      	ldr	r3, [r4, r3]
  40ae68:      	ldr	r3, [r3]
  40ae6a:      	ldr	r3, [r3]
  40ae6c:      	add.w	r3, r3, #0x2a4
  40ae70:      	ldr	r3, [r3]
  40ae72:      	ldr.w	r2, [pc, #0x5c4]        @ 0x40b438 <_ZN13TrainingStage8doLessonEf+0x1160>
  40ae76:      	ldr	r2, [r4, r2]
  40ae78:      	ldr	r2, [r2]
  40ae7a:      	mov	r0, r2
  40ae7c:      	mov.w	r1, #0x0
  40ae80:      	blx	r3
  40ae82:      	add	r3, sp, #0x1c
  40ae84:      	ldr	r3, [r3]
  40ae86:      	vldr	s14, [r3, #392]
  40ae8a:      	vmov.f32	s15, #2.000000e+00
  40ae8e:      	vcmpe.f32	s14, s15
  40ae92:      	vmrs	APSR_nzcv, fpscr
  40ae96:      	bpl	0x40aea4 <_ZN13TrainingStage8doLessonEf+0xbcc> @ imm = #0xa
  40ae98:      	add	r2, sp, #0x1c
  40ae9a:      	add	r3, sp, #0x18
  40ae9c:      	ldr	r0, [r2]
  40ae9e:      	ldr	r1, [r3]
  40aea0:      	bl	0x409e30 <_ZN13TrainingStage11headChatterEf> @ imm = #-0x1074
  40aea4:      	add	r3, sp, #0x1c
  40aea6:      	ldr	r3, [r3]
  40aea8:      	vldr	s14, [r3, #392]
  40aeac:      	vmov.f32	s15, #2.500000e+00
  40aeb0:      	vcmpe.f32	s14, s15
  40aeb4:      	vmrs	APSR_nzcv, fpscr
  40aeb8:      	bgt	0x40aebe <_ZN13TrainingStage8doLessonEf+0xbe6> @ imm = #0x2
  40aeba:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x7056
  40aebe:      	add	r3, sp, #0x1c
  40aec0:      	ldr	r3, [r3]
  40aec2:      	ldr.w	r3, [r3, #0x180]
  40aec6:      	adds	r2, r3, #0x1
  40aec8:      	add	r3, sp, #0x1c
  40aeca:      	ldr	r3, [r3]
  40aecc:      	str.w	r2, [r3, #0x180]
  40aed0:      	add	r3, sp, #0x1c
  40aed2:      	ldr	r3, [r3]
  40aed4:      	ldr.w	r5, [r3, #0x10c]
  40aed8:      	add.w	r3, sp, #0x400
  40aedc:      	mov	r0, r3
  40aede:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x37f512
  40aee2:      	add.w	r2, sp, #0x410
  40aee6:      	add.w	r3, sp, #0x400
  40aeea:      	mov	r0, r2
  40aeec:      	ldr.w	r2, [pc, #0x554]        @ 0x40b444 <_ZN13TrainingStage8doLessonEf+0x116c>
  40aef0:      	add	r2, pc
  40aef2:      	mov	r1, r2
  40aef4:      	mov	r2, r3
  40aef6:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3abb66
  40aefa:      	movs	r0, #0x0
  40aefc:      	movs	r1, #0x0
  40aefe:      	movs	r2, #0xff
  40af00:      	bl	0x408458 <_ZN6Tracer14checkCollisionEv+0x3cc> @ imm = #-0x2aac
  40af04:      	mov	r2, r0
  40af06:      	add	r3, sp, #0x38
  40af08:      	mov	r1, r2
  40af0a:      	strb	r1, [r3]
  40af0c:      	ubfx	r1, r2, #0x8, #0x8
  40af10:      	strb	r1, [r3, #0x1]
  40af12:      	ubfx	r2, r2, #0x10, #0x8
  40af16:      	strb	r2, [r3, #0x2]
  40af18:      	add.w	r2, sp, #0x410
  40af1c:      	add	r3, sp, #0x38
  40af1e:      	mov	r0, r5
  40af20:      	mov	r1, r2
  40af22:      	ldr	r2, [r3]
  40af24:      	movs	r3, #0x4
  40af26:      	bl	0x33d2c0 <_ZN3HUD10addMessageESsN7cocos2d10_ccColor3BEs> @ imm = #-0xcdc6a
  40af2a:      	add.w	r3, sp, #0x410
  40af2e:      	mov	r0, r3
  40af30:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3aa9e0
  40af34:      	add.w	r3, sp, #0x400
  40af38:      	mov	r0, r3
  40af3a:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x37f4be
  40af3e:      	add	r3, sp, #0x1c
  40af40:      	ldr	r3, [r3]
  40af42:      	mov.w	r2, #0x0
  40af46:      	str.w	r2, [r3, #0x188]
  40af4a:      	ldr.w	r3, [pc, #0x4e8]        @ 0x40b434 <_ZN13TrainingStage8doLessonEf+0x115c>
  40af4e:      	ldr	r3, [r4, r3]
  40af50:      	ldr	r3, [r3]
  40af52:      	mov	r0, r3
  40af54:      	movs	r1, #0x37
  40af56:      	movs	r2, #0x1
  40af58:      	bl	0x3f7d40 <_ZN5Sound18playSoundWithVoiceEii> @ imm = #-0x1321c
  40af5c:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x6fb4
  40af60:      	ldr.w	r3, [pc, #0x4d4]        @ 0x40b438 <_ZN13TrainingStage8doLessonEf+0x1160>
  40af64:      	ldr	r3, [r4, r3]
  40af66:      	ldr	r3, [r3]
  40af68:      	mov.w	r2, #0x40000000
  40af6c:      	str.w	r2, [r3, #0x1a8]
  40af70:      	ldr.w	r3, [pc, #0x4c4]        @ 0x40b438 <_ZN13TrainingStage8doLessonEf+0x1160>
  40af74:      	ldr	r3, [r4, r3]
  40af76:      	ldr	r3, [r3]
  40af78:      	movs	r2, #0x32
  40af7a:      	str.w	r2, [r3, #0x1a4]
  40af7e:      	ldr.w	r3, [pc, #0x4b8]        @ 0x40b438 <_ZN13TrainingStage8doLessonEf+0x1160>
  40af82:      	ldr	r3, [r4, r3]
  40af84:      	ldr	r3, [r3]
  40af86:      	mov.w	r2, #0x40000000
  40af8a:      	str.w	r2, [r3, #0x1a8]
  40af8e:      	add	r3, sp, #0x1c
  40af90:      	ldr	r3, [r3]
  40af92:      	ldr.w	r3, [r3, #0x17c]
  40af96:      	ldr	r3, [r3]
  40af98:      	add.w	r3, r3, #0x238
  40af9c:      	ldr	r3, [r3]
  40af9e:      	add	r2, sp, #0x1c
  40afa0:      	ldr	r2, [r2]
  40afa2:      	ldr.w	r2, [r2, #0x17c]
  40afa6:      	mov	r0, r2
  40afa8:      	mov.w	r1, #0x0
  40afac:      	movt	r1, #0x4334
  40afb0:      	blx	r3
  40afb2:      	ldr.w	r3, [pc, #0x484]        @ 0x40b438 <_ZN13TrainingStage8doLessonEf+0x1160>
  40afb6:      	ldr	r3, [r4, r3]
  40afb8:      	ldr	r3, [r3]
  40afba:      	ldr	r3, [r3]
  40afbc:      	add.w	r3, r3, #0x2a4
  40afc0:      	ldr	r3, [r3]
  40afc2:      	ldr.w	r2, [pc, #0x474]        @ 0x40b438 <_ZN13TrainingStage8doLessonEf+0x1160>
  40afc6:      	ldr	r2, [r4, r2]
  40afc8:      	ldr	r2, [r2]
  40afca:      	mov	r0, r2
  40afcc:      	mov.w	r1, #0x0
  40afd0:      	blx	r3
  40afd2:      	add	r3, sp, #0x1c
  40afd4:      	ldr	r3, [r3]
  40afd6:      	vldr	s14, [r3, #392]
  40afda:      	vmov.f32	s15, #2.000000e+00
  40afde:      	vcmpe.f32	s14, s15
  40afe2:      	vmrs	APSR_nzcv, fpscr
  40afe6:      	bpl	0x40aff4 <_ZN13TrainingStage8doLessonEf+0xd1c> @ imm = #0xa
  40afe8:      	add	r2, sp, #0x1c
  40afea:      	add	r3, sp, #0x18
  40afec:      	ldr	r0, [r2]
  40afee:      	ldr	r1, [r3]
  40aff0:      	bl	0x409e30 <_ZN13TrainingStage11headChatterEf> @ imm = #-0x11c4
  40aff4:      	add	r3, sp, #0x1c
  40aff6:      	ldr	r3, [r3]
  40aff8:      	ldr.w	r3, [r3, #0x174]
  40affc:      	ldr	r3, [r3]
  40affe:      	adds	r3, #0x90
  40b000:      	ldr	r3, [r3]
  40b002:      	add	r2, sp, #0x1c
  40b004:      	ldr	r2, [r2]
  40b006:      	ldr.w	r2, [r2, #0x174]
  40b00a:      	mov	r0, r2
  40b00c:      	movs	r1, #0x0
  40b00e:      	blx	r3
  40b010:      	add	r3, sp, #0x1c
  40b012:      	ldr	r3, [r3]
  40b014:      	ldr.w	r3, [r3, #0x10c]
  40b018:      	ldr.w	r3, [r3, #0xf4]
  40b01c:      	ldrb.w	r3, [r3, #0x130]
  40b020:      	eor	r3, r3, #0x1
  40b024:      	uxtb	r3, r3
  40b026:      	cmp	r3, #0x0
  40b028:      	beq.w	0x40b140 <_ZN13TrainingStage8doLessonEf+0xe68> @ imm = #0x114
  40b02c:      	add	r3, sp, #0x1c
  40b02e:      	ldr	r3, [r3]
  40b030:      	ldr.w	r3, [r3, #0x174]
  40b034:      	ldr	r3, [r3]
  40b036:      	adds	r3, #0x90
  40b038:      	ldr	r3, [r3]
  40b03a:      	add	r2, sp, #0x1c
  40b03c:      	ldr	r2, [r2]
  40b03e:      	ldr.w	r2, [r2, #0x174]
  40b042:      	mov	r0, r2
  40b044:      	movs	r1, #0x1
  40b046:      	blx	r3
  40b048:      	add	r3, sp, #0x1c
  40b04a:      	ldr	r3, [r3]
  40b04c:      	ldr.w	r3, [r3, #0x174]
  40b050:      	ldr	r3, [r3]
  40b052:      	adds	r3, #0x98
  40b054:      	ldr	r3, [r3]
  40b056:      	add	r2, sp, #0x1c
  40b058:      	ldr	r2, [r2]
  40b05a:      	ldr.w	r2, [r2, #0x174]
  40b05e:      	mov	r0, r2
  40b060:      	mov.w	r1, #0x0
  40b064:      	movt	r1, #0x42b4
  40b068:      	blx	r3
  40b06a:      	add	r3, sp, #0x1c
  40b06c:      	ldr	r3, [r3]
  40b06e:      	ldr.w	r3, [r3, #0x16c]
  40b072:      	ldr	r3, [r3]
  40b074:      	adds	r3, #0x4c
  40b076:      	ldr	r5, [r3]
  40b078:      	add	r3, sp, #0x1c
  40b07a:      	ldr	r3, [r3]
  40b07c:      	ldr.w	r6, [r3, #0x16c]
  40b080:      	add	r3, sp, #0x1c
  40b082:      	ldr	r3, [r3]
  40b084:      	vldr	s14, [r3, #392]
  40b088:      	vmov.f32	s15, #5.000000e+00
  40b08c:      	vmul.f32	s15, s14, s15
  40b090:      	vcvt.f64.f32	d7, s15
  40b094:      	vmov	r0, r1, d7
  40b098:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x135194
  40b09c:      	vmov	d6, r0, r1
  40b0a0:      	vmov.f64	d7, #1.000000e+01
  40b0a4:      	vmul.f64	d7, d6, d7
  40b0a8:      	vcvt.f32.f64	s15, d7
  40b0ac:      	add.w	r3, sp, #0x410
  40b0b0:      	mov	r0, r3
  40b0b2:      	vmov	r1, s15
  40b0b6:      	mov.w	r2, #0x0
  40b0ba:      	bl	0x592cf0 <_ZN7cocos2d7CCPointC2Eff> @ imm = #0x187c32
  40b0be:      	add.w	r3, sp, #0x410
  40b0c2:      	mov	r0, r6
  40b0c4:      	mov	r1, r3
  40b0c6:      	blx	r5
  40b0c8:      	add	r3, sp, #0x1c
  40b0ca:      	ldr	r3, [r3]
  40b0cc:      	ldr.w	r3, [r3, #0x174]
  40b0d0:      	ldr	r3, [r3]
  40b0d2:      	adds	r3, #0x4c
  40b0d4:      	ldr	r5, [r3]
  40b0d6:      	add	r3, sp, #0x1c
  40b0d8:      	ldr	r3, [r3]
  40b0da:      	ldr.w	r6, [r3, #0x174]
  40b0de:      	add	r3, sp, #0x1c
  40b0e0:      	ldr	r3, [r3]
  40b0e2:      	ldr.w	r3, [r3, #0x10c]
  40b0e6:      	ldr.w	r3, [r3, #0xf4]
  40b0ea:      	ldr.w	r3, [r3, #0xf4]
  40b0ee:      	ldr	r3, [r3]
  40b0f0:      	adds	r3, #0x50
  40b0f2:      	ldr	r3, [r3]
  40b0f4:      	add	r2, sp, #0x1c
  40b0f6:      	ldr	r2, [r2]
  40b0f8:      	ldr.w	r2, [r2, #0x10c]
  40b0fc:      	ldr.w	r2, [r2, #0xf4]
  40b100:      	ldr.w	r2, [r2, #0xf4]
  40b104:      	mov	r0, r2
  40b106:      	blx	r3
  40b108:      	mov	r7, r0
  40b10a:      	add.w	r3, sp, #0x400
  40b10e:      	mov	r0, r3
  40b110:      	mov.w	r1, #0x0
  40b114:      	movt	r1, #0xc170
  40b118:      	mov.w	r2, #0x0
  40b11c:      	movt	r2, #0x428c
  40b120:      	bl	0x592cf0 <_ZN7cocos2d7CCPointC2Eff> @ imm = #0x187bcc
  40b124:      	add.w	r2, sp, #0x410
  40b128:      	add.w	r3, sp, #0x400
  40b12c:      	mov	r0, r2
  40b12e:      	mov	r1, r7
  40b130:      	mov	r2, r3
  40b132:      	bl	0x4084b4 <_ZN6Tracer14checkCollisionEv+0x428> @ imm = #-0x2c82
  40b136:      	add.w	r3, sp, #0x410
  40b13a:      	mov	r0, r6
  40b13c:      	mov	r1, r3
  40b13e:      	blx	r5
  40b140:      	add	r3, sp, #0x1c
  40b142:      	ldr	r3, [r3]
  40b144:      	vldr	s14, [r3, #392]
  40b148:      	vmov.f32	s15, #8.000000e+00
  40b14c:      	vcmpe.f32	s14, s15
  40b150:      	vmrs	APSR_nzcv, fpscr
  40b154:      	bgt	0x40b15a <_ZN13TrainingStage8doLessonEf+0xe82> @ imm = #0x2
  40b156:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x6dba
  40b15a:      	add	r3, sp, #0x1c
  40b15c:      	ldr	r3, [r3]
  40b15e:      	ldr.w	r3, [r3, #0x10c]
  40b162:      	ldr.w	r3, [r3, #0xf4]
  40b166:      	ldrb.w	r3, [r3, #0x130]
  40b16a:      	cmp	r3, #0x0
  40b16c:      	beq	0x40b224 <_ZN13TrainingStage8doLessonEf+0xf4c> @ imm = #0xb4
  40b16e:      	add	r3, sp, #0x1c
  40b170:      	ldr	r3, [r3]
  40b172:      	ldr.w	r3, [r3, #0x180]
  40b176:      	adds	r2, r3, #0x1
  40b178:      	add	r3, sp, #0x1c
  40b17a:      	ldr	r3, [r3]
  40b17c:      	str.w	r2, [r3, #0x180]
  40b180:      	add	r3, sp, #0x1c
  40b182:      	ldr	r3, [r3]
  40b184:      	mov.w	r2, #0x0
  40b188:      	str.w	r2, [r3, #0x188]
  40b18c:      	add	r3, sp, #0x1c
  40b18e:      	ldr	r3, [r3]
  40b190:      	ldr.w	r3, [r3, #0x174]
  40b194:      	ldr	r3, [r3]
  40b196:      	adds	r3, #0x90
  40b198:      	ldr	r3, [r3]
  40b19a:      	add	r2, sp, #0x1c
  40b19c:      	ldr	r2, [r2]
  40b19e:      	ldr.w	r2, [r2, #0x174]
  40b1a2:      	mov	r0, r2
  40b1a4:      	movs	r1, #0x0
  40b1a6:      	blx	r3
  40b1a8:      	add	r3, sp, #0x1c
  40b1aa:      	ldr	r3, [r3]
  40b1ac:      	ldr.w	r5, [r3, #0x10c]
  40b1b0:      	add.w	r3, sp, #0x400
  40b1b4:      	mov	r0, r3
  40b1b6:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x37f23a
  40b1ba:      	add.w	r2, sp, #0x410
  40b1be:      	add.w	r3, sp, #0x400
  40b1c2:      	mov	r0, r2
  40b1c4:      	ldr	r2, [pc, #0x280]        @ 0x40b448 <_ZN13TrainingStage8doLessonEf+0x1170>
  40b1c6:      	add	r2, pc
  40b1c8:      	mov	r1, r2
  40b1ca:      	mov	r2, r3
  40b1cc:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3ab890
  40b1d0:      	movs	r0, #0x0
  40b1d2:      	movs	r1, #0x0
  40b1d4:      	movs	r2, #0xff
  40b1d6:      	bl	0x408458 <_ZN6Tracer14checkCollisionEv+0x3cc> @ imm = #-0x2d82
  40b1da:      	mov	r2, r0
  40b1dc:      	add	r3, sp, #0x3c
  40b1de:      	mov	r1, r2
  40b1e0:      	strb	r1, [r3]
  40b1e2:      	ubfx	r1, r2, #0x8, #0x8
  40b1e6:      	strb	r1, [r3, #0x1]
  40b1e8:      	ubfx	r2, r2, #0x10, #0x8
  40b1ec:      	strb	r2, [r3, #0x2]
  40b1ee:      	add.w	r2, sp, #0x410
  40b1f2:      	add	r3, sp, #0x3c
  40b1f4:      	mov	r0, r5
  40b1f6:      	mov	r1, r2
  40b1f8:      	ldr	r2, [r3]
  40b1fa:      	movs	r3, #0x2
  40b1fc:      	bl	0x33d2c0 <_ZN3HUD10addMessageESsN7cocos2d10_ccColor3BEs> @ imm = #-0xcdf40
  40b200:      	add.w	r3, sp, #0x410
  40b204:      	mov	r0, r3
  40b206:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3aa70a
  40b20a:      	add.w	r3, sp, #0x400
  40b20e:      	mov	r0, r3
  40b210:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x37f1e8
  40b214:      	ldr	r3, [pc, #0x21c]        @ 0x40b434 <_ZN13TrainingStage8doLessonEf+0x115c>
  40b216:      	ldr	r3, [r4, r3]
  40b218:      	ldr	r3, [r3]
  40b21a:      	mov	r0, r3
  40b21c:      	movs	r1, #0x38
  40b21e:      	movs	r2, #0x1
  40b220:      	bl	0x3f7d40 <_ZN5Sound18playSoundWithVoiceEii> @ imm = #-0x134e4
  40b224:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x6cec
  40b228:      	add	r3, sp, #0x1c
  40b22a:      	ldr	r3, [r3]
  40b22c:      	ldr.w	r3, [r3, #0x17c]
  40b230:      	ldr	r3, [r3]
  40b232:      	add.w	r3, r3, #0x238
  40b236:      	ldr	r3, [r3]
  40b238:      	add	r2, sp, #0x1c
  40b23a:      	ldr	r2, [r2]
  40b23c:      	ldr.w	r2, [r2, #0x17c]
  40b240:      	mov	r0, r2
  40b242:      	mov.w	r1, #0x0
  40b246:      	movt	r1, #0x4334
  40b24a:      	blx	r3
  40b24c:      	ldr	r3, [pc, #0x1e8]        @ 0x40b438 <_ZN13TrainingStage8doLessonEf+0x1160>
  40b24e:      	ldr	r3, [r4, r3]
  40b250:      	ldr	r3, [r3]
  40b252:      	ldr	r3, [r3]
  40b254:      	add.w	r3, r3, #0x2a4
  40b258:      	ldr	r3, [r3]
  40b25a:      	ldr	r2, [pc, #0x1dc]        @ 0x40b438 <_ZN13TrainingStage8doLessonEf+0x1160>
  40b25c:      	ldr	r2, [r4, r2]
  40b25e:      	ldr	r2, [r2]
  40b260:      	mov	r0, r2
  40b262:      	mov.w	r1, #0x0
  40b266:      	blx	r3
  40b268:      	add	r3, sp, #0x1c
  40b26a:      	ldr	r3, [r3]
  40b26c:      	vldr	s14, [r3, #392]
  40b270:      	vmov.f32	s15, #1.000000e+00
  40b274:      	vcmpe.f32	s14, s15
  40b278:      	vmrs	APSR_nzcv, fpscr
  40b27c:      	bpl	0x40b28a <_ZN13TrainingStage8doLessonEf+0xfb2> @ imm = #0xa
  40b27e:      	add	r2, sp, #0x1c
  40b280:      	add	r3, sp, #0x18
  40b282:      	ldr	r0, [r2]
  40b284:      	ldr	r1, [r3]
  40b286:      	bl	0x409e30 <_ZN13TrainingStage11headChatterEf> @ imm = #-0x145a
  40b28a:      	add	r3, sp, #0x1c
  40b28c:      	ldr	r3, [r3]
  40b28e:      	vldr	s14, [r3, #392]
  40b292:      	vmov.f32	s15, #2.000000e+00
  40b296:      	vcmpe.f32	s14, s15
  40b29a:      	vmrs	APSR_nzcv, fpscr
  40b29e:      	bgt	0x40b2a4 <_ZN13TrainingStage8doLessonEf+0xfcc> @ imm = #0x2
  40b2a0:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x6c70
  40b2a4:      	add	r3, sp, #0x1c
  40b2a6:      	ldr	r3, [r3]
  40b2a8:      	ldr.w	r3, [r3, #0x180]
  40b2ac:      	adds	r2, r3, #0x1
  40b2ae:      	add	r3, sp, #0x1c
  40b2b0:      	ldr	r3, [r3]
  40b2b2:      	str.w	r2, [r3, #0x180]
  40b2b6:      	add	r3, sp, #0x1c
  40b2b8:      	ldr	r3, [r3]
  40b2ba:      	mov.w	r2, #0x0
  40b2be:      	str.w	r2, [r3, #0x188]
  40b2c2:      	add	r3, sp, #0x1c
  40b2c4:      	ldr	r3, [r3]
  40b2c6:      	ldr.w	r5, [r3, #0x10c]
  40b2ca:      	add.w	r3, sp, #0x400
  40b2ce:      	mov	r0, r3
  40b2d0:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x37f120
  40b2d4:      	add.w	r2, sp, #0x410
  40b2d8:      	add.w	r3, sp, #0x400
  40b2dc:      	mov	r0, r2
  40b2de:      	ldr	r2, [pc, #0x16c]        @ 0x40b44c <_ZN13TrainingStage8doLessonEf+0x1174>
  40b2e0:      	add	r2, pc
  40b2e2:      	mov	r1, r2
  40b2e4:      	mov	r2, r3
  40b2e6:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3ab776
  40b2ea:      	movs	r0, #0x0
  40b2ec:      	movs	r1, #0x0
  40b2ee:      	movs	r2, #0xff
  40b2f0:      	bl	0x408458 <_ZN6Tracer14checkCollisionEv+0x3cc> @ imm = #-0x2e9c
  40b2f4:      	mov	r2, r0
  40b2f6:      	add	r3, sp, #0x40
  40b2f8:      	mov	r1, r2
  40b2fa:      	strb	r1, [r3]
  40b2fc:      	ubfx	r1, r2, #0x8, #0x8
  40b300:      	strb	r1, [r3, #0x1]
  40b302:      	ubfx	r2, r2, #0x10, #0x8
  40b306:      	strb	r2, [r3, #0x2]
  40b308:      	add.w	r2, sp, #0x410
  40b30c:      	add	r3, sp, #0x40
  40b30e:      	mov	r0, r5
  40b310:      	mov	r1, r2
  40b312:      	ldr	r2, [r3]
  40b314:      	movs	r3, #0x5
  40b316:      	bl	0x33d2c0 <_ZN3HUD10addMessageESsN7cocos2d10_ccColor3BEs> @ imm = #-0xce05a
  40b31a:      	add.w	r3, sp, #0x410
  40b31e:      	mov	r0, r3
  40b320:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3aa5f0
  40b324:      	add.w	r3, sp, #0x400
  40b328:      	mov	r0, r3
  40b32a:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x37f0ce
  40b32e:      	ldr	r3, [pc, #0x104]        @ 0x40b434 <_ZN13TrainingStage8doLessonEf+0x115c>
  40b330:      	ldr	r3, [r4, r3]
  40b332:      	ldr	r3, [r3]
  40b334:      	mov	r0, r3
  40b336:      	movs	r1, #0x39
  40b338:      	movs	r2, #0x1
  40b33a:      	bl	0x3f7d40 <_ZN5Sound18playSoundWithVoiceEii> @ imm = #-0x135fe
  40b33e:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x6bd2
  40b342:      	add	r3, sp, #0x1c
  40b344:      	ldr	r3, [r3]
  40b346:      	ldr.w	r3, [r3, #0x17c]
  40b34a:      	ldr	r3, [r3]
  40b34c:      	add.w	r3, r3, #0x238
  40b350:      	ldr	r3, [r3]
  40b352:      	add	r2, sp, #0x1c
  40b354:      	ldr	r2, [r2]
  40b356:      	ldr.w	r2, [r2, #0x17c]
  40b35a:      	mov	r0, r2
  40b35c:      	mov.w	r1, #0x0
  40b360:      	movt	r1, #0x4334
  40b364:      	blx	r3
  40b366:      	ldr	r3, [pc, #0xd0]         @ 0x40b438 <_ZN13TrainingStage8doLessonEf+0x1160>
  40b368:      	ldr	r3, [r4, r3]
  40b36a:      	ldr	r3, [r3]
  40b36c:      	ldr	r3, [r3]
  40b36e:      	add.w	r3, r3, #0x2a4
  40b372:      	ldr	r3, [r3]
  40b374:      	ldr	r2, [pc, #0xc0]         @ 0x40b438 <_ZN13TrainingStage8doLessonEf+0x1160>
  40b376:      	ldr	r2, [r4, r2]
  40b378:      	ldr	r2, [r2]
  40b37a:      	mov	r0, r2
  40b37c:      	mov.w	r1, #0x0
  40b380:      	blx	r3
  40b382:      	add	r3, sp, #0x1c
  40b384:      	ldr	r3, [r3]
  40b386:      	ldr.w	r3, [r3, #0x17c]
  40b38a:      	movs	r2, #0x1
  40b38c:      	strb.w	r2, [r3, #0x11c]
  40b390:      	add	r3, sp, #0x1c
  40b392:      	ldr	r3, [r3]
  40b394:      	ldr.w	r3, [r3, #0x17c]
  40b398:      	ldr	r3, [r3]
  40b39a:      	add.w	r3, r3, #0x230
  40b39e:      	ldr	r5, [r3]
  40b3a0:      	add	r3, sp, #0x1c
  40b3a2:      	ldr	r3, [r3]
  40b3a4:      	ldr.w	r3, [r3, #0x17c]
  40b3a8:      	mov	r6, r3
  40b3aa:      	add	r3, sp, #0x110
  40b3ac:      	mov	r0, r3
  40b3ae:      	vmov.f64	d0, #-7.500000e-01
  40b3b2:      	vldr	d1, [pc, #116]          @ 0x40b428 <_ZN13TrainingStage8doLessonEf+0x1150>
  40b3b6:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x2ee6
  40b3ba:      	add	r3, sp, #0x110
  40b3bc:      	mov	r2, sp
  40b3be:      	add.w	r1, r3, #0x8
  40b3c2:      	ldm	r1, {r0, r1}
  40b3c4:      	stm.w	r2, {r0, r1}
  40b3c8:      	ldm	r3, {r2, r3}
  40b3ca:      	mov	r0, r6
  40b3cc:      	blx	r5
  40b3ce:      	add	r3, sp, #0x1c
  40b3d0:      	ldr	r3, [r3]
  40b3d2:      	vldr	s14, [r3, #392]
  40b3d6:      	vmov.f32	s15, #1.000000e+00
  40b3da:      	vcmpe.f32	s14, s15
  40b3de:      	vmrs	APSR_nzcv, fpscr
  40b3e2:      	bpl	0x40b3f0 <_ZN13TrainingStage8doLessonEf+0x1118> @ imm = #0xa
  40b3e4:      	add	r2, sp, #0x1c
  40b3e6:      	add	r3, sp, #0x18
  40b3e8:      	ldr	r0, [r2]
  40b3ea:      	ldr	r1, [r3]
  40b3ec:      	bl	0x409e30 <_ZN13TrainingStage11headChatterEf> @ imm = #-0x15c0
  40b3f0:      	add	r3, sp, #0x1c
  40b3f2:      	ldr	r3, [r3]
  40b3f4:      	ldr.w	r3, [r3, #0x17c]
  40b3f8:      	ldr.w	r3, [r3, #0x138]
  40b3fc:      	vldr	d6, [r3, #40]
  40b400:      	ldr	r3, [pc, #0x34]         @ 0x40b438 <_ZN13TrainingStage8doLessonEf+0x1160>
  40b402:      	ldr	r3, [r4, r3]
  40b404:      	ldr	r3, [r3]
  40b406:      	ldr.w	r3, [r3, #0x138]
  40b40a:      	vldr	d5, [r3, #40]
  40b40e:      	vmov.f64	d7, #1.500000e+01
  40b412:      	vadd.f64	d7, d5, d7
  40b416:      	vcmpe.f64	d6, d7
  40b41a:      	vmrs	APSR_nzcv, fpscr
  40b41e:      	bmi	0x40b450 <_ZN13TrainingStage8doLessonEf+0x1178> @ imm = #0x2e
  40b420:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x6af0
// TrainingStage::doLesson  ghidra=0x41b450-0x41b735  elf=0x40b450-0x40b735  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  40b450:      	add	r3, sp, #0x1c
  40b452:      	ldr	r3, [r3]
  40b454:      	ldr.w	r3, [r3, #0x17c]
  40b458:      	ldr	r3, [r3]
  40b45a:      	add.w	r3, r3, #0x230
  40b45e:      	ldr	r5, [r3]
  40b460:      	add	r3, sp, #0x1c
  40b462:      	ldr	r3, [r3]
  40b464:      	ldr.w	r3, [r3, #0x17c]
  40b468:      	mov	r6, r3
  40b46a:      	add	r3, sp, #0x120
  40b46c:      	mov	r0, r3
  40b46e:      	vldr	d0, [pc, #712]          @ 0x40b738 <_ZN13TrainingStage8doLessonEf+0x1460>
  40b472:      	vldr	d1, [pc, #708]          @ 0x40b738 <_ZN13TrainingStage8doLessonEf+0x1460>
  40b476:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x2fa6
  40b47a:      	add	r3, sp, #0x120
  40b47c:      	mov	r2, sp
  40b47e:      	add.w	r1, r3, #0x8
  40b482:      	ldm	r1, {r0, r1}
  40b484:      	stm.w	r2, {r0, r1}
  40b488:      	ldm	r3, {r2, r3}
  40b48a:      	mov	r0, r6
  40b48c:      	blx	r5
  40b48e:      	add	r3, sp, #0x1c
  40b490:      	ldr	r3, [r3]
  40b492:      	ldr.w	r3, [r3, #0x17c]
  40b496:      	movs	r2, #0x0
  40b498:      	strb.w	r2, [r3, #0x11c]
  40b49c:      	add	r3, sp, #0x1c
  40b49e:      	ldr	r3, [r3]
  40b4a0:      	ldr.w	r3, [r3, #0x180]
  40b4a4:      	adds	r2, r3, #0x1
  40b4a6:      	add	r3, sp, #0x1c
  40b4a8:      	ldr	r3, [r3]
  40b4aa:      	str.w	r2, [r3, #0x180]
  40b4ae:      	add	r3, sp, #0x1c
  40b4b0:      	ldr	r3, [r3]
  40b4b2:      	mov.w	r2, #0x0
  40b4b6:      	str.w	r2, [r3, #0x188]
  40b4ba:      	bl	0x417984 <_ZN13WeaponFactory19sharedWeaponFactoryEv> @ imm = #0xc4c6
  40b4be:      	mov	r3, r0
  40b4c0:      	mov	r0, r3
  40b4c2:      	movs	r1, #0x8
  40b4c4:      	bl	0x4186fc <_ZN13WeaponFactory24createWeaponFromAmmoTypeE8ItemType> @ imm = #0xd234
  40b4c8:      	mov	r2, r0
  40b4ca:      	add	r3, sp, #0xd0
  40b4cc:      	str	r2, [r3]
  40b4ce:      	add	r3, sp, #0xd0
  40b4d0:      	ldr	r3, [r3]
  40b4d2:      	ldr	r3, [r3]
  40b4d4:      	add.w	r3, r3, #0x200
  40b4d8:      	ldr	r5, [r3]
  40b4da:      	ldr	r3, [pc, #0x264]        @ 0x40b740 <_ZN13TrainingStage8doLessonEf+0x1468>
  40b4dc:      	ldr	r3, [r4, r3]
  40b4de:      	ldr	r3, [r3]
  40b4e0:      	ldr	r3, [r3]
  40b4e2:      	add.w	r3, r3, #0x1c0
  40b4e6:      	ldr	r3, [r3]
  40b4e8:      	ldr	r2, [pc, #0x254]        @ 0x40b740 <_ZN13TrainingStage8doLessonEf+0x1468>
  40b4ea:      	ldr	r2, [r4, r2]
  40b4ec:      	ldr	r2, [r2]
  40b4ee:      	add.w	r1, sp, #0x410
  40b4f2:      	mov	r0, r1
  40b4f4:      	mov	r1, r2
  40b4f6:      	blx	r3
  40b4f8:      	add	r2, sp, #0xd0
  40b4fa:      	add.w	r3, sp, #0x410
  40b4fe:      	ldr	r0, [r2]
  40b500:      	mov	r1, r3
  40b502:      	blx	r5
  40b504:      	add.w	r3, sp, #0x410
  40b508:      	mov	r0, r3
  40b50a:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3aa406
  40b50e:      	add	r3, sp, #0xd0
  40b510:      	ldr	r3, [r3]
  40b512:      	ldr.w	r6, [r3, #0xe8]
  40b516:      	ldr	r3, [pc, #0x228]        @ 0x40b740 <_ZN13TrainingStage8doLessonEf+0x1468>
  40b518:      	ldr	r3, [r4, r3]
  40b51a:      	ldr	r3, [r3]
  40b51c:      	ldr.w	r5, [r3, #0x138]
  40b520:      	add	r3, sp, #0x130
  40b522:      	mov	r0, r3
  40b524:      	vmov.f64	d0, #-1.000000e+01
  40b528:      	vldr	d1, [pc, #524]          @ 0x40b738 <_ZN13TrainingStage8doLessonEf+0x1460>
  40b52c:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x305c
  40b530:      	add	r2, sp, #0x8
  40b532:      	vldr	d4, [r5, #40]
  40b536:      	vldr	d5, [r5, #48]
  40b53a:      	add	r3, sp, #0x130
  40b53c:      	vldr	d6, [r3]
  40b540:      	vldr	d7, [r3, #8]
  40b544:      	mov	r0, r2
  40b546:      	vmov.f64	d0, d4
  40b54a:      	vmov.f64	d1, d5
  40b54e:      	vmov.f64	d2, d6
  40b552:      	vmov.f64	d3, d7
  40b556:      	bl	0x4084fc <_ZN6Tracer14checkCollisionEv+0x470> @ imm = #-0x305e
  40b55a:      	add	r3, sp, #0x8
  40b55c:      	add.w	r5, r6, #0x28
  40b560:      	ldm	r3, {r0, r1, r2, r3}
  40b562:      	stm.w	r5, {r0, r1, r2, r3}
  40b566:      	add	r3, sp, #0xd0
  40b568:      	ldr	r3, [r3]
  40b56a:      	ldr	r3, [r3]
  40b56c:      	adds	r3, #0x4c
  40b56e:      	ldr	r5, [r3]
  40b570:      	add	r3, sp, #0xd0
  40b572:      	ldr	r6, [r3]
  40b574:      	add	r3, sp, #0xd0
  40b576:      	ldr	r3, [r3]
  40b578:      	ldr.w	r3, [r3, #0xe8]
  40b57c:      	vldr	d7, [r3, #40]
  40b580:      	vcvt.f32.f64	s13, d7
  40b584:      	add	r3, sp, #0xd0
  40b586:      	ldr	r3, [r3]
  40b588:      	ldr.w	r3, [r3, #0xe8]
  40b58c:      	vldr	d7, [r3, #48]
  40b590:      	vcvt.f32.f64	s15, d7
  40b594:      	add.w	r3, sp, #0x410
  40b598:      	mov	r0, r3
  40b59a:      	vmov	r1, s13
  40b59e:      	vmov	r2, s15
  40b5a2:      	bl	0x592cf0 <_ZN7cocos2d7CCPointC2Eff> @ imm = #0x18774a
  40b5a6:      	add.w	r3, sp, #0x410
  40b5aa:      	mov	r0, r6
  40b5ac:      	mov	r1, r3
  40b5ae:      	blx	r5
  40b5b0:      	add	r3, sp, #0xd0
  40b5b2:      	ldr	r3, [r3]
  40b5b4:      	ldr.w	r5, [r3, #0xe8]
  40b5b8:      	add	r3, sp, #0x8
  40b5ba:      	mov	r0, r3
  40b5bc:      	vldr	d0, [pc, #376]          @ 0x40b738 <_ZN13TrainingStage8doLessonEf+0x1460>
  40b5c0:      	vmov.f64	d1, #2.500000e+01
  40b5c4:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x30f4
  40b5c8:      	add	r3, sp, #0x8
  40b5ca:      	adds	r5, #0x38
  40b5cc:      	ldm	r3, {r0, r1, r2, r3}
  40b5ce:      	stm.w	r5, {r0, r1, r2, r3}
  40b5d2:      	add	r3, sp, #0xd0
  40b5d4:      	ldr	r3, [r3]
  40b5d6:      	ldr.w	r1, [r3, #0xe8]
  40b5da:      	mov.w	r2, #0x0
  40b5de:      	mov.w	r3, #0x40000000
  40b5e2:      	strd	r2, r3, [r1, #96]
  40b5e6:      	add	r3, sp, #0xd0
  40b5e8:      	ldr	r3, [r3]
  40b5ea:      	ldr	r3, [r3]
  40b5ec:      	add.w	r3, r3, #0x288
  40b5f0:      	ldr	r3, [r3]
  40b5f2:      	add	r2, sp, #0xd0
  40b5f4:      	ldr	r0, [r2]
  40b5f6:      	movs	r1, #0x0
  40b5f8:      	blx	r3
  40b5fa:      	add	r3, sp, #0xd0
  40b5fc:      	ldr	r3, [r3]
  40b5fe:      	ldr	r3, [r3]
  40b600:      	add.w	r3, r3, #0x278
  40b604:      	ldr	r3, [r3]
  40b606:      	add	r2, sp, #0xd0
  40b608:      	ldr	r0, [r2]
  40b60a:      	movs	r1, #0x0
  40b60c:      	blx	r3
  40b60e:      	bl	0x5e06b0 <_ZN7cocos2d20CCNotificationCenter24sharedNotificationCenterEv> @ imm = #0x1d509e
  40b612:      	mov	r2, r0
  40b614:      	add	r3, sp, #0xd0
  40b616:      	mov	r0, r2
  40b618:      	ldr	r2, [pc, #0x128]        @ 0x40b744 <_ZN13TrainingStage8doLessonEf+0x146c>
  40b61a:      	add	r2, pc
  40b61c:      	mov	r1, r2
  40b61e:      	ldr	r2, [r3]
  40b620:      	bl	0x5e0b2c <_ZN7cocos2d20CCNotificationCenter16postNotificationEPKcPNS_8CCObjectE> @ imm = #0x1d5508
  40b624:      	bl	0x417984 <_ZN13WeaponFactory19sharedWeaponFactoryEv> @ imm = #0xc35c
  40b628:      	mov	r3, r0
  40b62a:      	mov	r0, r3
  40b62c:      	movs	r1, #0x6
  40b62e:      	bl	0x4186fc <_ZN13WeaponFactory24createWeaponFromAmmoTypeE8ItemType> @ imm = #0xd0ca
  40b632:      	mov	r2, r0
  40b634:      	add	r3, sp, #0xd0
  40b636:      	str	r2, [r3]
  40b638:      	add	r3, sp, #0xd0
  40b63a:      	ldr	r3, [r3]
  40b63c:      	ldr	r3, [r3]
  40b63e:      	add.w	r3, r3, #0x200
  40b642:      	ldr	r5, [r3]
  40b644:      	ldr	r3, [pc, #0xf8]         @ 0x40b740 <_ZN13TrainingStage8doLessonEf+0x1468>
  40b646:      	ldr	r3, [r4, r3]
  40b648:      	ldr	r3, [r3]
  40b64a:      	ldr	r3, [r3]
  40b64c:      	add.w	r3, r3, #0x1c0
  40b650:      	ldr	r3, [r3]
  40b652:      	ldr	r2, [pc, #0xec]         @ 0x40b740 <_ZN13TrainingStage8doLessonEf+0x1468>
  40b654:      	ldr	r2, [r4, r2]
  40b656:      	ldr	r2, [r2]
  40b658:      	add.w	r1, sp, #0x410
  40b65c:      	mov	r0, r1
  40b65e:      	mov	r1, r2
  40b660:      	blx	r3
  40b662:      	add	r2, sp, #0xd0
  40b664:      	add.w	r3, sp, #0x410
  40b668:      	ldr	r0, [r2]
  40b66a:      	mov	r1, r3
  40b66c:      	blx	r5
  40b66e:      	add.w	r3, sp, #0x410
  40b672:      	mov	r0, r3
  40b674:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3aa29c
  40b678:      	add	r3, sp, #0xd0
  40b67a:      	ldr	r3, [r3]
  40b67c:      	ldr.w	r5, [r3, #0xe8]
  40b680:      	ldr	r3, [pc, #0xbc]         @ 0x40b740 <_ZN13TrainingStage8doLessonEf+0x1468>
  40b682:      	ldr	r3, [r4, r3]
  40b684:      	ldr	r3, [r3]
  40b686:      	ldr.w	r4, [r3, #0x138]
  40b68a:      	add	r3, sp, #0x140
  40b68c:      	mov	r0, r3
  40b68e:      	vmov.f64	d0, #1.000000e+01
  40b692:      	vldr	d1, [pc, #164]          @ 0x40b738 <_ZN13TrainingStage8doLessonEf+0x1460>
  40b696:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x31c6
  40b69a:      	add	r2, sp, #0x8
  40b69c:      	vldr	d4, [r4, #40]
  40b6a0:      	vldr	d5, [r4, #48]
  40b6a4:      	add	r3, sp, #0x140
  40b6a6:      	vldr	d6, [r3]
  40b6aa:      	vldr	d7, [r3, #8]
  40b6ae:      	mov	r0, r2
  40b6b0:      	vmov.f64	d0, d4
  40b6b4:      	vmov.f64	d1, d5
  40b6b8:      	vmov.f64	d2, d6
  40b6bc:      	vmov.f64	d3, d7
  40b6c0:      	bl	0x4084fc <_ZN6Tracer14checkCollisionEv+0x470> @ imm = #-0x31c8
  40b6c4:      	add	r3, sp, #0x8
  40b6c6:      	add.w	r4, r5, #0x28
  40b6ca:      	ldm	r3, {r0, r1, r2, r3}
  40b6cc:      	stm.w	r4, {r0, r1, r2, r3}
  40b6d0:      	add	r3, sp, #0xd0
  40b6d2:      	ldr	r3, [r3]
  40b6d4:      	ldr	r3, [r3]
  40b6d6:      	adds	r3, #0x4c
  40b6d8:      	ldr	r4, [r3]
  40b6da:      	add	r3, sp, #0xd0
  40b6dc:      	ldr	r5, [r3]
  40b6de:      	add	r3, sp, #0xd0
  40b6e0:      	ldr	r3, [r3]
  40b6e2:      	ldr.w	r3, [r3, #0xe8]
  40b6e6:      	vldr	d7, [r3, #40]
  40b6ea:      	vcvt.f32.f64	s13, d7
  40b6ee:      	add	r3, sp, #0xd0
  40b6f0:      	ldr	r3, [r3]
  40b6f2:      	ldr.w	r3, [r3, #0xe8]
  40b6f6:      	vldr	d7, [r3, #48]
  40b6fa:      	vcvt.f32.f64	s15, d7
  40b6fe:      	add.w	r3, sp, #0x410
  40b702:      	mov	r0, r3
  40b704:      	vmov	r1, s13
  40b708:      	vmov	r2, s15
  40b70c:      	bl	0x592cf0 <_ZN7cocos2d7CCPointC2Eff> @ imm = #0x1875e0
  40b710:      	add.w	r3, sp, #0x410
  40b714:      	mov	r0, r5
  40b716:      	mov	r1, r3
  40b718:      	blx	r4
  40b71a:      	add	r3, sp, #0xd0
  40b71c:      	ldr	r3, [r3]
  40b71e:      	ldr.w	r4, [r3, #0xe8]
  40b722:      	add	r3, sp, #0x8
  40b724:      	mov	r0, r3
  40b726:      	vldr	d0, [pc, #16]           @ 0x40b738 <_ZN13TrainingStage8doLessonEf+0x1460>
  40b72a:      	vmov.f64	d1, #2.500000e+01
  40b72e:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x325e
  40b732:      	add	r3, sp, #0x8
  40b734:      	b	0x40b748 <_ZN13TrainingStage8doLessonEf+0x1470> @ imm = #0x10
// TrainingStage::doLesson  ghidra=0x41b748-0x41ba9b  elf=0x40b748-0x40ba9b  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  40b748:      	adds	r4, #0x38
  40b74a:      	ldm	r3, {r0, r1, r2, r3}
  40b74c:      	stm.w	r4, {r0, r1, r2, r3}
  40b750:      	add	r3, sp, #0xd0
  40b752:      	ldr	r3, [r3]
  40b754:      	ldr.w	r1, [r3, #0xe8]
  40b758:      	mov.w	r2, #0x0
  40b75c:      	mov.w	r3, #0x40000000
  40b760:      	strd	r2, r3, [r1, #96]
  40b764:      	add	r3, sp, #0xd0
  40b766:      	ldr	r3, [r3]
  40b768:      	ldr	r3, [r3]
  40b76a:      	add.w	r3, r3, #0x288
  40b76e:      	ldr	r3, [r3]
  40b770:      	add	r2, sp, #0xd0
  40b772:      	ldr	r0, [r2]
  40b774:      	movs	r1, #0x0
  40b776:      	blx	r3
  40b778:      	add	r3, sp, #0xd0
  40b77a:      	ldr	r3, [r3]
  40b77c:      	ldr	r3, [r3]
  40b77e:      	add.w	r3, r3, #0x278
  40b782:      	ldr	r3, [r3]
  40b784:      	add	r2, sp, #0xd0
  40b786:      	ldr	r0, [r2]
  40b788:      	movs	r1, #0x0
  40b78a:      	blx	r3
  40b78c:      	bl	0x5e06b0 <_ZN7cocos2d20CCNotificationCenter24sharedNotificationCenterEv> @ imm = #0x1d4f20
  40b790:      	mov	r2, r0
  40b792:      	add	r3, sp, #0xd0
  40b794:      	mov	r0, r2
  40b796:      	ldr	r2, [pc, #0x318]        @ 0x40bab0 <_ZN13TrainingStage8doLessonEf+0x17d8>
  40b798:      	add	r2, pc
  40b79a:      	mov	r1, r2
  40b79c:      	ldr	r2, [r3]
  40b79e:      	bl	0x5e0b2c <_ZN7cocos2d20CCNotificationCenter16postNotificationEPKcPNS_8CCObjectE> @ imm = #0x1d538a
  40b7a2:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x676e
  40b7a6:      	add	r3, sp, #0x1c
  40b7a8:      	ldr	r3, [r3]
  40b7aa:      	ldr.w	r3, [r3, #0x17c]
  40b7ae:      	ldr	r3, [r3]
  40b7b0:      	add.w	r3, r3, #0x238
  40b7b4:      	ldr	r3, [r3]
  40b7b6:      	add	r2, sp, #0x1c
  40b7b8:      	ldr	r2, [r2]
  40b7ba:      	ldr.w	r2, [r2, #0x17c]
  40b7be:      	mov	r0, r2
  40b7c0:      	mov.w	r1, #0x0
  40b7c4:      	movt	r1, #0x4334
  40b7c8:      	blx	r3
  40b7ca:      	ldr	r3, [pc, #0x2e8]        @ 0x40bab4 <_ZN13TrainingStage8doLessonEf+0x17dc>
  40b7cc:      	ldr	r3, [r4, r3]
  40b7ce:      	ldr	r3, [r3]
  40b7d0:      	ldr	r3, [r3]
  40b7d2:      	add.w	r3, r3, #0x2a4
  40b7d6:      	ldr	r3, [r3]
  40b7d8:      	ldr	r2, [pc, #0x2d8]        @ 0x40bab4 <_ZN13TrainingStage8doLessonEf+0x17dc>
  40b7da:      	ldr	r2, [r4, r2]
  40b7dc:      	ldr	r2, [r2]
  40b7de:      	mov	r0, r2
  40b7e0:      	mov.w	r1, #0x0
  40b7e4:      	blx	r3
  40b7e6:      	add	r3, sp, #0x1c
  40b7e8:      	ldr	r3, [r3]
  40b7ea:      	ldr.w	r3, [r3, #0x17c]
  40b7ee:      	movs	r2, #0x1
  40b7f0:      	strb.w	r2, [r3, #0x11c]
  40b7f4:      	add	r3, sp, #0x1c
  40b7f6:      	ldr	r3, [r3]
  40b7f8:      	ldr.w	r3, [r3, #0x17c]
  40b7fc:      	ldr	r3, [r3]
  40b7fe:      	add.w	r3, r3, #0x230
  40b802:      	ldr	r5, [r3]
  40b804:      	add	r3, sp, #0x1c
  40b806:      	ldr	r3, [r3]
  40b808:      	ldr.w	r3, [r3, #0x17c]
  40b80c:      	mov	r6, r3
  40b80e:      	add	r3, sp, #0x150
  40b810:      	mov	r0, r3
  40b812:      	vmov.f64	d0, #7.500000e-01
  40b816:      	vldr	d1, [pc, #648]          @ 0x40baa0 <_ZN13TrainingStage8doLessonEf+0x17c8>
  40b81a:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x334a
  40b81e:      	add	r3, sp, #0x150
  40b820:      	mov	r2, sp
  40b822:      	add.w	r1, r3, #0x8
  40b826:      	ldm	r1, {r0, r1}
  40b828:      	stm.w	r2, {r0, r1}
  40b82c:      	ldm	r3, {r2, r3}
  40b82e:      	mov	r0, r6
  40b830:      	blx	r5
  40b832:      	add	r3, sp, #0x1c
  40b834:      	ldr	r3, [r3]
  40b836:      	ldr.w	r3, [r3, #0x17c]
  40b83a:      	ldr.w	r3, [r3, #0x138]
  40b83e:      	vldr	d6, [r3, #40]
  40b842:      	ldr	r3, [pc, #0x270]        @ 0x40bab4 <_ZN13TrainingStage8doLessonEf+0x17dc>
  40b844:      	ldr	r3, [r4, r3]
  40b846:      	ldr	r3, [r3]
  40b848:      	ldr.w	r3, [r3, #0x138]
  40b84c:      	vldr	d5, [r3, #40]
  40b850:      	vldr	d7, [pc, #596]          @ 0x40baa8 <_ZN13TrainingStage8doLessonEf+0x17d0>
  40b854:      	vadd.f64	d7, d5, d7
  40b858:      	vcmpe.f64	d6, d7
  40b85c:      	vmrs	APSR_nzcv, fpscr
  40b860:      	bgt	0x40b866 <_ZN13TrainingStage8doLessonEf+0x158e> @ imm = #0x2
  40b862:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x66ae
  40b866:      	add	r3, sp, #0x1c
  40b868:      	ldr	r3, [r3]
  40b86a:      	ldr.w	r5, [r3, #0x10c]
  40b86e:      	add.w	r3, sp, #0x400
  40b872:      	mov	r0, r3
  40b874:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x37eb7c
  40b878:      	add.w	r2, sp, #0x410
  40b87c:      	add.w	r3, sp, #0x400
  40b880:      	mov	r0, r2
  40b882:      	ldr	r2, [pc, #0x234]        @ 0x40bab8 <_ZN13TrainingStage8doLessonEf+0x17e0>
  40b884:      	add	r2, pc
  40b886:      	mov	r1, r2
  40b888:      	mov	r2, r3
  40b88a:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3ab1d2
  40b88e:      	movs	r0, #0x0
  40b890:      	movs	r1, #0x0
  40b892:      	movs	r2, #0xff
  40b894:      	bl	0x408458 <_ZN6Tracer14checkCollisionEv+0x3cc> @ imm = #-0x3440
  40b898:      	mov	r2, r0
  40b89a:      	add	r3, sp, #0x44
  40b89c:      	mov	r1, r2
  40b89e:      	strb	r1, [r3]
  40b8a0:      	ubfx	r1, r2, #0x8, #0x8
  40b8a4:      	strb	r1, [r3, #0x1]
  40b8a6:      	ubfx	r2, r2, #0x10, #0x8
  40b8aa:      	strb	r2, [r3, #0x2]
  40b8ac:      	add.w	r2, sp, #0x410
  40b8b0:      	add	r3, sp, #0x44
  40b8b2:      	mov	r0, r5
  40b8b4:      	mov	r1, r2
  40b8b6:      	ldr	r2, [r3]
  40b8b8:      	movs	r3, #0x5
  40b8ba:      	bl	0x33d2c0 <_ZN3HUD10addMessageESsN7cocos2d10_ccColor3BEs> @ imm = #-0xce5fe
  40b8be:      	add.w	r3, sp, #0x410
  40b8c2:      	mov	r0, r3
  40b8c4:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3aa04c
  40b8c8:      	add.w	r3, sp, #0x400
  40b8cc:      	mov	r0, r3
  40b8ce:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x37eb2a
  40b8d2:      	ldr	r3, [pc, #0x1e8]        @ 0x40babc <_ZN13TrainingStage8doLessonEf+0x17e4>
  40b8d4:      	ldr	r3, [r4, r3]
  40b8d6:      	ldr	r3, [r3]
  40b8d8:      	mov	r0, r3
  40b8da:      	movs	r1, #0x3a
  40b8dc:      	movs	r2, #0x1
  40b8de:      	bl	0x3f7d40 <_ZN5Sound18playSoundWithVoiceEii> @ imm = #-0x13ba2
  40b8e2:      	add	r3, sp, #0x1c
  40b8e4:      	ldr	r3, [r3]
  40b8e6:      	ldr.w	r3, [r3, #0x17c]
  40b8ea:      	ldr	r3, [r3]
  40b8ec:      	add.w	r3, r3, #0x230
  40b8f0:      	ldr	r4, [r3]
  40b8f2:      	add	r3, sp, #0x1c
  40b8f4:      	ldr	r3, [r3]
  40b8f6:      	ldr.w	r3, [r3, #0x17c]
  40b8fa:      	mov	r5, r3
  40b8fc:      	add	r3, sp, #0x160
  40b8fe:      	mov	r0, r3
  40b900:      	vldr	d0, [pc, #412]          @ 0x40baa0 <_ZN13TrainingStage8doLessonEf+0x17c8>
  40b904:      	vldr	d1, [pc, #408]          @ 0x40baa0 <_ZN13TrainingStage8doLessonEf+0x17c8>
  40b908:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x3438
  40b90c:      	add	r3, sp, #0x160
  40b90e:      	mov	r2, sp
  40b910:      	add.w	r1, r3, #0x8
  40b914:      	ldm	r1, {r0, r1}
  40b916:      	stm.w	r2, {r0, r1}
  40b91a:      	ldm	r3, {r2, r3}
  40b91c:      	mov	r0, r5
  40b91e:      	blx	r4
  40b920:      	add	r3, sp, #0x1c
  40b922:      	ldr	r3, [r3]
  40b924:      	ldr.w	r3, [r3, #0x17c]
  40b928:      	movs	r2, #0x0
  40b92a:      	strb.w	r2, [r3, #0x11c]
  40b92e:      	add	r3, sp, #0x1c
  40b930:      	ldr	r3, [r3]
  40b932:      	ldr.w	r3, [r3, #0x180]
  40b936:      	adds	r2, r3, #0x1
  40b938:      	add	r3, sp, #0x1c
  40b93a:      	ldr	r3, [r3]
  40b93c:      	str.w	r2, [r3, #0x180]
  40b940:      	add	r3, sp, #0x1c
  40b942:      	ldr	r3, [r3]
  40b944:      	mov.w	r2, #0x0
  40b948:      	str.w	r2, [r3, #0x188]
  40b94c:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x65c4
  40b950:      	add	r3, sp, #0x1c
  40b952:      	ldr	r3, [r3]
  40b954:      	ldr.w	r3, [r3, #0x17c]
  40b958:      	ldr	r3, [r3]
  40b95a:      	add.w	r3, r3, #0x238
  40b95e:      	ldr	r3, [r3]
  40b960:      	add	r2, sp, #0x1c
  40b962:      	ldr	r2, [r2]
  40b964:      	ldr.w	r2, [r2, #0x17c]
  40b968:      	mov	r0, r2
  40b96a:      	mov.w	r1, #0x0
  40b96e:      	movt	r1, #0x4334
  40b972:      	blx	r3
  40b974:      	ldr	r3, [pc, #0x13c]        @ 0x40bab4 <_ZN13TrainingStage8doLessonEf+0x17dc>
  40b976:      	ldr	r3, [r4, r3]
  40b978:      	ldr	r3, [r3]
  40b97a:      	ldr	r3, [r3]
  40b97c:      	add.w	r3, r3, #0x2a4
  40b980:      	ldr	r3, [r3]
  40b982:      	ldr	r2, [pc, #0x130]        @ 0x40bab4 <_ZN13TrainingStage8doLessonEf+0x17dc>
  40b984:      	ldr	r2, [r4, r2]
  40b986:      	ldr	r2, [r2]
  40b988:      	mov	r0, r2
  40b98a:      	mov.w	r1, #0x0
  40b98e:      	blx	r3
  40b990:      	add	r3, sp, #0x1c
  40b992:      	ldr	r3, [r3]
  40b994:      	vldr	s14, [r3, #392]
  40b998:      	vmov.f32	s15, #3.000000e+00
  40b99c:      	vcmpe.f32	s14, s15
  40b9a0:      	vmrs	APSR_nzcv, fpscr
  40b9a4:      	bpl	0x40b9b2 <_ZN13TrainingStage8doLessonEf+0x16da> @ imm = #0xa
  40b9a6:      	add	r2, sp, #0x1c
  40b9a8:      	add	r3, sp, #0x18
  40b9aa:      	ldr	r0, [r2]
  40b9ac:      	ldr	r1, [r3]
  40b9ae:      	bl	0x409e30 <_ZN13TrainingStage11headChatterEf> @ imm = #-0x1b82
  40b9b2:      	add	r3, sp, #0x1c
  40b9b4:      	ldr	r3, [r3]
  40b9b6:      	ldr.w	r3, [r3, #0x174]
  40b9ba:      	ldr	r3, [r3]
  40b9bc:      	adds	r3, #0x90
  40b9be:      	ldr	r3, [r3]
  40b9c0:      	add	r2, sp, #0x1c
  40b9c2:      	ldr	r2, [r2]
  40b9c4:      	ldr.w	r2, [r2, #0x174]
  40b9c8:      	mov	r0, r2
  40b9ca:      	movs	r1, #0x0
  40b9cc:      	blx	r3
  40b9ce:      	ldr	r3, [pc, #0xe4]         @ 0x40bab4 <_ZN13TrainingStage8doLessonEf+0x17dc>
  40b9d0:      	ldr	r3, [r4, r3]
  40b9d2:      	ldr	r3, [r3]
  40b9d4:      	ldr.w	r3, [r3, #0x148]
  40b9d8:      	cmp	r3, #0x0
  40b9da:      	beq	0x40bac4 <_ZN13TrainingStage8doLessonEf+0x17ec> @ imm = #0xe6
  40b9dc:      	ldr	r3, [pc, #0xd4]         @ 0x40bab4 <_ZN13TrainingStage8doLessonEf+0x17dc>
  40b9de:      	ldr	r3, [r4, r3]
  40b9e0:      	ldr	r3, [r3]
  40b9e2:      	ldr.w	r3, [r3, #0x14c]
  40b9e6:      	cmp	r3, #0x0
  40b9e8:      	beq	0x40bac4 <_ZN13TrainingStage8doLessonEf+0x17ec> @ imm = #0xd8
  40b9ea:      	add	r3, sp, #0x1c
  40b9ec:      	ldr	r3, [r3]
  40b9ee:      	vldr	s14, [r3, #392]
  40b9f2:      	vmov.f32	s15, #5.000000e+00
  40b9f6:      	vcmpe.f32	s14, s15
  40b9fa:      	vmrs	APSR_nzcv, fpscr
  40b9fe:      	ble	0x40bac4 <_ZN13TrainingStage8doLessonEf+0x17ec> @ imm = #0xc2
  40ba00:      	add	r3, sp, #0x1c
  40ba02:      	ldr	r3, [r3]
  40ba04:      	ldr.w	r3, [r3, #0x180]
  40ba08:      	adds	r2, r3, #0x1
  40ba0a:      	add	r3, sp, #0x1c
  40ba0c:      	ldr	r3, [r3]
  40ba0e:      	str.w	r2, [r3, #0x180]
  40ba12:      	add	r3, sp, #0x1c
  40ba14:      	ldr	r3, [r3]
  40ba16:      	mov.w	r2, #0x0
  40ba1a:      	str.w	r2, [r3, #0x188]
  40ba1e:      	add	r3, sp, #0x1c
  40ba20:      	ldr	r3, [r3]
  40ba22:      	ldr.w	r5, [r3, #0x10c]
  40ba26:      	add.w	r3, sp, #0x400
  40ba2a:      	mov	r0, r3
  40ba2c:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x37e9c4
  40ba30:      	add.w	r2, sp, #0x410
  40ba34:      	add.w	r3, sp, #0x400
  40ba38:      	mov	r0, r2
  40ba3a:      	ldr	r2, [pc, #0x84]         @ 0x40bac0 <_ZN13TrainingStage8doLessonEf+0x17e8>
  40ba3c:      	add	r2, pc
  40ba3e:      	mov	r1, r2
  40ba40:      	mov	r2, r3
  40ba42:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3ab01a
  40ba46:      	movs	r0, #0x0
  40ba48:      	movs	r1, #0x0
  40ba4a:      	movs	r2, #0xff
  40ba4c:      	bl	0x408458 <_ZN6Tracer14checkCollisionEv+0x3cc> @ imm = #-0x35f8
  40ba50:      	mov	r2, r0
  40ba52:      	add	r3, sp, #0x48
  40ba54:      	mov	r1, r2
  40ba56:      	strb	r1, [r3]
  40ba58:      	ubfx	r1, r2, #0x8, #0x8
  40ba5c:      	strb	r1, [r3, #0x1]
  40ba5e:      	ubfx	r2, r2, #0x10, #0x8
  40ba62:      	strb	r2, [r3, #0x2]
  40ba64:      	add.w	r2, sp, #0x410
  40ba68:      	add	r3, sp, #0x48
  40ba6a:      	mov	r0, r5
  40ba6c:      	mov	r1, r2
  40ba6e:      	ldr	r2, [r3]
  40ba70:      	movs	r3, #0x2
  40ba72:      	bl	0x33d2c0 <_ZN3HUD10addMessageESsN7cocos2d10_ccColor3BEs> @ imm = #-0xce7b6
  40ba76:      	add.w	r3, sp, #0x410
  40ba7a:      	mov	r0, r3
  40ba7c:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3a9e94
  40ba80:      	add.w	r3, sp, #0x400
  40ba84:      	mov	r0, r3
  40ba86:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x37e972
  40ba8a:      	ldr	r3, [pc, #0x30]         @ 0x40babc <_ZN13TrainingStage8doLessonEf+0x17e4>
  40ba8c:      	ldr	r3, [r4, r3]
  40ba8e:      	ldr	r3, [r3]
  40ba90:      	mov	r0, r3
  40ba92:      	movs	r1, #0x3b
  40ba94:      	movs	r2, #0x1
  40ba96:      	bl	0x3f7d40 <_ZN5Sound18playSoundWithVoiceEii> @ imm = #-0x13d5a
  40ba9a:      	b	0x40bbdc <_ZN13TrainingStage8doLessonEf+0x1904> @ imm = #0x13e
// TrainingStage::doLesson  ghidra=0x41bac4-0x41c553  elf=0x40bac4-0x40c553  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  40bac4:      	ldr.w	r3, [pc, #0xa8c]        @ 0x40c554 <_ZN13TrainingStage8doLessonEf+0x227c>
  40bac8:      	ldr	r3, [r4, r3]
  40baca:      	ldr	r3, [r3]
  40bacc:      	ldr.w	r3, [r3, #0x148]
  40bad0:      	cmp	r3, #0x0
  40bad2:      	beq	0x40bae4 <_ZN13TrainingStage8doLessonEf+0x180c> @ imm = #0xe
  40bad4:      	ldr.w	r3, [pc, #0xa7c]        @ 0x40c554 <_ZN13TrainingStage8doLessonEf+0x227c>
  40bad8:      	ldr	r3, [r4, r3]
  40bada:      	ldr	r3, [r3]
  40badc:      	ldr.w	r3, [r3, #0x14c]
  40bae0:      	cmp	r3, #0x0
  40bae2:      	bne	0x40bbdc <_ZN13TrainingStage8doLessonEf+0x1904> @ imm = #0xf6
  40bae4:      	add	r3, sp, #0x1c
  40bae6:      	ldr	r3, [r3]
  40bae8:      	ldr.w	r3, [r3, #0x174]
  40baec:      	ldr	r3, [r3]
  40baee:      	adds	r3, #0x90
  40baf0:      	ldr	r3, [r3]
  40baf2:      	add	r2, sp, #0x1c
  40baf4:      	ldr	r2, [r2]
  40baf6:      	ldr.w	r2, [r2, #0x174]
  40bafa:      	mov	r0, r2
  40bafc:      	movs	r1, #0x1
  40bafe:      	blx	r3
  40bb00:      	add	r3, sp, #0x1c
  40bb02:      	ldr	r3, [r3]
  40bb04:      	ldr.w	r3, [r3, #0x174]
  40bb08:      	ldr	r3, [r3]
  40bb0a:      	adds	r3, #0x98
  40bb0c:      	ldr	r3, [r3]
  40bb0e:      	add	r2, sp, #0x1c
  40bb10:      	ldr	r2, [r2]
  40bb12:      	ldr.w	r2, [r2, #0x174]
  40bb16:      	mov	r0, r2
  40bb18:      	mov.w	r1, #0x0
  40bb1c:      	movt	r1, #0xc2b4
  40bb20:      	blx	r3
  40bb22:      	add	r3, sp, #0x1c
  40bb24:      	ldr	r3, [r3]
  40bb26:      	ldr.w	r3, [r3, #0x16c]
  40bb2a:      	ldr	r3, [r3]
  40bb2c:      	adds	r3, #0x4c
  40bb2e:      	ldr	r4, [r3]
  40bb30:      	add	r3, sp, #0x1c
  40bb32:      	ldr	r3, [r3]
  40bb34:      	ldr.w	r5, [r3, #0x16c]
  40bb38:      	add	r3, sp, #0x1c
  40bb3a:      	ldr	r3, [r3]
  40bb3c:      	vldr	s14, [r3, #392]
  40bb40:      	vmov.f32	s15, #5.000000e+00
  40bb44:      	vmul.f32	s15, s14, s15
  40bb48:      	vcvt.f64.f32	d7, s15
  40bb4c:      	vmov	r0, r1, d7
  40bb50:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x135c4c
  40bb54:      	vmov	d6, r0, r1
  40bb58:      	vmov.f64	d7, #1.000000e+01
  40bb5c:      	vmul.f64	d7, d6, d7
  40bb60:      	vcvt.f32.f64	s15, d7
  40bb64:      	add.w	r3, sp, #0x410
  40bb68:      	mov	r0, r3
  40bb6a:      	vmov	r1, s15
  40bb6e:      	mov.w	r2, #0x0
  40bb72:      	bl	0x592cf0 <_ZN7cocos2d7CCPointC2Eff> @ imm = #0x18717a
  40bb76:      	add.w	r3, sp, #0x410
  40bb7a:      	mov	r0, r5
  40bb7c:      	mov	r1, r3
  40bb7e:      	blx	r4
  40bb80:      	add	r3, sp, #0x1c
  40bb82:      	ldr	r3, [r3]
  40bb84:      	ldr.w	r3, [r3, #0x174]
  40bb88:      	ldr	r3, [r3]
  40bb8a:      	adds	r3, #0x4c
  40bb8c:      	ldr	r4, [r3]
  40bb8e:      	add	r3, sp, #0x1c
  40bb90:      	ldr	r3, [r3]
  40bb92:      	ldr.w	r5, [r3, #0x174]
  40bb96:      	add	r3, sp, #0x1c
  40bb98:      	ldr	r3, [r3]
  40bb9a:      	ldr.w	r3, [r3, #0x10c]
  40bb9e:      	add.w	r6, r3, #0x158
  40bba2:      	add.w	r3, sp, #0x400
  40bba6:      	mov	r0, r3
  40bba8:      	mov.w	r1, #0x0
  40bbac:      	movt	r1, #0x4170
  40bbb0:      	mov.w	r2, #0x0
  40bbb4:      	movt	r2, #0xc28c
  40bbb8:      	bl	0x592cf0 <_ZN7cocos2d7CCPointC2Eff> @ imm = #0x187134
  40bbbc:      	add.w	r2, sp, #0x410
  40bbc0:      	add.w	r3, sp, #0x400
  40bbc4:      	mov	r0, r2
  40bbc6:      	mov	r1, r6
  40bbc8:      	mov	r2, r3
  40bbca:      	bl	0x4084b4 <_ZN6Tracer14checkCollisionEv+0x428> @ imm = #-0x371a
  40bbce:      	add.w	r3, sp, #0x410
  40bbd2:      	mov	r0, r5
  40bbd4:      	mov	r1, r3
  40bbd6:      	blx	r4
  40bbd8:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x6338
  40bbdc:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x6334
  40bbe0:      	add	r3, sp, #0x1c
  40bbe2:      	ldr	r3, [r3]
  40bbe4:      	ldr.w	r3, [r3, #0x17c]
  40bbe8:      	ldr	r3, [r3]
  40bbea:      	add.w	r3, r3, #0x238
  40bbee:      	ldr	r3, [r3]
  40bbf0:      	add	r2, sp, #0x1c
  40bbf2:      	ldr	r2, [r2]
  40bbf4:      	ldr.w	r2, [r2, #0x17c]
  40bbf8:      	mov	r0, r2
  40bbfa:      	mov.w	r1, #0x0
  40bbfe:      	movt	r1, #0x4334
  40bc02:      	blx	r3
  40bc04:      	ldr.w	r3, [pc, #0x94c]        @ 0x40c554 <_ZN13TrainingStage8doLessonEf+0x227c>
  40bc08:      	ldr	r3, [r4, r3]
  40bc0a:      	ldr	r3, [r3]
  40bc0c:      	ldr	r3, [r3]
  40bc0e:      	add.w	r3, r3, #0x2a4
  40bc12:      	ldr	r3, [r3]
  40bc14:      	ldr.w	r2, [pc, #0x93c]        @ 0x40c554 <_ZN13TrainingStage8doLessonEf+0x227c>
  40bc18:      	ldr	r2, [r4, r2]
  40bc1a:      	ldr	r2, [r2]
  40bc1c:      	mov	r0, r2
  40bc1e:      	mov.w	r1, #0x0
  40bc22:      	blx	r3
  40bc24:      	add	r3, sp, #0x1c
  40bc26:      	ldr	r3, [r3]
  40bc28:      	vldr	s14, [r3, #392]
  40bc2c:      	vmov.f32	s15, #1.000000e+00
  40bc30:      	vcmpe.f32	s14, s15
  40bc34:      	vmrs	APSR_nzcv, fpscr
  40bc38:      	bpl	0x40bc46 <_ZN13TrainingStage8doLessonEf+0x196e> @ imm = #0xa
  40bc3a:      	add	r2, sp, #0x1c
  40bc3c:      	add	r3, sp, #0x18
  40bc3e:      	ldr	r0, [r2]
  40bc40:      	ldr	r1, [r3]
  40bc42:      	bl	0x409e30 <_ZN13TrainingStage11headChatterEf> @ imm = #-0x1e16
  40bc46:      	add	r3, sp, #0x1c
  40bc48:      	ldr	r3, [r3]
  40bc4a:      	vldr	s14, [r3, #392]
  40bc4e:      	vmov.f32	s15, #3.000000e+00
  40bc52:      	vcmpe.f32	s14, s15
  40bc56:      	vmrs	APSR_nzcv, fpscr
  40bc5a:      	bgt	0x40bc60 <_ZN13TrainingStage8doLessonEf+0x1988> @ imm = #0x2
  40bc5c:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x62b4
  40bc60:      	add	r3, sp, #0x1c
  40bc62:      	ldr	r3, [r3]
  40bc64:      	ldr.w	r3, [r3, #0x180]
  40bc68:      	adds	r2, r3, #0x1
  40bc6a:      	add	r3, sp, #0x1c
  40bc6c:      	ldr	r3, [r3]
  40bc6e:      	str.w	r2, [r3, #0x180]
  40bc72:      	add	r3, sp, #0x1c
  40bc74:      	ldr	r3, [r3]
  40bc76:      	mov.w	r2, #0x0
  40bc7a:      	str.w	r2, [r3, #0x188]
  40bc7e:      	add	r3, sp, #0x1c
  40bc80:      	ldr	r3, [r3]
  40bc82:      	ldr.w	r5, [r3, #0x10c]
  40bc86:      	add.w	r3, sp, #0x400
  40bc8a:      	mov	r0, r3
  40bc8c:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x37e764
  40bc90:      	add.w	r2, sp, #0x410
  40bc94:      	add.w	r3, sp, #0x400
  40bc98:      	mov	r0, r2
  40bc9a:      	ldr.w	r2, [pc, #0x8bc]        @ 0x40c558 <_ZN13TrainingStage8doLessonEf+0x2280>
  40bc9e:      	add	r2, pc
  40bca0:      	mov	r1, r2
  40bca2:      	mov	r2, r3
  40bca4:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3aadb8
  40bca8:      	movs	r0, #0x0
  40bcaa:      	movs	r1, #0x0
  40bcac:      	movs	r2, #0xff
  40bcae:      	bl	0x408458 <_ZN6Tracer14checkCollisionEv+0x3cc> @ imm = #-0x385a
  40bcb2:      	mov	r2, r0
  40bcb4:      	add	r3, sp, #0x4c
  40bcb6:      	mov	r1, r2
  40bcb8:      	strb	r1, [r3]
  40bcba:      	ubfx	r1, r2, #0x8, #0x8
  40bcbe:      	strb	r1, [r3, #0x1]
  40bcc0:      	ubfx	r2, r2, #0x10, #0x8
  40bcc4:      	strb	r2, [r3, #0x2]
  40bcc6:      	add.w	r2, sp, #0x410
  40bcca:      	add	r3, sp, #0x4c
  40bccc:      	mov	r0, r5
  40bcce:      	mov	r1, r2
  40bcd0:      	ldr	r2, [r3]
  40bcd2:      	movs	r3, #0x4
  40bcd4:      	bl	0x33d2c0 <_ZN3HUD10addMessageESsN7cocos2d10_ccColor3BEs> @ imm = #-0xcea18
  40bcd8:      	add.w	r3, sp, #0x410
  40bcdc:      	mov	r0, r3
  40bcde:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3a9c32
  40bce2:      	add.w	r3, sp, #0x400
  40bce6:      	mov	r0, r3
  40bce8:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x37e710
  40bcec:      	ldr.w	r3, [pc, #0x864]        @ 0x40c554 <_ZN13TrainingStage8doLessonEf+0x227c>
  40bcf0:      	ldr	r3, [r4, r3]
  40bcf2:      	ldr	r3, [r3]
  40bcf4:      	ldr.w	r3, [r3, #0x148]
  40bcf8:      	ldr	r3, [r3]
  40bcfa:      	add.w	r3, r3, #0x27c
  40bcfe:      	ldr	r3, [r3]
  40bd00:      	ldr.w	r2, [pc, #0x850]        @ 0x40c554 <_ZN13TrainingStage8doLessonEf+0x227c>
  40bd04:      	ldr	r2, [r4, r2]
  40bd06:      	ldr	r2, [r2]
  40bd08:      	ldr.w	r2, [r2, #0x148]
  40bd0c:      	mov	r0, r2
  40bd0e:      	blx	r3
  40bd10:      	mov	r2, r0
  40bd12:      	add	r3, sp, #0x1c
  40bd14:      	ldr	r3, [r3]
  40bd16:      	str.w	r2, [r3, #0x190]
  40bd1a:      	ldr.w	r3, [pc, #0x840]        @ 0x40c55c <_ZN13TrainingStage8doLessonEf+0x2284>
  40bd1e:      	ldr	r3, [r4, r3]
  40bd20:      	ldr	r3, [r3]
  40bd22:      	mov	r0, r3
  40bd24:      	movs	r1, #0x3c
  40bd26:      	movs	r2, #0x1
  40bd28:      	bl	0x3f7d40 <_ZN5Sound18playSoundWithVoiceEii> @ imm = #-0x13fec
  40bd2c:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x61e4
  40bd30:      	add	r3, sp, #0x1c
  40bd32:      	ldr	r3, [r3]
  40bd34:      	ldr.w	r3, [r3, #0x17c]
  40bd38:      	ldr	r3, [r3]
  40bd3a:      	add.w	r3, r3, #0x238
  40bd3e:      	ldr	r3, [r3]
  40bd40:      	add	r2, sp, #0x1c
  40bd42:      	ldr	r2, [r2]
  40bd44:      	ldr.w	r2, [r2, #0x17c]
  40bd48:      	mov	r0, r2
  40bd4a:      	mov.w	r1, #0x0
  40bd4e:      	movt	r1, #0x4334
  40bd52:      	blx	r3
  40bd54:      	ldr.w	r3, [pc, #0x7fc]        @ 0x40c554 <_ZN13TrainingStage8doLessonEf+0x227c>
  40bd58:      	ldr	r3, [r4, r3]
  40bd5a:      	ldr	r3, [r3]
  40bd5c:      	ldr	r3, [r3]
  40bd5e:      	add.w	r3, r3, #0x2a4
  40bd62:      	ldr	r3, [r3]
  40bd64:      	ldr.w	r2, [pc, #0x7ec]        @ 0x40c554 <_ZN13TrainingStage8doLessonEf+0x227c>
  40bd68:      	ldr	r2, [r4, r2]
  40bd6a:      	ldr	r2, [r2]
  40bd6c:      	mov	r0, r2
  40bd6e:      	mov.w	r1, #0x0
  40bd72:      	blx	r3
  40bd74:      	add	r3, sp, #0x1c
  40bd76:      	ldr	r3, [r3]
  40bd78:      	vldr	s14, [r3, #392]
  40bd7c:      	vmov.f32	s15, #2.000000e+00
  40bd80:      	vcmpe.f32	s14, s15
  40bd84:      	vmrs	APSR_nzcv, fpscr
  40bd88:      	bpl	0x40bd96 <_ZN13TrainingStage8doLessonEf+0x1abe> @ imm = #0xa
  40bd8a:      	add	r2, sp, #0x1c
  40bd8c:      	add	r3, sp, #0x18
  40bd8e:      	ldr	r0, [r2]
  40bd90:      	ldr	r1, [r3]
  40bd92:      	bl	0x409e30 <_ZN13TrainingStage11headChatterEf> @ imm = #-0x1f66
  40bd96:      	add	r3, sp, #0x1c
  40bd98:      	ldr	r3, [r3]
  40bd9a:      	ldr.w	r3, [r3, #0x174]
  40bd9e:      	ldr	r3, [r3]
  40bda0:      	adds	r3, #0x90
  40bda2:      	ldr	r3, [r3]
  40bda4:      	add	r2, sp, #0x1c
  40bda6:      	ldr	r2, [r2]
  40bda8:      	ldr.w	r2, [r2, #0x174]
  40bdac:      	mov	r0, r2
  40bdae:      	movs	r1, #0x0
  40bdb0:      	blx	r3
  40bdb2:      	ldr.w	r3, [pc, #0x7a0]        @ 0x40c554 <_ZN13TrainingStage8doLessonEf+0x227c>
  40bdb6:      	ldr	r3, [r4, r3]
  40bdb8:      	ldr	r3, [r3]
  40bdba:      	ldr.w	r3, [r3, #0x148]
  40bdbe:      	ldr	r3, [r3]
  40bdc0:      	add.w	r3, r3, #0x27c
  40bdc4:      	ldr	r3, [r3]
  40bdc6:      	ldr.w	r2, [pc, #0x78c]        @ 0x40c554 <_ZN13TrainingStage8doLessonEf+0x227c>
  40bdca:      	ldr	r2, [r4, r2]
  40bdcc:      	ldr	r2, [r2]
  40bdce:      	ldr.w	r2, [r2, #0x148]
  40bdd2:      	mov	r0, r2
  40bdd4:      	blx	r3
  40bdd6:      	mov	r2, r0
  40bdd8:      	add	r3, sp, #0x1c
  40bdda:      	ldr	r3, [r3]
  40bddc:      	ldr.w	r3, [r3, #0x190]
  40bde0:      	cmp	r2, r3
  40bde2:      	beq	0x40bdfe <_ZN13TrainingStage8doLessonEf+0x1b26> @ imm = #0x18
  40bde4:      	add	r3, sp, #0x1c
  40bde6:      	ldr	r3, [r3]
  40bde8:      	vldr	s14, [r3, #392]
  40bdec:      	vmov.f32	s15, #4.000000e+00
  40bdf0:      	vcmpe.f32	s14, s15
  40bdf4:      	vmrs	APSR_nzcv, fpscr
  40bdf8:      	ble	0x40bdfe <_ZN13TrainingStage8doLessonEf+0x1b26> @ imm = #0x2
  40bdfa:      	movs	r3, #0x1
  40bdfc:      	b	0x40be00 <_ZN13TrainingStage8doLessonEf+0x1b28> @ imm = #0x0
  40bdfe:      	movs	r3, #0x0
  40be00:      	cmp	r3, #0x0
  40be02:      	beq	0x40be24 <_ZN13TrainingStage8doLessonEf+0x1b4c> @ imm = #0x1e
  40be04:      	add	r3, sp, #0x1c
  40be06:      	ldr	r3, [r3]
  40be08:      	ldr.w	r3, [r3, #0x180]
  40be0c:      	adds	r2, r3, #0x1
  40be0e:      	add	r3, sp, #0x1c
  40be10:      	ldr	r3, [r3]
  40be12:      	str.w	r2, [r3, #0x180]
  40be16:      	add	r3, sp, #0x1c
  40be18:      	ldr	r3, [r3]
  40be1a:      	mov.w	r2, #0x0
  40be1e:      	str.w	r2, [r3, #0x188]
  40be22:      	b	0x40bf6a <_ZN13TrainingStage8doLessonEf+0x1c92> @ imm = #0x144
  40be24:      	ldr.w	r3, [pc, #0x72c]        @ 0x40c554 <_ZN13TrainingStage8doLessonEf+0x227c>
  40be28:      	ldr	r3, [r4, r3]
  40be2a:      	ldr	r3, [r3]
  40be2c:      	ldr.w	r3, [r3, #0x148]
  40be30:      	ldr	r3, [r3]
  40be32:      	add.w	r3, r3, #0x27c
  40be36:      	ldr	r3, [r3]
  40be38:      	ldr.w	r2, [pc, #0x718]        @ 0x40c554 <_ZN13TrainingStage8doLessonEf+0x227c>
  40be3c:      	ldr	r2, [r4, r2]
  40be3e:      	ldr	r2, [r2]
  40be40:      	ldr.w	r2, [r2, #0x148]
  40be44:      	mov	r0, r2
  40be46:      	blx	r3
  40be48:      	mov	r2, r0
  40be4a:      	add	r3, sp, #0x1c
  40be4c:      	ldr	r3, [r3]
  40be4e:      	ldr.w	r3, [r3, #0x190]
  40be52:      	cmp	r2, r3
  40be54:      	ite	ne
  40be56:      	movne	r3, #0x0
  40be58:      	moveq	r3, #0x1
  40be5a:      	uxtb	r3, r3
  40be5c:      	cmp	r3, #0x0
  40be5e:      	beq.w	0x40bf6a <_ZN13TrainingStage8doLessonEf+0x1c92> @ imm = #0x108
  40be62:      	add	r3, sp, #0x1c
  40be64:      	ldr	r3, [r3]
  40be66:      	ldr.w	r3, [r3, #0x174]
  40be6a:      	ldr	r3, [r3]
  40be6c:      	adds	r3, #0x90
  40be6e:      	ldr	r3, [r3]
  40be70:      	add	r2, sp, #0x1c
  40be72:      	ldr	r2, [r2]
  40be74:      	ldr.w	r2, [r2, #0x174]
  40be78:      	mov	r0, r2
  40be7a:      	movs	r1, #0x1
  40be7c:      	blx	r3
  40be7e:      	add	r3, sp, #0x1c
  40be80:      	ldr	r3, [r3]
  40be82:      	ldr.w	r3, [r3, #0x174]
  40be86:      	ldr	r3, [r3]
  40be88:      	adds	r3, #0x98
  40be8a:      	ldr	r3, [r3]
  40be8c:      	add	r2, sp, #0x1c
  40be8e:      	ldr	r2, [r2]
  40be90:      	ldr.w	r2, [r2, #0x174]
  40be94:      	mov	r0, r2
  40be96:      	mov.w	r1, #0x0
  40be9a:      	movt	r1, #0xc28c
  40be9e:      	blx	r3
  40bea0:      	add	r3, sp, #0x1c
  40bea2:      	ldr	r3, [r3]
  40bea4:      	ldr.w	r3, [r3, #0x16c]
  40bea8:      	ldr	r3, [r3]
  40beaa:      	adds	r3, #0x4c
  40beac:      	ldr	r4, [r3]
  40beae:      	add	r3, sp, #0x1c
  40beb0:      	ldr	r3, [r3]
  40beb2:      	ldr.w	r5, [r3, #0x16c]
  40beb6:      	add	r3, sp, #0x1c
  40beb8:      	ldr	r3, [r3]
  40beba:      	vldr	s14, [r3, #392]
  40bebe:      	vmov.f32	s15, #5.000000e+00
  40bec2:      	vmul.f32	s15, s14, s15
  40bec6:      	vcvt.f64.f32	d7, s15
  40beca:      	vmov	r0, r1, d7
  40bece:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x135fc8
  40bed2:      	vmov	d6, r0, r1
  40bed6:      	vmov.f64	d7, #1.000000e+01
  40beda:      	vmul.f64	d7, d6, d7
  40bede:      	vcvt.f32.f64	s15, d7
  40bee2:      	add.w	r3, sp, #0x410
  40bee6:      	mov	r0, r3
  40bee8:      	vmov	r1, s15
  40beec:      	mov.w	r2, #0x0
  40bef0:      	bl	0x592cf0 <_ZN7cocos2d7CCPointC2Eff> @ imm = #0x186dfc
  40bef4:      	add.w	r3, sp, #0x410
  40bef8:      	mov	r0, r5
  40befa:      	mov	r1, r3
  40befc:      	blx	r4
  40befe:      	add	r3, sp, #0x1c
  40bf00:      	ldr	r3, [r3]
  40bf02:      	ldr.w	r3, [r3, #0x174]
  40bf06:      	ldr	r3, [r3]
  40bf08:      	adds	r3, #0x4c
  40bf0a:      	ldr	r4, [r3]
  40bf0c:      	add	r3, sp, #0x1c
  40bf0e:      	ldr	r3, [r3]
  40bf10:      	ldr.w	r5, [r3, #0x174]
  40bf14:      	add	r3, sp, #0x1c
  40bf16:      	ldr	r3, [r3]
  40bf18:      	ldr.w	r3, [r3, #0x10c]
  40bf1c:      	ldr.w	r3, [r3, #0xf8]
  40bf20:      	ldr	r3, [r3]
  40bf22:      	adds	r3, #0x50
  40bf24:      	ldr	r3, [r3]
  40bf26:      	add	r2, sp, #0x1c
  40bf28:      	ldr	r2, [r2]
  40bf2a:      	ldr.w	r2, [r2, #0x10c]
  40bf2e:      	ldr.w	r2, [r2, #0xf8]
  40bf32:      	mov	r0, r2
  40bf34:      	blx	r3
  40bf36:      	mov	r6, r0
  40bf38:      	add.w	r3, sp, #0x400
  40bf3c:      	mov	r0, r3
  40bf3e:      	mov.w	r1, #0x0
  40bf42:      	mov.w	r2, #0x0
  40bf46:      	movt	r2, #0xc270
  40bf4a:      	bl	0x592cf0 <_ZN7cocos2d7CCPointC2Eff> @ imm = #0x186da2
  40bf4e:      	add.w	r2, sp, #0x410
  40bf52:      	add.w	r3, sp, #0x400
  40bf56:      	mov	r0, r2
  40bf58:      	mov	r1, r6
  40bf5a:      	mov	r2, r3
  40bf5c:      	bl	0x4084b4 <_ZN6Tracer14checkCollisionEv+0x428> @ imm = #-0x3aac
  40bf60:      	add.w	r3, sp, #0x410
  40bf64:      	mov	r0, r5
  40bf66:      	mov	r1, r3
  40bf68:      	blx	r4
  40bf6a:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x5fa6
  40bf6e:      	add	r3, sp, #0x1c
  40bf70:      	ldr	r3, [r3]
  40bf72:      	ldr.w	r3, [r3, #0x17c]
  40bf76:      	ldr	r3, [r3]
  40bf78:      	add.w	r3, r3, #0x238
  40bf7c:      	ldr	r3, [r3]
  40bf7e:      	add	r2, sp, #0x1c
  40bf80:      	ldr	r2, [r2]
  40bf82:      	ldr.w	r2, [r2, #0x17c]
  40bf86:      	mov	r0, r2
  40bf88:      	mov.w	r1, #0x0
  40bf8c:      	movt	r1, #0x4334
  40bf90:      	blx	r3
  40bf92:      	ldr.w	r3, [pc, #0x5c0]        @ 0x40c554 <_ZN13TrainingStage8doLessonEf+0x227c>
  40bf96:      	ldr	r3, [r4, r3]
  40bf98:      	ldr	r3, [r3]
  40bf9a:      	ldr	r3, [r3]
  40bf9c:      	add.w	r3, r3, #0x2a4
  40bfa0:      	ldr	r3, [r3]
  40bfa2:      	ldr.w	r2, [pc, #0x5b0]        @ 0x40c554 <_ZN13TrainingStage8doLessonEf+0x227c>
  40bfa6:      	ldr	r2, [r4, r2]
  40bfa8:      	ldr	r2, [r2]
  40bfaa:      	mov	r0, r2
  40bfac:      	mov.w	r1, #0x0
  40bfb0:      	blx	r3
  40bfb2:      	add	r3, sp, #0x1c
  40bfb4:      	ldr	r3, [r3]
  40bfb6:      	vldr	s14, [r3, #392]
  40bfba:      	vmov.f32	s15, #1.000000e+00
  40bfbe:      	vcmpe.f32	s14, s15
  40bfc2:      	vmrs	APSR_nzcv, fpscr
  40bfc6:      	bgt	0x40bfcc <_ZN13TrainingStage8doLessonEf+0x1cf4> @ imm = #0x2
  40bfc8:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x5f48
  40bfcc:      	add	r3, sp, #0x1c
  40bfce:      	ldr	r3, [r3]
  40bfd0:      	ldr.w	r3, [r3, #0x180]
  40bfd4:      	adds	r2, r3, #0x1
  40bfd6:      	add	r3, sp, #0x1c
  40bfd8:      	ldr	r3, [r3]
  40bfda:      	str.w	r2, [r3, #0x180]
  40bfde:      	add	r3, sp, #0x1c
  40bfe0:      	ldr	r3, [r3]
  40bfe2:      	mov.w	r2, #0x0
  40bfe6:      	str.w	r2, [r3, #0x188]
  40bfea:      	add	r3, sp, #0x1c
  40bfec:      	ldr	r3, [r3]
  40bfee:      	ldr.w	r5, [r3, #0x10c]
  40bff2:      	add.w	r3, sp, #0x400
  40bff6:      	mov	r0, r3
  40bff8:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x37e3f8
  40bffc:      	add.w	r2, sp, #0x410
  40c000:      	add.w	r3, sp, #0x400
  40c004:      	mov	r0, r2
  40c006:      	ldr.w	r2, [pc, #0x558]        @ 0x40c560 <_ZN13TrainingStage8doLessonEf+0x2288>
  40c00a:      	add	r2, pc
  40c00c:      	mov	r1, r2
  40c00e:      	mov	r2, r3
  40c010:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3aaa4c
  40c014:      	movs	r0, #0x0
  40c016:      	movs	r1, #0x0
  40c018:      	movs	r2, #0xff
  40c01a:      	bl	0x408458 <_ZN6Tracer14checkCollisionEv+0x3cc> @ imm = #-0x3bc6
  40c01e:      	mov	r2, r0
  40c020:      	add	r3, sp, #0x50
  40c022:      	mov	r1, r2
  40c024:      	strb	r1, [r3]
  40c026:      	ubfx	r1, r2, #0x8, #0x8
  40c02a:      	strb	r1, [r3, #0x1]
  40c02c:      	ubfx	r2, r2, #0x10, #0x8
  40c030:      	strb	r2, [r3, #0x2]
  40c032:      	add.w	r2, sp, #0x410
  40c036:      	add	r3, sp, #0x50
  40c038:      	mov	r0, r5
  40c03a:      	mov	r1, r2
  40c03c:      	ldr	r2, [r3]
  40c03e:      	movs	r3, #0x4
  40c040:      	bl	0x33d2c0 <_ZN3HUD10addMessageESsN7cocos2d10_ccColor3BEs> @ imm = #-0xced84
  40c044:      	add.w	r3, sp, #0x410
  40c048:      	mov	r0, r3
  40c04a:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3a98c6
  40c04e:      	add.w	r3, sp, #0x400
  40c052:      	mov	r0, r3
  40c054:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x37e3a4
  40c058:      	add	r3, sp, #0x1c
  40c05a:      	ldr	r3, [r3]
  40c05c:      	ldr.w	r3, [r3, #0x16c]
  40c060:      	ldr	r3, [r3]
  40c062:      	adds	r3, #0x38
  40c064:      	ldr	r3, [r3]
  40c066:      	add	r2, sp, #0x1c
  40c068:      	ldr	r2, [r2]
  40c06a:      	ldr.w	r2, [r2, #0x16c]
  40c06e:      	mov	r0, r2
  40c070:      	mov.w	r1, #0x0
  40c074:      	movt	r1, #0xbf80
  40c078:      	blx	r3
  40c07a:      	ldr.w	r3, [pc, #0x4e0]        @ 0x40c55c <_ZN13TrainingStage8doLessonEf+0x2284>
  40c07e:      	ldr	r3, [r4, r3]
  40c080:      	ldr	r3, [r3]
  40c082:      	mov	r0, r3
  40c084:      	movs	r1, #0x3d
  40c086:      	movs	r2, #0x1
  40c088:      	bl	0x3f7d40 <_ZN5Sound18playSoundWithVoiceEii> @ imm = #-0x1434c
  40c08c:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x5e84
  40c090:      	add	r3, sp, #0x1c
  40c092:      	ldr	r3, [r3]
  40c094:      	ldr.w	r3, [r3, #0x17c]
  40c098:      	ldr	r3, [r3]
  40c09a:      	add.w	r3, r3, #0x238
  40c09e:      	ldr	r3, [r3]
  40c0a0:      	add	r2, sp, #0x1c
  40c0a2:      	ldr	r2, [r2]
  40c0a4:      	ldr.w	r2, [r2, #0x17c]
  40c0a8:      	mov	r0, r2
  40c0aa:      	mov.w	r1, #0x0
  40c0ae:      	movt	r1, #0x4334
  40c0b2:      	blx	r3
  40c0b4:      	ldr.w	r3, [pc, #0x49c]        @ 0x40c554 <_ZN13TrainingStage8doLessonEf+0x227c>
  40c0b8:      	ldr	r3, [r4, r3]
  40c0ba:      	ldr	r3, [r3]
  40c0bc:      	ldr	r3, [r3]
  40c0be:      	add.w	r3, r3, #0x2a4
  40c0c2:      	ldr	r3, [r3]
  40c0c4:      	ldr.w	r2, [pc, #0x48c]        @ 0x40c554 <_ZN13TrainingStage8doLessonEf+0x227c>
  40c0c8:      	ldr	r2, [r4, r2]
  40c0ca:      	ldr	r2, [r2]
  40c0cc:      	mov	r0, r2
  40c0ce:      	mov.w	r1, #0x0
  40c0d2:      	blx	r3
  40c0d4:      	add	r3, sp, #0x1c
  40c0d6:      	ldr	r3, [r3]
  40c0d8:      	vldr	s14, [r3, #392]
  40c0dc:      	vmov.f32	s15, #2.000000e+00
  40c0e0:      	vcmpe.f32	s14, s15
  40c0e4:      	vmrs	APSR_nzcv, fpscr
  40c0e8:      	bpl	0x40c0f6 <_ZN13TrainingStage8doLessonEf+0x1e1e> @ imm = #0xa
  40c0ea:      	add	r2, sp, #0x1c
  40c0ec:      	add	r3, sp, #0x18
  40c0ee:      	ldr	r0, [r2]
  40c0f0:      	ldr	r1, [r3]
  40c0f2:      	bl	0x409e30 <_ZN13TrainingStage11headChatterEf> @ imm = #-0x22c6
  40c0f6:      	add	r3, sp, #0x1c
  40c0f8:      	ldr	r3, [r3]
  40c0fa:      	ldr.w	r3, [r3, #0x174]
  40c0fe:      	ldr	r3, [r3]
  40c100:      	adds	r3, #0x90
  40c102:      	ldr	r3, [r3]
  40c104:      	add	r2, sp, #0x1c
  40c106:      	ldr	r2, [r2]
  40c108:      	ldr.w	r2, [r2, #0x174]
  40c10c:      	mov	r0, r2
  40c10e:      	movs	r1, #0x0
  40c110:      	blx	r3
  40c112:      	ldr.w	r3, [pc, #0x440]        @ 0x40c554 <_ZN13TrainingStage8doLessonEf+0x227c>
  40c116:      	ldr	r3, [r4, r3]
  40c118:      	ldr	r3, [r3]
  40c11a:      	ldr.w	r3, [r3, #0x148]
  40c11e:      	ldr	r3, [r3]
  40c120:      	add.w	r3, r3, #0x2d0
  40c124:      	ldr	r3, [r3]
  40c126:      	ldr.w	r2, [pc, #0x42c]        @ 0x40c554 <_ZN13TrainingStage8doLessonEf+0x227c>
  40c12a:      	ldr	r2, [r4, r2]
  40c12c:      	ldr	r2, [r2]
  40c12e:      	ldr.w	r2, [r2, #0x148]
  40c132:      	mov	r0, r2
  40c134:      	blx	r3
  40c136:      	vmov	s14, r0
  40c13a:      	vmov.f32	s15, #1.000000e+00
  40c13e:      	vcmpe.f32	s14, s15
  40c142:      	vmrs	APSR_nzcv, fpscr
  40c146:      	bpl	0x40c162 <_ZN13TrainingStage8doLessonEf+0x1e8a> @ imm = #0x18
  40c148:      	add	r3, sp, #0x1c
  40c14a:      	ldr	r3, [r3]
  40c14c:      	vldr	s14, [r3, #392]
  40c150:      	vmov.f32	s15, #3.000000e+00
  40c154:      	vcmpe.f32	s14, s15
  40c158:      	vmrs	APSR_nzcv, fpscr
  40c15c:      	ble	0x40c162 <_ZN13TrainingStage8doLessonEf+0x1e8a> @ imm = #0x2
  40c15e:      	movs	r3, #0x1
  40c160:      	b	0x40c164 <_ZN13TrainingStage8doLessonEf+0x1e8c> @ imm = #0x0
  40c162:      	movs	r3, #0x0
  40c164:      	cmp	r3, #0x0
  40c166:      	beq	0x40c1a6 <_ZN13TrainingStage8doLessonEf+0x1ece> @ imm = #0x3c
  40c168:      	add	r3, sp, #0x1c
  40c16a:      	ldr	r3, [r3]
  40c16c:      	ldr.w	r3, [r3, #0x180]
  40c170:      	adds	r2, r3, #0x1
  40c172:      	add	r3, sp, #0x1c
  40c174:      	ldr	r3, [r3]
  40c176:      	str.w	r2, [r3, #0x180]
  40c17a:      	add	r3, sp, #0x1c
  40c17c:      	ldr	r3, [r3]
  40c17e:      	mov.w	r2, #0x0
  40c182:      	str.w	r2, [r3, #0x188]
  40c186:      	add	r3, sp, #0x1c
  40c188:      	ldr	r3, [r3]
  40c18a:      	ldr.w	r3, [r3, #0x16c]
  40c18e:      	ldr	r3, [r3]
  40c190:      	adds	r3, #0x38
  40c192:      	ldr	r3, [r3]
  40c194:      	add	r2, sp, #0x1c
  40c196:      	ldr	r2, [r2]
  40c198:      	ldr.w	r2, [r2, #0x16c]
  40c19c:      	mov	r0, r2
  40c19e:      	mov.w	r1, #0x3f800000
  40c1a2:      	blx	r3
  40c1a4:      	b	0x40c2d6 <_ZN13TrainingStage8doLessonEf+0x1ffe> @ imm = #0x12e
  40c1a6:      	ldr	r3, [pc, #0x3ac]        @ 0x40c554 <_ZN13TrainingStage8doLessonEf+0x227c>
  40c1a8:      	ldr	r3, [r4, r3]
  40c1aa:      	ldr	r3, [r3]
  40c1ac:      	ldr.w	r3, [r3, #0x148]
  40c1b0:      	ldr	r3, [r3]
  40c1b2:      	add.w	r3, r3, #0x2d0
  40c1b6:      	ldr	r3, [r3]
  40c1b8:      	ldr	r2, [pc, #0x398]        @ 0x40c554 <_ZN13TrainingStage8doLessonEf+0x227c>
  40c1ba:      	ldr	r2, [r4, r2]
  40c1bc:      	ldr	r2, [r2]
  40c1be:      	ldr.w	r2, [r2, #0x148]
  40c1c2:      	mov	r0, r2
  40c1c4:      	blx	r3
  40c1c6:      	vmov	s14, r0
  40c1ca:      	vmov.f32	s15, #1.000000e+00
  40c1ce:      	vcmp.f32	s14, s15
  40c1d2:      	vmrs	APSR_nzcv, fpscr
  40c1d6:      	ite	ne
  40c1d8:      	movne	r3, #0x0
  40c1da:      	moveq	r3, #0x1
  40c1dc:      	uxtb	r3, r3
  40c1de:      	cmp	r3, #0x0
  40c1e0:      	beq	0x40c2d6 <_ZN13TrainingStage8doLessonEf+0x1ffe> @ imm = #0xf2
  40c1e2:      	add	r3, sp, #0x1c
  40c1e4:      	ldr	r3, [r3]
  40c1e6:      	ldr.w	r3, [r3, #0x174]
  40c1ea:      	ldr	r3, [r3]
  40c1ec:      	adds	r3, #0x90
  40c1ee:      	ldr	r3, [r3]
  40c1f0:      	add	r2, sp, #0x1c
  40c1f2:      	ldr	r2, [r2]
  40c1f4:      	ldr.w	r2, [r2, #0x174]
  40c1f8:      	mov	r0, r2
  40c1fa:      	movs	r1, #0x1
  40c1fc:      	blx	r3
  40c1fe:      	add	r3, sp, #0x1c
  40c200:      	ldr	r3, [r3]
  40c202:      	ldr.w	r3, [r3, #0x174]
  40c206:      	ldr	r3, [r3]
  40c208:      	adds	r3, #0x98
  40c20a:      	ldr	r3, [r3]
  40c20c:      	add	r2, sp, #0x1c
  40c20e:      	ldr	r2, [r2]
  40c210:      	ldr.w	r2, [r2, #0x174]
  40c214:      	mov	r0, r2
  40c216:      	mov.w	r1, #0x0
  40c21a:      	movt	r1, #0xc2f0
  40c21e:      	blx	r3
  40c220:      	add	r3, sp, #0x1c
  40c222:      	ldr	r3, [r3]
  40c224:      	ldr.w	r3, [r3, #0x16c]
  40c228:      	ldr	r3, [r3]
  40c22a:      	adds	r3, #0x4c
  40c22c:      	ldr	r4, [r3]
  40c22e:      	add	r3, sp, #0x1c
  40c230:      	ldr	r3, [r3]
  40c232:      	ldr.w	r5, [r3, #0x16c]
  40c236:      	add	r3, sp, #0x1c
  40c238:      	ldr	r3, [r3]
  40c23a:      	vldr	s14, [r3, #392]
  40c23e:      	vmov.f32	s15, #5.000000e+00
  40c242:      	vmul.f32	s15, s14, s15
  40c246:      	vcvt.f64.f32	d7, s15
  40c24a:      	vmov	r0, r1, d7
  40c24e:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x136348
  40c252:      	vmov	d6, r0, r1
  40c256:      	vmov.f64	d7, #1.000000e+01
  40c25a:      	vmul.f64	d7, d6, d7
  40c25e:      	vcvt.f32.f64	s15, d7
  40c262:      	add.w	r3, sp, #0x410
  40c266:      	mov	r0, r3
  40c268:      	vmov	r1, s15
  40c26c:      	mov.w	r2, #0x0
  40c270:      	bl	0x592cf0 <_ZN7cocos2d7CCPointC2Eff> @ imm = #0x186a7c
  40c274:      	add.w	r3, sp, #0x410
  40c278:      	mov	r0, r5
  40c27a:      	mov	r1, r3
  40c27c:      	blx	r4
  40c27e:      	add	r3, sp, #0x1c
  40c280:      	ldr	r3, [r3]
  40c282:      	ldr.w	r3, [r3, #0x174]
  40c286:      	ldr	r3, [r3]
  40c288:      	adds	r3, #0x4c
  40c28a:      	ldr	r4, [r3]
  40c28c:      	add	r3, sp, #0x1c
  40c28e:      	ldr	r3, [r3]
  40c290:      	ldr.w	r5, [r3, #0x174]
  40c294:      	add	r3, sp, #0x1c
  40c296:      	ldr	r3, [r3]
  40c298:      	ldr.w	r3, [r3, #0x10c]
  40c29c:      	add.w	r6, r3, #0x178
  40c2a0:      	add.w	r3, sp, #0x400
  40c2a4:      	mov	r0, r3
  40c2a6:      	mov.w	r1, #0x0
  40c2aa:      	movt	r1, #0x4170
  40c2ae:      	mov.w	r2, #0x0
  40c2b2:      	movt	r2, #0xc270
  40c2b6:      	bl	0x592cf0 <_ZN7cocos2d7CCPointC2Eff> @ imm = #0x186a36
  40c2ba:      	add.w	r2, sp, #0x410
  40c2be:      	add.w	r3, sp, #0x400
  40c2c2:      	mov	r0, r2
  40c2c4:      	mov	r1, r6
  40c2c6:      	mov	r2, r3
  40c2c8:      	bl	0x4084b4 <_ZN6Tracer14checkCollisionEv+0x428> @ imm = #-0x3e18
  40c2cc:      	add.w	r3, sp, #0x410
  40c2d0:      	mov	r0, r5
  40c2d2:      	mov	r1, r3
  40c2d4:      	blx	r4
  40c2d6:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x5c3a
  40c2da:      	add	r3, sp, #0x1c
  40c2dc:      	ldr	r3, [r3]
  40c2de:      	ldr.w	r3, [r3, #0x17c]
  40c2e2:      	ldr	r3, [r3]
  40c2e4:      	add.w	r3, r3, #0x238
  40c2e8:      	ldr	r3, [r3]
  40c2ea:      	add	r2, sp, #0x1c
  40c2ec:      	ldr	r2, [r2]
  40c2ee:      	ldr.w	r2, [r2, #0x17c]
  40c2f2:      	mov	r0, r2
  40c2f4:      	mov.w	r1, #0x0
  40c2f8:      	movt	r1, #0x4334
  40c2fc:      	blx	r3
  40c2fe:      	ldr	r3, [pc, #0x254]        @ 0x40c554 <_ZN13TrainingStage8doLessonEf+0x227c>
  40c300:      	ldr	r3, [r4, r3]
  40c302:      	ldr	r3, [r3]
  40c304:      	ldr	r3, [r3]
  40c306:      	add.w	r3, r3, #0x2a4
  40c30a:      	ldr	r3, [r3]
  40c30c:      	ldr	r2, [pc, #0x244]        @ 0x40c554 <_ZN13TrainingStage8doLessonEf+0x227c>
  40c30e:      	ldr	r2, [r4, r2]
  40c310:      	ldr	r2, [r2]
  40c312:      	mov	r0, r2
  40c314:      	mov.w	r1, #0x0
  40c318:      	blx	r3
  40c31a:      	add	r3, sp, #0x1c
  40c31c:      	ldr	r3, [r3]
  40c31e:      	vldr	s14, [r3, #392]
  40c322:      	vmov.f32	s15, #1.000000e+00
  40c326:      	vcmpe.f32	s14, s15
  40c32a:      	vmrs	APSR_nzcv, fpscr
  40c32e:      	bpl	0x40c33c <_ZN13TrainingStage8doLessonEf+0x2064> @ imm = #0xa
  40c330:      	add	r2, sp, #0x1c
  40c332:      	add	r3, sp, #0x18
  40c334:      	ldr	r0, [r2]
  40c336:      	ldr	r1, [r3]
  40c338:      	bl	0x409e30 <_ZN13TrainingStage11headChatterEf> @ imm = #-0x250c
  40c33c:      	add	r3, sp, #0x1c
  40c33e:      	ldr	r3, [r3]
  40c340:      	vldr	s14, [r3, #392]
  40c344:      	vmov.f32	s15, #3.000000e+00
  40c348:      	vcmpe.f32	s14, s15
  40c34c:      	vmrs	APSR_nzcv, fpscr
  40c350:      	bgt	0x40c356 <_ZN13TrainingStage8doLessonEf+0x207e> @ imm = #0x2
  40c352:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x5bbe
  40c356:      	add	r3, sp, #0x1c
  40c358:      	ldr	r3, [r3]
  40c35a:      	ldr.w	r3, [r3, #0x180]
  40c35e:      	adds	r2, r3, #0x1
  40c360:      	add	r3, sp, #0x1c
  40c362:      	ldr	r3, [r3]
  40c364:      	str.w	r2, [r3, #0x180]
  40c368:      	add	r3, sp, #0x1c
  40c36a:      	ldr	r3, [r3]
  40c36c:      	mov.w	r2, #0x0
  40c370:      	str.w	r2, [r3, #0x188]
  40c374:      	add	r3, sp, #0x1c
  40c376:      	ldr	r3, [r3]
  40c378:      	ldr.w	r5, [r3, #0x10c]
  40c37c:      	add.w	r3, sp, #0x400
  40c380:      	mov	r0, r3
  40c382:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x37e06e
  40c386:      	add.w	r2, sp, #0x410
  40c38a:      	add.w	r3, sp, #0x400
  40c38e:      	mov	r0, r2
  40c390:      	ldr	r2, [pc, #0x1d0]        @ 0x40c564 <_ZN13TrainingStage8doLessonEf+0x228c>
  40c392:      	add	r2, pc
  40c394:      	mov	r1, r2
  40c396:      	mov	r2, r3
  40c398:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3aa6c4
  40c39c:      	movs	r0, #0x0
  40c39e:      	movs	r1, #0x0
  40c3a0:      	movs	r2, #0xff
  40c3a2:      	bl	0x408458 <_ZN6Tracer14checkCollisionEv+0x3cc> @ imm = #-0x3f4e
  40c3a6:      	mov	r2, r0
  40c3a8:      	add	r3, sp, #0x54
  40c3aa:      	mov	r1, r2
  40c3ac:      	strb	r1, [r3]
  40c3ae:      	ubfx	r1, r2, #0x8, #0x8
  40c3b2:      	strb	r1, [r3, #0x1]
  40c3b4:      	ubfx	r2, r2, #0x10, #0x8
  40c3b8:      	strb	r2, [r3, #0x2]
  40c3ba:      	add.w	r2, sp, #0x410
  40c3be:      	add	r3, sp, #0x54
  40c3c0:      	mov	r0, r5
  40c3c2:      	mov	r1, r2
  40c3c4:      	ldr	r2, [r3]
  40c3c6:      	movs	r3, #0x4
  40c3c8:      	bl	0x33d2c0 <_ZN3HUD10addMessageESsN7cocos2d10_ccColor3BEs> @ imm = #-0xcf10c
  40c3cc:      	add.w	r3, sp, #0x410
  40c3d0:      	mov	r0, r3
  40c3d2:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3a953e
  40c3d6:      	add.w	r3, sp, #0x400
  40c3da:      	mov	r0, r3
  40c3dc:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x37e01c
  40c3e0:      	ldr	r3, [pc, #0x178]        @ 0x40c55c <_ZN13TrainingStage8doLessonEf+0x2284>
  40c3e2:      	ldr	r3, [r4, r3]
  40c3e4:      	ldr	r3, [r3]
  40c3e6:      	mov	r0, r3
  40c3e8:      	movs	r1, #0x3e
  40c3ea:      	movs	r2, #0x1
  40c3ec:      	bl	0x3f7d40 <_ZN5Sound18playSoundWithVoiceEii> @ imm = #-0x146b0
  40c3f0:      	ldr	r3, [pc, #0x160]        @ 0x40c554 <_ZN13TrainingStage8doLessonEf+0x227c>
  40c3f2:      	ldr	r3, [r4, r3]
  40c3f4:      	ldr	r3, [r3]
  40c3f6:      	ldr.w	r3, [r3, #0x148]
  40c3fa:      	ldr	r3, [r3]
  40c3fc:      	add.w	r3, r3, #0x27c
  40c400:      	ldr	r3, [r3]
  40c402:      	ldr	r2, [pc, #0x150]        @ 0x40c554 <_ZN13TrainingStage8doLessonEf+0x227c>
  40c404:      	ldr	r2, [r4, r2]
  40c406:      	ldr	r2, [r2]
  40c408:      	ldr.w	r2, [r2, #0x148]
  40c40c:      	mov	r0, r2
  40c40e:      	blx	r3
  40c410:      	mov	r3, r0
  40c412:      	cmp	r3, #0x8
  40c414:      	ite	ne
  40c416:      	movne	r3, #0x0
  40c418:      	moveq	r3, #0x1
  40c41a:      	uxtb	r3, r3
  40c41c:      	cmp	r3, #0x0
  40c41e:      	beq	0x40c438 <_ZN13TrainingStage8doLessonEf+0x2160> @ imm = #0x16
  40c420:      	ldr	r3, [pc, #0x130]        @ 0x40c554 <_ZN13TrainingStage8doLessonEf+0x227c>
  40c422:      	ldr	r3, [r4, r3]
  40c424:      	ldr	r3, [r3]
  40c426:      	ldr	r3, [r3]
  40c428:      	add.w	r3, r3, #0x2ac
  40c42c:      	ldr	r3, [r3]
  40c42e:      	ldr	r2, [pc, #0x124]        @ 0x40c554 <_ZN13TrainingStage8doLessonEf+0x227c>
  40c430:      	ldr	r2, [r4, r2]
  40c432:      	ldr	r2, [r2]
  40c434:      	mov	r0, r2
  40c436:      	blx	r3
  40c438:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x5ad8
  40c43c:      	add	r3, sp, #0x1c
  40c43e:      	ldr	r3, [r3]
  40c440:      	ldr.w	r3, [r3, #0x10c]
  40c444:      	ldr.w	r3, [r3, #0xf4]
  40c448:      	mov	r0, r3
  40c44a:      	movs	r1, #0x1
  40c44c:      	bl	0x34e918 <_ZN6Joypad13disableFiringEb> @ imm = #-0xbdb38
  40c450:      	add	r3, sp, #0x1c
  40c452:      	ldr	r3, [r3]
  40c454:      	ldr.w	r3, [r3, #0x17c]
  40c458:      	ldr	r3, [r3]
  40c45a:      	add.w	r3, r3, #0x238
  40c45e:      	ldr	r3, [r3]
  40c460:      	add	r2, sp, #0x1c
  40c462:      	ldr	r2, [r2]
  40c464:      	ldr.w	r2, [r2, #0x17c]
  40c468:      	mov	r0, r2
  40c46a:      	mov.w	r1, #0x0
  40c46e:      	movt	r1, #0x4334
  40c472:      	blx	r3
  40c474:      	ldr	r3, [pc, #0xdc]         @ 0x40c554 <_ZN13TrainingStage8doLessonEf+0x227c>
  40c476:      	ldr	r3, [r4, r3]
  40c478:      	ldr	r3, [r3]
  40c47a:      	ldr	r3, [r3]
  40c47c:      	add.w	r3, r3, #0x2a4
  40c480:      	ldr	r3, [r3]
  40c482:      	ldr	r2, [pc, #0xd0]         @ 0x40c554 <_ZN13TrainingStage8doLessonEf+0x227c>
  40c484:      	ldr	r2, [r4, r2]
  40c486:      	ldr	r2, [r2]
  40c488:      	mov	r0, r2
  40c48a:      	mov.w	r1, #0x0
  40c48e:      	blx	r3
  40c490:      	ldr	r3, [pc, #0xc0]         @ 0x40c554 <_ZN13TrainingStage8doLessonEf+0x227c>
  40c492:      	ldr	r3, [r4, r3]
  40c494:      	ldr	r3, [r3]
  40c496:      	ldr.w	r3, [r3, #0x148]
  40c49a:      	ldr	r3, [r3]
  40c49c:      	add.w	r3, r3, #0x278
  40c4a0:      	ldr	r3, [r3]
  40c4a2:      	ldr	r2, [pc, #0xb0]         @ 0x40c554 <_ZN13TrainingStage8doLessonEf+0x227c>
  40c4a4:      	ldr	r2, [r4, r2]
  40c4a6:      	ldr	r2, [r2]
  40c4a8:      	ldr.w	r2, [r2, #0x148]
  40c4ac:      	mov	r0, r2
  40c4ae:      	movs	r1, #0x64
  40c4b0:      	blx	r3
  40c4b2:      	ldr	r3, [pc, #0xa0]         @ 0x40c554 <_ZN13TrainingStage8doLessonEf+0x227c>
  40c4b4:      	ldr	r3, [r4, r3]
  40c4b6:      	ldr	r3, [r3]
  40c4b8:      	ldr.w	r3, [r3, #0x14c]
  40c4bc:      	ldr	r3, [r3]
  40c4be:      	add.w	r3, r3, #0x278
  40c4c2:      	ldr	r3, [r3]
  40c4c4:      	ldr	r2, [pc, #0x8c]         @ 0x40c554 <_ZN13TrainingStage8doLessonEf+0x227c>
  40c4c6:      	ldr	r2, [r4, r2]
  40c4c8:      	ldr	r2, [r2]
  40c4ca:      	ldr.w	r2, [r2, #0x14c]
  40c4ce:      	mov	r0, r2
  40c4d0:      	movs	r1, #0x64
  40c4d2:      	blx	r3
  40c4d4:      	ldr	r3, [pc, #0x7c]         @ 0x40c554 <_ZN13TrainingStage8doLessonEf+0x227c>
  40c4d6:      	ldr	r3, [r4, r3]
  40c4d8:      	ldr	r3, [r3]
  40c4da:      	ldr.w	r3, [r3, #0x148]
  40c4de:      	ldr	r3, [r3]
  40c4e0:      	add.w	r3, r3, #0x288
  40c4e4:      	ldr	r3, [r3]
  40c4e6:      	ldr	r2, [pc, #0x6c]         @ 0x40c554 <_ZN13TrainingStage8doLessonEf+0x227c>
  40c4e8:      	ldr	r2, [r4, r2]
  40c4ea:      	ldr	r2, [r2]
  40c4ec:      	ldr.w	r2, [r2, #0x148]
  40c4f0:      	mov	r0, r2
  40c4f2:      	movs	r1, #0x14
  40c4f4:      	blx	r3
  40c4f6:      	ldr	r3, [pc, #0x5c]         @ 0x40c554 <_ZN13TrainingStage8doLessonEf+0x227c>
  40c4f8:      	ldr	r3, [r4, r3]
  40c4fa:      	ldr	r3, [r3]
  40c4fc:      	ldr.w	r3, [r3, #0x14c]
  40c500:      	ldr	r3, [r3]
  40c502:      	add.w	r3, r3, #0x288
  40c506:      	ldr	r3, [r3]
  40c508:      	ldr	r2, [pc, #0x48]         @ 0x40c554 <_ZN13TrainingStage8doLessonEf+0x227c>
  40c50a:      	ldr	r2, [r4, r2]
  40c50c:      	ldr	r2, [r2]
  40c50e:      	ldr.w	r2, [r2, #0x14c]
  40c512:      	mov	r0, r2
  40c514:      	movs	r1, #0x14
  40c516:      	blx	r3
  40c518:      	add	r3, sp, #0x1c
  40c51a:      	ldr	r3, [r3]
  40c51c:      	vldr	s14, [r3, #392]
  40c520:      	vmov.f32	s15, #2.000000e+00
  40c524:      	vcmpe.f32	s14, s15
  40c528:      	vmrs	APSR_nzcv, fpscr
  40c52c:      	bpl	0x40c53a <_ZN13TrainingStage8doLessonEf+0x2262> @ imm = #0xa
  40c52e:      	add	r2, sp, #0x1c
  40c530:      	add	r3, sp, #0x18
  40c532:      	ldr	r0, [r2]
  40c534:      	ldr	r1, [r3]
  40c536:      	bl	0x409e30 <_ZN13TrainingStage11headChatterEf> @ imm = #-0x270a
  40c53a:      	add	r3, sp, #0x1c
  40c53c:      	ldr	r3, [r3]
  40c53e:      	vldr	s14, [r3, #392]
  40c542:      	vmov.f32	s15, #4.000000e+00
  40c546:      	vcmpe.f32	s14, s15
  40c54a:      	vmrs	APSR_nzcv, fpscr
  40c54e:      	bgt	0x40c568 <_ZN13TrainingStage8doLessonEf+0x2290> @ imm = #0x16
  40c550:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x59c0
// TrainingStage::doLesson  ghidra=0x41c568-0x41ce2b  elf=0x40c568-0x40ce2b  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  40c568:      	add	r3, sp, #0x1c
  40c56a:      	ldr	r3, [r3]
  40c56c:      	ldr.w	r3, [r3, #0x178]
  40c570:      	ldr	r3, [r3]
  40c572:      	adds	r3, #0x90
  40c574:      	ldr	r3, [r3]
  40c576:      	add	r2, sp, #0x1c
  40c578:      	ldr	r2, [r2]
  40c57a:      	ldr.w	r2, [r2, #0x178]
  40c57e:      	mov	r0, r2
  40c580:      	movs	r1, #0x1
  40c582:      	blx	r3
  40c584:      	add	r3, sp, #0x1c
  40c586:      	ldr	r3, [r3]
  40c588:      	movs	r2, #0x0
  40c58a:      	strb.w	r2, [r3, #0x194]
  40c58e:      	add	r3, sp, #0x1c
  40c590:      	ldr	r3, [r3]
  40c592:      	ldr.w	r3, [r3, #0x178]
  40c596:      	ldr	r3, [r3]
  40c598:      	adds	r3, #0x4c
  40c59a:      	ldr	r5, [r3]
  40c59c:      	add	r3, sp, #0x1c
  40c59e:      	ldr	r3, [r3]
  40c5a0:      	ldr.w	r3, [r3, #0x178]
  40c5a4:      	mov	r6, r3
  40c5a6:      	add	r3, sp, #0x1c
  40c5a8:      	ldr	r3, [r3]
  40c5aa:      	ldr.w	r3, [r3, #0x10c]
  40c5ae:      	ldr.w	r3, [r3, #0xf4]
  40c5b2:      	add.w	r7, r3, #0xfc
  40c5b6:      	add.w	r3, sp, #0x400
  40c5ba:      	mov	r0, r3
  40c5bc:      	mov.w	r1, #0x0
  40c5c0:      	mov.w	r2, #0x0
  40c5c4:      	movt	r2, #0x4270
  40c5c8:      	bl	0x592cf0 <_ZN7cocos2d7CCPointC2Eff> @ imm = #0x186724
  40c5cc:      	add.w	r2, sp, #0x410
  40c5d0:      	add.w	r3, sp, #0x400
  40c5d4:      	mov	r0, r2
  40c5d6:      	mov	r1, r7
  40c5d8:      	mov	r2, r3
  40c5da:      	bl	0x4084b4 <_ZN6Tracer14checkCollisionEv+0x428> @ imm = #-0x412a
  40c5de:      	add.w	r3, sp, #0x410
  40c5e2:      	mov	r0, r6
  40c5e4:      	mov	r1, r3
  40c5e6:      	blx	r5
  40c5e8:      	add	r3, sp, #0x1c
  40c5ea:      	ldr	r3, [r3]
  40c5ec:      	ldr.w	r5, [r3, #0x10c]
  40c5f0:      	add.w	r3, sp, #0x400
  40c5f4:      	mov	r0, r3
  40c5f6:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x37ddfa
  40c5fa:      	add.w	r2, sp, #0x410
  40c5fe:      	add.w	r3, sp, #0x400
  40c602:      	mov	r0, r2
  40c604:      	ldr.w	r2, [pc, #0x838]        @ 0x40ce40 <_ZN13TrainingStage8doLessonEf+0x2b68>
  40c608:      	add	r2, pc
  40c60a:      	mov	r1, r2
  40c60c:      	mov	r2, r3
  40c60e:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3aa44e
  40c612:      	movs	r0, #0x0
  40c614:      	movs	r1, #0x0
  40c616:      	movs	r2, #0xff
  40c618:      	bl	0x408458 <_ZN6Tracer14checkCollisionEv+0x3cc> @ imm = #-0x41c4
  40c61c:      	mov	r2, r0
  40c61e:      	add	r3, sp, #0x58
  40c620:      	mov	r1, r2
  40c622:      	strb	r1, [r3]
  40c624:      	ubfx	r1, r2, #0x8, #0x8
  40c628:      	strb	r1, [r3, #0x1]
  40c62a:      	ubfx	r2, r2, #0x10, #0x8
  40c62e:      	strb	r2, [r3, #0x2]
  40c630:      	add.w	r2, sp, #0x410
  40c634:      	add	r3, sp, #0x58
  40c636:      	mov	r0, r5
  40c638:      	mov	r1, r2
  40c63a:      	ldr	r2, [r3]
  40c63c:      	movs	r3, #0x4
  40c63e:      	bl	0x33d2c0 <_ZN3HUD10addMessageESsN7cocos2d10_ccColor3BEs> @ imm = #-0xcf382
  40c642:      	add.w	r3, sp, #0x410
  40c646:      	mov	r0, r3
  40c648:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3a92c8
  40c64c:      	add.w	r3, sp, #0x400
  40c650:      	mov	r0, r3
  40c652:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x37dda6
  40c656:      	add	r3, sp, #0x1c
  40c658:      	ldr	r3, [r3]
  40c65a:      	ldr.w	r3, [r3, #0x180]
  40c65e:      	adds	r2, r3, #0x1
  40c660:      	add	r3, sp, #0x1c
  40c662:      	ldr	r3, [r3]
  40c664:      	str.w	r2, [r3, #0x180]
  40c668:      	add	r3, sp, #0x1c
  40c66a:      	ldr	r3, [r3]
  40c66c:      	mov.w	r2, #0x0
  40c670:      	str.w	r2, [r3, #0x188]
  40c674:      	ldr.w	r3, [pc, #0x7cc]        @ 0x40ce44 <_ZN13TrainingStage8doLessonEf+0x2b6c>
  40c678:      	ldr	r3, [r4, r3]
  40c67a:      	ldr	r3, [r3]
  40c67c:      	mov	r0, r3
  40c67e:      	movs	r1, #0x3f
  40c680:      	movs	r2, #0x1
  40c682:      	bl	0x3f7d40 <_ZN5Sound18playSoundWithVoiceEii> @ imm = #-0x14946
  40c686:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x588a
  40c68a:      	add	r3, sp, #0x1c
  40c68c:      	ldr	r3, [r3]
  40c68e:      	ldr.w	r3, [r3, #0x17c]
  40c692:      	ldr	r3, [r3]
  40c694:      	add.w	r3, r3, #0x238
  40c698:      	ldr	r3, [r3]
  40c69a:      	add	r2, sp, #0x1c
  40c69c:      	ldr	r2, [r2]
  40c69e:      	ldr.w	r2, [r2, #0x17c]
  40c6a2:      	mov	r0, r2
  40c6a4:      	mov.w	r1, #0x0
  40c6a8:      	movt	r1, #0x4334
  40c6ac:      	blx	r3
  40c6ae:      	ldr.w	r3, [pc, #0x798]        @ 0x40ce48 <_ZN13TrainingStage8doLessonEf+0x2b70>
  40c6b2:      	ldr	r3, [r4, r3]
  40c6b4:      	ldr	r3, [r3]
  40c6b6:      	ldr	r3, [r3]
  40c6b8:      	add.w	r3, r3, #0x2a4
  40c6bc:      	ldr	r3, [r3]
  40c6be:      	ldr.w	r2, [pc, #0x788]        @ 0x40ce48 <_ZN13TrainingStage8doLessonEf+0x2b70>
  40c6c2:      	ldr	r2, [r4, r2]
  40c6c4:      	ldr	r2, [r2]
  40c6c6:      	mov	r0, r2
  40c6c8:      	mov.w	r1, #0x0
  40c6cc:      	blx	r3
  40c6ce:      	add	r3, sp, #0x1c
  40c6d0:      	ldr	r3, [r3]
  40c6d2:      	vldr	s14, [r3, #392]
  40c6d6:      	vmov.f32	s15, #2.000000e+00
  40c6da:      	vcmpe.f32	s14, s15
  40c6de:      	vmrs	APSR_nzcv, fpscr
  40c6e2:      	bpl	0x40c6f0 <_ZN13TrainingStage8doLessonEf+0x2418> @ imm = #0xa
  40c6e4:      	add	r2, sp, #0x1c
  40c6e6:      	add	r3, sp, #0x18
  40c6e8:      	ldr	r0, [r2]
  40c6ea:      	ldr	r1, [r3]
  40c6ec:      	bl	0x409e30 <_ZN13TrainingStage11headChatterEf> @ imm = #-0x28c0
  40c6f0:      	add	r2, sp, #0x1c
  40c6f2:      	add	r3, sp, #0x18
  40c6f4:      	ldr	r0, [r2]
  40c6f6:      	ldr	r1, [r3]
  40c6f8:      	bl	0x409ee0 <_ZN13TrainingStage13runFireLessonEf> @ imm = #-0x281c
  40c6fc:      	add	r3, sp, #0x1c
  40c6fe:      	ldr	r3, [r3]
  40c700:      	vldr	s14, [r3, #392]
  40c704:      	vmov.f32	s15, #4.000000e+00
  40c708:      	vcmpe.f32	s14, s15
  40c70c:      	vmrs	APSR_nzcv, fpscr
  40c710:      	bgt	0x40c716 <_ZN13TrainingStage8doLessonEf+0x243e> @ imm = #0x2
  40c712:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x57fe
  40c716:      	add	r3, sp, #0x1c
  40c718:      	ldr	r3, [r3]
  40c71a:      	ldr.w	r5, [r3, #0x10c]
  40c71e:      	add.w	r3, sp, #0x400
  40c722:      	mov	r0, r3
  40c724:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x37dccc
  40c728:      	add.w	r2, sp, #0x410
  40c72c:      	add.w	r3, sp, #0x400
  40c730:      	mov	r0, r2
  40c732:      	ldr.w	r2, [pc, #0x718]        @ 0x40ce4c <_ZN13TrainingStage8doLessonEf+0x2b74>
  40c736:      	add	r2, pc
  40c738:      	mov	r1, r2
  40c73a:      	mov	r2, r3
  40c73c:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3aa320
  40c740:      	movs	r0, #0x0
  40c742:      	movs	r1, #0x0
  40c744:      	movs	r2, #0xff
  40c746:      	bl	0x408458 <_ZN6Tracer14checkCollisionEv+0x3cc> @ imm = #-0x42f2
  40c74a:      	mov	r2, r0
  40c74c:      	add	r3, sp, #0x5c
  40c74e:      	mov	r1, r2
  40c750:      	strb	r1, [r3]
  40c752:      	ubfx	r1, r2, #0x8, #0x8
  40c756:      	strb	r1, [r3, #0x1]
  40c758:      	ubfx	r2, r2, #0x10, #0x8
  40c75c:      	strb	r2, [r3, #0x2]
  40c75e:      	add.w	r2, sp, #0x410
  40c762:      	add	r3, sp, #0x5c
  40c764:      	mov	r0, r5
  40c766:      	mov	r1, r2
  40c768:      	ldr	r2, [r3]
  40c76a:      	movs	r3, #0x4
  40c76c:      	bl	0x33d2c0 <_ZN3HUD10addMessageESsN7cocos2d10_ccColor3BEs> @ imm = #-0xcf4b0
  40c770:      	add.w	r3, sp, #0x410
  40c774:      	mov	r0, r3
  40c776:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3a919a
  40c77a:      	add.w	r3, sp, #0x400
  40c77e:      	mov	r0, r3
  40c780:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x37dc78
  40c784:      	add	r3, sp, #0x1c
  40c786:      	ldr	r3, [r3]
  40c788:      	ldr.w	r3, [r3, #0x180]
  40c78c:      	adds	r2, r3, #0x1
  40c78e:      	add	r3, sp, #0x1c
  40c790:      	ldr	r3, [r3]
  40c792:      	str.w	r2, [r3, #0x180]
  40c796:      	add	r3, sp, #0x1c
  40c798:      	ldr	r3, [r3]
  40c79a:      	mov.w	r2, #0x0
  40c79e:      	str.w	r2, [r3, #0x188]
  40c7a2:      	ldr.w	r3, [pc, #0x6a0]        @ 0x40ce44 <_ZN13TrainingStage8doLessonEf+0x2b6c>
  40c7a6:      	ldr	r3, [r4, r3]
  40c7a8:      	ldr	r3, [r3]
  40c7aa:      	mov	r0, r3
  40c7ac:      	movs	r1, #0x40
  40c7ae:      	movs	r2, #0x1
  40c7b0:      	bl	0x3f7d40 <_ZN5Sound18playSoundWithVoiceEii> @ imm = #-0x14a74
  40c7b4:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x575c
  40c7b8:      	add	r3, sp, #0x1c
  40c7ba:      	ldr	r3, [r3]
  40c7bc:      	ldr.w	r3, [r3, #0x17c]
  40c7c0:      	ldr	r3, [r3]
  40c7c2:      	add.w	r3, r3, #0x238
  40c7c6:      	ldr	r3, [r3]
  40c7c8:      	add	r2, sp, #0x1c
  40c7ca:      	ldr	r2, [r2]
  40c7cc:      	ldr.w	r2, [r2, #0x17c]
  40c7d0:      	mov	r0, r2
  40c7d2:      	mov.w	r1, #0x0
  40c7d6:      	movt	r1, #0x4334
  40c7da:      	blx	r3
  40c7dc:      	ldr.w	r3, [pc, #0x668]        @ 0x40ce48 <_ZN13TrainingStage8doLessonEf+0x2b70>
  40c7e0:      	ldr	r3, [r4, r3]
  40c7e2:      	ldr	r3, [r3]
  40c7e4:      	ldr	r3, [r3]
  40c7e6:      	add.w	r3, r3, #0x2a4
  40c7ea:      	ldr	r3, [r3]
  40c7ec:      	ldr.w	r2, [pc, #0x658]        @ 0x40ce48 <_ZN13TrainingStage8doLessonEf+0x2b70>
  40c7f0:      	ldr	r2, [r4, r2]
  40c7f2:      	ldr	r2, [r2]
  40c7f4:      	mov	r0, r2
  40c7f6:      	mov.w	r1, #0x0
  40c7fa:      	blx	r3
  40c7fc:      	add	r3, sp, #0x1c
  40c7fe:      	ldr	r3, [r3]
  40c800:      	vldr	s14, [r3, #392]
  40c804:      	vmov.f32	s15, #2.000000e+00
  40c808:      	vcmpe.f32	s14, s15
  40c80c:      	vmrs	APSR_nzcv, fpscr
  40c810:      	bpl	0x40c81e <_ZN13TrainingStage8doLessonEf+0x2546> @ imm = #0xa
  40c812:      	add	r2, sp, #0x1c
  40c814:      	add	r3, sp, #0x18
  40c816:      	ldr	r0, [r2]
  40c818:      	ldr	r1, [r3]
  40c81a:      	bl	0x409e30 <_ZN13TrainingStage11headChatterEf> @ imm = #-0x29ee
  40c81e:      	add	r2, sp, #0x1c
  40c820:      	add	r3, sp, #0x18
  40c822:      	ldr	r0, [r2]
  40c824:      	ldr	r1, [r3]
  40c826:      	bl	0x409ee0 <_ZN13TrainingStage13runFireLessonEf> @ imm = #-0x294a
  40c82a:      	add	r3, sp, #0x1c
  40c82c:      	ldr	r3, [r3]
  40c82e:      	vldr	s14, [r3, #392]
  40c832:      	vmov.f32	s15, #8.000000e+00
  40c836:      	vcmpe.f32	s14, s15
  40c83a:      	vmrs	APSR_nzcv, fpscr
  40c83e:      	bgt	0x40c844 <_ZN13TrainingStage8doLessonEf+0x256c> @ imm = #0x2
  40c840:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x56d0
  40c844:      	add	r3, sp, #0x1c
  40c846:      	ldr	r3, [r3]
  40c848:      	ldr.w	r3, [r3, #0x180]
  40c84c:      	adds	r2, r3, #0x1
  40c84e:      	add	r3, sp, #0x1c
  40c850:      	ldr	r3, [r3]
  40c852:      	str.w	r2, [r3, #0x180]
  40c856:      	add	r3, sp, #0x1c
  40c858:      	ldr	r3, [r3]
  40c85a:      	mov.w	r2, #0x0
  40c85e:      	str.w	r2, [r3, #0x188]
  40c862:      	add	r3, sp, #0x1c
  40c864:      	ldr	r3, [r3]
  40c866:      	ldr.w	r3, [r3, #0x10c]
  40c86a:      	ldr.w	r3, [r3, #0xf4]
  40c86e:      	mov	r0, r3
  40c870:      	movs	r1, #0x0
  40c872:      	bl	0x34e918 <_ZN6Joypad13disableFiringEb> @ imm = #-0xbdf5e
  40c876:      	add	r3, sp, #0x1c
  40c878:      	ldr	r3, [r3]
  40c87a:      	ldr.w	r3, [r3, #0x178]
  40c87e:      	ldr	r3, [r3]
  40c880:      	adds	r3, #0x90
  40c882:      	ldr	r3, [r3]
  40c884:      	add	r2, sp, #0x1c
  40c886:      	ldr	r2, [r2]
  40c888:      	ldr.w	r2, [r2, #0x178]
  40c88c:      	mov	r0, r2
  40c88e:      	movs	r1, #0x0
  40c890:      	blx	r3
  40c892:      	ldr.w	r3, [pc, #0x5b4]        @ 0x40ce48 <_ZN13TrainingStage8doLessonEf+0x2b70>
  40c896:      	ldr	r3, [r4, r3]
  40c898:      	ldr	r3, [r3]
  40c89a:      	ldr.w	r3, [r3, #0x148]
  40c89e:      	ldr	r3, [r3]
  40c8a0:      	add.w	r3, r3, #0x278
  40c8a4:      	ldr	r3, [r3]
  40c8a6:      	ldr.w	r2, [pc, #0x5a0]        @ 0x40ce48 <_ZN13TrainingStage8doLessonEf+0x2b70>
  40c8aa:      	ldr	r2, [r4, r2]
  40c8ac:      	ldr	r2, [r2]
  40c8ae:      	ldr.w	r2, [r2, #0x148]
  40c8b2:      	mov	r0, r2
  40c8b4:      	movs	r1, #0x64
  40c8b6:      	blx	r3
  40c8b8:      	ldr.w	r3, [pc, #0x58c]        @ 0x40ce48 <_ZN13TrainingStage8doLessonEf+0x2b70>
  40c8bc:      	ldr	r3, [r4, r3]
  40c8be:      	ldr	r3, [r3]
  40c8c0:      	ldr.w	r3, [r3, #0x14c]
  40c8c4:      	ldr	r3, [r3]
  40c8c6:      	add.w	r3, r3, #0x278
  40c8ca:      	ldr	r3, [r3]
  40c8cc:      	ldr.w	r2, [pc, #0x578]        @ 0x40ce48 <_ZN13TrainingStage8doLessonEf+0x2b70>
  40c8d0:      	ldr	r2, [r4, r2]
  40c8d2:      	ldr	r2, [r2]
  40c8d4:      	ldr.w	r2, [r2, #0x14c]
  40c8d8:      	mov	r0, r2
  40c8da:      	movs	r1, #0x64
  40c8dc:      	blx	r3
  40c8de:      	ldr.w	r3, [pc, #0x568]        @ 0x40ce48 <_ZN13TrainingStage8doLessonEf+0x2b70>
  40c8e2:      	ldr	r3, [r4, r3]
  40c8e4:      	ldr	r3, [r3]
  40c8e6:      	ldr.w	r3, [r3, #0x148]
  40c8ea:      	ldr	r3, [r3]
  40c8ec:      	add.w	r3, r3, #0x288
  40c8f0:      	ldr	r3, [r3]
  40c8f2:      	ldr.w	r2, [pc, #0x554]        @ 0x40ce48 <_ZN13TrainingStage8doLessonEf+0x2b70>
  40c8f6:      	ldr	r2, [r4, r2]
  40c8f8:      	ldr	r2, [r2]
  40c8fa:      	ldr.w	r2, [r2, #0x148]
  40c8fe:      	mov	r0, r2
  40c900:      	movs	r1, #0x14
  40c902:      	blx	r3
  40c904:      	ldr.w	r3, [pc, #0x540]        @ 0x40ce48 <_ZN13TrainingStage8doLessonEf+0x2b70>
  40c908:      	ldr	r3, [r4, r3]
  40c90a:      	ldr	r3, [r3]
  40c90c:      	ldr.w	r3, [r3, #0x14c]
  40c910:      	ldr	r3, [r3]
  40c912:      	add.w	r3, r3, #0x288
  40c916:      	ldr	r3, [r3]
  40c918:      	ldr.w	r2, [pc, #0x52c]        @ 0x40ce48 <_ZN13TrainingStage8doLessonEf+0x2b70>
  40c91c:      	ldr	r2, [r4, r2]
  40c91e:      	ldr	r2, [r2]
  40c920:      	ldr.w	r2, [r2, #0x14c]
  40c924:      	mov	r0, r2
  40c926:      	movs	r1, #0x14
  40c928:      	blx	r3
  40c92a:      	add	r3, sp, #0x1c
  40c92c:      	ldr	r3, [r3]
  40c92e:      	movs	r2, #0x0
  40c930:      	strb.w	r2, [r3, #0x194]
  40c934:      	add	r3, sp, #0x1c
  40c936:      	ldr	r3, [r3]
  40c938:      	ldr.w	r3, [r3, #0x10c]
  40c93c:      	ldr.w	r3, [r3, #0xf4]
  40c940:      	movs	r2, #0x0
  40c942:      	strb.w	r2, [r3, #0x12e]
  40c946:      	add	r3, sp, #0x1c
  40c948:      	ldr	r3, [r3]
  40c94a:      	ldr.w	r5, [r3, #0x10c]
  40c94e:      	add.w	r3, sp, #0x400
  40c952:      	mov	r0, r3
  40c954:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x37da9c
  40c958:      	add.w	r2, sp, #0x410
  40c95c:      	add.w	r3, sp, #0x400
  40c960:      	mov	r0, r2
  40c962:      	ldr.w	r2, [pc, #0x4ec]        @ 0x40ce50 <_ZN13TrainingStage8doLessonEf+0x2b78>
  40c966:      	add	r2, pc
  40c968:      	mov	r1, r2
  40c96a:      	mov	r2, r3
  40c96c:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3aa0f0
  40c970:      	movs	r0, #0x0
  40c972:      	movs	r1, #0x0
  40c974:      	movs	r2, #0xff
  40c976:      	bl	0x408458 <_ZN6Tracer14checkCollisionEv+0x3cc> @ imm = #-0x4522
  40c97a:      	mov	r2, r0
  40c97c:      	add	r3, sp, #0x60
  40c97e:      	mov	r1, r2
  40c980:      	strb	r1, [r3]
  40c982:      	ubfx	r1, r2, #0x8, #0x8
  40c986:      	strb	r1, [r3, #0x1]
  40c988:      	ubfx	r2, r2, #0x10, #0x8
  40c98c:      	strb	r2, [r3, #0x2]
  40c98e:      	add.w	r2, sp, #0x410
  40c992:      	add	r3, sp, #0x60
  40c994:      	mov	r0, r5
  40c996:      	mov	r1, r2
  40c998:      	ldr	r2, [r3]
  40c99a:      	movs	r3, #0x6
  40c99c:      	bl	0x33d2c0 <_ZN3HUD10addMessageESsN7cocos2d10_ccColor3BEs> @ imm = #-0xcf6e0
  40c9a0:      	add.w	r3, sp, #0x410
  40c9a4:      	mov	r0, r3
  40c9a6:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3a8f6a
  40c9aa:      	add.w	r3, sp, #0x400
  40c9ae:      	mov	r0, r3
  40c9b0:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x37da48
  40c9b4:      	ldr.w	r3, [pc, #0x48c]        @ 0x40ce44 <_ZN13TrainingStage8doLessonEf+0x2b6c>
  40c9b8:      	ldr	r3, [r4, r3]
  40c9ba:      	ldr	r3, [r3]
  40c9bc:      	mov	r0, r3
  40c9be:      	movs	r1, #0x41
  40c9c0:      	movs	r2, #0x1
  40c9c2:      	bl	0x3f7d40 <_ZN5Sound18playSoundWithVoiceEii> @ imm = #-0x14c86
  40c9c6:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x554a
  40c9ca:      	add	r3, sp, #0x1c
  40c9cc:      	ldr	r3, [r3]
  40c9ce:      	ldr.w	r3, [r3, #0x17c]
  40c9d2:      	ldr	r3, [r3]
  40c9d4:      	add.w	r3, r3, #0x238
  40c9d8:      	ldr	r3, [r3]
  40c9da:      	add	r2, sp, #0x1c
  40c9dc:      	ldr	r2, [r2]
  40c9de:      	ldr.w	r2, [r2, #0x17c]
  40c9e2:      	mov	r0, r2
  40c9e4:      	mov.w	r1, #0x0
  40c9e8:      	movt	r1, #0x4334
  40c9ec:      	blx	r3
  40c9ee:      	ldr.w	r3, [pc, #0x458]        @ 0x40ce48 <_ZN13TrainingStage8doLessonEf+0x2b70>
  40c9f2:      	ldr	r3, [r4, r3]
  40c9f4:      	ldr	r3, [r3]
  40c9f6:      	ldr	r3, [r3]
  40c9f8:      	add.w	r3, r3, #0x2a4
  40c9fc:      	ldr	r3, [r3]
  40c9fe:      	ldr.w	r2, [pc, #0x448]        @ 0x40ce48 <_ZN13TrainingStage8doLessonEf+0x2b70>
  40ca02:      	ldr	r2, [r4, r2]
  40ca04:      	ldr	r2, [r2]
  40ca06:      	mov	r0, r2
  40ca08:      	mov.w	r1, #0x0
  40ca0c:      	blx	r3
  40ca0e:      	add	r3, sp, #0x1c
  40ca10:      	ldr	r3, [r3]
  40ca12:      	vldr	s14, [r3, #392]
  40ca16:      	vmov.f32	s15, #2.000000e+00
  40ca1a:      	vcmpe.f32	s14, s15
  40ca1e:      	vmrs	APSR_nzcv, fpscr
  40ca22:      	bpl	0x40ca30 <_ZN13TrainingStage8doLessonEf+0x2758> @ imm = #0xa
  40ca24:      	add	r2, sp, #0x1c
  40ca26:      	add	r3, sp, #0x18
  40ca28:      	ldr	r0, [r2]
  40ca2a:      	ldr	r1, [r3]
  40ca2c:      	bl	0x409e30 <_ZN13TrainingStage11headChatterEf> @ imm = #-0x2c00
  40ca30:      	add	r3, sp, #0x1c
  40ca32:      	ldr	r3, [r3]
  40ca34:      	ldr.w	r3, [r3, #0x174]
  40ca38:      	ldr	r3, [r3]
  40ca3a:      	adds	r3, #0x90
  40ca3c:      	ldr	r3, [r3]
  40ca3e:      	add	r2, sp, #0x1c
  40ca40:      	ldr	r2, [r2]
  40ca42:      	ldr.w	r2, [r2, #0x174]
  40ca46:      	mov	r0, r2
  40ca48:      	movs	r1, #0x0
  40ca4a:      	blx	r3
  40ca4c:      	add	r3, sp, #0x1c
  40ca4e:      	ldr	r3, [r3]
  40ca50:      	vldr	s14, [r3, #392]
  40ca54:      	vmov.f32	s15, #1.000000e+01
  40ca58:      	vcmpe.f32	s14, s15
  40ca5c:      	vmrs	APSR_nzcv, fpscr
  40ca60:      	ble	0x40cb26 <_ZN13TrainingStage8doLessonEf+0x284e> @ imm = #0xc2
  40ca62:      	ldr	r3, [pc, #0x3e4]        @ 0x40ce48 <_ZN13TrainingStage8doLessonEf+0x2b70>
  40ca64:      	ldr	r3, [r4, r3]
  40ca66:      	ldr	r3, [r3]
  40ca68:      	ldr.w	r3, [r3, #0x148]
  40ca6c:      	ldr	r3, [r3]
  40ca6e:      	add.w	r3, r3, #0x274
  40ca72:      	ldr	r3, [r3]
  40ca74:      	ldr	r2, [pc, #0x3d0]        @ 0x40ce48 <_ZN13TrainingStage8doLessonEf+0x2b70>
  40ca76:      	ldr	r2, [r4, r2]
  40ca78:      	ldr	r2, [r2]
  40ca7a:      	ldr.w	r2, [r2, #0x148]
  40ca7e:      	mov	r0, r2
  40ca80:      	blx	r3
  40ca82:      	mov	r3, r0
  40ca84:      	uxth	r3, r3
  40ca86:      	sxth	r5, r3
  40ca88:      	ldr	r3, [pc, #0x3bc]        @ 0x40ce48 <_ZN13TrainingStage8doLessonEf+0x2b70>
  40ca8a:      	ldr	r3, [r4, r3]
  40ca8c:      	ldr	r3, [r3]
  40ca8e:      	ldr.w	r3, [r3, #0x148]
  40ca92:      	ldr	r3, [r3]
  40ca94:      	add.w	r3, r3, #0x284
  40ca98:      	ldr	r3, [r3]
  40ca9a:      	ldr	r2, [pc, #0x3ac]        @ 0x40ce48 <_ZN13TrainingStage8doLessonEf+0x2b70>
  40ca9c:      	ldr	r2, [r4, r2]
  40ca9e:      	ldr	r2, [r2]
  40caa0:      	ldr.w	r2, [r2, #0x148]
  40caa4:      	mov	r0, r2
  40caa6:      	blx	r3
  40caa8:      	mov	r3, r0
  40caaa:      	uxth	r3, r3
  40caac:      	sxth	r3, r3
  40caae:      	add	r3, r5
  40cab0:      	cmp	r3, #0x77
  40cab2:      	ble	0x40cb0a <_ZN13TrainingStage8doLessonEf+0x2832> @ imm = #0x54
  40cab4:      	ldr	r3, [pc, #0x390]        @ 0x40ce48 <_ZN13TrainingStage8doLessonEf+0x2b70>
  40cab6:      	ldr	r3, [r4, r3]
  40cab8:      	ldr	r3, [r3]
  40caba:      	ldr.w	r3, [r3, #0x14c]
  40cabe:      	ldr	r3, [r3]
  40cac0:      	add.w	r3, r3, #0x274
  40cac4:      	ldr	r3, [r3]
  40cac6:      	ldr	r2, [pc, #0x380]        @ 0x40ce48 <_ZN13TrainingStage8doLessonEf+0x2b70>
  40cac8:      	ldr	r2, [r4, r2]
  40caca:      	ldr	r2, [r2]
  40cacc:      	ldr.w	r2, [r2, #0x14c]
  40cad0:      	mov	r0, r2
  40cad2:      	blx	r3
  40cad4:      	mov	r3, r0
  40cad6:      	uxth	r3, r3
  40cad8:      	sxth	r5, r3
  40cada:      	ldr	r3, [pc, #0x36c]        @ 0x40ce48 <_ZN13TrainingStage8doLessonEf+0x2b70>
  40cadc:      	ldr	r3, [r4, r3]
  40cade:      	ldr	r3, [r3]
  40cae0:      	ldr.w	r3, [r3, #0x14c]
  40cae4:      	ldr	r3, [r3]
  40cae6:      	add.w	r3, r3, #0x284
  40caea:      	ldr	r3, [r3]
  40caec:      	ldr	r2, [pc, #0x358]        @ 0x40ce48 <_ZN13TrainingStage8doLessonEf+0x2b70>
  40caee:      	ldr	r2, [r4, r2]
  40caf0:      	ldr	r2, [r2]
  40caf2:      	ldr.w	r2, [r2, #0x14c]
  40caf6:      	mov	r0, r2
  40caf8:      	blx	r3
  40cafa:      	mov	r3, r0
  40cafc:      	uxth	r3, r3
  40cafe:      	sxth	r3, r3
  40cb00:      	add	r3, r5
  40cb02:      	cmp	r3, #0x77
  40cb04:      	ble	0x40cb0a <_ZN13TrainingStage8doLessonEf+0x2832> @ imm = #0x2
  40cb06:      	movs	r3, #0x1
  40cb08:      	b	0x40cb0c <_ZN13TrainingStage8doLessonEf+0x2834> @ imm = #0x0
  40cb0a:      	movs	r3, #0x0
  40cb0c:      	cmp	r3, #0x0
  40cb0e:      	beq	0x40cb26 <_ZN13TrainingStage8doLessonEf+0x284e> @ imm = #0x14
  40cb10:      	add	r3, sp, #0x1c
  40cb12:      	ldr	r3, [r3]
  40cb14:      	movs	r2, #0x11
  40cb16:      	str.w	r2, [r3, #0x180]
  40cb1a:      	add	r3, sp, #0x1c
  40cb1c:      	ldr	r3, [r3]
  40cb1e:      	mov.w	r2, #0x0
  40cb22:      	str.w	r2, [r3, #0x188]
  40cb26:      	add	r3, sp, #0x1c
  40cb28:      	ldr	r3, [r3]
  40cb2a:      	vldr	s14, [r3, #392]
  40cb2e:      	vmov.f32	s15, #1.500000e+01
  40cb32:      	vcmpe.f32	s14, s15
  40cb36:      	vmrs	APSR_nzcv, fpscr
  40cb3a:      	ble.w	0x40ccf8 <_ZN13TrainingStage8doLessonEf+0x2a20> @ imm = #0x1ba
  40cb3e:      	add	r3, sp, #0x1c
  40cb40:      	ldr	r3, [r3]
  40cb42:      	ldr.w	r3, [r3, #0x180]
  40cb46:      	adds	r2, r3, #0x1
  40cb48:      	add	r3, sp, #0x1c
  40cb4a:      	ldr	r3, [r3]
  40cb4c:      	str.w	r2, [r3, #0x180]
  40cb50:      	add	r3, sp, #0x1c
  40cb52:      	ldr	r3, [r3]
  40cb54:      	mov.w	r2, #0x0
  40cb58:      	str.w	r2, [r3, #0x188]
  40cb5c:      	add	r3, sp, #0x1c
  40cb5e:      	ldr	r3, [r3]
  40cb60:      	ldr.w	r5, [r3, #0x10c]
  40cb64:      	add.w	r3, sp, #0x400
  40cb68:      	mov	r0, r3
  40cb6a:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x37d886
  40cb6e:      	add.w	r2, sp, #0x410
  40cb72:      	add.w	r3, sp, #0x400
  40cb76:      	mov	r0, r2
  40cb78:      	ldr	r2, [pc, #0x2d8]        @ 0x40ce54 <_ZN13TrainingStage8doLessonEf+0x2b7c>
  40cb7a:      	add	r2, pc
  40cb7c:      	mov	r1, r2
  40cb7e:      	mov	r2, r3
  40cb80:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3a9edc
  40cb84:      	movs	r0, #0x0
  40cb86:      	movs	r1, #0x0
  40cb88:      	movs	r2, #0xff
  40cb8a:      	bl	0x408458 <_ZN6Tracer14checkCollisionEv+0x3cc> @ imm = #-0x4736
  40cb8e:      	mov	r2, r0
  40cb90:      	add	r3, sp, #0x64
  40cb92:      	mov	r1, r2
  40cb94:      	strb	r1, [r3]
  40cb96:      	ubfx	r1, r2, #0x8, #0x8
  40cb9a:      	strb	r1, [r3, #0x1]
  40cb9c:      	ubfx	r2, r2, #0x10, #0x8
  40cba0:      	strb	r2, [r3, #0x2]
  40cba2:      	add.w	r2, sp, #0x410
  40cba6:      	add	r3, sp, #0x64
  40cba8:      	mov	r0, r5
  40cbaa:      	mov	r1, r2
  40cbac:      	ldr	r2, [r3]
  40cbae:      	movs	r3, #0x6
  40cbb0:      	bl	0x33d2c0 <_ZN3HUD10addMessageESsN7cocos2d10_ccColor3BEs> @ imm = #-0xcf8f4
  40cbb4:      	add.w	r3, sp, #0x410
  40cbb8:      	mov	r0, r3
  40cbba:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3a8d56
  40cbbe:      	add.w	r3, sp, #0x400
  40cbc2:      	mov	r0, r3
  40cbc4:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x37d834
  40cbc8:      	ldr	r3, [pc, #0x278]        @ 0x40ce44 <_ZN13TrainingStage8doLessonEf+0x2b6c>
  40cbca:      	ldr	r3, [r4, r3]
  40cbcc:      	ldr	r3, [r3]
  40cbce:      	mov	r0, r3
  40cbd0:      	movs	r1, #0x42
  40cbd2:      	movs	r2, #0x1
  40cbd4:      	bl	0x3f7d40 <_ZN5Sound18playSoundWithVoiceEii> @ imm = #-0x14e98
  40cbd8:      	add	r3, sp, #0x1c
  40cbda:      	ldr	r3, [r3]
  40cbdc:      	ldr.w	r5, [r3, #0x1a4]
  40cbe0:      	ldr	r3, [pc, #0x264]        @ 0x40ce48 <_ZN13TrainingStage8doLessonEf+0x2b70>
  40cbe2:      	ldr	r3, [r4, r3]
  40cbe4:      	ldr	r3, [r3]
  40cbe6:      	ldr.w	r3, [r3, #0x138]
  40cbea:      	vldr	d6, [r3, #40]
  40cbee:      	vldr	d7, [pc, #576]          @ 0x40ce30 <_ZN13TrainingStage8doLessonEf+0x2b58>
  40cbf2:      	vsub.f64	d6, d6, d7
  40cbf6:      	ldr	r3, [pc, #0x250]        @ 0x40ce48 <_ZN13TrainingStage8doLessonEf+0x2b70>
  40cbf8:      	ldr	r3, [r4, r3]
  40cbfa:      	ldr	r3, [r3]
  40cbfc:      	ldr.w	r3, [r3, #0x138]
  40cc00:      	vldr	d5, [r3, #48]
  40cc04:      	vldr	d7, [pc, #560]          @ 0x40ce38 <_ZN13TrainingStage8doLessonEf+0x2b60>
  40cc08:      	vadd.f64	d7, d5, d7
  40cc0c:      	add	r3, sp, #0x170
  40cc0e:      	mov	r0, r3
  40cc10:      	vmov.f64	d0, d6
  40cc14:      	vmov.f64	d1, d7
  40cc18:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x4748
  40cc1c:      	add	r3, sp, #0x170
  40cc1e:      	mov	r2, sp
  40cc20:      	add.w	r1, r3, #0x8
  40cc24:      	ldm	r1, {r0, r1}
  40cc26:      	stm.w	r2, {r0, r1}
  40cc2a:      	ldm	r3, {r2, r3}
  40cc2c:      	mov	r0, r5
  40cc2e:      	bl	0x31a748 <_ZN12EnemyManager12addHawkDroneE6cpVect> @ imm = #-0xf24ea
  40cc32:      	mov	r3, r0
  40cc34:      	movs	r2, #0x4
  40cc36:      	str.w	r2, [r3, #0x15c]
  40cc3a:      	add	r3, sp, #0x1c
  40cc3c:      	ldr	r3, [r3]
  40cc3e:      	ldr.w	r5, [r3, #0x1a4]
  40cc42:      	ldr	r3, [pc, #0x204]        @ 0x40ce48 <_ZN13TrainingStage8doLessonEf+0x2b70>
  40cc44:      	ldr	r3, [r4, r3]
  40cc46:      	ldr	r3, [r3]
  40cc48:      	ldr.w	r3, [r3, #0x138]
  40cc4c:      	vldr	d6, [r3, #40]
  40cc50:      	ldr	r3, [pc, #0x1f4]        @ 0x40ce48 <_ZN13TrainingStage8doLessonEf+0x2b70>
  40cc52:      	ldr	r3, [r4, r3]
  40cc54:      	ldr	r3, [r3]
  40cc56:      	ldr.w	r3, [r3, #0x138]
  40cc5a:      	vldr	d5, [r3, #48]
  40cc5e:      	vldr	d7, [pc, #472]          @ 0x40ce38 <_ZN13TrainingStage8doLessonEf+0x2b60>
  40cc62:      	vadd.f64	d7, d5, d7
  40cc66:      	add	r3, sp, #0x180
  40cc68:      	mov	r0, r3
  40cc6a:      	vmov.f64	d0, d6
  40cc6e:      	vmov.f64	d1, d7
  40cc72:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x47a2
  40cc76:      	add	r3, sp, #0x180
  40cc78:      	mov	r2, sp
  40cc7a:      	add.w	r1, r3, #0x8
  40cc7e:      	ldm	r1, {r0, r1}
  40cc80:      	stm.w	r2, {r0, r1}
  40cc84:      	ldm	r3, {r2, r3}
  40cc86:      	mov	r0, r5
  40cc88:      	bl	0x31a748 <_ZN12EnemyManager12addHawkDroneE6cpVect> @ imm = #-0xf2544
  40cc8c:      	mov	r3, r0
  40cc8e:      	movs	r2, #0x4
  40cc90:      	str.w	r2, [r3, #0x15c]
  40cc94:      	add	r3, sp, #0x1c
  40cc96:      	ldr	r3, [r3]
  40cc98:      	ldr.w	r5, [r3, #0x1a4]
  40cc9c:      	ldr	r3, [pc, #0x1a8]        @ 0x40ce48 <_ZN13TrainingStage8doLessonEf+0x2b70>
  40cc9e:      	ldr	r3, [r4, r3]
  40cca0:      	ldr	r3, [r3]
  40cca2:      	ldr.w	r3, [r3, #0x138]
  40cca6:      	vldr	d6, [r3, #40]
  40ccaa:      	vldr	d7, [pc, #388]          @ 0x40ce30 <_ZN13TrainingStage8doLessonEf+0x2b58>
  40ccae:      	vadd.f64	d6, d6, d7
  40ccb2:      	ldr	r3, [pc, #0x194]        @ 0x40ce48 <_ZN13TrainingStage8doLessonEf+0x2b70>
  40ccb4:      	ldr	r3, [r4, r3]
  40ccb6:      	ldr	r3, [r3]
  40ccb8:      	ldr.w	r3, [r3, #0x138]
  40ccbc:      	vldr	d5, [r3, #48]
  40ccc0:      	vldr	d7, [pc, #372]          @ 0x40ce38 <_ZN13TrainingStage8doLessonEf+0x2b60>
  40ccc4:      	vadd.f64	d7, d5, d7
  40ccc8:      	add	r3, sp, #0x190
  40ccca:      	mov	r0, r3
  40cccc:      	vmov.f64	d0, d6
  40ccd0:      	vmov.f64	d1, d7
  40ccd4:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x4804
  40ccd8:      	add	r3, sp, #0x190
  40ccda:      	mov	r2, sp
  40ccdc:      	add.w	r1, r3, #0x8
  40cce0:      	ldm	r1, {r0, r1}
  40cce2:      	stm.w	r2, {r0, r1}
  40cce6:      	ldm	r3, {r2, r3}
  40cce8:      	mov	r0, r5
  40ccea:      	bl	0x31a748 <_ZN12EnemyManager12addHawkDroneE6cpVect> @ imm = #-0xf25a6
  40ccee:      	mov	r3, r0
  40ccf0:      	movs	r2, #0x4
  40ccf2:      	str.w	r2, [r3, #0x15c]
  40ccf6:      	b	0x40ce28 <_ZN13TrainingStage8doLessonEf+0x2b50> @ imm = #0x12e
  40ccf8:      	add	r3, sp, #0x1c
  40ccfa:      	ldr	r3, [r3]
  40ccfc:      	ldr.w	r3, [r3, #0x10c]
  40cd00:      	ldr.w	r3, [r3, #0xf4]
  40cd04:      	ldrb.w	r3, [r3, #0x130]
  40cd08:      	eor	r3, r3, #0x1
  40cd0c:      	uxtb	r3, r3
  40cd0e:      	cmp	r3, #0x0
  40cd10:      	beq.w	0x40ce28 <_ZN13TrainingStage8doLessonEf+0x2b50> @ imm = #0x114
  40cd14:      	add	r3, sp, #0x1c
  40cd16:      	ldr	r3, [r3]
  40cd18:      	ldr.w	r3, [r3, #0x174]
  40cd1c:      	ldr	r3, [r3]
  40cd1e:      	adds	r3, #0x90
  40cd20:      	ldr	r3, [r3]
  40cd22:      	add	r2, sp, #0x1c
  40cd24:      	ldr	r2, [r2]
  40cd26:      	ldr.w	r2, [r2, #0x174]
  40cd2a:      	mov	r0, r2
  40cd2c:      	movs	r1, #0x1
  40cd2e:      	blx	r3
  40cd30:      	add	r3, sp, #0x1c
  40cd32:      	ldr	r3, [r3]
  40cd34:      	ldr.w	r3, [r3, #0x174]
  40cd38:      	ldr	r3, [r3]
  40cd3a:      	adds	r3, #0x98
  40cd3c:      	ldr	r3, [r3]
  40cd3e:      	add	r2, sp, #0x1c
  40cd40:      	ldr	r2, [r2]
  40cd42:      	ldr.w	r2, [r2, #0x174]
  40cd46:      	mov	r0, r2
  40cd48:      	mov.w	r1, #0x0
  40cd4c:      	movt	r1, #0x42b4
  40cd50:      	blx	r3
  40cd52:      	add	r3, sp, #0x1c
  40cd54:      	ldr	r3, [r3]
  40cd56:      	ldr.w	r3, [r3, #0x16c]
  40cd5a:      	ldr	r3, [r3]
  40cd5c:      	adds	r3, #0x4c
  40cd5e:      	ldr	r4, [r3]
  40cd60:      	add	r3, sp, #0x1c
  40cd62:      	ldr	r3, [r3]
  40cd64:      	ldr.w	r5, [r3, #0x16c]
  40cd68:      	add	r3, sp, #0x1c
  40cd6a:      	ldr	r3, [r3]
  40cd6c:      	vldr	s14, [r3, #392]
  40cd70:      	vmov.f32	s15, #5.000000e+00
  40cd74:      	vmul.f32	s15, s14, s15
  40cd78:      	vcvt.f64.f32	d7, s15
  40cd7c:      	vmov	r0, r1, d7
  40cd80:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x136e7c
  40cd84:      	vmov	d6, r0, r1
  40cd88:      	vmov.f64	d7, #1.000000e+01
  40cd8c:      	vmul.f64	d7, d6, d7
  40cd90:      	vcvt.f32.f64	s15, d7
  40cd94:      	add.w	r3, sp, #0x410
  40cd98:      	mov	r0, r3
  40cd9a:      	vmov	r1, s15
  40cd9e:      	mov.w	r2, #0x0
  40cda2:      	bl	0x592cf0 <_ZN7cocos2d7CCPointC2Eff> @ imm = #0x185f4a
  40cda6:      	add.w	r3, sp, #0x410
  40cdaa:      	mov	r0, r5
  40cdac:      	mov	r1, r3
  40cdae:      	blx	r4
  40cdb0:      	add	r3, sp, #0x1c
  40cdb2:      	ldr	r3, [r3]
  40cdb4:      	ldr.w	r3, [r3, #0x174]
  40cdb8:      	ldr	r3, [r3]
  40cdba:      	adds	r3, #0x4c
  40cdbc:      	ldr	r4, [r3]
  40cdbe:      	add	r3, sp, #0x1c
  40cdc0:      	ldr	r3, [r3]
  40cdc2:      	ldr.w	r5, [r3, #0x174]
  40cdc6:      	add	r3, sp, #0x1c
  40cdc8:      	ldr	r3, [r3]
  40cdca:      	ldr.w	r3, [r3, #0x10c]
  40cdce:      	ldr.w	r3, [r3, #0xf4]
  40cdd2:      	ldr.w	r3, [r3, #0xf4]
  40cdd6:      	ldr	r3, [r3]
  40cdd8:      	adds	r3, #0x50
  40cdda:      	ldr	r3, [r3]
  40cddc:      	add	r2, sp, #0x1c
  40cdde:      	ldr	r2, [r2]
  40cde0:      	ldr.w	r2, [r2, #0x10c]
  40cde4:      	ldr.w	r2, [r2, #0xf4]
  40cde8:      	ldr.w	r2, [r2, #0xf4]
  40cdec:      	mov	r0, r2
  40cdee:      	blx	r3
  40cdf0:      	mov	r6, r0
  40cdf2:      	add.w	r3, sp, #0x400
  40cdf6:      	mov	r0, r3
  40cdf8:      	mov.w	r1, #0x0
  40cdfc:      	movt	r1, #0xc170
  40ce00:      	mov.w	r2, #0x0
  40ce04:      	movt	r2, #0x428c
  40ce08:      	bl	0x592cf0 <_ZN7cocos2d7CCPointC2Eff> @ imm = #0x185ee4
  40ce0c:      	add.w	r2, sp, #0x410
  40ce10:      	add.w	r3, sp, #0x400
  40ce14:      	mov	r0, r2
  40ce16:      	mov	r1, r6
  40ce18:      	mov	r2, r3
  40ce1a:      	bl	0x4084b4 <_ZN6Tracer14checkCollisionEv+0x428> @ imm = #-0x496a
  40ce1e:      	add.w	r3, sp, #0x410
  40ce22:      	mov	r0, r5
  40ce24:      	mov	r1, r3
  40ce26:      	blx	r4
  40ce28:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x50e8
// TrainingStage::doLesson  ghidra=0x41ce58-0x41d9a5  elf=0x40ce58-0x40d9a5  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  40ce58:      	add	r3, sp, #0x1c
  40ce5a:      	ldr	r3, [r3]
  40ce5c:      	ldr.w	r3, [r3, #0x17c]
  40ce60:      	ldr	r3, [r3]
  40ce62:      	add.w	r3, r3, #0x238
  40ce66:      	ldr	r3, [r3]
  40ce68:      	add	r2, sp, #0x1c
  40ce6a:      	ldr	r2, [r2]
  40ce6c:      	ldr.w	r2, [r2, #0x17c]
  40ce70:      	mov	r0, r2
  40ce72:      	mov.w	r1, #0x0
  40ce76:      	movt	r1, #0x4334
  40ce7a:      	blx	r3
  40ce7c:      	ldr.w	r3, [pc, #0xb48]        @ 0x40d9c8 <_ZN13TrainingStage8doLessonEf+0x36f0>
  40ce80:      	ldr	r3, [r4, r3]
  40ce82:      	ldr	r3, [r3]
  40ce84:      	ldr	r3, [r3]
  40ce86:      	add.w	r3, r3, #0x2a4
  40ce8a:      	ldr	r3, [r3]
  40ce8c:      	ldr.w	r2, [pc, #0xb38]        @ 0x40d9c8 <_ZN13TrainingStage8doLessonEf+0x36f0>
  40ce90:      	ldr	r2, [r4, r2]
  40ce92:      	ldr	r2, [r2]
  40ce94:      	mov	r0, r2
  40ce96:      	mov.w	r1, #0x0
  40ce9a:      	blx	r3
  40ce9c:      	ldr.w	r3, [pc, #0xb28]        @ 0x40d9c8 <_ZN13TrainingStage8doLessonEf+0x36f0>
  40cea0:      	ldr	r3, [r4, r3]
  40cea2:      	ldr	r3, [r3]
  40cea4:      	ldr.w	r3, [r3, #0x148]
  40cea8:      	ldr	r3, [r3]
  40ceaa:      	add.w	r3, r3, #0x278
  40ceae:      	ldr	r3, [r3]
  40ceb0:      	ldr.w	r2, [pc, #0xb14]        @ 0x40d9c8 <_ZN13TrainingStage8doLessonEf+0x36f0>
  40ceb4:      	ldr	r2, [r4, r2]
  40ceb6:      	ldr	r2, [r2]
  40ceb8:      	ldr.w	r2, [r2, #0x148]
  40cebc:      	mov	r0, r2
  40cebe:      	movs	r1, #0xc8
  40cec0:      	blx	r3
  40cec2:      	ldr.w	r3, [pc, #0xb04]        @ 0x40d9c8 <_ZN13TrainingStage8doLessonEf+0x36f0>
  40cec6:      	ldr	r3, [r4, r3]
  40cec8:      	ldr	r3, [r3]
  40ceca:      	ldr.w	r3, [r3, #0x14c]
  40cece:      	ldr	r3, [r3]
  40ced0:      	add.w	r3, r3, #0x278
  40ced4:      	ldr	r3, [r3]
  40ced6:      	ldr.w	r2, [pc, #0xaf0]        @ 0x40d9c8 <_ZN13TrainingStage8doLessonEf+0x36f0>
  40ceda:      	ldr	r2, [r4, r2]
  40cedc:      	ldr	r2, [r2]
  40cede:      	ldr.w	r2, [r2, #0x14c]
  40cee2:      	mov	r0, r2
  40cee4:      	movs	r1, #0xc8
  40cee6:      	blx	r3
  40cee8:      	add	r3, sp, #0x1c
  40ceea:      	ldr	r3, [r3]
  40ceec:      	vldr	s14, [r3, #392]
  40cef0:      	vmov.f32	s15, #2.000000e+00
  40cef4:      	vcmpe.f32	s14, s15
  40cef8:      	vmrs	APSR_nzcv, fpscr
  40cefc:      	bpl	0x40cf0a <_ZN13TrainingStage8doLessonEf+0x2c32> @ imm = #0xa
  40cefe:      	add	r2, sp, #0x1c
  40cf00:      	add	r3, sp, #0x18
  40cf02:      	ldr	r0, [r2]
  40cf04:      	ldr	r1, [r3]
  40cf06:      	bl	0x409e30 <_ZN13TrainingStage11headChatterEf> @ imm = #-0x30da
  40cf0a:      	add	r3, sp, #0x1c
  40cf0c:      	ldr	r3, [r3]
  40cf0e:      	ldr.w	r3, [r3, #0x1a4]
  40cf12:      	ldr	r3, [r3, #0x14]
  40cf14:      	mov	r0, r3
  40cf16:      	bl	0x593c6c <_ZN7cocos2d12CCDictionary5countEv> @ imm = #0x186d52
  40cf1a:      	mov	r3, r0
  40cf1c:      	cmp	r3, #0x0
  40cf1e:      	bne	0x40cf3a <_ZN13TrainingStage8doLessonEf+0x2c62> @ imm = #0x18
  40cf20:      	add	r3, sp, #0x1c
  40cf22:      	ldr	r3, [r3]
  40cf24:      	vldr	s14, [r3, #392]
  40cf28:      	vmov.f32	s15, #6.000000e+00
  40cf2c:      	vcmpe.f32	s14, s15
  40cf30:      	vmrs	APSR_nzcv, fpscr
  40cf34:      	ble	0x40cf3a <_ZN13TrainingStage8doLessonEf+0x2c62> @ imm = #0x2
  40cf36:      	movs	r3, #0x1
  40cf38:      	b	0x40cf3c <_ZN13TrainingStage8doLessonEf+0x2c64> @ imm = #0x0
  40cf3a:      	movs	r3, #0x0
  40cf3c:      	cmp	r3, #0x0
  40cf3e:      	beq	0x40cf5e <_ZN13TrainingStage8doLessonEf+0x2c86> @ imm = #0x1c
  40cf40:      	add	r3, sp, #0x1c
  40cf42:      	ldr	r3, [r3]
  40cf44:      	ldr.w	r3, [r3, #0x180]
  40cf48:      	adds	r2, r3, #0x1
  40cf4a:      	add	r3, sp, #0x1c
  40cf4c:      	ldr	r3, [r3]
  40cf4e:      	str.w	r2, [r3, #0x180]
  40cf52:      	add	r3, sp, #0x1c
  40cf54:      	ldr	r3, [r3]
  40cf56:      	mov.w	r2, #0x0
  40cf5a:      	str.w	r2, [r3, #0x188]
  40cf5e:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x4fb2
  40cf62:      	add	r3, sp, #0x1c
  40cf64:      	ldr	r3, [r3]
  40cf66:      	ldr.w	r3, [r3, #0x17c]
  40cf6a:      	ldr	r3, [r3]
  40cf6c:      	add.w	r3, r3, #0x238
  40cf70:      	ldr	r3, [r3]
  40cf72:      	add	r2, sp, #0x1c
  40cf74:      	ldr	r2, [r2]
  40cf76:      	ldr.w	r2, [r2, #0x17c]
  40cf7a:      	mov	r0, r2
  40cf7c:      	mov.w	r1, #0x0
  40cf80:      	movt	r1, #0x4334
  40cf84:      	blx	r3
  40cf86:      	ldr.w	r3, [pc, #0xa40]        @ 0x40d9c8 <_ZN13TrainingStage8doLessonEf+0x36f0>
  40cf8a:      	ldr	r3, [r4, r3]
  40cf8c:      	ldr	r3, [r3]
  40cf8e:      	ldr	r3, [r3]
  40cf90:      	add.w	r3, r3, #0x2a4
  40cf94:      	ldr	r3, [r3]
  40cf96:      	ldr.w	r2, [pc, #0xa30]        @ 0x40d9c8 <_ZN13TrainingStage8doLessonEf+0x36f0>
  40cf9a:      	ldr	r2, [r4, r2]
  40cf9c:      	ldr	r2, [r2]
  40cf9e:      	mov	r0, r2
  40cfa0:      	mov.w	r1, #0x0
  40cfa4:      	blx	r3
  40cfa6:      	add	r3, sp, #0x1c
  40cfa8:      	ldr	r3, [r3]
  40cfaa:      	ldr.w	r3, [r3, #0x1a4]
  40cfae:      	ldr	r3, [r3, #0x14]
  40cfb0:      	mov	r0, r3
  40cfb2:      	bl	0x593c6c <_ZN7cocos2d12CCDictionary5countEv> @ imm = #0x186cb6
  40cfb6:      	mov	r3, r0
  40cfb8:      	cmp	r3, #0x0
  40cfba:      	ite	ne
  40cfbc:      	movne	r3, #0x0
  40cfbe:      	moveq	r3, #0x1
  40cfc0:      	uxtb	r3, r3
  40cfc2:      	cmp	r3, #0x0
  40cfc4:      	beq	0x40d064 <_ZN13TrainingStage8doLessonEf+0x2d8c> @ imm = #0x9c
  40cfc6:      	add	r3, sp, #0x1c
  40cfc8:      	ldr	r3, [r3]
  40cfca:      	ldr.w	r5, [r3, #0x10c]
  40cfce:      	add.w	r3, sp, #0x400
  40cfd2:      	mov	r0, r3
  40cfd4:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x37d41c
  40cfd8:      	add.w	r2, sp, #0x410
  40cfdc:      	add.w	r3, sp, #0x400
  40cfe0:      	mov	r0, r2
  40cfe2:      	ldr.w	r2, [pc, #0x9e8]        @ 0x40d9cc <_ZN13TrainingStage8doLessonEf+0x36f4>
  40cfe6:      	add	r2, pc
  40cfe8:      	mov	r1, r2
  40cfea:      	mov	r2, r3
  40cfec:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3a9a70
  40cff0:      	movs	r0, #0x0
  40cff2:      	movs	r1, #0x0
  40cff4:      	movs	r2, #0xff
  40cff6:      	bl	0x408458 <_ZN6Tracer14checkCollisionEv+0x3cc> @ imm = #-0x4ba2
  40cffa:      	mov	r2, r0
  40cffc:      	add	r3, sp, #0x68
  40cffe:      	mov	r1, r2
  40d000:      	strb	r1, [r3]
  40d002:      	ubfx	r1, r2, #0x8, #0x8
  40d006:      	strb	r1, [r3, #0x1]
  40d008:      	ubfx	r2, r2, #0x10, #0x8
  40d00c:      	strb	r2, [r3, #0x2]
  40d00e:      	add.w	r2, sp, #0x410
  40d012:      	add	r3, sp, #0x68
  40d014:      	mov	r0, r5
  40d016:      	mov	r1, r2
  40d018:      	ldr	r2, [r3]
  40d01a:      	movs	r3, #0x3
  40d01c:      	bl	0x33d2c0 <_ZN3HUD10addMessageESsN7cocos2d10_ccColor3BEs> @ imm = #-0xcfd60
  40d020:      	add.w	r3, sp, #0x410
  40d024:      	mov	r0, r3
  40d026:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3a88ea
  40d02a:      	add.w	r3, sp, #0x400
  40d02e:      	mov	r0, r3
  40d030:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x37d3c8
  40d034:      	ldr.w	r3, [pc, #0x998]        @ 0x40d9d0 <_ZN13TrainingStage8doLessonEf+0x36f8>
  40d038:      	ldr	r3, [r4, r3]
  40d03a:      	ldr	r3, [r3]
  40d03c:      	mov	r0, r3
  40d03e:      	movs	r1, #0x5b
  40d040:      	movs	r2, #0x1
  40d042:      	bl	0x3f7d40 <_ZN5Sound18playSoundWithVoiceEii> @ imm = #-0x15306
  40d046:      	add	r3, sp, #0x1c
  40d048:      	ldr	r3, [r3]
  40d04a:      	ldr.w	r3, [r3, #0x180]
  40d04e:      	adds	r2, r3, #0x1
  40d050:      	add	r3, sp, #0x1c
  40d052:      	ldr	r3, [r3]
  40d054:      	str.w	r2, [r3, #0x180]
  40d058:      	add	r3, sp, #0x1c
  40d05a:      	ldr	r3, [r3]
  40d05c:      	mov.w	r2, #0x0
  40d060:      	str.w	r2, [r3, #0x188]
  40d064:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x4eac
  40d068:      	add	r3, sp, #0x1c
  40d06a:      	ldr	r3, [r3]
  40d06c:      	ldr.w	r3, [r3, #0x17c]
  40d070:      	ldr	r3, [r3]
  40d072:      	add.w	r3, r3, #0x238
  40d076:      	ldr	r3, [r3]
  40d078:      	add	r2, sp, #0x1c
  40d07a:      	ldr	r2, [r2]
  40d07c:      	ldr.w	r2, [r2, #0x17c]
  40d080:      	mov	r0, r2
  40d082:      	mov.w	r1, #0x0
  40d086:      	movt	r1, #0x4334
  40d08a:      	blx	r3
  40d08c:      	ldr.w	r3, [pc, #0x938]        @ 0x40d9c8 <_ZN13TrainingStage8doLessonEf+0x36f0>
  40d090:      	ldr	r3, [r4, r3]
  40d092:      	ldr	r3, [r3]
  40d094:      	ldr	r3, [r3]
  40d096:      	add.w	r3, r3, #0x2a4
  40d09a:      	ldr	r3, [r3]
  40d09c:      	ldr.w	r2, [pc, #0x928]        @ 0x40d9c8 <_ZN13TrainingStage8doLessonEf+0x36f0>
  40d0a0:      	ldr	r2, [r4, r2]
  40d0a2:      	ldr	r2, [r2]
  40d0a4:      	mov	r0, r2
  40d0a6:      	mov.w	r1, #0x0
  40d0aa:      	blx	r3
  40d0ac:      	add	r3, sp, #0x1c
  40d0ae:      	ldr	r3, [r3]
  40d0b0:      	vldr	s14, [r3, #392]
  40d0b4:      	vmov.f32	s15, #1.000000e+00
  40d0b8:      	vcmpe.f32	s14, s15
  40d0bc:      	vmrs	APSR_nzcv, fpscr
  40d0c0:      	bpl	0x40d0ce <_ZN13TrainingStage8doLessonEf+0x2df6> @ imm = #0xa
  40d0c2:      	add	r2, sp, #0x1c
  40d0c4:      	add	r3, sp, #0x18
  40d0c6:      	ldr	r0, [r2]
  40d0c8:      	ldr	r1, [r3]
  40d0ca:      	bl	0x409e30 <_ZN13TrainingStage11headChatterEf> @ imm = #-0x329e
  40d0ce:      	add	r3, sp, #0x1c
  40d0d0:      	ldr	r3, [r3]
  40d0d2:      	vldr	s14, [r3, #392]
  40d0d6:      	vmov.f32	s15, #4.000000e+00
  40d0da:      	vcmpe.f32	s14, s15
  40d0de:      	vmrs	APSR_nzcv, fpscr
  40d0e2:      	bgt	0x40d0e8 <_ZN13TrainingStage8doLessonEf+0x2e10> @ imm = #0x2
  40d0e4:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x4e2c
  40d0e8:      	add	r3, sp, #0x1c
  40d0ea:      	ldr	r3, [r3]
  40d0ec:      	ldr.w	r3, [r3, #0x180]
  40d0f0:      	adds	r2, r3, #0x1
  40d0f2:      	add	r3, sp, #0x1c
  40d0f4:      	ldr	r3, [r3]
  40d0f6:      	str.w	r2, [r3, #0x180]
  40d0fa:      	add	r3, sp, #0x1c
  40d0fc:      	ldr	r3, [r3]
  40d0fe:      	mov.w	r2, #0x0
  40d102:      	str.w	r2, [r3, #0x188]
  40d106:      	add	r3, sp, #0x1c
  40d108:      	ldr	r3, [r3]
  40d10a:      	ldr.w	r5, [r3, #0x10c]
  40d10e:      	add.w	r3, sp, #0x400
  40d112:      	mov	r0, r3
  40d114:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x37d2dc
  40d118:      	add.w	r2, sp, #0x410
  40d11c:      	add.w	r3, sp, #0x400
  40d120:      	mov	r0, r2
  40d122:      	ldr.w	r2, [pc, #0x8b0]        @ 0x40d9d4 <_ZN13TrainingStage8doLessonEf+0x36fc>
  40d126:      	add	r2, pc
  40d128:      	mov	r1, r2
  40d12a:      	mov	r2, r3
  40d12c:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3a9930
  40d130:      	movs	r0, #0x0
  40d132:      	movs	r1, #0x0
  40d134:      	movs	r2, #0xff
  40d136:      	bl	0x408458 <_ZN6Tracer14checkCollisionEv+0x3cc> @ imm = #-0x4ce2
  40d13a:      	mov	r2, r0
  40d13c:      	add	r3, sp, #0x6c
  40d13e:      	mov	r1, r2
  40d140:      	strb	r1, [r3]
  40d142:      	ubfx	r1, r2, #0x8, #0x8
  40d146:      	strb	r1, [r3, #0x1]
  40d148:      	ubfx	r2, r2, #0x10, #0x8
  40d14c:      	strb	r2, [r3, #0x2]
  40d14e:      	add.w	r2, sp, #0x410
  40d152:      	add	r3, sp, #0x6c
  40d154:      	mov	r0, r5
  40d156:      	mov	r1, r2
  40d158:      	ldr	r2, [r3]
  40d15a:      	movs	r3, #0x4
  40d15c:      	bl	0x33d2c0 <_ZN3HUD10addMessageESsN7cocos2d10_ccColor3BEs> @ imm = #-0xcfea0
  40d160:      	add.w	r3, sp, #0x410
  40d164:      	mov	r0, r3
  40d166:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3a87aa
  40d16a:      	add.w	r3, sp, #0x400
  40d16e:      	mov	r0, r3
  40d170:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x37d288
  40d174:      	ldr.w	r3, [pc, #0x858]        @ 0x40d9d0 <_ZN13TrainingStage8doLessonEf+0x36f8>
  40d178:      	ldr	r3, [r4, r3]
  40d17a:      	ldr	r3, [r3]
  40d17c:      	mov	r0, r3
  40d17e:      	movs	r1, #0x44
  40d180:      	movs	r2, #0x1
  40d182:      	bl	0x3f7d40 <_ZN5Sound18playSoundWithVoiceEii> @ imm = #-0x15446
  40d186:      	bl	0x417984 <_ZN13WeaponFactory19sharedWeaponFactoryEv> @ imm = #0xa7fa
  40d18a:      	mov	r3, r0
  40d18c:      	mov	r0, r3
  40d18e:      	movs	r1, #0x2
  40d190:      	bl	0x4186fc <_ZN13WeaponFactory24createWeaponFromAmmoTypeE8ItemType> @ imm = #0xb568
  40d194:      	mov	r2, r0
  40d196:      	add	r3, sp, #0xdc
  40d198:      	str	r2, [r3]
  40d19a:      	add	r3, sp, #0xdc
  40d19c:      	ldr	r3, [r3]
  40d19e:      	ldr	r3, [r3]
  40d1a0:      	add.w	r3, r3, #0x278
  40d1a4:      	ldr	r3, [r3]
  40d1a6:      	add	r2, sp, #0xdc
  40d1a8:      	ldr	r0, [r2]
  40d1aa:      	movs	r1, #0x3
  40d1ac:      	blx	r3
  40d1ae:      	ldr.w	r3, [pc, #0x818]        @ 0x40d9c8 <_ZN13TrainingStage8doLessonEf+0x36f0>
  40d1b2:      	ldr	r3, [r4, r3]
  40d1b4:      	ldr	r3, [r3]
  40d1b6:      	ldr	r3, [r3]
  40d1b8:      	add.w	r3, r3, #0x220
  40d1bc:      	ldr	r3, [r3]
  40d1be:      	ldr.w	r2, [pc, #0x808]        @ 0x40d9c8 <_ZN13TrainingStage8doLessonEf+0x36f0>
  40d1c2:      	ldr	r2, [r4, r2]
  40d1c4:      	ldr	r1, [r2]
  40d1c6:      	add	r2, sp, #0xdc
  40d1c8:      	mov	r0, r1
  40d1ca:      	ldr	r1, [r2]
  40d1cc:      	blx	r3
  40d1ce:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x4d42
  40d1d2:      	add	r3, sp, #0x1c
  40d1d4:      	ldr	r3, [r3]
  40d1d6:      	ldr.w	r3, [r3, #0x17c]
  40d1da:      	ldr	r3, [r3]
  40d1dc:      	add.w	r3, r3, #0x238
  40d1e0:      	ldr	r3, [r3]
  40d1e2:      	add	r2, sp, #0x1c
  40d1e4:      	ldr	r2, [r2]
  40d1e6:      	ldr.w	r2, [r2, #0x17c]
  40d1ea:      	mov	r0, r2
  40d1ec:      	mov.w	r1, #0x0
  40d1f0:      	movt	r1, #0x4334
  40d1f4:      	blx	r3
  40d1f6:      	ldr.w	r3, [pc, #0x7d0]        @ 0x40d9c8 <_ZN13TrainingStage8doLessonEf+0x36f0>
  40d1fa:      	ldr	r3, [r4, r3]
  40d1fc:      	ldr	r3, [r3]
  40d1fe:      	ldr	r3, [r3]
  40d200:      	add.w	r3, r3, #0x2a4
  40d204:      	ldr	r3, [r3]
  40d206:      	ldr.w	r2, [pc, #0x7c0]        @ 0x40d9c8 <_ZN13TrainingStage8doLessonEf+0x36f0>
  40d20a:      	ldr	r2, [r4, r2]
  40d20c:      	ldr	r2, [r2]
  40d20e:      	mov	r0, r2
  40d210:      	mov.w	r1, #0x0
  40d214:      	blx	r3
  40d216:      	ldr.w	r3, [pc, #0x7b0]        @ 0x40d9c8 <_ZN13TrainingStage8doLessonEf+0x36f0>
  40d21a:      	ldr	r3, [r4, r3]
  40d21c:      	ldr	r3, [r3]
  40d21e:      	ldr.w	r2, [r3, #0x138]
  40d222:      	ldr.w	r3, [pc, #0x7b4]        @ 0x40d9d8 <_ZN13TrainingStage8doLessonEf+0x3700>
  40d226:      	add	r3, pc
  40d228:      	vldr	d6, [r3]
  40d22c:      	vldr	d7, [r3, #8]
  40d230:      	mov	r0, r2
  40d232:      	vmov.f64	d0, d6
  40d236:      	vmov.f64	d1, d7
  40d23a:      	bl	0x408648 <_ZN6Tracer14checkCollisionEv+0x5bc> @ imm = #-0x4bf6
  40d23e:      	ldr.w	r3, [pc, #0x788]        @ 0x40d9c8 <_ZN13TrainingStage8doLessonEf+0x36f0>
  40d242:      	ldr	r3, [r4, r3]
  40d244:      	ldr	r3, [r3]
  40d246:      	ldr.w	r2, [r3, #0x138]
  40d24a:      	ldr.w	r3, [pc, #0x790]        @ 0x40d9dc <_ZN13TrainingStage8doLessonEf+0x3704>
  40d24e:      	add	r3, pc
  40d250:      	vldr	d6, [r3]
  40d254:      	vldr	d7, [r3, #8]
  40d258:      	mov	r0, r2
  40d25a:      	vmov.f64	d0, d6
  40d25e:      	vmov.f64	d1, d7
  40d262:      	bl	0x408674 <_ZN6Tracer14checkCollisionEv+0x5e8> @ imm = #-0x4bf2
  40d266:      	add	r3, sp, #0x1c
  40d268:      	ldr	r3, [r3]
  40d26a:      	vldr	s14, [r3, #392]
  40d26e:      	vmov.f32	s15, #2.000000e+00
  40d272:      	vcmpe.f32	s14, s15
  40d276:      	vmrs	APSR_nzcv, fpscr
  40d27a:      	bpl	0x40d288 <_ZN13TrainingStage8doLessonEf+0x2fb0> @ imm = #0xa
  40d27c:      	add	r2, sp, #0x1c
  40d27e:      	add	r3, sp, #0x18
  40d280:      	ldr	r0, [r2]
  40d282:      	ldr	r1, [r3]
  40d284:      	bl	0x409e30 <_ZN13TrainingStage11headChatterEf> @ imm = #-0x3458
  40d288:      	ldr.w	r3, [pc, #0x73c]        @ 0x40d9c8 <_ZN13TrainingStage8doLessonEf+0x36f0>
  40d28c:      	ldr	r3, [r4, r3]
  40d28e:      	ldr	r3, [r3]
  40d290:      	ldr	r3, [r3]
  40d292:      	add.w	r3, r3, #0x2d8
  40d296:      	ldr	r3, [r3]
  40d298:      	ldr.w	r2, [pc, #0x72c]        @ 0x40d9c8 <_ZN13TrainingStage8doLessonEf+0x36f0>
  40d29c:      	ldr	r2, [r4, r2]
  40d29e:      	ldr	r2, [r2]
  40d2a0:      	mov	r0, r2
  40d2a2:      	blx	r3
  40d2a4:      	mov	r3, r0
  40d2a6:      	cmp	r3, #0x0
  40d2a8:      	bne	0x40d2c4 <_ZN13TrainingStage8doLessonEf+0x2fec> @ imm = #0x18
  40d2aa:      	add	r3, sp, #0x1c
  40d2ac:      	ldr	r3, [r3]
  40d2ae:      	vldr	s14, [r3, #392]
  40d2b2:      	vmov.f32	s15, #4.000000e+00
  40d2b6:      	vcmpe.f32	s14, s15
  40d2ba:      	vmrs	APSR_nzcv, fpscr
  40d2be:      	ble	0x40d2c4 <_ZN13TrainingStage8doLessonEf+0x2fec> @ imm = #0x2
  40d2c0:      	movs	r3, #0x1
  40d2c2:      	b	0x40d2c6 <_ZN13TrainingStage8doLessonEf+0x2fee> @ imm = #0x0
  40d2c4:      	movs	r3, #0x0
  40d2c6:      	cmp	r3, #0x0
  40d2c8:      	beq	0x40d3a6 <_ZN13TrainingStage8doLessonEf+0x30ce> @ imm = #0xda
  40d2ca:      	add	r3, sp, #0x1c
  40d2cc:      	ldr	r3, [r3]
  40d2ce:      	ldr.w	r3, [r3, #0x180]
  40d2d2:      	adds	r2, r3, #0x1
  40d2d4:      	add	r3, sp, #0x1c
  40d2d6:      	ldr	r3, [r3]
  40d2d8:      	str.w	r2, [r3, #0x180]
  40d2dc:      	add	r3, sp, #0x1c
  40d2de:      	ldr	r3, [r3]
  40d2e0:      	mov.w	r2, #0x0
  40d2e4:      	str.w	r2, [r3, #0x188]
  40d2e8:      	add	r3, sp, #0x1c
  40d2ea:      	ldr	r3, [r3]
  40d2ec:      	ldr.w	r3, [r3, #0x174]
  40d2f0:      	ldr	r3, [r3]
  40d2f2:      	adds	r3, #0x90
  40d2f4:      	ldr	r3, [r3]
  40d2f6:      	add	r2, sp, #0x1c
  40d2f8:      	ldr	r2, [r2]
  40d2fa:      	ldr.w	r2, [r2, #0x174]
  40d2fe:      	mov	r0, r2
  40d300:      	movs	r1, #0x0
  40d302:      	blx	r3
  40d304:      	add	r3, sp, #0x1c
  40d306:      	ldr	r3, [r3]
  40d308:      	ldr.w	r3, [r3, #0x16c]
  40d30c:      	ldr	r3, [r3]
  40d30e:      	adds	r3, #0x38
  40d310:      	ldr	r3, [r3]
  40d312:      	add	r2, sp, #0x1c
  40d314:      	ldr	r2, [r2]
  40d316:      	ldr.w	r2, [r2, #0x16c]
  40d31a:      	mov	r0, r2
  40d31c:      	mov.w	r1, #0x3f800000
  40d320:      	blx	r3
  40d322:      	add	r3, sp, #0x1c
  40d324:      	ldr	r3, [r3]
  40d326:      	ldr.w	r5, [r3, #0x10c]
  40d32a:      	add.w	r3, sp, #0x400
  40d32e:      	mov	r0, r3
  40d330:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x37d0c0
  40d334:      	add.w	r2, sp, #0x410
  40d338:      	add.w	r3, sp, #0x400
  40d33c:      	mov	r0, r2
  40d33e:      	ldr.w	r2, [pc, #0x6a0]        @ 0x40d9e0 <_ZN13TrainingStage8doLessonEf+0x3708>
  40d342:      	add	r2, pc
  40d344:      	mov	r1, r2
  40d346:      	mov	r2, r3
  40d348:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3a9714
  40d34c:      	movs	r0, #0x0
  40d34e:      	movs	r1, #0x0
  40d350:      	movs	r2, #0xff
  40d352:      	bl	0x408458 <_ZN6Tracer14checkCollisionEv+0x3cc> @ imm = #-0x4efe
  40d356:      	mov	r2, r0
  40d358:      	add	r3, sp, #0x70
  40d35a:      	mov	r1, r2
  40d35c:      	strb	r1, [r3]
  40d35e:      	ubfx	r1, r2, #0x8, #0x8
  40d362:      	strb	r1, [r3, #0x1]
  40d364:      	ubfx	r2, r2, #0x10, #0x8
  40d368:      	strb	r2, [r3, #0x2]
  40d36a:      	add.w	r2, sp, #0x410
  40d36e:      	add	r3, sp, #0x70
  40d370:      	mov	r0, r5
  40d372:      	mov	r1, r2
  40d374:      	ldr	r2, [r3]
  40d376:      	movs	r3, #0x4
  40d378:      	bl	0x33d2c0 <_ZN3HUD10addMessageESsN7cocos2d10_ccColor3BEs> @ imm = #-0xd00bc
  40d37c:      	add.w	r3, sp, #0x410
  40d380:      	mov	r0, r3
  40d382:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3a858e
  40d386:      	add.w	r3, sp, #0x400
  40d38a:      	mov	r0, r3
  40d38c:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x37d06c
  40d390:      	ldr.w	r3, [pc, #0x63c]        @ 0x40d9d0 <_ZN13TrainingStage8doLessonEf+0x36f8>
  40d394:      	ldr	r3, [r4, r3]
  40d396:      	ldr	r3, [r3]
  40d398:      	mov	r0, r3
  40d39a:      	movs	r1, #0x45
  40d39c:      	movs	r2, #0x1
  40d39e:      	bl	0x3f7d40 <_ZN5Sound18playSoundWithVoiceEii> @ imm = #-0x15662
  40d3a2:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x4b6e
  40d3a6:      	add	r3, sp, #0x1c
  40d3a8:      	ldr	r3, [r3]
  40d3aa:      	ldr.w	r3, [r3, #0x174]
  40d3ae:      	ldr	r3, [r3]
  40d3b0:      	adds	r3, #0x90
  40d3b2:      	ldr	r3, [r3]
  40d3b4:      	add	r2, sp, #0x1c
  40d3b6:      	ldr	r2, [r2]
  40d3b8:      	ldr.w	r2, [r2, #0x174]
  40d3bc:      	mov	r0, r2
  40d3be:      	movs	r1, #0x1
  40d3c0:      	blx	r3
  40d3c2:      	add	r3, sp, #0x1c
  40d3c4:      	ldr	r3, [r3]
  40d3c6:      	ldr.w	r3, [r3, #0x174]
  40d3ca:      	ldr	r3, [r3]
  40d3cc:      	adds	r3, #0x98
  40d3ce:      	ldr	r3, [r3]
  40d3d0:      	add	r2, sp, #0x1c
  40d3d2:      	ldr	r2, [r2]
  40d3d4:      	ldr.w	r2, [r2, #0x174]
  40d3d8:      	mov	r0, r2
  40d3da:      	mov.w	r1, #0x0
  40d3de:      	movt	r1, #0x42b4
  40d3e2:      	blx	r3
  40d3e4:      	add	r3, sp, #0x1c
  40d3e6:      	ldr	r3, [r3]
  40d3e8:      	ldr.w	r3, [r3, #0x16c]
  40d3ec:      	ldr	r3, [r3]
  40d3ee:      	adds	r3, #0x4c
  40d3f0:      	ldr	r4, [r3]
  40d3f2:      	add	r3, sp, #0x1c
  40d3f4:      	ldr	r3, [r3]
  40d3f6:      	ldr.w	r5, [r3, #0x16c]
  40d3fa:      	add	r3, sp, #0x1c
  40d3fc:      	ldr	r3, [r3]
  40d3fe:      	vldr	s14, [r3, #392]
  40d402:      	vmov.f32	s15, #5.000000e+00
  40d406:      	vmul.f32	s15, s14, s15
  40d40a:      	vcvt.f64.f32	d7, s15
  40d40e:      	vmov	r0, r1, d7
  40d412:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x13750c
  40d416:      	vmov	d6, r0, r1
  40d41a:      	vmov.f64	d7, #1.000000e+01
  40d41e:      	vmul.f64	d7, d6, d7
  40d422:      	vcvt.f32.f64	s15, d7
  40d426:      	add.w	r3, sp, #0x410
  40d42a:      	mov	r0, r3
  40d42c:      	vmov	r1, s15
  40d430:      	mov.w	r2, #0x0
  40d434:      	bl	0x592cf0 <_ZN7cocos2d7CCPointC2Eff> @ imm = #0x1858b8
  40d438:      	add.w	r3, sp, #0x410
  40d43c:      	mov	r0, r5
  40d43e:      	mov	r1, r3
  40d440:      	blx	r4
  40d442:      	add	r3, sp, #0x1c
  40d444:      	ldr	r3, [r3]
  40d446:      	ldr.w	r3, [r3, #0x174]
  40d44a:      	ldr	r3, [r3]
  40d44c:      	adds	r3, #0x4c
  40d44e:      	ldr	r4, [r3]
  40d450:      	add	r3, sp, #0x1c
  40d452:      	ldr	r3, [r3]
  40d454:      	ldr.w	r5, [r3, #0x174]
  40d458:      	add	r3, sp, #0x1c
  40d45a:      	ldr	r3, [r3]
  40d45c:      	ldr.w	r3, [r3, #0x10c]
  40d460:      	add.w	r6, r3, #0x168
  40d464:      	add.w	r3, sp, #0x400
  40d468:      	mov	r0, r3
  40d46a:      	mov.w	r1, #0x0
  40d46e:      	movt	r1, #0xc170
  40d472:      	mov.w	r2, #0x0
  40d476:      	movt	r2, #0x4270
  40d47a:      	bl	0x592cf0 <_ZN7cocos2d7CCPointC2Eff> @ imm = #0x185872
  40d47e:      	add.w	r2, sp, #0x410
  40d482:      	add.w	r3, sp, #0x400
  40d486:      	mov	r0, r2
  40d488:      	mov	r1, r6
  40d48a:      	mov	r2, r3
  40d48c:      	bl	0x4084b4 <_ZN6Tracer14checkCollisionEv+0x428> @ imm = #-0x4fdc
  40d490:      	add.w	r3, sp, #0x410
  40d494:      	mov	r0, r5
  40d496:      	mov	r1, r3
  40d498:      	blx	r4
  40d49a:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x4a76
  40d49e:      	add	r3, sp, #0x1c
  40d4a0:      	ldr	r3, [r3]
  40d4a2:      	ldr.w	r3, [r3, #0x17c]
  40d4a6:      	ldr	r3, [r3]
  40d4a8:      	add.w	r3, r3, #0x238
  40d4ac:      	ldr	r3, [r3]
  40d4ae:      	add	r2, sp, #0x1c
  40d4b0:      	ldr	r2, [r2]
  40d4b2:      	ldr.w	r2, [r2, #0x17c]
  40d4b6:      	mov	r0, r2
  40d4b8:      	mov.w	r1, #0x0
  40d4bc:      	movt	r1, #0x4334
  40d4c0:      	blx	r3
  40d4c2:      	ldr.w	r3, [pc, #0x504]        @ 0x40d9c8 <_ZN13TrainingStage8doLessonEf+0x36f0>
  40d4c6:      	ldr	r3, [r4, r3]
  40d4c8:      	ldr	r3, [r3]
  40d4ca:      	ldr	r3, [r3]
  40d4cc:      	add.w	r3, r3, #0x2a4
  40d4d0:      	ldr	r3, [r3]
  40d4d2:      	ldr.w	r2, [pc, #0x4f4]        @ 0x40d9c8 <_ZN13TrainingStage8doLessonEf+0x36f0>
  40d4d6:      	ldr	r2, [r4, r2]
  40d4d8:      	ldr	r2, [r2]
  40d4da:      	mov	r0, r2
  40d4dc:      	mov.w	r1, #0x0
  40d4e0:      	blx	r3
  40d4e2:      	ldr.w	r3, [pc, #0x4e4]        @ 0x40d9c8 <_ZN13TrainingStage8doLessonEf+0x36f0>
  40d4e6:      	ldr	r3, [r4, r3]
  40d4e8:      	ldr	r3, [r3]
  40d4ea:      	ldr.w	r2, [r3, #0x138]
  40d4ee:      	ldr.w	r3, [pc, #0x4f4]        @ 0x40d9e4 <_ZN13TrainingStage8doLessonEf+0x370c>
  40d4f2:      	add	r3, pc
  40d4f4:      	vldr	d6, [r3]
  40d4f8:      	vldr	d7, [r3, #8]
  40d4fc:      	mov	r0, r2
  40d4fe:      	vmov.f64	d0, d6
  40d502:      	vmov.f64	d1, d7
  40d506:      	bl	0x408648 <_ZN6Tracer14checkCollisionEv+0x5bc> @ imm = #-0x4ec2
  40d50a:      	ldr.w	r3, [pc, #0x4bc]        @ 0x40d9c8 <_ZN13TrainingStage8doLessonEf+0x36f0>
  40d50e:      	ldr	r3, [r4, r3]
  40d510:      	ldr	r3, [r3]
  40d512:      	ldr.w	r2, [r3, #0x138]
  40d516:      	ldr.w	r3, [pc, #0x4d0]        @ 0x40d9e8 <_ZN13TrainingStage8doLessonEf+0x3710>
  40d51a:      	add	r3, pc
  40d51c:      	vldr	d6, [r3]
  40d520:      	vldr	d7, [r3, #8]
  40d524:      	mov	r0, r2
  40d526:      	vmov.f64	d0, d6
  40d52a:      	vmov.f64	d1, d7
  40d52e:      	bl	0x408674 <_ZN6Tracer14checkCollisionEv+0x5e8> @ imm = #-0x4ebe
  40d532:      	add	r3, sp, #0x1c
  40d534:      	ldr	r3, [r3]
  40d536:      	vldr	s14, [r3, #392]
  40d53a:      	vmov.f32	s15, #3.000000e+00
  40d53e:      	vcmpe.f32	s14, s15
  40d542:      	vmrs	APSR_nzcv, fpscr
  40d546:      	bpl	0x40d554 <_ZN13TrainingStage8doLessonEf+0x327c> @ imm = #0xa
  40d548:      	add	r2, sp, #0x1c
  40d54a:      	add	r3, sp, #0x18
  40d54c:      	ldr	r0, [r2]
  40d54e:      	ldr	r1, [r3]
  40d550:      	bl	0x409e30 <_ZN13TrainingStage11headChatterEf> @ imm = #-0x3724
  40d554:      	add	r3, sp, #0x1c
  40d556:      	ldr	r3, [r3]
  40d558:      	vldr	s14, [r3, #392]
  40d55c:      	vmov.f32	s15, #5.000000e+00
  40d560:      	vcmpe.f32	s14, s15
  40d564:      	vmrs	APSR_nzcv, fpscr
  40d568:      	bgt	0x40d56e <_ZN13TrainingStage8doLessonEf+0x3296> @ imm = #0x2
  40d56a:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x49a6
  40d56e:      	add	r3, sp, #0x1c
  40d570:      	ldr	r3, [r3]
  40d572:      	ldr.w	r3, [r3, #0x180]
  40d576:      	adds	r2, r3, #0x1
  40d578:      	add	r3, sp, #0x1c
  40d57a:      	ldr	r3, [r3]
  40d57c:      	str.w	r2, [r3, #0x180]
  40d580:      	add	r3, sp, #0x1c
  40d582:      	ldr	r3, [r3]
  40d584:      	mov.w	r2, #0x0
  40d588:      	str.w	r2, [r3, #0x188]
  40d58c:      	add	r3, sp, #0x1c
  40d58e:      	ldr	r3, [r3]
  40d590:      	ldr.w	r5, [r3, #0x10c]
  40d594:      	add.w	r3, sp, #0x400
  40d598:      	mov	r0, r3
  40d59a:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x37ce56
  40d59e:      	add.w	r2, sp, #0x410
  40d5a2:      	add.w	r3, sp, #0x400
  40d5a6:      	mov	r0, r2
  40d5a8:      	ldr.w	r2, [pc, #0x440]        @ 0x40d9ec <_ZN13TrainingStage8doLessonEf+0x3714>
  40d5ac:      	add	r2, pc
  40d5ae:      	mov	r1, r2
  40d5b0:      	mov	r2, r3
  40d5b2:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3a94aa
  40d5b6:      	movs	r0, #0x0
  40d5b8:      	movs	r1, #0x0
  40d5ba:      	movs	r2, #0xff
  40d5bc:      	bl	0x408458 <_ZN6Tracer14checkCollisionEv+0x3cc> @ imm = #-0x5168
  40d5c0:      	mov	r2, r0
  40d5c2:      	add	r3, sp, #0x74
  40d5c4:      	mov	r1, r2
  40d5c6:      	strb	r1, [r3]
  40d5c8:      	ubfx	r1, r2, #0x8, #0x8
  40d5cc:      	strb	r1, [r3, #0x1]
  40d5ce:      	ubfx	r2, r2, #0x10, #0x8
  40d5d2:      	strb	r2, [r3, #0x2]
  40d5d4:      	add.w	r2, sp, #0x410
  40d5d8:      	add	r3, sp, #0x74
  40d5da:      	mov	r0, r5
  40d5dc:      	mov	r1, r2
  40d5de:      	ldr	r2, [r3]
  40d5e0:      	movs	r3, #0x3
  40d5e2:      	bl	0x33d2c0 <_ZN3HUD10addMessageESsN7cocos2d10_ccColor3BEs> @ imm = #-0xd0326
  40d5e6:      	add.w	r3, sp, #0x410
  40d5ea:      	mov	r0, r3
  40d5ec:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3a8324
  40d5f0:      	add.w	r3, sp, #0x400
  40d5f4:      	mov	r0, r3
  40d5f6:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x37ce02
  40d5fa:      	ldr	r3, [pc, #0x3d4]        @ 0x40d9d0 <_ZN13TrainingStage8doLessonEf+0x36f8>
  40d5fc:      	ldr	r3, [r4, r3]
  40d5fe:      	ldr	r3, [r3]
  40d600:      	mov	r0, r3
  40d602:      	movs	r1, #0x46
  40d604:      	movs	r2, #0x1
  40d606:      	bl	0x3f7d40 <_ZN5Sound18playSoundWithVoiceEii> @ imm = #-0x158ca
  40d60a:      	ldr	r3, [pc, #0x3bc]        @ 0x40d9c8 <_ZN13TrainingStage8doLessonEf+0x36f0>
  40d60c:      	ldr	r3, [r4, r3]
  40d60e:      	ldr	r3, [r3]
  40d610:      	ldr.w	r3, [r3, #0x148]
  40d614:      	ldr	r3, [r3]
  40d616:      	add.w	r3, r3, #0x288
  40d61a:      	ldr	r3, [r3]
  40d61c:      	ldr	r2, [pc, #0x3a8]        @ 0x40d9c8 <_ZN13TrainingStage8doLessonEf+0x36f0>
  40d61e:      	ldr	r2, [r4, r2]
  40d620:      	ldr	r2, [r2]
  40d622:      	ldr.w	r2, [r2, #0x148]
  40d626:      	mov	r0, r2
  40d628:      	movs	r1, #0x0
  40d62a:      	blx	r3
  40d62c:      	ldr	r3, [pc, #0x398]        @ 0x40d9c8 <_ZN13TrainingStage8doLessonEf+0x36f0>
  40d62e:      	ldr	r3, [r4, r3]
  40d630:      	ldr	r3, [r3]
  40d632:      	ldr.w	r3, [r3, #0x148]
  40d636:      	ldr	r3, [r3]
  40d638:      	add.w	r3, r3, #0x278
  40d63c:      	ldr	r3, [r3]
  40d63e:      	ldr	r2, [pc, #0x388]        @ 0x40d9c8 <_ZN13TrainingStage8doLessonEf+0x36f0>
  40d640:      	ldr	r2, [r4, r2]
  40d642:      	ldr	r2, [r2]
  40d644:      	ldr.w	r2, [r2, #0x148]
  40d648:      	mov	r0, r2
  40d64a:      	movs	r1, #0x0
  40d64c:      	blx	r3
  40d64e:      	ldr	r3, [pc, #0x378]        @ 0x40d9c8 <_ZN13TrainingStage8doLessonEf+0x36f0>
  40d650:      	ldr	r3, [r4, r3]
  40d652:      	ldr	r3, [r3]
  40d654:      	ldr.w	r3, [r3, #0x14c]
  40d658:      	ldr	r3, [r3]
  40d65a:      	add.w	r3, r3, #0x288
  40d65e:      	ldr	r3, [r3]
  40d660:      	ldr	r2, [pc, #0x364]        @ 0x40d9c8 <_ZN13TrainingStage8doLessonEf+0x36f0>
  40d662:      	ldr	r2, [r4, r2]
  40d664:      	ldr	r2, [r2]
  40d666:      	ldr.w	r2, [r2, #0x14c]
  40d66a:      	mov	r0, r2
  40d66c:      	movs	r1, #0x0
  40d66e:      	blx	r3
  40d670:      	ldr	r3, [pc, #0x354]        @ 0x40d9c8 <_ZN13TrainingStage8doLessonEf+0x36f0>
  40d672:      	ldr	r3, [r4, r3]
  40d674:      	ldr	r3, [r3]
  40d676:      	ldr.w	r3, [r3, #0x14c]
  40d67a:      	ldr	r3, [r3]
  40d67c:      	add.w	r3, r3, #0x278
  40d680:      	ldr	r3, [r3]
  40d682:      	ldr	r2, [pc, #0x344]        @ 0x40d9c8 <_ZN13TrainingStage8doLessonEf+0x36f0>
  40d684:      	ldr	r2, [r4, r2]
  40d686:      	ldr	r2, [r2]
  40d688:      	ldr.w	r2, [r2, #0x14c]
  40d68c:      	mov	r0, r2
  40d68e:      	movs	r1, #0x0
  40d690:      	blx	r3
  40d692:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x487e
  40d696:      	add	r3, sp, #0x1c
  40d698:      	ldr	r3, [r3]
  40d69a:      	ldr.w	r3, [r3, #0x17c]
  40d69e:      	ldr	r3, [r3]
  40d6a0:      	add.w	r3, r3, #0x238
  40d6a4:      	ldr	r3, [r3]
  40d6a6:      	add	r2, sp, #0x1c
  40d6a8:      	ldr	r2, [r2]
  40d6aa:      	ldr.w	r2, [r2, #0x17c]
  40d6ae:      	mov	r0, r2
  40d6b0:      	mov.w	r1, #0x0
  40d6b4:      	movt	r1, #0x4334
  40d6b8:      	blx	r3
  40d6ba:      	ldr	r3, [pc, #0x30c]        @ 0x40d9c8 <_ZN13TrainingStage8doLessonEf+0x36f0>
  40d6bc:      	ldr	r3, [r4, r3]
  40d6be:      	ldr	r3, [r3]
  40d6c0:      	ldr	r3, [r3]
  40d6c2:      	add.w	r3, r3, #0x2a4
  40d6c6:      	ldr	r3, [r3]
  40d6c8:      	ldr	r2, [pc, #0x2fc]        @ 0x40d9c8 <_ZN13TrainingStage8doLessonEf+0x36f0>
  40d6ca:      	ldr	r2, [r4, r2]
  40d6cc:      	ldr	r2, [r2]
  40d6ce:      	mov	r0, r2
  40d6d0:      	mov.w	r1, #0x0
  40d6d4:      	blx	r3
  40d6d6:      	add	r3, sp, #0x1c
  40d6d8:      	ldr	r3, [r3]
  40d6da:      	vldr	s14, [r3, #392]
  40d6de:      	vmov.f32	s15, #2.000000e+00
  40d6e2:      	vcmpe.f32	s14, s15
  40d6e6:      	vmrs	APSR_nzcv, fpscr
  40d6ea:      	bpl	0x40d6f8 <_ZN13TrainingStage8doLessonEf+0x3420> @ imm = #0xa
  40d6ec:      	add	r2, sp, #0x1c
  40d6ee:      	add	r3, sp, #0x18
  40d6f0:      	ldr	r0, [r2]
  40d6f2:      	ldr	r1, [r3]
  40d6f4:      	bl	0x409e30 <_ZN13TrainingStage11headChatterEf> @ imm = #-0x38c8
  40d6f8:      	add	r3, sp, #0x1c
  40d6fa:      	ldr	r3, [r3]
  40d6fc:      	vldr	s14, [r3, #392]
  40d700:      	vmov.f32	s15, #3.000000e+00
  40d704:      	vcmpe.f32	s14, s15
  40d708:      	vmrs	APSR_nzcv, fpscr
  40d70c:      	bgt	0x40d712 <_ZN13TrainingStage8doLessonEf+0x343a> @ imm = #0x2
  40d70e:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x4802
  40d712:      	add	r3, sp, #0x1c
  40d714:      	ldr	r3, [r3]
  40d716:      	ldr.w	r3, [r3, #0x180]
  40d71a:      	adds	r2, r3, #0x1
  40d71c:      	add	r3, sp, #0x1c
  40d71e:      	ldr	r3, [r3]
  40d720:      	str.w	r2, [r3, #0x180]
  40d724:      	add	r3, sp, #0x1c
  40d726:      	ldr	r3, [r3]
  40d728:      	mov.w	r2, #0x0
  40d72c:      	str.w	r2, [r3, #0x188]
  40d730:      	add	r3, sp, #0x1c
  40d732:      	ldr	r3, [r3]
  40d734:      	ldr.w	r5, [r3, #0x10c]
  40d738:      	add.w	r3, sp, #0x400
  40d73c:      	mov	r0, r3
  40d73e:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x37ccb2
  40d742:      	add.w	r2, sp, #0x410
  40d746:      	add.w	r3, sp, #0x400
  40d74a:      	mov	r0, r2
  40d74c:      	ldr	r2, [pc, #0x2a0]        @ 0x40d9f0 <_ZN13TrainingStage8doLessonEf+0x3718>
  40d74e:      	add	r2, pc
  40d750:      	mov	r1, r2
  40d752:      	mov	r2, r3
  40d754:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3a9308
  40d758:      	movs	r0, #0x0
  40d75a:      	movs	r1, #0x0
  40d75c:      	movs	r2, #0xff
  40d75e:      	bl	0x408458 <_ZN6Tracer14checkCollisionEv+0x3cc> @ imm = #-0x530a
  40d762:      	mov	r2, r0
  40d764:      	add	r3, sp, #0x78
  40d766:      	mov	r1, r2
  40d768:      	strb	r1, [r3]
  40d76a:      	ubfx	r1, r2, #0x8, #0x8
  40d76e:      	strb	r1, [r3, #0x1]
  40d770:      	ubfx	r2, r2, #0x10, #0x8
  40d774:      	strb	r2, [r3, #0x2]
  40d776:      	add.w	r2, sp, #0x410
  40d77a:      	add	r3, sp, #0x78
  40d77c:      	mov	r0, r5
  40d77e:      	mov	r1, r2
  40d780:      	ldr	r2, [r3]
  40d782:      	movs	r3, #0x5
  40d784:      	bl	0x33d2c0 <_ZN3HUD10addMessageESsN7cocos2d10_ccColor3BEs> @ imm = #-0xd04c8
  40d788:      	add.w	r3, sp, #0x410
  40d78c:      	mov	r0, r3
  40d78e:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3a8182
  40d792:      	add.w	r3, sp, #0x400
  40d796:      	mov	r0, r3
  40d798:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x37cc60
  40d79c:      	add	r3, sp, #0x1c
  40d79e:      	ldr	r3, [r3]
  40d7a0:      	ldr.w	r3, [r3, #0x1a4]
  40d7a4:      	ldr	r3, [r3, #0x24]
  40d7a6:      	mov	r0, r3
  40d7a8:      	bl	0x593c8c <_ZN7cocos2d12CCDictionary7allKeysEv> @ imm = #0x1864e0
  40d7ac:      	mov	r3, r0
  40d7ae:      	mov	r0, r3
  40d7b0:      	bl	0x59a13c <_ZN7cocos2d7CCArray10lastObjectEv> @ imm = #0x18c988
  40d7b4:      	mov	r3, r0
  40d7b6:      	mov	r0, r3
  40d7b8:      	bl	0x599928 <_ZNK7cocos2d8CCString10getCStringEv> @ imm = #0x18c16c
  40d7bc:      	mov	r5, r0
  40d7be:      	add.w	r3, sp, #0x410
  40d7c2:      	mov	r0, r3
  40d7c4:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x37cc2c
  40d7c8:      	add	r2, sp, #0x3f0
  40d7ca:      	add.w	r3, sp, #0x410
  40d7ce:      	mov	r0, r2
  40d7d0:      	mov	r1, r5
  40d7d2:      	mov	r2, r3
  40d7d4:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3a9288
  40d7d8:      	add.w	r3, sp, #0x410
  40d7dc:      	mov	r0, r3
  40d7de:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x37cc1a
  40d7e2:      	add	r3, sp, #0x1c
  40d7e4:      	ldr	r3, [r3]
  40d7e6:      	ldr.w	r3, [r3, #0x1a4]
  40d7ea:      	ldr	r5, [r3, #0x24]
  40d7ec:      	add	r3, sp, #0x3f0
  40d7ee:      	mov	r0, r3
  40d7f0:      	bl	0x7b5300 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18850> @ imm = #0x3a7b0c
  40d7f4:      	mov	r6, r0
  40d7f6:      	add.w	r3, sp, #0x410
  40d7fa:      	mov	r0, r3
  40d7fc:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x37cbf4
  40d800:      	add.w	r2, sp, #0x400
  40d804:      	add.w	r3, sp, #0x410
  40d808:      	mov	r0, r2
  40d80a:      	mov	r1, r6
  40d80c:      	mov	r2, r3
  40d80e:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3a924e
  40d812:      	add.w	r3, sp, #0x400
  40d816:      	mov	r0, r5
  40d818:      	mov	r1, r3
  40d81a:      	bl	0x593ef0 <_ZN7cocos2d12CCDictionary12objectForKeyERKSs> @ imm = #0x1866d2
  40d81e:      	mov	r2, r0
  40d820:      	add	r3, sp, #0x1c
  40d822:      	ldr	r3, [r3]
  40d824:      	str.w	r2, [r3, #0x1a8]
  40d828:      	add.w	r3, sp, #0x400
  40d82c:      	mov	r0, r3
  40d82e:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3a80e2
  40d832:      	add.w	r3, sp, #0x410
  40d836:      	mov	r0, r3
  40d838:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x37cbc0
  40d83c:      	ldr	r3, [pc, #0x188]        @ 0x40d9c8 <_ZN13TrainingStage8doLessonEf+0x36f0>
  40d83e:      	ldr	r3, [r4, r3]
  40d840:      	ldr	r3, [r3]
  40d842:      	ldr.w	r3, [r3, #0x138]
  40d846:      	vldr	d6, [r3, #40]
  40d84a:      	vldr	d7, [pc, #348]          @ 0x40d9a8 <_ZN13TrainingStage8doLessonEf+0x36d0>
  40d84e:      	vadd.f64	d6, d6, d7
  40d852:      	ldr	r3, [pc, #0x174]        @ 0x40d9c8 <_ZN13TrainingStage8doLessonEf+0x36f0>
  40d854:      	ldr	r3, [r4, r3]
  40d856:      	ldr	r3, [r3]
  40d858:      	ldr.w	r3, [r3, #0x138]
  40d85c:      	vldr	d5, [r3, #48]
  40d860:      	vldr	d7, [pc, #332]          @ 0x40d9b0 <_ZN13TrainingStage8doLessonEf+0x36d8>
  40d864:      	vadd.f64	d7, d5, d7
  40d868:      	add	r5, sp, #0xe0
  40d86a:      	add	r3, sp, #0x8
  40d86c:      	mov	r0, r3
  40d86e:      	vmov.f64	d0, d6
  40d872:      	vmov.f64	d1, d7
  40d876:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x53a6
  40d87a:      	add	r3, sp, #0x8
  40d87c:      	ldm	r3, {r0, r1, r2, r3}
  40d87e:      	stm.w	r5, {r0, r1, r2, r3}
  40d882:      	add	r3, sp, #0x1c
  40d884:      	ldr	r3, [r3]
  40d886:      	ldr.w	r2, [r3, #0x1a4]
  40d88a:      	add	r3, sp, #0x1c
  40d88c:      	ldr	r3, [r3]
  40d88e:      	ldr.w	r3, [r3, #0x1a8]
  40d892:      	mov	r0, r2
  40d894:      	mov	r1, r3
  40d896:      	bl	0x319c08 <_ZN12EnemyManager18spawnHumanoidDroneEP13HumanoidDrone> @ imm = #-0xf3c92
  40d89a:      	add	r3, sp, #0x1c
  40d89c:      	ldr	r3, [r3]
  40d89e:      	ldr.w	r3, [r3, #0x1a8]
  40d8a2:      	ldr.w	r3, [r3, #0x1ac]
  40d8a6:      	ldr.w	r2, [r3, #0x138]
  40d8aa:      	add	r3, sp, #0xe0
  40d8ac:      	add.w	r5, r2, #0x28
  40d8b0:      	ldm	r3, {r0, r1, r2, r3}
  40d8b2:      	stm.w	r5, {r0, r1, r2, r3}
  40d8b6:      	add	r3, sp, #0x1c
  40d8b8:      	ldr	r3, [r3]
  40d8ba:      	ldr.w	r3, [r3, #0x1a8]
  40d8be:      	ldr.w	r3, [r3, #0x1ac]
  40d8c2:      	ldr	r3, [r3]
  40d8c4:      	add.w	r3, r3, #0x1d8
  40d8c8:      	ldr	r3, [r3]
  40d8ca:      	add	r2, sp, #0x1c
  40d8cc:      	ldr	r2, [r2]
  40d8ce:      	ldr.w	r2, [r2, #0x1a8]
  40d8d2:      	ldr.w	r2, [r2, #0x1ac]
  40d8d6:      	mov	r0, r2
  40d8d8:      	blx	r3
  40d8da:      	mov	r3, r0
  40d8dc:      	mov	r5, r3
  40d8de:      	ldr	r3, [r5]
  40d8e0:      	adds	r3, #0x4c
  40d8e2:      	ldr	r6, [r3]
  40d8e4:      	add	r3, sp, #0xe0
  40d8e6:      	vldr	d7, [r3]
  40d8ea:      	vcvt.f32.f64	s13, d7
  40d8ee:      	add	r3, sp, #0xe0
  40d8f0:      	vldr	d7, [r3, #8]
  40d8f4:      	vcvt.f32.f64	s15, d7
  40d8f8:      	add.w	r3, sp, #0x410
  40d8fc:      	mov	r0, r3
  40d8fe:      	vmov	r1, s13
  40d902:      	vmov	r2, s15
  40d906:      	bl	0x592cf0 <_ZN7cocos2d7CCPointC2Eff> @ imm = #0x1853e6
  40d90a:      	add.w	r3, sp, #0x410
  40d90e:      	mov	r0, r5
  40d910:      	mov	r1, r3
  40d912:      	blx	r6
  40d914:      	add	r3, sp, #0x1c
  40d916:      	ldr	r3, [r3]
  40d918:      	ldr.w	r3, [r3, #0x1a8]
  40d91c:      	ldr.w	r5, [r3, #0x1a8]
  40d920:      	add.w	r3, sp, #0x400
  40d924:      	mov	r0, r3
  40d926:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x37caca
  40d92a:      	add.w	r2, sp, #0x410
  40d92e:      	add.w	r3, sp, #0x400
  40d932:      	mov	r0, r2
  40d934:      	ldr	r2, [pc, #0xbc]         @ 0x40d9f4 <_ZN13TrainingStage8doLessonEf+0x371c>
  40d936:      	add	r2, pc
  40d938:      	mov	r1, r2
  40d93a:      	mov	r2, r3
  40d93c:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3a9120
  40d940:      	add.w	r3, sp, #0x410
  40d944:      	mov	r0, r5
  40d946:      	mov	r1, r3
  40d948:      	bl	0x3f3f64 <_ZN11SoldierView13setPlayerNameESs> @ imm = #-0x199e8
  40d94c:      	add.w	r3, sp, #0x410
  40d950:      	mov	r0, r3
  40d952:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3a7fbe
  40d956:      	add.w	r3, sp, #0x400
  40d95a:      	mov	r0, r3
  40d95c:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x37ca9c
  40d960:      	add	r3, sp, #0x1c
  40d962:      	ldr	r3, [r3]
  40d964:      	ldr.w	r3, [r3, #0x1a8]
  40d968:      	ldr.w	r3, [r3, #0x1ac]
  40d96c:      	ldr.w	r5, [r3, #0x138]
  40d970:      	add	r3, sp, #0x8
  40d972:      	mov	r0, r3
  40d974:      	vldr	d0, [pc, #64]           @ 0x40d9b8 <_ZN13TrainingStage8doLessonEf+0x36e0>
  40d978:      	vldr	d1, [pc, #68]           @ 0x40d9c0 <_ZN13TrainingStage8doLessonEf+0x36e8>
  40d97c:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x54ac
  40d980:      	add	r3, sp, #0x8
  40d982:      	adds	r5, #0x38
  40d984:      	ldm	r3, {r0, r1, r2, r3}
  40d986:      	stm.w	r5, {r0, r1, r2, r3}
  40d98a:      	ldr	r3, [pc, #0x44]         @ 0x40d9d0 <_ZN13TrainingStage8doLessonEf+0x36f8>
  40d98c:      	ldr	r3, [r4, r3]
  40d98e:      	ldr	r3, [r3]
  40d990:      	mov	r0, r3
  40d992:      	movs	r1, #0x47
  40d994:      	movs	r2, #0x1
  40d996:      	bl	0x3f7d40 <_ZN5Sound18playSoundWithVoiceEii> @ imm = #-0x15c5a
  40d99a:      	add	r3, sp, #0x3f0
  40d99c:      	mov	r0, r3
  40d99e:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3a7f72
  40d9a2:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x456e
// TrainingStage::doLesson  ghidra=0x41d9f8-0x41dd09  elf=0x40d9f8-0x40dd09  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  40d9f8:      	add	r3, sp, #0x1c
  40d9fa:      	ldr	r3, [r3]
  40d9fc:      	ldr.w	r3, [r3, #0x17c]
  40da00:      	ldr	r3, [r3]
  40da02:      	add.w	r3, r3, #0x238
  40da06:      	ldr	r3, [r3]
  40da08:      	add	r2, sp, #0x1c
  40da0a:      	ldr	r2, [r2]
  40da0c:      	ldr.w	r2, [r2, #0x17c]
  40da10:      	mov	r0, r2
  40da12:      	mov.w	r1, #0x0
  40da16:      	movt	r1, #0x4334
  40da1a:      	blx	r3
  40da1c:      	ldr	r3, [pc, #0x308]        @ 0x40dd28 <_ZN13TrainingStage8doLessonEf+0x3a50>
  40da1e:      	ldr	r3, [r4, r3]
  40da20:      	ldr	r3, [r3]
  40da22:      	ldr	r3, [r3]
  40da24:      	add.w	r3, r3, #0x2a4
  40da28:      	ldr	r3, [r3]
  40da2a:      	ldr	r2, [pc, #0x2fc]        @ 0x40dd28 <_ZN13TrainingStage8doLessonEf+0x3a50>
  40da2c:      	ldr	r2, [r4, r2]
  40da2e:      	ldr	r2, [r2]
  40da30:      	mov	r0, r2
  40da32:      	mov.w	r1, #0x0
  40da36:      	blx	r3
  40da38:      	ldr	r3, [pc, #0x2ec]        @ 0x40dd28 <_ZN13TrainingStage8doLessonEf+0x3a50>
  40da3a:      	ldr	r3, [r4, r3]
  40da3c:      	ldr	r3, [r3]
  40da3e:      	ldr.w	r2, [r3, #0x138]
  40da42:      	ldr	r3, [pc, #0x2e8]        @ 0x40dd2c <_ZN13TrainingStage8doLessonEf+0x3a54>
  40da44:      	add	r3, pc
  40da46:      	vldr	d6, [r3]
  40da4a:      	vldr	d7, [r3, #8]
  40da4e:      	mov	r0, r2
  40da50:      	vmov.f64	d0, d6
  40da54:      	vmov.f64	d1, d7
  40da58:      	bl	0x408648 <_ZN6Tracer14checkCollisionEv+0x5bc> @ imm = #-0x5414
  40da5c:      	ldr	r3, [pc, #0x2c8]        @ 0x40dd28 <_ZN13TrainingStage8doLessonEf+0x3a50>
  40da5e:      	ldr	r3, [r4, r3]
  40da60:      	ldr	r3, [r3]
  40da62:      	ldr.w	r2, [r3, #0x138]
  40da66:      	ldr	r3, [pc, #0x2c8]        @ 0x40dd30 <_ZN13TrainingStage8doLessonEf+0x3a58>
  40da68:      	add	r3, pc
  40da6a:      	vldr	d6, [r3]
  40da6e:      	vldr	d7, [r3, #8]
  40da72:      	mov	r0, r2
  40da74:      	vmov.f64	d0, d6
  40da78:      	vmov.f64	d1, d7
  40da7c:      	bl	0x408674 <_ZN6Tracer14checkCollisionEv+0x5e8> @ imm = #-0x540c
  40da80:      	add	r3, sp, #0x1c
  40da82:      	ldr	r3, [r3]
  40da84:      	vldr	s14, [r3, #392]
  40da88:      	vmov.f32	s15, #2.000000e+00
  40da8c:      	vcmpe.f32	s14, s15
  40da90:      	vmrs	APSR_nzcv, fpscr
  40da94:      	bpl	0x40daa2 <_ZN13TrainingStage8doLessonEf+0x37ca> @ imm = #0xa
  40da96:      	add	r2, sp, #0x1c
  40da98:      	add	r3, sp, #0x18
  40da9a:      	ldr	r0, [r2]
  40da9c:      	ldr	r1, [r3]
  40da9e:      	bl	0x409e30 <_ZN13TrainingStage11headChatterEf> @ imm = #-0x3c72
  40daa2:      	add	r3, sp, #0x1c
  40daa4:      	ldr	r3, [r3]
  40daa6:      	ldr.w	r3, [r3, #0x17c]
  40daaa:      	ldr.w	r3, [r3, #0x138]
  40daae:      	vldr	d6, [r3, #40]
  40dab2:      	ldr	r3, [pc, #0x274]        @ 0x40dd28 <_ZN13TrainingStage8doLessonEf+0x3a50>
  40dab4:      	ldr	r3, [r4, r3]
  40dab6:      	ldr	r3, [r3]
  40dab8:      	ldr.w	r3, [r3, #0x138]
  40dabc:      	vldr	d5, [r3, #40]
  40dac0:      	vldr	d7, [pc, #588]          @ 0x40dd10 <_ZN13TrainingStage8doLessonEf+0x3a38>
  40dac4:      	vadd.f64	d7, d5, d7
  40dac8:      	vcmpe.f64	d6, d7
  40dacc:      	vmrs	APSR_nzcv, fpscr
  40dad0:      	bpl	0x40db20 <_ZN13TrainingStage8doLessonEf+0x3848> @ imm = #0x4c
  40dad2:      	add	r3, sp, #0x1c
  40dad4:      	ldr	r3, [r3]
  40dad6:      	ldr.w	r3, [r3, #0x17c]
  40dada:      	movs	r2, #0x1
  40dadc:      	strb.w	r2, [r3, #0x11c]
  40dae0:      	add	r3, sp, #0x1c
  40dae2:      	ldr	r3, [r3]
  40dae4:      	ldr.w	r3, [r3, #0x17c]
  40dae8:      	ldr	r3, [r3]
  40daea:      	add.w	r3, r3, #0x230
  40daee:      	ldr	r5, [r3]
  40daf0:      	add	r3, sp, #0x1c
  40daf2:      	ldr	r3, [r3]
  40daf4:      	ldr.w	r3, [r3, #0x17c]
  40daf8:      	mov	r6, r3
  40dafa:      	add	r3, sp, #0x1a0
  40dafc:      	mov	r0, r3
  40dafe:      	vldr	d0, [pc, #536]          @ 0x40dd18 <_ZN13TrainingStage8doLessonEf+0x3a40>
  40db02:      	vldr	d1, [pc, #540]          @ 0x40dd20 <_ZN13TrainingStage8doLessonEf+0x3a48>
  40db06:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x5636
  40db0a:      	add	r3, sp, #0x1a0
  40db0c:      	mov	r2, sp
  40db0e:      	add.w	r1, r3, #0x8
  40db12:      	ldm	r1, {r0, r1}
  40db14:      	stm.w	r2, {r0, r1}
  40db18:      	ldm	r3, {r2, r3}
  40db1a:      	mov	r0, r6
  40db1c:      	blx	r5
  40db1e:      	b	0x40db6c <_ZN13TrainingStage8doLessonEf+0x3894> @ imm = #0x4a
  40db20:      	add	r3, sp, #0x1c
  40db22:      	ldr	r3, [r3]
  40db24:      	ldr.w	r3, [r3, #0x17c]
  40db28:      	movs	r2, #0x0
  40db2a:      	strb.w	r2, [r3, #0x11c]
  40db2e:      	add	r3, sp, #0x1c
  40db30:      	ldr	r3, [r3]
  40db32:      	ldr.w	r3, [r3, #0x17c]
  40db36:      	ldr	r3, [r3]
  40db38:      	add.w	r3, r3, #0x230
  40db3c:      	ldr	r5, [r3]
  40db3e:      	add	r3, sp, #0x1c
  40db40:      	ldr	r3, [r3]
  40db42:      	ldr.w	r3, [r3, #0x17c]
  40db46:      	mov	r6, r3
  40db48:      	add	r3, sp, #0x1b0
  40db4a:      	mov	r0, r3
  40db4c:      	vldr	d0, [pc, #464]          @ 0x40dd20 <_ZN13TrainingStage8doLessonEf+0x3a48>
  40db50:      	vldr	d1, [pc, #460]          @ 0x40dd20 <_ZN13TrainingStage8doLessonEf+0x3a48>
  40db54:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x5684
  40db58:      	add	r3, sp, #0x1b0
  40db5a:      	mov	r2, sp
  40db5c:      	add.w	r1, r3, #0x8
  40db60:      	ldm	r1, {r0, r1}
  40db62:      	stm.w	r2, {r0, r1}
  40db66:      	ldm	r3, {r2, r3}
  40db68:      	mov	r0, r6
  40db6a:      	blx	r5
  40db6c:      	add	r3, sp, #0x1c
  40db6e:      	ldr	r3, [r3]
  40db70:      	ldr.w	r3, [r3, #0x1a8]
  40db74:      	ldr.w	r3, [r3, #0x1ac]
  40db78:      	ldr.w	r3, [r3, #0x138]
  40db7c:      	vldr	d6, [r3, #48]
  40db80:      	ldr	r3, [pc, #0x1a4]        @ 0x40dd28 <_ZN13TrainingStage8doLessonEf+0x3a50>
  40db82:      	ldr	r3, [r4, r3]
  40db84:      	ldr	r3, [r3]
  40db86:      	ldr.w	r3, [r3, #0x138]
  40db8a:      	vldr	d5, [r3, #48]
  40db8e:      	vmov.f64	d7, #2.500000e+01
  40db92:      	vadd.f64	d7, d5, d7
  40db96:      	vcmpe.f64	d6, d7
  40db9a:      	vmrs	APSR_nzcv, fpscr
  40db9e:      	bpl.w	0x40dd3c <_ZN13TrainingStage8doLessonEf+0x3a64> @ imm = #0x19a
  40dba2:      	add	r3, sp, #0x1c
  40dba4:      	ldr	r3, [r3]
  40dba6:      	ldr.w	r3, [r3, #0x180]
  40dbaa:      	adds	r2, r3, #0x1
  40dbac:      	add	r3, sp, #0x1c
  40dbae:      	ldr	r3, [r3]
  40dbb0:      	str.w	r2, [r3, #0x180]
  40dbb4:      	add	r3, sp, #0x1c
  40dbb6:      	ldr	r3, [r3]
  40dbb8:      	mov.w	r2, #0x0
  40dbbc:      	str.w	r2, [r3, #0x188]
  40dbc0:      	add	r3, sp, #0x1c
  40dbc2:      	ldr	r3, [r3]
  40dbc4:      	ldr.w	r5, [r3, #0x10c]
  40dbc8:      	add.w	r3, sp, #0x400
  40dbcc:      	mov	r0, r3
  40dbce:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x37c822
  40dbd2:      	add.w	r2, sp, #0x410
  40dbd6:      	add.w	r3, sp, #0x400
  40dbda:      	mov	r0, r2
  40dbdc:      	ldr	r2, [pc, #0x154]        @ 0x40dd34 <_ZN13TrainingStage8doLessonEf+0x3a5c>
  40dbde:      	add	r2, pc
  40dbe0:      	mov	r1, r2
  40dbe2:      	mov	r2, r3
  40dbe4:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3a8e78
  40dbe8:      	movs	r0, #0x0
  40dbea:      	movs	r1, #0x0
  40dbec:      	movs	r2, #0xff
  40dbee:      	bl	0x408458 <_ZN6Tracer14checkCollisionEv+0x3cc> @ imm = #-0x579a
  40dbf2:      	mov	r2, r0
  40dbf4:      	add	r3, sp, #0x7c
  40dbf6:      	mov	r1, r2
  40dbf8:      	strb	r1, [r3]
  40dbfa:      	ubfx	r1, r2, #0x8, #0x8
  40dbfe:      	strb	r1, [r3, #0x1]
  40dc00:      	ubfx	r2, r2, #0x10, #0x8
  40dc04:      	strb	r2, [r3, #0x2]
  40dc06:      	add.w	r2, sp, #0x410
  40dc0a:      	add	r3, sp, #0x7c
  40dc0c:      	mov	r0, r5
  40dc0e:      	mov	r1, r2
  40dc10:      	ldr	r2, [r3]
  40dc12:      	movs	r3, #0x2
  40dc14:      	bl	0x33d2c0 <_ZN3HUD10addMessageESsN7cocos2d10_ccColor3BEs> @ imm = #-0xd0958
  40dc18:      	add.w	r3, sp, #0x410
  40dc1c:      	mov	r0, r3
  40dc1e:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3a7cf2
  40dc22:      	add.w	r3, sp, #0x400
  40dc26:      	mov	r0, r3
  40dc28:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x37c7d0
  40dc2c:      	add	r3, sp, #0x1c
  40dc2e:      	ldr	r3, [r3]
  40dc30:      	ldr.w	r3, [r3, #0x1a8]
  40dc34:      	ldr.w	r3, [r3, #0x1ac]
  40dc38:      	movs	r2, #0x0
  40dc3a:      	strb.w	r2, [r3, #0x11c]
  40dc3e:      	add	r3, sp, #0x1c
  40dc40:      	ldr	r3, [r3]
  40dc42:      	ldr.w	r3, [r3, #0x1a8]
  40dc46:      	ldr.w	r3, [r3, #0x1ac]
  40dc4a:      	ldr	r3, [r3]
  40dc4c:      	add.w	r3, r3, #0x1e0
  40dc50:      	ldr	r3, [r3]
  40dc52:      	add	r2, sp, #0x1c
  40dc54:      	ldr	r2, [r2]
  40dc56:      	ldr.w	r2, [r2, #0x1a8]
  40dc5a:      	ldr.w	r2, [r2, #0x1ac]
  40dc5e:      	mov	r0, r2
  40dc60:      	movs	r1, #0x0
  40dc62:      	blx	r3
  40dc64:      	add	r3, sp, #0x1c
  40dc66:      	ldr	r3, [r3]
  40dc68:      	ldr.w	r3, [r3, #0x1a8]
  40dc6c:      	ldr.w	r3, [r3, #0x1ac]
  40dc70:      	ldr	r3, [r3]
  40dc72:      	add.w	r3, r3, #0x230
  40dc76:      	ldr	r5, [r3]
  40dc78:      	add	r3, sp, #0x1c
  40dc7a:      	ldr	r3, [r3]
  40dc7c:      	ldr.w	r3, [r3, #0x1a8]
  40dc80:      	ldr.w	r3, [r3, #0x1ac]
  40dc84:      	mov	r6, r3
  40dc86:      	add	r3, sp, #0x1c0
  40dc88:      	mov	r0, r3
  40dc8a:      	vldr	d0, [pc, #148]          @ 0x40dd20 <_ZN13TrainingStage8doLessonEf+0x3a48>
  40dc8e:      	vldr	d1, [pc, #144]          @ 0x40dd20 <_ZN13TrainingStage8doLessonEf+0x3a48>
  40dc92:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x57c2
  40dc96:      	add	r3, sp, #0x1c0
  40dc98:      	mov	r2, sp
  40dc9a:      	add.w	r1, r3, #0x8
  40dc9e:      	ldm	r1, {r0, r1}
  40dca0:      	stm.w	r2, {r0, r1}
  40dca4:      	ldm	r3, {r2, r3}
  40dca6:      	mov	r0, r6
  40dca8:      	blx	r5
  40dcaa:      	ldr	r3, [pc, #0x8c]         @ 0x40dd38 <_ZN13TrainingStage8doLessonEf+0x3a60>
  40dcac:      	ldr	r3, [r4, r3]
  40dcae:      	ldr	r3, [r3]
  40dcb0:      	mov	r0, r3
  40dcb2:      	movs	r1, #0x48
  40dcb4:      	movs	r2, #0x1
  40dcb6:      	bl	0x3f7d40 <_ZN5Sound18playSoundWithVoiceEii> @ imm = #-0x15f7a
  40dcba:      	add	r3, sp, #0x1c
  40dcbc:      	ldr	r3, [r3]
  40dcbe:      	ldr.w	r3, [r3, #0x17c]
  40dcc2:      	movs	r2, #0x0
  40dcc4:      	strb.w	r2, [r3, #0x11c]
  40dcc8:      	add	r3, sp, #0x1c
  40dcca:      	ldr	r3, [r3]
  40dccc:      	ldr.w	r3, [r3, #0x17c]
  40dcd0:      	ldr	r3, [r3]
  40dcd2:      	add.w	r3, r3, #0x230
  40dcd6:      	ldr	r4, [r3]
  40dcd8:      	add	r3, sp, #0x1c
  40dcda:      	ldr	r3, [r3]
  40dcdc:      	ldr.w	r3, [r3, #0x17c]
  40dce0:      	mov	r5, r3
  40dce2:      	add	r3, sp, #0x1d0
  40dce4:      	mov	r0, r3
  40dce6:      	vldr	d0, [pc, #56]           @ 0x40dd20 <_ZN13TrainingStage8doLessonEf+0x3a48>
  40dcea:      	vldr	d1, [pc, #52]           @ 0x40dd20 <_ZN13TrainingStage8doLessonEf+0x3a48>
  40dcee:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x581e
  40dcf2:      	add	r3, sp, #0x1d0
  40dcf4:      	mov	r2, sp
  40dcf6:      	add.w	r1, r3, #0x8
  40dcfa:      	ldm	r1, {r0, r1}
  40dcfc:      	stm.w	r2, {r0, r1}
  40dd00:      	ldm	r3, {r2, r3}
  40dd02:      	mov	r0, r5
  40dd04:      	blx	r4
  40dd06:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x420a
// TrainingStage::doLesson  ghidra=0x41dd3c-0x41e01d  elf=0x40dd3c-0x40e01d  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  40dd3c:      	add	r3, sp, #0x1c
  40dd3e:      	ldr	r3, [r3]
  40dd40:      	ldr.w	r3, [r3, #0x1a8]
  40dd44:      	ldr.w	r3, [r3, #0x1ac]
  40dd48:      	ldr	r3, [r3]
  40dd4a:      	add.w	r3, r3, #0x238
  40dd4e:      	ldr	r3, [r3]
  40dd50:      	add	r2, sp, #0x1c
  40dd52:      	ldr	r2, [r2]
  40dd54:      	ldr.w	r2, [r2, #0x1a8]
  40dd58:      	ldr.w	r2, [r2, #0x1ac]
  40dd5c:      	mov	r0, r2
  40dd5e:      	mov.w	r1, #0x0
  40dd62:      	movt	r1, #0x4334
  40dd66:      	blx	r3
  40dd68:      	add	r3, sp, #0x1c
  40dd6a:      	ldr	r3, [r3]
  40dd6c:      	ldr.w	r3, [r3, #0x1a8]
  40dd70:      	ldr.w	r3, [r3, #0x1ac]
  40dd74:      	movs	r2, #0x1
  40dd76:      	strb.w	r2, [r3, #0x11c]
  40dd7a:      	add	r3, sp, #0x1c
  40dd7c:      	ldr	r3, [r3]
  40dd7e:      	ldr.w	r3, [r3, #0x1a8]
  40dd82:      	ldr.w	r3, [r3, #0x1ac]
  40dd86:      	ldr	r3, [r3]
  40dd88:      	add.w	r3, r3, #0x230
  40dd8c:      	ldr	r4, [r3]
  40dd8e:      	add	r3, sp, #0x1c
  40dd90:      	ldr	r3, [r3]
  40dd92:      	ldr.w	r3, [r3, #0x1a8]
  40dd96:      	ldr.w	r3, [r3, #0x1ac]
  40dd9a:      	mov	r5, r3
  40dd9c:      	add	r3, sp, #0x1e0
  40dd9e:      	mov	r0, r3
  40dda0:      	vldr	d0, [pc, #636]          @ 0x40e020 <_ZN13TrainingStage8doLessonEf+0x3d48>
  40dda4:      	vldr	d1, [pc, #632]          @ 0x40e020 <_ZN13TrainingStage8doLessonEf+0x3d48>
  40dda8:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x58d8
  40ddac:      	add	r3, sp, #0x1e0
  40ddae:      	mov	r2, sp
  40ddb0:      	add.w	r1, r3, #0x8
  40ddb4:      	ldm	r1, {r0, r1}
  40ddb6:      	stm.w	r2, {r0, r1}
  40ddba:      	ldm	r3, {r2, r3}
  40ddbc:      	mov	r0, r5
  40ddbe:      	blx	r4
  40ddc0:      	add	r3, sp, #0x1c
  40ddc2:      	ldr	r3, [r3]
  40ddc4:      	ldr.w	r3, [r3, #0x1a8]
  40ddc8:      	ldr.w	r3, [r3, #0x1ac]
  40ddcc:      	ldr	r3, [r3]
  40ddce:      	add.w	r3, r3, #0x1e0
  40ddd2:      	ldr	r3, [r3]
  40ddd4:      	add	r2, sp, #0x1c
  40ddd6:      	ldr	r2, [r2]
  40ddd8:      	ldr.w	r2, [r2, #0x1a8]
  40dddc:      	ldr.w	r2, [r2, #0x1ac]
  40dde0:      	mov	r0, r2
  40dde2:      	movs	r1, #0x1
  40dde4:      	blx	r3
  40dde6:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x412a
  40ddea:      	add	r3, sp, #0x1c
  40ddec:      	ldr	r3, [r3]
  40ddee:      	ldr.w	r3, [r3, #0x17c]
  40ddf2:      	ldr	r3, [r3]
  40ddf4:      	add.w	r3, r3, #0x238
  40ddf8:      	ldr	r3, [r3]
  40ddfa:      	add	r2, sp, #0x1c
  40ddfc:      	ldr	r2, [r2]
  40ddfe:      	ldr.w	r2, [r2, #0x17c]
  40de02:      	mov	r0, r2
  40de04:      	mov.w	r1, #0x0
  40de08:      	movt	r1, #0x4334
  40de0c:      	blx	r3
  40de0e:      	ldr	r3, [pc, #0x218]        @ 0x40e028 <_ZN13TrainingStage8doLessonEf+0x3d50>
  40de10:      	ldr	r3, [r4, r3]
  40de12:      	ldr	r3, [r3]
  40de14:      	ldr	r3, [r3]
  40de16:      	add.w	r3, r3, #0x2a4
  40de1a:      	ldr	r3, [r3]
  40de1c:      	ldr	r2, [pc, #0x208]        @ 0x40e028 <_ZN13TrainingStage8doLessonEf+0x3d50>
  40de1e:      	ldr	r2, [r4, r2]
  40de20:      	ldr	r2, [r2]
  40de22:      	mov	r0, r2
  40de24:      	mov.w	r1, #0x0
  40de28:      	blx	r3
  40de2a:      	add	r3, sp, #0x1c
  40de2c:      	ldr	r3, [r3]
  40de2e:      	vldr	s14, [r3, #392]
  40de32:      	vmov.f32	s15, #2.000000e+00
  40de36:      	vcmpe.f32	s14, s15
  40de3a:      	vmrs	APSR_nzcv, fpscr
  40de3e:      	bpl	0x40de4c <_ZN13TrainingStage8doLessonEf+0x3b74> @ imm = #0xa
  40de40:      	add	r2, sp, #0x1c
  40de42:      	add	r3, sp, #0x18
  40de44:      	ldr	r0, [r2]
  40de46:      	ldr	r1, [r3]
  40de48:      	bl	0x409e30 <_ZN13TrainingStage11headChatterEf> @ imm = #-0x401c
  40de4c:      	add	r3, sp, #0x1c
  40de4e:      	ldr	r3, [r3]
  40de50:      	vldr	s14, [r3, #392]
  40de54:      	vmov.f32	s15, #2.500000e+00
  40de58:      	vcmpe.f32	s14, s15
  40de5c:      	vmrs	APSR_nzcv, fpscr
  40de60:      	bgt	0x40de66 <_ZN13TrainingStage8doLessonEf+0x3b8e> @ imm = #0x2
  40de62:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x40ae
  40de66:      	add	r3, sp, #0x1c
  40de68:      	ldr	r3, [r3]
  40de6a:      	ldr.w	r3, [r3, #0x180]
  40de6e:      	adds	r2, r3, #0x1
  40de70:      	add	r3, sp, #0x1c
  40de72:      	ldr	r3, [r3]
  40de74:      	str.w	r2, [r3, #0x180]
  40de78:      	add	r3, sp, #0x1c
  40de7a:      	ldr	r3, [r3]
  40de7c:      	mov.w	r2, #0x0
  40de80:      	str.w	r2, [r3, #0x188]
  40de84:      	add	r3, sp, #0x1c
  40de86:      	ldr	r3, [r3]
  40de88:      	ldr.w	r5, [r3, #0x10c]
  40de8c:      	add.w	r3, sp, #0x400
  40de90:      	mov	r0, r3
  40de92:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x37c55e
  40de96:      	add.w	r2, sp, #0x410
  40de9a:      	add.w	r3, sp, #0x400
  40de9e:      	mov	r0, r2
  40dea0:      	ldr	r2, [pc, #0x188]        @ 0x40e02c <_ZN13TrainingStage8doLessonEf+0x3d54>
  40dea2:      	add	r2, pc
  40dea4:      	mov	r1, r2
  40dea6:      	mov	r2, r3
  40dea8:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3a8bb4
  40deac:      	movs	r0, #0x0
  40deae:      	movs	r1, #0x0
  40deb0:      	movs	r2, #0xff
  40deb2:      	bl	0x408458 <_ZN6Tracer14checkCollisionEv+0x3cc> @ imm = #-0x5a5e
  40deb6:      	mov	r2, r0
  40deb8:      	add	r3, sp, #0x80
  40deba:      	mov	r1, r2
  40debc:      	strb	r1, [r3]
  40debe:      	ubfx	r1, r2, #0x8, #0x8
  40dec2:      	strb	r1, [r3, #0x1]
  40dec4:      	ubfx	r2, r2, #0x10, #0x8
  40dec8:      	strb	r2, [r3, #0x2]
  40deca:      	add.w	r2, sp, #0x410
  40dece:      	add	r3, sp, #0x80
  40ded0:      	mov	r0, r5
  40ded2:      	mov	r1, r2
  40ded4:      	ldr	r2, [r3]
  40ded6:      	movs	r3, #0x2
  40ded8:      	bl	0x33d2c0 <_ZN3HUD10addMessageESsN7cocos2d10_ccColor3BEs> @ imm = #-0xd0c1c
  40dedc:      	add.w	r3, sp, #0x410
  40dee0:      	mov	r0, r3
  40dee2:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3a7a2e
  40dee6:      	add.w	r3, sp, #0x400
  40deea:      	mov	r0, r3
  40deec:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x37c50c
  40def0:      	ldr	r3, [pc, #0x13c]        @ 0x40e030 <_ZN13TrainingStage8doLessonEf+0x3d58>
  40def2:      	ldr	r3, [r4, r3]
  40def4:      	ldr	r3, [r3]
  40def6:      	mov	r0, r3
  40def8:      	movs	r1, #0x49
  40defa:      	movs	r2, #0x1
  40defc:      	bl	0x3f7d40 <_ZN5Sound18playSoundWithVoiceEii> @ imm = #-0x161c0
  40df00:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x4010
  40df04:      	add	r3, sp, #0x1c
  40df06:      	ldr	r3, [r3]
  40df08:      	ldr.w	r3, [r3, #0x17c]
  40df0c:      	ldr	r3, [r3]
  40df0e:      	add.w	r3, r3, #0x238
  40df12:      	ldr	r3, [r3]
  40df14:      	add	r2, sp, #0x1c
  40df16:      	ldr	r2, [r2]
  40df18:      	ldr.w	r2, [r2, #0x17c]
  40df1c:      	mov	r0, r2
  40df1e:      	mov.w	r1, #0x0
  40df22:      	movt	r1, #0x4334
  40df26:      	blx	r3
  40df28:      	ldr	r3, [pc, #0xfc]         @ 0x40e028 <_ZN13TrainingStage8doLessonEf+0x3d50>
  40df2a:      	ldr	r3, [r4, r3]
  40df2c:      	ldr	r3, [r3]
  40df2e:      	ldr	r3, [r3]
  40df30:      	add.w	r3, r3, #0x2a4
  40df34:      	ldr	r3, [r3]
  40df36:      	ldr	r2, [pc, #0xf0]         @ 0x40e028 <_ZN13TrainingStage8doLessonEf+0x3d50>
  40df38:      	ldr	r2, [r4, r2]
  40df3a:      	ldr	r2, [r2]
  40df3c:      	mov	r0, r2
  40df3e:      	mov.w	r1, #0x0
  40df42:      	blx	r3
  40df44:      	add	r3, sp, #0x1c
  40df46:      	ldr	r3, [r3]
  40df48:      	vldr	s14, [r3, #392]
  40df4c:      	vmov.f32	s15, #2.000000e+00
  40df50:      	vcmpe.f32	s14, s15
  40df54:      	vmrs	APSR_nzcv, fpscr
  40df58:      	bpl	0x40df66 <_ZN13TrainingStage8doLessonEf+0x3c8e> @ imm = #0xa
  40df5a:      	add	r2, sp, #0x1c
  40df5c:      	add	r3, sp, #0x18
  40df5e:      	ldr	r0, [r2]
  40df60:      	ldr	r1, [r3]
  40df62:      	bl	0x409e30 <_ZN13TrainingStage11headChatterEf> @ imm = #-0x4136
  40df66:      	add	r3, sp, #0x1c
  40df68:      	ldr	r3, [r3]
  40df6a:      	vldr	s14, [r3, #392]
  40df6e:      	vmov.f32	s15, #2.500000e+00
  40df72:      	vcmpe.f32	s14, s15
  40df76:      	vmrs	APSR_nzcv, fpscr
  40df7a:      	bgt	0x40df80 <_ZN13TrainingStage8doLessonEf+0x3ca8> @ imm = #0x2
  40df7c:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x3f94
  40df80:      	add	r3, sp, #0x1c
  40df82:      	ldr	r3, [r3]
  40df84:      	ldr.w	r3, [r3, #0x180]
  40df88:      	adds	r2, r3, #0x1
  40df8a:      	add	r3, sp, #0x1c
  40df8c:      	ldr	r3, [r3]
  40df8e:      	str.w	r2, [r3, #0x180]
  40df92:      	add	r3, sp, #0x1c
  40df94:      	ldr	r3, [r3]
  40df96:      	mov.w	r2, #0x0
  40df9a:      	str.w	r2, [r3, #0x188]
  40df9e:      	add	r3, sp, #0x1c
  40dfa0:      	ldr	r3, [r3]
  40dfa2:      	ldr.w	r5, [r3, #0x10c]
  40dfa6:      	add.w	r3, sp, #0x400
  40dfaa:      	mov	r0, r3
  40dfac:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x37c444
  40dfb0:      	add.w	r2, sp, #0x410
  40dfb4:      	add.w	r3, sp, #0x400
  40dfb8:      	mov	r0, r2
  40dfba:      	ldr	r2, [pc, #0x78]         @ 0x40e034 <_ZN13TrainingStage8doLessonEf+0x3d5c>
  40dfbc:      	add	r2, pc
  40dfbe:      	mov	r1, r2
  40dfc0:      	mov	r2, r3
  40dfc2:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3a8a9a
  40dfc6:      	movs	r0, #0x0
  40dfc8:      	movs	r1, #0x0
  40dfca:      	movs	r2, #0xff
  40dfcc:      	bl	0x408458 <_ZN6Tracer14checkCollisionEv+0x3cc> @ imm = #-0x5b78
  40dfd0:      	mov	r2, r0
  40dfd2:      	add	r3, sp, #0x84
  40dfd4:      	mov	r1, r2
  40dfd6:      	strb	r1, [r3]
  40dfd8:      	ubfx	r1, r2, #0x8, #0x8
  40dfdc:      	strb	r1, [r3, #0x1]
  40dfde:      	ubfx	r2, r2, #0x10, #0x8
  40dfe2:      	strb	r2, [r3, #0x2]
  40dfe4:      	add.w	r2, sp, #0x410
  40dfe8:      	add	r3, sp, #0x84
  40dfea:      	mov	r0, r5
  40dfec:      	mov	r1, r2
  40dfee:      	ldr	r2, [r3]
  40dff0:      	movs	r3, #0x2
  40dff2:      	bl	0x33d2c0 <_ZN3HUD10addMessageESsN7cocos2d10_ccColor3BEs> @ imm = #-0xd0d36
  40dff6:      	add.w	r3, sp, #0x410
  40dffa:      	mov	r0, r3
  40dffc:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3a7914
  40e000:      	add.w	r3, sp, #0x400
  40e004:      	mov	r0, r3
  40e006:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x37c3f2
  40e00a:      	ldr	r3, [pc, #0x24]         @ 0x40e030 <_ZN13TrainingStage8doLessonEf+0x3d58>
  40e00c:      	ldr	r3, [r4, r3]
  40e00e:      	ldr	r3, [r3]
  40e010:      	mov	r0, r3
  40e012:      	movs	r1, #0x4a
  40e014:      	movs	r2, #0x1
  40e016:      	bl	0x3f7d40 <_ZN5Sound18playSoundWithVoiceEii> @ imm = #-0x162da
  40e01a:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x3ef6
// TrainingStage::doLesson  ghidra=0x41e038-0x41e63d  elf=0x40e038-0x40e63d  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  40e038:      	add	r3, sp, #0x1c
  40e03a:      	ldr	r3, [r3]
  40e03c:      	ldr.w	r3, [r3, #0x17c]
  40e040:      	ldr	r3, [r3]
  40e042:      	add.w	r3, r3, #0x238
  40e046:      	ldr	r3, [r3]
  40e048:      	add	r2, sp, #0x1c
  40e04a:      	ldr	r2, [r2]
  40e04c:      	ldr.w	r2, [r2, #0x17c]
  40e050:      	mov	r0, r2
  40e052:      	mov.w	r1, #0x0
  40e056:      	movt	r1, #0x4334
  40e05a:      	blx	r3
  40e05c:      	ldr.w	r3, [pc, #0x5f0]        @ 0x40e650 <_ZN13TrainingStage8doLessonEf+0x4378>
  40e060:      	ldr	r3, [r4, r3]
  40e062:      	ldr	r3, [r3]
  40e064:      	ldr	r3, [r3]
  40e066:      	add.w	r3, r3, #0x2a4
  40e06a:      	ldr	r3, [r3]
  40e06c:      	ldr.w	r2, [pc, #0x5e0]        @ 0x40e650 <_ZN13TrainingStage8doLessonEf+0x4378>
  40e070:      	ldr	r2, [r4, r2]
  40e072:      	ldr	r2, [r2]
  40e074:      	mov	r0, r2
  40e076:      	mov.w	r1, #0x0
  40e07a:      	blx	r3
  40e07c:      	add	r3, sp, #0x1c
  40e07e:      	ldr	r3, [r3]
  40e080:      	vldr	s14, [r3, #392]
  40e084:      	vmov.f32	s15, #2.000000e+00
  40e088:      	vcmpe.f32	s14, s15
  40e08c:      	vmrs	APSR_nzcv, fpscr
  40e090:      	bpl	0x40e09e <_ZN13TrainingStage8doLessonEf+0x3dc6> @ imm = #0xa
  40e092:      	add	r2, sp, #0x1c
  40e094:      	add	r3, sp, #0x18
  40e096:      	ldr	r0, [r2]
  40e098:      	ldr	r1, [r3]
  40e09a:      	bl	0x409e30 <_ZN13TrainingStage11headChatterEf> @ imm = #-0x426e
  40e09e:      	add	r3, sp, #0x1c
  40e0a0:      	ldr	r3, [r3]
  40e0a2:      	vldr	s14, [r3, #392]
  40e0a6:      	vmov.f32	s15, #2.500000e+00
  40e0aa:      	vcmpe.f32	s14, s15
  40e0ae:      	vmrs	APSR_nzcv, fpscr
  40e0b2:      	bgt	0x40e0b8 <_ZN13TrainingStage8doLessonEf+0x3de0> @ imm = #0x2
  40e0b4:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x3e5c
  40e0b8:      	add	r3, sp, #0x1c
  40e0ba:      	ldr	r3, [r3]
  40e0bc:      	ldr.w	r3, [r3, #0x180]
  40e0c0:      	adds	r2, r3, #0x1
  40e0c2:      	add	r3, sp, #0x1c
  40e0c4:      	ldr	r3, [r3]
  40e0c6:      	str.w	r2, [r3, #0x180]
  40e0ca:      	add	r3, sp, #0x1c
  40e0cc:      	ldr	r3, [r3]
  40e0ce:      	mov.w	r2, #0x0
  40e0d2:      	str.w	r2, [r3, #0x188]
  40e0d6:      	add	r3, sp, #0x1c
  40e0d8:      	ldr	r3, [r3]
  40e0da:      	ldr.w	r3, [r3, #0x1a8]
  40e0de:      	ldr.w	r3, [r3, #0x1ac]
  40e0e2:      	ldr	r3, [r3]
  40e0e4:      	add.w	r3, r3, #0x238
  40e0e8:      	ldr	r3, [r3]
  40e0ea:      	add	r2, sp, #0x1c
  40e0ec:      	ldr	r2, [r2]
  40e0ee:      	ldr.w	r2, [r2, #0x1a8]
  40e0f2:      	ldr.w	r2, [r2, #0x1ac]
  40e0f6:      	mov	r0, r2
  40e0f8:      	mov.w	r1, #0x0
  40e0fc:      	blx	r3
  40e0fe:      	add	r3, sp, #0x1c
  40e100:      	ldr	r3, [r3]
  40e102:      	ldr.w	r5, [r3, #0x10c]
  40e106:      	add.w	r3, sp, #0x400
  40e10a:      	mov	r0, r3
  40e10c:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x37c2e4
  40e110:      	add.w	r2, sp, #0x410
  40e114:      	add.w	r3, sp, #0x400
  40e118:      	mov	r0, r2
  40e11a:      	ldr.w	r2, [pc, #0x538]        @ 0x40e654 <_ZN13TrainingStage8doLessonEf+0x437c>
  40e11e:      	add	r2, pc
  40e120:      	mov	r1, r2
  40e122:      	mov	r2, r3
  40e124:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3a8938
  40e128:      	movs	r0, #0xff
  40e12a:      	movs	r1, #0x0
  40e12c:      	movs	r2, #0x0
  40e12e:      	bl	0x408458 <_ZN6Tracer14checkCollisionEv+0x3cc> @ imm = #-0x5cda
  40e132:      	mov	r2, r0
  40e134:      	add	r3, sp, #0x88
  40e136:      	mov	r1, r2
  40e138:      	strb	r1, [r3]
  40e13a:      	ubfx	r1, r2, #0x8, #0x8
  40e13e:      	strb	r1, [r3, #0x1]
  40e140:      	ubfx	r2, r2, #0x10, #0x8
  40e144:      	strb	r2, [r3, #0x2]
  40e146:      	add.w	r2, sp, #0x410
  40e14a:      	add	r3, sp, #0x88
  40e14c:      	mov	r0, r5
  40e14e:      	mov	r1, r2
  40e150:      	ldr	r2, [r3]
  40e152:      	movs	r3, #0x2
  40e154:      	bl	0x33d2c0 <_ZN3HUD10addMessageESsN7cocos2d10_ccColor3BEs> @ imm = #-0xd0e98
  40e158:      	add.w	r3, sp, #0x410
  40e15c:      	mov	r0, r3
  40e15e:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3a77b2
  40e162:      	add.w	r3, sp, #0x400
  40e166:      	mov	r0, r3
  40e168:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x37c290
  40e16c:      	ldr.w	r3, [pc, #0x4e8]        @ 0x40e658 <_ZN13TrainingStage8doLessonEf+0x4380>
  40e170:      	ldr	r3, [r4, r3]
  40e172:      	ldr	r3, [r3]
  40e174:      	mov	r0, r3
  40e176:      	movs	r1, #0x59
  40e178:      	movs	r2, #0x1
  40e17a:      	bl	0x3f7d40 <_ZN5Sound18playSoundWithVoiceEii> @ imm = #-0x1643e
  40e17e:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x3d92
  40e182:      	add	r3, sp, #0x1c
  40e184:      	ldr	r3, [r3]
  40e186:      	ldr.w	r3, [r3, #0x17c]
  40e18a:      	ldr	r3, [r3]
  40e18c:      	add.w	r3, r3, #0x238
  40e190:      	ldr	r3, [r3]
  40e192:      	add	r2, sp, #0x1c
  40e194:      	ldr	r2, [r2]
  40e196:      	ldr.w	r2, [r2, #0x17c]
  40e19a:      	mov	r0, r2
  40e19c:      	mov.w	r1, #0x0
  40e1a0:      	movt	r1, #0x4334
  40e1a4:      	blx	r3
  40e1a6:      	ldr.w	r3, [pc, #0x4a8]        @ 0x40e650 <_ZN13TrainingStage8doLessonEf+0x4378>
  40e1aa:      	ldr	r3, [r4, r3]
  40e1ac:      	ldr	r3, [r3]
  40e1ae:      	ldr	r3, [r3]
  40e1b0:      	add.w	r3, r3, #0x2a4
  40e1b4:      	ldr	r3, [r3]
  40e1b6:      	ldr.w	r2, [pc, #0x498]        @ 0x40e650 <_ZN13TrainingStage8doLessonEf+0x4378>
  40e1ba:      	ldr	r2, [r4, r2]
  40e1bc:      	ldr	r2, [r2]
  40e1be:      	mov	r0, r2
  40e1c0:      	mov.w	r1, #0x0
  40e1c4:      	blx	r3
  40e1c6:      	add	r3, sp, #0x1c
  40e1c8:      	ldr	r3, [r3]
  40e1ca:      	vldr	s14, [r3, #392]
  40e1ce:      	vmov.f32	s15, #2.000000e+00
  40e1d2:      	vcmpe.f32	s14, s15
  40e1d6:      	vmrs	APSR_nzcv, fpscr
  40e1da:      	bgt	0x40e1e0 <_ZN13TrainingStage8doLessonEf+0x3f08> @ imm = #0x2
  40e1dc:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x3d34
  40e1e0:      	add	r3, sp, #0x1c
  40e1e2:      	ldr	r3, [r3]
  40e1e4:      	ldr.w	r3, [r3, #0x180]
  40e1e8:      	adds	r2, r3, #0x1
  40e1ea:      	add	r3, sp, #0x1c
  40e1ec:      	ldr	r3, [r3]
  40e1ee:      	str.w	r2, [r3, #0x180]
  40e1f2:      	add	r3, sp, #0x1c
  40e1f4:      	ldr	r3, [r3]
  40e1f6:      	mov.w	r2, #0x0
  40e1fa:      	str.w	r2, [r3, #0x188]
  40e1fe:      	add	r3, sp, #0x1c
  40e200:      	ldr	r3, [r3]
  40e202:      	ldr.w	r5, [r3, #0x10c]
  40e206:      	add.w	r3, sp, #0x400
  40e20a:      	mov	r0, r3
  40e20c:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x37c1e4
  40e210:      	add.w	r2, sp, #0x410
  40e214:      	add.w	r3, sp, #0x400
  40e218:      	mov	r0, r2
  40e21a:      	ldr.w	r2, [pc, #0x440]        @ 0x40e65c <_ZN13TrainingStage8doLessonEf+0x4384>
  40e21e:      	add	r2, pc
  40e220:      	mov	r1, r2
  40e222:      	mov	r2, r3
  40e224:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3a8838
  40e228:      	movs	r0, #0x0
  40e22a:      	movs	r1, #0x0
  40e22c:      	movs	r2, #0xff
  40e22e:      	bl	0x408458 <_ZN6Tracer14checkCollisionEv+0x3cc> @ imm = #-0x5dda
  40e232:      	mov	r2, r0
  40e234:      	add	r3, sp, #0x8c
  40e236:      	mov	r1, r2
  40e238:      	strb	r1, [r3]
  40e23a:      	ubfx	r1, r2, #0x8, #0x8
  40e23e:      	strb	r1, [r3, #0x1]
  40e240:      	ubfx	r2, r2, #0x10, #0x8
  40e244:      	strb	r2, [r3, #0x2]
  40e246:      	add.w	r2, sp, #0x410
  40e24a:      	add	r3, sp, #0x8c
  40e24c:      	mov	r0, r5
  40e24e:      	mov	r1, r2
  40e250:      	ldr	r2, [r3]
  40e252:      	movs	r3, #0x2
  40e254:      	bl	0x33d2c0 <_ZN3HUD10addMessageESsN7cocos2d10_ccColor3BEs> @ imm = #-0xd0f98
  40e258:      	add.w	r3, sp, #0x410
  40e25c:      	mov	r0, r3
  40e25e:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3a76b2
  40e262:      	add.w	r3, sp, #0x400
  40e266:      	mov	r0, r3
  40e268:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x37c190
  40e26c:      	ldr	r3, [pc, #0x3e8]        @ 0x40e658 <_ZN13TrainingStage8doLessonEf+0x4380>
  40e26e:      	ldr	r3, [r4, r3]
  40e270:      	ldr	r3, [r3]
  40e272:      	mov	r0, r3
  40e274:      	movs	r1, #0x4b
  40e276:      	movs	r2, #0x1
  40e278:      	bl	0x3f7d40 <_ZN5Sound18playSoundWithVoiceEii> @ imm = #-0x1653c
  40e27c:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x3c94
  40e280:      	add	r3, sp, #0x1c
  40e282:      	ldr	r3, [r3]
  40e284:      	ldr.w	r3, [r3, #0x17c]
  40e288:      	ldr	r3, [r3]
  40e28a:      	add.w	r3, r3, #0x238
  40e28e:      	ldr	r3, [r3]
  40e290:      	add	r2, sp, #0x1c
  40e292:      	ldr	r2, [r2]
  40e294:      	ldr.w	r2, [r2, #0x17c]
  40e298:      	mov	r0, r2
  40e29a:      	mov.w	r1, #0x0
  40e29e:      	movt	r1, #0x4334
  40e2a2:      	blx	r3
  40e2a4:      	ldr	r3, [pc, #0x3a8]        @ 0x40e650 <_ZN13TrainingStage8doLessonEf+0x4378>
  40e2a6:      	ldr	r3, [r4, r3]
  40e2a8:      	ldr	r3, [r3]
  40e2aa:      	ldr	r3, [r3]
  40e2ac:      	add.w	r3, r3, #0x2a4
  40e2b0:      	ldr	r3, [r3]
  40e2b2:      	ldr	r2, [pc, #0x39c]        @ 0x40e650 <_ZN13TrainingStage8doLessonEf+0x4378>
  40e2b4:      	ldr	r2, [r4, r2]
  40e2b6:      	ldr	r2, [r2]
  40e2b8:      	mov	r0, r2
  40e2ba:      	mov.w	r1, #0x0
  40e2be:      	blx	r3
  40e2c0:      	add	r3, sp, #0x1c
  40e2c2:      	ldr	r3, [r3]
  40e2c4:      	vldr	s14, [r3, #392]
  40e2c8:      	vmov.f32	s15, #2.000000e+00
  40e2cc:      	vcmpe.f32	s14, s15
  40e2d0:      	vmrs	APSR_nzcv, fpscr
  40e2d4:      	bpl	0x40e2e2 <_ZN13TrainingStage8doLessonEf+0x400a> @ imm = #0xa
  40e2d6:      	add	r2, sp, #0x1c
  40e2d8:      	add	r3, sp, #0x18
  40e2da:      	ldr	r0, [r2]
  40e2dc:      	ldr	r1, [r3]
  40e2de:      	bl	0x409e30 <_ZN13TrainingStage11headChatterEf> @ imm = #-0x44b2
  40e2e2:      	add	r3, sp, #0x1c
  40e2e4:      	ldr	r3, [r3]
  40e2e6:      	vldr	s14, [r3, #392]
  40e2ea:      	vmov.f32	s15, #2.500000e+00
  40e2ee:      	vcmpe.f32	s14, s15
  40e2f2:      	vmrs	APSR_nzcv, fpscr
  40e2f6:      	bgt	0x40e2fc <_ZN13TrainingStage8doLessonEf+0x4024> @ imm = #0x2
  40e2f8:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x3c18
  40e2fc:      	add	r3, sp, #0x1c
  40e2fe:      	ldr	r3, [r3]
  40e300:      	ldr.w	r3, [r3, #0x180]
  40e304:      	adds	r2, r3, #0x1
  40e306:      	add	r3, sp, #0x1c
  40e308:      	ldr	r3, [r3]
  40e30a:      	str.w	r2, [r3, #0x180]
  40e30e:      	add	r3, sp, #0x1c
  40e310:      	ldr	r3, [r3]
  40e312:      	mov.w	r2, #0x0
  40e316:      	str.w	r2, [r3, #0x188]
  40e31a:      	add	r3, sp, #0x1c
  40e31c:      	ldr	r3, [r3]
  40e31e:      	ldr.w	r5, [r3, #0x10c]
  40e322:      	add.w	r3, sp, #0x400
  40e326:      	mov	r0, r3
  40e328:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x37c0c8
  40e32c:      	add.w	r2, sp, #0x410
  40e330:      	add.w	r3, sp, #0x400
  40e334:      	mov	r0, r2
  40e336:      	ldr	r2, [pc, #0x328]        @ 0x40e660 <_ZN13TrainingStage8doLessonEf+0x4388>
  40e338:      	add	r2, pc
  40e33a:      	mov	r1, r2
  40e33c:      	mov	r2, r3
  40e33e:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3a871e
  40e342:      	movs	r0, #0xff
  40e344:      	movs	r1, #0x0
  40e346:      	movs	r2, #0x0
  40e348:      	bl	0x408458 <_ZN6Tracer14checkCollisionEv+0x3cc> @ imm = #-0x5ef4
  40e34c:      	mov	r2, r0
  40e34e:      	add	r3, sp, #0x90
  40e350:      	mov	r1, r2
  40e352:      	strb	r1, [r3]
  40e354:      	ubfx	r1, r2, #0x8, #0x8
  40e358:      	strb	r1, [r3, #0x1]
  40e35a:      	ubfx	r2, r2, #0x10, #0x8
  40e35e:      	strb	r2, [r3, #0x2]
  40e360:      	add.w	r2, sp, #0x410
  40e364:      	add	r3, sp, #0x90
  40e366:      	mov	r0, r5
  40e368:      	mov	r1, r2
  40e36a:      	ldr	r2, [r3]
  40e36c:      	movs	r3, #0x2
  40e36e:      	bl	0x33d2c0 <_ZN3HUD10addMessageESsN7cocos2d10_ccColor3BEs> @ imm = #-0xd10b2
  40e372:      	add.w	r3, sp, #0x410
  40e376:      	mov	r0, r3
  40e378:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3a7598
  40e37c:      	add.w	r3, sp, #0x400
  40e380:      	mov	r0, r3
  40e382:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x37c076
  40e386:      	ldr	r3, [pc, #0x2d0]        @ 0x40e658 <_ZN13TrainingStage8doLessonEf+0x4380>
  40e388:      	ldr	r3, [r4, r3]
  40e38a:      	ldr	r3, [r3]
  40e38c:      	mov	r0, r3
  40e38e:      	movs	r1, #0x4c
  40e390:      	movs	r2, #0x1
  40e392:      	bl	0x3f7d40 <_ZN5Sound18playSoundWithVoiceEii> @ imm = #-0x16656
  40e396:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x3b7a
  40e39a:      	add	r3, sp, #0x1c
  40e39c:      	ldr	r3, [r3]
  40e39e:      	ldr.w	r3, [r3, #0x17c]
  40e3a2:      	ldr	r3, [r3]
  40e3a4:      	add.w	r3, r3, #0x238
  40e3a8:      	ldr	r3, [r3]
  40e3aa:      	add	r2, sp, #0x1c
  40e3ac:      	ldr	r2, [r2]
  40e3ae:      	ldr.w	r2, [r2, #0x17c]
  40e3b2:      	mov	r0, r2
  40e3b4:      	mov.w	r1, #0x0
  40e3b8:      	movt	r1, #0x4334
  40e3bc:      	blx	r3
  40e3be:      	ldr	r3, [pc, #0x290]        @ 0x40e650 <_ZN13TrainingStage8doLessonEf+0x4378>
  40e3c0:      	ldr	r3, [r4, r3]
  40e3c2:      	ldr	r3, [r3]
  40e3c4:      	ldr	r3, [r3]
  40e3c6:      	add.w	r3, r3, #0x2a4
  40e3ca:      	ldr	r3, [r3]
  40e3cc:      	ldr	r2, [pc, #0x280]        @ 0x40e650 <_ZN13TrainingStage8doLessonEf+0x4378>
  40e3ce:      	ldr	r2, [r4, r2]
  40e3d0:      	ldr	r2, [r2]
  40e3d2:      	mov	r0, r2
  40e3d4:      	mov.w	r1, #0x0
  40e3d8:      	blx	r3
  40e3da:      	add	r3, sp, #0x1c
  40e3dc:      	ldr	r3, [r3]
  40e3de:      	ldr.w	r3, [r3, #0x1a8]
  40e3e2:      	ldr.w	r3, [r3, #0x1ac]
  40e3e6:      	ldr.w	r3, [r3, #0x138]
  40e3ea:      	vldr	d6, [r3, #40]
  40e3ee:      	add	r3, sp, #0x1c
  40e3f0:      	ldr	r3, [r3]
  40e3f2:      	ldr.w	r3, [r3, #0x17c]
  40e3f6:      	ldr.w	r3, [r3, #0x138]
  40e3fa:      	vldr	d5, [r3, #40]
  40e3fe:      	vmov.f64	d7, #2.500000e+01
  40e402:      	vsub.f64	d7, d5, d7
  40e406:      	vcmpe.f64	d6, d7
  40e40a:      	vmrs	APSR_nzcv, fpscr
  40e40e:      	ble	0x40e506 <_ZN13TrainingStage8doLessonEf+0x422e> @ imm = #0xf4
  40e410:      	add	r3, sp, #0x1c
  40e412:      	ldr	r3, [r3]
  40e414:      	ldr.w	r3, [r3, #0x180]
  40e418:      	adds	r2, r3, #0x1
  40e41a:      	add	r3, sp, #0x1c
  40e41c:      	ldr	r3, [r3]
  40e41e:      	str.w	r2, [r3, #0x180]
  40e422:      	add	r3, sp, #0x1c
  40e424:      	ldr	r3, [r3]
  40e426:      	mov.w	r2, #0x0
  40e42a:      	str.w	r2, [r3, #0x188]
  40e42e:      	add	r3, sp, #0x1c
  40e430:      	ldr	r3, [r3]
  40e432:      	ldr.w	r5, [r3, #0x10c]
  40e436:      	add.w	r3, sp, #0x400
  40e43a:      	mov	r0, r3
  40e43c:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x37bfb4
  40e440:      	add.w	r2, sp, #0x410
  40e444:      	add.w	r3, sp, #0x400
  40e448:      	mov	r0, r2
  40e44a:      	ldr	r2, [pc, #0x218]        @ 0x40e664 <_ZN13TrainingStage8doLessonEf+0x438c>
  40e44c:      	add	r2, pc
  40e44e:      	mov	r1, r2
  40e450:      	mov	r2, r3
  40e452:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3a860a
  40e456:      	movs	r0, #0x0
  40e458:      	movs	r1, #0x0
  40e45a:      	movs	r2, #0xff
  40e45c:      	bl	0x408458 <_ZN6Tracer14checkCollisionEv+0x3cc> @ imm = #-0x6008
  40e460:      	mov	r2, r0
  40e462:      	add	r3, sp, #0x94
  40e464:      	mov	r1, r2
  40e466:      	strb	r1, [r3]
  40e468:      	ubfx	r1, r2, #0x8, #0x8
  40e46c:      	strb	r1, [r3, #0x1]
  40e46e:      	ubfx	r2, r2, #0x10, #0x8
  40e472:      	strb	r2, [r3, #0x2]
  40e474:      	add.w	r2, sp, #0x410
  40e478:      	add	r3, sp, #0x94
  40e47a:      	mov	r0, r5
  40e47c:      	mov	r1, r2
  40e47e:      	ldr	r2, [r3]
  40e480:      	movs	r3, #0x3
  40e482:      	bl	0x33d2c0 <_ZN3HUD10addMessageESsN7cocos2d10_ccColor3BEs> @ imm = #-0xd11c6
  40e486:      	add.w	r3, sp, #0x410
  40e48a:      	mov	r0, r3
  40e48c:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3a7484
  40e490:      	add.w	r3, sp, #0x400
  40e494:      	mov	r0, r3
  40e496:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x37bf62
  40e49a:      	ldr	r3, [pc, #0x1bc]        @ 0x40e658 <_ZN13TrainingStage8doLessonEf+0x4380>
  40e49c:      	ldr	r3, [r4, r3]
  40e49e:      	ldr	r3, [r3]
  40e4a0:      	mov	r0, r3
  40e4a2:      	movs	r1, #0x4d
  40e4a4:      	movs	r2, #0x1
  40e4a6:      	bl	0x3f7d40 <_ZN5Sound18playSoundWithVoiceEii> @ imm = #-0x1676a
  40e4aa:      	add	r3, sp, #0x1c
  40e4ac:      	ldr	r3, [r3]
  40e4ae:      	ldr.w	r3, [r3, #0x1a8]
  40e4b2:      	ldr.w	r3, [r3, #0x1ac]
  40e4b6:      	movs	r2, #0x0
  40e4b8:      	strb.w	r2, [r3, #0x11c]
  40e4bc:      	add	r3, sp, #0x1c
  40e4be:      	ldr	r3, [r3]
  40e4c0:      	ldr.w	r3, [r3, #0x1a8]
  40e4c4:      	ldr.w	r3, [r3, #0x1ac]
  40e4c8:      	ldr	r3, [r3]
  40e4ca:      	add.w	r3, r3, #0x230
  40e4ce:      	ldr	r4, [r3]
  40e4d0:      	add	r3, sp, #0x1c
  40e4d2:      	ldr	r3, [r3]
  40e4d4:      	ldr.w	r3, [r3, #0x1a8]
  40e4d8:      	ldr.w	r3, [r3, #0x1ac]
  40e4dc:      	mov	r5, r3
  40e4de:      	add	r3, sp, #0x1f0
  40e4e0:      	mov	r0, r3
  40e4e2:      	vldr	d0, [pc, #348]          @ 0x40e640 <_ZN13TrainingStage8doLessonEf+0x4368>
  40e4e6:      	vldr	d1, [pc, #344]          @ 0x40e640 <_ZN13TrainingStage8doLessonEf+0x4368>
  40e4ea:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x601a
  40e4ee:      	add	r3, sp, #0x1f0
  40e4f0:      	mov	r2, sp
  40e4f2:      	add.w	r1, r3, #0x8
  40e4f6:      	ldm	r1, {r0, r1}
  40e4f8:      	stm.w	r2, {r0, r1}
  40e4fc:      	ldm	r3, {r2, r3}
  40e4fe:      	mov	r0, r5
  40e500:      	blx	r4
  40e502:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x3a0e
  40e506:      	add	r3, sp, #0x1c
  40e508:      	ldr	r3, [r3]
  40e50a:      	ldr.w	r3, [r3, #0x1a8]
  40e50e:      	ldr.w	r3, [r3, #0x1ac]
  40e512:      	ldr	r3, [r3]
  40e514:      	add.w	r3, r3, #0x238
  40e518:      	ldr	r3, [r3]
  40e51a:      	add	r2, sp, #0x1c
  40e51c:      	ldr	r2, [r2]
  40e51e:      	ldr.w	r2, [r2, #0x1a8]
  40e522:      	ldr.w	r2, [r2, #0x1ac]
  40e526:      	mov	r0, r2
  40e528:      	mov.w	r1, #0x0
  40e52c:      	blx	r3
  40e52e:      	add	r3, sp, #0x1c
  40e530:      	ldr	r3, [r3]
  40e532:      	ldr.w	r3, [r3, #0x1a8]
  40e536:      	ldr.w	r3, [r3, #0x1a8]
  40e53a:      	ldr.w	r3, [r3, #0x114]
  40e53e:      	ldr	r3, [r3]
  40e540:      	adds	r3, #0x98
  40e542:      	ldr	r4, [r3]
  40e544:      	add	r3, sp, #0x1c
  40e546:      	ldr	r3, [r3]
  40e548:      	ldr.w	r3, [r3, #0x1a8]
  40e54c:      	ldr.w	r3, [r3, #0x1a8]
  40e550:      	ldr.w	r5, [r3, #0x114]
  40e554:      	add	r3, sp, #0x1c
  40e556:      	ldr	r3, [r3]
  40e558:      	vldr	s15, [r3, #392]
  40e55c:      	vadd.f32	s15, s15, s15
  40e560:      	vcvt.f64.f32	d7, s15
  40e564:      	vmov	r0, r1, d7
  40e568:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x138664
  40e56c:      	vmov	d6, r0, r1
  40e570:      	vmov.f64	d7, #8.000000e+00
  40e574:      	vmul.f64	d7, d6, d7
  40e578:      	vcvt.f32.f64	s15, d7
  40e57c:      	mov	r0, r5
  40e57e:      	vmov	r1, s15
  40e582:      	blx	r4
  40e584:      	add	r3, sp, #0x1c
  40e586:      	ldr	r3, [r3]
  40e588:      	ldr.w	r3, [r3, #0x1a8]
  40e58c:      	ldr.w	r3, [r3, #0x1a8]
  40e590:      	ldr.w	r3, [r3, #0x110]
  40e594:      	ldr	r3, [r3]
  40e596:      	adds	r3, #0x98
  40e598:      	ldr	r4, [r3]
  40e59a:      	add	r3, sp, #0x1c
  40e59c:      	ldr	r3, [r3]
  40e59e:      	ldr.w	r3, [r3, #0x1a8]
  40e5a2:      	ldr.w	r3, [r3, #0x1a8]
  40e5a6:      	ldr.w	r5, [r3, #0x110]
  40e5aa:      	add	r3, sp, #0x1c
  40e5ac:      	ldr	r3, [r3]
  40e5ae:      	vldr	s15, [r3, #392]
  40e5b2:      	vadd.f32	s15, s15, s15
  40e5b6:      	vcvt.f64.f32	d6, s15
  40e5ba:      	vldr	d7, [pc, #140]          @ 0x40e648 <_ZN13TrainingStage8doLessonEf+0x4370>
  40e5be:      	vadd.f64	d7, d6, d7
  40e5c2:      	vmov	r0, r1, d7
  40e5c6:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x1386c0
  40e5ca:      	vmov	d6, r0, r1
  40e5ce:      	vmov.f64	d7, #8.000000e+00
  40e5d2:      	vmul.f64	d7, d6, d7
  40e5d6:      	vcvt.f32.f64	s15, d7
  40e5da:      	mov	r0, r5
  40e5dc:      	vmov	r1, s15
  40e5e0:      	blx	r4
  40e5e2:      	add	r3, sp, #0x1c
  40e5e4:      	ldr	r3, [r3]
  40e5e6:      	ldr.w	r3, [r3, #0x1a8]
  40e5ea:      	ldr.w	r3, [r3, #0x1ac]
  40e5ee:      	movs	r2, #0x1
  40e5f0:      	strb.w	r2, [r3, #0x11c]
  40e5f4:      	add	r3, sp, #0x1c
  40e5f6:      	ldr	r3, [r3]
  40e5f8:      	ldr.w	r3, [r3, #0x1a8]
  40e5fc:      	ldr.w	r3, [r3, #0x1ac]
  40e600:      	ldr	r3, [r3]
  40e602:      	add.w	r3, r3, #0x230
  40e606:      	ldr	r4, [r3]
  40e608:      	add	r3, sp, #0x1c
  40e60a:      	ldr	r3, [r3]
  40e60c:      	ldr.w	r3, [r3, #0x1a8]
  40e610:      	ldr.w	r3, [r3, #0x1ac]
  40e614:      	mov	r5, r3
  40e616:      	add	r3, sp, #0x200
  40e618:      	mov	r0, r3
  40e61a:      	vmov.f64	d0, #7.500000e-01
  40e61e:      	vldr	d1, [pc, #32]           @ 0x40e640 <_ZN13TrainingStage8doLessonEf+0x4368>
  40e622:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x6152
  40e626:      	add	r3, sp, #0x200
  40e628:      	mov	r2, sp
  40e62a:      	add.w	r1, r3, #0x8
  40e62e:      	ldm	r1, {r0, r1}
  40e630:      	stm.w	r2, {r0, r1}
  40e634:      	ldm	r3, {r2, r3}
  40e636:      	mov	r0, r5
  40e638:      	blx	r4
  40e63a:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x38d6
// TrainingStage::doLesson  ghidra=0x41e668-0x41e935  elf=0x40e668-0x40e935  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  40e668:      	ldr	r3, [pc, #0x2d4]        @ 0x40e940 <_ZN13TrainingStage8doLessonEf+0x4668>
  40e66a:      	ldr	r3, [r4, r3]
  40e66c:      	ldr	r3, [r3]
  40e66e:      	ldr	r3, [r3]
  40e670:      	add.w	r3, r3, #0x2a4
  40e674:      	ldr	r3, [r3]
  40e676:      	ldr	r2, [pc, #0x2c8]        @ 0x40e940 <_ZN13TrainingStage8doLessonEf+0x4668>
  40e678:      	ldr	r2, [r4, r2]
  40e67a:      	ldr	r2, [r2]
  40e67c:      	mov	r0, r2
  40e67e:      	mov.w	r1, #0x0
  40e682:      	blx	r3
  40e684:      	add	r3, sp, #0x1c
  40e686:      	ldr	r3, [r3]
  40e688:      	ldr.w	r3, [r3, #0x1a8]
  40e68c:      	ldr.w	r3, [r3, #0x1ac]
  40e690:      	ldr	r3, [r3]
  40e692:      	add.w	r3, r3, #0x238
  40e696:      	ldr	r3, [r3]
  40e698:      	add	r2, sp, #0x1c
  40e69a:      	ldr	r2, [r2]
  40e69c:      	ldr.w	r2, [r2, #0x1a8]
  40e6a0:      	ldr.w	r2, [r2, #0x1ac]
  40e6a4:      	mov	r0, r2
  40e6a6:      	mov.w	r1, #0x0
  40e6aa:      	blx	r3
  40e6ac:      	add	r3, sp, #0x1c
  40e6ae:      	ldr	r3, [r3]
  40e6b0:      	ldr.w	r3, [r3, #0x1a8]
  40e6b4:      	ldr.w	r3, [r3, #0x1a8]
  40e6b8:      	ldr.w	r3, [r3, #0x114]
  40e6bc:      	ldr	r3, [r3]
  40e6be:      	adds	r3, #0x98
  40e6c0:      	ldr	r5, [r3]
  40e6c2:      	add	r3, sp, #0x1c
  40e6c4:      	ldr	r3, [r3]
  40e6c6:      	ldr.w	r3, [r3, #0x1a8]
  40e6ca:      	ldr.w	r3, [r3, #0x1a8]
  40e6ce:      	ldr.w	r6, [r3, #0x114]
  40e6d2:      	add	r3, sp, #0x1c
  40e6d4:      	ldr	r3, [r3]
  40e6d6:      	vldr	s15, [r3, #392]
  40e6da:      	vadd.f32	s15, s15, s15
  40e6de:      	vcvt.f64.f32	d7, s15
  40e6e2:      	vmov	r0, r1, d7
  40e6e6:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x1387e0
  40e6ea:      	vmov	d6, r0, r1
  40e6ee:      	vmov.f64	d7, #5.000000e+00
  40e6f2:      	vmul.f64	d6, d6, d7
  40e6f6:      	vmov.f64	d7, #1.000000e+01
  40e6fa:      	vadd.f64	d7, d6, d7
  40e6fe:      	vcvt.f32.f64	s15, d7
  40e702:      	mov	r0, r6
  40e704:      	vmov	r1, s15
  40e708:      	blx	r5
  40e70a:      	add	r3, sp, #0x1c
  40e70c:      	ldr	r3, [r3]
  40e70e:      	ldr.w	r3, [r3, #0x1a8]
  40e712:      	ldr.w	r3, [r3, #0x1a8]
  40e716:      	ldr.w	r3, [r3, #0x110]
  40e71a:      	ldr	r3, [r3]
  40e71c:      	adds	r3, #0x98
  40e71e:      	ldr	r5, [r3]
  40e720:      	add	r3, sp, #0x1c
  40e722:      	ldr	r3, [r3]
  40e724:      	ldr.w	r3, [r3, #0x1a8]
  40e728:      	ldr.w	r3, [r3, #0x1a8]
  40e72c:      	ldr.w	r6, [r3, #0x110]
  40e730:      	add	r3, sp, #0x1c
  40e732:      	ldr	r3, [r3]
  40e734:      	vldr	s15, [r3, #392]
  40e738:      	vadd.f32	s15, s15, s15
  40e73c:      	vcvt.f64.f32	d6, s15
  40e740:      	vldr	d7, [pc, #500]          @ 0x40e938 <_ZN13TrainingStage8doLessonEf+0x4660>
  40e744:      	vadd.f64	d7, d6, d7
  40e748:      	vmov	r0, r1, d7
  40e74c:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x138848
  40e750:      	vmov	d6, r0, r1
  40e754:      	vmov.f64	d7, #5.000000e+00
  40e758:      	vmul.f64	d6, d6, d7
  40e75c:      	vmov.f64	d7, #1.000000e+01
  40e760:      	vsub.f64	d7, d6, d7
  40e764:      	vcvt.f32.f64	s15, d7
  40e768:      	mov	r0, r6
  40e76a:      	vmov	r1, s15
  40e76e:      	blx	r5
  40e770:      	add	r3, sp, #0x1c
  40e772:      	ldr	r3, [r3]
  40e774:      	ldr.w	r3, [r3, #0x17c]
  40e778:      	ldr	r3, [r3]
  40e77a:      	add.w	r3, r3, #0x238
  40e77e:      	ldr	r3, [r3]
  40e780:      	add	r2, sp, #0x1c
  40e782:      	ldr	r2, [r2]
  40e784:      	ldr.w	r2, [r2, #0x17c]
  40e788:      	mov	r0, r2
  40e78a:      	mov.w	r1, #0x0
  40e78e:      	movt	r1, #0x435c
  40e792:      	blx	r3
  40e794:      	add	r3, sp, #0x1c
  40e796:      	ldr	r3, [r3]
  40e798:      	ldr.w	r3, [r3, #0x17c]
  40e79c:      	ldr	r3, [r3]
  40e79e:      	add.w	r3, r3, #0x1d8
  40e7a2:      	ldr	r3, [r3]
  40e7a4:      	add	r2, sp, #0x1c
  40e7a6:      	ldr	r2, [r2]
  40e7a8:      	ldr.w	r2, [r2, #0x17c]
  40e7ac:      	mov	r0, r2
  40e7ae:      	blx	r3
  40e7b0:      	mov	r3, r0
  40e7b2:      	ldr.w	r5, [r3, #0x114]
  40e7b6:      	ldr	r3, [r5]
  40e7b8:      	adds	r3, #0x98
  40e7ba:      	ldr	r6, [r3]
  40e7bc:      	add	r3, sp, #0x1c
  40e7be:      	ldr	r3, [r3]
  40e7c0:      	vldr	s15, [r3, #392]
  40e7c4:      	vadd.f32	s15, s15, s15
  40e7c8:      	vcvt.f64.f32	d7, s15
  40e7cc:      	vmov	r0, r1, d7
  40e7d0:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x1388cc
  40e7d4:      	vmov	d6, r0, r1
  40e7d8:      	vmov.f64	d7, #5.000000e+00
  40e7dc:      	vmul.f64	d6, d6, d7
  40e7e0:      	vmov.f64	d7, #1.000000e+01
  40e7e4:      	vadd.f64	d7, d6, d7
  40e7e8:      	vcvt.f32.f64	s15, d7
  40e7ec:      	mov	r0, r5
  40e7ee:      	vmov	r1, s15
  40e7f2:      	blx	r6
  40e7f4:      	add	r3, sp, #0x1c
  40e7f6:      	ldr	r3, [r3]
  40e7f8:      	ldr.w	r3, [r3, #0x17c]
  40e7fc:      	ldr	r3, [r3]
  40e7fe:      	add.w	r3, r3, #0x1d8
  40e802:      	ldr	r3, [r3]
  40e804:      	add	r2, sp, #0x1c
  40e806:      	ldr	r2, [r2]
  40e808:      	ldr.w	r2, [r2, #0x17c]
  40e80c:      	mov	r0, r2
  40e80e:      	blx	r3
  40e810:      	mov	r3, r0
  40e812:      	ldr.w	r5, [r3, #0x110]
  40e816:      	ldr	r3, [r5]
  40e818:      	adds	r3, #0x98
  40e81a:      	ldr	r6, [r3]
  40e81c:      	add	r3, sp, #0x1c
  40e81e:      	ldr	r3, [r3]
  40e820:      	vldr	s15, [r3, #392]
  40e824:      	vadd.f32	s15, s15, s15
  40e828:      	vcvt.f64.f32	d6, s15
  40e82c:      	vldr	d7, [pc, #264]          @ 0x40e938 <_ZN13TrainingStage8doLessonEf+0x4660>
  40e830:      	vadd.f64	d7, d6, d7
  40e834:      	vmov	r0, r1, d7
  40e838:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x138934
  40e83c:      	vmov	d6, r0, r1
  40e840:      	vmov.f64	d7, #5.000000e+00
  40e844:      	vmul.f64	d6, d6, d7
  40e848:      	vmov.f64	d7, #1.000000e+01
  40e84c:      	vsub.f64	d7, d6, d7
  40e850:      	vcvt.f32.f64	s15, d7
  40e854:      	mov	r0, r5
  40e856:      	vmov	r1, s15
  40e85a:      	blx	r6
  40e85c:      	add	r3, sp, #0x1c
  40e85e:      	ldr	r3, [r3]
  40e860:      	vldr	s14, [r3, #392]
  40e864:      	vmov.f32	s15, #2.000000e+00
  40e868:      	vcmpe.f32	s14, s15
  40e86c:      	vmrs	APSR_nzcv, fpscr
  40e870:      	bpl	0x40e87e <_ZN13TrainingStage8doLessonEf+0x45a6> @ imm = #0xa
  40e872:      	add	r2, sp, #0x1c
  40e874:      	add	r3, sp, #0x18
  40e876:      	ldr	r0, [r2]
  40e878:      	ldr	r1, [r3]
  40e87a:      	bl	0x409e30 <_ZN13TrainingStage11headChatterEf> @ imm = #-0x4a4e
  40e87e:      	add	r3, sp, #0x1c
  40e880:      	ldr	r3, [r3]
  40e882:      	vldr	s14, [r3, #392]
  40e886:      	vmov.f32	s15, #3.000000e+00
  40e88a:      	vcmpe.f32	s14, s15
  40e88e:      	vmrs	APSR_nzcv, fpscr
  40e892:      	bgt	0x40e898 <_ZN13TrainingStage8doLessonEf+0x45c0> @ imm = #0x2
  40e894:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x367c
  40e898:      	add	r3, sp, #0x1c
  40e89a:      	ldr	r3, [r3]
  40e89c:      	ldr.w	r3, [r3, #0x180]
  40e8a0:      	adds	r2, r3, #0x1
  40e8a2:      	add	r3, sp, #0x1c
  40e8a4:      	ldr	r3, [r3]
  40e8a6:      	str.w	r2, [r3, #0x180]
  40e8aa:      	add	r3, sp, #0x1c
  40e8ac:      	ldr	r3, [r3]
  40e8ae:      	mov.w	r2, #0x0
  40e8b2:      	str.w	r2, [r3, #0x188]
  40e8b6:      	add	r3, sp, #0x1c
  40e8b8:      	ldr	r3, [r3]
  40e8ba:      	ldr.w	r5, [r3, #0x10c]
  40e8be:      	add.w	r3, sp, #0x400
  40e8c2:      	mov	r0, r3
  40e8c4:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x37bb2c
  40e8c8:      	add.w	r2, sp, #0x410
  40e8cc:      	add.w	r3, sp, #0x400
  40e8d0:      	mov	r0, r2
  40e8d2:      	ldr	r2, [pc, #0x70]         @ 0x40e944 <_ZN13TrainingStage8doLessonEf+0x466c>
  40e8d4:      	add	r2, pc
  40e8d6:      	mov	r1, r2
  40e8d8:      	mov	r2, r3
  40e8da:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3a8182
  40e8de:      	movs	r0, #0x0
  40e8e0:      	movs	r1, #0x0
  40e8e2:      	movs	r2, #0xff
  40e8e4:      	bl	0x408458 <_ZN6Tracer14checkCollisionEv+0x3cc> @ imm = #-0x6490
  40e8e8:      	mov	r2, r0
  40e8ea:      	add	r3, sp, #0x98
  40e8ec:      	mov	r1, r2
  40e8ee:      	strb	r1, [r3]
  40e8f0:      	ubfx	r1, r2, #0x8, #0x8
  40e8f4:      	strb	r1, [r3, #0x1]
  40e8f6:      	ubfx	r2, r2, #0x10, #0x8
  40e8fa:      	strb	r2, [r3, #0x2]
  40e8fc:      	add.w	r2, sp, #0x410
  40e900:      	add	r3, sp, #0x98
  40e902:      	mov	r0, r5
  40e904:      	mov	r1, r2
  40e906:      	ldr	r2, [r3]
  40e908:      	movs	r3, #0x3
  40e90a:      	bl	0x33d2c0 <_ZN3HUD10addMessageESsN7cocos2d10_ccColor3BEs> @ imm = #-0xd164e
  40e90e:      	add.w	r3, sp, #0x410
  40e912:      	mov	r0, r3
  40e914:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3a6ffc
  40e918:      	add.w	r3, sp, #0x400
  40e91c:      	mov	r0, r3
  40e91e:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x37bada
  40e922:      	ldr	r3, [pc, #0x24]         @ 0x40e948 <_ZN13TrainingStage8doLessonEf+0x4670>
  40e924:      	ldr	r3, [r4, r3]
  40e926:      	ldr	r3, [r3]
  40e928:      	mov	r0, r3
  40e92a:      	movs	r1, #0x4e
  40e92c:      	movs	r2, #0x1
  40e92e:      	bl	0x3f7d40 <_ZN5Sound18playSoundWithVoiceEii> @ imm = #-0x16bf2
  40e932:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x35de
// TrainingStage::doLesson  ghidra=0x41e94c-0x41ec2d  elf=0x40e94c-0x40ec2d  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  40e94c:      	ldr	r3, [pc, #0x2e8]        @ 0x40ec38 <_ZN13TrainingStage8doLessonEf+0x4960>
  40e94e:      	ldr	r3, [r4, r3]
  40e950:      	ldr	r3, [r3]
  40e952:      	ldr	r3, [r3]
  40e954:      	add.w	r3, r3, #0x2a4
  40e958:      	ldr	r3, [r3]
  40e95a:      	ldr	r2, [pc, #0x2dc]        @ 0x40ec38 <_ZN13TrainingStage8doLessonEf+0x4960>
  40e95c:      	ldr	r2, [r4, r2]
  40e95e:      	ldr	r2, [r2]
  40e960:      	mov	r0, r2
  40e962:      	mov.w	r1, #0x0
  40e966:      	blx	r3
  40e968:      	add	r3, sp, #0x1c
  40e96a:      	ldr	r3, [r3]
  40e96c:      	ldr.w	r3, [r3, #0x1a8]
  40e970:      	ldr.w	r3, [r3, #0x1ac]
  40e974:      	ldr	r3, [r3]
  40e976:      	add.w	r3, r3, #0x238
  40e97a:      	ldr	r3, [r3]
  40e97c:      	add	r2, sp, #0x1c
  40e97e:      	ldr	r2, [r2]
  40e980:      	ldr.w	r2, [r2, #0x1a8]
  40e984:      	ldr.w	r2, [r2, #0x1ac]
  40e988:      	mov	r0, r2
  40e98a:      	mov.w	r1, #0x0
  40e98e:      	blx	r3
  40e990:      	add	r3, sp, #0x1c
  40e992:      	ldr	r3, [r3]
  40e994:      	ldr.w	r3, [r3, #0x1a8]
  40e998:      	ldr.w	r3, [r3, #0x1a8]
  40e99c:      	ldr.w	r3, [r3, #0x114]
  40e9a0:      	ldr	r3, [r3]
  40e9a2:      	adds	r3, #0x98
  40e9a4:      	ldr	r5, [r3]
  40e9a6:      	add	r3, sp, #0x1c
  40e9a8:      	ldr	r3, [r3]
  40e9aa:      	ldr.w	r3, [r3, #0x1a8]
  40e9ae:      	ldr.w	r3, [r3, #0x1a8]
  40e9b2:      	ldr.w	r6, [r3, #0x114]
  40e9b6:      	add	r3, sp, #0x1c
  40e9b8:      	ldr	r3, [r3]
  40e9ba:      	vldr	s15, [r3, #392]
  40e9be:      	vcvt.f64.f32	d7, s15
  40e9c2:      	vmov	r0, r1, d7
  40e9c6:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x138ac0
  40e9ca:      	vmov	d6, r0, r1
  40e9ce:      	vmov.f64	d7, #5.000000e+00
  40e9d2:      	vmul.f64	d6, d6, d7
  40e9d6:      	vmov.f64	d7, #1.000000e+01
  40e9da:      	vsub.f64	d7, d6, d7
  40e9de:      	vcvt.f32.f64	s15, d7
  40e9e2:      	mov	r0, r6
  40e9e4:      	vmov	r1, s15
  40e9e8:      	blx	r5
  40e9ea:      	add	r3, sp, #0x1c
  40e9ec:      	ldr	r3, [r3]
  40e9ee:      	ldr.w	r3, [r3, #0x1a8]
  40e9f2:      	ldr.w	r3, [r3, #0x1a8]
  40e9f6:      	ldr.w	r3, [r3, #0x110]
  40e9fa:      	ldr	r3, [r3]
  40e9fc:      	adds	r3, #0x98
  40e9fe:      	ldr	r5, [r3]
  40ea00:      	add	r3, sp, #0x1c
  40ea02:      	ldr	r3, [r3]
  40ea04:      	ldr.w	r3, [r3, #0x1a8]
  40ea08:      	ldr.w	r3, [r3, #0x1a8]
  40ea0c:      	ldr.w	r6, [r3, #0x110]
  40ea10:      	add	r3, sp, #0x1c
  40ea12:      	ldr	r3, [r3]
  40ea14:      	vldr	s15, [r3, #392]
  40ea18:      	vcvt.f64.f32	d6, s15
  40ea1c:      	vldr	d7, [pc, #528]          @ 0x40ec30 <_ZN13TrainingStage8doLessonEf+0x4958>
  40ea20:      	vadd.f64	d7, d6, d7
  40ea24:      	vmov	r0, r1, d7
  40ea28:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x138b24
  40ea2c:      	vmov	d6, r0, r1
  40ea30:      	vmov.f64	d7, #5.000000e+00
  40ea34:      	vmul.f64	d6, d6, d7
  40ea38:      	vmov.f64	d7, #1.000000e+01
  40ea3c:      	vadd.f64	d7, d6, d7
  40ea40:      	vcvt.f32.f64	s15, d7
  40ea44:      	mov	r0, r6
  40ea46:      	vmov	r1, s15
  40ea4a:      	blx	r5
  40ea4c:      	add	r3, sp, #0x1c
  40ea4e:      	ldr	r3, [r3]
  40ea50:      	ldr.w	r3, [r3, #0x17c]
  40ea54:      	ldr	r3, [r3]
  40ea56:      	add.w	r3, r3, #0x238
  40ea5a:      	ldr	r3, [r3]
  40ea5c:      	add	r2, sp, #0x1c
  40ea5e:      	ldr	r2, [r2]
  40ea60:      	ldr.w	r2, [r2, #0x17c]
  40ea64:      	mov	r0, r2
  40ea66:      	mov.w	r1, #0x0
  40ea6a:      	movt	r1, #0x435c
  40ea6e:      	blx	r3
  40ea70:      	add	r3, sp, #0x1c
  40ea72:      	ldr	r3, [r3]
  40ea74:      	ldr.w	r3, [r3, #0x17c]
  40ea78:      	ldr	r3, [r3]
  40ea7a:      	add.w	r3, r3, #0x1d8
  40ea7e:      	ldr	r3, [r3]
  40ea80:      	add	r2, sp, #0x1c
  40ea82:      	ldr	r2, [r2]
  40ea84:      	ldr.w	r2, [r2, #0x17c]
  40ea88:      	mov	r0, r2
  40ea8a:      	blx	r3
  40ea8c:      	mov	r3, r0
  40ea8e:      	ldr.w	r5, [r3, #0x114]
  40ea92:      	ldr	r3, [r5]
  40ea94:      	adds	r3, #0x98
  40ea96:      	ldr	r6, [r3]
  40ea98:      	add	r3, sp, #0x1c
  40ea9a:      	ldr	r3, [r3]
  40ea9c:      	vldr	s15, [r3, #392]
  40eaa0:      	vcvt.f64.f32	d7, s15
  40eaa4:      	vmov	r0, r1, d7
  40eaa8:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x138ba4
  40eaac:      	vmov	d6, r0, r1
  40eab0:      	vmov.f64	d7, #5.000000e+00
  40eab4:      	vmul.f64	d6, d6, d7
  40eab8:      	vmov.f64	d7, #1.000000e+01
  40eabc:      	vsub.f64	d7, d6, d7
  40eac0:      	vcvt.f32.f64	s15, d7
  40eac4:      	mov	r0, r5
  40eac6:      	vmov	r1, s15
  40eaca:      	blx	r6
  40eacc:      	add	r3, sp, #0x1c
  40eace:      	ldr	r3, [r3]
  40ead0:      	ldr.w	r3, [r3, #0x17c]
  40ead4:      	ldr	r3, [r3]
  40ead6:      	add.w	r3, r3, #0x1d8
  40eada:      	ldr	r3, [r3]
  40eadc:      	add	r2, sp, #0x1c
  40eade:      	ldr	r2, [r2]
  40eae0:      	ldr.w	r2, [r2, #0x17c]
  40eae4:      	mov	r0, r2
  40eae6:      	blx	r3
  40eae8:      	mov	r3, r0
  40eaea:      	ldr.w	r5, [r3, #0x110]
  40eaee:      	ldr	r3, [r5]
  40eaf0:      	adds	r3, #0x98
  40eaf2:      	ldr	r6, [r3]
  40eaf4:      	add	r3, sp, #0x1c
  40eaf6:      	ldr	r3, [r3]
  40eaf8:      	vldr	s15, [r3, #392]
  40eafc:      	vcvt.f64.f32	d6, s15
  40eb00:      	vldr	d7, [pc, #300]          @ 0x40ec30 <_ZN13TrainingStage8doLessonEf+0x4958>
  40eb04:      	vadd.f64	d7, d6, d7
  40eb08:      	vmov	r0, r1, d7
  40eb0c:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x138c08
  40eb10:      	vmov	d6, r0, r1
  40eb14:      	vmov.f64	d7, #5.000000e+00
  40eb18:      	vmul.f64	d7, d6, d7
  40eb1c:      	vcvt.f32.f64	s15, d7
  40eb20:      	mov	r0, r5
  40eb22:      	vmov	r1, s15
  40eb26:      	blx	r6
  40eb28:      	add	r3, sp, #0x1c
  40eb2a:      	ldr	r3, [r3]
  40eb2c:      	ldr.w	r3, [r3, #0x17c]
  40eb30:      	ldr	r3, [r3]
  40eb32:      	add.w	r3, r3, #0x19c
  40eb36:      	ldr	r3, [r3]
  40eb38:      	add	r2, sp, #0x1c
  40eb3a:      	ldr	r2, [r2]
  40eb3c:      	ldr.w	r2, [r2, #0x17c]
  40eb40:      	mov	r0, r2
  40eb42:      	movs	r1, #0x1
  40eb44:      	blx	r3
  40eb46:      	add	r3, sp, #0x1c
  40eb48:      	ldr	r3, [r3]
  40eb4a:      	ldr.w	r3, [r3, #0x17c]
  40eb4e:      	movs	r2, #0x1
  40eb50:      	strb.w	r2, [r3, #0x11c]
  40eb54:      	add	r3, sp, #0x1c
  40eb56:      	ldr	r3, [r3]
  40eb58:      	vldr	s14, [r3, #392]
  40eb5c:      	vmov.f32	s15, #2.000000e+00
  40eb60:      	vcmpe.f32	s14, s15
  40eb64:      	vmrs	APSR_nzcv, fpscr
  40eb68:      	bpl	0x40eb76 <_ZN13TrainingStage8doLessonEf+0x489e> @ imm = #0xa
  40eb6a:      	add	r2, sp, #0x1c
  40eb6c:      	add	r3, sp, #0x18
  40eb6e:      	ldr	r0, [r2]
  40eb70:      	ldr	r1, [r3]
  40eb72:      	bl	0x409e30 <_ZN13TrainingStage11headChatterEf> @ imm = #-0x4d46
  40eb76:      	add	r3, sp, #0x1c
  40eb78:      	ldr	r3, [r3]
  40eb7a:      	vldr	s14, [r3, #392]
  40eb7e:      	vmov.f32	s15, #3.000000e+00
  40eb82:      	vcmpe.f32	s14, s15
  40eb86:      	vmrs	APSR_nzcv, fpscr
  40eb8a:      	bgt	0x40eb90 <_ZN13TrainingStage8doLessonEf+0x48b8> @ imm = #0x2
  40eb8c:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x3384
  40eb90:      	add	r3, sp, #0x1c
  40eb92:      	ldr	r3, [r3]
  40eb94:      	ldr.w	r3, [r3, #0x180]
  40eb98:      	adds	r2, r3, #0x1
  40eb9a:      	add	r3, sp, #0x1c
  40eb9c:      	ldr	r3, [r3]
  40eb9e:      	str.w	r2, [r3, #0x180]
  40eba2:      	add	r3, sp, #0x1c
  40eba4:      	ldr	r3, [r3]
  40eba6:      	mov.w	r2, #0x0
  40ebaa:      	str.w	r2, [r3, #0x188]
  40ebae:      	add	r3, sp, #0x1c
  40ebb0:      	ldr	r3, [r3]
  40ebb2:      	ldr.w	r5, [r3, #0x10c]
  40ebb6:      	add.w	r3, sp, #0x400
  40ebba:      	mov	r0, r3
  40ebbc:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x37b834
  40ebc0:      	add.w	r2, sp, #0x410
  40ebc4:      	add.w	r3, sp, #0x400
  40ebc8:      	mov	r0, r2
  40ebca:      	ldr	r2, [pc, #0x70]         @ 0x40ec3c <_ZN13TrainingStage8doLessonEf+0x4964>
  40ebcc:      	add	r2, pc
  40ebce:      	mov	r1, r2
  40ebd0:      	mov	r2, r3
  40ebd2:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3a7e8a
  40ebd6:      	movs	r0, #0x0
  40ebd8:      	movs	r1, #0x0
  40ebda:      	movs	r2, #0xff
  40ebdc:      	bl	0x408458 <_ZN6Tracer14checkCollisionEv+0x3cc> @ imm = #-0x6788
  40ebe0:      	mov	r2, r0
  40ebe2:      	add	r3, sp, #0x9c
  40ebe4:      	mov	r1, r2
  40ebe6:      	strb	r1, [r3]
  40ebe8:      	ubfx	r1, r2, #0x8, #0x8
  40ebec:      	strb	r1, [r3, #0x1]
  40ebee:      	ubfx	r2, r2, #0x10, #0x8
  40ebf2:      	strb	r2, [r3, #0x2]
  40ebf4:      	add.w	r2, sp, #0x410
  40ebf8:      	add	r3, sp, #0x9c
  40ebfa:      	mov	r0, r5
  40ebfc:      	mov	r1, r2
  40ebfe:      	ldr	r2, [r3]
  40ec00:      	movs	r3, #0x3
  40ec02:      	bl	0x33d2c0 <_ZN3HUD10addMessageESsN7cocos2d10_ccColor3BEs> @ imm = #-0xd1946
  40ec06:      	add.w	r3, sp, #0x410
  40ec0a:      	mov	r0, r3
  40ec0c:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3a6d04
  40ec10:      	add.w	r3, sp, #0x400
  40ec14:      	mov	r0, r3
  40ec16:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x37b7e2
  40ec1a:      	ldr	r3, [pc, #0x24]         @ 0x40ec40 <_ZN13TrainingStage8doLessonEf+0x4968>
  40ec1c:      	ldr	r3, [r4, r3]
  40ec1e:      	ldr	r3, [r3]
  40ec20:      	mov	r0, r3
  40ec22:      	movs	r1, #0x4f
  40ec24:      	movs	r2, #0x1
  40ec26:      	bl	0x3f7d40 <_ZN5Sound18playSoundWithVoiceEii> @ imm = #-0x16eea
  40ec2a:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x32e6
// TrainingStage::doLesson  ghidra=0x41ec44-0x41ef39  elf=0x40ec44-0x40ef39  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  40ec44:      	ldr	r3, [pc, #0x300]        @ 0x40ef48 <_ZN13TrainingStage8doLessonEf+0x4c70>
  40ec46:      	ldr	r3, [r4, r3]
  40ec48:      	ldr	r3, [r3]
  40ec4a:      	ldr	r3, [r3]
  40ec4c:      	add.w	r3, r3, #0x2a4
  40ec50:      	ldr	r3, [r3]
  40ec52:      	ldr	r2, [pc, #0x2f4]        @ 0x40ef48 <_ZN13TrainingStage8doLessonEf+0x4c70>
  40ec54:      	ldr	r2, [r4, r2]
  40ec56:      	ldr	r2, [r2]
  40ec58:      	mov	r0, r2
  40ec5a:      	mov.w	r1, #0x0
  40ec5e:      	blx	r3
  40ec60:      	add	r3, sp, #0x1c
  40ec62:      	ldr	r3, [r3]
  40ec64:      	ldr.w	r3, [r3, #0x1a8]
  40ec68:      	ldr.w	r3, [r3, #0x1ac]
  40ec6c:      	ldr	r3, [r3]
  40ec6e:      	add.w	r3, r3, #0x238
  40ec72:      	ldr	r3, [r3]
  40ec74:      	add	r2, sp, #0x1c
  40ec76:      	ldr	r2, [r2]
  40ec78:      	ldr.w	r2, [r2, #0x1a8]
  40ec7c:      	ldr.w	r2, [r2, #0x1ac]
  40ec80:      	mov	r0, r2
  40ec82:      	mov.w	r1, #0x0
  40ec86:      	blx	r3
  40ec88:      	add	r3, sp, #0x1c
  40ec8a:      	ldr	r3, [r3]
  40ec8c:      	ldr.w	r3, [r3, #0x1a8]
  40ec90:      	ldr.w	r3, [r3, #0x1a8]
  40ec94:      	ldr.w	r3, [r3, #0x114]
  40ec98:      	ldr	r3, [r3]
  40ec9a:      	adds	r3, #0x98
  40ec9c:      	ldr	r5, [r3]
  40ec9e:      	add	r3, sp, #0x1c
  40eca0:      	ldr	r3, [r3]
  40eca2:      	ldr.w	r3, [r3, #0x1a8]
  40eca6:      	ldr.w	r3, [r3, #0x1a8]
  40ecaa:      	ldr.w	r6, [r3, #0x114]
  40ecae:      	add	r3, sp, #0x1c
  40ecb0:      	ldr	r3, [r3]
  40ecb2:      	vldr	s15, [r3, #392]
  40ecb6:      	vcvt.f64.f32	d7, s15
  40ecba:      	vmov	r0, r1, d7
  40ecbe:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x138db8
  40ecc2:      	vmov	d6, r0, r1
  40ecc6:      	vmov.f64	d7, #5.000000e+00
  40ecca:      	vmul.f64	d6, d6, d7
  40ecce:      	vmov.f64	d7, #1.000000e+01
  40ecd2:      	vsub.f64	d7, d6, d7
  40ecd6:      	vcvt.f32.f64	s15, d7
  40ecda:      	mov	r0, r6
  40ecdc:      	vmov	r1, s15
  40ece0:      	blx	r5
  40ece2:      	add	r3, sp, #0x1c
  40ece4:      	ldr	r3, [r3]
  40ece6:      	ldr.w	r3, [r3, #0x1a8]
  40ecea:      	ldr.w	r3, [r3, #0x1a8]
  40ecee:      	ldr.w	r3, [r3, #0x110]
  40ecf2:      	ldr	r3, [r3]
  40ecf4:      	adds	r3, #0x98
  40ecf6:      	ldr	r5, [r3]
  40ecf8:      	add	r3, sp, #0x1c
  40ecfa:      	ldr	r3, [r3]
  40ecfc:      	ldr.w	r3, [r3, #0x1a8]
  40ed00:      	ldr.w	r3, [r3, #0x1a8]
  40ed04:      	ldr.w	r6, [r3, #0x110]
  40ed08:      	add	r3, sp, #0x1c
  40ed0a:      	ldr	r3, [r3]
  40ed0c:      	vldr	s15, [r3, #392]
  40ed10:      	vcvt.f64.f32	d6, s15
  40ed14:      	vldr	d7, [pc, #552]          @ 0x40ef40 <_ZN13TrainingStage8doLessonEf+0x4c68>
  40ed18:      	vadd.f64	d7, d6, d7
  40ed1c:      	vmov	r0, r1, d7
  40ed20:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x138e1c
  40ed24:      	vmov	d6, r0, r1
  40ed28:      	vmov.f64	d7, #5.000000e+00
  40ed2c:      	vmul.f64	d6, d6, d7
  40ed30:      	vmov.f64	d7, #1.000000e+01
  40ed34:      	vadd.f64	d7, d6, d7
  40ed38:      	vcvt.f32.f64	s15, d7
  40ed3c:      	mov	r0, r6
  40ed3e:      	vmov	r1, s15
  40ed42:      	blx	r5
  40ed44:      	add	r3, sp, #0x1c
  40ed46:      	ldr	r3, [r3]
  40ed48:      	ldr.w	r3, [r3, #0x17c]
  40ed4c:      	ldr	r3, [r3]
  40ed4e:      	add.w	r3, r3, #0x238
  40ed52:      	ldr	r3, [r3]
  40ed54:      	add	r2, sp, #0x1c
  40ed56:      	ldr	r2, [r2]
  40ed58:      	ldr.w	r2, [r2, #0x17c]
  40ed5c:      	mov	r0, r2
  40ed5e:      	mov.w	r1, #0x0
  40ed62:      	movt	r1, #0x435c
  40ed66:      	blx	r3
  40ed68:      	add	r3, sp, #0x1c
  40ed6a:      	ldr	r3, [r3]
  40ed6c:      	ldr.w	r3, [r3, #0x17c]
  40ed70:      	ldr	r3, [r3]
  40ed72:      	add.w	r3, r3, #0x1d8
  40ed76:      	ldr	r3, [r3]
  40ed78:      	add	r2, sp, #0x1c
  40ed7a:      	ldr	r2, [r2]
  40ed7c:      	ldr.w	r2, [r2, #0x17c]
  40ed80:      	mov	r0, r2
  40ed82:      	blx	r3
  40ed84:      	mov	r3, r0
  40ed86:      	ldr.w	r5, [r3, #0x114]
  40ed8a:      	ldr	r3, [r5]
  40ed8c:      	adds	r3, #0x98
  40ed8e:      	ldr	r6, [r3]
  40ed90:      	add	r3, sp, #0x1c
  40ed92:      	ldr	r3, [r3]
  40ed94:      	vldr	s15, [r3, #392]
  40ed98:      	vcvt.f64.f32	d7, s15
  40ed9c:      	vmov	r0, r1, d7
  40eda0:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x138e9c
  40eda4:      	vmov	d6, r0, r1
  40eda8:      	vmov.f64	d7, #5.000000e+00
  40edac:      	vmul.f64	d6, d6, d7
  40edb0:      	vmov.f64	d7, #1.000000e+01
  40edb4:      	vsub.f64	d7, d6, d7
  40edb8:      	vcvt.f32.f64	s15, d7
  40edbc:      	mov	r0, r5
  40edbe:      	vmov	r1, s15
  40edc2:      	blx	r6
  40edc4:      	add	r3, sp, #0x1c
  40edc6:      	ldr	r3, [r3]
  40edc8:      	ldr.w	r3, [r3, #0x17c]
  40edcc:      	ldr	r3, [r3]
  40edce:      	add.w	r3, r3, #0x1d8
  40edd2:      	ldr	r3, [r3]
  40edd4:      	add	r2, sp, #0x1c
  40edd6:      	ldr	r2, [r2]
  40edd8:      	ldr.w	r2, [r2, #0x17c]
  40eddc:      	mov	r0, r2
  40edde:      	blx	r3
  40ede0:      	mov	r3, r0
  40ede2:      	ldr.w	r5, [r3, #0x110]
  40ede6:      	ldr	r3, [r5]
  40ede8:      	adds	r3, #0x98
  40edea:      	ldr	r6, [r3]
  40edec:      	add	r3, sp, #0x1c
  40edee:      	ldr	r3, [r3]
  40edf0:      	vldr	s15, [r3, #392]
  40edf4:      	vcvt.f64.f32	d6, s15
  40edf8:      	vldr	d7, [pc, #324]          @ 0x40ef40 <_ZN13TrainingStage8doLessonEf+0x4c68>
  40edfc:      	vadd.f64	d7, d6, d7
  40ee00:      	vmov	r0, r1, d7
  40ee04:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x138f00
  40ee08:      	vmov	d6, r0, r1
  40ee0c:      	vmov.f64	d7, #5.000000e+00
  40ee10:      	vmul.f64	d7, d6, d7
  40ee14:      	vcvt.f32.f64	s15, d7
  40ee18:      	mov	r0, r5
  40ee1a:      	vmov	r1, s15
  40ee1e:      	blx	r6
  40ee20:      	add	r3, sp, #0x1c
  40ee22:      	ldr	r3, [r3]
  40ee24:      	ldr.w	r3, [r3, #0x17c]
  40ee28:      	ldr	r3, [r3]
  40ee2a:      	add.w	r3, r3, #0x19c
  40ee2e:      	ldr	r3, [r3]
  40ee30:      	add	r2, sp, #0x1c
  40ee32:      	ldr	r2, [r2]
  40ee34:      	ldr.w	r2, [r2, #0x17c]
  40ee38:      	mov	r0, r2
  40ee3a:      	movs	r1, #0x1
  40ee3c:      	blx	r3
  40ee3e:      	add	r3, sp, #0x1c
  40ee40:      	ldr	r3, [r3]
  40ee42:      	ldr.w	r3, [r3, #0x17c]
  40ee46:      	movs	r2, #0x1
  40ee48:      	strb.w	r2, [r3, #0x11c]
  40ee4c:      	add	r3, sp, #0x1c
  40ee4e:      	ldr	r3, [r3]
  40ee50:      	vldr	s14, [r3, #392]
  40ee54:      	vmov.f32	s15, #2.000000e+00
  40ee58:      	vcmpe.f32	s14, s15
  40ee5c:      	vmrs	APSR_nzcv, fpscr
  40ee60:      	bpl	0x40ee6e <_ZN13TrainingStage8doLessonEf+0x4b96> @ imm = #0xa
  40ee62:      	add	r2, sp, #0x1c
  40ee64:      	add	r3, sp, #0x18
  40ee66:      	ldr	r0, [r2]
  40ee68:      	ldr	r1, [r3]
  40ee6a:      	bl	0x409e30 <_ZN13TrainingStage11headChatterEf> @ imm = #-0x503e
  40ee6e:      	add	r3, sp, #0x1c
  40ee70:      	ldr	r3, [r3]
  40ee72:      	vldr	s14, [r3, #392]
  40ee76:      	vmov.f32	s15, #3.000000e+00
  40ee7a:      	vcmpe.f32	s14, s15
  40ee7e:      	vmrs	APSR_nzcv, fpscr
  40ee82:      	bgt	0x40ee88 <_ZN13TrainingStage8doLessonEf+0x4bb0> @ imm = #0x2
  40ee84:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x308c
  40ee88:      	add	r3, sp, #0x1c
  40ee8a:      	ldr	r3, [r3]
  40ee8c:      	ldr.w	r3, [r3, #0x180]
  40ee90:      	adds	r2, r3, #0x1
  40ee92:      	add	r3, sp, #0x1c
  40ee94:      	ldr	r3, [r3]
  40ee96:      	str.w	r2, [r3, #0x180]
  40ee9a:      	add	r3, sp, #0x1c
  40ee9c:      	ldr	r3, [r3]
  40ee9e:      	mov.w	r2, #0x0
  40eea2:      	str.w	r2, [r3, #0x188]
  40eea6:      	add	r3, sp, #0x1c
  40eea8:      	ldr	r3, [r3]
  40eeaa:      	ldr.w	r5, [r3, #0x10c]
  40eeae:      	add.w	r3, sp, #0x400
  40eeb2:      	mov	r0, r3
  40eeb4:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x37b53c
  40eeb8:      	add.w	r2, sp, #0x410
  40eebc:      	add.w	r3, sp, #0x400
  40eec0:      	mov	r0, r2
  40eec2:      	ldr	r2, [pc, #0x88]         @ 0x40ef4c <_ZN13TrainingStage8doLessonEf+0x4c74>
  40eec4:      	add	r2, pc
  40eec6:      	mov	r1, r2
  40eec8:      	mov	r2, r3
  40eeca:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3a7b92
  40eece:      	movs	r0, #0x0
  40eed0:      	movs	r1, #0x0
  40eed2:      	movs	r2, #0xff
  40eed4:      	bl	0x408458 <_ZN6Tracer14checkCollisionEv+0x3cc> @ imm = #-0x6a80
  40eed8:      	mov	r2, r0
  40eeda:      	add	r3, sp, #0xa0
  40eedc:      	mov	r1, r2
  40eede:      	strb	r1, [r3]
  40eee0:      	ubfx	r1, r2, #0x8, #0x8
  40eee4:      	strb	r1, [r3, #0x1]
  40eee6:      	ubfx	r2, r2, #0x10, #0x8
  40eeea:      	strb	r2, [r3, #0x2]
  40eeec:      	add.w	r2, sp, #0x410
  40eef0:      	add	r3, sp, #0xa0
  40eef2:      	mov	r0, r5
  40eef4:      	mov	r1, r2
  40eef6:      	ldr	r2, [r3]
  40eef8:      	movs	r3, #0x3
  40eefa:      	bl	0x33d2c0 <_ZN3HUD10addMessageESsN7cocos2d10_ccColor3BEs> @ imm = #-0xd1c3e
  40eefe:      	add.w	r3, sp, #0x410
  40ef02:      	mov	r0, r3
  40ef04:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3a6a0c
  40ef08:      	add.w	r3, sp, #0x400
  40ef0c:      	mov	r0, r3
  40ef0e:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x37b4ea
  40ef12:      	ldr	r3, [pc, #0x3c]         @ 0x40ef50 <_ZN13TrainingStage8doLessonEf+0x4c78>
  40ef14:      	ldr	r3, [r4, r3]
  40ef16:      	ldr	r3, [r3]
  40ef18:      	mov	r0, r3
  40ef1a:      	movs	r1, #0x50
  40ef1c:      	movs	r2, #0x1
  40ef1e:      	bl	0x3f7d40 <_ZN5Sound18playSoundWithVoiceEii> @ imm = #-0x171e2
  40ef22:      	add	r3, sp, #0x1c
  40ef24:      	ldr	r3, [r3]
  40ef26:      	ldr.w	r3, [r3, #0x10c]
  40ef2a:      	ldr.w	r3, [r3, #0xf4]
  40ef2e:      	mov	r0, r3
  40ef30:      	movs	r1, #0x0
  40ef32:      	bl	0x34e874 <_ZN6Joypad15disableMovementEb> @ imm = #-0xc06c2
  40ef36:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x2fda
// TrainingStage::doLesson  ghidra=0x41ef54-0x41f317  elf=0x40ef54-0x40f317  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  40ef54:      	ldr	r3, [pc, #0x3d0]        @ 0x40f328 <_ZN13TrainingStage8doLessonEf+0x5050>
  40ef56:      	ldr	r3, [r4, r3]
  40ef58:      	ldr	r3, [r3]
  40ef5a:      	ldr	r3, [r3]
  40ef5c:      	add.w	r3, r3, #0x2a4
  40ef60:      	ldr	r3, [r3]
  40ef62:      	ldr	r2, [pc, #0x3c4]        @ 0x40f328 <_ZN13TrainingStage8doLessonEf+0x5050>
  40ef64:      	ldr	r2, [r4, r2]
  40ef66:      	ldr	r2, [r2]
  40ef68:      	mov	r0, r2
  40ef6a:      	mov.w	r1, #0x0
  40ef6e:      	blx	r3
  40ef70:      	add	r3, sp, #0x1c
  40ef72:      	ldr	r3, [r3]
  40ef74:      	ldr.w	r3, [r3, #0x1a8]
  40ef78:      	ldr.w	r3, [r3, #0x1ac]
  40ef7c:      	ldr	r3, [r3]
  40ef7e:      	add.w	r3, r3, #0x238
  40ef82:      	ldr	r3, [r3]
  40ef84:      	add	r2, sp, #0x1c
  40ef86:      	ldr	r2, [r2]
  40ef88:      	ldr.w	r2, [r2, #0x1a8]
  40ef8c:      	ldr.w	r2, [r2, #0x1ac]
  40ef90:      	mov	r0, r2
  40ef92:      	mov.w	r1, #0x0
  40ef96:      	blx	r3
  40ef98:      	add	r3, sp, #0x1c
  40ef9a:      	ldr	r3, [r3]
  40ef9c:      	ldr.w	r3, [r3, #0x1a8]
  40efa0:      	ldr.w	r3, [r3, #0x1a8]
  40efa4:      	ldr.w	r3, [r3, #0x114]
  40efa8:      	ldr	r3, [r3]
  40efaa:      	adds	r3, #0x98
  40efac:      	ldr	r5, [r3]
  40efae:      	add	r3, sp, #0x1c
  40efb0:      	ldr	r3, [r3]
  40efb2:      	ldr.w	r3, [r3, #0x1a8]
  40efb6:      	ldr.w	r3, [r3, #0x1a8]
  40efba:      	ldr.w	r6, [r3, #0x114]
  40efbe:      	add	r3, sp, #0x1c
  40efc0:      	ldr	r3, [r3]
  40efc2:      	vldr	s15, [r3, #392]
  40efc6:      	vcvt.f64.f32	d7, s15
  40efca:      	vmov	r0, r1, d7
  40efce:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x1390c8
  40efd2:      	vmov	d6, r0, r1
  40efd6:      	vmov.f64	d7, #5.000000e+00
  40efda:      	vmul.f64	d6, d6, d7
  40efde:      	vmov.f64	d7, #1.000000e+01
  40efe2:      	vsub.f64	d7, d6, d7
  40efe6:      	vcvt.f32.f64	s15, d7
  40efea:      	mov	r0, r6
  40efec:      	vmov	r1, s15
  40eff0:      	blx	r5
  40eff2:      	add	r3, sp, #0x1c
  40eff4:      	ldr	r3, [r3]
  40eff6:      	ldr.w	r3, [r3, #0x1a8]
  40effa:      	ldr.w	r3, [r3, #0x1a8]
  40effe:      	ldr.w	r3, [r3, #0x110]
  40f002:      	ldr	r3, [r3]
  40f004:      	adds	r3, #0x98
  40f006:      	ldr	r5, [r3]
  40f008:      	add	r3, sp, #0x1c
  40f00a:      	ldr	r3, [r3]
  40f00c:      	ldr.w	r3, [r3, #0x1a8]
  40f010:      	ldr.w	r3, [r3, #0x1a8]
  40f014:      	ldr.w	r6, [r3, #0x110]
  40f018:      	add	r3, sp, #0x1c
  40f01a:      	ldr	r3, [r3]
  40f01c:      	vldr	s15, [r3, #392]
  40f020:      	vcvt.f64.f32	d6, s15
  40f024:      	vldr	d7, [pc, #752]          @ 0x40f318 <_ZN13TrainingStage8doLessonEf+0x5040>
  40f028:      	vadd.f64	d7, d6, d7
  40f02c:      	vmov	r0, r1, d7
  40f030:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x13912c
  40f034:      	vmov	d6, r0, r1
  40f038:      	vmov.f64	d7, #5.000000e+00
  40f03c:      	vmul.f64	d6, d6, d7
  40f040:      	vmov.f64	d7, #1.000000e+01
  40f044:      	vadd.f64	d7, d6, d7
  40f048:      	vcvt.f32.f64	s15, d7
  40f04c:      	mov	r0, r6
  40f04e:      	vmov	r1, s15
  40f052:      	blx	r5
  40f054:      	add	r3, sp, #0x1c
  40f056:      	ldr	r3, [r3]
  40f058:      	ldr.w	r3, [r3, #0x17c]
  40f05c:      	ldr	r3, [r3]
  40f05e:      	add.w	r3, r3, #0x238
  40f062:      	ldr	r3, [r3]
  40f064:      	add	r2, sp, #0x1c
  40f066:      	ldr	r2, [r2]
  40f068:      	ldr.w	r2, [r2, #0x17c]
  40f06c:      	mov	r0, r2
  40f06e:      	mov.w	r1, #0x0
  40f072:      	movt	r1, #0x435c
  40f076:      	blx	r3
  40f078:      	add	r3, sp, #0x1c
  40f07a:      	ldr	r3, [r3]
  40f07c:      	ldr.w	r3, [r3, #0x17c]
  40f080:      	ldr	r3, [r3]
  40f082:      	add.w	r3, r3, #0x1d8
  40f086:      	ldr	r3, [r3]
  40f088:      	add	r2, sp, #0x1c
  40f08a:      	ldr	r2, [r2]
  40f08c:      	ldr.w	r2, [r2, #0x17c]
  40f090:      	mov	r0, r2
  40f092:      	blx	r3
  40f094:      	mov	r3, r0
  40f096:      	ldr.w	r5, [r3, #0x114]
  40f09a:      	ldr	r3, [r5]
  40f09c:      	adds	r3, #0x98
  40f09e:      	ldr	r6, [r3]
  40f0a0:      	add	r3, sp, #0x1c
  40f0a2:      	ldr	r3, [r3]
  40f0a4:      	vldr	s15, [r3, #392]
  40f0a8:      	vcvt.f64.f32	d7, s15
  40f0ac:      	vmov	r0, r1, d7
  40f0b0:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x1391ac
  40f0b4:      	vmov	d6, r0, r1
  40f0b8:      	vmov.f64	d7, #5.000000e+00
  40f0bc:      	vmul.f64	d6, d6, d7
  40f0c0:      	vmov.f64	d7, #3.000000e+01
  40f0c4:      	vsub.f64	d7, d6, d7
  40f0c8:      	vcvt.f32.f64	s15, d7
  40f0cc:      	mov	r0, r5
  40f0ce:      	vmov	r1, s15
  40f0d2:      	blx	r6
  40f0d4:      	add	r3, sp, #0x1c
  40f0d6:      	ldr	r3, [r3]
  40f0d8:      	ldr.w	r3, [r3, #0x17c]
  40f0dc:      	ldr	r3, [r3]
  40f0de:      	add.w	r3, r3, #0x1d8
  40f0e2:      	ldr	r3, [r3]
  40f0e4:      	add	r2, sp, #0x1c
  40f0e6:      	ldr	r2, [r2]
  40f0e8:      	ldr.w	r2, [r2, #0x17c]
  40f0ec:      	mov	r0, r2
  40f0ee:      	blx	r3
  40f0f0:      	mov	r3, r0
  40f0f2:      	ldr.w	r5, [r3, #0x110]
  40f0f6:      	ldr	r3, [r5]
  40f0f8:      	adds	r3, #0x98
  40f0fa:      	ldr	r6, [r3]
  40f0fc:      	add	r3, sp, #0x1c
  40f0fe:      	ldr	r3, [r3]
  40f100:      	vldr	s15, [r3, #392]
  40f104:      	vcvt.f64.f32	d6, s15
  40f108:      	vldr	d7, [pc, #524]          @ 0x40f318 <_ZN13TrainingStage8doLessonEf+0x5040>
  40f10c:      	vadd.f64	d7, d6, d7
  40f110:      	vmov	r0, r1, d7
  40f114:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x139210
  40f118:      	vmov	d6, r0, r1
  40f11c:      	vmov.f64	d7, #5.000000e+00
  40f120:      	vmul.f64	d6, d6, d7
  40f124:      	vmov.f64	d7, #2.000000e+01
  40f128:      	vsub.f64	d7, d6, d7
  40f12c:      	vcvt.f32.f64	s15, d7
  40f130:      	mov	r0, r5
  40f132:      	vmov	r1, s15
  40f136:      	blx	r6
  40f138:      	add	r3, sp, #0x1c
  40f13a:      	ldr	r3, [r3]
  40f13c:      	ldr.w	r3, [r3, #0x17c]
  40f140:      	ldr	r3, [r3]
  40f142:      	add.w	r3, r3, #0x230
  40f146:      	ldr	r5, [r3]
  40f148:      	add	r3, sp, #0x1c
  40f14a:      	ldr	r3, [r3]
  40f14c:      	ldr.w	r3, [r3, #0x17c]
  40f150:      	mov	r6, r3
  40f152:      	add	r3, sp, #0x210
  40f154:      	mov	r0, r3
  40f156:      	vldr	d0, [pc, #456]          @ 0x40f320 <_ZN13TrainingStage8doLessonEf+0x5048>
  40f15a:      	vmov.f64	d1, #-1.000000e+00
  40f15e:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x6c8e
  40f162:      	add	r3, sp, #0x210
  40f164:      	mov	r2, sp
  40f166:      	add.w	r1, r3, #0x8
  40f16a:      	ldm	r1, {r0, r1}
  40f16c:      	stm.w	r2, {r0, r1}
  40f170:      	ldm	r3, {r2, r3}
  40f172:      	mov	r0, r6
  40f174:      	blx	r5
  40f176:      	add	r3, sp, #0x1c
  40f178:      	ldr	r3, [r3]
  40f17a:      	ldr.w	r3, [r3, #0x17c]
  40f17e:      	movs	r2, #0x1
  40f180:      	strb.w	r2, [r3, #0x15a]
  40f184:      	add	r3, sp, #0x1c
  40f186:      	ldr	r3, [r3]
  40f188:      	ldr.w	r3, [r3, #0x17c]
  40f18c:      	ldr	r3, [r3]
  40f18e:      	add.w	r3, r3, #0x19c
  40f192:      	ldr	r3, [r3]
  40f194:      	add	r2, sp, #0x1c
  40f196:      	ldr	r2, [r2]
  40f198:      	ldr.w	r2, [r2, #0x17c]
  40f19c:      	mov	r0, r2
  40f19e:      	movs	r1, #0x1
  40f1a0:      	blx	r3
  40f1a2:      	add	r3, sp, #0x1c
  40f1a4:      	ldr	r3, [r3]
  40f1a6:      	ldr.w	r3, [r3, #0x17c]
  40f1aa:      	movs	r2, #0x1
  40f1ac:      	strb.w	r2, [r3, #0x11c]
  40f1b0:      	add	r3, sp, #0x1c
  40f1b2:      	ldr	r3, [r3]
  40f1b4:      	vldr	s14, [r3, #392]
  40f1b8:      	vmov.f32	s15, #1.000000e+00
  40f1bc:      	vcmpe.f32	s14, s15
  40f1c0:      	vmrs	APSR_nzcv, fpscr
  40f1c4:      	bpl	0x40f1d2 <_ZN13TrainingStage8doLessonEf+0x4efa> @ imm = #0xa
  40f1c6:      	add	r2, sp, #0x1c
  40f1c8:      	add	r3, sp, #0x18
  40f1ca:      	ldr	r0, [r2]
  40f1cc:      	ldr	r1, [r3]
  40f1ce:      	bl	0x409e30 <_ZN13TrainingStage11headChatterEf> @ imm = #-0x53a2
  40f1d2:      	add	r3, sp, #0x1c
  40f1d4:      	ldr	r3, [r3]
  40f1d6:      	ldr.w	r3, [r3, #0x174]
  40f1da:      	ldr	r3, [r3]
  40f1dc:      	adds	r3, #0x90
  40f1de:      	ldr	r3, [r3]
  40f1e0:      	add	r2, sp, #0x1c
  40f1e2:      	ldr	r2, [r2]
  40f1e4:      	ldr.w	r2, [r2, #0x174]
  40f1e8:      	mov	r0, r2
  40f1ea:      	movs	r1, #0x0
  40f1ec:      	blx	r3
  40f1ee:      	add	r3, sp, #0x1c
  40f1f0:      	ldr	r3, [r3]
  40f1f2:      	ldr.w	r3, [r3, #0x170]
  40f1f6:      	ldr	r3, [r3]
  40f1f8:      	adds	r3, #0x90
  40f1fa:      	ldr	r3, [r3]
  40f1fc:      	add	r2, sp, #0x1c
  40f1fe:      	ldr	r2, [r2]
  40f200:      	ldr.w	r2, [r2, #0x170]
  40f204:      	mov	r0, r2
  40f206:      	movs	r1, #0x1
  40f208:      	blx	r3
  40f20a:      	add	r3, sp, #0x1c
  40f20c:      	ldr	r3, [r3]
  40f20e:      	ldr.w	r3, [r3, #0x170]
  40f212:      	ldr	r3, [r3]
  40f214:      	adds	r3, #0x4c
  40f216:      	ldr	r5, [r3]
  40f218:      	add	r3, sp, #0x1c
  40f21a:      	ldr	r3, [r3]
  40f21c:      	ldr.w	r6, [r3, #0x170]
  40f220:      	add	r3, sp, #0x1c
  40f222:      	ldr	r3, [r3]
  40f224:      	ldr.w	r3, [r3, #0x1a8]
  40f228:      	ldr.w	r3, [r3, #0x1ac]
  40f22c:      	ldr.w	r3, [r3, #0x138]
  40f230:      	vldr	d7, [r3, #40]
  40f234:      	vcvt.f32.f64	s13, d7
  40f238:      	add	r3, sp, #0x1c
  40f23a:      	ldr	r3, [r3]
  40f23c:      	ldr.w	r3, [r3, #0x1a8]
  40f240:      	ldr.w	r3, [r3, #0x1ac]
  40f244:      	ldr.w	r3, [r3, #0x138]
  40f248:      	vldr	d7, [r3, #48]
  40f24c:      	vcvt.f32.f64	s15, d7
  40f250:      	add	r3, sp, #0x3f0
  40f252:      	mov	r0, r3
  40f254:      	vmov	r1, s13
  40f258:      	vmov	r2, s15
  40f25c:      	bl	0x592cf0 <_ZN7cocos2d7CCPointC2Eff> @ imm = #0x183a90
  40f260:      	add	r3, sp, #0x1c
  40f262:      	ldr	r3, [r3]
  40f264:      	vldr	s14, [r3, #392]
  40f268:      	vmov.f32	s15, #5.000000e+00
  40f26c:      	vmul.f32	s15, s14, s15
  40f270:      	vcvt.f64.f32	d7, s15
  40f274:      	vmov	r0, r1, d7
  40f278:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x139374
  40f27c:      	vmov	d6, r0, r1
  40f280:      	vmov.f64	d7, #1.000000e+01
  40f284:      	vmul.f64	d6, d6, d7
  40f288:      	vmov.f64	d7, #2.500000e+01
  40f28c:      	vadd.f64	d7, d6, d7
  40f290:      	vcvt.f32.f64	s15, d7
  40f294:      	add.w	r3, sp, #0x400
  40f298:      	mov	r0, r3
  40f29a:      	mov.w	r1, #0x0
  40f29e:      	movt	r1, #0xc1c8
  40f2a2:      	vmov	r2, s15
  40f2a6:      	bl	0x592cf0 <_ZN7cocos2d7CCPointC2Eff> @ imm = #0x183a46
  40f2aa:      	add.w	r1, sp, #0x410
  40f2ae:      	add	r2, sp, #0x3f0
  40f2b0:      	add.w	r3, sp, #0x400
  40f2b4:      	mov	r0, r1
  40f2b6:      	mov	r1, r2
  40f2b8:      	mov	r2, r3
  40f2ba:      	bl	0x4084b4 <_ZN6Tracer14checkCollisionEv+0x428> @ imm = #-0x6e0a
  40f2be:      	add.w	r3, sp, #0x410
  40f2c2:      	mov	r0, r6
  40f2c4:      	mov	r1, r3
  40f2c6:      	blx	r5
  40f2c8:      	add	r3, sp, #0x1c
  40f2ca:      	ldr	r3, [r3]
  40f2cc:      	ldr.w	r3, [r3, #0x170]
  40f2d0:      	ldr	r3, [r3]
  40f2d2:      	adds	r3, #0x98
  40f2d4:      	ldr	r3, [r3]
  40f2d6:      	add	r2, sp, #0x1c
  40f2d8:      	ldr	r2, [r2]
  40f2da:      	ldr.w	r2, [r2, #0x170]
  40f2de:      	mov	r0, r2
  40f2e0:      	mov.w	r1, #0x0
  40f2e4:      	movt	r1, #0x42b4
  40f2e8:      	blx	r3
  40f2ea:      	add	r3, sp, #0x1c
  40f2ec:      	ldr	r3, [r3]
  40f2ee:      	vldr	s14, [r3, #392]
  40f2f2:      	vmov.f32	s15, #3.000000e+00
  40f2f6:      	vcmpe.f32	s14, s15
  40f2fa:      	vmrs	APSR_nzcv, fpscr
  40f2fe:      	ble	0x40f39a <_ZN13TrainingStage8doLessonEf+0x50c2> @ imm = #0x98
  40f300:      	ldr	r3, [pc, #0x24]         @ 0x40f328 <_ZN13TrainingStage8doLessonEf+0x5050>
  40f302:      	ldr	r3, [r4, r3]
  40f304:      	ldr	r3, [r3]
  40f306:      	ldr.w	r3, [r3, #0x138]
  40f30a:      	vldr	d6, [r3, #40]
  40f30e:      	add	r3, sp, #0x1c
  40f310:      	ldr	r3, [r3]
  40f312:      	ldr.w	r3, [r3, #0x17c]
  40f316:      	b	0x40f32c <_ZN13TrainingStage8doLessonEf+0x5054> @ imm = #0x12
// TrainingStage::doLesson  ghidra=0x41f32c-0x41f5fd  elf=0x40f32c-0x40f5fd  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  40f32c:      	ldr.w	r3, [r3, #0x138]
  40f330:      	vldr	d7, [r3, #40]
  40f334:      	vcmpe.f64	d6, d7
  40f338:      	vmrs	APSR_nzcv, fpscr
  40f33c:      	bpl	0x40f39a <_ZN13TrainingStage8doLessonEf+0x50c2> @ imm = #0x5a
  40f33e:      	ldr	r3, [pc, #0x2c8]        @ 0x40f608 <_ZN13TrainingStage8doLessonEf+0x5330>
  40f340:      	ldr	r3, [r4, r3]
  40f342:      	ldr	r3, [r3]
  40f344:      	ldr.w	r2, [r3, #0x138]
  40f348:      	add	r3, sp, #0x1c
  40f34a:      	ldr	r3, [r3]
  40f34c:      	ldr.w	r3, [r3, #0x17c]
  40f350:      	ldr.w	r3, [r3, #0x138]
  40f354:      	add	r1, sp, #0x220
  40f356:      	vldr	d4, [r2, #40]
  40f35a:      	vldr	d5, [r2, #48]
  40f35e:      	vldr	d6, [r3, #40]
  40f362:      	vldr	d7, [r3, #48]
  40f366:      	mov	r0, r1
  40f368:      	vmov.f64	d0, d4
  40f36c:      	vmov.f64	d1, d5
  40f370:      	vmov.f64	d2, d6
  40f374:      	vmov.f64	d3, d7
  40f378:      	bl	0x408554 <_ZN6Tracer14checkCollisionEv+0x4c8> @ imm = #-0x6e28
  40f37c:      	add	r3, sp, #0x220
  40f37e:      	ldm	r3, {r0, r1, r2, r3}
  40f380:      	bl	0x6d70b8 <cpvlength>    @ imm = #0x2c7d34
  40f384:      	vmov	d6, r0, r1
  40f388:      	vldr	d7, [pc, #628]          @ 0x40f600 <_ZN13TrainingStage8doLessonEf+0x5328>
  40f38c:      	vcmpe.f64	d6, d7
  40f390:      	vmrs	APSR_nzcv, fpscr
  40f394:      	bpl	0x40f39a <_ZN13TrainingStage8doLessonEf+0x50c2> @ imm = #0x2
  40f396:      	movs	r3, #0x1
  40f398:      	b	0x40f39c <_ZN13TrainingStage8doLessonEf+0x50c4> @ imm = #0x0
  40f39a:      	movs	r3, #0x0
  40f39c:      	cmp	r3, #0x0
  40f39e:      	beq	0x40f48a <_ZN13TrainingStage8doLessonEf+0x51b2> @ imm = #0xe8
  40f3a0:      	add	r3, sp, #0x1c
  40f3a2:      	ldr	r3, [r3]
  40f3a4:      	ldr.w	r3, [r3, #0x180]
  40f3a8:      	adds	r2, r3, #0x1
  40f3aa:      	add	r3, sp, #0x1c
  40f3ac:      	ldr	r3, [r3]
  40f3ae:      	str.w	r2, [r3, #0x180]
  40f3b2:      	add	r3, sp, #0x1c
  40f3b4:      	ldr	r3, [r3]
  40f3b6:      	mov.w	r2, #0x0
  40f3ba:      	str.w	r2, [r3, #0x188]
  40f3be:      	add	r3, sp, #0x1c
  40f3c0:      	ldr	r3, [r3]
  40f3c2:      	ldr.w	r3, [r3, #0x10c]
  40f3c6:      	ldr.w	r3, [r3, #0xf4]
  40f3ca:      	mov	r0, r3
  40f3cc:      	movs	r1, #0x1
  40f3ce:      	bl	0x34e874 <_ZN6Joypad15disableMovementEb> @ imm = #-0xc0b5e
  40f3d2:      	add	r3, sp, #0x1c
  40f3d4:      	ldr	r3, [r3]
  40f3d6:      	ldr.w	r3, [r3, #0x174]
  40f3da:      	ldr	r3, [r3]
  40f3dc:      	adds	r3, #0x38
  40f3de:      	ldr	r3, [r3]
  40f3e0:      	add	r2, sp, #0x1c
  40f3e2:      	ldr	r2, [r2]
  40f3e4:      	ldr.w	r2, [r2, #0x174]
  40f3e8:      	mov	r0, r2
  40f3ea:      	mov.w	r1, #0x3f800000
  40f3ee:      	blx	r3
  40f3f0:      	add	r3, sp, #0x1c
  40f3f2:      	ldr	r3, [r3]
  40f3f4:      	ldr.w	r5, [r3, #0x10c]
  40f3f8:      	add.w	r3, sp, #0x400
  40f3fc:      	mov	r0, r3
  40f3fe:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x37aff2
  40f402:      	add.w	r2, sp, #0x410
  40f406:      	add.w	r3, sp, #0x400
  40f40a:      	mov	r0, r2
  40f40c:      	ldr	r2, [pc, #0x1fc]        @ 0x40f60c <_ZN13TrainingStage8doLessonEf+0x5334>
  40f40e:      	add	r2, pc
  40f410:      	mov	r1, r2
  40f412:      	mov	r2, r3
  40f414:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3a7648
  40f418:      	movs	r0, #0x0
  40f41a:      	movs	r1, #0x0
  40f41c:      	movs	r2, #0xff
  40f41e:      	bl	0x408458 <_ZN6Tracer14checkCollisionEv+0x3cc> @ imm = #-0x6fca
  40f422:      	mov	r2, r0
  40f424:      	add	r3, sp, #0xa4
  40f426:      	mov	r1, r2
  40f428:      	strb	r1, [r3]
  40f42a:      	ubfx	r1, r2, #0x8, #0x8
  40f42e:      	strb	r1, [r3, #0x1]
  40f430:      	ubfx	r2, r2, #0x10, #0x8
  40f434:      	strb	r2, [r3, #0x2]
  40f436:      	add.w	r2, sp, #0x410
  40f43a:      	add	r3, sp, #0xa4
  40f43c:      	mov	r0, r5
  40f43e:      	mov	r1, r2
  40f440:      	ldr	r2, [r3]
  40f442:      	movs	r3, #0x3
  40f444:      	bl	0x33d2c0 <_ZN3HUD10addMessageESsN7cocos2d10_ccColor3BEs> @ imm = #-0xd2188
  40f448:      	add.w	r3, sp, #0x410
  40f44c:      	mov	r0, r3
  40f44e:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3a64c2
  40f452:      	add.w	r3, sp, #0x400
  40f456:      	mov	r0, r3
  40f458:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x37afa0
  40f45c:      	ldr	r3, [pc, #0x1b0]        @ 0x40f610 <_ZN13TrainingStage8doLessonEf+0x5338>
  40f45e:      	ldr	r3, [r4, r3]
  40f460:      	ldr	r3, [r3]
  40f462:      	mov	r0, r3
  40f464:      	movs	r1, #0x51
  40f466:      	movs	r2, #0x1
  40f468:      	bl	0x3f7d40 <_ZN5Sound18playSoundWithVoiceEii> @ imm = #-0x1772c
  40f46c:      	add	r3, sp, #0x1c
  40f46e:      	ldr	r3, [r3]
  40f470:      	ldr.w	r3, [r3, #0x170]
  40f474:      	ldr	r3, [r3]
  40f476:      	adds	r3, #0x90
  40f478:      	ldr	r3, [r3]
  40f47a:      	add	r2, sp, #0x1c
  40f47c:      	ldr	r2, [r2]
  40f47e:      	ldr.w	r2, [r2, #0x170]
  40f482:      	mov	r0, r2
  40f484:      	movs	r1, #0x0
  40f486:      	blx	r3
  40f488:      	b	0x40f5fa <_ZN13TrainingStage8doLessonEf+0x5322> @ imm = #0x16e
  40f48a:      	ldr	r3, [pc, #0x17c]        @ 0x40f608 <_ZN13TrainingStage8doLessonEf+0x5330>
  40f48c:      	ldr	r3, [r4, r3]
  40f48e:      	ldr	r3, [r3]
  40f490:      	ldrb.w	r3, [r3, #0x11c]
  40f494:      	eor	r3, r3, #0x1
  40f498:      	uxtb	r3, r3
  40f49a:      	cmp	r3, #0x0
  40f49c:      	beq.w	0x40f5fa <_ZN13TrainingStage8doLessonEf+0x5322> @ imm = #0x15a
  40f4a0:      	ldr	r3, [pc, #0x164]        @ 0x40f608 <_ZN13TrainingStage8doLessonEf+0x5330>
  40f4a2:      	ldr	r3, [r4, r3]
  40f4a4:      	ldr	r3, [r3]
  40f4a6:      	ldr.w	r3, [r3, #0x138]
  40f4aa:      	vldr	d7, [r3, #56]
  40f4ae:      	vabs.f64	d6, d7
  40f4b2:      	vmov.f64	d7, #1.000000e+00
  40f4b6:      	vcmpe.f64	d6, d7
  40f4ba:      	vmrs	APSR_nzcv, fpscr
  40f4be:      	bmi	0x40f4c4 <_ZN13TrainingStage8doLessonEf+0x51ec> @ imm = #0x2
  40f4c0:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x2a50
  40f4c4:      	add	r3, sp, #0x1c
  40f4c6:      	ldr	r3, [r3]
  40f4c8:      	ldr.w	r3, [r3, #0x174]
  40f4cc:      	ldr	r3, [r3]
  40f4ce:      	adds	r3, #0x90
  40f4d0:      	ldr	r3, [r3]
  40f4d2:      	add	r2, sp, #0x1c
  40f4d4:      	ldr	r2, [r2]
  40f4d6:      	ldr.w	r2, [r2, #0x174]
  40f4da:      	mov	r0, r2
  40f4dc:      	movs	r1, #0x1
  40f4de:      	blx	r3
  40f4e0:      	add	r3, sp, #0x1c
  40f4e2:      	ldr	r3, [r3]
  40f4e4:      	ldr.w	r3, [r3, #0x174]
  40f4e8:      	ldr	r3, [r3]
  40f4ea:      	adds	r3, #0x38
  40f4ec:      	ldr	r3, [r3]
  40f4ee:      	add	r2, sp, #0x1c
  40f4f0:      	ldr	r2, [r2]
  40f4f2:      	ldr.w	r2, [r2, #0x174]
  40f4f6:      	mov	r0, r2
  40f4f8:      	mov.w	r1, #0x0
  40f4fc:      	movt	r1, #0xbf80
  40f500:      	blx	r3
  40f502:      	add	r3, sp, #0x1c
  40f504:      	ldr	r3, [r3]
  40f506:      	ldr.w	r3, [r3, #0x174]
  40f50a:      	ldr	r3, [r3]
  40f50c:      	adds	r3, #0x98
  40f50e:      	ldr	r3, [r3]
  40f510:      	add	r2, sp, #0x1c
  40f512:      	ldr	r2, [r2]
  40f514:      	ldr.w	r2, [r2, #0x174]
  40f518:      	mov	r0, r2
  40f51a:      	mov.w	r1, #0x0
  40f51e:      	movt	r1, #0x4307
  40f522:      	blx	r3
  40f524:      	add	r3, sp, #0x1c
  40f526:      	ldr	r3, [r3]
  40f528:      	ldr.w	r3, [r3, #0x16c]
  40f52c:      	ldr	r3, [r3]
  40f52e:      	adds	r3, #0x4c
  40f530:      	ldr	r4, [r3]
  40f532:      	add	r3, sp, #0x1c
  40f534:      	ldr	r3, [r3]
  40f536:      	ldr.w	r5, [r3, #0x16c]
  40f53a:      	add	r3, sp, #0x1c
  40f53c:      	ldr	r3, [r3]
  40f53e:      	vldr	s14, [r3, #392]
  40f542:      	vmov.f32	s15, #5.000000e+00
  40f546:      	vmul.f32	s15, s14, s15
  40f54a:      	vcvt.f64.f32	d7, s15
  40f54e:      	vmov	r0, r1, d7
  40f552:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x13964c
  40f556:      	vmov	d6, r0, r1
  40f55a:      	vmov.f64	d7, #1.000000e+01
  40f55e:      	vmul.f64	d7, d6, d7
  40f562:      	vcvt.f32.f64	s15, d7
  40f566:      	add.w	r3, sp, #0x410
  40f56a:      	mov	r0, r3
  40f56c:      	vmov	r1, s15
  40f570:      	mov.w	r2, #0x0
  40f574:      	bl	0x592cf0 <_ZN7cocos2d7CCPointC2Eff> @ imm = #0x183778
  40f578:      	add.w	r3, sp, #0x410
  40f57c:      	mov	r0, r5
  40f57e:      	mov	r1, r3
  40f580:      	blx	r4
  40f582:      	add	r3, sp, #0x1c
  40f584:      	ldr	r3, [r3]
  40f586:      	ldr.w	r3, [r3, #0x174]
  40f58a:      	ldr	r3, [r3]
  40f58c:      	adds	r3, #0x4c
  40f58e:      	ldr	r4, [r3]
  40f590:      	add	r3, sp, #0x1c
  40f592:      	ldr	r3, [r3]
  40f594:      	ldr.w	r5, [r3, #0x174]
  40f598:      	add	r3, sp, #0x1c
  40f59a:      	ldr	r3, [r3]
  40f59c:      	ldr.w	r3, [r3, #0x10c]
  40f5a0:      	ldr.w	r3, [r3, #0xf4]
  40f5a4:      	ldr.w	r3, [r3, #0xe4]
  40f5a8:      	ldr	r3, [r3]
  40f5aa:      	adds	r3, #0x50
  40f5ac:      	ldr	r3, [r3]
  40f5ae:      	add	r2, sp, #0x1c
  40f5b0:      	ldr	r2, [r2]
  40f5b2:      	ldr.w	r2, [r2, #0x10c]
  40f5b6:      	ldr.w	r2, [r2, #0xf4]
  40f5ba:      	ldr.w	r2, [r2, #0xe4]
  40f5be:      	mov	r0, r2
  40f5c0:      	blx	r3
  40f5c2:      	mov	r6, r0
  40f5c4:      	add.w	r3, sp, #0x400
  40f5c8:      	mov	r0, r3
  40f5ca:      	mov.w	r1, #0x0
  40f5ce:      	movt	r1, #0x4270
  40f5d2:      	mov.w	r2, #0x0
  40f5d6:      	movt	r2, #0x425c
  40f5da:      	bl	0x592cf0 <_ZN7cocos2d7CCPointC2Eff> @ imm = #0x183712
  40f5de:      	add.w	r2, sp, #0x410
  40f5e2:      	add.w	r3, sp, #0x400
  40f5e6:      	mov	r0, r2
  40f5e8:      	mov	r1, r6
  40f5ea:      	mov	r2, r3
  40f5ec:      	bl	0x4084b4 <_ZN6Tracer14checkCollisionEv+0x428> @ imm = #-0x713c
  40f5f0:      	add.w	r3, sp, #0x410
  40f5f4:      	mov	r0, r5
  40f5f6:      	mov	r1, r3
  40f5f8:      	blx	r4
  40f5fa:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x2916
// TrainingStage::doLesson  ghidra=0x41f614-0x41f9a1  elf=0x40f614-0x40f9a1  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  40f614:      	ldr	r3, [pc, #0x3a0]        @ 0x40f9b8 <_ZN13TrainingStage8doLessonEf+0x56e0>
  40f616:      	ldr	r3, [r4, r3]
  40f618:      	ldr	r3, [r3]
  40f61a:      	ldr	r3, [r3]
  40f61c:      	add.w	r3, r3, #0x2a4
  40f620:      	ldr	r3, [r3]
  40f622:      	ldr	r2, [pc, #0x394]        @ 0x40f9b8 <_ZN13TrainingStage8doLessonEf+0x56e0>
  40f624:      	ldr	r2, [r4, r2]
  40f626:      	ldr	r2, [r2]
  40f628:      	mov	r0, r2
  40f62a:      	mov.w	r1, #0x0
  40f62e:      	blx	r3
  40f630:      	add	r3, sp, #0x1c
  40f632:      	ldr	r3, [r3]
  40f634:      	ldr.w	r3, [r3, #0x10c]
  40f638:      	ldr.w	r3, [r3, #0x114]
  40f63c:      	ldr	r3, [r3]
  40f63e:      	adds	r3, #0x90
  40f640:      	ldr	r3, [r3]
  40f642:      	add	r2, sp, #0x1c
  40f644:      	ldr	r2, [r2]
  40f646:      	ldr.w	r2, [r2, #0x10c]
  40f64a:      	ldr.w	r2, [r2, #0x114]
  40f64e:      	mov	r0, r2
  40f650:      	movs	r1, #0x1
  40f652:      	blx	r3
  40f654:      	add	r3, sp, #0x1c
  40f656:      	ldr	r3, [r3]
  40f658:      	ldr.w	r3, [r3, #0x1a8]
  40f65c:      	ldr.w	r3, [r3, #0x1ac]
  40f660:      	ldr	r3, [r3]
  40f662:      	add.w	r3, r3, #0x238
  40f666:      	ldr	r3, [r3]
  40f668:      	add	r2, sp, #0x1c
  40f66a:      	ldr	r2, [r2]
  40f66c:      	ldr.w	r2, [r2, #0x1a8]
  40f670:      	ldr.w	r2, [r2, #0x1ac]
  40f674:      	mov	r0, r2
  40f676:      	mov.w	r1, #0x0
  40f67a:      	blx	r3
  40f67c:      	add	r3, sp, #0x1c
  40f67e:      	ldr	r3, [r3]
  40f680:      	ldr.w	r3, [r3, #0x1a8]
  40f684:      	ldr.w	r3, [r3, #0x1a8]
  40f688:      	ldr.w	r3, [r3, #0x114]
  40f68c:      	ldr	r3, [r3]
  40f68e:      	adds	r3, #0x98
  40f690:      	ldr	r5, [r3]
  40f692:      	add	r3, sp, #0x1c
  40f694:      	ldr	r3, [r3]
  40f696:      	ldr.w	r3, [r3, #0x1a8]
  40f69a:      	ldr.w	r3, [r3, #0x1a8]
  40f69e:      	ldr.w	r6, [r3, #0x114]
  40f6a2:      	add	r3, sp, #0x1c
  40f6a4:      	ldr	r3, [r3]
  40f6a6:      	vldr	s15, [r3, #392]
  40f6aa:      	vcvt.f64.f32	d7, s15
  40f6ae:      	vmov	r0, r1, d7
  40f6b2:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x1397ac
  40f6b6:      	vmov	d6, r0, r1
  40f6ba:      	vmov.f64	d7, #5.000000e+00
  40f6be:      	vmul.f64	d6, d6, d7
  40f6c2:      	vmov.f64	d7, #1.000000e+01
  40f6c6:      	vsub.f64	d7, d6, d7
  40f6ca:      	vcvt.f32.f64	s15, d7
  40f6ce:      	mov	r0, r6
  40f6d0:      	vmov	r1, s15
  40f6d4:      	blx	r5
  40f6d6:      	add	r3, sp, #0x1c
  40f6d8:      	ldr	r3, [r3]
  40f6da:      	ldr.w	r3, [r3, #0x1a8]
  40f6de:      	ldr.w	r3, [r3, #0x1a8]
  40f6e2:      	ldr.w	r3, [r3, #0x110]
  40f6e6:      	ldr	r3, [r3]
  40f6e8:      	adds	r3, #0x98
  40f6ea:      	ldr	r5, [r3]
  40f6ec:      	add	r3, sp, #0x1c
  40f6ee:      	ldr	r3, [r3]
  40f6f0:      	ldr.w	r3, [r3, #0x1a8]
  40f6f4:      	ldr.w	r3, [r3, #0x1a8]
  40f6f8:      	ldr.w	r6, [r3, #0x110]
  40f6fc:      	add	r3, sp, #0x1c
  40f6fe:      	ldr	r3, [r3]
  40f700:      	vldr	s15, [r3, #392]
  40f704:      	vcvt.f64.f32	d6, s15
  40f708:      	vldr	d7, [pc, #668]          @ 0x40f9a8 <_ZN13TrainingStage8doLessonEf+0x56d0>
  40f70c:      	vadd.f64	d7, d6, d7
  40f710:      	vmov	r0, r1, d7
  40f714:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x139810
  40f718:      	vmov	d6, r0, r1
  40f71c:      	vmov.f64	d7, #5.000000e+00
  40f720:      	vmul.f64	d6, d6, d7
  40f724:      	vmov.f64	d7, #1.000000e+01
  40f728:      	vadd.f64	d7, d6, d7
  40f72c:      	vcvt.f32.f64	s15, d7
  40f730:      	mov	r0, r6
  40f732:      	vmov	r1, s15
  40f736:      	blx	r5
  40f738:      	add	r3, sp, #0x1c
  40f73a:      	ldr	r3, [r3]
  40f73c:      	ldr.w	r3, [r3, #0x17c]
  40f740:      	ldr	r3, [r3]
  40f742:      	add.w	r3, r3, #0x238
  40f746:      	ldr	r3, [r3]
  40f748:      	add	r2, sp, #0x1c
  40f74a:      	ldr	r2, [r2]
  40f74c:      	ldr.w	r2, [r2, #0x17c]
  40f750:      	mov	r0, r2
  40f752:      	mov.w	r1, #0x0
  40f756:      	movt	r1, #0x435c
  40f75a:      	blx	r3
  40f75c:      	add	r3, sp, #0x1c
  40f75e:      	ldr	r3, [r3]
  40f760:      	ldr.w	r3, [r3, #0x10c]
  40f764:      	ldr.w	r3, [r3, #0xf4]
  40f768:      	mov	r0, r3
  40f76a:      	movs	r1, #0x1
  40f76c:      	bl	0x34e918 <_ZN6Joypad13disableFiringEb> @ imm = #-0xc0e58
  40f770:      	add	r3, sp, #0x1c
  40f772:      	ldr	r3, [r3]
  40f774:      	ldr.w	r3, [r3, #0x10c]
  40f778:      	ldr.w	r3, [r3, #0xf4]
  40f77c:      	ldr.w	r3, [r3, #0xe8]
  40f780:      	ldr	r3, [r3]
  40f782:      	adds	r3, #0x4c
  40f784:      	ldr	r5, [r3]
  40f786:      	add	r3, sp, #0x1c
  40f788:      	ldr	r3, [r3]
  40f78a:      	ldr.w	r3, [r3, #0x10c]
  40f78e:      	ldr.w	r3, [r3, #0xf4]
  40f792:      	ldr.w	r6, [r3, #0xe8]
  40f796:      	add	r3, sp, #0x1c
  40f798:      	ldr	r3, [r3]
  40f79a:      	ldr.w	r3, [r3, #0x10c]
  40f79e:      	ldr.w	r3, [r3, #0xf4]
  40f7a2:      	add.w	r7, r3, #0xfc
  40f7a6:      	add.w	r3, sp, #0x400
  40f7aa:      	mov	r0, r3
  40f7ac:      	mov.w	r1, #0x0
  40f7b0:      	movt	r1, #0x41f0
  40f7b4:      	mov.w	r2, #0x0
  40f7b8:      	bl	0x592cf0 <_ZN7cocos2d7CCPointC2Eff> @ imm = #0x183534
  40f7bc:      	add.w	r2, sp, #0x410
  40f7c0:      	add.w	r3, sp, #0x400
  40f7c4:      	mov	r0, r2
  40f7c6:      	mov	r1, r7
  40f7c8:      	mov	r2, r3
  40f7ca:      	bl	0x4084b4 <_ZN6Tracer14checkCollisionEv+0x428> @ imm = #-0x731a
  40f7ce:      	add.w	r3, sp, #0x410
  40f7d2:      	mov	r0, r6
  40f7d4:      	mov	r1, r3
  40f7d6:      	blx	r5
  40f7d8:      	add	r3, sp, #0x1c
  40f7da:      	ldr	r3, [r3]
  40f7dc:      	ldr.w	r3, [r3, #0x10c]
  40f7e0:      	ldr.w	r3, [r3, #0xf4]
  40f7e4:      	mov.w	r2, #0x0
  40f7e8:      	str.w	r2, [r3, #0x124]
  40f7ec:      	add	r3, sp, #0x1c
  40f7ee:      	ldr	r3, [r3]
  40f7f0:      	ldr.w	r3, [r3, #0x17c]
  40f7f4:      	ldr	r3, [r3]
  40f7f6:      	add.w	r3, r3, #0x1d8
  40f7fa:      	ldr	r3, [r3]
  40f7fc:      	add	r2, sp, #0x1c
  40f7fe:      	ldr	r2, [r2]
  40f800:      	ldr.w	r2, [r2, #0x17c]
  40f804:      	mov	r0, r2
  40f806:      	blx	r3
  40f808:      	mov	r3, r0
  40f80a:      	ldr.w	r5, [r3, #0x114]
  40f80e:      	ldr	r3, [r5]
  40f810:      	adds	r3, #0x98
  40f812:      	ldr	r6, [r3]
  40f814:      	add	r3, sp, #0x1c
  40f816:      	ldr	r3, [r3]
  40f818:      	vldr	s15, [r3, #392]
  40f81c:      	vcvt.f64.f32	d7, s15
  40f820:      	vmov	r0, r1, d7
  40f824:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x139920
  40f828:      	vmov	d6, r0, r1
  40f82c:      	vmov.f64	d7, #5.000000e+00
  40f830:      	vmul.f64	d6, d6, d7
  40f834:      	vmov.f64	d7, #3.000000e+01
  40f838:      	vsub.f64	d7, d6, d7
  40f83c:      	vcvt.f32.f64	s15, d7
  40f840:      	mov	r0, r5
  40f842:      	vmov	r1, s15
  40f846:      	blx	r6
  40f848:      	add	r3, sp, #0x1c
  40f84a:      	ldr	r3, [r3]
  40f84c:      	ldr.w	r3, [r3, #0x17c]
  40f850:      	ldr	r3, [r3]
  40f852:      	add.w	r3, r3, #0x1d8
  40f856:      	ldr	r3, [r3]
  40f858:      	add	r2, sp, #0x1c
  40f85a:      	ldr	r2, [r2]
  40f85c:      	ldr.w	r2, [r2, #0x17c]
  40f860:      	mov	r0, r2
  40f862:      	blx	r3
  40f864:      	mov	r3, r0
  40f866:      	ldr.w	r5, [r3, #0x110]
  40f86a:      	ldr	r3, [r5]
  40f86c:      	adds	r3, #0x98
  40f86e:      	ldr	r6, [r3]
  40f870:      	add	r3, sp, #0x1c
  40f872:      	ldr	r3, [r3]
  40f874:      	vldr	s15, [r3, #392]
  40f878:      	vcvt.f64.f32	d6, s15
  40f87c:      	vldr	d7, [pc, #296]          @ 0x40f9a8 <_ZN13TrainingStage8doLessonEf+0x56d0>
  40f880:      	vadd.f64	d7, d6, d7
  40f884:      	vmov	r0, r1, d7
  40f888:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x139984
  40f88c:      	vmov	d6, r0, r1
  40f890:      	vmov.f64	d7, #5.000000e+00
  40f894:      	vmul.f64	d6, d6, d7
  40f898:      	vmov.f64	d7, #2.000000e+01
  40f89c:      	vsub.f64	d7, d6, d7
  40f8a0:      	vcvt.f32.f64	s15, d7
  40f8a4:      	mov	r0, r5
  40f8a6:      	vmov	r1, s15
  40f8aa:      	blx	r6
  40f8ac:      	add	r3, sp, #0x1c
  40f8ae:      	ldr	r3, [r3]
  40f8b0:      	ldr.w	r3, [r3, #0x17c]
  40f8b4:      	ldr	r3, [r3]
  40f8b6:      	add.w	r3, r3, #0x230
  40f8ba:      	ldr	r5, [r3]
  40f8bc:      	add	r3, sp, #0x1c
  40f8be:      	ldr	r3, [r3]
  40f8c0:      	ldr.w	r3, [r3, #0x17c]
  40f8c4:      	mov	r6, r3
  40f8c6:      	add	r3, sp, #0x230
  40f8c8:      	mov	r0, r3
  40f8ca:      	vldr	d0, [pc, #228]          @ 0x40f9b0 <_ZN13TrainingStage8doLessonEf+0x56d8>
  40f8ce:      	vmov.f64	d1, #-1.000000e+00
  40f8d2:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x7402
  40f8d6:      	add	r3, sp, #0x230
  40f8d8:      	mov	r2, sp
  40f8da:      	add.w	r1, r3, #0x8
  40f8de:      	ldm	r1, {r0, r1}
  40f8e0:      	stm.w	r2, {r0, r1}
  40f8e4:      	ldm	r3, {r2, r3}
  40f8e6:      	mov	r0, r6
  40f8e8:      	blx	r5
  40f8ea:      	add	r3, sp, #0x1c
  40f8ec:      	ldr	r3, [r3]
  40f8ee:      	ldr.w	r3, [r3, #0x17c]
  40f8f2:      	movs	r2, #0x1
  40f8f4:      	strb.w	r2, [r3, #0x15a]
  40f8f8:      	add	r3, sp, #0x1c
  40f8fa:      	ldr	r3, [r3]
  40f8fc:      	ldr.w	r3, [r3, #0x17c]
  40f900:      	ldr	r3, [r3]
  40f902:      	add.w	r3, r3, #0x19c
  40f906:      	ldr	r3, [r3]
  40f908:      	add	r2, sp, #0x1c
  40f90a:      	ldr	r2, [r2]
  40f90c:      	ldr.w	r2, [r2, #0x17c]
  40f910:      	mov	r0, r2
  40f912:      	movs	r1, #0x1
  40f914:      	blx	r3
  40f916:      	add	r3, sp, #0x1c
  40f918:      	ldr	r3, [r3]
  40f91a:      	ldr.w	r3, [r3, #0x17c]
  40f91e:      	movs	r2, #0x1
  40f920:      	strb.w	r2, [r3, #0x11c]
  40f924:      	add	r3, sp, #0x1c
  40f926:      	ldr	r3, [r3]
  40f928:      	ldr.w	r3, [r3, #0x174]
  40f92c:      	ldr	r3, [r3]
  40f92e:      	adds	r3, #0x90
  40f930:      	ldr	r3, [r3]
  40f932:      	add	r2, sp, #0x1c
  40f934:      	ldr	r2, [r2]
  40f936:      	ldr.w	r2, [r2, #0x174]
  40f93a:      	mov	r0, r2
  40f93c:      	movs	r1, #0x0
  40f93e:      	blx	r3
  40f940:      	add	r3, sp, #0x1c
  40f942:      	ldr	r3, [r3]
  40f944:      	ldr.w	r3, [r3, #0x1a8]
  40f948:      	ldr	r3, [r3]
  40f94a:      	add.w	r3, r3, #0x1e4
  40f94e:      	ldr	r3, [r3]
  40f950:      	add	r2, sp, #0x1c
  40f952:      	ldr	r2, [r2]
  40f954:      	ldr.w	r2, [r2, #0x1a8]
  40f958:      	mov	r0, r2
  40f95a:      	blx	r3
  40f95c:      	mov	r3, r0
  40f95e:      	cmp	r3, #0x63
  40f960:      	ite	gt
  40f962:      	movgt	r3, #0x0
  40f964:      	movle	r3, #0x1
  40f966:      	uxtb	r3, r3
  40f968:      	cmp	r3, #0x0
  40f96a:      	beq	0x40f9bc <_ZN13TrainingStage8doLessonEf+0x56e4> @ imm = #0x4e
  40f96c:      	add	r3, sp, #0x1c
  40f96e:      	ldr	r3, [r3]
  40f970:      	ldr.w	r3, [r3, #0x180]
  40f974:      	adds	r2, r3, #0x1
  40f976:      	add	r3, sp, #0x1c
  40f978:      	ldr	r3, [r3]
  40f97a:      	str.w	r2, [r3, #0x180]
  40f97e:      	add	r3, sp, #0x1c
  40f980:      	ldr	r3, [r3]
  40f982:      	mov.w	r2, #0x0
  40f986:      	str.w	r2, [r3, #0x188]
  40f98a:      	add	r3, sp, #0x1c
  40f98c:      	ldr	r3, [r3]
  40f98e:      	ldr.w	r3, [r3, #0x10c]
  40f992:      	ldr.w	r3, [r3, #0xf4]
  40f996:      	mov	r0, r3
  40f998:      	movs	r1, #0x0
  40f99a:      	bl	0x34e918 <_ZN6Joypad13disableFiringEb> @ imm = #-0xc1086
  40f99e:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x2572
// TrainingStage::doLesson  ghidra=0x41f9bc-0x41fc1b  elf=0x40f9bc-0x40fc1b  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  40f9bc:      	ldr	r3, [pc, #0x278]        @ 0x40fc38 <_ZN13TrainingStage8doLessonEf+0x5960>
  40f9be:      	ldr	r3, [r4, r3]
  40f9c0:      	ldr	r3, [r3]
  40f9c2:      	ldr.w	r6, [r3, #0x138]
  40f9c6:      	ldr	r3, [pc, #0x270]        @ 0x40fc38 <_ZN13TrainingStage8doLessonEf+0x5960>
  40f9c8:      	ldr	r3, [r4, r3]
  40f9ca:      	ldr	r3, [r3]
  40f9cc:      	ldr.w	r3, [r3, #0x138]
  40f9d0:      	add	r2, sp, #0x240
  40f9d2:      	vldr	d6, [r3, #40]
  40f9d6:      	vldr	d7, [r3, #48]
  40f9da:      	mov	r0, r2
  40f9dc:      	vmov.f64	d0, d6
  40f9e0:      	vmov.f64	d1, d7
  40f9e4:      	vldr	d2, [pc, #568]          @ 0x40fc20 <_ZN13TrainingStage8doLessonEf+0x5948>
  40f9e8:      	bl	0x4085ac <_ZN6Tracer14checkCollisionEv+0x520> @ imm = #-0x7440
  40f9ec:      	add	r3, sp, #0x1c
  40f9ee:      	ldr	r3, [r3]
  40f9f0:      	ldr.w	r3, [r3, #0x1a8]
  40f9f4:      	ldr.w	r3, [r3, #0x1ac]
  40f9f8:      	ldr.w	r5, [r3, #0x138]
  40f9fc:      	add	r3, sp, #0x250
  40f9fe:      	mov	r0, r3
  40fa00:      	vmov.f64	d0, #-2.500000e+01
  40fa04:      	vldr	d1, [pc, #544]          @ 0x40fc28 <_ZN13TrainingStage8doLessonEf+0x5950>
  40fa08:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x7538
  40fa0c:      	add	r2, sp, #0x260
  40fa0e:      	vldr	d4, [r5, #40]
  40fa12:      	vldr	d5, [r5, #48]
  40fa16:      	add	r3, sp, #0x250
  40fa18:      	vldr	d6, [r3]
  40fa1c:      	vldr	d7, [r3, #8]
  40fa20:      	mov	r0, r2
  40fa22:      	vmov.f64	d0, d4
  40fa26:      	vmov.f64	d1, d5
  40fa2a:      	vmov.f64	d2, d6
  40fa2e:      	vmov.f64	d3, d7
  40fa32:      	bl	0x4084fc <_ZN6Tracer14checkCollisionEv+0x470> @ imm = #-0x753a
  40fa36:      	add	r2, sp, #0x270
  40fa38:      	add	r3, sp, #0x260
  40fa3a:      	vldr	d6, [r3]
  40fa3e:      	vldr	d7, [r3, #8]
  40fa42:      	mov	r0, r2
  40fa44:      	vmov.f64	d0, d6
  40fa48:      	vmov.f64	d1, d7
  40fa4c:      	vldr	d2, [pc, #480]          @ 0x40fc30 <_ZN13TrainingStage8doLessonEf+0x5958>
  40fa50:      	bl	0x4085ac <_ZN6Tracer14checkCollisionEv+0x520> @ imm = #-0x74a8
  40fa54:      	add	r2, sp, #0x8
  40fa56:      	add	r3, sp, #0x240
  40fa58:      	vldr	d4, [r3]
  40fa5c:      	vldr	d5, [r3, #8]
  40fa60:      	add	r3, sp, #0x270
  40fa62:      	vldr	d6, [r3]
  40fa66:      	vldr	d7, [r3, #8]
  40fa6a:      	mov	r0, r2
  40fa6c:      	vmov.f64	d0, d4
  40fa70:      	vmov.f64	d1, d5
  40fa74:      	vmov.f64	d2, d6
  40fa78:      	vmov.f64	d3, d7
  40fa7c:      	bl	0x4084fc <_ZN6Tracer14checkCollisionEv+0x470> @ imm = #-0x7584
  40fa80:      	add	r3, sp, #0x8
  40fa82:      	add.w	r5, r6, #0x28
  40fa86:      	ldm	r3, {r0, r1, r2, r3}
  40fa88:      	stm.w	r5, {r0, r1, r2, r3}
  40fa8c:      	ldr	r3, [pc, #0x1a8]        @ 0x40fc38 <_ZN13TrainingStage8doLessonEf+0x5960>
  40fa8e:      	ldr	r3, [r4, r3]
  40fa90:      	ldr	r3, [r3]
  40fa92:      	ldr	r3, [r3]
  40fa94:      	add.w	r3, r3, #0x2a4
  40fa98:      	ldr	r3, [r3]
  40fa9a:      	ldr	r2, [pc, #0x19c]        @ 0x40fc38 <_ZN13TrainingStage8doLessonEf+0x5960>
  40fa9c:      	ldr	r2, [r4, r2]
  40fa9e:      	ldr	r2, [r2]
  40faa0:      	mov	r0, r2
  40faa2:      	mov.w	r1, #0x0
  40faa6:      	movt	r1, #0x42c8
  40faaa:      	blx	r3
  40faac:      	add	r3, sp, #0x1c
  40faae:      	ldr	r3, [r3]
  40fab0:      	ldr.w	r3, [r3, #0x10c]
  40fab4:      	ldr.w	r3, [r3, #0x114]
  40fab8:      	ldr	r3, [r3]
  40faba:      	adds	r3, #0x90
  40fabc:      	ldr	r3, [r3]
  40fabe:      	add	r2, sp, #0x1c
  40fac0:      	ldr	r2, [r2]
  40fac2:      	ldr.w	r2, [r2, #0x10c]
  40fac6:      	ldr.w	r2, [r2, #0x114]
  40faca:      	mov	r0, r2
  40facc:      	movs	r1, #0x1
  40face:      	blx	r3
  40fad0:      	add	r3, sp, #0x1c
  40fad2:      	ldr	r3, [r3]
  40fad4:      	ldr.w	r3, [r3, #0x174]
  40fad8:      	ldr	r3, [r3]
  40fada:      	adds	r3, #0x90
  40fadc:      	ldr	r3, [r3]
  40fade:      	add	r2, sp, #0x1c
  40fae0:      	ldr	r2, [r2]
  40fae2:      	ldr.w	r2, [r2, #0x174]
  40fae6:      	mov	r0, r2
  40fae8:      	movs	r1, #0x1
  40faea:      	blx	r3
  40faec:      	add	r3, sp, #0x1c
  40faee:      	ldr	r3, [r3]
  40faf0:      	ldr.w	r3, [r3, #0x174]
  40faf4:      	ldr	r3, [r3]
  40faf6:      	adds	r3, #0x98
  40faf8:      	ldr	r3, [r3]
  40fafa:      	add	r2, sp, #0x1c
  40fafc:      	ldr	r2, [r2]
  40fafe:      	ldr.w	r2, [r2, #0x174]
  40fb02:      	mov	r0, r2
  40fb04:      	mov.w	r1, #0x0
  40fb08:      	movt	r1, #0x42b4
  40fb0c:      	blx	r3
  40fb0e:      	add	r3, sp, #0x1c
  40fb10:      	ldr	r3, [r3]
  40fb12:      	ldr.w	r3, [r3, #0x16c]
  40fb16:      	ldr	r3, [r3]
  40fb18:      	adds	r3, #0x4c
  40fb1a:      	ldr	r4, [r3]
  40fb1c:      	add	r3, sp, #0x1c
  40fb1e:      	ldr	r3, [r3]
  40fb20:      	ldr.w	r5, [r3, #0x16c]
  40fb24:      	add	r3, sp, #0x1c
  40fb26:      	ldr	r3, [r3]
  40fb28:      	vldr	s14, [r3, #392]
  40fb2c:      	vmov.f32	s15, #5.000000e+00
  40fb30:      	vmul.f32	s15, s14, s15
  40fb34:      	vcvt.f64.f32	d7, s15
  40fb38:      	vmov	r0, r1, d7
  40fb3c:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x139c38
  40fb40:      	vmov	d6, r0, r1
  40fb44:      	vmov.f64	d7, #1.000000e+01
  40fb48:      	vmul.f64	d7, d6, d7
  40fb4c:      	vcvt.f32.f64	s15, d7
  40fb50:      	add.w	r3, sp, #0x410
  40fb54:      	mov	r0, r3
  40fb56:      	vmov	r1, s15
  40fb5a:      	mov.w	r2, #0x0
  40fb5e:      	bl	0x592cf0 <_ZN7cocos2d7CCPointC2Eff> @ imm = #0x18318e
  40fb62:      	add.w	r3, sp, #0x410
  40fb66:      	mov	r0, r5
  40fb68:      	mov	r1, r3
  40fb6a:      	blx	r4
  40fb6c:      	add	r3, sp, #0x1c
  40fb6e:      	ldr	r3, [r3]
  40fb70:      	ldr.w	r3, [r3, #0x174]
  40fb74:      	ldr	r3, [r3]
  40fb76:      	adds	r3, #0x4c
  40fb78:      	ldr	r4, [r3]
  40fb7a:      	add	r3, sp, #0x1c
  40fb7c:      	ldr	r3, [r3]
  40fb7e:      	ldr.w	r5, [r3, #0x174]
  40fb82:      	add	r3, sp, #0x1c
  40fb84:      	ldr	r3, [r3]
  40fb86:      	ldr.w	r3, [r3, #0x10c]
  40fb8a:      	add.w	r6, r3, #0x170
  40fb8e:      	add.w	r3, sp, #0x400
  40fb92:      	mov	r0, r3
  40fb94:      	mov.w	r1, #0x0
  40fb98:      	movt	r1, #0xc170
  40fb9c:      	mov.w	r2, #0x0
  40fba0:      	movt	r2, #0x428c
  40fba4:      	bl	0x592cf0 <_ZN7cocos2d7CCPointC2Eff> @ imm = #0x183148
  40fba8:      	add.w	r2, sp, #0x410
  40fbac:      	add.w	r3, sp, #0x400
  40fbb0:      	mov	r0, r2
  40fbb2:      	mov	r1, r6
  40fbb4:      	mov	r2, r3
  40fbb6:      	bl	0x4084b4 <_ZN6Tracer14checkCollisionEv+0x428> @ imm = #-0x7706
  40fbba:      	add.w	r3, sp, #0x410
  40fbbe:      	mov	r0, r5
  40fbc0:      	mov	r1, r3
  40fbc2:      	blx	r4
  40fbc4:      	add	r3, sp, #0x1c
  40fbc6:      	ldr	r3, [r3]
  40fbc8:      	ldr.w	r3, [r3, #0x1a8]
  40fbcc:      	ldr.w	r3, [r3, #0x1ac]
  40fbd0:      	ldr.w	r2, [r3, #0x138]
  40fbd4:      	ldr	r3, [pc, #0x64]         @ 0x40fc3c <_ZN13TrainingStage8doLessonEf+0x5964>
  40fbd6:      	add	r3, pc
  40fbd8:      	vldr	d6, [r3]
  40fbdc:      	vldr	d7, [r3, #8]
  40fbe0:      	mov	r0, r2
  40fbe2:      	vmov.f64	d0, d6
  40fbe6:      	vmov.f64	d1, d7
  40fbea:      	bl	0x408674 <_ZN6Tracer14checkCollisionEv+0x5e8> @ imm = #-0x757a
  40fbee:      	add	r3, sp, #0x1c
  40fbf0:      	ldr	r3, [r3]
  40fbf2:      	ldr.w	r3, [r3, #0x1a8]
  40fbf6:      	ldr.w	r3, [r3, #0x1ac]
  40fbfa:      	ldr.w	r2, [r3, #0x138]
  40fbfe:      	ldr	r3, [pc, #0x40]         @ 0x40fc40 <_ZN13TrainingStage8doLessonEf+0x5968>
  40fc00:      	add	r3, pc
  40fc02:      	vldr	d6, [r3]
  40fc06:      	vldr	d7, [r3, #8]
  40fc0a:      	mov	r0, r2
  40fc0c:      	vmov.f64	d0, d6
  40fc10:      	vmov.f64	d1, d7
  40fc14:      	bl	0x408648 <_ZN6Tracer14checkCollisionEv+0x5bc> @ imm = #-0x75d0
  40fc18:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x22f8
// TrainingStage::doLesson  ghidra=0x41fc44-0x41ff99  elf=0x40fc44-0x40ff99  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  40fc44:      	add	r3, sp, #0x1c
  40fc46:      	ldr	r3, [r3]
  40fc48:      	ldr.w	r3, [r3, #0x1a8]
  40fc4c:      	ldr	r3, [r3]
  40fc4e:      	add.w	r3, r3, #0x1e8
  40fc52:      	ldr	r3, [r3]
  40fc54:      	add	r2, sp, #0x1c
  40fc56:      	ldr	r2, [r2]
  40fc58:      	ldr.w	r2, [r2, #0x1a8]
  40fc5c:      	mov	r0, r2
  40fc5e:      	movs	r1, #0x64
  40fc60:      	blx	r3
  40fc62:      	ldr	r3, [pc, #0x34c]        @ 0x40ffb0 <_ZN13TrainingStage8doLessonEf+0x5cd8>
  40fc64:      	ldr	r3, [r4, r3]
  40fc66:      	ldr	r3, [r3]
  40fc68:      	ldr	r3, [r3]
  40fc6a:      	add.w	r3, r3, #0x2a4
  40fc6e:      	ldr	r3, [r3]
  40fc70:      	ldr	r2, [pc, #0x33c]        @ 0x40ffb0 <_ZN13TrainingStage8doLessonEf+0x5cd8>
  40fc72:      	ldr	r2, [r4, r2]
  40fc74:      	ldr	r2, [r2]
  40fc76:      	mov	r0, r2
  40fc78:      	mov.w	r1, #0x0
  40fc7c:      	blx	r3
  40fc7e:      	add	r3, sp, #0x1c
  40fc80:      	ldr	r3, [r3]
  40fc82:      	ldr.w	r3, [r3, #0x17c]
  40fc86:      	ldr	r3, [r3]
  40fc88:      	add.w	r3, r3, #0x238
  40fc8c:      	ldr	r3, [r3]
  40fc8e:      	add	r2, sp, #0x1c
  40fc90:      	ldr	r2, [r2]
  40fc92:      	ldr.w	r2, [r2, #0x17c]
  40fc96:      	mov	r0, r2
  40fc98:      	mov.w	r1, #0x0
  40fc9c:      	movt	r1, #0x435c
  40fca0:      	blx	r3
  40fca2:      	add	r3, sp, #0x1c
  40fca4:      	ldr	r3, [r3]
  40fca6:      	ldr.w	r3, [r3, #0x17c]
  40fcaa:      	ldr	r3, [r3]
  40fcac:      	add.w	r3, r3, #0x230
  40fcb0:      	ldr	r5, [r3]
  40fcb2:      	add	r3, sp, #0x1c
  40fcb4:      	ldr	r3, [r3]
  40fcb6:      	ldr.w	r3, [r3, #0x17c]
  40fcba:      	mov	r6, r3
  40fcbc:      	add	r3, sp, #0x280
  40fcbe:      	mov	r0, r3
  40fcc0:      	vldr	d0, [pc, #732]          @ 0x40ffa0 <_ZN13TrainingStage8doLessonEf+0x5cc8>
  40fcc4:      	vmov.f64	d1, #-1.000000e+00
  40fcc8:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x77f8
  40fccc:      	add	r3, sp, #0x280
  40fcce:      	mov	r2, sp
  40fcd0:      	add.w	r1, r3, #0x8
  40fcd4:      	ldm	r1, {r0, r1}
  40fcd6:      	stm.w	r2, {r0, r1}
  40fcda:      	ldm	r3, {r2, r3}
  40fcdc:      	mov	r0, r6
  40fcde:      	blx	r5
  40fce0:      	add	r3, sp, #0x1c
  40fce2:      	ldr	r3, [r3]
  40fce4:      	ldr.w	r3, [r3, #0x17c]
  40fce8:      	movs	r2, #0x1
  40fcea:      	strb.w	r2, [r3, #0x15a]
  40fcee:      	add	r3, sp, #0x1c
  40fcf0:      	ldr	r3, [r3]
  40fcf2:      	ldr.w	r3, [r3, #0x17c]
  40fcf6:      	ldr	r3, [r3]
  40fcf8:      	add.w	r3, r3, #0x19c
  40fcfc:      	ldr	r3, [r3]
  40fcfe:      	add	r2, sp, #0x1c
  40fd00:      	ldr	r2, [r2]
  40fd02:      	ldr.w	r2, [r2, #0x17c]
  40fd06:      	mov	r0, r2
  40fd08:      	movs	r1, #0x1
  40fd0a:      	blx	r3
  40fd0c:      	add	r3, sp, #0x1c
  40fd0e:      	ldr	r3, [r3]
  40fd10:      	ldr.w	r3, [r3, #0x17c]
  40fd14:      	movs	r2, #0x1
  40fd16:      	strb.w	r2, [r3, #0x11c]
  40fd1a:      	add	r3, sp, #0x1c
  40fd1c:      	ldr	r3, [r3]
  40fd1e:      	ldr.w	r3, [r3, #0x1a8]
  40fd22:      	ldr.w	r3, [r3, #0x1ac]
  40fd26:      	ldr.w	r3, [r3, #0x138]
  40fd2a:      	vldr	d6, [r3, #48]
  40fd2e:      	ldr	r3, [pc, #0x280]        @ 0x40ffb0 <_ZN13TrainingStage8doLessonEf+0x5cd8>
  40fd30:      	ldr	r3, [r4, r3]
  40fd32:      	ldr	r3, [r3]
  40fd34:      	ldr.w	r3, [r3, #0x138]
  40fd38:      	vldr	d5, [r3, #48]
  40fd3c:      	vldr	d7, [pc, #616]          @ 0x40ffa8 <_ZN13TrainingStage8doLessonEf+0x5cd0>
  40fd40:      	vadd.f64	d7, d5, d7
  40fd44:      	vcmpe.f64	d6, d7
  40fd48:      	vmrs	APSR_nzcv, fpscr
  40fd4c:      	ble.w	0x40feec <_ZN13TrainingStage8doLessonEf+0x5c14> @ imm = #0x19c
  40fd50:      	add	r3, sp, #0x1c
  40fd52:      	ldr	r3, [r3]
  40fd54:      	ldr.w	r3, [r3, #0x180]
  40fd58:      	adds	r2, r3, #0x1
  40fd5a:      	add	r3, sp, #0x1c
  40fd5c:      	ldr	r3, [r3]
  40fd5e:      	str.w	r2, [r3, #0x180]
  40fd62:      	add	r3, sp, #0x1c
  40fd64:      	ldr	r3, [r3]
  40fd66:      	mov.w	r2, #0x0
  40fd6a:      	str.w	r2, [r3, #0x188]
  40fd6e:      	add	r3, sp, #0x1c
  40fd70:      	ldr	r3, [r3]
  40fd72:      	ldr.w	r3, [r3, #0x1a8]
  40fd76:      	ldr.w	r3, [r3, #0x1ac]
  40fd7a:      	ldr	r3, [r3]
  40fd7c:      	add.w	r3, r3, #0x238
  40fd80:      	ldr	r3, [r3]
  40fd82:      	add	r2, sp, #0x1c
  40fd84:      	ldr	r2, [r2]
  40fd86:      	ldr.w	r2, [r2, #0x1a8]
  40fd8a:      	ldr.w	r2, [r2, #0x1ac]
  40fd8e:      	mov	r0, r2
  40fd90:      	mov.w	r1, #0x0
  40fd94:      	movt	r1, #0x42f0
  40fd98:      	blx	r3
  40fd9a:      	add	r3, sp, #0x1c
  40fd9c:      	ldr	r3, [r3]
  40fd9e:      	ldr.w	r3, [r3, #0x1a8]
  40fda2:      	ldr.w	r3, [r3, #0x1ac]
  40fda6:      	movs	r2, #0x1
  40fda8:      	strb.w	r2, [r3, #0x11c]
  40fdac:      	add	r3, sp, #0x1c
  40fdae:      	ldr	r3, [r3]
  40fdb0:      	ldr.w	r3, [r3, #0x1a8]
  40fdb4:      	ldr.w	r3, [r3, #0x1ac]
  40fdb8:      	ldr	r3, [r3]
  40fdba:      	add.w	r3, r3, #0x230
  40fdbe:      	ldr	r5, [r3]
  40fdc0:      	add	r3, sp, #0x1c
  40fdc2:      	ldr	r3, [r3]
  40fdc4:      	ldr.w	r3, [r3, #0x1a8]
  40fdc8:      	ldr.w	r3, [r3, #0x1ac]
  40fdcc:      	mov	r6, r3
  40fdce:      	add	r3, sp, #0x290
  40fdd0:      	mov	r0, r3
  40fdd2:      	vldr	d0, [pc, #460]          @ 0x40ffa0 <_ZN13TrainingStage8doLessonEf+0x5cc8>
  40fdd6:      	vldr	d1, [pc, #456]          @ 0x40ffa0 <_ZN13TrainingStage8doLessonEf+0x5cc8>
  40fdda:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x790a
  40fdde:      	add	r3, sp, #0x290
  40fde0:      	mov	r2, sp
  40fde2:      	add.w	r1, r3, #0x8
  40fde6:      	ldm	r1, {r0, r1}
  40fde8:      	stm.w	r2, {r0, r1}
  40fdec:      	ldm	r3, {r2, r3}
  40fdee:      	mov	r0, r6
  40fdf0:      	blx	r5
  40fdf2:      	add	r3, sp, #0x1c
  40fdf4:      	ldr	r3, [r3]
  40fdf6:      	ldr.w	r3, [r3, #0x1a8]
  40fdfa:      	ldr.w	r3, [r3, #0x1ac]
  40fdfe:      	ldr	r3, [r3]
  40fe00:      	add.w	r3, r3, #0x1e0
  40fe04:      	ldr	r3, [r3]
  40fe06:      	add	r2, sp, #0x1c
  40fe08:      	ldr	r2, [r2]
  40fe0a:      	ldr.w	r2, [r2, #0x1a8]
  40fe0e:      	ldr.w	r2, [r2, #0x1ac]
  40fe12:      	mov	r0, r2
  40fe14:      	movs	r1, #0x1
  40fe16:      	blx	r3
  40fe18:      	add	r3, sp, #0x1c
  40fe1a:      	ldr	r3, [r3]
  40fe1c:      	ldr.w	r3, [r3, #0x1a8]
  40fe20:      	ldr.w	r3, [r3, #0x1ac]
  40fe24:      	ldr.w	r2, [r3, #0x138]
  40fe28:      	ldr	r3, [pc, #0x188]        @ 0x40ffb4 <_ZN13TrainingStage8doLessonEf+0x5cdc>
  40fe2a:      	add	r3, pc
  40fe2c:      	vldr	d6, [r3]
  40fe30:      	vldr	d7, [r3, #8]
  40fe34:      	mov	r0, r2
  40fe36:      	vmov.f64	d0, d6
  40fe3a:      	vmov.f64	d1, d7
  40fe3e:      	bl	0x408674 <_ZN6Tracer14checkCollisionEv+0x5e8> @ imm = #-0x77ce
  40fe42:      	add	r3, sp, #0x1c
  40fe44:      	ldr	r3, [r3]
  40fe46:      	ldr.w	r3, [r3, #0x1a8]
  40fe4a:      	ldr.w	r3, [r3, #0x1ac]
  40fe4e:      	ldr.w	r2, [r3, #0x138]
  40fe52:      	ldr	r3, [pc, #0x164]        @ 0x40ffb8 <_ZN13TrainingStage8doLessonEf+0x5ce0>
  40fe54:      	add	r3, pc
  40fe56:      	vldr	d6, [r3]
  40fe5a:      	vldr	d7, [r3, #8]
  40fe5e:      	mov	r0, r2
  40fe60:      	vmov.f64	d0, d6
  40fe64:      	vmov.f64	d1, d7
  40fe68:      	bl	0x408648 <_ZN6Tracer14checkCollisionEv+0x5bc> @ imm = #-0x7824
  40fe6c:      	add	r3, sp, #0x1c
  40fe6e:      	ldr	r3, [r3]
  40fe70:      	ldr.w	r5, [r3, #0x10c]
  40fe74:      	add.w	r3, sp, #0x400
  40fe78:      	mov	r0, r3
  40fe7a:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x37a576
  40fe7e:      	add.w	r2, sp, #0x410
  40fe82:      	add.w	r3, sp, #0x400
  40fe86:      	mov	r0, r2
  40fe88:      	ldr	r2, [pc, #0x130]        @ 0x40ffbc <_ZN13TrainingStage8doLessonEf+0x5ce4>
  40fe8a:      	add	r2, pc
  40fe8c:      	mov	r1, r2
  40fe8e:      	mov	r2, r3
  40fe90:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3a6bcc
  40fe94:      	movs	r0, #0xff
  40fe96:      	movs	r1, #0x0
  40fe98:      	movs	r2, #0x0
  40fe9a:      	bl	0x408458 <_ZN6Tracer14checkCollisionEv+0x3cc> @ imm = #-0x7a46
  40fe9e:      	mov	r2, r0
  40fea0:      	add	r3, sp, #0xa8
  40fea2:      	mov	r1, r2
  40fea4:      	strb	r1, [r3]
  40fea6:      	ubfx	r1, r2, #0x8, #0x8
  40feaa:      	strb	r1, [r3, #0x1]
  40feac:      	ubfx	r2, r2, #0x10, #0x8
  40feb0:      	strb	r2, [r3, #0x2]
  40feb2:      	add.w	r2, sp, #0x410
  40feb6:      	add	r3, sp, #0xa8
  40feb8:      	mov	r0, r5
  40feba:      	mov	r1, r2
  40febc:      	ldr	r2, [r3]
  40febe:      	movs	r3, #0x3
  40fec0:      	bl	0x33d2c0 <_ZN3HUD10addMessageESsN7cocos2d10_ccColor3BEs> @ imm = #-0xd2c04
  40fec4:      	add.w	r3, sp, #0x410
  40fec8:      	mov	r0, r3
  40feca:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3a5a46
  40fece:      	add.w	r3, sp, #0x400
  40fed2:      	mov	r0, r3
  40fed4:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x37a524
  40fed8:      	ldr	r3, [pc, #0xe4]         @ 0x40ffc0 <_ZN13TrainingStage8doLessonEf+0x5ce8>
  40feda:      	ldr	r3, [r4, r3]
  40fedc:      	ldr	r3, [r3]
  40fede:      	mov	r0, r3
  40fee0:      	movs	r1, #0x52
  40fee2:      	movs	r2, #0x1
  40fee4:      	bl	0x3f7d40 <_ZN5Sound18playSoundWithVoiceEii> @ imm = #-0x181a8
  40fee8:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x2028
  40feec:      	add	r3, sp, #0x1c
  40feee:      	ldr	r3, [r3]
  40fef0:      	ldr.w	r3, [r3, #0x1a8]
  40fef4:      	ldr.w	r3, [r3, #0x1ac]
  40fef8:      	ldr	r3, [r3]
  40fefa:      	add.w	r3, r3, #0x238
  40fefe:      	ldr	r3, [r3]
  40ff00:      	add	r2, sp, #0x1c
  40ff02:      	ldr	r2, [r2]
  40ff04:      	ldr.w	r2, [r2, #0x1a8]
  40ff08:      	ldr.w	r2, [r2, #0x1ac]
  40ff0c:      	mov	r0, r2
  40ff0e:      	mov.w	r1, #0x0
  40ff12:      	movt	r1, #0x4334
  40ff16:      	blx	r3
  40ff18:      	add	r3, sp, #0x1c
  40ff1a:      	ldr	r3, [r3]
  40ff1c:      	ldr.w	r3, [r3, #0x1a8]
  40ff20:      	ldr.w	r3, [r3, #0x1ac]
  40ff24:      	movs	r2, #0x1
  40ff26:      	strb.w	r2, [r3, #0x11c]
  40ff2a:      	add	r3, sp, #0x1c
  40ff2c:      	ldr	r3, [r3]
  40ff2e:      	ldr.w	r3, [r3, #0x1a8]
  40ff32:      	ldr.w	r3, [r3, #0x1ac]
  40ff36:      	ldr	r3, [r3]
  40ff38:      	add.w	r3, r3, #0x230
  40ff3c:      	ldr	r4, [r3]
  40ff3e:      	add	r3, sp, #0x1c
  40ff40:      	ldr	r3, [r3]
  40ff42:      	ldr.w	r3, [r3, #0x1a8]
  40ff46:      	ldr.w	r3, [r3, #0x1ac]
  40ff4a:      	mov	r5, r3
  40ff4c:      	add	r3, sp, #0x2a0
  40ff4e:      	mov	r0, r3
  40ff50:      	vldr	d0, [pc, #76]           @ 0x40ffa0 <_ZN13TrainingStage8doLessonEf+0x5cc8>
  40ff54:      	vmov.f64	d1, #1.000000e+00
  40ff58:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x7a88
  40ff5c:      	add	r3, sp, #0x2a0
  40ff5e:      	mov	r2, sp
  40ff60:      	add.w	r1, r3, #0x8
  40ff64:      	ldm	r1, {r0, r1}
  40ff66:      	stm.w	r2, {r0, r1}
  40ff6a:      	ldm	r3, {r2, r3}
  40ff6c:      	mov	r0, r5
  40ff6e:      	blx	r4
  40ff70:      	add	r3, sp, #0x1c
  40ff72:      	ldr	r3, [r3]
  40ff74:      	ldr.w	r3, [r3, #0x1a8]
  40ff78:      	ldr.w	r3, [r3, #0x1ac]
  40ff7c:      	ldr	r3, [r3]
  40ff7e:      	add.w	r3, r3, #0x1e0
  40ff82:      	ldr	r3, [r3]
  40ff84:      	add	r2, sp, #0x1c
  40ff86:      	ldr	r2, [r2]
  40ff88:      	ldr.w	r2, [r2, #0x1a8]
  40ff8c:      	ldr.w	r2, [r2, #0x1ac]
  40ff90:      	mov	r0, r2
  40ff92:      	movs	r1, #0x1
  40ff94:      	blx	r3
  40ff96:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x1f7a
// TrainingStage::doLesson  ghidra=0x41ffc4-0x42030d  elf=0x40ffc4-0x41030d  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  40ffc4:      	ldr	r3, [pc, #0x350]        @ 0x410318 <_ZN13TrainingStage8doLessonEf+0x6040>
  40ffc6:      	ldr	r3, [r4, r3]
  40ffc8:      	ldr	r3, [r3]
  40ffca:      	ldr	r3, [r3]
  40ffcc:      	add.w	r3, r3, #0x2a4
  40ffd0:      	ldr	r3, [r3]
  40ffd2:      	ldr	r2, [pc, #0x344]        @ 0x410318 <_ZN13TrainingStage8doLessonEf+0x6040>
  40ffd4:      	ldr	r2, [r4, r2]
  40ffd6:      	ldr	r2, [r2]
  40ffd8:      	mov	r0, r2
  40ffda:      	mov.w	r1, #0x0
  40ffde:      	blx	r3
  40ffe0:      	add	r3, sp, #0x1c
  40ffe2:      	ldr	r3, [r3]
  40ffe4:      	ldr.w	r3, [r3, #0x17c]
  40ffe8:      	ldr	r3, [r3]
  40ffea:      	add.w	r3, r3, #0x238
  40ffee:      	ldr	r3, [r3]
  40fff0:      	add	r2, sp, #0x1c
  40fff2:      	ldr	r2, [r2]
  40fff4:      	ldr.w	r2, [r2, #0x17c]
  40fff8:      	mov	r0, r2
  40fffa:      	mov.w	r1, #0x0
  40fffe:      	movt	r1, #0x4334
  410002:      	blx	r3
  410004:      	add	r3, sp, #0x1c
  410006:      	ldr	r3, [r3]
  410008:      	ldr.w	r3, [r3, #0x17c]
  41000c:      	ldr	r3, [r3]
  41000e:      	add.w	r3, r3, #0x230
  410012:      	ldr	r4, [r3]
  410014:      	add	r3, sp, #0x1c
  410016:      	ldr	r3, [r3]
  410018:      	ldr.w	r3, [r3, #0x17c]
  41001c:      	mov	r5, r3
  41001e:      	add	r3, sp, #0x2b0
  410020:      	mov	r0, r3
  410022:      	vldr	d0, [pc, #748]          @ 0x410310 <_ZN13TrainingStage8doLessonEf+0x6038>
  410026:      	vmov.f64	d1, #-1.000000e+00
  41002a:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x7b5a
  41002e:      	add	r3, sp, #0x2b0
  410030:      	mov	r2, sp
  410032:      	add.w	r1, r3, #0x8
  410036:      	ldm	r1, {r0, r1}
  410038:      	stm.w	r2, {r0, r1}
  41003c:      	ldm	r3, {r2, r3}
  41003e:      	mov	r0, r5
  410040:      	blx	r4
  410042:      	add	r3, sp, #0x1c
  410044:      	ldr	r3, [r3]
  410046:      	ldr.w	r3, [r3, #0x17c]
  41004a:      	movs	r2, #0x1
  41004c:      	strb.w	r2, [r3, #0x15a]
  410050:      	add	r3, sp, #0x1c
  410052:      	ldr	r3, [r3]
  410054:      	ldr.w	r3, [r3, #0x17c]
  410058:      	ldr	r3, [r3]
  41005a:      	add.w	r3, r3, #0x19c
  41005e:      	ldr	r3, [r3]
  410060:      	add	r2, sp, #0x1c
  410062:      	ldr	r2, [r2]
  410064:      	ldr.w	r2, [r2, #0x17c]
  410068:      	mov	r0, r2
  41006a:      	movs	r1, #0x1
  41006c:      	blx	r3
  41006e:      	add	r3, sp, #0x1c
  410070:      	ldr	r3, [r3]
  410072:      	ldr.w	r3, [r3, #0x17c]
  410076:      	movs	r2, #0x1
  410078:      	strb.w	r2, [r3, #0x11c]
  41007c:      	add	r3, sp, #0x1c
  41007e:      	ldr	r3, [r3]
  410080:      	ldr.w	r3, [r3, #0x1a8]
  410084:      	ldr.w	r3, [r3, #0x1ac]
  410088:      	ldr.w	r2, [r3, #0x138]
  41008c:      	ldr	r3, [pc, #0x28c]        @ 0x41031c <_ZN13TrainingStage8doLessonEf+0x6044>
  41008e:      	add	r3, pc
  410090:      	vldr	d6, [r3]
  410094:      	vldr	d7, [r3, #8]
  410098:      	mov	r0, r2
  41009a:      	vmov.f64	d0, d6
  41009e:      	vmov.f64	d1, d7
  4100a2:      	bl	0x408674 <_ZN6Tracer14checkCollisionEv+0x5e8> @ imm = #-0x7a32
  4100a6:      	add	r3, sp, #0x1c
  4100a8:      	ldr	r3, [r3]
  4100aa:      	ldr.w	r3, [r3, #0x1a8]
  4100ae:      	ldr.w	r3, [r3, #0x1ac]
  4100b2:      	ldr.w	r2, [r3, #0x138]
  4100b6:      	ldr	r3, [pc, #0x268]        @ 0x410320 <_ZN13TrainingStage8doLessonEf+0x6048>
  4100b8:      	add	r3, pc
  4100ba:      	vldr	d6, [r3]
  4100be:      	vldr	d7, [r3, #8]
  4100c2:      	mov	r0, r2
  4100c4:      	vmov.f64	d0, d6
  4100c8:      	vmov.f64	d1, d7
  4100cc:      	bl	0x408648 <_ZN6Tracer14checkCollisionEv+0x5bc> @ imm = #-0x7a88
  4100d0:      	add	r3, sp, #0x1c
  4100d2:      	ldr	r3, [r3]
  4100d4:      	ldr.w	r3, [r3, #0x1a8]
  4100d8:      	ldr.w	r3, [r3, #0x1ac]
  4100dc:      	ldr.w	r5, [r3, #0x138]
  4100e0:      	add	r3, sp, #0x1c
  4100e2:      	ldr	r3, [r3]
  4100e4:      	ldr.w	r3, [r3, #0x1a8]
  4100e8:      	ldr.w	r3, [r3, #0x1ac]
  4100ec:      	ldr.w	r4, [r3, #0x138]
  4100f0:      	add	r3, sp, #0x1c
  4100f2:      	ldr	r3, [r3]
  4100f4:      	vldr	s14, [r3, #392]
  4100f8:      	vmov.f32	s15, #3.000000e+00
  4100fc:      	vmul.f32	s15, s14, s15
  410100:      	vcvt.f64.f32	d7, s15
  410104:      	vmov	r0, r1, d7
  410108:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x13a204
  41010c:      	mov	r2, r0
  41010e:      	mov	r3, r1
  410110:      	add	r1, sp, #0x2c0
  410112:      	mov	r0, r1
  410114:      	vldr	d0, [pc, #504]          @ 0x410310 <_ZN13TrainingStage8doLessonEf+0x6038>
  410118:      	vmov	d1, r2, r3
  41011c:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x7c4c
  410120:      	add	r2, sp, #0x8
  410122:      	vldr	d4, [r4, #40]
  410126:      	vldr	d5, [r4, #48]
  41012a:      	add	r3, sp, #0x2c0
  41012c:      	vldr	d6, [r3]
  410130:      	vldr	d7, [r3, #8]
  410134:      	mov	r0, r2
  410136:      	vmov.f64	d0, d4
  41013a:      	vmov.f64	d1, d5
  41013e:      	vmov.f64	d2, d6
  410142:      	vmov.f64	d3, d7
  410146:      	bl	0x4084fc <_ZN6Tracer14checkCollisionEv+0x470> @ imm = #-0x7c4e
  41014a:      	add	r3, sp, #0x8
  41014c:      	add.w	r4, r5, #0x28
  410150:      	ldm	r3, {r0, r1, r2, r3}
  410152:      	stm.w	r4, {r0, r1, r2, r3}
  410156:      	add	r3, sp, #0x1c
  410158:      	ldr	r3, [r3]
  41015a:      	vldr	s14, [r3, #392]
  41015e:      	vmov.f32	s15, #3.000000e+00
  410162:      	vcmpe.f32	s14, s15
  410166:      	vmrs	APSR_nzcv, fpscr
  41016a:      	bgt	0x410170 <_ZN13TrainingStage8doLessonEf+0x5e98> @ imm = #0x2
  41016c:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x1da4
  410170:      	add	r3, sp, #0x1c
  410172:      	ldr	r3, [r3]
  410174:      	ldr.w	r3, [r3, #0x180]
  410178:      	adds	r2, r3, #0x1
  41017a:      	add	r3, sp, #0x1c
  41017c:      	ldr	r3, [r3]
  41017e:      	str.w	r2, [r3, #0x180]
  410182:      	add	r3, sp, #0x1c
  410184:      	ldr	r3, [r3]
  410186:      	mov.w	r2, #0x0
  41018a:      	str.w	r2, [r3, #0x188]
  41018e:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x1d82
  410192:      	ldr	r3, [pc, #0x184]        @ 0x410318 <_ZN13TrainingStage8doLessonEf+0x6040>
  410194:      	ldr	r3, [r4, r3]
  410196:      	ldr	r3, [r3]
  410198:      	ldr	r3, [r3]
  41019a:      	add.w	r3, r3, #0x2a4
  41019e:      	ldr	r3, [r3]
  4101a0:      	ldr	r2, [pc, #0x174]        @ 0x410318 <_ZN13TrainingStage8doLessonEf+0x6040>
  4101a2:      	ldr	r2, [r4, r2]
  4101a4:      	ldr	r2, [r2]
  4101a6:      	mov	r0, r2
  4101a8:      	mov.w	r1, #0x0
  4101ac:      	blx	r3
  4101ae:      	add	r3, sp, #0x1c
  4101b0:      	ldr	r3, [r3]
  4101b2:      	ldr.w	r3, [r3, #0x17c]
  4101b6:      	ldr	r3, [r3]
  4101b8:      	add.w	r3, r3, #0x238
  4101bc:      	ldr	r3, [r3]
  4101be:      	add	r2, sp, #0x1c
  4101c0:      	ldr	r2, [r2]
  4101c2:      	ldr.w	r2, [r2, #0x17c]
  4101c6:      	mov	r0, r2
  4101c8:      	mov.w	r1, #0x0
  4101cc:      	movt	r1, #0x4334
  4101d0:      	blx	r3
  4101d2:      	add	r3, sp, #0x1c
  4101d4:      	ldr	r3, [r3]
  4101d6:      	ldr.w	r3, [r3, #0x17c]
  4101da:      	ldr	r3, [r3]
  4101dc:      	add.w	r3, r3, #0x230
  4101e0:      	ldr	r5, [r3]
  4101e2:      	add	r3, sp, #0x1c
  4101e4:      	ldr	r3, [r3]
  4101e6:      	ldr.w	r3, [r3, #0x17c]
  4101ea:      	mov	r6, r3
  4101ec:      	add	r3, sp, #0x2d0
  4101ee:      	mov	r0, r3
  4101f0:      	vldr	d0, [pc, #284]          @ 0x410310 <_ZN13TrainingStage8doLessonEf+0x6038>
  4101f4:      	vmov.f64	d1, #-1.000000e+00
  4101f8:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x7d28
  4101fc:      	add	r3, sp, #0x2d0
  4101fe:      	mov	r2, sp
  410200:      	add.w	r1, r3, #0x8
  410204:      	ldm	r1, {r0, r1}
  410206:      	stm.w	r2, {r0, r1}
  41020a:      	ldm	r3, {r2, r3}
  41020c:      	mov	r0, r6
  41020e:      	blx	r5
  410210:      	add	r3, sp, #0x1c
  410212:      	ldr	r3, [r3]
  410214:      	ldr.w	r3, [r3, #0x17c]
  410218:      	movs	r2, #0x1
  41021a:      	strb.w	r2, [r3, #0x15a]
  41021e:      	add	r3, sp, #0x1c
  410220:      	ldr	r3, [r3]
  410222:      	ldr.w	r3, [r3, #0x17c]
  410226:      	ldr	r3, [r3]
  410228:      	add.w	r3, r3, #0x19c
  41022c:      	ldr	r3, [r3]
  41022e:      	add	r2, sp, #0x1c
  410230:      	ldr	r2, [r2]
  410232:      	ldr.w	r2, [r2, #0x17c]
  410236:      	mov	r0, r2
  410238:      	movs	r1, #0x1
  41023a:      	blx	r3
  41023c:      	add	r3, sp, #0x1c
  41023e:      	ldr	r3, [r3]
  410240:      	ldr.w	r3, [r3, #0x17c]
  410244:      	movs	r2, #0x1
  410246:      	strb.w	r2, [r3, #0x11c]
  41024a:      	add	r3, sp, #0x1c
  41024c:      	ldr	r3, [r3]
  41024e:      	ldr.w	r3, [r3, #0x1a8]
  410252:      	ldr.w	r3, [r3, #0x1ac]
  410256:      	ldr	r3, [r3]
  410258:      	add.w	r3, r3, #0x238
  41025c:      	ldr	r3, [r3]
  41025e:      	add	r2, sp, #0x1c
  410260:      	ldr	r2, [r2]
  410262:      	ldr.w	r2, [r2, #0x1a8]
  410266:      	ldr.w	r2, [r2, #0x1ac]
  41026a:      	mov	r0, r2
  41026c:      	mov.w	r1, #0x0
  410270:      	movt	r1, #0x4334
  410274:      	blx	r3
  410276:      	add	r3, sp, #0x1c
  410278:      	ldr	r3, [r3]
  41027a:      	ldr.w	r3, [r3, #0x1a8]
  41027e:      	ldr.w	r3, [r3, #0x1ac]
  410282:      	movs	r2, #0x1
  410284:      	strb.w	r2, [r3, #0x11c]
  410288:      	add	r3, sp, #0x1c
  41028a:      	ldr	r3, [r3]
  41028c:      	ldr.w	r3, [r3, #0x1a8]
  410290:      	ldr.w	r3, [r3, #0x1ac]
  410294:      	ldr	r3, [r3]
  410296:      	add.w	r3, r3, #0x230
  41029a:      	ldr	r5, [r3]
  41029c:      	add	r3, sp, #0x1c
  41029e:      	ldr	r3, [r3]
  4102a0:      	ldr.w	r3, [r3, #0x1a8]
  4102a4:      	ldr.w	r3, [r3, #0x1ac]
  4102a8:      	mov	r6, r3
  4102aa:      	add	r3, sp, #0x2e0
  4102ac:      	mov	r0, r3
  4102ae:      	vldr	d0, [pc, #96]           @ 0x410310 <_ZN13TrainingStage8doLessonEf+0x6038>
  4102b2:      	vmov.f64	d1, #1.000000e+00
  4102b6:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x7de6
  4102ba:      	add	r3, sp, #0x2e0
  4102bc:      	mov	r2, sp
  4102be:      	add.w	r1, r3, #0x8
  4102c2:      	ldm	r1, {r0, r1}
  4102c4:      	stm.w	r2, {r0, r1}
  4102c8:      	ldm	r3, {r2, r3}
  4102ca:      	mov	r0, r6
  4102cc:      	blx	r5
  4102ce:      	add	r3, sp, #0x1c
  4102d0:      	ldr	r3, [r3]
  4102d2:      	ldr.w	r3, [r3, #0x1a8]
  4102d6:      	ldr.w	r3, [r3, #0x1ac]
  4102da:      	ldr	r3, [r3]
  4102dc:      	add.w	r3, r3, #0x1e0
  4102e0:      	ldr	r3, [r3]
  4102e2:      	add	r2, sp, #0x1c
  4102e4:      	ldr	r2, [r2]
  4102e6:      	ldr.w	r2, [r2, #0x1a8]
  4102ea:      	ldr.w	r2, [r2, #0x1ac]
  4102ee:      	mov	r0, r2
  4102f0:      	movs	r1, #0x1
  4102f2:      	blx	r3
  4102f4:      	add	r3, sp, #0x1c
  4102f6:      	ldr	r3, [r3]
  4102f8:      	vldr	s14, [r3, #392]
  4102fc:      	vmov.f32	s15, #3.000000e+00
  410300:      	vcmpe.f32	s14, s15
  410304:      	vmrs	APSR_nzcv, fpscr
  410308:      	bgt	0x410324 <_ZN13TrainingStage8doLessonEf+0x604c> @ imm = #0x18
  41030a:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x1c06
// TrainingStage::doLesson  ghidra=0x420324-0x4206a5  elf=0x410324-0x4106a5  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  410324:      	add	r3, sp, #0x1c
  410326:      	ldr	r3, [r3]
  410328:      	ldr.w	r3, [r3, #0x180]
  41032c:      	adds	r2, r3, #0x1
  41032e:      	add	r3, sp, #0x1c
  410330:      	ldr	r3, [r3]
  410332:      	str.w	r2, [r3, #0x180]
  410336:      	add	r3, sp, #0x1c
  410338:      	ldr	r3, [r3]
  41033a:      	mov.w	r2, #0x0
  41033e:      	str.w	r2, [r3, #0x188]
  410342:      	add	r3, sp, #0x1c
  410344:      	ldr	r3, [r3]
  410346:      	ldr.w	r5, [r3, #0x1a4]
  41034a:      	add	r3, sp, #0x1c
  41034c:      	ldr	r3, [r3]
  41034e:      	ldr.w	r3, [r3, #0x1a8]
  410352:      	ldr	r3, [r3]
  410354:      	add.w	r3, r3, #0x1c0
  410358:      	ldr	r3, [r3]
  41035a:      	add	r2, sp, #0x1c
  41035c:      	ldr	r2, [r2]
  41035e:      	ldr.w	r2, [r2, #0x1a8]
  410362:      	add.w	r1, sp, #0x410
  410366:      	mov	r0, r1
  410368:      	mov	r1, r2
  41036a:      	blx	r3
  41036c:      	add.w	r3, sp, #0x410
  410370:      	mov	r0, r5
  410372:      	mov	r1, r3
  410374:      	bl	0x319ed0 <_ZN12EnemyManager19removeHumanoidDroneESs> @ imm = #-0xf64a8
  410378:      	add.w	r3, sp, #0x410
  41037c:      	mov	r0, r3
  41037e:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3a5592
  410382:      	add	r3, sp, #0x1c
  410384:      	ldr	r3, [r3]
  410386:      	movs	r2, #0x0
  410388:      	str.w	r2, [r3, #0x1a8]
  41038c:      	add	r3, sp, #0x1c
  41038e:      	ldr	r3, [r3]
  410390:      	ldr.w	r5, [r3, #0x10c]
  410394:      	add.w	r3, sp, #0x400
  410398:      	mov	r0, r3
  41039a:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x37a056
  41039e:      	add.w	r2, sp, #0x410
  4103a2:      	add.w	r3, sp, #0x400
  4103a6:      	mov	r0, r2
  4103a8:      	ldr	r2, [pc, #0x304]        @ 0x4106b0 <_ZN13TrainingStage8doLessonEf+0x63d8>
  4103aa:      	add	r2, pc
  4103ac:      	mov	r1, r2
  4103ae:      	mov	r2, r3
  4103b0:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3a66ac
  4103b4:      	movs	r0, #0x0
  4103b6:      	movs	r1, #0x0
  4103b8:      	movs	r2, #0xff
  4103ba:      	bl	0x408458 <_ZN6Tracer14checkCollisionEv+0x3cc> @ imm = #-0x7f66
  4103be:      	mov	r2, r0
  4103c0:      	add	r3, sp, #0xac
  4103c2:      	mov	r1, r2
  4103c4:      	strb	r1, [r3]
  4103c6:      	ubfx	r1, r2, #0x8, #0x8
  4103ca:      	strb	r1, [r3, #0x1]
  4103cc:      	ubfx	r2, r2, #0x10, #0x8
  4103d0:      	strb	r2, [r3, #0x2]
  4103d2:      	add.w	r2, sp, #0x410
  4103d6:      	add	r3, sp, #0xac
  4103d8:      	mov	r0, r5
  4103da:      	mov	r1, r2
  4103dc:      	ldr	r2, [r3]
  4103de:      	movs	r3, #0x1
  4103e0:      	bl	0x33d2c0 <_ZN3HUD10addMessageESsN7cocos2d10_ccColor3BEs> @ imm = #-0xd3124
  4103e4:      	add.w	r3, sp, #0x410
  4103e8:      	mov	r0, r3
  4103ea:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3a5526
  4103ee:      	add.w	r3, sp, #0x400
  4103f2:      	mov	r0, r3
  4103f4:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x37a004
  4103f8:      	ldr	r3, [pc, #0x2b8]        @ 0x4106b4 <_ZN13TrainingStage8doLessonEf+0x63dc>
  4103fa:      	ldr	r3, [r4, r3]
  4103fc:      	ldr	r3, [r3]
  4103fe:      	mov	r0, r3
  410400:      	movs	r1, #0x53
  410402:      	movs	r2, #0x1
  410404:      	bl	0x3f7d40 <_ZN5Sound18playSoundWithVoiceEii> @ imm = #-0x186c8
  410408:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x1b08
  41040c:      	ldr	r3, [pc, #0x2a8]        @ 0x4106b8 <_ZN13TrainingStage8doLessonEf+0x63e0>
  41040e:      	ldr	r3, [r4, r3]
  410410:      	ldr	r3, [r3]
  410412:      	ldr	r3, [r3]
  410414:      	add.w	r3, r3, #0x2a4
  410418:      	ldr	r3, [r3]
  41041a:      	ldr	r2, [pc, #0x29c]        @ 0x4106b8 <_ZN13TrainingStage8doLessonEf+0x63e0>
  41041c:      	ldr	r2, [r4, r2]
  41041e:      	ldr	r2, [r2]
  410420:      	mov	r0, r2
  410422:      	mov.w	r1, #0x0
  410426:      	blx	r3
  410428:      	add	r3, sp, #0x1c
  41042a:      	ldr	r3, [r3]
  41042c:      	ldr.w	r3, [r3, #0x17c]
  410430:      	ldr	r3, [r3]
  410432:      	add.w	r3, r3, #0x238
  410436:      	ldr	r3, [r3]
  410438:      	add	r2, sp, #0x1c
  41043a:      	ldr	r2, [r2]
  41043c:      	ldr.w	r2, [r2, #0x17c]
  410440:      	mov	r0, r2
  410442:      	mov.w	r1, #0x0
  410446:      	movt	r1, #0x4334
  41044a:      	blx	r3
  41044c:      	add	r3, sp, #0x1c
  41044e:      	ldr	r3, [r3]
  410450:      	ldr.w	r3, [r3, #0x17c]
  410454:      	ldr	r3, [r3]
  410456:      	add.w	r3, r3, #0x230
  41045a:      	ldr	r5, [r3]
  41045c:      	add	r3, sp, #0x1c
  41045e:      	ldr	r3, [r3]
  410460:      	ldr.w	r3, [r3, #0x17c]
  410464:      	mov	r6, r3
  410466:      	add	r3, sp, #0x2f0
  410468:      	mov	r0, r3
  41046a:      	vldr	d0, [pc, #572]          @ 0x4106a8 <_ZN13TrainingStage8doLessonEf+0x63d0>
  41046e:      	vldr	d1, [pc, #568]          @ 0x4106a8 <_ZN13TrainingStage8doLessonEf+0x63d0>
  410472:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x7fa2
  410476:      	add	r3, sp, #0x2f0
  410478:      	mov	r2, sp
  41047a:      	add.w	r1, r3, #0x8
  41047e:      	ldm	r1, {r0, r1}
  410480:      	stm.w	r2, {r0, r1}
  410484:      	ldm	r3, {r2, r3}
  410486:      	mov	r0, r6
  410488:      	blx	r5
  41048a:      	add	r3, sp, #0x1c
  41048c:      	ldr	r3, [r3]
  41048e:      	ldr.w	r3, [r3, #0x17c]
  410492:      	movs	r2, #0x0
  410494:      	strb.w	r2, [r3, #0x15a]
  410498:      	add	r3, sp, #0x1c
  41049a:      	ldr	r3, [r3]
  41049c:      	ldr.w	r3, [r3, #0x17c]
  4104a0:      	ldr	r3, [r3]
  4104a2:      	add.w	r3, r3, #0x19c
  4104a6:      	ldr	r3, [r3]
  4104a8:      	add	r2, sp, #0x1c
  4104aa:      	ldr	r2, [r2]
  4104ac:      	ldr.w	r2, [r2, #0x17c]
  4104b0:      	mov	r0, r2
  4104b2:      	movs	r1, #0x1
  4104b4:      	blx	r3
  4104b6:      	add	r3, sp, #0x1c
  4104b8:      	ldr	r3, [r3]
  4104ba:      	ldr.w	r3, [r3, #0x17c]
  4104be:      	movs	r2, #0x0
  4104c0:      	strb.w	r2, [r3, #0x11c]
  4104c4:      	add	r3, sp, #0x1c
  4104c6:      	ldr	r3, [r3]
  4104c8:      	vldr	s14, [r3, #392]
  4104cc:      	vmov.f32	s15, #1.000000e+00
  4104d0:      	vcmpe.f32	s14, s15
  4104d4:      	vmrs	APSR_nzcv, fpscr
  4104d8:      	bpl	0x4104e6 <_ZN13TrainingStage8doLessonEf+0x620e> @ imm = #0xa
  4104da:      	add	r2, sp, #0x1c
  4104dc:      	add	r3, sp, #0x18
  4104de:      	ldr	r0, [r2]
  4104e0:      	ldr	r1, [r3]
  4104e2:      	bl	0x409e30 <_ZN13TrainingStage11headChatterEf> @ imm = #-0x66b6
  4104e6:      	add	r3, sp, #0x1c
  4104e8:      	ldr	r3, [r3]
  4104ea:      	vldr	s14, [r3, #392]
  4104ee:      	vmov.f32	s15, #1.500000e+00
  4104f2:      	vcmpe.f32	s14, s15
  4104f6:      	vmrs	APSR_nzcv, fpscr
  4104fa:      	bgt	0x410500 <_ZN13TrainingStage8doLessonEf+0x6228> @ imm = #0x2
  4104fc:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x1a14
  410500:      	add	r3, sp, #0x1c
  410502:      	ldr	r3, [r3]
  410504:      	ldr.w	r3, [r3, #0x180]
  410508:      	adds	r2, r3, #0x1
  41050a:      	add	r3, sp, #0x1c
  41050c:      	ldr	r3, [r3]
  41050e:      	str.w	r2, [r3, #0x180]
  410512:      	add	r3, sp, #0x1c
  410514:      	ldr	r3, [r3]
  410516:      	mov.w	r2, #0x0
  41051a:      	str.w	r2, [r3, #0x188]
  41051e:      	add	r3, sp, #0x1c
  410520:      	ldr	r3, [r3]
  410522:      	ldr.w	r5, [r3, #0x10c]
  410526:      	add.w	r3, sp, #0x400
  41052a:      	mov	r0, r3
  41052c:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x379ec4
  410530:      	add.w	r2, sp, #0x410
  410534:      	add.w	r3, sp, #0x400
  410538:      	mov	r0, r2
  41053a:      	ldr	r2, [pc, #0x180]        @ 0x4106bc <_ZN13TrainingStage8doLessonEf+0x63e4>
  41053c:      	add	r2, pc
  41053e:      	mov	r1, r2
  410540:      	mov	r2, r3
  410542:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3a651a
  410546:      	movs	r0, #0x0
  410548:      	movs	r1, #0x0
  41054a:      	movs	r2, #0xff
  41054c:      	bl	0x408458 <_ZN6Tracer14checkCollisionEv+0x3cc> @ imm = #-0x80f8
  410550:      	mov	r2, r0
  410552:      	add	r3, sp, #0xb0
  410554:      	mov	r1, r2
  410556:      	strb	r1, [r3]
  410558:      	ubfx	r1, r2, #0x8, #0x8
  41055c:      	strb	r1, [r3, #0x1]
  41055e:      	ubfx	r2, r2, #0x10, #0x8
  410562:      	strb	r2, [r3, #0x2]
  410564:      	add.w	r2, sp, #0x410
  410568:      	add	r3, sp, #0xb0
  41056a:      	mov	r0, r5
  41056c:      	mov	r1, r2
  41056e:      	ldr	r2, [r3]
  410570:      	movs	r3, #0x3
  410572:      	bl	0x33d2c0 <_ZN3HUD10addMessageESsN7cocos2d10_ccColor3BEs> @ imm = #-0xd32b6
  410576:      	add.w	r3, sp, #0x410
  41057a:      	mov	r0, r3
  41057c:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3a5394
  410580:      	add.w	r3, sp, #0x400
  410584:      	mov	r0, r3
  410586:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x379e72
  41058a:      	ldr	r3, [pc, #0x128]        @ 0x4106b4 <_ZN13TrainingStage8doLessonEf+0x63dc>
  41058c:      	ldr	r3, [r4, r3]
  41058e:      	ldr	r3, [r3]
  410590:      	mov	r0, r3
  410592:      	movs	r1, #0x43
  410594:      	movs	r2, #0x1
  410596:      	bl	0x3f7d40 <_ZN5Sound18playSoundWithVoiceEii> @ imm = #-0x1885a
  41059a:      	add	r3, sp, #0x1c
  41059c:      	ldr	r3, [r3]
  41059e:      	ldr.w	r3, [r3, #0x17c]
  4105a2:      	ldr	r3, [r3]
  4105a4:      	add.w	r3, r3, #0x214
  4105a8:      	ldr	r4, [r3]
  4105aa:      	add	r3, sp, #0x1c
  4105ac:      	ldr	r3, [r3]
  4105ae:      	ldr.w	r5, [r3, #0x17c]
  4105b2:      	bl	0x417984 <_ZN13WeaponFactory19sharedWeaponFactoryEv> @ imm = #0x73ce
  4105b6:      	mov	r3, r0
  4105b8:      	mov	r0, r3
  4105ba:      	movs	r1, #0x5
  4105bc:      	bl	0x4186fc <_ZN13WeaponFactory24createWeaponFromAmmoTypeE8ItemType> @ imm = #0x813c
  4105c0:      	mov	r3, r0
  4105c2:      	mov	r0, r5
  4105c4:      	mov	r1, r3
  4105c6:      	blx	r4
  4105c8:      	add	r3, sp, #0x1c
  4105ca:      	ldr	r3, [r3]
  4105cc:      	ldr.w	r3, [r3, #0x17c]
  4105d0:      	ldr	r3, [r3]
  4105d2:      	add.w	r3, r3, #0x21c
  4105d6:      	ldr	r4, [r3]
  4105d8:      	add	r3, sp, #0x1c
  4105da:      	ldr	r3, [r3]
  4105dc:      	ldr.w	r5, [r3, #0x17c]
  4105e0:      	bl	0x417984 <_ZN13WeaponFactory19sharedWeaponFactoryEv> @ imm = #0x73a0
  4105e4:      	mov	r3, r0
  4105e6:      	mov	r0, r3
  4105e8:      	movs	r1, #0x5
  4105ea:      	bl	0x4186fc <_ZN13WeaponFactory24createWeaponFromAmmoTypeE8ItemType> @ imm = #0x810e
  4105ee:      	mov	r3, r0
  4105f0:      	mov	r0, r5
  4105f2:      	mov	r1, r3
  4105f4:      	blx	r4
  4105f6:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x191a
  4105fa:      	ldr	r3, [pc, #0xbc]         @ 0x4106b8 <_ZN13TrainingStage8doLessonEf+0x63e0>
  4105fc:      	ldr	r3, [r4, r3]
  4105fe:      	ldr	r3, [r3]
  410600:      	ldr	r3, [r3]
  410602:      	add.w	r3, r3, #0x2a4
  410606:      	ldr	r3, [r3]
  410608:      	ldr	r2, [pc, #0xac]         @ 0x4106b8 <_ZN13TrainingStage8doLessonEf+0x63e0>
  41060a:      	ldr	r2, [r4, r2]
  41060c:      	ldr	r2, [r2]
  41060e:      	mov	r0, r2
  410610:      	mov.w	r1, #0x0
  410614:      	blx	r3
  410616:      	add	r3, sp, #0x1c
  410618:      	ldr	r3, [r3]
  41061a:      	ldr.w	r3, [r3, #0x17c]
  41061e:      	ldr	r3, [r3]
  410620:      	add.w	r3, r3, #0x238
  410624:      	ldr	r3, [r3]
  410626:      	add	r2, sp, #0x1c
  410628:      	ldr	r2, [r2]
  41062a:      	ldr.w	r2, [r2, #0x17c]
  41062e:      	mov	r0, r2
  410630:      	mov.w	r1, #0x0
  410634:      	movt	r1, #0x430c
  410638:      	blx	r3
  41063a:      	add	r3, sp, #0x1c
  41063c:      	ldr	r3, [r3]
  41063e:      	ldr.w	r3, [r3, #0x17c]
  410642:      	ldr	r3, [r3]
  410644:      	add.w	r3, r3, #0x1d8
  410648:      	ldr	r3, [r3]
  41064a:      	add	r2, sp, #0x1c
  41064c:      	ldr	r2, [r2]
  41064e:      	ldr.w	r2, [r2, #0x17c]
  410652:      	mov	r0, r2
  410654:      	blx	r3
  410656:      	mov	r3, r0
  410658:      	ldr.w	r3, [r3, #0xf0]
  41065c:      	ldr	r2, [r3]
  41065e:      	adds	r2, #0x98
  410660:      	ldr	r2, [r2]
  410662:      	mov	r0, r3
  410664:      	mov.w	r1, #0x0
  410668:      	blx	r2
  41066a:      	add	r3, sp, #0x1c
  41066c:      	ldr	r3, [r3]
  41066e:      	vldr	s14, [r3, #392]
  410672:      	vmov.f32	s15, #2.000000e+00
  410676:      	vcmpe.f32	s14, s15
  41067a:      	vmrs	APSR_nzcv, fpscr
  41067e:      	bpl	0x41068c <_ZN13TrainingStage8doLessonEf+0x63b4> @ imm = #0xa
  410680:      	add	r2, sp, #0x1c
  410682:      	add	r3, sp, #0x18
  410684:      	ldr	r0, [r2]
  410686:      	ldr	r1, [r3]
  410688:      	bl	0x409e30 <_ZN13TrainingStage11headChatterEf> @ imm = #-0x685c
  41068c:      	add	r3, sp, #0x1c
  41068e:      	ldr	r3, [r3]
  410690:      	vldr	s14, [r3, #392]
  410694:      	vmov.f32	s15, #3.000000e+00
  410698:      	vcmpe.f32	s14, s15
  41069c:      	vmrs	APSR_nzcv, fpscr
  4106a0:      	bgt	0x4106c0 <_ZN13TrainingStage8doLessonEf+0x63e8> @ imm = #0x1c
  4106a2:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x186e
// TrainingStage::doLesson  ghidra=0x4206c0-0x420acb  elf=0x4106c0-0x410acb  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  4106c0:      	add	r3, sp, #0x1c
  4106c2:      	ldr	r3, [r3]
  4106c4:      	ldr.w	r3, [r3, #0x180]
  4106c8:      	adds	r2, r3, #0x1
  4106ca:      	add	r3, sp, #0x1c
  4106cc:      	ldr	r3, [r3]
  4106ce:      	str.w	r2, [r3, #0x180]
  4106d2:      	add	r3, sp, #0x1c
  4106d4:      	ldr	r3, [r3]
  4106d6:      	mov.w	r2, #0x0
  4106da:      	str.w	r2, [r3, #0x188]
  4106de:      	add	r3, sp, #0x1c
  4106e0:      	ldr	r3, [r3]
  4106e2:      	ldr.w	r5, [r3, #0x10c]
  4106e6:      	add.w	r3, sp, #0x400
  4106ea:      	mov	r0, r3
  4106ec:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x379d04
  4106f0:      	add.w	r2, sp, #0x410
  4106f4:      	add.w	r3, sp, #0x400
  4106f8:      	mov	r0, r2
  4106fa:      	ldr	r2, [pc, #0x3ec]        @ 0x410ae8 <_ZN13TrainingStage8doLessonEf+0x6810>
  4106fc:      	add	r2, pc
  4106fe:      	mov	r1, r2
  410700:      	mov	r2, r3
  410702:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3a635a
  410706:      	movs	r0, #0x0
  410708:      	movs	r1, #0x0
  41070a:      	movs	r2, #0xff
  41070c:      	bl	0x408458 <_ZN6Tracer14checkCollisionEv+0x3cc> @ imm = #-0x82b8
  410710:      	mov	r2, r0
  410712:      	add	r3, sp, #0xb4
  410714:      	mov	r1, r2
  410716:      	strb	r1, [r3]
  410718:      	ubfx	r1, r2, #0x8, #0x8
  41071c:      	strb	r1, [r3, #0x1]
  41071e:      	ubfx	r2, r2, #0x10, #0x8
  410722:      	strb	r2, [r3, #0x2]
  410724:      	add.w	r2, sp, #0x410
  410728:      	add	r3, sp, #0xb4
  41072a:      	mov	r0, r5
  41072c:      	mov	r1, r2
  41072e:      	ldr	r2, [r3]
  410730:      	movs	r3, #0x3
  410732:      	bl	0x33d2c0 <_ZN3HUD10addMessageESsN7cocos2d10_ccColor3BEs> @ imm = #-0xd3476
  410736:      	add.w	r3, sp, #0x410
  41073a:      	mov	r0, r3
  41073c:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3a51d4
  410740:      	add.w	r3, sp, #0x400
  410744:      	mov	r0, r3
  410746:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x379cb2
  41074a:      	ldr	r3, [pc, #0x3a0]        @ 0x410aec <_ZN13TrainingStage8doLessonEf+0x6814>
  41074c:      	ldr	r3, [r4, r3]
  41074e:      	ldr	r3, [r3]
  410750:      	mov	r0, r3
  410752:      	movs	r1, #0x54
  410754:      	movs	r2, #0x1
  410756:      	bl	0x3f7d40 <_ZN5Sound18playSoundWithVoiceEii> @ imm = #-0x18a1a
  41075a:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x17b6
  41075e:      	ldr	r3, [pc, #0x390]        @ 0x410af0 <_ZN13TrainingStage8doLessonEf+0x6818>
  410760:      	ldr	r3, [r4, r3]
  410762:      	ldr	r3, [r3]
  410764:      	ldr	r3, [r3]
  410766:      	add.w	r3, r3, #0x2a4
  41076a:      	ldr	r3, [r3]
  41076c:      	ldr	r2, [pc, #0x380]        @ 0x410af0 <_ZN13TrainingStage8doLessonEf+0x6818>
  41076e:      	ldr	r2, [r4, r2]
  410770:      	ldr	r2, [r2]
  410772:      	mov	r0, r2
  410774:      	mov.w	r1, #0x0
  410778:      	blx	r3
  41077a:      	add	r3, sp, #0x1c
  41077c:      	ldr	r3, [r3]
  41077e:      	ldr.w	r3, [r3, #0x17c]
  410782:      	ldr	r3, [r3]
  410784:      	add.w	r3, r3, #0x238
  410788:      	ldr	r3, [r3]
  41078a:      	add	r2, sp, #0x1c
  41078c:      	ldr	r2, [r2]
  41078e:      	ldr.w	r2, [r2, #0x17c]
  410792:      	mov	r0, r2
  410794:      	mov.w	r1, #0x0
  410798:      	movt	r1, #0x430c
  41079c:      	blx	r3
  41079e:      	add	r3, sp, #0x1c
  4107a0:      	ldr	r3, [r3]
  4107a2:      	ldr.w	r3, [r3, #0x17c]
  4107a6:      	ldr	r3, [r3]
  4107a8:      	add.w	r3, r3, #0x1d8
  4107ac:      	ldr	r3, [r3]
  4107ae:      	add	r2, sp, #0x1c
  4107b0:      	ldr	r2, [r2]
  4107b2:      	ldr.w	r2, [r2, #0x17c]
  4107b6:      	mov	r0, r2
  4107b8:      	blx	r3
  4107ba:      	mov	r3, r0
  4107bc:      	ldr.w	r3, [r3, #0xf0]
  4107c0:      	ldr	r2, [r3]
  4107c2:      	adds	r2, #0x98
  4107c4:      	ldr	r2, [r2]
  4107c6:      	mov	r0, r3
  4107c8:      	mov.w	r1, #0x0
  4107cc:      	blx	r2
  4107ce:      	add	r3, sp, #0x1c
  4107d0:      	ldr	r3, [r3]
  4107d2:      	vldr	s14, [r3, #392]
  4107d6:      	vmov.f32	s15, #2.000000e+00
  4107da:      	vcmpe.f32	s14, s15
  4107de:      	vmrs	APSR_nzcv, fpscr
  4107e2:      	bpl	0x4107f0 <_ZN13TrainingStage8doLessonEf+0x6518> @ imm = #0xa
  4107e4:      	add	r2, sp, #0x1c
  4107e6:      	add	r3, sp, #0x18
  4107e8:      	ldr	r0, [r2]
  4107ea:      	ldr	r1, [r3]
  4107ec:      	bl	0x409e30 <_ZN13TrainingStage11headChatterEf> @ imm = #-0x69c0
  4107f0:      	add	r3, sp, #0x1c
  4107f2:      	ldr	r3, [r3]
  4107f4:      	vldr	s14, [r3, #392]
  4107f8:      	vmov.f32	s15, #3.000000e+00
  4107fc:      	vcmpe.f32	s14, s15
  410800:      	vmrs	APSR_nzcv, fpscr
  410804:      	bgt	0x41080a <_ZN13TrainingStage8doLessonEf+0x6532> @ imm = #0x2
  410806:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x170a
  41080a:      	add	r3, sp, #0x1c
  41080c:      	ldr	r3, [r3]
  41080e:      	ldr.w	r3, [r3, #0x180]
  410812:      	adds	r2, r3, #0x1
  410814:      	add	r3, sp, #0x1c
  410816:      	ldr	r3, [r3]
  410818:      	str.w	r2, [r3, #0x180]
  41081c:      	add	r3, sp, #0x1c
  41081e:      	ldr	r3, [r3]
  410820:      	mov.w	r2, #0x0
  410824:      	str.w	r2, [r3, #0x188]
  410828:      	add	r3, sp, #0x1c
  41082a:      	ldr	r3, [r3]
  41082c:      	ldr.w	r5, [r3, #0x10c]
  410830:      	add.w	r3, sp, #0x400
  410834:      	mov	r0, r3
  410836:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x379bba
  41083a:      	add.w	r2, sp, #0x410
  41083e:      	add.w	r3, sp, #0x400
  410842:      	mov	r0, r2
  410844:      	ldr	r2, [pc, #0x2ac]        @ 0x410af4 <_ZN13TrainingStage8doLessonEf+0x681c>
  410846:      	add	r2, pc
  410848:      	mov	r1, r2
  41084a:      	mov	r2, r3
  41084c:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3a6210
  410850:      	movs	r0, #0x0
  410852:      	movs	r1, #0x0
  410854:      	movs	r2, #0xff
  410856:      	bl	0x408458 <_ZN6Tracer14checkCollisionEv+0x3cc> @ imm = #-0x8402
  41085a:      	mov	r2, r0
  41085c:      	add	r3, sp, #0xb8
  41085e:      	mov	r1, r2
  410860:      	strb	r1, [r3]
  410862:      	ubfx	r1, r2, #0x8, #0x8
  410866:      	strb	r1, [r3, #0x1]
  410868:      	ubfx	r2, r2, #0x10, #0x8
  41086c:      	strb	r2, [r3, #0x2]
  41086e:      	add.w	r2, sp, #0x410
  410872:      	add	r3, sp, #0xb8
  410874:      	mov	r0, r5
  410876:      	mov	r1, r2
  410878:      	ldr	r2, [r3]
  41087a:      	movs	r3, #0x3
  41087c:      	bl	0x33d2c0 <_ZN3HUD10addMessageESsN7cocos2d10_ccColor3BEs> @ imm = #-0xd35c0
  410880:      	add.w	r3, sp, #0x410
  410884:      	mov	r0, r3
  410886:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3a508a
  41088a:      	add.w	r3, sp, #0x400
  41088e:      	mov	r0, r3
  410890:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x379b68
  410894:      	ldr	r3, [pc, #0x254]        @ 0x410aec <_ZN13TrainingStage8doLessonEf+0x6814>
  410896:      	ldr	r3, [r4, r3]
  410898:      	ldr	r3, [r3]
  41089a:      	mov	r0, r3
  41089c:      	movs	r1, #0x55
  41089e:      	movs	r2, #0x1
  4108a0:      	bl	0x3f7d40 <_ZN5Sound18playSoundWithVoiceEii> @ imm = #-0x18b64
  4108a4:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x166c
  4108a8:      	ldr	r3, [pc, #0x244]        @ 0x410af0 <_ZN13TrainingStage8doLessonEf+0x6818>
  4108aa:      	ldr	r3, [r4, r3]
  4108ac:      	ldr	r3, [r3]
  4108ae:      	ldr	r3, [r3]
  4108b0:      	add.w	r3, r3, #0x2a4
  4108b4:      	ldr	r3, [r3]
  4108b6:      	ldr	r2, [pc, #0x238]        @ 0x410af0 <_ZN13TrainingStage8doLessonEf+0x6818>
  4108b8:      	ldr	r2, [r4, r2]
  4108ba:      	ldr	r2, [r2]
  4108bc:      	mov	r0, r2
  4108be:      	mov.w	r1, #0x0
  4108c2:      	blx	r3
  4108c4:      	add	r3, sp, #0x1c
  4108c6:      	ldr	r3, [r3]
  4108c8:      	ldr.w	r3, [r3, #0x17c]
  4108cc:      	ldr	r3, [r3]
  4108ce:      	add.w	r3, r3, #0x238
  4108d2:      	ldr	r3, [r3]
  4108d4:      	add	r2, sp, #0x1c
  4108d6:      	ldr	r2, [r2]
  4108d8:      	ldr.w	r2, [r2, #0x17c]
  4108dc:      	mov	r0, r2
  4108de:      	mov.w	r1, #0x0
  4108e2:      	movt	r1, #0x430c
  4108e6:      	blx	r3
  4108e8:      	add	r3, sp, #0x1c
  4108ea:      	ldr	r3, [r3]
  4108ec:      	ldr.w	r3, [r3, #0x17c]
  4108f0:      	ldr	r3, [r3]
  4108f2:      	add.w	r3, r3, #0x1d8
  4108f6:      	ldr	r3, [r3]
  4108f8:      	add	r2, sp, #0x1c
  4108fa:      	ldr	r2, [r2]
  4108fc:      	ldr.w	r2, [r2, #0x17c]
  410900:      	mov	r0, r2
  410902:      	blx	r3
  410904:      	mov	r3, r0
  410906:      	ldr.w	r3, [r3, #0xf0]
  41090a:      	ldr	r2, [r3]
  41090c:      	adds	r2, #0x98
  41090e:      	ldr	r2, [r2]
  410910:      	mov	r0, r3
  410912:      	mov.w	r1, #0x0
  410916:      	blx	r2
  410918:      	add	r3, sp, #0x1c
  41091a:      	ldr	r3, [r3]
  41091c:      	vldr	s14, [r3, #392]
  410920:      	vmov.f32	s15, #3.000000e+00
  410924:      	vcmpe.f32	s14, s15
  410928:      	vmrs	APSR_nzcv, fpscr
  41092c:      	bpl	0x41093a <_ZN13TrainingStage8doLessonEf+0x6662> @ imm = #0xa
  41092e:      	add	r2, sp, #0x1c
  410930:      	add	r3, sp, #0x18
  410932:      	ldr	r0, [r2]
  410934:      	ldr	r1, [r3]
  410936:      	bl	0x409e30 <_ZN13TrainingStage11headChatterEf> @ imm = #-0x6b0a
  41093a:      	add	r3, sp, #0x1c
  41093c:      	ldr	r3, [r3]
  41093e:      	ldr.w	r3, [r3, #0x17c]
  410942:      	ldr.w	r3, [r3, #0x138]
  410946:      	vldr	d6, [r3, #48]
  41094a:      	ldr	r3, [pc, #0x1a4]        @ 0x410af0 <_ZN13TrainingStage8doLessonEf+0x6818>
  41094c:      	ldr	r3, [r4, r3]
  41094e:      	ldr	r3, [r3]
  410950:      	ldr.w	r3, [r3, #0x138]
  410954:      	vldr	d5, [r3, #48]
  410958:      	vldr	d7, [pc, #372]          @ 0x410ad0 <_ZN13TrainingStage8doLessonEf+0x67f8>
  41095c:      	vadd.f64	d7, d5, d7
  410960:      	vcmpe.f64	d6, d7
  410964:      	vmrs	APSR_nzcv, fpscr
  410968:      	bpl	0x4109d6 <_ZN13TrainingStage8doLessonEf+0x66fe> @ imm = #0x6a
  41096a:      	add	r3, sp, #0x1c
  41096c:      	ldr	r3, [r3]
  41096e:      	ldr.w	r3, [r3, #0x17c]
  410972:      	movs	r2, #0x1
  410974:      	strb.w	r2, [r3, #0x11c]
  410978:      	add	r3, sp, #0x1c
  41097a:      	ldr	r3, [r3]
  41097c:      	ldr.w	r3, [r3, #0x17c]
  410980:      	ldr	r3, [r3]
  410982:      	add.w	r3, r3, #0x230
  410986:      	ldr	r4, [r3]
  410988:      	add	r3, sp, #0x1c
  41098a:      	ldr	r3, [r3]
  41098c:      	ldr.w	r3, [r3, #0x17c]
  410990:      	mov	r5, r3
  410992:      	add	r3, sp, #0x300
  410994:      	mov	r0, r3
  410996:      	vldr	d0, [pc, #320]          @ 0x410ad8 <_ZN13TrainingStage8doLessonEf+0x6800>
  41099a:      	vldr	d1, [pc, #324]          @ 0x410ae0 <_ZN13TrainingStage8doLessonEf+0x6808>
  41099e:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x84ce
  4109a2:      	add	r3, sp, #0x300
  4109a4:      	mov	r2, sp
  4109a6:      	add.w	r1, r3, #0x8
  4109aa:      	ldm	r1, {r0, r1}
  4109ac:      	stm.w	r2, {r0, r1}
  4109b0:      	ldm	r3, {r2, r3}
  4109b2:      	mov	r0, r5
  4109b4:      	blx	r4
  4109b6:      	add	r3, sp, #0x1c
  4109b8:      	ldr	r3, [r3]
  4109ba:      	ldr.w	r3, [r3, #0x17c]
  4109be:      	ldr	r3, [r3]
  4109c0:      	add.w	r3, r3, #0x1e0
  4109c4:      	ldr	r3, [r3]
  4109c6:      	add	r2, sp, #0x1c
  4109c8:      	ldr	r2, [r2]
  4109ca:      	ldr.w	r2, [r2, #0x17c]
  4109ce:      	mov	r0, r2
  4109d0:      	movs	r1, #0x1
  4109d2:      	blx	r3
  4109d4:      	b	0x410ac8 <_ZN13TrainingStage8doLessonEf+0x67f0> @ imm = #0xf0
  4109d6:      	add	r3, sp, #0x1c
  4109d8:      	ldr	r3, [r3]
  4109da:      	vldr	s14, [r3, #392]
  4109de:      	vmov.f32	s15, #3.000000e+00
  4109e2:      	vcmpe.f32	s14, s15
  4109e6:      	vmrs	APSR_nzcv, fpscr
  4109ea:      	bgt	0x4109f0 <_ZN13TrainingStage8doLessonEf+0x6718> @ imm = #0x2
  4109ec:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x1524
  4109f0:      	add	r3, sp, #0x1c
  4109f2:      	ldr	r3, [r3]
  4109f4:      	ldr.w	r3, [r3, #0x180]
  4109f8:      	adds	r2, r3, #0x1
  4109fa:      	add	r3, sp, #0x1c
  4109fc:      	ldr	r3, [r3]
  4109fe:      	str.w	r2, [r3, #0x180]
  410a02:      	add	r3, sp, #0x1c
  410a04:      	ldr	r3, [r3]
  410a06:      	mov.w	r2, #0x0
  410a0a:      	str.w	r2, [r3, #0x188]
  410a0e:      	add	r3, sp, #0x1c
  410a10:      	ldr	r3, [r3]
  410a12:      	ldr.w	r5, [r3, #0x10c]
  410a16:      	add.w	r3, sp, #0x400
  410a1a:      	mov	r0, r3
  410a1c:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x3799d4
  410a20:      	add.w	r2, sp, #0x410
  410a24:      	add.w	r3, sp, #0x400
  410a28:      	mov	r0, r2
  410a2a:      	ldr	r2, [pc, #0xcc]         @ 0x410af8 <_ZN13TrainingStage8doLessonEf+0x6820>
  410a2c:      	add	r2, pc
  410a2e:      	mov	r1, r2
  410a30:      	mov	r2, r3
  410a32:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3a602a
  410a36:      	movs	r0, #0x0
  410a38:      	movs	r1, #0x0
  410a3a:      	movs	r2, #0xff
  410a3c:      	bl	0x408458 <_ZN6Tracer14checkCollisionEv+0x3cc> @ imm = #-0x85e8
  410a40:      	mov	r2, r0
  410a42:      	add	r3, sp, #0xbc
  410a44:      	mov	r1, r2
  410a46:      	strb	r1, [r3]
  410a48:      	ubfx	r1, r2, #0x8, #0x8
  410a4c:      	strb	r1, [r3, #0x1]
  410a4e:      	ubfx	r2, r2, #0x10, #0x8
  410a52:      	strb	r2, [r3, #0x2]
  410a54:      	add.w	r2, sp, #0x410
  410a58:      	add	r3, sp, #0xbc
  410a5a:      	mov	r0, r5
  410a5c:      	mov	r1, r2
  410a5e:      	ldr	r2, [r3]
  410a60:      	movs	r3, #0x4
  410a62:      	bl	0x33d2c0 <_ZN3HUD10addMessageESsN7cocos2d10_ccColor3BEs> @ imm = #-0xd37a6
  410a66:      	add.w	r3, sp, #0x410
  410a6a:      	mov	r0, r3
  410a6c:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3a4ea4
  410a70:      	add.w	r3, sp, #0x400
  410a74:      	mov	r0, r3
  410a76:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x379982
  410a7a:      	ldr	r3, [pc, #0x70]         @ 0x410aec <_ZN13TrainingStage8doLessonEf+0x6814>
  410a7c:      	ldr	r3, [r4, r3]
  410a7e:      	ldr	r3, [r3]
  410a80:      	mov	r0, r3
  410a82:      	movs	r1, #0x56
  410a84:      	movs	r2, #0x1
  410a86:      	bl	0x3f7d40 <_ZN5Sound18playSoundWithVoiceEii> @ imm = #-0x18d4a
  410a8a:      	add	r3, sp, #0x1c
  410a8c:      	ldr	r3, [r3]
  410a8e:      	ldr.w	r3, [r3, #0x17c]
  410a92:      	ldr	r3, [r3]
  410a94:      	add.w	r3, r3, #0x230
  410a98:      	ldr	r4, [r3]
  410a9a:      	add	r3, sp, #0x1c
  410a9c:      	ldr	r3, [r3]
  410a9e:      	ldr.w	r3, [r3, #0x17c]
  410aa2:      	mov	r5, r3
  410aa4:      	add	r3, sp, #0x310
  410aa6:      	mov	r0, r3
  410aa8:      	vldr	d0, [pc, #44]           @ 0x410ad8 <_ZN13TrainingStage8doLessonEf+0x6800>
  410aac:      	vldr	d1, [pc, #40]           @ 0x410ad8 <_ZN13TrainingStage8doLessonEf+0x6800>
  410ab0:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x85e0
  410ab4:      	add	r3, sp, #0x310
  410ab6:      	mov	r2, sp
  410ab8:      	add.w	r1, r3, #0x8
  410abc:      	ldm	r1, {r0, r1}
  410abe:      	stm.w	r2, {r0, r1}
  410ac2:      	ldm	r3, {r2, r3}
  410ac4:      	mov	r0, r5
  410ac6:      	blx	r4
  410ac8:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x1448
// TrainingStage::doLesson  ghidra=0x420afc-0x420d53  elf=0x410afc-0x410d53  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  410afc:      	ldr	r3, [pc, #0x260]        @ 0x410d60 <_ZN13TrainingStage8doLessonEf+0x6a88>
  410afe:      	ldr	r3, [r4, r3]
  410b00:      	ldr	r3, [r3]
  410b02:      	ldr	r3, [r3]
  410b04:      	add.w	r3, r3, #0x2a4
  410b08:      	ldr	r3, [r3]
  410b0a:      	ldr	r2, [pc, #0x254]        @ 0x410d60 <_ZN13TrainingStage8doLessonEf+0x6a88>
  410b0c:      	ldr	r2, [r4, r2]
  410b0e:      	ldr	r2, [r2]
  410b10:      	mov	r0, r2
  410b12:      	mov.w	r1, #0x0
  410b16:      	blx	r3
  410b18:      	add	r3, sp, #0x1c
  410b1a:      	ldr	r3, [r3]
  410b1c:      	ldr.w	r3, [r3, #0x17c]
  410b20:      	ldr	r3, [r3]
  410b22:      	add.w	r3, r3, #0x238
  410b26:      	ldr	r3, [r3]
  410b28:      	add	r2, sp, #0x1c
  410b2a:      	ldr	r2, [r2]
  410b2c:      	ldr.w	r2, [r2, #0x17c]
  410b30:      	mov	r0, r2
  410b32:      	mov.w	r1, #0x0
  410b36:      	movt	r1, #0x430c
  410b3a:      	blx	r3
  410b3c:      	add	r3, sp, #0x1c
  410b3e:      	ldr	r3, [r3]
  410b40:      	ldr.w	r3, [r3, #0x17c]
  410b44:      	ldr	r3, [r3]
  410b46:      	add.w	r3, r3, #0x1d8
  410b4a:      	ldr	r3, [r3]
  410b4c:      	add	r2, sp, #0x1c
  410b4e:      	ldr	r2, [r2]
  410b50:      	ldr.w	r2, [r2, #0x17c]
  410b54:      	mov	r0, r2
  410b56:      	blx	r3
  410b58:      	mov	r3, r0
  410b5a:      	ldr.w	r3, [r3, #0xf0]
  410b5e:      	ldr	r2, [r3]
  410b60:      	adds	r2, #0x98
  410b62:      	ldr	r2, [r2]
  410b64:      	mov	r0, r3
  410b66:      	mov.w	r1, #0x0
  410b6a:      	blx	r2
  410b6c:      	add	r3, sp, #0x1c
  410b6e:      	ldr	r3, [r3]
  410b70:      	ldr.w	r3, [r3, #0x17c]
  410b74:      	ldr	r3, [r3]
  410b76:      	add.w	r3, r3, #0x2a4
  410b7a:      	ldr	r3, [r3]
  410b7c:      	add	r2, sp, #0x1c
  410b7e:      	ldr	r2, [r2]
  410b80:      	ldr.w	r2, [r2, #0x17c]
  410b84:      	mov	r0, r2
  410b86:      	mov.w	r1, #0x0
  410b8a:      	movt	r1, #0x42c8
  410b8e:      	blx	r3
  410b90:      	add	r3, sp, #0x1c
  410b92:      	ldr	r3, [r3]
  410b94:      	ldr.w	r3, [r3, #0x17c]
  410b98:      	ldr	r3, [r3]
  410b9a:      	add.w	r3, r3, #0x230
  410b9e:      	ldr	r5, [r3]
  410ba0:      	add	r3, sp, #0x1c
  410ba2:      	ldr	r3, [r3]
  410ba4:      	ldr.w	r3, [r3, #0x17c]
  410ba8:      	mov	r6, r3
  410baa:      	add	r3, sp, #0x320
  410bac:      	mov	r0, r3
  410bae:      	vldr	d0, [pc, #424]          @ 0x410d58 <_ZN13TrainingStage8doLessonEf+0x6a80>
  410bb2:      	vldr	d1, [pc, #420]          @ 0x410d58 <_ZN13TrainingStage8doLessonEf+0x6a80>
  410bb6:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x86e6
  410bba:      	add	r3, sp, #0x320
  410bbc:      	mov	r2, sp
  410bbe:      	add.w	r1, r3, #0x8
  410bc2:      	ldm	r1, {r0, r1}
  410bc4:      	stm.w	r2, {r0, r1}
  410bc8:      	ldm	r3, {r2, r3}
  410bca:      	mov	r0, r6
  410bcc:      	blx	r5
  410bce:      	add	r3, sp, #0x1c
  410bd0:      	ldr	r3, [r3]
  410bd2:      	ldr.w	r3, [r3, #0x17c]
  410bd6:      	movs	r2, #0x1
  410bd8:      	strb.w	r2, [r3, #0x11c]
  410bdc:      	add	r3, sp, #0x1c
  410bde:      	ldr	r3, [r3]
  410be0:      	ldr.w	r3, [r3, #0x17c]
  410be4:      	ldr	r3, [r3]
  410be6:      	add.w	r3, r3, #0x1e0
  410bea:      	ldr	r3, [r3]
  410bec:      	add	r2, sp, #0x1c
  410bee:      	ldr	r2, [r2]
  410bf0:      	ldr.w	r2, [r2, #0x17c]
  410bf4:      	mov	r0, r2
  410bf6:      	movs	r1, #0x1
  410bf8:      	blx	r3
  410bfa:      	add	r3, sp, #0x1c
  410bfc:      	ldr	r3, [r3]
  410bfe:      	ldr.w	r3, [r3, #0x17c]
  410c02:      	ldr.w	r2, [r3, #0x138]
  410c06:      	ldr	r3, [pc, #0x15c]        @ 0x410d64 <_ZN13TrainingStage8doLessonEf+0x6a8c>
  410c08:      	add	r3, pc
  410c0a:      	vldr	d6, [r3]
  410c0e:      	vldr	d7, [r3, #8]
  410c12:      	mov	r0, r2
  410c14:      	vmov.f64	d0, d6
  410c18:      	vmov.f64	d1, d7
  410c1c:      	bl	0x408674 <_ZN6Tracer14checkCollisionEv+0x5e8> @ imm = #-0x85ac
  410c20:      	add	r3, sp, #0x1c
  410c22:      	ldr	r3, [r3]
  410c24:      	ldr.w	r3, [r3, #0x17c]
  410c28:      	ldr.w	r2, [r3, #0x138]
  410c2c:      	ldr	r3, [pc, #0x138]        @ 0x410d68 <_ZN13TrainingStage8doLessonEf+0x6a90>
  410c2e:      	add	r3, pc
  410c30:      	vldr	d6, [r3]
  410c34:      	vldr	d7, [r3, #8]
  410c38:      	mov	r0, r2
  410c3a:      	vmov.f64	d0, d6
  410c3e:      	vmov.f64	d1, d7
  410c42:      	bl	0x408648 <_ZN6Tracer14checkCollisionEv+0x5bc> @ imm = #-0x85fe
  410c46:      	add	r3, sp, #0x1c
  410c48:      	ldr	r3, [r3]
  410c4a:      	ldr.w	r3, [r3, #0x17c]
  410c4e:      	ldr.w	r6, [r3, #0x138]
  410c52:      	add	r3, sp, #0x1c
  410c54:      	ldr	r3, [r3]
  410c56:      	ldr.w	r3, [r3, #0x17c]
  410c5a:      	ldr.w	r5, [r3, #0x138]
  410c5e:      	add	r3, sp, #0x1c
  410c60:      	ldr	r3, [r3]
  410c62:      	vldr	s14, [r3, #392]
  410c66:      	vmov.f32	s15, #3.000000e+00
  410c6a:      	vmul.f32	s15, s14, s15
  410c6e:      	vcvt.f64.f32	d7, s15
  410c72:      	vmov	r0, r1, d7
  410c76:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x13ad70
  410c7a:      	mov	r2, r0
  410c7c:      	mov	r3, r1
  410c7e:      	add	r1, sp, #0x330
  410c80:      	mov	r0, r1
  410c82:      	vldr	d0, [pc, #212]          @ 0x410d58 <_ZN13TrainingStage8doLessonEf+0x6a80>
  410c86:      	vmov	d1, r2, r3
  410c8a:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x87ba
  410c8e:      	add	r3, sp, #0x8
  410c90:      	vldr	d4, [r5, #40]
  410c94:      	vldr	d5, [r5, #48]
  410c98:      	vldr	d6, [sp, #816]
  410c9c:      	vldr	d7, [sp, #824]
  410ca0:      	mov	r0, r3
  410ca2:      	vmov.f64	d0, d4
  410ca6:      	vmov.f64	d1, d5
  410caa:      	vmov.f64	d2, d6
  410cae:      	vmov.f64	d3, d7
  410cb2:      	bl	0x4084fc <_ZN6Tracer14checkCollisionEv+0x470> @ imm = #-0x87ba
  410cb6:      	add	r3, sp, #0x8
  410cb8:      	add.w	r5, r6, #0x28
  410cbc:      	ldm	r3, {r0, r1, r2, r3}
  410cbe:      	stm.w	r5, {r0, r1, r2, r3}
  410cc2:      	add	r3, sp, #0x1c
  410cc4:      	ldr	r3, [r3]
  410cc6:      	vldr	s14, [r3, #392]
  410cca:      	vmov.f32	s15, #3.000000e+00
  410cce:      	vcmpe.f32	s14, s15
  410cd2:      	vmrs	APSR_nzcv, fpscr
  410cd6:      	bpl	0x410ce4 <_ZN13TrainingStage8doLessonEf+0x6a0c> @ imm = #0xa
  410cd8:      	add	r2, sp, #0x1c
  410cda:      	add	r3, sp, #0x18
  410cdc:      	ldr	r0, [r2]
  410cde:      	ldr	r1, [r3]
  410ce0:      	bl	0x409e30 <_ZN13TrainingStage11headChatterEf> @ imm = #-0x6eb4
  410ce4:      	add	r3, sp, #0x1c
  410ce6:      	ldr	r3, [r3]
  410ce8:      	vldr	s14, [r3, #392]
  410cec:      	vmov.f32	s15, #4.000000e+00
  410cf0:      	vcmpe.f32	s14, s15
  410cf4:      	vmrs	APSR_nzcv, fpscr
  410cf8:      	bgt	0x410cfe <_ZN13TrainingStage8doLessonEf+0x6a26> @ imm = #0x2
  410cfa:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x1216
  410cfe:      	ldr	r3, [pc, #0x60]         @ 0x410d60 <_ZN13TrainingStage8doLessonEf+0x6a88>
  410d00:      	ldr	r3, [r4, r3]
  410d02:      	ldr	r3, [r3]
  410d04:      	ldr	r3, [r3]
  410d06:      	add.w	r3, r3, #0x2a4
  410d0a:      	ldr	r3, [r3]
  410d0c:      	ldr	r2, [pc, #0x50]         @ 0x410d60 <_ZN13TrainingStage8doLessonEf+0x6a88>
  410d0e:      	ldr	r2, [r4, r2]
  410d10:      	ldr	r2, [r2]
  410d12:      	mov	r0, r2
  410d14:      	mov.w	r1, #0x0
  410d18:      	movt	r1, #0x42c8
  410d1c:      	blx	r3
  410d1e:      	add	r3, sp, #0x1c
  410d20:      	ldr	r3, [r3]
  410d22:      	ldr.w	r3, [r3, #0x180]
  410d26:      	adds	r2, r3, #0x1
  410d28:      	add	r3, sp, #0x1c
  410d2a:      	ldr	r3, [r3]
  410d2c:      	str.w	r2, [r3, #0x180]
  410d30:      	add	r3, sp, #0x1c
  410d32:      	ldr	r3, [r3]
  410d34:      	mov.w	r2, #0x0
  410d38:      	str.w	r2, [r3, #0x188]
  410d3c:      	add	r3, sp, #0x1c
  410d3e:      	ldr	r3, [r3]
  410d40:      	ldr.w	r3, [r3, #0x10c]
  410d44:      	ldr.w	r3, [r3, #0xf4]
  410d48:      	mov	r0, r3
  410d4a:      	movs	r1, #0x0
  410d4c:      	bl	0x34e874 <_ZN6Joypad15disableMovementEb> @ imm = #-0xc24dc
  410d50:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x11c0
// TrainingStage::doLesson  ghidra=0x420d6c-0x420f0d  elf=0x410d6c-0x410f0d  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  410d6c:      	add	r3, sp, #0x1c
  410d6e:      	ldr	r3, [r3]
  410d70:      	ldr.w	r3, [r3, #0x17c]
  410d74:      	ldr	r3, [r3]
  410d76:      	add.w	r3, r3, #0x238
  410d7a:      	ldr	r3, [r3]
  410d7c:      	add	r2, sp, #0x1c
  410d7e:      	ldr	r2, [r2]
  410d80:      	ldr.w	r2, [r2, #0x17c]
  410d84:      	mov	r0, r2
  410d86:      	mov.w	r1, #0x0
  410d8a:      	movt	r1, #0x430c
  410d8e:      	blx	r3
  410d90:      	add	r3, sp, #0x1c
  410d92:      	ldr	r3, [r3]
  410d94:      	ldr.w	r3, [r3, #0x17c]
  410d98:      	ldr	r3, [r3]
  410d9a:      	add.w	r3, r3, #0x1d8
  410d9e:      	ldr	r3, [r3]
  410da0:      	add	r2, sp, #0x1c
  410da2:      	ldr	r2, [r2]
  410da4:      	ldr.w	r2, [r2, #0x17c]
  410da8:      	mov	r0, r2
  410daa:      	blx	r3
  410dac:      	mov	r3, r0
  410dae:      	ldr.w	r3, [r3, #0xf0]
  410db2:      	ldr	r2, [r3]
  410db4:      	adds	r2, #0x98
  410db6:      	ldr	r2, [r2]
  410db8:      	mov	r0, r3
  410dba:      	mov.w	r1, #0x0
  410dbe:      	blx	r2
  410dc0:      	add	r3, sp, #0x1c
  410dc2:      	ldr	r3, [r3]
  410dc4:      	ldr.w	r3, [r3, #0x17c]
  410dc8:      	ldr	r3, [r3]
  410dca:      	add.w	r3, r3, #0x2a4
  410dce:      	ldr	r3, [r3]
  410dd0:      	add	r2, sp, #0x1c
  410dd2:      	ldr	r2, [r2]
  410dd4:      	ldr.w	r2, [r2, #0x17c]
  410dd8:      	mov	r0, r2
  410dda:      	mov.w	r1, #0x0
  410dde:      	movt	r1, #0x42c8
  410de2:      	blx	r3
  410de4:      	add	r3, sp, #0x1c
  410de6:      	ldr	r3, [r3]
  410de8:      	ldr.w	r3, [r3, #0x17c]
  410dec:      	ldr	r3, [r3]
  410dee:      	add.w	r3, r3, #0x230
  410df2:      	ldr	r5, [r3]
  410df4:      	add	r3, sp, #0x1c
  410df6:      	ldr	r3, [r3]
  410df8:      	ldr.w	r3, [r3, #0x17c]
  410dfc:      	mov	r6, r3
  410dfe:      	add	r3, sp, #0x340
  410e00:      	mov	r0, r3
  410e02:      	vldr	d0, [pc, #268]          @ 0x410f10 <_ZN13TrainingStage8doLessonEf+0x6c38>
  410e06:      	vldr	d1, [pc, #264]          @ 0x410f10 <_ZN13TrainingStage8doLessonEf+0x6c38>
  410e0a:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x893a
  410e0e:      	mov	r3, sp
  410e10:      	add	r2, sp, #0x348
  410e12:      	ldm.w	r2, {r0, r1}
  410e16:      	stm.w	r3, {r0, r1}
  410e1a:      	add	r3, sp, #0x340
  410e1c:      	ldm	r3, {r2, r3}
  410e1e:      	mov	r0, r6
  410e20:      	blx	r5
  410e22:      	add	r3, sp, #0x1c
  410e24:      	ldr	r3, [r3]
  410e26:      	ldr.w	r3, [r3, #0x17c]
  410e2a:      	movs	r2, #0x1
  410e2c:      	strb.w	r2, [r3, #0x11c]
  410e30:      	add	r3, sp, #0x1c
  410e32:      	ldr	r3, [r3]
  410e34:      	ldr.w	r3, [r3, #0x17c]
  410e38:      	ldr	r3, [r3]
  410e3a:      	add.w	r3, r3, #0x1e0
  410e3e:      	ldr	r3, [r3]
  410e40:      	add	r2, sp, #0x1c
  410e42:      	ldr	r2, [r2]
  410e44:      	ldr.w	r2, [r2, #0x17c]
  410e48:      	mov	r0, r2
  410e4a:      	movs	r1, #0x1
  410e4c:      	blx	r3
  410e4e:      	ldr	r3, [pc, #0xd0]         @ 0x410f20 <_ZN13TrainingStage8doLessonEf+0x6c48>
  410e50:      	ldr	r3, [r4, r3]
  410e52:      	ldr	r3, [r3]
  410e54:      	ldr.w	r2, [r3, #0x138]
  410e58:      	add	r3, sp, #0x1c
  410e5a:      	ldr	r3, [r3]
  410e5c:      	ldr.w	r3, [r3, #0x17c]
  410e60:      	ldr.w	r3, [r3, #0x138]
  410e64:      	add.w	r1, sp, #0x410
  410e68:      	vldr	d4, [r2, #40]
  410e6c:      	vldr	d5, [r2, #48]
  410e70:      	vldr	d6, [r3, #40]
  410e74:      	vldr	d7, [r3, #48]
  410e78:      	mov	r0, r1
  410e7a:      	vmov.f64	d0, d4
  410e7e:      	vmov.f64	d1, d5
  410e82:      	vmov.f64	d2, d6
  410e86:      	vmov.f64	d3, d7
  410e8a:      	bl	0x408554 <_ZN6Tracer14checkCollisionEv+0x4c8> @ imm = #-0x893a
  410e8e:      	add.w	r3, sp, #0x410
  410e92:      	ldm	r3, {r0, r1, r2, r3}
  410e94:      	bl	0x6d70b8 <cpvlength>    @ imm = #0x2c6220
  410e98:      	vmov	d6, r0, r1
  410e9c:      	vldr	d7, [pc, #120]          @ 0x410f18 <_ZN13TrainingStage8doLessonEf+0x6c40>
  410ea0:      	vcmpe.f64	d6, d7
  410ea4:      	vmrs	APSR_nzcv, fpscr
  410ea8:      	ite	le
  410eaa:      	movle	r3, #0x0
  410eac:      	movgt	r3, #0x1
  410eae:      	uxtb	r3, r3
  410eb0:      	cmp	r3, #0x0
  410eb2:      	beq	0x410f24 <_ZN13TrainingStage8doLessonEf+0x6c4c> @ imm = #0x6e
  410eb4:      	add.w	r3, sp, #0x410
  410eb8:      	ldm	r3, {r0, r1, r2, r3}
  410eba:      	bl	0x408700 <_ZN6Tracer14checkCollisionEv+0x674> @ imm = #-0x87be
  410ebe:      	add	r3, sp, #0x1c
  410ec0:      	ldr	r3, [r3]
  410ec2:      	ldr.w	r3, [r3, #0x17c]
  410ec6:      	ldr	r3, [r3]
  410ec8:      	add.w	r3, r3, #0x230
  410ecc:      	ldr	r5, [r3]
  410ece:      	add	r3, sp, #0x1c
  410ed0:      	ldr	r3, [r3]
  410ed2:      	ldr.w	r3, [r3, #0x17c]
  410ed6:      	mov	r6, r3
  410ed8:      	add	r3, sp, #0x350
  410eda:      	add.w	r1, sp, #0x410
  410ede:      	vldr	d6, [r1]
  410ee2:      	add.w	r2, sp, #0x418
  410ee6:      	vldr	d7, [r2]
  410eea:      	mov	r0, r3
  410eec:      	vmov.f64	d0, d6
  410ef0:      	vmov.f64	d1, d7
  410ef4:      	bl	0x4085f8 <_ZN6Tracer14checkCollisionEv+0x56c> @ imm = #-0x8900
  410ef8:      	mov	r3, sp
  410efa:      	add	r2, sp, #0x358
  410efc:      	ldm.w	r2, {r0, r1}
  410f00:      	stm.w	r3, {r0, r1}
  410f04:      	add	r3, sp, #0x350
  410f06:      	ldm	r3, {r2, r3}
  410f08:      	mov	r0, r6
  410f0a:      	blx	r5
  410f0c:      	b	0x411034 <_ZN13TrainingStage8doLessonEf+0x6d5c> @ imm = #0x124
// TrainingStage::doLesson  ghidra=0x420f24-0x4211b5  elf=0x410f24-0x4111b5  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  410f24:      	add	r3, sp, #0x1c
  410f26:      	ldr	r3, [r3]
  410f28:      	ldr.w	r3, [r3, #0x17c]
  410f2c:      	ldr.w	r6, [r3, #0x138]
  410f30:      	add	r3, sp, #0x1c
  410f32:      	ldr	r3, [r3]
  410f34:      	ldr.w	r3, [r3, #0x17c]
  410f38:      	ldr.w	r5, [r3, #0x138]
  410f3c:      	add	r3, sp, #0x1c
  410f3e:      	ldr	r3, [r3]
  410f40:      	vldr	s14, [r3, #392]
  410f44:      	vmov.f32	s15, #3.000000e+00
  410f48:      	vmul.f32	s15, s14, s15
  410f4c:      	vcvt.f64.f32	d7, s15
  410f50:      	vmov	r0, r1, d7
  410f54:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x13b050
  410f58:      	mov	r2, r0
  410f5a:      	mov	r3, r1
  410f5c:      	add	r1, sp, #0x360
  410f5e:      	mov	r0, r1
  410f60:      	vldr	d0, [pc, #596]          @ 0x4111b8 <_ZN13TrainingStage8doLessonEf+0x6ee0>
  410f64:      	vmov	d1, r2, r3
  410f68:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x8a98
  410f6c:      	add	r3, sp, #0x8
  410f6e:      	vldr	d4, [r5, #40]
  410f72:      	vldr	d5, [r5, #48]
  410f76:      	vldr	d6, [sp, #864]
  410f7a:      	vldr	d7, [sp, #872]
  410f7e:      	mov	r0, r3
  410f80:      	vmov.f64	d0, d4
  410f84:      	vmov.f64	d1, d5
  410f88:      	vmov.f64	d2, d6
  410f8c:      	vmov.f64	d3, d7
  410f90:      	bl	0x4084fc <_ZN6Tracer14checkCollisionEv+0x470> @ imm = #-0x8a98
  410f94:      	add	r3, sp, #0x8
  410f96:      	add.w	r5, r6, #0x28
  410f9a:      	ldm	r3, {r0, r1, r2, r3}
  410f9c:      	stm.w	r5, {r0, r1, r2, r3}
  410fa0:      	add	r3, sp, #0x1c
  410fa2:      	ldr	r3, [r3]
  410fa4:      	ldr.w	r3, [r3, #0x17c]
  410fa8:      	ldr.w	r5, [r3, #0x138]
  410fac:      	add	r3, sp, #0x1c
  410fae:      	ldr	r3, [r3]
  410fb0:      	ldr.w	r3, [r3, #0x17c]
  410fb4:      	ldr.w	r3, [r3, #0x138]
  410fb8:      	add	r2, sp, #0x370
  410fba:      	vldr	d6, [r3, #72]
  410fbe:      	vldr	d7, [r3, #80]
  410fc2:      	mov	r0, r2
  410fc4:      	vmov.f64	d0, d6
  410fc8:      	vmov.f64	d1, d7
  410fcc:      	vldr	d2, [pc, #496]          @ 0x4111c0 <_ZN13TrainingStage8doLessonEf+0x6ee8>
  410fd0:      	bl	0x4085ac <_ZN6Tracer14checkCollisionEv+0x520> @ imm = #-0x8a28
  410fd4:      	vldr	d6, [sp, #880]
  410fd8:      	vldr	d7, [sp, #888]
  410fdc:      	mov	r0, r5
  410fde:      	vmov.f64	d0, d6
  410fe2:      	vmov.f64	d1, d7
  410fe6:      	bl	0x408674 <_ZN6Tracer14checkCollisionEv+0x5e8> @ imm = #-0x8976
  410fea:      	add	r3, sp, #0x1c
  410fec:      	ldr	r3, [r3]
  410fee:      	ldr.w	r3, [r3, #0x17c]
  410ff2:      	ldr.w	r5, [r3, #0x138]
  410ff6:      	add	r3, sp, #0x1c
  410ff8:      	ldr	r3, [r3]
  410ffa:      	ldr.w	r3, [r3, #0x17c]
  410ffe:      	ldr.w	r3, [r3, #0x138]
  411002:      	add	r2, sp, #0x380
  411004:      	vldr	d6, [r3, #56]
  411008:      	vldr	d7, [r3, #64]
  41100c:      	mov	r0, r2
  41100e:      	vmov.f64	d0, d6
  411012:      	vmov.f64	d1, d7
  411016:      	vldr	d2, [pc, #424]          @ 0x4111c0 <_ZN13TrainingStage8doLessonEf+0x6ee8>
  41101a:      	bl	0x4085ac <_ZN6Tracer14checkCollisionEv+0x520> @ imm = #-0x8a72
  41101e:      	vldr	d6, [sp, #896]
  411022:      	vldr	d7, [sp, #904]
  411026:      	mov	r0, r5
  411028:      	vmov.f64	d0, d6
  41102c:      	vmov.f64	d1, d7
  411030:      	bl	0x408648 <_ZN6Tracer14checkCollisionEv+0x5bc> @ imm = #-0x89ec
  411034:      	add	r3, sp, #0x1c
  411036:      	ldr	r3, [r3]
  411038:      	ldr.w	r3, [r3, #0x170]
  41103c:      	ldr	r3, [r3]
  41103e:      	adds	r3, #0x90
  411040:      	ldr	r3, [r3]
  411042:      	add	r2, sp, #0x1c
  411044:      	ldr	r2, [r2]
  411046:      	ldr.w	r2, [r2, #0x170]
  41104a:      	mov	r0, r2
  41104c:      	movs	r1, #0x0
  41104e:      	blx	r3
  411050:      	ldr	r3, [pc, #0x17c]        @ 0x4111d0 <_ZN13TrainingStage8doLessonEf+0x6ef8>
  411052:      	ldr	r3, [r4, r3]
  411054:      	ldr	r3, [r3]
  411056:      	ldr	r3, [r3]
  411058:      	add.w	r3, r3, #0x1a0
  41105c:      	ldr	r3, [r3]
  41105e:      	ldr	r2, [pc, #0x170]        @ 0x4111d0 <_ZN13TrainingStage8doLessonEf+0x6ef8>
  411060:      	ldr	r2, [r4, r2]
  411062:      	ldr	r2, [r2]
  411064:      	mov	r0, r2
  411066:      	blx	r3
  411068:      	mov	r3, r0
  41106a:      	cmp	r3, #0x0
  41106c:      	beq	0x411156 <_ZN13TrainingStage8doLessonEf+0x6e7e> @ imm = #0xe6
  41106e:      	add	r3, sp, #0x1c
  411070:      	ldr	r3, [r3]
  411072:      	ldr.w	r3, [r3, #0x170]
  411076:      	ldr	r3, [r3]
  411078:      	adds	r3, #0x90
  41107a:      	ldr	r3, [r3]
  41107c:      	add	r2, sp, #0x1c
  41107e:      	ldr	r2, [r2]
  411080:      	ldr.w	r2, [r2, #0x170]
  411084:      	mov	r0, r2
  411086:      	movs	r1, #0x1
  411088:      	blx	r3
  41108a:      	add	r3, sp, #0x1c
  41108c:      	ldr	r3, [r3]
  41108e:      	ldr.w	r3, [r3, #0x170]
  411092:      	ldr	r3, [r3]
  411094:      	adds	r3, #0x4c
  411096:      	ldr	r5, [r3]
  411098:      	add	r3, sp, #0x1c
  41109a:      	ldr	r3, [r3]
  41109c:      	ldr.w	r6, [r3, #0x170]
  4110a0:      	ldr	r3, [pc, #0x12c]        @ 0x4111d0 <_ZN13TrainingStage8doLessonEf+0x6ef8>
  4110a2:      	ldr	r3, [r4, r3]
  4110a4:      	ldr	r3, [r3]
  4110a6:      	ldr.w	r3, [r3, #0x138]
  4110aa:      	vldr	d7, [r3, #40]
  4110ae:      	vcvt.f32.f64	s13, d7
  4110b2:      	ldr	r3, [pc, #0x11c]        @ 0x4111d0 <_ZN13TrainingStage8doLessonEf+0x6ef8>
  4110b4:      	ldr	r3, [r4, r3]
  4110b6:      	ldr	r3, [r3]
  4110b8:      	ldr.w	r3, [r3, #0x138]
  4110bc:      	vldr	d7, [r3, #48]
  4110c0:      	vcvt.f32.f64	s15, d7
  4110c4:      	add	r3, sp, #0x3e0
  4110c6:      	mov	r0, r3
  4110c8:      	vmov	r1, s13
  4110cc:      	vmov	r2, s15
  4110d0:      	bl	0x592cf0 <_ZN7cocos2d7CCPointC2Eff> @ imm = #0x181c1c
  4110d4:      	add	r3, sp, #0x1c
  4110d6:      	ldr	r3, [r3]
  4110d8:      	vldr	s14, [r3, #392]
  4110dc:      	vmov.f32	s15, #5.000000e+00
  4110e0:      	vmul.f32	s15, s14, s15
  4110e4:      	vcvt.f64.f32	d7, s15
  4110e8:      	vmov	r0, r1, d7
  4110ec:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x13b1e8
  4110f0:      	vmov	d6, r0, r1
  4110f4:      	vmov.f64	d7, #1.000000e+01
  4110f8:      	vmul.f64	d6, d6, d7
  4110fc:      	vldr	d7, [pc, #200]          @ 0x4111c8 <_ZN13TrainingStage8doLessonEf+0x6ef0>
  411100:      	vadd.f64	d7, d6, d7
  411104:      	vcvt.f32.f64	s15, d7
  411108:      	add	r3, sp, #0x3f0
  41110a:      	mov	r0, r3
  41110c:      	mov.w	r1, #0x0
  411110:      	vmov	r2, s15
  411114:      	bl	0x592cf0 <_ZN7cocos2d7CCPointC2Eff> @ imm = #0x181bd8
  411118:      	add.w	r1, sp, #0x400
  41111c:      	add	r2, sp, #0x3e0
  41111e:      	add	r3, sp, #0x3f0
  411120:      	mov	r0, r1
  411122:      	mov	r1, r2
  411124:      	mov	r2, r3
  411126:      	bl	0x4084b4 <_ZN6Tracer14checkCollisionEv+0x428> @ imm = #-0x8c76
  41112a:      	add.w	r3, sp, #0x400
  41112e:      	mov	r0, r6
  411130:      	mov	r1, r3
  411132:      	blx	r5
  411134:      	add	r3, sp, #0x1c
  411136:      	ldr	r3, [r3]
  411138:      	ldr.w	r3, [r3, #0x170]
  41113c:      	ldr	r3, [r3]
  41113e:      	adds	r3, #0x98
  411140:      	ldr	r3, [r3]
  411142:      	add	r2, sp, #0x1c
  411144:      	ldr	r2, [r2]
  411146:      	ldr.w	r2, [r2, #0x170]
  41114a:      	mov	r0, r2
  41114c:      	mov.w	r1, #0x0
  411150:      	movt	r1, #0xc2b4
  411154:      	blx	r3
  411156:      	add	r3, sp, #0x1c
  411158:      	ldr	r3, [r3]
  41115a:      	ldr.w	r3, [r3, #0x174]
  41115e:      	ldr	r3, [r3]
  411160:      	adds	r3, #0x90
  411162:      	ldr	r3, [r3]
  411164:      	add	r2, sp, #0x1c
  411166:      	ldr	r2, [r2]
  411168:      	ldr.w	r2, [r2, #0x174]
  41116c:      	mov	r0, r2
  41116e:      	movs	r1, #0x0
  411170:      	blx	r3
  411172:      	ldr	r3, [pc, #0x5c]         @ 0x4111d0 <_ZN13TrainingStage8doLessonEf+0x6ef8>
  411174:      	ldr	r3, [r4, r3]
  411176:      	ldr	r3, [r3]
  411178:      	ldr	r3, [r3]
  41117a:      	add.w	r3, r3, #0x2a0
  41117e:      	ldr	r3, [r3]
  411180:      	ldr	r2, [pc, #0x4c]         @ 0x4111d0 <_ZN13TrainingStage8doLessonEf+0x6ef8>
  411182:      	ldr	r2, [r4, r2]
  411184:      	ldr	r2, [r2]
  411186:      	mov	r0, r2
  411188:      	blx	r3
  41118a:      	vmov	s14, r0
  41118e:      	vmov.f32	s15, #2.500000e+01
  411192:      	vcmpe.f32	s14, s15
  411196:      	vmrs	APSR_nzcv, fpscr
  41119a:      	bmi	0x4111b2 <_ZN13TrainingStage8doLessonEf+0x6eda> @ imm = #0x14
  41119c:      	add	r3, sp, #0x1c
  41119e:      	ldr	r3, [r3]
  4111a0:      	vldr	s14, [r3, #392]
  4111a4:      	vmov.f32	s15, #2.500000e+01
  4111a8:      	vcmpe.f32	s14, s15
  4111ac:      	vmrs	APSR_nzcv, fpscr
  4111b0:      	ble	0x4111d4 <_ZN13TrainingStage8doLessonEf+0x6efc> @ imm = #0x20
  4111b2:      	movs	r3, #0x1
  4111b4:      	b	0x4111d6 <_ZN13TrainingStage8doLessonEf+0x6efe> @ imm = #0x1e
// TrainingStage::doLesson  ghidra=0x4211d4-0x421741  elf=0x4111d4-0x411741  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  4111d4:      	movs	r3, #0x0
  4111d6:      	cmp	r3, #0x0
  4111d8:      	beq	0x411292 <_ZN13TrainingStage8doLessonEf+0x6fba> @ imm = #0xb6
  4111da:      	add	r3, sp, #0x1c
  4111dc:      	ldr	r3, [r3]
  4111de:      	ldr.w	r3, [r3, #0x180]
  4111e2:      	adds	r2, r3, #0x1
  4111e4:      	add	r3, sp, #0x1c
  4111e6:      	ldr	r3, [r3]
  4111e8:      	str.w	r2, [r3, #0x180]
  4111ec:      	add	r3, sp, #0x1c
  4111ee:      	ldr	r3, [r3]
  4111f0:      	mov.w	r2, #0x0
  4111f4:      	str.w	r2, [r3, #0x188]
  4111f8:      	add	r3, sp, #0x1c
  4111fa:      	ldr	r3, [r3]
  4111fc:      	ldr.w	r3, [r3, #0x174]
  411200:      	ldr	r3, [r3]
  411202:      	adds	r3, #0x38
  411204:      	ldr	r3, [r3]
  411206:      	add	r2, sp, #0x1c
  411208:      	ldr	r2, [r2]
  41120a:      	ldr.w	r2, [r2, #0x174]
  41120e:      	mov	r0, r2
  411210:      	mov.w	r1, #0x3f800000
  411214:      	blx	r3
  411216:      	add	r3, sp, #0x1c
  411218:      	ldr	r3, [r3]
  41121a:      	ldr.w	r5, [r3, #0x10c]
  41121e:      	add	r3, sp, #0x3f0
  411220:      	mov	r0, r3
  411222:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x3791ce
  411226:      	add.w	r2, sp, #0x400
  41122a:      	add	r3, sp, #0x3f0
  41122c:      	mov	r0, r2
  41122e:      	ldr.w	r2, [pc, #0x530]        @ 0x411760 <_ZN13TrainingStage8doLessonEf+0x7488>
  411232:      	add	r2, pc
  411234:      	mov	r1, r2
  411236:      	mov	r2, r3
  411238:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3a5824
  41123c:      	movs	r0, #0x0
  41123e:      	movs	r1, #0x0
  411240:      	movs	r2, #0xff
  411242:      	bl	0x408458 <_ZN6Tracer14checkCollisionEv+0x3cc> @ imm = #-0x8dee
  411246:      	mov	r2, r0
  411248:      	add	r3, sp, #0xc0
  41124a:      	mov	r1, r2
  41124c:      	strb	r1, [r3]
  41124e:      	ubfx	r1, r2, #0x8, #0x8
  411252:      	strb	r1, [r3, #0x1]
  411254:      	ubfx	r2, r2, #0x10, #0x8
  411258:      	strb	r2, [r3, #0x2]
  41125a:      	add.w	r2, sp, #0x400
  41125e:      	add	r3, sp, #0xc0
  411260:      	mov	r0, r5
  411262:      	mov	r1, r2
  411264:      	ldr	r2, [r3]
  411266:      	movs	r3, #0x3
  411268:      	bl	0x33d2c0 <_ZN3HUD10addMessageESsN7cocos2d10_ccColor3BEs> @ imm = #-0xd3fac
  41126c:      	add.w	r3, sp, #0x400
  411270:      	mov	r0, r3
  411272:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3a469e
  411276:      	add	r3, sp, #0x3f0
  411278:      	mov	r0, r3
  41127a:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x37917e
  41127e:      	ldr.w	r3, [pc, #0x4e4]        @ 0x411764 <_ZN13TrainingStage8doLessonEf+0x748c>
  411282:      	ldr	r3, [r4, r3]
  411284:      	ldr	r3, [r3]
  411286:      	mov	r0, r3
  411288:      	movs	r1, #0x57
  41128a:      	movs	r2, #0x1
  41128c:      	bl	0x3f7d40 <_ZN5Sound18playSoundWithVoiceEii> @ imm = #-0x19550
  411290:      	b	0x4113dc <_ZN13TrainingStage8doLessonEf+0x7104> @ imm = #0x148
  411292:      	ldr.w	r3, [pc, #0x4d4]        @ 0x411768 <_ZN13TrainingStage8doLessonEf+0x7490>
  411296:      	ldr	r3, [r4, r3]
  411298:      	ldr	r3, [r3]
  41129a:      	ldrb.w	r3, [r3, #0x11c]
  41129e:      	eor	r3, r3, #0x1
  4112a2:      	uxtb	r3, r3
  4112a4:      	cmp	r3, #0x0
  4112a6:      	beq.w	0x4113dc <_ZN13TrainingStage8doLessonEf+0x7104> @ imm = #0x132
  4112aa:      	add	r3, sp, #0x1c
  4112ac:      	ldr	r3, [r3]
  4112ae:      	ldr.w	r3, [r3, #0x174]
  4112b2:      	ldr	r3, [r3]
  4112b4:      	adds	r3, #0x90
  4112b6:      	ldr	r3, [r3]
  4112b8:      	add	r2, sp, #0x1c
  4112ba:      	ldr	r2, [r2]
  4112bc:      	ldr.w	r2, [r2, #0x174]
  4112c0:      	mov	r0, r2
  4112c2:      	movs	r1, #0x1
  4112c4:      	blx	r3
  4112c6:      	add	r3, sp, #0x1c
  4112c8:      	ldr	r3, [r3]
  4112ca:      	ldr.w	r3, [r3, #0x174]
  4112ce:      	ldr	r3, [r3]
  4112d0:      	adds	r3, #0x38
  4112d2:      	ldr	r3, [r3]
  4112d4:      	add	r2, sp, #0x1c
  4112d6:      	ldr	r2, [r2]
  4112d8:      	ldr.w	r2, [r2, #0x174]
  4112dc:      	mov	r0, r2
  4112de:      	mov.w	r1, #0x0
  4112e2:      	movt	r1, #0xbf80
  4112e6:      	blx	r3
  4112e8:      	add	r3, sp, #0x1c
  4112ea:      	ldr	r3, [r3]
  4112ec:      	ldr.w	r3, [r3, #0x174]
  4112f0:      	ldr	r3, [r3]
  4112f2:      	adds	r3, #0x98
  4112f4:      	ldr	r3, [r3]
  4112f6:      	add	r2, sp, #0x1c
  4112f8:      	ldr	r2, [r2]
  4112fa:      	ldr.w	r2, [r2, #0x174]
  4112fe:      	mov	r0, r2
  411300:      	mov.w	r1, #0x0
  411304:      	movt	r1, #0x4307
  411308:      	blx	r3
  41130a:      	add	r3, sp, #0x1c
  41130c:      	ldr	r3, [r3]
  41130e:      	ldr.w	r3, [r3, #0x16c]
  411312:      	ldr	r3, [r3]
  411314:      	adds	r3, #0x4c
  411316:      	ldr	r4, [r3]
  411318:      	add	r3, sp, #0x1c
  41131a:      	ldr	r3, [r3]
  41131c:      	ldr.w	r5, [r3, #0x16c]
  411320:      	add	r3, sp, #0x1c
  411322:      	ldr	r3, [r3]
  411324:      	vldr	s14, [r3, #392]
  411328:      	vmov.f32	s15, #5.000000e+00
  41132c:      	vmul.f32	s15, s14, s15
  411330:      	vcvt.f64.f32	d7, s15
  411334:      	vmov	r0, r1, d7
  411338:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x13b434
  41133c:      	vmov	d6, r0, r1
  411340:      	vmov.f64	d7, #1.000000e+01
  411344:      	vmul.f64	d7, d6, d7
  411348:      	vcvt.f32.f64	s15, d7
  41134c:      	add.w	r3, sp, #0x400
  411350:      	mov	r0, r3
  411352:      	vmov	r1, s15
  411356:      	mov.w	r2, #0x0
  41135a:      	bl	0x592cf0 <_ZN7cocos2d7CCPointC2Eff> @ imm = #0x181992
  41135e:      	add.w	r3, sp, #0x400
  411362:      	mov	r0, r5
  411364:      	mov	r1, r3
  411366:      	blx	r4
  411368:      	add	r3, sp, #0x1c
  41136a:      	ldr	r3, [r3]
  41136c:      	ldr.w	r3, [r3, #0x174]
  411370:      	ldr	r3, [r3]
  411372:      	adds	r3, #0x4c
  411374:      	ldr	r4, [r3]
  411376:      	add	r3, sp, #0x1c
  411378:      	ldr	r3, [r3]
  41137a:      	ldr.w	r5, [r3, #0x174]
  41137e:      	add	r3, sp, #0x1c
  411380:      	ldr	r3, [r3]
  411382:      	ldr.w	r3, [r3, #0x10c]
  411386:      	ldr.w	r3, [r3, #0xf4]
  41138a:      	ldr.w	r3, [r3, #0xe4]
  41138e:      	ldr	r3, [r3]
  411390:      	adds	r3, #0x50
  411392:      	ldr	r3, [r3]
  411394:      	add	r2, sp, #0x1c
  411396:      	ldr	r2, [r2]
  411398:      	ldr.w	r2, [r2, #0x10c]
  41139c:      	ldr.w	r2, [r2, #0xf4]
  4113a0:      	ldr.w	r2, [r2, #0xe4]
  4113a4:      	mov	r0, r2
  4113a6:      	blx	r3
  4113a8:      	mov	r6, r0
  4113aa:      	add	r3, sp, #0x3f0
  4113ac:      	mov	r0, r3
  4113ae:      	mov.w	r1, #0x0
  4113b2:      	movt	r1, #0x4270
  4113b6:      	mov.w	r2, #0x0
  4113ba:      	movt	r2, #0x425c
  4113be:      	bl	0x592cf0 <_ZN7cocos2d7CCPointC2Eff> @ imm = #0x18192e
  4113c2:      	add.w	r2, sp, #0x400
  4113c6:      	add	r3, sp, #0x3f0
  4113c8:      	mov	r0, r2
  4113ca:      	mov	r1, r6
  4113cc:      	mov	r2, r3
  4113ce:      	bl	0x4084b4 <_ZN6Tracer14checkCollisionEv+0x428> @ imm = #-0x8f1e
  4113d2:      	add.w	r3, sp, #0x400
  4113d6:      	mov	r0, r5
  4113d8:      	mov	r1, r3
  4113da:      	blx	r4
  4113dc:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0xb34
  4113e0:      	add	r3, sp, #0x1c
  4113e2:      	ldr	r3, [r3]
  4113e4:      	ldr.w	r3, [r3, #0x17c]
  4113e8:      	ldr	r3, [r3]
  4113ea:      	add.w	r3, r3, #0x238
  4113ee:      	ldr	r3, [r3]
  4113f0:      	add	r2, sp, #0x1c
  4113f2:      	ldr	r2, [r2]
  4113f4:      	ldr.w	r2, [r2, #0x17c]
  4113f8:      	mov	r0, r2
  4113fa:      	mov.w	r1, #0x0
  4113fe:      	movt	r1, #0x430c
  411402:      	blx	r3
  411404:      	add	r3, sp, #0x1c
  411406:      	ldr	r3, [r3]
  411408:      	ldr.w	r3, [r3, #0x17c]
  41140c:      	ldr	r3, [r3]
  41140e:      	add.w	r3, r3, #0x1d8
  411412:      	ldr	r3, [r3]
  411414:      	add	r2, sp, #0x1c
  411416:      	ldr	r2, [r2]
  411418:      	ldr.w	r2, [r2, #0x17c]
  41141c:      	mov	r0, r2
  41141e:      	blx	r3
  411420:      	mov	r3, r0
  411422:      	ldr.w	r3, [r3, #0xf0]
  411426:      	ldr	r2, [r3]
  411428:      	adds	r2, #0x98
  41142a:      	ldr	r2, [r2]
  41142c:      	mov	r0, r3
  41142e:      	mov.w	r1, #0x0
  411432:      	blx	r2
  411434:      	add	r3, sp, #0x1c
  411436:      	ldr	r3, [r3]
  411438:      	ldr.w	r3, [r3, #0x17c]
  41143c:      	ldr	r3, [r3]
  41143e:      	add.w	r3, r3, #0x2a4
  411442:      	ldr	r3, [r3]
  411444:      	add	r2, sp, #0x1c
  411446:      	ldr	r2, [r2]
  411448:      	ldr.w	r2, [r2, #0x17c]
  41144c:      	mov	r0, r2
  41144e:      	mov.w	r1, #0x0
  411452:      	movt	r1, #0x42c8
  411456:      	blx	r3
  411458:      	add	r3, sp, #0x1c
  41145a:      	ldr	r3, [r3]
  41145c:      	ldr.w	r3, [r3, #0x17c]
  411460:      	ldr	r3, [r3]
  411462:      	add.w	r3, r3, #0x230
  411466:      	ldr	r5, [r3]
  411468:      	add	r3, sp, #0x1c
  41146a:      	ldr	r3, [r3]
  41146c:      	ldr.w	r3, [r3, #0x17c]
  411470:      	mov	r6, r3
  411472:      	add	r3, sp, #0x390
  411474:      	mov	r0, r3
  411476:      	vldr	d0, [pc, #720]          @ 0x411748 <_ZN13TrainingStage8doLessonEf+0x7470>
  41147a:      	vldr	d1, [pc, #716]          @ 0x411748 <_ZN13TrainingStage8doLessonEf+0x7470>
  41147e:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x8fae
  411482:      	mov	r3, sp
  411484:      	add	r2, sp, #0x398
  411486:      	ldm.w	r2, {r0, r1}
  41148a:      	stm.w	r3, {r0, r1}
  41148e:      	add	r3, sp, #0x390
  411490:      	ldm	r3, {r2, r3}
  411492:      	mov	r0, r6
  411494:      	blx	r5
  411496:      	add	r3, sp, #0x1c
  411498:      	ldr	r3, [r3]
  41149a:      	ldr.w	r3, [r3, #0x17c]
  41149e:      	movs	r2, #0x1
  4114a0:      	strb.w	r2, [r3, #0x11c]
  4114a4:      	add	r3, sp, #0x1c
  4114a6:      	ldr	r3, [r3]
  4114a8:      	ldr.w	r3, [r3, #0x17c]
  4114ac:      	ldr	r3, [r3]
  4114ae:      	add.w	r3, r3, #0x1e0
  4114b2:      	ldr	r3, [r3]
  4114b4:      	add	r2, sp, #0x1c
  4114b6:      	ldr	r2, [r2]
  4114b8:      	ldr.w	r2, [r2, #0x17c]
  4114bc:      	mov	r0, r2
  4114be:      	movs	r1, #0x1
  4114c0:      	blx	r3
  4114c2:      	ldr	r3, [pc, #0x2a4]        @ 0x411768 <_ZN13TrainingStage8doLessonEf+0x7490>
  4114c4:      	ldr	r3, [r4, r3]
  4114c6:      	ldr	r3, [r3]
  4114c8:      	ldr.w	r2, [r3, #0x138]
  4114cc:      	add	r3, sp, #0x1c
  4114ce:      	ldr	r3, [r3]
  4114d0:      	ldr.w	r3, [r3, #0x17c]
  4114d4:      	ldr.w	r3, [r3, #0x138]
  4114d8:      	add.w	r1, sp, #0x410
  4114dc:      	vldr	d4, [r2, #40]
  4114e0:      	vldr	d5, [r2, #48]
  4114e4:      	vldr	d6, [r3, #40]
  4114e8:      	vldr	d7, [r3, #48]
  4114ec:      	mov	r0, r1
  4114ee:      	vmov.f64	d0, d4
  4114f2:      	vmov.f64	d1, d5
  4114f6:      	vmov.f64	d2, d6
  4114fa:      	vmov.f64	d3, d7
  4114fe:      	bl	0x408554 <_ZN6Tracer14checkCollisionEv+0x4c8> @ imm = #-0x8fae
  411502:      	add.w	r3, sp, #0x410
  411506:      	ldm	r3, {r0, r1, r2, r3}
  411508:      	bl	0x6d70b8 <cpvlength>    @ imm = #0x2c5bac
  41150c:      	vmov	d6, r0, r1
  411510:      	vldr	d7, [pc, #572]          @ 0x411750 <_ZN13TrainingStage8doLessonEf+0x7478>
  411514:      	vcmpe.f64	d6, d7
  411518:      	vmrs	APSR_nzcv, fpscr
  41151c:      	ite	le
  41151e:      	movle	r3, #0x0
  411520:      	movgt	r3, #0x1
  411522:      	uxtb	r3, r3
  411524:      	cmp	r3, #0x0
  411526:      	beq	0x411582 <_ZN13TrainingStage8doLessonEf+0x72aa> @ imm = #0x58
  411528:      	add.w	r3, sp, #0x410
  41152c:      	ldm	r3, {r0, r1, r2, r3}
  41152e:      	bl	0x408700 <_ZN6Tracer14checkCollisionEv+0x674> @ imm = #-0x8e32
  411532:      	add	r3, sp, #0x1c
  411534:      	ldr	r3, [r3]
  411536:      	ldr.w	r3, [r3, #0x17c]
  41153a:      	ldr	r3, [r3]
  41153c:      	add.w	r3, r3, #0x230
  411540:      	ldr	r5, [r3]
  411542:      	add	r3, sp, #0x1c
  411544:      	ldr	r3, [r3]
  411546:      	ldr.w	r3, [r3, #0x17c]
  41154a:      	mov	r6, r3
  41154c:      	add	r3, sp, #0x3a0
  41154e:      	add.w	r1, sp, #0x410
  411552:      	vldr	d6, [r1]
  411556:      	add.w	r2, sp, #0x418
  41155a:      	vldr	d7, [r2]
  41155e:      	mov	r0, r3
  411560:      	vmov.f64	d0, d6
  411564:      	vmov.f64	d1, d7
  411568:      	bl	0x4085f8 <_ZN6Tracer14checkCollisionEv+0x56c> @ imm = #-0x8f74
  41156c:      	mov	r3, sp
  41156e:      	add	r2, sp, #0x3a8
  411570:      	ldm.w	r2, {r0, r1}
  411574:      	stm.w	r3, {r0, r1}
  411578:      	add	r3, sp, #0x3a0
  41157a:      	ldm	r3, {r2, r3}
  41157c:      	mov	r0, r6
  41157e:      	blx	r5
  411580:      	b	0x411692 <_ZN13TrainingStage8doLessonEf+0x73ba> @ imm = #0x10e
  411582:      	add	r3, sp, #0x1c
  411584:      	ldr	r3, [r3]
  411586:      	ldr.w	r3, [r3, #0x17c]
  41158a:      	ldr.w	r6, [r3, #0x138]
  41158e:      	add	r3, sp, #0x1c
  411590:      	ldr	r3, [r3]
  411592:      	ldr.w	r3, [r3, #0x17c]
  411596:      	ldr.w	r5, [r3, #0x138]
  41159a:      	add	r3, sp, #0x1c
  41159c:      	ldr	r3, [r3]
  41159e:      	vldr	s14, [r3, #392]
  4115a2:      	vmov.f32	s15, #3.000000e+00
  4115a6:      	vmul.f32	s15, s14, s15
  4115aa:      	vcvt.f64.f32	d7, s15
  4115ae:      	vmov	r0, r1, d7
  4115b2:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x13b6ac
  4115b6:      	mov	r2, r0
  4115b8:      	mov	r3, r1
  4115ba:      	add	r1, sp, #0x3b0
  4115bc:      	mov	r0, r1
  4115be:      	vldr	d0, [pc, #392]          @ 0x411748 <_ZN13TrainingStage8doLessonEf+0x7470>
  4115c2:      	vmov	d1, r2, r3
  4115c6:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x90f6
  4115ca:      	add	r3, sp, #0x8
  4115cc:      	vldr	d4, [r5, #40]
  4115d0:      	vldr	d5, [r5, #48]
  4115d4:      	vldr	d6, [sp, #944]
  4115d8:      	vldr	d7, [sp, #952]
  4115dc:      	mov	r0, r3
  4115de:      	vmov.f64	d0, d4
  4115e2:      	vmov.f64	d1, d5
  4115e6:      	vmov.f64	d2, d6
  4115ea:      	vmov.f64	d3, d7
  4115ee:      	bl	0x4084fc <_ZN6Tracer14checkCollisionEv+0x470> @ imm = #-0x90f6
  4115f2:      	add	r3, sp, #0x8
  4115f4:      	add.w	r5, r6, #0x28
  4115f8:      	ldm	r3, {r0, r1, r2, r3}
  4115fa:      	stm.w	r5, {r0, r1, r2, r3}
  4115fe:      	add	r3, sp, #0x1c
  411600:      	ldr	r3, [r3]
  411602:      	ldr.w	r3, [r3, #0x17c]
  411606:      	ldr.w	r5, [r3, #0x138]
  41160a:      	add	r3, sp, #0x1c
  41160c:      	ldr	r3, [r3]
  41160e:      	ldr.w	r3, [r3, #0x17c]
  411612:      	ldr.w	r3, [r3, #0x138]
  411616:      	add	r2, sp, #0x3c0
  411618:      	vldr	d6, [r3, #72]
  41161c:      	vldr	d7, [r3, #80]
  411620:      	mov	r0, r2
  411622:      	vmov.f64	d0, d6
  411626:      	vmov.f64	d1, d7
  41162a:      	vldr	d2, [pc, #300]          @ 0x411758 <_ZN13TrainingStage8doLessonEf+0x7480>
  41162e:      	bl	0x4085ac <_ZN6Tracer14checkCollisionEv+0x520> @ imm = #-0x9086
  411632:      	vldr	d6, [sp, #960]
  411636:      	vldr	d7, [sp, #968]
  41163a:      	mov	r0, r5
  41163c:      	vmov.f64	d0, d6
  411640:      	vmov.f64	d1, d7
  411644:      	bl	0x408674 <_ZN6Tracer14checkCollisionEv+0x5e8> @ imm = #-0x8fd4
  411648:      	add	r3, sp, #0x1c
  41164a:      	ldr	r3, [r3]
  41164c:      	ldr.w	r3, [r3, #0x17c]
  411650:      	ldr.w	r5, [r3, #0x138]
  411654:      	add	r3, sp, #0x1c
  411656:      	ldr	r3, [r3]
  411658:      	ldr.w	r3, [r3, #0x17c]
  41165c:      	ldr.w	r3, [r3, #0x138]
  411660:      	add	r2, sp, #0x3d0
  411662:      	vldr	d6, [r3, #56]
  411666:      	vldr	d7, [r3, #64]
  41166a:      	mov	r0, r2
  41166c:      	vmov.f64	d0, d6
  411670:      	vmov.f64	d1, d7
  411674:      	vldr	d2, [pc, #224]          @ 0x411758 <_ZN13TrainingStage8doLessonEf+0x7480>
  411678:      	bl	0x4085ac <_ZN6Tracer14checkCollisionEv+0x520> @ imm = #-0x90d0
  41167c:      	vldr	d6, [sp, #976]
  411680:      	vldr	d7, [sp, #984]
  411684:      	mov	r0, r5
  411686:      	vmov.f64	d0, d6
  41168a:      	vmov.f64	d1, d7
  41168e:      	bl	0x408648 <_ZN6Tracer14checkCollisionEv+0x5bc> @ imm = #-0x904a
  411692:      	add	r3, sp, #0x1c
  411694:      	ldr	r3, [r3]
  411696:      	vldr	s14, [r3, #392]
  41169a:      	vmov.f32	s15, #4.000000e+00
  41169e:      	vcmpe.f32	s14, s15
  4116a2:      	vmrs	APSR_nzcv, fpscr
  4116a6:      	bgt	0x4116ac <_ZN13TrainingStage8doLessonEf+0x73d4> @ imm = #0x2
  4116a8:      	b.w	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x868
  4116ac:      	add	r3, sp, #0x1c
  4116ae:      	ldr	r3, [r3]
  4116b0:      	ldr.w	r3, [r3, #0x180]
  4116b4:      	adds	r2, r3, #0x1
  4116b6:      	add	r3, sp, #0x1c
  4116b8:      	ldr	r3, [r3]
  4116ba:      	str.w	r2, [r3, #0x180]
  4116be:      	add	r3, sp, #0x1c
  4116c0:      	ldr	r3, [r3]
  4116c2:      	mov.w	r2, #0x0
  4116c6:      	str.w	r2, [r3, #0x188]
  4116ca:      	add	r3, sp, #0x1c
  4116cc:      	ldr	r3, [r3]
  4116ce:      	ldr.w	r5, [r3, #0x10c]
  4116d2:      	add	r3, sp, #0x3f0
  4116d4:      	mov	r0, r3
  4116d6:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x378d1a
  4116da:      	add.w	r2, sp, #0x400
  4116de:      	add	r3, sp, #0x3f0
  4116e0:      	mov	r0, r2
  4116e2:      	ldr	r2, [pc, #0x88]         @ 0x41176c <_ZN13TrainingStage8doLessonEf+0x7494>
  4116e4:      	add	r2, pc
  4116e6:      	mov	r1, r2
  4116e8:      	mov	r2, r3
  4116ea:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3a5372
  4116ee:      	movs	r0, #0x0
  4116f0:      	movs	r1, #0x0
  4116f2:      	movs	r2, #0xff
  4116f4:      	bl	0x408458 <_ZN6Tracer14checkCollisionEv+0x3cc> @ imm = #-0x92a0
  4116f8:      	mov	r2, r0
  4116fa:      	add	r3, sp, #0xc4
  4116fc:      	mov	r1, r2
  4116fe:      	strb	r1, [r3]
  411700:      	ubfx	r1, r2, #0x8, #0x8
  411704:      	strb	r1, [r3, #0x1]
  411706:      	ubfx	r2, r2, #0x10, #0x8
  41170a:      	strb	r2, [r3, #0x2]
  41170c:      	add.w	r2, sp, #0x400
  411710:      	add	r3, sp, #0xc4
  411712:      	mov	r0, r5
  411714:      	mov	r1, r2
  411716:      	ldr	r2, [r3]
  411718:      	movs	r3, #0x4
  41171a:      	bl	0x33d2c0 <_ZN3HUD10addMessageESsN7cocos2d10_ccColor3BEs> @ imm = #-0xd445e
  41171e:      	add.w	r3, sp, #0x400
  411722:      	mov	r0, r3
  411724:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3a41ec
  411728:      	add	r3, sp, #0x3f0
  41172a:      	mov	r0, r3
  41172c:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x378ccc
  411730:      	ldr	r3, [pc, #0x30]         @ 0x411764 <_ZN13TrainingStage8doLessonEf+0x748c>
  411732:      	ldr	r3, [r4, r3]
  411734:      	ldr	r3, [r3]
  411736:      	mov	r0, r3
  411738:      	movs	r1, #0x58
  41173a:      	movs	r2, #0x1
  41173c:      	bl	0x3f7d40 <_ZN5Sound18playSoundWithVoiceEii> @ imm = #-0x19a00
  411740:      	b	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x7d0
// TrainingStage::doLesson  ghidra=0x421770-0x421a33  elf=0x411770-0x411a33  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  411770:      	add	r3, sp, #0x1c
  411772:      	ldr	r3, [r3]
  411774:      	ldr.w	r3, [r3, #0x17c]
  411778:      	ldr	r3, [r3]
  41177a:      	add.w	r3, r3, #0x238
  41177e:      	ldr	r3, [r3]
  411780:      	add	r2, sp, #0x1c
  411782:      	ldr	r2, [r2]
  411784:      	ldr.w	r2, [r2, #0x17c]
  411788:      	mov	r0, r2
  41178a:      	mov.w	r1, #0x0
  41178e:      	movt	r1, #0x4382
  411792:      	blx	r3
  411794:      	add	r3, sp, #0x1c
  411796:      	ldr	r3, [r3]
  411798:      	ldr.w	r3, [r3, #0x17c]
  41179c:      	ldr	r3, [r3]
  41179e:      	add.w	r3, r3, #0x1d8
  4117a2:      	ldr	r3, [r3]
  4117a4:      	add	r2, sp, #0x1c
  4117a6:      	ldr	r2, [r2]
  4117a8:      	ldr.w	r2, [r2, #0x17c]
  4117ac:      	mov	r0, r2
  4117ae:      	blx	r3
  4117b0:      	mov	r3, r0
  4117b2:      	ldr.w	r3, [r3, #0xf0]
  4117b6:      	ldr	r2, [r3]
  4117b8:      	adds	r2, #0x98
  4117ba:      	ldr	r2, [r2]
  4117bc:      	mov	r0, r3
  4117be:      	mov.w	r1, #0x0
  4117c2:      	blx	r2
  4117c4:      	add	r3, sp, #0x1c
  4117c6:      	ldr	r3, [r3]
  4117c8:      	ldr.w	r3, [r3, #0x17c]
  4117cc:      	ldr	r3, [r3]
  4117ce:      	add.w	r3, r3, #0x2a4
  4117d2:      	ldr	r3, [r3]
  4117d4:      	add	r2, sp, #0x1c
  4117d6:      	ldr	r2, [r2]
  4117d8:      	ldr.w	r2, [r2, #0x17c]
  4117dc:      	mov	r0, r2
  4117de:      	mov.w	r1, #0x0
  4117e2:      	movt	r1, #0x42c8
  4117e6:      	blx	r3
  4117e8:      	add	r3, sp, #0x1c
  4117ea:      	ldr	r3, [r3]
  4117ec:      	ldr.w	r3, [r3, #0x17c]
  4117f0:      	ldr	r3, [r3]
  4117f2:      	add.w	r3, r3, #0x230
  4117f6:      	ldr	r5, [r3]
  4117f8:      	add	r3, sp, #0x1c
  4117fa:      	ldr	r3, [r3]
  4117fc:      	ldr.w	r3, [r3, #0x17c]
  411800:      	mov	r6, r3
  411802:      	add	r3, sp, #0x3e0
  411804:      	mov	r0, r3
  411806:      	vldr	d0, [pc, #728]          @ 0x411ae0 <_ZN13TrainingStage8doLessonEf+0x7808>
  41180a:      	vldr	d1, [pc, #724]          @ 0x411ae0 <_ZN13TrainingStage8doLessonEf+0x7808>
  41180e:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x933e
  411812:      	mov	r3, sp
  411814:      	add	r2, sp, #0x3e8
  411816:      	ldm.w	r2, {r0, r1}
  41181a:      	stm.w	r3, {r0, r1}
  41181e:      	add	r3, sp, #0x3e0
  411820:      	ldm	r3, {r2, r3}
  411822:      	mov	r0, r6
  411824:      	blx	r5
  411826:      	add	r3, sp, #0x1c
  411828:      	ldr	r3, [r3]
  41182a:      	ldr.w	r3, [r3, #0x17c]
  41182e:      	movs	r2, #0x1
  411830:      	strb.w	r2, [r3, #0x11c]
  411834:      	add	r3, sp, #0x1c
  411836:      	ldr	r3, [r3]
  411838:      	ldr.w	r3, [r3, #0x17c]
  41183c:      	ldr	r3, [r3]
  41183e:      	add.w	r3, r3, #0x1e0
  411842:      	ldr	r3, [r3]
  411844:      	add	r2, sp, #0x1c
  411846:      	ldr	r2, [r2]
  411848:      	ldr.w	r2, [r2, #0x17c]
  41184c:      	mov	r0, r2
  41184e:      	movs	r1, #0x1
  411850:      	blx	r3
  411852:      	add	r3, sp, #0x1c
  411854:      	ldr	r3, [r3]
  411856:      	ldr.w	r3, [r3, #0x17c]
  41185a:      	ldr	r3, [r3]
  41185c:      	add.w	r3, r3, #0x230
  411860:      	ldr	r5, [r3]
  411862:      	add	r3, sp, #0x1c
  411864:      	ldr	r3, [r3]
  411866:      	ldr.w	r3, [r3, #0x17c]
  41186a:      	mov	r6, r3
  41186c:      	add	r3, sp, #0x3f0
  41186e:      	mov	r0, r3
  411870:      	vldr	d0, [pc, #620]          @ 0x411ae0 <_ZN13TrainingStage8doLessonEf+0x7808>
  411874:      	vmov.f64	d1, #1.000000e+00
  411878:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x93a8
  41187c:      	mov	r3, sp
  41187e:      	add	r2, sp, #0x3f8
  411880:      	ldm.w	r2, {r0, r1}
  411884:      	stm.w	r3, {r0, r1}
  411888:      	add	r3, sp, #0x3f0
  41188a:      	ldm	r3, {r2, r3}
  41188c:      	mov	r0, r6
  41188e:      	blx	r5
  411890:      	add	r3, sp, #0x1c
  411892:      	ldr	r3, [r3]
  411894:      	vldr	s14, [r3, #392]
  411898:      	vmov.f32	s15, #5.000000e+00
  41189c:      	vcmpe.f32	s14, s15
  4118a0:      	vmrs	APSR_nzcv, fpscr
  4118a4:      	bgt	0x4118a8 <_ZN13TrainingStage8doLessonEf+0x75d0> @ imm = #0x0
  4118a6:      	b	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x66a
  4118a8:      	add	r3, sp, #0x1c
  4118aa:      	ldr	r3, [r3]
  4118ac:      	ldr.w	r3, [r3, #0x10c]
  4118b0:      	movs	r2, #0x1
  4118b2:      	strb.w	r2, [r3, #0x1c5]
  4118b6:      	add	r3, sp, #0x1c
  4118b8:      	ldr	r3, [r3]
  4118ba:      	ldr.w	r3, [r3, #0x10c]
  4118be:      	ldr.w	r3, [r3, #0xec]
  4118c2:      	mov	r0, r3
  4118c4:      	bl	0x36e0fc <_ZN10MenuScreen11endTrainingEv> @ imm = #-0xa37cc
  4118c8:      	ldr	r3, [pc, #0x21c]        @ 0x411ae8 <_ZN13TrainingStage8doLessonEf+0x7810>
  4118ca:      	ldr	r3, [r4, r3]
  4118cc:      	ldr	r3, [r3]
  4118ce:      	mov	r0, r3
  4118d0:      	movs	r1, #0x1
  4118d2:      	movs	r2, #0x1
  4118d4:      	bl	0x3f7d40 <_ZN5Sound18playSoundWithVoiceEii> @ imm = #-0x19b98
  4118d8:      	add	r3, sp, #0x1c
  4118da:      	ldr	r3, [r3]
  4118dc:      	ldr.w	r3, [r3, #0x180]
  4118e0:      	adds	r2, r3, #0x1
  4118e2:      	add	r3, sp, #0x1c
  4118e4:      	ldr	r3, [r3]
  4118e6:      	str.w	r2, [r3, #0x180]
  4118ea:      	add	r3, sp, #0x1c
  4118ec:      	ldr	r3, [r3]
  4118ee:      	mov.w	r2, #0x0
  4118f2:      	str.w	r2, [r3, #0x188]
  4118f6:      	ldr	r3, [pc, #0x1f0]        @ 0x411ae8 <_ZN13TrainingStage8doLessonEf+0x7810>
  4118f8:      	ldr	r3, [r4, r3]
  4118fa:      	ldr	r3, [r3]
  4118fc:      	mov	r0, r3
  4118fe:      	bl	0x3f7d08 <_ZN5Sound9stopMusicEv> @ imm = #-0x19bfa
  411902:      	b	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x60e
  411904:      	add	r3, sp, #0x1c
  411906:      	ldr	r3, [r3]
  411908:      	ldr.w	r3, [r3, #0x17c]
  41190c:      	ldr	r3, [r3]
  41190e:      	add.w	r3, r3, #0x238
  411912:      	ldr	r3, [r3]
  411914:      	add	r2, sp, #0x1c
  411916:      	ldr	r2, [r2]
  411918:      	ldr.w	r2, [r2, #0x17c]
  41191c:      	mov	r0, r2
  41191e:      	mov.w	r1, #0x0
  411922:      	movt	r1, #0x4382
  411926:      	blx	r3
  411928:      	add	r3, sp, #0x1c
  41192a:      	ldr	r3, [r3]
  41192c:      	ldr.w	r3, [r3, #0x17c]
  411930:      	ldr	r3, [r3]
  411932:      	add.w	r3, r3, #0x1d8
  411936:      	ldr	r3, [r3]
  411938:      	add	r2, sp, #0x1c
  41193a:      	ldr	r2, [r2]
  41193c:      	ldr.w	r2, [r2, #0x17c]
  411940:      	mov	r0, r2
  411942:      	blx	r3
  411944:      	mov	r3, r0
  411946:      	ldr.w	r3, [r3, #0xf0]
  41194a:      	ldr	r2, [r3]
  41194c:      	adds	r2, #0x98
  41194e:      	ldr	r2, [r2]
  411950:      	mov	r0, r3
  411952:      	mov.w	r1, #0x0
  411956:      	blx	r2
  411958:      	add	r3, sp, #0x1c
  41195a:      	ldr	r3, [r3]
  41195c:      	ldr.w	r3, [r3, #0x17c]
  411960:      	ldr	r3, [r3]
  411962:      	add.w	r3, r3, #0x2a4
  411966:      	ldr	r3, [r3]
  411968:      	add	r2, sp, #0x1c
  41196a:      	ldr	r2, [r2]
  41196c:      	ldr.w	r2, [r2, #0x17c]
  411970:      	mov	r0, r2
  411972:      	mov.w	r1, #0x0
  411976:      	movt	r1, #0x42c8
  41197a:      	blx	r3
  41197c:      	add	r3, sp, #0x1c
  41197e:      	ldr	r3, [r3]
  411980:      	ldr.w	r3, [r3, #0x17c]
  411984:      	ldr	r3, [r3]
  411986:      	add.w	r3, r3, #0x230
  41198a:      	ldr	r4, [r3]
  41198c:      	add	r3, sp, #0x1c
  41198e:      	ldr	r3, [r3]
  411990:      	ldr.w	r3, [r3, #0x17c]
  411994:      	mov	r5, r3
  411996:      	add.w	r3, sp, #0x400
  41199a:      	mov	r0, r3
  41199c:      	vldr	d0, [pc, #320]          @ 0x411ae0 <_ZN13TrainingStage8doLessonEf+0x7808>
  4119a0:      	vldr	d1, [pc, #316]          @ 0x411ae0 <_ZN13TrainingStage8doLessonEf+0x7808>
  4119a4:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x94d4
  4119a8:      	mov	r3, sp
  4119aa:      	add.w	r2, sp, #0x408
  4119ae:      	ldm.w	r2, {r0, r1}
  4119b2:      	stm.w	r3, {r0, r1}
  4119b6:      	add.w	r3, sp, #0x400
  4119ba:      	ldm	r3, {r2, r3}
  4119bc:      	mov	r0, r5
  4119be:      	blx	r4
  4119c0:      	add	r3, sp, #0x1c
  4119c2:      	ldr	r3, [r3]
  4119c4:      	ldr.w	r3, [r3, #0x17c]
  4119c8:      	movs	r2, #0x1
  4119ca:      	strb.w	r2, [r3, #0x11c]
  4119ce:      	add	r3, sp, #0x1c
  4119d0:      	ldr	r3, [r3]
  4119d2:      	ldr.w	r3, [r3, #0x17c]
  4119d6:      	ldr	r3, [r3]
  4119d8:      	add.w	r3, r3, #0x1e0
  4119dc:      	ldr	r3, [r3]
  4119de:      	add	r2, sp, #0x1c
  4119e0:      	ldr	r2, [r2]
  4119e2:      	ldr.w	r2, [r2, #0x17c]
  4119e6:      	mov	r0, r2
  4119e8:      	movs	r1, #0x1
  4119ea:      	blx	r3
  4119ec:      	add	r3, sp, #0x1c
  4119ee:      	ldr	r3, [r3]
  4119f0:      	ldr.w	r3, [r3, #0x17c]
  4119f4:      	ldr	r3, [r3]
  4119f6:      	add.w	r3, r3, #0x230
  4119fa:      	ldr	r4, [r3]
  4119fc:      	add	r3, sp, #0x1c
  4119fe:      	ldr	r3, [r3]
  411a00:      	ldr.w	r3, [r3, #0x17c]
  411a04:      	mov	r5, r3
  411a06:      	add.w	r3, sp, #0x410
  411a0a:      	mov	r0, r3
  411a0c:      	vldr	d0, [pc, #208]          @ 0x411ae0 <_ZN13TrainingStage8doLessonEf+0x7808>
  411a10:      	vmov.f64	d1, #1.000000e+00
  411a14:      	bl	0x4084d4 <_ZN6Tracer14checkCollisionEv+0x448> @ imm = #-0x9544
  411a18:      	mov	r3, sp
  411a1a:      	add.w	r2, sp, #0x418
  411a1e:      	ldm.w	r2, {r0, r1}
  411a22:      	stm.w	r3, {r0, r1}
  411a26:      	add.w	r3, sp, #0x410
  411a2a:      	ldm	r3, {r2, r3}
  411a2c:      	mov	r0, r5
  411a2e:      	blx	r4
  411a30:      	nop
  411a32:      	b	0x411f14 <_ZN13TrainingStage8doLessonEf+0x7c3c> @ imm = #0x4de
// TrainingStage::doLesson  ghidra=0x421f12-0x421f19  elf=0x411f12-0x411f19  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  411f12:      	nop
  411f14:      	addw	sp, sp, #0x424
  411f18:      	pop	{r4, r5, r6, r7, pc}
