// BeardTableView: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 16 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../BeardTableView.cpp

// ==== BeardTableView::BeardTableView
//      file offset 0x2eaa58 (= ELF address; Ghidra 0x2faa58), 116 bytes, Thumb-2
  2eaa58: b510         	push	{r4, lr}
  2eaa5a: b082         	sub	sp, #0x8
  2eaa5c: 9001         	str	r0, [sp, #0x4]
  2eaa5e: 4c19         	ldr	r4, [pc, #0x64]         @ 0x2eaac4 <BeardTableView::BeardTableView()+0x6c>
  2eaa60: 447c         	add	r4, pc
  2eaa62: 9b01         	ldr	r3, [sp, #0x4]
  2eaa64: 4618         	mov	r0, r3
  2eaa66: f086 f91b    	bl	0x370ca0 <MenuTableView::MenuTableView()> @ imm = #0x86236
  2eaa6a: 9b01         	ldr	r3, [sp, #0x4]
  2eaa6c: 4a16         	ldr	r2, [pc, #0x58]         @ 0x2eaac8 <BeardTableView::BeardTableView()+0x70>
  2eaa6e: 58a2         	ldr	r2, [r4, r2]
  2eaa70: 3208         	adds	r2, #0x8
  2eaa72: 601a         	str	r2, [r3]
  2eaa74: 9b01         	ldr	r3, [sp, #0x4]
  2eaa76: 4a14         	ldr	r2, [pc, #0x50]         @ 0x2eaac8 <BeardTableView::BeardTableView()+0x70>
  2eaa78: 58a2         	ldr	r2, [r4, r2]
  2eaa7a: f502 720b    	add.w	r2, r2, #0x22c
  2eaa7e: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  2eaa82: 9b01         	ldr	r3, [sp, #0x4]
  2eaa84: 4a10         	ldr	r2, [pc, #0x40]         @ 0x2eaac8 <BeardTableView::BeardTableView()+0x70>
  2eaa86: 58a2         	ldr	r2, [r4, r2]
  2eaa88: f502 7217    	add.w	r2, r2, #0x25c
  2eaa8c: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  2eaa90: 9b01         	ldr	r3, [sp, #0x4]
  2eaa92: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x2eaac8 <BeardTableView::BeardTableView()+0x70>
  2eaa94: 58a2         	ldr	r2, [r4, r2]
  2eaa96: f502 721a    	add.w	r2, r2, #0x268
  2eaa9a: f8c3 20ec    	str.w	r2, [r3, #0xec]
  2eaa9e: 9b01         	ldr	r3, [sp, #0x4]
  2eaaa0: 4a09         	ldr	r2, [pc, #0x24]         @ 0x2eaac8 <BeardTableView::BeardTableView()+0x70>
  2eaaa2: 58a2         	ldr	r2, [r4, r2]
  2eaaa4: f502 721e    	add.w	r2, r2, #0x278
  2eaaa8: f8c3 2198    	str.w	r2, [r3, #0x198]
  2eaaac: 9b01         	ldr	r3, [sp, #0x4]
  2eaaae: 4a06         	ldr	r2, [pc, #0x18]         @ 0x2eaac8 <BeardTableView::BeardTableView()+0x70>
  2eaab0: 58a2         	ldr	r2, [r4, r2]
  2eaab2: f502 7224    	add.w	r2, r2, #0x290
  2eaab6: f8c3 21c8    	str.w	r2, [r3, #0x1c8]
  2eaaba: 9b01         	ldr	r3, [sp, #0x4]
  2eaabc: 4618         	mov	r0, r3
  2eaabe: b002         	add	sp, #0x8
  2eaac0: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2eaac1); words below are literal-pool data ---
  2eaac2: bf00         	nop
  2eaac4: 7fa8         	ldrb	r0, [r5, #0x1e]
  2eaac6: 0064         	lsls	r4, r4, #0x1
  2eaac8: d874         	bhi	0x2eabb4 <HatTableView::HatTableView()> @ imm = #0xe8
  2eaaca: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== BeardTableView::numberOfCellsInTableView
//      file offset 0x2fa804 (= ELF address; Ghidra 0x30a804), 14 bytes, Thumb-2
  2fa804: b082         	sub	sp, #0x8
  2fa806: 9001         	str	r0, [sp, #0x4]
  2fa808: 9100         	str	r1, [sp]
  2fa80a: 2308         	movs	r3, #0x8
  2fa80c: 4618         	mov	r0, r3
  2fa80e: b002         	add	sp, #0x8
  2fa810: 4770         	bx	lr

// ==== BeardTableView::numberOfCellsInTableView
//      file offset 0x2fa814 (= ELF address; Ghidra 0x30a814), 8 bytes, Thumb-2
  2fa814: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fa818: f7ff bff4    	b.w	0x2fa804 <BeardTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*)> @ imm = #-0x18

// ==== BeardTableView::getIdentifier
//      file offset 0x2fa81c (= ELF address; Ghidra 0x30a81c), 68 bytes, Thumb-2
  2fa81c: b500         	push	{lr}
  2fa81e: b085         	sub	sp, #0x14
  2fa820: 9001         	str	r0, [sp, #0x4]
  2fa822: 9100         	str	r1, [sp]
  2fa824: ab03         	add	r3, sp, #0xc
  2fa826: 4618         	mov	r0, r3
  2fa828: f08f f5e4    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x48fbc8
  2fa82c: ab03         	add	r3, sp, #0xc
  2fa82e: 9801         	ldr	r0, [sp, #0x4]
  2fa830: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x2fa85c <BeardTableView::getIdentifier()+0x40>
  2fa832: 447a         	add	r2, pc
  2fa834: 4611         	mov	r1, r2
  2fa836: 461a         	mov	r2, r3
  2fa838: f0bc f112    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4bc224
  2fa83c: ab03         	add	r3, sp, #0xc
  2fa83e: 4618         	mov	r0, r3
  2fa840: f08f f5dc    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x48fbb8
  2fa844: e005         	b	0x2fa852 <BeardTableView::getIdentifier()+0x36> @ imm = #0xa
  2fa846: ab03         	add	r3, sp, #0xc
  2fa848: 4618         	mov	r0, r3
  2fa84a: f08f f5d7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x48fbae
  2fa84e: f08d f42d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48d85a
  2fa852: 9801         	ldr	r0, [sp, #0x4]
  2fa854: b005         	add	sp, #0x14
  2fa856: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2fa859); words below are literal-pool data ---
  2fa85a: bf00         	nop
  2fa85c: 9f86         	ldr	r7, [sp, #0x218]
  2fa85e: 004c         	lsls	r4, r1, #0x1

// ==== BeardTableView::tableCellAtIndex
//      file offset 0x2fa860 (= ELF address; Ghidra 0x30a860), 332 bytes, Thumb-2
  2fa860: b510         	push	{r4, lr}
  2fa862: b090         	sub	sp, #0x40
  2fa864: 9003         	str	r0, [sp, #0xc]
  2fa866: 9102         	str	r1, [sp, #0x8]
  2fa868: 9201         	str	r2, [sp, #0x4]
  2fa86a: 9802         	ldr	r0, [sp, #0x8]
  2fa86c: f158 ffd4    	bl	0x453818 <cocos2d::extension::CCTableView::dequeueCell()> @ imm = #0x158fa8
  2fa870: 4603         	mov	r3, r0
  2fa872: 9305         	str	r3, [sp, #0x14]
  2fa874: 9b05         	ldr	r3, [sp, #0x14]
  2fa876: 2b00         	cmp	r3, #0x0
  2fa878: d006         	beq	0x2fa888 <BeardTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x28> @ imm = #0xc
  2fa87a: 9805         	ldr	r0, [sp, #0x14]
  2fa87c: f15b fbb6    	bl	0x455fec <cocos2d::extension::CCTableViewCell::getIdx()> @ imm = #0x15b76c
  2fa880: 4602         	mov	r2, r0
  2fa882: 9b01         	ldr	r3, [sp, #0x4]
  2fa884: 429a         	cmp	r2, r3
  2fa886: d001         	beq	0x2fa88c <BeardTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x2c> @ imm = #0x2
  2fa888: 2301         	movs	r3, #0x1
  2fa88a: e000         	b	0x2fa88e <BeardTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x2e> @ imm = #0x0
  2fa88c: 2300         	movs	r3, #0x0
  2fa88e: 2b00         	cmp	r3, #0x0
  2fa890: d07d         	beq	0x2fa98e <BeardTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x12e> @ imm = #0xfa
  2fa892: 20ec         	movs	r0, #0xec
  2fa894: f08d f066    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x48d0cc
  2fa898: 4603         	mov	r3, r0
  2fa89a: 461c         	mov	r4, r3
  2fa89c: 4620         	mov	r0, r4
  2fa89e: f7fe fd8d    	bl	0x2f93bc <cocos2d::extension::CCTableViewCell::CCTableViewCell()> @ imm = #-0x14e6
  2fa8a2: 9405         	str	r4, [sp, #0x14]
  2fa8a4: 9b05         	ldr	r3, [sp, #0x14]
  2fa8a6: 4618         	mov	r0, r3
  2fa8a8: f29d fb28    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x29d650
  2fa8ac: 9b03         	ldr	r3, [sp, #0xc]
  2fa8ae: 681b         	ldr	r3, [r3]
  2fa8b0: f503 7306    	add.w	r3, r3, #0x218
  2fa8b4: 681c         	ldr	r4, [r3]
  2fa8b6: ab08         	add	r3, sp, #0x20
  2fa8b8: 4618         	mov	r0, r3
  2fa8ba: 9903         	ldr	r1, [sp, #0xc]
  2fa8bc: 9a02         	ldr	r2, [sp, #0x8]
  2fa8be: 9b01         	ldr	r3, [sp, #0x4]
  2fa8c0: 47a0         	blx	r4
  2fa8c2: ed9d 7a08    	vldr	s14, [sp, #32]
  2fa8c6: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2fa8ca: eec7 6a27    	vdiv.f32	s13, s14, s15
  2fa8ce: ed9d 7a09    	vldr	s14, [sp, #36]
  2fa8d2: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2fa8d6: eec7 7a27    	vdiv.f32	s15, s14, s15
  2fa8da: ab0a         	add	r3, sp, #0x28
  2fa8dc: 4618         	mov	r0, r3
  2fa8de: ee16 1a90    	vmov	r1, s13
  2fa8e2: ee17 2a90    	vmov	r2, s15
  2fa8e6: f298 fa03    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x298406
  2fa8ea: f7f9 f8e5    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x6e36
  2fa8ee: 4602         	mov	r2, r0
  2fa8f0: 9b01         	ldr	r3, [sp, #0x4]
  2fa8f2: 3387         	adds	r3, #0x87
  2fa8f4: 011b         	lsls	r3, r3, #0x4
  2fa8f6: 4413         	add	r3, r2
  2fa8f8: 3304         	adds	r3, #0x4
  2fa8fa: aa0c         	add	r2, sp, #0x30
  2fa8fc: 4610         	mov	r0, r2
  2fa8fe: 4619         	mov	r1, r3
  2fa900: f298 fd0a    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x298a14
  2fa904: ab0c         	add	r3, sp, #0x30
  2fa906: 4a27         	ldr	r2, [pc, #0x9c]         @ 0x2fa9a4 <BeardTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x144>
  2fa908: 447a         	add	r2, pc
  2fa90a: 4610         	mov	r0, r2
  2fa90c: 4619         	mov	r1, r3
  2fa90e: f2dd fc77    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2dd8ee
  2fa912: 4603         	mov	r3, r0
  2fa914: 9306         	str	r3, [sp, #0x18]
  2fa916: 9b06         	ldr	r3, [sp, #0x18]
  2fa918: 681b         	ldr	r3, [r3]
  2fa91a: f503 73fa    	add.w	r3, r3, #0x1f4
  2fa91e: 681b         	ldr	r3, [r3]
  2fa920: 9806         	ldr	r0, [sp, #0x18]
  2fa922: 4798         	blx	r3
  2fa924: 4603         	mov	r3, r0
  2fa926: 4618         	mov	r0, r3
  2fa928: f2f7 fb2c    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2f7658
  2fa92c: 9b06         	ldr	r3, [sp, #0x18]
  2fa92e: 681b         	ldr	r3, [r3]
  2fa930: 334c         	adds	r3, #0x4c
  2fa932: 681b         	ldr	r3, [r3]
  2fa934: aa0a         	add	r2, sp, #0x28
  2fa936: 9806         	ldr	r0, [sp, #0x18]
  2fa938: 4611         	mov	r1, r2
  2fa93a: 4798         	blx	r3
  2fa93c: 4b1a         	ldr	r3, [pc, #0x68]         @ 0x2fa9a8 <BeardTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x148>
  2fa93e: 447b         	add	r3, pc
  2fa940: 4618         	mov	r0, r3
  2fa942: f2dd fcdf    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2dd9be
  2fa946: 4603         	mov	r3, r0
  2fa948: 9307         	str	r3, [sp, #0x1c]
  2fa94a: 9b07         	ldr	r3, [sp, #0x1c]
  2fa94c: 681b         	ldr	r3, [r3]
  2fa94e: 334c         	adds	r3, #0x4c
  2fa950: 681b         	ldr	r3, [r3]
  2fa952: aa0a         	add	r2, sp, #0x28
  2fa954: 9807         	ldr	r0, [sp, #0x1c]
  2fa956: 4611         	mov	r1, r2
  2fa958: 4798         	blx	r3
  2fa95a: 9b07         	ldr	r3, [sp, #0x1c]
  2fa95c: 681b         	ldr	r3, [r3]
  2fa95e: 3340         	adds	r3, #0x40
  2fa960: 681b         	ldr	r3, [r3]
  2fa962: 9807         	ldr	r0, [sp, #0x1c]
  2fa964: f64c 41cd    	movw	r1, #0xcccd
  2fa968: f6c3 710c    	movt	r1, #0x3f0c
  2fa96c: 4798         	blx	r3
  2fa96e: 9b05         	ldr	r3, [sp, #0x14]
  2fa970: 681b         	ldr	r3, [r3]
  2fa972: 33c8         	adds	r3, #0xc8
  2fa974: 681b         	ldr	r3, [r3]
  2fa976: 9a05         	ldr	r2, [sp, #0x14]
  2fa978: 4610         	mov	r0, r2
  2fa97a: 9907         	ldr	r1, [sp, #0x1c]
  2fa97c: 4798         	blx	r3
  2fa97e: 9b05         	ldr	r3, [sp, #0x14]
  2fa980: 681b         	ldr	r3, [r3]
  2fa982: 33c8         	adds	r3, #0xc8
  2fa984: 681b         	ldr	r3, [r3]
  2fa986: 9a05         	ldr	r2, [sp, #0x14]
  2fa988: 4610         	mov	r0, r2
  2fa98a: 9906         	ldr	r1, [sp, #0x18]
  2fa98c: 4798         	blx	r3
  2fa98e: 9b05         	ldr	r3, [sp, #0x14]
  2fa990: e004         	b	0x2fa99c <BeardTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x13c> @ imm = #0x8
  2fa992: 4620         	mov	r0, r4
  2fa994: f08d f386    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48d70c
  2fa998: f08d f388    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48d710
  2fa99c: 4618         	mov	r0, r3
  2fa99e: b010         	add	sp, #0x40
  2fa9a0: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2fa9a1); words below are literal-pool data ---
  2fa9a2: bf00         	nop
  2fa9a4: 9e28         	ldr	r6, [sp, #0xa0]
  2fa9a6: 004c         	lsls	r4, r1, #0x1
  2fa9a8: 9e06         	ldr	r6, [sp, #0x18]
  2fa9aa: 004c         	lsls	r4, r1, #0x1

// ==== BeardTableView::tableCellAtIndex
//      file offset 0x2fa9ac (= ELF address; Ghidra 0x30a9ac), 8 bytes, Thumb-2
  2fa9ac: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fa9b0: f7ff bf56    	b.w	0x2fa860 <BeardTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)> @ imm = #-0x154

// ==== BeardTableView::tableCellSizeForIndex
//      file offset 0x2fa9b4 (= ELF address; Ghidra 0x30a9b4), 54 bytes, Thumb-2
  2fa9b4: b500         	push	{lr}
  2fa9b6: b085         	sub	sp, #0x14
  2fa9b8: 9003         	str	r0, [sp, #0xc]
  2fa9ba: 9102         	str	r1, [sp, #0x8]
  2fa9bc: 9201         	str	r2, [sp, #0x4]
  2fa9be: 9300         	str	r3, [sp]
  2fa9c0: 9b01         	ldr	r3, [sp, #0x4]
  2fa9c2: 681b         	ldr	r3, [r3]
  2fa9c4: 338c         	adds	r3, #0x8c
  2fa9c6: 681b         	ldr	r3, [r3]
  2fa9c8: 9a01         	ldr	r2, [sp, #0x4]
  2fa9ca: 4610         	mov	r0, r2
  2fa9cc: 4798         	blx	r3
  2fa9ce: 4603         	mov	r3, r0
  2fa9d0: 681b         	ldr	r3, [r3]
  2fa9d2: 9803         	ldr	r0, [sp, #0xc]
  2fa9d4: 4619         	mov	r1, r3
  2fa9d6: f04f 0200    	mov.w	r2, #0x0
  2fa9da: f2c4 225c    	movt	r2, #0x425c
  2fa9de: f298 fb59    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x2986b2
  2fa9e2: 9803         	ldr	r0, [sp, #0xc]
  2fa9e4: b005         	add	sp, #0x14
  2fa9e6: f85d fb04    	ldr	pc, [sp], #4

// ==== BeardTableView::tableCellSizeForIndex
//      file offset 0x2fa9ec (= ELF address; Ghidra 0x30a9ec), 8 bytes, Thumb-2
  2fa9ec: f5a1 71e4    	sub.w	r1, r1, #0x1c8
  2fa9f0: f7ff bfe0    	b.w	0x2fa9b4 <BeardTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int)> @ imm = #-0x40

// ==== BeardTableView::~BeardTableView
//      file offset 0x2fc418 (= ELF address; Ghidra 0x30c418), 128 bytes, Thumb-2
  2fc418: b500         	push	{lr}
  2fc41a: b083         	sub	sp, #0xc
  2fc41c: 9001         	str	r0, [sp, #0x4]
  2fc41e: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x2fc490 <BeardTableView::~BeardTableView()+0x78>
  2fc420: 447b         	add	r3, pc
  2fc422: 9a01         	ldr	r2, [sp, #0x4]
  2fc424: 491b         	ldr	r1, [pc, #0x6c]         @ 0x2fc494 <BeardTableView::~BeardTableView()+0x7c>
  2fc426: 5859         	ldr	r1, [r3, r1]
  2fc428: 3108         	adds	r1, #0x8
  2fc42a: 6011         	str	r1, [r2]
  2fc42c: 9a01         	ldr	r2, [sp, #0x4]
  2fc42e: 4919         	ldr	r1, [pc, #0x64]         @ 0x2fc494 <BeardTableView::~BeardTableView()+0x7c>
  2fc430: 5859         	ldr	r1, [r3, r1]
  2fc432: f501 710b    	add.w	r1, r1, #0x22c
  2fc436: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  2fc43a: 9a01         	ldr	r2, [sp, #0x4]
  2fc43c: 4915         	ldr	r1, [pc, #0x54]         @ 0x2fc494 <BeardTableView::~BeardTableView()+0x7c>
  2fc43e: 5859         	ldr	r1, [r3, r1]
  2fc440: f501 7117    	add.w	r1, r1, #0x25c
  2fc444: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  2fc448: 9a01         	ldr	r2, [sp, #0x4]
  2fc44a: 4912         	ldr	r1, [pc, #0x48]         @ 0x2fc494 <BeardTableView::~BeardTableView()+0x7c>
  2fc44c: 5859         	ldr	r1, [r3, r1]
  2fc44e: f501 711a    	add.w	r1, r1, #0x268
  2fc452: f8c2 10ec    	str.w	r1, [r2, #0xec]
  2fc456: 9a01         	ldr	r2, [sp, #0x4]
  2fc458: 490e         	ldr	r1, [pc, #0x38]         @ 0x2fc494 <BeardTableView::~BeardTableView()+0x7c>
  2fc45a: 5859         	ldr	r1, [r3, r1]
  2fc45c: f501 711e    	add.w	r1, r1, #0x278
  2fc460: f8c2 1198    	str.w	r1, [r2, #0x198]
  2fc464: 9a01         	ldr	r2, [sp, #0x4]
  2fc466: 490b         	ldr	r1, [pc, #0x2c]         @ 0x2fc494 <BeardTableView::~BeardTableView()+0x7c>
  2fc468: 585b         	ldr	r3, [r3, r1]
  2fc46a: f503 7324    	add.w	r3, r3, #0x290
  2fc46e: f8c2 31c8    	str.w	r3, [r2, #0x1c8]
  2fc472: 9b01         	ldr	r3, [sp, #0x4]
  2fc474: 4618         	mov	r0, r3
  2fc476: f7ff fbcd    	bl	0x2fbc14 <MenuTableView::~MenuTableView()> @ imm = #-0x866
  2fc47a: 2300         	movs	r3, #0x0
  2fc47c: 2b00         	cmp	r3, #0x0
  2fc47e: d002         	beq	0x2fc486 <BeardTableView::~BeardTableView()+0x6e> @ imm = #0x4
  2fc480: 9801         	ldr	r0, [sp, #0x4]
  2fc482: f08b f60f    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48bc1e
  2fc486: 9b01         	ldr	r3, [sp, #0x4]
  2fc488: 4618         	mov	r0, r3
  2fc48a: b003         	add	sp, #0xc
  2fc48c: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2fc48f); words below are literal-pool data ---
  2fc490: 65e8         	str	r0, [r5, #0x5c]
  2fc492: 0063         	lsls	r3, r4, #0x1
  2fc494: d874         	bhi	0x2fc580 <BurnTableView::~BurnTableView()+0x4> @ imm = #0xe8
  2fc496: ffff f5a0    	<unknown>

// ==== BeardTableView::~BeardTableView
//      file offset 0x2fc498 (= ELF address; Ghidra 0x30c498), 8 bytes, Thumb-2
  2fc498: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fc49c: f7ff bfbc    	b.w	0x2fc418 <BeardTableView::~BeardTableView()> @ imm = #-0x88

// ==== BeardTableView::~BeardTableView
//      file offset 0x2fc4a0 (= ELF address; Ghidra 0x30c4a0), 8 bytes, Thumb-2
  2fc4a0: f5a0 70cc    	sub.w	r0, r0, #0x198
  2fc4a4: f7ff bfb8    	b.w	0x2fc418 <BeardTableView::~BeardTableView()> @ imm = #-0x90

// ==== BeardTableView::~BeardTableView
//      file offset 0x2fc4a8 (= ELF address; Ghidra 0x30c4a8), 8 bytes, Thumb-2
  2fc4a8: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2fc4ac: f7ff bfb4    	b.w	0x2fc418 <BeardTableView::~BeardTableView()> @ imm = #-0x98

// ==== BeardTableView::~BeardTableView
//      file offset 0x2fc4b0 (= ELF address; Ghidra 0x30c4b0), 28 bytes, Thumb-2
  2fc4b0: b500         	push	{lr}
  2fc4b2: b083         	sub	sp, #0xc
  2fc4b4: 9001         	str	r0, [sp, #0x4]
  2fc4b6: 9801         	ldr	r0, [sp, #0x4]
  2fc4b8: f7ff ffae    	bl	0x2fc418 <BeardTableView::~BeardTableView()> @ imm = #-0xa4
  2fc4bc: 9801         	ldr	r0, [sp, #0x4]
  2fc4be: f08b f5f1    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48bbe2
  2fc4c2: 9b01         	ldr	r3, [sp, #0x4]
  2fc4c4: 4618         	mov	r0, r3
  2fc4c6: b003         	add	sp, #0xc
  2fc4c8: f85d fb04    	ldr	pc, [sp], #4

// ==== BeardTableView::~BeardTableView
//      file offset 0x2fc4cc (= ELF address; Ghidra 0x30c4cc), 6 bytes, Thumb-2
  2fc4cc: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fc4d0: e7ee         	b	0x2fc4b0 <BeardTableView::~BeardTableView()> @ imm = #-0x24

// ==== BeardTableView::~BeardTableView
//      file offset 0x2fc4d4 (= ELF address; Ghidra 0x30c4d4), 6 bytes, Thumb-2
  2fc4d4: f5a0 70cc    	sub.w	r0, r0, #0x198
  2fc4d8: e7ea         	b	0x2fc4b0 <BeardTableView::~BeardTableView()> @ imm = #-0x2c

// ==== BeardTableView::~BeardTableView
//      file offset 0x2fc4dc (= ELF address; Ghidra 0x30c4dc), 6 bytes, Thumb-2
  2fc4dc: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2fc4e0: e7e6         	b	0x2fc4b0 <BeardTableView::~BeardTableView()> @ imm = #-0x34
