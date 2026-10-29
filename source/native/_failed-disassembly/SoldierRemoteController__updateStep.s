// SoldierRemoteController::updateStep  ghidra=0x3ff5a0-0x3ff803  elf=0x3ef5a0-0x3ef803  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  3ef5a0:      	push	{r4, r5, r6, r7, lr}
  3ef5a2:      	vpush	{d8}
  3ef5a6:      	sub	sp, #0xf4
  3ef5a8:      	str	r0, [sp, #0x14]
  3ef5aa:      	str	r1, [sp, #0x10]
  3ef5ac:      	ldr	r4, [pc, #0x28c]        @ 0x3ef83c <_ZN23SoldierRemoteController10updateStepEf+0x29c>
  3ef5ae:      	add	r4, pc
  3ef5b0:      	ldr	r3, [sp, #0x14]
  3ef5b2:      	ldr.w	r3, [r3, #0xfc]
  3ef5b6:      	ldr	r3, [r3]
  3ef5b8:      	adds	r3, #0x50
  3ef5ba:      	ldr	r3, [r3]
  3ef5bc:      	ldr	r2, [sp, #0x14]
  3ef5be:      	ldr.w	r2, [r2, #0xfc]
  3ef5c2:      	mov	r0, r2
  3ef5c4:      	blx	r3
  3ef5c6:      	mov	r3, r0
  3ef5c8:      	vldr	s15, [r3]
  3ef5cc:      	vcvt.f64.f32	d8, s15
  3ef5d0:      	ldr	r3, [sp, #0x14]
  3ef5d2:      	ldr.w	r3, [r3, #0xfc]
  3ef5d6:      	ldr	r3, [r3]
  3ef5d8:      	adds	r3, #0x50
  3ef5da:      	ldr	r3, [r3]
  3ef5dc:      	ldr	r2, [sp, #0x14]
  3ef5de:      	ldr.w	r2, [r2, #0xfc]
  3ef5e2:      	mov	r0, r2
  3ef5e4:      	blx	r3
  3ef5e6:      	mov	r3, r0
  3ef5e8:      	vldr	s15, [r3, #4]
  3ef5ec:      	vcvt.f64.f32	d7, s15
  3ef5f0:      	add	r3, sp, #0x30
  3ef5f2:      	mov	r0, r3
  3ef5f4:      	vmov.f64	d0, d8
  3ef5f8:      	vmov.f64	d1, d7
  3ef5fc:      	bl	0x3ee264 <_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIP8SpawnRowEEPT_PKS5_S8_S6_+0x228> @ imm = #-0x139c
  3ef600:      	add	r2, sp, #0x90
  3ef602:      	ldr	r3, [sp, #0x14]
  3ef604:      	vldr	d4, [r3, #408]
  3ef608:      	vldr	d5, [r3, #416]
  3ef60c:      	vldr	d6, [sp, #48]
  3ef610:      	vldr	d7, [sp, #56]
  3ef614:      	mov	r0, r2
  3ef616:      	vmov.f64	d0, d4
  3ef61a:      	vmov.f64	d1, d5
  3ef61e:      	vmov.f64	d2, d6
  3ef622:      	vmov.f64	d3, d7
  3ef626:      	bl	0x3ee2e4 <_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIP8SpawnRowEEPT_PKS5_S8_S6_+0x2a8> @ imm = #-0x1346
  3ef62a:      	vldr	s14, [sp, #16]
  3ef62e:      	vmov.f32	s15, #1.500000e+01
  3ef632:      	vmul.f32	s15, s14, s15
  3ef636:      	vcvt.f64.f32	d7, s15
  3ef63a:      	vldr	d6, [pc, #460]          @ 0x3ef808 <_ZN23SoldierRemoteController10updateStepEf+0x268>
  3ef63e:      	vsub.f64	d6, d6, d7
  3ef642:      	vldr	d7, [pc, #460]          @ 0x3ef810 <_ZN23SoldierRemoteController10updateStepEf+0x270>
  3ef646:      	vcmpe.f64	d6, d7
  3ef64a:      	vmrs	APSR_nzcv, fpscr
  3ef64e:      	bpl	0x3ef656 <_ZN23SoldierRemoteController10updateStepEf+0xb6> @ imm = #0x4
  3ef650:      	vldr	d7, [pc, #444]          @ 0x3ef810 <_ZN23SoldierRemoteController10updateStepEf+0x270>
  3ef654:      	b	0x3ef66e <_ZN23SoldierRemoteController10updateStepEf+0xce> @ imm = #0x16
  3ef656:      	vldr	s14, [sp, #16]
  3ef65a:      	vmov.f32	s15, #1.500000e+01
  3ef65e:      	vmul.f32	s15, s14, s15
  3ef662:      	vcvt.f64.f32	d7, s15
  3ef666:      	vldr	d6, [pc, #416]          @ 0x3ef808 <_ZN23SoldierRemoteController10updateStepEf+0x268>
  3ef66a:      	vsub.f64	d7, d6, d7
  3ef66e:      	add	r3, sp, #0x40
  3ef670:      	vldr	d5, [sp, #144]
  3ef674:      	vldr	d6, [sp, #152]
  3ef678:      	mov	r0, r3
  3ef67a:      	vmov.f64	d0, d5
  3ef67e:      	vmov.f64	d1, d6
  3ef682:      	vmov.f64	d2, d7
  3ef686:      	bl	0x3ee33c <_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIP8SpawnRowEEPT_PKS5_S8_S6_+0x300> @ imm = #-0x134e
  3ef68a:      	add	r3, sp, #0x50
  3ef68c:      	vldr	d4, [sp, #48]
  3ef690:      	vldr	d5, [sp, #56]
  3ef694:      	vldr	d6, [sp, #64]
  3ef698:      	vldr	d7, [sp, #72]
  3ef69c:      	mov	r0, r3
  3ef69e:      	vmov.f64	d0, d4
  3ef6a2:      	vmov.f64	d1, d5
  3ef6a6:      	vmov.f64	d2, d6
  3ef6aa:      	vmov.f64	d3, d7
  3ef6ae:      	bl	0x3ee28c <_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIP8SpawnRowEEPT_PKS5_S8_S6_+0x250> @ imm = #-0x1426
  3ef6b2:      	ldr	r3, [sp, #0x14]
  3ef6b4:      	ldr.w	r3, [r3, #0xfc]
  3ef6b8:      	mov	r0, r3
  3ef6ba:      	bl	0x3f3e1c <_ZN11SoldierView15getBodyRotationEv> @ imm = #0x475e
  3ef6be:      	vmov	s15, r0
  3ef6c2:      	vcvt.f64.f32	d7, s15
  3ef6c6:      	vmov	r0, r1, d7
  3ef6ca:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x1197c4
  3ef6ce:      	mov	r6, r0
  3ef6d0:      	mov	r7, r1
  3ef6d2:      	ldr	r3, [sp, #0x14]
  3ef6d4:      	ldr.w	r3, [r3, #0xfc]
  3ef6d8:      	mov	r0, r3
  3ef6da:      	bl	0x3f3e1c <_ZN11SoldierView15getBodyRotationEv> @ imm = #0x473e
  3ef6de:      	vmov	s15, r0
  3ef6e2:      	vcvt.f64.f32	d7, s15
  3ef6e6:      	vmov	r0, r1, d7
  3ef6ea:      	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x1197d8
  3ef6ee:      	mov	r2, r0
  3ef6f0:      	mov	r3, r1
  3ef6f2:      	add	r1, sp, #0x60
  3ef6f4:      	mov	r0, r1
  3ef6f6:      	vmov	d0, r6, r7
  3ef6fa:      	vmov	d1, r2, r3
  3ef6fe:      	bl	0x3ee264 <_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIP8SpawnRowEEPT_PKS5_S8_S6_+0x228> @ imm = #-0x149e
  3ef702:      	ldr	r3, [sp, #0x14]
  3ef704:      	vldr	s15, [r3, #388]
  3ef708:      	vcvt.f64.f32	d7, s15
  3ef70c:      	vmov	r0, r1, d7
  3ef710:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x11980c
  3ef714:      	mov	r6, r0
  3ef716:      	mov	r7, r1
  3ef718:      	ldr	r3, [sp, #0x14]
  3ef71a:      	vldr	s15, [r3, #388]
  3ef71e:      	vcvt.f64.f32	d7, s15
  3ef722:      	vmov	r0, r1, d7
  3ef726:      	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x119814
  3ef72a:      	mov	r2, r0
  3ef72c:      	mov	r3, r1
  3ef72e:      	add	r1, sp, #0x70
  3ef730:      	mov	r0, r1
  3ef732:      	vmov	d0, r6, r7
  3ef736:      	vmov	d1, r2, r3
  3ef73a:      	bl	0x3ee264 <_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIP8SpawnRowEEPT_PKS5_S8_S6_+0x228> @ imm = #-0x14da
  3ef73e:      	add	r3, sp, #0xa0
  3ef740:      	vldr	d6, [sp, #96]
  3ef744:      	vldr	d7, [sp, #104]
  3ef748:      	mov	r0, r3
  3ef74a:      	vmov.f64	d0, d6
  3ef74e:      	vmov.f64	d1, d7
  3ef752:      	vldr	d2, [pc, #196]          @ 0x3ef818 <_ZN23SoldierRemoteController10updateStepEf+0x278>
  3ef756:      	bl	0x3ee33c <_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIP8SpawnRowEEPT_PKS5_S8_S6_+0x300> @ imm = #-0x141e
  3ef75a:      	add	r3, sp, #0xb0
  3ef75c:      	vldr	d6, [sp, #112]
  3ef760:      	vldr	d7, [sp, #120]
  3ef764:      	mov	r0, r3
  3ef766:      	vmov.f64	d0, d6
  3ef76a:      	vmov.f64	d1, d7
  3ef76e:      	vldr	d2, [pc, #176]          @ 0x3ef820 <_ZN23SoldierRemoteController10updateStepEf+0x280>
  3ef772:      	bl	0x3ee33c <_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIP8SpawnRowEEPT_PKS5_S8_S6_+0x300> @ imm = #-0x143a
  3ef776:      	add	r3, sp, #0x80
  3ef778:      	vldr	d4, [sp, #160]
  3ef77c:      	vldr	d5, [sp, #168]
  3ef780:      	vldr	d6, [sp, #176]
  3ef784:      	vldr	d7, [sp, #184]
  3ef788:      	mov	r0, r3
  3ef78a:      	vmov.f64	d0, d4
  3ef78e:      	vmov.f64	d1, d5
  3ef792:      	vmov.f64	d2, d6
  3ef796:      	vmov.f64	d3, d7
  3ef79a:      	bl	0x3ee28c <_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIP8SpawnRowEEPT_PKS5_S8_S6_+0x250> @ imm = #-0x1512
  3ef79e:      	add	r3, sp, #0x80
  3ef7a0:      	ldm	r3, {r0, r1, r2, r3}
  3ef7a2:      	bl	0x3ee418 <_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIP8SpawnRowEEPT_PKS5_S8_S6_+0x3dc> @ imm = #-0x138e
  3ef7a6:      	vmov	s14, r0
  3ef7aa:      	vldr	s15, [pc, #140]         @ 0x3ef838 <_ZN23SoldierRemoteController10updateStepEf+0x298>
  3ef7ae:      	vmul.f32	s15, s14, s15
  3ef7b2:      	vneg.f32	s15, s15
  3ef7b6:      	vcvt.f64.f32	d7, s15
  3ef7ba:      	vstr	d7, [sp, #32]
  3ef7be:      	ldr	r3, [sp, #0x14]
  3ef7c0:      	ldrb.w	r3, [r3, #0x159]
  3ef7c4:      	cmp	r3, #0x0
  3ef7c6:      	beq	0x3ef840 <_ZN23SoldierRemoteController10updateStepEf+0x2a0> @ imm = #0x76
  3ef7c8:      	ldr	r3, [sp, #0x14]
  3ef7ca:      	ldr.w	r5, [r3, #0x138]
  3ef7ce:      	add	r3, sp, #0xc0
  3ef7d0:      	mov	r0, r3
  3ef7d2:      	vldr	d0, [pc, #84]           @ 0x3ef828 <_ZN23SoldierRemoteController10updateStepEf+0x288>
  3ef7d6:      	vldr	d1, [pc, #88]           @ 0x3ef830 <_ZN23SoldierRemoteController10updateStepEf+0x290>
  3ef7da:      	bl	0x3ee264 <_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIP8SpawnRowEEPT_PKS5_S8_S6_+0x228> @ imm = #-0x157a
  3ef7de:      	vldr	d6, [sp, #192]
  3ef7e2:      	vldr	d7, [sp, #200]
  3ef7e6:      	mov	r0, r5
  3ef7e8:      	vmov.f64	d0, d6
  3ef7ec:      	vmov.f64	d1, d7
  3ef7f0:      	bl	0x3ee388 <_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIP8SpawnRowEEPT_PKS5_S8_S6_+0x34c> @ imm = #-0x146c
  3ef7f4:      	ldr	r3, [sp, #0x14]
  3ef7f6:      	ldr.w	r3, [r3, #0xfc]
  3ef7fa:      	mov	r0, r3
  3ef7fc:      	movs	r1, #0x0
  3ef7fe:      	bl	0x3f40c0 <_ZN11SoldierView12setIsVisibleEb> @ imm = #0x48be
  3ef802:      	b	0x3ef88a <_ZN23SoldierRemoteController10updateStepEf+0x2ea> @ imm = #0x84
// SoldierRemoteController::updateStep  ghidra=0x3ff840-0x3ffb3f  elf=0x3ef840-0x3efb3f  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  3ef840:      	ldr	r3, [sp, #0x14]
  3ef842:      	ldrb.w	r3, [r3, #0x1b4]
  3ef846:      	eor	r3, r3, #0x1
  3ef84a:      	uxtb	r3, r3
  3ef84c:      	cmp	r3, #0x0
  3ef84e:      	beq	0x3ef88a <_ZN23SoldierRemoteController10updateStepEf+0x2ea> @ imm = #0x38
  3ef850:      	ldr	r3, [sp, #0x14]
  3ef852:      	ldr.w	r3, [r3, #0x138]
  3ef856:      	vldr	d6, [sp, #80]
  3ef85a:      	vldr	d7, [sp, #88]
  3ef85e:      	mov	r0, r3
  3ef860:      	vmov.f64	d0, d6
  3ef864:      	vmov.f64	d1, d7
  3ef868:      	bl	0x3ee388 <_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIP8SpawnRowEEPT_PKS5_S8_S6_+0x34c> @ imm = #-0x14e4
  3ef86c:      	ldr	r3, [sp, #0x14]
  3ef86e:      	ldr.w	r3, [r3, #0x138]
  3ef872:      	mov	r0, r3
  3ef874:      	ldrd	r2, r3, [sp, #32]
  3ef878:      	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x2e3916
  3ef87c:      	ldr	r3, [sp, #0x14]
  3ef87e:      	ldr.w	r3, [r3, #0xfc]
  3ef882:      	mov	r0, r3
  3ef884:      	movs	r1, #0x1
  3ef886:      	bl	0x3f40c0 <_ZN11SoldierView12setIsVisibleEb> @ imm = #0x4836
  3ef88a:      	ldr	r3, [sp, #0x14]
  3ef88c:      	ldrb.w	r3, [r3, #0x166]
  3ef890:      	cmp	r3, #0x0
  3ef892:      	beq	0x3ef8c0 <_ZN23SoldierRemoteController10updateStepEf+0x320> @ imm = #0x2a
  3ef894:      	ldr	r3, [sp, #0x14]
  3ef896:      	vldr	s14, [r3, #376]
  3ef89a:      	vldr	s15, [sp, #16]
  3ef89e:      	vadd.f32	s15, s14, s15
  3ef8a2:      	ldr	r3, [sp, #0x14]
  3ef8a4:      	vstr	s15, [r3, #376]
  3ef8a8:      	ldr	r3, [sp, #0x14]
  3ef8aa:      	ldr.w	r2, [r3, #0x1b0]
  3ef8ae:      	ldr	r3, [sp, #0x14]
  3ef8b0:      	str.w	r2, [r3, #0x110]
  3ef8b4:      	ldr	r3, [sp, #0x14]
  3ef8b6:      	ldr.w	r2, [r3, #0x1b0]
  3ef8ba:      	ldr	r3, [sp, #0x14]
  3ef8bc:      	str.w	r2, [r3, #0x1a8]
  3ef8c0:      	ldr	r3, [sp, #0x14]
  3ef8c2:      	vldr	s15, [r3, #376]
  3ef8c6:      	vcvt.f64.f32	d6, s15
  3ef8ca:      	vldr	d7, [pc, #628]          @ 0x3efb40 <_ZN23SoldierRemoteController10updateStepEf+0x5a0>
  3ef8ce:      	vcmpe.f64	d6, d7
  3ef8d2:      	vmrs	APSR_nzcv, fpscr
  3ef8d6:      	ble	0x3ef914 <_ZN23SoldierRemoteController10updateStepEf+0x374> @ imm = #0x3a
  3ef8d8:      	ldr	r3, [sp, #0x14]
  3ef8da:      	ldr	r3, [r3]
  3ef8dc:      	add.w	r3, r3, #0x2bc
  3ef8e0:      	ldr	r5, [r3]
  3ef8e2:      	add	r3, sp, #0xd0
  3ef8e4:      	mov	r0, r3
  3ef8e6:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x39ab0a
  3ef8ea:      	add	r2, sp, #0xe0
  3ef8ec:      	add	r3, sp, #0xd0
  3ef8ee:      	mov	r0, r2
  3ef8f0:      	ldr	r2, [pc, #0x254]        @ 0x3efb48 <_ZN23SoldierRemoteController10updateStepEf+0x5a8>
  3ef8f2:      	add	r2, pc
  3ef8f4:      	mov	r1, r2
  3ef8f6:      	mov	r2, r3
  3ef8f8:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3c7164
  3ef8fc:      	add	r3, sp, #0xe0
  3ef8fe:      	ldr	r0, [sp, #0x14]
  3ef900:      	mov	r1, r3
  3ef902:      	blx	r5
  3ef904:      	add	r3, sp, #0xe0
  3ef906:      	mov	r0, r3
  3ef908:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3c6008
  3ef90c:      	add	r3, sp, #0xd0
  3ef90e:      	mov	r0, r3
  3ef910:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x39aae8
  3ef914:      	ldr	r3, [sp, #0x14]
  3ef916:      	ldr.w	r3, [r3, #0xf4]
  3ef91a:      	cmp	r3, #0x0
  3ef91c:      	beq	0x3ef93a <_ZN23SoldierRemoteController10updateStepEf+0x39a> @ imm = #0x1a
  3ef91e:      	ldr	r3, [sp, #0x14]
  3ef920:      	ldr.w	r2, [r3, #0xf4]
  3ef924:      	ldr	r3, [pc, #0x224]        @ 0x3efb4c <_ZN23SoldierRemoteController10updateStepEf+0x5ac>
  3ef926:      	ldr	r3, [r4, r3]
  3ef928:      	ldr	r3, [r3]
  3ef92a:      	cmp	r2, r3
  3ef92c:      	bne	0x3ef93a <_ZN23SoldierRemoteController10updateStepEf+0x39a> @ imm = #0xa
  3ef92e:      	ldr	r3, [sp, #0x14]
  3ef930:      	ldr.w	r3, [r3, #0xfc]
  3ef934:      	mov	r0, r3
  3ef936:      	bl	0x3f428c <_ZN11SoldierView9showLabelEv> @ imm = #0x4952
  3ef93a:      	ldr	r3, [sp, #0x14]
  3ef93c:      	ldr.w	r5, [r3, #0xfc]
  3ef940:      	vldr	d7, [sp, #80]
  3ef944:      	vcvt.f32.f64	s13, d7
  3ef948:      	vldr	d7, [sp, #88]
  3ef94c:      	vcvt.f32.f64	s15, d7
  3ef950:      	add	r3, sp, #0x28
  3ef952:      	mov	r0, r3
  3ef954:      	vmov	r1, s13
  3ef958:      	vmov	r2, s15
  3ef95c:      	bl	0x592cf0 <_ZN7cocos2d7CCPointC2Eff> @ imm = #0x1a3390
  3ef960:      	ldr	r3, [sp, #0x14]
  3ef962:      	vldr	d7, [r3, #392]
  3ef966:      	vcvt.f32.f64	s13, d7
  3ef96a:      	ldr	r3, [sp, #0x14]
  3ef96c:      	vldr	d7, [r3, #400]
  3ef970:      	vcvt.f32.f64	s15, d7
  3ef974:      	add	r3, sp, #0xd0
  3ef976:      	mov	r0, r3
  3ef978:      	vmov	r1, s13
  3ef97c:      	vmov	r2, s15
  3ef980:      	bl	0x592cf0 <_ZN7cocos2d7CCPointC2Eff> @ imm = #0x1a336c
  3ef984:      	vldr	d7, [sp, #32]
  3ef988:      	vcvt.f32.f64	s16, d7
  3ef98c:      	ldr	r3, [sp, #0x14]
  3ef98e:      	ldr.w	r6, [r3, #0x110]
  3ef992:      	ldr	r3, [sp, #0x14]
  3ef994:      	add.w	r3, r3, #0x114
  3ef998:      	add	r2, sp, #0xe0
  3ef99a:      	mov	r0, r2
  3ef99c:      	mov	r1, r3
  3ef99e:      	bl	0x592d0c <_ZN7cocos2d7CCPointC2ERKS0_> @ imm = #0x1a336a
  3ef9a2:      	ldr	r3, [sp, #0x14]
  3ef9a4:      	ldr.w	r0, [r3, #0x10c]
  3ef9a8:      	ldr	r3, [sp, #0x14]
  3ef9aa:      	ldrb.w	r1, [r3, #0x15a]
  3ef9ae:      	add	r2, sp, #0x28
  3ef9b0:      	add	r3, sp, #0xd0
  3ef9b2:      	str	r6, [sp]
  3ef9b4:      	add	r6, sp, #0xe0
  3ef9b6:      	str	r6, [sp, #0x4]
  3ef9b8:      	str	r0, [sp, #0x8]
  3ef9ba:      	str	r1, [sp, #0xc]
  3ef9bc:      	mov	r0, r5
  3ef9be:      	mov	r1, r2
  3ef9c0:      	mov	r2, r3
  3ef9c2:      	vmov	r3, s16
  3ef9c6:      	bl	0x3f2908 <_ZN11SoldierView10updateBodyEN7cocos2d7CCPointES1_ffS1_fb> @ imm = #0x2f3e
  3ef9ca:      	ldr	r3, [sp, #0x14]
  3ef9cc:      	ldr.w	r2, [r3, #0xfc]
  3ef9d0:      	ldr	r3, [sp, #0x14]
  3ef9d2:      	ldr.w	r3, [r3, #0x148]
  3ef9d6:      	cmp	r3, #0x0
  3ef9d8:      	ite	eq
  3ef9da:      	moveq	r3, #0x0
  3ef9dc:      	movne	r3, #0x1
  3ef9de:      	uxtb	r3, r3
  3ef9e0:      	mov	r0, r2
  3ef9e2:      	mov	r1, r3
  3ef9e4:      	bl	0x3deb5c <_ZN11SoldierView12setHasWeaponEb> @ imm = #-0x10e8c
  3ef9e8:      	ldr	r3, [sp, #0x14]
  3ef9ea:      	ldr.w	r3, [r3, #0xfc]
  3ef9ee:      	mov	r0, r3
  3ef9f0:      	ldr	r1, [sp, #0x10]
  3ef9f2:      	bl	0x3f2b80 <_ZN11SoldierView10updateStepEf> @ imm = #0x318a
  3ef9f6:      	ldr	r3, [sp, #0x14]
  3ef9f8:      	vldr	s14, [r3, #264]
  3ef9fc:      	vldr	s15, [sp, #16]
  3efa00:      	vadd.f32	s15, s14, s15
  3efa04:      	ldr	r3, [sp, #0x14]
  3efa06:      	vstr	s15, [r3, #264]
  3efa0a:      	ldr	r3, [sp, #0x14]
  3efa0c:      	ldrb.w	r3, [r3, #0x159]
  3efa10:      	eor	r3, r3, #0x1
  3efa14:      	uxtb	r3, r3
  3efa16:      	cmp	r3, #0x0
  3efa18:      	beq	0x3efad4 <_ZN23SoldierRemoteController10updateStepEf+0x534> @ imm = #0xb8
  3efa1a:      	ldr	r3, [sp, #0x14]
  3efa1c:      	ldr.w	r3, [r3, #0x148]
  3efa20:      	cmp	r3, #0x0
  3efa22:      	beq	0x3efa68 <_ZN23SoldierRemoteController10updateStepEf+0x4c8> @ imm = #0x42
  3efa24:      	ldr	r3, [sp, #0x14]
  3efa26:      	ldr.w	r3, [r3, #0x148]
  3efa2a:      	ldr	r3, [r3]
  3efa2c:      	add.w	r3, r3, #0x304
  3efa30:      	ldr	r5, [r3]
  3efa32:      	ldr	r3, [sp, #0x14]
  3efa34:      	ldr.w	r6, [r3, #0x148]
  3efa38:      	ldr	r3, [sp, #0x14]
  3efa3a:      	ldr	r3, [r3]
  3efa3c:      	add.w	r3, r3, #0x23c
  3efa40:      	ldr	r3, [r3]
  3efa42:      	ldr	r0, [sp, #0x14]
  3efa44:      	blx	r3
  3efa46:      	mov	r3, r0
  3efa48:      	mov	r0, r6
  3efa4a:      	mov	r1, r3
  3efa4c:      	blx	r5
  3efa4e:      	ldr	r3, [sp, #0x14]
  3efa50:      	ldr.w	r3, [r3, #0x148]
  3efa54:      	ldr	r3, [r3]
  3efa56:      	add.w	r3, r3, #0x1b0
  3efa5a:      	ldr	r3, [r3]
  3efa5c:      	ldr	r2, [sp, #0x14]
  3efa5e:      	ldr.w	r2, [r2, #0x148]
  3efa62:      	mov	r0, r2
  3efa64:      	ldr	r1, [sp, #0x10]
  3efa66:      	blx	r3
  3efa68:      	ldr	r3, [sp, #0x14]
  3efa6a:      	ldr.w	r3, [r3, #0x150]
  3efa6e:      	cmp	r3, #0x0
  3efa70:      	beq	0x3efac6 <_ZN23SoldierRemoteController10updateStepEf+0x526> @ imm = #0x52
  3efa72:      	ldr	r3, [sp, #0x14]
  3efa74:      	ldr.w	r3, [r3, #0x150]
  3efa78:      	ldr	r3, [r3]
  3efa7a:      	add.w	r3, r3, #0x304
  3efa7e:      	ldr	r5, [r3]
  3efa80:      	ldr	r3, [sp, #0x14]
  3efa82:      	ldr.w	r6, [r3, #0x150]
  3efa86:      	ldr	r3, [sp, #0x14]
  3efa88:      	ldr	r3, [r3]
  3efa8a:      	add.w	r3, r3, #0x284
  3efa8e:      	ldr	r3, [r3]
  3efa90:      	ldr	r0, [sp, #0x14]
  3efa92:      	blx	r3
  3efa94:      	mov	r3, r0
  3efa96:      	mov	r0, r6
  3efa98:      	mov	r1, r3
  3efa9a:      	blx	r5
  3efa9c:      	ldr	r3, [sp, #0x14]
  3efa9e:      	ldr.w	r3, [r3, #0x150]
  3efaa2:      	ldr	r3, [r3]
  3efaa4:      	add.w	r3, r3, #0x1b0
  3efaa8:      	ldr	r3, [r3]
  3efaaa:      	ldr	r2, [sp, #0x14]
  3efaac:      	ldr.w	r2, [r2, #0x150]
  3efab0:      	mov	r0, r2
  3efab2:      	ldr	r1, [sp, #0x10]
  3efab4:      	blx	r3
  3efab6:      	ldr	r3, [sp, #0x14]
  3efab8:      	ldr.w	r3, [r3, #0xfc]
  3efabc:      	mov	r0, r3
  3efabe:      	movs	r1, #0x1
  3efac0:      	bl	0x3f4240 <_ZN11SoldierView25setDualWieldConfigurationEb> @ imm = #0x477c
  3efac4:      	b	0x3efad4 <_ZN23SoldierRemoteController10updateStepEf+0x534> @ imm = #0xc
  3efac6:      	ldr	r3, [sp, #0x14]
  3efac8:      	ldr.w	r3, [r3, #0xfc]
  3efacc:      	mov	r0, r3
  3eface:      	movs	r1, #0x0
  3efad0:      	bl	0x3f4240 <_ZN11SoldierView25setDualWieldConfigurationEb> @ imm = #0x476c
  3efad4:      	ldr	r3, [sp, #0x14]
  3efad6:      	vldr	s15, [r3, #268]
  3efada:      	vcmpe.f32	s15, #0
  3efade:      	vmrs	APSR_nzcv, fpscr
  3efae2:      	ble	0x3efb58 <_ZN23SoldierRemoteController10updateStepEf+0x5b8> @ imm = #0x72
  3efae4:      	ldr	r3, [sp, #0x14]
  3efae6:      	vldr	s14, [r3, #264]
  3efaea:      	vmov.f32	s15, #7.500000e-01
  3efaee:      	vcmpe.f32	s14, s15
  3efaf2:      	vmrs	APSR_nzcv, fpscr
  3efaf6:      	ble	0x3efb62 <_ZN23SoldierRemoteController10updateStepEf+0x5c2> @ imm = #0x68
  3efaf8:      	ldr	r3, [pc, #0x54]         @ 0x3efb50 <_ZN23SoldierRemoteController10updateStepEf+0x5b0>
  3efafa:      	ldr	r3, [r4, r3]
  3efafc:      	ldr	r5, [r3]
  3efafe:      	ldr	r3, [sp, #0x14]
  3efb00:      	ldr.w	r3, [r3, #0x138]
  3efb04:      	ldr	r2, [sp, #0x14]
  3efb06:      	vldr	s14, [r2, #268]
  3efb0a:      	vmov.f32	s15, #7.500000e-01
  3efb0e:      	vmul.f32	s15, s14, s15
  3efb12:      	vstr	s15, [sp, #8]
  3efb16:      	mov.w	r2, #0x3f800000
  3efb1a:      	str	r2, [sp, #0xc]
  3efb1c:      	mov	r2, sp
  3efb1e:      	add.w	r1, r3, #0x30
  3efb22:      	ldm	r1, {r0, r1}
  3efb24:      	stm.w	r2, {r0, r1}
  3efb28:      	adds	r3, #0x28
  3efb2a:      	ldm	r3, {r2, r3}
  3efb2c:      	mov	r0, r5
  3efb2e:      	movs	r1, #0x8
  3efb30:      	bl	0x3f8044 <_ZN5Sound19playSoundPositionVPEi6cpVectff> @ imm = #0x8510
  3efb34:      	ldr	r3, [sp, #0x14]
  3efb36:      	mov.w	r2, #0x0
  3efb3a:      	str.w	r2, [r3, #0x108]
  3efb3e:      	b	0x3efb62 <_ZN23SoldierRemoteController10updateStepEf+0x5c2> @ imm = #0x20
// SoldierRemoteController::updateStep  ghidra=0x3ffb58-0x3ffc59  elf=0x3efb58-0x3efc59  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  3efb58:      	ldr	r3, [sp, #0x14]
  3efb5a:      	mov.w	r2, #0x3f400000
  3efb5e:      	str.w	r2, [r3, #0x108]
  3efb62:      	ldr	r3, [sp, #0x14]
  3efb64:      	vldr	s14, [r3, #428]
  3efb68:      	vldr	s15, [sp, #16]
  3efb6c:      	vadd.f32	s15, s14, s15
  3efb70:      	ldr	r3, [sp, #0x14]
  3efb72:      	vstr	s15, [r3, #428]
  3efb76:      	ldr	r3, [sp, #0x14]
  3efb78:      	ldr	r3, [r3]
  3efb7a:      	add.w	r3, r3, #0x1b0
  3efb7e:      	ldr	r3, [r3]
  3efb80:      	add	r2, sp, #0xd0
  3efb82:      	mov	r0, r2
  3efb84:      	ldr	r1, [sp, #0x14]
  3efb86:      	blx	r3
  3efb88:      	add	r3, sp, #0xd0
  3efb8a:      	ldm	r3, {r0, r1, r2, r3}
  3efb8c:      	bl	0x6d70b8 <cpvlength>    @ imm = #0x2e7528
  3efb90:      	vmov	d7, r0, r1
  3efb94:      	vcvt.f32.f64	s15, d7
  3efb98:      	vstr	s15, [sp, #28]
  3efb9c:      	ldr	r3, [sp, #0x14]
  3efb9e:      	vldr	s14, [r3, #428]
  3efba2:      	vldr	s13, [pc, #-80]         @ 0x3efb54 <_ZN23SoldierRemoteController10updateStepEf+0x5b4>
  3efba6:      	vldr	s15, [sp, #28]
  3efbaa:      	vdiv.f32	s15, s13, s15
  3efbae:      	vcmpe.f32	s14, s15
  3efbb2:      	vmrs	APSR_nzcv, fpscr
  3efbb6:      	bgt	0x3efbba <_ZN23SoldierRemoteController10updateStepEf+0x61a> @ imm = #0x0
  3efbb8:      	b	0x3efc70 <_ZN23SoldierRemoteController10updateStepEf+0x6d0> @ imm = #0xb4
  3efbba:      	ldr	r3, [sp, #0x14]
  3efbbc:      	ldrb.w	r3, [r3, #0xe6]
  3efbc0:      	cmp	r3, #0x0
  3efbc2:      	beq	0x3efc70 <_ZN23SoldierRemoteController10updateStepEf+0x6d0> @ imm = #0xaa
  3efbc4:      	ldr	r3, [sp, #0x14]
  3efbc6:      	ldrb.w	r3, [r3, #0x15a]
  3efbca:      	eor	r3, r3, #0x1
  3efbce:      	uxtb	r3, r3
  3efbd0:      	cmp	r3, #0x0
  3efbd2:      	beq	0x3efc70 <_ZN23SoldierRemoteController10updateStepEf+0x6d0> @ imm = #0x9a
  3efbd4:      	ldr	r3, [sp, #0x14]
  3efbd6:      	mov.w	r2, #0x0
  3efbda:      	str.w	r2, [r3, #0x1ac]
  3efbde:      	ldr	r3, [pc, #0xa0]         @ 0x3efc80 <_ZN23SoldierRemoteController10updateStepEf+0x6e0>
  3efbe0:      	ldr	r3, [r4, r3]
  3efbe2:      	ldr	r4, [r3]
  3efbe4:      	ldr	r3, [sp, #0x14]
  3efbe6:      	ldr	r3, [r3]
  3efbe8:      	add.w	r3, r3, #0x1ac
  3efbec:      	ldr	r3, [r3]
  3efbee:      	add	r2, sp, #0xe0
  3efbf0:      	mov	r0, r2
  3efbf2:      	ldr	r1, [sp, #0x14]
  3efbf4:      	blx	r3
  3efbf6:      	vldr	s14, [sp, #28]
  3efbfa:      	vldr	s15, [pc, #124]         @ 0x3efc78 <_ZN23SoldierRemoteController10updateStepEf+0x6d8>
  3efbfe:      	vdiv.f32	s16, s14, s15
  3efc02:      	bl	0x3ee1fc <_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIP8SpawnRowEEPT_PKS5_S8_S6_+0x1c0> @ imm = #-0x1a0a
  3efc06:      	mov	r3, r0
  3efc08:      	vmov	s15, r3
  3efc0c:      	vcvt.f32.s32	s14, s15
  3efc10:      	vldr	s15, [pc, #104]         @ 0x3efc7c <_ZN23SoldierRemoteController10updateStepEf+0x6dc>
  3efc14:      	vdiv.f32	s14, s14, s15
  3efc18:      	vmov.f32	s15, #1.000000e+00
  3efc1c:      	vsub.f32	s15, s14, s15
  3efc20:      	vcvt.f64.f32	d6, s15
  3efc24:      	vmov.f64	d7, #2.500000e-01
  3efc28:      	vmul.f64	d6, d6, d7
  3efc2c:      	vmov.f64	d7, #7.500000e-01
  3efc30:      	vadd.f64	d7, d6, d7
  3efc34:      	vcvt.f32.f64	s15, d7
  3efc38:      	vstr	s16, [sp, #8]
  3efc3c:      	vstr	s15, [sp, #12]
  3efc40:      	mov	r3, sp
  3efc42:      	add	r2, sp, #0xe8
  3efc44:      	ldm.w	r2, {r0, r1}
  3efc48:      	stm.w	r3, {r0, r1}
  3efc4c:      	add	r3, sp, #0xe0
  3efc4e:      	ldm	r3, {r2, r3}
  3efc50:      	mov	r0, r4
  3efc52:      	movs	r1, #0xa
  3efc54:      	bl	0x3f8044 <_ZN5Sound19playSoundPositionVPEi6cpVectff> @ imm = #0x83ec
  3efc58:      	b	0x3efc70 <_ZN23SoldierRemoteController10updateStepEf+0x6d0> @ imm = #0x14
// SoldierRemoteController::updateStep  ghidra=0x3ffc70-0x3ffc77  elf=0x3efc70-0x3efc77  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  3efc70:      	add	sp, #0xf4
  3efc72:      	vpop	{d8}
  3efc76:      	pop	{r4, r5, r6, r7, pc}
