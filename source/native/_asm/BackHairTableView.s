// BackHairTableView: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 16 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../BackHairTableView.cpp

// ==== BackHairTableView::BackHairTableView
//      file offset 0x2ea970 (= ELF address; Ghidra 0x2fa970), 116 bytes, Thumb-2
  2ea970: b510         	push	{r4, lr}
  2ea972: b082         	sub	sp, #0x8
  2ea974: 9001         	str	r0, [sp, #0x4]
  2ea976: 4c19         	ldr	r4, [pc, #0x64]         @ 0x2ea9dc <BackHairTableView::BackHairTableView()+0x6c>
  2ea978: 447c         	add	r4, pc
  2ea97a: 9b01         	ldr	r3, [sp, #0x4]
  2ea97c: 4618         	mov	r0, r3
  2ea97e: f086 f98f    	bl	0x370ca0 <MenuTableView::MenuTableView()> @ imm = #0x8631e
  2ea982: 9b01         	ldr	r3, [sp, #0x4]
  2ea984: 4a16         	ldr	r2, [pc, #0x58]         @ 0x2ea9e0 <BackHairTableView::BackHairTableView()+0x70>
  2ea986: 58a2         	ldr	r2, [r4, r2]
  2ea988: 3208         	adds	r2, #0x8
  2ea98a: 601a         	str	r2, [r3]
  2ea98c: 9b01         	ldr	r3, [sp, #0x4]
  2ea98e: 4a14         	ldr	r2, [pc, #0x50]         @ 0x2ea9e0 <BackHairTableView::BackHairTableView()+0x70>
  2ea990: 58a2         	ldr	r2, [r4, r2]
  2ea992: f502 720b    	add.w	r2, r2, #0x22c
  2ea996: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  2ea99a: 9b01         	ldr	r3, [sp, #0x4]
  2ea99c: 4a10         	ldr	r2, [pc, #0x40]         @ 0x2ea9e0 <BackHairTableView::BackHairTableView()+0x70>
  2ea99e: 58a2         	ldr	r2, [r4, r2]
  2ea9a0: f502 7217    	add.w	r2, r2, #0x25c
  2ea9a4: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  2ea9a8: 9b01         	ldr	r3, [sp, #0x4]
  2ea9aa: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x2ea9e0 <BackHairTableView::BackHairTableView()+0x70>
  2ea9ac: 58a2         	ldr	r2, [r4, r2]
  2ea9ae: f502 721a    	add.w	r2, r2, #0x268
  2ea9b2: f8c3 20ec    	str.w	r2, [r3, #0xec]
  2ea9b6: 9b01         	ldr	r3, [sp, #0x4]
  2ea9b8: 4a09         	ldr	r2, [pc, #0x24]         @ 0x2ea9e0 <BackHairTableView::BackHairTableView()+0x70>
  2ea9ba: 58a2         	ldr	r2, [r4, r2]
  2ea9bc: f502 721e    	add.w	r2, r2, #0x278
  2ea9c0: f8c3 2198    	str.w	r2, [r3, #0x198]
  2ea9c4: 9b01         	ldr	r3, [sp, #0x4]
  2ea9c6: 4a06         	ldr	r2, [pc, #0x18]         @ 0x2ea9e0 <BackHairTableView::BackHairTableView()+0x70>
  2ea9c8: 58a2         	ldr	r2, [r4, r2]
  2ea9ca: f502 7224    	add.w	r2, r2, #0x290
  2ea9ce: f8c3 21c8    	str.w	r2, [r3, #0x1c8]
  2ea9d2: 9b01         	ldr	r3, [sp, #0x4]
  2ea9d4: 4618         	mov	r0, r3
  2ea9d6: b002         	add	sp, #0x8
  2ea9d8: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2ea9d9); words below are literal-pool data ---
  2ea9da: bf00         	nop
  2ea9dc: 8090         	strh	r0, [r2, #0x4]
  2ea9de: 0064         	lsls	r4, r4, #0x1
  2ea9e0: d86c         	bhi	0x2eaabc <BeardTableView::BeardTableView()+0x64> @ imm = #0xd8
  2ea9e2: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== BackHairTableView::numberOfCellsInTableView
//      file offset 0x2fa424 (= ELF address; Ghidra 0x30a424), 14 bytes, Thumb-2
  2fa424: b082         	sub	sp, #0x8
  2fa426: 9001         	str	r0, [sp, #0x4]
  2fa428: 9100         	str	r1, [sp]
  2fa42a: 2308         	movs	r3, #0x8
  2fa42c: 4618         	mov	r0, r3
  2fa42e: b002         	add	sp, #0x8
  2fa430: 4770         	bx	lr

// ==== BackHairTableView::numberOfCellsInTableView
//      file offset 0x2fa434 (= ELF address; Ghidra 0x30a434), 8 bytes, Thumb-2
  2fa434: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fa438: f7ff bff4    	b.w	0x2fa424 <BackHairTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*)> @ imm = #-0x18

// ==== BackHairTableView::getIdentifier
//      file offset 0x2fa43c (= ELF address; Ghidra 0x30a43c), 68 bytes, Thumb-2
  2fa43c: b500         	push	{lr}
  2fa43e: b085         	sub	sp, #0x14
  2fa440: 9001         	str	r0, [sp, #0x4]
  2fa442: 9100         	str	r1, [sp]
  2fa444: ab03         	add	r3, sp, #0xc
  2fa446: 4618         	mov	r0, r3
  2fa448: f08f f7d4    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x48ffa8
  2fa44c: ab03         	add	r3, sp, #0xc
  2fa44e: 9801         	ldr	r0, [sp, #0x4]
  2fa450: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x2fa47c <BackHairTableView::getIdentifier()+0x40>
  2fa452: 447a         	add	r2, pc
  2fa454: 4611         	mov	r1, r2
  2fa456: 461a         	mov	r2, r3
  2fa458: f0bc f302    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4bc604
  2fa45c: ab03         	add	r3, sp, #0xc
  2fa45e: 4618         	mov	r0, r3
  2fa460: f08f f7cc    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x48ff98
  2fa464: e005         	b	0x2fa472 <BackHairTableView::getIdentifier()+0x36> @ imm = #0xa
  2fa466: ab03         	add	r3, sp, #0xc
  2fa468: 4618         	mov	r0, r3
  2fa46a: f08f f7c7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x48ff8e
  2fa46e: f08d f61d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48dc3a
  2fa472: 9801         	ldr	r0, [sp, #0x4]
  2fa474: b005         	add	sp, #0x14
  2fa476: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2fa479); words below are literal-pool data ---
  2fa47a: bf00         	nop
  2fa47c: a356         	adr	r3, #344 <BackHairTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x56>
  2fa47e: 004c         	lsls	r4, r1, #0x1

// ==== BackHairTableView::tableCellAtIndex
//      file offset 0x2fa480 (= ELF address; Ghidra 0x30a480), 332 bytes, Thumb-2
  2fa480: b510         	push	{r4, lr}
  2fa482: b090         	sub	sp, #0x40
  2fa484: 9003         	str	r0, [sp, #0xc]
  2fa486: 9102         	str	r1, [sp, #0x8]
  2fa488: 9201         	str	r2, [sp, #0x4]
  2fa48a: 9802         	ldr	r0, [sp, #0x8]
  2fa48c: f159 f9c4    	bl	0x453818 <cocos2d::extension::CCTableView::dequeueCell()> @ imm = #0x159388
  2fa490: 4603         	mov	r3, r0
  2fa492: 9305         	str	r3, [sp, #0x14]
  2fa494: 9b05         	ldr	r3, [sp, #0x14]
  2fa496: 2b00         	cmp	r3, #0x0
  2fa498: d006         	beq	0x2fa4a8 <BackHairTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x28> @ imm = #0xc
  2fa49a: 9805         	ldr	r0, [sp, #0x14]
  2fa49c: f15b fda6    	bl	0x455fec <cocos2d::extension::CCTableViewCell::getIdx()> @ imm = #0x15bb4c
  2fa4a0: 4602         	mov	r2, r0
  2fa4a2: 9b01         	ldr	r3, [sp, #0x4]
  2fa4a4: 429a         	cmp	r2, r3
  2fa4a6: d001         	beq	0x2fa4ac <BackHairTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x2c> @ imm = #0x2
  2fa4a8: 2301         	movs	r3, #0x1
  2fa4aa: e000         	b	0x2fa4ae <BackHairTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x2e> @ imm = #0x0
  2fa4ac: 2300         	movs	r3, #0x0
  2fa4ae: 2b00         	cmp	r3, #0x0
  2fa4b0: d07d         	beq	0x2fa5ae <BackHairTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x12e> @ imm = #0xfa
  2fa4b2: 20ec         	movs	r0, #0xec
  2fa4b4: f08d f256    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x48d4ac
  2fa4b8: 4603         	mov	r3, r0
  2fa4ba: 461c         	mov	r4, r3
  2fa4bc: 4620         	mov	r0, r4
  2fa4be: f7fe ff7d    	bl	0x2f93bc <cocos2d::extension::CCTableViewCell::CCTableViewCell()> @ imm = #-0x1106
  2fa4c2: 9405         	str	r4, [sp, #0x14]
  2fa4c4: 9b05         	ldr	r3, [sp, #0x14]
  2fa4c6: 4618         	mov	r0, r3
  2fa4c8: f29d fd18    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x29da30
  2fa4cc: 9b03         	ldr	r3, [sp, #0xc]
  2fa4ce: 681b         	ldr	r3, [r3]
  2fa4d0: f503 7306    	add.w	r3, r3, #0x218
  2fa4d4: 681c         	ldr	r4, [r3]
  2fa4d6: ab08         	add	r3, sp, #0x20
  2fa4d8: 4618         	mov	r0, r3
  2fa4da: 9903         	ldr	r1, [sp, #0xc]
  2fa4dc: 9a02         	ldr	r2, [sp, #0x8]
  2fa4de: 9b01         	ldr	r3, [sp, #0x4]
  2fa4e0: 47a0         	blx	r4
  2fa4e2: ed9d 7a08    	vldr	s14, [sp, #32]
  2fa4e6: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2fa4ea: eec7 6a27    	vdiv.f32	s13, s14, s15
  2fa4ee: ed9d 7a09    	vldr	s14, [sp, #36]
  2fa4f2: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2fa4f6: eec7 7a27    	vdiv.f32	s15, s14, s15
  2fa4fa: ab0a         	add	r3, sp, #0x28
  2fa4fc: 4618         	mov	r0, r3
  2fa4fe: ee16 1a90    	vmov	r1, s13
  2fa502: ee17 2a90    	vmov	r2, s15
  2fa506: f298 fbf3    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2987e6
  2fa50a: f7f9 fad5    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x6a56
  2fa50e: 4602         	mov	r2, r0
  2fa510: 9b01         	ldr	r3, [sp, #0x4]
  2fa512: 336b         	adds	r3, #0x6b
  2fa514: 011b         	lsls	r3, r3, #0x4
  2fa516: 4413         	add	r3, r2
  2fa518: 3304         	adds	r3, #0x4
  2fa51a: aa0c         	add	r2, sp, #0x30
  2fa51c: 4610         	mov	r0, r2
  2fa51e: 4619         	mov	r1, r3
  2fa520: f298 fefa    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x298df4
  2fa524: ab0c         	add	r3, sp, #0x30
  2fa526: 4a27         	ldr	r2, [pc, #0x9c]         @ 0x2fa5c4 <BackHairTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x144>
  2fa528: 447a         	add	r2, pc
  2fa52a: 4610         	mov	r0, r2
  2fa52c: 4619         	mov	r1, r3
  2fa52e: f2dd fe67    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2ddcce
  2fa532: 4603         	mov	r3, r0
  2fa534: 9306         	str	r3, [sp, #0x18]
  2fa536: 9b06         	ldr	r3, [sp, #0x18]
  2fa538: 681b         	ldr	r3, [r3]
  2fa53a: f503 73fa    	add.w	r3, r3, #0x1f4
  2fa53e: 681b         	ldr	r3, [r3]
  2fa540: 9806         	ldr	r0, [sp, #0x18]
  2fa542: 4798         	blx	r3
  2fa544: 4603         	mov	r3, r0
  2fa546: 4618         	mov	r0, r3
  2fa548: f2f7 fd1c    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2f7a38
  2fa54c: 9b06         	ldr	r3, [sp, #0x18]
  2fa54e: 681b         	ldr	r3, [r3]
  2fa550: 334c         	adds	r3, #0x4c
  2fa552: 681b         	ldr	r3, [r3]
  2fa554: aa0a         	add	r2, sp, #0x28
  2fa556: 9806         	ldr	r0, [sp, #0x18]
  2fa558: 4611         	mov	r1, r2
  2fa55a: 4798         	blx	r3
  2fa55c: 4b1a         	ldr	r3, [pc, #0x68]         @ 0x2fa5c8 <BackHairTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x148>
  2fa55e: 447b         	add	r3, pc
  2fa560: 4618         	mov	r0, r3
  2fa562: f2dd fecf    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2ddd9e
  2fa566: 4603         	mov	r3, r0
  2fa568: 9307         	str	r3, [sp, #0x1c]
  2fa56a: 9b07         	ldr	r3, [sp, #0x1c]
  2fa56c: 681b         	ldr	r3, [r3]
  2fa56e: 334c         	adds	r3, #0x4c
  2fa570: 681b         	ldr	r3, [r3]
  2fa572: aa0a         	add	r2, sp, #0x28
  2fa574: 9807         	ldr	r0, [sp, #0x1c]
  2fa576: 4611         	mov	r1, r2
  2fa578: 4798         	blx	r3
  2fa57a: 9b07         	ldr	r3, [sp, #0x1c]
  2fa57c: 681b         	ldr	r3, [r3]
  2fa57e: 3340         	adds	r3, #0x40
  2fa580: 681b         	ldr	r3, [r3]
  2fa582: 9807         	ldr	r0, [sp, #0x1c]
  2fa584: f243 3133    	movw	r1, #0x3333
  2fa588: f6c3 7133    	movt	r1, #0x3f33
  2fa58c: 4798         	blx	r3
  2fa58e: 9b05         	ldr	r3, [sp, #0x14]
  2fa590: 681b         	ldr	r3, [r3]
  2fa592: 33c8         	adds	r3, #0xc8
  2fa594: 681b         	ldr	r3, [r3]
  2fa596: 9a05         	ldr	r2, [sp, #0x14]
  2fa598: 4610         	mov	r0, r2
  2fa59a: 9907         	ldr	r1, [sp, #0x1c]
  2fa59c: 4798         	blx	r3
  2fa59e: 9b05         	ldr	r3, [sp, #0x14]
  2fa5a0: 681b         	ldr	r3, [r3]
  2fa5a2: 33c8         	adds	r3, #0xc8
  2fa5a4: 681b         	ldr	r3, [r3]
  2fa5a6: 9a05         	ldr	r2, [sp, #0x14]
  2fa5a8: 4610         	mov	r0, r2
  2fa5aa: 9906         	ldr	r1, [sp, #0x18]
  2fa5ac: 4798         	blx	r3
  2fa5ae: 9b05         	ldr	r3, [sp, #0x14]
  2fa5b0: e004         	b	0x2fa5bc <BackHairTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x13c> @ imm = #0x8
  2fa5b2: 4620         	mov	r0, r4
  2fa5b4: f08d f576    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48daec
  2fa5b8: f08d f578    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48daf0
  2fa5bc: 4618         	mov	r0, r3
  2fa5be: b010         	add	sp, #0x40
  2fa5c0: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2fa5c1); words below are literal-pool data ---
  2fa5c2: bf00         	nop
  2fa5c4: a208         	adr	r2, #32 <non-virtual thunk to BackHairTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x4>
  2fa5c6: 004c         	lsls	r4, r1, #0x1
  2fa5c8: a1e6         	adr	r1, #920 <BurnTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x42>
  2fa5ca: 004c         	lsls	r4, r1, #0x1

// ==== BackHairTableView::tableCellAtIndex
//      file offset 0x2fa5cc (= ELF address; Ghidra 0x30a5cc), 8 bytes, Thumb-2
  2fa5cc: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fa5d0: f7ff bf56    	b.w	0x2fa480 <BackHairTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)> @ imm = #-0x154

// ==== BackHairTableView::tableCellSizeForIndex
//      file offset 0x2fa5d4 (= ELF address; Ghidra 0x30a5d4), 54 bytes, Thumb-2
  2fa5d4: b500         	push	{lr}
  2fa5d6: b085         	sub	sp, #0x14
  2fa5d8: 9003         	str	r0, [sp, #0xc]
  2fa5da: 9102         	str	r1, [sp, #0x8]
  2fa5dc: 9201         	str	r2, [sp, #0x4]
  2fa5de: 9300         	str	r3, [sp]
  2fa5e0: 9b01         	ldr	r3, [sp, #0x4]
  2fa5e2: 681b         	ldr	r3, [r3]
  2fa5e4: 338c         	adds	r3, #0x8c
  2fa5e6: 681b         	ldr	r3, [r3]
  2fa5e8: 9a01         	ldr	r2, [sp, #0x4]
  2fa5ea: 4610         	mov	r0, r2
  2fa5ec: 4798         	blx	r3
  2fa5ee: 4603         	mov	r3, r0
  2fa5f0: 681b         	ldr	r3, [r3]
  2fa5f2: 9803         	ldr	r0, [sp, #0xc]
  2fa5f4: 4619         	mov	r1, r3
  2fa5f6: f04f 0200    	mov.w	r2, #0x0
  2fa5fa: f2c4 228c    	movt	r2, #0x428c
  2fa5fe: f298 fd49    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x298a92
  2fa602: 9803         	ldr	r0, [sp, #0xc]
  2fa604: b005         	add	sp, #0x14
  2fa606: f85d fb04    	ldr	pc, [sp], #4

// ==== BackHairTableView::tableCellSizeForIndex
//      file offset 0x2fa60c (= ELF address; Ghidra 0x30a60c), 8 bytes, Thumb-2
  2fa60c: f5a1 71e4    	sub.w	r1, r1, #0x1c8
  2fa610: f7ff bfe0    	b.w	0x2fa5d4 <BackHairTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int)> @ imm = #-0x40

// ==== BackHairTableView::~BackHairTableView
//      file offset 0x2fc5b0 (= ELF address; Ghidra 0x30c5b0), 128 bytes, Thumb-2
  2fc5b0: b500         	push	{lr}
  2fc5b2: b083         	sub	sp, #0xc
  2fc5b4: 9001         	str	r0, [sp, #0x4]
  2fc5b6: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x2fc628 <BackHairTableView::~BackHairTableView()+0x78>
  2fc5b8: 447b         	add	r3, pc
  2fc5ba: 9a01         	ldr	r2, [sp, #0x4]
  2fc5bc: 491b         	ldr	r1, [pc, #0x6c]         @ 0x2fc62c <BackHairTableView::~BackHairTableView()+0x7c>
  2fc5be: 5859         	ldr	r1, [r3, r1]
  2fc5c0: 3108         	adds	r1, #0x8
  2fc5c2: 6011         	str	r1, [r2]
  2fc5c4: 9a01         	ldr	r2, [sp, #0x4]
  2fc5c6: 4919         	ldr	r1, [pc, #0x64]         @ 0x2fc62c <BackHairTableView::~BackHairTableView()+0x7c>
  2fc5c8: 5859         	ldr	r1, [r3, r1]
  2fc5ca: f501 710b    	add.w	r1, r1, #0x22c
  2fc5ce: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  2fc5d2: 9a01         	ldr	r2, [sp, #0x4]
  2fc5d4: 4915         	ldr	r1, [pc, #0x54]         @ 0x2fc62c <BackHairTableView::~BackHairTableView()+0x7c>
  2fc5d6: 5859         	ldr	r1, [r3, r1]
  2fc5d8: f501 7117    	add.w	r1, r1, #0x25c
  2fc5dc: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  2fc5e0: 9a01         	ldr	r2, [sp, #0x4]
  2fc5e2: 4912         	ldr	r1, [pc, #0x48]         @ 0x2fc62c <BackHairTableView::~BackHairTableView()+0x7c>
  2fc5e4: 5859         	ldr	r1, [r3, r1]
  2fc5e6: f501 711a    	add.w	r1, r1, #0x268
  2fc5ea: f8c2 10ec    	str.w	r1, [r2, #0xec]
  2fc5ee: 9a01         	ldr	r2, [sp, #0x4]
  2fc5f0: 490e         	ldr	r1, [pc, #0x38]         @ 0x2fc62c <BackHairTableView::~BackHairTableView()+0x7c>
  2fc5f2: 5859         	ldr	r1, [r3, r1]
  2fc5f4: f501 711e    	add.w	r1, r1, #0x278
  2fc5f8: f8c2 1198    	str.w	r1, [r2, #0x198]
  2fc5fc: 9a01         	ldr	r2, [sp, #0x4]
  2fc5fe: 490b         	ldr	r1, [pc, #0x2c]         @ 0x2fc62c <BackHairTableView::~BackHairTableView()+0x7c>
  2fc600: 585b         	ldr	r3, [r3, r1]
  2fc602: f503 7324    	add.w	r3, r3, #0x290
  2fc606: f8c2 31c8    	str.w	r3, [r2, #0x1c8]
  2fc60a: 9b01         	ldr	r3, [sp, #0x4]
  2fc60c: 4618         	mov	r0, r3
  2fc60e: f7ff fb01    	bl	0x2fbc14 <MenuTableView::~MenuTableView()> @ imm = #-0x9fe
  2fc612: 2300         	movs	r3, #0x0
  2fc614: 2b00         	cmp	r3, #0x0
  2fc616: d002         	beq	0x2fc61e <BackHairTableView::~BackHairTableView()+0x6e> @ imm = #0x4
  2fc618: 9801         	ldr	r0, [sp, #0x4]
  2fc61a: f08b f543    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48ba86
  2fc61e: 9b01         	ldr	r3, [sp, #0x4]
  2fc620: 4618         	mov	r0, r3
  2fc622: b003         	add	sp, #0xc
  2fc624: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2fc627); words below are literal-pool data ---
  2fc628: 6450         	str	r0, [r2, #0x44]
  2fc62a: 0063         	lsls	r3, r4, #0x1
  2fc62c: d86c         	bhi	0x2fc708 <non-virtual thunk to HairTableView::~HairTableView()+0x4> @ imm = #0xd8
  2fc62e: ffff f5a0    	<unknown>

// ==== BackHairTableView::~BackHairTableView
//      file offset 0x2fc630 (= ELF address; Ghidra 0x30c630), 8 bytes, Thumb-2
  2fc630: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fc634: f7ff bfbc    	b.w	0x2fc5b0 <BackHairTableView::~BackHairTableView()> @ imm = #-0x88

// ==== BackHairTableView::~BackHairTableView
//      file offset 0x2fc638 (= ELF address; Ghidra 0x30c638), 8 bytes, Thumb-2
  2fc638: f5a0 70cc    	sub.w	r0, r0, #0x198
  2fc63c: f7ff bfb8    	b.w	0x2fc5b0 <BackHairTableView::~BackHairTableView()> @ imm = #-0x90

// ==== BackHairTableView::~BackHairTableView
//      file offset 0x2fc640 (= ELF address; Ghidra 0x30c640), 8 bytes, Thumb-2
  2fc640: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2fc644: f7ff bfb4    	b.w	0x2fc5b0 <BackHairTableView::~BackHairTableView()> @ imm = #-0x98

// ==== BackHairTableView::~BackHairTableView
//      file offset 0x2fc648 (= ELF address; Ghidra 0x30c648), 28 bytes, Thumb-2
  2fc648: b500         	push	{lr}
  2fc64a: b083         	sub	sp, #0xc
  2fc64c: 9001         	str	r0, [sp, #0x4]
  2fc64e: 9801         	ldr	r0, [sp, #0x4]
  2fc650: f7ff ffae    	bl	0x2fc5b0 <BackHairTableView::~BackHairTableView()> @ imm = #-0xa4
  2fc654: 9801         	ldr	r0, [sp, #0x4]
  2fc656: f08b f525    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48ba4a
  2fc65a: 9b01         	ldr	r3, [sp, #0x4]
  2fc65c: 4618         	mov	r0, r3
  2fc65e: b003         	add	sp, #0xc
  2fc660: f85d fb04    	ldr	pc, [sp], #4

// ==== BackHairTableView::~BackHairTableView
//      file offset 0x2fc664 (= ELF address; Ghidra 0x30c664), 6 bytes, Thumb-2
  2fc664: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fc668: e7ee         	b	0x2fc648 <BackHairTableView::~BackHairTableView()> @ imm = #-0x24

// ==== BackHairTableView::~BackHairTableView
//      file offset 0x2fc66c (= ELF address; Ghidra 0x30c66c), 6 bytes, Thumb-2
  2fc66c: f5a0 70cc    	sub.w	r0, r0, #0x198
  2fc670: e7ea         	b	0x2fc648 <BackHairTableView::~BackHairTableView()> @ imm = #-0x2c

// ==== BackHairTableView::~BackHairTableView
//      file offset 0x2fc674 (= ELF address; Ghidra 0x30c674), 6 bytes, Thumb-2
  2fc674: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2fc678: e7e6         	b	0x2fc648 <BackHairTableView::~BackHairTableView()> @ imm = #-0x34
