// HatTableView: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 16 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../HatTableView.cpp

// ==== HatTableView::HatTableView
//      file offset 0x2eabb4 (= ELF address; Ghidra 0x2fabb4), 116 bytes, Thumb-2
  2eabb4: b510         	push	{r4, lr}
  2eabb6: b082         	sub	sp, #0x8
  2eabb8: 9001         	str	r0, [sp, #0x4]
  2eabba: 4c19         	ldr	r4, [pc, #0x64]         @ 0x2eac20 <HatTableView::HatTableView()+0x6c>
  2eabbc: 447c         	add	r4, pc
  2eabbe: 9b01         	ldr	r3, [sp, #0x4]
  2eabc0: 4618         	mov	r0, r3
  2eabc2: f086 f86d    	bl	0x370ca0 <MenuTableView::MenuTableView()> @ imm = #0x860da
  2eabc6: 9b01         	ldr	r3, [sp, #0x4]
  2eabc8: 4a16         	ldr	r2, [pc, #0x58]         @ 0x2eac24 <HatTableView::HatTableView()+0x70>
  2eabca: 58a2         	ldr	r2, [r4, r2]
  2eabcc: 3208         	adds	r2, #0x8
  2eabce: 601a         	str	r2, [r3]
  2eabd0: 9b01         	ldr	r3, [sp, #0x4]
  2eabd2: 4a14         	ldr	r2, [pc, #0x50]         @ 0x2eac24 <HatTableView::HatTableView()+0x70>
  2eabd4: 58a2         	ldr	r2, [r4, r2]
  2eabd6: f502 720b    	add.w	r2, r2, #0x22c
  2eabda: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  2eabde: 9b01         	ldr	r3, [sp, #0x4]
  2eabe0: 4a10         	ldr	r2, [pc, #0x40]         @ 0x2eac24 <HatTableView::HatTableView()+0x70>
  2eabe2: 58a2         	ldr	r2, [r4, r2]
  2eabe4: f502 7217    	add.w	r2, r2, #0x25c
  2eabe8: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  2eabec: 9b01         	ldr	r3, [sp, #0x4]
  2eabee: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x2eac24 <HatTableView::HatTableView()+0x70>
  2eabf0: 58a2         	ldr	r2, [r4, r2]
  2eabf2: f502 721a    	add.w	r2, r2, #0x268
  2eabf6: f8c3 20ec    	str.w	r2, [r3, #0xec]
  2eabfa: 9b01         	ldr	r3, [sp, #0x4]
  2eabfc: 4a09         	ldr	r2, [pc, #0x24]         @ 0x2eac24 <HatTableView::HatTableView()+0x70>
  2eabfe: 58a2         	ldr	r2, [r4, r2]
  2eac00: f502 721e    	add.w	r2, r2, #0x278
  2eac04: f8c3 2198    	str.w	r2, [r3, #0x198]
  2eac08: 9b01         	ldr	r3, [sp, #0x4]
  2eac0a: 4a06         	ldr	r2, [pc, #0x18]         @ 0x2eac24 <HatTableView::HatTableView()+0x70>
  2eac0c: 58a2         	ldr	r2, [r4, r2]
  2eac0e: f502 7224    	add.w	r2, r2, #0x290
  2eac12: f8c3 21c8    	str.w	r2, [r3, #0x1c8]
  2eac16: 9b01         	ldr	r3, [sp, #0x4]
  2eac18: 4618         	mov	r0, r3
  2eac1a: b002         	add	sp, #0x8
  2eac1c: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2eac1d); words below are literal-pool data ---
  2eac1e: bf00         	nop
  2eac20: 7e4c         	ldrb	r4, [r1, #0x19]
  2eac22: 0064         	lsls	r4, r4, #0x1
  2eac24: d880         	bhi	0x2eab28 <StacheTableView::StacheTableView()+0x5c> @ imm = #-0x100
  2eac26: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== HatTableView::numberOfCellsInTableView
//      file offset 0x2fadd4 (= ELF address; Ghidra 0x30add4), 112 bytes, Thumb-2
  2fadd4: b510         	push	{r4, lr}
  2fadd6: b084         	sub	sp, #0x10
  2fadd8: 9001         	str	r0, [sp, #0x4]
  2fadda: 9100         	str	r1, [sp]
  2faddc: f051 f91e    	bl	0x34c01c <ItemPurchase::sharedItemPurchase()> @ imm = #0x5123c
  2fade0: ab02         	add	r3, sp, #0x8
  2fade2: 4618         	mov	r0, r3
  2fade4: f08f f306    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x48f60c
  2fade8: aa03         	add	r2, sp, #0xc
  2fadea: ab02         	add	r3, sp, #0x8
  2fadec: 4610         	mov	r0, r2
  2fadee: 4a14         	ldr	r2, [pc, #0x50]         @ 0x2fae40 <HatTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*)+0x6c>
  2fadf0: 447a         	add	r2, pc
  2fadf2: 4611         	mov	r1, r2
  2fadf4: 461a         	mov	r2, r3
  2fadf6: f0bb f633    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4bbc66
  2fadfa: ab03         	add	r3, sp, #0xc
  2fadfc: 4618         	mov	r0, r3
  2fadfe: f051 fa49    	bl	0x34c294 <ItemPurchase::isItemPurchased(std::string)> @ imm = #0x51492
  2fae02: 4603         	mov	r3, r0
  2fae04: 461c         	mov	r4, r3
  2fae06: ab03         	add	r3, sp, #0xc
  2fae08: 4618         	mov	r0, r3
  2fae0a: f0ba f583    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4bab06
  2fae0e: ab02         	add	r3, sp, #0x8
  2fae10: 4618         	mov	r0, r3
  2fae12: f08f f2f3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x48f5e6
  2fae16: 2c00         	cmp	r4, #0x0
  2fae18: d001         	beq	0x2fae1e <HatTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*)+0x4a> @ imm = #0x2
  2fae1a: 2313         	movs	r3, #0x13
  2fae1c: e00c         	b	0x2fae38 <HatTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*)+0x64> @ imm = #0x18
  2fae1e: 230e         	movs	r3, #0xe
  2fae20: e00a         	b	0x2fae38 <HatTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*)+0x64> @ imm = #0x14
  2fae22: ab03         	add	r3, sp, #0xc
  2fae24: 4618         	mov	r0, r3
  2fae26: f0ba f575    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4baaea
  2fae2a: e7ff         	b	0x2fae2c <HatTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*)+0x58> @ imm = #-0x2
  2fae2c: ab02         	add	r3, sp, #0x8
  2fae2e: 4618         	mov	r0, r3
  2fae30: f08f f2e4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x48f5c8
  2fae34: f08d f13a    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48d274
  2fae38: 4618         	mov	r0, r3
  2fae3a: b004         	add	sp, #0x10
  2fae3c: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2fae3d); words below are literal-pool data ---
  2fae3e: bf00         	nop
  2fae40: 99e0         	ldr	r1, [sp, #0x380]
  2fae42: 004c         	lsls	r4, r1, #0x1

// ==== HatTableView::numberOfCellsInTableView
//      file offset 0x2fae44 (= ELF address; Ghidra 0x30ae44), 8 bytes, Thumb-2
  2fae44: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fae48: f7ff bfc4    	b.w	0x2fadd4 <HatTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*)> @ imm = #-0x78

// ==== HatTableView::getIdentifier
//      file offset 0x2fae4c (= ELF address; Ghidra 0x30ae4c), 68 bytes, Thumb-2
  2fae4c: b500         	push	{lr}
  2fae4e: b085         	sub	sp, #0x14
  2fae50: 9001         	str	r0, [sp, #0x4]
  2fae52: 9100         	str	r1, [sp]
  2fae54: ab03         	add	r3, sp, #0xc
  2fae56: 4618         	mov	r0, r3
  2fae58: f08f f2cc    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x48f598
  2fae5c: ab03         	add	r3, sp, #0xc
  2fae5e: 9801         	ldr	r0, [sp, #0x4]
  2fae60: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x2fae8c <HatTableView::getIdentifier()+0x40>
  2fae62: 447a         	add	r2, pc
  2fae64: 4611         	mov	r1, r2
  2fae66: 461a         	mov	r2, r3
  2fae68: f0bb f5fa    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4bbbf4
  2fae6c: ab03         	add	r3, sp, #0xc
  2fae6e: 4618         	mov	r0, r3
  2fae70: f08f f2c4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x48f588
  2fae74: e005         	b	0x2fae82 <HatTableView::getIdentifier()+0x36> @ imm = #0xa
  2fae76: ab03         	add	r3, sp, #0xc
  2fae78: 4618         	mov	r0, r3
  2fae7a: f08f f2bf    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x48f57e
  2fae7e: f08d f115    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48d22a
  2fae82: 9801         	ldr	r0, [sp, #0x4]
  2fae84: b005         	add	sp, #0x14
  2fae86: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2fae89); words below are literal-pool data ---
  2fae8a: bf00         	nop
  2fae8c: 997a         	ldr	r1, [sp, #0x1e8]
  2fae8e: 004c         	lsls	r4, r1, #0x1

// ==== HatTableView::tableCellAtIndex
//      file offset 0x2fae90 (= ELF address; Ghidra 0x30ae90), 328 bytes, Thumb-2
  2fae90: b510         	push	{r4, lr}
  2fae92: b090         	sub	sp, #0x40
  2fae94: 9003         	str	r0, [sp, #0xc]
  2fae96: 9102         	str	r1, [sp, #0x8]
  2fae98: 9201         	str	r2, [sp, #0x4]
  2fae9a: 9802         	ldr	r0, [sp, #0x8]
  2fae9c: f158 fcbc    	bl	0x453818 <cocos2d::extension::CCTableView::dequeueCell()> @ imm = #0x158978
  2faea0: 4603         	mov	r3, r0
  2faea2: 9305         	str	r3, [sp, #0x14]
  2faea4: 9b05         	ldr	r3, [sp, #0x14]
  2faea6: 2b00         	cmp	r3, #0x0
  2faea8: d006         	beq	0x2faeb8 <HatTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x28> @ imm = #0xc
  2faeaa: 9805         	ldr	r0, [sp, #0x14]
  2faeac: f15b f89e    	bl	0x455fec <cocos2d::extension::CCTableViewCell::getIdx()> @ imm = #0x15b13c
  2faeb0: 4602         	mov	r2, r0
  2faeb2: 9b01         	ldr	r3, [sp, #0x4]
  2faeb4: 429a         	cmp	r2, r3
  2faeb6: d001         	beq	0x2faebc <HatTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x2c> @ imm = #0x2
  2faeb8: 2301         	movs	r3, #0x1
  2faeba: e000         	b	0x2faebe <HatTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x2e> @ imm = #0x0
  2faebc: 2300         	movs	r3, #0x0
  2faebe: 2b00         	cmp	r3, #0x0
  2faec0: d07c         	beq	0x2fafbc <HatTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x12c> @ imm = #0xf8
  2faec2: 20ec         	movs	r0, #0xec
  2faec4: f08c f54e    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x48ca9c
  2faec8: 4603         	mov	r3, r0
  2faeca: 461c         	mov	r4, r3
  2faecc: 4620         	mov	r0, r4
  2faece: f7fe fa75    	bl	0x2f93bc <cocos2d::extension::CCTableViewCell::CCTableViewCell()> @ imm = #-0x1b16
  2faed2: 9405         	str	r4, [sp, #0x14]
  2faed4: 9b05         	ldr	r3, [sp, #0x14]
  2faed6: 4618         	mov	r0, r3
  2faed8: f29d f810    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x29d020
  2faedc: 9b03         	ldr	r3, [sp, #0xc]
  2faede: 681b         	ldr	r3, [r3]
  2faee0: f503 7306    	add.w	r3, r3, #0x218
  2faee4: 681c         	ldr	r4, [r3]
  2faee6: ab08         	add	r3, sp, #0x20
  2faee8: 4618         	mov	r0, r3
  2faeea: 9903         	ldr	r1, [sp, #0xc]
  2faeec: 9a02         	ldr	r2, [sp, #0x8]
  2faeee: 9b01         	ldr	r3, [sp, #0x4]
  2faef0: 47a0         	blx	r4
  2faef2: ed9d 7a08    	vldr	s14, [sp, #32]
  2faef6: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2faefa: eec7 6a27    	vdiv.f32	s13, s14, s15
  2faefe: ed9d 7a09    	vldr	s14, [sp, #36]
  2faf02: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2faf06: eec7 7a27    	vdiv.f32	s15, s14, s15
  2faf0a: ab0a         	add	r3, sp, #0x28
  2faf0c: 4618         	mov	r0, r3
  2faf0e: ee16 1a90    	vmov	r1, s13
  2faf12: ee17 2a90    	vmov	r2, s15
  2faf16: f297 feeb    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x297dd6
  2faf1a: f7f8 fdcd    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x7466
  2faf1e: 4602         	mov	r2, r0
  2faf20: 9b01         	ldr	r3, [sp, #0x4]
  2faf22: 011b         	lsls	r3, r3, #0x4
  2faf24: f603 1318    	addw	r3, r3, #0x918
  2faf28: 4413         	add	r3, r2
  2faf2a: 3304         	adds	r3, #0x4
  2faf2c: aa0c         	add	r2, sp, #0x30
  2faf2e: 4610         	mov	r0, r2
  2faf30: 4619         	mov	r1, r3
  2faf32: f298 f9f1    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x2983e2
  2faf36: ab0c         	add	r3, sp, #0x30
  2faf38: 4a25         	ldr	r2, [pc, #0x94]         @ 0x2fafd0 <HatTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x140>
  2faf3a: 447a         	add	r2, pc
  2faf3c: 4610         	mov	r0, r2
  2faf3e: 4619         	mov	r1, r3
  2faf40: f2dd f95e    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2dd2bc
  2faf44: 4603         	mov	r3, r0
  2faf46: 9306         	str	r3, [sp, #0x18]
  2faf48: 9b06         	ldr	r3, [sp, #0x18]
  2faf4a: 681b         	ldr	r3, [r3]
  2faf4c: f503 73fa    	add.w	r3, r3, #0x1f4
  2faf50: 681b         	ldr	r3, [r3]
  2faf52: 9806         	ldr	r0, [sp, #0x18]
  2faf54: 4798         	blx	r3
  2faf56: 4603         	mov	r3, r0
  2faf58: 4618         	mov	r0, r3
  2faf5a: f2f7 f813    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2f7026
  2faf5e: 9b06         	ldr	r3, [sp, #0x18]
  2faf60: 681b         	ldr	r3, [r3]
  2faf62: 334c         	adds	r3, #0x4c
  2faf64: 681b         	ldr	r3, [r3]
  2faf66: aa0a         	add	r2, sp, #0x28
  2faf68: 9806         	ldr	r0, [sp, #0x18]
  2faf6a: 4611         	mov	r1, r2
  2faf6c: 4798         	blx	r3
  2faf6e: 4b19         	ldr	r3, [pc, #0x64]         @ 0x2fafd4 <HatTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x144>
  2faf70: 447b         	add	r3, pc
  2faf72: 4618         	mov	r0, r3
  2faf74: f2dd f9c6    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2dd38c
  2faf78: 4603         	mov	r3, r0
  2faf7a: 9307         	str	r3, [sp, #0x1c]
  2faf7c: 9b07         	ldr	r3, [sp, #0x1c]
  2faf7e: 681b         	ldr	r3, [r3]
  2faf80: 334c         	adds	r3, #0x4c
  2faf82: 681b         	ldr	r3, [r3]
  2faf84: aa0a         	add	r2, sp, #0x28
  2faf86: 9807         	ldr	r0, [sp, #0x1c]
  2faf88: 4611         	mov	r1, r2
  2faf8a: 4798         	blx	r3
  2faf8c: 9b07         	ldr	r3, [sp, #0x1c]
  2faf8e: 681b         	ldr	r3, [r3]
  2faf90: 3340         	adds	r3, #0x40
  2faf92: 681b         	ldr	r3, [r3]
  2faf94: 9807         	ldr	r0, [sp, #0x1c]
  2faf96: f04f 517d    	mov.w	r1, #0x3f400000
  2faf9a: 4798         	blx	r3
  2faf9c: 9b05         	ldr	r3, [sp, #0x14]
  2faf9e: 681b         	ldr	r3, [r3]
  2fafa0: 33c8         	adds	r3, #0xc8
  2fafa2: 681b         	ldr	r3, [r3]
  2fafa4: 9a05         	ldr	r2, [sp, #0x14]
  2fafa6: 4610         	mov	r0, r2
  2fafa8: 9907         	ldr	r1, [sp, #0x1c]
  2fafaa: 4798         	blx	r3
  2fafac: 9b05         	ldr	r3, [sp, #0x14]
  2fafae: 681b         	ldr	r3, [r3]
  2fafb0: 33c8         	adds	r3, #0xc8
  2fafb2: 681b         	ldr	r3, [r3]
  2fafb4: 9a05         	ldr	r2, [sp, #0x14]
  2fafb6: 4610         	mov	r0, r2
  2fafb8: 9906         	ldr	r1, [sp, #0x18]
  2fafba: 4798         	blx	r3
  2fafbc: 9b05         	ldr	r3, [sp, #0x14]
  2fafbe: e004         	b	0x2fafca <HatTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x13a> @ imm = #0x8
  2fafc0: 4620         	mov	r0, r4
  2fafc2: f08d f06f    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48d0de
  2fafc6: f08d f071    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48d0e2
  2fafca: 4618         	mov	r0, r3
  2fafcc: b010         	add	sp, #0x40
  2fafce: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2fafcf); words below are literal-pool data ---
  2fafd0: 97f6         	str	r7, [sp, #0x3d8]
  2fafd2: 004c         	lsls	r4, r1, #0x1
  2fafd4: 97d4         	str	r7, [sp, #0x350]
  2fafd6: 004c         	lsls	r4, r1, #0x1

// ==== HatTableView::tableCellAtIndex
//      file offset 0x2fafd8 (= ELF address; Ghidra 0x30afd8), 8 bytes, Thumb-2
  2fafd8: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fafdc: f7ff bf58    	b.w	0x2fae90 <HatTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)> @ imm = #-0x150

// ==== HatTableView::tableCellSizeForIndex
//      file offset 0x2fafe0 (= ELF address; Ghidra 0x30afe0), 54 bytes, Thumb-2
  2fafe0: b500         	push	{lr}
  2fafe2: b085         	sub	sp, #0x14
  2fafe4: 9003         	str	r0, [sp, #0xc]
  2fafe6: 9102         	str	r1, [sp, #0x8]
  2fafe8: 9201         	str	r2, [sp, #0x4]
  2fafea: 9300         	str	r3, [sp]
  2fafec: 9b01         	ldr	r3, [sp, #0x4]
  2fafee: 681b         	ldr	r3, [r3]
  2faff0: 338c         	adds	r3, #0x8c
  2faff2: 681b         	ldr	r3, [r3]
  2faff4: 9a01         	ldr	r2, [sp, #0x4]
  2faff6: 4610         	mov	r0, r2
  2faff8: 4798         	blx	r3
  2faffa: 4603         	mov	r3, r0
  2faffc: 681b         	ldr	r3, [r3]
  2faffe: 9803         	ldr	r0, [sp, #0xc]
  2fb000: 4619         	mov	r1, r3
  2fb002: f04f 0200    	mov.w	r2, #0x0
  2fb006: f2c4 2296    	movt	r2, #0x4296
  2fb00a: f298 f843    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x298086
  2fb00e: 9803         	ldr	r0, [sp, #0xc]
  2fb010: b005         	add	sp, #0x14
  2fb012: f85d fb04    	ldr	pc, [sp], #4

// ==== HatTableView::tableCellSizeForIndex
//      file offset 0x2fb018 (= ELF address; Ghidra 0x30b018), 8 bytes, Thumb-2
  2fb018: f5a1 71e4    	sub.w	r1, r1, #0x1c8
  2fb01c: f7ff bfe0    	b.w	0x2fafe0 <HatTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int)> @ imm = #-0x40

// ==== HatTableView::~HatTableView
//      file offset 0x2fc1b4 (= ELF address; Ghidra 0x30c1b4), 128 bytes, Thumb-2
  2fc1b4: b500         	push	{lr}
  2fc1b6: b083         	sub	sp, #0xc
  2fc1b8: 9001         	str	r0, [sp, #0x4]
  2fc1ba: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x2fc22c <HatTableView::~HatTableView()+0x78>
  2fc1bc: 447b         	add	r3, pc
  2fc1be: 9a01         	ldr	r2, [sp, #0x4]
  2fc1c0: 491b         	ldr	r1, [pc, #0x6c]         @ 0x2fc230 <HatTableView::~HatTableView()+0x7c>
  2fc1c2: 5859         	ldr	r1, [r3, r1]
  2fc1c4: 3108         	adds	r1, #0x8
  2fc1c6: 6011         	str	r1, [r2]
  2fc1c8: 9a01         	ldr	r2, [sp, #0x4]
  2fc1ca: 4919         	ldr	r1, [pc, #0x64]         @ 0x2fc230 <HatTableView::~HatTableView()+0x7c>
  2fc1cc: 5859         	ldr	r1, [r3, r1]
  2fc1ce: f501 710b    	add.w	r1, r1, #0x22c
  2fc1d2: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  2fc1d6: 9a01         	ldr	r2, [sp, #0x4]
  2fc1d8: 4915         	ldr	r1, [pc, #0x54]         @ 0x2fc230 <HatTableView::~HatTableView()+0x7c>
  2fc1da: 5859         	ldr	r1, [r3, r1]
  2fc1dc: f501 7117    	add.w	r1, r1, #0x25c
  2fc1e0: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  2fc1e4: 9a01         	ldr	r2, [sp, #0x4]
  2fc1e6: 4912         	ldr	r1, [pc, #0x48]         @ 0x2fc230 <HatTableView::~HatTableView()+0x7c>
  2fc1e8: 5859         	ldr	r1, [r3, r1]
  2fc1ea: f501 711a    	add.w	r1, r1, #0x268
  2fc1ee: f8c2 10ec    	str.w	r1, [r2, #0xec]
  2fc1f2: 9a01         	ldr	r2, [sp, #0x4]
  2fc1f4: 490e         	ldr	r1, [pc, #0x38]         @ 0x2fc230 <HatTableView::~HatTableView()+0x7c>
  2fc1f6: 5859         	ldr	r1, [r3, r1]
  2fc1f8: f501 711e    	add.w	r1, r1, #0x278
  2fc1fc: f8c2 1198    	str.w	r1, [r2, #0x198]
  2fc200: 9a01         	ldr	r2, [sp, #0x4]
  2fc202: 490b         	ldr	r1, [pc, #0x2c]         @ 0x2fc230 <HatTableView::~HatTableView()+0x7c>
  2fc204: 585b         	ldr	r3, [r3, r1]
  2fc206: f503 7324    	add.w	r3, r3, #0x290
  2fc20a: f8c2 31c8    	str.w	r3, [r2, #0x1c8]
  2fc20e: 9b01         	ldr	r3, [sp, #0x4]
  2fc210: 4618         	mov	r0, r3
  2fc212: f7ff fcff    	bl	0x2fbc14 <MenuTableView::~MenuTableView()> @ imm = #-0x602
  2fc216: 2300         	movs	r3, #0x0
  2fc218: 2b00         	cmp	r3, #0x0
  2fc21a: d002         	beq	0x2fc222 <HatTableView::~HatTableView()+0x6e> @ imm = #0x4
  2fc21c: 9801         	ldr	r0, [sp, #0x4]
  2fc21e: f08b f741    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48be82
  2fc222: 9b01         	ldr	r3, [sp, #0x4]
  2fc224: 4618         	mov	r0, r3
  2fc226: b003         	add	sp, #0xc
  2fc228: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2fc22b); words below are literal-pool data ---
  2fc22c: 684c         	ldr	r4, [r1, #0x4]
  2fc22e: 0063         	lsls	r3, r4, #0x1
  2fc230: d880         	bhi	0x2fc134 <BodyTableView::~BodyTableView()+0x4c> @ imm = #-0x100
  2fc232: ffff f5a0    	<unknown>

// ==== HatTableView::~HatTableView
//      file offset 0x2fc234 (= ELF address; Ghidra 0x30c234), 8 bytes, Thumb-2
  2fc234: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fc238: f7ff bfbc    	b.w	0x2fc1b4 <HatTableView::~HatTableView()> @ imm = #-0x88

// ==== HatTableView::~HatTableView
//      file offset 0x2fc23c (= ELF address; Ghidra 0x30c23c), 8 bytes, Thumb-2
  2fc23c: f5a0 70cc    	sub.w	r0, r0, #0x198
  2fc240: f7ff bfb8    	b.w	0x2fc1b4 <HatTableView::~HatTableView()> @ imm = #-0x90

// ==== HatTableView::~HatTableView
//      file offset 0x2fc244 (= ELF address; Ghidra 0x30c244), 8 bytes, Thumb-2
  2fc244: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2fc248: f7ff bfb4    	b.w	0x2fc1b4 <HatTableView::~HatTableView()> @ imm = #-0x98

// ==== HatTableView::~HatTableView
//      file offset 0x2fc24c (= ELF address; Ghidra 0x30c24c), 28 bytes, Thumb-2
  2fc24c: b500         	push	{lr}
  2fc24e: b083         	sub	sp, #0xc
  2fc250: 9001         	str	r0, [sp, #0x4]
  2fc252: 9801         	ldr	r0, [sp, #0x4]
  2fc254: f7ff ffae    	bl	0x2fc1b4 <HatTableView::~HatTableView()> @ imm = #-0xa4
  2fc258: 9801         	ldr	r0, [sp, #0x4]
  2fc25a: f08b f723    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48be46
  2fc25e: 9b01         	ldr	r3, [sp, #0x4]
  2fc260: 4618         	mov	r0, r3
  2fc262: b003         	add	sp, #0xc
  2fc264: f85d fb04    	ldr	pc, [sp], #4

// ==== HatTableView::~HatTableView
//      file offset 0x2fc268 (= ELF address; Ghidra 0x30c268), 6 bytes, Thumb-2
  2fc268: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fc26c: e7ee         	b	0x2fc24c <HatTableView::~HatTableView()> @ imm = #-0x24

// ==== HatTableView::~HatTableView
//      file offset 0x2fc270 (= ELF address; Ghidra 0x30c270), 6 bytes, Thumb-2
  2fc270: f5a0 70cc    	sub.w	r0, r0, #0x198
  2fc274: e7ea         	b	0x2fc24c <HatTableView::~HatTableView()> @ imm = #-0x2c

// ==== HatTableView::~HatTableView
//      file offset 0x2fc278 (= ELF address; Ghidra 0x30c278), 6 bytes, Thumb-2
  2fc278: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2fc27c: e7e6         	b	0x2fc24c <HatTableView::~HatTableView()> @ imm = #-0x34
