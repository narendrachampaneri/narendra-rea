// SurvivalStage::updateSarge  ghidra=0x413698-0x4138c1  elf=0x403698-0x4038c1  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  403698:      	push	{r4, r5, r6, r7, lr}
  40369a:      	sub	sp, #0x13c
  40369c:      	add	r3, sp, #0x2c
  40369e:      	str	r0, [r3]
  4036a0:      	add	r3, sp, #0x28
  4036a2:      	str	r1, [r3]
  4036a4:      	ldr	r4, [pc, #0x240]        @ 0x4038e8 <_ZN13SurvivalStage11updateSargeEf+0x250>
  4036a6:      	add	r4, pc
  4036a8:      	add	r3, sp, #0x2c
  4036aa:      	ldr	r3, [r3]
  4036ac:      	ldr.w	r3, [r3, #0x16c]
  4036b0:      	ldr	r3, [r3]
  4036b2:      	add.w	r3, r3, #0x1f4
  4036b6:      	ldr	r3, [r3]
  4036b8:      	add	r2, sp, #0x2c
  4036ba:      	ldr	r2, [r2]
  4036bc:      	ldr.w	r2, [r2, #0x16c]
  4036c0:      	mov	r0, r2
  4036c2:      	blx	r3
  4036c4:      	mov	r3, r0
  4036c6:      	ldr	r2, [r3]
  4036c8:      	add.w	r2, r2, #0x278
  4036cc:      	ldr	r2, [r2]
  4036ce:      	mov	r0, r3
  4036d0:      	movs	r1, #0xc8
  4036d2:      	blx	r2
  4036d4:      	add	r3, sp, #0x2c
  4036d6:      	ldr	r3, [r3]
  4036d8:      	ldr.w	r3, [r3, #0x16c]
  4036dc:      	ldr	r3, [r3]
  4036de:      	add.w	r3, r3, #0x1fc
  4036e2:      	ldr	r3, [r3]
  4036e4:      	add	r2, sp, #0x2c
  4036e6:      	ldr	r2, [r2]
  4036e8:      	ldr.w	r2, [r2, #0x16c]
  4036ec:      	mov	r0, r2
  4036ee:      	blx	r3
  4036f0:      	mov	r3, r0
  4036f2:      	ldr	r2, [r3]
  4036f4:      	add.w	r2, r2, #0x278
  4036f8:      	ldr	r2, [r2]
  4036fa:      	mov	r0, r3
  4036fc:      	movs	r1, #0xc8
  4036fe:      	blx	r2
  403700:      	add	r3, sp, #0x2c
  403702:      	ldr	r3, [r3]
  403704:      	ldr.w	r3, [r3, #0x16c]
  403708:      	ldr	r3, [r3]
  40370a:      	add.w	r3, r3, #0x2a4
  40370e:      	ldr	r3, [r3]
  403710:      	add	r2, sp, #0x2c
  403712:      	ldr	r2, [r2]
  403714:      	ldr.w	r2, [r2, #0x16c]
  403718:      	mov	r0, r2
  40371a:      	mov.w	r1, #0x0
  40371e:      	movt	r1, #0x42c8
  403722:      	blx	r3
  403724:      	add	r3, sp, #0x2c
  403726:      	ldr	r3, [r3]
  403728:      	ldr.w	r3, [r3, #0x16c]
  40372c:      	ldr	r3, [r3]
  40372e:      	add.w	r3, r3, #0x230
  403732:      	ldr	r5, [r3]
  403734:      	add	r3, sp, #0x2c
  403736:      	ldr	r3, [r3]
  403738:      	ldr.w	r3, [r3, #0x16c]
  40373c:      	mov	r6, r3
  40373e:      	add	r3, sp, #0x78
  403740:      	mov	r0, r3
  403742:      	vldr	d0, [pc, #388]          @ 0x4038c8 <_ZN13SurvivalStage11updateSargeEf+0x230>
  403746:      	vldr	d1, [pc, #392]          @ 0x4038d0 <_ZN13SurvivalStage11updateSargeEf+0x238>
  40374a:      	bl	0x401e2c <_ZN10StoreLayer8onPointsEPN7cocos2d8CCObjectE+0x1fc> @ imm = #-0x1922
  40374e:      	mov	r3, sp
  403750:      	add	r2, sp, #0x80
  403752:      	ldm.w	r2, {r0, r1}
  403756:      	stm.w	r3, {r0, r1}
  40375a:      	add	r3, sp, #0x78
  40375c:      	ldm	r3, {r2, r3}
  40375e:      	mov	r0, r6
  403760:      	blx	r5
  403762:      	add	r3, sp, #0x2c
  403764:      	ldr	r3, [r3]
  403766:      	ldr.w	r3, [r3, #0x16c]
  40376a:      	movs	r2, #0x1
  40376c:      	strb.w	r2, [r3, #0x11c]
  403770:      	add	r3, sp, #0x2c
  403772:      	ldr	r3, [r3]
  403774:      	ldr.w	r3, [r3, #0x16c]
  403778:      	ldr	r3, [r3]
  40377a:      	add.w	r3, r3, #0x1a0
  40377e:      	ldr	r3, [r3]
  403780:      	add	r2, sp, #0x2c
  403782:      	ldr	r2, [r2]
  403784:      	ldr.w	r2, [r2, #0x16c]
  403788:      	mov	r0, r2
  40378a:      	blx	r3
  40378c:      	mov	r3, r0
  40378e:      	cmp	r3, #0x0
  403790:      	beq	0x4037c6 <_ZN13SurvivalStage11updateSargeEf+0x12e> @ imm = #0x32
  403792:      	ldr	r3, [pc, #0x158]        @ 0x4038ec <_ZN13SurvivalStage11updateSargeEf+0x254>
  403794:      	ldr	r3, [r4, r3]
  403796:      	ldr	r3, [r3]
  403798:      	ldr.w	r3, [r3, #0x138]
  40379c:      	vldr	d6, [r3, #48]
  4037a0:      	add	r3, sp, #0x2c
  4037a2:      	ldr	r3, [r3]
  4037a4:      	ldr.w	r3, [r3, #0x16c]
  4037a8:      	ldr.w	r3, [r3, #0x138]
  4037ac:      	vldr	d5, [r3, #48]
  4037b0:      	vldr	d7, [pc, #292]          @ 0x4038d8 <_ZN13SurvivalStage11updateSargeEf+0x240>
  4037b4:      	vadd.f64	d7, d5, d7
  4037b8:      	vcmpe.f64	d6, d7
  4037bc:      	vmrs	APSR_nzcv, fpscr
  4037c0:      	bpl	0x4037c6 <_ZN13SurvivalStage11updateSargeEf+0x12e> @ imm = #0x2
  4037c2:      	movs	r3, #0x1
  4037c4:      	b	0x4037c8 <_ZN13SurvivalStage11updateSargeEf+0x130> @ imm = #0x0
  4037c6:      	movs	r3, #0x0
  4037c8:      	cmp	r3, #0x0
  4037ca:      	beq	0x4037ec <_ZN13SurvivalStage11updateSargeEf+0x154> @ imm = #0x1e
  4037cc:      	add	r3, sp, #0x2c
  4037ce:      	ldr	r3, [r3]
  4037d0:      	ldr.w	r3, [r3, #0x16c]
  4037d4:      	ldr	r3, [r3]
  4037d6:      	add.w	r3, r3, #0x1e0
  4037da:      	ldr	r3, [r3]
  4037dc:      	add	r2, sp, #0x2c
  4037de:      	ldr	r2, [r2]
  4037e0:      	ldr.w	r2, [r2, #0x16c]
  4037e4:      	mov	r0, r2
  4037e6:      	movs	r1, #0x0
  4037e8:      	blx	r3
  4037ea:      	b	0x40380a <_ZN13SurvivalStage11updateSargeEf+0x172> @ imm = #0x1c
  4037ec:      	add	r3, sp, #0x2c
  4037ee:      	ldr	r3, [r3]
  4037f0:      	ldr.w	r3, [r3, #0x16c]
  4037f4:      	ldr	r3, [r3]
  4037f6:      	add.w	r3, r3, #0x1e0
  4037fa:      	ldr	r3, [r3]
  4037fc:      	add	r2, sp, #0x2c
  4037fe:      	ldr	r2, [r2]
  403800:      	ldr.w	r2, [r2, #0x16c]
  403804:      	mov	r0, r2
  403806:      	movs	r1, #0x1
  403808:      	blx	r3
  40380a:      	ldr	r3, [pc, #0xe0]         @ 0x4038ec <_ZN13SurvivalStage11updateSargeEf+0x254>
  40380c:      	ldr	r3, [r4, r3]
  40380e:      	ldr	r3, [r3]
  403810:      	ldr.w	r5, [r3, #0x138]
  403814:      	add	r3, sp, #0x88
  403816:      	mov	r0, r3
  403818:      	vldr	d0, [pc, #172]          @ 0x4038c8 <_ZN13SurvivalStage11updateSargeEf+0x230>
  40381c:      	vldr	d1, [pc, #192]          @ 0x4038e0 <_ZN13SurvivalStage11updateSargeEf+0x248>
  403820:      	bl	0x401e2c <_ZN10StoreLayer8onPointsEPN7cocos2d8CCObjectE+0x1fc> @ imm = #-0x19f8
  403824:      	add	r3, sp, #0x98
  403826:      	vldr	d4, [r5, #40]
  40382a:      	vldr	d5, [r5, #48]
  40382e:      	vldr	d6, [sp, #136]
  403832:      	vldr	d7, [sp, #144]
  403836:      	mov	r0, r3
  403838:      	vmov.f64	d0, d4
  40383c:      	vmov.f64	d1, d5
  403840:      	vmov.f64	d2, d6
  403844:      	vmov.f64	d3, d7
  403848:      	bl	0x401e54 <_ZN10StoreLayer8onPointsEPN7cocos2d8CCObjectE+0x224> @ imm = #-0x19f8
  40384c:      	add	r3, sp, #0x2c
  40384e:      	ldr	r3, [r3]
  403850:      	ldr.w	r3, [r3, #0x16c]
  403854:      	ldr.w	r3, [r3, #0x138]
  403858:      	add	r2, sp, #0x58
  40385a:      	vldr	d4, [sp, #152]
  40385e:      	vldr	d5, [sp, #160]
  403862:      	vldr	d6, [r3, #40]
  403866:      	vldr	d7, [r3, #48]
  40386a:      	mov	r0, r2
  40386c:      	vmov.f64	d0, d4
  403870:      	vmov.f64	d1, d5
  403874:      	vmov.f64	d2, d6
  403878:      	vmov.f64	d3, d7
  40387c:      	bl	0x401eac <_ZN10StoreLayer8onPointsEPN7cocos2d8CCObjectE+0x27c> @ imm = #-0x19d4
  403880:      	add	r3, sp, #0x58
  403882:      	ldm	r3, {r0, r1, r2, r3}
  403884:      	bl	0x6d70b8 <cpvlength>    @ imm = #0x2d3830
  403888:      	vmov	d6, r0, r1
  40388c:      	vldr	d7, [pc, #72]           @ 0x4038d8 <_ZN13SurvivalStage11updateSargeEf+0x240>
  403890:      	vcmpe.f64	d6, d7
  403894:      	vmrs	APSR_nzcv, fpscr
  403898:      	ble	0x4038fc <_ZN13SurvivalStage11updateSargeEf+0x264> @ imm = #0x60
  40389a:      	ldr	r3, [pc, #0x50]         @ 0x4038ec <_ZN13SurvivalStage11updateSargeEf+0x254>
  40389c:      	ldr	r3, [r4, r3]
  40389e:      	ldr	r3, [r3]
  4038a0:      	ldr	r3, [r3]
  4038a2:      	add.w	r3, r3, #0x264
  4038a6:      	ldr	r3, [r3]
  4038a8:      	ldr	r2, [pc, #0x40]         @ 0x4038ec <_ZN13SurvivalStage11updateSargeEf+0x254>
  4038aa:      	ldr	r2, [r4, r2]
  4038ac:      	ldr	r2, [r2]
  4038ae:      	mov	r0, r2
  4038b0:      	blx	r3
  4038b2:      	mov	r3, r0
  4038b4:      	eor	r3, r3, #0x1
  4038b8:      	uxtb	r3, r3
  4038ba:      	cmp	r3, #0x0
  4038bc:      	beq	0x4038fc <_ZN13SurvivalStage11updateSargeEf+0x264> @ imm = #0x3c
  4038be:      	movs	r3, #0x1
  4038c0:      	b	0x4038fe <_ZN13SurvivalStage11updateSargeEf+0x266> @ imm = #0x3a
// SurvivalStage::updateSarge  ghidra=0x4138fc-0x413cf1  elf=0x4038fc-0x403cf1  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  4038fc:      	movs	r3, #0x0
  4038fe:      	cmp	r3, #0x0
  403900:      	beq	0x403950 <_ZN13SurvivalStage11updateSargeEf+0x2b8> @ imm = #0x4c
  403902:      	add	r3, sp, #0x58
  403904:      	ldm	r3, {r0, r1, r2, r3}
  403906:      	bl	0x402048 <_ZN10StoreLayer8onPointsEPN7cocos2d8CCObjectE+0x418> @ imm = #-0x18c2
  40390a:      	add	r3, sp, #0x2c
  40390c:      	ldr	r3, [r3]
  40390e:      	ldr.w	r3, [r3, #0x16c]
  403912:      	ldr	r3, [r3]
  403914:      	add.w	r3, r3, #0x230
  403918:      	ldr	r5, [r3]
  40391a:      	add	r3, sp, #0x2c
  40391c:      	ldr	r3, [r3]
  40391e:      	ldr.w	r3, [r3, #0x16c]
  403922:      	mov	r6, r3
  403924:      	add	r3, sp, #0xa8
  403926:      	vldr	d6, [sp, #88]
  40392a:      	vldr	d7, [sp, #96]
  40392e:      	mov	r0, r3
  403930:      	vmov.f64	d0, d6
  403934:      	vmov.f64	d1, d7
  403938:      	bl	0x401f98 <_ZN10StoreLayer8onPointsEPN7cocos2d8CCObjectE+0x368> @ imm = #-0x19a4
  40393c:      	mov	r3, sp
  40393e:      	add	r2, sp, #0xb0
  403940:      	ldm.w	r2, {r0, r1}
  403944:      	stm.w	r3, {r0, r1}
  403948:      	add	r3, sp, #0xa8
  40394a:      	ldm	r3, {r2, r3}
  40394c:      	mov	r0, r6
  40394e:      	blx	r5
  403950:      	add	r3, sp, #0x2c
  403952:      	ldr	r3, [r3]
  403954:      	ldr.w	r3, [r3, #0x180]
  403958:      	cmp	r3, #0x0
  40395a:      	beq.w	0x403cee <_ZN13SurvivalStage11updateSargeEf+0x656> @ imm = #0x390
  40395e:      	add	r3, sp, #0x2c
  403960:      	ldr	r3, [r3]
  403962:      	ldr.w	r3, [r3, #0x180]
  403966:      	ldr	r3, [r3]
  403968:      	add.w	r3, r3, #0x1ac
  40396c:      	ldr	r3, [r3]
  40396e:      	add	r2, sp, #0x2c
  403970:      	ldr	r2, [r2]
  403972:      	ldr.w	r2, [r2, #0x180]
  403976:      	add	r1, sp, #0xb8
  403978:      	mov	r0, r1
  40397a:      	mov	r1, r2
  40397c:      	blx	r3
  40397e:      	add	r3, sp, #0x2c
  403980:      	ldr	r3, [r3]
  403982:      	ldr.w	r3, [r3, #0x16c]
  403986:      	ldr.w	r3, [r3, #0x138]
  40398a:      	add	r2, sp, #0x68
  40398c:      	vldr	d4, [sp, #184]
  403990:      	vldr	d5, [sp, #192]
  403994:      	vldr	d6, [r3, #40]
  403998:      	vldr	d7, [r3, #48]
  40399c:      	mov	r0, r2
  40399e:      	vmov.f64	d0, d4
  4039a2:      	vmov.f64	d1, d5
  4039a6:      	vmov.f64	d2, d6
  4039aa:      	vmov.f64	d3, d7
  4039ae:      	bl	0x401eac <_ZN10StoreLayer8onPointsEPN7cocos2d8CCObjectE+0x27c> @ imm = #-0x1b06
  4039b2:      	add	r3, sp, #0x68
  4039b4:      	ldm	r3, {r0, r1, r2, r3}
  4039b6:      	bl	0x6d70b8 <cpvlength>    @ imm = #0x2d36fe
  4039ba:      	vmov	d7, r0, r1
  4039be:      	add	r3, sp, #0x34
  4039c0:      	vcvt.f32.f64	s15, d7
  4039c4:      	vstr	s15, [r3]
  4039c8:      	add	r3, sp, #0x2c
  4039ca:      	ldr	r3, [r3]
  4039cc:      	vldr	s14, [r3, #380]
  4039d0:      	vldr	s15, [pc, #-220]        @ 0x4038f8 <_ZN13SurvivalStage11updateSargeEf+0x260>
  4039d4:      	vcmpe.f32	s14, s15
  4039d8:      	vmrs	APSR_nzcv, fpscr
  4039dc:      	ble	0x4039f6 <_ZN13SurvivalStage11updateSargeEf+0x35e> @ imm = #0x16
  4039de:      	add	r3, sp, #0x2c
  4039e0:      	ldr	r3, [r3]
  4039e2:      	vldr	s14, [r3, #380]
  4039e6:      	vldr	s15, [pc, #-240]        @ 0x4038f8 <_ZN13SurvivalStage11updateSargeEf+0x260>
  4039ea:      	vsub.f32	s15, s14, s15
  4039ee:      	add	r3, sp, #0x2c
  4039f0:      	ldr	r3, [r3]
  4039f2:      	vstr	s15, [r3, #380]
  4039f6:      	add	r3, sp, #0x2c
  4039f8:      	ldr	r3, [r3]
  4039fa:      	vldr	s15, [r3, #380]
  4039fe:      	vcmpe.f32	s15, #0
  403a02:      	vmrs	APSR_nzcv, fpscr
  403a06:      	bpl	0x403a20 <_ZN13SurvivalStage11updateSargeEf+0x388> @ imm = #0x16
  403a08:      	add	r3, sp, #0x2c
  403a0a:      	ldr	r3, [r3]
  403a0c:      	vldr	s14, [r3, #380]
  403a10:      	vldr	s15, [pc, #-284]        @ 0x4038f8 <_ZN13SurvivalStage11updateSargeEf+0x260>
  403a14:      	vadd.f32	s15, s14, s15
  403a18:      	add	r3, sp, #0x2c
  403a1a:      	ldr	r3, [r3]
  403a1c:      	vstr	s15, [r3, #380]
  403a20:      	add	r3, sp, #0x38
  403a22:      	mov.w	r2, #0x3f800000
  403a26:      	str	r2, [r3]
  403a28:      	add	r3, sp, #0x2c
  403a2a:      	ldr	r3, [r3]
  403a2c:      	vldr	s14, [r3, #380]
  403a30:      	vldr	s15, [pc, #-324]        @ 0x4038f0 <_ZN13SurvivalStage11updateSargeEf+0x258>
  403a34:      	vmul.f32	s15, s14, s15
  403a38:      	vstr	s15, [sp, #60]
  403a3c:      	add	r3, sp, #0x2c
  403a3e:      	ldr	r3, [r3]
  403a40:      	vldr	s14, [r3, #380]
  403a44:      	vmov.f32	s15, #1.000000e+00
  403a48:      	vadd.f32	s14, s14, s15
  403a4c:      	vldr	s15, [pc, #-352]        @ 0x4038f0 <_ZN13SurvivalStage11updateSargeEf+0x258>
  403a50:      	vmul.f32	s15, s14, s15
  403a54:      	vstr	s15, [sp, #64]
  403a58:      	vldr	s15, [sp, #60]
  403a5c:      	vcvt.f64.f32	d7, s15
  403a60:      	vmov	r0, r1, d7
  403a64:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x12db60
  403a68:      	mov	r6, r0
  403a6a:      	mov	r7, r1
  403a6c:      	vldr	s15, [sp, #60]
  403a70:      	vcvt.f64.f32	d7, s15
  403a74:      	vmov	r0, r1, d7
  403a78:      	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x12db68
  403a7c:      	mov	r2, r0
  403a7e:      	mov	r3, r1
  403a80:      	vmov	d6, r2, r3
  403a84:      	vneg.f64	d7, d6
  403a88:      	add	r3, sp, #0xc8
  403a8a:      	mov	r0, r3
  403a8c:      	vmov	d0, r6, r7
  403a90:      	vmov.f64	d1, d7
  403a94:      	bl	0x401e2c <_ZN10StoreLayer8onPointsEPN7cocos2d8CCObjectE+0x1fc> @ imm = #-0x1c6c
  403a98:      	add	r3, sp, #0xd8
  403a9a:      	vldr	d6, [sp, #104]
  403a9e:      	vldr	d7, [sp, #112]
  403aa2:      	mov	r0, r3
  403aa4:      	vmov.f64	d0, d6
  403aa8:      	vmov.f64	d1, d7
  403aac:      	bl	0x401f98 <_ZN10StoreLayer8onPointsEPN7cocos2d8CCObjectE+0x368> @ imm = #-0x1b18
  403ab0:      	vldr	d4, [sp, #200]
  403ab4:      	vldr	d5, [sp, #208]
  403ab8:      	vldr	d6, [sp, #216]
  403abc:      	vldr	d7, [sp, #224]
  403ac0:      	vmov.f64	d0, d4
  403ac4:      	vmov.f64	d1, d5
  403ac8:      	vmov.f64	d2, d6
  403acc:      	vmov.f64	d3, d7
  403ad0:      	bl	0x401f50 <_ZN10StoreLayer8onPointsEPN7cocos2d8CCObjectE+0x320> @ imm = #-0x1b84
  403ad4:      	vmov.f64	d7, d0
  403ad8:      	vcvt.f32.f64	s15, d7
  403adc:      	vstr	s15, [sp, #68]
  403ae0:      	vldr	s15, [sp, #64]
  403ae4:      	vcvt.f64.f32	d7, s15
  403ae8:      	vmov	r0, r1, d7
  403aec:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x12dbe8
  403af0:      	mov	r6, r0
  403af2:      	mov	r7, r1
  403af4:      	vldr	s15, [sp, #64]
  403af8:      	vcvt.f64.f32	d7, s15
  403afc:      	vmov	r0, r1, d7
  403b00:      	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x12dbf0
  403b04:      	mov	r2, r0
  403b06:      	mov	r3, r1
  403b08:      	vmov	d6, r2, r3
  403b0c:      	vneg.f64	d7, d6
  403b10:      	add	r3, sp, #0xe8
  403b12:      	mov	r0, r3
  403b14:      	vmov	d0, r6, r7
  403b18:      	vmov.f64	d1, d7
  403b1c:      	bl	0x401e2c <_ZN10StoreLayer8onPointsEPN7cocos2d8CCObjectE+0x1fc> @ imm = #-0x1cf4
  403b20:      	add	r3, sp, #0xf8
  403b22:      	vldr	d6, [sp, #104]
  403b26:      	vldr	d7, [sp, #112]
  403b2a:      	mov	r0, r3
  403b2c:      	vmov.f64	d0, d6
  403b30:      	vmov.f64	d1, d7
  403b34:      	bl	0x401f98 <_ZN10StoreLayer8onPointsEPN7cocos2d8CCObjectE+0x368> @ imm = #-0x1ba0
  403b38:      	vldr	d4, [sp, #232]
  403b3c:      	vldr	d5, [sp, #240]
  403b40:      	vldr	d6, [sp, #248]
  403b44:      	vldr	d7, [sp, #256]
  403b48:      	vmov.f64	d0, d4
  403b4c:      	vmov.f64	d1, d5
  403b50:      	vmov.f64	d2, d6
  403b54:      	vmov.f64	d3, d7
  403b58:      	bl	0x401f50 <_ZN10StoreLayer8onPointsEPN7cocos2d8CCObjectE+0x320> @ imm = #-0x1c0c
  403b5c:      	vmov.f64	d7, d0
  403b60:      	vcvt.f32.f64	s15, d7
  403b64:      	vstr	s15, [sp, #72]
  403b68:      	vldr	s14, [sp, #72]
  403b6c:      	vldr	s15, [sp, #68]
  403b70:      	vcmpe.f32	s14, s15
  403b74:      	vmrs	APSR_nzcv, fpscr
  403b78:      	ble	0x403b80 <_ZN13SurvivalStage11updateSargeEf+0x4e8> @ imm = #0x4
  403b7a:      	mov.w	r3, #0x3f800000
  403b7e:      	b	0x403b88 <_ZN13SurvivalStage11updateSargeEf+0x4f0> @ imm = #0x6
  403b80:      	mov.w	r3, #0x0
  403b84:      	movt	r3, #0xbf80
  403b88:      	str	r3, [sp, #0x4c]
  403b8a:      	vldr	s14, [sp, #68]
  403b8e:      	vmov.f32	s15, #1.000000e+00
  403b92:      	vadd.f32	s14, s14, s15
  403b96:      	vldr	s15, [pc, #-676]        @ 0x4038f4 <_ZN13SurvivalStage11updateSargeEf+0x25c>
  403b9a:      	vmul.f32	s15, s14, s15
  403b9e:      	vldr	s14, [pc, #-680]        @ 0x4038f8 <_ZN13SurvivalStage11updateSargeEf+0x260>
  403ba2:      	vsub.f32	s15, s14, s15
  403ba6:      	vcvt.s32.f32	s15, s15
  403baa:      	vmov	r3, s15
  403bae:      	str	r3, [sp, #0x50]
  403bb0:      	ldr	r2, [sp, #0x50]
  403bb2:      	movw	r3, #0x6667
  403bb6:      	movt	r3, #0x6666
  403bba:      	smull	r1, r3, r3, r2
  403bbe:      	asrs	r1, r3, #0x3
  403bc0:      	asrs	r3, r2, #0x1f
  403bc2:      	subs	r3, r1, r3
  403bc4:      	adds	r2, r3, #0x1
  403bc6:      	add	r3, sp, #0x30
  403bc8:      	vmov	s12, r2
  403bcc:      	vcvt.f32.s32	s15, s12
  403bd0:      	vstr	s15, [r3]
  403bd4:      	ldr	r3, [sp, #0x50]
  403bd6:      	vmov	s13, r3
  403bda:      	vcvt.f32.s32	s14, s13
  403bde:      	add	r3, sp, #0x38
  403be0:      	vldr	s15, [r3]
  403be4:      	vcmpe.f32	s14, s15
  403be8:      	vmrs	APSR_nzcv, fpscr
  403bec:      	bpl	0x403bf6 <_ZN13SurvivalStage11updateSargeEf+0x55e> @ imm = #0x6
  403bee:      	add	r3, sp, #0x30
  403bf0:      	mov.w	r2, #0x0
  403bf4:      	str	r2, [r3]
  403bf6:      	add	r3, sp, #0x2c
  403bf8:      	ldr	r3, [r3]
  403bfa:      	vldr	s14, [r3, #380]
  403bfe:      	add	r3, sp, #0x30
  403c00:      	vldr	s13, [sp, #76]
  403c04:      	vldr	s15, [r3]
  403c08:      	vmul.f32	s15, s13, s15
  403c0c:      	vadd.f32	s15, s14, s15
  403c10:      	add	r3, sp, #0x2c
  403c12:      	ldr	r3, [r3]
  403c14:      	vstr	s15, [r3, #380]
  403c18:      	add	r3, sp, #0x2c
  403c1a:      	ldr	r3, [r3]
  403c1c:      	ldr.w	r3, [r3, #0x16c]
  403c20:      	ldr	r3, [r3]
  403c22:      	add.w	r3, r3, #0x238
  403c26:      	ldr	r3, [r3]
  403c28:      	add	r2, sp, #0x2c
  403c2a:      	ldr	r2, [r2]
  403c2c:      	ldr.w	r1, [r2, #0x16c]
  403c30:      	add	r2, sp, #0x2c
  403c32:      	ldr	r2, [r2]
  403c34:      	ldr.w	r2, [r2, #0x17c]
  403c38:      	mov	r0, r1
  403c3a:      	mov	r1, r2
  403c3c:      	blx	r3
  403c3e:      	add	r3, sp, #0x34
  403c40:      	vldr	s14, [r3]
  403c44:      	vldr	s15, [pc, #172]         @ 0x403cf4 <_ZN13SurvivalStage11updateSargeEf+0x65c>
  403c48:      	vcmpe.f32	s14, s15
  403c4c:      	vmrs	APSR_nzcv, fpscr
  403c50:      	bmi	0x403c54 <_ZN13SurvivalStage11updateSargeEf+0x5bc> @ imm = #0x0
  403c52:      	b	0x403cee <_ZN13SurvivalStage11updateSargeEf+0x656> @ imm = #0x98
  403c54:      	add	r3, sp, #0x2c
  403c56:      	ldr	r3, [r3]
  403c58:      	ldr.w	r3, [r3, #0x184]
  403c5c:      	cmp	r3, #0x3
  403c5e:      	bne	0x403cee <_ZN13SurvivalStage11updateSargeEf+0x656> @ imm = #0x8c
  403c60:      	ldr	r3, [pc, #0x94]         @ 0x403cf8 <_ZN13SurvivalStage11updateSargeEf+0x660>
  403c62:      	ldr	r3, [r4, r3]
  403c64:      	ldr	r6, [r3]
  403c66:      	add	r3, sp, #0x2c
  403c68:      	ldr	r3, [r3]
  403c6a:      	ldr.w	r3, [r3, #0x16c]
  403c6e:      	ldr.w	r4, [r3, #0x138]
  403c72:      	add	r3, sp, #0x2c
  403c74:      	ldr	r3, [r3]
  403c76:      	ldr.w	r3, [r3, #0x180]
  403c7a:      	ldr	r3, [r3]
  403c7c:      	add.w	r3, r3, #0x1ac
  403c80:      	ldr	r3, [r3]
  403c82:      	add	r2, sp, #0x2c
  403c84:      	ldr	r2, [r2]
  403c86:      	ldr.w	r2, [r2, #0x180]
  403c8a:      	add	r1, sp, #0x108
  403c8c:      	mov	r0, r1
  403c8e:      	mov	r1, r2
  403c90:      	blx	r3
  403c92:      	add	r5, sp, #0x8
  403c94:      	add	r3, sp, #0x108
  403c96:      	ldm	r3, {r0, r1, r2, r3}
  403c98:      	stm.w	r5, {r0, r1, r2, r3}
  403c9c:      	mov.w	r3, #0x100
  403ca0:      	str	r3, [sp, #0x18]
  403ca2:      	movs	r3, #0x0
  403ca4:      	str	r3, [sp, #0x1c]
  403ca6:      	add	r3, sp, #0x118
  403ca8:      	str	r3, [sp, #0x20]
  403caa:      	mov	r3, sp
  403cac:      	add.w	r2, r4, #0x30
  403cb0:      	ldm.w	r2, {r0, r1}
  403cb4:      	stm.w	r3, {r0, r1}
  403cb8:      	add.w	r3, r4, #0x28
  403cbc:      	ldm	r3, {r2, r3}
  403cbe:      	mov	r0, r6
  403cc0:      	bl	0x6d5f58 <cpSpaceSegmentQueryFirst> @ imm = #0x2d2294
  403cc4:      	mov	r3, r0
  403cc6:      	str	r3, [sp, #0x54]
  403cc8:      	ldr	r3, [sp, #0x54]
  403cca:      	cmp	r3, #0x0
  403ccc:      	bne	0x403cee <_ZN13SurvivalStage11updateSargeEf+0x656> @ imm = #0x1e
  403cce:      	add	r3, sp, #0x2c
  403cd0:      	ldr	r3, [r3]
  403cd2:      	ldr.w	r3, [r3, #0x16c]
  403cd6:      	ldr	r3, [r3]
  403cd8:      	add.w	r3, r3, #0x240
  403cdc:      	ldr	r3, [r3]
  403cde:      	add	r2, sp, #0x2c
  403ce0:      	ldr	r2, [r2]
  403ce2:      	ldr.w	r1, [r2, #0x16c]
  403ce6:      	add	r2, sp, #0x28
  403ce8:      	mov	r0, r1
  403cea:      	ldr	r1, [r2]
  403cec:      	blx	r3
  403cee:      	add	sp, #0x13c
  403cf0:      	pop	{r4, r5, r6, r7, pc}
