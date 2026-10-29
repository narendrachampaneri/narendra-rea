// VestTableView: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 16 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../VestTableView.cpp

// ==== VestTableView::VestTableView
//      file offset 0x2eae6c (= ELF address; Ghidra 0x2fae6c), 116 bytes, Thumb-2
  2eae6c: b510         	push	{r4, lr}
  2eae6e: b082         	sub	sp, #0x8
  2eae70: 9001         	str	r0, [sp, #0x4]
  2eae72: 4c19         	ldr	r4, [pc, #0x64]         @ 0x2eaed8 <VestTableView::VestTableView()+0x6c>
  2eae74: 447c         	add	r4, pc
  2eae76: 9b01         	ldr	r3, [sp, #0x4]
  2eae78: 4618         	mov	r0, r3
  2eae7a: f085 ff11    	bl	0x370ca0 <MenuTableView::MenuTableView()> @ imm = #0x85e22
  2eae7e: 9b01         	ldr	r3, [sp, #0x4]
  2eae80: 4a16         	ldr	r2, [pc, #0x58]         @ 0x2eaedc <VestTableView::VestTableView()+0x70>
  2eae82: 58a2         	ldr	r2, [r4, r2]
  2eae84: 3208         	adds	r2, #0x8
  2eae86: 601a         	str	r2, [r3]
  2eae88: 9b01         	ldr	r3, [sp, #0x4]
  2eae8a: 4a14         	ldr	r2, [pc, #0x50]         @ 0x2eaedc <VestTableView::VestTableView()+0x70>
  2eae8c: 58a2         	ldr	r2, [r4, r2]
  2eae8e: f502 720b    	add.w	r2, r2, #0x22c
  2eae92: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  2eae96: 9b01         	ldr	r3, [sp, #0x4]
  2eae98: 4a10         	ldr	r2, [pc, #0x40]         @ 0x2eaedc <VestTableView::VestTableView()+0x70>
  2eae9a: 58a2         	ldr	r2, [r4, r2]
  2eae9c: f502 7217    	add.w	r2, r2, #0x25c
  2eaea0: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  2eaea4: 9b01         	ldr	r3, [sp, #0x4]
  2eaea6: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x2eaedc <VestTableView::VestTableView()+0x70>
  2eaea8: 58a2         	ldr	r2, [r4, r2]
  2eaeaa: f502 721a    	add.w	r2, r2, #0x268
  2eaeae: f8c3 20ec    	str.w	r2, [r3, #0xec]
  2eaeb2: 9b01         	ldr	r3, [sp, #0x4]
  2eaeb4: 4a09         	ldr	r2, [pc, #0x24]         @ 0x2eaedc <VestTableView::VestTableView()+0x70>
  2eaeb6: 58a2         	ldr	r2, [r4, r2]
  2eaeb8: f502 721e    	add.w	r2, r2, #0x278
  2eaebc: f8c3 2198    	str.w	r2, [r3, #0x198]
  2eaec0: 9b01         	ldr	r3, [sp, #0x4]
  2eaec2: 4a06         	ldr	r2, [pc, #0x18]         @ 0x2eaedc <VestTableView::VestTableView()+0x70>
  2eaec4: 58a2         	ldr	r2, [r4, r2]
  2eaec6: f502 7224    	add.w	r2, r2, #0x290
  2eaeca: f8c3 21c8    	str.w	r2, [r3, #0x1c8]
  2eaece: 9b01         	ldr	r3, [sp, #0x4]
  2eaed0: 4618         	mov	r0, r3
  2eaed2: b002         	add	sp, #0x8
  2eaed4: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2eaed5); words below are literal-pool data ---
  2eaed6: bf00         	nop
  2eaed8: 7b94         	ldrb	r4, [r2, #0xe]
  2eaeda: 0064         	lsls	r4, r4, #0x1
  2eaedc: d898         	bhi	0x2eae10 <HandTableView::HandTableView()+0x18> @ imm = #-0xd0
  2eaede: ffff b570    	<unknown>

// ==== VestTableView::numberOfCellsInTableView
//      file offset 0x2fba24 (= ELF address; Ghidra 0x30ba24), 14 bytes, Thumb-2
  2fba24: b082         	sub	sp, #0x8
  2fba26: 9001         	str	r0, [sp, #0x4]
  2fba28: 9100         	str	r1, [sp]
  2fba2a: 2307         	movs	r3, #0x7
  2fba2c: 4618         	mov	r0, r3
  2fba2e: b002         	add	sp, #0x8
  2fba30: 4770         	bx	lr

// ==== VestTableView::numberOfCellsInTableView
//      file offset 0x2fba34 (= ELF address; Ghidra 0x30ba34), 8 bytes, Thumb-2
  2fba34: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fba38: f7ff bff4    	b.w	0x2fba24 <VestTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*)> @ imm = #-0x18

// ==== VestTableView::getIdentifier
//      file offset 0x2fba3c (= ELF address; Ghidra 0x30ba3c), 68 bytes, Thumb-2
  2fba3c: b500         	push	{lr}
  2fba3e: b085         	sub	sp, #0x14
  2fba40: 9001         	str	r0, [sp, #0x4]
  2fba42: 9100         	str	r1, [sp]
  2fba44: ab03         	add	r3, sp, #0xc
  2fba46: 4618         	mov	r0, r3
  2fba48: f08e f4d4    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x48e9a8
  2fba4c: ab03         	add	r3, sp, #0xc
  2fba4e: 9801         	ldr	r0, [sp, #0x4]
  2fba50: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x2fba7c <VestTableView::getIdentifier()+0x40>
  2fba52: 447a         	add	r2, pc
  2fba54: 4611         	mov	r1, r2
  2fba56: 461a         	mov	r2, r3
  2fba58: f0bb f002    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4bb004
  2fba5c: ab03         	add	r3, sp, #0xc
  2fba5e: 4618         	mov	r0, r3
  2fba60: f08e f4cc    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x48e998
  2fba64: e005         	b	0x2fba72 <VestTableView::getIdentifier()+0x36> @ imm = #0xa
  2fba66: ab03         	add	r3, sp, #0xc
  2fba68: 4618         	mov	r0, r3
  2fba6a: f08e f4c7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x48e98e
  2fba6e: f08c f31d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48c63a
  2fba72: 9801         	ldr	r0, [sp, #0x4]
  2fba74: b005         	add	sp, #0x14
  2fba76: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2fba79); words below are literal-pool data ---
  2fba7a: bf00         	nop
  2fba7c: 8db2         	ldrh	r2, [r6, #0x2c]
  2fba7e: 004c         	lsls	r4, r1, #0x1

// ==== VestTableView::tableCellAtIndex
//      file offset 0x2fba80 (= ELF address; Ghidra 0x30ba80), 332 bytes, Thumb-2
  2fba80: b510         	push	{r4, lr}
  2fba82: b090         	sub	sp, #0x40
  2fba84: 9003         	str	r0, [sp, #0xc]
  2fba86: 9102         	str	r1, [sp, #0x8]
  2fba88: 9201         	str	r2, [sp, #0x4]
  2fba8a: 9802         	ldr	r0, [sp, #0x8]
  2fba8c: f157 fec4    	bl	0x453818 <cocos2d::extension::CCTableView::dequeueCell()> @ imm = #0x157d88
  2fba90: 4603         	mov	r3, r0
  2fba92: 9305         	str	r3, [sp, #0x14]
  2fba94: 9b05         	ldr	r3, [sp, #0x14]
  2fba96: 2b00         	cmp	r3, #0x0
  2fba98: d006         	beq	0x2fbaa8 <VestTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x28> @ imm = #0xc
  2fba9a: 9805         	ldr	r0, [sp, #0x14]
  2fba9c: f15a faa6    	bl	0x455fec <cocos2d::extension::CCTableViewCell::getIdx()> @ imm = #0x15a54c
  2fbaa0: 4602         	mov	r2, r0
  2fbaa2: 9b01         	ldr	r3, [sp, #0x4]
  2fbaa4: 429a         	cmp	r2, r3
  2fbaa6: d001         	beq	0x2fbaac <VestTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x2c> @ imm = #0x2
  2fbaa8: 2301         	movs	r3, #0x1
  2fbaaa: e000         	b	0x2fbaae <VestTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x2e> @ imm = #0x0
  2fbaac: 2300         	movs	r3, #0x0
  2fbaae: 2b00         	cmp	r3, #0x0
  2fbab0: d07e         	beq	0x2fbbb0 <VestTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x130> @ imm = #0xfc
  2fbab2: 20ec         	movs	r0, #0xec
  2fbab4: f08b f756    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x48beac
  2fbab8: 4603         	mov	r3, r0
  2fbaba: 461c         	mov	r4, r3
  2fbabc: 4620         	mov	r0, r4
  2fbabe: f7fd fc7d    	bl	0x2f93bc <cocos2d::extension::CCTableViewCell::CCTableViewCell()> @ imm = #-0x2706
  2fbac2: 9405         	str	r4, [sp, #0x14]
  2fbac4: 9b05         	ldr	r3, [sp, #0x14]
  2fbac6: 4618         	mov	r0, r3
  2fbac8: f29c fa18    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x29c430
  2fbacc: 9b03         	ldr	r3, [sp, #0xc]
  2fbace: 681b         	ldr	r3, [r3]
  2fbad0: f503 7306    	add.w	r3, r3, #0x218
  2fbad4: 681c         	ldr	r4, [r3]
  2fbad6: ab08         	add	r3, sp, #0x20
  2fbad8: 4618         	mov	r0, r3
  2fbada: 9903         	ldr	r1, [sp, #0xc]
  2fbadc: 9a02         	ldr	r2, [sp, #0x8]
  2fbade: 9b01         	ldr	r3, [sp, #0x4]
  2fbae0: 47a0         	blx	r4
  2fbae2: ed9d 7a08    	vldr	s14, [sp, #32]
  2fbae6: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2fbaea: eec7 6a27    	vdiv.f32	s13, s14, s15
  2fbaee: ed9d 7a09    	vldr	s14, [sp, #36]
  2fbaf2: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2fbaf6: eec7 7a27    	vdiv.f32	s15, s14, s15
  2fbafa: ab0a         	add	r3, sp, #0x28
  2fbafc: 4618         	mov	r0, r3
  2fbafe: ee16 1a90    	vmov	r1, s13
  2fbb02: ee17 2a90    	vmov	r2, s15
  2fbb06: f297 f8f3    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2971e6
  2fbb0a: f7f7 ffd5    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x8056
  2fbb0e: 4602         	mov	r2, r0
  2fbb10: 9b01         	ldr	r3, [sp, #0x4]
  2fbb12: 011b         	lsls	r3, r3, #0x4
  2fbb14: f603 63f8    	addw	r3, r3, #0xef8
  2fbb18: 4413         	add	r3, r2
  2fbb1a: 3304         	adds	r3, #0x4
  2fbb1c: aa0c         	add	r2, sp, #0x30
  2fbb1e: 4610         	mov	r0, r2
  2fbb20: 4619         	mov	r1, r3
  2fbb22: f297 fbf9    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x2977f2
  2fbb26: ab0c         	add	r3, sp, #0x30
  2fbb28: 4a26         	ldr	r2, [pc, #0x98]         @ 0x2fbbc4 <VestTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x144>
  2fbb2a: 447a         	add	r2, pc
  2fbb2c: 4610         	mov	r0, r2
  2fbb2e: 4619         	mov	r1, r3
  2fbb30: f2dc fb66    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2dc6cc
  2fbb34: 4603         	mov	r3, r0
  2fbb36: 9306         	str	r3, [sp, #0x18]
  2fbb38: 9b06         	ldr	r3, [sp, #0x18]
  2fbb3a: 681b         	ldr	r3, [r3]
  2fbb3c: f503 73fa    	add.w	r3, r3, #0x1f4
  2fbb40: 681b         	ldr	r3, [r3]
  2fbb42: 9806         	ldr	r0, [sp, #0x18]
  2fbb44: 4798         	blx	r3
  2fbb46: 4603         	mov	r3, r0
  2fbb48: 4618         	mov	r0, r3
  2fbb4a: f2f6 fa1b    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2f6436
  2fbb4e: 9b06         	ldr	r3, [sp, #0x18]
  2fbb50: 681b         	ldr	r3, [r3]
  2fbb52: 334c         	adds	r3, #0x4c
  2fbb54: 681b         	ldr	r3, [r3]
  2fbb56: aa0a         	add	r2, sp, #0x28
  2fbb58: 9806         	ldr	r0, [sp, #0x18]
  2fbb5a: 4611         	mov	r1, r2
  2fbb5c: 4798         	blx	r3
  2fbb5e: 4b1a         	ldr	r3, [pc, #0x68]         @ 0x2fbbc8 <VestTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x148>
  2fbb60: 447b         	add	r3, pc
  2fbb62: 4618         	mov	r0, r3
  2fbb64: f2dc fbce    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2dc79c
  2fbb68: 4603         	mov	r3, r0
  2fbb6a: 9307         	str	r3, [sp, #0x1c]
  2fbb6c: 9b07         	ldr	r3, [sp, #0x1c]
  2fbb6e: 681b         	ldr	r3, [r3]
  2fbb70: 334c         	adds	r3, #0x4c
  2fbb72: 681b         	ldr	r3, [r3]
  2fbb74: aa0a         	add	r2, sp, #0x28
  2fbb76: 9807         	ldr	r0, [sp, #0x1c]
  2fbb78: 4611         	mov	r1, r2
  2fbb7a: 4798         	blx	r3
  2fbb7c: 9b07         	ldr	r3, [sp, #0x1c]
  2fbb7e: 681b         	ldr	r3, [r3]
  2fbb80: 3340         	adds	r3, #0x40
  2fbb82: 681b         	ldr	r3, [r3]
  2fbb84: 9807         	ldr	r0, [sp, #0x1c]
  2fbb86: f649 119a    	movw	r1, #0x999a
  2fbb8a: f6c3 7119    	movt	r1, #0x3f19
  2fbb8e: 4798         	blx	r3
  2fbb90: 9b05         	ldr	r3, [sp, #0x14]
  2fbb92: 681b         	ldr	r3, [r3]
  2fbb94: 33c8         	adds	r3, #0xc8
  2fbb96: 681b         	ldr	r3, [r3]
  2fbb98: 9a05         	ldr	r2, [sp, #0x14]
  2fbb9a: 4610         	mov	r0, r2
  2fbb9c: 9907         	ldr	r1, [sp, #0x1c]
  2fbb9e: 4798         	blx	r3
  2fbba0: 9b05         	ldr	r3, [sp, #0x14]
  2fbba2: 681b         	ldr	r3, [r3]
  2fbba4: 33c8         	adds	r3, #0xc8
  2fbba6: 681b         	ldr	r3, [r3]
  2fbba8: 9a05         	ldr	r2, [sp, #0x14]
  2fbbaa: 4610         	mov	r0, r2
  2fbbac: 9906         	ldr	r1, [sp, #0x18]
  2fbbae: 4798         	blx	r3
  2fbbb0: 9b05         	ldr	r3, [sp, #0x14]
  2fbbb2: e004         	b	0x2fbbbe <VestTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x13e> @ imm = #0x8
  2fbbb4: 4620         	mov	r0, r4
  2fbbb6: f08c f275    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48c4ea
  2fbbba: f08c f277    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48c4ee
  2fbbbe: 4618         	mov	r0, r3
  2fbbc0: b010         	add	sp, #0x40
  2fbbc2: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2fbbc3); words below are literal-pool data ---
  2fbbc4: 8c06         	ldrh	r6, [r0, #0x20]
  2fbbc6: 004c         	lsls	r4, r1, #0x1
  2fbbc8: 8be4         	ldrh	r4, [r4, #0x1e]
  2fbbca: 004c         	lsls	r4, r1, #0x1

// ==== VestTableView::tableCellAtIndex
//      file offset 0x2fbbcc (= ELF address; Ghidra 0x30bbcc), 8 bytes, Thumb-2
  2fbbcc: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fbbd0: f7ff bf56    	b.w	0x2fba80 <VestTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)> @ imm = #-0x154

// ==== VestTableView::tableCellSizeForIndex
//      file offset 0x2fbbd4 (= ELF address; Ghidra 0x30bbd4), 54 bytes, Thumb-2
  2fbbd4: b500         	push	{lr}
  2fbbd6: b085         	sub	sp, #0x14
  2fbbd8: 9003         	str	r0, [sp, #0xc]
  2fbbda: 9102         	str	r1, [sp, #0x8]
  2fbbdc: 9201         	str	r2, [sp, #0x4]
  2fbbde: 9300         	str	r3, [sp]
  2fbbe0: 9b01         	ldr	r3, [sp, #0x4]
  2fbbe2: 681b         	ldr	r3, [r3]
  2fbbe4: 338c         	adds	r3, #0x8c
  2fbbe6: 681b         	ldr	r3, [r3]
  2fbbe8: 9a01         	ldr	r2, [sp, #0x4]
  2fbbea: 4610         	mov	r0, r2
  2fbbec: 4798         	blx	r3
  2fbbee: 4603         	mov	r3, r0
  2fbbf0: 681b         	ldr	r3, [r3]
  2fbbf2: 9803         	ldr	r0, [sp, #0xc]
  2fbbf4: 4619         	mov	r1, r3
  2fbbf6: f04f 0200    	mov.w	r2, #0x0
  2fbbfa: f2c4 228c    	movt	r2, #0x428c
  2fbbfe: f297 fa49    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x297492
  2fbc02: 9803         	ldr	r0, [sp, #0xc]
  2fbc04: b005         	add	sp, #0x14
  2fbc06: f85d fb04    	ldr	pc, [sp], #4

// ==== VestTableView::tableCellSizeForIndex
//      file offset 0x2fbc0c (= ELF address; Ghidra 0x30bc0c), 8 bytes, Thumb-2
  2fbc0c: f5a1 71e4    	sub.w	r1, r1, #0x1c8
  2fbc10: f7ff bfe0    	b.w	0x2fbbd4 <VestTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int)> @ imm = #-0x40

// ==== VestTableView::~VestTableView
//      file offset 0x2fbcec (= ELF address; Ghidra 0x30bcec), 128 bytes, Thumb-2
  2fbcec: b500         	push	{lr}
  2fbcee: b083         	sub	sp, #0xc
  2fbcf0: 9001         	str	r0, [sp, #0x4]
  2fbcf2: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x2fbd64 <VestTableView::~VestTableView()+0x78>
  2fbcf4: 447b         	add	r3, pc
  2fbcf6: 9a01         	ldr	r2, [sp, #0x4]
  2fbcf8: 491b         	ldr	r1, [pc, #0x6c]         @ 0x2fbd68 <VestTableView::~VestTableView()+0x7c>
  2fbcfa: 5859         	ldr	r1, [r3, r1]
  2fbcfc: 3108         	adds	r1, #0x8
  2fbcfe: 6011         	str	r1, [r2]
  2fbd00: 9a01         	ldr	r2, [sp, #0x4]
  2fbd02: 4919         	ldr	r1, [pc, #0x64]         @ 0x2fbd68 <VestTableView::~VestTableView()+0x7c>
  2fbd04: 5859         	ldr	r1, [r3, r1]
  2fbd06: f501 710b    	add.w	r1, r1, #0x22c
  2fbd0a: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  2fbd0e: 9a01         	ldr	r2, [sp, #0x4]
  2fbd10: 4915         	ldr	r1, [pc, #0x54]         @ 0x2fbd68 <VestTableView::~VestTableView()+0x7c>
  2fbd12: 5859         	ldr	r1, [r3, r1]
  2fbd14: f501 7117    	add.w	r1, r1, #0x25c
  2fbd18: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  2fbd1c: 9a01         	ldr	r2, [sp, #0x4]
  2fbd1e: 4912         	ldr	r1, [pc, #0x48]         @ 0x2fbd68 <VestTableView::~VestTableView()+0x7c>
  2fbd20: 5859         	ldr	r1, [r3, r1]
  2fbd22: f501 711a    	add.w	r1, r1, #0x268
  2fbd26: f8c2 10ec    	str.w	r1, [r2, #0xec]
  2fbd2a: 9a01         	ldr	r2, [sp, #0x4]
  2fbd2c: 490e         	ldr	r1, [pc, #0x38]         @ 0x2fbd68 <VestTableView::~VestTableView()+0x7c>
  2fbd2e: 5859         	ldr	r1, [r3, r1]
  2fbd30: f501 711e    	add.w	r1, r1, #0x278
  2fbd34: f8c2 1198    	str.w	r1, [r2, #0x198]
  2fbd38: 9a01         	ldr	r2, [sp, #0x4]
  2fbd3a: 490b         	ldr	r1, [pc, #0x2c]         @ 0x2fbd68 <VestTableView::~VestTableView()+0x7c>
  2fbd3c: 585b         	ldr	r3, [r3, r1]
  2fbd3e: f503 7324    	add.w	r3, r3, #0x290
  2fbd42: f8c2 31c8    	str.w	r3, [r2, #0x1c8]
  2fbd46: 9b01         	ldr	r3, [sp, #0x4]
  2fbd48: 4618         	mov	r0, r3
  2fbd4a: f7ff ff63    	bl	0x2fbc14 <MenuTableView::~MenuTableView()> @ imm = #-0x13a
  2fbd4e: 2300         	movs	r3, #0x0
  2fbd50: 2b00         	cmp	r3, #0x0
  2fbd52: d002         	beq	0x2fbd5a <VestTableView::~VestTableView()+0x6e> @ imm = #0x4
  2fbd54: 9801         	ldr	r0, [sp, #0x4]
  2fbd56: f08c f1a5    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48c34a
  2fbd5a: 9b01         	ldr	r3, [sp, #0x4]
  2fbd5c: 4618         	mov	r0, r3
  2fbd5e: b003         	add	sp, #0xc
  2fbd60: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2fbd63); words below are literal-pool data ---
  2fbd64: 6d14         	ldr	r4, [r2, #0x50]
  2fbd66: 0063         	lsls	r3, r4, #0x1
  2fbd68: d898         	bhi	0x2fbc9c <MenuTableView::~MenuTableView()+0x88> @ imm = #-0xd0
  2fbd6a: ffff f5a0    	<unknown>

// ==== VestTableView::~VestTableView
//      file offset 0x2fbd6c (= ELF address; Ghidra 0x30bd6c), 8 bytes, Thumb-2
  2fbd6c: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fbd70: f7ff bfbc    	b.w	0x2fbcec <VestTableView::~VestTableView()> @ imm = #-0x88

// ==== VestTableView::~VestTableView
//      file offset 0x2fbd74 (= ELF address; Ghidra 0x30bd74), 8 bytes, Thumb-2
  2fbd74: f5a0 70cc    	sub.w	r0, r0, #0x198
  2fbd78: f7ff bfb8    	b.w	0x2fbcec <VestTableView::~VestTableView()> @ imm = #-0x90

// ==== VestTableView::~VestTableView
//      file offset 0x2fbd7c (= ELF address; Ghidra 0x30bd7c), 8 bytes, Thumb-2
  2fbd7c: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2fbd80: f7ff bfb4    	b.w	0x2fbcec <VestTableView::~VestTableView()> @ imm = #-0x98

// ==== VestTableView::~VestTableView
//      file offset 0x2fbd84 (= ELF address; Ghidra 0x30bd84), 28 bytes, Thumb-2
  2fbd84: b500         	push	{lr}
  2fbd86: b083         	sub	sp, #0xc
  2fbd88: 9001         	str	r0, [sp, #0x4]
  2fbd8a: 9801         	ldr	r0, [sp, #0x4]
  2fbd8c: f7ff ffae    	bl	0x2fbcec <VestTableView::~VestTableView()> @ imm = #-0xa4
  2fbd90: 9801         	ldr	r0, [sp, #0x4]
  2fbd92: f08c f187    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48c30e
  2fbd96: 9b01         	ldr	r3, [sp, #0x4]
  2fbd98: 4618         	mov	r0, r3
  2fbd9a: b003         	add	sp, #0xc
  2fbd9c: f85d fb04    	ldr	pc, [sp], #4

// ==== VestTableView::~VestTableView
//      file offset 0x2fbda0 (= ELF address; Ghidra 0x30bda0), 6 bytes, Thumb-2
  2fbda0: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fbda4: e7ee         	b	0x2fbd84 <VestTableView::~VestTableView()> @ imm = #-0x24

// ==== VestTableView::~VestTableView
//      file offset 0x2fbda8 (= ELF address; Ghidra 0x30bda8), 6 bytes, Thumb-2
  2fbda8: f5a0 70cc    	sub.w	r0, r0, #0x198
  2fbdac: e7ea         	b	0x2fbd84 <VestTableView::~VestTableView()> @ imm = #-0x2c

// ==== VestTableView::~VestTableView
//      file offset 0x2fbdb0 (= ELF address; Ghidra 0x30bdb0), 6 bytes, Thumb-2
  2fbdb0: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2fbdb4: e7e6         	b	0x2fbd84 <VestTableView::~VestTableView()> @ imm = #-0x34
