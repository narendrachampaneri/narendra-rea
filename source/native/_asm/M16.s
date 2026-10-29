// M16: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 20 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../M16.cpp

// ==== M16::M16
//      file offset 0x355d4c (= ELF address; Ghidra 0x365d4c), 44 bytes, Thumb-2
  355d4c: b510         	push	{r4, lr}
  355d4e: b082         	sub	sp, #0x8
  355d50: 9001         	str	r0, [sp, #0x4]
  355d52: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x355d70 <M16::M16()+0x24>
  355d54: 447c         	add	r4, pc
  355d56: 9b01         	ldr	r3, [sp, #0x4]
  355d58: 4618         	mov	r0, r3
  355d5a: f0bf f925    	bl	0x414fa8 <Weapon::Weapon()> @ imm = #0xbf24a
  355d5e: 9b01         	ldr	r3, [sp, #0x4]
  355d60: 4a04         	ldr	r2, [pc, #0x10]         @ 0x355d74 <M16::M16()+0x28>
  355d62: 58a2         	ldr	r2, [r4, r2]
  355d64: 3208         	adds	r2, #0x8
  355d66: 601a         	str	r2, [r3]
  355d68: 9b01         	ldr	r3, [sp, #0x4]
  355d6a: 4618         	mov	r0, r3
  355d6c: b002         	add	sp, #0x8
  355d6e: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x355d6f); words below are literal-pool data ---
  355d70: ccb4         	ldm	r4, {r2, r4, r5, r7}
  355d72: 005d         	lsls	r5, r3, #0x1
  355d74: db7c         	blt	0x355e70 <M16::init()+0xf8> @ imm = #0xf8
  355d76: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== M16::init
//      file offset 0x355d78 (= ELF address; Ghidra 0x365d78), 924 bytes, Thumb-2
  355d78: b530         	push	{r4, r5, lr}
  355d7a: b08b         	sub	sp, #0x2c
  355d7c: 9005         	str	r0, [sp, #0x14]
  355d7e: 9b05         	ldr	r3, [sp, #0x14]
  355d80: 4618         	mov	r0, r3
  355d82: f0bf f935    	bl	0x414ff0 <Weapon::init()> @ imm = #0xbf26a
  355d86: 4603         	mov	r3, r0
  355d88: f88d 301f    	strb.w	r3, [sp, #0x1f]
  355d8c: f89d 301f    	ldrb.w	r3, [sp, #0x1f]
  355d90: f083 0301    	eor	r3, r3, #0x1
  355d94: b2db         	uxtb	r3, r3
  355d96: 2b00         	cmp	r3, #0x0
  355d98: d001         	beq	0x355d9e <M16::init()+0x26> @ imm = #0x2
  355d9a: 2300         	movs	r3, #0x0
  355d9c: e1a5         	b	0x3560ea <M16::init()+0x372> @ imm = #0x34a
  355d9e: 4bd6         	ldr	r3, [pc, #0x358]        @ 0x3560f8 <M16::init()+0x380>
  355da0: 447b         	add	r3, pc
  355da2: 4618         	mov	r0, r3
  355da4: f282 faae    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x28255c
  355da8: 4602         	mov	r2, r0
  355daa: 9b05         	ldr	r3, [sp, #0x14]
  355dac: f8c3 21ec    	str.w	r2, [r3, #0x1ec]
  355db0: 9b05         	ldr	r3, [sp, #0x14]
  355db2: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  355db6: 4618         	mov	r0, r3
  355db8: f242 f896    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x24212c
  355dbc: 4bcf         	ldr	r3, [pc, #0x33c]        @ 0x3560fc <M16::init()+0x384>
  355dbe: 447b         	add	r3, pc
  355dc0: 4618         	mov	r0, r3
  355dc2: f282 fa9f    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x28253e
  355dc6: 4602         	mov	r2, r0
  355dc8: 9b05         	ldr	r3, [sp, #0x14]
  355dca: f8c3 21f0    	str.w	r2, [r3, #0x1f0]
  355dce: 9b05         	ldr	r3, [sp, #0x14]
  355dd0: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  355dd4: 4618         	mov	r0, r3
  355dd6: f242 f887    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x24210e
  355dda: 9b05         	ldr	r3, [sp, #0x14]
  355ddc: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  355de0: 681b         	ldr	r3, [r3]
  355de2: 337c         	adds	r3, #0x7c
  355de4: 681c         	ldr	r4, [r3]
  355de6: 9b05         	ldr	r3, [sp, #0x14]
  355de8: f8d3 51f0    	ldr.w	r5, [r3, #0x1f0]
  355dec: ab08         	add	r3, sp, #0x20
  355dee: 4618         	mov	r0, r3
  355df0: f649 119a    	movw	r1, #0x999a
  355df4: f6cb 71b9    	movt	r1, #0xbfb9
  355df8: f04f 0200    	mov.w	r2, #0x0
  355dfc: f23c ff78    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x23cef0
  355e00: ab08         	add	r3, sp, #0x20
  355e02: 4628         	mov	r0, r5
  355e04: 4619         	mov	r1, r3
  355e06: 47a0         	blx	r4
  355e08: 9b05         	ldr	r3, [sp, #0x14]
  355e0a: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  355e0e: 681b         	ldr	r3, [r3]
  355e10: 3340         	adds	r3, #0x40
  355e12: 681b         	ldr	r3, [r3]
  355e14: 9a05         	ldr	r2, [sp, #0x14]
  355e16: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  355e1a: 4610         	mov	r0, r2
  355e1c: f04f 4180    	mov.w	r1, #0x40000000
  355e20: 4798         	blx	r3
  355e22: 9b05         	ldr	r3, [sp, #0x14]
  355e24: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  355e28: 681b         	ldr	r3, [r3]
  355e2a: 3390         	adds	r3, #0x90
  355e2c: 681b         	ldr	r3, [r3]
  355e2e: 9a05         	ldr	r2, [sp, #0x14]
  355e30: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  355e34: 4610         	mov	r0, r2
  355e36: 2100         	movs	r1, #0x0
  355e38: 4798         	blx	r3
  355e3a: 9b05         	ldr	r3, [sp, #0x14]
  355e3c: 681b         	ldr	r3, [r3]
  355e3e: f503 73f0    	add.w	r3, r3, #0x1e0
  355e42: 681b         	ldr	r3, [r3]
  355e44: 9805         	ldr	r0, [sp, #0x14]
  355e46: 4798         	blx	r3
  355e48: 9b05         	ldr	r3, [sp, #0x14]
  355e4a: 681b         	ldr	r3, [r3]
  355e4c: 33cc         	adds	r3, #0xcc
  355e4e: 681b         	ldr	r3, [r3]
  355e50: 9905         	ldr	r1, [sp, #0x14]
  355e52: 9a05         	ldr	r2, [sp, #0x14]
  355e54: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  355e58: 4608         	mov	r0, r1
  355e5a: 4611         	mov	r1, r2
  355e5c: 2200         	movs	r2, #0x0
  355e5e: 4798         	blx	r3
  355e60: 9b05         	ldr	r3, [sp, #0x14]
  355e62: 681b         	ldr	r3, [r3]
  355e64: 33cc         	adds	r3, #0xcc
  355e66: 681b         	ldr	r3, [r3]
  355e68: 9905         	ldr	r1, [sp, #0x14]
  355e6a: 9a05         	ldr	r2, [sp, #0x14]
  355e6c: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  355e70: 4608         	mov	r0, r1
  355e72: 4611         	mov	r1, r2
  355e74: 2200         	movs	r2, #0x0
  355e76: 4798         	blx	r3
  355e78: 9b05         	ldr	r3, [sp, #0x14]
  355e7a: f8d3 4150    	ldr.w	r4, [r3, #0x150]
  355e7e: f04f 507e    	mov.w	r0, #0x3f800000
  355e82: f786 feff    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x79202
  355e86: 4603         	mov	r3, r0
  355e88: 4620         	mov	r0, r4
  355e8a: 4619         	mov	r1, r3
  355e8c: f244 f9ee    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x2443dc
  355e90: 9b05         	ldr	r3, [sp, #0x14]
  355e92: f8d3 414c    	ldr.w	r4, [r3, #0x14c]
  355e96: ab07         	add	r3, sp, #0x1c
  355e98: 4618         	mov	r0, r3
  355e9a: f034 f2ab    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x434556
  355e9e: aa08         	add	r2, sp, #0x20
  355ea0: ab07         	add	r3, sp, #0x1c
  355ea2: 4610         	mov	r0, r2
  355ea4: 4a96         	ldr	r2, [pc, #0x258]        @ 0x356100 <M16::init()+0x388>
  355ea6: 447a         	add	r2, pc
  355ea8: 4611         	mov	r1, r2
  355eaa: 461a         	mov	r2, r3
  355eac: f060 f5d8    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x460bb0
  355eb0: ab08         	add	r3, sp, #0x20
  355eb2: 4618         	mov	r0, r3
  355eb4: f243 fdc2    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x243b84
  355eb8: 4603         	mov	r3, r0
  355eba: 4620         	mov	r0, r4
  355ebc: 4619         	mov	r1, r3
  355ebe: f244 f9d5    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x2443aa
  355ec2: ab08         	add	r3, sp, #0x20
  355ec4: 4618         	mov	r0, r3
  355ec6: f05f f525    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45fa4a
  355eca: ab07         	add	r3, sp, #0x1c
  355ecc: 4618         	mov	r0, r3
  355ece: f034 f295    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x43452a
  355ed2: 9b05         	ldr	r3, [sp, #0x14]
  355ed4: f8d3 4150    	ldr.w	r4, [r3, #0x150]
  355ed8: f64c 40cd    	movw	r0, #0xcccd
  355edc: f6c3 704c    	movt	r0, #0x3f4c
  355ee0: f786 fed0    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x79260
  355ee4: 4603         	mov	r3, r0
  355ee6: 4620         	mov	r0, r4
  355ee8: 4619         	mov	r1, r3
  355eea: f244 f9bf    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x24437e
  355eee: 9b05         	ldr	r3, [sp, #0x14]
  355ef0: f8d3 414c    	ldr.w	r4, [r3, #0x14c]
  355ef4: ab07         	add	r3, sp, #0x1c
  355ef6: 4618         	mov	r0, r3
  355ef8: f034 f27c    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4344f8
  355efc: aa08         	add	r2, sp, #0x20
  355efe: ab07         	add	r3, sp, #0x1c
  355f00: 4610         	mov	r0, r2
  355f02: 4a80         	ldr	r2, [pc, #0x200]        @ 0x356104 <M16::init()+0x38c>
  355f04: 447a         	add	r2, pc
  355f06: 4611         	mov	r1, r2
  355f08: 461a         	mov	r2, r3
  355f0a: f060 f5a9    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x460b52
  355f0e: ab08         	add	r3, sp, #0x20
  355f10: 4618         	mov	r0, r3
  355f12: f243 fd93    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x243b26
  355f16: 4603         	mov	r3, r0
  355f18: 4620         	mov	r0, r4
  355f1a: 4619         	mov	r1, r3
  355f1c: f244 f9a6    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x24434c
  355f20: ab08         	add	r3, sp, #0x20
  355f22: 4618         	mov	r0, r3
  355f24: f05f f4f6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45f9ec
  355f28: ab07         	add	r3, sp, #0x1c
  355f2a: 4618         	mov	r0, r3
  355f2c: f034 f266    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4344cc
  355f30: 9b05         	ldr	r3, [sp, #0x14]
  355f32: f8d3 4150    	ldr.w	r4, [r3, #0x150]
  355f36: f649 109a    	movw	r0, #0x999a
  355f3a: f6c3 7019    	movt	r0, #0x3f19
  355f3e: f786 fea1    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x792be
  355f42: 4603         	mov	r3, r0
  355f44: 4620         	mov	r0, r4
  355f46: 4619         	mov	r1, r3
  355f48: f244 f990    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x244320
  355f4c: 9b05         	ldr	r3, [sp, #0x14]
  355f4e: f8d3 414c    	ldr.w	r4, [r3, #0x14c]
  355f52: ab07         	add	r3, sp, #0x1c
  355f54: 4618         	mov	r0, r3
  355f56: f034 f24d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x43449a
  355f5a: aa08         	add	r2, sp, #0x20
  355f5c: ab07         	add	r3, sp, #0x1c
  355f5e: 4610         	mov	r0, r2
  355f60: 4a69         	ldr	r2, [pc, #0x1a4]        @ 0x356108 <M16::init()+0x390>
  355f62: 447a         	add	r2, pc
  355f64: 4611         	mov	r1, r2
  355f66: 461a         	mov	r2, r3
  355f68: f060 f57a    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x460af4
  355f6c: ab08         	add	r3, sp, #0x20
  355f6e: 4618         	mov	r0, r3
  355f70: f243 fd64    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x243ac8
  355f74: 4603         	mov	r3, r0
  355f76: 4620         	mov	r0, r4
  355f78: 4619         	mov	r1, r3
  355f7a: f244 f977    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x2442ee
  355f7e: ab08         	add	r3, sp, #0x20
  355f80: 4618         	mov	r0, r3
  355f82: f05f f4c7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45f98e
  355f86: ab07         	add	r3, sp, #0x1c
  355f88: 4618         	mov	r0, r3
  355f8a: f034 f237    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x43446e
  355f8e: 9b05         	ldr	r3, [sp, #0x14]
  355f90: 2200         	movs	r2, #0x0
  355f92: f8c3 2144    	str.w	r2, [r3, #0x144]
  355f96: 9b05         	ldr	r3, [sp, #0x14]
  355f98: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  355f9c: 4618         	mov	r0, r3
  355f9e: 2100         	movs	r1, #0x0
  355fa0: f244 f8be    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x24417c
  355fa4: 4603         	mov	r3, r0
  355fa6: 4618         	mov	r0, r3
  355fa8: f786 fe64    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x79338
  355fac: 4602         	mov	r2, r0
  355fae: 9b05         	ldr	r3, [sp, #0x14]
  355fb0: f8c3 2148    	str.w	r2, [r3, #0x148]
  355fb4: 9b05         	ldr	r3, [sp, #0x14]
  355fb6: f04f 0200    	mov.w	r2, #0x0
  355fba: f8c3 21f8    	str.w	r2, [r3, #0x1f8]
  355fbe: 9b05         	ldr	r3, [sp, #0x14]
  355fc0: f04f 527c    	mov.w	r2, #0x3f000000
  355fc4: f8c3 215c    	str.w	r2, [r3, #0x15c]
  355fc8: 9b05         	ldr	r3, [sp, #0x14]
  355fca: f24c 228f    	movw	r2, #0xc28f
  355fce: f6c3 5275    	movt	r2, #0x3d75
  355fd2: f8c3 21f4    	str.w	r2, [r3, #0x1f4]
  355fd6: 9b05         	ldr	r3, [sp, #0x14]
  355fd8: f04f 4280    	mov.w	r2, #0x40000000
  355fdc: f8c3 2160    	str.w	r2, [r3, #0x160]
  355fe0: 9b05         	ldr	r3, [sp, #0x14]
  355fe2: f04f 4280    	mov.w	r2, #0x40000000
  355fe6: f8c3 2164    	str.w	r2, [r3, #0x164]
  355fea: 9b05         	ldr	r3, [sp, #0x14]
  355fec: f04f 4282    	mov.w	r2, #0x41000000
  355ff0: f8c3 216c    	str.w	r2, [r3, #0x16c]
  355ff4: 9b05         	ldr	r3, [sp, #0x14]
  355ff6: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  355ffa: 681b         	ldr	r3, [r3]
  355ffc: 3398         	adds	r3, #0x98
  355ffe: 681b         	ldr	r3, [r3]
  356000: 9a05         	ldr	r2, [sp, #0x14]
  356002: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  356006: 4610         	mov	r0, r2
  356008: f04f 0100    	mov.w	r1, #0x0
  35600c: f2c4 01a0    	movt	r1, #0x40a0
  356010: 4798         	blx	r3
  356012: 9b05         	ldr	r3, [sp, #0x14]
  356014: 2296         	movs	r2, #0x96
  356016: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  35601a: 9b05         	ldr	r3, [sp, #0x14]
  35601c: 2218         	movs	r2, #0x18
  35601e: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  356022: 9b05         	ldr	r3, [sp, #0x14]
  356024: 226e         	movs	r2, #0x6e
  356026: f8c3 218c    	str.w	r2, [r3, #0x18c]
  35602a: 9b05         	ldr	r3, [sp, #0x14]
  35602c: 2200         	movs	r2, #0x0
  35602e: f8c3 21fc    	str.w	r2, [r3, #0x1fc]
  356032: 9b05         	ldr	r3, [sp, #0x14]
  356034: 2208         	movs	r2, #0x8
  356036: f8c3 2188    	str.w	r2, [r3, #0x188]
  35603a: 9b05         	ldr	r3, [sp, #0x14]
  35603c: 221e         	movs	r2, #0x1e
  35603e: f8c3 219c    	str.w	r2, [r3, #0x19c]
  356042: 9b05         	ldr	r3, [sp, #0x14]
  356044: 2228         	movs	r2, #0x28
  356046: f8c3 21a0    	str.w	r2, [r3, #0x1a0]
  35604a: 4b30         	ldr	r3, [pc, #0xc0]         @ 0x35610c <M16::init()+0x394>
  35604c: 447b         	add	r3, pc
  35604e: 681a         	ldr	r2, [r3]
  356050: 9b05         	ldr	r3, [sp, #0x14]
  356052: f8c3 21a4    	str.w	r2, [r3, #0x1a4]
  356056: 9b05         	ldr	r3, [sp, #0x14]
  356058: f44f 62c8    	mov.w	r2, #0x640
  35605c: f8c3 21bc    	str.w	r2, [r3, #0x1bc]
  356060: 9b05         	ldr	r3, [sp, #0x14]
  356062: 2218         	movs	r2, #0x18
  356064: f8c3 2170    	str.w	r2, [r3, #0x170]
  356068: 9b05         	ldr	r3, [sp, #0x14]
  35606a: f44f 7296    	mov.w	r2, #0x12c
  35606e: f8c3 2174    	str.w	r2, [r3, #0x174]
  356072: 9c05         	ldr	r4, [sp, #0x14]
  356074: 466b         	mov	r3, sp
  356076: 4618         	mov	r0, r3
  356078: ed9f 0b1d    	vldr	d0, [pc, #116]          @ 0x3560f0 <M16::init()+0x378>
  35607c: eeb2 1b0e    	vmov.f64	d1, #1.500000e+01
  356080: f7fe ff90    	bl	0x354fa4 <M14::getDAMAGE()+0x198> @ imm = #-0x10e0
  356084: f504 74ec    	add.w	r4, r4, #0x1d8
  356088: 466b         	mov	r3, sp
  35608a: cb0f         	ldm	r3, {r0, r1, r2, r3}
  35608c: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  356090: 4b1f         	ldr	r3, [pc, #0x7c]         @ 0x356110 <M16::init()+0x398>
  356092: 447b         	add	r3, pc
  356094: 681a         	ldr	r2, [r3]
  356096: 9b05         	ldr	r3, [sp, #0x14]
  356098: f8c3 2198    	str.w	r2, [r3, #0x198]
  35609c: 9b05         	ldr	r3, [sp, #0x14]
  35609e: 2200         	movs	r2, #0x0
  3560a0: f883 2200    	strb.w	r2, [r3, #0x200]
  3560a4: 2301         	movs	r3, #0x1
  3560a6: e020         	b	0x3560ea <M16::init()+0x372> @ imm = #0x40
  3560a8: ab08         	add	r3, sp, #0x20
  3560aa: 4618         	mov	r0, r3
  3560ac: f05f f432    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45f864
  3560b0: e7ff         	b	0x3560b2 <M16::init()+0x33a> @ imm = #-0x2
  3560b2: ab07         	add	r3, sp, #0x1c
  3560b4: 4618         	mov	r0, r3
  3560b6: f034 f1a1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x434342
  3560ba: f031 f7f7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x431fee
  3560be: ab08         	add	r3, sp, #0x20
  3560c0: 4618         	mov	r0, r3
  3560c2: f05f f427    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45f84e
  3560c6: e7ff         	b	0x3560c8 <M16::init()+0x350> @ imm = #-0x2
  3560c8: ab07         	add	r3, sp, #0x1c
  3560ca: 4618         	mov	r0, r3
  3560cc: f034 f196    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x43432c
  3560d0: f031 f7ec    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x431fd8
  3560d4: ab08         	add	r3, sp, #0x20
  3560d6: 4618         	mov	r0, r3
  3560d8: f05f f41c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45f838
  3560dc: e7ff         	b	0x3560de <M16::init()+0x366> @ imm = #-0x2
  3560de: ab07         	add	r3, sp, #0x1c
  3560e0: 4618         	mov	r0, r3
  3560e2: f034 f18b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x434316
  3560e6: f031 f7e1    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x431fc2
  3560ea: 4618         	mov	r0, r3
  3560ec: b00b         	add	sp, #0x2c
  3560ee: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3560ef); words below are literal-pool data ---
  3560f0: 0000         	movs	r0, r0
  3560f2: 0000         	movs	r0, r0
  3560f4: 4000         	ands	r0, r0
  3560f6: 405a         	eors	r2, r3
  3560f8: 6394         	str	r4, [r2, #0x38]
  3560fa: 0047         	lsls	r7, r0, #0x1
  3560fc: 637e         	str	r6, [r7, #0x34]
  3560fe: 0047         	lsls	r7, r0, #0x1
  356100: 62a2         	str	r2, [r4, #0x28]
  356102: 0047         	lsls	r7, r0, #0x1
  356104: 6248         	str	r0, [r1, #0x24]
  356106: 0047         	lsls	r7, r0, #0x1
  356108: 61ee         	str	r6, [r5, #0x1c]
  35610a: 0047         	lsls	r7, r0, #0x1
  35610c: d378         	blo	0x356200 <M16::updateItemStep(float)+0x14> @ imm = #0xf0
  35610e: 005d         	lsls	r5, r3, #0x1
  356110: d32e         	blo	0x356170 <M16::~M16()+0x58> @ imm = #0x5c
  356112: 005d         	lsls	r5, r3, #0x1

// ==== M16::~M16
//      file offset 0x356118 (= ELF address; Ghidra 0x366118), 92 bytes, Thumb-2
  356118: b500         	push	{lr}
  35611a: b083         	sub	sp, #0xc
  35611c: 9001         	str	r0, [sp, #0x4]
  35611e: 4913         	ldr	r1, [pc, #0x4c]         @ 0x35616c <M16::~M16()+0x54>
  356120: 4479         	add	r1, pc
  356122: 9b01         	ldr	r3, [sp, #0x4]
  356124: 4a12         	ldr	r2, [pc, #0x48]         @ 0x356170 <M16::~M16()+0x58>
  356126: 588a         	ldr	r2, [r1, r2]
  356128: 3208         	adds	r2, #0x8
  35612a: 601a         	str	r2, [r3]
  35612c: 9b01         	ldr	r3, [sp, #0x4]
  35612e: 4618         	mov	r0, r3
  356130: f23a fa7c    	bl	0x59062c <cocos2d::CCNode::removeAllChildren()> @ imm = #0x23a4f8
  356134: 9b01         	ldr	r3, [sp, #0x4]
  356136: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  35613a: 4618         	mov	r0, r3
  35613c: f241 febc    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x241d78
  356140: 9b01         	ldr	r3, [sp, #0x4]
  356142: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  356146: 4618         	mov	r0, r3
  356148: f241 feb6    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x241d6c
  35614c: 9b01         	ldr	r3, [sp, #0x4]
  35614e: 4618         	mov	r0, r3
  356150: f0bf f84e    	bl	0x4151f0 <Weapon::~Weapon()> @ imm = #0xbf09c
  356154: 2300         	movs	r3, #0x0
  356156: 2b00         	cmp	r3, #0x0
  356158: d002         	beq	0x356160 <M16::~M16()+0x48> @ imm = #0x4
  35615a: 9801         	ldr	r0, [sp, #0x4]
  35615c: f031 f7a2    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x431f44
  356160: 9b01         	ldr	r3, [sp, #0x4]
  356162: 4618         	mov	r0, r3
  356164: b003         	add	sp, #0xc
  356166: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x356169); words below are literal-pool data ---
  35616a: bf00         	nop
  35616c: c8e8         	ldm	r0!, {r3, r5, r6, r7}
  35616e: 005d         	lsls	r5, r3, #0x1
  356170: db7c         	blt	0x35626c <M16::updateItemStep(float)+0x80> @ imm = #0xf8
  356172: ffff b500    	<unknown>

// ==== M16::~M16
//      file offset 0x356174 (= ELF address; Ghidra 0x366174), 28 bytes, Thumb-2
  356174: b500         	push	{lr}
  356176: b083         	sub	sp, #0xc
  356178: 9001         	str	r0, [sp, #0x4]
  35617a: 9801         	ldr	r0, [sp, #0x4]
  35617c: f7ff ffcc    	bl	0x356118 <M16::~M16()>  @ imm = #-0x68
  356180: 9801         	ldr	r0, [sp, #0x4]
  356182: f031 f78f    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x431f1e
  356186: 9b01         	ldr	r3, [sp, #0x4]
  356188: 4618         	mov	r0, r3
  35618a: b003         	add	sp, #0xc
  35618c: f85d fb04    	ldr	pc, [sp], #4

// ==== M16::triggerPull
//      file offset 0x356190 (= ELF address; Ghidra 0x366190), 92 bytes, Thumb-2
  356190: b500         	push	{lr}
  356192: b083         	sub	sp, #0xc
  356194: 9001         	str	r0, [sp, #0x4]
  356196: 9100         	str	r1, [sp]
  356198: 9b01         	ldr	r3, [sp, #0x4]
  35619a: ed93 7a44    	vldr	s14, [r3, #272]
  35619e: 9b01         	ldr	r3, [sp, #0x4]
  3561a0: edd3 7a57    	vldr	s15, [r3, #348]
  3561a4: eeb4 7ae7    	vcmpe.f32	s14, s15
  3561a8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3561ac: dd0f         	ble	0x3561ce <M16::triggerPull(float)+0x3e> @ imm = #0x1e
  3561ae: 9b01         	ldr	r3, [sp, #0x4]
  3561b0: 681b         	ldr	r3, [r3]
  3561b2: f503 7333    	add.w	r3, r3, #0x2cc
  3561b6: 681b         	ldr	r3, [r3]
  3561b8: 9a01         	ldr	r2, [sp, #0x4]
  3561ba: 4610         	mov	r0, r2
  3561bc: 4798         	blx	r3
  3561be: 4603         	mov	r3, r0
  3561c0: f083 0301    	eor	r3, r3, #0x1
  3561c4: b2db         	uxtb	r3, r3
  3561c6: 2b00         	cmp	r3, #0x0
  3561c8: d001         	beq	0x3561ce <M16::triggerPull(float)+0x3e> @ imm = #0x2
  3561ca: 2301         	movs	r3, #0x1
  3561cc: e000         	b	0x3561d0 <M16::triggerPull(float)+0x40> @ imm = #0x0
  3561ce: 2300         	movs	r3, #0x0
  3561d0: 2b00         	cmp	r3, #0x0
  3561d2: d008         	beq	0x3561e6 <M16::triggerPull(float)+0x56> @ imm = #0x10
  3561d4: 9b01         	ldr	r3, [sp, #0x4]
  3561d6: 2201         	movs	r2, #0x1
  3561d8: f883 2200    	strb.w	r2, [r3, #0x200]
  3561dc: 9b01         	ldr	r3, [sp, #0x4]
  3561de: f04f 0200    	mov.w	r2, #0x0
  3561e2: f8c3 2110    	str.w	r2, [r3, #0x110]
  3561e6: b003         	add	sp, #0xc
  3561e8: f85d fb04    	ldr	pc, [sp], #4

// ==== M16::updateItemStep
//      file offset 0x3561ec (= ELF address; Ghidra 0x3661ec), 700 bytes, Thumb-2
  3561ec: b510         	push	{r4, lr}
  3561ee: ed2d 8b02    	vpush	{d8}
  3561f2: b08a         	sub	sp, #0x28
  3561f4: 9003         	str	r0, [sp, #0xc]
  3561f6: 9102         	str	r1, [sp, #0x8]
  3561f8: 4ca9         	ldr	r4, [pc, #0x2a4]        @ 0x3564a0 <M16::updateItemStep(float)+0x2b4>
  3561fa: 447c         	add	r4, pc
  3561fc: 9b03         	ldr	r3, [sp, #0xc]
  3561fe: ed93 7a7e    	vldr	s14, [r3, #504]
  356202: eddd 7a02    	vldr	s15, [sp, #8]
  356206: ee77 7a27    	vadd.f32	s15, s14, s15
  35620a: 9b03         	ldr	r3, [sp, #0xc]
  35620c: edc3 7a7e    	vstr	s15, [r3, #504]
  356210: 9b03         	ldr	r3, [sp, #0xc]
  356212: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  356216: b21b         	sxth	r3, r3
  356218: 2b00         	cmp	r3, #0x0
  35621a: dc34         	bgt	0x356286 <M16::updateItemStep(float)+0x9a> @ imm = #0x68
  35621c: 9b03         	ldr	r3, [sp, #0xc]
  35621e: f893 3200    	ldrb.w	r3, [r3, #0x200]
  356222: 2b00         	cmp	r3, #0x0
  356224: d00f         	beq	0x356246 <M16::updateItemStep(float)+0x5a> @ imm = #0x1e
  356226: 9b03         	ldr	r3, [sp, #0xc]
  356228: 681b         	ldr	r3, [r3]
  35622a: f503 7333    	add.w	r3, r3, #0x2cc
  35622e: 681b         	ldr	r3, [r3]
  356230: 9a03         	ldr	r2, [sp, #0xc]
  356232: 4610         	mov	r0, r2
  356234: 4798         	blx	r3
  356236: 4603         	mov	r3, r0
  356238: f083 0301    	eor	r3, r3, #0x1
  35623c: b2db         	uxtb	r3, r3
  35623e: 2b00         	cmp	r3, #0x0
  356240: d001         	beq	0x356246 <M16::updateItemStep(float)+0x5a> @ imm = #0x2
  356242: 2301         	movs	r3, #0x1
  356244: e000         	b	0x356248 <M16::updateItemStep(float)+0x5c> @ imm = #0x0
  356246: 2300         	movs	r3, #0x0
  356248: 2b00         	cmp	r3, #0x0
  35624a: d018         	beq	0x35627e <M16::updateItemStep(float)+0x92> @ imm = #0x30
  35624c: 4b95         	ldr	r3, [pc, #0x254]        @ 0x3564a4 <M16::updateItemStep(float)+0x2b8>
  35624e: 58e3         	ldr	r3, [r4, r3]
  356250: 681c         	ldr	r4, [r3]
  356252: 9b03         	ldr	r3, [sp, #0xc]
  356254: 681b         	ldr	r3, [r3]
  356256: f503 7348    	add.w	r3, r3, #0x320
  35625a: 681b         	ldr	r3, [r3]
  35625c: 9a03         	ldr	r2, [sp, #0xc]
  35625e: a906         	add	r1, sp, #0x18
  356260: 4608         	mov	r0, r1
  356262: 4611         	mov	r1, r2
  356264: 4798         	blx	r3
  356266: 466b         	mov	r3, sp
  356268: aa08         	add	r2, sp, #0x20
  35626a: e892 0003    	ldm.w	r2, {r0, r1}
  35626e: e883 0003    	stm.w	r3, {r0, r1}
  356272: ab06         	add	r3, sp, #0x18
  356274: cb0c         	ldm	r3, {r2, r3}
  356276: 4620         	mov	r0, r4
  356278: 2100         	movs	r1, #0x0
  35627a: f0a1 febd    	bl	0x3f7ff8 <Sound::playSoundPosition(int, cpVect)> @ imm = #0xa1d7a
  35627e: 9b03         	ldr	r3, [sp, #0xc]
  356280: 2200         	movs	r2, #0x0
  356282: f883 2200    	strb.w	r2, [r3, #0x200]
  356286: 9b03         	ldr	r3, [sp, #0xc]
  356288: f893 3200    	ldrb.w	r3, [r3, #0x200]
  35628c: 2b00         	cmp	r3, #0x0
  35628e: d059         	beq	0x356344 <M16::updateItemStep(float)+0x158> @ imm = #0xb2
  356290: 9b03         	ldr	r3, [sp, #0xc]
  356292: ed93 7a7e    	vldr	s14, [r3, #504]
  356296: 9b03         	ldr	r3, [sp, #0xc]
  356298: edd3 7a7d    	vldr	s15, [r3, #500]
  35629c: eeb4 7ae7    	vcmpe.f32	s14, s15
  3562a0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3562a4: dd4e         	ble	0x356344 <M16::updateItemStep(float)+0x158> @ imm = #0x9c
  3562a6: 9b03         	ldr	r3, [sp, #0xc]
  3562a8: f8d3 31fc    	ldr.w	r3, [r3, #0x1fc]
  3562ac: 1c5a         	adds	r2, r3, #0x1
  3562ae: 9b03         	ldr	r3, [sp, #0xc]
  3562b0: f8c3 21fc    	str.w	r2, [r3, #0x1fc]
  3562b4: 9b03         	ldr	r3, [sp, #0xc]
  3562b6: f8d3 31fc    	ldr.w	r3, [r3, #0x1fc]
  3562ba: 2b01         	cmp	r3, #0x1
  3562bc: d107         	bne	0x3562ce <M16::updateItemStep(float)+0xe2> @ imm = #0xe
  3562be: 9b03         	ldr	r3, [sp, #0xc]
  3562c0: f893 3195    	ldrb.w	r3, [r3, #0x195]
  3562c4: 3301         	adds	r3, #0x1
  3562c6: b2da         	uxtb	r2, r3
  3562c8: 9b03         	ldr	r3, [sp, #0xc]
  3562ca: f883 2195    	strb.w	r2, [r3, #0x195]
  3562ce: 9b03         	ldr	r3, [sp, #0xc]
  3562d0: 2201         	movs	r2, #0x1
  3562d2: f883 2180    	strb.w	r2, [r3, #0x180]
  3562d6: 9b03         	ldr	r3, [sp, #0xc]
  3562d8: 681b         	ldr	r3, [r3]
  3562da: f503 7325    	add.w	r3, r3, #0x294
  3562de: 681b         	ldr	r3, [r3]
  3562e0: 9803         	ldr	r0, [sp, #0xc]
  3562e2: 4798         	blx	r3
  3562e4: 9b03         	ldr	r3, [sp, #0xc]
  3562e6: 681b         	ldr	r3, [r3]
  3562e8: f503 7342    	add.w	r3, r3, #0x308
  3562ec: 681b         	ldr	r3, [r3]
  3562ee: 9a03         	ldr	r2, [sp, #0xc]
  3562f0: 4610         	mov	r0, r2
  3562f2: 4798         	blx	r3
  3562f4: 9b03         	ldr	r3, [sp, #0xc]
  3562f6: 681b         	ldr	r3, [r3]
  3562f8: f503 7343    	add.w	r3, r3, #0x30c
  3562fc: 681b         	ldr	r3, [r3]
  3562fe: 9a03         	ldr	r2, [sp, #0xc]
  356300: 4610         	mov	r0, r2
  356302: 4798         	blx	r3
  356304: 9b03         	ldr	r3, [sp, #0xc]
  356306: f04f 0200    	mov.w	r2, #0x0
  35630a: f8c3 21f8    	str.w	r2, [r3, #0x1f8]
  35630e: 9b03         	ldr	r3, [sp, #0xc]
  356310: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  356314: b29b         	uxth	r3, r3
  356316: 3b00         	subs	r3, #0x0
  356318: b29a         	uxth	r2, r3
  35631a: 9b03         	ldr	r3, [sp, #0xc]
  35631c: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  356320: 9b03         	ldr	r3, [sp, #0xc]
  356322: f8d3 31fc    	ldr.w	r3, [r3, #0x1fc]
  356326: 2b02         	cmp	r3, #0x2
  356328: dc04         	bgt	0x356334 <M16::updateItemStep(float)+0x148> @ imm = #0x8
  35632a: 9b03         	ldr	r3, [sp, #0xc]
  35632c: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  356330: 2b00         	cmp	r3, #0x0
  356332: d107         	bne	0x356344 <M16::updateItemStep(float)+0x158> @ imm = #0xe
  356334: 9b03         	ldr	r3, [sp, #0xc]
  356336: 2200         	movs	r2, #0x0
  356338: f883 2200    	strb.w	r2, [r3, #0x200]
  35633c: 9b03         	ldr	r3, [sp, #0xc]
  35633e: 2200         	movs	r2, #0x0
  356340: f8c3 21fc    	str.w	r2, [r3, #0x1fc]
  356344: 9b03         	ldr	r3, [sp, #0xc]
  356346: 681b         	ldr	r3, [r3]
  356348: f503 7333    	add.w	r3, r3, #0x2cc
  35634c: 681b         	ldr	r3, [r3]
  35634e: 9a03         	ldr	r2, [sp, #0xc]
  356350: 4610         	mov	r0, r2
  356352: 4798         	blx	r3
  356354: 4603         	mov	r3, r0
  356356: f083 0301    	eor	r3, r3, #0x1
  35635a: b2db         	uxtb	r3, r3
  35635c: 2b00         	cmp	r3, #0x0
  35635e: d00c         	beq	0x35637a <M16::updateItemStep(float)+0x18e> @ imm = #0x18
  356360: 9b03         	ldr	r3, [sp, #0xc]
  356362: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  356366: 2b00         	cmp	r3, #0x0
  356368: d107         	bne	0x35637a <M16::updateItemStep(float)+0x18e> @ imm = #0xe
  35636a: 9b03         	ldr	r3, [sp, #0xc]
  35636c: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  356370: b21b         	sxth	r3, r3
  356372: 2b00         	cmp	r3, #0x0
  356374: dd01         	ble	0x35637a <M16::updateItemStep(float)+0x18e> @ imm = #0x2
  356376: 2301         	movs	r3, #0x1
  356378: e000         	b	0x35637c <M16::updateItemStep(float)+0x190> @ imm = #0x0
  35637a: 2300         	movs	r3, #0x0
  35637c: 2b00         	cmp	r3, #0x0
  35637e: d008         	beq	0x356392 <M16::updateItemStep(float)+0x1a6> @ imm = #0x10
  356380: 9b03         	ldr	r3, [sp, #0xc]
  356382: 2201         	movs	r2, #0x1
  356384: f883 2181    	strb.w	r2, [r3, #0x181]
  356388: 9b03         	ldr	r3, [sp, #0xc]
  35638a: f04f 0200    	mov.w	r2, #0x0
  35638e: f8c3 2158    	str.w	r2, [r3, #0x158]
  356392: 9b03         	ldr	r3, [sp, #0xc]
  356394: ed93 7a56    	vldr	s14, [r3, #344]
  356398: eddd 7a02    	vldr	s15, [sp, #8]
  35639c: ee77 7a27    	vadd.f32	s15, s14, s15
  3563a0: 9b03         	ldr	r3, [sp, #0xc]
  3563a2: edc3 7a56    	vstr	s15, [r3, #344]
  3563a6: 9b03         	ldr	r3, [sp, #0xc]
  3563a8: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3563ac: 681b         	ldr	r3, [r3]
  3563ae: 3390         	adds	r3, #0x90
  3563b0: 681b         	ldr	r3, [r3]
  3563b2: 9a03         	ldr	r2, [sp, #0xc]
  3563b4: f8d2 11f0    	ldr.w	r1, [r2, #0x1f0]
  3563b8: 9a03         	ldr	r2, [sp, #0xc]
  3563ba: f892 2180    	ldrb.w	r2, [r2, #0x180]
  3563be: 4608         	mov	r0, r1
  3563c0: 4611         	mov	r1, r2
  3563c2: 4798         	blx	r3
  3563c4: 9b03         	ldr	r3, [sp, #0xc]
  3563c6: 681b         	ldr	r3, [r3]
  3563c8: f503 7315    	add.w	r3, r3, #0x254
  3563cc: 681b         	ldr	r3, [r3]
  3563ce: 9a03         	ldr	r2, [sp, #0xc]
  3563d0: 4610         	mov	r0, r2
  3563d2: 9902         	ldr	r1, [sp, #0x8]
  3563d4: 4798         	blx	r3
  3563d6: 9b03         	ldr	r3, [sp, #0xc]
  3563d8: f893 3181    	ldrb.w	r3, [r3, #0x181]
  3563dc: 2b00         	cmp	r3, #0x0
  3563de: d013         	beq	0x356408 <M16::updateItemStep(float)+0x21c> @ imm = #0x26
  3563e0: 9b03         	ldr	r3, [sp, #0xc]
  3563e2: ed93 8a56    	vldr	s16, [r3, #344]
  3563e6: 9b03         	ldr	r3, [sp, #0xc]
  3563e8: 681b         	ldr	r3, [r3]
  3563ea: f503 732e    	add.w	r3, r3, #0x2b8
  3563ee: 681b         	ldr	r3, [r3]
  3563f0: 9a03         	ldr	r2, [sp, #0xc]
  3563f2: 4610         	mov	r0, r2
  3563f4: 4798         	blx	r3
  3563f6: ee07 0a90    	vmov	s15, r0
  3563fa: eeb4 8ae7    	vcmpe.f32	s16, s15
  3563fe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  356402: dd01         	ble	0x356408 <M16::updateItemStep(float)+0x21c> @ imm = #0x2
  356404: 2301         	movs	r3, #0x1
  356406: e000         	b	0x35640a <M16::updateItemStep(float)+0x21e> @ imm = #0x0
  356408: 2300         	movs	r3, #0x0
  35640a: 2b00         	cmp	r3, #0x0
  35640c: d043         	beq	0x356496 <M16::updateItemStep(float)+0x2aa> @ imm = #0x86
  35640e: 9b03         	ldr	r3, [sp, #0xc]
  356410: 2200         	movs	r2, #0x0
  356412: f883 2181    	strb.w	r2, [r3, #0x181]
  356416: 9b03         	ldr	r3, [sp, #0xc]
  356418: f04f 0200    	mov.w	r2, #0x0
  35641c: f8c3 2110    	str.w	r2, [r3, #0x110]
  356420: 9b03         	ldr	r3, [sp, #0xc]
  356422: 681b         	ldr	r3, [r3]
  356424: f503 732d    	add.w	r3, r3, #0x2b4
  356428: 681b         	ldr	r3, [r3]
  35642a: 9a03         	ldr	r2, [sp, #0xc]
  35642c: 4610         	mov	r0, r2
  35642e: 4798         	blx	r3
  356430: 4602         	mov	r2, r0
  356432: 9b03         	ldr	r3, [sp, #0xc]
  356434: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  356438: b21b         	sxth	r3, r3
  35643a: 1ad3         	subs	r3, r2, r3
  35643c: 9305         	str	r3, [sp, #0x14]
  35643e: 9b03         	ldr	r3, [sp, #0xc]
  356440: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  356444: b29a         	uxth	r2, r3
  356446: 9b05         	ldr	r3, [sp, #0x14]
  356448: b29b         	uxth	r3, r3
  35644a: 1ad3         	subs	r3, r2, r3
  35644c: b29b         	uxth	r3, r3
  35644e: b29a         	uxth	r2, r3
  356450: 9b03         	ldr	r3, [sp, #0xc]
  356452: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  356456: 9b03         	ldr	r3, [sp, #0xc]
  356458: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  35645c: b29a         	uxth	r2, r3
  35645e: 9b05         	ldr	r3, [sp, #0x14]
  356460: b29b         	uxth	r3, r3
  356462: 4413         	add	r3, r2
  356464: b29a         	uxth	r2, r3
  356466: 9b03         	ldr	r3, [sp, #0xc]
  356468: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  35646c: b21b         	sxth	r3, r3
  35646e: ea03 73e3    	and.w	r3, r3, r3, asr #31
  356472: b29b         	uxth	r3, r3
  356474: b29b         	uxth	r3, r3
  356476: 4413         	add	r3, r2
  356478: b29b         	uxth	r3, r3
  35647a: b29a         	uxth	r2, r3
  35647c: 9b03         	ldr	r3, [sp, #0xc]
  35647e: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  356482: 9b03         	ldr	r3, [sp, #0xc]
  356484: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  356488: b21b         	sxth	r3, r3
  35648a: ea23 73e3    	bic.w	r3, r3, r3, asr #31
  35648e: b29a         	uxth	r2, r3
  356490: 9b03         	ldr	r3, [sp, #0xc]
  356492: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  356496: b00a         	add	sp, #0x28
  356498: ecbd 8b02    	vpop	{d8}
  35649c: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x35649d); words below are literal-pool data ---
  35649e: bf00         	nop
  3564a0: c80e         	ldm	r0!, {r1, r2, r3}
  3564a2: 005d         	lsls	r5, r3, #0x1
  3564a4: d730         	bvc	0x356508 <M16::updateRemoteItemStep(float)+0x60> @ imm = #0x60
  3564a6: ffff b500    	<unknown>

// ==== M16::updateRemoteItemStep
//      file offset 0x3564a8 (= ELF address; Ghidra 0x3664a8), 266 bytes, Thumb-2
  3564a8: b500         	push	{lr}
  3564aa: b083         	sub	sp, #0xc
  3564ac: 9001         	str	r0, [sp, #0x4]
  3564ae: 9100         	str	r1, [sp]
  3564b0: 9b01         	ldr	r3, [sp, #0x4]
  3564b2: ed93 7a7e    	vldr	s14, [r3, #504]
  3564b6: eddd 7a00    	vldr	s15, [sp]
  3564ba: ee77 7a27    	vadd.f32	s15, s14, s15
  3564be: 9b01         	ldr	r3, [sp, #0x4]
  3564c0: edc3 7a7e    	vstr	s15, [r3, #504]
  3564c4: 9b01         	ldr	r3, [sp, #0x4]
  3564c6: f893 3200    	ldrb.w	r3, [r3, #0x200]
  3564ca: 2b00         	cmp	r3, #0x0
  3564cc: d046         	beq	0x35655c <M16::updateRemoteItemStep(float)+0xb4> @ imm = #0x8c
  3564ce: 9b01         	ldr	r3, [sp, #0x4]
  3564d0: ed93 7a7e    	vldr	s14, [r3, #504]
  3564d4: 9b01         	ldr	r3, [sp, #0x4]
  3564d6: edd3 7a7d    	vldr	s15, [r3, #500]
  3564da: eeb4 7ae7    	vcmpe.f32	s14, s15
  3564de: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3564e2: dd3b         	ble	0x35655c <M16::updateRemoteItemStep(float)+0xb4> @ imm = #0x76
  3564e4: 9b01         	ldr	r3, [sp, #0x4]
  3564e6: f8d3 31fc    	ldr.w	r3, [r3, #0x1fc]
  3564ea: 1c5a         	adds	r2, r3, #0x1
  3564ec: 9b01         	ldr	r3, [sp, #0x4]
  3564ee: f8c3 21fc    	str.w	r2, [r3, #0x1fc]
  3564f2: 9b01         	ldr	r3, [sp, #0x4]
  3564f4: 2201         	movs	r2, #0x1
  3564f6: f883 2180    	strb.w	r2, [r3, #0x180]
  3564fa: 9b01         	ldr	r3, [sp, #0x4]
  3564fc: 681b         	ldr	r3, [r3]
  3564fe: f503 7325    	add.w	r3, r3, #0x294
  356502: 681b         	ldr	r3, [r3]
  356504: 9801         	ldr	r0, [sp, #0x4]
  356506: 4798         	blx	r3
  356508: 9b01         	ldr	r3, [sp, #0x4]
  35650a: 681b         	ldr	r3, [r3]
  35650c: f503 7342    	add.w	r3, r3, #0x308
  356510: 681b         	ldr	r3, [r3]
  356512: 9a01         	ldr	r2, [sp, #0x4]
  356514: 4610         	mov	r0, r2
  356516: 4798         	blx	r3
  356518: 9b01         	ldr	r3, [sp, #0x4]
  35651a: 681b         	ldr	r3, [r3]
  35651c: f503 7343    	add.w	r3, r3, #0x30c
  356520: 681b         	ldr	r3, [r3]
  356522: 9a01         	ldr	r2, [sp, #0x4]
  356524: 4610         	mov	r0, r2
  356526: 4798         	blx	r3
  356528: 9b01         	ldr	r3, [sp, #0x4]
  35652a: f04f 0200    	mov.w	r2, #0x0
  35652e: f8c3 21f8    	str.w	r2, [r3, #0x1f8]
  356532: 9b01         	ldr	r3, [sp, #0x4]
  356534: f8d3 31fc    	ldr.w	r3, [r3, #0x1fc]
  356538: 2b02         	cmp	r3, #0x2
  35653a: dd0f         	ble	0x35655c <M16::updateRemoteItemStep(float)+0xb4> @ imm = #0x1e
  35653c: 9b01         	ldr	r3, [sp, #0x4]
  35653e: 2200         	movs	r2, #0x0
  356540: f883 2200    	strb.w	r2, [r3, #0x200]
  356544: 9b01         	ldr	r3, [sp, #0x4]
  356546: 2200         	movs	r2, #0x0
  356548: f8c3 21fc    	str.w	r2, [r3, #0x1fc]
  35654c: 9b01         	ldr	r3, [sp, #0x4]
  35654e: f893 3195    	ldrb.w	r3, [r3, #0x195]
  356552: 3301         	adds	r3, #0x1
  356554: b2da         	uxtb	r2, r3
  356556: 9b01         	ldr	r3, [sp, #0x4]
  356558: f883 2195    	strb.w	r2, [r3, #0x195]
  35655c: 9b01         	ldr	r3, [sp, #0x4]
  35655e: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  356562: 681b         	ldr	r3, [r3]
  356564: 3390         	adds	r3, #0x90
  356566: 681b         	ldr	r3, [r3]
  356568: 9a01         	ldr	r2, [sp, #0x4]
  35656a: f8d2 11f0    	ldr.w	r1, [r2, #0x1f0]
  35656e: 9a01         	ldr	r2, [sp, #0x4]
  356570: f892 2180    	ldrb.w	r2, [r2, #0x180]
  356574: 4608         	mov	r0, r1
  356576: 4611         	mov	r1, r2
  356578: 4798         	blx	r3
  35657a: 9b01         	ldr	r3, [sp, #0x4]
  35657c: 681b         	ldr	r3, [r3]
  35657e: f503 7315    	add.w	r3, r3, #0x254
  356582: 681b         	ldr	r3, [r3]
  356584: 9a01         	ldr	r2, [sp, #0x4]
  356586: 4610         	mov	r0, r2
  356588: 9900         	ldr	r1, [sp]
  35658a: 4798         	blx	r3
  35658c: 9b01         	ldr	r3, [sp, #0x4]
  35658e: f893 2194    	ldrb.w	r2, [r3, #0x194]
  356592: 9b01         	ldr	r3, [sp, #0x4]
  356594: f893 3195    	ldrb.w	r3, [r3, #0x195]
  356598: 429a         	cmp	r2, r3
  35659a: d007         	beq	0x3565ac <M16::updateRemoteItemStep(float)+0x104> @ imm = #0xe
  35659c: 9b01         	ldr	r3, [sp, #0x4]
  35659e: 681b         	ldr	r3, [r3]
  3565a0: f503 7318    	add.w	r3, r3, #0x260
  3565a4: 681b         	ldr	r3, [r3]
  3565a6: 9801         	ldr	r0, [sp, #0x4]
  3565a8: 9900         	ldr	r1, [sp]
  3565aa: 4798         	blx	r3
  3565ac: b003         	add	sp, #0xc
  3565ae: f85d fb04    	ldr	pc, [sp], #4

// ==== M16::remoteTriggerPull
//      file offset 0x3565b4 (= ELF address; Ghidra 0x3665b4), 50 bytes, Thumb-2
  3565b4: b082         	sub	sp, #0x8
  3565b6: 9001         	str	r0, [sp, #0x4]
  3565b8: 9100         	str	r1, [sp]
  3565ba: 9b01         	ldr	r3, [sp, #0x4]
  3565bc: ed93 7a44    	vldr	s14, [r3, #272]
  3565c0: 9b01         	ldr	r3, [sp, #0x4]
  3565c2: edd3 7a57    	vldr	s15, [r3, #348]
  3565c6: eeb4 7ae7    	vcmpe.f32	s14, s15
  3565ca: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3565ce: dd08         	ble	0x3565e2 <M16::remoteTriggerPull(float)+0x2e> @ imm = #0x10
  3565d0: 9b01         	ldr	r3, [sp, #0x4]
  3565d2: 2201         	movs	r2, #0x1
  3565d4: f883 2200    	strb.w	r2, [r3, #0x200]
  3565d8: 9b01         	ldr	r3, [sp, #0x4]
  3565da: f04f 0200    	mov.w	r2, #0x0
  3565de: f8c3 2110    	str.w	r2, [r3, #0x110]
  3565e2: b002         	add	sp, #0x8
  3565e4: 4770         	bx	lr

// ==== M16::getShellPoint
//      file offset 0x3565e8 (= ELF address; Ghidra 0x3665e8), 204 bytes, Thumb-2
  3565e8: b510         	push	{r4, lr}
  3565ea: b08e         	sub	sp, #0x38
  3565ec: 9001         	str	r0, [sp, #0x4]
  3565ee: 9100         	str	r1, [sp]
  3565f0: 4c2e         	ldr	r4, [pc, #0xb8]         @ 0x3566ac <M16::getShellPoint()+0xc4>
  3565f2: 447c         	add	r4, pc
  3565f4: ab02         	add	r3, sp, #0x8
  3565f6: 4618         	mov	r0, r3
  3565f8: f04f 0100    	mov.w	r1, #0x0
  3565fc: f2c4 2134    	movt	r1, #0x4234
  356600: f04f 0200    	mov.w	r2, #0x0
  356604: f2c4 1270    	movt	r2, #0x4170
  356608: f23c fb72    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x23c6e4
  35660c: 9b00         	ldr	r3, [sp]
  35660e: 681b         	ldr	r3, [r3]
  356610: 3350         	adds	r3, #0x50
  356612: 681b         	ldr	r3, [r3]
  356614: 9a00         	ldr	r2, [sp]
  356616: 4610         	mov	r0, r2
  356618: 4798         	blx	r3
  35661a: 4602         	mov	r2, r0
  35661c: a906         	add	r1, sp, #0x18
  35661e: ab02         	add	r3, sp, #0x8
  356620: 4608         	mov	r0, r1
  356622: 4611         	mov	r1, r2
  356624: 461a         	mov	r2, r3
  356626: f7fe fcad    	bl	0x354f84 <M14::getDAMAGE()+0x178> @ imm = #-0x16a6
  35662a: 9b00         	ldr	r3, [sp]
  35662c: 681b         	ldr	r3, [r3]
  35662e: f503 73c2    	add.w	r3, r3, #0x184
  356632: 681b         	ldr	r3, [r3]
  356634: 9a00         	ldr	r2, [sp]
  356636: a908         	add	r1, sp, #0x20
  356638: 4608         	mov	r0, r1
  35663a: 4611         	mov	r1, r2
  35663c: 4798         	blx	r3
  35663e: a904         	add	r1, sp, #0x10
  356640: aa06         	add	r2, sp, #0x18
  356642: ab08         	add	r3, sp, #0x20
  356644: 4608         	mov	r0, r1
  356646: 4611         	mov	r1, r2
  356648: 461a         	mov	r2, r3
  35664a: f23b fe6b    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x23bcd6
  35664e: 4b18         	ldr	r3, [pc, #0x60]         @ 0x3566b0 <M16::getShellPoint()+0xc8>
  356650: 58e3         	ldr	r3, [r4, r3]
  356652: 681b         	ldr	r3, [r3]
  356654: 681b         	ldr	r3, [r3]
  356656: f503 73c4    	add.w	r3, r3, #0x188
  35665a: 681b         	ldr	r3, [r3]
  35665c: 4a14         	ldr	r2, [pc, #0x50]         @ 0x3566b0 <M16::getShellPoint()+0xc8>
  35665e: 58a2         	ldr	r2, [r4, r2]
  356660: 6812         	ldr	r2, [r2]
  356662: a908         	add	r1, sp, #0x20
  356664: 4608         	mov	r0, r1
  356666: 4611         	mov	r1, r2
  356668: 4798         	blx	r3
  35666a: a906         	add	r1, sp, #0x18
  35666c: aa04         	add	r2, sp, #0x10
  35666e: ab08         	add	r3, sp, #0x20
  356670: 4608         	mov	r0, r1
  356672: 4611         	mov	r1, r2
  356674: 461a         	mov	r2, r3
  356676: f23b fe55    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x23bcaa
  35667a: aa04         	add	r2, sp, #0x10
  35667c: ab06         	add	r3, sp, #0x18
  35667e: 4610         	mov	r0, r2
  356680: 4619         	mov	r1, r3
  356682: f23c fb63    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x23c6c6
  356686: eddd 7a04    	vldr	s15, [sp, #16]
  35668a: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  35668e: eddd 7a05    	vldr	s15, [sp, #20]
  356692: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  356696: 9b01         	ldr	r3, [sp, #0x4]
  356698: 4618         	mov	r0, r3
  35669a: eeb0 0b46    	vmov.f64	d0, d6
  35669e: eeb0 1b47    	vmov.f64	d1, d7
  3566a2: f7fe fc7f    	bl	0x354fa4 <M14::getDAMAGE()+0x198> @ imm = #-0x1702
  3566a6: 9801         	ldr	r0, [sp, #0x4]
  3566a8: b00e         	add	sp, #0x38
  3566aa: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3566ab); words below are literal-pool data ---
  3566ac: c416         	stm	r4!, {r1, r2, r4}
  3566ae: 005d         	lsls	r5, r3, #0x1
  3566b0: d744         	bvc	0x35673c <M16::setPrimaryConfiguration()+0x40> @ imm = #0x88
  3566b2: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== M16::playSound
//      file offset 0x3566b4 (= ELF address; Ghidra 0x3666b4), 72 bytes, Thumb-2
  3566b4: b510         	push	{r4, lr}
  3566b6: b088         	sub	sp, #0x20
  3566b8: 9003         	str	r0, [sp, #0xc]
  3566ba: 4a0e         	ldr	r2, [pc, #0x38]         @ 0x3566f4 <M16::playSound()+0x40>
  3566bc: 447a         	add	r2, pc
  3566be: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x3566f8 <M16::playSound()+0x44>
  3566c0: 58d3         	ldr	r3, [r2, r3]
  3566c2: 681c         	ldr	r4, [r3]
  3566c4: 9b03         	ldr	r3, [sp, #0xc]
  3566c6: 681b         	ldr	r3, [r3]
  3566c8: f503 7348    	add.w	r3, r3, #0x320
  3566cc: 681b         	ldr	r3, [r3]
  3566ce: 9a03         	ldr	r2, [sp, #0xc]
  3566d0: a904         	add	r1, sp, #0x10
  3566d2: 4608         	mov	r0, r1
  3566d4: 4611         	mov	r1, r2
  3566d6: 4798         	blx	r3
  3566d8: 466b         	mov	r3, sp
  3566da: aa06         	add	r2, sp, #0x18
  3566dc: e892 0003    	ldm.w	r2, {r0, r1}
  3566e0: e883 0003    	stm.w	r3, {r0, r1}
  3566e4: ab04         	add	r3, sp, #0x10
  3566e6: cb0c         	ldm	r3, {r2, r3}
  3566e8: 4620         	mov	r0, r4
  3566ea: 2107         	movs	r1, #0x7
  3566ec: f0a1 fc84    	bl	0x3f7ff8 <Sound::playSoundPosition(int, cpVect)> @ imm = #0xa1908
  3566f0: b008         	add	sp, #0x20
  3566f2: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3566f3); words below are literal-pool data ---
  3566f4: c34c         	stm	r3!, {r2, r3, r6}
  3566f6: 005d         	lsls	r5, r3, #0x1
  3566f8: d730         	bvc	0x35675c <M16::setPrimaryConfiguration()+0x60> @ imm = #0x60
  3566fa: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== M16::setPrimaryConfiguration
//      file offset 0x3566fc (= ELF address; Ghidra 0x3666fc), 312 bytes, Thumb-2
  3566fc: b530         	push	{r4, r5, lr}
  3566fe: b085         	sub	sp, #0x14
  356700: 9001         	str	r0, [sp, #0x4]
  356702: 9b01         	ldr	r3, [sp, #0x4]
  356704: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  356708: 2b00         	cmp	r3, #0x0
  35670a: d019         	beq	0x356740 <M16::setPrimaryConfiguration()+0x44> @ imm = #0x32
  35670c: 9b01         	ldr	r3, [sp, #0x4]
  35670e: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  356712: 4b47         	ldr	r3, [pc, #0x11c]        @ 0x356830 <M16::setPrimaryConfiguration()+0x134>
  356714: 447b         	add	r3, pc
  356716: ed93 6b00    	vldr	d6, [r3]
  35671a: ed93 7b02    	vldr	d7, [r3, #8]
  35671e: 4610         	mov	r0, r2
  356720: eeb0 0b46    	vmov.f64	d0, d6
  356724: eeb0 1b47    	vmov.f64	d1, d7
  356728: f7fe fc50    	bl	0x354fcc <M14::getDAMAGE()+0x1c0> @ imm = #-0x1760
  35672c: 9b01         	ldr	r3, [sp, #0x4]
  35672e: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  356732: 4618         	mov	r0, r3
  356734: f04f 0200    	mov.w	r2, #0x0
  356738: f04f 0300    	mov.w	r3, #0x0
  35673c: f37c fd29    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x37ca52
  356740: 9b01         	ldr	r3, [sp, #0x4]
  356742: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  356746: 681b         	ldr	r3, [r3]
  356748: 334c         	adds	r3, #0x4c
  35674a: 681c         	ldr	r4, [r3]
  35674c: 9b01         	ldr	r3, [sp, #0x4]
  35674e: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  356752: ab02         	add	r3, sp, #0x8
  356754: 4618         	mov	r0, r3
  356756: f04f 0100    	mov.w	r1, #0x0
  35675a: f04f 0200    	mov.w	r2, #0x0
  35675e: f23c fac7    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x23c58e
  356762: ab02         	add	r3, sp, #0x8
  356764: 4628         	mov	r0, r5
  356766: 4619         	mov	r1, r3
  356768: 47a0         	blx	r4
  35676a: 9b01         	ldr	r3, [sp, #0x4]
  35676c: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  356770: 681b         	ldr	r3, [r3]
  356772: 337c         	adds	r3, #0x7c
  356774: 681c         	ldr	r4, [r3]
  356776: 9b01         	ldr	r3, [sp, #0x4]
  356778: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  35677c: ab02         	add	r3, sp, #0x8
  35677e: 4618         	mov	r0, r3
  356780: f04f 0100    	mov.w	r1, #0x0
  356784: f64c 42cd    	movw	r2, #0xcccd
  356788: f6c3 62cc    	movt	r2, #0x3ecc
  35678c: f23c fab0    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x23c560
  356790: ab02         	add	r3, sp, #0x8
  356792: 4628         	mov	r0, r5
  356794: 4619         	mov	r1, r3
  356796: 47a0         	blx	r4
  356798: 9b01         	ldr	r3, [sp, #0x4]
  35679a: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  35679e: 681b         	ldr	r3, [r3]
  3567a0: 3398         	adds	r3, #0x98
  3567a2: 681b         	ldr	r3, [r3]
  3567a4: 9a01         	ldr	r2, [sp, #0x4]
  3567a6: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3567aa: 4610         	mov	r0, r2
  3567ac: f04f 0100    	mov.w	r1, #0x0
  3567b0: 4798         	blx	r3
  3567b2: 9b01         	ldr	r3, [sp, #0x4]
  3567b4: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3567b8: 681b         	ldr	r3, [r3]
  3567ba: 3340         	adds	r3, #0x40
  3567bc: 681b         	ldr	r3, [r3]
  3567be: 9a01         	ldr	r2, [sp, #0x4]
  3567c0: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3567c4: 4610         	mov	r0, r2
  3567c6: f04f 517e    	mov.w	r1, #0x3f800000
  3567ca: 4798         	blx	r3
  3567cc: 9b01         	ldr	r3, [sp, #0x4]
  3567ce: 681b         	ldr	r3, [r3]
  3567d0: 334c         	adds	r3, #0x4c
  3567d2: 681c         	ldr	r4, [r3]
  3567d4: 9d01         	ldr	r5, [sp, #0x4]
  3567d6: ab02         	add	r3, sp, #0x8
  3567d8: 4618         	mov	r0, r3
  3567da: f04f 0100    	mov.w	r1, #0x0
  3567de: f04f 0200    	mov.w	r2, #0x0
  3567e2: f23c fa85    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x23c50a
  3567e6: ab02         	add	r3, sp, #0x8
  3567e8: 4628         	mov	r0, r5
  3567ea: 4619         	mov	r1, r3
  3567ec: 47a0         	blx	r4
  3567ee: 9b01         	ldr	r3, [sp, #0x4]
  3567f0: 681b         	ldr	r3, [r3]
  3567f2: 3340         	adds	r3, #0x40
  3567f4: 681b         	ldr	r3, [r3]
  3567f6: 9a01         	ldr	r2, [sp, #0x4]
  3567f8: 4610         	mov	r0, r2
  3567fa: f04f 517e    	mov.w	r1, #0x3f800000
  3567fe: 4798         	blx	r3
  356800: 9b01         	ldr	r3, [sp, #0x4]
  356802: 681b         	ldr	r3, [r3]
  356804: 3398         	adds	r3, #0x98
  356806: 681b         	ldr	r3, [r3]
  356808: 9a01         	ldr	r2, [sp, #0x4]
  35680a: 4610         	mov	r0, r2
  35680c: f04f 0100    	mov.w	r1, #0x0
  356810: 4798         	blx	r3
  356812: 9b01         	ldr	r3, [sp, #0x4]
  356814: 2200         	movs	r2, #0x0
  356816: f883 2195    	strb.w	r2, [r3, #0x195]
  35681a: 9b01         	ldr	r3, [sp, #0x4]
  35681c: 2200         	movs	r2, #0x0
  35681e: f883 2194    	strb.w	r2, [r3, #0x194]
  356822: 9b01         	ldr	r3, [sp, #0x4]
  356824: f04f 0200    	mov.w	r2, #0x0
  356828: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  35682c: b005         	add	sp, #0x14
  35682e: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x35682f); words below are literal-pool data ---
  356830: 5a80         	ldrh	r0, [r0, r2]
  356832: 0047         	lsls	r7, r0, #0x1

// ==== M16::setSecondaryConfiguration
//      file offset 0x356834 (= ELF address; Ghidra 0x366834), 344 bytes, Thumb-2
  356834: b530         	push	{r4, r5, lr}
  356836: b085         	sub	sp, #0x14
  356838: 9001         	str	r0, [sp, #0x4]
  35683a: 9b01         	ldr	r3, [sp, #0x4]
  35683c: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  356840: 2b00         	cmp	r3, #0x0
  356842: d019         	beq	0x356878 <M16::setSecondaryConfiguration()+0x44> @ imm = #0x32
  356844: 9b01         	ldr	r3, [sp, #0x4]
  356846: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  35684a: 4b4f         	ldr	r3, [pc, #0x13c]        @ 0x356988 <M16::setSecondaryConfiguration()+0x154>
  35684c: 447b         	add	r3, pc
  35684e: ed93 6b00    	vldr	d6, [r3]
  356852: ed93 7b02    	vldr	d7, [r3, #8]
  356856: 4610         	mov	r0, r2
  356858: eeb0 0b46    	vmov.f64	d0, d6
  35685c: eeb0 1b47    	vmov.f64	d1, d7
  356860: f7fe fbb4    	bl	0x354fcc <M14::getDAMAGE()+0x1c0> @ imm = #-0x1898
  356864: 9b01         	ldr	r3, [sp, #0x4]
  356866: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  35686a: 4618         	mov	r0, r3
  35686c: f04f 0200    	mov.w	r2, #0x0
  356870: f04f 0300    	mov.w	r3, #0x0
  356874: f37c fc8d    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x37c91a
  356878: 9b01         	ldr	r3, [sp, #0x4]
  35687a: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  35687e: 681b         	ldr	r3, [r3]
  356880: 334c         	adds	r3, #0x4c
  356882: 681c         	ldr	r4, [r3]
  356884: 9b01         	ldr	r3, [sp, #0x4]
  356886: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  35688a: ab02         	add	r3, sp, #0x8
  35688c: 4618         	mov	r0, r3
  35688e: f04f 0100    	mov.w	r1, #0x0
  356892: f2cc 1170    	movt	r1, #0xc170
  356896: f04f 0200    	mov.w	r2, #0x0
  35689a: f2c4 02a0    	movt	r2, #0x40a0
  35689e: f23c fa27    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x23c44e
  3568a2: ab02         	add	r3, sp, #0x8
  3568a4: 4628         	mov	r0, r5
  3568a6: 4619         	mov	r1, r3
  3568a8: 47a0         	blx	r4
  3568aa: 9b01         	ldr	r3, [sp, #0x4]
  3568ac: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3568b0: 681b         	ldr	r3, [r3]
  3568b2: 337c         	adds	r3, #0x7c
  3568b4: 681c         	ldr	r4, [r3]
  3568b6: 9b01         	ldr	r3, [sp, #0x4]
  3568b8: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  3568bc: ab02         	add	r3, sp, #0x8
  3568be: 4618         	mov	r0, r3
  3568c0: f04f 517c    	mov.w	r1, #0x3f000000
  3568c4: f04f 527c    	mov.w	r2, #0x3f000000
  3568c8: f23c fa12    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x23c424
  3568cc: ab02         	add	r3, sp, #0x8
  3568ce: 4628         	mov	r0, r5
  3568d0: 4619         	mov	r1, r3
  3568d2: 47a0         	blx	r4
  3568d4: 9b01         	ldr	r3, [sp, #0x4]
  3568d6: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3568da: 681b         	ldr	r3, [r3]
  3568dc: 3398         	adds	r3, #0x98
  3568de: 681b         	ldr	r3, [r3]
  3568e0: 9a01         	ldr	r2, [sp, #0x4]
  3568e2: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3568e6: 4610         	mov	r0, r2
  3568e8: f04f 0100    	mov.w	r1, #0x0
  3568ec: f2c4 2148    	movt	r1, #0x4248
  3568f0: 4798         	blx	r3
  3568f2: 9b01         	ldr	r3, [sp, #0x4]
  3568f4: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3568f8: 681b         	ldr	r3, [r3]
  3568fa: 3340         	adds	r3, #0x40
  3568fc: 681b         	ldr	r3, [r3]
  3568fe: 9a01         	ldr	r2, [sp, #0x4]
  356900: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  356904: 4610         	mov	r0, r2
  356906: f04f 517e    	mov.w	r1, #0x3f800000
  35690a: 4798         	blx	r3
  35690c: 9b01         	ldr	r3, [sp, #0x4]
  35690e: 681b         	ldr	r3, [r3]
  356910: 334c         	adds	r3, #0x4c
  356912: 681c         	ldr	r4, [r3]
  356914: 9d01         	ldr	r5, [sp, #0x4]
  356916: ab02         	add	r3, sp, #0x8
  356918: 4618         	mov	r0, r3
  35691a: f04f 0100    	mov.w	r1, #0x0
  35691e: f04f 0200    	mov.w	r2, #0x0
  356922: f23c f9e5    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x23c3ca
  356926: ab02         	add	r3, sp, #0x8
  356928: 4628         	mov	r0, r5
  35692a: 4619         	mov	r1, r3
  35692c: 47a0         	blx	r4
  35692e: 9b01         	ldr	r3, [sp, #0x4]
  356930: 681b         	ldr	r3, [r3]
  356932: 3340         	adds	r3, #0x40
  356934: 681b         	ldr	r3, [r3]
  356936: 9a01         	ldr	r2, [sp, #0x4]
  356938: 4610         	mov	r0, r2
  35693a: f04f 517e    	mov.w	r1, #0x3f800000
  35693e: 4798         	blx	r3
  356940: 9b01         	ldr	r3, [sp, #0x4]
  356942: 681b         	ldr	r3, [r3]
  356944: 3398         	adds	r3, #0x98
  356946: 681b         	ldr	r3, [r3]
  356948: 9a01         	ldr	r2, [sp, #0x4]
  35694a: 4610         	mov	r0, r2
  35694c: f04f 0100    	mov.w	r1, #0x0
  356950: 4798         	blx	r3
  356952: 9b01         	ldr	r3, [sp, #0x4]
  356954: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  356958: 681b         	ldr	r3, [r3]
  35695a: 3390         	adds	r3, #0x90
  35695c: 681b         	ldr	r3, [r3]
  35695e: 9a01         	ldr	r2, [sp, #0x4]
  356960: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  356964: 4610         	mov	r0, r2
  356966: 2100         	movs	r1, #0x0
  356968: 4798         	blx	r3
  35696a: 9b01         	ldr	r3, [sp, #0x4]
  35696c: 2200         	movs	r2, #0x0
  35696e: f883 2195    	strb.w	r2, [r3, #0x195]
  356972: 9b01         	ldr	r3, [sp, #0x4]
  356974: 2200         	movs	r2, #0x0
  356976: f883 2194    	strb.w	r2, [r3, #0x194]
  35697a: 9b01         	ldr	r3, [sp, #0x4]
  35697c: f04f 0200    	mov.w	r2, #0x0
  356980: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  356984: b005         	add	sp, #0x14
  356986: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x356987); words below are literal-pool data ---
  356988: 5948         	ldr	r0, [r1, r5]
  35698a: 0047         	lsls	r7, r0, #0x1

// ==== M16::setMapConfiguration
//      file offset 0x35698c (= ELF address; Ghidra 0x36698c), 276 bytes, Thumb-2
  35698c: b570         	push	{r4, r5, r6, lr}
  35698e: b084         	sub	sp, #0x10
  356990: 9001         	str	r0, [sp, #0x4]
  356992: 4c41         	ldr	r4, [pc, #0x104]        @ 0x356a98 <M16::setMapConfiguration()+0x10c>
  356994: 447c         	add	r4, pc
  356996: 9b01         	ldr	r3, [sp, #0x4]
  356998: f04f 0200    	mov.w	r2, #0x0
  35699c: f8c3 2190    	str.w	r2, [r3, #0x190]
  3569a0: 9b01         	ldr	r3, [sp, #0x4]
  3569a2: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3569a6: 681b         	ldr	r3, [r3]
  3569a8: 334c         	adds	r3, #0x4c
  3569aa: 681d         	ldr	r5, [r3]
  3569ac: 9b01         	ldr	r3, [sp, #0x4]
  3569ae: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  3569b2: ab02         	add	r3, sp, #0x8
  3569b4: 4618         	mov	r0, r3
  3569b6: f04f 0100    	mov.w	r1, #0x0
  3569ba: f04f 0200    	mov.w	r2, #0x0
  3569be: f23c f997    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x23c32e
  3569c2: ab02         	add	r3, sp, #0x8
  3569c4: 4630         	mov	r0, r6
  3569c6: 4619         	mov	r1, r3
  3569c8: 47a8         	blx	r5
  3569ca: 9b01         	ldr	r3, [sp, #0x4]
  3569cc: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3569d0: 681b         	ldr	r3, [r3]
  3569d2: 337c         	adds	r3, #0x7c
  3569d4: 681d         	ldr	r5, [r3]
  3569d6: 9b01         	ldr	r3, [sp, #0x4]
  3569d8: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  3569dc: ab02         	add	r3, sp, #0x8
  3569de: 4618         	mov	r0, r3
  3569e0: f04f 517c    	mov.w	r1, #0x3f000000
  3569e4: f04f 527c    	mov.w	r2, #0x3f000000
  3569e8: f23c f982    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x23c304
  3569ec: ab02         	add	r3, sp, #0x8
  3569ee: 4630         	mov	r0, r6
  3569f0: 4619         	mov	r1, r3
  3569f2: 47a8         	blx	r5
  3569f4: 9b01         	ldr	r3, [sp, #0x4]
  3569f6: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3569fa: 681b         	ldr	r3, [r3]
  3569fc: 3398         	adds	r3, #0x98
  3569fe: 681b         	ldr	r3, [r3]
  356a00: 9a01         	ldr	r2, [sp, #0x4]
  356a02: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  356a06: 4610         	mov	r0, r2
  356a08: f04f 0100    	mov.w	r1, #0x0
  356a0c: 4798         	blx	r3
  356a0e: 9b01         	ldr	r3, [sp, #0x4]
  356a10: 681b         	ldr	r3, [r3]
  356a12: 334c         	adds	r3, #0x4c
  356a14: 681d         	ldr	r5, [r3]
  356a16: 9e01         	ldr	r6, [sp, #0x4]
  356a18: ab02         	add	r3, sp, #0x8
  356a1a: 4618         	mov	r0, r3
  356a1c: f04f 0100    	mov.w	r1, #0x0
  356a20: f04f 0200    	mov.w	r2, #0x0
  356a24: f23c f964    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x23c2c8
  356a28: ab02         	add	r3, sp, #0x8
  356a2a: 4630         	mov	r0, r6
  356a2c: 4619         	mov	r1, r3
  356a2e: 47a8         	blx	r5
  356a30: 9b01         	ldr	r3, [sp, #0x4]
  356a32: 681b         	ldr	r3, [r3]
  356a34: 3340         	adds	r3, #0x40
  356a36: 681b         	ldr	r3, [r3]
  356a38: 9901         	ldr	r1, [sp, #0x4]
  356a3a: 4a18         	ldr	r2, [pc, #0x60]         @ 0x356a9c <M16::setMapConfiguration()+0x110>
  356a3c: 58a2         	ldr	r2, [r4, r2]
  356a3e: 6812         	ldr	r2, [r2]
  356a40: 4608         	mov	r0, r1
  356a42: 4611         	mov	r1, r2
  356a44: 4798         	blx	r3
  356a46: 9b01         	ldr	r3, [sp, #0x4]
  356a48: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  356a4c: 681b         	ldr	r3, [r3]
  356a4e: 3340         	adds	r3, #0x40
  356a50: 681b         	ldr	r3, [r3]
  356a52: 9a01         	ldr	r2, [sp, #0x4]
  356a54: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  356a58: 4610         	mov	r0, r2
  356a5a: f04f 517e    	mov.w	r1, #0x3f800000
  356a5e: 4798         	blx	r3
  356a60: 9b01         	ldr	r3, [sp, #0x4]
  356a62: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  356a66: 681b         	ldr	r3, [r3]
  356a68: 3390         	adds	r3, #0x90
  356a6a: 681b         	ldr	r3, [r3]
  356a6c: 9a01         	ldr	r2, [sp, #0x4]
  356a6e: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  356a72: 4610         	mov	r0, r2
  356a74: 2100         	movs	r1, #0x0
  356a76: 4798         	blx	r3
  356a78: 9b01         	ldr	r3, [sp, #0x4]
  356a7a: 2200         	movs	r2, #0x0
  356a7c: f883 2195    	strb.w	r2, [r3, #0x195]
  356a80: 9b01         	ldr	r3, [sp, #0x4]
  356a82: 2200         	movs	r2, #0x0
  356a84: f883 2194    	strb.w	r2, [r3, #0x194]
  356a88: 9b01         	ldr	r3, [sp, #0x4]
  356a8a: f04f 0200    	mov.w	r2, #0x0
  356a8e: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  356a92: b004         	add	sp, #0x10
  356a94: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x356a95); words below are literal-pool data ---
  356a96: bf00         	nop
  356a98: c074         	stm	r0!, {r2, r4, r5, r6}
  356a9a: 005d         	lsls	r5, r3, #0x1
  356a9c: d748         	bvc	0x356b30 <M16::setRight(bool)+0x4> @ imm = #0x90
  356a9e: ffff b500    	<unknown>

// ==== M16::getWeaponTexture
//      file offset 0x356aa0 (= ELF address; Ghidra 0x366aa0), 40 bytes, Thumb-2
  356aa0: b500         	push	{lr}
  356aa2: b083         	sub	sp, #0xc
  356aa4: 9001         	str	r0, [sp, #0x4]
  356aa6: 9b01         	ldr	r3, [sp, #0x4]
  356aa8: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  356aac: 681b         	ldr	r3, [r3]
  356aae: f503 73fa    	add.w	r3, r3, #0x1f4
  356ab2: 681b         	ldr	r3, [r3]
  356ab4: 9a01         	ldr	r2, [sp, #0x4]
  356ab6: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  356aba: 4610         	mov	r0, r2
  356abc: 4798         	blx	r3
  356abe: 4603         	mov	r3, r0
  356ac0: 4618         	mov	r0, r3
  356ac2: b003         	add	sp, #0xc
  356ac4: f85d fb04    	ldr	pc, [sp], #4

// ==== M16::getWeaponRect
//      file offset 0x356ac8 (= ELF address; Ghidra 0x366ac8), 38 bytes, Thumb-2
  356ac8: b500         	push	{lr}
  356aca: b083         	sub	sp, #0xc
  356acc: 9001         	str	r0, [sp, #0x4]
  356ace: 9100         	str	r1, [sp]
  356ad0: 9b00         	ldr	r3, [sp]
  356ad2: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  356ad6: 4618         	mov	r0, r3
  356ad8: f786 f900    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x79e00
  356adc: 4603         	mov	r3, r0
  356ade: 9801         	ldr	r0, [sp, #0x4]
  356ae0: 4619         	mov	r1, r3
  356ae2: f23c fc19    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x23c832
  356ae6: 9801         	ldr	r0, [sp, #0x4]
  356ae8: b003         	add	sp, #0xc
  356aea: f85d fb04    	ldr	pc, [sp], #4

// ==== M16::isRight
//      file offset 0x356af0 (= ELF address; Ghidra 0x366af0), 60 bytes, Thumb-2
  356af0: b500         	push	{lr}
  356af2: b083         	sub	sp, #0xc
  356af4: 9001         	str	r0, [sp, #0x4]
  356af6: 9b01         	ldr	r3, [sp, #0x4]
  356af8: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  356afc: 681b         	ldr	r3, [r3]
  356afe: 3334         	adds	r3, #0x34
  356b00: 681b         	ldr	r3, [r3]
  356b02: 9a01         	ldr	r2, [sp, #0x4]
  356b04: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  356b08: 4610         	mov	r0, r2
  356b0a: 4798         	blx	r3
  356b0c: ee07 0a10    	vmov	s14, r0
  356b10: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  356b14: eeb4 7ae7    	vcmpe.f32	s14, s15
  356b18: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  356b1c: bfd4         	ite	le
  356b1e: 2300         	movle	r3, #0x0
  356b20: 2301         	movgt	r3, #0x1
  356b22: b2db         	uxtb	r3, r3
  356b24: 4618         	mov	r0, r3
  356b26: b003         	add	sp, #0xc
  356b28: f85d fb04    	ldr	pc, [sp], #4

// ==== M16::setRight
//      file offset 0x356b2c (= ELF address; Ghidra 0x366b2c), 64 bytes, Thumb-2
  356b2c: b500         	push	{lr}
  356b2e: b083         	sub	sp, #0xc
  356b30: 9001         	str	r0, [sp, #0x4]
  356b32: 460b         	mov	r3, r1
  356b34: f88d 3003    	strb.w	r3, [sp, #0x3]
  356b38: 9b01         	ldr	r3, [sp, #0x4]
  356b3a: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  356b3e: 681b         	ldr	r3, [r3]
  356b40: 3330         	adds	r3, #0x30
  356b42: 681a         	ldr	r2, [r3]
  356b44: 9b01         	ldr	r3, [sp, #0x4]
  356b46: f8d3 11ec    	ldr.w	r1, [r3, #0x1ec]
  356b4a: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  356b4e: 2b00         	cmp	r3, #0x0
  356b50: d002         	beq	0x356b58 <M16::setRight(bool)+0x2c> @ imm = #0x4
  356b52: f04f 537e    	mov.w	r3, #0x3f800000
  356b56: e003         	b	0x356b60 <M16::setRight(bool)+0x34> @ imm = #0x6
  356b58: f04f 0300    	mov.w	r3, #0x0
  356b5c: f6cb 7380    	movt	r3, #0xbf80
  356b60: 4608         	mov	r0, r1
  356b62: 4619         	mov	r1, r3
  356b64: 4790         	blx	r2
  356b66: b003         	add	sp, #0xc
  356b68: f85d fb04    	ldr	pc, [sp], #4

// ==== M16::getRANGE
//      file offset 0x356b6c (= ELF address; Ghidra 0x366b6c), 16 bytes, Thumb-2
  356b6c: 4b02         	ldr	r3, [pc, #0x8]          @ 0x356b78 <M16::getRANGE()+0xc>
  356b6e: 447b         	add	r3, pc
  356b70: 681b         	ldr	r3, [r3]
  356b72: 4618         	mov	r0, r3
  356b74: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x356b75); words below are literal-pool data ---
  356b76: bf00         	nop
  356b78: c856         	ldm	r0!, {r1, r2, r4, r6}
  356b7a: 005d         	lsls	r5, r3, #0x1

// ==== M16::getDAMAGE
//      file offset 0x356b7c (= ELF address; Ghidra 0x366b7c), 16 bytes, Thumb-2
  356b7c: 4b02         	ldr	r3, [pc, #0x8]          @ 0x356b88 <M16::getDAMAGE()+0xc>
  356b7e: 447b         	add	r3, pc
  356b80: 681b         	ldr	r3, [r3]
  356b82: 4618         	mov	r0, r3
  356b84: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x356b85); words below are literal-pool data ---
  356b86: bf00         	nop
  356b88: c842         	ldm	r0!, {r1, r6}
  356b8a: 005d         	lsls	r5, r3, #0x1

// ==== M16::create
//      file offset 0x416ecc (= ELF address; Ghidra 0x426ecc), 112 bytes, Thumb-2
  416ecc: b510         	push	{r4, lr}
  416ece: b082         	sub	sp, #0x8
  416ed0: f44f 7002    	mov.w	r0, #0x208
  416ed4: f370 fd46    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x370a8c
  416ed8: 4603         	mov	r3, r0
  416eda: 461c         	mov	r4, r3
  416edc: 4620         	mov	r0, r4
  416ede: f73e ff35    	bl	0x355d4c <M16::M16()>   @ imm = #-0xc1196
  416ee2: 9401         	str	r4, [sp, #0x4]
  416ee4: 9b01         	ldr	r3, [sp, #0x4]
  416ee6: 2b00         	cmp	r3, #0x0
  416ee8: d00a         	beq	0x416f00 <M16::create()+0x34> @ imm = #0x14
  416eea: 9b01         	ldr	r3, [sp, #0x4]
  416eec: 681b         	ldr	r3, [r3]
  416eee: 3318         	adds	r3, #0x18
  416ef0: 681b         	ldr	r3, [r3]
  416ef2: 9801         	ldr	r0, [sp, #0x4]
  416ef4: 4798         	blx	r3
  416ef6: 4603         	mov	r3, r0
  416ef8: 2b00         	cmp	r3, #0x0
  416efa: d001         	beq	0x416f00 <M16::create()+0x34> @ imm = #0x2
  416efc: 2301         	movs	r3, #0x1
  416efe: e000         	b	0x416f02 <M16::create()+0x36> @ imm = #0x0
  416f00: 2300         	movs	r3, #0x0
  416f02: 2b00         	cmp	r3, #0x0
  416f04: d005         	beq	0x416f12 <M16::create()+0x46> @ imm = #0xa
  416f06: 9b01         	ldr	r3, [sp, #0x4]
  416f08: 4618         	mov	r0, r3
  416f0a: f180 fff7    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x180fee
  416f0e: 9b01         	ldr	r3, [sp, #0x4]
  416f10: e011         	b	0x416f36 <M16::create()+0x6a> @ imm = #0x22
  416f12: 9b01         	ldr	r3, [sp, #0x4]
  416f14: 2b00         	cmp	r3, #0x0
  416f16: d005         	beq	0x416f24 <M16::create()+0x58> @ imm = #0xa
  416f18: 9b01         	ldr	r3, [sp, #0x4]
  416f1a: 681b         	ldr	r3, [r3]
  416f1c: 3308         	adds	r3, #0x8
  416f1e: 681b         	ldr	r3, [r3]
  416f20: 9801         	ldr	r0, [sp, #0x4]
  416f22: 4798         	blx	r3
  416f24: 2300         	movs	r3, #0x0
  416f26: 9301         	str	r3, [sp, #0x4]
  416f28: 2300         	movs	r3, #0x0
  416f2a: e004         	b	0x416f36 <M16::create()+0x6a> @ imm = #0x8
  416f2c: 4620         	mov	r0, r4
  416f2e: f371 f8b9    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x371172
  416f32: f371 f8bb    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x371176
  416f36: 4618         	mov	r0, r3
  416f38: b002         	add	sp, #0x8
  416f3a: bd10         	pop	{r4, pc}
