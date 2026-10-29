// StacheTableView: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 16 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../StacheTableView.cpp

// ==== StacheTableView::StacheTableView
//      file offset 0x2eaacc (= ELF address; Ghidra 0x2faacc), 116 bytes, Thumb-2
  2eaacc: b510         	push	{r4, lr}
  2eaace: b082         	sub	sp, #0x8
  2eaad0: 9001         	str	r0, [sp, #0x4]
  2eaad2: 4c19         	ldr	r4, [pc, #0x64]         @ 0x2eab38 <StacheTableView::StacheTableView()+0x6c>
  2eaad4: 447c         	add	r4, pc
  2eaad6: 9b01         	ldr	r3, [sp, #0x4]
  2eaad8: 4618         	mov	r0, r3
  2eaada: f086 f8e1    	bl	0x370ca0 <MenuTableView::MenuTableView()> @ imm = #0x861c2
  2eaade: 9b01         	ldr	r3, [sp, #0x4]
  2eaae0: 4a16         	ldr	r2, [pc, #0x58]         @ 0x2eab3c <StacheTableView::StacheTableView()+0x70>
  2eaae2: 58a2         	ldr	r2, [r4, r2]
  2eaae4: 3208         	adds	r2, #0x8
  2eaae6: 601a         	str	r2, [r3]
  2eaae8: 9b01         	ldr	r3, [sp, #0x4]
  2eaaea: 4a14         	ldr	r2, [pc, #0x50]         @ 0x2eab3c <StacheTableView::StacheTableView()+0x70>
  2eaaec: 58a2         	ldr	r2, [r4, r2]
  2eaaee: f502 720b    	add.w	r2, r2, #0x22c
  2eaaf2: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  2eaaf6: 9b01         	ldr	r3, [sp, #0x4]
  2eaaf8: 4a10         	ldr	r2, [pc, #0x40]         @ 0x2eab3c <StacheTableView::StacheTableView()+0x70>
  2eaafa: 58a2         	ldr	r2, [r4, r2]
  2eaafc: f502 7217    	add.w	r2, r2, #0x25c
  2eab00: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  2eab04: 9b01         	ldr	r3, [sp, #0x4]
  2eab06: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x2eab3c <StacheTableView::StacheTableView()+0x70>
  2eab08: 58a2         	ldr	r2, [r4, r2]
  2eab0a: f502 721a    	add.w	r2, r2, #0x268
  2eab0e: f8c3 20ec    	str.w	r2, [r3, #0xec]
  2eab12: 9b01         	ldr	r3, [sp, #0x4]
  2eab14: 4a09         	ldr	r2, [pc, #0x24]         @ 0x2eab3c <StacheTableView::StacheTableView()+0x70>
  2eab16: 58a2         	ldr	r2, [r4, r2]
  2eab18: f502 721e    	add.w	r2, r2, #0x278
  2eab1c: f8c3 2198    	str.w	r2, [r3, #0x198]
  2eab20: 9b01         	ldr	r3, [sp, #0x4]
  2eab22: 4a06         	ldr	r2, [pc, #0x18]         @ 0x2eab3c <StacheTableView::StacheTableView()+0x70>
  2eab24: 58a2         	ldr	r2, [r4, r2]
  2eab26: f502 7224    	add.w	r2, r2, #0x290
  2eab2a: f8c3 21c8    	str.w	r2, [r3, #0x1c8]
  2eab2e: 9b01         	ldr	r3, [sp, #0x4]
  2eab30: 4618         	mov	r0, r3
  2eab32: b002         	add	sp, #0x8
  2eab34: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2eab35); words below are literal-pool data ---
  2eab36: bf00         	nop
  2eab38: 7f34         	ldrb	r4, [r6, #0x1c]
  2eab3a: 0064         	lsls	r4, r4, #0x1
  2eab3c: d878         	bhi	0x2eac30 <BodyTableView::BodyTableView()+0x8> @ imm = #0xf0
  2eab3e: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== StacheTableView::numberOfCellsInTableView
//      file offset 0x2fa9f4 (= ELF address; Ghidra 0x30a9f4), 14 bytes, Thumb-2
  2fa9f4: b082         	sub	sp, #0x8
  2fa9f6: 9001         	str	r0, [sp, #0x4]
  2fa9f8: 9100         	str	r1, [sp]
  2fa9fa: 2305         	movs	r3, #0x5
  2fa9fc: 4618         	mov	r0, r3
  2fa9fe: b002         	add	sp, #0x8
  2faa00: 4770         	bx	lr

// ==== StacheTableView::numberOfCellsInTableView
//      file offset 0x2faa04 (= ELF address; Ghidra 0x30aa04), 8 bytes, Thumb-2
  2faa04: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2faa08: f7ff bff4    	b.w	0x2fa9f4 <StacheTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*)> @ imm = #-0x18

// ==== StacheTableView::getIdentifier
//      file offset 0x2faa0c (= ELF address; Ghidra 0x30aa0c), 68 bytes, Thumb-2
  2faa0c: b500         	push	{lr}
  2faa0e: b085         	sub	sp, #0x14
  2faa10: 9001         	str	r0, [sp, #0x4]
  2faa12: 9100         	str	r1, [sp]
  2faa14: ab03         	add	r3, sp, #0xc
  2faa16: 4618         	mov	r0, r3
  2faa18: f08f f4ec    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x48f9d8
  2faa1c: ab03         	add	r3, sp, #0xc
  2faa1e: 9801         	ldr	r0, [sp, #0x4]
  2faa20: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x2faa4c <StacheTableView::getIdentifier()+0x40>
  2faa22: 447a         	add	r2, pc
  2faa24: 4611         	mov	r1, r2
  2faa26: 461a         	mov	r2, r3
  2faa28: f0bc f01a    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4bc034
  2faa2c: ab03         	add	r3, sp, #0xc
  2faa2e: 4618         	mov	r0, r3
  2faa30: f08f f4e4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x48f9c8
  2faa34: e005         	b	0x2faa42 <StacheTableView::getIdentifier()+0x36> @ imm = #0xa
  2faa36: ab03         	add	r3, sp, #0xc
  2faa38: 4618         	mov	r0, r3
  2faa3a: f08f f4df    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x48f9be
  2faa3e: f08d f335    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48d66a
  2faa42: 9801         	ldr	r0, [sp, #0x4]
  2faa44: b005         	add	sp, #0x14
  2faa46: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2faa49); words below are literal-pool data ---
  2faa4a: bf00         	nop
  2faa4c: 9d9e         	ldr	r5, [sp, #0x278]
  2faa4e: 004c         	lsls	r4, r1, #0x1

// ==== StacheTableView::tableCellAtIndex
//      file offset 0x2faa50 (= ELF address; Ghidra 0x30aa50), 332 bytes, Thumb-2
  2faa50: b510         	push	{r4, lr}
  2faa52: b090         	sub	sp, #0x40
  2faa54: 9003         	str	r0, [sp, #0xc]
  2faa56: 9102         	str	r1, [sp, #0x8]
  2faa58: 9201         	str	r2, [sp, #0x4]
  2faa5a: 9802         	ldr	r0, [sp, #0x8]
  2faa5c: f158 fedc    	bl	0x453818 <cocos2d::extension::CCTableView::dequeueCell()> @ imm = #0x158db8
  2faa60: 4603         	mov	r3, r0
  2faa62: 9305         	str	r3, [sp, #0x14]
  2faa64: 9b05         	ldr	r3, [sp, #0x14]
  2faa66: 2b00         	cmp	r3, #0x0
  2faa68: d006         	beq	0x2faa78 <StacheTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x28> @ imm = #0xc
  2faa6a: 9805         	ldr	r0, [sp, #0x14]
  2faa6c: f15b fabe    	bl	0x455fec <cocos2d::extension::CCTableViewCell::getIdx()> @ imm = #0x15b57c
  2faa70: 4602         	mov	r2, r0
  2faa72: 9b01         	ldr	r3, [sp, #0x4]
  2faa74: 429a         	cmp	r2, r3
  2faa76: d001         	beq	0x2faa7c <StacheTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x2c> @ imm = #0x2
  2faa78: 2301         	movs	r3, #0x1
  2faa7a: e000         	b	0x2faa7e <StacheTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x2e> @ imm = #0x0
  2faa7c: 2300         	movs	r3, #0x0
  2faa7e: 2b00         	cmp	r3, #0x0
  2faa80: d07d         	beq	0x2fab7e <StacheTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x12e> @ imm = #0xfa
  2faa82: 20ec         	movs	r0, #0xec
  2faa84: f08c f76e    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x48cedc
  2faa88: 4603         	mov	r3, r0
  2faa8a: 461c         	mov	r4, r3
  2faa8c: 4620         	mov	r0, r4
  2faa8e: f7fe fc95    	bl	0x2f93bc <cocos2d::extension::CCTableViewCell::CCTableViewCell()> @ imm = #-0x16d6
  2faa92: 9405         	str	r4, [sp, #0x14]
  2faa94: 9b05         	ldr	r3, [sp, #0x14]
  2faa96: 4618         	mov	r0, r3
  2faa98: f29d fa30    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x29d460
  2faa9c: 9b03         	ldr	r3, [sp, #0xc]
  2faa9e: 681b         	ldr	r3, [r3]
  2faaa0: f503 7306    	add.w	r3, r3, #0x218
  2faaa4: 681c         	ldr	r4, [r3]
  2faaa6: ab08         	add	r3, sp, #0x20
  2faaa8: 4618         	mov	r0, r3
  2faaaa: 9903         	ldr	r1, [sp, #0xc]
  2faaac: 9a02         	ldr	r2, [sp, #0x8]
  2faaae: 9b01         	ldr	r3, [sp, #0x4]
  2faab0: 47a0         	blx	r4
  2faab2: ed9d 7a08    	vldr	s14, [sp, #32]
  2faab6: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2faaba: eec7 6a27    	vdiv.f32	s13, s14, s15
  2faabe: ed9d 7a09    	vldr	s14, [sp, #36]
  2faac2: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2faac6: eec7 7a27    	vdiv.f32	s15, s14, s15
  2faaca: ab0a         	add	r3, sp, #0x28
  2faacc: 4618         	mov	r0, r3
  2faace: ee16 1a90    	vmov	r1, s13
  2faad2: ee17 2a90    	vmov	r2, s15
  2faad6: f298 f90b    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x298216
  2faada: f7f8 ffed    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x7026
  2faade: 4602         	mov	r2, r0
  2faae0: 9b01         	ldr	r3, [sp, #0x4]
  2faae2: 337c         	adds	r3, #0x7c
  2faae4: 011b         	lsls	r3, r3, #0x4
  2faae6: 4413         	add	r3, r2
  2faae8: 3304         	adds	r3, #0x4
  2faaea: aa0c         	add	r2, sp, #0x30
  2faaec: 4610         	mov	r0, r2
  2faaee: 4619         	mov	r1, r3
  2faaf0: f298 fc12    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x298824
  2faaf4: ab0c         	add	r3, sp, #0x30
  2faaf6: 4a27         	ldr	r2, [pc, #0x9c]         @ 0x2fab94 <StacheTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x144>
  2faaf8: 447a         	add	r2, pc
  2faafa: 4610         	mov	r0, r2
  2faafc: 4619         	mov	r1, r3
  2faafe: f2dd fb7f    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2dd6fe
  2fab02: 4603         	mov	r3, r0
  2fab04: 9306         	str	r3, [sp, #0x18]
  2fab06: 9b06         	ldr	r3, [sp, #0x18]
  2fab08: 681b         	ldr	r3, [r3]
  2fab0a: f503 73fa    	add.w	r3, r3, #0x1f4
  2fab0e: 681b         	ldr	r3, [r3]
  2fab10: 9806         	ldr	r0, [sp, #0x18]
  2fab12: 4798         	blx	r3
  2fab14: 4603         	mov	r3, r0
  2fab16: 4618         	mov	r0, r3
  2fab18: f2f7 fa34    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2f7468
  2fab1c: 9b06         	ldr	r3, [sp, #0x18]
  2fab1e: 681b         	ldr	r3, [r3]
  2fab20: 334c         	adds	r3, #0x4c
  2fab22: 681b         	ldr	r3, [r3]
  2fab24: aa0a         	add	r2, sp, #0x28
  2fab26: 9806         	ldr	r0, [sp, #0x18]
  2fab28: 4611         	mov	r1, r2
  2fab2a: 4798         	blx	r3
  2fab2c: 4b1a         	ldr	r3, [pc, #0x68]         @ 0x2fab98 <StacheTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x148>
  2fab2e: 447b         	add	r3, pc
  2fab30: 4618         	mov	r0, r3
  2fab32: f2dd fbe7    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2dd7ce
  2fab36: 4603         	mov	r3, r0
  2fab38: 9307         	str	r3, [sp, #0x1c]
  2fab3a: 9b07         	ldr	r3, [sp, #0x1c]
  2fab3c: 681b         	ldr	r3, [r3]
  2fab3e: 334c         	adds	r3, #0x4c
  2fab40: 681b         	ldr	r3, [r3]
  2fab42: aa0a         	add	r2, sp, #0x28
  2fab44: 9807         	ldr	r0, [sp, #0x1c]
  2fab46: 4611         	mov	r1, r2
  2fab48: 4798         	blx	r3
  2fab4a: 9b07         	ldr	r3, [sp, #0x1c]
  2fab4c: 681b         	ldr	r3, [r3]
  2fab4e: 3340         	adds	r3, #0x40
  2fab50: 681b         	ldr	r3, [r3]
  2fab52: 9807         	ldr	r0, [sp, #0x1c]
  2fab54: f64c 41cd    	movw	r1, #0xcccd
  2fab58: f6c3 61cc    	movt	r1, #0x3ecc
  2fab5c: 4798         	blx	r3
  2fab5e: 9b05         	ldr	r3, [sp, #0x14]
  2fab60: 681b         	ldr	r3, [r3]
  2fab62: 33c8         	adds	r3, #0xc8
  2fab64: 681b         	ldr	r3, [r3]
  2fab66: 9a05         	ldr	r2, [sp, #0x14]
  2fab68: 4610         	mov	r0, r2
  2fab6a: 9907         	ldr	r1, [sp, #0x1c]
  2fab6c: 4798         	blx	r3
  2fab6e: 9b05         	ldr	r3, [sp, #0x14]
  2fab70: 681b         	ldr	r3, [r3]
  2fab72: 33c8         	adds	r3, #0xc8
  2fab74: 681b         	ldr	r3, [r3]
  2fab76: 9a05         	ldr	r2, [sp, #0x14]
  2fab78: 4610         	mov	r0, r2
  2fab7a: 9906         	ldr	r1, [sp, #0x18]
  2fab7c: 4798         	blx	r3
  2fab7e: 9b05         	ldr	r3, [sp, #0x14]
  2fab80: e004         	b	0x2fab8c <StacheTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x13c> @ imm = #0x8
  2fab82: 4620         	mov	r0, r4
  2fab84: f08d f28e    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48d51c
  2fab88: f08d f290    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48d520
  2fab8c: 4618         	mov	r0, r3
  2fab8e: b010         	add	sp, #0x40
  2fab90: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2fab91); words below are literal-pool data ---
  2fab92: bf00         	nop
  2fab94: 9c38         	ldr	r4, [sp, #0xe0]
  2fab96: 004c         	lsls	r4, r1, #0x1
  2fab98: 9c16         	ldr	r4, [sp, #0x58]
  2fab9a: 004c         	lsls	r4, r1, #0x1

// ==== StacheTableView::tableCellAtIndex
//      file offset 0x2fab9c (= ELF address; Ghidra 0x30ab9c), 8 bytes, Thumb-2
  2fab9c: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2faba0: f7ff bf56    	b.w	0x2faa50 <StacheTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)> @ imm = #-0x154

// ==== StacheTableView::tableCellSizeForIndex
//      file offset 0x2faba4 (= ELF address; Ghidra 0x30aba4), 54 bytes, Thumb-2
  2faba4: b500         	push	{lr}
  2faba6: b085         	sub	sp, #0x14
  2faba8: 9003         	str	r0, [sp, #0xc]
  2fabaa: 9102         	str	r1, [sp, #0x8]
  2fabac: 9201         	str	r2, [sp, #0x4]
  2fabae: 9300         	str	r3, [sp]
  2fabb0: 9b01         	ldr	r3, [sp, #0x4]
  2fabb2: 681b         	ldr	r3, [r3]
  2fabb4: 338c         	adds	r3, #0x8c
  2fabb6: 681b         	ldr	r3, [r3]
  2fabb8: 9a01         	ldr	r2, [sp, #0x4]
  2fabba: 4610         	mov	r0, r2
  2fabbc: 4798         	blx	r3
  2fabbe: 4603         	mov	r3, r0
  2fabc0: 681b         	ldr	r3, [r3]
  2fabc2: 9803         	ldr	r0, [sp, #0xc]
  2fabc4: 4619         	mov	r1, r3
  2fabc6: f04f 0200    	mov.w	r2, #0x0
  2fabca: f2c4 2220    	movt	r2, #0x4220
  2fabce: f298 fa61    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x2984c2
  2fabd2: 9803         	ldr	r0, [sp, #0xc]
  2fabd4: b005         	add	sp, #0x14
  2fabd6: f85d fb04    	ldr	pc, [sp], #4

// ==== StacheTableView::tableCellSizeForIndex
//      file offset 0x2fabdc (= ELF address; Ghidra 0x30abdc), 8 bytes, Thumb-2
  2fabdc: f5a1 71e4    	sub.w	r1, r1, #0x1c8
  2fabe0: f7ff bfe0    	b.w	0x2faba4 <StacheTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int)> @ imm = #-0x40

// ==== StacheTableView::~StacheTableView
//      file offset 0x2fc34c (= ELF address; Ghidra 0x30c34c), 128 bytes, Thumb-2
  2fc34c: b500         	push	{lr}
  2fc34e: b083         	sub	sp, #0xc
  2fc350: 9001         	str	r0, [sp, #0x4]
  2fc352: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x2fc3c4 <StacheTableView::~StacheTableView()+0x78>
  2fc354: 447b         	add	r3, pc
  2fc356: 9a01         	ldr	r2, [sp, #0x4]
  2fc358: 491b         	ldr	r1, [pc, #0x6c]         @ 0x2fc3c8 <StacheTableView::~StacheTableView()+0x7c>
  2fc35a: 5859         	ldr	r1, [r3, r1]
  2fc35c: 3108         	adds	r1, #0x8
  2fc35e: 6011         	str	r1, [r2]
  2fc360: 9a01         	ldr	r2, [sp, #0x4]
  2fc362: 4919         	ldr	r1, [pc, #0x64]         @ 0x2fc3c8 <StacheTableView::~StacheTableView()+0x7c>
  2fc364: 5859         	ldr	r1, [r3, r1]
  2fc366: f501 710b    	add.w	r1, r1, #0x22c
  2fc36a: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  2fc36e: 9a01         	ldr	r2, [sp, #0x4]
  2fc370: 4915         	ldr	r1, [pc, #0x54]         @ 0x2fc3c8 <StacheTableView::~StacheTableView()+0x7c>
  2fc372: 5859         	ldr	r1, [r3, r1]
  2fc374: f501 7117    	add.w	r1, r1, #0x25c
  2fc378: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  2fc37c: 9a01         	ldr	r2, [sp, #0x4]
  2fc37e: 4912         	ldr	r1, [pc, #0x48]         @ 0x2fc3c8 <StacheTableView::~StacheTableView()+0x7c>
  2fc380: 5859         	ldr	r1, [r3, r1]
  2fc382: f501 711a    	add.w	r1, r1, #0x268
  2fc386: f8c2 10ec    	str.w	r1, [r2, #0xec]
  2fc38a: 9a01         	ldr	r2, [sp, #0x4]
  2fc38c: 490e         	ldr	r1, [pc, #0x38]         @ 0x2fc3c8 <StacheTableView::~StacheTableView()+0x7c>
  2fc38e: 5859         	ldr	r1, [r3, r1]
  2fc390: f501 711e    	add.w	r1, r1, #0x278
  2fc394: f8c2 1198    	str.w	r1, [r2, #0x198]
  2fc398: 9a01         	ldr	r2, [sp, #0x4]
  2fc39a: 490b         	ldr	r1, [pc, #0x2c]         @ 0x2fc3c8 <StacheTableView::~StacheTableView()+0x7c>
  2fc39c: 585b         	ldr	r3, [r3, r1]
  2fc39e: f503 7324    	add.w	r3, r3, #0x290
  2fc3a2: f8c2 31c8    	str.w	r3, [r2, #0x1c8]
  2fc3a6: 9b01         	ldr	r3, [sp, #0x4]
  2fc3a8: 4618         	mov	r0, r3
  2fc3aa: f7ff fc33    	bl	0x2fbc14 <MenuTableView::~MenuTableView()> @ imm = #-0x79a
  2fc3ae: 2300         	movs	r3, #0x0
  2fc3b0: 2b00         	cmp	r3, #0x0
  2fc3b2: d002         	beq	0x2fc3ba <StacheTableView::~StacheTableView()+0x6e> @ imm = #0x4
  2fc3b4: 9801         	ldr	r0, [sp, #0x4]
  2fc3b6: f08b f675    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48bcea
  2fc3ba: 9b01         	ldr	r3, [sp, #0x4]
  2fc3bc: 4618         	mov	r0, r3
  2fc3be: b003         	add	sp, #0xc
  2fc3c0: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2fc3c3); words below are literal-pool data ---
  2fc3c4: 66b4         	str	r4, [r6, #0x68]
  2fc3c6: 0063         	lsls	r3, r4, #0x1
  2fc3c8: d878         	bhi	0x2fc4bc <BeardTableView::~BeardTableView()+0xc> @ imm = #0xf0
  2fc3ca: ffff f5a0    	<unknown>

// ==== StacheTableView::~StacheTableView
//      file offset 0x2fc3cc (= ELF address; Ghidra 0x30c3cc), 8 bytes, Thumb-2
  2fc3cc: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fc3d0: f7ff bfbc    	b.w	0x2fc34c <StacheTableView::~StacheTableView()> @ imm = #-0x88

// ==== StacheTableView::~StacheTableView
//      file offset 0x2fc3d4 (= ELF address; Ghidra 0x30c3d4), 8 bytes, Thumb-2
  2fc3d4: f5a0 70cc    	sub.w	r0, r0, #0x198
  2fc3d8: f7ff bfb8    	b.w	0x2fc34c <StacheTableView::~StacheTableView()> @ imm = #-0x90

// ==== StacheTableView::~StacheTableView
//      file offset 0x2fc3dc (= ELF address; Ghidra 0x30c3dc), 8 bytes, Thumb-2
  2fc3dc: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2fc3e0: f7ff bfb4    	b.w	0x2fc34c <StacheTableView::~StacheTableView()> @ imm = #-0x98

// ==== StacheTableView::~StacheTableView
//      file offset 0x2fc3e4 (= ELF address; Ghidra 0x30c3e4), 28 bytes, Thumb-2
  2fc3e4: b500         	push	{lr}
  2fc3e6: b083         	sub	sp, #0xc
  2fc3e8: 9001         	str	r0, [sp, #0x4]
  2fc3ea: 9801         	ldr	r0, [sp, #0x4]
  2fc3ec: f7ff ffae    	bl	0x2fc34c <StacheTableView::~StacheTableView()> @ imm = #-0xa4
  2fc3f0: 9801         	ldr	r0, [sp, #0x4]
  2fc3f2: f08b f657    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48bcae
  2fc3f6: 9b01         	ldr	r3, [sp, #0x4]
  2fc3f8: 4618         	mov	r0, r3
  2fc3fa: b003         	add	sp, #0xc
  2fc3fc: f85d fb04    	ldr	pc, [sp], #4

// ==== StacheTableView::~StacheTableView
//      file offset 0x2fc400 (= ELF address; Ghidra 0x30c400), 6 bytes, Thumb-2
  2fc400: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fc404: e7ee         	b	0x2fc3e4 <StacheTableView::~StacheTableView()> @ imm = #-0x24

// ==== StacheTableView::~StacheTableView
//      file offset 0x2fc408 (= ELF address; Ghidra 0x30c408), 6 bytes, Thumb-2
  2fc408: f5a0 70cc    	sub.w	r0, r0, #0x198
  2fc40c: e7ea         	b	0x2fc3e4 <StacheTableView::~StacheTableView()> @ imm = #-0x2c

// ==== StacheTableView::~StacheTableView
//      file offset 0x2fc410 (= ELF address; Ghidra 0x30c410), 6 bytes, Thumb-2
  2fc410: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2fc414: e7e6         	b	0x2fc3e4 <StacheTableView::~StacheTableView()> @ imm = #-0x34
