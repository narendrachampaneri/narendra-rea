// ShirtTableView: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 16 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../ShirtTableView.cpp

// ==== ShirtTableView::ShirtTableView
//      file offset 0x2eac9c (= ELF address; Ghidra 0x2fac9c), 116 bytes, Thumb-2
  2eac9c: b510         	push	{r4, lr}
  2eac9e: b082         	sub	sp, #0x8
  2eaca0: 9001         	str	r0, [sp, #0x4]
  2eaca2: 4c19         	ldr	r4, [pc, #0x64]         @ 0x2ead08 <ShirtTableView::ShirtTableView()+0x6c>
  2eaca4: 447c         	add	r4, pc
  2eaca6: 9b01         	ldr	r3, [sp, #0x4]
  2eaca8: 4618         	mov	r0, r3
  2eacaa: f085 fff9    	bl	0x370ca0 <MenuTableView::MenuTableView()> @ imm = #0x85ff2
  2eacae: 9b01         	ldr	r3, [sp, #0x4]
  2eacb0: 4a16         	ldr	r2, [pc, #0x58]         @ 0x2ead0c <ShirtTableView::ShirtTableView()+0x70>
  2eacb2: 58a2         	ldr	r2, [r4, r2]
  2eacb4: 3208         	adds	r2, #0x8
  2eacb6: 601a         	str	r2, [r3]
  2eacb8: 9b01         	ldr	r3, [sp, #0x4]
  2eacba: 4a14         	ldr	r2, [pc, #0x50]         @ 0x2ead0c <ShirtTableView::ShirtTableView()+0x70>
  2eacbc: 58a2         	ldr	r2, [r4, r2]
  2eacbe: f502 720b    	add.w	r2, r2, #0x22c
  2eacc2: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  2eacc6: 9b01         	ldr	r3, [sp, #0x4]
  2eacc8: 4a10         	ldr	r2, [pc, #0x40]         @ 0x2ead0c <ShirtTableView::ShirtTableView()+0x70>
  2eacca: 58a2         	ldr	r2, [r4, r2]
  2eaccc: f502 7217    	add.w	r2, r2, #0x25c
  2eacd0: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  2eacd4: 9b01         	ldr	r3, [sp, #0x4]
  2eacd6: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x2ead0c <ShirtTableView::ShirtTableView()+0x70>
  2eacd8: 58a2         	ldr	r2, [r4, r2]
  2eacda: f502 721a    	add.w	r2, r2, #0x268
  2eacde: f8c3 20ec    	str.w	r2, [r3, #0xec]
  2eace2: 9b01         	ldr	r3, [sp, #0x4]
  2eace4: 4a09         	ldr	r2, [pc, #0x24]         @ 0x2ead0c <ShirtTableView::ShirtTableView()+0x70>
  2eace6: 58a2         	ldr	r2, [r4, r2]
  2eace8: f502 721e    	add.w	r2, r2, #0x278
  2eacec: f8c3 2198    	str.w	r2, [r3, #0x198]
  2eacf0: 9b01         	ldr	r3, [sp, #0x4]
  2eacf2: 4a06         	ldr	r2, [pc, #0x18]         @ 0x2ead0c <ShirtTableView::ShirtTableView()+0x70>
  2eacf4: 58a2         	ldr	r2, [r4, r2]
  2eacf6: f502 7224    	add.w	r2, r2, #0x290
  2eacfa: f8c3 21c8    	str.w	r2, [r3, #0x1c8]
  2eacfe: 9b01         	ldr	r3, [sp, #0x4]
  2ead00: 4618         	mov	r0, r3
  2ead02: b002         	add	sp, #0x8
  2ead04: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2ead05); words below are literal-pool data ---
  2ead06: bf00         	nop
  2ead08: 7d64         	ldrb	r4, [r4, #0x15]
  2ead0a: 0064         	lsls	r4, r4, #0x1
  2ead0c: d888         	bhi	0x2eac20 <HatTableView::HatTableView()+0x6c> @ imm = #-0xf0
  2ead0e: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== ShirtTableView::numberOfCellsInTableView
//      file offset 0x2fb210 (= ELF address; Ghidra 0x30b210), 14 bytes, Thumb-2
  2fb210: b082         	sub	sp, #0x8
  2fb212: 9001         	str	r0, [sp, #0x4]
  2fb214: 9100         	str	r1, [sp]
  2fb216: 230b         	movs	r3, #0xb
  2fb218: 4618         	mov	r0, r3
  2fb21a: b002         	add	sp, #0x8
  2fb21c: 4770         	bx	lr

// ==== ShirtTableView::numberOfCellsInTableView
//      file offset 0x2fb220 (= ELF address; Ghidra 0x30b220), 8 bytes, Thumb-2
  2fb220: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fb224: f7ff bff4    	b.w	0x2fb210 <ShirtTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*)> @ imm = #-0x18

// ==== ShirtTableView::getIdentifier
//      file offset 0x2fb228 (= ELF address; Ghidra 0x30b228), 68 bytes, Thumb-2
  2fb228: b500         	push	{lr}
  2fb22a: b085         	sub	sp, #0x14
  2fb22c: 9001         	str	r0, [sp, #0x4]
  2fb22e: 9100         	str	r1, [sp]
  2fb230: ab03         	add	r3, sp, #0xc
  2fb232: 4618         	mov	r0, r3
  2fb234: f08f f0de    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x48f1bc
  2fb238: ab03         	add	r3, sp, #0xc
  2fb23a: 9801         	ldr	r0, [sp, #0x4]
  2fb23c: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x2fb268 <ShirtTableView::getIdentifier()+0x40>
  2fb23e: 447a         	add	r2, pc
  2fb240: 4611         	mov	r1, r2
  2fb242: 461a         	mov	r2, r3
  2fb244: f0bb f40c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4bb818
  2fb248: ab03         	add	r3, sp, #0xc
  2fb24a: 4618         	mov	r0, r3
  2fb24c: f08f f0d6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x48f1ac
  2fb250: e005         	b	0x2fb25e <ShirtTableView::getIdentifier()+0x36> @ imm = #0xa
  2fb252: ab03         	add	r3, sp, #0xc
  2fb254: 4618         	mov	r0, r3
  2fb256: f08f f0d1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x48f1a2
  2fb25a: f08c f727    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48ce4e
  2fb25e: 9801         	ldr	r0, [sp, #0x4]
  2fb260: b005         	add	sp, #0x14
  2fb262: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2fb265); words below are literal-pool data ---
  2fb266: bf00         	nop
  2fb268: 95aa         	str	r5, [sp, #0x2a8]
  2fb26a: 004c         	lsls	r4, r1, #0x1

// ==== ShirtTableView::tableCellAtIndex
//      file offset 0x2fb26c (= ELF address; Ghidra 0x30b26c), 332 bytes, Thumb-2
  2fb26c: b510         	push	{r4, lr}
  2fb26e: b090         	sub	sp, #0x40
  2fb270: 9003         	str	r0, [sp, #0xc]
  2fb272: 9102         	str	r1, [sp, #0x8]
  2fb274: 9201         	str	r2, [sp, #0x4]
  2fb276: 9802         	ldr	r0, [sp, #0x8]
  2fb278: f158 face    	bl	0x453818 <cocos2d::extension::CCTableView::dequeueCell()> @ imm = #0x15859c
  2fb27c: 4603         	mov	r3, r0
  2fb27e: 9305         	str	r3, [sp, #0x14]
  2fb280: 9b05         	ldr	r3, [sp, #0x14]
  2fb282: 2b00         	cmp	r3, #0x0
  2fb284: d006         	beq	0x2fb294 <ShirtTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x28> @ imm = #0xc
  2fb286: 9805         	ldr	r0, [sp, #0x14]
  2fb288: f15a feb0    	bl	0x455fec <cocos2d::extension::CCTableViewCell::getIdx()> @ imm = #0x15ad60
  2fb28c: 4602         	mov	r2, r0
  2fb28e: 9b01         	ldr	r3, [sp, #0x4]
  2fb290: 429a         	cmp	r2, r3
  2fb292: d001         	beq	0x2fb298 <ShirtTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x2c> @ imm = #0x2
  2fb294: 2301         	movs	r3, #0x1
  2fb296: e000         	b	0x2fb29a <ShirtTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x2e> @ imm = #0x0
  2fb298: 2300         	movs	r3, #0x0
  2fb29a: 2b00         	cmp	r3, #0x0
  2fb29c: d07e         	beq	0x2fb39c <ShirtTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x130> @ imm = #0xfc
  2fb29e: 20ec         	movs	r0, #0xec
  2fb2a0: f08c f360    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x48c6c0
  2fb2a4: 4603         	mov	r3, r0
  2fb2a6: 461c         	mov	r4, r3
  2fb2a8: 4620         	mov	r0, r4
  2fb2aa: f7fe f887    	bl	0x2f93bc <cocos2d::extension::CCTableViewCell::CCTableViewCell()> @ imm = #-0x1ef2
  2fb2ae: 9405         	str	r4, [sp, #0x14]
  2fb2b0: 9b05         	ldr	r3, [sp, #0x14]
  2fb2b2: 4618         	mov	r0, r3
  2fb2b4: f29c fe22    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x29cc44
  2fb2b8: 9b03         	ldr	r3, [sp, #0xc]
  2fb2ba: 681b         	ldr	r3, [r3]
  2fb2bc: f503 7306    	add.w	r3, r3, #0x218
  2fb2c0: 681c         	ldr	r4, [r3]
  2fb2c2: ab08         	add	r3, sp, #0x20
  2fb2c4: 4618         	mov	r0, r3
  2fb2c6: 9903         	ldr	r1, [sp, #0xc]
  2fb2c8: 9a02         	ldr	r2, [sp, #0x8]
  2fb2ca: 9b01         	ldr	r3, [sp, #0x4]
  2fb2cc: 47a0         	blx	r4
  2fb2ce: ed9d 7a08    	vldr	s14, [sp, #32]
  2fb2d2: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2fb2d6: eec7 6a27    	vdiv.f32	s13, s14, s15
  2fb2da: ed9d 7a09    	vldr	s14, [sp, #36]
  2fb2de: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2fb2e2: eec7 7a27    	vdiv.f32	s15, s14, s15
  2fb2e6: ab0a         	add	r3, sp, #0x28
  2fb2e8: 4618         	mov	r0, r3
  2fb2ea: ee16 1a90    	vmov	r1, s13
  2fb2ee: ee17 2a90    	vmov	r2, s15
  2fb2f2: f297 fcfd    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2979fa
  2fb2f6: f7f8 fbdf    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x7842
  2fb2fa: 4602         	mov	r2, r0
  2fb2fc: 9b01         	ldr	r3, [sp, #0x4]
  2fb2fe: 011b         	lsls	r3, r3, #0x4
  2fb300: f603 3398    	addw	r3, r3, #0xb98
  2fb304: 4413         	add	r3, r2
  2fb306: 3304         	adds	r3, #0x4
  2fb308: aa0c         	add	r2, sp, #0x30
  2fb30a: 4610         	mov	r0, r2
  2fb30c: 4619         	mov	r1, r3
  2fb30e: f298 f803    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x298006
  2fb312: ab0c         	add	r3, sp, #0x30
  2fb314: 4a26         	ldr	r2, [pc, #0x98]         @ 0x2fb3b0 <ShirtTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x144>
  2fb316: 447a         	add	r2, pc
  2fb318: 4610         	mov	r0, r2
  2fb31a: 4619         	mov	r1, r3
  2fb31c: f2dc ff70    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2dcee0
  2fb320: 4603         	mov	r3, r0
  2fb322: 9306         	str	r3, [sp, #0x18]
  2fb324: 9b06         	ldr	r3, [sp, #0x18]
  2fb326: 681b         	ldr	r3, [r3]
  2fb328: f503 73fa    	add.w	r3, r3, #0x1f4
  2fb32c: 681b         	ldr	r3, [r3]
  2fb32e: 9806         	ldr	r0, [sp, #0x18]
  2fb330: 4798         	blx	r3
  2fb332: 4603         	mov	r3, r0
  2fb334: 4618         	mov	r0, r3
  2fb336: f2f6 fe25    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2f6c4a
  2fb33a: 9b06         	ldr	r3, [sp, #0x18]
  2fb33c: 681b         	ldr	r3, [r3]
  2fb33e: 334c         	adds	r3, #0x4c
  2fb340: 681b         	ldr	r3, [r3]
  2fb342: aa0a         	add	r2, sp, #0x28
  2fb344: 9806         	ldr	r0, [sp, #0x18]
  2fb346: 4611         	mov	r1, r2
  2fb348: 4798         	blx	r3
  2fb34a: 4b1a         	ldr	r3, [pc, #0x68]         @ 0x2fb3b4 <ShirtTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x148>
  2fb34c: 447b         	add	r3, pc
  2fb34e: 4618         	mov	r0, r3
  2fb350: f2dc ffd8    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2dcfb0
  2fb354: 4603         	mov	r3, r0
  2fb356: 9307         	str	r3, [sp, #0x1c]
  2fb358: 9b07         	ldr	r3, [sp, #0x1c]
  2fb35a: 681b         	ldr	r3, [r3]
  2fb35c: 334c         	adds	r3, #0x4c
  2fb35e: 681b         	ldr	r3, [r3]
  2fb360: aa0a         	add	r2, sp, #0x28
  2fb362: 9807         	ldr	r0, [sp, #0x1c]
  2fb364: 4611         	mov	r1, r2
  2fb366: 4798         	blx	r3
  2fb368: 9b07         	ldr	r3, [sp, #0x1c]
  2fb36a: 681b         	ldr	r3, [r3]
  2fb36c: 3340         	adds	r3, #0x40
  2fb36e: 681b         	ldr	r3, [r3]
  2fb370: 9807         	ldr	r0, [sp, #0x1c]
  2fb372: f649 119a    	movw	r1, #0x999a
  2fb376: f6c3 7119    	movt	r1, #0x3f19
  2fb37a: 4798         	blx	r3
  2fb37c: 9b05         	ldr	r3, [sp, #0x14]
  2fb37e: 681b         	ldr	r3, [r3]
  2fb380: 33c8         	adds	r3, #0xc8
  2fb382: 681b         	ldr	r3, [r3]
  2fb384: 9a05         	ldr	r2, [sp, #0x14]
  2fb386: 4610         	mov	r0, r2
  2fb388: 9907         	ldr	r1, [sp, #0x1c]
  2fb38a: 4798         	blx	r3
  2fb38c: 9b05         	ldr	r3, [sp, #0x14]
  2fb38e: 681b         	ldr	r3, [r3]
  2fb390: 33c8         	adds	r3, #0xc8
  2fb392: 681b         	ldr	r3, [r3]
  2fb394: 9a05         	ldr	r2, [sp, #0x14]
  2fb396: 4610         	mov	r0, r2
  2fb398: 9906         	ldr	r1, [sp, #0x18]
  2fb39a: 4798         	blx	r3
  2fb39c: 9b05         	ldr	r3, [sp, #0x14]
  2fb39e: e004         	b	0x2fb3aa <ShirtTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x13e> @ imm = #0x8
  2fb3a0: 4620         	mov	r0, r4
  2fb3a2: f08c f67f    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48ccfe
  2fb3a6: f08c f681    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48cd02
  2fb3aa: 4618         	mov	r0, r3
  2fb3ac: b010         	add	sp, #0x40
  2fb3ae: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2fb3af); words below are literal-pool data ---
  2fb3b0: 941a         	str	r4, [sp, #0x68]
  2fb3b2: 004c         	lsls	r4, r1, #0x1
  2fb3b4: 93f8         	str	r3, [sp, #0x3e0]
  2fb3b6: 004c         	lsls	r4, r1, #0x1

// ==== ShirtTableView::tableCellAtIndex
//      file offset 0x2fb3b8 (= ELF address; Ghidra 0x30b3b8), 8 bytes, Thumb-2
  2fb3b8: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fb3bc: f7ff bf56    	b.w	0x2fb26c <ShirtTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)> @ imm = #-0x154

// ==== ShirtTableView::tableCellSizeForIndex
//      file offset 0x2fb3c0 (= ELF address; Ghidra 0x30b3c0), 54 bytes, Thumb-2
  2fb3c0: b500         	push	{lr}
  2fb3c2: b085         	sub	sp, #0x14
  2fb3c4: 9003         	str	r0, [sp, #0xc]
  2fb3c6: 9102         	str	r1, [sp, #0x8]
  2fb3c8: 9201         	str	r2, [sp, #0x4]
  2fb3ca: 9300         	str	r3, [sp]
  2fb3cc: 9b01         	ldr	r3, [sp, #0x4]
  2fb3ce: 681b         	ldr	r3, [r3]
  2fb3d0: 338c         	adds	r3, #0x8c
  2fb3d2: 681b         	ldr	r3, [r3]
  2fb3d4: 9a01         	ldr	r2, [sp, #0x4]
  2fb3d6: 4610         	mov	r0, r2
  2fb3d8: 4798         	blx	r3
  2fb3da: 4603         	mov	r3, r0
  2fb3dc: 681b         	ldr	r3, [r3]
  2fb3de: 9803         	ldr	r0, [sp, #0xc]
  2fb3e0: 4619         	mov	r1, r3
  2fb3e2: f04f 0200    	mov.w	r2, #0x0
  2fb3e6: f2c4 228c    	movt	r2, #0x428c
  2fb3ea: f297 fe53    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x297ca6
  2fb3ee: 9803         	ldr	r0, [sp, #0xc]
  2fb3f0: b005         	add	sp, #0x14
  2fb3f2: f85d fb04    	ldr	pc, [sp], #4

// ==== ShirtTableView::tableCellSizeForIndex
//      file offset 0x2fb3f8 (= ELF address; Ghidra 0x30b3f8), 8 bytes, Thumb-2
  2fb3f8: f5a1 71e4    	sub.w	r1, r1, #0x1c8
  2fb3fc: f7ff bfe0    	b.w	0x2fb3c0 <ShirtTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int)> @ imm = #-0x40

// ==== ShirtTableView::~ShirtTableView
//      file offset 0x2fc01c (= ELF address; Ghidra 0x30c01c), 128 bytes, Thumb-2
  2fc01c: b500         	push	{lr}
  2fc01e: b083         	sub	sp, #0xc
  2fc020: 9001         	str	r0, [sp, #0x4]
  2fc022: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x2fc094 <ShirtTableView::~ShirtTableView()+0x78>
  2fc024: 447b         	add	r3, pc
  2fc026: 9a01         	ldr	r2, [sp, #0x4]
  2fc028: 491b         	ldr	r1, [pc, #0x6c]         @ 0x2fc098 <ShirtTableView::~ShirtTableView()+0x7c>
  2fc02a: 5859         	ldr	r1, [r3, r1]
  2fc02c: 3108         	adds	r1, #0x8
  2fc02e: 6011         	str	r1, [r2]
  2fc030: 9a01         	ldr	r2, [sp, #0x4]
  2fc032: 4919         	ldr	r1, [pc, #0x64]         @ 0x2fc098 <ShirtTableView::~ShirtTableView()+0x7c>
  2fc034: 5859         	ldr	r1, [r3, r1]
  2fc036: f501 710b    	add.w	r1, r1, #0x22c
  2fc03a: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  2fc03e: 9a01         	ldr	r2, [sp, #0x4]
  2fc040: 4915         	ldr	r1, [pc, #0x54]         @ 0x2fc098 <ShirtTableView::~ShirtTableView()+0x7c>
  2fc042: 5859         	ldr	r1, [r3, r1]
  2fc044: f501 7117    	add.w	r1, r1, #0x25c
  2fc048: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  2fc04c: 9a01         	ldr	r2, [sp, #0x4]
  2fc04e: 4912         	ldr	r1, [pc, #0x48]         @ 0x2fc098 <ShirtTableView::~ShirtTableView()+0x7c>
  2fc050: 5859         	ldr	r1, [r3, r1]
  2fc052: f501 711a    	add.w	r1, r1, #0x268
  2fc056: f8c2 10ec    	str.w	r1, [r2, #0xec]
  2fc05a: 9a01         	ldr	r2, [sp, #0x4]
  2fc05c: 490e         	ldr	r1, [pc, #0x38]         @ 0x2fc098 <ShirtTableView::~ShirtTableView()+0x7c>
  2fc05e: 5859         	ldr	r1, [r3, r1]
  2fc060: f501 711e    	add.w	r1, r1, #0x278
  2fc064: f8c2 1198    	str.w	r1, [r2, #0x198]
  2fc068: 9a01         	ldr	r2, [sp, #0x4]
  2fc06a: 490b         	ldr	r1, [pc, #0x2c]         @ 0x2fc098 <ShirtTableView::~ShirtTableView()+0x7c>
  2fc06c: 585b         	ldr	r3, [r3, r1]
  2fc06e: f503 7324    	add.w	r3, r3, #0x290
  2fc072: f8c2 31c8    	str.w	r3, [r2, #0x1c8]
  2fc076: 9b01         	ldr	r3, [sp, #0x4]
  2fc078: 4618         	mov	r0, r3
  2fc07a: f7ff fdcb    	bl	0x2fbc14 <MenuTableView::~MenuTableView()> @ imm = #-0x46a
  2fc07e: 2300         	movs	r3, #0x0
  2fc080: 2b00         	cmp	r3, #0x0
  2fc082: d002         	beq	0x2fc08a <ShirtTableView::~ShirtTableView()+0x6e> @ imm = #0x4
  2fc084: 9801         	ldr	r0, [sp, #0x4]
  2fc086: f08c f00d    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48c01a
  2fc08a: 9b01         	ldr	r3, [sp, #0x4]
  2fc08c: 4618         	mov	r0, r3
  2fc08e: b003         	add	sp, #0xc
  2fc090: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2fc093); words below are literal-pool data ---
  2fc094: 69e4         	ldr	r4, [r4, #0x1c]
  2fc096: 0063         	lsls	r3, r4, #0x1
  2fc098: d888         	bhi	0x2fbfac <LegTableView::~LegTableView()+0x5c> @ imm = #-0xf0
  2fc09a: ffff f5a0    	<unknown>

// ==== ShirtTableView::~ShirtTableView
//      file offset 0x2fc09c (= ELF address; Ghidra 0x30c09c), 8 bytes, Thumb-2
  2fc09c: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fc0a0: f7ff bfbc    	b.w	0x2fc01c <ShirtTableView::~ShirtTableView()> @ imm = #-0x88

// ==== ShirtTableView::~ShirtTableView
//      file offset 0x2fc0a4 (= ELF address; Ghidra 0x30c0a4), 8 bytes, Thumb-2
  2fc0a4: f5a0 70cc    	sub.w	r0, r0, #0x198
  2fc0a8: f7ff bfb8    	b.w	0x2fc01c <ShirtTableView::~ShirtTableView()> @ imm = #-0x90

// ==== ShirtTableView::~ShirtTableView
//      file offset 0x2fc0ac (= ELF address; Ghidra 0x30c0ac), 8 bytes, Thumb-2
  2fc0ac: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2fc0b0: f7ff bfb4    	b.w	0x2fc01c <ShirtTableView::~ShirtTableView()> @ imm = #-0x98

// ==== ShirtTableView::~ShirtTableView
//      file offset 0x2fc0b4 (= ELF address; Ghidra 0x30c0b4), 28 bytes, Thumb-2
  2fc0b4: b500         	push	{lr}
  2fc0b6: b083         	sub	sp, #0xc
  2fc0b8: 9001         	str	r0, [sp, #0x4]
  2fc0ba: 9801         	ldr	r0, [sp, #0x4]
  2fc0bc: f7ff ffae    	bl	0x2fc01c <ShirtTableView::~ShirtTableView()> @ imm = #-0xa4
  2fc0c0: 9801         	ldr	r0, [sp, #0x4]
  2fc0c2: f08b f7ef    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48bfde
  2fc0c6: 9b01         	ldr	r3, [sp, #0x4]
  2fc0c8: 4618         	mov	r0, r3
  2fc0ca: b003         	add	sp, #0xc
  2fc0cc: f85d fb04    	ldr	pc, [sp], #4

// ==== ShirtTableView::~ShirtTableView
//      file offset 0x2fc0d0 (= ELF address; Ghidra 0x30c0d0), 6 bytes, Thumb-2
  2fc0d0: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fc0d4: e7ee         	b	0x2fc0b4 <ShirtTableView::~ShirtTableView()> @ imm = #-0x24

// ==== ShirtTableView::~ShirtTableView
//      file offset 0x2fc0d8 (= ELF address; Ghidra 0x30c0d8), 6 bytes, Thumb-2
  2fc0d8: f5a0 70cc    	sub.w	r0, r0, #0x198
  2fc0dc: e7ea         	b	0x2fc0b4 <ShirtTableView::~ShirtTableView()> @ imm = #-0x2c

// ==== ShirtTableView::~ShirtTableView
//      file offset 0x2fc0e0 (= ELF address; Ghidra 0x30c0e0), 6 bytes, Thumb-2
  2fc0e0: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2fc0e4: e7e6         	b	0x2fc0b4 <ShirtTableView::~ShirtTableView()> @ imm = #-0x34
