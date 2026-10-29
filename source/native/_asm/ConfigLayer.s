// ConfigLayer: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 20 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../ConfigLayer.cpp

// ==== ConfigLayer::create
//      file offset 0x301ce4 (= ELF address; Ghidra 0x311ce4), 112 bytes, Thumb-2
  301ce4: b510         	push	{r4, lr}
  301ce6: b082         	sub	sp, #0x8
  301ce8: f44f 70ae    	mov.w	r0, #0x15c
  301cec: f085 f63a    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x485c74
  301cf0: 4603         	mov	r3, r0
  301cf2: 461c         	mov	r4, r3
  301cf4: 4620         	mov	r0, r4
  301cf6: f000 f82d    	bl	0x301d54 <ConfigLayer::ConfigLayer()> @ imm = #0x5a
  301cfa: 9401         	str	r4, [sp, #0x4]
  301cfc: 9b01         	ldr	r3, [sp, #0x4]
  301cfe: 2b00         	cmp	r3, #0x0
  301d00: d00a         	beq	0x301d18 <ConfigLayer::create()+0x34> @ imm = #0x14
  301d02: 9b01         	ldr	r3, [sp, #0x4]
  301d04: 681b         	ldr	r3, [r3]
  301d06: 3318         	adds	r3, #0x18
  301d08: 681b         	ldr	r3, [r3]
  301d0a: 9801         	ldr	r0, [sp, #0x4]
  301d0c: 4798         	blx	r3
  301d0e: 4603         	mov	r3, r0
  301d10: 2b00         	cmp	r3, #0x0
  301d12: d001         	beq	0x301d18 <ConfigLayer::create()+0x34> @ imm = #0x2
  301d14: 2301         	movs	r3, #0x1
  301d16: e000         	b	0x301d1a <ConfigLayer::create()+0x36> @ imm = #0x0
  301d18: 2300         	movs	r3, #0x0
  301d1a: 2b00         	cmp	r3, #0x0
  301d1c: d005         	beq	0x301d2a <ConfigLayer::create()+0x46> @ imm = #0xa
  301d1e: 9b01         	ldr	r3, [sp, #0x4]
  301d20: 4618         	mov	r0, r3
  301d22: f296 f8eb    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x2961d6
  301d26: 9b01         	ldr	r3, [sp, #0x4]
  301d28: e011         	b	0x301d4e <ConfigLayer::create()+0x6a> @ imm = #0x22
  301d2a: 9b01         	ldr	r3, [sp, #0x4]
  301d2c: 2b00         	cmp	r3, #0x0
  301d2e: d005         	beq	0x301d3c <ConfigLayer::create()+0x58> @ imm = #0xa
  301d30: 9b01         	ldr	r3, [sp, #0x4]
  301d32: 681b         	ldr	r3, [r3]
  301d34: 3308         	adds	r3, #0x8
  301d36: 681b         	ldr	r3, [r3]
  301d38: 9801         	ldr	r0, [sp, #0x4]
  301d3a: 4798         	blx	r3
  301d3c: 2300         	movs	r3, #0x0
  301d3e: 9301         	str	r3, [sp, #0x4]
  301d40: 2300         	movs	r3, #0x0
  301d42: e004         	b	0x301d4e <ConfigLayer::create()+0x6a> @ imm = #0x8
  301d44: 4620         	mov	r0, r4
  301d46: f086 f1ad    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48635a
  301d4a: f086 f1af    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48635e
  301d4e: 4618         	mov	r0, r3
  301d50: b002         	add	sp, #0x8
  301d52: bd10         	pop	{r4, pc}

// ==== ConfigLayer::ConfigLayer
//      file offset 0x301d54 (= ELF address; Ghidra 0x311d54), 88 bytes, Thumb-2
  301d54: b510         	push	{r4, lr}
  301d56: b082         	sub	sp, #0x8
  301d58: 9001         	str	r0, [sp, #0x4]
  301d5a: 4c12         	ldr	r4, [pc, #0x48]         @ 0x301da4 <ConfigLayer::ConfigLayer()+0x50>
  301d5c: 447c         	add	r4, pc
  301d5e: 9b01         	ldr	r3, [sp, #0x4]
  301d60: 4618         	mov	r0, r3
  301d62: f2ab f97b    	bl	0x5ad05c <cocos2d::CCLayer::CCLayer()> @ imm = #0x2ab2f6
  301d66: 9b01         	ldr	r3, [sp, #0x4]
  301d68: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x301da8 <ConfigLayer::ConfigLayer()+0x54>
  301d6a: 58a2         	ldr	r2, [r4, r2]
  301d6c: 3208         	adds	r2, #0x8
  301d6e: 601a         	str	r2, [r3]
  301d70: 9b01         	ldr	r3, [sp, #0x4]
  301d72: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x301da8 <ConfigLayer::ConfigLayer()+0x54>
  301d74: 58a2         	ldr	r2, [r4, r2]
  301d76: f502 7204    	add.w	r2, r2, #0x210
  301d7a: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  301d7e: 9b01         	ldr	r3, [sp, #0x4]
  301d80: 4a09         	ldr	r2, [pc, #0x24]         @ 0x301da8 <ConfigLayer::ConfigLayer()+0x54>
  301d82: 58a2         	ldr	r2, [r4, r2]
  301d84: f502 7210    	add.w	r2, r2, #0x240
  301d88: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  301d8c: 9b01         	ldr	r3, [sp, #0x4]
  301d8e: 4a06         	ldr	r2, [pc, #0x18]         @ 0x301da8 <ConfigLayer::ConfigLayer()+0x54>
  301d90: 58a2         	ldr	r2, [r4, r2]
  301d92: f502 7213    	add.w	r2, r2, #0x24c
  301d96: f8c3 20ec    	str.w	r2, [r3, #0xec]
  301d9a: 9b01         	ldr	r3, [sp, #0x4]
  301d9c: 4618         	mov	r0, r3
  301d9e: b002         	add	sp, #0x8
  301da0: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x301da1); words below are literal-pool data ---
  301da2: bf00         	nop
  301da4: 0cac         	lsrs	r4, r5, #0x12
  301da6: 0063         	lsls	r3, r4, #0x1
  301da8: d928         	bls	0x301dfc <ConfigLayer::init()+0x1c> @ imm = #0x50
  301daa: ffff b500    	<unknown>

// ==== ConfigLayer::scene
//      file offset 0x301dac (= ELF address; Ghidra 0x311dac), 46 bytes, Thumb-2
  301dac: b500         	push	{lr}
  301dae: b083         	sub	sp, #0xc
  301db0: f2ad fe56    	bl	0x5afa60 <cocos2d::CCScene::create()> @ imm = #0x2adcac
  301db4: 4603         	mov	r3, r0
  301db6: 9300         	str	r3, [sp]
  301db8: f7ff ff94    	bl	0x301ce4 <ConfigLayer::create()> @ imm = #-0xd8
  301dbc: 4603         	mov	r3, r0
  301dbe: 9301         	str	r3, [sp, #0x4]
  301dc0: 9b00         	ldr	r3, [sp]
  301dc2: 681b         	ldr	r3, [r3]
  301dc4: 33c8         	adds	r3, #0xc8
  301dc6: 681b         	ldr	r3, [r3]
  301dc8: 9a00         	ldr	r2, [sp]
  301dca: 4610         	mov	r0, r2
  301dcc: 9901         	ldr	r1, [sp, #0x4]
  301dce: 4798         	blx	r3
  301dd0: 9b00         	ldr	r3, [sp]
  301dd2: 4618         	mov	r0, r3
  301dd4: b003         	add	sp, #0xc
  301dd6: f85d fb04    	ldr	pc, [sp], #4

// ==== ConfigLayer::init
//      file offset 0x301de0 (= ELF address; Ghidra 0x311de0), 6068 bytes, Thumb-2
  301de0: b5f0         	push	{r4, r5, r6, r7, lr}
  301de2: ed2d 8b02    	vpush	{d8}
  301de6: b0c9         	sub	sp, #0x124
  301de8: ab03         	add	r3, sp, #0xc
  301dea: 6018         	str	r0, [r3]
  301dec: 4c0b         	ldr	r4, [pc, #0x2c]         @ 0x301e1c <ConfigLayer::init()+0x3c>
  301dee: 447c         	add	r4, pc
  301df0: ab03         	add	r3, sp, #0xc
  301df2: 681b         	ldr	r3, [r3]
  301df4: 4618         	mov	r0, r3
  301df6: f2ab f9ff    	bl	0x5ad1f8 <cocos2d::CCLayer::init()> @ imm = #0x2ab3fe
  301dfa: 4603         	mov	r3, r0
  301dfc: 461a         	mov	r2, r3
  301dfe: f10d 0317    	add.w	r3, sp, #0x17
  301e02: 701a         	strb	r2, [r3]
  301e04: f10d 0317    	add.w	r3, sp, #0x17
  301e08: 781b         	ldrb	r3, [r3]
  301e0a: f083 0301    	eor	r3, r3, #0x1
  301e0e: b2db         	uxtb	r3, r3
  301e10: 2b00         	cmp	r3, #0x0
  301e12: d005         	beq	0x301e20 <ConfigLayer::init()+0x40> @ imm = #0xa
  301e14: 2300         	movs	r3, #0x0
  301e16: f001 bbb3    	b.w	0x303580 <ConfigLayer::init()+0x17a0> @ imm = #0x1766
  301e1a: bf00         	nop
  301e1c: 0c1a         	lsrs	r2, r3, #0x10
  301e1e: 0063         	lsls	r3, r4, #0x1
  301e20: ab03         	add	r3, sp, #0xc
  301e22: 681b         	ldr	r3, [r3]
  301e24: f04f 0200    	mov.w	r2, #0x0
  301e28: f8c3 2108    	str.w	r2, [r3, #0x108]
  301e2c: ab03         	add	r3, sp, #0xc
  301e2e: 681b         	ldr	r3, [r3]
  301e30: 2200         	movs	r2, #0x0
  301e32: f883 210c    	strb.w	r2, [r3, #0x10c]
  301e36: ab26         	add	r3, sp, #0x98
  301e38: 4618         	mov	r0, r3
  301e3a: f8df 34e0    	ldr.w	r3, [pc, #0x4e0]        @ 0x30231c <ConfigLayer::init()+0x53c>
  301e3e: 58e3         	ldr	r3, [r4, r3]
  301e40: 4619         	mov	r1, r3
  301e42: f291 f935    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x29126a
  301e46: ed9d 7a26    	vldr	s14, [sp, #152]
  301e4a: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  301e4e: eec7 6a27    	vdiv.f32	s13, s14, s15
  301e52: ed9d 7a27    	vldr	s14, [sp, #156]
  301e56: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  301e5a: eec7 7a27    	vdiv.f32	s15, s14, s15
  301e5e: ab28         	add	r3, sp, #0xa0
  301e60: 4618         	mov	r0, r3
  301e62: ee16 1a90    	vmov	r1, s13
  301e66: ee17 2a90    	vmov	r2, s15
  301e6a: f290 ff41    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x290e82
  301e6e: ed9d 7a26    	vldr	s14, [sp, #152]
  301e72: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  301e76: eec7 6a27    	vdiv.f32	s13, s14, s15
  301e7a: ed9d 7a27    	vldr	s14, [sp, #156]
  301e7e: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  301e82: ee87 7a27    	vdiv.f32	s14, s14, s15
  301e86: eef3 7a09    	vmov.f32	s15, #2.500000e+01
  301e8a: ee77 7a67    	vsub.f32	s15, s14, s15
  301e8e: ab2a         	add	r3, sp, #0xa8
  301e90: 4618         	mov	r0, r3
  301e92: ee16 1a90    	vmov	r1, s13
  301e96: ee17 2a90    	vmov	r2, s15
  301e9a: f290 ff29    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x290e52
  301e9e: f8df 3480    	ldr.w	r3, [pc, #0x480]        @ 0x302320 <ConfigLayer::init()+0x540>
  301ea2: 447b         	add	r3, pc
  301ea4: 4618         	mov	r0, r3
  301ea6: f2d6 f96d    	bl	0x5d8184 <cocos2d::CCSprite::create(char const*)> @ imm = #0x2d62da
  301eaa: 4602         	mov	r2, r0
  301eac: ab03         	add	r3, sp, #0xc
  301eae: 681b         	ldr	r3, [r3]
  301eb0: f8c3 2110    	str.w	r2, [r3, #0x110]
  301eb4: ab03         	add	r3, sp, #0xc
  301eb6: 681b         	ldr	r3, [r3]
  301eb8: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  301ebc: 681b         	ldr	r3, [r3]
  301ebe: 334c         	adds	r3, #0x4c
  301ec0: 681b         	ldr	r3, [r3]
  301ec2: aa03         	add	r2, sp, #0xc
  301ec4: 6812         	ldr	r2, [r2]
  301ec6: f8d2 1110    	ldr.w	r1, [r2, #0x110]
  301eca: aa28         	add	r2, sp, #0xa0
  301ecc: 4608         	mov	r0, r1
  301ece: 4611         	mov	r1, r2
  301ed0: 4798         	blx	r3
  301ed2: ab03         	add	r3, sp, #0xc
  301ed4: 681b         	ldr	r3, [r3]
  301ed6: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  301eda: 681b         	ldr	r3, [r3]
  301edc: f503 73d2    	add.w	r3, r3, #0x1a4
  301ee0: 681b         	ldr	r3, [r3]
  301ee2: aa03         	add	r2, sp, #0xc
  301ee4: 6812         	ldr	r2, [r2]
  301ee6: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  301eea: 4610         	mov	r0, r2
  301eec: 2123         	movs	r1, #0x23
  301eee: 4798         	blx	r3
  301ef0: ab03         	add	r3, sp, #0xc
  301ef2: 681b         	ldr	r3, [r3]
  301ef4: 681b         	ldr	r3, [r3]
  301ef6: 33c8         	adds	r3, #0xc8
  301ef8: 681b         	ldr	r3, [r3]
  301efa: aa03         	add	r2, sp, #0xc
  301efc: 6811         	ldr	r1, [r2]
  301efe: aa03         	add	r2, sp, #0xc
  301f00: 6812         	ldr	r2, [r2]
  301f02: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  301f06: 4608         	mov	r0, r1
  301f08: 4611         	mov	r1, r2
  301f0a: 4798         	blx	r3
  301f0c: ab07         	add	r3, sp, #0x1c
  301f0e: f64c 42cd    	movw	r2, #0xcccd
  301f12: f6c3 720c    	movt	r2, #0x3f0c
  301f16: 601a         	str	r2, [r3]
  301f18: ab08         	add	r3, sp, #0x20
  301f1a: f04f 0200    	mov.w	r2, #0x0
  301f1e: f2c4 12c0    	movt	r2, #0x41c0
  301f22: 601a         	str	r2, [r3]
  301f24: f04f 4341    	mov.w	r3, #0xc1000000
  301f28: 9309         	str	r3, [sp, #0x24]
  301f2a: f04f 0300    	mov.w	r3, #0x0
  301f2e: f2c4 2340    	movt	r3, #0x4240
  301f32: 930a         	str	r3, [sp, #0x28]
  301f34: 4bfb         	ldr	r3, [pc, #0x3ec]        @ 0x302324 <ConfigLayer::init()+0x544>
  301f36: 447b         	add	r3, pc
  301f38: 4618         	mov	r0, r3
  301f3a: f2d6 f9e3    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2d63c6
  301f3e: 4603         	mov	r3, r0
  301f40: 930b         	str	r3, [sp, #0x2c]
  301f42: 4bf9         	ldr	r3, [pc, #0x3e4]        @ 0x302328 <ConfigLayer::init()+0x548>
  301f44: 447b         	add	r3, pc
  301f46: 4618         	mov	r0, r3
  301f48: f2d6 f9dc    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2d63b8
  301f4c: 4603         	mov	r3, r0
  301f4e: 930c         	str	r3, [sp, #0x30]
  301f50: 4bf6         	ldr	r3, [pc, #0x3d8]        @ 0x30232c <ConfigLayer::init()+0x54c>
  301f52: 447b         	add	r3, pc
  301f54: 4618         	mov	r0, r3
  301f56: f2d6 f9d5    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2d63aa
  301f5a: 4603         	mov	r3, r0
  301f5c: 930d         	str	r3, [sp, #0x34]
  301f5e: 4bf4         	ldr	r3, [pc, #0x3d0]        @ 0x302330 <ConfigLayer::init()+0x550>
  301f60: 447b         	add	r3, pc
  301f62: 4618         	mov	r0, r3
  301f64: f2d6 f9ce    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2d639c
  301f68: 4603         	mov	r3, r0
  301f6a: 930e         	str	r3, [sp, #0x38]
  301f6c: 4bf1         	ldr	r3, [pc, #0x3c4]        @ 0x302334 <ConfigLayer::init()+0x554>
  301f6e: 447b         	add	r3, pc
  301f70: 4618         	mov	r0, r3
  301f72: f2d6 f9c7    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2d638e
  301f76: 4603         	mov	r3, r0
  301f78: 930f         	str	r3, [sp, #0x3c]
  301f7a: 4bef         	ldr	r3, [pc, #0x3bc]        @ 0x302338 <ConfigLayer::init()+0x558>
  301f7c: 447b         	add	r3, pc
  301f7e: 4618         	mov	r0, r3
  301f80: f2d6 f9c0    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2d6380
  301f84: 4603         	mov	r3, r0
  301f86: 9310         	str	r3, [sp, #0x40]
  301f88: 4bec         	ldr	r3, [pc, #0x3b0]        @ 0x30233c <ConfigLayer::init()+0x55c>
  301f8a: 447b         	add	r3, pc
  301f8c: 4618         	mov	r0, r3
  301f8e: f2d6 f9b9    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2d6372
  301f92: 4603         	mov	r3, r0
  301f94: 9311         	str	r3, [sp, #0x44]
  301f96: 4bea         	ldr	r3, [pc, #0x3a8]        @ 0x302340 <ConfigLayer::init()+0x560>
  301f98: 447b         	add	r3, pc
  301f9a: 4618         	mov	r0, r3
  301f9c: f2d6 f9b2    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2d6364
  301fa0: 4603         	mov	r3, r0
  301fa2: 9312         	str	r3, [sp, #0x48]
  301fa4: 4be7         	ldr	r3, [pc, #0x39c]        @ 0x302344 <ConfigLayer::init()+0x564>
  301fa6: 447b         	add	r3, pc
  301fa8: 4618         	mov	r0, r3
  301faa: f2d6 f9ab    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2d6356
  301fae: 4603         	mov	r3, r0
  301fb0: 9313         	str	r3, [sp, #0x4c]
  301fb2: 4be5         	ldr	r3, [pc, #0x394]        @ 0x302348 <ConfigLayer::init()+0x568>
  301fb4: 447b         	add	r3, pc
  301fb6: 4618         	mov	r0, r3
  301fb8: f2d6 f9a4    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2d6348
  301fbc: 4603         	mov	r3, r0
  301fbe: 9314         	str	r3, [sp, #0x50]
  301fc0: 4be2         	ldr	r3, [pc, #0x388]        @ 0x30234c <ConfigLayer::init()+0x56c>
  301fc2: 447b         	add	r3, pc
  301fc4: 4618         	mov	r0, r3
  301fc6: f2d6 f99d    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2d633a
  301fca: 4603         	mov	r3, r0
  301fcc: 9315         	str	r3, [sp, #0x54]
  301fce: 4be0         	ldr	r3, [pc, #0x380]        @ 0x302350 <ConfigLayer::init()+0x570>
  301fd0: 447b         	add	r3, pc
  301fd2: 4618         	mov	r0, r3
  301fd4: f2d6 f996    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2d632c
  301fd8: 4603         	mov	r3, r0
  301fda: 9316         	str	r3, [sp, #0x58]
  301fdc: 4bdd         	ldr	r3, [pc, #0x374]        @ 0x302354 <ConfigLayer::init()+0x574>
  301fde: 447b         	add	r3, pc
  301fe0: 4618         	mov	r0, r3
  301fe2: f2d6 f98f    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2d631e
  301fe6: 4603         	mov	r3, r0
  301fe8: 9317         	str	r3, [sp, #0x5c]
  301fea: 4bdb         	ldr	r3, [pc, #0x36c]        @ 0x302358 <ConfigLayer::init()+0x578>
  301fec: 447b         	add	r3, pc
  301fee: 4618         	mov	r0, r3
  301ff0: f2d6 f988    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2d6310
  301ff4: 4603         	mov	r3, r0
  301ff6: 9318         	str	r3, [sp, #0x60]
  301ff8: 4bd8         	ldr	r3, [pc, #0x360]        @ 0x30235c <ConfigLayer::init()+0x57c>
  301ffa: 447b         	add	r3, pc
  301ffc: 4618         	mov	r0, r3
  301ffe: f2d6 f981    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2d6302
  302002: 4603         	mov	r3, r0
  302004: 9319         	str	r3, [sp, #0x64]
  302006: 4bd6         	ldr	r3, [pc, #0x358]        @ 0x302360 <ConfigLayer::init()+0x580>
  302008: 447b         	add	r3, pc
  30200a: 4618         	mov	r0, r3
  30200c: f2d6 f97a    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2d62f4
  302010: 4603         	mov	r3, r0
  302012: 931a         	str	r3, [sp, #0x68]
  302014: 4bd3         	ldr	r3, [pc, #0x34c]        @ 0x302364 <ConfigLayer::init()+0x584>
  302016: 447b         	add	r3, pc
  302018: 4618         	mov	r0, r3
  30201a: f2d6 f973    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2d62e6
  30201e: 4603         	mov	r3, r0
  302020: 931b         	str	r3, [sp, #0x6c]
  302022: 4bd1         	ldr	r3, [pc, #0x344]        @ 0x302368 <ConfigLayer::init()+0x588>
  302024: 447b         	add	r3, pc
  302026: 4618         	mov	r0, r3
  302028: f2d6 f96c    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2d62d8
  30202c: 4603         	mov	r3, r0
  30202e: 931c         	str	r3, [sp, #0x70]
  302030: ab03         	add	r3, sp, #0xc
  302032: 681a         	ldr	r2, [r3]
  302034: 4bcd         	ldr	r3, [pc, #0x334]        @ 0x30236c <ConfigLayer::init()+0x58c>
  302036: 58e3         	ldr	r3, [r4, r3]
  302038: 9332         	str	r3, [sp, #0xc8]
  30203a: 2300         	movs	r3, #0x0
  30203c: 9333         	str	r3, [sp, #0xcc]
  30203e: 9b33         	ldr	r3, [sp, #0xcc]
  302040: 9300         	str	r3, [sp]
  302042: 9b32         	ldr	r3, [sp, #0xc8]
  302044: 980d         	ldr	r0, [sp, #0x34]
  302046: 990e         	ldr	r1, [sp, #0x38]
  302048: f2b6 f970    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2b62e0
  30204c: 4603         	mov	r3, r0
  30204e: 931d         	str	r3, [sp, #0x74]
  302050: 981d         	ldr	r0, [sp, #0x74]
  302052: 2100         	movs	r1, #0x0
  302054: f2b3 f872    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2b30e4
  302058: 4602         	mov	r2, r0
  30205a: ab03         	add	r3, sp, #0xc
  30205c: 681b         	ldr	r3, [r3]
  30205e: f8c3 2148    	str.w	r2, [r3, #0x148]
  302062: ab03         	add	r3, sp, #0xc
  302064: 681b         	ldr	r3, [r3]
  302066: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  30206a: 4618         	mov	r0, r3
  30206c: f295 ff3c    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x295e78
  302070: ab03         	add	r3, sp, #0xc
  302072: 681b         	ldr	r3, [r3]
  302074: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  302078: 681b         	ldr	r3, [r3]
  30207a: 334c         	adds	r3, #0x4c
  30207c: 681d         	ldr	r5, [r3]
  30207e: ab03         	add	r3, sp, #0xc
  302080: 681b         	ldr	r3, [r3]
  302082: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  302086: 461e         	mov	r6, r3
  302088: ed9d 7a26    	vldr	s14, [sp, #152]
  30208c: eddf 7aa1    	vldr	s15, [pc, #644]         @ 0x302314 <ConfigLayer::init()+0x534>
  302090: ee77 7a67    	vsub.f32	s15, s14, s15
  302094: ab44         	add	r3, sp, #0x110
  302096: 4618         	mov	r0, r3
  302098: ee17 1a90    	vmov	r1, s15
  30209c: f04f 0200    	mov.w	r2, #0x0
  3020a0: f2c4 22a8    	movt	r2, #0x42a8
  3020a4: f290 fe24    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x290c48
  3020a8: ab44         	add	r3, sp, #0x110
  3020aa: 4630         	mov	r0, r6
  3020ac: 4619         	mov	r1, r3
  3020ae: 47a8         	blx	r5
  3020b0: ab03         	add	r3, sp, #0xc
  3020b2: 681a         	ldr	r2, [r3]
  3020b4: 4bae         	ldr	r3, [pc, #0x2b8]        @ 0x302370 <ConfigLayer::init()+0x590>
  3020b6: 58e3         	ldr	r3, [r4, r3]
  3020b8: 9334         	str	r3, [sp, #0xd0]
  3020ba: 2300         	movs	r3, #0x0
  3020bc: 9335         	str	r3, [sp, #0xd4]
  3020be: 9b35         	ldr	r3, [sp, #0xd4]
  3020c0: 9300         	str	r3, [sp]
  3020c2: 9b34         	ldr	r3, [sp, #0xd0]
  3020c4: 980b         	ldr	r0, [sp, #0x2c]
  3020c6: 990c         	ldr	r1, [sp, #0x30]
  3020c8: f2b6 f930    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2b6260
  3020cc: 4603         	mov	r3, r0
  3020ce: 931e         	str	r3, [sp, #0x78]
  3020d0: 981e         	ldr	r0, [sp, #0x78]
  3020d2: 2100         	movs	r1, #0x0
  3020d4: f2b3 f832    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2b3064
  3020d8: 4602         	mov	r2, r0
  3020da: ab03         	add	r3, sp, #0xc
  3020dc: 681b         	ldr	r3, [r3]
  3020de: f8c3 2140    	str.w	r2, [r3, #0x140]
  3020e2: ab03         	add	r3, sp, #0xc
  3020e4: 681b         	ldr	r3, [r3]
  3020e6: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  3020ea: 4618         	mov	r0, r3
  3020ec: f295 fefc    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x295df8
  3020f0: ab03         	add	r3, sp, #0xc
  3020f2: 681b         	ldr	r3, [r3]
  3020f4: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  3020f8: 681b         	ldr	r3, [r3]
  3020fa: 334c         	adds	r3, #0x4c
  3020fc: 681d         	ldr	r5, [r3]
  3020fe: ab03         	add	r3, sp, #0xc
  302100: 681b         	ldr	r3, [r3]
  302102: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  302106: 461e         	mov	r6, r3
  302108: ed9d 7a26    	vldr	s14, [sp, #152]
  30210c: eddf 7a81    	vldr	s15, [pc, #516]         @ 0x302314 <ConfigLayer::init()+0x534>
  302110: ee77 7a67    	vsub.f32	s15, s14, s15
  302114: ab44         	add	r3, sp, #0x110
  302116: 4618         	mov	r0, r3
  302118: ee17 1a90    	vmov	r1, s15
  30211c: f04f 4284    	mov.w	r2, #0x42000000
  302120: f290 fde6    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x290bcc
  302124: ab44         	add	r3, sp, #0x110
  302126: 4630         	mov	r0, r6
  302128: 4619         	mov	r1, r3
  30212a: 47a8         	blx	r5
  30212c: ab03         	add	r3, sp, #0xc
  30212e: 681b         	ldr	r3, [r3]
  302130: 681b         	ldr	r3, [r3]
  302132: 33c8         	adds	r3, #0xc8
  302134: 681b         	ldr	r3, [r3]
  302136: aa03         	add	r2, sp, #0xc
  302138: 6811         	ldr	r1, [r2]
  30213a: aa03         	add	r2, sp, #0xc
  30213c: 6812         	ldr	r2, [r2]
  30213e: f8d2 2140    	ldr.w	r2, [r2, #0x140]
  302142: 4608         	mov	r0, r1
  302144: 4611         	mov	r1, r2
  302146: 4798         	blx	r3
  302148: ab03         	add	r3, sp, #0xc
  30214a: 681a         	ldr	r2, [r3]
  30214c: 4b89         	ldr	r3, [pc, #0x224]        @ 0x302374 <ConfigLayer::init()+0x594>
  30214e: 58e3         	ldr	r3, [r4, r3]
  302150: 9336         	str	r3, [sp, #0xd8]
  302152: 2300         	movs	r3, #0x0
  302154: 9337         	str	r3, [sp, #0xdc]
  302156: 9b37         	ldr	r3, [sp, #0xdc]
  302158: 9300         	str	r3, [sp]
  30215a: 9b36         	ldr	r3, [sp, #0xd8]
  30215c: 9817         	ldr	r0, [sp, #0x5c]
  30215e: 9918         	ldr	r1, [sp, #0x60]
  302160: f2b6 f8e4    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2b61c8
  302164: 4603         	mov	r3, r0
  302166: 931f         	str	r3, [sp, #0x7c]
  302168: 981f         	ldr	r0, [sp, #0x7c]
  30216a: 2100         	movs	r1, #0x0
  30216c: f2b2 ffe6    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2b2fcc
  302170: 4602         	mov	r2, r0
  302172: ab03         	add	r3, sp, #0xc
  302174: 681b         	ldr	r3, [r3]
  302176: f8c3 2130    	str.w	r2, [r3, #0x130]
  30217a: ab03         	add	r3, sp, #0xc
  30217c: 681b         	ldr	r3, [r3]
  30217e: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  302182: 4618         	mov	r0, r3
  302184: f295 feb0    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x295d60
  302188: ab03         	add	r3, sp, #0xc
  30218a: 681b         	ldr	r3, [r3]
  30218c: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  302190: 681b         	ldr	r3, [r3]
  302192: 334c         	adds	r3, #0x4c
  302194: 681d         	ldr	r5, [r3]
  302196: ab03         	add	r3, sp, #0xc
  302198: 681b         	ldr	r3, [r3]
  30219a: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  30219e: 461e         	mov	r6, r3
  3021a0: 9b2a         	ldr	r3, [sp, #0xa8]
  3021a2: ed9d 7a2b    	vldr	s14, [sp, #172]
  3021a6: eddd 7a0a    	vldr	s15, [sp, #40]
  3021aa: ee77 7aa7    	vadd.f32	s15, s15, s15
  3021ae: ee77 7a27    	vadd.f32	s15, s14, s15
  3021b2: aa44         	add	r2, sp, #0x110
  3021b4: 4610         	mov	r0, r2
  3021b6: 4619         	mov	r1, r3
  3021b8: ee17 2a90    	vmov	r2, s15
  3021bc: f290 fd98    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x290b30
  3021c0: ab44         	add	r3, sp, #0x110
  3021c2: 4630         	mov	r0, r6
  3021c4: 4619         	mov	r1, r3
  3021c6: 47a8         	blx	r5
  3021c8: ab03         	add	r3, sp, #0xc
  3021ca: 681b         	ldr	r3, [r3]
  3021cc: 681b         	ldr	r3, [r3]
  3021ce: 33c8         	adds	r3, #0xc8
  3021d0: 681b         	ldr	r3, [r3]
  3021d2: aa03         	add	r2, sp, #0xc
  3021d4: 6811         	ldr	r1, [r2]
  3021d6: aa03         	add	r2, sp, #0xc
  3021d8: 6812         	ldr	r2, [r2]
  3021da: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  3021de: 4608         	mov	r0, r1
  3021e0: 4611         	mov	r1, r2
  3021e2: 4798         	blx	r3
  3021e4: ab03         	add	r3, sp, #0xc
  3021e6: 681a         	ldr	r2, [r3]
  3021e8: 4b63         	ldr	r3, [pc, #0x18c]        @ 0x302378 <ConfigLayer::init()+0x598>
  3021ea: 58e3         	ldr	r3, [r4, r3]
  3021ec: 9338         	str	r3, [sp, #0xe0]
  3021ee: 2300         	movs	r3, #0x0
  3021f0: 9339         	str	r3, [sp, #0xe4]
  3021f2: 9b39         	ldr	r3, [sp, #0xe4]
  3021f4: 9300         	str	r3, [sp]
  3021f6: 9b38         	ldr	r3, [sp, #0xe0]
  3021f8: 980f         	ldr	r0, [sp, #0x3c]
  3021fa: 9910         	ldr	r1, [sp, #0x40]
  3021fc: f2b6 f896    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2b612c
  302200: 4603         	mov	r3, r0
  302202: 9320         	str	r3, [sp, #0x80]
  302204: 9820         	ldr	r0, [sp, #0x80]
  302206: 2100         	movs	r1, #0x0
  302208: f2b2 ff98    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2b2f30
  30220c: 4602         	mov	r2, r0
  30220e: ab03         	add	r3, sp, #0xc
  302210: 681b         	ldr	r3, [r3]
  302212: f8c3 2128    	str.w	r2, [r3, #0x128]
  302216: ab03         	add	r3, sp, #0xc
  302218: 681b         	ldr	r3, [r3]
  30221a: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  30221e: 4618         	mov	r0, r3
  302220: f295 fe62    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x295cc4
  302224: ab03         	add	r3, sp, #0xc
  302226: 681b         	ldr	r3, [r3]
  302228: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  30222c: 681b         	ldr	r3, [r3]
  30222e: 334c         	adds	r3, #0x4c
  302230: 681d         	ldr	r5, [r3]
  302232: ab03         	add	r3, sp, #0xc
  302234: 681b         	ldr	r3, [r3]
  302236: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  30223a: 461e         	mov	r6, r3
  30223c: 9b2a         	ldr	r3, [sp, #0xa8]
  30223e: ed9d 7a2b    	vldr	s14, [sp, #172]
  302242: eddd 7a0a    	vldr	s15, [sp, #40]
  302246: ee77 7a27    	vadd.f32	s15, s14, s15
  30224a: aa44         	add	r2, sp, #0x110
  30224c: 4610         	mov	r0, r2
  30224e: 4619         	mov	r1, r3
  302250: ee17 2a90    	vmov	r2, s15
  302254: f290 fd4c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x290a98
  302258: ab44         	add	r3, sp, #0x110
  30225a: 4630         	mov	r0, r6
  30225c: 4619         	mov	r1, r3
  30225e: 47a8         	blx	r5
  302260: ab03         	add	r3, sp, #0xc
  302262: 681b         	ldr	r3, [r3]
  302264: 681b         	ldr	r3, [r3]
  302266: 33c8         	adds	r3, #0xc8
  302268: 681b         	ldr	r3, [r3]
  30226a: aa03         	add	r2, sp, #0xc
  30226c: 6811         	ldr	r1, [r2]
  30226e: aa03         	add	r2, sp, #0xc
  302270: 6812         	ldr	r2, [r2]
  302272: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  302276: 4608         	mov	r0, r1
  302278: 4611         	mov	r1, r2
  30227a: 4798         	blx	r3
  30227c: ab03         	add	r3, sp, #0xc
  30227e: 681a         	ldr	r2, [r3]
  302280: 4b3e         	ldr	r3, [pc, #0xf8]         @ 0x30237c <ConfigLayer::init()+0x59c>
  302282: 58e3         	ldr	r3, [r4, r3]
  302284: 933a         	str	r3, [sp, #0xe8]
  302286: 2300         	movs	r3, #0x0
  302288: 933b         	str	r3, [sp, #0xec]
  30228a: 9b3b         	ldr	r3, [sp, #0xec]
  30228c: 9300         	str	r3, [sp]
  30228e: 9b3a         	ldr	r3, [sp, #0xe8]
  302290: 9811         	ldr	r0, [sp, #0x44]
  302292: 9912         	ldr	r1, [sp, #0x48]
  302294: f2b6 f84a    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2b6094
  302298: 4603         	mov	r3, r0
  30229a: 9321         	str	r3, [sp, #0x84]
  30229c: 9821         	ldr	r0, [sp, #0x84]
  30229e: 2100         	movs	r1, #0x0
  3022a0: f2b2 ff4c    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2b2e98
  3022a4: 4602         	mov	r2, r0
  3022a6: ab03         	add	r3, sp, #0xc
  3022a8: 681b         	ldr	r3, [r3]
  3022aa: f8c3 2120    	str.w	r2, [r3, #0x120]
  3022ae: ab03         	add	r3, sp, #0xc
  3022b0: 681b         	ldr	r3, [r3]
  3022b2: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3022b6: 4618         	mov	r0, r3
  3022b8: f295 fe16    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x295c2c
  3022bc: ab03         	add	r3, sp, #0xc
  3022be: 681b         	ldr	r3, [r3]
  3022c0: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3022c4: 681b         	ldr	r3, [r3]
  3022c6: 334c         	adds	r3, #0x4c
  3022c8: 681d         	ldr	r5, [r3]
  3022ca: ab03         	add	r3, sp, #0xc
  3022cc: 681b         	ldr	r3, [r3]
  3022ce: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3022d2: 461e         	mov	r6, r3
  3022d4: 9b2a         	ldr	r3, [sp, #0xa8]
  3022d6: ed9d 7a2b    	vldr	s14, [sp, #172]
  3022da: eddd 6a0a    	vldr	s13, [sp, #40]
  3022de: eddf 7a0e    	vldr	s15, [pc, #56]          @ 0x302318 <ConfigLayer::init()+0x538>
  3022e2: ee66 7aa7    	vmul.f32	s15, s13, s15
  3022e6: ee77 7a27    	vadd.f32	s15, s14, s15
  3022ea: aa44         	add	r2, sp, #0x110
  3022ec: 4610         	mov	r0, r2
  3022ee: 4619         	mov	r1, r3
  3022f0: ee17 2a90    	vmov	r2, s15
  3022f4: f290 fcfc    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2909f8
  3022f8: ab44         	add	r3, sp, #0x110
  3022fa: 4630         	mov	r0, r6
  3022fc: 4619         	mov	r1, r3
  3022fe: 47a8         	blx	r5
  302300: ab03         	add	r3, sp, #0xc
  302302: 681b         	ldr	r3, [r3]
  302304: 681b         	ldr	r3, [r3]
  302306: 33c8         	adds	r3, #0xc8
  302308: 681b         	ldr	r3, [r3]
  30230a: aa03         	add	r2, sp, #0xc
  30230c: 6811         	ldr	r1, [r2]
  30230e: aa03         	add	r2, sp, #0xc
  302310: e036         	b	0x302380 <ConfigLayer::init()+0x5a0> @ imm = #0x6c
  302312: bf00         	nop
  302314: 0000         	movs	r0, r0
  302316: 4260         	rsbs	r0, r4, #0
  302318: 0000         	movs	r0, r0
  30231a: 0000         	movs	r0, r0
  30231c: d724         	bvc	0x302368 <ConfigLayer::init()+0x588> @ imm = #0x48
  30231e: ffff 3342    	<unknown>
  302322: 004c         	lsls	r4, r1, #0x1
  302324: 32c2         	adds	r2, #0xc2
  302326: 004c         	lsls	r4, r1, #0x1
  302328: 32b4         	adds	r2, #0xb4
  30232a: 004c         	lsls	r4, r1, #0x1
  30232c: 32a6         	adds	r2, #0xa6
  30232e: 004c         	lsls	r4, r1, #0x1
  302330: 3298         	adds	r2, #0x98
  302332: 004c         	lsls	r4, r1, #0x1
  302334: 3296         	adds	r2, #0x96
  302336: 004c         	lsls	r4, r1, #0x1
  302338: 3288         	adds	r2, #0x88
  30233a: 004c         	lsls	r4, r1, #0x1
  30233c: 327a         	adds	r2, #0x7a
  30233e: 004c         	lsls	r4, r1, #0x1
  302340: 326c         	adds	r2, #0x6c
  302342: 004c         	lsls	r4, r1, #0x1
  302344: 325e         	adds	r2, #0x5e
  302346: 004c         	lsls	r4, r1, #0x1
  302348: 3250         	adds	r2, #0x50
  30234a: 004c         	lsls	r4, r1, #0x1
  30234c: 3242         	adds	r2, #0x42
  30234e: 004c         	lsls	r4, r1, #0x1
  302350: 3234         	adds	r2, #0x34
  302352: 004c         	lsls	r4, r1, #0x1
  302354: 3226         	adds	r2, #0x26
  302356: 004c         	lsls	r4, r1, #0x1
  302358: 3218         	adds	r2, #0x18
  30235a: 004c         	lsls	r4, r1, #0x1
  30235c: 31fe         	adds	r1, #0xfe
  30235e: 004c         	lsls	r4, r1, #0x1
  302360: 31f0         	adds	r1, #0xf0
  302362: 004c         	lsls	r4, r1, #0x1
  302364: 31fa         	adds	r1, #0xfa
  302366: 004c         	lsls	r4, r1, #0x1
  302368: 31ec         	adds	r1, #0xec
  30236a: 004c         	lsls	r4, r1, #0x1
  30236c: d92c         	bls	0x3023c8 <ConfigLayer::init()+0x5e8> @ imm = #0x58
  30236e: ffff d930    	vqshrn.u64	d29, q8, #0x1
  302372: ffff d934    	vqshrn.u64	d29, q10, #0x1
  302376: ffff d938    	vqshrn.u64	d29, q12, #0x1
  30237a: ffff d93c    	vqshrn.u64	d29, q14, #0x1
  30237e: ffff 6812    	vqshrun.s64	d22, q1, #0x1
  302382: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  302386: 4608         	mov	r0, r1
  302388: 4611         	mov	r1, r2
  30238a: 4798         	blx	r3
  30238c: ab03         	add	r3, sp, #0xc
  30238e: 681a         	ldr	r2, [r3]
  302390: f8df 34d4    	ldr.w	r3, [pc, #0x4d4]        @ 0x302868 <ConfigLayer::init()+0xa88>
  302394: 58e3         	ldr	r3, [r4, r3]
  302396: 933c         	str	r3, [sp, #0xf0]
  302398: 2300         	movs	r3, #0x0
  30239a: 933d         	str	r3, [sp, #0xf4]
  30239c: 9b3d         	ldr	r3, [sp, #0xf4]
  30239e: 9300         	str	r3, [sp]
  3023a0: 9b3c         	ldr	r3, [sp, #0xf0]
  3023a2: 9813         	ldr	r0, [sp, #0x4c]
  3023a4: 9914         	ldr	r1, [sp, #0x50]
  3023a6: f2b5 ffc1    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2b5f82
  3023aa: 4603         	mov	r3, r0
  3023ac: 9322         	str	r3, [sp, #0x88]
  3023ae: 9822         	ldr	r0, [sp, #0x88]
  3023b0: 2100         	movs	r1, #0x0
  3023b2: f2b2 fec3    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2b2d86
  3023b6: 4602         	mov	r2, r0
  3023b8: ab03         	add	r3, sp, #0xc
  3023ba: 681b         	ldr	r3, [r3]
  3023bc: f8c3 2138    	str.w	r2, [r3, #0x138]
  3023c0: ab03         	add	r3, sp, #0xc
  3023c2: 681b         	ldr	r3, [r3]
  3023c4: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3023c8: 4618         	mov	r0, r3
  3023ca: f295 fd8d    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x295b1a
  3023ce: ab03         	add	r3, sp, #0xc
  3023d0: 681b         	ldr	r3, [r3]
  3023d2: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3023d6: 681b         	ldr	r3, [r3]
  3023d8: 334c         	adds	r3, #0x4c
  3023da: 681d         	ldr	r5, [r3]
  3023dc: ab03         	add	r3, sp, #0xc
  3023de: 681b         	ldr	r3, [r3]
  3023e0: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3023e4: 461e         	mov	r6, r3
  3023e6: 9b2a         	ldr	r3, [sp, #0xa8]
  3023e8: ed9d 7a2b    	vldr	s14, [sp, #172]
  3023ec: eddd 7a0a    	vldr	s15, [sp, #40]
  3023f0: ee77 7a67    	vsub.f32	s15, s14, s15
  3023f4: aa44         	add	r2, sp, #0x110
  3023f6: 4610         	mov	r0, r2
  3023f8: 4619         	mov	r1, r3
  3023fa: ee17 2a90    	vmov	r2, s15
  3023fe: f290 fc77    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2908ee
  302402: ab44         	add	r3, sp, #0x110
  302404: 4630         	mov	r0, r6
  302406: 4619         	mov	r1, r3
  302408: 47a8         	blx	r5
  30240a: ab03         	add	r3, sp, #0xc
  30240c: 681b         	ldr	r3, [r3]
  30240e: 681b         	ldr	r3, [r3]
  302410: 33c8         	adds	r3, #0xc8
  302412: 681b         	ldr	r3, [r3]
  302414: aa03         	add	r2, sp, #0xc
  302416: 6811         	ldr	r1, [r2]
  302418: aa03         	add	r2, sp, #0xc
  30241a: 6812         	ldr	r2, [r2]
  30241c: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  302420: 4608         	mov	r0, r1
  302422: 4611         	mov	r1, r2
  302424: 4798         	blx	r3
  302426: ab03         	add	r3, sp, #0xc
  302428: 681a         	ldr	r2, [r3]
  30242a: f8df 3440    	ldr.w	r3, [pc, #0x440]        @ 0x30286c <ConfigLayer::init()+0xa8c>
  30242e: 58e3         	ldr	r3, [r4, r3]
  302430: 933e         	str	r3, [sp, #0xf8]
  302432: 2300         	movs	r3, #0x0
  302434: 933f         	str	r3, [sp, #0xfc]
  302436: 9b3f         	ldr	r3, [sp, #0xfc]
  302438: 9300         	str	r3, [sp]
  30243a: 9b3e         	ldr	r3, [sp, #0xf8]
  30243c: 9815         	ldr	r0, [sp, #0x54]
  30243e: 9916         	ldr	r1, [sp, #0x58]
  302440: f2b5 ff74    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2b5ee8
  302444: 4603         	mov	r3, r0
  302446: 9323         	str	r3, [sp, #0x8c]
  302448: 9823         	ldr	r0, [sp, #0x8c]
  30244a: 2100         	movs	r1, #0x0
  30244c: f2b2 fe76    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2b2cec
  302450: 4602         	mov	r2, r0
  302452: ab03         	add	r3, sp, #0xc
  302454: 681b         	ldr	r3, [r3]
  302456: f8c3 2118    	str.w	r2, [r3, #0x118]
  30245a: ab03         	add	r3, sp, #0xc
  30245c: 681b         	ldr	r3, [r3]
  30245e: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  302462: 4618         	mov	r0, r3
  302464: f295 fd40    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x295a80
  302468: ab03         	add	r3, sp, #0xc
  30246a: 681b         	ldr	r3, [r3]
  30246c: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  302470: 681b         	ldr	r3, [r3]
  302472: 334c         	adds	r3, #0x4c
  302474: 681d         	ldr	r5, [r3]
  302476: ab03         	add	r3, sp, #0xc
  302478: 681b         	ldr	r3, [r3]
  30247a: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  30247e: 461e         	mov	r6, r3
  302480: 9b2a         	ldr	r3, [sp, #0xa8]
  302482: ed9d 7a2b    	vldr	s14, [sp, #172]
  302486: eddd 7a0a    	vldr	s15, [sp, #40]
  30248a: ee77 7aa7    	vadd.f32	s15, s15, s15
  30248e: ee77 7a67    	vsub.f32	s15, s14, s15
  302492: aa44         	add	r2, sp, #0x110
  302494: 4610         	mov	r0, r2
  302496: 4619         	mov	r1, r3
  302498: ee17 2a90    	vmov	r2, s15
  30249c: f290 fc28    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x290850
  3024a0: ab44         	add	r3, sp, #0x110
  3024a2: 4630         	mov	r0, r6
  3024a4: 4619         	mov	r1, r3
  3024a6: 47a8         	blx	r5
  3024a8: ab03         	add	r3, sp, #0xc
  3024aa: 681b         	ldr	r3, [r3]
  3024ac: 681b         	ldr	r3, [r3]
  3024ae: 33c8         	adds	r3, #0xc8
  3024b0: 681b         	ldr	r3, [r3]
  3024b2: aa03         	add	r2, sp, #0xc
  3024b4: 6811         	ldr	r1, [r2]
  3024b6: aa03         	add	r2, sp, #0xc
  3024b8: 6812         	ldr	r2, [r2]
  3024ba: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3024be: 4608         	mov	r0, r1
  3024c0: 4611         	mov	r1, r2
  3024c2: 4798         	blx	r3
  3024c4: 4bea         	ldr	r3, [pc, #0x3a8]        @ 0x302870 <ConfigLayer::init()+0xa90>
  3024c6: 447b         	add	r3, pc
  3024c8: 4618         	mov	r0, r3
  3024ca: f0b2 f719    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4b2e32
  3024ce: 4603         	mov	r3, r0
  3024d0: 2220         	movs	r2, #0x20
  3024d2: 9200         	str	r2, [sp]
  3024d4: 4ae7         	ldr	r2, [pc, #0x39c]        @ 0x302874 <ConfigLayer::init()+0xa94>
  3024d6: 447a         	add	r2, pc
  3024d8: 4610         	mov	r0, r2
  3024da: 4619         	mov	r1, r3
  3024dc: 2220         	movs	r2, #0x20
  3024de: 2320         	movs	r3, #0x20
  3024e0: f2a2 ff4a    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x2a2e94
  3024e4: 4602         	mov	r2, r0
  3024e6: ab03         	add	r3, sp, #0xc
  3024e8: 681b         	ldr	r3, [r3]
  3024ea: f8c3 2124    	str.w	r2, [r3, #0x124]
  3024ee: ab03         	add	r3, sp, #0xc
  3024f0: 681b         	ldr	r3, [r3]
  3024f2: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3024f6: 4618         	mov	r0, r3
  3024f8: f295 fcf6    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2959ec
  3024fc: ab03         	add	r3, sp, #0xc
  3024fe: 681b         	ldr	r3, [r3]
  302500: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  302504: aa08         	add	r2, sp, #0x20
  302506: edd2 7a00    	vldr	s15, [r2]
  30250a: eefd 7ae7    	vcvt.s32.f32	s15, s15
  30250e: ee17 2a90    	vmov	r2, s15
  302512: 4618         	mov	r0, r3
  302514: 4611         	mov	r1, r2
  302516: f2a3 fc35    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x2a386a
  30251a: ab03         	add	r3, sp, #0xc
  30251c: 681b         	ldr	r3, [r3]
  30251e: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  302522: 681b         	ldr	r3, [r3]
  302524: 3340         	adds	r3, #0x40
  302526: 681b         	ldr	r3, [r3]
  302528: aa03         	add	r2, sp, #0xc
  30252a: 6812         	ldr	r2, [r2]
  30252c: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  302530: 4611         	mov	r1, r2
  302532: aa07         	add	r2, sp, #0x1c
  302534: 4608         	mov	r0, r1
  302536: 6811         	ldr	r1, [r2]
  302538: 4798         	blx	r3
  30253a: ab03         	add	r3, sp, #0xc
  30253c: 681b         	ldr	r3, [r3]
  30253e: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  302542: 681b         	ldr	r3, [r3]
  302544: 334c         	adds	r3, #0x4c
  302546: 681d         	ldr	r5, [r3]
  302548: ab03         	add	r3, sp, #0xc
  30254a: 681b         	ldr	r3, [r3]
  30254c: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  302550: 461e         	mov	r6, r3
  302552: ab03         	add	r3, sp, #0xc
  302554: 681b         	ldr	r3, [r3]
  302556: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  30255a: 681b         	ldr	r3, [r3]
  30255c: 3350         	adds	r3, #0x50
  30255e: 681b         	ldr	r3, [r3]
  302560: aa03         	add	r2, sp, #0xc
  302562: 6812         	ldr	r2, [r2]
  302564: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  302568: 4610         	mov	r0, r2
  30256a: 4798         	blx	r3
  30256c: 4603         	mov	r3, r0
  30256e: 681f         	ldr	r7, [r3]
  302570: ab03         	add	r3, sp, #0xc
  302572: 681b         	ldr	r3, [r3]
  302574: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  302578: 681b         	ldr	r3, [r3]
  30257a: 3350         	adds	r3, #0x50
  30257c: 681b         	ldr	r3, [r3]
  30257e: aa03         	add	r2, sp, #0xc
  302580: 6812         	ldr	r2, [r2]
  302582: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  302586: 4610         	mov	r0, r2
  302588: 4798         	blx	r3
  30258a: 4603         	mov	r3, r0
  30258c: 685b         	ldr	r3, [r3, #0x4]
  30258e: aa2c         	add	r2, sp, #0xb0
  302590: 4610         	mov	r0, r2
  302592: 4639         	mov	r1, r7
  302594: 461a         	mov	r2, r3
  302596: f290 fbab    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x290756
  30259a: eddd 7a09    	vldr	s15, [sp, #36]
  30259e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3025a2: ab40         	add	r3, sp, #0x100
  3025a4: 4618         	mov	r0, r3
  3025a6: ed9f 0bae    	vldr	d0, [pc, #696]          @ 0x302860 <ConfigLayer::init()+0xa80>
  3025aa: eeb0 1b47    	vmov.f64	d1, d7
  3025ae: f7fe fcd9    	bl	0x300f64 <CollisionObject::setTeamId(int)+0x140> @ imm = #-0x164e
  3025b2: ed9d 8b40    	vldr	d8, [sp, #256]
  3025b6: ab03         	add	r3, sp, #0xc
  3025b8: 681b         	ldr	r3, [r3]
  3025ba: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3025be: 681b         	ldr	r3, [r3]
  3025c0: f503 73fe    	add.w	r3, r3, #0x1fc
  3025c4: 681b         	ldr	r3, [r3]
  3025c6: aa03         	add	r2, sp, #0xc
  3025c8: 6812         	ldr	r2, [r2]
  3025ca: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  3025ce: 4610         	mov	r0, r2
  3025d0: 4798         	blx	r3
  3025d2: 4607         	mov	r7, r0
  3025d4: ab05         	add	r3, sp, #0x14
  3025d6: 4618         	mov	r0, r3
  3025d8: f087 f70c    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x487e18
  3025dc: aa06         	add	r2, sp, #0x18
  3025de: ab05         	add	r3, sp, #0x14
  3025e0: 4610         	mov	r0, r2
  3025e2: 4639         	mov	r1, r7
  3025e4: 461a         	mov	r2, r3
  3025e6: f0b4 f23b    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4b4476
  3025ea: ab06         	add	r3, sp, #0x18
  3025ec: 4618         	mov	r0, r3
  3025ee: f0b2 f535    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x4b2a6a
  3025f2: 4603         	mov	r3, r0
  3025f4: ee07 3a90    	vmov	s15, r3
  3025f8: eeb8 7a67    	vcvt.f32.u32	s14, s15
  3025fc: ab08         	add	r3, sp, #0x20
  3025fe: edd3 7a00    	vldr	s15, [r3]
  302602: ee27 7a27    	vmul.f32	s14, s14, s15
  302606: ab07         	add	r3, sp, #0x1c
  302608: edd3 7a00    	vldr	s15, [r3]
  30260c: ee27 7a27    	vmul.f32	s14, s14, s15
  302610: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  302614: eec7 7a27    	vdiv.f32	s15, s14, s15
  302618: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  30261c: ee38 7b47    	vsub.f64	d7, d8, d7
  302620: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  302624: eddd 7a09    	vldr	s15, [sp, #36]
  302628: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  30262c: ab44         	add	r3, sp, #0x110
  30262e: 4618         	mov	r0, r3
  302630: ed9f 0b8b    	vldr	d0, [pc, #556]          @ 0x302860 <ConfigLayer::init()+0xa80>
  302634: eeb0 1b47    	vmov.f64	d1, d7
  302638: f7fe fc94    	bl	0x300f64 <CollisionObject::setTeamId(int)+0x140> @ imm = #-0x16d8
  30263c: ed9d 7b46    	vldr	d7, [sp, #280]
  302640: eef7 7bc7    	vcvt.f32.f64	s15, d7
  302644: ab2e         	add	r3, sp, #0xb8
  302646: 4618         	mov	r0, r3
  302648: ee18 1a10    	vmov	r1, s16
  30264c: ee17 2a90    	vmov	r2, s15
  302650: f290 fb4e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29069c
  302654: a930         	add	r1, sp, #0xc0
  302656: aa2c         	add	r2, sp, #0xb0
  302658: ab2e         	add	r3, sp, #0xb8
  30265a: 4608         	mov	r0, r1
  30265c: 4611         	mov	r1, r2
  30265e: 461a         	mov	r2, r3
  302660: f7fe fc70    	bl	0x300f44 <CollisionObject::setTeamId(int)+0x120> @ imm = #-0x1720
  302664: ab30         	add	r3, sp, #0xc0
  302666: 4630         	mov	r0, r6
  302668: 4619         	mov	r1, r3
  30266a: 47a8         	blx	r5
  30266c: ab06         	add	r3, sp, #0x18
  30266e: 4618         	mov	r0, r3
  302670: f0b3 f150    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b32a0
  302674: ab05         	add	r3, sp, #0x14
  302676: 4618         	mov	r0, r3
  302678: f087 f6c0    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x487d80
  30267c: ab03         	add	r3, sp, #0xc
  30267e: 681b         	ldr	r3, [r3]
  302680: 681b         	ldr	r3, [r3]
  302682: 33c8         	adds	r3, #0xc8
  302684: 681b         	ldr	r3, [r3]
  302686: aa03         	add	r2, sp, #0xc
  302688: 6811         	ldr	r1, [r2]
  30268a: aa03         	add	r2, sp, #0xc
  30268c: 6812         	ldr	r2, [r2]
  30268e: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  302692: 4608         	mov	r0, r1
  302694: 4611         	mov	r1, r2
  302696: 4798         	blx	r3
  302698: 4b77         	ldr	r3, [pc, #0x1dc]        @ 0x302878 <ConfigLayer::init()+0xa98>
  30269a: 447b         	add	r3, pc
  30269c: 4618         	mov	r0, r3
  30269e: f0b2 f62f    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4b2c5e
  3026a2: 4603         	mov	r3, r0
  3026a4: 2220         	movs	r2, #0x20
  3026a6: 9200         	str	r2, [sp]
  3026a8: 4a74         	ldr	r2, [pc, #0x1d0]        @ 0x30287c <ConfigLayer::init()+0xa9c>
  3026aa: 447a         	add	r2, pc
  3026ac: 4610         	mov	r0, r2
  3026ae: 4619         	mov	r1, r3
  3026b0: 2220         	movs	r2, #0x20
  3026b2: 2320         	movs	r3, #0x20
  3026b4: f2a2 fe60    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x2a2cc0
  3026b8: 4602         	mov	r2, r0
  3026ba: ab03         	add	r3, sp, #0xc
  3026bc: 681b         	ldr	r3, [r3]
  3026be: f8c3 212c    	str.w	r2, [r3, #0x12c]
  3026c2: ab03         	add	r3, sp, #0xc
  3026c4: 681b         	ldr	r3, [r3]
  3026c6: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  3026ca: 4618         	mov	r0, r3
  3026cc: f295 fc0c    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x295818
  3026d0: ab03         	add	r3, sp, #0xc
  3026d2: 681b         	ldr	r3, [r3]
  3026d4: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  3026d8: aa08         	add	r2, sp, #0x20
  3026da: edd2 7a00    	vldr	s15, [r2]
  3026de: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3026e2: ee17 2a90    	vmov	r2, s15
  3026e6: 4618         	mov	r0, r3
  3026e8: 4611         	mov	r1, r2
  3026ea: f2a3 fb4b    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x2a3696
  3026ee: ab03         	add	r3, sp, #0xc
  3026f0: 681b         	ldr	r3, [r3]
  3026f2: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  3026f6: 681b         	ldr	r3, [r3]
  3026f8: 3340         	adds	r3, #0x40
  3026fa: 681b         	ldr	r3, [r3]
  3026fc: aa03         	add	r2, sp, #0xc
  3026fe: 6812         	ldr	r2, [r2]
  302700: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  302704: 4611         	mov	r1, r2
  302706: aa07         	add	r2, sp, #0x1c
  302708: 4608         	mov	r0, r1
  30270a: 6811         	ldr	r1, [r2]
  30270c: 4798         	blx	r3
  30270e: ab03         	add	r3, sp, #0xc
  302710: 681b         	ldr	r3, [r3]
  302712: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  302716: 681b         	ldr	r3, [r3]
  302718: 334c         	adds	r3, #0x4c
  30271a: 681d         	ldr	r5, [r3]
  30271c: ab03         	add	r3, sp, #0xc
  30271e: 681b         	ldr	r3, [r3]
  302720: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  302724: 461e         	mov	r6, r3
  302726: ab03         	add	r3, sp, #0xc
  302728: 681b         	ldr	r3, [r3]
  30272a: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  30272e: 681b         	ldr	r3, [r3]
  302730: 3350         	adds	r3, #0x50
  302732: 681b         	ldr	r3, [r3]
  302734: aa03         	add	r2, sp, #0xc
  302736: 6812         	ldr	r2, [r2]
  302738: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  30273c: 4610         	mov	r0, r2
  30273e: 4798         	blx	r3
  302740: 4603         	mov	r3, r0
  302742: 681f         	ldr	r7, [r3]
  302744: ab03         	add	r3, sp, #0xc
  302746: 681b         	ldr	r3, [r3]
  302748: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  30274c: 681b         	ldr	r3, [r3]
  30274e: 3350         	adds	r3, #0x50
  302750: 681b         	ldr	r3, [r3]
  302752: aa03         	add	r2, sp, #0xc
  302754: 6812         	ldr	r2, [r2]
  302756: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  30275a: 4610         	mov	r0, r2
  30275c: 4798         	blx	r3
  30275e: 4603         	mov	r3, r0
  302760: 685b         	ldr	r3, [r3, #0x4]
  302762: aa2c         	add	r2, sp, #0xb0
  302764: 4610         	mov	r0, r2
  302766: 4639         	mov	r1, r7
  302768: 461a         	mov	r2, r3
  30276a: f290 fac1    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x290582
  30276e: eddd 7a09    	vldr	s15, [sp, #36]
  302772: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  302776: ab40         	add	r3, sp, #0x100
  302778: 4618         	mov	r0, r3
  30277a: ed9f 0b39    	vldr	d0, [pc, #228]          @ 0x302860 <ConfigLayer::init()+0xa80>
  30277e: eeb0 1b47    	vmov.f64	d1, d7
  302782: f7fe fbef    	bl	0x300f64 <CollisionObject::setTeamId(int)+0x140> @ imm = #-0x1822
  302786: ed9d 8b40    	vldr	d8, [sp, #256]
  30278a: ab03         	add	r3, sp, #0xc
  30278c: 681b         	ldr	r3, [r3]
  30278e: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  302792: 681b         	ldr	r3, [r3]
  302794: f503 73fe    	add.w	r3, r3, #0x1fc
  302798: 681b         	ldr	r3, [r3]
  30279a: aa03         	add	r2, sp, #0xc
  30279c: 6812         	ldr	r2, [r2]
  30279e: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  3027a2: 4610         	mov	r0, r2
  3027a4: 4798         	blx	r3
  3027a6: 4607         	mov	r7, r0
  3027a8: ab05         	add	r3, sp, #0x14
  3027aa: 4618         	mov	r0, r3
  3027ac: f087 f622    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x487c44
  3027b0: aa06         	add	r2, sp, #0x18
  3027b2: ab05         	add	r3, sp, #0x14
  3027b4: 4610         	mov	r0, r2
  3027b6: 4639         	mov	r1, r7
  3027b8: 461a         	mov	r2, r3
  3027ba: f0b4 f151    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4b42a2
  3027be: ab06         	add	r3, sp, #0x18
  3027c0: 4618         	mov	r0, r3
  3027c2: f0b2 f44b    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x4b2896
  3027c6: 4603         	mov	r3, r0
  3027c8: ee07 3a90    	vmov	s15, r3
  3027cc: eeb8 7a67    	vcvt.f32.u32	s14, s15
  3027d0: ab08         	add	r3, sp, #0x20
  3027d2: edd3 7a00    	vldr	s15, [r3]
  3027d6: ee27 7a27    	vmul.f32	s14, s14, s15
  3027da: ab07         	add	r3, sp, #0x1c
  3027dc: edd3 7a00    	vldr	s15, [r3]
  3027e0: ee27 7a27    	vmul.f32	s14, s14, s15
  3027e4: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3027e8: eec7 7a27    	vdiv.f32	s15, s14, s15
  3027ec: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3027f0: ee38 7b47    	vsub.f64	d7, d8, d7
  3027f4: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3027f8: eddd 7a09    	vldr	s15, [sp, #36]
  3027fc: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  302800: ab44         	add	r3, sp, #0x110
  302802: 4618         	mov	r0, r3
  302804: ed9f 0b16    	vldr	d0, [pc, #88]           @ 0x302860 <ConfigLayer::init()+0xa80>
  302808: eeb0 1b47    	vmov.f64	d1, d7
  30280c: f7fe fbaa    	bl	0x300f64 <CollisionObject::setTeamId(int)+0x140> @ imm = #-0x18ac
  302810: ed9d 7b46    	vldr	d7, [sp, #280]
  302814: eef7 7bc7    	vcvt.f32.f64	s15, d7
  302818: ab2e         	add	r3, sp, #0xb8
  30281a: 4618         	mov	r0, r3
  30281c: ee18 1a10    	vmov	r1, s16
  302820: ee17 2a90    	vmov	r2, s15
  302824: f290 fa64    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2904c8
  302828: a930         	add	r1, sp, #0xc0
  30282a: aa2c         	add	r2, sp, #0xb0
  30282c: ab2e         	add	r3, sp, #0xb8
  30282e: 4608         	mov	r0, r1
  302830: 4611         	mov	r1, r2
  302832: 461a         	mov	r2, r3
  302834: f7fe fb86    	bl	0x300f44 <CollisionObject::setTeamId(int)+0x120> @ imm = #-0x18f4
  302838: ab30         	add	r3, sp, #0xc0
  30283a: 4630         	mov	r0, r6
  30283c: 4619         	mov	r1, r3
  30283e: 47a8         	blx	r5
  302840: ab06         	add	r3, sp, #0x18
  302842: 4618         	mov	r0, r3
  302844: f0b3 f066    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b30cc
  302848: ab05         	add	r3, sp, #0x14
  30284a: 4618         	mov	r0, r3
  30284c: f087 f5d6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x487bac
  302850: ab03         	add	r3, sp, #0xc
  302852: 681b         	ldr	r3, [r3]
  302854: 681b         	ldr	r3, [r3]
  302856: 33c8         	adds	r3, #0xc8
  302858: 681b         	ldr	r3, [r3]
  30285a: aa03         	add	r2, sp, #0xc
  30285c: 6811         	ldr	r1, [r2]
  30285e: e00f         	b	0x302880 <ConfigLayer::init()+0xaa0> @ imm = #0x1e
  302868: d940         	bls	0x3028ec <ConfigLayer::init()+0xb0c> @ imm = #0x80
  30286a: ffff d944    	vtbx.8	d29, {d15, d16}, d4
  30286e: ffff d4a6    	<unknown>
  302872: 0063         	lsls	r3, r4, #0x1
  302874: 2d46         	cmp	r5, #0x46
  302876: 004c         	lsls	r4, r1, #0x1
  302878: d2d2         	bhs	0x302820 <ConfigLayer::init()+0xa40> @ imm = #-0x5c
  30287a: 0063         	lsls	r3, r4, #0x1
  30287c: 2b7a         	cmp	r3, #0x7a
  30287e: 004c         	lsls	r4, r1, #0x1
  302880: aa03         	add	r2, sp, #0xc
  302882: 6812         	ldr	r2, [r2]
  302884: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  302888: 4608         	mov	r0, r1
  30288a: 4611         	mov	r1, r2
  30288c: 4798         	blx	r3
  30288e: 4bea         	ldr	r3, [pc, #0x3a8]        @ 0x302c38 <ConfigLayer::init()+0xe58>
  302890: 447b         	add	r3, pc
  302892: 4618         	mov	r0, r3
  302894: f0b2 f534    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4b2a68
  302898: 4603         	mov	r3, r0
  30289a: 2220         	movs	r2, #0x20
  30289c: 9200         	str	r2, [sp]
  30289e: 4ae7         	ldr	r2, [pc, #0x39c]        @ 0x302c3c <ConfigLayer::init()+0xe5c>
  3028a0: 447a         	add	r2, pc
  3028a2: 4610         	mov	r0, r2
  3028a4: 4619         	mov	r1, r3
  3028a6: 2220         	movs	r2, #0x20
  3028a8: 2320         	movs	r3, #0x20
  3028aa: f2a2 fd65    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x2a2aca
  3028ae: 4602         	mov	r2, r0
  3028b0: ab03         	add	r3, sp, #0xc
  3028b2: 681b         	ldr	r3, [r3]
  3028b4: f8c3 211c    	str.w	r2, [r3, #0x11c]
  3028b8: ab03         	add	r3, sp, #0xc
  3028ba: 681b         	ldr	r3, [r3]
  3028bc: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3028c0: 4618         	mov	r0, r3
  3028c2: f295 fb11    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x295622
  3028c6: ab03         	add	r3, sp, #0xc
  3028c8: 681b         	ldr	r3, [r3]
  3028ca: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3028ce: aa08         	add	r2, sp, #0x20
  3028d0: edd2 7a00    	vldr	s15, [r2]
  3028d4: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3028d8: ee17 2a90    	vmov	r2, s15
  3028dc: 4618         	mov	r0, r3
  3028de: 4611         	mov	r1, r2
  3028e0: f2a3 fa50    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x2a34a0
  3028e4: ab03         	add	r3, sp, #0xc
  3028e6: 681b         	ldr	r3, [r3]
  3028e8: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3028ec: 681b         	ldr	r3, [r3]
  3028ee: 3340         	adds	r3, #0x40
  3028f0: 681b         	ldr	r3, [r3]
  3028f2: aa03         	add	r2, sp, #0xc
  3028f4: 6812         	ldr	r2, [r2]
  3028f6: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  3028fa: 4611         	mov	r1, r2
  3028fc: aa07         	add	r2, sp, #0x1c
  3028fe: 4608         	mov	r0, r1
  302900: 6811         	ldr	r1, [r2]
  302902: 4798         	blx	r3
  302904: ab03         	add	r3, sp, #0xc
  302906: 681b         	ldr	r3, [r3]
  302908: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  30290c: 681b         	ldr	r3, [r3]
  30290e: 334c         	adds	r3, #0x4c
  302910: 681d         	ldr	r5, [r3]
  302912: ab03         	add	r3, sp, #0xc
  302914: 681b         	ldr	r3, [r3]
  302916: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  30291a: 461e         	mov	r6, r3
  30291c: ab03         	add	r3, sp, #0xc
  30291e: 681b         	ldr	r3, [r3]
  302920: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  302924: 681b         	ldr	r3, [r3]
  302926: 3350         	adds	r3, #0x50
  302928: 681b         	ldr	r3, [r3]
  30292a: aa03         	add	r2, sp, #0xc
  30292c: 6812         	ldr	r2, [r2]
  30292e: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  302932: 4610         	mov	r0, r2
  302934: 4798         	blx	r3
  302936: 4603         	mov	r3, r0
  302938: 681f         	ldr	r7, [r3]
  30293a: ab03         	add	r3, sp, #0xc
  30293c: 681b         	ldr	r3, [r3]
  30293e: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  302942: 681b         	ldr	r3, [r3]
  302944: 3350         	adds	r3, #0x50
  302946: 681b         	ldr	r3, [r3]
  302948: aa03         	add	r2, sp, #0xc
  30294a: 6812         	ldr	r2, [r2]
  30294c: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  302950: 4610         	mov	r0, r2
  302952: 4798         	blx	r3
  302954: 4603         	mov	r3, r0
  302956: 685b         	ldr	r3, [r3, #0x4]
  302958: aa2c         	add	r2, sp, #0xb0
  30295a: 4610         	mov	r0, r2
  30295c: 4639         	mov	r1, r7
  30295e: 461a         	mov	r2, r3
  302960: f290 f9c6    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29038c
  302964: eddd 7a09    	vldr	s15, [sp, #36]
  302968: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  30296c: ab40         	add	r3, sp, #0x100
  30296e: 4618         	mov	r0, r3
  302970: ed9f 0baf    	vldr	d0, [pc, #700]          @ 0x302c30 <ConfigLayer::init()+0xe50>
  302974: eeb0 1b47    	vmov.f64	d1, d7
  302978: f7fe faf4    	bl	0x300f64 <CollisionObject::setTeamId(int)+0x140> @ imm = #-0x1a18
  30297c: ed9d 8b40    	vldr	d8, [sp, #256]
  302980: ab03         	add	r3, sp, #0xc
  302982: 681b         	ldr	r3, [r3]
  302984: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  302988: 681b         	ldr	r3, [r3]
  30298a: f503 73fe    	add.w	r3, r3, #0x1fc
  30298e: 681b         	ldr	r3, [r3]
  302990: aa03         	add	r2, sp, #0xc
  302992: 6812         	ldr	r2, [r2]
  302994: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  302998: 4610         	mov	r0, r2
  30299a: 4798         	blx	r3
  30299c: 4607         	mov	r7, r0
  30299e: ab05         	add	r3, sp, #0x14
  3029a0: 4618         	mov	r0, r3
  3029a2: f087 f527    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x487a4e
  3029a6: aa06         	add	r2, sp, #0x18
  3029a8: ab05         	add	r3, sp, #0x14
  3029aa: 4610         	mov	r0, r2
  3029ac: 4639         	mov	r1, r7
  3029ae: 461a         	mov	r2, r3
  3029b0: f0b4 f056    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4b40ac
  3029b4: ab06         	add	r3, sp, #0x18
  3029b6: 4618         	mov	r0, r3
  3029b8: f0b2 f350    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x4b26a0
  3029bc: 4603         	mov	r3, r0
  3029be: ee07 3a90    	vmov	s15, r3
  3029c2: eeb8 7a67    	vcvt.f32.u32	s14, s15
  3029c6: ab08         	add	r3, sp, #0x20
  3029c8: edd3 7a00    	vldr	s15, [r3]
  3029cc: ee27 7a27    	vmul.f32	s14, s14, s15
  3029d0: ab07         	add	r3, sp, #0x1c
  3029d2: edd3 7a00    	vldr	s15, [r3]
  3029d6: ee27 7a27    	vmul.f32	s14, s14, s15
  3029da: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3029de: eec7 7a27    	vdiv.f32	s15, s14, s15
  3029e2: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3029e6: ee38 7b47    	vsub.f64	d7, d8, d7
  3029ea: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3029ee: eddd 7a09    	vldr	s15, [sp, #36]
  3029f2: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3029f6: ab44         	add	r3, sp, #0x110
  3029f8: 4618         	mov	r0, r3
  3029fa: ed9f 0b8d    	vldr	d0, [pc, #564]          @ 0x302c30 <ConfigLayer::init()+0xe50>
  3029fe: eeb0 1b47    	vmov.f64	d1, d7
  302a02: f7fe faaf    	bl	0x300f64 <CollisionObject::setTeamId(int)+0x140> @ imm = #-0x1aa2
  302a06: ed9d 7b46    	vldr	d7, [sp, #280]
  302a0a: eef7 7bc7    	vcvt.f32.f64	s15, d7
  302a0e: ab2e         	add	r3, sp, #0xb8
  302a10: 4618         	mov	r0, r3
  302a12: ee18 1a10    	vmov	r1, s16
  302a16: ee17 2a90    	vmov	r2, s15
  302a1a: f290 f969    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2902d2
  302a1e: a930         	add	r1, sp, #0xc0
  302a20: aa2c         	add	r2, sp, #0xb0
  302a22: ab2e         	add	r3, sp, #0xb8
  302a24: 4608         	mov	r0, r1
  302a26: 4611         	mov	r1, r2
  302a28: 461a         	mov	r2, r3
  302a2a: f7fe fa8b    	bl	0x300f44 <CollisionObject::setTeamId(int)+0x120> @ imm = #-0x1aea
  302a2e: ab30         	add	r3, sp, #0xc0
  302a30: 4630         	mov	r0, r6
  302a32: 4619         	mov	r1, r3
  302a34: 47a8         	blx	r5
  302a36: ab06         	add	r3, sp, #0x18
  302a38: 4618         	mov	r0, r3
  302a3a: f0b2 f76b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b2ed6
  302a3e: ab05         	add	r3, sp, #0x14
  302a40: 4618         	mov	r0, r3
  302a42: f087 f4db    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4879b6
  302a46: ab03         	add	r3, sp, #0xc
  302a48: 681b         	ldr	r3, [r3]
  302a4a: 681b         	ldr	r3, [r3]
  302a4c: 33c8         	adds	r3, #0xc8
  302a4e: 681b         	ldr	r3, [r3]
  302a50: aa03         	add	r2, sp, #0xc
  302a52: 6811         	ldr	r1, [r2]
  302a54: aa03         	add	r2, sp, #0xc
  302a56: 6812         	ldr	r2, [r2]
  302a58: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  302a5c: 4608         	mov	r0, r1
  302a5e: 4611         	mov	r1, r2
  302a60: 4798         	blx	r3
  302a62: 4b77         	ldr	r3, [pc, #0x1dc]        @ 0x302c40 <ConfigLayer::init()+0xe60>
  302a64: 447b         	add	r3, pc
  302a66: 4618         	mov	r0, r3
  302a68: f0b2 f44a    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4b2894
  302a6c: 4603         	mov	r3, r0
  302a6e: 2220         	movs	r2, #0x20
  302a70: 9200         	str	r2, [sp]
  302a72: 4a74         	ldr	r2, [pc, #0x1d0]        @ 0x302c44 <ConfigLayer::init()+0xe64>
  302a74: 447a         	add	r2, pc
  302a76: 4610         	mov	r0, r2
  302a78: 4619         	mov	r1, r3
  302a7a: 2220         	movs	r2, #0x20
  302a7c: 2320         	movs	r3, #0x20
  302a7e: f2a2 fc7b    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x2a28f6
  302a82: 4602         	mov	r2, r0
  302a84: ab03         	add	r3, sp, #0xc
  302a86: 681b         	ldr	r3, [r3]
  302a88: f8c3 2134    	str.w	r2, [r3, #0x134]
  302a8c: ab03         	add	r3, sp, #0xc
  302a8e: 681b         	ldr	r3, [r3]
  302a90: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  302a94: 4618         	mov	r0, r3
  302a96: f295 fa27    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x29544e
  302a9a: ab03         	add	r3, sp, #0xc
  302a9c: 681b         	ldr	r3, [r3]
  302a9e: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  302aa2: aa08         	add	r2, sp, #0x20
  302aa4: edd2 7a00    	vldr	s15, [r2]
  302aa8: eefd 7ae7    	vcvt.s32.f32	s15, s15
  302aac: ee17 2a90    	vmov	r2, s15
  302ab0: 4618         	mov	r0, r3
  302ab2: 4611         	mov	r1, r2
  302ab4: f2a3 f966    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x2a32cc
  302ab8: ab03         	add	r3, sp, #0xc
  302aba: 681b         	ldr	r3, [r3]
  302abc: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  302ac0: 681b         	ldr	r3, [r3]
  302ac2: 3340         	adds	r3, #0x40
  302ac4: 681b         	ldr	r3, [r3]
  302ac6: aa03         	add	r2, sp, #0xc
  302ac8: 6812         	ldr	r2, [r2]
  302aca: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  302ace: 4611         	mov	r1, r2
  302ad0: aa07         	add	r2, sp, #0x1c
  302ad2: 4608         	mov	r0, r1
  302ad4: 6811         	ldr	r1, [r2]
  302ad6: 4798         	blx	r3
  302ad8: ab03         	add	r3, sp, #0xc
  302ada: 681b         	ldr	r3, [r3]
  302adc: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  302ae0: 681b         	ldr	r3, [r3]
  302ae2: 334c         	adds	r3, #0x4c
  302ae4: 681d         	ldr	r5, [r3]
  302ae6: ab03         	add	r3, sp, #0xc
  302ae8: 681b         	ldr	r3, [r3]
  302aea: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  302aee: 461e         	mov	r6, r3
  302af0: ab03         	add	r3, sp, #0xc
  302af2: 681b         	ldr	r3, [r3]
  302af4: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  302af8: 681b         	ldr	r3, [r3]
  302afa: 3350         	adds	r3, #0x50
  302afc: 681b         	ldr	r3, [r3]
  302afe: aa03         	add	r2, sp, #0xc
  302b00: 6812         	ldr	r2, [r2]
  302b02: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  302b06: 4610         	mov	r0, r2
  302b08: 4798         	blx	r3
  302b0a: 4603         	mov	r3, r0
  302b0c: 681f         	ldr	r7, [r3]
  302b0e: ab03         	add	r3, sp, #0xc
  302b10: 681b         	ldr	r3, [r3]
  302b12: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  302b16: 681b         	ldr	r3, [r3]
  302b18: 3350         	adds	r3, #0x50
  302b1a: 681b         	ldr	r3, [r3]
  302b1c: aa03         	add	r2, sp, #0xc
  302b1e: 6812         	ldr	r2, [r2]
  302b20: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  302b24: 4610         	mov	r0, r2
  302b26: 4798         	blx	r3
  302b28: 4603         	mov	r3, r0
  302b2a: 685b         	ldr	r3, [r3, #0x4]
  302b2c: aa2c         	add	r2, sp, #0xb0
  302b2e: 4610         	mov	r0, r2
  302b30: 4639         	mov	r1, r7
  302b32: 461a         	mov	r2, r3
  302b34: f290 f8dc    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2901b8
  302b38: eddd 7a09    	vldr	s15, [sp, #36]
  302b3c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  302b40: ab40         	add	r3, sp, #0x100
  302b42: 4618         	mov	r0, r3
  302b44: ed9f 0b3a    	vldr	d0, [pc, #232]          @ 0x302c30 <ConfigLayer::init()+0xe50>
  302b48: eeb0 1b47    	vmov.f64	d1, d7
  302b4c: f7fe fa0a    	bl	0x300f64 <CollisionObject::setTeamId(int)+0x140> @ imm = #-0x1bec
  302b50: ed9d 8b40    	vldr	d8, [sp, #256]
  302b54: ab03         	add	r3, sp, #0xc
  302b56: 681b         	ldr	r3, [r3]
  302b58: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  302b5c: 681b         	ldr	r3, [r3]
  302b5e: f503 73fe    	add.w	r3, r3, #0x1fc
  302b62: 681b         	ldr	r3, [r3]
  302b64: aa03         	add	r2, sp, #0xc
  302b66: 6812         	ldr	r2, [r2]
  302b68: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  302b6c: 4610         	mov	r0, r2
  302b6e: 4798         	blx	r3
  302b70: 4607         	mov	r7, r0
  302b72: ab05         	add	r3, sp, #0x14
  302b74: 4618         	mov	r0, r3
  302b76: f087 f43d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x48787a
  302b7a: aa06         	add	r2, sp, #0x18
  302b7c: ab05         	add	r3, sp, #0x14
  302b7e: 4610         	mov	r0, r2
  302b80: 4639         	mov	r1, r7
  302b82: 461a         	mov	r2, r3
  302b84: f0b3 f76c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4b3ed8
  302b88: ab06         	add	r3, sp, #0x18
  302b8a: 4618         	mov	r0, r3
  302b8c: f0b2 f266    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x4b24cc
  302b90: 4603         	mov	r3, r0
  302b92: ee07 3a90    	vmov	s15, r3
  302b96: eeb8 7a67    	vcvt.f32.u32	s14, s15
  302b9a: ab08         	add	r3, sp, #0x20
  302b9c: edd3 7a00    	vldr	s15, [r3]
  302ba0: ee27 7a27    	vmul.f32	s14, s14, s15
  302ba4: ab07         	add	r3, sp, #0x1c
  302ba6: edd3 7a00    	vldr	s15, [r3]
  302baa: ee27 7a27    	vmul.f32	s14, s14, s15
  302bae: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  302bb2: eec7 7a27    	vdiv.f32	s15, s14, s15
  302bb6: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  302bba: ee38 7b47    	vsub.f64	d7, d8, d7
  302bbe: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  302bc2: eddd 7a09    	vldr	s15, [sp, #36]
  302bc6: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  302bca: ab44         	add	r3, sp, #0x110
  302bcc: 4618         	mov	r0, r3
  302bce: ed9f 0b18    	vldr	d0, [pc, #96]           @ 0x302c30 <ConfigLayer::init()+0xe50>
  302bd2: eeb0 1b47    	vmov.f64	d1, d7
  302bd6: f7fe f9c5    	bl	0x300f64 <CollisionObject::setTeamId(int)+0x140> @ imm = #-0x1c76
  302bda: ed9d 7b46    	vldr	d7, [sp, #280]
  302bde: eef7 7bc7    	vcvt.f32.f64	s15, d7
  302be2: ab2e         	add	r3, sp, #0xb8
  302be4: 4618         	mov	r0, r3
  302be6: ee18 1a10    	vmov	r1, s16
  302bea: ee17 2a90    	vmov	r2, s15
  302bee: f290 f87f    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2900fe
  302bf2: a930         	add	r1, sp, #0xc0
  302bf4: aa2c         	add	r2, sp, #0xb0
  302bf6: ab2e         	add	r3, sp, #0xb8
  302bf8: 4608         	mov	r0, r1
  302bfa: 4611         	mov	r1, r2
  302bfc: 461a         	mov	r2, r3
  302bfe: f7fe f9a1    	bl	0x300f44 <CollisionObject::setTeamId(int)+0x120> @ imm = #-0x1cbe
  302c02: ab30         	add	r3, sp, #0xc0
  302c04: 4630         	mov	r0, r6
  302c06: 4619         	mov	r1, r3
  302c08: 47a8         	blx	r5
  302c0a: ab06         	add	r3, sp, #0x18
  302c0c: 4618         	mov	r0, r3
  302c0e: f0b2 f681    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b2d02
  302c12: ab05         	add	r3, sp, #0x14
  302c14: 4618         	mov	r0, r3
  302c16: f087 f3f1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4877e2
  302c1a: ab03         	add	r3, sp, #0xc
  302c1c: 681b         	ldr	r3, [r3]
  302c1e: 681b         	ldr	r3, [r3]
  302c20: 33c8         	adds	r3, #0xc8
  302c22: 681b         	ldr	r3, [r3]
  302c24: aa03         	add	r2, sp, #0xc
  302c26: 6811         	ldr	r1, [r2]
  302c28: e00e         	b	0x302c48 <ConfigLayer::init()+0xe68> @ imm = #0x1c
  302c2a: bf00         	nop
  302c2c: f3af 8000    	nop.w
  302c38: d0dc         	beq	0x302bf4 <ConfigLayer::init()+0xe14> @ imm = #-0x48
  302c3a: 0063         	lsls	r3, r4, #0x1
  302c3c: 298c         	cmp	r1, #0x8c
  302c3e: 004c         	lsls	r4, r1, #0x1
  302c40: cf08         	ldm	r7!, {r3}
  302c42: 0063         	lsls	r3, r4, #0x1
  302c44: 27c0         	movs	r7, #0xc0
  302c46: 004c         	lsls	r4, r1, #0x1
  302c48: aa03         	add	r2, sp, #0xc
  302c4a: 6812         	ldr	r2, [r2]
  302c4c: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  302c50: 4608         	mov	r0, r1
  302c52: 4611         	mov	r1, r2
  302c54: 4798         	blx	r3
  302c56: 4bea         	ldr	r3, [pc, #0x3a8]        @ 0x303000 <ConfigLayer::init()+0x1220>
  302c58: 447b         	add	r3, pc
  302c5a: 4618         	mov	r0, r3
  302c5c: f0b2 f350    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4b26a0
  302c60: 4603         	mov	r3, r0
  302c62: 2220         	movs	r2, #0x20
  302c64: 9200         	str	r2, [sp]
  302c66: 4ae7         	ldr	r2, [pc, #0x39c]        @ 0x303004 <ConfigLayer::init()+0x1224>
  302c68: 447a         	add	r2, pc
  302c6a: 4610         	mov	r0, r2
  302c6c: 4619         	mov	r1, r3
  302c6e: 2220         	movs	r2, #0x20
  302c70: 2320         	movs	r3, #0x20
  302c72: f2a2 fb81    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x2a2702
  302c76: 4602         	mov	r2, r0
  302c78: ab03         	add	r3, sp, #0xc
  302c7a: 681b         	ldr	r3, [r3]
  302c7c: f8c3 2114    	str.w	r2, [r3, #0x114]
  302c80: ab03         	add	r3, sp, #0xc
  302c82: 681b         	ldr	r3, [r3]
  302c84: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  302c88: 4618         	mov	r0, r3
  302c8a: f295 f92d    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x29525a
  302c8e: ab03         	add	r3, sp, #0xc
  302c90: 681b         	ldr	r3, [r3]
  302c92: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  302c96: aa08         	add	r2, sp, #0x20
  302c98: edd2 7a00    	vldr	s15, [r2]
  302c9c: eefd 7ae7    	vcvt.s32.f32	s15, s15
  302ca0: ee17 2a90    	vmov	r2, s15
  302ca4: 4618         	mov	r0, r3
  302ca6: 4611         	mov	r1, r2
  302ca8: f2a3 f86c    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x2a30d8
  302cac: ab03         	add	r3, sp, #0xc
  302cae: 681b         	ldr	r3, [r3]
  302cb0: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  302cb4: 681b         	ldr	r3, [r3]
  302cb6: 3340         	adds	r3, #0x40
  302cb8: 681b         	ldr	r3, [r3]
  302cba: aa03         	add	r2, sp, #0xc
  302cbc: 6812         	ldr	r2, [r2]
  302cbe: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  302cc2: 4611         	mov	r1, r2
  302cc4: aa07         	add	r2, sp, #0x1c
  302cc6: 4608         	mov	r0, r1
  302cc8: 6811         	ldr	r1, [r2]
  302cca: 4798         	blx	r3
  302ccc: ab03         	add	r3, sp, #0xc
  302cce: 681b         	ldr	r3, [r3]
  302cd0: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  302cd4: 681b         	ldr	r3, [r3]
  302cd6: 334c         	adds	r3, #0x4c
  302cd8: 681d         	ldr	r5, [r3]
  302cda: ab03         	add	r3, sp, #0xc
  302cdc: 681b         	ldr	r3, [r3]
  302cde: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  302ce2: 461e         	mov	r6, r3
  302ce4: ab03         	add	r3, sp, #0xc
  302ce6: 681b         	ldr	r3, [r3]
  302ce8: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  302cec: 681b         	ldr	r3, [r3]
  302cee: 3350         	adds	r3, #0x50
  302cf0: 681b         	ldr	r3, [r3]
  302cf2: aa03         	add	r2, sp, #0xc
  302cf4: 6812         	ldr	r2, [r2]
  302cf6: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  302cfa: 4610         	mov	r0, r2
  302cfc: 4798         	blx	r3
  302cfe: 4603         	mov	r3, r0
  302d00: 681f         	ldr	r7, [r3]
  302d02: ab03         	add	r3, sp, #0xc
  302d04: 681b         	ldr	r3, [r3]
  302d06: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  302d0a: 681b         	ldr	r3, [r3]
  302d0c: 3350         	adds	r3, #0x50
  302d0e: 681b         	ldr	r3, [r3]
  302d10: aa03         	add	r2, sp, #0xc
  302d12: 6812         	ldr	r2, [r2]
  302d14: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  302d18: 4610         	mov	r0, r2
  302d1a: 4798         	blx	r3
  302d1c: 4603         	mov	r3, r0
  302d1e: 685b         	ldr	r3, [r3, #0x4]
  302d20: aa2c         	add	r2, sp, #0xb0
  302d22: 4610         	mov	r0, r2
  302d24: 4639         	mov	r1, r7
  302d26: 461a         	mov	r2, r3
  302d28: f28f ffe2    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x28ffc4
  302d2c: eddd 7a09    	vldr	s15, [sp, #36]
  302d30: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  302d34: ab40         	add	r3, sp, #0x100
  302d36: 4618         	mov	r0, r3
  302d38: ed9f 0baf    	vldr	d0, [pc, #700]          @ 0x302ff8 <ConfigLayer::init()+0x1218>
  302d3c: eeb0 1b47    	vmov.f64	d1, d7
  302d40: f7fe f910    	bl	0x300f64 <CollisionObject::setTeamId(int)+0x140> @ imm = #-0x1de0
  302d44: ed9d 8b40    	vldr	d8, [sp, #256]
  302d48: ab03         	add	r3, sp, #0xc
  302d4a: 681b         	ldr	r3, [r3]
  302d4c: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  302d50: 681b         	ldr	r3, [r3]
  302d52: f503 73fe    	add.w	r3, r3, #0x1fc
  302d56: 681b         	ldr	r3, [r3]
  302d58: aa03         	add	r2, sp, #0xc
  302d5a: 6812         	ldr	r2, [r2]
  302d5c: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  302d60: 4610         	mov	r0, r2
  302d62: 4798         	blx	r3
  302d64: 4607         	mov	r7, r0
  302d66: ab05         	add	r3, sp, #0x14
  302d68: 4618         	mov	r0, r3
  302d6a: f087 f343    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x487686
  302d6e: aa06         	add	r2, sp, #0x18
  302d70: ab05         	add	r3, sp, #0x14
  302d72: 4610         	mov	r0, r2
  302d74: 4639         	mov	r1, r7
  302d76: 461a         	mov	r2, r3
  302d78: f0b3 f672    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4b3ce4
  302d7c: ab06         	add	r3, sp, #0x18
  302d7e: 4618         	mov	r0, r3
  302d80: f0b2 f16c    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x4b22d8
  302d84: 4603         	mov	r3, r0
  302d86: ee07 3a90    	vmov	s15, r3
  302d8a: eeb8 7a67    	vcvt.f32.u32	s14, s15
  302d8e: ab08         	add	r3, sp, #0x20
  302d90: edd3 7a00    	vldr	s15, [r3]
  302d94: ee27 7a27    	vmul.f32	s14, s14, s15
  302d98: ab07         	add	r3, sp, #0x1c
  302d9a: edd3 7a00    	vldr	s15, [r3]
  302d9e: ee27 7a27    	vmul.f32	s14, s14, s15
  302da2: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  302da6: eec7 7a27    	vdiv.f32	s15, s14, s15
  302daa: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  302dae: ee38 7b47    	vsub.f64	d7, d8, d7
  302db2: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  302db6: eddd 7a09    	vldr	s15, [sp, #36]
  302dba: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  302dbe: ab44         	add	r3, sp, #0x110
  302dc0: 4618         	mov	r0, r3
  302dc2: ed9f 0b8d    	vldr	d0, [pc, #564]          @ 0x302ff8 <ConfigLayer::init()+0x1218>
  302dc6: eeb0 1b47    	vmov.f64	d1, d7
  302dca: f7fe f8cb    	bl	0x300f64 <CollisionObject::setTeamId(int)+0x140> @ imm = #-0x1e6a
  302dce: ed9d 7b46    	vldr	d7, [sp, #280]
  302dd2: eef7 7bc7    	vcvt.f32.f64	s15, d7
  302dd6: ab2e         	add	r3, sp, #0xb8
  302dd8: 4618         	mov	r0, r3
  302dda: ee18 1a10    	vmov	r1, s16
  302dde: ee17 2a90    	vmov	r2, s15
  302de2: f28f ff85    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x28ff0a
  302de6: a930         	add	r1, sp, #0xc0
  302de8: aa2c         	add	r2, sp, #0xb0
  302dea: ab2e         	add	r3, sp, #0xb8
  302dec: 4608         	mov	r0, r1
  302dee: 4611         	mov	r1, r2
  302df0: 461a         	mov	r2, r3
  302df2: f7fe f8a7    	bl	0x300f44 <CollisionObject::setTeamId(int)+0x120> @ imm = #-0x1eb2
  302df6: ab30         	add	r3, sp, #0xc0
  302df8: 4630         	mov	r0, r6
  302dfa: 4619         	mov	r1, r3
  302dfc: 47a8         	blx	r5
  302dfe: ab06         	add	r3, sp, #0x18
  302e00: 4618         	mov	r0, r3
  302e02: f0b2 f587    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b2b0e
  302e06: ab05         	add	r3, sp, #0x14
  302e08: 4618         	mov	r0, r3
  302e0a: f087 f2f7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4875ee
  302e0e: ab03         	add	r3, sp, #0xc
  302e10: 681b         	ldr	r3, [r3]
  302e12: 681b         	ldr	r3, [r3]
  302e14: 33c8         	adds	r3, #0xc8
  302e16: 681b         	ldr	r3, [r3]
  302e18: aa03         	add	r2, sp, #0xc
  302e1a: 6811         	ldr	r1, [r2]
  302e1c: aa03         	add	r2, sp, #0xc
  302e1e: 6812         	ldr	r2, [r2]
  302e20: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  302e24: 4608         	mov	r0, r1
  302e26: 4611         	mov	r1, r2
  302e28: 4798         	blx	r3
  302e2a: 4b77         	ldr	r3, [pc, #0x1dc]        @ 0x303008 <ConfigLayer::init()+0x1228>
  302e2c: 447b         	add	r3, pc
  302e2e: 4618         	mov	r0, r3
  302e30: f0b2 f266    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4b24cc
  302e34: 4603         	mov	r3, r0
  302e36: 2220         	movs	r2, #0x20
  302e38: 9200         	str	r2, [sp]
  302e3a: 4a74         	ldr	r2, [pc, #0x1d0]        @ 0x30300c <ConfigLayer::init()+0x122c>
  302e3c: 447a         	add	r2, pc
  302e3e: 4610         	mov	r0, r2
  302e40: 4619         	mov	r1, r3
  302e42: 2220         	movs	r2, #0x20
  302e44: 2320         	movs	r3, #0x20
  302e46: f2a2 fa97    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x2a252e
  302e4a: 4602         	mov	r2, r0
  302e4c: ab03         	add	r3, sp, #0xc
  302e4e: 681b         	ldr	r3, [r3]
  302e50: f8c3 2144    	str.w	r2, [r3, #0x144]
  302e54: ab03         	add	r3, sp, #0xc
  302e56: 681b         	ldr	r3, [r3]
  302e58: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  302e5c: 4618         	mov	r0, r3
  302e5e: f295 f843    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x295086
  302e62: ab03         	add	r3, sp, #0xc
  302e64: 681b         	ldr	r3, [r3]
  302e66: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  302e6a: aa08         	add	r2, sp, #0x20
  302e6c: edd2 7a00    	vldr	s15, [r2]
  302e70: eefd 7ae7    	vcvt.s32.f32	s15, s15
  302e74: ee17 2a90    	vmov	r2, s15
  302e78: 4618         	mov	r0, r3
  302e7a: 4611         	mov	r1, r2
  302e7c: f2a2 ff82    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x2a2f04
  302e80: ab03         	add	r3, sp, #0xc
  302e82: 681b         	ldr	r3, [r3]
  302e84: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  302e88: 681b         	ldr	r3, [r3]
  302e8a: 3340         	adds	r3, #0x40
  302e8c: 681b         	ldr	r3, [r3]
  302e8e: aa03         	add	r2, sp, #0xc
  302e90: 6812         	ldr	r2, [r2]
  302e92: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  302e96: 4611         	mov	r1, r2
  302e98: aa07         	add	r2, sp, #0x1c
  302e9a: 4608         	mov	r0, r1
  302e9c: 6811         	ldr	r1, [r2]
  302e9e: 4798         	blx	r3
  302ea0: ab03         	add	r3, sp, #0xc
  302ea2: 681b         	ldr	r3, [r3]
  302ea4: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  302ea8: 681b         	ldr	r3, [r3]
  302eaa: 334c         	adds	r3, #0x4c
  302eac: 681d         	ldr	r5, [r3]
  302eae: ab03         	add	r3, sp, #0xc
  302eb0: 681b         	ldr	r3, [r3]
  302eb2: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  302eb6: 461e         	mov	r6, r3
  302eb8: ab03         	add	r3, sp, #0xc
  302eba: 681b         	ldr	r3, [r3]
  302ebc: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  302ec0: 681b         	ldr	r3, [r3]
  302ec2: 3350         	adds	r3, #0x50
  302ec4: 681b         	ldr	r3, [r3]
  302ec6: aa03         	add	r2, sp, #0xc
  302ec8: 6812         	ldr	r2, [r2]
  302eca: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  302ece: 4610         	mov	r0, r2
  302ed0: 4798         	blx	r3
  302ed2: 4603         	mov	r3, r0
  302ed4: 681f         	ldr	r7, [r3]
  302ed6: ab03         	add	r3, sp, #0xc
  302ed8: 681b         	ldr	r3, [r3]
  302eda: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  302ede: 681b         	ldr	r3, [r3]
  302ee0: 3350         	adds	r3, #0x50
  302ee2: 681b         	ldr	r3, [r3]
  302ee4: aa03         	add	r2, sp, #0xc
  302ee6: 6812         	ldr	r2, [r2]
  302ee8: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  302eec: 4610         	mov	r0, r2
  302eee: 4798         	blx	r3
  302ef0: 4603         	mov	r3, r0
  302ef2: 685b         	ldr	r3, [r3, #0x4]
  302ef4: aa2c         	add	r2, sp, #0xb0
  302ef6: 4610         	mov	r0, r2
  302ef8: 4639         	mov	r1, r7
  302efa: 461a         	mov	r2, r3
  302efc: f28f fef8    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x28fdf0
  302f00: eddd 7a09    	vldr	s15, [sp, #36]
  302f04: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  302f08: ab40         	add	r3, sp, #0x100
  302f0a: 4618         	mov	r0, r3
  302f0c: ed9f 0b3a    	vldr	d0, [pc, #232]          @ 0x302ff8 <ConfigLayer::init()+0x1218>
  302f10: eeb0 1b47    	vmov.f64	d1, d7
  302f14: f7fe f826    	bl	0x300f64 <CollisionObject::setTeamId(int)+0x140> @ imm = #-0x1fb4
  302f18: ed9d 8b40    	vldr	d8, [sp, #256]
  302f1c: ab03         	add	r3, sp, #0xc
  302f1e: 681b         	ldr	r3, [r3]
  302f20: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  302f24: 681b         	ldr	r3, [r3]
  302f26: f503 73fe    	add.w	r3, r3, #0x1fc
  302f2a: 681b         	ldr	r3, [r3]
  302f2c: aa03         	add	r2, sp, #0xc
  302f2e: 6812         	ldr	r2, [r2]
  302f30: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  302f34: 4610         	mov	r0, r2
  302f36: 4798         	blx	r3
  302f38: 4607         	mov	r7, r0
  302f3a: ab05         	add	r3, sp, #0x14
  302f3c: 4618         	mov	r0, r3
  302f3e: f087 f259    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4874b2
  302f42: aa06         	add	r2, sp, #0x18
  302f44: ab05         	add	r3, sp, #0x14
  302f46: 4610         	mov	r0, r2
  302f48: 4639         	mov	r1, r7
  302f4a: 461a         	mov	r2, r3
  302f4c: f0b3 f588    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4b3b10
  302f50: ab06         	add	r3, sp, #0x18
  302f52: 4618         	mov	r0, r3
  302f54: f0b2 f082    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x4b2104
  302f58: 4603         	mov	r3, r0
  302f5a: ee07 3a90    	vmov	s15, r3
  302f5e: eeb8 7a67    	vcvt.f32.u32	s14, s15
  302f62: ab08         	add	r3, sp, #0x20
  302f64: edd3 7a00    	vldr	s15, [r3]
  302f68: ee27 7a27    	vmul.f32	s14, s14, s15
  302f6c: ab07         	add	r3, sp, #0x1c
  302f6e: edd3 7a00    	vldr	s15, [r3]
  302f72: ee27 7a27    	vmul.f32	s14, s14, s15
  302f76: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  302f7a: eec7 7a27    	vdiv.f32	s15, s14, s15
  302f7e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  302f82: ee38 7b47    	vsub.f64	d7, d8, d7
  302f86: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  302f8a: eddd 7a09    	vldr	s15, [sp, #36]
  302f8e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  302f92: ab44         	add	r3, sp, #0x110
  302f94: 4618         	mov	r0, r3
  302f96: ed9f 0b18    	vldr	d0, [pc, #96]           @ 0x302ff8 <ConfigLayer::init()+0x1218>
  302f9a: eeb0 1b47    	vmov.f64	d1, d7
  302f9e: f7fd ffe1    	bl	0x300f64 <CollisionObject::setTeamId(int)+0x140> @ imm = #-0x203e
  302fa2: ed9d 7b46    	vldr	d7, [sp, #280]
  302fa6: eef7 7bc7    	vcvt.f32.f64	s15, d7
  302faa: ab2e         	add	r3, sp, #0xb8
  302fac: 4618         	mov	r0, r3
  302fae: ee18 1a10    	vmov	r1, s16
  302fb2: ee17 2a90    	vmov	r2, s15
  302fb6: f28f fe9b    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x28fd36
  302fba: a930         	add	r1, sp, #0xc0
  302fbc: aa2c         	add	r2, sp, #0xb0
  302fbe: ab2e         	add	r3, sp, #0xb8
  302fc0: 4608         	mov	r0, r1
  302fc2: 4611         	mov	r1, r2
  302fc4: 461a         	mov	r2, r3
  302fc6: f7fd ffbd    	bl	0x300f44 <CollisionObject::setTeamId(int)+0x120> @ imm = #-0x2086
  302fca: ab30         	add	r3, sp, #0xc0
  302fcc: 4630         	mov	r0, r6
  302fce: 4619         	mov	r1, r3
  302fd0: 47a8         	blx	r5
  302fd2: ab06         	add	r3, sp, #0x18
  302fd4: 4618         	mov	r0, r3
  302fd6: f0b2 f49d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b293a
  302fda: ab05         	add	r3, sp, #0x14
  302fdc: 4618         	mov	r0, r3
  302fde: f087 f20d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x48741a
  302fe2: ab40         	add	r3, sp, #0x100
  302fe4: 4618         	mov	r0, r3
  302fe6: f087 f205    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x48740a
  302fea: aa44         	add	r2, sp, #0x110
  302fec: ab40         	add	r3, sp, #0x100
  302fee: 4610         	mov	r0, r2
  302ff0: e00e         	b	0x303010 <ConfigLayer::init()+0x1230> @ imm = #0x1c
  302ff2: bf00         	nop
  302ff4: f3af 8000    	nop.w
  303000: cd14         	ldm	r5!, {r2, r4}
  303002: 0063         	lsls	r3, r4, #0x1
  303004: 25d8         	movs	r5, #0xd8
  303006: 004c         	lsls	r4, r1, #0x1
  303008: cb40         	ldm	r3!, {r6}
  30300a: 0063         	lsls	r3, r4, #0x1
  30300c: 240c         	movs	r4, #0xc
  30300e: 004c         	lsls	r4, r1, #0x1
  303010: 4ae9         	ldr	r2, [pc, #0x3a4]        @ 0x3033b8 <ConfigLayer::init()+0x15d8>
  303012: 447a         	add	r2, pc
  303014: 4611         	mov	r1, r2
  303016: 461a         	mov	r2, r3
  303018: f0b3 f522    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4b3a44
  30301c: ab44         	add	r3, sp, #0x110
  30301e: 4618         	mov	r0, r3
  303020: f12e fb9e    	bl	0x431760 <InAppPurchaseBridge::isProductPurchased(std::string)> @ imm = #0x12e73c
  303024: 4603         	mov	r3, r0
  303026: 461d         	mov	r5, r3
  303028: ab44         	add	r3, sp, #0x110
  30302a: 4618         	mov	r0, r3
  30302c: f0b2 f472    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b28e4
  303030: ab40         	add	r3, sp, #0x100
  303032: 4618         	mov	r0, r3
  303034: f087 f1e2    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4873c4
  303038: 2d00         	cmp	r5, #0x0
  30303a: d01b         	beq	0x303074 <ConfigLayer::init()+0x1294> @ imm = #0x36
  30303c: ab03         	add	r3, sp, #0xc
  30303e: 681b         	ldr	r3, [r3]
  303040: 681b         	ldr	r3, [r3]
  303042: 33c8         	adds	r3, #0xc8
  303044: 681b         	ldr	r3, [r3]
  303046: aa03         	add	r2, sp, #0xc
  303048: 6811         	ldr	r1, [r2]
  30304a: aa03         	add	r2, sp, #0xc
  30304c: 6812         	ldr	r2, [r2]
  30304e: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  303052: 4608         	mov	r0, r1
  303054: 4611         	mov	r1, r2
  303056: 4798         	blx	r3
  303058: ab03         	add	r3, sp, #0xc
  30305a: 681b         	ldr	r3, [r3]
  30305c: 681b         	ldr	r3, [r3]
  30305e: 33c8         	adds	r3, #0xc8
  303060: 681b         	ldr	r3, [r3]
  303062: aa03         	add	r2, sp, #0xc
  303064: 6811         	ldr	r1, [r2]
  303066: aa03         	add	r2, sp, #0xc
  303068: 6812         	ldr	r2, [r2]
  30306a: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  30306e: 4608         	mov	r0, r1
  303070: 4611         	mov	r1, r2
  303072: 4798         	blx	r3
  303074: 4bd1         	ldr	r3, [pc, #0x344]        @ 0x3033bc <ConfigLayer::init()+0x15dc>
  303076: 447b         	add	r3, pc
  303078: 4618         	mov	r0, r3
  30307a: f0b2 f141    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4b2282
  30307e: 4603         	mov	r3, r0
  303080: 2220         	movs	r2, #0x20
  303082: 9200         	str	r2, [sp]
  303084: 4ace         	ldr	r2, [pc, #0x338]        @ 0x3033c0 <ConfigLayer::init()+0x15e0>
  303086: 447a         	add	r2, pc
  303088: 4610         	mov	r0, r2
  30308a: 4619         	mov	r1, r3
  30308c: 2220         	movs	r2, #0x20
  30308e: 2320         	movs	r3, #0x20
  303090: f2a2 f972    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x2a22e4
  303094: 4602         	mov	r2, r0
  303096: ab03         	add	r3, sp, #0xc
  303098: 681b         	ldr	r3, [r3]
  30309a: f8c3 213c    	str.w	r2, [r3, #0x13c]
  30309e: ab03         	add	r3, sp, #0xc
  3030a0: 681b         	ldr	r3, [r3]
  3030a2: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3030a6: 4618         	mov	r0, r3
  3030a8: f294 ff1e    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x294e3c
  3030ac: ab03         	add	r3, sp, #0xc
  3030ae: 681b         	ldr	r3, [r3]
  3030b0: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3030b4: 681b         	ldr	r3, [r3]
  3030b6: 334c         	adds	r3, #0x4c
  3030b8: 681d         	ldr	r5, [r3]
  3030ba: ab03         	add	r3, sp, #0xc
  3030bc: 681b         	ldr	r3, [r3]
  3030be: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3030c2: 461e         	mov	r6, r3
  3030c4: ab03         	add	r3, sp, #0xc
  3030c6: 681b         	ldr	r3, [r3]
  3030c8: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  3030cc: 681b         	ldr	r3, [r3]
  3030ce: 3350         	adds	r3, #0x50
  3030d0: 681b         	ldr	r3, [r3]
  3030d2: aa03         	add	r2, sp, #0xc
  3030d4: 6812         	ldr	r2, [r2]
  3030d6: f8d2 2140    	ldr.w	r2, [r2, #0x140]
  3030da: 4610         	mov	r0, r2
  3030dc: 4798         	blx	r3
  3030de: 4603         	mov	r3, r0
  3030e0: 681f         	ldr	r7, [r3]
  3030e2: ab03         	add	r3, sp, #0xc
  3030e4: 681b         	ldr	r3, [r3]
  3030e6: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  3030ea: 681b         	ldr	r3, [r3]
  3030ec: 3350         	adds	r3, #0x50
  3030ee: 681b         	ldr	r3, [r3]
  3030f0: aa03         	add	r2, sp, #0xc
  3030f2: 6812         	ldr	r2, [r2]
  3030f4: f8d2 2140    	ldr.w	r2, [r2, #0x140]
  3030f8: 4610         	mov	r0, r2
  3030fa: 4798         	blx	r3
  3030fc: 4603         	mov	r3, r0
  3030fe: 685b         	ldr	r3, [r3, #0x4]
  303100: aa2c         	add	r2, sp, #0xb0
  303102: 4610         	mov	r0, r2
  303104: 4639         	mov	r1, r7
  303106: 461a         	mov	r2, r3
  303108: f28f fdf2    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x28fbe4
  30310c: eddd 7a09    	vldr	s15, [sp, #36]
  303110: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  303114: ab40         	add	r3, sp, #0x100
  303116: 4618         	mov	r0, r3
  303118: ed9f 0ba5    	vldr	d0, [pc, #660]          @ 0x3033b0 <ConfigLayer::init()+0x15d0>
  30311c: eeb0 1b47    	vmov.f64	d1, d7
  303120: f7fd ff20    	bl	0x300f64 <CollisionObject::setTeamId(int)+0x140> @ imm = #-0x21c0
  303124: ed9d 8b40    	vldr	d8, [sp, #256]
  303128: ab03         	add	r3, sp, #0xc
  30312a: 681b         	ldr	r3, [r3]
  30312c: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  303130: 681b         	ldr	r3, [r3]
  303132: f503 73fe    	add.w	r3, r3, #0x1fc
  303136: 681b         	ldr	r3, [r3]
  303138: aa03         	add	r2, sp, #0xc
  30313a: 6812         	ldr	r2, [r2]
  30313c: f8d2 213c    	ldr.w	r2, [r2, #0x13c]
  303140: 4610         	mov	r0, r2
  303142: 4798         	blx	r3
  303144: 4607         	mov	r7, r0
  303146: ab05         	add	r3, sp, #0x14
  303148: 4618         	mov	r0, r3
  30314a: f087 f153    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4872a6
  30314e: aa06         	add	r2, sp, #0x18
  303150: ab05         	add	r3, sp, #0x14
  303152: 4610         	mov	r0, r2
  303154: 4639         	mov	r1, r7
  303156: 461a         	mov	r2, r3
  303158: f0b3 f482    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4b3904
  30315c: ab06         	add	r3, sp, #0x18
  30315e: 4618         	mov	r0, r3
  303160: f0b1 f77c    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x4b1ef8
  303164: 4603         	mov	r3, r0
  303166: ee07 3a90    	vmov	s15, r3
  30316a: eeb8 7a67    	vcvt.f32.u32	s14, s15
  30316e: ab08         	add	r3, sp, #0x20
  303170: edd3 7a00    	vldr	s15, [r3]
  303174: ee27 7a27    	vmul.f32	s14, s14, s15
  303178: ab07         	add	r3, sp, #0x1c
  30317a: edd3 7a00    	vldr	s15, [r3]
  30317e: ee27 7a27    	vmul.f32	s14, s14, s15
  303182: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  303186: eec7 7a27    	vdiv.f32	s15, s14, s15
  30318a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  30318e: ee38 7b47    	vsub.f64	d7, d8, d7
  303192: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  303196: eddd 7a09    	vldr	s15, [sp, #36]
  30319a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  30319e: ab44         	add	r3, sp, #0x110
  3031a0: 4618         	mov	r0, r3
  3031a2: ed9f 0b83    	vldr	d0, [pc, #524]          @ 0x3033b0 <ConfigLayer::init()+0x15d0>
  3031a6: eeb0 1b47    	vmov.f64	d1, d7
  3031aa: f7fd fedb    	bl	0x300f64 <CollisionObject::setTeamId(int)+0x140> @ imm = #-0x224a
  3031ae: ed9d 7b46    	vldr	d7, [sp, #280]
  3031b2: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3031b6: ab2e         	add	r3, sp, #0xb8
  3031b8: 4618         	mov	r0, r3
  3031ba: ee18 1a10    	vmov	r1, s16
  3031be: ee17 2a90    	vmov	r2, s15
  3031c2: f28f fd95    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x28fb2a
  3031c6: a930         	add	r1, sp, #0xc0
  3031c8: aa2c         	add	r2, sp, #0xb0
  3031ca: ab2e         	add	r3, sp, #0xb8
  3031cc: 4608         	mov	r0, r1
  3031ce: 4611         	mov	r1, r2
  3031d0: 461a         	mov	r2, r3
  3031d2: f7fd feb7    	bl	0x300f44 <CollisionObject::setTeamId(int)+0x120> @ imm = #-0x2292
  3031d6: ab30         	add	r3, sp, #0xc0
  3031d8: 4630         	mov	r0, r6
  3031da: 4619         	mov	r1, r3
  3031dc: 47a8         	blx	r5
  3031de: ab06         	add	r3, sp, #0x18
  3031e0: 4618         	mov	r0, r3
  3031e2: f0b2 f397    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b272e
  3031e6: ab05         	add	r3, sp, #0x14
  3031e8: 4618         	mov	r0, r3
  3031ea: f087 f107    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x48720e
  3031ee: ab03         	add	r3, sp, #0xc
  3031f0: 681b         	ldr	r3, [r3]
  3031f2: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3031f6: 681b         	ldr	r3, [r3]
  3031f8: 3340         	adds	r3, #0x40
  3031fa: 681b         	ldr	r3, [r3]
  3031fc: aa03         	add	r2, sp, #0xc
  3031fe: 6812         	ldr	r2, [r2]
  303200: f8d2 213c    	ldr.w	r2, [r2, #0x13c]
  303204: 4611         	mov	r1, r2
  303206: aa07         	add	r2, sp, #0x1c
  303208: 4608         	mov	r0, r1
  30320a: 6811         	ldr	r1, [r2]
  30320c: 4798         	blx	r3
  30320e: ab03         	add	r3, sp, #0xc
  303210: 681b         	ldr	r3, [r3]
  303212: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  303216: aa08         	add	r2, sp, #0x20
  303218: edd2 7a00    	vldr	s15, [r2]
  30321c: eefd 7ae7    	vcvt.s32.f32	s15, s15
  303220: ee17 2a90    	vmov	r2, s15
  303224: 4618         	mov	r0, r3
  303226: 4611         	mov	r1, r2
  303228: f2a2 fdac    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x2a2b58
  30322c: ab03         	add	r3, sp, #0xc
  30322e: 681b         	ldr	r3, [r3]
  303230: 681b         	ldr	r3, [r3]
  303232: 33c8         	adds	r3, #0xc8
  303234: 681b         	ldr	r3, [r3]
  303236: aa03         	add	r2, sp, #0xc
  303238: 6811         	ldr	r1, [r2]
  30323a: aa03         	add	r2, sp, #0xc
  30323c: 6812         	ldr	r2, [r2]
  30323e: f8d2 213c    	ldr.w	r2, [r2, #0x13c]
  303242: 4608         	mov	r0, r1
  303244: 4611         	mov	r1, r2
  303246: 4798         	blx	r3
  303248: ab03         	add	r3, sp, #0xc
  30324a: 681a         	ldr	r2, [r3]
  30324c: 4b5d         	ldr	r3, [pc, #0x174]        @ 0x3033c4 <ConfigLayer::init()+0x15e4>
  30324e: 58e3         	ldr	r3, [r4, r3]
  303250: 9340         	str	r3, [sp, #0x100]
  303252: 2300         	movs	r3, #0x0
  303254: 9341         	str	r3, [sp, #0x104]
  303256: 9b41         	ldr	r3, [sp, #0x104]
  303258: 9300         	str	r3, [sp]
  30325a: 9b40         	ldr	r3, [sp, #0x100]
  30325c: 9819         	ldr	r0, [sp, #0x64]
  30325e: 991a         	ldr	r1, [sp, #0x68]
  303260: f2b5 f864    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2b50c8
  303264: 4603         	mov	r3, r0
  303266: 9324         	str	r3, [sp, #0x90]
  303268: 9824         	ldr	r0, [sp, #0x90]
  30326a: 2100         	movs	r1, #0x0
  30326c: f2b1 ff66    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2b1ecc
  303270: 4602         	mov	r2, r0
  303272: ab03         	add	r3, sp, #0xc
  303274: 681b         	ldr	r3, [r3]
  303276: f8c3 2150    	str.w	r2, [r3, #0x150]
  30327a: ab03         	add	r3, sp, #0xc
  30327c: 681b         	ldr	r3, [r3]
  30327e: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  303282: 4618         	mov	r0, r3
  303284: f294 fe30    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x294c60
  303288: ab03         	add	r3, sp, #0xc
  30328a: 681b         	ldr	r3, [r3]
  30328c: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  303290: 681b         	ldr	r3, [r3]
  303292: 334c         	adds	r3, #0x4c
  303294: 681d         	ldr	r5, [r3]
  303296: ab03         	add	r3, sp, #0xc
  303298: 681b         	ldr	r3, [r3]
  30329a: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  30329e: 461e         	mov	r6, r3
  3032a0: ab44         	add	r3, sp, #0x110
  3032a2: 4618         	mov	r0, r3
  3032a4: f04f 0100    	mov.w	r1, #0x0
  3032a8: f2c4 2160    	movt	r1, #0x4260
  3032ac: f04f 4284    	mov.w	r2, #0x42000000
  3032b0: f28f fd1e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x28fa3c
  3032b4: ab44         	add	r3, sp, #0x110
  3032b6: 4630         	mov	r0, r6
  3032b8: 4619         	mov	r1, r3
  3032ba: 47a8         	blx	r5
  3032bc: ab03         	add	r3, sp, #0xc
  3032be: 681b         	ldr	r3, [r3]
  3032c0: 681b         	ldr	r3, [r3]
  3032c2: 33c8         	adds	r3, #0xc8
  3032c4: 681b         	ldr	r3, [r3]
  3032c6: aa03         	add	r2, sp, #0xc
  3032c8: 6811         	ldr	r1, [r2]
  3032ca: aa03         	add	r2, sp, #0xc
  3032cc: 6812         	ldr	r2, [r2]
  3032ce: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3032d2: 4608         	mov	r0, r1
  3032d4: 4611         	mov	r1, r2
  3032d6: 4798         	blx	r3
  3032d8: 4b3b         	ldr	r3, [pc, #0xec]         @ 0x3033c8 <ConfigLayer::init()+0x15e8>
  3032da: 447b         	add	r3, pc
  3032dc: 4618         	mov	r0, r3
  3032de: f2d5 f811    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2d5022
  3032e2: 4602         	mov	r2, r0
  3032e4: ab03         	add	r3, sp, #0xc
  3032e6: 681b         	ldr	r3, [r3]
  3032e8: f8c3 214c    	str.w	r2, [r3, #0x14c]
  3032ec: ab03         	add	r3, sp, #0xc
  3032ee: 681b         	ldr	r3, [r3]
  3032f0: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3032f4: 4618         	mov	r0, r3
  3032f6: f294 fdf7    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x294bee
  3032fa: ab03         	add	r3, sp, #0xc
  3032fc: 681b         	ldr	r3, [r3]
  3032fe: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  303302: 681b         	ldr	r3, [r3]
  303304: 3340         	adds	r3, #0x40
  303306: 681b         	ldr	r3, [r3]
  303308: aa03         	add	r2, sp, #0xc
  30330a: 6812         	ldr	r2, [r2]
  30330c: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  303310: 4610         	mov	r0, r2
  303312: f64c 41cd    	movw	r1, #0xcccd
  303316: f6c3 714c    	movt	r1, #0x3f4c
  30331a: 4798         	blx	r3
  30331c: ab03         	add	r3, sp, #0xc
  30331e: 681b         	ldr	r3, [r3]
  303320: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  303324: 681b         	ldr	r3, [r3]
  303326: 334c         	adds	r3, #0x4c
  303328: 681d         	ldr	r5, [r3]
  30332a: ab03         	add	r3, sp, #0xc
  30332c: 681b         	ldr	r3, [r3]
  30332e: f8d3 614c    	ldr.w	r6, [r3, #0x14c]
  303332: ab03         	add	r3, sp, #0xc
  303334: 681b         	ldr	r3, [r3]
  303336: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  30333a: 681b         	ldr	r3, [r3]
  30333c: 3350         	adds	r3, #0x50
  30333e: 681b         	ldr	r3, [r3]
  303340: aa03         	add	r2, sp, #0xc
  303342: 6812         	ldr	r2, [r2]
  303344: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  303348: 4610         	mov	r0, r2
  30334a: 4798         	blx	r3
  30334c: 4603         	mov	r3, r0
  30334e: 4630         	mov	r0, r6
  303350: 4619         	mov	r1, r3
  303352: 47a8         	blx	r5
  303354: ab03         	add	r3, sp, #0xc
  303356: 681b         	ldr	r3, [r3]
  303358: 681b         	ldr	r3, [r3]
  30335a: 33c8         	adds	r3, #0xc8
  30335c: 681b         	ldr	r3, [r3]
  30335e: aa03         	add	r2, sp, #0xc
  303360: 6811         	ldr	r1, [r2]
  303362: aa03         	add	r2, sp, #0xc
  303364: 6812         	ldr	r2, [r2]
  303366: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  30336a: 4608         	mov	r0, r1
  30336c: 4611         	mov	r1, r2
  30336e: 4798         	blx	r3
  303370: ab03         	add	r3, sp, #0xc
  303372: 681a         	ldr	r2, [r3]
  303374: 4b15         	ldr	r3, [pc, #0x54]         @ 0x3033cc <ConfigLayer::init()+0x15ec>
  303376: 58e3         	ldr	r3, [r4, r3]
  303378: 9344         	str	r3, [sp, #0x110]
  30337a: 2300         	movs	r3, #0x0
  30337c: 9345         	str	r3, [sp, #0x114]
  30337e: 9b45         	ldr	r3, [sp, #0x114]
  303380: 9300         	str	r3, [sp]
  303382: 9b44         	ldr	r3, [sp, #0x110]
  303384: 981b         	ldr	r0, [sp, #0x6c]
  303386: 991c         	ldr	r1, [sp, #0x70]
  303388: f2b4 ffd0    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2b4fa0
  30338c: 4603         	mov	r3, r0
  30338e: 9325         	str	r3, [sp, #0x94]
  303390: 9825         	ldr	r0, [sp, #0x94]
  303392: 2100         	movs	r1, #0x0
  303394: f2b1 fed2    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2b1da4
  303398: 4602         	mov	r2, r0
  30339a: ab03         	add	r3, sp, #0xc
  30339c: 681b         	ldr	r3, [r3]
  30339e: f8c3 2158    	str.w	r2, [r3, #0x158]
  3033a2: ab03         	add	r3, sp, #0xc
  3033a4: 681b         	ldr	r3, [r3]
  3033a6: f8d3 3158    	ldr.w	r3, [r3, #0x158]
  3033aa: 4618         	mov	r0, r3
  3033ac: e010         	b	0x3033d0 <ConfigLayer::init()+0x15f0> @ imm = #0x20
  3033ae: bf00         	nop
  3033b8: 223e         	movs	r2, #0x3e
  3033ba: 004c         	lsls	r4, r1, #0x1
  3033bc: c8f6         	ldm	r0!, {r1, r2, r4, r5, r6, r7}
  3033be: 0063         	lsls	r3, r4, #0x1
  3033c0: 21e6         	movs	r1, #0xe6
  3033c2: 004c         	lsls	r4, r1, #0x1
  3033c4: d948         	bls	0x303458 <ConfigLayer::init()+0x1678> @ imm = #0x90
  3033c6: ffff 1f9a    	<unknown>
  3033ca: 004c         	lsls	r4, r1, #0x1
  3033cc: d94c         	bls	0x303468 <ConfigLayer::init()+0x1688> @ imm = #0x98
  3033ce: ffff f294    	vrshr.u64	d31, d4, #0x1
  3033d2: fd8a ab03    	<unknown>
  3033d6: 681b         	ldr	r3, [r3]
  3033d8: f8d3 3158    	ldr.w	r3, [r3, #0x158]
  3033dc: 681b         	ldr	r3, [r3]
  3033de: 334c         	adds	r3, #0x4c
  3033e0: 681c         	ldr	r4, [r3]
  3033e2: ab03         	add	r3, sp, #0xc
  3033e4: 681b         	ldr	r3, [r3]
  3033e6: f8d3 3158    	ldr.w	r3, [r3, #0x158]
  3033ea: 461d         	mov	r5, r3
  3033ec: ab30         	add	r3, sp, #0xc0
  3033ee: 4618         	mov	r0, r3
  3033f0: f04f 0100    	mov.w	r1, #0x0
  3033f4: f2c4 3107    	movt	r1, #0x4307
  3033f8: f04f 4284    	mov.w	r2, #0x42000000
  3033fc: f28f fc78    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x28f8f0
  303400: ab30         	add	r3, sp, #0xc0
  303402: 4628         	mov	r0, r5
  303404: 4619         	mov	r1, r3
  303406: 47a0         	blx	r4
  303408: ab03         	add	r3, sp, #0xc
  30340a: 681b         	ldr	r3, [r3]
  30340c: 681b         	ldr	r3, [r3]
  30340e: 33c8         	adds	r3, #0xc8
  303410: 681b         	ldr	r3, [r3]
  303412: aa03         	add	r2, sp, #0xc
  303414: 6811         	ldr	r1, [r2]
  303416: aa03         	add	r2, sp, #0xc
  303418: 6812         	ldr	r2, [r2]
  30341a: f8d2 2158    	ldr.w	r2, [r2, #0x158]
  30341e: 4608         	mov	r0, r1
  303420: 4611         	mov	r1, r2
  303422: 4798         	blx	r3
  303424: f11f fd8a    	bl	0x422f3c <ApplicationInterface::isVideoRecording()> @ imm = #0x11fb14
  303428: 4603         	mov	r3, r0
  30342a: 2b00         	cmp	r3, #0x0
  30342c: d00a         	beq	0x303444 <ConfigLayer::init()+0x1664> @ imm = #0x14
  30342e: 4b57         	ldr	r3, [pc, #0x15c]        @ 0x30358c <ConfigLayer::init()+0x17ac>
  303430: 447b         	add	r3, pc
  303432: 4618         	mov	r0, r3
  303434: f2d4 ff66    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2d4ecc
  303438: 4602         	mov	r2, r0
  30343a: ab03         	add	r3, sp, #0xc
  30343c: 681b         	ldr	r3, [r3]
  30343e: f8c3 2154    	str.w	r2, [r3, #0x154]
  303442: e009         	b	0x303458 <ConfigLayer::init()+0x1678> @ imm = #0x12
  303444: 4b52         	ldr	r3, [pc, #0x148]        @ 0x303590 <ConfigLayer::init()+0x17b0>
  303446: 447b         	add	r3, pc
  303448: 4618         	mov	r0, r3
  30344a: f2d4 ff5b    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2d4eb6
  30344e: 4602         	mov	r2, r0
  303450: ab03         	add	r3, sp, #0xc
  303452: 681b         	ldr	r3, [r3]
  303454: f8c3 2154    	str.w	r2, [r3, #0x154]
  303458: ab03         	add	r3, sp, #0xc
  30345a: 681b         	ldr	r3, [r3]
  30345c: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  303460: 4618         	mov	r0, r3
  303462: f294 fd41    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x294a82
  303466: ab03         	add	r3, sp, #0xc
  303468: 681b         	ldr	r3, [r3]
  30346a: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  30346e: 681b         	ldr	r3, [r3]
  303470: 334c         	adds	r3, #0x4c
  303472: 681c         	ldr	r4, [r3]
  303474: ab03         	add	r3, sp, #0xc
  303476: 681b         	ldr	r3, [r3]
  303478: f8d3 5154    	ldr.w	r5, [r3, #0x154]
  30347c: ab03         	add	r3, sp, #0xc
  30347e: 681b         	ldr	r3, [r3]
  303480: f8d3 3158    	ldr.w	r3, [r3, #0x158]
  303484: 681b         	ldr	r3, [r3]
  303486: 3350         	adds	r3, #0x50
  303488: 681b         	ldr	r3, [r3]
  30348a: aa03         	add	r2, sp, #0xc
  30348c: 6812         	ldr	r2, [r2]
  30348e: f8d2 2158    	ldr.w	r2, [r2, #0x158]
  303492: 4610         	mov	r0, r2
  303494: 4798         	blx	r3
  303496: 4603         	mov	r3, r0
  303498: 4628         	mov	r0, r5
  30349a: 4619         	mov	r1, r3
  30349c: 47a0         	blx	r4
  30349e: ab03         	add	r3, sp, #0xc
  3034a0: 681b         	ldr	r3, [r3]
  3034a2: 681b         	ldr	r3, [r3]
  3034a4: 33c8         	adds	r3, #0xc8
  3034a6: 681b         	ldr	r3, [r3]
  3034a8: aa03         	add	r2, sp, #0xc
  3034aa: 6811         	ldr	r1, [r2]
  3034ac: aa03         	add	r2, sp, #0xc
  3034ae: 6812         	ldr	r2, [r2]
  3034b0: f8d2 2154    	ldr.w	r2, [r2, #0x154]
  3034b4: 4608         	mov	r0, r1
  3034b6: 4611         	mov	r1, r2
  3034b8: 4798         	blx	r3
  3034ba: ab03         	add	r3, sp, #0xc
  3034bc: 681b         	ldr	r3, [r3]
  3034be: 4618         	mov	r0, r3
  3034c0: f28d fe34    	bl	0x59112c <cocos2d::CCNode::scheduleUpdate()> @ imm = #0x28dc68
  3034c4: ab03         	add	r3, sp, #0xc
  3034c6: 6818         	ldr	r0, [r3]
  3034c8: f000 f930    	bl	0x30372c <ConfigLayer::updateLabels()> @ imm = #0x260
  3034cc: 2301         	movs	r3, #0x1
  3034ce: e057         	b	0x303580 <ConfigLayer::init()+0x17a0> @ imm = #0xae
  3034d0: ab06         	add	r3, sp, #0x18
  3034d2: 4618         	mov	r0, r3
  3034d4: f0b2 f21e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b243c
  3034d8: e7ff         	b	0x3034da <ConfigLayer::init()+0x16fa> @ imm = #-0x2
  3034da: ab05         	add	r3, sp, #0x14
  3034dc: 4618         	mov	r0, r3
  3034de: f086 f78d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x486f1a
  3034e2: f084 f5e3    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x484bc6
  3034e6: ab06         	add	r3, sp, #0x18
  3034e8: 4618         	mov	r0, r3
  3034ea: f0b2 f213    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b2426
  3034ee: e7ff         	b	0x3034f0 <ConfigLayer::init()+0x1710> @ imm = #-0x2
  3034f0: ab05         	add	r3, sp, #0x14
  3034f2: 4618         	mov	r0, r3
  3034f4: f086 f782    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x486f04
  3034f8: f084 f5d8    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x484bb0
  3034fc: ab06         	add	r3, sp, #0x18
  3034fe: 4618         	mov	r0, r3
  303500: f0b2 f208    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b2410
  303504: e7ff         	b	0x303506 <ConfigLayer::init()+0x1726> @ imm = #-0x2
  303506: ab05         	add	r3, sp, #0x14
  303508: 4618         	mov	r0, r3
  30350a: f086 f777    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x486eee
  30350e: f084 f5cd    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x484b9a
  303512: ab06         	add	r3, sp, #0x18
  303514: 4618         	mov	r0, r3
  303516: f0b2 f1fd    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b23fa
  30351a: e7ff         	b	0x30351c <ConfigLayer::init()+0x173c> @ imm = #-0x2
  30351c: ab05         	add	r3, sp, #0x14
  30351e: 4618         	mov	r0, r3
  303520: f086 f76c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x486ed8
  303524: f084 f5c2    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x484b84
  303528: ab06         	add	r3, sp, #0x18
  30352a: 4618         	mov	r0, r3
  30352c: f0b2 f1f2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b23e4
  303530: e7ff         	b	0x303532 <ConfigLayer::init()+0x1752> @ imm = #-0x2
  303532: ab05         	add	r3, sp, #0x14
  303534: 4618         	mov	r0, r3
  303536: f086 f761    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x486ec2
  30353a: f084 f5b7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x484b6e
  30353e: ab06         	add	r3, sp, #0x18
  303540: 4618         	mov	r0, r3
  303542: f0b2 f1e7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b23ce
  303546: e7ff         	b	0x303548 <ConfigLayer::init()+0x1768> @ imm = #-0x2
  303548: ab05         	add	r3, sp, #0x14
  30354a: 4618         	mov	r0, r3
  30354c: f086 f756    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x486eac
  303550: f084 f5ac    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x484b58
  303554: ab44         	add	r3, sp, #0x110
  303556: 4618         	mov	r0, r3
  303558: f0b2 f1dc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b23b8
  30355c: e7ff         	b	0x30355e <ConfigLayer::init()+0x177e> @ imm = #-0x2
  30355e: ab40         	add	r3, sp, #0x100
  303560: 4618         	mov	r0, r3
  303562: f086 f74b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x486e96
  303566: f084 f5a1    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x484b42
  30356a: ab06         	add	r3, sp, #0x18
  30356c: 4618         	mov	r0, r3
  30356e: f0b2 f1d1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b23a2
  303572: e7ff         	b	0x303574 <ConfigLayer::init()+0x1794> @ imm = #-0x2
  303574: ab05         	add	r3, sp, #0x14
  303576: 4618         	mov	r0, r3
  303578: f086 f740    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x486e80
  30357c: f084 f596    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x484b2c
  303580: 4618         	mov	r0, r3
  303582: b049         	add	sp, #0x124
  303584: ecbd 8b02    	vpop	{d8}
  303588: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x303589); words below are literal-pool data ---
  30358a: bf00         	nop
  30358c: 1e4c         	subs	r4, r1, #0x1
  30358e: 004c         	lsls	r4, r1, #0x1
  303590: 1e42         	subs	r2, r0, #0x1
  303592: 004c         	lsls	r4, r1, #0x1

// ==== ConfigLayer::~ConfigLayer
//      file offset 0x303598 (= ELF address; Ghidra 0x313598), 328 bytes, Thumb-2
  303598: b500         	push	{lr}
  30359a: b083         	sub	sp, #0xc
  30359c: 9001         	str	r0, [sp, #0x4]
  30359e: 4b4e         	ldr	r3, [pc, #0x138]        @ 0x3036d8 <ConfigLayer::~ConfigLayer()+0x140>
  3035a0: 447b         	add	r3, pc
  3035a2: 9a01         	ldr	r2, [sp, #0x4]
  3035a4: 494d         	ldr	r1, [pc, #0x134]        @ 0x3036dc <ConfigLayer::~ConfigLayer()+0x144>
  3035a6: 5859         	ldr	r1, [r3, r1]
  3035a8: 3108         	adds	r1, #0x8
  3035aa: 6011         	str	r1, [r2]
  3035ac: 9a01         	ldr	r2, [sp, #0x4]
  3035ae: 494b         	ldr	r1, [pc, #0x12c]        @ 0x3036dc <ConfigLayer::~ConfigLayer()+0x144>
  3035b0: 5859         	ldr	r1, [r3, r1]
  3035b2: f501 7104    	add.w	r1, r1, #0x210
  3035b6: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  3035ba: 9a01         	ldr	r2, [sp, #0x4]
  3035bc: 4947         	ldr	r1, [pc, #0x11c]        @ 0x3036dc <ConfigLayer::~ConfigLayer()+0x144>
  3035be: 5859         	ldr	r1, [r3, r1]
  3035c0: f501 7110    	add.w	r1, r1, #0x240
  3035c4: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  3035c8: 9a01         	ldr	r2, [sp, #0x4]
  3035ca: 4944         	ldr	r1, [pc, #0x110]        @ 0x3036dc <ConfigLayer::~ConfigLayer()+0x144>
  3035cc: 585b         	ldr	r3, [r3, r1]
  3035ce: f503 7313    	add.w	r3, r3, #0x24c
  3035d2: f8c2 30ec    	str.w	r3, [r2, #0xec]
  3035d6: 9b01         	ldr	r3, [sp, #0x4]
  3035d8: 4618         	mov	r0, r3
  3035da: 2100         	movs	r1, #0x0
  3035dc: f28d f834    	bl	0x590648 <cocos2d::CCNode::removeAllChildrenWithCleanup(bool)> @ imm = #0x28d068
  3035e0: 9b01         	ldr	r3, [sp, #0x4]
  3035e2: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3035e6: 4618         	mov	r0, r3
  3035e8: f294 fc66    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2948cc
  3035ec: 9b01         	ldr	r3, [sp, #0x4]
  3035ee: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  3035f2: 4618         	mov	r0, r3
  3035f4: f294 fc60    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2948c0
  3035f8: 9b01         	ldr	r3, [sp, #0x4]
  3035fa: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3035fe: 4618         	mov	r0, r3
  303600: f294 fc5a    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2948b4
  303604: 9b01         	ldr	r3, [sp, #0x4]
  303606: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  30360a: 4618         	mov	r0, r3
  30360c: f294 fc54    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2948a8
  303610: 9b01         	ldr	r3, [sp, #0x4]
  303612: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  303616: 4618         	mov	r0, r3
  303618: f294 fc4e    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x29489c
  30361c: 9b01         	ldr	r3, [sp, #0x4]
  30361e: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  303622: 4618         	mov	r0, r3
  303624: f294 fc48    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x294890
  303628: 9b01         	ldr	r3, [sp, #0x4]
  30362a: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  30362e: 4618         	mov	r0, r3
  303630: f294 fc42    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x294884
  303634: 9b01         	ldr	r3, [sp, #0x4]
  303636: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  30363a: 4618         	mov	r0, r3
  30363c: f294 fc3c    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x294878
  303640: 9b01         	ldr	r3, [sp, #0x4]
  303642: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  303646: 4618         	mov	r0, r3
  303648: f294 fc36    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x29486c
  30364c: 9b01         	ldr	r3, [sp, #0x4]
  30364e: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  303652: 4618         	mov	r0, r3
  303654: f294 fc30    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x294860
  303658: 9b01         	ldr	r3, [sp, #0x4]
  30365a: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  30365e: 4618         	mov	r0, r3
  303660: f294 fc2a    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x294854
  303664: 9b01         	ldr	r3, [sp, #0x4]
  303666: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  30366a: 4618         	mov	r0, r3
  30366c: f294 fc24    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x294848
  303670: 9b01         	ldr	r3, [sp, #0x4]
  303672: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  303676: 4618         	mov	r0, r3
  303678: f294 fc1e    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x29483c
  30367c: 9b01         	ldr	r3, [sp, #0x4]
  30367e: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  303682: 4618         	mov	r0, r3
  303684: f294 fc18    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x294830
  303688: 9b01         	ldr	r3, [sp, #0x4]
  30368a: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  30368e: 4618         	mov	r0, r3
  303690: f294 fc12    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x294824
  303694: 9b01         	ldr	r3, [sp, #0x4]
  303696: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  30369a: 4618         	mov	r0, r3
  30369c: f294 fc0c    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x294818
  3036a0: 9b01         	ldr	r3, [sp, #0x4]
  3036a2: f8d3 3158    	ldr.w	r3, [r3, #0x158]
  3036a6: 4618         	mov	r0, r3
  3036a8: f294 fc06    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x29480c
  3036ac: 9b01         	ldr	r3, [sp, #0x4]
  3036ae: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3036b2: 4618         	mov	r0, r3
  3036b4: f294 fc00    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x294800
  3036b8: 9b01         	ldr	r3, [sp, #0x4]
  3036ba: 4618         	mov	r0, r3
  3036bc: f2a9 fd46    	bl	0x5ad14c <cocos2d::CCLayer::~CCLayer()> @ imm = #0x2a9a8c
  3036c0: 2300         	movs	r3, #0x0
  3036c2: 2b00         	cmp	r3, #0x0
  3036c4: d002         	beq	0x3036cc <ConfigLayer::~ConfigLayer()+0x134> @ imm = #0x4
  3036c6: 9801         	ldr	r0, [sp, #0x4]
  3036c8: f084 f4ec    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4849d8
  3036cc: 9b01         	ldr	r3, [sp, #0x4]
  3036ce: 4618         	mov	r0, r3
  3036d0: b003         	add	sp, #0xc
  3036d2: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3036d5); words below are literal-pool data ---
  3036d6: bf00         	nop
  3036d8: f468 0062    	orn	r0, r8, #0xe20000
  3036dc: d928         	bls	0x303730 <ConfigLayer::updateLabels()+0x4> @ imm = #0x50
  3036de: ffff f1a0    	<unknown>

// ==== ConfigLayer::~ConfigLayer
//      file offset 0x3036e0 (= ELF address; Ghidra 0x3136e0), 8 bytes, Thumb-2
  3036e0: f1a0 00e4    	sub.w	r0, r0, #0xe4
  3036e4: f7ff bf58    	b.w	0x303598 <ConfigLayer::~ConfigLayer()> @ imm = #-0x150

// ==== ConfigLayer::~ConfigLayer
//      file offset 0x3036e8 (= ELF address; Ghidra 0x3136e8), 28 bytes, Thumb-2
  3036e8: b500         	push	{lr}
  3036ea: b083         	sub	sp, #0xc
  3036ec: 9001         	str	r0, [sp, #0x4]
  3036ee: 9801         	ldr	r0, [sp, #0x4]
  3036f0: f7ff ff52    	bl	0x303598 <ConfigLayer::~ConfigLayer()> @ imm = #-0x15c
  3036f4: 9801         	ldr	r0, [sp, #0x4]
  3036f6: f084 f4d5    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4849aa
  3036fa: 9b01         	ldr	r3, [sp, #0x4]
  3036fc: 4618         	mov	r0, r3
  3036fe: b003         	add	sp, #0xc
  303700: f85d fb04    	ldr	pc, [sp], #4

// ==== ConfigLayer::~ConfigLayer
//      file offset 0x303704 (= ELF address; Ghidra 0x313704), 8 bytes, Thumb-2
  303704: f1a0 00e4    	sub.w	r0, r0, #0xe4
  303708: f7ff bfee    	b.w	0x3036e8 <ConfigLayer::~ConfigLayer()> @ imm = #-0x24

// ==== ConfigLayer::update
//      file offset 0x30370c (= ELF address; Ghidra 0x31370c), 30 bytes, Thumb-2
  30370c: b082         	sub	sp, #0x8
  30370e: 9001         	str	r0, [sp, #0x4]
  303710: 9100         	str	r1, [sp]
  303712: 9b01         	ldr	r3, [sp, #0x4]
  303714: ed93 7a42    	vldr	s14, [r3, #264]
  303718: eddd 7a00    	vldr	s15, [sp]
  30371c: ee77 7a27    	vadd.f32	s15, s14, s15
  303720: 9b01         	ldr	r3, [sp, #0x4]
  303722: edc3 7a42    	vstr	s15, [r3, #264]
  303726: b002         	add	sp, #0x8
  303728: 4770         	bx	lr

// ==== ConfigLayer::updateLabels
//      file offset 0x30372c (= ELF address; Ghidra 0x31372c), 264 bytes, Thumb-2
  30372c: b510         	push	{r4, lr}
  30372e: b082         	sub	sp, #0x8
  303730: 9001         	str	r0, [sp, #0x4]
  303732: 4c3b         	ldr	r4, [pc, #0xec]         @ 0x303820 <ConfigLayer::updateLabels()+0xf4>
  303734: 447c         	add	r4, pc
  303736: 9b01         	ldr	r3, [sp, #0x4]
  303738: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  30373c: 681b         	ldr	r3, [r3]
  30373e: f503 73d2    	add.w	r3, r3, #0x1a4
  303742: 681a         	ldr	r2, [r3]
  303744: 9b01         	ldr	r3, [sp, #0x4]
  303746: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  30374a: 4619         	mov	r1, r3
  30374c: 4b35         	ldr	r3, [pc, #0xd4]         @ 0x303824 <ConfigLayer::updateLabels()+0xf8>
  30374e: 58e3         	ldr	r3, [r4, r3]
  303750: 681b         	ldr	r3, [r3]
  303752: f893 3028    	ldrb.w	r3, [r3, #0x28]
  303756: 2b00         	cmp	r3, #0x0
  303758: d001         	beq	0x30375e <ConfigLayer::updateLabels()+0x32> @ imm = #0x2
  30375a: 23ff         	movs	r3, #0xff
  30375c: e000         	b	0x303760 <ConfigLayer::updateLabels()+0x34> @ imm = #0x0
  30375e: 2364         	movs	r3, #0x64
  303760: 4608         	mov	r0, r1
  303762: 4619         	mov	r1, r3
  303764: 4790         	blx	r2
  303766: 9b01         	ldr	r3, [sp, #0x4]
  303768: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  30376c: 681b         	ldr	r3, [r3]
  30376e: f503 73d2    	add.w	r3, r3, #0x1a4
  303772: 681a         	ldr	r2, [r3]
  303774: 9b01         	ldr	r3, [sp, #0x4]
  303776: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  30377a: 4619         	mov	r1, r3
  30377c: 4b29         	ldr	r3, [pc, #0xa4]         @ 0x303824 <ConfigLayer::updateLabels()+0xf8>
  30377e: 58e3         	ldr	r3, [r4, r3]
  303780: 681b         	ldr	r3, [r3]
  303782: f893 3029    	ldrb.w	r3, [r3, #0x29]
  303786: 2b00         	cmp	r3, #0x0
  303788: d001         	beq	0x30378e <ConfigLayer::updateLabels()+0x62> @ imm = #0x2
  30378a: 23ff         	movs	r3, #0xff
  30378c: e000         	b	0x303790 <ConfigLayer::updateLabels()+0x64> @ imm = #0x0
  30378e: 2364         	movs	r3, #0x64
  303790: 4608         	mov	r0, r1
  303792: 4619         	mov	r1, r3
  303794: 4790         	blx	r2
  303796: 9b01         	ldr	r3, [sp, #0x4]
  303798: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  30379c: 681b         	ldr	r3, [r3]
  30379e: f503 73d2    	add.w	r3, r3, #0x1a4
  3037a2: 681a         	ldr	r2, [r3]
  3037a4: 9b01         	ldr	r3, [sp, #0x4]
  3037a6: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3037aa: 4619         	mov	r1, r3
  3037ac: 4b1e         	ldr	r3, [pc, #0x78]         @ 0x303828 <ConfigLayer::updateLabels()+0xfc>
  3037ae: 58e3         	ldr	r3, [r4, r3]
  3037b0: 781b         	ldrb	r3, [r3]
  3037b2: 2b00         	cmp	r3, #0x0
  3037b4: d001         	beq	0x3037ba <ConfigLayer::updateLabels()+0x8e> @ imm = #0x2
  3037b6: 23ff         	movs	r3, #0xff
  3037b8: e000         	b	0x3037bc <ConfigLayer::updateLabels()+0x90> @ imm = #0x0
  3037ba: 2364         	movs	r3, #0x64
  3037bc: 4608         	mov	r0, r1
  3037be: 4619         	mov	r1, r3
  3037c0: 4790         	blx	r2
  3037c2: 9b01         	ldr	r3, [sp, #0x4]
  3037c4: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  3037c8: 681b         	ldr	r3, [r3]
  3037ca: f503 73d2    	add.w	r3, r3, #0x1a4
  3037ce: 681a         	ldr	r2, [r3]
  3037d0: 9b01         	ldr	r3, [sp, #0x4]
  3037d2: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  3037d6: 4619         	mov	r1, r3
  3037d8: 4b14         	ldr	r3, [pc, #0x50]         @ 0x30382c <ConfigLayer::updateLabels()+0x100>
  3037da: 58e3         	ldr	r3, [r4, r3]
  3037dc: 781b         	ldrb	r3, [r3]
  3037de: 2b00         	cmp	r3, #0x0
  3037e0: d001         	beq	0x3037e6 <ConfigLayer::updateLabels()+0xba> @ imm = #0x2
  3037e2: 23ff         	movs	r3, #0xff
  3037e4: e000         	b	0x3037e8 <ConfigLayer::updateLabels()+0xbc> @ imm = #0x0
  3037e6: 2364         	movs	r3, #0x64
  3037e8: 4608         	mov	r0, r1
  3037ea: 4619         	mov	r1, r3
  3037ec: 4790         	blx	r2
  3037ee: 9b01         	ldr	r3, [sp, #0x4]
  3037f0: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3037f4: 681b         	ldr	r3, [r3]
  3037f6: f503 73d2    	add.w	r3, r3, #0x1a4
  3037fa: 681a         	ldr	r2, [r3]
  3037fc: 9b01         	ldr	r3, [sp, #0x4]
  3037fe: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  303802: 4619         	mov	r1, r3
  303804: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x303830 <ConfigLayer::updateLabels()+0x104>
  303806: 58e3         	ldr	r3, [r4, r3]
  303808: 781b         	ldrb	r3, [r3]
  30380a: 2b00         	cmp	r3, #0x0
  30380c: d001         	beq	0x303812 <ConfigLayer::updateLabels()+0xe6> @ imm = #0x2
  30380e: 23ff         	movs	r3, #0xff
  303810: e000         	b	0x303814 <ConfigLayer::updateLabels()+0xe8> @ imm = #0x0
  303812: 2364         	movs	r3, #0x64
  303814: 4608         	mov	r0, r1
  303816: 4619         	mov	r1, r3
  303818: 4790         	blx	r2
  30381a: b002         	add	sp, #0x8
  30381c: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x30381d); words below are literal-pool data ---
  30381e: bf00         	nop
  303820: f2d4 0062    	<unknown>
  303824: d730         	bvc	0x303888 <ConfigLayer::onBack(cocos2d::CCObject*)+0x54> @ imm = #0x60
  303826: ffff d794    	vqshl.u64	d29, d4, #0x3f
  30382a: ffff d79c    	vqshl.u64	d29, d12, #0x3f
  30382e: ffff d7a4    	<unknown>
  303832: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== ConfigLayer::onBack
//      file offset 0x303834 (= ELF address; Ghidra 0x313834), 208 bytes, Thumb-2
  303834: b530         	push	{r4, r5, lr}
  303836: b083         	sub	sp, #0xc
  303838: 9001         	str	r0, [sp, #0x4]
  30383a: 9100         	str	r1, [sp]
  30383c: 4c2a         	ldr	r4, [pc, #0xa8]         @ 0x3038e8 <ConfigLayer::onBack(cocos2d::CCObject*)+0xb4>
  30383e: 447c         	add	r4, pc
  303840: 9b01         	ldr	r3, [sp, #0x4]
  303842: f893 310c    	ldrb.w	r3, [r3, #0x10c]
  303846: 2b00         	cmp	r3, #0x0
  303848: d000         	beq	0x30384c <ConfigLayer::onBack(cocos2d::CCObject*)+0x18> @ imm = #0x0
  30384a: e04b         	b	0x3038e4 <ConfigLayer::onBack(cocos2d::CCObject*)+0xb0> @ imm = #0x96
  30384c: 9b01         	ldr	r3, [sp, #0x4]
  30384e: 2201         	movs	r2, #0x1
  303850: f883 210c    	strb.w	r2, [r3, #0x10c]
  303854: 9b01         	ldr	r3, [sp, #0x4]
  303856: 4618         	mov	r0, r3
  303858: f28d fca6    	bl	0x5911a8 <cocos2d::CCNode::unscheduleUpdate()> @ imm = #0x28d94c
  30385c: 4b23         	ldr	r3, [pc, #0x8c]         @ 0x3038ec <ConfigLayer::onBack(cocos2d::CCObject*)+0xb8>
  30385e: 58e3         	ldr	r3, [r4, r3]
  303860: 681b         	ldr	r3, [r3]
  303862: 4618         	mov	r0, r3
  303864: 210d         	movs	r1, #0xd
  303866: f0f4 faab    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xf4556
  30386a: f2de fedf    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2dedbe
  30386e: 4602         	mov	r2, r0
  303870: 4b1f         	ldr	r3, [pc, #0x7c]         @ 0x3038f0 <ConfigLayer::onBack(cocos2d::CCObject*)+0xbc>
  303872: 58e3         	ldr	r3, [r4, r3]
  303874: 781b         	ldrb	r3, [r3]
  303876: 4610         	mov	r0, r2
  303878: 4a1e         	ldr	r2, [pc, #0x78]         @ 0x3038f4 <ConfigLayer::onBack(cocos2d::CCObject*)+0xc0>
  30387a: 447a         	add	r2, pc
  30387c: 4611         	mov	r1, r2
  30387e: 461a         	mov	r2, r3
  303880: f2de fe7a    	bl	0x5e2578 <cocos2d::CCUserDefault::setBoolForKey(char const*, bool)> @ imm = #0x2decf4
  303884: f2de fed2    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2deda4
  303888: 4602         	mov	r2, r0
  30388a: 4b18         	ldr	r3, [pc, #0x60]         @ 0x3038ec <ConfigLayer::onBack(cocos2d::CCObject*)+0xb8>
  30388c: 58e3         	ldr	r3, [r4, r3]
  30388e: 681b         	ldr	r3, [r3]
  303890: f893 3028    	ldrb.w	r3, [r3, #0x28]
  303894: 4610         	mov	r0, r2
  303896: 4a18         	ldr	r2, [pc, #0x60]         @ 0x3038f8 <ConfigLayer::onBack(cocos2d::CCObject*)+0xc4>
  303898: 447a         	add	r2, pc
  30389a: 4611         	mov	r1, r2
  30389c: 461a         	mov	r2, r3
  30389e: f2de fe6b    	bl	0x5e2578 <cocos2d::CCUserDefault::setBoolForKey(char const*, bool)> @ imm = #0x2decd6
  3038a2: f2de fec3    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2ded86
  3038a6: 4602         	mov	r2, r0
  3038a8: 4b10         	ldr	r3, [pc, #0x40]         @ 0x3038ec <ConfigLayer::onBack(cocos2d::CCObject*)+0xb8>
  3038aa: 58e3         	ldr	r3, [r4, r3]
  3038ac: 681b         	ldr	r3, [r3]
  3038ae: f893 3029    	ldrb.w	r3, [r3, #0x29]
  3038b2: 4610         	mov	r0, r2
  3038b4: 4a11         	ldr	r2, [pc, #0x44]         @ 0x3038fc <ConfigLayer::onBack(cocos2d::CCObject*)+0xc8>
  3038b6: 447a         	add	r2, pc
  3038b8: 4611         	mov	r1, r2
  3038ba: 461a         	mov	r2, r3
  3038bc: f2de fe5c    	bl	0x5e2578 <cocos2d::CCUserDefault::setBoolForKey(char const*, bool)> @ imm = #0x2decb8
  3038c0: f297 fe58    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x297cb0
  3038c4: 4604         	mov	r4, r0
  3038c6: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x303900 <ConfigLayer::onBack(cocos2d::CCObject*)+0xcc>
  3038c8: 447b         	add	r3, pc
  3038ca: 681d         	ldr	r5, [r3]
  3038cc: f0d7 f83a    	bl	0x3da944 <SettingsLayer::scene()> @ imm = #0xd7074
  3038d0: 4603         	mov	r3, r0
  3038d2: 4628         	mov	r0, r5
  3038d4: 4619         	mov	r1, r3
  3038d6: f2ad fd17    	bl	0x5b1308 <cocos2d::CCTransitionSlideInL::create(float, cocos2d::CCScene*)> @ imm = #0x2ada2e
  3038da: 4603         	mov	r3, r0
  3038dc: 4620         	mov	r0, r4
  3038de: 4619         	mov	r1, r3
  3038e0: f298 fd3c    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x298a78
  3038e4: b003         	add	sp, #0xc
  3038e6: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3038e7); words below are literal-pool data ---
  3038e8: f1ca 0062    	rsb.w	r0, r10, #0x62
  3038ec: d730         	bvc	0x303950 <ConfigLayer::onSound(cocos2d::CCObject*)+0x8> @ imm = #0x60
  3038ee: ffff d794    	vqshl.u64	d29, d4, #0x3f
  3038f2: ffff 1a16    	<unknown>
  3038f6: 004c         	lsls	r4, r1, #0x1
  3038f8: 1a00         	subs	r0, r0, r0
  3038fa: 004c         	lsls	r4, r1, #0x1
  3038fc: 19ea         	adds	r2, r5, r7
  3038fe: 004c         	lsls	r4, r1, #0x1
  303900: f980 0062    	vst1.8	{d0[3]}, [r0], r2

// ==== ConfigLayer::onBlood
//      file offset 0x303904 (= ELF address; Ghidra 0x313904), 68 bytes, Thumb-2
  303904: b510         	push	{r4, lr}
  303906: b082         	sub	sp, #0x8
  303908: 9001         	str	r0, [sp, #0x4]
  30390a: 9100         	str	r1, [sp]
  30390c: 4c0b         	ldr	r4, [pc, #0x2c]         @ 0x30393c <ConfigLayer::onBlood(cocos2d::CCObject*)+0x38>
  30390e: 447c         	add	r4, pc
  303910: 4b0b         	ldr	r3, [pc, #0x2c]         @ 0x303940 <ConfigLayer::onBlood(cocos2d::CCObject*)+0x3c>
  303912: 58e3         	ldr	r3, [r4, r3]
  303914: 681b         	ldr	r3, [r3]
  303916: 4618         	mov	r0, r3
  303918: 210d         	movs	r1, #0xd
  30391a: f0f4 fa51    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xf44a2
  30391e: 4b09         	ldr	r3, [pc, #0x24]         @ 0x303944 <ConfigLayer::onBlood(cocos2d::CCObject*)+0x40>
  303920: 58e3         	ldr	r3, [r4, r3]
  303922: 781b         	ldrb	r3, [r3]
  303924: f083 0301    	eor	r3, r3, #0x1
  303928: b2da         	uxtb	r2, r3
  30392a: 4b06         	ldr	r3, [pc, #0x18]         @ 0x303944 <ConfigLayer::onBlood(cocos2d::CCObject*)+0x40>
  30392c: 58e3         	ldr	r3, [r4, r3]
  30392e: 701a         	strb	r2, [r3]
  303930: 9801         	ldr	r0, [sp, #0x4]
  303932: f7ff fefb    	bl	0x30372c <ConfigLayer::updateLabels()> @ imm = #-0x20a
  303936: b002         	add	sp, #0x8
  303938: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x303939); words below are literal-pool data ---
  30393a: bf00         	nop
  30393c: f0fa 0062    	<unknown>
  303940: d730         	bvc	0x3039a4 <ConfigLayer::onMusic(cocos2d::CCObject*)+0x14> @ imm = #0x60
  303942: ffff d794    	vqshl.u64	d29, d4, #0x3f
  303946: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== ConfigLayer::onSound
//      file offset 0x303948 (= ELF address; Ghidra 0x313948), 72 bytes, Thumb-2
  303948: b510         	push	{r4, lr}
  30394a: b082         	sub	sp, #0x8
  30394c: 9001         	str	r0, [sp, #0x4]
  30394e: 9100         	str	r1, [sp]
  303950: 4c0d         	ldr	r4, [pc, #0x34]         @ 0x303988 <ConfigLayer::onSound(cocos2d::CCObject*)+0x40>
  303952: 447c         	add	r4, pc
  303954: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x30398c <ConfigLayer::onSound(cocos2d::CCObject*)+0x44>
  303956: 58e3         	ldr	r3, [r4, r3]
  303958: 681b         	ldr	r3, [r3]
  30395a: 4618         	mov	r0, r3
  30395c: 210d         	movs	r1, #0xd
  30395e: f0f4 fa2f    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xf445e
  303962: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x30398c <ConfigLayer::onSound(cocos2d::CCObject*)+0x44>
  303964: 58e3         	ldr	r3, [r4, r3]
  303966: 681b         	ldr	r3, [r3]
  303968: 4a08         	ldr	r2, [pc, #0x20]         @ 0x30398c <ConfigLayer::onSound(cocos2d::CCObject*)+0x44>
  30396a: 58a2         	ldr	r2, [r4, r2]
  30396c: 6812         	ldr	r2, [r2]
  30396e: f892 2028    	ldrb.w	r2, [r2, #0x28]
  303972: f082 0201    	eor	r2, r2, #0x1
  303976: b2d2         	uxtb	r2, r2
  303978: f883 2028    	strb.w	r2, [r3, #0x28]
  30397c: 9801         	ldr	r0, [sp, #0x4]
  30397e: f7ff fed5    	bl	0x30372c <ConfigLayer::updateLabels()> @ imm = #-0x256
  303982: b002         	add	sp, #0x8
  303984: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x303985); words below are literal-pool data ---
  303986: bf00         	nop
  303988: f0b6 0062    	<unknown>
  30398c: d730         	bvc	0x3039f0 <ConfigLayer::onMusic(cocos2d::CCObject*)+0x60> @ imm = #0x60
  30398e: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== ConfigLayer::onMusic
//      file offset 0x303990 (= ELF address; Ghidra 0x313990), 220 bytes, Thumb-2
  303990: b510         	push	{r4, lr}
  303992: b084         	sub	sp, #0x10
  303994: 9001         	str	r0, [sp, #0x4]
  303996: 9100         	str	r1, [sp]
  303998: 4c31         	ldr	r4, [pc, #0xc4]         @ 0x303a60 <ConfigLayer::onMusic(cocos2d::CCObject*)+0xd0>
  30399a: 447c         	add	r4, pc
  30399c: 4b31         	ldr	r3, [pc, #0xc4]         @ 0x303a64 <ConfigLayer::onMusic(cocos2d::CCObject*)+0xd4>
  30399e: 58e3         	ldr	r3, [r4, r3]
  3039a0: 681b         	ldr	r3, [r3]
  3039a2: 4618         	mov	r0, r3
  3039a4: 210d         	movs	r1, #0xd
  3039a6: f0f4 fa0b    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xf4416
  3039aa: 4b2e         	ldr	r3, [pc, #0xb8]         @ 0x303a64 <ConfigLayer::onMusic(cocos2d::CCObject*)+0xd4>
  3039ac: 58e3         	ldr	r3, [r4, r3]
  3039ae: 681b         	ldr	r3, [r3]
  3039b0: 4a2c         	ldr	r2, [pc, #0xb0]         @ 0x303a64 <ConfigLayer::onMusic(cocos2d::CCObject*)+0xd4>
  3039b2: 58a2         	ldr	r2, [r4, r2]
  3039b4: 6812         	ldr	r2, [r2]
  3039b6: f892 2029    	ldrb.w	r2, [r2, #0x29]
  3039ba: f082 0201    	eor	r2, r2, #0x1
  3039be: b2d2         	uxtb	r2, r2
  3039c0: f883 2029    	strb.w	r2, [r3, #0x29]
  3039c4: 4b27         	ldr	r3, [pc, #0x9c]         @ 0x303a64 <ConfigLayer::onMusic(cocos2d::CCObject*)+0xd4>
  3039c6: 58e3         	ldr	r3, [r4, r3]
  3039c8: 681b         	ldr	r3, [r3]
  3039ca: f893 3029    	ldrb.w	r3, [r3, #0x29]
  3039ce: f083 0301    	eor	r3, r3, #0x1
  3039d2: b2db         	uxtb	r3, r3
  3039d4: 2b00         	cmp	r3, #0x0
  3039d6: d006         	beq	0x3039e6 <ConfigLayer::onMusic(cocos2d::CCObject*)+0x56> @ imm = #0xc
  3039d8: 4b22         	ldr	r3, [pc, #0x88]         @ 0x303a64 <ConfigLayer::onMusic(cocos2d::CCObject*)+0xd4>
  3039da: 58e3         	ldr	r3, [r4, r3]
  3039dc: 681b         	ldr	r3, [r3]
  3039de: 4618         	mov	r0, r3
  3039e0: f0f4 f992    	bl	0x3f7d08 <Sound::stopMusic()> @ imm = #0xf4324
  3039e4: e02b         	b	0x303a3e <ConfigLayer::onMusic(cocos2d::CCObject*)+0xae> @ imm = #0x56
  3039e6: 4b1f         	ldr	r3, [pc, #0x7c]         @ 0x303a64 <ConfigLayer::onMusic(cocos2d::CCObject*)+0xd4>
  3039e8: 58e3         	ldr	r3, [r4, r3]
  3039ea: 681b         	ldr	r3, [r3]
  3039ec: 4618         	mov	r0, r3
  3039ee: f0f4 f94b    	bl	0x3f7c88 <Sound::isPlayingMusic()> @ imm = #0xf4296
  3039f2: 4603         	mov	r3, r0
  3039f4: f083 0301    	eor	r3, r3, #0x1
  3039f8: b2db         	uxtb	r3, r3
  3039fa: 2b00         	cmp	r3, #0x0
  3039fc: d01f         	beq	0x303a3e <ConfigLayer::onMusic(cocos2d::CCObject*)+0xae> @ imm = #0x3e
  3039fe: 4b19         	ldr	r3, [pc, #0x64]         @ 0x303a64 <ConfigLayer::onMusic(cocos2d::CCObject*)+0xd4>
  303a00: 58e3         	ldr	r3, [r4, r3]
  303a02: 681c         	ldr	r4, [r3]
  303a04: ab02         	add	r3, sp, #0x8
  303a06: 4618         	mov	r0, r3
  303a08: f086 f4f4    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4869e8
  303a0c: aa03         	add	r2, sp, #0xc
  303a0e: ab02         	add	r3, sp, #0x8
  303a10: 4610         	mov	r0, r2
  303a12: 4a15         	ldr	r2, [pc, #0x54]         @ 0x303a68 <ConfigLayer::onMusic(cocos2d::CCObject*)+0xd8>
  303a14: 447a         	add	r2, pc
  303a16: 4611         	mov	r1, r2
  303a18: 461a         	mov	r2, r3
  303a1a: f0b3 f021    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4b3042
  303a1e: ab03         	add	r3, sp, #0xc
  303a20: 4620         	mov	r0, r4
  303a22: 4619         	mov	r1, r3
  303a24: f04f 527c    	mov.w	r2, #0x3f000000
  303a28: 2301         	movs	r3, #0x1
  303a2a: f0f4 f93b    	bl	0x3f7ca4 <Sound::playMusicFile(std::string, float, bool)> @ imm = #0xf4276
  303a2e: ab03         	add	r3, sp, #0xc
  303a30: 4618         	mov	r0, r3
  303a32: f0b1 f76f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b1ede
  303a36: ab02         	add	r3, sp, #0x8
  303a38: 4618         	mov	r0, r3
  303a3a: f086 f4df    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4869be
  303a3e: 9801         	ldr	r0, [sp, #0x4]
  303a40: f7ff fe74    	bl	0x30372c <ConfigLayer::updateLabels()> @ imm = #-0x318
  303a44: e00a         	b	0x303a5c <ConfigLayer::onMusic(cocos2d::CCObject*)+0xcc> @ imm = #0x14
  303a46: ab03         	add	r3, sp, #0xc
  303a48: 4618         	mov	r0, r3
  303a4a: f0b1 f763    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b1ec6
  303a4e: e7ff         	b	0x303a50 <ConfigLayer::onMusic(cocos2d::CCObject*)+0xc0> @ imm = #-0x2
  303a50: ab02         	add	r3, sp, #0x8
  303a52: 4618         	mov	r0, r3
  303a54: f086 f4d2    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4869a4
  303a58: f084 f328    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x484650
  303a5c: b004         	add	sp, #0x10
  303a5e: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x303a5f); words below are literal-pool data ---
  303a60: f06e 0062    	orn	r0, lr, #0x62
  303a64: d730         	bvc	0x303ac8 <ConfigLayer::onRetina(cocos2d::CCObject*)+0x5c> @ imm = #0x60
  303a66: ffff 1894    	<unknown>
  303a6a: 004c         	lsls	r4, r1, #0x1

// ==== ConfigLayer::onRetina
//      file offset 0x303a6c (= ELF address; Ghidra 0x313a6c), 380 bytes, Thumb-2
  303a6c: b530         	push	{r4, r5, lr}
  303a6e: b08d         	sub	sp, #0x34
  303a70: 9003         	str	r0, [sp, #0xc]
  303a72: 9102         	str	r1, [sp, #0x8]
  303a74: 4c53         	ldr	r4, [pc, #0x14c]        @ 0x303bc4 <ConfigLayer::onRetina(cocos2d::CCObject*)+0x158>
  303a76: 447c         	add	r4, pc
  303a78: 4b53         	ldr	r3, [pc, #0x14c]        @ 0x303bc8 <ConfigLayer::onRetina(cocos2d::CCObject*)+0x15c>
  303a7a: 58e3         	ldr	r3, [r4, r3]
  303a7c: 681b         	ldr	r3, [r3]
  303a7e: 4618         	mov	r0, r3
  303a80: 210d         	movs	r1, #0xd
  303a82: f0f4 f99d    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xf433a
  303a86: 4b51         	ldr	r3, [pc, #0x144]        @ 0x303bcc <ConfigLayer::onRetina(cocos2d::CCObject*)+0x160>
  303a88: 58e3         	ldr	r3, [r4, r3]
  303a8a: 781b         	ldrb	r3, [r3]
  303a8c: f083 0301    	eor	r3, r3, #0x1
  303a90: b2da         	uxtb	r2, r3
  303a92: 4b4e         	ldr	r3, [pc, #0x138]        @ 0x303bcc <ConfigLayer::onRetina(cocos2d::CCObject*)+0x160>
  303a94: 58e3         	ldr	r3, [r4, r3]
  303a96: 701a         	strb	r2, [r3]
  303a98: 9803         	ldr	r0, [sp, #0xc]
  303a9a: f7ff fe47    	bl	0x30372c <ConfigLayer::updateLabels()> @ imm = #-0x372
  303a9e: 4b4b         	ldr	r3, [pc, #0x12c]        @ 0x303bcc <ConfigLayer::onRetina(cocos2d::CCObject*)+0x160>
  303aa0: 58e3         	ldr	r3, [r4, r3]
  303aa2: 781b         	ldrb	r3, [r3]
  303aa4: 2b00         	cmp	r3, #0x0
  303aa6: d002         	beq	0x303aae <ConfigLayer::onRetina(cocos2d::CCObject*)+0x42> @ imm = #0x4
  303aa8: 4b49         	ldr	r3, [pc, #0x124]        @ 0x303bd0 <ConfigLayer::onRetina(cocos2d::CCObject*)+0x164>
  303aaa: 447b         	add	r3, pc
  303aac: e001         	b	0x303ab2 <ConfigLayer::onRetina(cocos2d::CCObject*)+0x46> @ imm = #0x2
  303aae: 4b49         	ldr	r3, [pc, #0x124]        @ 0x303bd4 <ConfigLayer::onRetina(cocos2d::CCObject*)+0x168>
  303ab0: 447b         	add	r3, pc
  303ab2: 4a49         	ldr	r2, [pc, #0x124]        @ 0x303bd8 <ConfigLayer::onRetina(cocos2d::CCObject*)+0x16c>
  303ab4: 447a         	add	r2, pc
  303ab6: 4610         	mov	r0, r2
  303ab8: 4619         	mov	r1, r3
  303aba: f296 f829    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x296052
  303abe: 4603         	mov	r3, r0
  303ac0: 930b         	str	r3, [sp, #0x2c]
  303ac2: 980b         	ldr	r0, [sp, #0x2c]
  303ac4: f295 ff30    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x295e60
  303ac8: 4605         	mov	r5, r0
  303aca: ab06         	add	r3, sp, #0x18
  303acc: 4618         	mov	r0, r3
  303ace: f086 f491    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x486922
  303ad2: aa09         	add	r2, sp, #0x24
  303ad4: ab06         	add	r3, sp, #0x18
  303ad6: 4610         	mov	r0, r2
  303ad8: 4629         	mov	r1, r5
  303ada: 461a         	mov	r2, r3
  303adc: f0b2 f7c0    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4b2f80
  303ae0: ab07         	add	r3, sp, #0x1c
  303ae2: 4618         	mov	r0, r3
  303ae4: f086 f486    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x48690c
  303ae8: aa0a         	add	r2, sp, #0x28
  303aea: ab07         	add	r3, sp, #0x1c
  303aec: 4610         	mov	r0, r2
  303aee: 4a3b         	ldr	r2, [pc, #0xec]         @ 0x303bdc <ConfigLayer::onRetina(cocos2d::CCObject*)+0x170>
  303af0: 447a         	add	r2, pc
  303af2: 4611         	mov	r1, r2
  303af4: 461a         	mov	r2, r3
  303af6: f0b2 f7b3    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4b2f66
  303afa: ab05         	add	r3, sp, #0x14
  303afc: 4618         	mov	r0, r3
  303afe: f086 f479    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4868f2
  303b02: aa08         	add	r2, sp, #0x20
  303b04: ab05         	add	r3, sp, #0x14
  303b06: 4610         	mov	r0, r2
  303b08: 4a35         	ldr	r2, [pc, #0xd4]         @ 0x303be0 <ConfigLayer::onRetina(cocos2d::CCObject*)+0x174>
  303b0a: 447a         	add	r2, pc
  303b0c: 4611         	mov	r1, r2
  303b0e: 461a         	mov	r2, r3
  303b10: f0b2 f7a6    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4b2f4c
  303b14: ab08         	add	r3, sp, #0x20
  303b16: 4618         	mov	r0, r3
  303b18: f295 ff90    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x295f20
  303b1c: 4603         	mov	r3, r0
  303b1e: 4618         	mov	r0, r3
  303b20: 2100         	movs	r1, #0x0
  303b22: f296 f975    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x2962ea
  303b26: 4603         	mov	r3, r0
  303b28: a909         	add	r1, sp, #0x24
  303b2a: aa0a         	add	r2, sp, #0x28
  303b2c: 2000         	movs	r0, #0x0
  303b2e: 9000         	str	r0, [sp]
  303b30: 2000         	movs	r0, #0x0
  303b32: 9001         	str	r0, [sp, #0x4]
  303b34: 2000         	movs	r0, #0x0
  303b36: f7db fe5d    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0x24346
  303b3a: ab08         	add	r3, sp, #0x20
  303b3c: 4618         	mov	r0, r3
  303b3e: f0b1 f6e9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b1dd2
  303b42: ab05         	add	r3, sp, #0x14
  303b44: 4618         	mov	r0, r3
  303b46: f086 f459    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4868b2
  303b4a: ab0a         	add	r3, sp, #0x28
  303b4c: 4618         	mov	r0, r3
  303b4e: f0b1 f6e1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b1dc2
  303b52: ab07         	add	r3, sp, #0x1c
  303b54: 4618         	mov	r0, r3
  303b56: f086 f451    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4868a2
  303b5a: ab09         	add	r3, sp, #0x24
  303b5c: 4618         	mov	r0, r3
  303b5e: f0b1 f6d9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b1db2
  303b62: ab06         	add	r3, sp, #0x18
  303b64: 4618         	mov	r0, r3
  303b66: f086 f449    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x486892
  303b6a: f2de fd5f    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2deabe
  303b6e: 4602         	mov	r2, r0
  303b70: 4b16         	ldr	r3, [pc, #0x58]         @ 0x303bcc <ConfigLayer::onRetina(cocos2d::CCObject*)+0x160>
  303b72: 58e3         	ldr	r3, [r4, r3]
  303b74: 781b         	ldrb	r3, [r3]
  303b76: 4610         	mov	r0, r2
  303b78: 4a1a         	ldr	r2, [pc, #0x68]         @ 0x303be4 <ConfigLayer::onRetina(cocos2d::CCObject*)+0x178>
  303b7a: 447a         	add	r2, pc
  303b7c: 4611         	mov	r1, r2
  303b7e: 461a         	mov	r2, r3
  303b80: f2de fcfa    	bl	0x5e2578 <cocos2d::CCUserDefault::setBoolForKey(char const*, bool)> @ imm = #0x2de9f4
  303b84: e01c         	b	0x303bc0 <ConfigLayer::onRetina(cocos2d::CCObject*)+0x154> @ imm = #0x38
  303b86: ab08         	add	r3, sp, #0x20
  303b88: 4618         	mov	r0, r3
  303b8a: f0b1 f6c3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b1d86
  303b8e: e7ff         	b	0x303b90 <ConfigLayer::onRetina(cocos2d::CCObject*)+0x124> @ imm = #-0x2
  303b90: ab05         	add	r3, sp, #0x14
  303b92: 4618         	mov	r0, r3
  303b94: f086 f432    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x486864
  303b98: ab0a         	add	r3, sp, #0x28
  303b9a: 4618         	mov	r0, r3
  303b9c: f0b1 f6ba    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b1d74
  303ba0: e7ff         	b	0x303ba2 <ConfigLayer::onRetina(cocos2d::CCObject*)+0x136> @ imm = #-0x2
  303ba2: ab07         	add	r3, sp, #0x1c
  303ba4: 4618         	mov	r0, r3
  303ba6: f086 f429    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x486852
  303baa: ab09         	add	r3, sp, #0x24
  303bac: 4618         	mov	r0, r3
  303bae: f0b1 f6b1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b1d62
  303bb2: e7ff         	b	0x303bb4 <ConfigLayer::onRetina(cocos2d::CCObject*)+0x148> @ imm = #-0x2
  303bb4: ab06         	add	r3, sp, #0x18
  303bb6: 4618         	mov	r0, r3
  303bb8: f086 f420    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x486840
  303bbc: f084 f276    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4844ec
  303bc0: b00d         	add	sp, #0x34
  303bc2: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x303bc3); words below are literal-pool data ---
  303bc4: ef92 0062    	vmla.i16	d0, d2, d2[2]
  303bc8: d730         	bvc	0x303c2c <ConfigLayer::on2XView(cocos2d::CCObject*)+0x44> @ imm = #0x60
  303bca: ffff d79c    	vqshl.u64	d29, d12, #0x3f
  303bce: ffff 180a    	vtbl.8	d17, {d15}, d10
  303bd2: 004c         	lsls	r4, r1, #0x1
  303bd4: 180c         	adds	r4, r1, r0
  303bd6: 004c         	lsls	r4, r1, #0x1
  303bd8: 1814         	adds	r4, r2, r0
  303bda: 004c         	lsls	r4, r1, #0x1
  303bdc: 17e4         	asrs	r4, r4, #0x1f
  303bde: 004c         	lsls	r4, r1, #0x1
  303be0: 180e         	adds	r6, r1, r0
  303be2: 004c         	lsls	r4, r1, #0x1
  303be4: 17a2         	asrs	r2, r4, #0x1e
  303be6: 004c         	lsls	r4, r1, #0x1

// ==== ConfigLayer::on2XView
//      file offset 0x303be8 (= ELF address; Ghidra 0x313be8), 96 bytes, Thumb-2
  303be8: b510         	push	{r4, lr}
  303bea: b082         	sub	sp, #0x8
  303bec: 9001         	str	r0, [sp, #0x4]
  303bee: 9100         	str	r1, [sp]
  303bf0: 4c11         	ldr	r4, [pc, #0x44]         @ 0x303c38 <ConfigLayer::on2XView(cocos2d::CCObject*)+0x50>
  303bf2: 447c         	add	r4, pc
  303bf4: 4b11         	ldr	r3, [pc, #0x44]         @ 0x303c3c <ConfigLayer::on2XView(cocos2d::CCObject*)+0x54>
  303bf6: 58e3         	ldr	r3, [r4, r3]
  303bf8: 681b         	ldr	r3, [r3]
  303bfa: 4618         	mov	r0, r3
  303bfc: 210d         	movs	r1, #0xd
  303bfe: f0f4 f8df    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xf41be
  303c02: 4b0f         	ldr	r3, [pc, #0x3c]         @ 0x303c40 <ConfigLayer::on2XView(cocos2d::CCObject*)+0x58>
  303c04: 58e3         	ldr	r3, [r4, r3]
  303c06: 781b         	ldrb	r3, [r3]
  303c08: f083 0301    	eor	r3, r3, #0x1
  303c0c: b2da         	uxtb	r2, r3
  303c0e: 4b0c         	ldr	r3, [pc, #0x30]         @ 0x303c40 <ConfigLayer::on2XView(cocos2d::CCObject*)+0x58>
  303c10: 58e3         	ldr	r3, [r4, r3]
  303c12: 701a         	strb	r2, [r3]
  303c14: 9801         	ldr	r0, [sp, #0x4]
  303c16: f7ff fd89    	bl	0x30372c <ConfigLayer::updateLabels()> @ imm = #-0x4ee
  303c1a: f2de fd07    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2dea0e
  303c1e: 4602         	mov	r2, r0
  303c20: 4b07         	ldr	r3, [pc, #0x1c]         @ 0x303c40 <ConfigLayer::on2XView(cocos2d::CCObject*)+0x58>
  303c22: 58e3         	ldr	r3, [r4, r3]
  303c24: 781b         	ldrb	r3, [r3]
  303c26: 4610         	mov	r0, r2
  303c28: 4a06         	ldr	r2, [pc, #0x18]         @ 0x303c44 <ConfigLayer::on2XView(cocos2d::CCObject*)+0x5c>
  303c2a: 447a         	add	r2, pc
  303c2c: 4611         	mov	r1, r2
  303c2e: 461a         	mov	r2, r3
  303c30: f2de fca2    	bl	0x5e2578 <cocos2d::CCUserDefault::setBoolForKey(char const*, bool)> @ imm = #0x2de944
  303c34: b002         	add	sp, #0x8
  303c36: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x303c37); words below are literal-pool data ---
  303c38: ee16 0062    	cdp	p0, #0x1, c0, c6, c2, #0x3
  303c3c: d730         	bvc	0x303ca0 <ConfigLayer::onAd(cocos2d::CCObject*)+0x58> @ imm = #0x60
  303c3e: ffff d7a4    	<unknown>
  303c42: ffff 16fe    	<unknown>
  303c46: 004c         	lsls	r4, r1, #0x1

// ==== ConfigLayer::onAd
//      file offset 0x303c48 (= ELF address; Ghidra 0x313c48), 276 bytes, Thumb-2
  303c48: b500         	push	{lr}
  303c4a: b08b         	sub	sp, #0x2c
  303c4c: 9003         	str	r0, [sp, #0xc]
  303c4e: 9102         	str	r1, [sp, #0x8]
  303c50: 4a3d         	ldr	r2, [pc, #0xf4]         @ 0x303d48 <ConfigLayer::onAd(cocos2d::CCObject*)+0x100>
  303c52: 447a         	add	r2, pc
  303c54: 4b3d         	ldr	r3, [pc, #0xf4]         @ 0x303d4c <ConfigLayer::onAd(cocos2d::CCObject*)+0x104>
  303c56: 58d3         	ldr	r3, [r2, r3]
  303c58: 681b         	ldr	r3, [r3]
  303c5a: 4618         	mov	r0, r3
  303c5c: 210d         	movs	r1, #0xd
  303c5e: f0f4 f8af    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xf415e
  303c62: ab05         	add	r3, sp, #0x14
  303c64: 4618         	mov	r0, r3
  303c66: f086 f3c5    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x48678a
  303c6a: aa08         	add	r2, sp, #0x20
  303c6c: ab05         	add	r3, sp, #0x14
  303c6e: 4610         	mov	r0, r2
  303c70: 4a37         	ldr	r2, [pc, #0xdc]         @ 0x303d50 <ConfigLayer::onAd(cocos2d::CCObject*)+0x108>
  303c72: 447a         	add	r2, pc
  303c74: 4611         	mov	r1, r2
  303c76: 461a         	mov	r2, r3
  303c78: f0b2 f6f2    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4b2de4
  303c7c: ab06         	add	r3, sp, #0x18
  303c7e: 4618         	mov	r0, r3
  303c80: f086 f3b8    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x486770
  303c84: aa09         	add	r2, sp, #0x24
  303c86: ab06         	add	r3, sp, #0x18
  303c88: 4610         	mov	r0, r2
  303c8a: 4a32         	ldr	r2, [pc, #0xc8]         @ 0x303d54 <ConfigLayer::onAd(cocos2d::CCObject*)+0x10c>
  303c8c: 447a         	add	r2, pc
  303c8e: 4611         	mov	r1, r2
  303c90: 461a         	mov	r2, r3
  303c92: f0b2 f6e5    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4b2dca
  303c96: ab04         	add	r3, sp, #0x10
  303c98: 4618         	mov	r0, r3
  303c9a: f086 f3ab    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x486756
  303c9e: aa07         	add	r2, sp, #0x1c
  303ca0: ab04         	add	r3, sp, #0x10
  303ca2: 4610         	mov	r0, r2
  303ca4: 4a2c         	ldr	r2, [pc, #0xb0]         @ 0x303d58 <ConfigLayer::onAd(cocos2d::CCObject*)+0x110>
  303ca6: 447a         	add	r2, pc
  303ca8: 4611         	mov	r1, r2
  303caa: 461a         	mov	r2, r3
  303cac: f0b2 f6d8    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4b2db0
  303cb0: ab07         	add	r3, sp, #0x1c
  303cb2: 4618         	mov	r0, r3
  303cb4: f295 fec2    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x295d84
  303cb8: 4603         	mov	r3, r0
  303cba: 4618         	mov	r0, r3
  303cbc: 2100         	movs	r1, #0x0
  303cbe: f296 f8a7    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x29614e
  303cc2: 4603         	mov	r3, r0
  303cc4: a908         	add	r1, sp, #0x20
  303cc6: aa09         	add	r2, sp, #0x24
  303cc8: 2000         	movs	r0, #0x0
  303cca: 9000         	str	r0, [sp]
  303ccc: 2000         	movs	r0, #0x0
  303cce: 9001         	str	r0, [sp, #0x4]
  303cd0: 2000         	movs	r0, #0x0
  303cd2: f7db fd8f    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0x244e2
  303cd6: ab07         	add	r3, sp, #0x1c
  303cd8: 4618         	mov	r0, r3
  303cda: f0b1 f61b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b1c36
  303cde: ab04         	add	r3, sp, #0x10
  303ce0: 4618         	mov	r0, r3
  303ce2: f086 f38b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x486716
  303ce6: ab09         	add	r3, sp, #0x24
  303ce8: 4618         	mov	r0, r3
  303cea: f0b1 f613    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b1c26
  303cee: ab06         	add	r3, sp, #0x18
  303cf0: 4618         	mov	r0, r3
  303cf2: f086 f383    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x486706
  303cf6: ab08         	add	r3, sp, #0x20
  303cf8: 4618         	mov	r0, r3
  303cfa: f0b1 f60b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b1c16
  303cfe: ab05         	add	r3, sp, #0x14
  303d00: 4618         	mov	r0, r3
  303d02: f086 f37b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4866f6
  303d06: e01c         	b	0x303d42 <ConfigLayer::onAd(cocos2d::CCObject*)+0xfa> @ imm = #0x38
  303d08: ab07         	add	r3, sp, #0x1c
  303d0a: 4618         	mov	r0, r3
  303d0c: f0b1 f602    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b1c04
  303d10: e7ff         	b	0x303d12 <ConfigLayer::onAd(cocos2d::CCObject*)+0xca> @ imm = #-0x2
  303d12: ab04         	add	r3, sp, #0x10
  303d14: 4618         	mov	r0, r3
  303d16: f086 f371    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4866e2
  303d1a: ab09         	add	r3, sp, #0x24
  303d1c: 4618         	mov	r0, r3
  303d1e: f0b1 f5f9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b1bf2
  303d22: e7ff         	b	0x303d24 <ConfigLayer::onAd(cocos2d::CCObject*)+0xdc> @ imm = #-0x2
  303d24: ab06         	add	r3, sp, #0x18
  303d26: 4618         	mov	r0, r3
  303d28: f086 f368    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4866d0
  303d2c: ab08         	add	r3, sp, #0x20
  303d2e: 4618         	mov	r0, r3
  303d30: f0b1 f5f0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b1be0
  303d34: e7ff         	b	0x303d36 <ConfigLayer::onAd(cocos2d::CCObject*)+0xee> @ imm = #-0x2
  303d36: ab05         	add	r3, sp, #0x14
  303d38: 4618         	mov	r0, r3
  303d3a: f086 f35f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4866be
  303d3e: f084 f1b5    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48436a
  303d42: b00b         	add	sp, #0x2c
  303d44: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x303d47); words below are literal-pool data ---
  303d48: edb6 0062    	ldc	p0, c0, [r6, #392]!
  303d4c: d730         	bvc	0x303db0 <ConfigLayer::onVideo(cocos2d::CCObject*)+0x54> @ imm = #0x60
  303d4e: ffff 16c2    	<unknown>
  303d52: 004c         	lsls	r4, r1, #0x1
  303d54: 16b4         	asrs	r4, r6, #0x1a
  303d56: 004c         	lsls	r4, r1, #0x1
  303d58: 1672         	asrs	r2, r6, #0x19
  303d5a: 004c         	lsls	r4, r1, #0x1

// ==== ConfigLayer::onVideo
//      file offset 0x303d5c (= ELF address; Ghidra 0x313d5c), 168 bytes, Thumb-2
  303d5c: b530         	push	{r4, r5, lr}
  303d5e: b083         	sub	sp, #0xc
  303d60: 9001         	str	r0, [sp, #0x4]
  303d62: 9100         	str	r1, [sp]
  303d64: 4a24         	ldr	r2, [pc, #0x90]         @ 0x303df8 <ConfigLayer::onVideo(cocos2d::CCObject*)+0x9c>
  303d66: 447a         	add	r2, pc
  303d68: 9b01         	ldr	r3, [sp, #0x4]
  303d6a: f893 310c    	ldrb.w	r3, [r3, #0x10c]
  303d6e: 2b00         	cmp	r3, #0x0
  303d70: d109         	bne	0x303d86 <ConfigLayer::onVideo(cocos2d::CCObject*)+0x2a> @ imm = #0x12
  303d72: 9b01         	ldr	r3, [sp, #0x4]
  303d74: ed93 7a42    	vldr	s14, [r3, #264]
  303d78: eef6 7a00    	vmov.f32	s15, #5.000000e-01
  303d7c: eeb4 7ae7    	vcmpe.f32	s14, s15
  303d80: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  303d84: d500         	bpl	0x303d88 <ConfigLayer::onVideo(cocos2d::CCObject*)+0x2c> @ imm = #0x0
  303d86: e034         	b	0x303df2 <ConfigLayer::onVideo(cocos2d::CCObject*)+0x96> @ imm = #0x68
  303d88: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x303dfc <ConfigLayer::onVideo(cocos2d::CCObject*)+0xa0>
  303d8a: 58d3         	ldr	r3, [r2, r3]
  303d8c: 681b         	ldr	r3, [r3]
  303d8e: 4618         	mov	r0, r3
  303d90: 210d         	movs	r1, #0xd
  303d92: f0f4 f815    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xf402a
  303d96: f128 fe39    	bl	0x42ca0c <ApplicationInterface::isVideoRecordingAvaliable()> @ imm = #0x128c72
  303d9a: 4603         	mov	r3, r0
  303d9c: f083 0301    	eor	r3, r3, #0x1
  303da0: b2db         	uxtb	r3, r3
  303da2: 2b00         	cmp	r3, #0x0
  303da4: d000         	beq	0x303da8 <ConfigLayer::onVideo(cocos2d::CCObject*)+0x4c> @ imm = #0x0
  303da6: e024         	b	0x303df2 <ConfigLayer::onVideo(cocos2d::CCObject*)+0x96> @ imm = #0x48
  303da8: 9b01         	ldr	r3, [sp, #0x4]
  303daa: f04f 0200    	mov.w	r2, #0x0
  303dae: f8c3 2108    	str.w	r2, [r3, #0x108]
  303db2: f11f f8c3    	bl	0x422f3c <ApplicationInterface::isVideoRecording()> @ imm = #0x11f186
  303db6: 4603         	mov	r3, r0
  303db8: 2b00         	cmp	r3, #0x0
  303dba: d001         	beq	0x303dc0 <ConfigLayer::onVideo(cocos2d::CCObject*)+0x64> @ imm = #0x2
  303dbc: f11f f896    	bl	0x422eec <ApplicationInterface::stopVideoRecording()> @ imm = #0x11f12c
  303dc0: 9b01         	ldr	r3, [sp, #0x4]
  303dc2: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  303dc6: 681b         	ldr	r3, [r3]
  303dc8: f503 7305    	add.w	r3, r3, #0x214
  303dcc: 681c         	ldr	r4, [r3]
  303dce: 9b01         	ldr	r3, [sp, #0x4]
  303dd0: f8d3 5154    	ldr.w	r5, [r3, #0x154]
  303dd4: f2d8 fe18    	bl	0x5dca08 <cocos2d::CCSpriteFrameCache::sharedSpriteFrameCache()> @ imm = #0x2d8c30
  303dd8: 4603         	mov	r3, r0
  303dda: 4618         	mov	r0, r3
  303ddc: 4b08         	ldr	r3, [pc, #0x20]         @ 0x303e00 <ConfigLayer::onVideo(cocos2d::CCObject*)+0xa4>
  303dde: 447b         	add	r3, pc
  303de0: 4619         	mov	r1, r3
  303de2: f2da f9b1    	bl	0x5de148 <cocos2d::CCSpriteFrameCache::spriteFrameByName(char const*)> @ imm = #0x2da362
  303de6: 4603         	mov	r3, r0
  303de8: 4628         	mov	r0, r5
  303dea: 4619         	mov	r1, r3
  303dec: 47a0         	blx	r4
  303dee: f11f f8fb    	bl	0x422fe8 <ApplicationInterface::showVideoRecordingInterface()> @ imm = #0x11f1f6
  303df2: b003         	add	sp, #0xc
  303df4: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x303df5); words below are literal-pool data ---
  303df6: bf00         	nop
  303df8: eca2 0062    	stc	p0, c0, [r2], #392
  303dfc: d730         	bvc	0x303e60 <ConfigLayer::onRecord(cocos2d::CCObject*)+0x5c> @ imm = #0x60
  303dfe: ffff 14aa    	<unknown>
  303e02: 004c         	lsls	r4, r1, #0x1

// ==== ConfigLayer::onRecord
//      file offset 0x303e04 (= ELF address; Ghidra 0x313e04), 1020 bytes, Thumb-2
  303e04: b530         	push	{r4, r5, lr}
  303e06: b08d         	sub	sp, #0x34
  303e08: 9003         	str	r0, [sp, #0xc]
  303e0a: 9102         	str	r1, [sp, #0x8]
  303e0c: 4ced         	ldr	r4, [pc, #0x3b4]        @ 0x3041c4 <ConfigLayer::onRecord(cocos2d::CCObject*)+0x3c0>
  303e0e: 447c         	add	r4, pc
  303e10: 9b03         	ldr	r3, [sp, #0xc]
  303e12: f893 310c    	ldrb.w	r3, [r3, #0x10c]
  303e16: 2b00         	cmp	r3, #0x0
  303e18: d109         	bne	0x303e2e <ConfigLayer::onRecord(cocos2d::CCObject*)+0x2a> @ imm = #0x12
  303e1a: 9b03         	ldr	r3, [sp, #0xc]
  303e1c: ed93 7a42    	vldr	s14, [r3, #264]
  303e20: eef6 7a00    	vmov.f32	s15, #5.000000e-01
  303e24: eeb4 7ae7    	vcmpe.f32	s14, s15
  303e28: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  303e2c: d500         	bpl	0x303e30 <ConfigLayer::onRecord(cocos2d::CCObject*)+0x2c> @ imm = #0x0
  303e2e: e1c6         	b	0x3041be <ConfigLayer::onRecord(cocos2d::CCObject*)+0x3ba> @ imm = #0x38c
  303e30: 4be5         	ldr	r3, [pc, #0x394]        @ 0x3041c8 <ConfigLayer::onRecord(cocos2d::CCObject*)+0x3c4>
  303e32: 58e3         	ldr	r3, [r4, r3]
  303e34: 681b         	ldr	r3, [r3]
  303e36: 4618         	mov	r0, r3
  303e38: 210d         	movs	r1, #0xd
  303e3a: f0f3 ffc1    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xf3f82
  303e3e: f128 fde5    	bl	0x42ca0c <ApplicationInterface::isVideoRecordingAvaliable()> @ imm = #0x128bca
  303e42: 4603         	mov	r3, r0
  303e44: f083 0301    	eor	r3, r3, #0x1
  303e48: b2db         	uxtb	r3, r3
  303e4a: 2b00         	cmp	r3, #0x0
  303e4c: d000         	beq	0x303e50 <ConfigLayer::onRecord(cocos2d::CCObject*)+0x4c> @ imm = #0x0
  303e4e: e1b6         	b	0x3041be <ConfigLayer::onRecord(cocos2d::CCObject*)+0x3ba> @ imm = #0x36c
  303e50: 9b03         	ldr	r3, [sp, #0xc]
  303e52: f04f 0200    	mov.w	r2, #0x0
  303e56: f8c3 2108    	str.w	r2, [r3, #0x108]
  303e5a: f11f f86f    	bl	0x422f3c <ApplicationInterface::isVideoRecording()> @ imm = #0x11f0de
  303e5e: 4603         	mov	r3, r0
  303e60: 2b00         	cmp	r3, #0x0
  303e62: d06b         	beq	0x303f3c <ConfigLayer::onRecord(cocos2d::CCObject*)+0x138> @ imm = #0xd6
  303e64: f11f f842    	bl	0x422eec <ApplicationInterface::stopVideoRecording()> @ imm = #0x11f084
  303e68: 9b03         	ldr	r3, [sp, #0xc]
  303e6a: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  303e6e: 681b         	ldr	r3, [r3]
  303e70: f503 7305    	add.w	r3, r3, #0x214
  303e74: 681c         	ldr	r4, [r3]
  303e76: 9b03         	ldr	r3, [sp, #0xc]
  303e78: f8d3 5154    	ldr.w	r5, [r3, #0x154]
  303e7c: f2d8 fdc4    	bl	0x5dca08 <cocos2d::CCSpriteFrameCache::sharedSpriteFrameCache()> @ imm = #0x2d8b88
  303e80: 4603         	mov	r3, r0
  303e82: 4618         	mov	r0, r3
  303e84: 4bd1         	ldr	r3, [pc, #0x344]        @ 0x3041cc <ConfigLayer::onRecord(cocos2d::CCObject*)+0x3c8>
  303e86: 447b         	add	r3, pc
  303e88: 4619         	mov	r1, r3
  303e8a: f2da f95d    	bl	0x5de148 <cocos2d::CCSpriteFrameCache::spriteFrameByName(char const*)> @ imm = #0x2da2ba
  303e8e: 4603         	mov	r3, r0
  303e90: 4628         	mov	r0, r5
  303e92: 4619         	mov	r1, r3
  303e94: 47a0         	blx	r4
  303e96: ab07         	add	r3, sp, #0x1c
  303e98: 4618         	mov	r0, r3
  303e9a: f086 f2ab    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x486556
  303e9e: aa0a         	add	r2, sp, #0x28
  303ea0: ab07         	add	r3, sp, #0x1c
  303ea2: 4610         	mov	r0, r2
  303ea4: 4aca         	ldr	r2, [pc, #0x328]        @ 0x3041d0 <ConfigLayer::onRecord(cocos2d::CCObject*)+0x3cc>
  303ea6: 447a         	add	r2, pc
  303ea8: 4611         	mov	r1, r2
  303eaa: 461a         	mov	r2, r3
  303eac: f0b2 f5d8    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4b2bb0
  303eb0: ab08         	add	r3, sp, #0x20
  303eb2: 4618         	mov	r0, r3
  303eb4: f086 f29e    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x48653c
  303eb8: aa0b         	add	r2, sp, #0x2c
  303eba: ab08         	add	r3, sp, #0x20
  303ebc: 4610         	mov	r0, r2
  303ebe: 4ac5         	ldr	r2, [pc, #0x314]        @ 0x3041d4 <ConfigLayer::onRecord(cocos2d::CCObject*)+0x3d0>
  303ec0: 447a         	add	r2, pc
  303ec2: 4611         	mov	r1, r2
  303ec4: 461a         	mov	r2, r3
  303ec6: f0b2 f5cb    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4b2b96
  303eca: ab06         	add	r3, sp, #0x18
  303ecc: 4618         	mov	r0, r3
  303ece: f086 f291    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x486522
  303ed2: aa09         	add	r2, sp, #0x24
  303ed4: ab06         	add	r3, sp, #0x18
  303ed6: 4610         	mov	r0, r2
  303ed8: 4abf         	ldr	r2, [pc, #0x2fc]        @ 0x3041d8 <ConfigLayer::onRecord(cocos2d::CCObject*)+0x3d4>
  303eda: 447a         	add	r2, pc
  303edc: 4611         	mov	r1, r2
  303ede: 461a         	mov	r2, r3
  303ee0: f0b2 f5be    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4b2b7c
  303ee4: ab09         	add	r3, sp, #0x24
  303ee6: 4618         	mov	r0, r3
  303ee8: f295 fda8    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x295b50
  303eec: 4603         	mov	r3, r0
  303eee: 4618         	mov	r0, r3
  303ef0: 2100         	movs	r1, #0x0
  303ef2: f295 ff8d    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x295f1a
  303ef6: 4603         	mov	r3, r0
  303ef8: a90a         	add	r1, sp, #0x28
  303efa: aa0b         	add	r2, sp, #0x2c
  303efc: 2000         	movs	r0, #0x0
  303efe: 9000         	str	r0, [sp]
  303f00: 2000         	movs	r0, #0x0
  303f02: 9001         	str	r0, [sp, #0x4]
  303f04: 2000         	movs	r0, #0x0
  303f06: f7db fc75    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0x24716
  303f0a: ab09         	add	r3, sp, #0x24
  303f0c: 4618         	mov	r0, r3
  303f0e: f0b1 f501    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b1a02
  303f12: ab06         	add	r3, sp, #0x18
  303f14: 4618         	mov	r0, r3
  303f16: f086 f271    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4864e2
  303f1a: ab0b         	add	r3, sp, #0x2c
  303f1c: 4618         	mov	r0, r3
  303f1e: f0b1 f4f9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b19f2
  303f22: ab08         	add	r3, sp, #0x20
  303f24: 4618         	mov	r0, r3
  303f26: f086 f269    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4864d2
  303f2a: ab0a         	add	r3, sp, #0x28
  303f2c: 4618         	mov	r0, r3
  303f2e: f0b1 f4f1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b19e2
  303f32: ab07         	add	r3, sp, #0x1c
  303f34: 4618         	mov	r0, r3
  303f36: f086 f261    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4864c2
  303f3a: e140         	b	0x3041be <ConfigLayer::onRecord(cocos2d::CCObject*)+0x3ba> @ imm = #0x280
  303f3c: f11f f848    	bl	0x422fd0 <ApplicationInterface::hasUnViewedVideo()> @ imm = #0x11f090
  303f40: 4603         	mov	r3, r0
  303f42: 2b00         	cmp	r3, #0x0
  303f44: d06e         	beq	0x304024 <ConfigLayer::onRecord(cocos2d::CCObject*)+0x220> @ imm = #0xdc
  303f46: ab06         	add	r3, sp, #0x18
  303f48: 4618         	mov	r0, r3
  303f4a: f086 f253    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4864a6
  303f4e: aa0a         	add	r2, sp, #0x28
  303f50: ab06         	add	r3, sp, #0x18
  303f52: 4610         	mov	r0, r2
  303f54: 4aa1         	ldr	r2, [pc, #0x284]        @ 0x3041dc <ConfigLayer::onRecord(cocos2d::CCObject*)+0x3d8>
  303f56: 447a         	add	r2, pc
  303f58: 4611         	mov	r1, r2
  303f5a: 461a         	mov	r2, r3
  303f5c: f0b2 f580    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4b2b00
  303f60: ab07         	add	r3, sp, #0x1c
  303f62: 4618         	mov	r0, r3
  303f64: f086 f246    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x48648c
  303f68: aa0b         	add	r2, sp, #0x2c
  303f6a: ab07         	add	r3, sp, #0x1c
  303f6c: 4610         	mov	r0, r2
  303f6e: 4a9c         	ldr	r2, [pc, #0x270]        @ 0x3041e0 <ConfigLayer::onRecord(cocos2d::CCObject*)+0x3dc>
  303f70: 447a         	add	r2, pc
  303f72: 4611         	mov	r1, r2
  303f74: 461a         	mov	r2, r3
  303f76: f0b2 f573    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4b2ae6
  303f7a: ab04         	add	r3, sp, #0x10
  303f7c: 4618         	mov	r0, r3
  303f7e: f086 f239    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x486472
  303f82: aa08         	add	r2, sp, #0x20
  303f84: ab04         	add	r3, sp, #0x10
  303f86: 4610         	mov	r0, r2
  303f88: 4a96         	ldr	r2, [pc, #0x258]        @ 0x3041e4 <ConfigLayer::onRecord(cocos2d::CCObject*)+0x3e0>
  303f8a: 447a         	add	r2, pc
  303f8c: 4611         	mov	r1, r2
  303f8e: 461a         	mov	r2, r3
  303f90: f0b2 f566    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4b2acc
  303f94: ab08         	add	r3, sp, #0x20
  303f96: 4618         	mov	r0, r3
  303f98: f295 fd50    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x295aa0
  303f9c: 4605         	mov	r5, r0
  303f9e: ab05         	add	r3, sp, #0x14
  303fa0: 4618         	mov	r0, r3
  303fa2: f086 f227    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x48644e
  303fa6: aa09         	add	r2, sp, #0x24
  303fa8: ab05         	add	r3, sp, #0x14
  303faa: 4610         	mov	r0, r2
  303fac: 4a8e         	ldr	r2, [pc, #0x238]        @ 0x3041e8 <ConfigLayer::onRecord(cocos2d::CCObject*)+0x3e4>
  303fae: 447a         	add	r2, pc
  303fb0: 4611         	mov	r1, r2
  303fb2: 461a         	mov	r2, r3
  303fb4: f0b2 f554    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4b2aa8
  303fb8: ab09         	add	r3, sp, #0x24
  303fba: 4618         	mov	r0, r3
  303fbc: f295 fd3e    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x295a7c
  303fc0: 4603         	mov	r3, r0
  303fc2: 4628         	mov	r0, r5
  303fc4: 4619         	mov	r1, r3
  303fc6: 2200         	movs	r2, #0x0
  303fc8: f295 ff22    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x295e44
  303fcc: 4603         	mov	r3, r0
  303fce: 9803         	ldr	r0, [sp, #0xc]
  303fd0: a90a         	add	r1, sp, #0x28
  303fd2: aa0b         	add	r2, sp, #0x2c
  303fd4: 2500         	movs	r5, #0x0
  303fd6: 9500         	str	r5, [sp]
  303fd8: 9001         	str	r0, [sp, #0x4]
  303fda: 4884         	ldr	r0, [pc, #0x210]        @ 0x3041ec <ConfigLayer::onRecord(cocos2d::CCObject*)+0x3e8>
  303fdc: 5820         	ldr	r0, [r4, r0]
  303fde: f7db fc09    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0x247ee
  303fe2: ab09         	add	r3, sp, #0x24
  303fe4: 4618         	mov	r0, r3
  303fe6: f0b1 f495    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b192a
  303fea: ab05         	add	r3, sp, #0x14
  303fec: 4618         	mov	r0, r3
  303fee: f086 f205    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x48640a
  303ff2: ab08         	add	r3, sp, #0x20
  303ff4: 4618         	mov	r0, r3
  303ff6: f0b1 f48d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b191a
  303ffa: ab04         	add	r3, sp, #0x10
  303ffc: 4618         	mov	r0, r3
  303ffe: f086 f1fd    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4863fa
  304002: ab0b         	add	r3, sp, #0x2c
  304004: 4618         	mov	r0, r3
  304006: f0b1 f485    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b190a
  30400a: ab07         	add	r3, sp, #0x1c
  30400c: 4618         	mov	r0, r3
  30400e: f086 f1f5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4863ea
  304012: ab0a         	add	r3, sp, #0x28
  304014: 4618         	mov	r0, r3
  304016: f0b1 f47d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b18fa
  30401a: ab06         	add	r3, sp, #0x18
  30401c: 4618         	mov	r0, r3
  30401e: f086 f1ed    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4863da
  304022: e0cc         	b	0x3041be <ConfigLayer::onRecord(cocos2d::CCObject*)+0x3ba> @ imm = #0x198
  304024: ab07         	add	r3, sp, #0x1c
  304026: 4618         	mov	r0, r3
  304028: f086 f1e4    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4863c8
  30402c: aa0a         	add	r2, sp, #0x28
  30402e: ab07         	add	r3, sp, #0x1c
  304030: 4610         	mov	r0, r2
  304032: 4a6f         	ldr	r2, [pc, #0x1bc]        @ 0x3041f0 <ConfigLayer::onRecord(cocos2d::CCObject*)+0x3ec>
  304034: 447a         	add	r2, pc
  304036: 4611         	mov	r1, r2
  304038: 461a         	mov	r2, r3
  30403a: f0b2 f511    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4b2a22
  30403e: ab08         	add	r3, sp, #0x20
  304040: 4618         	mov	r0, r3
  304042: f086 f1d7    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4863ae
  304046: aa0b         	add	r2, sp, #0x2c
  304048: ab08         	add	r3, sp, #0x20
  30404a: 4610         	mov	r0, r2
  30404c: 4a69         	ldr	r2, [pc, #0x1a4]        @ 0x3041f4 <ConfigLayer::onRecord(cocos2d::CCObject*)+0x3f0>
  30404e: 447a         	add	r2, pc
  304050: 4611         	mov	r1, r2
  304052: 461a         	mov	r2, r3
  304054: f0b2 f504    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4b2a08
  304058: ab06         	add	r3, sp, #0x18
  30405a: 4618         	mov	r0, r3
  30405c: f086 f1ca    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x486394
  304060: aa09         	add	r2, sp, #0x24
  304062: ab06         	add	r3, sp, #0x18
  304064: 4610         	mov	r0, r2
  304066: 4a64         	ldr	r2, [pc, #0x190]        @ 0x3041f8 <ConfigLayer::onRecord(cocos2d::CCObject*)+0x3f4>
  304068: 447a         	add	r2, pc
  30406a: 4611         	mov	r1, r2
  30406c: 461a         	mov	r2, r3
  30406e: f0b2 f4f7    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4b29ee
  304072: ab09         	add	r3, sp, #0x24
  304074: 4618         	mov	r0, r3
  304076: f295 fce1    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2959c2
  30407a: 4603         	mov	r3, r0
  30407c: 4618         	mov	r0, r3
  30407e: 2100         	movs	r1, #0x0
  304080: f295 fec6    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x295d8c
  304084: 4603         	mov	r3, r0
  304086: a90a         	add	r1, sp, #0x28
  304088: aa0b         	add	r2, sp, #0x2c
  30408a: 2000         	movs	r0, #0x0
  30408c: 9000         	str	r0, [sp]
  30408e: 2000         	movs	r0, #0x0
  304090: 9001         	str	r0, [sp, #0x4]
  304092: 2000         	movs	r0, #0x0
  304094: f7db fbae    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0x248a4
  304098: ab09         	add	r3, sp, #0x24
  30409a: 4618         	mov	r0, r3
  30409c: f0b1 f43a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b1874
  3040a0: ab06         	add	r3, sp, #0x18
  3040a2: 4618         	mov	r0, r3
  3040a4: f086 f1aa    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x486354
  3040a8: ab0b         	add	r3, sp, #0x2c
  3040aa: 4618         	mov	r0, r3
  3040ac: f0b1 f432    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b1864
  3040b0: ab08         	add	r3, sp, #0x20
  3040b2: 4618         	mov	r0, r3
  3040b4: f086 f1a2    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x486344
  3040b8: ab0a         	add	r3, sp, #0x28
  3040ba: 4618         	mov	r0, r3
  3040bc: f0b1 f42a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b1854
  3040c0: ab07         	add	r3, sp, #0x1c
  3040c2: 4618         	mov	r0, r3
  3040c4: f086 f19a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x486334
  3040c8: f11e fe28    	bl	0x422d1c <ApplicationInterface::startVideoRecording()> @ imm = #0x11ec50
  3040cc: 9b03         	ldr	r3, [sp, #0xc]
  3040ce: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3040d2: 681b         	ldr	r3, [r3]
  3040d4: f503 7305    	add.w	r3, r3, #0x214
  3040d8: 681c         	ldr	r4, [r3]
  3040da: 9b03         	ldr	r3, [sp, #0xc]
  3040dc: f8d3 5154    	ldr.w	r5, [r3, #0x154]
  3040e0: f2d8 fc92    	bl	0x5dca08 <cocos2d::CCSpriteFrameCache::sharedSpriteFrameCache()> @ imm = #0x2d8924
  3040e4: 4603         	mov	r3, r0
  3040e6: 4618         	mov	r0, r3
  3040e8: 4b44         	ldr	r3, [pc, #0x110]        @ 0x3041fc <ConfigLayer::onRecord(cocos2d::CCObject*)+0x3f8>
  3040ea: 447b         	add	r3, pc
  3040ec: 4619         	mov	r1, r3
  3040ee: f2da f82b    	bl	0x5de148 <cocos2d::CCSpriteFrameCache::spriteFrameByName(char const*)> @ imm = #0x2da056
  3040f2: 4603         	mov	r3, r0
  3040f4: 4628         	mov	r0, r5
  3040f6: 4619         	mov	r1, r3
  3040f8: 47a0         	blx	r4
  3040fa: e060         	b	0x3041be <ConfigLayer::onRecord(cocos2d::CCObject*)+0x3ba> @ imm = #0xc0
  3040fc: ab09         	add	r3, sp, #0x24
  3040fe: 4618         	mov	r0, r3
  304100: f0b1 f408    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b1810
  304104: e7ff         	b	0x304106 <ConfigLayer::onRecord(cocos2d::CCObject*)+0x302> @ imm = #-0x2
  304106: ab06         	add	r3, sp, #0x18
  304108: 4618         	mov	r0, r3
  30410a: f086 f177    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4862ee
  30410e: ab0b         	add	r3, sp, #0x2c
  304110: 4618         	mov	r0, r3
  304112: f0b1 f3ff    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b17fe
  304116: e7ff         	b	0x304118 <ConfigLayer::onRecord(cocos2d::CCObject*)+0x314> @ imm = #-0x2
  304118: ab08         	add	r3, sp, #0x20
  30411a: 4618         	mov	r0, r3
  30411c: f086 f16e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4862dc
  304120: ab0a         	add	r3, sp, #0x28
  304122: 4618         	mov	r0, r3
  304124: f0b1 f3f6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b17ec
  304128: e7ff         	b	0x30412a <ConfigLayer::onRecord(cocos2d::CCObject*)+0x326> @ imm = #-0x2
  30412a: ab07         	add	r3, sp, #0x1c
  30412c: 4618         	mov	r0, r3
  30412e: f086 f165    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4862ca
  304132: f083 f7bb    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x483f76
  304136: ab09         	add	r3, sp, #0x24
  304138: 4618         	mov	r0, r3
  30413a: f0b1 f3eb    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b17d6
  30413e: e7ff         	b	0x304140 <ConfigLayer::onRecord(cocos2d::CCObject*)+0x33c> @ imm = #-0x2
  304140: ab05         	add	r3, sp, #0x14
  304142: 4618         	mov	r0, r3
  304144: f086 f15a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4862b4
  304148: e7ff         	b	0x30414a <ConfigLayer::onRecord(cocos2d::CCObject*)+0x346> @ imm = #-0x2
  30414a: ab08         	add	r3, sp, #0x20
  30414c: 4618         	mov	r0, r3
  30414e: f0b1 f3e1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b17c2
  304152: e7ff         	b	0x304154 <ConfigLayer::onRecord(cocos2d::CCObject*)+0x350> @ imm = #-0x2
  304154: ab04         	add	r3, sp, #0x10
  304156: 4618         	mov	r0, r3
  304158: f086 f150    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4862a0
  30415c: ab0b         	add	r3, sp, #0x2c
  30415e: 4618         	mov	r0, r3
  304160: f0b1 f3d8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b17b0
  304164: e7ff         	b	0x304166 <ConfigLayer::onRecord(cocos2d::CCObject*)+0x362> @ imm = #-0x2
  304166: ab07         	add	r3, sp, #0x1c
  304168: 4618         	mov	r0, r3
  30416a: f086 f147    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x48628e
  30416e: ab0a         	add	r3, sp, #0x28
  304170: 4618         	mov	r0, r3
  304172: f0b1 f3cf    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b179e
  304176: e7ff         	b	0x304178 <ConfigLayer::onRecord(cocos2d::CCObject*)+0x374> @ imm = #-0x2
  304178: ab06         	add	r3, sp, #0x18
  30417a: 4618         	mov	r0, r3
  30417c: f086 f13e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x48627c
  304180: f083 f794    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x483f28
  304184: ab09         	add	r3, sp, #0x24
  304186: 4618         	mov	r0, r3
  304188: f0b1 f3c4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b1788
  30418c: e7ff         	b	0x30418e <ConfigLayer::onRecord(cocos2d::CCObject*)+0x38a> @ imm = #-0x2
  30418e: ab06         	add	r3, sp, #0x18
  304190: 4618         	mov	r0, r3
  304192: f086 f133    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x486266
  304196: ab0b         	add	r3, sp, #0x2c
  304198: 4618         	mov	r0, r3
  30419a: f0b1 f3bb    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b1776
  30419e: e7ff         	b	0x3041a0 <ConfigLayer::onRecord(cocos2d::CCObject*)+0x39c> @ imm = #-0x2
  3041a0: ab08         	add	r3, sp, #0x20
  3041a2: 4618         	mov	r0, r3
  3041a4: f086 f12a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x486254
  3041a8: ab0a         	add	r3, sp, #0x28
  3041aa: 4618         	mov	r0, r3
  3041ac: f0b1 f3b2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b1764
  3041b0: e7ff         	b	0x3041b2 <ConfigLayer::onRecord(cocos2d::CCObject*)+0x3ae> @ imm = #-0x2
  3041b2: ab07         	add	r3, sp, #0x1c
  3041b4: 4618         	mov	r0, r3
  3041b6: f086 f121    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x486242
  3041ba: f083 f777    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x483eee
  3041be: b00d         	add	sp, #0x34
  3041c0: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3041c1); words below are literal-pool data ---
  3041c2: bf00         	nop
  3041c4: ebfa 0062    	<unknown>
  3041c8: d730         	bvc	0x30422c <ConfigLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x2c> @ imm = #0x60
  3041ca: ffff 1402    	<unknown>
  3041ce: 004c         	lsls	r4, r1, #0x1
  3041d0: 1516         	asrs	r6, r2, #0x14
  3041d2: 004c         	lsls	r4, r1, #0x1
  3041d4: 1510         	asrs	r0, r2, #0x14
  3041d6: 004c         	lsls	r4, r1, #0x1
  3041d8: 143e         	asrs	r6, r7, #0x10
  3041da: 004c         	lsls	r4, r1, #0x1
  3041dc: 1496         	asrs	r6, r2, #0x12
  3041de: 004c         	lsls	r4, r1, #0x1
  3041e0: 148c         	asrs	r4, r1, #0x12
  3041e2: 004c         	lsls	r4, r1, #0x1
  3041e4: 14d6         	asrs	r6, r2, #0x13
  3041e6: 004c         	lsls	r4, r1, #0x1
  3041e8: 14ba         	asrs	r2, r7, #0x12
  3041ea: 004c         	lsls	r4, r1, #0x1
  3041ec: d950         	bls	0x304290 <ConfigLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x90> @ imm = #0xa0
  3041ee: ffff 1440    	<unknown>
  3041f2: 004c         	lsls	r4, r1, #0x1
  3041f4: 143a         	asrs	r2, r7, #0x10
  3041f6: 004c         	lsls	r4, r1, #0x1
  3041f8: 12b0         	asrs	r0, r6, #0xa
  3041fa: 004c         	lsls	r4, r1, #0x1
  3041fc: 1192         	asrs	r2, r2, #0x6
  3041fe: 004c         	lsls	r4, r1, #0x1

// ==== ConfigLayer::messageBoxHandler
//      file offset 0x304200 (= ELF address; Ghidra 0x314200), 316 bytes, Thumb-2
  304200: b530         	push	{r4, r5, lr}
  304202: b08f         	sub	sp, #0x3c
  304204: 9005         	str	r0, [sp, #0x14]
  304206: 9104         	str	r1, [sp, #0x10]
  304208: 9203         	str	r2, [sp, #0xc]
  30420a: 9b05         	ldr	r3, [sp, #0x14]
  30420c: 2b01         	cmp	r3, #0x1
  30420e: f040 808b    	bne.w	0x304328 <ConfigLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x128> @ imm = #0x116
  304212: ab08         	add	r3, sp, #0x20
  304214: 4618         	mov	r0, r3
  304216: f086 f0ed    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4861da
  30421a: aa0b         	add	r2, sp, #0x2c
  30421c: ab08         	add	r3, sp, #0x20
  30421e: 4610         	mov	r0, r2
  304220: 4a42         	ldr	r2, [pc, #0x108]        @ 0x30432c <ConfigLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x12c>
  304222: 447a         	add	r2, pc
  304224: 4611         	mov	r1, r2
  304226: 461a         	mov	r2, r3
  304228: f0b2 f41a    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4b2834
  30422c: ab09         	add	r3, sp, #0x24
  30422e: 4618         	mov	r0, r3
  304230: f086 f0e0    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4861c0
  304234: aa0c         	add	r2, sp, #0x30
  304236: ab09         	add	r3, sp, #0x24
  304238: 4610         	mov	r0, r2
  30423a: 4a3d         	ldr	r2, [pc, #0xf4]         @ 0x304330 <ConfigLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x130>
  30423c: 447a         	add	r2, pc
  30423e: 4611         	mov	r1, r2
  304240: 461a         	mov	r2, r3
  304242: f0b2 f40d    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4b281a
  304246: ab07         	add	r3, sp, #0x1c
  304248: 4618         	mov	r0, r3
  30424a: f086 f0d3    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4861a6
  30424e: aa0a         	add	r2, sp, #0x28
  304250: ab07         	add	r3, sp, #0x1c
  304252: 4610         	mov	r0, r2
  304254: 4a37         	ldr	r2, [pc, #0xdc]         @ 0x304334 <ConfigLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x134>
  304256: 447a         	add	r2, pc
  304258: 4611         	mov	r1, r2
  30425a: 461a         	mov	r2, r3
  30425c: f0b2 f400    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4b2800
  304260: ab0a         	add	r3, sp, #0x28
  304262: 4618         	mov	r0, r3
  304264: f295 fbea    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2957d4
  304268: 4603         	mov	r3, r0
  30426a: 4618         	mov	r0, r3
  30426c: 2100         	movs	r1, #0x0
  30426e: f295 fdcf    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x295b9e
  304272: 4603         	mov	r3, r0
  304274: a90b         	add	r1, sp, #0x2c
  304276: aa0c         	add	r2, sp, #0x30
  304278: 2000         	movs	r0, #0x0
  30427a: 9000         	str	r0, [sp]
  30427c: 2000         	movs	r0, #0x0
  30427e: 9001         	str	r0, [sp, #0x4]
  304280: 2000         	movs	r0, #0x0
  304282: f7db fab7    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0x24a92
  304286: ab0a         	add	r3, sp, #0x28
  304288: 4618         	mov	r0, r3
  30428a: f0b1 f343    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b1686
  30428e: ab07         	add	r3, sp, #0x1c
  304290: 4618         	mov	r0, r3
  304292: f086 f0b3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x486166
  304296: ab0c         	add	r3, sp, #0x30
  304298: 4618         	mov	r0, r3
  30429a: f0b1 f33b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b1676
  30429e: ab09         	add	r3, sp, #0x24
  3042a0: 4618         	mov	r0, r3
  3042a2: f086 f0ab    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x486156
  3042a6: ab0b         	add	r3, sp, #0x2c
  3042a8: 4618         	mov	r0, r3
  3042aa: f0b1 f333    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b1666
  3042ae: ab08         	add	r3, sp, #0x20
  3042b0: 4618         	mov	r0, r3
  3042b2: f086 f0a3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x486146
  3042b6: 9b03         	ldr	r3, [sp, #0xc]
  3042b8: 930d         	str	r3, [sp, #0x34]
  3042ba: f11e fd2f    	bl	0x422d1c <ApplicationInterface::startVideoRecording()> @ imm = #0x11ea5e
  3042be: 9b0d         	ldr	r3, [sp, #0x34]
  3042c0: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3042c4: 681b         	ldr	r3, [r3]
  3042c6: f503 7305    	add.w	r3, r3, #0x214
  3042ca: 681c         	ldr	r4, [r3]
  3042cc: 9b0d         	ldr	r3, [sp, #0x34]
  3042ce: f8d3 5154    	ldr.w	r5, [r3, #0x154]
  3042d2: f2d8 fb99    	bl	0x5dca08 <cocos2d::CCSpriteFrameCache::sharedSpriteFrameCache()> @ imm = #0x2d8732
  3042d6: 4603         	mov	r3, r0
  3042d8: 4618         	mov	r0, r3
  3042da: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x304338 <ConfigLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x138>
  3042dc: 447b         	add	r3, pc
  3042de: 4619         	mov	r1, r3
  3042e0: f2d9 ff32    	bl	0x5de148 <cocos2d::CCSpriteFrameCache::spriteFrameByName(char const*)> @ imm = #0x2d9e64
  3042e4: 4603         	mov	r3, r0
  3042e6: 4628         	mov	r0, r5
  3042e8: 4619         	mov	r1, r3
  3042ea: 47a0         	blx	r4
  3042ec: e01c         	b	0x304328 <ConfigLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x128> @ imm = #0x38
  3042ee: ab0a         	add	r3, sp, #0x28
  3042f0: 4618         	mov	r0, r3
  3042f2: f0b1 f30f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b161e
  3042f6: e7ff         	b	0x3042f8 <ConfigLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0xf8> @ imm = #-0x2
  3042f8: ab07         	add	r3, sp, #0x1c
  3042fa: 4618         	mov	r0, r3
  3042fc: f086 f07e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4860fc
  304300: ab0c         	add	r3, sp, #0x30
  304302: 4618         	mov	r0, r3
  304304: f0b1 f306    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b160c
  304308: e7ff         	b	0x30430a <ConfigLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x10a> @ imm = #-0x2
  30430a: ab09         	add	r3, sp, #0x24
  30430c: 4618         	mov	r0, r3
  30430e: f086 f075    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4860ea
  304312: ab0b         	add	r3, sp, #0x2c
  304314: 4618         	mov	r0, r3
  304316: f0b1 f2fd    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b15fa
  30431a: e7ff         	b	0x30431c <ConfigLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x11c> @ imm = #-0x2
  30431c: ab08         	add	r3, sp, #0x20
  30431e: 4618         	mov	r0, r3
  304320: f086 f06c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4860d8
  304324: f083 f6c2    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x483d84
  304328: b00f         	add	sp, #0x3c
  30432a: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x30432b); words below are literal-pool data ---
  30432c: 1252         	asrs	r2, r2, #0x9
  30432e: 004c         	lsls	r4, r1, #0x1
  304330: 124c         	asrs	r4, r1, #0x9
  304332: 004c         	lsls	r4, r1, #0x1
  304334: 10c2         	asrs	r2, r0, #0x3
  304336: 004c         	lsls	r4, r1, #0x1
  304338: 0fa0         	lsrs	r0, r4, #0x1e
  30433a: 004c         	lsls	r4, r1, #0x1
