// ProxyMine: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 6 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../ProxyMine.cpp

// ==== ProxyMine::ProxyMine
//      file offset 0x3b5d34 (= ELF address; Ghidra 0x3c5d34), 372 bytes, Thumb-2
  3b5d34: b530         	push	{r4, r5, lr}
  3b5d36: b083         	sub	sp, #0xc
  3b5d38: 9001         	str	r0, [sp, #0x4]
  3b5d3a: 4c54         	ldr	r4, [pc, #0x150]        @ 0x3b5e8c <ProxyMine::ProxyMine()+0x158>
  3b5d3c: 447c         	add	r4, pc
  3b5d3e: 9b01         	ldr	r3, [sp, #0x4]
  3b5d40: 4618         	mov	r0, r3
  3b5d42: f1d9 fc79    	bl	0x58f638 <cocos2d::CCNode::CCNode()> @ imm = #0x1d98f2
  3b5d46: 9b01         	ldr	r3, [sp, #0x4]
  3b5d48: 4a51         	ldr	r2, [pc, #0x144]        @ 0x3b5e90 <ProxyMine::ProxyMine()+0x15c>
  3b5d4a: 58a2         	ldr	r2, [r4, r2]
  3b5d4c: 3208         	adds	r2, #0x8
  3b5d4e: 601a         	str	r2, [r3]
  3b5d50: 9b01         	ldr	r3, [sp, #0x4]
  3b5d52: 33e8         	adds	r3, #0xe8
  3b5d54: 4618         	mov	r0, r3
  3b5d56: f3ff fa2b    	bl	0x7b51b0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18700> @ imm = #0x3ff456
  3b5d5a: 9b01         	ldr	r3, [sp, #0x4]
  3b5d5c: f503 7380    	add.w	r3, r3, #0x100
  3b5d60: 2402         	movs	r4, #0x2
  3b5d62: 461d         	mov	r5, r3
  3b5d64: e004         	b	0x3b5d70 <ProxyMine::ProxyMine()+0x3c> @ imm = #0x8
  3b5d66: 4628         	mov	r0, r5
  3b5d68: f1dd fa9c    	bl	0x5932a4 <cocos2d::CCRect::CCRect()> @ imm = #0x1dd538
  3b5d6c: 3510         	adds	r5, #0x10
  3b5d6e: 3c01         	subs	r4, #0x1
  3b5d70: f1b4 3fff    	cmp.w	r4, #0xffffffff
  3b5d74: d1f7         	bne	0x3b5d66 <ProxyMine::ProxyMine()+0x32> @ imm = #-0x12
  3b5d76: 9b01         	ldr	r3, [sp, #0x4]
  3b5d78: 2200         	movs	r2, #0x0
  3b5d7a: f883 2134    	strb.w	r2, [r3, #0x134]
  3b5d7e: 9b01         	ldr	r3, [sp, #0x4]
  3b5d80: 2200         	movs	r2, #0x0
  3b5d82: f883 2135    	strb.w	r2, [r3, #0x135]
  3b5d86: 4b43         	ldr	r3, [pc, #0x10c]        @ 0x3b5e94 <ProxyMine::ProxyMine()+0x160>
  3b5d88: 447b         	add	r3, pc
  3b5d8a: 4618         	mov	r0, r3
  3b5d8c: f222 faba    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x222574
  3b5d90: 4602         	mov	r2, r0
  3b5d92: 9b01         	ldr	r3, [sp, #0x4]
  3b5d94: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  3b5d98: 9b01         	ldr	r3, [sp, #0x4]
  3b5d9a: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3b5d9e: 4618         	mov	r0, r3
  3b5da0: f1e2 f8a2    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1e2144
  3b5da4: 9a01         	ldr	r2, [sp, #0x4]
  3b5da6: 9b01         	ldr	r3, [sp, #0x4]
  3b5da8: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3b5dac: 4610         	mov	r0, r2
  3b5dae: 4619         	mov	r1, r3
  3b5db0: f1da fb9c    	bl	0x5904ec <cocos2d::CCNode::addChild(cocos2d::CCNode*)> @ imm = #0x1da738
  3b5db4: 9b01         	ldr	r3, [sp, #0x4]
  3b5db6: 4618         	mov	r0, r3
  3b5db8: 2100         	movs	r1, #0x0
  3b5dba: f1da f869    	bl	0x58fe90 <cocos2d::CCNode::setVisible(bool)> @ imm = #0x1da0d2
  3b5dbe: 9b01         	ldr	r3, [sp, #0x4]
  3b5dc0: 2200         	movs	r2, #0x0
  3b5dc2: f8c3 20ec    	str.w	r2, [r3, #0xec]
  3b5dc6: 9b01         	ldr	r3, [sp, #0x4]
  3b5dc8: 33e8         	adds	r3, #0xe8
  3b5dca: 4618         	mov	r0, r3
  3b5dcc: 4b32         	ldr	r3, [pc, #0xc8]         @ 0x3b5e98 <ProxyMine::ProxyMine()+0x164>
  3b5dce: 447b         	add	r3, pc
  3b5dd0: 4619         	mov	r1, r3
  3b5dd2: f000 f04d    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x40009a
  3b5dd6: 9b01         	ldr	r3, [sp, #0x4]
  3b5dd8: 2200         	movs	r2, #0x0
  3b5dda: f8c3 20f8    	str.w	r2, [r3, #0xf8]
  3b5dde: 9b01         	ldr	r3, [sp, #0x4]
  3b5de0: f04f 0200    	mov.w	r2, #0x0
  3b5de4: f8c3 20fc    	str.w	r2, [r3, #0xfc]
  3b5de8: 9b01         	ldr	r3, [sp, #0x4]
  3b5dea: f04f 0200    	mov.w	r2, #0x0
  3b5dee: f8c3 20f4    	str.w	r2, [r3, #0xf4]
  3b5df2: 9b01         	ldr	r3, [sp, #0x4]
  3b5df4: f04f 0200    	mov.w	r2, #0x0
  3b5df8: f8c3 20f0    	str.w	r2, [r3, #0xf0]
  3b5dfc: 9b01         	ldr	r3, [sp, #0x4]
  3b5dfe: 2200         	movs	r2, #0x0
  3b5e00: f8c3 2130    	str.w	r2, [r3, #0x130]
  3b5e04: 9b01         	ldr	r3, [sp, #0x4]
  3b5e06: f503 7480    	add.w	r4, r3, #0x100
  3b5e0a: 4b24         	ldr	r3, [pc, #0x90]         @ 0x3b5e9c <ProxyMine::ProxyMine()+0x168>
  3b5e0c: 447b         	add	r3, pc
  3b5e0e: 4618         	mov	r0, r3
  3b5e10: f222 fa78    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2224f0
  3b5e14: 4603         	mov	r3, r0
  3b5e16: 4618         	mov	r0, r3
  3b5e18: f726 ff60    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0xd9140
  3b5e1c: 4603         	mov	r3, r0
  3b5e1e: 4620         	mov	r0, r4
  3b5e20: 4619         	mov	r1, r3
  3b5e22: f1dd fa97    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x1dd52e
  3b5e26: 9b01         	ldr	r3, [sp, #0x4]
  3b5e28: f503 7488    	add.w	r4, r3, #0x110
  3b5e2c: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x3b5ea0 <ProxyMine::ProxyMine()+0x16c>
  3b5e2e: 447b         	add	r3, pc
  3b5e30: 4618         	mov	r0, r3
  3b5e32: f222 fa67    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2224ce
  3b5e36: 4603         	mov	r3, r0
  3b5e38: 4618         	mov	r0, r3
  3b5e3a: f726 ff4f    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0xd9162
  3b5e3e: 4603         	mov	r3, r0
  3b5e40: 4620         	mov	r0, r4
  3b5e42: 4619         	mov	r1, r3
  3b5e44: f1dd fa86    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x1dd50c
  3b5e48: 9b01         	ldr	r3, [sp, #0x4]
  3b5e4a: f503 7490    	add.w	r4, r3, #0x120
  3b5e4e: 4b15         	ldr	r3, [pc, #0x54]         @ 0x3b5ea4 <ProxyMine::ProxyMine()+0x170>
  3b5e50: 447b         	add	r3, pc
  3b5e52: 4618         	mov	r0, r3
  3b5e54: f222 fa56    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2224ac
  3b5e58: 4603         	mov	r3, r0
  3b5e5a: 4618         	mov	r0, r3
  3b5e5c: f726 ff3e    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0xd9184
  3b5e60: 4603         	mov	r3, r0
  3b5e62: 4620         	mov	r0, r4
  3b5e64: 4619         	mov	r1, r3
  3b5e66: f1dd fa75    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x1dd4ea
  3b5e6a: 9b01         	ldr	r3, [sp, #0x4]
  3b5e6c: e00b         	b	0x3b5e86 <ProxyMine::ProxyMine()+0x152> @ imm = #0x16
  3b5e6e: 9b01         	ldr	r3, [sp, #0x4]
  3b5e70: 33e8         	adds	r3, #0xe8
  3b5e72: 4618         	mov	r0, r3
  3b5e74: f3ff fd4e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3ffa9c
  3b5e78: e7ff         	b	0x3b5e7a <ProxyMine::ProxyMine()+0x146> @ imm = #-0x2
  3b5e7a: 9b01         	ldr	r3, [sp, #0x4]
  3b5e7c: 4618         	mov	r0, r3
  3b5e7e: f1d9 fce1    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x1d99c2
  3b5e82: f3d2 f913    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3d2226
  3b5e86: 4618         	mov	r0, r3
  3b5e88: b003         	add	sp, #0xc
  3b5e8a: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3b5e8b); words below are literal-pool data ---
  3b5e8c: cccc         	ldm	r4!, {r2, r3, r6, r7}
  3b5e8e: 0057         	lsls	r7, r2, #0x1
  3b5e90: de0c         	udf	#0xc
  3b5e92: ffff e3fc    	vrsra.u64	q15, q14, #0x1
  3b5e96: 0041         	lsls	r1, r0, #0x1
  3b5e98: e3c2         	b	0x3b6620 <ProxyMine::removeMine(bool)+0x398> @ imm = #0x784
  3b5e9a: 0041         	lsls	r1, r0, #0x1
  3b5e9c: e388         	b	0x3b65b0 <ProxyMine::removeMine(bool)+0x328> @ imm = #0x710
  3b5e9e: 0041         	lsls	r1, r0, #0x1
  3b5ea0: e372         	b	0x3b6588 <ProxyMine::removeMine(bool)+0x300> @ imm = #0x6e4
  3b5ea2: 0041         	lsls	r1, r0, #0x1
  3b5ea4: e35c         	b	0x3b6560 <ProxyMine::removeMine(bool)+0x2d8> @ imm = #0x6b8
  3b5ea6: 0041         	lsls	r1, r0, #0x1

// ==== ProxyMine::~ProxyMine
//      file offset 0x3b5ea8 (= ELF address; Ghidra 0x3c5ea8), 80 bytes, Thumb-2
  3b5ea8: b500         	push	{lr}
  3b5eaa: b083         	sub	sp, #0xc
  3b5eac: 9001         	str	r0, [sp, #0x4]
  3b5eae: 4910         	ldr	r1, [pc, #0x40]         @ 0x3b5ef0 <ProxyMine::~ProxyMine()+0x48>
  3b5eb0: 4479         	add	r1, pc
  3b5eb2: 9b01         	ldr	r3, [sp, #0x4]
  3b5eb4: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x3b5ef4 <ProxyMine::~ProxyMine()+0x4c>
  3b5eb6: 588a         	ldr	r2, [r1, r2]
  3b5eb8: 3208         	adds	r2, #0x8
  3b5eba: 601a         	str	r2, [r3]
  3b5ebc: 9b01         	ldr	r3, [sp, #0x4]
  3b5ebe: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3b5ec2: 4618         	mov	r0, r3
  3b5ec4: f1e1 fff8    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1e1ff0
  3b5ec8: 9b01         	ldr	r3, [sp, #0x4]
  3b5eca: 33e8         	adds	r3, #0xe8
  3b5ecc: 4618         	mov	r0, r3
  3b5ece: f3ff fd21    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3ffa42
  3b5ed2: 9b01         	ldr	r3, [sp, #0x4]
  3b5ed4: 4618         	mov	r0, r3
  3b5ed6: f1d9 fcb5    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x1d996a
  3b5eda: 2300         	movs	r3, #0x0
  3b5edc: 2b00         	cmp	r3, #0x0
  3b5ede: d002         	beq	0x3b5ee6 <ProxyMine::~ProxyMine()+0x3e> @ imm = #0x4
  3b5ee0: 9801         	ldr	r0, [sp, #0x4]
  3b5ee2: f3d2 f8df    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3d21be
  3b5ee6: 9b01         	ldr	r3, [sp, #0x4]
  3b5ee8: 4618         	mov	r0, r3
  3b5eea: b003         	add	sp, #0xc
  3b5eec: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3b5eef); words below are literal-pool data ---
  3b5ef0: cb58         	ldm	r3, {r3, r4, r6}
  3b5ef2: 0057         	lsls	r7, r2, #0x1
  3b5ef4: de0c         	udf	#0xc
  3b5ef6: ffff b500    	<unknown>

// ==== ProxyMine::~ProxyMine
//      file offset 0x3b5ef8 (= ELF address; Ghidra 0x3c5ef8), 28 bytes, Thumb-2
  3b5ef8: b500         	push	{lr}
  3b5efa: b083         	sub	sp, #0xc
  3b5efc: 9001         	str	r0, [sp, #0x4]
  3b5efe: 9801         	ldr	r0, [sp, #0x4]
  3b5f00: f7ff ffd2    	bl	0x3b5ea8 <ProxyMine::~ProxyMine()> @ imm = #-0x5c
  3b5f04: 9801         	ldr	r0, [sp, #0x4]
  3b5f06: f3d2 f8cd    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3d219a
  3b5f0a: 9b01         	ldr	r3, [sp, #0x4]
  3b5f0c: 4618         	mov	r0, r3
  3b5f0e: b003         	add	sp, #0xc
  3b5f10: f85d fb04    	ldr	pc, [sp], #4

// ==== ProxyMine::reset
//      file offset 0x3b5f18 (= ELF address; Ghidra 0x3c5f18), 240 bytes, Thumb-2
  3b5f18: b082         	sub	sp, #0x8
  3b5f1a: b530         	push	{r4, r5, lr}
  3b5f1c: b085         	sub	sp, #0x14
  3b5f1e: 9001         	str	r0, [sp, #0x4]
  3b5f20: a908         	add	r1, sp, #0x20
  3b5f22: e881 000c    	stm.w	r1, {r2, r3}
  3b5f26: 4836         	ldr	r0, [pc, #0xd8]         @ 0x3b6000 <ProxyMine::reset(cpVect, std::string, int, int)+0xe8>
  3b5f28: 4478         	add	r0, pc
  3b5f2a: 9b01         	ldr	r3, [sp, #0x4]
  3b5f2c: f04f 0200    	mov.w	r2, #0x0
  3b5f30: f8c3 20f0    	str.w	r2, [r3, #0xf0]
  3b5f34: 9b01         	ldr	r3, [sp, #0x4]
  3b5f36: f04f 0200    	mov.w	r2, #0x0
  3b5f3a: f8c3 20f4    	str.w	r2, [r3, #0xf4]
  3b5f3e: 9b01         	ldr	r3, [sp, #0x4]
  3b5f40: f04f 0200    	mov.w	r2, #0x0
  3b5f44: f8c3 20fc    	str.w	r2, [r3, #0xfc]
  3b5f48: 9b01         	ldr	r3, [sp, #0x4]
  3b5f4a: 681b         	ldr	r3, [r3]
  3b5f4c: 3340         	adds	r3, #0x40
  3b5f4e: 681b         	ldr	r3, [r3]
  3b5f50: 9a01         	ldr	r2, [sp, #0x4]
  3b5f52: 492c         	ldr	r1, [pc, #0xb0]         @ 0x3b6004 <ProxyMine::reset(cpVect, std::string, int, int)+0xec>
  3b5f54: 5841         	ldr	r1, [r0, r1]
  3b5f56: edd1 7a00    	vldr	s15, [r1]
  3b5f5a: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3b5f5e: ed9f 7b26    	vldr	d7, [pc, #152]          @ 0x3b5ff8 <ProxyMine::reset(cpVect, std::string, int, int)+0xe0>
  3b5f62: ee36 7b07    	vadd.f64	d7, d6, d7
  3b5f66: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3b5f6a: 4610         	mov	r0, r2
  3b5f6c: ee17 1a90    	vmov	r1, s15
  3b5f70: 4798         	blx	r3
  3b5f72: 9b01         	ldr	r3, [sp, #0x4]
  3b5f74: 681b         	ldr	r3, [r3]
  3b5f76: 334c         	adds	r3, #0x4c
  3b5f78: 681c         	ldr	r4, [r3]
  3b5f7a: 9d01         	ldr	r5, [sp, #0x4]
  3b5f7c: ed9d 7b08    	vldr	d7, [sp, #32]
  3b5f80: eef7 6bc7    	vcvt.f32.f64	s13, d7
  3b5f84: ed9d 7b0a    	vldr	d7, [sp, #40]
  3b5f88: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3b5f8c: ab02         	add	r3, sp, #0x8
  3b5f8e: 4618         	mov	r0, r3
  3b5f90: ee16 1a90    	vmov	r1, s13
  3b5f94: ee17 2a90    	vmov	r2, s15
  3b5f98: f1dc feaa    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1dcd54
  3b5f9c: ab02         	add	r3, sp, #0x8
  3b5f9e: 4628         	mov	r0, r5
  3b5fa0: 4619         	mov	r1, r3
  3b5fa2: 47a0         	blx	r4
  3b5fa4: 9b01         	ldr	r3, [sp, #0x4]
  3b5fa6: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3b5faa: 681b         	ldr	r3, [r3]
  3b5fac: 3398         	adds	r3, #0x98
  3b5fae: 681b         	ldr	r3, [r3]
  3b5fb0: 9a01         	ldr	r2, [sp, #0x4]
  3b5fb2: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  3b5fb6: 4610         	mov	r0, r2
  3b5fb8: f04f 0100    	mov.w	r1, #0x0
  3b5fbc: f2c4 2134    	movt	r1, #0x4234
  3b5fc0: 4798         	blx	r3
  3b5fc2: 9b01         	ldr	r3, [sp, #0x4]
  3b5fc4: 33e8         	adds	r3, #0xe8
  3b5fc6: 4618         	mov	r0, r3
  3b5fc8: 990c         	ldr	r1, [sp, #0x30]
  3b5fca: f000 f2f3    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x4005e6
  3b5fce: 9b01         	ldr	r3, [sp, #0x4]
  3b5fd0: 9a0d         	ldr	r2, [sp, #0x34]
  3b5fd2: f8c3 20f8    	str.w	r2, [r3, #0xf8]
  3b5fd6: 9b01         	ldr	r3, [sp, #0x4]
  3b5fd8: 2201         	movs	r2, #0x1
  3b5fda: f883 2134    	strb.w	r2, [r3, #0x134]
  3b5fde: 9b01         	ldr	r3, [sp, #0x4]
  3b5fe0: 2200         	movs	r2, #0x0
  3b5fe2: f883 2135    	strb.w	r2, [r3, #0x135]
  3b5fe6: 9b01         	ldr	r3, [sp, #0x4]
  3b5fe8: 9a0e         	ldr	r2, [sp, #0x38]
  3b5fea: f8c3 20ec    	str.w	r2, [r3, #0xec]
  3b5fee: b005         	add	sp, #0x14
  3b5ff0: e8bd 4030    	pop.w	{r4, r5, lr}
  3b5ff4: b002         	add	sp, #0x8
  3b5ff6: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x3b5ff7); words below are literal-pool data ---
  3b5ff8: 999a         	ldr	r1, [sp, #0x268]
  3b5ffa: 9999         	ldr	r1, [sp, #0x264]
  3b5ffc: 9999         	ldr	r1, [sp, #0x264]
  3b5ffe: 3fc9         	subs	r7, #0xc9
  3b6000: cae0         	ldm	r2!, {r5, r6, r7}
  3b6002: 0057         	lsls	r7, r2, #0x1
  3b6004: d748         	bvc	0x3b6098 <ProxyMine::updateStep(float)+0x90> @ imm = #0x90
  3b6006: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== ProxyMine::updateStep
//      file offset 0x3b6008 (= ELF address; Ghidra 0x3c6008), 640 bytes, Thumb-2
  3b6008: b510         	push	{r4, lr}
  3b600a: ed2d 8b02    	vpush	{d8}
  3b600e: b094         	sub	sp, #0x50
  3b6010: 9005         	str	r0, [sp, #0x14]
  3b6012: 9104         	str	r1, [sp, #0x10]
  3b6014: 4c99         	ldr	r4, [pc, #0x264]        @ 0x3b627c <ProxyMine::updateStep(float)+0x274>
  3b6016: 447c         	add	r4, pc
  3b6018: 9b05         	ldr	r3, [sp, #0x14]
  3b601a: ed93 7a3c    	vldr	s14, [r3, #240]
  3b601e: eddd 7a04    	vldr	s15, [sp, #16]
  3b6022: ee77 7a27    	vadd.f32	s15, s14, s15
  3b6026: 9b05         	ldr	r3, [sp, #0x14]
  3b6028: edc3 7a3c    	vstr	s15, [r3, #240]
  3b602c: 9b05         	ldr	r3, [sp, #0x14]
  3b602e: 681b         	ldr	r3, [r3]
  3b6030: 3390         	adds	r3, #0x90
  3b6032: 681b         	ldr	r3, [r3]
  3b6034: 9a05         	ldr	r2, [sp, #0x14]
  3b6036: 4610         	mov	r0, r2
  3b6038: 2100         	movs	r1, #0x0
  3b603a: 4798         	blx	r3
  3b603c: 9b05         	ldr	r3, [sp, #0x14]
  3b603e: 681b         	ldr	r3, [r3]
  3b6040: 3350         	adds	r3, #0x50
  3b6042: 681b         	ldr	r3, [r3]
  3b6044: 9a05         	ldr	r2, [sp, #0x14]
  3b6046: 4610         	mov	r0, r2
  3b6048: 4798         	blx	r3
  3b604a: 4603         	mov	r3, r0
  3b604c: edd3 7a00    	vldr	s15, [r3]
  3b6050: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  3b6054: 9b05         	ldr	r3, [sp, #0x14]
  3b6056: 681b         	ldr	r3, [r3]
  3b6058: 3350         	adds	r3, #0x50
  3b605a: 681b         	ldr	r3, [r3]
  3b605c: 9a05         	ldr	r2, [sp, #0x14]
  3b605e: 4610         	mov	r0, r2
  3b6060: 4798         	blx	r3
  3b6062: 4603         	mov	r3, r0
  3b6064: edd3 7a01    	vldr	s15, [r3, #4]
  3b6068: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3b606c: ab08         	add	r3, sp, #0x20
  3b606e: 4618         	mov	r0, r3
  3b6070: eeb0 0b48    	vmov.f64	d0, d8
  3b6074: eeb0 1b47    	vmov.f64	d1, d7
  3b6078: f7fe ff70    	bl	0x3b4f5c <ProjectileManager::addSaw(cpVect, float, cpVect, Weapon*, bool, std::string)+0x424> @ imm = #-0x1120
  3b607c: 9b05         	ldr	r3, [sp, #0x14]
  3b607e: f893 3134    	ldrb.w	r3, [r3, #0x134]
  3b6082: f083 0301    	eor	r3, r3, #0x1
  3b6086: b2db         	uxtb	r3, r3
  3b6088: 2b00         	cmp	r3, #0x0
  3b608a: f040 80e9    	bne.w	0x3b6260 <ProxyMine::updateStep(float)+0x258> @ imm = #0x1d2
  3b608e: 9b05         	ldr	r3, [sp, #0x14]
  3b6090: ed93 7a3c    	vldr	s14, [r3, #240]
  3b6094: eddf 7a78    	vldr	s15, [pc, #480]         @ 0x3b6278 <ProxyMine::updateStep(float)+0x270>
  3b6098: eeb4 7ae7    	vcmpe.f32	s14, s15
  3b609c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3b60a0: dd03         	ble	0x3b60aa <ProxyMine::updateStep(float)+0xa2> @ imm = #0x6
  3b60a2: 9b05         	ldr	r3, [sp, #0x14]
  3b60a4: 2200         	movs	r2, #0x0
  3b60a6: f883 2134    	strb.w	r2, [r3, #0x134]
  3b60aa: 9b05         	ldr	r3, [sp, #0x14]
  3b60ac: f893 3135    	ldrb.w	r3, [r3, #0x135]
  3b60b0: 2b00         	cmp	r3, #0x0
  3b60b2: d017         	beq	0x3b60e4 <ProxyMine::updateStep(float)+0xdc> @ imm = #0x2e
  3b60b4: 9b05         	ldr	r3, [sp, #0x14]
  3b60b6: ed93 7a3d    	vldr	s14, [r3, #244]
  3b60ba: eddd 7a04    	vldr	s15, [sp, #16]
  3b60be: ee77 7a27    	vadd.f32	s15, s14, s15
  3b60c2: 9b05         	ldr	r3, [sp, #0x14]
  3b60c4: edc3 7a3d    	vstr	s15, [r3, #244]
  3b60c8: 9b05         	ldr	r3, [sp, #0x14]
  3b60ca: ed93 7a3d    	vldr	s14, [r3, #244]
  3b60ce: eef6 7a00    	vmov.f32	s15, #5.000000e-01
  3b60d2: eeb4 7ae7    	vcmpe.f32	s14, s15
  3b60d6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3b60da: dd03         	ble	0x3b60e4 <ProxyMine::updateStep(float)+0xdc> @ imm = #0x6
  3b60dc: 9805         	ldr	r0, [sp, #0x14]
  3b60de: 2101         	movs	r1, #0x1
  3b60e0: f000 f8d2    	bl	0x3b6288 <ProxyMine::removeMine(bool)> @ imm = #0x1a4
  3b60e4: 9b05         	ldr	r3, [sp, #0x14]
  3b60e6: ed93 7a3c    	vldr	s14, [r3, #240]
  3b60ea: eef7 7a08    	vmov.f32	s15, #1.500000e+00
  3b60ee: eeb4 7ae7    	vcmpe.f32	s14, s15
  3b60f2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3b60f6: f340 8097    	ble.w	0x3b6228 <ProxyMine::updateStep(float)+0x220> @ imm = #0x12e
  3b60fa: 9b05         	ldr	r3, [sp, #0x14]
  3b60fc: f893 3135    	ldrb.w	r3, [r3, #0x135]
  3b6100: f083 0301    	eor	r3, r3, #0x1
  3b6104: b2db         	uxtb	r3, r3
  3b6106: 2b00         	cmp	r3, #0x0
  3b6108: f000 808e    	beq.w	0x3b6228 <ProxyMine::updateStep(float)+0x220> @ imm = #0x11c
  3b610c: 9b05         	ldr	r3, [sp, #0x14]
  3b610e: ed93 7a3d    	vldr	s14, [r3, #244]
  3b6112: eddd 7a04    	vldr	s15, [sp, #16]
  3b6116: ee77 7a67    	vsub.f32	s15, s14, s15
  3b611a: 9b05         	ldr	r3, [sp, #0x14]
  3b611c: edc3 7a3d    	vstr	s15, [r3, #244]
  3b6120: 9b05         	ldr	r3, [sp, #0x14]
  3b6122: edd3 7a3d    	vldr	s15, [r3, #244]
  3b6126: eef5 7ac0    	vcmpe.f32	s15, #0
  3b612a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3b612e: d828         	bhi	0x3b6182 <ProxyMine::updateStep(float)+0x17a> @ imm = #0x50
  3b6130: 9b05         	ldr	r3, [sp, #0x14]
  3b6132: f04f 527c    	mov.w	r2, #0x3f000000
  3b6136: f8c3 20f4    	str.w	r2, [r3, #0xf4]
  3b613a: 9b05         	ldr	r3, [sp, #0x14]
  3b613c: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  3b6140: 1c5a         	adds	r2, r3, #0x1
  3b6142: 9b05         	ldr	r3, [sp, #0x14]
  3b6144: f8c3 2130    	str.w	r2, [r3, #0x130]
  3b6148: 9b05         	ldr	r3, [sp, #0x14]
  3b614a: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  3b614e: 2b02         	cmp	r3, #0x2
  3b6150: dd03         	ble	0x3b615a <ProxyMine::updateStep(float)+0x152> @ imm = #0x6
  3b6152: 9b05         	ldr	r3, [sp, #0x14]
  3b6154: 2201         	movs	r2, #0x1
  3b6156: f8c3 2130    	str.w	r2, [r3, #0x130]
  3b615a: 9b05         	ldr	r3, [sp, #0x14]
  3b615c: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3b6160: 681b         	ldr	r3, [r3]
  3b6162: f503 7302    	add.w	r3, r3, #0x208
  3b6166: 681b         	ldr	r3, [r3]
  3b6168: 9a05         	ldr	r2, [sp, #0x14]
  3b616a: f8d2 10e4    	ldr.w	r1, [r2, #0xe4]
  3b616e: 9a05         	ldr	r2, [sp, #0x14]
  3b6170: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  3b6174: 3210         	adds	r2, #0x10
  3b6176: 0112         	lsls	r2, r2, #0x4
  3b6178: 9805         	ldr	r0, [sp, #0x14]
  3b617a: 4402         	add	r2, r0
  3b617c: 4608         	mov	r0, r1
  3b617e: 4611         	mov	r1, r2
  3b6180: 4798         	blx	r3
  3b6182: 4b3f         	ldr	r3, [pc, #0xfc]         @ 0x3b6280 <ProxyMine::updateStep(float)+0x278>
  3b6184: 58e3         	ldr	r3, [r4, r3]
  3b6186: 681b         	ldr	r3, [r3]
  3b6188: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3b618c: aa0c         	add	r2, sp, #0x30
  3b618e: ed9d 4b08    	vldr	d4, [sp, #32]
  3b6192: ed9d 5b0a    	vldr	d5, [sp, #40]
  3b6196: ed93 6b0a    	vldr	d6, [r3, #40]
  3b619a: ed93 7b0c    	vldr	d7, [r3, #48]
  3b619e: 4610         	mov	r0, r2
  3b61a0: eeb0 0b44    	vmov.f64	d0, d4
  3b61a4: eeb0 1b45    	vmov.f64	d1, d5
  3b61a8: eeb0 2b46    	vmov.f64	d2, d6
  3b61ac: eeb0 3b47    	vmov.f64	d3, d7
  3b61b0: f7fe fee8    	bl	0x3b4f84 <ProjectileManager::addSaw(cpVect, float, cpVect, Weapon*, bool, std::string)+0x44c> @ imm = #-0x1230
  3b61b4: ab0c         	add	r3, sp, #0x30
  3b61b6: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3b61b8: f320 ff7e    	bl	0x6d70b8 <cpvlength>    @ imm = #0x320efc
  3b61bc: 4602         	mov	r2, r0
  3b61be: 460b         	mov	r3, r1
  3b61c0: e9cd 2306    	strd	r2, r3, [sp, #24]
  3b61c4: ed9d 6b06    	vldr	d6, [sp, #24]
  3b61c8: ed9f 7b27    	vldr	d7, [pc, #156]          @ 0x3b6268 <ProxyMine::updateStep(float)+0x260>
  3b61cc: eeb4 6bc7    	vcmpe.f64	d6, d7
  3b61d0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3b61d4: d400         	bmi	0x3b61d8 <ProxyMine::updateStep(float)+0x1d0> @ imm = #0x0
  3b61d6: e027         	b	0x3b6228 <ProxyMine::updateStep(float)+0x220> @ imm = #0x4e
  3b61d8: 9b05         	ldr	r3, [sp, #0x14]
  3b61da: 2201         	movs	r2, #0x1
  3b61dc: f883 2135    	strb.w	r2, [r3, #0x135]
  3b61e0: 9b05         	ldr	r3, [sp, #0x14]
  3b61e2: f04f 0200    	mov.w	r2, #0x0
  3b61e6: f8c3 20f4    	str.w	r2, [r3, #0xf4]
  3b61ea: 9b05         	ldr	r3, [sp, #0x14]
  3b61ec: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3b61f0: 681b         	ldr	r3, [r3]
  3b61f2: f503 7302    	add.w	r3, r3, #0x208
  3b61f6: 681b         	ldr	r3, [r3]
  3b61f8: 9a05         	ldr	r2, [sp, #0x14]
  3b61fa: f8d2 10e4    	ldr.w	r1, [r2, #0xe4]
  3b61fe: 9a05         	ldr	r2, [sp, #0x14]
  3b6200: f502 7288    	add.w	r2, r2, #0x110
  3b6204: 4608         	mov	r0, r1
  3b6206: 4611         	mov	r1, r2
  3b6208: 4798         	blx	r3
  3b620a: 4b1e         	ldr	r3, [pc, #0x78]         @ 0x3b6284 <ProxyMine::updateStep(float)+0x27c>
  3b620c: 58e3         	ldr	r3, [r4, r3]
  3b620e: 681c         	ldr	r4, [r3]
  3b6210: 466b         	mov	r3, sp
  3b6212: aa0a         	add	r2, sp, #0x28
  3b6214: e892 0003    	ldm.w	r2, {r0, r1}
  3b6218: e883 0003    	stm.w	r3, {r0, r1}
  3b621c: ab08         	add	r3, sp, #0x20
  3b621e: cb0c         	ldm	r3, {r2, r3}
  3b6220: 4620         	mov	r0, r4
  3b6222: 2131         	movs	r1, #0x31
  3b6224: f041 fee8    	bl	0x3f7ff8 <Sound::playSoundPosition(int, cpVect)> @ imm = #0x41dd0
  3b6228: ab10         	add	r3, sp, #0x40
  3b622a: 4618         	mov	r0, r3
  3b622c: ed9f 0b10    	vldr	d0, [pc, #64]           @ 0x3b6270 <ProxyMine::updateStep(float)+0x268>
  3b6230: ed9f 1b0f    	vldr	d1, [pc, #60]           @ 0x3b6270 <ProxyMine::updateStep(float)+0x268>
  3b6234: f7fe fe92    	bl	0x3b4f5c <ProjectileManager::addSaw(cpVect, float, cpVect, Weapon*, bool, std::string)+0x424> @ imm = #-0x12dc
  3b6238: 466c         	mov	r4, sp
  3b623a: ab10         	add	r3, sp, #0x40
  3b623c: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3b623e: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3b6242: ab08         	add	r3, sp, #0x20
  3b6244: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3b6246: f7ff f843    	bl	0x3b52d0 <ProjectileManager::addSaw(cpVect, float, cpVect, Weapon*, bool, std::string)+0x798> @ imm = #-0xf7a
  3b624a: 4603         	mov	r3, r0
  3b624c: 2b00         	cmp	r3, #0x0
  3b624e: d007         	beq	0x3b6260 <ProxyMine::updateStep(float)+0x258> @ imm = #0xe
  3b6250: 9b05         	ldr	r3, [sp, #0x14]
  3b6252: 681b         	ldr	r3, [r3]
  3b6254: 3390         	adds	r3, #0x90
  3b6256: 681b         	ldr	r3, [r3]
  3b6258: 9a05         	ldr	r2, [sp, #0x14]
  3b625a: 4610         	mov	r0, r2
  3b625c: 2101         	movs	r1, #0x1
  3b625e: 4798         	blx	r3
  3b6260: b014         	add	sp, #0x50
  3b6262: ecbd 8b02    	vpop	{d8}
  3b6266: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3b6267); words below are literal-pool data ---
  3b6268: 0000         	movs	r0, r0
  3b626a: 0000         	movs	r0, r0
  3b626c: 8000         	strh	r0, [r0]
  3b626e: 405b         	eors	r3, r3
  3b6270: 0000         	movs	r0, r0
  3b6272: 0000         	movs	r0, r0
  3b6274: 0000         	movs	r0, r0
  3b6276: 404e         	eors	r6, r1
  3b6278: 0000         	movs	r0, r0
  3b627a: 42f0         	cmn	r0, r6
  3b627c: c9f2         	ldm	r1, {r1, r4, r5, r6, r7}
  3b627e: 0057         	lsls	r7, r2, #0x1
  3b6280: d784         	bvc	0x3b618c <ProxyMine::updateStep(float)+0x184> @ imm = #-0xf8
  3b6282: ffff d730    	vqshl.u32	d29, d16, #0x1f
  3b6286: ffff e92d    	vtbl.8	d30, {d15, d16}, d29

// ==== ProxyMine::removeMine
//      file offset 0x3b6288 (= ELF address; Ghidra 0x3c6288), 456 bytes, Thumb-2
  3b6288: e92d 47f0    	push.w	{r4, r5, r6, r7, r8, r9, r10, lr}
  3b628c: b08c         	sub	sp, #0x30
  3b628e: 9007         	str	r0, [sp, #0x1c]
  3b6290: 460b         	mov	r3, r1
  3b6292: f88d 301b    	strb.w	r3, [sp, #0x1b]
  3b6296: 4c68         	ldr	r4, [pc, #0x1a0]        @ 0x3b6438 <ProxyMine::removeMine(bool)+0x1b0>
  3b6298: 447c         	add	r4, pc
  3b629a: 9b07         	ldr	r3, [sp, #0x1c]
  3b629c: f893 3134    	ldrb.w	r3, [r3, #0x134]
  3b62a0: f083 0301    	eor	r3, r3, #0x1
  3b62a4: b2db         	uxtb	r3, r3
  3b62a6: 2b00         	cmp	r3, #0x0
  3b62a8: d000         	beq	0x3b62ac <ProxyMine::removeMine(bool)+0x24> @ imm = #0x0
  3b62aa: e0c2         	b	0x3b6432 <ProxyMine::removeMine(bool)+0x1aa> @ imm = #0x184
  3b62ac: 9b07         	ldr	r3, [sp, #0x1c]
  3b62ae: 2200         	movs	r2, #0x0
  3b62b0: f883 2134    	strb.w	r2, [r3, #0x134]
  3b62b4: f89d 301b    	ldrb.w	r3, [sp, #0x1b]
  3b62b8: 2b00         	cmp	r3, #0x0
  3b62ba: d064         	beq	0x3b6386 <ProxyMine::removeMine(bool)+0xfe> @ imm = #0xc8
  3b62bc: 9b07         	ldr	r3, [sp, #0x1c]
  3b62be: 681b         	ldr	r3, [r3]
  3b62c0: 3350         	adds	r3, #0x50
  3b62c2: 681b         	ldr	r3, [r3]
  3b62c4: 9a07         	ldr	r2, [sp, #0x1c]
  3b62c6: 4610         	mov	r0, r2
  3b62c8: 4798         	blx	r3
  3b62ca: 4603         	mov	r3, r0
  3b62cc: 681b         	ldr	r3, [r3]
  3b62ce: 4618         	mov	r0, r3
  3b62d0: f726 fcd8    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xd9650
  3b62d4: 4680         	mov	r8, r0
  3b62d6: 9b07         	ldr	r3, [sp, #0x1c]
  3b62d8: 681b         	ldr	r3, [r3]
  3b62da: 3350         	adds	r3, #0x50
  3b62dc: 681b         	ldr	r3, [r3]
  3b62de: 9a07         	ldr	r2, [sp, #0x1c]
  3b62e0: 4610         	mov	r0, r2
  3b62e2: 4798         	blx	r3
  3b62e4: 4603         	mov	r3, r0
  3b62e6: 685b         	ldr	r3, [r3, #0x4]
  3b62e8: 4618         	mov	r0, r3
  3b62ea: f726 fccb    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xd966a
  3b62ee: 4607         	mov	r7, r0
  3b62f0: f04f 0000    	mov.w	r0, #0x0
  3b62f4: f726 fcc6    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xd9674
  3b62f8: 4606         	mov	r6, r0
  3b62fa: f04f 0000    	mov.w	r0, #0x0
  3b62fe: f726 fcc1    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xd967e
  3b6302: 4605         	mov	r5, r0
  3b6304: 2002         	movs	r0, #0x2
  3b6306: f72e fcff    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xd1602
  3b630a: 4682         	mov	r10, r0
  3b630c: f04f 0000    	mov.w	r0, #0x0
  3b6310: f6c3 70a0    	movt	r0, #0x3fa0
  3b6314: f726 fcb6    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xd9694
  3b6318: 4681         	mov	r9, r0
  3b631a: 4b48         	ldr	r3, [pc, #0x120]        @ 0x3b643c <ProxyMine::removeMine(bool)+0x1b4>
  3b631c: 58e3         	ldr	r3, [r4, r3]
  3b631e: 681b         	ldr	r3, [r3]
  3b6320: 1c59         	adds	r1, r3, #0x1
  3b6322: 4a46         	ldr	r2, [pc, #0x118]        @ 0x3b643c <ProxyMine::removeMine(bool)+0x1b4>
  3b6324: 58a2         	ldr	r2, [r4, r2]
  3b6326: 6011         	str	r1, [r2]
  3b6328: 4618         	mov	r0, r3
  3b632a: f72e fced    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xd1626
  3b632e: 4604         	mov	r4, r0
  3b6330: 9b07         	ldr	r3, [sp, #0x1c]
  3b6332: 33e8         	adds	r3, #0xe8
  3b6334: 4618         	mov	r0, r3
  3b6336: f1e3 fb81    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1e3702
  3b633a: 4603         	mov	r3, r0
  3b633c: f8cd a000    	str.w	r10, [sp]
  3b6340: f8cd 9004    	str.w	r9, [sp, #0x4]
  3b6344: 9402         	str	r4, [sp, #0x8]
  3b6346: 9303         	str	r3, [sp, #0xc]
  3b6348: 2300         	movs	r3, #0x0
  3b634a: 9304         	str	r3, [sp, #0x10]
  3b634c: 4640         	mov	r0, r8
  3b634e: 4639         	mov	r1, r7
  3b6350: 4632         	mov	r2, r6
  3b6352: 462b         	mov	r3, r5
  3b6354: f1e3 fd5c    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x1e3ab8
  3b6358: 4603         	mov	r3, r0
  3b635a: 9309         	str	r3, [sp, #0x24]
  3b635c: f22a f9a8    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x22a350
  3b6360: 4603         	mov	r3, r0
  3b6362: 4618         	mov	r0, r3
  3b6364: 4b36         	ldr	r3, [pc, #0xd8]         @ 0x3b6440 <ProxyMine::removeMine(bool)+0x1b8>
  3b6366: 447b         	add	r3, pc
  3b6368: 4619         	mov	r1, r3
  3b636a: 9a09         	ldr	r2, [sp, #0x24]
  3b636c: f22a fbde    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x22a7bc
  3b6370: f22a f99e    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x22a33c
  3b6374: 4603         	mov	r3, r0
  3b6376: 4618         	mov	r0, r3
  3b6378: 4b32         	ldr	r3, [pc, #0xc8]         @ 0x3b6444 <ProxyMine::removeMine(bool)+0x1bc>
  3b637a: 447b         	add	r3, pc
  3b637c: 4619         	mov	r1, r3
  3b637e: 9a09         	ldr	r2, [sp, #0x24]
  3b6380: f22a fbd4    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x22a7a8
  3b6384: e032         	b	0x3b63ec <ProxyMine::removeMine(bool)+0x164> @ imm = #0x64
  3b6386: 9b07         	ldr	r3, [sp, #0x1c]
  3b6388: 681b         	ldr	r3, [r3]
  3b638a: 3350         	adds	r3, #0x50
  3b638c: 681b         	ldr	r3, [r3]
  3b638e: 9a07         	ldr	r2, [sp, #0x1c]
  3b6390: 4610         	mov	r0, r2
  3b6392: 4798         	blx	r3
  3b6394: 4603         	mov	r3, r0
  3b6396: 681b         	ldr	r3, [r3]
  3b6398: 4618         	mov	r0, r3
  3b639a: f726 fc73    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xd971a
  3b639e: 4605         	mov	r5, r0
  3b63a0: 9b07         	ldr	r3, [sp, #0x1c]
  3b63a2: 681b         	ldr	r3, [r3]
  3b63a4: 3350         	adds	r3, #0x50
  3b63a6: 681b         	ldr	r3, [r3]
  3b63a8: 9a07         	ldr	r2, [sp, #0x1c]
  3b63aa: 4610         	mov	r0, r2
  3b63ac: 4798         	blx	r3
  3b63ae: 4603         	mov	r3, r0
  3b63b0: 685b         	ldr	r3, [r3, #0x4]
  3b63b2: 4618         	mov	r0, r3
  3b63b4: f726 fc66    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xd9734
  3b63b8: 4604         	mov	r4, r0
  3b63ba: f64c 40cd    	movw	r0, #0xcccd
  3b63be: f6c3 60cc    	movt	r0, #0x3ecc
  3b63c2: f726 fc5f    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xd9742
  3b63c6: 4603         	mov	r3, r0
  3b63c8: 4628         	mov	r0, r5
  3b63ca: 4621         	mov	r1, r4
  3b63cc: 461a         	mov	r2, r3
  3b63ce: 2300         	movs	r3, #0x0
  3b63d0: f1e3 fd1e    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x1e3a3c
  3b63d4: 4603         	mov	r3, r0
  3b63d6: 930a         	str	r3, [sp, #0x28]
  3b63d8: f22a f96a    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x22a2d4
  3b63dc: 4603         	mov	r3, r0
  3b63de: 4618         	mov	r0, r3
  3b63e0: 4b19         	ldr	r3, [pc, #0x64]         @ 0x3b6448 <ProxyMine::removeMine(bool)+0x1c0>
  3b63e2: 447b         	add	r3, pc
  3b63e4: 4619         	mov	r1, r3
  3b63e6: 9a0a         	ldr	r2, [sp, #0x28]
  3b63e8: f22a fba0    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x22a740
  3b63ec: 2017         	movs	r0, #0x17
  3b63ee: f72e fc8b    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xd16ea
  3b63f2: 4605         	mov	r5, r0
  3b63f4: 9b07         	ldr	r3, [sp, #0x1c]
  3b63f6: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3b63fa: 4618         	mov	r0, r3
  3b63fc: f72e fc84    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xd16f8
  3b6400: 4604         	mov	r4, r0
  3b6402: 9b07         	ldr	r3, [sp, #0x1c]
  3b6404: 33e8         	adds	r3, #0xe8
  3b6406: 4618         	mov	r0, r3
  3b6408: f1e3 fb18    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1e3630
  3b640c: 4603         	mov	r3, r0
  3b640e: 4628         	mov	r0, r5
  3b6410: 4621         	mov	r1, r4
  3b6412: 461a         	mov	r2, r3
  3b6414: 2300         	movs	r3, #0x0
  3b6416: f1e3 fcfb    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x1e39f6
  3b641a: 4603         	mov	r3, r0
  3b641c: 930b         	str	r3, [sp, #0x2c]
  3b641e: f22a f947    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x22a28e
  3b6422: 4603         	mov	r3, r0
  3b6424: 4618         	mov	r0, r3
  3b6426: 4b09         	ldr	r3, [pc, #0x24]         @ 0x3b644c <ProxyMine::removeMine(bool)+0x1c4>
  3b6428: 447b         	add	r3, pc
  3b642a: 4619         	mov	r1, r3
  3b642c: 9a0b         	ldr	r2, [sp, #0x2c]
  3b642e: f22a fb7d    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x22a6fa
  3b6432: b00c         	add	sp, #0x30
  3b6434: e8bd 87f0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, pc}
  ; --- end of code (Ghidra body ends at 0x3b6437); words below are literal-pool data ---
  3b6438: c770         	stm	r7!, {r4, r5, r6}
  3b643a: 0057         	lsls	r7, r2, #0x1
  3b643c: d9c4         	bls	0x3b63c8 <ProxyMine::removeMine(bool)+0x140> @ imm = #-0x78
  3b643e: ffff de52    	<unknown>
  3b6442: 0041         	lsls	r1, r0, #0x1
  3b6444: de4e         	udf	#0x4e
  3b6446: 0041         	lsls	r1, r0, #0x1
  3b6448: ddf2         	ble	0x3b6430 <ProxyMine::removeMine(bool)+0x1a8> @ imm = #-0x1c
  3b644a: 0041         	lsls	r1, r0, #0x1
  3b644c: ddb8         	ble	0x3b63c0 <ProxyMine::removeMine(bool)+0x138> @ imm = #-0x90
  3b644e: 0041         	lsls	r1, r0, #0x1
