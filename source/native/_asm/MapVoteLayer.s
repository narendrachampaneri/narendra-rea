// MapVoteLayer: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 13 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../MapVoteLayer.cpp

// ==== MapVoteLayer::create
//      file offset 0x3a4d0c (= ELF address; Ghidra 0x3b4d0c), 112 bytes, Thumb-2
  3a4d0c: b510         	push	{r4, lr}
  3a4d0e: b082         	sub	sp, #0x8
  3a4d10: f44f 70a0    	mov.w	r0, #0x140
  3a4d14: f3e2 fe26    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x3e2c4c
  3a4d18: 4603         	mov	r3, r0
  3a4d1a: 461c         	mov	r4, r3
  3a4d1c: 4620         	mov	r0, r4
  3a4d1e: f000 f82d    	bl	0x3a4d7c <MapVoteLayer::MapVoteLayer()> @ imm = #0x5a
  3a4d22: 9401         	str	r4, [sp, #0x4]
  3a4d24: 9b01         	ldr	r3, [sp, #0x4]
  3a4d26: 2b00         	cmp	r3, #0x0
  3a4d28: d00a         	beq	0x3a4d40 <MapVoteLayer::create()+0x34> @ imm = #0x14
  3a4d2a: 9b01         	ldr	r3, [sp, #0x4]
  3a4d2c: 681b         	ldr	r3, [r3]
  3a4d2e: 3318         	adds	r3, #0x18
  3a4d30: 681b         	ldr	r3, [r3]
  3a4d32: 9801         	ldr	r0, [sp, #0x4]
  3a4d34: 4798         	blx	r3
  3a4d36: 4603         	mov	r3, r0
  3a4d38: 2b00         	cmp	r3, #0x0
  3a4d3a: d001         	beq	0x3a4d40 <MapVoteLayer::create()+0x34> @ imm = #0x2
  3a4d3c: 2301         	movs	r3, #0x1
  3a4d3e: e000         	b	0x3a4d42 <MapVoteLayer::create()+0x36> @ imm = #0x0
  3a4d40: 2300         	movs	r3, #0x0
  3a4d42: 2b00         	cmp	r3, #0x0
  3a4d44: d005         	beq	0x3a4d52 <MapVoteLayer::create()+0x46> @ imm = #0xa
  3a4d46: 9b01         	ldr	r3, [sp, #0x4]
  3a4d48: 4618         	mov	r0, r3
  3a4d4a: f1f3 f8d7    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x1f31ae
  3a4d4e: 9b01         	ldr	r3, [sp, #0x4]
  3a4d50: e011         	b	0x3a4d76 <MapVoteLayer::create()+0x6a> @ imm = #0x22
  3a4d52: 9b01         	ldr	r3, [sp, #0x4]
  3a4d54: 2b00         	cmp	r3, #0x0
  3a4d56: d005         	beq	0x3a4d64 <MapVoteLayer::create()+0x58> @ imm = #0xa
  3a4d58: 9b01         	ldr	r3, [sp, #0x4]
  3a4d5a: 681b         	ldr	r3, [r3]
  3a4d5c: 3308         	adds	r3, #0x8
  3a4d5e: 681b         	ldr	r3, [r3]
  3a4d60: 9801         	ldr	r0, [sp, #0x4]
  3a4d62: 4798         	blx	r3
  3a4d64: 2300         	movs	r3, #0x0
  3a4d66: 9301         	str	r3, [sp, #0x4]
  3a4d68: 2300         	movs	r3, #0x0
  3a4d6a: e004         	b	0x3a4d76 <MapVoteLayer::create()+0x6a> @ imm = #0x8
  3a4d6c: 4620         	mov	r0, r4
  3a4d6e: f3e3 f999    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3e3332
  3a4d72: f3e3 f99b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3e3336
  3a4d76: 4618         	mov	r0, r3
  3a4d78: b002         	add	sp, #0x8
  3a4d7a: bd10         	pop	{r4, pc}

// ==== MapVoteLayer::MapVoteLayer
//      file offset 0x3a4d7c (= ELF address; Ghidra 0x3b4d7c), 44 bytes, Thumb-2
  3a4d7c: b510         	push	{r4, lr}
  3a4d7e: b082         	sub	sp, #0x8
  3a4d80: 9001         	str	r0, [sp, #0x4]
  3a4d82: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x3a4da0 <MapVoteLayer::MapVoteLayer()+0x24>
  3a4d84: 447c         	add	r4, pc
  3a4d86: 9b01         	ldr	r3, [sp, #0x4]
  3a4d88: 4618         	mov	r0, r3
  3a4d8a: f1ea fc55    	bl	0x58f638 <cocos2d::CCNode::CCNode()> @ imm = #0x1ea8aa
  3a4d8e: 9b01         	ldr	r3, [sp, #0x4]
  3a4d90: 4a04         	ldr	r2, [pc, #0x10]         @ 0x3a4da4 <MapVoteLayer::MapVoteLayer()+0x28>
  3a4d92: 58a2         	ldr	r2, [r4, r2]
  3a4d94: 3208         	adds	r2, #0x8
  3a4d96: 601a         	str	r2, [r3]
  3a4d98: 9b01         	ldr	r3, [sp, #0x4]
  3a4d9a: 4618         	mov	r0, r3
  3a4d9c: b002         	add	sp, #0x8
  3a4d9e: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3a4d9f); words below are literal-pool data ---
  3a4da0: dc84         	bgt	0x3a4cac <PlayerLobbyOnlineGP::updateReadyLabel()+0xf34> @ imm = #-0xf8
  3a4da2: 0058         	lsls	r0, r3, #0x1
  3a4da4: dd70         	ble	0x3a4e88 <MapVoteLayer::init()+0xe0> @ imm = #0xe0
  3a4da6: ffff b570    	<unknown>

// ==== MapVoteLayer::init
//      file offset 0x3a4da8 (= ELF address; Ghidra 0x3b4da8), 4956 bytes, Thumb-2
  3a4da8: b570         	push	{r4, r5, r6, lr}
  3a4daa: ed2d 8b02    	vpush	{d8}
  3a4dae: b0c0         	sub	sp, #0x100
  3a4db0: 9003         	str	r0, [sp, #0xc]
  3a4db2: 4c09         	ldr	r4, [pc, #0x24]         @ 0x3a4dd8 <MapVoteLayer::init()+0x30>
  3a4db4: 447c         	add	r4, pc
  3a4db6: 9b03         	ldr	r3, [sp, #0xc]
  3a4db8: 4618         	mov	r0, r3
  3a4dba: f1ea fe47    	bl	0x58fa4c <cocos2d::CCNode::init()> @ imm = #0x1eac8e
  3a4dbe: 4603         	mov	r3, r0
  3a4dc0: f88d 3017    	strb.w	r3, [sp, #0x17]
  3a4dc4: f89d 3017    	ldrb.w	r3, [sp, #0x17]
  3a4dc8: f083 0301    	eor	r3, r3, #0x1
  3a4dcc: b2db         	uxtb	r3, r3
  3a4dce: 2b00         	cmp	r3, #0x0
  3a4dd0: d004         	beq	0x3a4ddc <MapVoteLayer::init()+0x34> @ imm = #0x8
  3a4dd2: 2300         	movs	r3, #0x0
  3a4dd4: f001 b991    	b.w	0x3a60fa <MapVoteLayer::init()+0x1352> @ imm = #0x1322
  3a4dd8: dc54         	bgt	0x3a4e84 <MapVoteLayer::init()+0xdc> @ imm = #0xa8
  3a4dda: 0058         	lsls	r0, r3, #0x1
  3a4ddc: ab18         	add	r3, sp, #0x60
  3a4dde: 4618         	mov	r0, r3
  3a4de0: 4bb4         	ldr	r3, [pc, #0x2d0]        @ 0x3a50b4 <MapVoteLayer::init()+0x30c>
  3a4de2: 58e3         	ldr	r3, [r4, r3]
  3a4de4: 4619         	mov	r1, r3
  3a4de6: f1ee f963    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x1ee2c6
  3a4dea: ed9d 7a18    	vldr	s14, [sp, #96]
  3a4dee: eddf 7ab0    	vldr	s15, [pc, #704]         @ 0x3a50b0 <MapVoteLayer::init()+0x308>
  3a4df2: ee77 7a67    	vsub.f32	s15, s14, s15
  3a4df6: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3a4dfa: ed9d 7a19    	vldr	s14, [sp, #100]
  3a4dfe: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3a4e02: eec7 7a27    	vdiv.f32	s15, s14, s15
  3a4e06: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3a4e0a: ab34         	add	r3, sp, #0xd0
  3a4e0c: 4618         	mov	r0, r3
  3a4e0e: eeb0 0b46    	vmov.f64	d0, d6
  3a4e12: eeb0 1b47    	vmov.f64	d1, d7
  3a4e16: f7ff f8b9    	bl	0x3a3f8c <PlayerLobbyOnlineGP::updateReadyLabel()+0x214> @ imm = #-0xe8e
  3a4e1a: 9b03         	ldr	r3, [sp, #0xc]
  3a4e1c: f04f 32ff    	mov.w	r2, #0xffffffff
  3a4e20: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  3a4e24: 9b03         	ldr	r3, [sp, #0xc]
  3a4e26: 2200         	movs	r2, #0x0
  3a4e28: f8c3 20ec    	str.w	r2, [r3, #0xec]
  3a4e2c: 9b03         	ldr	r3, [sp, #0xc]
  3a4e2e: 2200         	movs	r2, #0x0
  3a4e30: f8c3 20f0    	str.w	r2, [r3, #0xf0]
  3a4e34: 9b03         	ldr	r3, [sp, #0xc]
  3a4e36: 2201         	movs	r2, #0x1
  3a4e38: f8c3 20f4    	str.w	r2, [r3, #0xf4]
  3a4e3c: 9b03         	ldr	r3, [sp, #0xc]
  3a4e3e: 2202         	movs	r2, #0x2
  3a4e40: f8c3 20f8    	str.w	r2, [r3, #0xf8]
  3a4e44: 9b03         	ldr	r3, [sp, #0xc]
  3a4e46: 2200         	movs	r2, #0x0
  3a4e48: f8c3 20fc    	str.w	r2, [r3, #0xfc]
  3a4e4c: 9b03         	ldr	r3, [sp, #0xc]
  3a4e4e: 2200         	movs	r2, #0x0
  3a4e50: f8c3 2100    	str.w	r2, [r3, #0x100]
  3a4e54: 9b03         	ldr	r3, [sp, #0xc]
  3a4e56: 2200         	movs	r2, #0x0
  3a4e58: f8c3 2104    	str.w	r2, [r3, #0x104]
  3a4e5c: 9b03         	ldr	r3, [sp, #0xc]
  3a4e5e: 2200         	movs	r2, #0x0
  3a4e60: f883 20e4    	strb.w	r2, [r3, #0xe4]
  3a4e64: f64c 43cd    	movw	r3, #0xcccd
  3a4e68: f6c3 730c    	movt	r3, #0x3f0c
  3a4e6c: 9307         	str	r3, [sp, #0x1c]
  3a4e6e: f64c 43cd    	movw	r3, #0xcccd
  3a4e72: f6c3 63cc    	movt	r3, #0x3ecc
  3a4e76: 9308         	str	r3, [sp, #0x20]
  3a4e78: f04f 0300    	mov.w	r3, #0x0
  3a4e7c: f2c4 13c0    	movt	r3, #0x41c0
  3a4e80: 9309         	str	r3, [sp, #0x24]
  3a4e82: f04f 4341    	mov.w	r3, #0xc1000000
  3a4e86: 930a         	str	r3, [sp, #0x28]
  3a4e88: f04f 0300    	mov.w	r3, #0x0
  3a4e8c: f2cc 230c    	movt	r3, #0xc20c
  3a4e90: 930b         	str	r3, [sp, #0x2c]
  3a4e92: 4b89         	ldr	r3, [pc, #0x224]        @ 0x3a50b8 <MapVoteLayer::init()+0x310>
  3a4e94: 447b         	add	r3, pc
  3a4e96: 4618         	mov	r0, r3
  3a4e98: f233 fa34    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x233468
  3a4e9c: 4603         	mov	r3, r0
  3a4e9e: 930c         	str	r3, [sp, #0x30]
  3a4ea0: 4b86         	ldr	r3, [pc, #0x218]        @ 0x3a50bc <MapVoteLayer::init()+0x314>
  3a4ea2: 447b         	add	r3, pc
  3a4ea4: 4618         	mov	r0, r3
  3a4ea6: f233 fa2d    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x23345a
  3a4eaa: 4603         	mov	r3, r0
  3a4eac: 930d         	str	r3, [sp, #0x34]
  3a4eae: 4b84         	ldr	r3, [pc, #0x210]        @ 0x3a50c0 <MapVoteLayer::init()+0x318>
  3a4eb0: 447b         	add	r3, pc
  3a4eb2: 4618         	mov	r0, r3
  3a4eb4: f233 fa26    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x23344c
  3a4eb8: 4603         	mov	r3, r0
  3a4eba: 930e         	str	r3, [sp, #0x38]
  3a4ebc: 4b81         	ldr	r3, [pc, #0x204]        @ 0x3a50c4 <MapVoteLayer::init()+0x31c>
  3a4ebe: 447b         	add	r3, pc
  3a4ec0: 4618         	mov	r0, r3
  3a4ec2: f233 fa1f    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x23343e
  3a4ec6: 4603         	mov	r3, r0
  3a4ec8: 930f         	str	r3, [sp, #0x3c]
  3a4eca: 4b7f         	ldr	r3, [pc, #0x1fc]        @ 0x3a50c8 <MapVoteLayer::init()+0x320>
  3a4ecc: 447b         	add	r3, pc
  3a4ece: 4618         	mov	r0, r3
  3a4ed0: f233 fa18    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x233430
  3a4ed4: 4603         	mov	r3, r0
  3a4ed6: 9310         	str	r3, [sp, #0x40]
  3a4ed8: 4b7c         	ldr	r3, [pc, #0x1f0]        @ 0x3a50cc <MapVoteLayer::init()+0x324>
  3a4eda: 447b         	add	r3, pc
  3a4edc: 4618         	mov	r0, r3
  3a4ede: f233 fa11    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x233422
  3a4ee2: 4603         	mov	r3, r0
  3a4ee4: 9311         	str	r3, [sp, #0x44]
  3a4ee6: 4b7a         	ldr	r3, [pc, #0x1e8]        @ 0x3a50d0 <MapVoteLayer::init()+0x328>
  3a4ee8: 447b         	add	r3, pc
  3a4eea: 4618         	mov	r0, r3
  3a4eec: f233 fa0a    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x233414
  3a4ef0: 4603         	mov	r3, r0
  3a4ef2: 9312         	str	r3, [sp, #0x48]
  3a4ef4: 4b77         	ldr	r3, [pc, #0x1dc]        @ 0x3a50d4 <MapVoteLayer::init()+0x32c>
  3a4ef6: 447b         	add	r3, pc
  3a4ef8: 4618         	mov	r0, r3
  3a4efa: f233 fa03    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x233406
  3a4efe: 4603         	mov	r3, r0
  3a4f00: 9313         	str	r3, [sp, #0x4c]
  3a4f02: 9a03         	ldr	r2, [sp, #0xc]
  3a4f04: 4b74         	ldr	r3, [pc, #0x1d0]        @ 0x3a50d8 <MapVoteLayer::init()+0x330>
  3a4f06: 58e3         	ldr	r3, [r4, r3]
  3a4f08: 932c         	str	r3, [sp, #0xb0]
  3a4f0a: 2300         	movs	r3, #0x0
  3a4f0c: 932d         	str	r3, [sp, #0xb4]
  3a4f0e: 9b2d         	ldr	r3, [sp, #0xb4]
  3a4f10: 9300         	str	r3, [sp]
  3a4f12: 9b2c         	ldr	r3, [sp, #0xb0]
  3a4f14: 980c         	ldr	r0, [sp, #0x30]
  3a4f16: 990d         	ldr	r1, [sp, #0x34]
  3a4f18: f213 fa08    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x213410
  3a4f1c: 4603         	mov	r3, r0
  3a4f1e: 9314         	str	r3, [sp, #0x50]
  3a4f20: 9a03         	ldr	r2, [sp, #0xc]
  3a4f22: 4b6e         	ldr	r3, [pc, #0x1b8]        @ 0x3a50dc <MapVoteLayer::init()+0x334>
  3a4f24: 58e3         	ldr	r3, [r4, r3]
  3a4f26: 932e         	str	r3, [sp, #0xb8]
  3a4f28: 2300         	movs	r3, #0x0
  3a4f2a: 932f         	str	r3, [sp, #0xbc]
  3a4f2c: 9b2f         	ldr	r3, [sp, #0xbc]
  3a4f2e: 9300         	str	r3, [sp]
  3a4f30: 9b2e         	ldr	r3, [sp, #0xb8]
  3a4f32: 980e         	ldr	r0, [sp, #0x38]
  3a4f34: 990f         	ldr	r1, [sp, #0x3c]
  3a4f36: f213 f9f9    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2133f2
  3a4f3a: 4603         	mov	r3, r0
  3a4f3c: 9315         	str	r3, [sp, #0x54]
  3a4f3e: 9a03         	ldr	r2, [sp, #0xc]
  3a4f40: 4b67         	ldr	r3, [pc, #0x19c]        @ 0x3a50e0 <MapVoteLayer::init()+0x338>
  3a4f42: 58e3         	ldr	r3, [r4, r3]
  3a4f44: 9330         	str	r3, [sp, #0xc0]
  3a4f46: 2300         	movs	r3, #0x0
  3a4f48: 9331         	str	r3, [sp, #0xc4]
  3a4f4a: 9b31         	ldr	r3, [sp, #0xc4]
  3a4f4c: 9300         	str	r3, [sp]
  3a4f4e: 9b30         	ldr	r3, [sp, #0xc0]
  3a4f50: 9810         	ldr	r0, [sp, #0x40]
  3a4f52: 9911         	ldr	r1, [sp, #0x44]
  3a4f54: f213 f9ea    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2133d4
  3a4f58: 4603         	mov	r3, r0
  3a4f5a: 9316         	str	r3, [sp, #0x58]
  3a4f5c: 9a03         	ldr	r2, [sp, #0xc]
  3a4f5e: 4b61         	ldr	r3, [pc, #0x184]        @ 0x3a50e4 <MapVoteLayer::init()+0x33c>
  3a4f60: 58e3         	ldr	r3, [r4, r3]
  3a4f62: 9332         	str	r3, [sp, #0xc8]
  3a4f64: 2300         	movs	r3, #0x0
  3a4f66: 9333         	str	r3, [sp, #0xcc]
  3a4f68: 9b33         	ldr	r3, [sp, #0xcc]
  3a4f6a: 9300         	str	r3, [sp]
  3a4f6c: 9b32         	ldr	r3, [sp, #0xc8]
  3a4f6e: 9812         	ldr	r0, [sp, #0x48]
  3a4f70: 9913         	ldr	r1, [sp, #0x4c]
  3a4f72: f213 f9db    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2133b6
  3a4f76: 4603         	mov	r3, r0
  3a4f78: 9317         	str	r3, [sp, #0x5c]
  3a4f7a: 9814         	ldr	r0, [sp, #0x50]
  3a4f7c: 2100         	movs	r1, #0x0
  3a4f7e: f210 f8dd    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2101ba
  3a4f82: 4602         	mov	r2, r0
  3a4f84: 9b03         	ldr	r3, [sp, #0xc]
  3a4f86: f8c3 213c    	str.w	r2, [r3, #0x13c]
  3a4f8a: 9b03         	ldr	r3, [sp, #0xc]
  3a4f8c: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3a4f90: 4618         	mov	r0, r3
  3a4f92: f1f2 ffa9    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1f2f52
  3a4f96: 9b03         	ldr	r3, [sp, #0xc]
  3a4f98: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3a4f9c: 681b         	ldr	r3, [r3]
  3a4f9e: 334c         	adds	r3, #0x4c
  3a4fa0: 681c         	ldr	r4, [r3]
  3a4fa2: 9b03         	ldr	r3, [sp, #0xc]
  3a4fa4: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3a4fa8: 461d         	mov	r5, r3
  3a4faa: ed9d 7b34    	vldr	d7, [sp, #208]
  3a4fae: eef7 5bc7    	vcvt.f32.f64	s11, d7
  3a4fb2: ed9d 6b36    	vldr	d6, [sp, #216]
  3a4fb6: ed9f 7b3c    	vldr	d7, [pc, #240]          @ 0x3a50a8 <MapVoteLayer::init()+0x300>
  3a4fba: ee36 7b47    	vsub.f64	d7, d6, d7
  3a4fbe: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3a4fc2: ab3c         	add	r3, sp, #0xf0
  3a4fc4: 4618         	mov	r0, r3
  3a4fc6: ee15 1a90    	vmov	r1, s11
  3a4fca: ee17 2a90    	vmov	r2, s15
  3a4fce: f1ed fe8f    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1edd1e
  3a4fd2: ab3c         	add	r3, sp, #0xf0
  3a4fd4: 4628         	mov	r0, r5
  3a4fd6: 4619         	mov	r1, r3
  3a4fd8: 47a0         	blx	r4
  3a4fda: 9b03         	ldr	r3, [sp, #0xc]
  3a4fdc: 681b         	ldr	r3, [r3]
  3a4fde: 33c8         	adds	r3, #0xc8
  3a4fe0: 681b         	ldr	r3, [r3]
  3a4fe2: 9903         	ldr	r1, [sp, #0xc]
  3a4fe4: 9a03         	ldr	r2, [sp, #0xc]
  3a4fe6: f8d2 213c    	ldr.w	r2, [r2, #0x13c]
  3a4fea: 4608         	mov	r0, r1
  3a4fec: 4611         	mov	r1, r2
  3a4fee: 4798         	blx	r3
  3a4ff0: 9815         	ldr	r0, [sp, #0x54]
  3a4ff2: 2100         	movs	r1, #0x0
  3a4ff4: f210 f8a2    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x210144
  3a4ff8: 4602         	mov	r2, r0
  3a4ffa: 9b03         	ldr	r3, [sp, #0xc]
  3a4ffc: f8c3 2120    	str.w	r2, [r3, #0x120]
  3a5000: 9b03         	ldr	r3, [sp, #0xc]
  3a5002: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3a5006: 4618         	mov	r0, r3
  3a5008: f1f2 ff6e    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1f2edc
  3a500c: 9b03         	ldr	r3, [sp, #0xc]
  3a500e: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3a5012: 681b         	ldr	r3, [r3]
  3a5014: 334c         	adds	r3, #0x4c
  3a5016: 681c         	ldr	r4, [r3]
  3a5018: 9b03         	ldr	r3, [sp, #0xc]
  3a501a: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3a501e: 461d         	mov	r5, r3
  3a5020: ed9d 7b34    	vldr	d7, [sp, #208]
  3a5024: eef7 5bc7    	vcvt.f32.f64	s11, d7
  3a5028: ed9d 6b36    	vldr	d6, [sp, #216]
  3a502c: eeb3 7b09    	vmov.f64	d7, #2.500000e+01
  3a5030: ee36 7b07    	vadd.f64	d7, d6, d7
  3a5034: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3a5038: ab3c         	add	r3, sp, #0xf0
  3a503a: 4618         	mov	r0, r3
  3a503c: ee15 1a90    	vmov	r1, s11
  3a5040: ee17 2a90    	vmov	r2, s15
  3a5044: f1ed fe54    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1edca8
  3a5048: ab3c         	add	r3, sp, #0xf0
  3a504a: 4628         	mov	r0, r5
  3a504c: 4619         	mov	r1, r3
  3a504e: 47a0         	blx	r4
  3a5050: 9b03         	ldr	r3, [sp, #0xc]
  3a5052: 681b         	ldr	r3, [r3]
  3a5054: 33c8         	adds	r3, #0xc8
  3a5056: 681b         	ldr	r3, [r3]
  3a5058: 9903         	ldr	r1, [sp, #0xc]
  3a505a: 9a03         	ldr	r2, [sp, #0xc]
  3a505c: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  3a5060: 4608         	mov	r0, r1
  3a5062: 4611         	mov	r1, r2
  3a5064: 4798         	blx	r3
  3a5066: 9816         	ldr	r0, [sp, #0x58]
  3a5068: 2100         	movs	r1, #0x0
  3a506a: f210 f867    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2100ce
  3a506e: 4602         	mov	r2, r0
  3a5070: 9b03         	ldr	r3, [sp, #0xc]
  3a5072: f8c3 2124    	str.w	r2, [r3, #0x124]
  3a5076: 9b03         	ldr	r3, [sp, #0xc]
  3a5078: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3a507c: 4618         	mov	r0, r3
  3a507e: f1f2 ff33    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1f2e66
  3a5082: 9b03         	ldr	r3, [sp, #0xc]
  3a5084: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3a5088: 681b         	ldr	r3, [r3]
  3a508a: 334c         	adds	r3, #0x4c
  3a508c: 681c         	ldr	r4, [r3]
  3a508e: 9b03         	ldr	r3, [sp, #0xc]
  3a5090: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3a5094: 461d         	mov	r5, r3
  3a5096: ed9d 7b34    	vldr	d7, [sp, #208]
  3a509a: eef7 5bc7    	vcvt.f32.f64	s11, d7
  3a509e: ed9d 6b36    	vldr	d6, [sp, #216]
  3a50a2: eeb3 7b04    	vmov.f64	d7, #2.000000e+01
  3a50a6: e01f         	b	0x3a50e8 <MapVoteLayer::init()+0x340> @ imm = #0x3e
  3a50a8: 0000         	movs	r0, r0
  3a50aa: 0000         	movs	r0, r0
  3a50ac: 8000         	strh	r0, [r0]
  3a50ae: 405b         	eors	r3, r3
  3a50b0: 0000         	movs	r0, r0
  3a50b2: 42b4         	cmp	r4, r6
  3a50b4: d724         	bvc	0x3a5100 <MapVoteLayer::init()+0x358> @ imm = #0x48
  3a50b6: ffff df28    	<unknown>
  3a50ba: 0042         	lsls	r2, r0, #0x1
  3a50bc: df1a         	svc	#0x1a
  3a50be: 0042         	lsls	r2, r0, #0x1
  3a50c0: df0c         	svc	#0xc
  3a50c2: 0042         	lsls	r2, r0, #0x1
  3a50c4: defe         	trap
  3a50c6: 0042         	lsls	r2, r0, #0x1
  3a50c8: def0         	udf	#0xf0
  3a50ca: 0042         	lsls	r2, r0, #0x1
  3a50cc: dee2         	udf	#0xe2
  3a50ce: 0042         	lsls	r2, r0, #0x1
  3a50d0: ded4         	udf	#0xd4
  3a50d2: 0042         	lsls	r2, r0, #0x1
  3a50d4: dec6         	udf	#0xc6
  3a50d6: 0042         	lsls	r2, r0, #0x1
  3a50d8: dd74         	ble	0x3a51c4 <MapVoteLayer::init()+0x41c> @ imm = #0xe8
  3a50da: ffff dd78    	<unknown>
  3a50de: ffff dd7c    	<unknown>
  3a50e2: ffff dd80    	<unknown>
  3a50e6: ffff ee36    	vcvt.f32.u32	d30, d22, #0x1
  3a50ea: 7b47         	ldrb	r7, [r0, #0xd]
  3a50ec: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3a50f0: ab3c         	add	r3, sp, #0xf0
  3a50f2: 4618         	mov	r0, r3
  3a50f4: ee15 1a90    	vmov	r1, s11
  3a50f8: ee17 2a90    	vmov	r2, s15
  3a50fc: f1ed fdf8    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1edbf0
  3a5100: ab3c         	add	r3, sp, #0xf0
  3a5102: 4628         	mov	r0, r5
  3a5104: 4619         	mov	r1, r3
  3a5106: 47a0         	blx	r4
  3a5108: 9b03         	ldr	r3, [sp, #0xc]
  3a510a: 681b         	ldr	r3, [r3]
  3a510c: 33c8         	adds	r3, #0xc8
  3a510e: 681b         	ldr	r3, [r3]
  3a5110: 9903         	ldr	r1, [sp, #0xc]
  3a5112: 9a03         	ldr	r2, [sp, #0xc]
  3a5114: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  3a5118: 4608         	mov	r0, r1
  3a511a: 4611         	mov	r1, r2
  3a511c: 4798         	blx	r3
  3a511e: 9817         	ldr	r0, [sp, #0x5c]
  3a5120: 2100         	movs	r1, #0x0
  3a5122: f210 f80b    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x210016
  3a5126: 4602         	mov	r2, r0
  3a5128: 9b03         	ldr	r3, [sp, #0xc]
  3a512a: f8c3 2128    	str.w	r2, [r3, #0x128]
  3a512e: 9b03         	ldr	r3, [sp, #0xc]
  3a5130: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3a5134: 4618         	mov	r0, r3
  3a5136: f1f2 fed7    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1f2dae
  3a513a: 9b03         	ldr	r3, [sp, #0xc]
  3a513c: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3a5140: 681b         	ldr	r3, [r3]
  3a5142: 334c         	adds	r3, #0x4c
  3a5144: 681c         	ldr	r4, [r3]
  3a5146: 9b03         	ldr	r3, [sp, #0xc]
  3a5148: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3a514c: 461d         	mov	r5, r3
  3a514e: ed9d 7b34    	vldr	d7, [sp, #208]
  3a5152: eef7 5bc7    	vcvt.f32.f64	s11, d7
  3a5156: ed9d 6b36    	vldr	d6, [sp, #216]
  3a515a: ed9f 7bb1    	vldr	d7, [pc, #708]          @ 0x3a5420 <MapVoteLayer::init()+0x678>
  3a515e: ee36 7b47    	vsub.f64	d7, d6, d7
  3a5162: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3a5166: ab3c         	add	r3, sp, #0xf0
  3a5168: 4618         	mov	r0, r3
  3a516a: ee15 1a90    	vmov	r1, s11
  3a516e: ee17 2a90    	vmov	r2, s15
  3a5172: f1ed fdbd    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1edb7a
  3a5176: ab3c         	add	r3, sp, #0xf0
  3a5178: 4628         	mov	r0, r5
  3a517a: 4619         	mov	r1, r3
  3a517c: 47a0         	blx	r4
  3a517e: 9b03         	ldr	r3, [sp, #0xc]
  3a5180: 681b         	ldr	r3, [r3]
  3a5182: 33c8         	adds	r3, #0xc8
  3a5184: 681b         	ldr	r3, [r3]
  3a5186: 9903         	ldr	r1, [sp, #0xc]
  3a5188: 9a03         	ldr	r2, [sp, #0xc]
  3a518a: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  3a518e: 4608         	mov	r0, r1
  3a5190: 4611         	mov	r1, r2
  3a5192: 4798         	blx	r3
  3a5194: 4ba6         	ldr	r3, [pc, #0x298]        @ 0x3a5430 <MapVoteLayer::init()+0x688>
  3a5196: 447b         	add	r3, pc
  3a5198: 4618         	mov	r0, r3
  3a519a: f010 f0b1    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x410162
  3a519e: 4603         	mov	r3, r0
  3a51a0: 2220         	movs	r2, #0x20
  3a51a2: 9200         	str	r2, [sp]
  3a51a4: 4aa3         	ldr	r2, [pc, #0x28c]        @ 0x3a5434 <MapVoteLayer::init()+0x68c>
  3a51a6: 447a         	add	r2, pc
  3a51a8: 4610         	mov	r0, r2
  3a51aa: 4619         	mov	r1, r3
  3a51ac: 2220         	movs	r2, #0x20
  3a51ae: 2320         	movs	r3, #0x20
  3a51b0: f200 f8e2    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x2001c4
  3a51b4: 4602         	mov	r2, r0
  3a51b6: 9b03         	ldr	r3, [sp, #0xc]
  3a51b8: f8c3 2138    	str.w	r2, [r3, #0x138]
  3a51bc: 9b03         	ldr	r3, [sp, #0xc]
  3a51be: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3a51c2: 4618         	mov	r0, r3
  3a51c4: f1f2 fe90    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1f2d20
  3a51c8: 9b03         	ldr	r3, [sp, #0xc]
  3a51ca: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3a51ce: eddd 7a09    	vldr	s15, [sp, #36]
  3a51d2: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3a51d6: ee17 2a90    	vmov	r2, s15
  3a51da: 4618         	mov	r0, r3
  3a51dc: 4611         	mov	r1, r2
  3a51de: f200 fdd1    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x200ba2
  3a51e2: 9b03         	ldr	r3, [sp, #0xc]
  3a51e4: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3a51e8: 681b         	ldr	r3, [r3]
  3a51ea: 3340         	adds	r3, #0x40
  3a51ec: 681b         	ldr	r3, [r3]
  3a51ee: 9a03         	ldr	r2, [sp, #0xc]
  3a51f0: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  3a51f4: 4610         	mov	r0, r2
  3a51f6: 9907         	ldr	r1, [sp, #0x1c]
  3a51f8: 4798         	blx	r3
  3a51fa: 9b03         	ldr	r3, [sp, #0xc]
  3a51fc: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3a5200: 681b         	ldr	r3, [r3]
  3a5202: 3350         	adds	r3, #0x50
  3a5204: 681b         	ldr	r3, [r3]
  3a5206: 9a03         	ldr	r2, [sp, #0xc]
  3a5208: f8d2 213c    	ldr.w	r2, [r2, #0x13c]
  3a520c: 4610         	mov	r0, r2
  3a520e: 4798         	blx	r3
  3a5210: 4603         	mov	r3, r0
  3a5212: 681c         	ldr	r4, [r3]
  3a5214: 9b03         	ldr	r3, [sp, #0xc]
  3a5216: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3a521a: 681b         	ldr	r3, [r3]
  3a521c: 3350         	adds	r3, #0x50
  3a521e: 681b         	ldr	r3, [r3]
  3a5220: 9a03         	ldr	r2, [sp, #0xc]
  3a5222: f8d2 213c    	ldr.w	r2, [r2, #0x13c]
  3a5226: 4610         	mov	r0, r2
  3a5228: 4798         	blx	r3
  3a522a: 4603         	mov	r3, r0
  3a522c: 685b         	ldr	r3, [r3, #0x4]
  3a522e: aa28         	add	r2, sp, #0xa0
  3a5230: 4610         	mov	r0, r2
  3a5232: 4621         	mov	r1, r4
  3a5234: 461a         	mov	r2, r3
  3a5236: f1ed fd5b    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1edab6
  3a523a: eddd 7a0a    	vldr	s15, [sp, #40]
  3a523e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3a5242: ab38         	add	r3, sp, #0xe0
  3a5244: 4618         	mov	r0, r3
  3a5246: ed9f 0b78    	vldr	d0, [pc, #480]          @ 0x3a5428 <MapVoteLayer::init()+0x680>
  3a524a: eeb0 1b47    	vmov.f64	d1, d7
  3a524e: f7fe fe9d    	bl	0x3a3f8c <PlayerLobbyOnlineGP::updateReadyLabel()+0x214> @ imm = #-0x12c6
  3a5252: ed9d 8b38    	vldr	d8, [sp, #224]
  3a5256: 9b03         	ldr	r3, [sp, #0xc]
  3a5258: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3a525c: 681b         	ldr	r3, [r3]
  3a525e: f503 73fe    	add.w	r3, r3, #0x1fc
  3a5262: 681b         	ldr	r3, [r3]
  3a5264: 9a03         	ldr	r2, [sp, #0xc]
  3a5266: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  3a526a: 4610         	mov	r0, r2
  3a526c: 4798         	blx	r3
  3a526e: 4604         	mov	r4, r0
  3a5270: ab24         	add	r3, sp, #0x90
  3a5272: 4618         	mov	r0, r3
  3a5274: f3e5 f8be    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3e517c
  3a5278: aa26         	add	r2, sp, #0x98
  3a527a: ab24         	add	r3, sp, #0x90
  3a527c: 4610         	mov	r0, r2
  3a527e: 4621         	mov	r1, r4
  3a5280: 461a         	mov	r2, r3
  3a5282: f011 f3ed    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4117da
  3a5286: ab26         	add	r3, sp, #0x98
  3a5288: 4618         	mov	r0, r3
  3a528a: f00f f6e7    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x40fdce
  3a528e: 4603         	mov	r3, r0
  3a5290: ee07 3a90    	vmov	s15, r3
  3a5294: eeb8 7a67    	vcvt.f32.u32	s14, s15
  3a5298: eddd 7a09    	vldr	s15, [sp, #36]
  3a529c: ee27 7a27    	vmul.f32	s14, s14, s15
  3a52a0: eddd 7a07    	vldr	s15, [sp, #28]
  3a52a4: ee27 7a27    	vmul.f32	s14, s14, s15
  3a52a8: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3a52ac: eec7 7a27    	vdiv.f32	s15, s14, s15
  3a52b0: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3a52b4: ee38 7b47    	vsub.f64	d7, d8, d7
  3a52b8: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3a52bc: eddd 7a0a    	vldr	s15, [sp, #40]
  3a52c0: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3a52c4: ab3c         	add	r3, sp, #0xf0
  3a52c6: 4618         	mov	r0, r3
  3a52c8: ed9f 0b57    	vldr	d0, [pc, #348]          @ 0x3a5428 <MapVoteLayer::init()+0x680>
  3a52cc: eeb0 1b47    	vmov.f64	d1, d7
  3a52d0: f7fe fe5c    	bl	0x3a3f8c <PlayerLobbyOnlineGP::updateReadyLabel()+0x214> @ imm = #-0x1348
  3a52d4: ed9d 7b3e    	vldr	d7, [sp, #248]
  3a52d8: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3a52dc: ab2a         	add	r3, sp, #0xa8
  3a52de: 4618         	mov	r0, r3
  3a52e0: ee18 1a10    	vmov	r1, s16
  3a52e4: ee17 2a90    	vmov	r2, s15
  3a52e8: f1ed fd02    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1eda04
  3a52ec: a91a         	add	r1, sp, #0x68
  3a52ee: aa28         	add	r2, sp, #0xa0
  3a52f0: ab2a         	add	r3, sp, #0xa8
  3a52f2: 4608         	mov	r0, r1
  3a52f4: 4611         	mov	r1, r2
  3a52f6: 461a         	mov	r2, r3
  3a52f8: f7fe fe38    	bl	0x3a3f6c <PlayerLobbyOnlineGP::updateReadyLabel()+0x1f4> @ imm = #-0x1390
  3a52fc: ab26         	add	r3, sp, #0x98
  3a52fe: 4618         	mov	r0, r3
  3a5300: f010 f308    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x410610
  3a5304: ab24         	add	r3, sp, #0x90
  3a5306: 4618         	mov	r0, r3
  3a5308: f3e5 f878    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e50f0
  3a530c: 9b03         	ldr	r3, [sp, #0xc]
  3a530e: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3a5312: 681b         	ldr	r3, [r3]
  3a5314: 334c         	adds	r3, #0x4c
  3a5316: 681b         	ldr	r3, [r3]
  3a5318: 9a03         	ldr	r2, [sp, #0xc]
  3a531a: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  3a531e: 4611         	mov	r1, r2
  3a5320: aa1a         	add	r2, sp, #0x68
  3a5322: 4608         	mov	r0, r1
  3a5324: 4611         	mov	r1, r2
  3a5326: 4798         	blx	r3
  3a5328: 9b03         	ldr	r3, [sp, #0xc]
  3a532a: 681b         	ldr	r3, [r3]
  3a532c: 33c8         	adds	r3, #0xc8
  3a532e: 681b         	ldr	r3, [r3]
  3a5330: 9903         	ldr	r1, [sp, #0xc]
  3a5332: 9a03         	ldr	r2, [sp, #0xc]
  3a5334: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  3a5338: 4608         	mov	r0, r1
  3a533a: 4611         	mov	r1, r2
  3a533c: 4798         	blx	r3
  3a533e: 4b3e         	ldr	r3, [pc, #0xf8]         @ 0x3a5438 <MapVoteLayer::init()+0x690>
  3a5340: 447b         	add	r3, pc
  3a5342: 4618         	mov	r0, r3
  3a5344: f00f f7dc    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x40ffb8
  3a5348: 4603         	mov	r3, r0
  3a534a: 2220         	movs	r2, #0x20
  3a534c: 9200         	str	r2, [sp]
  3a534e: 4a3b         	ldr	r2, [pc, #0xec]         @ 0x3a543c <MapVoteLayer::init()+0x694>
  3a5350: 447a         	add	r2, pc
  3a5352: 4610         	mov	r0, r2
  3a5354: 4619         	mov	r1, r3
  3a5356: 2220         	movs	r2, #0x20
  3a5358: 2320         	movs	r3, #0x20
  3a535a: f200 f80d    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x20001a
  3a535e: 4602         	mov	r2, r0
  3a5360: 9b03         	ldr	r3, [sp, #0xc]
  3a5362: f8c3 2114    	str.w	r2, [r3, #0x114]
  3a5366: 9b03         	ldr	r3, [sp, #0xc]
  3a5368: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3a536c: 4618         	mov	r0, r3
  3a536e: f1f2 fdbb    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1f2b76
  3a5372: 9b03         	ldr	r3, [sp, #0xc]
  3a5374: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3a5378: eddd 7a09    	vldr	s15, [sp, #36]
  3a537c: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3a5380: ee17 2a90    	vmov	r2, s15
  3a5384: 4618         	mov	r0, r3
  3a5386: 4611         	mov	r1, r2
  3a5388: f200 fcfc    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x2009f8
  3a538c: 9b03         	ldr	r3, [sp, #0xc]
  3a538e: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3a5392: 681b         	ldr	r3, [r3]
  3a5394: 3340         	adds	r3, #0x40
  3a5396: 681b         	ldr	r3, [r3]
  3a5398: 9a03         	ldr	r2, [sp, #0xc]
  3a539a: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  3a539e: 4610         	mov	r0, r2
  3a53a0: 9908         	ldr	r1, [sp, #0x20]
  3a53a2: 4798         	blx	r3
  3a53a4: 9b03         	ldr	r3, [sp, #0xc]
  3a53a6: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3a53aa: 681b         	ldr	r3, [r3]
  3a53ac: 3350         	adds	r3, #0x50
  3a53ae: 681b         	ldr	r3, [r3]
  3a53b0: 9a03         	ldr	r2, [sp, #0xc]
  3a53b2: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  3a53b6: 4610         	mov	r0, r2
  3a53b8: 4798         	blx	r3
  3a53ba: 4603         	mov	r3, r0
  3a53bc: 681c         	ldr	r4, [r3]
  3a53be: 9b03         	ldr	r3, [sp, #0xc]
  3a53c0: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3a53c4: 681b         	ldr	r3, [r3]
  3a53c6: 3350         	adds	r3, #0x50
  3a53c8: 681b         	ldr	r3, [r3]
  3a53ca: 9a03         	ldr	r2, [sp, #0xc]
  3a53cc: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  3a53d0: 4610         	mov	r0, r2
  3a53d2: 4798         	blx	r3
  3a53d4: 4603         	mov	r3, r0
  3a53d6: 685b         	ldr	r3, [r3, #0x4]
  3a53d8: aa28         	add	r2, sp, #0xa0
  3a53da: 4610         	mov	r0, r2
  3a53dc: 4621         	mov	r1, r4
  3a53de: 461a         	mov	r2, r3
  3a53e0: f1ed fc86    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1ed90c
  3a53e4: eddd 7a0b    	vldr	s15, [sp, #44]
  3a53e8: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3a53ec: ed9d 7a0a    	vldr	s14, [sp, #40]
  3a53f0: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  3a53f4: ee77 7a27    	vadd.f32	s15, s14, s15
  3a53f8: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3a53fc: ab38         	add	r3, sp, #0xe0
  3a53fe: 4618         	mov	r0, r3
  3a5400: eeb0 0b46    	vmov.f64	d0, d6
  3a5404: eeb0 1b47    	vmov.f64	d1, d7
  3a5408: f7fe fdc0    	bl	0x3a3f8c <PlayerLobbyOnlineGP::updateReadyLabel()+0x214> @ imm = #-0x1480
  3a540c: ed9d 8b38    	vldr	d8, [sp, #224]
  3a5410: 9b03         	ldr	r3, [sp, #0xc]
  3a5412: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3a5416: 681b         	ldr	r3, [r3]
  3a5418: f503 73fe    	add.w	r3, r3, #0x1fc
  3a541c: 681b         	ldr	r3, [r3]
  3a541e: e00f         	b	0x3a5440 <MapVoteLayer::init()+0x698> @ imm = #0x1e
  3a5420: 0000         	movs	r0, r0
  3a5422: 0000         	movs	r0, r0
  3a5424: 4000         	ands	r0, r0
  3a5426: 4050         	eors	r0, r2
  3a5430: bffa         	itet	al                      @ unpredictable IT predicate sequence
  3a5432: 0059         	lsl	r1, r3, #0x1
  3a5434: dc22         	b<und>	0x3a547c <MapVoteLayer::init()+0x6d4> @ imm = #0x44
  3a5436: 0042         	lsl	r2, r0, #0x1
  3a5438: be50         	bkpt	#0x50
  3a543a: 0059         	lsls	r1, r3, #0x1
  3a543c: da80         	bge	0x3a5340 <MapVoteLayer::init()+0x598> @ imm = #-0x100
  3a543e: 0042         	lsls	r2, r0, #0x1
  3a5440: 9a03         	ldr	r2, [sp, #0xc]
  3a5442: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  3a5446: 4610         	mov	r0, r2
  3a5448: 4798         	blx	r3
  3a544a: 4604         	mov	r4, r0
  3a544c: ab24         	add	r3, sp, #0x90
  3a544e: 4618         	mov	r0, r3
  3a5450: f3e4 ffd0    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3e4fa0
  3a5454: aa26         	add	r2, sp, #0x98
  3a5456: ab24         	add	r3, sp, #0x90
  3a5458: 4610         	mov	r0, r2
  3a545a: 4621         	mov	r1, r4
  3a545c: 461a         	mov	r2, r3
  3a545e: f011 f2ff    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4115fe
  3a5462: ab26         	add	r3, sp, #0x98
  3a5464: 4618         	mov	r0, r3
  3a5466: f00f f5f9    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x40fbf2
  3a546a: 4603         	mov	r3, r0
  3a546c: ee07 3a90    	vmov	s15, r3
  3a5470: eeb8 7a67    	vcvt.f32.u32	s14, s15
  3a5474: eddd 7a09    	vldr	s15, [sp, #36]
  3a5478: ee27 7a27    	vmul.f32	s14, s14, s15
  3a547c: eddd 7a08    	vldr	s15, [sp, #32]
  3a5480: ee27 7a27    	vmul.f32	s14, s14, s15
  3a5484: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3a5488: eec7 7a27    	vdiv.f32	s15, s14, s15
  3a548c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3a5490: ee38 7b47    	vsub.f64	d7, d8, d7
  3a5494: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3a5498: eddd 7a0b    	vldr	s15, [sp, #44]
  3a549c: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3a54a0: ed9d 7a0a    	vldr	s14, [sp, #40]
  3a54a4: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  3a54a8: ee77 7a27    	vadd.f32	s15, s14, s15
  3a54ac: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3a54b0: ab3c         	add	r3, sp, #0xf0
  3a54b2: 4618         	mov	r0, r3
  3a54b4: eeb0 0b46    	vmov.f64	d0, d6
  3a54b8: eeb0 1b47    	vmov.f64	d1, d7
  3a54bc: f7fe fd66    	bl	0x3a3f8c <PlayerLobbyOnlineGP::updateReadyLabel()+0x214> @ imm = #-0x1534
  3a54c0: ed9d 7b3e    	vldr	d7, [sp, #248]
  3a54c4: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3a54c8: ab2a         	add	r3, sp, #0xa8
  3a54ca: 4618         	mov	r0, r3
  3a54cc: ee18 1a10    	vmov	r1, s16
  3a54d0: ee17 2a90    	vmov	r2, s15
  3a54d4: f1ed fc0c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1ed818
  3a54d8: a91c         	add	r1, sp, #0x70
  3a54da: aa28         	add	r2, sp, #0xa0
  3a54dc: ab2a         	add	r3, sp, #0xa8
  3a54de: 4608         	mov	r0, r1
  3a54e0: 4611         	mov	r1, r2
  3a54e2: 461a         	mov	r2, r3
  3a54e4: f7fe fd42    	bl	0x3a3f6c <PlayerLobbyOnlineGP::updateReadyLabel()+0x1f4> @ imm = #-0x157c
  3a54e8: ab26         	add	r3, sp, #0x98
  3a54ea: 4618         	mov	r0, r3
  3a54ec: f010 f212    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x410424
  3a54f0: ab24         	add	r3, sp, #0x90
  3a54f2: 4618         	mov	r0, r3
  3a54f4: f3e4 ff82    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e4f04
  3a54f8: 9b03         	ldr	r3, [sp, #0xc]
  3a54fa: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3a54fe: 681b         	ldr	r3, [r3]
  3a5500: 334c         	adds	r3, #0x4c
  3a5502: 681b         	ldr	r3, [r3]
  3a5504: 9a03         	ldr	r2, [sp, #0xc]
  3a5506: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  3a550a: 4611         	mov	r1, r2
  3a550c: aa1c         	add	r2, sp, #0x70
  3a550e: 4608         	mov	r0, r1
  3a5510: 4611         	mov	r1, r2
  3a5512: 4798         	blx	r3
  3a5514: 9b03         	ldr	r3, [sp, #0xc]
  3a5516: 681b         	ldr	r3, [r3]
  3a5518: 33c8         	adds	r3, #0xc8
  3a551a: 681b         	ldr	r3, [r3]
  3a551c: 9903         	ldr	r1, [sp, #0xc]
  3a551e: 9a03         	ldr	r2, [sp, #0xc]
  3a5520: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  3a5524: 4608         	mov	r0, r1
  3a5526: 4611         	mov	r1, r2
  3a5528: 4798         	blx	r3
  3a552a: f8df 3b4c    	ldr.w	r3, [pc, #0xb4c]        @ 0x3a6078 <MapVoteLayer::init()+0x12d0>
  3a552e: 447b         	add	r3, pc
  3a5530: 4618         	mov	r0, r3
  3a5532: f00f f6e5    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x40fdca
  3a5536: 4603         	mov	r3, r0
  3a5538: 2220         	movs	r2, #0x20
  3a553a: 9200         	str	r2, [sp]
  3a553c: f8df 2b3c    	ldr.w	r2, [pc, #0xb3c]        @ 0x3a607c <MapVoteLayer::init()+0x12d4>
  3a5540: 447a         	add	r2, pc
  3a5542: 4610         	mov	r0, r2
  3a5544: 4619         	mov	r1, r3
  3a5546: 2220         	movs	r2, #0x20
  3a5548: 2320         	movs	r3, #0x20
  3a554a: f1ff ff15    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1ffe2a
  3a554e: 4602         	mov	r2, r0
  3a5550: 9b03         	ldr	r3, [sp, #0xc]
  3a5552: f8c3 2118    	str.w	r2, [r3, #0x118]
  3a5556: 9b03         	ldr	r3, [sp, #0xc]
  3a5558: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3a555c: 4618         	mov	r0, r3
  3a555e: f1f2 fcc3    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1f2986
  3a5562: 9b03         	ldr	r3, [sp, #0xc]
  3a5564: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3a5568: eddd 7a09    	vldr	s15, [sp, #36]
  3a556c: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3a5570: ee17 2a90    	vmov	r2, s15
  3a5574: 4618         	mov	r0, r3
  3a5576: 4611         	mov	r1, r2
  3a5578: f200 fc04    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x200808
  3a557c: 9b03         	ldr	r3, [sp, #0xc]
  3a557e: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3a5582: 681b         	ldr	r3, [r3]
  3a5584: 3340         	adds	r3, #0x40
  3a5586: 681b         	ldr	r3, [r3]
  3a5588: 9a03         	ldr	r2, [sp, #0xc]
  3a558a: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3a558e: 4610         	mov	r0, r2
  3a5590: 9908         	ldr	r1, [sp, #0x20]
  3a5592: 4798         	blx	r3
  3a5594: 9b03         	ldr	r3, [sp, #0xc]
  3a5596: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3a559a: 681b         	ldr	r3, [r3]
  3a559c: 3350         	adds	r3, #0x50
  3a559e: 681b         	ldr	r3, [r3]
  3a55a0: 9a03         	ldr	r2, [sp, #0xc]
  3a55a2: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  3a55a6: 4610         	mov	r0, r2
  3a55a8: 4798         	blx	r3
  3a55aa: 4603         	mov	r3, r0
  3a55ac: 681c         	ldr	r4, [r3]
  3a55ae: 9b03         	ldr	r3, [sp, #0xc]
  3a55b0: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3a55b4: 681b         	ldr	r3, [r3]
  3a55b6: 3350         	adds	r3, #0x50
  3a55b8: 681b         	ldr	r3, [r3]
  3a55ba: 9a03         	ldr	r2, [sp, #0xc]
  3a55bc: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  3a55c0: 4610         	mov	r0, r2
  3a55c2: 4798         	blx	r3
  3a55c4: 4603         	mov	r3, r0
  3a55c6: 685b         	ldr	r3, [r3, #0x4]
  3a55c8: aa28         	add	r2, sp, #0xa0
  3a55ca: 4610         	mov	r0, r2
  3a55cc: 4621         	mov	r1, r4
  3a55ce: 461a         	mov	r2, r3
  3a55d0: f1ed fb8e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1ed71c
  3a55d4: eddd 7a0b    	vldr	s15, [sp, #44]
  3a55d8: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3a55dc: ed9d 7a0a    	vldr	s14, [sp, #40]
  3a55e0: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  3a55e4: ee77 7a27    	vadd.f32	s15, s14, s15
  3a55e8: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3a55ec: ab38         	add	r3, sp, #0xe0
  3a55ee: 4618         	mov	r0, r3
  3a55f0: eeb0 0b46    	vmov.f64	d0, d6
  3a55f4: eeb0 1b47    	vmov.f64	d1, d7
  3a55f8: f7fe fcc8    	bl	0x3a3f8c <PlayerLobbyOnlineGP::updateReadyLabel()+0x214> @ imm = #-0x1670
  3a55fc: ed9d 8b38    	vldr	d8, [sp, #224]
  3a5600: 9b03         	ldr	r3, [sp, #0xc]
  3a5602: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3a5606: 681b         	ldr	r3, [r3]
  3a5608: f503 73fe    	add.w	r3, r3, #0x1fc
  3a560c: 681b         	ldr	r3, [r3]
  3a560e: 9a03         	ldr	r2, [sp, #0xc]
  3a5610: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3a5614: 4610         	mov	r0, r2
  3a5616: 4798         	blx	r3
  3a5618: 4604         	mov	r4, r0
  3a561a: ab24         	add	r3, sp, #0x90
  3a561c: 4618         	mov	r0, r3
  3a561e: f3e4 fee9    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3e4dd2
  3a5622: aa26         	add	r2, sp, #0x98
  3a5624: ab24         	add	r3, sp, #0x90
  3a5626: 4610         	mov	r0, r2
  3a5628: 4621         	mov	r1, r4
  3a562a: 461a         	mov	r2, r3
  3a562c: f011 f218    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x411430
  3a5630: ab26         	add	r3, sp, #0x98
  3a5632: 4618         	mov	r0, r3
  3a5634: f00f f512    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x40fa24
  3a5638: 4603         	mov	r3, r0
  3a563a: ee07 3a90    	vmov	s15, r3
  3a563e: eeb8 7a67    	vcvt.f32.u32	s14, s15
  3a5642: eddd 7a09    	vldr	s15, [sp, #36]
  3a5646: ee27 7a27    	vmul.f32	s14, s14, s15
  3a564a: eddd 7a08    	vldr	s15, [sp, #32]
  3a564e: ee27 7a27    	vmul.f32	s14, s14, s15
  3a5652: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3a5656: eec7 7a27    	vdiv.f32	s15, s14, s15
  3a565a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3a565e: ee38 7b47    	vsub.f64	d7, d8, d7
  3a5662: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3a5666: eddd 7a0b    	vldr	s15, [sp, #44]
  3a566a: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3a566e: ed9d 7a0a    	vldr	s14, [sp, #40]
  3a5672: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  3a5676: ee77 7a27    	vadd.f32	s15, s14, s15
  3a567a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3a567e: ab3c         	add	r3, sp, #0xf0
  3a5680: 4618         	mov	r0, r3
  3a5682: eeb0 0b46    	vmov.f64	d0, d6
  3a5686: eeb0 1b47    	vmov.f64	d1, d7
  3a568a: f7fe fc7f    	bl	0x3a3f8c <PlayerLobbyOnlineGP::updateReadyLabel()+0x214> @ imm = #-0x1702
  3a568e: ed9d 7b3e    	vldr	d7, [sp, #248]
  3a5692: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3a5696: ab2a         	add	r3, sp, #0xa8
  3a5698: 4618         	mov	r0, r3
  3a569a: ee18 1a10    	vmov	r1, s16
  3a569e: ee17 2a90    	vmov	r2, s15
  3a56a2: f1ed fb25    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1ed64a
  3a56a6: a91e         	add	r1, sp, #0x78
  3a56a8: aa28         	add	r2, sp, #0xa0
  3a56aa: ab2a         	add	r3, sp, #0xa8
  3a56ac: 4608         	mov	r0, r1
  3a56ae: 4611         	mov	r1, r2
  3a56b0: 461a         	mov	r2, r3
  3a56b2: f7fe fc5b    	bl	0x3a3f6c <PlayerLobbyOnlineGP::updateReadyLabel()+0x1f4> @ imm = #-0x174a
  3a56b6: ab26         	add	r3, sp, #0x98
  3a56b8: 4618         	mov	r0, r3
  3a56ba: f010 f12b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x410256
  3a56be: ab24         	add	r3, sp, #0x90
  3a56c0: 4618         	mov	r0, r3
  3a56c2: f3e4 fe9b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e4d36
  3a56c6: 9b03         	ldr	r3, [sp, #0xc]
  3a56c8: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3a56cc: 681b         	ldr	r3, [r3]
  3a56ce: 334c         	adds	r3, #0x4c
  3a56d0: 681b         	ldr	r3, [r3]
  3a56d2: 9a03         	ldr	r2, [sp, #0xc]
  3a56d4: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3a56d8: 4611         	mov	r1, r2
  3a56da: aa1e         	add	r2, sp, #0x78
  3a56dc: 4608         	mov	r0, r1
  3a56de: 4611         	mov	r1, r2
  3a56e0: 4798         	blx	r3
  3a56e2: 9b03         	ldr	r3, [sp, #0xc]
  3a56e4: 681b         	ldr	r3, [r3]
  3a56e6: 33c8         	adds	r3, #0xc8
  3a56e8: 681b         	ldr	r3, [r3]
  3a56ea: 9903         	ldr	r1, [sp, #0xc]
  3a56ec: 9a03         	ldr	r2, [sp, #0xc]
  3a56ee: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3a56f2: 4608         	mov	r0, r1
  3a56f4: 4611         	mov	r1, r2
  3a56f6: 4798         	blx	r3
  3a56f8: f8df 3984    	ldr.w	r3, [pc, #0x984]        @ 0x3a6080 <MapVoteLayer::init()+0x12d8>
  3a56fc: 447b         	add	r3, pc
  3a56fe: 4618         	mov	r0, r3
  3a5700: f00f f5fe    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x40fbfc
  3a5704: 4603         	mov	r3, r0
  3a5706: 2220         	movs	r2, #0x20
  3a5708: 9200         	str	r2, [sp]
  3a570a: f8df 2978    	ldr.w	r2, [pc, #0x978]        @ 0x3a6084 <MapVoteLayer::init()+0x12dc>
  3a570e: 447a         	add	r2, pc
  3a5710: 4610         	mov	r0, r2
  3a5712: 4619         	mov	r1, r3
  3a5714: 2220         	movs	r2, #0x20
  3a5716: 2320         	movs	r3, #0x20
  3a5718: f1ff fe2e    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1ffc5c
  3a571c: 4602         	mov	r2, r0
  3a571e: 9b03         	ldr	r3, [sp, #0xc]
  3a5720: f8c3 211c    	str.w	r2, [r3, #0x11c]
  3a5724: 9b03         	ldr	r3, [sp, #0xc]
  3a5726: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3a572a: 4618         	mov	r0, r3
  3a572c: f1f2 fbdc    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1f27b8
  3a5730: 9b03         	ldr	r3, [sp, #0xc]
  3a5732: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3a5736: eddd 7a09    	vldr	s15, [sp, #36]
  3a573a: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3a573e: ee17 2a90    	vmov	r2, s15
  3a5742: 4618         	mov	r0, r3
  3a5744: 4611         	mov	r1, r2
  3a5746: f200 fb1d    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x20063a
  3a574a: 9b03         	ldr	r3, [sp, #0xc]
  3a574c: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3a5750: 681b         	ldr	r3, [r3]
  3a5752: 3340         	adds	r3, #0x40
  3a5754: 681b         	ldr	r3, [r3]
  3a5756: 9a03         	ldr	r2, [sp, #0xc]
  3a5758: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  3a575c: 4610         	mov	r0, r2
  3a575e: 9908         	ldr	r1, [sp, #0x20]
  3a5760: 4798         	blx	r3
  3a5762: 9b03         	ldr	r3, [sp, #0xc]
  3a5764: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3a5768: 681b         	ldr	r3, [r3]
  3a576a: 3350         	adds	r3, #0x50
  3a576c: 681b         	ldr	r3, [r3]
  3a576e: 9a03         	ldr	r2, [sp, #0xc]
  3a5770: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  3a5774: 4610         	mov	r0, r2
  3a5776: 4798         	blx	r3
  3a5778: 4603         	mov	r3, r0
  3a577a: 681c         	ldr	r4, [r3]
  3a577c: 9b03         	ldr	r3, [sp, #0xc]
  3a577e: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3a5782: 681b         	ldr	r3, [r3]
  3a5784: 3350         	adds	r3, #0x50
  3a5786: 681b         	ldr	r3, [r3]
  3a5788: 9a03         	ldr	r2, [sp, #0xc]
  3a578a: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  3a578e: 4610         	mov	r0, r2
  3a5790: 4798         	blx	r3
  3a5792: 4603         	mov	r3, r0
  3a5794: 685b         	ldr	r3, [r3, #0x4]
  3a5796: aa28         	add	r2, sp, #0xa0
  3a5798: 4610         	mov	r0, r2
  3a579a: 4621         	mov	r1, r4
  3a579c: 461a         	mov	r2, r3
  3a579e: f1ed faa7    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1ed54e
  3a57a2: eddd 7a0b    	vldr	s15, [sp, #44]
  3a57a6: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3a57aa: ed9d 7a0a    	vldr	s14, [sp, #40]
  3a57ae: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  3a57b2: ee77 7a27    	vadd.f32	s15, s14, s15
  3a57b6: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3a57ba: ab38         	add	r3, sp, #0xe0
  3a57bc: 4618         	mov	r0, r3
  3a57be: eeb0 0b46    	vmov.f64	d0, d6
  3a57c2: eeb0 1b47    	vmov.f64	d1, d7
  3a57c6: f7fe fbe1    	bl	0x3a3f8c <PlayerLobbyOnlineGP::updateReadyLabel()+0x214> @ imm = #-0x183e
  3a57ca: ed9d 8b38    	vldr	d8, [sp, #224]
  3a57ce: 9b03         	ldr	r3, [sp, #0xc]
  3a57d0: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3a57d4: 681b         	ldr	r3, [r3]
  3a57d6: f503 73fe    	add.w	r3, r3, #0x1fc
  3a57da: 681b         	ldr	r3, [r3]
  3a57dc: 9a03         	ldr	r2, [sp, #0xc]
  3a57de: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  3a57e2: 4610         	mov	r0, r2
  3a57e4: 4798         	blx	r3
  3a57e6: 4604         	mov	r4, r0
  3a57e8: ab24         	add	r3, sp, #0x90
  3a57ea: 4618         	mov	r0, r3
  3a57ec: f3e4 fe02    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3e4c04
  3a57f0: aa26         	add	r2, sp, #0x98
  3a57f2: ab24         	add	r3, sp, #0x90
  3a57f4: 4610         	mov	r0, r2
  3a57f6: 4621         	mov	r1, r4
  3a57f8: 461a         	mov	r2, r3
  3a57fa: f011 f131    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x411262
  3a57fe: ab26         	add	r3, sp, #0x98
  3a5800: 4618         	mov	r0, r3
  3a5802: f00f f42b    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x40f856
  3a5806: 4603         	mov	r3, r0
  3a5808: ee07 3a90    	vmov	s15, r3
  3a580c: eeb8 7a67    	vcvt.f32.u32	s14, s15
  3a5810: eddd 7a09    	vldr	s15, [sp, #36]
  3a5814: ee27 7a27    	vmul.f32	s14, s14, s15
  3a5818: eddd 7a08    	vldr	s15, [sp, #32]
  3a581c: ee27 7a27    	vmul.f32	s14, s14, s15
  3a5820: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3a5824: eec7 7a27    	vdiv.f32	s15, s14, s15
  3a5828: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3a582c: ee38 7b47    	vsub.f64	d7, d8, d7
  3a5830: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3a5834: eddd 7a0b    	vldr	s15, [sp, #44]
  3a5838: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3a583c: ed9d 7a0a    	vldr	s14, [sp, #40]
  3a5840: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  3a5844: ee77 7a27    	vadd.f32	s15, s14, s15
  3a5848: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3a584c: ab3c         	add	r3, sp, #0xf0
  3a584e: 4618         	mov	r0, r3
  3a5850: eeb0 0b46    	vmov.f64	d0, d6
  3a5854: eeb0 1b47    	vmov.f64	d1, d7
  3a5858: f7fe fb98    	bl	0x3a3f8c <PlayerLobbyOnlineGP::updateReadyLabel()+0x214> @ imm = #-0x18d0
  3a585c: ed9d 7b3e    	vldr	d7, [sp, #248]
  3a5860: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3a5864: ab2a         	add	r3, sp, #0xa8
  3a5866: 4618         	mov	r0, r3
  3a5868: ee18 1a10    	vmov	r1, s16
  3a586c: ee17 2a90    	vmov	r2, s15
  3a5870: f1ed fa3e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1ed47c
  3a5874: a920         	add	r1, sp, #0x80
  3a5876: aa28         	add	r2, sp, #0xa0
  3a5878: ab2a         	add	r3, sp, #0xa8
  3a587a: 4608         	mov	r0, r1
  3a587c: 4611         	mov	r1, r2
  3a587e: 461a         	mov	r2, r3
  3a5880: f7fe fb74    	bl	0x3a3f6c <PlayerLobbyOnlineGP::updateReadyLabel()+0x1f4> @ imm = #-0x1918
  3a5884: ab26         	add	r3, sp, #0x98
  3a5886: 4618         	mov	r0, r3
  3a5888: f010 f044    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x410088
  3a588c: ab24         	add	r3, sp, #0x90
  3a588e: 4618         	mov	r0, r3
  3a5890: f3e4 fdb4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e4b68
  3a5894: 9b03         	ldr	r3, [sp, #0xc]
  3a5896: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3a589a: 681b         	ldr	r3, [r3]
  3a589c: 334c         	adds	r3, #0x4c
  3a589e: 681b         	ldr	r3, [r3]
  3a58a0: 9a03         	ldr	r2, [sp, #0xc]
  3a58a2: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  3a58a6: 4611         	mov	r1, r2
  3a58a8: aa20         	add	r2, sp, #0x80
  3a58aa: 4608         	mov	r0, r1
  3a58ac: 4611         	mov	r1, r2
  3a58ae: 4798         	blx	r3
  3a58b0: 9b03         	ldr	r3, [sp, #0xc]
  3a58b2: 681b         	ldr	r3, [r3]
  3a58b4: 33c8         	adds	r3, #0xc8
  3a58b6: 681b         	ldr	r3, [r3]
  3a58b8: 9903         	ldr	r1, [sp, #0xc]
  3a58ba: 9a03         	ldr	r2, [sp, #0xc]
  3a58bc: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  3a58c0: 4608         	mov	r0, r1
  3a58c2: 4611         	mov	r1, r2
  3a58c4: 4798         	blx	r3
  3a58c6: f8df 37c0    	ldr.w	r3, [pc, #0x7c0]        @ 0x3a6088 <MapVoteLayer::init()+0x12e0>
  3a58ca: 447b         	add	r3, pc
  3a58cc: 4618         	mov	r0, r3
  3a58ce: f00f f517    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x40fa2e
  3a58d2: 4603         	mov	r3, r0
  3a58d4: 2220         	movs	r2, #0x20
  3a58d6: 9200         	str	r2, [sp]
  3a58d8: f8df 27b0    	ldr.w	r2, [pc, #0x7b0]        @ 0x3a608c <MapVoteLayer::init()+0x12e4>
  3a58dc: 447a         	add	r2, pc
  3a58de: 4610         	mov	r0, r2
  3a58e0: 4619         	mov	r1, r3
  3a58e2: 2220         	movs	r2, #0x20
  3a58e4: 2320         	movs	r3, #0x20
  3a58e6: f1ff fd47    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1ffa8e
  3a58ea: 4602         	mov	r2, r0
  3a58ec: 9b03         	ldr	r3, [sp, #0xc]
  3a58ee: f8c3 2108    	str.w	r2, [r3, #0x108]
  3a58f2: 9b03         	ldr	r3, [sp, #0xc]
  3a58f4: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3a58f8: 4618         	mov	r0, r3
  3a58fa: f1f2 faf5    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1f25ea
  3a58fe: 9b03         	ldr	r3, [sp, #0xc]
  3a5900: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3a5904: eddd 7a09    	vldr	s15, [sp, #36]
  3a5908: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3a590c: ee17 2a90    	vmov	r2, s15
  3a5910: 4618         	mov	r0, r3
  3a5912: 4611         	mov	r1, r2
  3a5914: f200 fa36    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x20046c
  3a5918: 9b03         	ldr	r3, [sp, #0xc]
  3a591a: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3a591e: 681b         	ldr	r3, [r3]
  3a5920: 3340         	adds	r3, #0x40
  3a5922: 681b         	ldr	r3, [r3]
  3a5924: 9a03         	ldr	r2, [sp, #0xc]
  3a5926: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3a592a: 4610         	mov	r0, r2
  3a592c: 9908         	ldr	r1, [sp, #0x20]
  3a592e: 4798         	blx	r3
  3a5930: 9b03         	ldr	r3, [sp, #0xc]
  3a5932: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3a5936: 681b         	ldr	r3, [r3]
  3a5938: 3350         	adds	r3, #0x50
  3a593a: 681b         	ldr	r3, [r3]
  3a593c: 9a03         	ldr	r2, [sp, #0xc]
  3a593e: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  3a5942: 4610         	mov	r0, r2
  3a5944: 4798         	blx	r3
  3a5946: 4603         	mov	r3, r0
  3a5948: 681c         	ldr	r4, [r3]
  3a594a: 9b03         	ldr	r3, [sp, #0xc]
  3a594c: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3a5950: 681b         	ldr	r3, [r3]
  3a5952: 3350         	adds	r3, #0x50
  3a5954: 681b         	ldr	r3, [r3]
  3a5956: 9a03         	ldr	r2, [sp, #0xc]
  3a5958: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  3a595c: 4610         	mov	r0, r2
  3a595e: 4798         	blx	r3
  3a5960: 4603         	mov	r3, r0
  3a5962: 685b         	ldr	r3, [r3, #0x4]
  3a5964: aa28         	add	r2, sp, #0xa0
  3a5966: 4610         	mov	r0, r2
  3a5968: 4621         	mov	r1, r4
  3a596a: 461a         	mov	r2, r3
  3a596c: f1ed f9c0    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1ed380
  3a5970: eddd 7a0b    	vldr	s15, [sp, #44]
  3a5974: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3a5978: ed9d 7a0a    	vldr	s14, [sp, #40]
  3a597c: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  3a5980: ee77 7a67    	vsub.f32	s15, s14, s15
  3a5984: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3a5988: ab38         	add	r3, sp, #0xe0
  3a598a: 4618         	mov	r0, r3
  3a598c: eeb0 0b46    	vmov.f64	d0, d6
  3a5990: eeb0 1b47    	vmov.f64	d1, d7
  3a5994: f7fe fafa    	bl	0x3a3f8c <PlayerLobbyOnlineGP::updateReadyLabel()+0x214> @ imm = #-0x1a0c
  3a5998: ed9d 8b38    	vldr	d8, [sp, #224]
  3a599c: 9b03         	ldr	r3, [sp, #0xc]
  3a599e: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3a59a2: 681b         	ldr	r3, [r3]
  3a59a4: f503 73fe    	add.w	r3, r3, #0x1fc
  3a59a8: 681b         	ldr	r3, [r3]
  3a59aa: 9a03         	ldr	r2, [sp, #0xc]
  3a59ac: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3a59b0: 4610         	mov	r0, r2
  3a59b2: 4798         	blx	r3
  3a59b4: 4604         	mov	r4, r0
  3a59b6: ab24         	add	r3, sp, #0x90
  3a59b8: 4618         	mov	r0, r3
  3a59ba: f3e4 fd1b    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3e4a36
  3a59be: aa26         	add	r2, sp, #0x98
  3a59c0: ab24         	add	r3, sp, #0x90
  3a59c2: 4610         	mov	r0, r2
  3a59c4: 4621         	mov	r1, r4
  3a59c6: 461a         	mov	r2, r3
  3a59c8: f011 f04a    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x411094
  3a59cc: ab26         	add	r3, sp, #0x98
  3a59ce: 4618         	mov	r0, r3
  3a59d0: f00f f344    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x40f688
  3a59d4: 4603         	mov	r3, r0
  3a59d6: ee07 3a90    	vmov	s15, r3
  3a59da: eeb8 7a67    	vcvt.f32.u32	s14, s15
  3a59de: eddd 7a09    	vldr	s15, [sp, #36]
  3a59e2: ee27 7a27    	vmul.f32	s14, s14, s15
  3a59e6: eddd 7a08    	vldr	s15, [sp, #32]
  3a59ea: ee27 7a27    	vmul.f32	s14, s14, s15
  3a59ee: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3a59f2: eec7 7a27    	vdiv.f32	s15, s14, s15
  3a59f6: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3a59fa: ee38 7b47    	vsub.f64	d7, d8, d7
  3a59fe: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3a5a02: eddd 7a0b    	vldr	s15, [sp, #44]
  3a5a06: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3a5a0a: ed9d 7a0a    	vldr	s14, [sp, #40]
  3a5a0e: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  3a5a12: ee77 7a67    	vsub.f32	s15, s14, s15
  3a5a16: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3a5a1a: ab3c         	add	r3, sp, #0xf0
  3a5a1c: 4618         	mov	r0, r3
  3a5a1e: eeb0 0b46    	vmov.f64	d0, d6
  3a5a22: eeb0 1b47    	vmov.f64	d1, d7
  3a5a26: f7fe fab1    	bl	0x3a3f8c <PlayerLobbyOnlineGP::updateReadyLabel()+0x214> @ imm = #-0x1a9e
  3a5a2a: ed9d 7b3e    	vldr	d7, [sp, #248]
  3a5a2e: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3a5a32: ab2a         	add	r3, sp, #0xa8
  3a5a34: 4618         	mov	r0, r3
  3a5a36: ee18 1a10    	vmov	r1, s16
  3a5a3a: ee17 2a90    	vmov	r2, s15
  3a5a3e: f1ed f957    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1ed2ae
  3a5a42: a922         	add	r1, sp, #0x88
  3a5a44: aa28         	add	r2, sp, #0xa0
  3a5a46: ab2a         	add	r3, sp, #0xa8
  3a5a48: 4608         	mov	r0, r1
  3a5a4a: 4611         	mov	r1, r2
  3a5a4c: 461a         	mov	r2, r3
  3a5a4e: f7fe fa8d    	bl	0x3a3f6c <PlayerLobbyOnlineGP::updateReadyLabel()+0x1f4> @ imm = #-0x1ae6
  3a5a52: ab26         	add	r3, sp, #0x98
  3a5a54: 4618         	mov	r0, r3
  3a5a56: f00f f75d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40feba
  3a5a5a: ab24         	add	r3, sp, #0x90
  3a5a5c: 4618         	mov	r0, r3
  3a5a5e: f3e4 fccd    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e499a
  3a5a62: 9b03         	ldr	r3, [sp, #0xc]
  3a5a64: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3a5a68: 681b         	ldr	r3, [r3]
  3a5a6a: 334c         	adds	r3, #0x4c
  3a5a6c: 681b         	ldr	r3, [r3]
  3a5a6e: 9a03         	ldr	r2, [sp, #0xc]
  3a5a70: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3a5a74: 4611         	mov	r1, r2
  3a5a76: aa22         	add	r2, sp, #0x88
  3a5a78: 4608         	mov	r0, r1
  3a5a7a: 4611         	mov	r1, r2
  3a5a7c: 4798         	blx	r3
  3a5a7e: 9b03         	ldr	r3, [sp, #0xc]
  3a5a80: 681b         	ldr	r3, [r3]
  3a5a82: 33c8         	adds	r3, #0xc8
  3a5a84: 681b         	ldr	r3, [r3]
  3a5a86: 9903         	ldr	r1, [sp, #0xc]
  3a5a88: 9a03         	ldr	r2, [sp, #0xc]
  3a5a8a: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3a5a8e: 4608         	mov	r0, r1
  3a5a90: 4611         	mov	r1, r2
  3a5a92: 4798         	blx	r3
  3a5a94: f8df 35f8    	ldr.w	r3, [pc, #0x5f8]        @ 0x3a6090 <MapVoteLayer::init()+0x12e8>
  3a5a98: 447b         	add	r3, pc
  3a5a9a: 4618         	mov	r0, r3
  3a5a9c: f00f f430    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x40f860
  3a5aa0: 4603         	mov	r3, r0
  3a5aa2: 2220         	movs	r2, #0x20
  3a5aa4: 9200         	str	r2, [sp]
  3a5aa6: f8df 25ec    	ldr.w	r2, [pc, #0x5ec]        @ 0x3a6094 <MapVoteLayer::init()+0x12ec>
  3a5aaa: 447a         	add	r2, pc
  3a5aac: 4610         	mov	r0, r2
  3a5aae: 4619         	mov	r1, r3
  3a5ab0: 2220         	movs	r2, #0x20
  3a5ab2: 2320         	movs	r3, #0x20
  3a5ab4: f1ff fc60    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1ff8c0
  3a5ab8: 4602         	mov	r2, r0
  3a5aba: 9b03         	ldr	r3, [sp, #0xc]
  3a5abc: f8c3 210c    	str.w	r2, [r3, #0x10c]
  3a5ac0: 9b03         	ldr	r3, [sp, #0xc]
  3a5ac2: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3a5ac6: 4618         	mov	r0, r3
  3a5ac8: f1f2 fa0e    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1f241c
  3a5acc: 9b03         	ldr	r3, [sp, #0xc]
  3a5ace: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3a5ad2: eddd 7a09    	vldr	s15, [sp, #36]
  3a5ad6: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3a5ada: ee17 2a90    	vmov	r2, s15
  3a5ade: 4618         	mov	r0, r3
  3a5ae0: 4611         	mov	r1, r2
  3a5ae2: f200 f94f    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x20029e
  3a5ae6: 9b03         	ldr	r3, [sp, #0xc]
  3a5ae8: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3a5aec: 681b         	ldr	r3, [r3]
  3a5aee: 3340         	adds	r3, #0x40
  3a5af0: 681b         	ldr	r3, [r3]
  3a5af2: 9a03         	ldr	r2, [sp, #0xc]
  3a5af4: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3a5af8: 4610         	mov	r0, r2
  3a5afa: 9908         	ldr	r1, [sp, #0x20]
  3a5afc: 4798         	blx	r3
  3a5afe: 9b03         	ldr	r3, [sp, #0xc]
  3a5b00: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3a5b04: 681b         	ldr	r3, [r3]
  3a5b06: 3350         	adds	r3, #0x50
  3a5b08: 681b         	ldr	r3, [r3]
  3a5b0a: 9a03         	ldr	r2, [sp, #0xc]
  3a5b0c: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  3a5b10: 4610         	mov	r0, r2
  3a5b12: 4798         	blx	r3
  3a5b14: 4603         	mov	r3, r0
  3a5b16: 681c         	ldr	r4, [r3]
  3a5b18: 9b03         	ldr	r3, [sp, #0xc]
  3a5b1a: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3a5b1e: 681b         	ldr	r3, [r3]
  3a5b20: 3350         	adds	r3, #0x50
  3a5b22: 681b         	ldr	r3, [r3]
  3a5b24: 9a03         	ldr	r2, [sp, #0xc]
  3a5b26: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  3a5b2a: 4610         	mov	r0, r2
  3a5b2c: 4798         	blx	r3
  3a5b2e: 4603         	mov	r3, r0
  3a5b30: 685b         	ldr	r3, [r3, #0x4]
  3a5b32: aa28         	add	r2, sp, #0xa0
  3a5b34: 4610         	mov	r0, r2
  3a5b36: 4621         	mov	r1, r4
  3a5b38: 461a         	mov	r2, r3
  3a5b3a: f1ed f8d9    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1ed1b2
  3a5b3e: eddd 7a0b    	vldr	s15, [sp, #44]
  3a5b42: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3a5b46: ed9d 7a0a    	vldr	s14, [sp, #40]
  3a5b4a: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  3a5b4e: ee77 7a67    	vsub.f32	s15, s14, s15
  3a5b52: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3a5b56: ab38         	add	r3, sp, #0xe0
  3a5b58: 4618         	mov	r0, r3
  3a5b5a: eeb0 0b46    	vmov.f64	d0, d6
  3a5b5e: eeb0 1b47    	vmov.f64	d1, d7
  3a5b62: f7fe fa13    	bl	0x3a3f8c <PlayerLobbyOnlineGP::updateReadyLabel()+0x214> @ imm = #-0x1bda
  3a5b66: ed9d 8b38    	vldr	d8, [sp, #224]
  3a5b6a: 9b03         	ldr	r3, [sp, #0xc]
  3a5b6c: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3a5b70: 681b         	ldr	r3, [r3]
  3a5b72: f503 73fe    	add.w	r3, r3, #0x1fc
  3a5b76: 681b         	ldr	r3, [r3]
  3a5b78: 9a03         	ldr	r2, [sp, #0xc]
  3a5b7a: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3a5b7e: 4610         	mov	r0, r2
  3a5b80: 4798         	blx	r3
  3a5b82: 4604         	mov	r4, r0
  3a5b84: ab06         	add	r3, sp, #0x18
  3a5b86: 4618         	mov	r0, r3
  3a5b88: f3e4 fc34    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3e4868
  3a5b8c: aa26         	add	r2, sp, #0x98
  3a5b8e: ab06         	add	r3, sp, #0x18
  3a5b90: 4610         	mov	r0, r2
  3a5b92: 4621         	mov	r1, r4
  3a5b94: 461a         	mov	r2, r3
  3a5b96: f010 f763    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x410ec6
  3a5b9a: ab26         	add	r3, sp, #0x98
  3a5b9c: 4618         	mov	r0, r3
  3a5b9e: f00f f25d    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x40f4ba
  3a5ba2: 4603         	mov	r3, r0
  3a5ba4: ee07 3a90    	vmov	s15, r3
  3a5ba8: eeb8 7a67    	vcvt.f32.u32	s14, s15
  3a5bac: eddd 7a09    	vldr	s15, [sp, #36]
  3a5bb0: ee27 7a27    	vmul.f32	s14, s14, s15
  3a5bb4: eddd 7a08    	vldr	s15, [sp, #32]
  3a5bb8: ee27 7a27    	vmul.f32	s14, s14, s15
  3a5bbc: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3a5bc0: eec7 7a27    	vdiv.f32	s15, s14, s15
  3a5bc4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3a5bc8: ee38 7b47    	vsub.f64	d7, d8, d7
  3a5bcc: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3a5bd0: eddd 7a0b    	vldr	s15, [sp, #44]
  3a5bd4: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3a5bd8: ed9d 7a0a    	vldr	s14, [sp, #40]
  3a5bdc: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  3a5be0: ee77 7a67    	vsub.f32	s15, s14, s15
  3a5be4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3a5be8: ab3c         	add	r3, sp, #0xf0
  3a5bea: 4618         	mov	r0, r3
  3a5bec: eeb0 0b46    	vmov.f64	d0, d6
  3a5bf0: eeb0 1b47    	vmov.f64	d1, d7
  3a5bf4: f7fe f9ca    	bl	0x3a3f8c <PlayerLobbyOnlineGP::updateReadyLabel()+0x214> @ imm = #-0x1c6c
  3a5bf8: ed9d 7b3e    	vldr	d7, [sp, #248]
  3a5bfc: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3a5c00: ab2a         	add	r3, sp, #0xa8
  3a5c02: 4618         	mov	r0, r3
  3a5c04: ee18 1a10    	vmov	r1, s16
  3a5c08: ee17 2a90    	vmov	r2, s15
  3a5c0c: f1ed f870    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1ed0e0
  3a5c10: a924         	add	r1, sp, #0x90
  3a5c12: aa28         	add	r2, sp, #0xa0
  3a5c14: ab2a         	add	r3, sp, #0xa8
  3a5c16: 4608         	mov	r0, r1
  3a5c18: 4611         	mov	r1, r2
  3a5c1a: 461a         	mov	r2, r3
  3a5c1c: f7fe f9a6    	bl	0x3a3f6c <PlayerLobbyOnlineGP::updateReadyLabel()+0x1f4> @ imm = #-0x1cb4
  3a5c20: ab26         	add	r3, sp, #0x98
  3a5c22: 4618         	mov	r0, r3
  3a5c24: f00f f676    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40fcec
  3a5c28: ab06         	add	r3, sp, #0x18
  3a5c2a: 4618         	mov	r0, r3
  3a5c2c: f3e4 fbe6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e47cc
  3a5c30: 9b03         	ldr	r3, [sp, #0xc]
  3a5c32: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3a5c36: 681b         	ldr	r3, [r3]
  3a5c38: 334c         	adds	r3, #0x4c
  3a5c3a: 681b         	ldr	r3, [r3]
  3a5c3c: 9a03         	ldr	r2, [sp, #0xc]
  3a5c3e: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3a5c42: 4611         	mov	r1, r2
  3a5c44: aa24         	add	r2, sp, #0x90
  3a5c46: 4608         	mov	r0, r1
  3a5c48: 4611         	mov	r1, r2
  3a5c4a: 4798         	blx	r3
  3a5c4c: 9b03         	ldr	r3, [sp, #0xc]
  3a5c4e: 681b         	ldr	r3, [r3]
  3a5c50: 33c8         	adds	r3, #0xc8
  3a5c52: 681b         	ldr	r3, [r3]
  3a5c54: 9903         	ldr	r1, [sp, #0xc]
  3a5c56: 9a03         	ldr	r2, [sp, #0xc]
  3a5c58: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3a5c5c: 4608         	mov	r0, r1
  3a5c5e: 4611         	mov	r1, r2
  3a5c60: 4798         	blx	r3
  3a5c62: f8df 3434    	ldr.w	r3, [pc, #0x434]        @ 0x3a6098 <MapVoteLayer::init()+0x12f0>
  3a5c66: 447b         	add	r3, pc
  3a5c68: 4618         	mov	r0, r3
  3a5c6a: f00f f349    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x40f692
  3a5c6e: 4603         	mov	r3, r0
  3a5c70: 2220         	movs	r2, #0x20
  3a5c72: 9200         	str	r2, [sp]
  3a5c74: f8df 2424    	ldr.w	r2, [pc, #0x424]        @ 0x3a609c <MapVoteLayer::init()+0x12f4>
  3a5c78: 447a         	add	r2, pc
  3a5c7a: 4610         	mov	r0, r2
  3a5c7c: 4619         	mov	r1, r3
  3a5c7e: 2220         	movs	r2, #0x20
  3a5c80: 2320         	movs	r3, #0x20
  3a5c82: f1ff fb79    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1ff6f2
  3a5c86: 4602         	mov	r2, r0
  3a5c88: 9b03         	ldr	r3, [sp, #0xc]
  3a5c8a: f8c3 2110    	str.w	r2, [r3, #0x110]
  3a5c8e: 9b03         	ldr	r3, [sp, #0xc]
  3a5c90: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3a5c94: 4618         	mov	r0, r3
  3a5c96: f1f2 f927    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1f224e
  3a5c9a: 9b03         	ldr	r3, [sp, #0xc]
  3a5c9c: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3a5ca0: eddd 7a09    	vldr	s15, [sp, #36]
  3a5ca4: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3a5ca8: ee17 2a90    	vmov	r2, s15
  3a5cac: 4618         	mov	r0, r3
  3a5cae: 4611         	mov	r1, r2
  3a5cb0: f200 f868    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x2000d0
  3a5cb4: 9b03         	ldr	r3, [sp, #0xc]
  3a5cb6: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3a5cba: 681b         	ldr	r3, [r3]
  3a5cbc: 3340         	adds	r3, #0x40
  3a5cbe: 681b         	ldr	r3, [r3]
  3a5cc0: 9a03         	ldr	r2, [sp, #0xc]
  3a5cc2: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  3a5cc6: 4610         	mov	r0, r2
  3a5cc8: 9908         	ldr	r1, [sp, #0x20]
  3a5cca: 4798         	blx	r3
  3a5ccc: 9b03         	ldr	r3, [sp, #0xc]
  3a5cce: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3a5cd2: 681b         	ldr	r3, [r3]
  3a5cd4: 3350         	adds	r3, #0x50
  3a5cd6: 681b         	ldr	r3, [r3]
  3a5cd8: 9a03         	ldr	r2, [sp, #0xc]
  3a5cda: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  3a5cde: 4610         	mov	r0, r2
  3a5ce0: 4798         	blx	r3
  3a5ce2: 4603         	mov	r3, r0
  3a5ce4: 681c         	ldr	r4, [r3]
  3a5ce6: 9b03         	ldr	r3, [sp, #0xc]
  3a5ce8: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3a5cec: 681b         	ldr	r3, [r3]
  3a5cee: 3350         	adds	r3, #0x50
  3a5cf0: 681b         	ldr	r3, [r3]
  3a5cf2: 9a03         	ldr	r2, [sp, #0xc]
  3a5cf4: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  3a5cf8: 4610         	mov	r0, r2
  3a5cfa: 4798         	blx	r3
  3a5cfc: 4603         	mov	r3, r0
  3a5cfe: 685b         	ldr	r3, [r3, #0x4]
  3a5d00: aa28         	add	r2, sp, #0xa0
  3a5d02: 4610         	mov	r0, r2
  3a5d04: 4621         	mov	r1, r4
  3a5d06: 461a         	mov	r2, r3
  3a5d08: f1ec fff2    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1ecfe4
  3a5d0c: eddd 7a0b    	vldr	s15, [sp, #44]
  3a5d10: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3a5d14: ed9d 7a0a    	vldr	s14, [sp, #40]
  3a5d18: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  3a5d1c: ee77 7a67    	vsub.f32	s15, s14, s15
  3a5d20: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3a5d24: ab38         	add	r3, sp, #0xe0
  3a5d26: 4618         	mov	r0, r3
  3a5d28: eeb0 0b46    	vmov.f64	d0, d6
  3a5d2c: eeb0 1b47    	vmov.f64	d1, d7
  3a5d30: f7fe f92c    	bl	0x3a3f8c <PlayerLobbyOnlineGP::updateReadyLabel()+0x214> @ imm = #-0x1da8
  3a5d34: ed9d 8b38    	vldr	d8, [sp, #224]
  3a5d38: 9b03         	ldr	r3, [sp, #0xc]
  3a5d3a: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3a5d3e: 681b         	ldr	r3, [r3]
  3a5d40: f503 73fe    	add.w	r3, r3, #0x1fc
  3a5d44: 681b         	ldr	r3, [r3]
  3a5d46: 9a03         	ldr	r2, [sp, #0xc]
  3a5d48: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  3a5d4c: 4610         	mov	r0, r2
  3a5d4e: 4798         	blx	r3
  3a5d50: 4604         	mov	r4, r0
  3a5d52: ab05         	add	r3, sp, #0x14
  3a5d54: 4618         	mov	r0, r3
  3a5d56: f3e4 fb4d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3e469a
  3a5d5a: aa06         	add	r2, sp, #0x18
  3a5d5c: ab05         	add	r3, sp, #0x14
  3a5d5e: 4610         	mov	r0, r2
  3a5d60: 4621         	mov	r1, r4
  3a5d62: 461a         	mov	r2, r3
  3a5d64: f010 f67c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x410cf8
  3a5d68: ab06         	add	r3, sp, #0x18
  3a5d6a: 4618         	mov	r0, r3
  3a5d6c: f00f f176    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x40f2ec
  3a5d70: 4603         	mov	r3, r0
  3a5d72: ee07 3a90    	vmov	s15, r3
  3a5d76: eeb8 7a67    	vcvt.f32.u32	s14, s15
  3a5d7a: eddd 7a09    	vldr	s15, [sp, #36]
  3a5d7e: ee27 7a27    	vmul.f32	s14, s14, s15
  3a5d82: eddd 7a08    	vldr	s15, [sp, #32]
  3a5d86: ee27 7a27    	vmul.f32	s14, s14, s15
  3a5d8a: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3a5d8e: eec7 7a27    	vdiv.f32	s15, s14, s15
  3a5d92: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3a5d96: ee38 7b47    	vsub.f64	d7, d8, d7
  3a5d9a: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3a5d9e: eddd 7a0b    	vldr	s15, [sp, #44]
  3a5da2: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3a5da6: ed9d 7a0a    	vldr	s14, [sp, #40]
  3a5daa: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  3a5dae: ee77 7a67    	vsub.f32	s15, s14, s15
  3a5db2: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3a5db6: ab3c         	add	r3, sp, #0xf0
  3a5db8: 4618         	mov	r0, r3
  3a5dba: eeb0 0b46    	vmov.f64	d0, d6
  3a5dbe: eeb0 1b47    	vmov.f64	d1, d7
  3a5dc2: f7fe f8e3    	bl	0x3a3f8c <PlayerLobbyOnlineGP::updateReadyLabel()+0x214> @ imm = #-0x1e3a
  3a5dc6: ed9d 7b3e    	vldr	d7, [sp, #248]
  3a5dca: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3a5dce: ab2a         	add	r3, sp, #0xa8
  3a5dd0: 4618         	mov	r0, r3
  3a5dd2: ee18 1a10    	vmov	r1, s16
  3a5dd6: ee17 2a90    	vmov	r2, s15
  3a5dda: f1ec ff89    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1ecf12
  3a5dde: a926         	add	r1, sp, #0x98
  3a5de0: aa28         	add	r2, sp, #0xa0
  3a5de2: ab2a         	add	r3, sp, #0xa8
  3a5de4: 4608         	mov	r0, r1
  3a5de6: 4611         	mov	r1, r2
  3a5de8: 461a         	mov	r2, r3
  3a5dea: f7fe f8bf    	bl	0x3a3f6c <PlayerLobbyOnlineGP::updateReadyLabel()+0x1f4> @ imm = #-0x1e82
  3a5dee: ab06         	add	r3, sp, #0x18
  3a5df0: 4618         	mov	r0, r3
  3a5df2: f00f f58f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40fb1e
  3a5df6: ab05         	add	r3, sp, #0x14
  3a5df8: 4618         	mov	r0, r3
  3a5dfa: f3e4 faff    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e45fe
  3a5dfe: 9b03         	ldr	r3, [sp, #0xc]
  3a5e00: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3a5e04: 681b         	ldr	r3, [r3]
  3a5e06: 334c         	adds	r3, #0x4c
  3a5e08: 681b         	ldr	r3, [r3]
  3a5e0a: 9a03         	ldr	r2, [sp, #0xc]
  3a5e0c: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  3a5e10: 4611         	mov	r1, r2
  3a5e12: aa26         	add	r2, sp, #0x98
  3a5e14: 4608         	mov	r0, r1
  3a5e16: 4611         	mov	r1, r2
  3a5e18: 4798         	blx	r3
  3a5e1a: 9b03         	ldr	r3, [sp, #0xc]
  3a5e1c: 681b         	ldr	r3, [r3]
  3a5e1e: 33c8         	adds	r3, #0xc8
  3a5e20: 681b         	ldr	r3, [r3]
  3a5e22: 9903         	ldr	r1, [sp, #0xc]
  3a5e24: 9a03         	ldr	r2, [sp, #0xc]
  3a5e26: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  3a5e2a: 4608         	mov	r0, r1
  3a5e2c: 4611         	mov	r1, r2
  3a5e2e: 4798         	blx	r3
  3a5e30: 4b9b         	ldr	r3, [pc, #0x26c]        @ 0x3a60a0 <MapVoteLayer::init()+0x12f8>
  3a5e32: 447b         	add	r3, pc
  3a5e34: 4618         	mov	r0, r3
  3a5e36: f232 fa65    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2324ca
  3a5e3a: 4602         	mov	r2, r0
  3a5e3c: 9b03         	ldr	r3, [sp, #0xc]
  3a5e3e: f8c3 212c    	str.w	r2, [r3, #0x12c]
  3a5e42: 9b03         	ldr	r3, [sp, #0xc]
  3a5e44: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  3a5e48: 4618         	mov	r0, r3
  3a5e4a: f1f2 f84d    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1f209a
  3a5e4e: 4b95         	ldr	r3, [pc, #0x254]        @ 0x3a60a4 <MapVoteLayer::init()+0x12fc>
  3a5e50: 447b         	add	r3, pc
  3a5e52: 4618         	mov	r0, r3
  3a5e54: f232 fa56    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2324ac
  3a5e58: 4602         	mov	r2, r0
  3a5e5a: 9b03         	ldr	r3, [sp, #0xc]
  3a5e5c: f8c3 2130    	str.w	r2, [r3, #0x130]
  3a5e60: 9b03         	ldr	r3, [sp, #0xc]
  3a5e62: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  3a5e66: 4618         	mov	r0, r3
  3a5e68: f1f2 f83e    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1f207c
  3a5e6c: 4b8e         	ldr	r3, [pc, #0x238]        @ 0x3a60a8 <MapVoteLayer::init()+0x1300>
  3a5e6e: 447b         	add	r3, pc
  3a5e70: 4618         	mov	r0, r3
  3a5e72: f232 fa47    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x23248e
  3a5e76: 4602         	mov	r2, r0
  3a5e78: 9b03         	ldr	r3, [sp, #0xc]
  3a5e7a: f8c3 2134    	str.w	r2, [r3, #0x134]
  3a5e7e: 9b03         	ldr	r3, [sp, #0xc]
  3a5e80: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  3a5e84: 4618         	mov	r0, r3
  3a5e86: f1f2 f82f    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1f205e
  3a5e8a: 9b03         	ldr	r3, [sp, #0xc]
  3a5e8c: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  3a5e90: 681b         	ldr	r3, [r3]
  3a5e92: 334c         	adds	r3, #0x4c
  3a5e94: 681c         	ldr	r4, [r3]
  3a5e96: 9b03         	ldr	r3, [sp, #0xc]
  3a5e98: f8d3 512c    	ldr.w	r5, [r3, #0x12c]
  3a5e9c: 9b03         	ldr	r3, [sp, #0xc]
  3a5e9e: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3a5ea2: 681b         	ldr	r3, [r3]
  3a5ea4: 3350         	adds	r3, #0x50
  3a5ea6: 681b         	ldr	r3, [r3]
  3a5ea8: 9a03         	ldr	r2, [sp, #0xc]
  3a5eaa: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  3a5eae: 4610         	mov	r0, r2
  3a5eb0: 4798         	blx	r3
  3a5eb2: 4606         	mov	r6, r0
  3a5eb4: ab38         	add	r3, sp, #0xe0
  3a5eb6: 4618         	mov	r0, r3
  3a5eb8: f04f 0100    	mov.w	r1, #0x0
  3a5ebc: f2cc 2178    	movt	r1, #0xc278
  3a5ec0: f04f 0200    	mov.w	r2, #0x0
  3a5ec4: f1ec ff14    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1ece28
  3a5ec8: aa3c         	add	r2, sp, #0xf0
  3a5eca: ab38         	add	r3, sp, #0xe0
  3a5ecc: 4610         	mov	r0, r2
  3a5ece: 4631         	mov	r1, r6
  3a5ed0: 461a         	mov	r2, r3
  3a5ed2: f7fe f84b    	bl	0x3a3f6c <PlayerLobbyOnlineGP::updateReadyLabel()+0x1f4> @ imm = #-0x1f6a
  3a5ed6: ab3c         	add	r3, sp, #0xf0
  3a5ed8: 4628         	mov	r0, r5
  3a5eda: 4619         	mov	r1, r3
  3a5edc: 47a0         	blx	r4
  3a5ede: 9b03         	ldr	r3, [sp, #0xc]
  3a5ee0: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  3a5ee4: 681b         	ldr	r3, [r3]
  3a5ee6: 334c         	adds	r3, #0x4c
  3a5ee8: 681c         	ldr	r4, [r3]
  3a5eea: 9b03         	ldr	r3, [sp, #0xc]
  3a5eec: f8d3 5130    	ldr.w	r5, [r3, #0x130]
  3a5ef0: 9b03         	ldr	r3, [sp, #0xc]
  3a5ef2: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3a5ef6: 681b         	ldr	r3, [r3]
  3a5ef8: 3350         	adds	r3, #0x50
  3a5efa: 681b         	ldr	r3, [r3]
  3a5efc: 9a03         	ldr	r2, [sp, #0xc]
  3a5efe: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  3a5f02: 4610         	mov	r0, r2
  3a5f04: 4798         	blx	r3
  3a5f06: 4606         	mov	r6, r0
  3a5f08: ab38         	add	r3, sp, #0xe0
  3a5f0a: 4618         	mov	r0, r3
  3a5f0c: f04f 0100    	mov.w	r1, #0x0
  3a5f10: f2cc 2178    	movt	r1, #0xc278
  3a5f14: f04f 0200    	mov.w	r2, #0x0
  3a5f18: f1ec feea    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1ecdd4
  3a5f1c: aa3c         	add	r2, sp, #0xf0
  3a5f1e: ab38         	add	r3, sp, #0xe0
  3a5f20: 4610         	mov	r0, r2
  3a5f22: 4631         	mov	r1, r6
  3a5f24: 461a         	mov	r2, r3
  3a5f26: f7fe f821    	bl	0x3a3f6c <PlayerLobbyOnlineGP::updateReadyLabel()+0x1f4> @ imm = #-0x1fbe
  3a5f2a: ab3c         	add	r3, sp, #0xf0
  3a5f2c: 4628         	mov	r0, r5
  3a5f2e: 4619         	mov	r1, r3
  3a5f30: 47a0         	blx	r4
  3a5f32: 9b03         	ldr	r3, [sp, #0xc]
  3a5f34: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  3a5f38: 681b         	ldr	r3, [r3]
  3a5f3a: 334c         	adds	r3, #0x4c
  3a5f3c: 681c         	ldr	r4, [r3]
  3a5f3e: 9b03         	ldr	r3, [sp, #0xc]
  3a5f40: f8d3 5134    	ldr.w	r5, [r3, #0x134]
  3a5f44: 9b03         	ldr	r3, [sp, #0xc]
  3a5f46: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3a5f4a: 681b         	ldr	r3, [r3]
  3a5f4c: 3350         	adds	r3, #0x50
  3a5f4e: 681b         	ldr	r3, [r3]
  3a5f50: 9a03         	ldr	r2, [sp, #0xc]
  3a5f52: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  3a5f56: 4610         	mov	r0, r2
  3a5f58: 4798         	blx	r3
  3a5f5a: 4606         	mov	r6, r0
  3a5f5c: ab38         	add	r3, sp, #0xe0
  3a5f5e: 4618         	mov	r0, r3
  3a5f60: f04f 0100    	mov.w	r1, #0x0
  3a5f64: f2cc 2178    	movt	r1, #0xc278
  3a5f68: f04f 0200    	mov.w	r2, #0x0
  3a5f6c: f1ec fec0    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1ecd80
  3a5f70: aa3c         	add	r2, sp, #0xf0
  3a5f72: ab38         	add	r3, sp, #0xe0
  3a5f74: 4610         	mov	r0, r2
  3a5f76: 4631         	mov	r1, r6
  3a5f78: 461a         	mov	r2, r3
  3a5f7a: f7fd fff7    	bl	0x3a3f6c <PlayerLobbyOnlineGP::updateReadyLabel()+0x1f4> @ imm = #-0x2012
  3a5f7e: ab3c         	add	r3, sp, #0xf0
  3a5f80: 4628         	mov	r0, r5
  3a5f82: 4619         	mov	r1, r3
  3a5f84: 47a0         	blx	r4
  3a5f86: 9b03         	ldr	r3, [sp, #0xc]
  3a5f88: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  3a5f8c: 681b         	ldr	r3, [r3]
  3a5f8e: 3340         	adds	r3, #0x40
  3a5f90: 681b         	ldr	r3, [r3]
  3a5f92: 9a03         	ldr	r2, [sp, #0xc]
  3a5f94: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  3a5f98: 4610         	mov	r0, r2
  3a5f9a: f243 3133    	movw	r1, #0x3333
  3a5f9e: f6c3 61b3    	movt	r1, #0x3eb3
  3a5fa2: 4798         	blx	r3
  3a5fa4: 9b03         	ldr	r3, [sp, #0xc]
  3a5fa6: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  3a5faa: 681b         	ldr	r3, [r3]
  3a5fac: 3340         	adds	r3, #0x40
  3a5fae: 681b         	ldr	r3, [r3]
  3a5fb0: 9a03         	ldr	r2, [sp, #0xc]
  3a5fb2: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  3a5fb6: 4610         	mov	r0, r2
  3a5fb8: f243 3133    	movw	r1, #0x3333
  3a5fbc: f6c3 61b3    	movt	r1, #0x3eb3
  3a5fc0: 4798         	blx	r3
  3a5fc2: 9b03         	ldr	r3, [sp, #0xc]
  3a5fc4: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  3a5fc8: 681b         	ldr	r3, [r3]
  3a5fca: 3340         	adds	r3, #0x40
  3a5fcc: 681b         	ldr	r3, [r3]
  3a5fce: 9a03         	ldr	r2, [sp, #0xc]
  3a5fd0: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  3a5fd4: 4610         	mov	r0, r2
  3a5fd6: f243 3133    	movw	r1, #0x3333
  3a5fda: f6c3 61b3    	movt	r1, #0x3eb3
  3a5fde: 4798         	blx	r3
  3a5fe0: 9b03         	ldr	r3, [sp, #0xc]
  3a5fe2: 681b         	ldr	r3, [r3]
  3a5fe4: 33c8         	adds	r3, #0xc8
  3a5fe6: 681b         	ldr	r3, [r3]
  3a5fe8: 9903         	ldr	r1, [sp, #0xc]
  3a5fea: 9a03         	ldr	r2, [sp, #0xc]
  3a5fec: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  3a5ff0: 4608         	mov	r0, r1
  3a5ff2: 4611         	mov	r1, r2
  3a5ff4: 4798         	blx	r3
  3a5ff6: 9b03         	ldr	r3, [sp, #0xc]
  3a5ff8: 681b         	ldr	r3, [r3]
  3a5ffa: 33c8         	adds	r3, #0xc8
  3a5ffc: 681b         	ldr	r3, [r3]
  3a5ffe: 9903         	ldr	r1, [sp, #0xc]
  3a6000: 9a03         	ldr	r2, [sp, #0xc]
  3a6002: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  3a6006: 4608         	mov	r0, r1
  3a6008: 4611         	mov	r1, r2
  3a600a: 4798         	blx	r3
  3a600c: 9b03         	ldr	r3, [sp, #0xc]
  3a600e: 681b         	ldr	r3, [r3]
  3a6010: 33c8         	adds	r3, #0xc8
  3a6012: 681b         	ldr	r3, [r3]
  3a6014: 9903         	ldr	r1, [sp, #0xc]
  3a6016: 9a03         	ldr	r2, [sp, #0xc]
  3a6018: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  3a601c: 4608         	mov	r0, r1
  3a601e: 4611         	mov	r1, r2
  3a6020: 4798         	blx	r3
  3a6022: 9803         	ldr	r0, [sp, #0xc]
  3a6024: f000 f9b4    	bl	0x3a6390 <MapVoteLayer::updateMapVote()> @ imm = #0x368
  3a6028: 2301         	movs	r3, #0x1
  3a602a: e066         	b	0x3a60fa <MapVoteLayer::init()+0x1352> @ imm = #0xcc
  3a602c: ab26         	add	r3, sp, #0x98
  3a602e: 4618         	mov	r0, r3
  3a6030: f00f f470    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40f8e0
  3a6034: e7ff         	b	0x3a6036 <MapVoteLayer::init()+0x128e> @ imm = #-0x2
  3a6036: ab24         	add	r3, sp, #0x90
  3a6038: 4618         	mov	r0, r3
  3a603a: f3e4 f9df    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e43be
  3a603e: f3e2 f835    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3e206a
  3a6042: ab26         	add	r3, sp, #0x98
  3a6044: 4618         	mov	r0, r3
  3a6046: f00f f465    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40f8ca
  3a604a: e7ff         	b	0x3a604c <MapVoteLayer::init()+0x12a4> @ imm = #-0x2
  3a604c: ab24         	add	r3, sp, #0x90
  3a604e: 4618         	mov	r0, r3
  3a6050: f3e4 f9d4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e43a8
  3a6054: f3e2 f82a    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3e2054
  3a6058: ab26         	add	r3, sp, #0x98
  3a605a: 4618         	mov	r0, r3
  3a605c: f00f f45a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40f8b4
  3a6060: e7ff         	b	0x3a6062 <MapVoteLayer::init()+0x12ba> @ imm = #-0x2
  3a6062: ab24         	add	r3, sp, #0x90
  3a6064: 4618         	mov	r0, r3
  3a6066: f3e4 f9c9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e4392
  3a606a: f3e2 f81f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3e203e
  3a606e: ab26         	add	r3, sp, #0x98
  3a6070: 4618         	mov	r0, r3
  3a6072: f00f f44f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40f89e
  3a6076: e019         	b	0x3a60ac <MapVoteLayer::init()+0x1304> @ imm = #0x32
  3a6078: bc62         	pop	{r1, r5, r6}
  3a607a: 0059         	lsls	r1, r3, #0x1
  3a607c: d890         	bhi	0x3a5fa0 <MapVoteLayer::init()+0x11f8> @ imm = #-0xe0
  3a607e: 0042         	lsls	r2, r0, #0x1
  3a6080: ba94         	<unknown>
  3a6082: 0059         	lsls	r1, r3, #0x1
  3a6084: d6c2         	bvs	0x3a600c <MapVoteLayer::init()+0x1264> @ imm = #-0x7c
  3a6086: 0042         	lsls	r2, r0, #0x1
  3a6088: b8c6         	<unknown>
  3a608a: 0059         	lsls	r1, r3, #0x1
  3a608c: d4f4         	bmi	0x3a6078 <MapVoteLayer::init()+0x12d0> @ imm = #-0x18
  3a608e: 0042         	lsls	r2, r0, #0x1
  3a6090: b6f8         	<unknown>
  3a6092: 0059         	lsls	r1, r3, #0x1
  3a6094: d326         	blo	0x3a60e4 <MapVoteLayer::init()+0x133c> @ imm = #0x4c
  3a6096: 0042         	lsls	r2, r0, #0x1
  3a6098: b52a         	push	{r1, r3, r5, lr}
  3a609a: 0059         	lsls	r1, r3, #0x1
  3a609c: d158         	bne	0x3a6150 <MapVoteLayer::~MapVoteLayer()+0x48> @ imm = #0xb0
  3a609e: 0042         	lsls	r2, r0, #0x1
  3a60a0: cfa2         	ldm	r7, {r1, r5, r7}
  3a60a2: 0042         	lsls	r2, r0, #0x1
  3a60a4: cf84         	ldm	r7, {r2, r7}
  3a60a6: 0042         	lsls	r2, r0, #0x1
  3a60a8: cf66         	ldm	r7!, {r1, r2, r5, r6}
  3a60aa: 0042         	lsls	r2, r0, #0x1
  3a60ac: ab24         	add	r3, sp, #0x90
  3a60ae: 4618         	mov	r0, r3
  3a60b0: f3e4 f9a4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e4348
  3a60b4: f3e1 fffa    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3e1ff4
  3a60b8: ab26         	add	r3, sp, #0x98
  3a60ba: 4618         	mov	r0, r3
  3a60bc: f00f f42a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40f854
  3a60c0: e7ff         	b	0x3a60c2 <MapVoteLayer::init()+0x131a> @ imm = #-0x2
  3a60c2: ab24         	add	r3, sp, #0x90
  3a60c4: 4618         	mov	r0, r3
  3a60c6: f3e4 f999    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e4332
  3a60ca: f3e1 ffef    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3e1fde
  3a60ce: ab26         	add	r3, sp, #0x98
  3a60d0: 4618         	mov	r0, r3
  3a60d2: f00f f41f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40f83e
  3a60d6: e7ff         	b	0x3a60d8 <MapVoteLayer::init()+0x1330> @ imm = #-0x2
  3a60d8: ab06         	add	r3, sp, #0x18
  3a60da: 4618         	mov	r0, r3
  3a60dc: f3e4 f98e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e431c
  3a60e0: f3e1 ffe4    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3e1fc8
  3a60e4: ab06         	add	r3, sp, #0x18
  3a60e6: 4618         	mov	r0, r3
  3a60e8: f00f f414    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40f828
  3a60ec: e7ff         	b	0x3a60ee <MapVoteLayer::init()+0x1346> @ imm = #-0x2
  3a60ee: ab05         	add	r3, sp, #0x14
  3a60f0: 4618         	mov	r0, r3
  3a60f2: f3e4 f983    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e4306
  3a60f6: f3e1 ffd9    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3e1fb2
  3a60fa: 4618         	mov	r0, r3
  3a60fc: b040         	add	sp, #0x100
  3a60fe: ecbd 8b02    	vpop	{d8}
  3a6102: bd70         	pop	{r4, r5, r6, pc}

// ==== MapVoteLayer::~MapVoteLayer
//      file offset 0x3a6108 (= ELF address; Ghidra 0x3b6108), 244 bytes, Thumb-2
  3a6108: b500         	push	{lr}
  3a610a: b083         	sub	sp, #0xc
  3a610c: 9001         	str	r0, [sp, #0x4]
  3a610e: 4939         	ldr	r1, [pc, #0xe4]         @ 0x3a61f4 <MapVoteLayer::~MapVoteLayer()+0xec>
  3a6110: 4479         	add	r1, pc
  3a6112: 9b01         	ldr	r3, [sp, #0x4]
  3a6114: 4a38         	ldr	r2, [pc, #0xe0]         @ 0x3a61f8 <MapVoteLayer::~MapVoteLayer()+0xf0>
  3a6116: 588a         	ldr	r2, [r1, r2]
  3a6118: 3208         	adds	r2, #0x8
  3a611a: 601a         	str	r2, [r3]
  3a611c: f23a fac8    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x23a590
  3a6120: 4602         	mov	r2, r0
  3a6122: 9b01         	ldr	r3, [sp, #0x4]
  3a6124: 4610         	mov	r0, r2
  3a6126: 4619         	mov	r1, r3
  3a6128: f23a fbfa    	bl	0x5e0920 <cocos2d::CCNotificationCenter::removeAllObservers(cocos2d::CCObject*)> @ imm = #0x23a7f4
  3a612c: 9b01         	ldr	r3, [sp, #0x4]
  3a612e: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3a6132: 4618         	mov	r0, r3
  3a6134: f1f1 fec0    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1f1d80
  3a6138: 9b01         	ldr	r3, [sp, #0x4]
  3a613a: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3a613e: 4618         	mov	r0, r3
  3a6140: f1f1 feba    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1f1d74
  3a6144: 9b01         	ldr	r3, [sp, #0x4]
  3a6146: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3a614a: 4618         	mov	r0, r3
  3a614c: f1f1 feb4    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1f1d68
  3a6150: 9b01         	ldr	r3, [sp, #0x4]
  3a6152: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3a6156: 4618         	mov	r0, r3
  3a6158: f1f1 feae    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1f1d5c
  3a615c: 9b01         	ldr	r3, [sp, #0x4]
  3a615e: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3a6162: 4618         	mov	r0, r3
  3a6164: f1f1 fea8    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1f1d50
  3a6168: 9b01         	ldr	r3, [sp, #0x4]
  3a616a: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3a616e: 4618         	mov	r0, r3
  3a6170: f1f1 fea2    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1f1d44
  3a6174: 9b01         	ldr	r3, [sp, #0x4]
  3a6176: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3a617a: 4618         	mov	r0, r3
  3a617c: f1f1 fe9c    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1f1d38
  3a6180: 9b01         	ldr	r3, [sp, #0x4]
  3a6182: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3a6186: 4618         	mov	r0, r3
  3a6188: f1f1 fe96    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1f1d2c
  3a618c: 9b01         	ldr	r3, [sp, #0x4]
  3a618e: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3a6192: 4618         	mov	r0, r3
  3a6194: f1f1 fe90    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1f1d20
  3a6198: 9b01         	ldr	r3, [sp, #0x4]
  3a619a: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  3a619e: 4618         	mov	r0, r3
  3a61a0: f1f1 fe8a    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1f1d14
  3a61a4: 9b01         	ldr	r3, [sp, #0x4]
  3a61a6: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  3a61aa: 4618         	mov	r0, r3
  3a61ac: f1f1 fe84    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1f1d08
  3a61b0: 9b01         	ldr	r3, [sp, #0x4]
  3a61b2: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  3a61b6: 4618         	mov	r0, r3
  3a61b8: f1f1 fe7e    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1f1cfc
  3a61bc: 9b01         	ldr	r3, [sp, #0x4]
  3a61be: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3a61c2: 4618         	mov	r0, r3
  3a61c4: f1f1 fe78    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1f1cf0
  3a61c8: 9b01         	ldr	r3, [sp, #0x4]
  3a61ca: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3a61ce: 4618         	mov	r0, r3
  3a61d0: f1f1 fe72    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1f1ce4
  3a61d4: 9b01         	ldr	r3, [sp, #0x4]
  3a61d6: 4618         	mov	r0, r3
  3a61d8: f1e9 fb34    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x1e9668
  3a61dc: 2300         	movs	r3, #0x0
  3a61de: 2b00         	cmp	r3, #0x0
  3a61e0: d002         	beq	0x3a61e8 <MapVoteLayer::~MapVoteLayer()+0xe0> @ imm = #0x4
  3a61e2: 9801         	ldr	r0, [sp, #0x4]
  3a61e4: f3e1 ff5e    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3e1ebc
  3a61e8: 9b01         	ldr	r3, [sp, #0x4]
  3a61ea: 4618         	mov	r0, r3
  3a61ec: b003         	add	sp, #0xc
  3a61ee: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3a61f1); words below are literal-pool data ---
  3a61f2: bf00         	nop
  3a61f4: c8f8         	ldm	r0!, {r3, r4, r5, r6, r7}
  3a61f6: 0058         	lsls	r0, r3, #0x1
  3a61f8: dd70         	ble	0x3a62dc <MapVoteLayer::onMap2(cocos2d::CCObject*)+0x4> @ imm = #0xe0
  3a61fa: ffff b500    	<unknown>

// ==== MapVoteLayer::~MapVoteLayer
//      file offset 0x3a61fc (= ELF address; Ghidra 0x3b61fc), 28 bytes, Thumb-2
  3a61fc: b500         	push	{lr}
  3a61fe: b083         	sub	sp, #0xc
  3a6200: 9001         	str	r0, [sp, #0x4]
  3a6202: 9801         	ldr	r0, [sp, #0x4]
  3a6204: f7ff ff80    	bl	0x3a6108 <MapVoteLayer::~MapVoteLayer()> @ imm = #-0x100
  3a6208: 9801         	ldr	r0, [sp, #0x4]
  3a620a: f3e1 ff4b    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3e1e96
  3a620e: 9b01         	ldr	r3, [sp, #0x4]
  3a6210: 4618         	mov	r0, r3
  3a6212: b003         	add	sp, #0xc
  3a6214: f85d fb04    	ldr	pc, [sp], #4

// ==== MapVoteLayer::onDone
//      file offset 0x3a6218 (= ELF address; Ghidra 0x3b6218), 64 bytes, Thumb-2
  3a6218: b500         	push	{lr}
  3a621a: b083         	sub	sp, #0xc
  3a621c: 9001         	str	r0, [sp, #0x4]
  3a621e: 9100         	str	r1, [sp]
  3a6220: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x3a624c <MapVoteLayer::onDone(cocos2d::CCObject*)+0x34>
  3a6222: 447a         	add	r2, pc
  3a6224: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x3a6250 <MapVoteLayer::onDone(cocos2d::CCObject*)+0x38>
  3a6226: 58d3         	ldr	r3, [r2, r3]
  3a6228: 681b         	ldr	r3, [r3]
  3a622a: 4618         	mov	r0, r3
  3a622c: 210d         	movs	r1, #0xd
  3a622e: f051 fdc7    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x51b8e
  3a6232: f23a fa3d    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x23a47a
  3a6236: 4603         	mov	r3, r0
  3a6238: 4618         	mov	r0, r3
  3a623a: 4b06         	ldr	r3, [pc, #0x18]         @ 0x3a6254 <MapVoteLayer::onDone(cocos2d::CCObject*)+0x3c>
  3a623c: 447b         	add	r3, pc
  3a623e: 4619         	mov	r1, r3
  3a6240: 2200         	movs	r2, #0x0
  3a6242: f23a fc73    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x23a8e6
  3a6246: b003         	add	sp, #0xc
  3a6248: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3a624b); words below are literal-pool data ---
  3a624c: c7e6         	stm	r7!, {r1, r2, r5, r6, r7}
  3a624e: 0058         	lsls	r0, r3, #0x1
  3a6250: d730         	bvc	0x3a62b4 <MapVoteLayer::onMap1(cocos2d::CCObject*)+0xc> @ imm = #0x60
  3a6252: ffff cba8    	vtbl.8	d28, {d31, fpinst2, mvfr0, mvfr1}, d24
  3a6256: 0042         	lsls	r2, r0, #0x1

// ==== MapVoteLayer::sendMapVote
//      file offset 0x3a6258 (= ELF address; Ghidra 0x3b6258), 80 bytes, Thumb-2
  3a6258: b500         	push	{lr}
  3a625a: b085         	sub	sp, #0x14
  3a625c: 9001         	str	r0, [sp, #0x4]
  3a625e: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x3a629c <MapVoteLayer::sendMapVote()+0x44>
  3a6260: 447a         	add	r2, pc
  3a6262: 4b0f         	ldr	r3, [pc, #0x3c]         @ 0x3a62a0 <MapVoteLayer::sendMapVote()+0x48>
  3a6264: 58d3         	ldr	r3, [r2, r3]
  3a6266: 681b         	ldr	r3, [r3]
  3a6268: 4618         	mov	r0, r3
  3a626a: 210e         	movs	r1, #0xe
  3a626c: f051 fda8    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x51b50
  3a6270: 9b01         	ldr	r3, [sp, #0x4]
  3a6272: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3a6276: 4618         	mov	r0, r3
  3a6278: f73e fd46    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xc1574
  3a627c: 4603         	mov	r3, r0
  3a627e: 9303         	str	r3, [sp, #0xc]
  3a6280: f23a fa16    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x23a42c
  3a6284: 4603         	mov	r3, r0
  3a6286: 4618         	mov	r0, r3
  3a6288: 4b06         	ldr	r3, [pc, #0x18]         @ 0x3a62a4 <MapVoteLayer::sendMapVote()+0x4c>
  3a628a: 447b         	add	r3, pc
  3a628c: 4619         	mov	r1, r3
  3a628e: 9a03         	ldr	r2, [sp, #0xc]
  3a6290: f23a fc4c    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x23a898
  3a6294: b005         	add	sp, #0x14
  3a6296: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3a6299); words below are literal-pool data ---
  3a629a: bf00         	nop
  3a629c: c7a8         	stm	r7!, {r3, r5, r7}
  3a629e: 0058         	lsls	r0, r3, #0x1
  3a62a0: d730         	bvc	0x3a6304 <MapVoteLayer::onMap2(cocos2d::CCObject*)+0x2c> @ imm = #0x60
  3a62a2: ffff cb66    	vtbx.8	d28, {d15, d16, d17, d18}, d22
  3a62a6: 0042         	lsls	r2, r0, #0x1

// ==== MapVoteLayer::onMap1
//      file offset 0x3a62a8 (= ELF address; Ghidra 0x3b62a8), 48 bytes, Thumb-2
  3a62a8: b500         	push	{lr}
  3a62aa: b083         	sub	sp, #0xc
  3a62ac: 9001         	str	r0, [sp, #0x4]
  3a62ae: 9100         	str	r1, [sp]
  3a62b0: 9b01         	ldr	r3, [sp, #0x4]
  3a62b2: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  3a62b6: 9b01         	ldr	r3, [sp, #0x4]
  3a62b8: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3a62bc: 429a         	cmp	r2, r3
  3a62be: d008         	beq	0x3a62d2 <MapVoteLayer::onMap1(cocos2d::CCObject*)+0x2a> @ imm = #0x10
  3a62c0: 9b01         	ldr	r3, [sp, #0x4]
  3a62c2: f8d3 20f0    	ldr.w	r2, [r3, #0xf0]
  3a62c6: 9b01         	ldr	r3, [sp, #0x4]
  3a62c8: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  3a62cc: 9801         	ldr	r0, [sp, #0x4]
  3a62ce: f7ff ffc3    	bl	0x3a6258 <MapVoteLayer::sendMapVote()> @ imm = #-0x7a
  3a62d2: b003         	add	sp, #0xc
  3a62d4: f85d fb04    	ldr	pc, [sp], #4

// ==== MapVoteLayer::onMap2
//      file offset 0x3a62d8 (= ELF address; Ghidra 0x3b62d8), 48 bytes, Thumb-2
  3a62d8: b500         	push	{lr}
  3a62da: b083         	sub	sp, #0xc
  3a62dc: 9001         	str	r0, [sp, #0x4]
  3a62de: 9100         	str	r1, [sp]
  3a62e0: 9b01         	ldr	r3, [sp, #0x4]
  3a62e2: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  3a62e6: 9b01         	ldr	r3, [sp, #0x4]
  3a62e8: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3a62ec: 429a         	cmp	r2, r3
  3a62ee: d008         	beq	0x3a6302 <MapVoteLayer::onMap2(cocos2d::CCObject*)+0x2a> @ imm = #0x10
  3a62f0: 9b01         	ldr	r3, [sp, #0x4]
  3a62f2: f8d3 20f4    	ldr.w	r2, [r3, #0xf4]
  3a62f6: 9b01         	ldr	r3, [sp, #0x4]
  3a62f8: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  3a62fc: 9801         	ldr	r0, [sp, #0x4]
  3a62fe: f7ff ffab    	bl	0x3a6258 <MapVoteLayer::sendMapVote()> @ imm = #-0xaa
  3a6302: b003         	add	sp, #0xc
  3a6304: f85d fb04    	ldr	pc, [sp], #4

// ==== MapVoteLayer::onMap3
//      file offset 0x3a6308 (= ELF address; Ghidra 0x3b6308), 48 bytes, Thumb-2
  3a6308: b500         	push	{lr}
  3a630a: b083         	sub	sp, #0xc
  3a630c: 9001         	str	r0, [sp, #0x4]
  3a630e: 9100         	str	r1, [sp]
  3a6310: 9b01         	ldr	r3, [sp, #0x4]
  3a6312: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  3a6316: 9b01         	ldr	r3, [sp, #0x4]
  3a6318: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3a631c: 429a         	cmp	r2, r3
  3a631e: d008         	beq	0x3a6332 <MapVoteLayer::onMap3(cocos2d::CCObject*)+0x2a> @ imm = #0x10
  3a6320: 9b01         	ldr	r3, [sp, #0x4]
  3a6322: f8d3 20f8    	ldr.w	r2, [r3, #0xf8]
  3a6326: 9b01         	ldr	r3, [sp, #0x4]
  3a6328: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  3a632c: 9801         	ldr	r0, [sp, #0x4]
  3a632e: f7ff ff93    	bl	0x3a6258 <MapVoteLayer::sendMapVote()> @ imm = #-0xda
  3a6332: b003         	add	sp, #0xc
  3a6334: f85d fb04    	ldr	pc, [sp], #4

// ==== MapVoteLayer::updateMaps
//      file offset 0x3a6338 (= ELF address; Ghidra 0x3b6338), 46 bytes, Thumb-2
  3a6338: b084         	sub	sp, #0x10
  3a633a: 9003         	str	r0, [sp, #0xc]
  3a633c: 9102         	str	r1, [sp, #0x8]
  3a633e: 9201         	str	r2, [sp, #0x4]
  3a6340: 9300         	str	r3, [sp]
  3a6342: 9b03         	ldr	r3, [sp, #0xc]
  3a6344: 9a02         	ldr	r2, [sp, #0x8]
  3a6346: f8c3 20ec    	str.w	r2, [r3, #0xec]
  3a634a: 9b03         	ldr	r3, [sp, #0xc]
  3a634c: 9a01         	ldr	r2, [sp, #0x4]
  3a634e: f8c3 20f0    	str.w	r2, [r3, #0xf0]
  3a6352: 9b03         	ldr	r3, [sp, #0xc]
  3a6354: 9a00         	ldr	r2, [sp]
  3a6356: f8c3 20f4    	str.w	r2, [r3, #0xf4]
  3a635a: 9b03         	ldr	r3, [sp, #0xc]
  3a635c: 9a04         	ldr	r2, [sp, #0x10]
  3a635e: f8c3 20f8    	str.w	r2, [r3, #0xf8]
  3a6362: b004         	add	sp, #0x10
  3a6364: 4770         	bx	lr

// ==== MapVoteLayer::updateVotes
//      file offset 0x3a6368 (= ELF address; Ghidra 0x3b6368), 38 bytes, Thumb-2
  3a6368: b084         	sub	sp, #0x10
  3a636a: 9003         	str	r0, [sp, #0xc]
  3a636c: 9102         	str	r1, [sp, #0x8]
  3a636e: 9201         	str	r2, [sp, #0x4]
  3a6370: 9300         	str	r3, [sp]
  3a6372: 9b03         	ldr	r3, [sp, #0xc]
  3a6374: 9a02         	ldr	r2, [sp, #0x8]
  3a6376: f8c3 20fc    	str.w	r2, [r3, #0xfc]
  3a637a: 9b03         	ldr	r3, [sp, #0xc]
  3a637c: 9a01         	ldr	r2, [sp, #0x4]
  3a637e: f8c3 2100    	str.w	r2, [r3, #0x100]
  3a6382: 9b03         	ldr	r3, [sp, #0xc]
  3a6384: 9a00         	ldr	r2, [sp]
  3a6386: f8c3 2104    	str.w	r2, [r3, #0x104]
  3a638a: b004         	add	sp, #0x10
  3a638c: 4770         	bx	lr

// ==== MapVoteLayer::updateMapVote
//      file offset 0x3a6390 (= ELF address; Ghidra 0x3b6390), 2036 bytes, Thumb-2
  3a6390: b570         	push	{r4, r5, r6, lr}
  3a6392: b088         	sub	sp, #0x20
  3a6394: 9001         	str	r0, [sp, #0x4]
  3a6396: f8df 47cc    	ldr.w	r4, [pc, #0x7cc]        @ 0x3a6b64 <MapVoteLayer::updateMapVote()+0x7d4>
  3a639a: 447c         	add	r4, pc
  3a639c: f8df 37c8    	ldr.w	r3, [pc, #0x7c8]        @ 0x3a6b68 <MapVoteLayer::updateMapVote()+0x7d8>
  3a63a0: 58e3         	ldr	r3, [r4, r3]
  3a63a2: 681a         	ldr	r2, [r3]
  3a63a4: 9b01         	ldr	r3, [sp, #0x4]
  3a63a6: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3a63aa: 4610         	mov	r0, r2
  3a63ac: 4619         	mov	r1, r3
  3a63ae: f1f3 feb7    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1f3d6e
  3a63b2: 4603         	mov	r3, r0
  3a63b4: 9305         	str	r3, [sp, #0x14]
  3a63b6: f8df 37b0    	ldr.w	r3, [pc, #0x7b0]        @ 0x3a6b68 <MapVoteLayer::updateMapVote()+0x7d8>
  3a63ba: 58e3         	ldr	r3, [r4, r3]
  3a63bc: 681a         	ldr	r2, [r3]
  3a63be: 9b01         	ldr	r3, [sp, #0x4]
  3a63c0: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3a63c4: 4610         	mov	r0, r2
  3a63c6: 4619         	mov	r1, r3
  3a63c8: f1f3 feaa    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1f3d54
  3a63cc: 4603         	mov	r3, r0
  3a63ce: 9306         	str	r3, [sp, #0x18]
  3a63d0: f8df 3794    	ldr.w	r3, [pc, #0x794]        @ 0x3a6b68 <MapVoteLayer::updateMapVote()+0x7d8>
  3a63d4: 58e3         	ldr	r3, [r4, r3]
  3a63d6: 681a         	ldr	r2, [r3]
  3a63d8: 9b01         	ldr	r3, [sp, #0x4]
  3a63da: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3a63de: 4610         	mov	r0, r2
  3a63e0: 4619         	mov	r1, r3
  3a63e2: f1f3 fe9d    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1f3d3a
  3a63e6: 4603         	mov	r3, r0
  3a63e8: 9307         	str	r3, [sp, #0x1c]
  3a63ea: 9b01         	ldr	r3, [sp, #0x4]
  3a63ec: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3a63f0: 681b         	ldr	r3, [r3]
  3a63f2: f503 73fc    	add.w	r3, r3, #0x1f8
  3a63f6: 681c         	ldr	r4, [r3]
  3a63f8: 9b01         	ldr	r3, [sp, #0x4]
  3a63fa: f8d3 5114    	ldr.w	r5, [r3, #0x114]
  3a63fe: 9805         	ldr	r0, [sp, #0x14]
  3a6400: f1f3 fa92    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1f3524
  3a6404: 4606         	mov	r6, r0
  3a6406: ab02         	add	r3, sp, #0x8
  3a6408: 4618         	mov	r0, r3
  3a640a: f3e3 fff3    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3e3fe6
  3a640e: aa03         	add	r2, sp, #0xc
  3a6410: ab02         	add	r3, sp, #0x8
  3a6412: 4610         	mov	r0, r2
  3a6414: 4631         	mov	r1, r6
  3a6416: 461a         	mov	r2, r3
  3a6418: f010 f322    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x410644
  3a641c: aa04         	add	r2, sp, #0x10
  3a641e: ab03         	add	r3, sp, #0xc
  3a6420: 4610         	mov	r0, r2
  3a6422: 4619         	mov	r1, r3
  3a6424: f7fe fc3a    	bl	0x3a4c9c <PlayerLobbyOnlineGP::updateReadyLabel()+0xf24> @ imm = #-0x178c
  3a6428: ab04         	add	r3, sp, #0x10
  3a642a: 4618         	mov	r0, r3
  3a642c: f00e f768    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x40eed0
  3a6430: 4603         	mov	r3, r0
  3a6432: 4628         	mov	r0, r5
  3a6434: 4619         	mov	r1, r3
  3a6436: 47a0         	blx	r4
  3a6438: ab04         	add	r3, sp, #0x10
  3a643a: 4618         	mov	r0, r3
  3a643c: f00f f26a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40f4d4
  3a6440: ab03         	add	r3, sp, #0xc
  3a6442: 4618         	mov	r0, r3
  3a6444: f00f f266    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40f4cc
  3a6448: ab02         	add	r3, sp, #0x8
  3a644a: 4618         	mov	r0, r3
  3a644c: f3e3 ffd6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e3fac
  3a6450: 9b01         	ldr	r3, [sp, #0x4]
  3a6452: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3a6456: 681b         	ldr	r3, [r3]
  3a6458: f503 73fc    	add.w	r3, r3, #0x1f8
  3a645c: 681c         	ldr	r4, [r3]
  3a645e: 9b01         	ldr	r3, [sp, #0x4]
  3a6460: f8d3 5118    	ldr.w	r5, [r3, #0x118]
  3a6464: 9806         	ldr	r0, [sp, #0x18]
  3a6466: f1f3 fa5f    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1f34be
  3a646a: 4606         	mov	r6, r0
  3a646c: ab02         	add	r3, sp, #0x8
  3a646e: 4618         	mov	r0, r3
  3a6470: f3e3 ffc0    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3e3f80
  3a6474: aa03         	add	r2, sp, #0xc
  3a6476: ab02         	add	r3, sp, #0x8
  3a6478: 4610         	mov	r0, r2
  3a647a: 4631         	mov	r1, r6
  3a647c: 461a         	mov	r2, r3
  3a647e: f010 f2ef    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4105de
  3a6482: aa04         	add	r2, sp, #0x10
  3a6484: ab03         	add	r3, sp, #0xc
  3a6486: 4610         	mov	r0, r2
  3a6488: 4619         	mov	r1, r3
  3a648a: f7fe fc07    	bl	0x3a4c9c <PlayerLobbyOnlineGP::updateReadyLabel()+0xf24> @ imm = #-0x17f2
  3a648e: ab04         	add	r3, sp, #0x10
  3a6490: 4618         	mov	r0, r3
  3a6492: f00e f735    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x40ee6a
  3a6496: 4603         	mov	r3, r0
  3a6498: 4628         	mov	r0, r5
  3a649a: 4619         	mov	r1, r3
  3a649c: 47a0         	blx	r4
  3a649e: ab04         	add	r3, sp, #0x10
  3a64a0: 4618         	mov	r0, r3
  3a64a2: f00f f237    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40f46e
  3a64a6: ab03         	add	r3, sp, #0xc
  3a64a8: 4618         	mov	r0, r3
  3a64aa: f00f f233    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40f466
  3a64ae: ab02         	add	r3, sp, #0x8
  3a64b0: 4618         	mov	r0, r3
  3a64b2: f3e3 ffa3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e3f46
  3a64b6: 9b01         	ldr	r3, [sp, #0x4]
  3a64b8: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3a64bc: 681b         	ldr	r3, [r3]
  3a64be: f503 73fc    	add.w	r3, r3, #0x1f8
  3a64c2: 681c         	ldr	r4, [r3]
  3a64c4: 9b01         	ldr	r3, [sp, #0x4]
  3a64c6: f8d3 511c    	ldr.w	r5, [r3, #0x11c]
  3a64ca: 9807         	ldr	r0, [sp, #0x1c]
  3a64cc: f1f3 fa2c    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1f3458
  3a64d0: 4606         	mov	r6, r0
  3a64d2: ab02         	add	r3, sp, #0x8
  3a64d4: 4618         	mov	r0, r3
  3a64d6: f3e3 ff8d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3e3f1a
  3a64da: aa03         	add	r2, sp, #0xc
  3a64dc: ab02         	add	r3, sp, #0x8
  3a64de: 4610         	mov	r0, r2
  3a64e0: 4631         	mov	r1, r6
  3a64e2: 461a         	mov	r2, r3
  3a64e4: f010 f2bc    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x410578
  3a64e8: aa04         	add	r2, sp, #0x10
  3a64ea: ab03         	add	r3, sp, #0xc
  3a64ec: 4610         	mov	r0, r2
  3a64ee: 4619         	mov	r1, r3
  3a64f0: f7fe fbd4    	bl	0x3a4c9c <PlayerLobbyOnlineGP::updateReadyLabel()+0xf24> @ imm = #-0x1858
  3a64f4: ab04         	add	r3, sp, #0x10
  3a64f6: 4618         	mov	r0, r3
  3a64f8: f00e f702    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x40ee04
  3a64fc: 4603         	mov	r3, r0
  3a64fe: 4628         	mov	r0, r5
  3a6500: 4619         	mov	r1, r3
  3a6502: 47a0         	blx	r4
  3a6504: ab04         	add	r3, sp, #0x10
  3a6506: 4618         	mov	r0, r3
  3a6508: f00f f204    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40f408
  3a650c: ab03         	add	r3, sp, #0xc
  3a650e: 4618         	mov	r0, r3
  3a6510: f00f f200    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40f400
  3a6514: ab02         	add	r3, sp, #0x8
  3a6516: 4618         	mov	r0, r3
  3a6518: f3e3 ff70    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e3ee0
  3a651c: 9b01         	ldr	r3, [sp, #0x4]
  3a651e: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3a6522: 681b         	ldr	r3, [r3]
  3a6524: f503 73fc    	add.w	r3, r3, #0x1f8
  3a6528: 681c         	ldr	r4, [r3]
  3a652a: 9b01         	ldr	r3, [sp, #0x4]
  3a652c: f8d3 5108    	ldr.w	r5, [r3, #0x108]
  3a6530: 9b01         	ldr	r3, [sp, #0x4]
  3a6532: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3a6536: f8df 2634    	ldr.w	r2, [pc, #0x634]        @ 0x3a6b6c <MapVoteLayer::updateMapVote()+0x7dc>
  3a653a: 447a         	add	r2, pc
  3a653c: 4610         	mov	r0, r2
  3a653e: 4619         	mov	r1, r3
  3a6540: f1f3 fae6    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1f35cc
  3a6544: 4603         	mov	r3, r0
  3a6546: 4618         	mov	r0, r3
  3a6548: f1f3 f9ee    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1f33dc
  3a654c: 4603         	mov	r3, r0
  3a654e: 4628         	mov	r0, r5
  3a6550: 4619         	mov	r1, r3
  3a6552: 47a0         	blx	r4
  3a6554: 9b01         	ldr	r3, [sp, #0x4]
  3a6556: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3a655a: 681b         	ldr	r3, [r3]
  3a655c: f503 73fc    	add.w	r3, r3, #0x1f8
  3a6560: 681c         	ldr	r4, [r3]
  3a6562: 9b01         	ldr	r3, [sp, #0x4]
  3a6564: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  3a6568: 9b01         	ldr	r3, [sp, #0x4]
  3a656a: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  3a656e: f8df 2600    	ldr.w	r2, [pc, #0x600]        @ 0x3a6b70 <MapVoteLayer::updateMapVote()+0x7e0>
  3a6572: 447a         	add	r2, pc
  3a6574: 4610         	mov	r0, r2
  3a6576: 4619         	mov	r1, r3
  3a6578: f1f3 faca    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1f3594
  3a657c: 4603         	mov	r3, r0
  3a657e: 4618         	mov	r0, r3
  3a6580: f1f3 f9d2    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1f33a4
  3a6584: 4603         	mov	r3, r0
  3a6586: 4628         	mov	r0, r5
  3a6588: 4619         	mov	r1, r3
  3a658a: 47a0         	blx	r4
  3a658c: 9b01         	ldr	r3, [sp, #0x4]
  3a658e: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3a6592: 681b         	ldr	r3, [r3]
  3a6594: f503 73fc    	add.w	r3, r3, #0x1f8
  3a6598: 681c         	ldr	r4, [r3]
  3a659a: 9b01         	ldr	r3, [sp, #0x4]
  3a659c: f8d3 5110    	ldr.w	r5, [r3, #0x110]
  3a65a0: 9b01         	ldr	r3, [sp, #0x4]
  3a65a2: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  3a65a6: f8df 25cc    	ldr.w	r2, [pc, #0x5cc]        @ 0x3a6b74 <MapVoteLayer::updateMapVote()+0x7e4>
  3a65aa: 447a         	add	r2, pc
  3a65ac: 4610         	mov	r0, r2
  3a65ae: 4619         	mov	r1, r3
  3a65b0: f1f3 faae    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1f355c
  3a65b4: 4603         	mov	r3, r0
  3a65b6: 4618         	mov	r0, r3
  3a65b8: f1f3 f9b6    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1f336c
  3a65bc: 4603         	mov	r3, r0
  3a65be: 4628         	mov	r0, r5
  3a65c0: 4619         	mov	r1, r3
  3a65c2: 47a0         	blx	r4
  3a65c4: 9b01         	ldr	r3, [sp, #0x4]
  3a65c6: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3a65ca: f8df 25ac    	ldr.w	r2, [pc, #0x5ac]        @ 0x3a6b78 <MapVoteLayer::updateMapVote()+0x7e8>
  3a65ce: 447a         	add	r2, pc
  3a65d0: 4610         	mov	r0, r2
  3a65d2: 4619         	mov	r1, r3
  3a65d4: f1f3 fa9c    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1f3538
  3a65d8: 4603         	mov	r3, r0
  3a65da: 9305         	str	r3, [sp, #0x14]
  3a65dc: 9b01         	ldr	r3, [sp, #0x4]
  3a65de: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3a65e2: f8df 2598    	ldr.w	r2, [pc, #0x598]        @ 0x3a6b7c <MapVoteLayer::updateMapVote()+0x7ec>
  3a65e6: 447a         	add	r2, pc
  3a65e8: 4610         	mov	r0, r2
  3a65ea: 4619         	mov	r1, r3
  3a65ec: f1f3 fa90    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1f3520
  3a65f0: 4603         	mov	r3, r0
  3a65f2: 9306         	str	r3, [sp, #0x18]
  3a65f4: 9b01         	ldr	r3, [sp, #0x4]
  3a65f6: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3a65fa: f8df 2584    	ldr.w	r2, [pc, #0x584]        @ 0x3a6b80 <MapVoteLayer::updateMapVote()+0x7f0>
  3a65fe: 447a         	add	r2, pc
  3a6600: 4610         	mov	r0, r2
  3a6602: 4619         	mov	r1, r3
  3a6604: f1f3 fa84    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1f3508
  3a6608: 4603         	mov	r3, r0
  3a660a: 9307         	str	r3, [sp, #0x1c]
  3a660c: 9b01         	ldr	r3, [sp, #0x4]
  3a660e: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  3a6612: 681b         	ldr	r3, [r3]
  3a6614: f503 7305    	add.w	r3, r3, #0x214
  3a6618: 681c         	ldr	r4, [r3]
  3a661a: 9b01         	ldr	r3, [sp, #0x4]
  3a661c: f8d3 512c    	ldr.w	r5, [r3, #0x12c]
  3a6620: f236 f9f2    	bl	0x5dca08 <cocos2d::CCSpriteFrameCache::sharedSpriteFrameCache()> @ imm = #0x2363e4
  3a6624: 4606         	mov	r6, r0
  3a6626: 9805         	ldr	r0, [sp, #0x14]
  3a6628: f1f3 f97e    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1f32fc
  3a662c: 4603         	mov	r3, r0
  3a662e: 4630         	mov	r0, r6
  3a6630: 4619         	mov	r1, r3
  3a6632: f237 fd89    	bl	0x5de148 <cocos2d::CCSpriteFrameCache::spriteFrameByName(char const*)> @ imm = #0x237b12
  3a6636: 4603         	mov	r3, r0
  3a6638: 4628         	mov	r0, r5
  3a663a: 4619         	mov	r1, r3
  3a663c: 47a0         	blx	r4
  3a663e: 9b01         	ldr	r3, [sp, #0x4]
  3a6640: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  3a6644: 681b         	ldr	r3, [r3]
  3a6646: f503 7305    	add.w	r3, r3, #0x214
  3a664a: 681c         	ldr	r4, [r3]
  3a664c: 9b01         	ldr	r3, [sp, #0x4]
  3a664e: f8d3 5130    	ldr.w	r5, [r3, #0x130]
  3a6652: f236 f9d9    	bl	0x5dca08 <cocos2d::CCSpriteFrameCache::sharedSpriteFrameCache()> @ imm = #0x2363b2
  3a6656: 4606         	mov	r6, r0
  3a6658: 9806         	ldr	r0, [sp, #0x18]
  3a665a: f1f3 f965    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1f32ca
  3a665e: 4603         	mov	r3, r0
  3a6660: 4630         	mov	r0, r6
  3a6662: 4619         	mov	r1, r3
  3a6664: f237 fd70    	bl	0x5de148 <cocos2d::CCSpriteFrameCache::spriteFrameByName(char const*)> @ imm = #0x237ae0
  3a6668: 4603         	mov	r3, r0
  3a666a: 4628         	mov	r0, r5
  3a666c: 4619         	mov	r1, r3
  3a666e: 47a0         	blx	r4
  3a6670: 9b01         	ldr	r3, [sp, #0x4]
  3a6672: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  3a6676: 681b         	ldr	r3, [r3]
  3a6678: f503 7305    	add.w	r3, r3, #0x214
  3a667c: 681c         	ldr	r4, [r3]
  3a667e: 9b01         	ldr	r3, [sp, #0x4]
  3a6680: f8d3 5134    	ldr.w	r5, [r3, #0x134]
  3a6684: f236 f9c0    	bl	0x5dca08 <cocos2d::CCSpriteFrameCache::sharedSpriteFrameCache()> @ imm = #0x236380
  3a6688: 4606         	mov	r6, r0
  3a668a: 9807         	ldr	r0, [sp, #0x1c]
  3a668c: f1f3 f94c    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1f3298
  3a6690: 4603         	mov	r3, r0
  3a6692: 4630         	mov	r0, r6
  3a6694: 4619         	mov	r1, r3
  3a6696: f237 fd57    	bl	0x5de148 <cocos2d::CCSpriteFrameCache::spriteFrameByName(char const*)> @ imm = #0x237aae
  3a669a: 4603         	mov	r3, r0
  3a669c: 4628         	mov	r0, r5
  3a669e: 4619         	mov	r1, r3
  3a66a0: 47a0         	blx	r4
  3a66a2: 9b01         	ldr	r3, [sp, #0x4]
  3a66a4: f8d3 20ec    	ldr.w	r2, [r3, #0xec]
  3a66a8: 9b01         	ldr	r3, [sp, #0x4]
  3a66aa: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3a66ae: 429a         	cmp	r2, r3
  3a66b0: d120         	bne	0x3a66f4 <MapVoteLayer::updateMapVote()+0x364> @ imm = #0x40
  3a66b2: 9b01         	ldr	r3, [sp, #0x4]
  3a66b4: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3a66b8: 681b         	ldr	r3, [r3]
  3a66ba: f503 7308    	add.w	r3, r3, #0x220
  3a66be: 681c         	ldr	r4, [r3]
  3a66c0: 9b01         	ldr	r3, [sp, #0x4]
  3a66c2: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3a66c6: 461d         	mov	r5, r3
  3a66c8: 2096         	movs	r0, #0x96
  3a66ca: 21ff         	movs	r1, #0xff
  3a66cc: 2296         	movs	r2, #0x96
  3a66ce: f7fd fc1f    	bl	0x3a3f10 <PlayerLobbyOnlineGP::updateReadyLabel()+0x198> @ imm = #-0x27c2
  3a66d2: 4603         	mov	r3, r0
  3a66d4: 461a         	mov	r2, r3
  3a66d6: f88d 2010    	strb.w	r2, [sp, #0x10]
  3a66da: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3a66de: f88d 2011    	strb.w	r2, [sp, #0x11]
  3a66e2: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3a66e6: f88d 3012    	strb.w	r3, [sp, #0x12]
  3a66ea: ab04         	add	r3, sp, #0x10
  3a66ec: 4628         	mov	r0, r5
  3a66ee: 4619         	mov	r1, r3
  3a66f0: 47a0         	blx	r4
  3a66f2: e01f         	b	0x3a6734 <MapVoteLayer::updateMapVote()+0x3a4> @ imm = #0x3e
  3a66f4: 9b01         	ldr	r3, [sp, #0x4]
  3a66f6: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3a66fa: 681b         	ldr	r3, [r3]
  3a66fc: f503 7308    	add.w	r3, r3, #0x220
  3a6700: 681c         	ldr	r4, [r3]
  3a6702: 9b01         	ldr	r3, [sp, #0x4]
  3a6704: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3a6708: 461d         	mov	r5, r3
  3a670a: 20ff         	movs	r0, #0xff
  3a670c: 21ff         	movs	r1, #0xff
  3a670e: 22ff         	movs	r2, #0xff
  3a6710: f7fd fbfe    	bl	0x3a3f10 <PlayerLobbyOnlineGP::updateReadyLabel()+0x198> @ imm = #-0x2804
  3a6714: 4603         	mov	r3, r0
  3a6716: 461a         	mov	r2, r3
  3a6718: f88d 2010    	strb.w	r2, [sp, #0x10]
  3a671c: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3a6720: f88d 2011    	strb.w	r2, [sp, #0x11]
  3a6724: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3a6728: f88d 3012    	strb.w	r3, [sp, #0x12]
  3a672c: ab04         	add	r3, sp, #0x10
  3a672e: 4628         	mov	r0, r5
  3a6730: 4619         	mov	r1, r3
  3a6732: 47a0         	blx	r4
  3a6734: 9b01         	ldr	r3, [sp, #0x4]
  3a6736: f8d3 20ec    	ldr.w	r2, [r3, #0xec]
  3a673a: 9b01         	ldr	r3, [sp, #0x4]
  3a673c: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3a6740: 429a         	cmp	r2, r3
  3a6742: d120         	bne	0x3a6786 <MapVoteLayer::updateMapVote()+0x3f6> @ imm = #0x40
  3a6744: 9b01         	ldr	r3, [sp, #0x4]
  3a6746: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3a674a: 681b         	ldr	r3, [r3]
  3a674c: f503 7308    	add.w	r3, r3, #0x220
  3a6750: 681c         	ldr	r4, [r3]
  3a6752: 9b01         	ldr	r3, [sp, #0x4]
  3a6754: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3a6758: 461d         	mov	r5, r3
  3a675a: 2096         	movs	r0, #0x96
  3a675c: 21ff         	movs	r1, #0xff
  3a675e: 2296         	movs	r2, #0x96
  3a6760: f7fd fbd6    	bl	0x3a3f10 <PlayerLobbyOnlineGP::updateReadyLabel()+0x198> @ imm = #-0x2854
  3a6764: 4603         	mov	r3, r0
  3a6766: 461a         	mov	r2, r3
  3a6768: f88d 2010    	strb.w	r2, [sp, #0x10]
  3a676c: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3a6770: f88d 2011    	strb.w	r2, [sp, #0x11]
  3a6774: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3a6778: f88d 3012    	strb.w	r3, [sp, #0x12]
  3a677c: ab04         	add	r3, sp, #0x10
  3a677e: 4628         	mov	r0, r5
  3a6780: 4619         	mov	r1, r3
  3a6782: 47a0         	blx	r4
  3a6784: e01f         	b	0x3a67c6 <MapVoteLayer::updateMapVote()+0x436> @ imm = #0x3e
  3a6786: 9b01         	ldr	r3, [sp, #0x4]
  3a6788: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3a678c: 681b         	ldr	r3, [r3]
  3a678e: f503 7308    	add.w	r3, r3, #0x220
  3a6792: 681c         	ldr	r4, [r3]
  3a6794: 9b01         	ldr	r3, [sp, #0x4]
  3a6796: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3a679a: 461d         	mov	r5, r3
  3a679c: 20ff         	movs	r0, #0xff
  3a679e: 21ff         	movs	r1, #0xff
  3a67a0: 22ff         	movs	r2, #0xff
  3a67a2: f7fd fbb5    	bl	0x3a3f10 <PlayerLobbyOnlineGP::updateReadyLabel()+0x198> @ imm = #-0x2896
  3a67a6: 4603         	mov	r3, r0
  3a67a8: 461a         	mov	r2, r3
  3a67aa: f88d 2010    	strb.w	r2, [sp, #0x10]
  3a67ae: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3a67b2: f88d 2011    	strb.w	r2, [sp, #0x11]
  3a67b6: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3a67ba: f88d 3012    	strb.w	r3, [sp, #0x12]
  3a67be: ab04         	add	r3, sp, #0x10
  3a67c0: 4628         	mov	r0, r5
  3a67c2: 4619         	mov	r1, r3
  3a67c4: 47a0         	blx	r4
  3a67c6: 9b01         	ldr	r3, [sp, #0x4]
  3a67c8: f8d3 20ec    	ldr.w	r2, [r3, #0xec]
  3a67cc: 9b01         	ldr	r3, [sp, #0x4]
  3a67ce: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3a67d2: 429a         	cmp	r2, r3
  3a67d4: d120         	bne	0x3a6818 <MapVoteLayer::updateMapVote()+0x488> @ imm = #0x40
  3a67d6: 9b01         	ldr	r3, [sp, #0x4]
  3a67d8: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3a67dc: 681b         	ldr	r3, [r3]
  3a67de: f503 7308    	add.w	r3, r3, #0x220
  3a67e2: 681c         	ldr	r4, [r3]
  3a67e4: 9b01         	ldr	r3, [sp, #0x4]
  3a67e6: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3a67ea: 461d         	mov	r5, r3
  3a67ec: 2096         	movs	r0, #0x96
  3a67ee: 21ff         	movs	r1, #0xff
  3a67f0: 2296         	movs	r2, #0x96
  3a67f2: f7fd fb8d    	bl	0x3a3f10 <PlayerLobbyOnlineGP::updateReadyLabel()+0x198> @ imm = #-0x28e6
  3a67f6: 4603         	mov	r3, r0
  3a67f8: 461a         	mov	r2, r3
  3a67fa: f88d 2010    	strb.w	r2, [sp, #0x10]
  3a67fe: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3a6802: f88d 2011    	strb.w	r2, [sp, #0x11]
  3a6806: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3a680a: f88d 3012    	strb.w	r3, [sp, #0x12]
  3a680e: ab04         	add	r3, sp, #0x10
  3a6810: 4628         	mov	r0, r5
  3a6812: 4619         	mov	r1, r3
  3a6814: 47a0         	blx	r4
  3a6816: e01f         	b	0x3a6858 <MapVoteLayer::updateMapVote()+0x4c8> @ imm = #0x3e
  3a6818: 9b01         	ldr	r3, [sp, #0x4]
  3a681a: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3a681e: 681b         	ldr	r3, [r3]
  3a6820: f503 7308    	add.w	r3, r3, #0x220
  3a6824: 681c         	ldr	r4, [r3]
  3a6826: 9b01         	ldr	r3, [sp, #0x4]
  3a6828: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3a682c: 461d         	mov	r5, r3
  3a682e: 20ff         	movs	r0, #0xff
  3a6830: 21ff         	movs	r1, #0xff
  3a6832: 22ff         	movs	r2, #0xff
  3a6834: f7fd fb6c    	bl	0x3a3f10 <PlayerLobbyOnlineGP::updateReadyLabel()+0x198> @ imm = #-0x2928
  3a6838: 4603         	mov	r3, r0
  3a683a: 461a         	mov	r2, r3
  3a683c: f88d 2010    	strb.w	r2, [sp, #0x10]
  3a6840: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3a6844: f88d 2011    	strb.w	r2, [sp, #0x11]
  3a6848: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3a684c: f88d 3012    	strb.w	r3, [sp, #0x12]
  3a6850: ab04         	add	r3, sp, #0x10
  3a6852: 4628         	mov	r0, r5
  3a6854: 4619         	mov	r1, r3
  3a6856: 47a0         	blx	r4
  3a6858: 9b01         	ldr	r3, [sp, #0x4]
  3a685a: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  3a685e: 9b01         	ldr	r3, [sp, #0x4]
  3a6860: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3a6864: 429a         	cmp	r2, r3
  3a6866: d134         	bne	0x3a68d2 <MapVoteLayer::updateMapVote()+0x542> @ imm = #0x68
  3a6868: 9b01         	ldr	r3, [sp, #0x4]
  3a686a: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3a686e: 681b         	ldr	r3, [r3]
  3a6870: f503 73d2    	add.w	r3, r3, #0x1a4
  3a6874: 681b         	ldr	r3, [r3]
  3a6876: 9a01         	ldr	r2, [sp, #0x4]
  3a6878: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  3a687c: 4610         	mov	r0, r2
  3a687e: 21ff         	movs	r1, #0xff
  3a6880: 4798         	blx	r3
  3a6882: 9b01         	ldr	r3, [sp, #0x4]
  3a6884: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3a6888: 681b         	ldr	r3, [r3]
  3a688a: f503 73d2    	add.w	r3, r3, #0x1a4
  3a688e: 681b         	ldr	r3, [r3]
  3a6890: 9a01         	ldr	r2, [sp, #0x4]
  3a6892: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3a6896: 4610         	mov	r0, r2
  3a6898: 21ff         	movs	r1, #0xff
  3a689a: 4798         	blx	r3
  3a689c: 9b01         	ldr	r3, [sp, #0x4]
  3a689e: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3a68a2: 681b         	ldr	r3, [r3]
  3a68a4: f503 7302    	add.w	r3, r3, #0x208
  3a68a8: 681b         	ldr	r3, [r3]
  3a68aa: 9a01         	ldr	r2, [sp, #0x4]
  3a68ac: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  3a68b0: 4610         	mov	r0, r2
  3a68b2: 21ff         	movs	r1, #0xff
  3a68b4: 4798         	blx	r3
  3a68b6: 9b01         	ldr	r3, [sp, #0x4]
  3a68b8: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  3a68bc: 681b         	ldr	r3, [r3]
  3a68be: f503 73d2    	add.w	r3, r3, #0x1a4
  3a68c2: 681b         	ldr	r3, [r3]
  3a68c4: 9a01         	ldr	r2, [sp, #0x4]
  3a68c6: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  3a68ca: 4610         	mov	r0, r2
  3a68cc: 21ff         	movs	r1, #0xff
  3a68ce: 4798         	blx	r3
  3a68d0: e033         	b	0x3a693a <MapVoteLayer::updateMapVote()+0x5aa> @ imm = #0x66
  3a68d2: 9b01         	ldr	r3, [sp, #0x4]
  3a68d4: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3a68d8: 681b         	ldr	r3, [r3]
  3a68da: f503 73d2    	add.w	r3, r3, #0x1a4
  3a68de: 681b         	ldr	r3, [r3]
  3a68e0: 9a01         	ldr	r2, [sp, #0x4]
  3a68e2: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3a68e6: 4610         	mov	r0, r2
  3a68e8: 2164         	movs	r1, #0x64
  3a68ea: 4798         	blx	r3
  3a68ec: 9b01         	ldr	r3, [sp, #0x4]
  3a68ee: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3a68f2: 681b         	ldr	r3, [r3]
  3a68f4: f503 73d2    	add.w	r3, r3, #0x1a4
  3a68f8: 681b         	ldr	r3, [r3]
  3a68fa: 9a01         	ldr	r2, [sp, #0x4]
  3a68fc: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  3a6900: 4610         	mov	r0, r2
  3a6902: 2164         	movs	r1, #0x64
  3a6904: 4798         	blx	r3
  3a6906: 9b01         	ldr	r3, [sp, #0x4]
  3a6908: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3a690c: 681b         	ldr	r3, [r3]
  3a690e: f503 7302    	add.w	r3, r3, #0x208
  3a6912: 681b         	ldr	r3, [r3]
  3a6914: 9a01         	ldr	r2, [sp, #0x4]
  3a6916: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  3a691a: 4610         	mov	r0, r2
  3a691c: 2164         	movs	r1, #0x64
  3a691e: 4798         	blx	r3
  3a6920: 9b01         	ldr	r3, [sp, #0x4]
  3a6922: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  3a6926: 681b         	ldr	r3, [r3]
  3a6928: f503 73d2    	add.w	r3, r3, #0x1a4
  3a692c: 681b         	ldr	r3, [r3]
  3a692e: 9a01         	ldr	r2, [sp, #0x4]
  3a6930: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  3a6934: 4610         	mov	r0, r2
  3a6936: 2164         	movs	r1, #0x64
  3a6938: 4798         	blx	r3
  3a693a: 9b01         	ldr	r3, [sp, #0x4]
  3a693c: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  3a6940: 9b01         	ldr	r3, [sp, #0x4]
  3a6942: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3a6946: 429a         	cmp	r2, r3
  3a6948: d134         	bne	0x3a69b4 <MapVoteLayer::updateMapVote()+0x624> @ imm = #0x68
  3a694a: 9b01         	ldr	r3, [sp, #0x4]
  3a694c: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3a6950: 681b         	ldr	r3, [r3]
  3a6952: f503 73d2    	add.w	r3, r3, #0x1a4
  3a6956: 681b         	ldr	r3, [r3]
  3a6958: 9a01         	ldr	r2, [sp, #0x4]
  3a695a: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3a695e: 4610         	mov	r0, r2
  3a6960: 21ff         	movs	r1, #0xff
  3a6962: 4798         	blx	r3
  3a6964: 9b01         	ldr	r3, [sp, #0x4]
  3a6966: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3a696a: 681b         	ldr	r3, [r3]
  3a696c: f503 73d2    	add.w	r3, r3, #0x1a4
  3a6970: 681b         	ldr	r3, [r3]
  3a6972: 9a01         	ldr	r2, [sp, #0x4]
  3a6974: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3a6978: 4610         	mov	r0, r2
  3a697a: 21ff         	movs	r1, #0xff
  3a697c: 4798         	blx	r3
  3a697e: 9b01         	ldr	r3, [sp, #0x4]
  3a6980: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3a6984: 681b         	ldr	r3, [r3]
  3a6986: f503 7302    	add.w	r3, r3, #0x208
  3a698a: 681b         	ldr	r3, [r3]
  3a698c: 9a01         	ldr	r2, [sp, #0x4]
  3a698e: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  3a6992: 4610         	mov	r0, r2
  3a6994: 21ff         	movs	r1, #0xff
  3a6996: 4798         	blx	r3
  3a6998: 9b01         	ldr	r3, [sp, #0x4]
  3a699a: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  3a699e: 681b         	ldr	r3, [r3]
  3a69a0: f503 73d2    	add.w	r3, r3, #0x1a4
  3a69a4: 681b         	ldr	r3, [r3]
  3a69a6: 9a01         	ldr	r2, [sp, #0x4]
  3a69a8: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  3a69ac: 4610         	mov	r0, r2
  3a69ae: 21ff         	movs	r1, #0xff
  3a69b0: 4798         	blx	r3
  3a69b2: e033         	b	0x3a6a1c <MapVoteLayer::updateMapVote()+0x68c> @ imm = #0x66
  3a69b4: 9b01         	ldr	r3, [sp, #0x4]
  3a69b6: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3a69ba: 681b         	ldr	r3, [r3]
  3a69bc: f503 73d2    	add.w	r3, r3, #0x1a4
  3a69c0: 681b         	ldr	r3, [r3]
  3a69c2: 9a01         	ldr	r2, [sp, #0x4]
  3a69c4: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3a69c8: 4610         	mov	r0, r2
  3a69ca: 2164         	movs	r1, #0x64
  3a69cc: 4798         	blx	r3
  3a69ce: 9b01         	ldr	r3, [sp, #0x4]
  3a69d0: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3a69d4: 681b         	ldr	r3, [r3]
  3a69d6: f503 73d2    	add.w	r3, r3, #0x1a4
  3a69da: 681b         	ldr	r3, [r3]
  3a69dc: 9a01         	ldr	r2, [sp, #0x4]
  3a69de: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3a69e2: 4610         	mov	r0, r2
  3a69e4: 2164         	movs	r1, #0x64
  3a69e6: 4798         	blx	r3
  3a69e8: 9b01         	ldr	r3, [sp, #0x4]
  3a69ea: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3a69ee: 681b         	ldr	r3, [r3]
  3a69f0: f503 7302    	add.w	r3, r3, #0x208
  3a69f4: 681b         	ldr	r3, [r3]
  3a69f6: 9a01         	ldr	r2, [sp, #0x4]
  3a69f8: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  3a69fc: 4610         	mov	r0, r2
  3a69fe: 2164         	movs	r1, #0x64
  3a6a00: 4798         	blx	r3
  3a6a02: 9b01         	ldr	r3, [sp, #0x4]
  3a6a04: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  3a6a08: 681b         	ldr	r3, [r3]
  3a6a0a: f503 73d2    	add.w	r3, r3, #0x1a4
  3a6a0e: 681b         	ldr	r3, [r3]
  3a6a10: 9a01         	ldr	r2, [sp, #0x4]
  3a6a12: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  3a6a16: 4610         	mov	r0, r2
  3a6a18: 2164         	movs	r1, #0x64
  3a6a1a: 4798         	blx	r3
  3a6a1c: 9b01         	ldr	r3, [sp, #0x4]
  3a6a1e: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  3a6a22: 9b01         	ldr	r3, [sp, #0x4]
  3a6a24: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3a6a28: 429a         	cmp	r2, r3
  3a6a2a: d134         	bne	0x3a6a96 <MapVoteLayer::updateMapVote()+0x706> @ imm = #0x68
  3a6a2c: 9b01         	ldr	r3, [sp, #0x4]
  3a6a2e: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3a6a32: 681b         	ldr	r3, [r3]
  3a6a34: f503 73d2    	add.w	r3, r3, #0x1a4
  3a6a38: 681b         	ldr	r3, [r3]
  3a6a3a: 9a01         	ldr	r2, [sp, #0x4]
  3a6a3c: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  3a6a40: 4610         	mov	r0, r2
  3a6a42: 21ff         	movs	r1, #0xff
  3a6a44: 4798         	blx	r3
  3a6a46: 9b01         	ldr	r3, [sp, #0x4]
  3a6a48: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3a6a4c: 681b         	ldr	r3, [r3]
  3a6a4e: f503 73d2    	add.w	r3, r3, #0x1a4
  3a6a52: 681b         	ldr	r3, [r3]
  3a6a54: 9a01         	ldr	r2, [sp, #0x4]
  3a6a56: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  3a6a5a: 4610         	mov	r0, r2
  3a6a5c: 21ff         	movs	r1, #0xff
  3a6a5e: 4798         	blx	r3
  3a6a60: 9b01         	ldr	r3, [sp, #0x4]
  3a6a62: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3a6a66: 681b         	ldr	r3, [r3]
  3a6a68: f503 7302    	add.w	r3, r3, #0x208
  3a6a6c: 681b         	ldr	r3, [r3]
  3a6a6e: 9a01         	ldr	r2, [sp, #0x4]
  3a6a70: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  3a6a74: 4610         	mov	r0, r2
  3a6a76: 21ff         	movs	r1, #0xff
  3a6a78: 4798         	blx	r3
  3a6a7a: 9b01         	ldr	r3, [sp, #0x4]
  3a6a7c: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  3a6a80: 681b         	ldr	r3, [r3]
  3a6a82: f503 73d2    	add.w	r3, r3, #0x1a4
  3a6a86: 681b         	ldr	r3, [r3]
  3a6a88: 9a01         	ldr	r2, [sp, #0x4]
  3a6a8a: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  3a6a8e: 4610         	mov	r0, r2
  3a6a90: 21ff         	movs	r1, #0xff
  3a6a92: 4798         	blx	r3
  3a6a94: e064         	b	0x3a6b60 <MapVoteLayer::updateMapVote()+0x7d0> @ imm = #0xc8
  3a6a96: 9b01         	ldr	r3, [sp, #0x4]
  3a6a98: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3a6a9c: 681b         	ldr	r3, [r3]
  3a6a9e: f503 73d2    	add.w	r3, r3, #0x1a4
  3a6aa2: 681b         	ldr	r3, [r3]
  3a6aa4: 9a01         	ldr	r2, [sp, #0x4]
  3a6aa6: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  3a6aaa: 4610         	mov	r0, r2
  3a6aac: 2164         	movs	r1, #0x64
  3a6aae: 4798         	blx	r3
  3a6ab0: 9b01         	ldr	r3, [sp, #0x4]
  3a6ab2: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3a6ab6: 681b         	ldr	r3, [r3]
  3a6ab8: f503 73d2    	add.w	r3, r3, #0x1a4
  3a6abc: 681b         	ldr	r3, [r3]
  3a6abe: 9a01         	ldr	r2, [sp, #0x4]
  3a6ac0: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  3a6ac4: 4610         	mov	r0, r2
  3a6ac6: 2164         	movs	r1, #0x64
  3a6ac8: 4798         	blx	r3
  3a6aca: 9b01         	ldr	r3, [sp, #0x4]
  3a6acc: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3a6ad0: 681b         	ldr	r3, [r3]
  3a6ad2: f503 7302    	add.w	r3, r3, #0x208
  3a6ad6: 681b         	ldr	r3, [r3]
  3a6ad8: 9a01         	ldr	r2, [sp, #0x4]
  3a6ada: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  3a6ade: 4610         	mov	r0, r2
  3a6ae0: 2164         	movs	r1, #0x64
  3a6ae2: 4798         	blx	r3
  3a6ae4: 9b01         	ldr	r3, [sp, #0x4]
  3a6ae6: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  3a6aea: 681b         	ldr	r3, [r3]
  3a6aec: f503 73d2    	add.w	r3, r3, #0x1a4
  3a6af0: 681b         	ldr	r3, [r3]
  3a6af2: 9a01         	ldr	r2, [sp, #0x4]
  3a6af4: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  3a6af8: 4610         	mov	r0, r2
  3a6afa: 2164         	movs	r1, #0x64
  3a6afc: 4798         	blx	r3
  3a6afe: e02f         	b	0x3a6b60 <MapVoteLayer::updateMapVote()+0x7d0> @ imm = #0x5e
  3a6b00: ab04         	add	r3, sp, #0x10
  3a6b02: 4618         	mov	r0, r3
  3a6b04: f00e f706    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40ee0c
  3a6b08: e7ff         	b	0x3a6b0a <MapVoteLayer::updateMapVote()+0x77a> @ imm = #-0x2
  3a6b0a: ab03         	add	r3, sp, #0xc
  3a6b0c: 4618         	mov	r0, r3
  3a6b0e: f00e f701    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40ee02
  3a6b12: e7ff         	b	0x3a6b14 <MapVoteLayer::updateMapVote()+0x784> @ imm = #-0x2
  3a6b14: ab02         	add	r3, sp, #0x8
  3a6b16: 4618         	mov	r0, r3
  3a6b18: f3e3 fc70    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e38e0
  3a6b1c: f3e1 fac6    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3e158c
  3a6b20: ab04         	add	r3, sp, #0x10
  3a6b22: 4618         	mov	r0, r3
  3a6b24: f00e f6f6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40edec
  3a6b28: e7ff         	b	0x3a6b2a <MapVoteLayer::updateMapVote()+0x79a> @ imm = #-0x2
  3a6b2a: ab03         	add	r3, sp, #0xc
  3a6b2c: 4618         	mov	r0, r3
  3a6b2e: f00e f6f1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40ede2
  3a6b32: e7ff         	b	0x3a6b34 <MapVoteLayer::updateMapVote()+0x7a4> @ imm = #-0x2
  3a6b34: ab02         	add	r3, sp, #0x8
  3a6b36: 4618         	mov	r0, r3
  3a6b38: f3e3 fc60    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e38c0
  3a6b3c: f3e1 fab6    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3e156c
  3a6b40: ab04         	add	r3, sp, #0x10
  3a6b42: 4618         	mov	r0, r3
  3a6b44: f00e f6e6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40edcc
  3a6b48: e7ff         	b	0x3a6b4a <MapVoteLayer::updateMapVote()+0x7ba> @ imm = #-0x2
  3a6b4a: ab03         	add	r3, sp, #0xc
  3a6b4c: 4618         	mov	r0, r3
  3a6b4e: f00e f6e1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40edc2
  3a6b52: e7ff         	b	0x3a6b54 <MapVoteLayer::updateMapVote()+0x7c4> @ imm = #-0x2
  3a6b54: ab02         	add	r3, sp, #0x8
  3a6b56: 4618         	mov	r0, r3
  3a6b58: f3e3 fc50    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3e38a0
  3a6b5c: f3e1 faa6    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3e154c
  3a6b60: b008         	add	sp, #0x20
  3a6b62: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3a6b63); words below are literal-pool data ---
  3a6b64: c66e         	stm	r6!, {r1, r2, r3, r5, r6}
  3a6b66: 0058         	lsls	r0, r3, #0x1
  3a6b68: d7c8         	bvc	0x3a6afc <MapVoteLayer::updateMapVote()+0x76c> @ imm = #-0x70
  3a6b6a: ffff c8c2    	vtbx.8	d28, {d31}, d2
  3a6b6e: 0042         	lsls	r2, r0, #0x1
  3a6b70: c88a         	ldm	r0!, {r1, r3, r7}
  3a6b72: 0042         	lsls	r2, r0, #0x1
  3a6b74: c852         	ldm	r0!, {r1, r4, r6}
  3a6b76: 0042         	lsls	r2, r0, #0x1
  3a6b78: c83a         	ldm	r0!, {r1, r3, r4, r5}
  3a6b7a: 0042         	lsls	r2, r0, #0x1
  3a6b7c: c822         	ldm	r0!, {r1, r5}
  3a6b7e: 0042         	lsls	r2, r0, #0x1
  3a6b80: c80a         	ldm	r0!, {r1, r3}
  3a6b82: 0042         	lsls	r2, r0, #0x1
