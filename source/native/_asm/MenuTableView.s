// MenuTableView: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 16 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../MenuTableView.cpp

// ==== MenuTableView::numberOfCellsInTableView
//      file offset 0x2f9414 (= ELF address; Ghidra 0x309414), 14 bytes, Thumb-2
  2f9414: b082         	sub	sp, #0x8
  2f9416: 9001         	str	r0, [sp, #0x4]
  2f9418: 9100         	str	r1, [sp]
  2f941a: 2300         	movs	r3, #0x0
  2f941c: 4618         	mov	r0, r3
  2f941e: b002         	add	sp, #0x8
  2f9420: 4770         	bx	lr

// ==== MenuTableView::numberOfCellsInTableView
//      file offset 0x2f9424 (= ELF address; Ghidra 0x309424), 6 bytes, Thumb-2
  2f9424: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2f9428: e7f4         	b	0x2f9414 <MenuTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*)> @ imm = #-0x18

// ==== MenuTableView::getIdentifier
//      file offset 0x2f942c (= ELF address; Ghidra 0x30942c), 68 bytes, Thumb-2
  2f942c: b500         	push	{lr}
  2f942e: b085         	sub	sp, #0x14
  2f9430: 9001         	str	r0, [sp, #0x4]
  2f9432: 9100         	str	r1, [sp]
  2f9434: ab03         	add	r3, sp, #0xc
  2f9436: 4618         	mov	r0, r3
  2f9438: f090 f7dc    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x490fb8
  2f943c: ab03         	add	r3, sp, #0xc
  2f943e: 9801         	ldr	r0, [sp, #0x4]
  2f9440: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x2f946c <MenuTableView::getIdentifier()+0x40>
  2f9442: 447a         	add	r2, pc
  2f9444: 4611         	mov	r1, r2
  2f9446: 461a         	mov	r2, r3
  2f9448: f0bd f30a    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4bd614
  2f944c: ab03         	add	r3, sp, #0xc
  2f944e: 4618         	mov	r0, r3
  2f9450: f090 f7d4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x490fa8
  2f9454: e005         	b	0x2f9462 <MenuTableView::getIdentifier()+0x36> @ imm = #0xa
  2f9456: ab03         	add	r3, sp, #0xc
  2f9458: 4618         	mov	r0, r3
  2f945a: f090 f7cf    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x490f9e
  2f945e: f08e f625    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48ec4a
  2f9462: 9801         	ldr	r0, [sp, #0x4]
  2f9464: b005         	add	sp, #0x14
  2f9466: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2f9469); words below are literal-pool data ---
  2f946a: bf00         	nop
  2f946c: b2e2         	uxtb	r2, r4
  2f946e: 004c         	lsls	r4, r1, #0x1

// ==== MenuTableView::tableCellAtIndex
//      file offset 0x2f9470 (= ELF address; Ghidra 0x309470), 16 bytes, Thumb-2
  2f9470: b084         	sub	sp, #0x10
  2f9472: 9003         	str	r0, [sp, #0xc]
  2f9474: 9102         	str	r1, [sp, #0x8]
  2f9476: 9201         	str	r2, [sp, #0x4]
  2f9478: 2300         	movs	r3, #0x0
  2f947a: 4618         	mov	r0, r3
  2f947c: b004         	add	sp, #0x10
  2f947e: 4770         	bx	lr

// ==== MenuTableView::tableCellAtIndex
//      file offset 0x2f9480 (= ELF address; Ghidra 0x309480), 6 bytes, Thumb-2
  2f9480: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2f9484: e7f4         	b	0x2f9470 <MenuTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)> @ imm = #-0x18

// ==== MenuTableView::~MenuTableView
//      file offset 0x2fbc14 (= ELF address; Ghidra 0x30bc14), 140 bytes, Thumb-2
  2fbc14: b500         	push	{lr}
  2fbc16: b083         	sub	sp, #0xc
  2fbc18: 9001         	str	r0, [sp, #0x4]
  2fbc1a: 4b1f         	ldr	r3, [pc, #0x7c]         @ 0x2fbc98 <MenuTableView::~MenuTableView()+0x84>
  2fbc1c: 447b         	add	r3, pc
  2fbc1e: 9a01         	ldr	r2, [sp, #0x4]
  2fbc20: 491e         	ldr	r1, [pc, #0x78]         @ 0x2fbc9c <MenuTableView::~MenuTableView()+0x88>
  2fbc22: 5859         	ldr	r1, [r3, r1]
  2fbc24: 3108         	adds	r1, #0x8
  2fbc26: 6011         	str	r1, [r2]
  2fbc28: 9a01         	ldr	r2, [sp, #0x4]
  2fbc2a: 491c         	ldr	r1, [pc, #0x70]         @ 0x2fbc9c <MenuTableView::~MenuTableView()+0x88>
  2fbc2c: 5859         	ldr	r1, [r3, r1]
  2fbc2e: f501 710a    	add.w	r1, r1, #0x228
  2fbc32: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  2fbc36: 9a01         	ldr	r2, [sp, #0x4]
  2fbc38: 4918         	ldr	r1, [pc, #0x60]         @ 0x2fbc9c <MenuTableView::~MenuTableView()+0x88>
  2fbc3a: 5859         	ldr	r1, [r3, r1]
  2fbc3c: f501 7116    	add.w	r1, r1, #0x258
  2fbc40: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  2fbc44: 9a01         	ldr	r2, [sp, #0x4]
  2fbc46: 4915         	ldr	r1, [pc, #0x54]         @ 0x2fbc9c <MenuTableView::~MenuTableView()+0x88>
  2fbc48: 5859         	ldr	r1, [r3, r1]
  2fbc4a: f501 7119    	add.w	r1, r1, #0x264
  2fbc4e: f8c2 10ec    	str.w	r1, [r2, #0xec]
  2fbc52: 9a01         	ldr	r2, [sp, #0x4]
  2fbc54: 4911         	ldr	r1, [pc, #0x44]         @ 0x2fbc9c <MenuTableView::~MenuTableView()+0x88>
  2fbc56: 5859         	ldr	r1, [r3, r1]
  2fbc58: f501 711d    	add.w	r1, r1, #0x274
  2fbc5c: f8c2 1198    	str.w	r1, [r2, #0x198]
  2fbc60: 9a01         	ldr	r2, [sp, #0x4]
  2fbc62: 490e         	ldr	r1, [pc, #0x38]         @ 0x2fbc9c <MenuTableView::~MenuTableView()+0x88>
  2fbc64: 585b         	ldr	r3, [r3, r1]
  2fbc66: f503 7323    	add.w	r3, r3, #0x28c
  2fbc6a: f8c2 31c8    	str.w	r3, [r2, #0x1c8]
  2fbc6e: 9b01         	ldr	r3, [sp, #0x4]
  2fbc70: f503 73e4    	add.w	r3, r3, #0x1c8
  2fbc74: 4618         	mov	r0, r3
  2fbc76: f7ee fb93    	bl	0x2ea3a0 <cocos2d::extension::CCTableViewDataSource::~CCTableViewDataSource()> @ imm = #-0x118da
  2fbc7a: 9b01         	ldr	r3, [sp, #0x4]
  2fbc7c: 4618         	mov	r0, r3
  2fbc7e: f157 fad3    	bl	0x453228 <cocos2d::extension::CCTableView::~CCTableView()> @ imm = #0x1575a6
  2fbc82: 2300         	movs	r3, #0x0
  2fbc84: 2b00         	cmp	r3, #0x0
  2fbc86: d002         	beq	0x2fbc8e <MenuTableView::~MenuTableView()+0x7a> @ imm = #0x4
  2fbc88: 9801         	ldr	r0, [sp, #0x4]
  2fbc8a: f08c f20b    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48c416
  2fbc8e: 9b01         	ldr	r3, [sp, #0x4]
  2fbc90: 4618         	mov	r0, r3
  2fbc92: b003         	add	sp, #0xc
  2fbc94: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2fbc97); words below are literal-pool data ---
  2fbc98: 6dec         	ldr	r4, [r5, #0x5c]
  2fbc9a: 0063         	lsls	r3, r4, #0x1
  2fbc9c: d900         	bls	0x2fbca0 <non-virtual thunk to MenuTableView::~MenuTableView()> @ imm = #0x0
  2fbc9e: ffff f5a0    	<unknown>

// ==== MenuTableView::~MenuTableView
//      file offset 0x2fbca0 (= ELF address; Ghidra 0x30bca0), 8 bytes, Thumb-2
  2fbca0: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fbca4: f7ff bfb6    	b.w	0x2fbc14 <MenuTableView::~MenuTableView()> @ imm = #-0x94

// ==== MenuTableView::~MenuTableView
//      file offset 0x2fbca8 (= ELF address; Ghidra 0x30bca8), 8 bytes, Thumb-2
  2fbca8: f5a0 70cc    	sub.w	r0, r0, #0x198
  2fbcac: f7ff bfb2    	b.w	0x2fbc14 <MenuTableView::~MenuTableView()> @ imm = #-0x9c

// ==== MenuTableView::~MenuTableView
//      file offset 0x2fbcb0 (= ELF address; Ghidra 0x30bcb0), 8 bytes, Thumb-2
  2fbcb0: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2fbcb4: f7ff bfae    	b.w	0x2fbc14 <MenuTableView::~MenuTableView()> @ imm = #-0xa4

// ==== MenuTableView::~MenuTableView
//      file offset 0x2fbcb8 (= ELF address; Ghidra 0x30bcb8), 28 bytes, Thumb-2
  2fbcb8: b500         	push	{lr}
  2fbcba: b083         	sub	sp, #0xc
  2fbcbc: 9001         	str	r0, [sp, #0x4]
  2fbcbe: 9801         	ldr	r0, [sp, #0x4]
  2fbcc0: f7ff ffa8    	bl	0x2fbc14 <MenuTableView::~MenuTableView()> @ imm = #-0xb0
  2fbcc4: 9801         	ldr	r0, [sp, #0x4]
  2fbcc6: f08c f1ed    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48c3da
  2fbcca: 9b01         	ldr	r3, [sp, #0x4]
  2fbccc: 4618         	mov	r0, r3
  2fbcce: b003         	add	sp, #0xc
  2fbcd0: f85d fb04    	ldr	pc, [sp], #4

// ==== MenuTableView::~MenuTableView
//      file offset 0x2fbcd4 (= ELF address; Ghidra 0x30bcd4), 6 bytes, Thumb-2
  2fbcd4: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fbcd8: e7ee         	b	0x2fbcb8 <MenuTableView::~MenuTableView()> @ imm = #-0x24

// ==== MenuTableView::~MenuTableView
//      file offset 0x2fbcdc (= ELF address; Ghidra 0x30bcdc), 6 bytes, Thumb-2
  2fbcdc: f5a0 70cc    	sub.w	r0, r0, #0x198
  2fbce0: e7ea         	b	0x2fbcb8 <MenuTableView::~MenuTableView()> @ imm = #-0x2c

// ==== MenuTableView::~MenuTableView
//      file offset 0x2fbce4 (= ELF address; Ghidra 0x30bce4), 6 bytes, Thumb-2
  2fbce4: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2fbce8: e7e6         	b	0x2fbcb8 <MenuTableView::~MenuTableView()> @ imm = #-0x34

// ==== MenuTableView::MenuTableView
//      file offset 0x370ca0 (= ELF address; Ghidra 0x380ca0), 136 bytes, Thumb-2
  370ca0: b510         	push	{r4, lr}
  370ca2: b082         	sub	sp, #0x8
  370ca4: 9001         	str	r0, [sp, #0x4]
  370ca6: 4c1e         	ldr	r4, [pc, #0x78]         @ 0x370d20 <MenuTableView::MenuTableView()+0x80>
  370ca8: 447c         	add	r4, pc
  370caa: 9b01         	ldr	r3, [sp, #0x4]
  370cac: 4618         	mov	r0, r3
  370cae: f0e2 fa47    	bl	0x453140 <cocos2d::extension::CCTableView::CCTableView()> @ imm = #0xe248e
  370cb2: 9b01         	ldr	r3, [sp, #0x4]
  370cb4: f503 73e4    	add.w	r3, r3, #0x1c8
  370cb8: 4618         	mov	r0, r3
  370cba: f779 fc49    	bl	0x2ea550 <cocos2d::extension::CCTableViewDataSource::CCTableViewDataSource()> @ imm = #-0x8676e
  370cbe: 9b01         	ldr	r3, [sp, #0x4]
  370cc0: 4a18         	ldr	r2, [pc, #0x60]         @ 0x370d24 <MenuTableView::MenuTableView()+0x84>
  370cc2: 58a2         	ldr	r2, [r4, r2]
  370cc4: 3208         	adds	r2, #0x8
  370cc6: 601a         	str	r2, [r3]
  370cc8: 9b01         	ldr	r3, [sp, #0x4]
  370cca: 4a16         	ldr	r2, [pc, #0x58]         @ 0x370d24 <MenuTableView::MenuTableView()+0x84>
  370ccc: 58a2         	ldr	r2, [r4, r2]
  370cce: f502 720a    	add.w	r2, r2, #0x228
  370cd2: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  370cd6: 9b01         	ldr	r3, [sp, #0x4]
  370cd8: 4a12         	ldr	r2, [pc, #0x48]         @ 0x370d24 <MenuTableView::MenuTableView()+0x84>
  370cda: 58a2         	ldr	r2, [r4, r2]
  370cdc: f502 7216    	add.w	r2, r2, #0x258
  370ce0: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  370ce4: 9b01         	ldr	r3, [sp, #0x4]
  370ce6: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x370d24 <MenuTableView::MenuTableView()+0x84>
  370ce8: 58a2         	ldr	r2, [r4, r2]
  370cea: f502 7219    	add.w	r2, r2, #0x264
  370cee: f8c3 20ec    	str.w	r2, [r3, #0xec]
  370cf2: 9b01         	ldr	r3, [sp, #0x4]
  370cf4: 4a0b         	ldr	r2, [pc, #0x2c]         @ 0x370d24 <MenuTableView::MenuTableView()+0x84>
  370cf6: 58a2         	ldr	r2, [r4, r2]
  370cf8: f502 721d    	add.w	r2, r2, #0x274
  370cfc: f8c3 2198    	str.w	r2, [r3, #0x198]
  370d00: 9b01         	ldr	r3, [sp, #0x4]
  370d02: 4a08         	ldr	r2, [pc, #0x20]         @ 0x370d24 <MenuTableView::MenuTableView()+0x84>
  370d04: 58a2         	ldr	r2, [r4, r2]
  370d06: f502 7223    	add.w	r2, r2, #0x28c
  370d0a: f8c3 21c8    	str.w	r2, [r3, #0x1c8]
  370d0e: 9b01         	ldr	r3, [sp, #0x4]
  370d10: 2200         	movs	r2, #0x0
  370d12: f8c3 21cc    	str.w	r2, [r3, #0x1cc]
  370d16: 9b01         	ldr	r3, [sp, #0x4]
  370d18: 4618         	mov	r0, r3
  370d1a: b002         	add	sp, #0x8
  370d1c: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x370d1d); words below are literal-pool data ---
  370d1e: bf00         	nop
  370d20: 1d60         	adds	r0, r4, #0x5
  370d22: 005c         	lsls	r4, r3, #0x1
  370d24: d900         	bls	0x370d28 <MenuTableView::initWithViewSize(cocos2d::CCSize, cocos2d::CCNode*)> @ imm = #0x0
  370d26: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== MenuTableView::initWithViewSize
//      file offset 0x370d28 (= ELF address; Ghidra 0x380d28), 82 bytes, Thumb-2
  370d28: b510         	push	{r4, lr}
  370d2a: b086         	sub	sp, #0x18
  370d2c: 9003         	str	r0, [sp, #0xc]
  370d2e: 9102         	str	r1, [sp, #0x8]
  370d30: 9201         	str	r2, [sp, #0x4]
  370d32: 9c03         	ldr	r4, [sp, #0xc]
  370d34: ab04         	add	r3, sp, #0x10
  370d36: 4618         	mov	r0, r3
  370d38: 9902         	ldr	r1, [sp, #0x8]
  370d3a: f222 f9b9    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x222372
  370d3e: ab04         	add	r3, sp, #0x10
  370d40: 4620         	mov	r0, r4
  370d42: 4619         	mov	r1, r3
  370d44: 2200         	movs	r2, #0x0
  370d46: f0e2 f99d    	bl	0x453084 <cocos2d::extension::CCTableView::initWithViewSize(cocos2d::CCSize, cocos2d::CCNode*)> @ imm = #0xe233a
  370d4a: 9a03         	ldr	r2, [sp, #0xc]
  370d4c: 9b03         	ldr	r3, [sp, #0xc]
  370d4e: f503 73e4    	add.w	r3, r3, #0x1c8
  370d52: 4610         	mov	r0, r2
  370d54: 4619         	mov	r1, r3
  370d56: f7ff ff99    	bl	0x370c8c <cocos2d::extension::CCTableView::setDataSource(cocos2d::extension::CCTableViewDataSource*)> @ imm = #-0xce
  370d5a: 9b03         	ldr	r3, [sp, #0xc]
  370d5c: 2200         	movs	r2, #0x0
  370d5e: f8c3 21a0    	str.w	r2, [r3, #0x1a0]
  370d62: 9b03         	ldr	r3, [sp, #0xc]
  370d64: 4618         	mov	r0, r3
  370d66: f0e3 f831    	bl	0x453dcc <cocos2d::extension::CCTableView::_updateCellPositions()> @ imm = #0xe3062
  370d6a: 9b03         	ldr	r3, [sp, #0xc]
  370d6c: 4618         	mov	r0, r3
  370d6e: f0e2 fdc7    	bl	0x453900 <cocos2d::extension::CCTableView::_updateContentSize()> @ imm = #0xe2b8e
  370d72: 2301         	movs	r3, #0x1
  370d74: 4618         	mov	r0, r3
  370d76: b006         	add	sp, #0x18
  370d78: bd10         	pop	{r4, pc}

// ==== MenuTableView::cellTouched
//      file offset 0x370d7c (= ELF address; Ghidra 0x380d7c), 56 bytes, Thumb-2
  370d7c: b500         	push	{lr}
  370d7e: b085         	sub	sp, #0x14
  370d80: 9001         	str	r0, [sp, #0x4]
  370d82: 9100         	str	r1, [sp]
  370d84: 9a00         	ldr	r2, [sp]
  370d86: 9b01         	ldr	r3, [sp, #0x4]
  370d88: f8c3 21cc    	str.w	r2, [r3, #0x1cc]
  370d8c: 9b01         	ldr	r3, [sp, #0x4]
  370d8e: 4618         	mov	r0, r3
  370d90: 9900         	ldr	r1, [sp]
  370d92: f0e2 fbc1    	bl	0x453518 <cocos2d::extension::CCTableView::cellAtIndex(unsigned int)> @ imm = #0xe2782
  370d96: 4603         	mov	r3, r0
  370d98: 9302         	str	r3, [sp, #0x8]
  370d9a: 9b02         	ldr	r3, [sp, #0x8]
  370d9c: 681b         	ldr	r3, [r3]
  370d9e: 33d4         	adds	r3, #0xd4
  370da0: 681b         	ldr	r3, [r3]
  370da2: 9a02         	ldr	r2, [sp, #0x8]
  370da4: 4610         	mov	r0, r2
  370da6: 2101         	movs	r1, #0x1
  370da8: 4798         	blx	r3
  370daa: 4603         	mov	r3, r0
  370dac: 9303         	str	r3, [sp, #0xc]
  370dae: b005         	add	sp, #0x14
  370db0: f85d fb04    	ldr	pc, [sp], #4
