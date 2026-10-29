// AmmoMeter: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 12 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../AmmoMeter.cpp

// ==== AmmoMeter::AmmoMeter
//      file offset 0x2e3e5c (= ELF address; Ghidra 0x2f3e5c), 80 bytes, Thumb-2
  2e3e5c: b510         	push	{r4, lr}
  2e3e5e: b082         	sub	sp, #0x8
  2e3e60: 9001         	str	r0, [sp, #0x4]
  2e3e62: 4c10         	ldr	r4, [pc, #0x40]         @ 0x2e3ea4 <AmmoMeter::AmmoMeter()+0x48>
  2e3e64: 447c         	add	r4, pc
  2e3e66: 9b01         	ldr	r3, [sp, #0x4]
  2e3e68: 4618         	mov	r0, r3
  2e3e6a: f2ab fbe5    	bl	0x58f638 <cocos2d::CCNode::CCNode()> @ imm = #0x2ab7ca
  2e3e6e: 9b01         	ldr	r3, [sp, #0x4]
  2e3e70: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x2e3ea8 <AmmoMeter::AmmoMeter()+0x4c>
  2e3e72: 58a2         	ldr	r2, [r4, r2]
  2e3e74: 3208         	adds	r2, #0x8
  2e3e76: 601a         	str	r2, [r3]
  2e3e78: 9b01         	ldr	r3, [sp, #0x4]
  2e3e7a: f503 7384    	add.w	r3, r3, #0x108
  2e3e7e: 4618         	mov	r0, r3
  2e3e80: f2ae ff28    	bl	0x592cd4 <cocos2d::CCPoint::CCPoint()> @ imm = #0x2aee50
  2e3e84: 9b01         	ldr	r3, [sp, #0x4]
  2e3e86: 2200         	movs	r2, #0x0
  2e3e88: f8c3 20f0    	str.w	r2, [r3, #0xf0]
  2e3e8c: 9b01         	ldr	r3, [sp, #0x4]
  2e3e8e: e005         	b	0x2e3e9c <AmmoMeter::AmmoMeter()+0x40> @ imm = #0xa
  2e3e90: 9b01         	ldr	r3, [sp, #0x4]
  2e3e92: 4618         	mov	r0, r3
  2e3e94: f2ab fcd6    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x2ab9ac
  2e3e98: f0a4 f108    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4a4210
  2e3e9c: 4618         	mov	r0, r3
  2e3e9e: b002         	add	sp, #0x8
  2e3ea0: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2e3ea1); words below are literal-pool data ---
  2e3ea2: bf00         	nop
  2e3ea4: eba4 0064    	sub.w	r0, r4, r4, asr #1
  2e3ea8: d778         	bvc	0x2e3f9c <AmmoMeter::init()+0xf0> @ imm = #0xf0
  2e3eaa: ffff b570    	<unknown>

// ==== AmmoMeter::init
//      file offset 0x2e3eac (= ELF address; Ghidra 0x2f3eac), 1160 bytes, Thumb-2
  2e3eac: b570         	push	{r4, r5, r6, lr}
  2e3eae: b08a         	sub	sp, #0x28
  2e3eb0: 9003         	str	r0, [sp, #0xc]
  2e3eb2: f8df 4448    	ldr.w	r4, [pc, #0x448]        @ 0x2e42fc <AmmoMeter::init()+0x450>
  2e3eb6: 447c         	add	r4, pc
  2e3eb8: 9b03         	ldr	r3, [sp, #0xc]
  2e3eba: 4618         	mov	r0, r3
  2e3ebc: f2ab fdc6    	bl	0x58fa4c <cocos2d::CCNode::init()> @ imm = #0x2abb8c
  2e3ec0: 4603         	mov	r3, r0
  2e3ec2: f88d 3017    	strb.w	r3, [sp, #0x17]
  2e3ec6: f89d 3017    	ldrb.w	r3, [sp, #0x17]
  2e3eca: f083 0301    	eor	r3, r3, #0x1
  2e3ece: b2db         	uxtb	r3, r3
  2e3ed0: 2b00         	cmp	r3, #0x0
  2e3ed2: d001         	beq	0x2e3ed8 <AmmoMeter::init()+0x2c> @ imm = #0x2
  2e3ed4: 2300         	movs	r3, #0x0
  2e3ed6: e20d         	b	0x2e42f4 <AmmoMeter::init()+0x448> @ imm = #0x41a
  2e3ed8: f8df 3424    	ldr.w	r3, [pc, #0x424]        @ 0x2e4300 <AmmoMeter::init()+0x454>
  2e3edc: 447b         	add	r3, pc
  2e3ede: 4618         	mov	r0, r3
  2e3ee0: f2f4 fa10    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f4420
  2e3ee4: 4602         	mov	r2, r0
  2e3ee6: 9b03         	ldr	r3, [sp, #0xc]
  2e3ee8: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  2e3eec: 9b03         	ldr	r3, [sp, #0xc]
  2e3eee: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  2e3ef2: 4618         	mov	r0, r3
  2e3ef4: f2b3 fff8    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2b3ff0
  2e3ef8: 9b03         	ldr	r3, [sp, #0xc]
  2e3efa: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  2e3efe: 681b         	ldr	r3, [r3]
  2e3f00: 337c         	adds	r3, #0x7c
  2e3f02: 681d         	ldr	r5, [r3]
  2e3f04: 9b03         	ldr	r3, [sp, #0xc]
  2e3f06: f8d3 60e4    	ldr.w	r6, [r3, #0xe4]
  2e3f0a: ab08         	add	r3, sp, #0x20
  2e3f0c: 4618         	mov	r0, r3
  2e3f0e: f04f 517c    	mov.w	r1, #0x3f000000
  2e3f12: f04f 527c    	mov.w	r2, #0x3f000000
  2e3f16: f2ae feeb    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2aedd6
  2e3f1a: ab08         	add	r3, sp, #0x20
  2e3f1c: 4630         	mov	r0, r6
  2e3f1e: 4619         	mov	r1, r3
  2e3f20: 47a8         	blx	r5
  2e3f22: 9b03         	ldr	r3, [sp, #0xc]
  2e3f24: 681b         	ldr	r3, [r3]
  2e3f26: 33cc         	adds	r3, #0xcc
  2e3f28: 681b         	ldr	r3, [r3]
  2e3f2a: 9903         	ldr	r1, [sp, #0xc]
  2e3f2c: 9a03         	ldr	r2, [sp, #0xc]
  2e3f2e: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  2e3f32: 4608         	mov	r0, r1
  2e3f34: 4611         	mov	r1, r2
  2e3f36: 2200         	movs	r2, #0x0
  2e3f38: 4798         	blx	r3
  2e3f3a: 4bf2         	ldr	r3, [pc, #0x3c8]        @ 0x2e4304 <AmmoMeter::init()+0x458>
  2e3f3c: 447b         	add	r3, pc
  2e3f3e: 4618         	mov	r0, r3
  2e3f40: f2f4 f9e0    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f43c0
  2e3f44: 4602         	mov	r2, r0
  2e3f46: 9b03         	ldr	r3, [sp, #0xc]
  2e3f48: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  2e3f4c: 9b03         	ldr	r3, [sp, #0xc]
  2e3f4e: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  2e3f52: 4618         	mov	r0, r3
  2e3f54: f2b3 ffc8    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2b3f90
  2e3f58: 9b03         	ldr	r3, [sp, #0xc]
  2e3f5a: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  2e3f5e: 681b         	ldr	r3, [r3]
  2e3f60: 3340         	adds	r3, #0x40
  2e3f62: 681b         	ldr	r3, [r3]
  2e3f64: 9a03         	ldr	r2, [sp, #0xc]
  2e3f66: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  2e3f6a: 4610         	mov	r0, r2
  2e3f6c: f649 119a    	movw	r1, #0x999a
  2e3f70: f6c3 7119    	movt	r1, #0x3f19
  2e3f74: 4798         	blx	r3
  2e3f76: 9b03         	ldr	r3, [sp, #0xc]
  2e3f78: 681b         	ldr	r3, [r3]
  2e3f7a: 33c8         	adds	r3, #0xc8
  2e3f7c: 681b         	ldr	r3, [r3]
  2e3f7e: 9903         	ldr	r1, [sp, #0xc]
  2e3f80: 9a03         	ldr	r2, [sp, #0xc]
  2e3f82: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  2e3f86: 4608         	mov	r0, r1
  2e3f88: 4611         	mov	r1, r2
  2e3f8a: 4798         	blx	r3
  2e3f8c: 9b03         	ldr	r3, [sp, #0xc]
  2e3f8e: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  2e3f92: 681b         	ldr	r3, [r3]
  2e3f94: 334c         	adds	r3, #0x4c
  2e3f96: 681d         	ldr	r5, [r3]
  2e3f98: 9b03         	ldr	r3, [sp, #0xc]
  2e3f9a: f8d3 60e8    	ldr.w	r6, [r3, #0xe8]
  2e3f9e: ab08         	add	r3, sp, #0x20
  2e3fa0: 4618         	mov	r0, r3
  2e3fa2: f04f 4141    	mov.w	r1, #0xc1000000
  2e3fa6: f04f 527e    	mov.w	r2, #0x3f800000
  2e3faa: f2ae fea1    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2aed42
  2e3fae: ab08         	add	r3, sp, #0x20
  2e3fb0: 4630         	mov	r0, r6
  2e3fb2: 4619         	mov	r1, r3
  2e3fb4: 47a8         	blx	r5
  2e3fb6: 4bd4         	ldr	r3, [pc, #0x350]        @ 0x2e4308 <AmmoMeter::init()+0x45c>
  2e3fb8: 447b         	add	r3, pc
  2e3fba: 4618         	mov	r0, r3
  2e3fbc: f2f4 f9a2    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f4344
  2e3fc0: 4602         	mov	r2, r0
  2e3fc2: 9b03         	ldr	r3, [sp, #0xc]
  2e3fc4: f8c3 20ec    	str.w	r2, [r3, #0xec]
  2e3fc8: 9b03         	ldr	r3, [sp, #0xc]
  2e3fca: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  2e3fce: 4618         	mov	r0, r3
  2e3fd0: f2b3 ff8a    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2b3f14
  2e3fd4: 9b03         	ldr	r3, [sp, #0xc]
  2e3fd6: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  2e3fda: 681b         	ldr	r3, [r3]
  2e3fdc: 3340         	adds	r3, #0x40
  2e3fde: 681b         	ldr	r3, [r3]
  2e3fe0: 9a03         	ldr	r2, [sp, #0xc]
  2e3fe2: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  2e3fe6: 4610         	mov	r0, r2
  2e3fe8: f649 119a    	movw	r1, #0x999a
  2e3fec: f6c3 7119    	movt	r1, #0x3f19
  2e3ff0: 4798         	blx	r3
  2e3ff2: 9b03         	ldr	r3, [sp, #0xc]
  2e3ff4: 681b         	ldr	r3, [r3]
  2e3ff6: 33c8         	adds	r3, #0xc8
  2e3ff8: 681b         	ldr	r3, [r3]
  2e3ffa: 9903         	ldr	r1, [sp, #0xc]
  2e3ffc: 9a03         	ldr	r2, [sp, #0xc]
  2e3ffe: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  2e4002: 4608         	mov	r0, r1
  2e4004: 4611         	mov	r1, r2
  2e4006: 4798         	blx	r3
  2e4008: 9b03         	ldr	r3, [sp, #0xc]
  2e400a: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  2e400e: 681b         	ldr	r3, [r3]
  2e4010: 334c         	adds	r3, #0x4c
  2e4012: 681d         	ldr	r5, [r3]
  2e4014: 9b03         	ldr	r3, [sp, #0xc]
  2e4016: f8d3 60ec    	ldr.w	r6, [r3, #0xec]
  2e401a: ab08         	add	r3, sp, #0x20
  2e401c: 4618         	mov	r0, r3
  2e401e: f04f 0100    	mov.w	r1, #0x0
  2e4022: f2c4 2158    	movt	r1, #0x4258
  2e4026: f04f 4281    	mov.w	r2, #0x40800000
  2e402a: f2ae fe61    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2aecc2
  2e402e: ab08         	add	r3, sp, #0x20
  2e4030: 4630         	mov	r0, r6
  2e4032: 4619         	mov	r1, r3
  2e4034: 47a8         	blx	r5
  2e4036: 2320         	movs	r3, #0x20
  2e4038: 9300         	str	r3, [sp]
  2e403a: 4bb4         	ldr	r3, [pc, #0x2d0]        @ 0x2e430c <AmmoMeter::init()+0x460>
  2e403c: 447b         	add	r3, pc
  2e403e: 4618         	mov	r0, r3
  2e4040: 4bb3         	ldr	r3, [pc, #0x2cc]        @ 0x2e4310 <AmmoMeter::init()+0x464>
  2e4042: 447b         	add	r3, pc
  2e4044: 4619         	mov	r1, r3
  2e4046: 2220         	movs	r2, #0x20
  2e4048: 2320         	movs	r3, #0x20
  2e404a: f2c1 f995    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x2c132a
  2e404e: 4602         	mov	r2, r0
  2e4050: 9b03         	ldr	r3, [sp, #0xc]
  2e4052: f8c3 20fc    	str.w	r2, [r3, #0xfc]
  2e4056: 2330         	movs	r3, #0x30
  2e4058: 9300         	str	r3, [sp]
  2e405a: 4bae         	ldr	r3, [pc, #0x2b8]        @ 0x2e4314 <AmmoMeter::init()+0x468>
  2e405c: 447b         	add	r3, pc
  2e405e: 4618         	mov	r0, r3
  2e4060: 4bad         	ldr	r3, [pc, #0x2b4]        @ 0x2e4318 <AmmoMeter::init()+0x46c>
  2e4062: 447b         	add	r3, pc
  2e4064: 4619         	mov	r1, r3
  2e4066: 220e         	movs	r2, #0xe
  2e4068: 230f         	movs	r3, #0xf
  2e406a: f2c1 f985    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x2c130a
  2e406e: 4602         	mov	r2, r0
  2e4070: 9b03         	ldr	r3, [sp, #0xc]
  2e4072: f8c3 20f4    	str.w	r2, [r3, #0xf4]
  2e4076: 2330         	movs	r3, #0x30
  2e4078: 9300         	str	r3, [sp]
  2e407a: 4ba8         	ldr	r3, [pc, #0x2a0]        @ 0x2e431c <AmmoMeter::init()+0x470>
  2e407c: 447b         	add	r3, pc
  2e407e: 4618         	mov	r0, r3
  2e4080: 4ba7         	ldr	r3, [pc, #0x29c]        @ 0x2e4320 <AmmoMeter::init()+0x474>
  2e4082: 447b         	add	r3, pc
  2e4084: 4619         	mov	r1, r3
  2e4086: 220e         	movs	r2, #0xe
  2e4088: 230f         	movs	r3, #0xf
  2e408a: f2c1 f975    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x2c12ea
  2e408e: 4602         	mov	r2, r0
  2e4090: 9b03         	ldr	r3, [sp, #0xc]
  2e4092: f8c3 20f8    	str.w	r2, [r3, #0xf8]
  2e4096: 9b03         	ldr	r3, [sp, #0xc]
  2e4098: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  2e409c: 681b         	ldr	r3, [r3]
  2e409e: 3340         	adds	r3, #0x40
  2e40a0: 681b         	ldr	r3, [r3]
  2e40a2: 9a03         	ldr	r2, [sp, #0xc]
  2e40a4: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  2e40a8: 4610         	mov	r0, r2
  2e40aa: f04f 517c    	mov.w	r1, #0x3f000000
  2e40ae: 4798         	blx	r3
  2e40b0: 9b03         	ldr	r3, [sp, #0xc]
  2e40b2: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  2e40b6: 681b         	ldr	r3, [r3]
  2e40b8: 3340         	adds	r3, #0x40
  2e40ba: 681b         	ldr	r3, [r3]
  2e40bc: 9a03         	ldr	r2, [sp, #0xc]
  2e40be: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  2e40c2: 4610         	mov	r0, r2
  2e40c4: f04f 517c    	mov.w	r1, #0x3f000000
  2e40c8: 4798         	blx	r3
  2e40ca: 9b03         	ldr	r3, [sp, #0xc]
  2e40cc: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  2e40d0: 681b         	ldr	r3, [r3]
  2e40d2: 3340         	adds	r3, #0x40
  2e40d4: 681b         	ldr	r3, [r3]
  2e40d6: 9a03         	ldr	r2, [sp, #0xc]
  2e40d8: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  2e40dc: 4610         	mov	r0, r2
  2e40de: f64c 41cd    	movw	r1, #0xcccd
  2e40e2: f6c3 61cc    	movt	r1, #0x3ecc
  2e40e6: 4798         	blx	r3
  2e40e8: 9b03         	ldr	r3, [sp, #0xc]
  2e40ea: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  2e40ee: 4618         	mov	r0, r3
  2e40f0: 211a         	movs	r1, #0x1a
  2e40f2: f2c1 fe47    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x2c1c8e
  2e40f6: 9b03         	ldr	r3, [sp, #0xc]
  2e40f8: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  2e40fc: 4618         	mov	r0, r3
  2e40fe: 210f         	movs	r1, #0xf
  2e4100: f2c1 fe40    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x2c1c80
  2e4104: 9b03         	ldr	r3, [sp, #0xc]
  2e4106: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  2e410a: 4618         	mov	r0, r3
  2e410c: 210f         	movs	r1, #0xf
  2e410e: f2c1 fe39    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x2c1c72
  2e4112: 9b03         	ldr	r3, [sp, #0xc]
  2e4114: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  2e4118: 681b         	ldr	r3, [r3]
  2e411a: 334c         	adds	r3, #0x4c
  2e411c: 681d         	ldr	r5, [r3]
  2e411e: 9b03         	ldr	r3, [sp, #0xc]
  2e4120: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  2e4124: 461e         	mov	r6, r3
  2e4126: ab08         	add	r3, sp, #0x20
  2e4128: 4618         	mov	r0, r3
  2e412a: f04f 0100    	mov.w	r1, #0x0
  2e412e: f2cc 210c    	movt	r1, #0xc20c
  2e4132: f04f 0200    	mov.w	r2, #0x0
  2e4136: f2cc 1220    	movt	r2, #0xc120
  2e413a: f2ae fdd9    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2aebb2
  2e413e: ab08         	add	r3, sp, #0x20
  2e4140: 4630         	mov	r0, r6
  2e4142: 4619         	mov	r1, r3
  2e4144: 47a8         	blx	r5
  2e4146: 9b03         	ldr	r3, [sp, #0xc]
  2e4148: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  2e414c: 681b         	ldr	r3, [r3]
  2e414e: 334c         	adds	r3, #0x4c
  2e4150: 681d         	ldr	r5, [r3]
  2e4152: 9b03         	ldr	r3, [sp, #0xc]
  2e4154: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  2e4158: 461e         	mov	r6, r3
  2e415a: ab08         	add	r3, sp, #0x20
  2e415c: 4618         	mov	r0, r3
  2e415e: f04f 0100    	mov.w	r1, #0x0
  2e4162: f2c4 11b0    	movt	r1, #0x41b0
  2e4166: f04f 0200    	mov.w	r2, #0x0
  2e416a: f2cc 1220    	movt	r2, #0xc120
  2e416e: f2ae fdbf    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2aeb7e
  2e4172: ab08         	add	r3, sp, #0x20
  2e4174: 4630         	mov	r0, r6
  2e4176: 4619         	mov	r1, r3
  2e4178: 47a8         	blx	r5
  2e417a: 9b03         	ldr	r3, [sp, #0xc]
  2e417c: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  2e4180: 681b         	ldr	r3, [r3]
  2e4182: 337c         	adds	r3, #0x7c
  2e4184: 681d         	ldr	r5, [r3]
  2e4186: 9b03         	ldr	r3, [sp, #0xc]
  2e4188: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  2e418c: 461e         	mov	r6, r3
  2e418e: ab08         	add	r3, sp, #0x20
  2e4190: 4618         	mov	r0, r3
  2e4192: f04f 517c    	mov.w	r1, #0x3f000000
  2e4196: f04f 527c    	mov.w	r2, #0x3f000000
  2e419a: f2ae fda9    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2aeb52
  2e419e: ab08         	add	r3, sp, #0x20
  2e41a0: 4630         	mov	r0, r6
  2e41a2: 4619         	mov	r1, r3
  2e41a4: 47a8         	blx	r5
  2e41a6: 9b03         	ldr	r3, [sp, #0xc]
  2e41a8: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  2e41ac: 681b         	ldr	r3, [r3]
  2e41ae: 337c         	adds	r3, #0x7c
  2e41b0: 681d         	ldr	r5, [r3]
  2e41b2: 9b03         	ldr	r3, [sp, #0xc]
  2e41b4: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  2e41b8: 461e         	mov	r6, r3
  2e41ba: ab08         	add	r3, sp, #0x20
  2e41bc: 4618         	mov	r0, r3
  2e41be: f04f 517c    	mov.w	r1, #0x3f000000
  2e41c2: f04f 527c    	mov.w	r2, #0x3f000000
  2e41c6: f2ae fd93    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2aeb26
  2e41ca: ab08         	add	r3, sp, #0x20
  2e41cc: 4630         	mov	r0, r6
  2e41ce: 4619         	mov	r1, r3
  2e41d0: 47a8         	blx	r5
  2e41d2: 9b03         	ldr	r3, [sp, #0xc]
  2e41d4: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  2e41d8: 681b         	ldr	r3, [r3]
  2e41da: 334c         	adds	r3, #0x4c
  2e41dc: 681d         	ldr	r5, [r3]
  2e41de: 9b03         	ldr	r3, [sp, #0xc]
  2e41e0: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  2e41e4: 461e         	mov	r6, r3
  2e41e6: ab08         	add	r3, sp, #0x20
  2e41e8: 4618         	mov	r0, r3
  2e41ea: f04f 0100    	mov.w	r1, #0x0
  2e41ee: f04f 0200    	mov.w	r2, #0x0
  2e41f2: f2ae fd7d    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2aeafa
  2e41f6: ab08         	add	r3, sp, #0x20
  2e41f8: 4630         	mov	r0, r6
  2e41fa: 4619         	mov	r1, r3
  2e41fc: 47a8         	blx	r5
  2e41fe: 9b03         	ldr	r3, [sp, #0xc]
  2e4200: f503 7584    	add.w	r5, r3, #0x108
  2e4204: ab08         	add	r3, sp, #0x20
  2e4206: 4618         	mov	r0, r3
  2e4208: f04f 0100    	mov.w	r1, #0x0
  2e420c: f2cc 1170    	movt	r1, #0xc170
  2e4210: f04f 0200    	mov.w	r2, #0x0
  2e4214: f2ae fd6c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2aead8
  2e4218: ab08         	add	r3, sp, #0x20
  2e421a: 4628         	mov	r0, r5
  2e421c: 4619         	mov	r1, r3
  2e421e: f2ae fd95    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x2aeb2a
  2e4222: 9b03         	ldr	r3, [sp, #0xc]
  2e4224: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  2e4228: 681b         	ldr	r3, [r3]
  2e422a: 337c         	adds	r3, #0x7c
  2e422c: 681d         	ldr	r5, [r3]
  2e422e: 9b03         	ldr	r3, [sp, #0xc]
  2e4230: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  2e4234: 461e         	mov	r6, r3
  2e4236: ab08         	add	r3, sp, #0x20
  2e4238: 4618         	mov	r0, r3
  2e423a: f04f 517c    	mov.w	r1, #0x3f000000
  2e423e: f04f 527c    	mov.w	r2, #0x3f000000
  2e4242: f2ae fd55    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2aeaaa
  2e4246: ab08         	add	r3, sp, #0x20
  2e4248: 4630         	mov	r0, r6
  2e424a: 4619         	mov	r1, r3
  2e424c: 47a8         	blx	r5
  2e424e: 9b03         	ldr	r3, [sp, #0xc]
  2e4250: 681b         	ldr	r3, [r3]
  2e4252: 33c8         	adds	r3, #0xc8
  2e4254: 681b         	ldr	r3, [r3]
  2e4256: 9903         	ldr	r1, [sp, #0xc]
  2e4258: 9a03         	ldr	r2, [sp, #0xc]
  2e425a: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  2e425e: 4608         	mov	r0, r1
  2e4260: 4611         	mov	r1, r2
  2e4262: 4798         	blx	r3
  2e4264: 9b03         	ldr	r3, [sp, #0xc]
  2e4266: 681b         	ldr	r3, [r3]
  2e4268: 33c8         	adds	r3, #0xc8
  2e426a: 681b         	ldr	r3, [r3]
  2e426c: 9903         	ldr	r1, [sp, #0xc]
  2e426e: 9a03         	ldr	r2, [sp, #0xc]
  2e4270: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  2e4274: 4608         	mov	r0, r1
  2e4276: 4611         	mov	r1, r2
  2e4278: 4798         	blx	r3
  2e427a: 9b03         	ldr	r3, [sp, #0xc]
  2e427c: 681b         	ldr	r3, [r3]
  2e427e: 33c8         	adds	r3, #0xc8
  2e4280: 681b         	ldr	r3, [r3]
  2e4282: 9903         	ldr	r1, [sp, #0xc]
  2e4284: 9a03         	ldr	r2, [sp, #0xc]
  2e4286: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  2e428a: 4608         	mov	r0, r1
  2e428c: 4611         	mov	r1, r2
  2e428e: 4798         	blx	r3
  2e4290: 9b03         	ldr	r3, [sp, #0xc]
  2e4292: 2200         	movs	r2, #0x0
  2e4294: f8c3 2104    	str.w	r2, [r3, #0x104]
  2e4298: 9b03         	ldr	r3, [sp, #0xc]
  2e429a: f04f 0200    	mov.w	r2, #0x0
  2e429e: f8c3 2100    	str.w	r2, [r3, #0x100]
  2e42a2: f2fc fa05    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2fc40a
  2e42a6: 4602         	mov	r2, r0
  2e42a8: 9b03         	ldr	r3, [sp, #0xc]
  2e42aa: 491e         	ldr	r1, [pc, #0x78]         @ 0x2e4324 <AmmoMeter::init()+0x478>
  2e42ac: 5861         	ldr	r1, [r4, r1]
  2e42ae: 9106         	str	r1, [sp, #0x18]
  2e42b0: 2100         	movs	r1, #0x0
  2e42b2: 9107         	str	r1, [sp, #0x1c]
  2e42b4: 491c         	ldr	r1, [pc, #0x70]         @ 0x2e4328 <AmmoMeter::init()+0x47c>
  2e42b6: 4479         	add	r1, pc
  2e42b8: 9100         	str	r1, [sp]
  2e42ba: 2100         	movs	r1, #0x0
  2e42bc: 9101         	str	r1, [sp, #0x4]
  2e42be: 4610         	mov	r0, r2
  2e42c0: 4619         	mov	r1, r3
  2e42c2: ab06         	add	r3, sp, #0x18
  2e42c4: cb0c         	ldm	r3, {r2, r3}
  2e42c6: f2fc fa8f    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2fc51e
  2e42ca: f2fc f9f1    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2fc3e2
  2e42ce: 4602         	mov	r2, r0
  2e42d0: 9b03         	ldr	r3, [sp, #0xc]
  2e42d2: 4916         	ldr	r1, [pc, #0x58]         @ 0x2e432c <AmmoMeter::init()+0x480>
  2e42d4: 5861         	ldr	r1, [r4, r1]
  2e42d6: 9108         	str	r1, [sp, #0x20]
  2e42d8: 2100         	movs	r1, #0x0
  2e42da: 9109         	str	r1, [sp, #0x24]
  2e42dc: 4914         	ldr	r1, [pc, #0x50]         @ 0x2e4330 <AmmoMeter::init()+0x484>
  2e42de: 4479         	add	r1, pc
  2e42e0: 9100         	str	r1, [sp]
  2e42e2: 2100         	movs	r1, #0x0
  2e42e4: 9101         	str	r1, [sp, #0x4]
  2e42e6: 4610         	mov	r0, r2
  2e42e8: 4619         	mov	r1, r3
  2e42ea: ab08         	add	r3, sp, #0x20
  2e42ec: cb0c         	ldm	r3, {r2, r3}
  2e42ee: f2fc fa7b    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2fc4f6
  2e42f2: 2301         	movs	r3, #0x1
  2e42f4: 4618         	mov	r0, r3
  2e42f6: b00a         	add	sp, #0x28
  2e42f8: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x2e42f9); words below are literal-pool data ---
  2e42fa: bf00         	nop
  2e42fc: eb52 0064    	adcs.w	r0, r2, r4, asr #1
  2e4300: e350         	b	0x2e49a4 <AmmoMeter::updateStep(float)+0x374> @ imm = #0x6a0
  2e4302: 004d         	lsls	r5, r1, #0x1
  2e4304: e2fc         	b	0x2e4900 <AmmoMeter::updateStep(float)+0x2d0> @ imm = #0x5f8
  2e4306: 004d         	lsls	r5, r1, #0x1
  2e4308: e28c         	b	0x2e4824 <AmmoMeter::updateStep(float)+0x1f4> @ imm = #0x518
  2e430a: 004d         	lsls	r5, r1, #0x1
  2e430c: e214         	b	0x2e4738 <AmmoMeter::updateStep(float)+0x108> @ imm = #0x428
  2e430e: 004d         	lsls	r5, r1, #0x1
  2e4310: e212         	b	0x2e4738 <AmmoMeter::updateStep(float)+0x108> @ imm = #0x424
  2e4312: 004d         	lsls	r5, r1, #0x1
  2e4314: e208         	b	0x2e4728 <AmmoMeter::updateStep(float)+0xf8> @ imm = #0x410
  2e4316: 004d         	lsls	r5, r1, #0x1
  2e4318: e206         	b	0x2e4728 <AmmoMeter::updateStep(float)+0xf8> @ imm = #0x40c
  2e431a: 004d         	lsls	r5, r1, #0x1
  2e431c: e1e8         	b	0x2e46f0 <AmmoMeter::updateStep(float)+0xc0> @ imm = #0x3d0
  2e431e: 004d         	lsls	r5, r1, #0x1
  2e4320: e1e6         	b	0x2e46f0 <AmmoMeter::updateStep(float)+0xc0> @ imm = #0x3cc
  2e4322: 004d         	lsls	r5, r1, #0x1
  2e4324: d77c         	bvc	0x2e4420 <AmmoMeter::setWeaponState(int)+0x58> @ imm = #0xf8
  2e4326: ffff dfc6    	<unknown>
  2e432a: 004d         	lsls	r5, r1, #0x1
  2e432c: d780         	bvc	0x2e4230 <AmmoMeter::init()+0x384> @ imm = #-0x100
  2e432e: ffff dfae    	<unknown>
  2e4332: 004d         	lsls	r5, r1, #0x1

// ==== AmmoMeter::~AmmoMeter
//      file offset 0x2e4334 (= ELF address; Ghidra 0x2f4334), 120 bytes, Thumb-2
  2e4334: b500         	push	{lr}
  2e4336: b083         	sub	sp, #0xc
  2e4338: 9001         	str	r0, [sp, #0x4]
  2e433a: 491a         	ldr	r1, [pc, #0x68]         @ 0x2e43a4 <AmmoMeter::~AmmoMeter()+0x70>
  2e433c: 4479         	add	r1, pc
  2e433e: 9b01         	ldr	r3, [sp, #0x4]
  2e4340: 4a19         	ldr	r2, [pc, #0x64]         @ 0x2e43a8 <AmmoMeter::~AmmoMeter()+0x74>
  2e4342: 588a         	ldr	r2, [r1, r2]
  2e4344: 3208         	adds	r2, #0x8
  2e4346: 601a         	str	r2, [r3]
  2e4348: f2fc f9b2    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2fc364
  2e434c: 4602         	mov	r2, r0
  2e434e: 9b01         	ldr	r3, [sp, #0x4]
  2e4350: 4610         	mov	r0, r2
  2e4352: 4619         	mov	r1, r3
  2e4354: f2fc fae4    	bl	0x5e0920 <cocos2d::CCNotificationCenter::removeAllObservers(cocos2d::CCObject*)> @ imm = #0x2fc5c8
  2e4358: 9b01         	ldr	r3, [sp, #0x4]
  2e435a: 4618         	mov	r0, r3
  2e435c: 2101         	movs	r1, #0x1
  2e435e: f2ac f973    	bl	0x590648 <cocos2d::CCNode::removeAllChildrenWithCleanup(bool)> @ imm = #0x2ac2e6
  2e4362: 9b01         	ldr	r3, [sp, #0x4]
  2e4364: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  2e4368: 4618         	mov	r0, r3
  2e436a: f2b3 fda5    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2b3b4a
  2e436e: 9b01         	ldr	r3, [sp, #0x4]
  2e4370: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  2e4374: 4618         	mov	r0, r3
  2e4376: f2b3 fd9f    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2b3b3e
  2e437a: 9b01         	ldr	r3, [sp, #0x4]
  2e437c: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  2e4380: 4618         	mov	r0, r3
  2e4382: f2b3 fd99    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2b3b32
  2e4386: 9b01         	ldr	r3, [sp, #0x4]
  2e4388: 4618         	mov	r0, r3
  2e438a: f2ab fa5b    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x2ab4b6
  2e438e: 2300         	movs	r3, #0x0
  2e4390: 2b00         	cmp	r3, #0x0
  2e4392: d002         	beq	0x2e439a <AmmoMeter::~AmmoMeter()+0x66> @ imm = #0x4
  2e4394: 9801         	ldr	r0, [sp, #0x4]
  2e4396: f0a3 f685    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4a3d0a
  2e439a: 9b01         	ldr	r3, [sp, #0x4]
  2e439c: 4618         	mov	r0, r3
  2e439e: b003         	add	sp, #0xc
  2e43a0: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2e43a3); words below are literal-pool data ---
  2e43a4: e6cc         	b	0x2e4140 <AmmoMeter::init()+0x294> @ imm = #-0x268
  2e43a6: 0064         	lsls	r4, r4, #0x1
  2e43a8: d778         	bvc	0x2e449c <AmmoMeter::setWeaponState(int)+0xd4> @ imm = #0xf0
  2e43aa: ffff b500    	<unknown>

// ==== AmmoMeter::~AmmoMeter
//      file offset 0x2e43ac (= ELF address; Ghidra 0x2f43ac), 28 bytes, Thumb-2
  2e43ac: b500         	push	{lr}
  2e43ae: b083         	sub	sp, #0xc
  2e43b0: 9001         	str	r0, [sp, #0x4]
  2e43b2: 9801         	ldr	r0, [sp, #0x4]
  2e43b4: f7ff ffbe    	bl	0x2e4334 <AmmoMeter::~AmmoMeter()> @ imm = #-0x84
  2e43b8: 9801         	ldr	r0, [sp, #0x4]
  2e43ba: f0a3 f673    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4a3ce6
  2e43be: 9b01         	ldr	r3, [sp, #0x4]
  2e43c0: 4618         	mov	r0, r3
  2e43c2: b003         	add	sp, #0xc
  2e43c4: f85d fb04    	ldr	pc, [sp], #4

// ==== AmmoMeter::setWeaponState
//      file offset 0x2e43c8 (= ELF address; Ghidra 0x2f43c8), 616 bytes, Thumb-2
  2e43c8: b570         	push	{r4, r5, r6, lr}
  2e43ca: b086         	sub	sp, #0x18
  2e43cc: 9001         	str	r0, [sp, #0x4]
  2e43ce: 9100         	str	r1, [sp]
  2e43d0: 9b00         	ldr	r3, [sp]
  2e43d2: 2b02         	cmp	r3, #0x2
  2e43d4: d05e         	beq	0x2e4494 <AmmoMeter::setWeaponState(int)+0xcc> @ imm = #0xbc
  2e43d6: 2b03         	cmp	r3, #0x3
  2e43d8: f000 80b5    	beq.w	0x2e4546 <AmmoMeter::setWeaponState(int)+0x17e> @ imm = #0x16a
  2e43dc: 2b01         	cmp	r3, #0x1
  2e43de: f040 810d    	bne.w	0x2e45fc <AmmoMeter::setWeaponState(int)+0x234> @ imm = #0x21a
  2e43e2: 9b01         	ldr	r3, [sp, #0x4]
  2e43e4: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  2e43e8: 2b01         	cmp	r3, #0x1
  2e43ea: d052         	beq	0x2e4492 <AmmoMeter::setWeaponState(int)+0xca> @ imm = #0xa4
  2e43ec: 9b01         	ldr	r3, [sp, #0x4]
  2e43ee: 2201         	movs	r2, #0x1
  2e43f0: f8c3 2104    	str.w	r2, [r3, #0x104]
  2e43f4: 9b01         	ldr	r3, [sp, #0x4]
  2e43f6: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  2e43fa: 681b         	ldr	r3, [r3]
  2e43fc: f503 73fc    	add.w	r3, r3, #0x1f8
  2e4400: 681b         	ldr	r3, [r3]
  2e4402: 9a01         	ldr	r2, [sp, #0x4]
  2e4404: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  2e4408: 4610         	mov	r0, r2
  2e440a: 4a85         	ldr	r2, [pc, #0x214]        @ 0x2e4620 <AmmoMeter::setWeaponState(int)+0x258>
  2e440c: 447a         	add	r2, pc
  2e440e: 4611         	mov	r1, r2
  2e4410: 4798         	blx	r3
  2e4412: 9b01         	ldr	r3, [sp, #0x4]
  2e4414: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  2e4418: 681b         	ldr	r3, [r3]
  2e441a: f503 73de    	add.w	r3, r3, #0x1bc
  2e441e: 681c         	ldr	r4, [r3]
  2e4420: 9b01         	ldr	r3, [sp, #0x4]
  2e4422: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  2e4426: 461d         	mov	r5, r3
  2e4428: 20ff         	movs	r0, #0xff
  2e442a: 21ff         	movs	r1, #0xff
  2e442c: 22ff         	movs	r2, #0xff
  2e442e: f7fe fe19    	bl	0x2e3064 <AdLayer::onAd(cocos2d::CCObject*)+0x164> @ imm = #-0x13ce
  2e4432: 4603         	mov	r3, r0
  2e4434: 461a         	mov	r2, r3
  2e4436: f88d 2010    	strb.w	r2, [sp, #0x10]
  2e443a: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  2e443e: f88d 2011    	strb.w	r2, [sp, #0x11]
  2e4442: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  2e4446: f88d 3012    	strb.w	r3, [sp, #0x12]
  2e444a: ab04         	add	r3, sp, #0x10
  2e444c: 4628         	mov	r0, r5
  2e444e: 4619         	mov	r1, r3
  2e4450: 47a0         	blx	r4
  2e4452: 9b01         	ldr	r3, [sp, #0x4]
  2e4454: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  2e4458: 681b         	ldr	r3, [r3]
  2e445a: 334c         	adds	r3, #0x4c
  2e445c: 681c         	ldr	r4, [r3]
  2e445e: 9b01         	ldr	r3, [sp, #0x4]
  2e4460: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  2e4464: 461d         	mov	r5, r3
  2e4466: 9b01         	ldr	r3, [sp, #0x4]
  2e4468: f503 7684    	add.w	r6, r3, #0x108
  2e446c: ab02         	add	r3, sp, #0x8
  2e446e: 4618         	mov	r0, r3
  2e4470: f04f 0100    	mov.w	r1, #0x0
  2e4474: f04f 4282    	mov.w	r2, #0x41000000
  2e4478: f2ae fc3a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2ae874
  2e447c: aa04         	add	r2, sp, #0x10
  2e447e: ab02         	add	r3, sp, #0x8
  2e4480: 4610         	mov	r0, r2
  2e4482: 4631         	mov	r1, r6
  2e4484: 461a         	mov	r2, r3
  2e4486: f7fe fe1b    	bl	0x2e30c0 <AdLayer::onAd(cocos2d::CCObject*)+0x1c0> @ imm = #-0x13ca
  2e448a: ab04         	add	r3, sp, #0x10
  2e448c: 4628         	mov	r0, r5
  2e448e: 4619         	mov	r1, r3
  2e4490: 47a0         	blx	r4
  2e4492: e0c3         	b	0x2e461c <AmmoMeter::setWeaponState(int)+0x254> @ imm = #0x186
  2e4494: 9b01         	ldr	r3, [sp, #0x4]
  2e4496: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  2e449a: 2b02         	cmp	r3, #0x2
  2e449c: d052         	beq	0x2e4544 <AmmoMeter::setWeaponState(int)+0x17c> @ imm = #0xa4
  2e449e: 9b01         	ldr	r3, [sp, #0x4]
  2e44a0: 2202         	movs	r2, #0x2
  2e44a2: f8c3 2104    	str.w	r2, [r3, #0x104]
  2e44a6: 9b01         	ldr	r3, [sp, #0x4]
  2e44a8: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  2e44ac: 681b         	ldr	r3, [r3]
  2e44ae: f503 73fc    	add.w	r3, r3, #0x1f8
  2e44b2: 681b         	ldr	r3, [r3]
  2e44b4: 9a01         	ldr	r2, [sp, #0x4]
  2e44b6: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  2e44ba: 4610         	mov	r0, r2
  2e44bc: 4a59         	ldr	r2, [pc, #0x164]        @ 0x2e4624 <AmmoMeter::setWeaponState(int)+0x25c>
  2e44be: 447a         	add	r2, pc
  2e44c0: 4611         	mov	r1, r2
  2e44c2: 4798         	blx	r3
  2e44c4: 9b01         	ldr	r3, [sp, #0x4]
  2e44c6: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  2e44ca: 681b         	ldr	r3, [r3]
  2e44cc: f503 73de    	add.w	r3, r3, #0x1bc
  2e44d0: 681c         	ldr	r4, [r3]
  2e44d2: 9b01         	ldr	r3, [sp, #0x4]
  2e44d4: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  2e44d8: 461d         	mov	r5, r3
  2e44da: 20f5         	movs	r0, #0xf5
  2e44dc: 2100         	movs	r1, #0x0
  2e44de: 2200         	movs	r2, #0x0
  2e44e0: f7fe fdc0    	bl	0x2e3064 <AdLayer::onAd(cocos2d::CCObject*)+0x164> @ imm = #-0x1480
  2e44e4: 4603         	mov	r3, r0
  2e44e6: 461a         	mov	r2, r3
  2e44e8: f88d 2010    	strb.w	r2, [sp, #0x10]
  2e44ec: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  2e44f0: f88d 2011    	strb.w	r2, [sp, #0x11]
  2e44f4: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  2e44f8: f88d 3012    	strb.w	r3, [sp, #0x12]
  2e44fc: ab04         	add	r3, sp, #0x10
  2e44fe: 4628         	mov	r0, r5
  2e4500: 4619         	mov	r1, r3
  2e4502: 47a0         	blx	r4
  2e4504: 9b01         	ldr	r3, [sp, #0x4]
  2e4506: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  2e450a: 681b         	ldr	r3, [r3]
  2e450c: 334c         	adds	r3, #0x4c
  2e450e: 681c         	ldr	r4, [r3]
  2e4510: 9b01         	ldr	r3, [sp, #0x4]
  2e4512: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  2e4516: 461d         	mov	r5, r3
  2e4518: 9b01         	ldr	r3, [sp, #0x4]
  2e451a: f503 7684    	add.w	r6, r3, #0x108
  2e451e: ab02         	add	r3, sp, #0x8
  2e4520: 4618         	mov	r0, r3
  2e4522: f04f 4140    	mov.w	r1, #0xc0000000
  2e4526: f04f 4282    	mov.w	r2, #0x41000000
  2e452a: f2ae fbe1    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2ae7c2
  2e452e: aa04         	add	r2, sp, #0x10
  2e4530: ab02         	add	r3, sp, #0x8
  2e4532: 4610         	mov	r0, r2
  2e4534: 4631         	mov	r1, r6
  2e4536: 461a         	mov	r2, r3
  2e4538: f7fe fdc2    	bl	0x2e30c0 <AdLayer::onAd(cocos2d::CCObject*)+0x1c0> @ imm = #-0x147c
  2e453c: ab04         	add	r3, sp, #0x10
  2e453e: 4628         	mov	r0, r5
  2e4540: 4619         	mov	r1, r3
  2e4542: 47a0         	blx	r4
  2e4544: e06a         	b	0x2e461c <AmmoMeter::setWeaponState(int)+0x254> @ imm = #0xd4
  2e4546: 9b01         	ldr	r3, [sp, #0x4]
  2e4548: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  2e454c: 2b03         	cmp	r3, #0x3
  2e454e: d054         	beq	0x2e45fa <AmmoMeter::setWeaponState(int)+0x232> @ imm = #0xa8
  2e4550: 9b01         	ldr	r3, [sp, #0x4]
  2e4552: 2203         	movs	r2, #0x3
  2e4554: f8c3 2104    	str.w	r2, [r3, #0x104]
  2e4558: 9b01         	ldr	r3, [sp, #0x4]
  2e455a: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  2e455e: 681b         	ldr	r3, [r3]
  2e4560: f503 73fc    	add.w	r3, r3, #0x1f8
  2e4564: 681b         	ldr	r3, [r3]
  2e4566: 9a01         	ldr	r2, [sp, #0x4]
  2e4568: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  2e456c: 4610         	mov	r0, r2
  2e456e: 4a2e         	ldr	r2, [pc, #0xb8]         @ 0x2e4628 <AmmoMeter::setWeaponState(int)+0x260>
  2e4570: 447a         	add	r2, pc
  2e4572: 4611         	mov	r1, r2
  2e4574: 4798         	blx	r3
  2e4576: 9b01         	ldr	r3, [sp, #0x4]
  2e4578: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  2e457c: 681b         	ldr	r3, [r3]
  2e457e: f503 73de    	add.w	r3, r3, #0x1bc
  2e4582: 681c         	ldr	r4, [r3]
  2e4584: 9b01         	ldr	r3, [sp, #0x4]
  2e4586: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  2e458a: 461d         	mov	r5, r3
  2e458c: 20f5         	movs	r0, #0xf5
  2e458e: 21f5         	movs	r1, #0xf5
  2e4590: 2200         	movs	r2, #0x0
  2e4592: f7fe fd67    	bl	0x2e3064 <AdLayer::onAd(cocos2d::CCObject*)+0x164> @ imm = #-0x1532
  2e4596: 4603         	mov	r3, r0
  2e4598: 461a         	mov	r2, r3
  2e459a: f88d 2010    	strb.w	r2, [sp, #0x10]
  2e459e: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  2e45a2: f88d 2011    	strb.w	r2, [sp, #0x11]
  2e45a6: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  2e45aa: f88d 3012    	strb.w	r3, [sp, #0x12]
  2e45ae: ab04         	add	r3, sp, #0x10
  2e45b0: 4628         	mov	r0, r5
  2e45b2: 4619         	mov	r1, r3
  2e45b4: 47a0         	blx	r4
  2e45b6: 9b01         	ldr	r3, [sp, #0x4]
  2e45b8: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  2e45bc: 681b         	ldr	r3, [r3]
  2e45be: 334c         	adds	r3, #0x4c
  2e45c0: 681c         	ldr	r4, [r3]
  2e45c2: 9b01         	ldr	r3, [sp, #0x4]
  2e45c4: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  2e45c8: 461d         	mov	r5, r3
  2e45ca: 9b01         	ldr	r3, [sp, #0x4]
  2e45cc: f503 7684    	add.w	r6, r3, #0x108
  2e45d0: ab02         	add	r3, sp, #0x8
  2e45d2: 4618         	mov	r0, r3
  2e45d4: f04f 0100    	mov.w	r1, #0x0
  2e45d8: f6cb 7180    	movt	r1, #0xbf80
  2e45dc: f04f 4282    	mov.w	r2, #0x41000000
  2e45e0: f2ae fb86    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2ae70c
  2e45e4: aa04         	add	r2, sp, #0x10
  2e45e6: ab02         	add	r3, sp, #0x8
  2e45e8: 4610         	mov	r0, r2
  2e45ea: 4631         	mov	r1, r6
  2e45ec: 461a         	mov	r2, r3
  2e45ee: f7fe fd67    	bl	0x2e30c0 <AdLayer::onAd(cocos2d::CCObject*)+0x1c0> @ imm = #-0x1532
  2e45f2: ab04         	add	r3, sp, #0x10
  2e45f4: 4628         	mov	r0, r5
  2e45f6: 4619         	mov	r1, r3
  2e45f8: 47a0         	blx	r4
  2e45fa: e00f         	b	0x2e461c <AmmoMeter::setWeaponState(int)+0x254> @ imm = #0x1e
  2e45fc: 9b01         	ldr	r3, [sp, #0x4]
  2e45fe: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  2e4602: 681b         	ldr	r3, [r3]
  2e4604: f503 73fc    	add.w	r3, r3, #0x1f8
  2e4608: 681b         	ldr	r3, [r3]
  2e460a: 9a01         	ldr	r2, [sp, #0x4]
  2e460c: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  2e4610: 4610         	mov	r0, r2
  2e4612: 4a06         	ldr	r2, [pc, #0x18]         @ 0x2e462c <AmmoMeter::setWeaponState(int)+0x264>
  2e4614: 447a         	add	r2, pc
  2e4616: 4611         	mov	r1, r2
  2e4618: 4798         	blx	r3
  2e461a: bf00         	nop
  2e461c: b006         	add	sp, #0x18
  2e461e: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x2e461f); words below are literal-pool data ---
  2e4620: de90         	udf	#0x90
  2e4622: 004d         	lsls	r5, r1, #0x1
  2e4624: ddea         	ble	0x2e45fc <AmmoMeter::setWeaponState(int)+0x234> @ imm = #-0x2c
  2e4626: 004d         	lsls	r5, r1, #0x1
  2e4628: dd40         	ble	0x2e46ac <AmmoMeter::updateStep(float)+0x7c> @ imm = #0x80
  2e462a: 004d         	lsls	r5, r1, #0x1
  2e462c: dc3c         	bgt	0x2e46a8 <AmmoMeter::updateStep(float)+0x78> @ imm = #0x78
  2e462e: 004d         	lsls	r5, r1, #0x1

// ==== AmmoMeter::updateStep
//      file offset 0x2e4630 (= ELF address; Ghidra 0x2f4630), 952 bytes, Thumb-2
  2e4630: b570         	push	{r4, r5, r6, lr}
  2e4632: b08c         	sub	sp, #0x30
  2e4634: 9001         	str	r0, [sp, #0x4]
  2e4636: 9100         	str	r1, [sp]
  2e4638: 4ce3         	ldr	r4, [pc, #0x38c]        @ 0x2e49c8 <AmmoMeter::updateStep(float)+0x398>
  2e463a: 447c         	add	r4, pc
  2e463c: 9b01         	ldr	r3, [sp, #0x4]
  2e463e: ed93 7a40    	vldr	s14, [r3, #256]
  2e4642: eddd 7a00    	vldr	s15, [sp]
  2e4646: ee77 7a27    	vadd.f32	s15, s14, s15
  2e464a: 9b01         	ldr	r3, [sp, #0x4]
  2e464c: edc3 7a40    	vstr	s15, [r3, #256]
  2e4650: 4bde         	ldr	r3, [pc, #0x378]        @ 0x2e49cc <AmmoMeter::updateStep(float)+0x39c>
  2e4652: 58e3         	ldr	r3, [r4, r3]
  2e4654: 681b         	ldr	r3, [r3]
  2e4656: 681b         	ldr	r3, [r3]
  2e4658: f503 7319    	add.w	r3, r3, #0x264
  2e465c: 681b         	ldr	r3, [r3]
  2e465e: 4adb         	ldr	r2, [pc, #0x36c]        @ 0x2e49cc <AmmoMeter::updateStep(float)+0x39c>
  2e4660: 58a2         	ldr	r2, [r4, r2]
  2e4662: 6812         	ldr	r2, [r2]
  2e4664: 4610         	mov	r0, r2
  2e4666: 4798         	blx	r3
  2e4668: 4603         	mov	r3, r0
  2e466a: f083 0301    	eor	r3, r3, #0x1
  2e466e: b2db         	uxtb	r3, r3
  2e4670: 2b00         	cmp	r3, #0x0
  2e4672: d006         	beq	0x2e4682 <AmmoMeter::updateStep(float)+0x52> @ imm = #0xc
  2e4674: 9b01         	ldr	r3, [sp, #0x4]
  2e4676: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  2e467a: 2b00         	cmp	r3, #0x0
  2e467c: d001         	beq	0x2e4682 <AmmoMeter::updateStep(float)+0x52> @ imm = #0x2
  2e467e: 2301         	movs	r3, #0x1
  2e4680: e000         	b	0x2e4684 <AmmoMeter::updateStep(float)+0x54> @ imm = #0x0
  2e4682: 2300         	movs	r3, #0x0
  2e4684: 2b00         	cmp	r3, #0x0
  2e4686: f000 80bd    	beq.w	0x2e4804 <AmmoMeter::updateStep(float)+0x1d4> @ imm = #0x17a
  2e468a: 9b01         	ldr	r3, [sp, #0x4]
  2e468c: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  2e4690: 681b         	ldr	r3, [r3]
  2e4692: f503 7321    	add.w	r3, r3, #0x284
  2e4696: 681b         	ldr	r3, [r3]
  2e4698: 9a01         	ldr	r2, [sp, #0x4]
  2e469a: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  2e469e: 4610         	mov	r0, r2
  2e46a0: 4798         	blx	r3
  2e46a2: 4603         	mov	r3, r0
  2e46a4: b29b         	uxth	r3, r3
  2e46a6: b21b         	sxth	r3, r3
  2e46a8: 9303         	str	r3, [sp, #0xc]
  2e46aa: 9b01         	ldr	r3, [sp, #0x4]
  2e46ac: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  2e46b0: 681b         	ldr	r3, [r3]
  2e46b2: f503 731d    	add.w	r3, r3, #0x274
  2e46b6: 681b         	ldr	r3, [r3]
  2e46b8: 9a01         	ldr	r2, [sp, #0x4]
  2e46ba: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  2e46be: 4610         	mov	r0, r2
  2e46c0: 4798         	blx	r3
  2e46c2: 4603         	mov	r3, r0
  2e46c4: b29b         	uxth	r3, r3
  2e46c6: b21b         	sxth	r3, r3
  2e46c8: 9304         	str	r3, [sp, #0x10]
  2e46ca: 9a03         	ldr	r2, [sp, #0xc]
  2e46cc: f248 531f    	movw	r3, #0x851f
  2e46d0: f2c5 13eb    	movt	r3, #0x51eb
  2e46d4: fb83 1302    	smull	r1, r3, r3, r2
  2e46d8: 1159         	asrs	r1, r3, #0x5
  2e46da: 17d3         	asrs	r3, r2, #0x1f
  2e46dc: 1acb         	subs	r3, r1, r3
  2e46de: 9305         	str	r3, [sp, #0x14]
  2e46e0: 9a03         	ldr	r2, [sp, #0xc]
  2e46e2: f246 6367    	movw	r3, #0x6667
  2e46e6: f2c6 6366    	movt	r3, #0x6666
  2e46ea: fb83 1302    	smull	r1, r3, r3, r2
  2e46ee: 1099         	asrs	r1, r3, #0x2
  2e46f0: 17d3         	asrs	r3, r2, #0x1f
  2e46f2: 1aca         	subs	r2, r1, r3
  2e46f4: f246 6367    	movw	r3, #0x6667
  2e46f8: f2c6 6366    	movt	r3, #0x6666
  2e46fc: fb83 1302    	smull	r1, r3, r3, r2
  2e4700: 1099         	asrs	r1, r3, #0x2
  2e4702: 17d3         	asrs	r3, r2, #0x1f
  2e4704: 1ac9         	subs	r1, r1, r3
  2e4706: 460b         	mov	r3, r1
  2e4708: 009b         	lsls	r3, r3, #0x2
  2e470a: 440b         	add	r3, r1
  2e470c: 005b         	lsls	r3, r3, #0x1
  2e470e: 1ad3         	subs	r3, r2, r3
  2e4710: 9306         	str	r3, [sp, #0x18]
  2e4712: 9a03         	ldr	r2, [sp, #0xc]
  2e4714: f246 6367    	movw	r3, #0x6667
  2e4718: f2c6 6366    	movt	r3, #0x6666
  2e471c: fb83 1302    	smull	r1, r3, r3, r2
  2e4720: 1099         	asrs	r1, r3, #0x2
  2e4722: 17d3         	asrs	r3, r2, #0x1f
  2e4724: 1ac9         	subs	r1, r1, r3
  2e4726: 460b         	mov	r3, r1
  2e4728: 009b         	lsls	r3, r3, #0x2
  2e472a: 440b         	add	r3, r1
  2e472c: 005b         	lsls	r3, r3, #0x1
  2e472e: 1ad3         	subs	r3, r2, r3
  2e4730: 9307         	str	r3, [sp, #0x1c]
  2e4732: 9a04         	ldr	r2, [sp, #0x10]
  2e4734: f248 531f    	movw	r3, #0x851f
  2e4738: f2c5 13eb    	movt	r3, #0x51eb
  2e473c: fb83 1302    	smull	r1, r3, r3, r2
  2e4740: 1159         	asrs	r1, r3, #0x5
  2e4742: 17d3         	asrs	r3, r2, #0x1f
  2e4744: 1acb         	subs	r3, r1, r3
  2e4746: 9308         	str	r3, [sp, #0x20]
  2e4748: 9a04         	ldr	r2, [sp, #0x10]
  2e474a: f246 6367    	movw	r3, #0x6667
  2e474e: f2c6 6366    	movt	r3, #0x6666
  2e4752: fb83 1302    	smull	r1, r3, r3, r2
  2e4756: 1099         	asrs	r1, r3, #0x2
  2e4758: 17d3         	asrs	r3, r2, #0x1f
  2e475a: 1aca         	subs	r2, r1, r3
  2e475c: f246 6367    	movw	r3, #0x6667
  2e4760: f2c6 6366    	movt	r3, #0x6666
  2e4764: fb83 1302    	smull	r1, r3, r3, r2
  2e4768: 1099         	asrs	r1, r3, #0x2
  2e476a: 17d3         	asrs	r3, r2, #0x1f
  2e476c: 1ac9         	subs	r1, r1, r3
  2e476e: 460b         	mov	r3, r1
  2e4770: 009b         	lsls	r3, r3, #0x2
  2e4772: 440b         	add	r3, r1
  2e4774: 005b         	lsls	r3, r3, #0x1
  2e4776: 1ad3         	subs	r3, r2, r3
  2e4778: 9309         	str	r3, [sp, #0x24]
  2e477a: 9a04         	ldr	r2, [sp, #0x10]
  2e477c: f246 6367    	movw	r3, #0x6667
  2e4780: f2c6 6366    	movt	r3, #0x6666
  2e4784: fb83 1302    	smull	r1, r3, r3, r2
  2e4788: 1099         	asrs	r1, r3, #0x2
  2e478a: 17d3         	asrs	r3, r2, #0x1f
  2e478c: 1ac9         	subs	r1, r1, r3
  2e478e: 460b         	mov	r3, r1
  2e4790: 009b         	lsls	r3, r3, #0x2
  2e4792: 440b         	add	r3, r1
  2e4794: 005b         	lsls	r3, r3, #0x1
  2e4796: 1ad3         	subs	r3, r2, r3
  2e4798: 930a         	str	r3, [sp, #0x28]
  2e479a: 9b01         	ldr	r3, [sp, #0x4]
  2e479c: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  2e47a0: 681b         	ldr	r3, [r3]
  2e47a2: f503 73fc    	add.w	r3, r3, #0x1f8
  2e47a6: 681d         	ldr	r5, [r3]
  2e47a8: 9b01         	ldr	r3, [sp, #0x4]
  2e47aa: f8d3 60f4    	ldr.w	r6, [r3, #0xf4]
  2e47ae: 4b88         	ldr	r3, [pc, #0x220]        @ 0x2e49d0 <AmmoMeter::updateStep(float)+0x3a0>
  2e47b0: 447b         	add	r3, pc
  2e47b2: 4618         	mov	r0, r3
  2e47b4: 9905         	ldr	r1, [sp, #0x14]
  2e47b6: 9a06         	ldr	r2, [sp, #0x18]
  2e47b8: 9b07         	ldr	r3, [sp, #0x1c]
  2e47ba: f2b5 f9a9    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x2b5352
  2e47be: 4603         	mov	r3, r0
  2e47c0: 4618         	mov	r0, r3
  2e47c2: f2b5 f8b1    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2b5162
  2e47c6: 4603         	mov	r3, r0
  2e47c8: 4630         	mov	r0, r6
  2e47ca: 4619         	mov	r1, r3
  2e47cc: 47a8         	blx	r5
  2e47ce: 9b01         	ldr	r3, [sp, #0x4]
  2e47d0: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  2e47d4: 681b         	ldr	r3, [r3]
  2e47d6: f503 73fc    	add.w	r3, r3, #0x1f8
  2e47da: 681d         	ldr	r5, [r3]
  2e47dc: 9b01         	ldr	r3, [sp, #0x4]
  2e47de: f8d3 60f8    	ldr.w	r6, [r3, #0xf8]
  2e47e2: 4b7c         	ldr	r3, [pc, #0x1f0]        @ 0x2e49d4 <AmmoMeter::updateStep(float)+0x3a4>
  2e47e4: 447b         	add	r3, pc
  2e47e6: 4618         	mov	r0, r3
  2e47e8: 9908         	ldr	r1, [sp, #0x20]
  2e47ea: 9a09         	ldr	r2, [sp, #0x24]
  2e47ec: 9b0a         	ldr	r3, [sp, #0x28]
  2e47ee: f2b5 f98f    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x2b531e
  2e47f2: 4603         	mov	r3, r0
  2e47f4: 4618         	mov	r0, r3
  2e47f6: f2b5 f897    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2b512e
  2e47fa: 4603         	mov	r3, r0
  2e47fc: 4630         	mov	r0, r6
  2e47fe: 4619         	mov	r1, r3
  2e4800: 47a8         	blx	r5
  2e4802: e01d         	b	0x2e4840 <AmmoMeter::updateStep(float)+0x210> @ imm = #0x3a
  2e4804: 9b01         	ldr	r3, [sp, #0x4]
  2e4806: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  2e480a: 681b         	ldr	r3, [r3]
  2e480c: f503 73fc    	add.w	r3, r3, #0x1f8
  2e4810: 681b         	ldr	r3, [r3]
  2e4812: 9a01         	ldr	r2, [sp, #0x4]
  2e4814: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  2e4818: 4610         	mov	r0, r2
  2e481a: 4a6f         	ldr	r2, [pc, #0x1bc]        @ 0x2e49d8 <AmmoMeter::updateStep(float)+0x3a8>
  2e481c: 447a         	add	r2, pc
  2e481e: 4611         	mov	r1, r2
  2e4820: 4798         	blx	r3
  2e4822: 9b01         	ldr	r3, [sp, #0x4]
  2e4824: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  2e4828: 681b         	ldr	r3, [r3]
  2e482a: f503 73fc    	add.w	r3, r3, #0x1f8
  2e482e: 681b         	ldr	r3, [r3]
  2e4830: 9a01         	ldr	r2, [sp, #0x4]
  2e4832: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  2e4836: 4610         	mov	r0, r2
  2e4838: 4a68         	ldr	r2, [pc, #0x1a0]        @ 0x2e49dc <AmmoMeter::updateStep(float)+0x3ac>
  2e483a: 447a         	add	r2, pc
  2e483c: 4611         	mov	r1, r2
  2e483e: 4798         	blx	r3
  2e4840: 4b62         	ldr	r3, [pc, #0x188]        @ 0x2e49cc <AmmoMeter::updateStep(float)+0x39c>
  2e4842: 58e3         	ldr	r3, [r4, r3]
  2e4844: 681b         	ldr	r3, [r3]
  2e4846: 681b         	ldr	r3, [r3]
  2e4848: f503 73fa    	add.w	r3, r3, #0x1f4
  2e484c: 681b         	ldr	r3, [r3]
  2e484e: 4a5f         	ldr	r2, [pc, #0x17c]        @ 0x2e49cc <AmmoMeter::updateStep(float)+0x39c>
  2e4850: 58a2         	ldr	r2, [r4, r2]
  2e4852: 6812         	ldr	r2, [r2]
  2e4854: 4610         	mov	r0, r2
  2e4856: 4798         	blx	r3
  2e4858: 4603         	mov	r3, r0
  2e485a: 930b         	str	r3, [sp, #0x2c]
  2e485c: 9b0b         	ldr	r3, [sp, #0x2c]
  2e485e: 2b00         	cmp	r3, #0x0
  2e4860: d05c         	beq	0x2e491c <AmmoMeter::updateStep(float)+0x2ec> @ imm = #0xb8
  2e4862: 9b01         	ldr	r3, [sp, #0x4]
  2e4864: ed93 7a40    	vldr	s14, [r3, #256]
  2e4868: eef5 7a00    	vmov.f32	s15, #2.500000e-01
  2e486c: eeb4 7ae7    	vcmpe.f32	s14, s15
  2e4870: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  2e4874: d552         	bpl	0x2e491c <AmmoMeter::updateStep(float)+0x2ec> @ imm = #0xa4
  2e4876: 9b0b         	ldr	r3, [sp, #0x2c]
  2e4878: 681b         	ldr	r3, [r3]
  2e487a: f503 7333    	add.w	r3, r3, #0x2cc
  2e487e: 681b         	ldr	r3, [r3]
  2e4880: 980b         	ldr	r0, [sp, #0x2c]
  2e4882: 4798         	blx	r3
  2e4884: 4603         	mov	r3, r0
  2e4886: 2b00         	cmp	r3, #0x0
  2e4888: d010         	beq	0x2e48ac <AmmoMeter::updateStep(float)+0x27c> @ imm = #0x20
  2e488a: 9b01         	ldr	r3, [sp, #0x4]
  2e488c: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  2e4890: 681b         	ldr	r3, [r3]
  2e4892: 3390         	adds	r3, #0x90
  2e4894: 681b         	ldr	r3, [r3]
  2e4896: 9a01         	ldr	r2, [sp, #0x4]
  2e4898: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  2e489c: 4610         	mov	r0, r2
  2e489e: 2101         	movs	r1, #0x1
  2e48a0: 4798         	blx	r3
  2e48a2: 9801         	ldr	r0, [sp, #0x4]
  2e48a4: 2101         	movs	r1, #0x1
  2e48a6: f7ff fd8f    	bl	0x2e43c8 <AmmoMeter::setWeaponState(int)> @ imm = #-0x4e2
  2e48aa: e036         	b	0x2e491a <AmmoMeter::updateStep(float)+0x2ea> @ imm = #0x6c
  2e48ac: 9b0b         	ldr	r3, [sp, #0x2c]
  2e48ae: 681b         	ldr	r3, [r3]
  2e48b0: f503 731d    	add.w	r3, r3, #0x274
  2e48b4: 681b         	ldr	r3, [r3]
  2e48b6: 980b         	ldr	r0, [sp, #0x2c]
  2e48b8: 4798         	blx	r3
  2e48ba: 4603         	mov	r3, r0
  2e48bc: b29b         	uxth	r3, r3
  2e48be: b21b         	sxth	r3, r3
  2e48c0: 2b00         	cmp	r3, #0x0
  2e48c2: bf14         	ite	ne
  2e48c4: 2300         	movne	r3, #0x0
  2e48c6: 2301         	moveq	r3, #0x1
  2e48c8: b2db         	uxtb	r3, r3
  2e48ca: 2b00         	cmp	r3, #0x0
  2e48cc: d025         	beq	0x2e491a <AmmoMeter::updateStep(float)+0x2ea> @ imm = #0x4a
  2e48ce: 9b0b         	ldr	r3, [sp, #0x2c]
  2e48d0: 681b         	ldr	r3, [r3]
  2e48d2: f503 7321    	add.w	r3, r3, #0x284
  2e48d6: 681b         	ldr	r3, [r3]
  2e48d8: 980b         	ldr	r0, [sp, #0x2c]
  2e48da: 4798         	blx	r3
  2e48dc: 4603         	mov	r3, r0
  2e48de: b29b         	uxth	r3, r3
  2e48e0: b21b         	sxth	r3, r3
  2e48e2: 2b00         	cmp	r3, #0x0
  2e48e4: bf14         	ite	ne
  2e48e6: 2300         	movne	r3, #0x0
  2e48e8: 2301         	moveq	r3, #0x1
  2e48ea: b2db         	uxtb	r3, r3
  2e48ec: 2b00         	cmp	r3, #0x0
  2e48ee: d004         	beq	0x2e48fa <AmmoMeter::updateStep(float)+0x2ca> @ imm = #0x8
  2e48f0: 9801         	ldr	r0, [sp, #0x4]
  2e48f2: 2102         	movs	r1, #0x2
  2e48f4: f7ff fd68    	bl	0x2e43c8 <AmmoMeter::setWeaponState(int)> @ imm = #-0x530
  2e48f8: e003         	b	0x2e4902 <AmmoMeter::updateStep(float)+0x2d2> @ imm = #0x6
  2e48fa: 9801         	ldr	r0, [sp, #0x4]
  2e48fc: 2103         	movs	r1, #0x3
  2e48fe: f7ff fd63    	bl	0x2e43c8 <AmmoMeter::setWeaponState(int)> @ imm = #-0x53a
  2e4902: 9b01         	ldr	r3, [sp, #0x4]
  2e4904: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  2e4908: 681b         	ldr	r3, [r3]
  2e490a: 3390         	adds	r3, #0x90
  2e490c: 681b         	ldr	r3, [r3]
  2e490e: 9a01         	ldr	r2, [sp, #0x4]
  2e4910: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  2e4914: 4610         	mov	r0, r2
  2e4916: 2101         	movs	r1, #0x1
  2e4918: 4798         	blx	r3
  2e491a: e00b         	b	0x2e4934 <AmmoMeter::updateStep(float)+0x304> @ imm = #0x16
  2e491c: 9b01         	ldr	r3, [sp, #0x4]
  2e491e: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  2e4922: 681b         	ldr	r3, [r3]
  2e4924: 3390         	adds	r3, #0x90
  2e4926: 681b         	ldr	r3, [r3]
  2e4928: 9a01         	ldr	r2, [sp, #0x4]
  2e492a: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  2e492e: 4610         	mov	r0, r2
  2e4930: 2100         	movs	r1, #0x0
  2e4932: 4798         	blx	r3
  2e4934: 9b0b         	ldr	r3, [sp, #0x2c]
  2e4936: 2b00         	cmp	r3, #0x0
  2e4938: d00b         	beq	0x2e4952 <AmmoMeter::updateStep(float)+0x322> @ imm = #0x16
  2e493a: 9b0b         	ldr	r3, [sp, #0x2c]
  2e493c: 681b         	ldr	r3, [r3]
  2e493e: f503 7337    	add.w	r3, r3, #0x2dc
  2e4942: 681b         	ldr	r3, [r3]
  2e4944: 980b         	ldr	r0, [sp, #0x2c]
  2e4946: 4798         	blx	r3
  2e4948: 4603         	mov	r3, r0
  2e494a: 2b00         	cmp	r3, #0x0
  2e494c: d001         	beq	0x2e4952 <AmmoMeter::updateStep(float)+0x322> @ imm = #0x2
  2e494e: 2301         	movs	r3, #0x1
  2e4950: e000         	b	0x2e4954 <AmmoMeter::updateStep(float)+0x324> @ imm = #0x0
  2e4952: 2300         	movs	r3, #0x0
  2e4954: 2b00         	cmp	r3, #0x0
  2e4956: d01d         	beq	0x2e4994 <AmmoMeter::updateStep(float)+0x364> @ imm = #0x3a
  2e4958: 9b01         	ldr	r3, [sp, #0x4]
  2e495a: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  2e495e: 681b         	ldr	r3, [r3]
  2e4960: f503 73fc    	add.w	r3, r3, #0x1f8
  2e4964: 681b         	ldr	r3, [r3]
  2e4966: 9a01         	ldr	r2, [sp, #0x4]
  2e4968: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  2e496c: 4610         	mov	r0, r2
  2e496e: 4a1c         	ldr	r2, [pc, #0x70]         @ 0x2e49e0 <AmmoMeter::updateStep(float)+0x3b0>
  2e4970: 447a         	add	r2, pc
  2e4972: 4611         	mov	r1, r2
  2e4974: 4798         	blx	r3
  2e4976: 9b01         	ldr	r3, [sp, #0x4]
  2e4978: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  2e497c: 681b         	ldr	r3, [r3]
  2e497e: f503 73fc    	add.w	r3, r3, #0x1f8
  2e4982: 681b         	ldr	r3, [r3]
  2e4984: 9a01         	ldr	r2, [sp, #0x4]
  2e4986: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  2e498a: 4610         	mov	r0, r2
  2e498c: 4a15         	ldr	r2, [pc, #0x54]         @ 0x2e49e4 <AmmoMeter::updateStep(float)+0x3b4>
  2e498e: 447a         	add	r2, pc
  2e4990: 4611         	mov	r1, r2
  2e4992: 4798         	blx	r3
  2e4994: 9b01         	ldr	r3, [sp, #0x4]
  2e4996: edd3 7a40    	vldr	s15, [r3, #256]
  2e499a: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  2e499e: ed9f 7b08    	vldr	d7, [pc, #32]           @ 0x2e49c0 <AmmoMeter::updateStep(float)+0x390>
  2e49a2: eeb4 6bc7    	vcmpe.f64	d6, d7
  2e49a6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  2e49aa: dd04         	ble	0x2e49b6 <AmmoMeter::updateStep(float)+0x386> @ imm = #0x8
  2e49ac: 9b01         	ldr	r3, [sp, #0x4]
  2e49ae: f04f 0200    	mov.w	r2, #0x0
  2e49b2: f8c3 2100    	str.w	r2, [r3, #0x100]
  2e49b6: b00c         	add	sp, #0x30
  2e49b8: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x2e49b9); words below are literal-pool data ---
  2e49ba: bf00         	nop
  2e49bc: f3af 8000    	nop.w
  2e49c0: 999a         	ldr	r1, [sp, #0x268]
  2e49c2: 9999         	ldr	r1, [sp, #0x264]
  2e49c4: 9999         	ldr	r1, [sp, #0x264]
  2e49c6: 3fd9         	subs	r7, #0xd9
  2e49c8: e3ce         	b	0x2e5168 <cocos2d::CCInteger::acceptVisitor(cocos2d::CCDataVisitor&)+0x428> @ imm = #0x79c
  2e49ca: 0064         	lsls	r4, r4, #0x1
  2e49cc: d784         	bvc	0x2e48d8 <AmmoMeter::updateStep(float)+0x2a8> @ imm = #-0xf8
  2e49ce: ffff db0c    	vtbl.8	d29, {d15, d16, d17, d18}, d12
  2e49d2: 004d         	lsls	r5, r1, #0x1
  2e49d4: dad8         	bge	0x2e4988 <AmmoMeter::updateStep(float)+0x358> @ imm = #-0x50
  2e49d6: 004d         	lsls	r5, r1, #0x1
  2e49d8: da48         	bge	0x2e4a6c <AmmoMeter::setGrenade(Weapon*)+0x84> @ imm = #0x90
  2e49da: 004d         	lsls	r5, r1, #0x1
  2e49dc: da2a         	bge	0x2e4a34 <AmmoMeter::setGrenade(Weapon*)+0x4c> @ imm = #0x54
  2e49de: 004d         	lsls	r5, r1, #0x1
  2e49e0: d8e0         	bhi	0x2e49a4 <AmmoMeter::updateStep(float)+0x374> @ imm = #-0x40
  2e49e2: 004d         	lsls	r5, r1, #0x1
  2e49e4: d8c2         	bhi	0x2e496c <AmmoMeter::updateStep(float)+0x33c> @ imm = #-0x7c
  2e49e6: 004d         	lsls	r5, r1, #0x1

// ==== AmmoMeter::setGrenade
//      file offset 0x2e49e8 (= ELF address; Ghidra 0x2f49e8), 156 bytes, Thumb-2
  2e49e8: b530         	push	{r4, r5, lr}
  2e49ea: b087         	sub	sp, #0x1c
  2e49ec: 9001         	str	r0, [sp, #0x4]
  2e49ee: 9100         	str	r1, [sp]
  2e49f0: 9b00         	ldr	r3, [sp]
  2e49f2: 2b00         	cmp	r3, #0x0
  2e49f4: d038         	beq	0x2e4a68 <AmmoMeter::setGrenade(Weapon*)+0x80> @ imm = #0x70
  2e49f6: 9b01         	ldr	r3, [sp, #0x4]
  2e49f8: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  2e49fc: 681b         	ldr	r3, [r3]
  2e49fe: f503 73f8    	add.w	r3, r3, #0x1f0
  2e4a02: 681c         	ldr	r4, [r3]
  2e4a04: 9b01         	ldr	r3, [sp, #0x4]
  2e4a06: f8d3 50ec    	ldr.w	r5, [r3, #0xec]
  2e4a0a: 9b00         	ldr	r3, [sp]
  2e4a0c: 681b         	ldr	r3, [r3]
  2e4a0e: f503 731b    	add.w	r3, r3, #0x26c
  2e4a12: 681b         	ldr	r3, [r3]
  2e4a14: 9800         	ldr	r0, [sp]
  2e4a16: 4798         	blx	r3
  2e4a18: 4603         	mov	r3, r0
  2e4a1a: 4628         	mov	r0, r5
  2e4a1c: 4619         	mov	r1, r3
  2e4a1e: 47a0         	blx	r4
  2e4a20: 9b01         	ldr	r3, [sp, #0x4]
  2e4a22: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  2e4a26: 681b         	ldr	r3, [r3]
  2e4a28: f503 7302    	add.w	r3, r3, #0x208
  2e4a2c: 681c         	ldr	r4, [r3]
  2e4a2e: 9b01         	ldr	r3, [sp, #0x4]
  2e4a30: f8d3 50ec    	ldr.w	r5, [r3, #0xec]
  2e4a34: 9b00         	ldr	r3, [sp]
  2e4a36: 681b         	ldr	r3, [r3]
  2e4a38: f503 731c    	add.w	r3, r3, #0x270
  2e4a3c: 681b         	ldr	r3, [r3]
  2e4a3e: aa02         	add	r2, sp, #0x8
  2e4a40: 4610         	mov	r0, r2
  2e4a42: 9900         	ldr	r1, [sp]
  2e4a44: 4798         	blx	r3
  2e4a46: ab02         	add	r3, sp, #0x8
  2e4a48: 4628         	mov	r0, r5
  2e4a4a: 4619         	mov	r1, r3
  2e4a4c: 47a0         	blx	r4
  2e4a4e: 9b01         	ldr	r3, [sp, #0x4]
  2e4a50: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  2e4a54: 681b         	ldr	r3, [r3]
  2e4a56: 3390         	adds	r3, #0x90
  2e4a58: 681b         	ldr	r3, [r3]
  2e4a5a: 9a01         	ldr	r2, [sp, #0x4]
  2e4a5c: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  2e4a60: 4610         	mov	r0, r2
  2e4a62: 2101         	movs	r1, #0x1
  2e4a64: 4798         	blx	r3
  2e4a66: e00b         	b	0x2e4a80 <AmmoMeter::setGrenade(Weapon*)+0x98> @ imm = #0x16
  2e4a68: 9b01         	ldr	r3, [sp, #0x4]
  2e4a6a: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  2e4a6e: 681b         	ldr	r3, [r3]
  2e4a70: 3390         	adds	r3, #0x90
  2e4a72: 681b         	ldr	r3, [r3]
  2e4a74: 9a01         	ldr	r2, [sp, #0x4]
  2e4a76: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  2e4a7a: 4610         	mov	r0, r2
  2e4a7c: 2100         	movs	r1, #0x0
  2e4a7e: 4798         	blx	r3
  2e4a80: b007         	add	sp, #0x1c
  2e4a82: bd30         	pop	{r4, r5, pc}

// ==== AmmoMeter::setWeapon
//      file offset 0x2e4a84 (= ELF address; Ghidra 0x2f4a84), 164 bytes, Thumb-2
  2e4a84: b530         	push	{r4, r5, lr}
  2e4a86: b087         	sub	sp, #0x1c
  2e4a88: 9001         	str	r0, [sp, #0x4]
  2e4a8a: 9100         	str	r1, [sp]
  2e4a8c: 9b00         	ldr	r3, [sp]
  2e4a8e: 2b00         	cmp	r3, #0x0
  2e4a90: d03c         	beq	0x2e4b0c <AmmoMeter::setWeapon(Weapon*)+0x88> @ imm = #0x78
  2e4a92: 9b01         	ldr	r3, [sp, #0x4]
  2e4a94: 9a00         	ldr	r2, [sp]
  2e4a96: f8c3 20f0    	str.w	r2, [r3, #0xf0]
  2e4a9a: 9b01         	ldr	r3, [sp, #0x4]
  2e4a9c: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  2e4aa0: 681b         	ldr	r3, [r3]
  2e4aa2: f503 73f8    	add.w	r3, r3, #0x1f0
  2e4aa6: 681c         	ldr	r4, [r3]
  2e4aa8: 9b01         	ldr	r3, [sp, #0x4]
  2e4aaa: f8d3 50e8    	ldr.w	r5, [r3, #0xe8]
  2e4aae: 9b00         	ldr	r3, [sp]
  2e4ab0: 681b         	ldr	r3, [r3]
  2e4ab2: f503 731b    	add.w	r3, r3, #0x26c
  2e4ab6: 681b         	ldr	r3, [r3]
  2e4ab8: 9800         	ldr	r0, [sp]
  2e4aba: 4798         	blx	r3
  2e4abc: 4603         	mov	r3, r0
  2e4abe: 4628         	mov	r0, r5
  2e4ac0: 4619         	mov	r1, r3
  2e4ac2: 47a0         	blx	r4
  2e4ac4: 9b01         	ldr	r3, [sp, #0x4]
  2e4ac6: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  2e4aca: 681b         	ldr	r3, [r3]
  2e4acc: f503 7302    	add.w	r3, r3, #0x208
  2e4ad0: 681c         	ldr	r4, [r3]
  2e4ad2: 9b01         	ldr	r3, [sp, #0x4]
  2e4ad4: f8d3 50e8    	ldr.w	r5, [r3, #0xe8]
  2e4ad8: 9b00         	ldr	r3, [sp]
  2e4ada: 681b         	ldr	r3, [r3]
  2e4adc: f503 731c    	add.w	r3, r3, #0x270
  2e4ae0: 681b         	ldr	r3, [r3]
  2e4ae2: aa02         	add	r2, sp, #0x8
  2e4ae4: 4610         	mov	r0, r2
  2e4ae6: 9900         	ldr	r1, [sp]
  2e4ae8: 4798         	blx	r3
  2e4aea: ab02         	add	r3, sp, #0x8
  2e4aec: 4628         	mov	r0, r5
  2e4aee: 4619         	mov	r1, r3
  2e4af0: 47a0         	blx	r4
  2e4af2: 9b01         	ldr	r3, [sp, #0x4]
  2e4af4: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  2e4af8: 681b         	ldr	r3, [r3]
  2e4afa: 3390         	adds	r3, #0x90
  2e4afc: 681b         	ldr	r3, [r3]
  2e4afe: 9a01         	ldr	r2, [sp, #0x4]
  2e4b00: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  2e4b04: 4610         	mov	r0, r2
  2e4b06: 2101         	movs	r1, #0x1
  2e4b08: 4798         	blx	r3
  2e4b0a: e00b         	b	0x2e4b24 <AmmoMeter::setWeapon(Weapon*)+0xa0> @ imm = #0x16
  2e4b0c: 9b01         	ldr	r3, [sp, #0x4]
  2e4b0e: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  2e4b12: 681b         	ldr	r3, [r3]
  2e4b14: 3390         	adds	r3, #0x90
  2e4b16: 681b         	ldr	r3, [r3]
  2e4b18: 9a01         	ldr	r2, [sp, #0x4]
  2e4b1a: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  2e4b1e: 4610         	mov	r0, r2
  2e4b20: 2100         	movs	r1, #0x0
  2e4b22: 4798         	blx	r3
  2e4b24: b007         	add	sp, #0x1c
  2e4b26: bd30         	pop	{r4, r5, pc}

// ==== AmmoMeter::onWeaponChanged
//      file offset 0x2e4b28 (= ELF address; Ghidra 0x2f4b28), 26 bytes, Thumb-2
  2e4b28: b500         	push	{lr}
  2e4b2a: b085         	sub	sp, #0x14
  2e4b2c: 9001         	str	r0, [sp, #0x4]
  2e4b2e: 9100         	str	r1, [sp]
  2e4b30: 9b00         	ldr	r3, [sp]
  2e4b32: 9303         	str	r3, [sp, #0xc]
  2e4b34: 9801         	ldr	r0, [sp, #0x4]
  2e4b36: 9903         	ldr	r1, [sp, #0xc]
  2e4b38: f7ff ffa4    	bl	0x2e4a84 <AmmoMeter::setWeapon(Weapon*)> @ imm = #-0xb8
  2e4b3c: b005         	add	sp, #0x14
  2e4b3e: f85d fb04    	ldr	pc, [sp], #4

// ==== AmmoMeter::onGrenadeChanged
//      file offset 0x2e4b44 (= ELF address; Ghidra 0x2f4b44), 26 bytes, Thumb-2
  2e4b44: b500         	push	{lr}
  2e4b46: b085         	sub	sp, #0x14
  2e4b48: 9001         	str	r0, [sp, #0x4]
  2e4b4a: 9100         	str	r1, [sp]
  2e4b4c: 9b00         	ldr	r3, [sp]
  2e4b4e: 9303         	str	r3, [sp, #0xc]
  2e4b50: 9801         	ldr	r0, [sp, #0x4]
  2e4b52: 9903         	ldr	r1, [sp, #0xc]
  2e4b54: f7ff ff48    	bl	0x2e49e8 <AmmoMeter::setGrenade(Weapon*)> @ imm = #-0x170
  2e4b58: b005         	add	sp, #0x14
  2e4b5a: f85d fb04    	ldr	pc, [sp], #4

// ==== AmmoMeter::setLength
//      file offset 0x2e4b60 (= ELF address; Ghidra 0x2f4b60), 12 bytes, Thumb-2
  2e4b60: b084         	sub	sp, #0x10
  2e4b62: 9003         	str	r0, [sp, #0xc]
  2e4b64: e9cd 2300    	strd	r2, r3, [sp]
  2e4b68: b004         	add	sp, #0x10
  2e4b6a: 4770         	bx	lr

// ==== AmmoMeter::create
//      file offset 0x339fbc (= ELF address; Ghidra 0x349fbc), 112 bytes, Thumb-2
  339fbc: b510         	push	{r4, lr}
  339fbe: b082         	sub	sp, #0x8
  339fc0: f44f 7088    	mov.w	r0, #0x110
  339fc4: f04d f4ce    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x44d99c
  339fc8: 4603         	mov	r3, r0
  339fca: 461c         	mov	r4, r3
  339fcc: 4620         	mov	r0, r4
  339fce: f7a9 ff45    	bl	0x2e3e5c <AmmoMeter::AmmoMeter()> @ imm = #-0x56176
  339fd2: 9401         	str	r4, [sp, #0x4]
  339fd4: 9b01         	ldr	r3, [sp, #0x4]
  339fd6: 2b00         	cmp	r3, #0x0
  339fd8: d00a         	beq	0x339ff0 <AmmoMeter::create()+0x34> @ imm = #0x14
  339fda: 9b01         	ldr	r3, [sp, #0x4]
  339fdc: 681b         	ldr	r3, [r3]
  339fde: 3318         	adds	r3, #0x18
  339fe0: 681b         	ldr	r3, [r3]
  339fe2: 9801         	ldr	r0, [sp, #0x4]
  339fe4: 4798         	blx	r3
  339fe6: 4603         	mov	r3, r0
  339fe8: 2b00         	cmp	r3, #0x0
  339fea: d001         	beq	0x339ff0 <AmmoMeter::create()+0x34> @ imm = #0x2
  339fec: 2301         	movs	r3, #0x1
  339fee: e000         	b	0x339ff2 <AmmoMeter::create()+0x36> @ imm = #0x0
  339ff0: 2300         	movs	r3, #0x0
  339ff2: 2b00         	cmp	r3, #0x0
  339ff4: d005         	beq	0x33a002 <AmmoMeter::create()+0x46> @ imm = #0xa
  339ff6: 9b01         	ldr	r3, [sp, #0x4]
  339ff8: 4618         	mov	r0, r3
  339ffa: f25d ff7f    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x25defe
  339ffe: 9b01         	ldr	r3, [sp, #0x4]
  33a000: e011         	b	0x33a026 <AmmoMeter::create()+0x6a> @ imm = #0x22
  33a002: 9b01         	ldr	r3, [sp, #0x4]
  33a004: 2b00         	cmp	r3, #0x0
  33a006: d005         	beq	0x33a014 <AmmoMeter::create()+0x58> @ imm = #0xa
  33a008: 9b01         	ldr	r3, [sp, #0x4]
  33a00a: 681b         	ldr	r3, [r3]
  33a00c: 3308         	adds	r3, #0x8
  33a00e: 681b         	ldr	r3, [r3]
  33a010: 9801         	ldr	r0, [sp, #0x4]
  33a012: 4798         	blx	r3
  33a014: 2300         	movs	r3, #0x0
  33a016: 9301         	str	r3, [sp, #0x4]
  33a018: 2300         	movs	r3, #0x0
  33a01a: e004         	b	0x33a026 <AmmoMeter::create()+0x6a> @ imm = #0x8
  33a01c: 4620         	mov	r0, r4
  33a01e: f04e f041    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x44e082
  33a022: f04e f043    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x44e086
  33a026: 4618         	mov	r0, r3
  33a028: b002         	add	sp, #0x8
  33a02a: bd10         	pop	{r4, pc}
