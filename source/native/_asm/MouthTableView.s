// MouthTableView: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 16 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../MouthTableView.cpp

// ==== MouthTableView::MouthTableView
//      file offset 0x2ea888 (= ELF address; Ghidra 0x2fa888), 116 bytes, Thumb-2
  2ea888: b510         	push	{r4, lr}
  2ea88a: b082         	sub	sp, #0x8
  2ea88c: 9001         	str	r0, [sp, #0x4]
  2ea88e: 4c19         	ldr	r4, [pc, #0x64]         @ 0x2ea8f4 <MouthTableView::MouthTableView()+0x6c>
  2ea890: 447c         	add	r4, pc
  2ea892: 9b01         	ldr	r3, [sp, #0x4]
  2ea894: 4618         	mov	r0, r3
  2ea896: f086 fa03    	bl	0x370ca0 <MenuTableView::MenuTableView()> @ imm = #0x86406
  2ea89a: 9b01         	ldr	r3, [sp, #0x4]
  2ea89c: 4a16         	ldr	r2, [pc, #0x58]         @ 0x2ea8f8 <MouthTableView::MouthTableView()+0x70>
  2ea89e: 58a2         	ldr	r2, [r4, r2]
  2ea8a0: 3208         	adds	r2, #0x8
  2ea8a2: 601a         	str	r2, [r3]
  2ea8a4: 9b01         	ldr	r3, [sp, #0x4]
  2ea8a6: 4a14         	ldr	r2, [pc, #0x50]         @ 0x2ea8f8 <MouthTableView::MouthTableView()+0x70>
  2ea8a8: 58a2         	ldr	r2, [r4, r2]
  2ea8aa: f502 720b    	add.w	r2, r2, #0x22c
  2ea8ae: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  2ea8b2: 9b01         	ldr	r3, [sp, #0x4]
  2ea8b4: 4a10         	ldr	r2, [pc, #0x40]         @ 0x2ea8f8 <MouthTableView::MouthTableView()+0x70>
  2ea8b6: 58a2         	ldr	r2, [r4, r2]
  2ea8b8: f502 7217    	add.w	r2, r2, #0x25c
  2ea8bc: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  2ea8c0: 9b01         	ldr	r3, [sp, #0x4]
  2ea8c2: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x2ea8f8 <MouthTableView::MouthTableView()+0x70>
  2ea8c4: 58a2         	ldr	r2, [r4, r2]
  2ea8c6: f502 721a    	add.w	r2, r2, #0x268
  2ea8ca: f8c3 20ec    	str.w	r2, [r3, #0xec]
  2ea8ce: 9b01         	ldr	r3, [sp, #0x4]
  2ea8d0: 4a09         	ldr	r2, [pc, #0x24]         @ 0x2ea8f8 <MouthTableView::MouthTableView()+0x70>
  2ea8d2: 58a2         	ldr	r2, [r4, r2]
  2ea8d4: f502 721e    	add.w	r2, r2, #0x278
  2ea8d8: f8c3 2198    	str.w	r2, [r3, #0x198]
  2ea8dc: 9b01         	ldr	r3, [sp, #0x4]
  2ea8de: 4a06         	ldr	r2, [pc, #0x18]         @ 0x2ea8f8 <MouthTableView::MouthTableView()+0x70>
  2ea8e0: 58a2         	ldr	r2, [r4, r2]
  2ea8e2: f502 7224    	add.w	r2, r2, #0x290
  2ea8e6: f8c3 21c8    	str.w	r2, [r3, #0x1c8]
  2ea8ea: 9b01         	ldr	r3, [sp, #0x4]
  2ea8ec: 4618         	mov	r0, r3
  2ea8ee: b002         	add	sp, #0x8
  2ea8f0: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2ea8f1); words below are literal-pool data ---
  2ea8f2: bf00         	nop
  2ea8f4: 8178         	strh	r0, [r7, #0xa]
  2ea8f6: 0064         	lsls	r4, r4, #0x1
  2ea8f8: d864         	bhi	0x2ea9c4 <BackHairTableView::BackHairTableView()+0x54> @ imm = #0xc8
  2ea8fa: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== MouthTableView::numberOfCellsInTableView
//      file offset 0x2fa030 (= ELF address; Ghidra 0x30a030), 14 bytes, Thumb-2
  2fa030: b082         	sub	sp, #0x8
  2fa032: 9001         	str	r0, [sp, #0x4]
  2fa034: 9100         	str	r1, [sp]
  2fa036: 2312         	movs	r3, #0x12
  2fa038: 4618         	mov	r0, r3
  2fa03a: b002         	add	sp, #0x8
  2fa03c: 4770         	bx	lr

// ==== MouthTableView::numberOfCellsInTableView
//      file offset 0x2fa040 (= ELF address; Ghidra 0x30a040), 8 bytes, Thumb-2
  2fa040: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fa044: f7ff bff4    	b.w	0x2fa030 <MouthTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*)> @ imm = #-0x18

// ==== MouthTableView::getIdentifier
//      file offset 0x2fa048 (= ELF address; Ghidra 0x30a048), 68 bytes, Thumb-2
  2fa048: b500         	push	{lr}
  2fa04a: b085         	sub	sp, #0x14
  2fa04c: 9001         	str	r0, [sp, #0x4]
  2fa04e: 9100         	str	r1, [sp]
  2fa050: ab03         	add	r3, sp, #0xc
  2fa052: 4618         	mov	r0, r3
  2fa054: f090 f1ce    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x49039c
  2fa058: ab03         	add	r3, sp, #0xc
  2fa05a: 9801         	ldr	r0, [sp, #0x4]
  2fa05c: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x2fa088 <MouthTableView::getIdentifier()+0x40>
  2fa05e: 447a         	add	r2, pc
  2fa060: 4611         	mov	r1, r2
  2fa062: 461a         	mov	r2, r3
  2fa064: f0bc f4fc    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4bc9f8
  2fa068: ab03         	add	r3, sp, #0xc
  2fa06a: 4618         	mov	r0, r3
  2fa06c: f090 f1c6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x49038c
  2fa070: e005         	b	0x2fa07e <MouthTableView::getIdentifier()+0x36> @ imm = #0xa
  2fa072: ab03         	add	r3, sp, #0xc
  2fa074: 4618         	mov	r0, r3
  2fa076: f090 f1c1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x490382
  2fa07a: f08e f017    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48e02e
  2fa07e: 9801         	ldr	r0, [sp, #0x4]
  2fa080: b005         	add	sp, #0x14
  2fa082: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2fa085); words below are literal-pool data ---
  2fa086: bf00         	nop
  2fa088: a73a         	adr	r7, #232 <MouthTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x3a>
  2fa08a: 004c         	lsls	r4, r1, #0x1

// ==== MouthTableView::tableCellAtIndex
//      file offset 0x2fa08c (= ELF address; Ghidra 0x30a08c), 352 bytes, Thumb-2
  2fa08c: b510         	push	{r4, lr}
  2fa08e: b090         	sub	sp, #0x40
  2fa090: 9003         	str	r0, [sp, #0xc]
  2fa092: 9102         	str	r1, [sp, #0x8]
  2fa094: 9201         	str	r2, [sp, #0x4]
  2fa096: 9802         	ldr	r0, [sp, #0x8]
  2fa098: f159 fbbe    	bl	0x453818 <cocos2d::extension::CCTableView::dequeueCell()> @ imm = #0x15977c
  2fa09c: 4603         	mov	r3, r0
  2fa09e: 9305         	str	r3, [sp, #0x14]
  2fa0a0: 9b05         	ldr	r3, [sp, #0x14]
  2fa0a2: 2b00         	cmp	r3, #0x0
  2fa0a4: d006         	beq	0x2fa0b4 <MouthTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x28> @ imm = #0xc
  2fa0a6: 9805         	ldr	r0, [sp, #0x14]
  2fa0a8: f15b ffa0    	bl	0x455fec <cocos2d::extension::CCTableViewCell::getIdx()> @ imm = #0x15bf40
  2fa0ac: 4602         	mov	r2, r0
  2fa0ae: 9b01         	ldr	r3, [sp, #0x4]
  2fa0b0: 429a         	cmp	r2, r3
  2fa0b2: d001         	beq	0x2fa0b8 <MouthTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x2c> @ imm = #0x2
  2fa0b4: 2301         	movs	r3, #0x1
  2fa0b6: e000         	b	0x2fa0ba <MouthTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x2e> @ imm = #0x0
  2fa0b8: 2300         	movs	r3, #0x0
  2fa0ba: 2b00         	cmp	r3, #0x0
  2fa0bc: f000 8088    	beq.w	0x2fa1d0 <MouthTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x144> @ imm = #0x110
  2fa0c0: 20ec         	movs	r0, #0xec
  2fa0c2: f08d f44f    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x48d89e
  2fa0c6: 4603         	mov	r3, r0
  2fa0c8: 461c         	mov	r4, r3
  2fa0ca: 4620         	mov	r0, r4
  2fa0cc: f7ff f976    	bl	0x2f93bc <cocos2d::extension::CCTableViewCell::CCTableViewCell()> @ imm = #-0xd14
  2fa0d0: 9405         	str	r4, [sp, #0x14]
  2fa0d2: 9b05         	ldr	r3, [sp, #0x14]
  2fa0d4: 4618         	mov	r0, r3
  2fa0d6: f29d ff11    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x29de22
  2fa0da: 9b03         	ldr	r3, [sp, #0xc]
  2fa0dc: 681b         	ldr	r3, [r3]
  2fa0de: f503 7306    	add.w	r3, r3, #0x218
  2fa0e2: 681c         	ldr	r4, [r3]
  2fa0e4: ab08         	add	r3, sp, #0x20
  2fa0e6: 4618         	mov	r0, r3
  2fa0e8: 9903         	ldr	r1, [sp, #0xc]
  2fa0ea: 9a02         	ldr	r2, [sp, #0x8]
  2fa0ec: 9b01         	ldr	r3, [sp, #0x4]
  2fa0ee: 47a0         	blx	r4
  2fa0f0: ed9d 7a08    	vldr	s14, [sp, #32]
  2fa0f4: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2fa0f8: eec7 6a27    	vdiv.f32	s13, s14, s15
  2fa0fc: ed9d 7a09    	vldr	s14, [sp, #36]
  2fa100: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2fa104: eec7 7a27    	vdiv.f32	s15, s14, s15
  2fa108: ab0a         	add	r3, sp, #0x28
  2fa10a: 4618         	mov	r0, r3
  2fa10c: ee16 1a90    	vmov	r1, s13
  2fa110: ee17 2a90    	vmov	r2, s15
  2fa114: f298 fdec    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x298bd8
  2fa118: f7f9 fcce    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x6664
  2fa11c: 4602         	mov	r2, r0
  2fa11e: 9b01         	ldr	r3, [sp, #0x4]
  2fa120: 3336         	adds	r3, #0x36
  2fa122: 011b         	lsls	r3, r3, #0x4
  2fa124: 4413         	add	r3, r2
  2fa126: 3304         	adds	r3, #0x4
  2fa128: aa0c         	add	r2, sp, #0x30
  2fa12a: 4610         	mov	r0, r2
  2fa12c: 4619         	mov	r1, r3
  2fa12e: f299 f8f3    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x2991e6
  2fa132: ab0c         	add	r3, sp, #0x30
  2fa134: 4a2b         	ldr	r2, [pc, #0xac]         @ 0x2fa1e4 <MouthTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x158>
  2fa136: 447a         	add	r2, pc
  2fa138: 4610         	mov	r0, r2
  2fa13a: 4619         	mov	r1, r3
  2fa13c: f2de f860    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2de0c0
  2fa140: 4603         	mov	r3, r0
  2fa142: 9306         	str	r3, [sp, #0x18]
  2fa144: 9b06         	ldr	r3, [sp, #0x18]
  2fa146: 681b         	ldr	r3, [r3]
  2fa148: f503 73fa    	add.w	r3, r3, #0x1f4
  2fa14c: 681b         	ldr	r3, [r3]
  2fa14e: 9806         	ldr	r0, [sp, #0x18]
  2fa150: 4798         	blx	r3
  2fa152: 4603         	mov	r3, r0
  2fa154: 4618         	mov	r0, r3
  2fa156: f2f7 ff15    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2f7e2a
  2fa15a: 9b06         	ldr	r3, [sp, #0x18]
  2fa15c: 681b         	ldr	r3, [r3]
  2fa15e: 334c         	adds	r3, #0x4c
  2fa160: 681b         	ldr	r3, [r3]
  2fa162: aa0a         	add	r2, sp, #0x28
  2fa164: 9806         	ldr	r0, [sp, #0x18]
  2fa166: 4611         	mov	r1, r2
  2fa168: 4798         	blx	r3
  2fa16a: 4b1f         	ldr	r3, [pc, #0x7c]         @ 0x2fa1e8 <MouthTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x15c>
  2fa16c: 447b         	add	r3, pc
  2fa16e: 4618         	mov	r0, r3
  2fa170: f2de f8c8    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2de190
  2fa174: 4603         	mov	r3, r0
  2fa176: 9307         	str	r3, [sp, #0x1c]
  2fa178: 9b06         	ldr	r3, [sp, #0x18]
  2fa17a: 681b         	ldr	r3, [r3]
  2fa17c: 3340         	adds	r3, #0x40
  2fa17e: 681b         	ldr	r3, [r3]
  2fa180: 9806         	ldr	r0, [sp, #0x18]
  2fa182: f04f 0100    	mov.w	r1, #0x0
  2fa186: f6c3 71a0    	movt	r1, #0x3fa0
  2fa18a: 4798         	blx	r3
  2fa18c: 9b07         	ldr	r3, [sp, #0x1c]
  2fa18e: 681b         	ldr	r3, [r3]
  2fa190: 334c         	adds	r3, #0x4c
  2fa192: 681b         	ldr	r3, [r3]
  2fa194: aa0a         	add	r2, sp, #0x28
  2fa196: 9807         	ldr	r0, [sp, #0x1c]
  2fa198: 4611         	mov	r1, r2
  2fa19a: 4798         	blx	r3
  2fa19c: 9b07         	ldr	r3, [sp, #0x1c]
  2fa19e: 681b         	ldr	r3, [r3]
  2fa1a0: 3340         	adds	r3, #0x40
  2fa1a2: 681b         	ldr	r3, [r3]
  2fa1a4: 9807         	ldr	r0, [sp, #0x1c]
  2fa1a6: f64c 41cd    	movw	r1, #0xcccd
  2fa1aa: f6c3 61cc    	movt	r1, #0x3ecc
  2fa1ae: 4798         	blx	r3
  2fa1b0: 9b05         	ldr	r3, [sp, #0x14]
  2fa1b2: 681b         	ldr	r3, [r3]
  2fa1b4: 33c8         	adds	r3, #0xc8
  2fa1b6: 681b         	ldr	r3, [r3]
  2fa1b8: 9a05         	ldr	r2, [sp, #0x14]
  2fa1ba: 4610         	mov	r0, r2
  2fa1bc: 9907         	ldr	r1, [sp, #0x1c]
  2fa1be: 4798         	blx	r3
  2fa1c0: 9b05         	ldr	r3, [sp, #0x14]
  2fa1c2: 681b         	ldr	r3, [r3]
  2fa1c4: 33c8         	adds	r3, #0xc8
  2fa1c6: 681b         	ldr	r3, [r3]
  2fa1c8: 9a05         	ldr	r2, [sp, #0x14]
  2fa1ca: 4610         	mov	r0, r2
  2fa1cc: 9906         	ldr	r1, [sp, #0x18]
  2fa1ce: 4798         	blx	r3
  2fa1d0: 9b05         	ldr	r3, [sp, #0x14]
  2fa1d2: e004         	b	0x2fa1de <MouthTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x152> @ imm = #0x8
  2fa1d4: 4620         	mov	r0, r4
  2fa1d6: f08d f765    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48deca
  2fa1da: f08d f767    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48dece
  2fa1de: 4618         	mov	r0, r3
  2fa1e0: b010         	add	sp, #0x40
  2fa1e2: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2fa1e3); words below are literal-pool data ---
  2fa1e4: a5fa         	adr	r5, #1000 <HairTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x52>
  2fa1e6: 004c         	lsls	r4, r1, #0x1
  2fa1e8: a5d8         	adr	r5, #864 <HairTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x34>
  2fa1ea: 004c         	lsls	r4, r1, #0x1

// ==== MouthTableView::tableCellAtIndex
//      file offset 0x2fa1ec (= ELF address; Ghidra 0x30a1ec), 8 bytes, Thumb-2
  2fa1ec: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fa1f0: f7ff bf4c    	b.w	0x2fa08c <MouthTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)> @ imm = #-0x168

// ==== MouthTableView::tableCellSizeForIndex
//      file offset 0x2fa1f4 (= ELF address; Ghidra 0x30a1f4), 54 bytes, Thumb-2
  2fa1f4: b500         	push	{lr}
  2fa1f6: b085         	sub	sp, #0x14
  2fa1f8: 9003         	str	r0, [sp, #0xc]
  2fa1fa: 9102         	str	r1, [sp, #0x8]
  2fa1fc: 9201         	str	r2, [sp, #0x4]
  2fa1fe: 9300         	str	r3, [sp]
  2fa200: 9b01         	ldr	r3, [sp, #0x4]
  2fa202: 681b         	ldr	r3, [r3]
  2fa204: 338c         	adds	r3, #0x8c
  2fa206: 681b         	ldr	r3, [r3]
  2fa208: 9a01         	ldr	r2, [sp, #0x4]
  2fa20a: 4610         	mov	r0, r2
  2fa20c: 4798         	blx	r3
  2fa20e: 4603         	mov	r3, r0
  2fa210: 681b         	ldr	r3, [r3]
  2fa212: 9803         	ldr	r0, [sp, #0xc]
  2fa214: 4619         	mov	r1, r3
  2fa216: f04f 0200    	mov.w	r2, #0x0
  2fa21a: f2c4 2220    	movt	r2, #0x4220
  2fa21e: f298 ff39    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x298e72
  2fa222: 9803         	ldr	r0, [sp, #0xc]
  2fa224: b005         	add	sp, #0x14
  2fa226: f85d fb04    	ldr	pc, [sp], #4

// ==== MouthTableView::tableCellSizeForIndex
//      file offset 0x2fa22c (= ELF address; Ghidra 0x30a22c), 8 bytes, Thumb-2
  2fa22c: f5a1 71e4    	sub.w	r1, r1, #0x1c8
  2fa230: f7ff bfe0    	b.w	0x2fa1f4 <MouthTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int)> @ imm = #-0x40

// ==== MouthTableView::~MouthTableView
//      file offset 0x2fc814 (= ELF address; Ghidra 0x30c814), 128 bytes, Thumb-2
  2fc814: b500         	push	{lr}
  2fc816: b083         	sub	sp, #0xc
  2fc818: 9001         	str	r0, [sp, #0x4]
  2fc81a: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x2fc88c <MouthTableView::~MouthTableView()+0x78>
  2fc81c: 447b         	add	r3, pc
  2fc81e: 9a01         	ldr	r2, [sp, #0x4]
  2fc820: 491b         	ldr	r1, [pc, #0x6c]         @ 0x2fc890 <MouthTableView::~MouthTableView()+0x7c>
  2fc822: 5859         	ldr	r1, [r3, r1]
  2fc824: 3108         	adds	r1, #0x8
  2fc826: 6011         	str	r1, [r2]
  2fc828: 9a01         	ldr	r2, [sp, #0x4]
  2fc82a: 4919         	ldr	r1, [pc, #0x64]         @ 0x2fc890 <MouthTableView::~MouthTableView()+0x7c>
  2fc82c: 5859         	ldr	r1, [r3, r1]
  2fc82e: f501 710b    	add.w	r1, r1, #0x22c
  2fc832: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  2fc836: 9a01         	ldr	r2, [sp, #0x4]
  2fc838: 4915         	ldr	r1, [pc, #0x54]         @ 0x2fc890 <MouthTableView::~MouthTableView()+0x7c>
  2fc83a: 5859         	ldr	r1, [r3, r1]
  2fc83c: f501 7117    	add.w	r1, r1, #0x25c
  2fc840: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  2fc844: 9a01         	ldr	r2, [sp, #0x4]
  2fc846: 4912         	ldr	r1, [pc, #0x48]         @ 0x2fc890 <MouthTableView::~MouthTableView()+0x7c>
  2fc848: 5859         	ldr	r1, [r3, r1]
  2fc84a: f501 711a    	add.w	r1, r1, #0x268
  2fc84e: f8c2 10ec    	str.w	r1, [r2, #0xec]
  2fc852: 9a01         	ldr	r2, [sp, #0x4]
  2fc854: 490e         	ldr	r1, [pc, #0x38]         @ 0x2fc890 <MouthTableView::~MouthTableView()+0x7c>
  2fc856: 5859         	ldr	r1, [r3, r1]
  2fc858: f501 711e    	add.w	r1, r1, #0x278
  2fc85c: f8c2 1198    	str.w	r1, [r2, #0x198]
  2fc860: 9a01         	ldr	r2, [sp, #0x4]
  2fc862: 490b         	ldr	r1, [pc, #0x2c]         @ 0x2fc890 <MouthTableView::~MouthTableView()+0x7c>
  2fc864: 585b         	ldr	r3, [r3, r1]
  2fc866: f503 7324    	add.w	r3, r3, #0x290
  2fc86a: f8c2 31c8    	str.w	r3, [r2, #0x1c8]
  2fc86e: 9b01         	ldr	r3, [sp, #0x4]
  2fc870: 4618         	mov	r0, r3
  2fc872: f7ff f9cf    	bl	0x2fbc14 <MenuTableView::~MenuTableView()> @ imm = #-0xc62
  2fc876: 2300         	movs	r3, #0x0
  2fc878: 2b00         	cmp	r3, #0x0
  2fc87a: d002         	beq	0x2fc882 <MouthTableView::~MouthTableView()+0x6e> @ imm = #0x4
  2fc87c: 9801         	ldr	r0, [sp, #0x4]
  2fc87e: f08b f411    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48b822
  2fc882: 9b01         	ldr	r3, [sp, #0x4]
  2fc884: 4618         	mov	r0, r3
  2fc886: b003         	add	sp, #0xc
  2fc888: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2fc88b); words below are literal-pool data ---
  2fc88c: 61ec         	str	r4, [r5, #0x1c]
  2fc88e: 0063         	lsls	r3, r4, #0x1
  2fc890: d864         	bhi	0x2fc95c <BrowTableView::~BrowTableView()+0x7c> @ imm = #0xc8
  2fc892: ffff f5a0    	<unknown>

// ==== MouthTableView::~MouthTableView
//      file offset 0x2fc894 (= ELF address; Ghidra 0x30c894), 8 bytes, Thumb-2
  2fc894: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fc898: f7ff bfbc    	b.w	0x2fc814 <MouthTableView::~MouthTableView()> @ imm = #-0x88

// ==== MouthTableView::~MouthTableView
//      file offset 0x2fc89c (= ELF address; Ghidra 0x30c89c), 8 bytes, Thumb-2
  2fc89c: f5a0 70cc    	sub.w	r0, r0, #0x198
  2fc8a0: f7ff bfb8    	b.w	0x2fc814 <MouthTableView::~MouthTableView()> @ imm = #-0x90

// ==== MouthTableView::~MouthTableView
//      file offset 0x2fc8a4 (= ELF address; Ghidra 0x30c8a4), 8 bytes, Thumb-2
  2fc8a4: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2fc8a8: f7ff bfb4    	b.w	0x2fc814 <MouthTableView::~MouthTableView()> @ imm = #-0x98

// ==== MouthTableView::~MouthTableView
//      file offset 0x2fc8ac (= ELF address; Ghidra 0x30c8ac), 28 bytes, Thumb-2
  2fc8ac: b500         	push	{lr}
  2fc8ae: b083         	sub	sp, #0xc
  2fc8b0: 9001         	str	r0, [sp, #0x4]
  2fc8b2: 9801         	ldr	r0, [sp, #0x4]
  2fc8b4: f7ff ffae    	bl	0x2fc814 <MouthTableView::~MouthTableView()> @ imm = #-0xa4
  2fc8b8: 9801         	ldr	r0, [sp, #0x4]
  2fc8ba: f08b f3f3    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48b7e6
  2fc8be: 9b01         	ldr	r3, [sp, #0x4]
  2fc8c0: 4618         	mov	r0, r3
  2fc8c2: b003         	add	sp, #0xc
  2fc8c4: f85d fb04    	ldr	pc, [sp], #4

// ==== MouthTableView::~MouthTableView
//      file offset 0x2fc8c8 (= ELF address; Ghidra 0x30c8c8), 6 bytes, Thumb-2
  2fc8c8: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fc8cc: e7ee         	b	0x2fc8ac <MouthTableView::~MouthTableView()> @ imm = #-0x24

// ==== MouthTableView::~MouthTableView
//      file offset 0x2fc8d0 (= ELF address; Ghidra 0x30c8d0), 6 bytes, Thumb-2
  2fc8d0: f5a0 70cc    	sub.w	r0, r0, #0x198
  2fc8d4: e7ea         	b	0x2fc8ac <MouthTableView::~MouthTableView()> @ imm = #-0x2c

// ==== MouthTableView::~MouthTableView
//      file offset 0x2fc8d8 (= ELF address; Ghidra 0x30c8d8), 6 bytes, Thumb-2
  2fc8d8: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2fc8dc: e7e6         	b	0x2fc8ac <MouthTableView::~MouthTableView()> @ imm = #-0x34
