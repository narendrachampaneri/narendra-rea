// MultiplayerGameLayer: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 24 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../MultiplayerGameLayer.cpp

// ==== MultiplayerGameLayer::create
//      file offset 0x371cbc (= ELF address; Ghidra 0x381cbc), 112 bytes, Thumb-2
  371cbc: b510         	push	{r4, lr}
  371cbe: b082         	sub	sp, #0x8
  371cc0: f44f 70b6    	mov.w	r0, #0x16c
  371cc4: f015 f64e    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x415c9c
  371cc8: 4603         	mov	r3, r0
  371cca: 461c         	mov	r4, r3
  371ccc: 4620         	mov	r0, r4
  371cce: f000 f82d    	bl	0x371d2c <MultiplayerGameLayer::MultiplayerGameLayer()> @ imm = #0x5a
  371cd2: 9401         	str	r4, [sp, #0x4]
  371cd4: 9b01         	ldr	r3, [sp, #0x4]
  371cd6: 2b00         	cmp	r3, #0x0
  371cd8: d00a         	beq	0x371cf0 <MultiplayerGameLayer::create()+0x34> @ imm = #0x14
  371cda: 9b01         	ldr	r3, [sp, #0x4]
  371cdc: 681b         	ldr	r3, [r3]
  371cde: 3318         	adds	r3, #0x18
  371ce0: 681b         	ldr	r3, [r3]
  371ce2: 9801         	ldr	r0, [sp, #0x4]
  371ce4: 4798         	blx	r3
  371ce6: 4603         	mov	r3, r0
  371ce8: 2b00         	cmp	r3, #0x0
  371cea: d001         	beq	0x371cf0 <MultiplayerGameLayer::create()+0x34> @ imm = #0x2
  371cec: 2301         	movs	r3, #0x1
  371cee: e000         	b	0x371cf2 <MultiplayerGameLayer::create()+0x36> @ imm = #0x0
  371cf0: 2300         	movs	r3, #0x0
  371cf2: 2b00         	cmp	r3, #0x0
  371cf4: d005         	beq	0x371d02 <MultiplayerGameLayer::create()+0x46> @ imm = #0xa
  371cf6: 9b01         	ldr	r3, [sp, #0x4]
  371cf8: 4618         	mov	r0, r3
  371cfa: f226 f8ff    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x2261fe
  371cfe: 9b01         	ldr	r3, [sp, #0x4]
  371d00: e011         	b	0x371d26 <MultiplayerGameLayer::create()+0x6a> @ imm = #0x22
  371d02: 9b01         	ldr	r3, [sp, #0x4]
  371d04: 2b00         	cmp	r3, #0x0
  371d06: d005         	beq	0x371d14 <MultiplayerGameLayer::create()+0x58> @ imm = #0xa
  371d08: 9b01         	ldr	r3, [sp, #0x4]
  371d0a: 681b         	ldr	r3, [r3]
  371d0c: 3308         	adds	r3, #0x8
  371d0e: 681b         	ldr	r3, [r3]
  371d10: 9801         	ldr	r0, [sp, #0x4]
  371d12: 4798         	blx	r3
  371d14: 2300         	movs	r3, #0x0
  371d16: 9301         	str	r3, [sp, #0x4]
  371d18: 2300         	movs	r3, #0x0
  371d1a: e004         	b	0x371d26 <MultiplayerGameLayer::create()+0x6a> @ imm = #0x8
  371d1c: 4620         	mov	r0, r4
  371d1e: f016 f1c1    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x416382
  371d22: f016 f1c3    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x416386
  371d26: 4618         	mov	r0, r3
  371d28: b002         	add	sp, #0x8
  371d2a: bd10         	pop	{r4, pc}

// ==== MultiplayerGameLayer::MultiplayerGameLayer
//      file offset 0x371d2c (= ELF address; Ghidra 0x381d2c), 112 bytes, Thumb-2
  371d2c: b510         	push	{r4, lr}
  371d2e: b082         	sub	sp, #0x8
  371d30: 9001         	str	r0, [sp, #0x4]
  371d32: 4c18         	ldr	r4, [pc, #0x60]         @ 0x371d94 <MultiplayerGameLayer::MultiplayerGameLayer()+0x68>
  371d34: 447c         	add	r4, pc
  371d36: 9b01         	ldr	r3, [sp, #0x4]
  371d38: 4618         	mov	r0, r3
  371d3a: f23b f98f    	bl	0x5ad05c <cocos2d::CCLayer::CCLayer()> @ imm = #0x23b31e
  371d3e: 9b01         	ldr	r3, [sp, #0x4]
  371d40: 4a15         	ldr	r2, [pc, #0x54]         @ 0x371d98 <MultiplayerGameLayer::MultiplayerGameLayer()+0x6c>
  371d42: 58a2         	ldr	r2, [r4, r2]
  371d44: 3208         	adds	r2, #0x8
  371d46: 601a         	str	r2, [r3]
  371d48: 9b01         	ldr	r3, [sp, #0x4]
  371d4a: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x371d98 <MultiplayerGameLayer::MultiplayerGameLayer()+0x6c>
  371d4c: 58a2         	ldr	r2, [r4, r2]
  371d4e: f502 7204    	add.w	r2, r2, #0x210
  371d52: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  371d56: 9b01         	ldr	r3, [sp, #0x4]
  371d58: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x371d98 <MultiplayerGameLayer::MultiplayerGameLayer()+0x6c>
  371d5a: 58a2         	ldr	r2, [r4, r2]
  371d5c: f502 7210    	add.w	r2, r2, #0x240
  371d60: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  371d64: 9b01         	ldr	r3, [sp, #0x4]
  371d66: 4a0c         	ldr	r2, [pc, #0x30]         @ 0x371d98 <MultiplayerGameLayer::MultiplayerGameLayer()+0x6c>
  371d68: 58a2         	ldr	r2, [r4, r2]
  371d6a: f502 7213    	add.w	r2, r2, #0x24c
  371d6e: f8c3 20ec    	str.w	r2, [r3, #0xec]
  371d72: 9b01         	ldr	r3, [sp, #0x4]
  371d74: f503 73b0    	add.w	r3, r3, #0x160
  371d78: 4618         	mov	r0, r3
  371d7a: f002 fb33    	bl	0x3743e4 <std::vector<cocos2d::CCMenu*, std::allocator<cocos2d::CCMenu*>>::vector()> @ imm = #0x2666
  371d7e: 9b01         	ldr	r3, [sp, #0x4]
  371d80: e005         	b	0x371d8e <MultiplayerGameLayer::MultiplayerGameLayer()+0x62> @ imm = #0xa
  371d82: 9b01         	ldr	r3, [sp, #0x4]
  371d84: 4618         	mov	r0, r3
  371d86: f23b f9e1    	bl	0x5ad14c <cocos2d::CCLayer::~CCLayer()> @ imm = #0x23b3c2
  371d8a: f016 f18f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x41631e
  371d8e: 4618         	mov	r0, r3
  371d90: b002         	add	sp, #0x8
  371d92: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x371d93); words below are literal-pool data ---
  371d94: 0cd4         	lsrs	r4, r2, #0x13
  371d96: 005c         	lsls	r4, r3, #0x1
  371d98: dc08         	bgt	0x371dac <MultiplayerGameLayer::scene()+0x10> @ imm = #0x10
  371d9a: ffff b500    	<unknown>

// ==== MultiplayerGameLayer::scene
//      file offset 0x371d9c (= ELF address; Ghidra 0x381d9c), 46 bytes, Thumb-2
  371d9c: b500         	push	{lr}
  371d9e: b083         	sub	sp, #0xc
  371da0: f23d fe5e    	bl	0x5afa60 <cocos2d::CCScene::create()> @ imm = #0x23dcbc
  371da4: 4603         	mov	r3, r0
  371da6: 9300         	str	r3, [sp]
  371da8: f7ff ff88    	bl	0x371cbc <MultiplayerGameLayer::create()> @ imm = #-0xf0
  371dac: 4603         	mov	r3, r0
  371dae: 9301         	str	r3, [sp, #0x4]
  371db0: 9b00         	ldr	r3, [sp]
  371db2: 681b         	ldr	r3, [r3]
  371db4: 33c8         	adds	r3, #0xc8
  371db6: 681b         	ldr	r3, [r3]
  371db8: 9a00         	ldr	r2, [sp]
  371dba: 4610         	mov	r0, r2
  371dbc: 9901         	ldr	r1, [sp, #0x4]
  371dbe: 4798         	blx	r3
  371dc0: 9b00         	ldr	r3, [sp]
  371dc2: 4618         	mov	r0, r3
  371dc4: b003         	add	sp, #0xc
  371dc6: f85d fb04    	ldr	pc, [sp], #4

// ==== MultiplayerGameLayer::init
//      file offset 0x371dd0 (= ELF address; Ghidra 0x381dd0), 5148 bytes, Thumb-2
  371dd0: b5f0         	push	{r4, r5, r6, r7, lr}
  371dd2: ed2d 8b02    	vpush	{d8}
  371dd6: b0bf         	sub	sp, #0xfc
  371dd8: 9003         	str	r0, [sp, #0xc]
  371dda: 4c09         	ldr	r4, [pc, #0x24]         @ 0x371e00 <MultiplayerGameLayer::init()+0x30>
  371ddc: 447c         	add	r4, pc
  371dde: 9b03         	ldr	r3, [sp, #0xc]
  371de0: 4618         	mov	r0, r3
  371de2: f23b fa09    	bl	0x5ad1f8 <cocos2d::CCLayer::init()> @ imm = #0x23b412
  371de6: 4603         	mov	r3, r0
  371de8: f88d 3017    	strb.w	r3, [sp, #0x17]
  371dec: f89d 3017    	ldrb.w	r3, [sp, #0x17]
  371df0: f083 0301    	eor	r3, r3, #0x1
  371df4: b2db         	uxtb	r3, r3
  371df6: 2b00         	cmp	r3, #0x0
  371df8: d004         	beq	0x371e04 <MultiplayerGameLayer::init()+0x34> @ imm = #0x8
  371dfa: 2300         	movs	r3, #0x0
  371dfc: f001 b9e4    	b.w	0x3731c8 <MultiplayerGameLayer::init()+0x13f8> @ imm = #0x13c8
  371e00: 0c2c         	lsrs	r4, r5, #0x10
  371e02: 005c         	lsls	r4, r3, #0x1
  371e04: 9b03         	ldr	r3, [sp, #0xc]
  371e06: 2200         	movs	r2, #0x0
  371e08: f883 2108    	strb.w	r2, [r3, #0x108]
  371e0c: 9b03         	ldr	r3, [sp, #0xc]
  371e0e: 2200         	movs	r2, #0x0
  371e10: f883 2109    	strb.w	r2, [r3, #0x109]
  371e14: ab1c         	add	r3, sp, #0x70
  371e16: 4618         	mov	r0, r3
  371e18: f8df 361c    	ldr.w	r3, [pc, #0x61c]        @ 0x372438 <MultiplayerGameLayer::init()+0x668>
  371e1c: 58e3         	ldr	r3, [r4, r3]
  371e1e: 4619         	mov	r1, r3
  371e20: f221 f946    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x22128c
  371e24: ed9d 7a1c    	vldr	s14, [sp, #112]
  371e28: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  371e2c: eec7 6a27    	vdiv.f32	s13, s14, s15
  371e30: ed9d 7a1d    	vldr	s14, [sp, #116]
  371e34: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  371e38: eec7 7a27    	vdiv.f32	s15, s14, s15
  371e3c: ab1e         	add	r3, sp, #0x78
  371e3e: 4618         	mov	r0, r3
  371e40: ee16 1a90    	vmov	r1, s13
  371e44: ee17 2a90    	vmov	r2, s15
  371e48: f220 ff52    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x220ea4
  371e4c: 9b03         	ldr	r3, [sp, #0xc]
  371e4e: f64c 42cd    	movw	r2, #0xcccd
  371e52: f6c3 720c    	movt	r2, #0x3f0c
  371e56: f8c3 2154    	str.w	r2, [r3, #0x154]
  371e5a: 9b03         	ldr	r3, [sp, #0xc]
  371e5c: f04f 0200    	mov.w	r2, #0x0
  371e60: f2c4 12c0    	movt	r2, #0x41c0
  371e64: f8c3 2158    	str.w	r2, [r3, #0x158]
  371e68: 9b03         	ldr	r3, [sp, #0xc]
  371e6a: f04f 4241    	mov.w	r2, #0xc1000000
  371e6e: f8c3 215c    	str.w	r2, [r3, #0x15c]
  371e72: f04f 0300    	mov.w	r3, #0x0
  371e76: 9308         	str	r3, [sp, #0x20]
  371e78: f04f 0300    	mov.w	r3, #0x0
  371e7c: f2c4 2340    	movt	r3, #0x4240
  371e80: 9309         	str	r3, [sp, #0x24]
  371e82: f8df 35b8    	ldr.w	r3, [pc, #0x5b8]        @ 0x37243c <MultiplayerGameLayer::init()+0x66c>
  371e86: 447b         	add	r3, pc
  371e88: 4618         	mov	r0, r3
  371e8a: f266 fa3b    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x266476
  371e8e: 4603         	mov	r3, r0
  371e90: 930a         	str	r3, [sp, #0x28]
  371e92: f8df 35ac    	ldr.w	r3, [pc, #0x5ac]        @ 0x372440 <MultiplayerGameLayer::init()+0x670>
  371e96: 447b         	add	r3, pc
  371e98: 4618         	mov	r0, r3
  371e9a: f266 fa33    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x266466
  371e9e: 4603         	mov	r3, r0
  371ea0: 930b         	str	r3, [sp, #0x2c]
  371ea2: f8df 35a0    	ldr.w	r3, [pc, #0x5a0]        @ 0x372444 <MultiplayerGameLayer::init()+0x674>
  371ea6: 447b         	add	r3, pc
  371ea8: 4618         	mov	r0, r3
  371eaa: f266 fa2b    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x266456
  371eae: 4603         	mov	r3, r0
  371eb0: 930c         	str	r3, [sp, #0x30]
  371eb2: f8df 3594    	ldr.w	r3, [pc, #0x594]        @ 0x372448 <MultiplayerGameLayer::init()+0x678>
  371eb6: 447b         	add	r3, pc
  371eb8: 4618         	mov	r0, r3
  371eba: f266 fa23    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x266446
  371ebe: 4603         	mov	r3, r0
  371ec0: 930d         	str	r3, [sp, #0x34]
  371ec2: f8df 3588    	ldr.w	r3, [pc, #0x588]        @ 0x37244c <MultiplayerGameLayer::init()+0x67c>
  371ec6: 447b         	add	r3, pc
  371ec8: 4618         	mov	r0, r3
  371eca: f266 fa1b    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x266436
  371ece: 4603         	mov	r3, r0
  371ed0: 930e         	str	r3, [sp, #0x38]
  371ed2: f8df 357c    	ldr.w	r3, [pc, #0x57c]        @ 0x372450 <MultiplayerGameLayer::init()+0x680>
  371ed6: 447b         	add	r3, pc
  371ed8: 4618         	mov	r0, r3
  371eda: f266 fa13    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x266426
  371ede: 4603         	mov	r3, r0
  371ee0: 930f         	str	r3, [sp, #0x3c]
  371ee2: f8df 3570    	ldr.w	r3, [pc, #0x570]        @ 0x372454 <MultiplayerGameLayer::init()+0x684>
  371ee6: 447b         	add	r3, pc
  371ee8: 4618         	mov	r0, r3
  371eea: f266 fa0b    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x266416
  371eee: 4603         	mov	r3, r0
  371ef0: 9310         	str	r3, [sp, #0x40]
  371ef2: f8df 3564    	ldr.w	r3, [pc, #0x564]        @ 0x372458 <MultiplayerGameLayer::init()+0x688>
  371ef6: 447b         	add	r3, pc
  371ef8: 4618         	mov	r0, r3
  371efa: f266 fa03    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x266406
  371efe: 4603         	mov	r3, r0
  371f00: 9311         	str	r3, [sp, #0x44]
  371f02: 9a03         	ldr	r2, [sp, #0xc]
  371f04: f8df 3554    	ldr.w	r3, [pc, #0x554]        @ 0x37245c <MultiplayerGameLayer::init()+0x68c>
  371f08: 58e3         	ldr	r3, [r4, r3]
  371f0a: 9326         	str	r3, [sp, #0x98]
  371f0c: 2300         	movs	r3, #0x0
  371f0e: 9327         	str	r3, [sp, #0x9c]
  371f10: 9b27         	ldr	r3, [sp, #0x9c]
  371f12: 9300         	str	r3, [sp]
  371f14: 9b26         	ldr	r3, [sp, #0x98]
  371f16: 980a         	ldr	r0, [sp, #0x28]
  371f18: 990a         	ldr	r1, [sp, #0x28]
  371f1a: f246 fa07    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x24640e
  371f1e: 4603         	mov	r3, r0
  371f20: 9312         	str	r3, [sp, #0x48]
  371f22: 9812         	ldr	r0, [sp, #0x48]
  371f24: 2100         	movs	r1, #0x0
  371f26: f243 f909    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x243212
  371f2a: 4602         	mov	r2, r0
  371f2c: 9b03         	ldr	r3, [sp, #0xc]
  371f2e: f8c3 2140    	str.w	r2, [r3, #0x140]
  371f32: 9b03         	ldr	r3, [sp, #0xc]
  371f34: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  371f38: 4618         	mov	r0, r3
  371f3a: f225 ffd5    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x225faa
  371f3e: 9a03         	ldr	r2, [sp, #0xc]
  371f40: f8df 351c    	ldr.w	r3, [pc, #0x51c]        @ 0x372460 <MultiplayerGameLayer::init()+0x690>
  371f44: 58e3         	ldr	r3, [r4, r3]
  371f46: 9328         	str	r3, [sp, #0xa0]
  371f48: 2300         	movs	r3, #0x0
  371f4a: 9329         	str	r3, [sp, #0xa4]
  371f4c: 9b29         	ldr	r3, [sp, #0xa4]
  371f4e: 9300         	str	r3, [sp]
  371f50: 9b28         	ldr	r3, [sp, #0xa0]
  371f52: 980d         	ldr	r0, [sp, #0x34]
  371f54: 990d         	ldr	r1, [sp, #0x34]
  371f56: f246 f9e9    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2463d2
  371f5a: 4603         	mov	r3, r0
  371f5c: 9313         	str	r3, [sp, #0x4c]
  371f5e: 9813         	ldr	r0, [sp, #0x4c]
  371f60: 2100         	movs	r1, #0x0
  371f62: f243 f8eb    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2431d6
  371f66: 4602         	mov	r2, r0
  371f68: 9b03         	ldr	r3, [sp, #0xc]
  371f6a: f8c3 2148    	str.w	r2, [r3, #0x148]
  371f6e: 9b03         	ldr	r3, [sp, #0xc]
  371f70: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  371f74: 4618         	mov	r0, r3
  371f76: f225 ffb7    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x225f6e
  371f7a: 9a03         	ldr	r2, [sp, #0xc]
  371f7c: f8df 34e4    	ldr.w	r3, [pc, #0x4e4]        @ 0x372464 <MultiplayerGameLayer::init()+0x694>
  371f80: 58e3         	ldr	r3, [r4, r3]
  371f82: 932a         	str	r3, [sp, #0xa8]
  371f84: 2300         	movs	r3, #0x0
  371f86: 932b         	str	r3, [sp, #0xac]
  371f88: 9b2b         	ldr	r3, [sp, #0xac]
  371f8a: 9300         	str	r3, [sp]
  371f8c: 9b2a         	ldr	r3, [sp, #0xa8]
  371f8e: 980e         	ldr	r0, [sp, #0x38]
  371f90: 990e         	ldr	r1, [sp, #0x38]
  371f92: f246 f9cb    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x246396
  371f96: 4603         	mov	r3, r0
  371f98: 9314         	str	r3, [sp, #0x50]
  371f9a: 9814         	ldr	r0, [sp, #0x50]
  371f9c: 2100         	movs	r1, #0x0
  371f9e: f243 f8cd    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x24319a
  371fa2: 4602         	mov	r2, r0
  371fa4: 9b03         	ldr	r3, [sp, #0xc]
  371fa6: f8c3 213c    	str.w	r2, [r3, #0x13c]
  371faa: 9b03         	ldr	r3, [sp, #0xc]
  371fac: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  371fb0: 4618         	mov	r0, r3
  371fb2: f225 ff99    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x225f32
  371fb6: 9a03         	ldr	r2, [sp, #0xc]
  371fb8: f8df 34ac    	ldr.w	r3, [pc, #0x4ac]        @ 0x372468 <MultiplayerGameLayer::init()+0x698>
  371fbc: 58e3         	ldr	r3, [r4, r3]
  371fbe: 932c         	str	r3, [sp, #0xb0]
  371fc0: 2300         	movs	r3, #0x0
  371fc2: 932d         	str	r3, [sp, #0xb4]
  371fc4: 9b2d         	ldr	r3, [sp, #0xb4]
  371fc6: 9300         	str	r3, [sp]
  371fc8: 9b2c         	ldr	r3, [sp, #0xb0]
  371fca: 980c         	ldr	r0, [sp, #0x30]
  371fcc: 990c         	ldr	r1, [sp, #0x30]
  371fce: f246 f9ad    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x24635a
  371fd2: 4603         	mov	r3, r0
  371fd4: 9315         	str	r3, [sp, #0x54]
  371fd6: 9815         	ldr	r0, [sp, #0x54]
  371fd8: 2100         	movs	r1, #0x0
  371fda: f243 f8af    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x24315e
  371fde: 4602         	mov	r2, r0
  371fe0: 9b03         	ldr	r3, [sp, #0xc]
  371fe2: f8c3 2138    	str.w	r2, [r3, #0x138]
  371fe6: 9b03         	ldr	r3, [sp, #0xc]
  371fe8: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  371fec: 4618         	mov	r0, r3
  371fee: f225 ff7b    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x225ef6
  371ff2: 9a03         	ldr	r2, [sp, #0xc]
  371ff4: f8df 3474    	ldr.w	r3, [pc, #0x474]        @ 0x37246c <MultiplayerGameLayer::init()+0x69c>
  371ff8: 58e3         	ldr	r3, [r4, r3]
  371ffa: 932e         	str	r3, [sp, #0xb8]
  371ffc: 2300         	movs	r3, #0x0
  371ffe: 932f         	str	r3, [sp, #0xbc]
  372000: 9b2f         	ldr	r3, [sp, #0xbc]
  372002: 9300         	str	r3, [sp]
  372004: 9b2e         	ldr	r3, [sp, #0xb8]
  372006: 980b         	ldr	r0, [sp, #0x2c]
  372008: 990b         	ldr	r1, [sp, #0x2c]
  37200a: f246 f98f    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x24631e
  37200e: 4603         	mov	r3, r0
  372010: 9316         	str	r3, [sp, #0x58]
  372012: 9816         	ldr	r0, [sp, #0x58]
  372014: 2100         	movs	r1, #0x0
  372016: f243 f891    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x243122
  37201a: 4602         	mov	r2, r0
  37201c: 9b03         	ldr	r3, [sp, #0xc]
  37201e: f8c3 2134    	str.w	r2, [r3, #0x134]
  372022: 9b03         	ldr	r3, [sp, #0xc]
  372024: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  372028: 4618         	mov	r0, r3
  37202a: f225 ff5d    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x225eba
  37202e: 9a03         	ldr	r2, [sp, #0xc]
  372030: f8df 343c    	ldr.w	r3, [pc, #0x43c]        @ 0x372470 <MultiplayerGameLayer::init()+0x6a0>
  372034: 58e3         	ldr	r3, [r4, r3]
  372036: 9330         	str	r3, [sp, #0xc0]
  372038: 2300         	movs	r3, #0x0
  37203a: 9331         	str	r3, [sp, #0xc4]
  37203c: 9b31         	ldr	r3, [sp, #0xc4]
  37203e: 9300         	str	r3, [sp]
  372040: 9b30         	ldr	r3, [sp, #0xc0]
  372042: 980f         	ldr	r0, [sp, #0x3c]
  372044: 990f         	ldr	r1, [sp, #0x3c]
  372046: f246 f971    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2462e2
  37204a: 4603         	mov	r3, r0
  37204c: 9317         	str	r3, [sp, #0x5c]
  37204e: 9817         	ldr	r0, [sp, #0x5c]
  372050: 2100         	movs	r1, #0x0
  372052: f243 f873    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2430e6
  372056: 4602         	mov	r2, r0
  372058: 9b03         	ldr	r3, [sp, #0xc]
  37205a: f8c3 214c    	str.w	r2, [r3, #0x14c]
  37205e: 9b03         	ldr	r3, [sp, #0xc]
  372060: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  372064: 4618         	mov	r0, r3
  372066: f225 ff3f    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x225e7e
  37206a: 9b03         	ldr	r3, [sp, #0xc]
  37206c: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  372070: 681b         	ldr	r3, [r3]
  372072: 334c         	adds	r3, #0x4c
  372074: 681d         	ldr	r5, [r3]
  372076: 9b03         	ldr	r3, [sp, #0xc]
  372078: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  37207c: 461e         	mov	r6, r3
  37207e: ab3a         	add	r3, sp, #0xe8
  372080: 4618         	mov	r0, r3
  372082: f04f 0100    	mov.w	r1, #0x0
  372086: f2c4 2160    	movt	r1, #0x4260
  37208a: f04f 4284    	mov.w	r2, #0x42000000
  37208e: f220 fe2f    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x220c5e
  372092: ab3a         	add	r3, sp, #0xe8
  372094: 4630         	mov	r0, r6
  372096: 4619         	mov	r1, r3
  372098: 47a8         	blx	r5
  37209a: 9b03         	ldr	r3, [sp, #0xc]
  37209c: 681b         	ldr	r3, [r3]
  37209e: 33c8         	adds	r3, #0xc8
  3720a0: 681b         	ldr	r3, [r3]
  3720a2: 9903         	ldr	r1, [sp, #0xc]
  3720a4: 9a03         	ldr	r2, [sp, #0xc]
  3720a6: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  3720aa: 4608         	mov	r0, r1
  3720ac: 4611         	mov	r1, r2
  3720ae: 4798         	blx	r3
  3720b0: 9a03         	ldr	r2, [sp, #0xc]
  3720b2: 4bf0         	ldr	r3, [pc, #0x3c0]        @ 0x372474 <MultiplayerGameLayer::init()+0x6a4>
  3720b4: 58e3         	ldr	r3, [r4, r3]
  3720b6: 9332         	str	r3, [sp, #0xc8]
  3720b8: 2300         	movs	r3, #0x0
  3720ba: 9333         	str	r3, [sp, #0xcc]
  3720bc: 9b33         	ldr	r3, [sp, #0xcc]
  3720be: 9300         	str	r3, [sp]
  3720c0: 9b32         	ldr	r3, [sp, #0xc8]
  3720c2: 9810         	ldr	r0, [sp, #0x40]
  3720c4: 9910         	ldr	r1, [sp, #0x40]
  3720c6: f246 f931    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x246262
  3720ca: 4603         	mov	r3, r0
  3720cc: 9318         	str	r3, [sp, #0x60]
  3720ce: 9818         	ldr	r0, [sp, #0x60]
  3720d0: 2100         	movs	r1, #0x0
  3720d2: f243 f833    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x243066
  3720d6: 4602         	mov	r2, r0
  3720d8: 9b03         	ldr	r3, [sp, #0xc]
  3720da: f8c3 2144    	str.w	r2, [r3, #0x144]
  3720de: 9b03         	ldr	r3, [sp, #0xc]
  3720e0: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  3720e4: 4618         	mov	r0, r3
  3720e6: f225 feff    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x225dfe
  3720ea: 9b03         	ldr	r3, [sp, #0xc]
  3720ec: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  3720f0: 681b         	ldr	r3, [r3]
  3720f2: 334c         	adds	r3, #0x4c
  3720f4: 681d         	ldr	r5, [r3]
  3720f6: 9b03         	ldr	r3, [sp, #0xc]
  3720f8: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  3720fc: 461e         	mov	r6, r3
  3720fe: ab3a         	add	r3, sp, #0xe8
  372100: 4618         	mov	r0, r3
  372102: f04f 0100    	mov.w	r1, #0x0
  372106: f2c4 2160    	movt	r1, #0x4260
  37210a: f04f 0200    	mov.w	r2, #0x0
  37210e: f2c4 22a0    	movt	r2, #0x42a0
  372112: f220 fded    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x220bda
  372116: ab3a         	add	r3, sp, #0xe8
  372118: 4630         	mov	r0, r6
  37211a: 4619         	mov	r1, r3
  37211c: 47a8         	blx	r5
  37211e: 9a03         	ldr	r2, [sp, #0xc]
  372120: 4bd5         	ldr	r3, [pc, #0x354]        @ 0x372478 <MultiplayerGameLayer::init()+0x6a8>
  372122: 58e3         	ldr	r3, [r4, r3]
  372124: 9334         	str	r3, [sp, #0xd0]
  372126: 2300         	movs	r3, #0x0
  372128: 9335         	str	r3, [sp, #0xd4]
  37212a: 9b35         	ldr	r3, [sp, #0xd4]
  37212c: 9300         	str	r3, [sp]
  37212e: 9b34         	ldr	r3, [sp, #0xd0]
  372130: 9811         	ldr	r0, [sp, #0x44]
  372132: 9911         	ldr	r1, [sp, #0x44]
  372134: f246 f8fa    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2461f4
  372138: 4603         	mov	r3, r0
  37213a: 9319         	str	r3, [sp, #0x64]
  37213c: 9819         	ldr	r0, [sp, #0x64]
  37213e: 2100         	movs	r1, #0x0
  372140: f242 fffc    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x242ff8
  372144: 4602         	mov	r2, r0
  372146: 9b03         	ldr	r3, [sp, #0xc]
  372148: f8c3 2150    	str.w	r2, [r3, #0x150]
  37214c: 9b03         	ldr	r3, [sp, #0xc]
  37214e: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  372152: 4618         	mov	r0, r3
  372154: f225 fec8    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x225d90
  372158: 9b03         	ldr	r3, [sp, #0xc]
  37215a: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  37215e: 681b         	ldr	r3, [r3]
  372160: 334c         	adds	r3, #0x4c
  372162: 681d         	ldr	r5, [r3]
  372164: 9b03         	ldr	r3, [sp, #0xc]
  372166: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  37216a: 461e         	mov	r6, r3
  37216c: 4bb2         	ldr	r3, [pc, #0x2c8]        @ 0x372438 <MultiplayerGameLayer::init()+0x668>
  37216e: 58e3         	ldr	r3, [r4, r3]
  372170: ed93 7a00    	vldr	s14, [r3]
  372174: eddf 7aaf    	vldr	s15, [pc, #700]         @ 0x372434 <MultiplayerGameLayer::init()+0x664>
  372178: ee77 7a67    	vsub.f32	s15, s14, s15
  37217c: ab3a         	add	r3, sp, #0xe8
  37217e: 4618         	mov	r0, r3
  372180: ee17 1a90    	vmov	r1, s15
  372184: f04f 0200    	mov.w	r2, #0x0
  372188: f2c4 22a0    	movt	r2, #0x42a0
  37218c: f220 fdb0    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x220b60
  372190: ab3a         	add	r3, sp, #0xe8
  372192: 4630         	mov	r0, r6
  372194: 4619         	mov	r1, r3
  372196: 47a8         	blx	r5
  372198: 9b03         	ldr	r3, [sp, #0xc]
  37219a: 681b         	ldr	r3, [r3]
  37219c: 33c8         	adds	r3, #0xc8
  37219e: 681b         	ldr	r3, [r3]
  3721a0: 9903         	ldr	r1, [sp, #0xc]
  3721a2: 9a03         	ldr	r2, [sp, #0xc]
  3721a4: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3721a8: 4608         	mov	r0, r1
  3721aa: 4611         	mov	r1, r2
  3721ac: 4798         	blx	r3
  3721ae: 4bb3         	ldr	r3, [pc, #0x2cc]        @ 0x37247c <MultiplayerGameLayer::init()+0x6ac>
  3721b0: 447b         	add	r3, pc
  3721b2: 4618         	mov	r0, r3
  3721b4: f043 f0a4    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x443148
  3721b8: 4603         	mov	r3, r0
  3721ba: 2220         	movs	r2, #0x20
  3721bc: 9200         	str	r2, [sp]
  3721be: 4ab0         	ldr	r2, [pc, #0x2c0]        @ 0x372480 <MultiplayerGameLayer::init()+0x6b0>
  3721c0: 447a         	add	r2, pc
  3721c2: 4610         	mov	r0, r2
  3721c4: 4619         	mov	r1, r3
  3721c6: 2220         	movs	r2, #0x20
  3721c8: 2320         	movs	r3, #0x20
  3721ca: f233 f8d5    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x2331aa
  3721ce: 4602         	mov	r2, r0
  3721d0: 9b03         	ldr	r3, [sp, #0xc]
  3721d2: f8c3 2114    	str.w	r2, [r3, #0x114]
  3721d6: 9b03         	ldr	r3, [sp, #0xc]
  3721d8: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3721dc: 4618         	mov	r0, r3
  3721de: f225 fe83    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x225d06
  3721e2: 9b03         	ldr	r3, [sp, #0xc]
  3721e4: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3721e8: 9a03         	ldr	r2, [sp, #0xc]
  3721ea: edd2 7a56    	vldr	s15, [r2, #344]
  3721ee: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3721f2: ee17 2a90    	vmov	r2, s15
  3721f6: 4618         	mov	r0, r3
  3721f8: 4611         	mov	r1, r2
  3721fa: f233 fdc3    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x233b86
  3721fe: 9b03         	ldr	r3, [sp, #0xc]
  372200: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  372204: 681b         	ldr	r3, [r3]
  372206: 3340         	adds	r3, #0x40
  372208: 681b         	ldr	r3, [r3]
  37220a: 9a03         	ldr	r2, [sp, #0xc]
  37220c: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  372210: 4611         	mov	r1, r2
  372212: 9a03         	ldr	r2, [sp, #0xc]
  372214: f8d2 2154    	ldr.w	r2, [r2, #0x154]
  372218: 4608         	mov	r0, r1
  37221a: 4611         	mov	r1, r2
  37221c: 4798         	blx	r3
  37221e: 4b99         	ldr	r3, [pc, #0x264]        @ 0x372484 <MultiplayerGameLayer::init()+0x6b4>
  372220: 447b         	add	r3, pc
  372222: 4618         	mov	r0, r3
  372224: f043 f06c    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4430d8
  372228: 4603         	mov	r3, r0
  37222a: 2220         	movs	r2, #0x20
  37222c: 9200         	str	r2, [sp]
  37222e: 4a96         	ldr	r2, [pc, #0x258]        @ 0x372488 <MultiplayerGameLayer::init()+0x6b8>
  372230: 447a         	add	r2, pc
  372232: 4610         	mov	r0, r2
  372234: 4619         	mov	r1, r3
  372236: 2220         	movs	r2, #0x20
  372238: 2320         	movs	r3, #0x20
  37223a: f233 f89d    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x23313a
  37223e: 4602         	mov	r2, r0
  372240: 9b03         	ldr	r3, [sp, #0xc]
  372242: f8c3 2118    	str.w	r2, [r3, #0x118]
  372246: 9b03         	ldr	r3, [sp, #0xc]
  372248: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  37224c: 4618         	mov	r0, r3
  37224e: f225 fe4b    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x225c96
  372252: 9b03         	ldr	r3, [sp, #0xc]
  372254: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  372258: 9a03         	ldr	r2, [sp, #0xc]
  37225a: edd2 7a56    	vldr	s15, [r2, #344]
  37225e: eefd 7ae7    	vcvt.s32.f32	s15, s15
  372262: ee17 2a90    	vmov	r2, s15
  372266: 4618         	mov	r0, r3
  372268: 4611         	mov	r1, r2
  37226a: f233 fd8b    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x233b16
  37226e: 9b03         	ldr	r3, [sp, #0xc]
  372270: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  372274: 681b         	ldr	r3, [r3]
  372276: 3340         	adds	r3, #0x40
  372278: 681b         	ldr	r3, [r3]
  37227a: 9a03         	ldr	r2, [sp, #0xc]
  37227c: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  372280: 4611         	mov	r1, r2
  372282: 9a03         	ldr	r2, [sp, #0xc]
  372284: f8d2 2154    	ldr.w	r2, [r2, #0x154]
  372288: 4608         	mov	r0, r1
  37228a: 4611         	mov	r1, r2
  37228c: 4798         	blx	r3
  37228e: 4b7f         	ldr	r3, [pc, #0x1fc]        @ 0x37248c <MultiplayerGameLayer::init()+0x6bc>
  372290: 447b         	add	r3, pc
  372292: 4618         	mov	r0, r3
  372294: f043 f034    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x443068
  372298: 4603         	mov	r3, r0
  37229a: 2220         	movs	r2, #0x20
  37229c: 9200         	str	r2, [sp]
  37229e: 4a7c         	ldr	r2, [pc, #0x1f0]        @ 0x372490 <MultiplayerGameLayer::init()+0x6c0>
  3722a0: 447a         	add	r2, pc
  3722a2: 4610         	mov	r0, r2
  3722a4: 4619         	mov	r1, r3
  3722a6: 2220         	movs	r2, #0x20
  3722a8: 2320         	movs	r3, #0x20
  3722aa: f233 f865    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x2330ca
  3722ae: 4602         	mov	r2, r0
  3722b0: 9b03         	ldr	r3, [sp, #0xc]
  3722b2: f8c3 211c    	str.w	r2, [r3, #0x11c]
  3722b6: 9b03         	ldr	r3, [sp, #0xc]
  3722b8: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3722bc: 4618         	mov	r0, r3
  3722be: f225 fe13    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x225c26
  3722c2: 9b03         	ldr	r3, [sp, #0xc]
  3722c4: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3722c8: 9a03         	ldr	r2, [sp, #0xc]
  3722ca: edd2 7a56    	vldr	s15, [r2, #344]
  3722ce: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3722d2: ee17 2a90    	vmov	r2, s15
  3722d6: 4618         	mov	r0, r3
  3722d8: 4611         	mov	r1, r2
  3722da: f233 fd53    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x233aa6
  3722de: 9b03         	ldr	r3, [sp, #0xc]
  3722e0: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3722e4: 681b         	ldr	r3, [r3]
  3722e6: 3340         	adds	r3, #0x40
  3722e8: 681b         	ldr	r3, [r3]
  3722ea: 9a03         	ldr	r2, [sp, #0xc]
  3722ec: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  3722f0: 4611         	mov	r1, r2
  3722f2: 9a03         	ldr	r2, [sp, #0xc]
  3722f4: f8d2 2154    	ldr.w	r2, [r2, #0x154]
  3722f8: 4608         	mov	r0, r1
  3722fa: 4611         	mov	r1, r2
  3722fc: 4798         	blx	r3
  3722fe: 4b65         	ldr	r3, [pc, #0x194]        @ 0x372494 <MultiplayerGameLayer::init()+0x6c4>
  372300: 447b         	add	r3, pc
  372302: 4618         	mov	r0, r3
  372304: f042 f7fc    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x442ff8
  372308: 4603         	mov	r3, r0
  37230a: 2220         	movs	r2, #0x20
  37230c: 9200         	str	r2, [sp]
  37230e: 4a62         	ldr	r2, [pc, #0x188]        @ 0x372498 <MultiplayerGameLayer::init()+0x6c8>
  372310: 447a         	add	r2, pc
  372312: 4610         	mov	r0, r2
  372314: 4619         	mov	r1, r3
  372316: 2220         	movs	r2, #0x20
  372318: 2320         	movs	r3, #0x20
  37231a: f233 f82d    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x23305a
  37231e: 4602         	mov	r2, r0
  372320: 9b03         	ldr	r3, [sp, #0xc]
  372322: f8c3 2120    	str.w	r2, [r3, #0x120]
  372326: 9b03         	ldr	r3, [sp, #0xc]
  372328: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  37232c: 4618         	mov	r0, r3
  37232e: f225 fddb    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x225bb6
  372332: 9b03         	ldr	r3, [sp, #0xc]
  372334: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  372338: 9a03         	ldr	r2, [sp, #0xc]
  37233a: edd2 7a56    	vldr	s15, [r2, #344]
  37233e: eefd 7ae7    	vcvt.s32.f32	s15, s15
  372342: ee17 2a90    	vmov	r2, s15
  372346: 4618         	mov	r0, r3
  372348: 4611         	mov	r1, r2
  37234a: f233 fd1b    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x233a36
  37234e: 9b03         	ldr	r3, [sp, #0xc]
  372350: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  372354: 681b         	ldr	r3, [r3]
  372356: 3340         	adds	r3, #0x40
  372358: 681b         	ldr	r3, [r3]
  37235a: 9a03         	ldr	r2, [sp, #0xc]
  37235c: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  372360: 4611         	mov	r1, r2
  372362: 9a03         	ldr	r2, [sp, #0xc]
  372364: f8d2 2154    	ldr.w	r2, [r2, #0x154]
  372368: 4608         	mov	r0, r1
  37236a: 4611         	mov	r1, r2
  37236c: 4798         	blx	r3
  37236e: 4b4b         	ldr	r3, [pc, #0x12c]        @ 0x37249c <MultiplayerGameLayer::init()+0x6cc>
  372370: 447b         	add	r3, pc
  372372: 4618         	mov	r0, r3
  372374: f042 f7c4    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x442f88
  372378: 4603         	mov	r3, r0
  37237a: 2220         	movs	r2, #0x20
  37237c: 9200         	str	r2, [sp]
  37237e: 4a48         	ldr	r2, [pc, #0x120]        @ 0x3724a0 <MultiplayerGameLayer::init()+0x6d0>
  372380: 447a         	add	r2, pc
  372382: 4610         	mov	r0, r2
  372384: 4619         	mov	r1, r3
  372386: 2220         	movs	r2, #0x20
  372388: 2320         	movs	r3, #0x20
  37238a: f232 fff5    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x232fea
  37238e: 4602         	mov	r2, r0
  372390: 9b03         	ldr	r3, [sp, #0xc]
  372392: f8c3 2124    	str.w	r2, [r3, #0x124]
  372396: 9b03         	ldr	r3, [sp, #0xc]
  372398: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  37239c: 4618         	mov	r0, r3
  37239e: f225 fda3    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x225b46
  3723a2: 9b03         	ldr	r3, [sp, #0xc]
  3723a4: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3723a8: 9a03         	ldr	r2, [sp, #0xc]
  3723aa: edd2 7a56    	vldr	s15, [r2, #344]
  3723ae: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3723b2: ee17 2a90    	vmov	r2, s15
  3723b6: 4618         	mov	r0, r3
  3723b8: 4611         	mov	r1, r2
  3723ba: f233 fce3    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x2339c6
  3723be: 9b03         	ldr	r3, [sp, #0xc]
  3723c0: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3723c4: 681b         	ldr	r3, [r3]
  3723c6: 3340         	adds	r3, #0x40
  3723c8: 681b         	ldr	r3, [r3]
  3723ca: 9a03         	ldr	r2, [sp, #0xc]
  3723cc: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  3723d0: 4611         	mov	r1, r2
  3723d2: 9a03         	ldr	r2, [sp, #0xc]
  3723d4: f8d2 2154    	ldr.w	r2, [r2, #0x154]
  3723d8: 4608         	mov	r0, r1
  3723da: 4611         	mov	r1, r2
  3723dc: 4798         	blx	r3
  3723de: 4b31         	ldr	r3, [pc, #0xc4]         @ 0x3724a4 <MultiplayerGameLayer::init()+0x6d4>
  3723e0: 447b         	add	r3, pc
  3723e2: 4618         	mov	r0, r3
  3723e4: f042 f78c    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x442f18
  3723e8: 4603         	mov	r3, r0
  3723ea: 2220         	movs	r2, #0x20
  3723ec: 9200         	str	r2, [sp]
  3723ee: 4a2e         	ldr	r2, [pc, #0xb8]         @ 0x3724a8 <MultiplayerGameLayer::init()+0x6d8>
  3723f0: 447a         	add	r2, pc
  3723f2: 4610         	mov	r0, r2
  3723f4: 4619         	mov	r1, r3
  3723f6: 2220         	movs	r2, #0x20
  3723f8: 2320         	movs	r3, #0x20
  3723fa: f232 ffbd    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x232f7a
  3723fe: 4602         	mov	r2, r0
  372400: 9b03         	ldr	r3, [sp, #0xc]
  372402: f8c3 212c    	str.w	r2, [r3, #0x12c]
  372406: 9b03         	ldr	r3, [sp, #0xc]
  372408: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  37240c: 4618         	mov	r0, r3
  37240e: f225 fd6b    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x225ad6
  372412: 9b03         	ldr	r3, [sp, #0xc]
  372414: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  372418: 681b         	ldr	r3, [r3]
  37241a: 3340         	adds	r3, #0x40
  37241c: 681b         	ldr	r3, [r3]
  37241e: 9a03         	ldr	r2, [sp, #0xc]
  372420: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  372424: 4611         	mov	r1, r2
  372426: 9a03         	ldr	r2, [sp, #0xc]
  372428: f8d2 2154    	ldr.w	r2, [r2, #0x154]
  37242c: 4608         	mov	r0, r1
  37242e: 4611         	mov	r1, r2
  372430: 4798         	blx	r3
  372432: e03b         	b	0x3724ac <MultiplayerGameLayer::init()+0x6dc> @ imm = #0x76
  372434: 0000         	movs	r0, r0
  372436: 4270         	rsbs	r0, r6, #0
  372438: d724         	bvc	0x372484 <MultiplayerGameLayer::init()+0x6b4> @ imm = #0x48
  37243a: ffff c0ba    	vshr.u64	d28, d26, #0x1
  37243e: 0045         	lsls	r5, r0, #0x1
  372440: c0b6         	stm	r0!, {r1, r2, r4, r5, r7}
  372442: 0045         	lsls	r5, r0, #0x1
  372444: c0b2         	stm	r0!, {r1, r4, r5, r7}
  372446: 0045         	lsls	r5, r0, #0x1
  372448: c0a2         	stm	r0!, {r1, r5, r7}
  37244a: 0045         	lsls	r5, r0, #0x1
  37244c: c092         	stm	r0!, {r1, r4, r7}
  37244e: 0045         	lsls	r5, r0, #0x1
  372450: c08e         	stm	r0!, {r1, r2, r3, r7}
  372452: 0045         	lsls	r5, r0, #0x1
  372454: c07e         	stm	r0!, {r1, r2, r3, r4, r5, r6}
  372456: 0045         	lsls	r5, r0, #0x1
  372458: c07a         	stm	r0!, {r1, r3, r4, r5, r6}
  37245a: 0045         	lsls	r5, r0, #0x1
  37245c: dc0c         	bgt	0x372478 <MultiplayerGameLayer::init()+0x6a8> @ imm = #0x18
  37245e: ffff dc10    	<unknown>
  372462: ffff dc14    	<unknown>
  372466: ffff dc18    	<unknown>
  37246a: ffff dc1c    	<unknown>
  37246e: ffff dc20    	vdup.8	d29, d16[7]
  372472: ffff dc24    	vdup.8	d29, d20[7]
  372476: ffff dc28    	vdup.8	d29, d24[7]
  37247a: ffff e7b0    	vqshl.u64	d30, d16, #0x3f
  37247e: 005c         	lsls	r4, r3, #0x1
  372480: bdbc         	pop	{r2, r3, r4, r5, r7, pc}
  372482: 0045         	lsls	r5, r0, #0x1
  372484: e740         	b	0x372308 <MultiplayerGameLayer::init()+0x538> @ imm = #-0x180
  372486: 005c         	lsls	r4, r3, #0x1
  372488: bd4c         	pop	{r2, r3, r6, pc}
  37248a: 0045         	lsls	r5, r0, #0x1
  37248c: e6d0         	b	0x372230 <MultiplayerGameLayer::init()+0x460> @ imm = #-0x260
  37248e: 005c         	lsls	r4, r3, #0x1
  372490: bce4         	pop	{r2, r5, r6, r7}
  372492: 0045         	lsls	r5, r0, #0x1
  372494: e660         	b	0x372158 <MultiplayerGameLayer::init()+0x388> @ imm = #-0x340
  372496: 005c         	lsls	r4, r3, #0x1
  372498: bc80         	pop	{r7}
  37249a: 0045         	lsls	r5, r0, #0x1
  37249c: e5f0         	b	0x372080 <MultiplayerGameLayer::init()+0x2b0> @ imm = #-0x420
  37249e: 005c         	lsls	r4, r3, #0x1
  3724a0: bc1c         	pop	{r2, r3, r4}
  3724a2: 0045         	lsls	r5, r0, #0x1
  3724a4: e580         	b	0x371fa8 <MultiplayerGameLayer::init()+0x1d8> @ imm = #-0x500
  3724a6: 005c         	lsls	r4, r3, #0x1
  3724a8: bbb8         	cbnz	r0, 0x37251a <MultiplayerGameLayer::init()+0x74a> @ imm = #0x6e
  3724aa: 0045         	lsls	r5, r0, #0x1
  3724ac: 9b03         	ldr	r3, [sp, #0xc]
  3724ae: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  3724b2: 9a03         	ldr	r2, [sp, #0xc]
  3724b4: edd2 7a56    	vldr	s15, [r2, #344]
  3724b8: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3724bc: ee17 2a90    	vmov	r2, s15
  3724c0: 4618         	mov	r0, r3
  3724c2: 4611         	mov	r1, r2
  3724c4: f233 fc5e    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x2338bc
  3724c8: 9b03         	ldr	r3, [sp, #0xc]
  3724ca: 681b         	ldr	r3, [r3]
  3724cc: 33c8         	adds	r3, #0xc8
  3724ce: 681b         	ldr	r3, [r3]
  3724d0: 9903         	ldr	r1, [sp, #0xc]
  3724d2: 9a03         	ldr	r2, [sp, #0xc]
  3724d4: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  3724d8: 4608         	mov	r0, r1
  3724da: 4611         	mov	r1, r2
  3724dc: 4798         	blx	r3
  3724de: 9b03         	ldr	r3, [sp, #0xc]
  3724e0: 681b         	ldr	r3, [r3]
  3724e2: 33c8         	adds	r3, #0xc8
  3724e4: 681b         	ldr	r3, [r3]
  3724e6: 9903         	ldr	r1, [sp, #0xc]
  3724e8: 9a03         	ldr	r2, [sp, #0xc]
  3724ea: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3724ee: 4608         	mov	r0, r1
  3724f0: 4611         	mov	r1, r2
  3724f2: 4798         	blx	r3
  3724f4: 9b03         	ldr	r3, [sp, #0xc]
  3724f6: f503 72b0    	add.w	r2, r3, #0x160
  3724fa: 9b03         	ldr	r3, [sp, #0xc]
  3724fc: f503 739c    	add.w	r3, r3, #0x138
  372500: 4610         	mov	r0, r2
  372502: 4619         	mov	r1, r3
  372504: f001 ff9a    	bl	0x37443c <std::vector<cocos2d::CCMenu*, std::allocator<cocos2d::CCMenu*>>::push_back(cocos2d::CCMenu* const&)> @ imm = #0x1f34
  372508: 9b03         	ldr	r3, [sp, #0xc]
  37250a: 681b         	ldr	r3, [r3]
  37250c: 33c8         	adds	r3, #0xc8
  37250e: 681b         	ldr	r3, [r3]
  372510: 9903         	ldr	r1, [sp, #0xc]
  372512: 9a03         	ldr	r2, [sp, #0xc]
  372514: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  372518: 4608         	mov	r0, r1
  37251a: 4611         	mov	r1, r2
  37251c: 4798         	blx	r3
  37251e: 9b03         	ldr	r3, [sp, #0xc]
  372520: 681b         	ldr	r3, [r3]
  372522: 33c8         	adds	r3, #0xc8
  372524: 681b         	ldr	r3, [r3]
  372526: 9903         	ldr	r1, [sp, #0xc]
  372528: 9a03         	ldr	r2, [sp, #0xc]
  37252a: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  37252e: 4608         	mov	r0, r1
  372530: 4611         	mov	r1, r2
  372532: 4798         	blx	r3
  372534: 4b23         	ldr	r3, [pc, #0x8c]         @ 0x3725c4 <MultiplayerGameLayer::init()+0x7f4>
  372536: 58e3         	ldr	r3, [r4, r3]
  372538: 681b         	ldr	r3, [r3]
  37253a: 2b02         	cmp	r3, #0x2
  37253c: d01f         	beq	0x37257e <MultiplayerGameLayer::init()+0x7ae> @ imm = #0x3e
  37253e: 9b03         	ldr	r3, [sp, #0xc]
  372540: 681b         	ldr	r3, [r3]
  372542: 33c8         	adds	r3, #0xc8
  372544: 681b         	ldr	r3, [r3]
  372546: 9903         	ldr	r1, [sp, #0xc]
  372548: 9a03         	ldr	r2, [sp, #0xc]
  37254a: f8d2 213c    	ldr.w	r2, [r2, #0x13c]
  37254e: 4608         	mov	r0, r1
  372550: 4611         	mov	r1, r2
  372552: 4798         	blx	r3
  372554: 9b03         	ldr	r3, [sp, #0xc]
  372556: f503 72b0    	add.w	r2, r3, #0x160
  37255a: 9b03         	ldr	r3, [sp, #0xc]
  37255c: f503 739e    	add.w	r3, r3, #0x13c
  372560: 4610         	mov	r0, r2
  372562: 4619         	mov	r1, r3
  372564: f001 ff6a    	bl	0x37443c <std::vector<cocos2d::CCMenu*, std::allocator<cocos2d::CCMenu*>>::push_back(cocos2d::CCMenu* const&)> @ imm = #0x1ed4
  372568: 9b03         	ldr	r3, [sp, #0xc]
  37256a: 681b         	ldr	r3, [r3]
  37256c: 33c8         	adds	r3, #0xc8
  37256e: 681b         	ldr	r3, [r3]
  372570: 9903         	ldr	r1, [sp, #0xc]
  372572: 9a03         	ldr	r2, [sp, #0xc]
  372574: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  372578: 4608         	mov	r0, r1
  37257a: 4611         	mov	r1, r2
  37257c: 4798         	blx	r3
  37257e: 9b03         	ldr	r3, [sp, #0xc]
  372580: 681b         	ldr	r3, [r3]
  372582: 33c8         	adds	r3, #0xc8
  372584: 681b         	ldr	r3, [r3]
  372586: 9903         	ldr	r1, [sp, #0xc]
  372588: 9a03         	ldr	r2, [sp, #0xc]
  37258a: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  37258e: 4608         	mov	r0, r1
  372590: 4611         	mov	r1, r2
  372592: 4798         	blx	r3
  372594: 9b03         	ldr	r3, [sp, #0xc]
  372596: f503 72b0    	add.w	r2, r3, #0x160
  37259a: 9b03         	ldr	r3, [sp, #0xc]
  37259c: f503 73a4    	add.w	r3, r3, #0x148
  3725a0: 4610         	mov	r0, r2
  3725a2: 4619         	mov	r1, r3
  3725a4: f001 ff4a    	bl	0x37443c <std::vector<cocos2d::CCMenu*, std::allocator<cocos2d::CCMenu*>>::push_back(cocos2d::CCMenu* const&)> @ imm = #0x1e94
  3725a8: 9b03         	ldr	r3, [sp, #0xc]
  3725aa: 681b         	ldr	r3, [r3]
  3725ac: 33c8         	adds	r3, #0xc8
  3725ae: 681b         	ldr	r3, [r3]
  3725b0: 9903         	ldr	r1, [sp, #0xc]
  3725b2: 9a03         	ldr	r2, [sp, #0xc]
  3725b4: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  3725b8: 4608         	mov	r0, r1
  3725ba: 4611         	mov	r1, r2
  3725bc: 4798         	blx	r3
  3725be: 2300         	movs	r3, #0x0
  3725c0: 9307         	str	r3, [sp, #0x1c]
  3725c2: e037         	b	0x372634 <MultiplayerGameLayer::init()+0x864> @ imm = #0x6e
  3725c4: d838         	bhi	0x372638 <MultiplayerGameLayer::init()+0x868> @ imm = #0x70
  3725c6: ffff 9b03    	vtbl.8	d25, {d15, d16, d17, d18}, d3
  3725ca: f503 72b0    	add.w	r2, r3, #0x160
  3725ce: 9b07         	ldr	r3, [sp, #0x1c]
  3725d0: 4610         	mov	r0, r2
  3725d2: 4619         	mov	r1, r3
  3725d4: f001 ff5e    	bl	0x374494 <std::vector<cocos2d::CCMenu*, std::allocator<cocos2d::CCMenu*>>::operator[](unsigned int)> @ imm = #0x1ebc
  3725d8: 4603         	mov	r3, r0
  3725da: 681b         	ldr	r3, [r3]
  3725dc: 461d         	mov	r5, r3
  3725de: 682b         	ldr	r3, [r5]
  3725e0: 334c         	adds	r3, #0x4c
  3725e2: 681e         	ldr	r6, [r3]
  3725e4: ed9d 7a1e    	vldr	s14, [sp, #120]
  3725e8: eddd 7a08    	vldr	s15, [sp, #32]
  3725ec: ee37 6a27    	vadd.f32	s12, s14, s15
  3725f0: ed9d 7a1f    	vldr	s14, [sp, #124]
  3725f4: 9b07         	ldr	r3, [sp, #0x1c]
  3725f6: f1c3 0302    	rsb.w	r3, r3, #0x2
  3725fa: ee07 3a90    	vmov	s15, r3
  3725fe: eef8 6ae7    	vcvt.f32.s32	s13, s15
  372602: eddd 7a09    	vldr	s15, [sp, #36]
  372606: ee66 7aa7    	vmul.f32	s15, s13, s15
  37260a: ee37 7a27    	vadd.f32	s14, s14, s15
  37260e: eef3 7a04    	vmov.f32	s15, #2.000000e+01
  372612: ee77 7a67    	vsub.f32	s15, s14, s15
  372616: ab3a         	add	r3, sp, #0xe8
  372618: 4618         	mov	r0, r3
  37261a: ee16 1a10    	vmov	r1, s12
  37261e: ee17 2a90    	vmov	r2, s15
  372622: f220 fb65    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2206ca
  372626: ab3a         	add	r3, sp, #0xe8
  372628: 4628         	mov	r0, r5
  37262a: 4619         	mov	r1, r3
  37262c: 47b0         	blx	r6
  37262e: 9b07         	ldr	r3, [sp, #0x1c]
  372630: 3301         	adds	r3, #0x1
  372632: 9307         	str	r3, [sp, #0x1c]
  372634: 9d07         	ldr	r5, [sp, #0x1c]
  372636: 9b03         	ldr	r3, [sp, #0xc]
  372638: f503 73b0    	add.w	r3, r3, #0x160
  37263c: 4618         	mov	r0, r3
  37263e: f001 ff1d    	bl	0x37447c <std::vector<cocos2d::CCMenu*, std::allocator<cocos2d::CCMenu*>>::size() const> @ imm = #0x1e3a
  372642: 4603         	mov	r3, r0
  372644: 429d         	cmp	r5, r3
  372646: bf2c         	ite	hs
  372648: 2300         	movhs	r3, #0x0
  37264a: 2301         	movlo	r3, #0x1
  37264c: b2db         	uxtb	r3, r3
  37264e: 2b00         	cmp	r3, #0x0
  372650: d1ba         	bne	0x3725c8 <MultiplayerGameLayer::init()+0x7f8> @ imm = #-0x8c
  372652: 9b03         	ldr	r3, [sp, #0xc]
  372654: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  372658: 681b         	ldr	r3, [r3]
  37265a: 334c         	adds	r3, #0x4c
  37265c: 681d         	ldr	r5, [r3]
  37265e: 9b03         	ldr	r3, [sp, #0xc]
  372660: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  372664: 461e         	mov	r6, r3
  372666: 9b03         	ldr	r3, [sp, #0xc]
  372668: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  37266c: 681b         	ldr	r3, [r3]
  37266e: 3350         	adds	r3, #0x50
  372670: 681b         	ldr	r3, [r3]
  372672: 9a03         	ldr	r2, [sp, #0xc]
  372674: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  372678: 4610         	mov	r0, r2
  37267a: 4798         	blx	r3
  37267c: 4603         	mov	r3, r0
  37267e: 681f         	ldr	r7, [r3]
  372680: 9b03         	ldr	r3, [sp, #0xc]
  372682: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  372686: 681b         	ldr	r3, [r3]
  372688: 3350         	adds	r3, #0x50
  37268a: 681b         	ldr	r3, [r3]
  37268c: 9a03         	ldr	r2, [sp, #0xc]
  37268e: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  372692: 4610         	mov	r0, r2
  372694: 4798         	blx	r3
  372696: 4603         	mov	r3, r0
  372698: 685b         	ldr	r3, [r3, #0x4]
  37269a: aa20         	add	r2, sp, #0x80
  37269c: 4610         	mov	r0, r2
  37269e: 4639         	mov	r1, r7
  3726a0: 461a         	mov	r2, r3
  3726a2: f220 fb25    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x22064a
  3726a6: 9b03         	ldr	r3, [sp, #0xc]
  3726a8: edd3 7a57    	vldr	s15, [r3, #348]
  3726ac: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3726b0: ab36         	add	r3, sp, #0xd8
  3726b2: 4618         	mov	r0, r3
  3726b4: ed9f 0bb2    	vldr	d0, [pc, #712]          @ 0x372980 <MultiplayerGameLayer::init()+0xbb0>
  3726b8: eeb0 1b47    	vmov.f64	d1, d7
  3726bc: f7fe fc3e    	bl	0x370f3c <MenuTableView::cellTouched(unsigned int)+0x1c0> @ imm = #-0x1784
  3726c0: ed9d 8b36    	vldr	d8, [sp, #216]
  3726c4: 9b03         	ldr	r3, [sp, #0xc]
  3726c6: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3726ca: 681b         	ldr	r3, [r3]
  3726cc: f503 73fe    	add.w	r3, r3, #0x1fc
  3726d0: 681b         	ldr	r3, [r3]
  3726d2: 9a03         	ldr	r2, [sp, #0xc]
  3726d4: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  3726d8: 4610         	mov	r0, r2
  3726da: 4798         	blx	r3
  3726dc: 4607         	mov	r7, r0
  3726de: ab05         	add	r3, sp, #0x14
  3726e0: 4618         	mov	r0, r3
  3726e2: f017 f687    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x417d0e
  3726e6: aa06         	add	r2, sp, #0x18
  3726e8: ab05         	add	r3, sp, #0x14
  3726ea: 4610         	mov	r0, r2
  3726ec: 4639         	mov	r1, r7
  3726ee: 461a         	mov	r2, r3
  3726f0: f044 f1b6    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x44436c
  3726f4: ab06         	add	r3, sp, #0x18
  3726f6: 4618         	mov	r0, r3
  3726f8: f042 f4b0    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x442960
  3726fc: 4603         	mov	r3, r0
  3726fe: ee07 3a90    	vmov	s15, r3
  372702: eeb8 7a67    	vcvt.f32.u32	s14, s15
  372706: 9b03         	ldr	r3, [sp, #0xc]
  372708: edd3 7a56    	vldr	s15, [r3, #344]
  37270c: ee27 7a27    	vmul.f32	s14, s14, s15
  372710: 9b03         	ldr	r3, [sp, #0xc]
  372712: edd3 7a55    	vldr	s15, [r3, #340]
  372716: ee27 7a27    	vmul.f32	s14, s14, s15
  37271a: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  37271e: eec7 7a27    	vdiv.f32	s15, s14, s15
  372722: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  372726: ee38 7b47    	vsub.f64	d7, d8, d7
  37272a: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  37272e: 9b03         	ldr	r3, [sp, #0xc]
  372730: edd3 7a57    	vldr	s15, [r3, #348]
  372734: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  372738: ab3a         	add	r3, sp, #0xe8
  37273a: 4618         	mov	r0, r3
  37273c: ed9f 0b90    	vldr	d0, [pc, #576]          @ 0x372980 <MultiplayerGameLayer::init()+0xbb0>
  372740: eeb0 1b47    	vmov.f64	d1, d7
  372744: f7fe fbfa    	bl	0x370f3c <MenuTableView::cellTouched(unsigned int)+0x1c0> @ imm = #-0x180c
  372748: ed9d 7b3c    	vldr	d7, [sp, #240]
  37274c: eef7 7bc7    	vcvt.f32.f64	s15, d7
  372750: ab22         	add	r3, sp, #0x88
  372752: 4618         	mov	r0, r3
  372754: ee18 1a10    	vmov	r1, s16
  372758: ee17 2a90    	vmov	r2, s15
  37275c: f220 fac8    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x220590
  372760: a924         	add	r1, sp, #0x90
  372762: aa20         	add	r2, sp, #0x80
  372764: ab22         	add	r3, sp, #0x88
  372766: 4608         	mov	r0, r1
  372768: 4611         	mov	r1, r2
  37276a: 461a         	mov	r2, r3
  37276c: f7fe fbd6    	bl	0x370f1c <MenuTableView::cellTouched(unsigned int)+0x1a0> @ imm = #-0x1854
  372770: ab24         	add	r3, sp, #0x90
  372772: 4630         	mov	r0, r6
  372774: 4619         	mov	r1, r3
  372776: 47a8         	blx	r5
  372778: ab06         	add	r3, sp, #0x18
  37277a: 4618         	mov	r0, r3
  37277c: f043 f0ca    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x443194
  372780: ab05         	add	r3, sp, #0x14
  372782: 4618         	mov	r0, r3
  372784: f017 f63a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x417c74
  372788: 9b03         	ldr	r3, [sp, #0xc]
  37278a: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  37278e: 681b         	ldr	r3, [r3]
  372790: 334c         	adds	r3, #0x4c
  372792: 681d         	ldr	r5, [r3]
  372794: 9b03         	ldr	r3, [sp, #0xc]
  372796: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  37279a: 461e         	mov	r6, r3
  37279c: 9b03         	ldr	r3, [sp, #0xc]
  37279e: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3727a2: 681b         	ldr	r3, [r3]
  3727a4: 3350         	adds	r3, #0x50
  3727a6: 681b         	ldr	r3, [r3]
  3727a8: 9a03         	ldr	r2, [sp, #0xc]
  3727aa: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  3727ae: 4610         	mov	r0, r2
  3727b0: 4798         	blx	r3
  3727b2: 4603         	mov	r3, r0
  3727b4: 681f         	ldr	r7, [r3]
  3727b6: 9b03         	ldr	r3, [sp, #0xc]
  3727b8: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3727bc: 681b         	ldr	r3, [r3]
  3727be: 3350         	adds	r3, #0x50
  3727c0: 681b         	ldr	r3, [r3]
  3727c2: 9a03         	ldr	r2, [sp, #0xc]
  3727c4: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  3727c8: 4610         	mov	r0, r2
  3727ca: 4798         	blx	r3
  3727cc: 4603         	mov	r3, r0
  3727ce: 685b         	ldr	r3, [r3, #0x4]
  3727d0: aa20         	add	r2, sp, #0x80
  3727d2: 4610         	mov	r0, r2
  3727d4: 4639         	mov	r1, r7
  3727d6: 461a         	mov	r2, r3
  3727d8: f220 fa8a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x220514
  3727dc: 9b03         	ldr	r3, [sp, #0xc]
  3727de: edd3 7a57    	vldr	s15, [r3, #348]
  3727e2: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3727e6: ab36         	add	r3, sp, #0xd8
  3727e8: 4618         	mov	r0, r3
  3727ea: ed9f 0b65    	vldr	d0, [pc, #404]          @ 0x372980 <MultiplayerGameLayer::init()+0xbb0>
  3727ee: eeb0 1b47    	vmov.f64	d1, d7
  3727f2: f7fe fba3    	bl	0x370f3c <MenuTableView::cellTouched(unsigned int)+0x1c0> @ imm = #-0x18ba
  3727f6: ed9d 8b36    	vldr	d8, [sp, #216]
  3727fa: 9b03         	ldr	r3, [sp, #0xc]
  3727fc: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  372800: 681b         	ldr	r3, [r3]
  372802: f503 73fe    	add.w	r3, r3, #0x1fc
  372806: 681b         	ldr	r3, [r3]
  372808: 9a03         	ldr	r2, [sp, #0xc]
  37280a: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  37280e: 4610         	mov	r0, r2
  372810: 4798         	blx	r3
  372812: 4607         	mov	r7, r0
  372814: ab05         	add	r3, sp, #0x14
  372816: 4618         	mov	r0, r3
  372818: f017 f5ec    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x417bd8
  37281c: aa06         	add	r2, sp, #0x18
  37281e: ab05         	add	r3, sp, #0x14
  372820: 4610         	mov	r0, r2
  372822: 4639         	mov	r1, r7
  372824: 461a         	mov	r2, r3
  372826: f044 f11b    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x444236
  37282a: ab06         	add	r3, sp, #0x18
  37282c: 4618         	mov	r0, r3
  37282e: f042 f415    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x44282a
  372832: 4603         	mov	r3, r0
  372834: ee07 3a90    	vmov	s15, r3
  372838: eeb8 7a67    	vcvt.f32.u32	s14, s15
  37283c: 9b03         	ldr	r3, [sp, #0xc]
  37283e: edd3 7a56    	vldr	s15, [r3, #344]
  372842: ee27 7a27    	vmul.f32	s14, s14, s15
  372846: 9b03         	ldr	r3, [sp, #0xc]
  372848: edd3 7a55    	vldr	s15, [r3, #340]
  37284c: ee27 7a27    	vmul.f32	s14, s14, s15
  372850: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  372854: eec7 7a27    	vdiv.f32	s15, s14, s15
  372858: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  37285c: ee38 7b47    	vsub.f64	d7, d8, d7
  372860: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  372864: 9b03         	ldr	r3, [sp, #0xc]
  372866: edd3 7a57    	vldr	s15, [r3, #348]
  37286a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  37286e: ab3a         	add	r3, sp, #0xe8
  372870: 4618         	mov	r0, r3
  372872: ed9f 0b43    	vldr	d0, [pc, #268]          @ 0x372980 <MultiplayerGameLayer::init()+0xbb0>
  372876: eeb0 1b47    	vmov.f64	d1, d7
  37287a: f7fe fb5f    	bl	0x370f3c <MenuTableView::cellTouched(unsigned int)+0x1c0> @ imm = #-0x1942
  37287e: ed9d 7b3c    	vldr	d7, [sp, #240]
  372882: eef7 7bc7    	vcvt.f32.f64	s15, d7
  372886: ab22         	add	r3, sp, #0x88
  372888: 4618         	mov	r0, r3
  37288a: ee18 1a10    	vmov	r1, s16
  37288e: ee17 2a90    	vmov	r2, s15
  372892: f220 fa2d    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x22045a
  372896: a924         	add	r1, sp, #0x90
  372898: aa20         	add	r2, sp, #0x80
  37289a: ab22         	add	r3, sp, #0x88
  37289c: 4608         	mov	r0, r1
  37289e: 4611         	mov	r1, r2
  3728a0: 461a         	mov	r2, r3
  3728a2: f7fe fb3b    	bl	0x370f1c <MenuTableView::cellTouched(unsigned int)+0x1a0> @ imm = #-0x198a
  3728a6: ab24         	add	r3, sp, #0x90
  3728a8: 4630         	mov	r0, r6
  3728aa: 4619         	mov	r1, r3
  3728ac: 47a8         	blx	r5
  3728ae: ab06         	add	r3, sp, #0x18
  3728b0: 4618         	mov	r0, r3
  3728b2: f043 f02f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44305e
  3728b6: ab05         	add	r3, sp, #0x14
  3728b8: 4618         	mov	r0, r3
  3728ba: f017 f59f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x417b3e
  3728be: 9b03         	ldr	r3, [sp, #0xc]
  3728c0: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3728c4: 681b         	ldr	r3, [r3]
  3728c6: 334c         	adds	r3, #0x4c
  3728c8: 681d         	ldr	r5, [r3]
  3728ca: 9b03         	ldr	r3, [sp, #0xc]
  3728cc: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3728d0: 461e         	mov	r6, r3
  3728d2: 9b03         	ldr	r3, [sp, #0xc]
  3728d4: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3728d8: 681b         	ldr	r3, [r3]
  3728da: 3350         	adds	r3, #0x50
  3728dc: 681b         	ldr	r3, [r3]
  3728de: 9a03         	ldr	r2, [sp, #0xc]
  3728e0: f8d2 213c    	ldr.w	r2, [r2, #0x13c]
  3728e4: 4610         	mov	r0, r2
  3728e6: 4798         	blx	r3
  3728e8: 4603         	mov	r3, r0
  3728ea: 681f         	ldr	r7, [r3]
  3728ec: 9b03         	ldr	r3, [sp, #0xc]
  3728ee: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3728f2: 681b         	ldr	r3, [r3]
  3728f4: 3350         	adds	r3, #0x50
  3728f6: 681b         	ldr	r3, [r3]
  3728f8: 9a03         	ldr	r2, [sp, #0xc]
  3728fa: f8d2 213c    	ldr.w	r2, [r2, #0x13c]
  3728fe: 4610         	mov	r0, r2
  372900: 4798         	blx	r3
  372902: 4603         	mov	r3, r0
  372904: 685b         	ldr	r3, [r3, #0x4]
  372906: aa20         	add	r2, sp, #0x80
  372908: 4610         	mov	r0, r2
  37290a: 4639         	mov	r1, r7
  37290c: 461a         	mov	r2, r3
  37290e: f220 f9ef    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2203de
  372912: 9b03         	ldr	r3, [sp, #0xc]
  372914: edd3 7a57    	vldr	s15, [r3, #348]
  372918: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  37291c: ab36         	add	r3, sp, #0xd8
  37291e: 4618         	mov	r0, r3
  372920: ed9f 0b17    	vldr	d0, [pc, #92]           @ 0x372980 <MultiplayerGameLayer::init()+0xbb0>
  372924: eeb0 1b47    	vmov.f64	d1, d7
  372928: f7fe fb08    	bl	0x370f3c <MenuTableView::cellTouched(unsigned int)+0x1c0> @ imm = #-0x19f0
  37292c: ed9d 8b36    	vldr	d8, [sp, #216]
  372930: 9b03         	ldr	r3, [sp, #0xc]
  372932: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  372936: 681b         	ldr	r3, [r3]
  372938: f503 73fe    	add.w	r3, r3, #0x1fc
  37293c: 681b         	ldr	r3, [r3]
  37293e: 9a03         	ldr	r2, [sp, #0xc]
  372940: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  372944: 4610         	mov	r0, r2
  372946: 4798         	blx	r3
  372948: 4607         	mov	r7, r0
  37294a: ab05         	add	r3, sp, #0x14
  37294c: 4618         	mov	r0, r3
  37294e: f017 f551    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x417aa2
  372952: aa06         	add	r2, sp, #0x18
  372954: ab05         	add	r3, sp, #0x14
  372956: 4610         	mov	r0, r2
  372958: 4639         	mov	r1, r7
  37295a: 461a         	mov	r2, r3
  37295c: f044 f080    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x444100
  372960: ab06         	add	r3, sp, #0x18
  372962: 4618         	mov	r0, r3
  372964: f042 f37a    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x4426f4
  372968: 4603         	mov	r3, r0
  37296a: ee07 3a90    	vmov	s15, r3
  37296e: eeb8 7a67    	vcvt.f32.u32	s14, s15
  372972: 9b03         	ldr	r3, [sp, #0xc]
  372974: edd3 7a56    	vldr	s15, [r3, #344]
  372978: ee27 7a27    	vmul.f32	s14, s14, s15
  37297c: e008         	b	0x372990 <MultiplayerGameLayer::init()+0xbc0> @ imm = #0x10
  37297e: bf00         	nop
  372990: 9b03         	ldr	r3, [sp, #0xc]
  372992: edd3 7a55    	vldr	s15, [r3, #340]
  372996: ee27 7a27    	vmul.f32	s14, s14, s15
  37299a: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  37299e: eec7 7a27    	vdiv.f32	s15, s14, s15
  3729a2: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3729a6: ee38 7b47    	vsub.f64	d7, d8, d7
  3729aa: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3729ae: 9b03         	ldr	r3, [sp, #0xc]
  3729b0: edd3 7a57    	vldr	s15, [r3, #348]
  3729b4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3729b8: ab3a         	add	r3, sp, #0xe8
  3729ba: 4618         	mov	r0, r3
  3729bc: ed1f 0b0e    	vldr	d0, [pc, #-56]          @ 0x372988 <MultiplayerGameLayer::init()+0xbb8>
  3729c0: eeb0 1b47    	vmov.f64	d1, d7
  3729c4: f7fe faba    	bl	0x370f3c <MenuTableView::cellTouched(unsigned int)+0x1c0> @ imm = #-0x1a8c
  3729c8: ed9d 7b3c    	vldr	d7, [sp, #240]
  3729cc: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3729d0: ab22         	add	r3, sp, #0x88
  3729d2: 4618         	mov	r0, r3
  3729d4: ee18 1a10    	vmov	r1, s16
  3729d8: ee17 2a90    	vmov	r2, s15
  3729dc: f220 f988    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x220310
  3729e0: a924         	add	r1, sp, #0x90
  3729e2: aa20         	add	r2, sp, #0x80
  3729e4: ab22         	add	r3, sp, #0x88
  3729e6: 4608         	mov	r0, r1
  3729e8: 4611         	mov	r1, r2
  3729ea: 461a         	mov	r2, r3
  3729ec: f7fe fa96    	bl	0x370f1c <MenuTableView::cellTouched(unsigned int)+0x1a0> @ imm = #-0x1ad4
  3729f0: ab24         	add	r3, sp, #0x90
  3729f2: 4630         	mov	r0, r6
  3729f4: 4619         	mov	r1, r3
  3729f6: 47a8         	blx	r5
  3729f8: ab06         	add	r3, sp, #0x18
  3729fa: 4618         	mov	r0, r3
  3729fc: f042 f78a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x442f14
  372a00: ab05         	add	r3, sp, #0x14
  372a02: 4618         	mov	r0, r3
  372a04: f017 f4fa    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4179f4
  372a08: 9b03         	ldr	r3, [sp, #0xc]
  372a0a: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  372a0e: 681b         	ldr	r3, [r3]
  372a10: 334c         	adds	r3, #0x4c
  372a12: 681d         	ldr	r5, [r3]
  372a14: 9b03         	ldr	r3, [sp, #0xc]
  372a16: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  372a1a: 461e         	mov	r6, r3
  372a1c: 9b03         	ldr	r3, [sp, #0xc]
  372a1e: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  372a22: 681b         	ldr	r3, [r3]
  372a24: 3350         	adds	r3, #0x50
  372a26: 681b         	ldr	r3, [r3]
  372a28: 9a03         	ldr	r2, [sp, #0xc]
  372a2a: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  372a2e: 4610         	mov	r0, r2
  372a30: 4798         	blx	r3
  372a32: 4603         	mov	r3, r0
  372a34: 681f         	ldr	r7, [r3]
  372a36: 9b03         	ldr	r3, [sp, #0xc]
  372a38: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  372a3c: 681b         	ldr	r3, [r3]
  372a3e: 3350         	adds	r3, #0x50
  372a40: 681b         	ldr	r3, [r3]
  372a42: 9a03         	ldr	r2, [sp, #0xc]
  372a44: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  372a48: 4610         	mov	r0, r2
  372a4a: 4798         	blx	r3
  372a4c: 4603         	mov	r3, r0
  372a4e: 685b         	ldr	r3, [r3, #0x4]
  372a50: aa20         	add	r2, sp, #0x80
  372a52: 4610         	mov	r0, r2
  372a54: 4639         	mov	r1, r7
  372a56: 461a         	mov	r2, r3
  372a58: f220 f94a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x220294
  372a5c: 9b03         	ldr	r3, [sp, #0xc]
  372a5e: edd3 7a57    	vldr	s15, [r3, #348]
  372a62: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  372a66: ab36         	add	r3, sp, #0xd8
  372a68: 4618         	mov	r0, r3
  372a6a: ed1f 0b39    	vldr	d0, [pc, #-228]         @ 0x372988 <MultiplayerGameLayer::init()+0xbb8>
  372a6e: eeb0 1b47    	vmov.f64	d1, d7
  372a72: f7fe fa63    	bl	0x370f3c <MenuTableView::cellTouched(unsigned int)+0x1c0> @ imm = #-0x1b3a
  372a76: ed9d 8b36    	vldr	d8, [sp, #216]
  372a7a: 9b03         	ldr	r3, [sp, #0xc]
  372a7c: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  372a80: 681b         	ldr	r3, [r3]
  372a82: f503 73fe    	add.w	r3, r3, #0x1fc
  372a86: 681b         	ldr	r3, [r3]
  372a88: 9a03         	ldr	r2, [sp, #0xc]
  372a8a: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  372a8e: 4610         	mov	r0, r2
  372a90: 4798         	blx	r3
  372a92: 4607         	mov	r7, r0
  372a94: ab05         	add	r3, sp, #0x14
  372a96: 4618         	mov	r0, r3
  372a98: f017 f4ac    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x417958
  372a9c: aa06         	add	r2, sp, #0x18
  372a9e: ab05         	add	r3, sp, #0x14
  372aa0: 4610         	mov	r0, r2
  372aa2: 4639         	mov	r1, r7
  372aa4: 461a         	mov	r2, r3
  372aa6: f043 f7db    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x443fb6
  372aaa: ab06         	add	r3, sp, #0x18
  372aac: 4618         	mov	r0, r3
  372aae: f042 f2d5    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x4425aa
  372ab2: 4603         	mov	r3, r0
  372ab4: ee07 3a90    	vmov	s15, r3
  372ab8: eeb8 7a67    	vcvt.f32.u32	s14, s15
  372abc: 9b03         	ldr	r3, [sp, #0xc]
  372abe: edd3 7a56    	vldr	s15, [r3, #344]
  372ac2: ee27 7a27    	vmul.f32	s14, s14, s15
  372ac6: 9b03         	ldr	r3, [sp, #0xc]
  372ac8: edd3 7a55    	vldr	s15, [r3, #340]
  372acc: ee27 7a27    	vmul.f32	s14, s14, s15
  372ad0: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  372ad4: eec7 7a27    	vdiv.f32	s15, s14, s15
  372ad8: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  372adc: ee38 7b47    	vsub.f64	d7, d8, d7
  372ae0: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  372ae4: 9b03         	ldr	r3, [sp, #0xc]
  372ae6: edd3 7a57    	vldr	s15, [r3, #348]
  372aea: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  372aee: ab3a         	add	r3, sp, #0xe8
  372af0: 4618         	mov	r0, r3
  372af2: ed1f 0b5b    	vldr	d0, [pc, #-364]         @ 0x372988 <MultiplayerGameLayer::init()+0xbb8>
  372af6: eeb0 1b47    	vmov.f64	d1, d7
  372afa: f7fe fa1f    	bl	0x370f3c <MenuTableView::cellTouched(unsigned int)+0x1c0> @ imm = #-0x1bc2
  372afe: ed9d 7b3c    	vldr	d7, [sp, #240]
  372b02: eef7 7bc7    	vcvt.f32.f64	s15, d7
  372b06: ab22         	add	r3, sp, #0x88
  372b08: 4618         	mov	r0, r3
  372b0a: ee18 1a10    	vmov	r1, s16
  372b0e: ee17 2a90    	vmov	r2, s15
  372b12: f220 f8ed    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2201da
  372b16: a924         	add	r1, sp, #0x90
  372b18: aa20         	add	r2, sp, #0x80
  372b1a: ab22         	add	r3, sp, #0x88
  372b1c: 4608         	mov	r0, r1
  372b1e: 4611         	mov	r1, r2
  372b20: 461a         	mov	r2, r3
  372b22: f7fe f9fb    	bl	0x370f1c <MenuTableView::cellTouched(unsigned int)+0x1a0> @ imm = #-0x1c0a
  372b26: ab24         	add	r3, sp, #0x90
  372b28: 4630         	mov	r0, r6
  372b2a: 4619         	mov	r1, r3
  372b2c: 47a8         	blx	r5
  372b2e: ab06         	add	r3, sp, #0x18
  372b30: 4618         	mov	r0, r3
  372b32: f042 f6ef    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x442dde
  372b36: ab05         	add	r3, sp, #0x14
  372b38: 4618         	mov	r0, r3
  372b3a: f017 f45f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4178be
  372b3e: 9b03         	ldr	r3, [sp, #0xc]
  372b40: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  372b44: 681b         	ldr	r3, [r3]
  372b46: 334c         	adds	r3, #0x4c
  372b48: 681d         	ldr	r5, [r3]
  372b4a: 9b03         	ldr	r3, [sp, #0xc]
  372b4c: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  372b50: 461e         	mov	r6, r3
  372b52: 9b03         	ldr	r3, [sp, #0xc]
  372b54: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  372b58: 681b         	ldr	r3, [r3]
  372b5a: 3350         	adds	r3, #0x50
  372b5c: 681b         	ldr	r3, [r3]
  372b5e: 9a03         	ldr	r2, [sp, #0xc]
  372b60: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  372b64: 4610         	mov	r0, r2
  372b66: 4798         	blx	r3
  372b68: 4603         	mov	r3, r0
  372b6a: 681f         	ldr	r7, [r3]
  372b6c: 9b03         	ldr	r3, [sp, #0xc]
  372b6e: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  372b72: 681b         	ldr	r3, [r3]
  372b74: 3350         	adds	r3, #0x50
  372b76: 681b         	ldr	r3, [r3]
  372b78: 9a03         	ldr	r2, [sp, #0xc]
  372b7a: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  372b7e: 4610         	mov	r0, r2
  372b80: 4798         	blx	r3
  372b82: 4603         	mov	r3, r0
  372b84: 685b         	ldr	r3, [r3, #0x4]
  372b86: aa20         	add	r2, sp, #0x80
  372b88: 4610         	mov	r0, r2
  372b8a: 4639         	mov	r1, r7
  372b8c: 461a         	mov	r2, r3
  372b8e: f220 f8af    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x22015e
  372b92: 9b03         	ldr	r3, [sp, #0xc]
  372b94: edd3 7a57    	vldr	s15, [r3, #348]
  372b98: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  372b9c: ab36         	add	r3, sp, #0xd8
  372b9e: 4618         	mov	r0, r3
  372ba0: ed1f 0b87    	vldr	d0, [pc, #-540]         @ 0x372988 <MultiplayerGameLayer::init()+0xbb8>
  372ba4: eeb0 1b47    	vmov.f64	d1, d7
  372ba8: f7fe f9c8    	bl	0x370f3c <MenuTableView::cellTouched(unsigned int)+0x1c0> @ imm = #-0x1c70
  372bac: ed9d 8b36    	vldr	d8, [sp, #216]
  372bb0: 9b03         	ldr	r3, [sp, #0xc]
  372bb2: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  372bb6: 681b         	ldr	r3, [r3]
  372bb8: f503 73fe    	add.w	r3, r3, #0x1fc
  372bbc: 681b         	ldr	r3, [r3]
  372bbe: 9a03         	ldr	r2, [sp, #0xc]
  372bc0: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  372bc4: 4610         	mov	r0, r2
  372bc6: 4798         	blx	r3
  372bc8: 4607         	mov	r7, r0
  372bca: ab05         	add	r3, sp, #0x14
  372bcc: 4618         	mov	r0, r3
  372bce: f017 f411    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x417822
  372bd2: aa06         	add	r2, sp, #0x18
  372bd4: ab05         	add	r3, sp, #0x14
  372bd6: 4610         	mov	r0, r2
  372bd8: 4639         	mov	r1, r7
  372bda: 461a         	mov	r2, r3
  372bdc: f043 f740    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x443e80
  372be0: ab06         	add	r3, sp, #0x18
  372be2: 4618         	mov	r0, r3
  372be4: f042 f23a    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x442474
  372be8: 4603         	mov	r3, r0
  372bea: ee07 3a90    	vmov	s15, r3
  372bee: eeb8 7a67    	vcvt.f32.u32	s14, s15
  372bf2: 9b03         	ldr	r3, [sp, #0xc]
  372bf4: edd3 7a56    	vldr	s15, [r3, #344]
  372bf8: ee27 7a27    	vmul.f32	s14, s14, s15
  372bfc: 9b03         	ldr	r3, [sp, #0xc]
  372bfe: edd3 7a55    	vldr	s15, [r3, #340]
  372c02: ee27 7a27    	vmul.f32	s14, s14, s15
  372c06: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  372c0a: eec7 7a27    	vdiv.f32	s15, s14, s15
  372c0e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  372c12: ee38 7b47    	vsub.f64	d7, d8, d7
  372c16: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  372c1a: 9b03         	ldr	r3, [sp, #0xc]
  372c1c: edd3 7a57    	vldr	s15, [r3, #348]
  372c20: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  372c24: ab3a         	add	r3, sp, #0xe8
  372c26: 4618         	mov	r0, r3
  372c28: ed1f 0ba9    	vldr	d0, [pc, #-676]         @ 0x372988 <MultiplayerGameLayer::init()+0xbb8>
  372c2c: eeb0 1b47    	vmov.f64	d1, d7
  372c30: f7fe f984    	bl	0x370f3c <MenuTableView::cellTouched(unsigned int)+0x1c0> @ imm = #-0x1cf8
  372c34: ed9d 7b3c    	vldr	d7, [sp, #240]
  372c38: eef7 7bc7    	vcvt.f32.f64	s15, d7
  372c3c: ab22         	add	r3, sp, #0x88
  372c3e: 4618         	mov	r0, r3
  372c40: ee18 1a10    	vmov	r1, s16
  372c44: ee17 2a90    	vmov	r2, s15
  372c48: f220 f852    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2200a4
  372c4c: a924         	add	r1, sp, #0x90
  372c4e: aa20         	add	r2, sp, #0x80
  372c50: ab22         	add	r3, sp, #0x88
  372c52: 4608         	mov	r0, r1
  372c54: 4611         	mov	r1, r2
  372c56: 461a         	mov	r2, r3
  372c58: f7fe f960    	bl	0x370f1c <MenuTableView::cellTouched(unsigned int)+0x1a0> @ imm = #-0x1d40
  372c5c: ab24         	add	r3, sp, #0x90
  372c5e: 4630         	mov	r0, r6
  372c60: 4619         	mov	r1, r3
  372c62: 47a8         	blx	r5
  372c64: ab06         	add	r3, sp, #0x18
  372c66: 4618         	mov	r0, r3
  372c68: f042 f654    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x442ca8
  372c6c: ab05         	add	r3, sp, #0x14
  372c6e: 4618         	mov	r0, r3
  372c70: f017 f3c4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x417788
  372c74: 9b03         	ldr	r3, [sp, #0xc]
  372c76: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  372c7a: 681b         	ldr	r3, [r3]
  372c7c: 334c         	adds	r3, #0x4c
  372c7e: 681d         	ldr	r5, [r3]
  372c80: 9b03         	ldr	r3, [sp, #0xc]
  372c82: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  372c86: 461e         	mov	r6, r3
  372c88: 9b03         	ldr	r3, [sp, #0xc]
  372c8a: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  372c8e: 681b         	ldr	r3, [r3]
  372c90: 3350         	adds	r3, #0x50
  372c92: 681b         	ldr	r3, [r3]
  372c94: 9a03         	ldr	r2, [sp, #0xc]
  372c96: f8d2 2140    	ldr.w	r2, [r2, #0x140]
  372c9a: 4610         	mov	r0, r2
  372c9c: 4798         	blx	r3
  372c9e: 4603         	mov	r3, r0
  372ca0: 681f         	ldr	r7, [r3]
  372ca2: 9b03         	ldr	r3, [sp, #0xc]
  372ca4: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  372ca8: 681b         	ldr	r3, [r3]
  372caa: 3350         	adds	r3, #0x50
  372cac: 681b         	ldr	r3, [r3]
  372cae: 9a03         	ldr	r2, [sp, #0xc]
  372cb0: f8d2 2140    	ldr.w	r2, [r2, #0x140]
  372cb4: 4610         	mov	r0, r2
  372cb6: 4798         	blx	r3
  372cb8: 4603         	mov	r3, r0
  372cba: 685b         	ldr	r3, [r3, #0x4]
  372cbc: aa20         	add	r2, sp, #0x80
  372cbe: 4610         	mov	r0, r2
  372cc0: 4639         	mov	r1, r7
  372cc2: 461a         	mov	r2, r3
  372cc4: f220 f814    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x220028
  372cc8: 9b03         	ldr	r3, [sp, #0xc]
  372cca: edd3 7a57    	vldr	s15, [r3, #348]
  372cce: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  372cd2: ab36         	add	r3, sp, #0xd8
  372cd4: 4618         	mov	r0, r3
  372cd6: ed9f 0bae    	vldr	d0, [pc, #696]          @ 0x372f90 <MultiplayerGameLayer::init()+0x11c0>
  372cda: eeb0 1b47    	vmov.f64	d1, d7
  372cde: f7fe f92d    	bl	0x370f3c <MenuTableView::cellTouched(unsigned int)+0x1c0> @ imm = #-0x1da6
  372ce2: ed9d 8b36    	vldr	d8, [sp, #216]
  372ce6: 9b03         	ldr	r3, [sp, #0xc]
  372ce8: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  372cec: 681b         	ldr	r3, [r3]
  372cee: f503 73fe    	add.w	r3, r3, #0x1fc
  372cf2: 681b         	ldr	r3, [r3]
  372cf4: 9a03         	ldr	r2, [sp, #0xc]
  372cf6: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  372cfa: 4610         	mov	r0, r2
  372cfc: 4798         	blx	r3
  372cfe: 4607         	mov	r7, r0
  372d00: ab05         	add	r3, sp, #0x14
  372d02: 4618         	mov	r0, r3
  372d04: f017 f376    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4176ec
  372d08: aa06         	add	r2, sp, #0x18
  372d0a: ab05         	add	r3, sp, #0x14
  372d0c: 4610         	mov	r0, r2
  372d0e: 4639         	mov	r1, r7
  372d10: 461a         	mov	r2, r3
  372d12: f043 f6a5    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x443d4a
  372d16: ab06         	add	r3, sp, #0x18
  372d18: 4618         	mov	r0, r3
  372d1a: f042 f19f    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x44233e
  372d1e: 4603         	mov	r3, r0
  372d20: ee07 3a90    	vmov	s15, r3
  372d24: eeb8 7a67    	vcvt.f32.u32	s14, s15
  372d28: 9b03         	ldr	r3, [sp, #0xc]
  372d2a: edd3 7a56    	vldr	s15, [r3, #344]
  372d2e: ee27 7a27    	vmul.f32	s14, s14, s15
  372d32: 9b03         	ldr	r3, [sp, #0xc]
  372d34: edd3 7a55    	vldr	s15, [r3, #340]
  372d38: ee27 7a27    	vmul.f32	s14, s14, s15
  372d3c: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  372d40: eec7 7a27    	vdiv.f32	s15, s14, s15
  372d44: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  372d48: ee38 7b47    	vsub.f64	d7, d8, d7
  372d4c: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  372d50: 9b03         	ldr	r3, [sp, #0xc]
  372d52: edd3 7a57    	vldr	s15, [r3, #348]
  372d56: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  372d5a: ab3a         	add	r3, sp, #0xe8
  372d5c: 4618         	mov	r0, r3
  372d5e: ed9f 0b8c    	vldr	d0, [pc, #560]          @ 0x372f90 <MultiplayerGameLayer::init()+0x11c0>
  372d62: eeb0 1b47    	vmov.f64	d1, d7
  372d66: f7fe f8e9    	bl	0x370f3c <MenuTableView::cellTouched(unsigned int)+0x1c0> @ imm = #-0x1e2e
  372d6a: ed9d 7b3c    	vldr	d7, [sp, #240]
  372d6e: eef7 7bc7    	vcvt.f32.f64	s15, d7
  372d72: ab22         	add	r3, sp, #0x88
  372d74: 4618         	mov	r0, r3
  372d76: ee18 1a10    	vmov	r1, s16
  372d7a: ee17 2a90    	vmov	r2, s15
  372d7e: f21f ffb7    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x21ff6e
  372d82: a924         	add	r1, sp, #0x90
  372d84: aa20         	add	r2, sp, #0x80
  372d86: ab22         	add	r3, sp, #0x88
  372d88: 4608         	mov	r0, r1
  372d8a: 4611         	mov	r1, r2
  372d8c: 461a         	mov	r2, r3
  372d8e: f7fe f8c5    	bl	0x370f1c <MenuTableView::cellTouched(unsigned int)+0x1a0> @ imm = #-0x1e76
  372d92: ab24         	add	r3, sp, #0x90
  372d94: 4630         	mov	r0, r6
  372d96: 4619         	mov	r1, r3
  372d98: 47a8         	blx	r5
  372d9a: ab06         	add	r3, sp, #0x18
  372d9c: 4618         	mov	r0, r3
  372d9e: f042 f5b9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x442b72
  372da2: ab05         	add	r3, sp, #0x14
  372da4: 4618         	mov	r0, r3
  372da6: f017 f329    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x417652
  372daa: 4b7b         	ldr	r3, [pc, #0x1ec]        @ 0x372f98 <MultiplayerGameLayer::init()+0x11c8>
  372dac: 447b         	add	r3, pc
  372dae: 4618         	mov	r0, r3
  372db0: f265 faa8    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x265550
  372db4: 4602         	mov	r2, r0
  372db6: 9b03         	ldr	r3, [sp, #0xc]
  372db8: f8c3 2110    	str.w	r2, [r3, #0x110]
  372dbc: 9b03         	ldr	r3, [sp, #0xc]
  372dbe: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  372dc2: 681b         	ldr	r3, [r3]
  372dc4: 334c         	adds	r3, #0x4c
  372dc6: 681d         	ldr	r5, [r3]
  372dc8: 9b03         	ldr	r3, [sp, #0xc]
  372dca: f8d3 6110    	ldr.w	r6, [r3, #0x110]
  372dce: ab3a         	add	r3, sp, #0xe8
  372dd0: 4618         	mov	r0, r3
  372dd2: f04f 0100    	mov.w	r1, #0x0
  372dd6: f2c4 3142    	movt	r1, #0x4342
  372dda: f04f 0200    	mov.w	r2, #0x0
  372dde: f2c4 0240    	movt	r2, #0x4040
  372de2: f21f ff85    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x21ff0a
  372de6: ab3a         	add	r3, sp, #0xe8
  372de8: 4630         	mov	r0, r6
  372dea: 4619         	mov	r1, r3
  372dec: 47a8         	blx	r5
  372dee: 9b03         	ldr	r3, [sp, #0xc]
  372df0: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  372df4: 681b         	ldr	r3, [r3]
  372df6: 33c8         	adds	r3, #0xc8
  372df8: 681b         	ldr	r3, [r3]
  372dfa: 9a03         	ldr	r2, [sp, #0xc]
  372dfc: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  372e00: 4611         	mov	r1, r2
  372e02: 9a03         	ldr	r2, [sp, #0xc]
  372e04: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  372e08: 4608         	mov	r0, r1
  372e0a: 4611         	mov	r1, r2
  372e0c: 4798         	blx	r3
  372e0e: 4b63         	ldr	r3, [pc, #0x18c]        @ 0x372f9c <MultiplayerGameLayer::init()+0x11cc>
  372e10: 447b         	add	r3, pc
  372e12: 4618         	mov	r0, r3
  372e14: f265 fa76    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2654ec
  372e18: 4603         	mov	r3, r0
  372e1a: 931a         	str	r3, [sp, #0x68]
  372e1c: 9b1a         	ldr	r3, [sp, #0x68]
  372e1e: 681b         	ldr	r3, [r3]
  372e20: 334c         	adds	r3, #0x4c
  372e22: 681d         	ldr	r5, [r3]
  372e24: ab3a         	add	r3, sp, #0xe8
  372e26: 4618         	mov	r0, r3
  372e28: f04f 0100    	mov.w	r1, #0x0
  372e2c: f2c4 3142    	movt	r1, #0x4342
  372e30: f04f 0200    	mov.w	r2, #0x0
  372e34: f2c4 0240    	movt	r2, #0x4040
  372e38: f21f ff5a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x21feb4
  372e3c: ab3a         	add	r3, sp, #0xe8
  372e3e: 981a         	ldr	r0, [sp, #0x68]
  372e40: 4619         	mov	r1, r3
  372e42: 47a8         	blx	r5
  372e44: 9b03         	ldr	r3, [sp, #0xc]
  372e46: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  372e4a: 681b         	ldr	r3, [r3]
  372e4c: 33c8         	adds	r3, #0xc8
  372e4e: 681b         	ldr	r3, [r3]
  372e50: 9a03         	ldr	r2, [sp, #0xc]
  372e52: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  372e56: 4610         	mov	r0, r2
  372e58: 991a         	ldr	r1, [sp, #0x68]
  372e5a: 4798         	blx	r3
  372e5c: 4b50         	ldr	r3, [pc, #0x140]        @ 0x372fa0 <MultiplayerGameLayer::init()+0x11d0>
  372e5e: 447b         	add	r3, pc
  372e60: 4618         	mov	r0, r3
  372e62: f265 fa4f    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x26549e
  372e66: 4603         	mov	r3, r0
  372e68: 931b         	str	r3, [sp, #0x6c]
  372e6a: 9b1b         	ldr	r3, [sp, #0x6c]
  372e6c: 681b         	ldr	r3, [r3]
  372e6e: 3340         	adds	r3, #0x40
  372e70: 681b         	ldr	r3, [r3]
  372e72: 981b         	ldr	r0, [sp, #0x6c]
  372e74: f04f 517c    	mov.w	r1, #0x3f000000
  372e78: 4798         	blx	r3
  372e7a: 9b1b         	ldr	r3, [sp, #0x6c]
  372e7c: 681b         	ldr	r3, [r3]
  372e7e: 334c         	adds	r3, #0x4c
  372e80: 681d         	ldr	r5, [r3]
  372e82: ab3a         	add	r3, sp, #0xe8
  372e84: 4618         	mov	r0, r3
  372e86: f04f 0100    	mov.w	r1, #0x0
  372e8a: f2c4 310c    	movt	r1, #0x430c
  372e8e: f04f 4241    	mov.w	r2, #0xc1000000
  372e92: f21f ff2d    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x21fe5a
  372e96: ab3a         	add	r3, sp, #0xe8
  372e98: 981b         	ldr	r0, [sp, #0x6c]
  372e9a: 4619         	mov	r1, r3
  372e9c: 47a8         	blx	r5
  372e9e: 9b03         	ldr	r3, [sp, #0xc]
  372ea0: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  372ea4: 681b         	ldr	r3, [r3]
  372ea6: 33c8         	adds	r3, #0xc8
  372ea8: 681b         	ldr	r3, [r3]
  372eaa: 9a03         	ldr	r2, [sp, #0xc]
  372eac: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  372eb0: 4610         	mov	r0, r2
  372eb2: 991b         	ldr	r1, [sp, #0x6c]
  372eb4: 4798         	blx	r3
  372eb6: 4b3b         	ldr	r3, [pc, #0xec]         @ 0x372fa4 <MultiplayerGameLayer::init()+0x11d4>
  372eb8: 447b         	add	r3, pc
  372eba: 4618         	mov	r0, r3
  372ebc: f042 f220    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x442440
  372ec0: 4603         	mov	r3, r0
  372ec2: 2220         	movs	r2, #0x20
  372ec4: 9200         	str	r2, [sp]
  372ec6: 4a38         	ldr	r2, [pc, #0xe0]         @ 0x372fa8 <MultiplayerGameLayer::init()+0x11d8>
  372ec8: 447a         	add	r2, pc
  372eca: 4610         	mov	r0, r2
  372ecc: 4619         	mov	r1, r3
  372ece: 2220         	movs	r2, #0x20
  372ed0: 2320         	movs	r3, #0x20
  372ed2: f232 fa51    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x2324a2
  372ed6: 4602         	mov	r2, r0
  372ed8: 9b03         	ldr	r3, [sp, #0xc]
  372eda: f8c3 2128    	str.w	r2, [r3, #0x128]
  372ede: 9b03         	ldr	r3, [sp, #0xc]
  372ee0: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  372ee4: 4618         	mov	r0, r3
  372ee6: f224 ffff    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x224ffe
  372eea: 9b03         	ldr	r3, [sp, #0xc]
  372eec: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  372ef0: 681b         	ldr	r3, [r3]
  372ef2: 3340         	adds	r3, #0x40
  372ef4: 681b         	ldr	r3, [r3]
  372ef6: 9a03         	ldr	r2, [sp, #0xc]
  372ef8: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  372efc: 4611         	mov	r1, r2
  372efe: 9a03         	ldr	r2, [sp, #0xc]
  372f00: f8d2 2154    	ldr.w	r2, [r2, #0x154]
  372f04: 4608         	mov	r0, r1
  372f06: 4611         	mov	r1, r2
  372f08: 4798         	blx	r3
  372f0a: 9b03         	ldr	r3, [sp, #0xc]
  372f0c: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  372f10: 9a03         	ldr	r2, [sp, #0xc]
  372f12: edd2 7a56    	vldr	s15, [r2, #344]
  372f16: eefd 7ae7    	vcvt.s32.f32	s15, s15
  372f1a: ee17 2a90    	vmov	r2, s15
  372f1e: 4618         	mov	r0, r3
  372f20: 4611         	mov	r1, r2
  372f22: f232 ff2f    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x232e5e
  372f26: 9b03         	ldr	r3, [sp, #0xc]
  372f28: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  372f2c: 681b         	ldr	r3, [r3]
  372f2e: 334c         	adds	r3, #0x4c
  372f30: 681d         	ldr	r5, [r3]
  372f32: 9b03         	ldr	r3, [sp, #0xc]
  372f34: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  372f38: 461e         	mov	r6, r3
  372f3a: 9b03         	ldr	r3, [sp, #0xc]
  372f3c: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  372f40: 681b         	ldr	r3, [r3]
  372f42: 3350         	adds	r3, #0x50
  372f44: 681b         	ldr	r3, [r3]
  372f46: 9a03         	ldr	r2, [sp, #0xc]
  372f48: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  372f4c: 4610         	mov	r0, r2
  372f4e: 4798         	blx	r3
  372f50: 4603         	mov	r3, r0
  372f52: 681f         	ldr	r7, [r3]
  372f54: 9b03         	ldr	r3, [sp, #0xc]
  372f56: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  372f5a: 681b         	ldr	r3, [r3]
  372f5c: 3350         	adds	r3, #0x50
  372f5e: 681b         	ldr	r3, [r3]
  372f60: 9a03         	ldr	r2, [sp, #0xc]
  372f62: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  372f66: 4610         	mov	r0, r2
  372f68: 4798         	blx	r3
  372f6a: 4603         	mov	r3, r0
  372f6c: 685b         	ldr	r3, [r3, #0x4]
  372f6e: aa20         	add	r2, sp, #0x80
  372f70: 4610         	mov	r0, r2
  372f72: 4639         	mov	r1, r7
  372f74: 461a         	mov	r2, r3
  372f76: f21f febb    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x21fd76
  372f7a: 9b03         	ldr	r3, [sp, #0xc]
  372f7c: edd3 7a57    	vldr	s15, [r3, #348]
  372f80: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  372f84: ab36         	add	r3, sp, #0xd8
  372f86: 4618         	mov	r0, r3
  372f88: e010         	b	0x372fac <MultiplayerGameLayer::init()+0x11dc> @ imm = #0x20
  372f8a: bf00         	nop
  372f8c: f3af 8000    	nop.w
  372f98: b204         	sxth	r4, r0
  372f9a: 0045         	lsls	r5, r0, #0x1
  372f9c: b1b0         	cbz	r0, 0x372fcc <MultiplayerGameLayer::init()+0x11fc> @ imm = #0x2c
  372f9e: 0045         	lsls	r5, r0, #0x1
  372fa0: b152         	cbz	r2, 0x372fb8 <MultiplayerGameLayer::init()+0x11e8> @ imm = #0x14
  372fa2: 0045         	lsls	r5, r0, #0x1
  372fa4: daa8         	bge	0x372ef8 <MultiplayerGameLayer::init()+0x1128> @ imm = #-0xb0
  372fa6: 005c         	lsls	r4, r3, #0x1
  372fa8: b108         	cbz	r0, 0x372fae <MultiplayerGameLayer::init()+0x11de> @ imm = #0x2
  372faa: 0045         	lsls	r5, r0, #0x1
  372fac: ed9f 0b8a    	vldr	d0, [pc, #552]          @ 0x3731d8 <MultiplayerGameLayer::init()+0x1408>
  372fb0: eeb0 1b47    	vmov.f64	d1, d7
  372fb4: f7fd ffc2    	bl	0x370f3c <MenuTableView::cellTouched(unsigned int)+0x1c0> @ imm = #-0x207c
  372fb8: ed9d 8b36    	vldr	d8, [sp, #216]
  372fbc: 9b03         	ldr	r3, [sp, #0xc]
  372fbe: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  372fc2: 681b         	ldr	r3, [r3]
  372fc4: f503 73fe    	add.w	r3, r3, #0x1fc
  372fc8: 681b         	ldr	r3, [r3]
  372fca: 9a03         	ldr	r2, [sp, #0xc]
  372fcc: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  372fd0: 4610         	mov	r0, r2
  372fd2: 4798         	blx	r3
  372fd4: 4607         	mov	r7, r0
  372fd6: ab05         	add	r3, sp, #0x14
  372fd8: 4618         	mov	r0, r3
  372fda: f017 f20b    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x417416
  372fde: aa06         	add	r2, sp, #0x18
  372fe0: ab05         	add	r3, sp, #0x14
  372fe2: 4610         	mov	r0, r2
  372fe4: 4639         	mov	r1, r7
  372fe6: 461a         	mov	r2, r3
  372fe8: f043 f53a    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x443a74
  372fec: ab06         	add	r3, sp, #0x18
  372fee: 4618         	mov	r0, r3
  372ff0: f042 f034    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x442068
  372ff4: 4603         	mov	r3, r0
  372ff6: ee07 3a90    	vmov	s15, r3
  372ffa: eeb8 7a67    	vcvt.f32.u32	s14, s15
  372ffe: 9b03         	ldr	r3, [sp, #0xc]
  373000: edd3 7a56    	vldr	s15, [r3, #344]
  373004: ee27 7a27    	vmul.f32	s14, s14, s15
  373008: 9b03         	ldr	r3, [sp, #0xc]
  37300a: edd3 7a55    	vldr	s15, [r3, #340]
  37300e: ee27 7a27    	vmul.f32	s14, s14, s15
  373012: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  373016: eec7 7a27    	vdiv.f32	s15, s14, s15
  37301a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  37301e: ee38 7b47    	vsub.f64	d7, d8, d7
  373022: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  373026: 9b03         	ldr	r3, [sp, #0xc]
  373028: edd3 7a57    	vldr	s15, [r3, #348]
  37302c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  373030: ab3a         	add	r3, sp, #0xe8
  373032: 4618         	mov	r0, r3
  373034: ed9f 0b68    	vldr	d0, [pc, #416]          @ 0x3731d8 <MultiplayerGameLayer::init()+0x1408>
  373038: eeb0 1b47    	vmov.f64	d1, d7
  37303c: f7fd ff7e    	bl	0x370f3c <MenuTableView::cellTouched(unsigned int)+0x1c0> @ imm = #-0x2104
  373040: ed9d 7b3c    	vldr	d7, [sp, #240]
  373044: eef7 7bc7    	vcvt.f32.f64	s15, d7
  373048: ab22         	add	r3, sp, #0x88
  37304a: 4618         	mov	r0, r3
  37304c: ee18 1a10    	vmov	r1, s16
  373050: ee17 2a90    	vmov	r2, s15
  373054: f21f fe4c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x21fc98
  373058: a924         	add	r1, sp, #0x90
  37305a: aa20         	add	r2, sp, #0x80
  37305c: ab22         	add	r3, sp, #0x88
  37305e: 4608         	mov	r0, r1
  373060: 4611         	mov	r1, r2
  373062: 461a         	mov	r2, r3
  373064: f7fd ff5a    	bl	0x370f1c <MenuTableView::cellTouched(unsigned int)+0x1a0> @ imm = #-0x214c
  373068: ab24         	add	r3, sp, #0x90
  37306a: 4630         	mov	r0, r6
  37306c: 4619         	mov	r1, r3
  37306e: 47a8         	blx	r5
  373070: ab06         	add	r3, sp, #0x18
  373072: 4618         	mov	r0, r3
  373074: f042 f44e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44289c
  373078: ab05         	add	r3, sp, #0x14
  37307a: 4618         	mov	r0, r3
  37307c: f017 f1be    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41737c
  373080: 9b03         	ldr	r3, [sp, #0xc]
  373082: 681b         	ldr	r3, [r3]
  373084: 33c8         	adds	r3, #0xc8
  373086: 681b         	ldr	r3, [r3]
  373088: 9903         	ldr	r1, [sp, #0xc]
  37308a: 9a03         	ldr	r2, [sp, #0xc]
  37308c: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  373090: 4608         	mov	r0, r1
  373092: 4611         	mov	r1, r2
  373094: 4798         	blx	r3
  373096: 4b52         	ldr	r3, [pc, #0x148]        @ 0x3731e0 <MultiplayerGameLayer::init()+0x1410>
  373098: 447b         	add	r3, pc
  37309a: 4618         	mov	r0, r3
  37309c: f265 f872    	bl	0x5d8184 <cocos2d::CCSprite::create(char const*)> @ imm = #0x2650e4
  3730a0: 4602         	mov	r2, r0
  3730a2: 9b03         	ldr	r3, [sp, #0xc]
  3730a4: f8c3 210c    	str.w	r2, [r3, #0x10c]
  3730a8: 9b03         	ldr	r3, [sp, #0xc]
  3730aa: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3730ae: 681b         	ldr	r3, [r3]
  3730b0: 334c         	adds	r3, #0x4c
  3730b2: 681b         	ldr	r3, [r3]
  3730b4: 9a03         	ldr	r2, [sp, #0xc]
  3730b6: f8d2 110c    	ldr.w	r1, [r2, #0x10c]
  3730ba: aa1e         	add	r2, sp, #0x78
  3730bc: 4608         	mov	r0, r1
  3730be: 4611         	mov	r1, r2
  3730c0: 4798         	blx	r3
  3730c2: 9b03         	ldr	r3, [sp, #0xc]
  3730c4: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3730c8: 681b         	ldr	r3, [r3]
  3730ca: f503 73d2    	add.w	r3, r3, #0x1a4
  3730ce: 681b         	ldr	r3, [r3]
  3730d0: 9a03         	ldr	r2, [sp, #0xc]
  3730d2: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3730d6: 4610         	mov	r0, r2
  3730d8: 2123         	movs	r1, #0x23
  3730da: 4798         	blx	r3
  3730dc: 9b03         	ldr	r3, [sp, #0xc]
  3730de: 681b         	ldr	r3, [r3]
  3730e0: 33c8         	adds	r3, #0xc8
  3730e2: 681b         	ldr	r3, [r3]
  3730e4: 9903         	ldr	r1, [sp, #0xc]
  3730e6: 9a03         	ldr	r2, [sp, #0xc]
  3730e8: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3730ec: 4608         	mov	r0, r1
  3730ee: 4611         	mov	r1, r2
  3730f0: 4798         	blx	r3
  3730f2: 9b03         	ldr	r3, [sp, #0xc]
  3730f4: 4a3b         	ldr	r2, [pc, #0xec]         @ 0x3731e4 <MultiplayerGameLayer::init()+0x1414>
  3730f6: 58a2         	ldr	r2, [r4, r2]
  3730f8: 9236         	str	r2, [sp, #0xd8]
  3730fa: 2200         	movs	r2, #0x0
  3730fc: 9237         	str	r2, [sp, #0xdc]
  3730fe: 4618         	mov	r0, r3
  373100: ab36         	add	r3, sp, #0xd8
  373102: e893 0006    	ldm.w	r3, {r1, r2}
  373106: f04f 537e    	mov.w	r3, #0x3f800000
  37310a: f21e f88b    	bl	0x591224 <cocos2d::CCNode::schedule(void (cocos2d::CCObject::*)(float), float)> @ imm = #0x21e116
  37310e: 9b03         	ldr	r3, [sp, #0xc]
  373110: 4a35         	ldr	r2, [pc, #0xd4]         @ 0x3731e8 <MultiplayerGameLayer::init()+0x1418>
  373112: 58a2         	ldr	r2, [r4, r2]
  373114: 923a         	str	r2, [sp, #0xe8]
  373116: 2200         	movs	r2, #0x0
  373118: 923b         	str	r2, [sp, #0xec]
  37311a: 4618         	mov	r0, r3
  37311c: ab3a         	add	r3, sp, #0xe8
  37311e: e893 0006    	ldm.w	r3, {r1, r2}
  373122: f04f 537a    	mov.w	r3, #0x3e800000
  373126: f21e f87d    	bl	0x591224 <cocos2d::CCNode::schedule(void (cocos2d::CCObject::*)(float), float)> @ imm = #0x21e0fa
  37312a: 2301         	movs	r3, #0x1
  37312c: e04c         	b	0x3731c8 <MultiplayerGameLayer::init()+0x13f8> @ imm = #0x98
  37312e: ab06         	add	r3, sp, #0x18
  373130: 4618         	mov	r0, r3
  373132: f042 f3ef    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4427de
  373136: e7ff         	b	0x373138 <MultiplayerGameLayer::init()+0x1368> @ imm = #-0x2
  373138: ab05         	add	r3, sp, #0x14
  37313a: 4618         	mov	r0, r3
  37313c: f017 f15e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4172bc
  373140: f014 f7b4    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x414f68
  373144: ab06         	add	r3, sp, #0x18
  373146: 4618         	mov	r0, r3
  373148: f042 f3e4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4427c8
  37314c: e7ff         	b	0x37314e <MultiplayerGameLayer::init()+0x137e> @ imm = #-0x2
  37314e: ab05         	add	r3, sp, #0x14
  373150: 4618         	mov	r0, r3
  373152: f017 f153    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4172a6
  373156: f014 f7a9    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x414f52
  37315a: ab06         	add	r3, sp, #0x18
  37315c: 4618         	mov	r0, r3
  37315e: f042 f3d9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4427b2
  373162: e7ff         	b	0x373164 <MultiplayerGameLayer::init()+0x1394> @ imm = #-0x2
  373164: ab05         	add	r3, sp, #0x14
  373166: 4618         	mov	r0, r3
  373168: f017 f148    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x417290
  37316c: f014 f79e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x414f3c
  373170: ab06         	add	r3, sp, #0x18
  373172: 4618         	mov	r0, r3
  373174: f042 f3ce    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44279c
  373178: e7ff         	b	0x37317a <MultiplayerGameLayer::init()+0x13aa> @ imm = #-0x2
  37317a: ab05         	add	r3, sp, #0x14
  37317c: 4618         	mov	r0, r3
  37317e: f017 f13d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41727a
  373182: f014 f793    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x414f26
  373186: ab06         	add	r3, sp, #0x18
  373188: 4618         	mov	r0, r3
  37318a: f042 f3c3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x442786
  37318e: e7ff         	b	0x373190 <MultiplayerGameLayer::init()+0x13c0> @ imm = #-0x2
  373190: ab05         	add	r3, sp, #0x14
  373192: 4618         	mov	r0, r3
  373194: f017 f132    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x417264
  373198: f014 f788    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x414f10
  37319c: ab06         	add	r3, sp, #0x18
  37319e: 4618         	mov	r0, r3
  3731a0: f042 f3b8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x442770
  3731a4: e7ff         	b	0x3731a6 <MultiplayerGameLayer::init()+0x13d6> @ imm = #-0x2
  3731a6: ab05         	add	r3, sp, #0x14
  3731a8: 4618         	mov	r0, r3
  3731aa: f017 f127    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41724e
  3731ae: f014 f77d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x414efa
  3731b2: ab06         	add	r3, sp, #0x18
  3731b4: 4618         	mov	r0, r3
  3731b6: f042 f3ad    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44275a
  3731ba: e7ff         	b	0x3731bc <MultiplayerGameLayer::init()+0x13ec> @ imm = #-0x2
  3731bc: ab05         	add	r3, sp, #0x14
  3731be: 4618         	mov	r0, r3
  3731c0: f017 f11c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x417238
  3731c4: f014 f772    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x414ee4
  3731c8: 4618         	mov	r0, r3
  3731ca: b03f         	add	sp, #0xfc
  3731cc: ecbd 8b02    	vpop	{d8}
  3731d0: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x3731d1); words below are literal-pool data ---
  3731d2: bf00         	nop
  3731d4: f3af 8000    	nop.w
  3731e0: af40         	add	r7, sp, #0x100
  3731e2: 0045         	lsls	r5, r0, #0x1
  3731e4: dc2c         	bgt	0x373240 <MultiplayerGameLayer::~MultiplayerGameLayer()+0x50> @ imm = #0x58
  3731e6: ffff dc30    	<unknown>
  3731ea: ffff f3af    	<unknown>

// ==== MultiplayerGameLayer::~MultiplayerGameLayer
//      file offset 0x3731f0 (= ELF address; Ghidra 0x3831f0), 300 bytes, Thumb-2
  3731f0: b500         	push	{lr}
  3731f2: b083         	sub	sp, #0xc
  3731f4: 9001         	str	r0, [sp, #0x4]
  3731f6: 4b47         	ldr	r3, [pc, #0x11c]        @ 0x373314 <MultiplayerGameLayer::~MultiplayerGameLayer()+0x124>
  3731f8: 447b         	add	r3, pc
  3731fa: 9a01         	ldr	r2, [sp, #0x4]
  3731fc: 4946         	ldr	r1, [pc, #0x118]        @ 0x373318 <MultiplayerGameLayer::~MultiplayerGameLayer()+0x128>
  3731fe: 5859         	ldr	r1, [r3, r1]
  373200: 3108         	adds	r1, #0x8
  373202: 6011         	str	r1, [r2]
  373204: 9a01         	ldr	r2, [sp, #0x4]
  373206: 4944         	ldr	r1, [pc, #0x110]        @ 0x373318 <MultiplayerGameLayer::~MultiplayerGameLayer()+0x128>
  373208: 5859         	ldr	r1, [r3, r1]
  37320a: f501 7104    	add.w	r1, r1, #0x210
  37320e: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  373212: 9a01         	ldr	r2, [sp, #0x4]
  373214: 4940         	ldr	r1, [pc, #0x100]        @ 0x373318 <MultiplayerGameLayer::~MultiplayerGameLayer()+0x128>
  373216: 5859         	ldr	r1, [r3, r1]
  373218: f501 7110    	add.w	r1, r1, #0x240
  37321c: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  373220: 9a01         	ldr	r2, [sp, #0x4]
  373222: 493d         	ldr	r1, [pc, #0xf4]         @ 0x373318 <MultiplayerGameLayer::~MultiplayerGameLayer()+0x128>
  373224: 585b         	ldr	r3, [r3, r1]
  373226: f503 7313    	add.w	r3, r3, #0x24c
  37322a: f8c2 30ec    	str.w	r3, [r2, #0xec]
  37322e: 9b01         	ldr	r3, [sp, #0x4]
  373230: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  373234: 4618         	mov	r0, r3
  373236: f224 fe3f    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x224c7e
  37323a: 9b01         	ldr	r3, [sp, #0x4]
  37323c: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  373240: 4618         	mov	r0, r3
  373242: f224 fe39    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x224c72
  373246: 9b01         	ldr	r3, [sp, #0x4]
  373248: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  37324c: 4618         	mov	r0, r3
  37324e: f224 fe33    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x224c66
  373252: 9b01         	ldr	r3, [sp, #0x4]
  373254: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  373258: 4618         	mov	r0, r3
  37325a: f224 fe2d    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x224c5a
  37325e: 9b01         	ldr	r3, [sp, #0x4]
  373260: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  373264: 4618         	mov	r0, r3
  373266: f224 fe27    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x224c4e
  37326a: 9b01         	ldr	r3, [sp, #0x4]
  37326c: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  373270: 4618         	mov	r0, r3
  373272: f224 fe21    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x224c42
  373276: 9b01         	ldr	r3, [sp, #0x4]
  373278: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  37327c: 4618         	mov	r0, r3
  37327e: f224 fe1b    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x224c36
  373282: 9b01         	ldr	r3, [sp, #0x4]
  373284: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  373288: 4618         	mov	r0, r3
  37328a: f224 fe15    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x224c2a
  37328e: 9b01         	ldr	r3, [sp, #0x4]
  373290: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  373294: 4618         	mov	r0, r3
  373296: f224 fe0f    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x224c1e
  37329a: 9b01         	ldr	r3, [sp, #0x4]
  37329c: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3732a0: 4618         	mov	r0, r3
  3732a2: f224 fe09    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x224c12
  3732a6: 9b01         	ldr	r3, [sp, #0x4]
  3732a8: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3732ac: 4618         	mov	r0, r3
  3732ae: f224 fe03    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x224c06
  3732b2: 9b01         	ldr	r3, [sp, #0x4]
  3732b4: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3732b8: 4618         	mov	r0, r3
  3732ba: f224 fdfd    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x224bfa
  3732be: 9b01         	ldr	r3, [sp, #0x4]
  3732c0: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3732c4: 4618         	mov	r0, r3
  3732c6: f224 fdf7    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x224bee
  3732ca: 9b01         	ldr	r3, [sp, #0x4]
  3732cc: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  3732d0: 4618         	mov	r0, r3
  3732d2: f224 fdf1    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x224be2
  3732d6: 9b01         	ldr	r3, [sp, #0x4]
  3732d8: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3732dc: 4618         	mov	r0, r3
  3732de: f224 fdeb    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x224bd6
  3732e2: 9b01         	ldr	r3, [sp, #0x4]
  3732e4: 4618         	mov	r0, r3
  3732e6: f21e f807    	bl	0x5912f8 <cocos2d::CCNode::unscheduleAllSelectors()> @ imm = #0x21e00e
  3732ea: 9b01         	ldr	r3, [sp, #0x4]
  3732ec: f503 73b0    	add.w	r3, r3, #0x160
  3732f0: 4618         	mov	r0, r3
  3732f2: f001 f883    	bl	0x3743fc <std::vector<cocos2d::CCMenu*, std::allocator<cocos2d::CCMenu*>>::~vector()> @ imm = #0x1106
  3732f6: 9b01         	ldr	r3, [sp, #0x4]
  3732f8: 4618         	mov	r0, r3
  3732fa: f239 ff27    	bl	0x5ad14c <cocos2d::CCLayer::~CCLayer()> @ imm = #0x239e4e
  3732fe: 2300         	movs	r3, #0x0
  373300: 2b00         	cmp	r3, #0x0
  373302: d002         	beq	0x37330a <MultiplayerGameLayer::~MultiplayerGameLayer()+0x11a> @ imm = #0x4
  373304: 9801         	ldr	r0, [sp, #0x4]
  373306: f014 f6cd    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x414d9a
  37330a: 9b01         	ldr	r3, [sp, #0x4]
  37330c: 4618         	mov	r0, r3
  37330e: b003         	add	sp, #0xc
  373310: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x373313); words below are literal-pool data ---
  373314: f810 005b    	<unknown>
  373318: dc08         	bgt	0x37332c <MultiplayerGameLayer::~MultiplayerGameLayer()+0x8> @ imm = #0x10
  37331a: ffff f1a0    	<unknown>

// ==== MultiplayerGameLayer::~MultiplayerGameLayer
//      file offset 0x37331c (= ELF address; Ghidra 0x38331c), 8 bytes, Thumb-2
  37331c: f1a0 00e4    	sub.w	r0, r0, #0xe4
  373320: f7ff bf66    	b.w	0x3731f0 <MultiplayerGameLayer::~MultiplayerGameLayer()> @ imm = #-0x134

// ==== MultiplayerGameLayer::~MultiplayerGameLayer
//      file offset 0x373324 (= ELF address; Ghidra 0x383324), 28 bytes, Thumb-2
  373324: b500         	push	{lr}
  373326: b083         	sub	sp, #0xc
  373328: 9001         	str	r0, [sp, #0x4]
  37332a: 9801         	ldr	r0, [sp, #0x4]
  37332c: f7ff ff60    	bl	0x3731f0 <MultiplayerGameLayer::~MultiplayerGameLayer()> @ imm = #-0x140
  373330: 9801         	ldr	r0, [sp, #0x4]
  373332: f014 f6b7    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x414d6e
  373336: 9b01         	ldr	r3, [sp, #0x4]
  373338: 4618         	mov	r0, r3
  37333a: b003         	add	sp, #0xc
  37333c: f85d fb04    	ldr	pc, [sp], #4

// ==== MultiplayerGameLayer::~MultiplayerGameLayer
//      file offset 0x373340 (= ELF address; Ghidra 0x383340), 8 bytes, Thumb-2
  373340: f1a0 00e4    	sub.w	r0, r0, #0xe4
  373344: f7ff bfee    	b.w	0x373324 <MultiplayerGameLayer::~MultiplayerGameLayer()> @ imm = #-0x24

// ==== MultiplayerGameLayer::onExit
//      file offset 0x373348 (= ELF address; Ghidra 0x383348), 28 bytes, Thumb-2
  373348: b500         	push	{lr}
  37334a: b083         	sub	sp, #0xc
  37334c: 9001         	str	r0, [sp, #0x4]
  37334e: 9b01         	ldr	r3, [sp, #0x4]
  373350: 4618         	mov	r0, r3
  373352: f21d ffd1    	bl	0x5912f8 <cocos2d::CCNode::unscheduleAllSelectors()> @ imm = #0x21dfa2
  373356: 9b01         	ldr	r3, [sp, #0x4]
  373358: 4618         	mov	r0, r3
  37335a: f23a fabd    	bl	0x5ad8d8 <cocos2d::CCLayer::onExit()> @ imm = #0x23a57a
  37335e: b003         	add	sp, #0xc
  373360: f85d fb04    	ldr	pc, [sp], #4

// ==== MultiplayerGameLayer::updateStep
//      file offset 0x373368 (= ELF address; Ghidra 0x383368), 1108 bytes, Thumb-2
  373368: b570         	push	{r4, r5, r6, lr}
  37336a: ed2d 8b02    	vpush	{d8}
  37336e: b092         	sub	sp, #0x48
  373370: 9001         	str	r0, [sp, #0x4]
  373372: 9100         	str	r1, [sp]
  373374: f7bf faaa    	bl	0x3328cc <GPGSStateManager::IsAuthInProgress()> @ imm = #-0x40aac
  373378: 4603         	mov	r3, r0
  37337a: 2b00         	cmp	r3, #0x0
  37337c: f000 80da    	beq.w	0x373534 <MultiplayerGameLayer::updateStep(float)+0x1cc> @ imm = #0x1b4
  373380: 9b01         	ldr	r3, [sp, #0x4]
  373382: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  373386: 681b         	ldr	r3, [r3]
  373388: f503 73fc    	add.w	r3, r3, #0x1f8
  37338c: 681b         	ldr	r3, [r3]
  37338e: 9a01         	ldr	r2, [sp, #0x4]
  373390: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  373394: 4610         	mov	r0, r2
  373396: 4a66         	ldr	r2, [pc, #0x198]        @ 0x373530 <MultiplayerGameLayer::updateStep(float)+0x1c8>
  373398: 447a         	add	r2, pc
  37339a: 4611         	mov	r1, r2
  37339c: 4798         	blx	r3
  37339e: 9b01         	ldr	r3, [sp, #0x4]
  3733a0: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3733a4: 681b         	ldr	r3, [r3]
  3733a6: 334c         	adds	r3, #0x4c
  3733a8: 681c         	ldr	r4, [r3]
  3733aa: 9b01         	ldr	r3, [sp, #0x4]
  3733ac: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3733b0: 461d         	mov	r5, r3
  3733b2: 9b01         	ldr	r3, [sp, #0x4]
  3733b4: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3733b8: 681b         	ldr	r3, [r3]
  3733ba: 3350         	adds	r3, #0x50
  3733bc: 681b         	ldr	r3, [r3]
  3733be: 9a01         	ldr	r2, [sp, #0x4]
  3733c0: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  3733c4: 4610         	mov	r0, r2
  3733c6: 4798         	blx	r3
  3733c8: 4603         	mov	r3, r0
  3733ca: 681e         	ldr	r6, [r3]
  3733cc: 9b01         	ldr	r3, [sp, #0x4]
  3733ce: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3733d2: 681b         	ldr	r3, [r3]
  3733d4: 3350         	adds	r3, #0x50
  3733d6: 681b         	ldr	r3, [r3]
  3733d8: 9a01         	ldr	r2, [sp, #0x4]
  3733da: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  3733de: 4610         	mov	r0, r2
  3733e0: 4798         	blx	r3
  3733e2: 4603         	mov	r3, r0
  3733e4: 685b         	ldr	r3, [r3, #0x4]
  3733e6: aa04         	add	r2, sp, #0x10
  3733e8: 4610         	mov	r0, r2
  3733ea: 4631         	mov	r1, r6
  3733ec: 461a         	mov	r2, r3
  3733ee: f21f fc7f    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x21f8fe
  3733f2: 9b01         	ldr	r3, [sp, #0x4]
  3733f4: edd3 7a57    	vldr	s15, [r3, #348]
  3733f8: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3733fc: ab0a         	add	r3, sp, #0x28
  3733fe: 4618         	mov	r0, r3
  373400: ed9f 0b49    	vldr	d0, [pc, #292]          @ 0x373528 <MultiplayerGameLayer::updateStep(float)+0x1c0>
  373404: eeb0 1b47    	vmov.f64	d1, d7
  373408: f7fd fd98    	bl	0x370f3c <MenuTableView::cellTouched(unsigned int)+0x1c0> @ imm = #-0x24d0
  37340c: ed9d 8b0a    	vldr	d8, [sp, #40]
  373410: 9b01         	ldr	r3, [sp, #0x4]
  373412: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  373416: 681b         	ldr	r3, [r3]
  373418: f503 73fe    	add.w	r3, r3, #0x1fc
  37341c: 681b         	ldr	r3, [r3]
  37341e: 9a01         	ldr	r2, [sp, #0x4]
  373420: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  373424: 4610         	mov	r0, r2
  373426: 4798         	blx	r3
  373428: 4606         	mov	r6, r0
  37342a: ab02         	add	r3, sp, #0x8
  37342c: 4618         	mov	r0, r3
  37342e: f016 f7e1    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x416fc2
  373432: aa03         	add	r2, sp, #0xc
  373434: ab02         	add	r3, sp, #0x8
  373436: 4610         	mov	r0, r2
  373438: 4631         	mov	r1, r6
  37343a: 461a         	mov	r2, r3
  37343c: f043 f310    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x443620
  373440: ab03         	add	r3, sp, #0xc
  373442: 4618         	mov	r0, r3
  373444: f041 f60a    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x441c14
  373448: 4603         	mov	r3, r0
  37344a: ee07 3a90    	vmov	s15, r3
  37344e: eeb8 7a67    	vcvt.f32.u32	s14, s15
  373452: 9b01         	ldr	r3, [sp, #0x4]
  373454: edd3 7a56    	vldr	s15, [r3, #344]
  373458: ee27 7a27    	vmul.f32	s14, s14, s15
  37345c: 9b01         	ldr	r3, [sp, #0x4]
  37345e: edd3 7a55    	vldr	s15, [r3, #340]
  373462: ee27 7a27    	vmul.f32	s14, s14, s15
  373466: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  37346a: eec7 7a27    	vdiv.f32	s15, s14, s15
  37346e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  373472: ee38 7b47    	vsub.f64	d7, d8, d7
  373476: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  37347a: 9b01         	ldr	r3, [sp, #0x4]
  37347c: edd3 7a57    	vldr	s15, [r3, #348]
  373480: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  373484: ab0e         	add	r3, sp, #0x38
  373486: 4618         	mov	r0, r3
  373488: ed9f 0b27    	vldr	d0, [pc, #156]          @ 0x373528 <MultiplayerGameLayer::updateStep(float)+0x1c0>
  37348c: eeb0 1b47    	vmov.f64	d1, d7
  373490: f7fd fd54    	bl	0x370f3c <MenuTableView::cellTouched(unsigned int)+0x1c0> @ imm = #-0x2558
  373494: ed9d 7b10    	vldr	d7, [sp, #64]
  373498: eef7 7bc7    	vcvt.f32.f64	s15, d7
  37349c: ab06         	add	r3, sp, #0x18
  37349e: 4618         	mov	r0, r3
  3734a0: ee18 1a10    	vmov	r1, s16
  3734a4: ee17 2a90    	vmov	r2, s15
  3734a8: f21f fc22    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x21f844
  3734ac: a908         	add	r1, sp, #0x20
  3734ae: aa04         	add	r2, sp, #0x10
  3734b0: ab06         	add	r3, sp, #0x18
  3734b2: 4608         	mov	r0, r1
  3734b4: 4611         	mov	r1, r2
  3734b6: 461a         	mov	r2, r3
  3734b8: f7fd fd30    	bl	0x370f1c <MenuTableView::cellTouched(unsigned int)+0x1a0> @ imm = #-0x25a0
  3734bc: ab08         	add	r3, sp, #0x20
  3734be: 4628         	mov	r0, r5
  3734c0: 4619         	mov	r1, r3
  3734c2: 47a0         	blx	r4
  3734c4: ab03         	add	r3, sp, #0xc
  3734c6: 4618         	mov	r0, r3
  3734c8: f042 f224    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x442448
  3734cc: ab02         	add	r3, sp, #0x8
  3734ce: 4618         	mov	r0, r3
  3734d0: f016 f794    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x416f28
  3734d4: 9b01         	ldr	r3, [sp, #0x4]
  3734d6: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3734da: 681b         	ldr	r3, [r3]
  3734dc: f503 730f    	add.w	r3, r3, #0x23c
  3734e0: 681b         	ldr	r3, [r3]
  3734e2: 9a01         	ldr	r2, [sp, #0x4]
  3734e4: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  3734e8: 4610         	mov	r0, r2
  3734ea: 2100         	movs	r1, #0x0
  3734ec: 4798         	blx	r3
  3734ee: 9b01         	ldr	r3, [sp, #0x4]
  3734f0: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3734f4: 681b         	ldr	r3, [r3]
  3734f6: f503 7302    	add.w	r3, r3, #0x208
  3734fa: 681b         	ldr	r3, [r3]
  3734fc: 9a01         	ldr	r2, [sp, #0x4]
  3734fe: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  373502: 4610         	mov	r0, r2
  373504: 2164         	movs	r1, #0x64
  373506: 4798         	blx	r3
  373508: 9b01         	ldr	r3, [sp, #0x4]
  37350a: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  37350e: 681b         	ldr	r3, [r3]
  373510: 3390         	adds	r3, #0x90
  373512: 681b         	ldr	r3, [r3]
  373514: 9a01         	ldr	r2, [sp, #0x4]
  373516: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  37351a: 4610         	mov	r0, r2
  37351c: 2100         	movs	r1, #0x0
  37351e: 4798         	blx	r3
  373520: e0d8         	b	0x3736d4 <MultiplayerGameLayer::updateStep(float)+0x36c> @ imm = #0x1b0
  373522: bf00         	nop
  373524: f3af 8000    	nop.w
  373530: ac54         	add	r4, sp, #0x150
  373532: 0045         	lsls	r5, r0, #0x1
  373534: 9b01         	ldr	r3, [sp, #0x4]
  373536: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  37353a: 681b         	ldr	r3, [r3]
  37353c: f503 73fc    	add.w	r3, r3, #0x1f8
  373540: 681b         	ldr	r3, [r3]
  373542: 9a01         	ldr	r2, [sp, #0x4]
  373544: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  373548: 4610         	mov	r0, r2
  37354a: 4a9b         	ldr	r2, [pc, #0x26c]        @ 0x3737b8 <MultiplayerGameLayer::updateStep(float)+0x450>
  37354c: 447a         	add	r2, pc
  37354e: 4611         	mov	r1, r2
  373550: 4798         	blx	r3
  373552: 9b01         	ldr	r3, [sp, #0x4]
  373554: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  373558: 681b         	ldr	r3, [r3]
  37355a: 334c         	adds	r3, #0x4c
  37355c: 681c         	ldr	r4, [r3]
  37355e: 9b01         	ldr	r3, [sp, #0x4]
  373560: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  373564: 461d         	mov	r5, r3
  373566: 9b01         	ldr	r3, [sp, #0x4]
  373568: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  37356c: 681b         	ldr	r3, [r3]
  37356e: 3350         	adds	r3, #0x50
  373570: 681b         	ldr	r3, [r3]
  373572: 9a01         	ldr	r2, [sp, #0x4]
  373574: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  373578: 4610         	mov	r0, r2
  37357a: 4798         	blx	r3
  37357c: 4603         	mov	r3, r0
  37357e: 681e         	ldr	r6, [r3]
  373580: 9b01         	ldr	r3, [sp, #0x4]
  373582: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  373586: 681b         	ldr	r3, [r3]
  373588: 3350         	adds	r3, #0x50
  37358a: 681b         	ldr	r3, [r3]
  37358c: 9a01         	ldr	r2, [sp, #0x4]
  37358e: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  373592: 4610         	mov	r0, r2
  373594: 4798         	blx	r3
  373596: 4603         	mov	r3, r0
  373598: 685b         	ldr	r3, [r3, #0x4]
  37359a: aa04         	add	r2, sp, #0x10
  37359c: 4610         	mov	r0, r2
  37359e: 4631         	mov	r1, r6
  3735a0: 461a         	mov	r2, r3
  3735a2: f21f fba5    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x21f74a
  3735a6: 9b01         	ldr	r3, [sp, #0x4]
  3735a8: edd3 7a57    	vldr	s15, [r3, #348]
  3735ac: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3735b0: ab0a         	add	r3, sp, #0x28
  3735b2: 4618         	mov	r0, r3
  3735b4: ed9f 0b7e    	vldr	d0, [pc, #504]          @ 0x3737b0 <MultiplayerGameLayer::updateStep(float)+0x448>
  3735b8: eeb0 1b47    	vmov.f64	d1, d7
  3735bc: f7fd fcbe    	bl	0x370f3c <MenuTableView::cellTouched(unsigned int)+0x1c0> @ imm = #-0x2684
  3735c0: ed9d 8b0a    	vldr	d8, [sp, #40]
  3735c4: 9b01         	ldr	r3, [sp, #0x4]
  3735c6: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3735ca: 681b         	ldr	r3, [r3]
  3735cc: f503 73fe    	add.w	r3, r3, #0x1fc
  3735d0: 681b         	ldr	r3, [r3]
  3735d2: 9a01         	ldr	r2, [sp, #0x4]
  3735d4: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3735d8: 4610         	mov	r0, r2
  3735da: 4798         	blx	r3
  3735dc: 4606         	mov	r6, r0
  3735de: ab02         	add	r3, sp, #0x8
  3735e0: 4618         	mov	r0, r3
  3735e2: f016 f707    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x416e0e
  3735e6: aa03         	add	r2, sp, #0xc
  3735e8: ab02         	add	r3, sp, #0x8
  3735ea: 4610         	mov	r0, r2
  3735ec: 4631         	mov	r1, r6
  3735ee: 461a         	mov	r2, r3
  3735f0: f043 f236    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x44346c
  3735f4: ab03         	add	r3, sp, #0xc
  3735f6: 4618         	mov	r0, r3
  3735f8: f041 f530    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x441a60
  3735fc: 4603         	mov	r3, r0
  3735fe: ee07 3a90    	vmov	s15, r3
  373602: eeb8 7a67    	vcvt.f32.u32	s14, s15
  373606: 9b01         	ldr	r3, [sp, #0x4]
  373608: edd3 7a56    	vldr	s15, [r3, #344]
  37360c: ee27 7a27    	vmul.f32	s14, s14, s15
  373610: 9b01         	ldr	r3, [sp, #0x4]
  373612: edd3 7a55    	vldr	s15, [r3, #340]
  373616: ee27 7a27    	vmul.f32	s14, s14, s15
  37361a: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  37361e: eec7 7a27    	vdiv.f32	s15, s14, s15
  373622: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  373626: ee38 7b47    	vsub.f64	d7, d8, d7
  37362a: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  37362e: 9b01         	ldr	r3, [sp, #0x4]
  373630: edd3 7a57    	vldr	s15, [r3, #348]
  373634: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  373638: ab0e         	add	r3, sp, #0x38
  37363a: 4618         	mov	r0, r3
  37363c: ed9f 0b5c    	vldr	d0, [pc, #368]          @ 0x3737b0 <MultiplayerGameLayer::updateStep(float)+0x448>
  373640: eeb0 1b47    	vmov.f64	d1, d7
  373644: f7fd fc7a    	bl	0x370f3c <MenuTableView::cellTouched(unsigned int)+0x1c0> @ imm = #-0x270c
  373648: ed9d 7b10    	vldr	d7, [sp, #64]
  37364c: eef7 7bc7    	vcvt.f32.f64	s15, d7
  373650: ab06         	add	r3, sp, #0x18
  373652: 4618         	mov	r0, r3
  373654: ee18 1a10    	vmov	r1, s16
  373658: ee17 2a90    	vmov	r2, s15
  37365c: f21f fb48    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x21f690
  373660: a908         	add	r1, sp, #0x20
  373662: aa04         	add	r2, sp, #0x10
  373664: ab06         	add	r3, sp, #0x18
  373666: 4608         	mov	r0, r1
  373668: 4611         	mov	r1, r2
  37366a: 461a         	mov	r2, r3
  37366c: f7fd fc56    	bl	0x370f1c <MenuTableView::cellTouched(unsigned int)+0x1a0> @ imm = #-0x2754
  373670: ab08         	add	r3, sp, #0x20
  373672: 4628         	mov	r0, r5
  373674: 4619         	mov	r1, r3
  373676: 47a0         	blx	r4
  373678: ab03         	add	r3, sp, #0xc
  37367a: 4618         	mov	r0, r3
  37367c: f042 f14a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x442294
  373680: ab02         	add	r3, sp, #0x8
  373682: 4618         	mov	r0, r3
  373684: f016 f6ba    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x416d74
  373688: 9b01         	ldr	r3, [sp, #0x4]
  37368a: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  37368e: 681b         	ldr	r3, [r3]
  373690: f503 730f    	add.w	r3, r3, #0x23c
  373694: 681b         	ldr	r3, [r3]
  373696: 9a01         	ldr	r2, [sp, #0x4]
  373698: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  37369c: 4610         	mov	r0, r2
  37369e: 2101         	movs	r1, #0x1
  3736a0: 4798         	blx	r3
  3736a2: 9b01         	ldr	r3, [sp, #0x4]
  3736a4: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3736a8: 681b         	ldr	r3, [r3]
  3736aa: f503 7302    	add.w	r3, r3, #0x208
  3736ae: 681b         	ldr	r3, [r3]
  3736b0: 9a01         	ldr	r2, [sp, #0x4]
  3736b2: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  3736b6: 4610         	mov	r0, r2
  3736b8: 21ff         	movs	r1, #0xff
  3736ba: 4798         	blx	r3
  3736bc: 9b01         	ldr	r3, [sp, #0x4]
  3736be: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3736c2: 681b         	ldr	r3, [r3]
  3736c4: 3390         	adds	r3, #0x90
  3736c6: 681b         	ldr	r3, [r3]
  3736c8: 9a01         	ldr	r2, [sp, #0x4]
  3736ca: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  3736ce: 4610         	mov	r0, r2
  3736d0: 2101         	movs	r1, #0x1
  3736d2: 4798         	blx	r3
  3736d4: f7bf f9a2    	bl	0x332a1c <GPGSStateManager::IsAuthorized()> @ imm = #-0x40cbc
  3736d8: 4603         	mov	r3, r0
  3736da: 2b00         	cmp	r3, #0x0
  3736dc: d025         	beq	0x37372a <MultiplayerGameLayer::updateStep(float)+0x3c2> @ imm = #0x4a
  3736de: 9b01         	ldr	r3, [sp, #0x4]
  3736e0: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  3736e4: 681b         	ldr	r3, [r3]
  3736e6: 3390         	adds	r3, #0x90
  3736e8: 681b         	ldr	r3, [r3]
  3736ea: 9a01         	ldr	r2, [sp, #0x4]
  3736ec: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  3736f0: 4610         	mov	r0, r2
  3736f2: 2101         	movs	r1, #0x1
  3736f4: 4798         	blx	r3
  3736f6: 9b01         	ldr	r3, [sp, #0x4]
  3736f8: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  3736fc: 681b         	ldr	r3, [r3]
  3736fe: f503 730f    	add.w	r3, r3, #0x23c
  373702: 681b         	ldr	r3, [r3]
  373704: 9a01         	ldr	r2, [sp, #0x4]
  373706: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  37370a: 4610         	mov	r0, r2
  37370c: 2101         	movs	r1, #0x1
  37370e: 4798         	blx	r3
  373710: 9b01         	ldr	r3, [sp, #0x4]
  373712: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  373716: 681b         	ldr	r3, [r3]
  373718: 3390         	adds	r3, #0x90
  37371a: 681b         	ldr	r3, [r3]
  37371c: 9a01         	ldr	r2, [sp, #0x4]
  37371e: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  373722: 4610         	mov	r0, r2
  373724: 2101         	movs	r1, #0x1
  373726: 4798         	blx	r3
  373728: e03b         	b	0x3737a2 <MultiplayerGameLayer::updateStep(float)+0x43a> @ imm = #0x76
  37372a: 9b01         	ldr	r3, [sp, #0x4]
  37372c: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  373730: 681b         	ldr	r3, [r3]
  373732: 3390         	adds	r3, #0x90
  373734: 681b         	ldr	r3, [r3]
  373736: 9a01         	ldr	r2, [sp, #0x4]
  373738: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  37373c: 4610         	mov	r0, r2
  37373e: 2100         	movs	r1, #0x0
  373740: 4798         	blx	r3
  373742: 9b01         	ldr	r3, [sp, #0x4]
  373744: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  373748: 681b         	ldr	r3, [r3]
  37374a: f503 730f    	add.w	r3, r3, #0x23c
  37374e: 681b         	ldr	r3, [r3]
  373750: 9a01         	ldr	r2, [sp, #0x4]
  373752: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  373756: 4610         	mov	r0, r2
  373758: 2100         	movs	r1, #0x0
  37375a: 4798         	blx	r3
  37375c: 9b01         	ldr	r3, [sp, #0x4]
  37375e: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  373762: 681b         	ldr	r3, [r3]
  373764: 3390         	adds	r3, #0x90
  373766: 681b         	ldr	r3, [r3]
  373768: 9a01         	ldr	r2, [sp, #0x4]
  37376a: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  37376e: 4610         	mov	r0, r2
  373770: 2100         	movs	r1, #0x0
  373772: 4798         	blx	r3
  373774: e015         	b	0x3737a2 <MultiplayerGameLayer::updateStep(float)+0x43a> @ imm = #0x2a
  373776: ab03         	add	r3, sp, #0xc
  373778: 4618         	mov	r0, r3
  37377a: f042 f0cb    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x442196
  37377e: e7ff         	b	0x373780 <MultiplayerGameLayer::updateStep(float)+0x418> @ imm = #-0x2
  373780: ab02         	add	r3, sp, #0x8
  373782: 4618         	mov	r0, r3
  373784: f016 f63a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x416c74
  373788: f014 f490    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x414920
  37378c: ab03         	add	r3, sp, #0xc
  37378e: 4618         	mov	r0, r3
  373790: f042 f0c0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x442180
  373794: e7ff         	b	0x373796 <MultiplayerGameLayer::updateStep(float)+0x42e> @ imm = #-0x2
  373796: ab02         	add	r3, sp, #0x8
  373798: 4618         	mov	r0, r3
  37379a: f016 f62f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x416c5e
  37379e: f014 f485    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x41490a
  3737a2: b012         	add	sp, #0x48
  3737a4: ecbd 8b02    	vpop	{d8}
  3737a8: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3737a9); words below are literal-pool data ---
  3737aa: bf00         	nop
  3737ac: f3af 8000    	nop.w
  3737b8: aa30         	add	r2, sp, #0xc0
  3737ba: 0045         	lsls	r5, r0, #0x1

// ==== MultiplayerGameLayer::onLocal
//      file offset 0x3737c0 (= ELF address; Ghidra 0x3837c0), 164 bytes, Thumb-2
  3737c0: b530         	push	{r4, r5, lr}
  3737c2: b083         	sub	sp, #0xc
  3737c4: 9001         	str	r0, [sp, #0x4]
  3737c6: 9100         	str	r1, [sp]
  3737c8: 4c21         	ldr	r4, [pc, #0x84]         @ 0x373850 <MultiplayerGameLayer::onLocal(cocos2d::CCObject*)+0x90>
  3737ca: 447c         	add	r4, pc
  3737cc: 9b01         	ldr	r3, [sp, #0x4]
  3737ce: f893 3108    	ldrb.w	r3, [r3, #0x108]
  3737d2: 2b00         	cmp	r3, #0x0
  3737d4: d000         	beq	0x3737d8 <MultiplayerGameLayer::onLocal(cocos2d::CCObject*)+0x18> @ imm = #0x0
  3737d6: e038         	b	0x37384a <MultiplayerGameLayer::onLocal(cocos2d::CCObject*)+0x8a> @ imm = #0x70
  3737d8: 9b01         	ldr	r3, [sp, #0x4]
  3737da: 2201         	movs	r2, #0x1
  3737dc: f883 2108    	strb.w	r2, [r3, #0x108]
  3737e0: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x373854 <MultiplayerGameLayer::onLocal(cocos2d::CCObject*)+0x94>
  3737e2: 58e3         	ldr	r3, [r4, r3]
  3737e4: 2200         	movs	r2, #0x0
  3737e6: 701a         	strb	r2, [r3]
  3737e8: 4b1b         	ldr	r3, [pc, #0x6c]         @ 0x373858 <MultiplayerGameLayer::onLocal(cocos2d::CCObject*)+0x98>
  3737ea: 58e3         	ldr	r3, [r4, r3]
  3737ec: 681b         	ldr	r3, [r3]
  3737ee: 4618         	mov	r0, r3
  3737f0: 210d         	movs	r1, #0xd
  3737f2: f084 fae5    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x845ca
  3737f6: f004 f9a3    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x4346
  3737fa: 4603         	mov	r3, r0
  3737fc: 4618         	mov	r0, r3
  3737fe: f004 fe25    	bl	0x37844c <NetworkManager::useRakNetLAN()> @ imm = #0x4c4a
  373802: 4b16         	ldr	r3, [pc, #0x58]         @ 0x37385c <MultiplayerGameLayer::onLocal(cocos2d::CCObject*)+0x9c>
  373804: 58e3         	ldr	r3, [r4, r3]
  373806: 681b         	ldr	r3, [r3]
  373808: 2b04         	cmp	r3, #0x4
  37380a: d103         	bne	0x373814 <MultiplayerGameLayer::onLocal(cocos2d::CCObject*)+0x54> @ imm = #0x6
  37380c: 4b13         	ldr	r3, [pc, #0x4c]         @ 0x37385c <MultiplayerGameLayer::onLocal(cocos2d::CCObject*)+0x9c>
  37380e: 58e3         	ldr	r3, [r4, r3]
  373810: 2203         	movs	r2, #0x3
  373812: 601a         	str	r2, [r3]
  373814: 4b11         	ldr	r3, [pc, #0x44]         @ 0x37385c <MultiplayerGameLayer::onLocal(cocos2d::CCObject*)+0x9c>
  373816: 58e3         	ldr	r3, [r4, r3]
  373818: 681b         	ldr	r3, [r3]
  37381a: 2b02         	cmp	r3, #0x2
  37381c: d103         	bne	0x373826 <MultiplayerGameLayer::onLocal(cocos2d::CCObject*)+0x66> @ imm = #0x6
  37381e: 4b0f         	ldr	r3, [pc, #0x3c]         @ 0x37385c <MultiplayerGameLayer::onLocal(cocos2d::CCObject*)+0x9c>
  373820: 58e3         	ldr	r3, [r4, r3]
  373822: 2205         	movs	r2, #0x5
  373824: 601a         	str	r2, [r3]
  373826: f227 fea5    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x227d4a
  37382a: 4604         	mov	r4, r0
  37382c: 4b0c         	ldr	r3, [pc, #0x30]         @ 0x373860 <MultiplayerGameLayer::onLocal(cocos2d::CCObject*)+0xa0>
  37382e: 447b         	add	r3, pc
  373830: 681d         	ldr	r5, [r3]
  373832: f7b0 fbbb    	bl	0x323fac <FindGameLayer::scene()> @ imm = #-0x4f88a
  373836: 4603         	mov	r3, r0
  373838: 4628         	mov	r0, r5
  37383a: 4619         	mov	r1, r3
  37383c: f23d fdf4    	bl	0x5b1428 <cocos2d::CCTransitionSlideInR::create(float, cocos2d::CCScene*)> @ imm = #0x23dbe8
  373840: 4603         	mov	r3, r0
  373842: 4620         	mov	r0, r4
  373844: 4619         	mov	r1, r3
  373846: f228 fd89    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x228b12
  37384a: b003         	add	sp, #0xc
  37384c: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x37384d); words below are literal-pool data ---
  37384e: bf00         	nop
  373850: f23e 005b    	<unknown>
  373854: da58         	bge	0x373908 <MultiplayerGameLayer::onBlueTooth(cocos2d::CCObject*)+0xa4> @ imm = #0xb0
  373856: ffff d730    	vqshl.u32	d29, d16, #0x1f
  37385a: ffff d838    	vqshrun.s64	d29, q12, #0x1
  37385e: ffff fc06    	vdup.8	d31, d6[7]
  373862: 005b         	lsls	r3, r3, #0x1

// ==== MultiplayerGameLayer::onBlueTooth
//      file offset 0x373864 (= ELF address; Ghidra 0x383864), 292 bytes, Thumb-2
  373864: b500         	push	{lr}
  373866: b08b         	sub	sp, #0x2c
  373868: 9003         	str	r0, [sp, #0xc]
  37386a: 9102         	str	r1, [sp, #0x8]
  37386c: 4a41         	ldr	r2, [pc, #0x104]        @ 0x373974 <MultiplayerGameLayer::onBlueTooth(cocos2d::CCObject*)+0x110>
  37386e: 447a         	add	r2, pc
  373870: 9b03         	ldr	r3, [sp, #0xc]
  373872: f893 3108    	ldrb.w	r3, [r3, #0x108]
  373876: 2b00         	cmp	r3, #0x0
  373878: d000         	beq	0x37387c <MultiplayerGameLayer::onBlueTooth(cocos2d::CCObject*)+0x18> @ imm = #0x0
  37387a: e077         	b	0x37396c <MultiplayerGameLayer::onBlueTooth(cocos2d::CCObject*)+0x108> @ imm = #0xee
  37387c: 4b3e         	ldr	r3, [pc, #0xf8]         @ 0x373978 <MultiplayerGameLayer::onBlueTooth(cocos2d::CCObject*)+0x114>
  37387e: 58d3         	ldr	r3, [r2, r3]
  373880: 681b         	ldr	r3, [r3]
  373882: 4618         	mov	r0, r3
  373884: 210d         	movs	r1, #0xd
  373886: f084 fa9b    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x84536
  37388a: ab05         	add	r3, sp, #0x14
  37388c: 4618         	mov	r0, r3
  37388e: f016 f5b1    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x416b62
  373892: aa08         	add	r2, sp, #0x20
  373894: ab05         	add	r3, sp, #0x14
  373896: 4610         	mov	r0, r2
  373898: 4a38         	ldr	r2, [pc, #0xe0]         @ 0x37397c <MultiplayerGameLayer::onBlueTooth(cocos2d::CCObject*)+0x118>
  37389a: 447a         	add	r2, pc
  37389c: 4611         	mov	r1, r2
  37389e: 461a         	mov	r2, r3
  3738a0: f043 f0de    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4431bc
  3738a4: ab06         	add	r3, sp, #0x18
  3738a6: 4618         	mov	r0, r3
  3738a8: f016 f5a4    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x416b48
  3738ac: aa09         	add	r2, sp, #0x24
  3738ae: ab06         	add	r3, sp, #0x18
  3738b0: 4610         	mov	r0, r2
  3738b2: 4a33         	ldr	r2, [pc, #0xcc]         @ 0x373980 <MultiplayerGameLayer::onBlueTooth(cocos2d::CCObject*)+0x11c>
  3738b4: 447a         	add	r2, pc
  3738b6: 4611         	mov	r1, r2
  3738b8: 461a         	mov	r2, r3
  3738ba: f043 f0d1    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4431a2
  3738be: ab04         	add	r3, sp, #0x10
  3738c0: 4618         	mov	r0, r3
  3738c2: f016 f597    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x416b2e
  3738c6: aa07         	add	r2, sp, #0x1c
  3738c8: ab04         	add	r3, sp, #0x10
  3738ca: 4610         	mov	r0, r2
  3738cc: 4a2d         	ldr	r2, [pc, #0xb4]         @ 0x373984 <MultiplayerGameLayer::onBlueTooth(cocos2d::CCObject*)+0x120>
  3738ce: 447a         	add	r2, pc
  3738d0: 4611         	mov	r1, r2
  3738d2: 461a         	mov	r2, r3
  3738d4: f043 f0c4    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x443188
  3738d8: ab07         	add	r3, sp, #0x1c
  3738da: 4618         	mov	r0, r3
  3738dc: f226 f8ae    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x22615c
  3738e0: 4603         	mov	r3, r0
  3738e2: 4618         	mov	r0, r3
  3738e4: 2100         	movs	r1, #0x0
  3738e6: f226 fa93    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x226526
  3738ea: 4603         	mov	r3, r0
  3738ec: a908         	add	r1, sp, #0x20
  3738ee: aa09         	add	r2, sp, #0x24
  3738f0: 2000         	movs	r0, #0x0
  3738f2: 9000         	str	r0, [sp]
  3738f4: 2000         	movs	r0, #0x0
  3738f6: 9001         	str	r0, [sp, #0x4]
  3738f8: 2000         	movs	r0, #0x0
  3738fa: f76b ff7b    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0x9410a
  3738fe: ab07         	add	r3, sp, #0x1c
  373900: 4618         	mov	r0, r3
  373902: f042 f007    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44200e
  373906: ab04         	add	r3, sp, #0x10
  373908: 4618         	mov	r0, r3
  37390a: f016 f577    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x416aee
  37390e: ab09         	add	r3, sp, #0x24
  373910: 4618         	mov	r0, r3
  373912: f041 f7ff    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x441ffe
  373916: ab06         	add	r3, sp, #0x18
  373918: 4618         	mov	r0, r3
  37391a: f016 f56f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x416ade
  37391e: ab08         	add	r3, sp, #0x20
  373920: 4618         	mov	r0, r3
  373922: f041 f7f7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x441fee
  373926: ab05         	add	r3, sp, #0x14
  373928: 4618         	mov	r0, r3
  37392a: f016 f567    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x416ace
  37392e: bf00         	nop
  373930: e01c         	b	0x37396c <MultiplayerGameLayer::onBlueTooth(cocos2d::CCObject*)+0x108> @ imm = #0x38
  373932: ab07         	add	r3, sp, #0x1c
  373934: 4618         	mov	r0, r3
  373936: f041 f7ed    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x441fda
  37393a: e7ff         	b	0x37393c <MultiplayerGameLayer::onBlueTooth(cocos2d::CCObject*)+0xd8> @ imm = #-0x2
  37393c: ab04         	add	r3, sp, #0x10
  37393e: 4618         	mov	r0, r3
  373940: f016 f55c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x416ab8
  373944: ab09         	add	r3, sp, #0x24
  373946: 4618         	mov	r0, r3
  373948: f041 f7e4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x441fc8
  37394c: e7ff         	b	0x37394e <MultiplayerGameLayer::onBlueTooth(cocos2d::CCObject*)+0xea> @ imm = #-0x2
  37394e: ab06         	add	r3, sp, #0x18
  373950: 4618         	mov	r0, r3
  373952: f016 f553    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x416aa6
  373956: ab08         	add	r3, sp, #0x20
  373958: 4618         	mov	r0, r3
  37395a: f041 f7db    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x441fb6
  37395e: e7ff         	b	0x373960 <MultiplayerGameLayer::onBlueTooth(cocos2d::CCObject*)+0xfc> @ imm = #-0x2
  373960: ab05         	add	r3, sp, #0x14
  373962: 4618         	mov	r0, r3
  373964: f016 f54a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x416a94
  373968: f014 f3a0    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x414740
  37396c: b00b         	add	sp, #0x2c
  37396e: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x373971); words below are literal-pool data ---
  373972: bf00         	nop
  373974: f19a 005b    	<unknown>
  373978: d730         	bvc	0x3739dc <MultiplayerGameLayer::onBack(cocos2d::CCObject*)+0x54> @ imm = #0x60
  37397a: ffff a75e    	vqshl.u32	q13, q7, #0x1f
  37397e: 0045         	lsls	r5, r0, #0x1
  373980: a754         	adr	r7, #336 <MultiplayerGameLayer::onBack(cocos2d::CCObject*)+0x50>
  373982: 0045         	lsls	r5, r0, #0x1
  373984: a772         	adr	r7, #456 <MultiplayerGameLayer::onDA(cocos2d::CCObject*)+0xe>
  373986: 0045         	lsls	r5, r0, #0x1

// ==== MultiplayerGameLayer::onBack
//      file offset 0x373988 (= ELF address; Ghidra 0x383988), 100 bytes, Thumb-2
  373988: b530         	push	{r4, r5, lr}
  37398a: b083         	sub	sp, #0xc
  37398c: 9001         	str	r0, [sp, #0x4]
  37398e: 9100         	str	r1, [sp]
  373990: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x3739e0 <MultiplayerGameLayer::onBack(cocos2d::CCObject*)+0x58>
  373992: 447a         	add	r2, pc
  373994: 9b01         	ldr	r3, [sp, #0x4]
  373996: f893 3108    	ldrb.w	r3, [r3, #0x108]
  37399a: 2b00         	cmp	r3, #0x0
  37399c: d000         	beq	0x3739a0 <MultiplayerGameLayer::onBack(cocos2d::CCObject*)+0x18> @ imm = #0x0
  37399e: e01c         	b	0x3739da <MultiplayerGameLayer::onBack(cocos2d::CCObject*)+0x52> @ imm = #0x38
  3739a0: 9b01         	ldr	r3, [sp, #0x4]
  3739a2: 2101         	movs	r1, #0x1
  3739a4: f883 1108    	strb.w	r1, [r3, #0x108]
  3739a8: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x3739e4 <MultiplayerGameLayer::onBack(cocos2d::CCObject*)+0x5c>
  3739aa: 58d3         	ldr	r3, [r2, r3]
  3739ac: 681b         	ldr	r3, [r3]
  3739ae: 4618         	mov	r0, r3
  3739b0: 210d         	movs	r1, #0xd
  3739b2: f084 fa05    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x8440a
  3739b6: f227 fddd    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x227bba
  3739ba: 4604         	mov	r4, r0
  3739bc: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x3739e8 <MultiplayerGameLayer::onBack(cocos2d::CCObject*)+0x60>
  3739be: 447b         	add	r3, pc
  3739c0: 681d         	ldr	r5, [r3]
  3739c2: f7c2 fd7b    	bl	0x3364bc <GameTypeLayer::scene()> @ imm = #-0x3d50a
  3739c6: 4603         	mov	r3, r0
  3739c8: 4628         	mov	r0, r5
  3739ca: 4619         	mov	r1, r3
  3739cc: f23d fc9c    	bl	0x5b1308 <cocos2d::CCTransitionSlideInL::create(float, cocos2d::CCScene*)> @ imm = #0x23d938
  3739d0: 4603         	mov	r3, r0
  3739d2: 4620         	mov	r0, r4
  3739d4: 4619         	mov	r1, r3
  3739d6: f228 fcc1    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x228982
  3739da: b003         	add	sp, #0xc
  3739dc: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3739dd); words below are literal-pool data ---
  3739de: bf00         	nop
  3739e0: f076 005b    	orns	r0, r6, #0x5b
  3739e4: d730         	bvc	0x373a48 <MultiplayerGameLayer::onStartedMatchFromMMVC()+0x30> @ imm = #0x60
  3739e6: ffff fa76    	<unknown>
  3739ea: 005b         	lsls	r3, r3, #0x1

// ==== MultiplayerGameLayer::onDA
//      file offset 0x3739ec (= ELF address; Ghidra 0x3839ec), 44 bytes, Thumb-2
  3739ec: b500         	push	{lr}
  3739ee: b083         	sub	sp, #0xc
  3739f0: 9001         	str	r0, [sp, #0x4]
  3739f2: 9100         	str	r1, [sp]
  3739f4: 4a06         	ldr	r2, [pc, #0x18]         @ 0x373a10 <MultiplayerGameLayer::onDA(cocos2d::CCObject*)+0x24>
  3739f6: 447a         	add	r2, pc
  3739f8: 4b06         	ldr	r3, [pc, #0x18]         @ 0x373a14 <MultiplayerGameLayer::onDA(cocos2d::CCObject*)+0x28>
  3739fa: 58d3         	ldr	r3, [r2, r3]
  3739fc: 681b         	ldr	r3, [r3]
  3739fe: 4618         	mov	r0, r3
  373a00: 210d         	movs	r1, #0xd
  373a02: f084 f9dd    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x843ba
  373a06: f0b8 fcf5    	bl	0x42c3f4 <ApplicationInterface::openDoodleArmyAppLink()> @ imm = #0xb89ea
  373a0a: b003         	add	sp, #0xc
  373a0c: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x373a0f); words below are literal-pool data ---
  373a10: f012 005b    	ands	r0, r2, #0x5b
  373a14: d730         	bvc	0x373a78 <MultiplayerGameLayer::onStartedMatchFromMMVC()+0x60> @ imm = #0x60
  373a16: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== MultiplayerGameLayer::onStartedMatchFromMMVC
//      file offset 0x373a18 (= ELF address; Ghidra 0x383a18), 112 bytes, Thumb-2
  373a18: b530         	push	{r4, r5, lr}
  373a1a: b083         	sub	sp, #0xc
  373a1c: 9001         	str	r0, [sp, #0x4]
  373a1e: 4b14         	ldr	r3, [pc, #0x50]         @ 0x373a70 <MultiplayerGameLayer::onStartedMatchFromMMVC()+0x58>
  373a20: 447b         	add	r3, pc
  373a22: 4a14         	ldr	r2, [pc, #0x50]         @ 0x373a74 <MultiplayerGameLayer::onStartedMatchFromMMVC()+0x5c>
  373a24: 589a         	ldr	r2, [r3, r2]
  373a26: 2100         	movs	r1, #0x0
  373a28: 7011         	strb	r1, [r2]
  373a2a: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x373a78 <MultiplayerGameLayer::onStartedMatchFromMMVC()+0x60>
  373a2c: 589a         	ldr	r2, [r3, r2]
  373a2e: 2104         	movs	r1, #0x4
  373a30: 6011         	str	r1, [r2]
  373a32: 4a12         	ldr	r2, [pc, #0x48]         @ 0x373a7c <MultiplayerGameLayer::onStartedMatchFromMMVC()+0x64>
  373a34: 589a         	ldr	r2, [r3, r2]
  373a36: 2103         	movs	r1, #0x3
  373a38: 6011         	str	r1, [r2]
  373a3a: 4a11         	ldr	r2, [pc, #0x44]         @ 0x373a80 <MultiplayerGameLayer::onStartedMatchFromMMVC()+0x68>
  373a3c: 589b         	ldr	r3, [r3, r2]
  373a3e: 681b         	ldr	r3, [r3]
  373a40: 4618         	mov	r0, r3
  373a42: 210d         	movs	r1, #0xd
  373a44: f084 f9bc    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x84378
  373a48: f227 fd94    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x227b28
  373a4c: 4604         	mov	r4, r0
  373a4e: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x373a84 <MultiplayerGameLayer::onStartedMatchFromMMVC()+0x6c>
  373a50: 447b         	add	r3, pc
  373a52: 681d         	ldr	r5, [r3]
  373a54: f7dd fdba    	bl	0x3515cc <LobbyLayer::scene()> @ imm = #-0x2248c
  373a58: 4603         	mov	r3, r0
  373a5a: 4628         	mov	r0, r5
  373a5c: 4619         	mov	r1, r3
  373a5e: f23f f911    	bl	0x5b2c84 <cocos2d::CCTransitionFade::create(float, cocos2d::CCScene*)> @ imm = #0x23f222
  373a62: 4603         	mov	r3, r0
  373a64: 4620         	mov	r0, r4
  373a66: 4619         	mov	r1, r3
  373a68: f228 fc78    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x2288f0
  373a6c: b003         	add	sp, #0xc
  373a6e: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x373a6f); words below are literal-pool data ---
  373a70: efe8 005b    	<unknown>
  373a74: da58         	bge	0x373b28 <MultiplayerGameLayer::onOnlineGC(cocos2d::CCObject*)+0x6c> @ imm = #0xb0
  373a76: ffff d838    	vqshrun.s64	d29, q12, #0x1
  373a7a: ffff daa0    	vtbl.8	d29, {d31, fpinst2, mvfr0}, d16
  373a7e: ffff d730    	vqshl.u32	d29, d16, #0x1f
  373a82: ffff f9e4    	<unknown>
  373a86: 005b         	lsls	r3, r3, #0x1

// ==== MultiplayerGameLayer::inviteCheck
//      file offset 0x373a88 (= ELF address; Ghidra 0x383a88), 52 bytes, Thumb-2
  373a88: b500         	push	{lr}
  373a8a: b083         	sub	sp, #0xc
  373a8c: 9001         	str	r0, [sp, #0x4]
  373a8e: 9100         	str	r1, [sp]
  373a90: f004 f856    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x40ac
  373a94: 4603         	mov	r3, r0
  373a96: 4618         	mov	r0, r3
  373a98: f006 fe4c    	bl	0x37a734 <NetworkManager::getWasInvited()> @ imm = #0x6c98
  373a9c: 4603         	mov	r3, r0
  373a9e: 2b00         	cmp	r3, #0x0
  373aa0: d009         	beq	0x373ab6 <MultiplayerGameLayer::inviteCheck(float)+0x2e> @ imm = #0x12
  373aa2: f004 f84d    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x409a
  373aa6: 4603         	mov	r3, r0
  373aa8: 4618         	mov	r0, r3
  373aaa: 2100         	movs	r1, #0x0
  373aac: f006 fe4a    	bl	0x37a744 <NetworkManager::setWasInvited(bool)> @ imm = #0x6c94
  373ab0: 9801         	ldr	r0, [sp, #0x4]
  373ab2: f7ff ffb1    	bl	0x373a18 <MultiplayerGameLayer::onStartedMatchFromMMVC()> @ imm = #-0x9e
  373ab6: b003         	add	sp, #0xc
  373ab8: f85d fb04    	ldr	pc, [sp], #4

// ==== MultiplayerGameLayer::onOnlineGC
//      file offset 0x373abc (= ELF address; Ghidra 0x383abc), 440 bytes, Thumb-2
  373abc: b530         	push	{r4, r5, lr}
  373abe: b08b         	sub	sp, #0x2c
  373ac0: 9003         	str	r0, [sp, #0xc]
  373ac2: 9102         	str	r1, [sp, #0x8]
  373ac4: 4c63         	ldr	r4, [pc, #0x18c]        @ 0x373c54 <MultiplayerGameLayer::onOnlineGC(cocos2d::CCObject*)+0x198>
  373ac6: 447c         	add	r4, pc
  373ac8: 9b03         	ldr	r3, [sp, #0xc]
  373aca: f893 3108    	ldrb.w	r3, [r3, #0x108]
  373ace: 2b00         	cmp	r3, #0x0
  373ad0: d000         	beq	0x373ad4 <MultiplayerGameLayer::onOnlineGC(cocos2d::CCObject*)+0x18> @ imm = #0x0
  373ad2: e0bc         	b	0x373c4e <MultiplayerGameLayer::onOnlineGC(cocos2d::CCObject*)+0x192> @ imm = #0x178
  373ad4: 4b60         	ldr	r3, [pc, #0x180]        @ 0x373c58 <MultiplayerGameLayer::onOnlineGC(cocos2d::CCObject*)+0x19c>
  373ad6: 58e3         	ldr	r3, [r4, r3]
  373ad8: 681b         	ldr	r3, [r3]
  373ada: 4618         	mov	r0, r3
  373adc: 210d         	movs	r1, #0xd
  373ade: f084 f96f    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x842de
  373ae2: f004 f82d    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x405a
  373ae6: 4603         	mov	r3, r0
  373ae8: 4618         	mov	r0, r3
  373aea: f004 fc87    	bl	0x3783fc <NetworkManager::useGameCenter()> @ imm = #0x490e
  373aee: f004 f827    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x404e
  373af2: 4603         	mov	r3, r0
  373af4: 4618         	mov	r0, r3
  373af6: f006 fe15    	bl	0x37a724 <NetworkManager::isUsingHostedServer()> @ imm = #0x6c2a
  373afa: 4603         	mov	r3, r0
  373afc: f88d 301a    	strb.w	r3, [sp, #0x1a]
  373b00: f004 f81e    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x403c
  373b04: 4603         	mov	r3, r0
  373b06: 4618         	mov	r0, r3
  373b08: f004 fcbc    	bl	0x378484 <NetworkManager::isPlayerAuthenticated()> @ imm = #0x4978
  373b0c: 4603         	mov	r3, r0
  373b0e: f88d 301b    	strb.w	r3, [sp, #0x1b]
  373b12: f89d 301a    	ldrb.w	r3, [sp, #0x1a]
  373b16: f083 0301    	eor	r3, r3, #0x1
  373b1a: b2db         	uxtb	r3, r3
  373b1c: 2b00         	cmp	r3, #0x0
  373b1e: d05e         	beq	0x373bde <MultiplayerGameLayer::onOnlineGC(cocos2d::CCObject*)+0x122> @ imm = #0xbc
  373b20: f89d 301b    	ldrb.w	r3, [sp, #0x1b]
  373b24: f083 0301    	eor	r3, r3, #0x1
  373b28: b2db         	uxtb	r3, r3
  373b2a: 2b00         	cmp	r3, #0x0
  373b2c: d057         	beq	0x373bde <MultiplayerGameLayer::onOnlineGC(cocos2d::CCObject*)+0x122> @ imm = #0xae
  373b2e: ab05         	add	r3, sp, #0x14
  373b30: 4618         	mov	r0, r3
  373b32: f016 f45f    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4168be
  373b36: aa08         	add	r2, sp, #0x20
  373b38: ab05         	add	r3, sp, #0x14
  373b3a: 4610         	mov	r0, r2
  373b3c: 4a47         	ldr	r2, [pc, #0x11c]        @ 0x373c5c <MultiplayerGameLayer::onOnlineGC(cocos2d::CCObject*)+0x1a0>
  373b3e: 447a         	add	r2, pc
  373b40: 4611         	mov	r1, r2
  373b42: 461a         	mov	r2, r3
  373b44: f042 f78c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x442f18
  373b48: ab06         	add	r3, sp, #0x18
  373b4a: 4618         	mov	r0, r3
  373b4c: f016 f452    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4168a4
  373b50: aa09         	add	r2, sp, #0x24
  373b52: ab06         	add	r3, sp, #0x18
  373b54: 4610         	mov	r0, r2
  373b56: 4a42         	ldr	r2, [pc, #0x108]        @ 0x373c60 <MultiplayerGameLayer::onOnlineGC(cocos2d::CCObject*)+0x1a4>
  373b58: 447a         	add	r2, pc
  373b5a: 4611         	mov	r1, r2
  373b5c: 461a         	mov	r2, r3
  373b5e: f042 f77f    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x442efe
  373b62: ab04         	add	r3, sp, #0x10
  373b64: 4618         	mov	r0, r3
  373b66: f016 f445    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x41688a
  373b6a: aa07         	add	r2, sp, #0x1c
  373b6c: ab04         	add	r3, sp, #0x10
  373b6e: 4610         	mov	r0, r2
  373b70: 4a3c         	ldr	r2, [pc, #0xf0]         @ 0x373c64 <MultiplayerGameLayer::onOnlineGC(cocos2d::CCObject*)+0x1a8>
  373b72: 447a         	add	r2, pc
  373b74: 4611         	mov	r1, r2
  373b76: 461a         	mov	r2, r3
  373b78: f042 f772    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x442ee4
  373b7c: ab07         	add	r3, sp, #0x1c
  373b7e: 4618         	mov	r0, r3
  373b80: f225 ff5c    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x225eb8
  373b84: 4603         	mov	r3, r0
  373b86: 4618         	mov	r0, r3
  373b88: 2100         	movs	r1, #0x0
  373b8a: f226 f941    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x226282
  373b8e: 4603         	mov	r3, r0
  373b90: 9803         	ldr	r0, [sp, #0xc]
  373b92: a908         	add	r1, sp, #0x20
  373b94: aa09         	add	r2, sp, #0x24
  373b96: 2500         	movs	r5, #0x0
  373b98: 9500         	str	r5, [sp]
  373b9a: 9001         	str	r0, [sp, #0x4]
  373b9c: 4832         	ldr	r0, [pc, #0xc8]         @ 0x373c68 <MultiplayerGameLayer::onOnlineGC(cocos2d::CCObject*)+0x1ac>
  373b9e: 5820         	ldr	r0, [r4, r0]
  373ba0: f76b fe28    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0x943b0
  373ba4: ab07         	add	r3, sp, #0x1c
  373ba6: 4618         	mov	r0, r3
  373ba8: f041 f6b4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x441d68
  373bac: ab04         	add	r3, sp, #0x10
  373bae: 4618         	mov	r0, r3
  373bb0: f016 f424    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x416848
  373bb4: ab09         	add	r3, sp, #0x24
  373bb6: 4618         	mov	r0, r3
  373bb8: f041 f6ac    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x441d58
  373bbc: ab06         	add	r3, sp, #0x18
  373bbe: 4618         	mov	r0, r3
  373bc0: f016 f41c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x416838
  373bc4: ab08         	add	r3, sp, #0x20
  373bc6: 4618         	mov	r0, r3
  373bc8: f041 f6a4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x441d48
  373bcc: ab05         	add	r3, sp, #0x14
  373bce: 4618         	mov	r0, r3
  373bd0: f016 f414    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x416828
  373bd4: 9b03         	ldr	r3, [sp, #0xc]
  373bd6: 2201         	movs	r2, #0x1
  373bd8: f883 2109    	strb.w	r2, [r3, #0x109]
  373bdc: e037         	b	0x373c4e <MultiplayerGameLayer::onOnlineGC(cocos2d::CCObject*)+0x192> @ imm = #0x6e
  373bde: 9b03         	ldr	r3, [sp, #0xc]
  373be0: 2201         	movs	r2, #0x1
  373be2: f883 2108    	strb.w	r2, [r3, #0x108]
  373be6: 4b21         	ldr	r3, [pc, #0x84]         @ 0x373c6c <MultiplayerGameLayer::onOnlineGC(cocos2d::CCObject*)+0x1b0>
  373be8: 58e3         	ldr	r3, [r4, r3]
  373bea: 2200         	movs	r2, #0x0
  373bec: 701a         	strb	r2, [r3]
  373bee: f227 fcc1    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x227982
  373bf2: 4604         	mov	r4, r0
  373bf4: 4b1e         	ldr	r3, [pc, #0x78]         @ 0x373c70 <MultiplayerGameLayer::onOnlineGC(cocos2d::CCObject*)+0x1b4>
  373bf6: 447b         	add	r3, pc
  373bf8: 681d         	ldr	r5, [r3]
  373bfa: f7dd fce7    	bl	0x3515cc <LobbyLayer::scene()> @ imm = #-0x22632
  373bfe: 4603         	mov	r3, r0
  373c00: 4628         	mov	r0, r5
  373c02: 4619         	mov	r1, r3
  373c04: f23f f83e    	bl	0x5b2c84 <cocos2d::CCTransitionFade::create(float, cocos2d::CCScene*)> @ imm = #0x23f07c
  373c08: 4603         	mov	r3, r0
  373c0a: 4620         	mov	r0, r4
  373c0c: 4619         	mov	r1, r3
  373c0e: f228 fba5    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x22874a
  373c12: e01c         	b	0x373c4e <MultiplayerGameLayer::onOnlineGC(cocos2d::CCObject*)+0x192> @ imm = #0x38
  373c14: ab07         	add	r3, sp, #0x1c
  373c16: 4618         	mov	r0, r3
  373c18: f041 f67c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x441cf8
  373c1c: e7ff         	b	0x373c1e <MultiplayerGameLayer::onOnlineGC(cocos2d::CCObject*)+0x162> @ imm = #-0x2
  373c1e: ab04         	add	r3, sp, #0x10
  373c20: 4618         	mov	r0, r3
  373c22: f016 f3eb    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4167d6
  373c26: ab09         	add	r3, sp, #0x24
  373c28: 4618         	mov	r0, r3
  373c2a: f041 f673    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x441ce6
  373c2e: e7ff         	b	0x373c30 <MultiplayerGameLayer::onOnlineGC(cocos2d::CCObject*)+0x174> @ imm = #-0x2
  373c30: ab06         	add	r3, sp, #0x18
  373c32: 4618         	mov	r0, r3
  373c34: f016 f3e2    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4167c4
  373c38: ab08         	add	r3, sp, #0x20
  373c3a: 4618         	mov	r0, r3
  373c3c: f041 f66a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x441cd4
  373c40: e7ff         	b	0x373c42 <MultiplayerGameLayer::onOnlineGC(cocos2d::CCObject*)+0x186> @ imm = #-0x2
  373c42: ab05         	add	r3, sp, #0x14
  373c44: 4618         	mov	r0, r3
  373c46: f016 f3d9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4167b2
  373c4a: f014 f22f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x41445e
  373c4e: b00b         	add	sp, #0x2c
  373c50: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x373c51); words below are literal-pool data ---
  373c52: bf00         	nop
  373c54: ef42 005b    	<unknown>
  373c58: d730         	bvc	0x373cbc <MultiplayerGameLayer::onOnlineGP(cocos2d::CCObject*)+0x48> @ imm = #0x60
  373c5a: ffff a506    	<unknown>
  373c5e: 0045         	lsls	r5, r0, #0x1
  373c60: a504         	adr	r5, #16 <MultiplayerGameLayer::onOnlineGC(cocos2d::CCObject*)+0x1ac>
  373c62: 0045         	lsls	r5, r0, #0x1
  373c64: a4ce         	adr	r4, #824 <MultiplayerGameLayer::onOnlineGP(cocos2d::CCObject*)+0xc2>
  373c66: 0045         	lsls	r5, r0, #0x1
  373c68: dc34         	bgt	0x373cd4 <MultiplayerGameLayer::onOnlineGP(cocos2d::CCObject*)+0x60> @ imm = #0x68
  373c6a: ffff da58    	<unknown>
  373c6e: ffff f83e    	vqshrun.s64	d31, q15, #0x1
  373c72: 005b         	lsls	r3, r3, #0x1

// ==== MultiplayerGameLayer::onOnlineGP
//      file offset 0x373c74 (= ELF address; Ghidra 0x383c74), 544 bytes, Thumb-2
  373c74: b530         	push	{r4, r5, lr}
  373c76: b08d         	sub	sp, #0x34
  373c78: 9003         	str	r0, [sp, #0xc]
  373c7a: 9102         	str	r1, [sp, #0x8]
  373c7c: 4c7c         	ldr	r4, [pc, #0x1f0]        @ 0x373e70 <MultiplayerGameLayer::onOnlineGP(cocos2d::CCObject*)+0x1fc>
  373c7e: 447c         	add	r4, pc
  373c80: 9b03         	ldr	r3, [sp, #0xc]
  373c82: f893 3108    	ldrb.w	r3, [r3, #0x108]
  373c86: 2b00         	cmp	r3, #0x0
  373c88: d000         	beq	0x373c8c <MultiplayerGameLayer::onOnlineGP(cocos2d::CCObject*)+0x18> @ imm = #0x0
  373c8a: e0ee         	b	0x373e6a <MultiplayerGameLayer::onOnlineGP(cocos2d::CCObject*)+0x1f6> @ imm = #0x1dc
  373c8c: 4b79         	ldr	r3, [pc, #0x1e4]        @ 0x373e74 <MultiplayerGameLayer::onOnlineGP(cocos2d::CCObject*)+0x200>
  373c8e: 58e3         	ldr	r3, [r4, r3]
  373c90: 681b         	ldr	r3, [r3]
  373c92: 4618         	mov	r0, r3
  373c94: 210d         	movs	r1, #0xd
  373c96: f084 f893    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x84126
  373c9a: f0b8 ff41    	bl	0x42cb20 <ApplicationInterface::initGPGS()> @ imm = #0xb8e82
  373c9e: 4603         	mov	r3, r0
  373ca0: f88d 301d    	strb.w	r3, [sp, #0x1d]
  373ca4: f89d 301d    	ldrb.w	r3, [sp, #0x1d]
  373ca8: f083 0301    	eor	r3, r3, #0x1
  373cac: b2db         	uxtb	r3, r3
  373cae: 2b00         	cmp	r3, #0x0
  373cb0: d000         	beq	0x373cb4 <MultiplayerGameLayer::onOnlineGP(cocos2d::CCObject*)+0x40> @ imm = #0x0
  373cb2: e0da         	b	0x373e6a <MultiplayerGameLayer::onOnlineGP(cocos2d::CCObject*)+0x1f6> @ imm = #0x1b4
  373cb4: f003 ff44    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x3e88
  373cb8: 4603         	mov	r3, r0
  373cba: 4618         	mov	r0, r3
  373cbc: f004 fbb2    	bl	0x378424 <NetworkManager::useGooglePlay()> @ imm = #0x4764
  373cc0: f003 ff3e    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x3e7c
  373cc4: 4603         	mov	r3, r0
  373cc6: 4618         	mov	r0, r3
  373cc8: f006 fd2c    	bl	0x37a724 <NetworkManager::isUsingHostedServer()> @ imm = #0x6a58
  373ccc: 4603         	mov	r3, r0
  373cce: f88d 301e    	strb.w	r3, [sp, #0x1e]
  373cd2: f003 ff35    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x3e6a
  373cd6: 4603         	mov	r3, r0
  373cd8: 4618         	mov	r0, r3
  373cda: f004 fbd3    	bl	0x378484 <NetworkManager::isPlayerAuthenticated()> @ imm = #0x47a6
  373cde: 4603         	mov	r3, r0
  373ce0: f88d 301f    	strb.w	r3, [sp, #0x1f]
  373ce4: f89d 301e    	ldrb.w	r3, [sp, #0x1e]
  373ce8: f083 0301    	eor	r3, r3, #0x1
  373cec: b2db         	uxtb	r3, r3
  373cee: 2b00         	cmp	r3, #0x0
  373cf0: d079         	beq	0x373de6 <MultiplayerGameLayer::onOnlineGP(cocos2d::CCObject*)+0x172> @ imm = #0xf2
  373cf2: f89d 301f    	ldrb.w	r3, [sp, #0x1f]
  373cf6: f083 0301    	eor	r3, r3, #0x1
  373cfa: b2db         	uxtb	r3, r3
  373cfc: 2b00         	cmp	r3, #0x0
  373cfe: d072         	beq	0x373de6 <MultiplayerGameLayer::onOnlineGP(cocos2d::CCObject*)+0x172> @ imm = #0xe4
  373d00: ab06         	add	r3, sp, #0x18
  373d02: 4618         	mov	r0, r3
  373d04: f016 f376    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4166ec
  373d08: aa0a         	add	r2, sp, #0x28
  373d0a: ab06         	add	r3, sp, #0x18
  373d0c: 4610         	mov	r0, r2
  373d0e: 4a5a         	ldr	r2, [pc, #0x168]        @ 0x373e78 <MultiplayerGameLayer::onOnlineGP(cocos2d::CCObject*)+0x204>
  373d10: 447a         	add	r2, pc
  373d12: 4611         	mov	r1, r2
  373d14: 461a         	mov	r2, r3
  373d16: f042 f6a3    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x442d46
  373d1a: ab07         	add	r3, sp, #0x1c
  373d1c: 4618         	mov	r0, r3
  373d1e: f016 f369    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4166d2
  373d22: aa0b         	add	r2, sp, #0x2c
  373d24: ab07         	add	r3, sp, #0x1c
  373d26: 4610         	mov	r0, r2
  373d28: 4a54         	ldr	r2, [pc, #0x150]        @ 0x373e7c <MultiplayerGameLayer::onOnlineGP(cocos2d::CCObject*)+0x208>
  373d2a: 447a         	add	r2, pc
  373d2c: 4611         	mov	r1, r2
  373d2e: 461a         	mov	r2, r3
  373d30: f042 f696    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x442d2c
  373d34: ab04         	add	r3, sp, #0x10
  373d36: 4618         	mov	r0, r3
  373d38: f016 f35c    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4166b8
  373d3c: aa08         	add	r2, sp, #0x20
  373d3e: ab04         	add	r3, sp, #0x10
  373d40: 4610         	mov	r0, r2
  373d42: 4a4f         	ldr	r2, [pc, #0x13c]        @ 0x373e80 <MultiplayerGameLayer::onOnlineGP(cocos2d::CCObject*)+0x20c>
  373d44: 447a         	add	r2, pc
  373d46: 4611         	mov	r1, r2
  373d48: 461a         	mov	r2, r3
  373d4a: f042 f689    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x442d12
  373d4e: ab08         	add	r3, sp, #0x20
  373d50: 4618         	mov	r0, r3
  373d52: f225 fe73    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x225ce6
  373d56: 4605         	mov	r5, r0
  373d58: ab05         	add	r3, sp, #0x14
  373d5a: 4618         	mov	r0, r3
  373d5c: f016 f34a    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x416694
  373d60: aa09         	add	r2, sp, #0x24
  373d62: ab05         	add	r3, sp, #0x14
  373d64: 4610         	mov	r0, r2
  373d66: 4a47         	ldr	r2, [pc, #0x11c]        @ 0x373e84 <MultiplayerGameLayer::onOnlineGP(cocos2d::CCObject*)+0x210>
  373d68: 447a         	add	r2, pc
  373d6a: 4611         	mov	r1, r2
  373d6c: 461a         	mov	r2, r3
  373d6e: f042 f677    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x442cee
  373d72: ab09         	add	r3, sp, #0x24
  373d74: 4618         	mov	r0, r3
  373d76: f225 fe61    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x225cc2
  373d7a: 4603         	mov	r3, r0
  373d7c: 4628         	mov	r0, r5
  373d7e: 4619         	mov	r1, r3
  373d80: 2200         	movs	r2, #0x0
  373d82: f226 f845    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x22608a
  373d86: 4603         	mov	r3, r0
  373d88: 9803         	ldr	r0, [sp, #0xc]
  373d8a: a90a         	add	r1, sp, #0x28
  373d8c: aa0b         	add	r2, sp, #0x2c
  373d8e: 2500         	movs	r5, #0x0
  373d90: 9500         	str	r5, [sp]
  373d92: 9001         	str	r0, [sp, #0x4]
  373d94: 483c         	ldr	r0, [pc, #0xf0]         @ 0x373e88 <MultiplayerGameLayer::onOnlineGP(cocos2d::CCObject*)+0x214>
  373d96: 5820         	ldr	r0, [r4, r0]
  373d98: f76b fd2c    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0x945a8
  373d9c: ab09         	add	r3, sp, #0x24
  373d9e: 4618         	mov	r0, r3
  373da0: f041 f5b8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x441b70
  373da4: ab05         	add	r3, sp, #0x14
  373da6: 4618         	mov	r0, r3
  373da8: f016 f328    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x416650
  373dac: ab08         	add	r3, sp, #0x20
  373dae: 4618         	mov	r0, r3
  373db0: f041 f5b0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x441b60
  373db4: ab04         	add	r3, sp, #0x10
  373db6: 4618         	mov	r0, r3
  373db8: f016 f320    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x416640
  373dbc: ab0b         	add	r3, sp, #0x2c
  373dbe: 4618         	mov	r0, r3
  373dc0: f041 f5a8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x441b50
  373dc4: ab07         	add	r3, sp, #0x1c
  373dc6: 4618         	mov	r0, r3
  373dc8: f016 f318    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x416630
  373dcc: ab0a         	add	r3, sp, #0x28
  373dce: 4618         	mov	r0, r3
  373dd0: f041 f5a0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x441b40
  373dd4: ab06         	add	r3, sp, #0x18
  373dd6: 4618         	mov	r0, r3
  373dd8: f016 f310    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x416620
  373ddc: 9b03         	ldr	r3, [sp, #0xc]
  373dde: 2201         	movs	r2, #0x1
  373de0: f883 2109    	strb.w	r2, [r3, #0x109]
  373de4: e041         	b	0x373e6a <MultiplayerGameLayer::onOnlineGP(cocos2d::CCObject*)+0x1f6> @ imm = #0x82
  373de6: 9b03         	ldr	r3, [sp, #0xc]
  373de8: 2201         	movs	r2, #0x1
  373dea: f883 2108    	strb.w	r2, [r3, #0x108]
  373dee: 4b27         	ldr	r3, [pc, #0x9c]         @ 0x373e8c <MultiplayerGameLayer::onOnlineGP(cocos2d::CCObject*)+0x218>
  373df0: 58e3         	ldr	r3, [r4, r3]
  373df2: 2200         	movs	r2, #0x0
  373df4: 701a         	strb	r2, [r3]
  373df6: f227 fbbd    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x22777a
  373dfa: 4604         	mov	r4, r0
  373dfc: 4b24         	ldr	r3, [pc, #0x90]         @ 0x373e90 <MultiplayerGameLayer::onOnlineGP(cocos2d::CCObject*)+0x21c>
  373dfe: 447b         	add	r3, pc
  373e00: 681d         	ldr	r5, [r3]
  373e02: f7dd fbe3    	bl	0x3515cc <LobbyLayer::scene()> @ imm = #-0x2283a
  373e06: 4603         	mov	r3, r0
  373e08: 4628         	mov	r0, r5
  373e0a: 4619         	mov	r1, r3
  373e0c: f23e ff3a    	bl	0x5b2c84 <cocos2d::CCTransitionFade::create(float, cocos2d::CCScene*)> @ imm = #0x23ee74
  373e10: 4603         	mov	r3, r0
  373e12: 4620         	mov	r0, r4
  373e14: 4619         	mov	r1, r3
  373e16: f228 faa1    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x228542
  373e1a: e026         	b	0x373e6a <MultiplayerGameLayer::onOnlineGP(cocos2d::CCObject*)+0x1f6> @ imm = #0x4c
  373e1c: ab09         	add	r3, sp, #0x24
  373e1e: 4618         	mov	r0, r3
  373e20: f041 f578    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x441af0
  373e24: e7ff         	b	0x373e26 <MultiplayerGameLayer::onOnlineGP(cocos2d::CCObject*)+0x1b2> @ imm = #-0x2
  373e26: ab05         	add	r3, sp, #0x14
  373e28: 4618         	mov	r0, r3
  373e2a: f016 f2e7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4165ce
  373e2e: e7ff         	b	0x373e30 <MultiplayerGameLayer::onOnlineGP(cocos2d::CCObject*)+0x1bc> @ imm = #-0x2
  373e30: ab08         	add	r3, sp, #0x20
  373e32: 4618         	mov	r0, r3
  373e34: f041 f56e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x441adc
  373e38: e7ff         	b	0x373e3a <MultiplayerGameLayer::onOnlineGP(cocos2d::CCObject*)+0x1c6> @ imm = #-0x2
  373e3a: ab04         	add	r3, sp, #0x10
  373e3c: 4618         	mov	r0, r3
  373e3e: f016 f2dd    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4165ba
  373e42: ab0b         	add	r3, sp, #0x2c
  373e44: 4618         	mov	r0, r3
  373e46: f041 f565    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x441aca
  373e4a: e7ff         	b	0x373e4c <MultiplayerGameLayer::onOnlineGP(cocos2d::CCObject*)+0x1d8> @ imm = #-0x2
  373e4c: ab07         	add	r3, sp, #0x1c
  373e4e: 4618         	mov	r0, r3
  373e50: f016 f2d4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4165a8
  373e54: ab0a         	add	r3, sp, #0x28
  373e56: 4618         	mov	r0, r3
  373e58: f041 f55c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x441ab8
  373e5c: e7ff         	b	0x373e5e <MultiplayerGameLayer::onOnlineGP(cocos2d::CCObject*)+0x1ea> @ imm = #-0x2
  373e5e: ab06         	add	r3, sp, #0x18
  373e60: 4618         	mov	r0, r3
  373e62: f016 f2cb    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x416596
  373e66: f014 f121    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x414242
  373e6a: b00d         	add	sp, #0x34
  373e6c: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x373e6d); words below are literal-pool data ---
  373e6e: bf00         	nop
  373e70: ed8a 005b    	stc	p0, c0, [r10, #364]
  373e74: d730         	bvc	0x373ed8 <MultiplayerGameLayer::onOnlineQP(cocos2d::CCObject*)+0x44> @ imm = #0x60
  373e76: ffff a38c    	<unknown>
  373e7a: 0045         	lsls	r5, r0, #0x1
  373e7c: a38a         	adr	r3, #552 <MultiplayerGameLayer::onOnlineQP(cocos2d::CCObject*)+0x76>
  373e7e: 0045         	lsls	r5, r0, #0x1
  373e80: a3dc         	adr	r3, #880 <MultiplayerGameLayer::onOnlineQP(cocos2d::CCObject*)+0xcc>
  373e82: 0045         	lsls	r5, r0, #0x1
  373e84: a3c0         	adr	r3, #768 <MultiplayerGameLayer::onOnlineQP(cocos2d::CCObject*)+0xb4>
  373e86: 0045         	lsls	r5, r0, #0x1
  373e88: dc38         	bgt	0x373efc <MultiplayerGameLayer::onOnlineQP(cocos2d::CCObject*)+0x68> @ imm = #0x70
  373e8a: ffff da58    	<unknown>
  373e8e: ffff f636    	vqshlu.s32	d31, d22, #0x1f
  373e92: 005b         	lsls	r3, r3, #0x1

// ==== MultiplayerGameLayer::onOnlineQP
//      file offset 0x373e94 (= ELF address; Ghidra 0x383e94), 584 bytes, Thumb-2
  373e94: b530         	push	{r4, r5, lr}
  373e96: b08b         	sub	sp, #0x2c
  373e98: 9003         	str	r0, [sp, #0xc]
  373e9a: 9102         	str	r1, [sp, #0x8]
  373e9c: 4c81         	ldr	r4, [pc, #0x204]        @ 0x3740a4 <MultiplayerGameLayer::onOnlineQP(cocos2d::CCObject*)+0x210>
  373e9e: 447c         	add	r4, pc
  373ea0: 9b03         	ldr	r3, [sp, #0xc]
  373ea2: f893 3108    	ldrb.w	r3, [r3, #0x108]
  373ea6: 2b00         	cmp	r3, #0x0
  373ea8: d000         	beq	0x373eac <MultiplayerGameLayer::onOnlineQP(cocos2d::CCObject*)+0x18> @ imm = #0x0
  373eaa: e0f9         	b	0x3740a0 <MultiplayerGameLayer::onOnlineQP(cocos2d::CCObject*)+0x20c> @ imm = #0x1f2
  373eac: 4b7e         	ldr	r3, [pc, #0x1f8]        @ 0x3740a8 <MultiplayerGameLayer::onOnlineQP(cocos2d::CCObject*)+0x214>
  373eae: 58e3         	ldr	r3, [r4, r3]
  373eb0: 681b         	ldr	r3, [r3]
  373eb2: 4618         	mov	r0, r3
  373eb4: 210d         	movs	r1, #0xd
  373eb6: f083 ff83    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x83f06
  373eba: f003 fe41    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x3c82
  373ebe: 4603         	mov	r3, r0
  373ec0: 4618         	mov	r0, r3
  373ec2: f0bf fef5    	bl	0x433cb0 <NetworkManagerBridge::isInternetReachable()> @ imm = #0xbfdea
  373ec6: 4603         	mov	r3, r0
  373ec8: f083 0301    	eor	r3, r3, #0x1
  373ecc: b2db         	uxtb	r3, r3
  373ece: 2b00         	cmp	r3, #0x0
  373ed0: d059         	beq	0x373f86 <MultiplayerGameLayer::onOnlineQP(cocos2d::CCObject*)+0xf2> @ imm = #0xb2
  373ed2: 4b75         	ldr	r3, [pc, #0x1d4]        @ 0x3740a8 <MultiplayerGameLayer::onOnlineQP(cocos2d::CCObject*)+0x214>
  373ed4: 58e3         	ldr	r3, [r4, r3]
  373ed6: 681b         	ldr	r3, [r3]
  373ed8: 4618         	mov	r0, r3
  373eda: 210e         	movs	r1, #0xe
  373edc: f083 ff70    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x83ee0
  373ee0: ab05         	add	r3, sp, #0x14
  373ee2: 4618         	mov	r0, r3
  373ee4: f016 f286    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x41650c
  373ee8: aa08         	add	r2, sp, #0x20
  373eea: ab05         	add	r3, sp, #0x14
  373eec: 4610         	mov	r0, r2
  373eee: 4a6f         	ldr	r2, [pc, #0x1bc]        @ 0x3740ac <MultiplayerGameLayer::onOnlineQP(cocos2d::CCObject*)+0x218>
  373ef0: 447a         	add	r2, pc
  373ef2: 4611         	mov	r1, r2
  373ef4: 461a         	mov	r2, r3
  373ef6: f042 f5b3    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x442b66
  373efa: ab06         	add	r3, sp, #0x18
  373efc: 4618         	mov	r0, r3
  373efe: f016 f279    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4164f2
  373f02: aa09         	add	r2, sp, #0x24
  373f04: ab06         	add	r3, sp, #0x18
  373f06: 4610         	mov	r0, r2
  373f08: 4a69         	ldr	r2, [pc, #0x1a4]        @ 0x3740b0 <MultiplayerGameLayer::onOnlineQP(cocos2d::CCObject*)+0x21c>
  373f0a: 447a         	add	r2, pc
  373f0c: 4611         	mov	r1, r2
  373f0e: 461a         	mov	r2, r3
  373f10: f042 f5a6    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x442b4c
  373f14: ab04         	add	r3, sp, #0x10
  373f16: 4618         	mov	r0, r3
  373f18: f016 f26c    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4164d8
  373f1c: aa07         	add	r2, sp, #0x1c
  373f1e: ab04         	add	r3, sp, #0x10
  373f20: 4610         	mov	r0, r2
  373f22: 4a64         	ldr	r2, [pc, #0x190]        @ 0x3740b4 <MultiplayerGameLayer::onOnlineQP(cocos2d::CCObject*)+0x220>
  373f24: 447a         	add	r2, pc
  373f26: 4611         	mov	r1, r2
  373f28: 461a         	mov	r2, r3
  373f2a: f042 f599    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x442b32
  373f2e: ab07         	add	r3, sp, #0x1c
  373f30: 4618         	mov	r0, r3
  373f32: f225 fd83    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x225b06
  373f36: 4603         	mov	r3, r0
  373f38: 4618         	mov	r0, r3
  373f3a: 2100         	movs	r1, #0x0
  373f3c: f225 ff68    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x225ed0
  373f40: 4603         	mov	r3, r0
  373f42: a908         	add	r1, sp, #0x20
  373f44: aa09         	add	r2, sp, #0x24
  373f46: 2000         	movs	r0, #0x0
  373f48: 9000         	str	r0, [sp]
  373f4a: 2000         	movs	r0, #0x0
  373f4c: 9001         	str	r0, [sp, #0x4]
  373f4e: 2000         	movs	r0, #0x0
  373f50: f76b fc50    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0x94760
  373f54: ab07         	add	r3, sp, #0x1c
  373f56: 4618         	mov	r0, r3
  373f58: f041 f4dc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4419b8
  373f5c: ab04         	add	r3, sp, #0x10
  373f5e: 4618         	mov	r0, r3
  373f60: f016 f24c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x416498
  373f64: ab09         	add	r3, sp, #0x24
  373f66: 4618         	mov	r0, r3
  373f68: f041 f4d4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4419a8
  373f6c: ab06         	add	r3, sp, #0x18
  373f6e: 4618         	mov	r0, r3
  373f70: f016 f244    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x416488
  373f74: ab08         	add	r3, sp, #0x20
  373f76: 4618         	mov	r0, r3
  373f78: f041 f4cc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x441998
  373f7c: ab05         	add	r3, sp, #0x14
  373f7e: 4618         	mov	r0, r3
  373f80: f016 f23c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x416478
  373f84: e08c         	b	0x3740a0 <MultiplayerGameLayer::onOnlineQP(cocos2d::CCObject*)+0x20c> @ imm = #0x118
  373f86: 9b03         	ldr	r3, [sp, #0xc]
  373f88: f893 3108    	ldrb.w	r3, [r3, #0x108]
  373f8c: 2b00         	cmp	r3, #0x0
  373f8e: d000         	beq	0x373f92 <MultiplayerGameLayer::onOnlineQP(cocos2d::CCObject*)+0xfe> @ imm = #0x0
  373f90: e086         	b	0x3740a0 <MultiplayerGameLayer::onOnlineQP(cocos2d::CCObject*)+0x20c> @ imm = #0x10c
  373f92: 9b03         	ldr	r3, [sp, #0xc]
  373f94: 2201         	movs	r2, #0x1
  373f96: f883 2108    	strb.w	r2, [r3, #0x108]
  373f9a: f003 fdd1    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x3ba2
  373f9e: 4603         	mov	r3, r0
  373fa0: 4618         	mov	r0, r3
  373fa2: 2101         	movs	r1, #0x1
  373fa4: f006 fb94    	bl	0x37a6d0 <NetworkManager::setUseHostedServer(bool)> @ imm = #0x6728
  373fa8: f003 fdca    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x3b94
  373fac: 4603         	mov	r3, r0
  373fae: 4618         	mov	r0, r3
  373fb0: 2101         	movs	r1, #0x1
  373fb2: f006 fb99    	bl	0x37a6e8 <NetworkManager::setConnectionType(ConnectionType)> @ imm = #0x6732
  373fb6: 4b40         	ldr	r3, [pc, #0x100]        @ 0x3740b8 <MultiplayerGameLayer::onOnlineQP(cocos2d::CCObject*)+0x224>
  373fb8: 58e3         	ldr	r3, [r4, r3]
  373fba: 2204         	movs	r2, #0x4
  373fbc: 601a         	str	r2, [r3]
  373fbe: 4b3f         	ldr	r3, [pc, #0xfc]         @ 0x3740bc <MultiplayerGameLayer::onOnlineQP(cocos2d::CCObject*)+0x228>
  373fc0: 58e3         	ldr	r3, [r4, r3]
  373fc2: 2203         	movs	r2, #0x3
  373fc4: 601a         	str	r2, [r3]
  373fc6: 4b3e         	ldr	r3, [pc, #0xf8]         @ 0x3740c0 <MultiplayerGameLayer::onOnlineQP(cocos2d::CCObject*)+0x22c>
  373fc8: 58e3         	ldr	r3, [r4, r3]
  373fca: 781b         	ldrb	r3, [r3]
  373fcc: f083 0301    	eor	r3, r3, #0x1
  373fd0: b2db         	uxtb	r3, r3
  373fd2: 2b00         	cmp	r3, #0x0
  373fd4: d012         	beq	0x373ffc <MultiplayerGameLayer::onOnlineQP(cocos2d::CCObject*)+0x168> @ imm = #0x24
  373fd6: f227 facd    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x22759a
  373fda: 4604         	mov	r4, r0
  373fdc: 4b39         	ldr	r3, [pc, #0xe4]         @ 0x3740c4 <MultiplayerGameLayer::onOnlineQP(cocos2d::CCObject*)+0x230>
  373fde: 447b         	add	r3, pc
  373fe0: 681d         	ldr	r5, [r3]
  373fe2: f091 fb37    	bl	0x405654 <TOSLayer::scene()> @ imm = #0x9166e
  373fe6: 4603         	mov	r3, r0
  373fe8: 4628         	mov	r0, r5
  373fea: 4619         	mov	r1, r3
  373fec: f23d fa1c    	bl	0x5b1428 <cocos2d::CCTransitionSlideInR::create(float, cocos2d::CCScene*)> @ imm = #0x23d438
  373ff0: 4603         	mov	r3, r0
  373ff2: 4620         	mov	r0, r4
  373ff4: 4619         	mov	r1, r3
  373ff6: f228 f9b1    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x228362
  373ffa: e051         	b	0x3740a0 <MultiplayerGameLayer::onOnlineQP(cocos2d::CCObject*)+0x20c> @ imm = #0xa2
  373ffc: 4b32         	ldr	r3, [pc, #0xc8]         @ 0x3740c8 <MultiplayerGameLayer::onOnlineQP(cocos2d::CCObject*)+0x234>
  373ffe: 58e3         	ldr	r3, [r4, r3]
  374000: 781b         	ldrb	r3, [r3]
  374002: 2b00         	cmp	r3, #0x0
  374004: d01c         	beq	0x374040 <MultiplayerGameLayer::onOnlineQP(cocos2d::CCObject*)+0x1ac> @ imm = #0x38
  374006: 4b31         	ldr	r3, [pc, #0xc4]         @ 0x3740cc <MultiplayerGameLayer::onOnlineQP(cocos2d::CCObject*)+0x238>
  374008: 58e3         	ldr	r3, [r4, r3]
  37400a: 781b         	ldrb	r3, [r3]
  37400c: 2b00         	cmp	r3, #0x0
  37400e: d017         	beq	0x374040 <MultiplayerGameLayer::onOnlineQP(cocos2d::CCObject*)+0x1ac> @ imm = #0x2e
  374010: 4b2f         	ldr	r3, [pc, #0xbc]         @ 0x3740d0 <MultiplayerGameLayer::onOnlineQP(cocos2d::CCObject*)+0x23c>
  374012: 58e3         	ldr	r3, [r4, r3]
  374014: 781b         	ldrb	r3, [r3]
  374016: 2b00         	cmp	r3, #0x0
  374018: d012         	beq	0x374040 <MultiplayerGameLayer::onOnlineQP(cocos2d::CCObject*)+0x1ac> @ imm = #0x24
  37401a: f227 faab    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x227556
  37401e: 4604         	mov	r4, r0
  374020: 4b2c         	ldr	r3, [pc, #0xb0]         @ 0x3740d4 <MultiplayerGameLayer::onOnlineQP(cocos2d::CCObject*)+0x240>
  374022: 447b         	add	r3, pc
  374024: 681d         	ldr	r5, [r3]
  374026: f7dd fad1    	bl	0x3515cc <LobbyLayer::scene()> @ imm = #-0x22a5e
  37402a: 4603         	mov	r3, r0
  37402c: 4628         	mov	r0, r5
  37402e: 4619         	mov	r1, r3
  374030: f23d f9fa    	bl	0x5b1428 <cocos2d::CCTransitionSlideInR::create(float, cocos2d::CCScene*)> @ imm = #0x23d3f4
  374034: 4603         	mov	r3, r0
  374036: 4620         	mov	r0, r4
  374038: 4619         	mov	r1, r3
  37403a: f228 f98f    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x22831e
  37403e: e02f         	b	0x3740a0 <MultiplayerGameLayer::onOnlineQP(cocos2d::CCObject*)+0x20c> @ imm = #0x5e
  374040: f227 fa98    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x227530
  374044: 4604         	mov	r4, r0
  374046: 4b24         	ldr	r3, [pc, #0x90]         @ 0x3740d8 <MultiplayerGameLayer::onOnlineQP(cocos2d::CCObject*)+0x244>
  374048: 447b         	add	r3, pc
  37404a: 681d         	ldr	r5, [r3]
  37404c: f76e fafe    	bl	0x2e264c <AdLayer::scene()> @ imm = #-0x91a04
  374050: 4603         	mov	r3, r0
  374052: 4628         	mov	r0, r5
  374054: 4619         	mov	r1, r3
  374056: f23d f9e7    	bl	0x5b1428 <cocos2d::CCTransitionSlideInR::create(float, cocos2d::CCScene*)> @ imm = #0x23d3ce
  37405a: 4603         	mov	r3, r0
  37405c: 4620         	mov	r0, r4
  37405e: 4619         	mov	r1, r3
  374060: f228 f97c    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x2282f8
  374064: e01c         	b	0x3740a0 <MultiplayerGameLayer::onOnlineQP(cocos2d::CCObject*)+0x20c> @ imm = #0x38
  374066: ab07         	add	r3, sp, #0x1c
  374068: 4618         	mov	r0, r3
  37406a: f041 f453    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4418a6
  37406e: e7ff         	b	0x374070 <MultiplayerGameLayer::onOnlineQP(cocos2d::CCObject*)+0x1dc> @ imm = #-0x2
  374070: ab04         	add	r3, sp, #0x10
  374072: 4618         	mov	r0, r3
  374074: f016 f1c2    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x416384
  374078: ab09         	add	r3, sp, #0x24
  37407a: 4618         	mov	r0, r3
  37407c: f041 f44a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x441894
  374080: e7ff         	b	0x374082 <MultiplayerGameLayer::onOnlineQP(cocos2d::CCObject*)+0x1ee> @ imm = #-0x2
  374082: ab06         	add	r3, sp, #0x18
  374084: 4618         	mov	r0, r3
  374086: f016 f1b9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x416372
  37408a: ab08         	add	r3, sp, #0x20
  37408c: 4618         	mov	r0, r3
  37408e: f041 f441    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x441882
  374092: e7ff         	b	0x374094 <MultiplayerGameLayer::onOnlineQP(cocos2d::CCObject*)+0x200> @ imm = #-0x2
  374094: ab05         	add	r3, sp, #0x14
  374096: 4618         	mov	r0, r3
  374098: f016 f1b0    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x416360
  37409c: f014 f006    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x41400c
  3740a0: b00b         	add	sp, #0x2c
  3740a2: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3740a3); words below are literal-pool data ---
  3740a4: eb6a 005b    	sbc.w	r0, r10, r11, lsr #1
  3740a8: d730         	bvc	0x37410c <MultiplayerGameLayer::messageBoxHandlerGC(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x4> @ imm = #0x60
  3740aa: ffff a240    	<unknown>
  3740ae: 0045         	lsls	r5, r0, #0x1
  3740b0: a23e         	adr	r2, #248 <MultiplayerGameLayer::authPlayer()+0x16>
  3740b2: 0045         	lsls	r5, r0, #0x1
  3740b4: a25c         	adr	r2, #368 <MultiplayerGameLayer::messageBoxHandlerGC(int, cocos2d::CCObject*, cocos2d::CCObject*)+0xc>
  3740b6: 0045         	lsls	r5, r0, #0x1
  3740b8: d838         	bhi	0x37412c <MultiplayerGameLayer::messageBoxHandlerGP(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x8> @ imm = #0x70
  3740ba: ffff daa0    	vtbl.8	d29, {d31, fpinst2, mvfr0}, d16
  3740be: ffff d7a0    	<unknown>
  3740c2: ffff f456    	<unknown>
  3740c6: 005b         	lsls	r3, r3, #0x1
  3740c8: d76c         	bvc	0x3741a4 <MultiplayerGameLayer::messageBoxHandlerGP2(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x5c> @ imm = #0xd8
  3740ca: ffff d768    	<unknown>
  3740ce: ffff dbc8    	vtbx.8	d29, {d31, fpinst2, mvfr0, mvfr1}, d8
  3740d2: ffff f412    	vsri.32	d31, d2, #0x1
  3740d6: 005b         	lsls	r3, r3, #0x1
  3740d8: f3ec 005b    	<unknown>

// ==== MultiplayerGameLayer::authPlayer
//      file offset 0x3740dc (= ELF address; Ghidra 0x3840dc), 42 bytes, Thumb-2
  3740dc: b500         	push	{lr}
  3740de: b083         	sub	sp, #0xc
  3740e0: 9001         	str	r0, [sp, #0x4]
  3740e2: 9b01         	ldr	r3, [sp, #0x4]
  3740e4: f893 3109    	ldrb.w	r3, [r3, #0x109]
  3740e8: 2b00         	cmp	r3, #0x0
  3740ea: d009         	beq	0x374100 <MultiplayerGameLayer::authPlayer()+0x24> @ imm = #0x12
  3740ec: 9b01         	ldr	r3, [sp, #0x4]
  3740ee: 2200         	movs	r2, #0x0
  3740f0: f883 2109    	strb.w	r2, [r3, #0x109]
  3740f4: f003 fd24    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x3a48
  3740f8: 4603         	mov	r3, r0
  3740fa: 4618         	mov	r0, r3
  3740fc: f005 fee8    	bl	0x379ed0 <NetworkManager::authenticateLocalPlayer()> @ imm = #0x5dd0
  374100: b003         	add	sp, #0xc
  374102: f85d fb04    	ldr	pc, [sp], #4

// ==== MultiplayerGameLayer::messageBoxHandlerGC
//      file offset 0x374108 (= ELF address; Ghidra 0x384108), 26 bytes, Thumb-2
  374108: b500         	push	{lr}
  37410a: b087         	sub	sp, #0x1c
  37410c: 9003         	str	r0, [sp, #0xc]
  37410e: 9102         	str	r1, [sp, #0x8]
  374110: 9201         	str	r2, [sp, #0x4]
  374112: 9b01         	ldr	r3, [sp, #0x4]
  374114: 9305         	str	r3, [sp, #0x14]
  374116: 9805         	ldr	r0, [sp, #0x14]
  374118: f7ff ffe0    	bl	0x3740dc <MultiplayerGameLayer::authPlayer()> @ imm = #-0x40
  37411c: b007         	add	sp, #0x1c
  37411e: f85d fb04    	ldr	pc, [sp], #4

// ==== MultiplayerGameLayer::messageBoxHandlerGP
//      file offset 0x374124 (= ELF address; Ghidra 0x384124), 34 bytes, Thumb-2
  374124: b500         	push	{lr}
  374126: b087         	sub	sp, #0x1c
  374128: 9003         	str	r0, [sp, #0xc]
  37412a: 9102         	str	r1, [sp, #0x8]
  37412c: 9201         	str	r2, [sp, #0x4]
  37412e: 9b03         	ldr	r3, [sp, #0xc]
  374130: 2b00         	cmp	r3, #0x0
  374132: d100         	bne	0x374136 <MultiplayerGameLayer::messageBoxHandlerGP(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x12> @ imm = #0x0
  374134: e004         	b	0x374140 <MultiplayerGameLayer::messageBoxHandlerGP(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x1c> @ imm = #0x8
  374136: 9b01         	ldr	r3, [sp, #0x4]
  374138: 9305         	str	r3, [sp, #0x14]
  37413a: 9805         	ldr	r0, [sp, #0x14]
  37413c: f7ff ffce    	bl	0x3740dc <MultiplayerGameLayer::authPlayer()> @ imm = #-0x64
  374140: b007         	add	sp, #0x1c
  374142: f85d fb04    	ldr	pc, [sp], #4

// ==== MultiplayerGameLayer::messageBoxHandlerGP2
//      file offset 0x374148 (= ELF address; Ghidra 0x384148), 556 bytes, Thumb-2
  374148: b530         	push	{r4, r5, lr}
  37414a: b08d         	sub	sp, #0x34
  37414c: 9005         	str	r0, [sp, #0x14]
  37414e: 9104         	str	r1, [sp, #0x10]
  374150: 9203         	str	r2, [sp, #0xc]
  374152: 4c7a         	ldr	r4, [pc, #0x1e8]        @ 0x37433c <MultiplayerGameLayer::messageBoxHandlerGP2(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x1f4>
  374154: 447c         	add	r4, pc
  374156: f003 fcf3    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x39e6
  37415a: 4603         	mov	r3, r0
  37415c: 4618         	mov	r0, r3
  37415e: f0bf fda7    	bl	0x433cb0 <NetworkManagerBridge::isInternetReachable()> @ imm = #0xbfb4e
  374162: 4603         	mov	r3, r0
  374164: f083 0301    	eor	r3, r3, #0x1
  374168: b2db         	uxtb	r3, r3
  37416a: 2b00         	cmp	r3, #0x0
  37416c: d059         	beq	0x374222 <MultiplayerGameLayer::messageBoxHandlerGP2(int, cocos2d::CCObject*, cocos2d::CCObject*)+0xda> @ imm = #0xb2
  37416e: 4b74         	ldr	r3, [pc, #0x1d0]        @ 0x374340 <MultiplayerGameLayer::messageBoxHandlerGP2(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x1f8>
  374170: 58e3         	ldr	r3, [r4, r3]
  374172: 681b         	ldr	r3, [r3]
  374174: 4618         	mov	r0, r3
  374176: 210e         	movs	r1, #0xe
  374178: f083 fe22    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x83c44
  37417c: ab07         	add	r3, sp, #0x1c
  37417e: 4618         	mov	r0, r3
  374180: f016 f138    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x416270
  374184: aa0a         	add	r2, sp, #0x28
  374186: ab07         	add	r3, sp, #0x1c
  374188: 4610         	mov	r0, r2
  37418a: 4a6e         	ldr	r2, [pc, #0x1b8]        @ 0x374344 <MultiplayerGameLayer::messageBoxHandlerGP2(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x1fc>
  37418c: 447a         	add	r2, pc
  37418e: 4611         	mov	r1, r2
  374190: 461a         	mov	r2, r3
  374192: f042 f465    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4428ca
  374196: ab08         	add	r3, sp, #0x20
  374198: 4618         	mov	r0, r3
  37419a: f016 f12b    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x416256
  37419e: aa0b         	add	r2, sp, #0x2c
  3741a0: ab08         	add	r3, sp, #0x20
  3741a2: 4610         	mov	r0, r2
  3741a4: 4a68         	ldr	r2, [pc, #0x1a0]        @ 0x374348 <MultiplayerGameLayer::messageBoxHandlerGP2(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x200>
  3741a6: 447a         	add	r2, pc
  3741a8: 4611         	mov	r1, r2
  3741aa: 461a         	mov	r2, r3
  3741ac: f042 f458    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4428b0
  3741b0: ab06         	add	r3, sp, #0x18
  3741b2: 4618         	mov	r0, r3
  3741b4: f016 f11e    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x41623c
  3741b8: aa09         	add	r2, sp, #0x24
  3741ba: ab06         	add	r3, sp, #0x18
  3741bc: 4610         	mov	r0, r2
  3741be: 4a63         	ldr	r2, [pc, #0x18c]        @ 0x37434c <MultiplayerGameLayer::messageBoxHandlerGP2(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x204>
  3741c0: 447a         	add	r2, pc
  3741c2: 4611         	mov	r1, r2
  3741c4: 461a         	mov	r2, r3
  3741c6: f042 f44b    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x442896
  3741ca: ab09         	add	r3, sp, #0x24
  3741cc: 4618         	mov	r0, r3
  3741ce: f225 fc35    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x22586a
  3741d2: 4603         	mov	r3, r0
  3741d4: 4618         	mov	r0, r3
  3741d6: 2100         	movs	r1, #0x0
  3741d8: f225 fe1a    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x225c34
  3741dc: 4603         	mov	r3, r0
  3741de: a90a         	add	r1, sp, #0x28
  3741e0: aa0b         	add	r2, sp, #0x2c
  3741e2: 2000         	movs	r0, #0x0
  3741e4: 9000         	str	r0, [sp]
  3741e6: 2000         	movs	r0, #0x0
  3741e8: 9001         	str	r0, [sp, #0x4]
  3741ea: 2000         	movs	r0, #0x0
  3741ec: f76b fb02    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0x949fc
  3741f0: ab09         	add	r3, sp, #0x24
  3741f2: 4618         	mov	r0, r3
  3741f4: f041 f38e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44171c
  3741f8: ab06         	add	r3, sp, #0x18
  3741fa: 4618         	mov	r0, r3
  3741fc: f016 f0fe    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4161fc
  374200: ab0b         	add	r3, sp, #0x2c
  374202: 4618         	mov	r0, r3
  374204: f041 f386    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44170c
  374208: ab08         	add	r3, sp, #0x20
  37420a: 4618         	mov	r0, r3
  37420c: f016 f0f6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4161ec
  374210: ab0a         	add	r3, sp, #0x28
  374212: 4618         	mov	r0, r3
  374214: f041 f37e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4416fc
  374218: ab07         	add	r3, sp, #0x1c
  37421a: 4618         	mov	r0, r3
  37421c: f016 f0ee    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4161dc
  374220: e089         	b	0x374336 <MultiplayerGameLayer::messageBoxHandlerGP2(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x1ee> @ imm = #0x112
  374222: f003 fc8d    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x391a
  374226: 4603         	mov	r3, r0
  374228: 4618         	mov	r0, r3
  37422a: 2101         	movs	r1, #0x1
  37422c: f006 fa50    	bl	0x37a6d0 <NetworkManager::setUseHostedServer(bool)> @ imm = #0x64a0
  374230: f003 fc86    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x390c
  374234: 4603         	mov	r3, r0
  374236: 4618         	mov	r0, r3
  374238: 2101         	movs	r1, #0x1
  37423a: f006 fa55    	bl	0x37a6e8 <NetworkManager::setConnectionType(ConnectionType)> @ imm = #0x64aa
  37423e: 4b40         	ldr	r3, [pc, #0x100]        @ 0x374340 <MultiplayerGameLayer::messageBoxHandlerGP2(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x1f8>
  374240: 58e3         	ldr	r3, [r4, r3]
  374242: 681b         	ldr	r3, [r3]
  374244: 4618         	mov	r0, r3
  374246: 210d         	movs	r1, #0xd
  374248: f083 fdba    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x83b74
  37424c: 4b40         	ldr	r3, [pc, #0x100]        @ 0x374350 <MultiplayerGameLayer::messageBoxHandlerGP2(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x208>
  37424e: 58e3         	ldr	r3, [r4, r3]
  374250: 2204         	movs	r2, #0x4
  374252: 601a         	str	r2, [r3]
  374254: 4b3f         	ldr	r3, [pc, #0xfc]         @ 0x374354 <MultiplayerGameLayer::messageBoxHandlerGP2(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x20c>
  374256: 58e3         	ldr	r3, [r4, r3]
  374258: 2203         	movs	r2, #0x3
  37425a: 601a         	str	r2, [r3]
  37425c: 4b3e         	ldr	r3, [pc, #0xf8]         @ 0x374358 <MultiplayerGameLayer::messageBoxHandlerGP2(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x210>
  37425e: 58e3         	ldr	r3, [r4, r3]
  374260: 781b         	ldrb	r3, [r3]
  374262: f083 0301    	eor	r3, r3, #0x1
  374266: b2db         	uxtb	r3, r3
  374268: 2b00         	cmp	r3, #0x0
  37426a: d012         	beq	0x374292 <MultiplayerGameLayer::messageBoxHandlerGP2(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x14a> @ imm = #0x24
  37426c: f227 f982    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x227304
  374270: 4604         	mov	r4, r0
  374272: 4b3a         	ldr	r3, [pc, #0xe8]         @ 0x37435c <MultiplayerGameLayer::messageBoxHandlerGP2(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x214>
  374274: 447b         	add	r3, pc
  374276: 681d         	ldr	r5, [r3]
  374278: f091 f9ec    	bl	0x405654 <TOSLayer::scene()> @ imm = #0x913d8
  37427c: 4603         	mov	r3, r0
  37427e: 4628         	mov	r0, r5
  374280: 4619         	mov	r1, r3
  374282: f23d f8d1    	bl	0x5b1428 <cocos2d::CCTransitionSlideInR::create(float, cocos2d::CCScene*)> @ imm = #0x23d1a2
  374286: 4603         	mov	r3, r0
  374288: 4620         	mov	r0, r4
  37428a: 4619         	mov	r1, r3
  37428c: f228 f866    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x2280cc
  374290: e051         	b	0x374336 <MultiplayerGameLayer::messageBoxHandlerGP2(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x1ee> @ imm = #0xa2
  374292: 4b33         	ldr	r3, [pc, #0xcc]         @ 0x374360 <MultiplayerGameLayer::messageBoxHandlerGP2(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x218>
  374294: 58e3         	ldr	r3, [r4, r3]
  374296: 781b         	ldrb	r3, [r3]
  374298: 2b00         	cmp	r3, #0x0
  37429a: d01c         	beq	0x3742d6 <MultiplayerGameLayer::messageBoxHandlerGP2(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x18e> @ imm = #0x38
  37429c: 4b31         	ldr	r3, [pc, #0xc4]         @ 0x374364 <MultiplayerGameLayer::messageBoxHandlerGP2(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x21c>
  37429e: 58e3         	ldr	r3, [r4, r3]
  3742a0: 781b         	ldrb	r3, [r3]
  3742a2: 2b00         	cmp	r3, #0x0
  3742a4: d017         	beq	0x3742d6 <MultiplayerGameLayer::messageBoxHandlerGP2(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x18e> @ imm = #0x2e
  3742a6: 4b30         	ldr	r3, [pc, #0xc0]         @ 0x374368 <MultiplayerGameLayer::messageBoxHandlerGP2(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x220>
  3742a8: 58e3         	ldr	r3, [r4, r3]
  3742aa: 781b         	ldrb	r3, [r3]
  3742ac: 2b00         	cmp	r3, #0x0
  3742ae: d012         	beq	0x3742d6 <MultiplayerGameLayer::messageBoxHandlerGP2(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x18e> @ imm = #0x24
  3742b0: f227 f960    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x2272c0
  3742b4: 4604         	mov	r4, r0
  3742b6: 4b2d         	ldr	r3, [pc, #0xb4]         @ 0x37436c <MultiplayerGameLayer::messageBoxHandlerGP2(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x224>
  3742b8: 447b         	add	r3, pc
  3742ba: 681d         	ldr	r5, [r3]
  3742bc: f7dd f986    	bl	0x3515cc <LobbyLayer::scene()> @ imm = #-0x22cf4
  3742c0: 4603         	mov	r3, r0
  3742c2: 4628         	mov	r0, r5
  3742c4: 4619         	mov	r1, r3
  3742c6: f23d f8af    	bl	0x5b1428 <cocos2d::CCTransitionSlideInR::create(float, cocos2d::CCScene*)> @ imm = #0x23d15e
  3742ca: 4603         	mov	r3, r0
  3742cc: 4620         	mov	r0, r4
  3742ce: 4619         	mov	r1, r3
  3742d0: f228 f844    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x228088
  3742d4: e02f         	b	0x374336 <MultiplayerGameLayer::messageBoxHandlerGP2(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x1ee> @ imm = #0x5e
  3742d6: f227 f94d    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x22729a
  3742da: 4604         	mov	r4, r0
  3742dc: 4b24         	ldr	r3, [pc, #0x90]         @ 0x374370 <MultiplayerGameLayer::messageBoxHandlerGP2(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x228>
  3742de: 447b         	add	r3, pc
  3742e0: 681d         	ldr	r5, [r3]
  3742e2: f76e f9b3    	bl	0x2e264c <AdLayer::scene()> @ imm = #-0x91c9a
  3742e6: 4603         	mov	r3, r0
  3742e8: 4628         	mov	r0, r5
  3742ea: 4619         	mov	r1, r3
  3742ec: f23d f89c    	bl	0x5b1428 <cocos2d::CCTransitionSlideInR::create(float, cocos2d::CCScene*)> @ imm = #0x23d138
  3742f0: 4603         	mov	r3, r0
  3742f2: 4620         	mov	r0, r4
  3742f4: 4619         	mov	r1, r3
  3742f6: f228 f831    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x228062
  3742fa: e01c         	b	0x374336 <MultiplayerGameLayer::messageBoxHandlerGP2(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x1ee> @ imm = #0x38
  3742fc: ab09         	add	r3, sp, #0x24
  3742fe: 4618         	mov	r0, r3
  374300: f041 f308    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x441610
  374304: e7ff         	b	0x374306 <MultiplayerGameLayer::messageBoxHandlerGP2(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x1be> @ imm = #-0x2
  374306: ab06         	add	r3, sp, #0x18
  374308: 4618         	mov	r0, r3
  37430a: f016 f077    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4160ee
  37430e: ab0b         	add	r3, sp, #0x2c
  374310: 4618         	mov	r0, r3
  374312: f041 f2ff    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4415fe
  374316: e7ff         	b	0x374318 <MultiplayerGameLayer::messageBoxHandlerGP2(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x1d0> @ imm = #-0x2
  374318: ab08         	add	r3, sp, #0x20
  37431a: 4618         	mov	r0, r3
  37431c: f016 f06e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4160dc
  374320: ab0a         	add	r3, sp, #0x28
  374322: 4618         	mov	r0, r3
  374324: f041 f2f6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4415ec
  374328: e7ff         	b	0x37432a <MultiplayerGameLayer::messageBoxHandlerGP2(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x1e2> @ imm = #-0x2
  37432a: ab07         	add	r3, sp, #0x1c
  37432c: 4618         	mov	r0, r3
  37432e: f016 f065    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4160ca
  374332: f013 f6bb    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x413d76
  374336: b00d         	add	sp, #0x34
  374338: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x374339); words below are literal-pool data ---
  37433a: bf00         	nop
  37433c: e8b4 005b    	ldm.w	r4!, {r0, r1, r3, r4, r6}
  374340: d730         	bvc	0x3743a4 <MultiplayerGameLayer::onLogoutGP(cocos2d::CCObject*)+0x30> @ imm = #0x60
  374342: ffff 9fa4    	<unknown>
  374346: 0045         	lsls	r5, r0, #0x1
  374348: 9fa2         	ldr	r7, [sp, #0x288]
  37434a: 0045         	lsls	r5, r0, #0x1
  37434c: 9fc0         	ldr	r7, [sp, #0x300]
  37434e: 0045         	lsls	r5, r0, #0x1
  374350: d838         	bhi	0x3743c4 <MultiplayerGameLayer::onLogoutGP(cocos2d::CCObject*)+0x50> @ imm = #0x70
  374352: ffff daa0    	vtbl.8	d29, {d31, fpinst2, mvfr0}, d16
  374356: ffff d7a0    	<unknown>
  37435a: ffff f1c0    	<unknown>
  37435e: 005b         	lsls	r3, r3, #0x1
  374360: d76c         	bvc	0x37443c <std::vector<cocos2d::CCMenu*, std::allocator<cocos2d::CCMenu*>>::push_back(cocos2d::CCMenu* const&)> @ imm = #0xd8
  374362: ffff d768    	<unknown>
  374366: ffff dbc8    	vtbx.8	d29, {d31, fpinst2, mvfr0, mvfr1}, d8
  37436a: ffff f17c    	<unknown>
  37436e: 005b         	lsls	r3, r3, #0x1
  374370: f156 005b    	adcs	r0, r6, #0x5b

// ==== MultiplayerGameLayer::onLogoutGP
//      file offset 0x374374 (= ELF address; Ghidra 0x384374), 112 bytes, Thumb-2
  374374: b500         	push	{lr}
  374376: b083         	sub	sp, #0xc
  374378: 9001         	str	r0, [sp, #0x4]
  37437a: 9100         	str	r1, [sp]
  37437c: 4a17         	ldr	r2, [pc, #0x5c]         @ 0x3743dc <MultiplayerGameLayer::onLogoutGP(cocos2d::CCObject*)+0x68>
  37437e: 447a         	add	r2, pc
  374380: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x3743e0 <MultiplayerGameLayer::onLogoutGP(cocos2d::CCObject*)+0x6c>
  374382: 58d3         	ldr	r3, [r2, r3]
  374384: 681b         	ldr	r3, [r3]
  374386: 4618         	mov	r0, r3
  374388: 210d         	movs	r1, #0xd
  37438a: f083 fd19    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x83a32
  37438e: f003 fbd7    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x37ae
  374392: 4603         	mov	r3, r0
  374394: 4618         	mov	r0, r3
  374396: f004 f845    	bl	0x378424 <NetworkManager::useGooglePlay()> @ imm = #0x408a
  37439a: f003 fbd1    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x37a2
  37439e: 4603         	mov	r3, r0
  3743a0: 4618         	mov	r0, r3
  3743a2: f005 fdb3    	bl	0x379f0c <NetworkManager::unauthenticateLocalPlayer()> @ imm = #0x5b66
  3743a6: 9b01         	ldr	r3, [sp, #0x4]
  3743a8: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  3743ac: 681b         	ldr	r3, [r3]
  3743ae: 3390         	adds	r3, #0x90
  3743b0: 681b         	ldr	r3, [r3]
  3743b2: 9a01         	ldr	r2, [sp, #0x4]
  3743b4: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  3743b8: 4610         	mov	r0, r2
  3743ba: 2100         	movs	r1, #0x0
  3743bc: 4798         	blx	r3
  3743be: 9b01         	ldr	r3, [sp, #0x4]
  3743c0: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  3743c4: 681b         	ldr	r3, [r3]
  3743c6: 3390         	adds	r3, #0x90
  3743c8: 681b         	ldr	r3, [r3]
  3743ca: 9a01         	ldr	r2, [sp, #0x4]
  3743cc: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  3743d0: 4610         	mov	r0, r2
  3743d2: 2100         	movs	r1, #0x0
  3743d4: 4798         	blx	r3
  3743d6: b003         	add	sp, #0xc
  3743d8: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3743db); words below are literal-pool data ---
  3743dc: e68a         	b	0x3740f4 <MultiplayerGameLayer::authPlayer()+0x18> @ imm = #-0x2ec
  3743de: 005b         	lsls	r3, r3, #0x1
  3743e0: d730         	bvc	0x374444 <std::vector<cocos2d::CCMenu*, std::allocator<cocos2d::CCMenu*>>::push_back(cocos2d::CCMenu* const&)+0x8> @ imm = #0x60
  3743e2: ffff b500    	<unknown>
