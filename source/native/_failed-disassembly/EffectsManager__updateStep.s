// EffectsManager::updateStep  ghidra=0x3245e8-0x3248b3  elf=0x3145e8-0x3148b3  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  3145e8:      	push	{r4, r5, lr}
  3145ea:      	vpush	{d8}
  3145ee:      	sub	sp, #0x8c
  3145f0:      	str	r0, [sp, #0x14]
  3145f2:      	str	r1, [sp, #0x10]
  3145f4:      	ldr	r4, [pc, #0x2c8]        @ 0x3148c0 <_ZN14EffectsManager10updateStepEf+0x2d8>
  3145f6:      	add	r4, pc
  3145f8:      	ldr	r3, [sp, #0x14]
  3145fa:      	ldr.w	r3, [r3, #0xe4]
  3145fe:      	ldr	r3, [r3]
  314600:      	adds	r3, #0x90
  314602:      	ldr	r3, [r3]
  314604:      	ldr	r2, [sp, #0x14]
  314606:      	ldr.w	r2, [r2, #0xe4]
  31460a:      	mov	r0, r2
  31460c:      	movs	r1, #0x0
  31460e:      	blx	r3
  314610:      	ldr	r3, [sp, #0x14]
  314612:      	vldr	s14, [r3, #276]
  314616:      	vldr	s15, [sp, #16]
  31461a:      	vadd.f32	s15, s14, s15
  31461e:      	ldr	r3, [sp, #0x14]
  314620:      	vstr	s15, [r3, #276]
  314624:      	ldr	r3, [sp, #0x14]
  314626:      	vldr	s15, [r3, #276]
  31462a:      	vcvt.f64.f32	d6, s15
  31462e:      	vldr	d7, [pc, #648]          @ 0x3148b8 <_ZN14EffectsManager10updateStepEf+0x2d0>
  314632:      	vcmpe.f64	d6, d7
  314636:      	vmrs	APSR_nzcv, fpscr
  31463a:      	ble	0x314654 <_ZN14EffectsManager10updateStepEf+0x6c> @ imm = #0x16
  31463c:      	ldr	r3, [sp, #0x14]
  31463e:      	ldr.w	r3, [r3, #0xe8]
  314642:      	ldr	r3, [r3]
  314644:      	adds	r3, #0x90
  314646:      	ldr	r3, [r3]
  314648:      	ldr	r2, [sp, #0x14]
  31464a:      	ldr.w	r2, [r2, #0xe8]
  31464e:      	mov	r0, r2
  314650:      	movs	r1, #0x0
  314652:      	blx	r3
  314654:      	movs	r3, #0x0
  314656:      	str	r3, [sp, #0x1c]
  314658:      	b	0x31467c <_ZN14EffectsManager10updateStepEf+0x94> @ imm = #0x20
  31465a:      	ldr	r3, [sp, #0x14]
  31465c:      	ldr.w	r2, [r3, #0xfc]
  314660:      	ldr	r3, [sp, #0x1c]
  314662:      	mov	r0, r2
  314664:      	mov	r1, r3
  314666:      	bl	0x59a120 <_ZN7cocos2d7CCArray13objectAtIndexEj> @ imm = #0x285ab6
  31466a:      	mov	r3, r0
  31466c:      	str	r3, [sp, #0x48]
  31466e:      	ldr	r0, [sp, #0x48]
  314670:      	ldr	r1, [sp, #0x10]
  314672:      	bl	0x31d7f8 <_ZN9Explosion10updateStepEf> @ imm = #0x9182
  314676:      	ldr	r3, [sp, #0x1c]
  314678:      	adds	r3, #0x1
  31467a:      	str	r3, [sp, #0x1c]
  31467c:      	ldr	r5, [sp, #0x1c]
  31467e:      	ldr	r3, [sp, #0x14]
  314680:      	ldr.w	r3, [r3, #0xfc]
  314684:      	mov	r0, r3
  314686:      	bl	0x59a0e0 <_ZNK7cocos2d7CCArray5countEv> @ imm = #0x285a56
  31468a:      	mov	r3, r0
  31468c:      	cmp	r5, r3
  31468e:      	ite	hs
  314690:      	movhs	r3, #0x0
  314692:      	movlo	r3, #0x1
  314694:      	uxtb	r3, r3
  314696:      	cmp	r3, #0x0
  314698:      	bne	0x31465a <_ZN14EffectsManager10updateStepEf+0x72> @ imm = #-0x42
  31469a:      	movs	r3, #0x0
  31469c:      	str	r3, [sp, #0x20]
  31469e:      	b	0x3146fa <_ZN14EffectsManager10updateStepEf+0x112> @ imm = #0x58
  3146a0:      	ldr	r3, [sp, #0x14]
  3146a2:      	ldr.w	r2, [r3, #0x100]
  3146a6:      	ldr	r3, [sp, #0x20]
  3146a8:      	mov	r0, r2
  3146aa:      	mov	r1, r3
  3146ac:      	bl	0x59a120 <_ZN7cocos2d7CCArray13objectAtIndexEj> @ imm = #0x285a70
  3146b0:      	mov	r3, r0
  3146b2:      	str	r3, [sp, #0x4c]
  3146b4:      	ldr	r0, [sp, #0x4c]
  3146b6:      	ldr	r1, [sp, #0x10]
  3146b8:      	bl	0x338cb8 <_ZN8GasCloud10updateStepEf> @ imm = #0x245fc
  3146bc:      	ldr	r3, [sp, #0x4c]
  3146be:      	ldrb.w	r3, [r3, #0xf9]
  3146c2:      	eor	r3, r3, #0x1
  3146c6:      	uxtb	r3, r3
  3146c8:      	cmp	r3, #0x0
  3146ca:      	beq	0x3146f4 <_ZN14EffectsManager10updateStepEf+0x10c> @ imm = #0x26
  3146cc:      	ldr	r3, [sp, #0x14]
  3146ce:      	ldr.w	r3, [r3, #0x110]
  3146d2:      	mov	r0, r3
  3146d4:      	ldr	r1, [sp, #0x4c]
  3146d6:      	bl	0x59a26c <_ZN7cocos2d7CCArray9addObjectEPNS_8CCObjectE> @ imm = #0x285b92
  3146da:      	ldr	r3, [pc, #0x1e8]        @ 0x3148c4 <_ZN14EffectsManager10updateStepEf+0x2dc>
  3146dc:      	ldr	r3, [r4, r3]
  3146de:      	ldr	r3, [r3]
  3146e0:      	ldr	r3, [r3]
  3146e2:      	adds	r3, #0xf4
  3146e4:      	ldr	r3, [r3]
  3146e6:      	ldr	r2, [pc, #0x1dc]        @ 0x3148c4 <_ZN14EffectsManager10updateStepEf+0x2dc>
  3146e8:      	ldr	r2, [r4, r2]
  3146ea:      	ldr	r2, [r2]
  3146ec:      	mov	r0, r2
  3146ee:      	ldr	r1, [sp, #0x4c]
  3146f0:      	movs	r2, #0x0
  3146f2:      	blx	r3
  3146f4:      	ldr	r3, [sp, #0x20]
  3146f6:      	adds	r3, #0x1
  3146f8:      	str	r3, [sp, #0x20]
  3146fa:      	ldr	r5, [sp, #0x20]
  3146fc:      	ldr	r3, [sp, #0x14]
  3146fe:      	ldr.w	r3, [r3, #0x100]
  314702:      	mov	r0, r3
  314704:      	bl	0x59a0e0 <_ZNK7cocos2d7CCArray5countEv> @ imm = #0x2859d8
  314708:      	mov	r3, r0
  31470a:      	cmp	r5, r3
  31470c:      	ite	hs
  31470e:      	movhs	r3, #0x0
  314710:      	movlo	r3, #0x1
  314712:      	uxtb	r3, r3
  314714:      	cmp	r3, #0x0
  314716:      	bne	0x3146a0 <_ZN14EffectsManager10updateStepEf+0xb8> @ imm = #-0x7a
  314718:      	movs	r3, #0x0
  31471a:      	str	r3, [sp, #0x24]
  31471c:      	b	0x314748 <_ZN14EffectsManager10updateStepEf+0x160> @ imm = #0x28
  31471e:      	ldr	r3, [sp, #0x14]
  314720:      	ldr.w	r2, [r3, #0x110]
  314724:      	ldr	r3, [sp, #0x24]
  314726:      	mov	r0, r2
  314728:      	mov	r1, r3
  31472a:      	bl	0x59a120 <_ZN7cocos2d7CCArray13objectAtIndexEj> @ imm = #0x2859f2
  31472e:      	mov	r3, r0
  314730:      	str	r3, [sp, #0x50]
  314732:      	ldr	r3, [sp, #0x14]
  314734:      	ldr.w	r3, [r3, #0x100]
  314738:      	mov	r0, r3
  31473a:      	ldr	r1, [sp, #0x50]
  31473c:      	movs	r2, #0x1
  31473e:      	bl	0x59a2f4 <_ZN7cocos2d7CCArray12removeObjectEPNS_8CCObjectEb> @ imm = #0x285bb2
  314742:      	ldr	r3, [sp, #0x24]
  314744:      	adds	r3, #0x1
  314746:      	str	r3, [sp, #0x24]
  314748:      	ldr	r5, [sp, #0x24]
  31474a:      	ldr	r3, [sp, #0x14]
  31474c:      	ldr.w	r3, [r3, #0x110]
  314750:      	mov	r0, r3
  314752:      	bl	0x59a0e0 <_ZNK7cocos2d7CCArray5countEv> @ imm = #0x28598a
  314756:      	mov	r3, r0
  314758:      	cmp	r5, r3
  31475a:      	ite	hs
  31475c:      	movhs	r3, #0x0
  31475e:      	movlo	r3, #0x1
  314760:      	uxtb	r3, r3
  314762:      	cmp	r3, #0x0
  314764:      	bne	0x31471e <_ZN14EffectsManager10updateStepEf+0x136> @ imm = #-0x4a
  314766:      	ldr	r3, [sp, #0x14]
  314768:      	ldr.w	r3, [r3, #0x110]
  31476c:      	mov	r0, r3
  31476e:      	bl	0x59a364 <_ZN7cocos2d7CCArray16removeAllObjectsEv> @ imm = #0x285bf2
  314772:      	movs	r3, #0x0
  314774:      	str	r3, [sp, #0x28]
  314776:      	b	0x3147d2 <_ZN14EffectsManager10updateStepEf+0x1ea> @ imm = #0x58
  314778:      	ldr	r3, [sp, #0x14]
  31477a:      	ldr.w	r2, [r3, #0x10c]
  31477e:      	ldr	r3, [sp, #0x28]
  314780:      	mov	r0, r2
  314782:      	mov	r1, r3
  314784:      	bl	0x59a120 <_ZN7cocos2d7CCArray13objectAtIndexEj> @ imm = #0x285998
  314788:      	mov	r3, r0
  31478a:      	str	r3, [sp, #0x54]
  31478c:      	ldr	r0, [sp, #0x54]
  31478e:      	ldr	r1, [sp, #0x10]
  314790:      	bl	0x3b6008 <_ZN9ProxyMine10updateStepEf> @ imm = #0xa1874
  314794:      	ldr	r3, [sp, #0x54]
  314796:      	ldrb.w	r3, [r3, #0x134]
  31479a:      	eor	r3, r3, #0x1
  31479e:      	uxtb	r3, r3
  3147a0:      	cmp	r3, #0x0
  3147a2:      	beq	0x3147cc <_ZN14EffectsManager10updateStepEf+0x1e4> @ imm = #0x26
  3147a4:      	ldr	r3, [sp, #0x14]
  3147a6:      	ldr.w	r3, [r3, #0x110]
  3147aa:      	mov	r0, r3
  3147ac:      	ldr	r1, [sp, #0x54]
  3147ae:      	bl	0x59a26c <_ZN7cocos2d7CCArray9addObjectEPNS_8CCObjectE> @ imm = #0x285aba
  3147b2:      	ldr	r3, [pc, #0x110]        @ 0x3148c4 <_ZN14EffectsManager10updateStepEf+0x2dc>
  3147b4:      	ldr	r3, [r4, r3]
  3147b6:      	ldr	r3, [r3]
  3147b8:      	ldr	r3, [r3]
  3147ba:      	adds	r3, #0xf4
  3147bc:      	ldr	r3, [r3]
  3147be:      	ldr	r2, [pc, #0x104]        @ 0x3148c4 <_ZN14EffectsManager10updateStepEf+0x2dc>
  3147c0:      	ldr	r2, [r4, r2]
  3147c2:      	ldr	r2, [r2]
  3147c4:      	mov	r0, r2
  3147c6:      	ldr	r1, [sp, #0x54]
  3147c8:      	movs	r2, #0x0
  3147ca:      	blx	r3
  3147cc:      	ldr	r3, [sp, #0x28]
  3147ce:      	adds	r3, #0x1
  3147d0:      	str	r3, [sp, #0x28]
  3147d2:      	ldr	r5, [sp, #0x28]
  3147d4:      	ldr	r3, [sp, #0x14]
  3147d6:      	ldr.w	r3, [r3, #0x10c]
  3147da:      	mov	r0, r3
  3147dc:      	bl	0x59a0e0 <_ZNK7cocos2d7CCArray5countEv> @ imm = #0x285900
  3147e0:      	mov	r3, r0
  3147e2:      	cmp	r5, r3
  3147e4:      	ite	hs
  3147e6:      	movhs	r3, #0x0
  3147e8:      	movlo	r3, #0x1
  3147ea:      	uxtb	r3, r3
  3147ec:      	cmp	r3, #0x0
  3147ee:      	bne	0x314778 <_ZN14EffectsManager10updateStepEf+0x190> @ imm = #-0x7a
  3147f0:      	movs	r3, #0x0
  3147f2:      	str	r3, [sp, #0x2c]
  3147f4:      	b	0x314820 <_ZN14EffectsManager10updateStepEf+0x238> @ imm = #0x28
  3147f6:      	ldr	r3, [sp, #0x14]
  3147f8:      	ldr.w	r2, [r3, #0x110]
  3147fc:      	ldr	r3, [sp, #0x2c]
  3147fe:      	mov	r0, r2
  314800:      	mov	r1, r3
  314802:      	bl	0x59a120 <_ZN7cocos2d7CCArray13objectAtIndexEj> @ imm = #0x28591a
  314806:      	mov	r3, r0
  314808:      	str	r3, [sp, #0x58]
  31480a:      	ldr	r3, [sp, #0x14]
  31480c:      	ldr.w	r3, [r3, #0x10c]
  314810:      	mov	r0, r3
  314812:      	ldr	r1, [sp, #0x58]
  314814:      	movs	r2, #0x1
  314816:      	bl	0x59a2f4 <_ZN7cocos2d7CCArray12removeObjectEPNS_8CCObjectEb> @ imm = #0x285ada
  31481a:      	ldr	r3, [sp, #0x2c]
  31481c:      	adds	r3, #0x1
  31481e:      	str	r3, [sp, #0x2c]
  314820:      	ldr	r5, [sp, #0x2c]
  314822:      	ldr	r3, [sp, #0x14]
  314824:      	ldr.w	r3, [r3, #0x110]
  314828:      	mov	r0, r3
  31482a:      	bl	0x59a0e0 <_ZNK7cocos2d7CCArray5countEv> @ imm = #0x2858b2
  31482e:      	mov	r3, r0
  314830:      	cmp	r5, r3
  314832:      	ite	hs
  314834:      	movhs	r3, #0x0
  314836:      	movlo	r3, #0x1
  314838:      	uxtb	r3, r3
  31483a:      	cmp	r3, #0x0
  31483c:      	bne	0x3147f6 <_ZN14EffectsManager10updateStepEf+0x20e> @ imm = #-0x4a
  31483e:      	ldr	r3, [sp, #0x14]
  314840:      	ldr.w	r3, [r3, #0x110]
  314844:      	mov	r0, r3
  314846:      	bl	0x59a364 <_ZN7cocos2d7CCArray16removeAllObjectsEv> @ imm = #0x285b1a
  31484a:      	movs	r3, #0x0
  31484c:      	str	r3, [sp, #0x30]
  31484e:      	b	0x314890 <_ZN14EffectsManager10updateStepEf+0x2a8> @ imm = #0x3e
  314850:      	ldr	r3, [sp, #0x14]
  314852:      	ldr.w	r2, [r3, #0x108]
  314856:      	ldr	r3, [sp, #0x30]
  314858:      	mov	r0, r2
  31485a:      	mov	r1, r3
  31485c:      	bl	0x59a120 <_ZN7cocos2d7CCArray13objectAtIndexEj> @ imm = #0x2858c0
  314860:      	mov	r3, r0
  314862:      	str	r3, [sp, #0x5c]
  314864:      	ldr	r0, [sp, #0x5c]
  314866:      	ldr	r1, [sp, #0x10]
  314868:      	bl	0x394858 <_ZN12PlasmaEnergy10updateStepEf> @ imm = #0x7ffec
  31486c:      	ldr	r3, [sp, #0x5c]
  31486e:      	ldrb.w	r3, [r3, #0xe8]
  314872:      	eor	r3, r3, #0x1
  314876:      	uxtb	r3, r3
  314878:      	cmp	r3, #0x0
  31487a:      	beq	0x31488a <_ZN14EffectsManager10updateStepEf+0x2a2> @ imm = #0xc
  31487c:      	ldr	r3, [sp, #0x14]
  31487e:      	ldr.w	r3, [r3, #0x110]
  314882:      	mov	r0, r3
  314884:      	ldr	r1, [sp, #0x5c]
  314886:      	bl	0x59a26c <_ZN7cocos2d7CCArray9addObjectEPNS_8CCObjectE> @ imm = #0x2859e2
  31488a:      	ldr	r3, [sp, #0x30]
  31488c:      	adds	r3, #0x1
  31488e:      	str	r3, [sp, #0x30]
  314890:      	ldr	r5, [sp, #0x30]
  314892:      	ldr	r3, [sp, #0x14]
  314894:      	ldr.w	r3, [r3, #0x108]
  314898:      	mov	r0, r3
  31489a:      	bl	0x59a0e0 <_ZNK7cocos2d7CCArray5countEv> @ imm = #0x285842
  31489e:      	mov	r3, r0
  3148a0:      	cmp	r5, r3
  3148a2:      	ite	hs
  3148a4:      	movhs	r3, #0x0
  3148a6:      	movlo	r3, #0x1
  3148a8:      	uxtb	r3, r3
  3148aa:      	cmp	r3, #0x0
  3148ac:      	bne	0x314850 <_ZN14EffectsManager10updateStepEf+0x268> @ imm = #-0x60
  3148ae:      	movs	r3, #0x0
  3148b0:      	str	r3, [sp, #0x34]
  3148b2:      	b	0x3148fe <_ZN14EffectsManager10updateStepEf+0x316> @ imm = #0x48
// EffectsManager::updateStep  ghidra=0x3248c8-0x324cab  elf=0x3148c8-0x314cab  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  3148c8:      	ldr	r3, [sp, #0x14]
  3148ca:      	ldr.w	r2, [r3, #0x110]
  3148ce:      	ldr	r3, [sp, #0x34]
  3148d0:      	mov	r0, r2
  3148d2:      	mov	r1, r3
  3148d4:      	bl	0x59a120 <_ZN7cocos2d7CCArray13objectAtIndexEj> @ imm = #0x285848
  3148d8:      	mov	r3, r0
  3148da:      	str	r3, [sp, #0x60]
  3148dc:      	ldr	r3, [sp, #0x60]
  3148de:      	ldr	r3, [r3]
  3148e0:      	adds	r3, #0xe8
  3148e2:      	ldr	r3, [r3]
  3148e4:      	ldr	r0, [sp, #0x60]
  3148e6:      	blx	r3
  3148e8:      	ldr	r3, [sp, #0x14]
  3148ea:      	ldr.w	r3, [r3, #0x108]
  3148ee:      	mov	r0, r3
  3148f0:      	ldr	r1, [sp, #0x60]
  3148f2:      	movs	r2, #0x1
  3148f4:      	bl	0x59a2f4 <_ZN7cocos2d7CCArray12removeObjectEPNS_8CCObjectEb> @ imm = #0x2859fc
  3148f8:      	ldr	r3, [sp, #0x34]
  3148fa:      	adds	r3, #0x1
  3148fc:      	str	r3, [sp, #0x34]
  3148fe:      	ldr	r5, [sp, #0x34]
  314900:      	ldr	r3, [sp, #0x14]
  314902:      	ldr.w	r3, [r3, #0x110]
  314906:      	mov	r0, r3
  314908:      	bl	0x59a0e0 <_ZNK7cocos2d7CCArray5countEv> @ imm = #0x2857d4
  31490c:      	mov	r3, r0
  31490e:      	cmp	r5, r3
  314910:      	ite	hs
  314912:      	movhs	r3, #0x0
  314914:      	movlo	r3, #0x1
  314916:      	uxtb	r3, r3
  314918:      	cmp	r3, #0x0
  31491a:      	bne	0x3148c8 <_ZN14EffectsManager10updateStepEf+0x2e0> @ imm = #-0x56
  31491c:      	ldr	r3, [sp, #0x14]
  31491e:      	ldr.w	r3, [r3, #0x110]
  314922:      	mov	r0, r3
  314924:      	bl	0x59a364 <_ZN7cocos2d7CCArray16removeAllObjectsEv> @ imm = #0x285a3c
  314928:      	movs	r3, #0x0
  31492a:      	str	r3, [sp, #0x38]
  31492c:      	b	0x314a5e <_ZN14EffectsManager10updateStepEf+0x476> @ imm = #0x12e
  31492e:      	ldr	r3, [sp, #0x14]
  314930:      	ldr.w	r2, [r3, #0x104]
  314934:      	ldr	r3, [sp, #0x38]
  314936:      	mov	r0, r2
  314938:      	mov	r1, r3
  31493a:      	bl	0x59a120 <_ZN7cocos2d7CCArray13objectAtIndexEj> @ imm = #0x2857e2
  31493e:      	mov	r3, r0
  314940:      	str	r3, [sp, #0x64]
  314942:      	ldr	r0, [sp, #0x64]
  314944:      	ldr	r1, [sp, #0x10]
  314946:      	bl	0x393168 <_ZN10PlasmaBall10updateStepEf> @ imm = #0x7e81e
  31494a:      	ldr	r3, [sp, #0x64]
  31494c:      	ldrb.w	r3, [r3, #0x148]
  314950:      	eor	r3, r3, #0x1
  314954:      	uxtb	r3, r3
  314956:      	cmp	r3, #0x0
  314958:      	beq	0x31496a <_ZN14EffectsManager10updateStepEf+0x382> @ imm = #0xe
  31495a:      	ldr	r3, [sp, #0x14]
  31495c:      	ldr.w	r3, [r3, #0x110]
  314960:      	mov	r0, r3
  314962:      	ldr	r1, [sp, #0x64]
  314964:      	bl	0x59a26c <_ZN7cocos2d7CCArray9addObjectEPNS_8CCObjectE> @ imm = #0x285904
  314968:      	b	0x314a58 <_ZN14EffectsManager10updateStepEf+0x470> @ imm = #0xec
  31496a:      	movs	r3, #0x0
  31496c:      	str	r3, [sp, #0x3c]
  31496e:      	b	0x314a3a <_ZN14EffectsManager10updateStepEf+0x452> @ imm = #0xc8
  314970:      	ldr	r3, [sp, #0x14]
  314972:      	ldr.w	r2, [r3, #0x10c]
  314976:      	ldr	r3, [sp, #0x3c]
  314978:      	mov	r0, r2
  31497a:      	mov	r1, r3
  31497c:      	bl	0x59a120 <_ZN7cocos2d7CCArray13objectAtIndexEj> @ imm = #0x2857a0
  314980:      	mov	r3, r0
  314982:      	str	r3, [sp, #0x68]
  314984:      	ldr	r3, [pc, #0x340]        @ 0x314cc8 <_ZN14EffectsManager10updateStepEf+0x6e0>
  314986:      	ldr	r3, [r4, r3]
  314988:      	ldr	r3, [r3]
  31498a:      	ldr	r3, [r3]
  31498c:      	add.w	r3, r3, #0x1c0
  314990:      	ldr	r3, [r3]
  314992:      	ldr	r2, [pc, #0x334]        @ 0x314cc8 <_ZN14EffectsManager10updateStepEf+0x6e0>
  314994:      	ldr	r2, [r4, r2]
  314996:      	ldr	r2, [r2]
  314998:      	add	r1, sp, #0x78
  31499a:      	mov	r0, r1
  31499c:      	mov	r1, r2
  31499e:      	blx	r3
  3149a0:      	ldr	r3, [sp, #0x68]
  3149a2:      	adds	r3, #0xe8
  3149a4:      	add	r2, sp, #0x78
  3149a6:      	mov	r0, r2
  3149a8:      	mov	r1, r3
  3149aa:      	bl	0x7b567c <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18bcc> @ imm = #0x4a0cce
  3149ae:      	mov	r3, r0
  3149b0:      	cmp	r3, #0x0
  3149b2:      	ite	ne
  3149b4:      	movne	r3, #0x0
  3149b6:      	moveq	r3, #0x1
  3149b8:      	uxtb	r5, r3
  3149ba:      	add	r3, sp, #0x78
  3149bc:      	mov	r0, r3
  3149be:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x4a0f52
  3149c2:      	cmp	r5, #0x0
  3149c4:      	beq	0x314a34 <_ZN14EffectsManager10updateStepEf+0x44c> @ imm = #0x6c
  3149c6:      	ldr	r3, [sp, #0x68]
  3149c8:      	ldr	r3, [r3]
  3149ca:      	adds	r3, #0x50
  3149cc:      	ldr	r3, [r3]
  3149ce:      	ldr	r2, [sp, #0x68]
  3149d0:      	mov	r0, r2
  3149d2:      	blx	r3
  3149d4:      	mov	r3, r0
  3149d6:      	vldr	s15, [r3]
  3149da:      	vcvt.f64.f32	d8, s15
  3149de:      	ldr	r3, [sp, #0x68]
  3149e0:      	ldr	r3, [r3]
  3149e2:      	adds	r3, #0x50
  3149e4:      	ldr	r3, [r3]
  3149e6:      	ldr	r2, [sp, #0x68]
  3149e8:      	mov	r0, r2
  3149ea:      	blx	r3
  3149ec:      	mov	r3, r0
  3149ee:      	vldr	s15, [r3, #4]
  3149f2:      	vcvt.f64.f32	d7, s15
  3149f6:      	add	r3, sp, #0x78
  3149f8:      	mov	r0, r3
  3149fa:      	vmov.f64	d0, d8
  3149fe:      	vmov.f64	d1, d7
  314a02:      	bl	0x312f60 <_ZN3EMP12doRemoteFireEf6cpVectS0_iSs+0x188> @ imm = #-0x1aa6
  314a06:      	ldr	r0, [sp, #0x64]
  314a08:      	bl	0x392f88 <_ZN10PlasmaBall9getRadiusEv> @ imm = #0x7e57c
  314a0c:      	mov	r3, r0
  314a0e:      	str	r3, [sp, #0x8]
  314a10:      	mov	r3, sp
  314a12:      	add	r2, sp, #0x80
  314a14:      	ldm.w	r2, {r0, r1}
  314a18:      	stm.w	r3, {r0, r1}
  314a1c:      	add	r3, sp, #0x78
  314a1e:      	ldm	r3, {r2, r3}
  314a20:      	ldr	r0, [sp, #0x64]
  314a22:      	bl	0x3930d0 <_ZN10PlasmaBall14checkCollisionE6cpVectf> @ imm = #0x7e6aa
  314a26:      	mov	r3, r0
  314a28:      	cmp	r3, #0x0
  314a2a:      	beq	0x314a34 <_ZN14EffectsManager10updateStepEf+0x44c> @ imm = #0x6
  314a2c:      	ldr	r0, [sp, #0x68]
  314a2e:      	movs	r1, #0x0
  314a30:      	bl	0x3b6288 <_ZN9ProxyMine10removeMineEb> @ imm = #0xa1854
  314a34:      	ldr	r3, [sp, #0x3c]
  314a36:      	adds	r3, #0x1
  314a38:      	str	r3, [sp, #0x3c]
  314a3a:      	ldr	r5, [sp, #0x3c]
  314a3c:      	ldr	r3, [sp, #0x14]
  314a3e:      	ldr.w	r3, [r3, #0x10c]
  314a42:      	mov	r0, r3
  314a44:      	bl	0x59a0e0 <_ZNK7cocos2d7CCArray5countEv> @ imm = #0x285698
  314a48:      	mov	r3, r0
  314a4a:      	cmp	r5, r3
  314a4c:      	ite	hs
  314a4e:      	movhs	r3, #0x0
  314a50:      	movlo	r3, #0x1
  314a52:      	uxtb	r3, r3
  314a54:      	cmp	r3, #0x0
  314a56:      	bne	0x314970 <_ZN14EffectsManager10updateStepEf+0x388> @ imm = #-0xea
  314a58:      	ldr	r3, [sp, #0x38]
  314a5a:      	adds	r3, #0x1
  314a5c:      	str	r3, [sp, #0x38]
  314a5e:      	ldr	r5, [sp, #0x38]
  314a60:      	ldr	r3, [sp, #0x14]
  314a62:      	ldr.w	r3, [r3, #0x104]
  314a66:      	mov	r0, r3
  314a68:      	bl	0x59a0e0 <_ZNK7cocos2d7CCArray5countEv> @ imm = #0x285674
  314a6c:      	mov	r3, r0
  314a6e:      	cmp	r5, r3
  314a70:      	ite	hs
  314a72:      	movhs	r3, #0x0
  314a74:      	movlo	r3, #0x1
  314a76:      	uxtb	r3, r3
  314a78:      	cmp	r3, #0x0
  314a7a:      	bne.w	0x31492e <_ZN14EffectsManager10updateStepEf+0x346> @ imm = #-0x150
  314a7e:      	movs	r3, #0x0
  314a80:      	str	r3, [sp, #0x40]
  314a82:      	b	0x314aba <_ZN14EffectsManager10updateStepEf+0x4d2> @ imm = #0x34
  314a84:      	ldr	r3, [sp, #0x14]
  314a86:      	ldr.w	r2, [r3, #0x110]
  314a8a:      	ldr	r3, [sp, #0x40]
  314a8c:      	mov	r0, r2
  314a8e:      	mov	r1, r3
  314a90:      	bl	0x59a120 <_ZN7cocos2d7CCArray13objectAtIndexEj> @ imm = #0x28568c
  314a94:      	mov	r3, r0
  314a96:      	str	r3, [sp, #0x6c]
  314a98:      	ldr	r3, [sp, #0x6c]
  314a9a:      	ldr	r3, [r3]
  314a9c:      	adds	r3, #0xe8
  314a9e:      	ldr	r3, [r3]
  314aa0:      	ldr	r0, [sp, #0x6c]
  314aa2:      	blx	r3
  314aa4:      	ldr	r3, [sp, #0x14]
  314aa6:      	ldr.w	r3, [r3, #0x104]
  314aaa:      	mov	r0, r3
  314aac:      	ldr	r1, [sp, #0x6c]
  314aae:      	movs	r2, #0x1
  314ab0:      	bl	0x59a2f4 <_ZN7cocos2d7CCArray12removeObjectEPNS_8CCObjectEb> @ imm = #0x285840
  314ab4:      	ldr	r3, [sp, #0x40]
  314ab6:      	adds	r3, #0x1
  314ab8:      	str	r3, [sp, #0x40]
  314aba:      	ldr	r4, [sp, #0x40]
  314abc:      	ldr	r3, [sp, #0x14]
  314abe:      	ldr.w	r3, [r3, #0x110]
  314ac2:      	mov	r0, r3
  314ac4:      	bl	0x59a0e0 <_ZNK7cocos2d7CCArray5countEv> @ imm = #0x285618
  314ac8:      	mov	r3, r0
  314aca:      	cmp	r4, r3
  314acc:      	ite	hs
  314ace:      	movhs	r3, #0x0
  314ad0:      	movlo	r3, #0x1
  314ad2:      	uxtb	r3, r3
  314ad4:      	cmp	r3, #0x0
  314ad6:      	bne	0x314a84 <_ZN14EffectsManager10updateStepEf+0x49c> @ imm = #-0x56
  314ad8:      	ldr	r3, [sp, #0x14]
  314ada:      	ldr.w	r3, [r3, #0x110]
  314ade:      	mov	r0, r3
  314ae0:      	bl	0x59a364 <_ZN7cocos2d7CCArray16removeAllObjectsEv> @ imm = #0x285880
  314ae4:      	movs	r3, #0x0
  314ae6:      	str	r3, [sp, #0x44]
  314ae8:      	b	0x314bd4 <_ZN14EffectsManager10updateStepEf+0x5ec> @ imm = #0xe8
  314aea:      	ldr	r3, [sp, #0x14]
  314aec:      	ldr.w	r2, [r3, #0xf8]
  314af0:      	ldr	r3, [sp, #0x44]
  314af2:      	mov	r0, r2
  314af4:      	mov	r1, r3
  314af6:      	bl	0x59a120 <_ZN7cocos2d7CCArray13objectAtIndexEj> @ imm = #0x285626
  314afa:      	mov	r3, r0
  314afc:      	str	r3, [sp, #0x70]
  314afe:      	ldr	r0, [sp, #0x70]
  314b00:      	ldr	r1, [sp, #0x10]
  314b02:      	bl	0x396cc0 <_ZN11PlayerDeath10updateStepEf> @ imm = #0x821ba
  314b06:      	ldr	r0, [sp, #0x70]
  314b08:      	bl	0x396e5c <_ZN11PlayerDeath9isInWorldEv> @ imm = #0x82350
  314b0c:      	mov	r3, r0
  314b0e:      	cmp	r3, #0x0
  314b10:      	beq	0x314b22 <_ZN14EffectsManager10updateStepEf+0x53a> @ imm = #0xe
  314b12:      	ldr	r0, [sp, #0x70]
  314b14:      	bl	0x313cec <_ZN11PlayerDeath8getBloodEv> @ imm = #-0xe2c
  314b18:      	mov	r3, r0
  314b1a:      	cmp	r3, #0x0
  314b1c:      	beq	0x314b22 <_ZN14EffectsManager10updateStepEf+0x53a> @ imm = #0x2
  314b1e:      	movs	r3, #0x1
  314b20:      	b	0x314b24 <_ZN14EffectsManager10updateStepEf+0x53c> @ imm = #0x0
  314b22:      	movs	r3, #0x0
  314b24:      	cmp	r3, #0x0
  314b26:      	beq	0x314bce <_ZN14EffectsManager10updateStepEf+0x5e6> @ imm = #0xa4
  314b28:      	ldr	r3, [sp, #0x14]
  314b2a:      	ldr.w	r3, [r3, #0x124]
  314b2e:      	adds	r2, r3, #0x1
  314b30:      	ldr	r3, [sp, #0x14]
  314b32:      	str.w	r2, [r3, #0x124]
  314b36:      	ldr	r3, [sp, #0x14]
  314b38:      	ldr.w	r3, [r3, #0x124]
  314b3c:      	mov	r4, r3
  314b3e:      	ldr	r0, [sp, #0x70]
  314b40:      	bl	0x396e4c <_ZN11PlayerDeath13getBodyShapesEv> @ imm = #0x82308
  314b44:      	mov	r3, r0
  314b46:      	mov	r0, r3
  314b48:      	bl	0x59a0e0 <_ZNK7cocos2d7CCArray5countEv> @ imm = #0x285594
  314b4c:      	mov	r3, r0
  314b4e:      	cmp	r4, r3
  314b50:      	ite	lo
  314b52:      	movlo	r3, #0x0
  314b54:      	movhs	r3, #0x1
  314b56:      	uxtb	r3, r3
  314b58:      	cmp	r3, #0x0
  314b5a:      	beq	0x314b64 <_ZN14EffectsManager10updateStepEf+0x57c> @ imm = #0x6
  314b5c:      	ldr	r3, [sp, #0x14]
  314b5e:      	movs	r2, #0x0
  314b60:      	str.w	r2, [r3, #0x124]
  314b64:      	ldr	r0, [sp, #0x70]
  314b66:      	bl	0x396e4c <_ZN11PlayerDeath13getBodyShapesEv> @ imm = #0x822e2
  314b6a:      	mov	r3, r0
  314b6c:      	mov	r0, r3
  314b6e:      	bl	0x59a0e0 <_ZNK7cocos2d7CCArray5countEv> @ imm = #0x28556e
  314b72:      	mov	r3, r0
  314b74:      	cmp	r3, #0x0
  314b76:      	ite	eq
  314b78:      	moveq	r3, #0x0
  314b7a:      	movne	r3, #0x1
  314b7c:      	uxtb	r3, r3
  314b7e:      	cmp	r3, #0x0
  314b80:      	beq	0x314bce <_ZN14EffectsManager10updateStepEf+0x5e6> @ imm = #0x4a
  314b82:      	ldr	r0, [sp, #0x70]
  314b84:      	bl	0x396e4c <_ZN11PlayerDeath13getBodyShapesEv> @ imm = #0x822c4
  314b88:      	mov	r2, r0
  314b8a:      	ldr	r3, [sp, #0x14]
  314b8c:      	ldr.w	r3, [r3, #0x124]
  314b90:      	mov	r0, r2
  314b92:      	mov	r1, r3
  314b94:      	bl	0x59a120 <_ZN7cocos2d7CCArray13objectAtIndexEj> @ imm = #0x285588
  314b98:      	mov	r3, r0
  314b9a:      	str	r3, [sp, #0x74]
  314b9c:      	ldr	r3, [sp, #0x74]
  314b9e:      	ldr	r3, [r3, #0x14]
  314ba0:      	cmp	r3, #0x0
  314ba2:      	beq	0x314bce <_ZN14EffectsManager10updateStepEf+0x5e6> @ imm = #0x28
  314ba4:      	ldr	r3, [sp, #0x74]
  314ba6:      	ldr	r3, [r3, #0x14]
  314ba8:      	mov.w	r2, #0x0
  314bac:      	movt	r2, #0x4248
  314bb0:      	str	r2, [sp, #0x8]
  314bb2:      	mov.w	r2, #0x3f800000
  314bb6:      	str	r2, [sp, #0xc]
  314bb8:      	mov	r2, sp
  314bba:      	add.w	r1, r3, #0x30
  314bbe:      	ldm	r1, {r0, r1}
  314bc0:      	stm.w	r2, {r0, r1}
  314bc4:      	adds	r3, #0x28
  314bc6:      	ldm	r3, {r2, r3}
  314bc8:      	ldr	r0, [sp, #0x14]
  314bca:      	bl	0x3160b8 <_ZN14EffectsManager10addBloodAtE6cpVectff> @ imm = #0x14ea
  314bce:      	ldr	r3, [sp, #0x44]
  314bd0:      	adds	r3, #0x1
  314bd2:      	str	r3, [sp, #0x44]
  314bd4:      	ldr	r4, [sp, #0x44]
  314bd6:      	ldr	r3, [sp, #0x14]
  314bd8:      	ldr.w	r3, [r3, #0xf8]
  314bdc:      	mov	r0, r3
  314bde:      	bl	0x59a0e0 <_ZNK7cocos2d7CCArray5countEv> @ imm = #0x2854fe
  314be2:      	mov	r3, r0
  314be4:      	cmp	r4, r3
  314be6:      	ite	hs
  314be8:      	movhs	r3, #0x0
  314bea:      	movlo	r3, #0x1
  314bec:      	uxtb	r3, r3
  314bee:      	cmp	r3, #0x0
  314bf0:      	bne.w	0x314aea <_ZN14EffectsManager10updateStepEf+0x502> @ imm = #-0x10a
  314bf4:      	ldr	r3, [sp, #0x14]
  314bf6:      	vldr	s14, [r3, #296]
  314bfa:      	vldr	s15, [sp, #16]
  314bfe:      	vadd.f32	s15, s14, s15
  314c02:      	ldr	r3, [sp, #0x14]
  314c04:      	vstr	s15, [r3, #296]
  314c08:      	ldr	r3, [sp, #0x14]
  314c0a:      	vldr	s14, [r3, #296]
  314c0e:      	vmov.f32	s15, #1.000000e+00
  314c12:      	vcmpe.f32	s14, s15
  314c16:      	vmrs	APSR_nzcv, fpscr
  314c1a:      	ble	0x314c3e <_ZN14EffectsManager10updateStepEf+0x656> @ imm = #0x20
  314c1c:      	ldr	r3, [sp, #0x14]
  314c1e:      	add.w	r4, r3, #0x12c
  314c22:      	add	r3, sp, #0x78
  314c24:      	mov	r0, r3
  314c26:      	mov.w	r1, #0x0
  314c2a:      	mov.w	r2, #0x0
  314c2e:      	bl	0x592cf0 <_ZN7cocos2d7CCPointC2Eff> @ imm = #0x27e0be
  314c32:      	add	r3, sp, #0x78
  314c34:      	mov	r0, r4
  314c36:      	mov	r1, r3
  314c38:      	bl	0x592d4c <_ZN7cocos2d7CCPointaSERKS0_> @ imm = #0x27e110
  314c3c:      	b	0x314cb8 <_ZN14EffectsManager10updateStepEf+0x6d0> @ imm = #0x78
  314c3e:      	ldr	r3, [sp, #0x14]
  314c40:      	vldr	s15, [r3, #308]
  314c44:      	vcvt.f64.f32	d6, s15
  314c48:      	vldr	d7, [pc, #116]          @ 0x314cc0 <_ZN14EffectsManager10updateStepEf+0x6d8>
  314c4c:      	vmul.f64	d7, d6, d7
  314c50:      	vcvt.f32.f64	s15, d7
  314c54:      	ldr	r3, [sp, #0x14]
  314c56:      	vstr	s15, [r3, #308]
  314c5a:      	ldr	r3, [sp, #0x14]
  314c5c:      	add.w	r4, r3, #0x12c
  314c60:      	ldr	r3, [sp, #0x14]
  314c62:      	vldr	s15, [r3, #308]
  314c66:      	vcvt.f64.f32	d8, s15
  314c6a:      	ldr	r3, [sp, #0x14]
  314c6c:      	vldr	s14, [r3, #296]
  314c70:      	vmov.f32	s15, #3.000000e+01
  314c74:      	vmul.f32	s15, s14, s15
  314c78:      	vcvt.f64.f32	d7, s15
  314c7c:      	vmov	r0, r1, d7
  314c80:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x3ed7c
  314c84:      	vmov	d7, r0, r1
  314c88:      	vmul.f64	d7, d8, d7
  314c8c:      	vcvt.f32.f64	s15, d7
  314c90:      	add	r3, sp, #0x78
  314c92:      	mov	r0, r3
  314c94:      	vmov	r1, s15
  314c98:      	mov.w	r2, #0x0
  314c9c:      	bl	0x592cf0 <_ZN7cocos2d7CCPointC2Eff> @ imm = #0x27e050
  314ca0:      	add	r3, sp, #0x78
  314ca2:      	mov	r0, r4
  314ca4:      	mov	r1, r3
  314ca6:      	bl	0x592d4c <_ZN7cocos2d7CCPointaSERKS0_> @ imm = #0x27e0a2
  314caa:      	b	0x314cb8 <_ZN14EffectsManager10updateStepEf+0x6d0> @ imm = #0xa
// EffectsManager::updateStep  ghidra=0x324cb8-0x324cbf  elf=0x314cb8-0x314cbf  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  314cb8:      	add	sp, #0x8c
  314cba:      	vpop	{d8}
  314cbe:      	pop	{r4, r5, pc}
