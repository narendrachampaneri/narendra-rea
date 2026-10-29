// EyeTableView: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 16 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../EyeTableView.cpp

// ==== EyeTableView::EyeTableView
//      file offset 0x2ea814 (= ELF address; Ghidra 0x2fa814), 116 bytes, Thumb-2
  2ea814: b510         	push	{r4, lr}
  2ea816: b082         	sub	sp, #0x8
  2ea818: 9001         	str	r0, [sp, #0x4]
  2ea81a: 4c19         	ldr	r4, [pc, #0x64]         @ 0x2ea880 <EyeTableView::EyeTableView()+0x6c>
  2ea81c: 447c         	add	r4, pc
  2ea81e: 9b01         	ldr	r3, [sp, #0x4]
  2ea820: 4618         	mov	r0, r3
  2ea822: f086 fa3d    	bl	0x370ca0 <MenuTableView::MenuTableView()> @ imm = #0x8647a
  2ea826: 9b01         	ldr	r3, [sp, #0x4]
  2ea828: 4a16         	ldr	r2, [pc, #0x58]         @ 0x2ea884 <EyeTableView::EyeTableView()+0x70>
  2ea82a: 58a2         	ldr	r2, [r4, r2]
  2ea82c: 3208         	adds	r2, #0x8
  2ea82e: 601a         	str	r2, [r3]
  2ea830: 9b01         	ldr	r3, [sp, #0x4]
  2ea832: 4a14         	ldr	r2, [pc, #0x50]         @ 0x2ea884 <EyeTableView::EyeTableView()+0x70>
  2ea834: 58a2         	ldr	r2, [r4, r2]
  2ea836: f502 720b    	add.w	r2, r2, #0x22c
  2ea83a: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  2ea83e: 9b01         	ldr	r3, [sp, #0x4]
  2ea840: 4a10         	ldr	r2, [pc, #0x40]         @ 0x2ea884 <EyeTableView::EyeTableView()+0x70>
  2ea842: 58a2         	ldr	r2, [r4, r2]
  2ea844: f502 7217    	add.w	r2, r2, #0x25c
  2ea848: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  2ea84c: 9b01         	ldr	r3, [sp, #0x4]
  2ea84e: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x2ea884 <EyeTableView::EyeTableView()+0x70>
  2ea850: 58a2         	ldr	r2, [r4, r2]
  2ea852: f502 721a    	add.w	r2, r2, #0x268
  2ea856: f8c3 20ec    	str.w	r2, [r3, #0xec]
  2ea85a: 9b01         	ldr	r3, [sp, #0x4]
  2ea85c: 4a09         	ldr	r2, [pc, #0x24]         @ 0x2ea884 <EyeTableView::EyeTableView()+0x70>
  2ea85e: 58a2         	ldr	r2, [r4, r2]
  2ea860: f502 721e    	add.w	r2, r2, #0x278
  2ea864: f8c3 2198    	str.w	r2, [r3, #0x198]
  2ea868: 9b01         	ldr	r3, [sp, #0x4]
  2ea86a: 4a06         	ldr	r2, [pc, #0x18]         @ 0x2ea884 <EyeTableView::EyeTableView()+0x70>
  2ea86c: 58a2         	ldr	r2, [r4, r2]
  2ea86e: f502 7224    	add.w	r2, r2, #0x290
  2ea872: f8c3 21c8    	str.w	r2, [r3, #0x1c8]
  2ea876: 9b01         	ldr	r3, [sp, #0x4]
  2ea878: 4618         	mov	r0, r3
  2ea87a: b002         	add	sp, #0x8
  2ea87c: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2ea87d); words below are literal-pool data ---
  2ea87e: bf00         	nop
  2ea880: 81ec         	strh	r4, [r5, #0xe]
  2ea882: 0064         	lsls	r4, r4, #0x1
  2ea884: d860         	bhi	0x2ea948 <HairTableView::HairTableView()+0x4c> @ imm = #0xc0
  2ea886: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== EyeTableView::numberOfCellsInTableView
//      file offset 0x2f9c28 (= ELF address; Ghidra 0x309c28), 14 bytes, Thumb-2
  2f9c28: b082         	sub	sp, #0x8
  2f9c2a: 9001         	str	r0, [sp, #0x4]
  2f9c2c: 9100         	str	r1, [sp]
  2f9c2e: 2311         	movs	r3, #0x11
  2f9c30: 4618         	mov	r0, r3
  2f9c32: b002         	add	sp, #0x8
  2f9c34: 4770         	bx	lr

// ==== EyeTableView::numberOfCellsInTableView
//      file offset 0x2f9c38 (= ELF address; Ghidra 0x309c38), 8 bytes, Thumb-2
  2f9c38: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2f9c3c: f7ff bff4    	b.w	0x2f9c28 <EyeTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*)> @ imm = #-0x18

// ==== EyeTableView::getIdentifier
//      file offset 0x2f9c40 (= ELF address; Ghidra 0x309c40), 68 bytes, Thumb-2
  2f9c40: b500         	push	{lr}
  2f9c42: b085         	sub	sp, #0x14
  2f9c44: 9001         	str	r0, [sp, #0x4]
  2f9c46: 9100         	str	r1, [sp]
  2f9c48: ab03         	add	r3, sp, #0xc
  2f9c4a: 4618         	mov	r0, r3
  2f9c4c: f090 f3d2    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4907a4
  2f9c50: ab03         	add	r3, sp, #0xc
  2f9c52: 9801         	ldr	r0, [sp, #0x4]
  2f9c54: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x2f9c80 <EyeTableView::getIdentifier()+0x40>
  2f9c56: 447a         	add	r2, pc
  2f9c58: 4611         	mov	r1, r2
  2f9c5a: 461a         	mov	r2, r3
  2f9c5c: f0bc f700    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4bce00
  2f9c60: ab03         	add	r3, sp, #0xc
  2f9c62: 4618         	mov	r0, r3
  2f9c64: f090 f3ca    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x490794
  2f9c68: e005         	b	0x2f9c76 <EyeTableView::getIdentifier()+0x36> @ imm = #0xa
  2f9c6a: ab03         	add	r3, sp, #0xc
  2f9c6c: 4618         	mov	r0, r3
  2f9c6e: f090 f3c5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x49078a
  2f9c72: f08e f21b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48e436
  2f9c76: 9801         	ldr	r0, [sp, #0x4]
  2f9c78: b005         	add	sp, #0x14
  2f9c7a: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2f9c7d); words below are literal-pool data ---
  2f9c7e: bf00         	nop
  2f9c80: ab36         	add	r3, sp, #0xd8
  2f9c82: 004c         	lsls	r4, r1, #0x1

// ==== EyeTableView::tableCellAtIndex
//      file offset 0x2f9c84 (= ELF address; Ghidra 0x309c84), 352 bytes, Thumb-2
  2f9c84: b510         	push	{r4, lr}
  2f9c86: b090         	sub	sp, #0x40
  2f9c88: 9003         	str	r0, [sp, #0xc]
  2f9c8a: 9102         	str	r1, [sp, #0x8]
  2f9c8c: 9201         	str	r2, [sp, #0x4]
  2f9c8e: 9802         	ldr	r0, [sp, #0x8]
  2f9c90: f159 fdc2    	bl	0x453818 <cocos2d::extension::CCTableView::dequeueCell()> @ imm = #0x159b84
  2f9c94: 4603         	mov	r3, r0
  2f9c96: 9305         	str	r3, [sp, #0x14]
  2f9c98: 9b05         	ldr	r3, [sp, #0x14]
  2f9c9a: 2b00         	cmp	r3, #0x0
  2f9c9c: d006         	beq	0x2f9cac <EyeTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x28> @ imm = #0xc
  2f9c9e: 9805         	ldr	r0, [sp, #0x14]
  2f9ca0: f15c f9a4    	bl	0x455fec <cocos2d::extension::CCTableViewCell::getIdx()> @ imm = #0x15c348
  2f9ca4: 4602         	mov	r2, r0
  2f9ca6: 9b01         	ldr	r3, [sp, #0x4]
  2f9ca8: 429a         	cmp	r2, r3
  2f9caa: d001         	beq	0x2f9cb0 <EyeTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x2c> @ imm = #0x2
  2f9cac: 2301         	movs	r3, #0x1
  2f9cae: e000         	b	0x2f9cb2 <EyeTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x2e> @ imm = #0x0
  2f9cb0: 2300         	movs	r3, #0x0
  2f9cb2: 2b00         	cmp	r3, #0x0
  2f9cb4: f000 8088    	beq.w	0x2f9dc8 <EyeTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x144> @ imm = #0x110
  2f9cb8: 20ec         	movs	r0, #0xec
  2f9cba: f08d f653    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x48dca6
  2f9cbe: 4603         	mov	r3, r0
  2f9cc0: 461c         	mov	r4, r3
  2f9cc2: 4620         	mov	r0, r4
  2f9cc4: f7ff fb7a    	bl	0x2f93bc <cocos2d::extension::CCTableViewCell::CCTableViewCell()> @ imm = #-0x90c
  2f9cc8: 9405         	str	r4, [sp, #0x14]
  2f9cca: 9b05         	ldr	r3, [sp, #0x14]
  2f9ccc: 4618         	mov	r0, r3
  2f9cce: f29e f915    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x29e22a
  2f9cd2: 9b03         	ldr	r3, [sp, #0xc]
  2f9cd4: 681b         	ldr	r3, [r3]
  2f9cd6: f503 7306    	add.w	r3, r3, #0x218
  2f9cda: 681c         	ldr	r4, [r3]
  2f9cdc: ab08         	add	r3, sp, #0x20
  2f9cde: 4618         	mov	r0, r3
  2f9ce0: 9903         	ldr	r1, [sp, #0xc]
  2f9ce2: 9a02         	ldr	r2, [sp, #0x8]
  2f9ce4: 9b01         	ldr	r3, [sp, #0x4]
  2f9ce6: 47a0         	blx	r4
  2f9ce8: ed9d 7a08    	vldr	s14, [sp, #32]
  2f9cec: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2f9cf0: eec7 6a27    	vdiv.f32	s13, s14, s15
  2f9cf4: ed9d 7a09    	vldr	s14, [sp, #36]
  2f9cf8: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2f9cfc: eec7 7a27    	vdiv.f32	s15, s14, s15
  2f9d00: ab0a         	add	r3, sp, #0x28
  2f9d02: 4618         	mov	r0, r3
  2f9d04: ee16 1a90    	vmov	r1, s13
  2f9d08: ee17 2a90    	vmov	r2, s15
  2f9d0c: f298 fff0    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x298fe0
  2f9d10: f7f9 fed2    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x625c
  2f9d14: 4602         	mov	r2, r0
  2f9d16: 9b01         	ldr	r3, [sp, #0x4]
  2f9d18: 3311         	adds	r3, #0x11
  2f9d1a: 011b         	lsls	r3, r3, #0x4
  2f9d1c: 4413         	add	r3, r2
  2f9d1e: 3304         	adds	r3, #0x4
  2f9d20: aa0c         	add	r2, sp, #0x30
  2f9d22: 4610         	mov	r0, r2
  2f9d24: 4619         	mov	r1, r3
  2f9d26: f299 faf7    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x2995ee
  2f9d2a: ab0c         	add	r3, sp, #0x30
  2f9d2c: 4a2b         	ldr	r2, [pc, #0xac]         @ 0x2f9ddc <EyeTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x158>
  2f9d2e: 447a         	add	r2, pc
  2f9d30: 4610         	mov	r0, r2
  2f9d32: 4619         	mov	r1, r3
  2f9d34: f2de fa64    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2de4c8
  2f9d38: 4603         	mov	r3, r0
  2f9d3a: 9306         	str	r3, [sp, #0x18]
  2f9d3c: 9b06         	ldr	r3, [sp, #0x18]
  2f9d3e: 681b         	ldr	r3, [r3]
  2f9d40: f503 73fa    	add.w	r3, r3, #0x1f4
  2f9d44: 681b         	ldr	r3, [r3]
  2f9d46: 9806         	ldr	r0, [sp, #0x18]
  2f9d48: 4798         	blx	r3
  2f9d4a: 4603         	mov	r3, r0
  2f9d4c: 4618         	mov	r0, r3
  2f9d4e: f2f8 f919    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2f8232
  2f9d52: 9b06         	ldr	r3, [sp, #0x18]
  2f9d54: 681b         	ldr	r3, [r3]
  2f9d56: 334c         	adds	r3, #0x4c
  2f9d58: 681b         	ldr	r3, [r3]
  2f9d5a: aa0a         	add	r2, sp, #0x28
  2f9d5c: 9806         	ldr	r0, [sp, #0x18]
  2f9d5e: 4611         	mov	r1, r2
  2f9d60: 4798         	blx	r3
  2f9d62: 4b1f         	ldr	r3, [pc, #0x7c]         @ 0x2f9de0 <EyeTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x15c>
  2f9d64: 447b         	add	r3, pc
  2f9d66: 4618         	mov	r0, r3
  2f9d68: f2de facc    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2de598
  2f9d6c: 4603         	mov	r3, r0
  2f9d6e: 9307         	str	r3, [sp, #0x1c]
  2f9d70: 9b06         	ldr	r3, [sp, #0x18]
  2f9d72: 681b         	ldr	r3, [r3]
  2f9d74: 3340         	adds	r3, #0x40
  2f9d76: 681b         	ldr	r3, [r3]
  2f9d78: 9806         	ldr	r0, [sp, #0x18]
  2f9d7a: f04f 0100    	mov.w	r1, #0x0
  2f9d7e: f6c3 71a0    	movt	r1, #0x3fa0
  2f9d82: 4798         	blx	r3
  2f9d84: 9b07         	ldr	r3, [sp, #0x1c]
  2f9d86: 681b         	ldr	r3, [r3]
  2f9d88: 334c         	adds	r3, #0x4c
  2f9d8a: 681b         	ldr	r3, [r3]
  2f9d8c: aa0a         	add	r2, sp, #0x28
  2f9d8e: 9807         	ldr	r0, [sp, #0x1c]
  2f9d90: 4611         	mov	r1, r2
  2f9d92: 4798         	blx	r3
  2f9d94: 9b07         	ldr	r3, [sp, #0x1c]
  2f9d96: 681b         	ldr	r3, [r3]
  2f9d98: 3340         	adds	r3, #0x40
  2f9d9a: 681b         	ldr	r3, [r3]
  2f9d9c: 9807         	ldr	r0, [sp, #0x1c]
  2f9d9e: f64c 41cd    	movw	r1, #0xcccd
  2f9da2: f6c3 61cc    	movt	r1, #0x3ecc
  2f9da6: 4798         	blx	r3
  2f9da8: 9b05         	ldr	r3, [sp, #0x14]
  2f9daa: 681b         	ldr	r3, [r3]
  2f9dac: 33c8         	adds	r3, #0xc8
  2f9dae: 681b         	ldr	r3, [r3]
  2f9db0: 9a05         	ldr	r2, [sp, #0x14]
  2f9db2: 4610         	mov	r0, r2
  2f9db4: 9907         	ldr	r1, [sp, #0x1c]
  2f9db6: 4798         	blx	r3
  2f9db8: 9b05         	ldr	r3, [sp, #0x14]
  2f9dba: 681b         	ldr	r3, [r3]
  2f9dbc: 33c8         	adds	r3, #0xc8
  2f9dbe: 681b         	ldr	r3, [r3]
  2f9dc0: 9a05         	ldr	r2, [sp, #0x14]
  2f9dc2: 4610         	mov	r0, r2
  2f9dc4: 9906         	ldr	r1, [sp, #0x18]
  2f9dc6: 4798         	blx	r3
  2f9dc8: 9b05         	ldr	r3, [sp, #0x14]
  2f9dca: e004         	b	0x2f9dd6 <EyeTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x152> @ imm = #0x8
  2f9dcc: 4620         	mov	r0, r4
  2f9dce: f08e f169    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48e2d2
  2f9dd2: f08e f16b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48e2d6
  2f9dd6: 4618         	mov	r0, r3
  2f9dd8: b010         	add	sp, #0x40
  2f9dda: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2f9ddb); words below are literal-pool data ---
  2f9ddc: aa02         	add	r2, sp, #0x8
  2f9dde: 004c         	lsls	r4, r1, #0x1
  2f9de0: a9e0         	add	r1, sp, #0x380
  2f9de2: 004c         	lsls	r4, r1, #0x1

// ==== EyeTableView::tableCellAtIndex
//      file offset 0x2f9de4 (= ELF address; Ghidra 0x309de4), 8 bytes, Thumb-2
  2f9de4: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2f9de8: f7ff bf4c    	b.w	0x2f9c84 <EyeTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)> @ imm = #-0x168

// ==== EyeTableView::tableCellSizeForIndex
//      file offset 0x2f9dec (= ELF address; Ghidra 0x309dec), 54 bytes, Thumb-2
  2f9dec: b500         	push	{lr}
  2f9dee: b085         	sub	sp, #0x14
  2f9df0: 9003         	str	r0, [sp, #0xc]
  2f9df2: 9102         	str	r1, [sp, #0x8]
  2f9df4: 9201         	str	r2, [sp, #0x4]
  2f9df6: 9300         	str	r3, [sp]
  2f9df8: 9b01         	ldr	r3, [sp, #0x4]
  2f9dfa: 681b         	ldr	r3, [r3]
  2f9dfc: 338c         	adds	r3, #0x8c
  2f9dfe: 681b         	ldr	r3, [r3]
  2f9e00: 9a01         	ldr	r2, [sp, #0x4]
  2f9e02: 4610         	mov	r0, r2
  2f9e04: 4798         	blx	r3
  2f9e06: 4603         	mov	r3, r0
  2f9e08: 681b         	ldr	r3, [r3]
  2f9e0a: 9803         	ldr	r0, [sp, #0xc]
  2f9e0c: 4619         	mov	r1, r3
  2f9e0e: f04f 0200    	mov.w	r2, #0x0
  2f9e12: f2c4 2220    	movt	r2, #0x4220
  2f9e16: f299 f93d    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x29927a
  2f9e1a: 9803         	ldr	r0, [sp, #0xc]
  2f9e1c: b005         	add	sp, #0x14
  2f9e1e: f85d fb04    	ldr	pc, [sp], #4

// ==== EyeTableView::tableCellSizeForIndex
//      file offset 0x2f9e24 (= ELF address; Ghidra 0x309e24), 8 bytes, Thumb-2
  2f9e24: f5a1 71e4    	sub.w	r1, r1, #0x1c8
  2f9e28: f7ff bfe0    	b.w	0x2f9dec <EyeTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int)> @ imm = #-0x40

// ==== EyeTableView::~EyeTableView
//      file offset 0x2fc9ac (= ELF address; Ghidra 0x30c9ac), 128 bytes, Thumb-2
  2fc9ac: b500         	push	{lr}
  2fc9ae: b083         	sub	sp, #0xc
  2fc9b0: 9001         	str	r0, [sp, #0x4]
  2fc9b2: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x2fca24 <EyeTableView::~EyeTableView()+0x78>
  2fc9b4: 447b         	add	r3, pc
  2fc9b6: 9a01         	ldr	r2, [sp, #0x4]
  2fc9b8: 491b         	ldr	r1, [pc, #0x6c]         @ 0x2fca28 <EyeTableView::~EyeTableView()+0x7c>
  2fc9ba: 5859         	ldr	r1, [r3, r1]
  2fc9bc: 3108         	adds	r1, #0x8
  2fc9be: 6011         	str	r1, [r2]
  2fc9c0: 9a01         	ldr	r2, [sp, #0x4]
  2fc9c2: 4919         	ldr	r1, [pc, #0x64]         @ 0x2fca28 <EyeTableView::~EyeTableView()+0x7c>
  2fc9c4: 5859         	ldr	r1, [r3, r1]
  2fc9c6: f501 710b    	add.w	r1, r1, #0x22c
  2fc9ca: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  2fc9ce: 9a01         	ldr	r2, [sp, #0x4]
  2fc9d0: 4915         	ldr	r1, [pc, #0x54]         @ 0x2fca28 <EyeTableView::~EyeTableView()+0x7c>
  2fc9d2: 5859         	ldr	r1, [r3, r1]
  2fc9d4: f501 7117    	add.w	r1, r1, #0x25c
  2fc9d8: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  2fc9dc: 9a01         	ldr	r2, [sp, #0x4]
  2fc9de: 4912         	ldr	r1, [pc, #0x48]         @ 0x2fca28 <EyeTableView::~EyeTableView()+0x7c>
  2fc9e0: 5859         	ldr	r1, [r3, r1]
  2fc9e2: f501 711a    	add.w	r1, r1, #0x268
  2fc9e6: f8c2 10ec    	str.w	r1, [r2, #0xec]
  2fc9ea: 9a01         	ldr	r2, [sp, #0x4]
  2fc9ec: 490e         	ldr	r1, [pc, #0x38]         @ 0x2fca28 <EyeTableView::~EyeTableView()+0x7c>
  2fc9ee: 5859         	ldr	r1, [r3, r1]
  2fc9f0: f501 711e    	add.w	r1, r1, #0x278
  2fc9f4: f8c2 1198    	str.w	r1, [r2, #0x198]
  2fc9f8: 9a01         	ldr	r2, [sp, #0x4]
  2fc9fa: 490b         	ldr	r1, [pc, #0x2c]         @ 0x2fca28 <EyeTableView::~EyeTableView()+0x7c>
  2fc9fc: 585b         	ldr	r3, [r3, r1]
  2fc9fe: f503 7324    	add.w	r3, r3, #0x290
  2fca02: f8c2 31c8    	str.w	r3, [r2, #0x1c8]
  2fca06: 9b01         	ldr	r3, [sp, #0x4]
  2fca08: 4618         	mov	r0, r3
  2fca0a: f7ff f903    	bl	0x2fbc14 <MenuTableView::~MenuTableView()> @ imm = #-0xdfa
  2fca0e: 2300         	movs	r3, #0x0
  2fca10: 2b00         	cmp	r3, #0x0
  2fca12: d002         	beq	0x2fca1a <EyeTableView::~EyeTableView()+0x6e> @ imm = #0x4
  2fca14: 9801         	ldr	r0, [sp, #0x4]
  2fca16: f08b f345    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48b68a
  2fca1a: 9b01         	ldr	r3, [sp, #0x4]
  2fca1c: 4618         	mov	r0, r3
  2fca1e: b003         	add	sp, #0xc
  2fca20: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2fca23); words below are literal-pool data ---
  2fca24: 6054         	str	r4, [r2, #0x4]
  2fca26: 0063         	lsls	r3, r4, #0x1
  2fca28: d860         	bhi	0x2fcaec <HeadTableView::~HeadTableView()+0x74> @ imm = #0xc0
  2fca2a: ffff f5a0    	<unknown>

// ==== EyeTableView::~EyeTableView
//      file offset 0x2fca2c (= ELF address; Ghidra 0x30ca2c), 8 bytes, Thumb-2
  2fca2c: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fca30: f7ff bfbc    	b.w	0x2fc9ac <EyeTableView::~EyeTableView()> @ imm = #-0x88

// ==== EyeTableView::~EyeTableView
//      file offset 0x2fca34 (= ELF address; Ghidra 0x30ca34), 8 bytes, Thumb-2
  2fca34: f5a0 70cc    	sub.w	r0, r0, #0x198
  2fca38: f7ff bfb8    	b.w	0x2fc9ac <EyeTableView::~EyeTableView()> @ imm = #-0x90

// ==== EyeTableView::~EyeTableView
//      file offset 0x2fca3c (= ELF address; Ghidra 0x30ca3c), 8 bytes, Thumb-2
  2fca3c: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2fca40: f7ff bfb4    	b.w	0x2fc9ac <EyeTableView::~EyeTableView()> @ imm = #-0x98

// ==== EyeTableView::~EyeTableView
//      file offset 0x2fca44 (= ELF address; Ghidra 0x30ca44), 28 bytes, Thumb-2
  2fca44: b500         	push	{lr}
  2fca46: b083         	sub	sp, #0xc
  2fca48: 9001         	str	r0, [sp, #0x4]
  2fca4a: 9801         	ldr	r0, [sp, #0x4]
  2fca4c: f7ff ffae    	bl	0x2fc9ac <EyeTableView::~EyeTableView()> @ imm = #-0xa4
  2fca50: 9801         	ldr	r0, [sp, #0x4]
  2fca52: f08b f327    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48b64e
  2fca56: 9b01         	ldr	r3, [sp, #0x4]
  2fca58: 4618         	mov	r0, r3
  2fca5a: b003         	add	sp, #0xc
  2fca5c: f85d fb04    	ldr	pc, [sp], #4

// ==== EyeTableView::~EyeTableView
//      file offset 0x2fca60 (= ELF address; Ghidra 0x30ca60), 6 bytes, Thumb-2
  2fca60: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fca64: e7ee         	b	0x2fca44 <EyeTableView::~EyeTableView()> @ imm = #-0x24

// ==== EyeTableView::~EyeTableView
//      file offset 0x2fca68 (= ELF address; Ghidra 0x30ca68), 6 bytes, Thumb-2
  2fca68: f5a0 70cc    	sub.w	r0, r0, #0x198
  2fca6c: e7ea         	b	0x2fca44 <EyeTableView::~EyeTableView()> @ imm = #-0x2c

// ==== EyeTableView::~EyeTableView
//      file offset 0x2fca70 (= ELF address; Ghidra 0x30ca70), 6 bytes, Thumb-2
  2fca70: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2fca74: e7e6         	b	0x2fca44 <EyeTableView::~EyeTableView()> @ imm = #-0x34
