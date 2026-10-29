// ScoreRow: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 13 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../ScoreRow.cpp

// ==== ScoreRow::create
//      file offset 0x3d39cc (= ELF address; Ghidra 0x3e39cc), 112 bytes, Thumb-2
  3d39cc: b510         	push	{r4, lr}
  3d39ce: b082         	sub	sp, #0x8
  3d39d0: f44f 708a    	mov.w	r0, #0x114
  3d39d4: f3b3 ffc6    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x3b3f8c
  3d39d8: 4603         	mov	r3, r0
  3d39da: 461c         	mov	r4, r3
  3d39dc: 4620         	mov	r0, r4
  3d39de: f000 fa01    	bl	0x3d3de4 <ScoreRow::ScoreRow()> @ imm = #0x402
  3d39e2: 9401         	str	r4, [sp, #0x4]
  3d39e4: 9b01         	ldr	r3, [sp, #0x4]
  3d39e6: 2b00         	cmp	r3, #0x0
  3d39e8: d00a         	beq	0x3d3a00 <ScoreRow::create()+0x34> @ imm = #0x14
  3d39ea: 9b01         	ldr	r3, [sp, #0x4]
  3d39ec: 681b         	ldr	r3, [r3]
  3d39ee: 3318         	adds	r3, #0x18
  3d39f0: 681b         	ldr	r3, [r3]
  3d39f2: 9801         	ldr	r0, [sp, #0x4]
  3d39f4: 4798         	blx	r3
  3d39f6: 4603         	mov	r3, r0
  3d39f8: 2b00         	cmp	r3, #0x0
  3d39fa: d001         	beq	0x3d3a00 <ScoreRow::create()+0x34> @ imm = #0x2
  3d39fc: 2301         	movs	r3, #0x1
  3d39fe: e000         	b	0x3d3a02 <ScoreRow::create()+0x36> @ imm = #0x0
  3d3a00: 2300         	movs	r3, #0x0
  3d3a02: 2b00         	cmp	r3, #0x0
  3d3a04: d005         	beq	0x3d3a12 <ScoreRow::create()+0x46> @ imm = #0xa
  3d3a06: 9b01         	ldr	r3, [sp, #0x4]
  3d3a08: 4618         	mov	r0, r3
  3d3a0a: f1c4 fa77    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x1c44ee
  3d3a0e: 9b01         	ldr	r3, [sp, #0x4]
  3d3a10: e011         	b	0x3d3a36 <ScoreRow::create()+0x6a> @ imm = #0x22
  3d3a12: 9b01         	ldr	r3, [sp, #0x4]
  3d3a14: 2b00         	cmp	r3, #0x0
  3d3a16: d005         	beq	0x3d3a24 <ScoreRow::create()+0x58> @ imm = #0xa
  3d3a18: 9b01         	ldr	r3, [sp, #0x4]
  3d3a1a: 681b         	ldr	r3, [r3]
  3d3a1c: 3308         	adds	r3, #0x8
  3d3a1e: 681b         	ldr	r3, [r3]
  3d3a20: 9801         	ldr	r0, [sp, #0x4]
  3d3a22: 4798         	blx	r3
  3d3a24: 2300         	movs	r3, #0x0
  3d3a26: 9301         	str	r3, [sp, #0x4]
  3d3a28: 2300         	movs	r3, #0x0
  3d3a2a: e004         	b	0x3d3a36 <ScoreRow::create()+0x6a> @ imm = #0x8
  3d3a2c: 4620         	mov	r0, r4
  3d3a2e: f3b4 fb39    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3b4672
  3d3a32: f3b4 fb3b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3b4676
  3d3a36: 4618         	mov	r0, r3
  3d3a38: b002         	add	sp, #0x8
  3d3a3a: bd10         	pop	{r4, pc}

// ==== ScoreRow::ScoreRow
//      file offset 0x3d3de4 (= ELF address; Ghidra 0x3e3de4), 96 bytes, Thumb-2
  3d3de4: b510         	push	{r4, lr}
  3d3de6: b082         	sub	sp, #0x8
  3d3de8: 9001         	str	r0, [sp, #0x4]
  3d3dea: 4c14         	ldr	r4, [pc, #0x50]         @ 0x3d3e3c <ScoreRow::ScoreRow()+0x58>
  3d3dec: 447c         	add	r4, pc
  3d3dee: 9b01         	ldr	r3, [sp, #0x4]
  3d3df0: 4618         	mov	r0, r3
  3d3df2: f1bb fc21    	bl	0x58f638 <cocos2d::CCNode::CCNode()> @ imm = #0x1bb842
  3d3df6: 9b01         	ldr	r3, [sp, #0x4]
  3d3df8: 4a11         	ldr	r2, [pc, #0x44]         @ 0x3d3e40 <ScoreRow::ScoreRow()+0x5c>
  3d3dfa: 58a2         	ldr	r2, [r4, r2]
  3d3dfc: 3208         	adds	r2, #0x8
  3d3dfe: 601a         	str	r2, [r3]
  3d3e00: 9b01         	ldr	r3, [sp, #0x4]
  3d3e02: f503 7380    	add.w	r3, r3, #0x100
  3d3e06: 4618         	mov	r0, r3
  3d3e08: f3e1 f9d2    	bl	0x7b51b0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18700> @ imm = #0x3e13a4
  3d3e0c: 9b01         	ldr	r3, [sp, #0x4]
  3d3e0e: f503 7382    	add.w	r3, r3, #0x104
  3d3e12: 4618         	mov	r0, r3
  3d3e14: f3e1 f9cc    	bl	0x7b51b0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18700> @ imm = #0x3e1398
  3d3e18: 9b01         	ldr	r3, [sp, #0x4]
  3d3e1a: e00c         	b	0x3d3e36 <ScoreRow::ScoreRow()+0x52> @ imm = #0x18
  3d3e1c: 9b01         	ldr	r3, [sp, #0x4]
  3d3e1e: f503 7380    	add.w	r3, r3, #0x100
  3d3e22: 4618         	mov	r0, r3
  3d3e24: f3e1 fd76    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e1aec
  3d3e28: e7ff         	b	0x3d3e2a <ScoreRow::ScoreRow()+0x46> @ imm = #-0x2
  3d3e2a: 9b01         	ldr	r3, [sp, #0x4]
  3d3e2c: 4618         	mov	r0, r3
  3d3e2e: f1bb fd09    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x1bba12
  3d3e32: f3b4 f93b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3b4276
  3d3e36: 4618         	mov	r0, r3
  3d3e38: b002         	add	sp, #0x8
  3d3e3a: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3d3e3b); words below are literal-pool data ---
  3d3e3c: ec1c 0055    	<unknown>
  3d3e40: deb8         	udf	#0xb8
  3d3e42: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== ScoreRow::init
//      file offset 0x3d3e44 (= ELF address; Ghidra 0x3e3e44), 1696 bytes, Thumb-2
  3d3e44: b530         	push	{r4, r5, lr}
  3d3e46: b089         	sub	sp, #0x24
  3d3e48: 9003         	str	r0, [sp, #0xc]
  3d3e4a: 9b03         	ldr	r3, [sp, #0xc]
  3d3e4c: 4618         	mov	r0, r3
  3d3e4e: f1bb fdfd    	bl	0x58fa4c <cocos2d::CCNode::init()> @ imm = #0x1bbbfa
  3d3e52: 4603         	mov	r3, r0
  3d3e54: f88d 3017    	strb.w	r3, [sp, #0x17]
  3d3e58: f89d 3017    	ldrb.w	r3, [sp, #0x17]
  3d3e5c: f083 0301    	eor	r3, r3, #0x1
  3d3e60: b2db         	uxtb	r3, r3
  3d3e62: 2b00         	cmp	r3, #0x0
  3d3e64: d001         	beq	0x3d3e6a <ScoreRow::init()+0x26> @ imm = #0x2
  3d3e66: 2300         	movs	r3, #0x0
  3d3e68: e31c         	b	0x3d44a4 <ScoreRow::init()+0x660> @ imm = #0x638
  3d3e6a: 9b03         	ldr	r3, [sp, #0xc]
  3d3e6c: 2200         	movs	r2, #0x0
  3d3e6e: f8c3 2108    	str.w	r2, [r3, #0x108]
  3d3e72: 9b03         	ldr	r3, [sp, #0xc]
  3d3e74: 2200         	movs	r2, #0x0
  3d3e76: f883 210c    	strb.w	r2, [r3, #0x10c]
  3d3e7a: 9b03         	ldr	r3, [sp, #0xc]
  3d3e7c: 2200         	movs	r2, #0x0
  3d3e7e: f8c3 2110    	str.w	r2, [r3, #0x110]
  3d3e82: 9b03         	ldr	r3, [sp, #0xc]
  3d3e84: 2201         	movs	r2, #0x1
  3d3e86: f883 210c    	strb.w	r2, [r3, #0x10c]
  3d3e8a: f8df 3620    	ldr.w	r3, [pc, #0x620]        @ 0x3d44ac <ScoreRow::init()+0x668>
  3d3e8e: 447b         	add	r3, pc
  3d3e90: 4618         	mov	r0, r3
  3d3e92: f204 fa37    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x20446e
  3d3e96: 4602         	mov	r2, r0
  3d3e98: 9b03         	ldr	r3, [sp, #0xc]
  3d3e9a: f8c3 20f8    	str.w	r2, [r3, #0xf8]
  3d3e9e: 9b03         	ldr	r3, [sp, #0xc]
  3d3ea0: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3d3ea4: 4618         	mov	r0, r3
  3d3ea6: f1c4 f81f    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1c403e
  3d3eaa: 9b03         	ldr	r3, [sp, #0xc]
  3d3eac: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3d3eb0: 681b         	ldr	r3, [r3]
  3d3eb2: 334c         	adds	r3, #0x4c
  3d3eb4: 681c         	ldr	r4, [r3]
  3d3eb6: 9b03         	ldr	r3, [sp, #0xc]
  3d3eb8: f8d3 50f8    	ldr.w	r5, [r3, #0xf8]
  3d3ebc: ab06         	add	r3, sp, #0x18
  3d3ebe: 4618         	mov	r0, r3
  3d3ec0: f04f 0100    	mov.w	r1, #0x0
  3d3ec4: f2cc 215c    	movt	r1, #0xc25c
  3d3ec8: f04f 4282    	mov.w	r2, #0x41000000
  3d3ecc: f1be ff10    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1bee20
  3d3ed0: ab06         	add	r3, sp, #0x18
  3d3ed2: 4628         	mov	r0, r5
  3d3ed4: 4619         	mov	r1, r3
  3d3ed6: 47a0         	blx	r4
  3d3ed8: 9b03         	ldr	r3, [sp, #0xc]
  3d3eda: 681b         	ldr	r3, [r3]
  3d3edc: 33c8         	adds	r3, #0xc8
  3d3ede: 681b         	ldr	r3, [r3]
  3d3ee0: 9903         	ldr	r1, [sp, #0xc]
  3d3ee2: 9a03         	ldr	r2, [sp, #0xc]
  3d3ee4: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  3d3ee8: 4608         	mov	r0, r1
  3d3eea: 4611         	mov	r1, r2
  3d3eec: 4798         	blx	r3
  3d3eee: 9b03         	ldr	r3, [sp, #0xc]
  3d3ef0: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3d3ef4: 681b         	ldr	r3, [r3]
  3d3ef6: 3340         	adds	r3, #0x40
  3d3ef8: 681b         	ldr	r3, [r3]
  3d3efa: 9a03         	ldr	r2, [sp, #0xc]
  3d3efc: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  3d3f00: 4610         	mov	r0, r2
  3d3f02: f04f 517c    	mov.w	r1, #0x3f000000
  3d3f06: 4798         	blx	r3
  3d3f08: 9b03         	ldr	r3, [sp, #0xc]
  3d3f0a: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3d3f0e: 681b         	ldr	r3, [r3]
  3d3f10: 3390         	adds	r3, #0x90
  3d3f12: 681b         	ldr	r3, [r3]
  3d3f14: 9a03         	ldr	r2, [sp, #0xc]
  3d3f16: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  3d3f1a: 4610         	mov	r0, r2
  3d3f1c: 2100         	movs	r1, #0x0
  3d3f1e: 4798         	blx	r3
  3d3f20: f8df 358c    	ldr.w	r3, [pc, #0x58c]        @ 0x3d44b0 <ScoreRow::init()+0x66c>
  3d3f24: 447b         	add	r3, pc
  3d3f26: 4618         	mov	r0, r3
  3d3f28: f8df 3588    	ldr.w	r3, [pc, #0x588]        @ 0x3d44b4 <ScoreRow::init()+0x670>
  3d3f2c: 447b         	add	r3, pc
  3d3f2e: 4619         	mov	r1, r3
  3d3f30: f04f 0200    	mov.w	r2, #0x0
  3d3f34: f2c4 12f0    	movt	r2, #0x41f0
  3d3f38: f1d8 f872    	bl	0x5ac020 <cocos2d::CCLabelTTF::create(char const*, char const*, float)> @ imm = #0x1d80e4
  3d3f3c: 4602         	mov	r2, r0
  3d3f3e: 9b03         	ldr	r3, [sp, #0xc]
  3d3f40: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  3d3f44: 9b03         	ldr	r3, [sp, #0xc]
  3d3f46: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3d3f4a: 4618         	mov	r0, r3
  3d3f4c: f1c3 ffcc    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1c3f98
  3d3f50: 9b03         	ldr	r3, [sp, #0xc]
  3d3f52: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3d3f56: 681b         	ldr	r3, [r3]
  3d3f58: 337c         	adds	r3, #0x7c
  3d3f5a: 681c         	ldr	r4, [r3]
  3d3f5c: 9b03         	ldr	r3, [sp, #0xc]
  3d3f5e: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3d3f62: 461d         	mov	r5, r3
  3d3f64: ab06         	add	r3, sp, #0x18
  3d3f66: 4618         	mov	r0, r3
  3d3f68: f04f 517e    	mov.w	r1, #0x3f800000
  3d3f6c: f04f 527c    	mov.w	r2, #0x3f000000
  3d3f70: f1be febe    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1bed7c
  3d3f74: ab06         	add	r3, sp, #0x18
  3d3f76: 4628         	mov	r0, r5
  3d3f78: 4619         	mov	r1, r3
  3d3f7a: 47a0         	blx	r4
  3d3f7c: 9b03         	ldr	r3, [sp, #0xc]
  3d3f7e: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3d3f82: 681b         	ldr	r3, [r3]
  3d3f84: 3340         	adds	r3, #0x40
  3d3f86: 681b         	ldr	r3, [r3]
  3d3f88: 9a03         	ldr	r2, [sp, #0xc]
  3d3f8a: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  3d3f8e: 4610         	mov	r0, r2
  3d3f90: f04f 517c    	mov.w	r1, #0x3f000000
  3d3f94: 4798         	blx	r3
  3d3f96: 9b03         	ldr	r3, [sp, #0xc]
  3d3f98: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3d3f9c: 681b         	ldr	r3, [r3]
  3d3f9e: 334c         	adds	r3, #0x4c
  3d3fa0: 681c         	ldr	r4, [r3]
  3d3fa2: 9b03         	ldr	r3, [sp, #0xc]
  3d3fa4: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3d3fa8: 461d         	mov	r5, r3
  3d3faa: ab06         	add	r3, sp, #0x18
  3d3fac: 4618         	mov	r0, r3
  3d3fae: f04f 0100    	mov.w	r1, #0x0
  3d3fb2: f2cc 21e6    	movt	r1, #0xc2e6
  3d3fb6: f04f 4282    	mov.w	r2, #0x41000000
  3d3fba: f1be fe99    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1bed32
  3d3fbe: ab06         	add	r3, sp, #0x18
  3d3fc0: 4628         	mov	r0, r5
  3d3fc2: 4619         	mov	r1, r3
  3d3fc4: 47a0         	blx	r4
  3d3fc6: 9b03         	ldr	r3, [sp, #0xc]
  3d3fc8: 681b         	ldr	r3, [r3]
  3d3fca: 33cc         	adds	r3, #0xcc
  3d3fcc: 681b         	ldr	r3, [r3]
  3d3fce: 9903         	ldr	r1, [sp, #0xc]
  3d3fd0: 9a03         	ldr	r2, [sp, #0xc]
  3d3fd2: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  3d3fd6: 4608         	mov	r0, r1
  3d3fd8: 4611         	mov	r1, r2
  3d3fda: 2200         	movs	r2, #0x0
  3d3fdc: 4798         	blx	r3
  3d3fde: f8df 34d8    	ldr.w	r3, [pc, #0x4d8]        @ 0x3d44b8 <ScoreRow::init()+0x674>
  3d3fe2: 447b         	add	r3, pc
  3d3fe4: 4618         	mov	r0, r3
  3d3fe6: f8df 34d4    	ldr.w	r3, [pc, #0x4d4]        @ 0x3d44bc <ScoreRow::init()+0x678>
  3d3fea: 447b         	add	r3, pc
  3d3fec: 4619         	mov	r1, r3
  3d3fee: f04f 0200    	mov.w	r2, #0x0
  3d3ff2: f2c4 12f0    	movt	r2, #0x41f0
  3d3ff6: f1d8 f813    	bl	0x5ac020 <cocos2d::CCLabelTTF::create(char const*, char const*, float)> @ imm = #0x1d8026
  3d3ffa: 4602         	mov	r2, r0
  3d3ffc: 9b03         	ldr	r3, [sp, #0xc]
  3d3ffe: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  3d4002: 9b03         	ldr	r3, [sp, #0xc]
  3d4004: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3d4008: 4618         	mov	r0, r3
  3d400a: f1c3 ff6d    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1c3eda
  3d400e: 9b03         	ldr	r3, [sp, #0xc]
  3d4010: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3d4014: 681b         	ldr	r3, [r3]
  3d4016: 337c         	adds	r3, #0x7c
  3d4018: 681c         	ldr	r4, [r3]
  3d401a: 9b03         	ldr	r3, [sp, #0xc]
  3d401c: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3d4020: 461d         	mov	r5, r3
  3d4022: ab06         	add	r3, sp, #0x18
  3d4024: 4618         	mov	r0, r3
  3d4026: f04f 0100    	mov.w	r1, #0x0
  3d402a: f04f 527c    	mov.w	r2, #0x3f000000
  3d402e: f1be fe5f    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1becbe
  3d4032: ab06         	add	r3, sp, #0x18
  3d4034: 4628         	mov	r0, r5
  3d4036: 4619         	mov	r1, r3
  3d4038: 47a0         	blx	r4
  3d403a: 9b03         	ldr	r3, [sp, #0xc]
  3d403c: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3d4040: 681b         	ldr	r3, [r3]
  3d4042: 3340         	adds	r3, #0x40
  3d4044: 681b         	ldr	r3, [r3]
  3d4046: 9a03         	ldr	r2, [sp, #0xc]
  3d4048: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  3d404c: 4610         	mov	r0, r2
  3d404e: f04f 517c    	mov.w	r1, #0x3f000000
  3d4052: 4798         	blx	r3
  3d4054: 9b03         	ldr	r3, [sp, #0xc]
  3d4056: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3d405a: 681b         	ldr	r3, [r3]
  3d405c: 334c         	adds	r3, #0x4c
  3d405e: 681c         	ldr	r4, [r3]
  3d4060: 9b03         	ldr	r3, [sp, #0xc]
  3d4062: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3d4066: 461d         	mov	r5, r3
  3d4068: ab06         	add	r3, sp, #0x18
  3d406a: 4618         	mov	r0, r3
  3d406c: f04f 0100    	mov.w	r1, #0x0
  3d4070: f2cc 21dc    	movt	r1, #0xc2dc
  3d4074: f04f 4282    	mov.w	r2, #0x41000000
  3d4078: f1be fe3a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1bec74
  3d407c: ab06         	add	r3, sp, #0x18
  3d407e: 4628         	mov	r0, r5
  3d4080: 4619         	mov	r1, r3
  3d4082: 47a0         	blx	r4
  3d4084: 9b03         	ldr	r3, [sp, #0xc]
  3d4086: 681b         	ldr	r3, [r3]
  3d4088: 33cc         	adds	r3, #0xcc
  3d408a: 681b         	ldr	r3, [r3]
  3d408c: 9903         	ldr	r1, [sp, #0xc]
  3d408e: 9a03         	ldr	r2, [sp, #0xc]
  3d4090: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  3d4094: 4608         	mov	r0, r1
  3d4096: 4611         	mov	r1, r2
  3d4098: 2200         	movs	r2, #0x0
  3d409a: 4798         	blx	r3
  3d409c: 2320         	movs	r3, #0x20
  3d409e: 9300         	str	r3, [sp]
  3d40a0: f8df 341c    	ldr.w	r3, [pc, #0x41c]        @ 0x3d44c0 <ScoreRow::init()+0x67c>
  3d40a4: 447b         	add	r3, pc
  3d40a6: 4618         	mov	r0, r3
  3d40a8: f8df 3418    	ldr.w	r3, [pc, #0x418]        @ 0x3d44c4 <ScoreRow::init()+0x680>
  3d40ac: 447b         	add	r3, pc
  3d40ae: 4619         	mov	r1, r3
  3d40b0: 2220         	movs	r2, #0x20
  3d40b2: 2320         	movs	r3, #0x20
  3d40b4: f1d1 f960    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1d12c0
  3d40b8: 4602         	mov	r2, r0
  3d40ba: 9b03         	ldr	r3, [sp, #0xc]
  3d40bc: f8c3 20ec    	str.w	r2, [r3, #0xec]
  3d40c0: 9b03         	ldr	r3, [sp, #0xc]
  3d40c2: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3d40c6: 4618         	mov	r0, r3
  3d40c8: f1c3 ff0e    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1c3e1c
  3d40cc: 9b03         	ldr	r3, [sp, #0xc]
  3d40ce: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3d40d2: 681b         	ldr	r3, [r3]
  3d40d4: f503 73de    	add.w	r3, r3, #0x1bc
  3d40d8: 681c         	ldr	r4, [r3]
  3d40da: 9b03         	ldr	r3, [sp, #0xc]
  3d40dc: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3d40e0: 461d         	mov	r5, r3
  3d40e2: 2000         	movs	r0, #0x0
  3d40e4: 21ff         	movs	r1, #0xff
  3d40e6: 2200         	movs	r2, #0x0
  3d40e8: f7fe fd72    	bl	0x3d2bd0 <ScoreKeeper::getRankChange()+0x140> @ imm = #-0x151c
  3d40ec: 4603         	mov	r3, r0
  3d40ee: 461a         	mov	r2, r3
  3d40f0: f88d 2018    	strb.w	r2, [sp, #0x18]
  3d40f4: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3d40f8: f88d 2019    	strb.w	r2, [sp, #0x19]
  3d40fc: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3d4100: f88d 301a    	strb.w	r3, [sp, #0x1a]
  3d4104: ab06         	add	r3, sp, #0x18
  3d4106: 4628         	mov	r0, r5
  3d4108: 4619         	mov	r1, r3
  3d410a: 47a0         	blx	r4
  3d410c: 9b03         	ldr	r3, [sp, #0xc]
  3d410e: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3d4112: 4618         	mov	r0, r3
  3d4114: 2118         	movs	r1, #0x18
  3d4116: f1d1 fe35    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1d1c6a
  3d411a: 9b03         	ldr	r3, [sp, #0xc]
  3d411c: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3d4120: 681b         	ldr	r3, [r3]
  3d4122: 3340         	adds	r3, #0x40
  3d4124: 681b         	ldr	r3, [r3]
  3d4126: 9a03         	ldr	r2, [sp, #0xc]
  3d4128: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  3d412c: 4610         	mov	r0, r2
  3d412e: f04f 517c    	mov.w	r1, #0x3f000000
  3d4132: 4798         	blx	r3
  3d4134: 9b03         	ldr	r3, [sp, #0xc]
  3d4136: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3d413a: 681b         	ldr	r3, [r3]
  3d413c: 337c         	adds	r3, #0x7c
  3d413e: 681c         	ldr	r4, [r3]
  3d4140: 9b03         	ldr	r3, [sp, #0xc]
  3d4142: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3d4146: 461d         	mov	r5, r3
  3d4148: ab06         	add	r3, sp, #0x18
  3d414a: 4618         	mov	r0, r3
  3d414c: f04f 517c    	mov.w	r1, #0x3f000000
  3d4150: f04f 0200    	mov.w	r2, #0x0
  3d4154: f1be fdcc    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1beb98
  3d4158: ab06         	add	r3, sp, #0x18
  3d415a: 4628         	mov	r0, r5
  3d415c: 4619         	mov	r1, r3
  3d415e: 47a0         	blx	r4
  3d4160: 9b03         	ldr	r3, [sp, #0xc]
  3d4162: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3d4166: 681b         	ldr	r3, [r3]
  3d4168: 334c         	adds	r3, #0x4c
  3d416a: 681c         	ldr	r4, [r3]
  3d416c: 9b03         	ldr	r3, [sp, #0xc]
  3d416e: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3d4172: 461d         	mov	r5, r3
  3d4174: ab06         	add	r3, sp, #0x18
  3d4176: 4618         	mov	r0, r3
  3d4178: f04f 0100    	mov.w	r1, #0x0
  3d417c: f2c4 11a0    	movt	r1, #0x41a0
  3d4180: f04f 0200    	mov.w	r2, #0x0
  3d4184: f1be fdb4    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1beb68
  3d4188: ab06         	add	r3, sp, #0x18
  3d418a: 4628         	mov	r0, r5
  3d418c: 4619         	mov	r1, r3
  3d418e: 47a0         	blx	r4
  3d4190: 9b03         	ldr	r3, [sp, #0xc]
  3d4192: 681b         	ldr	r3, [r3]
  3d4194: 33cc         	adds	r3, #0xcc
  3d4196: 681b         	ldr	r3, [r3]
  3d4198: 9903         	ldr	r1, [sp, #0xc]
  3d419a: 9a03         	ldr	r2, [sp, #0xc]
  3d419c: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  3d41a0: 4608         	mov	r0, r1
  3d41a2: 4611         	mov	r1, r2
  3d41a4: 2200         	movs	r2, #0x0
  3d41a6: 4798         	blx	r3
  3d41a8: 2320         	movs	r3, #0x20
  3d41aa: 9300         	str	r3, [sp]
  3d41ac: 4bc6         	ldr	r3, [pc, #0x318]        @ 0x3d44c8 <ScoreRow::init()+0x684>
  3d41ae: 447b         	add	r3, pc
  3d41b0: 4618         	mov	r0, r3
  3d41b2: 4bc6         	ldr	r3, [pc, #0x318]        @ 0x3d44cc <ScoreRow::init()+0x688>
  3d41b4: 447b         	add	r3, pc
  3d41b6: 4619         	mov	r1, r3
  3d41b8: 2220         	movs	r2, #0x20
  3d41ba: 2320         	movs	r3, #0x20
  3d41bc: f1d1 f8dc    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1d11b8
  3d41c0: 4602         	mov	r2, r0
  3d41c2: 9b03         	ldr	r3, [sp, #0xc]
  3d41c4: f8c3 20f0    	str.w	r2, [r3, #0xf0]
  3d41c8: 9b03         	ldr	r3, [sp, #0xc]
  3d41ca: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3d41ce: 4618         	mov	r0, r3
  3d41d0: f1c3 fe8a    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1c3d14
  3d41d4: 9b03         	ldr	r3, [sp, #0xc]
  3d41d6: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3d41da: 681b         	ldr	r3, [r3]
  3d41dc: f503 73de    	add.w	r3, r3, #0x1bc
  3d41e0: 681c         	ldr	r4, [r3]
  3d41e2: 9b03         	ldr	r3, [sp, #0xc]
  3d41e4: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3d41e8: 461d         	mov	r5, r3
  3d41ea: 20ff         	movs	r0, #0xff
  3d41ec: 2100         	movs	r1, #0x0
  3d41ee: 2200         	movs	r2, #0x0
  3d41f0: f7fe fcee    	bl	0x3d2bd0 <ScoreKeeper::getRankChange()+0x140> @ imm = #-0x1624
  3d41f4: 4603         	mov	r3, r0
  3d41f6: 461a         	mov	r2, r3
  3d41f8: f88d 2018    	strb.w	r2, [sp, #0x18]
  3d41fc: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3d4200: f88d 2019    	strb.w	r2, [sp, #0x19]
  3d4204: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3d4208: f88d 301a    	strb.w	r3, [sp, #0x1a]
  3d420c: ab06         	add	r3, sp, #0x18
  3d420e: 4628         	mov	r0, r5
  3d4210: 4619         	mov	r1, r3
  3d4212: 47a0         	blx	r4
  3d4214: 9b03         	ldr	r3, [sp, #0xc]
  3d4216: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3d421a: 4618         	mov	r0, r3
  3d421c: 2118         	movs	r1, #0x18
  3d421e: f1d1 fdb1    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1d1b62
  3d4222: 9b03         	ldr	r3, [sp, #0xc]
  3d4224: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3d4228: 681b         	ldr	r3, [r3]
  3d422a: 3340         	adds	r3, #0x40
  3d422c: 681b         	ldr	r3, [r3]
  3d422e: 9a03         	ldr	r2, [sp, #0xc]
  3d4230: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  3d4234: 4610         	mov	r0, r2
  3d4236: f04f 517c    	mov.w	r1, #0x3f000000
  3d423a: 4798         	blx	r3
  3d423c: 9b03         	ldr	r3, [sp, #0xc]
  3d423e: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3d4242: 681b         	ldr	r3, [r3]
  3d4244: 337c         	adds	r3, #0x7c
  3d4246: 681c         	ldr	r4, [r3]
  3d4248: 9b03         	ldr	r3, [sp, #0xc]
  3d424a: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3d424e: 461d         	mov	r5, r3
  3d4250: ab06         	add	r3, sp, #0x18
  3d4252: 4618         	mov	r0, r3
  3d4254: f04f 517c    	mov.w	r1, #0x3f000000
  3d4258: f04f 0200    	mov.w	r2, #0x0
  3d425c: f1be fd48    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1bea90
  3d4260: ab06         	add	r3, sp, #0x18
  3d4262: 4628         	mov	r0, r5
  3d4264: 4619         	mov	r1, r3
  3d4266: 47a0         	blx	r4
  3d4268: 9b03         	ldr	r3, [sp, #0xc]
  3d426a: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3d426e: 681b         	ldr	r3, [r3]
  3d4270: 334c         	adds	r3, #0x4c
  3d4272: 681c         	ldr	r4, [r3]
  3d4274: 9b03         	ldr	r3, [sp, #0xc]
  3d4276: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3d427a: 461d         	mov	r5, r3
  3d427c: ab06         	add	r3, sp, #0x18
  3d427e: 4618         	mov	r0, r3
  3d4280: f04f 0100    	mov.w	r1, #0x0
  3d4284: f2c4 215c    	movt	r1, #0x425c
  3d4288: f04f 0200    	mov.w	r2, #0x0
  3d428c: f1be fd30    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1bea60
  3d4290: ab06         	add	r3, sp, #0x18
  3d4292: 4628         	mov	r0, r5
  3d4294: 4619         	mov	r1, r3
  3d4296: 47a0         	blx	r4
  3d4298: 9b03         	ldr	r3, [sp, #0xc]
  3d429a: 681b         	ldr	r3, [r3]
  3d429c: 33cc         	adds	r3, #0xcc
  3d429e: 681b         	ldr	r3, [r3]
  3d42a0: 9903         	ldr	r1, [sp, #0xc]
  3d42a2: 9a03         	ldr	r2, [sp, #0xc]
  3d42a4: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  3d42a8: 4608         	mov	r0, r1
  3d42aa: 4611         	mov	r1, r2
  3d42ac: 2200         	movs	r2, #0x0
  3d42ae: 4798         	blx	r3
  3d42b0: 2320         	movs	r3, #0x20
  3d42b2: 9300         	str	r3, [sp]
  3d42b4: 4b86         	ldr	r3, [pc, #0x218]        @ 0x3d44d0 <ScoreRow::init()+0x68c>
  3d42b6: 447b         	add	r3, pc
  3d42b8: 4618         	mov	r0, r3
  3d42ba: 4b86         	ldr	r3, [pc, #0x218]        @ 0x3d44d4 <ScoreRow::init()+0x690>
  3d42bc: 447b         	add	r3, pc
  3d42be: 4619         	mov	r1, r3
  3d42c0: 2220         	movs	r2, #0x20
  3d42c2: 2320         	movs	r3, #0x20
  3d42c4: f1d1 f858    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1d10b0
  3d42c8: 4602         	mov	r2, r0
  3d42ca: 9b03         	ldr	r3, [sp, #0xc]
  3d42cc: f8c3 20f4    	str.w	r2, [r3, #0xf4]
  3d42d0: 9b03         	ldr	r3, [sp, #0xc]
  3d42d2: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3d42d6: 4618         	mov	r0, r3
  3d42d8: f1c3 fe06    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1c3c0c
  3d42dc: 9b03         	ldr	r3, [sp, #0xc]
  3d42de: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3d42e2: 681b         	ldr	r3, [r3]
  3d42e4: f503 73de    	add.w	r3, r3, #0x1bc
  3d42e8: 681c         	ldr	r4, [r3]
  3d42ea: 9b03         	ldr	r3, [sp, #0xc]
  3d42ec: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3d42f0: 461d         	mov	r5, r3
  3d42f2: 20f5         	movs	r0, #0xf5
  3d42f4: 21f5         	movs	r1, #0xf5
  3d42f6: 2200         	movs	r2, #0x0
  3d42f8: f7fe fc6a    	bl	0x3d2bd0 <ScoreKeeper::getRankChange()+0x140> @ imm = #-0x172c
  3d42fc: 4603         	mov	r3, r0
  3d42fe: 461a         	mov	r2, r3
  3d4300: f88d 2018    	strb.w	r2, [sp, #0x18]
  3d4304: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3d4308: f88d 2019    	strb.w	r2, [sp, #0x19]
  3d430c: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3d4310: f88d 301a    	strb.w	r3, [sp, #0x1a]
  3d4314: ab06         	add	r3, sp, #0x18
  3d4316: 4628         	mov	r0, r5
  3d4318: 4619         	mov	r1, r3
  3d431a: 47a0         	blx	r4
  3d431c: 9b03         	ldr	r3, [sp, #0xc]
  3d431e: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3d4322: 4618         	mov	r0, r3
  3d4324: 2118         	movs	r1, #0x18
  3d4326: f1d1 fd2d    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1d1a5a
  3d432a: 9b03         	ldr	r3, [sp, #0xc]
  3d432c: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3d4330: 681b         	ldr	r3, [r3]
  3d4332: 3340         	adds	r3, #0x40
  3d4334: 681b         	ldr	r3, [r3]
  3d4336: 9a03         	ldr	r2, [sp, #0xc]
  3d4338: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  3d433c: 4610         	mov	r0, r2
  3d433e: f04f 517c    	mov.w	r1, #0x3f000000
  3d4342: 4798         	blx	r3
  3d4344: 9b03         	ldr	r3, [sp, #0xc]
  3d4346: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3d434a: 681b         	ldr	r3, [r3]
  3d434c: 337c         	adds	r3, #0x7c
  3d434e: 681c         	ldr	r4, [r3]
  3d4350: 9b03         	ldr	r3, [sp, #0xc]
  3d4352: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3d4356: 461d         	mov	r5, r3
  3d4358: ab06         	add	r3, sp, #0x18
  3d435a: 4618         	mov	r0, r3
  3d435c: f04f 517c    	mov.w	r1, #0x3f000000
  3d4360: f04f 0200    	mov.w	r2, #0x0
  3d4364: f1be fcc4    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1be988
  3d4368: ab06         	add	r3, sp, #0x18
  3d436a: 4628         	mov	r0, r5
  3d436c: 4619         	mov	r1, r3
  3d436e: 47a0         	blx	r4
  3d4370: 9b03         	ldr	r3, [sp, #0xc]
  3d4372: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3d4376: 681b         	ldr	r3, [r3]
  3d4378: 334c         	adds	r3, #0x4c
  3d437a: 681c         	ldr	r4, [r3]
  3d437c: 9b03         	ldr	r3, [sp, #0xc]
  3d437e: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3d4382: 461d         	mov	r5, r3
  3d4384: ab06         	add	r3, sp, #0x18
  3d4386: 4618         	mov	r0, r3
  3d4388: f04f 0100    	mov.w	r1, #0x0
  3d438c: f2c4 21b4    	movt	r1, #0x42b4
  3d4390: f04f 0200    	mov.w	r2, #0x0
  3d4394: f1be fcac    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1be958
  3d4398: ab06         	add	r3, sp, #0x18
  3d439a: 4628         	mov	r0, r5
  3d439c: 4619         	mov	r1, r3
  3d439e: 47a0         	blx	r4
  3d43a0: 9b03         	ldr	r3, [sp, #0xc]
  3d43a2: 681b         	ldr	r3, [r3]
  3d43a4: 33cc         	adds	r3, #0xcc
  3d43a6: 681b         	ldr	r3, [r3]
  3d43a8: 9903         	ldr	r1, [sp, #0xc]
  3d43aa: 9a03         	ldr	r2, [sp, #0xc]
  3d43ac: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  3d43b0: 4608         	mov	r0, r1
  3d43b2: 4611         	mov	r1, r2
  3d43b4: 2200         	movs	r2, #0x0
  3d43b6: 4798         	blx	r3
  3d43b8: 4b47         	ldr	r3, [pc, #0x11c]        @ 0x3d44d8 <ScoreRow::init()+0x694>
  3d43ba: 447b         	add	r3, pc
  3d43bc: 4618         	mov	r0, r3
  3d43be: f203 ffa1    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x203f42
  3d43c2: 4602         	mov	r2, r0
  3d43c4: 9b03         	ldr	r3, [sp, #0xc]
  3d43c6: f8c3 20fc    	str.w	r2, [r3, #0xfc]
  3d43ca: 9b03         	ldr	r3, [sp, #0xc]
  3d43cc: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3d43d0: 4618         	mov	r0, r3
  3d43d2: f1c3 fd89    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1c3b12
  3d43d6: 9b03         	ldr	r3, [sp, #0xc]
  3d43d8: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3d43dc: 681b         	ldr	r3, [r3]
  3d43de: 334c         	adds	r3, #0x4c
  3d43e0: 681c         	ldr	r4, [r3]
  3d43e2: 9b03         	ldr	r3, [sp, #0xc]
  3d43e4: f8d3 50fc    	ldr.w	r5, [r3, #0xfc]
  3d43e8: ab06         	add	r3, sp, #0x18
  3d43ea: 4618         	mov	r0, r3
  3d43ec: f04f 0100    	mov.w	r1, #0x0
  3d43f0: f2cc 3115    	movt	r1, #0xc315
  3d43f4: f04f 4282    	mov.w	r2, #0x41000000
  3d43f8: f1be fc7a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1be8f4
  3d43fc: ab06         	add	r3, sp, #0x18
  3d43fe: 4628         	mov	r0, r5
  3d4400: 4619         	mov	r1, r3
  3d4402: 47a0         	blx	r4
  3d4404: 9b03         	ldr	r3, [sp, #0xc]
  3d4406: 681b         	ldr	r3, [r3]
  3d4408: 33c8         	adds	r3, #0xc8
  3d440a: 681b         	ldr	r3, [r3]
  3d440c: 9903         	ldr	r1, [sp, #0xc]
  3d440e: 9a03         	ldr	r2, [sp, #0xc]
  3d4410: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3d4414: 4608         	mov	r0, r1
  3d4416: 4611         	mov	r1, r2
  3d4418: 4798         	blx	r3
  3d441a: 9b03         	ldr	r3, [sp, #0xc]
  3d441c: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3d4420: 681b         	ldr	r3, [r3]
  3d4422: 337c         	adds	r3, #0x7c
  3d4424: 681c         	ldr	r4, [r3]
  3d4426: 9b03         	ldr	r3, [sp, #0xc]
  3d4428: f8d3 50fc    	ldr.w	r5, [r3, #0xfc]
  3d442c: ab06         	add	r3, sp, #0x18
  3d442e: 4618         	mov	r0, r3
  3d4430: f04f 517c    	mov.w	r1, #0x3f000000
  3d4434: f04f 527c    	mov.w	r2, #0x3f000000
  3d4438: f1be fc5a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1be8b4
  3d443c: ab06         	add	r3, sp, #0x18
  3d443e: 4628         	mov	r0, r5
  3d4440: 4619         	mov	r1, r3
  3d4442: 47a0         	blx	r4
  3d4444: 9b03         	ldr	r3, [sp, #0xc]
  3d4446: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3d444a: 681b         	ldr	r3, [r3]
  3d444c: 3340         	adds	r3, #0x40
  3d444e: 681b         	ldr	r3, [r3]
  3d4450: 9a03         	ldr	r2, [sp, #0xc]
  3d4452: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3d4456: 4610         	mov	r0, r2
  3d4458: f04f 517a    	mov.w	r1, #0x3e800000
  3d445c: 4798         	blx	r3
  3d445e: 9b03         	ldr	r3, [sp, #0xc]
  3d4460: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3d4464: 681b         	ldr	r3, [r3]
  3d4466: 3390         	adds	r3, #0x90
  3d4468: 681b         	ldr	r3, [r3]
  3d446a: 9a03         	ldr	r2, [sp, #0xc]
  3d446c: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3d4470: 4610         	mov	r0, r2
  3d4472: 2100         	movs	r1, #0x0
  3d4474: 4798         	blx	r3
  3d4476: 9b03         	ldr	r3, [sp, #0xc]
  3d4478: f503 7382    	add.w	r3, r3, #0x104
  3d447c: 4618         	mov	r0, r3
  3d447e: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x3d44dc <ScoreRow::init()+0x698>
  3d4480: 447b         	add	r3, pc
  3d4482: 4619         	mov	r1, r3
  3d4484: f3e1 fcf4    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x3e19e8
  3d4488: 9b03         	ldr	r3, [sp, #0xc]
  3d448a: f503 7380    	add.w	r3, r3, #0x100
  3d448e: 4618         	mov	r0, r3
  3d4490: 4b13         	ldr	r3, [pc, #0x4c]         @ 0x3d44e0 <ScoreRow::init()+0x69c>
  3d4492: 447b         	add	r3, pc
  3d4494: 4619         	mov	r1, r3
  3d4496: f3e1 fceb    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x3e19d6
  3d449a: 9b03         	ldr	r3, [sp, #0xc]
  3d449c: 2200         	movs	r2, #0x0
  3d449e: f8c3 2110    	str.w	r2, [r3, #0x110]
  3d44a2: 2301         	movs	r3, #0x1
  3d44a4: 4618         	mov	r0, r3
  3d44a6: b009         	add	sp, #0x24
  3d44a8: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3d44a9); words below are literal-pool data ---
  3d44aa: bf00         	nop
  3d44ac: 3682         	adds	r6, #0x82
  3d44ae: 0040         	lsls	r0, r0, #0x1
  3d44b0: 35d8         	adds	r5, #0xd8
  3d44b2: 0040         	lsls	r0, r0, #0x1
  3d44b4: 35f4         	adds	r5, #0xf4
  3d44b6: 0040         	lsls	r0, r0, #0x1
  3d44b8: 351a         	adds	r5, #0x1a
  3d44ba: 0040         	lsls	r0, r0, #0x1
  3d44bc: 3536         	adds	r5, #0x36
  3d44be: 0040         	lsls	r0, r0, #0x1
  3d44c0: 3458         	adds	r4, #0x58
  3d44c2: 0040         	lsls	r0, r0, #0x1
  3d44c4: 3454         	adds	r4, #0x54
  3d44c6: 0040         	lsls	r0, r0, #0x1
  3d44c8: 334e         	adds	r3, #0x4e
  3d44ca: 0040         	lsls	r0, r0, #0x1
  3d44cc: 334c         	adds	r3, #0x4c
  3d44ce: 0040         	lsls	r0, r0, #0x1
  3d44d0: 3246         	adds	r2, #0x46
  3d44d2: 0040         	lsls	r0, r0, #0x1
  3d44d4: 3244         	adds	r2, #0x44
  3d44d6: 0040         	lsls	r0, r0, #0x1
  3d44d8: 3176         	adds	r1, #0x76
  3d44da: 0040         	lsls	r0, r0, #0x1
  3d44dc: 307c         	adds	r0, #0x7c
  3d44de: 0040         	lsls	r0, r0, #0x1
  3d44e0: 306a         	adds	r0, #0x6a
  3d44e2: 0040         	lsls	r0, r0, #0x1

// ==== ScoreRow::~ScoreRow
//      file offset 0x3d44e4 (= ELF address; Ghidra 0x3e44e4), 176 bytes, Thumb-2
  3d44e4: b500         	push	{lr}
  3d44e6: b083         	sub	sp, #0xc
  3d44e8: 9001         	str	r0, [sp, #0x4]
  3d44ea: 4928         	ldr	r1, [pc, #0xa0]         @ 0x3d458c <ScoreRow::~ScoreRow()+0xa8>
  3d44ec: 4479         	add	r1, pc
  3d44ee: 9b01         	ldr	r3, [sp, #0x4]
  3d44f0: 4a27         	ldr	r2, [pc, #0x9c]         @ 0x3d4590 <ScoreRow::~ScoreRow()+0xac>
  3d44f2: 588a         	ldr	r2, [r1, r2]
  3d44f4: 3208         	adds	r2, #0x8
  3d44f6: 601a         	str	r2, [r3]
  3d44f8: 9b01         	ldr	r3, [sp, #0x4]
  3d44fa: 4618         	mov	r0, r3
  3d44fc: 2100         	movs	r1, #0x0
  3d44fe: f1bc f8a3    	bl	0x590648 <cocos2d::CCNode::removeAllChildrenWithCleanup(bool)> @ imm = #0x1bc146
  3d4502: 9b01         	ldr	r3, [sp, #0x4]
  3d4504: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3d4508: 4618         	mov	r0, r3
  3d450a: f1c3 fcd5    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1c39aa
  3d450e: 9b01         	ldr	r3, [sp, #0x4]
  3d4510: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3d4514: 4618         	mov	r0, r3
  3d4516: f1c3 fccf    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1c399e
  3d451a: 9b01         	ldr	r3, [sp, #0x4]
  3d451c: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3d4520: 4618         	mov	r0, r3
  3d4522: f1c3 fcc9    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1c3992
  3d4526: 9b01         	ldr	r3, [sp, #0x4]
  3d4528: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3d452c: 4618         	mov	r0, r3
  3d452e: f1c3 fcc3    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1c3986
  3d4532: 9b01         	ldr	r3, [sp, #0x4]
  3d4534: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3d4538: 4618         	mov	r0, r3
  3d453a: f1c3 fcbd    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1c397a
  3d453e: 9b01         	ldr	r3, [sp, #0x4]
  3d4540: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3d4544: 4618         	mov	r0, r3
  3d4546: f1c3 fcb7    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1c396e
  3d454a: 9b01         	ldr	r3, [sp, #0x4]
  3d454c: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3d4550: 4618         	mov	r0, r3
  3d4552: f1c3 fcb1    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1c3962
  3d4556: 9b01         	ldr	r3, [sp, #0x4]
  3d4558: f503 7382    	add.w	r3, r3, #0x104
  3d455c: 4618         	mov	r0, r3
  3d455e: f3e1 f9d9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e13b2
  3d4562: 9b01         	ldr	r3, [sp, #0x4]
  3d4564: f503 7380    	add.w	r3, r3, #0x100
  3d4568: 4618         	mov	r0, r3
  3d456a: f3e1 f9d3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e13a6
  3d456e: 9b01         	ldr	r3, [sp, #0x4]
  3d4570: 4618         	mov	r0, r3
  3d4572: f1bb f967    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x1bb2ce
  3d4576: 2300         	movs	r3, #0x0
  3d4578: 2b00         	cmp	r3, #0x0
  3d457a: d002         	beq	0x3d4582 <ScoreRow::~ScoreRow()+0x9e> @ imm = #0x4
  3d457c: 9801         	ldr	r0, [sp, #0x4]
  3d457e: f3b3 fd91    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3b3b22
  3d4582: 9b01         	ldr	r3, [sp, #0x4]
  3d4584: 4618         	mov	r0, r3
  3d4586: b003         	add	sp, #0xc
  3d4588: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3d458b); words below are literal-pool data ---
  3d458c: e51c         	b	0x3d3fc8 <ScoreRow::init()+0x184> @ imm = #-0x5c8
  3d458e: 0055         	lsls	r5, r2, #0x1
  3d4590: deb8         	udf	#0xb8
  3d4592: ffff b500    	<unknown>

// ==== ScoreRow::~ScoreRow
//      file offset 0x3d4594 (= ELF address; Ghidra 0x3e4594), 28 bytes, Thumb-2
  3d4594: b500         	push	{lr}
  3d4596: b083         	sub	sp, #0xc
  3d4598: 9001         	str	r0, [sp, #0x4]
  3d459a: 9801         	ldr	r0, [sp, #0x4]
  3d459c: f7ff ffa2    	bl	0x3d44e4 <ScoreRow::~ScoreRow()> @ imm = #-0xbc
  3d45a0: 9801         	ldr	r0, [sp, #0x4]
  3d45a2: f3b3 fd7f    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3b3afe
  3d45a6: 9b01         	ldr	r3, [sp, #0x4]
  3d45a8: 4618         	mov	r0, r3
  3d45aa: b003         	add	sp, #0xc
  3d45ac: f85d fb04    	ldr	pc, [sp], #4

// ==== ScoreRow::setPlayerTeamId
//      file offset 0x3d45b0 (= ELF address; Ghidra 0x3e45b0), 108 bytes, Thumb-2
  3d45b0: b510         	push	{r4, lr}
  3d45b2: b082         	sub	sp, #0x8
  3d45b4: 9001         	str	r0, [sp, #0x4]
  3d45b6: 9100         	str	r1, [sp]
  3d45b8: 4816         	ldr	r0, [pc, #0x58]         @ 0x3d4614 <ScoreRow::setPlayerTeamId(int)+0x64>
  3d45ba: 4478         	add	r0, pc
  3d45bc: 9b01         	ldr	r3, [sp, #0x4]
  3d45be: 9a00         	ldr	r2, [sp]
  3d45c0: f8c3 2110    	str.w	r2, [r3, #0x110]
  3d45c4: 9b01         	ldr	r3, [sp, #0x4]
  3d45c6: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3d45ca: 681b         	ldr	r3, [r3]
  3d45cc: f503 73de    	add.w	r3, r3, #0x1bc
  3d45d0: 681c         	ldr	r4, [r3]
  3d45d2: 9b01         	ldr	r3, [sp, #0x4]
  3d45d4: f8d3 10f8    	ldr.w	r1, [r3, #0xf8]
  3d45d8: 9a00         	ldr	r2, [sp]
  3d45da: 4613         	mov	r3, r2
  3d45dc: 005b         	lsls	r3, r3, #0x1
  3d45de: 4413         	add	r3, r2
  3d45e0: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x3d4618 <ScoreRow::setPlayerTeamId(int)+0x68>
  3d45e2: 5882         	ldr	r2, [r0, r2]
  3d45e4: 4413         	add	r3, r2
  3d45e6: 4608         	mov	r0, r1
  3d45e8: 4619         	mov	r1, r3
  3d45ea: 47a0         	blx	r4
  3d45ec: 9b01         	ldr	r3, [sp, #0x4]
  3d45ee: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3d45f2: 681b         	ldr	r3, [r3]
  3d45f4: 3390         	adds	r3, #0x90
  3d45f6: 681b         	ldr	r3, [r3]
  3d45f8: 9a01         	ldr	r2, [sp, #0x4]
  3d45fa: f8d2 10f8    	ldr.w	r1, [r2, #0xf8]
  3d45fe: 9a00         	ldr	r2, [sp]
  3d4600: 2a00         	cmp	r2, #0x0
  3d4602: bf0c         	ite	eq
  3d4604: 2200         	moveq	r2, #0x0
  3d4606: 2201         	movne	r2, #0x1
  3d4608: b2d2         	uxtb	r2, r2
  3d460a: 4608         	mov	r0, r1
  3d460c: 4611         	mov	r1, r2
  3d460e: 4798         	blx	r3
  3d4610: b002         	add	sp, #0x8
  3d4612: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3d4613); words below are literal-pool data ---
  3d4614: e44e         	b	0x3d3eb4 <ScoreRow::init()+0x70> @ imm = #-0x764
  3d4616: 0055         	lsls	r5, r2, #0x1
  3d4618: d7b8         	bvc	0x3d458c <ScoreRow::~ScoreRow()+0xa8> @ imm = #-0x90
  3d461a: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== ScoreRow::setPlayerName
//      file offset 0x3d461c (= ELF address; Ghidra 0x3e461c), 128 bytes, Thumb-2
  3d461c: b530         	push	{r4, r5, lr}
  3d461e: b085         	sub	sp, #0x14
  3d4620: 9001         	str	r0, [sp, #0x4]
  3d4622: 9100         	str	r1, [sp]
  3d4624: 9b01         	ldr	r3, [sp, #0x4]
  3d4626: f503 7380    	add.w	r3, r3, #0x100
  3d462a: 4618         	mov	r0, r3
  3d462c: 9900         	ldr	r1, [sp]
  3d462e: f3e1 f825    	bl	0x7b567c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18bcc> @ imm = #0x3e104a
  3d4632: 4603         	mov	r3, r0
  3d4634: 2b00         	cmp	r3, #0x0
  3d4636: bf0c         	ite	eq
  3d4638: 2300         	moveq	r3, #0x0
  3d463a: 2301         	movne	r3, #0x1
  3d463c: b2db         	uxtb	r3, r3
  3d463e: 2b00         	cmp	r3, #0x0
  3d4640: d02a         	beq	0x3d4698 <ScoreRow::setPlayerName(std::string)+0x7c> @ imm = #0x54
  3d4642: 9b01         	ldr	r3, [sp, #0x4]
  3d4644: f503 7380    	add.w	r3, r3, #0x100
  3d4648: 4618         	mov	r0, r3
  3d464a: 9900         	ldr	r1, [sp]
  3d464c: f3e1 ffb2    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x3e1f64
  3d4650: 9b01         	ldr	r3, [sp, #0x4]
  3d4652: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3d4656: 681b         	ldr	r3, [r3]
  3d4658: f503 730f    	add.w	r3, r3, #0x23c
  3d465c: 681c         	ldr	r4, [r3]
  3d465e: 9b01         	ldr	r3, [sp, #0x4]
  3d4660: f8d3 50e4    	ldr.w	r5, [r3, #0xe4]
  3d4664: ab03         	add	r3, sp, #0xc
  3d4666: 4618         	mov	r0, r3
  3d4668: 9900         	ldr	r1, [sp]
  3d466a: 2200         	movs	r2, #0x0
  3d466c: 230c         	movs	r3, #0xc
  3d466e: f3e2 f85b    	bl	0x7b6728 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19c78> @ imm = #0x3e20b6
  3d4672: ab03         	add	r3, sp, #0xc
  3d4674: 4618         	mov	r0, r3
  3d4676: f3e0 fe43    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3e0c86
  3d467a: 4603         	mov	r3, r0
  3d467c: 4628         	mov	r0, r5
  3d467e: 4619         	mov	r1, r3
  3d4680: 47a0         	blx	r4
  3d4682: ab03         	add	r3, sp, #0xc
  3d4684: 4618         	mov	r0, r3
  3d4686: f3e1 f945    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e128a
  3d468a: e005         	b	0x3d4698 <ScoreRow::setPlayerName(std::string)+0x7c> @ imm = #0xa
  3d468c: ab03         	add	r3, sp, #0xc
  3d468e: 4618         	mov	r0, r3
  3d4690: f3e1 f940    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e1280
  3d4694: f3b3 fd0a    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3b3a14
  3d4698: b005         	add	sp, #0x14
  3d469a: bd30         	pop	{r4, r5, pc}

// ==== ScoreRow::getPlayerName
//      file offset 0x3d469c (= ELF address; Ghidra 0x3e469c), 30 bytes, Thumb-2
  3d469c: b500         	push	{lr}
  3d469e: b083         	sub	sp, #0xc
  3d46a0: 9001         	str	r0, [sp, #0x4]
  3d46a2: 9100         	str	r1, [sp]
  3d46a4: 9b00         	ldr	r3, [sp]
  3d46a6: f503 7380    	add.w	r3, r3, #0x100
  3d46aa: 9801         	ldr	r0, [sp, #0x4]
  3d46ac: 4619         	mov	r1, r3
  3d46ae: f3e1 ff1b    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x3e1e36
  3d46b2: 9801         	ldr	r0, [sp, #0x4]
  3d46b4: b003         	add	sp, #0xc
  3d46b6: f85d fb04    	ldr	pc, [sp], #4

// ==== ScoreRow::setKillScore
//      file offset 0x3d46bc (= ELF address; Ghidra 0x3e46bc), 68 bytes, Thumb-2
  3d46bc: b530         	push	{r4, r5, lr}
  3d46be: b083         	sub	sp, #0xc
  3d46c0: 9001         	str	r0, [sp, #0x4]
  3d46c2: 9100         	str	r1, [sp]
  3d46c4: 9800         	ldr	r0, [sp]
  3d46c6: f3e0 fe1b    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3e0c36
  3d46ca: 4603         	mov	r3, r0
  3d46cc: 4618         	mov	r0, r3
  3d46ce: f701 ecac    	blx	0x2d6028 <.plt+0x158>   @ imm = #-0xfe6a8
  3d46d2: 4602         	mov	r2, r0
  3d46d4: 9b01         	ldr	r3, [sp, #0x4]
  3d46d6: f8c3 2108    	str.w	r2, [r3, #0x108]
  3d46da: 9b01         	ldr	r3, [sp, #0x4]
  3d46dc: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3d46e0: 681b         	ldr	r3, [r3]
  3d46e2: f503 73fc    	add.w	r3, r3, #0x1f8
  3d46e6: 681c         	ldr	r4, [r3]
  3d46e8: 9b01         	ldr	r3, [sp, #0x4]
  3d46ea: f8d3 50ec    	ldr.w	r5, [r3, #0xec]
  3d46ee: 9800         	ldr	r0, [sp]
  3d46f0: f3e0 fe06    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3e0c0c
  3d46f4: 4603         	mov	r3, r0
  3d46f6: 4628         	mov	r0, r5
  3d46f8: 4619         	mov	r1, r3
  3d46fa: 47a0         	blx	r4
  3d46fc: b003         	add	sp, #0xc
  3d46fe: bd30         	pop	{r4, r5, pc}

// ==== ScoreRow::setDeaths
//      file offset 0x3d4700 (= ELF address; Ghidra 0x3e4700), 46 bytes, Thumb-2
  3d4700: b530         	push	{r4, r5, lr}
  3d4702: b083         	sub	sp, #0xc
  3d4704: 9001         	str	r0, [sp, #0x4]
  3d4706: 9100         	str	r1, [sp]
  3d4708: 9b01         	ldr	r3, [sp, #0x4]
  3d470a: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3d470e: 681b         	ldr	r3, [r3]
  3d4710: f503 73fc    	add.w	r3, r3, #0x1f8
  3d4714: 681c         	ldr	r4, [r3]
  3d4716: 9b01         	ldr	r3, [sp, #0x4]
  3d4718: f8d3 50f0    	ldr.w	r5, [r3, #0xf0]
  3d471c: 9800         	ldr	r0, [sp]
  3d471e: f3e0 fdef    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3e0bde
  3d4722: 4603         	mov	r3, r0
  3d4724: 4628         	mov	r0, r5
  3d4726: 4619         	mov	r1, r3
  3d4728: 47a0         	blx	r4
  3d472a: b003         	add	sp, #0xc
  3d472c: bd30         	pop	{r4, r5, pc}

// ==== ScoreRow::setSpread
//      file offset 0x3d4730 (= ELF address; Ghidra 0x3e4730), 46 bytes, Thumb-2
  3d4730: b530         	push	{r4, r5, lr}
  3d4732: b083         	sub	sp, #0xc
  3d4734: 9001         	str	r0, [sp, #0x4]
  3d4736: 9100         	str	r1, [sp]
  3d4738: 9b01         	ldr	r3, [sp, #0x4]
  3d473a: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3d473e: 681b         	ldr	r3, [r3]
  3d4740: f503 73fc    	add.w	r3, r3, #0x1f8
  3d4744: 681c         	ldr	r4, [r3]
  3d4746: 9b01         	ldr	r3, [sp, #0x4]
  3d4748: f8d3 50f4    	ldr.w	r5, [r3, #0xf4]
  3d474c: 9800         	ldr	r0, [sp]
  3d474e: f3e0 fdd7    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3e0bae
  3d4752: 4603         	mov	r3, r0
  3d4754: 4628         	mov	r0, r5
  3d4756: 4619         	mov	r1, r3
  3d4758: 47a0         	blx	r4
  3d475a: b003         	add	sp, #0xc
  3d475c: bd30         	pop	{r4, r5, pc}

// ==== ScoreRow::setOpacity
//      file offset 0x3d4760 (= ELF address; Ghidra 0x3e4760), 256 bytes, Thumb-2
  3d4760: b500         	push	{lr}
  3d4762: b083         	sub	sp, #0xc
  3d4764: 9001         	str	r0, [sp, #0x4]
  3d4766: 9100         	str	r1, [sp]
  3d4768: 9b01         	ldr	r3, [sp, #0x4]
  3d476a: f893 310c    	ldrb.w	r3, [r3, #0x10c]
  3d476e: f083 0301    	eor	r3, r3, #0x1
  3d4772: b2db         	uxtb	r3, r3
  3d4774: 2b00         	cmp	r3, #0x0
  3d4776: d004         	beq	0x3d4782 <ScoreRow::setOpacity(int)+0x22> @ imm = #0x8
  3d4778: 9b00         	ldr	r3, [sp]
  3d477a: 2b64         	cmp	r3, #0x64
  3d477c: bfa8         	it	ge
  3d477e: 2364         	movge	r3, #0x64
  3d4780: 9300         	str	r3, [sp]
  3d4782: 9b01         	ldr	r3, [sp, #0x4]
  3d4784: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3d4788: 681b         	ldr	r3, [r3]
  3d478a: f503 73d2    	add.w	r3, r3, #0x1a4
  3d478e: 681b         	ldr	r3, [r3]
  3d4790: 9a01         	ldr	r2, [sp, #0x4]
  3d4792: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  3d4796: 4611         	mov	r1, r2
  3d4798: 9a00         	ldr	r2, [sp]
  3d479a: b2d2         	uxtb	r2, r2
  3d479c: 4608         	mov	r0, r1
  3d479e: 4611         	mov	r1, r2
  3d47a0: 4798         	blx	r3
  3d47a2: 9b01         	ldr	r3, [sp, #0x4]
  3d47a4: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3d47a8: 681b         	ldr	r3, [r3]
  3d47aa: f503 73d2    	add.w	r3, r3, #0x1a4
  3d47ae: 681b         	ldr	r3, [r3]
  3d47b0: 9a01         	ldr	r2, [sp, #0x4]
  3d47b2: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  3d47b6: 4611         	mov	r1, r2
  3d47b8: 9a00         	ldr	r2, [sp]
  3d47ba: b2d2         	uxtb	r2, r2
  3d47bc: 4608         	mov	r0, r1
  3d47be: 4611         	mov	r1, r2
  3d47c0: 4798         	blx	r3
  3d47c2: 9b01         	ldr	r3, [sp, #0x4]
  3d47c4: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3d47c8: 681b         	ldr	r3, [r3]
  3d47ca: f503 73d2    	add.w	r3, r3, #0x1a4
  3d47ce: 681b         	ldr	r3, [r3]
  3d47d0: 9a01         	ldr	r2, [sp, #0x4]
  3d47d2: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  3d47d6: 4611         	mov	r1, r2
  3d47d8: 9a00         	ldr	r2, [sp]
  3d47da: b2d2         	uxtb	r2, r2
  3d47dc: 4608         	mov	r0, r1
  3d47de: 4611         	mov	r1, r2
  3d47e0: 4798         	blx	r3
  3d47e2: 9b01         	ldr	r3, [sp, #0x4]
  3d47e4: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3d47e8: 681b         	ldr	r3, [r3]
  3d47ea: f503 73d2    	add.w	r3, r3, #0x1a4
  3d47ee: 681b         	ldr	r3, [r3]
  3d47f0: 9a01         	ldr	r2, [sp, #0x4]
  3d47f2: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  3d47f6: 4611         	mov	r1, r2
  3d47f8: 9a00         	ldr	r2, [sp]
  3d47fa: b2d2         	uxtb	r2, r2
  3d47fc: 4608         	mov	r0, r1
  3d47fe: 4611         	mov	r1, r2
  3d4800: 4798         	blx	r3
  3d4802: 9b01         	ldr	r3, [sp, #0x4]
  3d4804: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3d4808: 681b         	ldr	r3, [r3]
  3d480a: 3394         	adds	r3, #0x94
  3d480c: 681b         	ldr	r3, [r3]
  3d480e: 9a01         	ldr	r2, [sp, #0x4]
  3d4810: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  3d4814: 4610         	mov	r0, r2
  3d4816: 4798         	blx	r3
  3d4818: 4603         	mov	r3, r0
  3d481a: 2b00         	cmp	r3, #0x0
  3d481c: d00e         	beq	0x3d483c <ScoreRow::setOpacity(int)+0xdc> @ imm = #0x1c
  3d481e: 9b01         	ldr	r3, [sp, #0x4]
  3d4820: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3d4824: 681b         	ldr	r3, [r3]
  3d4826: f503 73d2    	add.w	r3, r3, #0x1a4
  3d482a: 681b         	ldr	r3, [r3]
  3d482c: 9a01         	ldr	r2, [sp, #0x4]
  3d482e: f8d2 10f8    	ldr.w	r1, [r2, #0xf8]
  3d4832: 9a00         	ldr	r2, [sp]
  3d4834: b2d2         	uxtb	r2, r2
  3d4836: 4608         	mov	r0, r1
  3d4838: 4611         	mov	r1, r2
  3d483a: 4798         	blx	r3
  3d483c: 9b01         	ldr	r3, [sp, #0x4]
  3d483e: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3d4842: 681b         	ldr	r3, [r3]
  3d4844: f503 73d2    	add.w	r3, r3, #0x1a4
  3d4848: 681b         	ldr	r3, [r3]
  3d484a: 9a01         	ldr	r2, [sp, #0x4]
  3d484c: f8d2 10fc    	ldr.w	r1, [r2, #0xfc]
  3d4850: 9a00         	ldr	r2, [sp]
  3d4852: b2d2         	uxtb	r2, r2
  3d4854: 4608         	mov	r0, r1
  3d4856: 4611         	mov	r1, r2
  3d4858: 4798         	blx	r3
  3d485a: b003         	add	sp, #0xc
  3d485c: f85d fb04    	ldr	pc, [sp], #4

// ==== ScoreRow::setMVP
//      file offset 0x3d4860 (= ELF address; Ghidra 0x3e4860), 36 bytes, Thumb-2
  3d4860: b500         	push	{lr}
  3d4862: b083         	sub	sp, #0xc
  3d4864: 9001         	str	r0, [sp, #0x4]
  3d4866: 9b01         	ldr	r3, [sp, #0x4]
  3d4868: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3d486c: 681b         	ldr	r3, [r3]
  3d486e: 3390         	adds	r3, #0x90
  3d4870: 681b         	ldr	r3, [r3]
  3d4872: 9a01         	ldr	r2, [sp, #0x4]
  3d4874: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3d4878: 4610         	mov	r0, r2
  3d487a: 2101         	movs	r1, #0x1
  3d487c: 4798         	blx	r3
  3d487e: b003         	add	sp, #0xc
  3d4880: f85d fb04    	ldr	pc, [sp], #4
