// UZI: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 21 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../UZI.cpp

// ==== UZI::UZI
//      file offset 0x412e74 (= ELF address; Ghidra 0x422e74), 44 bytes, Thumb-2
  412e74: b510         	push	{r4, lr}
  412e76: b082         	sub	sp, #0x8
  412e78: 9001         	str	r0, [sp, #0x4]
  412e7a: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x412e98 <UZI::UZI()+0x24>
  412e7c: 447c         	add	r4, pc
  412e7e: 9b01         	ldr	r3, [sp, #0x4]
  412e80: 4618         	mov	r0, r3
  412e82: f002 f891    	bl	0x414fa8 <Weapon::Weapon()> @ imm = #0x2122
  412e86: 9b01         	ldr	r3, [sp, #0x4]
  412e88: 4a04         	ldr	r2, [pc, #0x10]         @ 0x412e9c <UZI::UZI()+0x28>
  412e8a: 58a2         	ldr	r2, [r4, r2]
  412e8c: 3208         	adds	r2, #0x8
  412e8e: 601a         	str	r2, [r3]
  412e90: 9b01         	ldr	r3, [sp, #0x4]
  412e92: 4618         	mov	r0, r3
  412e94: b002         	add	sp, #0x8
  412e96: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x412e97); words below are literal-pool data ---
  412e98: fb8c 0051    	<unknown>
  412e9c: df98         	svc	#0x98
  412e9e: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== UZI::init
//      file offset 0x412ea0 (= ELF address; Ghidra 0x422ea0), 816 bytes, Thumb-2
  412ea0: b530         	push	{r4, r5, lr}
  412ea2: b08b         	sub	sp, #0x2c
  412ea4: 9005         	str	r0, [sp, #0x14]
  412ea6: 9b05         	ldr	r3, [sp, #0x14]
  412ea8: 4618         	mov	r0, r3
  412eaa: f002 f8a1    	bl	0x414ff0 <Weapon::init()> @ imm = #0x2142
  412eae: 4603         	mov	r3, r0
  412eb0: f88d 301f    	strb.w	r3, [sp, #0x1f]
  412eb4: f89d 301f    	ldrb.w	r3, [sp, #0x1f]
  412eb8: f083 0301    	eor	r3, r3, #0x1
  412ebc: b2db         	uxtb	r3, r3
  412ebe: 2b00         	cmp	r3, #0x0
  412ec0: d001         	beq	0x412ec6 <UZI::init()+0x26> @ imm = #0x2
  412ec2: 2300         	movs	r3, #0x0
  412ec4: e16f         	b	0x4131a6 <UZI::init()+0x306> @ imm = #0x2de
  412ec6: 4bbc         	ldr	r3, [pc, #0x2f0]        @ 0x4131b8 <UZI::init()+0x318>
  412ec8: 447b         	add	r3, pc
  412eca: 4618         	mov	r0, r3
  412ecc: f1c5 fa1a    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x1c5434
  412ed0: 4602         	mov	r2, r0
  412ed2: 9b05         	ldr	r3, [sp, #0x14]
  412ed4: f8c3 21ec    	str.w	r2, [r3, #0x1ec]
  412ed8: 9b05         	ldr	r3, [sp, #0x14]
  412eda: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  412ede: 4618         	mov	r0, r3
  412ee0: f185 f802    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x185004
  412ee4: 4bb5         	ldr	r3, [pc, #0x2d4]        @ 0x4131bc <UZI::init()+0x31c>
  412ee6: 447b         	add	r3, pc
  412ee8: 4618         	mov	r0, r3
  412eea: f1c5 fa0b    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x1c5416
  412eee: 4602         	mov	r2, r0
  412ef0: 9b05         	ldr	r3, [sp, #0x14]
  412ef2: f8c3 21f0    	str.w	r2, [r3, #0x1f0]
  412ef6: 9b05         	ldr	r3, [sp, #0x14]
  412ef8: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  412efc: 4618         	mov	r0, r3
  412efe: f184 fff3    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x184fe6
  412f02: 9b05         	ldr	r3, [sp, #0x14]
  412f04: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  412f08: 681b         	ldr	r3, [r3]
  412f0a: 337c         	adds	r3, #0x7c
  412f0c: 681c         	ldr	r4, [r3]
  412f0e: 9b05         	ldr	r3, [sp, #0x14]
  412f10: f8d3 51f0    	ldr.w	r5, [r3, #0x1f0]
  412f14: ab08         	add	r3, sp, #0x20
  412f16: 4618         	mov	r0, r3
  412f18: f64c 41cd    	movw	r1, #0xcccd
  412f1c: f6cb 714c    	movt	r1, #0xbf4c
  412f20: f64c 42cd    	movw	r2, #0xcccd
  412f24: f6c3 62cc    	movt	r2, #0x3ecc
  412f28: f17f fee2    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x17fdc4
  412f2c: ab08         	add	r3, sp, #0x20
  412f2e: 4628         	mov	r0, r5
  412f30: 4619         	mov	r1, r3
  412f32: 47a0         	blx	r4
  412f34: 9b05         	ldr	r3, [sp, #0x14]
  412f36: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  412f3a: 681b         	ldr	r3, [r3]
  412f3c: 3338         	adds	r3, #0x38
  412f3e: 681b         	ldr	r3, [r3]
  412f40: 9a05         	ldr	r2, [sp, #0x14]
  412f42: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  412f46: 4610         	mov	r0, r2
  412f48: f04f 4180    	mov.w	r1, #0x40000000
  412f4c: 4798         	blx	r3
  412f4e: 9b05         	ldr	r3, [sp, #0x14]
  412f50: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  412f54: 681b         	ldr	r3, [r3]
  412f56: 3330         	adds	r3, #0x30
  412f58: 681b         	ldr	r3, [r3]
  412f5a: 9a05         	ldr	r2, [sp, #0x14]
  412f5c: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  412f60: 4610         	mov	r0, r2
  412f62: f04f 0100    	mov.w	r1, #0x0
  412f66: f2c4 0140    	movt	r1, #0x4040
  412f6a: 4798         	blx	r3
  412f6c: 9b05         	ldr	r3, [sp, #0x14]
  412f6e: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  412f72: 681b         	ldr	r3, [r3]
  412f74: 3390         	adds	r3, #0x90
  412f76: 681b         	ldr	r3, [r3]
  412f78: 9a05         	ldr	r2, [sp, #0x14]
  412f7a: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  412f7e: 4610         	mov	r0, r2
  412f80: 2100         	movs	r1, #0x0
  412f82: 4798         	blx	r3
  412f84: 9b05         	ldr	r3, [sp, #0x14]
  412f86: 681b         	ldr	r3, [r3]
  412f88: f503 73f0    	add.w	r3, r3, #0x1e0
  412f8c: 681b         	ldr	r3, [r3]
  412f8e: 9805         	ldr	r0, [sp, #0x14]
  412f90: 4798         	blx	r3
  412f92: 9b05         	ldr	r3, [sp, #0x14]
  412f94: 681b         	ldr	r3, [r3]
  412f96: 33cc         	adds	r3, #0xcc
  412f98: 681b         	ldr	r3, [r3]
  412f9a: 9905         	ldr	r1, [sp, #0x14]
  412f9c: 9a05         	ldr	r2, [sp, #0x14]
  412f9e: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  412fa2: 4608         	mov	r0, r1
  412fa4: 4611         	mov	r1, r2
  412fa6: 2200         	movs	r2, #0x0
  412fa8: 4798         	blx	r3
  412faa: 9b05         	ldr	r3, [sp, #0x14]
  412fac: 681b         	ldr	r3, [r3]
  412fae: 33cc         	adds	r3, #0xcc
  412fb0: 681b         	ldr	r3, [r3]
  412fb2: 9905         	ldr	r1, [sp, #0x14]
  412fb4: 9a05         	ldr	r2, [sp, #0x14]
  412fb6: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  412fba: 4608         	mov	r0, r1
  412fbc: 4611         	mov	r1, r2
  412fbe: 2200         	movs	r2, #0x0
  412fc0: 4798         	blx	r3
  412fc2: 9b05         	ldr	r3, [sp, #0x14]
  412fc4: f8d3 4150    	ldr.w	r4, [r3, #0x150]
  412fc8: f04f 507e    	mov.w	r0, #0x3f800000
  412fcc: f6c9 fe5a    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x13634c
  412fd0: 4603         	mov	r3, r0
  412fd2: 4620         	mov	r0, r4
  412fd4: 4619         	mov	r1, r3
  412fd6: f187 f949    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x187292
  412fda: 9b05         	ldr	r3, [sp, #0x14]
  412fdc: f8d3 414c    	ldr.w	r4, [r3, #0x14c]
  412fe0: ab07         	add	r3, sp, #0x1c
  412fe2: 4618         	mov	r0, r3
  412fe4: f377 fa06    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37740c
  412fe8: aa08         	add	r2, sp, #0x20
  412fea: ab07         	add	r3, sp, #0x1c
  412fec: 4610         	mov	r0, r2
  412fee: 4a74         	ldr	r2, [pc, #0x1d0]        @ 0x4131c0 <UZI::init()+0x320>
  412ff0: 447a         	add	r2, pc
  412ff2: 4611         	mov	r1, r2
  412ff4: 461a         	mov	r2, r3
  412ff6: f3a3 fd33    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3a3a66
  412ffa: ab08         	add	r3, sp, #0x20
  412ffc: 4618         	mov	r0, r3
  412ffe: f186 fd1d    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x186a3a
  413002: 4603         	mov	r3, r0
  413004: 4620         	mov	r0, r4
  413006: 4619         	mov	r1, r3
  413008: f187 f930    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x187260
  41300c: ab08         	add	r3, sp, #0x20
  41300e: 4618         	mov	r0, r3
  413010: f3a2 fc80    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a2900
  413014: ab07         	add	r3, sp, #0x1c
  413016: 4618         	mov	r0, r3
  413018: f377 f9f0    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3773e0
  41301c: 9b05         	ldr	r3, [sp, #0x14]
  41301e: f8d3 4150    	ldr.w	r4, [r3, #0x150]
  413022: f64c 40cd    	movw	r0, #0xcccd
  413026: f6c3 704c    	movt	r0, #0x3f4c
  41302a: f6c9 fe2b    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x1363aa
  41302e: 4603         	mov	r3, r0
  413030: 4620         	mov	r0, r4
  413032: 4619         	mov	r1, r3
  413034: f187 f91a    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x187234
  413038: 9b05         	ldr	r3, [sp, #0x14]
  41303a: f8d3 414c    	ldr.w	r4, [r3, #0x14c]
  41303e: ab07         	add	r3, sp, #0x1c
  413040: 4618         	mov	r0, r3
  413042: f377 f9d7    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3773ae
  413046: aa08         	add	r2, sp, #0x20
  413048: ab07         	add	r3, sp, #0x1c
  41304a: 4610         	mov	r0, r2
  41304c: 4a5d         	ldr	r2, [pc, #0x174]        @ 0x4131c4 <UZI::init()+0x324>
  41304e: 447a         	add	r2, pc
  413050: 4611         	mov	r1, r2
  413052: 461a         	mov	r2, r3
  413054: f3a3 fd04    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3a3a08
  413058: ab08         	add	r3, sp, #0x20
  41305a: 4618         	mov	r0, r3
  41305c: f186 fcee    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1869dc
  413060: 4603         	mov	r3, r0
  413062: 4620         	mov	r0, r4
  413064: 4619         	mov	r1, r3
  413066: f187 f901    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x187202
  41306a: ab08         	add	r3, sp, #0x20
  41306c: 4618         	mov	r0, r3
  41306e: f3a2 fc51    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a28a2
  413072: ab07         	add	r3, sp, #0x1c
  413074: 4618         	mov	r0, r3
  413076: f377 f9c1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x377382
  41307a: 9b05         	ldr	r3, [sp, #0x14]
  41307c: 2200         	movs	r2, #0x0
  41307e: f8c3 2144    	str.w	r2, [r3, #0x144]
  413082: 9b05         	ldr	r3, [sp, #0x14]
  413084: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  413088: 4618         	mov	r0, r3
  41308a: 2100         	movs	r1, #0x0
  41308c: f187 f848    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x187090
  413090: 4603         	mov	r3, r0
  413092: 4618         	mov	r0, r3
  413094: f6c9 fdee    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x136424
  413098: 4602         	mov	r2, r0
  41309a: 9b05         	ldr	r3, [sp, #0x14]
  41309c: f8c3 2148    	str.w	r2, [r3, #0x148]
  4130a0: 9b05         	ldr	r3, [sp, #0x14]
  4130a2: f64c 42cd    	movw	r2, #0xcccd
  4130a6: f6c3 52cc    	movt	r2, #0x3dcc
  4130aa: f8c3 215c    	str.w	r2, [r3, #0x15c]
  4130ae: 9b05         	ldr	r3, [sp, #0x14]
  4130b0: f04f 527f    	mov.w	r2, #0x3fc00000
  4130b4: f8c3 2160    	str.w	r2, [r3, #0x160]
  4130b8: 9b05         	ldr	r3, [sp, #0x14]
  4130ba: f04f 0200    	mov.w	r2, #0x0
  4130be: f2c4 02c0    	movt	r2, #0x40c0
  4130c2: f8c3 2164    	str.w	r2, [r3, #0x164]
  4130c6: 9b05         	ldr	r3, [sp, #0x14]
  4130c8: f04f 0200    	mov.w	r2, #0x0
  4130cc: f2c4 1220    	movt	r2, #0x4120
  4130d0: f8c3 216c    	str.w	r2, [r3, #0x16c]
  4130d4: 9b05         	ldr	r3, [sp, #0x14]
  4130d6: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  4130da: 681b         	ldr	r3, [r3]
  4130dc: 3398         	adds	r3, #0x98
  4130de: 681b         	ldr	r3, [r3]
  4130e0: 9a05         	ldr	r2, [sp, #0x14]
  4130e2: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  4130e6: 4610         	mov	r0, r2
  4130e8: f04f 4181    	mov.w	r1, #0x40800000
  4130ec: 4798         	blx	r3
  4130ee: 9b05         	ldr	r3, [sp, #0x14]
  4130f0: 22fa         	movs	r2, #0xfa
  4130f2: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  4130f6: 9b05         	ldr	r3, [sp, #0x14]
  4130f8: 2228         	movs	r2, #0x28
  4130fa: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  4130fe: 9b05         	ldr	r3, [sp, #0x14]
  413100: 224b         	movs	r2, #0x4b
  413102: f8c3 218c    	str.w	r2, [r3, #0x18c]
  413106: 9b05         	ldr	r3, [sp, #0x14]
  413108: 2200         	movs	r2, #0x0
  41310a: f883 2181    	strb.w	r2, [r3, #0x181]
  41310e: 9b05         	ldr	r3, [sp, #0x14]
  413110: 2205         	movs	r2, #0x5
  413112: f8c3 2188    	str.w	r2, [r3, #0x188]
  413116: 9b05         	ldr	r3, [sp, #0x14]
  413118: 2214         	movs	r2, #0x14
  41311a: f8c3 219c    	str.w	r2, [r3, #0x19c]
  41311e: 9b05         	ldr	r3, [sp, #0x14]
  413120: 2223         	movs	r2, #0x23
  413122: f8c3 21a0    	str.w	r2, [r3, #0x1a0]
  413126: 4b28         	ldr	r3, [pc, #0xa0]         @ 0x4131c8 <UZI::init()+0x328>
  413128: 447b         	add	r3, pc
  41312a: 681a         	ldr	r2, [r3]
  41312c: 9b05         	ldr	r3, [sp, #0x14]
  41312e: f8c3 21a4    	str.w	r2, [r3, #0x1a4]
  413132: 9b05         	ldr	r3, [sp, #0x14]
  413134: 2201         	movs	r2, #0x1
  413136: f883 2183    	strb.w	r2, [r3, #0x183]
  41313a: 9b05         	ldr	r3, [sp, #0x14]
  41313c: 2228         	movs	r2, #0x28
  41313e: f8c3 2170    	str.w	r2, [r3, #0x170]
  413142: 9b05         	ldr	r3, [sp, #0x14]
  413144: f44f 72c8    	mov.w	r2, #0x190
  413148: f8c3 2174    	str.w	r2, [r3, #0x174]
  41314c: 9c05         	ldr	r4, [sp, #0x14]
  41314e: 466b         	mov	r3, sp
  413150: 4618         	mov	r0, r3
  413152: ed9f 0b17    	vldr	d0, [pc, #92]           @ 0x4131b0 <UZI::init()+0x310>
  413156: eeb3 1b04    	vmov.f64	d1, #2.000000e+01
  41315a: f7fe ffb7    	bl	0x4120cc <TrainingStage::doLesson(float)+0x7df4> @ imm = #-0x1092
  41315e: f504 74ec    	add.w	r4, r4, #0x1d8
  413162: 466b         	mov	r3, sp
  413164: cb0f         	ldm	r3, {r0, r1, r2, r3}
  413166: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  41316a: 4b18         	ldr	r3, [pc, #0x60]         @ 0x4131cc <UZI::init()+0x32c>
  41316c: 447b         	add	r3, pc
  41316e: 681a         	ldr	r2, [r3]
  413170: 9b05         	ldr	r3, [sp, #0x14]
  413172: f8c3 2198    	str.w	r2, [r3, #0x198]
  413176: 2301         	movs	r3, #0x1
  413178: e015         	b	0x4131a6 <UZI::init()+0x306> @ imm = #0x2a
  41317a: ab08         	add	r3, sp, #0x20
  41317c: 4618         	mov	r0, r3
  41317e: f3a2 fbc9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a2792
  413182: e7ff         	b	0x413184 <UZI::init()+0x2e4> @ imm = #-0x2
  413184: ab07         	add	r3, sp, #0x1c
  413186: 4618         	mov	r0, r3
  413188: f377 f938    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x377270
  41318c: f374 ff8e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x374f1c
  413190: ab08         	add	r3, sp, #0x20
  413192: 4618         	mov	r0, r3
  413194: f3a2 fbbe    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a277c
  413198: e7ff         	b	0x41319a <UZI::init()+0x2fa> @ imm = #-0x2
  41319a: ab07         	add	r3, sp, #0x1c
  41319c: 4618         	mov	r0, r3
  41319e: f377 f92d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37725a
  4131a2: f374 ff83    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x374f06
  4131a6: 4618         	mov	r0, r3
  4131a8: b00b         	add	sp, #0x2c
  4131aa: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x4131ab); words below are literal-pool data ---
  4131ac: f3af 8000    	nop.w
  4131b0: 0000         	movs	r0, r0
  4131b2: 0000         	movs	r0, r0
  4131b4: c000         	<unknown>
  4131b6: 4057         	eors	r7, r2
  4131b8: 82c4         	strh	r4, [r0, #0x16]
  4131ba: 003c         	movs	r4, r7
  4131bc: 82ae         	strh	r6, [r5, #0x14]
  4131be: 003c         	movs	r4, r7
  4131c0: 81b0         	strh	r0, [r6, #0xc]
  4131c2: 003c         	movs	r4, r7
  4131c4: 8156         	strh	r6, [r2, #0xa]
  4131c6: 003c         	movs	r4, r7
  4131c8: 05a8         	lsls	r0, r5, #0x16
  4131ca: 0052         	lsls	r2, r2, #0x1
  4131cc: 0560         	lsls	r0, r4, #0x15
  4131ce: 0052         	lsls	r2, r2, #0x1

// ==== UZI::~UZI
//      file offset 0x4131d0 (= ELF address; Ghidra 0x4231d0), 92 bytes, Thumb-2
  4131d0: b500         	push	{lr}
  4131d2: b083         	sub	sp, #0xc
  4131d4: 9001         	str	r0, [sp, #0x4]
  4131d6: 4913         	ldr	r1, [pc, #0x4c]         @ 0x413224 <UZI::~UZI()+0x54>
  4131d8: 4479         	add	r1, pc
  4131da: 9b01         	ldr	r3, [sp, #0x4]
  4131dc: 4a12         	ldr	r2, [pc, #0x48]         @ 0x413228 <UZI::~UZI()+0x58>
  4131de: 588a         	ldr	r2, [r1, r2]
  4131e0: 3208         	adds	r2, #0x8
  4131e2: 601a         	str	r2, [r3]
  4131e4: 9b01         	ldr	r3, [sp, #0x4]
  4131e6: 4618         	mov	r0, r3
  4131e8: f17d fa20    	bl	0x59062c <cocos2d::CCNode::removeAllChildren()> @ imm = #0x17d440
  4131ec: 9b01         	ldr	r3, [sp, #0x4]
  4131ee: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  4131f2: 4618         	mov	r0, r3
  4131f4: f184 fe60    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x184cc0
  4131f8: 9b01         	ldr	r3, [sp, #0x4]
  4131fa: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  4131fe: 4618         	mov	r0, r3
  413200: f184 fe5a    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x184cb4
  413204: 9b01         	ldr	r3, [sp, #0x4]
  413206: 4618         	mov	r0, r3
  413208: f001 fff2    	bl	0x4151f0 <Weapon::~Weapon()> @ imm = #0x1fe4
  41320c: 2300         	movs	r3, #0x0
  41320e: 2b00         	cmp	r3, #0x0
  413210: d002         	beq	0x413218 <UZI::~UZI()+0x48> @ imm = #0x4
  413212: 9801         	ldr	r0, [sp, #0x4]
  413214: f374 ff46    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x374e8c
  413218: 9b01         	ldr	r3, [sp, #0x4]
  41321a: 4618         	mov	r0, r3
  41321c: b003         	add	sp, #0xc
  41321e: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x413221); words below are literal-pool data ---
  413222: bf00         	nop
  413224: f830 0051    	<unknown>
  413228: df98         	svc	#0x98
  41322a: ffff b500    	<unknown>

// ==== UZI::~UZI
//      file offset 0x41322c (= ELF address; Ghidra 0x42322c), 28 bytes, Thumb-2
  41322c: b500         	push	{lr}
  41322e: b083         	sub	sp, #0xc
  413230: 9001         	str	r0, [sp, #0x4]
  413232: 9801         	ldr	r0, [sp, #0x4]
  413234: f7ff ffcc    	bl	0x4131d0 <UZI::~UZI()>  @ imm = #-0x68
  413238: 9801         	ldr	r0, [sp, #0x4]
  41323a: f374 ff33    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x374e66
  41323e: 9b01         	ldr	r3, [sp, #0x4]
  413240: 4618         	mov	r0, r3
  413242: b003         	add	sp, #0xc
  413244: f85d fb04    	ldr	pc, [sp], #4

// ==== UZI::triggerPull
//      file offset 0x413248 (= ELF address; Ghidra 0x423248), 352 bytes, Thumb-2
  413248: b510         	push	{r4, lr}
  41324a: b088         	sub	sp, #0x20
  41324c: 9003         	str	r0, [sp, #0xc]
  41324e: 9102         	str	r1, [sp, #0x8]
  413250: 4c53         	ldr	r4, [pc, #0x14c]        @ 0x4133a0 <UZI::triggerPull(float)+0x158>
  413252: 447c         	add	r4, pc
  413254: 9b03         	ldr	r3, [sp, #0xc]
  413256: ed93 7a44    	vldr	s14, [r3, #272]
  41325a: 9b03         	ldr	r3, [sp, #0xc]
  41325c: edd3 7a57    	vldr	s15, [r3, #348]
  413260: eeb4 7ae7    	vcmpe.f32	s14, s15
  413264: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  413268: dd71         	ble	0x41334e <UZI::triggerPull(float)+0x106> @ imm = #0xe2
  41326a: 9b03         	ldr	r3, [sp, #0xc]
  41326c: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  413270: b21b         	sxth	r3, r3
  413272: 2b00         	cmp	r3, #0x0
  413274: dd0f         	ble	0x413296 <UZI::triggerPull(float)+0x4e> @ imm = #0x1e
  413276: 9b03         	ldr	r3, [sp, #0xc]
  413278: 681b         	ldr	r3, [r3]
  41327a: f503 7333    	add.w	r3, r3, #0x2cc
  41327e: 681b         	ldr	r3, [r3]
  413280: 9a03         	ldr	r2, [sp, #0xc]
  413282: 4610         	mov	r0, r2
  413284: 4798         	blx	r3
  413286: 4603         	mov	r3, r0
  413288: f083 0301    	eor	r3, r3, #0x1
  41328c: b2db         	uxtb	r3, r3
  41328e: 2b00         	cmp	r3, #0x0
  413290: d001         	beq	0x413296 <UZI::triggerPull(float)+0x4e> @ imm = #0x2
  413292: 2301         	movs	r3, #0x1
  413294: e000         	b	0x413298 <UZI::triggerPull(float)+0x50> @ imm = #0x0
  413296: 2300         	movs	r3, #0x0
  413298: 2b00         	cmp	r3, #0x0
  41329a: d02c         	beq	0x4132f6 <UZI::triggerPull(float)+0xae> @ imm = #0x58
  41329c: 9b03         	ldr	r3, [sp, #0xc]
  41329e: 2201         	movs	r2, #0x1
  4132a0: f883 2180    	strb.w	r2, [r3, #0x180]
  4132a4: 9b03         	ldr	r3, [sp, #0xc]
  4132a6: 681b         	ldr	r3, [r3]
  4132a8: f503 7325    	add.w	r3, r3, #0x294
  4132ac: 681b         	ldr	r3, [r3]
  4132ae: 9803         	ldr	r0, [sp, #0xc]
  4132b0: 4798         	blx	r3
  4132b2: 9b03         	ldr	r3, [sp, #0xc]
  4132b4: 681b         	ldr	r3, [r3]
  4132b6: f503 7342    	add.w	r3, r3, #0x308
  4132ba: 681b         	ldr	r3, [r3]
  4132bc: 9a03         	ldr	r2, [sp, #0xc]
  4132be: 4610         	mov	r0, r2
  4132c0: 4798         	blx	r3
  4132c2: 9b03         	ldr	r3, [sp, #0xc]
  4132c4: 681b         	ldr	r3, [r3]
  4132c6: f503 7343    	add.w	r3, r3, #0x30c
  4132ca: 681b         	ldr	r3, [r3]
  4132cc: 9a03         	ldr	r2, [sp, #0xc]
  4132ce: 4610         	mov	r0, r2
  4132d0: 4798         	blx	r3
  4132d2: 9b03         	ldr	r3, [sp, #0xc]
  4132d4: f893 3195    	ldrb.w	r3, [r3, #0x195]
  4132d8: 3301         	adds	r3, #0x1
  4132da: b2da         	uxtb	r2, r3
  4132dc: 9b03         	ldr	r3, [sp, #0xc]
  4132de: f883 2195    	strb.w	r2, [r3, #0x195]
  4132e2: 9b03         	ldr	r3, [sp, #0xc]
  4132e4: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  4132e8: b29b         	uxth	r3, r3
  4132ea: 3b00         	subs	r3, #0x0
  4132ec: b29a         	uxth	r2, r3
  4132ee: 9b03         	ldr	r3, [sp, #0xc]
  4132f0: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  4132f4: e026         	b	0x413344 <UZI::triggerPull(float)+0xfc> @ imm = #0x4c
  4132f6: 9b03         	ldr	r3, [sp, #0xc]
  4132f8: 681b         	ldr	r3, [r3]
  4132fa: f503 7333    	add.w	r3, r3, #0x2cc
  4132fe: 681b         	ldr	r3, [r3]
  413300: 9a03         	ldr	r2, [sp, #0xc]
  413302: 4610         	mov	r0, r2
  413304: 4798         	blx	r3
  413306: 4603         	mov	r3, r0
  413308: f083 0301    	eor	r3, r3, #0x1
  41330c: b2db         	uxtb	r3, r3
  41330e: 2b00         	cmp	r3, #0x0
  413310: d018         	beq	0x413344 <UZI::triggerPull(float)+0xfc> @ imm = #0x30
  413312: 4b24         	ldr	r3, [pc, #0x90]         @ 0x4133a4 <UZI::triggerPull(float)+0x15c>
  413314: 58e3         	ldr	r3, [r4, r3]
  413316: 681c         	ldr	r4, [r3]
  413318: 9b03         	ldr	r3, [sp, #0xc]
  41331a: 681b         	ldr	r3, [r3]
  41331c: f503 7348    	add.w	r3, r3, #0x320
  413320: 681b         	ldr	r3, [r3]
  413322: 9a03         	ldr	r2, [sp, #0xc]
  413324: a904         	add	r1, sp, #0x10
  413326: 4608         	mov	r0, r1
  413328: 4611         	mov	r1, r2
  41332a: 4798         	blx	r3
  41332c: 466b         	mov	r3, sp
  41332e: aa06         	add	r2, sp, #0x18
  413330: e892 0003    	ldm.w	r2, {r0, r1}
  413334: e883 0003    	stm.w	r3, {r0, r1}
  413338: ab04         	add	r3, sp, #0x10
  41333a: cb0c         	ldm	r3, {r2, r3}
  41333c: 4620         	mov	r0, r4
  41333e: 2100         	movs	r1, #0x0
  413340: f7e4 fe5a    	bl	0x3f7ff8 <Sound::playSoundPosition(int, cpVect)> @ imm = #-0x1b34c
  413344: 9b03         	ldr	r3, [sp, #0xc]
  413346: f04f 0200    	mov.w	r2, #0x0
  41334a: f8c3 2110    	str.w	r2, [r3, #0x110]
  41334e: 9b03         	ldr	r3, [sp, #0xc]
  413350: 681b         	ldr	r3, [r3]
  413352: f503 7333    	add.w	r3, r3, #0x2cc
  413356: 681b         	ldr	r3, [r3]
  413358: 9a03         	ldr	r2, [sp, #0xc]
  41335a: 4610         	mov	r0, r2
  41335c: 4798         	blx	r3
  41335e: 4603         	mov	r3, r0
  413360: f083 0301    	eor	r3, r3, #0x1
  413364: b2db         	uxtb	r3, r3
  413366: 2b00         	cmp	r3, #0x0
  413368: d00c         	beq	0x413384 <UZI::triggerPull(float)+0x13c> @ imm = #0x18
  41336a: 9b03         	ldr	r3, [sp, #0xc]
  41336c: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  413370: 2b00         	cmp	r3, #0x0
  413372: d107         	bne	0x413384 <UZI::triggerPull(float)+0x13c> @ imm = #0xe
  413374: 9b03         	ldr	r3, [sp, #0xc]
  413376: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  41337a: b21b         	sxth	r3, r3
  41337c: 2b00         	cmp	r3, #0x0
  41337e: dd01         	ble	0x413384 <UZI::triggerPull(float)+0x13c> @ imm = #0x2
  413380: 2301         	movs	r3, #0x1
  413382: e000         	b	0x413386 <UZI::triggerPull(float)+0x13e> @ imm = #0x0
  413384: 2300         	movs	r3, #0x0
  413386: 2b00         	cmp	r3, #0x0
  413388: d008         	beq	0x41339c <UZI::triggerPull(float)+0x154> @ imm = #0x10
  41338a: 9b03         	ldr	r3, [sp, #0xc]
  41338c: 2201         	movs	r2, #0x1
  41338e: f883 2181    	strb.w	r2, [r3, #0x181]
  413392: 9b03         	ldr	r3, [sp, #0xc]
  413394: f04f 0200    	mov.w	r2, #0x0
  413398: f8c3 2158    	str.w	r2, [r3, #0x158]
  41339c: b008         	add	sp, #0x20
  41339e: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x41339f); words below are literal-pool data ---
  4133a0: f7b6 0051    	<unknown>
  4133a4: d730         	bvc	0x413408 <UZI::updateItemStep(float)+0x60> @ imm = #0x60
  4133a6: ffff b500    	<unknown>

// ==== UZI::updateItemStep
//      file offset 0x4133a8 (= ELF address; Ghidra 0x4233a8), 282 bytes, Thumb-2
  4133a8: b500         	push	{lr}
  4133aa: ed2d 8b02    	vpush	{d8}
  4133ae: b085         	sub	sp, #0x14
  4133b0: 9001         	str	r0, [sp, #0x4]
  4133b2: 9100         	str	r1, [sp]
  4133b4: 9b01         	ldr	r3, [sp, #0x4]
  4133b6: ed93 7a56    	vldr	s14, [r3, #344]
  4133ba: eddd 7a00    	vldr	s15, [sp]
  4133be: ee77 7a27    	vadd.f32	s15, s14, s15
  4133c2: 9b01         	ldr	r3, [sp, #0x4]
  4133c4: edc3 7a56    	vstr	s15, [r3, #344]
  4133c8: 9b01         	ldr	r3, [sp, #0x4]
  4133ca: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  4133ce: 681b         	ldr	r3, [r3]
  4133d0: 3390         	adds	r3, #0x90
  4133d2: 681b         	ldr	r3, [r3]
  4133d4: 9a01         	ldr	r2, [sp, #0x4]
  4133d6: f8d2 11f0    	ldr.w	r1, [r2, #0x1f0]
  4133da: 9a01         	ldr	r2, [sp, #0x4]
  4133dc: f892 2180    	ldrb.w	r2, [r2, #0x180]
  4133e0: 4608         	mov	r0, r1
  4133e2: 4611         	mov	r1, r2
  4133e4: 4798         	blx	r3
  4133e6: 9b01         	ldr	r3, [sp, #0x4]
  4133e8: 681b         	ldr	r3, [r3]
  4133ea: f503 7315    	add.w	r3, r3, #0x254
  4133ee: 681b         	ldr	r3, [r3]
  4133f0: 9a01         	ldr	r2, [sp, #0x4]
  4133f2: 4610         	mov	r0, r2
  4133f4: 9900         	ldr	r1, [sp]
  4133f6: 4798         	blx	r3
  4133f8: 9b01         	ldr	r3, [sp, #0x4]
  4133fa: f893 3181    	ldrb.w	r3, [r3, #0x181]
  4133fe: 2b00         	cmp	r3, #0x0
  413400: d013         	beq	0x41342a <UZI::updateItemStep(float)+0x82> @ imm = #0x26
  413402: 9b01         	ldr	r3, [sp, #0x4]
  413404: ed93 8a56    	vldr	s16, [r3, #344]
  413408: 9b01         	ldr	r3, [sp, #0x4]
  41340a: 681b         	ldr	r3, [r3]
  41340c: f503 732e    	add.w	r3, r3, #0x2b8
  413410: 681b         	ldr	r3, [r3]
  413412: 9a01         	ldr	r2, [sp, #0x4]
  413414: 4610         	mov	r0, r2
  413416: 4798         	blx	r3
  413418: ee07 0a90    	vmov	s15, r0
  41341c: eeb4 8ae7    	vcmpe.f32	s16, s15
  413420: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  413424: dd01         	ble	0x41342a <UZI::updateItemStep(float)+0x82> @ imm = #0x2
  413426: 2301         	movs	r3, #0x1
  413428: e000         	b	0x41342c <UZI::updateItemStep(float)+0x84> @ imm = #0x0
  41342a: 2300         	movs	r3, #0x0
  41342c: 2b00         	cmp	r3, #0x0
  41342e: d043         	beq	0x4134b8 <UZI::updateItemStep(float)+0x110> @ imm = #0x86
  413430: 9b01         	ldr	r3, [sp, #0x4]
  413432: 2200         	movs	r2, #0x0
  413434: f883 2181    	strb.w	r2, [r3, #0x181]
  413438: 9b01         	ldr	r3, [sp, #0x4]
  41343a: f04f 0200    	mov.w	r2, #0x0
  41343e: f8c3 2110    	str.w	r2, [r3, #0x110]
  413442: 9b01         	ldr	r3, [sp, #0x4]
  413444: 681b         	ldr	r3, [r3]
  413446: f503 732d    	add.w	r3, r3, #0x2b4
  41344a: 681b         	ldr	r3, [r3]
  41344c: 9a01         	ldr	r2, [sp, #0x4]
  41344e: 4610         	mov	r0, r2
  413450: 4798         	blx	r3
  413452: 4602         	mov	r2, r0
  413454: 9b01         	ldr	r3, [sp, #0x4]
  413456: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  41345a: b21b         	sxth	r3, r3
  41345c: 1ad3         	subs	r3, r2, r3
  41345e: 9303         	str	r3, [sp, #0xc]
  413460: 9b01         	ldr	r3, [sp, #0x4]
  413462: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  413466: b29a         	uxth	r2, r3
  413468: 9b03         	ldr	r3, [sp, #0xc]
  41346a: b29b         	uxth	r3, r3
  41346c: 1ad3         	subs	r3, r2, r3
  41346e: b29b         	uxth	r3, r3
  413470: b29a         	uxth	r2, r3
  413472: 9b01         	ldr	r3, [sp, #0x4]
  413474: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  413478: 9b01         	ldr	r3, [sp, #0x4]
  41347a: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  41347e: b29a         	uxth	r2, r3
  413480: 9b03         	ldr	r3, [sp, #0xc]
  413482: b29b         	uxth	r3, r3
  413484: 4413         	add	r3, r2
  413486: b29a         	uxth	r2, r3
  413488: 9b01         	ldr	r3, [sp, #0x4]
  41348a: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  41348e: b21b         	sxth	r3, r3
  413490: ea03 73e3    	and.w	r3, r3, r3, asr #31
  413494: b29b         	uxth	r3, r3
  413496: b29b         	uxth	r3, r3
  413498: 4413         	add	r3, r2
  41349a: b29b         	uxth	r3, r3
  41349c: b29a         	uxth	r2, r3
  41349e: 9b01         	ldr	r3, [sp, #0x4]
  4134a0: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  4134a4: 9b01         	ldr	r3, [sp, #0x4]
  4134a6: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  4134aa: b21b         	sxth	r3, r3
  4134ac: ea23 73e3    	bic.w	r3, r3, r3, asr #31
  4134b0: b29a         	uxth	r2, r3
  4134b2: 9b01         	ldr	r3, [sp, #0x4]
  4134b4: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  4134b8: b005         	add	sp, #0x14
  4134ba: ecbd 8b02    	vpop	{d8}
  4134be: f85d fb04    	ldr	pc, [sp], #4

// ==== UZI::updateRemoteItemStep
//      file offset 0x4134c4 (= ELF address; Ghidra 0x4234c4), 94 bytes, Thumb-2
  4134c4: b500         	push	{lr}
  4134c6: b083         	sub	sp, #0xc
  4134c8: 9001         	str	r0, [sp, #0x4]
  4134ca: 9100         	str	r1, [sp]
  4134cc: 9b01         	ldr	r3, [sp, #0x4]
  4134ce: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  4134d2: 681b         	ldr	r3, [r3]
  4134d4: 3390         	adds	r3, #0x90
  4134d6: 681b         	ldr	r3, [r3]
  4134d8: 9a01         	ldr	r2, [sp, #0x4]
  4134da: f8d2 11f0    	ldr.w	r1, [r2, #0x1f0]
  4134de: 9a01         	ldr	r2, [sp, #0x4]
  4134e0: f892 2180    	ldrb.w	r2, [r2, #0x180]
  4134e4: 4608         	mov	r0, r1
  4134e6: 4611         	mov	r1, r2
  4134e8: 4798         	blx	r3
  4134ea: 9b01         	ldr	r3, [sp, #0x4]
  4134ec: 681b         	ldr	r3, [r3]
  4134ee: f503 7315    	add.w	r3, r3, #0x254
  4134f2: 681b         	ldr	r3, [r3]
  4134f4: 9a01         	ldr	r2, [sp, #0x4]
  4134f6: 4610         	mov	r0, r2
  4134f8: 9900         	ldr	r1, [sp]
  4134fa: 4798         	blx	r3
  4134fc: 9b01         	ldr	r3, [sp, #0x4]
  4134fe: f893 2194    	ldrb.w	r2, [r3, #0x194]
  413502: 9b01         	ldr	r3, [sp, #0x4]
  413504: f893 3195    	ldrb.w	r3, [r3, #0x195]
  413508: 429a         	cmp	r2, r3
  41350a: d007         	beq	0x41351c <UZI::updateRemoteItemStep(float)+0x58> @ imm = #0xe
  41350c: 9b01         	ldr	r3, [sp, #0x4]
  41350e: 681b         	ldr	r3, [r3]
  413510: f503 7318    	add.w	r3, r3, #0x260
  413514: 681b         	ldr	r3, [r3]
  413516: 9801         	ldr	r0, [sp, #0x4]
  413518: 9900         	ldr	r1, [sp]
  41351a: 4798         	blx	r3
  41351c: b003         	add	sp, #0xc
  41351e: f85d fb04    	ldr	pc, [sp], #4

// ==== UZI::remoteTriggerPull
//      file offset 0x413524 (= ELF address; Ghidra 0x423524), 116 bytes, Thumb-2
  413524: b500         	push	{lr}
  413526: b083         	sub	sp, #0xc
  413528: 9001         	str	r0, [sp, #0x4]
  41352a: 9100         	str	r1, [sp]
  41352c: 9b01         	ldr	r3, [sp, #0x4]
  41352e: ed93 7a44    	vldr	s14, [r3, #272]
  413532: 9b01         	ldr	r3, [sp, #0x4]
  413534: edd3 7a57    	vldr	s15, [r3, #348]
  413538: eeb4 7ae7    	vcmpe.f32	s14, s15
  41353c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  413540: dd27         	ble	0x413592 <UZI::remoteTriggerPull(float)+0x6e> @ imm = #0x4e
  413542: 9b01         	ldr	r3, [sp, #0x4]
  413544: f04f 0200    	mov.w	r2, #0x0
  413548: f8c3 2110    	str.w	r2, [r3, #0x110]
  41354c: 9b01         	ldr	r3, [sp, #0x4]
  41354e: 2201         	movs	r2, #0x1
  413550: f883 2180    	strb.w	r2, [r3, #0x180]
  413554: 9b01         	ldr	r3, [sp, #0x4]
  413556: 681b         	ldr	r3, [r3]
  413558: f503 7325    	add.w	r3, r3, #0x294
  41355c: 681b         	ldr	r3, [r3]
  41355e: 9801         	ldr	r0, [sp, #0x4]
  413560: 4798         	blx	r3
  413562: 9b01         	ldr	r3, [sp, #0x4]
  413564: 681b         	ldr	r3, [r3]
  413566: f503 7342    	add.w	r3, r3, #0x308
  41356a: 681b         	ldr	r3, [r3]
  41356c: 9a01         	ldr	r2, [sp, #0x4]
  41356e: 4610         	mov	r0, r2
  413570: 4798         	blx	r3
  413572: 9b01         	ldr	r3, [sp, #0x4]
  413574: 681b         	ldr	r3, [r3]
  413576: f503 7343    	add.w	r3, r3, #0x30c
  41357a: 681b         	ldr	r3, [r3]
  41357c: 9a01         	ldr	r2, [sp, #0x4]
  41357e: 4610         	mov	r0, r2
  413580: 4798         	blx	r3
  413582: 9b01         	ldr	r3, [sp, #0x4]
  413584: f893 3195    	ldrb.w	r3, [r3, #0x195]
  413588: 3301         	adds	r3, #0x1
  41358a: b2da         	uxtb	r2, r3
  41358c: 9b01         	ldr	r3, [sp, #0x4]
  41358e: f883 2195    	strb.w	r2, [r3, #0x195]
  413592: b003         	add	sp, #0xc
  413594: f85d fb04    	ldr	pc, [sp], #4

// ==== UZI::getShellPoint
//      file offset 0x413598 (= ELF address; Ghidra 0x423598), 204 bytes, Thumb-2
  413598: b510         	push	{r4, lr}
  41359a: b08e         	sub	sp, #0x38
  41359c: 9001         	str	r0, [sp, #0x4]
  41359e: 9100         	str	r1, [sp]
  4135a0: 4c2e         	ldr	r4, [pc, #0xb8]         @ 0x41365c <UZI::getShellPoint()+0xc4>
  4135a2: 447c         	add	r4, pc
  4135a4: ab02         	add	r3, sp, #0x8
  4135a6: 4618         	mov	r0, r3
  4135a8: f04f 0100    	mov.w	r1, #0x0
  4135ac: f2c4 11f0    	movt	r1, #0x41f0
  4135b0: f04f 0200    	mov.w	r2, #0x0
  4135b4: f2c4 1270    	movt	r2, #0x4170
  4135b8: f17f fb9a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x17f734
  4135bc: 9b00         	ldr	r3, [sp]
  4135be: 681b         	ldr	r3, [r3]
  4135c0: 3350         	adds	r3, #0x50
  4135c2: 681b         	ldr	r3, [r3]
  4135c4: 9a00         	ldr	r2, [sp]
  4135c6: 4610         	mov	r0, r2
  4135c8: 4798         	blx	r3
  4135ca: 4602         	mov	r2, r0
  4135cc: a906         	add	r1, sp, #0x18
  4135ce: ab02         	add	r3, sp, #0x8
  4135d0: 4608         	mov	r0, r1
  4135d2: 4611         	mov	r1, r2
  4135d4: 461a         	mov	r2, r3
  4135d6: f7fe fd69    	bl	0x4120ac <TrainingStage::doLesson(float)+0x7dd4> @ imm = #-0x152e
  4135da: 9b00         	ldr	r3, [sp]
  4135dc: 681b         	ldr	r3, [r3]
  4135de: f503 73c2    	add.w	r3, r3, #0x184
  4135e2: 681b         	ldr	r3, [r3]
  4135e4: 9a00         	ldr	r2, [sp]
  4135e6: a908         	add	r1, sp, #0x20
  4135e8: 4608         	mov	r0, r1
  4135ea: 4611         	mov	r1, r2
  4135ec: 4798         	blx	r3
  4135ee: a904         	add	r1, sp, #0x10
  4135f0: aa06         	add	r2, sp, #0x18
  4135f2: ab08         	add	r3, sp, #0x20
  4135f4: 4608         	mov	r0, r1
  4135f6: 4611         	mov	r1, r2
  4135f8: 461a         	mov	r2, r3
  4135fa: f17e fe93    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x17ed26
  4135fe: 4b18         	ldr	r3, [pc, #0x60]         @ 0x413660 <UZI::getShellPoint()+0xc8>
  413600: 58e3         	ldr	r3, [r4, r3]
  413602: 681b         	ldr	r3, [r3]
  413604: 681b         	ldr	r3, [r3]
  413606: f503 73c4    	add.w	r3, r3, #0x188
  41360a: 681b         	ldr	r3, [r3]
  41360c: 4a14         	ldr	r2, [pc, #0x50]         @ 0x413660 <UZI::getShellPoint()+0xc8>
  41360e: 58a2         	ldr	r2, [r4, r2]
  413610: 6812         	ldr	r2, [r2]
  413612: a908         	add	r1, sp, #0x20
  413614: 4608         	mov	r0, r1
  413616: 4611         	mov	r1, r2
  413618: 4798         	blx	r3
  41361a: a906         	add	r1, sp, #0x18
  41361c: aa04         	add	r2, sp, #0x10
  41361e: ab08         	add	r3, sp, #0x20
  413620: 4608         	mov	r0, r1
  413622: 4611         	mov	r1, r2
  413624: 461a         	mov	r2, r3
  413626: f17e fe7d    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x17ecfa
  41362a: aa04         	add	r2, sp, #0x10
  41362c: ab06         	add	r3, sp, #0x18
  41362e: 4610         	mov	r0, r2
  413630: 4619         	mov	r1, r3
  413632: f17f fb8b    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x17f716
  413636: eddd 7a04    	vldr	s15, [sp, #16]
  41363a: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  41363e: eddd 7a05    	vldr	s15, [sp, #20]
  413642: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  413646: 9b01         	ldr	r3, [sp, #0x4]
  413648: 4618         	mov	r0, r3
  41364a: eeb0 0b46    	vmov.f64	d0, d6
  41364e: eeb0 1b47    	vmov.f64	d1, d7
  413652: f7fe fd3b    	bl	0x4120cc <TrainingStage::doLesson(float)+0x7df4> @ imm = #-0x158a
  413656: 9801         	ldr	r0, [sp, #0x4]
  413658: b00e         	add	sp, #0x38
  41365a: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x41365b); words below are literal-pool data ---
  41365c: f466 0051    	orn	r0, r6, #0xd10000
  413660: d744         	bvc	0x4136ec <UZI::setPrimaryConfiguration()+0x40> @ imm = #0x88
  413662: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== UZI::playSound
//      file offset 0x413664 (= ELF address; Ghidra 0x423664), 72 bytes, Thumb-2
  413664: b510         	push	{r4, lr}
  413666: b088         	sub	sp, #0x20
  413668: 9003         	str	r0, [sp, #0xc]
  41366a: 4a0e         	ldr	r2, [pc, #0x38]         @ 0x4136a4 <UZI::playSound()+0x40>
  41366c: 447a         	add	r2, pc
  41366e: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x4136a8 <UZI::playSound()+0x44>
  413670: 58d3         	ldr	r3, [r2, r3]
  413672: 681c         	ldr	r4, [r3]
  413674: 9b03         	ldr	r3, [sp, #0xc]
  413676: 681b         	ldr	r3, [r3]
  413678: f503 7348    	add.w	r3, r3, #0x320
  41367c: 681b         	ldr	r3, [r3]
  41367e: 9a03         	ldr	r2, [sp, #0xc]
  413680: a904         	add	r1, sp, #0x10
  413682: 4608         	mov	r0, r1
  413684: 4611         	mov	r1, r2
  413686: 4798         	blx	r3
  413688: 466b         	mov	r3, sp
  41368a: aa06         	add	r2, sp, #0x18
  41368c: e892 0003    	ldm.w	r2, {r0, r1}
  413690: e883 0003    	stm.w	r3, {r0, r1}
  413694: ab04         	add	r3, sp, #0x10
  413696: cb0c         	ldm	r3, {r2, r3}
  413698: 4620         	mov	r0, r4
  41369a: 2114         	movs	r1, #0x14
  41369c: f7e4 fcac    	bl	0x3f7ff8 <Sound::playSoundPosition(int, cpVect)> @ imm = #-0x1b6a8
  4136a0: b008         	add	sp, #0x20
  4136a2: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x4136a3); words below are literal-pool data ---
  4136a4: f39c 0051    	<unknown>
  4136a8: d730         	bvc	0x41370c <UZI::setPrimaryConfiguration()+0x60> @ imm = #0x60
  4136aa: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== UZI::setPrimaryConfiguration
//      file offset 0x4136ac (= ELF address; Ghidra 0x4236ac), 312 bytes, Thumb-2
  4136ac: b530         	push	{r4, r5, lr}
  4136ae: b085         	sub	sp, #0x14
  4136b0: 9001         	str	r0, [sp, #0x4]
  4136b2: 9b01         	ldr	r3, [sp, #0x4]
  4136b4: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  4136b8: 2b00         	cmp	r3, #0x0
  4136ba: d019         	beq	0x4136f0 <UZI::setPrimaryConfiguration()+0x44> @ imm = #0x32
  4136bc: 9b01         	ldr	r3, [sp, #0x4]
  4136be: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  4136c2: 4b47         	ldr	r3, [pc, #0x11c]        @ 0x4137e0 <UZI::setPrimaryConfiguration()+0x134>
  4136c4: 447b         	add	r3, pc
  4136c6: ed93 6b00    	vldr	d6, [r3]
  4136ca: ed93 7b02    	vldr	d7, [r3, #8]
  4136ce: 4610         	mov	r0, r2
  4136d0: eeb0 0b46    	vmov.f64	d0, d6
  4136d4: eeb0 1b47    	vmov.f64	d1, d7
  4136d8: f7fe fd0c    	bl	0x4120f4 <TrainingStage::doLesson(float)+0x7e1c> @ imm = #-0x15e8
  4136dc: 9b01         	ldr	r3, [sp, #0x4]
  4136de: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  4136e2: 4618         	mov	r0, r3
  4136e4: f04f 0200    	mov.w	r2, #0x0
  4136e8: f04f 0300    	mov.w	r3, #0x0
  4136ec: f2bf fd51    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x2bfaa2
  4136f0: 9b01         	ldr	r3, [sp, #0x4]
  4136f2: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  4136f6: 681b         	ldr	r3, [r3]
  4136f8: 334c         	adds	r3, #0x4c
  4136fa: 681c         	ldr	r4, [r3]
  4136fc: 9b01         	ldr	r3, [sp, #0x4]
  4136fe: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  413702: ab02         	add	r3, sp, #0x8
  413704: 4618         	mov	r0, r3
  413706: f04f 0100    	mov.w	r1, #0x0
  41370a: f2c4 01a0    	movt	r1, #0x40a0
  41370e: f04f 0200    	mov.w	r2, #0x0
  413712: f17f faed    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x17f5da
  413716: ab02         	add	r3, sp, #0x8
  413718: 4628         	mov	r0, r5
  41371a: 4619         	mov	r1, r3
  41371c: 47a0         	blx	r4
  41371e: 9b01         	ldr	r3, [sp, #0x4]
  413720: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  413724: 681b         	ldr	r3, [r3]
  413726: 337c         	adds	r3, #0x7c
  413728: 681c         	ldr	r4, [r3]
  41372a: 9b01         	ldr	r3, [sp, #0x4]
  41372c: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  413730: ab02         	add	r3, sp, #0x8
  413732: 4618         	mov	r0, r3
  413734: f04f 0100    	mov.w	r1, #0x0
  413738: f04f 527c    	mov.w	r2, #0x3f000000
  41373c: f17f fad8    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x17f5b0
  413740: ab02         	add	r3, sp, #0x8
  413742: 4628         	mov	r0, r5
  413744: 4619         	mov	r1, r3
  413746: 47a0         	blx	r4
  413748: 9b01         	ldr	r3, [sp, #0x4]
  41374a: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  41374e: 681b         	ldr	r3, [r3]
  413750: 3398         	adds	r3, #0x98
  413752: 681b         	ldr	r3, [r3]
  413754: 9a01         	ldr	r2, [sp, #0x4]
  413756: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  41375a: 4610         	mov	r0, r2
  41375c: f04f 0100    	mov.w	r1, #0x0
  413760: 4798         	blx	r3
  413762: 9b01         	ldr	r3, [sp, #0x4]
  413764: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  413768: 681b         	ldr	r3, [r3]
  41376a: 3340         	adds	r3, #0x40
  41376c: 681b         	ldr	r3, [r3]
  41376e: 9a01         	ldr	r2, [sp, #0x4]
  413770: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  413774: 4610         	mov	r0, r2
  413776: f04f 517e    	mov.w	r1, #0x3f800000
  41377a: 4798         	blx	r3
  41377c: 9b01         	ldr	r3, [sp, #0x4]
  41377e: 681b         	ldr	r3, [r3]
  413780: 334c         	adds	r3, #0x4c
  413782: 681c         	ldr	r4, [r3]
  413784: 9d01         	ldr	r5, [sp, #0x4]
  413786: ab02         	add	r3, sp, #0x8
  413788: 4618         	mov	r0, r3
  41378a: f04f 0100    	mov.w	r1, #0x0
  41378e: f04f 0200    	mov.w	r2, #0x0
  413792: f17f faad    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x17f55a
  413796: ab02         	add	r3, sp, #0x8
  413798: 4628         	mov	r0, r5
  41379a: 4619         	mov	r1, r3
  41379c: 47a0         	blx	r4
  41379e: 9b01         	ldr	r3, [sp, #0x4]
  4137a0: 681b         	ldr	r3, [r3]
  4137a2: 3340         	adds	r3, #0x40
  4137a4: 681b         	ldr	r3, [r3]
  4137a6: 9a01         	ldr	r2, [sp, #0x4]
  4137a8: 4610         	mov	r0, r2
  4137aa: f04f 517e    	mov.w	r1, #0x3f800000
  4137ae: 4798         	blx	r3
  4137b0: 9b01         	ldr	r3, [sp, #0x4]
  4137b2: 681b         	ldr	r3, [r3]
  4137b4: 3398         	adds	r3, #0x98
  4137b6: 681b         	ldr	r3, [r3]
  4137b8: 9a01         	ldr	r2, [sp, #0x4]
  4137ba: 4610         	mov	r0, r2
  4137bc: f04f 0100    	mov.w	r1, #0x0
  4137c0: 4798         	blx	r3
  4137c2: 9b01         	ldr	r3, [sp, #0x4]
  4137c4: 2200         	movs	r2, #0x0
  4137c6: f883 2195    	strb.w	r2, [r3, #0x195]
  4137ca: 9b01         	ldr	r3, [sp, #0x4]
  4137cc: 2200         	movs	r2, #0x0
  4137ce: f883 2194    	strb.w	r2, [r3, #0x194]
  4137d2: 9b01         	ldr	r3, [sp, #0x4]
  4137d4: f04f 0200    	mov.w	r2, #0x0
  4137d8: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  4137dc: b005         	add	sp, #0x14
  4137de: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x4137df); words below are literal-pool data ---
  4137e0: 7b28         	ldrb	r0, [r5, #0xc]
  4137e2: 003c         	movs	r4, r7

// ==== UZI::setSecondaryConfiguration
//      file offset 0x4137e4 (= ELF address; Ghidra 0x4237e4), 340 bytes, Thumb-2
  4137e4: b530         	push	{r4, r5, lr}
  4137e6: b085         	sub	sp, #0x14
  4137e8: 9001         	str	r0, [sp, #0x4]
  4137ea: 9b01         	ldr	r3, [sp, #0x4]
  4137ec: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  4137f0: 2b00         	cmp	r3, #0x0
  4137f2: d019         	beq	0x413828 <UZI::setSecondaryConfiguration()+0x44> @ imm = #0x32
  4137f4: 9b01         	ldr	r3, [sp, #0x4]
  4137f6: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  4137fa: 4b4e         	ldr	r3, [pc, #0x138]        @ 0x413934 <UZI::setSecondaryConfiguration()+0x150>
  4137fc: 447b         	add	r3, pc
  4137fe: ed93 6b00    	vldr	d6, [r3]
  413802: ed93 7b02    	vldr	d7, [r3, #8]
  413806: 4610         	mov	r0, r2
  413808: eeb0 0b46    	vmov.f64	d0, d6
  41380c: eeb0 1b47    	vmov.f64	d1, d7
  413810: f7fe fc70    	bl	0x4120f4 <TrainingStage::doLesson(float)+0x7e1c> @ imm = #-0x1720
  413814: 9b01         	ldr	r3, [sp, #0x4]
  413816: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  41381a: 4618         	mov	r0, r3
  41381c: f04f 0200    	mov.w	r2, #0x0
  413820: f04f 0300    	mov.w	r3, #0x0
  413824: f2bf fcb5    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x2bf96a
  413828: 9b01         	ldr	r3, [sp, #0x4]
  41382a: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  41382e: 681b         	ldr	r3, [r3]
  413830: 334c         	adds	r3, #0x4c
  413832: 681c         	ldr	r4, [r3]
  413834: 9b01         	ldr	r3, [sp, #0x4]
  413836: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  41383a: ab02         	add	r3, sp, #0x8
  41383c: 4618         	mov	r0, r3
  41383e: f04f 4142    	mov.w	r1, #0xc2000000
  413842: f04f 0200    	mov.w	r2, #0x0
  413846: f2c4 02a0    	movt	r2, #0x40a0
  41384a: f17f fa51    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x17f4a2
  41384e: ab02         	add	r3, sp, #0x8
  413850: 4628         	mov	r0, r5
  413852: 4619         	mov	r1, r3
  413854: 47a0         	blx	r4
  413856: 9b01         	ldr	r3, [sp, #0x4]
  413858: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  41385c: 681b         	ldr	r3, [r3]
  41385e: 337c         	adds	r3, #0x7c
  413860: 681c         	ldr	r4, [r3]
  413862: 9b01         	ldr	r3, [sp, #0x4]
  413864: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  413868: ab02         	add	r3, sp, #0x8
  41386a: 4618         	mov	r0, r3
  41386c: f04f 517c    	mov.w	r1, #0x3f000000
  413870: f04f 527c    	mov.w	r2, #0x3f000000
  413874: f17f fa3c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x17f478
  413878: ab02         	add	r3, sp, #0x8
  41387a: 4628         	mov	r0, r5
  41387c: 4619         	mov	r1, r3
  41387e: 47a0         	blx	r4
  413880: 9b01         	ldr	r3, [sp, #0x4]
  413882: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  413886: 681b         	ldr	r3, [r3]
  413888: 3398         	adds	r3, #0x98
  41388a: 681b         	ldr	r3, [r3]
  41388c: 9a01         	ldr	r2, [sp, #0x4]
  41388e: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  413892: 4610         	mov	r0, r2
  413894: f04f 0100    	mov.w	r1, #0x0
  413898: f2c4 2196    	movt	r1, #0x4296
  41389c: 4798         	blx	r3
  41389e: 9b01         	ldr	r3, [sp, #0x4]
  4138a0: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  4138a4: 681b         	ldr	r3, [r3]
  4138a6: 3340         	adds	r3, #0x40
  4138a8: 681b         	ldr	r3, [r3]
  4138aa: 9a01         	ldr	r2, [sp, #0x4]
  4138ac: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  4138b0: 4610         	mov	r0, r2
  4138b2: f04f 517e    	mov.w	r1, #0x3f800000
  4138b6: 4798         	blx	r3
  4138b8: 9b01         	ldr	r3, [sp, #0x4]
  4138ba: 681b         	ldr	r3, [r3]
  4138bc: 334c         	adds	r3, #0x4c
  4138be: 681c         	ldr	r4, [r3]
  4138c0: 9d01         	ldr	r5, [sp, #0x4]
  4138c2: ab02         	add	r3, sp, #0x8
  4138c4: 4618         	mov	r0, r3
  4138c6: f04f 0100    	mov.w	r1, #0x0
  4138ca: f04f 0200    	mov.w	r2, #0x0
  4138ce: f17f fa0f    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x17f41e
  4138d2: ab02         	add	r3, sp, #0x8
  4138d4: 4628         	mov	r0, r5
  4138d6: 4619         	mov	r1, r3
  4138d8: 47a0         	blx	r4
  4138da: 9b01         	ldr	r3, [sp, #0x4]
  4138dc: 681b         	ldr	r3, [r3]
  4138de: 3340         	adds	r3, #0x40
  4138e0: 681b         	ldr	r3, [r3]
  4138e2: 9a01         	ldr	r2, [sp, #0x4]
  4138e4: 4610         	mov	r0, r2
  4138e6: f04f 517e    	mov.w	r1, #0x3f800000
  4138ea: 4798         	blx	r3
  4138ec: 9b01         	ldr	r3, [sp, #0x4]
  4138ee: 681b         	ldr	r3, [r3]
  4138f0: 3398         	adds	r3, #0x98
  4138f2: 681b         	ldr	r3, [r3]
  4138f4: 9a01         	ldr	r2, [sp, #0x4]
  4138f6: 4610         	mov	r0, r2
  4138f8: f04f 0100    	mov.w	r1, #0x0
  4138fc: 4798         	blx	r3
  4138fe: 9b01         	ldr	r3, [sp, #0x4]
  413900: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  413904: 681b         	ldr	r3, [r3]
  413906: 3390         	adds	r3, #0x90
  413908: 681b         	ldr	r3, [r3]
  41390a: 9a01         	ldr	r2, [sp, #0x4]
  41390c: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  413910: 4610         	mov	r0, r2
  413912: 2100         	movs	r1, #0x0
  413914: 4798         	blx	r3
  413916: 9b01         	ldr	r3, [sp, #0x4]
  413918: 2200         	movs	r2, #0x0
  41391a: f883 2195    	strb.w	r2, [r3, #0x195]
  41391e: 9b01         	ldr	r3, [sp, #0x4]
  413920: 2200         	movs	r2, #0x0
  413922: f883 2194    	strb.w	r2, [r3, #0x194]
  413926: 9b01         	ldr	r3, [sp, #0x4]
  413928: f04f 0200    	mov.w	r2, #0x0
  41392c: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  413930: b005         	add	sp, #0x14
  413932: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x413933); words below are literal-pool data ---
  413934: 79f0         	ldrb	r0, [r6, #0x7]
  413936: 003c         	movs	r4, r7

// ==== UZI::setDualConfiguration
//      file offset 0x413938 (= ELF address; Ghidra 0x423938), 312 bytes, Thumb-2
  413938: b530         	push	{r4, r5, lr}
  41393a: b085         	sub	sp, #0x14
  41393c: 9001         	str	r0, [sp, #0x4]
  41393e: 9b01         	ldr	r3, [sp, #0x4]
  413940: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  413944: 2b00         	cmp	r3, #0x0
  413946: d019         	beq	0x41397c <UZI::setDualConfiguration()+0x44> @ imm = #0x32
  413948: 9b01         	ldr	r3, [sp, #0x4]
  41394a: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  41394e: 4b47         	ldr	r3, [pc, #0x11c]        @ 0x413a6c <UZI::setDualConfiguration()+0x134>
  413950: 447b         	add	r3, pc
  413952: ed93 6b00    	vldr	d6, [r3]
  413956: ed93 7b02    	vldr	d7, [r3, #8]
  41395a: 4610         	mov	r0, r2
  41395c: eeb0 0b46    	vmov.f64	d0, d6
  413960: eeb0 1b47    	vmov.f64	d1, d7
  413964: f7fe fbc6    	bl	0x4120f4 <TrainingStage::doLesson(float)+0x7e1c> @ imm = #-0x1874
  413968: 9b01         	ldr	r3, [sp, #0x4]
  41396a: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  41396e: 4618         	mov	r0, r3
  413970: f04f 0200    	mov.w	r2, #0x0
  413974: f04f 0300    	mov.w	r3, #0x0
  413978: f2bf fc0b    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x2bf816
  41397c: 9b01         	ldr	r3, [sp, #0x4]
  41397e: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  413982: 681b         	ldr	r3, [r3]
  413984: 334c         	adds	r3, #0x4c
  413986: 681c         	ldr	r4, [r3]
  413988: 9b01         	ldr	r3, [sp, #0x4]
  41398a: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  41398e: ab02         	add	r3, sp, #0x8
  413990: 4618         	mov	r0, r3
  413992: f04f 0100    	mov.w	r1, #0x0
  413996: f2c4 01a0    	movt	r1, #0x40a0
  41399a: f04f 0200    	mov.w	r2, #0x0
  41399e: f17f f9a7    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x17f34e
  4139a2: ab02         	add	r3, sp, #0x8
  4139a4: 4628         	mov	r0, r5
  4139a6: 4619         	mov	r1, r3
  4139a8: 47a0         	blx	r4
  4139aa: 9b01         	ldr	r3, [sp, #0x4]
  4139ac: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  4139b0: 681b         	ldr	r3, [r3]
  4139b2: 337c         	adds	r3, #0x7c
  4139b4: 681c         	ldr	r4, [r3]
  4139b6: 9b01         	ldr	r3, [sp, #0x4]
  4139b8: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  4139bc: ab02         	add	r3, sp, #0x8
  4139be: 4618         	mov	r0, r3
  4139c0: f04f 0100    	mov.w	r1, #0x0
  4139c4: f04f 527c    	mov.w	r2, #0x3f000000
  4139c8: f17f f992    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x17f324
  4139cc: ab02         	add	r3, sp, #0x8
  4139ce: 4628         	mov	r0, r5
  4139d0: 4619         	mov	r1, r3
  4139d2: 47a0         	blx	r4
  4139d4: 9b01         	ldr	r3, [sp, #0x4]
  4139d6: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  4139da: 681b         	ldr	r3, [r3]
  4139dc: 3398         	adds	r3, #0x98
  4139de: 681b         	ldr	r3, [r3]
  4139e0: 9a01         	ldr	r2, [sp, #0x4]
  4139e2: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  4139e6: 4610         	mov	r0, r2
  4139e8: f04f 0100    	mov.w	r1, #0x0
  4139ec: 4798         	blx	r3
  4139ee: 9b01         	ldr	r3, [sp, #0x4]
  4139f0: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  4139f4: 681b         	ldr	r3, [r3]
  4139f6: 3340         	adds	r3, #0x40
  4139f8: 681b         	ldr	r3, [r3]
  4139fa: 9a01         	ldr	r2, [sp, #0x4]
  4139fc: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  413a00: 4610         	mov	r0, r2
  413a02: f04f 517e    	mov.w	r1, #0x3f800000
  413a06: 4798         	blx	r3
  413a08: 9b01         	ldr	r3, [sp, #0x4]
  413a0a: 681b         	ldr	r3, [r3]
  413a0c: 334c         	adds	r3, #0x4c
  413a0e: 681c         	ldr	r4, [r3]
  413a10: 9d01         	ldr	r5, [sp, #0x4]
  413a12: ab02         	add	r3, sp, #0x8
  413a14: 4618         	mov	r0, r3
  413a16: f04f 0100    	mov.w	r1, #0x0
  413a1a: f04f 0200    	mov.w	r2, #0x0
  413a1e: f17f f967    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x17f2ce
  413a22: ab02         	add	r3, sp, #0x8
  413a24: 4628         	mov	r0, r5
  413a26: 4619         	mov	r1, r3
  413a28: 47a0         	blx	r4
  413a2a: 9b01         	ldr	r3, [sp, #0x4]
  413a2c: 681b         	ldr	r3, [r3]
  413a2e: 3340         	adds	r3, #0x40
  413a30: 681b         	ldr	r3, [r3]
  413a32: 9a01         	ldr	r2, [sp, #0x4]
  413a34: 4610         	mov	r0, r2
  413a36: f04f 517e    	mov.w	r1, #0x3f800000
  413a3a: 4798         	blx	r3
  413a3c: 9b01         	ldr	r3, [sp, #0x4]
  413a3e: 681b         	ldr	r3, [r3]
  413a40: 3398         	adds	r3, #0x98
  413a42: 681b         	ldr	r3, [r3]
  413a44: 9a01         	ldr	r2, [sp, #0x4]
  413a46: 4610         	mov	r0, r2
  413a48: f04f 0100    	mov.w	r1, #0x0
  413a4c: 4798         	blx	r3
  413a4e: 9b01         	ldr	r3, [sp, #0x4]
  413a50: 2200         	movs	r2, #0x0
  413a52: f883 2195    	strb.w	r2, [r3, #0x195]
  413a56: 9b01         	ldr	r3, [sp, #0x4]
  413a58: 2200         	movs	r2, #0x0
  413a5a: f883 2194    	strb.w	r2, [r3, #0x194]
  413a5e: 9b01         	ldr	r3, [sp, #0x4]
  413a60: f04f 0200    	mov.w	r2, #0x0
  413a64: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  413a68: b005         	add	sp, #0x14
  413a6a: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x413a6b); words below are literal-pool data ---
  413a6c: 789c         	ldrb	r4, [r3, #0x2]
  413a6e: 003c         	movs	r4, r7

// ==== UZI::setMapConfiguration
//      file offset 0x413a70 (= ELF address; Ghidra 0x423a70), 248 bytes, Thumb-2
  413a70: b570         	push	{r4, r5, r6, lr}
  413a72: b084         	sub	sp, #0x10
  413a74: 9001         	str	r0, [sp, #0x4]
  413a76: 4c3a         	ldr	r4, [pc, #0xe8]         @ 0x413b60 <UZI::setMapConfiguration()+0xf0>
  413a78: 447c         	add	r4, pc
  413a7a: 9b01         	ldr	r3, [sp, #0x4]
  413a7c: f04f 0200    	mov.w	r2, #0x0
  413a80: f8c3 2190    	str.w	r2, [r3, #0x190]
  413a84: 9b01         	ldr	r3, [sp, #0x4]
  413a86: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  413a8a: 681b         	ldr	r3, [r3]
  413a8c: 334c         	adds	r3, #0x4c
  413a8e: 681d         	ldr	r5, [r3]
  413a90: 9b01         	ldr	r3, [sp, #0x4]
  413a92: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  413a96: ab02         	add	r3, sp, #0x8
  413a98: 4618         	mov	r0, r3
  413a9a: f04f 0100    	mov.w	r1, #0x0
  413a9e: f04f 0200    	mov.w	r2, #0x0
  413aa2: f17f f925    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x17f24a
  413aa6: ab02         	add	r3, sp, #0x8
  413aa8: 4630         	mov	r0, r6
  413aaa: 4619         	mov	r1, r3
  413aac: 47a8         	blx	r5
  413aae: 9b01         	ldr	r3, [sp, #0x4]
  413ab0: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  413ab4: 681b         	ldr	r3, [r3]
  413ab6: 337c         	adds	r3, #0x7c
  413ab8: 681d         	ldr	r5, [r3]
  413aba: 9b01         	ldr	r3, [sp, #0x4]
  413abc: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  413ac0: ab02         	add	r3, sp, #0x8
  413ac2: 4618         	mov	r0, r3
  413ac4: f04f 517c    	mov.w	r1, #0x3f000000
  413ac8: f04f 527c    	mov.w	r2, #0x3f000000
  413acc: f17f f910    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x17f220
  413ad0: ab02         	add	r3, sp, #0x8
  413ad2: 4630         	mov	r0, r6
  413ad4: 4619         	mov	r1, r3
  413ad6: 47a8         	blx	r5
  413ad8: 9b01         	ldr	r3, [sp, #0x4]
  413ada: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  413ade: 681b         	ldr	r3, [r3]
  413ae0: 3398         	adds	r3, #0x98
  413ae2: 681b         	ldr	r3, [r3]
  413ae4: 9a01         	ldr	r2, [sp, #0x4]
  413ae6: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  413aea: 4610         	mov	r0, r2
  413aec: f04f 0100    	mov.w	r1, #0x0
  413af0: 4798         	blx	r3
  413af2: 9b01         	ldr	r3, [sp, #0x4]
  413af4: 681b         	ldr	r3, [r3]
  413af6: 334c         	adds	r3, #0x4c
  413af8: 681d         	ldr	r5, [r3]
  413afa: 9e01         	ldr	r6, [sp, #0x4]
  413afc: ab02         	add	r3, sp, #0x8
  413afe: 4618         	mov	r0, r3
  413b00: f04f 0100    	mov.w	r1, #0x0
  413b04: f04f 0200    	mov.w	r2, #0x0
  413b08: f17f f8f2    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x17f1e4
  413b0c: ab02         	add	r3, sp, #0x8
  413b0e: 4630         	mov	r0, r6
  413b10: 4619         	mov	r1, r3
  413b12: 47a8         	blx	r5
  413b14: 9b01         	ldr	r3, [sp, #0x4]
  413b16: 681b         	ldr	r3, [r3]
  413b18: 3340         	adds	r3, #0x40
  413b1a: 681b         	ldr	r3, [r3]
  413b1c: 9901         	ldr	r1, [sp, #0x4]
  413b1e: 4a11         	ldr	r2, [pc, #0x44]         @ 0x413b64 <UZI::setMapConfiguration()+0xf4>
  413b20: 58a2         	ldr	r2, [r4, r2]
  413b22: 6812         	ldr	r2, [r2]
  413b24: 4608         	mov	r0, r1
  413b26: 4611         	mov	r1, r2
  413b28: 4798         	blx	r3
  413b2a: 9b01         	ldr	r3, [sp, #0x4]
  413b2c: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  413b30: 681b         	ldr	r3, [r3]
  413b32: 3390         	adds	r3, #0x90
  413b34: 681b         	ldr	r3, [r3]
  413b36: 9a01         	ldr	r2, [sp, #0x4]
  413b38: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  413b3c: 4610         	mov	r0, r2
  413b3e: 2100         	movs	r1, #0x0
  413b40: 4798         	blx	r3
  413b42: 9b01         	ldr	r3, [sp, #0x4]
  413b44: 2200         	movs	r2, #0x0
  413b46: f883 2195    	strb.w	r2, [r3, #0x195]
  413b4a: 9b01         	ldr	r3, [sp, #0x4]
  413b4c: 2200         	movs	r2, #0x0
  413b4e: f883 2194    	strb.w	r2, [r3, #0x194]
  413b52: 9b01         	ldr	r3, [sp, #0x4]
  413b54: f04f 0200    	mov.w	r2, #0x0
  413b58: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  413b5c: b004         	add	sp, #0x10
  413b5e: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x413b5f); words below are literal-pool data ---
  413b60: ef90 0051    	<unknown>
  413b64: d748         	bvc	0x413bf8 <UZI::setRight(bool)+0x4> @ imm = #0x90
  413b66: ffff b500    	<unknown>

// ==== UZI::getWeaponTexture
//      file offset 0x413b68 (= ELF address; Ghidra 0x423b68), 40 bytes, Thumb-2
  413b68: b500         	push	{lr}
  413b6a: b083         	sub	sp, #0xc
  413b6c: 9001         	str	r0, [sp, #0x4]
  413b6e: 9b01         	ldr	r3, [sp, #0x4]
  413b70: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  413b74: 681b         	ldr	r3, [r3]
  413b76: f503 73fa    	add.w	r3, r3, #0x1f4
  413b7a: 681b         	ldr	r3, [r3]
  413b7c: 9a01         	ldr	r2, [sp, #0x4]
  413b7e: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  413b82: 4610         	mov	r0, r2
  413b84: 4798         	blx	r3
  413b86: 4603         	mov	r3, r0
  413b88: 4618         	mov	r0, r3
  413b8a: b003         	add	sp, #0xc
  413b8c: f85d fb04    	ldr	pc, [sp], #4

// ==== UZI::getWeaponRect
//      file offset 0x413b90 (= ELF address; Ghidra 0x423b90), 38 bytes, Thumb-2
  413b90: b500         	push	{lr}
  413b92: b083         	sub	sp, #0xc
  413b94: 9001         	str	r0, [sp, #0x4]
  413b96: 9100         	str	r1, [sp]
  413b98: 9b00         	ldr	r3, [sp]
  413b9a: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  413b9e: 4618         	mov	r0, r3
  413ba0: f6c9 f89c    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x136ec8
  413ba4: 4603         	mov	r3, r0
  413ba6: 9801         	ldr	r0, [sp, #0x4]
  413ba8: 4619         	mov	r1, r3
  413baa: f17f fbb5    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x17f76a
  413bae: 9801         	ldr	r0, [sp, #0x4]
  413bb0: b003         	add	sp, #0xc
  413bb2: f85d fb04    	ldr	pc, [sp], #4

// ==== UZI::isRight
//      file offset 0x413bb8 (= ELF address; Ghidra 0x423bb8), 60 bytes, Thumb-2
  413bb8: b500         	push	{lr}
  413bba: b083         	sub	sp, #0xc
  413bbc: 9001         	str	r0, [sp, #0x4]
  413bbe: 9b01         	ldr	r3, [sp, #0x4]
  413bc0: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  413bc4: 681b         	ldr	r3, [r3]
  413bc6: 3334         	adds	r3, #0x34
  413bc8: 681b         	ldr	r3, [r3]
  413bca: 9a01         	ldr	r2, [sp, #0x4]
  413bcc: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  413bd0: 4610         	mov	r0, r2
  413bd2: 4798         	blx	r3
  413bd4: ee07 0a10    	vmov	s14, r0
  413bd8: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  413bdc: eeb4 7ae7    	vcmpe.f32	s14, s15
  413be0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  413be4: bfd4         	ite	le
  413be6: 2300         	movle	r3, #0x0
  413be8: 2301         	movgt	r3, #0x1
  413bea: b2db         	uxtb	r3, r3
  413bec: 4618         	mov	r0, r3
  413bee: b003         	add	sp, #0xc
  413bf0: f85d fb04    	ldr	pc, [sp], #4

// ==== UZI::setRight
//      file offset 0x413bf4 (= ELF address; Ghidra 0x423bf4), 64 bytes, Thumb-2
  413bf4: b500         	push	{lr}
  413bf6: b083         	sub	sp, #0xc
  413bf8: 9001         	str	r0, [sp, #0x4]
  413bfa: 460b         	mov	r3, r1
  413bfc: f88d 3003    	strb.w	r3, [sp, #0x3]
  413c00: 9b01         	ldr	r3, [sp, #0x4]
  413c02: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  413c06: 681b         	ldr	r3, [r3]
  413c08: 3330         	adds	r3, #0x30
  413c0a: 681a         	ldr	r2, [r3]
  413c0c: 9b01         	ldr	r3, [sp, #0x4]
  413c0e: f8d3 11ec    	ldr.w	r1, [r3, #0x1ec]
  413c12: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  413c16: 2b00         	cmp	r3, #0x0
  413c18: d002         	beq	0x413c20 <UZI::setRight(bool)+0x2c> @ imm = #0x4
  413c1a: f04f 537e    	mov.w	r3, #0x3f800000
  413c1e: e003         	b	0x413c28 <UZI::setRight(bool)+0x34> @ imm = #0x6
  413c20: f04f 0300    	mov.w	r3, #0x0
  413c24: f6cb 7380    	movt	r3, #0xbf80
  413c28: 4608         	mov	r0, r1
  413c2a: 4619         	mov	r1, r3
  413c2c: 4790         	blx	r2
  413c2e: b003         	add	sp, #0xc
  413c30: f85d fb04    	ldr	pc, [sp], #4

// ==== UZI::getRANGE
//      file offset 0x413c34 (= ELF address; Ghidra 0x423c34), 16 bytes, Thumb-2
  413c34: 4b02         	ldr	r3, [pc, #0x8]          @ 0x413c40 <UZI::getRANGE()+0xc>
  413c36: 447b         	add	r3, pc
  413c38: 681b         	ldr	r3, [r3]
  413c3a: 4618         	mov	r0, r3
  413c3c: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x413c3d); words below are literal-pool data ---
  413c3e: bf00         	nop
  413c40: fa9a 0051    	<unknown>

// ==== UZI::getDAMAGE
//      file offset 0x413c44 (= ELF address; Ghidra 0x423c44), 16 bytes, Thumb-2
  413c44: 4b02         	ldr	r3, [pc, #0x8]          @ 0x413c50 <UZI::getDAMAGE()+0xc>
  413c46: 447b         	add	r3, pc
  413c48: 681b         	ldr	r3, [r3]
  413c4a: 4618         	mov	r0, r3
  413c4c: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x413c4d); words below are literal-pool data ---
  413c4e: bf00         	nop
  413c50: fa86 0051    	<unknown>

// ==== UZI::create
//      file offset 0x41708c (= ELF address; Ghidra 0x42708c), 112 bytes, Thumb-2
  41708c: b510         	push	{r4, lr}
  41708e: b082         	sub	sp, #0x8
  417090: f44f 70fc    	mov.w	r0, #0x1f8
  417094: f370 fc66    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x3708cc
  417098: 4603         	mov	r3, r0
  41709a: 461c         	mov	r4, r3
  41709c: 4620         	mov	r0, r4
  41709e: f7fb fee9    	bl	0x412e74 <UZI::UZI()>   @ imm = #-0x422e
  4170a2: 9401         	str	r4, [sp, #0x4]
  4170a4: 9b01         	ldr	r3, [sp, #0x4]
  4170a6: 2b00         	cmp	r3, #0x0
  4170a8: d00a         	beq	0x4170c0 <UZI::create()+0x34> @ imm = #0x14
  4170aa: 9b01         	ldr	r3, [sp, #0x4]
  4170ac: 681b         	ldr	r3, [r3]
  4170ae: 3318         	adds	r3, #0x18
  4170b0: 681b         	ldr	r3, [r3]
  4170b2: 9801         	ldr	r0, [sp, #0x4]
  4170b4: 4798         	blx	r3
  4170b6: 4603         	mov	r3, r0
  4170b8: 2b00         	cmp	r3, #0x0
  4170ba: d001         	beq	0x4170c0 <UZI::create()+0x34> @ imm = #0x2
  4170bc: 2301         	movs	r3, #0x1
  4170be: e000         	b	0x4170c2 <UZI::create()+0x36> @ imm = #0x0
  4170c0: 2300         	movs	r3, #0x0
  4170c2: 2b00         	cmp	r3, #0x0
  4170c4: d005         	beq	0x4170d2 <UZI::create()+0x46> @ imm = #0xa
  4170c6: 9b01         	ldr	r3, [sp, #0x4]
  4170c8: 4618         	mov	r0, r3
  4170ca: f180 ff17    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x180e2e
  4170ce: 9b01         	ldr	r3, [sp, #0x4]
  4170d0: e011         	b	0x4170f6 <UZI::create()+0x6a> @ imm = #0x22
  4170d2: 9b01         	ldr	r3, [sp, #0x4]
  4170d4: 2b00         	cmp	r3, #0x0
  4170d6: d005         	beq	0x4170e4 <UZI::create()+0x58> @ imm = #0xa
  4170d8: 9b01         	ldr	r3, [sp, #0x4]
  4170da: 681b         	ldr	r3, [r3]
  4170dc: 3308         	adds	r3, #0x8
  4170de: 681b         	ldr	r3, [r3]
  4170e0: 9801         	ldr	r0, [sp, #0x4]
  4170e2: 4798         	blx	r3
  4170e4: 2300         	movs	r3, #0x0
  4170e6: 9301         	str	r3, [sp, #0x4]
  4170e8: 2300         	movs	r3, #0x0
  4170ea: e004         	b	0x4170f6 <UZI::create()+0x6a> @ imm = #0x8
  4170ec: 4620         	mov	r0, r4
  4170ee: f370 ffd9    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x370fb2
  4170f2: f370 ffdb    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x370fb6
  4170f6: 4618         	mov	r0, r3
  4170f8: b002         	add	sp, #0x8
  4170fa: bd10         	pop	{r4, pc}
