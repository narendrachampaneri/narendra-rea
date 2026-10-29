// PlasmaBall: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 9 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../PlasmaBall.cpp

// ==== PlasmaBall::PlasmaBall
//      file offset 0x392b7c (= ELF address; Ghidra 0x3a2b7c), 444 bytes, Thumb-2
  392b7c: b530         	push	{r4, r5, lr}
  392b7e: b083         	sub	sp, #0xc
  392b80: 9001         	str	r0, [sp, #0x4]
  392b82: 4c66         	ldr	r4, [pc, #0x198]        @ 0x392d1c <PlasmaBall::PlasmaBall()+0x1a0>
  392b84: 447c         	add	r4, pc
  392b86: 9b01         	ldr	r3, [sp, #0x4]
  392b88: 4618         	mov	r0, r3
  392b8a: f1fc fd55    	bl	0x58f638 <cocos2d::CCNode::CCNode()> @ imm = #0x1fcaaa
  392b8e: 9b01         	ldr	r3, [sp, #0x4]
  392b90: 4a63         	ldr	r2, [pc, #0x18c]        @ 0x392d20 <PlasmaBall::PlasmaBall()+0x1a4>
  392b92: 58a2         	ldr	r2, [r4, r2]
  392b94: 3208         	adds	r2, #0x8
  392b96: 601a         	str	r2, [r3]
  392b98: 9b01         	ldr	r3, [sp, #0x4]
  392b9a: f503 7380    	add.w	r3, r3, #0x100
  392b9e: 4618         	mov	r0, r3
  392ba0: f022 f306    	bl	0x7b51b0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18700> @ imm = #0x42260c
  392ba4: 9b01         	ldr	r3, [sp, #0x4]
  392ba6: f503 7392    	add.w	r3, r3, #0x124
  392baa: 2401         	movs	r4, #0x1
  392bac: 461d         	mov	r5, r3
  392bae: e004         	b	0x392bba <PlasmaBall::PlasmaBall()+0x3e> @ imm = #0x8
  392bb0: 4628         	mov	r0, r5
  392bb2: f200 fb77    	bl	0x5932a4 <cocos2d::CCRect::CCRect()> @ imm = #0x2006ee
  392bb6: 3510         	adds	r5, #0x10
  392bb8: 3c01         	subs	r4, #0x1
  392bba: f1b4 3fff    	cmp.w	r4, #0xffffffff
  392bbe: d1f7         	bne	0x392bb0 <PlasmaBall::PlasmaBall()+0x34> @ imm = #-0x12
  392bc0: 4b58         	ldr	r3, [pc, #0x160]        @ 0x392d24 <PlasmaBall::PlasmaBall()+0x1a8>
  392bc2: 447b         	add	r3, pc
  392bc4: 4618         	mov	r0, r3
  392bc6: f245 fb9d    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x24573a
  392bca: 4602         	mov	r2, r0
  392bcc: 9b01         	ldr	r3, [sp, #0x4]
  392bce: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  392bd2: 9b01         	ldr	r3, [sp, #0x4]
  392bd4: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  392bd8: 4618         	mov	r0, r3
  392bda: f205 f985    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x20530a
  392bde: 9a01         	ldr	r2, [sp, #0x4]
  392be0: 9b01         	ldr	r3, [sp, #0x4]
  392be2: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  392be6: 4610         	mov	r0, r2
  392be8: 4619         	mov	r1, r3
  392bea: f1fd fc7f    	bl	0x5904ec <cocos2d::CCNode::addChild(cocos2d::CCNode*)> @ imm = #0x1fd8fe
  392bee: 9b01         	ldr	r3, [sp, #0x4]
  392bf0: 4618         	mov	r0, r3
  392bf2: 2100         	movs	r1, #0x0
  392bf4: f1fd f94c    	bl	0x58fe90 <cocos2d::CCNode::setVisible(bool)> @ imm = #0x1fd298
  392bf8: 9b01         	ldr	r3, [sp, #0x4]
  392bfa: f503 7492    	add.w	r4, r3, #0x124
  392bfe: 4b4a         	ldr	r3, [pc, #0x128]        @ 0x392d28 <PlasmaBall::PlasmaBall()+0x1ac>
  392c00: 447b         	add	r3, pc
  392c02: 4618         	mov	r0, r3
  392c04: f245 fb7e    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2456fc
  392c08: 4603         	mov	r3, r0
  392c0a: 4618         	mov	r0, r3
  392c0c: f74a f866    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0xb5f34
  392c10: 4603         	mov	r3, r0
  392c12: 4620         	mov	r0, r4
  392c14: 4619         	mov	r1, r3
  392c16: f200 fb9d    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x20073a
  392c1a: 9b01         	ldr	r3, [sp, #0x4]
  392c1c: f503 749a    	add.w	r4, r3, #0x134
  392c20: 4b42         	ldr	r3, [pc, #0x108]        @ 0x392d2c <PlasmaBall::PlasmaBall()+0x1b0>
  392c22: 447b         	add	r3, pc
  392c24: 4618         	mov	r0, r3
  392c26: f245 fb6d    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2456da
  392c2a: 4603         	mov	r3, r0
  392c2c: 4618         	mov	r0, r3
  392c2e: f74a f855    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0xb5f56
  392c32: 4603         	mov	r3, r0
  392c34: 4620         	mov	r0, r4
  392c36: 4619         	mov	r1, r3
  392c38: f200 fb8c    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x200718
  392c3c: 4b3c         	ldr	r3, [pc, #0xf0]         @ 0x392d30 <PlasmaBall::PlasmaBall()+0x1b4>
  392c3e: 447b         	add	r3, pc
  392c40: 4618         	mov	r0, r3
  392c42: f245 fb5f    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2456be
  392c46: 4602         	mov	r2, r0
  392c48: 9b01         	ldr	r3, [sp, #0x4]
  392c4a: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  392c4e: 9b01         	ldr	r3, [sp, #0x4]
  392c50: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  392c54: 4618         	mov	r0, r3
  392c56: f205 f947    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x20528e
  392c5a: 9a01         	ldr	r2, [sp, #0x4]
  392c5c: 9b01         	ldr	r3, [sp, #0x4]
  392c5e: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  392c62: 4610         	mov	r0, r2
  392c64: 4619         	mov	r1, r3
  392c66: f1fd fc41    	bl	0x5904ec <cocos2d::CCNode::addChild(cocos2d::CCNode*)> @ imm = #0x1fd882
  392c6a: 9b01         	ldr	r3, [sp, #0x4]
  392c6c: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  392c70: 681b         	ldr	r3, [r3]
  392c72: 3390         	adds	r3, #0x90
  392c74: 681b         	ldr	r3, [r3]
  392c76: 9a01         	ldr	r2, [sp, #0x4]
  392c78: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  392c7c: 4610         	mov	r0, r2
  392c7e: 2100         	movs	r1, #0x0
  392c80: 4798         	blx	r3
  392c82: 9b01         	ldr	r3, [sp, #0x4]
  392c84: f503 7380    	add.w	r3, r3, #0x100
  392c88: 4618         	mov	r0, r3
  392c8a: 4b2a         	ldr	r3, [pc, #0xa8]         @ 0x392d34 <PlasmaBall::PlasmaBall()+0x1b8>
  392c8c: 447b         	add	r3, pc
  392c8e: 4619         	mov	r1, r3
  392c90: f023 f0ee    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4231dc
  392c94: 9b01         	ldr	r3, [sp, #0x4]
  392c96: 2200         	movs	r2, #0x0
  392c98: f8c3 211c    	str.w	r2, [r3, #0x11c]
  392c9c: 9b01         	ldr	r3, [sp, #0x4]
  392c9e: f04f 0200    	mov.w	r2, #0x0
  392ca2: f8c3 2120    	str.w	r2, [r3, #0x120]
  392ca6: 9b01         	ldr	r3, [sp, #0x4]
  392ca8: f04f 0200    	mov.w	r2, #0x0
  392cac: f8c3 210c    	str.w	r2, [r3, #0x10c]
  392cb0: 9b01         	ldr	r3, [sp, #0x4]
  392cb2: f04f 0200    	mov.w	r2, #0x0
  392cb6: f8c3 2110    	str.w	r2, [r3, #0x110]
  392cba: 9b01         	ldr	r3, [sp, #0x4]
  392cbc: f04f 0200    	mov.w	r2, #0x0
  392cc0: f2c4 1220    	movt	r2, #0x4120
  392cc4: f8c3 2104    	str.w	r2, [r3, #0x104]
  392cc8: 9b01         	ldr	r3, [sp, #0x4]
  392cca: f04f 0200    	mov.w	r2, #0x0
  392cce: f8c3 2114    	str.w	r2, [r3, #0x114]
  392cd2: 9901         	ldr	r1, [sp, #0x4]
  392cd4: f04f 0200    	mov.w	r2, #0x0
  392cd8: f04f 0300    	mov.w	r3, #0x0
  392cdc: e9c1 233c    	strd	r2, r3, [r1, #240]
  392ce0: 9901         	ldr	r1, [sp, #0x4]
  392ce2: f04f 0200    	mov.w	r2, #0x0
  392ce6: f04f 0300    	mov.w	r3, #0x0
  392cea: e9c1 233e    	strd	r2, r3, [r1, #248]
  392cee: 9b01         	ldr	r3, [sp, #0x4]
  392cf0: 2200         	movs	r2, #0x0
  392cf2: f8c3 2144    	str.w	r2, [r3, #0x144]
  392cf6: 9b01         	ldr	r3, [sp, #0x4]
  392cf8: e00c         	b	0x392d14 <PlasmaBall::PlasmaBall()+0x198> @ imm = #0x18
  392cfa: 9b01         	ldr	r3, [sp, #0x4]
  392cfc: f503 7380    	add.w	r3, r3, #0x100
  392d00: 4618         	mov	r0, r3
  392d02: f022 f607    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x422c0e
  392d06: e7ff         	b	0x392d08 <PlasmaBall::PlasmaBall()+0x18c> @ imm = #-0x2
  392d08: 9b01         	ldr	r3, [sp, #0x4]
  392d0a: 4618         	mov	r0, r3
  392d0c: f1fc fd9a    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x1fcb34
  392d10: f3f5 f9cc    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3f5398
  392d14: 4618         	mov	r0, r3
  392d16: b003         	add	sp, #0xc
  392d18: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x392d19); words below are literal-pool data ---
  392d1a: bf00         	nop
  392d1c: fe84 0059    	mcr2	p0, #0x4, r0, c4, c9, #0x2
  392d20: dd18         	ble	0x392d54 <PlasmaBall::~PlasmaBall()+0x1c> @ imm = #0x30
  392d22: ffff eb5a    	<unknown>
  392d26: 0043         	lsls	r3, r0, #0x1
  392d28: eb2c 0043    	<unknown>
  392d2c: eb16 0043    	adds.w	r0, r6, r3, lsl #1
  392d30: eaee 0043    	<unknown>
  392d34: eab8 0043    	<unknown>

// ==== PlasmaBall::~PlasmaBall
//      file offset 0x392d38 (= ELF address; Ghidra 0x3a2d38), 104 bytes, Thumb-2
  392d38: b500         	push	{lr}
  392d3a: b083         	sub	sp, #0xc
  392d3c: 9001         	str	r0, [sp, #0x4]
  392d3e: 4916         	ldr	r1, [pc, #0x58]         @ 0x392d98 <PlasmaBall::~PlasmaBall()+0x60>
  392d40: 4479         	add	r1, pc
  392d42: 9b01         	ldr	r3, [sp, #0x4]
  392d44: 4a15         	ldr	r2, [pc, #0x54]         @ 0x392d9c <PlasmaBall::~PlasmaBall()+0x64>
  392d46: 588a         	ldr	r2, [r1, r2]
  392d48: 3208         	adds	r2, #0x8
  392d4a: 601a         	str	r2, [r3]
  392d4c: 9b01         	ldr	r3, [sp, #0x4]
  392d4e: 4618         	mov	r0, r3
  392d50: f1fd fc6c    	bl	0x59062c <cocos2d::CCNode::removeAllChildren()> @ imm = #0x1fd8d8
  392d54: 9b01         	ldr	r3, [sp, #0x4]
  392d56: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  392d5a: 4618         	mov	r0, r3
  392d5c: f205 f8ac    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x205158
  392d60: 9b01         	ldr	r3, [sp, #0x4]
  392d62: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  392d66: 4618         	mov	r0, r3
  392d68: f205 f8a6    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x20514c
  392d6c: 9b01         	ldr	r3, [sp, #0x4]
  392d6e: f503 7380    	add.w	r3, r3, #0x100
  392d72: 4618         	mov	r0, r3
  392d74: f022 f5ce    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x422b9c
  392d78: 9b01         	ldr	r3, [sp, #0x4]
  392d7a: 4618         	mov	r0, r3
  392d7c: f1fc fd62    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x1fcac4
  392d80: 2300         	movs	r3, #0x0
  392d82: 2b00         	cmp	r3, #0x0
  392d84: d002         	beq	0x392d8c <PlasmaBall::~PlasmaBall()+0x54> @ imm = #0x4
  392d86: 9801         	ldr	r0, [sp, #0x4]
  392d88: f3f5 f98c    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3f5318
  392d8c: 9b01         	ldr	r3, [sp, #0x4]
  392d8e: 4618         	mov	r0, r3
  392d90: b003         	add	sp, #0xc
  392d92: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x392d95); words below are literal-pool data ---
  392d96: bf00         	nop
  392d98: fcc8 0059    	stc2l	p0, c0, [r8], {89}
  392d9c: dd18         	ble	0x392dd0 <PlasmaBall::init()+0x14> @ imm = #0x30
  392d9e: ffff b500    	<unknown>

// ==== PlasmaBall::~PlasmaBall
//      file offset 0x392da0 (= ELF address; Ghidra 0x3a2da0), 28 bytes, Thumb-2
  392da0: b500         	push	{lr}
  392da2: b083         	sub	sp, #0xc
  392da4: 9001         	str	r0, [sp, #0x4]
  392da6: 9801         	ldr	r0, [sp, #0x4]
  392da8: f7ff ffc6    	bl	0x392d38 <PlasmaBall::~PlasmaBall()> @ imm = #-0x74
  392dac: 9801         	ldr	r0, [sp, #0x4]
  392dae: f3f5 f979    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3f52f2
  392db2: 9b01         	ldr	r3, [sp, #0x4]
  392db4: 4618         	mov	r0, r3
  392db6: b003         	add	sp, #0xc
  392db8: f85d fb04    	ldr	pc, [sp], #4

// ==== PlasmaBall::init
//      file offset 0x392dbc (= ELF address; Ghidra 0x3a2dbc), 40 bytes, Thumb-2
  392dbc: b500         	push	{lr}
  392dbe: b083         	sub	sp, #0xc
  392dc0: 9001         	str	r0, [sp, #0x4]
  392dc2: 9b01         	ldr	r3, [sp, #0x4]
  392dc4: 4618         	mov	r0, r3
  392dc6: f1fc fe41    	bl	0x58fa4c <cocos2d::CCNode::init()> @ imm = #0x1fcc82
  392dca: 4603         	mov	r3, r0
  392dcc: f083 0301    	eor	r3, r3, #0x1
  392dd0: b2db         	uxtb	r3, r3
  392dd2: 2b00         	cmp	r3, #0x0
  392dd4: d001         	beq	0x392dda <PlasmaBall::init()+0x1e> @ imm = #0x2
  392dd6: 2300         	movs	r3, #0x0
  392dd8: e000         	b	0x392ddc <PlasmaBall::init()+0x20> @ imm = #0x0
  392dda: 2301         	movs	r3, #0x1
  392ddc: 4618         	mov	r0, r3
  392dde: b003         	add	sp, #0xc
  392de0: f85d fb04    	ldr	pc, [sp], #4

// ==== PlasmaBall::reset
//      file offset 0x392de4 (= ELF address; Ghidra 0x3a2de4), 420 bytes, Thumb-2
  392de4: b082         	sub	sp, #0x8
  392de6: b530         	push	{r4, r5, lr}
  392de8: b085         	sub	sp, #0x14
  392dea: 9001         	str	r0, [sp, #0x4]
  392dec: a908         	add	r1, sp, #0x20
  392dee: e881 000c    	stm.w	r1, {r2, r3}
  392df2: 9b01         	ldr	r3, [sp, #0x4]
  392df4: f04f 0200    	mov.w	r2, #0x0
  392df8: f8c3 2104    	str.w	r2, [r3, #0x104]
  392dfc: 9b01         	ldr	r3, [sp, #0x4]
  392dfe: f04f 0200    	mov.w	r2, #0x0
  392e02: f8c3 2108    	str.w	r2, [r3, #0x108]
  392e06: 9b01         	ldr	r3, [sp, #0x4]
  392e08: f04f 0200    	mov.w	r2, #0x0
  392e0c: f8c3 2120    	str.w	r2, [r3, #0x120]
  392e10: 9b01         	ldr	r3, [sp, #0x4]
  392e12: f649 129a    	movw	r2, #0x999a
  392e16: f6c3 6219    	movt	r2, #0x3e19
  392e1a: f8c3 2114    	str.w	r2, [r3, #0x114]
  392e1e: 9b01         	ldr	r3, [sp, #0x4]
  392e20: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  392e24: 681b         	ldr	r3, [r3]
  392e26: 3340         	adds	r3, #0x40
  392e28: 681b         	ldr	r3, [r3]
  392e2a: 9a01         	ldr	r2, [sp, #0x4]
  392e2c: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  392e30: 4610         	mov	r0, r2
  392e32: f04f 0100    	mov.w	r1, #0x0
  392e36: 4798         	blx	r3
  392e38: 9b01         	ldr	r3, [sp, #0x4]
  392e3a: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  392e3e: 681b         	ldr	r3, [r3]
  392e40: 3340         	adds	r3, #0x40
  392e42: 681c         	ldr	r4, [r3]
  392e44: 9b01         	ldr	r3, [sp, #0x4]
  392e46: f8d3 50e4    	ldr.w	r5, [r3, #0xe4]
  392e4a: 9b01         	ldr	r3, [sp, #0x4]
  392e4c: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  392e50: 681b         	ldr	r3, [r3]
  392e52: 3344         	adds	r3, #0x44
  392e54: 681b         	ldr	r3, [r3]
  392e56: 9a01         	ldr	r2, [sp, #0x4]
  392e58: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  392e5c: 4610         	mov	r0, r2
  392e5e: 4798         	blx	r3
  392e60: 4603         	mov	r3, r0
  392e62: 4628         	mov	r0, r5
  392e64: 4619         	mov	r1, r3
  392e66: 47a0         	blx	r4
  392e68: 9b01         	ldr	r3, [sp, #0x4]
  392e6a: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  392e6e: 681b         	ldr	r3, [r3]
  392e70: f503 73d2    	add.w	r3, r3, #0x1a4
  392e74: 681b         	ldr	r3, [r3]
  392e76: 9a01         	ldr	r2, [sp, #0x4]
  392e78: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  392e7c: 4610         	mov	r0, r2
  392e7e: 21ff         	movs	r1, #0xff
  392e80: 4798         	blx	r3
  392e82: 9b01         	ldr	r3, [sp, #0x4]
  392e84: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  392e88: 681b         	ldr	r3, [r3]
  392e8a: f503 73d2    	add.w	r3, r3, #0x1a4
  392e8e: 681c         	ldr	r4, [r3]
  392e90: 9b01         	ldr	r3, [sp, #0x4]
  392e92: f8d3 50e4    	ldr.w	r5, [r3, #0xe4]
  392e96: 9b01         	ldr	r3, [sp, #0x4]
  392e98: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  392e9c: 681b         	ldr	r3, [r3]
  392e9e: f503 73ce    	add.w	r3, r3, #0x19c
  392ea2: 681b         	ldr	r3, [r3]
  392ea4: 9a01         	ldr	r2, [sp, #0x4]
  392ea6: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  392eaa: 4610         	mov	r0, r2
  392eac: 4798         	blx	r3
  392eae: 4603         	mov	r3, r0
  392eb0: 4628         	mov	r0, r5
  392eb2: 4619         	mov	r1, r3
  392eb4: 47a0         	blx	r4
  392eb6: 9b01         	ldr	r3, [sp, #0x4]
  392eb8: 681b         	ldr	r3, [r3]
  392eba: 334c         	adds	r3, #0x4c
  392ebc: 681c         	ldr	r4, [r3]
  392ebe: 9d01         	ldr	r5, [sp, #0x4]
  392ec0: ed9d 7b08    	vldr	d7, [sp, #32]
  392ec4: eef7 6bc7    	vcvt.f32.f64	s13, d7
  392ec8: ed9d 7b0a    	vldr	d7, [sp, #40]
  392ecc: eef7 7bc7    	vcvt.f32.f64	s15, d7
  392ed0: ab02         	add	r3, sp, #0x8
  392ed2: 4618         	mov	r0, r3
  392ed4: ee16 1a90    	vmov	r1, s13
  392ed8: ee17 2a90    	vmov	r2, s15
  392edc: f1ff ff08    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1ffe10
  392ee0: ab02         	add	r3, sp, #0x8
  392ee2: 4628         	mov	r0, r5
  392ee4: 4619         	mov	r1, r3
  392ee6: 47a0         	blx	r4
  392ee8: 9b01         	ldr	r3, [sp, #0x4]
  392eea: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  392eee: 681b         	ldr	r3, [r3]
  392ef0: 3390         	adds	r3, #0x90
  392ef2: 681b         	ldr	r3, [r3]
  392ef4: 9a01         	ldr	r2, [sp, #0x4]
  392ef6: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  392efa: 4610         	mov	r0, r2
  392efc: 2101         	movs	r1, #0x1
  392efe: 4798         	blx	r3
  392f00: 9b01         	ldr	r3, [sp, #0x4]
  392f02: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  392f06: 681b         	ldr	r3, [r3]
  392f08: 3398         	adds	r3, #0x98
  392f0a: 681c         	ldr	r4, [r3]
  392f0c: 9b01         	ldr	r3, [sp, #0x4]
  392f0e: f8d3 50e4    	ldr.w	r5, [r3, #0xe4]
  392f12: f7fe fed7    	bl	0x391cc4 <PhysicsManager::updateStep(float)+0x1e8> @ imm = #-0x1252
  392f16: 4603         	mov	r3, r0
  392f18: ee07 3a90    	vmov	s15, r3
  392f1c: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  392f20: eddf 7a17    	vldr	s15, [pc, #92]          @ 0x392f80 <PlasmaBall::reset(cpVect, cpVect, std::string, int)+0x19c>
  392f24: ee87 7a27    	vdiv.f32	s14, s14, s15
  392f28: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  392f2c: ee37 7a67    	vsub.f32	s14, s14, s15
  392f30: eddf 7a14    	vldr	s15, [pc, #80]          @ 0x392f84 <PlasmaBall::reset(cpVect, cpVect, std::string, int)+0x1a0>
  392f34: ee67 7a27    	vmul.f32	s15, s14, s15
  392f38: 4628         	mov	r0, r5
  392f3a: ee17 1a90    	vmov	r1, s15
  392f3e: 47a0         	blx	r4
  392f40: 9b01         	ldr	r3, [sp, #0x4]
  392f42: f503 7380    	add.w	r3, r3, #0x100
  392f46: 4618         	mov	r0, r3
  392f48: 9910         	ldr	r1, [sp, #0x40]
  392f4a: f023 f333    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x423666
  392f4e: 9b01         	ldr	r3, [sp, #0x4]
  392f50: 9a11         	ldr	r2, [sp, #0x44]
  392f52: f8c3 211c    	str.w	r2, [r3, #0x11c]
  392f56: 9b01         	ldr	r3, [sp, #0x4]
  392f58: f103 04f0    	add.w	r4, r3, #0xf0
  392f5c: ab0c         	add	r3, sp, #0x30
  392f5e: cb0f         	ldm	r3, {r0, r1, r2, r3}
  392f60: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  392f64: 9b01         	ldr	r3, [sp, #0x4]
  392f66: 2201         	movs	r2, #0x1
  392f68: f883 2148    	strb.w	r2, [r3, #0x148]
  392f6c: 9b01         	ldr	r3, [sp, #0x4]
  392f6e: 2201         	movs	r2, #0x1
  392f70: f883 2149    	strb.w	r2, [r3, #0x149]
  392f74: b005         	add	sp, #0x14
  392f76: e8bd 4030    	pop.w	{r4, r5, lr}
  392f7a: b002         	add	sp, #0x8
  392f7c: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x392f7d); words below are literal-pool data ---
  392f7e: bf00         	nop
  392f80: 0000         	movs	r0, r0
  392f82: 4e80         	ldr	r6, [pc, #0x200]        @ 0x393184 <PlasmaBall::updateStep(float)+0x1c>
  392f84: 0000         	movs	r0, r0
  392f86: 4334         	orrs	r4, r6

// ==== PlasmaBall::getRadius
//      file offset 0x392f88 (= ELF address; Ghidra 0x3a2f88), 56 bytes, Thumb-2
  392f88: b500         	push	{lr}
  392f8a: b083         	sub	sp, #0xc
  392f8c: 9001         	str	r0, [sp, #0x4]
  392f8e: 9b01         	ldr	r3, [sp, #0x4]
  392f90: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  392f94: 681b         	ldr	r3, [r3]
  392f96: 3344         	adds	r3, #0x44
  392f98: 681b         	ldr	r3, [r3]
  392f9a: 9a01         	ldr	r2, [sp, #0x4]
  392f9c: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  392fa0: 4610         	mov	r0, r2
  392fa2: 4798         	blx	r3
  392fa4: ee07 0a10    	vmov	s14, r0
  392fa8: eddf 7a04    	vldr	s15, [pc, #16]          @ 0x392fbc <PlasmaBall::getRadius()+0x34>
  392fac: ee67 7a27    	vmul.f32	s15, s14, s15
  392fb0: ee17 3a90    	vmov	r3, s15
  392fb4: 4618         	mov	r0, r3
  392fb6: b003         	add	sp, #0xc
  392fb8: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x392fbb); words below are literal-pool data ---
  392fbc: 0000         	movs	r0, r0
  392fbe: 42be         	cmp	r6, r7

// ==== PlasmaBall::applyDamage
//      file offset 0x392fc0 (= ELF address; Ghidra 0x3a2fc0), 272 bytes, Thumb-2
  392fc0: b530         	push	{r4, r5, lr}
  392fc2: b089         	sub	sp, #0x24
  392fc4: 9005         	str	r0, [sp, #0x14]
  392fc6: 9104         	str	r1, [sp, #0x10]
  392fc8: 4c3f         	ldr	r4, [pc, #0xfc]         @ 0x3930c8 <PlasmaBall::applyDamage(float)+0x108>
  392fca: 447c         	add	r4, pc
  392fcc: 4b3f         	ldr	r3, [pc, #0xfc]         @ 0x3930cc <PlasmaBall::applyDamage(float)+0x10c>
  392fce: 58e3         	ldr	r3, [r4, r3]
  392fd0: 681b         	ldr	r3, [r3]
  392fd2: 681b         	ldr	r3, [r3]
  392fd4: f503 7319    	add.w	r3, r3, #0x264
  392fd8: 681b         	ldr	r3, [r3]
  392fda: 4a3c         	ldr	r2, [pc, #0xf0]         @ 0x3930cc <PlasmaBall::applyDamage(float)+0x10c>
  392fdc: 58a2         	ldr	r2, [r4, r2]
  392fde: 6812         	ldr	r2, [r2]
  392fe0: 4610         	mov	r0, r2
  392fe2: 4798         	blx	r3
  392fe4: 4603         	mov	r3, r0
  392fe6: f083 0301    	eor	r3, r3, #0x1
  392fea: b2db         	uxtb	r3, r3
  392fec: 2b00         	cmp	r3, #0x0
  392fee: d01b         	beq	0x393028 <PlasmaBall::applyDamage(float)+0x68> @ imm = #0x36
  392ff0: 4b36         	ldr	r3, [pc, #0xd8]         @ 0x3930cc <PlasmaBall::applyDamage(float)+0x10c>
  392ff2: 58e3         	ldr	r3, [r4, r3]
  392ff4: 681b         	ldr	r3, [r3]
  392ff6: f8d3 5138    	ldr.w	r5, [r3, #0x138]
  392ffa: 9805         	ldr	r0, [sp, #0x14]
  392ffc: f7ff ffc4    	bl	0x392f88 <PlasmaBall::getRadius()> @ imm = #-0x78
  393000: 4603         	mov	r3, r0
  393002: 9302         	str	r3, [sp, #0x8]
  393004: 466b         	mov	r3, sp
  393006: f105 0230    	add.w	r2, r5, #0x30
  39300a: e892 0003    	ldm.w	r2, {r0, r1}
  39300e: e883 0003    	stm.w	r3, {r0, r1}
  393012: f105 0328    	add.w	r3, r5, #0x28
  393016: cb0c         	ldm	r3, {r2, r3}
  393018: 9805         	ldr	r0, [sp, #0x14]
  39301a: f000 f859    	bl	0x3930d0 <PlasmaBall::checkCollision(cpVect, float)> @ imm = #0xb2
  39301e: 4603         	mov	r3, r0
  393020: 2b00         	cmp	r3, #0x0
  393022: d001         	beq	0x393028 <PlasmaBall::applyDamage(float)+0x68> @ imm = #0x2
  393024: 2301         	movs	r3, #0x1
  393026: e000         	b	0x39302a <PlasmaBall::applyDamage(float)+0x6a> @ imm = #0x0
  393028: 2300         	movs	r3, #0x0
  39302a: 2b00         	cmp	r3, #0x0
  39302c: d04a         	beq	0x3930c4 <PlasmaBall::applyDamage(float)+0x104> @ imm = #0x94
  39302e: 4b27         	ldr	r3, [pc, #0x9c]         @ 0x3930cc <PlasmaBall::applyDamage(float)+0x10c>
  393030: 58e3         	ldr	r3, [r4, r3]
  393032: 681b         	ldr	r3, [r3]
  393034: 681b         	ldr	r3, [r3]
  393036: f503 733d    	add.w	r3, r3, #0x2f4
  39303a: 681b         	ldr	r3, [r3]
  39303c: 4a23         	ldr	r2, [pc, #0x8c]         @ 0x3930cc <PlasmaBall::applyDamage(float)+0x10c>
  39303e: 58a2         	ldr	r2, [r4, r2]
  393040: 6812         	ldr	r2, [r2]
  393042: 4610         	mov	r0, r2
  393044: 4798         	blx	r3
  393046: 9b05         	ldr	r3, [sp, #0x14]
  393048: 2200         	movs	r2, #0x0
  39304a: f883 2149    	strb.w	r2, [r3, #0x149]
  39304e: f7ff fd5d    	bl	0x392b0c <POWERUP::create()> @ imm = #-0x546
  393052: 4603         	mov	r3, r0
  393054: 9307         	str	r3, [sp, #0x1c]
  393056: 9b07         	ldr	r3, [sp, #0x1c]
  393058: 681b         	ldr	r3, [r3]
  39305a: f503 7320    	add.w	r3, r3, #0x280
  39305e: 681b         	ldr	r3, [r3]
  393060: 9807         	ldr	r0, [sp, #0x1c]
  393062: 2116         	movs	r1, #0x16
  393064: 4798         	blx	r3
  393066: 4b19         	ldr	r3, [pc, #0x64]         @ 0x3930cc <PlasmaBall::applyDamage(float)+0x10c>
  393068: 58e3         	ldr	r3, [r4, r3]
  39306a: 681b         	ldr	r3, [r3]
  39306c: 681b         	ldr	r3, [r3]
  39306e: f503 733a    	add.w	r3, r3, #0x2e8
  393072: 681b         	ldr	r3, [r3]
  393074: 4a15         	ldr	r2, [pc, #0x54]         @ 0x3930cc <PlasmaBall::applyDamage(float)+0x10c>
  393076: 58a2         	ldr	r2, [r4, r2]
  393078: 6812         	ldr	r2, [r2]
  39307a: 4610         	mov	r0, r2
  39307c: 9907         	ldr	r1, [sp, #0x1c]
  39307e: 4798         	blx	r3
  393080: 4b12         	ldr	r3, [pc, #0x48]         @ 0x3930cc <PlasmaBall::applyDamage(float)+0x10c>
  393082: 58e3         	ldr	r3, [r4, r3]
  393084: 681b         	ldr	r3, [r3]
  393086: 681b         	ldr	r3, [r3]
  393088: f503 73de    	add.w	r3, r3, #0x1bc
  39308c: 681d         	ldr	r5, [r3]
  39308e: 4b0f         	ldr	r3, [pc, #0x3c]         @ 0x3930cc <PlasmaBall::applyDamage(float)+0x10c>
  393090: 58e3         	ldr	r3, [r4, r3]
  393092: 681b         	ldr	r3, [r3]
  393094: 461c         	mov	r4, r3
  393096: 9b05         	ldr	r3, [sp, #0x14]
  393098: f503 7380    	add.w	r3, r3, #0x100
  39309c: aa06         	add	r2, sp, #0x18
  39309e: 4610         	mov	r0, r2
  3930a0: 4619         	mov	r1, r3
  3930a2: f023 f221    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x423442
  3930a6: ab06         	add	r3, sp, #0x18
  3930a8: 4620         	mov	r0, r4
  3930aa: 4619         	mov	r1, r3
  3930ac: 47a8         	blx	r5
  3930ae: ab06         	add	r3, sp, #0x18
  3930b0: 4618         	mov	r0, r3
  3930b2: f022 f42f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x42285e
  3930b6: e005         	b	0x3930c4 <PlasmaBall::applyDamage(float)+0x104> @ imm = #0xa
  3930b8: ab06         	add	r3, sp, #0x18
  3930ba: 4618         	mov	r0, r3
  3930bc: f022 f42a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x422854
  3930c0: f3f4 fff4    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3f4fe8
  3930c4: b009         	add	sp, #0x24
  3930c6: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3930c7); words below are literal-pool data ---
  3930c8: fa3e 0059    	<unknown>
  3930cc: d784         	bvc	0x392fd8 <PlasmaBall::applyDamage(float)+0x18> @ imm = #-0xf8
  3930ce: ffff b082    	<unknown>

// ==== PlasmaBall::checkCollision
//      file offset 0x3930d0 (= ELF address; Ghidra 0x3a30d0), 146 bytes, Thumb-2
  3930d0: b082         	sub	sp, #0x8
  3930d2: b510         	push	{r4, lr}
  3930d4: b088         	sub	sp, #0x20
  3930d6: 9001         	str	r0, [sp, #0x4]
  3930d8: a90a         	add	r1, sp, #0x28
  3930da: e881 000c    	stm.w	r1, {r2, r3}
  3930de: 9b01         	ldr	r3, [sp, #0x4]
  3930e0: 681b         	ldr	r3, [r3]
  3930e2: 3350         	adds	r3, #0x50
  3930e4: 681b         	ldr	r3, [r3]
  3930e6: 9a01         	ldr	r2, [sp, #0x4]
  3930e8: 4610         	mov	r0, r2
  3930ea: 4798         	blx	r3
  3930ec: 4604         	mov	r4, r0
  3930ee: ed9d 7b0a    	vldr	d7, [sp, #40]
  3930f2: eef7 6bc7    	vcvt.f32.f64	s13, d7
  3930f6: ed9d 7b0c    	vldr	d7, [sp, #48]
  3930fa: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3930fe: ab04         	add	r3, sp, #0x10
  393100: 4618         	mov	r0, r3
  393102: ee16 1a90    	vmov	r1, s13
  393106: ee17 2a90    	vmov	r2, s15
  39310a: f1ff fdf1    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1ffbe2
  39310e: aa06         	add	r2, sp, #0x18
  393110: ab04         	add	r3, sp, #0x10
  393112: 4610         	mov	r0, r2
  393114: 4621         	mov	r1, r4
  393116: 461a         	mov	r2, r3
  393118: f7fe fe18    	bl	0x391d4c <PhysicsManager::updateStep(float)+0x270> @ imm = #-0x13d0
  39311c: ab06         	add	r3, sp, #0x18
  39311e: 4618         	mov	r0, r3
  393120: f24e fb06    	bl	0x5e1730 <cocos2d::ccpLength(cocos2d::CCPoint const&)> @ imm = #0x24e60c
  393124: ee07 0a90    	vmov	s15, r0
  393128: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  39312c: ed8d 7b02    	vstr	d7, [sp, #8]
  393130: eddd 7a0e    	vldr	s15, [sp, #56]
  393134: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  393138: ed9d 7b02    	vldr	d7, [sp, #8]
  39313c: eeb4 6bc7    	vcmpe.f64	d6, d7
  393140: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  393144: dd06         	ble	0x393154 <PlasmaBall::checkCollision(cpVect, float)+0x84> @ imm = #0xc
  393146: 9b01         	ldr	r3, [sp, #0x4]
  393148: f893 3149    	ldrb.w	r3, [r3, #0x149]
  39314c: 2b00         	cmp	r3, #0x0
  39314e: d001         	beq	0x393154 <PlasmaBall::checkCollision(cpVect, float)+0x84> @ imm = #0x2
  393150: 2301         	movs	r3, #0x1
  393152: e000         	b	0x393156 <PlasmaBall::checkCollision(cpVect, float)+0x86> @ imm = #0x0
  393154: 2300         	movs	r3, #0x0
  393156: 4618         	mov	r0, r3
  393158: b008         	add	sp, #0x20
  39315a: e8bd 4010    	pop.w	{r4, lr}
  39315e: b002         	add	sp, #0x8
  393160: 4770         	bx	lr

// ==== PlasmaBall::updateStep
//      file offset 0x393168 (= ELF address; Ghidra 0x3a3168), 1306 bytes, Thumb-2
  393168: b570         	push	{r4, r5, r6, lr}
  39316a: ed2d 8b02    	vpush	{d8}
  39316e: b098         	sub	sp, #0x60
  393170: 9005         	str	r0, [sp, #0x14]
  393172: 9104         	str	r1, [sp, #0x10]
  393174: 4c21         	ldr	r4, [pc, #0x84]         @ 0x3931fc <PlasmaBall::updateStep(float)+0x94>
  393176: 447c         	add	r4, pc
  393178: 9b05         	ldr	r3, [sp, #0x14]
  39317a: ed93 7a41    	vldr	s14, [r3, #260]
  39317e: eddd 7a04    	vldr	s15, [sp, #16]
  393182: ee77 7a27    	vadd.f32	s15, s14, s15
  393186: 9b05         	ldr	r3, [sp, #0x14]
  393188: edc3 7a41    	vstr	s15, [r3, #260]
  39318c: 9b05         	ldr	r3, [sp, #0x14]
  39318e: 681b         	ldr	r3, [r3]
  393190: 3390         	adds	r3, #0x90
  393192: 681b         	ldr	r3, [r3]
  393194: 9a05         	ldr	r2, [sp, #0x14]
  393196: 4610         	mov	r0, r2
  393198: 2100         	movs	r1, #0x0
  39319a: 4798         	blx	r3
  39319c: 9b05         	ldr	r3, [sp, #0x14]
  39319e: ed93 7a41    	vldr	s14, [r3, #260]
  3931a2: eef1 7a00    	vmov.f32	s15, #4.000000e+00
  3931a6: eeb4 7ae7    	vcmpe.f32	s14, s15
  3931aa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3931ae: dd04         	ble	0x3931ba <PlasmaBall::updateStep(float)+0x52> @ imm = #0x8
  3931b0: 9b05         	ldr	r3, [sp, #0x14]
  3931b2: 2200         	movs	r2, #0x0
  3931b4: f883 2148    	strb.w	r2, [r3, #0x148]
  3931b8: e25f         	b	0x39367a <PlasmaBall::updateStep(float)+0x512> @ imm = #0x4be
  3931ba: 9b05         	ldr	r3, [sp, #0x14]
  3931bc: edd3 7a45    	vldr	s15, [r3, #276]
  3931c0: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3931c4: eddd 7a04    	vldr	s15, [sp, #16]
  3931c8: eeb7 5ae7    	vcvt.f64.f32	d5, s15
  3931cc: eeb6 7b08    	vmov.f64	d7, #7.500000e-01
  3931d0: ee25 7b07    	vmul.f64	d7, d5, d7
  3931d4: ee36 6b07    	vadd.f64	d6, d6, d7
  3931d8: ed9f 7b05    	vldr	d7, [pc, #20]           @ 0x3931f0 <PlasmaBall::updateStep(float)+0x88>
  3931dc: eeb4 6bc7    	vcmpe.f64	d6, d7
  3931e0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3931e4: dd0c         	ble	0x393200 <PlasmaBall::updateStep(float)+0x98> @ imm = #0x18
  3931e6: eddf 7a04    	vldr	s15, [pc, #16]          @ 0x3931f8 <PlasmaBall::updateStep(float)+0x90>
  3931ea: e01a         	b	0x393222 <PlasmaBall::updateStep(float)+0xba> @ imm = #0x34
  3931ec: f3af 8000    	nop.w
  3931f0: 999a         	ldr	r1, [sp, #0x268]
  3931f2: 9999         	ldr	r1, [sp, #0x264]
  3931f4: 9999         	ldr	r1, [sp, #0x264]
  3931f6: 3ff1         	subs	r7, #0xf1
  3931f8: cccd         	ldm	r4!, {r0, r2, r3, r6, r7}
  3931fa: 3f8c         	subs	r7, #0x8c
  3931fc: f892 0059    	ldrb.w	r0, [r2, #0x59]
  393200: 9b05         	ldr	r3, [sp, #0x14]
  393202: edd3 7a45    	vldr	s15, [r3, #276]
  393206: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  39320a: eddd 7a04    	vldr	s15, [sp, #16]
  39320e: eeb7 5ae7    	vcvt.f64.f32	d5, s15
  393212: eeb6 7b08    	vmov.f64	d7, #7.500000e-01
  393216: ee25 7b07    	vmul.f64	d7, d5, d7
  39321a: ee36 7b07    	vadd.f64	d7, d6, d7
  39321e: eef7 7bc7    	vcvt.f32.f64	s15, d7
  393222: 9b05         	ldr	r3, [sp, #0x14]
  393224: edc3 7a45    	vstr	s15, [r3, #276]
  393228: 9b05         	ldr	r3, [sp, #0x14]
  39322a: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  39322e: 681b         	ldr	r3, [r3]
  393230: 3340         	adds	r3, #0x40
  393232: 681d         	ldr	r5, [r3]
  393234: 9b05         	ldr	r3, [sp, #0x14]
  393236: f8d3 60e8    	ldr.w	r6, [r3, #0xe8]
  39323a: 9b05         	ldr	r3, [sp, #0x14]
  39323c: edd3 7a45    	vldr	s15, [r3, #276]
  393240: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  393244: 9b05         	ldr	r3, [sp, #0x14]
  393246: ed93 7a41    	vldr	s14, [r3, #260]
  39324a: eef2 7a04    	vmov.f32	s15, #1.000000e+01
  39324e: ee67 7a27    	vmul.f32	s15, s14, s15
  393252: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  393256: ec51 0b17    	vmov	r0, r1, d7
  39325a: f742 ee56    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0xbd354
  39325e: ec41 0b16    	vmov	d6, r0, r1
  393262: ed9f 7ba3    	vldr	d7, [pc, #652]          @ 0x3934f0 <PlasmaBall::updateStep(float)+0x388>
  393266: ee26 7b07    	vmul.f64	d7, d6, d7
  39326a: ee38 7b07    	vadd.f64	d7, d8, d7
  39326e: eef7 7bc7    	vcvt.f32.f64	s15, d7
  393272: 4630         	mov	r0, r6
  393274: ee17 1a90    	vmov	r1, s15
  393278: 47a8         	blx	r5
  39327a: 9b05         	ldr	r3, [sp, #0x14]
  39327c: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  393280: 681b         	ldr	r3, [r3]
  393282: 3340         	adds	r3, #0x40
  393284: 681d         	ldr	r5, [r3]
  393286: 9b05         	ldr	r3, [sp, #0x14]
  393288: f8d3 60e4    	ldr.w	r6, [r3, #0xe4]
  39328c: 9b05         	ldr	r3, [sp, #0x14]
  39328e: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  393292: 681b         	ldr	r3, [r3]
  393294: 3344         	adds	r3, #0x44
  393296: 681b         	ldr	r3, [r3]
  393298: 9a05         	ldr	r2, [sp, #0x14]
  39329a: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  39329e: 4610         	mov	r0, r2
  3932a0: 4798         	blx	r3
  3932a2: 4603         	mov	r3, r0
  3932a4: 4630         	mov	r0, r6
  3932a6: 4619         	mov	r1, r3
  3932a8: 47a8         	blx	r5
  3932aa: 9b05         	ldr	r3, [sp, #0x14]
  3932ac: ed93 7a44    	vldr	s14, [r3, #272]
  3932b0: eddd 7a04    	vldr	s15, [sp, #16]
  3932b4: ee77 7a27    	vadd.f32	s15, s14, s15
  3932b8: 9b05         	ldr	r3, [sp, #0x14]
  3932ba: edc3 7a44    	vstr	s15, [r3, #272]
  3932be: 9b05         	ldr	r3, [sp, #0x14]
  3932c0: ed93 7a44    	vldr	s14, [r3, #272]
  3932c4: eef5 7a00    	vmov.f32	s15, #2.500000e-01
  3932c8: eeb4 7ae7    	vcmpe.f32	s14, s15
  3932cc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3932d0: dd24         	ble	0x39331c <PlasmaBall::updateStep(float)+0x1b4> @ imm = #0x48
  3932d2: 9b05         	ldr	r3, [sp, #0x14]
  3932d4: f04f 0200    	mov.w	r2, #0x0
  3932d8: f8c3 2110    	str.w	r2, [r3, #0x110]
  3932dc: 9b05         	ldr	r3, [sp, #0x14]
  3932de: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3932e2: 681b         	ldr	r3, [r3]
  3932e4: 3398         	adds	r3, #0x98
  3932e6: 681d         	ldr	r5, [r3]
  3932e8: 9b05         	ldr	r3, [sp, #0x14]
  3932ea: f8d3 60e4    	ldr.w	r6, [r3, #0xe4]
  3932ee: f7fe fce9    	bl	0x391cc4 <PhysicsManager::updateStep(float)+0x1e8> @ imm = #-0x162e
  3932f2: 4603         	mov	r3, r0
  3932f4: ee07 3a90    	vmov	s15, r3
  3932f8: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3932fc: eddf 7a84    	vldr	s15, [pc, #528]         @ 0x393510 <PlasmaBall::updateStep(float)+0x3a8>
  393300: ee87 7a27    	vdiv.f32	s14, s14, s15
  393304: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  393308: ee37 7a67    	vsub.f32	s14, s14, s15
  39330c: eddf 7a81    	vldr	s15, [pc, #516]         @ 0x393514 <PlasmaBall::updateStep(float)+0x3ac>
  393310: ee67 7a27    	vmul.f32	s15, s14, s15
  393314: 4630         	mov	r0, r6
  393316: ee17 1a90    	vmov	r1, s15
  39331a: 47a8         	blx	r5
  39331c: 9b05         	ldr	r3, [sp, #0x14]
  39331e: ed93 7a43    	vldr	s14, [r3, #268]
  393322: eddd 7a04    	vldr	s15, [sp, #16]
  393326: ee77 7a27    	vadd.f32	s15, s14, s15
  39332a: 9b05         	ldr	r3, [sp, #0x14]
  39332c: edc3 7a43    	vstr	s15, [r3, #268]
  393330: 9b05         	ldr	r3, [sp, #0x14]
  393332: edd3 7a43    	vldr	s15, [r3, #268]
  393336: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  39333a: ed9f 7b6f    	vldr	d7, [pc, #444]          @ 0x3934f8 <PlasmaBall::updateStep(float)+0x390>
  39333e: eeb4 6bc7    	vcmpe.f64	d6, d7
  393342: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  393346: dd29         	ble	0x39339c <PlasmaBall::updateStep(float)+0x234> @ imm = #0x52
  393348: 9b05         	ldr	r3, [sp, #0x14]
  39334a: f04f 0200    	mov.w	r2, #0x0
  39334e: f8c3 210c    	str.w	r2, [r3, #0x10c]
  393352: 9b05         	ldr	r3, [sp, #0x14]
  393354: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  393358: 1c5a         	adds	r2, r3, #0x1
  39335a: 9b05         	ldr	r3, [sp, #0x14]
  39335c: f8c3 2144    	str.w	r2, [r3, #0x144]
  393360: 9b05         	ldr	r3, [sp, #0x14]
  393362: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  393366: 2b01         	cmp	r3, #0x1
  393368: dd03         	ble	0x393372 <PlasmaBall::updateStep(float)+0x20a> @ imm = #0x6
  39336a: 9b05         	ldr	r3, [sp, #0x14]
  39336c: 2200         	movs	r2, #0x0
  39336e: f8c3 2144    	str.w	r2, [r3, #0x144]
  393372: 9b05         	ldr	r3, [sp, #0x14]
  393374: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  393378: 681b         	ldr	r3, [r3]
  39337a: f503 7302    	add.w	r3, r3, #0x208
  39337e: 681b         	ldr	r3, [r3]
  393380: 9a05         	ldr	r2, [sp, #0x14]
  393382: f8d2 10e4    	ldr.w	r1, [r2, #0xe4]
  393386: 9a05         	ldr	r2, [sp, #0x14]
  393388: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  39338c: 3212         	adds	r2, #0x12
  39338e: 0112         	lsls	r2, r2, #0x4
  393390: 9805         	ldr	r0, [sp, #0x14]
  393392: 4402         	add	r2, r0
  393394: 3204         	adds	r2, #0x4
  393396: 4608         	mov	r0, r1
  393398: 4611         	mov	r1, r2
  39339a: 4798         	blx	r3
  39339c: 9b05         	ldr	r3, [sp, #0x14]
  39339e: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3933a2: 681b         	ldr	r3, [r3]
  3933a4: 3398         	adds	r3, #0x98
  3933a6: 681b         	ldr	r3, [r3]
  3933a8: 9a05         	ldr	r2, [sp, #0x14]
  3933aa: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  3933ae: 9905         	ldr	r1, [sp, #0x14]
  3933b0: ed91 7a41    	vldr	s14, [r1, #260]
  3933b4: eef3 7a09    	vmov.f32	s15, #2.500000e+01
  3933b8: ee67 7a27    	vmul.f32	s15, s14, s15
  3933bc: 4610         	mov	r0, r2
  3933be: ee17 1a90    	vmov	r1, s15
  3933c2: 4798         	blx	r3
  3933c4: 9b05         	ldr	r3, [sp, #0x14]
  3933c6: ed93 7a41    	vldr	s14, [r3, #260]
  3933ca: eef0 7a0e    	vmov.f32	s15, #3.750000e+00
  3933ce: eeb4 7ae7    	vcmpe.f32	s14, s15
  3933d2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3933d6: d503         	bpl	0x3933e0 <PlasmaBall::updateStep(float)+0x278> @ imm = #0x6
  3933d8: 9805         	ldr	r0, [sp, #0x14]
  3933da: 9904         	ldr	r1, [sp, #0x10]
  3933dc: f7ff fdf0    	bl	0x392fc0 <PlasmaBall::applyDamage(float)> @ imm = #-0x420
  3933e0: 9b05         	ldr	r3, [sp, #0x14]
  3933e2: ed93 7a48    	vldr	s14, [r3, #288]
  3933e6: eddd 7a04    	vldr	s15, [sp, #16]
  3933ea: ee77 7a27    	vadd.f32	s15, s14, s15
  3933ee: 9b05         	ldr	r3, [sp, #0x14]
  3933f0: edc3 7a48    	vstr	s15, [r3, #288]
  3933f4: 9b05         	ldr	r3, [sp, #0x14]
  3933f6: edd3 7a48    	vldr	s15, [r3, #288]
  3933fa: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3933fe: ed9f 7b40    	vldr	d7, [pc, #256]          @ 0x393500 <PlasmaBall::updateStep(float)+0x398>
  393402: eeb4 6bc7    	vcmpe.f64	d6, d7
  393406: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  39340a: dd33         	ble	0x393474 <PlasmaBall::updateStep(float)+0x30c> @ imm = #0x66
  39340c: 9b05         	ldr	r3, [sp, #0x14]
  39340e: f04f 0200    	mov.w	r2, #0x0
  393412: f8c3 2120    	str.w	r2, [r3, #0x120]
  393416: 4b40         	ldr	r3, [pc, #0x100]        @ 0x393518 <PlasmaBall::updateStep(float)+0x3b0>
  393418: 58e3         	ldr	r3, [r4, r3]
  39341a: 681c         	ldr	r4, [r3]
  39341c: 9b05         	ldr	r3, [sp, #0x14]
  39341e: 681b         	ldr	r3, [r3]
  393420: 3350         	adds	r3, #0x50
  393422: 681b         	ldr	r3, [r3]
  393424: 9a05         	ldr	r2, [sp, #0x14]
  393426: 4610         	mov	r0, r2
  393428: 4798         	blx	r3
  39342a: 4603         	mov	r3, r0
  39342c: edd3 7a00    	vldr	s15, [r3]
  393430: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  393434: 9b05         	ldr	r3, [sp, #0x14]
  393436: 681b         	ldr	r3, [r3]
  393438: 3350         	adds	r3, #0x50
  39343a: 681b         	ldr	r3, [r3]
  39343c: 9a05         	ldr	r2, [sp, #0x14]
  39343e: 4610         	mov	r0, r2
  393440: 4798         	blx	r3
  393442: 4603         	mov	r3, r0
  393444: edd3 7a01    	vldr	s15, [r3, #4]
  393448: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  39344c: ab0c         	add	r3, sp, #0x30
  39344e: 4618         	mov	r0, r3
  393450: eeb0 0b48    	vmov.f64	d0, d8
  393454: eeb0 1b47    	vmov.f64	d1, d7
  393458: f7fe fc98    	bl	0x391d8c <PhysicsManager::updateStep(float)+0x2b0> @ imm = #-0x16d0
  39345c: 466b         	mov	r3, sp
  39345e: aa0e         	add	r2, sp, #0x38
  393460: e892 0003    	ldm.w	r2, {r0, r1}
  393464: e883 0003    	stm.w	r3, {r0, r1}
  393468: ab0c         	add	r3, sp, #0x30
  39346a: cb0c         	ldm	r3, {r2, r3}
  39346c: 4620         	mov	r0, r4
  39346e: 2130         	movs	r1, #0x30
  393470: f064 fdc2    	bl	0x3f7ff8 <Sound::playSoundPosition(int, cpVect)> @ imm = #0x64b84
  393474: 9b05         	ldr	r3, [sp, #0x14]
  393476: 681b         	ldr	r3, [r3]
  393478: 3350         	adds	r3, #0x50
  39347a: 681b         	ldr	r3, [r3]
  39347c: 9a05         	ldr	r2, [sp, #0x14]
  39347e: 4610         	mov	r0, r2
  393480: 4798         	blx	r3
  393482: 4603         	mov	r3, r0
  393484: edd3 7a00    	vldr	s15, [r3]
  393488: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  39348c: 9b05         	ldr	r3, [sp, #0x14]
  39348e: 681b         	ldr	r3, [r3]
  393490: 3350         	adds	r3, #0x50
  393492: 681b         	ldr	r3, [r3]
  393494: 9a05         	ldr	r2, [sp, #0x14]
  393496: 4610         	mov	r0, r2
  393498: 4798         	blx	r3
  39349a: 4603         	mov	r3, r0
  39349c: edd3 7a01    	vldr	s15, [r3, #4]
  3934a0: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3934a4: ab10         	add	r3, sp, #0x40
  3934a6: 4618         	mov	r0, r3
  3934a8: eeb0 0b48    	vmov.f64	d0, d8
  3934ac: eeb0 1b47    	vmov.f64	d1, d7
  3934b0: f7fe fc6c    	bl	0x391d8c <PhysicsManager::updateStep(float)+0x2b0> @ imm = #-0x1728
  3934b4: ab14         	add	r3, sp, #0x50
  3934b6: 4618         	mov	r0, r3
  3934b8: ed9f 0b13    	vldr	d0, [pc, #76]           @ 0x393508 <PlasmaBall::updateStep(float)+0x3a0>
  3934bc: ed9f 1b12    	vldr	d1, [pc, #72]           @ 0x393508 <PlasmaBall::updateStep(float)+0x3a0>
  3934c0: f7fe fc64    	bl	0x391d8c <PhysicsManager::updateStep(float)+0x2b0> @ imm = #-0x1738
  3934c4: 466c         	mov	r4, sp
  3934c6: ab14         	add	r3, sp, #0x50
  3934c8: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3934ca: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3934ce: ab10         	add	r3, sp, #0x40
  3934d0: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3934d2: f7fe fde9    	bl	0x3920a8 <PhysicsManager::updateStep(float)+0x5cc> @ imm = #-0x142e
  3934d6: 4603         	mov	r3, r0
  3934d8: 2b00         	cmp	r3, #0x0
  3934da: d021         	beq	0x393520 <PlasmaBall::updateStep(float)+0x3b8> @ imm = #0x42
  3934dc: 9b05         	ldr	r3, [sp, #0x14]
  3934de: 681b         	ldr	r3, [r3]
  3934e0: 3390         	adds	r3, #0x90
  3934e2: 681b         	ldr	r3, [r3]
  3934e4: 9a05         	ldr	r2, [sp, #0x14]
  3934e6: 4610         	mov	r0, r2
  3934e8: 2101         	movs	r1, #0x1
  3934ea: 4798         	blx	r3
  3934ec: e018         	b	0x393520 <PlasmaBall::updateStep(float)+0x3b8> @ imm = #0x30
  3934ee: bf00         	nop
  3934f0: 999a         	ldr	r1, [sp, #0x268]
  3934f2: 9999         	ldr	r1, [sp, #0x264]
  3934f4: 9999         	ldr	r1, [sp, #0x264]
  3934f6: 3f99         	subs	r7, #0x99
  3934f8: 999a         	ldr	r1, [sp, #0x268]
  3934fa: 9999         	ldr	r1, [sp, #0x264]
  3934fc: 9999         	ldr	r1, [sp, #0x264]
  3934fe: 3fb9         	subs	r7, #0xb9
  393500: 3333         	adds	r3, #0x33
  393502: 3333         	adds	r3, #0x33
  393504: 3333         	adds	r3, #0x33
  393506: 3fd3         	subs	r7, #0xd3
  393508: 0000         	movs	r0, r0
  39350a: 0000         	movs	r0, r0
  39350c: c000         	<unknown>
  39350e: 4062         	eors	r2, r4
  393510: 0000         	movs	r0, r0
  393512: 4e80         	ldr	r6, [pc, #0x200]        @ 0x393714 <PlasmaBall::updateStep(float)+0x5ac>
  393514: 0000         	movs	r0, r0
  393516: 43b4         	bics	r4, r6
  393518: d730         	bvc	0x39357c <PlasmaBall::updateStep(float)+0x414> @ imm = #0x60
  39351a: ffff 0000    	<unknown>
  39351e: 4248         	rsbs	r0, r1, #0
  393520: 9b05         	ldr	r3, [sp, #0x14]
  393522: ed93 7a41    	vldr	s14, [r3, #260]
  393526: eef0 7a08    	vmov.f32	s15, #3.000000e+00
  39352a: eeb4 7ae7    	vcmpe.f32	s14, s15
  39352e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  393532: dd70         	ble	0x393616 <PlasmaBall::updateStep(float)+0x4ae> @ imm = #0xe0
  393534: 9b05         	ldr	r3, [sp, #0x14]
  393536: ed93 7a42    	vldr	s14, [r3, #264]
  39353a: eddd 7a04    	vldr	s15, [sp, #16]
  39353e: ee77 7a27    	vadd.f32	s15, s14, s15
  393542: 9b05         	ldr	r3, [sp, #0x14]
  393544: edc3 7a42    	vstr	s15, [r3, #264]
  393548: 9b05         	ldr	r3, [sp, #0x14]
  39354a: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  39354e: 681b         	ldr	r3, [r3]
  393550: f503 73d2    	add.w	r3, r3, #0x1a4
  393554: 681c         	ldr	r4, [r3]
  393556: 9b05         	ldr	r3, [sp, #0x14]
  393558: f8d3 50e8    	ldr.w	r5, [r3, #0xe8]
  39355c: 9b05         	ldr	r3, [sp, #0x14]
  39355e: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  393562: 681b         	ldr	r3, [r3]
  393564: f503 73ce    	add.w	r3, r3, #0x19c
  393568: 681b         	ldr	r3, [r3]
  39356a: 9a05         	ldr	r2, [sp, #0x14]
  39356c: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  393570: 4610         	mov	r0, r2
  393572: 4798         	blx	r3
  393574: 4603         	mov	r3, r0
  393576: ee07 3a90    	vmov	s15, r3
  39357a: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  39357e: 9b05         	ldr	r3, [sp, #0x14]
  393580: edd3 6a42    	vldr	s13, [r3, #264]
  393584: ed5f 7a1b    	vldr	s15, [pc, #-108]        @ 0x39351c <PlasmaBall::updateStep(float)+0x3b4>
  393588: ee66 7aa7    	vmul.f32	s15, s13, s15
  39358c: ee77 7a67    	vsub.f32	s15, s14, s15
  393590: eef5 7ac0    	vcmpe.f32	s15, #0
  393594: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  393598: dd1f         	ble	0x3935da <PlasmaBall::updateStep(float)+0x472> @ imm = #0x3e
  39359a: 9b05         	ldr	r3, [sp, #0x14]
  39359c: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3935a0: 681b         	ldr	r3, [r3]
  3935a2: f503 73ce    	add.w	r3, r3, #0x19c
  3935a6: 681b         	ldr	r3, [r3]
  3935a8: 9a05         	ldr	r2, [sp, #0x14]
  3935aa: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  3935ae: 4610         	mov	r0, r2
  3935b0: 4798         	blx	r3
  3935b2: 4603         	mov	r3, r0
  3935b4: ee07 3a90    	vmov	s15, r3
  3935b8: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3935bc: 9b05         	ldr	r3, [sp, #0x14]
  3935be: edd3 6a42    	vldr	s13, [r3, #264]
  3935c2: ed5f 7a2a    	vldr	s15, [pc, #-168]        @ 0x39351c <PlasmaBall::updateStep(float)+0x3b4>
  3935c6: ee66 7aa7    	vmul.f32	s15, s13, s15
  3935ca: ee77 7a67    	vsub.f32	s15, s14, s15
  3935ce: eefc 7ae7    	vcvt.u32.f32	s15, s15
  3935d2: ee17 3a90    	vmov	r3, s15
  3935d6: b2db         	uxtb	r3, r3
  3935d8: e000         	b	0x3935dc <PlasmaBall::updateStep(float)+0x474> @ imm = #0x0
  3935da: 2300         	movs	r3, #0x0
  3935dc: 4628         	mov	r0, r5
  3935de: 4619         	mov	r1, r3
  3935e0: 47a0         	blx	r4
  3935e2: 9b05         	ldr	r3, [sp, #0x14]
  3935e4: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3935e8: 681b         	ldr	r3, [r3]
  3935ea: f503 73d2    	add.w	r3, r3, #0x1a4
  3935ee: 681c         	ldr	r4, [r3]
  3935f0: 9b05         	ldr	r3, [sp, #0x14]
  3935f2: f8d3 50e4    	ldr.w	r5, [r3, #0xe4]
  3935f6: 9b05         	ldr	r3, [sp, #0x14]
  3935f8: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3935fc: 681b         	ldr	r3, [r3]
  3935fe: f503 73ce    	add.w	r3, r3, #0x19c
  393602: 681b         	ldr	r3, [r3]
  393604: 9a05         	ldr	r2, [sp, #0x14]
  393606: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  39360a: 4610         	mov	r0, r2
  39360c: 4798         	blx	r3
  39360e: 4603         	mov	r3, r0
  393610: 4628         	mov	r0, r5
  393612: 4619         	mov	r1, r3
  393614: 47a0         	blx	r4
  393616: 9b05         	ldr	r3, [sp, #0x14]
  393618: 681b         	ldr	r3, [r3]
  39361a: 334c         	adds	r3, #0x4c
  39361c: 681c         	ldr	r4, [r3]
  39361e: 9d05         	ldr	r5, [sp, #0x14]
  393620: 9b05         	ldr	r3, [sp, #0x14]
  393622: 681b         	ldr	r3, [r3]
  393624: 3350         	adds	r3, #0x50
  393626: 681b         	ldr	r3, [r3]
  393628: 9a05         	ldr	r2, [sp, #0x14]
  39362a: 4610         	mov	r0, r2
  39362c: 4798         	blx	r3
  39362e: 4606         	mov	r6, r0
  393630: 9b05         	ldr	r3, [sp, #0x14]
  393632: ed93 7b3c    	vldr	d7, [r3, #240]
  393636: eef7 6bc7    	vcvt.f32.f64	s13, d7
  39363a: 9b05         	ldr	r3, [sp, #0x14]
  39363c: ed93 7b3e    	vldr	d7, [r3, #248]
  393640: eef7 7bc7    	vcvt.f32.f64	s15, d7
  393644: ab06         	add	r3, sp, #0x18
  393646: 4618         	mov	r0, r3
  393648: ee16 1a90    	vmov	r1, s13
  39364c: ee17 2a90    	vmov	r2, s15
  393650: f1ff fb4e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1ff69c
  393654: aa08         	add	r2, sp, #0x20
  393656: ab06         	add	r3, sp, #0x18
  393658: 4610         	mov	r0, r2
  39365a: 4619         	mov	r1, r3
  39365c: ed9d 0a04    	vldr	s0, [sp, #16]
  393660: f7fe fb84    	bl	0x391d6c <PhysicsManager::updateStep(float)+0x290> @ imm = #-0x18f8
  393664: aa0a         	add	r2, sp, #0x28
  393666: ab08         	add	r3, sp, #0x20
  393668: 4610         	mov	r0, r2
  39366a: 4631         	mov	r1, r6
  39366c: 461a         	mov	r2, r3
  39366e: f7fe fb5d    	bl	0x391d2c <PhysicsManager::updateStep(float)+0x250> @ imm = #-0x1946
  393672: ab0a         	add	r3, sp, #0x28
  393674: 4628         	mov	r0, r5
  393676: 4619         	mov	r1, r3
  393678: 47a0         	blx	r4
  39367a: b018         	add	sp, #0x60
  39367c: ecbd 8b02    	vpop	{d8}
  393680: bd70         	pop	{r4, r5, r6, pc}
