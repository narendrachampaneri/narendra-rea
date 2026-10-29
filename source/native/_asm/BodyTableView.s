// BodyTableView: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 16 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../BodyTableView.cpp

// ==== BodyTableView::BodyTableView
//      file offset 0x2eac28 (= ELF address; Ghidra 0x2fac28), 116 bytes, Thumb-2
  2eac28: b510         	push	{r4, lr}
  2eac2a: b082         	sub	sp, #0x8
  2eac2c: 9001         	str	r0, [sp, #0x4]
  2eac2e: 4c19         	ldr	r4, [pc, #0x64]         @ 0x2eac94 <BodyTableView::BodyTableView()+0x6c>
  2eac30: 447c         	add	r4, pc
  2eac32: 9b01         	ldr	r3, [sp, #0x4]
  2eac34: 4618         	mov	r0, r3
  2eac36: f086 f833    	bl	0x370ca0 <MenuTableView::MenuTableView()> @ imm = #0x86066
  2eac3a: 9b01         	ldr	r3, [sp, #0x4]
  2eac3c: 4a16         	ldr	r2, [pc, #0x58]         @ 0x2eac98 <BodyTableView::BodyTableView()+0x70>
  2eac3e: 58a2         	ldr	r2, [r4, r2]
  2eac40: 3208         	adds	r2, #0x8
  2eac42: 601a         	str	r2, [r3]
  2eac44: 9b01         	ldr	r3, [sp, #0x4]
  2eac46: 4a14         	ldr	r2, [pc, #0x50]         @ 0x2eac98 <BodyTableView::BodyTableView()+0x70>
  2eac48: 58a2         	ldr	r2, [r4, r2]
  2eac4a: f502 720b    	add.w	r2, r2, #0x22c
  2eac4e: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  2eac52: 9b01         	ldr	r3, [sp, #0x4]
  2eac54: 4a10         	ldr	r2, [pc, #0x40]         @ 0x2eac98 <BodyTableView::BodyTableView()+0x70>
  2eac56: 58a2         	ldr	r2, [r4, r2]
  2eac58: f502 7217    	add.w	r2, r2, #0x25c
  2eac5c: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  2eac60: 9b01         	ldr	r3, [sp, #0x4]
  2eac62: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x2eac98 <BodyTableView::BodyTableView()+0x70>
  2eac64: 58a2         	ldr	r2, [r4, r2]
  2eac66: f502 721a    	add.w	r2, r2, #0x268
  2eac6a: f8c3 20ec    	str.w	r2, [r3, #0xec]
  2eac6e: 9b01         	ldr	r3, [sp, #0x4]
  2eac70: 4a09         	ldr	r2, [pc, #0x24]         @ 0x2eac98 <BodyTableView::BodyTableView()+0x70>
  2eac72: 58a2         	ldr	r2, [r4, r2]
  2eac74: f502 721e    	add.w	r2, r2, #0x278
  2eac78: f8c3 2198    	str.w	r2, [r3, #0x198]
  2eac7c: 9b01         	ldr	r3, [sp, #0x4]
  2eac7e: 4a06         	ldr	r2, [pc, #0x18]         @ 0x2eac98 <BodyTableView::BodyTableView()+0x70>
  2eac80: 58a2         	ldr	r2, [r4, r2]
  2eac82: f502 7224    	add.w	r2, r2, #0x290
  2eac86: f8c3 21c8    	str.w	r2, [r3, #0x1c8]
  2eac8a: 9b01         	ldr	r3, [sp, #0x4]
  2eac8c: 4618         	mov	r0, r3
  2eac8e: b002         	add	sp, #0x8
  2eac90: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2eac91); words below are literal-pool data ---
  2eac92: bf00         	nop
  2eac94: 7dd8         	ldrb	r0, [r3, #0x17]
  2eac96: 0064         	lsls	r4, r4, #0x1
  2eac98: d884         	bhi	0x2eaba4 <EyeWareTableView::EyeWareTableView()+0x64> @ imm = #-0xf8
  2eac9a: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== BodyTableView::numberOfCellsInTableView
//      file offset 0x2fb020 (= ELF address; Ghidra 0x30b020), 14 bytes, Thumb-2
  2fb020: b082         	sub	sp, #0x8
  2fb022: 9001         	str	r0, [sp, #0x4]
  2fb024: 9100         	str	r1, [sp]
  2fb026: 2302         	movs	r3, #0x2
  2fb028: 4618         	mov	r0, r3
  2fb02a: b002         	add	sp, #0x8
  2fb02c: 4770         	bx	lr

// ==== BodyTableView::numberOfCellsInTableView
//      file offset 0x2fb030 (= ELF address; Ghidra 0x30b030), 8 bytes, Thumb-2
  2fb030: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fb034: f7ff bff4    	b.w	0x2fb020 <BodyTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*)> @ imm = #-0x18

// ==== BodyTableView::getIdentifier
//      file offset 0x2fb038 (= ELF address; Ghidra 0x30b038), 68 bytes, Thumb-2
  2fb038: b500         	push	{lr}
  2fb03a: b085         	sub	sp, #0x14
  2fb03c: 9001         	str	r0, [sp, #0x4]
  2fb03e: 9100         	str	r1, [sp]
  2fb040: ab03         	add	r3, sp, #0xc
  2fb042: 4618         	mov	r0, r3
  2fb044: f08f f1d6    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x48f3ac
  2fb048: ab03         	add	r3, sp, #0xc
  2fb04a: 9801         	ldr	r0, [sp, #0x4]
  2fb04c: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x2fb078 <BodyTableView::getIdentifier()+0x40>
  2fb04e: 447a         	add	r2, pc
  2fb050: 4611         	mov	r1, r2
  2fb052: 461a         	mov	r2, r3
  2fb054: f0bb f504    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4bba08
  2fb058: ab03         	add	r3, sp, #0xc
  2fb05a: 4618         	mov	r0, r3
  2fb05c: f08f f1ce    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x48f39c
  2fb060: e005         	b	0x2fb06e <BodyTableView::getIdentifier()+0x36> @ imm = #0xa
  2fb062: ab03         	add	r3, sp, #0xc
  2fb064: 4618         	mov	r0, r3
  2fb066: f08f f1c9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x48f392
  2fb06a: f08d f01f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48d03e
  2fb06e: 9801         	ldr	r0, [sp, #0x4]
  2fb070: b005         	add	sp, #0x14
  2fb072: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2fb075); words below are literal-pool data ---
  2fb076: bf00         	nop
  2fb078: 9792         	str	r7, [sp, #0x248]
  2fb07a: 004c         	lsls	r4, r1, #0x1

// ==== BodyTableView::tableCellAtIndex
//      file offset 0x2fb07c (= ELF address; Ghidra 0x30b07c), 332 bytes, Thumb-2
  2fb07c: b510         	push	{r4, lr}
  2fb07e: b090         	sub	sp, #0x40
  2fb080: 9003         	str	r0, [sp, #0xc]
  2fb082: 9102         	str	r1, [sp, #0x8]
  2fb084: 9201         	str	r2, [sp, #0x4]
  2fb086: 9802         	ldr	r0, [sp, #0x8]
  2fb088: f158 fbc6    	bl	0x453818 <cocos2d::extension::CCTableView::dequeueCell()> @ imm = #0x15878c
  2fb08c: 4603         	mov	r3, r0
  2fb08e: 9305         	str	r3, [sp, #0x14]
  2fb090: 9b05         	ldr	r3, [sp, #0x14]
  2fb092: 2b00         	cmp	r3, #0x0
  2fb094: d006         	beq	0x2fb0a4 <BodyTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x28> @ imm = #0xc
  2fb096: 9805         	ldr	r0, [sp, #0x14]
  2fb098: f15a ffa8    	bl	0x455fec <cocos2d::extension::CCTableViewCell::getIdx()> @ imm = #0x15af50
  2fb09c: 4602         	mov	r2, r0
  2fb09e: 9b01         	ldr	r3, [sp, #0x4]
  2fb0a0: 429a         	cmp	r2, r3
  2fb0a2: d001         	beq	0x2fb0a8 <BodyTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x2c> @ imm = #0x2
  2fb0a4: 2301         	movs	r3, #0x1
  2fb0a6: e000         	b	0x2fb0aa <BodyTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x2e> @ imm = #0x0
  2fb0a8: 2300         	movs	r3, #0x0
  2fb0aa: 2b00         	cmp	r3, #0x0
  2fb0ac: d07e         	beq	0x2fb1ac <BodyTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x130> @ imm = #0xfc
  2fb0ae: 20ec         	movs	r0, #0xec
  2fb0b0: f08c f458    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x48c8b0
  2fb0b4: 4603         	mov	r3, r0
  2fb0b6: 461c         	mov	r4, r3
  2fb0b8: 4620         	mov	r0, r4
  2fb0ba: f7fe f97f    	bl	0x2f93bc <cocos2d::extension::CCTableViewCell::CCTableViewCell()> @ imm = #-0x1d02
  2fb0be: 9405         	str	r4, [sp, #0x14]
  2fb0c0: 9b05         	ldr	r3, [sp, #0x14]
  2fb0c2: 4618         	mov	r0, r3
  2fb0c4: f29c ff1a    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x29ce34
  2fb0c8: 9b03         	ldr	r3, [sp, #0xc]
  2fb0ca: 681b         	ldr	r3, [r3]
  2fb0cc: f503 7306    	add.w	r3, r3, #0x218
  2fb0d0: 681c         	ldr	r4, [r3]
  2fb0d2: ab08         	add	r3, sp, #0x20
  2fb0d4: 4618         	mov	r0, r3
  2fb0d6: 9903         	ldr	r1, [sp, #0xc]
  2fb0d8: 9a02         	ldr	r2, [sp, #0x8]
  2fb0da: 9b01         	ldr	r3, [sp, #0x4]
  2fb0dc: 47a0         	blx	r4
  2fb0de: ed9d 7a08    	vldr	s14, [sp, #32]
  2fb0e2: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2fb0e6: eec7 6a27    	vdiv.f32	s13, s14, s15
  2fb0ea: ed9d 7a09    	vldr	s14, [sp, #36]
  2fb0ee: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2fb0f2: eec7 7a27    	vdiv.f32	s15, s14, s15
  2fb0f6: ab0a         	add	r3, sp, #0x28
  2fb0f8: 4618         	mov	r0, r3
  2fb0fa: ee16 1a90    	vmov	r1, s13
  2fb0fe: ee17 2a90    	vmov	r2, s15
  2fb102: f297 fdf5    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x297bea
  2fb106: f7f8 fcd7    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x7652
  2fb10a: 4602         	mov	r2, r0
  2fb10c: 9b01         	ldr	r3, [sp, #0x4]
  2fb10e: 011b         	lsls	r3, r3, #0x4
  2fb110: f603 3378    	addw	r3, r3, #0xb78
  2fb114: 4413         	add	r3, r2
  2fb116: 3304         	adds	r3, #0x4
  2fb118: aa0c         	add	r2, sp, #0x30
  2fb11a: 4610         	mov	r0, r2
  2fb11c: 4619         	mov	r1, r3
  2fb11e: f298 f8fb    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x2981f6
  2fb122: ab0c         	add	r3, sp, #0x30
  2fb124: 4a26         	ldr	r2, [pc, #0x98]         @ 0x2fb1c0 <BodyTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x144>
  2fb126: 447a         	add	r2, pc
  2fb128: 4610         	mov	r0, r2
  2fb12a: 4619         	mov	r1, r3
  2fb12c: f2dd f868    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2dd0d0
  2fb130: 4603         	mov	r3, r0
  2fb132: 9306         	str	r3, [sp, #0x18]
  2fb134: 9b06         	ldr	r3, [sp, #0x18]
  2fb136: 681b         	ldr	r3, [r3]
  2fb138: f503 73fa    	add.w	r3, r3, #0x1f4
  2fb13c: 681b         	ldr	r3, [r3]
  2fb13e: 9806         	ldr	r0, [sp, #0x18]
  2fb140: 4798         	blx	r3
  2fb142: 4603         	mov	r3, r0
  2fb144: 4618         	mov	r0, r3
  2fb146: f2f6 ff1d    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2f6e3a
  2fb14a: 9b06         	ldr	r3, [sp, #0x18]
  2fb14c: 681b         	ldr	r3, [r3]
  2fb14e: 334c         	adds	r3, #0x4c
  2fb150: 681b         	ldr	r3, [r3]
  2fb152: aa0a         	add	r2, sp, #0x28
  2fb154: 9806         	ldr	r0, [sp, #0x18]
  2fb156: 4611         	mov	r1, r2
  2fb158: 4798         	blx	r3
  2fb15a: 4b1a         	ldr	r3, [pc, #0x68]         @ 0x2fb1c4 <BodyTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x148>
  2fb15c: 447b         	add	r3, pc
  2fb15e: 4618         	mov	r0, r3
  2fb160: f2dd f8d0    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2dd1a0
  2fb164: 4603         	mov	r3, r0
  2fb166: 9307         	str	r3, [sp, #0x1c]
  2fb168: 9b07         	ldr	r3, [sp, #0x1c]
  2fb16a: 681b         	ldr	r3, [r3]
  2fb16c: 334c         	adds	r3, #0x4c
  2fb16e: 681b         	ldr	r3, [r3]
  2fb170: aa0a         	add	r2, sp, #0x28
  2fb172: 9807         	ldr	r0, [sp, #0x1c]
  2fb174: 4611         	mov	r1, r2
  2fb176: 4798         	blx	r3
  2fb178: 9b07         	ldr	r3, [sp, #0x1c]
  2fb17a: 681b         	ldr	r3, [r3]
  2fb17c: 3340         	adds	r3, #0x40
  2fb17e: 681b         	ldr	r3, [r3]
  2fb180: 9807         	ldr	r0, [sp, #0x1c]
  2fb182: f649 119a    	movw	r1, #0x999a
  2fb186: f6c3 7119    	movt	r1, #0x3f19
  2fb18a: 4798         	blx	r3
  2fb18c: 9b05         	ldr	r3, [sp, #0x14]
  2fb18e: 681b         	ldr	r3, [r3]
  2fb190: 33c8         	adds	r3, #0xc8
  2fb192: 681b         	ldr	r3, [r3]
  2fb194: 9a05         	ldr	r2, [sp, #0x14]
  2fb196: 4610         	mov	r0, r2
  2fb198: 9907         	ldr	r1, [sp, #0x1c]
  2fb19a: 4798         	blx	r3
  2fb19c: 9b05         	ldr	r3, [sp, #0x14]
  2fb19e: 681b         	ldr	r3, [r3]
  2fb1a0: 33c8         	adds	r3, #0xc8
  2fb1a2: 681b         	ldr	r3, [r3]
  2fb1a4: 9a05         	ldr	r2, [sp, #0x14]
  2fb1a6: 4610         	mov	r0, r2
  2fb1a8: 9906         	ldr	r1, [sp, #0x18]
  2fb1aa: 4798         	blx	r3
  2fb1ac: 9b05         	ldr	r3, [sp, #0x14]
  2fb1ae: e004         	b	0x2fb1ba <BodyTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x13e> @ imm = #0x8
  2fb1b0: 4620         	mov	r0, r4
  2fb1b2: f08c f777    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48ceee
  2fb1b6: f08c f779    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48cef2
  2fb1ba: 4618         	mov	r0, r3
  2fb1bc: b010         	add	sp, #0x40
  2fb1be: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2fb1bf); words below are literal-pool data ---
  2fb1c0: 960a         	str	r6, [sp, #0x28]
  2fb1c2: 004c         	lsls	r4, r1, #0x1
  2fb1c4: 95e8         	str	r5, [sp, #0x3a0]
  2fb1c6: 004c         	lsls	r4, r1, #0x1

// ==== BodyTableView::tableCellAtIndex
//      file offset 0x2fb1c8 (= ELF address; Ghidra 0x30b1c8), 8 bytes, Thumb-2
  2fb1c8: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fb1cc: f7ff bf56    	b.w	0x2fb07c <BodyTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)> @ imm = #-0x154

// ==== BodyTableView::tableCellSizeForIndex
//      file offset 0x2fb1d0 (= ELF address; Ghidra 0x30b1d0), 54 bytes, Thumb-2
  2fb1d0: b500         	push	{lr}
  2fb1d2: b085         	sub	sp, #0x14
  2fb1d4: 9003         	str	r0, [sp, #0xc]
  2fb1d6: 9102         	str	r1, [sp, #0x8]
  2fb1d8: 9201         	str	r2, [sp, #0x4]
  2fb1da: 9300         	str	r3, [sp]
  2fb1dc: 9b01         	ldr	r3, [sp, #0x4]
  2fb1de: 681b         	ldr	r3, [r3]
  2fb1e0: 338c         	adds	r3, #0x8c
  2fb1e2: 681b         	ldr	r3, [r3]
  2fb1e4: 9a01         	ldr	r2, [sp, #0x4]
  2fb1e6: 4610         	mov	r0, r2
  2fb1e8: 4798         	blx	r3
  2fb1ea: 4603         	mov	r3, r0
  2fb1ec: 681b         	ldr	r3, [r3]
  2fb1ee: 9803         	ldr	r0, [sp, #0xc]
  2fb1f0: 4619         	mov	r1, r3
  2fb1f2: f04f 0200    	mov.w	r2, #0x0
  2fb1f6: f2c4 228c    	movt	r2, #0x428c
  2fb1fa: f297 ff4b    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x297e96
  2fb1fe: 9803         	ldr	r0, [sp, #0xc]
  2fb200: b005         	add	sp, #0x14
  2fb202: f85d fb04    	ldr	pc, [sp], #4

// ==== BodyTableView::tableCellSizeForIndex
//      file offset 0x2fb208 (= ELF address; Ghidra 0x30b208), 8 bytes, Thumb-2
  2fb208: f5a1 71e4    	sub.w	r1, r1, #0x1c8
  2fb20c: f7ff bfe0    	b.w	0x2fb1d0 <BodyTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int)> @ imm = #-0x40

// ==== BodyTableView::~BodyTableView
//      file offset 0x2fc0e8 (= ELF address; Ghidra 0x30c0e8), 128 bytes, Thumb-2
  2fc0e8: b500         	push	{lr}
  2fc0ea: b083         	sub	sp, #0xc
  2fc0ec: 9001         	str	r0, [sp, #0x4]
  2fc0ee: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x2fc160 <BodyTableView::~BodyTableView()+0x78>
  2fc0f0: 447b         	add	r3, pc
  2fc0f2: 9a01         	ldr	r2, [sp, #0x4]
  2fc0f4: 491b         	ldr	r1, [pc, #0x6c]         @ 0x2fc164 <BodyTableView::~BodyTableView()+0x7c>
  2fc0f6: 5859         	ldr	r1, [r3, r1]
  2fc0f8: 3108         	adds	r1, #0x8
  2fc0fa: 6011         	str	r1, [r2]
  2fc0fc: 9a01         	ldr	r2, [sp, #0x4]
  2fc0fe: 4919         	ldr	r1, [pc, #0x64]         @ 0x2fc164 <BodyTableView::~BodyTableView()+0x7c>
  2fc100: 5859         	ldr	r1, [r3, r1]
  2fc102: f501 710b    	add.w	r1, r1, #0x22c
  2fc106: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  2fc10a: 9a01         	ldr	r2, [sp, #0x4]
  2fc10c: 4915         	ldr	r1, [pc, #0x54]         @ 0x2fc164 <BodyTableView::~BodyTableView()+0x7c>
  2fc10e: 5859         	ldr	r1, [r3, r1]
  2fc110: f501 7117    	add.w	r1, r1, #0x25c
  2fc114: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  2fc118: 9a01         	ldr	r2, [sp, #0x4]
  2fc11a: 4912         	ldr	r1, [pc, #0x48]         @ 0x2fc164 <BodyTableView::~BodyTableView()+0x7c>
  2fc11c: 5859         	ldr	r1, [r3, r1]
  2fc11e: f501 711a    	add.w	r1, r1, #0x268
  2fc122: f8c2 10ec    	str.w	r1, [r2, #0xec]
  2fc126: 9a01         	ldr	r2, [sp, #0x4]
  2fc128: 490e         	ldr	r1, [pc, #0x38]         @ 0x2fc164 <BodyTableView::~BodyTableView()+0x7c>
  2fc12a: 5859         	ldr	r1, [r3, r1]
  2fc12c: f501 711e    	add.w	r1, r1, #0x278
  2fc130: f8c2 1198    	str.w	r1, [r2, #0x198]
  2fc134: 9a01         	ldr	r2, [sp, #0x4]
  2fc136: 490b         	ldr	r1, [pc, #0x2c]         @ 0x2fc164 <BodyTableView::~BodyTableView()+0x7c>
  2fc138: 585b         	ldr	r3, [r3, r1]
  2fc13a: f503 7324    	add.w	r3, r3, #0x290
  2fc13e: f8c2 31c8    	str.w	r3, [r2, #0x1c8]
  2fc142: 9b01         	ldr	r3, [sp, #0x4]
  2fc144: 4618         	mov	r0, r3
  2fc146: f7ff fd65    	bl	0x2fbc14 <MenuTableView::~MenuTableView()> @ imm = #-0x536
  2fc14a: 2300         	movs	r3, #0x0
  2fc14c: 2b00         	cmp	r3, #0x0
  2fc14e: d002         	beq	0x2fc156 <BodyTableView::~BodyTableView()+0x6e> @ imm = #0x4
  2fc150: 9801         	ldr	r0, [sp, #0x4]
  2fc152: f08b f7a7    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48bf4e
  2fc156: 9b01         	ldr	r3, [sp, #0x4]
  2fc158: 4618         	mov	r0, r3
  2fc15a: b003         	add	sp, #0xc
  2fc15c: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2fc15f); words below are literal-pool data ---
  2fc160: 6918         	ldr	r0, [r3, #0x10]
  2fc162: 0063         	lsls	r3, r4, #0x1
  2fc164: d884         	bhi	0x2fc070 <ShirtTableView::~ShirtTableView()+0x54> @ imm = #-0xf8
  2fc166: ffff f5a0    	<unknown>

// ==== BodyTableView::~BodyTableView
//      file offset 0x2fc168 (= ELF address; Ghidra 0x30c168), 8 bytes, Thumb-2
  2fc168: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fc16c: f7ff bfbc    	b.w	0x2fc0e8 <BodyTableView::~BodyTableView()> @ imm = #-0x88

// ==== BodyTableView::~BodyTableView
//      file offset 0x2fc170 (= ELF address; Ghidra 0x30c170), 8 bytes, Thumb-2
  2fc170: f5a0 70cc    	sub.w	r0, r0, #0x198
  2fc174: f7ff bfb8    	b.w	0x2fc0e8 <BodyTableView::~BodyTableView()> @ imm = #-0x90

// ==== BodyTableView::~BodyTableView
//      file offset 0x2fc178 (= ELF address; Ghidra 0x30c178), 8 bytes, Thumb-2
  2fc178: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2fc17c: f7ff bfb4    	b.w	0x2fc0e8 <BodyTableView::~BodyTableView()> @ imm = #-0x98

// ==== BodyTableView::~BodyTableView
//      file offset 0x2fc180 (= ELF address; Ghidra 0x30c180), 28 bytes, Thumb-2
  2fc180: b500         	push	{lr}
  2fc182: b083         	sub	sp, #0xc
  2fc184: 9001         	str	r0, [sp, #0x4]
  2fc186: 9801         	ldr	r0, [sp, #0x4]
  2fc188: f7ff ffae    	bl	0x2fc0e8 <BodyTableView::~BodyTableView()> @ imm = #-0xa4
  2fc18c: 9801         	ldr	r0, [sp, #0x4]
  2fc18e: f08b f789    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48bf12
  2fc192: 9b01         	ldr	r3, [sp, #0x4]
  2fc194: 4618         	mov	r0, r3
  2fc196: b003         	add	sp, #0xc
  2fc198: f85d fb04    	ldr	pc, [sp], #4

// ==== BodyTableView::~BodyTableView
//      file offset 0x2fc19c (= ELF address; Ghidra 0x30c19c), 6 bytes, Thumb-2
  2fc19c: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fc1a0: e7ee         	b	0x2fc180 <BodyTableView::~BodyTableView()> @ imm = #-0x24

// ==== BodyTableView::~BodyTableView
//      file offset 0x2fc1a4 (= ELF address; Ghidra 0x30c1a4), 6 bytes, Thumb-2
  2fc1a4: f5a0 70cc    	sub.w	r0, r0, #0x198
  2fc1a8: e7ea         	b	0x2fc180 <BodyTableView::~BodyTableView()> @ imm = #-0x2c

// ==== BodyTableView::~BodyTableView
//      file offset 0x2fc1ac (= ELF address; Ghidra 0x30c1ac), 6 bytes, Thumb-2
  2fc1ac: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2fc1b0: e7e6         	b	0x2fc180 <BodyTableView::~BodyTableView()> @ imm = #-0x34
