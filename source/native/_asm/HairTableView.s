// HairTableView: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 16 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../HairTableView.cpp

// ==== HairTableView::HairTableView
//      file offset 0x2ea8fc (= ELF address; Ghidra 0x2fa8fc), 116 bytes, Thumb-2
  2ea8fc: b510         	push	{r4, lr}
  2ea8fe: b082         	sub	sp, #0x8
  2ea900: 9001         	str	r0, [sp, #0x4]
  2ea902: 4c19         	ldr	r4, [pc, #0x64]         @ 0x2ea968 <HairTableView::HairTableView()+0x6c>
  2ea904: 447c         	add	r4, pc
  2ea906: 9b01         	ldr	r3, [sp, #0x4]
  2ea908: 4618         	mov	r0, r3
  2ea90a: f086 f9c9    	bl	0x370ca0 <MenuTableView::MenuTableView()> @ imm = #0x86392
  2ea90e: 9b01         	ldr	r3, [sp, #0x4]
  2ea910: 4a16         	ldr	r2, [pc, #0x58]         @ 0x2ea96c <HairTableView::HairTableView()+0x70>
  2ea912: 58a2         	ldr	r2, [r4, r2]
  2ea914: 3208         	adds	r2, #0x8
  2ea916: 601a         	str	r2, [r3]
  2ea918: 9b01         	ldr	r3, [sp, #0x4]
  2ea91a: 4a14         	ldr	r2, [pc, #0x50]         @ 0x2ea96c <HairTableView::HairTableView()+0x70>
  2ea91c: 58a2         	ldr	r2, [r4, r2]
  2ea91e: f502 720b    	add.w	r2, r2, #0x22c
  2ea922: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  2ea926: 9b01         	ldr	r3, [sp, #0x4]
  2ea928: 4a10         	ldr	r2, [pc, #0x40]         @ 0x2ea96c <HairTableView::HairTableView()+0x70>
  2ea92a: 58a2         	ldr	r2, [r4, r2]
  2ea92c: f502 7217    	add.w	r2, r2, #0x25c
  2ea930: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  2ea934: 9b01         	ldr	r3, [sp, #0x4]
  2ea936: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x2ea96c <HairTableView::HairTableView()+0x70>
  2ea938: 58a2         	ldr	r2, [r4, r2]
  2ea93a: f502 721a    	add.w	r2, r2, #0x268
  2ea93e: f8c3 20ec    	str.w	r2, [r3, #0xec]
  2ea942: 9b01         	ldr	r3, [sp, #0x4]
  2ea944: 4a09         	ldr	r2, [pc, #0x24]         @ 0x2ea96c <HairTableView::HairTableView()+0x70>
  2ea946: 58a2         	ldr	r2, [r4, r2]
  2ea948: f502 721e    	add.w	r2, r2, #0x278
  2ea94c: f8c3 2198    	str.w	r2, [r3, #0x198]
  2ea950: 9b01         	ldr	r3, [sp, #0x4]
  2ea952: 4a06         	ldr	r2, [pc, #0x18]         @ 0x2ea96c <HairTableView::HairTableView()+0x70>
  2ea954: 58a2         	ldr	r2, [r4, r2]
  2ea956: f502 7224    	add.w	r2, r2, #0x290
  2ea95a: f8c3 21c8    	str.w	r2, [r3, #0x1c8]
  2ea95e: 9b01         	ldr	r3, [sp, #0x4]
  2ea960: 4618         	mov	r0, r3
  2ea962: b002         	add	sp, #0x8
  2ea964: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2ea965); words below are literal-pool data ---
  2ea966: bf00         	nop
  2ea968: 8104         	strh	r4, [r0, #0x8]
  2ea96a: 0064         	lsls	r4, r4, #0x1
  2ea96c: d868         	bhi	0x2eaa40 <BurnTableView::BurnTableView()+0x5c> @ imm = #0xd0
  2ea96e: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== HairTableView::numberOfCellsInTableView
//      file offset 0x2fa234 (= ELF address; Ghidra 0x30a234), 14 bytes, Thumb-2
  2fa234: b082         	sub	sp, #0x8
  2fa236: 9001         	str	r0, [sp, #0x4]
  2fa238: 9100         	str	r1, [sp]
  2fa23a: 2322         	movs	r3, #0x22
  2fa23c: 4618         	mov	r0, r3
  2fa23e: b002         	add	sp, #0x8
  2fa240: 4770         	bx	lr

// ==== HairTableView::numberOfCellsInTableView
//      file offset 0x2fa244 (= ELF address; Ghidra 0x30a244), 8 bytes, Thumb-2
  2fa244: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fa248: f7ff bff4    	b.w	0x2fa234 <HairTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*)> @ imm = #-0x18

// ==== HairTableView::getIdentifier
//      file offset 0x2fa24c (= ELF address; Ghidra 0x30a24c), 68 bytes, Thumb-2
  2fa24c: b500         	push	{lr}
  2fa24e: b085         	sub	sp, #0x14
  2fa250: 9001         	str	r0, [sp, #0x4]
  2fa252: 9100         	str	r1, [sp]
  2fa254: ab03         	add	r3, sp, #0xc
  2fa256: 4618         	mov	r0, r3
  2fa258: f090 f0cc    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x490198
  2fa25c: ab03         	add	r3, sp, #0xc
  2fa25e: 9801         	ldr	r0, [sp, #0x4]
  2fa260: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x2fa28c <HairTableView::getIdentifier()+0x40>
  2fa262: 447a         	add	r2, pc
  2fa264: 4611         	mov	r1, r2
  2fa266: 461a         	mov	r2, r3
  2fa268: f0bc f3fa    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4bc7f4
  2fa26c: ab03         	add	r3, sp, #0xc
  2fa26e: 4618         	mov	r0, r3
  2fa270: f090 f0c4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x490188
  2fa274: e005         	b	0x2fa282 <HairTableView::getIdentifier()+0x36> @ imm = #0xa
  2fa276: ab03         	add	r3, sp, #0xc
  2fa278: 4618         	mov	r0, r3
  2fa27a: f090 f0bf    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x49017e
  2fa27e: f08d f715    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48de2a
  2fa282: 9801         	ldr	r0, [sp, #0x4]
  2fa284: b005         	add	sp, #0x14
  2fa286: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2fa289); words below are literal-pool data ---
  2fa28a: bf00         	nop
  2fa28c: a53e         	adr	r5, #248 <HairTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x3e>
  2fa28e: 004c         	lsls	r4, r1, #0x1

// ==== HairTableView::tableCellAtIndex
//      file offset 0x2fa290 (= ELF address; Ghidra 0x30a290), 332 bytes, Thumb-2
  2fa290: b510         	push	{r4, lr}
  2fa292: b090         	sub	sp, #0x40
  2fa294: 9003         	str	r0, [sp, #0xc]
  2fa296: 9102         	str	r1, [sp, #0x8]
  2fa298: 9201         	str	r2, [sp, #0x4]
  2fa29a: 9802         	ldr	r0, [sp, #0x8]
  2fa29c: f159 fabc    	bl	0x453818 <cocos2d::extension::CCTableView::dequeueCell()> @ imm = #0x159578
  2fa2a0: 4603         	mov	r3, r0
  2fa2a2: 9305         	str	r3, [sp, #0x14]
  2fa2a4: 9b05         	ldr	r3, [sp, #0x14]
  2fa2a6: 2b00         	cmp	r3, #0x0
  2fa2a8: d006         	beq	0x2fa2b8 <HairTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x28> @ imm = #0xc
  2fa2aa: 9805         	ldr	r0, [sp, #0x14]
  2fa2ac: f15b fe9e    	bl	0x455fec <cocos2d::extension::CCTableViewCell::getIdx()> @ imm = #0x15bd3c
  2fa2b0: 4602         	mov	r2, r0
  2fa2b2: 9b01         	ldr	r3, [sp, #0x4]
  2fa2b4: 429a         	cmp	r2, r3
  2fa2b6: d001         	beq	0x2fa2bc <HairTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x2c> @ imm = #0x2
  2fa2b8: 2301         	movs	r3, #0x1
  2fa2ba: e000         	b	0x2fa2be <HairTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x2e> @ imm = #0x0
  2fa2bc: 2300         	movs	r3, #0x0
  2fa2be: 2b00         	cmp	r3, #0x0
  2fa2c0: d07d         	beq	0x2fa3be <HairTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x12e> @ imm = #0xfa
  2fa2c2: 20ec         	movs	r0, #0xec
  2fa2c4: f08d f34e    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x48d69c
  2fa2c8: 4603         	mov	r3, r0
  2fa2ca: 461c         	mov	r4, r3
  2fa2cc: 4620         	mov	r0, r4
  2fa2ce: f7ff f875    	bl	0x2f93bc <cocos2d::extension::CCTableViewCell::CCTableViewCell()> @ imm = #-0xf16
  2fa2d2: 9405         	str	r4, [sp, #0x14]
  2fa2d4: 9b05         	ldr	r3, [sp, #0x14]
  2fa2d6: 4618         	mov	r0, r3
  2fa2d8: f29d fe10    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x29dc20
  2fa2dc: 9b03         	ldr	r3, [sp, #0xc]
  2fa2de: 681b         	ldr	r3, [r3]
  2fa2e0: f503 7306    	add.w	r3, r3, #0x218
  2fa2e4: 681c         	ldr	r4, [r3]
  2fa2e6: ab08         	add	r3, sp, #0x20
  2fa2e8: 4618         	mov	r0, r3
  2fa2ea: 9903         	ldr	r1, [sp, #0xc]
  2fa2ec: 9a02         	ldr	r2, [sp, #0x8]
  2fa2ee: 9b01         	ldr	r3, [sp, #0x4]
  2fa2f0: 47a0         	blx	r4
  2fa2f2: ed9d 7a08    	vldr	s14, [sp, #32]
  2fa2f6: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2fa2fa: eec7 6a27    	vdiv.f32	s13, s14, s15
  2fa2fe: ed9d 7a09    	vldr	s14, [sp, #36]
  2fa302: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2fa306: eec7 7a27    	vdiv.f32	s15, s14, s15
  2fa30a: ab0a         	add	r3, sp, #0x28
  2fa30c: 4618         	mov	r0, r3
  2fa30e: ee16 1a90    	vmov	r1, s13
  2fa312: ee17 2a90    	vmov	r2, s15
  2fa316: f298 fceb    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2989d6
  2fa31a: f7f9 fbcd    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x6866
  2fa31e: 4602         	mov	r2, r0
  2fa320: 9b01         	ldr	r3, [sp, #0x4]
  2fa322: 3349         	adds	r3, #0x49
  2fa324: 011b         	lsls	r3, r3, #0x4
  2fa326: 4413         	add	r3, r2
  2fa328: 3304         	adds	r3, #0x4
  2fa32a: aa0c         	add	r2, sp, #0x30
  2fa32c: 4610         	mov	r0, r2
  2fa32e: 4619         	mov	r1, r3
  2fa330: f298 fff2    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x298fe4
  2fa334: ab0c         	add	r3, sp, #0x30
  2fa336: 4a27         	ldr	r2, [pc, #0x9c]         @ 0x2fa3d4 <HairTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x144>
  2fa338: 447a         	add	r2, pc
  2fa33a: 4610         	mov	r0, r2
  2fa33c: 4619         	mov	r1, r3
  2fa33e: f2dd ff5f    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2ddebe
  2fa342: 4603         	mov	r3, r0
  2fa344: 9306         	str	r3, [sp, #0x18]
  2fa346: 9b06         	ldr	r3, [sp, #0x18]
  2fa348: 681b         	ldr	r3, [r3]
  2fa34a: f503 73fa    	add.w	r3, r3, #0x1f4
  2fa34e: 681b         	ldr	r3, [r3]
  2fa350: 9806         	ldr	r0, [sp, #0x18]
  2fa352: 4798         	blx	r3
  2fa354: 4603         	mov	r3, r0
  2fa356: 4618         	mov	r0, r3
  2fa358: f2f7 fe14    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2f7c28
  2fa35c: 9b06         	ldr	r3, [sp, #0x18]
  2fa35e: 681b         	ldr	r3, [r3]
  2fa360: 334c         	adds	r3, #0x4c
  2fa362: 681b         	ldr	r3, [r3]
  2fa364: aa0a         	add	r2, sp, #0x28
  2fa366: 9806         	ldr	r0, [sp, #0x18]
  2fa368: 4611         	mov	r1, r2
  2fa36a: 4798         	blx	r3
  2fa36c: 4b1a         	ldr	r3, [pc, #0x68]         @ 0x2fa3d8 <HairTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x148>
  2fa36e: 447b         	add	r3, pc
  2fa370: 4618         	mov	r0, r3
  2fa372: f2dd ffc7    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2ddf8e
  2fa376: 4603         	mov	r3, r0
  2fa378: 9307         	str	r3, [sp, #0x1c]
  2fa37a: 9b07         	ldr	r3, [sp, #0x1c]
  2fa37c: 681b         	ldr	r3, [r3]
  2fa37e: 334c         	adds	r3, #0x4c
  2fa380: 681b         	ldr	r3, [r3]
  2fa382: aa0a         	add	r2, sp, #0x28
  2fa384: 9807         	ldr	r0, [sp, #0x1c]
  2fa386: 4611         	mov	r1, r2
  2fa388: 4798         	blx	r3
  2fa38a: 9b07         	ldr	r3, [sp, #0x1c]
  2fa38c: 681b         	ldr	r3, [r3]
  2fa38e: 3340         	adds	r3, #0x40
  2fa390: 681b         	ldr	r3, [r3]
  2fa392: 9807         	ldr	r0, [sp, #0x1c]
  2fa394: f243 3133    	movw	r1, #0x3333
  2fa398: f6c3 7133    	movt	r1, #0x3f33
  2fa39c: 4798         	blx	r3
  2fa39e: 9b05         	ldr	r3, [sp, #0x14]
  2fa3a0: 681b         	ldr	r3, [r3]
  2fa3a2: 33c8         	adds	r3, #0xc8
  2fa3a4: 681b         	ldr	r3, [r3]
  2fa3a6: 9a05         	ldr	r2, [sp, #0x14]
  2fa3a8: 4610         	mov	r0, r2
  2fa3aa: 9907         	ldr	r1, [sp, #0x1c]
  2fa3ac: 4798         	blx	r3
  2fa3ae: 9b05         	ldr	r3, [sp, #0x14]
  2fa3b0: 681b         	ldr	r3, [r3]
  2fa3b2: 33c8         	adds	r3, #0xc8
  2fa3b4: 681b         	ldr	r3, [r3]
  2fa3b6: 9a05         	ldr	r2, [sp, #0x14]
  2fa3b8: 4610         	mov	r0, r2
  2fa3ba: 9906         	ldr	r1, [sp, #0x18]
  2fa3bc: 4798         	blx	r3
  2fa3be: 9b05         	ldr	r3, [sp, #0x14]
  2fa3c0: e004         	b	0x2fa3cc <HairTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x13c> @ imm = #0x8
  2fa3c2: 4620         	mov	r0, r4
  2fa3c4: f08d f66e    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48dcdc
  2fa3c8: f08d f670    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48dce0
  2fa3cc: 4618         	mov	r0, r3
  2fa3ce: b010         	add	sp, #0x40
  2fa3d0: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2fa3d1); words below are literal-pool data ---
  2fa3d2: bf00         	nop
  2fa3d4: a3f8         	adr	r3, #992 <BackHairTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x50>
  2fa3d6: 004c         	lsls	r4, r1, #0x1
  2fa3d8: a3d6         	adr	r3, #856 <BackHairTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x32>
  2fa3da: 004c         	lsls	r4, r1, #0x1

// ==== HairTableView::tableCellAtIndex
//      file offset 0x2fa3dc (= ELF address; Ghidra 0x30a3dc), 8 bytes, Thumb-2
  2fa3dc: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fa3e0: f7ff bf56    	b.w	0x2fa290 <HairTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)> @ imm = #-0x154

// ==== HairTableView::tableCellSizeForIndex
//      file offset 0x2fa3e4 (= ELF address; Ghidra 0x30a3e4), 54 bytes, Thumb-2
  2fa3e4: b500         	push	{lr}
  2fa3e6: b085         	sub	sp, #0x14
  2fa3e8: 9003         	str	r0, [sp, #0xc]
  2fa3ea: 9102         	str	r1, [sp, #0x8]
  2fa3ec: 9201         	str	r2, [sp, #0x4]
  2fa3ee: 9300         	str	r3, [sp]
  2fa3f0: 9b01         	ldr	r3, [sp, #0x4]
  2fa3f2: 681b         	ldr	r3, [r3]
  2fa3f4: 338c         	adds	r3, #0x8c
  2fa3f6: 681b         	ldr	r3, [r3]
  2fa3f8: 9a01         	ldr	r2, [sp, #0x4]
  2fa3fa: 4610         	mov	r0, r2
  2fa3fc: 4798         	blx	r3
  2fa3fe: 4603         	mov	r3, r0
  2fa400: 681b         	ldr	r3, [r3]
  2fa402: 9803         	ldr	r0, [sp, #0xc]
  2fa404: 4619         	mov	r1, r3
  2fa406: f04f 0200    	mov.w	r2, #0x0
  2fa40a: f2c4 228c    	movt	r2, #0x428c
  2fa40e: f298 fe41    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x298c82
  2fa412: 9803         	ldr	r0, [sp, #0xc]
  2fa414: b005         	add	sp, #0x14
  2fa416: f85d fb04    	ldr	pc, [sp], #4

// ==== HairTableView::tableCellSizeForIndex
//      file offset 0x2fa41c (= ELF address; Ghidra 0x30a41c), 8 bytes, Thumb-2
  2fa41c: f5a1 71e4    	sub.w	r1, r1, #0x1c8
  2fa420: f7ff bfe0    	b.w	0x2fa3e4 <HairTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int)> @ imm = #-0x40

// ==== HairTableView::~HairTableView
//      file offset 0x2fc67c (= ELF address; Ghidra 0x30c67c), 128 bytes, Thumb-2
  2fc67c: b500         	push	{lr}
  2fc67e: b083         	sub	sp, #0xc
  2fc680: 9001         	str	r0, [sp, #0x4]
  2fc682: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x2fc6f4 <HairTableView::~HairTableView()+0x78>
  2fc684: 447b         	add	r3, pc
  2fc686: 9a01         	ldr	r2, [sp, #0x4]
  2fc688: 491b         	ldr	r1, [pc, #0x6c]         @ 0x2fc6f8 <HairTableView::~HairTableView()+0x7c>
  2fc68a: 5859         	ldr	r1, [r3, r1]
  2fc68c: 3108         	adds	r1, #0x8
  2fc68e: 6011         	str	r1, [r2]
  2fc690: 9a01         	ldr	r2, [sp, #0x4]
  2fc692: 4919         	ldr	r1, [pc, #0x64]         @ 0x2fc6f8 <HairTableView::~HairTableView()+0x7c>
  2fc694: 5859         	ldr	r1, [r3, r1]
  2fc696: f501 710b    	add.w	r1, r1, #0x22c
  2fc69a: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  2fc69e: 9a01         	ldr	r2, [sp, #0x4]
  2fc6a0: 4915         	ldr	r1, [pc, #0x54]         @ 0x2fc6f8 <HairTableView::~HairTableView()+0x7c>
  2fc6a2: 5859         	ldr	r1, [r3, r1]
  2fc6a4: f501 7117    	add.w	r1, r1, #0x25c
  2fc6a8: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  2fc6ac: 9a01         	ldr	r2, [sp, #0x4]
  2fc6ae: 4912         	ldr	r1, [pc, #0x48]         @ 0x2fc6f8 <HairTableView::~HairTableView()+0x7c>
  2fc6b0: 5859         	ldr	r1, [r3, r1]
  2fc6b2: f501 711a    	add.w	r1, r1, #0x268
  2fc6b6: f8c2 10ec    	str.w	r1, [r2, #0xec]
  2fc6ba: 9a01         	ldr	r2, [sp, #0x4]
  2fc6bc: 490e         	ldr	r1, [pc, #0x38]         @ 0x2fc6f8 <HairTableView::~HairTableView()+0x7c>
  2fc6be: 5859         	ldr	r1, [r3, r1]
  2fc6c0: f501 711e    	add.w	r1, r1, #0x278
  2fc6c4: f8c2 1198    	str.w	r1, [r2, #0x198]
  2fc6c8: 9a01         	ldr	r2, [sp, #0x4]
  2fc6ca: 490b         	ldr	r1, [pc, #0x2c]         @ 0x2fc6f8 <HairTableView::~HairTableView()+0x7c>
  2fc6cc: 585b         	ldr	r3, [r3, r1]
  2fc6ce: f503 7324    	add.w	r3, r3, #0x290
  2fc6d2: f8c2 31c8    	str.w	r3, [r2, #0x1c8]
  2fc6d6: 9b01         	ldr	r3, [sp, #0x4]
  2fc6d8: 4618         	mov	r0, r3
  2fc6da: f7ff fa9b    	bl	0x2fbc14 <MenuTableView::~MenuTableView()> @ imm = #-0xaca
  2fc6de: 2300         	movs	r3, #0x0
  2fc6e0: 2b00         	cmp	r3, #0x0
  2fc6e2: d002         	beq	0x2fc6ea <HairTableView::~HairTableView()+0x6e> @ imm = #0x4
  2fc6e4: 9801         	ldr	r0, [sp, #0x4]
  2fc6e6: f08b f4dd    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48b9ba
  2fc6ea: 9b01         	ldr	r3, [sp, #0x4]
  2fc6ec: 4618         	mov	r0, r3
  2fc6ee: b003         	add	sp, #0xc
  2fc6f0: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2fc6f3); words below are literal-pool data ---
  2fc6f4: 6384         	str	r4, [r0, #0x38]
  2fc6f6: 0063         	lsls	r3, r4, #0x1
  2fc6f8: d868         	bhi	0x2fc7cc <non-virtual thunk to HairColorTableView::~HairColorTableView()+0x4> @ imm = #0xd0
  2fc6fa: ffff f5a0    	<unknown>

// ==== HairTableView::~HairTableView
//      file offset 0x2fc6fc (= ELF address; Ghidra 0x30c6fc), 8 bytes, Thumb-2
  2fc6fc: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fc700: f7ff bfbc    	b.w	0x2fc67c <HairTableView::~HairTableView()> @ imm = #-0x88

// ==== HairTableView::~HairTableView
//      file offset 0x2fc704 (= ELF address; Ghidra 0x30c704), 8 bytes, Thumb-2
  2fc704: f5a0 70cc    	sub.w	r0, r0, #0x198
  2fc708: f7ff bfb8    	b.w	0x2fc67c <HairTableView::~HairTableView()> @ imm = #-0x90

// ==== HairTableView::~HairTableView
//      file offset 0x2fc70c (= ELF address; Ghidra 0x30c70c), 8 bytes, Thumb-2
  2fc70c: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2fc710: f7ff bfb4    	b.w	0x2fc67c <HairTableView::~HairTableView()> @ imm = #-0x98

// ==== HairTableView::~HairTableView
//      file offset 0x2fc714 (= ELF address; Ghidra 0x30c714), 28 bytes, Thumb-2
  2fc714: b500         	push	{lr}
  2fc716: b083         	sub	sp, #0xc
  2fc718: 9001         	str	r0, [sp, #0x4]
  2fc71a: 9801         	ldr	r0, [sp, #0x4]
  2fc71c: f7ff ffae    	bl	0x2fc67c <HairTableView::~HairTableView()> @ imm = #-0xa4
  2fc720: 9801         	ldr	r0, [sp, #0x4]
  2fc722: f08b f4bf    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48b97e
  2fc726: 9b01         	ldr	r3, [sp, #0x4]
  2fc728: 4618         	mov	r0, r3
  2fc72a: b003         	add	sp, #0xc
  2fc72c: f85d fb04    	ldr	pc, [sp], #4

// ==== HairTableView::~HairTableView
//      file offset 0x2fc730 (= ELF address; Ghidra 0x30c730), 6 bytes, Thumb-2
  2fc730: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fc734: e7ee         	b	0x2fc714 <HairTableView::~HairTableView()> @ imm = #-0x24

// ==== HairTableView::~HairTableView
//      file offset 0x2fc738 (= ELF address; Ghidra 0x30c738), 6 bytes, Thumb-2
  2fc738: f5a0 70cc    	sub.w	r0, r0, #0x198
  2fc73c: e7ea         	b	0x2fc714 <HairTableView::~HairTableView()> @ imm = #-0x2c

// ==== HairTableView::~HairTableView
//      file offset 0x2fc740 (= ELF address; Ghidra 0x30c740), 6 bytes, Thumb-2
  2fc740: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2fc744: e7e6         	b	0x2fc714 <HairTableView::~HairTableView()> @ imm = #-0x34
