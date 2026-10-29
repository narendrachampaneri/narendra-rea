// BrowTableView: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 16 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../BrowTableView.cpp

// ==== BrowTableView::BrowTableView
//      file offset 0x2ea7a0 (= ELF address; Ghidra 0x2fa7a0), 116 bytes, Thumb-2
  2ea7a0: b510         	push	{r4, lr}
  2ea7a2: b082         	sub	sp, #0x8
  2ea7a4: 9001         	str	r0, [sp, #0x4]
  2ea7a6: 4c19         	ldr	r4, [pc, #0x64]         @ 0x2ea80c <BrowTableView::BrowTableView()+0x6c>
  2ea7a8: 447c         	add	r4, pc
  2ea7aa: 9b01         	ldr	r3, [sp, #0x4]
  2ea7ac: 4618         	mov	r0, r3
  2ea7ae: f086 fa77    	bl	0x370ca0 <MenuTableView::MenuTableView()> @ imm = #0x864ee
  2ea7b2: 9b01         	ldr	r3, [sp, #0x4]
  2ea7b4: 4a16         	ldr	r2, [pc, #0x58]         @ 0x2ea810 <BrowTableView::BrowTableView()+0x70>
  2ea7b6: 58a2         	ldr	r2, [r4, r2]
  2ea7b8: 3208         	adds	r2, #0x8
  2ea7ba: 601a         	str	r2, [r3]
  2ea7bc: 9b01         	ldr	r3, [sp, #0x4]
  2ea7be: 4a14         	ldr	r2, [pc, #0x50]         @ 0x2ea810 <BrowTableView::BrowTableView()+0x70>
  2ea7c0: 58a2         	ldr	r2, [r4, r2]
  2ea7c2: f502 720b    	add.w	r2, r2, #0x22c
  2ea7c6: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  2ea7ca: 9b01         	ldr	r3, [sp, #0x4]
  2ea7cc: 4a10         	ldr	r2, [pc, #0x40]         @ 0x2ea810 <BrowTableView::BrowTableView()+0x70>
  2ea7ce: 58a2         	ldr	r2, [r4, r2]
  2ea7d0: f502 7217    	add.w	r2, r2, #0x25c
  2ea7d4: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  2ea7d8: 9b01         	ldr	r3, [sp, #0x4]
  2ea7da: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x2ea810 <BrowTableView::BrowTableView()+0x70>
  2ea7dc: 58a2         	ldr	r2, [r4, r2]
  2ea7de: f502 721a    	add.w	r2, r2, #0x268
  2ea7e2: f8c3 20ec    	str.w	r2, [r3, #0xec]
  2ea7e6: 9b01         	ldr	r3, [sp, #0x4]
  2ea7e8: 4a09         	ldr	r2, [pc, #0x24]         @ 0x2ea810 <BrowTableView::BrowTableView()+0x70>
  2ea7ea: 58a2         	ldr	r2, [r4, r2]
  2ea7ec: f502 721e    	add.w	r2, r2, #0x278
  2ea7f0: f8c3 2198    	str.w	r2, [r3, #0x198]
  2ea7f4: 9b01         	ldr	r3, [sp, #0x4]
  2ea7f6: 4a06         	ldr	r2, [pc, #0x18]         @ 0x2ea810 <BrowTableView::BrowTableView()+0x70>
  2ea7f8: 58a2         	ldr	r2, [r4, r2]
  2ea7fa: f502 7224    	add.w	r2, r2, #0x290
  2ea7fe: f8c3 21c8    	str.w	r2, [r3, #0x1c8]
  2ea802: 9b01         	ldr	r3, [sp, #0x4]
  2ea804: 4618         	mov	r0, r3
  2ea806: b002         	add	sp, #0x8
  2ea808: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2ea809); words below are literal-pool data ---
  2ea80a: bf00         	nop
  2ea80c: 8260         	strh	r0, [r4, #0x12]
  2ea80e: 0064         	lsls	r4, r4, #0x1
  2ea810: d85c         	bhi	0x2ea8cc <MouthTableView::MouthTableView()+0x44> @ imm = #0xb8
  2ea812: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== BrowTableView::numberOfCellsInTableView
//      file offset 0x2f9e2c (= ELF address; Ghidra 0x309e2c), 14 bytes, Thumb-2
  2f9e2c: b082         	sub	sp, #0x8
  2f9e2e: 9001         	str	r0, [sp, #0x4]
  2f9e30: 9100         	str	r1, [sp]
  2f9e32: 230d         	movs	r3, #0xd
  2f9e34: 4618         	mov	r0, r3
  2f9e36: b002         	add	sp, #0x8
  2f9e38: 4770         	bx	lr

// ==== BrowTableView::numberOfCellsInTableView
//      file offset 0x2f9e3c (= ELF address; Ghidra 0x309e3c), 8 bytes, Thumb-2
  2f9e3c: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2f9e40: f7ff bff4    	b.w	0x2f9e2c <BrowTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*)> @ imm = #-0x18

// ==== BrowTableView::getIdentifier
//      file offset 0x2f9e44 (= ELF address; Ghidra 0x309e44), 68 bytes, Thumb-2
  2f9e44: b500         	push	{lr}
  2f9e46: b085         	sub	sp, #0x14
  2f9e48: 9001         	str	r0, [sp, #0x4]
  2f9e4a: 9100         	str	r1, [sp]
  2f9e4c: ab03         	add	r3, sp, #0xc
  2f9e4e: 4618         	mov	r0, r3
  2f9e50: f090 f2d0    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4905a0
  2f9e54: ab03         	add	r3, sp, #0xc
  2f9e56: 9801         	ldr	r0, [sp, #0x4]
  2f9e58: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x2f9e84 <BrowTableView::getIdentifier()+0x40>
  2f9e5a: 447a         	add	r2, pc
  2f9e5c: 4611         	mov	r1, r2
  2f9e5e: 461a         	mov	r2, r3
  2f9e60: f0bc f5fe    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4bcbfc
  2f9e64: ab03         	add	r3, sp, #0xc
  2f9e66: 4618         	mov	r0, r3
  2f9e68: f090 f2c8    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x490590
  2f9e6c: e005         	b	0x2f9e7a <BrowTableView::getIdentifier()+0x36> @ imm = #0xa
  2f9e6e: ab03         	add	r3, sp, #0xc
  2f9e70: 4618         	mov	r0, r3
  2f9e72: f090 f2c3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x490586
  2f9e76: f08e f119    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48e232
  2f9e7a: 9801         	ldr	r0, [sp, #0x4]
  2f9e7c: b005         	add	sp, #0x14
  2f9e7e: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2f9e81); words below are literal-pool data ---
  2f9e82: bf00         	nop
  2f9e84: a936         	add	r1, sp, #0xd8
  2f9e86: 004c         	lsls	r4, r1, #0x1

// ==== BrowTableView::tableCellAtIndex
//      file offset 0x2f9e88 (= ELF address; Ghidra 0x309e88), 352 bytes, Thumb-2
  2f9e88: b510         	push	{r4, lr}
  2f9e8a: b090         	sub	sp, #0x40
  2f9e8c: 9003         	str	r0, [sp, #0xc]
  2f9e8e: 9102         	str	r1, [sp, #0x8]
  2f9e90: 9201         	str	r2, [sp, #0x4]
  2f9e92: 9802         	ldr	r0, [sp, #0x8]
  2f9e94: f159 fcc0    	bl	0x453818 <cocos2d::extension::CCTableView::dequeueCell()> @ imm = #0x159980
  2f9e98: 4603         	mov	r3, r0
  2f9e9a: 9305         	str	r3, [sp, #0x14]
  2f9e9c: 9b05         	ldr	r3, [sp, #0x14]
  2f9e9e: 2b00         	cmp	r3, #0x0
  2f9ea0: d006         	beq	0x2f9eb0 <BrowTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x28> @ imm = #0xc
  2f9ea2: 9805         	ldr	r0, [sp, #0x14]
  2f9ea4: f15c f8a2    	bl	0x455fec <cocos2d::extension::CCTableViewCell::getIdx()> @ imm = #0x15c144
  2f9ea8: 4602         	mov	r2, r0
  2f9eaa: 9b01         	ldr	r3, [sp, #0x4]
  2f9eac: 429a         	cmp	r2, r3
  2f9eae: d001         	beq	0x2f9eb4 <BrowTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x2c> @ imm = #0x2
  2f9eb0: 2301         	movs	r3, #0x1
  2f9eb2: e000         	b	0x2f9eb6 <BrowTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x2e> @ imm = #0x0
  2f9eb4: 2300         	movs	r3, #0x0
  2f9eb6: 2b00         	cmp	r3, #0x0
  2f9eb8: f000 8088    	beq.w	0x2f9fcc <BrowTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x144> @ imm = #0x110
  2f9ebc: 20ec         	movs	r0, #0xec
  2f9ebe: f08d f551    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x48daa2
  2f9ec2: 4603         	mov	r3, r0
  2f9ec4: 461c         	mov	r4, r3
  2f9ec6: 4620         	mov	r0, r4
  2f9ec8: f7ff fa78    	bl	0x2f93bc <cocos2d::extension::CCTableViewCell::CCTableViewCell()> @ imm = #-0xb10
  2f9ecc: 9405         	str	r4, [sp, #0x14]
  2f9ece: 9b05         	ldr	r3, [sp, #0x14]
  2f9ed0: 4618         	mov	r0, r3
  2f9ed2: f29e f813    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x29e026
  2f9ed6: 9b03         	ldr	r3, [sp, #0xc]
  2f9ed8: 681b         	ldr	r3, [r3]
  2f9eda: f503 7306    	add.w	r3, r3, #0x218
  2f9ede: 681c         	ldr	r4, [r3]
  2f9ee0: ab08         	add	r3, sp, #0x20
  2f9ee2: 4618         	mov	r0, r3
  2f9ee4: 9903         	ldr	r1, [sp, #0xc]
  2f9ee6: 9a02         	ldr	r2, [sp, #0x8]
  2f9ee8: 9b01         	ldr	r3, [sp, #0x4]
  2f9eea: 47a0         	blx	r4
  2f9eec: ed9d 7a08    	vldr	s14, [sp, #32]
  2f9ef0: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2f9ef4: eec7 6a27    	vdiv.f32	s13, s14, s15
  2f9ef8: ed9d 7a09    	vldr	s14, [sp, #36]
  2f9efc: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2f9f00: eec7 7a27    	vdiv.f32	s15, s14, s15
  2f9f04: ab0a         	add	r3, sp, #0x28
  2f9f06: 4618         	mov	r0, r3
  2f9f08: ee16 1a90    	vmov	r1, s13
  2f9f0c: ee17 2a90    	vmov	r2, s15
  2f9f10: f298 feee    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x298ddc
  2f9f14: f7f9 fdd0    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x6460
  2f9f18: 4602         	mov	r2, r0
  2f9f1a: 9b01         	ldr	r3, [sp, #0x4]
  2f9f1c: 3322         	adds	r3, #0x22
  2f9f1e: 011b         	lsls	r3, r3, #0x4
  2f9f20: 4413         	add	r3, r2
  2f9f22: 3304         	adds	r3, #0x4
  2f9f24: aa0c         	add	r2, sp, #0x30
  2f9f26: 4610         	mov	r0, r2
  2f9f28: 4619         	mov	r1, r3
  2f9f2a: f299 f9f5    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x2993ea
  2f9f2e: ab0c         	add	r3, sp, #0x30
  2f9f30: 4a2b         	ldr	r2, [pc, #0xac]         @ 0x2f9fe0 <BrowTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x158>
  2f9f32: 447a         	add	r2, pc
  2f9f34: 4610         	mov	r0, r2
  2f9f36: 4619         	mov	r1, r3
  2f9f38: f2de f962    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2de2c4
  2f9f3c: 4603         	mov	r3, r0
  2f9f3e: 9306         	str	r3, [sp, #0x18]
  2f9f40: 9b06         	ldr	r3, [sp, #0x18]
  2f9f42: 681b         	ldr	r3, [r3]
  2f9f44: f503 73fa    	add.w	r3, r3, #0x1f4
  2f9f48: 681b         	ldr	r3, [r3]
  2f9f4a: 9806         	ldr	r0, [sp, #0x18]
  2f9f4c: 4798         	blx	r3
  2f9f4e: 4603         	mov	r3, r0
  2f9f50: 4618         	mov	r0, r3
  2f9f52: f2f8 f817    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2f802e
  2f9f56: 9b06         	ldr	r3, [sp, #0x18]
  2f9f58: 681b         	ldr	r3, [r3]
  2f9f5a: 334c         	adds	r3, #0x4c
  2f9f5c: 681b         	ldr	r3, [r3]
  2f9f5e: aa0a         	add	r2, sp, #0x28
  2f9f60: 9806         	ldr	r0, [sp, #0x18]
  2f9f62: 4611         	mov	r1, r2
  2f9f64: 4798         	blx	r3
  2f9f66: 4b1f         	ldr	r3, [pc, #0x7c]         @ 0x2f9fe4 <BrowTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x15c>
  2f9f68: 447b         	add	r3, pc
  2f9f6a: 4618         	mov	r0, r3
  2f9f6c: f2de f9ca    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2de394
  2f9f70: 4603         	mov	r3, r0
  2f9f72: 9307         	str	r3, [sp, #0x1c]
  2f9f74: 9b06         	ldr	r3, [sp, #0x18]
  2f9f76: 681b         	ldr	r3, [r3]
  2f9f78: 3340         	adds	r3, #0x40
  2f9f7a: 681b         	ldr	r3, [r3]
  2f9f7c: 9806         	ldr	r0, [sp, #0x18]
  2f9f7e: f04f 0100    	mov.w	r1, #0x0
  2f9f82: f6c3 71a0    	movt	r1, #0x3fa0
  2f9f86: 4798         	blx	r3
  2f9f88: 9b07         	ldr	r3, [sp, #0x1c]
  2f9f8a: 681b         	ldr	r3, [r3]
  2f9f8c: 334c         	adds	r3, #0x4c
  2f9f8e: 681b         	ldr	r3, [r3]
  2f9f90: aa0a         	add	r2, sp, #0x28
  2f9f92: 9807         	ldr	r0, [sp, #0x1c]
  2f9f94: 4611         	mov	r1, r2
  2f9f96: 4798         	blx	r3
  2f9f98: 9b07         	ldr	r3, [sp, #0x1c]
  2f9f9a: 681b         	ldr	r3, [r3]
  2f9f9c: 3340         	adds	r3, #0x40
  2f9f9e: 681b         	ldr	r3, [r3]
  2f9fa0: 9807         	ldr	r0, [sp, #0x1c]
  2f9fa2: f64c 41cd    	movw	r1, #0xcccd
  2f9fa6: f6c3 61cc    	movt	r1, #0x3ecc
  2f9faa: 4798         	blx	r3
  2f9fac: 9b05         	ldr	r3, [sp, #0x14]
  2f9fae: 681b         	ldr	r3, [r3]
  2f9fb0: 33c8         	adds	r3, #0xc8
  2f9fb2: 681b         	ldr	r3, [r3]
  2f9fb4: 9a05         	ldr	r2, [sp, #0x14]
  2f9fb6: 4610         	mov	r0, r2
  2f9fb8: 9907         	ldr	r1, [sp, #0x1c]
  2f9fba: 4798         	blx	r3
  2f9fbc: 9b05         	ldr	r3, [sp, #0x14]
  2f9fbe: 681b         	ldr	r3, [r3]
  2f9fc0: 33c8         	adds	r3, #0xc8
  2f9fc2: 681b         	ldr	r3, [r3]
  2f9fc4: 9a05         	ldr	r2, [sp, #0x14]
  2f9fc6: 4610         	mov	r0, r2
  2f9fc8: 9906         	ldr	r1, [sp, #0x18]
  2f9fca: 4798         	blx	r3
  2f9fcc: 9b05         	ldr	r3, [sp, #0x14]
  2f9fce: e004         	b	0x2f9fda <BrowTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x152> @ imm = #0x8
  2f9fd0: 4620         	mov	r0, r4
  2f9fd2: f08e f067    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48e0ce
  2f9fd6: f08e f069    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48e0d2
  2f9fda: 4618         	mov	r0, r3
  2f9fdc: b010         	add	sp, #0x40
  2f9fde: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2f9fdf); words below are literal-pool data ---
  2f9fe0: a7fe         	adr	r7, #1016 <MouthTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x56>
  2f9fe2: 004c         	lsls	r4, r1, #0x1
  2f9fe4: a7dc         	adr	r7, #880 <MouthTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x38>
  2f9fe6: 004c         	lsls	r4, r1, #0x1

// ==== BrowTableView::tableCellAtIndex
//      file offset 0x2f9fe8 (= ELF address; Ghidra 0x309fe8), 8 bytes, Thumb-2
  2f9fe8: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2f9fec: f7ff bf4c    	b.w	0x2f9e88 <BrowTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)> @ imm = #-0x168

// ==== BrowTableView::tableCellSizeForIndex
//      file offset 0x2f9ff0 (= ELF address; Ghidra 0x309ff0), 54 bytes, Thumb-2
  2f9ff0: b500         	push	{lr}
  2f9ff2: b085         	sub	sp, #0x14
  2f9ff4: 9003         	str	r0, [sp, #0xc]
  2f9ff6: 9102         	str	r1, [sp, #0x8]
  2f9ff8: 9201         	str	r2, [sp, #0x4]
  2f9ffa: 9300         	str	r3, [sp]
  2f9ffc: 9b01         	ldr	r3, [sp, #0x4]
  2f9ffe: 681b         	ldr	r3, [r3]
  2fa000: 338c         	adds	r3, #0x8c
  2fa002: 681b         	ldr	r3, [r3]
  2fa004: 9a01         	ldr	r2, [sp, #0x4]
  2fa006: 4610         	mov	r0, r2
  2fa008: 4798         	blx	r3
  2fa00a: 4603         	mov	r3, r0
  2fa00c: 681b         	ldr	r3, [r3]
  2fa00e: 9803         	ldr	r0, [sp, #0xc]
  2fa010: 4619         	mov	r1, r3
  2fa012: f04f 0200    	mov.w	r2, #0x0
  2fa016: f2c4 2220    	movt	r2, #0x4220
  2fa01a: f299 f83b    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x299076
  2fa01e: 9803         	ldr	r0, [sp, #0xc]
  2fa020: b005         	add	sp, #0x14
  2fa022: f85d fb04    	ldr	pc, [sp], #4

// ==== BrowTableView::tableCellSizeForIndex
//      file offset 0x2fa028 (= ELF address; Ghidra 0x30a028), 8 bytes, Thumb-2
  2fa028: f5a1 71e4    	sub.w	r1, r1, #0x1c8
  2fa02c: f7ff bfe0    	b.w	0x2f9ff0 <BrowTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int)> @ imm = #-0x40

// ==== BrowTableView::~BrowTableView
//      file offset 0x2fc8e0 (= ELF address; Ghidra 0x30c8e0), 128 bytes, Thumb-2
  2fc8e0: b500         	push	{lr}
  2fc8e2: b083         	sub	sp, #0xc
  2fc8e4: 9001         	str	r0, [sp, #0x4]
  2fc8e6: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x2fc958 <BrowTableView::~BrowTableView()+0x78>
  2fc8e8: 447b         	add	r3, pc
  2fc8ea: 9a01         	ldr	r2, [sp, #0x4]
  2fc8ec: 491b         	ldr	r1, [pc, #0x6c]         @ 0x2fc95c <BrowTableView::~BrowTableView()+0x7c>
  2fc8ee: 5859         	ldr	r1, [r3, r1]
  2fc8f0: 3108         	adds	r1, #0x8
  2fc8f2: 6011         	str	r1, [r2]
  2fc8f4: 9a01         	ldr	r2, [sp, #0x4]
  2fc8f6: 4919         	ldr	r1, [pc, #0x64]         @ 0x2fc95c <BrowTableView::~BrowTableView()+0x7c>
  2fc8f8: 5859         	ldr	r1, [r3, r1]
  2fc8fa: f501 710b    	add.w	r1, r1, #0x22c
  2fc8fe: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  2fc902: 9a01         	ldr	r2, [sp, #0x4]
  2fc904: 4915         	ldr	r1, [pc, #0x54]         @ 0x2fc95c <BrowTableView::~BrowTableView()+0x7c>
  2fc906: 5859         	ldr	r1, [r3, r1]
  2fc908: f501 7117    	add.w	r1, r1, #0x25c
  2fc90c: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  2fc910: 9a01         	ldr	r2, [sp, #0x4]
  2fc912: 4912         	ldr	r1, [pc, #0x48]         @ 0x2fc95c <BrowTableView::~BrowTableView()+0x7c>
  2fc914: 5859         	ldr	r1, [r3, r1]
  2fc916: f501 711a    	add.w	r1, r1, #0x268
  2fc91a: f8c2 10ec    	str.w	r1, [r2, #0xec]
  2fc91e: 9a01         	ldr	r2, [sp, #0x4]
  2fc920: 490e         	ldr	r1, [pc, #0x38]         @ 0x2fc95c <BrowTableView::~BrowTableView()+0x7c>
  2fc922: 5859         	ldr	r1, [r3, r1]
  2fc924: f501 711e    	add.w	r1, r1, #0x278
  2fc928: f8c2 1198    	str.w	r1, [r2, #0x198]
  2fc92c: 9a01         	ldr	r2, [sp, #0x4]
  2fc92e: 490b         	ldr	r1, [pc, #0x2c]         @ 0x2fc95c <BrowTableView::~BrowTableView()+0x7c>
  2fc930: 585b         	ldr	r3, [r3, r1]
  2fc932: f503 7324    	add.w	r3, r3, #0x290
  2fc936: f8c2 31c8    	str.w	r3, [r2, #0x1c8]
  2fc93a: 9b01         	ldr	r3, [sp, #0x4]
  2fc93c: 4618         	mov	r0, r3
  2fc93e: f7ff f969    	bl	0x2fbc14 <MenuTableView::~MenuTableView()> @ imm = #-0xd2e
  2fc942: 2300         	movs	r3, #0x0
  2fc944: 2b00         	cmp	r3, #0x0
  2fc946: d002         	beq	0x2fc94e <BrowTableView::~BrowTableView()+0x6e> @ imm = #0x4
  2fc948: 9801         	ldr	r0, [sp, #0x4]
  2fc94a: f08b f3ab    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48b756
  2fc94e: 9b01         	ldr	r3, [sp, #0x4]
  2fc950: 4618         	mov	r0, r3
  2fc952: b003         	add	sp, #0xc
  2fc954: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2fc957); words below are literal-pool data ---
  2fc958: 6120         	str	r0, [r4, #0x10]
  2fc95a: 0063         	lsls	r3, r4, #0x1
  2fc95c: d85c         	bhi	0x2fca18 <EyeTableView::~EyeTableView()+0x6c> @ imm = #0xb8
  2fc95e: ffff f5a0    	<unknown>

// ==== BrowTableView::~BrowTableView
//      file offset 0x2fc960 (= ELF address; Ghidra 0x30c960), 8 bytes, Thumb-2
  2fc960: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fc964: f7ff bfbc    	b.w	0x2fc8e0 <BrowTableView::~BrowTableView()> @ imm = #-0x88

// ==== BrowTableView::~BrowTableView
//      file offset 0x2fc968 (= ELF address; Ghidra 0x30c968), 8 bytes, Thumb-2
  2fc968: f5a0 70cc    	sub.w	r0, r0, #0x198
  2fc96c: f7ff bfb8    	b.w	0x2fc8e0 <BrowTableView::~BrowTableView()> @ imm = #-0x90

// ==== BrowTableView::~BrowTableView
//      file offset 0x2fc970 (= ELF address; Ghidra 0x30c970), 8 bytes, Thumb-2
  2fc970: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2fc974: f7ff bfb4    	b.w	0x2fc8e0 <BrowTableView::~BrowTableView()> @ imm = #-0x98

// ==== BrowTableView::~BrowTableView
//      file offset 0x2fc978 (= ELF address; Ghidra 0x30c978), 28 bytes, Thumb-2
  2fc978: b500         	push	{lr}
  2fc97a: b083         	sub	sp, #0xc
  2fc97c: 9001         	str	r0, [sp, #0x4]
  2fc97e: 9801         	ldr	r0, [sp, #0x4]
  2fc980: f7ff ffae    	bl	0x2fc8e0 <BrowTableView::~BrowTableView()> @ imm = #-0xa4
  2fc984: 9801         	ldr	r0, [sp, #0x4]
  2fc986: f08b f38d    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48b71a
  2fc98a: 9b01         	ldr	r3, [sp, #0x4]
  2fc98c: 4618         	mov	r0, r3
  2fc98e: b003         	add	sp, #0xc
  2fc990: f85d fb04    	ldr	pc, [sp], #4

// ==== BrowTableView::~BrowTableView
//      file offset 0x2fc994 (= ELF address; Ghidra 0x30c994), 6 bytes, Thumb-2
  2fc994: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fc998: e7ee         	b	0x2fc978 <BrowTableView::~BrowTableView()> @ imm = #-0x24

// ==== BrowTableView::~BrowTableView
//      file offset 0x2fc99c (= ELF address; Ghidra 0x30c99c), 6 bytes, Thumb-2
  2fc99c: f5a0 70cc    	sub.w	r0, r0, #0x198
  2fc9a0: e7ea         	b	0x2fc978 <BrowTableView::~BrowTableView()> @ imm = #-0x2c

// ==== BrowTableView::~BrowTableView
//      file offset 0x2fc9a4 (= ELF address; Ghidra 0x30c9a4), 6 bytes, Thumb-2
  2fc9a4: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2fc9a8: e7e6         	b	0x2fc978 <BrowTableView::~BrowTableView()> @ imm = #-0x34
