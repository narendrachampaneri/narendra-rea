// HandTableView: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 16 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../HandTableView.cpp

// ==== HandTableView::HandTableView
//      file offset 0x2eadf8 (= ELF address; Ghidra 0x2fadf8), 116 bytes, Thumb-2
  2eadf8: b510         	push	{r4, lr}
  2eadfa: b082         	sub	sp, #0x8
  2eadfc: 9001         	str	r0, [sp, #0x4]
  2eadfe: 4c19         	ldr	r4, [pc, #0x64]         @ 0x2eae64 <HandTableView::HandTableView()+0x6c>
  2eae00: 447c         	add	r4, pc
  2eae02: 9b01         	ldr	r3, [sp, #0x4]
  2eae04: 4618         	mov	r0, r3
  2eae06: f085 ff4b    	bl	0x370ca0 <MenuTableView::MenuTableView()> @ imm = #0x85e96
  2eae0a: 9b01         	ldr	r3, [sp, #0x4]
  2eae0c: 4a16         	ldr	r2, [pc, #0x58]         @ 0x2eae68 <HandTableView::HandTableView()+0x70>
  2eae0e: 58a2         	ldr	r2, [r4, r2]
  2eae10: 3208         	adds	r2, #0x8
  2eae12: 601a         	str	r2, [r3]
  2eae14: 9b01         	ldr	r3, [sp, #0x4]
  2eae16: 4a14         	ldr	r2, [pc, #0x50]         @ 0x2eae68 <HandTableView::HandTableView()+0x70>
  2eae18: 58a2         	ldr	r2, [r4, r2]
  2eae1a: f502 720b    	add.w	r2, r2, #0x22c
  2eae1e: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  2eae22: 9b01         	ldr	r3, [sp, #0x4]
  2eae24: 4a10         	ldr	r2, [pc, #0x40]         @ 0x2eae68 <HandTableView::HandTableView()+0x70>
  2eae26: 58a2         	ldr	r2, [r4, r2]
  2eae28: f502 7217    	add.w	r2, r2, #0x25c
  2eae2c: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  2eae30: 9b01         	ldr	r3, [sp, #0x4]
  2eae32: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x2eae68 <HandTableView::HandTableView()+0x70>
  2eae34: 58a2         	ldr	r2, [r4, r2]
  2eae36: f502 721a    	add.w	r2, r2, #0x268
  2eae3a: f8c3 20ec    	str.w	r2, [r3, #0xec]
  2eae3e: 9b01         	ldr	r3, [sp, #0x4]
  2eae40: 4a09         	ldr	r2, [pc, #0x24]         @ 0x2eae68 <HandTableView::HandTableView()+0x70>
  2eae42: 58a2         	ldr	r2, [r4, r2]
  2eae44: f502 721e    	add.w	r2, r2, #0x278
  2eae48: f8c3 2198    	str.w	r2, [r3, #0x198]
  2eae4c: 9b01         	ldr	r3, [sp, #0x4]
  2eae4e: 4a06         	ldr	r2, [pc, #0x18]         @ 0x2eae68 <HandTableView::HandTableView()+0x70>
  2eae50: 58a2         	ldr	r2, [r4, r2]
  2eae52: f502 7224    	add.w	r2, r2, #0x290
  2eae56: f8c3 21c8    	str.w	r2, [r3, #0x1c8]
  2eae5a: 9b01         	ldr	r3, [sp, #0x4]
  2eae5c: 4618         	mov	r0, r3
  2eae5e: b002         	add	sp, #0x8
  2eae60: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2eae61); words below are literal-pool data ---
  2eae62: bf00         	nop
  2eae64: 7c08         	ldrb	r0, [r1, #0x10]
  2eae66: 0064         	lsls	r4, r4, #0x1
  2eae68: d894         	bhi	0x2ead94 <FootTableView::FootTableView()+0x10> @ imm = #-0xd8
  2eae6a: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== HandTableView::numberOfCellsInTableView
//      file offset 0x2fb800 (= ELF address; Ghidra 0x30b800), 14 bytes, Thumb-2
  2fb800: b082         	sub	sp, #0x8
  2fb802: 9001         	str	r0, [sp, #0x4]
  2fb804: 9100         	str	r1, [sp]
  2fb806: 2305         	movs	r3, #0x5
  2fb808: 4618         	mov	r0, r3
  2fb80a: b002         	add	sp, #0x8
  2fb80c: 4770         	bx	lr

// ==== HandTableView::numberOfCellsInTableView
//      file offset 0x2fb810 (= ELF address; Ghidra 0x30b810), 8 bytes, Thumb-2
  2fb810: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fb814: f7ff bff4    	b.w	0x2fb800 <HandTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*)> @ imm = #-0x18

// ==== HandTableView::getIdentifier
//      file offset 0x2fb818 (= ELF address; Ghidra 0x30b818), 68 bytes, Thumb-2
  2fb818: b500         	push	{lr}
  2fb81a: b085         	sub	sp, #0x14
  2fb81c: 9001         	str	r0, [sp, #0x4]
  2fb81e: 9100         	str	r1, [sp]
  2fb820: ab03         	add	r3, sp, #0xc
  2fb822: 4618         	mov	r0, r3
  2fb824: f08e f5e6    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x48ebcc
  2fb828: ab03         	add	r3, sp, #0xc
  2fb82a: 9801         	ldr	r0, [sp, #0x4]
  2fb82c: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x2fb858 <HandTableView::getIdentifier()+0x40>
  2fb82e: 447a         	add	r2, pc
  2fb830: 4611         	mov	r1, r2
  2fb832: 461a         	mov	r2, r3
  2fb834: f0bb f114    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4bb228
  2fb838: ab03         	add	r3, sp, #0xc
  2fb83a: 4618         	mov	r0, r3
  2fb83c: f08e f5de    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x48ebbc
  2fb840: e005         	b	0x2fb84e <HandTableView::getIdentifier()+0x36> @ imm = #0xa
  2fb842: ab03         	add	r3, sp, #0xc
  2fb844: 4618         	mov	r0, r3
  2fb846: f08e f5d9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x48ebb2
  2fb84a: f08c f42f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48c85e
  2fb84e: 9801         	ldr	r0, [sp, #0x4]
  2fb850: b005         	add	sp, #0x14
  2fb852: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2fb855); words below are literal-pool data ---
  2fb856: bf00         	nop
  2fb858: 8fce         	ldrh	r6, [r1, #0x3e]
  2fb85a: 004c         	lsls	r4, r1, #0x1

// ==== HandTableView::tableCellAtIndex
//      file offset 0x2fb85c (= ELF address; Ghidra 0x30b85c), 384 bytes, Thumb-2
  2fb85c: b510         	push	{r4, lr}
  2fb85e: b090         	sub	sp, #0x40
  2fb860: 9003         	str	r0, [sp, #0xc]
  2fb862: 9102         	str	r1, [sp, #0x8]
  2fb864: 9201         	str	r2, [sp, #0x4]
  2fb866: 9802         	ldr	r0, [sp, #0x8]
  2fb868: f157 ffd6    	bl	0x453818 <cocos2d::extension::CCTableView::dequeueCell()> @ imm = #0x157fac
  2fb86c: 4603         	mov	r3, r0
  2fb86e: 9305         	str	r3, [sp, #0x14]
  2fb870: 9b05         	ldr	r3, [sp, #0x14]
  2fb872: 2b00         	cmp	r3, #0x0
  2fb874: d006         	beq	0x2fb884 <HandTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x28> @ imm = #0xc
  2fb876: 9805         	ldr	r0, [sp, #0x14]
  2fb878: f15a fbb8    	bl	0x455fec <cocos2d::extension::CCTableViewCell::getIdx()> @ imm = #0x15a770
  2fb87c: 4602         	mov	r2, r0
  2fb87e: 9b01         	ldr	r3, [sp, #0x4]
  2fb880: 429a         	cmp	r2, r3
  2fb882: d001         	beq	0x2fb888 <HandTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x2c> @ imm = #0x2
  2fb884: 2301         	movs	r3, #0x1
  2fb886: e000         	b	0x2fb88a <HandTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x2e> @ imm = #0x0
  2fb888: 2300         	movs	r3, #0x0
  2fb88a: 2b00         	cmp	r3, #0x0
  2fb88c: f000 8098    	beq.w	0x2fb9c0 <HandTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x164> @ imm = #0x130
  2fb890: 20ec         	movs	r0, #0xec
  2fb892: f08c f067    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x48c0ce
  2fb896: 4603         	mov	r3, r0
  2fb898: 461c         	mov	r4, r3
  2fb89a: 4620         	mov	r0, r4
  2fb89c: f7fd fd8e    	bl	0x2f93bc <cocos2d::extension::CCTableViewCell::CCTableViewCell()> @ imm = #-0x24e4
  2fb8a0: 9405         	str	r4, [sp, #0x14]
  2fb8a2: 9b05         	ldr	r3, [sp, #0x14]
  2fb8a4: 4618         	mov	r0, r3
  2fb8a6: f29c fb29    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x29c652
  2fb8aa: 9b03         	ldr	r3, [sp, #0xc]
  2fb8ac: 681b         	ldr	r3, [r3]
  2fb8ae: f503 7306    	add.w	r3, r3, #0x218
  2fb8b2: 681c         	ldr	r4, [r3]
  2fb8b4: ab08         	add	r3, sp, #0x20
  2fb8b6: 4618         	mov	r0, r3
  2fb8b8: 9903         	ldr	r1, [sp, #0xc]
  2fb8ba: 9a02         	ldr	r2, [sp, #0x8]
  2fb8bc: 9b01         	ldr	r3, [sp, #0x4]
  2fb8be: 47a0         	blx	r4
  2fb8c0: ed9d 7a08    	vldr	s14, [sp, #32]
  2fb8c4: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2fb8c8: eec7 6a27    	vdiv.f32	s13, s14, s15
  2fb8cc: ed9d 7a09    	vldr	s14, [sp, #36]
  2fb8d0: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2fb8d4: eec7 7a27    	vdiv.f32	s15, s14, s15
  2fb8d8: ab0a         	add	r3, sp, #0x28
  2fb8da: 4618         	mov	r0, r3
  2fb8dc: ee16 1a90    	vmov	r1, s13
  2fb8e0: ee17 2a90    	vmov	r2, s15
  2fb8e4: f297 fa04    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x297408
  2fb8e8: f7f8 f8e6    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x7e34
  2fb8ec: 4603         	mov	r3, r0
  2fb8ee: f603 638c    	addw	r3, r3, #0xe8c
  2fb8f2: aa0c         	add	r2, sp, #0x30
  2fb8f4: 4610         	mov	r0, r2
  2fb8f6: 4619         	mov	r1, r3
  2fb8f8: f297 fd0e    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x297a1c
  2fb8fc: ab0c         	add	r3, sp, #0x30
  2fb8fe: 4a35         	ldr	r2, [pc, #0xd4]         @ 0x2fb9d4 <HandTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x178>
  2fb900: 447a         	add	r2, pc
  2fb902: 4610         	mov	r0, r2
  2fb904: 4619         	mov	r1, r3
  2fb906: f2dc fc7b    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2dc8f6
  2fb90a: 4603         	mov	r3, r0
  2fb90c: 9306         	str	r3, [sp, #0x18]
  2fb90e: 9b06         	ldr	r3, [sp, #0x18]
  2fb910: 681b         	ldr	r3, [r3]
  2fb912: f503 73fa    	add.w	r3, r3, #0x1f4
  2fb916: 681b         	ldr	r3, [r3]
  2fb918: 9806         	ldr	r0, [sp, #0x18]
  2fb91a: 4798         	blx	r3
  2fb91c: 4603         	mov	r3, r0
  2fb91e: 4618         	mov	r0, r3
  2fb920: f2f6 fb30    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2f6660
  2fb924: 9b06         	ldr	r3, [sp, #0x18]
  2fb926: 681b         	ldr	r3, [r3]
  2fb928: 334c         	adds	r3, #0x4c
  2fb92a: 681b         	ldr	r3, [r3]
  2fb92c: aa0a         	add	r2, sp, #0x28
  2fb92e: 9806         	ldr	r0, [sp, #0x18]
  2fb930: 4611         	mov	r1, r2
  2fb932: 4798         	blx	r3
  2fb934: 9b06         	ldr	r3, [sp, #0x18]
  2fb936: 681b         	ldr	r3, [r3]
  2fb938: f503 73de    	add.w	r3, r3, #0x1bc
  2fb93c: 681c         	ldr	r4, [r3]
  2fb93e: f7f8 f8bb    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x7e8a
  2fb942: 4601         	mov	r1, r0
  2fb944: 9a01         	ldr	r2, [sp, #0x4]
  2fb946: 4613         	mov	r3, r2
  2fb948: 005b         	lsls	r3, r3, #0x1
  2fb94a: 4413         	add	r3, r2
  2fb94c: f603 63d8    	addw	r3, r3, #0xed8
  2fb950: 440b         	add	r3, r1
  2fb952: 3304         	adds	r3, #0x4
  2fb954: 9806         	ldr	r0, [sp, #0x18]
  2fb956: 4619         	mov	r1, r3
  2fb958: 47a0         	blx	r4
  2fb95a: 9b01         	ldr	r3, [sp, #0x4]
  2fb95c: 2b00         	cmp	r3, #0x0
  2fb95e: d106         	bne	0x2fb96e <HandTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x112> @ imm = #0xc
  2fb960: 9b06         	ldr	r3, [sp, #0x18]
  2fb962: 681b         	ldr	r3, [r3]
  2fb964: 3390         	adds	r3, #0x90
  2fb966: 681b         	ldr	r3, [r3]
  2fb968: 9806         	ldr	r0, [sp, #0x18]
  2fb96a: 2100         	movs	r1, #0x0
  2fb96c: 4798         	blx	r3
  2fb96e: 4b1a         	ldr	r3, [pc, #0x68]         @ 0x2fb9d8 <HandTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x17c>
  2fb970: 447b         	add	r3, pc
  2fb972: 4618         	mov	r0, r3
  2fb974: f2dc fcc6    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2dc98c
  2fb978: 4603         	mov	r3, r0
  2fb97a: 9307         	str	r3, [sp, #0x1c]
  2fb97c: 9b07         	ldr	r3, [sp, #0x1c]
  2fb97e: 681b         	ldr	r3, [r3]
  2fb980: 334c         	adds	r3, #0x4c
  2fb982: 681b         	ldr	r3, [r3]
  2fb984: aa0a         	add	r2, sp, #0x28
  2fb986: 9807         	ldr	r0, [sp, #0x1c]
  2fb988: 4611         	mov	r1, r2
  2fb98a: 4798         	blx	r3
  2fb98c: 9b07         	ldr	r3, [sp, #0x1c]
  2fb98e: 681b         	ldr	r3, [r3]
  2fb990: 3340         	adds	r3, #0x40
  2fb992: 681b         	ldr	r3, [r3]
  2fb994: 9807         	ldr	r0, [sp, #0x1c]
  2fb996: f246 6166    	movw	r1, #0x6666
  2fb99a: f6c3 61e6    	movt	r1, #0x3ee6
  2fb99e: 4798         	blx	r3
  2fb9a0: 9b05         	ldr	r3, [sp, #0x14]
  2fb9a2: 681b         	ldr	r3, [r3]
  2fb9a4: 33c8         	adds	r3, #0xc8
  2fb9a6: 681b         	ldr	r3, [r3]
  2fb9a8: 9a05         	ldr	r2, [sp, #0x14]
  2fb9aa: 4610         	mov	r0, r2
  2fb9ac: 9907         	ldr	r1, [sp, #0x1c]
  2fb9ae: 4798         	blx	r3
  2fb9b0: 9b05         	ldr	r3, [sp, #0x14]
  2fb9b2: 681b         	ldr	r3, [r3]
  2fb9b4: 33c8         	adds	r3, #0xc8
  2fb9b6: 681b         	ldr	r3, [r3]
  2fb9b8: 9a05         	ldr	r2, [sp, #0x14]
  2fb9ba: 4610         	mov	r0, r2
  2fb9bc: 9906         	ldr	r1, [sp, #0x18]
  2fb9be: 4798         	blx	r3
  2fb9c0: 9b05         	ldr	r3, [sp, #0x14]
  2fb9c2: e004         	b	0x2fb9ce <HandTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x172> @ imm = #0x8
  2fb9c4: 4620         	mov	r0, r4
  2fb9c6: f08c f36d    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48c6da
  2fb9ca: f08c f36f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48c6de
  2fb9ce: 4618         	mov	r0, r3
  2fb9d0: b010         	add	sp, #0x40
  2fb9d2: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2fb9d3); words below are literal-pool data ---
  2fb9d4: 8e30         	ldrh	r0, [r6, #0x30]
  2fb9d6: 004c         	lsls	r4, r1, #0x1
  2fb9d8: 8dd4         	ldrh	r4, [r2, #0x2e]
  2fb9da: 004c         	lsls	r4, r1, #0x1

// ==== HandTableView::tableCellAtIndex
//      file offset 0x2fb9dc (= ELF address; Ghidra 0x30b9dc), 8 bytes, Thumb-2
  2fb9dc: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fb9e0: f7ff bf3c    	b.w	0x2fb85c <HandTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)> @ imm = #-0x188

// ==== HandTableView::tableCellSizeForIndex
//      file offset 0x2fb9e4 (= ELF address; Ghidra 0x30b9e4), 54 bytes, Thumb-2
  2fb9e4: b500         	push	{lr}
  2fb9e6: b085         	sub	sp, #0x14
  2fb9e8: 9003         	str	r0, [sp, #0xc]
  2fb9ea: 9102         	str	r1, [sp, #0x8]
  2fb9ec: 9201         	str	r2, [sp, #0x4]
  2fb9ee: 9300         	str	r3, [sp]
  2fb9f0: 9b01         	ldr	r3, [sp, #0x4]
  2fb9f2: 681b         	ldr	r3, [r3]
  2fb9f4: 338c         	adds	r3, #0x8c
  2fb9f6: 681b         	ldr	r3, [r3]
  2fb9f8: 9a01         	ldr	r2, [sp, #0x4]
  2fb9fa: 4610         	mov	r0, r2
  2fb9fc: 4798         	blx	r3
  2fb9fe: 4603         	mov	r3, r0
  2fba00: 681b         	ldr	r3, [r3]
  2fba02: 9803         	ldr	r0, [sp, #0xc]
  2fba04: 4619         	mov	r1, r3
  2fba06: f04f 0200    	mov.w	r2, #0x0
  2fba0a: f2c4 2248    	movt	r2, #0x4248
  2fba0e: f297 fb41    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x297682
  2fba12: 9803         	ldr	r0, [sp, #0xc]
  2fba14: b005         	add	sp, #0x14
  2fba16: f85d fb04    	ldr	pc, [sp], #4

// ==== HandTableView::tableCellSizeForIndex
//      file offset 0x2fba1c (= ELF address; Ghidra 0x30ba1c), 8 bytes, Thumb-2
  2fba1c: f5a1 71e4    	sub.w	r1, r1, #0x1c8
  2fba20: f7ff bfe0    	b.w	0x2fb9e4 <HandTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int)> @ imm = #-0x40

// ==== HandTableView::~HandTableView
//      file offset 0x2fbdb8 (= ELF address; Ghidra 0x30bdb8), 128 bytes, Thumb-2
  2fbdb8: b500         	push	{lr}
  2fbdba: b083         	sub	sp, #0xc
  2fbdbc: 9001         	str	r0, [sp, #0x4]
  2fbdbe: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x2fbe30 <HandTableView::~HandTableView()+0x78>
  2fbdc0: 447b         	add	r3, pc
  2fbdc2: 9a01         	ldr	r2, [sp, #0x4]
  2fbdc4: 491b         	ldr	r1, [pc, #0x6c]         @ 0x2fbe34 <HandTableView::~HandTableView()+0x7c>
  2fbdc6: 5859         	ldr	r1, [r3, r1]
  2fbdc8: 3108         	adds	r1, #0x8
  2fbdca: 6011         	str	r1, [r2]
  2fbdcc: 9a01         	ldr	r2, [sp, #0x4]
  2fbdce: 4919         	ldr	r1, [pc, #0x64]         @ 0x2fbe34 <HandTableView::~HandTableView()+0x7c>
  2fbdd0: 5859         	ldr	r1, [r3, r1]
  2fbdd2: f501 710b    	add.w	r1, r1, #0x22c
  2fbdd6: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  2fbdda: 9a01         	ldr	r2, [sp, #0x4]
  2fbddc: 4915         	ldr	r1, [pc, #0x54]         @ 0x2fbe34 <HandTableView::~HandTableView()+0x7c>
  2fbdde: 5859         	ldr	r1, [r3, r1]
  2fbde0: f501 7117    	add.w	r1, r1, #0x25c
  2fbde4: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  2fbde8: 9a01         	ldr	r2, [sp, #0x4]
  2fbdea: 4912         	ldr	r1, [pc, #0x48]         @ 0x2fbe34 <HandTableView::~HandTableView()+0x7c>
  2fbdec: 5859         	ldr	r1, [r3, r1]
  2fbdee: f501 711a    	add.w	r1, r1, #0x268
  2fbdf2: f8c2 10ec    	str.w	r1, [r2, #0xec]
  2fbdf6: 9a01         	ldr	r2, [sp, #0x4]
  2fbdf8: 490e         	ldr	r1, [pc, #0x38]         @ 0x2fbe34 <HandTableView::~HandTableView()+0x7c>
  2fbdfa: 5859         	ldr	r1, [r3, r1]
  2fbdfc: f501 711e    	add.w	r1, r1, #0x278
  2fbe00: f8c2 1198    	str.w	r1, [r2, #0x198]
  2fbe04: 9a01         	ldr	r2, [sp, #0x4]
  2fbe06: 490b         	ldr	r1, [pc, #0x2c]         @ 0x2fbe34 <HandTableView::~HandTableView()+0x7c>
  2fbe08: 585b         	ldr	r3, [r3, r1]
  2fbe0a: f503 7324    	add.w	r3, r3, #0x290
  2fbe0e: f8c2 31c8    	str.w	r3, [r2, #0x1c8]
  2fbe12: 9b01         	ldr	r3, [sp, #0x4]
  2fbe14: 4618         	mov	r0, r3
  2fbe16: f7ff fefd    	bl	0x2fbc14 <MenuTableView::~MenuTableView()> @ imm = #-0x206
  2fbe1a: 2300         	movs	r3, #0x0
  2fbe1c: 2b00         	cmp	r3, #0x0
  2fbe1e: d002         	beq	0x2fbe26 <HandTableView::~HandTableView()+0x6e> @ imm = #0x4
  2fbe20: 9801         	ldr	r0, [sp, #0x4]
  2fbe22: f08c f13f    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48c27e
  2fbe26: 9b01         	ldr	r3, [sp, #0x4]
  2fbe28: 4618         	mov	r0, r3
  2fbe2a: b003         	add	sp, #0xc
  2fbe2c: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2fbe2f); words below are literal-pool data ---
  2fbe30: 6c48         	ldr	r0, [r1, #0x44]
  2fbe32: 0063         	lsls	r3, r4, #0x1
  2fbe34: d894         	bhi	0x2fbd60 <VestTableView::~VestTableView()+0x74> @ imm = #-0xd8
  2fbe36: ffff f5a0    	<unknown>

// ==== HandTableView::~HandTableView
//      file offset 0x2fbe38 (= ELF address; Ghidra 0x30be38), 8 bytes, Thumb-2
  2fbe38: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fbe3c: f7ff bfbc    	b.w	0x2fbdb8 <HandTableView::~HandTableView()> @ imm = #-0x88

// ==== HandTableView::~HandTableView
//      file offset 0x2fbe40 (= ELF address; Ghidra 0x30be40), 8 bytes, Thumb-2
  2fbe40: f5a0 70cc    	sub.w	r0, r0, #0x198
  2fbe44: f7ff bfb8    	b.w	0x2fbdb8 <HandTableView::~HandTableView()> @ imm = #-0x90

// ==== HandTableView::~HandTableView
//      file offset 0x2fbe48 (= ELF address; Ghidra 0x30be48), 8 bytes, Thumb-2
  2fbe48: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2fbe4c: f7ff bfb4    	b.w	0x2fbdb8 <HandTableView::~HandTableView()> @ imm = #-0x98

// ==== HandTableView::~HandTableView
//      file offset 0x2fbe50 (= ELF address; Ghidra 0x30be50), 28 bytes, Thumb-2
  2fbe50: b500         	push	{lr}
  2fbe52: b083         	sub	sp, #0xc
  2fbe54: 9001         	str	r0, [sp, #0x4]
  2fbe56: 9801         	ldr	r0, [sp, #0x4]
  2fbe58: f7ff ffae    	bl	0x2fbdb8 <HandTableView::~HandTableView()> @ imm = #-0xa4
  2fbe5c: 9801         	ldr	r0, [sp, #0x4]
  2fbe5e: f08c f121    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48c242
  2fbe62: 9b01         	ldr	r3, [sp, #0x4]
  2fbe64: 4618         	mov	r0, r3
  2fbe66: b003         	add	sp, #0xc
  2fbe68: f85d fb04    	ldr	pc, [sp], #4

// ==== HandTableView::~HandTableView
//      file offset 0x2fbe6c (= ELF address; Ghidra 0x30be6c), 6 bytes, Thumb-2
  2fbe6c: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fbe70: e7ee         	b	0x2fbe50 <HandTableView::~HandTableView()> @ imm = #-0x24

// ==== HandTableView::~HandTableView
//      file offset 0x2fbe74 (= ELF address; Ghidra 0x30be74), 6 bytes, Thumb-2
  2fbe74: f5a0 70cc    	sub.w	r0, r0, #0x198
  2fbe78: e7ea         	b	0x2fbe50 <HandTableView::~HandTableView()> @ imm = #-0x2c

// ==== HandTableView::~HandTableView
//      file offset 0x2fbe7c (= ELF address; Ghidra 0x30be7c), 6 bytes, Thumb-2
  2fbe7c: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2fbe80: e7e6         	b	0x2fbe50 <HandTableView::~HandTableView()> @ imm = #-0x34
