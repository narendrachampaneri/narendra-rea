// MenuLayer: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 24 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../MenuLayer.cpp

// ==== MenuLayer::create
//      file offset 0x369a0c (= ELF address; Ghidra 0x379a0c), 112 bytes, Thumb-2
  369a0c: b510         	push	{r4, lr}
  369a0e: b082         	sub	sp, #0x8
  369a10: f44f 70b2    	mov.w	r0, #0x164
  369a14: f01d f7a6    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x41df4c
  369a18: 4603         	mov	r3, r0
  369a1a: 461c         	mov	r4, r3
  369a1c: 4620         	mov	r0, r4
  369a1e: f000 f82d    	bl	0x369a7c <MenuLayer::MenuLayer()> @ imm = #0x5a
  369a22: 9401         	str	r4, [sp, #0x4]
  369a24: 9b01         	ldr	r3, [sp, #0x4]
  369a26: 2b00         	cmp	r3, #0x0
  369a28: d00a         	beq	0x369a40 <MenuLayer::create()+0x34> @ imm = #0x14
  369a2a: 9b01         	ldr	r3, [sp, #0x4]
  369a2c: 681b         	ldr	r3, [r3]
  369a2e: 3318         	adds	r3, #0x18
  369a30: 681b         	ldr	r3, [r3]
  369a32: 9801         	ldr	r0, [sp, #0x4]
  369a34: 4798         	blx	r3
  369a36: 4603         	mov	r3, r0
  369a38: 2b00         	cmp	r3, #0x0
  369a3a: d001         	beq	0x369a40 <MenuLayer::create()+0x34> @ imm = #0x2
  369a3c: 2301         	movs	r3, #0x1
  369a3e: e000         	b	0x369a42 <MenuLayer::create()+0x36> @ imm = #0x0
  369a40: 2300         	movs	r3, #0x0
  369a42: 2b00         	cmp	r3, #0x0
  369a44: d005         	beq	0x369a52 <MenuLayer::create()+0x46> @ imm = #0xa
  369a46: 9b01         	ldr	r3, [sp, #0x4]
  369a48: 4618         	mov	r0, r3
  369a4a: f22e fa57    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x22e4ae
  369a4e: 9b01         	ldr	r3, [sp, #0x4]
  369a50: e011         	b	0x369a76 <MenuLayer::create()+0x6a> @ imm = #0x22
  369a52: 9b01         	ldr	r3, [sp, #0x4]
  369a54: 2b00         	cmp	r3, #0x0
  369a56: d005         	beq	0x369a64 <MenuLayer::create()+0x58> @ imm = #0xa
  369a58: 9b01         	ldr	r3, [sp, #0x4]
  369a5a: 681b         	ldr	r3, [r3]
  369a5c: 3308         	adds	r3, #0x8
  369a5e: 681b         	ldr	r3, [r3]
  369a60: 9801         	ldr	r0, [sp, #0x4]
  369a62: 4798         	blx	r3
  369a64: 2300         	movs	r3, #0x0
  369a66: 9301         	str	r3, [sp, #0x4]
  369a68: 2300         	movs	r3, #0x0
  369a6a: e004         	b	0x369a76 <MenuLayer::create()+0x6a> @ imm = #0x8
  369a6c: 4620         	mov	r0, r4
  369a6e: f01e f319    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x41e632
  369a72: f01e f31b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x41e636
  369a76: 4618         	mov	r0, r3
  369a78: b002         	add	sp, #0x8
  369a7a: bd10         	pop	{r4, pc}

// ==== MenuLayer::MenuLayer
//      file offset 0x369a7c (= ELF address; Ghidra 0x379a7c), 88 bytes, Thumb-2
  369a7c: b510         	push	{r4, lr}
  369a7e: b082         	sub	sp, #0x8
  369a80: 9001         	str	r0, [sp, #0x4]
  369a82: 4c12         	ldr	r4, [pc, #0x48]         @ 0x369acc <MenuLayer::MenuLayer()+0x50>
  369a84: 447c         	add	r4, pc
  369a86: 9b01         	ldr	r3, [sp, #0x4]
  369a88: 4618         	mov	r0, r3
  369a8a: f243 fae7    	bl	0x5ad05c <cocos2d::CCLayer::CCLayer()> @ imm = #0x2435ce
  369a8e: 9b01         	ldr	r3, [sp, #0x4]
  369a90: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x369ad0 <MenuLayer::MenuLayer()+0x54>
  369a92: 58a2         	ldr	r2, [r4, r2]
  369a94: 3208         	adds	r2, #0x8
  369a96: 601a         	str	r2, [r3]
  369a98: 9b01         	ldr	r3, [sp, #0x4]
  369a9a: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x369ad0 <MenuLayer::MenuLayer()+0x54>
  369a9c: 58a2         	ldr	r2, [r4, r2]
  369a9e: f502 7204    	add.w	r2, r2, #0x210
  369aa2: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  369aa6: 9b01         	ldr	r3, [sp, #0x4]
  369aa8: 4a09         	ldr	r2, [pc, #0x24]         @ 0x369ad0 <MenuLayer::MenuLayer()+0x54>
  369aaa: 58a2         	ldr	r2, [r4, r2]
  369aac: f502 7210    	add.w	r2, r2, #0x240
  369ab0: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  369ab4: 9b01         	ldr	r3, [sp, #0x4]
  369ab6: 4a06         	ldr	r2, [pc, #0x18]         @ 0x369ad0 <MenuLayer::MenuLayer()+0x54>
  369ab8: 58a2         	ldr	r2, [r4, r2]
  369aba: f502 7213    	add.w	r2, r2, #0x24c
  369abe: f8c3 20ec    	str.w	r2, [r3, #0xec]
  369ac2: 9b01         	ldr	r3, [sp, #0x4]
  369ac4: 4618         	mov	r0, r3
  369ac6: b002         	add	sp, #0x8
  369ac8: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x369ac9); words below are literal-pool data ---
  369aca: bf00         	nop
  369acc: 8f84         	ldrh	r4, [r0, #0x3c]
  369ace: 005c         	lsls	r4, r3, #0x1
  369ad0: dbc0         	blt	0x369a54 <MenuLayer::create()+0x48> @ imm = #-0x80
  369ad2: ffff b500    	<unknown>

// ==== MenuLayer::scene
//      file offset 0x369ad4 (= ELF address; Ghidra 0x379ad4), 46 bytes, Thumb-2
  369ad4: b500         	push	{lr}
  369ad6: b083         	sub	sp, #0xc
  369ad8: f245 ffc2    	bl	0x5afa60 <cocos2d::CCScene::create()> @ imm = #0x245f84
  369adc: 4603         	mov	r3, r0
  369ade: 9300         	str	r3, [sp]
  369ae0: f7ff ff94    	bl	0x369a0c <MenuLayer::create()> @ imm = #-0xd8
  369ae4: 4603         	mov	r3, r0
  369ae6: 9301         	str	r3, [sp, #0x4]
  369ae8: 9b00         	ldr	r3, [sp]
  369aea: 681b         	ldr	r3, [r3]
  369aec: 33c8         	adds	r3, #0xc8
  369aee: 681b         	ldr	r3, [r3]
  369af0: 9a00         	ldr	r2, [sp]
  369af2: 4610         	mov	r0, r2
  369af4: 9901         	ldr	r1, [sp, #0x4]
  369af6: 4798         	blx	r3
  369af8: 9b00         	ldr	r3, [sp]
  369afa: 4618         	mov	r0, r3
  369afc: b003         	add	sp, #0xc
  369afe: f85d fb04    	ldr	pc, [sp], #4

// ==== MenuLayer::init
//      file offset 0x369b08 (= ELF address; Ghidra 0x379b08), 7160 bytes, Thumb-2
  369b08: b5f0         	push	{r4, r5, r6, r7, lr}
  369b0a: ed2d 8b02    	vpush	{d8}
  369b0e: b0d1         	sub	sp, #0x144
  369b10: ab03         	add	r3, sp, #0xc
  369b12: 6018         	str	r0, [r3]
  369b14: 4c66         	ldr	r4, [pc, #0x198]        @ 0x369cb0 <MenuLayer::init()+0x1a8>
  369b16: 447c         	add	r4, pc
  369b18: ab03         	add	r3, sp, #0xc
  369b1a: 681b         	ldr	r3, [r3]
  369b1c: 4618         	mov	r0, r3
  369b1e: f243 fb6b    	bl	0x5ad1f8 <cocos2d::CCLayer::init()> @ imm = #0x2436d6
  369b22: 4603         	mov	r3, r0
  369b24: 461a         	mov	r2, r3
  369b26: f10d 0313    	add.w	r3, sp, #0x13
  369b2a: 701a         	strb	r2, [r3]
  369b2c: ab03         	add	r3, sp, #0xc
  369b2e: 681b         	ldr	r3, [r3]
  369b30: 681b         	ldr	r3, [r3]
  369b32: f503 73fa    	add.w	r3, r3, #0x1f4
  369b36: 681b         	ldr	r3, [r3]
  369b38: aa03         	add	r2, sp, #0xc
  369b3a: 6812         	ldr	r2, [r2]
  369b3c: 4610         	mov	r0, r2
  369b3e: 2101         	movs	r1, #0x1
  369b40: 4798         	blx	r3
  369b42: ab48         	add	r3, sp, #0x120
  369b44: 4618         	mov	r0, r3
  369b46: f020 f455    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4208aa
  369b4a: aa4c         	add	r2, sp, #0x130
  369b4c: ab48         	add	r3, sp, #0x120
  369b4e: 4610         	mov	r0, r2
  369b50: 4a58         	ldr	r2, [pc, #0x160]        @ 0x369cb4 <MenuLayer::init()+0x1ac>
  369b52: 447a         	add	r2, pc
  369b54: 4611         	mov	r1, r2
  369b56: 461a         	mov	r2, r3
  369b58: f04c f782    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x44cf04
  369b5c: ab4c         	add	r3, sp, #0x130
  369b5e: 4618         	mov	r0, r3
  369b60: f0c7 fdfe    	bl	0x431760 <InAppPurchaseBridge::isProductPurchased(std::string)> @ imm = #0xc7bfc
  369b64: 4603         	mov	r3, r0
  369b66: 2b00         	cmp	r3, #0x0
  369b68: d001         	beq	0x369b6e <MenuLayer::init()+0x66> @ imm = #0x2
  369b6a: 230d         	movs	r3, #0xd
  369b6c: e000         	b	0x369b70 <MenuLayer::init()+0x68> @ imm = #0x0
  369b6e: 2301         	movs	r3, #0x1
  369b70: 4a51         	ldr	r2, [pc, #0x144]        @ 0x369cb8 <MenuLayer::init()+0x1b0>
  369b72: 58a2         	ldr	r2, [r4, r2]
  369b74: 6013         	str	r3, [r2]
  369b76: ab4c         	add	r3, sp, #0x130
  369b78: 4618         	mov	r0, r3
  369b7a: f04b f6cb    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44bd96
  369b7e: ab48         	add	r3, sp, #0x120
  369b80: 4618         	mov	r0, r3
  369b82: f020 f43b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x420876
  369b86: f0c2 fb75    	bl	0x42c274 <ApplicationInterface::hasCrashCartInstalled()> @ imm = #0xc26ea
  369b8a: 4603         	mov	r3, r0
  369b8c: 2b00         	cmp	r3, #0x0
  369b8e: d107         	bne	0x369ba0 <MenuLayer::init()+0x98> @ imm = #0xe
  369b90: f0c2 fe12    	bl	0x42c7b8 <ApplicationInterface::crashCartIsAvailable()> @ imm = #0xc2c24
  369b94: 4603         	mov	r3, r0
  369b96: f083 0301    	eor	r3, r3, #0x1
  369b9a: b2db         	uxtb	r3, r3
  369b9c: 2b00         	cmp	r3, #0x0
  369b9e: d001         	beq	0x369ba4 <MenuLayer::init()+0x9c> @ imm = #0x2
  369ba0: 2301         	movs	r3, #0x1
  369ba2: e000         	b	0x369ba6 <MenuLayer::init()+0x9e> @ imm = #0x0
  369ba4: 2300         	movs	r3, #0x0
  369ba6: 2b00         	cmp	r3, #0x0
  369ba8: d00f         	beq	0x369bca <MenuLayer::init()+0xc2> @ imm = #0x1e
  369baa: 4b44         	ldr	r3, [pc, #0x110]        @ 0x369cbc <MenuLayer::init()+0x1b4>
  369bac: 58e3         	ldr	r3, [r4, r3]
  369bae: 2201         	movs	r2, #0x1
  369bb0: 701a         	strb	r2, [r3]
  369bb2: 4b43         	ldr	r3, [pc, #0x10c]        @ 0x369cc0 <MenuLayer::init()+0x1b8>
  369bb4: 58e3         	ldr	r3, [r4, r3]
  369bb6: 2201         	movs	r2, #0x1
  369bb8: 701a         	strb	r2, [r3]
  369bba: 4b3f         	ldr	r3, [pc, #0xfc]         @ 0x369cb8 <MenuLayer::init()+0x1b0>
  369bbc: 58e3         	ldr	r3, [r4, r3]
  369bbe: 681b         	ldr	r3, [r3]
  369bc0: 1c9a         	adds	r2, r3, #0x2
  369bc2: 4b3d         	ldr	r3, [pc, #0xf4]         @ 0x369cb8 <MenuLayer::init()+0x1b0>
  369bc4: 58e3         	ldr	r3, [r4, r3]
  369bc6: 601a         	str	r2, [r3]
  369bc8: e014         	b	0x369bf4 <MenuLayer::init()+0xec> @ imm = #0x28
  369bca: f278 fd2f    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x278a5e
  369bce: 4603         	mov	r3, r0
  369bd0: 4618         	mov	r0, r3
  369bd2: 4b3c         	ldr	r3, [pc, #0xf0]         @ 0x369cc4 <MenuLayer::init()+0x1bc>
  369bd4: 447b         	add	r3, pc
  369bd6: 4619         	mov	r1, r3
  369bd8: 2200         	movs	r2, #0x0
  369bda: f278 fb25    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x27864a
  369bde: 4602         	mov	r2, r0
  369be0: ab10         	add	r3, sp, #0x40
  369be2: 601a         	str	r2, [r3]
  369be4: ab10         	add	r3, sp, #0x40
  369be6: 681b         	ldr	r3, [r3]
  369be8: 2b0a         	cmp	r3, #0xa
  369bea: dd03         	ble	0x369bf4 <MenuLayer::init()+0xec> @ imm = #0x6
  369bec: 4b34         	ldr	r3, [pc, #0xd0]         @ 0x369cc0 <MenuLayer::init()+0x1b8>
  369bee: 58e3         	ldr	r3, [r4, r3]
  369bf0: 2201         	movs	r2, #0x1
  369bf2: 701a         	strb	r2, [r3]
  369bf4: f0c2 fb6e    	bl	0x42c2d4 <ApplicationInterface::hasZombieRoadRageInstalled()> @ imm = #0xc26dc
  369bf8: 4603         	mov	r3, r0
  369bfa: 2b00         	cmp	r3, #0x0
  369bfc: d107         	bne	0x369c0e <MenuLayer::init()+0x106> @ imm = #0xe
  369bfe: f0c2 fdd7    	bl	0x42c7b0 <ApplicationInterface::zombieRoadRageIsAvailable()> @ imm = #0xc2bae
  369c02: 4603         	mov	r3, r0
  369c04: f083 0301    	eor	r3, r3, #0x1
  369c08: b2db         	uxtb	r3, r3
  369c0a: 2b00         	cmp	r3, #0x0
  369c0c: d001         	beq	0x369c12 <MenuLayer::init()+0x10a> @ imm = #0x2
  369c0e: 2301         	movs	r3, #0x1
  369c10: e000         	b	0x369c14 <MenuLayer::init()+0x10c> @ imm = #0x0
  369c12: 2300         	movs	r3, #0x0
  369c14: 2b00         	cmp	r3, #0x0
  369c16: d00f         	beq	0x369c38 <MenuLayer::init()+0x130> @ imm = #0x1e
  369c18: 4b2b         	ldr	r3, [pc, #0xac]         @ 0x369cc8 <MenuLayer::init()+0x1c0>
  369c1a: 58e3         	ldr	r3, [r4, r3]
  369c1c: 2201         	movs	r2, #0x1
  369c1e: 701a         	strb	r2, [r3]
  369c20: 4b2a         	ldr	r3, [pc, #0xa8]         @ 0x369ccc <MenuLayer::init()+0x1c4>
  369c22: 58e3         	ldr	r3, [r4, r3]
  369c24: 2201         	movs	r2, #0x1
  369c26: 701a         	strb	r2, [r3]
  369c28: 4b23         	ldr	r3, [pc, #0x8c]         @ 0x369cb8 <MenuLayer::init()+0x1b0>
  369c2a: 58e3         	ldr	r3, [r4, r3]
  369c2c: 681b         	ldr	r3, [r3]
  369c2e: 1c9a         	adds	r2, r3, #0x2
  369c30: 4b21         	ldr	r3, [pc, #0x84]         @ 0x369cb8 <MenuLayer::init()+0x1b0>
  369c32: 58e3         	ldr	r3, [r4, r3]
  369c34: 601a         	str	r2, [r3]
  369c36: e012         	b	0x369c5e <MenuLayer::init()+0x156> @ imm = #0x24
  369c38: f278 fcf8    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2789f0
  369c3c: 4603         	mov	r3, r0
  369c3e: 4618         	mov	r0, r3
  369c40: 4b23         	ldr	r3, [pc, #0x8c]         @ 0x369cd0 <MenuLayer::init()+0x1c8>
  369c42: 447b         	add	r3, pc
  369c44: 4619         	mov	r1, r3
  369c46: 2200         	movs	r2, #0x0
  369c48: f278 faee    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x2785dc
  369c4c: 4603         	mov	r3, r0
  369c4e: 9311         	str	r3, [sp, #0x44]
  369c50: 9b11         	ldr	r3, [sp, #0x44]
  369c52: 2b0a         	cmp	r3, #0xa
  369c54: dd03         	ble	0x369c5e <MenuLayer::init()+0x156> @ imm = #0x6
  369c56: 4b1d         	ldr	r3, [pc, #0x74]         @ 0x369ccc <MenuLayer::init()+0x1c4>
  369c58: 58e3         	ldr	r3, [r4, r3]
  369c5a: 2201         	movs	r2, #0x1
  369c5c: 701a         	strb	r2, [r3]
  369c5e: f0c2 fb99    	bl	0x42c394 <ApplicationInterface::hasDoodleArmyBCInstalled()> @ imm = #0xc2732
  369c62: 4603         	mov	r3, r0
  369c64: 2b00         	cmp	r3, #0x0
  369c66: d114         	bne	0x369c92 <MenuLayer::init()+0x18a> @ imm = #0x28
  369c68: f0c2 fdae    	bl	0x42c7c8 <ApplicationInterface::doodleArmyBCIsAvailable()> @ imm = #0xc2b5c
  369c6c: 4603         	mov	r3, r0
  369c6e: f083 0301    	eor	r3, r3, #0x1
  369c72: b2db         	uxtb	r3, r3
  369c74: 2b00         	cmp	r3, #0x0
  369c76: d10c         	bne	0x369c92 <MenuLayer::init()+0x18a> @ imm = #0x18
  369c78: f0c2 fb5c    	bl	0x42c334 <ApplicationInterface::hasDoodleArmyInstalled()> @ imm = #0xc26b8
  369c7c: 4603         	mov	r3, r0
  369c7e: 2b00         	cmp	r3, #0x0
  369c80: d107         	bne	0x369c92 <MenuLayer::init()+0x18a> @ imm = #0xe
  369c82: f0c2 fd9d    	bl	0x42c7c0 <ApplicationInterface::doodleArmyIsAvailable()> @ imm = #0xc2b3a
  369c86: 4603         	mov	r3, r0
  369c88: f083 0301    	eor	r3, r3, #0x1
  369c8c: b2db         	uxtb	r3, r3
  369c8e: 2b00         	cmp	r3, #0x0
  369c90: d001         	beq	0x369c96 <MenuLayer::init()+0x18e> @ imm = #0x2
  369c92: 2301         	movs	r3, #0x1
  369c94: e000         	b	0x369c98 <MenuLayer::init()+0x190> @ imm = #0x0
  369c96: 2300         	movs	r3, #0x0
  369c98: 2b00         	cmp	r3, #0x0
  369c9a: d01f         	beq	0x369cdc <MenuLayer::init()+0x1d4> @ imm = #0x3e
  369c9c: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x369cd4 <MenuLayer::init()+0x1cc>
  369c9e: 58e3         	ldr	r3, [r4, r3]
  369ca0: 2201         	movs	r2, #0x1
  369ca2: 701a         	strb	r2, [r3]
  369ca4: 4b0c         	ldr	r3, [pc, #0x30]         @ 0x369cd8 <MenuLayer::init()+0x1d0>
  369ca6: 58e3         	ldr	r3, [r4, r3]
  369ca8: 2201         	movs	r2, #0x1
  369caa: 701a         	strb	r2, [r3]
  369cac: e02b         	b	0x369d06 <MenuLayer::init()+0x1fe> @ imm = #0x56
  369cae: bf00         	nop
  369cb0: 8ef2         	ldrh	r2, [r6, #0x36]
  369cb2: 005c         	lsls	r4, r3, #0x1
  369cb4: 398a         	subs	r1, #0x8a
  369cb6: 0046         	lsls	r6, r0, #0x1
  369cb8: dbc4         	blt	0x369c44 <MenuLayer::init()+0x13c> @ imm = #-0x78
  369cba: ffff d8ac    	vtbl.8	d29, {d31}, d28
  369cbe: ffff d768    	<unknown>
  369cc2: ffff 3924    	vtbl.8	d19, {d15, d16}, d20
  369cc6: 0046         	lsls	r6, r0, #0x1
  369cc8: d8a8         	bhi	0x369c1c <MenuLayer::init()+0x114> @ imm = #-0xb0
  369cca: ffff d76c    	<unknown>
  369cce: ffff 38c2    	vtbx.8	d19, {d31}, d2
  369cd2: 0046         	lsls	r6, r0, #0x1
  369cd4: d8a4         	bhi	0x369c20 <MenuLayer::init()+0x118> @ imm = #-0xb8
  369cd6: ffff dbc8    	vtbx.8	d29, {d31, fpinst2, mvfr0, mvfr1}, d8
  369cda: ffff f278    	<unknown>
  369cde: fca6 4603    	stc2	p6, c4, [r6], #12
  369ce2: 4618         	mov	r0, r3
  369ce4: f8df 3768    	ldr.w	r3, [pc, #0x768]        @ 0x36a450 <MenuLayer::init()+0x948>
  369ce8: 447b         	add	r3, pc
  369cea: 4619         	mov	r1, r3
  369cec: 2200         	movs	r2, #0x0
  369cee: f278 fa9b    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x278536
  369cf2: 4603         	mov	r3, r0
  369cf4: 9312         	str	r3, [sp, #0x48]
  369cf6: 9b12         	ldr	r3, [sp, #0x48]
  369cf8: 2b0a         	cmp	r3, #0xa
  369cfa: dd04         	ble	0x369d06 <MenuLayer::init()+0x1fe> @ imm = #0x8
  369cfc: f8df 3754    	ldr.w	r3, [pc, #0x754]        @ 0x36a454 <MenuLayer::init()+0x94c>
  369d00: 58e3         	ldr	r3, [r4, r3]
  369d02: 2201         	movs	r2, #0x1
  369d04: 701a         	strb	r2, [r3]
  369d06: ab03         	add	r3, sp, #0xc
  369d08: 681b         	ldr	r3, [r3]
  369d0a: 2200         	movs	r2, #0x0
  369d0c: f883 2108    	strb.w	r2, [r3, #0x108]
  369d10: ab03         	add	r3, sp, #0xc
  369d12: 681b         	ldr	r3, [r3]
  369d14: 2200         	movs	r2, #0x0
  369d16: f8c3 2158    	str.w	r2, [r3, #0x158]
  369d1a: ab03         	add	r3, sp, #0xc
  369d1c: 681b         	ldr	r3, [r3]
  369d1e: f04f 0200    	mov.w	r2, #0x0
  369d22: f8c3 2150    	str.w	r2, [r3, #0x150]
  369d26: ab2c         	add	r3, sp, #0xb0
  369d28: 4618         	mov	r0, r3
  369d2a: f8df 372c    	ldr.w	r3, [pc, #0x72c]        @ 0x36a458 <MenuLayer::init()+0x950>
  369d2e: 58e3         	ldr	r3, [r4, r3]
  369d30: 4619         	mov	r1, r3
  369d32: f229 f9bd    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x22937a
  369d36: ed9d 7a2c    	vldr	s14, [sp, #176]
  369d3a: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  369d3e: eec7 6a27    	vdiv.f32	s13, s14, s15
  369d42: ed9d 7a2d    	vldr	s14, [sp, #180]
  369d46: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  369d4a: eec7 7a27    	vdiv.f32	s15, s14, s15
  369d4e: ab2e         	add	r3, sp, #0xb8
  369d50: 4618         	mov	r0, r3
  369d52: ee16 1a90    	vmov	r1, s13
  369d56: ee17 2a90    	vmov	r2, s15
  369d5a: f228 ffc9    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x228f92
  369d5e: f04f 0300    	mov.w	r3, #0x0
  369d62: 9313         	str	r3, [sp, #0x4c]
  369d64: f04f 0300    	mov.w	r3, #0x0
  369d68: f2cc 1320    	movt	r3, #0xc120
  369d6c: 9314         	str	r3, [sp, #0x50]
  369d6e: f04f 0300    	mov.w	r3, #0x0
  369d72: f2c4 2340    	movt	r3, #0x4240
  369d76: 9315         	str	r3, [sp, #0x54]
  369d78: f8df 36e0    	ldr.w	r3, [pc, #0x6e0]        @ 0x36a45c <MenuLayer::init()+0x954>
  369d7c: 447b         	add	r3, pc
  369d7e: 4618         	mov	r0, r3
  369d80: f26e fac0    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x26e580
  369d84: 4603         	mov	r3, r0
  369d86: 9316         	str	r3, [sp, #0x58]
  369d88: f8df 36d4    	ldr.w	r3, [pc, #0x6d4]        @ 0x36a460 <MenuLayer::init()+0x958>
  369d8c: 447b         	add	r3, pc
  369d8e: 4618         	mov	r0, r3
  369d90: f26e fab8    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x26e570
  369d94: 4603         	mov	r3, r0
  369d96: 9317         	str	r3, [sp, #0x5c]
  369d98: f8df 36c8    	ldr.w	r3, [pc, #0x6c8]        @ 0x36a464 <MenuLayer::init()+0x95c>
  369d9c: 447b         	add	r3, pc
  369d9e: 4618         	mov	r0, r3
  369da0: f26e fab0    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x26e560
  369da4: 4603         	mov	r3, r0
  369da6: 9318         	str	r3, [sp, #0x60]
  369da8: f8df 36bc    	ldr.w	r3, [pc, #0x6bc]        @ 0x36a468 <MenuLayer::init()+0x960>
  369dac: 447b         	add	r3, pc
  369dae: 4618         	mov	r0, r3
  369db0: f26e faa8    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x26e550
  369db4: 4603         	mov	r3, r0
  369db6: 9319         	str	r3, [sp, #0x64]
  369db8: f8df 36b0    	ldr.w	r3, [pc, #0x6b0]        @ 0x36a46c <MenuLayer::init()+0x964>
  369dbc: 447b         	add	r3, pc
  369dbe: 4618         	mov	r0, r3
  369dc0: f26e faa0    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x26e540
  369dc4: 4603         	mov	r3, r0
  369dc6: 931a         	str	r3, [sp, #0x68]
  369dc8: f8df 36a4    	ldr.w	r3, [pc, #0x6a4]        @ 0x36a470 <MenuLayer::init()+0x968>
  369dcc: 447b         	add	r3, pc
  369dce: 4618         	mov	r0, r3
  369dd0: f26e fa98    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x26e530
  369dd4: 4603         	mov	r3, r0
  369dd6: 931b         	str	r3, [sp, #0x6c]
  369dd8: f8df 3698    	ldr.w	r3, [pc, #0x698]        @ 0x36a474 <MenuLayer::init()+0x96c>
  369ddc: 447b         	add	r3, pc
  369dde: 4618         	mov	r0, r3
  369de0: f26e fa90    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x26e520
  369de4: 4603         	mov	r3, r0
  369de6: 931c         	str	r3, [sp, #0x70]
  369de8: f8df 368c    	ldr.w	r3, [pc, #0x68c]        @ 0x36a478 <MenuLayer::init()+0x970>
  369dec: 447b         	add	r3, pc
  369dee: 4618         	mov	r0, r3
  369df0: f26e fa88    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x26e510
  369df4: 4603         	mov	r3, r0
  369df6: 931d         	str	r3, [sp, #0x74]
  369df8: ab03         	add	r3, sp, #0xc
  369dfa: 681a         	ldr	r2, [r3]
  369dfc: f8df 367c    	ldr.w	r3, [pc, #0x67c]        @ 0x36a47c <MenuLayer::init()+0x974>
  369e00: 58e3         	ldr	r3, [r4, r3]
  369e02: 9336         	str	r3, [sp, #0xd8]
  369e04: 2300         	movs	r3, #0x0
  369e06: 9337         	str	r3, [sp, #0xdc]
  369e08: 9b37         	ldr	r3, [sp, #0xdc]
  369e0a: 9300         	str	r3, [sp]
  369e0c: 9b36         	ldr	r3, [sp, #0xd8]
  369e0e: 9816         	ldr	r0, [sp, #0x58]
  369e10: 9916         	ldr	r1, [sp, #0x58]
  369e12: f24e fa8b    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x24e516
  369e16: 4603         	mov	r3, r0
  369e18: 931e         	str	r3, [sp, #0x78]
  369e1a: 981e         	ldr	r0, [sp, #0x78]
  369e1c: 2100         	movs	r1, #0x0
  369e1e: f24b f98d    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x24b31a
  369e22: 4602         	mov	r2, r0
  369e24: ab03         	add	r3, sp, #0xc
  369e26: 681b         	ldr	r3, [r3]
  369e28: f8c3 2140    	str.w	r2, [r3, #0x140]
  369e2c: ab03         	add	r3, sp, #0xc
  369e2e: 681b         	ldr	r3, [r3]
  369e30: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  369e34: 4618         	mov	r0, r3
  369e36: f22e f857    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x22e0ae
  369e3a: ab03         	add	r3, sp, #0xc
  369e3c: 681b         	ldr	r3, [r3]
  369e3e: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  369e42: 681b         	ldr	r3, [r3]
  369e44: 334c         	adds	r3, #0x4c
  369e46: 681d         	ldr	r5, [r3]
  369e48: ab03         	add	r3, sp, #0xc
  369e4a: 681b         	ldr	r3, [r3]
  369e4c: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  369e50: 461e         	mov	r6, r3
  369e52: ed9d 7a2e    	vldr	s14, [sp, #184]
  369e56: eddd 7a13    	vldr	s15, [sp, #76]
  369e5a: ee77 6a27    	vadd.f32	s13, s14, s15
  369e5e: ed9d 7a2f    	vldr	s14, [sp, #188]
  369e62: eddd 7a14    	vldr	s15, [sp, #80]
  369e66: ee37 7a27    	vadd.f32	s14, s14, s15
  369e6a: eddd 7a15    	vldr	s15, [sp, #84]
  369e6e: ee77 7aa7    	vadd.f32	s15, s15, s15
  369e72: ee77 7a27    	vadd.f32	s15, s14, s15
  369e76: ab4c         	add	r3, sp, #0x130
  369e78: 4618         	mov	r0, r3
  369e7a: ee16 1a90    	vmov	r1, s13
  369e7e: ee17 2a90    	vmov	r2, s15
  369e82: f228 ff35    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x228e6a
  369e86: ab4c         	add	r3, sp, #0x130
  369e88: 4630         	mov	r0, r6
  369e8a: 4619         	mov	r1, r3
  369e8c: 47a8         	blx	r5
  369e8e: ab03         	add	r3, sp, #0xc
  369e90: 681b         	ldr	r3, [r3]
  369e92: 681b         	ldr	r3, [r3]
  369e94: 33c8         	adds	r3, #0xc8
  369e96: 681b         	ldr	r3, [r3]
  369e98: aa03         	add	r2, sp, #0xc
  369e9a: 6811         	ldr	r1, [r2]
  369e9c: aa03         	add	r2, sp, #0xc
  369e9e: 6812         	ldr	r2, [r2]
  369ea0: f8d2 2140    	ldr.w	r2, [r2, #0x140]
  369ea4: 4608         	mov	r0, r1
  369ea6: 4611         	mov	r1, r2
  369ea8: 4798         	blx	r3
  369eaa: ab03         	add	r3, sp, #0xc
  369eac: 681a         	ldr	r2, [r3]
  369eae: f8df 35d0    	ldr.w	r3, [pc, #0x5d0]        @ 0x36a480 <MenuLayer::init()+0x978>
  369eb2: 58e3         	ldr	r3, [r4, r3]
  369eb4: 9338         	str	r3, [sp, #0xe0]
  369eb6: 2300         	movs	r3, #0x0
  369eb8: 9339         	str	r3, [sp, #0xe4]
  369eba: 9b39         	ldr	r3, [sp, #0xe4]
  369ebc: 9300         	str	r3, [sp]
  369ebe: 9b38         	ldr	r3, [sp, #0xe0]
  369ec0: 9817         	ldr	r0, [sp, #0x5c]
  369ec2: 9917         	ldr	r1, [sp, #0x5c]
  369ec4: f24e fa32    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x24e464
  369ec8: 4603         	mov	r3, r0
  369eca: 931f         	str	r3, [sp, #0x7c]
  369ecc: 981f         	ldr	r0, [sp, #0x7c]
  369ece: 2100         	movs	r1, #0x0
  369ed0: f24b f934    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x24b268
  369ed4: 4602         	mov	r2, r0
  369ed6: ab03         	add	r3, sp, #0xc
  369ed8: 681b         	ldr	r3, [r3]
  369eda: f8c3 2130    	str.w	r2, [r3, #0x130]
  369ede: ab03         	add	r3, sp, #0xc
  369ee0: 681b         	ldr	r3, [r3]
  369ee2: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  369ee6: 4618         	mov	r0, r3
  369ee8: f22d fffe    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x22dffc
  369eec: ab03         	add	r3, sp, #0xc
  369eee: 681b         	ldr	r3, [r3]
  369ef0: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  369ef4: 681b         	ldr	r3, [r3]
  369ef6: 334c         	adds	r3, #0x4c
  369ef8: 681d         	ldr	r5, [r3]
  369efa: ab03         	add	r3, sp, #0xc
  369efc: 681b         	ldr	r3, [r3]
  369efe: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  369f02: 461e         	mov	r6, r3
  369f04: ed9d 7a2e    	vldr	s14, [sp, #184]
  369f08: eddd 7a13    	vldr	s15, [sp, #76]
  369f0c: ee77 6a27    	vadd.f32	s13, s14, s15
  369f10: ed9d 7a2f    	vldr	s14, [sp, #188]
  369f14: eddd 7a14    	vldr	s15, [sp, #80]
  369f18: ee37 7a27    	vadd.f32	s14, s14, s15
  369f1c: eddd 7a15    	vldr	s15, [sp, #84]
  369f20: ee77 7a27    	vadd.f32	s15, s14, s15
  369f24: ab4c         	add	r3, sp, #0x130
  369f26: 4618         	mov	r0, r3
  369f28: ee16 1a90    	vmov	r1, s13
  369f2c: ee17 2a90    	vmov	r2, s15
  369f30: f228 fede    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x228dbc
  369f34: ab4c         	add	r3, sp, #0x130
  369f36: 4630         	mov	r0, r6
  369f38: 4619         	mov	r1, r3
  369f3a: 47a8         	blx	r5
  369f3c: ab03         	add	r3, sp, #0xc
  369f3e: 681b         	ldr	r3, [r3]
  369f40: 681b         	ldr	r3, [r3]
  369f42: 33c8         	adds	r3, #0xc8
  369f44: 681b         	ldr	r3, [r3]
  369f46: aa03         	add	r2, sp, #0xc
  369f48: 6811         	ldr	r1, [r2]
  369f4a: aa03         	add	r2, sp, #0xc
  369f4c: 6812         	ldr	r2, [r2]
  369f4e: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  369f52: 4608         	mov	r0, r1
  369f54: 4611         	mov	r1, r2
  369f56: 4798         	blx	r3
  369f58: ab03         	add	r3, sp, #0xc
  369f5a: 681a         	ldr	r2, [r3]
  369f5c: f8df 3524    	ldr.w	r3, [pc, #0x524]        @ 0x36a484 <MenuLayer::init()+0x97c>
  369f60: 58e3         	ldr	r3, [r4, r3]
  369f62: 933a         	str	r3, [sp, #0xe8]
  369f64: 2300         	movs	r3, #0x0
  369f66: 933b         	str	r3, [sp, #0xec]
  369f68: 9b3b         	ldr	r3, [sp, #0xec]
  369f6a: 9300         	str	r3, [sp]
  369f6c: 9b3a         	ldr	r3, [sp, #0xe8]
  369f6e: 9818         	ldr	r0, [sp, #0x60]
  369f70: 9918         	ldr	r1, [sp, #0x60]
  369f72: f24e f9db    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x24e3b6
  369f76: 4603         	mov	r3, r0
  369f78: 9320         	str	r3, [sp, #0x80]
  369f7a: 9820         	ldr	r0, [sp, #0x80]
  369f7c: 2100         	movs	r1, #0x0
  369f7e: f24b f8dd    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x24b1ba
  369f82: 4602         	mov	r2, r0
  369f84: ab03         	add	r3, sp, #0xc
  369f86: 681b         	ldr	r3, [r3]
  369f88: f8c3 2138    	str.w	r2, [r3, #0x138]
  369f8c: ab03         	add	r3, sp, #0xc
  369f8e: 681b         	ldr	r3, [r3]
  369f90: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  369f94: 4618         	mov	r0, r3
  369f96: f22d ffa7    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x22df4e
  369f9a: ab03         	add	r3, sp, #0xc
  369f9c: 681b         	ldr	r3, [r3]
  369f9e: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  369fa2: 681b         	ldr	r3, [r3]
  369fa4: 334c         	adds	r3, #0x4c
  369fa6: 681d         	ldr	r5, [r3]
  369fa8: ab03         	add	r3, sp, #0xc
  369faa: 681b         	ldr	r3, [r3]
  369fac: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  369fb0: 461e         	mov	r6, r3
  369fb2: ed9d 7a2e    	vldr	s14, [sp, #184]
  369fb6: eddd 7a13    	vldr	s15, [sp, #76]
  369fba: ee77 6a27    	vadd.f32	s13, s14, s15
  369fbe: ed9d 7a2f    	vldr	s14, [sp, #188]
  369fc2: eddd 7a14    	vldr	s15, [sp, #80]
  369fc6: ee77 7a27    	vadd.f32	s15, s14, s15
  369fca: ab4c         	add	r3, sp, #0x130
  369fcc: 4618         	mov	r0, r3
  369fce: ee16 1a90    	vmov	r1, s13
  369fd2: ee17 2a90    	vmov	r2, s15
  369fd6: f228 fe8b    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x228d16
  369fda: ab4c         	add	r3, sp, #0x130
  369fdc: 4630         	mov	r0, r6
  369fde: 4619         	mov	r1, r3
  369fe0: 47a8         	blx	r5
  369fe2: ab03         	add	r3, sp, #0xc
  369fe4: 681b         	ldr	r3, [r3]
  369fe6: 681b         	ldr	r3, [r3]
  369fe8: 33c8         	adds	r3, #0xc8
  369fea: 681b         	ldr	r3, [r3]
  369fec: aa03         	add	r2, sp, #0xc
  369fee: 6811         	ldr	r1, [r2]
  369ff0: aa03         	add	r2, sp, #0xc
  369ff2: 6812         	ldr	r2, [r2]
  369ff4: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  369ff8: 4608         	mov	r0, r1
  369ffa: 4611         	mov	r1, r2
  369ffc: 4798         	blx	r3
  369ffe: ab03         	add	r3, sp, #0xc
  36a000: 681a         	ldr	r2, [r3]
  36a002: f8df 3484    	ldr.w	r3, [pc, #0x484]        @ 0x36a488 <MenuLayer::init()+0x980>
  36a006: 58e3         	ldr	r3, [r4, r3]
  36a008: 933c         	str	r3, [sp, #0xf0]
  36a00a: 2300         	movs	r3, #0x0
  36a00c: 933d         	str	r3, [sp, #0xf4]
  36a00e: 9b3d         	ldr	r3, [sp, #0xf4]
  36a010: 9300         	str	r3, [sp]
  36a012: 9b3c         	ldr	r3, [sp, #0xf0]
  36a014: 9819         	ldr	r0, [sp, #0x64]
  36a016: 9919         	ldr	r1, [sp, #0x64]
  36a018: f24e f988    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x24e310
  36a01c: 4603         	mov	r3, r0
  36a01e: 9321         	str	r3, [sp, #0x84]
  36a020: 9821         	ldr	r0, [sp, #0x84]
  36a022: 2100         	movs	r1, #0x0
  36a024: f24b f88a    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x24b114
  36a028: 4602         	mov	r2, r0
  36a02a: ab03         	add	r3, sp, #0xc
  36a02c: 681b         	ldr	r3, [r3]
  36a02e: f8c3 2134    	str.w	r2, [r3, #0x134]
  36a032: ab03         	add	r3, sp, #0xc
  36a034: 681b         	ldr	r3, [r3]
  36a036: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  36a03a: 4618         	mov	r0, r3
  36a03c: f22d ff54    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x22dea8
  36a040: ab03         	add	r3, sp, #0xc
  36a042: 681b         	ldr	r3, [r3]
  36a044: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  36a048: 681b         	ldr	r3, [r3]
  36a04a: 334c         	adds	r3, #0x4c
  36a04c: 681d         	ldr	r5, [r3]
  36a04e: ab03         	add	r3, sp, #0xc
  36a050: 681b         	ldr	r3, [r3]
  36a052: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  36a056: 461e         	mov	r6, r3
  36a058: ed9d 7a2e    	vldr	s14, [sp, #184]
  36a05c: eddd 7a13    	vldr	s15, [sp, #76]
  36a060: ee77 6a27    	vadd.f32	s13, s14, s15
  36a064: ed9d 7a2f    	vldr	s14, [sp, #188]
  36a068: eddd 7a14    	vldr	s15, [sp, #80]
  36a06c: ee37 7a27    	vadd.f32	s14, s14, s15
  36a070: eddd 7a15    	vldr	s15, [sp, #84]
  36a074: ee77 7a67    	vsub.f32	s15, s14, s15
  36a078: ab4c         	add	r3, sp, #0x130
  36a07a: 4618         	mov	r0, r3
  36a07c: ee16 1a90    	vmov	r1, s13
  36a080: ee17 2a90    	vmov	r2, s15
  36a084: f228 fe34    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x228c68
  36a088: ab4c         	add	r3, sp, #0x130
  36a08a: 4630         	mov	r0, r6
  36a08c: 4619         	mov	r1, r3
  36a08e: 47a8         	blx	r5
  36a090: ab03         	add	r3, sp, #0xc
  36a092: 681b         	ldr	r3, [r3]
  36a094: 681b         	ldr	r3, [r3]
  36a096: 33c8         	adds	r3, #0xc8
  36a098: 681b         	ldr	r3, [r3]
  36a09a: aa03         	add	r2, sp, #0xc
  36a09c: 6811         	ldr	r1, [r2]
  36a09e: aa03         	add	r2, sp, #0xc
  36a0a0: 6812         	ldr	r2, [r2]
  36a0a2: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  36a0a6: 4608         	mov	r0, r1
  36a0a8: 4611         	mov	r1, r2
  36a0aa: 4798         	blx	r3
  36a0ac: ab03         	add	r3, sp, #0xc
  36a0ae: 681a         	ldr	r2, [r3]
  36a0b0: 4bf6         	ldr	r3, [pc, #0x3d8]        @ 0x36a48c <MenuLayer::init()+0x984>
  36a0b2: 58e3         	ldr	r3, [r4, r3]
  36a0b4: 933e         	str	r3, [sp, #0xf8]
  36a0b6: 2300         	movs	r3, #0x0
  36a0b8: 933f         	str	r3, [sp, #0xfc]
  36a0ba: 9b3f         	ldr	r3, [sp, #0xfc]
  36a0bc: 9300         	str	r3, [sp]
  36a0be: 9b3e         	ldr	r3, [sp, #0xf8]
  36a0c0: 981a         	ldr	r0, [sp, #0x68]
  36a0c2: 991a         	ldr	r1, [sp, #0x68]
  36a0c4: f24e f932    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x24e264
  36a0c8: 4603         	mov	r3, r0
  36a0ca: 9322         	str	r3, [sp, #0x88]
  36a0cc: 9822         	ldr	r0, [sp, #0x88]
  36a0ce: 2100         	movs	r1, #0x0
  36a0d0: f24b f834    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x24b068
  36a0d4: 4602         	mov	r2, r0
  36a0d6: ab03         	add	r3, sp, #0xc
  36a0d8: 681b         	ldr	r3, [r3]
  36a0da: f8c3 213c    	str.w	r2, [r3, #0x13c]
  36a0de: ab03         	add	r3, sp, #0xc
  36a0e0: 681b         	ldr	r3, [r3]
  36a0e2: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  36a0e6: 4618         	mov	r0, r3
  36a0e8: f22d fefe    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x22ddfc
  36a0ec: ab03         	add	r3, sp, #0xc
  36a0ee: 681b         	ldr	r3, [r3]
  36a0f0: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  36a0f4: 681b         	ldr	r3, [r3]
  36a0f6: 334c         	adds	r3, #0x4c
  36a0f8: 681d         	ldr	r5, [r3]
  36a0fa: ab03         	add	r3, sp, #0xc
  36a0fc: 681b         	ldr	r3, [r3]
  36a0fe: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  36a102: 461e         	mov	r6, r3
  36a104: ed9d 7a2e    	vldr	s14, [sp, #184]
  36a108: eddd 7a13    	vldr	s15, [sp, #76]
  36a10c: ee77 6a27    	vadd.f32	s13, s14, s15
  36a110: ed9d 7a2f    	vldr	s14, [sp, #188]
  36a114: eddd 7a14    	vldr	s15, [sp, #80]
  36a118: ee37 7a27    	vadd.f32	s14, s14, s15
  36a11c: eddd 7a15    	vldr	s15, [sp, #84]
  36a120: ee77 7aa7    	vadd.f32	s15, s15, s15
  36a124: ee77 7a67    	vsub.f32	s15, s14, s15
  36a128: ab4c         	add	r3, sp, #0x130
  36a12a: 4618         	mov	r0, r3
  36a12c: ee16 1a90    	vmov	r1, s13
  36a130: ee17 2a90    	vmov	r2, s15
  36a134: f228 fddc    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x228bb8
  36a138: ab4c         	add	r3, sp, #0x130
  36a13a: 4630         	mov	r0, r6
  36a13c: 4619         	mov	r1, r3
  36a13e: 47a8         	blx	r5
  36a140: ab03         	add	r3, sp, #0xc
  36a142: 681b         	ldr	r3, [r3]
  36a144: 681b         	ldr	r3, [r3]
  36a146: 33c8         	adds	r3, #0xc8
  36a148: 681b         	ldr	r3, [r3]
  36a14a: aa03         	add	r2, sp, #0xc
  36a14c: 6811         	ldr	r1, [r2]
  36a14e: aa03         	add	r2, sp, #0xc
  36a150: 6812         	ldr	r2, [r2]
  36a152: f8d2 213c    	ldr.w	r2, [r2, #0x13c]
  36a156: 4608         	mov	r0, r1
  36a158: 4611         	mov	r1, r2
  36a15a: 4798         	blx	r3
  36a15c: ab03         	add	r3, sp, #0xc
  36a15e: 681a         	ldr	r2, [r3]
  36a160: 4bcb         	ldr	r3, [pc, #0x32c]        @ 0x36a490 <MenuLayer::init()+0x988>
  36a162: 58e3         	ldr	r3, [r4, r3]
  36a164: 9340         	str	r3, [sp, #0x100]
  36a166: 2300         	movs	r3, #0x0
  36a168: 9341         	str	r3, [sp, #0x104]
  36a16a: 9b41         	ldr	r3, [sp, #0x104]
  36a16c: 9300         	str	r3, [sp]
  36a16e: 9b40         	ldr	r3, [sp, #0x100]
  36a170: 981b         	ldr	r0, [sp, #0x6c]
  36a172: 991b         	ldr	r1, [sp, #0x6c]
  36a174: f24e f8da    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x24e1b4
  36a178: 4603         	mov	r3, r0
  36a17a: 9323         	str	r3, [sp, #0x8c]
  36a17c: 9823         	ldr	r0, [sp, #0x8c]
  36a17e: 2100         	movs	r1, #0x0
  36a180: f24a ffdc    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x24afb8
  36a184: 4602         	mov	r2, r0
  36a186: ab03         	add	r3, sp, #0xc
  36a188: 681b         	ldr	r3, [r3]
  36a18a: f8c3 212c    	str.w	r2, [r3, #0x12c]
  36a18e: ab03         	add	r3, sp, #0xc
  36a190: 681b         	ldr	r3, [r3]
  36a192: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  36a196: 4618         	mov	r0, r3
  36a198: f22d fea6    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x22dd4c
  36a19c: ab03         	add	r3, sp, #0xc
  36a19e: 681b         	ldr	r3, [r3]
  36a1a0: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  36a1a4: 681b         	ldr	r3, [r3]
  36a1a6: 334c         	adds	r3, #0x4c
  36a1a8: 681d         	ldr	r5, [r3]
  36a1aa: ab03         	add	r3, sp, #0xc
  36a1ac: 681b         	ldr	r3, [r3]
  36a1ae: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  36a1b2: 461e         	mov	r6, r3
  36a1b4: ed9d 7a2c    	vldr	s14, [sp, #176]
  36a1b8: eddf 7aa4    	vldr	s15, [pc, #656]         @ 0x36a44c <MenuLayer::init()+0x944>
  36a1bc: ee77 7a67    	vsub.f32	s15, s14, s15
  36a1c0: ab4c         	add	r3, sp, #0x130
  36a1c2: 4618         	mov	r0, r3
  36a1c4: ee17 1a90    	vmov	r1, s15
  36a1c8: f04f 0200    	mov.w	r2, #0x0
  36a1cc: f2c4 3208    	movt	r2, #0x4308
  36a1d0: f228 fd8e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x228b1c
  36a1d4: ab4c         	add	r3, sp, #0x130
  36a1d6: 4630         	mov	r0, r6
  36a1d8: 4619         	mov	r1, r3
  36a1da: 47a8         	blx	r5
  36a1dc: ab03         	add	r3, sp, #0xc
  36a1de: 681b         	ldr	r3, [r3]
  36a1e0: 681b         	ldr	r3, [r3]
  36a1e2: 33c8         	adds	r3, #0xc8
  36a1e4: 681b         	ldr	r3, [r3]
  36a1e6: aa03         	add	r2, sp, #0xc
  36a1e8: 6811         	ldr	r1, [r2]
  36a1ea: aa03         	add	r2, sp, #0xc
  36a1ec: 6812         	ldr	r2, [r2]
  36a1ee: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  36a1f2: 4608         	mov	r0, r1
  36a1f4: 4611         	mov	r1, r2
  36a1f6: 4798         	blx	r3
  36a1f8: ab03         	add	r3, sp, #0xc
  36a1fa: 681a         	ldr	r2, [r3]
  36a1fc: 4ba5         	ldr	r3, [pc, #0x294]        @ 0x36a494 <MenuLayer::init()+0x98c>
  36a1fe: 58e3         	ldr	r3, [r4, r3]
  36a200: 9342         	str	r3, [sp, #0x108]
  36a202: 2300         	movs	r3, #0x0
  36a204: 9343         	str	r3, [sp, #0x10c]
  36a206: 9b43         	ldr	r3, [sp, #0x10c]
  36a208: 9300         	str	r3, [sp]
  36a20a: 9b42         	ldr	r3, [sp, #0x108]
  36a20c: 981c         	ldr	r0, [sp, #0x70]
  36a20e: 991c         	ldr	r1, [sp, #0x70]
  36a210: f24e f88c    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x24e118
  36a214: 4603         	mov	r3, r0
  36a216: 9324         	str	r3, [sp, #0x90]
  36a218: 9824         	ldr	r0, [sp, #0x90]
  36a21a: 2100         	movs	r1, #0x0
  36a21c: f24a ff8e    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x24af1c
  36a220: 4602         	mov	r2, r0
  36a222: ab03         	add	r3, sp, #0xc
  36a224: 681b         	ldr	r3, [r3]
  36a226: f8c3 2144    	str.w	r2, [r3, #0x144]
  36a22a: ab03         	add	r3, sp, #0xc
  36a22c: 681b         	ldr	r3, [r3]
  36a22e: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  36a232: 4618         	mov	r0, r3
  36a234: f22d fe58    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x22dcb0
  36a238: ab03         	add	r3, sp, #0xc
  36a23a: 681b         	ldr	r3, [r3]
  36a23c: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  36a240: 681b         	ldr	r3, [r3]
  36a242: 334c         	adds	r3, #0x4c
  36a244: 681d         	ldr	r5, [r3]
  36a246: ab03         	add	r3, sp, #0xc
  36a248: 681b         	ldr	r3, [r3]
  36a24a: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  36a24e: 461e         	mov	r6, r3
  36a250: ed9d 7a2c    	vldr	s14, [sp, #176]
  36a254: eddf 7a7d    	vldr	s15, [pc, #500]         @ 0x36a44c <MenuLayer::init()+0x944>
  36a258: ee77 7a67    	vsub.f32	s15, s14, s15
  36a25c: ab4c         	add	r3, sp, #0x130
  36a25e: 4618         	mov	r0, r3
  36a260: ee17 1a90    	vmov	r1, s15
  36a264: f04f 4284    	mov.w	r2, #0x42000000
  36a268: f228 fd42    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x228a84
  36a26c: ab4c         	add	r3, sp, #0x130
  36a26e: 4630         	mov	r0, r6
  36a270: 4619         	mov	r1, r3
  36a272: 47a8         	blx	r5
  36a274: ab03         	add	r3, sp, #0xc
  36a276: 681b         	ldr	r3, [r3]
  36a278: 681b         	ldr	r3, [r3]
  36a27a: 33c8         	adds	r3, #0xc8
  36a27c: 681b         	ldr	r3, [r3]
  36a27e: aa03         	add	r2, sp, #0xc
  36a280: 6811         	ldr	r1, [r2]
  36a282: aa03         	add	r2, sp, #0xc
  36a284: 6812         	ldr	r2, [r2]
  36a286: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  36a28a: 4608         	mov	r0, r1
  36a28c: 4611         	mov	r1, r2
  36a28e: 4798         	blx	r3
  36a290: ab03         	add	r3, sp, #0xc
  36a292: 681a         	ldr	r2, [r3]
  36a294: 4b80         	ldr	r3, [pc, #0x200]        @ 0x36a498 <MenuLayer::init()+0x990>
  36a296: 58e3         	ldr	r3, [r4, r3]
  36a298: 9344         	str	r3, [sp, #0x110]
  36a29a: 2300         	movs	r3, #0x0
  36a29c: 9345         	str	r3, [sp, #0x114]
  36a29e: 9b45         	ldr	r3, [sp, #0x114]
  36a2a0: 9300         	str	r3, [sp]
  36a2a2: 9b44         	ldr	r3, [sp, #0x110]
  36a2a4: 981d         	ldr	r0, [sp, #0x74]
  36a2a6: 991d         	ldr	r1, [sp, #0x74]
  36a2a8: f24e f840    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x24e080
  36a2ac: 4603         	mov	r3, r0
  36a2ae: 9325         	str	r3, [sp, #0x94]
  36a2b0: 9825         	ldr	r0, [sp, #0x94]
  36a2b2: 2100         	movs	r1, #0x0
  36a2b4: f24a ff42    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x24ae84
  36a2b8: 4602         	mov	r2, r0
  36a2ba: ab03         	add	r3, sp, #0xc
  36a2bc: 681b         	ldr	r3, [r3]
  36a2be: f8c3 2148    	str.w	r2, [r3, #0x148]
  36a2c2: ab03         	add	r3, sp, #0xc
  36a2c4: 681b         	ldr	r3, [r3]
  36a2c6: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  36a2ca: 4618         	mov	r0, r3
  36a2cc: f22d fe0c    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x22dc18
  36a2d0: ab03         	add	r3, sp, #0xc
  36a2d2: 681b         	ldr	r3, [r3]
  36a2d4: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  36a2d8: 681b         	ldr	r3, [r3]
  36a2da: 334c         	adds	r3, #0x4c
  36a2dc: 681d         	ldr	r5, [r3]
  36a2de: ab03         	add	r3, sp, #0xc
  36a2e0: 681b         	ldr	r3, [r3]
  36a2e2: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  36a2e6: 461e         	mov	r6, r3
  36a2e8: ed9d 7a2c    	vldr	s14, [sp, #176]
  36a2ec: eddf 7a57    	vldr	s15, [pc, #348]         @ 0x36a44c <MenuLayer::init()+0x944>
  36a2f0: ee77 7a67    	vsub.f32	s15, s14, s15
  36a2f4: ab4c         	add	r3, sp, #0x130
  36a2f6: 4618         	mov	r0, r3
  36a2f8: ee17 1a90    	vmov	r1, s15
  36a2fc: f04f 0200    	mov.w	r2, #0x0
  36a300: f2c4 22a8    	movt	r2, #0x42a8
  36a304: f228 fcf4    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2289e8
  36a308: ab4c         	add	r3, sp, #0x130
  36a30a: 4630         	mov	r0, r6
  36a30c: 4619         	mov	r1, r3
  36a30e: 47a8         	blx	r5
  36a310: ab03         	add	r3, sp, #0xc
  36a312: 681b         	ldr	r3, [r3]
  36a314: 681b         	ldr	r3, [r3]
  36a316: 33c8         	adds	r3, #0xc8
  36a318: 681b         	ldr	r3, [r3]
  36a31a: aa03         	add	r2, sp, #0xc
  36a31c: 6811         	ldr	r1, [r2]
  36a31e: aa03         	add	r2, sp, #0xc
  36a320: 6812         	ldr	r2, [r2]
  36a322: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  36a326: 4608         	mov	r0, r1
  36a328: 4611         	mov	r1, r2
  36a32a: 4798         	blx	r3
  36a32c: f0c2 f9ee    	bl	0x42c70c <ApplicationInterface::getRandomAdNumber()> @ imm = #0xc23dc
  36a330: 4602         	mov	r2, r0
  36a332: ab03         	add	r3, sp, #0xc
  36a334: 681b         	ldr	r3, [r3]
  36a336: f8c3 2158    	str.w	r2, [r3, #0x158]
  36a33a: ab03         	add	r3, sp, #0xc
  36a33c: 681b         	ldr	r3, [r3]
  36a33e: f8d3 3158    	ldr.w	r3, [r3, #0x158]
  36a342: aa05         	add	r2, sp, #0x14
  36a344: 4610         	mov	r0, r2
  36a346: 4619         	mov	r1, r3
  36a348: f0c2 f9e4    	bl	0x42c714 <ApplicationInterface::getAdSpriteName(int)> @ imm = #0xc23c8
  36a34c: ab05         	add	r3, sp, #0x14
  36a34e: 4618         	mov	r0, r3
  36a350: f04a f7d6    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x44afac
  36a354: 4603         	mov	r3, r0
  36a356: 4618         	mov	r0, r3
  36a358: f26d ffd4    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x26dfa8
  36a35c: 4603         	mov	r3, r0
  36a35e: 9326         	str	r3, [sp, #0x98]
  36a360: ab03         	add	r3, sp, #0xc
  36a362: 681a         	ldr	r2, [r3]
  36a364: 4b4d         	ldr	r3, [pc, #0x134]        @ 0x36a49c <MenuLayer::init()+0x994>
  36a366: 58e3         	ldr	r3, [r4, r3]
  36a368: 9346         	str	r3, [sp, #0x118]
  36a36a: 2300         	movs	r3, #0x0
  36a36c: 9347         	str	r3, [sp, #0x11c]
  36a36e: 9b47         	ldr	r3, [sp, #0x11c]
  36a370: 9300         	str	r3, [sp]
  36a372: 9b46         	ldr	r3, [sp, #0x118]
  36a374: 9826         	ldr	r0, [sp, #0x98]
  36a376: 9926         	ldr	r1, [sp, #0x98]
  36a378: f24d ffd8    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x24dfb0
  36a37c: 4603         	mov	r3, r0
  36a37e: 9327         	str	r3, [sp, #0x9c]
  36a380: 9827         	ldr	r0, [sp, #0x9c]
  36a382: 2100         	movs	r1, #0x0
  36a384: f24a feda    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x24adb4
  36a388: 4602         	mov	r2, r0
  36a38a: ab03         	add	r3, sp, #0xc
  36a38c: 681b         	ldr	r3, [r3]
  36a38e: f8c3 2154    	str.w	r2, [r3, #0x154]
  36a392: ab03         	add	r3, sp, #0xc
  36a394: 681b         	ldr	r3, [r3]
  36a396: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  36a39a: 4618         	mov	r0, r3
  36a39c: f22d fda4    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x22db48
  36a3a0: ab03         	add	r3, sp, #0xc
  36a3a2: 681b         	ldr	r3, [r3]
  36a3a4: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  36a3a8: 681b         	ldr	r3, [r3]
  36a3aa: 334c         	adds	r3, #0x4c
  36a3ac: 681d         	ldr	r5, [r3]
  36a3ae: ab03         	add	r3, sp, #0xc
  36a3b0: 681b         	ldr	r3, [r3]
  36a3b2: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  36a3b6: 461e         	mov	r6, r3
  36a3b8: ed9d 7a2c    	vldr	s14, [sp, #176]
  36a3bc: eddf 7a23    	vldr	s15, [pc, #140]         @ 0x36a44c <MenuLayer::init()+0x944>
  36a3c0: ee77 7a67    	vsub.f32	s15, s14, s15
  36a3c4: ab4c         	add	r3, sp, #0x130
  36a3c6: 4618         	mov	r0, r3
  36a3c8: ee17 1a90    	vmov	r1, s15
  36a3cc: f04f 0200    	mov.w	r2, #0x0
  36a3d0: f2c4 3259    	movt	r2, #0x4359
  36a3d4: f228 fc8c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x228918
  36a3d8: ab4c         	add	r3, sp, #0x130
  36a3da: 4630         	mov	r0, r6
  36a3dc: 4619         	mov	r1, r3
  36a3de: 47a8         	blx	r5
  36a3e0: ab03         	add	r3, sp, #0xc
  36a3e2: 681b         	ldr	r3, [r3]
  36a3e4: 681b         	ldr	r3, [r3]
  36a3e6: 33c8         	adds	r3, #0xc8
  36a3e8: 681b         	ldr	r3, [r3]
  36a3ea: aa03         	add	r2, sp, #0xc
  36a3ec: 6811         	ldr	r1, [r2]
  36a3ee: aa03         	add	r2, sp, #0xc
  36a3f0: 6812         	ldr	r2, [r2]
  36a3f2: f8d2 2154    	ldr.w	r2, [r2, #0x154]
  36a3f6: 4608         	mov	r0, r1
  36a3f8: 4611         	mov	r1, r2
  36a3fa: 4798         	blx	r3
  36a3fc: f64c 43cd    	movw	r3, #0xcccd
  36a400: f6c3 730c    	movt	r3, #0x3f0c
  36a404: 9328         	str	r3, [sp, #0xa0]
  36a406: f04f 0300    	mov.w	r3, #0x0
  36a40a: f2c4 13c0    	movt	r3, #0x41c0
  36a40e: 9329         	str	r3, [sp, #0xa4]
  36a410: f04f 4341    	mov.w	r3, #0xc1000000
  36a414: 932a         	str	r3, [sp, #0xa8]
  36a416: 4b22         	ldr	r3, [pc, #0x88]         @ 0x36a4a0 <MenuLayer::init()+0x998>
  36a418: 447b         	add	r3, pc
  36a41a: 4618         	mov	r0, r3
  36a41c: f04a f770    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x44aee0
  36a420: 4603         	mov	r3, r0
  36a422: 2220         	movs	r2, #0x20
  36a424: 9200         	str	r2, [sp]
  36a426: 4a1f         	ldr	r2, [pc, #0x7c]         @ 0x36a4a4 <MenuLayer::init()+0x99c>
  36a428: 447a         	add	r2, pc
  36a42a: 4610         	mov	r0, r2
  36a42c: 4619         	mov	r1, r3
  36a42e: 2220         	movs	r2, #0x20
  36a430: 2320         	movs	r3, #0x20
  36a432: f23a ffa1    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x23af42
  36a436: 4602         	mov	r2, r0
  36a438: ab03         	add	r3, sp, #0xc
  36a43a: 681b         	ldr	r3, [r3]
  36a43c: f8c3 211c    	str.w	r2, [r3, #0x11c]
  36a440: ab03         	add	r3, sp, #0xc
  36a442: 681b         	ldr	r3, [r3]
  36a444: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  36a448: e02e         	b	0x36a4a8 <MenuLayer::init()+0x9a0> @ imm = #0x5c
  36a44a: bf00         	nop
  36a44c: 0000         	movs	r0, r0
  36a44e: 4260         	rsbs	r0, r4, #0
  36a450: 3828         	subs	r0, #0x28
  36a452: 0046         	lsls	r6, r0, #0x1
  36a454: dbc8         	blt	0x36a3e8 <MenuLayer::init()+0x8e0> @ imm = #-0x70
  36a456: ffff d724    	<unknown>
  36a45a: ffff 37a0    	<unknown>
  36a45e: 0046         	lsls	r6, r0, #0x1
  36a460: 379c         	adds	r7, #0x9c
  36a462: 0046         	lsls	r6, r0, #0x1
  36a464: 378c         	adds	r7, #0x8c
  36a466: 0046         	lsls	r6, r0, #0x1
  36a468: 377c         	adds	r7, #0x7c
  36a46a: 0046         	lsls	r6, r0, #0x1
  36a46c: 3778         	adds	r7, #0x78
  36a46e: 0046         	lsls	r6, r0, #0x1
  36a470: 3774         	adds	r7, #0x74
  36a472: 0046         	lsls	r6, r0, #0x1
  36a474: 3764         	adds	r7, #0x64
  36a476: 0046         	lsls	r6, r0, #0x1
  36a478: 3754         	adds	r7, #0x54
  36a47a: 0046         	lsls	r6, r0, #0x1
  36a47c: dbcc         	blt	0x36a418 <MenuLayer::init()+0x910> @ imm = #-0x68
  36a47e: ffff dbd0    	<unknown>
  36a482: ffff dbd4    	<unknown>
  36a486: ffff dbd8    	<unknown>
  36a48a: ffff dbdc    	<unknown>
  36a48e: ffff dbe0    	vtbx.8	d29, {d31, fpinst2, mvfr0, mvfr1}, d16
  36a492: ffff dbe4    	vtbx.8	d29, {d31, fpinst2, mvfr0, mvfr1}, d20
  36a496: ffff dbe8    	vtbx.8	d29, {d31, fpinst2, mvfr0, mvfr1}, d24
  36a49a: ffff dbec    	vtbx.8	d29, {d31, fpinst2, mvfr0, mvfr1}, d28
  36a49e: ffff 6480    	<unknown>
  36a4a2: 005d         	lsls	r5, r3, #0x1
  36a4a4: 3124         	adds	r1, #0x24
  36a4a6: 0046         	lsls	r6, r0, #0x1
  36a4a8: 4618         	mov	r0, r3
  36a4aa: f22d fd1d    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x22da3a
  36a4ae: ab03         	add	r3, sp, #0xc
  36a4b0: 681b         	ldr	r3, [r3]
  36a4b2: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  36a4b6: eddd 7a29    	vldr	s15, [sp, #164]
  36a4ba: eefd 7ae7    	vcvt.s32.f32	s15, s15
  36a4be: ee17 2a90    	vmov	r2, s15
  36a4c2: 4618         	mov	r0, r3
  36a4c4: 4611         	mov	r1, r2
  36a4c6: f23b fc5d    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x23b8ba
  36a4ca: ab03         	add	r3, sp, #0xc
  36a4cc: 681b         	ldr	r3, [r3]
  36a4ce: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  36a4d2: 681b         	ldr	r3, [r3]
  36a4d4: 3340         	adds	r3, #0x40
  36a4d6: 681b         	ldr	r3, [r3]
  36a4d8: aa03         	add	r2, sp, #0xc
  36a4da: 6812         	ldr	r2, [r2]
  36a4dc: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  36a4e0: 4610         	mov	r0, r2
  36a4e2: 9928         	ldr	r1, [sp, #0xa0]
  36a4e4: 4798         	blx	r3
  36a4e6: ab03         	add	r3, sp, #0xc
  36a4e8: 681b         	ldr	r3, [r3]
  36a4ea: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  36a4ee: 681b         	ldr	r3, [r3]
  36a4f0: 334c         	adds	r3, #0x4c
  36a4f2: 681d         	ldr	r5, [r3]
  36a4f4: ab03         	add	r3, sp, #0xc
  36a4f6: 681b         	ldr	r3, [r3]
  36a4f8: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  36a4fc: 461e         	mov	r6, r3
  36a4fe: ab03         	add	r3, sp, #0xc
  36a500: 681b         	ldr	r3, [r3]
  36a502: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  36a506: 681b         	ldr	r3, [r3]
  36a508: 3350         	adds	r3, #0x50
  36a50a: 681b         	ldr	r3, [r3]
  36a50c: aa03         	add	r2, sp, #0xc
  36a50e: 6812         	ldr	r2, [r2]
  36a510: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  36a514: 4610         	mov	r0, r2
  36a516: 4798         	blx	r3
  36a518: 4603         	mov	r3, r0
  36a51a: 681f         	ldr	r7, [r3]
  36a51c: ab03         	add	r3, sp, #0xc
  36a51e: 681b         	ldr	r3, [r3]
  36a520: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  36a524: 681b         	ldr	r3, [r3]
  36a526: 3350         	adds	r3, #0x50
  36a528: 681b         	ldr	r3, [r3]
  36a52a: aa03         	add	r2, sp, #0xc
  36a52c: 6812         	ldr	r2, [r2]
  36a52e: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  36a532: 4610         	mov	r0, r2
  36a534: 4798         	blx	r3
  36a536: 4603         	mov	r3, r0
  36a538: 685b         	ldr	r3, [r3, #0x4]
  36a53a: aa30         	add	r2, sp, #0xc0
  36a53c: 4610         	mov	r0, r2
  36a53e: 4639         	mov	r1, r7
  36a540: 461a         	mov	r2, r3
  36a542: f228 fbd5    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2287aa
  36a546: eddd 7a2a    	vldr	s15, [sp, #168]
  36a54a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  36a54e: ab48         	add	r3, sp, #0x120
  36a550: 4618         	mov	r0, r3
  36a552: ed9f 0baf    	vldr	d0, [pc, #700]          @ 0x36a810 <MenuLayer::init()+0xd08>
  36a556: eeb0 1b47    	vmov.f64	d1, d7
  36a55a: f7fe fb97    	bl	0x368c8c <MapStaticShape::~MapStaticShape()+0x1a4> @ imm = #-0x18d2
  36a55e: ed9d 8b48    	vldr	d8, [sp, #288]
  36a562: ab03         	add	r3, sp, #0xc
  36a564: 681b         	ldr	r3, [r3]
  36a566: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  36a56a: 681b         	ldr	r3, [r3]
  36a56c: f503 73fe    	add.w	r3, r3, #0x1fc
  36a570: 681b         	ldr	r3, [r3]
  36a572: aa03         	add	r2, sp, #0xc
  36a574: 6812         	ldr	r2, [r2]
  36a576: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  36a57a: 4610         	mov	r0, r2
  36a57c: 4798         	blx	r3
  36a57e: 4607         	mov	r7, r0
  36a580: ab0f         	add	r3, sp, #0x3c
  36a582: 4618         	mov	r0, r3
  36a584: f01f f736    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x41fe6c
  36a588: aa06         	add	r2, sp, #0x18
  36a58a: ab0f         	add	r3, sp, #0x3c
  36a58c: 4610         	mov	r0, r2
  36a58e: 4639         	mov	r1, r7
  36a590: 461a         	mov	r2, r3
  36a592: f04c f265    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x44c4ca
  36a596: ab06         	add	r3, sp, #0x18
  36a598: 4618         	mov	r0, r3
  36a59a: f04a f55f    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x44aabe
  36a59e: 4603         	mov	r3, r0
  36a5a0: ee07 3a90    	vmov	s15, r3
  36a5a4: eeb8 7a67    	vcvt.f32.u32	s14, s15
  36a5a8: eddd 7a29    	vldr	s15, [sp, #164]
  36a5ac: ee27 7a27    	vmul.f32	s14, s14, s15
  36a5b0: eddd 7a28    	vldr	s15, [sp, #160]
  36a5b4: ee27 7a27    	vmul.f32	s14, s14, s15
  36a5b8: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  36a5bc: eec7 7a27    	vdiv.f32	s15, s14, s15
  36a5c0: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  36a5c4: ee38 7b47    	vsub.f64	d7, d8, d7
  36a5c8: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  36a5cc: eddd 7a2a    	vldr	s15, [sp, #168]
  36a5d0: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  36a5d4: ab4c         	add	r3, sp, #0x130
  36a5d6: 4618         	mov	r0, r3
  36a5d8: ed9f 0b8d    	vldr	d0, [pc, #564]          @ 0x36a810 <MenuLayer::init()+0xd08>
  36a5dc: eeb0 1b47    	vmov.f64	d1, d7
  36a5e0: f7fe fb54    	bl	0x368c8c <MapStaticShape::~MapStaticShape()+0x1a4> @ imm = #-0x1958
  36a5e4: ed9d 7b4e    	vldr	d7, [sp, #312]
  36a5e8: eef7 7bc7    	vcvt.f32.f64	s15, d7
  36a5ec: ab32         	add	r3, sp, #0xc8
  36a5ee: 4618         	mov	r0, r3
  36a5f0: ee18 1a10    	vmov	r1, s16
  36a5f4: ee17 2a90    	vmov	r2, s15
  36a5f8: f228 fb7a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2286f4
  36a5fc: a934         	add	r1, sp, #0xd0
  36a5fe: aa30         	add	r2, sp, #0xc0
  36a600: ab32         	add	r3, sp, #0xc8
  36a602: 4608         	mov	r0, r1
  36a604: 4611         	mov	r1, r2
  36a606: 461a         	mov	r2, r3
  36a608: f7fe fb30    	bl	0x368c6c <MapStaticShape::~MapStaticShape()+0x184> @ imm = #-0x19a0
  36a60c: ab34         	add	r3, sp, #0xd0
  36a60e: 4630         	mov	r0, r6
  36a610: 4619         	mov	r1, r3
  36a612: 47a8         	blx	r5
  36a614: ab06         	add	r3, sp, #0x18
  36a616: 4618         	mov	r0, r3
  36a618: f04b f17c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44b2f8
  36a61c: ab0f         	add	r3, sp, #0x3c
  36a61e: 4618         	mov	r0, r3
  36a620: f01f f6ec    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41fdd8
  36a624: ab03         	add	r3, sp, #0xc
  36a626: 681b         	ldr	r3, [r3]
  36a628: 681b         	ldr	r3, [r3]
  36a62a: 33c8         	adds	r3, #0xc8
  36a62c: 681b         	ldr	r3, [r3]
  36a62e: aa03         	add	r2, sp, #0xc
  36a630: 6811         	ldr	r1, [r2]
  36a632: aa03         	add	r2, sp, #0xc
  36a634: 6812         	ldr	r2, [r2]
  36a636: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  36a63a: 4608         	mov	r0, r1
  36a63c: 4611         	mov	r1, r2
  36a63e: 4798         	blx	r3
  36a640: 4b75         	ldr	r3, [pc, #0x1d4]        @ 0x36a818 <MenuLayer::init()+0xd10>
  36a642: 447b         	add	r3, pc
  36a644: 4618         	mov	r0, r3
  36a646: f04a f65b    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x44acb6
  36a64a: 4603         	mov	r3, r0
  36a64c: 2220         	movs	r2, #0x20
  36a64e: 9200         	str	r2, [sp]
  36a650: 4a72         	ldr	r2, [pc, #0x1c8]        @ 0x36a81c <MenuLayer::init()+0xd14>
  36a652: 447a         	add	r2, pc
  36a654: 4610         	mov	r0, r2
  36a656: 4619         	mov	r1, r3
  36a658: 2220         	movs	r2, #0x20
  36a65a: 2320         	movs	r3, #0x20
  36a65c: f23a fe8c    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x23ad18
  36a660: 4602         	mov	r2, r0
  36a662: ab03         	add	r3, sp, #0xc
  36a664: 681b         	ldr	r3, [r3]
  36a666: f8c3 2110    	str.w	r2, [r3, #0x110]
  36a66a: ab03         	add	r3, sp, #0xc
  36a66c: 681b         	ldr	r3, [r3]
  36a66e: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  36a672: 4618         	mov	r0, r3
  36a674: f22d fc38    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x22d870
  36a678: ab03         	add	r3, sp, #0xc
  36a67a: 681b         	ldr	r3, [r3]
  36a67c: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  36a680: eddd 7a29    	vldr	s15, [sp, #164]
  36a684: eefd 7ae7    	vcvt.s32.f32	s15, s15
  36a688: ee17 2a90    	vmov	r2, s15
  36a68c: 4618         	mov	r0, r3
  36a68e: 4611         	mov	r1, r2
  36a690: f23b fb78    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x23b6f0
  36a694: ab03         	add	r3, sp, #0xc
  36a696: 681b         	ldr	r3, [r3]
  36a698: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  36a69c: 681b         	ldr	r3, [r3]
  36a69e: 3340         	adds	r3, #0x40
  36a6a0: 681b         	ldr	r3, [r3]
  36a6a2: aa03         	add	r2, sp, #0xc
  36a6a4: 6812         	ldr	r2, [r2]
  36a6a6: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  36a6aa: 4610         	mov	r0, r2
  36a6ac: 9928         	ldr	r1, [sp, #0xa0]
  36a6ae: 4798         	blx	r3
  36a6b0: ab03         	add	r3, sp, #0xc
  36a6b2: 681b         	ldr	r3, [r3]
  36a6b4: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  36a6b8: 681b         	ldr	r3, [r3]
  36a6ba: 334c         	adds	r3, #0x4c
  36a6bc: 681d         	ldr	r5, [r3]
  36a6be: ab03         	add	r3, sp, #0xc
  36a6c0: 681b         	ldr	r3, [r3]
  36a6c2: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  36a6c6: 461e         	mov	r6, r3
  36a6c8: ab03         	add	r3, sp, #0xc
  36a6ca: 681b         	ldr	r3, [r3]
  36a6cc: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  36a6d0: 681b         	ldr	r3, [r3]
  36a6d2: 3350         	adds	r3, #0x50
  36a6d4: 681b         	ldr	r3, [r3]
  36a6d6: aa03         	add	r2, sp, #0xc
  36a6d8: 6812         	ldr	r2, [r2]
  36a6da: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  36a6de: 4610         	mov	r0, r2
  36a6e0: 4798         	blx	r3
  36a6e2: 4603         	mov	r3, r0
  36a6e4: 681f         	ldr	r7, [r3]
  36a6e6: ab03         	add	r3, sp, #0xc
  36a6e8: 681b         	ldr	r3, [r3]
  36a6ea: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  36a6ee: 681b         	ldr	r3, [r3]
  36a6f0: 3350         	adds	r3, #0x50
  36a6f2: 681b         	ldr	r3, [r3]
  36a6f4: aa03         	add	r2, sp, #0xc
  36a6f6: 6812         	ldr	r2, [r2]
  36a6f8: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  36a6fc: 4610         	mov	r0, r2
  36a6fe: 4798         	blx	r3
  36a700: 4603         	mov	r3, r0
  36a702: 685b         	ldr	r3, [r3, #0x4]
  36a704: aa30         	add	r2, sp, #0xc0
  36a706: 4610         	mov	r0, r2
  36a708: 4639         	mov	r1, r7
  36a70a: 461a         	mov	r2, r3
  36a70c: f228 faf0    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2285e0
  36a710: eddd 7a2a    	vldr	s15, [sp, #168]
  36a714: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  36a718: ab48         	add	r3, sp, #0x120
  36a71a: 4618         	mov	r0, r3
  36a71c: ed9f 0b3c    	vldr	d0, [pc, #240]          @ 0x36a810 <MenuLayer::init()+0xd08>
  36a720: eeb0 1b47    	vmov.f64	d1, d7
  36a724: f7fe fab2    	bl	0x368c8c <MapStaticShape::~MapStaticShape()+0x1a4> @ imm = #-0x1a9c
  36a728: ed9d 8b48    	vldr	d8, [sp, #288]
  36a72c: ab03         	add	r3, sp, #0xc
  36a72e: 681b         	ldr	r3, [r3]
  36a730: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  36a734: 681b         	ldr	r3, [r3]
  36a736: f503 73fe    	add.w	r3, r3, #0x1fc
  36a73a: 681b         	ldr	r3, [r3]
  36a73c: aa03         	add	r2, sp, #0xc
  36a73e: 6812         	ldr	r2, [r2]
  36a740: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  36a744: 4610         	mov	r0, r2
  36a746: 4798         	blx	r3
  36a748: 4607         	mov	r7, r0
  36a74a: ab0f         	add	r3, sp, #0x3c
  36a74c: 4618         	mov	r0, r3
  36a74e: f01f f651    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x41fca2
  36a752: aa07         	add	r2, sp, #0x1c
  36a754: ab0f         	add	r3, sp, #0x3c
  36a756: 4610         	mov	r0, r2
  36a758: 4639         	mov	r1, r7
  36a75a: 461a         	mov	r2, r3
  36a75c: f04c f180    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x44c300
  36a760: ab07         	add	r3, sp, #0x1c
  36a762: 4618         	mov	r0, r3
  36a764: f04a f47a    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x44a8f4
  36a768: 4603         	mov	r3, r0
  36a76a: ee07 3a90    	vmov	s15, r3
  36a76e: eeb8 7a67    	vcvt.f32.u32	s14, s15
  36a772: eddd 7a29    	vldr	s15, [sp, #164]
  36a776: ee27 7a27    	vmul.f32	s14, s14, s15
  36a77a: eddd 7a28    	vldr	s15, [sp, #160]
  36a77e: ee27 7a27    	vmul.f32	s14, s14, s15
  36a782: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  36a786: eec7 7a27    	vdiv.f32	s15, s14, s15
  36a78a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  36a78e: ee38 7b47    	vsub.f64	d7, d8, d7
  36a792: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  36a796: eddd 7a2a    	vldr	s15, [sp, #168]
  36a79a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  36a79e: ab4c         	add	r3, sp, #0x130
  36a7a0: 4618         	mov	r0, r3
  36a7a2: ed9f 0b1b    	vldr	d0, [pc, #108]          @ 0x36a810 <MenuLayer::init()+0xd08>
  36a7a6: eeb0 1b47    	vmov.f64	d1, d7
  36a7aa: f7fe fa6f    	bl	0x368c8c <MapStaticShape::~MapStaticShape()+0x1a4> @ imm = #-0x1b22
  36a7ae: ed9d 7b4e    	vldr	d7, [sp, #312]
  36a7b2: eef7 7bc7    	vcvt.f32.f64	s15, d7
  36a7b6: ab32         	add	r3, sp, #0xc8
  36a7b8: 4618         	mov	r0, r3
  36a7ba: ee18 1a10    	vmov	r1, s16
  36a7be: ee17 2a90    	vmov	r2, s15
  36a7c2: f228 fa95    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x22852a
  36a7c6: a934         	add	r1, sp, #0xd0
  36a7c8: aa30         	add	r2, sp, #0xc0
  36a7ca: ab32         	add	r3, sp, #0xc8
  36a7cc: 4608         	mov	r0, r1
  36a7ce: 4611         	mov	r1, r2
  36a7d0: 461a         	mov	r2, r3
  36a7d2: f7fe fa4b    	bl	0x368c6c <MapStaticShape::~MapStaticShape()+0x184> @ imm = #-0x1b6a
  36a7d6: ab34         	add	r3, sp, #0xd0
  36a7d8: 4630         	mov	r0, r6
  36a7da: 4619         	mov	r1, r3
  36a7dc: 47a8         	blx	r5
  36a7de: ab07         	add	r3, sp, #0x1c
  36a7e0: 4618         	mov	r0, r3
  36a7e2: f04b f097    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44b12e
  36a7e6: ab0f         	add	r3, sp, #0x3c
  36a7e8: 4618         	mov	r0, r3
  36a7ea: f01f f607    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41fc0e
  36a7ee: ab03         	add	r3, sp, #0xc
  36a7f0: 681b         	ldr	r3, [r3]
  36a7f2: 681b         	ldr	r3, [r3]
  36a7f4: 33c8         	adds	r3, #0xc8
  36a7f6: 681b         	ldr	r3, [r3]
  36a7f8: aa03         	add	r2, sp, #0xc
  36a7fa: 6811         	ldr	r1, [r2]
  36a7fc: aa03         	add	r2, sp, #0xc
  36a7fe: 6812         	ldr	r2, [r2]
  36a800: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  36a804: 4608         	mov	r0, r1
  36a806: 4611         	mov	r1, r2
  36a808: 4798         	blx	r3
  36a80a: e009         	b	0x36a820 <MenuLayer::init()+0xd18> @ imm = #0x12
  36a80c: f3af 8000    	nop.w
  36a818: 6256         	str	r6, [r2, #0x24]
  36a81a: 005d         	lsls	r5, r3, #0x1
  36a81c: 2f06         	cmp	r7, #0x6
  36a81e: 0046         	lsls	r6, r0, #0x1
  36a820: 4be7         	ldr	r3, [pc, #0x39c]        @ 0x36abc0 <MenuLayer::init()+0x10b8>
  36a822: 447b         	add	r3, pc
  36a824: 4618         	mov	r0, r3
  36a826: f04a f56b    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x44aad6
  36a82a: 4603         	mov	r3, r0
  36a82c: 2220         	movs	r2, #0x20
  36a82e: 9200         	str	r2, [sp]
  36a830: 4ae4         	ldr	r2, [pc, #0x390]        @ 0x36abc4 <MenuLayer::init()+0x10bc>
  36a832: 447a         	add	r2, pc
  36a834: 4610         	mov	r0, r2
  36a836: 4619         	mov	r1, r3
  36a838: 2220         	movs	r2, #0x20
  36a83a: 2320         	movs	r3, #0x20
  36a83c: f23a fd9c    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x23ab38
  36a840: 4602         	mov	r2, r0
  36a842: ab03         	add	r3, sp, #0xc
  36a844: 681b         	ldr	r3, [r3]
  36a846: f8c3 210c    	str.w	r2, [r3, #0x10c]
  36a84a: ab03         	add	r3, sp, #0xc
  36a84c: 681b         	ldr	r3, [r3]
  36a84e: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  36a852: 4618         	mov	r0, r3
  36a854: f22d fb48    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x22d690
  36a858: ab03         	add	r3, sp, #0xc
  36a85a: 681b         	ldr	r3, [r3]
  36a85c: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  36a860: eddd 7a29    	vldr	s15, [sp, #164]
  36a864: eefd 7ae7    	vcvt.s32.f32	s15, s15
  36a868: ee17 2a90    	vmov	r2, s15
  36a86c: 4618         	mov	r0, r3
  36a86e: 4611         	mov	r1, r2
  36a870: f23b fa88    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x23b510
  36a874: ab03         	add	r3, sp, #0xc
  36a876: 681b         	ldr	r3, [r3]
  36a878: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  36a87c: 681b         	ldr	r3, [r3]
  36a87e: 3340         	adds	r3, #0x40
  36a880: 681b         	ldr	r3, [r3]
  36a882: aa03         	add	r2, sp, #0xc
  36a884: 6812         	ldr	r2, [r2]
  36a886: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  36a88a: 4610         	mov	r0, r2
  36a88c: 9928         	ldr	r1, [sp, #0xa0]
  36a88e: 4798         	blx	r3
  36a890: ab03         	add	r3, sp, #0xc
  36a892: 681b         	ldr	r3, [r3]
  36a894: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  36a898: 681b         	ldr	r3, [r3]
  36a89a: 334c         	adds	r3, #0x4c
  36a89c: 681d         	ldr	r5, [r3]
  36a89e: ab03         	add	r3, sp, #0xc
  36a8a0: 681b         	ldr	r3, [r3]
  36a8a2: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  36a8a6: 461e         	mov	r6, r3
  36a8a8: ab03         	add	r3, sp, #0xc
  36a8aa: 681b         	ldr	r3, [r3]
  36a8ac: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  36a8b0: 681b         	ldr	r3, [r3]
  36a8b2: 3350         	adds	r3, #0x50
  36a8b4: 681b         	ldr	r3, [r3]
  36a8b6: aa03         	add	r2, sp, #0xc
  36a8b8: 6812         	ldr	r2, [r2]
  36a8ba: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  36a8be: 4610         	mov	r0, r2
  36a8c0: 4798         	blx	r3
  36a8c2: 4603         	mov	r3, r0
  36a8c4: 681f         	ldr	r7, [r3]
  36a8c6: ab03         	add	r3, sp, #0xc
  36a8c8: 681b         	ldr	r3, [r3]
  36a8ca: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  36a8ce: 681b         	ldr	r3, [r3]
  36a8d0: 3350         	adds	r3, #0x50
  36a8d2: 681b         	ldr	r3, [r3]
  36a8d4: aa03         	add	r2, sp, #0xc
  36a8d6: 6812         	ldr	r2, [r2]
  36a8d8: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  36a8dc: 4610         	mov	r0, r2
  36a8de: 4798         	blx	r3
  36a8e0: 4603         	mov	r3, r0
  36a8e2: 685b         	ldr	r3, [r3, #0x4]
  36a8e4: aa30         	add	r2, sp, #0xc0
  36a8e6: 4610         	mov	r0, r2
  36a8e8: 4639         	mov	r1, r7
  36a8ea: 461a         	mov	r2, r3
  36a8ec: f228 fa00    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x228400
  36a8f0: eddd 7a2a    	vldr	s15, [sp, #168]
  36a8f4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  36a8f8: ab48         	add	r3, sp, #0x120
  36a8fa: 4618         	mov	r0, r3
  36a8fc: ed9f 0bae    	vldr	d0, [pc, #696]          @ 0x36abb8 <MenuLayer::init()+0x10b0>
  36a900: eeb0 1b47    	vmov.f64	d1, d7
  36a904: f7fe f9c2    	bl	0x368c8c <MapStaticShape::~MapStaticShape()+0x1a4> @ imm = #-0x1c7c
  36a908: ed9d 8b48    	vldr	d8, [sp, #288]
  36a90c: ab03         	add	r3, sp, #0xc
  36a90e: 681b         	ldr	r3, [r3]
  36a910: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  36a914: 681b         	ldr	r3, [r3]
  36a916: f503 73fe    	add.w	r3, r3, #0x1fc
  36a91a: 681b         	ldr	r3, [r3]
  36a91c: aa03         	add	r2, sp, #0xc
  36a91e: 6812         	ldr	r2, [r2]
  36a920: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  36a924: 4610         	mov	r0, r2
  36a926: 4798         	blx	r3
  36a928: 4607         	mov	r7, r0
  36a92a: ab0f         	add	r3, sp, #0x3c
  36a92c: 4618         	mov	r0, r3
  36a92e: f01f f561    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x41fac2
  36a932: aa08         	add	r2, sp, #0x20
  36a934: ab0f         	add	r3, sp, #0x3c
  36a936: 4610         	mov	r0, r2
  36a938: 4639         	mov	r1, r7
  36a93a: 461a         	mov	r2, r3
  36a93c: f04c f090    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x44c120
  36a940: ab08         	add	r3, sp, #0x20
  36a942: 4618         	mov	r0, r3
  36a944: f04a f38a    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x44a714
  36a948: 4603         	mov	r3, r0
  36a94a: ee07 3a90    	vmov	s15, r3
  36a94e: eeb8 7a67    	vcvt.f32.u32	s14, s15
  36a952: eddd 7a29    	vldr	s15, [sp, #164]
  36a956: ee27 7a27    	vmul.f32	s14, s14, s15
  36a95a: eddd 7a28    	vldr	s15, [sp, #160]
  36a95e: ee27 7a27    	vmul.f32	s14, s14, s15
  36a962: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  36a966: eec7 7a27    	vdiv.f32	s15, s14, s15
  36a96a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  36a96e: ee38 7b47    	vsub.f64	d7, d8, d7
  36a972: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  36a976: eddd 7a2a    	vldr	s15, [sp, #168]
  36a97a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  36a97e: ab4c         	add	r3, sp, #0x130
  36a980: 4618         	mov	r0, r3
  36a982: ed9f 0b8d    	vldr	d0, [pc, #564]          @ 0x36abb8 <MenuLayer::init()+0x10b0>
  36a986: eeb0 1b47    	vmov.f64	d1, d7
  36a98a: f7fe f97f    	bl	0x368c8c <MapStaticShape::~MapStaticShape()+0x1a4> @ imm = #-0x1d02
  36a98e: ed9d 7b4e    	vldr	d7, [sp, #312]
  36a992: eef7 7bc7    	vcvt.f32.f64	s15, d7
  36a996: ab32         	add	r3, sp, #0xc8
  36a998: 4618         	mov	r0, r3
  36a99a: ee18 1a10    	vmov	r1, s16
  36a99e: ee17 2a90    	vmov	r2, s15
  36a9a2: f228 f9a5    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x22834a
  36a9a6: a934         	add	r1, sp, #0xd0
  36a9a8: aa30         	add	r2, sp, #0xc0
  36a9aa: ab32         	add	r3, sp, #0xc8
  36a9ac: 4608         	mov	r0, r1
  36a9ae: 4611         	mov	r1, r2
  36a9b0: 461a         	mov	r2, r3
  36a9b2: f7fe f95b    	bl	0x368c6c <MapStaticShape::~MapStaticShape()+0x184> @ imm = #-0x1d4a
  36a9b6: ab34         	add	r3, sp, #0xd0
  36a9b8: 4630         	mov	r0, r6
  36a9ba: 4619         	mov	r1, r3
  36a9bc: 47a8         	blx	r5
  36a9be: ab08         	add	r3, sp, #0x20
  36a9c0: 4618         	mov	r0, r3
  36a9c2: f04a f7a7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44af4e
  36a9c6: ab0f         	add	r3, sp, #0x3c
  36a9c8: 4618         	mov	r0, r3
  36a9ca: f01f f517    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41fa2e
  36a9ce: ab03         	add	r3, sp, #0xc
  36a9d0: 681b         	ldr	r3, [r3]
  36a9d2: 681b         	ldr	r3, [r3]
  36a9d4: 33c8         	adds	r3, #0xc8
  36a9d6: 681b         	ldr	r3, [r3]
  36a9d8: aa03         	add	r2, sp, #0xc
  36a9da: 6811         	ldr	r1, [r2]
  36a9dc: aa03         	add	r2, sp, #0xc
  36a9de: 6812         	ldr	r2, [r2]
  36a9e0: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  36a9e4: 4608         	mov	r0, r1
  36a9e6: 4611         	mov	r1, r2
  36a9e8: 4798         	blx	r3
  36a9ea: 4b77         	ldr	r3, [pc, #0x1dc]        @ 0x36abc8 <MenuLayer::init()+0x10c0>
  36a9ec: 447b         	add	r3, pc
  36a9ee: 4618         	mov	r0, r3
  36a9f0: f04a f486    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x44a90c
  36a9f4: 4603         	mov	r3, r0
  36a9f6: 2220         	movs	r2, #0x20
  36a9f8: 9200         	str	r2, [sp]
  36a9fa: 4a74         	ldr	r2, [pc, #0x1d0]        @ 0x36abcc <MenuLayer::init()+0x10c4>
  36a9fc: 447a         	add	r2, pc
  36a9fe: 4610         	mov	r0, r2
  36aa00: 4619         	mov	r1, r3
  36aa02: 2220         	movs	r2, #0x20
  36aa04: 2320         	movs	r3, #0x20
  36aa06: f23a fcb7    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x23a96e
  36aa0a: 4602         	mov	r2, r0
  36aa0c: ab03         	add	r3, sp, #0xc
  36aa0e: 681b         	ldr	r3, [r3]
  36aa10: f8c3 2114    	str.w	r2, [r3, #0x114]
  36aa14: ab03         	add	r3, sp, #0xc
  36aa16: 681b         	ldr	r3, [r3]
  36aa18: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  36aa1c: 4618         	mov	r0, r3
  36aa1e: f22d fa63    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x22d4c6
  36aa22: ab03         	add	r3, sp, #0xc
  36aa24: 681b         	ldr	r3, [r3]
  36aa26: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  36aa2a: eddd 7a29    	vldr	s15, [sp, #164]
  36aa2e: eefd 7ae7    	vcvt.s32.f32	s15, s15
  36aa32: ee17 2a90    	vmov	r2, s15
  36aa36: 4618         	mov	r0, r3
  36aa38: 4611         	mov	r1, r2
  36aa3a: f23b f9a3    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x23b346
  36aa3e: ab03         	add	r3, sp, #0xc
  36aa40: 681b         	ldr	r3, [r3]
  36aa42: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  36aa46: 681b         	ldr	r3, [r3]
  36aa48: 3340         	adds	r3, #0x40
  36aa4a: 681b         	ldr	r3, [r3]
  36aa4c: aa03         	add	r2, sp, #0xc
  36aa4e: 6812         	ldr	r2, [r2]
  36aa50: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  36aa54: 4610         	mov	r0, r2
  36aa56: 9928         	ldr	r1, [sp, #0xa0]
  36aa58: 4798         	blx	r3
  36aa5a: ab03         	add	r3, sp, #0xc
  36aa5c: 681b         	ldr	r3, [r3]
  36aa5e: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  36aa62: 681b         	ldr	r3, [r3]
  36aa64: 334c         	adds	r3, #0x4c
  36aa66: 681d         	ldr	r5, [r3]
  36aa68: ab03         	add	r3, sp, #0xc
  36aa6a: 681b         	ldr	r3, [r3]
  36aa6c: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  36aa70: 461e         	mov	r6, r3
  36aa72: ab03         	add	r3, sp, #0xc
  36aa74: 681b         	ldr	r3, [r3]
  36aa76: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  36aa7a: 681b         	ldr	r3, [r3]
  36aa7c: 3350         	adds	r3, #0x50
  36aa7e: 681b         	ldr	r3, [r3]
  36aa80: aa03         	add	r2, sp, #0xc
  36aa82: 6812         	ldr	r2, [r2]
  36aa84: f8d2 213c    	ldr.w	r2, [r2, #0x13c]
  36aa88: 4610         	mov	r0, r2
  36aa8a: 4798         	blx	r3
  36aa8c: 4603         	mov	r3, r0
  36aa8e: 681f         	ldr	r7, [r3]
  36aa90: ab03         	add	r3, sp, #0xc
  36aa92: 681b         	ldr	r3, [r3]
  36aa94: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  36aa98: 681b         	ldr	r3, [r3]
  36aa9a: 3350         	adds	r3, #0x50
  36aa9c: 681b         	ldr	r3, [r3]
  36aa9e: aa03         	add	r2, sp, #0xc
  36aaa0: 6812         	ldr	r2, [r2]
  36aaa2: f8d2 213c    	ldr.w	r2, [r2, #0x13c]
  36aaa6: 4610         	mov	r0, r2
  36aaa8: 4798         	blx	r3
  36aaaa: 4603         	mov	r3, r0
  36aaac: 685b         	ldr	r3, [r3, #0x4]
  36aaae: aa30         	add	r2, sp, #0xc0
  36aab0: 4610         	mov	r0, r2
  36aab2: 4639         	mov	r1, r7
  36aab4: 461a         	mov	r2, r3
  36aab6: f228 f91b    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x228236
  36aaba: eddd 7a2a    	vldr	s15, [sp, #168]
  36aabe: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  36aac2: ab48         	add	r3, sp, #0x120
  36aac4: 4618         	mov	r0, r3
  36aac6: ed9f 0b3c    	vldr	d0, [pc, #240]          @ 0x36abb8 <MenuLayer::init()+0x10b0>
  36aaca: eeb0 1b47    	vmov.f64	d1, d7
  36aace: f7fe f8dd    	bl	0x368c8c <MapStaticShape::~MapStaticShape()+0x1a4> @ imm = #-0x1e46
  36aad2: ed9d 8b48    	vldr	d8, [sp, #288]
  36aad6: ab03         	add	r3, sp, #0xc
  36aad8: 681b         	ldr	r3, [r3]
  36aada: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  36aade: 681b         	ldr	r3, [r3]
  36aae0: f503 73fe    	add.w	r3, r3, #0x1fc
  36aae4: 681b         	ldr	r3, [r3]
  36aae6: aa03         	add	r2, sp, #0xc
  36aae8: 6812         	ldr	r2, [r2]
  36aaea: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  36aaee: 4610         	mov	r0, r2
  36aaf0: 4798         	blx	r3
  36aaf2: 4607         	mov	r7, r0
  36aaf4: ab0f         	add	r3, sp, #0x3c
  36aaf6: 4618         	mov	r0, r3
  36aaf8: f01f f47c    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x41f8f8
  36aafc: aa09         	add	r2, sp, #0x24
  36aafe: ab0f         	add	r3, sp, #0x3c
  36ab00: 4610         	mov	r0, r2
  36ab02: 4639         	mov	r1, r7
  36ab04: 461a         	mov	r2, r3
  36ab06: f04b f7ab    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x44bf56
  36ab0a: ab09         	add	r3, sp, #0x24
  36ab0c: 4618         	mov	r0, r3
  36ab0e: f04a f2a5    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x44a54a
  36ab12: 4603         	mov	r3, r0
  36ab14: ee07 3a90    	vmov	s15, r3
  36ab18: eeb8 7a67    	vcvt.f32.u32	s14, s15
  36ab1c: eddd 7a29    	vldr	s15, [sp, #164]
  36ab20: ee27 7a27    	vmul.f32	s14, s14, s15
  36ab24: eddd 7a28    	vldr	s15, [sp, #160]
  36ab28: ee27 7a27    	vmul.f32	s14, s14, s15
  36ab2c: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  36ab30: eec7 7a27    	vdiv.f32	s15, s14, s15
  36ab34: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  36ab38: ee38 7b47    	vsub.f64	d7, d8, d7
  36ab3c: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  36ab40: eddd 7a2a    	vldr	s15, [sp, #168]
  36ab44: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  36ab48: ab4c         	add	r3, sp, #0x130
  36ab4a: 4618         	mov	r0, r3
  36ab4c: ed9f 0b1a    	vldr	d0, [pc, #104]          @ 0x36abb8 <MenuLayer::init()+0x10b0>
  36ab50: eeb0 1b47    	vmov.f64	d1, d7
  36ab54: f7fe f89a    	bl	0x368c8c <MapStaticShape::~MapStaticShape()+0x1a4> @ imm = #-0x1ecc
  36ab58: ed9d 7b4e    	vldr	d7, [sp, #312]
  36ab5c: eef7 7bc7    	vcvt.f32.f64	s15, d7
  36ab60: ab32         	add	r3, sp, #0xc8
  36ab62: 4618         	mov	r0, r3
  36ab64: ee18 1a10    	vmov	r1, s16
  36ab68: ee17 2a90    	vmov	r2, s15
  36ab6c: f228 f8c0    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x228180
  36ab70: a934         	add	r1, sp, #0xd0
  36ab72: aa30         	add	r2, sp, #0xc0
  36ab74: ab32         	add	r3, sp, #0xc8
  36ab76: 4608         	mov	r0, r1
  36ab78: 4611         	mov	r1, r2
  36ab7a: 461a         	mov	r2, r3
  36ab7c: f7fe f876    	bl	0x368c6c <MapStaticShape::~MapStaticShape()+0x184> @ imm = #-0x1f14
  36ab80: ab34         	add	r3, sp, #0xd0
  36ab82: 4630         	mov	r0, r6
  36ab84: 4619         	mov	r1, r3
  36ab86: 47a8         	blx	r5
  36ab88: ab09         	add	r3, sp, #0x24
  36ab8a: 4618         	mov	r0, r3
  36ab8c: f04a f6c2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44ad84
  36ab90: ab0f         	add	r3, sp, #0x3c
  36ab92: 4618         	mov	r0, r3
  36ab94: f01f f432    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41f864
  36ab98: ab03         	add	r3, sp, #0xc
  36ab9a: 681b         	ldr	r3, [r3]
  36ab9c: 681b         	ldr	r3, [r3]
  36ab9e: 33c8         	adds	r3, #0xc8
  36aba0: 681b         	ldr	r3, [r3]
  36aba2: aa03         	add	r2, sp, #0xc
  36aba4: 6811         	ldr	r1, [r2]
  36aba6: aa03         	add	r2, sp, #0xc
  36aba8: 6812         	ldr	r2, [r2]
  36abaa: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  36abae: 4608         	mov	r0, r1
  36abb0: 4611         	mov	r1, r2
  36abb2: 4798         	blx	r3
  36abb4: e00c         	b	0x36abd0 <MenuLayer::init()+0x10c8> @ imm = #0x18
  36abb6: bf00         	nop
  36abc0: 6076         	str	r6, [r6, #0x4]
  36abc2: 005d         	lsls	r5, r3, #0x1
  36abc4: 2d32         	cmp	r5, #0x32
  36abc6: 0046         	lsls	r6, r0, #0x1
  36abc8: 5eac         	ldrsh	r4, [r5, r2]
  36abca: 005d         	lsls	r5, r3, #0x1
  36abcc: 2b74         	cmp	r3, #0x74
  36abce: 0046         	lsls	r6, r0, #0x1
  36abd0: 4be7         	ldr	r3, [pc, #0x39c]        @ 0x36af70 <MenuLayer::init()+0x1468>
  36abd2: 447b         	add	r3, pc
  36abd4: 4618         	mov	r0, r3
  36abd6: f04a f393    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x44a726
  36abda: 4603         	mov	r3, r0
  36abdc: 2220         	movs	r2, #0x20
  36abde: 9200         	str	r2, [sp]
  36abe0: 4ae4         	ldr	r2, [pc, #0x390]        @ 0x36af74 <MenuLayer::init()+0x146c>
  36abe2: 447a         	add	r2, pc
  36abe4: 4610         	mov	r0, r2
  36abe6: 4619         	mov	r1, r3
  36abe8: 2220         	movs	r2, #0x20
  36abea: 2320         	movs	r3, #0x20
  36abec: f23a fbc4    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x23a788
  36abf0: 4602         	mov	r2, r0
  36abf2: ab03         	add	r3, sp, #0xc
  36abf4: 681b         	ldr	r3, [r3]
  36abf6: f8c3 2118    	str.w	r2, [r3, #0x118]
  36abfa: ab03         	add	r3, sp, #0xc
  36abfc: 681b         	ldr	r3, [r3]
  36abfe: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  36ac02: 4618         	mov	r0, r3
  36ac04: f22d f970    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x22d2e0
  36ac08: ab03         	add	r3, sp, #0xc
  36ac0a: 681b         	ldr	r3, [r3]
  36ac0c: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  36ac10: eddd 7a29    	vldr	s15, [sp, #164]
  36ac14: eefd 7ae7    	vcvt.s32.f32	s15, s15
  36ac18: ee17 2a90    	vmov	r2, s15
  36ac1c: 4618         	mov	r0, r3
  36ac1e: 4611         	mov	r1, r2
  36ac20: f23b f8b0    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x23b160
  36ac24: ab03         	add	r3, sp, #0xc
  36ac26: 681b         	ldr	r3, [r3]
  36ac28: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  36ac2c: 681b         	ldr	r3, [r3]
  36ac2e: 3340         	adds	r3, #0x40
  36ac30: 681b         	ldr	r3, [r3]
  36ac32: aa03         	add	r2, sp, #0xc
  36ac34: 6812         	ldr	r2, [r2]
  36ac36: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  36ac3a: 4610         	mov	r0, r2
  36ac3c: 9928         	ldr	r1, [sp, #0xa0]
  36ac3e: 4798         	blx	r3
  36ac40: ab03         	add	r3, sp, #0xc
  36ac42: 681b         	ldr	r3, [r3]
  36ac44: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  36ac48: 681b         	ldr	r3, [r3]
  36ac4a: 334c         	adds	r3, #0x4c
  36ac4c: 681d         	ldr	r5, [r3]
  36ac4e: ab03         	add	r3, sp, #0xc
  36ac50: 681b         	ldr	r3, [r3]
  36ac52: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  36ac56: 461e         	mov	r6, r3
  36ac58: ab03         	add	r3, sp, #0xc
  36ac5a: 681b         	ldr	r3, [r3]
  36ac5c: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  36ac60: 681b         	ldr	r3, [r3]
  36ac62: 3350         	adds	r3, #0x50
  36ac64: 681b         	ldr	r3, [r3]
  36ac66: aa03         	add	r2, sp, #0xc
  36ac68: 6812         	ldr	r2, [r2]
  36ac6a: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  36ac6e: 4610         	mov	r0, r2
  36ac70: 4798         	blx	r3
  36ac72: 4603         	mov	r3, r0
  36ac74: 681f         	ldr	r7, [r3]
  36ac76: ab03         	add	r3, sp, #0xc
  36ac78: 681b         	ldr	r3, [r3]
  36ac7a: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  36ac7e: 681b         	ldr	r3, [r3]
  36ac80: 3350         	adds	r3, #0x50
  36ac82: 681b         	ldr	r3, [r3]
  36ac84: aa03         	add	r2, sp, #0xc
  36ac86: 6812         	ldr	r2, [r2]
  36ac88: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  36ac8c: 4610         	mov	r0, r2
  36ac8e: 4798         	blx	r3
  36ac90: 4603         	mov	r3, r0
  36ac92: 685b         	ldr	r3, [r3, #0x4]
  36ac94: aa30         	add	r2, sp, #0xc0
  36ac96: 4610         	mov	r0, r2
  36ac98: 4639         	mov	r1, r7
  36ac9a: 461a         	mov	r2, r3
  36ac9c: f228 f828    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x228050
  36aca0: eddd 7a2a    	vldr	s15, [sp, #168]
  36aca4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  36aca8: ab48         	add	r3, sp, #0x120
  36acaa: 4618         	mov	r0, r3
  36acac: ed9f 0bae    	vldr	d0, [pc, #696]          @ 0x36af68 <MenuLayer::init()+0x1460>
  36acb0: eeb0 1b47    	vmov.f64	d1, d7
  36acb4: f7fd ffea    	bl	0x368c8c <MapStaticShape::~MapStaticShape()+0x1a4> @ imm = #-0x202c
  36acb8: ed9d 8b48    	vldr	d8, [sp, #288]
  36acbc: ab03         	add	r3, sp, #0xc
  36acbe: 681b         	ldr	r3, [r3]
  36acc0: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  36acc4: 681b         	ldr	r3, [r3]
  36acc6: f503 73fe    	add.w	r3, r3, #0x1fc
  36acca: 681b         	ldr	r3, [r3]
  36accc: aa03         	add	r2, sp, #0xc
  36acce: 6812         	ldr	r2, [r2]
  36acd0: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  36acd4: 4610         	mov	r0, r2
  36acd6: 4798         	blx	r3
  36acd8: 4607         	mov	r7, r0
  36acda: ab0f         	add	r3, sp, #0x3c
  36acdc: 4618         	mov	r0, r3
  36acde: f01f f389    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x41f712
  36ace2: aa0a         	add	r2, sp, #0x28
  36ace4: ab0f         	add	r3, sp, #0x3c
  36ace6: 4610         	mov	r0, r2
  36ace8: 4639         	mov	r1, r7
  36acea: 461a         	mov	r2, r3
  36acec: f04b f6b8    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x44bd70
  36acf0: ab0a         	add	r3, sp, #0x28
  36acf2: 4618         	mov	r0, r3
  36acf4: f04a f1b2    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x44a364
  36acf8: 4603         	mov	r3, r0
  36acfa: ee07 3a90    	vmov	s15, r3
  36acfe: eeb8 7a67    	vcvt.f32.u32	s14, s15
  36ad02: eddd 7a29    	vldr	s15, [sp, #164]
  36ad06: ee27 7a27    	vmul.f32	s14, s14, s15
  36ad0a: eddd 7a28    	vldr	s15, [sp, #160]
  36ad0e: ee27 7a27    	vmul.f32	s14, s14, s15
  36ad12: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  36ad16: eec7 7a27    	vdiv.f32	s15, s14, s15
  36ad1a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  36ad1e: ee38 7b47    	vsub.f64	d7, d8, d7
  36ad22: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  36ad26: eddd 7a2a    	vldr	s15, [sp, #168]
  36ad2a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  36ad2e: ab4c         	add	r3, sp, #0x130
  36ad30: 4618         	mov	r0, r3
  36ad32: ed9f 0b8d    	vldr	d0, [pc, #564]          @ 0x36af68 <MenuLayer::init()+0x1460>
  36ad36: eeb0 1b47    	vmov.f64	d1, d7
  36ad3a: f7fd ffa7    	bl	0x368c8c <MapStaticShape::~MapStaticShape()+0x1a4> @ imm = #-0x20b2
  36ad3e: ed9d 7b4e    	vldr	d7, [sp, #312]
  36ad42: eef7 7bc7    	vcvt.f32.f64	s15, d7
  36ad46: ab32         	add	r3, sp, #0xc8
  36ad48: 4618         	mov	r0, r3
  36ad4a: ee18 1a10    	vmov	r1, s16
  36ad4e: ee17 2a90    	vmov	r2, s15
  36ad52: f227 ffcd    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x227f9a
  36ad56: a934         	add	r1, sp, #0xd0
  36ad58: aa30         	add	r2, sp, #0xc0
  36ad5a: ab32         	add	r3, sp, #0xc8
  36ad5c: 4608         	mov	r0, r1
  36ad5e: 4611         	mov	r1, r2
  36ad60: 461a         	mov	r2, r3
  36ad62: f7fd ff83    	bl	0x368c6c <MapStaticShape::~MapStaticShape()+0x184> @ imm = #-0x20fa
  36ad66: ab34         	add	r3, sp, #0xd0
  36ad68: 4630         	mov	r0, r6
  36ad6a: 4619         	mov	r1, r3
  36ad6c: 47a8         	blx	r5
  36ad6e: ab0a         	add	r3, sp, #0x28
  36ad70: 4618         	mov	r0, r3
  36ad72: f04a f5cf    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44ab9e
  36ad76: ab0f         	add	r3, sp, #0x3c
  36ad78: 4618         	mov	r0, r3
  36ad7a: f01f f33f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41f67e
  36ad7e: ab03         	add	r3, sp, #0xc
  36ad80: 681b         	ldr	r3, [r3]
  36ad82: 681b         	ldr	r3, [r3]
  36ad84: 33c8         	adds	r3, #0xc8
  36ad86: 681b         	ldr	r3, [r3]
  36ad88: aa03         	add	r2, sp, #0xc
  36ad8a: 6811         	ldr	r1, [r2]
  36ad8c: aa03         	add	r2, sp, #0xc
  36ad8e: 6812         	ldr	r2, [r2]
  36ad90: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  36ad94: 4608         	mov	r0, r1
  36ad96: 4611         	mov	r1, r2
  36ad98: 4798         	blx	r3
  36ad9a: 4b77         	ldr	r3, [pc, #0x1dc]        @ 0x36af78 <MenuLayer::init()+0x1470>
  36ad9c: 447b         	add	r3, pc
  36ad9e: 4618         	mov	r0, r3
  36ada0: f04a f2ae    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x44a55c
  36ada4: 4603         	mov	r3, r0
  36ada6: 2220         	movs	r2, #0x20
  36ada8: 9200         	str	r2, [sp]
  36adaa: 4a74         	ldr	r2, [pc, #0x1d0]        @ 0x36af7c <MenuLayer::init()+0x1474>
  36adac: 447a         	add	r2, pc
  36adae: 4610         	mov	r0, r2
  36adb0: 4619         	mov	r1, r3
  36adb2: 2220         	movs	r2, #0x20
  36adb4: 2320         	movs	r3, #0x20
  36adb6: f23a fadf    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x23a5be
  36adba: 4602         	mov	r2, r0
  36adbc: ab03         	add	r3, sp, #0xc
  36adbe: 681b         	ldr	r3, [r3]
  36adc0: f8c3 2124    	str.w	r2, [r3, #0x124]
  36adc4: ab03         	add	r3, sp, #0xc
  36adc6: 681b         	ldr	r3, [r3]
  36adc8: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  36adcc: 4618         	mov	r0, r3
  36adce: f22d f88b    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x22d116
  36add2: ab03         	add	r3, sp, #0xc
  36add4: 681b         	ldr	r3, [r3]
  36add6: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  36adda: eddd 7a29    	vldr	s15, [sp, #164]
  36adde: eefd 7ae7    	vcvt.s32.f32	s15, s15
  36ade2: ee17 2a90    	vmov	r2, s15
  36ade6: 4618         	mov	r0, r3
  36ade8: 4611         	mov	r1, r2
  36adea: f23a ffcb    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x23af96
  36adee: ab03         	add	r3, sp, #0xc
  36adf0: 681b         	ldr	r3, [r3]
  36adf2: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  36adf6: 681b         	ldr	r3, [r3]
  36adf8: 3340         	adds	r3, #0x40
  36adfa: 681b         	ldr	r3, [r3]
  36adfc: aa03         	add	r2, sp, #0xc
  36adfe: 6812         	ldr	r2, [r2]
  36ae00: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  36ae04: 4610         	mov	r0, r2
  36ae06: 9928         	ldr	r1, [sp, #0xa0]
  36ae08: 4798         	blx	r3
  36ae0a: ab03         	add	r3, sp, #0xc
  36ae0c: 681b         	ldr	r3, [r3]
  36ae0e: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  36ae12: 681b         	ldr	r3, [r3]
  36ae14: 334c         	adds	r3, #0x4c
  36ae16: 681d         	ldr	r5, [r3]
  36ae18: ab03         	add	r3, sp, #0xc
  36ae1a: 681b         	ldr	r3, [r3]
  36ae1c: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  36ae20: 461e         	mov	r6, r3
  36ae22: ab03         	add	r3, sp, #0xc
  36ae24: 681b         	ldr	r3, [r3]
  36ae26: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  36ae2a: 681b         	ldr	r3, [r3]
  36ae2c: 3350         	adds	r3, #0x50
  36ae2e: 681b         	ldr	r3, [r3]
  36ae30: aa03         	add	r2, sp, #0xc
  36ae32: 6812         	ldr	r2, [r2]
  36ae34: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  36ae38: 4610         	mov	r0, r2
  36ae3a: 4798         	blx	r3
  36ae3c: 4603         	mov	r3, r0
  36ae3e: 681f         	ldr	r7, [r3]
  36ae40: ab03         	add	r3, sp, #0xc
  36ae42: 681b         	ldr	r3, [r3]
  36ae44: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  36ae48: 681b         	ldr	r3, [r3]
  36ae4a: 3350         	adds	r3, #0x50
  36ae4c: 681b         	ldr	r3, [r3]
  36ae4e: aa03         	add	r2, sp, #0xc
  36ae50: 6812         	ldr	r2, [r2]
  36ae52: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  36ae56: 4610         	mov	r0, r2
  36ae58: 4798         	blx	r3
  36ae5a: 4603         	mov	r3, r0
  36ae5c: 685b         	ldr	r3, [r3, #0x4]
  36ae5e: aa30         	add	r2, sp, #0xc0
  36ae60: 4610         	mov	r0, r2
  36ae62: 4639         	mov	r1, r7
  36ae64: 461a         	mov	r2, r3
  36ae66: f227 ff43    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x227e86
  36ae6a: eddd 7a2a    	vldr	s15, [sp, #168]
  36ae6e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  36ae72: ab48         	add	r3, sp, #0x120
  36ae74: 4618         	mov	r0, r3
  36ae76: ed9f 0b3c    	vldr	d0, [pc, #240]          @ 0x36af68 <MenuLayer::init()+0x1460>
  36ae7a: eeb0 1b47    	vmov.f64	d1, d7
  36ae7e: f7fd ff05    	bl	0x368c8c <MapStaticShape::~MapStaticShape()+0x1a4> @ imm = #-0x21f6
  36ae82: ed9d 8b48    	vldr	d8, [sp, #288]
  36ae86: ab03         	add	r3, sp, #0xc
  36ae88: 681b         	ldr	r3, [r3]
  36ae8a: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  36ae8e: 681b         	ldr	r3, [r3]
  36ae90: f503 73fe    	add.w	r3, r3, #0x1fc
  36ae94: 681b         	ldr	r3, [r3]
  36ae96: aa03         	add	r2, sp, #0xc
  36ae98: 6812         	ldr	r2, [r2]
  36ae9a: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  36ae9e: 4610         	mov	r0, r2
  36aea0: 4798         	blx	r3
  36aea2: 4607         	mov	r7, r0
  36aea4: ab0f         	add	r3, sp, #0x3c
  36aea6: 4618         	mov	r0, r3
  36aea8: f01f f2a4    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x41f548
  36aeac: aa0b         	add	r2, sp, #0x2c
  36aeae: ab0f         	add	r3, sp, #0x3c
  36aeb0: 4610         	mov	r0, r2
  36aeb2: 4639         	mov	r1, r7
  36aeb4: 461a         	mov	r2, r3
  36aeb6: f04b f5d3    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x44bba6
  36aeba: ab0b         	add	r3, sp, #0x2c
  36aebc: 4618         	mov	r0, r3
  36aebe: f04a f0cd    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x44a19a
  36aec2: 4603         	mov	r3, r0
  36aec4: ee07 3a90    	vmov	s15, r3
  36aec8: eeb8 7a67    	vcvt.f32.u32	s14, s15
  36aecc: eddd 7a29    	vldr	s15, [sp, #164]
  36aed0: ee27 7a27    	vmul.f32	s14, s14, s15
  36aed4: eddd 7a28    	vldr	s15, [sp, #160]
  36aed8: ee27 7a27    	vmul.f32	s14, s14, s15
  36aedc: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  36aee0: eec7 7a27    	vdiv.f32	s15, s14, s15
  36aee4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  36aee8: ee38 7b47    	vsub.f64	d7, d8, d7
  36aeec: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  36aef0: eddd 7a2a    	vldr	s15, [sp, #168]
  36aef4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  36aef8: ab4c         	add	r3, sp, #0x130
  36aefa: 4618         	mov	r0, r3
  36aefc: ed9f 0b1a    	vldr	d0, [pc, #104]          @ 0x36af68 <MenuLayer::init()+0x1460>
  36af00: eeb0 1b47    	vmov.f64	d1, d7
  36af04: f7fd fec2    	bl	0x368c8c <MapStaticShape::~MapStaticShape()+0x1a4> @ imm = #-0x227c
  36af08: ed9d 7b4e    	vldr	d7, [sp, #312]
  36af0c: eef7 7bc7    	vcvt.f32.f64	s15, d7
  36af10: ab32         	add	r3, sp, #0xc8
  36af12: 4618         	mov	r0, r3
  36af14: ee18 1a10    	vmov	r1, s16
  36af18: ee17 2a90    	vmov	r2, s15
  36af1c: f227 fee8    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x227dd0
  36af20: a934         	add	r1, sp, #0xd0
  36af22: aa30         	add	r2, sp, #0xc0
  36af24: ab32         	add	r3, sp, #0xc8
  36af26: 4608         	mov	r0, r1
  36af28: 4611         	mov	r1, r2
  36af2a: 461a         	mov	r2, r3
  36af2c: f7fd fe9e    	bl	0x368c6c <MapStaticShape::~MapStaticShape()+0x184> @ imm = #-0x22c4
  36af30: ab34         	add	r3, sp, #0xd0
  36af32: 4630         	mov	r0, r6
  36af34: 4619         	mov	r1, r3
  36af36: 47a8         	blx	r5
  36af38: ab0b         	add	r3, sp, #0x2c
  36af3a: 4618         	mov	r0, r3
  36af3c: f04a f4ea    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44a9d4
  36af40: ab0f         	add	r3, sp, #0x3c
  36af42: 4618         	mov	r0, r3
  36af44: f01f f25a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41f4b4
  36af48: ab03         	add	r3, sp, #0xc
  36af4a: 681b         	ldr	r3, [r3]
  36af4c: 681b         	ldr	r3, [r3]
  36af4e: 33c8         	adds	r3, #0xc8
  36af50: 681b         	ldr	r3, [r3]
  36af52: aa03         	add	r2, sp, #0xc
  36af54: 6811         	ldr	r1, [r2]
  36af56: aa03         	add	r2, sp, #0xc
  36af58: 6812         	ldr	r2, [r2]
  36af5a: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  36af5e: 4608         	mov	r0, r1
  36af60: 4611         	mov	r1, r2
  36af62: 4798         	blx	r3
  36af64: e00c         	b	0x36af80 <MenuLayer::init()+0x1478> @ imm = #0x18
  36af66: bf00         	nop
  36af70: 5cc6         	ldrb	r6, [r0, r3]
  36af72: 005d         	lsls	r5, r3, #0x1
  36af74: 299a         	cmp	r1, #0x9a
  36af76: 0046         	lsls	r6, r0, #0x1
  36af78: 5afc         	ldrh	r4, [r7, r3]
  36af7a: 005d         	lsls	r5, r3, #0x1
  36af7c: 27d8         	movs	r7, #0xd8
  36af7e: 0046         	lsls	r6, r0, #0x1
  36af80: 4be9         	ldr	r3, [pc, #0x3a4]        @ 0x36b328 <MenuLayer::init()+0x1820>
  36af82: 447b         	add	r3, pc
  36af84: 4618         	mov	r0, r3
  36af86: f04a f1bb    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x44a376
  36af8a: 4603         	mov	r3, r0
  36af8c: 2220         	movs	r2, #0x20
  36af8e: 9200         	str	r2, [sp]
  36af90: 4ae6         	ldr	r2, [pc, #0x398]        @ 0x36b32c <MenuLayer::init()+0x1824>
  36af92: 447a         	add	r2, pc
  36af94: 4610         	mov	r0, r2
  36af96: 4619         	mov	r1, r3
  36af98: 2220         	movs	r2, #0x20
  36af9a: 2320         	movs	r3, #0x20
  36af9c: f23a f9ec    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x23a3d8
  36afa0: 4602         	mov	r2, r0
  36afa2: ab03         	add	r3, sp, #0xc
  36afa4: 681b         	ldr	r3, [r3]
  36afa6: f8c3 2128    	str.w	r2, [r3, #0x128]
  36afaa: ab03         	add	r3, sp, #0xc
  36afac: 681b         	ldr	r3, [r3]
  36afae: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  36afb2: 4618         	mov	r0, r3
  36afb4: f22c ff98    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x22cf30
  36afb8: ab03         	add	r3, sp, #0xc
  36afba: 681b         	ldr	r3, [r3]
  36afbc: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  36afc0: eddd 7a29    	vldr	s15, [sp, #164]
  36afc4: eefd 7ae7    	vcvt.s32.f32	s15, s15
  36afc8: ee17 2a90    	vmov	r2, s15
  36afcc: 4618         	mov	r0, r3
  36afce: 4611         	mov	r1, r2
  36afd0: f23a fed8    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x23adb0
  36afd4: ab03         	add	r3, sp, #0xc
  36afd6: 681b         	ldr	r3, [r3]
  36afd8: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  36afdc: 681b         	ldr	r3, [r3]
  36afde: 3340         	adds	r3, #0x40
  36afe0: 681b         	ldr	r3, [r3]
  36afe2: aa03         	add	r2, sp, #0xc
  36afe4: 6812         	ldr	r2, [r2]
  36afe6: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  36afea: 4610         	mov	r0, r2
  36afec: 9928         	ldr	r1, [sp, #0xa0]
  36afee: 4798         	blx	r3
  36aff0: ab03         	add	r3, sp, #0xc
  36aff2: 681b         	ldr	r3, [r3]
  36aff4: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  36aff8: 681b         	ldr	r3, [r3]
  36affa: 334c         	adds	r3, #0x4c
  36affc: 681d         	ldr	r5, [r3]
  36affe: ab03         	add	r3, sp, #0xc
  36b000: 681b         	ldr	r3, [r3]
  36b002: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  36b006: 461e         	mov	r6, r3
  36b008: ab03         	add	r3, sp, #0xc
  36b00a: 681b         	ldr	r3, [r3]
  36b00c: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  36b010: 681b         	ldr	r3, [r3]
  36b012: 3350         	adds	r3, #0x50
  36b014: 681b         	ldr	r3, [r3]
  36b016: aa03         	add	r2, sp, #0xc
  36b018: 6812         	ldr	r2, [r2]
  36b01a: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  36b01e: 4610         	mov	r0, r2
  36b020: 4798         	blx	r3
  36b022: 4603         	mov	r3, r0
  36b024: 681f         	ldr	r7, [r3]
  36b026: ab03         	add	r3, sp, #0xc
  36b028: 681b         	ldr	r3, [r3]
  36b02a: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  36b02e: 681b         	ldr	r3, [r3]
  36b030: 3350         	adds	r3, #0x50
  36b032: 681b         	ldr	r3, [r3]
  36b034: aa03         	add	r2, sp, #0xc
  36b036: 6812         	ldr	r2, [r2]
  36b038: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  36b03c: 4610         	mov	r0, r2
  36b03e: 4798         	blx	r3
  36b040: 4603         	mov	r3, r0
  36b042: 685b         	ldr	r3, [r3, #0x4]
  36b044: aa30         	add	r2, sp, #0xc0
  36b046: 4610         	mov	r0, r2
  36b048: 4639         	mov	r1, r7
  36b04a: 461a         	mov	r2, r3
  36b04c: f227 fe50    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x227ca0
  36b050: eddd 7a2a    	vldr	s15, [sp, #168]
  36b054: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  36b058: ab48         	add	r3, sp, #0x120
  36b05a: 4618         	mov	r0, r3
  36b05c: ed9f 0bb0    	vldr	d0, [pc, #704]          @ 0x36b320 <MenuLayer::init()+0x1818>
  36b060: eeb0 1b47    	vmov.f64	d1, d7
  36b064: f7fd fe12    	bl	0x368c8c <MapStaticShape::~MapStaticShape()+0x1a4> @ imm = #-0x23dc
  36b068: ed9d 8b48    	vldr	d8, [sp, #288]
  36b06c: ab03         	add	r3, sp, #0xc
  36b06e: 681b         	ldr	r3, [r3]
  36b070: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  36b074: 681b         	ldr	r3, [r3]
  36b076: f503 73fe    	add.w	r3, r3, #0x1fc
  36b07a: 681b         	ldr	r3, [r3]
  36b07c: aa03         	add	r2, sp, #0xc
  36b07e: 6812         	ldr	r2, [r2]
  36b080: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  36b084: 4610         	mov	r0, r2
  36b086: 4798         	blx	r3
  36b088: 4607         	mov	r7, r0
  36b08a: ab0f         	add	r3, sp, #0x3c
  36b08c: 4618         	mov	r0, r3
  36b08e: f01f f1b1    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x41f362
  36b092: aa0c         	add	r2, sp, #0x30
  36b094: ab0f         	add	r3, sp, #0x3c
  36b096: 4610         	mov	r0, r2
  36b098: 4639         	mov	r1, r7
  36b09a: 461a         	mov	r2, r3
  36b09c: f04b f4e0    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x44b9c0
  36b0a0: ab0c         	add	r3, sp, #0x30
  36b0a2: 4618         	mov	r0, r3
  36b0a4: f049 f7da    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x449fb4
  36b0a8: 4603         	mov	r3, r0
  36b0aa: ee07 3a90    	vmov	s15, r3
  36b0ae: eeb8 7a67    	vcvt.f32.u32	s14, s15
  36b0b2: eddd 7a29    	vldr	s15, [sp, #164]
  36b0b6: ee27 7a27    	vmul.f32	s14, s14, s15
  36b0ba: eddd 7a28    	vldr	s15, [sp, #160]
  36b0be: ee27 7a27    	vmul.f32	s14, s14, s15
  36b0c2: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  36b0c6: eec7 7a27    	vdiv.f32	s15, s14, s15
  36b0ca: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  36b0ce: ee38 7b47    	vsub.f64	d7, d8, d7
  36b0d2: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  36b0d6: eddd 7a2a    	vldr	s15, [sp, #168]
  36b0da: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  36b0de: ab4c         	add	r3, sp, #0x130
  36b0e0: 4618         	mov	r0, r3
  36b0e2: ed9f 0b8f    	vldr	d0, [pc, #572]          @ 0x36b320 <MenuLayer::init()+0x1818>
  36b0e6: eeb0 1b47    	vmov.f64	d1, d7
  36b0ea: f7fd fdcf    	bl	0x368c8c <MapStaticShape::~MapStaticShape()+0x1a4> @ imm = #-0x2462
  36b0ee: ed9d 7b4e    	vldr	d7, [sp, #312]
  36b0f2: eef7 7bc7    	vcvt.f32.f64	s15, d7
  36b0f6: ab32         	add	r3, sp, #0xc8
  36b0f8: 4618         	mov	r0, r3
  36b0fa: ee18 1a10    	vmov	r1, s16
  36b0fe: ee17 2a90    	vmov	r2, s15
  36b102: f227 fdf5    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x227bea
  36b106: a934         	add	r1, sp, #0xd0
  36b108: aa30         	add	r2, sp, #0xc0
  36b10a: ab32         	add	r3, sp, #0xc8
  36b10c: 4608         	mov	r0, r1
  36b10e: 4611         	mov	r1, r2
  36b110: 461a         	mov	r2, r3
  36b112: f7fd fdab    	bl	0x368c6c <MapStaticShape::~MapStaticShape()+0x184> @ imm = #-0x24aa
  36b116: ab34         	add	r3, sp, #0xd0
  36b118: 4630         	mov	r0, r6
  36b11a: 4619         	mov	r1, r3
  36b11c: 47a8         	blx	r5
  36b11e: ab0c         	add	r3, sp, #0x30
  36b120: 4618         	mov	r0, r3
  36b122: f04a f3f7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44a7ee
  36b126: ab0f         	add	r3, sp, #0x3c
  36b128: 4618         	mov	r0, r3
  36b12a: f01f f167    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41f2ce
  36b12e: ab03         	add	r3, sp, #0xc
  36b130: 681b         	ldr	r3, [r3]
  36b132: 681b         	ldr	r3, [r3]
  36b134: 33c8         	adds	r3, #0xc8
  36b136: 681b         	ldr	r3, [r3]
  36b138: aa03         	add	r2, sp, #0xc
  36b13a: 6811         	ldr	r1, [r2]
  36b13c: aa03         	add	r2, sp, #0xc
  36b13e: 6812         	ldr	r2, [r2]
  36b140: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  36b144: 4608         	mov	r0, r1
  36b146: 4611         	mov	r1, r2
  36b148: 4798         	blx	r3
  36b14a: ab4c         	add	r3, sp, #0x130
  36b14c: 4618         	mov	r0, r3
  36b14e: f01f f151    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x41f2a2
  36b152: aa0d         	add	r2, sp, #0x34
  36b154: ab4c         	add	r3, sp, #0x130
  36b156: 4610         	mov	r0, r2
  36b158: 4a75         	ldr	r2, [pc, #0x1d4]        @ 0x36b330 <MenuLayer::init()+0x1828>
  36b15a: 447a         	add	r2, pc
  36b15c: 4611         	mov	r1, r2
  36b15e: 461a         	mov	r2, r3
  36b160: f04b f47e    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x44b8fc
  36b164: ab4c         	add	r3, sp, #0x130
  36b166: 4618         	mov	r0, r3
  36b168: f01f f148    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41f290
  36b16c: ab0d         	add	r3, sp, #0x34
  36b16e: 4618         	mov	r0, r3
  36b170: f04a f0c6    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x44a18c
  36b174: 4605         	mov	r5, r0
  36b176: 4b6f         	ldr	r3, [pc, #0x1bc]        @ 0x36b334 <MenuLayer::init()+0x182c>
  36b178: 447b         	add	r3, pc
  36b17a: 4618         	mov	r0, r3
  36b17c: f04a f0c0    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x44a180
  36b180: 4603         	mov	r3, r0
  36b182: 2220         	movs	r2, #0x20
  36b184: 9200         	str	r2, [sp]
  36b186: 4628         	mov	r0, r5
  36b188: 4619         	mov	r1, r3
  36b18a: 2220         	movs	r2, #0x20
  36b18c: 2320         	movs	r3, #0x20
  36b18e: f23a f8f3    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x23a1e6
  36b192: 4602         	mov	r2, r0
  36b194: ab03         	add	r3, sp, #0xc
  36b196: 681b         	ldr	r3, [r3]
  36b198: f8c3 2120    	str.w	r2, [r3, #0x120]
  36b19c: ab03         	add	r3, sp, #0xc
  36b19e: 681b         	ldr	r3, [r3]
  36b1a0: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  36b1a4: 4618         	mov	r0, r3
  36b1a6: f22c fe9f    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x22cd3e
  36b1aa: ab03         	add	r3, sp, #0xc
  36b1ac: 681b         	ldr	r3, [r3]
  36b1ae: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  36b1b2: eddd 7a29    	vldr	s15, [sp, #164]
  36b1b6: eefd 7ae7    	vcvt.s32.f32	s15, s15
  36b1ba: ee17 2a90    	vmov	r2, s15
  36b1be: 4618         	mov	r0, r3
  36b1c0: 4611         	mov	r1, r2
  36b1c2: f23a fddf    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x23abbe
  36b1c6: ab03         	add	r3, sp, #0xc
  36b1c8: 681b         	ldr	r3, [r3]
  36b1ca: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  36b1ce: 681b         	ldr	r3, [r3]
  36b1d0: 3340         	adds	r3, #0x40
  36b1d2: 681b         	ldr	r3, [r3]
  36b1d4: aa03         	add	r2, sp, #0xc
  36b1d6: 6812         	ldr	r2, [r2]
  36b1d8: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  36b1dc: 4610         	mov	r0, r2
  36b1de: 9928         	ldr	r1, [sp, #0xa0]
  36b1e0: 4798         	blx	r3
  36b1e2: ab03         	add	r3, sp, #0xc
  36b1e4: 681b         	ldr	r3, [r3]
  36b1e6: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  36b1ea: 681b         	ldr	r3, [r3]
  36b1ec: 334c         	adds	r3, #0x4c
  36b1ee: 681d         	ldr	r5, [r3]
  36b1f0: ab03         	add	r3, sp, #0xc
  36b1f2: 681b         	ldr	r3, [r3]
  36b1f4: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  36b1f8: 461e         	mov	r6, r3
  36b1fa: ab03         	add	r3, sp, #0xc
  36b1fc: 681b         	ldr	r3, [r3]
  36b1fe: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  36b202: 681b         	ldr	r3, [r3]
  36b204: 3350         	adds	r3, #0x50
  36b206: 681b         	ldr	r3, [r3]
  36b208: aa03         	add	r2, sp, #0xc
  36b20a: 6812         	ldr	r2, [r2]
  36b20c: f8d2 2140    	ldr.w	r2, [r2, #0x140]
  36b210: 4610         	mov	r0, r2
  36b212: 4798         	blx	r3
  36b214: 4603         	mov	r3, r0
  36b216: 681f         	ldr	r7, [r3]
  36b218: ab03         	add	r3, sp, #0xc
  36b21a: 681b         	ldr	r3, [r3]
  36b21c: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  36b220: 681b         	ldr	r3, [r3]
  36b222: 3350         	adds	r3, #0x50
  36b224: 681b         	ldr	r3, [r3]
  36b226: aa03         	add	r2, sp, #0xc
  36b228: 6812         	ldr	r2, [r2]
  36b22a: f8d2 2140    	ldr.w	r2, [r2, #0x140]
  36b22e: 4610         	mov	r0, r2
  36b230: 4798         	blx	r3
  36b232: 4603         	mov	r3, r0
  36b234: 685b         	ldr	r3, [r3, #0x4]
  36b236: aa30         	add	r2, sp, #0xc0
  36b238: 4610         	mov	r0, r2
  36b23a: 4639         	mov	r1, r7
  36b23c: 461a         	mov	r2, r3
  36b23e: f227 fd57    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x227aae
  36b242: eddd 7a2a    	vldr	s15, [sp, #168]
  36b246: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  36b24a: ab48         	add	r3, sp, #0x120
  36b24c: 4618         	mov	r0, r3
  36b24e: ed9f 0b34    	vldr	d0, [pc, #208]          @ 0x36b320 <MenuLayer::init()+0x1818>
  36b252: eeb0 1b47    	vmov.f64	d1, d7
  36b256: f7fd fd19    	bl	0x368c8c <MapStaticShape::~MapStaticShape()+0x1a4> @ imm = #-0x25ce
  36b25a: ed9d 8b48    	vldr	d8, [sp, #288]
  36b25e: ab03         	add	r3, sp, #0xc
  36b260: 681b         	ldr	r3, [r3]
  36b262: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  36b266: 681b         	ldr	r3, [r3]
  36b268: f503 73fe    	add.w	r3, r3, #0x1fc
  36b26c: 681b         	ldr	r3, [r3]
  36b26e: aa03         	add	r2, sp, #0xc
  36b270: 6812         	ldr	r2, [r2]
  36b272: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  36b276: 4610         	mov	r0, r2
  36b278: 4798         	blx	r3
  36b27a: 4607         	mov	r7, r0
  36b27c: ab0f         	add	r3, sp, #0x3c
  36b27e: 4618         	mov	r0, r3
  36b280: f01f f0b8    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x41f170
  36b284: aa0e         	add	r2, sp, #0x38
  36b286: ab0f         	add	r3, sp, #0x3c
  36b288: 4610         	mov	r0, r2
  36b28a: 4639         	mov	r1, r7
  36b28c: 461a         	mov	r2, r3
  36b28e: f04b f3e7    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x44b7ce
  36b292: ab0e         	add	r3, sp, #0x38
  36b294: 4618         	mov	r0, r3
  36b296: f049 f6e1    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x449dc2
  36b29a: 4603         	mov	r3, r0
  36b29c: ee07 3a90    	vmov	s15, r3
  36b2a0: eeb8 7a67    	vcvt.f32.u32	s14, s15
  36b2a4: eddd 7a29    	vldr	s15, [sp, #164]
  36b2a8: ee27 7a27    	vmul.f32	s14, s14, s15
  36b2ac: eddd 7a28    	vldr	s15, [sp, #160]
  36b2b0: ee27 7a27    	vmul.f32	s14, s14, s15
  36b2b4: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  36b2b8: eec7 7a27    	vdiv.f32	s15, s14, s15
  36b2bc: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  36b2c0: ee38 7b47    	vsub.f64	d7, d8, d7
  36b2c4: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  36b2c8: eddd 7a2a    	vldr	s15, [sp, #168]
  36b2cc: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  36b2d0: ab4c         	add	r3, sp, #0x130
  36b2d2: 4618         	mov	r0, r3
  36b2d4: ed9f 0b12    	vldr	d0, [pc, #72]           @ 0x36b320 <MenuLayer::init()+0x1818>
  36b2d8: eeb0 1b47    	vmov.f64	d1, d7
  36b2dc: f7fd fcd6    	bl	0x368c8c <MapStaticShape::~MapStaticShape()+0x1a4> @ imm = #-0x2654
  36b2e0: ed9d 7b4e    	vldr	d7, [sp, #312]
  36b2e4: eef7 7bc7    	vcvt.f32.f64	s15, d7
  36b2e8: ab32         	add	r3, sp, #0xc8
  36b2ea: 4618         	mov	r0, r3
  36b2ec: ee18 1a10    	vmov	r1, s16
  36b2f0: ee17 2a90    	vmov	r2, s15
  36b2f4: f227 fcfc    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2279f8
  36b2f8: a934         	add	r1, sp, #0xd0
  36b2fa: aa30         	add	r2, sp, #0xc0
  36b2fc: ab32         	add	r3, sp, #0xc8
  36b2fe: 4608         	mov	r0, r1
  36b300: 4611         	mov	r1, r2
  36b302: 461a         	mov	r2, r3
  36b304: f7fd fcb2    	bl	0x368c6c <MapStaticShape::~MapStaticShape()+0x184> @ imm = #-0x269c
  36b308: ab34         	add	r3, sp, #0xd0
  36b30a: 4630         	mov	r0, r6
  36b30c: 4619         	mov	r1, r3
  36b30e: 47a8         	blx	r5
  36b310: ab0e         	add	r3, sp, #0x38
  36b312: 4618         	mov	r0, r3
  36b314: f04a f2fe    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44a5fc
  36b318: ab0f         	add	r3, sp, #0x3c
  36b31a: e00d         	b	0x36b338 <MenuLayer::init()+0x1830> @ imm = #0x1a
  36b31c: f3af 8000    	nop.w
  36b328: 5916         	ldr	r6, [r2, r4]
  36b32a: 005d         	lsls	r5, r3, #0x1
  36b32c: 25fa         	movs	r5, #0xfa
  36b32e: 0046         	lsls	r6, r0, #0x1
  36b330: 243a         	movs	r4, #0x3a
  36b332: 0046         	lsls	r6, r0, #0x1
  36b334: 5720         	ldrsb	r0, [r4, r4]
  36b336: 005d         	lsls	r5, r3, #0x1
  36b338: 4618         	mov	r0, r3
  36b33a: f01f f05f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41f0be
  36b33e: ab03         	add	r3, sp, #0xc
  36b340: 681b         	ldr	r3, [r3]
  36b342: 681b         	ldr	r3, [r3]
  36b344: 33c8         	adds	r3, #0xc8
  36b346: 681b         	ldr	r3, [r3]
  36b348: aa03         	add	r2, sp, #0xc
  36b34a: 6811         	ldr	r1, [r2]
  36b34c: aa03         	add	r2, sp, #0xc
  36b34e: 6812         	ldr	r2, [r2]
  36b350: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  36b354: 4608         	mov	r0, r1
  36b356: 4611         	mov	r1, r2
  36b358: 4798         	blx	r3
  36b35a: 4bdb         	ldr	r3, [pc, #0x36c]        @ 0x36b6c8 <MenuLayer::init()+0x1bc0>
  36b35c: 447b         	add	r3, pc
  36b35e: 4618         	mov	r0, r3
  36b360: f26c ff10    	bl	0x5d8184 <cocos2d::CCSprite::create(char const*)> @ imm = #0x26ce20
  36b364: 4602         	mov	r2, r0
  36b366: ab03         	add	r3, sp, #0xc
  36b368: 681b         	ldr	r3, [r3]
  36b36a: f8c3 214c    	str.w	r2, [r3, #0x14c]
  36b36e: ab03         	add	r3, sp, #0xc
  36b370: 681b         	ldr	r3, [r3]
  36b372: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  36b376: 681b         	ldr	r3, [r3]
  36b378: 334c         	adds	r3, #0x4c
  36b37a: 681b         	ldr	r3, [r3]
  36b37c: aa03         	add	r2, sp, #0xc
  36b37e: 6812         	ldr	r2, [r2]
  36b380: f8d2 114c    	ldr.w	r1, [r2, #0x14c]
  36b384: aa2e         	add	r2, sp, #0xb8
  36b386: 4608         	mov	r0, r1
  36b388: 4611         	mov	r1, r2
  36b38a: 4798         	blx	r3
  36b38c: ab03         	add	r3, sp, #0xc
  36b38e: 681b         	ldr	r3, [r3]
  36b390: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  36b394: 681b         	ldr	r3, [r3]
  36b396: f503 73d2    	add.w	r3, r3, #0x1a4
  36b39a: 681b         	ldr	r3, [r3]
  36b39c: aa03         	add	r2, sp, #0xc
  36b39e: 6812         	ldr	r2, [r2]
  36b3a0: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  36b3a4: 4610         	mov	r0, r2
  36b3a6: 2123         	movs	r1, #0x23
  36b3a8: 4798         	blx	r3
  36b3aa: ab03         	add	r3, sp, #0xc
  36b3ac: 681b         	ldr	r3, [r3]
  36b3ae: 681b         	ldr	r3, [r3]
  36b3b0: 33c8         	adds	r3, #0xc8
  36b3b2: 681b         	ldr	r3, [r3]
  36b3b4: aa03         	add	r2, sp, #0xc
  36b3b6: 6811         	ldr	r1, [r2]
  36b3b8: aa03         	add	r2, sp, #0xc
  36b3ba: 6812         	ldr	r2, [r2]
  36b3bc: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  36b3c0: 4608         	mov	r0, r1
  36b3c2: 4611         	mov	r1, r2
  36b3c4: 4798         	blx	r3
  36b3c6: 4bc1         	ldr	r3, [pc, #0x304]        @ 0x36b6cc <MenuLayer::init()+0x1bc4>
  36b3c8: 58e3         	ldr	r3, [r4, r3]
  36b3ca: 681b         	ldr	r3, [r3]
  36b3cc: 4618         	mov	r0, r3
  36b3ce: f08c fc5b    	bl	0x3f7c88 <Sound::isPlayingMusic()> @ imm = #0x8c8b6
  36b3d2: 4603         	mov	r3, r0
  36b3d4: f083 0301    	eor	r3, r3, #0x1
  36b3d8: b2db         	uxtb	r3, r3
  36b3da: 2b00         	cmp	r3, #0x0
  36b3dc: d01f         	beq	0x36b41e <MenuLayer::init()+0x1916> @ imm = #0x3e
  36b3de: 4bbb         	ldr	r3, [pc, #0x2ec]        @ 0x36b6cc <MenuLayer::init()+0x1bc4>
  36b3e0: 58e3         	ldr	r3, [r4, r3]
  36b3e2: 681d         	ldr	r5, [r3]
  36b3e4: ab4c         	add	r3, sp, #0x130
  36b3e6: 4618         	mov	r0, r3
  36b3e8: f01f f004    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x41f008
  36b3ec: aa0f         	add	r2, sp, #0x3c
  36b3ee: ab4c         	add	r3, sp, #0x130
  36b3f0: 4610         	mov	r0, r2
  36b3f2: 4ab7         	ldr	r2, [pc, #0x2dc]        @ 0x36b6d0 <MenuLayer::init()+0x1bc8>
  36b3f4: 447a         	add	r2, pc
  36b3f6: 4611         	mov	r1, r2
  36b3f8: 461a         	mov	r2, r3
  36b3fa: f04b f331    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x44b662
  36b3fe: ab0f         	add	r3, sp, #0x3c
  36b400: 4628         	mov	r0, r5
  36b402: 4619         	mov	r1, r3
  36b404: f04f 527c    	mov.w	r2, #0x3f000000
  36b408: 2301         	movs	r3, #0x1
  36b40a: f08c fc4b    	bl	0x3f7ca4 <Sound::playMusicFile(std::string, float, bool)> @ imm = #0x8c896
  36b40e: ab0f         	add	r3, sp, #0x3c
  36b410: 4618         	mov	r0, r3
  36b412: f04a f27f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44a4fe
  36b416: ab4c         	add	r3, sp, #0x130
  36b418: 4618         	mov	r0, r3
  36b41a: f01e f7ef    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41efde
  36b41e: ab03         	add	r3, sp, #0xc
  36b420: 681b         	ldr	r3, [r3]
  36b422: 4aac         	ldr	r2, [pc, #0x2b0]        @ 0x36b6d4 <MenuLayer::init()+0x1bcc>
  36b424: 58a2         	ldr	r2, [r4, r2]
  36b426: 9248         	str	r2, [sp, #0x120]
  36b428: 2200         	movs	r2, #0x0
  36b42a: 9249         	str	r2, [sp, #0x124]
  36b42c: 4618         	mov	r0, r3
  36b42e: ab48         	add	r3, sp, #0x120
  36b430: e893 0006    	ldm.w	r3, {r1, r2}
  36b434: f04f 537e    	mov.w	r3, #0x3f800000
  36b438: f225 fef4    	bl	0x591224 <cocos2d::CCNode::schedule(void (cocos2d::CCObject::*)(float), float)> @ imm = #0x225de8
  36b43c: ab03         	add	r3, sp, #0xc
  36b43e: 681b         	ldr	r3, [r3]
  36b440: 4aa5         	ldr	r2, [pc, #0x294]        @ 0x36b6d8 <MenuLayer::init()+0x1bd0>
  36b442: 58a2         	ldr	r2, [r4, r2]
  36b444: 924c         	str	r2, [sp, #0x130]
  36b446: 2200         	movs	r2, #0x0
  36b448: 924d         	str	r2, [sp, #0x134]
  36b44a: 4618         	mov	r0, r3
  36b44c: ab4c         	add	r3, sp, #0x130
  36b44e: e893 0006    	ldm.w	r3, {r1, r2}
  36b452: f225 fecf    	bl	0x5911f4 <cocos2d::CCNode::schedule(void (cocos2d::CCObject::*)(float))> @ imm = #0x225d9e
  36b456: f277 f8e9    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2771d2
  36b45a: 4605         	mov	r5, r0
  36b45c: ab34         	add	r3, sp, #0xd0
  36b45e: 4618         	mov	r0, r3
  36b460: f01e f7c8    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x41ef90
  36b464: aa32         	add	r2, sp, #0xc8
  36b466: ab34         	add	r3, sp, #0xd0
  36b468: 4610         	mov	r0, r2
  36b46a: 4a9c         	ldr	r2, [pc, #0x270]        @ 0x36b6dc <MenuLayer::init()+0x1bd4>
  36b46c: 447a         	add	r2, pc
  36b46e: 4611         	mov	r1, r2
  36b470: 461a         	mov	r2, r3
  36b472: f04b f2f5    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x44b5ea
  36b476: aa30         	add	r2, sp, #0xc0
  36b478: ab32         	add	r3, sp, #0xc8
  36b47a: 4610         	mov	r0, r2
  36b47c: 4629         	mov	r1, r5
  36b47e: 4a98         	ldr	r2, [pc, #0x260]        @ 0x36b6e0 <MenuLayer::init()+0x1bd8>
  36b480: 447a         	add	r2, pc
  36b482: f277 f80b    	bl	0x5e249c <cocos2d::CCUserDefault::getStringForKey(char const*, std::string const&)> @ imm = #0x277016
  36b486: ab32         	add	r3, sp, #0xc8
  36b488: 4618         	mov	r0, r3
  36b48a: f04a f243    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44a486
  36b48e: ab34         	add	r3, sp, #0xd0
  36b490: 4618         	mov	r0, r3
  36b492: f01e f7b3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41ef66
  36b496: ab30         	add	r3, sp, #0xc0
  36b498: 4618         	mov	r0, r3
  36b49a: f049 f5df    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x449bbe
  36b49e: 4603         	mov	r3, r0
  36b4a0: 2b00         	cmp	r3, #0x0
  36b4a2: d006         	beq	0x36b4b2 <MenuLayer::init()+0x19aa> @ imm = #0xc
  36b4a4: ab30         	add	r3, sp, #0xc0
  36b4a6: 4618         	mov	r0, r3
  36b4a8: f049 f5d8    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x449bb0
  36b4ac: 4603         	mov	r3, r0
  36b4ae: 2b10         	cmp	r3, #0x10
  36b4b0: d901         	bls	0x36b4b6 <MenuLayer::init()+0x19ae> @ imm = #0x2
  36b4b2: 2301         	movs	r3, #0x1
  36b4b4: e000         	b	0x36b4b8 <MenuLayer::init()+0x19b0> @ imm = #0x0
  36b4b6: 2300         	movs	r3, #0x0
  36b4b8: 2b00         	cmp	r3, #0x0
  36b4ba: d01f         	beq	0x36b4fc <MenuLayer::init()+0x19f4> @ imm = #0x3e
  36b4bc: f277 f8b6    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x27716c
  36b4c0: 4605         	mov	r5, r0
  36b4c2: ab32         	add	r3, sp, #0xc8
  36b4c4: 4618         	mov	r0, r3
  36b4c6: f01e f795    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x41ef2a
  36b4ca: aa34         	add	r2, sp, #0xd0
  36b4cc: ab32         	add	r3, sp, #0xc8
  36b4ce: 4610         	mov	r0, r2
  36b4d0: 4a84         	ldr	r2, [pc, #0x210]        @ 0x36b6e4 <MenuLayer::init()+0x1bdc>
  36b4d2: 447a         	add	r2, pc
  36b4d4: 4611         	mov	r1, r2
  36b4d6: 461a         	mov	r2, r3
  36b4d8: f04b f2c2    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x44b584
  36b4dc: ab34         	add	r3, sp, #0xd0
  36b4de: 4628         	mov	r0, r5
  36b4e0: 4a81         	ldr	r2, [pc, #0x204]        @ 0x36b6e8 <MenuLayer::init()+0x1be0>
  36b4e2: 447a         	add	r2, pc
  36b4e4: 4611         	mov	r1, r2
  36b4e6: 461a         	mov	r2, r3
  36b4e8: f277 f88c    	bl	0x5e2604 <cocos2d::CCUserDefault::setStringForKey(char const*, std::string const&)> @ imm = #0x277118
  36b4ec: ab34         	add	r3, sp, #0xd0
  36b4ee: 4618         	mov	r0, r3
  36b4f0: f04a f210    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44a420
  36b4f4: ab32         	add	r3, sp, #0xc8
  36b4f6: 4618         	mov	r0, r3
  36b4f8: f01e f780    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41ef00
  36b4fc: f277 f896    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x27712c
  36b500: 4603         	mov	r3, r0
  36b502: 4618         	mov	r0, r3
  36b504: 4b79         	ldr	r3, [pc, #0x1e4]        @ 0x36b6ec <MenuLayer::init()+0x1be4>
  36b506: 447b         	add	r3, pc
  36b508: 4619         	mov	r1, r3
  36b50a: 2200         	movs	r2, #0x0
  36b50c: f276 fe8c    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x276d18
  36b510: 4603         	mov	r3, r0
  36b512: 932b         	str	r3, [sp, #0xac]
  36b514: 4b76         	ldr	r3, [pc, #0x1d8]        @ 0x36b6f0 <MenuLayer::init()+0x1be8>
  36b516: 58e3         	ldr	r3, [r4, r3]
  36b518: 681b         	ldr	r3, [r3]
  36b51a: 9a2b         	ldr	r2, [sp, #0xac]
  36b51c: 429a         	cmp	r2, r3
  36b51e: da02         	bge	0x36b526 <MenuLayer::init()+0x1a1e> @ imm = #0x4
  36b520: 9b2b         	ldr	r3, [sp, #0xac]
  36b522: 2b00         	cmp	r3, #0x0
  36b524: da09         	bge	0x36b53a <MenuLayer::init()+0x1a32> @ imm = #0x12
  36b526: f277 f881    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x277102
  36b52a: 4603         	mov	r3, r0
  36b52c: 4618         	mov	r0, r3
  36b52e: 4b71         	ldr	r3, [pc, #0x1c4]        @ 0x36b6f4 <MenuLayer::init()+0x1bec>
  36b530: 447b         	add	r3, pc
  36b532: 4619         	mov	r1, r3
  36b534: 2200         	movs	r2, #0x0
  36b536: f277 f833    	bl	0x5e25a0 <cocos2d::CCUserDefault::setIntegerForKey(char const*, int)> @ imm = #0x277066
  36b53a: f277 f877    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2770ee
  36b53e: 4603         	mov	r3, r0
  36b540: 4618         	mov	r0, r3
  36b542: 4b6d         	ldr	r3, [pc, #0x1b4]        @ 0x36b6f8 <MenuLayer::init()+0x1bf0>
  36b544: 447b         	add	r3, pc
  36b546: 4619         	mov	r1, r3
  36b548: 2200         	movs	r2, #0x0
  36b54a: f276 fe6d    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x276cda
  36b54e: 4603         	mov	r3, r0
  36b550: 461a         	mov	r2, r3
  36b552: 4b6a         	ldr	r3, [pc, #0x1a8]        @ 0x36b6fc <MenuLayer::init()+0x1bf4>
  36b554: 58e3         	ldr	r3, [r4, r3]
  36b556: 601a         	str	r2, [r3]
  36b558: f00c faf2    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0xc5e4
  36b55c: 4603         	mov	r3, r0
  36b55e: 4618         	mov	r0, r3
  36b560: 2100         	movs	r1, #0x0
  36b562: f00f f8b5    	bl	0x37a6d0 <NetworkManager::setUseHostedServer(bool)> @ imm = #0xf16a
  36b566: f00c faeb    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0xc5d6
  36b56a: 4603         	mov	r3, r0
  36b56c: 4618         	mov	r0, r3
  36b56e: 2100         	movs	r1, #0x0
  36b570: f00f f8ba    	bl	0x37a6e8 <NetworkManager::setConnectionType(ConnectionType)> @ imm = #0xf174
  36b574: f00c fae4    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0xc5c8
  36b578: 4603         	mov	r3, r0
  36b57a: 4618         	mov	r0, r3
  36b57c: f0c8 fb90    	bl	0x433ca0 <NetworkManagerBridge::startReachability()> @ imm = #0xc8720
  36b580: f10d 0313    	add.w	r3, sp, #0x13
  36b584: 781c         	ldrb	r4, [r3]
  36b586: ab30         	add	r3, sp, #0xc0
  36b588: 4618         	mov	r0, r3
  36b58a: f04a f1c3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44a386
  36b58e: ab0d         	add	r3, sp, #0x34
  36b590: 4618         	mov	r0, r3
  36b592: f04a f1bf    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44a37e
  36b596: ab05         	add	r3, sp, #0x14
  36b598: 4618         	mov	r0, r3
  36b59a: f04a f1bb    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44a376
  36b59e: 4623         	mov	r3, r4
  36b5a0: e08d         	b	0x36b6be <MenuLayer::init()+0x1bb6> @ imm = #0x11a
  36b5a2: ab4c         	add	r3, sp, #0x130
  36b5a4: 4618         	mov	r0, r3
  36b5a6: f04a f1b5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44a36a
  36b5aa: e7ff         	b	0x36b5ac <MenuLayer::init()+0x1aa4> @ imm = #-0x2
  36b5ac: ab48         	add	r3, sp, #0x120
  36b5ae: 4618         	mov	r0, r3
  36b5b0: f01e f724    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41ee48
  36b5b4: f01c f57a    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x41caf4
  36b5b8: ab06         	add	r3, sp, #0x18
  36b5ba: 4618         	mov	r0, r3
  36b5bc: f04a f1aa    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44a354
  36b5c0: e7ff         	b	0x36b5c2 <MenuLayer::init()+0x1aba> @ imm = #-0x2
  36b5c2: ab0f         	add	r3, sp, #0x3c
  36b5c4: 4618         	mov	r0, r3
  36b5c6: f01e f719    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41ee32
  36b5ca: e072         	b	0x36b6b2 <MenuLayer::init()+0x1baa> @ imm = #0xe4
  36b5cc: ab07         	add	r3, sp, #0x1c
  36b5ce: 4618         	mov	r0, r3
  36b5d0: f04a f1a0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44a340
  36b5d4: e7ff         	b	0x36b5d6 <MenuLayer::init()+0x1ace> @ imm = #-0x2
  36b5d6: ab0f         	add	r3, sp, #0x3c
  36b5d8: 4618         	mov	r0, r3
  36b5da: f01e f70f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41ee1e
  36b5de: e068         	b	0x36b6b2 <MenuLayer::init()+0x1baa> @ imm = #0xd0
  36b5e0: ab08         	add	r3, sp, #0x20
  36b5e2: 4618         	mov	r0, r3
  36b5e4: f04a f196    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44a32c
  36b5e8: e7ff         	b	0x36b5ea <MenuLayer::init()+0x1ae2> @ imm = #-0x2
  36b5ea: ab0f         	add	r3, sp, #0x3c
  36b5ec: 4618         	mov	r0, r3
  36b5ee: f01e f705    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41ee0a
  36b5f2: e05e         	b	0x36b6b2 <MenuLayer::init()+0x1baa> @ imm = #0xbc
  36b5f4: ab09         	add	r3, sp, #0x24
  36b5f6: 4618         	mov	r0, r3
  36b5f8: f04a f18c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44a318
  36b5fc: e7ff         	b	0x36b5fe <MenuLayer::init()+0x1af6> @ imm = #-0x2
  36b5fe: ab0f         	add	r3, sp, #0x3c
  36b600: 4618         	mov	r0, r3
  36b602: f01e f6fb    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41edf6
  36b606: e054         	b	0x36b6b2 <MenuLayer::init()+0x1baa> @ imm = #0xa8
  36b608: ab0a         	add	r3, sp, #0x28
  36b60a: 4618         	mov	r0, r3
  36b60c: f04a f182    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44a304
  36b610: e7ff         	b	0x36b612 <MenuLayer::init()+0x1b0a> @ imm = #-0x2
  36b612: ab0f         	add	r3, sp, #0x3c
  36b614: 4618         	mov	r0, r3
  36b616: f01e f6f1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41ede2
  36b61a: e04a         	b	0x36b6b2 <MenuLayer::init()+0x1baa> @ imm = #0x94
  36b61c: ab0b         	add	r3, sp, #0x2c
  36b61e: 4618         	mov	r0, r3
  36b620: f04a f178    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44a2f0
  36b624: e7ff         	b	0x36b626 <MenuLayer::init()+0x1b1e> @ imm = #-0x2
  36b626: ab0f         	add	r3, sp, #0x3c
  36b628: 4618         	mov	r0, r3
  36b62a: f01e f6e7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41edce
  36b62e: e040         	b	0x36b6b2 <MenuLayer::init()+0x1baa> @ imm = #0x80
  36b630: ab0c         	add	r3, sp, #0x30
  36b632: 4618         	mov	r0, r3
  36b634: f04a f16e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44a2dc
  36b638: e7ff         	b	0x36b63a <MenuLayer::init()+0x1b32> @ imm = #-0x2
  36b63a: ab0f         	add	r3, sp, #0x3c
  36b63c: 4618         	mov	r0, r3
  36b63e: f01e f6dd    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41edba
  36b642: e036         	b	0x36b6b2 <MenuLayer::init()+0x1baa> @ imm = #0x6c
  36b644: ab4c         	add	r3, sp, #0x130
  36b646: 4618         	mov	r0, r3
  36b648: f01e f6d8    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41edb0
  36b64c: e031         	b	0x36b6b2 <MenuLayer::init()+0x1baa> @ imm = #0x62
  36b64e: ab0e         	add	r3, sp, #0x38
  36b650: 4618         	mov	r0, r3
  36b652: f04a f15f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44a2be
  36b656: e7ff         	b	0x36b658 <MenuLayer::init()+0x1b50> @ imm = #-0x2
  36b658: ab0f         	add	r3, sp, #0x3c
  36b65a: 4618         	mov	r0, r3
  36b65c: f01e f6ce    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41ed9c
  36b660: e022         	b	0x36b6a8 <MenuLayer::init()+0x1ba0> @ imm = #0x44
  36b662: ab0f         	add	r3, sp, #0x3c
  36b664: 4618         	mov	r0, r3
  36b666: f04a f155    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44a2aa
  36b66a: e7ff         	b	0x36b66c <MenuLayer::init()+0x1b64> @ imm = #-0x2
  36b66c: ab4c         	add	r3, sp, #0x130
  36b66e: 4618         	mov	r0, r3
  36b670: f01e f6c4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41ed88
  36b674: e018         	b	0x36b6a8 <MenuLayer::init()+0x1ba0> @ imm = #0x30
  36b676: ab32         	add	r3, sp, #0xc8
  36b678: 4618         	mov	r0, r3
  36b67a: f04a f14b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44a296
  36b67e: e7ff         	b	0x36b680 <MenuLayer::init()+0x1b78> @ imm = #-0x2
  36b680: ab34         	add	r3, sp, #0xd0
  36b682: 4618         	mov	r0, r3
  36b684: f01e f6ba    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41ed74
  36b688: e00e         	b	0x36b6a8 <MenuLayer::init()+0x1ba0> @ imm = #0x1c
  36b68a: ab34         	add	r3, sp, #0xd0
  36b68c: 4618         	mov	r0, r3
  36b68e: f04a f141    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44a282
  36b692: e7ff         	b	0x36b694 <MenuLayer::init()+0x1b8c> @ imm = #-0x2
  36b694: ab32         	add	r3, sp, #0xc8
  36b696: 4618         	mov	r0, r3
  36b698: f01e f6b0    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41ed60
  36b69c: e7ff         	b	0x36b69e <MenuLayer::init()+0x1b96> @ imm = #-0x2
  36b69e: ab30         	add	r3, sp, #0xc0
  36b6a0: 4618         	mov	r0, r3
  36b6a2: f04a f137    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44a26e
  36b6a6: e7ff         	b	0x36b6a8 <MenuLayer::init()+0x1ba0> @ imm = #-0x2
  36b6a8: ab0d         	add	r3, sp, #0x34
  36b6aa: 4618         	mov	r0, r3
  36b6ac: f04a f132    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44a264
  36b6b0: e7ff         	b	0x36b6b2 <MenuLayer::init()+0x1baa> @ imm = #-0x2
  36b6b2: ab05         	add	r3, sp, #0x14
  36b6b4: 4618         	mov	r0, r3
  36b6b6: f04a f12d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44a25a
  36b6ba: f01c f4f7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x41c9ee
  36b6be: 4618         	mov	r0, r3
  36b6c0: b051         	add	sp, #0x144
  36b6c2: ecbd 8b02    	vpop	{d8}
  36b6c6: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x36b6c7); words below are literal-pool data ---
  36b6c8: 2240         	movs	r2, #0x40
  36b6ca: 0046         	lsls	r6, r0, #0x1
  36b6cc: d730         	bvc	0x36b730 <MenuLayer::~MenuLayer()+0x30> @ imm = #0x60
  36b6ce: ffff 21bc    	vsra.u64	d18, d28, #0x1
  36b6d2: 0046         	lsls	r6, r0, #0x1
  36b6d4: dbf0         	blt	0x36b6b8 <MenuLayer::init()+0x1bb0> @ imm = #-0x20
  36b6d6: ffff dbf4    	<unknown>
  36b6da: ffff 2150    	vsra.u32	q9, q0, #0x1
  36b6de: 0046         	lsls	r6, r0, #0x1
  36b6e0: 2140         	movs	r1, #0x40
  36b6e2: 0046         	lsls	r6, r0, #0x1
  36b6e4: 20fa         	movs	r0, #0xfa
  36b6e6: 0046         	lsls	r6, r0, #0x1
  36b6e8: 20de         	movs	r0, #0xde
  36b6ea: 0046         	lsls	r6, r0, #0x1
  36b6ec: 20ce         	movs	r0, #0xce
  36b6ee: 0046         	lsls	r6, r0, #0x1
  36b6f0: d8f4         	bhi	0x36b6dc <MenuLayer::init()+0x1bd4> @ imm = #-0x18
  36b6f2: ffff 20a4    	<unknown>
  36b6f6: 0046         	lsls	r6, r0, #0x1
  36b6f8: 2090         	movs	r0, #0x90
  36b6fa: 0046         	lsls	r6, r0, #0x1
  36b6fc: d8b0         	bhi	0x36b660 <MenuLayer::init()+0x1b58> @ imm = #-0xa0
  36b6fe: ffff b500    	<unknown>

// ==== MenuLayer::~MenuLayer
//      file offset 0x36b700 (= ELF address; Ghidra 0x37b700), 316 bytes, Thumb-2
  36b700: b500         	push	{lr}
  36b702: b083         	sub	sp, #0xc
  36b704: 9001         	str	r0, [sp, #0x4]
  36b706: 4b4b         	ldr	r3, [pc, #0x12c]        @ 0x36b834 <MenuLayer::~MenuLayer()+0x134>
  36b708: 447b         	add	r3, pc
  36b70a: 9a01         	ldr	r2, [sp, #0x4]
  36b70c: 494a         	ldr	r1, [pc, #0x128]        @ 0x36b838 <MenuLayer::~MenuLayer()+0x138>
  36b70e: 5859         	ldr	r1, [r3, r1]
  36b710: 3108         	adds	r1, #0x8
  36b712: 6011         	str	r1, [r2]
  36b714: 9a01         	ldr	r2, [sp, #0x4]
  36b716: 4948         	ldr	r1, [pc, #0x120]        @ 0x36b838 <MenuLayer::~MenuLayer()+0x138>
  36b718: 5859         	ldr	r1, [r3, r1]
  36b71a: f501 7104    	add.w	r1, r1, #0x210
  36b71e: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  36b722: 9a01         	ldr	r2, [sp, #0x4]
  36b724: 4944         	ldr	r1, [pc, #0x110]        @ 0x36b838 <MenuLayer::~MenuLayer()+0x138>
  36b726: 5859         	ldr	r1, [r3, r1]
  36b728: f501 7110    	add.w	r1, r1, #0x240
  36b72c: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  36b730: 9a01         	ldr	r2, [sp, #0x4]
  36b732: 4941         	ldr	r1, [pc, #0x104]        @ 0x36b838 <MenuLayer::~MenuLayer()+0x138>
  36b734: 585b         	ldr	r3, [r3, r1]
  36b736: f503 7313    	add.w	r3, r3, #0x24c
  36b73a: f8c2 30ec    	str.w	r3, [r2, #0xec]
  36b73e: 9b01         	ldr	r3, [sp, #0x4]
  36b740: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  36b744: 4618         	mov	r0, r3
  36b746: f22c fbb7    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x22c76e
  36b74a: 9b01         	ldr	r3, [sp, #0x4]
  36b74c: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  36b750: 4618         	mov	r0, r3
  36b752: f22c fbb1    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x22c762
  36b756: 9b01         	ldr	r3, [sp, #0x4]
  36b758: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  36b75c: 4618         	mov	r0, r3
  36b75e: f22c fbab    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x22c756
  36b762: 9b01         	ldr	r3, [sp, #0x4]
  36b764: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  36b768: 4618         	mov	r0, r3
  36b76a: f22c fba5    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x22c74a
  36b76e: 9b01         	ldr	r3, [sp, #0x4]
  36b770: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  36b774: 4618         	mov	r0, r3
  36b776: f22c fb9f    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x22c73e
  36b77a: 9b01         	ldr	r3, [sp, #0x4]
  36b77c: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  36b780: 4618         	mov	r0, r3
  36b782: f22c fb99    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x22c732
  36b786: 9b01         	ldr	r3, [sp, #0x4]
  36b788: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  36b78c: 4618         	mov	r0, r3
  36b78e: f22c fb93    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x22c726
  36b792: 9b01         	ldr	r3, [sp, #0x4]
  36b794: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  36b798: 4618         	mov	r0, r3
  36b79a: f22c fb8d    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x22c71a
  36b79e: 9b01         	ldr	r3, [sp, #0x4]
  36b7a0: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  36b7a4: 4618         	mov	r0, r3
  36b7a6: f22c fb87    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x22c70e
  36b7aa: 9b01         	ldr	r3, [sp, #0x4]
  36b7ac: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  36b7b0: 4618         	mov	r0, r3
  36b7b2: f22c fb81    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x22c702
  36b7b6: 9b01         	ldr	r3, [sp, #0x4]
  36b7b8: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  36b7bc: 4618         	mov	r0, r3
  36b7be: f22c fb7b    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x22c6f6
  36b7c2: 9b01         	ldr	r3, [sp, #0x4]
  36b7c4: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  36b7c8: 4618         	mov	r0, r3
  36b7ca: f22c fb75    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x22c6ea
  36b7ce: 9b01         	ldr	r3, [sp, #0x4]
  36b7d0: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  36b7d4: 4618         	mov	r0, r3
  36b7d6: f22c fb6f    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x22c6de
  36b7da: 9b01         	ldr	r3, [sp, #0x4]
  36b7dc: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  36b7e0: 4618         	mov	r0, r3
  36b7e2: f22c fb69    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x22c6d2
  36b7e6: 9b01         	ldr	r3, [sp, #0x4]
  36b7e8: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  36b7ec: 4618         	mov	r0, r3
  36b7ee: f22c fb63    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x22c6c6
  36b7f2: 9b01         	ldr	r3, [sp, #0x4]
  36b7f4: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  36b7f8: 4618         	mov	r0, r3
  36b7fa: f22c fb5d    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x22c6ba
  36b7fe: 9b01         	ldr	r3, [sp, #0x4]
  36b800: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  36b804: 4618         	mov	r0, r3
  36b806: f22c fb57    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x22c6ae
  36b80a: f00c f999    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0xc332
  36b80e: 4603         	mov	r3, r0
  36b810: 4618         	mov	r0, r3
  36b812: f0c8 fa49    	bl	0x433ca8 <NetworkManagerBridge::stopReachability()> @ imm = #0xc8492
  36b816: 9b01         	ldr	r3, [sp, #0x4]
  36b818: 4618         	mov	r0, r3
  36b81a: f241 fc97    	bl	0x5ad14c <cocos2d::CCLayer::~CCLayer()> @ imm = #0x24192e
  36b81e: 2300         	movs	r3, #0x0
  36b820: 2b00         	cmp	r3, #0x0
  36b822: d002         	beq	0x36b82a <MenuLayer::~MenuLayer()+0x12a> @ imm = #0x4
  36b824: 9801         	ldr	r0, [sp, #0x4]
  36b826: f01c f43d    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x41c87a
  36b82a: 9b01         	ldr	r3, [sp, #0x4]
  36b82c: 4618         	mov	r0, r3
  36b82e: b003         	add	sp, #0xc
  36b830: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x36b833); words below are literal-pool data ---
  36b834: 7300         	strb	r0, [r0, #0xc]
  36b836: 005c         	lsls	r4, r3, #0x1
  36b838: dbc0         	blt	0x36b7bc <MenuLayer::~MenuLayer()+0xbc> @ imm = #-0x80
  36b83a: ffff f1a0    	<unknown>

// ==== MenuLayer::~MenuLayer
//      file offset 0x36b83c (= ELF address; Ghidra 0x37b83c), 8 bytes, Thumb-2
  36b83c: f1a0 00e4    	sub.w	r0, r0, #0xe4
  36b840: f7ff bf5e    	b.w	0x36b700 <MenuLayer::~MenuLayer()> @ imm = #-0x144

// ==== MenuLayer::~MenuLayer
//      file offset 0x36b844 (= ELF address; Ghidra 0x37b844), 28 bytes, Thumb-2
  36b844: b500         	push	{lr}
  36b846: b083         	sub	sp, #0xc
  36b848: 9001         	str	r0, [sp, #0x4]
  36b84a: 9801         	ldr	r0, [sp, #0x4]
  36b84c: f7ff ff58    	bl	0x36b700 <MenuLayer::~MenuLayer()> @ imm = #-0x150
  36b850: 9801         	ldr	r0, [sp, #0x4]
  36b852: f01c f427    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x41c84e
  36b856: 9b01         	ldr	r3, [sp, #0x4]
  36b858: 4618         	mov	r0, r3
  36b85a: b003         	add	sp, #0xc
  36b85c: f85d fb04    	ldr	pc, [sp], #4

// ==== MenuLayer::~MenuLayer
//      file offset 0x36b860 (= ELF address; Ghidra 0x37b860), 8 bytes, Thumb-2
  36b860: f1a0 00e4    	sub.w	r0, r0, #0xe4
  36b864: f7ff bfee    	b.w	0x36b844 <MenuLayer::~MenuLayer()> @ imm = #-0x24

// ==== MenuLayer::onEnter
//      file offset 0x36b868 (= ELF address; Ghidra 0x37b868), 82 bytes, Thumb-2
  36b868: b500         	push	{lr}
  36b86a: b083         	sub	sp, #0xc
  36b86c: 9001         	str	r0, [sp, #0x4]
  36b86e: 9b01         	ldr	r3, [sp, #0x4]
  36b870: 4618         	mov	r0, r3
  36b872: f241 fff3    	bl	0x5ad85c <cocos2d::CCLayer::onEnter()> @ imm = #0x241fe6
  36b876: f0c0 fbe9    	bl	0x42c04c <ApplicationInterface::createAdBanner()> @ imm = #0xc07d2
  36b87a: f00c f961    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0xc2c2
  36b87e: 4603         	mov	r3, r0
  36b880: 4618         	mov	r0, r3
  36b882: f00e ff7f    	bl	0x37a784 <NetworkManager::updateServerConfig()> @ imm = #0xeefe
  36b886: f0b6 fdd3    	bl	0x422430 <ApplicationInterface::hasClaimedIdentity()> @ imm = #0xb6ba6
  36b88a: 4603         	mov	r3, r0
  36b88c: 2b00         	cmp	r3, #0x0
  36b88e: d011         	beq	0x36b8b4 <MenuLayer::onEnter()+0x4c> @ imm = #0x22
  36b890: f00c f956    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0xc2ac
  36b894: 4603         	mov	r3, r0
  36b896: 4618         	mov	r0, r3
  36b898: f00e f8ea    	bl	0x379a70 <NetworkManager::checkCurrentSessionIsValid()> @ imm = #0xe1d4
  36b89c: 4603         	mov	r3, r0
  36b89e: f083 0301    	eor	r3, r3, #0x1
  36b8a2: b2db         	uxtb	r3, r3
  36b8a4: 2b00         	cmp	r3, #0x0
  36b8a6: d005         	beq	0x36b8b4 <MenuLayer::onEnter()+0x4c> @ imm = #0xa
  36b8a8: f00c f94a    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0xc294
  36b8ac: 4603         	mov	r3, r0
  36b8ae: 4618         	mov	r0, r3
  36b8b0: f00f fbd0    	bl	0x37b054 <NetworkManager::requestWebSession()> @ imm = #0xf7a0
  36b8b4: b003         	add	sp, #0xc
  36b8b6: f85d fb04    	ldr	pc, [sp], #4

// ==== MenuLayer::onExit
//      file offset 0x36b8bc (= ELF address; Ghidra 0x37b8bc), 28 bytes, Thumb-2
  36b8bc: b500         	push	{lr}
  36b8be: b083         	sub	sp, #0xc
  36b8c0: 9001         	str	r0, [sp, #0x4]
  36b8c2: 9b01         	ldr	r3, [sp, #0x4]
  36b8c4: 4618         	mov	r0, r3
  36b8c6: f225 fd17    	bl	0x5912f8 <cocos2d::CCNode::unscheduleAllSelectors()> @ imm = #0x225a2e
  36b8ca: 9b01         	ldr	r3, [sp, #0x4]
  36b8cc: 4618         	mov	r0, r3
  36b8ce: f242 f803    	bl	0x5ad8d8 <cocos2d::CCLayer::onExit()> @ imm = #0x242006
  36b8d2: b003         	add	sp, #0xc
  36b8d4: f85d fb04    	ldr	pc, [sp], #4

// ==== MenuLayer::onHelp
//      file offset 0x36b8d8 (= ELF address; Ghidra 0x37b8d8), 360 bytes, Thumb-2
  36b8d8: b530         	push	{r4, r5, lr}
  36b8da: b08b         	sub	sp, #0x2c
  36b8dc: 9003         	str	r0, [sp, #0xc]
  36b8de: 9102         	str	r1, [sp, #0x8]
  36b8e0: 4c51         	ldr	r4, [pc, #0x144]        @ 0x36ba28 <MenuLayer::onHelp(cocos2d::CCObject*)+0x150>
  36b8e2: 447c         	add	r4, pc
  36b8e4: f00c f92c    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0xc258
  36b8e8: 4603         	mov	r3, r0
  36b8ea: 4618         	mov	r0, r3
  36b8ec: f0c8 f9e0    	bl	0x433cb0 <NetworkManagerBridge::isInternetReachable()> @ imm = #0xc83c0
  36b8f0: 4603         	mov	r3, r0
  36b8f2: f083 0301    	eor	r3, r3, #0x1
  36b8f6: b2db         	uxtb	r3, r3
  36b8f8: 2b00         	cmp	r3, #0x0
  36b8fa: d051         	beq	0x36b9a0 <MenuLayer::onHelp(cocos2d::CCObject*)+0xc8> @ imm = #0xa2
  36b8fc: ab05         	add	r3, sp, #0x14
  36b8fe: 4618         	mov	r0, r3
  36b900: f01e f578    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x41eaf0
  36b904: aa08         	add	r2, sp, #0x20
  36b906: ab05         	add	r3, sp, #0x14
  36b908: 4610         	mov	r0, r2
  36b90a: 4a48         	ldr	r2, [pc, #0x120]        @ 0x36ba2c <MenuLayer::onHelp(cocos2d::CCObject*)+0x154>
  36b90c: 447a         	add	r2, pc
  36b90e: 4611         	mov	r1, r2
  36b910: 461a         	mov	r2, r3
  36b912: f04b f0a5    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x44b14a
  36b916: ab06         	add	r3, sp, #0x18
  36b918: 4618         	mov	r0, r3
  36b91a: f01e f56b    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x41ead6
  36b91e: aa09         	add	r2, sp, #0x24
  36b920: ab06         	add	r3, sp, #0x18
  36b922: 4610         	mov	r0, r2
  36b924: 4a42         	ldr	r2, [pc, #0x108]        @ 0x36ba30 <MenuLayer::onHelp(cocos2d::CCObject*)+0x158>
  36b926: 447a         	add	r2, pc
  36b928: 4611         	mov	r1, r2
  36b92a: 461a         	mov	r2, r3
  36b92c: f04b f098    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x44b130
  36b930: ab04         	add	r3, sp, #0x10
  36b932: 4618         	mov	r0, r3
  36b934: f01e f55e    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x41eabc
  36b938: aa07         	add	r2, sp, #0x1c
  36b93a: ab04         	add	r3, sp, #0x10
  36b93c: 4610         	mov	r0, r2
  36b93e: 4a3d         	ldr	r2, [pc, #0xf4]         @ 0x36ba34 <MenuLayer::onHelp(cocos2d::CCObject*)+0x15c>
  36b940: 447a         	add	r2, pc
  36b942: 4611         	mov	r1, r2
  36b944: 461a         	mov	r2, r3
  36b946: f04b f08b    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x44b116
  36b94a: ab07         	add	r3, sp, #0x1c
  36b94c: 4618         	mov	r0, r3
  36b94e: f22e f875    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x22e0ea
  36b952: 4603         	mov	r3, r0
  36b954: 4618         	mov	r0, r3
  36b956: 2100         	movs	r1, #0x0
  36b958: f22e fa5a    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x22e4b4
  36b95c: 4603         	mov	r3, r0
  36b95e: a908         	add	r1, sp, #0x20
  36b960: aa09         	add	r2, sp, #0x24
  36b962: 2000         	movs	r0, #0x0
  36b964: 9000         	str	r0, [sp]
  36b966: 2000         	movs	r0, #0x0
  36b968: 9001         	str	r0, [sp, #0x4]
  36b96a: 2000         	movs	r0, #0x0
  36b96c: f773 ff42    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0x8c17c
  36b970: ab07         	add	r3, sp, #0x1c
  36b972: 4618         	mov	r0, r3
  36b974: f049 f7ce    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x449f9c
  36b978: ab04         	add	r3, sp, #0x10
  36b97a: 4618         	mov	r0, r3
  36b97c: f01e f53e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41ea7c
  36b980: ab09         	add	r3, sp, #0x24
  36b982: 4618         	mov	r0, r3
  36b984: f049 f7c6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x449f8c
  36b988: ab06         	add	r3, sp, #0x18
  36b98a: 4618         	mov	r0, r3
  36b98c: f01e f536    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41ea6c
  36b990: ab08         	add	r3, sp, #0x20
  36b992: 4618         	mov	r0, r3
  36b994: f049 f7be    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x449f7c
  36b998: ab05         	add	r3, sp, #0x14
  36b99a: 4618         	mov	r0, r3
  36b99c: f01e f52e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41ea5c
  36b9a0: 9b03         	ldr	r3, [sp, #0xc]
  36b9a2: f893 3108    	ldrb.w	r3, [r3, #0x108]
  36b9a6: 2b00         	cmp	r3, #0x0
  36b9a8: d000         	beq	0x36b9ac <MenuLayer::onHelp(cocos2d::CCObject*)+0xd4> @ imm = #0x0
  36b9aa: e03a         	b	0x36ba22 <MenuLayer::onHelp(cocos2d::CCObject*)+0x14a> @ imm = #0x74
  36b9ac: 9b03         	ldr	r3, [sp, #0xc]
  36b9ae: 2201         	movs	r2, #0x1
  36b9b0: f883 2108    	strb.w	r2, [r3, #0x108]
  36b9b4: 4b20         	ldr	r3, [pc, #0x80]         @ 0x36ba38 <MenuLayer::onHelp(cocos2d::CCObject*)+0x160>
  36b9b6: 58e3         	ldr	r3, [r4, r3]
  36b9b8: 681b         	ldr	r3, [r3]
  36b9ba: 4618         	mov	r0, r3
  36b9bc: 210d         	movs	r1, #0xd
  36b9be: f08c f9ff    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x8c3fe
  36b9c2: f22f fdd7    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x22fbae
  36b9c6: 4604         	mov	r4, r0
  36b9c8: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x36ba3c <MenuLayer::onHelp(cocos2d::CCObject*)+0x164>
  36b9ca: 447b         	add	r3, pc
  36b9cc: 681d         	ldr	r5, [r3]
  36b9ce: f7d8 f821    	bl	0x343a14 <HelpLayer::scene()> @ imm = #-0x27fbe
  36b9d2: 4603         	mov	r3, r0
  36b9d4: 4628         	mov	r0, r5
  36b9d6: 4619         	mov	r1, r3
  36b9d8: f245 fd26    	bl	0x5b1428 <cocos2d::CCTransitionSlideInR::create(float, cocos2d::CCScene*)> @ imm = #0x245a4c
  36b9dc: 4603         	mov	r3, r0
  36b9de: 4620         	mov	r0, r4
  36b9e0: 4619         	mov	r1, r3
  36b9e2: f230 fcbb    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x230976
  36b9e6: e01c         	b	0x36ba22 <MenuLayer::onHelp(cocos2d::CCObject*)+0x14a> @ imm = #0x38
  36b9e8: ab07         	add	r3, sp, #0x1c
  36b9ea: 4618         	mov	r0, r3
  36b9ec: f049 f792    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x449f24
  36b9f0: e7ff         	b	0x36b9f2 <MenuLayer::onHelp(cocos2d::CCObject*)+0x11a> @ imm = #-0x2
  36b9f2: ab04         	add	r3, sp, #0x10
  36b9f4: 4618         	mov	r0, r3
  36b9f6: f01e f501    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41ea02
  36b9fa: ab09         	add	r3, sp, #0x24
  36b9fc: 4618         	mov	r0, r3
  36b9fe: f049 f789    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x449f12
  36ba02: e7ff         	b	0x36ba04 <MenuLayer::onHelp(cocos2d::CCObject*)+0x12c> @ imm = #-0x2
  36ba04: ab06         	add	r3, sp, #0x18
  36ba06: 4618         	mov	r0, r3
  36ba08: f01e f4f8    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41e9f0
  36ba0c: ab08         	add	r3, sp, #0x20
  36ba0e: 4618         	mov	r0, r3
  36ba10: f049 f780    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x449f00
  36ba14: e7ff         	b	0x36ba16 <MenuLayer::onHelp(cocos2d::CCObject*)+0x13e> @ imm = #-0x2
  36ba16: ab05         	add	r3, sp, #0x14
  36ba18: 4618         	mov	r0, r3
  36ba1a: f01e f4ef    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41e9de
  36ba1e: f01c f345    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x41c68a
  36ba22: b00b         	add	sp, #0x2c
  36ba24: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x36ba25); words below are literal-pool data ---
  36ba26: bf00         	nop
  36ba28: 7126         	strb	r6, [r4, #0x4]
  36ba2a: 005c         	lsls	r4, r3, #0x1
  36ba2c: 1cd4         	adds	r4, r2, #0x3
  36ba2e: 0046         	lsls	r6, r0, #0x1
  36ba30: 1cd2         	adds	r2, r2, #0x3
  36ba32: 0046         	lsls	r6, r0, #0x1
  36ba34: 1cf8         	adds	r0, r7, #0x3
  36ba36: 0046         	lsls	r6, r0, #0x1
  36ba38: d730         	bvc	0x36ba9c <MenuLayer::onNews(cocos2d::CCObject*)+0x5c> @ imm = #0x60
  36ba3a: ffff 7a52    	<unknown>
  36ba3e: 005c         	lsls	r4, r3, #0x1

// ==== MenuLayer::onNews
//      file offset 0x36ba40 (= ELF address; Ghidra 0x37ba40), 444 bytes, Thumb-2
  36ba40: b530         	push	{r4, r5, lr}
  36ba42: b08b         	sub	sp, #0x2c
  36ba44: 9003         	str	r0, [sp, #0xc]
  36ba46: 9102         	str	r1, [sp, #0x8]
  36ba48: 4c64         	ldr	r4, [pc, #0x190]        @ 0x36bbdc <MenuLayer::onNews(cocos2d::CCObject*)+0x19c>
  36ba4a: 447c         	add	r4, pc
  36ba4c: f00c f878    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0xc0f0
  36ba50: 4603         	mov	r3, r0
  36ba52: 4618         	mov	r0, r3
  36ba54: f0c8 f92c    	bl	0x433cb0 <NetworkManagerBridge::isInternetReachable()> @ imm = #0xc8258
  36ba58: 4603         	mov	r3, r0
  36ba5a: f083 0301    	eor	r3, r3, #0x1
  36ba5e: b2db         	uxtb	r3, r3
  36ba60: 2b00         	cmp	r3, #0x0
  36ba62: d051         	beq	0x36bb08 <MenuLayer::onNews(cocos2d::CCObject*)+0xc8> @ imm = #0xa2
  36ba64: ab05         	add	r3, sp, #0x14
  36ba66: 4618         	mov	r0, r3
  36ba68: f01e f4c4    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x41e988
  36ba6c: aa08         	add	r2, sp, #0x20
  36ba6e: ab05         	add	r3, sp, #0x14
  36ba70: 4610         	mov	r0, r2
  36ba72: 4a5b         	ldr	r2, [pc, #0x16c]        @ 0x36bbe0 <MenuLayer::onNews(cocos2d::CCObject*)+0x1a0>
  36ba74: 447a         	add	r2, pc
  36ba76: 4611         	mov	r1, r2
  36ba78: 461a         	mov	r2, r3
  36ba7a: f04a f7f1    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x44afe2
  36ba7e: ab06         	add	r3, sp, #0x18
  36ba80: 4618         	mov	r0, r3
  36ba82: f01e f4b7    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x41e96e
  36ba86: aa09         	add	r2, sp, #0x24
  36ba88: ab06         	add	r3, sp, #0x18
  36ba8a: 4610         	mov	r0, r2
  36ba8c: 4a55         	ldr	r2, [pc, #0x154]        @ 0x36bbe4 <MenuLayer::onNews(cocos2d::CCObject*)+0x1a4>
  36ba8e: 447a         	add	r2, pc
  36ba90: 4611         	mov	r1, r2
  36ba92: 461a         	mov	r2, r3
  36ba94: f04a f7e4    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x44afc8
  36ba98: ab04         	add	r3, sp, #0x10
  36ba9a: 4618         	mov	r0, r3
  36ba9c: f01e f4aa    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x41e954
  36baa0: aa07         	add	r2, sp, #0x1c
  36baa2: ab04         	add	r3, sp, #0x10
  36baa4: 4610         	mov	r0, r2
  36baa6: 4a50         	ldr	r2, [pc, #0x140]        @ 0x36bbe8 <MenuLayer::onNews(cocos2d::CCObject*)+0x1a8>
  36baa8: 447a         	add	r2, pc
  36baaa: 4611         	mov	r1, r2
  36baac: 461a         	mov	r2, r3
  36baae: f04a f7d7    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x44afae
  36bab2: ab07         	add	r3, sp, #0x1c
  36bab4: 4618         	mov	r0, r3
  36bab6: f22d ffc1    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x22df82
  36baba: 4603         	mov	r3, r0
  36babc: 4618         	mov	r0, r3
  36babe: 2100         	movs	r1, #0x0
  36bac0: f22e f9a6    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x22e34c
  36bac4: 4603         	mov	r3, r0
  36bac6: a908         	add	r1, sp, #0x20
  36bac8: aa09         	add	r2, sp, #0x24
  36baca: 2000         	movs	r0, #0x0
  36bacc: 9000         	str	r0, [sp]
  36bace: 2000         	movs	r0, #0x0
  36bad0: 9001         	str	r0, [sp, #0x4]
  36bad2: 2000         	movs	r0, #0x0
  36bad4: f773 fe8e    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0x8c2e4
  36bad8: ab07         	add	r3, sp, #0x1c
  36bada: 4618         	mov	r0, r3
  36badc: f049 f71a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x449e34
  36bae0: ab04         	add	r3, sp, #0x10
  36bae2: 4618         	mov	r0, r3
  36bae4: f01e f48a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41e914
  36bae8: ab09         	add	r3, sp, #0x24
  36baea: 4618         	mov	r0, r3
  36baec: f049 f712    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x449e24
  36baf0: ab06         	add	r3, sp, #0x18
  36baf2: 4618         	mov	r0, r3
  36baf4: f01e f482    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41e904
  36baf8: ab08         	add	r3, sp, #0x20
  36bafa: 4618         	mov	r0, r3
  36bafc: f049 f70a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x449e14
  36bb00: ab05         	add	r3, sp, #0x14
  36bb02: 4618         	mov	r0, r3
  36bb04: f01e f47a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41e8f4
  36bb08: 9b03         	ldr	r3, [sp, #0xc]
  36bb0a: f893 3108    	ldrb.w	r3, [r3, #0x108]
  36bb0e: 2b00         	cmp	r3, #0x0
  36bb10: d000         	beq	0x36bb14 <MenuLayer::onNews(cocos2d::CCObject*)+0xd4> @ imm = #0x0
  36bb12: e061         	b	0x36bbd8 <MenuLayer::onNews(cocos2d::CCObject*)+0x198> @ imm = #0xc2
  36bb14: f00c f814    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0xc028
  36bb18: 4603         	mov	r3, r0
  36bb1a: 4618         	mov	r0, r3
  36bb1c: f00f fa36    	bl	0x37af8c <NetworkManager::getNewsEpoch()> @ imm = #0xf46c
  36bb20: 4602         	mov	r2, r0
  36bb22: 4b32         	ldr	r3, [pc, #0xc8]         @ 0x36bbec <MenuLayer::onNews(cocos2d::CCObject*)+0x1ac>
  36bb24: 58e3         	ldr	r3, [r4, r3]
  36bb26: 681b         	ldr	r3, [r3]
  36bb28: 429a         	cmp	r2, r3
  36bb2a: db07         	blt	0x36bb3c <MenuLayer::onNews(cocos2d::CCObject*)+0xfc> @ imm = #0xe
  36bb2c: f00c f808    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0xc010
  36bb30: 4603         	mov	r3, r0
  36bb32: 4618         	mov	r0, r3
  36bb34: f00f fa2a    	bl	0x37af8c <NetworkManager::getNewsEpoch()> @ imm = #0xf454
  36bb38: 4603         	mov	r3, r0
  36bb3a: e002         	b	0x36bb42 <MenuLayer::onNews(cocos2d::CCObject*)+0x102> @ imm = #0x4
  36bb3c: 4b2b         	ldr	r3, [pc, #0xac]         @ 0x36bbec <MenuLayer::onNews(cocos2d::CCObject*)+0x1ac>
  36bb3e: 58e3         	ldr	r3, [r4, r3]
  36bb40: 681b         	ldr	r3, [r3]
  36bb42: 4a2a         	ldr	r2, [pc, #0xa8]         @ 0x36bbec <MenuLayer::onNews(cocos2d::CCObject*)+0x1ac>
  36bb44: 58a2         	ldr	r2, [r4, r2]
  36bb46: 6013         	str	r3, [r2]
  36bb48: f276 fd70    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x276ae0
  36bb4c: 4602         	mov	r2, r0
  36bb4e: 4b27         	ldr	r3, [pc, #0x9c]         @ 0x36bbec <MenuLayer::onNews(cocos2d::CCObject*)+0x1ac>
  36bb50: 58e3         	ldr	r3, [r4, r3]
  36bb52: 681b         	ldr	r3, [r3]
  36bb54: 4610         	mov	r0, r2
  36bb56: 4a26         	ldr	r2, [pc, #0x98]         @ 0x36bbf0 <MenuLayer::onNews(cocos2d::CCObject*)+0x1b0>
  36bb58: 447a         	add	r2, pc
  36bb5a: 4611         	mov	r1, r2
  36bb5c: 461a         	mov	r2, r3
  36bb5e: f276 fd1f    	bl	0x5e25a0 <cocos2d::CCUserDefault::setIntegerForKey(char const*, int)> @ imm = #0x276a3e
  36bb62: 9b03         	ldr	r3, [sp, #0xc]
  36bb64: 2201         	movs	r2, #0x1
  36bb66: f883 2108    	strb.w	r2, [r3, #0x108]
  36bb6a: 4b22         	ldr	r3, [pc, #0x88]         @ 0x36bbf4 <MenuLayer::onNews(cocos2d::CCObject*)+0x1b4>
  36bb6c: 58e3         	ldr	r3, [r4, r3]
  36bb6e: 681b         	ldr	r3, [r3]
  36bb70: 4618         	mov	r0, r3
  36bb72: 210d         	movs	r1, #0xd
  36bb74: f08c f924    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x8c248
  36bb78: f22f fcfc    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x22f9f8
  36bb7c: 4604         	mov	r4, r0
  36bb7e: 4b1e         	ldr	r3, [pc, #0x78]         @ 0x36bbf8 <MenuLayer::onNews(cocos2d::CCObject*)+0x1b8>
  36bb80: 447b         	add	r3, pc
  36bb82: 681d         	ldr	r5, [r3]
  36bb84: f01d f96a    	bl	0x388e5c <NewsLayer::scene()> @ imm = #0x1d2d4
  36bb88: 4603         	mov	r3, r0
  36bb8a: 4628         	mov	r0, r5
  36bb8c: 4619         	mov	r1, r3
  36bb8e: f245 fc4b    	bl	0x5b1428 <cocos2d::CCTransitionSlideInR::create(float, cocos2d::CCScene*)> @ imm = #0x245896
  36bb92: 4603         	mov	r3, r0
  36bb94: 4620         	mov	r0, r4
  36bb96: 4619         	mov	r1, r3
  36bb98: f230 fbe0    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x2307c0
  36bb9c: e01c         	b	0x36bbd8 <MenuLayer::onNews(cocos2d::CCObject*)+0x198> @ imm = #0x38
  36bb9e: ab07         	add	r3, sp, #0x1c
  36bba0: 4618         	mov	r0, r3
  36bba2: f049 f6b7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x449d6e
  36bba6: e7ff         	b	0x36bba8 <MenuLayer::onNews(cocos2d::CCObject*)+0x168> @ imm = #-0x2
  36bba8: ab04         	add	r3, sp, #0x10
  36bbaa: 4618         	mov	r0, r3
  36bbac: f01e f426    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41e84c
  36bbb0: ab09         	add	r3, sp, #0x24
  36bbb2: 4618         	mov	r0, r3
  36bbb4: f049 f6ae    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x449d5c
  36bbb8: e7ff         	b	0x36bbba <MenuLayer::onNews(cocos2d::CCObject*)+0x17a> @ imm = #-0x2
  36bbba: ab06         	add	r3, sp, #0x18
  36bbbc: 4618         	mov	r0, r3
  36bbbe: f01e f41d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41e83a
  36bbc2: ab08         	add	r3, sp, #0x20
  36bbc4: 4618         	mov	r0, r3
  36bbc6: f049 f6a5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x449d4a
  36bbca: e7ff         	b	0x36bbcc <MenuLayer::onNews(cocos2d::CCObject*)+0x18c> @ imm = #-0x2
  36bbcc: ab05         	add	r3, sp, #0x14
  36bbce: 4618         	mov	r0, r3
  36bbd0: f01e f414    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41e828
  36bbd4: f01c f26a    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x41c4d4
  36bbd8: b00b         	add	sp, #0x2c
  36bbda: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x36bbdb); words below are literal-pool data ---
  36bbdc: 6fbe         	ldr	r6, [r7, #0x78]
  36bbde: 005c         	lsls	r4, r3, #0x1
  36bbe0: 1b6c         	subs	r4, r5, r5
  36bbe2: 0046         	lsls	r6, r0, #0x1
  36bbe4: 1bae         	subs	r6, r5, r6
  36bbe6: 0046         	lsls	r6, r0, #0x1
  36bbe8: 1b90         	subs	r0, r2, r6
  36bbea: 0046         	lsls	r6, r0, #0x1
  36bbec: d798         	bvc	0x36bb20 <MenuLayer::onNews(cocos2d::CCObject*)+0xe0> @ imm = #-0xd0
  36bbee: ffff 1b2c    	vtbl.8	d17, {d15, d16, d17, d18}, d28
  36bbf2: 0046         	lsls	r6, r0, #0x1
  36bbf4: d730         	bvc	0x36bc58 <MenuLayer::onSolo(cocos2d::CCObject*)+0x40> @ imm = #0x60
  36bbf6: ffff 789c    	<unknown>
  36bbfa: 005c         	lsls	r4, r3, #0x1

// ==== MenuLayer::onCrossPromoAd
//      file offset 0x36bbfc (= ELF address; Ghidra 0x37bbfc), 26 bytes, Thumb-2
  36bbfc: b500         	push	{lr}
  36bbfe: b083         	sub	sp, #0xc
  36bc00: 9001         	str	r0, [sp, #0x4]
  36bc02: 9100         	str	r1, [sp]
  36bc04: 9b01         	ldr	r3, [sp, #0x4]
  36bc06: f8d3 3158    	ldr.w	r3, [r3, #0x158]
  36bc0a: 4618         	mov	r0, r3
  36bc0c: f0c0 fdc0    	bl	0x42c790 <ApplicationInterface::adClicked(int)> @ imm = #0xc0b80
  36bc10: b003         	add	sp, #0xc
  36bc12: f85d fb04    	ldr	pc, [sp], #4

// ==== MenuLayer::onSolo
//      file offset 0x36bc18 (= ELF address; Ghidra 0x37bc18), 112 bytes, Thumb-2
  36bc18: b530         	push	{r4, r5, lr}
  36bc1a: b083         	sub	sp, #0xc
  36bc1c: 9001         	str	r0, [sp, #0x4]
  36bc1e: 9100         	str	r1, [sp]
  36bc20: 4b15         	ldr	r3, [pc, #0x54]         @ 0x36bc78 <MenuLayer::onSolo(cocos2d::CCObject*)+0x60>
  36bc22: 447b         	add	r3, pc
  36bc24: 9a01         	ldr	r2, [sp, #0x4]
  36bc26: f892 2108    	ldrb.w	r2, [r2, #0x108]
  36bc2a: 2a00         	cmp	r2, #0x0
  36bc2c: d000         	beq	0x36bc30 <MenuLayer::onSolo(cocos2d::CCObject*)+0x18> @ imm = #0x0
  36bc2e: e020         	b	0x36bc72 <MenuLayer::onSolo(cocos2d::CCObject*)+0x5a> @ imm = #0x40
  36bc30: 9a01         	ldr	r2, [sp, #0x4]
  36bc32: 2101         	movs	r1, #0x1
  36bc34: f882 1108    	strb.w	r1, [r2, #0x108]
  36bc38: 4a10         	ldr	r2, [pc, #0x40]         @ 0x36bc7c <MenuLayer::onSolo(cocos2d::CCObject*)+0x64>
  36bc3a: 589a         	ldr	r2, [r3, r2]
  36bc3c: 2100         	movs	r1, #0x0
  36bc3e: 7011         	strb	r1, [r2]
  36bc40: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x36bc80 <MenuLayer::onSolo(cocos2d::CCObject*)+0x68>
  36bc42: 589b         	ldr	r3, [r3, r2]
  36bc44: 681b         	ldr	r3, [r3]
  36bc46: 4618         	mov	r0, r3
  36bc48: 210d         	movs	r1, #0xd
  36bc4a: f08c f8b9    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x8c172
  36bc4e: f22f fc91    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x22f922
  36bc52: 4604         	mov	r4, r0
  36bc54: 4b0b         	ldr	r3, [pc, #0x2c]         @ 0x36bc84 <MenuLayer::onSolo(cocos2d::CCObject*)+0x6c>
  36bc56: 447b         	add	r3, pc
  36bc58: 681d         	ldr	r5, [r3]
  36bc5a: f7e6 fcc7    	bl	0x3525ec <LocalGameLayer::scene()> @ imm = #-0x19672
  36bc5e: 4603         	mov	r3, r0
  36bc60: 4628         	mov	r0, r5
  36bc62: 4619         	mov	r1, r3
  36bc64: f245 fbe0    	bl	0x5b1428 <cocos2d::CCTransitionSlideInR::create(float, cocos2d::CCScene*)> @ imm = #0x2457c0
  36bc68: 4603         	mov	r3, r0
  36bc6a: 4620         	mov	r0, r4
  36bc6c: 4619         	mov	r1, r3
  36bc6e: f230 fb75    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x2306ea
  36bc72: b003         	add	sp, #0xc
  36bc74: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x36bc75); words below are literal-pool data ---
  36bc76: bf00         	nop
  36bc78: 6de6         	ldr	r6, [r4, #0x5c]
  36bc7a: 005c         	lsls	r4, r3, #0x1
  36bc7c: da58         	bge	0x36bd30 <MenuLayer::onQuick(cocos2d::CCObject*)+0x1c> @ imm = #0xb0
  36bc7e: ffff d730    	vqshl.u32	d29, d16, #0x1f
  36bc82: ffff 77c6    	<unknown>
  36bc86: 005c         	lsls	r4, r3, #0x1

// ==== MenuLayer::onMultiplayer
//      file offset 0x36bc88 (= ELF address; Ghidra 0x37bc88), 140 bytes, Thumb-2
  36bc88: b530         	push	{r4, r5, lr}
  36bc8a: b083         	sub	sp, #0xc
  36bc8c: 9001         	str	r0, [sp, #0x4]
  36bc8e: 9100         	str	r1, [sp]
  36bc90: 4c1c         	ldr	r4, [pc, #0x70]         @ 0x36bd04 <MenuLayer::onMultiplayer(cocos2d::CCObject*)+0x7c>
  36bc92: 447c         	add	r4, pc
  36bc94: 9b01         	ldr	r3, [sp, #0x4]
  36bc96: f893 3108    	ldrb.w	r3, [r3, #0x108]
  36bc9a: 2b00         	cmp	r3, #0x0
  36bc9c: d000         	beq	0x36bca0 <MenuLayer::onMultiplayer(cocos2d::CCObject*)+0x18> @ imm = #0x0
  36bc9e: e02e         	b	0x36bcfe <MenuLayer::onMultiplayer(cocos2d::CCObject*)+0x76> @ imm = #0x5c
  36bca0: 9b01         	ldr	r3, [sp, #0x4]
  36bca2: 2201         	movs	r2, #0x1
  36bca4: f883 2108    	strb.w	r2, [r3, #0x108]
  36bca8: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x36bd08 <MenuLayer::onMultiplayer(cocos2d::CCObject*)+0x80>
  36bcaa: 58e3         	ldr	r3, [r4, r3]
  36bcac: 681b         	ldr	r3, [r3]
  36bcae: 4618         	mov	r0, r3
  36bcb0: 210d         	movs	r1, #0xd
  36bcb2: f08c f885    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x8c10a
  36bcb6: 4b15         	ldr	r3, [pc, #0x54]         @ 0x36bd0c <MenuLayer::onMultiplayer(cocos2d::CCObject*)+0x84>
  36bcb8: 58e3         	ldr	r3, [r4, r3]
  36bcba: 681b         	ldr	r3, [r3]
  36bcbc: 2b01         	cmp	r3, #0x1
  36bcbe: d105         	bne	0x36bccc <MenuLayer::onMultiplayer(cocos2d::CCObject*)+0x44> @ imm = #0xa
  36bcc0: f066 fb02    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #0x66604
  36bcc4: 4603         	mov	r3, r0
  36bcc6: 4618         	mov	r0, r3
  36bcc8: f066 fd70    	bl	0x3d27ac <ScoreKeeper::clearScores()> @ imm = #0x66ae0
  36bccc: f00b ff38    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0xbe70
  36bcd0: 4603         	mov	r3, r0
  36bcd2: 4618         	mov	r0, r3
  36bcd4: 2100         	movs	r1, #0x0
  36bcd6: f00e fcfb    	bl	0x37a6d0 <NetworkManager::setUseHostedServer(bool)> @ imm = #0xe9f6
  36bcda: f22f fc4b    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x22f896
  36bcde: 4604         	mov	r4, r0
  36bce0: 4b0b         	ldr	r3, [pc, #0x2c]         @ 0x36bd10 <MenuLayer::onMultiplayer(cocos2d::CCObject*)+0x88>
  36bce2: 447b         	add	r3, pc
  36bce4: 681d         	ldr	r5, [r3]
  36bce6: f7ca fbe9    	bl	0x3364bc <GameTypeLayer::scene()> @ imm = #-0x3582e
  36bcea: 4603         	mov	r3, r0
  36bcec: 4628         	mov	r0, r5
  36bcee: 4619         	mov	r1, r3
  36bcf0: f245 fb9a    	bl	0x5b1428 <cocos2d::CCTransitionSlideInR::create(float, cocos2d::CCScene*)> @ imm = #0x245734
  36bcf4: 4603         	mov	r3, r0
  36bcf6: 4620         	mov	r0, r4
  36bcf8: 4619         	mov	r1, r3
  36bcfa: f230 fb2f    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x23065e
  36bcfe: b003         	add	sp, #0xc
  36bd00: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x36bd01); words below are literal-pool data ---
  36bd02: bf00         	nop
  36bd04: 6d76         	ldr	r6, [r6, #0x54]
  36bd06: 005c         	lsls	r4, r3, #0x1
  36bd08: d730         	bvc	0x36bd6c <MenuLayer::onQuick(cocos2d::CCObject*)+0x58> @ imm = #0x60
  36bd0a: ffff d838    	vqshrun.s64	d29, q12, #0x1
  36bd0e: ffff 773a    	vqshl.u32	d23, d26, #0x1f
  36bd12: 005c         	lsls	r4, r3, #0x1

// ==== MenuLayer::onQuick
//      file offset 0x36bd14 (= ELF address; Ghidra 0x37bd14), 572 bytes, Thumb-2
  36bd14: b530         	push	{r4, r5, lr}
  36bd16: b08b         	sub	sp, #0x2c
  36bd18: 9003         	str	r0, [sp, #0xc]
  36bd1a: 9102         	str	r1, [sp, #0x8]
  36bd1c: 4c7e         	ldr	r4, [pc, #0x1f8]        @ 0x36bf18 <MenuLayer::onQuick(cocos2d::CCObject*)+0x204>
  36bd1e: 447c         	add	r4, pc
  36bd20: f00b ff0e    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0xbe1c
  36bd24: 4603         	mov	r3, r0
  36bd26: 4618         	mov	r0, r3
  36bd28: f0c7 ffc2    	bl	0x433cb0 <NetworkManagerBridge::isInternetReachable()> @ imm = #0xc7f84
  36bd2c: 4603         	mov	r3, r0
  36bd2e: f083 0301    	eor	r3, r3, #0x1
  36bd32: b2db         	uxtb	r3, r3
  36bd34: 2b00         	cmp	r3, #0x0
  36bd36: d059         	beq	0x36bdec <MenuLayer::onQuick(cocos2d::CCObject*)+0xd8> @ imm = #0xb2
  36bd38: 4b78         	ldr	r3, [pc, #0x1e0]        @ 0x36bf1c <MenuLayer::onQuick(cocos2d::CCObject*)+0x208>
  36bd3a: 58e3         	ldr	r3, [r4, r3]
  36bd3c: 681b         	ldr	r3, [r3]
  36bd3e: 4618         	mov	r0, r3
  36bd40: 210e         	movs	r1, #0xe
  36bd42: f08c f83d    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x8c07a
  36bd46: ab05         	add	r3, sp, #0x14
  36bd48: 4618         	mov	r0, r3
  36bd4a: f01e f353    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x41e6a6
  36bd4e: aa08         	add	r2, sp, #0x20
  36bd50: ab05         	add	r3, sp, #0x14
  36bd52: 4610         	mov	r0, r2
  36bd54: 4a72         	ldr	r2, [pc, #0x1c8]        @ 0x36bf20 <MenuLayer::onQuick(cocos2d::CCObject*)+0x20c>
  36bd56: 447a         	add	r2, pc
  36bd58: 4611         	mov	r1, r2
  36bd5a: 461a         	mov	r2, r3
  36bd5c: f04a f680    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x44ad00
  36bd60: ab06         	add	r3, sp, #0x18
  36bd62: 4618         	mov	r0, r3
  36bd64: f01e f346    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x41e68c
  36bd68: aa09         	add	r2, sp, #0x24
  36bd6a: ab06         	add	r3, sp, #0x18
  36bd6c: 4610         	mov	r0, r2
  36bd6e: 4a6d         	ldr	r2, [pc, #0x1b4]        @ 0x36bf24 <MenuLayer::onQuick(cocos2d::CCObject*)+0x210>
  36bd70: 447a         	add	r2, pc
  36bd72: 4611         	mov	r1, r2
  36bd74: 461a         	mov	r2, r3
  36bd76: f04a f673    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x44ace6
  36bd7a: ab04         	add	r3, sp, #0x10
  36bd7c: 4618         	mov	r0, r3
  36bd7e: f01e f339    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x41e672
  36bd82: aa07         	add	r2, sp, #0x1c
  36bd84: ab04         	add	r3, sp, #0x10
  36bd86: 4610         	mov	r0, r2
  36bd88: 4a67         	ldr	r2, [pc, #0x19c]        @ 0x36bf28 <MenuLayer::onQuick(cocos2d::CCObject*)+0x214>
  36bd8a: 447a         	add	r2, pc
  36bd8c: 4611         	mov	r1, r2
  36bd8e: 461a         	mov	r2, r3
  36bd90: f04a f666    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x44accc
  36bd94: ab07         	add	r3, sp, #0x1c
  36bd96: 4618         	mov	r0, r3
  36bd98: f22d fe50    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x22dca0
  36bd9c: 4603         	mov	r3, r0
  36bd9e: 4618         	mov	r0, r3
  36bda0: 2100         	movs	r1, #0x0
  36bda2: f22e f835    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x22e06a
  36bda6: 4603         	mov	r3, r0
  36bda8: a908         	add	r1, sp, #0x20
  36bdaa: aa09         	add	r2, sp, #0x24
  36bdac: 2000         	movs	r0, #0x0
  36bdae: 9000         	str	r0, [sp]
  36bdb0: 2000         	movs	r0, #0x0
  36bdb2: 9001         	str	r0, [sp, #0x4]
  36bdb4: 2000         	movs	r0, #0x0
  36bdb6: f773 fd1d    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0x8c5c6
  36bdba: ab07         	add	r3, sp, #0x1c
  36bdbc: 4618         	mov	r0, r3
  36bdbe: f049 f5a9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x449b52
  36bdc2: ab04         	add	r3, sp, #0x10
  36bdc4: 4618         	mov	r0, r3
  36bdc6: f01e f319    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41e632
  36bdca: ab09         	add	r3, sp, #0x24
  36bdcc: 4618         	mov	r0, r3
  36bdce: f049 f5a1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x449b42
  36bdd2: ab06         	add	r3, sp, #0x18
  36bdd4: 4618         	mov	r0, r3
  36bdd6: f01e f311    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41e622
  36bdda: ab08         	add	r3, sp, #0x20
  36bddc: 4618         	mov	r0, r3
  36bdde: f049 f599    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x449b32
  36bde2: ab05         	add	r3, sp, #0x14
  36bde4: 4618         	mov	r0, r3
  36bde6: f01e f309    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41e612
  36bdea: e093         	b	0x36bf14 <MenuLayer::onQuick(cocos2d::CCObject*)+0x200> @ imm = #0x126
  36bdec: 9b03         	ldr	r3, [sp, #0xc]
  36bdee: f893 3108    	ldrb.w	r3, [r3, #0x108]
  36bdf2: 2b00         	cmp	r3, #0x0
  36bdf4: d000         	beq	0x36bdf8 <MenuLayer::onQuick(cocos2d::CCObject*)+0xe4> @ imm = #0x0
  36bdf6: e08d         	b	0x36bf14 <MenuLayer::onQuick(cocos2d::CCObject*)+0x200> @ imm = #0x11a
  36bdf8: 9b03         	ldr	r3, [sp, #0xc]
  36bdfa: 2201         	movs	r2, #0x1
  36bdfc: f883 2108    	strb.w	r2, [r3, #0x108]
  36be00: f00b fe9e    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0xbd3c
  36be04: 4603         	mov	r3, r0
  36be06: 4618         	mov	r0, r3
  36be08: 2101         	movs	r1, #0x1
  36be0a: f00e fc61    	bl	0x37a6d0 <NetworkManager::setUseHostedServer(bool)> @ imm = #0xe8c2
  36be0e: f00b fe97    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0xbd2e
  36be12: 4603         	mov	r3, r0
  36be14: 4618         	mov	r0, r3
  36be16: 2101         	movs	r1, #0x1
  36be18: f00e fc66    	bl	0x37a6e8 <NetworkManager::setConnectionType(ConnectionType)> @ imm = #0xe8cc
  36be1c: 4b3f         	ldr	r3, [pc, #0xfc]         @ 0x36bf1c <MenuLayer::onQuick(cocos2d::CCObject*)+0x208>
  36be1e: 58e3         	ldr	r3, [r4, r3]
  36be20: 681b         	ldr	r3, [r3]
  36be22: 4618         	mov	r0, r3
  36be24: 210d         	movs	r1, #0xd
  36be26: f08b ffcb    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x8bf96
  36be2a: 4b40         	ldr	r3, [pc, #0x100]        @ 0x36bf2c <MenuLayer::onQuick(cocos2d::CCObject*)+0x218>
  36be2c: 58e3         	ldr	r3, [r4, r3]
  36be2e: 2204         	movs	r2, #0x4
  36be30: 601a         	str	r2, [r3]
  36be32: 4b3f         	ldr	r3, [pc, #0xfc]         @ 0x36bf30 <MenuLayer::onQuick(cocos2d::CCObject*)+0x21c>
  36be34: 58e3         	ldr	r3, [r4, r3]
  36be36: 2203         	movs	r2, #0x3
  36be38: 601a         	str	r2, [r3]
  36be3a: 4b3e         	ldr	r3, [pc, #0xf8]         @ 0x36bf34 <MenuLayer::onQuick(cocos2d::CCObject*)+0x220>
  36be3c: 58e3         	ldr	r3, [r4, r3]
  36be3e: 781b         	ldrb	r3, [r3]
  36be40: f083 0301    	eor	r3, r3, #0x1
  36be44: b2db         	uxtb	r3, r3
  36be46: 2b00         	cmp	r3, #0x0
  36be48: d012         	beq	0x36be70 <MenuLayer::onQuick(cocos2d::CCObject*)+0x15c> @ imm = #0x24
  36be4a: f22f fb93    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x22f726
  36be4e: 4604         	mov	r4, r0
  36be50: 4b39         	ldr	r3, [pc, #0xe4]         @ 0x36bf38 <MenuLayer::onQuick(cocos2d::CCObject*)+0x224>
  36be52: 447b         	add	r3, pc
  36be54: 681d         	ldr	r5, [r3]
  36be56: f099 fbfd    	bl	0x405654 <TOSLayer::scene()> @ imm = #0x997fa
  36be5a: 4603         	mov	r3, r0
  36be5c: 4628         	mov	r0, r5
  36be5e: 4619         	mov	r1, r3
  36be60: f245 fae2    	bl	0x5b1428 <cocos2d::CCTransitionSlideInR::create(float, cocos2d::CCScene*)> @ imm = #0x2455c4
  36be64: 4603         	mov	r3, r0
  36be66: 4620         	mov	r0, r4
  36be68: 4619         	mov	r1, r3
  36be6a: f230 fa77    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x2304ee
  36be6e: e051         	b	0x36bf14 <MenuLayer::onQuick(cocos2d::CCObject*)+0x200> @ imm = #0xa2
  36be70: 4b32         	ldr	r3, [pc, #0xc8]         @ 0x36bf3c <MenuLayer::onQuick(cocos2d::CCObject*)+0x228>
  36be72: 58e3         	ldr	r3, [r4, r3]
  36be74: 781b         	ldrb	r3, [r3]
  36be76: 2b00         	cmp	r3, #0x0
  36be78: d01c         	beq	0x36beb4 <MenuLayer::onQuick(cocos2d::CCObject*)+0x1a0> @ imm = #0x38
  36be7a: 4b31         	ldr	r3, [pc, #0xc4]         @ 0x36bf40 <MenuLayer::onQuick(cocos2d::CCObject*)+0x22c>
  36be7c: 58e3         	ldr	r3, [r4, r3]
  36be7e: 781b         	ldrb	r3, [r3]
  36be80: 2b00         	cmp	r3, #0x0
  36be82: d017         	beq	0x36beb4 <MenuLayer::onQuick(cocos2d::CCObject*)+0x1a0> @ imm = #0x2e
  36be84: 4b2f         	ldr	r3, [pc, #0xbc]         @ 0x36bf44 <MenuLayer::onQuick(cocos2d::CCObject*)+0x230>
  36be86: 58e3         	ldr	r3, [r4, r3]
  36be88: 781b         	ldrb	r3, [r3]
  36be8a: 2b00         	cmp	r3, #0x0
  36be8c: d012         	beq	0x36beb4 <MenuLayer::onQuick(cocos2d::CCObject*)+0x1a0> @ imm = #0x24
  36be8e: f22f fb71    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x22f6e2
  36be92: 4604         	mov	r4, r0
  36be94: 4b2c         	ldr	r3, [pc, #0xb0]         @ 0x36bf48 <MenuLayer::onQuick(cocos2d::CCObject*)+0x234>
  36be96: 447b         	add	r3, pc
  36be98: 681d         	ldr	r5, [r3]
  36be9a: f7e5 fb97    	bl	0x3515cc <LobbyLayer::scene()> @ imm = #-0x1a8d2
  36be9e: 4603         	mov	r3, r0
  36bea0: 4628         	mov	r0, r5
  36bea2: 4619         	mov	r1, r3
  36bea4: f245 fac0    	bl	0x5b1428 <cocos2d::CCTransitionSlideInR::create(float, cocos2d::CCScene*)> @ imm = #0x245580
  36bea8: 4603         	mov	r3, r0
  36beaa: 4620         	mov	r0, r4
  36beac: 4619         	mov	r1, r3
  36beae: f230 fa55    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x2304aa
  36beb2: e02f         	b	0x36bf14 <MenuLayer::onQuick(cocos2d::CCObject*)+0x200> @ imm = #0x5e
  36beb4: f22f fb5e    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x22f6bc
  36beb8: 4604         	mov	r4, r0
  36beba: 4b24         	ldr	r3, [pc, #0x90]         @ 0x36bf4c <MenuLayer::onQuick(cocos2d::CCObject*)+0x238>
  36bebc: 447b         	add	r3, pc
  36bebe: 681d         	ldr	r5, [r3]
  36bec0: f776 fbc4    	bl	0x2e264c <AdLayer::scene()> @ imm = #-0x89878
  36bec4: 4603         	mov	r3, r0
  36bec6: 4628         	mov	r0, r5
  36bec8: 4619         	mov	r1, r3
  36beca: f245 faad    	bl	0x5b1428 <cocos2d::CCTransitionSlideInR::create(float, cocos2d::CCScene*)> @ imm = #0x24555a
  36bece: 4603         	mov	r3, r0
  36bed0: 4620         	mov	r0, r4
  36bed2: 4619         	mov	r1, r3
  36bed4: f230 fa42    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x230484
  36bed8: e01c         	b	0x36bf14 <MenuLayer::onQuick(cocos2d::CCObject*)+0x200> @ imm = #0x38
  36beda: ab07         	add	r3, sp, #0x1c
  36bedc: 4618         	mov	r0, r3
  36bede: f049 f519    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x449a32
  36bee2: e7ff         	b	0x36bee4 <MenuLayer::onQuick(cocos2d::CCObject*)+0x1d0> @ imm = #-0x2
  36bee4: ab04         	add	r3, sp, #0x10
  36bee6: 4618         	mov	r0, r3
  36bee8: f01e f288    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41e510
  36beec: ab09         	add	r3, sp, #0x24
  36beee: 4618         	mov	r0, r3
  36bef0: f049 f510    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x449a20
  36bef4: e7ff         	b	0x36bef6 <MenuLayer::onQuick(cocos2d::CCObject*)+0x1e2> @ imm = #-0x2
  36bef6: ab06         	add	r3, sp, #0x18
  36bef8: 4618         	mov	r0, r3
  36befa: f01e f27f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41e4fe
  36befe: ab08         	add	r3, sp, #0x20
  36bf00: 4618         	mov	r0, r3
  36bf02: f049 f507    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x449a0e
  36bf06: e7ff         	b	0x36bf08 <MenuLayer::onQuick(cocos2d::CCObject*)+0x1f4> @ imm = #-0x2
  36bf08: ab05         	add	r3, sp, #0x14
  36bf0a: 4618         	mov	r0, r3
  36bf0c: f01e f276    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41e4ec
  36bf10: f01c f0cc    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x41c198
  36bf14: b00b         	add	sp, #0x2c
  36bf16: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x36bf17); words below are literal-pool data ---
  36bf18: 6cea         	ldr	r2, [r5, #0x4c]
  36bf1a: 005c         	lsls	r4, r3, #0x1
  36bf1c: d730         	bvc	0x36bf80 <MenuLayer::onAvatar(cocos2d::CCObject*)+0x30> @ imm = #0x60
  36bf1e: ffff 188a    	vtbl.8	d17, {d31}, d10
  36bf22: 0046         	lsls	r6, r0, #0x1
  36bf24: 1920         	adds	r0, r4, r4
  36bf26: 0046         	lsls	r6, r0, #0x1
  36bf28: 193e         	adds	r6, r7, r4
  36bf2a: 0046         	lsls	r6, r0, #0x1
  36bf2c: d838         	bhi	0x36bfa0 <MenuLayer::onAvatar(cocos2d::CCObject*)+0x50> @ imm = #0x70
  36bf2e: ffff daa0    	vtbl.8	d29, {d31, fpinst2, mvfr0}, d16
  36bf32: ffff d7a0    	<unknown>
  36bf36: ffff 75ca    	<unknown>
  36bf3a: 005c         	lsls	r4, r3, #0x1
  36bf3c: d76c         	bvc	0x36c018 <MenuLayer::onUpgrade(cocos2d::CCObject*)> @ imm = #0xd8
  36bf3e: ffff d768    	<unknown>
  36bf42: ffff dbc8    	vtbx.8	d29, {d31, fpinst2, mvfr0, mvfr1}, d8
  36bf46: ffff 7586    	<unknown>
  36bf4a: 005c         	lsls	r4, r3, #0x1
  36bf4c: 7560         	strb	r0, [r4, #0x15]
  36bf4e: 005c         	lsls	r4, r3, #0x1

// ==== MenuLayer::onAvatar
//      file offset 0x36bf50 (= ELF address; Ghidra 0x37bf50), 100 bytes, Thumb-2
  36bf50: b530         	push	{r4, r5, lr}
  36bf52: b083         	sub	sp, #0xc
  36bf54: 9001         	str	r0, [sp, #0x4]
  36bf56: 9100         	str	r1, [sp]
  36bf58: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x36bfa8 <MenuLayer::onAvatar(cocos2d::CCObject*)+0x58>
  36bf5a: 447a         	add	r2, pc
  36bf5c: 9b01         	ldr	r3, [sp, #0x4]
  36bf5e: f893 3108    	ldrb.w	r3, [r3, #0x108]
  36bf62: 2b00         	cmp	r3, #0x0
  36bf64: d000         	beq	0x36bf68 <MenuLayer::onAvatar(cocos2d::CCObject*)+0x18> @ imm = #0x0
  36bf66: e01c         	b	0x36bfa2 <MenuLayer::onAvatar(cocos2d::CCObject*)+0x52> @ imm = #0x38
  36bf68: 9b01         	ldr	r3, [sp, #0x4]
  36bf6a: 2101         	movs	r1, #0x1
  36bf6c: f883 1108    	strb.w	r1, [r3, #0x108]
  36bf70: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x36bfac <MenuLayer::onAvatar(cocos2d::CCObject*)+0x5c>
  36bf72: 58d3         	ldr	r3, [r2, r3]
  36bf74: 681b         	ldr	r3, [r3]
  36bf76: 4618         	mov	r0, r3
  36bf78: 210d         	movs	r1, #0xd
  36bf7a: f08b ff21    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x8be42
  36bf7e: f22f faf9    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x22f5f2
  36bf82: 4604         	mov	r4, r0
  36bf84: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x36bfb0 <MenuLayer::onAvatar(cocos2d::CCObject*)+0x60>
  36bf86: 447b         	add	r3, pc
  36bf88: 681d         	ldr	r5, [r3]
  36bf8a: f06e fcdb    	bl	0x3da944 <SettingsLayer::scene()> @ imm = #0x6e9b6
  36bf8e: 4603         	mov	r3, r0
  36bf90: 4628         	mov	r0, r5
  36bf92: 4619         	mov	r1, r3
  36bf94: f245 fa48    	bl	0x5b1428 <cocos2d::CCTransitionSlideInR::create(float, cocos2d::CCScene*)> @ imm = #0x245490
  36bf98: 4603         	mov	r3, r0
  36bf9a: 4620         	mov	r0, r4
  36bf9c: 4619         	mov	r1, r3
  36bf9e: f230 f9dd    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x2303ba
  36bfa2: b003         	add	sp, #0xc
  36bfa4: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x36bfa5); words below are literal-pool data ---
  36bfa6: bf00         	nop
  36bfa8: 6aae         	ldr	r6, [r5, #0x28]
  36bfaa: 005c         	lsls	r4, r3, #0x1
  36bfac: d730         	bvc	0x36c010 <MenuLayer::onCredits(cocos2d::CCObject*)+0x5c> @ imm = #0x60
  36bfae: ffff 7496    	vsri.64	d23, d6, #0x1
  36bfb2: 005c         	lsls	r4, r3, #0x1

// ==== MenuLayer::onCredits
//      file offset 0x36bfb4 (= ELF address; Ghidra 0x37bfb4), 100 bytes, Thumb-2
  36bfb4: b530         	push	{r4, r5, lr}
  36bfb6: b083         	sub	sp, #0xc
  36bfb8: 9001         	str	r0, [sp, #0x4]
  36bfba: 9100         	str	r1, [sp]
  36bfbc: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x36c00c <MenuLayer::onCredits(cocos2d::CCObject*)+0x58>
  36bfbe: 447a         	add	r2, pc
  36bfc0: 9b01         	ldr	r3, [sp, #0x4]
  36bfc2: f893 3108    	ldrb.w	r3, [r3, #0x108]
  36bfc6: 2b00         	cmp	r3, #0x0
  36bfc8: d000         	beq	0x36bfcc <MenuLayer::onCredits(cocos2d::CCObject*)+0x18> @ imm = #0x0
  36bfca: e01c         	b	0x36c006 <MenuLayer::onCredits(cocos2d::CCObject*)+0x52> @ imm = #0x38
  36bfcc: 9b01         	ldr	r3, [sp, #0x4]
  36bfce: 2101         	movs	r1, #0x1
  36bfd0: f883 1108    	strb.w	r1, [r3, #0x108]
  36bfd4: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x36c010 <MenuLayer::onCredits(cocos2d::CCObject*)+0x5c>
  36bfd6: 58d3         	ldr	r3, [r2, r3]
  36bfd8: 681b         	ldr	r3, [r3]
  36bfda: 4618         	mov	r0, r3
  36bfdc: 210d         	movs	r1, #0xd
  36bfde: f08b feef    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x8bdde
  36bfe2: f22f fac7    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x22f58e
  36bfe6: 4604         	mov	r4, r0
  36bfe8: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x36c014 <MenuLayer::onCredits(cocos2d::CCObject*)+0x60>
  36bfea: 447b         	add	r3, pc
  36bfec: 681d         	ldr	r5, [r3]
  36bfee: f775 f8c1    	bl	0x2e1174 <AboutLayer::scene()> @ imm = #-0x8ae7e
  36bff2: 4603         	mov	r3, r0
  36bff4: 4628         	mov	r0, r5
  36bff6: 4619         	mov	r1, r3
  36bff8: f245 fa16    	bl	0x5b1428 <cocos2d::CCTransitionSlideInR::create(float, cocos2d::CCScene*)> @ imm = #0x24542c
  36bffc: 4603         	mov	r3, r0
  36bffe: 4620         	mov	r0, r4
  36c000: 4619         	mov	r1, r3
  36c002: f230 f9ab    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x230356
  36c006: b003         	add	sp, #0xc
  36c008: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x36c009); words below are literal-pool data ---
  36c00a: bf00         	nop
  36c00c: 6a4a         	ldr	r2, [r1, #0x24]
  36c00e: 005c         	lsls	r4, r3, #0x1
  36c010: d730         	bvc	0x36c074 <MenuLayer::onUpgrade(cocos2d::CCObject*)+0x5c> @ imm = #0x60
  36c012: ffff 7432    	vsri.32	d23, d18, #0x1
  36c016: 005c         	lsls	r4, r3, #0x1

// ==== MenuLayer::onUpgrade
//      file offset 0x36c018 (= ELF address; Ghidra 0x37c018), 100 bytes, Thumb-2
  36c018: b530         	push	{r4, r5, lr}
  36c01a: b083         	sub	sp, #0xc
  36c01c: 9001         	str	r0, [sp, #0x4]
  36c01e: 9100         	str	r1, [sp]
  36c020: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x36c070 <MenuLayer::onUpgrade(cocos2d::CCObject*)+0x58>
  36c022: 447a         	add	r2, pc
  36c024: 9b01         	ldr	r3, [sp, #0x4]
  36c026: f893 3108    	ldrb.w	r3, [r3, #0x108]
  36c02a: 2b00         	cmp	r3, #0x0
  36c02c: d000         	beq	0x36c030 <MenuLayer::onUpgrade(cocos2d::CCObject*)+0x18> @ imm = #0x0
  36c02e: e01c         	b	0x36c06a <MenuLayer::onUpgrade(cocos2d::CCObject*)+0x52> @ imm = #0x38
  36c030: 9b01         	ldr	r3, [sp, #0x4]
  36c032: 2101         	movs	r1, #0x1
  36c034: f883 1108    	strb.w	r1, [r3, #0x108]
  36c038: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x36c074 <MenuLayer::onUpgrade(cocos2d::CCObject*)+0x5c>
  36c03a: 58d3         	ldr	r3, [r2, r3]
  36c03c: 681b         	ldr	r3, [r3]
  36c03e: 4618         	mov	r0, r3
  36c040: 210d         	movs	r1, #0xd
  36c042: f08b febd    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x8bd7a
  36c046: f22f fa95    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x22f52a
  36c04a: 4604         	mov	r4, r0
  36c04c: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x36c078 <MenuLayer::onUpgrade(cocos2d::CCObject*)+0x60>
  36c04e: 447b         	add	r3, pc
  36c050: 681d         	ldr	r5, [r3]
  36c052: f04b f9e3    	bl	0x3b741c <PurchaseLayer::scene()> @ imm = #0x4b3c6
  36c056: 4603         	mov	r3, r0
  36c058: 4628         	mov	r0, r5
  36c05a: 4619         	mov	r1, r3
  36c05c: f245 f9e4    	bl	0x5b1428 <cocos2d::CCTransitionSlideInR::create(float, cocos2d::CCScene*)> @ imm = #0x2453c8
  36c060: 4603         	mov	r3, r0
  36c062: 4620         	mov	r0, r4
  36c064: 4619         	mov	r1, r3
  36c066: f230 f979    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x2302f2
  36c06a: b003         	add	sp, #0xc
  36c06c: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x36c06d); words below are literal-pool data ---
  36c06e: bf00         	nop
  36c070: 69e6         	ldr	r6, [r4, #0x1c]
  36c072: 005c         	lsls	r4, r3, #0x1
  36c074: d730         	bvc	0x36c0d8 <MenuLayer::onStartedMatchFromMMVC()+0x5c> @ imm = #0x60
  36c076: ffff 73ce    	<unknown>
  36c07a: 005c         	lsls	r4, r3, #0x1

// ==== MenuLayer::onStartedMatchFromMMVC
//      file offset 0x36c07c (= ELF address; Ghidra 0x37c07c), 112 bytes, Thumb-2
  36c07c: b530         	push	{r4, r5, lr}
  36c07e: b083         	sub	sp, #0xc
  36c080: 9001         	str	r0, [sp, #0x4]
  36c082: 4b14         	ldr	r3, [pc, #0x50]         @ 0x36c0d4 <MenuLayer::onStartedMatchFromMMVC()+0x58>
  36c084: 447b         	add	r3, pc
  36c086: 4a14         	ldr	r2, [pc, #0x50]         @ 0x36c0d8 <MenuLayer::onStartedMatchFromMMVC()+0x5c>
  36c088: 589a         	ldr	r2, [r3, r2]
  36c08a: 2100         	movs	r1, #0x0
  36c08c: 7011         	strb	r1, [r2]
  36c08e: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x36c0dc <MenuLayer::onStartedMatchFromMMVC()+0x60>
  36c090: 589a         	ldr	r2, [r3, r2]
  36c092: 2104         	movs	r1, #0x4
  36c094: 6011         	str	r1, [r2]
  36c096: 4a12         	ldr	r2, [pc, #0x48]         @ 0x36c0e0 <MenuLayer::onStartedMatchFromMMVC()+0x64>
  36c098: 589a         	ldr	r2, [r3, r2]
  36c09a: 2103         	movs	r1, #0x3
  36c09c: 6011         	str	r1, [r2]
  36c09e: 4a11         	ldr	r2, [pc, #0x44]         @ 0x36c0e4 <MenuLayer::onStartedMatchFromMMVC()+0x68>
  36c0a0: 589b         	ldr	r3, [r3, r2]
  36c0a2: 681b         	ldr	r3, [r3]
  36c0a4: 4618         	mov	r0, r3
  36c0a6: 210d         	movs	r1, #0xd
  36c0a8: f08b fe8a    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x8bd14
  36c0ac: f22f fa62    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x22f4c4
  36c0b0: 4604         	mov	r4, r0
  36c0b2: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x36c0e8 <MenuLayer::onStartedMatchFromMMVC()+0x6c>
  36c0b4: 447b         	add	r3, pc
  36c0b6: 681d         	ldr	r5, [r3]
  36c0b8: f7e5 fa88    	bl	0x3515cc <LobbyLayer::scene()> @ imm = #-0x1aaf0
  36c0bc: 4603         	mov	r3, r0
  36c0be: 4628         	mov	r0, r5
  36c0c0: 4619         	mov	r1, r3
  36c0c2: f246 fddf    	bl	0x5b2c84 <cocos2d::CCTransitionFade::create(float, cocos2d::CCScene*)> @ imm = #0x246bbe
  36c0c6: 4603         	mov	r3, r0
  36c0c8: 4620         	mov	r0, r4
  36c0ca: 4619         	mov	r1, r3
  36c0cc: f230 f946    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x23028c
  36c0d0: b003         	add	sp, #0xc
  36c0d2: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x36c0d3); words below are literal-pool data ---
  36c0d4: 6984         	ldr	r4, [r0, #0x18]
  36c0d6: 005c         	lsls	r4, r3, #0x1
  36c0d8: da58         	bge	0x36c18c <MenuLayer::updateThrob(float)+0x6c> @ imm = #0xb0
  36c0da: ffff d838    	vqshrun.s64	d29, q12, #0x1
  36c0de: ffff daa0    	vtbl.8	d29, {d31, fpinst2, mvfr0}, d16
  36c0e2: ffff d730    	vqshl.u32	d29, d16, #0x1f
  36c0e6: ffff 7368    	<unknown>
  36c0ea: 005c         	lsls	r4, r3, #0x1

// ==== MenuLayer::inviteCheck
//      file offset 0x36c0ec (= ELF address; Ghidra 0x37c0ec), 52 bytes, Thumb-2
  36c0ec: b500         	push	{lr}
  36c0ee: b083         	sub	sp, #0xc
  36c0f0: 9001         	str	r0, [sp, #0x4]
  36c0f2: 9100         	str	r1, [sp]
  36c0f4: f00b fd24    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0xba48
  36c0f8: 4603         	mov	r3, r0
  36c0fa: 4618         	mov	r0, r3
  36c0fc: f00e fb1a    	bl	0x37a734 <NetworkManager::getWasInvited()> @ imm = #0xe634
  36c100: 4603         	mov	r3, r0
  36c102: 2b00         	cmp	r3, #0x0
  36c104: d009         	beq	0x36c11a <MenuLayer::inviteCheck(float)+0x2e> @ imm = #0x12
  36c106: f00b fd1b    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0xba36
  36c10a: 4603         	mov	r3, r0
  36c10c: 4618         	mov	r0, r3
  36c10e: 2100         	movs	r1, #0x0
  36c110: f00e fb18    	bl	0x37a744 <NetworkManager::setWasInvited(bool)> @ imm = #0xe630
  36c114: 9801         	ldr	r0, [sp, #0x4]
  36c116: f7ff ffb1    	bl	0x36c07c <MenuLayer::onStartedMatchFromMMVC()> @ imm = #-0x9e
  36c11a: b003         	add	sp, #0xc
  36c11c: f85d fb04    	ldr	pc, [sp], #4

// ==== MenuLayer::updateThrob
//      file offset 0x36c120 (= ELF address; Ghidra 0x37c120), 404 bytes, Thumb-2
  36c120: b570         	push	{r4, r5, r6, lr}
  36c122: b084         	sub	sp, #0x10
  36c124: 9001         	str	r0, [sp, #0x4]
  36c126: 9100         	str	r1, [sp]
  36c128: 4c5f         	ldr	r4, [pc, #0x17c]        @ 0x36c2a8 <MenuLayer::updateThrob(float)+0x188>
  36c12a: 447c         	add	r4, pc
  36c12c: 9b01         	ldr	r3, [sp, #0x4]
  36c12e: ed93 7a54    	vldr	s14, [r3, #336]
  36c132: eddd 6a00    	vldr	s13, [sp]
  36c136: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  36c13a: ee66 7aa7    	vmul.f32	s15, s13, s15
  36c13e: ee77 7a27    	vadd.f32	s15, s14, s15
  36c142: 9b01         	ldr	r3, [sp, #0x4]
  36c144: edc3 7a54    	vstr	s15, [r3, #336]
  36c148: ab02         	add	r3, sp, #0x8
  36c14a: 4618         	mov	r0, r3
  36c14c: f01e f152    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x41e2a4
  36c150: aa03         	add	r2, sp, #0xc
  36c152: ab02         	add	r3, sp, #0x8
  36c154: 4610         	mov	r0, r2
  36c156: 4a55         	ldr	r2, [pc, #0x154]        @ 0x36c2ac <MenuLayer::updateThrob(float)+0x18c>
  36c158: 447a         	add	r2, pc
  36c15a: 4611         	mov	r1, r2
  36c15c: 461a         	mov	r2, r3
  36c15e: f04a f47f    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x44a8fe
  36c162: ab03         	add	r3, sp, #0xc
  36c164: 4618         	mov	r0, r3
  36c166: f0c5 fafb    	bl	0x431760 <InAppPurchaseBridge::isProductPurchased(std::string)> @ imm = #0xc55f6
  36c16a: 4603         	mov	r3, r0
  36c16c: f083 0301    	eor	r3, r3, #0x1
  36c170: b2dd         	uxtb	r5, r3
  36c172: ab03         	add	r3, sp, #0xc
  36c174: 4618         	mov	r0, r3
  36c176: f049 f3cd    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44979a
  36c17a: ab02         	add	r3, sp, #0x8
  36c17c: 4618         	mov	r0, r3
  36c17e: f01e f13d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41e27a
  36c182: 2d00         	cmp	r5, #0x0
  36c184: d026         	beq	0x36c1d4 <MenuLayer::updateThrob(float)+0xb4> @ imm = #0x4c
  36c186: 9b01         	ldr	r3, [sp, #0x4]
  36c188: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  36c18c: 681b         	ldr	r3, [r3]
  36c18e: f503 73d2    	add.w	r3, r3, #0x1a4
  36c192: 681d         	ldr	r5, [r3]
  36c194: 9b01         	ldr	r3, [sp, #0x4]
  36c196: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  36c19a: 461e         	mov	r6, r3
  36c19c: 9b01         	ldr	r3, [sp, #0x4]
  36c19e: edd3 7a54    	vldr	s15, [r3, #336]
  36c1a2: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  36c1a6: ec51 0b17    	vmov	r0, r1, d7
  36c1aa: f769 eeae    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x962a4
  36c1ae: ec41 0b16    	vmov	d6, r0, r1
  36c1b2: ed9f 7b39    	vldr	d7, [pc, #228]          @ 0x36c298 <MenuLayer::updateThrob(float)+0x178>
  36c1b6: ee26 6b07    	vmul.f64	d6, d6, d7
  36c1ba: ed9f 7b39    	vldr	d7, [pc, #228]          @ 0x36c2a0 <MenuLayer::updateThrob(float)+0x180>
  36c1be: ee36 7b07    	vadd.f64	d7, d6, d7
  36c1c2: eefc 6bc7    	vcvt.u32.f64	s13, d7
  36c1c6: ee16 3a90    	vmov	r3, s13
  36c1ca: b2db         	uxtb	r3, r3
  36c1cc: 4630         	mov	r0, r6
  36c1ce: 4619         	mov	r1, r3
  36c1d0: 47a8         	blx	r5
  36c1d2: e00c         	b	0x36c1ee <MenuLayer::updateThrob(float)+0xce> @ imm = #0x18
  36c1d4: 9b01         	ldr	r3, [sp, #0x4]
  36c1d6: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  36c1da: 681b         	ldr	r3, [r3]
  36c1dc: f503 73d2    	add.w	r3, r3, #0x1a4
  36c1e0: 681b         	ldr	r3, [r3]
  36c1e2: 9a01         	ldr	r2, [sp, #0x4]
  36c1e4: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  36c1e8: 4610         	mov	r0, r2
  36c1ea: 21ff         	movs	r1, #0xff
  36c1ec: 4798         	blx	r3
  36c1ee: f00b fca7    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0xb94e
  36c1f2: 4603         	mov	r3, r0
  36c1f4: 4618         	mov	r0, r3
  36c1f6: f00e fec9    	bl	0x37af8c <NetworkManager::getNewsEpoch()> @ imm = #0xed92
  36c1fa: 4602         	mov	r2, r0
  36c1fc: 4b2c         	ldr	r3, [pc, #0xb0]         @ 0x36c2b0 <MenuLayer::updateThrob(float)+0x190>
  36c1fe: 58e3         	ldr	r3, [r4, r3]
  36c200: 681b         	ldr	r3, [r3]
  36c202: 429a         	cmp	r2, r3
  36c204: bfd4         	ite	le
  36c206: 2300         	movle	r3, #0x0
  36c208: 2301         	movgt	r3, #0x1
  36c20a: b2db         	uxtb	r3, r3
  36c20c: 2b00         	cmp	r3, #0x0
  36c20e: d026         	beq	0x36c25e <MenuLayer::updateThrob(float)+0x13e> @ imm = #0x4c
  36c210: 9b01         	ldr	r3, [sp, #0x4]
  36c212: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  36c216: 681b         	ldr	r3, [r3]
  36c218: f503 73d2    	add.w	r3, r3, #0x1a4
  36c21c: 681c         	ldr	r4, [r3]
  36c21e: 9b01         	ldr	r3, [sp, #0x4]
  36c220: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  36c224: 461d         	mov	r5, r3
  36c226: 9b01         	ldr	r3, [sp, #0x4]
  36c228: edd3 7a54    	vldr	s15, [r3, #336]
  36c22c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  36c230: ec51 0b17    	vmov	r0, r1, d7
  36c234: f769 ee68    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x96330
  36c238: ec41 0b16    	vmov	d6, r0, r1
  36c23c: ed9f 7b16    	vldr	d7, [pc, #88]           @ 0x36c298 <MenuLayer::updateThrob(float)+0x178>
  36c240: ee26 6b07    	vmul.f64	d6, d6, d7
  36c244: ed9f 7b16    	vldr	d7, [pc, #88]           @ 0x36c2a0 <MenuLayer::updateThrob(float)+0x180>
  36c248: ee36 7b07    	vadd.f64	d7, d6, d7
  36c24c: eefc 6bc7    	vcvt.u32.f64	s13, d7
  36c250: ee16 3a90    	vmov	r3, s13
  36c254: b2db         	uxtb	r3, r3
  36c256: 4628         	mov	r0, r5
  36c258: 4619         	mov	r1, r3
  36c25a: 47a0         	blx	r4
  36c25c: e018         	b	0x36c290 <MenuLayer::updateThrob(float)+0x170> @ imm = #0x30
  36c25e: 9b01         	ldr	r3, [sp, #0x4]
  36c260: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  36c264: 681b         	ldr	r3, [r3]
  36c266: f503 73d2    	add.w	r3, r3, #0x1a4
  36c26a: 681b         	ldr	r3, [r3]
  36c26c: 9a01         	ldr	r2, [sp, #0x4]
  36c26e: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  36c272: 4610         	mov	r0, r2
  36c274: 21ff         	movs	r1, #0xff
  36c276: 4798         	blx	r3
  36c278: e00a         	b	0x36c290 <MenuLayer::updateThrob(float)+0x170> @ imm = #0x14
  36c27a: ab03         	add	r3, sp, #0xc
  36c27c: 4618         	mov	r0, r3
  36c27e: f049 f349    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x449692
  36c282: e7ff         	b	0x36c284 <MenuLayer::updateThrob(float)+0x164> @ imm = #-0x2
  36c284: ab02         	add	r3, sp, #0x8
  36c286: 4618         	mov	r0, r3
  36c288: f01e f0b8    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41e170
  36c28c: f01b f70e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x41be1c
  36c290: b004         	add	sp, #0x10
  36c292: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x36c293); words below are literal-pool data ---
  36c294: f3af 8000    	nop.w
  36c298: 0000         	movs	r0, r0
  36c29a: 0000         	movs	r0, r0
  36c29c: c000         	<unknown>
  36c29e: 4052         	eors	r2, r2
  36c2a0: 0000         	movs	r0, r0
  36c2a2: 0000         	movs	r0, r0
  36c2a4: c000         	<unknown>
  36c2a6: 4062         	eors	r2, r4
  36c2a8: 68de         	ldr	r6, [r3, #0xc]
  36c2aa: 005c         	lsls	r4, r3, #0x1
  36c2ac: 1384         	asrs	r4, r0, #0xe
  36c2ae: 0046         	lsls	r6, r0, #0x1
  36c2b0: d798         	bvc	0x36c1e4 <MenuLayer::updateThrob(float)+0xc4> @ imm = #-0xd0
  36c2b2: ffff f3af    	<unknown>

// ==== MenuLayer::keyBackClicked
//      file offset 0x36c2b8 (= ELF address; Ghidra 0x37c2b8), 16 bytes, Thumb-2
  36c2b8: b500         	push	{lr}
  36c2ba: b083         	sub	sp, #0xc
  36c2bc: 9001         	str	r0, [sp, #0x4]
  36c2be: f0c0 fae5    	bl	0x42c88c <ApplicationInterface::exit()> @ imm = #0xc05ca
  36c2c2: b003         	add	sp, #0xc
  36c2c4: f85d fb04    	ldr	pc, [sp], #4

// ==== MenuLayer::keyBackClicked
//      file offset 0x36c2c8 (= ELF address; Ghidra 0x37c2c8), 8 bytes, Thumb-2
  36c2c8: f1a0 00ec    	sub.w	r0, r0, #0xec
  36c2cc: f7ff bff4    	b.w	0x36c2b8 <MenuLayer::keyBackClicked()> @ imm = #-0x18
