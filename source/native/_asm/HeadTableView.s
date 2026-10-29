// HeadTableView: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 16 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../HeadTableView.cpp

// ==== HeadTableView::HeadTableView
//      file offset 0x2ea644 (= ELF address; Ghidra 0x2fa644), 116 bytes, Thumb-2
  2ea644: b510         	push	{r4, lr}
  2ea646: b082         	sub	sp, #0x8
  2ea648: 9001         	str	r0, [sp, #0x4]
  2ea64a: 4c19         	ldr	r4, [pc, #0x64]         @ 0x2ea6b0 <HeadTableView::HeadTableView()+0x6c>
  2ea64c: 447c         	add	r4, pc
  2ea64e: 9b01         	ldr	r3, [sp, #0x4]
  2ea650: 4618         	mov	r0, r3
  2ea652: f086 fb25    	bl	0x370ca0 <MenuTableView::MenuTableView()> @ imm = #0x8664a
  2ea656: 9b01         	ldr	r3, [sp, #0x4]
  2ea658: 4a16         	ldr	r2, [pc, #0x58]         @ 0x2ea6b4 <HeadTableView::HeadTableView()+0x70>
  2ea65a: 58a2         	ldr	r2, [r4, r2]
  2ea65c: 3208         	adds	r2, #0x8
  2ea65e: 601a         	str	r2, [r3]
  2ea660: 9b01         	ldr	r3, [sp, #0x4]
  2ea662: 4a14         	ldr	r2, [pc, #0x50]         @ 0x2ea6b4 <HeadTableView::HeadTableView()+0x70>
  2ea664: 58a2         	ldr	r2, [r4, r2]
  2ea666: f502 720b    	add.w	r2, r2, #0x22c
  2ea66a: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  2ea66e: 9b01         	ldr	r3, [sp, #0x4]
  2ea670: 4a10         	ldr	r2, [pc, #0x40]         @ 0x2ea6b4 <HeadTableView::HeadTableView()+0x70>
  2ea672: 58a2         	ldr	r2, [r4, r2]
  2ea674: f502 7217    	add.w	r2, r2, #0x25c
  2ea678: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  2ea67c: 9b01         	ldr	r3, [sp, #0x4]
  2ea67e: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x2ea6b4 <HeadTableView::HeadTableView()+0x70>
  2ea680: 58a2         	ldr	r2, [r4, r2]
  2ea682: f502 721a    	add.w	r2, r2, #0x268
  2ea686: f8c3 20ec    	str.w	r2, [r3, #0xec]
  2ea68a: 9b01         	ldr	r3, [sp, #0x4]
  2ea68c: 4a09         	ldr	r2, [pc, #0x24]         @ 0x2ea6b4 <HeadTableView::HeadTableView()+0x70>
  2ea68e: 58a2         	ldr	r2, [r4, r2]
  2ea690: f502 721e    	add.w	r2, r2, #0x278
  2ea694: f8c3 2198    	str.w	r2, [r3, #0x198]
  2ea698: 9b01         	ldr	r3, [sp, #0x4]
  2ea69a: 4a06         	ldr	r2, [pc, #0x18]         @ 0x2ea6b4 <HeadTableView::HeadTableView()+0x70>
  2ea69c: 58a2         	ldr	r2, [r4, r2]
  2ea69e: f502 7224    	add.w	r2, r2, #0x290
  2ea6a2: f8c3 21c8    	str.w	r2, [r3, #0x1c8]
  2ea6a6: 9b01         	ldr	r3, [sp, #0x4]
  2ea6a8: 4618         	mov	r0, r3
  2ea6aa: b002         	add	sp, #0x8
  2ea6ac: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2ea6ad); words below are literal-pool data ---
  2ea6ae: bf00         	nop
  2ea6b0: 83bc         	strh	r4, [r7, #0x1c]
  2ea6b2: 0064         	lsls	r4, r4, #0x1
  2ea6b4: d850         	bhi	0x2ea758 <HairColorTableView::HairColorTableView()+0x2c> @ imm = #0xa0
  2ea6b6: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== HeadTableView::numberOfCellsInTableView
//      file offset 0x2f9a38 (= ELF address; Ghidra 0x309a38), 14 bytes, Thumb-2
  2f9a38: b082         	sub	sp, #0x8
  2f9a3a: 9001         	str	r0, [sp, #0x4]
  2f9a3c: 9100         	str	r1, [sp]
  2f9a3e: 2303         	movs	r3, #0x3
  2f9a40: 4618         	mov	r0, r3
  2f9a42: b002         	add	sp, #0x8
  2f9a44: 4770         	bx	lr

// ==== HeadTableView::numberOfCellsInTableView
//      file offset 0x2f9a48 (= ELF address; Ghidra 0x309a48), 8 bytes, Thumb-2
  2f9a48: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2f9a4c: f7ff bff4    	b.w	0x2f9a38 <HeadTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*)> @ imm = #-0x18

// ==== HeadTableView::getIdentifier
//      file offset 0x2f9a50 (= ELF address; Ghidra 0x309a50), 68 bytes, Thumb-2
  2f9a50: b500         	push	{lr}
  2f9a52: b085         	sub	sp, #0x14
  2f9a54: 9001         	str	r0, [sp, #0x4]
  2f9a56: 9100         	str	r1, [sp]
  2f9a58: ab03         	add	r3, sp, #0xc
  2f9a5a: 4618         	mov	r0, r3
  2f9a5c: f090 f4ca    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x490994
  2f9a60: ab03         	add	r3, sp, #0xc
  2f9a62: 9801         	ldr	r0, [sp, #0x4]
  2f9a64: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x2f9a90 <HeadTableView::getIdentifier()+0x40>
  2f9a66: 447a         	add	r2, pc
  2f9a68: 4611         	mov	r1, r2
  2f9a6a: 461a         	mov	r2, r3
  2f9a6c: f0bc f7f8    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4bcff0
  2f9a70: ab03         	add	r3, sp, #0xc
  2f9a72: 4618         	mov	r0, r3
  2f9a74: f090 f4c2    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x490984
  2f9a78: e005         	b	0x2f9a86 <HeadTableView::getIdentifier()+0x36> @ imm = #0xa
  2f9a7a: ab03         	add	r3, sp, #0xc
  2f9a7c: 4618         	mov	r0, r3
  2f9a7e: f090 f4bd    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x49097a
  2f9a82: f08e f313    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48e626
  2f9a86: 9801         	ldr	r0, [sp, #0x4]
  2f9a88: b005         	add	sp, #0x14
  2f9a8a: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2f9a8d); words below are literal-pool data ---
  2f9a8e: bf00         	nop
  2f9a90: ad1e         	add	r5, sp, #0x78
  2f9a92: 004c         	lsls	r4, r1, #0x1

// ==== HeadTableView::tableCellAtIndex
//      file offset 0x2f9a94 (= ELF address; Ghidra 0x309a94), 332 bytes, Thumb-2
  2f9a94: b510         	push	{r4, lr}
  2f9a96: b090         	sub	sp, #0x40
  2f9a98: 9003         	str	r0, [sp, #0xc]
  2f9a9a: 9102         	str	r1, [sp, #0x8]
  2f9a9c: 9201         	str	r2, [sp, #0x4]
  2f9a9e: 9802         	ldr	r0, [sp, #0x8]
  2f9aa0: f159 feba    	bl	0x453818 <cocos2d::extension::CCTableView::dequeueCell()> @ imm = #0x159d74
  2f9aa4: 4603         	mov	r3, r0
  2f9aa6: 9305         	str	r3, [sp, #0x14]
  2f9aa8: 9b05         	ldr	r3, [sp, #0x14]
  2f9aaa: 2b00         	cmp	r3, #0x0
  2f9aac: d006         	beq	0x2f9abc <HeadTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x28> @ imm = #0xc
  2f9aae: 9805         	ldr	r0, [sp, #0x14]
  2f9ab0: f15c fa9c    	bl	0x455fec <cocos2d::extension::CCTableViewCell::getIdx()> @ imm = #0x15c538
  2f9ab4: 4602         	mov	r2, r0
  2f9ab6: 9b01         	ldr	r3, [sp, #0x4]
  2f9ab8: 429a         	cmp	r2, r3
  2f9aba: d001         	beq	0x2f9ac0 <HeadTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x2c> @ imm = #0x2
  2f9abc: 2301         	movs	r3, #0x1
  2f9abe: e000         	b	0x2f9ac2 <HeadTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x2e> @ imm = #0x0
  2f9ac0: 2300         	movs	r3, #0x0
  2f9ac2: 2b00         	cmp	r3, #0x0
  2f9ac4: d07d         	beq	0x2f9bc2 <HeadTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x12e> @ imm = #0xfa
  2f9ac6: 20ec         	movs	r0, #0xec
  2f9ac8: f08d f74c    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x48de98
  2f9acc: 4603         	mov	r3, r0
  2f9ace: 461c         	mov	r4, r3
  2f9ad0: 4620         	mov	r0, r4
  2f9ad2: f7ff fc73    	bl	0x2f93bc <cocos2d::extension::CCTableViewCell::CCTableViewCell()> @ imm = #-0x71a
  2f9ad6: 9405         	str	r4, [sp, #0x14]
  2f9ad8: 9b05         	ldr	r3, [sp, #0x14]
  2f9ada: 4618         	mov	r0, r3
  2f9adc: f29e fa0e    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x29e41c
  2f9ae0: 9b03         	ldr	r3, [sp, #0xc]
  2f9ae2: 681b         	ldr	r3, [r3]
  2f9ae4: f503 7306    	add.w	r3, r3, #0x218
  2f9ae8: 681c         	ldr	r4, [r3]
  2f9aea: ab08         	add	r3, sp, #0x20
  2f9aec: 4618         	mov	r0, r3
  2f9aee: 9903         	ldr	r1, [sp, #0xc]
  2f9af0: 9a02         	ldr	r2, [sp, #0x8]
  2f9af2: 9b01         	ldr	r3, [sp, #0x4]
  2f9af4: 47a0         	blx	r4
  2f9af6: ed9d 7a08    	vldr	s14, [sp, #32]
  2f9afa: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2f9afe: eec7 6a27    	vdiv.f32	s13, s14, s15
  2f9b02: ed9d 7a09    	vldr	s14, [sp, #36]
  2f9b06: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2f9b0a: eec7 7a27    	vdiv.f32	s15, s14, s15
  2f9b0e: ab0a         	add	r3, sp, #0x28
  2f9b10: 4618         	mov	r0, r3
  2f9b12: ee16 1a90    	vmov	r1, s13
  2f9b16: ee17 2a90    	vmov	r2, s15
  2f9b1a: f299 f8e9    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2991d2
  2f9b1e: f7f9 ffcb    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x606a
  2f9b22: 4602         	mov	r2, r0
  2f9b24: 9b01         	ldr	r3, [sp, #0x4]
  2f9b26: 330e         	adds	r3, #0xe
  2f9b28: 011b         	lsls	r3, r3, #0x4
  2f9b2a: 4413         	add	r3, r2
  2f9b2c: 3304         	adds	r3, #0x4
  2f9b2e: aa0c         	add	r2, sp, #0x30
  2f9b30: 4610         	mov	r0, r2
  2f9b32: 4619         	mov	r1, r3
  2f9b34: f299 fbf0    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x2997e0
  2f9b38: ab0c         	add	r3, sp, #0x30
  2f9b3a: 4a27         	ldr	r2, [pc, #0x9c]         @ 0x2f9bd8 <HeadTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x144>
  2f9b3c: 447a         	add	r2, pc
  2f9b3e: 4610         	mov	r0, r2
  2f9b40: 4619         	mov	r1, r3
  2f9b42: f2de fb5d    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2de6ba
  2f9b46: 4603         	mov	r3, r0
  2f9b48: 9306         	str	r3, [sp, #0x18]
  2f9b4a: 9b06         	ldr	r3, [sp, #0x18]
  2f9b4c: 681b         	ldr	r3, [r3]
  2f9b4e: f503 73fa    	add.w	r3, r3, #0x1f4
  2f9b52: 681b         	ldr	r3, [r3]
  2f9b54: 9806         	ldr	r0, [sp, #0x18]
  2f9b56: 4798         	blx	r3
  2f9b58: 4603         	mov	r3, r0
  2f9b5a: 4618         	mov	r0, r3
  2f9b5c: f2f8 fa12    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2f8424
  2f9b60: 9b06         	ldr	r3, [sp, #0x18]
  2f9b62: 681b         	ldr	r3, [r3]
  2f9b64: 334c         	adds	r3, #0x4c
  2f9b66: 681b         	ldr	r3, [r3]
  2f9b68: aa0a         	add	r2, sp, #0x28
  2f9b6a: 9806         	ldr	r0, [sp, #0x18]
  2f9b6c: 4611         	mov	r1, r2
  2f9b6e: 4798         	blx	r3
  2f9b70: 4b1a         	ldr	r3, [pc, #0x68]         @ 0x2f9bdc <HeadTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x148>
  2f9b72: 447b         	add	r3, pc
  2f9b74: 4618         	mov	r0, r3
  2f9b76: f2de fbc5    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2de78a
  2f9b7a: 4603         	mov	r3, r0
  2f9b7c: 9307         	str	r3, [sp, #0x1c]
  2f9b7e: 9b07         	ldr	r3, [sp, #0x1c]
  2f9b80: 681b         	ldr	r3, [r3]
  2f9b82: 334c         	adds	r3, #0x4c
  2f9b84: 681b         	ldr	r3, [r3]
  2f9b86: aa0a         	add	r2, sp, #0x28
  2f9b88: 9807         	ldr	r0, [sp, #0x1c]
  2f9b8a: 4611         	mov	r1, r2
  2f9b8c: 4798         	blx	r3
  2f9b8e: 9b07         	ldr	r3, [sp, #0x1c]
  2f9b90: 681b         	ldr	r3, [r3]
  2f9b92: 3340         	adds	r3, #0x40
  2f9b94: 681b         	ldr	r3, [r3]
  2f9b96: 9807         	ldr	r0, [sp, #0x1c]
  2f9b98: f649 119a    	movw	r1, #0x999a
  2f9b9c: f6c3 7119    	movt	r1, #0x3f19
  2f9ba0: 4798         	blx	r3
  2f9ba2: 9b05         	ldr	r3, [sp, #0x14]
  2f9ba4: 681b         	ldr	r3, [r3]
  2f9ba6: 33c8         	adds	r3, #0xc8
  2f9ba8: 681b         	ldr	r3, [r3]
  2f9baa: 9a05         	ldr	r2, [sp, #0x14]
  2f9bac: 4610         	mov	r0, r2
  2f9bae: 9907         	ldr	r1, [sp, #0x1c]
  2f9bb0: 4798         	blx	r3
  2f9bb2: 9b05         	ldr	r3, [sp, #0x14]
  2f9bb4: 681b         	ldr	r3, [r3]
  2f9bb6: 33c8         	adds	r3, #0xc8
  2f9bb8: 681b         	ldr	r3, [r3]
  2f9bba: 9a05         	ldr	r2, [sp, #0x14]
  2f9bbc: 4610         	mov	r0, r2
  2f9bbe: 9906         	ldr	r1, [sp, #0x18]
  2f9bc0: 4798         	blx	r3
  2f9bc2: 9b05         	ldr	r3, [sp, #0x14]
  2f9bc4: e004         	b	0x2f9bd0 <HeadTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x13c> @ imm = #0x8
  2f9bc6: 4620         	mov	r0, r4
  2f9bc8: f08e f26c    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48e4d8
  2f9bcc: f08e f26e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48e4dc
  2f9bd0: 4618         	mov	r0, r3
  2f9bd2: b010         	add	sp, #0x40
  2f9bd4: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2f9bd5); words below are literal-pool data ---
  2f9bd6: bf00         	nop
  2f9bd8: abf4         	add	r3, sp, #0x3d0
  2f9bda: 004c         	lsls	r4, r1, #0x1
  2f9bdc: abd2         	add	r3, sp, #0x348
  2f9bde: 004c         	lsls	r4, r1, #0x1

// ==== HeadTableView::tableCellAtIndex
//      file offset 0x2f9be0 (= ELF address; Ghidra 0x309be0), 8 bytes, Thumb-2
  2f9be0: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2f9be4: f7ff bf56    	b.w	0x2f9a94 <HeadTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)> @ imm = #-0x154

// ==== HeadTableView::tableCellSizeForIndex
//      file offset 0x2f9be8 (= ELF address; Ghidra 0x309be8), 54 bytes, Thumb-2
  2f9be8: b500         	push	{lr}
  2f9bea: b085         	sub	sp, #0x14
  2f9bec: 9003         	str	r0, [sp, #0xc]
  2f9bee: 9102         	str	r1, [sp, #0x8]
  2f9bf0: 9201         	str	r2, [sp, #0x4]
  2f9bf2: 9300         	str	r3, [sp]
  2f9bf4: 9b01         	ldr	r3, [sp, #0x4]
  2f9bf6: 681b         	ldr	r3, [r3]
  2f9bf8: 338c         	adds	r3, #0x8c
  2f9bfa: 681b         	ldr	r3, [r3]
  2f9bfc: 9a01         	ldr	r2, [sp, #0x4]
  2f9bfe: 4610         	mov	r0, r2
  2f9c00: 4798         	blx	r3
  2f9c02: 4603         	mov	r3, r0
  2f9c04: 681b         	ldr	r3, [r3]
  2f9c06: 9803         	ldr	r0, [sp, #0xc]
  2f9c08: 4619         	mov	r1, r3
  2f9c0a: f04f 0200    	mov.w	r2, #0x0
  2f9c0e: f2c4 228c    	movt	r2, #0x428c
  2f9c12: f299 fa3f    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x29947e
  2f9c16: 9803         	ldr	r0, [sp, #0xc]
  2f9c18: b005         	add	sp, #0x14
  2f9c1a: f85d fb04    	ldr	pc, [sp], #4

// ==== HeadTableView::tableCellSizeForIndex
//      file offset 0x2f9c20 (= ELF address; Ghidra 0x309c20), 8 bytes, Thumb-2
  2f9c20: f5a1 71e4    	sub.w	r1, r1, #0x1c8
  2f9c24: f7ff bfe0    	b.w	0x2f9be8 <HeadTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int)> @ imm = #-0x40

// ==== HeadTableView::~HeadTableView
//      file offset 0x2fca78 (= ELF address; Ghidra 0x30ca78), 128 bytes, Thumb-2
  2fca78: b500         	push	{lr}
  2fca7a: b083         	sub	sp, #0xc
  2fca7c: 9001         	str	r0, [sp, #0x4]
  2fca7e: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x2fcaf0 <HeadTableView::~HeadTableView()+0x78>
  2fca80: 447b         	add	r3, pc
  2fca82: 9a01         	ldr	r2, [sp, #0x4]
  2fca84: 491b         	ldr	r1, [pc, #0x6c]         @ 0x2fcaf4 <HeadTableView::~HeadTableView()+0x7c>
  2fca86: 5859         	ldr	r1, [r3, r1]
  2fca88: 3108         	adds	r1, #0x8
  2fca8a: 6011         	str	r1, [r2]
  2fca8c: 9a01         	ldr	r2, [sp, #0x4]
  2fca8e: 4919         	ldr	r1, [pc, #0x64]         @ 0x2fcaf4 <HeadTableView::~HeadTableView()+0x7c>
  2fca90: 5859         	ldr	r1, [r3, r1]
  2fca92: f501 710b    	add.w	r1, r1, #0x22c
  2fca96: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  2fca9a: 9a01         	ldr	r2, [sp, #0x4]
  2fca9c: 4915         	ldr	r1, [pc, #0x54]         @ 0x2fcaf4 <HeadTableView::~HeadTableView()+0x7c>
  2fca9e: 5859         	ldr	r1, [r3, r1]
  2fcaa0: f501 7117    	add.w	r1, r1, #0x25c
  2fcaa4: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  2fcaa8: 9a01         	ldr	r2, [sp, #0x4]
  2fcaaa: 4912         	ldr	r1, [pc, #0x48]         @ 0x2fcaf4 <HeadTableView::~HeadTableView()+0x7c>
  2fcaac: 5859         	ldr	r1, [r3, r1]
  2fcaae: f501 711a    	add.w	r1, r1, #0x268
  2fcab2: f8c2 10ec    	str.w	r1, [r2, #0xec]
  2fcab6: 9a01         	ldr	r2, [sp, #0x4]
  2fcab8: 490e         	ldr	r1, [pc, #0x38]         @ 0x2fcaf4 <HeadTableView::~HeadTableView()+0x7c>
  2fcaba: 5859         	ldr	r1, [r3, r1]
  2fcabc: f501 711e    	add.w	r1, r1, #0x278
  2fcac0: f8c2 1198    	str.w	r1, [r2, #0x198]
  2fcac4: 9a01         	ldr	r2, [sp, #0x4]
  2fcac6: 490b         	ldr	r1, [pc, #0x2c]         @ 0x2fcaf4 <HeadTableView::~HeadTableView()+0x7c>
  2fcac8: 585b         	ldr	r3, [r3, r1]
  2fcaca: f503 7324    	add.w	r3, r3, #0x290
  2fcace: f8c2 31c8    	str.w	r3, [r2, #0x1c8]
  2fcad2: 9b01         	ldr	r3, [sp, #0x4]
  2fcad4: 4618         	mov	r0, r3
  2fcad6: f7ff f89d    	bl	0x2fbc14 <MenuTableView::~MenuTableView()> @ imm = #-0xec6
  2fcada: 2300         	movs	r3, #0x0
  2fcadc: 2b00         	cmp	r3, #0x0
  2fcade: d002         	beq	0x2fcae6 <HeadTableView::~HeadTableView()+0x6e> @ imm = #0x4
  2fcae0: 9801         	ldr	r0, [sp, #0x4]
  2fcae2: f08b f2df    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48b5be
  2fcae6: 9b01         	ldr	r3, [sp, #0x4]
  2fcae8: 4618         	mov	r0, r3
  2fcaea: b003         	add	sp, #0xc
  2fcaec: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2fcaef); words below are literal-pool data ---
  2fcaf0: 5f88         	ldrsh	r0, [r1, r6]
  2fcaf2: 0063         	lsls	r3, r4, #0x1
  2fcaf4: d850         	bhi	0x2fcb98 <SkinColorTableView::~SkinColorTableView()+0x54> @ imm = #0xa0
  2fcaf6: ffff f5a0    	<unknown>

// ==== HeadTableView::~HeadTableView
//      file offset 0x2fcaf8 (= ELF address; Ghidra 0x30caf8), 8 bytes, Thumb-2
  2fcaf8: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fcafc: f7ff bfbc    	b.w	0x2fca78 <HeadTableView::~HeadTableView()> @ imm = #-0x88

// ==== HeadTableView::~HeadTableView
//      file offset 0x2fcb00 (= ELF address; Ghidra 0x30cb00), 8 bytes, Thumb-2
  2fcb00: f5a0 70cc    	sub.w	r0, r0, #0x198
  2fcb04: f7ff bfb8    	b.w	0x2fca78 <HeadTableView::~HeadTableView()> @ imm = #-0x90

// ==== HeadTableView::~HeadTableView
//      file offset 0x2fcb08 (= ELF address; Ghidra 0x30cb08), 8 bytes, Thumb-2
  2fcb08: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2fcb0c: f7ff bfb4    	b.w	0x2fca78 <HeadTableView::~HeadTableView()> @ imm = #-0x98

// ==== HeadTableView::~HeadTableView
//      file offset 0x2fcb10 (= ELF address; Ghidra 0x30cb10), 28 bytes, Thumb-2
  2fcb10: b500         	push	{lr}
  2fcb12: b083         	sub	sp, #0xc
  2fcb14: 9001         	str	r0, [sp, #0x4]
  2fcb16: 9801         	ldr	r0, [sp, #0x4]
  2fcb18: f7ff ffae    	bl	0x2fca78 <HeadTableView::~HeadTableView()> @ imm = #-0xa4
  2fcb1c: 9801         	ldr	r0, [sp, #0x4]
  2fcb1e: f08b f2c1    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48b582
  2fcb22: 9b01         	ldr	r3, [sp, #0x4]
  2fcb24: 4618         	mov	r0, r3
  2fcb26: b003         	add	sp, #0xc
  2fcb28: f85d fb04    	ldr	pc, [sp], #4

// ==== HeadTableView::~HeadTableView
//      file offset 0x2fcb2c (= ELF address; Ghidra 0x30cb2c), 6 bytes, Thumb-2
  2fcb2c: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fcb30: e7ee         	b	0x2fcb10 <HeadTableView::~HeadTableView()> @ imm = #-0x24

// ==== HeadTableView::~HeadTableView
//      file offset 0x2fcb34 (= ELF address; Ghidra 0x30cb34), 6 bytes, Thumb-2
  2fcb34: f5a0 70cc    	sub.w	r0, r0, #0x198
  2fcb38: e7ea         	b	0x2fcb10 <HeadTableView::~HeadTableView()> @ imm = #-0x2c

// ==== HeadTableView::~HeadTableView
//      file offset 0x2fcb3c (= ELF address; Ghidra 0x30cb3c), 6 bytes, Thumb-2
  2fcb3c: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2fcb40: e7e6         	b	0x2fcb10 <HeadTableView::~HeadTableView()> @ imm = #-0x34
