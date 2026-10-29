// LegTableView: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 16 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../LegTableView.cpp

// ==== LegTableView::LegTableView
//      file offset 0x2ead10 (= ELF address; Ghidra 0x2fad10), 116 bytes, Thumb-2
  2ead10: b510         	push	{r4, lr}
  2ead12: b082         	sub	sp, #0x8
  2ead14: 9001         	str	r0, [sp, #0x4]
  2ead16: 4c19         	ldr	r4, [pc, #0x64]         @ 0x2ead7c <LegTableView::LegTableView()+0x6c>
  2ead18: 447c         	add	r4, pc
  2ead1a: 9b01         	ldr	r3, [sp, #0x4]
  2ead1c: 4618         	mov	r0, r3
  2ead1e: f085 ffbf    	bl	0x370ca0 <MenuTableView::MenuTableView()> @ imm = #0x85f7e
  2ead22: 9b01         	ldr	r3, [sp, #0x4]
  2ead24: 4a16         	ldr	r2, [pc, #0x58]         @ 0x2ead80 <LegTableView::LegTableView()+0x70>
  2ead26: 58a2         	ldr	r2, [r4, r2]
  2ead28: 3208         	adds	r2, #0x8
  2ead2a: 601a         	str	r2, [r3]
  2ead2c: 9b01         	ldr	r3, [sp, #0x4]
  2ead2e: 4a14         	ldr	r2, [pc, #0x50]         @ 0x2ead80 <LegTableView::LegTableView()+0x70>
  2ead30: 58a2         	ldr	r2, [r4, r2]
  2ead32: f502 720b    	add.w	r2, r2, #0x22c
  2ead36: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  2ead3a: 9b01         	ldr	r3, [sp, #0x4]
  2ead3c: 4a10         	ldr	r2, [pc, #0x40]         @ 0x2ead80 <LegTableView::LegTableView()+0x70>
  2ead3e: 58a2         	ldr	r2, [r4, r2]
  2ead40: f502 7217    	add.w	r2, r2, #0x25c
  2ead44: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  2ead48: 9b01         	ldr	r3, [sp, #0x4]
  2ead4a: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x2ead80 <LegTableView::LegTableView()+0x70>
  2ead4c: 58a2         	ldr	r2, [r4, r2]
  2ead4e: f502 721a    	add.w	r2, r2, #0x268
  2ead52: f8c3 20ec    	str.w	r2, [r3, #0xec]
  2ead56: 9b01         	ldr	r3, [sp, #0x4]
  2ead58: 4a09         	ldr	r2, [pc, #0x24]         @ 0x2ead80 <LegTableView::LegTableView()+0x70>
  2ead5a: 58a2         	ldr	r2, [r4, r2]
  2ead5c: f502 721e    	add.w	r2, r2, #0x278
  2ead60: f8c3 2198    	str.w	r2, [r3, #0x198]
  2ead64: 9b01         	ldr	r3, [sp, #0x4]
  2ead66: 4a06         	ldr	r2, [pc, #0x18]         @ 0x2ead80 <LegTableView::LegTableView()+0x70>
  2ead68: 58a2         	ldr	r2, [r4, r2]
  2ead6a: f502 7224    	add.w	r2, r2, #0x290
  2ead6e: f8c3 21c8    	str.w	r2, [r3, #0x1c8]
  2ead72: 9b01         	ldr	r3, [sp, #0x4]
  2ead74: 4618         	mov	r0, r3
  2ead76: b002         	add	sp, #0x8
  2ead78: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2ead79); words below are literal-pool data ---
  2ead7a: bf00         	nop
  2ead7c: 7cf0         	ldrb	r0, [r6, #0x13]
  2ead7e: 0064         	lsls	r4, r4, #0x1
  2ead80: d88c         	bhi	0x2eac9c <ShirtTableView::ShirtTableView()> @ imm = #-0xe8
  2ead82: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== LegTableView::numberOfCellsInTableView
//      file offset 0x2fb400 (= ELF address; Ghidra 0x30b400), 14 bytes, Thumb-2
  2fb400: b082         	sub	sp, #0x8
  2fb402: 9001         	str	r0, [sp, #0x4]
  2fb404: 9100         	str	r1, [sp]
  2fb406: 230b         	movs	r3, #0xb
  2fb408: 4618         	mov	r0, r3
  2fb40a: b002         	add	sp, #0x8
  2fb40c: 4770         	bx	lr

// ==== LegTableView::numberOfCellsInTableView
//      file offset 0x2fb410 (= ELF address; Ghidra 0x30b410), 8 bytes, Thumb-2
  2fb410: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fb414: f7ff bff4    	b.w	0x2fb400 <LegTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*)> @ imm = #-0x18

// ==== LegTableView::getIdentifier
//      file offset 0x2fb418 (= ELF address; Ghidra 0x30b418), 68 bytes, Thumb-2
  2fb418: b500         	push	{lr}
  2fb41a: b085         	sub	sp, #0x14
  2fb41c: 9001         	str	r0, [sp, #0x4]
  2fb41e: 9100         	str	r1, [sp]
  2fb420: ab03         	add	r3, sp, #0xc
  2fb422: 4618         	mov	r0, r3
  2fb424: f08e f7e6    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x48efcc
  2fb428: ab03         	add	r3, sp, #0xc
  2fb42a: 9801         	ldr	r0, [sp, #0x4]
  2fb42c: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x2fb458 <LegTableView::getIdentifier()+0x40>
  2fb42e: 447a         	add	r2, pc
  2fb430: 4611         	mov	r1, r2
  2fb432: 461a         	mov	r2, r3
  2fb434: f0bb f314    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4bb628
  2fb438: ab03         	add	r3, sp, #0xc
  2fb43a: 4618         	mov	r0, r3
  2fb43c: f08e f7de    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x48efbc
  2fb440: e005         	b	0x2fb44e <LegTableView::getIdentifier()+0x36> @ imm = #0xa
  2fb442: ab03         	add	r3, sp, #0xc
  2fb444: 4618         	mov	r0, r3
  2fb446: f08e f7d9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x48efb2
  2fb44a: f08c f62f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48cc5e
  2fb44e: 9801         	ldr	r0, [sp, #0x4]
  2fb450: b005         	add	sp, #0x14
  2fb452: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2fb455); words below are literal-pool data ---
  2fb456: bf00         	nop
  2fb458: 93c2         	str	r3, [sp, #0x308]
  2fb45a: 004c         	lsls	r4, r1, #0x1

// ==== LegTableView::tableCellAtIndex
//      file offset 0x2fb45c (= ELF address; Ghidra 0x30b45c), 332 bytes, Thumb-2
  2fb45c: b510         	push	{r4, lr}
  2fb45e: b090         	sub	sp, #0x40
  2fb460: 9003         	str	r0, [sp, #0xc]
  2fb462: 9102         	str	r1, [sp, #0x8]
  2fb464: 9201         	str	r2, [sp, #0x4]
  2fb466: 9802         	ldr	r0, [sp, #0x8]
  2fb468: f158 f9d6    	bl	0x453818 <cocos2d::extension::CCTableView::dequeueCell()> @ imm = #0x1583ac
  2fb46c: 4603         	mov	r3, r0
  2fb46e: 9305         	str	r3, [sp, #0x14]
  2fb470: 9b05         	ldr	r3, [sp, #0x14]
  2fb472: 2b00         	cmp	r3, #0x0
  2fb474: d006         	beq	0x2fb484 <LegTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x28> @ imm = #0xc
  2fb476: 9805         	ldr	r0, [sp, #0x14]
  2fb478: f15a fdb8    	bl	0x455fec <cocos2d::extension::CCTableViewCell::getIdx()> @ imm = #0x15ab70
  2fb47c: 4602         	mov	r2, r0
  2fb47e: 9b01         	ldr	r3, [sp, #0x4]
  2fb480: 429a         	cmp	r2, r3
  2fb482: d001         	beq	0x2fb488 <LegTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x2c> @ imm = #0x2
  2fb484: 2301         	movs	r3, #0x1
  2fb486: e000         	b	0x2fb48a <LegTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x2e> @ imm = #0x0
  2fb488: 2300         	movs	r3, #0x0
  2fb48a: 2b00         	cmp	r3, #0x0
  2fb48c: d07e         	beq	0x2fb58c <LegTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x130> @ imm = #0xfc
  2fb48e: 20ec         	movs	r0, #0xec
  2fb490: f08c f268    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x48c4d0
  2fb494: 4603         	mov	r3, r0
  2fb496: 461c         	mov	r4, r3
  2fb498: 4620         	mov	r0, r4
  2fb49a: f7fd ff8f    	bl	0x2f93bc <cocos2d::extension::CCTableViewCell::CCTableViewCell()> @ imm = #-0x20e2
  2fb49e: 9405         	str	r4, [sp, #0x14]
  2fb4a0: 9b05         	ldr	r3, [sp, #0x14]
  2fb4a2: 4618         	mov	r0, r3
  2fb4a4: f29c fd2a    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x29ca54
  2fb4a8: 9b03         	ldr	r3, [sp, #0xc]
  2fb4aa: 681b         	ldr	r3, [r3]
  2fb4ac: f503 7306    	add.w	r3, r3, #0x218
  2fb4b0: 681c         	ldr	r4, [r3]
  2fb4b2: ab08         	add	r3, sp, #0x20
  2fb4b4: 4618         	mov	r0, r3
  2fb4b6: 9903         	ldr	r1, [sp, #0xc]
  2fb4b8: 9a02         	ldr	r2, [sp, #0x8]
  2fb4ba: 9b01         	ldr	r3, [sp, #0x4]
  2fb4bc: 47a0         	blx	r4
  2fb4be: ed9d 7a08    	vldr	s14, [sp, #32]
  2fb4c2: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2fb4c6: eec7 6a27    	vdiv.f32	s13, s14, s15
  2fb4ca: ed9d 7a09    	vldr	s14, [sp, #36]
  2fb4ce: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2fb4d2: eec7 7a27    	vdiv.f32	s15, s14, s15
  2fb4d6: ab0a         	add	r3, sp, #0x28
  2fb4d8: 4618         	mov	r0, r3
  2fb4da: ee16 1a90    	vmov	r1, s13
  2fb4de: ee17 2a90    	vmov	r2, s15
  2fb4e2: f297 fc05    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29780a
  2fb4e6: f7f8 fae7    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x7a32
  2fb4ea: 4602         	mov	r2, r0
  2fb4ec: 9b01         	ldr	r3, [sp, #0x4]
  2fb4ee: 011b         	lsls	r3, r3, #0x4
  2fb4f0: f603 53c8    	addw	r3, r3, #0xdc8
  2fb4f4: 4413         	add	r3, r2
  2fb4f6: 3304         	adds	r3, #0x4
  2fb4f8: aa0c         	add	r2, sp, #0x30
  2fb4fa: 4610         	mov	r0, r2
  2fb4fc: 4619         	mov	r1, r3
  2fb4fe: f297 ff0b    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x297e16
  2fb502: ab0c         	add	r3, sp, #0x30
  2fb504: 4a26         	ldr	r2, [pc, #0x98]         @ 0x2fb5a0 <LegTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x144>
  2fb506: 447a         	add	r2, pc
  2fb508: 4610         	mov	r0, r2
  2fb50a: 4619         	mov	r1, r3
  2fb50c: f2dc fe78    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2dccf0
  2fb510: 4603         	mov	r3, r0
  2fb512: 9306         	str	r3, [sp, #0x18]
  2fb514: 9b06         	ldr	r3, [sp, #0x18]
  2fb516: 681b         	ldr	r3, [r3]
  2fb518: f503 73fa    	add.w	r3, r3, #0x1f4
  2fb51c: 681b         	ldr	r3, [r3]
  2fb51e: 9806         	ldr	r0, [sp, #0x18]
  2fb520: 4798         	blx	r3
  2fb522: 4603         	mov	r3, r0
  2fb524: 4618         	mov	r0, r3
  2fb526: f2f6 fd2d    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2f6a5a
  2fb52a: 9b06         	ldr	r3, [sp, #0x18]
  2fb52c: 681b         	ldr	r3, [r3]
  2fb52e: 334c         	adds	r3, #0x4c
  2fb530: 681b         	ldr	r3, [r3]
  2fb532: aa0a         	add	r2, sp, #0x28
  2fb534: 9806         	ldr	r0, [sp, #0x18]
  2fb536: 4611         	mov	r1, r2
  2fb538: 4798         	blx	r3
  2fb53a: 4b1a         	ldr	r3, [pc, #0x68]         @ 0x2fb5a4 <LegTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x148>
  2fb53c: 447b         	add	r3, pc
  2fb53e: 4618         	mov	r0, r3
  2fb540: f2dc fee0    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2dcdc0
  2fb544: 4603         	mov	r3, r0
  2fb546: 9307         	str	r3, [sp, #0x1c]
  2fb548: 9b07         	ldr	r3, [sp, #0x1c]
  2fb54a: 681b         	ldr	r3, [r3]
  2fb54c: 334c         	adds	r3, #0x4c
  2fb54e: 681b         	ldr	r3, [r3]
  2fb550: aa0a         	add	r2, sp, #0x28
  2fb552: 9807         	ldr	r0, [sp, #0x1c]
  2fb554: 4611         	mov	r1, r2
  2fb556: 4798         	blx	r3
  2fb558: 9b07         	ldr	r3, [sp, #0x1c]
  2fb55a: 681b         	ldr	r3, [r3]
  2fb55c: 3340         	adds	r3, #0x40
  2fb55e: 681b         	ldr	r3, [r3]
  2fb560: 9807         	ldr	r0, [sp, #0x1c]
  2fb562: f64c 41cd    	movw	r1, #0xcccd
  2fb566: f6c3 61cc    	movt	r1, #0x3ecc
  2fb56a: 4798         	blx	r3
  2fb56c: 9b05         	ldr	r3, [sp, #0x14]
  2fb56e: 681b         	ldr	r3, [r3]
  2fb570: 33c8         	adds	r3, #0xc8
  2fb572: 681b         	ldr	r3, [r3]
  2fb574: 9a05         	ldr	r2, [sp, #0x14]
  2fb576: 4610         	mov	r0, r2
  2fb578: 9907         	ldr	r1, [sp, #0x1c]
  2fb57a: 4798         	blx	r3
  2fb57c: 9b05         	ldr	r3, [sp, #0x14]
  2fb57e: 681b         	ldr	r3, [r3]
  2fb580: 33c8         	adds	r3, #0xc8
  2fb582: 681b         	ldr	r3, [r3]
  2fb584: 9a05         	ldr	r2, [sp, #0x14]
  2fb586: 4610         	mov	r0, r2
  2fb588: 9906         	ldr	r1, [sp, #0x18]
  2fb58a: 4798         	blx	r3
  2fb58c: 9b05         	ldr	r3, [sp, #0x14]
  2fb58e: e004         	b	0x2fb59a <LegTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x13e> @ imm = #0x8
  2fb590: 4620         	mov	r0, r4
  2fb592: f08c f587    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48cb0e
  2fb596: f08c f589    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48cb12
  2fb59a: 4618         	mov	r0, r3
  2fb59c: b010         	add	sp, #0x40
  2fb59e: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2fb59f); words below are literal-pool data ---
  2fb5a0: 922a         	str	r2, [sp, #0xa8]
  2fb5a2: 004c         	lsls	r4, r1, #0x1
  2fb5a4: 9208         	str	r2, [sp, #0x20]
  2fb5a6: 004c         	lsls	r4, r1, #0x1

// ==== LegTableView::tableCellAtIndex
//      file offset 0x2fb5a8 (= ELF address; Ghidra 0x30b5a8), 8 bytes, Thumb-2
  2fb5a8: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fb5ac: f7ff bf56    	b.w	0x2fb45c <LegTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)> @ imm = #-0x154

// ==== LegTableView::tableCellSizeForIndex
//      file offset 0x2fb5b0 (= ELF address; Ghidra 0x30b5b0), 54 bytes, Thumb-2
  2fb5b0: b500         	push	{lr}
  2fb5b2: b085         	sub	sp, #0x14
  2fb5b4: 9003         	str	r0, [sp, #0xc]
  2fb5b6: 9102         	str	r1, [sp, #0x8]
  2fb5b8: 9201         	str	r2, [sp, #0x4]
  2fb5ba: 9300         	str	r3, [sp]
  2fb5bc: 9b01         	ldr	r3, [sp, #0x4]
  2fb5be: 681b         	ldr	r3, [r3]
  2fb5c0: 338c         	adds	r3, #0x8c
  2fb5c2: 681b         	ldr	r3, [r3]
  2fb5c4: 9a01         	ldr	r2, [sp, #0x4]
  2fb5c6: 4610         	mov	r0, r2
  2fb5c8: 4798         	blx	r3
  2fb5ca: 4603         	mov	r3, r0
  2fb5cc: 681b         	ldr	r3, [r3]
  2fb5ce: 9803         	ldr	r0, [sp, #0xc]
  2fb5d0: 4619         	mov	r1, r3
  2fb5d2: f04f 0200    	mov.w	r2, #0x0
  2fb5d6: f2c4 2230    	movt	r2, #0x4230
  2fb5da: f297 fd5b    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x297ab6
  2fb5de: 9803         	ldr	r0, [sp, #0xc]
  2fb5e0: b005         	add	sp, #0x14
  2fb5e2: f85d fb04    	ldr	pc, [sp], #4

// ==== LegTableView::tableCellSizeForIndex
//      file offset 0x2fb5e8 (= ELF address; Ghidra 0x30b5e8), 8 bytes, Thumb-2
  2fb5e8: f5a1 71e4    	sub.w	r1, r1, #0x1c8
  2fb5ec: f7ff bfe0    	b.w	0x2fb5b0 <LegTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int)> @ imm = #-0x40

// ==== LegTableView::~LegTableView
//      file offset 0x2fbf50 (= ELF address; Ghidra 0x30bf50), 128 bytes, Thumb-2
  2fbf50: b500         	push	{lr}
  2fbf52: b083         	sub	sp, #0xc
  2fbf54: 9001         	str	r0, [sp, #0x4]
  2fbf56: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x2fbfc8 <LegTableView::~LegTableView()+0x78>
  2fbf58: 447b         	add	r3, pc
  2fbf5a: 9a01         	ldr	r2, [sp, #0x4]
  2fbf5c: 491b         	ldr	r1, [pc, #0x6c]         @ 0x2fbfcc <LegTableView::~LegTableView()+0x7c>
  2fbf5e: 5859         	ldr	r1, [r3, r1]
  2fbf60: 3108         	adds	r1, #0x8
  2fbf62: 6011         	str	r1, [r2]
  2fbf64: 9a01         	ldr	r2, [sp, #0x4]
  2fbf66: 4919         	ldr	r1, [pc, #0x64]         @ 0x2fbfcc <LegTableView::~LegTableView()+0x7c>
  2fbf68: 5859         	ldr	r1, [r3, r1]
  2fbf6a: f501 710b    	add.w	r1, r1, #0x22c
  2fbf6e: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  2fbf72: 9a01         	ldr	r2, [sp, #0x4]
  2fbf74: 4915         	ldr	r1, [pc, #0x54]         @ 0x2fbfcc <LegTableView::~LegTableView()+0x7c>
  2fbf76: 5859         	ldr	r1, [r3, r1]
  2fbf78: f501 7117    	add.w	r1, r1, #0x25c
  2fbf7c: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  2fbf80: 9a01         	ldr	r2, [sp, #0x4]
  2fbf82: 4912         	ldr	r1, [pc, #0x48]         @ 0x2fbfcc <LegTableView::~LegTableView()+0x7c>
  2fbf84: 5859         	ldr	r1, [r3, r1]
  2fbf86: f501 711a    	add.w	r1, r1, #0x268
  2fbf8a: f8c2 10ec    	str.w	r1, [r2, #0xec]
  2fbf8e: 9a01         	ldr	r2, [sp, #0x4]
  2fbf90: 490e         	ldr	r1, [pc, #0x38]         @ 0x2fbfcc <LegTableView::~LegTableView()+0x7c>
  2fbf92: 5859         	ldr	r1, [r3, r1]
  2fbf94: f501 711e    	add.w	r1, r1, #0x278
  2fbf98: f8c2 1198    	str.w	r1, [r2, #0x198]
  2fbf9c: 9a01         	ldr	r2, [sp, #0x4]
  2fbf9e: 490b         	ldr	r1, [pc, #0x2c]         @ 0x2fbfcc <LegTableView::~LegTableView()+0x7c>
  2fbfa0: 585b         	ldr	r3, [r3, r1]
  2fbfa2: f503 7324    	add.w	r3, r3, #0x290
  2fbfa6: f8c2 31c8    	str.w	r3, [r2, #0x1c8]
  2fbfaa: 9b01         	ldr	r3, [sp, #0x4]
  2fbfac: 4618         	mov	r0, r3
  2fbfae: f7ff fe31    	bl	0x2fbc14 <MenuTableView::~MenuTableView()> @ imm = #-0x39e
  2fbfb2: 2300         	movs	r3, #0x0
  2fbfb4: 2b00         	cmp	r3, #0x0
  2fbfb6: d002         	beq	0x2fbfbe <LegTableView::~LegTableView()+0x6e> @ imm = #0x4
  2fbfb8: 9801         	ldr	r0, [sp, #0x4]
  2fbfba: f08c f073    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48c0e6
  2fbfbe: 9b01         	ldr	r3, [sp, #0x4]
  2fbfc0: 4618         	mov	r0, r3
  2fbfc2: b003         	add	sp, #0xc
  2fbfc4: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2fbfc7); words below are literal-pool data ---
  2fbfc8: 6ab0         	ldr	r0, [r6, #0x28]
  2fbfca: 0063         	lsls	r3, r4, #0x1
  2fbfcc: d88c         	bhi	0x2fbee8 <FootTableView::~FootTableView()+0x64> @ imm = #-0xe8
  2fbfce: ffff f5a0    	<unknown>

// ==== LegTableView::~LegTableView
//      file offset 0x2fbfd0 (= ELF address; Ghidra 0x30bfd0), 8 bytes, Thumb-2
  2fbfd0: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fbfd4: f7ff bfbc    	b.w	0x2fbf50 <LegTableView::~LegTableView()> @ imm = #-0x88

// ==== LegTableView::~LegTableView
//      file offset 0x2fbfd8 (= ELF address; Ghidra 0x30bfd8), 8 bytes, Thumb-2
  2fbfd8: f5a0 70cc    	sub.w	r0, r0, #0x198
  2fbfdc: f7ff bfb8    	b.w	0x2fbf50 <LegTableView::~LegTableView()> @ imm = #-0x90

// ==== LegTableView::~LegTableView
//      file offset 0x2fbfe0 (= ELF address; Ghidra 0x30bfe0), 8 bytes, Thumb-2
  2fbfe0: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2fbfe4: f7ff bfb4    	b.w	0x2fbf50 <LegTableView::~LegTableView()> @ imm = #-0x98

// ==== LegTableView::~LegTableView
//      file offset 0x2fbfe8 (= ELF address; Ghidra 0x30bfe8), 28 bytes, Thumb-2
  2fbfe8: b500         	push	{lr}
  2fbfea: b083         	sub	sp, #0xc
  2fbfec: 9001         	str	r0, [sp, #0x4]
  2fbfee: 9801         	ldr	r0, [sp, #0x4]
  2fbff0: f7ff ffae    	bl	0x2fbf50 <LegTableView::~LegTableView()> @ imm = #-0xa4
  2fbff4: 9801         	ldr	r0, [sp, #0x4]
  2fbff6: f08c f055    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48c0aa
  2fbffa: 9b01         	ldr	r3, [sp, #0x4]
  2fbffc: 4618         	mov	r0, r3
  2fbffe: b003         	add	sp, #0xc
  2fc000: f85d fb04    	ldr	pc, [sp], #4

// ==== LegTableView::~LegTableView
//      file offset 0x2fc004 (= ELF address; Ghidra 0x30c004), 6 bytes, Thumb-2
  2fc004: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fc008: e7ee         	b	0x2fbfe8 <LegTableView::~LegTableView()> @ imm = #-0x24

// ==== LegTableView::~LegTableView
//      file offset 0x2fc00c (= ELF address; Ghidra 0x30c00c), 6 bytes, Thumb-2
  2fc00c: f5a0 70cc    	sub.w	r0, r0, #0x198
  2fc010: e7ea         	b	0x2fbfe8 <LegTableView::~LegTableView()> @ imm = #-0x2c

// ==== LegTableView::~LegTableView
//      file offset 0x2fc014 (= ELF address; Ghidra 0x30c014), 6 bytes, Thumb-2
  2fc014: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2fc018: e7e6         	b	0x2fbfe8 <LegTableView::~LegTableView()> @ imm = #-0x34
