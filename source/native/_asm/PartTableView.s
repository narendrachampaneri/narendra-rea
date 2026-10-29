// PartTableView: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 16 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../PartTableView.cpp

// ==== PartTableView::PartTableView
//      file offset 0x2ea5d0 (= ELF address; Ghidra 0x2fa5d0), 116 bytes, Thumb-2
  2ea5d0: b510         	push	{r4, lr}
  2ea5d2: b082         	sub	sp, #0x8
  2ea5d4: 9001         	str	r0, [sp, #0x4]
  2ea5d6: 4c19         	ldr	r4, [pc, #0x64]         @ 0x2ea63c <PartTableView::PartTableView()+0x6c>
  2ea5d8: 447c         	add	r4, pc
  2ea5da: 9b01         	ldr	r3, [sp, #0x4]
  2ea5dc: 4618         	mov	r0, r3
  2ea5de: f086 fb5f    	bl	0x370ca0 <MenuTableView::MenuTableView()> @ imm = #0x866be
  2ea5e2: 9b01         	ldr	r3, [sp, #0x4]
  2ea5e4: 4a16         	ldr	r2, [pc, #0x58]         @ 0x2ea640 <PartTableView::PartTableView()+0x70>
  2ea5e6: 58a2         	ldr	r2, [r4, r2]
  2ea5e8: 3208         	adds	r2, #0x8
  2ea5ea: 601a         	str	r2, [r3]
  2ea5ec: 9b01         	ldr	r3, [sp, #0x4]
  2ea5ee: 4a14         	ldr	r2, [pc, #0x50]         @ 0x2ea640 <PartTableView::PartTableView()+0x70>
  2ea5f0: 58a2         	ldr	r2, [r4, r2]
  2ea5f2: f502 720b    	add.w	r2, r2, #0x22c
  2ea5f6: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  2ea5fa: 9b01         	ldr	r3, [sp, #0x4]
  2ea5fc: 4a10         	ldr	r2, [pc, #0x40]         @ 0x2ea640 <PartTableView::PartTableView()+0x70>
  2ea5fe: 58a2         	ldr	r2, [r4, r2]
  2ea600: f502 7217    	add.w	r2, r2, #0x25c
  2ea604: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  2ea608: 9b01         	ldr	r3, [sp, #0x4]
  2ea60a: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x2ea640 <PartTableView::PartTableView()+0x70>
  2ea60c: 58a2         	ldr	r2, [r4, r2]
  2ea60e: f502 721a    	add.w	r2, r2, #0x268
  2ea612: f8c3 20ec    	str.w	r2, [r3, #0xec]
  2ea616: 9b01         	ldr	r3, [sp, #0x4]
  2ea618: 4a09         	ldr	r2, [pc, #0x24]         @ 0x2ea640 <PartTableView::PartTableView()+0x70>
  2ea61a: 58a2         	ldr	r2, [r4, r2]
  2ea61c: f502 721e    	add.w	r2, r2, #0x278
  2ea620: f8c3 2198    	str.w	r2, [r3, #0x198]
  2ea624: 9b01         	ldr	r3, [sp, #0x4]
  2ea626: 4a06         	ldr	r2, [pc, #0x18]         @ 0x2ea640 <PartTableView::PartTableView()+0x70>
  2ea628: 58a2         	ldr	r2, [r4, r2]
  2ea62a: f502 7224    	add.w	r2, r2, #0x290
  2ea62e: f8c3 21c8    	str.w	r2, [r3, #0x1c8]
  2ea632: 9b01         	ldr	r3, [sp, #0x4]
  2ea634: 4618         	mov	r0, r3
  2ea636: b002         	add	sp, #0x8
  2ea638: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2ea639); words below are literal-pool data ---
  2ea63a: bf00         	nop
  2ea63c: 8430         	strh	r0, [r6, #0x20]
  2ea63e: 0064         	lsls	r4, r4, #0x1
  2ea640: d84c         	bhi	0x2ea6dc <SkinColorTableView::SkinColorTableView()+0x24> @ imm = #0x98
  2ea642: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== PartTableView::numberOfCellsInTableView
//      file offset 0x2f9488 (= ELF address; Ghidra 0x309488), 14 bytes, Thumb-2
  2f9488: b082         	sub	sp, #0x8
  2f948a: 9001         	str	r0, [sp, #0x4]
  2f948c: 9100         	str	r1, [sp]
  2f948e: 2307         	movs	r3, #0x7
  2f9490: 4618         	mov	r0, r3
  2f9492: b002         	add	sp, #0x8
  2f9494: 4770         	bx	lr

// ==== PartTableView::numberOfCellsInTableView
//      file offset 0x2f9498 (= ELF address; Ghidra 0x309498), 8 bytes, Thumb-2
  2f9498: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2f949c: f7ff bff4    	b.w	0x2f9488 <PartTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*)> @ imm = #-0x18

// ==== PartTableView::getIdentifier
//      file offset 0x2f94a0 (= ELF address; Ghidra 0x3094a0), 68 bytes, Thumb-2
  2f94a0: b500         	push	{lr}
  2f94a2: b085         	sub	sp, #0x14
  2f94a4: 9001         	str	r0, [sp, #0x4]
  2f94a6: 9100         	str	r1, [sp]
  2f94a8: ab03         	add	r3, sp, #0xc
  2f94aa: 4618         	mov	r0, r3
  2f94ac: f090 f7a2    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x490f44
  2f94b0: ab03         	add	r3, sp, #0xc
  2f94b2: 9801         	ldr	r0, [sp, #0x4]
  2f94b4: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x2f94e0 <PartTableView::getIdentifier()+0x40>
  2f94b6: 447a         	add	r2, pc
  2f94b8: 4611         	mov	r1, r2
  2f94ba: 461a         	mov	r2, r3
  2f94bc: f0bd f2d0    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4bd5a0
  2f94c0: ab03         	add	r3, sp, #0xc
  2f94c2: 4618         	mov	r0, r3
  2f94c4: f090 f79a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x490f34
  2f94c8: e005         	b	0x2f94d6 <PartTableView::getIdentifier()+0x36> @ imm = #0xa
  2f94ca: ab03         	add	r3, sp, #0xc
  2f94cc: 4618         	mov	r0, r3
  2f94ce: f090 f795    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x490f2a
  2f94d2: f08e f5eb    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48ebd6
  2f94d6: 9801         	ldr	r0, [sp, #0x4]
  2f94d8: b005         	add	sp, #0x14
  2f94da: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2f94dd); words below are literal-pool data ---
  2f94de: bf00         	nop
  2f94e0: b272         	sxtb	r2, r6
  2f94e2: 004c         	lsls	r4, r1, #0x1

// ==== PartTableView::tableCellAtIndex
//      file offset 0x2f94e4 (= ELF address; Ghidra 0x3094e4), 332 bytes, Thumb-2
  2f94e4: b510         	push	{r4, lr}
  2f94e6: b090         	sub	sp, #0x40
  2f94e8: 9003         	str	r0, [sp, #0xc]
  2f94ea: 9102         	str	r1, [sp, #0x8]
  2f94ec: 9201         	str	r2, [sp, #0x4]
  2f94ee: 9802         	ldr	r0, [sp, #0x8]
  2f94f0: f15a f992    	bl	0x453818 <cocos2d::extension::CCTableView::dequeueCell()> @ imm = #0x15a324
  2f94f4: 4603         	mov	r3, r0
  2f94f6: 9305         	str	r3, [sp, #0x14]
  2f94f8: 9b05         	ldr	r3, [sp, #0x14]
  2f94fa: 2b00         	cmp	r3, #0x0
  2f94fc: d006         	beq	0x2f950c <PartTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x28> @ imm = #0xc
  2f94fe: 9805         	ldr	r0, [sp, #0x14]
  2f9500: f15c fd74    	bl	0x455fec <cocos2d::extension::CCTableViewCell::getIdx()> @ imm = #0x15cae8
  2f9504: 4602         	mov	r2, r0
  2f9506: 9b01         	ldr	r3, [sp, #0x4]
  2f9508: 429a         	cmp	r2, r3
  2f950a: d001         	beq	0x2f9510 <PartTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x2c> @ imm = #0x2
  2f950c: 2301         	movs	r3, #0x1
  2f950e: e000         	b	0x2f9512 <PartTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x2e> @ imm = #0x0
  2f9510: 2300         	movs	r3, #0x0
  2f9512: 2b00         	cmp	r3, #0x0
  2f9514: d07d         	beq	0x2f9612 <PartTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x12e> @ imm = #0xfa
  2f9516: 20ec         	movs	r0, #0xec
  2f9518: f08e f224    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x48e448
  2f951c: 4603         	mov	r3, r0
  2f951e: 461c         	mov	r4, r3
  2f9520: 4620         	mov	r0, r4
  2f9522: f7ff ff4b    	bl	0x2f93bc <cocos2d::extension::CCTableViewCell::CCTableViewCell()> @ imm = #-0x16a
  2f9526: 9405         	str	r4, [sp, #0x14]
  2f9528: 9b05         	ldr	r3, [sp, #0x14]
  2f952a: 4618         	mov	r0, r3
  2f952c: f29e fce6    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x29e9cc
  2f9530: 9b03         	ldr	r3, [sp, #0xc]
  2f9532: 681b         	ldr	r3, [r3]
  2f9534: f503 7306    	add.w	r3, r3, #0x218
  2f9538: 681c         	ldr	r4, [r3]
  2f953a: ab08         	add	r3, sp, #0x20
  2f953c: 4618         	mov	r0, r3
  2f953e: 9903         	ldr	r1, [sp, #0xc]
  2f9540: 9a02         	ldr	r2, [sp, #0x8]
  2f9542: 9b01         	ldr	r3, [sp, #0x4]
  2f9544: 47a0         	blx	r4
  2f9546: ed9d 7a08    	vldr	s14, [sp, #32]
  2f954a: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2f954e: eec7 6a27    	vdiv.f32	s13, s14, s15
  2f9552: ed9d 7a09    	vldr	s14, [sp, #36]
  2f9556: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2f955a: eec7 7a27    	vdiv.f32	s15, s14, s15
  2f955e: ab0a         	add	r3, sp, #0x28
  2f9560: 4618         	mov	r0, r3
  2f9562: ee16 1a90    	vmov	r1, s13
  2f9566: ee17 2a90    	vmov	r2, s15
  2f956a: f299 fbc1    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x299782
  2f956e: f7fa faa3    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x5aba
  2f9572: 4602         	mov	r2, r0
  2f9574: 9b01         	ldr	r3, [sp, #0x4]
  2f9576: 332f         	adds	r3, #0x2f
  2f9578: 011b         	lsls	r3, r3, #0x4
  2f957a: 4413         	add	r3, r2
  2f957c: 3304         	adds	r3, #0x4
  2f957e: aa0c         	add	r2, sp, #0x30
  2f9580: 4610         	mov	r0, r2
  2f9582: 4619         	mov	r1, r3
  2f9584: f299 fec8    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x299d90
  2f9588: ab0c         	add	r3, sp, #0x30
  2f958a: 4a27         	ldr	r2, [pc, #0x9c]         @ 0x2f9628 <PartTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x144>
  2f958c: 447a         	add	r2, pc
  2f958e: 4610         	mov	r0, r2
  2f9590: 4619         	mov	r1, r3
  2f9592: f2de fe35    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2dec6a
  2f9596: 4603         	mov	r3, r0
  2f9598: 9306         	str	r3, [sp, #0x18]
  2f959a: 9b06         	ldr	r3, [sp, #0x18]
  2f959c: 681b         	ldr	r3, [r3]
  2f959e: f503 73fa    	add.w	r3, r3, #0x1f4
  2f95a2: 681b         	ldr	r3, [r3]
  2f95a4: 9806         	ldr	r0, [sp, #0x18]
  2f95a6: 4798         	blx	r3
  2f95a8: 4603         	mov	r3, r0
  2f95aa: 4618         	mov	r0, r3
  2f95ac: f2f8 fcea    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2f89d4
  2f95b0: 9b06         	ldr	r3, [sp, #0x18]
  2f95b2: 681b         	ldr	r3, [r3]
  2f95b4: 334c         	adds	r3, #0x4c
  2f95b6: 681b         	ldr	r3, [r3]
  2f95b8: aa0a         	add	r2, sp, #0x28
  2f95ba: 9806         	ldr	r0, [sp, #0x18]
  2f95bc: 4611         	mov	r1, r2
  2f95be: 4798         	blx	r3
  2f95c0: 4b1a         	ldr	r3, [pc, #0x68]         @ 0x2f962c <PartTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x148>
  2f95c2: 447b         	add	r3, pc
  2f95c4: 4618         	mov	r0, r3
  2f95c6: f2de fe9d    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2ded3a
  2f95ca: 4603         	mov	r3, r0
  2f95cc: 9307         	str	r3, [sp, #0x1c]
  2f95ce: 9b07         	ldr	r3, [sp, #0x1c]
  2f95d0: 681b         	ldr	r3, [r3]
  2f95d2: 334c         	adds	r3, #0x4c
  2f95d4: 681b         	ldr	r3, [r3]
  2f95d6: aa0a         	add	r2, sp, #0x28
  2f95d8: 9807         	ldr	r0, [sp, #0x1c]
  2f95da: 4611         	mov	r1, r2
  2f95dc: 4798         	blx	r3
  2f95de: 9b07         	ldr	r3, [sp, #0x1c]
  2f95e0: 681b         	ldr	r3, [r3]
  2f95e2: 3340         	adds	r3, #0x40
  2f95e4: 681b         	ldr	r3, [r3]
  2f95e6: 9807         	ldr	r0, [sp, #0x1c]
  2f95e8: f246 6166    	movw	r1, #0x6666
  2f95ec: f6c3 7126    	movt	r1, #0x3f26
  2f95f0: 4798         	blx	r3
  2f95f2: 9b05         	ldr	r3, [sp, #0x14]
  2f95f4: 681b         	ldr	r3, [r3]
  2f95f6: 33c8         	adds	r3, #0xc8
  2f95f8: 681b         	ldr	r3, [r3]
  2f95fa: 9a05         	ldr	r2, [sp, #0x14]
  2f95fc: 4610         	mov	r0, r2
  2f95fe: 9907         	ldr	r1, [sp, #0x1c]
  2f9600: 4798         	blx	r3
  2f9602: 9b05         	ldr	r3, [sp, #0x14]
  2f9604: 681b         	ldr	r3, [r3]
  2f9606: 33c8         	adds	r3, #0xc8
  2f9608: 681b         	ldr	r3, [r3]
  2f960a: 9a05         	ldr	r2, [sp, #0x14]
  2f960c: 4610         	mov	r0, r2
  2f960e: 9906         	ldr	r1, [sp, #0x18]
  2f9610: 4798         	blx	r3
  2f9612: 9b05         	ldr	r3, [sp, #0x14]
  2f9614: e004         	b	0x2f9620 <PartTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x13c> @ imm = #0x8
  2f9616: 4620         	mov	r0, r4
  2f9618: f08e f544    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48ea88
  2f961c: f08e f546    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48ea8c
  2f9620: 4618         	mov	r0, r3
  2f9622: b010         	add	sp, #0x40
  2f9624: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2f9625); words below are literal-pool data ---
  2f9626: bf00         	nop
  2f9628: b1a4         	cbz	r4, 0x2f9654 <PartTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int)+0x1c> @ imm = #0x28
  2f962a: 004c         	lsls	r4, r1, #0x1
  2f962c: b182         	cbz	r2, 0x2f9650 <PartTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int)+0x18> @ imm = #0x20
  2f962e: 004c         	lsls	r4, r1, #0x1

// ==== PartTableView::tableCellAtIndex
//      file offset 0x2f9630 (= ELF address; Ghidra 0x309630), 8 bytes, Thumb-2
  2f9630: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2f9634: f7ff bf56    	b.w	0x2f94e4 <PartTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)> @ imm = #-0x154

// ==== PartTableView::tableCellSizeForIndex
//      file offset 0x2f9638 (= ELF address; Ghidra 0x309638), 54 bytes, Thumb-2
  2f9638: b500         	push	{lr}
  2f963a: b085         	sub	sp, #0x14
  2f963c: 9003         	str	r0, [sp, #0xc]
  2f963e: 9102         	str	r1, [sp, #0x8]
  2f9640: 9201         	str	r2, [sp, #0x4]
  2f9642: 9300         	str	r3, [sp]
  2f9644: 9b01         	ldr	r3, [sp, #0x4]
  2f9646: 681b         	ldr	r3, [r3]
  2f9648: 338c         	adds	r3, #0x8c
  2f964a: 681b         	ldr	r3, [r3]
  2f964c: 9a01         	ldr	r2, [sp, #0x4]
  2f964e: 4610         	mov	r0, r2
  2f9650: 4798         	blx	r3
  2f9652: 4603         	mov	r3, r0
  2f9654: 681b         	ldr	r3, [r3]
  2f9656: 9803         	ldr	r0, [sp, #0xc]
  2f9658: 4619         	mov	r1, r3
  2f965a: f04f 0200    	mov.w	r2, #0x0
  2f965e: f2c4 228c    	movt	r2, #0x428c
  2f9662: f299 fd17    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x299a2e
  2f9666: 9803         	ldr	r0, [sp, #0xc]
  2f9668: b005         	add	sp, #0x14
  2f966a: f85d fb04    	ldr	pc, [sp], #4

// ==== PartTableView::tableCellSizeForIndex
//      file offset 0x2f9670 (= ELF address; Ghidra 0x309670), 8 bytes, Thumb-2
  2f9670: f5a1 71e4    	sub.w	r1, r1, #0x1c8
  2f9674: f7ff bfe0    	b.w	0x2f9638 <PartTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int)> @ imm = #-0x40

// ==== PartTableView::~PartTableView
//      file offset 0x2fcc10 (= ELF address; Ghidra 0x30cc10), 128 bytes, Thumb-2
  2fcc10: b500         	push	{lr}
  2fcc12: b083         	sub	sp, #0xc
  2fcc14: 9001         	str	r0, [sp, #0x4]
  2fcc16: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x2fcc88 <PartTableView::~PartTableView()+0x78>
  2fcc18: 447b         	add	r3, pc
  2fcc1a: 9a01         	ldr	r2, [sp, #0x4]
  2fcc1c: 491b         	ldr	r1, [pc, #0x6c]         @ 0x2fcc8c <PartTableView::~PartTableView()+0x7c>
  2fcc1e: 5859         	ldr	r1, [r3, r1]
  2fcc20: 3108         	adds	r1, #0x8
  2fcc22: 6011         	str	r1, [r2]
  2fcc24: 9a01         	ldr	r2, [sp, #0x4]
  2fcc26: 4919         	ldr	r1, [pc, #0x64]         @ 0x2fcc8c <PartTableView::~PartTableView()+0x7c>
  2fcc28: 5859         	ldr	r1, [r3, r1]
  2fcc2a: f501 710b    	add.w	r1, r1, #0x22c
  2fcc2e: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  2fcc32: 9a01         	ldr	r2, [sp, #0x4]
  2fcc34: 4915         	ldr	r1, [pc, #0x54]         @ 0x2fcc8c <PartTableView::~PartTableView()+0x7c>
  2fcc36: 5859         	ldr	r1, [r3, r1]
  2fcc38: f501 7117    	add.w	r1, r1, #0x25c
  2fcc3c: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  2fcc40: 9a01         	ldr	r2, [sp, #0x4]
  2fcc42: 4912         	ldr	r1, [pc, #0x48]         @ 0x2fcc8c <PartTableView::~PartTableView()+0x7c>
  2fcc44: 5859         	ldr	r1, [r3, r1]
  2fcc46: f501 711a    	add.w	r1, r1, #0x268
  2fcc4a: f8c2 10ec    	str.w	r1, [r2, #0xec]
  2fcc4e: 9a01         	ldr	r2, [sp, #0x4]
  2fcc50: 490e         	ldr	r1, [pc, #0x38]         @ 0x2fcc8c <PartTableView::~PartTableView()+0x7c>
  2fcc52: 5859         	ldr	r1, [r3, r1]
  2fcc54: f501 711e    	add.w	r1, r1, #0x278
  2fcc58: f8c2 1198    	str.w	r1, [r2, #0x198]
  2fcc5c: 9a01         	ldr	r2, [sp, #0x4]
  2fcc5e: 490b         	ldr	r1, [pc, #0x2c]         @ 0x2fcc8c <PartTableView::~PartTableView()+0x7c>
  2fcc60: 585b         	ldr	r3, [r3, r1]
  2fcc62: f503 7324    	add.w	r3, r3, #0x290
  2fcc66: f8c2 31c8    	str.w	r3, [r2, #0x1c8]
  2fcc6a: 9b01         	ldr	r3, [sp, #0x4]
  2fcc6c: 4618         	mov	r0, r3
  2fcc6e: f7fe ffd1    	bl	0x2fbc14 <MenuTableView::~MenuTableView()> @ imm = #-0x105e
  2fcc72: 2300         	movs	r3, #0x0
  2fcc74: 2b00         	cmp	r3, #0x0
  2fcc76: d002         	beq	0x2fcc7e <PartTableView::~PartTableView()+0x6e> @ imm = #0x4
  2fcc78: 9801         	ldr	r0, [sp, #0x4]
  2fcc7a: f08b f213    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48b426
  2fcc7e: 9b01         	ldr	r3, [sp, #0x4]
  2fcc80: 4618         	mov	r0, r3
  2fcc82: b003         	add	sp, #0xc
  2fcc84: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2fcc87); words below are literal-pool data ---
  2fcc88: 5df0         	ldrb	r0, [r6, r7]
  2fcc8a: 0063         	lsls	r3, r4, #0x1
  2fcc8c: d84c         	bhi	0x2fcd28 <non-virtual thunk to PartTableView::~PartTableView()+0x54> @ imm = #0x98
  2fcc8e: ffff f5a0    	<unknown>

// ==== PartTableView::~PartTableView
//      file offset 0x2fcc90 (= ELF address; Ghidra 0x30cc90), 8 bytes, Thumb-2
  2fcc90: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fcc94: f7ff bfbc    	b.w	0x2fcc10 <PartTableView::~PartTableView()> @ imm = #-0x88

// ==== PartTableView::~PartTableView
//      file offset 0x2fcc98 (= ELF address; Ghidra 0x30cc98), 8 bytes, Thumb-2
  2fcc98: f5a0 70cc    	sub.w	r0, r0, #0x198
  2fcc9c: f7ff bfb8    	b.w	0x2fcc10 <PartTableView::~PartTableView()> @ imm = #-0x90

// ==== PartTableView::~PartTableView
//      file offset 0x2fcca0 (= ELF address; Ghidra 0x30cca0), 8 bytes, Thumb-2
  2fcca0: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2fcca4: f7ff bfb4    	b.w	0x2fcc10 <PartTableView::~PartTableView()> @ imm = #-0x98

// ==== PartTableView::~PartTableView
//      file offset 0x2fcca8 (= ELF address; Ghidra 0x30cca8), 28 bytes, Thumb-2
  2fcca8: b500         	push	{lr}
  2fccaa: b083         	sub	sp, #0xc
  2fccac: 9001         	str	r0, [sp, #0x4]
  2fccae: 9801         	ldr	r0, [sp, #0x4]
  2fccb0: f7ff ffae    	bl	0x2fcc10 <PartTableView::~PartTableView()> @ imm = #-0xa4
  2fccb4: 9801         	ldr	r0, [sp, #0x4]
  2fccb6: f08b f1f5    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48b3ea
  2fccba: 9b01         	ldr	r3, [sp, #0x4]
  2fccbc: 4618         	mov	r0, r3
  2fccbe: b003         	add	sp, #0xc
  2fccc0: f85d fb04    	ldr	pc, [sp], #4

// ==== PartTableView::~PartTableView
//      file offset 0x2fccc4 (= ELF address; Ghidra 0x30ccc4), 6 bytes, Thumb-2
  2fccc4: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fccc8: e7ee         	b	0x2fcca8 <PartTableView::~PartTableView()> @ imm = #-0x24

// ==== PartTableView::~PartTableView
//      file offset 0x2fcccc (= ELF address; Ghidra 0x30cccc), 6 bytes, Thumb-2
  2fcccc: f5a0 70cc    	sub.w	r0, r0, #0x198
  2fccd0: e7ea         	b	0x2fcca8 <PartTableView::~PartTableView()> @ imm = #-0x2c

// ==== PartTableView::~PartTableView
//      file offset 0x2fccd4 (= ELF address; Ghidra 0x30ccd4), 6 bytes, Thumb-2
  2fccd4: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2fccd8: e7e6         	b	0x2fcca8 <PartTableView::~PartTableView()> @ imm = #-0x34
