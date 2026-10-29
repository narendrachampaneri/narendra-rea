// BurnTableView: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 16 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../BurnTableView.cpp

// ==== BurnTableView::BurnTableView
//      file offset 0x2ea9e4 (= ELF address; Ghidra 0x2fa9e4), 116 bytes, Thumb-2
  2ea9e4: b510         	push	{r4, lr}
  2ea9e6: b082         	sub	sp, #0x8
  2ea9e8: 9001         	str	r0, [sp, #0x4]
  2ea9ea: 4c19         	ldr	r4, [pc, #0x64]         @ 0x2eaa50 <BurnTableView::BurnTableView()+0x6c>
  2ea9ec: 447c         	add	r4, pc
  2ea9ee: 9b01         	ldr	r3, [sp, #0x4]
  2ea9f0: 4618         	mov	r0, r3
  2ea9f2: f086 f955    	bl	0x370ca0 <MenuTableView::MenuTableView()> @ imm = #0x862aa
  2ea9f6: 9b01         	ldr	r3, [sp, #0x4]
  2ea9f8: 4a16         	ldr	r2, [pc, #0x58]         @ 0x2eaa54 <BurnTableView::BurnTableView()+0x70>
  2ea9fa: 58a2         	ldr	r2, [r4, r2]
  2ea9fc: 3208         	adds	r2, #0x8
  2ea9fe: 601a         	str	r2, [r3]
  2eaa00: 9b01         	ldr	r3, [sp, #0x4]
  2eaa02: 4a14         	ldr	r2, [pc, #0x50]         @ 0x2eaa54 <BurnTableView::BurnTableView()+0x70>
  2eaa04: 58a2         	ldr	r2, [r4, r2]
  2eaa06: f502 720b    	add.w	r2, r2, #0x22c
  2eaa0a: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  2eaa0e: 9b01         	ldr	r3, [sp, #0x4]
  2eaa10: 4a10         	ldr	r2, [pc, #0x40]         @ 0x2eaa54 <BurnTableView::BurnTableView()+0x70>
  2eaa12: 58a2         	ldr	r2, [r4, r2]
  2eaa14: f502 7217    	add.w	r2, r2, #0x25c
  2eaa18: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  2eaa1c: 9b01         	ldr	r3, [sp, #0x4]
  2eaa1e: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x2eaa54 <BurnTableView::BurnTableView()+0x70>
  2eaa20: 58a2         	ldr	r2, [r4, r2]
  2eaa22: f502 721a    	add.w	r2, r2, #0x268
  2eaa26: f8c3 20ec    	str.w	r2, [r3, #0xec]
  2eaa2a: 9b01         	ldr	r3, [sp, #0x4]
  2eaa2c: 4a09         	ldr	r2, [pc, #0x24]         @ 0x2eaa54 <BurnTableView::BurnTableView()+0x70>
  2eaa2e: 58a2         	ldr	r2, [r4, r2]
  2eaa30: f502 721e    	add.w	r2, r2, #0x278
  2eaa34: f8c3 2198    	str.w	r2, [r3, #0x198]
  2eaa38: 9b01         	ldr	r3, [sp, #0x4]
  2eaa3a: 4a06         	ldr	r2, [pc, #0x18]         @ 0x2eaa54 <BurnTableView::BurnTableView()+0x70>
  2eaa3c: 58a2         	ldr	r2, [r4, r2]
  2eaa3e: f502 7224    	add.w	r2, r2, #0x290
  2eaa42: f8c3 21c8    	str.w	r2, [r3, #0x1c8]
  2eaa46: 9b01         	ldr	r3, [sp, #0x4]
  2eaa48: 4618         	mov	r0, r3
  2eaa4a: b002         	add	sp, #0x8
  2eaa4c: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2eaa4d); words below are literal-pool data ---
  2eaa4e: bf00         	nop
  2eaa50: 801c         	strh	r4, [r3]
  2eaa52: 0064         	lsls	r4, r4, #0x1
  2eaa54: d870         	bhi	0x2eab38 <StacheTableView::StacheTableView()+0x6c> @ imm = #0xe0
  2eaa56: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== BurnTableView::numberOfCellsInTableView
//      file offset 0x2fa614 (= ELF address; Ghidra 0x30a614), 14 bytes, Thumb-2
  2fa614: b082         	sub	sp, #0x8
  2fa616: 9001         	str	r0, [sp, #0x4]
  2fa618: 9100         	str	r1, [sp]
  2fa61a: 2309         	movs	r3, #0x9
  2fa61c: 4618         	mov	r0, r3
  2fa61e: b002         	add	sp, #0x8
  2fa620: 4770         	bx	lr

// ==== BurnTableView::numberOfCellsInTableView
//      file offset 0x2fa624 (= ELF address; Ghidra 0x30a624), 8 bytes, Thumb-2
  2fa624: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fa628: f7ff bff4    	b.w	0x2fa614 <BurnTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*)> @ imm = #-0x18

// ==== BurnTableView::getIdentifier
//      file offset 0x2fa62c (= ELF address; Ghidra 0x30a62c), 68 bytes, Thumb-2
  2fa62c: b500         	push	{lr}
  2fa62e: b085         	sub	sp, #0x14
  2fa630: 9001         	str	r0, [sp, #0x4]
  2fa632: 9100         	str	r1, [sp]
  2fa634: ab03         	add	r3, sp, #0xc
  2fa636: 4618         	mov	r0, r3
  2fa638: f08f f6dc    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x48fdb8
  2fa63c: ab03         	add	r3, sp, #0xc
  2fa63e: 9801         	ldr	r0, [sp, #0x4]
  2fa640: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x2fa66c <BurnTableView::getIdentifier()+0x40>
  2fa642: 447a         	add	r2, pc
  2fa644: 4611         	mov	r1, r2
  2fa646: 461a         	mov	r2, r3
  2fa648: f0bc f20a    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4bc414
  2fa64c: ab03         	add	r3, sp, #0xc
  2fa64e: 4618         	mov	r0, r3
  2fa650: f08f f6d4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x48fda8
  2fa654: e005         	b	0x2fa662 <BurnTableView::getIdentifier()+0x36> @ imm = #0xa
  2fa656: ab03         	add	r3, sp, #0xc
  2fa658: 4618         	mov	r0, r3
  2fa65a: f08f f6cf    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x48fd9e
  2fa65e: f08d f525    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48da4a
  2fa662: 9801         	ldr	r0, [sp, #0x4]
  2fa664: b005         	add	sp, #0x14
  2fa666: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2fa669); words below are literal-pool data ---
  2fa66a: bf00         	nop
  2fa66c: a16e         	adr	r1, #440 <BurnTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x6e>
  2fa66e: 004c         	lsls	r4, r1, #0x1

// ==== BurnTableView::tableCellAtIndex
//      file offset 0x2fa670 (= ELF address; Ghidra 0x30a670), 332 bytes, Thumb-2
  2fa670: b510         	push	{r4, lr}
  2fa672: b090         	sub	sp, #0x40
  2fa674: 9003         	str	r0, [sp, #0xc]
  2fa676: 9102         	str	r1, [sp, #0x8]
  2fa678: 9201         	str	r2, [sp, #0x4]
  2fa67a: 9802         	ldr	r0, [sp, #0x8]
  2fa67c: f159 f8cc    	bl	0x453818 <cocos2d::extension::CCTableView::dequeueCell()> @ imm = #0x159198
  2fa680: 4603         	mov	r3, r0
  2fa682: 9305         	str	r3, [sp, #0x14]
  2fa684: 9b05         	ldr	r3, [sp, #0x14]
  2fa686: 2b00         	cmp	r3, #0x0
  2fa688: d006         	beq	0x2fa698 <BurnTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x28> @ imm = #0xc
  2fa68a: 9805         	ldr	r0, [sp, #0x14]
  2fa68c: f15b fcae    	bl	0x455fec <cocos2d::extension::CCTableViewCell::getIdx()> @ imm = #0x15b95c
  2fa690: 4602         	mov	r2, r0
  2fa692: 9b01         	ldr	r3, [sp, #0x4]
  2fa694: 429a         	cmp	r2, r3
  2fa696: d001         	beq	0x2fa69c <BurnTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x2c> @ imm = #0x2
  2fa698: 2301         	movs	r3, #0x1
  2fa69a: e000         	b	0x2fa69e <BurnTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x2e> @ imm = #0x0
  2fa69c: 2300         	movs	r3, #0x0
  2fa69e: 2b00         	cmp	r3, #0x0
  2fa6a0: d07d         	beq	0x2fa79e <BurnTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x12e> @ imm = #0xfa
  2fa6a2: 20ec         	movs	r0, #0xec
  2fa6a4: f08d f15e    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x48d2bc
  2fa6a8: 4603         	mov	r3, r0
  2fa6aa: 461c         	mov	r4, r3
  2fa6ac: 4620         	mov	r0, r4
  2fa6ae: f7fe fe85    	bl	0x2f93bc <cocos2d::extension::CCTableViewCell::CCTableViewCell()> @ imm = #-0x12f6
  2fa6b2: 9405         	str	r4, [sp, #0x14]
  2fa6b4: 9b05         	ldr	r3, [sp, #0x14]
  2fa6b6: 4618         	mov	r0, r3
  2fa6b8: f29d fc20    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x29d840
  2fa6bc: 9b03         	ldr	r3, [sp, #0xc]
  2fa6be: 681b         	ldr	r3, [r3]
  2fa6c0: f503 7306    	add.w	r3, r3, #0x218
  2fa6c4: 681c         	ldr	r4, [r3]
  2fa6c6: ab08         	add	r3, sp, #0x20
  2fa6c8: 4618         	mov	r0, r3
  2fa6ca: 9903         	ldr	r1, [sp, #0xc]
  2fa6cc: 9a02         	ldr	r2, [sp, #0x8]
  2fa6ce: 9b01         	ldr	r3, [sp, #0x4]
  2fa6d0: 47a0         	blx	r4
  2fa6d2: ed9d 7a08    	vldr	s14, [sp, #32]
  2fa6d6: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2fa6da: eec7 6a27    	vdiv.f32	s13, s14, s15
  2fa6de: ed9d 7a09    	vldr	s14, [sp, #36]
  2fa6e2: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2fa6e6: eec7 7a27    	vdiv.f32	s15, s14, s15
  2fa6ea: ab0a         	add	r3, sp, #0x28
  2fa6ec: 4618         	mov	r0, r3
  2fa6ee: ee16 1a90    	vmov	r1, s13
  2fa6f2: ee17 2a90    	vmov	r2, s15
  2fa6f6: f298 fafb    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2985f6
  2fa6fa: f7f9 f9dd    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x6c46
  2fa6fe: 4602         	mov	r2, r0
  2fa700: 9b01         	ldr	r3, [sp, #0x4]
  2fa702: 3373         	adds	r3, #0x73
  2fa704: 011b         	lsls	r3, r3, #0x4
  2fa706: 4413         	add	r3, r2
  2fa708: 3304         	adds	r3, #0x4
  2fa70a: aa0c         	add	r2, sp, #0x30
  2fa70c: 4610         	mov	r0, r2
  2fa70e: 4619         	mov	r1, r3
  2fa710: f298 fe02    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x298c04
  2fa714: ab0c         	add	r3, sp, #0x30
  2fa716: 4a27         	ldr	r2, [pc, #0x9c]         @ 0x2fa7b4 <BurnTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x144>
  2fa718: 447a         	add	r2, pc
  2fa71a: 4610         	mov	r0, r2
  2fa71c: 4619         	mov	r1, r3
  2fa71e: f2dd fd6f    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2ddade
  2fa722: 4603         	mov	r3, r0
  2fa724: 9306         	str	r3, [sp, #0x18]
  2fa726: 9b06         	ldr	r3, [sp, #0x18]
  2fa728: 681b         	ldr	r3, [r3]
  2fa72a: f503 73fa    	add.w	r3, r3, #0x1f4
  2fa72e: 681b         	ldr	r3, [r3]
  2fa730: 9806         	ldr	r0, [sp, #0x18]
  2fa732: 4798         	blx	r3
  2fa734: 4603         	mov	r3, r0
  2fa736: 4618         	mov	r0, r3
  2fa738: f2f7 fc24    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2f7848
  2fa73c: 9b06         	ldr	r3, [sp, #0x18]
  2fa73e: 681b         	ldr	r3, [r3]
  2fa740: 334c         	adds	r3, #0x4c
  2fa742: 681b         	ldr	r3, [r3]
  2fa744: aa0a         	add	r2, sp, #0x28
  2fa746: 9806         	ldr	r0, [sp, #0x18]
  2fa748: 4611         	mov	r1, r2
  2fa74a: 4798         	blx	r3
  2fa74c: 4b1a         	ldr	r3, [pc, #0x68]         @ 0x2fa7b8 <BurnTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x148>
  2fa74e: 447b         	add	r3, pc
  2fa750: 4618         	mov	r0, r3
  2fa752: f2dd fdd7    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2ddbae
  2fa756: 4603         	mov	r3, r0
  2fa758: 9307         	str	r3, [sp, #0x1c]
  2fa75a: 9b07         	ldr	r3, [sp, #0x1c]
  2fa75c: 681b         	ldr	r3, [r3]
  2fa75e: 334c         	adds	r3, #0x4c
  2fa760: 681b         	ldr	r3, [r3]
  2fa762: aa0a         	add	r2, sp, #0x28
  2fa764: 9807         	ldr	r0, [sp, #0x1c]
  2fa766: 4611         	mov	r1, r2
  2fa768: 4798         	blx	r3
  2fa76a: 9b07         	ldr	r3, [sp, #0x1c]
  2fa76c: 681b         	ldr	r3, [r3]
  2fa76e: 3340         	adds	r3, #0x40
  2fa770: 681b         	ldr	r3, [r3]
  2fa772: 9807         	ldr	r0, [sp, #0x1c]
  2fa774: f243 3133    	movw	r1, #0x3333
  2fa778: f6c3 61b3    	movt	r1, #0x3eb3
  2fa77c: 4798         	blx	r3
  2fa77e: 9b05         	ldr	r3, [sp, #0x14]
  2fa780: 681b         	ldr	r3, [r3]
  2fa782: 33c8         	adds	r3, #0xc8
  2fa784: 681b         	ldr	r3, [r3]
  2fa786: 9a05         	ldr	r2, [sp, #0x14]
  2fa788: 4610         	mov	r0, r2
  2fa78a: 9907         	ldr	r1, [sp, #0x1c]
  2fa78c: 4798         	blx	r3
  2fa78e: 9b05         	ldr	r3, [sp, #0x14]
  2fa790: 681b         	ldr	r3, [r3]
  2fa792: 33c8         	adds	r3, #0xc8
  2fa794: 681b         	ldr	r3, [r3]
  2fa796: 9a05         	ldr	r2, [sp, #0x14]
  2fa798: 4610         	mov	r0, r2
  2fa79a: 9906         	ldr	r1, [sp, #0x18]
  2fa79c: 4798         	blx	r3
  2fa79e: 9b05         	ldr	r3, [sp, #0x14]
  2fa7a0: e004         	b	0x2fa7ac <BurnTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x13c> @ imm = #0x8
  2fa7a2: 4620         	mov	r0, r4
  2fa7a4: f08d f47e    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48d8fc
  2fa7a8: f08d f480    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48d900
  2fa7ac: 4618         	mov	r0, r3
  2fa7ae: b010         	add	sp, #0x40
  2fa7b0: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2fa7b1); words below are literal-pool data ---
  2fa7b2: bf00         	nop
  2fa7b4: a018         	adr	r0, #96 <BurnTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int)+0xc>
  2fa7b6: 004c         	lsls	r4, r1, #0x1
  2fa7b8: 9ff6         	ldr	r7, [sp, #0x3d8]
  2fa7ba: 004c         	lsls	r4, r1, #0x1

// ==== BurnTableView::tableCellAtIndex
//      file offset 0x2fa7bc (= ELF address; Ghidra 0x30a7bc), 8 bytes, Thumb-2
  2fa7bc: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fa7c0: f7ff bf56    	b.w	0x2fa670 <BurnTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)> @ imm = #-0x154

// ==== BurnTableView::tableCellSizeForIndex
//      file offset 0x2fa7c4 (= ELF address; Ghidra 0x30a7c4), 54 bytes, Thumb-2
  2fa7c4: b500         	push	{lr}
  2fa7c6: b085         	sub	sp, #0x14
  2fa7c8: 9003         	str	r0, [sp, #0xc]
  2fa7ca: 9102         	str	r1, [sp, #0x8]
  2fa7cc: 9201         	str	r2, [sp, #0x4]
  2fa7ce: 9300         	str	r3, [sp]
  2fa7d0: 9b01         	ldr	r3, [sp, #0x4]
  2fa7d2: 681b         	ldr	r3, [r3]
  2fa7d4: 338c         	adds	r3, #0x8c
  2fa7d6: 681b         	ldr	r3, [r3]
  2fa7d8: 9a01         	ldr	r2, [sp, #0x4]
  2fa7da: 4610         	mov	r0, r2
  2fa7dc: 4798         	blx	r3
  2fa7de: 4603         	mov	r3, r0
  2fa7e0: 681b         	ldr	r3, [r3]
  2fa7e2: 9803         	ldr	r0, [sp, #0xc]
  2fa7e4: 4619         	mov	r1, r3
  2fa7e6: f04f 0200    	mov.w	r2, #0x0
  2fa7ea: f2c4 2220    	movt	r2, #0x4220
  2fa7ee: f298 fc51    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x2988a2
  2fa7f2: 9803         	ldr	r0, [sp, #0xc]
  2fa7f4: b005         	add	sp, #0x14
  2fa7f6: f85d fb04    	ldr	pc, [sp], #4

// ==== BurnTableView::tableCellSizeForIndex
//      file offset 0x2fa7fc (= ELF address; Ghidra 0x30a7fc), 8 bytes, Thumb-2
  2fa7fc: f5a1 71e4    	sub.w	r1, r1, #0x1c8
  2fa800: f7ff bfe0    	b.w	0x2fa7c4 <BurnTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int)> @ imm = #-0x40

// ==== BurnTableView::~BurnTableView
//      file offset 0x2fc4e4 (= ELF address; Ghidra 0x30c4e4), 128 bytes, Thumb-2
  2fc4e4: b500         	push	{lr}
  2fc4e6: b083         	sub	sp, #0xc
  2fc4e8: 9001         	str	r0, [sp, #0x4]
  2fc4ea: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x2fc55c <BurnTableView::~BurnTableView()+0x78>
  2fc4ec: 447b         	add	r3, pc
  2fc4ee: 9a01         	ldr	r2, [sp, #0x4]
  2fc4f0: 491b         	ldr	r1, [pc, #0x6c]         @ 0x2fc560 <BurnTableView::~BurnTableView()+0x7c>
  2fc4f2: 5859         	ldr	r1, [r3, r1]
  2fc4f4: 3108         	adds	r1, #0x8
  2fc4f6: 6011         	str	r1, [r2]
  2fc4f8: 9a01         	ldr	r2, [sp, #0x4]
  2fc4fa: 4919         	ldr	r1, [pc, #0x64]         @ 0x2fc560 <BurnTableView::~BurnTableView()+0x7c>
  2fc4fc: 5859         	ldr	r1, [r3, r1]
  2fc4fe: f501 710b    	add.w	r1, r1, #0x22c
  2fc502: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  2fc506: 9a01         	ldr	r2, [sp, #0x4]
  2fc508: 4915         	ldr	r1, [pc, #0x54]         @ 0x2fc560 <BurnTableView::~BurnTableView()+0x7c>
  2fc50a: 5859         	ldr	r1, [r3, r1]
  2fc50c: f501 7117    	add.w	r1, r1, #0x25c
  2fc510: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  2fc514: 9a01         	ldr	r2, [sp, #0x4]
  2fc516: 4912         	ldr	r1, [pc, #0x48]         @ 0x2fc560 <BurnTableView::~BurnTableView()+0x7c>
  2fc518: 5859         	ldr	r1, [r3, r1]
  2fc51a: f501 711a    	add.w	r1, r1, #0x268
  2fc51e: f8c2 10ec    	str.w	r1, [r2, #0xec]
  2fc522: 9a01         	ldr	r2, [sp, #0x4]
  2fc524: 490e         	ldr	r1, [pc, #0x38]         @ 0x2fc560 <BurnTableView::~BurnTableView()+0x7c>
  2fc526: 5859         	ldr	r1, [r3, r1]
  2fc528: f501 711e    	add.w	r1, r1, #0x278
  2fc52c: f8c2 1198    	str.w	r1, [r2, #0x198]
  2fc530: 9a01         	ldr	r2, [sp, #0x4]
  2fc532: 490b         	ldr	r1, [pc, #0x2c]         @ 0x2fc560 <BurnTableView::~BurnTableView()+0x7c>
  2fc534: 585b         	ldr	r3, [r3, r1]
  2fc536: f503 7324    	add.w	r3, r3, #0x290
  2fc53a: f8c2 31c8    	str.w	r3, [r2, #0x1c8]
  2fc53e: 9b01         	ldr	r3, [sp, #0x4]
  2fc540: 4618         	mov	r0, r3
  2fc542: f7ff fb67    	bl	0x2fbc14 <MenuTableView::~MenuTableView()> @ imm = #-0x932
  2fc546: 2300         	movs	r3, #0x0
  2fc548: 2b00         	cmp	r3, #0x0
  2fc54a: d002         	beq	0x2fc552 <BurnTableView::~BurnTableView()+0x6e> @ imm = #0x4
  2fc54c: 9801         	ldr	r0, [sp, #0x4]
  2fc54e: f08b f5a9    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48bb52
  2fc552: 9b01         	ldr	r3, [sp, #0x4]
  2fc554: 4618         	mov	r0, r3
  2fc556: b003         	add	sp, #0xc
  2fc558: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2fc55b); words below are literal-pool data ---
  2fc55c: 651c         	str	r4, [r3, #0x50]
  2fc55e: 0063         	lsls	r3, r4, #0x1
  2fc560: d870         	bhi	0x2fc644 <non-virtual thunk to BackHairTableView::~BackHairTableView()+0x4> @ imm = #0xe0
  2fc562: ffff f5a0    	<unknown>

// ==== BurnTableView::~BurnTableView
//      file offset 0x2fc564 (= ELF address; Ghidra 0x30c564), 8 bytes, Thumb-2
  2fc564: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fc568: f7ff bfbc    	b.w	0x2fc4e4 <BurnTableView::~BurnTableView()> @ imm = #-0x88

// ==== BurnTableView::~BurnTableView
//      file offset 0x2fc56c (= ELF address; Ghidra 0x30c56c), 8 bytes, Thumb-2
  2fc56c: f5a0 70cc    	sub.w	r0, r0, #0x198
  2fc570: f7ff bfb8    	b.w	0x2fc4e4 <BurnTableView::~BurnTableView()> @ imm = #-0x90

// ==== BurnTableView::~BurnTableView
//      file offset 0x2fc574 (= ELF address; Ghidra 0x30c574), 8 bytes, Thumb-2
  2fc574: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2fc578: f7ff bfb4    	b.w	0x2fc4e4 <BurnTableView::~BurnTableView()> @ imm = #-0x98

// ==== BurnTableView::~BurnTableView
//      file offset 0x2fc57c (= ELF address; Ghidra 0x30c57c), 28 bytes, Thumb-2
  2fc57c: b500         	push	{lr}
  2fc57e: b083         	sub	sp, #0xc
  2fc580: 9001         	str	r0, [sp, #0x4]
  2fc582: 9801         	ldr	r0, [sp, #0x4]
  2fc584: f7ff ffae    	bl	0x2fc4e4 <BurnTableView::~BurnTableView()> @ imm = #-0xa4
  2fc588: 9801         	ldr	r0, [sp, #0x4]
  2fc58a: f08b f58b    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48bb16
  2fc58e: 9b01         	ldr	r3, [sp, #0x4]
  2fc590: 4618         	mov	r0, r3
  2fc592: b003         	add	sp, #0xc
  2fc594: f85d fb04    	ldr	pc, [sp], #4

// ==== BurnTableView::~BurnTableView
//      file offset 0x2fc598 (= ELF address; Ghidra 0x30c598), 6 bytes, Thumb-2
  2fc598: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fc59c: e7ee         	b	0x2fc57c <BurnTableView::~BurnTableView()> @ imm = #-0x24

// ==== BurnTableView::~BurnTableView
//      file offset 0x2fc5a0 (= ELF address; Ghidra 0x30c5a0), 6 bytes, Thumb-2
  2fc5a0: f5a0 70cc    	sub.w	r0, r0, #0x198
  2fc5a4: e7ea         	b	0x2fc57c <BurnTableView::~BurnTableView()> @ imm = #-0x2c

// ==== BurnTableView::~BurnTableView
//      file offset 0x2fc5a8 (= ELF address; Ghidra 0x30c5a8), 6 bytes, Thumb-2
  2fc5a8: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2fc5ac: e7e6         	b	0x2fc57c <BurnTableView::~BurnTableView()> @ imm = #-0x34
