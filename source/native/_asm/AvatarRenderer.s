// AvatarRenderer: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 17 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../AvatarRenderer.cpp

// ==== AvatarRenderer::AvatarRenderer
//      file offset 0x2f37c4 (= ELF address; Ghidra 0x3037c4), 756 bytes, Thumb-2
  2f37c4: b530         	push	{r4, r5, lr}
  2f37c6: b083         	sub	sp, #0xc
  2f37c8: 9001         	str	r0, [sp, #0x4]
  2f37ca: 4cb9         	ldr	r4, [pc, #0x2e4]        @ 0x2f3ab0 <AvatarRenderer::AvatarRenderer()+0x2ec>
  2f37cc: 447c         	add	r4, pc
  2f37ce: 9b01         	ldr	r3, [sp, #0x4]
  2f37d0: 4618         	mov	r0, r3
  2f37d2: f29b ff31    	bl	0x58f638 <cocos2d::CCNode::CCNode()> @ imm = #0x29be62
  2f37d6: 9b01         	ldr	r3, [sp, #0x4]
  2f37d8: 4ab6         	ldr	r2, [pc, #0x2d8]        @ 0x2f3ab4 <AvatarRenderer::AvatarRenderer()+0x2f0>
  2f37da: 58a2         	ldr	r2, [r4, r2]
  2f37dc: 3208         	adds	r2, #0x8
  2f37de: 601a         	str	r2, [r3]
  2f37e0: 9b01         	ldr	r3, [sp, #0x4]
  2f37e2: 33e4         	adds	r3, #0xe4
  2f37e4: 2402         	movs	r4, #0x2
  2f37e6: 461d         	mov	r5, r3
  2f37e8: e004         	b	0x2f37f4 <AvatarRenderer::AvatarRenderer()+0x30> @ imm = #0x8
  2f37ea: 4628         	mov	r0, r5
  2f37ec: f29f fd5a    	bl	0x5932a4 <cocos2d::CCRect::CCRect()> @ imm = #0x29fab4
  2f37f0: 3510         	adds	r5, #0x10
  2f37f2: 3c01         	subs	r4, #0x1
  2f37f4: f1b4 3fff    	cmp.w	r4, #0xffffffff
  2f37f8: d1f7         	bne	0x2f37ea <AvatarRenderer::AvatarRenderer()+0x26> @ imm = #-0x12
  2f37fa: 9b01         	ldr	r3, [sp, #0x4]
  2f37fc: f503 738a    	add.w	r3, r3, #0x114
  2f3800: 2410         	movs	r4, #0x10
  2f3802: 461d         	mov	r5, r3
  2f3804: e004         	b	0x2f3810 <AvatarRenderer::AvatarRenderer()+0x4c> @ imm = #0x8
  2f3806: 4628         	mov	r0, r5
  2f3808: f29f fd4c    	bl	0x5932a4 <cocos2d::CCRect::CCRect()> @ imm = #0x29fa98
  2f380c: 3510         	adds	r5, #0x10
  2f380e: 3c01         	subs	r4, #0x1
  2f3810: f1b4 3fff    	cmp.w	r4, #0xffffffff
  2f3814: d1f7         	bne	0x2f3806 <AvatarRenderer::AvatarRenderer()+0x42> @ imm = #-0x12
  2f3816: 9b01         	ldr	r3, [sp, #0x4]
  2f3818: f503 7309    	add.w	r3, r3, #0x224
  2f381c: 240c         	movs	r4, #0xc
  2f381e: 461d         	mov	r5, r3
  2f3820: e004         	b	0x2f382c <AvatarRenderer::AvatarRenderer()+0x68> @ imm = #0x8
  2f3822: 4628         	mov	r0, r5
  2f3824: f29f fd3e    	bl	0x5932a4 <cocos2d::CCRect::CCRect()> @ imm = #0x29fa7c
  2f3828: 3510         	adds	r5, #0x10
  2f382a: 3c01         	subs	r4, #0x1
  2f382c: f1b4 3fff    	cmp.w	r4, #0xffffffff
  2f3830: d1f7         	bne	0x2f3822 <AvatarRenderer::AvatarRenderer()+0x5e> @ imm = #-0x12
  2f3832: 9b01         	ldr	r3, [sp, #0x4]
  2f3834: f503 733d    	add.w	r3, r3, #0x2f4
  2f3838: 2406         	movs	r4, #0x6
  2f383a: 461d         	mov	r5, r3
  2f383c: e004         	b	0x2f3848 <AvatarRenderer::AvatarRenderer()+0x84> @ imm = #0x8
  2f383e: 4628         	mov	r0, r5
  2f3840: f29f fd30    	bl	0x5932a4 <cocos2d::CCRect::CCRect()> @ imm = #0x29fa60
  2f3844: 3510         	adds	r5, #0x10
  2f3846: 3c01         	subs	r4, #0x1
  2f3848: f1b4 3fff    	cmp.w	r4, #0xffffffff
  2f384c: d1f7         	bne	0x2f383e <AvatarRenderer::AvatarRenderer()+0x7a> @ imm = #-0x12
  2f384e: 9b01         	ldr	r3, [sp, #0x4]
  2f3850: f503 7359    	add.w	r3, r3, #0x364
  2f3854: 2412         	movs	r4, #0x12
  2f3856: 461d         	mov	r5, r3
  2f3858: e004         	b	0x2f3864 <AvatarRenderer::AvatarRenderer()+0xa0> @ imm = #0x8
  2f385a: 4628         	mov	r0, r5
  2f385c: f29f fd22    	bl	0x5932a4 <cocos2d::CCRect::CCRect()> @ imm = #0x29fa44
  2f3860: 3510         	adds	r5, #0x10
  2f3862: 3c01         	subs	r4, #0x1
  2f3864: f1b4 3fff    	cmp.w	r4, #0xffffffff
  2f3868: d1f7         	bne	0x2f385a <AvatarRenderer::AvatarRenderer()+0x96> @ imm = #-0x12
  2f386a: 9b01         	ldr	r3, [sp, #0x4]
  2f386c: f203 4394    	addw	r3, r3, #0x494
  2f3870: 2421         	movs	r4, #0x21
  2f3872: 461d         	mov	r5, r3
  2f3874: e004         	b	0x2f3880 <AvatarRenderer::AvatarRenderer()+0xbc> @ imm = #0x8
  2f3876: 4628         	mov	r0, r5
  2f3878: f29f fd14    	bl	0x5932a4 <cocos2d::CCRect::CCRect()> @ imm = #0x29fa28
  2f387c: 3510         	adds	r5, #0x10
  2f387e: 3c01         	subs	r4, #0x1
  2f3880: f1b4 3fff    	cmp.w	r4, #0xffffffff
  2f3884: d1f7         	bne	0x2f3876 <AvatarRenderer::AvatarRenderer()+0xb2> @ imm = #-0x12
  2f3886: 9b01         	ldr	r3, [sp, #0x4]
  2f3888: f203 63b4    	addw	r3, r3, #0x6b4
  2f388c: 2407         	movs	r4, #0x7
  2f388e: 461d         	mov	r5, r3
  2f3890: e004         	b	0x2f389c <AvatarRenderer::AvatarRenderer()+0xd8> @ imm = #0x8
  2f3892: 4628         	mov	r0, r5
  2f3894: f29f fd06    	bl	0x5932a4 <cocos2d::CCRect::CCRect()> @ imm = #0x29fa0c
  2f3898: 3510         	adds	r5, #0x10
  2f389a: 3c01         	subs	r4, #0x1
  2f389c: f1b4 3fff    	cmp.w	r4, #0xffffffff
  2f38a0: d1f7         	bne	0x2f3892 <AvatarRenderer::AvatarRenderer()+0xce> @ imm = #-0x12
  2f38a2: 9b01         	ldr	r3, [sp, #0x4]
  2f38a4: f203 7334    	addw	r3, r3, #0x734
  2f38a8: 2408         	movs	r4, #0x8
  2f38aa: 461d         	mov	r5, r3
  2f38ac: e004         	b	0x2f38b8 <AvatarRenderer::AvatarRenderer()+0xf4> @ imm = #0x8
  2f38ae: 4628         	mov	r0, r5
  2f38b0: f29f fcf8    	bl	0x5932a4 <cocos2d::CCRect::CCRect()> @ imm = #0x29f9f0
  2f38b4: 3510         	adds	r5, #0x10
  2f38b6: 3c01         	subs	r4, #0x1
  2f38b8: f1b4 3fff    	cmp.w	r4, #0xffffffff
  2f38bc: d1f7         	bne	0x2f38ae <AvatarRenderer::AvatarRenderer()+0xea> @ imm = #-0x12
  2f38be: 9b01         	ldr	r3, [sp, #0x4]
  2f38c0: f203 73c4    	addw	r3, r3, #0x7c4
  2f38c4: 2404         	movs	r4, #0x4
  2f38c6: 461d         	mov	r5, r3
  2f38c8: e004         	b	0x2f38d4 <AvatarRenderer::AvatarRenderer()+0x110> @ imm = #0x8
  2f38ca: 4628         	mov	r0, r5
  2f38cc: f29f fcea    	bl	0x5932a4 <cocos2d::CCRect::CCRect()> @ imm = #0x29f9d4
  2f38d0: 3510         	adds	r5, #0x10
  2f38d2: 3c01         	subs	r4, #0x1
  2f38d4: f1b4 3fff    	cmp.w	r4, #0xffffffff
  2f38d8: d1f7         	bne	0x2f38ca <AvatarRenderer::AvatarRenderer()+0x106> @ imm = #-0x12
  2f38da: 9b01         	ldr	r3, [sp, #0x4]
  2f38dc: f603 0314    	addw	r3, r3, #0x814
  2f38e0: 2405         	movs	r4, #0x5
  2f38e2: 461d         	mov	r5, r3
  2f38e4: e004         	b	0x2f38f0 <AvatarRenderer::AvatarRenderer()+0x12c> @ imm = #0x8
  2f38e6: 4628         	mov	r0, r5
  2f38e8: f29f fcdc    	bl	0x5932a4 <cocos2d::CCRect::CCRect()> @ imm = #0x29f9b8
  2f38ec: 3510         	adds	r5, #0x10
  2f38ee: 3c01         	subs	r4, #0x1
  2f38f0: f1b4 3fff    	cmp.w	r4, #0xffffffff
  2f38f4: d1f7         	bne	0x2f38e6 <AvatarRenderer::AvatarRenderer()+0x122> @ imm = #-0x12
  2f38f6: 9b01         	ldr	r3, [sp, #0x4]
  2f38f8: f603 0374    	addw	r3, r3, #0x874
  2f38fc: 2407         	movs	r4, #0x7
  2f38fe: 461d         	mov	r5, r3
  2f3900: e004         	b	0x2f390c <AvatarRenderer::AvatarRenderer()+0x148> @ imm = #0x8
  2f3902: 4628         	mov	r0, r5
  2f3904: f29f fcce    	bl	0x5932a4 <cocos2d::CCRect::CCRect()> @ imm = #0x29f99c
  2f3908: 3510         	adds	r5, #0x10
  2f390a: 3c01         	subs	r4, #0x1
  2f390c: f1b4 3fff    	cmp.w	r4, #0xffffffff
  2f3910: d1f7         	bne	0x2f3902 <AvatarRenderer::AvatarRenderer()+0x13e> @ imm = #-0x12
  2f3912: 9b01         	ldr	r3, [sp, #0x4]
  2f3914: f603 131c    	addw	r3, r3, #0x91c
  2f3918: 2412         	movs	r4, #0x12
  2f391a: 461d         	mov	r5, r3
  2f391c: e004         	b	0x2f3928 <AvatarRenderer::AvatarRenderer()+0x164> @ imm = #0x8
  2f391e: 4628         	mov	r0, r5
  2f3920: f29f fcc0    	bl	0x5932a4 <cocos2d::CCRect::CCRect()> @ imm = #0x29f980
  2f3924: 3510         	adds	r5, #0x10
  2f3926: 3c01         	subs	r4, #0x1
  2f3928: f1b4 3fff    	cmp.w	r4, #0xffffffff
  2f392c: d1f7         	bne	0x2f391e <AvatarRenderer::AvatarRenderer()+0x15a> @ imm = #-0x12
  2f392e: 9b01         	ldr	r3, [sp, #0x4]
  2f3930: f603 234c    	addw	r3, r3, #0xa4c
  2f3934: 2412         	movs	r4, #0x12
  2f3936: 461d         	mov	r5, r3
  2f3938: e004         	b	0x2f3944 <AvatarRenderer::AvatarRenderer()+0x180> @ imm = #0x8
  2f393a: 4628         	mov	r0, r5
  2f393c: f29f fcb2    	bl	0x5932a4 <cocos2d::CCRect::CCRect()> @ imm = #0x29f964
  2f3940: 3510         	adds	r5, #0x10
  2f3942: 3c01         	subs	r4, #0x1
  2f3944: f1b4 3fff    	cmp.w	r4, #0xffffffff
  2f3948: d1f7         	bne	0x2f393a <AvatarRenderer::AvatarRenderer()+0x176> @ imm = #-0x12
  2f394a: 9b01         	ldr	r3, [sp, #0x4]
  2f394c: f603 337c    	addw	r3, r3, #0xb7c
  2f3950: 2401         	movs	r4, #0x1
  2f3952: 461d         	mov	r5, r3
  2f3954: e004         	b	0x2f3960 <AvatarRenderer::AvatarRenderer()+0x19c> @ imm = #0x8
  2f3956: 4628         	mov	r0, r5
  2f3958: f29f fca4    	bl	0x5932a4 <cocos2d::CCRect::CCRect()> @ imm = #0x29f948
  2f395c: 3510         	adds	r5, #0x10
  2f395e: 3c01         	subs	r4, #0x1
  2f3960: f1b4 3fff    	cmp.w	r4, #0xffffffff
  2f3964: d1f7         	bne	0x2f3956 <AvatarRenderer::AvatarRenderer()+0x192> @ imm = #-0x12
  2f3966: 9b01         	ldr	r3, [sp, #0x4]
  2f3968: f603 339c    	addw	r3, r3, #0xb9c
  2f396c: 240a         	movs	r4, #0xa
  2f396e: 461d         	mov	r5, r3
  2f3970: e004         	b	0x2f397c <AvatarRenderer::AvatarRenderer()+0x1b8> @ imm = #0x8
  2f3972: 4628         	mov	r0, r5
  2f3974: f29f fc96    	bl	0x5932a4 <cocos2d::CCRect::CCRect()> @ imm = #0x29f92c
  2f3978: 3510         	adds	r5, #0x10
  2f397a: 3c01         	subs	r4, #0x1
  2f397c: f1b4 3fff    	cmp.w	r4, #0xffffffff
  2f3980: d1f7         	bne	0x2f3972 <AvatarRenderer::AvatarRenderer()+0x1ae> @ imm = #-0x12
  2f3982: 9b01         	ldr	r3, [sp, #0x4]
  2f3984: f603 434c    	addw	r3, r3, #0xc4c
  2f3988: 240a         	movs	r4, #0xa
  2f398a: 461d         	mov	r5, r3
  2f398c: e004         	b	0x2f3998 <AvatarRenderer::AvatarRenderer()+0x1d4> @ imm = #0x8
  2f398e: 4628         	mov	r0, r5
  2f3990: f29f fc88    	bl	0x5932a4 <cocos2d::CCRect::CCRect()> @ imm = #0x29f910
  2f3994: 3510         	adds	r5, #0x10
  2f3996: 3c01         	subs	r4, #0x1
  2f3998: f1b4 3fff    	cmp.w	r4, #0xffffffff
  2f399c: d1f7         	bne	0x2f398e <AvatarRenderer::AvatarRenderer()+0x1ca> @ imm = #-0x12
  2f399e: 9b01         	ldr	r3, [sp, #0x4]
  2f39a0: f603 43fc    	addw	r3, r3, #0xcfc
  2f39a4: 2401         	movs	r4, #0x1
  2f39a6: 461d         	mov	r5, r3
  2f39a8: e004         	b	0x2f39b4 <AvatarRenderer::AvatarRenderer()+0x1f0> @ imm = #0x8
  2f39aa: 4628         	mov	r0, r5
  2f39ac: f29f fc7a    	bl	0x5932a4 <cocos2d::CCRect::CCRect()> @ imm = #0x29f8f4
  2f39b0: 3510         	adds	r5, #0x10
  2f39b2: 3c01         	subs	r4, #0x1
  2f39b4: f1b4 3fff    	cmp.w	r4, #0xffffffff
  2f39b8: d1f7         	bne	0x2f39aa <AvatarRenderer::AvatarRenderer()+0x1e6> @ imm = #-0x12
  2f39ba: 9b01         	ldr	r3, [sp, #0x4]
  2f39bc: f603 531c    	addw	r3, r3, #0xd1c
  2f39c0: 240a         	movs	r4, #0xa
  2f39c2: 461d         	mov	r5, r3
  2f39c4: e004         	b	0x2f39d0 <AvatarRenderer::AvatarRenderer()+0x20c> @ imm = #0x8
  2f39c6: 4628         	mov	r0, r5
  2f39c8: f29f fc6c    	bl	0x5932a4 <cocos2d::CCRect::CCRect()> @ imm = #0x29f8d8
  2f39cc: 3510         	adds	r5, #0x10
  2f39ce: 3c01         	subs	r4, #0x1
  2f39d0: f1b4 3fff    	cmp.w	r4, #0xffffffff
  2f39d4: d1f7         	bne	0x2f39c6 <AvatarRenderer::AvatarRenderer()+0x202> @ imm = #-0x12
  2f39d6: 9b01         	ldr	r3, [sp, #0x4]
  2f39d8: f603 53cc    	addw	r3, r3, #0xdcc
  2f39dc: 240a         	movs	r4, #0xa
  2f39de: 461d         	mov	r5, r3
  2f39e0: e004         	b	0x2f39ec <AvatarRenderer::AvatarRenderer()+0x228> @ imm = #0x8
  2f39e2: 4628         	mov	r0, r5
  2f39e4: f29f fc5e    	bl	0x5932a4 <cocos2d::CCRect::CCRect()> @ imm = #0x29f8bc
  2f39e8: 3510         	adds	r5, #0x10
  2f39ea: 3c01         	subs	r4, #0x1
  2f39ec: f1b4 3fff    	cmp.w	r4, #0xffffffff
  2f39f0: d1f7         	bne	0x2f39e2 <AvatarRenderer::AvatarRenderer()+0x21e> @ imm = #-0x12
  2f39f2: 9b01         	ldr	r3, [sp, #0x4]
  2f39f4: f603 637c    	addw	r3, r3, #0xe7c
  2f39f8: 2400         	movs	r4, #0x0
  2f39fa: 461d         	mov	r5, r3
  2f39fc: e004         	b	0x2f3a08 <AvatarRenderer::AvatarRenderer()+0x244> @ imm = #0x8
  2f39fe: 4628         	mov	r0, r5
  2f3a00: f29f fc50    	bl	0x5932a4 <cocos2d::CCRect::CCRect()> @ imm = #0x29f8a0
  2f3a04: 3510         	adds	r5, #0x10
  2f3a06: 3c01         	subs	r4, #0x1
  2f3a08: f1b4 3fff    	cmp.w	r4, #0xffffffff
  2f3a0c: d1f7         	bne	0x2f39fe <AvatarRenderer::AvatarRenderer()+0x23a> @ imm = #-0x12
  2f3a0e: 9b01         	ldr	r3, [sp, #0x4]
  2f3a10: f603 638c    	addw	r3, r3, #0xe8c
  2f3a14: 2400         	movs	r4, #0x0
  2f3a16: 461d         	mov	r5, r3
  2f3a18: e004         	b	0x2f3a24 <AvatarRenderer::AvatarRenderer()+0x260> @ imm = #0x8
  2f3a1a: 4628         	mov	r0, r5
  2f3a1c: f29f fc42    	bl	0x5932a4 <cocos2d::CCRect::CCRect()> @ imm = #0x29f884
  2f3a20: 3510         	adds	r5, #0x10
  2f3a22: 3c01         	subs	r4, #0x1
  2f3a24: f1b4 3fff    	cmp.w	r4, #0xffffffff
  2f3a28: d1f7         	bne	0x2f3a1a <AvatarRenderer::AvatarRenderer()+0x256> @ imm = #-0x12
  2f3a2a: 9b01         	ldr	r3, [sp, #0x4]
  2f3a2c: f603 639c    	addw	r3, r3, #0xe9c
  2f3a30: 2401         	movs	r4, #0x1
  2f3a32: 461d         	mov	r5, r3
  2f3a34: e004         	b	0x2f3a40 <AvatarRenderer::AvatarRenderer()+0x27c> @ imm = #0x8
  2f3a36: 4628         	mov	r0, r5
  2f3a38: f29f fc34    	bl	0x5932a4 <cocos2d::CCRect::CCRect()> @ imm = #0x29f868
  2f3a3c: 3510         	adds	r5, #0x10
  2f3a3e: 3c01         	subs	r4, #0x1
  2f3a40: f1b4 3fff    	cmp.w	r4, #0xffffffff
  2f3a44: d1f7         	bne	0x2f3a36 <AvatarRenderer::AvatarRenderer()+0x272> @ imm = #-0x12
  2f3a46: 9b01         	ldr	r3, [sp, #0x4]
  2f3a48: f603 63bc    	addw	r3, r3, #0xebc
  2f3a4c: 2400         	movs	r4, #0x0
  2f3a4e: 461d         	mov	r5, r3
  2f3a50: e004         	b	0x2f3a5c <AvatarRenderer::AvatarRenderer()+0x298> @ imm = #0x8
  2f3a52: 4628         	mov	r0, r5
  2f3a54: f29f fc26    	bl	0x5932a4 <cocos2d::CCRect::CCRect()> @ imm = #0x29f84c
  2f3a58: 3510         	adds	r5, #0x10
  2f3a5a: 3c01         	subs	r4, #0x1
  2f3a5c: f1b4 3fff    	cmp.w	r4, #0xffffffff
  2f3a60: d1f7         	bne	0x2f3a52 <AvatarRenderer::AvatarRenderer()+0x28e> @ imm = #-0x12
  2f3a62: 9b01         	ldr	r3, [sp, #0x4]
  2f3a64: f603 63cc    	addw	r3, r3, #0xecc
  2f3a68: 2400         	movs	r4, #0x0
  2f3a6a: 461d         	mov	r5, r3
  2f3a6c: e004         	b	0x2f3a78 <AvatarRenderer::AvatarRenderer()+0x2b4> @ imm = #0x8
  2f3a6e: 4628         	mov	r0, r5
  2f3a70: f29f fc18    	bl	0x5932a4 <cocos2d::CCRect::CCRect()> @ imm = #0x29f830
  2f3a74: 3510         	adds	r5, #0x10
  2f3a76: 3c01         	subs	r4, #0x1
  2f3a78: f1b4 3fff    	cmp.w	r4, #0xffffffff
  2f3a7c: d1f7         	bne	0x2f3a6e <AvatarRenderer::AvatarRenderer()+0x2aa> @ imm = #-0x12
  2f3a7e: 9b01         	ldr	r3, [sp, #0x4]
  2f3a80: f603 63fc    	addw	r3, r3, #0xefc
  2f3a84: 2406         	movs	r4, #0x6
  2f3a86: 461d         	mov	r5, r3
  2f3a88: e004         	b	0x2f3a94 <AvatarRenderer::AvatarRenderer()+0x2d0> @ imm = #0x8
  2f3a8a: 4628         	mov	r0, r5
  2f3a8c: f29f fc0a    	bl	0x5932a4 <cocos2d::CCRect::CCRect()> @ imm = #0x29f814
  2f3a90: 3510         	adds	r5, #0x10
  2f3a92: 3c01         	subs	r4, #0x1
  2f3a94: f1b4 3fff    	cmp.w	r4, #0xffffffff
  2f3a98: d1f7         	bne	0x2f3a8a <AvatarRenderer::AvatarRenderer()+0x2c6> @ imm = #-0x12
  2f3a9a: 9b01         	ldr	r3, [sp, #0x4]
  2f3a9c: e005         	b	0x2f3aaa <AvatarRenderer::AvatarRenderer()+0x2e6> @ imm = #0xa
  2f3a9e: 9b01         	ldr	r3, [sp, #0x4]
  2f3aa0: 4618         	mov	r0, r3
  2f3aa2: f29b fecf    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x29bd9e
  2f3aa6: f094 f301    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x494602
  2f3aaa: 4618         	mov	r0, r3
  2f3aac: b003         	add	sp, #0xc
  2f3aae: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x2f3aaf); words below are literal-pool data ---
  2f3ab0: f23c 0063    	<unknown>
  2f3ab4: d8ec         	bhi	0x2f3a90 <AvatarRenderer::AvatarRenderer()+0x2cc> @ imm = #-0x28
  2f3ab6: ffff b538    	vsli.32	d27, d24, #0x1f

// ==== AvatarRenderer::sharedAvatarRenderer
//      file offset 0x2f3ab8 (= ELF address; Ghidra 0x303ab8), 84 bytes, Thumb-2
  2f3ab8: b538         	push	{r3, r4, r5, lr}
  2f3aba: 4c12         	ldr	r4, [pc, #0x48]         @ 0x2f3b04 <AvatarRenderer::sharedAvatarRenderer()+0x4c>
  2f3abc: 447c         	add	r4, pc
  2f3abe: 4b12         	ldr	r3, [pc, #0x48]         @ 0x2f3b08 <AvatarRenderer::sharedAvatarRenderer()+0x50>
  2f3ac0: 58e3         	ldr	r3, [r4, r3]
  2f3ac2: 681b         	ldr	r3, [r3]
  2f3ac4: 2b00         	cmp	r3, #0x0
  2f3ac6: d111         	bne	0x2f3aec <AvatarRenderer::sharedAvatarRenderer()+0x34> @ imm = #0x22
  2f3ac8: f640 706c    	movw	r0, #0xf6c
  2f3acc: f093 f74a    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x493e94
  2f3ad0: 4603         	mov	r3, r0
  2f3ad2: 461d         	mov	r5, r3
  2f3ad4: 4628         	mov	r0, r5
  2f3ad6: f7ff fe75    	bl	0x2f37c4 <AvatarRenderer::AvatarRenderer()> @ imm = #-0x316
  2f3ada: 4b0b         	ldr	r3, [pc, #0x2c]         @ 0x2f3b08 <AvatarRenderer::sharedAvatarRenderer()+0x50>
  2f3adc: 58e3         	ldr	r3, [r4, r3]
  2f3ade: 601d         	str	r5, [r3]
  2f3ae0: 4b09         	ldr	r3, [pc, #0x24]         @ 0x2f3b08 <AvatarRenderer::sharedAvatarRenderer()+0x50>
  2f3ae2: 58e3         	ldr	r3, [r4, r3]
  2f3ae4: 681b         	ldr	r3, [r3]
  2f3ae6: 4618         	mov	r0, r3
  2f3ae8: f000 f810    	bl	0x2f3b0c <AvatarRenderer::initRenderer()> @ imm = #0x20
  2f3aec: 4b06         	ldr	r3, [pc, #0x18]         @ 0x2f3b08 <AvatarRenderer::sharedAvatarRenderer()+0x50>
  2f3aee: 58e3         	ldr	r3, [r4, r3]
  2f3af0: 681b         	ldr	r3, [r3]
  2f3af2: e004         	b	0x2f3afe <AvatarRenderer::sharedAvatarRenderer()+0x46> @ imm = #0x8
  2f3af4: 4628         	mov	r0, r5
  2f3af6: f094 f2d5    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4945aa
  2f3afa: f094 f2d7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4945ae
  2f3afe: 4618         	mov	r0, r3
  2f3b00: bd38         	pop	{r3, r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x2f3b01); words below are literal-pool data ---
  2f3b02: bf00         	nop
  2f3b04: ef4c 0063    	<unknown>
  2f3b08: d8f0         	bhi	0x2f3aec <AvatarRenderer::sharedAvatarRenderer()+0x34> @ imm = #-0x20
  2f3b0a: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== AvatarRenderer::initRenderer
//      file offset 0x2f3b0c (= ELF address; Ghidra 0x303b0c), 9904 bytes, Thumb-2
  2f3b0c: b510         	push	{r4, lr}
  2f3b0e: b088         	sub	sp, #0x20
  2f3b10: 9003         	str	r0, [sp, #0xc]
  2f3b12: 9b03         	ldr	r3, [sp, #0xc]
  2f3b14: f503 743d    	add.w	r4, r3, #0x2f4
  2f3b18: f8df 3b98    	ldr.w	r3, [pc, #0xb98]        @ 0x2f46b4 <AvatarRenderer::initRenderer()+0xba8>
  2f3b1c: 447b         	add	r3, pc
  2f3b1e: 4618         	mov	r0, r3
  2f3b20: f2e4 fbf0    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e47e0
  2f3b24: 4603         	mov	r3, r0
  2f3b26: 4618         	mov	r0, r3
  2f3b28: f7e9 f8d8    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x16e50
  2f3b2c: 4603         	mov	r3, r0
  2f3b2e: 4620         	mov	r0, r4
  2f3b30: 4619         	mov	r1, r3
  2f3b32: f29f fc0f    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29f81e
  2f3b36: 9b03         	ldr	r3, [sp, #0xc]
  2f3b38: f503 7441    	add.w	r4, r3, #0x304
  2f3b3c: f8df 3b78    	ldr.w	r3, [pc, #0xb78]        @ 0x2f46b8 <AvatarRenderer::initRenderer()+0xbac>
  2f3b40: 447b         	add	r3, pc
  2f3b42: 4618         	mov	r0, r3
  2f3b44: f2e4 fbde    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e47bc
  2f3b48: 4603         	mov	r3, r0
  2f3b4a: 4618         	mov	r0, r3
  2f3b4c: f7e9 f8c6    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x16e74
  2f3b50: 4603         	mov	r3, r0
  2f3b52: 4620         	mov	r0, r4
  2f3b54: 4619         	mov	r1, r3
  2f3b56: f29f fbfd    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29f7fa
  2f3b5a: 9b03         	ldr	r3, [sp, #0xc]
  2f3b5c: f503 7445    	add.w	r4, r3, #0x314
  2f3b60: f8df 3b58    	ldr.w	r3, [pc, #0xb58]        @ 0x2f46bc <AvatarRenderer::initRenderer()+0xbb0>
  2f3b64: 447b         	add	r3, pc
  2f3b66: 4618         	mov	r0, r3
  2f3b68: f2e4 fbcc    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e4798
  2f3b6c: 4603         	mov	r3, r0
  2f3b6e: 4618         	mov	r0, r3
  2f3b70: f7e9 f8b4    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x16e98
  2f3b74: 4603         	mov	r3, r0
  2f3b76: 4620         	mov	r0, r4
  2f3b78: 4619         	mov	r1, r3
  2f3b7a: f29f fbeb    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29f7d6
  2f3b7e: 9b03         	ldr	r3, [sp, #0xc]
  2f3b80: f503 7449    	add.w	r4, r3, #0x324
  2f3b84: f8df 3b38    	ldr.w	r3, [pc, #0xb38]        @ 0x2f46c0 <AvatarRenderer::initRenderer()+0xbb4>
  2f3b88: 447b         	add	r3, pc
  2f3b8a: 4618         	mov	r0, r3
  2f3b8c: f2e4 fbba    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e4774
  2f3b90: 4603         	mov	r3, r0
  2f3b92: 4618         	mov	r0, r3
  2f3b94: f7e9 f8a2    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x16ebc
  2f3b98: 4603         	mov	r3, r0
  2f3b9a: 4620         	mov	r0, r4
  2f3b9c: 4619         	mov	r1, r3
  2f3b9e: f29f fbd9    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29f7b2
  2f3ba2: 9b03         	ldr	r3, [sp, #0xc]
  2f3ba4: f503 744d    	add.w	r4, r3, #0x334
  2f3ba8: f8df 3b18    	ldr.w	r3, [pc, #0xb18]        @ 0x2f46c4 <AvatarRenderer::initRenderer()+0xbb8>
  2f3bac: 447b         	add	r3, pc
  2f3bae: 4618         	mov	r0, r3
  2f3bb0: f2e4 fba8    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e4750
  2f3bb4: 4603         	mov	r3, r0
  2f3bb6: 4618         	mov	r0, r3
  2f3bb8: f7e9 f890    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x16ee0
  2f3bbc: 4603         	mov	r3, r0
  2f3bbe: 4620         	mov	r0, r4
  2f3bc0: 4619         	mov	r1, r3
  2f3bc2: f29f fbc7    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29f78e
  2f3bc6: 9b03         	ldr	r3, [sp, #0xc]
  2f3bc8: f503 7451    	add.w	r4, r3, #0x344
  2f3bcc: f8df 3af8    	ldr.w	r3, [pc, #0xaf8]        @ 0x2f46c8 <AvatarRenderer::initRenderer()+0xbbc>
  2f3bd0: 447b         	add	r3, pc
  2f3bd2: 4618         	mov	r0, r3
  2f3bd4: f2e4 fb96    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e472c
  2f3bd8: 4603         	mov	r3, r0
  2f3bda: 4618         	mov	r0, r3
  2f3bdc: f7e9 f87e    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x16f04
  2f3be0: 4603         	mov	r3, r0
  2f3be2: 4620         	mov	r0, r4
  2f3be4: 4619         	mov	r1, r3
  2f3be6: f29f fbb5    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29f76a
  2f3bea: 9b03         	ldr	r3, [sp, #0xc]
  2f3bec: f503 7455    	add.w	r4, r3, #0x354
  2f3bf0: f8df 3ad8    	ldr.w	r3, [pc, #0xad8]        @ 0x2f46cc <AvatarRenderer::initRenderer()+0xbc0>
  2f3bf4: 447b         	add	r3, pc
  2f3bf6: 4618         	mov	r0, r3
  2f3bf8: f2e4 fb84    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e4708
  2f3bfc: 4603         	mov	r3, r0
  2f3bfe: 4618         	mov	r0, r3
  2f3c00: f7e9 f86c    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x16f28
  2f3c04: 4603         	mov	r3, r0
  2f3c06: 4620         	mov	r0, r4
  2f3c08: 4619         	mov	r1, r3
  2f3c0a: f29f fba3    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29f746
  2f3c0e: 9c03         	ldr	r4, [sp, #0xc]
  2f3c10: 20d7         	movs	r0, #0xd7
  2f3c12: 21c8         	movs	r1, #0xc8
  2f3c14: 22b4         	movs	r2, #0xb4
  2f3c16: f7fe fed9    	bl	0x2f29cc <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x170> @ imm = #-0x124e
  2f3c1a: 4603         	mov	r3, r0
  2f3c1c: 461a         	mov	r2, r3
  2f3c1e: f884 290f    	strb.w	r2, [r4, #0x90f]
  2f3c22: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  2f3c26: f884 2910    	strb.w	r2, [r4, #0x910]
  2f3c2a: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  2f3c2e: f884 3911    	strb.w	r3, [r4, #0x911]
  2f3c32: 9c03         	ldr	r4, [sp, #0xc]
  2f3c34: 20d4         	movs	r0, #0xd4
  2f3c36: 21ac         	movs	r1, #0xac
  2f3c38: 229a         	movs	r2, #0x9a
  2f3c3a: f7fe fec7    	bl	0x2f29cc <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x170> @ imm = #-0x1272
  2f3c3e: 4603         	mov	r3, r0
  2f3c40: 461a         	mov	r2, r3
  2f3c42: f884 2912    	strb.w	r2, [r4, #0x912]
  2f3c46: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  2f3c4a: f884 2913    	strb.w	r2, [r4, #0x913]
  2f3c4e: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  2f3c52: f884 3914    	strb.w	r3, [r4, #0x914]
  2f3c56: 9c03         	ldr	r4, [sp, #0xc]
  2f3c58: 20b4         	movs	r0, #0xb4
  2f3c5a: 2196         	movs	r1, #0x96
  2f3c5c: 2282         	movs	r2, #0x82
  2f3c5e: f7fe feb5    	bl	0x2f29cc <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x170> @ imm = #-0x1296
  2f3c62: 4603         	mov	r3, r0
  2f3c64: 461a         	mov	r2, r3
  2f3c66: f884 2915    	strb.w	r2, [r4, #0x915]
  2f3c6a: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  2f3c6e: f884 2916    	strb.w	r2, [r4, #0x916]
  2f3c72: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  2f3c76: f884 3917    	strb.w	r3, [r4, #0x917]
  2f3c7a: 9c03         	ldr	r4, [sp, #0xc]
  2f3c7c: 2058         	movs	r0, #0x58
  2f3c7e: 2148         	movs	r1, #0x48
  2f3c80: 223a         	movs	r2, #0x3a
  2f3c82: f7fe fea3    	bl	0x2f29cc <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x170> @ imm = #-0x12ba
  2f3c86: 4603         	mov	r3, r0
  2f3c88: 461a         	mov	r2, r3
  2f3c8a: f884 2918    	strb.w	r2, [r4, #0x918]
  2f3c8e: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  2f3c92: f884 2919    	strb.w	r2, [r4, #0x919]
  2f3c96: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  2f3c9a: f884 391a    	strb.w	r3, [r4, #0x91a]
  2f3c9e: 9c03         	ldr	r4, [sp, #0xc]
  2f3ca0: 200a         	movs	r0, #0xa
  2f3ca2: 210a         	movs	r1, #0xa
  2f3ca4: 220a         	movs	r2, #0xa
  2f3ca6: f7fe fe91    	bl	0x2f29cc <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x170> @ imm = #-0x12de
  2f3caa: 4603         	mov	r3, r0
  2f3cac: 461a         	mov	r2, r3
  2f3cae: f884 28f4    	strb.w	r2, [r4, #0x8f4]
  2f3cb2: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  2f3cb6: f884 28f5    	strb.w	r2, [r4, #0x8f5]
  2f3cba: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  2f3cbe: f884 38f6    	strb.w	r3, [r4, #0x8f6]
  2f3cc2: 9c03         	ldr	r4, [sp, #0xc]
  2f3cc4: 2033         	movs	r0, #0x33
  2f3cc6: 2133         	movs	r1, #0x33
  2f3cc8: 2233         	movs	r2, #0x33
  2f3cca: f7fe fe7f    	bl	0x2f29cc <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x170> @ imm = #-0x1302
  2f3cce: 4603         	mov	r3, r0
  2f3cd0: 461a         	mov	r2, r3
  2f3cd2: f884 28f7    	strb.w	r2, [r4, #0x8f7]
  2f3cd6: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  2f3cda: f884 28f8    	strb.w	r2, [r4, #0x8f8]
  2f3cde: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  2f3ce2: f884 38f9    	strb.w	r3, [r4, #0x8f9]
  2f3ce6: 9c03         	ldr	r4, [sp, #0xc]
  2f3ce8: 2049         	movs	r0, #0x49
  2f3cea: 2136         	movs	r1, #0x36
  2f3cec: 2225         	movs	r2, #0x25
  2f3cee: f7fe fe6d    	bl	0x2f29cc <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x170> @ imm = #-0x1326
  2f3cf2: 4603         	mov	r3, r0
  2f3cf4: 461a         	mov	r2, r3
  2f3cf6: f884 28fa    	strb.w	r2, [r4, #0x8fa]
  2f3cfa: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  2f3cfe: f884 28fb    	strb.w	r2, [r4, #0x8fb]
  2f3d02: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  2f3d06: f884 38fc    	strb.w	r3, [r4, #0x8fc]
  2f3d0a: 9c03         	ldr	r4, [sp, #0xc]
  2f3d0c: 2068         	movs	r0, #0x68
  2f3d0e: 2142         	movs	r1, #0x42
  2f3d10: 222d         	movs	r2, #0x2d
  2f3d12: f7fe fe5b    	bl	0x2f29cc <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x170> @ imm = #-0x134a
  2f3d16: 4603         	mov	r3, r0
  2f3d18: 461a         	mov	r2, r3
  2f3d1a: f884 28fd    	strb.w	r2, [r4, #0x8fd]
  2f3d1e: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  2f3d22: f884 28fe    	strb.w	r2, [r4, #0x8fe]
  2f3d26: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  2f3d2a: f884 38ff    	strb.w	r3, [r4, #0x8ff]
  2f3d2e: 9c03         	ldr	r4, [sp, #0xc]
  2f3d30: 2080         	movs	r0, #0x80
  2f3d32: 2158         	movs	r1, #0x58
  2f3d34: 2239         	movs	r2, #0x39
  2f3d36: f7fe fe49    	bl	0x2f29cc <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x170> @ imm = #-0x136e
  2f3d3a: 4603         	mov	r3, r0
  2f3d3c: 461a         	mov	r2, r3
  2f3d3e: f884 2900    	strb.w	r2, [r4, #0x900]
  2f3d42: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  2f3d46: f884 2901    	strb.w	r2, [r4, #0x901]
  2f3d4a: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  2f3d4e: f884 3902    	strb.w	r3, [r4, #0x902]
  2f3d52: 9c03         	ldr	r4, [sp, #0xc]
  2f3d54: 205c         	movs	r0, #0x5c
  2f3d56: 214b         	movs	r1, #0x4b
  2f3d58: 2232         	movs	r2, #0x32
  2f3d5a: f7fe fe37    	bl	0x2f29cc <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x170> @ imm = #-0x1392
  2f3d5e: 4603         	mov	r3, r0
  2f3d60: 461a         	mov	r2, r3
  2f3d62: f884 2903    	strb.w	r2, [r4, #0x903]
  2f3d66: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  2f3d6a: f884 2904    	strb.w	r2, [r4, #0x904]
  2f3d6e: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  2f3d72: f884 3905    	strb.w	r3, [r4, #0x905]
  2f3d76: 9c03         	ldr	r4, [sp, #0xc]
  2f3d78: 208f         	movs	r0, #0x8f
  2f3d7a: 2172         	movs	r1, #0x72
  2f3d7c: 2240         	movs	r2, #0x40
  2f3d7e: f7fe fe25    	bl	0x2f29cc <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x170> @ imm = #-0x13b6
  2f3d82: 4603         	mov	r3, r0
  2f3d84: 461a         	mov	r2, r3
  2f3d86: f884 2906    	strb.w	r2, [r4, #0x906]
  2f3d8a: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  2f3d8e: f884 2907    	strb.w	r2, [r4, #0x907]
  2f3d92: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  2f3d96: f884 3908    	strb.w	r3, [r4, #0x908]
  2f3d9a: 9c03         	ldr	r4, [sp, #0xc]
  2f3d9c: 20c9         	movs	r0, #0xc9
  2f3d9e: 21af         	movs	r1, #0xaf
  2f3da0: 227c         	movs	r2, #0x7c
  2f3da2: f7fe fe13    	bl	0x2f29cc <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x170> @ imm = #-0x13da
  2f3da6: 4603         	mov	r3, r0
  2f3da8: 461a         	mov	r2, r3
  2f3daa: f884 2909    	strb.w	r2, [r4, #0x909]
  2f3dae: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  2f3db2: f884 290a    	strb.w	r2, [r4, #0x90a]
  2f3db6: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  2f3dba: f884 390b    	strb.w	r3, [r4, #0x90b]
  2f3dbe: 9c03         	ldr	r4, [sp, #0xc]
  2f3dc0: 208e         	movs	r0, #0x8e
  2f3dc2: 218e         	movs	r1, #0x8e
  2f3dc4: 228e         	movs	r2, #0x8e
  2f3dc6: f7fe fe01    	bl	0x2f29cc <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x170> @ imm = #-0x13fe
  2f3dca: 4603         	mov	r3, r0
  2f3dcc: 461a         	mov	r2, r3
  2f3dce: f884 290c    	strb.w	r2, [r4, #0x90c]
  2f3dd2: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  2f3dd6: f884 290d    	strb.w	r2, [r4, #0x90d]
  2f3dda: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  2f3dde: f884 390e    	strb.w	r3, [r4, #0x90e]
  2f3de2: 9b03         	ldr	r3, [sp, #0xc]
  2f3de4: f103 04e4    	add.w	r4, r3, #0xe4
  2f3de8: f8df 38e4    	ldr.w	r3, [pc, #0x8e4]        @ 0x2f46d0 <AvatarRenderer::initRenderer()+0xbc4>
  2f3dec: 447b         	add	r3, pc
  2f3dee: 4618         	mov	r0, r3
  2f3df0: f2e4 fa88    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e4510
  2f3df4: 4603         	mov	r3, r0
  2f3df6: 4618         	mov	r0, r3
  2f3df8: f7e8 ff70    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17120
  2f3dfc: 4603         	mov	r3, r0
  2f3dfe: 4620         	mov	r0, r4
  2f3e00: 4619         	mov	r1, r3
  2f3e02: f29f faa7    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29f54e
  2f3e06: 9b03         	ldr	r3, [sp, #0xc]
  2f3e08: f103 04f4    	add.w	r4, r3, #0xf4
  2f3e0c: f8df 38c4    	ldr.w	r3, [pc, #0x8c4]        @ 0x2f46d4 <AvatarRenderer::initRenderer()+0xbc8>
  2f3e10: 447b         	add	r3, pc
  2f3e12: 4618         	mov	r0, r3
  2f3e14: f2e4 fa76    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e44ec
  2f3e18: 4603         	mov	r3, r0
  2f3e1a: 4618         	mov	r0, r3
  2f3e1c: f7e8 ff5e    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17144
  2f3e20: 4603         	mov	r3, r0
  2f3e22: 4620         	mov	r0, r4
  2f3e24: 4619         	mov	r1, r3
  2f3e26: f29f fa95    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29f52a
  2f3e2a: 9b03         	ldr	r3, [sp, #0xc]
  2f3e2c: f503 7482    	add.w	r4, r3, #0x104
  2f3e30: f8df 38a4    	ldr.w	r3, [pc, #0x8a4]        @ 0x2f46d8 <AvatarRenderer::initRenderer()+0xbcc>
  2f3e34: 447b         	add	r3, pc
  2f3e36: 4618         	mov	r0, r3
  2f3e38: f2e4 fa64    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e44c8
  2f3e3c: 4603         	mov	r3, r0
  2f3e3e: 4618         	mov	r0, r3
  2f3e40: f7e8 ff4c    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17168
  2f3e44: 4603         	mov	r3, r0
  2f3e46: 4620         	mov	r0, r4
  2f3e48: 4619         	mov	r1, r3
  2f3e4a: f29f fa83    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29f506
  2f3e4e: 9b03         	ldr	r3, [sp, #0xc]
  2f3e50: f503 748a    	add.w	r4, r3, #0x114
  2f3e54: f8df 3884    	ldr.w	r3, [pc, #0x884]        @ 0x2f46dc <AvatarRenderer::initRenderer()+0xbd0>
  2f3e58: 447b         	add	r3, pc
  2f3e5a: 4618         	mov	r0, r3
  2f3e5c: f2e4 fa52    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e44a4
  2f3e60: 4603         	mov	r3, r0
  2f3e62: 4618         	mov	r0, r3
  2f3e64: f7e8 ff3a    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x1718c
  2f3e68: 4603         	mov	r3, r0
  2f3e6a: 4620         	mov	r0, r4
  2f3e6c: 4619         	mov	r1, r3
  2f3e6e: f29f fa71    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29f4e2
  2f3e72: 9b03         	ldr	r3, [sp, #0xc]
  2f3e74: f503 7492    	add.w	r4, r3, #0x124
  2f3e78: f8df 3864    	ldr.w	r3, [pc, #0x864]        @ 0x2f46e0 <AvatarRenderer::initRenderer()+0xbd4>
  2f3e7c: 447b         	add	r3, pc
  2f3e7e: 4618         	mov	r0, r3
  2f3e80: f2e4 fa40    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e4480
  2f3e84: 4603         	mov	r3, r0
  2f3e86: 4618         	mov	r0, r3
  2f3e88: f7e8 ff28    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x171b0
  2f3e8c: 4603         	mov	r3, r0
  2f3e8e: 4620         	mov	r0, r4
  2f3e90: 4619         	mov	r1, r3
  2f3e92: f29f fa5f    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29f4be
  2f3e96: 9b03         	ldr	r3, [sp, #0xc]
  2f3e98: f503 749a    	add.w	r4, r3, #0x134
  2f3e9c: f8df 3844    	ldr.w	r3, [pc, #0x844]        @ 0x2f46e4 <AvatarRenderer::initRenderer()+0xbd8>
  2f3ea0: 447b         	add	r3, pc
  2f3ea2: 4618         	mov	r0, r3
  2f3ea4: f2e4 fa2e    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e445c
  2f3ea8: 4603         	mov	r3, r0
  2f3eaa: 4618         	mov	r0, r3
  2f3eac: f7e8 ff16    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x171d4
  2f3eb0: 4603         	mov	r3, r0
  2f3eb2: 4620         	mov	r0, r4
  2f3eb4: 4619         	mov	r1, r3
  2f3eb6: f29f fa4d    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29f49a
  2f3eba: 9b03         	ldr	r3, [sp, #0xc]
  2f3ebc: f503 74a2    	add.w	r4, r3, #0x144
  2f3ec0: f8df 3824    	ldr.w	r3, [pc, #0x824]        @ 0x2f46e8 <AvatarRenderer::initRenderer()+0xbdc>
  2f3ec4: 447b         	add	r3, pc
  2f3ec6: 4618         	mov	r0, r3
  2f3ec8: f2e4 fa1c    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e4438
  2f3ecc: 4603         	mov	r3, r0
  2f3ece: 4618         	mov	r0, r3
  2f3ed0: f7e8 ff04    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x171f8
  2f3ed4: 4603         	mov	r3, r0
  2f3ed6: 4620         	mov	r0, r4
  2f3ed8: 4619         	mov	r1, r3
  2f3eda: f29f fa3b    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29f476
  2f3ede: 9b03         	ldr	r3, [sp, #0xc]
  2f3ee0: f503 74aa    	add.w	r4, r3, #0x154
  2f3ee4: f8df 3804    	ldr.w	r3, [pc, #0x804]        @ 0x2f46ec <AvatarRenderer::initRenderer()+0xbe0>
  2f3ee8: 447b         	add	r3, pc
  2f3eea: 4618         	mov	r0, r3
  2f3eec: f2e4 fa0a    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e4414
  2f3ef0: 4603         	mov	r3, r0
  2f3ef2: 4618         	mov	r0, r3
  2f3ef4: f7e8 fef2    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x1721c
  2f3ef8: 4603         	mov	r3, r0
  2f3efa: 4620         	mov	r0, r4
  2f3efc: 4619         	mov	r1, r3
  2f3efe: f29f fa29    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29f452
  2f3f02: 9b03         	ldr	r3, [sp, #0xc]
  2f3f04: f503 74b2    	add.w	r4, r3, #0x164
  2f3f08: f8df 37e4    	ldr.w	r3, [pc, #0x7e4]        @ 0x2f46f0 <AvatarRenderer::initRenderer()+0xbe4>
  2f3f0c: 447b         	add	r3, pc
  2f3f0e: 4618         	mov	r0, r3
  2f3f10: f2e4 f9f8    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e43f0
  2f3f14: 4603         	mov	r3, r0
  2f3f16: 4618         	mov	r0, r3
  2f3f18: f7e8 fee0    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17240
  2f3f1c: 4603         	mov	r3, r0
  2f3f1e: 4620         	mov	r0, r4
  2f3f20: 4619         	mov	r1, r3
  2f3f22: f29f fa17    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29f42e
  2f3f26: 9b03         	ldr	r3, [sp, #0xc]
  2f3f28: f503 74ba    	add.w	r4, r3, #0x174
  2f3f2c: f8df 37c4    	ldr.w	r3, [pc, #0x7c4]        @ 0x2f46f4 <AvatarRenderer::initRenderer()+0xbe8>
  2f3f30: 447b         	add	r3, pc
  2f3f32: 4618         	mov	r0, r3
  2f3f34: f2e4 f9e6    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e43cc
  2f3f38: 4603         	mov	r3, r0
  2f3f3a: 4618         	mov	r0, r3
  2f3f3c: f7e8 fece    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17264
  2f3f40: 4603         	mov	r3, r0
  2f3f42: 4620         	mov	r0, r4
  2f3f44: 4619         	mov	r1, r3
  2f3f46: f29f fa05    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29f40a
  2f3f4a: 9b03         	ldr	r3, [sp, #0xc]
  2f3f4c: f503 74c2    	add.w	r4, r3, #0x184
  2f3f50: f8df 37a4    	ldr.w	r3, [pc, #0x7a4]        @ 0x2f46f8 <AvatarRenderer::initRenderer()+0xbec>
  2f3f54: 447b         	add	r3, pc
  2f3f56: 4618         	mov	r0, r3
  2f3f58: f2e4 f9d4    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e43a8
  2f3f5c: 4603         	mov	r3, r0
  2f3f5e: 4618         	mov	r0, r3
  2f3f60: f7e8 febc    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17288
  2f3f64: 4603         	mov	r3, r0
  2f3f66: 4620         	mov	r0, r4
  2f3f68: 4619         	mov	r1, r3
  2f3f6a: f29f f9f3    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29f3e6
  2f3f6e: 9b03         	ldr	r3, [sp, #0xc]
  2f3f70: f503 74ca    	add.w	r4, r3, #0x194
  2f3f74: f8df 3784    	ldr.w	r3, [pc, #0x784]        @ 0x2f46fc <AvatarRenderer::initRenderer()+0xbf0>
  2f3f78: 447b         	add	r3, pc
  2f3f7a: 4618         	mov	r0, r3
  2f3f7c: f2e4 f9c2    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e4384
  2f3f80: 4603         	mov	r3, r0
  2f3f82: 4618         	mov	r0, r3
  2f3f84: f7e8 feaa    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x172ac
  2f3f88: 4603         	mov	r3, r0
  2f3f8a: 4620         	mov	r0, r4
  2f3f8c: 4619         	mov	r1, r3
  2f3f8e: f29f f9e1    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29f3c2
  2f3f92: 9b03         	ldr	r3, [sp, #0xc]
  2f3f94: f503 74d2    	add.w	r4, r3, #0x1a4
  2f3f98: f8df 3764    	ldr.w	r3, [pc, #0x764]        @ 0x2f4700 <AvatarRenderer::initRenderer()+0xbf4>
  2f3f9c: 447b         	add	r3, pc
  2f3f9e: 4618         	mov	r0, r3
  2f3fa0: f2e4 f9b0    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e4360
  2f3fa4: 4603         	mov	r3, r0
  2f3fa6: 4618         	mov	r0, r3
  2f3fa8: f7e8 fe98    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x172d0
  2f3fac: 4603         	mov	r3, r0
  2f3fae: 4620         	mov	r0, r4
  2f3fb0: 4619         	mov	r1, r3
  2f3fb2: f29f f9cf    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29f39e
  2f3fb6: 9b03         	ldr	r3, [sp, #0xc]
  2f3fb8: f503 74da    	add.w	r4, r3, #0x1b4
  2f3fbc: f8df 3744    	ldr.w	r3, [pc, #0x744]        @ 0x2f4704 <AvatarRenderer::initRenderer()+0xbf8>
  2f3fc0: 447b         	add	r3, pc
  2f3fc2: 4618         	mov	r0, r3
  2f3fc4: f2e4 f99e    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e433c
  2f3fc8: 4603         	mov	r3, r0
  2f3fca: 4618         	mov	r0, r3
  2f3fcc: f7e8 fe86    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x172f4
  2f3fd0: 4603         	mov	r3, r0
  2f3fd2: 4620         	mov	r0, r4
  2f3fd4: 4619         	mov	r1, r3
  2f3fd6: f29f f9bd    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29f37a
  2f3fda: 9b03         	ldr	r3, [sp, #0xc]
  2f3fdc: f503 74e2    	add.w	r4, r3, #0x1c4
  2f3fe0: f8df 3724    	ldr.w	r3, [pc, #0x724]        @ 0x2f4708 <AvatarRenderer::initRenderer()+0xbfc>
  2f3fe4: 447b         	add	r3, pc
  2f3fe6: 4618         	mov	r0, r3
  2f3fe8: f2e4 f98c    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e4318
  2f3fec: 4603         	mov	r3, r0
  2f3fee: 4618         	mov	r0, r3
  2f3ff0: f7e8 fe74    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17318
  2f3ff4: 4603         	mov	r3, r0
  2f3ff6: 4620         	mov	r0, r4
  2f3ff8: 4619         	mov	r1, r3
  2f3ffa: f29f f9ab    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29f356
  2f3ffe: 9b03         	ldr	r3, [sp, #0xc]
  2f4000: f503 74ea    	add.w	r4, r3, #0x1d4
  2f4004: f8df 3704    	ldr.w	r3, [pc, #0x704]        @ 0x2f470c <AvatarRenderer::initRenderer()+0xc00>
  2f4008: 447b         	add	r3, pc
  2f400a: 4618         	mov	r0, r3
  2f400c: f2e4 f97a    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e42f4
  2f4010: 4603         	mov	r3, r0
  2f4012: 4618         	mov	r0, r3
  2f4014: f7e8 fe62    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x1733c
  2f4018: 4603         	mov	r3, r0
  2f401a: 4620         	mov	r0, r4
  2f401c: 4619         	mov	r1, r3
  2f401e: f29f f999    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29f332
  2f4022: 9b03         	ldr	r3, [sp, #0xc]
  2f4024: f503 74f2    	add.w	r4, r3, #0x1e4
  2f4028: f8df 36e4    	ldr.w	r3, [pc, #0x6e4]        @ 0x2f4710 <AvatarRenderer::initRenderer()+0xc04>
  2f402c: 447b         	add	r3, pc
  2f402e: 4618         	mov	r0, r3
  2f4030: f2e4 f968    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e42d0
  2f4034: 4603         	mov	r3, r0
  2f4036: 4618         	mov	r0, r3
  2f4038: f7e8 fe50    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17360
  2f403c: 4603         	mov	r3, r0
  2f403e: 4620         	mov	r0, r4
  2f4040: 4619         	mov	r1, r3
  2f4042: f29f f987    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29f30e
  2f4046: 9b03         	ldr	r3, [sp, #0xc]
  2f4048: f503 74fa    	add.w	r4, r3, #0x1f4
  2f404c: f8df 36c4    	ldr.w	r3, [pc, #0x6c4]        @ 0x2f4714 <AvatarRenderer::initRenderer()+0xc08>
  2f4050: 447b         	add	r3, pc
  2f4052: 4618         	mov	r0, r3
  2f4054: f2e4 f956    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e42ac
  2f4058: 4603         	mov	r3, r0
  2f405a: 4618         	mov	r0, r3
  2f405c: f7e8 fe3e    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17384
  2f4060: 4603         	mov	r3, r0
  2f4062: 4620         	mov	r0, r4
  2f4064: 4619         	mov	r1, r3
  2f4066: f29f f975    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29f2ea
  2f406a: 9b03         	ldr	r3, [sp, #0xc]
  2f406c: f503 7401    	add.w	r4, r3, #0x204
  2f4070: f8df 36a4    	ldr.w	r3, [pc, #0x6a4]        @ 0x2f4718 <AvatarRenderer::initRenderer()+0xc0c>
  2f4074: 447b         	add	r3, pc
  2f4076: 4618         	mov	r0, r3
  2f4078: f2e4 f944    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e4288
  2f407c: 4603         	mov	r3, r0
  2f407e: 4618         	mov	r0, r3
  2f4080: f7e8 fe2c    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x173a8
  2f4084: 4603         	mov	r3, r0
  2f4086: 4620         	mov	r0, r4
  2f4088: 4619         	mov	r1, r3
  2f408a: f29f f963    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29f2c6
  2f408e: 9b03         	ldr	r3, [sp, #0xc]
  2f4090: f503 7405    	add.w	r4, r3, #0x214
  2f4094: f8df 3684    	ldr.w	r3, [pc, #0x684]        @ 0x2f471c <AvatarRenderer::initRenderer()+0xc10>
  2f4098: 447b         	add	r3, pc
  2f409a: 4618         	mov	r0, r3
  2f409c: f2e4 f932    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e4264
  2f40a0: 4603         	mov	r3, r0
  2f40a2: 4618         	mov	r0, r3
  2f40a4: f7e8 fe1a    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x173cc
  2f40a8: 4603         	mov	r3, r0
  2f40aa: 4620         	mov	r0, r4
  2f40ac: 4619         	mov	r1, r3
  2f40ae: f29f f951    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29f2a2
  2f40b2: 9b03         	ldr	r3, [sp, #0xc]
  2f40b4: f503 7409    	add.w	r4, r3, #0x224
  2f40b8: f8df 3664    	ldr.w	r3, [pc, #0x664]        @ 0x2f4720 <AvatarRenderer::initRenderer()+0xc14>
  2f40bc: 447b         	add	r3, pc
  2f40be: 4618         	mov	r0, r3
  2f40c0: f2e4 f920    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e4240
  2f40c4: 4603         	mov	r3, r0
  2f40c6: 4618         	mov	r0, r3
  2f40c8: f7e8 fe08    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x173f0
  2f40cc: 4603         	mov	r3, r0
  2f40ce: 4620         	mov	r0, r4
  2f40d0: 4619         	mov	r1, r3
  2f40d2: f29f f93f    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29f27e
  2f40d6: 9b03         	ldr	r3, [sp, #0xc]
  2f40d8: f503 740d    	add.w	r4, r3, #0x234
  2f40dc: f8df 3644    	ldr.w	r3, [pc, #0x644]        @ 0x2f4724 <AvatarRenderer::initRenderer()+0xc18>
  2f40e0: 447b         	add	r3, pc
  2f40e2: 4618         	mov	r0, r3
  2f40e4: f2e4 f90e    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e421c
  2f40e8: 4603         	mov	r3, r0
  2f40ea: 4618         	mov	r0, r3
  2f40ec: f7e8 fdf6    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17414
  2f40f0: 4603         	mov	r3, r0
  2f40f2: 4620         	mov	r0, r4
  2f40f4: 4619         	mov	r1, r3
  2f40f6: f29f f92d    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29f25a
  2f40fa: 9b03         	ldr	r3, [sp, #0xc]
  2f40fc: f503 7411    	add.w	r4, r3, #0x244
  2f4100: f8df 3624    	ldr.w	r3, [pc, #0x624]        @ 0x2f4728 <AvatarRenderer::initRenderer()+0xc1c>
  2f4104: 447b         	add	r3, pc
  2f4106: 4618         	mov	r0, r3
  2f4108: f2e4 f8fc    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e41f8
  2f410c: 4603         	mov	r3, r0
  2f410e: 4618         	mov	r0, r3
  2f4110: f7e8 fde4    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17438
  2f4114: 4603         	mov	r3, r0
  2f4116: 4620         	mov	r0, r4
  2f4118: 4619         	mov	r1, r3
  2f411a: f29f f91b    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29f236
  2f411e: 9b03         	ldr	r3, [sp, #0xc]
  2f4120: f503 7415    	add.w	r4, r3, #0x254
  2f4124: f8df 3604    	ldr.w	r3, [pc, #0x604]        @ 0x2f472c <AvatarRenderer::initRenderer()+0xc20>
  2f4128: 447b         	add	r3, pc
  2f412a: 4618         	mov	r0, r3
  2f412c: f2e4 f8ea    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e41d4
  2f4130: 4603         	mov	r3, r0
  2f4132: 4618         	mov	r0, r3
  2f4134: f7e8 fdd2    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x1745c
  2f4138: 4603         	mov	r3, r0
  2f413a: 4620         	mov	r0, r4
  2f413c: 4619         	mov	r1, r3
  2f413e: f29f f909    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29f212
  2f4142: 9b03         	ldr	r3, [sp, #0xc]
  2f4144: f503 7419    	add.w	r4, r3, #0x264
  2f4148: f8df 35e4    	ldr.w	r3, [pc, #0x5e4]        @ 0x2f4730 <AvatarRenderer::initRenderer()+0xc24>
  2f414c: 447b         	add	r3, pc
  2f414e: 4618         	mov	r0, r3
  2f4150: f2e4 f8d8    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e41b0
  2f4154: 4603         	mov	r3, r0
  2f4156: 4618         	mov	r0, r3
  2f4158: f7e8 fdc0    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17480
  2f415c: 4603         	mov	r3, r0
  2f415e: 4620         	mov	r0, r4
  2f4160: 4619         	mov	r1, r3
  2f4162: f29f f8f7    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29f1ee
  2f4166: 9b03         	ldr	r3, [sp, #0xc]
  2f4168: f503 741d    	add.w	r4, r3, #0x274
  2f416c: f8df 35c4    	ldr.w	r3, [pc, #0x5c4]        @ 0x2f4734 <AvatarRenderer::initRenderer()+0xc28>
  2f4170: 447b         	add	r3, pc
  2f4172: 4618         	mov	r0, r3
  2f4174: f2e4 f8c6    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e418c
  2f4178: 4603         	mov	r3, r0
  2f417a: 4618         	mov	r0, r3
  2f417c: f7e8 fdae    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x174a4
  2f4180: 4603         	mov	r3, r0
  2f4182: 4620         	mov	r0, r4
  2f4184: 4619         	mov	r1, r3
  2f4186: f29f f8e5    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29f1ca
  2f418a: 9b03         	ldr	r3, [sp, #0xc]
  2f418c: f503 7421    	add.w	r4, r3, #0x284
  2f4190: f8df 35a4    	ldr.w	r3, [pc, #0x5a4]        @ 0x2f4738 <AvatarRenderer::initRenderer()+0xc2c>
  2f4194: 447b         	add	r3, pc
  2f4196: 4618         	mov	r0, r3
  2f4198: f2e4 f8b4    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e4168
  2f419c: 4603         	mov	r3, r0
  2f419e: 4618         	mov	r0, r3
  2f41a0: f7e8 fd9c    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x174c8
  2f41a4: 4603         	mov	r3, r0
  2f41a6: 4620         	mov	r0, r4
  2f41a8: 4619         	mov	r1, r3
  2f41aa: f29f f8d3    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29f1a6
  2f41ae: 9b03         	ldr	r3, [sp, #0xc]
  2f41b0: f503 7425    	add.w	r4, r3, #0x294
  2f41b4: f8df 3584    	ldr.w	r3, [pc, #0x584]        @ 0x2f473c <AvatarRenderer::initRenderer()+0xc30>
  2f41b8: 447b         	add	r3, pc
  2f41ba: 4618         	mov	r0, r3
  2f41bc: f2e4 f8a2    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e4144
  2f41c0: 4603         	mov	r3, r0
  2f41c2: 4618         	mov	r0, r3
  2f41c4: f7e8 fd8a    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x174ec
  2f41c8: 4603         	mov	r3, r0
  2f41ca: 4620         	mov	r0, r4
  2f41cc: 4619         	mov	r1, r3
  2f41ce: f29f f8c1    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29f182
  2f41d2: 9b03         	ldr	r3, [sp, #0xc]
  2f41d4: f503 7429    	add.w	r4, r3, #0x2a4
  2f41d8: f8df 3564    	ldr.w	r3, [pc, #0x564]        @ 0x2f4740 <AvatarRenderer::initRenderer()+0xc34>
  2f41dc: 447b         	add	r3, pc
  2f41de: 4618         	mov	r0, r3
  2f41e0: f2e4 f890    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e4120
  2f41e4: 4603         	mov	r3, r0
  2f41e6: 4618         	mov	r0, r3
  2f41e8: f7e8 fd78    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17510
  2f41ec: 4603         	mov	r3, r0
  2f41ee: 4620         	mov	r0, r4
  2f41f0: 4619         	mov	r1, r3
  2f41f2: f29f f8af    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29f15e
  2f41f6: 9b03         	ldr	r3, [sp, #0xc]
  2f41f8: f503 742d    	add.w	r4, r3, #0x2b4
  2f41fc: f8df 3544    	ldr.w	r3, [pc, #0x544]        @ 0x2f4744 <AvatarRenderer::initRenderer()+0xc38>
  2f4200: 447b         	add	r3, pc
  2f4202: 4618         	mov	r0, r3
  2f4204: f2e4 f87e    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e40fc
  2f4208: 4603         	mov	r3, r0
  2f420a: 4618         	mov	r0, r3
  2f420c: f7e8 fd66    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17534
  2f4210: 4603         	mov	r3, r0
  2f4212: 4620         	mov	r0, r4
  2f4214: 4619         	mov	r1, r3
  2f4216: f29f f89d    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29f13a
  2f421a: 9b03         	ldr	r3, [sp, #0xc]
  2f421c: f503 7431    	add.w	r4, r3, #0x2c4
  2f4220: f8df 3524    	ldr.w	r3, [pc, #0x524]        @ 0x2f4748 <AvatarRenderer::initRenderer()+0xc3c>
  2f4224: 447b         	add	r3, pc
  2f4226: 4618         	mov	r0, r3
  2f4228: f2e4 f86c    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e40d8
  2f422c: 4603         	mov	r3, r0
  2f422e: 4618         	mov	r0, r3
  2f4230: f7e8 fd54    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17558
  2f4234: 4603         	mov	r3, r0
  2f4236: 4620         	mov	r0, r4
  2f4238: 4619         	mov	r1, r3
  2f423a: f29f f88b    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29f116
  2f423e: 9b03         	ldr	r3, [sp, #0xc]
  2f4240: f503 7435    	add.w	r4, r3, #0x2d4
  2f4244: f8df 3504    	ldr.w	r3, [pc, #0x504]        @ 0x2f474c <AvatarRenderer::initRenderer()+0xc40>
  2f4248: 447b         	add	r3, pc
  2f424a: 4618         	mov	r0, r3
  2f424c: f2e4 f85a    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e40b4
  2f4250: 4603         	mov	r3, r0
  2f4252: 4618         	mov	r0, r3
  2f4254: f7e8 fd42    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x1757c
  2f4258: 4603         	mov	r3, r0
  2f425a: 4620         	mov	r0, r4
  2f425c: 4619         	mov	r1, r3
  2f425e: f29f f879    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29f0f2
  2f4262: 9b03         	ldr	r3, [sp, #0xc]
  2f4264: f503 7439    	add.w	r4, r3, #0x2e4
  2f4268: ab04         	add	r3, sp, #0x10
  2f426a: f04f 0200    	mov.w	r2, #0x0
  2f426e: 9200         	str	r2, [sp]
  2f4270: 4618         	mov	r0, r3
  2f4272: f04f 0100    	mov.w	r1, #0x0
  2f4276: f04f 0200    	mov.w	r2, #0x0
  2f427a: f04f 0300    	mov.w	r3, #0x0
  2f427e: f29f f82f    	bl	0x5932e0 <cocos2d::CCRect::CCRect(float, float, float, float)> @ imm = #0x29f05e
  2f4282: ab04         	add	r3, sp, #0x10
  2f4284: 4620         	mov	r0, r4
  2f4286: 4619         	mov	r1, r3
  2f4288: f29f f864    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29f0c8
  2f428c: 9b03         	ldr	r3, [sp, #0xc]
  2f428e: f503 7459    	add.w	r4, r3, #0x364
  2f4292: f8df 34bc    	ldr.w	r3, [pc, #0x4bc]        @ 0x2f4750 <AvatarRenderer::initRenderer()+0xc44>
  2f4296: 447b         	add	r3, pc
  2f4298: 4618         	mov	r0, r3
  2f429a: f2e4 f833    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e4066
  2f429e: 4603         	mov	r3, r0
  2f42a0: 4618         	mov	r0, r3
  2f42a2: f7e8 fd1b    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x175ca
  2f42a6: 4603         	mov	r3, r0
  2f42a8: 4620         	mov	r0, r4
  2f42aa: 4619         	mov	r1, r3
  2f42ac: f29f f852    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29f0a4
  2f42b0: 9b03         	ldr	r3, [sp, #0xc]
  2f42b2: f503 745d    	add.w	r4, r3, #0x374
  2f42b6: f8df 349c    	ldr.w	r3, [pc, #0x49c]        @ 0x2f4754 <AvatarRenderer::initRenderer()+0xc48>
  2f42ba: 447b         	add	r3, pc
  2f42bc: 4618         	mov	r0, r3
  2f42be: f2e4 f821    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e4042
  2f42c2: 4603         	mov	r3, r0
  2f42c4: 4618         	mov	r0, r3
  2f42c6: f7e8 fd09    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x175ee
  2f42ca: 4603         	mov	r3, r0
  2f42cc: 4620         	mov	r0, r4
  2f42ce: 4619         	mov	r1, r3
  2f42d0: f29f f840    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29f080
  2f42d4: 9b03         	ldr	r3, [sp, #0xc]
  2f42d6: f503 7461    	add.w	r4, r3, #0x384
  2f42da: f8df 347c    	ldr.w	r3, [pc, #0x47c]        @ 0x2f4758 <AvatarRenderer::initRenderer()+0xc4c>
  2f42de: 447b         	add	r3, pc
  2f42e0: 4618         	mov	r0, r3
  2f42e2: f2e4 f80f    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e401e
  2f42e6: 4603         	mov	r3, r0
  2f42e8: 4618         	mov	r0, r3
  2f42ea: f7e8 fcf7    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17612
  2f42ee: 4603         	mov	r3, r0
  2f42f0: 4620         	mov	r0, r4
  2f42f2: 4619         	mov	r1, r3
  2f42f4: f29f f82e    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29f05c
  2f42f8: 9b03         	ldr	r3, [sp, #0xc]
  2f42fa: f503 7465    	add.w	r4, r3, #0x394
  2f42fe: f8df 345c    	ldr.w	r3, [pc, #0x45c]        @ 0x2f475c <AvatarRenderer::initRenderer()+0xc50>
  2f4302: 447b         	add	r3, pc
  2f4304: 4618         	mov	r0, r3
  2f4306: f2e3 fffd    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3ffa
  2f430a: 4603         	mov	r3, r0
  2f430c: 4618         	mov	r0, r3
  2f430e: f7e8 fce5    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17636
  2f4312: 4603         	mov	r3, r0
  2f4314: 4620         	mov	r0, r4
  2f4316: 4619         	mov	r1, r3
  2f4318: f29f f81c    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29f038
  2f431c: 9b03         	ldr	r3, [sp, #0xc]
  2f431e: f503 7469    	add.w	r4, r3, #0x3a4
  2f4322: f8df 343c    	ldr.w	r3, [pc, #0x43c]        @ 0x2f4760 <AvatarRenderer::initRenderer()+0xc54>
  2f4326: 447b         	add	r3, pc
  2f4328: 4618         	mov	r0, r3
  2f432a: f2e3 ffeb    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3fd6
  2f432e: 4603         	mov	r3, r0
  2f4330: 4618         	mov	r0, r3
  2f4332: f7e8 fcd3    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x1765a
  2f4336: 4603         	mov	r3, r0
  2f4338: 4620         	mov	r0, r4
  2f433a: 4619         	mov	r1, r3
  2f433c: f29f f80a    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29f014
  2f4340: 9b03         	ldr	r3, [sp, #0xc]
  2f4342: f503 746d    	add.w	r4, r3, #0x3b4
  2f4346: f8df 341c    	ldr.w	r3, [pc, #0x41c]        @ 0x2f4764 <AvatarRenderer::initRenderer()+0xc58>
  2f434a: 447b         	add	r3, pc
  2f434c: 4618         	mov	r0, r3
  2f434e: f2e3 ffd9    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3fb2
  2f4352: 4603         	mov	r3, r0
  2f4354: 4618         	mov	r0, r3
  2f4356: f7e8 fcc1    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x1767e
  2f435a: 4603         	mov	r3, r0
  2f435c: 4620         	mov	r0, r4
  2f435e: 4619         	mov	r1, r3
  2f4360: f29e fff8    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29eff0
  2f4364: 9b03         	ldr	r3, [sp, #0xc]
  2f4366: f503 7471    	add.w	r4, r3, #0x3c4
  2f436a: 4bff         	ldr	r3, [pc, #0x3fc]        @ 0x2f4768 <AvatarRenderer::initRenderer()+0xc5c>
  2f436c: 447b         	add	r3, pc
  2f436e: 4618         	mov	r0, r3
  2f4370: f2e3 ffc8    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3f90
  2f4374: 4603         	mov	r3, r0
  2f4376: 4618         	mov	r0, r3
  2f4378: f7e8 fcb0    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x176a0
  2f437c: 4603         	mov	r3, r0
  2f437e: 4620         	mov	r0, r4
  2f4380: 4619         	mov	r1, r3
  2f4382: f29e ffe7    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29efce
  2f4386: 9b03         	ldr	r3, [sp, #0xc]
  2f4388: f503 7475    	add.w	r4, r3, #0x3d4
  2f438c: 4bf7         	ldr	r3, [pc, #0x3dc]        @ 0x2f476c <AvatarRenderer::initRenderer()+0xc60>
  2f438e: 447b         	add	r3, pc
  2f4390: 4618         	mov	r0, r3
  2f4392: f2e3 ffb7    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3f6e
  2f4396: 4603         	mov	r3, r0
  2f4398: 4618         	mov	r0, r3
  2f439a: f7e8 fc9f    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x176c2
  2f439e: 4603         	mov	r3, r0
  2f43a0: 4620         	mov	r0, r4
  2f43a2: 4619         	mov	r1, r3
  2f43a4: f29e ffd6    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29efac
  2f43a8: 9b03         	ldr	r3, [sp, #0xc]
  2f43aa: f503 7479    	add.w	r4, r3, #0x3e4
  2f43ae: 4bf0         	ldr	r3, [pc, #0x3c0]        @ 0x2f4770 <AvatarRenderer::initRenderer()+0xc64>
  2f43b0: 447b         	add	r3, pc
  2f43b2: 4618         	mov	r0, r3
  2f43b4: f2e3 ffa6    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3f4c
  2f43b8: 4603         	mov	r3, r0
  2f43ba: 4618         	mov	r0, r3
  2f43bc: f7e8 fc8e    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x176e4
  2f43c0: 4603         	mov	r3, r0
  2f43c2: 4620         	mov	r0, r4
  2f43c4: 4619         	mov	r1, r3
  2f43c6: f29e ffc5    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29ef8a
  2f43ca: 9b03         	ldr	r3, [sp, #0xc]
  2f43cc: f503 747d    	add.w	r4, r3, #0x3f4
  2f43d0: 4be8         	ldr	r3, [pc, #0x3a0]        @ 0x2f4774 <AvatarRenderer::initRenderer()+0xc68>
  2f43d2: 447b         	add	r3, pc
  2f43d4: 4618         	mov	r0, r3
  2f43d6: f2e3 ff95    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3f2a
  2f43da: 4603         	mov	r3, r0
  2f43dc: 4618         	mov	r0, r3
  2f43de: f7e8 fc7d    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17706
  2f43e2: 4603         	mov	r3, r0
  2f43e4: 4620         	mov	r0, r4
  2f43e6: 4619         	mov	r1, r3
  2f43e8: f29e ffb4    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29ef68
  2f43ec: 9b03         	ldr	r3, [sp, #0xc]
  2f43ee: f203 4404    	addw	r4, r3, #0x404
  2f43f2: 4be1         	ldr	r3, [pc, #0x384]        @ 0x2f4778 <AvatarRenderer::initRenderer()+0xc6c>
  2f43f4: 447b         	add	r3, pc
  2f43f6: 4618         	mov	r0, r3
  2f43f8: f2e3 ff84    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3f08
  2f43fc: 4603         	mov	r3, r0
  2f43fe: 4618         	mov	r0, r3
  2f4400: f7e8 fc6c    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17728
  2f4404: 4603         	mov	r3, r0
  2f4406: 4620         	mov	r0, r4
  2f4408: 4619         	mov	r1, r3
  2f440a: f29e ffa3    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29ef46
  2f440e: 9b03         	ldr	r3, [sp, #0xc]
  2f4410: f203 4414    	addw	r4, r3, #0x414
  2f4414: 4bd9         	ldr	r3, [pc, #0x364]        @ 0x2f477c <AvatarRenderer::initRenderer()+0xc70>
  2f4416: 447b         	add	r3, pc
  2f4418: 4618         	mov	r0, r3
  2f441a: f2e3 ff73    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3ee6
  2f441e: 4603         	mov	r3, r0
  2f4420: 4618         	mov	r0, r3
  2f4422: f7e8 fc5b    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x1774a
  2f4426: 4603         	mov	r3, r0
  2f4428: 4620         	mov	r0, r4
  2f442a: 4619         	mov	r1, r3
  2f442c: f29e ff92    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29ef24
  2f4430: 9b03         	ldr	r3, [sp, #0xc]
  2f4432: f203 4424    	addw	r4, r3, #0x424
  2f4436: 4bd2         	ldr	r3, [pc, #0x348]        @ 0x2f4780 <AvatarRenderer::initRenderer()+0xc74>
  2f4438: 447b         	add	r3, pc
  2f443a: 4618         	mov	r0, r3
  2f443c: f2e3 ff62    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3ec4
  2f4440: 4603         	mov	r3, r0
  2f4442: 4618         	mov	r0, r3
  2f4444: f7e8 fc4a    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x1776c
  2f4448: 4603         	mov	r3, r0
  2f444a: 4620         	mov	r0, r4
  2f444c: 4619         	mov	r1, r3
  2f444e: f29e ff81    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29ef02
  2f4452: 9b03         	ldr	r3, [sp, #0xc]
  2f4454: f203 4434    	addw	r4, r3, #0x434
  2f4458: 4bca         	ldr	r3, [pc, #0x328]        @ 0x2f4784 <AvatarRenderer::initRenderer()+0xc78>
  2f445a: 447b         	add	r3, pc
  2f445c: 4618         	mov	r0, r3
  2f445e: f2e3 ff51    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3ea2
  2f4462: 4603         	mov	r3, r0
  2f4464: 4618         	mov	r0, r3
  2f4466: f7e8 fc39    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x1778e
  2f446a: 4603         	mov	r3, r0
  2f446c: 4620         	mov	r0, r4
  2f446e: 4619         	mov	r1, r3
  2f4470: f29e ff70    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29eee0
  2f4474: 9b03         	ldr	r3, [sp, #0xc]
  2f4476: f203 4444    	addw	r4, r3, #0x444
  2f447a: 4bc3         	ldr	r3, [pc, #0x30c]        @ 0x2f4788 <AvatarRenderer::initRenderer()+0xc7c>
  2f447c: 447b         	add	r3, pc
  2f447e: 4618         	mov	r0, r3
  2f4480: f2e3 ff40    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3e80
  2f4484: 4603         	mov	r3, r0
  2f4486: 4618         	mov	r0, r3
  2f4488: f7e8 fc28    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x177b0
  2f448c: 4603         	mov	r3, r0
  2f448e: 4620         	mov	r0, r4
  2f4490: 4619         	mov	r1, r3
  2f4492: f29e ff5f    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29eebe
  2f4496: 9b03         	ldr	r3, [sp, #0xc]
  2f4498: f203 4454    	addw	r4, r3, #0x454
  2f449c: 4bbb         	ldr	r3, [pc, #0x2ec]        @ 0x2f478c <AvatarRenderer::initRenderer()+0xc80>
  2f449e: 447b         	add	r3, pc
  2f44a0: 4618         	mov	r0, r3
  2f44a2: f2e3 ff2f    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3e5e
  2f44a6: 4603         	mov	r3, r0
  2f44a8: 4618         	mov	r0, r3
  2f44aa: f7e8 fc17    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x177d2
  2f44ae: 4603         	mov	r3, r0
  2f44b0: 4620         	mov	r0, r4
  2f44b2: 4619         	mov	r1, r3
  2f44b4: f29e ff4e    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29ee9c
  2f44b8: 9b03         	ldr	r3, [sp, #0xc]
  2f44ba: f203 4464    	addw	r4, r3, #0x464
  2f44be: 4bb4         	ldr	r3, [pc, #0x2d0]        @ 0x2f4790 <AvatarRenderer::initRenderer()+0xc84>
  2f44c0: 447b         	add	r3, pc
  2f44c2: 4618         	mov	r0, r3
  2f44c4: f2e3 ff1e    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3e3c
  2f44c8: 4603         	mov	r3, r0
  2f44ca: 4618         	mov	r0, r3
  2f44cc: f7e8 fc06    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x177f4
  2f44d0: 4603         	mov	r3, r0
  2f44d2: 4620         	mov	r0, r4
  2f44d4: 4619         	mov	r1, r3
  2f44d6: f29e ff3d    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29ee7a
  2f44da: 9b03         	ldr	r3, [sp, #0xc]
  2f44dc: f203 4474    	addw	r4, r3, #0x474
  2f44e0: 4bac         	ldr	r3, [pc, #0x2b0]        @ 0x2f4794 <AvatarRenderer::initRenderer()+0xc88>
  2f44e2: 447b         	add	r3, pc
  2f44e4: 4618         	mov	r0, r3
  2f44e6: f2e3 ff0d    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3e1a
  2f44ea: 4603         	mov	r3, r0
  2f44ec: 4618         	mov	r0, r3
  2f44ee: f7e8 fbf5    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17816
  2f44f2: 4603         	mov	r3, r0
  2f44f4: 4620         	mov	r0, r4
  2f44f6: 4619         	mov	r1, r3
  2f44f8: f29e ff2c    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29ee58
  2f44fc: 9b03         	ldr	r3, [sp, #0xc]
  2f44fe: f203 4484    	addw	r4, r3, #0x484
  2f4502: 4ba5         	ldr	r3, [pc, #0x294]        @ 0x2f4798 <AvatarRenderer::initRenderer()+0xc8c>
  2f4504: 447b         	add	r3, pc
  2f4506: 4618         	mov	r0, r3
  2f4508: f2e3 fefc    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3df8
  2f450c: 4603         	mov	r3, r0
  2f450e: 4618         	mov	r0, r3
  2f4510: f7e8 fbe4    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17838
  2f4514: 4603         	mov	r3, r0
  2f4516: 4620         	mov	r0, r4
  2f4518: 4619         	mov	r1, r3
  2f451a: f29e ff1b    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29ee36
  2f451e: 9b03         	ldr	r3, [sp, #0xc]
  2f4520: f203 4494    	addw	r4, r3, #0x494
  2f4524: 4b9d         	ldr	r3, [pc, #0x274]        @ 0x2f479c <AvatarRenderer::initRenderer()+0xc90>
  2f4526: 447b         	add	r3, pc
  2f4528: 4618         	mov	r0, r3
  2f452a: f2e3 feeb    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3dd6
  2f452e: 4603         	mov	r3, r0
  2f4530: 4618         	mov	r0, r3
  2f4532: f7e8 fbd3    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x1785a
  2f4536: 4603         	mov	r3, r0
  2f4538: 4620         	mov	r0, r4
  2f453a: 4619         	mov	r1, r3
  2f453c: f29e ff0a    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29ee14
  2f4540: 9b03         	ldr	r3, [sp, #0xc]
  2f4542: f203 44a4    	addw	r4, r3, #0x4a4
  2f4546: 4b96         	ldr	r3, [pc, #0x258]        @ 0x2f47a0 <AvatarRenderer::initRenderer()+0xc94>
  2f4548: 447b         	add	r3, pc
  2f454a: 4618         	mov	r0, r3
  2f454c: f2e3 feda    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3db4
  2f4550: 4603         	mov	r3, r0
  2f4552: 4618         	mov	r0, r3
  2f4554: f7e8 fbc2    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x1787c
  2f4558: 4603         	mov	r3, r0
  2f455a: 4620         	mov	r0, r4
  2f455c: 4619         	mov	r1, r3
  2f455e: f29e fef9    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29edf2
  2f4562: 9b03         	ldr	r3, [sp, #0xc]
  2f4564: f203 44b4    	addw	r4, r3, #0x4b4
  2f4568: 4b8e         	ldr	r3, [pc, #0x238]        @ 0x2f47a4 <AvatarRenderer::initRenderer()+0xc98>
  2f456a: 447b         	add	r3, pc
  2f456c: 4618         	mov	r0, r3
  2f456e: f2e3 fec9    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3d92
  2f4572: 4603         	mov	r3, r0
  2f4574: 4618         	mov	r0, r3
  2f4576: f7e8 fbb1    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x1789e
  2f457a: 4603         	mov	r3, r0
  2f457c: 4620         	mov	r0, r4
  2f457e: 4619         	mov	r1, r3
  2f4580: f29e fee8    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29edd0
  2f4584: 9b03         	ldr	r3, [sp, #0xc]
  2f4586: f203 44c4    	addw	r4, r3, #0x4c4
  2f458a: 4b87         	ldr	r3, [pc, #0x21c]        @ 0x2f47a8 <AvatarRenderer::initRenderer()+0xc9c>
  2f458c: 447b         	add	r3, pc
  2f458e: 4618         	mov	r0, r3
  2f4590: f2e3 feb8    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3d70
  2f4594: 4603         	mov	r3, r0
  2f4596: 4618         	mov	r0, r3
  2f4598: f7e8 fba0    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x178c0
  2f459c: 4603         	mov	r3, r0
  2f459e: 4620         	mov	r0, r4
  2f45a0: 4619         	mov	r1, r3
  2f45a2: f29e fed7    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29edae
  2f45a6: 9b03         	ldr	r3, [sp, #0xc]
  2f45a8: f203 44d4    	addw	r4, r3, #0x4d4
  2f45ac: 4b7f         	ldr	r3, [pc, #0x1fc]        @ 0x2f47ac <AvatarRenderer::initRenderer()+0xca0>
  2f45ae: 447b         	add	r3, pc
  2f45b0: 4618         	mov	r0, r3
  2f45b2: f2e3 fea7    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3d4e
  2f45b6: 4603         	mov	r3, r0
  2f45b8: 4618         	mov	r0, r3
  2f45ba: f7e8 fb8f    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x178e2
  2f45be: 4603         	mov	r3, r0
  2f45c0: 4620         	mov	r0, r4
  2f45c2: 4619         	mov	r1, r3
  2f45c4: f29e fec6    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29ed8c
  2f45c8: 9b03         	ldr	r3, [sp, #0xc]
  2f45ca: f203 44e4    	addw	r4, r3, #0x4e4
  2f45ce: 4b78         	ldr	r3, [pc, #0x1e0]        @ 0x2f47b0 <AvatarRenderer::initRenderer()+0xca4>
  2f45d0: 447b         	add	r3, pc
  2f45d2: 4618         	mov	r0, r3
  2f45d4: f2e3 fe96    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3d2c
  2f45d8: 4603         	mov	r3, r0
  2f45da: 4618         	mov	r0, r3
  2f45dc: f7e8 fb7e    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17904
  2f45e0: 4603         	mov	r3, r0
  2f45e2: 4620         	mov	r0, r4
  2f45e4: 4619         	mov	r1, r3
  2f45e6: f29e feb5    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29ed6a
  2f45ea: 9b03         	ldr	r3, [sp, #0xc]
  2f45ec: f203 44f4    	addw	r4, r3, #0x4f4
  2f45f0: 4b70         	ldr	r3, [pc, #0x1c0]        @ 0x2f47b4 <AvatarRenderer::initRenderer()+0xca8>
  2f45f2: 447b         	add	r3, pc
  2f45f4: 4618         	mov	r0, r3
  2f45f6: f2e3 fe85    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3d0a
  2f45fa: 4603         	mov	r3, r0
  2f45fc: 4618         	mov	r0, r3
  2f45fe: f7e8 fb6d    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17926
  2f4602: 4603         	mov	r3, r0
  2f4604: 4620         	mov	r0, r4
  2f4606: 4619         	mov	r1, r3
  2f4608: f29e fea4    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29ed48
  2f460c: 9b03         	ldr	r3, [sp, #0xc]
  2f460e: f203 5404    	addw	r4, r3, #0x504
  2f4612: 4b69         	ldr	r3, [pc, #0x1a4]        @ 0x2f47b8 <AvatarRenderer::initRenderer()+0xcac>
  2f4614: 447b         	add	r3, pc
  2f4616: 4618         	mov	r0, r3
  2f4618: f2e3 fe74    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3ce8
  2f461c: 4603         	mov	r3, r0
  2f461e: 4618         	mov	r0, r3
  2f4620: f7e8 fb5c    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17948
  2f4624: 4603         	mov	r3, r0
  2f4626: 4620         	mov	r0, r4
  2f4628: 4619         	mov	r1, r3
  2f462a: f29e fe93    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29ed26
  2f462e: 9b03         	ldr	r3, [sp, #0xc]
  2f4630: f203 5414    	addw	r4, r3, #0x514
  2f4634: 4b61         	ldr	r3, [pc, #0x184]        @ 0x2f47bc <AvatarRenderer::initRenderer()+0xcb0>
  2f4636: 447b         	add	r3, pc
  2f4638: 4618         	mov	r0, r3
  2f463a: f2e3 fe63    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3cc6
  2f463e: 4603         	mov	r3, r0
  2f4640: 4618         	mov	r0, r3
  2f4642: f7e8 fb4b    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x1796a
  2f4646: 4603         	mov	r3, r0
  2f4648: 4620         	mov	r0, r4
  2f464a: 4619         	mov	r1, r3
  2f464c: f29e fe82    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29ed04
  2f4650: 9b03         	ldr	r3, [sp, #0xc]
  2f4652: f203 5424    	addw	r4, r3, #0x524
  2f4656: 4b5a         	ldr	r3, [pc, #0x168]        @ 0x2f47c0 <AvatarRenderer::initRenderer()+0xcb4>
  2f4658: 447b         	add	r3, pc
  2f465a: 4618         	mov	r0, r3
  2f465c: f2e3 fe52    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3ca4
  2f4660: 4603         	mov	r3, r0
  2f4662: 4618         	mov	r0, r3
  2f4664: f7e8 fb3a    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x1798c
  2f4668: 4603         	mov	r3, r0
  2f466a: 4620         	mov	r0, r4
  2f466c: 4619         	mov	r1, r3
  2f466e: f29e fe71    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29ece2
  2f4672: 9b03         	ldr	r3, [sp, #0xc]
  2f4674: f203 5434    	addw	r4, r3, #0x534
  2f4678: 4b52         	ldr	r3, [pc, #0x148]        @ 0x2f47c4 <AvatarRenderer::initRenderer()+0xcb8>
  2f467a: 447b         	add	r3, pc
  2f467c: 4618         	mov	r0, r3
  2f467e: f2e3 fe41    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3c82
  2f4682: 4603         	mov	r3, r0
  2f4684: 4618         	mov	r0, r3
  2f4686: f7e8 fb29    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x179ae
  2f468a: 4603         	mov	r3, r0
  2f468c: 4620         	mov	r0, r4
  2f468e: 4619         	mov	r1, r3
  2f4690: f29e fe60    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29ecc0
  2f4694: 9b03         	ldr	r3, [sp, #0xc]
  2f4696: f203 5444    	addw	r4, r3, #0x544
  2f469a: 4b4b         	ldr	r3, [pc, #0x12c]        @ 0x2f47c8 <AvatarRenderer::initRenderer()+0xcbc>
  2f469c: 447b         	add	r3, pc
  2f469e: 4618         	mov	r0, r3
  2f46a0: f2e3 fe30    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3c60
  2f46a4: 4603         	mov	r3, r0
  2f46a6: 4618         	mov	r0, r3
  2f46a8: f7e8 fb18    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x179d0
  2f46ac: 4603         	mov	r3, r0
  2f46ae: 4620         	mov	r0, r4
  2f46b0: 4619         	mov	r1, r3
  2f46b2: e08b         	b	0x2f47cc <AvatarRenderer::initRenderer()+0xcc0> @ imm = #0x116
  2f46b4: ff90 004c    	vmla.i16	q0, q0, d4[1]
  2f46b8: ff7c 004c    	<unknown>
  2f46bc: ff6c 004c    	vhadd.u32	q8, q6, q6
  2f46c0: ff5c 004c    	vhadd.u16	q8, q6, q6
  2f46c4: ff4c 004c    	vhadd.u8	q8, q6, q6
  2f46c8: ff3c 004c    	<unknown>
  2f46cc: ff2c 004c    	vhadd.u32	q0, q6, q6
  2f46d0: fd48 004c    	stc2l	p0, c0, [r8, #-304]
  2f46d4: fc9c 004c    	ldc2	p0, c0, [r12], {76}
  2f46d8: fd10 004c    	ldc2	p0, c0, [r0, #-304]
  2f46dc: fcfc 004c    	ldc2l	p0, c0, [r12], #304
  2f46e0: fce4 004c    	stc2l	p0, c0, [r4], #304
  2f46e4: fccc 004c    	stc2l	p0, c0, [r12], {76}
  2f46e8: fcb4 004c    	ldc2	p0, c0, [r4], #304
  2f46ec: fc9c 004c    	ldc2	p0, c0, [r12], {76}
  2f46f0: fc84 004c    	stc2	p0, c0, [r4], {76}
  2f46f4: fc6c 004c    	stc2l	p0, c0, [r12], #-304
  2f46f8: fc54 004c    	mrrc2	p0, #0x4, r0, r4, c12
  2f46fc: fc3c 004c    	ldc2	p0, c0, [r12], #-304
  2f4700: fc24 004c    	stc2	p0, c0, [r4], #-304
  2f4704: fc0c 004c    	<unknown>
  2f4708: fbf4 004c    	<unknown>
  2f470c: fbdc 004c    	<unknown>
  2f4710: fbc4 004c    	<unknown>
  2f4714: fbac 004c    	<unknown>
  2f4718: fb94 004c    	<unknown>
  2f471c: fb7c 004c    	<unknown>
  2f4720: fb64 004c    	<unknown>
  2f4724: fb4c 004c    	<unknown>
  2f4728: fb34 004c    	<unknown>
  2f472c: fb1c 004c    	<unknown>
  2f4730: fb04 004c    	<unknown>
  2f4734: faec 004c    	<unknown>
  2f4738: fad4 004c    	<unknown>
  2f473c: fabc 004c    	<unknown>
  2f4740: faa4 004c    	<unknown>
  2f4744: fa8c 004c    	<unknown>
  2f4748: fa74 004c    	<unknown>
  2f474c: fa5c 004c    	<unknown>
  2f4750: fa1a 004c    	<unknown>
  2f4754: fa02 004c    	<unknown>
  2f4758: f9ea 004c    	vld1.8	{d16[2]}, [r10], r12
  2f475c: f9d2 004c    	<unknown>
  2f4760: f9ba 004c    	ldrsh.w	r0, [r10, #0x4c]
  2f4764: f9a2 004c    	vld1.8	{d0[2]}, [r2], r12
  2f4768: f98c 004c    	vst1.8	{d0[2]}, [r12], r12
  2f476c: f976 004c    	<unknown>
  2f4770: f960 004c    	vld4.16	{d16, d17, d18, d19}, [r0], r12
  2f4774: f94a 004c    	vst4.16	{d16, d17, d18, d19}, [r10], r12
  2f4778: f934 004c    	<unknown>
  2f477c: f91e 004c    	<unknown>
  2f4780: f908 004c    	vst4.16	{d0, d1, d2, d3}, [r8], r12
  2f4784: f8f2 004c    	<unknown>
  2f4788: f8dc 004c    	ldr.w	r0, [r12, #0x4c]
  2f478c: f8c6 004c    	str.w	r0, [r6, #0x4c]
  2f4790: f8b0 004c    	ldrh.w	r0, [r0, #0x4c]
  2f4794: f89a 004c    	ldrb.w	r0, [r10, #0x4c]
  2f4798: f884 004c    	strb.w	r0, [r4, #0x4c]
  2f479c: f86e 004c    	<unknown>
  2f47a0: f858 004c    	<unknown>
  2f47a4: f842 004c    	<unknown>
  2f47a8: f82c 004c    	<unknown>
  2f47ac: f816 004c    	<unknown>
  2f47b0: f800 004c    	<unknown>
  2f47b4: f7ea 004c    	<unknown>
  2f47b8: f7d4 004c    	<unknown>
  2f47bc: f7be 004c    	<unknown>
  2f47c0: f7a8 004c    	<unknown>
  2f47c4: f792 004c    	<unknown>
  2f47c8: f77c 004c    	<unknown>
  2f47cc: f29e fdc2    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29eb84
  2f47d0: 9b03         	ldr	r3, [sp, #0xc]
  2f47d2: f203 5454    	addw	r4, r3, #0x554
  2f47d6: f8df 3b70    	ldr.w	r3, [pc, #0xb70]        @ 0x2f5348 <AvatarRenderer::initRenderer()+0x183c>
  2f47da: 447b         	add	r3, pc
  2f47dc: 4618         	mov	r0, r3
  2f47de: f2e3 fd91    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3b22
  2f47e2: 4603         	mov	r3, r0
  2f47e4: 4618         	mov	r0, r3
  2f47e6: f7e8 fa79    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17b0e
  2f47ea: 4603         	mov	r3, r0
  2f47ec: 4620         	mov	r0, r4
  2f47ee: 4619         	mov	r1, r3
  2f47f0: f29e fdb0    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29eb60
  2f47f4: 9b03         	ldr	r3, [sp, #0xc]
  2f47f6: f203 5464    	addw	r4, r3, #0x564
  2f47fa: f8df 3b50    	ldr.w	r3, [pc, #0xb50]        @ 0x2f534c <AvatarRenderer::initRenderer()+0x1840>
  2f47fe: 447b         	add	r3, pc
  2f4800: 4618         	mov	r0, r3
  2f4802: f2e3 fd7f    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3afe
  2f4806: 4603         	mov	r3, r0
  2f4808: 4618         	mov	r0, r3
  2f480a: f7e8 fa67    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17b32
  2f480e: 4603         	mov	r3, r0
  2f4810: 4620         	mov	r0, r4
  2f4812: 4619         	mov	r1, r3
  2f4814: f29e fd9e    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29eb3c
  2f4818: 9b03         	ldr	r3, [sp, #0xc]
  2f481a: f203 5474    	addw	r4, r3, #0x574
  2f481e: f8df 3b30    	ldr.w	r3, [pc, #0xb30]        @ 0x2f5350 <AvatarRenderer::initRenderer()+0x1844>
  2f4822: 447b         	add	r3, pc
  2f4824: 4618         	mov	r0, r3
  2f4826: f2e3 fd6d    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3ada
  2f482a: 4603         	mov	r3, r0
  2f482c: 4618         	mov	r0, r3
  2f482e: f7e8 fa55    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17b56
  2f4832: 4603         	mov	r3, r0
  2f4834: 4620         	mov	r0, r4
  2f4836: 4619         	mov	r1, r3
  2f4838: f29e fd8c    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29eb18
  2f483c: 9b03         	ldr	r3, [sp, #0xc]
  2f483e: f203 5484    	addw	r4, r3, #0x584
  2f4842: f8df 3b10    	ldr.w	r3, [pc, #0xb10]        @ 0x2f5354 <AvatarRenderer::initRenderer()+0x1848>
  2f4846: 447b         	add	r3, pc
  2f4848: 4618         	mov	r0, r3
  2f484a: f2e3 fd5b    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3ab6
  2f484e: 4603         	mov	r3, r0
  2f4850: 4618         	mov	r0, r3
  2f4852: f7e8 fa43    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17b7a
  2f4856: 4603         	mov	r3, r0
  2f4858: 4620         	mov	r0, r4
  2f485a: 4619         	mov	r1, r3
  2f485c: f29e fd7a    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29eaf4
  2f4860: 9b03         	ldr	r3, [sp, #0xc]
  2f4862: f203 5494    	addw	r4, r3, #0x594
  2f4866: f8df 3af0    	ldr.w	r3, [pc, #0xaf0]        @ 0x2f5358 <AvatarRenderer::initRenderer()+0x184c>
  2f486a: 447b         	add	r3, pc
  2f486c: 4618         	mov	r0, r3
  2f486e: f2e3 fd49    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3a92
  2f4872: 4603         	mov	r3, r0
  2f4874: 4618         	mov	r0, r3
  2f4876: f7e8 fa31    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17b9e
  2f487a: 4603         	mov	r3, r0
  2f487c: 4620         	mov	r0, r4
  2f487e: 4619         	mov	r1, r3
  2f4880: f29e fd68    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29ead0
  2f4884: 9b03         	ldr	r3, [sp, #0xc]
  2f4886: f203 54a4    	addw	r4, r3, #0x5a4
  2f488a: f8df 3ad0    	ldr.w	r3, [pc, #0xad0]        @ 0x2f535c <AvatarRenderer::initRenderer()+0x1850>
  2f488e: 447b         	add	r3, pc
  2f4890: 4618         	mov	r0, r3
  2f4892: f2e3 fd37    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3a6e
  2f4896: 4603         	mov	r3, r0
  2f4898: 4618         	mov	r0, r3
  2f489a: f7e8 fa1f    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17bc2
  2f489e: 4603         	mov	r3, r0
  2f48a0: 4620         	mov	r0, r4
  2f48a2: 4619         	mov	r1, r3
  2f48a4: f29e fd56    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29eaac
  2f48a8: 9b03         	ldr	r3, [sp, #0xc]
  2f48aa: f203 54b4    	addw	r4, r3, #0x5b4
  2f48ae: f8df 3ab0    	ldr.w	r3, [pc, #0xab0]        @ 0x2f5360 <AvatarRenderer::initRenderer()+0x1854>
  2f48b2: 447b         	add	r3, pc
  2f48b4: 4618         	mov	r0, r3
  2f48b6: f2e3 fd25    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3a4a
  2f48ba: 4603         	mov	r3, r0
  2f48bc: 4618         	mov	r0, r3
  2f48be: f7e8 fa0d    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17be6
  2f48c2: 4603         	mov	r3, r0
  2f48c4: 4620         	mov	r0, r4
  2f48c6: 4619         	mov	r1, r3
  2f48c8: f29e fd44    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29ea88
  2f48cc: 9b03         	ldr	r3, [sp, #0xc]
  2f48ce: f203 54c4    	addw	r4, r3, #0x5c4
  2f48d2: f8df 3a90    	ldr.w	r3, [pc, #0xa90]        @ 0x2f5364 <AvatarRenderer::initRenderer()+0x1858>
  2f48d6: 447b         	add	r3, pc
  2f48d8: 4618         	mov	r0, r3
  2f48da: f2e3 fd13    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3a26
  2f48de: 4603         	mov	r3, r0
  2f48e0: 4618         	mov	r0, r3
  2f48e2: f7e8 f9fb    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17c0a
  2f48e6: 4603         	mov	r3, r0
  2f48e8: 4620         	mov	r0, r4
  2f48ea: 4619         	mov	r1, r3
  2f48ec: f29e fd32    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29ea64
  2f48f0: 9b03         	ldr	r3, [sp, #0xc]
  2f48f2: f203 54d4    	addw	r4, r3, #0x5d4
  2f48f6: f8df 3a70    	ldr.w	r3, [pc, #0xa70]        @ 0x2f5368 <AvatarRenderer::initRenderer()+0x185c>
  2f48fa: 447b         	add	r3, pc
  2f48fc: 4618         	mov	r0, r3
  2f48fe: f2e3 fd01    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3a02
  2f4902: 4603         	mov	r3, r0
  2f4904: 4618         	mov	r0, r3
  2f4906: f7e8 f9e9    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17c2e
  2f490a: 4603         	mov	r3, r0
  2f490c: 4620         	mov	r0, r4
  2f490e: 4619         	mov	r1, r3
  2f4910: f29e fd20    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29ea40
  2f4914: 9b03         	ldr	r3, [sp, #0xc]
  2f4916: f203 54e4    	addw	r4, r3, #0x5e4
  2f491a: f8df 3a50    	ldr.w	r3, [pc, #0xa50]        @ 0x2f536c <AvatarRenderer::initRenderer()+0x1860>
  2f491e: 447b         	add	r3, pc
  2f4920: 4618         	mov	r0, r3
  2f4922: f2e3 fcef    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e39de
  2f4926: 4603         	mov	r3, r0
  2f4928: 4618         	mov	r0, r3
  2f492a: f7e8 f9d7    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17c52
  2f492e: 4603         	mov	r3, r0
  2f4930: 4620         	mov	r0, r4
  2f4932: 4619         	mov	r1, r3
  2f4934: f29e fd0e    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29ea1c
  2f4938: 9b03         	ldr	r3, [sp, #0xc]
  2f493a: f203 54f4    	addw	r4, r3, #0x5f4
  2f493e: f8df 3a30    	ldr.w	r3, [pc, #0xa30]        @ 0x2f5370 <AvatarRenderer::initRenderer()+0x1864>
  2f4942: 447b         	add	r3, pc
  2f4944: 4618         	mov	r0, r3
  2f4946: f2e3 fcdd    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e39ba
  2f494a: 4603         	mov	r3, r0
  2f494c: 4618         	mov	r0, r3
  2f494e: f7e8 f9c5    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17c76
  2f4952: 4603         	mov	r3, r0
  2f4954: 4620         	mov	r0, r4
  2f4956: 4619         	mov	r1, r3
  2f4958: f29e fcfc    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e9f8
  2f495c: 9b03         	ldr	r3, [sp, #0xc]
  2f495e: f203 6404    	addw	r4, r3, #0x604
  2f4962: f8df 3a10    	ldr.w	r3, [pc, #0xa10]        @ 0x2f5374 <AvatarRenderer::initRenderer()+0x1868>
  2f4966: 447b         	add	r3, pc
  2f4968: 4618         	mov	r0, r3
  2f496a: f2e3 fccb    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3996
  2f496e: 4603         	mov	r3, r0
  2f4970: 4618         	mov	r0, r3
  2f4972: f7e8 f9b3    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17c9a
  2f4976: 4603         	mov	r3, r0
  2f4978: 4620         	mov	r0, r4
  2f497a: 4619         	mov	r1, r3
  2f497c: f29e fcea    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e9d4
  2f4980: 9b03         	ldr	r3, [sp, #0xc]
  2f4982: f203 6414    	addw	r4, r3, #0x614
  2f4986: f8df 39f0    	ldr.w	r3, [pc, #0x9f0]        @ 0x2f5378 <AvatarRenderer::initRenderer()+0x186c>
  2f498a: 447b         	add	r3, pc
  2f498c: 4618         	mov	r0, r3
  2f498e: f2e3 fcb9    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3972
  2f4992: 4603         	mov	r3, r0
  2f4994: 4618         	mov	r0, r3
  2f4996: f7e8 f9a1    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17cbe
  2f499a: 4603         	mov	r3, r0
  2f499c: 4620         	mov	r0, r4
  2f499e: 4619         	mov	r1, r3
  2f49a0: f29e fcd8    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e9b0
  2f49a4: 9b03         	ldr	r3, [sp, #0xc]
  2f49a6: f203 6424    	addw	r4, r3, #0x624
  2f49aa: f8df 39d0    	ldr.w	r3, [pc, #0x9d0]        @ 0x2f537c <AvatarRenderer::initRenderer()+0x1870>
  2f49ae: 447b         	add	r3, pc
  2f49b0: 4618         	mov	r0, r3
  2f49b2: f2e3 fca7    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e394e
  2f49b6: 4603         	mov	r3, r0
  2f49b8: 4618         	mov	r0, r3
  2f49ba: f7e8 f98f    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17ce2
  2f49be: 4603         	mov	r3, r0
  2f49c0: 4620         	mov	r0, r4
  2f49c2: 4619         	mov	r1, r3
  2f49c4: f29e fcc6    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e98c
  2f49c8: 9b03         	ldr	r3, [sp, #0xc]
  2f49ca: f203 6434    	addw	r4, r3, #0x634
  2f49ce: f8df 39b0    	ldr.w	r3, [pc, #0x9b0]        @ 0x2f5380 <AvatarRenderer::initRenderer()+0x1874>
  2f49d2: 447b         	add	r3, pc
  2f49d4: 4618         	mov	r0, r3
  2f49d6: f2e3 fc95    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e392a
  2f49da: 4603         	mov	r3, r0
  2f49dc: 4618         	mov	r0, r3
  2f49de: f7e8 f97d    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17d06
  2f49e2: 4603         	mov	r3, r0
  2f49e4: 4620         	mov	r0, r4
  2f49e6: 4619         	mov	r1, r3
  2f49e8: f29e fcb4    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e968
  2f49ec: 9b03         	ldr	r3, [sp, #0xc]
  2f49ee: f203 6444    	addw	r4, r3, #0x644
  2f49f2: f8df 3990    	ldr.w	r3, [pc, #0x990]        @ 0x2f5384 <AvatarRenderer::initRenderer()+0x1878>
  2f49f6: 447b         	add	r3, pc
  2f49f8: 4618         	mov	r0, r3
  2f49fa: f2e3 fc83    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3906
  2f49fe: 4603         	mov	r3, r0
  2f4a00: 4618         	mov	r0, r3
  2f4a02: f7e8 f96b    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17d2a
  2f4a06: 4603         	mov	r3, r0
  2f4a08: 4620         	mov	r0, r4
  2f4a0a: 4619         	mov	r1, r3
  2f4a0c: f29e fca2    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e944
  2f4a10: 9b03         	ldr	r3, [sp, #0xc]
  2f4a12: f203 6454    	addw	r4, r3, #0x654
  2f4a16: f8df 3970    	ldr.w	r3, [pc, #0x970]        @ 0x2f5388 <AvatarRenderer::initRenderer()+0x187c>
  2f4a1a: 447b         	add	r3, pc
  2f4a1c: 4618         	mov	r0, r3
  2f4a1e: f2e3 fc71    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e38e2
  2f4a22: 4603         	mov	r3, r0
  2f4a24: 4618         	mov	r0, r3
  2f4a26: f7e8 f959    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17d4e
  2f4a2a: 4603         	mov	r3, r0
  2f4a2c: 4620         	mov	r0, r4
  2f4a2e: 4619         	mov	r1, r3
  2f4a30: f29e fc90    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e920
  2f4a34: 9b03         	ldr	r3, [sp, #0xc]
  2f4a36: f203 6464    	addw	r4, r3, #0x664
  2f4a3a: f8df 3950    	ldr.w	r3, [pc, #0x950]        @ 0x2f538c <AvatarRenderer::initRenderer()+0x1880>
  2f4a3e: 447b         	add	r3, pc
  2f4a40: 4618         	mov	r0, r3
  2f4a42: f2e3 fc5f    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e38be
  2f4a46: 4603         	mov	r3, r0
  2f4a48: 4618         	mov	r0, r3
  2f4a4a: f7e8 f947    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17d72
  2f4a4e: 4603         	mov	r3, r0
  2f4a50: 4620         	mov	r0, r4
  2f4a52: 4619         	mov	r1, r3
  2f4a54: f29e fc7e    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e8fc
  2f4a58: 9b03         	ldr	r3, [sp, #0xc]
  2f4a5a: f203 6474    	addw	r4, r3, #0x674
  2f4a5e: f8df 3930    	ldr.w	r3, [pc, #0x930]        @ 0x2f5390 <AvatarRenderer::initRenderer()+0x1884>
  2f4a62: 447b         	add	r3, pc
  2f4a64: 4618         	mov	r0, r3
  2f4a66: f2e3 fc4d    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e389a
  2f4a6a: 4603         	mov	r3, r0
  2f4a6c: 4618         	mov	r0, r3
  2f4a6e: f7e8 f935    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17d96
  2f4a72: 4603         	mov	r3, r0
  2f4a74: 4620         	mov	r0, r4
  2f4a76: 4619         	mov	r1, r3
  2f4a78: f29e fc6c    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e8d8
  2f4a7c: 9b03         	ldr	r3, [sp, #0xc]
  2f4a7e: f203 6484    	addw	r4, r3, #0x684
  2f4a82: f8df 3910    	ldr.w	r3, [pc, #0x910]        @ 0x2f5394 <AvatarRenderer::initRenderer()+0x1888>
  2f4a86: 447b         	add	r3, pc
  2f4a88: 4618         	mov	r0, r3
  2f4a8a: f2e3 fc3b    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3876
  2f4a8e: 4603         	mov	r3, r0
  2f4a90: 4618         	mov	r0, r3
  2f4a92: f7e8 f923    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17dba
  2f4a96: 4603         	mov	r3, r0
  2f4a98: 4620         	mov	r0, r4
  2f4a9a: 4619         	mov	r1, r3
  2f4a9c: f29e fc5a    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e8b4
  2f4aa0: 9b03         	ldr	r3, [sp, #0xc]
  2f4aa2: f203 6494    	addw	r4, r3, #0x694
  2f4aa6: f8df 38f0    	ldr.w	r3, [pc, #0x8f0]        @ 0x2f5398 <AvatarRenderer::initRenderer()+0x188c>
  2f4aaa: 447b         	add	r3, pc
  2f4aac: 4618         	mov	r0, r3
  2f4aae: f2e3 fc29    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3852
  2f4ab2: 4603         	mov	r3, r0
  2f4ab4: 4618         	mov	r0, r3
  2f4ab6: f7e8 f911    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17dde
  2f4aba: 4603         	mov	r3, r0
  2f4abc: 4620         	mov	r0, r4
  2f4abe: 4619         	mov	r1, r3
  2f4ac0: f29e fc48    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e890
  2f4ac4: 9b03         	ldr	r3, [sp, #0xc]
  2f4ac6: f203 64a4    	addw	r4, r3, #0x6a4
  2f4aca: f8df 38d0    	ldr.w	r3, [pc, #0x8d0]        @ 0x2f539c <AvatarRenderer::initRenderer()+0x1890>
  2f4ace: 447b         	add	r3, pc
  2f4ad0: 4618         	mov	r0, r3
  2f4ad2: f2e3 fc17    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e382e
  2f4ad6: 4603         	mov	r3, r0
  2f4ad8: 4618         	mov	r0, r3
  2f4ada: f7e8 f8ff    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17e02
  2f4ade: 4603         	mov	r3, r0
  2f4ae0: 4620         	mov	r0, r4
  2f4ae2: 4619         	mov	r1, r3
  2f4ae4: f29e fc36    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e86c
  2f4ae8: 9b03         	ldr	r3, [sp, #0xc]
  2f4aea: f203 64b4    	addw	r4, r3, #0x6b4
  2f4aee: ab04         	add	r3, sp, #0x10
  2f4af0: f04f 0200    	mov.w	r2, #0x0
  2f4af4: 9200         	str	r2, [sp]
  2f4af6: 4618         	mov	r0, r3
  2f4af8: f04f 0100    	mov.w	r1, #0x0
  2f4afc: f04f 0200    	mov.w	r2, #0x0
  2f4b00: f04f 0300    	mov.w	r3, #0x0
  2f4b04: f29e fbec    	bl	0x5932e0 <cocos2d::CCRect::CCRect(float, float, float, float)> @ imm = #0x29e7d8
  2f4b08: ab04         	add	r3, sp, #0x10
  2f4b0a: 4620         	mov	r0, r4
  2f4b0c: 4619         	mov	r1, r3
  2f4b0e: f29e fc21    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e842
  2f4b12: 9b03         	ldr	r3, [sp, #0xc]
  2f4b14: f203 64c4    	addw	r4, r3, #0x6c4
  2f4b18: f8df 3884    	ldr.w	r3, [pc, #0x884]        @ 0x2f53a0 <AvatarRenderer::initRenderer()+0x1894>
  2f4b1c: 447b         	add	r3, pc
  2f4b1e: 4618         	mov	r0, r3
  2f4b20: f2e3 fbf0    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e37e0
  2f4b24: 4603         	mov	r3, r0
  2f4b26: 4618         	mov	r0, r3
  2f4b28: f7e8 f8d8    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17e50
  2f4b2c: 4603         	mov	r3, r0
  2f4b2e: 4620         	mov	r0, r4
  2f4b30: 4619         	mov	r1, r3
  2f4b32: f29e fc0f    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e81e
  2f4b36: 9b03         	ldr	r3, [sp, #0xc]
  2f4b38: f203 64d4    	addw	r4, r3, #0x6d4
  2f4b3c: f8df 3864    	ldr.w	r3, [pc, #0x864]        @ 0x2f53a4 <AvatarRenderer::initRenderer()+0x1898>
  2f4b40: 447b         	add	r3, pc
  2f4b42: 4618         	mov	r0, r3
  2f4b44: f2e3 fbde    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e37bc
  2f4b48: 4603         	mov	r3, r0
  2f4b4a: 4618         	mov	r0, r3
  2f4b4c: f7e8 f8c6    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17e74
  2f4b50: 4603         	mov	r3, r0
  2f4b52: 4620         	mov	r0, r4
  2f4b54: 4619         	mov	r1, r3
  2f4b56: f29e fbfd    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e7fa
  2f4b5a: 9b03         	ldr	r3, [sp, #0xc]
  2f4b5c: f203 64e4    	addw	r4, r3, #0x6e4
  2f4b60: f8df 3844    	ldr.w	r3, [pc, #0x844]        @ 0x2f53a8 <AvatarRenderer::initRenderer()+0x189c>
  2f4b64: 447b         	add	r3, pc
  2f4b66: 4618         	mov	r0, r3
  2f4b68: f2e3 fbcc    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3798
  2f4b6c: 4603         	mov	r3, r0
  2f4b6e: 4618         	mov	r0, r3
  2f4b70: f7e8 f8b4    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17e98
  2f4b74: 4603         	mov	r3, r0
  2f4b76: 4620         	mov	r0, r4
  2f4b78: 4619         	mov	r1, r3
  2f4b7a: f29e fbeb    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e7d6
  2f4b7e: 9b03         	ldr	r3, [sp, #0xc]
  2f4b80: f203 64f4    	addw	r4, r3, #0x6f4
  2f4b84: f8df 3824    	ldr.w	r3, [pc, #0x824]        @ 0x2f53ac <AvatarRenderer::initRenderer()+0x18a0>
  2f4b88: 447b         	add	r3, pc
  2f4b8a: 4618         	mov	r0, r3
  2f4b8c: f2e3 fbba    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3774
  2f4b90: 4603         	mov	r3, r0
  2f4b92: 4618         	mov	r0, r3
  2f4b94: f7e8 f8a2    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17ebc
  2f4b98: 4603         	mov	r3, r0
  2f4b9a: 4620         	mov	r0, r4
  2f4b9c: 4619         	mov	r1, r3
  2f4b9e: f29e fbd9    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e7b2
  2f4ba2: 9b03         	ldr	r3, [sp, #0xc]
  2f4ba4: f203 7404    	addw	r4, r3, #0x704
  2f4ba8: f8df 3804    	ldr.w	r3, [pc, #0x804]        @ 0x2f53b0 <AvatarRenderer::initRenderer()+0x18a4>
  2f4bac: 447b         	add	r3, pc
  2f4bae: 4618         	mov	r0, r3
  2f4bb0: f2e3 fba8    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3750
  2f4bb4: 4603         	mov	r3, r0
  2f4bb6: 4618         	mov	r0, r3
  2f4bb8: f7e8 f890    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17ee0
  2f4bbc: 4603         	mov	r3, r0
  2f4bbe: 4620         	mov	r0, r4
  2f4bc0: 4619         	mov	r1, r3
  2f4bc2: f29e fbc7    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e78e
  2f4bc6: 9b03         	ldr	r3, [sp, #0xc]
  2f4bc8: f203 7414    	addw	r4, r3, #0x714
  2f4bcc: f8df 37e4    	ldr.w	r3, [pc, #0x7e4]        @ 0x2f53b4 <AvatarRenderer::initRenderer()+0x18a8>
  2f4bd0: 447b         	add	r3, pc
  2f4bd2: 4618         	mov	r0, r3
  2f4bd4: f2e3 fb96    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e372c
  2f4bd8: 4603         	mov	r3, r0
  2f4bda: 4618         	mov	r0, r3
  2f4bdc: f7e8 f87e    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17f04
  2f4be0: 4603         	mov	r3, r0
  2f4be2: 4620         	mov	r0, r4
  2f4be4: 4619         	mov	r1, r3
  2f4be6: f29e fbb5    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e76a
  2f4bea: 9b03         	ldr	r3, [sp, #0xc]
  2f4bec: f203 7424    	addw	r4, r3, #0x724
  2f4bf0: f8df 37c4    	ldr.w	r3, [pc, #0x7c4]        @ 0x2f53b8 <AvatarRenderer::initRenderer()+0x18ac>
  2f4bf4: 447b         	add	r3, pc
  2f4bf6: 4618         	mov	r0, r3
  2f4bf8: f2e3 fb84    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3708
  2f4bfc: 4603         	mov	r3, r0
  2f4bfe: 4618         	mov	r0, r3
  2f4c00: f7e8 f86c    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17f28
  2f4c04: 4603         	mov	r3, r0
  2f4c06: 4620         	mov	r0, r4
  2f4c08: 4619         	mov	r1, r3
  2f4c0a: f29e fba3    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e746
  2f4c0e: 9b03         	ldr	r3, [sp, #0xc]
  2f4c10: f203 7434    	addw	r4, r3, #0x734
  2f4c14: ab04         	add	r3, sp, #0x10
  2f4c16: f04f 0200    	mov.w	r2, #0x0
  2f4c1a: 9200         	str	r2, [sp]
  2f4c1c: 4618         	mov	r0, r3
  2f4c1e: f04f 0100    	mov.w	r1, #0x0
  2f4c22: f04f 0200    	mov.w	r2, #0x0
  2f4c26: f04f 0300    	mov.w	r3, #0x0
  2f4c2a: f29e fb59    	bl	0x5932e0 <cocos2d::CCRect::CCRect(float, float, float, float)> @ imm = #0x29e6b2
  2f4c2e: ab04         	add	r3, sp, #0x10
  2f4c30: 4620         	mov	r0, r4
  2f4c32: 4619         	mov	r1, r3
  2f4c34: f29e fb8e    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e71c
  2f4c38: 9b03         	ldr	r3, [sp, #0xc]
  2f4c3a: f203 7444    	addw	r4, r3, #0x744
  2f4c3e: f8df 377c    	ldr.w	r3, [pc, #0x77c]        @ 0x2f53bc <AvatarRenderer::initRenderer()+0x18b0>
  2f4c42: 447b         	add	r3, pc
  2f4c44: 4618         	mov	r0, r3
  2f4c46: f2e3 fb5d    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e36ba
  2f4c4a: 4603         	mov	r3, r0
  2f4c4c: 4618         	mov	r0, r3
  2f4c4e: f7e8 f845    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17f76
  2f4c52: 4603         	mov	r3, r0
  2f4c54: 4620         	mov	r0, r4
  2f4c56: 4619         	mov	r1, r3
  2f4c58: f29e fb7c    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e6f8
  2f4c5c: 9b03         	ldr	r3, [sp, #0xc]
  2f4c5e: f203 7454    	addw	r4, r3, #0x754
  2f4c62: f8df 375c    	ldr.w	r3, [pc, #0x75c]        @ 0x2f53c0 <AvatarRenderer::initRenderer()+0x18b4>
  2f4c66: 447b         	add	r3, pc
  2f4c68: 4618         	mov	r0, r3
  2f4c6a: f2e3 fb4b    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3696
  2f4c6e: 4603         	mov	r3, r0
  2f4c70: 4618         	mov	r0, r3
  2f4c72: f7e8 f833    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17f9a
  2f4c76: 4603         	mov	r3, r0
  2f4c78: 4620         	mov	r0, r4
  2f4c7a: 4619         	mov	r1, r3
  2f4c7c: f29e fb6a    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e6d4
  2f4c80: 9b03         	ldr	r3, [sp, #0xc]
  2f4c82: f203 7464    	addw	r4, r3, #0x764
  2f4c86: f8df 373c    	ldr.w	r3, [pc, #0x73c]        @ 0x2f53c4 <AvatarRenderer::initRenderer()+0x18b8>
  2f4c8a: 447b         	add	r3, pc
  2f4c8c: 4618         	mov	r0, r3
  2f4c8e: f2e3 fb39    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3672
  2f4c92: 4603         	mov	r3, r0
  2f4c94: 4618         	mov	r0, r3
  2f4c96: f7e8 f821    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17fbe
  2f4c9a: 4603         	mov	r3, r0
  2f4c9c: 4620         	mov	r0, r4
  2f4c9e: 4619         	mov	r1, r3
  2f4ca0: f29e fb58    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e6b0
  2f4ca4: 9b03         	ldr	r3, [sp, #0xc]
  2f4ca6: f203 7474    	addw	r4, r3, #0x774
  2f4caa: f8df 371c    	ldr.w	r3, [pc, #0x71c]        @ 0x2f53c8 <AvatarRenderer::initRenderer()+0x18bc>
  2f4cae: 447b         	add	r3, pc
  2f4cb0: 4618         	mov	r0, r3
  2f4cb2: f2e3 fb27    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e364e
  2f4cb6: 4603         	mov	r3, r0
  2f4cb8: 4618         	mov	r0, r3
  2f4cba: f7e8 f80f    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x17fe2
  2f4cbe: 4603         	mov	r3, r0
  2f4cc0: 4620         	mov	r0, r4
  2f4cc2: 4619         	mov	r1, r3
  2f4cc4: f29e fb46    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e68c
  2f4cc8: 9b03         	ldr	r3, [sp, #0xc]
  2f4cca: f203 7484    	addw	r4, r3, #0x784
  2f4cce: f8df 36fc    	ldr.w	r3, [pc, #0x6fc]        @ 0x2f53cc <AvatarRenderer::initRenderer()+0x18c0>
  2f4cd2: 447b         	add	r3, pc
  2f4cd4: 4618         	mov	r0, r3
  2f4cd6: f2e3 fb15    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e362a
  2f4cda: 4603         	mov	r3, r0
  2f4cdc: 4618         	mov	r0, r3
  2f4cde: f7e7 fffd    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18006
  2f4ce2: 4603         	mov	r3, r0
  2f4ce4: 4620         	mov	r0, r4
  2f4ce6: 4619         	mov	r1, r3
  2f4ce8: f29e fb34    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e668
  2f4cec: 9b03         	ldr	r3, [sp, #0xc]
  2f4cee: f203 7494    	addw	r4, r3, #0x794
  2f4cf2: f8df 36dc    	ldr.w	r3, [pc, #0x6dc]        @ 0x2f53d0 <AvatarRenderer::initRenderer()+0x18c4>
  2f4cf6: 447b         	add	r3, pc
  2f4cf8: 4618         	mov	r0, r3
  2f4cfa: f2e3 fb03    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3606
  2f4cfe: 4603         	mov	r3, r0
  2f4d00: 4618         	mov	r0, r3
  2f4d02: f7e7 ffeb    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x1802a
  2f4d06: 4603         	mov	r3, r0
  2f4d08: 4620         	mov	r0, r4
  2f4d0a: 4619         	mov	r1, r3
  2f4d0c: f29e fb22    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e644
  2f4d10: 9b03         	ldr	r3, [sp, #0xc]
  2f4d12: f203 74a4    	addw	r4, r3, #0x7a4
  2f4d16: f8df 36bc    	ldr.w	r3, [pc, #0x6bc]        @ 0x2f53d4 <AvatarRenderer::initRenderer()+0x18c8>
  2f4d1a: 447b         	add	r3, pc
  2f4d1c: 4618         	mov	r0, r3
  2f4d1e: f2e3 faf1    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e35e2
  2f4d22: 4603         	mov	r3, r0
  2f4d24: 4618         	mov	r0, r3
  2f4d26: f7e7 ffd9    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x1804e
  2f4d2a: 4603         	mov	r3, r0
  2f4d2c: 4620         	mov	r0, r4
  2f4d2e: 4619         	mov	r1, r3
  2f4d30: f29e fb10    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e620
  2f4d34: 9b03         	ldr	r3, [sp, #0xc]
  2f4d36: f203 74b4    	addw	r4, r3, #0x7b4
  2f4d3a: f8df 369c    	ldr.w	r3, [pc, #0x69c]        @ 0x2f53d8 <AvatarRenderer::initRenderer()+0x18cc>
  2f4d3e: 447b         	add	r3, pc
  2f4d40: 4618         	mov	r0, r3
  2f4d42: f2e3 fadf    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e35be
  2f4d46: 4603         	mov	r3, r0
  2f4d48: 4618         	mov	r0, r3
  2f4d4a: f7e7 ffc7    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18072
  2f4d4e: 4603         	mov	r3, r0
  2f4d50: 4620         	mov	r0, r4
  2f4d52: 4619         	mov	r1, r3
  2f4d54: f29e fafe    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e5fc
  2f4d58: 9b03         	ldr	r3, [sp, #0xc]
  2f4d5a: f203 74c4    	addw	r4, r3, #0x7c4
  2f4d5e: ab04         	add	r3, sp, #0x10
  2f4d60: f04f 0200    	mov.w	r2, #0x0
  2f4d64: 9200         	str	r2, [sp]
  2f4d66: 4618         	mov	r0, r3
  2f4d68: f04f 0100    	mov.w	r1, #0x0
  2f4d6c: f04f 0200    	mov.w	r2, #0x0
  2f4d70: f04f 0300    	mov.w	r3, #0x0
  2f4d74: f29e fab4    	bl	0x5932e0 <cocos2d::CCRect::CCRect(float, float, float, float)> @ imm = #0x29e568
  2f4d78: ab04         	add	r3, sp, #0x10
  2f4d7a: 4620         	mov	r0, r4
  2f4d7c: 4619         	mov	r1, r3
  2f4d7e: f29e fae9    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e5d2
  2f4d82: 9b03         	ldr	r3, [sp, #0xc]
  2f4d84: f203 74d4    	addw	r4, r3, #0x7d4
  2f4d88: f8df 3650    	ldr.w	r3, [pc, #0x650]        @ 0x2f53dc <AvatarRenderer::initRenderer()+0x18d0>
  2f4d8c: 447b         	add	r3, pc
  2f4d8e: 4618         	mov	r0, r3
  2f4d90: f2e3 fab8    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3570
  2f4d94: 4603         	mov	r3, r0
  2f4d96: 4618         	mov	r0, r3
  2f4d98: f7e7 ffa0    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x180c0
  2f4d9c: 4603         	mov	r3, r0
  2f4d9e: 4620         	mov	r0, r4
  2f4da0: 4619         	mov	r1, r3
  2f4da2: f29e fad7    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e5ae
  2f4da6: 9b03         	ldr	r3, [sp, #0xc]
  2f4da8: f203 74e4    	addw	r4, r3, #0x7e4
  2f4dac: f8df 3630    	ldr.w	r3, [pc, #0x630]        @ 0x2f53e0 <AvatarRenderer::initRenderer()+0x18d4>
  2f4db0: 447b         	add	r3, pc
  2f4db2: 4618         	mov	r0, r3
  2f4db4: f2e3 faa6    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e354c
  2f4db8: 4603         	mov	r3, r0
  2f4dba: 4618         	mov	r0, r3
  2f4dbc: f7e7 ff8e    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x180e4
  2f4dc0: 4603         	mov	r3, r0
  2f4dc2: 4620         	mov	r0, r4
  2f4dc4: 4619         	mov	r1, r3
  2f4dc6: f29e fac5    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e58a
  2f4dca: 9b03         	ldr	r3, [sp, #0xc]
  2f4dcc: f203 74f4    	addw	r4, r3, #0x7f4
  2f4dd0: f8df 3610    	ldr.w	r3, [pc, #0x610]        @ 0x2f53e4 <AvatarRenderer::initRenderer()+0x18d8>
  2f4dd4: 447b         	add	r3, pc
  2f4dd6: 4618         	mov	r0, r3
  2f4dd8: f2e3 fa94    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3528
  2f4ddc: 4603         	mov	r3, r0
  2f4dde: 4618         	mov	r0, r3
  2f4de0: f7e7 ff7c    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18108
  2f4de4: 4603         	mov	r3, r0
  2f4de6: 4620         	mov	r0, r4
  2f4de8: 4619         	mov	r1, r3
  2f4dea: f29e fab3    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e566
  2f4dee: 9b03         	ldr	r3, [sp, #0xc]
  2f4df0: f603 0404    	addw	r4, r3, #0x804
  2f4df4: f8df 35f0    	ldr.w	r3, [pc, #0x5f0]        @ 0x2f53e8 <AvatarRenderer::initRenderer()+0x18dc>
  2f4df8: 447b         	add	r3, pc
  2f4dfa: 4618         	mov	r0, r3
  2f4dfc: f2e3 fa82    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3504
  2f4e00: 4603         	mov	r3, r0
  2f4e02: 4618         	mov	r0, r3
  2f4e04: f7e7 ff6a    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x1812c
  2f4e08: 4603         	mov	r3, r0
  2f4e0a: 4620         	mov	r0, r4
  2f4e0c: 4619         	mov	r1, r3
  2f4e0e: f29e faa1    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e542
  2f4e12: 9b03         	ldr	r3, [sp, #0xc]
  2f4e14: f603 0474    	addw	r4, r3, #0x874
  2f4e18: ab04         	add	r3, sp, #0x10
  2f4e1a: f04f 0200    	mov.w	r2, #0x0
  2f4e1e: 9200         	str	r2, [sp]
  2f4e20: 4618         	mov	r0, r3
  2f4e22: f04f 0100    	mov.w	r1, #0x0
  2f4e26: f04f 0200    	mov.w	r2, #0x0
  2f4e2a: f04f 0300    	mov.w	r3, #0x0
  2f4e2e: f29e fa57    	bl	0x5932e0 <cocos2d::CCRect::CCRect(float, float, float, float)> @ imm = #0x29e4ae
  2f4e32: ab04         	add	r3, sp, #0x10
  2f4e34: 4620         	mov	r0, r4
  2f4e36: 4619         	mov	r1, r3
  2f4e38: f29e fa8c    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e518
  2f4e3c: 9b03         	ldr	r3, [sp, #0xc]
  2f4e3e: f603 0484    	addw	r4, r3, #0x884
  2f4e42: f8df 35a8    	ldr.w	r3, [pc, #0x5a8]        @ 0x2f53ec <AvatarRenderer::initRenderer()+0x18e0>
  2f4e46: 447b         	add	r3, pc
  2f4e48: 4618         	mov	r0, r3
  2f4e4a: f2e3 fa5b    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e34b6
  2f4e4e: 4603         	mov	r3, r0
  2f4e50: 4618         	mov	r0, r3
  2f4e52: f7e7 ff43    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x1817a
  2f4e56: 4603         	mov	r3, r0
  2f4e58: 4620         	mov	r0, r4
  2f4e5a: 4619         	mov	r1, r3
  2f4e5c: f29e fa7a    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e4f4
  2f4e60: 9b03         	ldr	r3, [sp, #0xc]
  2f4e62: f603 0494    	addw	r4, r3, #0x894
  2f4e66: f8df 3588    	ldr.w	r3, [pc, #0x588]        @ 0x2f53f0 <AvatarRenderer::initRenderer()+0x18e4>
  2f4e6a: 447b         	add	r3, pc
  2f4e6c: 4618         	mov	r0, r3
  2f4e6e: f2e3 fa49    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3492
  2f4e72: 4603         	mov	r3, r0
  2f4e74: 4618         	mov	r0, r3
  2f4e76: f7e7 ff31    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x1819e
  2f4e7a: 4603         	mov	r3, r0
  2f4e7c: 4620         	mov	r0, r4
  2f4e7e: 4619         	mov	r1, r3
  2f4e80: f29e fa68    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e4d0
  2f4e84: 9b03         	ldr	r3, [sp, #0xc]
  2f4e86: f603 04a4    	addw	r4, r3, #0x8a4
  2f4e8a: f8df 3568    	ldr.w	r3, [pc, #0x568]        @ 0x2f53f4 <AvatarRenderer::initRenderer()+0x18e8>
  2f4e8e: 447b         	add	r3, pc
  2f4e90: 4618         	mov	r0, r3
  2f4e92: f2e3 fa37    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e346e
  2f4e96: 4603         	mov	r3, r0
  2f4e98: 4618         	mov	r0, r3
  2f4e9a: f7e7 ff1f    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x181c2
  2f4e9e: 4603         	mov	r3, r0
  2f4ea0: 4620         	mov	r0, r4
  2f4ea2: 4619         	mov	r1, r3
  2f4ea4: f29e fa56    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e4ac
  2f4ea8: 9b03         	ldr	r3, [sp, #0xc]
  2f4eaa: f603 04b4    	addw	r4, r3, #0x8b4
  2f4eae: f8df 3548    	ldr.w	r3, [pc, #0x548]        @ 0x2f53f8 <AvatarRenderer::initRenderer()+0x18ec>
  2f4eb2: 447b         	add	r3, pc
  2f4eb4: 4618         	mov	r0, r3
  2f4eb6: f2e3 fa25    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e344a
  2f4eba: 4603         	mov	r3, r0
  2f4ebc: 4618         	mov	r0, r3
  2f4ebe: f7e7 ff0d    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x181e6
  2f4ec2: 4603         	mov	r3, r0
  2f4ec4: 4620         	mov	r0, r4
  2f4ec6: 4619         	mov	r1, r3
  2f4ec8: f29e fa44    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e488
  2f4ecc: 9b03         	ldr	r3, [sp, #0xc]
  2f4ece: f603 04c4    	addw	r4, r3, #0x8c4
  2f4ed2: f8df 3528    	ldr.w	r3, [pc, #0x528]        @ 0x2f53fc <AvatarRenderer::initRenderer()+0x18f0>
  2f4ed6: 447b         	add	r3, pc
  2f4ed8: 4618         	mov	r0, r3
  2f4eda: f2e3 fa13    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3426
  2f4ede: 4603         	mov	r3, r0
  2f4ee0: 4618         	mov	r0, r3
  2f4ee2: f7e7 fefb    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x1820a
  2f4ee6: 4603         	mov	r3, r0
  2f4ee8: 4620         	mov	r0, r4
  2f4eea: 4619         	mov	r1, r3
  2f4eec: f29e fa32    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e464
  2f4ef0: 9b03         	ldr	r3, [sp, #0xc]
  2f4ef2: f603 04d4    	addw	r4, r3, #0x8d4
  2f4ef6: f8df 3508    	ldr.w	r3, [pc, #0x508]        @ 0x2f5400 <AvatarRenderer::initRenderer()+0x18f4>
  2f4efa: 447b         	add	r3, pc
  2f4efc: 4618         	mov	r0, r3
  2f4efe: f2e3 fa01    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3402
  2f4f02: 4603         	mov	r3, r0
  2f4f04: 4618         	mov	r0, r3
  2f4f06: f7e7 fee9    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x1822e
  2f4f0a: 4603         	mov	r3, r0
  2f4f0c: 4620         	mov	r0, r4
  2f4f0e: 4619         	mov	r1, r3
  2f4f10: f29e fa20    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e440
  2f4f14: 9b03         	ldr	r3, [sp, #0xc]
  2f4f16: f603 04e4    	addw	r4, r3, #0x8e4
  2f4f1a: f8df 34e8    	ldr.w	r3, [pc, #0x4e8]        @ 0x2f5404 <AvatarRenderer::initRenderer()+0x18f8>
  2f4f1e: 447b         	add	r3, pc
  2f4f20: 4618         	mov	r0, r3
  2f4f22: f2e3 f9ef    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e33de
  2f4f26: 4603         	mov	r3, r0
  2f4f28: 4618         	mov	r0, r3
  2f4f2a: f7e7 fed7    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18252
  2f4f2e: 4603         	mov	r3, r0
  2f4f30: 4620         	mov	r0, r4
  2f4f32: 4619         	mov	r1, r3
  2f4f34: f29e fa0e    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e41c
  2f4f38: 9b03         	ldr	r3, [sp, #0xc]
  2f4f3a: f603 0414    	addw	r4, r3, #0x814
  2f4f3e: ab04         	add	r3, sp, #0x10
  2f4f40: f04f 0200    	mov.w	r2, #0x0
  2f4f44: 9200         	str	r2, [sp]
  2f4f46: 4618         	mov	r0, r3
  2f4f48: f04f 0100    	mov.w	r1, #0x0
  2f4f4c: f04f 0200    	mov.w	r2, #0x0
  2f4f50: f04f 0300    	mov.w	r3, #0x0
  2f4f54: f29e f9c4    	bl	0x5932e0 <cocos2d::CCRect::CCRect(float, float, float, float)> @ imm = #0x29e388
  2f4f58: ab04         	add	r3, sp, #0x10
  2f4f5a: 4620         	mov	r0, r4
  2f4f5c: 4619         	mov	r1, r3
  2f4f5e: f29e f9f9    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e3f2
  2f4f62: 9b03         	ldr	r3, [sp, #0xc]
  2f4f64: f603 0424    	addw	r4, r3, #0x824
  2f4f68: f8df 349c    	ldr.w	r3, [pc, #0x49c]        @ 0x2f5408 <AvatarRenderer::initRenderer()+0x18fc>
  2f4f6c: 447b         	add	r3, pc
  2f4f6e: 4618         	mov	r0, r3
  2f4f70: f2e3 f9c8    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3390
  2f4f74: 4603         	mov	r3, r0
  2f4f76: 4618         	mov	r0, r3
  2f4f78: f7e7 feb0    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x182a0
  2f4f7c: 4603         	mov	r3, r0
  2f4f7e: 4620         	mov	r0, r4
  2f4f80: 4619         	mov	r1, r3
  2f4f82: f29e f9e7    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e3ce
  2f4f86: 9b03         	ldr	r3, [sp, #0xc]
  2f4f88: f603 0434    	addw	r4, r3, #0x834
  2f4f8c: f8df 347c    	ldr.w	r3, [pc, #0x47c]        @ 0x2f540c <AvatarRenderer::initRenderer()+0x1900>
  2f4f90: 447b         	add	r3, pc
  2f4f92: 4618         	mov	r0, r3
  2f4f94: f2e3 f9b6    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e336c
  2f4f98: 4603         	mov	r3, r0
  2f4f9a: 4618         	mov	r0, r3
  2f4f9c: f7e7 fe9e    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x182c4
  2f4fa0: 4603         	mov	r3, r0
  2f4fa2: 4620         	mov	r0, r4
  2f4fa4: 4619         	mov	r1, r3
  2f4fa6: f29e f9d5    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e3aa
  2f4faa: 9b03         	ldr	r3, [sp, #0xc]
  2f4fac: f603 0444    	addw	r4, r3, #0x844
  2f4fb0: f8df 345c    	ldr.w	r3, [pc, #0x45c]        @ 0x2f5410 <AvatarRenderer::initRenderer()+0x1904>
  2f4fb4: 447b         	add	r3, pc
  2f4fb6: 4618         	mov	r0, r3
  2f4fb8: f2e3 f9a4    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3348
  2f4fbc: 4603         	mov	r3, r0
  2f4fbe: 4618         	mov	r0, r3
  2f4fc0: f7e7 fe8c    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x182e8
  2f4fc4: 4603         	mov	r3, r0
  2f4fc6: 4620         	mov	r0, r4
  2f4fc8: 4619         	mov	r1, r3
  2f4fca: f29e f9c3    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e386
  2f4fce: 9b03         	ldr	r3, [sp, #0xc]
  2f4fd0: f603 0454    	addw	r4, r3, #0x854
  2f4fd4: f8df 343c    	ldr.w	r3, [pc, #0x43c]        @ 0x2f5414 <AvatarRenderer::initRenderer()+0x1908>
  2f4fd8: 447b         	add	r3, pc
  2f4fda: 4618         	mov	r0, r3
  2f4fdc: f2e3 f992    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3324
  2f4fe0: 4603         	mov	r3, r0
  2f4fe2: 4618         	mov	r0, r3
  2f4fe4: f7e7 fe7a    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x1830c
  2f4fe8: 4603         	mov	r3, r0
  2f4fea: 4620         	mov	r0, r4
  2f4fec: 4619         	mov	r1, r3
  2f4fee: f29e f9b1    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e362
  2f4ff2: 9b03         	ldr	r3, [sp, #0xc]
  2f4ff4: f603 0464    	addw	r4, r3, #0x864
  2f4ff8: f8df 341c    	ldr.w	r3, [pc, #0x41c]        @ 0x2f5418 <AvatarRenderer::initRenderer()+0x190c>
  2f4ffc: 447b         	add	r3, pc
  2f4ffe: 4618         	mov	r0, r3
  2f5000: f2e3 f980    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3300
  2f5004: 4603         	mov	r3, r0
  2f5006: 4618         	mov	r0, r3
  2f5008: f7e7 fe68    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18330
  2f500c: 4603         	mov	r3, r0
  2f500e: 4620         	mov	r0, r4
  2f5010: 4619         	mov	r1, r3
  2f5012: f29e f99f    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e33e
  2f5016: 9b03         	ldr	r3, [sp, #0xc]
  2f5018: f603 141c    	addw	r4, r3, #0x91c
  2f501c: ab04         	add	r3, sp, #0x10
  2f501e: f04f 0200    	mov.w	r2, #0x0
  2f5022: 9200         	str	r2, [sp]
  2f5024: 4618         	mov	r0, r3
  2f5026: f04f 0100    	mov.w	r1, #0x0
  2f502a: f04f 0200    	mov.w	r2, #0x0
  2f502e: f04f 0300    	mov.w	r3, #0x0
  2f5032: f29e f955    	bl	0x5932e0 <cocos2d::CCRect::CCRect(float, float, float, float)> @ imm = #0x29e2aa
  2f5036: ab04         	add	r3, sp, #0x10
  2f5038: 4620         	mov	r0, r4
  2f503a: 4619         	mov	r1, r3
  2f503c: f29e f98a    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e314
  2f5040: 9b03         	ldr	r3, [sp, #0xc]
  2f5042: f603 142c    	addw	r4, r3, #0x92c
  2f5046: 4bf5         	ldr	r3, [pc, #0x3d4]        @ 0x2f541c <AvatarRenderer::initRenderer()+0x1910>
  2f5048: 447b         	add	r3, pc
  2f504a: 4618         	mov	r0, r3
  2f504c: f2e3 f95a    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e32b4
  2f5050: 4603         	mov	r3, r0
  2f5052: 4618         	mov	r0, r3
  2f5054: f7e7 fe42    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x1837c
  2f5058: 4603         	mov	r3, r0
  2f505a: 4620         	mov	r0, r4
  2f505c: 4619         	mov	r1, r3
  2f505e: f29e f979    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e2f2
  2f5062: 9b03         	ldr	r3, [sp, #0xc]
  2f5064: f603 143c    	addw	r4, r3, #0x93c
  2f5068: 4bed         	ldr	r3, [pc, #0x3b4]        @ 0x2f5420 <AvatarRenderer::initRenderer()+0x1914>
  2f506a: 447b         	add	r3, pc
  2f506c: 4618         	mov	r0, r3
  2f506e: f2e3 f949    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3292
  2f5072: 4603         	mov	r3, r0
  2f5074: 4618         	mov	r0, r3
  2f5076: f7e7 fe31    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x1839e
  2f507a: 4603         	mov	r3, r0
  2f507c: 4620         	mov	r0, r4
  2f507e: 4619         	mov	r1, r3
  2f5080: f29e f968    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e2d0
  2f5084: 9b03         	ldr	r3, [sp, #0xc]
  2f5086: f603 144c    	addw	r4, r3, #0x94c
  2f508a: 4be6         	ldr	r3, [pc, #0x398]        @ 0x2f5424 <AvatarRenderer::initRenderer()+0x1918>
  2f508c: 447b         	add	r3, pc
  2f508e: 4618         	mov	r0, r3
  2f5090: f2e3 f938    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3270
  2f5094: 4603         	mov	r3, r0
  2f5096: 4618         	mov	r0, r3
  2f5098: f7e7 fe20    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x183c0
  2f509c: 4603         	mov	r3, r0
  2f509e: 4620         	mov	r0, r4
  2f50a0: 4619         	mov	r1, r3
  2f50a2: f29e f957    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e2ae
  2f50a6: 9b03         	ldr	r3, [sp, #0xc]
  2f50a8: f603 145c    	addw	r4, r3, #0x95c
  2f50ac: 4bde         	ldr	r3, [pc, #0x378]        @ 0x2f5428 <AvatarRenderer::initRenderer()+0x191c>
  2f50ae: 447b         	add	r3, pc
  2f50b0: 4618         	mov	r0, r3
  2f50b2: f2e3 f927    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e324e
  2f50b6: 4603         	mov	r3, r0
  2f50b8: 4618         	mov	r0, r3
  2f50ba: f7e7 fe0f    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x183e2
  2f50be: 4603         	mov	r3, r0
  2f50c0: 4620         	mov	r0, r4
  2f50c2: 4619         	mov	r1, r3
  2f50c4: f29e f946    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e28c
  2f50c8: 9b03         	ldr	r3, [sp, #0xc]
  2f50ca: f603 146c    	addw	r4, r3, #0x96c
  2f50ce: 4bd7         	ldr	r3, [pc, #0x35c]        @ 0x2f542c <AvatarRenderer::initRenderer()+0x1920>
  2f50d0: 447b         	add	r3, pc
  2f50d2: 4618         	mov	r0, r3
  2f50d4: f2e3 f916    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e322c
  2f50d8: 4603         	mov	r3, r0
  2f50da: 4618         	mov	r0, r3
  2f50dc: f7e7 fdfe    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18404
  2f50e0: 4603         	mov	r3, r0
  2f50e2: 4620         	mov	r0, r4
  2f50e4: 4619         	mov	r1, r3
  2f50e6: f29e f935    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e26a
  2f50ea: 9b03         	ldr	r3, [sp, #0xc]
  2f50ec: f603 147c    	addw	r4, r3, #0x97c
  2f50f0: 4bcf         	ldr	r3, [pc, #0x33c]        @ 0x2f5430 <AvatarRenderer::initRenderer()+0x1924>
  2f50f2: 447b         	add	r3, pc
  2f50f4: 4618         	mov	r0, r3
  2f50f6: f2e3 f905    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e320a
  2f50fa: 4603         	mov	r3, r0
  2f50fc: 4618         	mov	r0, r3
  2f50fe: f7e7 fded    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18426
  2f5102: 4603         	mov	r3, r0
  2f5104: 4620         	mov	r0, r4
  2f5106: 4619         	mov	r1, r3
  2f5108: f29e f924    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e248
  2f510c: 9b03         	ldr	r3, [sp, #0xc]
  2f510e: f603 148c    	addw	r4, r3, #0x98c
  2f5112: 4bc8         	ldr	r3, [pc, #0x320]        @ 0x2f5434 <AvatarRenderer::initRenderer()+0x1928>
  2f5114: 447b         	add	r3, pc
  2f5116: 4618         	mov	r0, r3
  2f5118: f2e3 f8f4    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e31e8
  2f511c: 4603         	mov	r3, r0
  2f511e: 4618         	mov	r0, r3
  2f5120: f7e7 fddc    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18448
  2f5124: 4603         	mov	r3, r0
  2f5126: 4620         	mov	r0, r4
  2f5128: 4619         	mov	r1, r3
  2f512a: f29e f913    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e226
  2f512e: 9b03         	ldr	r3, [sp, #0xc]
  2f5130: f603 149c    	addw	r4, r3, #0x99c
  2f5134: 4bc0         	ldr	r3, [pc, #0x300]        @ 0x2f5438 <AvatarRenderer::initRenderer()+0x192c>
  2f5136: 447b         	add	r3, pc
  2f5138: 4618         	mov	r0, r3
  2f513a: f2e3 f8e3    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e31c6
  2f513e: 4603         	mov	r3, r0
  2f5140: 4618         	mov	r0, r3
  2f5142: f7e7 fdcb    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x1846a
  2f5146: 4603         	mov	r3, r0
  2f5148: 4620         	mov	r0, r4
  2f514a: 4619         	mov	r1, r3
  2f514c: f29e f902    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e204
  2f5150: 9b03         	ldr	r3, [sp, #0xc]
  2f5152: f603 14ac    	addw	r4, r3, #0x9ac
  2f5156: 4bb9         	ldr	r3, [pc, #0x2e4]        @ 0x2f543c <AvatarRenderer::initRenderer()+0x1930>
  2f5158: 447b         	add	r3, pc
  2f515a: 4618         	mov	r0, r3
  2f515c: f2e3 f8d2    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e31a4
  2f5160: 4603         	mov	r3, r0
  2f5162: 4618         	mov	r0, r3
  2f5164: f7e7 fdba    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x1848c
  2f5168: 4603         	mov	r3, r0
  2f516a: 4620         	mov	r0, r4
  2f516c: 4619         	mov	r1, r3
  2f516e: f29e f8f1    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e1e2
  2f5172: 9b03         	ldr	r3, [sp, #0xc]
  2f5174: f603 14bc    	addw	r4, r3, #0x9bc
  2f5178: 4bb1         	ldr	r3, [pc, #0x2c4]        @ 0x2f5440 <AvatarRenderer::initRenderer()+0x1934>
  2f517a: 447b         	add	r3, pc
  2f517c: 4618         	mov	r0, r3
  2f517e: f2e3 f8c1    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3182
  2f5182: 4603         	mov	r3, r0
  2f5184: 4618         	mov	r0, r3
  2f5186: f7e7 fda9    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x184ae
  2f518a: 4603         	mov	r3, r0
  2f518c: 4620         	mov	r0, r4
  2f518e: 4619         	mov	r1, r3
  2f5190: f29e f8e0    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e1c0
  2f5194: 9b03         	ldr	r3, [sp, #0xc]
  2f5196: f603 14cc    	addw	r4, r3, #0x9cc
  2f519a: 4baa         	ldr	r3, [pc, #0x2a8]        @ 0x2f5444 <AvatarRenderer::initRenderer()+0x1938>
  2f519c: 447b         	add	r3, pc
  2f519e: 4618         	mov	r0, r3
  2f51a0: f2e3 f8b0    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3160
  2f51a4: 4603         	mov	r3, r0
  2f51a6: 4618         	mov	r0, r3
  2f51a8: f7e7 fd98    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x184d0
  2f51ac: 4603         	mov	r3, r0
  2f51ae: 4620         	mov	r0, r4
  2f51b0: 4619         	mov	r1, r3
  2f51b2: f29e f8cf    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e19e
  2f51b6: 9b03         	ldr	r3, [sp, #0xc]
  2f51b8: f603 14dc    	addw	r4, r3, #0x9dc
  2f51bc: 4ba2         	ldr	r3, [pc, #0x288]        @ 0x2f5448 <AvatarRenderer::initRenderer()+0x193c>
  2f51be: 447b         	add	r3, pc
  2f51c0: 4618         	mov	r0, r3
  2f51c2: f2e3 f89f    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e313e
  2f51c6: 4603         	mov	r3, r0
  2f51c8: 4618         	mov	r0, r3
  2f51ca: f7e7 fd87    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x184f2
  2f51ce: 4603         	mov	r3, r0
  2f51d0: 4620         	mov	r0, r4
  2f51d2: 4619         	mov	r1, r3
  2f51d4: f29e f8be    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e17c
  2f51d8: 9b03         	ldr	r3, [sp, #0xc]
  2f51da: f603 14ec    	addw	r4, r3, #0x9ec
  2f51de: 4b9b         	ldr	r3, [pc, #0x26c]        @ 0x2f544c <AvatarRenderer::initRenderer()+0x1940>
  2f51e0: 447b         	add	r3, pc
  2f51e2: 4618         	mov	r0, r3
  2f51e4: f2e3 f88e    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e311c
  2f51e8: 4603         	mov	r3, r0
  2f51ea: 4618         	mov	r0, r3
  2f51ec: f7e7 fd76    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18514
  2f51f0: 4603         	mov	r3, r0
  2f51f2: 4620         	mov	r0, r4
  2f51f4: 4619         	mov	r1, r3
  2f51f6: f29e f8ad    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e15a
  2f51fa: 9b03         	ldr	r3, [sp, #0xc]
  2f51fc: f603 14fc    	addw	r4, r3, #0x9fc
  2f5200: 4b93         	ldr	r3, [pc, #0x24c]        @ 0x2f5450 <AvatarRenderer::initRenderer()+0x1944>
  2f5202: 447b         	add	r3, pc
  2f5204: 4618         	mov	r0, r3
  2f5206: f2e3 f87d    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e30fa
  2f520a: 4603         	mov	r3, r0
  2f520c: 4618         	mov	r0, r3
  2f520e: f7e7 fd65    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18536
  2f5212: 4603         	mov	r3, r0
  2f5214: 4620         	mov	r0, r4
  2f5216: 4619         	mov	r1, r3
  2f5218: f29e f89c    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e138
  2f521c: 9b03         	ldr	r3, [sp, #0xc]
  2f521e: f603 240c    	addw	r4, r3, #0xa0c
  2f5222: 4b8c         	ldr	r3, [pc, #0x230]        @ 0x2f5454 <AvatarRenderer::initRenderer()+0x1948>
  2f5224: 447b         	add	r3, pc
  2f5226: 4618         	mov	r0, r3
  2f5228: f2e3 f86c    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e30d8
  2f522c: 4603         	mov	r3, r0
  2f522e: 4618         	mov	r0, r3
  2f5230: f7e7 fd54    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18558
  2f5234: 4603         	mov	r3, r0
  2f5236: 4620         	mov	r0, r4
  2f5238: 4619         	mov	r1, r3
  2f523a: f29e f88b    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e116
  2f523e: 9b03         	ldr	r3, [sp, #0xc]
  2f5240: f603 241c    	addw	r4, r3, #0xa1c
  2f5244: 4b84         	ldr	r3, [pc, #0x210]        @ 0x2f5458 <AvatarRenderer::initRenderer()+0x194c>
  2f5246: 447b         	add	r3, pc
  2f5248: 4618         	mov	r0, r3
  2f524a: f2e3 f85b    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e30b6
  2f524e: 4603         	mov	r3, r0
  2f5250: 4618         	mov	r0, r3
  2f5252: f7e7 fd43    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x1857a
  2f5256: 4603         	mov	r3, r0
  2f5258: 4620         	mov	r0, r4
  2f525a: 4619         	mov	r1, r3
  2f525c: f29e f87a    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e0f4
  2f5260: 9b03         	ldr	r3, [sp, #0xc]
  2f5262: f603 242c    	addw	r4, r3, #0xa2c
  2f5266: 4b7d         	ldr	r3, [pc, #0x1f4]        @ 0x2f545c <AvatarRenderer::initRenderer()+0x1950>
  2f5268: 447b         	add	r3, pc
  2f526a: 4618         	mov	r0, r3
  2f526c: f2e3 f84a    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3094
  2f5270: 4603         	mov	r3, r0
  2f5272: 4618         	mov	r0, r3
  2f5274: f7e7 fd32    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x1859c
  2f5278: 4603         	mov	r3, r0
  2f527a: 4620         	mov	r0, r4
  2f527c: 4619         	mov	r1, r3
  2f527e: f29e f869    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e0d2
  2f5282: 9b03         	ldr	r3, [sp, #0xc]
  2f5284: f603 243c    	addw	r4, r3, #0xa3c
  2f5288: 4b75         	ldr	r3, [pc, #0x1d4]        @ 0x2f5460 <AvatarRenderer::initRenderer()+0x1954>
  2f528a: 447b         	add	r3, pc
  2f528c: 4618         	mov	r0, r3
  2f528e: f2e3 f839    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e3072
  2f5292: 4603         	mov	r3, r0
  2f5294: 4618         	mov	r0, r3
  2f5296: f7e7 fd21    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x185be
  2f529a: 4603         	mov	r3, r0
  2f529c: 4620         	mov	r0, r4
  2f529e: 4619         	mov	r1, r3
  2f52a0: f29e f858    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e0b0
  2f52a4: 9b03         	ldr	r3, [sp, #0xc]
  2f52a6: f603 244c    	addw	r4, r3, #0xa4c
  2f52aa: ab04         	add	r3, sp, #0x10
  2f52ac: f04f 0200    	mov.w	r2, #0x0
  2f52b0: 9200         	str	r2, [sp]
  2f52b2: 4618         	mov	r0, r3
  2f52b4: f04f 0100    	mov.w	r1, #0x0
  2f52b8: f04f 0200    	mov.w	r2, #0x0
  2f52bc: f04f 0300    	mov.w	r3, #0x0
  2f52c0: f29e f80e    	bl	0x5932e0 <cocos2d::CCRect::CCRect(float, float, float, float)> @ imm = #0x29e01c
  2f52c4: ab04         	add	r3, sp, #0x10
  2f52c6: 4620         	mov	r0, r4
  2f52c8: 4619         	mov	r1, r3
  2f52ca: f29e f843    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e086
  2f52ce: 9b03         	ldr	r3, [sp, #0xc]
  2f52d0: f603 245c    	addw	r4, r3, #0xa5c
  2f52d4: ab04         	add	r3, sp, #0x10
  2f52d6: f04f 0200    	mov.w	r2, #0x0
  2f52da: 9200         	str	r2, [sp]
  2f52dc: 4618         	mov	r0, r3
  2f52de: f04f 0100    	mov.w	r1, #0x0
  2f52e2: f04f 0200    	mov.w	r2, #0x0
  2f52e6: f04f 0300    	mov.w	r3, #0x0
  2f52ea: f29d fff9    	bl	0x5932e0 <cocos2d::CCRect::CCRect(float, float, float, float)> @ imm = #0x29dff2
  2f52ee: ab04         	add	r3, sp, #0x10
  2f52f0: 4620         	mov	r0, r4
  2f52f2: 4619         	mov	r1, r3
  2f52f4: f29e f82e    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e05c
  2f52f8: 9b03         	ldr	r3, [sp, #0xc]
  2f52fa: f603 246c    	addw	r4, r3, #0xa6c
  2f52fe: ab04         	add	r3, sp, #0x10
  2f5300: f04f 0200    	mov.w	r2, #0x0
  2f5304: 9200         	str	r2, [sp]
  2f5306: 4618         	mov	r0, r3
  2f5308: f04f 0100    	mov.w	r1, #0x0
  2f530c: f04f 0200    	mov.w	r2, #0x0
  2f5310: f04f 0300    	mov.w	r3, #0x0
  2f5314: f29d ffe4    	bl	0x5932e0 <cocos2d::CCRect::CCRect(float, float, float, float)> @ imm = #0x29dfc8
  2f5318: ab04         	add	r3, sp, #0x10
  2f531a: 4620         	mov	r0, r4
  2f531c: 4619         	mov	r1, r3
  2f531e: f29e f819    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29e032
  2f5322: 9b03         	ldr	r3, [sp, #0xc]
  2f5324: f603 247c    	addw	r4, r3, #0xa7c
  2f5328: ab04         	add	r3, sp, #0x10
  2f532a: f04f 0200    	mov.w	r2, #0x0
  2f532e: 9200         	str	r2, [sp]
  2f5330: 4618         	mov	r0, r3
  2f5332: f04f 0100    	mov.w	r1, #0x0
  2f5336: f04f 0200    	mov.w	r2, #0x0
  2f533a: f04f 0300    	mov.w	r3, #0x0
  2f533e: f29d ffcf    	bl	0x5932e0 <cocos2d::CCRect::CCRect(float, float, float, float)> @ imm = #0x29df9e
  2f5342: ab04         	add	r3, sp, #0x10
  2f5344: e08e         	b	0x2f5464 <AvatarRenderer::initRenderer()+0x1958> @ imm = #0x11c
  2f5346: bf00         	nop
  2f5348: f64a 004c    	movw	r0, #0xa84c
  2f534c: f632 004c    	<unknown>
  2f5350: f61a 004c    	<unknown>
  2f5354: f602 004c    	addw	r0, r2, #0x84c
  2f5358: f5ea 004c    	<unknown>
  2f535c: f5d2 004c    	rsbs.w	r0, r2, #0xcc0000
  2f5360: f5ba 004c    	subs.w	r0, r10, #0xcc0000
  2f5364: f5a2 004c    	sub.w	r0, r2, #0xcc0000
  2f5368: f58a 004c    	<unknown>
  2f536c: f572 004c    	sbcs	r0, r2, #0xcc0000
  2f5370: f55a 004c    	adcs	r0, r10, #0xcc0000
  2f5374: f542 004c    	adc	r0, r2, #0xcc0000
  2f5378: f52a 004c    	<unknown>
  2f537c: f512 004c    	adds.w	r0, r2, #0xcc0000
  2f5380: f4fa 004c    	<unknown>
  2f5384: f4e2 004c    	<unknown>
  2f5388: f4ca 004c    	<unknown>
  2f538c: f4b2 004c    	<unknown>
  2f5390: f49a 004c    	eors	r0, r10, #0xcc0000
  2f5394: f482 004c    	eor	r0, r2, #0xcc0000
  2f5398: f46a 004c    	orn	r0, r10, #0xcc0000
  2f539c: f452 004c    	orrs	r0, r2, #0xcc0000
  2f53a0: f410 004c    	ands	r0, r0, #0xcc0000
  2f53a4: f3fc 004c    	<unknown>
  2f53a8: f3e8 004c    	<unknown>
  2f53ac: f3d4 004c    	<unknown>
  2f53b0: f3c0 004c    	ubfx	r0, r0, #0x1, #0xd
  2f53b4: f3ac 004c    	usat	r0, #0xc, r12, asr #1
  2f53b8: f398 004c    	<unknown>
  2f53bc: f35a 004c    	<unknown>
  2f53c0: f342 004c    	sbfx	r0, r2, #0x1, #0xd
  2f53c4: f32a 004c    	ssat	r0, #0xd, r10, asr #1
  2f53c8: f312 004c    	<unknown>
  2f53cc: f2fa 004c    	<unknown>
  2f53d0: f2e2 004c    	<unknown>
  2f53d4: f2ca 004c    	movt	r0, #0xa04c
  2f53d8: f2b2 004c    	<unknown>
  2f53dc: f270 004c    	<unknown>
  2f53e0: f25c 004c    	<unknown>
  2f53e4: f248 004c    	movw	r0, #0x804c
  2f53e8: f234 004c    	<unknown>
  2f53ec: f1f6 004c    	<unknown>
  2f53f0: f1de 004c    	rsbs.w	r0, lr, #0x4c
  2f53f4: f1c6 004c    	rsb.w	r0, r6, #0x4c
  2f53f8: f1ae 004c    	sub.w	r0, lr, #0x4c
  2f53fc: f196 004c    	<unknown>
  2f5400: f17e 004c    	sbcs	r0, lr, #0x4c
  2f5404: f166 004c    	sbc	r0, r6, #0x4c
  2f5408: f124 004c    	<unknown>
  2f540c: f110 004c    	adds.w	r0, r0, #0x4c
  2f5410: f0fc 004c    	<unknown>
  2f5414: f0e8 004c    	<unknown>
  2f5418: f0d4 004c    	<unknown>
  2f541c: f098 004c    	eors	r0, r8, #0x4c
  2f5420: f082 004c    	eor	r0, r2, #0x4c
  2f5424: f06c 004c    	orn	r0, r12, #0x4c
  2f5428: f056 004c    	orrs	r0, r6, #0x4c
  2f542c: f040 004c    	orr	r0, r0, #0x4c
  2f5430: f02a 004c    	bic	r0, r10, #0x4c
  2f5434: f014 004c    	ands	r0, r4, #0x4c
  2f5438: effe 004c    	vext.64	q8, q7, q6, #0x0
  2f543c: efe8 004c    	vmla.i32	d16, d8, d12[0]
  2f5440: efd2 004c    	vmla.i16	d16, d2, d4[1]
  2f5444: efbc 004c    	vext.64	q0, q6, q6, #0x0
  2f5448: efa6 004c    	vmla.i32	d0, d6, d12[0]
  2f544c: ef90 004c    	vmla.i16	d0, d0, d4[1]
  2f5450: ef7a 004c    	<unknown>
  2f5454: ef64 004c    	vhadd.s32	q8, q2, q6
  2f5458: ef4e 004c    	vhadd.s8	q8, q7, q6
  2f545c: ef38 004c    	<unknown>
  2f5460: ef22 004c    	vhadd.s32	q0, q1, q6
  2f5464: 4620         	mov	r0, r4
  2f5466: 4619         	mov	r1, r3
  2f5468: f29d ff74    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29dee8
  2f546c: 9b03         	ldr	r3, [sp, #0xc]
  2f546e: f603 248c    	addw	r4, r3, #0xa8c
  2f5472: ab04         	add	r3, sp, #0x10
  2f5474: f04f 0200    	mov.w	r2, #0x0
  2f5478: 9200         	str	r2, [sp]
  2f547a: 4618         	mov	r0, r3
  2f547c: f04f 0100    	mov.w	r1, #0x0
  2f5480: f04f 0200    	mov.w	r2, #0x0
  2f5484: f04f 0300    	mov.w	r3, #0x0
  2f5488: f29d ff2a    	bl	0x5932e0 <cocos2d::CCRect::CCRect(float, float, float, float)> @ imm = #0x29de54
  2f548c: ab04         	add	r3, sp, #0x10
  2f548e: 4620         	mov	r0, r4
  2f5490: 4619         	mov	r1, r3
  2f5492: f29d ff5f    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29debe
  2f5496: 9b03         	ldr	r3, [sp, #0xc]
  2f5498: f603 249c    	addw	r4, r3, #0xa9c
  2f549c: f8df 3bb8    	ldr.w	r3, [pc, #0xbb8]        @ 0x2f6058 <AvatarRenderer::initRenderer()+0x254c>
  2f54a0: 447b         	add	r3, pc
  2f54a2: 4618         	mov	r0, r3
  2f54a4: f2e2 ff2e    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e2e5c
  2f54a8: 4603         	mov	r3, r0
  2f54aa: 4618         	mov	r0, r3
  2f54ac: f7e7 fc16    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x187d4
  2f54b0: 4603         	mov	r3, r0
  2f54b2: 4620         	mov	r0, r4
  2f54b4: 4619         	mov	r1, r3
  2f54b6: f29d ff4d    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29de9a
  2f54ba: 9b03         	ldr	r3, [sp, #0xc]
  2f54bc: f603 24ac    	addw	r4, r3, #0xaac
  2f54c0: ab04         	add	r3, sp, #0x10
  2f54c2: f04f 0200    	mov.w	r2, #0x0
  2f54c6: 9200         	str	r2, [sp]
  2f54c8: 4618         	mov	r0, r3
  2f54ca: f04f 0100    	mov.w	r1, #0x0
  2f54ce: f04f 0200    	mov.w	r2, #0x0
  2f54d2: f04f 0300    	mov.w	r3, #0x0
  2f54d6: f29d ff03    	bl	0x5932e0 <cocos2d::CCRect::CCRect(float, float, float, float)> @ imm = #0x29de06
  2f54da: ab04         	add	r3, sp, #0x10
  2f54dc: 4620         	mov	r0, r4
  2f54de: 4619         	mov	r1, r3
  2f54e0: f29d ff38    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29de70
  2f54e4: 9b03         	ldr	r3, [sp, #0xc]
  2f54e6: f603 24bc    	addw	r4, r3, #0xabc
  2f54ea: ab04         	add	r3, sp, #0x10
  2f54ec: f04f 0200    	mov.w	r2, #0x0
  2f54f0: 9200         	str	r2, [sp]
  2f54f2: 4618         	mov	r0, r3
  2f54f4: f04f 0100    	mov.w	r1, #0x0
  2f54f8: f04f 0200    	mov.w	r2, #0x0
  2f54fc: f04f 0300    	mov.w	r3, #0x0
  2f5500: f29d feee    	bl	0x5932e0 <cocos2d::CCRect::CCRect(float, float, float, float)> @ imm = #0x29dddc
  2f5504: ab04         	add	r3, sp, #0x10
  2f5506: 4620         	mov	r0, r4
  2f5508: 4619         	mov	r1, r3
  2f550a: f29d ff23    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29de46
  2f550e: 9b03         	ldr	r3, [sp, #0xc]
  2f5510: f603 24cc    	addw	r4, r3, #0xacc
  2f5514: f8df 3b44    	ldr.w	r3, [pc, #0xb44]        @ 0x2f605c <AvatarRenderer::initRenderer()+0x2550>
  2f5518: 447b         	add	r3, pc
  2f551a: 4618         	mov	r0, r3
  2f551c: f2e2 fef2    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e2de4
  2f5520: 4603         	mov	r3, r0
  2f5522: 4618         	mov	r0, r3
  2f5524: f7e7 fbda    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x1884c
  2f5528: 4603         	mov	r3, r0
  2f552a: 4620         	mov	r0, r4
  2f552c: 4619         	mov	r1, r3
  2f552e: f29d ff11    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29de22
  2f5532: 9b03         	ldr	r3, [sp, #0xc]
  2f5534: f603 24dc    	addw	r4, r3, #0xadc
  2f5538: f8df 3b24    	ldr.w	r3, [pc, #0xb24]        @ 0x2f6060 <AvatarRenderer::initRenderer()+0x2554>
  2f553c: 447b         	add	r3, pc
  2f553e: 4618         	mov	r0, r3
  2f5540: f2e2 fee0    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e2dc0
  2f5544: 4603         	mov	r3, r0
  2f5546: 4618         	mov	r0, r3
  2f5548: f7e7 fbc8    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18870
  2f554c: 4603         	mov	r3, r0
  2f554e: 4620         	mov	r0, r4
  2f5550: 4619         	mov	r1, r3
  2f5552: f29d feff    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29ddfe
  2f5556: 9b03         	ldr	r3, [sp, #0xc]
  2f5558: f603 24ec    	addw	r4, r3, #0xaec
  2f555c: f8df 3b04    	ldr.w	r3, [pc, #0xb04]        @ 0x2f6064 <AvatarRenderer::initRenderer()+0x2558>
  2f5560: 447b         	add	r3, pc
  2f5562: 4618         	mov	r0, r3
  2f5564: f2e2 fece    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e2d9c
  2f5568: 4603         	mov	r3, r0
  2f556a: 4618         	mov	r0, r3
  2f556c: f7e7 fbb6    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18894
  2f5570: 4603         	mov	r3, r0
  2f5572: 4620         	mov	r0, r4
  2f5574: 4619         	mov	r1, r3
  2f5576: f29d feed    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29ddda
  2f557a: 9b03         	ldr	r3, [sp, #0xc]
  2f557c: f603 24fc    	addw	r4, r3, #0xafc
  2f5580: ab04         	add	r3, sp, #0x10
  2f5582: f04f 0200    	mov.w	r2, #0x0
  2f5586: 9200         	str	r2, [sp]
  2f5588: 4618         	mov	r0, r3
  2f558a: f04f 0100    	mov.w	r1, #0x0
  2f558e: f04f 0200    	mov.w	r2, #0x0
  2f5592: f04f 0300    	mov.w	r3, #0x0
  2f5596: f29d fea3    	bl	0x5932e0 <cocos2d::CCRect::CCRect(float, float, float, float)> @ imm = #0x29dd46
  2f559a: ab04         	add	r3, sp, #0x10
  2f559c: 4620         	mov	r0, r4
  2f559e: 4619         	mov	r1, r3
  2f55a0: f29d fed8    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29ddb0
  2f55a4: 9b03         	ldr	r3, [sp, #0xc]
  2f55a6: f603 340c    	addw	r4, r3, #0xb0c
  2f55aa: ab04         	add	r3, sp, #0x10
  2f55ac: f04f 0200    	mov.w	r2, #0x0
  2f55b0: 9200         	str	r2, [sp]
  2f55b2: 4618         	mov	r0, r3
  2f55b4: f04f 0100    	mov.w	r1, #0x0
  2f55b8: f04f 0200    	mov.w	r2, #0x0
  2f55bc: f04f 0300    	mov.w	r3, #0x0
  2f55c0: f29d fe8e    	bl	0x5932e0 <cocos2d::CCRect::CCRect(float, float, float, float)> @ imm = #0x29dd1c
  2f55c4: ab04         	add	r3, sp, #0x10
  2f55c6: 4620         	mov	r0, r4
  2f55c8: 4619         	mov	r1, r3
  2f55ca: f29d fec3    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29dd86
  2f55ce: 9b03         	ldr	r3, [sp, #0xc]
  2f55d0: f603 341c    	addw	r4, r3, #0xb1c
  2f55d4: ab04         	add	r3, sp, #0x10
  2f55d6: f04f 0200    	mov.w	r2, #0x0
  2f55da: 9200         	str	r2, [sp]
  2f55dc: 4618         	mov	r0, r3
  2f55de: f04f 0100    	mov.w	r1, #0x0
  2f55e2: f04f 0200    	mov.w	r2, #0x0
  2f55e6: f04f 0300    	mov.w	r3, #0x0
  2f55ea: f29d fe79    	bl	0x5932e0 <cocos2d::CCRect::CCRect(float, float, float, float)> @ imm = #0x29dcf2
  2f55ee: ab04         	add	r3, sp, #0x10
  2f55f0: 4620         	mov	r0, r4
  2f55f2: 4619         	mov	r1, r3
  2f55f4: f29d feae    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29dd5c
  2f55f8: 9b03         	ldr	r3, [sp, #0xc]
  2f55fa: f603 342c    	addw	r4, r3, #0xb2c
  2f55fe: f8df 3a68    	ldr.w	r3, [pc, #0xa68]        @ 0x2f6068 <AvatarRenderer::initRenderer()+0x255c>
  2f5602: 447b         	add	r3, pc
  2f5604: 4618         	mov	r0, r3
  2f5606: f2e2 fe7d    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e2cfa
  2f560a: 4603         	mov	r3, r0
  2f560c: 4618         	mov	r0, r3
  2f560e: f7e7 fb65    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18936
  2f5612: 4603         	mov	r3, r0
  2f5614: 4620         	mov	r0, r4
  2f5616: 4619         	mov	r1, r3
  2f5618: f29d fe9c    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29dd38
  2f561c: 9b03         	ldr	r3, [sp, #0xc]
  2f561e: f603 343c    	addw	r4, r3, #0xb3c
  2f5622: ab04         	add	r3, sp, #0x10
  2f5624: f04f 0200    	mov.w	r2, #0x0
  2f5628: 9200         	str	r2, [sp]
  2f562a: 4618         	mov	r0, r3
  2f562c: f04f 0100    	mov.w	r1, #0x0
  2f5630: f04f 0200    	mov.w	r2, #0x0
  2f5634: f04f 0300    	mov.w	r3, #0x0
  2f5638: f29d fe52    	bl	0x5932e0 <cocos2d::CCRect::CCRect(float, float, float, float)> @ imm = #0x29dca4
  2f563c: ab04         	add	r3, sp, #0x10
  2f563e: 4620         	mov	r0, r4
  2f5640: 4619         	mov	r1, r3
  2f5642: f29d fe87    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29dd0e
  2f5646: 9b03         	ldr	r3, [sp, #0xc]
  2f5648: f603 344c    	addw	r4, r3, #0xb4c
  2f564c: ab04         	add	r3, sp, #0x10
  2f564e: f04f 0200    	mov.w	r2, #0x0
  2f5652: 9200         	str	r2, [sp]
  2f5654: 4618         	mov	r0, r3
  2f5656: f04f 0100    	mov.w	r1, #0x0
  2f565a: f04f 0200    	mov.w	r2, #0x0
  2f565e: f04f 0300    	mov.w	r3, #0x0
  2f5662: f29d fe3d    	bl	0x5932e0 <cocos2d::CCRect::CCRect(float, float, float, float)> @ imm = #0x29dc7a
  2f5666: ab04         	add	r3, sp, #0x10
  2f5668: 4620         	mov	r0, r4
  2f566a: 4619         	mov	r1, r3
  2f566c: f29d fe72    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29dce4
  2f5670: 9b03         	ldr	r3, [sp, #0xc]
  2f5672: f603 345c    	addw	r4, r3, #0xb5c
  2f5676: ab04         	add	r3, sp, #0x10
  2f5678: f04f 0200    	mov.w	r2, #0x0
  2f567c: 9200         	str	r2, [sp]
  2f567e: 4618         	mov	r0, r3
  2f5680: f04f 0100    	mov.w	r1, #0x0
  2f5684: f04f 0200    	mov.w	r2, #0x0
  2f5688: f04f 0300    	mov.w	r3, #0x0
  2f568c: f29d fe28    	bl	0x5932e0 <cocos2d::CCRect::CCRect(float, float, float, float)> @ imm = #0x29dc50
  2f5690: ab04         	add	r3, sp, #0x10
  2f5692: 4620         	mov	r0, r4
  2f5694: 4619         	mov	r1, r3
  2f5696: f29d fe5d    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29dcba
  2f569a: 9b03         	ldr	r3, [sp, #0xc]
  2f569c: f603 346c    	addw	r4, r3, #0xb6c
  2f56a0: ab04         	add	r3, sp, #0x10
  2f56a2: f04f 0200    	mov.w	r2, #0x0
  2f56a6: 9200         	str	r2, [sp]
  2f56a8: 4618         	mov	r0, r3
  2f56aa: f04f 0100    	mov.w	r1, #0x0
  2f56ae: f04f 0200    	mov.w	r2, #0x0
  2f56b2: f04f 0300    	mov.w	r3, #0x0
  2f56b6: f29d fe13    	bl	0x5932e0 <cocos2d::CCRect::CCRect(float, float, float, float)> @ imm = #0x29dc26
  2f56ba: ab04         	add	r3, sp, #0x10
  2f56bc: 4620         	mov	r0, r4
  2f56be: 4619         	mov	r1, r3
  2f56c0: f29d fe48    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29dc90
  2f56c4: 9b03         	ldr	r3, [sp, #0xc]
  2f56c6: f603 347c    	addw	r4, r3, #0xb7c
  2f56ca: f8df 39a0    	ldr.w	r3, [pc, #0x9a0]        @ 0x2f606c <AvatarRenderer::initRenderer()+0x2560>
  2f56ce: 447b         	add	r3, pc
  2f56d0: 4618         	mov	r0, r3
  2f56d2: f2e2 fe17    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e2c2e
  2f56d6: 4603         	mov	r3, r0
  2f56d8: 4618         	mov	r0, r3
  2f56da: f7e7 faff    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18a02
  2f56de: 4603         	mov	r3, r0
  2f56e0: 4620         	mov	r0, r4
  2f56e2: 4619         	mov	r1, r3
  2f56e4: f29d fe36    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29dc6c
  2f56e8: 9b03         	ldr	r3, [sp, #0xc]
  2f56ea: f603 348c    	addw	r4, r3, #0xb8c
  2f56ee: f8df 3980    	ldr.w	r3, [pc, #0x980]        @ 0x2f6070 <AvatarRenderer::initRenderer()+0x2564>
  2f56f2: 447b         	add	r3, pc
  2f56f4: 4618         	mov	r0, r3
  2f56f6: f2e2 fe05    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e2c0a
  2f56fa: 4603         	mov	r3, r0
  2f56fc: 4618         	mov	r0, r3
  2f56fe: f7e7 faed    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18a26
  2f5702: 4603         	mov	r3, r0
  2f5704: 4620         	mov	r0, r4
  2f5706: 4619         	mov	r1, r3
  2f5708: f29d fe24    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29dc48
  2f570c: 9b03         	ldr	r3, [sp, #0xc]
  2f570e: f603 349c    	addw	r4, r3, #0xb9c
  2f5712: ab04         	add	r3, sp, #0x10
  2f5714: f04f 0200    	mov.w	r2, #0x0
  2f5718: 9200         	str	r2, [sp]
  2f571a: 4618         	mov	r0, r3
  2f571c: f04f 0100    	mov.w	r1, #0x0
  2f5720: f04f 0200    	mov.w	r2, #0x0
  2f5724: f04f 0300    	mov.w	r3, #0x0
  2f5728: f29d fdda    	bl	0x5932e0 <cocos2d::CCRect::CCRect(float, float, float, float)> @ imm = #0x29dbb4
  2f572c: ab04         	add	r3, sp, #0x10
  2f572e: 4620         	mov	r0, r4
  2f5730: 4619         	mov	r1, r3
  2f5732: f29d fe0f    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29dc1e
  2f5736: 9b03         	ldr	r3, [sp, #0xc]
  2f5738: f603 34ac    	addw	r4, r3, #0xbac
  2f573c: f8df 3934    	ldr.w	r3, [pc, #0x934]        @ 0x2f6074 <AvatarRenderer::initRenderer()+0x2568>
  2f5740: 447b         	add	r3, pc
  2f5742: 4618         	mov	r0, r3
  2f5744: f2e2 fdde    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e2bbc
  2f5748: 4603         	mov	r3, r0
  2f574a: 4618         	mov	r0, r3
  2f574c: f7e7 fac6    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18a74
  2f5750: 4603         	mov	r3, r0
  2f5752: 4620         	mov	r0, r4
  2f5754: 4619         	mov	r1, r3
  2f5756: f29d fdfd    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29dbfa
  2f575a: 9b03         	ldr	r3, [sp, #0xc]
  2f575c: f603 34bc    	addw	r4, r3, #0xbbc
  2f5760: f8df 3914    	ldr.w	r3, [pc, #0x914]        @ 0x2f6078 <AvatarRenderer::initRenderer()+0x256c>
  2f5764: 447b         	add	r3, pc
  2f5766: 4618         	mov	r0, r3
  2f5768: f2e2 fdcc    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e2b98
  2f576c: 4603         	mov	r3, r0
  2f576e: 4618         	mov	r0, r3
  2f5770: f7e7 fab4    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18a98
  2f5774: 4603         	mov	r3, r0
  2f5776: 4620         	mov	r0, r4
  2f5778: 4619         	mov	r1, r3
  2f577a: f29d fdeb    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29dbd6
  2f577e: 9b03         	ldr	r3, [sp, #0xc]
  2f5780: f603 34cc    	addw	r4, r3, #0xbcc
  2f5784: f8df 38f4    	ldr.w	r3, [pc, #0x8f4]        @ 0x2f607c <AvatarRenderer::initRenderer()+0x2570>
  2f5788: 447b         	add	r3, pc
  2f578a: 4618         	mov	r0, r3
  2f578c: f2e2 fdba    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e2b74
  2f5790: 4603         	mov	r3, r0
  2f5792: 4618         	mov	r0, r3
  2f5794: f7e7 faa2    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18abc
  2f5798: 4603         	mov	r3, r0
  2f579a: 4620         	mov	r0, r4
  2f579c: 4619         	mov	r1, r3
  2f579e: f29d fdd9    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29dbb2
  2f57a2: 9b03         	ldr	r3, [sp, #0xc]
  2f57a4: f603 34dc    	addw	r4, r3, #0xbdc
  2f57a8: f8df 38d4    	ldr.w	r3, [pc, #0x8d4]        @ 0x2f6080 <AvatarRenderer::initRenderer()+0x2574>
  2f57ac: 447b         	add	r3, pc
  2f57ae: 4618         	mov	r0, r3
  2f57b0: f2e2 fda8    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e2b50
  2f57b4: 4603         	mov	r3, r0
  2f57b6: 4618         	mov	r0, r3
  2f57b8: f7e7 fa90    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18ae0
  2f57bc: 4603         	mov	r3, r0
  2f57be: 4620         	mov	r0, r4
  2f57c0: 4619         	mov	r1, r3
  2f57c2: f29d fdc7    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29db8e
  2f57c6: 9b03         	ldr	r3, [sp, #0xc]
  2f57c8: f603 34ec    	addw	r4, r3, #0xbec
  2f57cc: f8df 38b4    	ldr.w	r3, [pc, #0x8b4]        @ 0x2f6084 <AvatarRenderer::initRenderer()+0x2578>
  2f57d0: 447b         	add	r3, pc
  2f57d2: 4618         	mov	r0, r3
  2f57d4: f2e2 fd96    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e2b2c
  2f57d8: 4603         	mov	r3, r0
  2f57da: 4618         	mov	r0, r3
  2f57dc: f7e7 fa7e    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18b04
  2f57e0: 4603         	mov	r3, r0
  2f57e2: 4620         	mov	r0, r4
  2f57e4: 4619         	mov	r1, r3
  2f57e6: f29d fdb5    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29db6a
  2f57ea: 9b03         	ldr	r3, [sp, #0xc]
  2f57ec: f603 34fc    	addw	r4, r3, #0xbfc
  2f57f0: f8df 3894    	ldr.w	r3, [pc, #0x894]        @ 0x2f6088 <AvatarRenderer::initRenderer()+0x257c>
  2f57f4: 447b         	add	r3, pc
  2f57f6: 4618         	mov	r0, r3
  2f57f8: f2e2 fd84    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e2b08
  2f57fc: 4603         	mov	r3, r0
  2f57fe: 4618         	mov	r0, r3
  2f5800: f7e7 fa6c    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18b28
  2f5804: 4603         	mov	r3, r0
  2f5806: 4620         	mov	r0, r4
  2f5808: 4619         	mov	r1, r3
  2f580a: f29d fda3    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29db46
  2f580e: 9b03         	ldr	r3, [sp, #0xc]
  2f5810: f603 440c    	addw	r4, r3, #0xc0c
  2f5814: f8df 3874    	ldr.w	r3, [pc, #0x874]        @ 0x2f608c <AvatarRenderer::initRenderer()+0x2580>
  2f5818: 447b         	add	r3, pc
  2f581a: 4618         	mov	r0, r3
  2f581c: f2e2 fd72    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e2ae4
  2f5820: 4603         	mov	r3, r0
  2f5822: 4618         	mov	r0, r3
  2f5824: f7e7 fa5a    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18b4c
  2f5828: 4603         	mov	r3, r0
  2f582a: 4620         	mov	r0, r4
  2f582c: 4619         	mov	r1, r3
  2f582e: f29d fd91    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29db22
  2f5832: 9b03         	ldr	r3, [sp, #0xc]
  2f5834: f603 441c    	addw	r4, r3, #0xc1c
  2f5838: f8df 3854    	ldr.w	r3, [pc, #0x854]        @ 0x2f6090 <AvatarRenderer::initRenderer()+0x2584>
  2f583c: 447b         	add	r3, pc
  2f583e: 4618         	mov	r0, r3
  2f5840: f2e2 fd60    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e2ac0
  2f5844: 4603         	mov	r3, r0
  2f5846: 4618         	mov	r0, r3
  2f5848: f7e7 fa48    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18b70
  2f584c: 4603         	mov	r3, r0
  2f584e: 4620         	mov	r0, r4
  2f5850: 4619         	mov	r1, r3
  2f5852: f29d fd7f    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29dafe
  2f5856: 9b03         	ldr	r3, [sp, #0xc]
  2f5858: f603 442c    	addw	r4, r3, #0xc2c
  2f585c: f8df 3834    	ldr.w	r3, [pc, #0x834]        @ 0x2f6094 <AvatarRenderer::initRenderer()+0x2588>
  2f5860: 447b         	add	r3, pc
  2f5862: 4618         	mov	r0, r3
  2f5864: f2e2 fd4e    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e2a9c
  2f5868: 4603         	mov	r3, r0
  2f586a: 4618         	mov	r0, r3
  2f586c: f7e7 fa36    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18b94
  2f5870: 4603         	mov	r3, r0
  2f5872: 4620         	mov	r0, r4
  2f5874: 4619         	mov	r1, r3
  2f5876: f29d fd6d    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29dada
  2f587a: 9b03         	ldr	r3, [sp, #0xc]
  2f587c: f603 443c    	addw	r4, r3, #0xc3c
  2f5880: f8df 3814    	ldr.w	r3, [pc, #0x814]        @ 0x2f6098 <AvatarRenderer::initRenderer()+0x258c>
  2f5884: 447b         	add	r3, pc
  2f5886: 4618         	mov	r0, r3
  2f5888: f2e2 fd3c    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e2a78
  2f588c: 4603         	mov	r3, r0
  2f588e: 4618         	mov	r0, r3
  2f5890: f7e7 fa24    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18bb8
  2f5894: 4603         	mov	r3, r0
  2f5896: 4620         	mov	r0, r4
  2f5898: 4619         	mov	r1, r3
  2f589a: f29d fd5b    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29dab6
  2f589e: 9b03         	ldr	r3, [sp, #0xc]
  2f58a0: f603 444c    	addw	r4, r3, #0xc4c
  2f58a4: ab04         	add	r3, sp, #0x10
  2f58a6: f04f 0200    	mov.w	r2, #0x0
  2f58aa: 9200         	str	r2, [sp]
  2f58ac: 4618         	mov	r0, r3
  2f58ae: f04f 0100    	mov.w	r1, #0x0
  2f58b2: f04f 0200    	mov.w	r2, #0x0
  2f58b6: f04f 0300    	mov.w	r3, #0x0
  2f58ba: f29d fd11    	bl	0x5932e0 <cocos2d::CCRect::CCRect(float, float, float, float)> @ imm = #0x29da22
  2f58be: ab04         	add	r3, sp, #0x10
  2f58c0: 4620         	mov	r0, r4
  2f58c2: 4619         	mov	r1, r3
  2f58c4: f29d fd46    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29da8c
  2f58c8: 9b03         	ldr	r3, [sp, #0xc]
  2f58ca: f603 445c    	addw	r4, r3, #0xc5c
  2f58ce: f8df 37cc    	ldr.w	r3, [pc, #0x7cc]        @ 0x2f609c <AvatarRenderer::initRenderer()+0x2590>
  2f58d2: 447b         	add	r3, pc
  2f58d4: 4618         	mov	r0, r3
  2f58d6: f2e2 fd15    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e2a2a
  2f58da: 4603         	mov	r3, r0
  2f58dc: 4618         	mov	r0, r3
  2f58de: f7e7 f9fd    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18c06
  2f58e2: 4603         	mov	r3, r0
  2f58e4: 4620         	mov	r0, r4
  2f58e6: 4619         	mov	r1, r3
  2f58e8: f29d fd34    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29da68
  2f58ec: 9b03         	ldr	r3, [sp, #0xc]
  2f58ee: f603 446c    	addw	r4, r3, #0xc6c
  2f58f2: f8df 37ac    	ldr.w	r3, [pc, #0x7ac]        @ 0x2f60a0 <AvatarRenderer::initRenderer()+0x2594>
  2f58f6: 447b         	add	r3, pc
  2f58f8: 4618         	mov	r0, r3
  2f58fa: f2e2 fd03    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e2a06
  2f58fe: 4603         	mov	r3, r0
  2f5900: 4618         	mov	r0, r3
  2f5902: f7e7 f9eb    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18c2a
  2f5906: 4603         	mov	r3, r0
  2f5908: 4620         	mov	r0, r4
  2f590a: 4619         	mov	r1, r3
  2f590c: f29d fd22    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29da44
  2f5910: 9b03         	ldr	r3, [sp, #0xc]
  2f5912: f603 447c    	addw	r4, r3, #0xc7c
  2f5916: f8df 378c    	ldr.w	r3, [pc, #0x78c]        @ 0x2f60a4 <AvatarRenderer::initRenderer()+0x2598>
  2f591a: 447b         	add	r3, pc
  2f591c: 4618         	mov	r0, r3
  2f591e: f2e2 fcf1    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e29e2
  2f5922: 4603         	mov	r3, r0
  2f5924: 4618         	mov	r0, r3
  2f5926: f7e7 f9d9    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18c4e
  2f592a: 4603         	mov	r3, r0
  2f592c: 4620         	mov	r0, r4
  2f592e: 4619         	mov	r1, r3
  2f5930: f29d fd10    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29da20
  2f5934: 9b03         	ldr	r3, [sp, #0xc]
  2f5936: f603 448c    	addw	r4, r3, #0xc8c
  2f593a: f8df 376c    	ldr.w	r3, [pc, #0x76c]        @ 0x2f60a8 <AvatarRenderer::initRenderer()+0x259c>
  2f593e: 447b         	add	r3, pc
  2f5940: 4618         	mov	r0, r3
  2f5942: f2e2 fcdf    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e29be
  2f5946: 4603         	mov	r3, r0
  2f5948: 4618         	mov	r0, r3
  2f594a: f7e7 f9c7    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18c72
  2f594e: 4603         	mov	r3, r0
  2f5950: 4620         	mov	r0, r4
  2f5952: 4619         	mov	r1, r3
  2f5954: f29d fcfe    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29d9fc
  2f5958: 9b03         	ldr	r3, [sp, #0xc]
  2f595a: f603 449c    	addw	r4, r3, #0xc9c
  2f595e: f8df 374c    	ldr.w	r3, [pc, #0x74c]        @ 0x2f60ac <AvatarRenderer::initRenderer()+0x25a0>
  2f5962: 447b         	add	r3, pc
  2f5964: 4618         	mov	r0, r3
  2f5966: f2e2 fccd    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e299a
  2f596a: 4603         	mov	r3, r0
  2f596c: 4618         	mov	r0, r3
  2f596e: f7e7 f9b5    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18c96
  2f5972: 4603         	mov	r3, r0
  2f5974: 4620         	mov	r0, r4
  2f5976: 4619         	mov	r1, r3
  2f5978: f29d fcec    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29d9d8
  2f597c: 9b03         	ldr	r3, [sp, #0xc]
  2f597e: f603 44ac    	addw	r4, r3, #0xcac
  2f5982: f8df 372c    	ldr.w	r3, [pc, #0x72c]        @ 0x2f60b0 <AvatarRenderer::initRenderer()+0x25a4>
  2f5986: 447b         	add	r3, pc
  2f5988: 4618         	mov	r0, r3
  2f598a: f2e2 fcbb    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e2976
  2f598e: 4603         	mov	r3, r0
  2f5990: 4618         	mov	r0, r3
  2f5992: f7e7 f9a3    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18cba
  2f5996: 4603         	mov	r3, r0
  2f5998: 4620         	mov	r0, r4
  2f599a: 4619         	mov	r1, r3
  2f599c: f29d fcda    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29d9b4
  2f59a0: 9b03         	ldr	r3, [sp, #0xc]
  2f59a2: f603 44bc    	addw	r4, r3, #0xcbc
  2f59a6: f8df 370c    	ldr.w	r3, [pc, #0x70c]        @ 0x2f60b4 <AvatarRenderer::initRenderer()+0x25a8>
  2f59aa: 447b         	add	r3, pc
  2f59ac: 4618         	mov	r0, r3
  2f59ae: f2e2 fca9    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e2952
  2f59b2: 4603         	mov	r3, r0
  2f59b4: 4618         	mov	r0, r3
  2f59b6: f7e7 f991    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18cde
  2f59ba: 4603         	mov	r3, r0
  2f59bc: 4620         	mov	r0, r4
  2f59be: 4619         	mov	r1, r3
  2f59c0: f29d fcc8    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29d990
  2f59c4: 9b03         	ldr	r3, [sp, #0xc]
  2f59c6: f603 44cc    	addw	r4, r3, #0xccc
  2f59ca: f8df 36ec    	ldr.w	r3, [pc, #0x6ec]        @ 0x2f60b8 <AvatarRenderer::initRenderer()+0x25ac>
  2f59ce: 447b         	add	r3, pc
  2f59d0: 4618         	mov	r0, r3
  2f59d2: f2e2 fc97    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e292e
  2f59d6: 4603         	mov	r3, r0
  2f59d8: 4618         	mov	r0, r3
  2f59da: f7e7 f97f    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18d02
  2f59de: 4603         	mov	r3, r0
  2f59e0: 4620         	mov	r0, r4
  2f59e2: 4619         	mov	r1, r3
  2f59e4: f29d fcb6    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29d96c
  2f59e8: 9b03         	ldr	r3, [sp, #0xc]
  2f59ea: f603 44dc    	addw	r4, r3, #0xcdc
  2f59ee: ab04         	add	r3, sp, #0x10
  2f59f0: f04f 0200    	mov.w	r2, #0x0
  2f59f4: 9200         	str	r2, [sp]
  2f59f6: 4618         	mov	r0, r3
  2f59f8: f04f 0100    	mov.w	r1, #0x0
  2f59fc: f04f 0200    	mov.w	r2, #0x0
  2f5a00: f04f 0300    	mov.w	r3, #0x0
  2f5a04: f29d fc6c    	bl	0x5932e0 <cocos2d::CCRect::CCRect(float, float, float, float)> @ imm = #0x29d8d8
  2f5a08: ab04         	add	r3, sp, #0x10
  2f5a0a: 4620         	mov	r0, r4
  2f5a0c: 4619         	mov	r1, r3
  2f5a0e: f29d fca1    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29d942
  2f5a12: 9b03         	ldr	r3, [sp, #0xc]
  2f5a14: f603 44ec    	addw	r4, r3, #0xcec
  2f5a18: f8df 36a0    	ldr.w	r3, [pc, #0x6a0]        @ 0x2f60bc <AvatarRenderer::initRenderer()+0x25b0>
  2f5a1c: 447b         	add	r3, pc
  2f5a1e: 4618         	mov	r0, r3
  2f5a20: f2e2 fc70    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e28e0
  2f5a24: 4603         	mov	r3, r0
  2f5a26: 4618         	mov	r0, r3
  2f5a28: f7e7 f958    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18d50
  2f5a2c: 4603         	mov	r3, r0
  2f5a2e: 4620         	mov	r0, r4
  2f5a30: 4619         	mov	r1, r3
  2f5a32: f29d fc8f    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29d91e
  2f5a36: 9b03         	ldr	r3, [sp, #0xc]
  2f5a38: f603 44fc    	addw	r4, r3, #0xcfc
  2f5a3c: f8df 3680    	ldr.w	r3, [pc, #0x680]        @ 0x2f60c0 <AvatarRenderer::initRenderer()+0x25b4>
  2f5a40: 447b         	add	r3, pc
  2f5a42: 4618         	mov	r0, r3
  2f5a44: f2e2 fc5e    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e28bc
  2f5a48: 4603         	mov	r3, r0
  2f5a4a: 4618         	mov	r0, r3
  2f5a4c: f7e7 f946    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18d74
  2f5a50: 4603         	mov	r3, r0
  2f5a52: 4620         	mov	r0, r4
  2f5a54: 4619         	mov	r1, r3
  2f5a56: f29d fc7d    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29d8fa
  2f5a5a: 9b03         	ldr	r3, [sp, #0xc]
  2f5a5c: f603 540c    	addw	r4, r3, #0xd0c
  2f5a60: f8df 3660    	ldr.w	r3, [pc, #0x660]        @ 0x2f60c4 <AvatarRenderer::initRenderer()+0x25b8>
  2f5a64: 447b         	add	r3, pc
  2f5a66: 4618         	mov	r0, r3
  2f5a68: f2e2 fc4c    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e2898
  2f5a6c: 4603         	mov	r3, r0
  2f5a6e: 4618         	mov	r0, r3
  2f5a70: f7e7 f934    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18d98
  2f5a74: 4603         	mov	r3, r0
  2f5a76: 4620         	mov	r0, r4
  2f5a78: 4619         	mov	r1, r3
  2f5a7a: f29d fc6b    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29d8d6
  2f5a7e: 9b03         	ldr	r3, [sp, #0xc]
  2f5a80: f603 541c    	addw	r4, r3, #0xd1c
  2f5a84: ab04         	add	r3, sp, #0x10
  2f5a86: f04f 0200    	mov.w	r2, #0x0
  2f5a8a: 9200         	str	r2, [sp]
  2f5a8c: 4618         	mov	r0, r3
  2f5a8e: f04f 0100    	mov.w	r1, #0x0
  2f5a92: f04f 0200    	mov.w	r2, #0x0
  2f5a96: f04f 0300    	mov.w	r3, #0x0
  2f5a9a: f29d fc21    	bl	0x5932e0 <cocos2d::CCRect::CCRect(float, float, float, float)> @ imm = #0x29d842
  2f5a9e: ab04         	add	r3, sp, #0x10
  2f5aa0: 4620         	mov	r0, r4
  2f5aa2: 4619         	mov	r1, r3
  2f5aa4: f29d fc56    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29d8ac
  2f5aa8: 9b03         	ldr	r3, [sp, #0xc]
  2f5aaa: f603 542c    	addw	r4, r3, #0xd2c
  2f5aae: f8df 3618    	ldr.w	r3, [pc, #0x618]        @ 0x2f60c8 <AvatarRenderer::initRenderer()+0x25bc>
  2f5ab2: 447b         	add	r3, pc
  2f5ab4: 4618         	mov	r0, r3
  2f5ab6: f2e2 fc25    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e284a
  2f5aba: 4603         	mov	r3, r0
  2f5abc: 4618         	mov	r0, r3
  2f5abe: f7e7 f90d    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18de6
  2f5ac2: 4603         	mov	r3, r0
  2f5ac4: 4620         	mov	r0, r4
  2f5ac6: 4619         	mov	r1, r3
  2f5ac8: f29d fc44    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29d888
  2f5acc: 9b03         	ldr	r3, [sp, #0xc]
  2f5ace: f603 543c    	addw	r4, r3, #0xd3c
  2f5ad2: f8df 35f8    	ldr.w	r3, [pc, #0x5f8]        @ 0x2f60cc <AvatarRenderer::initRenderer()+0x25c0>
  2f5ad6: 447b         	add	r3, pc
  2f5ad8: 4618         	mov	r0, r3
  2f5ada: f2e2 fc13    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e2826
  2f5ade: 4603         	mov	r3, r0
  2f5ae0: 4618         	mov	r0, r3
  2f5ae2: f7e7 f8fb    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18e0a
  2f5ae6: 4603         	mov	r3, r0
  2f5ae8: 4620         	mov	r0, r4
  2f5aea: 4619         	mov	r1, r3
  2f5aec: f29d fc32    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29d864
  2f5af0: 9b03         	ldr	r3, [sp, #0xc]
  2f5af2: f603 544c    	addw	r4, r3, #0xd4c
  2f5af6: f8df 35d8    	ldr.w	r3, [pc, #0x5d8]        @ 0x2f60d0 <AvatarRenderer::initRenderer()+0x25c4>
  2f5afa: 447b         	add	r3, pc
  2f5afc: 4618         	mov	r0, r3
  2f5afe: f2e2 fc01    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e2802
  2f5b02: 4603         	mov	r3, r0
  2f5b04: 4618         	mov	r0, r3
  2f5b06: f7e7 f8e9    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18e2e
  2f5b0a: 4603         	mov	r3, r0
  2f5b0c: 4620         	mov	r0, r4
  2f5b0e: 4619         	mov	r1, r3
  2f5b10: f29d fc20    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29d840
  2f5b14: 9b03         	ldr	r3, [sp, #0xc]
  2f5b16: f603 545c    	addw	r4, r3, #0xd5c
  2f5b1a: f8df 35b8    	ldr.w	r3, [pc, #0x5b8]        @ 0x2f60d4 <AvatarRenderer::initRenderer()+0x25c8>
  2f5b1e: 447b         	add	r3, pc
  2f5b20: 4618         	mov	r0, r3
  2f5b22: f2e2 fbef    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e27de
  2f5b26: 4603         	mov	r3, r0
  2f5b28: 4618         	mov	r0, r3
  2f5b2a: f7e7 f8d7    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18e52
  2f5b2e: 4603         	mov	r3, r0
  2f5b30: 4620         	mov	r0, r4
  2f5b32: 4619         	mov	r1, r3
  2f5b34: f29d fc0e    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29d81c
  2f5b38: 9b03         	ldr	r3, [sp, #0xc]
  2f5b3a: f603 546c    	addw	r4, r3, #0xd6c
  2f5b3e: f8df 3598    	ldr.w	r3, [pc, #0x598]        @ 0x2f60d8 <AvatarRenderer::initRenderer()+0x25cc>
  2f5b42: 447b         	add	r3, pc
  2f5b44: 4618         	mov	r0, r3
  2f5b46: f2e2 fbdd    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e27ba
  2f5b4a: 4603         	mov	r3, r0
  2f5b4c: 4618         	mov	r0, r3
  2f5b4e: f7e7 f8c5    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18e76
  2f5b52: 4603         	mov	r3, r0
  2f5b54: 4620         	mov	r0, r4
  2f5b56: 4619         	mov	r1, r3
  2f5b58: f29d fbfc    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29d7f8
  2f5b5c: 9b03         	ldr	r3, [sp, #0xc]
  2f5b5e: f603 547c    	addw	r4, r3, #0xd7c
  2f5b62: f8df 3578    	ldr.w	r3, [pc, #0x578]        @ 0x2f60dc <AvatarRenderer::initRenderer()+0x25d0>
  2f5b66: 447b         	add	r3, pc
  2f5b68: 4618         	mov	r0, r3
  2f5b6a: f2e2 fbcb    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e2796
  2f5b6e: 4603         	mov	r3, r0
  2f5b70: 4618         	mov	r0, r3
  2f5b72: f7e7 f8b3    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18e9a
  2f5b76: 4603         	mov	r3, r0
  2f5b78: 4620         	mov	r0, r4
  2f5b7a: 4619         	mov	r1, r3
  2f5b7c: f29d fbea    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29d7d4
  2f5b80: 9b03         	ldr	r3, [sp, #0xc]
  2f5b82: f603 548c    	addw	r4, r3, #0xd8c
  2f5b86: f8df 3558    	ldr.w	r3, [pc, #0x558]        @ 0x2f60e0 <AvatarRenderer::initRenderer()+0x25d4>
  2f5b8a: 447b         	add	r3, pc
  2f5b8c: 4618         	mov	r0, r3
  2f5b8e: f2e2 fbb9    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e2772
  2f5b92: 4603         	mov	r3, r0
  2f5b94: 4618         	mov	r0, r3
  2f5b96: f7e7 f8a1    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18ebe
  2f5b9a: 4603         	mov	r3, r0
  2f5b9c: 4620         	mov	r0, r4
  2f5b9e: 4619         	mov	r1, r3
  2f5ba0: f29d fbd8    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29d7b0
  2f5ba4: 9b03         	ldr	r3, [sp, #0xc]
  2f5ba6: f603 549c    	addw	r4, r3, #0xd9c
  2f5baa: f8df 3538    	ldr.w	r3, [pc, #0x538]        @ 0x2f60e4 <AvatarRenderer::initRenderer()+0x25d8>
  2f5bae: 447b         	add	r3, pc
  2f5bb0: 4618         	mov	r0, r3
  2f5bb2: f2e2 fba7    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e274e
  2f5bb6: 4603         	mov	r3, r0
  2f5bb8: 4618         	mov	r0, r3
  2f5bba: f7e7 f88f    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18ee2
  2f5bbe: 4603         	mov	r3, r0
  2f5bc0: 4620         	mov	r0, r4
  2f5bc2: 4619         	mov	r1, r3
  2f5bc4: f29d fbc6    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29d78c
  2f5bc8: 9b03         	ldr	r3, [sp, #0xc]
  2f5bca: f603 54ac    	addw	r4, r3, #0xdac
  2f5bce: f8df 3518    	ldr.w	r3, [pc, #0x518]        @ 0x2f60e8 <AvatarRenderer::initRenderer()+0x25dc>
  2f5bd2: 447b         	add	r3, pc
  2f5bd4: 4618         	mov	r0, r3
  2f5bd6: f2e2 fb95    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e272a
  2f5bda: 4603         	mov	r3, r0
  2f5bdc: 4618         	mov	r0, r3
  2f5bde: f7e7 f87d    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18f06
  2f5be2: 4603         	mov	r3, r0
  2f5be4: 4620         	mov	r0, r4
  2f5be6: 4619         	mov	r1, r3
  2f5be8: f29d fbb4    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29d768
  2f5bec: 9b03         	ldr	r3, [sp, #0xc]
  2f5bee: f603 54bc    	addw	r4, r3, #0xdbc
  2f5bf2: f8df 34f8    	ldr.w	r3, [pc, #0x4f8]        @ 0x2f60ec <AvatarRenderer::initRenderer()+0x25e0>
  2f5bf6: 447b         	add	r3, pc
  2f5bf8: 4618         	mov	r0, r3
  2f5bfa: f2e2 fb83    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e2706
  2f5bfe: 4603         	mov	r3, r0
  2f5c00: 4618         	mov	r0, r3
  2f5c02: f7e7 f86b    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18f2a
  2f5c06: 4603         	mov	r3, r0
  2f5c08: 4620         	mov	r0, r4
  2f5c0a: 4619         	mov	r1, r3
  2f5c0c: f29d fba2    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29d744
  2f5c10: 9b03         	ldr	r3, [sp, #0xc]
  2f5c12: f603 54cc    	addw	r4, r3, #0xdcc
  2f5c16: ab04         	add	r3, sp, #0x10
  2f5c18: f04f 0200    	mov.w	r2, #0x0
  2f5c1c: 9200         	str	r2, [sp]
  2f5c1e: 4618         	mov	r0, r3
  2f5c20: f04f 0100    	mov.w	r1, #0x0
  2f5c24: f04f 0200    	mov.w	r2, #0x0
  2f5c28: f04f 0300    	mov.w	r3, #0x0
  2f5c2c: f29d fb58    	bl	0x5932e0 <cocos2d::CCRect::CCRect(float, float, float, float)> @ imm = #0x29d6b0
  2f5c30: ab04         	add	r3, sp, #0x10
  2f5c32: 4620         	mov	r0, r4
  2f5c34: 4619         	mov	r1, r3
  2f5c36: f29d fb8d    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29d71a
  2f5c3a: 9b03         	ldr	r3, [sp, #0xc]
  2f5c3c: f603 54dc    	addw	r4, r3, #0xddc
  2f5c40: f8df 34ac    	ldr.w	r3, [pc, #0x4ac]        @ 0x2f60f0 <AvatarRenderer::initRenderer()+0x25e4>
  2f5c44: 447b         	add	r3, pc
  2f5c46: 4618         	mov	r0, r3
  2f5c48: f2e2 fb5c    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e26b8
  2f5c4c: 4603         	mov	r3, r0
  2f5c4e: 4618         	mov	r0, r3
  2f5c50: f7e7 f844    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18f78
  2f5c54: 4603         	mov	r3, r0
  2f5c56: 4620         	mov	r0, r4
  2f5c58: 4619         	mov	r1, r3
  2f5c5a: f29d fb7b    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29d6f6
  2f5c5e: 9b03         	ldr	r3, [sp, #0xc]
  2f5c60: f603 54ec    	addw	r4, r3, #0xdec
  2f5c64: f8df 348c    	ldr.w	r3, [pc, #0x48c]        @ 0x2f60f4 <AvatarRenderer::initRenderer()+0x25e8>
  2f5c68: 447b         	add	r3, pc
  2f5c6a: 4618         	mov	r0, r3
  2f5c6c: f2e2 fb4a    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e2694
  2f5c70: 4603         	mov	r3, r0
  2f5c72: 4618         	mov	r0, r3
  2f5c74: f7e7 f832    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18f9c
  2f5c78: 4603         	mov	r3, r0
  2f5c7a: 4620         	mov	r0, r4
  2f5c7c: 4619         	mov	r1, r3
  2f5c7e: f29d fb69    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29d6d2
  2f5c82: 9b03         	ldr	r3, [sp, #0xc]
  2f5c84: f603 54fc    	addw	r4, r3, #0xdfc
  2f5c88: f8df 346c    	ldr.w	r3, [pc, #0x46c]        @ 0x2f60f8 <AvatarRenderer::initRenderer()+0x25ec>
  2f5c8c: 447b         	add	r3, pc
  2f5c8e: 4618         	mov	r0, r3
  2f5c90: f2e2 fb38    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e2670
  2f5c94: 4603         	mov	r3, r0
  2f5c96: 4618         	mov	r0, r3
  2f5c98: f7e7 f820    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18fc0
  2f5c9c: 4603         	mov	r3, r0
  2f5c9e: 4620         	mov	r0, r4
  2f5ca0: 4619         	mov	r1, r3
  2f5ca2: f29d fb57    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29d6ae
  2f5ca6: 9b03         	ldr	r3, [sp, #0xc]
  2f5ca8: f603 640c    	addw	r4, r3, #0xe0c
  2f5cac: f8df 344c    	ldr.w	r3, [pc, #0x44c]        @ 0x2f60fc <AvatarRenderer::initRenderer()+0x25f0>
  2f5cb0: 447b         	add	r3, pc
  2f5cb2: 4618         	mov	r0, r3
  2f5cb4: f2e2 fb26    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e264c
  2f5cb8: 4603         	mov	r3, r0
  2f5cba: 4618         	mov	r0, r3
  2f5cbc: f7e7 f80e    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x18fe4
  2f5cc0: 4603         	mov	r3, r0
  2f5cc2: 4620         	mov	r0, r4
  2f5cc4: 4619         	mov	r1, r3
  2f5cc6: f29d fb45    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29d68a
  2f5cca: 9b03         	ldr	r3, [sp, #0xc]
  2f5ccc: f603 641c    	addw	r4, r3, #0xe1c
  2f5cd0: f8df 342c    	ldr.w	r3, [pc, #0x42c]        @ 0x2f6100 <AvatarRenderer::initRenderer()+0x25f4>
  2f5cd4: 447b         	add	r3, pc
  2f5cd6: 4618         	mov	r0, r3
  2f5cd8: f2e2 fb14    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e2628
  2f5cdc: 4603         	mov	r3, r0
  2f5cde: 4618         	mov	r0, r3
  2f5ce0: f7e6 fffc    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x19008
  2f5ce4: 4603         	mov	r3, r0
  2f5ce6: 4620         	mov	r0, r4
  2f5ce8: 4619         	mov	r1, r3
  2f5cea: f29d fb33    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29d666
  2f5cee: 9b03         	ldr	r3, [sp, #0xc]
  2f5cf0: f603 642c    	addw	r4, r3, #0xe2c
  2f5cf4: f8df 340c    	ldr.w	r3, [pc, #0x40c]        @ 0x2f6104 <AvatarRenderer::initRenderer()+0x25f8>
  2f5cf8: 447b         	add	r3, pc
  2f5cfa: 4618         	mov	r0, r3
  2f5cfc: f2e2 fb02    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e2604
  2f5d00: 4603         	mov	r3, r0
  2f5d02: 4618         	mov	r0, r3
  2f5d04: f7e6 ffea    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x1902c
  2f5d08: 4603         	mov	r3, r0
  2f5d0a: 4620         	mov	r0, r4
  2f5d0c: 4619         	mov	r1, r3
  2f5d0e: f29d fb21    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29d642
  2f5d12: 9b03         	ldr	r3, [sp, #0xc]
  2f5d14: f603 643c    	addw	r4, r3, #0xe3c
  2f5d18: 4bfb         	ldr	r3, [pc, #0x3ec]        @ 0x2f6108 <AvatarRenderer::initRenderer()+0x25fc>
  2f5d1a: 447b         	add	r3, pc
  2f5d1c: 4618         	mov	r0, r3
  2f5d1e: f2e2 faf1    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e25e2
  2f5d22: 4603         	mov	r3, r0
  2f5d24: 4618         	mov	r0, r3
  2f5d26: f7e6 ffd9    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x1904e
  2f5d2a: 4603         	mov	r3, r0
  2f5d2c: 4620         	mov	r0, r4
  2f5d2e: 4619         	mov	r1, r3
  2f5d30: f29d fb10    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29d620
  2f5d34: 9b03         	ldr	r3, [sp, #0xc]
  2f5d36: f603 644c    	addw	r4, r3, #0xe4c
  2f5d3a: 4bf4         	ldr	r3, [pc, #0x3d0]        @ 0x2f610c <AvatarRenderer::initRenderer()+0x2600>
  2f5d3c: 447b         	add	r3, pc
  2f5d3e: 4618         	mov	r0, r3
  2f5d40: f2e2 fae0    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e25c0
  2f5d44: 4603         	mov	r3, r0
  2f5d46: 4618         	mov	r0, r3
  2f5d48: f7e6 ffc8    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x19070
  2f5d4c: 4603         	mov	r3, r0
  2f5d4e: 4620         	mov	r0, r4
  2f5d50: 4619         	mov	r1, r3
  2f5d52: f29d faff    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29d5fe
  2f5d56: 9b03         	ldr	r3, [sp, #0xc]
  2f5d58: f603 645c    	addw	r4, r3, #0xe5c
  2f5d5c: 4bec         	ldr	r3, [pc, #0x3b0]        @ 0x2f6110 <AvatarRenderer::initRenderer()+0x2604>
  2f5d5e: 447b         	add	r3, pc
  2f5d60: 4618         	mov	r0, r3
  2f5d62: f2e2 facf    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e259e
  2f5d66: 4603         	mov	r3, r0
  2f5d68: 4618         	mov	r0, r3
  2f5d6a: f7e6 ffb7    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x19092
  2f5d6e: 4603         	mov	r3, r0
  2f5d70: 4620         	mov	r0, r4
  2f5d72: 4619         	mov	r1, r3
  2f5d74: f29d faee    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29d5dc
  2f5d78: 9b03         	ldr	r3, [sp, #0xc]
  2f5d7a: f603 646c    	addw	r4, r3, #0xe6c
  2f5d7e: 4be5         	ldr	r3, [pc, #0x394]        @ 0x2f6114 <AvatarRenderer::initRenderer()+0x2608>
  2f5d80: 447b         	add	r3, pc
  2f5d82: 4618         	mov	r0, r3
  2f5d84: f2e2 fabe    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e257c
  2f5d88: 4603         	mov	r3, r0
  2f5d8a: 4618         	mov	r0, r3
  2f5d8c: f7e6 ffa6    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x190b4
  2f5d90: 4603         	mov	r3, r0
  2f5d92: 4620         	mov	r0, r4
  2f5d94: 4619         	mov	r1, r3
  2f5d96: f29d fadd    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29d5ba
  2f5d9a: 9b03         	ldr	r3, [sp, #0xc]
  2f5d9c: f603 647c    	addw	r4, r3, #0xe7c
  2f5da0: 4bdd         	ldr	r3, [pc, #0x374]        @ 0x2f6118 <AvatarRenderer::initRenderer()+0x260c>
  2f5da2: 447b         	add	r3, pc
  2f5da4: 4618         	mov	r0, r3
  2f5da6: f2e2 faad    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e255a
  2f5daa: 4603         	mov	r3, r0
  2f5dac: 4618         	mov	r0, r3
  2f5dae: f7e6 ff95    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x190d6
  2f5db2: 4603         	mov	r3, r0
  2f5db4: 4620         	mov	r0, r4
  2f5db6: 4619         	mov	r1, r3
  2f5db8: f29d facc    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29d598
  2f5dbc: 9b03         	ldr	r3, [sp, #0xc]
  2f5dbe: f603 648c    	addw	r4, r3, #0xe8c
  2f5dc2: 4bd6         	ldr	r3, [pc, #0x358]        @ 0x2f611c <AvatarRenderer::initRenderer()+0x2610>
  2f5dc4: 447b         	add	r3, pc
  2f5dc6: 4618         	mov	r0, r3
  2f5dc8: f2e2 fa9c    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e2538
  2f5dcc: 4603         	mov	r3, r0
  2f5dce: 4618         	mov	r0, r3
  2f5dd0: f7e6 ff84    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x190f8
  2f5dd4: 4603         	mov	r3, r0
  2f5dd6: 4620         	mov	r0, r4
  2f5dd8: 4619         	mov	r1, r3
  2f5dda: f29d fabb    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29d576
  2f5dde: 9b03         	ldr	r3, [sp, #0xc]
  2f5de0: f603 64bc    	addw	r4, r3, #0xebc
  2f5de4: 4bce         	ldr	r3, [pc, #0x338]        @ 0x2f6120 <AvatarRenderer::initRenderer()+0x2614>
  2f5de6: 447b         	add	r3, pc
  2f5de8: 4618         	mov	r0, r3
  2f5dea: f2e2 fa8b    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e2516
  2f5dee: 4603         	mov	r3, r0
  2f5df0: 4618         	mov	r0, r3
  2f5df2: f7e6 ff73    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x1911a
  2f5df6: 4603         	mov	r3, r0
  2f5df8: 4620         	mov	r0, r4
  2f5dfa: 4619         	mov	r1, r3
  2f5dfc: f29d faaa    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29d554
  2f5e00: 9b03         	ldr	r3, [sp, #0xc]
  2f5e02: f603 64cc    	addw	r4, r3, #0xecc
  2f5e06: 4bc7         	ldr	r3, [pc, #0x31c]        @ 0x2f6124 <AvatarRenderer::initRenderer()+0x2618>
  2f5e08: 447b         	add	r3, pc
  2f5e0a: 4618         	mov	r0, r3
  2f5e0c: f2e2 fa7a    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e24f4
  2f5e10: 4603         	mov	r3, r0
  2f5e12: 4618         	mov	r0, r3
  2f5e14: f7e6 ff62    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x1913c
  2f5e18: 4603         	mov	r3, r0
  2f5e1a: 4620         	mov	r0, r4
  2f5e1c: 4619         	mov	r1, r3
  2f5e1e: f29d fa99    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29d532
  2f5e22: 9b03         	ldr	r3, [sp, #0xc]
  2f5e24: f603 649c    	addw	r4, r3, #0xe9c
  2f5e28: 4bbf         	ldr	r3, [pc, #0x2fc]        @ 0x2f6128 <AvatarRenderer::initRenderer()+0x261c>
  2f5e2a: 447b         	add	r3, pc
  2f5e2c: 4618         	mov	r0, r3
  2f5e2e: f2e2 fa69    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e24d2
  2f5e32: 4603         	mov	r3, r0
  2f5e34: 4618         	mov	r0, r3
  2f5e36: f7e6 ff51    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x1915e
  2f5e3a: 4603         	mov	r3, r0
  2f5e3c: 4620         	mov	r0, r4
  2f5e3e: 4619         	mov	r1, r3
  2f5e40: f29d fa88    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29d510
  2f5e44: 9b03         	ldr	r3, [sp, #0xc]
  2f5e46: f603 64ac    	addw	r4, r3, #0xeac
  2f5e4a: 4bb8         	ldr	r3, [pc, #0x2e0]        @ 0x2f612c <AvatarRenderer::initRenderer()+0x2620>
  2f5e4c: 447b         	add	r3, pc
  2f5e4e: 4618         	mov	r0, r3
  2f5e50: f2e2 fa58    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e24b0
  2f5e54: 4603         	mov	r3, r0
  2f5e56: 4618         	mov	r0, r3
  2f5e58: f7e6 ff40    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x19180
  2f5e5c: 4603         	mov	r3, r0
  2f5e5e: 4620         	mov	r0, r4
  2f5e60: 4619         	mov	r1, r3
  2f5e62: f29d fa77    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29d4ee
  2f5e66: 9c03         	ldr	r4, [sp, #0xc]
  2f5e68: 2000         	movs	r0, #0x0
  2f5e6a: 2100         	movs	r1, #0x0
  2f5e6c: 2200         	movs	r2, #0x0
  2f5e6e: f7fc fdad    	bl	0x2f29cc <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x170> @ imm = #-0x34a6
  2f5e72: 4603         	mov	r3, r0
  2f5e74: 461a         	mov	r2, r3
  2f5e76: f884 2edc    	strb.w	r2, [r4, #0xedc]
  2f5e7a: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  2f5e7e: f884 2edd    	strb.w	r2, [r4, #0xedd]
  2f5e82: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  2f5e86: f884 3ede    	strb.w	r3, [r4, #0xede]
  2f5e8a: 9c03         	ldr	r4, [sp, #0xc]
  2f5e8c: 2019         	movs	r0, #0x19
  2f5e8e: 2119         	movs	r1, #0x19
  2f5e90: 2219         	movs	r2, #0x19
  2f5e92: f7fc fd9b    	bl	0x2f29cc <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x170> @ imm = #-0x34ca
  2f5e96: 4603         	mov	r3, r0
  2f5e98: 461a         	mov	r2, r3
  2f5e9a: f884 2edf    	strb.w	r2, [r4, #0xedf]
  2f5e9e: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  2f5ea2: f884 2ee0    	strb.w	r2, [r4, #0xee0]
  2f5ea6: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  2f5eaa: f884 3ee1    	strb.w	r3, [r4, #0xee1]
  2f5eae: 9c03         	ldr	r4, [sp, #0xc]
  2f5eb0: 2032         	movs	r0, #0x32
  2f5eb2: 2132         	movs	r1, #0x32
  2f5eb4: 2232         	movs	r2, #0x32
  2f5eb6: f7fc fd89    	bl	0x2f29cc <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x170> @ imm = #-0x34ee
  2f5eba: 4603         	mov	r3, r0
  2f5ebc: 461a         	mov	r2, r3
  2f5ebe: f884 2ee2    	strb.w	r2, [r4, #0xee2]
  2f5ec2: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  2f5ec6: f884 2ee3    	strb.w	r2, [r4, #0xee3]
  2f5eca: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  2f5ece: f884 3ee4    	strb.w	r3, [r4, #0xee4]
  2f5ed2: 9c03         	ldr	r4, [sp, #0xc]
  2f5ed4: 2064         	movs	r0, #0x64
  2f5ed6: 2164         	movs	r1, #0x64
  2f5ed8: 2264         	movs	r2, #0x64
  2f5eda: f7fc fd77    	bl	0x2f29cc <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x170> @ imm = #-0x3512
  2f5ede: 4603         	mov	r3, r0
  2f5ee0: 461a         	mov	r2, r3
  2f5ee2: f884 2ee5    	strb.w	r2, [r4, #0xee5]
  2f5ee6: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  2f5eea: f884 2ee6    	strb.w	r2, [r4, #0xee6]
  2f5eee: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  2f5ef2: f884 3ee7    	strb.w	r3, [r4, #0xee7]
  2f5ef6: 9c03         	ldr	r4, [sp, #0xc]
  2f5ef8: 20ff         	movs	r0, #0xff
  2f5efa: 21ff         	movs	r1, #0xff
  2f5efc: 22ff         	movs	r2, #0xff
  2f5efe: f7fc fd65    	bl	0x2f29cc <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x170> @ imm = #-0x3536
  2f5f02: 4603         	mov	r3, r0
  2f5f04: 461a         	mov	r2, r3
  2f5f06: f884 2ee8    	strb.w	r2, [r4, #0xee8]
  2f5f0a: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  2f5f0e: f884 2ee9    	strb.w	r2, [r4, #0xee9]
  2f5f12: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  2f5f16: f884 3eea    	strb.w	r3, [r4, #0xeea]
  2f5f1a: 9c03         	ldr	r4, [sp, #0xc]
  2f5f1c: 2000         	movs	r0, #0x0
  2f5f1e: 2100         	movs	r1, #0x0
  2f5f20: 2200         	movs	r2, #0x0
  2f5f22: f7fc fd53    	bl	0x2f29cc <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x170> @ imm = #-0x355a
  2f5f26: 4603         	mov	r3, r0
  2f5f28: 461a         	mov	r2, r3
  2f5f2a: f884 2eeb    	strb.w	r2, [r4, #0xeeb]
  2f5f2e: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  2f5f32: f884 2eec    	strb.w	r2, [r4, #0xeec]
  2f5f36: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  2f5f3a: f884 3eed    	strb.w	r3, [r4, #0xeed]
  2f5f3e: 9c03         	ldr	r4, [sp, #0xc]
  2f5f40: 2019         	movs	r0, #0x19
  2f5f42: 2119         	movs	r1, #0x19
  2f5f44: 2219         	movs	r2, #0x19
  2f5f46: f7fc fd41    	bl	0x2f29cc <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x170> @ imm = #-0x357e
  2f5f4a: 4603         	mov	r3, r0
  2f5f4c: 461a         	mov	r2, r3
  2f5f4e: f884 2eee    	strb.w	r2, [r4, #0xeee]
  2f5f52: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  2f5f56: f884 2eef    	strb.w	r2, [r4, #0xeef]
  2f5f5a: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  2f5f5e: f884 3ef0    	strb.w	r3, [r4, #0xef0]
  2f5f62: 9c03         	ldr	r4, [sp, #0xc]
  2f5f64: 2032         	movs	r0, #0x32
  2f5f66: 2132         	movs	r1, #0x32
  2f5f68: 2232         	movs	r2, #0x32
  2f5f6a: f7fc fd2f    	bl	0x2f29cc <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x170> @ imm = #-0x35a2
  2f5f6e: 4603         	mov	r3, r0
  2f5f70: 461a         	mov	r2, r3
  2f5f72: f884 2ef1    	strb.w	r2, [r4, #0xef1]
  2f5f76: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  2f5f7a: f884 2ef2    	strb.w	r2, [r4, #0xef2]
  2f5f7e: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  2f5f82: f884 3ef3    	strb.w	r3, [r4, #0xef3]
  2f5f86: 9c03         	ldr	r4, [sp, #0xc]
  2f5f88: 2064         	movs	r0, #0x64
  2f5f8a: 2164         	movs	r1, #0x64
  2f5f8c: 2264         	movs	r2, #0x64
  2f5f8e: f7fc fd1d    	bl	0x2f29cc <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x170> @ imm = #-0x35c6
  2f5f92: 4603         	mov	r3, r0
  2f5f94: 461a         	mov	r2, r3
  2f5f96: f884 2ef4    	strb.w	r2, [r4, #0xef4]
  2f5f9a: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  2f5f9e: f884 2ef5    	strb.w	r2, [r4, #0xef5]
  2f5fa2: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  2f5fa6: f884 3ef6    	strb.w	r3, [r4, #0xef6]
  2f5faa: 9c03         	ldr	r4, [sp, #0xc]
  2f5fac: 20ff         	movs	r0, #0xff
  2f5fae: 21ff         	movs	r1, #0xff
  2f5fb0: 22ff         	movs	r2, #0xff
  2f5fb2: f7fc fd0b    	bl	0x2f29cc <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x170> @ imm = #-0x35ea
  2f5fb6: 4603         	mov	r3, r0
  2f5fb8: 461a         	mov	r2, r3
  2f5fba: f884 2ef7    	strb.w	r2, [r4, #0xef7]
  2f5fbe: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  2f5fc2: f884 2ef8    	strb.w	r2, [r4, #0xef8]
  2f5fc6: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  2f5fca: f884 3ef9    	strb.w	r3, [r4, #0xef9]
  2f5fce: 9b03         	ldr	r3, [sp, #0xc]
  2f5fd0: f603 64fc    	addw	r4, r3, #0xefc
  2f5fd4: ab04         	add	r3, sp, #0x10
  2f5fd6: f04f 0200    	mov.w	r2, #0x0
  2f5fda: 9200         	str	r2, [sp]
  2f5fdc: 4618         	mov	r0, r3
  2f5fde: f04f 0100    	mov.w	r1, #0x0
  2f5fe2: f04f 0200    	mov.w	r2, #0x0
  2f5fe6: f04f 0300    	mov.w	r3, #0x0
  2f5fea: f29d f979    	bl	0x5932e0 <cocos2d::CCRect::CCRect(float, float, float, float)> @ imm = #0x29d2f2
  2f5fee: ab04         	add	r3, sp, #0x10
  2f5ff0: 4620         	mov	r0, r4
  2f5ff2: 4619         	mov	r1, r3
  2f5ff4: f29d f9ae    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29d35c
  2f5ff8: 9b03         	ldr	r3, [sp, #0xc]
  2f5ffa: f603 740c    	addw	r4, r3, #0xf0c
  2f5ffe: 4b4c         	ldr	r3, [pc, #0x130]        @ 0x2f6130 <AvatarRenderer::initRenderer()+0x2624>
  2f6000: 447b         	add	r3, pc
  2f6002: 4618         	mov	r0, r3
  2f6004: f2e2 f97e    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e22fc
  2f6008: 4603         	mov	r3, r0
  2f600a: 4618         	mov	r0, r3
  2f600c: f7e6 fe66    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x19334
  2f6010: 4603         	mov	r3, r0
  2f6012: 4620         	mov	r0, r4
  2f6014: 4619         	mov	r1, r3
  2f6016: f29d f99d    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29d33a
  2f601a: 9b03         	ldr	r3, [sp, #0xc]
  2f601c: f603 741c    	addw	r4, r3, #0xf1c
  2f6020: 4b44         	ldr	r3, [pc, #0x110]        @ 0x2f6134 <AvatarRenderer::initRenderer()+0x2628>
  2f6022: 447b         	add	r3, pc
  2f6024: 4618         	mov	r0, r3
  2f6026: f2e2 f96d    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e22da
  2f602a: 4603         	mov	r3, r0
  2f602c: 4618         	mov	r0, r3
  2f602e: f7e6 fe55    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x19356
  2f6032: 4603         	mov	r3, r0
  2f6034: 4620         	mov	r0, r4
  2f6036: 4619         	mov	r1, r3
  2f6038: f29d f98c    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29d318
  2f603c: 9b03         	ldr	r3, [sp, #0xc]
  2f603e: f603 742c    	addw	r4, r3, #0xf2c
  2f6042: 4b3d         	ldr	r3, [pc, #0xf4]         @ 0x2f6138 <AvatarRenderer::initRenderer()+0x262c>
  2f6044: 447b         	add	r3, pc
  2f6046: 4618         	mov	r0, r3
  2f6048: f2e2 f95c    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e22b8
  2f604c: 4603         	mov	r3, r0
  2f604e: 4618         	mov	r0, r3
  2f6050: f7e6 fe44    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x19378
  2f6054: 4603         	mov	r3, r0
  2f6056: e071         	b	0x2f613c <AvatarRenderer::initRenderer()+0x2630> @ imm = #0xe2
  2f6058: ed18 004c    	ldc	p0, c0, [r8, #-304]
  2f605c: ecb0 004c    	ldc	p0, c0, [r0], #304
  2f6060: ec9c 004c    	ldc	p0, c0, [r12], {76}
  2f6064: ec88 004c    	stc	p0, c0, [r8], {76}
  2f6068: ebf6 004c    	<unknown>
  2f606c: eb3a 004c    	<unknown>
  2f6070: eb26 004c    	<unknown>
  2f6074: eae8 004c    	<unknown>
  2f6078: ead0 004c    	<unknown>
  2f607c: eab8 004c    	<unknown>
  2f6080: eaa0 004c    	<unknown>
  2f6084: ea88 004c    	eor.w	r0, r8, r12, lsl #1
  2f6088: ea70 004c    	orns	r0, r0, r12, lsl #1
  2f608c: ea58 004c    	orrs.w	r0, r8, r12, lsl #1
  2f6090: ea40 004c    	orr.w	r0, r0, r12, lsl #1
  2f6094: ea28 004c    	bic.w	r0, r8, r12, lsl #1
  2f6098: ea10 004c    	ands.w	r0, r0, r12, lsl #1
  2f609c: e9ce 004c    	strd	r0, r0, [lr, #304]
  2f60a0: e9b6 004c    	<unknown>
  2f60a4: e99e 004c    	<unknown>
  2f60a8: e986 004c    	<unknown>
  2f60ac: e96e 004c    	strd	r0, r0, [lr, #-304]!
  2f60b0: e956 004c    	ldrd	r0, r0, [r6, #-304]
  2f60b4: e93e 004c    	ldmdb	lr!, {r2, r3, r6}
  2f60b8: e926 004c    	stmdb	r6!, {r2, r3, r6}
  2f60bc: e8e4 004c    	strd	r0, r0, [r4], #304
  2f60c0: e8cc 004c    	<unknown>
  2f60c4: e8b8 004c    	ldm.w	r8!, {r2, r3, r6}
  2f60c8: e87a 004c    	ldrd	r0, r0, [r10], #-304
  2f60cc: e862 004c    	strd	r0, r0, [r2], #-304
  2f60d0: e84a 004c    	strex	r0, r0, [r10, #0x130]
  2f60d4: e832 004c    	<unknown>
  2f60d8: e81a 004c    	<unknown>
  2f60dc: e802 004c    	<unknown>
  2f60e0: e7ea         	b	0x2f60b8 <AvatarRenderer::initRenderer()+0x25ac> @ imm = #-0x2c
  2f60e2: 004c         	lsls	r4, r1, #0x1
  2f60e4: e7d2         	b	0x2f608c <AvatarRenderer::initRenderer()+0x2580> @ imm = #-0x5c
  2f60e6: 004c         	lsls	r4, r1, #0x1
  2f60e8: e7ba         	b	0x2f6060 <AvatarRenderer::initRenderer()+0x2554> @ imm = #-0x8c
  2f60ea: 004c         	lsls	r4, r1, #0x1
  2f60ec: e7a2         	b	0x2f6034 <AvatarRenderer::initRenderer()+0x2528> @ imm = #-0xbc
  2f60ee: 004c         	lsls	r4, r1, #0x1
  2f60f0: e760         	b	0x2f5fb4 <AvatarRenderer::initRenderer()+0x24a8> @ imm = #-0x140
  2f60f2: 004c         	lsls	r4, r1, #0x1
  2f60f4: e748         	b	0x2f5f88 <AvatarRenderer::initRenderer()+0x247c> @ imm = #-0x170
  2f60f6: 004c         	lsls	r4, r1, #0x1
  2f60f8: e730         	b	0x2f5f5c <AvatarRenderer::initRenderer()+0x2450> @ imm = #-0x1a0
  2f60fa: 004c         	lsls	r4, r1, #0x1
  2f60fc: e718         	b	0x2f5f30 <AvatarRenderer::initRenderer()+0x2424> @ imm = #-0x1d0
  2f60fe: 004c         	lsls	r4, r1, #0x1
  2f6100: e700         	b	0x2f5f04 <AvatarRenderer::initRenderer()+0x23f8> @ imm = #-0x200
  2f6102: 004c         	lsls	r4, r1, #0x1
  2f6104: e6e8         	b	0x2f5ed8 <AvatarRenderer::initRenderer()+0x23cc> @ imm = #-0x230
  2f6106: 004c         	lsls	r4, r1, #0x1
  2f6108: e6d2         	b	0x2f5eb0 <AvatarRenderer::initRenderer()+0x23a4> @ imm = #-0x25c
  2f610a: 004c         	lsls	r4, r1, #0x1
  2f610c: e6bc         	b	0x2f5e88 <AvatarRenderer::initRenderer()+0x237c> @ imm = #-0x288
  2f610e: 004c         	lsls	r4, r1, #0x1
  2f6110: e6a6         	b	0x2f5e60 <AvatarRenderer::initRenderer()+0x2354> @ imm = #-0x2b4
  2f6112: 004c         	lsls	r4, r1, #0x1
  2f6114: e690         	b	0x2f5e38 <AvatarRenderer::initRenderer()+0x232c> @ imm = #-0x2e0
  2f6116: 004c         	lsls	r4, r1, #0x1
  2f6118: e67a         	b	0x2f5e10 <AvatarRenderer::initRenderer()+0x2304> @ imm = #-0x30c
  2f611a: 004c         	lsls	r4, r1, #0x1
  2f611c: e664         	b	0x2f5de8 <AvatarRenderer::initRenderer()+0x22dc> @ imm = #-0x338
  2f611e: 004c         	lsls	r4, r1, #0x1
  2f6120: e64e         	b	0x2f5dc0 <AvatarRenderer::initRenderer()+0x22b4> @ imm = #-0x364
  2f6122: 004c         	lsls	r4, r1, #0x1
  2f6124: e638         	b	0x2f5d98 <AvatarRenderer::initRenderer()+0x228c> @ imm = #-0x390
  2f6126: 004c         	lsls	r4, r1, #0x1
  2f6128: e622         	b	0x2f5d70 <AvatarRenderer::initRenderer()+0x2264> @ imm = #-0x3bc
  2f612a: 004c         	lsls	r4, r1, #0x1
  2f612c: e610         	b	0x2f5d50 <AvatarRenderer::initRenderer()+0x2244> @ imm = #-0x3e0
  2f612e: 004c         	lsls	r4, r1, #0x1
  2f6130: e46c         	b	0x2f5a0c <AvatarRenderer::initRenderer()+0x1f00> @ imm = #-0x728
  2f6132: 004c         	lsls	r4, r1, #0x1
  2f6134: e456         	b	0x2f59e4 <AvatarRenderer::initRenderer()+0x1ed8> @ imm = #-0x754
  2f6136: 004c         	lsls	r4, r1, #0x1
  2f6138: e440         	b	0x2f59bc <AvatarRenderer::initRenderer()+0x1eb0> @ imm = #-0x780
  2f613a: 004c         	lsls	r4, r1, #0x1
  2f613c: 4620         	mov	r0, r4
  2f613e: 4619         	mov	r1, r3
  2f6140: f29d f908    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29d210
  2f6144: 9b03         	ldr	r3, [sp, #0xc]
  2f6146: f603 743c    	addw	r4, r3, #0xf3c
  2f614a: 4b19         	ldr	r3, [pc, #0x64]         @ 0x2f61b0 <AvatarRenderer::initRenderer()+0x26a4>
  2f614c: 447b         	add	r3, pc
  2f614e: 4618         	mov	r0, r3
  2f6150: f2e2 f8d8    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e21b0
  2f6154: 4603         	mov	r3, r0
  2f6156: 4618         	mov	r0, r3
  2f6158: f7e6 fdc0    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x19480
  2f615c: 4603         	mov	r3, r0
  2f615e: 4620         	mov	r0, r4
  2f6160: 4619         	mov	r1, r3
  2f6162: f29d f8f7    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29d1ee
  2f6166: 9b03         	ldr	r3, [sp, #0xc]
  2f6168: f603 744c    	addw	r4, r3, #0xf4c
  2f616c: 4b11         	ldr	r3, [pc, #0x44]         @ 0x2f61b4 <AvatarRenderer::initRenderer()+0x26a8>
  2f616e: 447b         	add	r3, pc
  2f6170: 4618         	mov	r0, r3
  2f6172: f2e2 f8c7    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e218e
  2f6176: 4603         	mov	r3, r0
  2f6178: 4618         	mov	r0, r3
  2f617a: f7e6 fdaf    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x194a2
  2f617e: 4603         	mov	r3, r0
  2f6180: 4620         	mov	r0, r4
  2f6182: 4619         	mov	r1, r3
  2f6184: f29d f8e6    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29d1cc
  2f6188: 9b03         	ldr	r3, [sp, #0xc]
  2f618a: f603 745c    	addw	r4, r3, #0xf5c
  2f618e: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x2f61b8 <AvatarRenderer::initRenderer()+0x26ac>
  2f6190: 447b         	add	r3, pc
  2f6192: 4618         	mov	r0, r3
  2f6194: f2e2 f8b6    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e216c
  2f6198: 4603         	mov	r3, r0
  2f619a: 4618         	mov	r0, r3
  2f619c: f7e6 fd9e    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x194c4
  2f61a0: 4603         	mov	r3, r0
  2f61a2: 4620         	mov	r0, r4
  2f61a4: 4619         	mov	r1, r3
  2f61a6: f29d f8d5    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x29d1aa
  2f61aa: b008         	add	sp, #0x20
  2f61ac: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2f61ad); words below are literal-pool data ---
  2f61ae: bf00         	nop
  2f61b0: e344         	b	0x2f683c <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0x5d4> @ imm = #0x688
  2f61b2: 004c         	lsls	r4, r1, #0x1
  2f61b4: e32e         	b	0x2f6814 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0x5ac> @ imm = #0x65c
  2f61b6: 004c         	lsls	r4, r1, #0x1
  2f61b8: e318         	b	0x2f67ec <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0x584> @ imm = #0x630
  2f61ba: 004c         	lsls	r4, r1, #0x1

// ==== AvatarRenderer::~AvatarRenderer
//      file offset 0x2f61bc (= ELF address; Ghidra 0x3061bc), 60 bytes, Thumb-2
  2f61bc: b500         	push	{lr}
  2f61be: b083         	sub	sp, #0xc
  2f61c0: 9001         	str	r0, [sp, #0x4]
  2f61c2: 490b         	ldr	r1, [pc, #0x2c]         @ 0x2f61f0 <AvatarRenderer::~AvatarRenderer()+0x34>
  2f61c4: 4479         	add	r1, pc
  2f61c6: 9b01         	ldr	r3, [sp, #0x4]
  2f61c8: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x2f61f4 <AvatarRenderer::~AvatarRenderer()+0x38>
  2f61ca: 588a         	ldr	r2, [r1, r2]
  2f61cc: 3208         	adds	r2, #0x8
  2f61ce: 601a         	str	r2, [r3]
  2f61d0: 9b01         	ldr	r3, [sp, #0x4]
  2f61d2: 4618         	mov	r0, r3
  2f61d4: f299 fb36    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x29966c
  2f61d8: 2300         	movs	r3, #0x0
  2f61da: 2b00         	cmp	r3, #0x0
  2f61dc: d002         	beq	0x2f61e4 <AvatarRenderer::~AvatarRenderer()+0x28> @ imm = #0x4
  2f61de: 9801         	ldr	r0, [sp, #0x4]
  2f61e0: f091 f760    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x491ec0
  2f61e4: 9b01         	ldr	r3, [sp, #0x4]
  2f61e6: 4618         	mov	r0, r3
  2f61e8: b003         	add	sp, #0xc
  2f61ea: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2f61ed); words below are literal-pool data ---
  2f61ee: bf00         	nop
  2f61f0: c844         	ldm	r0!, {r2, r6}
  2f61f2: 0063         	lsls	r3, r4, #0x1
  2f61f4: d8ec         	bhi	0x2f61d0 <AvatarRenderer::~AvatarRenderer()+0x14> @ imm = #-0x28
  2f61f6: ffff b500    	<unknown>

// ==== AvatarRenderer::~AvatarRenderer
//      file offset 0x2f61f8 (= ELF address; Ghidra 0x3061f8), 28 bytes, Thumb-2
  2f61f8: b500         	push	{lr}
  2f61fa: b083         	sub	sp, #0xc
  2f61fc: 9001         	str	r0, [sp, #0x4]
  2f61fe: 9801         	ldr	r0, [sp, #0x4]
  2f6200: f7ff ffdc    	bl	0x2f61bc <AvatarRenderer::~AvatarRenderer()> @ imm = #-0x48
  2f6204: 9801         	ldr	r0, [sp, #0x4]
  2f6206: f091 f74d    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x491e9a
  2f620a: 9b01         	ldr	r3, [sp, #0x4]
  2f620c: 4618         	mov	r0, r3
  2f620e: b003         	add	sp, #0xc
  2f6210: f85d fb04    	ldr	pc, [sp], #4

// ==== AvatarRenderer::intAtArrayIndex
//      file offset 0x2f6214 (= ELF address; Ghidra 0x306214), 82 bytes, Thumb-2
  2f6214: b500         	push	{lr}
  2f6216: b085         	sub	sp, #0x14
  2f6218: 9003         	str	r0, [sp, #0xc]
  2f621a: 9102         	str	r1, [sp, #0x8]
  2f621c: 9201         	str	r2, [sp, #0x4]
  2f621e: 9802         	ldr	r0, [sp, #0x8]
  2f6220: f2a3 ff5e    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x2a3ebc
  2f6224: 4602         	mov	r2, r0
  2f6226: 9b01         	ldr	r3, [sp, #0x4]
  2f6228: 429a         	cmp	r2, r3
  2f622a: d909         	bls	0x2f6240 <AvatarRenderer::intAtArrayIndex(cocos2d::CCArray*, int)+0x2c> @ imm = #0x12
  2f622c: 9b01         	ldr	r3, [sp, #0x4]
  2f622e: 9802         	ldr	r0, [sp, #0x8]
  2f6230: 4619         	mov	r1, r3
  2f6232: f2a3 ff75    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2a3eea
  2f6236: 4603         	mov	r3, r0
  2f6238: 2b00         	cmp	r3, #0x0
  2f623a: d001         	beq	0x2f6240 <AvatarRenderer::intAtArrayIndex(cocos2d::CCArray*, int)+0x2c> @ imm = #0x2
  2f623c: 2301         	movs	r3, #0x1
  2f623e: e000         	b	0x2f6242 <AvatarRenderer::intAtArrayIndex(cocos2d::CCArray*, int)+0x2e> @ imm = #0x0
  2f6240: 2300         	movs	r3, #0x0
  2f6242: 2b00         	cmp	r3, #0x0
  2f6244: d00a         	beq	0x2f625c <AvatarRenderer::intAtArrayIndex(cocos2d::CCArray*, int)+0x48> @ imm = #0x14
  2f6246: 9b01         	ldr	r3, [sp, #0x4]
  2f6248: 9802         	ldr	r0, [sp, #0x8]
  2f624a: 4619         	mov	r1, r3
  2f624c: f2a3 ff68    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2a3ed0
  2f6250: 4603         	mov	r3, r0
  2f6252: 4618         	mov	r0, r3
  2f6254: f2a3 faa4    	bl	0x5997a0 <cocos2d::CCString::intValue() const> @ imm = #0x2a3548
  2f6258: 4603         	mov	r3, r0
  2f625a: e000         	b	0x2f625e <AvatarRenderer::intAtArrayIndex(cocos2d::CCArray*, int)+0x4a> @ imm = #0x0
  2f625c: 2300         	movs	r3, #0x0
  2f625e: 4618         	mov	r0, r3
  2f6260: b005         	add	sp, #0x14
  2f6262: f85d fb04    	ldr	pc, [sp], #4

// ==== AvatarRenderer::getCustomHeadTexture
//      file offset 0x2f6268 (= ELF address; Ghidra 0x306268), 3590 bytes, Thumb-2
  2f6268: b510         	push	{r4, lr}
  2f626a: b0ac         	sub	sp, #0xb0
  2f626c: 9003         	str	r0, [sp, #0xc]
  2f626e: 9102         	str	r1, [sp, #0x8]
  2f6270: 9803         	ldr	r0, [sp, #0xc]
  2f6272: 9902         	ldr	r1, [sp, #0x8]
  2f6274: 2201         	movs	r2, #0x1
  2f6276: f7ff ffcd    	bl	0x2f6214 <AvatarRenderer::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0x66
  2f627a: 4603         	mov	r3, r0
  2f627c: 9304         	str	r3, [sp, #0x10]
  2f627e: 9803         	ldr	r0, [sp, #0xc]
  2f6280: 9902         	ldr	r1, [sp, #0x8]
  2f6282: 2202         	movs	r2, #0x2
  2f6284: f7ff ffc6    	bl	0x2f6214 <AvatarRenderer::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0x74
  2f6288: 4603         	mov	r3, r0
  2f628a: 9305         	str	r3, [sp, #0x14]
  2f628c: 9803         	ldr	r0, [sp, #0xc]
  2f628e: 9902         	ldr	r1, [sp, #0x8]
  2f6290: 2203         	movs	r2, #0x3
  2f6292: f7ff ffbf    	bl	0x2f6214 <AvatarRenderer::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0x82
  2f6296: 4603         	mov	r3, r0
  2f6298: 9306         	str	r3, [sp, #0x18]
  2f629a: 9803         	ldr	r0, [sp, #0xc]
  2f629c: 9902         	ldr	r1, [sp, #0x8]
  2f629e: 2204         	movs	r2, #0x4
  2f62a0: f7ff ffb8    	bl	0x2f6214 <AvatarRenderer::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0x90
  2f62a4: 4603         	mov	r3, r0
  2f62a6: 9307         	str	r3, [sp, #0x1c]
  2f62a8: 9803         	ldr	r0, [sp, #0xc]
  2f62aa: 9902         	ldr	r1, [sp, #0x8]
  2f62ac: 2205         	movs	r2, #0x5
  2f62ae: f7ff ffb1    	bl	0x2f6214 <AvatarRenderer::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0x9e
  2f62b2: 4603         	mov	r3, r0
  2f62b4: 9308         	str	r3, [sp, #0x20]
  2f62b6: 9803         	ldr	r0, [sp, #0xc]
  2f62b8: 9902         	ldr	r1, [sp, #0x8]
  2f62ba: 2206         	movs	r2, #0x6
  2f62bc: f7ff ffaa    	bl	0x2f6214 <AvatarRenderer::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0xac
  2f62c0: 4603         	mov	r3, r0
  2f62c2: 9309         	str	r3, [sp, #0x24]
  2f62c4: 9803         	ldr	r0, [sp, #0xc]
  2f62c6: 9902         	ldr	r1, [sp, #0x8]
  2f62c8: 2207         	movs	r2, #0x7
  2f62ca: f7ff ffa3    	bl	0x2f6214 <AvatarRenderer::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0xba
  2f62ce: 4603         	mov	r3, r0
  2f62d0: 930a         	str	r3, [sp, #0x28]
  2f62d2: 9803         	ldr	r0, [sp, #0xc]
  2f62d4: 9902         	ldr	r1, [sp, #0x8]
  2f62d6: 2208         	movs	r2, #0x8
  2f62d8: f7ff ff9c    	bl	0x2f6214 <AvatarRenderer::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0xc8
  2f62dc: 4603         	mov	r3, r0
  2f62de: 930b         	str	r3, [sp, #0x2c]
  2f62e0: 9803         	ldr	r0, [sp, #0xc]
  2f62e2: 9902         	ldr	r1, [sp, #0x8]
  2f62e4: 2209         	movs	r2, #0x9
  2f62e6: f7ff ff95    	bl	0x2f6214 <AvatarRenderer::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0xd6
  2f62ea: 4603         	mov	r3, r0
  2f62ec: 930c         	str	r3, [sp, #0x30]
  2f62ee: 9803         	ldr	r0, [sp, #0xc]
  2f62f0: 9902         	ldr	r1, [sp, #0x8]
  2f62f2: 220a         	movs	r2, #0xa
  2f62f4: f7ff ff8e    	bl	0x2f6214 <AvatarRenderer::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0xe4
  2f62f8: 4603         	mov	r3, r0
  2f62fa: 930d         	str	r3, [sp, #0x34]
  2f62fc: 9803         	ldr	r0, [sp, #0xc]
  2f62fe: 9902         	ldr	r1, [sp, #0x8]
  2f6300: 220b         	movs	r2, #0xb
  2f6302: f7ff ff87    	bl	0x2f6214 <AvatarRenderer::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0xf2
  2f6306: 4603         	mov	r3, r0
  2f6308: 930e         	str	r3, [sp, #0x38]
  2f630a: 9803         	ldr	r0, [sp, #0xc]
  2f630c: 9902         	ldr	r1, [sp, #0x8]
  2f630e: 220c         	movs	r2, #0xc
  2f6310: f7ff ff80    	bl	0x2f6214 <AvatarRenderer::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0x100
  2f6314: 4603         	mov	r3, r0
  2f6316: 930f         	str	r3, [sp, #0x3c]
  2f6318: 9803         	ldr	r0, [sp, #0xc]
  2f631a: 9902         	ldr	r1, [sp, #0x8]
  2f631c: 220d         	movs	r2, #0xd
  2f631e: f7ff ff79    	bl	0x2f6214 <AvatarRenderer::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0x10e
  2f6322: 4603         	mov	r3, r0
  2f6324: 9310         	str	r3, [sp, #0x40]
  2f6326: 9803         	ldr	r0, [sp, #0xc]
  2f6328: 9902         	ldr	r1, [sp, #0x8]
  2f632a: 220e         	movs	r2, #0xe
  2f632c: f7ff ff72    	bl	0x2f6214 <AvatarRenderer::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0x11c
  2f6330: 4603         	mov	r3, r0
  2f6332: 9311         	str	r3, [sp, #0x44]
  2f6334: 2303         	movs	r3, #0x3
  2f6336: 1e5a         	subs	r2, r3, #0x1
  2f6338: 9b04         	ldr	r3, [sp, #0x10]
  2f633a: 429a         	cmp	r2, r3
  2f633c: d302         	blo	0x2f6344 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0xdc> @ imm = #0x4
  2f633e: 9b04         	ldr	r3, [sp, #0x10]
  2f6340: 2b00         	cmp	r3, #0x0
  2f6342: da01         	bge	0x2f6348 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0xe0> @ imm = #0x2
  2f6344: 2300         	movs	r3, #0x0
  2f6346: 9304         	str	r3, [sp, #0x10]
  2f6348: 2311         	movs	r3, #0x11
  2f634a: 1e5a         	subs	r2, r3, #0x1
  2f634c: 9b06         	ldr	r3, [sp, #0x18]
  2f634e: 429a         	cmp	r2, r3
  2f6350: d302         	blo	0x2f6358 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0xf0> @ imm = #0x4
  2f6352: 9b06         	ldr	r3, [sp, #0x18]
  2f6354: 2b00         	cmp	r3, #0x0
  2f6356: da01         	bge	0x2f635c <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0xf4> @ imm = #0x2
  2f6358: 2300         	movs	r3, #0x0
  2f635a: 9306         	str	r3, [sp, #0x18]
  2f635c: 230d         	movs	r3, #0xd
  2f635e: 1e5a         	subs	r2, r3, #0x1
  2f6360: 9b07         	ldr	r3, [sp, #0x1c]
  2f6362: 429a         	cmp	r2, r3
  2f6364: d302         	blo	0x2f636c <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0x104> @ imm = #0x4
  2f6366: 9b07         	ldr	r3, [sp, #0x1c]
  2f6368: 2b00         	cmp	r3, #0x0
  2f636a: da01         	bge	0x2f6370 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0x108> @ imm = #0x2
  2f636c: 2300         	movs	r3, #0x0
  2f636e: 9307         	str	r3, [sp, #0x1c]
  2f6370: 2313         	movs	r3, #0x13
  2f6372: 1e5a         	subs	r2, r3, #0x1
  2f6374: 9b09         	ldr	r3, [sp, #0x24]
  2f6376: 429a         	cmp	r2, r3
  2f6378: d302         	blo	0x2f6380 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0x118> @ imm = #0x4
  2f637a: 9b09         	ldr	r3, [sp, #0x24]
  2f637c: 2b00         	cmp	r3, #0x0
  2f637e: da01         	bge	0x2f6384 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0x11c> @ imm = #0x2
  2f6380: 2300         	movs	r3, #0x0
  2f6382: 9309         	str	r3, [sp, #0x24]
  2f6384: 2322         	movs	r3, #0x22
  2f6386: 1e5a         	subs	r2, r3, #0x1
  2f6388: 9b0a         	ldr	r3, [sp, #0x28]
  2f638a: 429a         	cmp	r2, r3
  2f638c: d302         	blo	0x2f6394 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0x12c> @ imm = #0x4
  2f638e: 9b0a         	ldr	r3, [sp, #0x28]
  2f6390: 2b00         	cmp	r3, #0x0
  2f6392: da01         	bge	0x2f6398 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0x130> @ imm = #0x2
  2f6394: 2300         	movs	r3, #0x0
  2f6396: 930a         	str	r3, [sp, #0x28]
  2f6398: 2308         	movs	r3, #0x8
  2f639a: 1e5a         	subs	r2, r3, #0x1
  2f639c: 9b0b         	ldr	r3, [sp, #0x2c]
  2f639e: 429a         	cmp	r2, r3
  2f63a0: d302         	blo	0x2f63a8 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0x140> @ imm = #0x4
  2f63a2: 9b0b         	ldr	r3, [sp, #0x2c]
  2f63a4: 2b00         	cmp	r3, #0x0
  2f63a6: da01         	bge	0x2f63ac <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0x144> @ imm = #0x2
  2f63a8: 2300         	movs	r3, #0x0
  2f63aa: 930b         	str	r3, [sp, #0x2c]
  2f63ac: 2309         	movs	r3, #0x9
  2f63ae: 1e5a         	subs	r2, r3, #0x1
  2f63b0: 9b0c         	ldr	r3, [sp, #0x30]
  2f63b2: 429a         	cmp	r2, r3
  2f63b4: d302         	blo	0x2f63bc <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0x154> @ imm = #0x4
  2f63b6: 9b0c         	ldr	r3, [sp, #0x30]
  2f63b8: 2b00         	cmp	r3, #0x0
  2f63ba: da01         	bge	0x2f63c0 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0x158> @ imm = #0x2
  2f63bc: 2300         	movs	r3, #0x0
  2f63be: 930c         	str	r3, [sp, #0x30]
  2f63c0: 2308         	movs	r3, #0x8
  2f63c2: 1e5a         	subs	r2, r3, #0x1
  2f63c4: 9b0e         	ldr	r3, [sp, #0x38]
  2f63c6: 429a         	cmp	r2, r3
  2f63c8: d302         	blo	0x2f63d0 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0x168> @ imm = #0x4
  2f63ca: 9b0e         	ldr	r3, [sp, #0x38]
  2f63cc: 2b00         	cmp	r3, #0x0
  2f63ce: da01         	bge	0x2f63d4 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0x16c> @ imm = #0x2
  2f63d0: 2300         	movs	r3, #0x0
  2f63d2: 930e         	str	r3, [sp, #0x38]
  2f63d4: 2305         	movs	r3, #0x5
  2f63d6: 1e5a         	subs	r2, r3, #0x1
  2f63d8: 9b0f         	ldr	r3, [sp, #0x3c]
  2f63da: 429a         	cmp	r2, r3
  2f63dc: d302         	blo	0x2f63e4 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0x17c> @ imm = #0x4
  2f63de: 9b0f         	ldr	r3, [sp, #0x3c]
  2f63e0: 2b00         	cmp	r3, #0x0
  2f63e2: da01         	bge	0x2f63e8 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0x180> @ imm = #0x2
  2f63e4: 2300         	movs	r3, #0x0
  2f63e6: 930f         	str	r3, [sp, #0x3c]
  2f63e8: 2306         	movs	r3, #0x6
  2f63ea: 1e5a         	subs	r2, r3, #0x1
  2f63ec: 9b10         	ldr	r3, [sp, #0x40]
  2f63ee: 429a         	cmp	r2, r3
  2f63f0: d302         	blo	0x2f63f8 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0x190> @ imm = #0x4
  2f63f2: 9b10         	ldr	r3, [sp, #0x40]
  2f63f4: 2b00         	cmp	r3, #0x0
  2f63f6: da01         	bge	0x2f63fc <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0x194> @ imm = #0x2
  2f63f8: 2300         	movs	r3, #0x0
  2f63fa: 9310         	str	r3, [sp, #0x40]
  2f63fc: 2313         	movs	r3, #0x13
  2f63fe: 1e5a         	subs	r2, r3, #0x1
  2f6400: 9b11         	ldr	r3, [sp, #0x44]
  2f6402: 429a         	cmp	r2, r3
  2f6404: d302         	blo	0x2f640c <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0x1a4> @ imm = #0x4
  2f6406: 9b11         	ldr	r3, [sp, #0x44]
  2f6408: 2b00         	cmp	r3, #0x0
  2f640a: da01         	bge	0x2f6410 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0x1a8> @ imm = #0x2
  2f640c: 2300         	movs	r3, #0x0
  2f640e: 9311         	str	r3, [sp, #0x44]
  2f6410: 2313         	movs	r3, #0x13
  2f6412: 1e5a         	subs	r2, r3, #0x1
  2f6414: 9b11         	ldr	r3, [sp, #0x44]
  2f6416: 429a         	cmp	r2, r3
  2f6418: d302         	blo	0x2f6420 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0x1b8> @ imm = #0x4
  2f641a: 9b11         	ldr	r3, [sp, #0x44]
  2f641c: 2b00         	cmp	r3, #0x0
  2f641e: da01         	bge	0x2f6424 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0x1bc> @ imm = #0x2
  2f6420: 2300         	movs	r3, #0x0
  2f6422: 9311         	str	r3, [sp, #0x44]
  2f6424: 2309         	movs	r3, #0x9
  2f6426: 1e5a         	subs	r2, r3, #0x1
  2f6428: 9b0d         	ldr	r3, [sp, #0x34]
  2f642a: 429a         	cmp	r2, r3
  2f642c: d302         	blo	0x2f6434 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0x1cc> @ imm = #0x4
  2f642e: 9b0d         	ldr	r3, [sp, #0x34]
  2f6430: 2b00         	cmp	r3, #0x0
  2f6432: da01         	bge	0x2f6438 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0x1d0> @ imm = #0x2
  2f6434: 2300         	movs	r3, #0x0
  2f6436: 930d         	str	r3, [sp, #0x34]
  2f6438: 2309         	movs	r3, #0x9
  2f643a: 1e5a         	subs	r2, r3, #0x1
  2f643c: 9b08         	ldr	r3, [sp, #0x20]
  2f643e: 429a         	cmp	r2, r3
  2f6440: d302         	blo	0x2f6448 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0x1e0> @ imm = #0x4
  2f6442: 9b08         	ldr	r3, [sp, #0x20]
  2f6444: 2b00         	cmp	r3, #0x0
  2f6446: da01         	bge	0x2f644c <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0x1e4> @ imm = #0x2
  2f6448: 2300         	movs	r3, #0x0
  2f644a: 9308         	str	r3, [sp, #0x20]
  2f644c: 2304         	movs	r3, #0x4
  2f644e: 1e5a         	subs	r2, r3, #0x1
  2f6450: 9b05         	ldr	r3, [sp, #0x14]
  2f6452: 429a         	cmp	r2, r3
  2f6454: d302         	blo	0x2f645c <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0x1f4> @ imm = #0x4
  2f6456: 9b05         	ldr	r3, [sp, #0x14]
  2f6458: 2b00         	cmp	r3, #0x0
  2f645a: da01         	bge	0x2f6460 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0x1f8> @ imm = #0x2
  2f645c: 2300         	movs	r3, #0x0
  2f645e: 9305         	str	r3, [sp, #0x14]
  2f6460: 2046         	movs	r0, #0x46
  2f6462: 2146         	movs	r1, #0x46
  2f6464: f2c6 f8e4    	bl	0x5bc630 <cocos2d::CCRenderTexture::create(int, int)> @ imm = #0x2c61c8
  2f6468: 4603         	mov	r3, r0
  2f646a: 9312         	str	r3, [sp, #0x48]
  2f646c: 9b12         	ldr	r3, [sp, #0x48]
  2f646e: 681b         	ldr	r3, [r3]
  2f6470: f503 73ce    	add.w	r3, r3, #0x19c
  2f6474: 681b         	ldr	r3, [r3]
  2f6476: 9812         	ldr	r0, [sp, #0x48]
  2f6478: 4798         	blx	r3
  2f647a: 4603         	mov	r3, r0
  2f647c: 4618         	mov	r0, r3
  2f647e: f7e6 fc2d    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x197a6
  2f6482: 4603         	mov	r3, r0
  2f6484: aa28         	add	r2, sp, #0xa0
  2f6486: 4610         	mov	r0, r2
  2f6488: 4619         	mov	r1, r3
  2f648a: f29c ff45    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x29ce8a
  2f648e: ed9d 7a2a    	vldr	s14, [sp, #168]
  2f6492: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2f6496: eec7 7a27    	vdiv.f32	s15, s14, s15
  2f649a: eefd 7ae7    	vcvt.s32.f32	s15, s15
  2f649e: eef8 6ae7    	vcvt.f32.s32	s13, s15
  2f64a2: ed9d 7a2b    	vldr	s14, [sp, #172]
  2f64a6: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2f64aa: eec7 7a27    	vdiv.f32	s15, s14, s15
  2f64ae: eefd 7ae7    	vcvt.s32.f32	s15, s15
  2f64b2: eef8 7ae7    	vcvt.f32.s32	s15, s15
  2f64b6: ab22         	add	r3, sp, #0x88
  2f64b8: 4618         	mov	r0, r3
  2f64ba: ee16 1a90    	vmov	r1, s13
  2f64be: ee17 2a90    	vmov	r2, s15
  2f64c2: f29c fc15    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29c82a
  2f64c6: 9b04         	ldr	r3, [sp, #0x10]
  2f64c8: 330e         	adds	r3, #0xe
  2f64ca: 011b         	lsls	r3, r3, #0x4
  2f64cc: 9a03         	ldr	r2, [sp, #0xc]
  2f64ce: 4413         	add	r3, r2
  2f64d0: 3304         	adds	r3, #0x4
  2f64d2: f8df 2a34    	ldr.w	r2, [pc, #0xa34]        @ 0x2f6f08 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0xca0>
  2f64d6: 447a         	add	r2, pc
  2f64d8: 4610         	mov	r0, r2
  2f64da: 4619         	mov	r1, r3
  2f64dc: f2e1 fe90    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2e1d20
  2f64e0: 4603         	mov	r3, r0
  2f64e2: 9313         	str	r3, [sp, #0x4c]
  2f64e4: 9b13         	ldr	r3, [sp, #0x4c]
  2f64e6: 681b         	ldr	r3, [r3]
  2f64e8: f503 73fa    	add.w	r3, r3, #0x1f4
  2f64ec: 681b         	ldr	r3, [r3]
  2f64ee: 9813         	ldr	r0, [sp, #0x4c]
  2f64f0: 4798         	blx	r3
  2f64f2: 4603         	mov	r3, r0
  2f64f4: 4618         	mov	r0, r3
  2f64f6: f2fb fd45    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2fba8a
  2f64fa: 9b13         	ldr	r3, [sp, #0x4c]
  2f64fc: 681b         	ldr	r3, [r3]
  2f64fe: f503 73de    	add.w	r3, r3, #0x1bc
  2f6502: 681c         	ldr	r4, [r3]
  2f6504: 9a05         	ldr	r2, [sp, #0x14]
  2f6506: 4613         	mov	r3, r2
  2f6508: 005b         	lsls	r3, r3, #0x1
  2f650a: 4413         	add	r3, r2
  2f650c: f603 1308    	addw	r3, r3, #0x908
  2f6510: 9a03         	ldr	r2, [sp, #0xc]
  2f6512: 4413         	add	r3, r2
  2f6514: 3307         	adds	r3, #0x7
  2f6516: 9813         	ldr	r0, [sp, #0x4c]
  2f6518: 4619         	mov	r1, r3
  2f651a: 47a0         	blx	r4
  2f651c: 9b13         	ldr	r3, [sp, #0x4c]
  2f651e: 681b         	ldr	r3, [r3]
  2f6520: 334c         	adds	r3, #0x4c
  2f6522: 681c         	ldr	r4, [r3]
  2f6524: ab24         	add	r3, sp, #0x90
  2f6526: 4618         	mov	r0, r3
  2f6528: f04f 0100    	mov.w	r1, #0x0
  2f652c: f2cc 11e0    	movt	r1, #0xc1e0
  2f6530: f04f 0200    	mov.w	r2, #0x0
  2f6534: f2cc 12c0    	movt	r2, #0xc1c0
  2f6538: f29c fbda    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29c7b4
  2f653c: a926         	add	r1, sp, #0x98
  2f653e: aa22         	add	r2, sp, #0x88
  2f6540: ab24         	add	r3, sp, #0x90
  2f6542: 4608         	mov	r0, r1
  2f6544: 4611         	mov	r1, r2
  2f6546: 461a         	mov	r2, r3
  2f6548: f7fc fa6e    	bl	0x2f2a28 <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x1cc> @ imm = #-0x3b24
  2f654c: ab26         	add	r3, sp, #0x98
  2f654e: 9813         	ldr	r0, [sp, #0x4c]
  2f6550: 4619         	mov	r1, r3
  2f6552: 47a0         	blx	r4
  2f6554: 9b13         	ldr	r3, [sp, #0x4c]
  2f6556: 681b         	ldr	r3, [r3]
  2f6558: 337c         	adds	r3, #0x7c
  2f655a: 681c         	ldr	r4, [r3]
  2f655c: ab26         	add	r3, sp, #0x98
  2f655e: 4618         	mov	r0, r3
  2f6560: f04f 0100    	mov.w	r1, #0x0
  2f6564: f04f 527e    	mov.w	r2, #0x3f800000
  2f6568: f29c fbc2    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29c784
  2f656c: ab26         	add	r3, sp, #0x98
  2f656e: 9813         	ldr	r0, [sp, #0x4c]
  2f6570: 4619         	mov	r1, r3
  2f6572: 47a0         	blx	r4
  2f6574: 9b13         	ldr	r3, [sp, #0x4c]
  2f6576: 681b         	ldr	r3, [r3]
  2f6578: 3338         	adds	r3, #0x38
  2f657a: 681b         	ldr	r3, [r3]
  2f657c: 9813         	ldr	r0, [sp, #0x4c]
  2f657e: f04f 0100    	mov.w	r1, #0x0
  2f6582: f6cb 7180    	movt	r1, #0xbf80
  2f6586: 4798         	blx	r3
  2f6588: 9b06         	ldr	r3, [sp, #0x18]
  2f658a: 3311         	adds	r3, #0x11
  2f658c: 011b         	lsls	r3, r3, #0x4
  2f658e: 9a03         	ldr	r2, [sp, #0xc]
  2f6590: 4413         	add	r3, r2
  2f6592: 3304         	adds	r3, #0x4
  2f6594: f8df 2974    	ldr.w	r2, [pc, #0x974]        @ 0x2f6f0c <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0xca4>
  2f6598: 447a         	add	r2, pc
  2f659a: 4610         	mov	r0, r2
  2f659c: 4619         	mov	r1, r3
  2f659e: f2e1 fe2f    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2e1c5e
  2f65a2: 4603         	mov	r3, r0
  2f65a4: 9314         	str	r3, [sp, #0x50]
  2f65a6: 9b14         	ldr	r3, [sp, #0x50]
  2f65a8: 681b         	ldr	r3, [r3]
  2f65aa: f503 73fa    	add.w	r3, r3, #0x1f4
  2f65ae: 681b         	ldr	r3, [r3]
  2f65b0: 9814         	ldr	r0, [sp, #0x50]
  2f65b2: 4798         	blx	r3
  2f65b4: 4603         	mov	r3, r0
  2f65b6: 4618         	mov	r0, r3
  2f65b8: f2fb fce4    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2fb9c8
  2f65bc: 9b14         	ldr	r3, [sp, #0x50]
  2f65be: 681b         	ldr	r3, [r3]
  2f65c0: 334c         	adds	r3, #0x4c
  2f65c2: 681c         	ldr	r4, [r3]
  2f65c4: ab24         	add	r3, sp, #0x90
  2f65c6: 4618         	mov	r0, r3
  2f65c8: f04f 0100    	mov.w	r1, #0x0
  2f65cc: f2c4 11c8    	movt	r1, #0x41c8
  2f65d0: f04f 0200    	mov.w	r2, #0x0
  2f65d4: f2c4 0240    	movt	r2, #0x4040
  2f65d8: f29c fb8a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29c714
  2f65dc: a926         	add	r1, sp, #0x98
  2f65de: aa22         	add	r2, sp, #0x88
  2f65e0: ab24         	add	r3, sp, #0x90
  2f65e2: 4608         	mov	r0, r1
  2f65e4: 4611         	mov	r1, r2
  2f65e6: 461a         	mov	r2, r3
  2f65e8: f7fc fa1e    	bl	0x2f2a28 <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x1cc> @ imm = #-0x3bc4
  2f65ec: ab26         	add	r3, sp, #0x98
  2f65ee: 9814         	ldr	r0, [sp, #0x50]
  2f65f0: 4619         	mov	r1, r3
  2f65f2: 47a0         	blx	r4
  2f65f4: 9b14         	ldr	r3, [sp, #0x50]
  2f65f6: 681b         	ldr	r3, [r3]
  2f65f8: 337c         	adds	r3, #0x7c
  2f65fa: 681c         	ldr	r4, [r3]
  2f65fc: ab26         	add	r3, sp, #0x98
  2f65fe: 4618         	mov	r0, r3
  2f6600: f04f 0100    	mov.w	r1, #0x0
  2f6604: f04f 527e    	mov.w	r2, #0x3f800000
  2f6608: f29c fb72    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29c6e4
  2f660c: ab26         	add	r3, sp, #0x98
  2f660e: 9814         	ldr	r0, [sp, #0x50]
  2f6610: 4619         	mov	r1, r3
  2f6612: 47a0         	blx	r4
  2f6614: 9b14         	ldr	r3, [sp, #0x50]
  2f6616: 681b         	ldr	r3, [r3]
  2f6618: 3340         	adds	r3, #0x40
  2f661a: 681b         	ldr	r3, [r3]
  2f661c: 9814         	ldr	r0, [sp, #0x50]
  2f661e: f04f 0100    	mov.w	r1, #0x0
  2f6622: f6cb 7180    	movt	r1, #0xbf80
  2f6626: 4798         	blx	r3
  2f6628: 9b06         	ldr	r3, [sp, #0x18]
  2f662a: 3311         	adds	r3, #0x11
  2f662c: 011b         	lsls	r3, r3, #0x4
  2f662e: 9a03         	ldr	r2, [sp, #0xc]
  2f6630: 4413         	add	r3, r2
  2f6632: 3304         	adds	r3, #0x4
  2f6634: f8df 28d8    	ldr.w	r2, [pc, #0x8d8]        @ 0x2f6f10 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0xca8>
  2f6638: 447a         	add	r2, pc
  2f663a: 4610         	mov	r0, r2
  2f663c: 4619         	mov	r1, r3
  2f663e: f2e1 fddf    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2e1bbe
  2f6642: 4603         	mov	r3, r0
  2f6644: 9315         	str	r3, [sp, #0x54]
  2f6646: 9b15         	ldr	r3, [sp, #0x54]
  2f6648: 681b         	ldr	r3, [r3]
  2f664a: f503 73fa    	add.w	r3, r3, #0x1f4
  2f664e: 681b         	ldr	r3, [r3]
  2f6650: 9815         	ldr	r0, [sp, #0x54]
  2f6652: 4798         	blx	r3
  2f6654: 4603         	mov	r3, r0
  2f6656: 4618         	mov	r0, r3
  2f6658: f2fb fc94    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2fb928
  2f665c: 9b15         	ldr	r3, [sp, #0x54]
  2f665e: 681b         	ldr	r3, [r3]
  2f6660: 334c         	adds	r3, #0x4c
  2f6662: 681c         	ldr	r4, [r3]
  2f6664: ab24         	add	r3, sp, #0x90
  2f6666: 4618         	mov	r0, r3
  2f6668: f04f 0100    	mov.w	r1, #0x0
  2f666c: f2cc 01e0    	movt	r1, #0xc0e0
  2f6670: f04f 0200    	mov.w	r2, #0x0
  2f6674: f2c4 0240    	movt	r2, #0x4040
  2f6678: f29c fb3a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29c674
  2f667c: a926         	add	r1, sp, #0x98
  2f667e: aa22         	add	r2, sp, #0x88
  2f6680: ab24         	add	r3, sp, #0x90
  2f6682: 4608         	mov	r0, r1
  2f6684: 4611         	mov	r1, r2
  2f6686: 461a         	mov	r2, r3
  2f6688: f7fc f9ce    	bl	0x2f2a28 <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x1cc> @ imm = #-0x3c64
  2f668c: ab26         	add	r3, sp, #0x98
  2f668e: 9815         	ldr	r0, [sp, #0x54]
  2f6690: 4619         	mov	r1, r3
  2f6692: 47a0         	blx	r4
  2f6694: 9b15         	ldr	r3, [sp, #0x54]
  2f6696: 681b         	ldr	r3, [r3]
  2f6698: 337c         	adds	r3, #0x7c
  2f669a: 681c         	ldr	r4, [r3]
  2f669c: ab26         	add	r3, sp, #0x98
  2f669e: 4618         	mov	r0, r3
  2f66a0: f04f 0100    	mov.w	r1, #0x0
  2f66a4: f04f 527e    	mov.w	r2, #0x3f800000
  2f66a8: f29c fb22    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29c644
  2f66ac: ab26         	add	r3, sp, #0x98
  2f66ae: 9815         	ldr	r0, [sp, #0x54]
  2f66b0: 4619         	mov	r1, r3
  2f66b2: 47a0         	blx	r4
  2f66b4: 9b15         	ldr	r3, [sp, #0x54]
  2f66b6: 681b         	ldr	r3, [r3]
  2f66b8: 3338         	adds	r3, #0x38
  2f66ba: 681b         	ldr	r3, [r3]
  2f66bc: 9815         	ldr	r0, [sp, #0x54]
  2f66be: f04f 0100    	mov.w	r1, #0x0
  2f66c2: f6cb 7180    	movt	r1, #0xbf80
  2f66c6: 4798         	blx	r3
  2f66c8: 9b07         	ldr	r3, [sp, #0x1c]
  2f66ca: 3322         	adds	r3, #0x22
  2f66cc: 011b         	lsls	r3, r3, #0x4
  2f66ce: 9a03         	ldr	r2, [sp, #0xc]
  2f66d0: 4413         	add	r3, r2
  2f66d2: 3304         	adds	r3, #0x4
  2f66d4: f8df 283c    	ldr.w	r2, [pc, #0x83c]        @ 0x2f6f14 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0xcac>
  2f66d8: 447a         	add	r2, pc
  2f66da: 4610         	mov	r0, r2
  2f66dc: 4619         	mov	r1, r3
  2f66de: f2e1 fd8f    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2e1b1e
  2f66e2: 4603         	mov	r3, r0
  2f66e4: 9316         	str	r3, [sp, #0x58]
  2f66e6: 9b16         	ldr	r3, [sp, #0x58]
  2f66e8: 681b         	ldr	r3, [r3]
  2f66ea: f503 73fa    	add.w	r3, r3, #0x1f4
  2f66ee: 681b         	ldr	r3, [r3]
  2f66f0: 9816         	ldr	r0, [sp, #0x58]
  2f66f2: 4798         	blx	r3
  2f66f4: 4603         	mov	r3, r0
  2f66f6: 4618         	mov	r0, r3
  2f66f8: f2fb fc44    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2fb888
  2f66fc: 9b16         	ldr	r3, [sp, #0x58]
  2f66fe: 681b         	ldr	r3, [r3]
  2f6700: f503 73de    	add.w	r3, r3, #0x1bc
  2f6704: 681c         	ldr	r4, [r3]
  2f6706: 9a08         	ldr	r2, [sp, #0x20]
  2f6708: 4613         	mov	r3, r2
  2f670a: 005b         	lsls	r3, r3, #0x1
  2f670c: 4413         	add	r3, r2
  2f670e: f503 630f    	add.w	r3, r3, #0x8f0
  2f6712: 9a03         	ldr	r2, [sp, #0xc]
  2f6714: 4413         	add	r3, r2
  2f6716: 3304         	adds	r3, #0x4
  2f6718: 9816         	ldr	r0, [sp, #0x58]
  2f671a: 4619         	mov	r1, r3
  2f671c: 47a0         	blx	r4
  2f671e: 9b16         	ldr	r3, [sp, #0x58]
  2f6720: 681b         	ldr	r3, [r3]
  2f6722: 334c         	adds	r3, #0x4c
  2f6724: 681c         	ldr	r4, [r3]
  2f6726: ab24         	add	r3, sp, #0x90
  2f6728: 4618         	mov	r0, r3
  2f672a: f04f 0100    	mov.w	r1, #0x0
  2f672e: f2c4 11d8    	movt	r1, #0x41d8
  2f6732: f04f 0200    	mov.w	r2, #0x0
  2f6736: f29c fadb    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29c5b6
  2f673a: a926         	add	r1, sp, #0x98
  2f673c: aa22         	add	r2, sp, #0x88
  2f673e: ab24         	add	r3, sp, #0x90
  2f6740: 4608         	mov	r0, r1
  2f6742: 4611         	mov	r1, r2
  2f6744: 461a         	mov	r2, r3
  2f6746: f7fc f96f    	bl	0x2f2a28 <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x1cc> @ imm = #-0x3d22
  2f674a: ab26         	add	r3, sp, #0x98
  2f674c: 9816         	ldr	r0, [sp, #0x58]
  2f674e: 4619         	mov	r1, r3
  2f6750: 47a0         	blx	r4
  2f6752: 9b16         	ldr	r3, [sp, #0x58]
  2f6754: 681b         	ldr	r3, [r3]
  2f6756: 337c         	adds	r3, #0x7c
  2f6758: 681c         	ldr	r4, [r3]
  2f675a: ab26         	add	r3, sp, #0x98
  2f675c: 4618         	mov	r0, r3
  2f675e: f04f 0100    	mov.w	r1, #0x0
  2f6762: f04f 527e    	mov.w	r2, #0x3f800000
  2f6766: f29c fac3    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29c586
  2f676a: ab26         	add	r3, sp, #0x98
  2f676c: 9816         	ldr	r0, [sp, #0x58]
  2f676e: 4619         	mov	r1, r3
  2f6770: 47a0         	blx	r4
  2f6772: 9b16         	ldr	r3, [sp, #0x58]
  2f6774: 681b         	ldr	r3, [r3]
  2f6776: 3340         	adds	r3, #0x40
  2f6778: 681b         	ldr	r3, [r3]
  2f677a: 9816         	ldr	r0, [sp, #0x58]
  2f677c: f04f 0100    	mov.w	r1, #0x0
  2f6780: f6cb 7180    	movt	r1, #0xbf80
  2f6784: 4798         	blx	r3
  2f6786: 9b07         	ldr	r3, [sp, #0x1c]
  2f6788: 3322         	adds	r3, #0x22
  2f678a: 011b         	lsls	r3, r3, #0x4
  2f678c: 9a03         	ldr	r2, [sp, #0xc]
  2f678e: 4413         	add	r3, r2
  2f6790: 3304         	adds	r3, #0x4
  2f6792: f8df 2784    	ldr.w	r2, [pc, #0x784]        @ 0x2f6f18 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0xcb0>
  2f6796: 447a         	add	r2, pc
  2f6798: 4610         	mov	r0, r2
  2f679a: 4619         	mov	r1, r3
  2f679c: f2e1 fd30    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2e1a60
  2f67a0: 4603         	mov	r3, r0
  2f67a2: 9317         	str	r3, [sp, #0x5c]
  2f67a4: 9b17         	ldr	r3, [sp, #0x5c]
  2f67a6: 681b         	ldr	r3, [r3]
  2f67a8: f503 73fa    	add.w	r3, r3, #0x1f4
  2f67ac: 681b         	ldr	r3, [r3]
  2f67ae: 9817         	ldr	r0, [sp, #0x5c]
  2f67b0: 4798         	blx	r3
  2f67b2: 4603         	mov	r3, r0
  2f67b4: 4618         	mov	r0, r3
  2f67b6: f2fb fbe5    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2fb7ca
  2f67ba: 9b17         	ldr	r3, [sp, #0x5c]
  2f67bc: 681b         	ldr	r3, [r3]
  2f67be: f503 73de    	add.w	r3, r3, #0x1bc
  2f67c2: 681c         	ldr	r4, [r3]
  2f67c4: 9a08         	ldr	r2, [sp, #0x20]
  2f67c6: 4613         	mov	r3, r2
  2f67c8: 005b         	lsls	r3, r3, #0x1
  2f67ca: 4413         	add	r3, r2
  2f67cc: f503 630f    	add.w	r3, r3, #0x8f0
  2f67d0: 9a03         	ldr	r2, [sp, #0xc]
  2f67d2: 4413         	add	r3, r2
  2f67d4: 3304         	adds	r3, #0x4
  2f67d6: 9817         	ldr	r0, [sp, #0x5c]
  2f67d8: 4619         	mov	r1, r3
  2f67da: 47a0         	blx	r4
  2f67dc: 9b17         	ldr	r3, [sp, #0x5c]
  2f67de: 681b         	ldr	r3, [r3]
  2f67e0: 334c         	adds	r3, #0x4c
  2f67e2: 681c         	ldr	r4, [r3]
  2f67e4: ab24         	add	r3, sp, #0x90
  2f67e6: 4618         	mov	r0, r3
  2f67e8: f04f 0100    	mov.w	r1, #0x0
  2f67ec: f2cc 1110    	movt	r1, #0xc110
  2f67f0: f04f 0200    	mov.w	r2, #0x0
  2f67f4: f29c fa7c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29c4f8
  2f67f8: a926         	add	r1, sp, #0x98
  2f67fa: aa22         	add	r2, sp, #0x88
  2f67fc: ab24         	add	r3, sp, #0x90
  2f67fe: 4608         	mov	r0, r1
  2f6800: 4611         	mov	r1, r2
  2f6802: 461a         	mov	r2, r3
  2f6804: f7fc f910    	bl	0x2f2a28 <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x1cc> @ imm = #-0x3de0
  2f6808: ab26         	add	r3, sp, #0x98
  2f680a: 9817         	ldr	r0, [sp, #0x5c]
  2f680c: 4619         	mov	r1, r3
  2f680e: 47a0         	blx	r4
  2f6810: 9b17         	ldr	r3, [sp, #0x5c]
  2f6812: 681b         	ldr	r3, [r3]
  2f6814: 337c         	adds	r3, #0x7c
  2f6816: 681c         	ldr	r4, [r3]
  2f6818: ab26         	add	r3, sp, #0x98
  2f681a: 4618         	mov	r0, r3
  2f681c: f04f 0100    	mov.w	r1, #0x0
  2f6820: f04f 527e    	mov.w	r2, #0x3f800000
  2f6824: f29c fa64    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29c4c8
  2f6828: ab26         	add	r3, sp, #0x98
  2f682a: 9817         	ldr	r0, [sp, #0x5c]
  2f682c: 4619         	mov	r1, r3
  2f682e: 47a0         	blx	r4
  2f6830: 9b17         	ldr	r3, [sp, #0x5c]
  2f6832: 681b         	ldr	r3, [r3]
  2f6834: 3338         	adds	r3, #0x38
  2f6836: 681b         	ldr	r3, [r3]
  2f6838: 9817         	ldr	r0, [sp, #0x5c]
  2f683a: f04f 0100    	mov.w	r1, #0x0
  2f683e: f6cb 7180    	movt	r1, #0xbf80
  2f6842: 4798         	blx	r3
  2f6844: 9b09         	ldr	r3, [sp, #0x24]
  2f6846: 3336         	adds	r3, #0x36
  2f6848: 011b         	lsls	r3, r3, #0x4
  2f684a: 9a03         	ldr	r2, [sp, #0xc]
  2f684c: 4413         	add	r3, r2
  2f684e: 3304         	adds	r3, #0x4
  2f6850: f8df 26c8    	ldr.w	r2, [pc, #0x6c8]        @ 0x2f6f1c <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0xcb4>
  2f6854: 447a         	add	r2, pc
  2f6856: 4610         	mov	r0, r2
  2f6858: 4619         	mov	r1, r3
  2f685a: f2e1 fcd1    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2e19a2
  2f685e: 4603         	mov	r3, r0
  2f6860: 9318         	str	r3, [sp, #0x60]
  2f6862: 9b18         	ldr	r3, [sp, #0x60]
  2f6864: 681b         	ldr	r3, [r3]
  2f6866: f503 73fa    	add.w	r3, r3, #0x1f4
  2f686a: 681b         	ldr	r3, [r3]
  2f686c: 9818         	ldr	r0, [sp, #0x60]
  2f686e: 4798         	blx	r3
  2f6870: 4603         	mov	r3, r0
  2f6872: 4618         	mov	r0, r3
  2f6874: f2fb fb86    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2fb70c
  2f6878: 9b18         	ldr	r3, [sp, #0x60]
  2f687a: 681b         	ldr	r3, [r3]
  2f687c: 334c         	adds	r3, #0x4c
  2f687e: 681c         	ldr	r4, [r3]
  2f6880: ab24         	add	r3, sp, #0x90
  2f6882: 4618         	mov	r0, r3
  2f6884: f04f 0100    	mov.w	r1, #0x0
  2f6888: f2cc 1120    	movt	r1, #0xc120
  2f688c: f04f 0200    	mov.w	r2, #0x0
  2f6890: f2c4 1260    	movt	r2, #0x4160
  2f6894: f29c fa2c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29c458
  2f6898: a926         	add	r1, sp, #0x98
  2f689a: aa22         	add	r2, sp, #0x88
  2f689c: ab24         	add	r3, sp, #0x90
  2f689e: 4608         	mov	r0, r1
  2f68a0: 4611         	mov	r1, r2
  2f68a2: 461a         	mov	r2, r3
  2f68a4: f7fc f8c0    	bl	0x2f2a28 <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x1cc> @ imm = #-0x3e80
  2f68a8: ab26         	add	r3, sp, #0x98
  2f68aa: 9818         	ldr	r0, [sp, #0x60]
  2f68ac: 4619         	mov	r1, r3
  2f68ae: 47a0         	blx	r4
  2f68b0: 9b18         	ldr	r3, [sp, #0x60]
  2f68b2: 681b         	ldr	r3, [r3]
  2f68b4: 337c         	adds	r3, #0x7c
  2f68b6: 681c         	ldr	r4, [r3]
  2f68b8: ab26         	add	r3, sp, #0x98
  2f68ba: 4618         	mov	r0, r3
  2f68bc: f04f 0100    	mov.w	r1, #0x0
  2f68c0: f04f 527e    	mov.w	r2, #0x3f800000
  2f68c4: f29c fa14    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29c428
  2f68c8: ab26         	add	r3, sp, #0x98
  2f68ca: 9818         	ldr	r0, [sp, #0x60]
  2f68cc: 4619         	mov	r1, r3
  2f68ce: 47a0         	blx	r4
  2f68d0: 9b18         	ldr	r3, [sp, #0x60]
  2f68d2: 681b         	ldr	r3, [r3]
  2f68d4: 3338         	adds	r3, #0x38
  2f68d6: 681b         	ldr	r3, [r3]
  2f68d8: 9818         	ldr	r0, [sp, #0x60]
  2f68da: f04f 0100    	mov.w	r1, #0x0
  2f68de: f6cb 7180    	movt	r1, #0xbf80
  2f68e2: 4798         	blx	r3
  2f68e4: 9b0a         	ldr	r3, [sp, #0x28]
  2f68e6: 3349         	adds	r3, #0x49
  2f68e8: 011b         	lsls	r3, r3, #0x4
  2f68ea: 9a03         	ldr	r2, [sp, #0xc]
  2f68ec: 4413         	add	r3, r2
  2f68ee: 3304         	adds	r3, #0x4
  2f68f0: f8df 262c    	ldr.w	r2, [pc, #0x62c]        @ 0x2f6f20 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0xcb8>
  2f68f4: 447a         	add	r2, pc
  2f68f6: 4610         	mov	r0, r2
  2f68f8: 4619         	mov	r1, r3
  2f68fa: f2e1 fc81    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2e1902
  2f68fe: 4603         	mov	r3, r0
  2f6900: 9319         	str	r3, [sp, #0x64]
  2f6902: 9b19         	ldr	r3, [sp, #0x64]
  2f6904: 681b         	ldr	r3, [r3]
  2f6906: f503 73fa    	add.w	r3, r3, #0x1f4
  2f690a: 681b         	ldr	r3, [r3]
  2f690c: 9819         	ldr	r0, [sp, #0x64]
  2f690e: 4798         	blx	r3
  2f6910: 4603         	mov	r3, r0
  2f6912: 4618         	mov	r0, r3
  2f6914: f2fb fb36    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2fb66c
  2f6918: 9b19         	ldr	r3, [sp, #0x64]
  2f691a: 681b         	ldr	r3, [r3]
  2f691c: 334c         	adds	r3, #0x4c
  2f691e: 681c         	ldr	r4, [r3]
  2f6920: ab24         	add	r3, sp, #0x90
  2f6922: 4618         	mov	r0, r3
  2f6924: f04f 0100    	mov.w	r1, #0x0
  2f6928: f2cc 11e8    	movt	r1, #0xc1e8
  2f692c: f04f 0200    	mov.w	r2, #0x0
  2f6930: f2cc 12f0    	movt	r2, #0xc1f0
  2f6934: f29c f9dc    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29c3b8
  2f6938: a926         	add	r1, sp, #0x98
  2f693a: aa22         	add	r2, sp, #0x88
  2f693c: ab24         	add	r3, sp, #0x90
  2f693e: 4608         	mov	r0, r1
  2f6940: 4611         	mov	r1, r2
  2f6942: 461a         	mov	r2, r3
  2f6944: f7fc f870    	bl	0x2f2a28 <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x1cc> @ imm = #-0x3f20
  2f6948: ab26         	add	r3, sp, #0x98
  2f694a: 9819         	ldr	r0, [sp, #0x64]
  2f694c: 4619         	mov	r1, r3
  2f694e: 47a0         	blx	r4
  2f6950: 9b19         	ldr	r3, [sp, #0x64]
  2f6952: 681b         	ldr	r3, [r3]
  2f6954: f503 73de    	add.w	r3, r3, #0x1bc
  2f6958: 681c         	ldr	r4, [r3]
  2f695a: 9a0d         	ldr	r2, [sp, #0x34]
  2f695c: 4613         	mov	r3, r2
  2f695e: 005b         	lsls	r3, r3, #0x1
  2f6960: 4413         	add	r3, r2
  2f6962: f503 630f    	add.w	r3, r3, #0x8f0
  2f6966: 9a03         	ldr	r2, [sp, #0xc]
  2f6968: 4413         	add	r3, r2
  2f696a: 3304         	adds	r3, #0x4
  2f696c: 9819         	ldr	r0, [sp, #0x64]
  2f696e: 4619         	mov	r1, r3
  2f6970: 47a0         	blx	r4
  2f6972: 9b19         	ldr	r3, [sp, #0x64]
  2f6974: 681b         	ldr	r3, [r3]
  2f6976: 337c         	adds	r3, #0x7c
  2f6978: 681c         	ldr	r4, [r3]
  2f697a: ab26         	add	r3, sp, #0x98
  2f697c: 4618         	mov	r0, r3
  2f697e: f04f 0100    	mov.w	r1, #0x0
  2f6982: f04f 527e    	mov.w	r2, #0x3f800000
  2f6986: f29c f9b3    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29c366
  2f698a: ab26         	add	r3, sp, #0x98
  2f698c: 9819         	ldr	r0, [sp, #0x64]
  2f698e: 4619         	mov	r1, r3
  2f6990: 47a0         	blx	r4
  2f6992: 9b19         	ldr	r3, [sp, #0x64]
  2f6994: 681b         	ldr	r3, [r3]
  2f6996: 3338         	adds	r3, #0x38
  2f6998: 681b         	ldr	r3, [r3]
  2f699a: 9819         	ldr	r0, [sp, #0x64]
  2f699c: f04f 0100    	mov.w	r1, #0x0
  2f69a0: f6cb 7180    	movt	r1, #0xbf80
  2f69a4: 4798         	blx	r3
  2f69a6: 9b0b         	ldr	r3, [sp, #0x2c]
  2f69a8: 336b         	adds	r3, #0x6b
  2f69aa: 011b         	lsls	r3, r3, #0x4
  2f69ac: 9a03         	ldr	r2, [sp, #0xc]
  2f69ae: 4413         	add	r3, r2
  2f69b0: 3304         	adds	r3, #0x4
  2f69b2: f8df 2570    	ldr.w	r2, [pc, #0x570]        @ 0x2f6f24 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0xcbc>
  2f69b6: 447a         	add	r2, pc
  2f69b8: 4610         	mov	r0, r2
  2f69ba: 4619         	mov	r1, r3
  2f69bc: f2e1 fc20    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2e1840
  2f69c0: 4603         	mov	r3, r0
  2f69c2: 931a         	str	r3, [sp, #0x68]
  2f69c4: 9b1a         	ldr	r3, [sp, #0x68]
  2f69c6: 681b         	ldr	r3, [r3]
  2f69c8: f503 73fa    	add.w	r3, r3, #0x1f4
  2f69cc: 681b         	ldr	r3, [r3]
  2f69ce: 981a         	ldr	r0, [sp, #0x68]
  2f69d0: 4798         	blx	r3
  2f69d2: 4603         	mov	r3, r0
  2f69d4: 4618         	mov	r0, r3
  2f69d6: f2fb fad5    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2fb5aa
  2f69da: 9b1a         	ldr	r3, [sp, #0x68]
  2f69dc: 681b         	ldr	r3, [r3]
  2f69de: 334c         	adds	r3, #0x4c
  2f69e0: 681c         	ldr	r4, [r3]
  2f69e2: ab24         	add	r3, sp, #0x90
  2f69e4: 4618         	mov	r0, r3
  2f69e6: f04f 0100    	mov.w	r1, #0x0
  2f69ea: f2cc 11f0    	movt	r1, #0xc1f0
  2f69ee: f04f 0200    	mov.w	r2, #0x0
  2f69f2: f2cc 12d0    	movt	r2, #0xc1d0
  2f69f6: f29c f97b    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29c2f6
  2f69fa: a926         	add	r1, sp, #0x98
  2f69fc: aa22         	add	r2, sp, #0x88
  2f69fe: ab24         	add	r3, sp, #0x90
  2f6a00: 4608         	mov	r0, r1
  2f6a02: 4611         	mov	r1, r2
  2f6a04: 461a         	mov	r2, r3
  2f6a06: f7fc f80f    	bl	0x2f2a28 <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x1cc> @ imm = #-0x3fe2
  2f6a0a: ab26         	add	r3, sp, #0x98
  2f6a0c: 981a         	ldr	r0, [sp, #0x68]
  2f6a0e: 4619         	mov	r1, r3
  2f6a10: 47a0         	blx	r4
  2f6a12: 9b1a         	ldr	r3, [sp, #0x68]
  2f6a14: 681b         	ldr	r3, [r3]
  2f6a16: f503 73de    	add.w	r3, r3, #0x1bc
  2f6a1a: 681c         	ldr	r4, [r3]
  2f6a1c: 9a0d         	ldr	r2, [sp, #0x34]
  2f6a1e: 4613         	mov	r3, r2
  2f6a20: 005b         	lsls	r3, r3, #0x1
  2f6a22: 4413         	add	r3, r2
  2f6a24: f503 630f    	add.w	r3, r3, #0x8f0
  2f6a28: 9a03         	ldr	r2, [sp, #0xc]
  2f6a2a: 4413         	add	r3, r2
  2f6a2c: 3304         	adds	r3, #0x4
  2f6a2e: 981a         	ldr	r0, [sp, #0x68]
  2f6a30: 4619         	mov	r1, r3
  2f6a32: 47a0         	blx	r4
  2f6a34: 9b1a         	ldr	r3, [sp, #0x68]
  2f6a36: 681b         	ldr	r3, [r3]
  2f6a38: 337c         	adds	r3, #0x7c
  2f6a3a: 681c         	ldr	r4, [r3]
  2f6a3c: ab26         	add	r3, sp, #0x98
  2f6a3e: 4618         	mov	r0, r3
  2f6a40: f04f 0100    	mov.w	r1, #0x0
  2f6a44: f04f 527e    	mov.w	r2, #0x3f800000
  2f6a48: f29c f952    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29c2a4
  2f6a4c: ab26         	add	r3, sp, #0x98
  2f6a4e: 981a         	ldr	r0, [sp, #0x68]
  2f6a50: 4619         	mov	r1, r3
  2f6a52: 47a0         	blx	r4
  2f6a54: 9b1a         	ldr	r3, [sp, #0x68]
  2f6a56: 681b         	ldr	r3, [r3]
  2f6a58: 3338         	adds	r3, #0x38
  2f6a5a: 681b         	ldr	r3, [r3]
  2f6a5c: 981a         	ldr	r0, [sp, #0x68]
  2f6a5e: f04f 0100    	mov.w	r1, #0x0
  2f6a62: f6cb 7180    	movt	r1, #0xbf80
  2f6a66: 4798         	blx	r3
  2f6a68: 9b0c         	ldr	r3, [sp, #0x30]
  2f6a6a: 3373         	adds	r3, #0x73
  2f6a6c: 011b         	lsls	r3, r3, #0x4
  2f6a6e: 9a03         	ldr	r2, [sp, #0xc]
  2f6a70: 4413         	add	r3, r2
  2f6a72: 3304         	adds	r3, #0x4
  2f6a74: f8df 24b0    	ldr.w	r2, [pc, #0x4b0]        @ 0x2f6f28 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0xcc0>
  2f6a78: 447a         	add	r2, pc
  2f6a7a: 4610         	mov	r0, r2
  2f6a7c: 4619         	mov	r1, r3
  2f6a7e: f2e1 fbbf    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2e177e
  2f6a82: 4603         	mov	r3, r0
  2f6a84: 931b         	str	r3, [sp, #0x6c]
  2f6a86: 9b1b         	ldr	r3, [sp, #0x6c]
  2f6a88: 681b         	ldr	r3, [r3]
  2f6a8a: f503 73fa    	add.w	r3, r3, #0x1f4
  2f6a8e: 681b         	ldr	r3, [r3]
  2f6a90: 981b         	ldr	r0, [sp, #0x6c]
  2f6a92: 4798         	blx	r3
  2f6a94: 4603         	mov	r3, r0
  2f6a96: 4618         	mov	r0, r3
  2f6a98: f2fb fa74    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2fb4e8
  2f6a9c: 9b1b         	ldr	r3, [sp, #0x6c]
  2f6a9e: 681b         	ldr	r3, [r3]
  2f6aa0: 334c         	adds	r3, #0x4c
  2f6aa2: 681c         	ldr	r4, [r3]
  2f6aa4: ab24         	add	r3, sp, #0x90
  2f6aa6: 4618         	mov	r0, r3
  2f6aa8: f04f 0100    	mov.w	r1, #0x0
  2f6aac: f2cc 11c8    	movt	r1, #0xc1c8
  2f6ab0: f04f 0200    	mov.w	r2, #0x0
  2f6ab4: f6cb 7280    	movt	r2, #0xbf80
  2f6ab8: f29c f91a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29c234
  2f6abc: a926         	add	r1, sp, #0x98
  2f6abe: aa22         	add	r2, sp, #0x88
  2f6ac0: ab24         	add	r3, sp, #0x90
  2f6ac2: 4608         	mov	r0, r1
  2f6ac4: 4611         	mov	r1, r2
  2f6ac6: 461a         	mov	r2, r3
  2f6ac8: f7fb ffae    	bl	0x2f2a28 <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x1cc> @ imm = #-0x40a4
  2f6acc: ab26         	add	r3, sp, #0x98
  2f6ace: 981b         	ldr	r0, [sp, #0x6c]
  2f6ad0: 4619         	mov	r1, r3
  2f6ad2: 47a0         	blx	r4
  2f6ad4: 9b1b         	ldr	r3, [sp, #0x6c]
  2f6ad6: 681b         	ldr	r3, [r3]
  2f6ad8: f503 73de    	add.w	r3, r3, #0x1bc
  2f6adc: 681c         	ldr	r4, [r3]
  2f6ade: 9a0d         	ldr	r2, [sp, #0x34]
  2f6ae0: 4613         	mov	r3, r2
  2f6ae2: 005b         	lsls	r3, r3, #0x1
  2f6ae4: 4413         	add	r3, r2
  2f6ae6: f503 630f    	add.w	r3, r3, #0x8f0
  2f6aea: 9a03         	ldr	r2, [sp, #0xc]
  2f6aec: 4413         	add	r3, r2
  2f6aee: 3304         	adds	r3, #0x4
  2f6af0: 981b         	ldr	r0, [sp, #0x6c]
  2f6af2: 4619         	mov	r1, r3
  2f6af4: 47a0         	blx	r4
  2f6af6: 9b1b         	ldr	r3, [sp, #0x6c]
  2f6af8: 681b         	ldr	r3, [r3]
  2f6afa: 337c         	adds	r3, #0x7c
  2f6afc: 681c         	ldr	r4, [r3]
  2f6afe: ab26         	add	r3, sp, #0x98
  2f6b00: 4618         	mov	r0, r3
  2f6b02: f04f 0100    	mov.w	r1, #0x0
  2f6b06: f04f 527e    	mov.w	r2, #0x3f800000
  2f6b0a: f29c f8f1    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29c1e2
  2f6b0e: ab26         	add	r3, sp, #0x98
  2f6b10: 981b         	ldr	r0, [sp, #0x6c]
  2f6b12: 4619         	mov	r1, r3
  2f6b14: 47a0         	blx	r4
  2f6b16: 9b1b         	ldr	r3, [sp, #0x6c]
  2f6b18: 681b         	ldr	r3, [r3]
  2f6b1a: 3338         	adds	r3, #0x38
  2f6b1c: 681b         	ldr	r3, [r3]
  2f6b1e: 981b         	ldr	r0, [sp, #0x6c]
  2f6b20: f04f 0100    	mov.w	r1, #0x0
  2f6b24: f6cb 7180    	movt	r1, #0xbf80
  2f6b28: 4798         	blx	r3
  2f6b2a: 9b0e         	ldr	r3, [sp, #0x38]
  2f6b2c: 3387         	adds	r3, #0x87
  2f6b2e: 011b         	lsls	r3, r3, #0x4
  2f6b30: 9a03         	ldr	r2, [sp, #0xc]
  2f6b32: 4413         	add	r3, r2
  2f6b34: 3304         	adds	r3, #0x4
  2f6b36: 4afd         	ldr	r2, [pc, #0x3f4]        @ 0x2f6f2c <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0xcc4>
  2f6b38: 447a         	add	r2, pc
  2f6b3a: 4610         	mov	r0, r2
  2f6b3c: 4619         	mov	r1, r3
  2f6b3e: f2e1 fb5f    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2e16be
  2f6b42: 4603         	mov	r3, r0
  2f6b44: 931c         	str	r3, [sp, #0x70]
  2f6b46: 9b1c         	ldr	r3, [sp, #0x70]
  2f6b48: 681b         	ldr	r3, [r3]
  2f6b4a: f503 73fa    	add.w	r3, r3, #0x1f4
  2f6b4e: 681b         	ldr	r3, [r3]
  2f6b50: 981c         	ldr	r0, [sp, #0x70]
  2f6b52: 4798         	blx	r3
  2f6b54: 4603         	mov	r3, r0
  2f6b56: 4618         	mov	r0, r3
  2f6b58: f2fb fa14    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2fb428
  2f6b5c: 9b1c         	ldr	r3, [sp, #0x70]
  2f6b5e: 681b         	ldr	r3, [r3]
  2f6b60: 334c         	adds	r3, #0x4c
  2f6b62: 681c         	ldr	r4, [r3]
  2f6b64: ab24         	add	r3, sp, #0x90
  2f6b66: 4618         	mov	r0, r3
  2f6b68: f04f 0100    	mov.w	r1, #0x0
  2f6b6c: f2cc 11c0    	movt	r1, #0xc1c0
  2f6b70: f04f 4281    	mov.w	r2, #0x40800000
  2f6b74: f29c f8bc    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29c178
  2f6b78: a926         	add	r1, sp, #0x98
  2f6b7a: aa22         	add	r2, sp, #0x88
  2f6b7c: ab24         	add	r3, sp, #0x90
  2f6b7e: 4608         	mov	r0, r1
  2f6b80: 4611         	mov	r1, r2
  2f6b82: 461a         	mov	r2, r3
  2f6b84: f7fb ff50    	bl	0x2f2a28 <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x1cc> @ imm = #-0x4160
  2f6b88: ab26         	add	r3, sp, #0x98
  2f6b8a: 981c         	ldr	r0, [sp, #0x70]
  2f6b8c: 4619         	mov	r1, r3
  2f6b8e: 47a0         	blx	r4
  2f6b90: 9b1c         	ldr	r3, [sp, #0x70]
  2f6b92: 681b         	ldr	r3, [r3]
  2f6b94: f503 73de    	add.w	r3, r3, #0x1bc
  2f6b98: 681c         	ldr	r4, [r3]
  2f6b9a: 9a0d         	ldr	r2, [sp, #0x34]
  2f6b9c: 4613         	mov	r3, r2
  2f6b9e: 005b         	lsls	r3, r3, #0x1
  2f6ba0: 4413         	add	r3, r2
  2f6ba2: f503 630f    	add.w	r3, r3, #0x8f0
  2f6ba6: 9a03         	ldr	r2, [sp, #0xc]
  2f6ba8: 4413         	add	r3, r2
  2f6baa: 3304         	adds	r3, #0x4
  2f6bac: 981c         	ldr	r0, [sp, #0x70]
  2f6bae: 4619         	mov	r1, r3
  2f6bb0: 47a0         	blx	r4
  2f6bb2: 9b1c         	ldr	r3, [sp, #0x70]
  2f6bb4: 681b         	ldr	r3, [r3]
  2f6bb6: 337c         	adds	r3, #0x7c
  2f6bb8: 681c         	ldr	r4, [r3]
  2f6bba: ab26         	add	r3, sp, #0x98
  2f6bbc: 4618         	mov	r0, r3
  2f6bbe: f04f 0100    	mov.w	r1, #0x0
  2f6bc2: f04f 527e    	mov.w	r2, #0x3f800000
  2f6bc6: f29c f893    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29c126
  2f6bca: ab26         	add	r3, sp, #0x98
  2f6bcc: 981c         	ldr	r0, [sp, #0x70]
  2f6bce: 4619         	mov	r1, r3
  2f6bd0: 47a0         	blx	r4
  2f6bd2: 9b1c         	ldr	r3, [sp, #0x70]
  2f6bd4: 681b         	ldr	r3, [r3]
  2f6bd6: 3338         	adds	r3, #0x38
  2f6bd8: 681b         	ldr	r3, [r3]
  2f6bda: 981c         	ldr	r0, [sp, #0x70]
  2f6bdc: f04f 0100    	mov.w	r1, #0x0
  2f6be0: f6cb 7180    	movt	r1, #0xbf80
  2f6be4: 4798         	blx	r3
  2f6be6: 9b0f         	ldr	r3, [sp, #0x3c]
  2f6be8: 337c         	adds	r3, #0x7c
  2f6bea: 011b         	lsls	r3, r3, #0x4
  2f6bec: 9a03         	ldr	r2, [sp, #0xc]
  2f6bee: 4413         	add	r3, r2
  2f6bf0: 3304         	adds	r3, #0x4
  2f6bf2: 4acf         	ldr	r2, [pc, #0x33c]        @ 0x2f6f30 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0xcc8>
  2f6bf4: 447a         	add	r2, pc
  2f6bf6: 4610         	mov	r0, r2
  2f6bf8: 4619         	mov	r1, r3
  2f6bfa: f2e1 fb01    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2e1602
  2f6bfe: 4603         	mov	r3, r0
  2f6c00: 931d         	str	r3, [sp, #0x74]
  2f6c02: 9b1d         	ldr	r3, [sp, #0x74]
  2f6c04: 681b         	ldr	r3, [r3]
  2f6c06: f503 73fa    	add.w	r3, r3, #0x1f4
  2f6c0a: 681b         	ldr	r3, [r3]
  2f6c0c: 981d         	ldr	r0, [sp, #0x74]
  2f6c0e: 4798         	blx	r3
  2f6c10: 4603         	mov	r3, r0
  2f6c12: 4618         	mov	r0, r3
  2f6c14: f2fb f9b6    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2fb36c
  2f6c18: 9b1d         	ldr	r3, [sp, #0x74]
  2f6c1a: 681b         	ldr	r3, [r3]
  2f6c1c: 334c         	adds	r3, #0x4c
  2f6c1e: 681c         	ldr	r4, [r3]
  2f6c20: ab24         	add	r3, sp, #0x90
  2f6c22: 4618         	mov	r0, r3
  2f6c24: f04f 0100    	mov.w	r1, #0x0
  2f6c28: f2cc 01e0    	movt	r1, #0xc0e0
  2f6c2c: f04f 0200    	mov.w	r2, #0x0
  2f6c30: f2c4 1220    	movt	r2, #0x4120
  2f6c34: f29c f85c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29c0b8
  2f6c38: a926         	add	r1, sp, #0x98
  2f6c3a: aa22         	add	r2, sp, #0x88
  2f6c3c: ab24         	add	r3, sp, #0x90
  2f6c3e: 4608         	mov	r0, r1
  2f6c40: 4611         	mov	r1, r2
  2f6c42: 461a         	mov	r2, r3
  2f6c44: f7fb fef0    	bl	0x2f2a28 <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x1cc> @ imm = #-0x4220
  2f6c48: ab26         	add	r3, sp, #0x98
  2f6c4a: 981d         	ldr	r0, [sp, #0x74]
  2f6c4c: 4619         	mov	r1, r3
  2f6c4e: 47a0         	blx	r4
  2f6c50: 9b1d         	ldr	r3, [sp, #0x74]
  2f6c52: 681b         	ldr	r3, [r3]
  2f6c54: f503 73de    	add.w	r3, r3, #0x1bc
  2f6c58: 681c         	ldr	r4, [r3]
  2f6c5a: 9a0d         	ldr	r2, [sp, #0x34]
  2f6c5c: 4613         	mov	r3, r2
  2f6c5e: 005b         	lsls	r3, r3, #0x1
  2f6c60: 4413         	add	r3, r2
  2f6c62: f503 630f    	add.w	r3, r3, #0x8f0
  2f6c66: 9a03         	ldr	r2, [sp, #0xc]
  2f6c68: 4413         	add	r3, r2
  2f6c6a: 3304         	adds	r3, #0x4
  2f6c6c: 981d         	ldr	r0, [sp, #0x74]
  2f6c6e: 4619         	mov	r1, r3
  2f6c70: 47a0         	blx	r4
  2f6c72: 9b1d         	ldr	r3, [sp, #0x74]
  2f6c74: 681b         	ldr	r3, [r3]
  2f6c76: 337c         	adds	r3, #0x7c
  2f6c78: 681c         	ldr	r4, [r3]
  2f6c7a: ab26         	add	r3, sp, #0x98
  2f6c7c: 4618         	mov	r0, r3
  2f6c7e: f04f 0100    	mov.w	r1, #0x0
  2f6c82: f04f 527e    	mov.w	r2, #0x3f800000
  2f6c86: f29c f833    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29c066
  2f6c8a: ab26         	add	r3, sp, #0x98
  2f6c8c: 981d         	ldr	r0, [sp, #0x74]
  2f6c8e: 4619         	mov	r1, r3
  2f6c90: 47a0         	blx	r4
  2f6c92: 9b1d         	ldr	r3, [sp, #0x74]
  2f6c94: 681b         	ldr	r3, [r3]
  2f6c96: 3338         	adds	r3, #0x38
  2f6c98: 681b         	ldr	r3, [r3]
  2f6c9a: 981d         	ldr	r0, [sp, #0x74]
  2f6c9c: f04f 0100    	mov.w	r1, #0x0
  2f6ca0: f6cb 7180    	movt	r1, #0xbf80
  2f6ca4: 4798         	blx	r3
  2f6ca6: 9b10         	ldr	r3, [sp, #0x40]
  2f6ca8: 3381         	adds	r3, #0x81
  2f6caa: 011b         	lsls	r3, r3, #0x4
  2f6cac: 9a03         	ldr	r2, [sp, #0xc]
  2f6cae: 4413         	add	r3, r2
  2f6cb0: 3304         	adds	r3, #0x4
  2f6cb2: 4aa0         	ldr	r2, [pc, #0x280]        @ 0x2f6f34 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0xccc>
  2f6cb4: 447a         	add	r2, pc
  2f6cb6: 4610         	mov	r0, r2
  2f6cb8: 4619         	mov	r1, r3
  2f6cba: f2e1 faa1    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2e1542
  2f6cbe: 4603         	mov	r3, r0
  2f6cc0: 931e         	str	r3, [sp, #0x78]
  2f6cc2: 9b1e         	ldr	r3, [sp, #0x78]
  2f6cc4: 681b         	ldr	r3, [r3]
  2f6cc6: f503 73fa    	add.w	r3, r3, #0x1f4
  2f6cca: 681b         	ldr	r3, [r3]
  2f6ccc: 981e         	ldr	r0, [sp, #0x78]
  2f6cce: 4798         	blx	r3
  2f6cd0: 4603         	mov	r3, r0
  2f6cd2: 4618         	mov	r0, r3
  2f6cd4: f2fb f956    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2fb2ac
  2f6cd8: 9b1e         	ldr	r3, [sp, #0x78]
  2f6cda: 681b         	ldr	r3, [r3]
  2f6cdc: 334c         	adds	r3, #0x4c
  2f6cde: 681c         	ldr	r4, [r3]
  2f6ce0: ab24         	add	r3, sp, #0x90
  2f6ce2: 4618         	mov	r0, r3
  2f6ce4: f04f 0100    	mov.w	r1, #0x0
  2f6ce8: f2cc 11d8    	movt	r1, #0xc1d8
  2f6cec: f04f 4241    	mov.w	r2, #0xc1000000
  2f6cf0: f29b fffe    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29bffc
  2f6cf4: a926         	add	r1, sp, #0x98
  2f6cf6: aa22         	add	r2, sp, #0x88
  2f6cf8: ab24         	add	r3, sp, #0x90
  2f6cfa: 4608         	mov	r0, r1
  2f6cfc: 4611         	mov	r1, r2
  2f6cfe: 461a         	mov	r2, r3
  2f6d00: f7fb fe92    	bl	0x2f2a28 <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x1cc> @ imm = #-0x42dc
  2f6d04: ab26         	add	r3, sp, #0x98
  2f6d06: 981e         	ldr	r0, [sp, #0x78]
  2f6d08: 4619         	mov	r1, r3
  2f6d0a: 47a0         	blx	r4
  2f6d0c: 9b1e         	ldr	r3, [sp, #0x78]
  2f6d0e: 681b         	ldr	r3, [r3]
  2f6d10: 337c         	adds	r3, #0x7c
  2f6d12: 681c         	ldr	r4, [r3]
  2f6d14: ab26         	add	r3, sp, #0x98
  2f6d16: 4618         	mov	r0, r3
  2f6d18: f04f 0100    	mov.w	r1, #0x0
  2f6d1c: f04f 527e    	mov.w	r2, #0x3f800000
  2f6d20: f29b ffe6    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29bfcc
  2f6d24: ab26         	add	r3, sp, #0x98
  2f6d26: 981e         	ldr	r0, [sp, #0x78]
  2f6d28: 4619         	mov	r1, r3
  2f6d2a: 47a0         	blx	r4
  2f6d2c: 9b1e         	ldr	r3, [sp, #0x78]
  2f6d2e: 681b         	ldr	r3, [r3]
  2f6d30: 3338         	adds	r3, #0x38
  2f6d32: 681b         	ldr	r3, [r3]
  2f6d34: 981e         	ldr	r0, [sp, #0x78]
  2f6d36: f04f 0100    	mov.w	r1, #0x0
  2f6d3a: f6cb 7180    	movt	r1, #0xbf80
  2f6d3e: 4798         	blx	r3
  2f6d40: 9b11         	ldr	r3, [sp, #0x44]
  2f6d42: 011b         	lsls	r3, r3, #0x4
  2f6d44: f603 1318    	addw	r3, r3, #0x918
  2f6d48: 9a03         	ldr	r2, [sp, #0xc]
  2f6d4a: 4413         	add	r3, r2
  2f6d4c: 3304         	adds	r3, #0x4
  2f6d4e: 4a7a         	ldr	r2, [pc, #0x1e8]        @ 0x2f6f38 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0xcd0>
  2f6d50: 447a         	add	r2, pc
  2f6d52: 4610         	mov	r0, r2
  2f6d54: 4619         	mov	r1, r3
  2f6d56: f2e1 fa53    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2e14a6
  2f6d5a: 4603         	mov	r3, r0
  2f6d5c: 931f         	str	r3, [sp, #0x7c]
  2f6d5e: 9b1f         	ldr	r3, [sp, #0x7c]
  2f6d60: 681b         	ldr	r3, [r3]
  2f6d62: f503 73fa    	add.w	r3, r3, #0x1f4
  2f6d66: 681b         	ldr	r3, [r3]
  2f6d68: 981f         	ldr	r0, [sp, #0x7c]
  2f6d6a: 4798         	blx	r3
  2f6d6c: 4603         	mov	r3, r0
  2f6d6e: 4618         	mov	r0, r3
  2f6d70: f2fb f908    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2fb210
  2f6d74: 9b1f         	ldr	r3, [sp, #0x7c]
  2f6d76: 681b         	ldr	r3, [r3]
  2f6d78: 334c         	adds	r3, #0x4c
  2f6d7a: 681c         	ldr	r4, [r3]
  2f6d7c: ab24         	add	r3, sp, #0x90
  2f6d7e: 4618         	mov	r0, r3
  2f6d80: f04f 0100    	mov.w	r1, #0x0
  2f6d84: f2cc 2134    	movt	r1, #0xc234
  2f6d88: f04f 4242    	mov.w	r2, #0xc2000000
  2f6d8c: f29b ffb0    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29bf60
  2f6d90: a926         	add	r1, sp, #0x98
  2f6d92: aa22         	add	r2, sp, #0x88
  2f6d94: ab24         	add	r3, sp, #0x90
  2f6d96: 4608         	mov	r0, r1
  2f6d98: 4611         	mov	r1, r2
  2f6d9a: 461a         	mov	r2, r3
  2f6d9c: f7fb fe44    	bl	0x2f2a28 <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x1cc> @ imm = #-0x4378
  2f6da0: ab26         	add	r3, sp, #0x98
  2f6da2: 981f         	ldr	r0, [sp, #0x7c]
  2f6da4: 4619         	mov	r1, r3
  2f6da6: 47a0         	blx	r4
  2f6da8: 9b1f         	ldr	r3, [sp, #0x7c]
  2f6daa: 681b         	ldr	r3, [r3]
  2f6dac: 337c         	adds	r3, #0x7c
  2f6dae: 681c         	ldr	r4, [r3]
  2f6db0: ab26         	add	r3, sp, #0x98
  2f6db2: 4618         	mov	r0, r3
  2f6db4: f04f 0100    	mov.w	r1, #0x0
  2f6db8: f04f 527e    	mov.w	r2, #0x3f800000
  2f6dbc: f29b ff98    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29bf30
  2f6dc0: ab26         	add	r3, sp, #0x98
  2f6dc2: 981f         	ldr	r0, [sp, #0x7c]
  2f6dc4: 4619         	mov	r1, r3
  2f6dc6: 47a0         	blx	r4
  2f6dc8: 9b1f         	ldr	r3, [sp, #0x7c]
  2f6dca: 681b         	ldr	r3, [r3]
  2f6dcc: 3338         	adds	r3, #0x38
  2f6dce: 681b         	ldr	r3, [r3]
  2f6dd0: 981f         	ldr	r0, [sp, #0x7c]
  2f6dd2: f04f 0100    	mov.w	r1, #0x0
  2f6dd6: f6cb 7180    	movt	r1, #0xbf80
  2f6dda: 4798         	blx	r3
  2f6ddc: 9b11         	ldr	r3, [sp, #0x44]
  2f6dde: 011b         	lsls	r3, r3, #0x4
  2f6de0: f603 2348    	addw	r3, r3, #0xa48
  2f6de4: 9a03         	ldr	r2, [sp, #0xc]
  2f6de6: 4413         	add	r3, r2
  2f6de8: 3304         	adds	r3, #0x4
  2f6dea: 4a54         	ldr	r2, [pc, #0x150]        @ 0x2f6f3c <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0xcd4>
  2f6dec: 447a         	add	r2, pc
  2f6dee: 4610         	mov	r0, r2
  2f6df0: 4619         	mov	r1, r3
  2f6df2: f2e1 fa05    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2e140a
  2f6df6: 4603         	mov	r3, r0
  2f6df8: 9320         	str	r3, [sp, #0x80]
  2f6dfa: 9b20         	ldr	r3, [sp, #0x80]
  2f6dfc: 681b         	ldr	r3, [r3]
  2f6dfe: f503 73fa    	add.w	r3, r3, #0x1f4
  2f6e02: 681b         	ldr	r3, [r3]
  2f6e04: 9820         	ldr	r0, [sp, #0x80]
  2f6e06: 4798         	blx	r3
  2f6e08: 4603         	mov	r3, r0
  2f6e0a: 4618         	mov	r0, r3
  2f6e0c: f2fb f8ba    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2fb174
  2f6e10: 9b20         	ldr	r3, [sp, #0x80]
  2f6e12: 681b         	ldr	r3, [r3]
  2f6e14: 334c         	adds	r3, #0x4c
  2f6e16: 681c         	ldr	r4, [r3]
  2f6e18: ab24         	add	r3, sp, #0x90
  2f6e1a: 4618         	mov	r0, r3
  2f6e1c: f04f 0100    	mov.w	r1, #0x0
  2f6e20: f2cc 2134    	movt	r1, #0xc234
  2f6e24: f04f 4242    	mov.w	r2, #0xc2000000
  2f6e28: f29b ff62    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29bec4
  2f6e2c: a926         	add	r1, sp, #0x98
  2f6e2e: aa22         	add	r2, sp, #0x88
  2f6e30: ab24         	add	r3, sp, #0x90
  2f6e32: 4608         	mov	r0, r1
  2f6e34: 4611         	mov	r1, r2
  2f6e36: 461a         	mov	r2, r3
  2f6e38: f7fb fdf6    	bl	0x2f2a28 <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x1cc> @ imm = #-0x4414
  2f6e3c: ab26         	add	r3, sp, #0x98
  2f6e3e: 9820         	ldr	r0, [sp, #0x80]
  2f6e40: 4619         	mov	r1, r3
  2f6e42: 47a0         	blx	r4
  2f6e44: 9b20         	ldr	r3, [sp, #0x80]
  2f6e46: 681b         	ldr	r3, [r3]
  2f6e48: 337c         	adds	r3, #0x7c
  2f6e4a: 681c         	ldr	r4, [r3]
  2f6e4c: ab26         	add	r3, sp, #0x98
  2f6e4e: 4618         	mov	r0, r3
  2f6e50: f04f 0100    	mov.w	r1, #0x0
  2f6e54: f04f 527e    	mov.w	r2, #0x3f800000
  2f6e58: f29b ff4a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29be94
  2f6e5c: ab26         	add	r3, sp, #0x98
  2f6e5e: 9820         	ldr	r0, [sp, #0x80]
  2f6e60: 4619         	mov	r1, r3
  2f6e62: 47a0         	blx	r4
  2f6e64: 9b20         	ldr	r3, [sp, #0x80]
  2f6e66: 681b         	ldr	r3, [r3]
  2f6e68: 3338         	adds	r3, #0x38
  2f6e6a: 681b         	ldr	r3, [r3]
  2f6e6c: 9820         	ldr	r0, [sp, #0x80]
  2f6e6e: f04f 0100    	mov.w	r1, #0x0
  2f6e72: f6cb 7180    	movt	r1, #0xbf80
  2f6e76: 4798         	blx	r3
  2f6e78: 9b11         	ldr	r3, [sp, #0x44]
  2f6e7a: 2b0c         	cmp	r3, #0xc
  2f6e7c: d83b         	bhi	0x2f6ef6 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0xc8e> @ imm = #0x76
  2f6e7e: a102         	adr	r1, #8 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0xc1c>
  2f6e80: f851 2023    	ldr.w	r2, [r1, r3, lsl #2]
  2f6e84: 4411         	add	r1, r2
  2f6e86: 4708         	bx	r1
  2f6e88: 00b9         	lsls	r1, r7, #0x2
  2f6e8a: 0000         	movs	r0, r0
  2f6e8c: 006f         	lsls	r7, r5, #0x1
  2f6e8e: 0000         	movs	r0, r0
  2f6e90: 0035         	movs	r5, r6
  2f6e92: 0000         	movs	r0, r0
  2f6e94: 006f         	lsls	r7, r5, #0x1
  2f6e96: 0000         	movs	r0, r0
  2f6e98: 006f         	lsls	r7, r5, #0x1
  2f6e9a: 0000         	movs	r0, r0
  2f6e9c: 006f         	lsls	r7, r5, #0x1
  2f6e9e: 0000         	movs	r0, r0
  2f6ea0: 006f         	lsls	r7, r5, #0x1
  2f6ea2: 0000         	movs	r0, r0
  2f6ea4: 006f         	lsls	r7, r5, #0x1
  2f6ea6: 0000         	movs	r0, r0
  2f6ea8: 006f         	lsls	r7, r5, #0x1
  2f6eaa: 0000         	movs	r0, r0
  2f6eac: 006f         	lsls	r7, r5, #0x1
  2f6eae: 0000         	movs	r0, r0
  2f6eb0: 006f         	lsls	r7, r5, #0x1
  2f6eb2: 0000         	movs	r0, r0
  2f6eb4: 0035         	movs	r5, r6
  2f6eb6: 0000         	movs	r0, r0
  2f6eb8: 00b9         	lsls	r1, r7, #0x2
  2f6eba: 0000         	movs	r0, r0
  2f6ebc: 9b1a         	ldr	r3, [sp, #0x68]
  2f6ebe: 681b         	ldr	r3, [r3]
  2f6ec0: 3390         	adds	r3, #0x90
  2f6ec2: 681b         	ldr	r3, [r3]
  2f6ec4: 981a         	ldr	r0, [sp, #0x68]
  2f6ec6: 2100         	movs	r1, #0x0
  2f6ec8: 4798         	blx	r3
  2f6eca: 9b19         	ldr	r3, [sp, #0x64]
  2f6ecc: 681b         	ldr	r3, [r3]
  2f6ece: 3390         	adds	r3, #0x90
  2f6ed0: 681b         	ldr	r3, [r3]
  2f6ed2: 9819         	ldr	r0, [sp, #0x64]
  2f6ed4: 2100         	movs	r1, #0x0
  2f6ed6: 4798         	blx	r3
  2f6ed8: 9b1c         	ldr	r3, [sp, #0x70]
  2f6eda: 681b         	ldr	r3, [r3]
  2f6edc: 3390         	adds	r3, #0x90
  2f6ede: 681b         	ldr	r3, [r3]
  2f6ee0: 981c         	ldr	r0, [sp, #0x70]
  2f6ee2: 2100         	movs	r1, #0x0
  2f6ee4: 4798         	blx	r3
  2f6ee6: 9b1e         	ldr	r3, [sp, #0x78]
  2f6ee8: 681b         	ldr	r3, [r3]
  2f6eea: 3390         	adds	r3, #0x90
  2f6eec: 681b         	ldr	r3, [r3]
  2f6eee: 981e         	ldr	r0, [sp, #0x78]
  2f6ef0: 2100         	movs	r1, #0x0
  2f6ef2: 4798         	blx	r3
  2f6ef4: e025         	b	0x2f6f42 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0xcda> @ imm = #0x4a
  2f6ef6: 9b19         	ldr	r3, [sp, #0x64]
  2f6ef8: 681b         	ldr	r3, [r3]
  2f6efa: 3390         	adds	r3, #0x90
  2f6efc: 681b         	ldr	r3, [r3]
  2f6efe: 9819         	ldr	r0, [sp, #0x64]
  2f6f00: 2100         	movs	r1, #0x0
  2f6f02: 4798         	blx	r3
  2f6f04: e01d         	b	0x2f6f42 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0xcda> @ imm = #0x3a
  2f6f06: bf00         	nop
  2f6f08: dfde         	svc	#0xde
  2f6f0a: 004c         	lsls	r4, r1, #0x1
  2f6f0c: df1c         	svc	#0x1c
  2f6f0e: 004c         	lsls	r4, r1, #0x1
  2f6f10: de7c         	udf	#0x7c
  2f6f12: 004c         	lsls	r4, r1, #0x1
  2f6f14: dddc         	ble	0x2f6ed0 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0xc68> @ imm = #-0x48
  2f6f16: 004c         	lsls	r4, r1, #0x1
  2f6f18: dd1e         	ble	0x2f6f58 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0xcf0> @ imm = #0x3c
  2f6f1a: 004c         	lsls	r4, r1, #0x1
  2f6f1c: dc60         	bgt	0x2f6fe0 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0xd78> @ imm = #0xc0
  2f6f1e: 004c         	lsls	r4, r1, #0x1
  2f6f20: dbc0         	blt	0x2f6ea4 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0xc3c> @ imm = #-0x80
  2f6f22: 004c         	lsls	r4, r1, #0x1
  2f6f24: dafe         	bge	0x2f6f24 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0xcbc> @ imm = #-0x4
  2f6f26: 004c         	lsls	r4, r1, #0x1
  2f6f28: da3c         	bge	0x2f6fa4 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0xd3c> @ imm = #0x78
  2f6f2a: 004c         	lsls	r4, r1, #0x1
  2f6f2c: d97c         	bls	0x2f7028 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0xdc0> @ imm = #0xf8
  2f6f2e: 004c         	lsls	r4, r1, #0x1
  2f6f30: d8c0         	bhi	0x2f6eb4 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0xc4c> @ imm = #-0x80
  2f6f32: 004c         	lsls	r4, r1, #0x1
  2f6f34: d800         	bhi	0x2f6f38 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0xcd0> @ imm = #0x0
  2f6f36: 004c         	lsls	r4, r1, #0x1
  2f6f38: d764         	bvc	0x2f7004 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0xd9c> @ imm = #0xc8
  2f6f3a: 004c         	lsls	r4, r1, #0x1
  2f6f3c: d6c8         	bvs	0x2f6ed0 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)+0xc68> @ imm = #-0x70
  2f6f3e: 004c         	lsls	r4, r1, #0x1
  2f6f40: bf00         	nop
  2f6f42: f04f 0300    	mov.w	r3, #0x0
  2f6f46: 9300         	str	r3, [sp]
  2f6f48: 9812         	ldr	r0, [sp, #0x48]
  2f6f4a: f04f 0100    	mov.w	r1, #0x0
  2f6f4e: f04f 0200    	mov.w	r2, #0x0
  2f6f52: f04f 0300    	mov.w	r3, #0x0
  2f6f56: f2c5 ff6b    	bl	0x5bce30 <cocos2d::CCRenderTexture::clear(float, float, float, float)> @ imm = #0x2c5ed6
  2f6f5a: 9812         	ldr	r0, [sp, #0x48]
  2f6f5c: f2c5 fda4    	bl	0x5bcaa8 <cocos2d::CCRenderTexture::begin()> @ imm = #0x2c5b48
  2f6f60: 9b20         	ldr	r3, [sp, #0x80]
  2f6f62: 681b         	ldr	r3, [r3]
  2f6f64: f503 73b0    	add.w	r3, r3, #0x160
  2f6f68: 681b         	ldr	r3, [r3]
  2f6f6a: 9a20         	ldr	r2, [sp, #0x80]
  2f6f6c: 4610         	mov	r0, r2
  2f6f6e: 4798         	blx	r3
  2f6f70: 9b1a         	ldr	r3, [sp, #0x68]
  2f6f72: 681b         	ldr	r3, [r3]
  2f6f74: f503 73b0    	add.w	r3, r3, #0x160
  2f6f78: 681b         	ldr	r3, [r3]
  2f6f7a: 9a1a         	ldr	r2, [sp, #0x68]
  2f6f7c: 4610         	mov	r0, r2
  2f6f7e: 4798         	blx	r3
  2f6f80: 9b13         	ldr	r3, [sp, #0x4c]
  2f6f82: 681b         	ldr	r3, [r3]
  2f6f84: f503 73b0    	add.w	r3, r3, #0x160
  2f6f88: 681b         	ldr	r3, [r3]
  2f6f8a: 9a13         	ldr	r2, [sp, #0x4c]
  2f6f8c: 4610         	mov	r0, r2
  2f6f8e: 4798         	blx	r3
  2f6f90: 9b1c         	ldr	r3, [sp, #0x70]
  2f6f92: 681b         	ldr	r3, [r3]
  2f6f94: f503 73b0    	add.w	r3, r3, #0x160
  2f6f98: 681b         	ldr	r3, [r3]
  2f6f9a: 9a1c         	ldr	r2, [sp, #0x70]
  2f6f9c: 4610         	mov	r0, r2
  2f6f9e: 4798         	blx	r3
  2f6fa0: 9b1b         	ldr	r3, [sp, #0x6c]
  2f6fa2: 681b         	ldr	r3, [r3]
  2f6fa4: f503 73b0    	add.w	r3, r3, #0x160
  2f6fa8: 681b         	ldr	r3, [r3]
  2f6faa: 9a1b         	ldr	r2, [sp, #0x6c]
  2f6fac: 4610         	mov	r0, r2
  2f6fae: 4798         	blx	r3
  2f6fb0: 9b14         	ldr	r3, [sp, #0x50]
  2f6fb2: 681b         	ldr	r3, [r3]
  2f6fb4: f503 73b0    	add.w	r3, r3, #0x160
  2f6fb8: 681b         	ldr	r3, [r3]
  2f6fba: 9a14         	ldr	r2, [sp, #0x50]
  2f6fbc: 4610         	mov	r0, r2
  2f6fbe: 4798         	blx	r3
  2f6fc0: 9b15         	ldr	r3, [sp, #0x54]
  2f6fc2: 681b         	ldr	r3, [r3]
  2f6fc4: f503 73b0    	add.w	r3, r3, #0x160
  2f6fc8: 681b         	ldr	r3, [r3]
  2f6fca: 9a15         	ldr	r2, [sp, #0x54]
  2f6fcc: 4610         	mov	r0, r2
  2f6fce: 4798         	blx	r3
  2f6fd0: 9b18         	ldr	r3, [sp, #0x60]
  2f6fd2: 681b         	ldr	r3, [r3]
  2f6fd4: f503 73b0    	add.w	r3, r3, #0x160
  2f6fd8: 681b         	ldr	r3, [r3]
  2f6fda: 9a18         	ldr	r2, [sp, #0x60]
  2f6fdc: 4610         	mov	r0, r2
  2f6fde: 4798         	blx	r3
  2f6fe0: 9b16         	ldr	r3, [sp, #0x58]
  2f6fe2: 681b         	ldr	r3, [r3]
  2f6fe4: f503 73b0    	add.w	r3, r3, #0x160
  2f6fe8: 681b         	ldr	r3, [r3]
  2f6fea: 9a16         	ldr	r2, [sp, #0x58]
  2f6fec: 4610         	mov	r0, r2
  2f6fee: 4798         	blx	r3
  2f6ff0: 9b17         	ldr	r3, [sp, #0x5c]
  2f6ff2: 681b         	ldr	r3, [r3]
  2f6ff4: f503 73b0    	add.w	r3, r3, #0x160
  2f6ff8: 681b         	ldr	r3, [r3]
  2f6ffa: 9a17         	ldr	r2, [sp, #0x5c]
  2f6ffc: 4610         	mov	r0, r2
  2f6ffe: 4798         	blx	r3
  2f7000: 9b1e         	ldr	r3, [sp, #0x78]
  2f7002: 681b         	ldr	r3, [r3]
  2f7004: f503 73b0    	add.w	r3, r3, #0x160
  2f7008: 681b         	ldr	r3, [r3]
  2f700a: 9a1e         	ldr	r2, [sp, #0x78]
  2f700c: 4610         	mov	r0, r2
  2f700e: 4798         	blx	r3
  2f7010: 9b19         	ldr	r3, [sp, #0x64]
  2f7012: 681b         	ldr	r3, [r3]
  2f7014: f503 73b0    	add.w	r3, r3, #0x160
  2f7018: 681b         	ldr	r3, [r3]
  2f701a: 9a19         	ldr	r2, [sp, #0x64]
  2f701c: 4610         	mov	r0, r2
  2f701e: 4798         	blx	r3
  2f7020: 9b1d         	ldr	r3, [sp, #0x74]
  2f7022: 681b         	ldr	r3, [r3]
  2f7024: f503 73b0    	add.w	r3, r3, #0x160
  2f7028: 681b         	ldr	r3, [r3]
  2f702a: 9a1d         	ldr	r2, [sp, #0x74]
  2f702c: 4610         	mov	r0, r2
  2f702e: 4798         	blx	r3
  2f7030: 9b1f         	ldr	r3, [sp, #0x7c]
  2f7032: 681b         	ldr	r3, [r3]
  2f7034: f503 73b0    	add.w	r3, r3, #0x160
  2f7038: 681b         	ldr	r3, [r3]
  2f703a: 9a1f         	ldr	r2, [sp, #0x7c]
  2f703c: 4610         	mov	r0, r2
  2f703e: 4798         	blx	r3
  2f7040: 9812         	ldr	r0, [sp, #0x48]
  2f7042: f2c5 fed3    	bl	0x5bcdec <cocos2d::CCRenderTexture::end()> @ imm = #0x2c5da6
  2f7046: 9b12         	ldr	r3, [sp, #0x48]
  2f7048: 681b         	ldr	r3, [r3]
  2f704a: f503 73ce    	add.w	r3, r3, #0x19c
  2f704e: 681b         	ldr	r3, [r3]
  2f7050: 9812         	ldr	r0, [sp, #0x48]
  2f7052: 4798         	blx	r3
  2f7054: 4603         	mov	r3, r0
  2f7056: 681a         	ldr	r2, [r3]
  2f7058: f502 72fa    	add.w	r2, r2, #0x1f4
  2f705c: 6812         	ldr	r2, [r2]
  2f705e: 4618         	mov	r0, r3
  2f7060: 4790         	blx	r2
  2f7062: 4603         	mov	r3, r0
  2f7064: 9321         	str	r3, [sp, #0x84]
  2f7066: 9b21         	ldr	r3, [sp, #0x84]
  2f7068: 4618         	mov	r0, r3
  2f706a: b02c         	add	sp, #0xb0
  2f706c: bd10         	pop	{r4, pc}

// ==== AvatarRenderer::getHeadTexture
//      file offset 0x2f7070 (= ELF address; Ghidra 0x307070), 316 bytes, Thumb-2
  2f7070: b510         	push	{r4, lr}
  2f7072: b08c         	sub	sp, #0x30
  2f7074: 9005         	str	r0, [sp, #0x14]
  2f7076: 9104         	str	r1, [sp, #0x10]
  2f7078: 9203         	str	r2, [sp, #0xc]
  2f707a: 4c49         	ldr	r4, [pc, #0x124]        @ 0x2f71a0 <AvatarRenderer::getHeadTexture(cocos2d::CCArray*, int)+0x130>
  2f707c: 447c         	add	r4, pc
  2f707e: 9b03         	ldr	r3, [sp, #0xc]
  2f7080: 2b00         	cmp	r3, #0x0
  2f7082: d10a         	bne	0x2f709a <AvatarRenderer::getHeadTexture(cocos2d::CCArray*, int)+0x2a> @ imm = #0x14
  2f7084: 9b04         	ldr	r3, [sp, #0x10]
  2f7086: 2b00         	cmp	r3, #0x0
  2f7088: d007         	beq	0x2f709a <AvatarRenderer::getHeadTexture(cocos2d::CCArray*, int)+0x2a> @ imm = #0xe
  2f708a: 9804         	ldr	r0, [sp, #0x10]
  2f708c: f2a3 f828    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x2a3050
  2f7090: 4603         	mov	r3, r0
  2f7092: 2b00         	cmp	r3, #0x0
  2f7094: d001         	beq	0x2f709a <AvatarRenderer::getHeadTexture(cocos2d::CCArray*, int)+0x2a> @ imm = #0x2
  2f7096: 2301         	movs	r3, #0x1
  2f7098: e000         	b	0x2f709c <AvatarRenderer::getHeadTexture(cocos2d::CCArray*, int)+0x2c> @ imm = #0x0
  2f709a: 2300         	movs	r3, #0x0
  2f709c: 2b00         	cmp	r3, #0x0
  2f709e: d005         	beq	0x2f70ac <AvatarRenderer::getHeadTexture(cocos2d::CCArray*, int)+0x3c> @ imm = #0xa
  2f70a0: 9805         	ldr	r0, [sp, #0x14]
  2f70a2: 9904         	ldr	r1, [sp, #0x10]
  2f70a4: f7ff f8e0    	bl	0x2f6268 <AvatarRenderer::getCustomHeadTexture(cocos2d::CCArray*)> @ imm = #-0xe40
  2f70a8: 4603         	mov	r3, r0
  2f70aa: e076         	b	0x2f719a <AvatarRenderer::getHeadTexture(cocos2d::CCArray*, int)+0x12a> @ imm = #0xec
  2f70ac: 9b03         	ldr	r3, [sp, #0xc]
  2f70ae: 011a         	lsls	r2, r3, #0x4
  2f70b0: 4b3c         	ldr	r3, [pc, #0xf0]         @ 0x2f71a4 <AvatarRenderer::getHeadTexture(cocos2d::CCArray*, int)+0x134>
  2f70b2: 58e3         	ldr	r3, [r4, r3]
  2f70b4: 4413         	add	r3, r2
  2f70b6: 4a3c         	ldr	r2, [pc, #0xf0]         @ 0x2f71a8 <AvatarRenderer::getHeadTexture(cocos2d::CCArray*, int)+0x138>
  2f70b8: 447a         	add	r2, pc
  2f70ba: 4610         	mov	r0, r2
  2f70bc: 4619         	mov	r1, r3
  2f70be: f2e1 f89f    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2e113e
  2f70c2: 4603         	mov	r3, r0
  2f70c4: 9307         	str	r3, [sp, #0x1c]
  2f70c6: 9b07         	ldr	r3, [sp, #0x1c]
  2f70c8: 681b         	ldr	r3, [r3]
  2f70ca: f503 73fa    	add.w	r3, r3, #0x1f4
  2f70ce: 681b         	ldr	r3, [r3]
  2f70d0: 9807         	ldr	r0, [sp, #0x1c]
  2f70d2: 4798         	blx	r3
  2f70d4: 4603         	mov	r3, r0
  2f70d6: 4618         	mov	r0, r3
  2f70d8: f2fa ff54    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2faea8
  2f70dc: 9b07         	ldr	r3, [sp, #0x1c]
  2f70de: 681b         	ldr	r3, [r3]
  2f70e0: 334c         	adds	r3, #0x4c
  2f70e2: 681c         	ldr	r4, [r3]
  2f70e4: ab0a         	add	r3, sp, #0x28
  2f70e6: 4618         	mov	r0, r3
  2f70e8: f04f 0100    	mov.w	r1, #0x0
  2f70ec: f2c4 2120    	movt	r1, #0x4220
  2f70f0: f04f 0200    	mov.w	r2, #0x0
  2f70f4: f2c4 12e8    	movt	r2, #0x41e8
  2f70f8: f29b fdfa    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29bbf4
  2f70fc: ab0a         	add	r3, sp, #0x28
  2f70fe: 9807         	ldr	r0, [sp, #0x1c]
  2f7100: 4619         	mov	r1, r3
  2f7102: 47a0         	blx	r4
  2f7104: 9b07         	ldr	r3, [sp, #0x1c]
  2f7106: 681b         	ldr	r3, [r3]
  2f7108: 337c         	adds	r3, #0x7c
  2f710a: 681c         	ldr	r4, [r3]
  2f710c: ab0a         	add	r3, sp, #0x28
  2f710e: 4618         	mov	r0, r3
  2f7110: f04f 517c    	mov.w	r1, #0x3f000000
  2f7114: f04f 527c    	mov.w	r2, #0x3f000000
  2f7118: f29b fdea    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29bbd4
  2f711c: ab0a         	add	r3, sp, #0x28
  2f711e: 9807         	ldr	r0, [sp, #0x1c]
  2f7120: 4619         	mov	r1, r3
  2f7122: 47a0         	blx	r4
  2f7124: 9b07         	ldr	r3, [sp, #0x1c]
  2f7126: 681b         	ldr	r3, [r3]
  2f7128: 3338         	adds	r3, #0x38
  2f712a: 681b         	ldr	r3, [r3]
  2f712c: 9807         	ldr	r0, [sp, #0x1c]
  2f712e: f04f 0100    	mov.w	r1, #0x0
  2f7132: f6cb 7180    	movt	r1, #0xbf80
  2f7136: 4798         	blx	r3
  2f7138: 2050         	movs	r0, #0x50
  2f713a: 213c         	movs	r1, #0x3c
  2f713c: f2c5 fa78    	bl	0x5bc630 <cocos2d::CCRenderTexture::create(int, int)> @ imm = #0x2c54f0
  2f7140: 4603         	mov	r3, r0
  2f7142: 9308         	str	r3, [sp, #0x20]
  2f7144: f04f 0300    	mov.w	r3, #0x0
  2f7148: 9300         	str	r3, [sp]
  2f714a: 9808         	ldr	r0, [sp, #0x20]
  2f714c: f04f 0100    	mov.w	r1, #0x0
  2f7150: f04f 0200    	mov.w	r2, #0x0
  2f7154: f04f 0300    	mov.w	r3, #0x0
  2f7158: f2c5 fe6a    	bl	0x5bce30 <cocos2d::CCRenderTexture::clear(float, float, float, float)> @ imm = #0x2c5cd4
  2f715c: 9808         	ldr	r0, [sp, #0x20]
  2f715e: f2c5 fca3    	bl	0x5bcaa8 <cocos2d::CCRenderTexture::begin()> @ imm = #0x2c5946
  2f7162: 9b07         	ldr	r3, [sp, #0x1c]
  2f7164: 681b         	ldr	r3, [r3]
  2f7166: f503 73b0    	add.w	r3, r3, #0x160
  2f716a: 681b         	ldr	r3, [r3]
  2f716c: 9a07         	ldr	r2, [sp, #0x1c]
  2f716e: 4610         	mov	r0, r2
  2f7170: 4798         	blx	r3
  2f7172: 9808         	ldr	r0, [sp, #0x20]
  2f7174: f2c5 fe3a    	bl	0x5bcdec <cocos2d::CCRenderTexture::end()> @ imm = #0x2c5c74
  2f7178: 9b08         	ldr	r3, [sp, #0x20]
  2f717a: 681b         	ldr	r3, [r3]
  2f717c: f503 73ce    	add.w	r3, r3, #0x19c
  2f7180: 681b         	ldr	r3, [r3]
  2f7182: 9808         	ldr	r0, [sp, #0x20]
  2f7184: 4798         	blx	r3
  2f7186: 4603         	mov	r3, r0
  2f7188: 681a         	ldr	r2, [r3]
  2f718a: f502 72fa    	add.w	r2, r2, #0x1f4
  2f718e: 6812         	ldr	r2, [r2]
  2f7190: 4618         	mov	r0, r3
  2f7192: 4790         	blx	r2
  2f7194: 4603         	mov	r3, r0
  2f7196: 9309         	str	r3, [sp, #0x24]
  2f7198: 9b09         	ldr	r3, [sp, #0x24]
  2f719a: 4618         	mov	r0, r3
  2f719c: b00c         	add	sp, #0x30
  2f719e: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2f719f); words below are literal-pool data ---
  2f71a0: b98c         	cbnz	r4, 0x2f71c6 <AvatarRenderer::getCustomBodyTexture(cocos2d::CCArray*)+0x1a> @ imm = #0x22
  2f71a2: 0063         	lsls	r3, r4, #0x1
  2f71a4: d7a8         	bvc	0x2f70f8 <AvatarRenderer::getHeadTexture(cocos2d::CCArray*, int)+0x88> @ imm = #-0xb0
  2f71a6: ffff d410    	vsri.32	d29, d0, #0x1
  2f71aa: 004c         	lsls	r4, r1, #0x1

// ==== AvatarRenderer::getCustomBodyTexture
//      file offset 0x2f71ac (= ELF address; Ghidra 0x3071ac), 1108 bytes, Thumb-2
  2f71ac: b510         	push	{r4, lr}
  2f71ae: b09a         	sub	sp, #0x68
  2f71b0: 9003         	str	r0, [sp, #0xc]
  2f71b2: 9102         	str	r1, [sp, #0x8]
  2f71b4: 9803         	ldr	r0, [sp, #0xc]
  2f71b6: 9902         	ldr	r1, [sp, #0x8]
  2f71b8: 2202         	movs	r2, #0x2
  2f71ba: f7ff f82b    	bl	0x2f6214 <AvatarRenderer::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0xfaa
  2f71be: 4603         	mov	r3, r0
  2f71c0: 9305         	str	r3, [sp, #0x14]
  2f71c2: 9803         	ldr	r0, [sp, #0xc]
  2f71c4: 9902         	ldr	r1, [sp, #0x8]
  2f71c6: 220f         	movs	r2, #0xf
  2f71c8: f7ff f824    	bl	0x2f6214 <AvatarRenderer::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0xfb8
  2f71cc: 4603         	mov	r3, r0
  2f71ce: 9306         	str	r3, [sp, #0x18]
  2f71d0: 9803         	ldr	r0, [sp, #0xc]
  2f71d2: 9902         	ldr	r1, [sp, #0x8]
  2f71d4: 2210         	movs	r2, #0x10
  2f71d6: f7ff f81d    	bl	0x2f6214 <AvatarRenderer::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0xfc6
  2f71da: 4603         	mov	r3, r0
  2f71dc: 9307         	str	r3, [sp, #0x1c]
  2f71de: 9803         	ldr	r0, [sp, #0xc]
  2f71e0: 9902         	ldr	r1, [sp, #0x8]
  2f71e2: 2211         	movs	r2, #0x11
  2f71e4: f7ff f816    	bl	0x2f6214 <AvatarRenderer::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0xfd4
  2f71e8: 4603         	mov	r3, r0
  2f71ea: 9308         	str	r3, [sp, #0x20]
  2f71ec: 9803         	ldr	r0, [sp, #0xc]
  2f71ee: 9902         	ldr	r1, [sp, #0x8]
  2f71f0: 2214         	movs	r2, #0x14
  2f71f2: f7ff f80f    	bl	0x2f6214 <AvatarRenderer::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0xfe2
  2f71f6: 4603         	mov	r3, r0
  2f71f8: 9309         	str	r3, [sp, #0x24]
  2f71fa: 2304         	movs	r3, #0x4
  2f71fc: 1e5a         	subs	r2, r3, #0x1
  2f71fe: 9b05         	ldr	r3, [sp, #0x14]
  2f7200: 429a         	cmp	r2, r3
  2f7202: d302         	blo	0x2f720a <AvatarRenderer::getCustomBodyTexture(cocos2d::CCArray*)+0x5e> @ imm = #0x4
  2f7204: 9b05         	ldr	r3, [sp, #0x14]
  2f7206: 2b00         	cmp	r3, #0x0
  2f7208: da01         	bge	0x2f720e <AvatarRenderer::getCustomBodyTexture(cocos2d::CCArray*)+0x62> @ imm = #0x2
  2f720a: 2300         	movs	r3, #0x0
  2f720c: 9305         	str	r3, [sp, #0x14]
  2f720e: 2302         	movs	r3, #0x2
  2f7210: 1e5a         	subs	r2, r3, #0x1
  2f7212: 9b06         	ldr	r3, [sp, #0x18]
  2f7214: 429a         	cmp	r2, r3
  2f7216: d302         	blo	0x2f721e <AvatarRenderer::getCustomBodyTexture(cocos2d::CCArray*)+0x72> @ imm = #0x4
  2f7218: 9b06         	ldr	r3, [sp, #0x18]
  2f721a: 2b00         	cmp	r3, #0x0
  2f721c: da01         	bge	0x2f7222 <AvatarRenderer::getCustomBodyTexture(cocos2d::CCArray*)+0x76> @ imm = #0x2
  2f721e: 2300         	movs	r3, #0x0
  2f7220: 9306         	str	r3, [sp, #0x18]
  2f7222: 230b         	movs	r3, #0xb
  2f7224: 1e5a         	subs	r2, r3, #0x1
  2f7226: 9b07         	ldr	r3, [sp, #0x1c]
  2f7228: 429a         	cmp	r2, r3
  2f722a: d302         	blo	0x2f7232 <AvatarRenderer::getCustomBodyTexture(cocos2d::CCArray*)+0x86> @ imm = #0x4
  2f722c: 9b07         	ldr	r3, [sp, #0x1c]
  2f722e: 2b00         	cmp	r3, #0x0
  2f7230: da01         	bge	0x2f7236 <AvatarRenderer::getCustomBodyTexture(cocos2d::CCArray*)+0x8a> @ imm = #0x2
  2f7232: 2300         	movs	r3, #0x0
  2f7234: 9307         	str	r3, [sp, #0x1c]
  2f7236: 230b         	movs	r3, #0xb
  2f7238: 1e5a         	subs	r2, r3, #0x1
  2f723a: 9b08         	ldr	r3, [sp, #0x20]
  2f723c: 429a         	cmp	r2, r3
  2f723e: d302         	blo	0x2f7246 <AvatarRenderer::getCustomBodyTexture(cocos2d::CCArray*)+0x9a> @ imm = #0x4
  2f7240: 9b08         	ldr	r3, [sp, #0x20]
  2f7242: 2b00         	cmp	r3, #0x0
  2f7244: da01         	bge	0x2f724a <AvatarRenderer::getCustomBodyTexture(cocos2d::CCArray*)+0x9e> @ imm = #0x2
  2f7246: 2300         	movs	r3, #0x0
  2f7248: 9308         	str	r3, [sp, #0x20]
  2f724a: 2307         	movs	r3, #0x7
  2f724c: 1e5a         	subs	r2, r3, #0x1
  2f724e: 9b09         	ldr	r3, [sp, #0x24]
  2f7250: 429a         	cmp	r2, r3
  2f7252: d302         	blo	0x2f725a <AvatarRenderer::getCustomBodyTexture(cocos2d::CCArray*)+0xae> @ imm = #0x4
  2f7254: 9b09         	ldr	r3, [sp, #0x24]
  2f7256: 2b00         	cmp	r3, #0x0
  2f7258: da01         	bge	0x2f725e <AvatarRenderer::getCustomBodyTexture(cocos2d::CCArray*)+0xb2> @ imm = #0x2
  2f725a: 2300         	movs	r3, #0x0
  2f725c: 9309         	str	r3, [sp, #0x24]
  2f725e: 2046         	movs	r0, #0x46
  2f7260: 2146         	movs	r1, #0x46
  2f7262: f2c5 f9e5    	bl	0x5bc630 <cocos2d::CCRenderTexture::create(int, int)> @ imm = #0x2c53ca
  2f7266: 4603         	mov	r3, r0
  2f7268: 930a         	str	r3, [sp, #0x28]
  2f726a: 9b0a         	ldr	r3, [sp, #0x28]
  2f726c: 681b         	ldr	r3, [r3]
  2f726e: f503 73ce    	add.w	r3, r3, #0x19c
  2f7272: 681b         	ldr	r3, [r3]
  2f7274: 980a         	ldr	r0, [sp, #0x28]
  2f7276: 4798         	blx	r3
  2f7278: 4603         	mov	r3, r0
  2f727a: 4618         	mov	r0, r3
  2f727c: f7e5 fd2e    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x1a5a4
  2f7280: 4603         	mov	r3, r0
  2f7282: aa16         	add	r2, sp, #0x58
  2f7284: 4610         	mov	r0, r2
  2f7286: 4619         	mov	r1, r3
  2f7288: f29c f846    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x29c08c
  2f728c: ed9d 7a18    	vldr	s14, [sp, #96]
  2f7290: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2f7294: eec7 7a27    	vdiv.f32	s15, s14, s15
  2f7298: eefd 7ae7    	vcvt.s32.f32	s15, s15
  2f729c: eef8 6ae7    	vcvt.f32.s32	s13, s15
  2f72a0: ed9d 7a19    	vldr	s14, [sp, #100]
  2f72a4: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2f72a8: eec7 7a27    	vdiv.f32	s15, s14, s15
  2f72ac: eefd 7ae7    	vcvt.s32.f32	s15, s15
  2f72b0: eef8 7ae7    	vcvt.f32.s32	s15, s15
  2f72b4: ab10         	add	r3, sp, #0x40
  2f72b6: 4618         	mov	r0, r3
  2f72b8: ee16 1a90    	vmov	r1, s13
  2f72bc: ee17 2a90    	vmov	r2, s15
  2f72c0: f29b fd16    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29ba2c
  2f72c4: 9b06         	ldr	r3, [sp, #0x18]
  2f72c6: 011b         	lsls	r3, r3, #0x4
  2f72c8: f603 3378    	addw	r3, r3, #0xb78
  2f72cc: 9a03         	ldr	r2, [sp, #0xc]
  2f72ce: 4413         	add	r3, r2
  2f72d0: 3304         	adds	r3, #0x4
  2f72d2: 4ac7         	ldr	r2, [pc, #0x31c]        @ 0x2f75f0 <AvatarRenderer::getCustomBodyTexture(cocos2d::CCArray*)+0x444>
  2f72d4: 447a         	add	r2, pc
  2f72d6: 4610         	mov	r0, r2
  2f72d8: 4619         	mov	r1, r3
  2f72da: f2e0 ff91    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2e0f22
  2f72de: 4603         	mov	r3, r0
  2f72e0: 930b         	str	r3, [sp, #0x2c]
  2f72e2: 9b0b         	ldr	r3, [sp, #0x2c]
  2f72e4: 681b         	ldr	r3, [r3]
  2f72e6: f503 73fa    	add.w	r3, r3, #0x1f4
  2f72ea: 681b         	ldr	r3, [r3]
  2f72ec: 980b         	ldr	r0, [sp, #0x2c]
  2f72ee: 4798         	blx	r3
  2f72f0: 4603         	mov	r3, r0
  2f72f2: 4618         	mov	r0, r3
  2f72f4: f2fa fe46    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2fac8c
  2f72f8: 9b0b         	ldr	r3, [sp, #0x2c]
  2f72fa: 681b         	ldr	r3, [r3]
  2f72fc: f503 73de    	add.w	r3, r3, #0x1bc
  2f7300: 681c         	ldr	r4, [r3]
  2f7302: 9a05         	ldr	r2, [sp, #0x14]
  2f7304: 4613         	mov	r3, r2
  2f7306: 005b         	lsls	r3, r3, #0x1
  2f7308: 4413         	add	r3, r2
  2f730a: f603 1308    	addw	r3, r3, #0x908
  2f730e: 9a03         	ldr	r2, [sp, #0xc]
  2f7310: 4413         	add	r3, r2
  2f7312: 3307         	adds	r3, #0x7
  2f7314: 980b         	ldr	r0, [sp, #0x2c]
  2f7316: 4619         	mov	r1, r3
  2f7318: 47a0         	blx	r4
  2f731a: 9b0b         	ldr	r3, [sp, #0x2c]
  2f731c: 681b         	ldr	r3, [r3]
  2f731e: 334c         	adds	r3, #0x4c
  2f7320: 681c         	ldr	r4, [r3]
  2f7322: ab12         	add	r3, sp, #0x48
  2f7324: 4618         	mov	r0, r3
  2f7326: f04f 0100    	mov.w	r1, #0x0
  2f732a: f2cc 11c0    	movt	r1, #0xc1c0
  2f732e: f04f 0200    	mov.w	r2, #0x0
  2f7332: f2cc 12e0    	movt	r2, #0xc1e0
  2f7336: f29b fcdb    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29b9b6
  2f733a: a914         	add	r1, sp, #0x50
  2f733c: aa10         	add	r2, sp, #0x40
  2f733e: ab12         	add	r3, sp, #0x48
  2f7340: 4608         	mov	r0, r1
  2f7342: 4611         	mov	r1, r2
  2f7344: 461a         	mov	r2, r3
  2f7346: f7fb fb6f    	bl	0x2f2a28 <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x1cc> @ imm = #-0x4922
  2f734a: ab14         	add	r3, sp, #0x50
  2f734c: 980b         	ldr	r0, [sp, #0x2c]
  2f734e: 4619         	mov	r1, r3
  2f7350: 47a0         	blx	r4
  2f7352: 9b0b         	ldr	r3, [sp, #0x2c]
  2f7354: 681b         	ldr	r3, [r3]
  2f7356: 337c         	adds	r3, #0x7c
  2f7358: 681c         	ldr	r4, [r3]
  2f735a: ab14         	add	r3, sp, #0x50
  2f735c: 4618         	mov	r0, r3
  2f735e: f04f 0100    	mov.w	r1, #0x0
  2f7362: f04f 527e    	mov.w	r2, #0x3f800000
  2f7366: f29b fcc3    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29b986
  2f736a: ab14         	add	r3, sp, #0x50
  2f736c: 980b         	ldr	r0, [sp, #0x2c]
  2f736e: 4619         	mov	r1, r3
  2f7370: 47a0         	blx	r4
  2f7372: 9b0b         	ldr	r3, [sp, #0x2c]
  2f7374: 681b         	ldr	r3, [r3]
  2f7376: 3338         	adds	r3, #0x38
  2f7378: 681b         	ldr	r3, [r3]
  2f737a: 980b         	ldr	r0, [sp, #0x2c]
  2f737c: f04f 0100    	mov.w	r1, #0x0
  2f7380: f6cb 7180    	movt	r1, #0xbf80
  2f7384: 4798         	blx	r3
  2f7386: 9b08         	ldr	r3, [sp, #0x20]
  2f7388: 011b         	lsls	r3, r3, #0x4
  2f738a: f603 5318    	addw	r3, r3, #0xd18
  2f738e: 9a03         	ldr	r2, [sp, #0xc]
  2f7390: 4413         	add	r3, r2
  2f7392: 3304         	adds	r3, #0x4
  2f7394: 4a97         	ldr	r2, [pc, #0x25c]        @ 0x2f75f4 <AvatarRenderer::getCustomBodyTexture(cocos2d::CCArray*)+0x448>
  2f7396: 447a         	add	r2, pc
  2f7398: 4610         	mov	r0, r2
  2f739a: 4619         	mov	r1, r3
  2f739c: f2e0 ff30    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2e0e60
  2f73a0: 4603         	mov	r3, r0
  2f73a2: 930c         	str	r3, [sp, #0x30]
  2f73a4: 9b0c         	ldr	r3, [sp, #0x30]
  2f73a6: 681b         	ldr	r3, [r3]
  2f73a8: f503 73fa    	add.w	r3, r3, #0x1f4
  2f73ac: 681b         	ldr	r3, [r3]
  2f73ae: 980c         	ldr	r0, [sp, #0x30]
  2f73b0: 4798         	blx	r3
  2f73b2: 4603         	mov	r3, r0
  2f73b4: 4618         	mov	r0, r3
  2f73b6: f2fa fde5    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2fabca
  2f73ba: 9b0c         	ldr	r3, [sp, #0x30]
  2f73bc: 681b         	ldr	r3, [r3]
  2f73be: 334c         	adds	r3, #0x4c
  2f73c0: 681c         	ldr	r4, [r3]
  2f73c2: ab12         	add	r3, sp, #0x48
  2f73c4: 4618         	mov	r0, r3
  2f73c6: f04f 517e    	mov.w	r1, #0x3f800000
  2f73ca: f04f 0200    	mov.w	r2, #0x0
  2f73ce: f2c4 1250    	movt	r2, #0x4150
  2f73d2: f29b fc8d    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29b91a
  2f73d6: a914         	add	r1, sp, #0x50
  2f73d8: aa10         	add	r2, sp, #0x40
  2f73da: ab12         	add	r3, sp, #0x48
  2f73dc: 4608         	mov	r0, r1
  2f73de: 4611         	mov	r1, r2
  2f73e0: 461a         	mov	r2, r3
  2f73e2: f7fb fb21    	bl	0x2f2a28 <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x1cc> @ imm = #-0x49be
  2f73e6: ab14         	add	r3, sp, #0x50
  2f73e8: 980c         	ldr	r0, [sp, #0x30]
  2f73ea: 4619         	mov	r1, r3
  2f73ec: 47a0         	blx	r4
  2f73ee: 9b0c         	ldr	r3, [sp, #0x30]
  2f73f0: 681b         	ldr	r3, [r3]
  2f73f2: 337c         	adds	r3, #0x7c
  2f73f4: 681c         	ldr	r4, [r3]
  2f73f6: ab14         	add	r3, sp, #0x50
  2f73f8: 4618         	mov	r0, r3
  2f73fa: f04f 517c    	mov.w	r1, #0x3f000000
  2f73fe: f04f 527c    	mov.w	r2, #0x3f000000
  2f7402: f29b fc75    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29b8ea
  2f7406: ab14         	add	r3, sp, #0x50
  2f7408: 980c         	ldr	r0, [sp, #0x30]
  2f740a: 4619         	mov	r1, r3
  2f740c: 47a0         	blx	r4
  2f740e: 9b0c         	ldr	r3, [sp, #0x30]
  2f7410: 681b         	ldr	r3, [r3]
  2f7412: 3338         	adds	r3, #0x38
  2f7414: 681b         	ldr	r3, [r3]
  2f7416: 980c         	ldr	r0, [sp, #0x30]
  2f7418: f04f 0100    	mov.w	r1, #0x0
  2f741c: f6cb 7180    	movt	r1, #0xbf80
  2f7420: 4798         	blx	r3
  2f7422: 9b07         	ldr	r3, [sp, #0x1c]
  2f7424: 011b         	lsls	r3, r3, #0x4
  2f7426: f603 3398    	addw	r3, r3, #0xb98
  2f742a: 9a03         	ldr	r2, [sp, #0xc]
  2f742c: 4413         	add	r3, r2
  2f742e: 3304         	adds	r3, #0x4
  2f7430: 4a71         	ldr	r2, [pc, #0x1c4]        @ 0x2f75f8 <AvatarRenderer::getCustomBodyTexture(cocos2d::CCArray*)+0x44c>
  2f7432: 447a         	add	r2, pc
  2f7434: 4610         	mov	r0, r2
  2f7436: 4619         	mov	r1, r3
  2f7438: f2e0 fee2    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2e0dc4
  2f743c: 4603         	mov	r3, r0
  2f743e: 930d         	str	r3, [sp, #0x34]
  2f7440: 9b0d         	ldr	r3, [sp, #0x34]
  2f7442: 681b         	ldr	r3, [r3]
  2f7444: f503 73fa    	add.w	r3, r3, #0x1f4
  2f7448: 681b         	ldr	r3, [r3]
  2f744a: 980d         	ldr	r0, [sp, #0x34]
  2f744c: 4798         	blx	r3
  2f744e: 4603         	mov	r3, r0
  2f7450: 4618         	mov	r0, r3
  2f7452: f2fa fd97    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2fab2e
  2f7456: 9b0d         	ldr	r3, [sp, #0x34]
  2f7458: 681b         	ldr	r3, [r3]
  2f745a: 334c         	adds	r3, #0x4c
  2f745c: 681c         	ldr	r4, [r3]
  2f745e: ab12         	add	r3, sp, #0x48
  2f7460: 4618         	mov	r0, r3
  2f7462: f04f 0100    	mov.w	r1, #0x0
  2f7466: f2cc 11c0    	movt	r1, #0xc1c0
  2f746a: f04f 0200    	mov.w	r2, #0x0
  2f746e: f2cc 12e0    	movt	r2, #0xc1e0
  2f7472: f29b fc3d    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29b87a
  2f7476: a914         	add	r1, sp, #0x50
  2f7478: aa10         	add	r2, sp, #0x40
  2f747a: ab12         	add	r3, sp, #0x48
  2f747c: 4608         	mov	r0, r1
  2f747e: 4611         	mov	r1, r2
  2f7480: 461a         	mov	r2, r3
  2f7482: f7fb fad1    	bl	0x2f2a28 <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x1cc> @ imm = #-0x4a5e
  2f7486: ab14         	add	r3, sp, #0x50
  2f7488: 980d         	ldr	r0, [sp, #0x34]
  2f748a: 4619         	mov	r1, r3
  2f748c: 47a0         	blx	r4
  2f748e: 9b0d         	ldr	r3, [sp, #0x34]
  2f7490: 681b         	ldr	r3, [r3]
  2f7492: 337c         	adds	r3, #0x7c
  2f7494: 681c         	ldr	r4, [r3]
  2f7496: ab14         	add	r3, sp, #0x50
  2f7498: 4618         	mov	r0, r3
  2f749a: f04f 0100    	mov.w	r1, #0x0
  2f749e: f04f 527e    	mov.w	r2, #0x3f800000
  2f74a2: f29b fc25    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29b84a
  2f74a6: ab14         	add	r3, sp, #0x50
  2f74a8: 980d         	ldr	r0, [sp, #0x34]
  2f74aa: 4619         	mov	r1, r3
  2f74ac: 47a0         	blx	r4
  2f74ae: 9b0d         	ldr	r3, [sp, #0x34]
  2f74b0: 681b         	ldr	r3, [r3]
  2f74b2: 3338         	adds	r3, #0x38
  2f74b4: 681b         	ldr	r3, [r3]
  2f74b6: 980d         	ldr	r0, [sp, #0x34]
  2f74b8: f04f 0100    	mov.w	r1, #0x0
  2f74bc: f6cb 7180    	movt	r1, #0xbf80
  2f74c0: 4798         	blx	r3
  2f74c2: 9b09         	ldr	r3, [sp, #0x24]
  2f74c4: 011b         	lsls	r3, r3, #0x4
  2f74c6: f603 63f8    	addw	r3, r3, #0xef8
  2f74ca: 9a03         	ldr	r2, [sp, #0xc]
  2f74cc: 4413         	add	r3, r2
  2f74ce: 3304         	adds	r3, #0x4
  2f74d0: 4a4a         	ldr	r2, [pc, #0x128]        @ 0x2f75fc <AvatarRenderer::getCustomBodyTexture(cocos2d::CCArray*)+0x450>
  2f74d2: 447a         	add	r2, pc
  2f74d4: 4610         	mov	r0, r2
  2f74d6: 4619         	mov	r1, r3
  2f74d8: f2e0 fe92    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2e0d24
  2f74dc: 4603         	mov	r3, r0
  2f74de: 930e         	str	r3, [sp, #0x38]
  2f74e0: 9b0e         	ldr	r3, [sp, #0x38]
  2f74e2: 681b         	ldr	r3, [r3]
  2f74e4: f503 73fa    	add.w	r3, r3, #0x1f4
  2f74e8: 681b         	ldr	r3, [r3]
  2f74ea: 980e         	ldr	r0, [sp, #0x38]
  2f74ec: 4798         	blx	r3
  2f74ee: 4603         	mov	r3, r0
  2f74f0: 4618         	mov	r0, r3
  2f74f2: f2fa fd47    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2faa8e
  2f74f6: 9b0e         	ldr	r3, [sp, #0x38]
  2f74f8: 681b         	ldr	r3, [r3]
  2f74fa: 334c         	adds	r3, #0x4c
  2f74fc: 681c         	ldr	r4, [r3]
  2f74fe: ab12         	add	r3, sp, #0x48
  2f7500: 4618         	mov	r0, r3
  2f7502: f04f 0100    	mov.w	r1, #0x0
  2f7506: f2cc 11c0    	movt	r1, #0xc1c0
  2f750a: f04f 0200    	mov.w	r2, #0x0
  2f750e: f2cc 12e0    	movt	r2, #0xc1e0
  2f7512: f29b fbed    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29b7da
  2f7516: a914         	add	r1, sp, #0x50
  2f7518: aa10         	add	r2, sp, #0x40
  2f751a: ab12         	add	r3, sp, #0x48
  2f751c: 4608         	mov	r0, r1
  2f751e: 4611         	mov	r1, r2
  2f7520: 461a         	mov	r2, r3
  2f7522: f7fb fa81    	bl	0x2f2a28 <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x1cc> @ imm = #-0x4afe
  2f7526: ab14         	add	r3, sp, #0x50
  2f7528: 980e         	ldr	r0, [sp, #0x38]
  2f752a: 4619         	mov	r1, r3
  2f752c: 47a0         	blx	r4
  2f752e: 9b0e         	ldr	r3, [sp, #0x38]
  2f7530: 681b         	ldr	r3, [r3]
  2f7532: 337c         	adds	r3, #0x7c
  2f7534: 681c         	ldr	r4, [r3]
  2f7536: ab14         	add	r3, sp, #0x50
  2f7538: 4618         	mov	r0, r3
  2f753a: f04f 0100    	mov.w	r1, #0x0
  2f753e: f04f 527e    	mov.w	r2, #0x3f800000
  2f7542: f29b fbd5    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29b7aa
  2f7546: ab14         	add	r3, sp, #0x50
  2f7548: 980e         	ldr	r0, [sp, #0x38]
  2f754a: 4619         	mov	r1, r3
  2f754c: 47a0         	blx	r4
  2f754e: 9b0e         	ldr	r3, [sp, #0x38]
  2f7550: 681b         	ldr	r3, [r3]
  2f7552: 3338         	adds	r3, #0x38
  2f7554: 681b         	ldr	r3, [r3]
  2f7556: 980e         	ldr	r0, [sp, #0x38]
  2f7558: f04f 0100    	mov.w	r1, #0x0
  2f755c: f6cb 7180    	movt	r1, #0xbf80
  2f7560: 4798         	blx	r3
  2f7562: f04f 0300    	mov.w	r3, #0x0
  2f7566: 9300         	str	r3, [sp]
  2f7568: 980a         	ldr	r0, [sp, #0x28]
  2f756a: f04f 0100    	mov.w	r1, #0x0
  2f756e: f04f 0200    	mov.w	r2, #0x0
  2f7572: f04f 0300    	mov.w	r3, #0x0
  2f7576: f2c5 fc5b    	bl	0x5bce30 <cocos2d::CCRenderTexture::clear(float, float, float, float)> @ imm = #0x2c58b6
  2f757a: 980a         	ldr	r0, [sp, #0x28]
  2f757c: f2c5 fa94    	bl	0x5bcaa8 <cocos2d::CCRenderTexture::begin()> @ imm = #0x2c5528
  2f7580: 9b0b         	ldr	r3, [sp, #0x2c]
  2f7582: 681b         	ldr	r3, [r3]
  2f7584: f503 73b0    	add.w	r3, r3, #0x160
  2f7588: 681b         	ldr	r3, [r3]
  2f758a: 9a0b         	ldr	r2, [sp, #0x2c]
  2f758c: 4610         	mov	r0, r2
  2f758e: 4798         	blx	r3
  2f7590: 9b0c         	ldr	r3, [sp, #0x30]
  2f7592: 681b         	ldr	r3, [r3]
  2f7594: f503 73b0    	add.w	r3, r3, #0x160
  2f7598: 681b         	ldr	r3, [r3]
  2f759a: 9a0c         	ldr	r2, [sp, #0x30]
  2f759c: 4610         	mov	r0, r2
  2f759e: 4798         	blx	r3
  2f75a0: 9b0d         	ldr	r3, [sp, #0x34]
  2f75a2: 681b         	ldr	r3, [r3]
  2f75a4: f503 73b0    	add.w	r3, r3, #0x160
  2f75a8: 681b         	ldr	r3, [r3]
  2f75aa: 9a0d         	ldr	r2, [sp, #0x34]
  2f75ac: 4610         	mov	r0, r2
  2f75ae: 4798         	blx	r3
  2f75b0: 9b0e         	ldr	r3, [sp, #0x38]
  2f75b2: 681b         	ldr	r3, [r3]
  2f75b4: f503 73b0    	add.w	r3, r3, #0x160
  2f75b8: 681b         	ldr	r3, [r3]
  2f75ba: 9a0e         	ldr	r2, [sp, #0x38]
  2f75bc: 4610         	mov	r0, r2
  2f75be: 4798         	blx	r3
  2f75c0: 980a         	ldr	r0, [sp, #0x28]
  2f75c2: f2c5 fc13    	bl	0x5bcdec <cocos2d::CCRenderTexture::end()> @ imm = #0x2c5826
  2f75c6: 9b0a         	ldr	r3, [sp, #0x28]
  2f75c8: 681b         	ldr	r3, [r3]
  2f75ca: f503 73ce    	add.w	r3, r3, #0x19c
  2f75ce: 681b         	ldr	r3, [r3]
  2f75d0: 980a         	ldr	r0, [sp, #0x28]
  2f75d2: 4798         	blx	r3
  2f75d4: 4603         	mov	r3, r0
  2f75d6: 681a         	ldr	r2, [r3]
  2f75d8: f502 72fa    	add.w	r2, r2, #0x1f4
  2f75dc: 6812         	ldr	r2, [r2]
  2f75de: 4618         	mov	r0, r3
  2f75e0: 4790         	blx	r2
  2f75e2: 4603         	mov	r3, r0
  2f75e4: 930f         	str	r3, [sp, #0x3c]
  2f75e6: 9b0f         	ldr	r3, [sp, #0x3c]
  2f75e8: 4618         	mov	r0, r3
  2f75ea: b01a         	add	sp, #0x68
  2f75ec: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2f75ed); words below are literal-pool data ---
  2f75ee: bf00         	nop
  2f75f0: d1e0         	bne	0x2f75b4 <AvatarRenderer::getCustomBodyTexture(cocos2d::CCArray*)+0x408> @ imm = #-0x40
  2f75f2: 004c         	lsls	r4, r1, #0x1
  2f75f4: d11e         	bne	0x2f7634 <AvatarRenderer::getCustomArmTexture(cocos2d::CCArray*)+0x34> @ imm = #0x3c
  2f75f6: 004c         	lsls	r4, r1, #0x1
  2f75f8: d082         	beq	0x2f7500 <AvatarRenderer::getCustomBodyTexture(cocos2d::CCArray*)+0x354> @ imm = #-0xfc
  2f75fa: 004c         	lsls	r4, r1, #0x1
  2f75fc: cfe2         	ldm	r7, {r1, r5, r6, r7}
  2f75fe: 004c         	lsls	r4, r1, #0x1

// ==== AvatarRenderer::getCustomArmTexture
//      file offset 0x2f7600 (= ELF address; Ghidra 0x307600), 1112 bytes, Thumb-2
  2f7600: b510         	push	{r4, lr}
  2f7602: b098         	sub	sp, #0x60
  2f7604: 9003         	str	r0, [sp, #0xc]
  2f7606: 9102         	str	r1, [sp, #0x8]
  2f7608: 9803         	ldr	r0, [sp, #0xc]
  2f760a: 9902         	ldr	r1, [sp, #0x8]
  2f760c: 2202         	movs	r2, #0x2
  2f760e: f7fe fe01    	bl	0x2f6214 <AvatarRenderer::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0x13fe
  2f7612: 4603         	mov	r3, r0
  2f7614: 9304         	str	r3, [sp, #0x10]
  2f7616: 9803         	ldr	r0, [sp, #0xc]
  2f7618: 9902         	ldr	r1, [sp, #0x8]
  2f761a: 220f         	movs	r2, #0xf
  2f761c: f7fe fdfa    	bl	0x2f6214 <AvatarRenderer::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0x140c
  2f7620: 4603         	mov	r3, r0
  2f7622: 9305         	str	r3, [sp, #0x14]
  2f7624: 9803         	ldr	r0, [sp, #0xc]
  2f7626: 9902         	ldr	r1, [sp, #0x8]
  2f7628: 2210         	movs	r2, #0x10
  2f762a: f7fe fdf3    	bl	0x2f6214 <AvatarRenderer::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0x141a
  2f762e: 4603         	mov	r3, r0
  2f7630: 9307         	str	r3, [sp, #0x1c]
  2f7632: 9803         	ldr	r0, [sp, #0xc]
  2f7634: 9902         	ldr	r1, [sp, #0x8]
  2f7636: 2213         	movs	r2, #0x13
  2f7638: f7fe fdec    	bl	0x2f6214 <AvatarRenderer::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0x1428
  2f763c: 4603         	mov	r3, r0
  2f763e: 9306         	str	r3, [sp, #0x18]
  2f7640: 2304         	movs	r3, #0x4
  2f7642: 1e5a         	subs	r2, r3, #0x1
  2f7644: 9b04         	ldr	r3, [sp, #0x10]
  2f7646: 429a         	cmp	r2, r3
  2f7648: d302         	blo	0x2f7650 <AvatarRenderer::getCustomArmTexture(cocos2d::CCArray*)+0x50> @ imm = #0x4
  2f764a: 9b04         	ldr	r3, [sp, #0x10]
  2f764c: 2b00         	cmp	r3, #0x0
  2f764e: da01         	bge	0x2f7654 <AvatarRenderer::getCustomArmTexture(cocos2d::CCArray*)+0x54> @ imm = #0x2
  2f7650: 2300         	movs	r3, #0x0
  2f7652: 9304         	str	r3, [sp, #0x10]
  2f7654: 2302         	movs	r3, #0x2
  2f7656: 1e5a         	subs	r2, r3, #0x1
  2f7658: 9b05         	ldr	r3, [sp, #0x14]
  2f765a: 429a         	cmp	r2, r3
  2f765c: d302         	blo	0x2f7664 <AvatarRenderer::getCustomArmTexture(cocos2d::CCArray*)+0x64> @ imm = #0x4
  2f765e: 9b05         	ldr	r3, [sp, #0x14]
  2f7660: 2b00         	cmp	r3, #0x0
  2f7662: da01         	bge	0x2f7668 <AvatarRenderer::getCustomArmTexture(cocos2d::CCArray*)+0x68> @ imm = #0x2
  2f7664: 2300         	movs	r3, #0x0
  2f7666: 9305         	str	r3, [sp, #0x14]
  2f7668: 2305         	movs	r3, #0x5
  2f766a: 1e5a         	subs	r2, r3, #0x1
  2f766c: 9b06         	ldr	r3, [sp, #0x18]
  2f766e: 429a         	cmp	r2, r3
  2f7670: d302         	blo	0x2f7678 <AvatarRenderer::getCustomArmTexture(cocos2d::CCArray*)+0x78> @ imm = #0x4
  2f7672: 9b06         	ldr	r3, [sp, #0x18]
  2f7674: 2b00         	cmp	r3, #0x0
  2f7676: da01         	bge	0x2f767c <AvatarRenderer::getCustomArmTexture(cocos2d::CCArray*)+0x7c> @ imm = #0x2
  2f7678: 2300         	movs	r3, #0x0
  2f767a: 9306         	str	r3, [sp, #0x18]
  2f767c: 203a         	movs	r0, #0x3a
  2f767e: 2116         	movs	r1, #0x16
  2f7680: f2c4 ffd6    	bl	0x5bc630 <cocos2d::CCRenderTexture::create(int, int)> @ imm = #0x2c4fac
  2f7684: 4603         	mov	r3, r0
  2f7686: 9308         	str	r3, [sp, #0x20]
  2f7688: 9b08         	ldr	r3, [sp, #0x20]
  2f768a: 681b         	ldr	r3, [r3]
  2f768c: f503 73ce    	add.w	r3, r3, #0x19c
  2f7690: 681b         	ldr	r3, [r3]
  2f7692: 9808         	ldr	r0, [sp, #0x20]
  2f7694: 4798         	blx	r3
  2f7696: 4603         	mov	r3, r0
  2f7698: 4618         	mov	r0, r3
  2f769a: f7e5 fb1f    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x1a9c2
  2f769e: 4603         	mov	r3, r0
  2f76a0: aa14         	add	r2, sp, #0x50
  2f76a2: 4610         	mov	r0, r2
  2f76a4: 4619         	mov	r1, r3
  2f76a6: f29b fe37    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x29bc6e
  2f76aa: ed9d 7a16    	vldr	s14, [sp, #88]
  2f76ae: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2f76b2: eec7 7a27    	vdiv.f32	s15, s14, s15
  2f76b6: eefd 7ae7    	vcvt.s32.f32	s15, s15
  2f76ba: eef8 6ae7    	vcvt.f32.s32	s13, s15
  2f76be: ed9d 7a17    	vldr	s14, [sp, #92]
  2f76c2: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2f76c6: eec7 7a27    	vdiv.f32	s15, s14, s15
  2f76ca: eefd 7ae7    	vcvt.s32.f32	s15, s15
  2f76ce: eef8 7ae7    	vcvt.f32.s32	s15, s15
  2f76d2: ab0e         	add	r3, sp, #0x38
  2f76d4: 4618         	mov	r0, r3
  2f76d6: ee16 1a90    	vmov	r1, s13
  2f76da: ee17 2a90    	vmov	r2, s15
  2f76de: f29b fb07    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29b60e
  2f76e2: 9b05         	ldr	r3, [sp, #0x14]
  2f76e4: 011b         	lsls	r3, r3, #0x4
  2f76e6: f603 43f8    	addw	r3, r3, #0xcf8
  2f76ea: 9a03         	ldr	r2, [sp, #0xc]
  2f76ec: 4413         	add	r3, r2
  2f76ee: 3304         	adds	r3, #0x4
  2f76f0: 4ad5         	ldr	r2, [pc, #0x354]        @ 0x2f7a48 <AvatarRenderer::getCustomArmTexture(cocos2d::CCArray*)+0x448>
  2f76f2: 447a         	add	r2, pc
  2f76f4: 4610         	mov	r0, r2
  2f76f6: 4619         	mov	r1, r3
  2f76f8: f2e0 fd82    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2e0b04
  2f76fc: 4603         	mov	r3, r0
  2f76fe: 9309         	str	r3, [sp, #0x24]
  2f7700: 9b09         	ldr	r3, [sp, #0x24]
  2f7702: 681b         	ldr	r3, [r3]
  2f7704: f503 73fa    	add.w	r3, r3, #0x1f4
  2f7708: 681b         	ldr	r3, [r3]
  2f770a: 9809         	ldr	r0, [sp, #0x24]
  2f770c: 4798         	blx	r3
  2f770e: 4603         	mov	r3, r0
  2f7710: 4618         	mov	r0, r3
  2f7712: f2fa fc37    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2fa86e
  2f7716: 9b09         	ldr	r3, [sp, #0x24]
  2f7718: 681b         	ldr	r3, [r3]
  2f771a: f503 73de    	add.w	r3, r3, #0x1bc
  2f771e: 681c         	ldr	r4, [r3]
  2f7720: 9a04         	ldr	r2, [sp, #0x10]
  2f7722: 4613         	mov	r3, r2
  2f7724: 005b         	lsls	r3, r3, #0x1
  2f7726: 4413         	add	r3, r2
  2f7728: f603 1308    	addw	r3, r3, #0x908
  2f772c: 9a03         	ldr	r2, [sp, #0xc]
  2f772e: 4413         	add	r3, r2
  2f7730: 3307         	adds	r3, #0x7
  2f7732: 9809         	ldr	r0, [sp, #0x24]
  2f7734: 4619         	mov	r1, r3
  2f7736: 47a0         	blx	r4
  2f7738: 9b09         	ldr	r3, [sp, #0x24]
  2f773a: 681b         	ldr	r3, [r3]
  2f773c: 334c         	adds	r3, #0x4c
  2f773e: 681c         	ldr	r4, [r3]
  2f7740: ab10         	add	r3, sp, #0x40
  2f7742: 4618         	mov	r0, r3
  2f7744: f04f 0100    	mov.w	r1, #0x0
  2f7748: f2cc 1150    	movt	r1, #0xc150
  2f774c: f04f 0200    	mov.w	r2, #0x0
  2f7750: f29b face    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29b59c
  2f7754: a912         	add	r1, sp, #0x48
  2f7756: aa0e         	add	r2, sp, #0x38
  2f7758: ab10         	add	r3, sp, #0x40
  2f775a: 4608         	mov	r0, r1
  2f775c: 4611         	mov	r1, r2
  2f775e: 461a         	mov	r2, r3
  2f7760: f7fb f962    	bl	0x2f2a28 <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x1cc> @ imm = #-0x4d3c
  2f7764: ab12         	add	r3, sp, #0x48
  2f7766: 9809         	ldr	r0, [sp, #0x24]
  2f7768: 4619         	mov	r1, r3
  2f776a: 47a0         	blx	r4
  2f776c: 9b09         	ldr	r3, [sp, #0x24]
  2f776e: 681b         	ldr	r3, [r3]
  2f7770: 337c         	adds	r3, #0x7c
  2f7772: 681c         	ldr	r4, [r3]
  2f7774: ab12         	add	r3, sp, #0x48
  2f7776: 4618         	mov	r0, r3
  2f7778: f04f 517c    	mov.w	r1, #0x3f000000
  2f777c: f04f 527c    	mov.w	r2, #0x3f000000
  2f7780: f29b fab6    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29b56c
  2f7784: ab12         	add	r3, sp, #0x48
  2f7786: 9809         	ldr	r0, [sp, #0x24]
  2f7788: 4619         	mov	r1, r3
  2f778a: 47a0         	blx	r4
  2f778c: 9b09         	ldr	r3, [sp, #0x24]
  2f778e: 681b         	ldr	r3, [r3]
  2f7790: 3338         	adds	r3, #0x38
  2f7792: 681b         	ldr	r3, [r3]
  2f7794: 9809         	ldr	r0, [sp, #0x24]
  2f7796: f04f 0100    	mov.w	r1, #0x0
  2f779a: f6cb 7180    	movt	r1, #0xbf80
  2f779e: 4798         	blx	r3
  2f77a0: 9b07         	ldr	r3, [sp, #0x1c]
  2f77a2: 011b         	lsls	r3, r3, #0x4
  2f77a4: f603 4348    	addw	r3, r3, #0xc48
  2f77a8: 9a03         	ldr	r2, [sp, #0xc]
  2f77aa: 4413         	add	r3, r2
  2f77ac: 3304         	adds	r3, #0x4
  2f77ae: 4aa7         	ldr	r2, [pc, #0x29c]        @ 0x2f7a4c <AvatarRenderer::getCustomArmTexture(cocos2d::CCArray*)+0x44c>
  2f77b0: 447a         	add	r2, pc
  2f77b2: 4610         	mov	r0, r2
  2f77b4: 4619         	mov	r1, r3
  2f77b6: f2e0 fd23    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2e0a46
  2f77ba: 4603         	mov	r3, r0
  2f77bc: 930a         	str	r3, [sp, #0x28]
  2f77be: 9b0a         	ldr	r3, [sp, #0x28]
  2f77c0: 681b         	ldr	r3, [r3]
  2f77c2: f503 73fa    	add.w	r3, r3, #0x1f4
  2f77c6: 681b         	ldr	r3, [r3]
  2f77c8: 980a         	ldr	r0, [sp, #0x28]
  2f77ca: 4798         	blx	r3
  2f77cc: 4603         	mov	r3, r0
  2f77ce: 4618         	mov	r0, r3
  2f77d0: f2fa fbd8    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2fa7b0
  2f77d4: 9b0a         	ldr	r3, [sp, #0x28]
  2f77d6: 681b         	ldr	r3, [r3]
  2f77d8: 334c         	adds	r3, #0x4c
  2f77da: 681c         	ldr	r4, [r3]
  2f77dc: ab10         	add	r3, sp, #0x40
  2f77de: 4618         	mov	r0, r3
  2f77e0: f04f 0100    	mov.w	r1, #0x0
  2f77e4: f2cc 1150    	movt	r1, #0xc150
  2f77e8: f04f 0200    	mov.w	r2, #0x0
  2f77ec: f29b fa80    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29b500
  2f77f0: a912         	add	r1, sp, #0x48
  2f77f2: aa0e         	add	r2, sp, #0x38
  2f77f4: ab10         	add	r3, sp, #0x40
  2f77f6: 4608         	mov	r0, r1
  2f77f8: 4611         	mov	r1, r2
  2f77fa: 461a         	mov	r2, r3
  2f77fc: f7fb f914    	bl	0x2f2a28 <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x1cc> @ imm = #-0x4dd8
  2f7800: ab12         	add	r3, sp, #0x48
  2f7802: 980a         	ldr	r0, [sp, #0x28]
  2f7804: 4619         	mov	r1, r3
  2f7806: 47a0         	blx	r4
  2f7808: 9b0a         	ldr	r3, [sp, #0x28]
  2f780a: 681b         	ldr	r3, [r3]
  2f780c: 337c         	adds	r3, #0x7c
  2f780e: 681c         	ldr	r4, [r3]
  2f7810: ab12         	add	r3, sp, #0x48
  2f7812: 4618         	mov	r0, r3
  2f7814: f04f 517c    	mov.w	r1, #0x3f000000
  2f7818: f04f 527c    	mov.w	r2, #0x3f000000
  2f781c: f29b fa68    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29b4d0
  2f7820: ab12         	add	r3, sp, #0x48
  2f7822: 980a         	ldr	r0, [sp, #0x28]
  2f7824: 4619         	mov	r1, r3
  2f7826: 47a0         	blx	r4
  2f7828: 9b0a         	ldr	r3, [sp, #0x28]
  2f782a: 681b         	ldr	r3, [r3]
  2f782c: 3338         	adds	r3, #0x38
  2f782e: 681b         	ldr	r3, [r3]
  2f7830: 980a         	ldr	r0, [sp, #0x28]
  2f7832: f04f 0100    	mov.w	r1, #0x0
  2f7836: f6cb 7180    	movt	r1, #0xbf80
  2f783a: 4798         	blx	r3
  2f783c: 9b03         	ldr	r3, [sp, #0xc]
  2f783e: f603 637c    	addw	r3, r3, #0xe7c
  2f7842: 4a83         	ldr	r2, [pc, #0x20c]        @ 0x2f7a50 <AvatarRenderer::getCustomArmTexture(cocos2d::CCArray*)+0x450>
  2f7844: 447a         	add	r2, pc
  2f7846: 4610         	mov	r0, r2
  2f7848: 4619         	mov	r1, r3
  2f784a: f2e0 fcd9    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2e09b2
  2f784e: 4603         	mov	r3, r0
  2f7850: 930b         	str	r3, [sp, #0x2c]
  2f7852: 9b0b         	ldr	r3, [sp, #0x2c]
  2f7854: 681b         	ldr	r3, [r3]
  2f7856: f503 73fa    	add.w	r3, r3, #0x1f4
  2f785a: 681b         	ldr	r3, [r3]
  2f785c: 980b         	ldr	r0, [sp, #0x2c]
  2f785e: 4798         	blx	r3
  2f7860: 4603         	mov	r3, r0
  2f7862: 4618         	mov	r0, r3
  2f7864: f2fa fb8e    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2fa71c
  2f7868: 9b0b         	ldr	r3, [sp, #0x2c]
  2f786a: 681b         	ldr	r3, [r3]
  2f786c: f503 73de    	add.w	r3, r3, #0x1bc
  2f7870: 681c         	ldr	r4, [r3]
  2f7872: 9a04         	ldr	r2, [sp, #0x10]
  2f7874: 4613         	mov	r3, r2
  2f7876: 005b         	lsls	r3, r3, #0x1
  2f7878: 4413         	add	r3, r2
  2f787a: f603 1308    	addw	r3, r3, #0x908
  2f787e: 9a03         	ldr	r2, [sp, #0xc]
  2f7880: 4413         	add	r3, r2
  2f7882: 3307         	adds	r3, #0x7
  2f7884: 980b         	ldr	r0, [sp, #0x2c]
  2f7886: 4619         	mov	r1, r3
  2f7888: 47a0         	blx	r4
  2f788a: 9b0b         	ldr	r3, [sp, #0x2c]
  2f788c: 681b         	ldr	r3, [r3]
  2f788e: 334c         	adds	r3, #0x4c
  2f7890: 681c         	ldr	r4, [r3]
  2f7892: ab10         	add	r3, sp, #0x40
  2f7894: 4618         	mov	r0, r3
  2f7896: f04f 4182    	mov.w	r1, #0x41000000
  2f789a: f04f 0200    	mov.w	r2, #0x0
  2f789e: f6cb 7280    	movt	r2, #0xbf80
  2f78a2: f29b fa25    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29b44a
  2f78a6: a912         	add	r1, sp, #0x48
  2f78a8: aa0e         	add	r2, sp, #0x38
  2f78aa: ab10         	add	r3, sp, #0x40
  2f78ac: 4608         	mov	r0, r1
  2f78ae: 4611         	mov	r1, r2
  2f78b0: 461a         	mov	r2, r3
  2f78b2: f7fb f8b9    	bl	0x2f2a28 <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x1cc> @ imm = #-0x4e8e
  2f78b6: ab12         	add	r3, sp, #0x48
  2f78b8: 980b         	ldr	r0, [sp, #0x2c]
  2f78ba: 4619         	mov	r1, r3
  2f78bc: 47a0         	blx	r4
  2f78be: 9b0b         	ldr	r3, [sp, #0x2c]
  2f78c0: 681b         	ldr	r3, [r3]
  2f78c2: 337c         	adds	r3, #0x7c
  2f78c4: 681c         	ldr	r4, [r3]
  2f78c6: ab12         	add	r3, sp, #0x48
  2f78c8: 4618         	mov	r0, r3
  2f78ca: f04f 517c    	mov.w	r1, #0x3f000000
  2f78ce: f04f 527c    	mov.w	r2, #0x3f000000
  2f78d2: f29b fa0d    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29b41a
  2f78d6: ab12         	add	r3, sp, #0x48
  2f78d8: 980b         	ldr	r0, [sp, #0x2c]
  2f78da: 4619         	mov	r1, r3
  2f78dc: 47a0         	blx	r4
  2f78de: 9b0b         	ldr	r3, [sp, #0x2c]
  2f78e0: 681b         	ldr	r3, [r3]
  2f78e2: 3338         	adds	r3, #0x38
  2f78e4: 681b         	ldr	r3, [r3]
  2f78e6: 980b         	ldr	r0, [sp, #0x2c]
  2f78e8: f04f 0100    	mov.w	r1, #0x0
  2f78ec: f6cb 7180    	movt	r1, #0xbf80
  2f78f0: 4798         	blx	r3
  2f78f2: 9b03         	ldr	r3, [sp, #0xc]
  2f78f4: f603 638c    	addw	r3, r3, #0xe8c
  2f78f8: 4a56         	ldr	r2, [pc, #0x158]        @ 0x2f7a54 <AvatarRenderer::getCustomArmTexture(cocos2d::CCArray*)+0x454>
  2f78fa: 447a         	add	r2, pc
  2f78fc: 4610         	mov	r0, r2
  2f78fe: 4619         	mov	r1, r3
  2f7900: f2e0 fc7e    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2e08fc
  2f7904: 4603         	mov	r3, r0
  2f7906: 930c         	str	r3, [sp, #0x30]
  2f7908: 9b0c         	ldr	r3, [sp, #0x30]
  2f790a: 681b         	ldr	r3, [r3]
  2f790c: f503 73fa    	add.w	r3, r3, #0x1f4
  2f7910: 681b         	ldr	r3, [r3]
  2f7912: 980c         	ldr	r0, [sp, #0x30]
  2f7914: 4798         	blx	r3
  2f7916: 4603         	mov	r3, r0
  2f7918: 4618         	mov	r0, r3
  2f791a: f2fa fb33    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2fa666
  2f791e: 9b0c         	ldr	r3, [sp, #0x30]
  2f7920: 681b         	ldr	r3, [r3]
  2f7922: f503 73de    	add.w	r3, r3, #0x1bc
  2f7926: 681c         	ldr	r4, [r3]
  2f7928: 9a06         	ldr	r2, [sp, #0x18]
  2f792a: 4613         	mov	r3, r2
  2f792c: 005b         	lsls	r3, r3, #0x1
  2f792e: 4413         	add	r3, r2
  2f7930: f603 63e8    	addw	r3, r3, #0xee8
  2f7934: 9a03         	ldr	r2, [sp, #0xc]
  2f7936: 4413         	add	r3, r2
  2f7938: 3303         	adds	r3, #0x3
  2f793a: 980c         	ldr	r0, [sp, #0x30]
  2f793c: 4619         	mov	r1, r3
  2f793e: 47a0         	blx	r4
  2f7940: 9b06         	ldr	r3, [sp, #0x18]
  2f7942: 2b00         	cmp	r3, #0x0
  2f7944: d106         	bne	0x2f7954 <AvatarRenderer::getCustomArmTexture(cocos2d::CCArray*)+0x354> @ imm = #0xc
  2f7946: 9b0c         	ldr	r3, [sp, #0x30]
  2f7948: 681b         	ldr	r3, [r3]
  2f794a: 3390         	adds	r3, #0x90
  2f794c: 681b         	ldr	r3, [r3]
  2f794e: 980c         	ldr	r0, [sp, #0x30]
  2f7950: 2100         	movs	r1, #0x0
  2f7952: 4798         	blx	r3
  2f7954: 9b0c         	ldr	r3, [sp, #0x30]
  2f7956: 681b         	ldr	r3, [r3]
  2f7958: 334c         	adds	r3, #0x4c
  2f795a: 681c         	ldr	r4, [r3]
  2f795c: ab10         	add	r3, sp, #0x40
  2f795e: 4618         	mov	r0, r3
  2f7960: f04f 4182    	mov.w	r1, #0x41000000
  2f7964: f04f 0200    	mov.w	r2, #0x0
  2f7968: f6cb 7280    	movt	r2, #0xbf80
  2f796c: f29b f9c0    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29b380
  2f7970: a912         	add	r1, sp, #0x48
  2f7972: aa0e         	add	r2, sp, #0x38
  2f7974: ab10         	add	r3, sp, #0x40
  2f7976: 4608         	mov	r0, r1
  2f7978: 4611         	mov	r1, r2
  2f797a: 461a         	mov	r2, r3
  2f797c: f7fb f854    	bl	0x2f2a28 <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x1cc> @ imm = #-0x4f58
  2f7980: ab12         	add	r3, sp, #0x48
  2f7982: 980c         	ldr	r0, [sp, #0x30]
  2f7984: 4619         	mov	r1, r3
  2f7986: 47a0         	blx	r4
  2f7988: 9b0c         	ldr	r3, [sp, #0x30]
  2f798a: 681b         	ldr	r3, [r3]
  2f798c: 337c         	adds	r3, #0x7c
  2f798e: 681c         	ldr	r4, [r3]
  2f7990: ab12         	add	r3, sp, #0x48
  2f7992: 4618         	mov	r0, r3
  2f7994: f04f 517c    	mov.w	r1, #0x3f000000
  2f7998: f04f 527c    	mov.w	r2, #0x3f000000
  2f799c: f29b f9a8    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29b350
  2f79a0: ab12         	add	r3, sp, #0x48
  2f79a2: 980c         	ldr	r0, [sp, #0x30]
  2f79a4: 4619         	mov	r1, r3
  2f79a6: 47a0         	blx	r4
  2f79a8: 9b0c         	ldr	r3, [sp, #0x30]
  2f79aa: 681b         	ldr	r3, [r3]
  2f79ac: 3338         	adds	r3, #0x38
  2f79ae: 681b         	ldr	r3, [r3]
  2f79b0: 980c         	ldr	r0, [sp, #0x30]
  2f79b2: f04f 0100    	mov.w	r1, #0x0
  2f79b6: f6cb 7180    	movt	r1, #0xbf80
  2f79ba: 4798         	blx	r3
  2f79bc: f04f 0300    	mov.w	r3, #0x0
  2f79c0: 9300         	str	r3, [sp]
  2f79c2: 9808         	ldr	r0, [sp, #0x20]
  2f79c4: f04f 0100    	mov.w	r1, #0x0
  2f79c8: f04f 0200    	mov.w	r2, #0x0
  2f79cc: f04f 0300    	mov.w	r3, #0x0
  2f79d0: f2c5 fa2e    	bl	0x5bce30 <cocos2d::CCRenderTexture::clear(float, float, float, float)> @ imm = #0x2c545c
  2f79d4: 9808         	ldr	r0, [sp, #0x20]
  2f79d6: f2c5 f867    	bl	0x5bcaa8 <cocos2d::CCRenderTexture::begin()> @ imm = #0x2c50ce
  2f79da: 9b09         	ldr	r3, [sp, #0x24]
  2f79dc: 681b         	ldr	r3, [r3]
  2f79de: f503 73b0    	add.w	r3, r3, #0x160
  2f79e2: 681b         	ldr	r3, [r3]
  2f79e4: 9a09         	ldr	r2, [sp, #0x24]
  2f79e6: 4610         	mov	r0, r2
  2f79e8: 4798         	blx	r3
  2f79ea: 9b0b         	ldr	r3, [sp, #0x2c]
  2f79ec: 681b         	ldr	r3, [r3]
  2f79ee: f503 73b0    	add.w	r3, r3, #0x160
  2f79f2: 681b         	ldr	r3, [r3]
  2f79f4: 9a0b         	ldr	r2, [sp, #0x2c]
  2f79f6: 4610         	mov	r0, r2
  2f79f8: 4798         	blx	r3
  2f79fa: 9b0c         	ldr	r3, [sp, #0x30]
  2f79fc: 681b         	ldr	r3, [r3]
  2f79fe: f503 73b0    	add.w	r3, r3, #0x160
  2f7a02: 681b         	ldr	r3, [r3]
  2f7a04: 9a0c         	ldr	r2, [sp, #0x30]
  2f7a06: 4610         	mov	r0, r2
  2f7a08: 4798         	blx	r3
  2f7a0a: 9b0a         	ldr	r3, [sp, #0x28]
  2f7a0c: 681b         	ldr	r3, [r3]
  2f7a0e: f503 73b0    	add.w	r3, r3, #0x160
  2f7a12: 681b         	ldr	r3, [r3]
  2f7a14: 9a0a         	ldr	r2, [sp, #0x28]
  2f7a16: 4610         	mov	r0, r2
  2f7a18: 4798         	blx	r3
  2f7a1a: 9808         	ldr	r0, [sp, #0x20]
  2f7a1c: f2c5 f9e6    	bl	0x5bcdec <cocos2d::CCRenderTexture::end()> @ imm = #0x2c53cc
  2f7a20: 9b08         	ldr	r3, [sp, #0x20]
  2f7a22: 681b         	ldr	r3, [r3]
  2f7a24: f503 73ce    	add.w	r3, r3, #0x19c
  2f7a28: 681b         	ldr	r3, [r3]
  2f7a2a: 9808         	ldr	r0, [sp, #0x20]
  2f7a2c: 4798         	blx	r3
  2f7a2e: 4603         	mov	r3, r0
  2f7a30: 681a         	ldr	r2, [r3]
  2f7a32: f502 72fa    	add.w	r2, r2, #0x1f4
  2f7a36: 6812         	ldr	r2, [r2]
  2f7a38: 4618         	mov	r0, r3
  2f7a3a: 4790         	blx	r2
  2f7a3c: 4603         	mov	r3, r0
  2f7a3e: 930d         	str	r3, [sp, #0x34]
  2f7a40: 9b0d         	ldr	r3, [sp, #0x34]
  2f7a42: 4618         	mov	r0, r3
  2f7a44: b018         	add	sp, #0x60
  2f7a46: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2f7a47); words below are literal-pool data ---
  2f7a48: cdc2         	ldm	r5!, {r1, r6, r7}
  2f7a4a: 004c         	lsls	r4, r1, #0x1
  2f7a4c: cd04         	ldm	r5!, {r2}
  2f7a4e: 004c         	lsls	r4, r1, #0x1
  2f7a50: cc70         	ldm	r4, {r4, r5, r6}
  2f7a52: 004c         	lsls	r4, r1, #0x1
  2f7a54: cbba         	ldm	r3, {r1, r3, r4, r5, r7}
  2f7a56: 004c         	lsls	r4, r1, #0x1

// ==== AvatarRenderer::getCustomLegTexture
//      file offset 0x2f7a58 (= ELF address; Ghidra 0x307a58), 1068 bytes, Thumb-2
  2f7a58: b510         	push	{r4, lr}
  2f7a5a: b098         	sub	sp, #0x60
  2f7a5c: 9003         	str	r0, [sp, #0xc]
  2f7a5e: 9102         	str	r1, [sp, #0x8]
  2f7a60: 9803         	ldr	r0, [sp, #0xc]
  2f7a62: 9902         	ldr	r1, [sp, #0x8]
  2f7a64: 2202         	movs	r2, #0x2
  2f7a66: f7fe fbd5    	bl	0x2f6214 <AvatarRenderer::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0x1856
  2f7a6a: 4603         	mov	r3, r0
  2f7a6c: 9304         	str	r3, [sp, #0x10]
  2f7a6e: 9803         	ldr	r0, [sp, #0xc]
  2f7a70: 9902         	ldr	r1, [sp, #0x8]
  2f7a72: 220f         	movs	r2, #0xf
  2f7a74: f7fe fbce    	bl	0x2f6214 <AvatarRenderer::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0x1864
  2f7a78: 4603         	mov	r3, r0
  2f7a7a: 9305         	str	r3, [sp, #0x14]
  2f7a7c: 9803         	ldr	r0, [sp, #0xc]
  2f7a7e: 9902         	ldr	r1, [sp, #0x8]
  2f7a80: 2211         	movs	r2, #0x11
  2f7a82: f7fe fbc7    	bl	0x2f6214 <AvatarRenderer::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0x1872
  2f7a86: 4603         	mov	r3, r0
  2f7a88: 9307         	str	r3, [sp, #0x1c]
  2f7a8a: 9803         	ldr	r0, [sp, #0xc]
  2f7a8c: 9902         	ldr	r1, [sp, #0x8]
  2f7a8e: 2212         	movs	r2, #0x12
  2f7a90: f7fe fbc0    	bl	0x2f6214 <AvatarRenderer::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0x1880
  2f7a94: 4603         	mov	r3, r0
  2f7a96: 9306         	str	r3, [sp, #0x18]
  2f7a98: 2302         	movs	r3, #0x2
  2f7a9a: 1e5a         	subs	r2, r3, #0x1
  2f7a9c: 9b05         	ldr	r3, [sp, #0x14]
  2f7a9e: 429a         	cmp	r2, r3
  2f7aa0: d302         	blo	0x2f7aa8 <AvatarRenderer::getCustomLegTexture(cocos2d::CCArray*)+0x50> @ imm = #0x4
  2f7aa2: 9b05         	ldr	r3, [sp, #0x14]
  2f7aa4: 2b00         	cmp	r3, #0x0
  2f7aa6: da01         	bge	0x2f7aac <AvatarRenderer::getCustomLegTexture(cocos2d::CCArray*)+0x54> @ imm = #0x2
  2f7aa8: 2300         	movs	r3, #0x0
  2f7aaa: 9305         	str	r3, [sp, #0x14]
  2f7aac: 2304         	movs	r3, #0x4
  2f7aae: 1e5a         	subs	r2, r3, #0x1
  2f7ab0: 9b04         	ldr	r3, [sp, #0x10]
  2f7ab2: 429a         	cmp	r2, r3
  2f7ab4: d302         	blo	0x2f7abc <AvatarRenderer::getCustomLegTexture(cocos2d::CCArray*)+0x64> @ imm = #0x4
  2f7ab6: 9b04         	ldr	r3, [sp, #0x10]
  2f7ab8: 2b00         	cmp	r3, #0x0
  2f7aba: da01         	bge	0x2f7ac0 <AvatarRenderer::getCustomLegTexture(cocos2d::CCArray*)+0x68> @ imm = #0x2
  2f7abc: 2300         	movs	r3, #0x0
  2f7abe: 9304         	str	r3, [sp, #0x10]
  2f7ac0: 2305         	movs	r3, #0x5
  2f7ac2: 1e5a         	subs	r2, r3, #0x1
  2f7ac4: 9b06         	ldr	r3, [sp, #0x18]
  2f7ac6: 429a         	cmp	r2, r3
  2f7ac8: d302         	blo	0x2f7ad0 <AvatarRenderer::getCustomLegTexture(cocos2d::CCArray*)+0x78> @ imm = #0x4
  2f7aca: 9b06         	ldr	r3, [sp, #0x18]
  2f7acc: 2b00         	cmp	r3, #0x0
  2f7ace: da01         	bge	0x2f7ad4 <AvatarRenderer::getCustomLegTexture(cocos2d::CCArray*)+0x7c> @ imm = #0x2
  2f7ad0: 2300         	movs	r3, #0x0
  2f7ad2: 9306         	str	r3, [sp, #0x18]
  2f7ad4: 2022         	movs	r0, #0x22
  2f7ad6: 2129         	movs	r1, #0x29
  2f7ad8: f2c4 fdaa    	bl	0x5bc630 <cocos2d::CCRenderTexture::create(int, int)> @ imm = #0x2c4b54
  2f7adc: 4603         	mov	r3, r0
  2f7ade: 9308         	str	r3, [sp, #0x20]
  2f7ae0: 9b08         	ldr	r3, [sp, #0x20]
  2f7ae2: 681b         	ldr	r3, [r3]
  2f7ae4: f503 73ce    	add.w	r3, r3, #0x19c
  2f7ae8: 681b         	ldr	r3, [r3]
  2f7aea: 9808         	ldr	r0, [sp, #0x20]
  2f7aec: 4798         	blx	r3
  2f7aee: 4603         	mov	r3, r0
  2f7af0: 4618         	mov	r0, r3
  2f7af2: f7e5 f8f3    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x1ae1a
  2f7af6: 4603         	mov	r3, r0
  2f7af8: aa14         	add	r2, sp, #0x50
  2f7afa: 4610         	mov	r0, r2
  2f7afc: 4619         	mov	r1, r3
  2f7afe: f29b fc0b    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x29b816
  2f7b02: ed9d 7a16    	vldr	s14, [sp, #88]
  2f7b06: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2f7b0a: eec7 7a27    	vdiv.f32	s15, s14, s15
  2f7b0e: eefd 7ae7    	vcvt.s32.f32	s15, s15
  2f7b12: eef8 6ae7    	vcvt.f32.s32	s13, s15
  2f7b16: ed9d 7a17    	vldr	s14, [sp, #92]
  2f7b1a: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2f7b1e: eec7 7a27    	vdiv.f32	s15, s14, s15
  2f7b22: eefd 7ae7    	vcvt.s32.f32	s15, s15
  2f7b26: eef8 7ae7    	vcvt.f32.s32	s15, s15
  2f7b2a: ab0e         	add	r3, sp, #0x38
  2f7b2c: 4618         	mov	r0, r3
  2f7b2e: ee16 1a90    	vmov	r1, s13
  2f7b32: ee17 2a90    	vmov	r2, s15
  2f7b36: f29b f8db    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29b1b6
  2f7b3a: 9b05         	ldr	r3, [sp, #0x14]
  2f7b3c: 011b         	lsls	r3, r3, #0x4
  2f7b3e: f603 6398    	addw	r3, r3, #0xe98
  2f7b42: 9a03         	ldr	r2, [sp, #0xc]
  2f7b44: 4413         	add	r3, r2
  2f7b46: 3304         	adds	r3, #0x4
  2f7b48: 4aca         	ldr	r2, [pc, #0x328]        @ 0x2f7e74 <AvatarRenderer::getCustomLegTexture(cocos2d::CCArray*)+0x41c>
  2f7b4a: 447a         	add	r2, pc
  2f7b4c: 4610         	mov	r0, r2
  2f7b4e: 4619         	mov	r1, r3
  2f7b50: f2e0 fb56    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2e06ac
  2f7b54: 4603         	mov	r3, r0
  2f7b56: 9309         	str	r3, [sp, #0x24]
  2f7b58: 9b09         	ldr	r3, [sp, #0x24]
  2f7b5a: 681b         	ldr	r3, [r3]
  2f7b5c: f503 73fa    	add.w	r3, r3, #0x1f4
  2f7b60: 681b         	ldr	r3, [r3]
  2f7b62: 9809         	ldr	r0, [sp, #0x24]
  2f7b64: 4798         	blx	r3
  2f7b66: 4603         	mov	r3, r0
  2f7b68: 4618         	mov	r0, r3
  2f7b6a: f2fa fa0b    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2fa416
  2f7b6e: 9b09         	ldr	r3, [sp, #0x24]
  2f7b70: 681b         	ldr	r3, [r3]
  2f7b72: f503 73de    	add.w	r3, r3, #0x1bc
  2f7b76: 681c         	ldr	r4, [r3]
  2f7b78: 9a04         	ldr	r2, [sp, #0x10]
  2f7b7a: 4613         	mov	r3, r2
  2f7b7c: 005b         	lsls	r3, r3, #0x1
  2f7b7e: 4413         	add	r3, r2
  2f7b80: f603 1308    	addw	r3, r3, #0x908
  2f7b84: 9a03         	ldr	r2, [sp, #0xc]
  2f7b86: 4413         	add	r3, r2
  2f7b88: 3307         	adds	r3, #0x7
  2f7b8a: 9809         	ldr	r0, [sp, #0x24]
  2f7b8c: 4619         	mov	r1, r3
  2f7b8e: 47a0         	blx	r4
  2f7b90: 9b09         	ldr	r3, [sp, #0x24]
  2f7b92: 681b         	ldr	r3, [r3]
  2f7b94: 334c         	adds	r3, #0x4c
  2f7b96: 681c         	ldr	r4, [r3]
  2f7b98: ab10         	add	r3, sp, #0x40
  2f7b9a: 4618         	mov	r0, r3
  2f7b9c: f04f 0100    	mov.w	r1, #0x0
  2f7ba0: f2cc 0140    	movt	r1, #0xc040
  2f7ba4: f04f 0200    	mov.w	r2, #0x0
  2f7ba8: f2cc 0280    	movt	r2, #0xc080
  2f7bac: f29b f8a0    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29b140
  2f7bb0: a912         	add	r1, sp, #0x48
  2f7bb2: aa0e         	add	r2, sp, #0x38
  2f7bb4: ab10         	add	r3, sp, #0x40
  2f7bb6: 4608         	mov	r0, r1
  2f7bb8: 4611         	mov	r1, r2
  2f7bba: 461a         	mov	r2, r3
  2f7bbc: f7fa ff34    	bl	0x2f2a28 <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x1cc> @ imm = #-0x5198
  2f7bc0: ab12         	add	r3, sp, #0x48
  2f7bc2: 9809         	ldr	r0, [sp, #0x24]
  2f7bc4: 4619         	mov	r1, r3
  2f7bc6: 47a0         	blx	r4
  2f7bc8: 9b09         	ldr	r3, [sp, #0x24]
  2f7bca: 681b         	ldr	r3, [r3]
  2f7bcc: 337c         	adds	r3, #0x7c
  2f7bce: 681c         	ldr	r4, [r3]
  2f7bd0: ab12         	add	r3, sp, #0x48
  2f7bd2: 4618         	mov	r0, r3
  2f7bd4: f04f 517c    	mov.w	r1, #0x3f000000
  2f7bd8: f04f 527c    	mov.w	r2, #0x3f000000
  2f7bdc: f29b f888    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29b110
  2f7be0: ab12         	add	r3, sp, #0x48
  2f7be2: 9809         	ldr	r0, [sp, #0x24]
  2f7be4: 4619         	mov	r1, r3
  2f7be6: 47a0         	blx	r4
  2f7be8: 9b09         	ldr	r3, [sp, #0x24]
  2f7bea: 681b         	ldr	r3, [r3]
  2f7bec: 3338         	adds	r3, #0x38
  2f7bee: 681b         	ldr	r3, [r3]
  2f7bf0: 9809         	ldr	r0, [sp, #0x24]
  2f7bf2: f04f 0100    	mov.w	r1, #0x0
  2f7bf6: f6cb 7180    	movt	r1, #0xbf80
  2f7bfa: 4798         	blx	r3
  2f7bfc: 9b07         	ldr	r3, [sp, #0x1c]
  2f7bfe: 011b         	lsls	r3, r3, #0x4
  2f7c00: f603 53c8    	addw	r3, r3, #0xdc8
  2f7c04: 9a03         	ldr	r2, [sp, #0xc]
  2f7c06: 4413         	add	r3, r2
  2f7c08: 3304         	adds	r3, #0x4
  2f7c0a: 4a9b         	ldr	r2, [pc, #0x26c]        @ 0x2f7e78 <AvatarRenderer::getCustomLegTexture(cocos2d::CCArray*)+0x420>
  2f7c0c: 447a         	add	r2, pc
  2f7c0e: 4610         	mov	r0, r2
  2f7c10: 4619         	mov	r1, r3
  2f7c12: f2e0 faf5    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2e05ea
  2f7c16: 4603         	mov	r3, r0
  2f7c18: 930a         	str	r3, [sp, #0x28]
  2f7c1a: 9b0a         	ldr	r3, [sp, #0x28]
  2f7c1c: 681b         	ldr	r3, [r3]
  2f7c1e: f503 73fa    	add.w	r3, r3, #0x1f4
  2f7c22: 681b         	ldr	r3, [r3]
  2f7c24: 980a         	ldr	r0, [sp, #0x28]
  2f7c26: 4798         	blx	r3
  2f7c28: 4603         	mov	r3, r0
  2f7c2a: 4618         	mov	r0, r3
  2f7c2c: f2fa f9aa    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2fa354
  2f7c30: 9b0a         	ldr	r3, [sp, #0x28]
  2f7c32: 681b         	ldr	r3, [r3]
  2f7c34: 334c         	adds	r3, #0x4c
  2f7c36: 681c         	ldr	r4, [r3]
  2f7c38: ab10         	add	r3, sp, #0x40
  2f7c3a: 4618         	mov	r0, r3
  2f7c3c: f04f 0100    	mov.w	r1, #0x0
  2f7c40: f2cc 0140    	movt	r1, #0xc040
  2f7c44: f04f 0200    	mov.w	r2, #0x0
  2f7c48: f2cc 0280    	movt	r2, #0xc080
  2f7c4c: f29b f850    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29b0a0
  2f7c50: a912         	add	r1, sp, #0x48
  2f7c52: aa0e         	add	r2, sp, #0x38
  2f7c54: ab10         	add	r3, sp, #0x40
  2f7c56: 4608         	mov	r0, r1
  2f7c58: 4611         	mov	r1, r2
  2f7c5a: 461a         	mov	r2, r3
  2f7c5c: f7fa fee4    	bl	0x2f2a28 <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x1cc> @ imm = #-0x5238
  2f7c60: ab12         	add	r3, sp, #0x48
  2f7c62: 980a         	ldr	r0, [sp, #0x28]
  2f7c64: 4619         	mov	r1, r3
  2f7c66: 47a0         	blx	r4
  2f7c68: 9b0a         	ldr	r3, [sp, #0x28]
  2f7c6a: 681b         	ldr	r3, [r3]
  2f7c6c: 337c         	adds	r3, #0x7c
  2f7c6e: 681c         	ldr	r4, [r3]
  2f7c70: ab12         	add	r3, sp, #0x48
  2f7c72: 4618         	mov	r0, r3
  2f7c74: f04f 517c    	mov.w	r1, #0x3f000000
  2f7c78: f04f 527c    	mov.w	r2, #0x3f000000
  2f7c7c: f29b f838    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29b070
  2f7c80: ab12         	add	r3, sp, #0x48
  2f7c82: 980a         	ldr	r0, [sp, #0x28]
  2f7c84: 4619         	mov	r1, r3
  2f7c86: 47a0         	blx	r4
  2f7c88: 9b0a         	ldr	r3, [sp, #0x28]
  2f7c8a: 681b         	ldr	r3, [r3]
  2f7c8c: 3338         	adds	r3, #0x38
  2f7c8e: 681b         	ldr	r3, [r3]
  2f7c90: 980a         	ldr	r0, [sp, #0x28]
  2f7c92: f04f 0100    	mov.w	r1, #0x0
  2f7c96: f6cb 7180    	movt	r1, #0xbf80
  2f7c9a: 4798         	blx	r3
  2f7c9c: 9b03         	ldr	r3, [sp, #0xc]
  2f7c9e: f603 63bc    	addw	r3, r3, #0xebc
  2f7ca2: 4a76         	ldr	r2, [pc, #0x1d8]        @ 0x2f7e7c <AvatarRenderer::getCustomLegTexture(cocos2d::CCArray*)+0x424>
  2f7ca4: 447a         	add	r2, pc
  2f7ca6: 4610         	mov	r0, r2
  2f7ca8: 4619         	mov	r1, r3
  2f7caa: f2e0 faa9    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2e0552
  2f7cae: 4603         	mov	r3, r0
  2f7cb0: 930b         	str	r3, [sp, #0x2c]
  2f7cb2: 9b0b         	ldr	r3, [sp, #0x2c]
  2f7cb4: 681b         	ldr	r3, [r3]
  2f7cb6: f503 73fa    	add.w	r3, r3, #0x1f4
  2f7cba: 681b         	ldr	r3, [r3]
  2f7cbc: 980b         	ldr	r0, [sp, #0x2c]
  2f7cbe: 4798         	blx	r3
  2f7cc0: 4603         	mov	r3, r0
  2f7cc2: 4618         	mov	r0, r3
  2f7cc4: f2fa f95e    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2fa2bc
  2f7cc8: 9b0b         	ldr	r3, [sp, #0x2c]
  2f7cca: 681b         	ldr	r3, [r3]
  2f7ccc: f503 73de    	add.w	r3, r3, #0x1bc
  2f7cd0: 681c         	ldr	r4, [r3]
  2f7cd2: 9a06         	ldr	r2, [sp, #0x18]
  2f7cd4: 4613         	mov	r3, r2
  2f7cd6: 005b         	lsls	r3, r3, #0x1
  2f7cd8: 4413         	add	r3, r2
  2f7cda: f603 63d8    	addw	r3, r3, #0xed8
  2f7cde: 9a03         	ldr	r2, [sp, #0xc]
  2f7ce0: 4413         	add	r3, r2
  2f7ce2: 3304         	adds	r3, #0x4
  2f7ce4: 980b         	ldr	r0, [sp, #0x2c]
  2f7ce6: 4619         	mov	r1, r3
  2f7ce8: 47a0         	blx	r4
  2f7cea: 9b0b         	ldr	r3, [sp, #0x2c]
  2f7cec: 681b         	ldr	r3, [r3]
  2f7cee: 334c         	adds	r3, #0x4c
  2f7cf0: 681c         	ldr	r4, [r3]
  2f7cf2: ab10         	add	r3, sp, #0x40
  2f7cf4: 4618         	mov	r0, r3
  2f7cf6: f04f 517e    	mov.w	r1, #0x3f800000
  2f7cfa: f04f 0200    	mov.w	r2, #0x0
  2f7cfe: f2c4 1240    	movt	r2, #0x4140
  2f7d02: f29a fff5    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29afea
  2f7d06: a912         	add	r1, sp, #0x48
  2f7d08: aa0e         	add	r2, sp, #0x38
  2f7d0a: ab10         	add	r3, sp, #0x40
  2f7d0c: 4608         	mov	r0, r1
  2f7d0e: 4611         	mov	r1, r2
  2f7d10: 461a         	mov	r2, r3
  2f7d12: f7fa fe89    	bl	0x2f2a28 <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x1cc> @ imm = #-0x52ee
  2f7d16: ab12         	add	r3, sp, #0x48
  2f7d18: 980b         	ldr	r0, [sp, #0x2c]
  2f7d1a: 4619         	mov	r1, r3
  2f7d1c: 47a0         	blx	r4
  2f7d1e: 9b0b         	ldr	r3, [sp, #0x2c]
  2f7d20: 681b         	ldr	r3, [r3]
  2f7d22: 337c         	adds	r3, #0x7c
  2f7d24: 681c         	ldr	r4, [r3]
  2f7d26: ab12         	add	r3, sp, #0x48
  2f7d28: 4618         	mov	r0, r3
  2f7d2a: f04f 517c    	mov.w	r1, #0x3f000000
  2f7d2e: f04f 527c    	mov.w	r2, #0x3f000000
  2f7d32: f29a ffdd    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29afba
  2f7d36: ab12         	add	r3, sp, #0x48
  2f7d38: 980b         	ldr	r0, [sp, #0x2c]
  2f7d3a: 4619         	mov	r1, r3
  2f7d3c: 47a0         	blx	r4
  2f7d3e: 9b0b         	ldr	r3, [sp, #0x2c]
  2f7d40: 681b         	ldr	r3, [r3]
  2f7d42: 3338         	adds	r3, #0x38
  2f7d44: 681b         	ldr	r3, [r3]
  2f7d46: 980b         	ldr	r0, [sp, #0x2c]
  2f7d48: f04f 0100    	mov.w	r1, #0x0
  2f7d4c: f6cb 7180    	movt	r1, #0xbf80
  2f7d50: 4798         	blx	r3
  2f7d52: 9b03         	ldr	r3, [sp, #0xc]
  2f7d54: f603 63cc    	addw	r3, r3, #0xecc
  2f7d58: 4a49         	ldr	r2, [pc, #0x124]        @ 0x2f7e80 <AvatarRenderer::getCustomLegTexture(cocos2d::CCArray*)+0x428>
  2f7d5a: 447a         	add	r2, pc
  2f7d5c: 4610         	mov	r0, r2
  2f7d5e: 4619         	mov	r1, r3
  2f7d60: f2e0 fa4e    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2e049c
  2f7d64: 4603         	mov	r3, r0
  2f7d66: 930c         	str	r3, [sp, #0x30]
  2f7d68: 9b0c         	ldr	r3, [sp, #0x30]
  2f7d6a: 681b         	ldr	r3, [r3]
  2f7d6c: f503 73fa    	add.w	r3, r3, #0x1f4
  2f7d70: 681b         	ldr	r3, [r3]
  2f7d72: 980c         	ldr	r0, [sp, #0x30]
  2f7d74: 4798         	blx	r3
  2f7d76: 4603         	mov	r3, r0
  2f7d78: 4618         	mov	r0, r3
  2f7d7a: f2fa f903    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2fa206
  2f7d7e: 9b0c         	ldr	r3, [sp, #0x30]
  2f7d80: 681b         	ldr	r3, [r3]
  2f7d82: 334c         	adds	r3, #0x4c
  2f7d84: 681c         	ldr	r4, [r3]
  2f7d86: ab10         	add	r3, sp, #0x40
  2f7d88: 4618         	mov	r0, r3
  2f7d8a: f04f 517e    	mov.w	r1, #0x3f800000
  2f7d8e: f04f 0200    	mov.w	r2, #0x0
  2f7d92: f2c4 1240    	movt	r2, #0x4140
  2f7d96: f29a ffab    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29af56
  2f7d9a: a912         	add	r1, sp, #0x48
  2f7d9c: aa0e         	add	r2, sp, #0x38
  2f7d9e: ab10         	add	r3, sp, #0x40
  2f7da0: 4608         	mov	r0, r1
  2f7da2: 4611         	mov	r1, r2
  2f7da4: 461a         	mov	r2, r3
  2f7da6: f7fa fe3f    	bl	0x2f2a28 <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x1cc> @ imm = #-0x5382
  2f7daa: ab12         	add	r3, sp, #0x48
  2f7dac: 980c         	ldr	r0, [sp, #0x30]
  2f7dae: 4619         	mov	r1, r3
  2f7db0: 47a0         	blx	r4
  2f7db2: 9b0c         	ldr	r3, [sp, #0x30]
  2f7db4: 681b         	ldr	r3, [r3]
  2f7db6: 337c         	adds	r3, #0x7c
  2f7db8: 681c         	ldr	r4, [r3]
  2f7dba: ab12         	add	r3, sp, #0x48
  2f7dbc: 4618         	mov	r0, r3
  2f7dbe: f04f 517c    	mov.w	r1, #0x3f000000
  2f7dc2: f04f 527c    	mov.w	r2, #0x3f000000
  2f7dc6: f29a ff93    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29af26
  2f7dca: ab12         	add	r3, sp, #0x48
  2f7dcc: 980c         	ldr	r0, [sp, #0x30]
  2f7dce: 4619         	mov	r1, r3
  2f7dd0: 47a0         	blx	r4
  2f7dd2: 9b0c         	ldr	r3, [sp, #0x30]
  2f7dd4: 681b         	ldr	r3, [r3]
  2f7dd6: 3338         	adds	r3, #0x38
  2f7dd8: 681b         	ldr	r3, [r3]
  2f7dda: 980c         	ldr	r0, [sp, #0x30]
  2f7ddc: f04f 0100    	mov.w	r1, #0x0
  2f7de0: f6cb 7180    	movt	r1, #0xbf80
  2f7de4: 4798         	blx	r3
  2f7de6: f04f 0300    	mov.w	r3, #0x0
  2f7dea: 9300         	str	r3, [sp]
  2f7dec: 9808         	ldr	r0, [sp, #0x20]
  2f7dee: f04f 0100    	mov.w	r1, #0x0
  2f7df2: f04f 0200    	mov.w	r2, #0x0
  2f7df6: f04f 0300    	mov.w	r3, #0x0
  2f7dfa: f2c5 f819    	bl	0x5bce30 <cocos2d::CCRenderTexture::clear(float, float, float, float)> @ imm = #0x2c5032
  2f7dfe: 9808         	ldr	r0, [sp, #0x20]
  2f7e00: f2c4 fe52    	bl	0x5bcaa8 <cocos2d::CCRenderTexture::begin()> @ imm = #0x2c4ca4
  2f7e04: 9b09         	ldr	r3, [sp, #0x24]
  2f7e06: 681b         	ldr	r3, [r3]
  2f7e08: f503 73b0    	add.w	r3, r3, #0x160
  2f7e0c: 681b         	ldr	r3, [r3]
  2f7e0e: 9a09         	ldr	r2, [sp, #0x24]
  2f7e10: 4610         	mov	r0, r2
  2f7e12: 4798         	blx	r3
  2f7e14: 9b0b         	ldr	r3, [sp, #0x2c]
  2f7e16: 681b         	ldr	r3, [r3]
  2f7e18: f503 73b0    	add.w	r3, r3, #0x160
  2f7e1c: 681b         	ldr	r3, [r3]
  2f7e1e: 9a0b         	ldr	r2, [sp, #0x2c]
  2f7e20: 4610         	mov	r0, r2
  2f7e22: 4798         	blx	r3
  2f7e24: 9b0c         	ldr	r3, [sp, #0x30]
  2f7e26: 681b         	ldr	r3, [r3]
  2f7e28: f503 73b0    	add.w	r3, r3, #0x160
  2f7e2c: 681b         	ldr	r3, [r3]
  2f7e2e: 9a0c         	ldr	r2, [sp, #0x30]
  2f7e30: 4610         	mov	r0, r2
  2f7e32: 4798         	blx	r3
  2f7e34: 9b0a         	ldr	r3, [sp, #0x28]
  2f7e36: 681b         	ldr	r3, [r3]
  2f7e38: f503 73b0    	add.w	r3, r3, #0x160
  2f7e3c: 681b         	ldr	r3, [r3]
  2f7e3e: 9a0a         	ldr	r2, [sp, #0x28]
  2f7e40: 4610         	mov	r0, r2
  2f7e42: 4798         	blx	r3
  2f7e44: 9808         	ldr	r0, [sp, #0x20]
  2f7e46: f2c4 ffd1    	bl	0x5bcdec <cocos2d::CCRenderTexture::end()> @ imm = #0x2c4fa2
  2f7e4a: 9b08         	ldr	r3, [sp, #0x20]
  2f7e4c: 681b         	ldr	r3, [r3]
  2f7e4e: f503 73ce    	add.w	r3, r3, #0x19c
  2f7e52: 681b         	ldr	r3, [r3]
  2f7e54: 9808         	ldr	r0, [sp, #0x20]
  2f7e56: 4798         	blx	r3
  2f7e58: 4603         	mov	r3, r0
  2f7e5a: 681a         	ldr	r2, [r3]
  2f7e5c: f502 72fa    	add.w	r2, r2, #0x1f4
  2f7e60: 6812         	ldr	r2, [r2]
  2f7e62: 4618         	mov	r0, r3
  2f7e64: 4790         	blx	r2
  2f7e66: 4603         	mov	r3, r0
  2f7e68: 930d         	str	r3, [sp, #0x34]
  2f7e6a: 9b0d         	ldr	r3, [sp, #0x34]
  2f7e6c: 4618         	mov	r0, r3
  2f7e6e: b018         	add	sp, #0x60
  2f7e70: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2f7e71); words below are literal-pool data ---
  2f7e72: bf00         	nop
  2f7e74: c96a         	ldm	r1, {r1, r3, r5, r6}
  2f7e76: 004c         	lsls	r4, r1, #0x1
  2f7e78: c8a8         	ldm	r0!, {r3, r5, r7}
  2f7e7a: 004c         	lsls	r4, r1, #0x1
  2f7e7c: c810         	ldm	r0!, {r4}
  2f7e7e: 004c         	lsls	r4, r1, #0x1
  2f7e80: c75a         	stm	r7!, {r1, r3, r4, r6}
  2f7e82: 004c         	lsls	r4, r1, #0x1

// ==== AvatarRenderer::getBodyTexture
//      file offset 0x2f7e84 (= ELF address; Ghidra 0x307e84), 316 bytes, Thumb-2
  2f7e84: b510         	push	{r4, lr}
  2f7e86: b08c         	sub	sp, #0x30
  2f7e88: 9005         	str	r0, [sp, #0x14]
  2f7e8a: 9104         	str	r1, [sp, #0x10]
  2f7e8c: 9203         	str	r2, [sp, #0xc]
  2f7e8e: 4c49         	ldr	r4, [pc, #0x124]        @ 0x2f7fb4 <AvatarRenderer::getBodyTexture(cocos2d::CCArray*, int)+0x130>
  2f7e90: 447c         	add	r4, pc
  2f7e92: 9b03         	ldr	r3, [sp, #0xc]
  2f7e94: 2b00         	cmp	r3, #0x0
  2f7e96: d10a         	bne	0x2f7eae <AvatarRenderer::getBodyTexture(cocos2d::CCArray*, int)+0x2a> @ imm = #0x14
  2f7e98: 9b04         	ldr	r3, [sp, #0x10]
  2f7e9a: 2b00         	cmp	r3, #0x0
  2f7e9c: d007         	beq	0x2f7eae <AvatarRenderer::getBodyTexture(cocos2d::CCArray*, int)+0x2a> @ imm = #0xe
  2f7e9e: 9804         	ldr	r0, [sp, #0x10]
  2f7ea0: f2a2 f91e    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x2a223c
  2f7ea4: 4603         	mov	r3, r0
  2f7ea6: 2b00         	cmp	r3, #0x0
  2f7ea8: d001         	beq	0x2f7eae <AvatarRenderer::getBodyTexture(cocos2d::CCArray*, int)+0x2a> @ imm = #0x2
  2f7eaa: 2301         	movs	r3, #0x1
  2f7eac: e000         	b	0x2f7eb0 <AvatarRenderer::getBodyTexture(cocos2d::CCArray*, int)+0x2c> @ imm = #0x0
  2f7eae: 2300         	movs	r3, #0x0
  2f7eb0: 2b00         	cmp	r3, #0x0
  2f7eb2: d005         	beq	0x2f7ec0 <AvatarRenderer::getBodyTexture(cocos2d::CCArray*, int)+0x3c> @ imm = #0xa
  2f7eb4: 9805         	ldr	r0, [sp, #0x14]
  2f7eb6: 9904         	ldr	r1, [sp, #0x10]
  2f7eb8: f7ff f978    	bl	0x2f71ac <AvatarRenderer::getCustomBodyTexture(cocos2d::CCArray*)> @ imm = #-0xd10
  2f7ebc: 4603         	mov	r3, r0
  2f7ebe: e076         	b	0x2f7fae <AvatarRenderer::getBodyTexture(cocos2d::CCArray*, int)+0x12a> @ imm = #0xec
  2f7ec0: 9b03         	ldr	r3, [sp, #0xc]
  2f7ec2: 011a         	lsls	r2, r3, #0x4
  2f7ec4: 4b3c         	ldr	r3, [pc, #0xf0]         @ 0x2f7fb8 <AvatarRenderer::getBodyTexture(cocos2d::CCArray*, int)+0x134>
  2f7ec6: 58e3         	ldr	r3, [r4, r3]
  2f7ec8: 4413         	add	r3, r2
  2f7eca: 4a3c         	ldr	r2, [pc, #0xf0]         @ 0x2f7fbc <AvatarRenderer::getBodyTexture(cocos2d::CCArray*, int)+0x138>
  2f7ecc: 447a         	add	r2, pc
  2f7ece: 4610         	mov	r0, r2
  2f7ed0: 4619         	mov	r1, r3
  2f7ed2: f2e0 f995    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2e032a
  2f7ed6: 4603         	mov	r3, r0
  2f7ed8: 9307         	str	r3, [sp, #0x1c]
  2f7eda: 9b07         	ldr	r3, [sp, #0x1c]
  2f7edc: 681b         	ldr	r3, [r3]
  2f7ede: f503 73fa    	add.w	r3, r3, #0x1f4
  2f7ee2: 681b         	ldr	r3, [r3]
  2f7ee4: 9807         	ldr	r0, [sp, #0x1c]
  2f7ee6: 4798         	blx	r3
  2f7ee8: 4603         	mov	r3, r0
  2f7eea: 4618         	mov	r0, r3
  2f7eec: f2fa f84a    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2fa094
  2f7ef0: 9b07         	ldr	r3, [sp, #0x1c]
  2f7ef2: 681b         	ldr	r3, [r3]
  2f7ef4: 334c         	adds	r3, #0x4c
  2f7ef6: 681c         	ldr	r4, [r3]
  2f7ef8: ab0a         	add	r3, sp, #0x28
  2f7efa: 4618         	mov	r0, r3
  2f7efc: f04f 0100    	mov.w	r1, #0x0
  2f7f00: f2c4 11f0    	movt	r1, #0x41f0
  2f7f04: f04f 0200    	mov.w	r2, #0x0
  2f7f08: f2c4 12d8    	movt	r2, #0x41d8
  2f7f0c: f29a fef0    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29ade0
  2f7f10: ab0a         	add	r3, sp, #0x28
  2f7f12: 9807         	ldr	r0, [sp, #0x1c]
  2f7f14: 4619         	mov	r1, r3
  2f7f16: 47a0         	blx	r4
  2f7f18: 9b07         	ldr	r3, [sp, #0x1c]
  2f7f1a: 681b         	ldr	r3, [r3]
  2f7f1c: 337c         	adds	r3, #0x7c
  2f7f1e: 681c         	ldr	r4, [r3]
  2f7f20: ab0a         	add	r3, sp, #0x28
  2f7f22: 4618         	mov	r0, r3
  2f7f24: f04f 517c    	mov.w	r1, #0x3f000000
  2f7f28: f04f 527c    	mov.w	r2, #0x3f000000
  2f7f2c: f29a fee0    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29adc0
  2f7f30: ab0a         	add	r3, sp, #0x28
  2f7f32: 9807         	ldr	r0, [sp, #0x1c]
  2f7f34: 4619         	mov	r1, r3
  2f7f36: 47a0         	blx	r4
  2f7f38: 9b07         	ldr	r3, [sp, #0x1c]
  2f7f3a: 681b         	ldr	r3, [r3]
  2f7f3c: 3338         	adds	r3, #0x38
  2f7f3e: 681b         	ldr	r3, [r3]
  2f7f40: 9807         	ldr	r0, [sp, #0x1c]
  2f7f42: f04f 0100    	mov.w	r1, #0x0
  2f7f46: f6cb 7180    	movt	r1, #0xbf80
  2f7f4a: 4798         	blx	r3
  2f7f4c: 203c         	movs	r0, #0x3c
  2f7f4e: 213c         	movs	r1, #0x3c
  2f7f50: f2c4 fb6e    	bl	0x5bc630 <cocos2d::CCRenderTexture::create(int, int)> @ imm = #0x2c46dc
  2f7f54: 4603         	mov	r3, r0
  2f7f56: 9308         	str	r3, [sp, #0x20]
  2f7f58: f04f 0300    	mov.w	r3, #0x0
  2f7f5c: 9300         	str	r3, [sp]
  2f7f5e: 9808         	ldr	r0, [sp, #0x20]
  2f7f60: f04f 0100    	mov.w	r1, #0x0
  2f7f64: f04f 0200    	mov.w	r2, #0x0
  2f7f68: f04f 0300    	mov.w	r3, #0x0
  2f7f6c: f2c4 ff60    	bl	0x5bce30 <cocos2d::CCRenderTexture::clear(float, float, float, float)> @ imm = #0x2c4ec0
  2f7f70: 9808         	ldr	r0, [sp, #0x20]
  2f7f72: f2c4 fd99    	bl	0x5bcaa8 <cocos2d::CCRenderTexture::begin()> @ imm = #0x2c4b32
  2f7f76: 9b07         	ldr	r3, [sp, #0x1c]
  2f7f78: 681b         	ldr	r3, [r3]
  2f7f7a: f503 73b0    	add.w	r3, r3, #0x160
  2f7f7e: 681b         	ldr	r3, [r3]
  2f7f80: 9a07         	ldr	r2, [sp, #0x1c]
  2f7f82: 4610         	mov	r0, r2
  2f7f84: 4798         	blx	r3
  2f7f86: 9808         	ldr	r0, [sp, #0x20]
  2f7f88: f2c4 ff30    	bl	0x5bcdec <cocos2d::CCRenderTexture::end()> @ imm = #0x2c4e60
  2f7f8c: 9b08         	ldr	r3, [sp, #0x20]
  2f7f8e: 681b         	ldr	r3, [r3]
  2f7f90: f503 73ce    	add.w	r3, r3, #0x19c
  2f7f94: 681b         	ldr	r3, [r3]
  2f7f96: 9808         	ldr	r0, [sp, #0x20]
  2f7f98: 4798         	blx	r3
  2f7f9a: 4603         	mov	r3, r0
  2f7f9c: 681a         	ldr	r2, [r3]
  2f7f9e: f502 72fa    	add.w	r2, r2, #0x1f4
  2f7fa2: 6812         	ldr	r2, [r2]
  2f7fa4: 4618         	mov	r0, r3
  2f7fa6: 4790         	blx	r2
  2f7fa8: 4603         	mov	r3, r0
  2f7faa: 9309         	str	r3, [sp, #0x24]
  2f7fac: 9b09         	ldr	r3, [sp, #0x24]
  2f7fae: 4618         	mov	r0, r3
  2f7fb0: b00c         	add	sp, #0x30
  2f7fb2: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2f7fb3); words below are literal-pool data ---
  2f7fb4: ab78         	add	r3, sp, #0x1e0
  2f7fb6: 0063         	lsls	r3, r4, #0x1
  2f7fb8: d7ac         	bvc	0x2f7f14 <AvatarRenderer::getBodyTexture(cocos2d::CCArray*, int)+0x90> @ imm = #-0xa8
  2f7fba: ffff c5fc    	vsli.64	q14, q14, #0x3f
  2f7fbe: 004c         	lsls	r4, r1, #0x1

// ==== AvatarRenderer::getArmTexture
//      file offset 0x2f7fc0 (= ELF address; Ghidra 0x307fc0), 316 bytes, Thumb-2
  2f7fc0: b510         	push	{r4, lr}
  2f7fc2: b08c         	sub	sp, #0x30
  2f7fc4: 9005         	str	r0, [sp, #0x14]
  2f7fc6: 9104         	str	r1, [sp, #0x10]
  2f7fc8: 9203         	str	r2, [sp, #0xc]
  2f7fca: 4c49         	ldr	r4, [pc, #0x124]        @ 0x2f80f0 <AvatarRenderer::getArmTexture(cocos2d::CCArray*, int)+0x130>
  2f7fcc: 447c         	add	r4, pc
  2f7fce: 9b03         	ldr	r3, [sp, #0xc]
  2f7fd0: 2b00         	cmp	r3, #0x0
  2f7fd2: d10a         	bne	0x2f7fea <AvatarRenderer::getArmTexture(cocos2d::CCArray*, int)+0x2a> @ imm = #0x14
  2f7fd4: 9b04         	ldr	r3, [sp, #0x10]
  2f7fd6: 2b00         	cmp	r3, #0x0
  2f7fd8: d007         	beq	0x2f7fea <AvatarRenderer::getArmTexture(cocos2d::CCArray*, int)+0x2a> @ imm = #0xe
  2f7fda: 9804         	ldr	r0, [sp, #0x10]
  2f7fdc: f2a2 f880    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x2a2100
  2f7fe0: 4603         	mov	r3, r0
  2f7fe2: 2b00         	cmp	r3, #0x0
  2f7fe4: d001         	beq	0x2f7fea <AvatarRenderer::getArmTexture(cocos2d::CCArray*, int)+0x2a> @ imm = #0x2
  2f7fe6: 2301         	movs	r3, #0x1
  2f7fe8: e000         	b	0x2f7fec <AvatarRenderer::getArmTexture(cocos2d::CCArray*, int)+0x2c> @ imm = #0x0
  2f7fea: 2300         	movs	r3, #0x0
  2f7fec: 2b00         	cmp	r3, #0x0
  2f7fee: d005         	beq	0x2f7ffc <AvatarRenderer::getArmTexture(cocos2d::CCArray*, int)+0x3c> @ imm = #0xa
  2f7ff0: 9805         	ldr	r0, [sp, #0x14]
  2f7ff2: 9904         	ldr	r1, [sp, #0x10]
  2f7ff4: f7ff fb04    	bl	0x2f7600 <AvatarRenderer::getCustomArmTexture(cocos2d::CCArray*)> @ imm = #-0x9f8
  2f7ff8: 4603         	mov	r3, r0
  2f7ffa: e076         	b	0x2f80ea <AvatarRenderer::getArmTexture(cocos2d::CCArray*, int)+0x12a> @ imm = #0xec
  2f7ffc: 9b03         	ldr	r3, [sp, #0xc]
  2f7ffe: 011a         	lsls	r2, r3, #0x4
  2f8000: 4b3c         	ldr	r3, [pc, #0xf0]         @ 0x2f80f4 <AvatarRenderer::getArmTexture(cocos2d::CCArray*, int)+0x134>
  2f8002: 58e3         	ldr	r3, [r4, r3]
  2f8004: 4413         	add	r3, r2
  2f8006: 4a3c         	ldr	r2, [pc, #0xf0]         @ 0x2f80f8 <AvatarRenderer::getArmTexture(cocos2d::CCArray*, int)+0x138>
  2f8008: 447a         	add	r2, pc
  2f800a: 4610         	mov	r0, r2
  2f800c: 4619         	mov	r1, r3
  2f800e: f2e0 f8f7    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2e01ee
  2f8012: 4603         	mov	r3, r0
  2f8014: 9307         	str	r3, [sp, #0x1c]
  2f8016: 9b07         	ldr	r3, [sp, #0x1c]
  2f8018: 681b         	ldr	r3, [r3]
  2f801a: f503 73fa    	add.w	r3, r3, #0x1f4
  2f801e: 681b         	ldr	r3, [r3]
  2f8020: 9807         	ldr	r0, [sp, #0x1c]
  2f8022: 4798         	blx	r3
  2f8024: 4603         	mov	r3, r0
  2f8026: 4618         	mov	r0, r3
  2f8028: f2f9 ffac    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2f9f58
  2f802c: 9b07         	ldr	r3, [sp, #0x1c]
  2f802e: 681b         	ldr	r3, [r3]
  2f8030: 334c         	adds	r3, #0x4c
  2f8032: 681c         	ldr	r4, [r3]
  2f8034: ab0a         	add	r3, sp, #0x28
  2f8036: 4618         	mov	r0, r3
  2f8038: f04f 0100    	mov.w	r1, #0x0
  2f803c: f2c4 11b0    	movt	r1, #0x41b0
  2f8040: f04f 0200    	mov.w	r2, #0x0
  2f8044: f2c4 1240    	movt	r2, #0x4140
  2f8048: f29a fe52    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29aca4
  2f804c: ab0a         	add	r3, sp, #0x28
  2f804e: 9807         	ldr	r0, [sp, #0x1c]
  2f8050: 4619         	mov	r1, r3
  2f8052: 47a0         	blx	r4
  2f8054: 9b07         	ldr	r3, [sp, #0x1c]
  2f8056: 681b         	ldr	r3, [r3]
  2f8058: 337c         	adds	r3, #0x7c
  2f805a: 681c         	ldr	r4, [r3]
  2f805c: ab0a         	add	r3, sp, #0x28
  2f805e: 4618         	mov	r0, r3
  2f8060: f04f 517c    	mov.w	r1, #0x3f000000
  2f8064: f04f 527c    	mov.w	r2, #0x3f000000
  2f8068: f29a fe42    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29ac84
  2f806c: ab0a         	add	r3, sp, #0x28
  2f806e: 9807         	ldr	r0, [sp, #0x1c]
  2f8070: 4619         	mov	r1, r3
  2f8072: 47a0         	blx	r4
  2f8074: 9b07         	ldr	r3, [sp, #0x1c]
  2f8076: 681b         	ldr	r3, [r3]
  2f8078: 3338         	adds	r3, #0x38
  2f807a: 681b         	ldr	r3, [r3]
  2f807c: 9807         	ldr	r0, [sp, #0x1c]
  2f807e: f04f 0100    	mov.w	r1, #0x0
  2f8082: f6cb 7180    	movt	r1, #0xbf80
  2f8086: 4798         	blx	r3
  2f8088: 202c         	movs	r0, #0x2c
  2f808a: 2116         	movs	r1, #0x16
  2f808c: f2c4 fad0    	bl	0x5bc630 <cocos2d::CCRenderTexture::create(int, int)> @ imm = #0x2c45a0
  2f8090: 4603         	mov	r3, r0
  2f8092: 9308         	str	r3, [sp, #0x20]
  2f8094: f04f 0300    	mov.w	r3, #0x0
  2f8098: 9300         	str	r3, [sp]
  2f809a: 9808         	ldr	r0, [sp, #0x20]
  2f809c: f04f 0100    	mov.w	r1, #0x0
  2f80a0: f04f 0200    	mov.w	r2, #0x0
  2f80a4: f04f 0300    	mov.w	r3, #0x0
  2f80a8: f2c4 fec2    	bl	0x5bce30 <cocos2d::CCRenderTexture::clear(float, float, float, float)> @ imm = #0x2c4d84
  2f80ac: 9808         	ldr	r0, [sp, #0x20]
  2f80ae: f2c4 fcfb    	bl	0x5bcaa8 <cocos2d::CCRenderTexture::begin()> @ imm = #0x2c49f6
  2f80b2: 9b07         	ldr	r3, [sp, #0x1c]
  2f80b4: 681b         	ldr	r3, [r3]
  2f80b6: f503 73b0    	add.w	r3, r3, #0x160
  2f80ba: 681b         	ldr	r3, [r3]
  2f80bc: 9a07         	ldr	r2, [sp, #0x1c]
  2f80be: 4610         	mov	r0, r2
  2f80c0: 4798         	blx	r3
  2f80c2: 9808         	ldr	r0, [sp, #0x20]
  2f80c4: f2c4 fe92    	bl	0x5bcdec <cocos2d::CCRenderTexture::end()> @ imm = #0x2c4d24
  2f80c8: 9b08         	ldr	r3, [sp, #0x20]
  2f80ca: 681b         	ldr	r3, [r3]
  2f80cc: f503 73ce    	add.w	r3, r3, #0x19c
  2f80d0: 681b         	ldr	r3, [r3]
  2f80d2: 9808         	ldr	r0, [sp, #0x20]
  2f80d4: 4798         	blx	r3
  2f80d6: 4603         	mov	r3, r0
  2f80d8: 681a         	ldr	r2, [r3]
  2f80da: f502 72fa    	add.w	r2, r2, #0x1f4
  2f80de: 6812         	ldr	r2, [r2]
  2f80e0: 4618         	mov	r0, r3
  2f80e2: 4790         	blx	r2
  2f80e4: 4603         	mov	r3, r0
  2f80e6: 9309         	str	r3, [sp, #0x24]
  2f80e8: 9b09         	ldr	r3, [sp, #0x24]
  2f80ea: 4618         	mov	r0, r3
  2f80ec: b00c         	add	sp, #0x30
  2f80ee: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2f80ef); words below are literal-pool data ---
  2f80f0: aa3c         	add	r2, sp, #0xf0
  2f80f2: 0063         	lsls	r3, r4, #0x1
  2f80f4: d7b0         	bvc	0x2f8058 <AvatarRenderer::getArmTexture(cocos2d::CCArray*, int)+0x98> @ imm = #-0xa0
  2f80f6: ffff c4c0    	<unknown>
  2f80fa: 004c         	lsls	r4, r1, #0x1

// ==== AvatarRenderer::getLegTexture
//      file offset 0x2f80fc (= ELF address; Ghidra 0x3080fc), 316 bytes, Thumb-2
  2f80fc: b510         	push	{r4, lr}
  2f80fe: b08c         	sub	sp, #0x30
  2f8100: 9005         	str	r0, [sp, #0x14]
  2f8102: 9104         	str	r1, [sp, #0x10]
  2f8104: 9203         	str	r2, [sp, #0xc]
  2f8106: 4c49         	ldr	r4, [pc, #0x124]        @ 0x2f822c <AvatarRenderer::getLegTexture(cocos2d::CCArray*, int)+0x130>
  2f8108: 447c         	add	r4, pc
  2f810a: 9b03         	ldr	r3, [sp, #0xc]
  2f810c: 2b00         	cmp	r3, #0x0
  2f810e: d10a         	bne	0x2f8126 <AvatarRenderer::getLegTexture(cocos2d::CCArray*, int)+0x2a> @ imm = #0x14
  2f8110: 9b04         	ldr	r3, [sp, #0x10]
  2f8112: 2b00         	cmp	r3, #0x0
  2f8114: d007         	beq	0x2f8126 <AvatarRenderer::getLegTexture(cocos2d::CCArray*, int)+0x2a> @ imm = #0xe
  2f8116: 9804         	ldr	r0, [sp, #0x10]
  2f8118: f2a1 ffe2    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x2a1fc4
  2f811c: 4603         	mov	r3, r0
  2f811e: 2b00         	cmp	r3, #0x0
  2f8120: d001         	beq	0x2f8126 <AvatarRenderer::getLegTexture(cocos2d::CCArray*, int)+0x2a> @ imm = #0x2
  2f8122: 2301         	movs	r3, #0x1
  2f8124: e000         	b	0x2f8128 <AvatarRenderer::getLegTexture(cocos2d::CCArray*, int)+0x2c> @ imm = #0x0
  2f8126: 2300         	movs	r3, #0x0
  2f8128: 2b00         	cmp	r3, #0x0
  2f812a: d005         	beq	0x2f8138 <AvatarRenderer::getLegTexture(cocos2d::CCArray*, int)+0x3c> @ imm = #0xa
  2f812c: 9805         	ldr	r0, [sp, #0x14]
  2f812e: 9904         	ldr	r1, [sp, #0x10]
  2f8130: f7ff fc92    	bl	0x2f7a58 <AvatarRenderer::getCustomLegTexture(cocos2d::CCArray*)> @ imm = #-0x6dc
  2f8134: 4603         	mov	r3, r0
  2f8136: e076         	b	0x2f8226 <AvatarRenderer::getLegTexture(cocos2d::CCArray*, int)+0x12a> @ imm = #0xec
  2f8138: 9b03         	ldr	r3, [sp, #0xc]
  2f813a: 011a         	lsls	r2, r3, #0x4
  2f813c: 4b3c         	ldr	r3, [pc, #0xf0]         @ 0x2f8230 <AvatarRenderer::getLegTexture(cocos2d::CCArray*, int)+0x134>
  2f813e: 58e3         	ldr	r3, [r4, r3]
  2f8140: 4413         	add	r3, r2
  2f8142: 4a3c         	ldr	r2, [pc, #0xf0]         @ 0x2f8234 <AvatarRenderer::getLegTexture(cocos2d::CCArray*, int)+0x138>
  2f8144: 447a         	add	r2, pc
  2f8146: 4610         	mov	r0, r2
  2f8148: 4619         	mov	r1, r3
  2f814a: f2e0 f859    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2e00b2
  2f814e: 4603         	mov	r3, r0
  2f8150: 9307         	str	r3, [sp, #0x1c]
  2f8152: 9b07         	ldr	r3, [sp, #0x1c]
  2f8154: 681b         	ldr	r3, [r3]
  2f8156: f503 73fa    	add.w	r3, r3, #0x1f4
  2f815a: 681b         	ldr	r3, [r3]
  2f815c: 9807         	ldr	r0, [sp, #0x1c]
  2f815e: 4798         	blx	r3
  2f8160: 4603         	mov	r3, r0
  2f8162: 4618         	mov	r0, r3
  2f8164: f2f9 ff0e    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2f9e1c
  2f8168: 9b07         	ldr	r3, [sp, #0x1c]
  2f816a: 681b         	ldr	r3, [r3]
  2f816c: 334c         	adds	r3, #0x4c
  2f816e: 681c         	ldr	r4, [r3]
  2f8170: ab0a         	add	r3, sp, #0x28
  2f8172: 4618         	mov	r0, r3
  2f8174: f04f 0100    	mov.w	r1, #0x0
  2f8178: f2c4 1188    	movt	r1, #0x4188
  2f817c: f04f 0200    	mov.w	r2, #0x0
  2f8180: f2c4 12a8    	movt	r2, #0x41a8
  2f8184: f29a fdb4    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29ab68
  2f8188: ab0a         	add	r3, sp, #0x28
  2f818a: 9807         	ldr	r0, [sp, #0x1c]
  2f818c: 4619         	mov	r1, r3
  2f818e: 47a0         	blx	r4
  2f8190: 9b07         	ldr	r3, [sp, #0x1c]
  2f8192: 681b         	ldr	r3, [r3]
  2f8194: 337c         	adds	r3, #0x7c
  2f8196: 681c         	ldr	r4, [r3]
  2f8198: ab0a         	add	r3, sp, #0x28
  2f819a: 4618         	mov	r0, r3
  2f819c: f04f 517c    	mov.w	r1, #0x3f000000
  2f81a0: f04f 527c    	mov.w	r2, #0x3f000000
  2f81a4: f29a fda4    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29ab48
  2f81a8: ab0a         	add	r3, sp, #0x28
  2f81aa: 9807         	ldr	r0, [sp, #0x1c]
  2f81ac: 4619         	mov	r1, r3
  2f81ae: 47a0         	blx	r4
  2f81b0: 9b07         	ldr	r3, [sp, #0x1c]
  2f81b2: 681b         	ldr	r3, [r3]
  2f81b4: 3338         	adds	r3, #0x38
  2f81b6: 681b         	ldr	r3, [r3]
  2f81b8: 9807         	ldr	r0, [sp, #0x1c]
  2f81ba: f04f 0100    	mov.w	r1, #0x0
  2f81be: f6cb 7180    	movt	r1, #0xbf80
  2f81c2: 4798         	blx	r3
  2f81c4: 2022         	movs	r0, #0x22
  2f81c6: 212a         	movs	r1, #0x2a
  2f81c8: f2c4 fa32    	bl	0x5bc630 <cocos2d::CCRenderTexture::create(int, int)> @ imm = #0x2c4464
  2f81cc: 4603         	mov	r3, r0
  2f81ce: 9308         	str	r3, [sp, #0x20]
  2f81d0: f04f 0300    	mov.w	r3, #0x0
  2f81d4: 9300         	str	r3, [sp]
  2f81d6: 9808         	ldr	r0, [sp, #0x20]
  2f81d8: f04f 0100    	mov.w	r1, #0x0
  2f81dc: f04f 0200    	mov.w	r2, #0x0
  2f81e0: f04f 0300    	mov.w	r3, #0x0
  2f81e4: f2c4 fe24    	bl	0x5bce30 <cocos2d::CCRenderTexture::clear(float, float, float, float)> @ imm = #0x2c4c48
  2f81e8: 9808         	ldr	r0, [sp, #0x20]
  2f81ea: f2c4 fc5d    	bl	0x5bcaa8 <cocos2d::CCRenderTexture::begin()> @ imm = #0x2c48ba
  2f81ee: 9b07         	ldr	r3, [sp, #0x1c]
  2f81f0: 681b         	ldr	r3, [r3]
  2f81f2: f503 73b0    	add.w	r3, r3, #0x160
  2f81f6: 681b         	ldr	r3, [r3]
  2f81f8: 9a07         	ldr	r2, [sp, #0x1c]
  2f81fa: 4610         	mov	r0, r2
  2f81fc: 4798         	blx	r3
  2f81fe: 9808         	ldr	r0, [sp, #0x20]
  2f8200: f2c4 fdf4    	bl	0x5bcdec <cocos2d::CCRenderTexture::end()> @ imm = #0x2c4be8
  2f8204: 9b08         	ldr	r3, [sp, #0x20]
  2f8206: 681b         	ldr	r3, [r3]
  2f8208: f503 73ce    	add.w	r3, r3, #0x19c
  2f820c: 681b         	ldr	r3, [r3]
  2f820e: 9808         	ldr	r0, [sp, #0x20]
  2f8210: 4798         	blx	r3
  2f8212: 4603         	mov	r3, r0
  2f8214: 681a         	ldr	r2, [r3]
  2f8216: f502 72fa    	add.w	r2, r2, #0x1f4
  2f821a: 6812         	ldr	r2, [r2]
  2f821c: 4618         	mov	r0, r3
  2f821e: 4790         	blx	r2
  2f8220: 4603         	mov	r3, r0
  2f8222: 9309         	str	r3, [sp, #0x24]
  2f8224: 9b09         	ldr	r3, [sp, #0x24]
  2f8226: 4618         	mov	r0, r3
  2f8228: b00c         	add	sp, #0x30
  2f822a: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2f822b); words below are literal-pool data ---
  2f822c: a900         	add	r1, sp, #0x0
  2f822e: 0063         	lsls	r3, r4, #0x1
  2f8230: d7b4         	bvc	0x2f819c <AvatarRenderer::getLegTexture(cocos2d::CCArray*, int)+0xa0> @ imm = #-0x98
  2f8232: ffff c384    	<unknown>
  2f8236: 004c         	lsls	r4, r1, #0x1

// ==== AvatarRenderer::getBodyType
//      file offset 0x2f8238 (= ELF address; Ghidra 0x308238), 104 bytes, Thumb-2
  2f8238: b500         	push	{lr}
  2f823a: b085         	sub	sp, #0x14
  2f823c: 9003         	str	r0, [sp, #0xc]
  2f823e: 9102         	str	r1, [sp, #0x8]
  2f8240: 9201         	str	r2, [sp, #0x4]
  2f8242: 4a15         	ldr	r2, [pc, #0x54]         @ 0x2f8298 <AvatarRenderer::getBodyType(cocos2d::CCArray*, int)+0x60>
  2f8244: 447a         	add	r2, pc
  2f8246: 9b01         	ldr	r3, [sp, #0x4]
  2f8248: 2b00         	cmp	r3, #0x0
  2f824a: db05         	blt	0x2f8258 <AvatarRenderer::getBodyType(cocos2d::CCArray*, int)+0x20> @ imm = #0xa
  2f824c: 4b13         	ldr	r3, [pc, #0x4c]         @ 0x2f829c <AvatarRenderer::getBodyType(cocos2d::CCArray*, int)+0x64>
  2f824e: 58d3         	ldr	r3, [r2, r3]
  2f8250: 681b         	ldr	r3, [r3]
  2f8252: 9a01         	ldr	r2, [sp, #0x4]
  2f8254: 429a         	cmp	r2, r3
  2f8256: db01         	blt	0x2f825c <AvatarRenderer::getBodyType(cocos2d::CCArray*, int)+0x24> @ imm = #0x2
  2f8258: 2300         	movs	r3, #0x0
  2f825a: 9301         	str	r3, [sp, #0x4]
  2f825c: 9b01         	ldr	r3, [sp, #0x4]
  2f825e: 2b00         	cmp	r3, #0x0
  2f8260: d107         	bne	0x2f8272 <AvatarRenderer::getBodyType(cocos2d::CCArray*, int)+0x3a> @ imm = #0xe
  2f8262: 9802         	ldr	r0, [sp, #0x8]
  2f8264: f2a1 ff3c    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x2a1e78
  2f8268: 4603         	mov	r3, r0
  2f826a: 2b00         	cmp	r3, #0x0
  2f826c: d001         	beq	0x2f8272 <AvatarRenderer::getBodyType(cocos2d::CCArray*, int)+0x3a> @ imm = #0x2
  2f826e: 2301         	movs	r3, #0x1
  2f8270: e000         	b	0x2f8274 <AvatarRenderer::getBodyType(cocos2d::CCArray*, int)+0x3c> @ imm = #0x0
  2f8272: 2300         	movs	r3, #0x0
  2f8274: 2b00         	cmp	r3, #0x0
  2f8276: d009         	beq	0x2f828c <AvatarRenderer::getBodyType(cocos2d::CCArray*, int)+0x54> @ imm = #0x12
  2f8278: 9802         	ldr	r0, [sp, #0x8]
  2f827a: 2100         	movs	r1, #0x0
  2f827c: f2a1 ff50    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2a1ea0
  2f8280: 4603         	mov	r3, r0
  2f8282: 4618         	mov	r0, r3
  2f8284: f7f4 fde6    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0xb434
  2f8288: 4603         	mov	r3, r0
  2f828a: e000         	b	0x2f828e <AvatarRenderer::getBodyType(cocos2d::CCArray*, int)+0x56> @ imm = #0x0
  2f828c: 9b01         	ldr	r3, [sp, #0x4]
  2f828e: 4618         	mov	r0, r3
  2f8290: b005         	add	sp, #0x14
  2f8292: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2f8295); words below are literal-pool data ---
  2f8296: bf00         	nop
  2f8298: a7c4         	adr	r7, #784 <AvatarRenderer::getCustomAvatarProperties()+0x10>
  2f829a: 0063         	lsls	r3, r4, #0x1
  2f829c: d8f4         	bhi	0x2f8288 <AvatarRenderer::getBodyType(cocos2d::CCArray*, int)+0x50> @ imm = #-0x18
  2f829e: ffff b570    	<unknown>

// ==== AvatarRenderer::saveCustomAvatarProperties
//      file offset 0x2f82a0 (= ELF address; Ghidra 0x3082a0), 176 bytes, Thumb-2
  2f82a0: b570         	push	{r4, r5, r6, lr}
  2f82a2: b086         	sub	sp, #0x18
  2f82a4: 9001         	str	r0, [sp, #0x4]
  2f82a6: 9100         	str	r1, [sp]
  2f82a8: 2300         	movs	r3, #0x0
  2f82aa: 9304         	str	r3, [sp, #0x10]
  2f82ac: e034         	b	0x2f8318 <AvatarRenderer::saveCustomAvatarProperties(cocos2d::CCArray*)+0x78> @ imm = #0x68
  2f82ae: 9b04         	ldr	r3, [sp, #0x10]
  2f82b0: 9800         	ldr	r0, [sp]
  2f82b2: 4619         	mov	r1, r3
  2f82b4: f2a1 ff34    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2a1e68
  2f82b8: 4603         	mov	r3, r0
  2f82ba: 9305         	str	r3, [sp, #0x14]
  2f82bc: f2ea f9b6    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2ea36c
  2f82c0: 4605         	mov	r5, r0
  2f82c2: 4b22         	ldr	r3, [pc, #0x88]         @ 0x2f834c <AvatarRenderer::saveCustomAvatarProperties(cocos2d::CCArray*)+0xac>
  2f82c4: 447b         	add	r3, pc
  2f82c6: 4618         	mov	r0, r3
  2f82c8: 9904         	ldr	r1, [sp, #0x10]
  2f82ca: f2a1 fc21    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x2a1842
  2f82ce: 4603         	mov	r3, r0
  2f82d0: 4618         	mov	r0, r3
  2f82d2: f2a1 fb29    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2a1652
  2f82d6: 4604         	mov	r4, r0
  2f82d8: 9805         	ldr	r0, [sp, #0x14]
  2f82da: f2a1 fb25    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2a164a
  2f82de: 4606         	mov	r6, r0
  2f82e0: ab02         	add	r3, sp, #0x8
  2f82e2: 4618         	mov	r0, r3
  2f82e4: f092 f086    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x49210c
  2f82e8: aa03         	add	r2, sp, #0xc
  2f82ea: ab02         	add	r3, sp, #0x8
  2f82ec: 4610         	mov	r0, r2
  2f82ee: 4631         	mov	r1, r6
  2f82f0: 461a         	mov	r2, r3
  2f82f2: f0be f3b5    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4be76a
  2f82f6: ab03         	add	r3, sp, #0xc
  2f82f8: 4628         	mov	r0, r5
  2f82fa: 4621         	mov	r1, r4
  2f82fc: 461a         	mov	r2, r3
  2f82fe: f2ea f981    	bl	0x5e2604 <cocos2d::CCUserDefault::setStringForKey(char const*, std::string const&)> @ imm = #0x2ea302
  2f8302: ab03         	add	r3, sp, #0xc
  2f8304: 4618         	mov	r0, r3
  2f8306: f0bd f305    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4bd60a
  2f830a: ab02         	add	r3, sp, #0x8
  2f830c: 4618         	mov	r0, r3
  2f830e: f092 f075    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4920ea
  2f8312: 9b04         	ldr	r3, [sp, #0x10]
  2f8314: 3301         	adds	r3, #0x1
  2f8316: 9304         	str	r3, [sp, #0x10]
  2f8318: 9c04         	ldr	r4, [sp, #0x10]
  2f831a: 9800         	ldr	r0, [sp]
  2f831c: f2a1 fee0    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x2a1dc0
  2f8320: 4603         	mov	r3, r0
  2f8322: 429c         	cmp	r4, r3
  2f8324: bf2c         	ite	hs
  2f8326: 2300         	movhs	r3, #0x0
  2f8328: 2301         	movlo	r3, #0x1
  2f832a: b2db         	uxtb	r3, r3
  2f832c: 2b00         	cmp	r3, #0x0
  2f832e: d1be         	bne	0x2f82ae <AvatarRenderer::saveCustomAvatarProperties(cocos2d::CCArray*)+0xe> @ imm = #-0x84
  2f8330: e00a         	b	0x2f8348 <AvatarRenderer::saveCustomAvatarProperties(cocos2d::CCArray*)+0xa8> @ imm = #0x14
  2f8332: ab03         	add	r3, sp, #0xc
  2f8334: 4618         	mov	r0, r3
  2f8336: f0bd f2ed    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4bd5da
  2f833a: e7ff         	b	0x2f833c <AvatarRenderer::saveCustomAvatarProperties(cocos2d::CCArray*)+0x9c> @ imm = #-0x2
  2f833c: ab02         	add	r3, sp, #0x8
  2f833e: 4618         	mov	r0, r3
  2f8340: f092 f05c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4920b8
  2f8344: f08f f6b2    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48fd64
  2f8348: b006         	add	sp, #0x18
  2f834a: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x2f834b); words below are literal-pool data ---
  2f834c: c214         	stm	r2!, {r2, r4}
  2f834e: 004c         	lsls	r4, r1, #0x1

// ==== AvatarRenderer::getCustomAvatarProperties
//      file offset 0x2f8350 (= ELF address; Ghidra 0x308350), 252 bytes, Thumb-2
  2f8350: b530         	push	{r4, r5, lr}
  2f8352: b089         	sub	sp, #0x24
  2f8354: 9001         	str	r0, [sp, #0x4]
  2f8356: 2300         	movs	r3, #0x0
  2f8358: 9306         	str	r3, [sp, #0x18]
  2f835a: 2301         	movs	r3, #0x1
  2f835c: f88d 300f    	strb.w	r3, [sp, #0xf]
  2f8360: f2a1 fce8    	bl	0x599d34 <cocos2d::CCArray::create()> @ imm = #0x2a19d0
  2f8364: 4603         	mov	r3, r0
  2f8366: 9307         	str	r3, [sp, #0x1c]
  2f8368: e050         	b	0x2f840c <AvatarRenderer::getCustomAvatarProperties()+0xbc> @ imm = #0xa0
  2f836a: f2ea f95f    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2ea2be
  2f836e: 4605         	mov	r5, r0
  2f8370: 4b33         	ldr	r3, [pc, #0xcc]         @ 0x2f8440 <AvatarRenderer::getCustomAvatarProperties()+0xf0>
  2f8372: 447b         	add	r3, pc
  2f8374: 4618         	mov	r0, r3
  2f8376: 9906         	ldr	r1, [sp, #0x18]
  2f8378: f2a1 fbca    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x2a1794
  2f837c: 4603         	mov	r3, r0
  2f837e: 4618         	mov	r0, r3
  2f8380: f2a1 fad2    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2a15a4
  2f8384: 4604         	mov	r4, r0
  2f8386: ab03         	add	r3, sp, #0xc
  2f8388: 4618         	mov	r0, r3
  2f838a: f092 f033    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x492066
  2f838e: aa05         	add	r2, sp, #0x14
  2f8390: ab03         	add	r3, sp, #0xc
  2f8392: 4610         	mov	r0, r2
  2f8394: 4a2b         	ldr	r2, [pc, #0xac]         @ 0x2f8444 <AvatarRenderer::getCustomAvatarProperties()+0xf4>
  2f8396: 447a         	add	r2, pc
  2f8398: 4611         	mov	r1, r2
  2f839a: 461a         	mov	r2, r3
  2f839c: f0be f360    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4be6c0
  2f83a0: aa04         	add	r2, sp, #0x10
  2f83a2: ab05         	add	r3, sp, #0x14
  2f83a4: 4610         	mov	r0, r2
  2f83a6: 4629         	mov	r1, r5
  2f83a8: 4622         	mov	r2, r4
  2f83aa: f2ea f877    	bl	0x5e249c <cocos2d::CCUserDefault::getStringForKey(char const*, std::string const&)> @ imm = #0x2ea0ee
  2f83ae: ab05         	add	r3, sp, #0x14
  2f83b0: 4618         	mov	r0, r3
  2f83b2: f0bd f2af    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4bd55e
  2f83b6: ab03         	add	r3, sp, #0xc
  2f83b8: 4618         	mov	r0, r3
  2f83ba: f092 f01f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x49203e
  2f83be: ab04         	add	r3, sp, #0x10
  2f83c0: 4618         	mov	r0, r3
  2f83c2: f0bc f72b    	bl	0x7b521c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x1876c> @ imm = #0x4bce56
  2f83c6: 4603         	mov	r3, r0
  2f83c8: 2b00         	cmp	r3, #0x0
  2f83ca: bf0c         	ite	eq
  2f83cc: 2300         	moveq	r3, #0x0
  2f83ce: 2301         	movne	r3, #0x1
  2f83d0: b2db         	uxtb	r3, r3
  2f83d2: 2b00         	cmp	r3, #0x0
  2f83d4: d013         	beq	0x2f83fe <AvatarRenderer::getCustomAvatarProperties()+0xae> @ imm = #0x26
  2f83d6: ab04         	add	r3, sp, #0x10
  2f83d8: 4618         	mov	r0, r3
  2f83da: f0bc f791    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4bcf22
  2f83de: 4603         	mov	r3, r0
  2f83e0: 4a19         	ldr	r2, [pc, #0x64]         @ 0x2f8448 <AvatarRenderer::getCustomAvatarProperties()+0xf8>
  2f83e2: 447a         	add	r2, pc
  2f83e4: 4610         	mov	r0, r2
  2f83e6: 4619         	mov	r1, r3
  2f83e8: f2a1 fb92    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x2a1724
  2f83ec: 4603         	mov	r3, r0
  2f83ee: 9807         	ldr	r0, [sp, #0x1c]
  2f83f0: 4619         	mov	r1, r3
  2f83f2: f2a1 ff3b    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x2a1e76
  2f83f6: 9b06         	ldr	r3, [sp, #0x18]
  2f83f8: 3301         	adds	r3, #0x1
  2f83fa: 9306         	str	r3, [sp, #0x18]
  2f83fc: e002         	b	0x2f8404 <AvatarRenderer::getCustomAvatarProperties()+0xb4> @ imm = #0x4
  2f83fe: 2300         	movs	r3, #0x0
  2f8400: f88d 300f    	strb.w	r3, [sp, #0xf]
  2f8404: ab04         	add	r3, sp, #0x10
  2f8406: 4618         	mov	r0, r3
  2f8408: f0bd f284    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4bd508
  2f840c: f89d 300f    	ldrb.w	r3, [sp, #0xf]
  2f8410: 2b00         	cmp	r3, #0x0
  2f8412: d1aa         	bne	0x2f836a <AvatarRenderer::getCustomAvatarProperties()+0x1a> @ imm = #-0xac
  2f8414: 9b07         	ldr	r3, [sp, #0x1c]
  2f8416: e010         	b	0x2f843a <AvatarRenderer::getCustomAvatarProperties()+0xea> @ imm = #0x20
  2f8418: ab05         	add	r3, sp, #0x14
  2f841a: 4618         	mov	r0, r3
  2f841c: f0bd f27a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4bd4f4
  2f8420: e7ff         	b	0x2f8422 <AvatarRenderer::getCustomAvatarProperties()+0xd2> @ imm = #-0x2
  2f8422: ab03         	add	r3, sp, #0xc
  2f8424: 4618         	mov	r0, r3
  2f8426: f091 f7e9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x491fd2
  2f842a: f08f f63f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48fc7e
  2f842e: ab04         	add	r3, sp, #0x10
  2f8430: 4618         	mov	r0, r3
  2f8432: f0bd f26f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4bd4de
  2f8436: f08f f639    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48fc72
  2f843a: 4618         	mov	r0, r3
  2f843c: b009         	add	sp, #0x24
  2f843e: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x2f843f); words below are literal-pool data ---
  2f8440: c166         	stm	r1!, {r1, r2, r5, r6}
  2f8442: 004c         	lsls	r4, r1, #0x1
  2f8444: c152         	stm	r1!, {r1, r4, r6}
  2f8446: 004c         	lsls	r4, r1, #0x1
  2f8448: c10a         	stm	r1!, {r1, r3}
  2f844a: 004c         	lsls	r4, r1, #0x1
