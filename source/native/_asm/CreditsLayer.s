// CreditsLayer: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 13 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../CreditsLayer.cpp

// ==== CreditsLayer::create
//      file offset 0x30c9e4 (= ELF address; Ghidra 0x31c9e4), 112 bytes, Thumb-2
  30c9e4: b510         	push	{r4, lr}
  30c9e6: b082         	sub	sp, #0x8
  30c9e8: f44f 7098    	mov.w	r0, #0x130
  30c9ec: f07a f7ba    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x47af74
  30c9f0: 4603         	mov	r3, r0
  30c9f2: 461c         	mov	r4, r3
  30c9f4: 4620         	mov	r0, r4
  30c9f6: f000 f82d    	bl	0x30ca54 <CreditsLayer::CreditsLayer()> @ imm = #0x5a
  30c9fa: 9401         	str	r4, [sp, #0x4]
  30c9fc: 9b01         	ldr	r3, [sp, #0x4]
  30c9fe: 2b00         	cmp	r3, #0x0
  30ca00: d00a         	beq	0x30ca18 <CreditsLayer::create()+0x34> @ imm = #0x14
  30ca02: 9b01         	ldr	r3, [sp, #0x4]
  30ca04: 681b         	ldr	r3, [r3]
  30ca06: 3318         	adds	r3, #0x18
  30ca08: 681b         	ldr	r3, [r3]
  30ca0a: 9801         	ldr	r0, [sp, #0x4]
  30ca0c: 4798         	blx	r3
  30ca0e: 4603         	mov	r3, r0
  30ca10: 2b00         	cmp	r3, #0x0
  30ca12: d001         	beq	0x30ca18 <CreditsLayer::create()+0x34> @ imm = #0x2
  30ca14: 2301         	movs	r3, #0x1
  30ca16: e000         	b	0x30ca1a <CreditsLayer::create()+0x36> @ imm = #0x0
  30ca18: 2300         	movs	r3, #0x0
  30ca1a: 2b00         	cmp	r3, #0x0
  30ca1c: d005         	beq	0x30ca2a <CreditsLayer::create()+0x46> @ imm = #0xa
  30ca1e: 9b01         	ldr	r3, [sp, #0x4]
  30ca20: 4618         	mov	r0, r3
  30ca22: f28b fa6b    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x28b4d6
  30ca26: 9b01         	ldr	r3, [sp, #0x4]
  30ca28: e011         	b	0x30ca4e <CreditsLayer::create()+0x6a> @ imm = #0x22
  30ca2a: 9b01         	ldr	r3, [sp, #0x4]
  30ca2c: 2b00         	cmp	r3, #0x0
  30ca2e: d005         	beq	0x30ca3c <CreditsLayer::create()+0x58> @ imm = #0xa
  30ca30: 9b01         	ldr	r3, [sp, #0x4]
  30ca32: 681b         	ldr	r3, [r3]
  30ca34: 3308         	adds	r3, #0x8
  30ca36: 681b         	ldr	r3, [r3]
  30ca38: 9801         	ldr	r0, [sp, #0x4]
  30ca3a: 4798         	blx	r3
  30ca3c: 2300         	movs	r3, #0x0
  30ca3e: 9301         	str	r3, [sp, #0x4]
  30ca40: 2300         	movs	r3, #0x0
  30ca42: e004         	b	0x30ca4e <CreditsLayer::create()+0x6a> @ imm = #0x8
  30ca44: 4620         	mov	r0, r4
  30ca46: f07b f32d    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x47b65a
  30ca4a: f07b f32f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x47b65e
  30ca4e: 4618         	mov	r0, r3
  30ca50: b002         	add	sp, #0x8
  30ca52: bd10         	pop	{r4, pc}

// ==== CreditsLayer::CreditsLayer
//      file offset 0x30ca54 (= ELF address; Ghidra 0x31ca54), 88 bytes, Thumb-2
  30ca54: b510         	push	{r4, lr}
  30ca56: b082         	sub	sp, #0x8
  30ca58: 9001         	str	r0, [sp, #0x4]
  30ca5a: 4c12         	ldr	r4, [pc, #0x48]         @ 0x30caa4 <CreditsLayer::CreditsLayer()+0x50>
  30ca5c: 447c         	add	r4, pc
  30ca5e: 9b01         	ldr	r3, [sp, #0x4]
  30ca60: 4618         	mov	r0, r3
  30ca62: f2a0 fafb    	bl	0x5ad05c <cocos2d::CCLayer::CCLayer()> @ imm = #0x2a05f6
  30ca66: 9b01         	ldr	r3, [sp, #0x4]
  30ca68: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x30caa8 <CreditsLayer::CreditsLayer()+0x54>
  30ca6a: 58a2         	ldr	r2, [r4, r2]
  30ca6c: 3208         	adds	r2, #0x8
  30ca6e: 601a         	str	r2, [r3]
  30ca70: 9b01         	ldr	r3, [sp, #0x4]
  30ca72: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x30caa8 <CreditsLayer::CreditsLayer()+0x54>
  30ca74: 58a2         	ldr	r2, [r4, r2]
  30ca76: f502 7204    	add.w	r2, r2, #0x210
  30ca7a: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  30ca7e: 9b01         	ldr	r3, [sp, #0x4]
  30ca80: 4a09         	ldr	r2, [pc, #0x24]         @ 0x30caa8 <CreditsLayer::CreditsLayer()+0x54>
  30ca82: 58a2         	ldr	r2, [r4, r2]
  30ca84: f502 7210    	add.w	r2, r2, #0x240
  30ca88: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  30ca8c: 9b01         	ldr	r3, [sp, #0x4]
  30ca8e: 4a06         	ldr	r2, [pc, #0x18]         @ 0x30caa8 <CreditsLayer::CreditsLayer()+0x54>
  30ca90: 58a2         	ldr	r2, [r4, r2]
  30ca92: f502 7213    	add.w	r2, r2, #0x24c
  30ca96: f8c3 20ec    	str.w	r2, [r3, #0xec]
  30ca9a: 9b01         	ldr	r3, [sp, #0x4]
  30ca9c: 4618         	mov	r0, r3
  30ca9e: b002         	add	sp, #0x8
  30caa0: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x30caa1); words below are literal-pool data ---
  30caa2: bf00         	nop
  30caa4: 5fac         	ldrsh	r4, [r5, r6]
  30caa6: 0062         	lsls	r2, r4, #0x1
  30caa8: d990         	bls	0x30c9cc <std::_Rb_tree_const_iterator<cocos2d::CCObject*>::operator*() const+0xf00> @ imm = #-0xe0
  30caaa: ffff b500    	<unknown>

// ==== CreditsLayer::scene
//      file offset 0x30caac (= ELF address; Ghidra 0x31caac), 46 bytes, Thumb-2
  30caac: b500         	push	{lr}
  30caae: b083         	sub	sp, #0xc
  30cab0: f2a2 ffd6    	bl	0x5afa60 <cocos2d::CCScene::create()> @ imm = #0x2a2fac
  30cab4: 4603         	mov	r3, r0
  30cab6: 9300         	str	r3, [sp]
  30cab8: f7ff ff94    	bl	0x30c9e4 <CreditsLayer::create()> @ imm = #-0xd8
  30cabc: 4603         	mov	r3, r0
  30cabe: 9301         	str	r3, [sp, #0x4]
  30cac0: 9b00         	ldr	r3, [sp]
  30cac2: 681b         	ldr	r3, [r3]
  30cac4: 33c8         	adds	r3, #0xc8
  30cac6: 681b         	ldr	r3, [r3]
  30cac8: 9a00         	ldr	r2, [sp]
  30caca: 4610         	mov	r0, r2
  30cacc: 9901         	ldr	r1, [sp, #0x4]
  30cace: 4798         	blx	r3
  30cad0: 9b00         	ldr	r3, [sp]
  30cad2: 4618         	mov	r0, r3
  30cad4: b003         	add	sp, #0xc
  30cad6: f85d fb04    	ldr	pc, [sp], #4

// ==== CreditsLayer::init
//      file offset 0x30cae0 (= ELF address; Ghidra 0x31cae0), 1944 bytes, Thumb-2
  30cae0: b5f0         	push	{r4, r5, r6, r7, lr}
  30cae2: ed2d 8b02    	vpush	{d8}
  30cae6: b0af         	sub	sp, #0xbc
  30cae8: 9003         	str	r0, [sp, #0xc]
  30caea: f8df 4734    	ldr.w	r4, [pc, #0x734]        @ 0x30d220 <CreditsLayer::init()+0x740>
  30caee: 447c         	add	r4, pc
  30caf0: 9b03         	ldr	r3, [sp, #0xc]
  30caf2: 4618         	mov	r0, r3
  30caf4: f2a0 fb80    	bl	0x5ad1f8 <cocos2d::CCLayer::init()> @ imm = #0x2a0700
  30caf8: 4603         	mov	r3, r0
  30cafa: f88d 3013    	strb.w	r3, [sp, #0x13]
  30cafe: f89d 3013    	ldrb.w	r3, [sp, #0x13]
  30cb02: f083 0301    	eor	r3, r3, #0x1
  30cb06: b2db         	uxtb	r3, r3
  30cb08: 2b00         	cmp	r3, #0x0
  30cb0a: d001         	beq	0x30cb10 <CreditsLayer::init()+0x30> @ imm = #0x2
  30cb0c: 2300         	movs	r3, #0x0
  30cb0e: e37b         	b	0x30d208 <CreditsLayer::init()+0x728> @ imm = #0x6f6
  30cb10: 9b03         	ldr	r3, [sp, #0xc]
  30cb12: 2200         	movs	r2, #0x0
  30cb14: f883 2108    	strb.w	r2, [r3, #0x108]
  30cb18: ab12         	add	r3, sp, #0x48
  30cb1a: 4618         	mov	r0, r3
  30cb1c: f8df 3704    	ldr.w	r3, [pc, #0x704]        @ 0x30d224 <CreditsLayer::init()+0x744>
  30cb20: 58e3         	ldr	r3, [r4, r3]
  30cb22: 4619         	mov	r1, r3
  30cb24: f286 fac4    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x286588
  30cb28: ed9d 7a12    	vldr	s14, [sp, #72]
  30cb2c: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  30cb30: eec7 6a27    	vdiv.f32	s13, s14, s15
  30cb34: ed9d 7a13    	vldr	s14, [sp, #76]
  30cb38: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  30cb3c: eec7 7a27    	vdiv.f32	s15, s14, s15
  30cb40: ab14         	add	r3, sp, #0x50
  30cb42: 4618         	mov	r0, r3
  30cb44: ee16 1a90    	vmov	r1, s13
  30cb48: ee17 2a90    	vmov	r2, s15
  30cb4c: f286 f8d0    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2861a0
  30cb50: f8df 36d4    	ldr.w	r3, [pc, #0x6d4]        @ 0x30d228 <CreditsLayer::init()+0x748>
  30cb54: 447b         	add	r3, pc
  30cb56: 4618         	mov	r0, r3
  30cb58: f2cb fbd4    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2cb7a8
  30cb5c: 4602         	mov	r2, r0
  30cb5e: 9b03         	ldr	r3, [sp, #0xc]
  30cb60: f8c3 2128    	str.w	r2, [r3, #0x128]
  30cb64: 9b03         	ldr	r3, [sp, #0xc]
  30cb66: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  30cb6a: 681b         	ldr	r3, [r3]
  30cb6c: 334c         	adds	r3, #0x4c
  30cb6e: 681d         	ldr	r5, [r3]
  30cb70: 9b03         	ldr	r3, [sp, #0xc]
  30cb72: f8d3 6128    	ldr.w	r6, [r3, #0x128]
  30cb76: ab26         	add	r3, sp, #0x98
  30cb78: 4618         	mov	r0, r3
  30cb7a: f04f 0100    	mov.w	r1, #0x0
  30cb7e: f04f 0200    	mov.w	r2, #0x0
  30cb82: f2c4 22e6    	movt	r2, #0x42e6
  30cb86: f286 f8b3    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x286166
  30cb8a: a92a         	add	r1, sp, #0xa8
  30cb8c: aa14         	add	r2, sp, #0x50
  30cb8e: ab26         	add	r3, sp, #0x98
  30cb90: 4608         	mov	r0, r1
  30cb92: 4611         	mov	r1, r2
  30cb94: 461a         	mov	r2, r3
  30cb96: f7ff f855    	bl	0x30bc44 <std::_Rb_tree_const_iterator<cocos2d::CCObject*>::operator*() const+0x178> @ imm = #-0xf56
  30cb9a: ab2a         	add	r3, sp, #0xa8
  30cb9c: 4630         	mov	r0, r6
  30cb9e: 4619         	mov	r1, r3
  30cba0: 47a8         	blx	r5
  30cba2: f8df 3688    	ldr.w	r3, [pc, #0x688]        @ 0x30d22c <CreditsLayer::init()+0x74c>
  30cba6: 447b         	add	r3, pc
  30cba8: 4618         	mov	r0, r3
  30cbaa: f2cb faeb    	bl	0x5d8184 <cocos2d::CCSprite::create(char const*)> @ imm = #0x2cb5d6
  30cbae: 4602         	mov	r2, r0
  30cbb0: 9b03         	ldr	r3, [sp, #0xc]
  30cbb2: f8c3 212c    	str.w	r2, [r3, #0x12c]
  30cbb6: 9b03         	ldr	r3, [sp, #0xc]
  30cbb8: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  30cbbc: 681b         	ldr	r3, [r3]
  30cbbe: 334c         	adds	r3, #0x4c
  30cbc0: 681d         	ldr	r5, [r3]
  30cbc2: 9b03         	ldr	r3, [sp, #0xc]
  30cbc4: f8d3 612c    	ldr.w	r6, [r3, #0x12c]
  30cbc8: ab26         	add	r3, sp, #0x98
  30cbca: 4618         	mov	r0, r3
  30cbcc: f04f 0100    	mov.w	r1, #0x0
  30cbd0: f2cc 2148    	movt	r1, #0xc248
  30cbd4: f04f 0200    	mov.w	r2, #0x0
  30cbd8: f2cc 2234    	movt	r2, #0xc234
  30cbdc: f286 f888    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x286110
  30cbe0: a92a         	add	r1, sp, #0xa8
  30cbe2: aa14         	add	r2, sp, #0x50
  30cbe4: ab26         	add	r3, sp, #0x98
  30cbe6: 4608         	mov	r0, r1
  30cbe8: 4611         	mov	r1, r2
  30cbea: 461a         	mov	r2, r3
  30cbec: f7ff f82a    	bl	0x30bc44 <std::_Rb_tree_const_iterator<cocos2d::CCObject*>::operator*() const+0x178> @ imm = #-0xfac
  30cbf0: ab2a         	add	r3, sp, #0xa8
  30cbf2: 4630         	mov	r0, r6
  30cbf4: 4619         	mov	r1, r3
  30cbf6: 47a8         	blx	r5
  30cbf8: f8df 3634    	ldr.w	r3, [pc, #0x634]        @ 0x30d230 <CreditsLayer::init()+0x750>
  30cbfc: 447b         	add	r3, pc
  30cbfe: 4618         	mov	r0, r3
  30cc00: f2cb fac0    	bl	0x5d8184 <cocos2d::CCSprite::create(char const*)> @ imm = #0x2cb580
  30cc04: 4602         	mov	r2, r0
  30cc06: 9b03         	ldr	r3, [sp, #0xc]
  30cc08: f8c3 2124    	str.w	r2, [r3, #0x124]
  30cc0c: 9b03         	ldr	r3, [sp, #0xc]
  30cc0e: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  30cc12: 681b         	ldr	r3, [r3]
  30cc14: 334c         	adds	r3, #0x4c
  30cc16: 681b         	ldr	r3, [r3]
  30cc18: 9a03         	ldr	r2, [sp, #0xc]
  30cc1a: f8d2 1124    	ldr.w	r1, [r2, #0x124]
  30cc1e: aa14         	add	r2, sp, #0x50
  30cc20: 4608         	mov	r0, r1
  30cc22: 4611         	mov	r1, r2
  30cc24: 4798         	blx	r3
  30cc26: 9b03         	ldr	r3, [sp, #0xc]
  30cc28: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  30cc2c: 681b         	ldr	r3, [r3]
  30cc2e: f503 73d2    	add.w	r3, r3, #0x1a4
  30cc32: 681b         	ldr	r3, [r3]
  30cc34: 9a03         	ldr	r2, [sp, #0xc]
  30cc36: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  30cc3a: 4610         	mov	r0, r2
  30cc3c: 2123         	movs	r1, #0x23
  30cc3e: 4798         	blx	r3
  30cc40: 9b03         	ldr	r3, [sp, #0xc]
  30cc42: 681b         	ldr	r3, [r3]
  30cc44: 33c8         	adds	r3, #0xc8
  30cc46: 681b         	ldr	r3, [r3]
  30cc48: 9903         	ldr	r1, [sp, #0xc]
  30cc4a: 9a03         	ldr	r2, [sp, #0xc]
  30cc4c: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  30cc50: 4608         	mov	r0, r1
  30cc52: 4611         	mov	r1, r2
  30cc54: 4798         	blx	r3
  30cc56: 9b03         	ldr	r3, [sp, #0xc]
  30cc58: 681b         	ldr	r3, [r3]
  30cc5a: 33c8         	adds	r3, #0xc8
  30cc5c: 681b         	ldr	r3, [r3]
  30cc5e: 9903         	ldr	r1, [sp, #0xc]
  30cc60: 9a03         	ldr	r2, [sp, #0xc]
  30cc62: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  30cc66: 4608         	mov	r0, r1
  30cc68: 4611         	mov	r1, r2
  30cc6a: 4798         	blx	r3
  30cc6c: 9b03         	ldr	r3, [sp, #0xc]
  30cc6e: 681b         	ldr	r3, [r3]
  30cc70: 33c8         	adds	r3, #0xc8
  30cc72: 681b         	ldr	r3, [r3]
  30cc74: 9903         	ldr	r1, [sp, #0xc]
  30cc76: 9a03         	ldr	r2, [sp, #0xc]
  30cc78: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  30cc7c: 4608         	mov	r0, r1
  30cc7e: 4611         	mov	r1, r2
  30cc80: 4798         	blx	r3
  30cc82: 234c         	movs	r3, #0x4c
  30cc84: 9306         	str	r3, [sp, #0x18]
  30cc86: f06f 031e    	mvn	r3, #0x1e
  30cc8a: 9307         	str	r3, [sp, #0x1c]
  30cc8c: f8df 35a4    	ldr.w	r3, [pc, #0x5a4]        @ 0x30d234 <CreditsLayer::init()+0x754>
  30cc90: 447b         	add	r3, pc
  30cc92: 4618         	mov	r0, r3
  30cc94: f2cb fb36    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2cb66c
  30cc98: 4603         	mov	r3, r0
  30cc9a: 9308         	str	r3, [sp, #0x20]
  30cc9c: f8df 3598    	ldr.w	r3, [pc, #0x598]        @ 0x30d238 <CreditsLayer::init()+0x758>
  30cca0: 447b         	add	r3, pc
  30cca2: 4618         	mov	r0, r3
  30cca4: f2cb fb2e    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2cb65c
  30cca8: 4603         	mov	r3, r0
  30ccaa: 9309         	str	r3, [sp, #0x24]
  30ccac: 9a03         	ldr	r2, [sp, #0xc]
  30ccae: f8df 358c    	ldr.w	r3, [pc, #0x58c]        @ 0x30d23c <CreditsLayer::init()+0x75c>
  30ccb2: 58e3         	ldr	r3, [r4, r3]
  30ccb4: 931c         	str	r3, [sp, #0x70]
  30ccb6: 2300         	movs	r3, #0x0
  30ccb8: 931d         	str	r3, [sp, #0x74]
  30ccba: 9b1d         	ldr	r3, [sp, #0x74]
  30ccbc: 9300         	str	r3, [sp]
  30ccbe: 9b1c         	ldr	r3, [sp, #0x70]
  30ccc0: 9808         	ldr	r0, [sp, #0x20]
  30ccc2: 9909         	ldr	r1, [sp, #0x24]
  30ccc4: f2ab fb32    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2ab664
  30ccc8: 4603         	mov	r3, r0
  30ccca: 930a         	str	r3, [sp, #0x28]
  30cccc: 980a         	ldr	r0, [sp, #0x28]
  30ccce: 2100         	movs	r1, #0x0
  30ccd0: f2a8 fa34    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2a8468
  30ccd4: 4602         	mov	r2, r0
  30ccd6: 9b03         	ldr	r3, [sp, #0xc]
  30ccd8: f8c3 2110    	str.w	r2, [r3, #0x110]
  30ccdc: 9b03         	ldr	r3, [sp, #0xc]
  30ccde: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  30cce2: 4618         	mov	r0, r3
  30cce4: f28b f900    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x28b200
  30cce8: 9b03         	ldr	r3, [sp, #0xc]
  30ccea: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  30ccee: 681b         	ldr	r3, [r3]
  30ccf0: 334c         	adds	r3, #0x4c
  30ccf2: 681d         	ldr	r5, [r3]
  30ccf4: 9b03         	ldr	r3, [sp, #0xc]
  30ccf6: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  30ccfa: 461e         	mov	r6, r3
  30ccfc: ab2a         	add	r3, sp, #0xa8
  30ccfe: 4618         	mov	r0, r3
  30cd00: f04f 0100    	mov.w	r1, #0x0
  30cd04: f2c4 2160    	movt	r1, #0x4260
  30cd08: f04f 4284    	mov.w	r2, #0x42000000
  30cd0c: f285 fff0    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x285fe0
  30cd10: ab2a         	add	r3, sp, #0xa8
  30cd12: 4630         	mov	r0, r6
  30cd14: 4619         	mov	r1, r3
  30cd16: 47a8         	blx	r5
  30cd18: 9b03         	ldr	r3, [sp, #0xc]
  30cd1a: 681b         	ldr	r3, [r3]
  30cd1c: 33c8         	adds	r3, #0xc8
  30cd1e: 681b         	ldr	r3, [r3]
  30cd20: 9903         	ldr	r1, [sp, #0xc]
  30cd22: 9a03         	ldr	r2, [sp, #0xc]
  30cd24: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  30cd28: 4608         	mov	r0, r1
  30cd2a: 4611         	mov	r1, r2
  30cd2c: 4798         	blx	r3
  30cd2e: 9a03         	ldr	r2, [sp, #0xc]
  30cd30: f8df 350c    	ldr.w	r3, [pc, #0x50c]        @ 0x30d240 <CreditsLayer::init()+0x760>
  30cd34: 58e3         	ldr	r3, [r4, r3]
  30cd36: 931e         	str	r3, [sp, #0x78]
  30cd38: 2300         	movs	r3, #0x0
  30cd3a: 931f         	str	r3, [sp, #0x7c]
  30cd3c: 9b1f         	ldr	r3, [sp, #0x7c]
  30cd3e: 9300         	str	r3, [sp]
  30cd40: 9b1e         	ldr	r3, [sp, #0x78]
  30cd42: f8df 1500    	ldr.w	r1, [pc, #0x500]        @ 0x30d244 <CreditsLayer::init()+0x764>
  30cd46: 4479         	add	r1, pc
  30cd48: 4608         	mov	r0, r1
  30cd4a: f8df 14fc    	ldr.w	r1, [pc, #0x4fc]        @ 0x30d248 <CreditsLayer::init()+0x768>
  30cd4e: 4479         	add	r1, pc
  30cd50: f2ab fd48    	bl	0x5b87e4 <cocos2d::CCMenuItemImage::create(char const*, char const*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2aba90
  30cd54: 4603         	mov	r3, r0
  30cd56: 930b         	str	r3, [sp, #0x2c]
  30cd58: 980b         	ldr	r0, [sp, #0x2c]
  30cd5a: 2100         	movs	r1, #0x0
  30cd5c: f2a8 f9ee    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2a83dc
  30cd60: 4602         	mov	r2, r0
  30cd62: 9b03         	ldr	r3, [sp, #0xc]
  30cd64: f8c3 2114    	str.w	r2, [r3, #0x114]
  30cd68: 9b03         	ldr	r3, [sp, #0xc]
  30cd6a: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  30cd6e: 4618         	mov	r0, r3
  30cd70: f28b f8ba    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x28b174
  30cd74: 9b03         	ldr	r3, [sp, #0xc]
  30cd76: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  30cd7a: 681b         	ldr	r3, [r3]
  30cd7c: 334c         	adds	r3, #0x4c
  30cd7e: 681d         	ldr	r5, [r3]
  30cd80: 9b03         	ldr	r3, [sp, #0xc]
  30cd82: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  30cd86: 461e         	mov	r6, r3
  30cd88: 9b03         	ldr	r3, [sp, #0xc]
  30cd8a: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  30cd8e: 681b         	ldr	r3, [r3]
  30cd90: 3350         	adds	r3, #0x50
  30cd92: 681b         	ldr	r3, [r3]
  30cd94: 9a03         	ldr	r2, [sp, #0xc]
  30cd96: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  30cd9a: 4610         	mov	r0, r2
  30cd9c: 4798         	blx	r3
  30cd9e: 4607         	mov	r7, r0
  30cda0: 9b07         	ldr	r3, [sp, #0x1c]
  30cda2: ee07 3a10    	vmov	s14, r3
  30cda6: eef8 7ac7    	vcvt.f32.s32	s15, s14
  30cdaa: ab26         	add	r3, sp, #0x98
  30cdac: 4618         	mov	r0, r3
  30cdae: ee17 1a90    	vmov	r1, s15
  30cdb2: f04f 0200    	mov.w	r2, #0x0
  30cdb6: f2c4 02e0    	movt	r2, #0x40e0
  30cdba: f285 ff99    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x285f32
  30cdbe: aa2a         	add	r2, sp, #0xa8
  30cdc0: ab26         	add	r3, sp, #0x98
  30cdc2: 4610         	mov	r0, r2
  30cdc4: 4639         	mov	r1, r7
  30cdc6: 461a         	mov	r2, r3
  30cdc8: f7fe ff3c    	bl	0x30bc44 <std::_Rb_tree_const_iterator<cocos2d::CCObject*>::operator*() const+0x178> @ imm = #-0x1188
  30cdcc: ab2a         	add	r3, sp, #0xa8
  30cdce: 4630         	mov	r0, r6
  30cdd0: 4619         	mov	r1, r3
  30cdd2: 47a8         	blx	r5
  30cdd4: 9b03         	ldr	r3, [sp, #0xc]
  30cdd6: 681b         	ldr	r3, [r3]
  30cdd8: 33c8         	adds	r3, #0xc8
  30cdda: 681b         	ldr	r3, [r3]
  30cddc: 9903         	ldr	r1, [sp, #0xc]
  30cdde: 9a03         	ldr	r2, [sp, #0xc]
  30cde0: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  30cde4: 4608         	mov	r0, r1
  30cde6: 4611         	mov	r1, r2
  30cde8: 4798         	blx	r3
  30cdea: 9a03         	ldr	r2, [sp, #0xc]
  30cdec: f8df 345c    	ldr.w	r3, [pc, #0x45c]        @ 0x30d24c <CreditsLayer::init()+0x76c>
  30cdf0: 58e3         	ldr	r3, [r4, r3]
  30cdf2: 9320         	str	r3, [sp, #0x80]
  30cdf4: 2300         	movs	r3, #0x0
  30cdf6: 9321         	str	r3, [sp, #0x84]
  30cdf8: 9b21         	ldr	r3, [sp, #0x84]
  30cdfa: 9300         	str	r3, [sp]
  30cdfc: 9b20         	ldr	r3, [sp, #0x80]
  30cdfe: f8df 1450    	ldr.w	r1, [pc, #0x450]        @ 0x30d250 <CreditsLayer::init()+0x770>
  30ce02: 4479         	add	r1, pc
  30ce04: 4608         	mov	r0, r1
  30ce06: f8df 144c    	ldr.w	r1, [pc, #0x44c]        @ 0x30d254 <CreditsLayer::init()+0x774>
  30ce0a: 4479         	add	r1, pc
  30ce0c: f2ab fcea    	bl	0x5b87e4 <cocos2d::CCMenuItemImage::create(char const*, char const*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2ab9d4
  30ce10: 4603         	mov	r3, r0
  30ce12: 930c         	str	r3, [sp, #0x30]
  30ce14: 980c         	ldr	r0, [sp, #0x30]
  30ce16: 2100         	movs	r1, #0x0
  30ce18: f2a8 f990    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2a8320
  30ce1c: 4602         	mov	r2, r0
  30ce1e: 9b03         	ldr	r3, [sp, #0xc]
  30ce20: f8c3 2118    	str.w	r2, [r3, #0x118]
  30ce24: 9b03         	ldr	r3, [sp, #0xc]
  30ce26: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  30ce2a: 4618         	mov	r0, r3
  30ce2c: f28b f85c    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x28b0b8
  30ce30: 9b03         	ldr	r3, [sp, #0xc]
  30ce32: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  30ce36: 681b         	ldr	r3, [r3]
  30ce38: 334c         	adds	r3, #0x4c
  30ce3a: 681d         	ldr	r5, [r3]
  30ce3c: 9b03         	ldr	r3, [sp, #0xc]
  30ce3e: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  30ce42: 461e         	mov	r6, r3
  30ce44: 9b03         	ldr	r3, [sp, #0xc]
  30ce46: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  30ce4a: 681b         	ldr	r3, [r3]
  30ce4c: 3350         	adds	r3, #0x50
  30ce4e: 681b         	ldr	r3, [r3]
  30ce50: 9a03         	ldr	r2, [sp, #0xc]
  30ce52: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  30ce56: 4610         	mov	r0, r2
  30ce58: 4798         	blx	r3
  30ce5a: 4607         	mov	r7, r0
  30ce5c: 9a06         	ldr	r2, [sp, #0x18]
  30ce5e: 9b07         	ldr	r3, [sp, #0x1c]
  30ce60: 4413         	add	r3, r2
  30ce62: ee07 3a10    	vmov	s14, r3
  30ce66: eef8 7ac7    	vcvt.f32.s32	s15, s14
  30ce6a: ab26         	add	r3, sp, #0x98
  30ce6c: 4618         	mov	r0, r3
  30ce6e: ee17 1a90    	vmov	r1, s15
  30ce72: f04f 0200    	mov.w	r2, #0x0
  30ce76: f2c4 02e0    	movt	r2, #0x40e0
  30ce7a: f285 ff39    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x285e72
  30ce7e: aa2a         	add	r2, sp, #0xa8
  30ce80: ab26         	add	r3, sp, #0x98
  30ce82: 4610         	mov	r0, r2
  30ce84: 4639         	mov	r1, r7
  30ce86: 461a         	mov	r2, r3
  30ce88: f7fe fedc    	bl	0x30bc44 <std::_Rb_tree_const_iterator<cocos2d::CCObject*>::operator*() const+0x178> @ imm = #-0x1248
  30ce8c: ab2a         	add	r3, sp, #0xa8
  30ce8e: 4630         	mov	r0, r6
  30ce90: 4619         	mov	r1, r3
  30ce92: 47a8         	blx	r5
  30ce94: 9b03         	ldr	r3, [sp, #0xc]
  30ce96: 681b         	ldr	r3, [r3]
  30ce98: 33c8         	adds	r3, #0xc8
  30ce9a: 681b         	ldr	r3, [r3]
  30ce9c: 9903         	ldr	r1, [sp, #0xc]
  30ce9e: 9a03         	ldr	r2, [sp, #0xc]
  30cea0: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  30cea4: 4608         	mov	r0, r1
  30cea6: 4611         	mov	r1, r2
  30cea8: 4798         	blx	r3
  30ceaa: 9a03         	ldr	r2, [sp, #0xc]
  30ceac: 4bea         	ldr	r3, [pc, #0x3a8]        @ 0x30d258 <CreditsLayer::init()+0x778>
  30ceae: 58e3         	ldr	r3, [r4, r3]
  30ceb0: 9322         	str	r3, [sp, #0x88]
  30ceb2: 2300         	movs	r3, #0x0
  30ceb4: 9323         	str	r3, [sp, #0x8c]
  30ceb6: 9b23         	ldr	r3, [sp, #0x8c]
  30ceb8: 9300         	str	r3, [sp]
  30ceba: 9b22         	ldr	r3, [sp, #0x88]
  30cebc: 49e7         	ldr	r1, [pc, #0x39c]        @ 0x30d25c <CreditsLayer::init()+0x77c>
  30cebe: 4479         	add	r1, pc
  30cec0: 4608         	mov	r0, r1
  30cec2: 49e7         	ldr	r1, [pc, #0x39c]        @ 0x30d260 <CreditsLayer::init()+0x780>
  30cec4: 4479         	add	r1, pc
  30cec6: f2ab fc8d    	bl	0x5b87e4 <cocos2d::CCMenuItemImage::create(char const*, char const*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2ab91a
  30ceca: 4603         	mov	r3, r0
  30cecc: 930d         	str	r3, [sp, #0x34]
  30cece: 980d         	ldr	r0, [sp, #0x34]
  30ced0: 2100         	movs	r1, #0x0
  30ced2: f2a8 f933    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2a8266
  30ced6: 4602         	mov	r2, r0
  30ced8: 9b03         	ldr	r3, [sp, #0xc]
  30ceda: f8c3 211c    	str.w	r2, [r3, #0x11c]
  30cede: 9b03         	ldr	r3, [sp, #0xc]
  30cee0: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  30cee4: 4618         	mov	r0, r3
  30cee6: f28a ffff    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x28affe
  30ceea: 9b03         	ldr	r3, [sp, #0xc]
  30ceec: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  30cef0: 681b         	ldr	r3, [r3]
  30cef2: 334c         	adds	r3, #0x4c
  30cef4: 681d         	ldr	r5, [r3]
  30cef6: 9b03         	ldr	r3, [sp, #0xc]
  30cef8: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  30cefc: 461e         	mov	r6, r3
  30cefe: 9b03         	ldr	r3, [sp, #0xc]
  30cf00: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  30cf04: 681b         	ldr	r3, [r3]
  30cf06: 3350         	adds	r3, #0x50
  30cf08: 681b         	ldr	r3, [r3]
  30cf0a: 9a03         	ldr	r2, [sp, #0xc]
  30cf0c: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  30cf10: 4610         	mov	r0, r2
  30cf12: 4798         	blx	r3
  30cf14: 4607         	mov	r7, r0
  30cf16: 9b06         	ldr	r3, [sp, #0x18]
  30cf18: 005a         	lsls	r2, r3, #0x1
  30cf1a: 9b07         	ldr	r3, [sp, #0x1c]
  30cf1c: 4413         	add	r3, r2
  30cf1e: ee07 3a10    	vmov	s14, r3
  30cf22: eef8 7ac7    	vcvt.f32.s32	s15, s14
  30cf26: ab26         	add	r3, sp, #0x98
  30cf28: 4618         	mov	r0, r3
  30cf2a: ee17 1a90    	vmov	r1, s15
  30cf2e: f04f 0200    	mov.w	r2, #0x0
  30cf32: f2c4 02e0    	movt	r2, #0x40e0
  30cf36: f285 fedb    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x285db6
  30cf3a: aa2a         	add	r2, sp, #0xa8
  30cf3c: ab26         	add	r3, sp, #0x98
  30cf3e: 4610         	mov	r0, r2
  30cf40: 4639         	mov	r1, r7
  30cf42: 461a         	mov	r2, r3
  30cf44: f7fe fe7e    	bl	0x30bc44 <std::_Rb_tree_const_iterator<cocos2d::CCObject*>::operator*() const+0x178> @ imm = #-0x1304
  30cf48: ab2a         	add	r3, sp, #0xa8
  30cf4a: 4630         	mov	r0, r6
  30cf4c: 4619         	mov	r1, r3
  30cf4e: 47a8         	blx	r5
  30cf50: 9b03         	ldr	r3, [sp, #0xc]
  30cf52: 681b         	ldr	r3, [r3]
  30cf54: 33c8         	adds	r3, #0xc8
  30cf56: 681b         	ldr	r3, [r3]
  30cf58: 9903         	ldr	r1, [sp, #0xc]
  30cf5a: 9a03         	ldr	r2, [sp, #0xc]
  30cf5c: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  30cf60: 4608         	mov	r0, r1
  30cf62: 4611         	mov	r1, r2
  30cf64: 4798         	blx	r3
  30cf66: 9a03         	ldr	r2, [sp, #0xc]
  30cf68: 4bbe         	ldr	r3, [pc, #0x2f8]        @ 0x30d264 <CreditsLayer::init()+0x784>
  30cf6a: 58e3         	ldr	r3, [r4, r3]
  30cf6c: 9324         	str	r3, [sp, #0x90]
  30cf6e: 2300         	movs	r3, #0x0
  30cf70: 9325         	str	r3, [sp, #0x94]
  30cf72: 9b25         	ldr	r3, [sp, #0x94]
  30cf74: 9300         	str	r3, [sp]
  30cf76: 9b24         	ldr	r3, [sp, #0x90]
  30cf78: 49bb         	ldr	r1, [pc, #0x2ec]        @ 0x30d268 <CreditsLayer::init()+0x788>
  30cf7a: 4479         	add	r1, pc
  30cf7c: 4608         	mov	r0, r1
  30cf7e: 49bb         	ldr	r1, [pc, #0x2ec]        @ 0x30d26c <CreditsLayer::init()+0x78c>
  30cf80: 4479         	add	r1, pc
  30cf82: f2ab fc2f    	bl	0x5b87e4 <cocos2d::CCMenuItemImage::create(char const*, char const*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2ab85e
  30cf86: 4603         	mov	r3, r0
  30cf88: 930e         	str	r3, [sp, #0x38]
  30cf8a: 980e         	ldr	r0, [sp, #0x38]
  30cf8c: 2100         	movs	r1, #0x0
  30cf8e: f2a8 f8d5    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2a81aa
  30cf92: 4602         	mov	r2, r0
  30cf94: 9b03         	ldr	r3, [sp, #0xc]
  30cf96: f8c3 2120    	str.w	r2, [r3, #0x120]
  30cf9a: 9b03         	ldr	r3, [sp, #0xc]
  30cf9c: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  30cfa0: 4618         	mov	r0, r3
  30cfa2: f28a ffa1    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x28af42
  30cfa6: 9b03         	ldr	r3, [sp, #0xc]
  30cfa8: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  30cfac: 681b         	ldr	r3, [r3]
  30cfae: 334c         	adds	r3, #0x4c
  30cfb0: 681c         	ldr	r4, [r3]
  30cfb2: 9b03         	ldr	r3, [sp, #0xc]
  30cfb4: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  30cfb8: 461d         	mov	r5, r3
  30cfba: 9b03         	ldr	r3, [sp, #0xc]
  30cfbc: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  30cfc0: 681b         	ldr	r3, [r3]
  30cfc2: 3350         	adds	r3, #0x50
  30cfc4: 681b         	ldr	r3, [r3]
  30cfc6: 9a03         	ldr	r2, [sp, #0xc]
  30cfc8: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  30cfcc: 4610         	mov	r0, r2
  30cfce: 4798         	blx	r3
  30cfd0: 4606         	mov	r6, r0
  30cfd2: 9a06         	ldr	r2, [sp, #0x18]
  30cfd4: 4613         	mov	r3, r2
  30cfd6: 005b         	lsls	r3, r3, #0x1
  30cfd8: 441a         	add	r2, r3
  30cfda: 9b07         	ldr	r3, [sp, #0x1c]
  30cfdc: 4413         	add	r3, r2
  30cfde: ee07 3a10    	vmov	s14, r3
  30cfe2: eef8 7ac7    	vcvt.f32.s32	s15, s14
  30cfe6: ab26         	add	r3, sp, #0x98
  30cfe8: 4618         	mov	r0, r3
  30cfea: ee17 1a90    	vmov	r1, s15
  30cfee: f04f 0200    	mov.w	r2, #0x0
  30cff2: f2c4 02e0    	movt	r2, #0x40e0
  30cff6: f285 fe7b    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x285cf6
  30cffa: aa2a         	add	r2, sp, #0xa8
  30cffc: ab26         	add	r3, sp, #0x98
  30cffe: 4610         	mov	r0, r2
  30d000: 4631         	mov	r1, r6
  30d002: 461a         	mov	r2, r3
  30d004: f7fe fe1e    	bl	0x30bc44 <std::_Rb_tree_const_iterator<cocos2d::CCObject*>::operator*() const+0x178> @ imm = #-0x13c4
  30d008: ab2a         	add	r3, sp, #0xa8
  30d00a: 4628         	mov	r0, r5
  30d00c: 4619         	mov	r1, r3
  30d00e: 47a0         	blx	r4
  30d010: 9b03         	ldr	r3, [sp, #0xc]
  30d012: 681b         	ldr	r3, [r3]
  30d014: 33c8         	adds	r3, #0xc8
  30d016: 681b         	ldr	r3, [r3]
  30d018: 9903         	ldr	r1, [sp, #0xc]
  30d01a: 9a03         	ldr	r2, [sp, #0xc]
  30d01c: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  30d020: 4608         	mov	r0, r1
  30d022: 4611         	mov	r1, r2
  30d024: 4798         	blx	r3
  30d026: f64c 43cd    	movw	r3, #0xcccd
  30d02a: f6c3 730c    	movt	r3, #0x3f0c
  30d02e: 930f         	str	r3, [sp, #0x3c]
  30d030: f04f 0300    	mov.w	r3, #0x0
  30d034: f2c4 13c0    	movt	r3, #0x41c0
  30d038: 9310         	str	r3, [sp, #0x40]
  30d03a: f04f 4341    	mov.w	r3, #0xc1000000
  30d03e: 9311         	str	r3, [sp, #0x44]
  30d040: 4b8b         	ldr	r3, [pc, #0x22c]        @ 0x30d270 <CreditsLayer::init()+0x790>
  30d042: 447b         	add	r3, pc
  30d044: 4618         	mov	r0, r3
  30d046: f0a8 f15b    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4a82b6
  30d04a: 4603         	mov	r3, r0
  30d04c: 2220         	movs	r2, #0x20
  30d04e: 9200         	str	r2, [sp]
  30d050: 4a88         	ldr	r2, [pc, #0x220]        @ 0x30d274 <CreditsLayer::init()+0x794>
  30d052: 447a         	add	r2, pc
  30d054: 4610         	mov	r0, r2
  30d056: 4619         	mov	r1, r3
  30d058: 2220         	movs	r2, #0x20
  30d05a: 2320         	movs	r3, #0x20
  30d05c: f298 f98c    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x298318
  30d060: 4602         	mov	r2, r0
  30d062: 9b03         	ldr	r3, [sp, #0xc]
  30d064: f8c3 210c    	str.w	r2, [r3, #0x10c]
  30d068: 9b03         	ldr	r3, [sp, #0xc]
  30d06a: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  30d06e: 4618         	mov	r0, r3
  30d070: f28a ff3a    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x28ae74
  30d074: 9b03         	ldr	r3, [sp, #0xc]
  30d076: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  30d07a: 681b         	ldr	r3, [r3]
  30d07c: 334c         	adds	r3, #0x4c
  30d07e: 681c         	ldr	r4, [r3]
  30d080: 9b03         	ldr	r3, [sp, #0xc]
  30d082: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  30d086: 461d         	mov	r5, r3
  30d088: 9b03         	ldr	r3, [sp, #0xc]
  30d08a: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  30d08e: 681b         	ldr	r3, [r3]
  30d090: 3350         	adds	r3, #0x50
  30d092: 681b         	ldr	r3, [r3]
  30d094: 9a03         	ldr	r2, [sp, #0xc]
  30d096: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  30d09a: 4610         	mov	r0, r2
  30d09c: 4798         	blx	r3
  30d09e: 4603         	mov	r3, r0
  30d0a0: 681e         	ldr	r6, [r3]
  30d0a2: 9b03         	ldr	r3, [sp, #0xc]
  30d0a4: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  30d0a8: 681b         	ldr	r3, [r3]
  30d0aa: 3350         	adds	r3, #0x50
  30d0ac: 681b         	ldr	r3, [r3]
  30d0ae: 9a03         	ldr	r2, [sp, #0xc]
  30d0b0: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  30d0b4: 4610         	mov	r0, r2
  30d0b6: 4798         	blx	r3
  30d0b8: 4603         	mov	r3, r0
  30d0ba: 685b         	ldr	r3, [r3, #0x4]
  30d0bc: aa16         	add	r2, sp, #0x58
  30d0be: 4610         	mov	r0, r2
  30d0c0: 4631         	mov	r1, r6
  30d0c2: 461a         	mov	r2, r3
  30d0c4: f285 fe14    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x285c28
  30d0c8: eddd 7a11    	vldr	s15, [sp, #68]
  30d0cc: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  30d0d0: ab26         	add	r3, sp, #0x98
  30d0d2: 4618         	mov	r0, r3
  30d0d4: ed9f 0b50    	vldr	d0, [pc, #320]          @ 0x30d218 <CreditsLayer::init()+0x738>
  30d0d8: eeb0 1b47    	vmov.f64	d1, d7
  30d0dc: f7fe fdc2    	bl	0x30bc64 <std::_Rb_tree_const_iterator<cocos2d::CCObject*>::operator*() const+0x198> @ imm = #-0x147c
  30d0e0: ed9d 8b26    	vldr	d8, [sp, #152]
  30d0e4: 9b03         	ldr	r3, [sp, #0xc]
  30d0e6: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  30d0ea: 681b         	ldr	r3, [r3]
  30d0ec: f503 73fe    	add.w	r3, r3, #0x1fc
  30d0f0: 681b         	ldr	r3, [r3]
  30d0f2: 9a03         	ldr	r2, [sp, #0xc]
  30d0f4: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  30d0f8: 4610         	mov	r0, r2
  30d0fa: 4798         	blx	r3
  30d0fc: 4606         	mov	r6, r0
  30d0fe: ab04         	add	r3, sp, #0x10
  30d100: 4618         	mov	r0, r3
  30d102: f07d f177    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x47d2ee
  30d106: aa05         	add	r2, sp, #0x14
  30d108: ab04         	add	r3, sp, #0x10
  30d10a: 4610         	mov	r0, r2
  30d10c: 4631         	mov	r1, r6
  30d10e: 461a         	mov	r2, r3
  30d110: f0a9 f4a6    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4a994c
  30d114: ab05         	add	r3, sp, #0x14
  30d116: 4618         	mov	r0, r3
  30d118: f0a7 f7a0    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x4a7f40
  30d11c: 4603         	mov	r3, r0
  30d11e: ee07 3a90    	vmov	s15, r3
  30d122: eeb8 7a67    	vcvt.f32.u32	s14, s15
  30d126: eddd 7a10    	vldr	s15, [sp, #64]
  30d12a: ee27 7a27    	vmul.f32	s14, s14, s15
  30d12e: eddd 7a0f    	vldr	s15, [sp, #60]
  30d132: ee27 7a27    	vmul.f32	s14, s14, s15
  30d136: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  30d13a: eec7 7a27    	vdiv.f32	s15, s14, s15
  30d13e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  30d142: ee38 7b47    	vsub.f64	d7, d8, d7
  30d146: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  30d14a: eddd 7a11    	vldr	s15, [sp, #68]
  30d14e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  30d152: ab2a         	add	r3, sp, #0xa8
  30d154: 4618         	mov	r0, r3
  30d156: ed9f 0b30    	vldr	d0, [pc, #192]          @ 0x30d218 <CreditsLayer::init()+0x738>
  30d15a: eeb0 1b47    	vmov.f64	d1, d7
  30d15e: f7fe fd81    	bl	0x30bc64 <std::_Rb_tree_const_iterator<cocos2d::CCObject*>::operator*() const+0x198> @ imm = #-0x14fe
  30d162: ed9d 7b2c    	vldr	d7, [sp, #176]
  30d166: eef7 7bc7    	vcvt.f32.f64	s15, d7
  30d16a: ab18         	add	r3, sp, #0x60
  30d16c: 4618         	mov	r0, r3
  30d16e: ee18 1a10    	vmov	r1, s16
  30d172: ee17 2a90    	vmov	r2, s15
  30d176: f285 fdbb    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x285b76
  30d17a: a91a         	add	r1, sp, #0x68
  30d17c: aa16         	add	r2, sp, #0x58
  30d17e: ab18         	add	r3, sp, #0x60
  30d180: 4608         	mov	r0, r1
  30d182: 4611         	mov	r1, r2
  30d184: 461a         	mov	r2, r3
  30d186: f7fe fd5d    	bl	0x30bc44 <std::_Rb_tree_const_iterator<cocos2d::CCObject*>::operator*() const+0x178> @ imm = #-0x1546
  30d18a: ab1a         	add	r3, sp, #0x68
  30d18c: 4628         	mov	r0, r5
  30d18e: 4619         	mov	r1, r3
  30d190: 47a0         	blx	r4
  30d192: ab05         	add	r3, sp, #0x14
  30d194: 4618         	mov	r0, r3
  30d196: f0a8 f3bd    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a877a
  30d19a: ab04         	add	r3, sp, #0x10
  30d19c: 4618         	mov	r0, r3
  30d19e: f07d f12d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x47d25a
  30d1a2: 9b03         	ldr	r3, [sp, #0xc]
  30d1a4: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  30d1a8: 681b         	ldr	r3, [r3]
  30d1aa: 3340         	adds	r3, #0x40
  30d1ac: 681b         	ldr	r3, [r3]
  30d1ae: 9a03         	ldr	r2, [sp, #0xc]
  30d1b0: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  30d1b4: 4610         	mov	r0, r2
  30d1b6: 990f         	ldr	r1, [sp, #0x3c]
  30d1b8: 4798         	blx	r3
  30d1ba: 9b03         	ldr	r3, [sp, #0xc]
  30d1bc: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  30d1c0: eddd 7a10    	vldr	s15, [sp, #64]
  30d1c4: eefd 7ae7    	vcvt.s32.f32	s15, s15
  30d1c8: ee17 2a90    	vmov	r2, s15
  30d1cc: 4618         	mov	r0, r3
  30d1ce: 4611         	mov	r1, r2
  30d1d0: f298 fdd8    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x298bb0
  30d1d4: 9b03         	ldr	r3, [sp, #0xc]
  30d1d6: 681b         	ldr	r3, [r3]
  30d1d8: 33c8         	adds	r3, #0xc8
  30d1da: 681b         	ldr	r3, [r3]
  30d1dc: 9903         	ldr	r1, [sp, #0xc]
  30d1de: 9a03         	ldr	r2, [sp, #0xc]
  30d1e0: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  30d1e4: 4608         	mov	r0, r1
  30d1e6: 4611         	mov	r1, r2
  30d1e8: 4798         	blx	r3
  30d1ea: f11e ff5d    	bl	0x42c0a8 <ApplicationInterface::removeAdBanner()> @ imm = #0x11eeba
  30d1ee: 2301         	movs	r3, #0x1
  30d1f0: e00a         	b	0x30d208 <CreditsLayer::init()+0x728> @ imm = #0x14
  30d1f2: ab05         	add	r3, sp, #0x14
  30d1f4: 4618         	mov	r0, r3
  30d1f6: f0a8 f38d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a871a
  30d1fa: e7ff         	b	0x30d1fc <CreditsLayer::init()+0x71c> @ imm = #-0x2
  30d1fc: ab04         	add	r3, sp, #0x10
  30d1fe: 4618         	mov	r0, r3
  30d200: f07d f0fc    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x47d1f8
  30d204: f07a f752    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x47aea4
  30d208: 4618         	mov	r0, r3
  30d20a: b02f         	add	sp, #0xbc
  30d20c: ecbd 8b02    	vpop	{d8}
  30d210: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x30d211); words below are literal-pool data ---
  30d212: bf00         	nop
  30d214: f3af 8000    	nop.w
  30d220: 5f1a         	ldrsh	r2, [r3, r4]
  30d222: 0062         	lsls	r2, r4, #0x1
  30d224: d724         	bvc	0x30d270 <CreditsLayer::init()+0x790> @ imm = #0x48
  30d226: ffff 9510    	vsli.32	d25, d0, #0x1f
  30d22a: 004b         	lsls	r3, r1, #0x1
  30d22c: 94ce         	str	r4, [sp, #0x338]
  30d22e: 004b         	lsls	r3, r1, #0x1
  30d230: 9488         	str	r4, [sp, #0x220]
  30d232: 004b         	lsls	r3, r1, #0x1
  30d234: 9408         	str	r4, [sp, #0x20]
  30d236: 004b         	lsls	r3, r1, #0x1
  30d238: 93f8         	str	r3, [sp, #0x3e0]
  30d23a: 004b         	lsls	r3, r1, #0x1
  30d23c: d994         	bls	0x30d168 <CreditsLayer::init()+0x688> @ imm = #-0xd8
  30d23e: ffff d998    	<unknown>
  30d242: ffff 935e    	<unknown>
  30d246: 004b         	lsls	r3, r1, #0x1
  30d248: 9356         	str	r3, [sp, #0x158]
  30d24a: 004b         	lsls	r3, r1, #0x1
  30d24c: d99c         	bls	0x30d188 <CreditsLayer::init()+0x6a8> @ imm = #-0xc8
  30d24e: ffff 92a2    	<unknown>
  30d252: 004b         	lsls	r3, r1, #0x1
  30d254: 929a         	str	r2, [sp, #0x268]
  30d256: 004b         	lsls	r3, r1, #0x1
  30d258: d9a0         	bls	0x30d19c <CreditsLayer::init()+0x6bc> @ imm = #-0xc0
  30d25a: ffff 91e6    	<unknown>
  30d25e: 004b         	lsls	r3, r1, #0x1
  30d260: 91e0         	str	r1, [sp, #0x380]
  30d262: 004b         	lsls	r3, r1, #0x1
  30d264: d9a4         	bls	0x30d1b0 <CreditsLayer::init()+0x6d0> @ imm = #-0xb8
  30d266: ffff 912a    	<unknown>
  30d26a: 004b         	lsls	r3, r1, #0x1
  30d26c: 9124         	str	r1, [sp, #0x90]
  30d26e: 004b         	lsls	r3, r1, #0x1
  30d270: 30c6         	adds	r0, #0xc6
  30d272: 0063         	lsls	r3, r4, #0x1
  30d274: 9062         	str	r0, [sp, #0x188]
  30d276: 004b         	lsls	r3, r1, #0x1

// ==== CreditsLayer::~CreditsLayer
//      file offset 0x30d278 (= ELF address; Ghidra 0x31d278), 172 bytes, Thumb-2
  30d278: b500         	push	{lr}
  30d27a: b083         	sub	sp, #0xc
  30d27c: 9001         	str	r0, [sp, #0x4]
  30d27e: 4b27         	ldr	r3, [pc, #0x9c]         @ 0x30d31c <CreditsLayer::~CreditsLayer()+0xa4>
  30d280: 447b         	add	r3, pc
  30d282: 9a01         	ldr	r2, [sp, #0x4]
  30d284: 4926         	ldr	r1, [pc, #0x98]         @ 0x30d320 <CreditsLayer::~CreditsLayer()+0xa8>
  30d286: 5859         	ldr	r1, [r3, r1]
  30d288: 3108         	adds	r1, #0x8
  30d28a: 6011         	str	r1, [r2]
  30d28c: 9a01         	ldr	r2, [sp, #0x4]
  30d28e: 4924         	ldr	r1, [pc, #0x90]         @ 0x30d320 <CreditsLayer::~CreditsLayer()+0xa8>
  30d290: 5859         	ldr	r1, [r3, r1]
  30d292: f501 7104    	add.w	r1, r1, #0x210
  30d296: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  30d29a: 9a01         	ldr	r2, [sp, #0x4]
  30d29c: 4920         	ldr	r1, [pc, #0x80]         @ 0x30d320 <CreditsLayer::~CreditsLayer()+0xa8>
  30d29e: 5859         	ldr	r1, [r3, r1]
  30d2a0: f501 7110    	add.w	r1, r1, #0x240
  30d2a4: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  30d2a8: 9a01         	ldr	r2, [sp, #0x4]
  30d2aa: 491d         	ldr	r1, [pc, #0x74]         @ 0x30d320 <CreditsLayer::~CreditsLayer()+0xa8>
  30d2ac: 585b         	ldr	r3, [r3, r1]
  30d2ae: f503 7313    	add.w	r3, r3, #0x24c
  30d2b2: f8c2 30ec    	str.w	r3, [r2, #0xec]
  30d2b6: 9b01         	ldr	r3, [sp, #0x4]
  30d2b8: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  30d2bc: 4618         	mov	r0, r3
  30d2be: f28a fdfb    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x28abf6
  30d2c2: 9b01         	ldr	r3, [sp, #0x4]
  30d2c4: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  30d2c8: 4618         	mov	r0, r3
  30d2ca: f28a fdf5    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x28abea
  30d2ce: 9b01         	ldr	r3, [sp, #0x4]
  30d2d0: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  30d2d4: 4618         	mov	r0, r3
  30d2d6: f28a fdef    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x28abde
  30d2da: 9b01         	ldr	r3, [sp, #0x4]
  30d2dc: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  30d2e0: 4618         	mov	r0, r3
  30d2e2: f28a fde9    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x28abd2
  30d2e6: 9b01         	ldr	r3, [sp, #0x4]
  30d2e8: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  30d2ec: 4618         	mov	r0, r3
  30d2ee: f28a fde3    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x28abc6
  30d2f2: 9b01         	ldr	r3, [sp, #0x4]
  30d2f4: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  30d2f8: 4618         	mov	r0, r3
  30d2fa: f28a fddd    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x28abba
  30d2fe: 9b01         	ldr	r3, [sp, #0x4]
  30d300: 4618         	mov	r0, r3
  30d302: f29f ff23    	bl	0x5ad14c <cocos2d::CCLayer::~CCLayer()> @ imm = #0x29fe46
  30d306: 2300         	movs	r3, #0x0
  30d308: 2b00         	cmp	r3, #0x0
  30d30a: d002         	beq	0x30d312 <CreditsLayer::~CreditsLayer()+0x9a> @ imm = #0x4
  30d30c: 9801         	ldr	r0, [sp, #0x4]
  30d30e: f07a f6c9    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x47ad92
  30d312: 9b01         	ldr	r3, [sp, #0x4]
  30d314: 4618         	mov	r0, r3
  30d316: b003         	add	sp, #0xc
  30d318: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x30d31b); words below are literal-pool data ---
  30d31c: 5788         	ldrsb	r0, [r1, r6]
  30d31e: 0062         	lsls	r2, r4, #0x1
  30d320: d990         	bls	0x30d244 <CreditsLayer::init()+0x764> @ imm = #-0xe0
  30d322: ffff f1a0    	<unknown>

// ==== CreditsLayer::~CreditsLayer
//      file offset 0x30d324 (= ELF address; Ghidra 0x31d324), 8 bytes, Thumb-2
  30d324: f1a0 00e4    	sub.w	r0, r0, #0xe4
  30d328: f7ff bfa6    	b.w	0x30d278 <CreditsLayer::~CreditsLayer()> @ imm = #-0xb4

// ==== CreditsLayer::~CreditsLayer
//      file offset 0x30d32c (= ELF address; Ghidra 0x31d32c), 28 bytes, Thumb-2
  30d32c: b500         	push	{lr}
  30d32e: b083         	sub	sp, #0xc
  30d330: 9001         	str	r0, [sp, #0x4]
  30d332: 9801         	ldr	r0, [sp, #0x4]
  30d334: f7ff ffa0    	bl	0x30d278 <CreditsLayer::~CreditsLayer()> @ imm = #-0xc0
  30d338: 9801         	ldr	r0, [sp, #0x4]
  30d33a: f07a f6b3    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x47ad66
  30d33e: 9b01         	ldr	r3, [sp, #0x4]
  30d340: 4618         	mov	r0, r3
  30d342: b003         	add	sp, #0xc
  30d344: f85d fb04    	ldr	pc, [sp], #4

// ==== CreditsLayer::~CreditsLayer
//      file offset 0x30d348 (= ELF address; Ghidra 0x31d348), 8 bytes, Thumb-2
  30d348: f1a0 00e4    	sub.w	r0, r0, #0xe4
  30d34c: f7ff bfee    	b.w	0x30d32c <CreditsLayer::~CreditsLayer()> @ imm = #-0x24

// ==== CreditsLayer::onDA
//      file offset 0x30d350 (= ELF address; Ghidra 0x31d350), 44 bytes, Thumb-2
  30d350: b500         	push	{lr}
  30d352: b083         	sub	sp, #0xc
  30d354: 9001         	str	r0, [sp, #0x4]
  30d356: 9100         	str	r1, [sp]
  30d358: 4a06         	ldr	r2, [pc, #0x18]         @ 0x30d374 <CreditsLayer::onDA(cocos2d::CCObject*)+0x24>
  30d35a: 447a         	add	r2, pc
  30d35c: 4b06         	ldr	r3, [pc, #0x18]         @ 0x30d378 <CreditsLayer::onDA(cocos2d::CCObject*)+0x28>
  30d35e: 58d3         	ldr	r3, [r2, r3]
  30d360: 681b         	ldr	r3, [r3]
  30d362: 4618         	mov	r0, r3
  30d364: 210d         	movs	r1, #0xd
  30d366: f0ea fd2b    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xeaa56
  30d36a: f11f fa31    	bl	0x42c7d0 <ApplicationInterface::openDeveloperLink()> @ imm = #0x11f462
  30d36e: b003         	add	sp, #0xc
  30d370: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x30d373); words below are literal-pool data ---
  30d374: 56ae         	ldrsb	r6, [r5, r2]
  30d376: 0062         	lsls	r2, r4, #0x1
  30d378: d730         	bvc	0x30d3dc <CreditsLayer::onPK(cocos2d::CCObject*)+0x8> @ imm = #0x60
  30d37a: ffff b500    	<unknown>

// ==== CreditsLayer::onB
//      file offset 0x30d37c (= ELF address; Ghidra 0x31d37c), 44 bytes, Thumb-2
  30d37c: b500         	push	{lr}
  30d37e: b083         	sub	sp, #0xc
  30d380: 9001         	str	r0, [sp, #0x4]
  30d382: 9100         	str	r1, [sp]
  30d384: 4a06         	ldr	r2, [pc, #0x18]         @ 0x30d3a0 <CreditsLayer::onB(cocos2d::CCObject*)+0x24>
  30d386: 447a         	add	r2, pc
  30d388: 4b06         	ldr	r3, [pc, #0x18]         @ 0x30d3a4 <CreditsLayer::onB(cocos2d::CCObject*)+0x28>
  30d38a: 58d3         	ldr	r3, [r2, r3]
  30d38c: 681b         	ldr	r3, [r3]
  30d38e: 4618         	mov	r0, r3
  30d390: 210d         	movs	r1, #0xd
  30d392: f0ea fd15    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xeaa2a
  30d396: f11f fa1b    	bl	0x42c7d0 <ApplicationInterface::openDeveloperLink()> @ imm = #0x11f436
  30d39a: b003         	add	sp, #0xc
  30d39c: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x30d39f); words below are literal-pool data ---
  30d3a0: 5682         	ldrsb	r2, [r0, r2]
  30d3a2: 0062         	lsls	r2, r4, #0x1
  30d3a4: d730         	bvc	0x30d408 <CreditsLayer::onBack(cocos2d::CCObject*)+0x8> @ imm = #0x60
  30d3a6: ffff b500    	<unknown>

// ==== CreditsLayer::onJ
//      file offset 0x30d3a8 (= ELF address; Ghidra 0x31d3a8), 44 bytes, Thumb-2
  30d3a8: b500         	push	{lr}
  30d3aa: b083         	sub	sp, #0xc
  30d3ac: 9001         	str	r0, [sp, #0x4]
  30d3ae: 9100         	str	r1, [sp]
  30d3b0: 4a06         	ldr	r2, [pc, #0x18]         @ 0x30d3cc <CreditsLayer::onJ(cocos2d::CCObject*)+0x24>
  30d3b2: 447a         	add	r2, pc
  30d3b4: 4b06         	ldr	r3, [pc, #0x18]         @ 0x30d3d0 <CreditsLayer::onJ(cocos2d::CCObject*)+0x28>
  30d3b6: 58d3         	ldr	r3, [r2, r3]
  30d3b8: 681b         	ldr	r3, [r3]
  30d3ba: 4618         	mov	r0, r3
  30d3bc: 210d         	movs	r1, #0xd
  30d3be: f0ea fcff    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xea9fe
  30d3c2: f11f fa05    	bl	0x42c7d0 <ApplicationInterface::openDeveloperLink()> @ imm = #0x11f40a
  30d3c6: b003         	add	sp, #0xc
  30d3c8: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x30d3cb); words below are literal-pool data ---
  30d3cc: 5656         	ldrsb	r6, [r2, r1]
  30d3ce: 0062         	lsls	r2, r4, #0x1
  30d3d0: d730         	bvc	0x30d434 <CreditsLayer::onBack(cocos2d::CCObject*)+0x34> @ imm = #0x60
  30d3d2: ffff b500    	<unknown>

// ==== CreditsLayer::onPK
//      file offset 0x30d3d4 (= ELF address; Ghidra 0x31d3d4), 44 bytes, Thumb-2
  30d3d4: b500         	push	{lr}
  30d3d6: b083         	sub	sp, #0xc
  30d3d8: 9001         	str	r0, [sp, #0x4]
  30d3da: 9100         	str	r1, [sp]
  30d3dc: 4a06         	ldr	r2, [pc, #0x18]         @ 0x30d3f8 <CreditsLayer::onPK(cocos2d::CCObject*)+0x24>
  30d3de: 447a         	add	r2, pc
  30d3e0: 4b06         	ldr	r3, [pc, #0x18]         @ 0x30d3fc <CreditsLayer::onPK(cocos2d::CCObject*)+0x28>
  30d3e2: 58d3         	ldr	r3, [r2, r3]
  30d3e4: 681b         	ldr	r3, [r3]
  30d3e6: 4618         	mov	r0, r3
  30d3e8: 210d         	movs	r1, #0xd
  30d3ea: f0ea fce9    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xea9d2
  30d3ee: f11f f9ef    	bl	0x42c7d0 <ApplicationInterface::openDeveloperLink()> @ imm = #0x11f3de
  30d3f2: b003         	add	sp, #0xc
  30d3f4: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x30d3f7); words below are literal-pool data ---
  30d3f8: 562a         	ldrsb	r2, [r5, r0]
  30d3fa: 0062         	lsls	r2, r4, #0x1
  30d3fc: d730         	bvc	0x30d460 <CreditsLayer::onBack(cocos2d::CCObject*)+0x60> @ imm = #0x60
  30d3fe: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== CreditsLayer::onBack
//      file offset 0x30d400 (= ELF address; Ghidra 0x31d400), 100 bytes, Thumb-2
  30d400: b530         	push	{r4, r5, lr}
  30d402: b083         	sub	sp, #0xc
  30d404: 9001         	str	r0, [sp, #0x4]
  30d406: 9100         	str	r1, [sp]
  30d408: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x30d458 <CreditsLayer::onBack(cocos2d::CCObject*)+0x58>
  30d40a: 447a         	add	r2, pc
  30d40c: 9b01         	ldr	r3, [sp, #0x4]
  30d40e: f893 3108    	ldrb.w	r3, [r3, #0x108]
  30d412: 2b00         	cmp	r3, #0x0
  30d414: d000         	beq	0x30d418 <CreditsLayer::onBack(cocos2d::CCObject*)+0x18> @ imm = #0x0
  30d416: e01c         	b	0x30d452 <CreditsLayer::onBack(cocos2d::CCObject*)+0x52> @ imm = #0x38
  30d418: 9b01         	ldr	r3, [sp, #0x4]
  30d41a: 2101         	movs	r1, #0x1
  30d41c: f883 1108    	strb.w	r1, [r3, #0x108]
  30d420: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x30d45c <CreditsLayer::onBack(cocos2d::CCObject*)+0x5c>
  30d422: 58d3         	ldr	r3, [r2, r3]
  30d424: 681b         	ldr	r3, [r3]
  30d426: 4618         	mov	r0, r3
  30d428: 210d         	movs	r1, #0xd
  30d42a: f0ea fcc9    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xea992
  30d42e: f28e f8a1    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x28e142
  30d432: 4604         	mov	r4, r0
  30d434: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x30d460 <CreditsLayer::onBack(cocos2d::CCObject*)+0x60>
  30d436: 447b         	add	r3, pc
  30d438: 681d         	ldr	r5, [r3]
  30d43a: f05c fb4b    	bl	0x369ad4 <MenuLayer::scene()> @ imm = #0x5c696
  30d43e: 4603         	mov	r3, r0
  30d440: 4628         	mov	r0, r5
  30d442: 4619         	mov	r1, r3
  30d444: f2a3 ff60    	bl	0x5b1308 <cocos2d::CCTransitionSlideInL::create(float, cocos2d::CCScene*)> @ imm = #0x2a3ec0
  30d448: 4603         	mov	r3, r0
  30d44a: 4620         	mov	r0, r4
  30d44c: 4619         	mov	r1, r3
  30d44e: f28e ff85    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x28ef0a
  30d452: b003         	add	sp, #0xc
  30d454: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x30d455); words below are literal-pool data ---
  30d456: bf00         	nop
  30d458: 55fe         	strb	r6, [r7, r7]
  30d45a: 0062         	lsls	r2, r4, #0x1
  30d45c: d730         	bvc	0x30d4c0 <CreditsLayer::onBack(cocos2d::CCObject*)+0xc0> @ imm = #0x60
  30d45e: ffff 5e6e    	<unknown>
  30d462: 0062         	lsls	r2, r4, #0x1
