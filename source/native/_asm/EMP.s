// EMP: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 20 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../EMP.cpp

// ==== EMP::EMP
//      file offset 0x311bf4 (= ELF address; Ghidra 0x321bf4), 44 bytes, Thumb-2
  311bf4: b510         	push	{r4, lr}
  311bf6: b082         	sub	sp, #0x8
  311bf8: 9001         	str	r0, [sp, #0x4]
  311bfa: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x311c18 <EMP::EMP()+0x24>
  311bfc: 447c         	add	r4, pc
  311bfe: 9b01         	ldr	r3, [sp, #0x4]
  311c00: 4618         	mov	r0, r3
  311c02: f103 f9d1    	bl	0x414fa8 <Weapon::Weapon()> @ imm = #0x1033a2
  311c06: 9b01         	ldr	r3, [sp, #0x4]
  311c08: 4a04         	ldr	r2, [pc, #0x10]         @ 0x311c1c <EMP::EMP()+0x28>
  311c0a: 58a2         	ldr	r2, [r4, r2]
  311c0c: 3208         	adds	r2, #0x8
  311c0e: 601a         	str	r2, [r3]
  311c10: 9b01         	ldr	r3, [sp, #0x4]
  311c12: 4618         	mov	r0, r3
  311c14: b002         	add	sp, #0x8
  311c16: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x311c17); words below are literal-pool data ---
  311c18: 0e0c         	lsrs	r4, r1, #0x18
  311c1a: 0062         	lsls	r2, r4, #0x1
  311c1c: d9c0         	bls	0x311ba0 <DEAGLE::getDAMAGE()+0xfdc> @ imm = #-0x80
  311c1e: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== EMP::init
//      file offset 0x311c20 (= ELF address; Ghidra 0x321c20), 940 bytes, Thumb-2
  311c20: b530         	push	{r4, r5, lr}
  311c22: b08b         	sub	sp, #0x2c
  311c24: 9005         	str	r0, [sp, #0x14]
  311c26: 9b05         	ldr	r3, [sp, #0x14]
  311c28: 4618         	mov	r0, r3
  311c2a: f103 f9e1    	bl	0x414ff0 <Weapon::init()> @ imm = #0x1033c2
  311c2e: 4603         	mov	r3, r0
  311c30: f88d 301f    	strb.w	r3, [sp, #0x1f]
  311c34: f89d 301f    	ldrb.w	r3, [sp, #0x1f]
  311c38: f083 0301    	eor	r3, r3, #0x1
  311c3c: b2db         	uxtb	r3, r3
  311c3e: 2b00         	cmp	r3, #0x0
  311c40: d001         	beq	0x311c46 <EMP::init()+0x26> @ imm = #0x2
  311c42: 2300         	movs	r3, #0x0
  311c44: e1a6         	b	0x311f94 <EMP::init()+0x374> @ imm = #0x34c
  311c46: 4bda         	ldr	r3, [pc, #0x368]        @ 0x311fb0 <EMP::init()+0x390>
  311c48: 447b         	add	r3, pc
  311c4a: 4618         	mov	r0, r3
  311c4c: f2c6 fb5a    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2c66b4
  311c50: 4602         	mov	r2, r0
  311c52: 9b05         	ldr	r3, [sp, #0x14]
  311c54: f8c3 21ec    	str.w	r2, [r3, #0x1ec]
  311c58: 9b05         	ldr	r3, [sp, #0x14]
  311c5a: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  311c5e: 4618         	mov	r0, r3
  311c60: f286 f942    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x286284
  311c64: 4bd3         	ldr	r3, [pc, #0x34c]        @ 0x311fb4 <EMP::init()+0x394>
  311c66: 447b         	add	r3, pc
  311c68: 4618         	mov	r0, r3
  311c6a: f2c6 fb4b    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2c6696
  311c6e: 4602         	mov	r2, r0
  311c70: 9b05         	ldr	r3, [sp, #0x14]
  311c72: f8c3 21f0    	str.w	r2, [r3, #0x1f0]
  311c76: 9b05         	ldr	r3, [sp, #0x14]
  311c78: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  311c7c: 4618         	mov	r0, r3
  311c7e: f286 f933    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x286266
  311c82: 9b05         	ldr	r3, [sp, #0x14]
  311c84: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  311c88: 681b         	ldr	r3, [r3]
  311c8a: 3340         	adds	r3, #0x40
  311c8c: 681b         	ldr	r3, [r3]
  311c8e: 9a05         	ldr	r2, [sp, #0x14]
  311c90: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  311c94: 4610         	mov	r0, r2
  311c96: f649 119a    	movw	r1, #0x999a
  311c9a: f6c3 6199    	movt	r1, #0x3e99
  311c9e: 4798         	blx	r3
  311ca0: 9b05         	ldr	r3, [sp, #0x14]
  311ca2: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  311ca6: 681b         	ldr	r3, [r3]
  311ca8: 3390         	adds	r3, #0x90
  311caa: 681b         	ldr	r3, [r3]
  311cac: 9a05         	ldr	r2, [sp, #0x14]
  311cae: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  311cb2: 4610         	mov	r0, r2
  311cb4: 2100         	movs	r1, #0x0
  311cb6: 4798         	blx	r3
  311cb8: 9b05         	ldr	r3, [sp, #0x14]
  311cba: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  311cbe: 681b         	ldr	r3, [r3]
  311cc0: 334c         	adds	r3, #0x4c
  311cc2: 681c         	ldr	r4, [r3]
  311cc4: 9b05         	ldr	r3, [sp, #0x14]
  311cc6: f8d3 51f0    	ldr.w	r5, [r3, #0x1f0]
  311cca: ab08         	add	r3, sp, #0x20
  311ccc: 4618         	mov	r0, r3
  311cce: f04f 0100    	mov.w	r1, #0x0
  311cd2: f2c4 21ec    	movt	r1, #0x42ec
  311cd6: f04f 0200    	mov.w	r2, #0x0
  311cda: f2c4 12d8    	movt	r2, #0x41d8
  311cde: f281 f807    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x28100e
  311ce2: ab08         	add	r3, sp, #0x20
  311ce4: 4628         	mov	r0, r5
  311ce6: 4619         	mov	r1, r3
  311ce8: 47a0         	blx	r4
  311cea: 9b05         	ldr	r3, [sp, #0x14]
  311cec: 681b         	ldr	r3, [r3]
  311cee: f503 73f0    	add.w	r3, r3, #0x1e0
  311cf2: 681b         	ldr	r3, [r3]
  311cf4: 9805         	ldr	r0, [sp, #0x14]
  311cf6: 4798         	blx	r3
  311cf8: 9b05         	ldr	r3, [sp, #0x14]
  311cfa: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  311cfe: 681b         	ldr	r3, [r3]
  311d00: 33cc         	adds	r3, #0xcc
  311d02: 681b         	ldr	r3, [r3]
  311d04: 9a05         	ldr	r2, [sp, #0x14]
  311d06: f8d2 11ec    	ldr.w	r1, [r2, #0x1ec]
  311d0a: 9a05         	ldr	r2, [sp, #0x14]
  311d0c: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  311d10: 4608         	mov	r0, r1
  311d12: 4611         	mov	r1, r2
  311d14: 2200         	movs	r2, #0x0
  311d16: 4798         	blx	r3
  311d18: 9b05         	ldr	r3, [sp, #0x14]
  311d1a: 681b         	ldr	r3, [r3]
  311d1c: 33cc         	adds	r3, #0xcc
  311d1e: 681b         	ldr	r3, [r3]
  311d20: 9905         	ldr	r1, [sp, #0x14]
  311d22: 9a05         	ldr	r2, [sp, #0x14]
  311d24: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  311d28: 4608         	mov	r0, r1
  311d2a: 4611         	mov	r1, r2
  311d2c: 2200         	movs	r2, #0x0
  311d2e: 4798         	blx	r3
  311d30: 9b05         	ldr	r3, [sp, #0x14]
  311d32: f8d3 4150    	ldr.w	r4, [r3, #0x150]
  311d36: f04f 507e    	mov.w	r0, #0x3f800000
  311d3a: f7ca ffa3    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x350ba
  311d3e: 4603         	mov	r3, r0
  311d40: 4620         	mov	r0, r4
  311d42: 4619         	mov	r1, r3
  311d44: f288 fa92    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x288524
  311d48: 9b05         	ldr	r3, [sp, #0x14]
  311d4a: f8d3 414c    	ldr.w	r4, [r3, #0x14c]
  311d4e: ab07         	add	r3, sp, #0x1c
  311d50: 4618         	mov	r0, r3
  311d52: f078 f34f    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x47869e
  311d56: aa08         	add	r2, sp, #0x20
  311d58: ab07         	add	r3, sp, #0x1c
  311d5a: 4610         	mov	r0, r2
  311d5c: 4a96         	ldr	r2, [pc, #0x258]        @ 0x311fb8 <EMP::init()+0x398>
  311d5e: 447a         	add	r2, pc
  311d60: 4611         	mov	r1, r2
  311d62: 461a         	mov	r2, r3
  311d64: f0a4 f67c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4a4cf8
  311d68: ab08         	add	r3, sp, #0x20
  311d6a: 4618         	mov	r0, r3
  311d6c: f287 fe66    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x287ccc
  311d70: 4603         	mov	r3, r0
  311d72: 4620         	mov	r0, r4
  311d74: 4619         	mov	r1, r3
  311d76: f288 fa79    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x2884f2
  311d7a: ab08         	add	r3, sp, #0x20
  311d7c: 4618         	mov	r0, r3
  311d7e: f0a3 f5c9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a3b92
  311d82: ab07         	add	r3, sp, #0x1c
  311d84: 4618         	mov	r0, r3
  311d86: f078 f339    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x478672
  311d8a: 9b05         	ldr	r3, [sp, #0x14]
  311d8c: f8d3 4150    	ldr.w	r4, [r3, #0x150]
  311d90: f246 6066    	movw	r0, #0x6666
  311d94: f6c3 7066    	movt	r0, #0x3f66
  311d98: f7ca ff74    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x35118
  311d9c: 4603         	mov	r3, r0
  311d9e: 4620         	mov	r0, r4
  311da0: 4619         	mov	r1, r3
  311da2: f288 fa63    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x2884c6
  311da6: 9b05         	ldr	r3, [sp, #0x14]
  311da8: f8d3 414c    	ldr.w	r4, [r3, #0x14c]
  311dac: ab07         	add	r3, sp, #0x1c
  311dae: 4618         	mov	r0, r3
  311db0: f078 f320    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x478640
  311db4: aa08         	add	r2, sp, #0x20
  311db6: ab07         	add	r3, sp, #0x1c
  311db8: 4610         	mov	r0, r2
  311dba: 4a80         	ldr	r2, [pc, #0x200]        @ 0x311fbc <EMP::init()+0x39c>
  311dbc: 447a         	add	r2, pc
  311dbe: 4611         	mov	r1, r2
  311dc0: 461a         	mov	r2, r3
  311dc2: f0a4 f64d    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4a4c9a
  311dc6: ab08         	add	r3, sp, #0x20
  311dc8: 4618         	mov	r0, r3
  311dca: f287 fe37    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x287c6e
  311dce: 4603         	mov	r3, r0
  311dd0: 4620         	mov	r0, r4
  311dd2: 4619         	mov	r1, r3
  311dd4: f288 fa4a    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x288494
  311dd8: ab08         	add	r3, sp, #0x20
  311dda: 4618         	mov	r0, r3
  311ddc: f0a3 f59a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a3b34
  311de0: ab07         	add	r3, sp, #0x1c
  311de2: 4618         	mov	r0, r3
  311de4: f078 f30a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x478614
  311de8: 9b05         	ldr	r3, [sp, #0x14]
  311dea: f8d3 4150    	ldr.w	r4, [r3, #0x150]
  311dee: f243 3033    	movw	r0, #0x3333
  311df2: f6c3 7033    	movt	r0, #0x3f33
  311df6: f7ca ff45    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x35176
  311dfa: 4603         	mov	r3, r0
  311dfc: 4620         	mov	r0, r4
  311dfe: 4619         	mov	r1, r3
  311e00: f288 fa34    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x288468
  311e04: 9b05         	ldr	r3, [sp, #0x14]
  311e06: f8d3 414c    	ldr.w	r4, [r3, #0x14c]
  311e0a: ab07         	add	r3, sp, #0x1c
  311e0c: 4618         	mov	r0, r3
  311e0e: f078 f2f1    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4785e2
  311e12: aa08         	add	r2, sp, #0x20
  311e14: ab07         	add	r3, sp, #0x1c
  311e16: 4610         	mov	r0, r2
  311e18: 4a69         	ldr	r2, [pc, #0x1a4]        @ 0x311fc0 <EMP::init()+0x3a0>
  311e1a: 447a         	add	r2, pc
  311e1c: 4611         	mov	r1, r2
  311e1e: 461a         	mov	r2, r3
  311e20: f0a4 f61e    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4a4c3c
  311e24: ab08         	add	r3, sp, #0x20
  311e26: 4618         	mov	r0, r3
  311e28: f287 fe08    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x287c10
  311e2c: 4603         	mov	r3, r0
  311e2e: 4620         	mov	r0, r4
  311e30: 4619         	mov	r1, r3
  311e32: f288 fa1b    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x288436
  311e36: ab08         	add	r3, sp, #0x20
  311e38: 4618         	mov	r0, r3
  311e3a: f0a3 f56b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a3ad6
  311e3e: ab07         	add	r3, sp, #0x1c
  311e40: 4618         	mov	r0, r3
  311e42: f078 f2db    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4785b6
  311e46: 9b05         	ldr	r3, [sp, #0x14]
  311e48: 2200         	movs	r2, #0x0
  311e4a: f883 21f4    	strb.w	r2, [r3, #0x1f4]
  311e4e: 9b05         	ldr	r3, [sp, #0x14]
  311e50: f04f 0200    	mov.w	r2, #0x0
  311e54: f8c3 21fc    	str.w	r2, [r3, #0x1fc]
  311e58: 9b05         	ldr	r3, [sp, #0x14]
  311e5a: f04f 0200    	mov.w	r2, #0x0
  311e5e: f8c3 21f8    	str.w	r2, [r3, #0x1f8]
  311e62: 9b05         	ldr	r3, [sp, #0x14]
  311e64: 2200         	movs	r2, #0x0
  311e66: f8c3 2144    	str.w	r2, [r3, #0x144]
  311e6a: 9b05         	ldr	r3, [sp, #0x14]
  311e6c: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  311e70: 4618         	mov	r0, r3
  311e72: 2100         	movs	r1, #0x0
  311e74: f288 f954    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2882a8
  311e78: 4603         	mov	r3, r0
  311e7a: 4618         	mov	r0, r3
  311e7c: f7ca fefa    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x3520c
  311e80: 4602         	mov	r2, r0
  311e82: 9b05         	ldr	r3, [sp, #0x14]
  311e84: f8c3 2148    	str.w	r2, [r3, #0x148]
  311e88: 9b05         	ldr	r3, [sp, #0x14]
  311e8a: f04f 527f    	mov.w	r2, #0x3fc00000
  311e8e: f8c3 215c    	str.w	r2, [r3, #0x15c]
  311e92: 9b05         	ldr	r3, [sp, #0x14]
  311e94: f04f 0200    	mov.w	r2, #0x0
  311e98: f2c4 0240    	movt	r2, #0x4040
  311e9c: f8c3 2160    	str.w	r2, [r3, #0x160]
  311ea0: 9b05         	ldr	r3, [sp, #0x14]
  311ea2: f04f 0200    	mov.w	r2, #0x0
  311ea6: f8c3 2164    	str.w	r2, [r3, #0x164]
  311eaa: 9b05         	ldr	r3, [sp, #0x14]
  311eac: f04f 0200    	mov.w	r2, #0x0
  311eb0: f8c3 216c    	str.w	r2, [r3, #0x16c]
  311eb4: 9b05         	ldr	r3, [sp, #0x14]
  311eb6: 2208         	movs	r2, #0x8
  311eb8: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  311ebc: 9b05         	ldr	r3, [sp, #0x14]
  311ebe: 2201         	movs	r2, #0x1
  311ec0: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  311ec4: 9b05         	ldr	r3, [sp, #0x14]
  311ec6: 227d         	movs	r2, #0x7d
  311ec8: f8c3 218c    	str.w	r2, [r3, #0x18c]
  311ecc: 9b05         	ldr	r3, [sp, #0x14]
  311ece: 2215         	movs	r2, #0x15
  311ed0: f8c3 2188    	str.w	r2, [r3, #0x188]
  311ed4: 9b05         	ldr	r3, [sp, #0x14]
  311ed6: 2232         	movs	r2, #0x32
  311ed8: f8c3 219c    	str.w	r2, [r3, #0x19c]
  311edc: 9b05         	ldr	r3, [sp, #0x14]
  311ede: 2223         	movs	r2, #0x23
  311ee0: f8c3 21a0    	str.w	r2, [r3, #0x1a0]
  311ee4: 4b37         	ldr	r3, [pc, #0xdc]         @ 0x311fc4 <EMP::init()+0x3a4>
  311ee6: 447b         	add	r3, pc
  311ee8: 681a         	ldr	r2, [r3]
  311eea: 9b05         	ldr	r3, [sp, #0x14]
  311eec: f8c3 21a4    	str.w	r2, [r3, #0x1a4]
  311ef0: 9b05         	ldr	r3, [sp, #0x14]
  311ef2: 2201         	movs	r2, #0x1
  311ef4: f8c3 21bc    	str.w	r2, [r3, #0x1bc]
  311ef8: 9b05         	ldr	r3, [sp, #0x14]
  311efa: f04f 0200    	mov.w	r2, #0x0
  311efe: f2cc 12c8    	movt	r2, #0xc1c8
  311f02: f8c3 21b8    	str.w	r2, [r3, #0x1b8]
  311f06: 9b05         	ldr	r3, [sp, #0x14]
  311f08: f246 6266    	movw	r2, #0x6666
  311f0c: f6c3 7266    	movt	r2, #0x3f66
  311f10: f8c3 21cc    	str.w	r2, [r3, #0x1cc]
  311f14: 9b05         	ldr	r3, [sp, #0x14]
  311f16: 2201         	movs	r2, #0x1
  311f18: f8c3 2170    	str.w	r2, [r3, #0x170]
  311f1c: 9b05         	ldr	r3, [sp, #0x14]
  311f1e: 2210         	movs	r2, #0x10
  311f20: f8c3 2174    	str.w	r2, [r3, #0x174]
  311f24: 9c05         	ldr	r4, [sp, #0x14]
  311f26: 466b         	mov	r3, sp
  311f28: 4618         	mov	r0, r3
  311f2a: ed9f 0b1d    	vldr	d0, [pc, #116]          @ 0x311fa0 <EMP::init()+0x380>
  311f2e: ed9f 1b1e    	vldr	d1, [pc, #120]          @ 0x311fa8 <EMP::init()+0x388>
  311f32: f7fe ff13    	bl	0x310d5c <DEAGLE::getDAMAGE()+0x198> @ imm = #-0x11da
  311f36: f504 74ec    	add.w	r4, r4, #0x1d8
  311f3a: 466b         	mov	r3, sp
  311f3c: cb0f         	ldm	r3, {r0, r1, r2, r3}
  311f3e: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  311f42: 4b21         	ldr	r3, [pc, #0x84]         @ 0x311fc8 <EMP::init()+0x3a8>
  311f44: 447b         	add	r3, pc
  311f46: 681a         	ldr	r2, [r3]
  311f48: 9b05         	ldr	r3, [sp, #0x14]
  311f4a: f8c3 2198    	str.w	r2, [r3, #0x198]
  311f4e: 2301         	movs	r3, #0x1
  311f50: e020         	b	0x311f94 <EMP::init()+0x374> @ imm = #0x40
  311f52: ab08         	add	r3, sp, #0x20
  311f54: 4618         	mov	r0, r3
  311f56: f0a3 f4dd    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a39ba
  311f5a: e7ff         	b	0x311f5c <EMP::init()+0x33c> @ imm = #-0x2
  311f5c: ab07         	add	r3, sp, #0x1c
  311f5e: 4618         	mov	r0, r3
  311f60: f078 f24c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x478498
  311f64: f076 f0a2    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x476144
  311f68: ab08         	add	r3, sp, #0x20
  311f6a: 4618         	mov	r0, r3
  311f6c: f0a3 f4d2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a39a4
  311f70: e7ff         	b	0x311f72 <EMP::init()+0x352> @ imm = #-0x2
  311f72: ab07         	add	r3, sp, #0x1c
  311f74: 4618         	mov	r0, r3
  311f76: f078 f241    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x478482
  311f7a: f076 f097    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x47612e
  311f7e: ab08         	add	r3, sp, #0x20
  311f80: 4618         	mov	r0, r3
  311f82: f0a3 f4c7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a398e
  311f86: e7ff         	b	0x311f88 <EMP::init()+0x368> @ imm = #-0x2
  311f88: ab07         	add	r3, sp, #0x1c
  311f8a: 4618         	mov	r0, r3
  311f8c: f078 f236    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x47846c
  311f90: f076 f08c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x476118
  311f94: 4618         	mov	r0, r3
  311f96: b00b         	add	sp, #0x2c
  311f98: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x311f99); words below are literal-pool data ---
  311f9a: bf00         	nop
  311f9c: f3af 8000    	nop.w
  311fa0: 0000         	movs	r0, r0
  311fa2: 0000         	movs	r0, r0
  311fa4: 8000         	strh	r0, [r0]
  311fa6: 4059         	eors	r1, r3
  311fa8: 0000         	movs	r0, r0
  311faa: 0000         	movs	r0, r0
  311fac: 0000         	movs	r0, r0
  311fae: 404e         	eors	r6, r1
  311fb0: 4bbc         	ldr	r3, [pc, #0x2f0]        @ 0x3122a4 <EMP::triggerPull(float)+0x244>
  311fb2: 004b         	lsls	r3, r1, #0x1
  311fb4: 4ba6         	ldr	r3, [pc, #0x298]        @ 0x312250 <EMP::triggerPull(float)+0x1f0>
  311fb6: 004b         	lsls	r3, r1, #0x1
  311fb8: 4abe         	ldr	r2, [pc, #0x2f8]        @ 0x3122b4 <EMP::triggerPull(float)+0x254>
  311fba: 004b         	lsls	r3, r1, #0x1
  311fbc: 4a64         	ldr	r2, [pc, #0x190]        @ 0x312150 <EMP::triggerPull(float)+0xf0>
  311fbe: 004b         	lsls	r3, r1, #0x1
  311fc0: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x311fec <EMP::~EMP()+0x1c>
  311fc2: 004b         	lsls	r3, r1, #0x1
  311fc4: 13e6         	asrs	r6, r4, #0xf
  311fc6: 0062         	lsls	r2, r4, #0x1
  311fc8: 1384         	asrs	r4, r0, #0xe
  311fca: 0062         	lsls	r2, r4, #0x1

// ==== EMP::~EMP
//      file offset 0x311fd0 (= ELF address; Ghidra 0x321fd0), 116 bytes, Thumb-2
  311fd0: b500         	push	{lr}
  311fd2: b083         	sub	sp, #0xc
  311fd4: 9001         	str	r0, [sp, #0x4]
  311fd6: 4919         	ldr	r1, [pc, #0x64]         @ 0x31203c <EMP::~EMP()+0x6c>
  311fd8: 4479         	add	r1, pc
  311fda: 9b01         	ldr	r3, [sp, #0x4]
  311fdc: 4a18         	ldr	r2, [pc, #0x60]         @ 0x312040 <EMP::~EMP()+0x70>
  311fde: 588a         	ldr	r2, [r1, r2]
  311fe0: 3208         	adds	r2, #0x8
  311fe2: 601a         	str	r2, [r3]
  311fe4: 9b01         	ldr	r3, [sp, #0x4]
  311fe6: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  311fea: 681b         	ldr	r3, [r3]
  311fec: f503 7380    	add.w	r3, r3, #0x100
  311ff0: 681b         	ldr	r3, [r3]
  311ff2: 9a01         	ldr	r2, [sp, #0x4]
  311ff4: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  311ff8: 4610         	mov	r0, r2
  311ffa: 4798         	blx	r3
  311ffc: 9b01         	ldr	r3, [sp, #0x4]
  311ffe: 4618         	mov	r0, r3
  312000: f27e fb14    	bl	0x59062c <cocos2d::CCNode::removeAllChildren()> @ imm = #0x27e628
  312004: 9b01         	ldr	r3, [sp, #0x4]
  312006: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  31200a: 4618         	mov	r0, r3
  31200c: f285 ff54    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x285ea8
  312010: 9b01         	ldr	r3, [sp, #0x4]
  312012: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  312016: 4618         	mov	r0, r3
  312018: f285 ff4e    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x285e9c
  31201c: 9b01         	ldr	r3, [sp, #0x4]
  31201e: 4618         	mov	r0, r3
  312020: f103 f8e6    	bl	0x4151f0 <Weapon::~Weapon()> @ imm = #0x1031cc
  312024: 2300         	movs	r3, #0x0
  312026: 2b00         	cmp	r3, #0x0
  312028: d002         	beq	0x312030 <EMP::~EMP()+0x60> @ imm = #0x4
  31202a: 9801         	ldr	r0, [sp, #0x4]
  31202c: f076 f03a    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x476074
  312030: 9b01         	ldr	r3, [sp, #0x4]
  312032: 4618         	mov	r0, r3
  312034: b003         	add	sp, #0xc
  312036: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x312039); words below are literal-pool data ---
  31203a: bf00         	nop
  31203c: 0a30         	lsrs	r0, r6, #0x8
  31203e: 0062         	lsls	r2, r4, #0x1
  312040: d9c0         	bls	0x311fc4 <EMP::init()+0x3a4> @ imm = #-0x80
  312042: ffff b500    	<unknown>

// ==== EMP::~EMP
//      file offset 0x312044 (= ELF address; Ghidra 0x322044), 28 bytes, Thumb-2
  312044: b500         	push	{lr}
  312046: b083         	sub	sp, #0xc
  312048: 9001         	str	r0, [sp, #0x4]
  31204a: 9801         	ldr	r0, [sp, #0x4]
  31204c: f7ff ffc0    	bl	0x311fd0 <EMP::~EMP()>  @ imm = #-0x80
  312050: 9801         	ldr	r0, [sp, #0x4]
  312052: f076 f027    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x47604e
  312056: 9b01         	ldr	r3, [sp, #0x4]
  312058: 4618         	mov	r0, r3
  31205a: b003         	add	sp, #0xc
  31205c: f85d fb04    	ldr	pc, [sp], #4

// ==== EMP::triggerPull
//      file offset 0x312060 (= ELF address; Ghidra 0x322060), 612 bytes, Thumb-2
  312060: b510         	push	{r4, lr}
  312062: b088         	sub	sp, #0x20
  312064: 9003         	str	r0, [sp, #0xc]
  312066: 9102         	str	r1, [sp, #0x8]
  312068: 4c94         	ldr	r4, [pc, #0x250]        @ 0x3122bc <EMP::triggerPull(float)+0x25c>
  31206a: 447c         	add	r4, pc
  31206c: 9b03         	ldr	r3, [sp, #0xc]
  31206e: 2201         	movs	r2, #0x1
  312070: f883 21f4    	strb.w	r2, [r3, #0x1f4]
  312074: 9b03         	ldr	r3, [sp, #0xc]
  312076: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  31207a: b21b         	sxth	r3, r3
  31207c: 2b00         	cmp	r3, #0x0
  31207e: dd0f         	ble	0x3120a0 <EMP::triggerPull(float)+0x40> @ imm = #0x1e
  312080: 9b03         	ldr	r3, [sp, #0xc]
  312082: 681b         	ldr	r3, [r3]
  312084: f503 7333    	add.w	r3, r3, #0x2cc
  312088: 681b         	ldr	r3, [r3]
  31208a: 9a03         	ldr	r2, [sp, #0xc]
  31208c: 4610         	mov	r0, r2
  31208e: 4798         	blx	r3
  312090: 4603         	mov	r3, r0
  312092: f083 0301    	eor	r3, r3, #0x1
  312096: b2db         	uxtb	r3, r3
  312098: 2b00         	cmp	r3, #0x0
  31209a: d001         	beq	0x3120a0 <EMP::triggerPull(float)+0x40> @ imm = #0x2
  31209c: 2301         	movs	r3, #0x1
  31209e: e000         	b	0x3120a2 <EMP::triggerPull(float)+0x42> @ imm = #0x0
  3120a0: 2300         	movs	r3, #0x0
  3120a2: 2b00         	cmp	r3, #0x0
  3120a4: d055         	beq	0x312152 <EMP::triggerPull(float)+0xf2> @ imm = #0xaa
  3120a6: 9b03         	ldr	r3, [sp, #0xc]
  3120a8: f893 3195    	ldrb.w	r3, [r3, #0x195]
  3120ac: 3301         	adds	r3, #0x1
  3120ae: b2da         	uxtb	r2, r3
  3120b0: 9b03         	ldr	r3, [sp, #0xc]
  3120b2: f883 2195    	strb.w	r2, [r3, #0x195]
  3120b6: 9b03         	ldr	r3, [sp, #0xc]
  3120b8: ed93 7a7e    	vldr	s14, [r3, #504]
  3120bc: eddd 7a02    	vldr	s15, [sp, #8]
  3120c0: ee77 7a27    	vadd.f32	s15, s14, s15
  3120c4: 9b03         	ldr	r3, [sp, #0xc]
  3120c6: edc3 7a7e    	vstr	s15, [r3, #504]
  3120ca: 9b03         	ldr	r3, [sp, #0xc]
  3120cc: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3120d0: 681b         	ldr	r3, [r3]
  3120d2: 3340         	adds	r3, #0x40
  3120d4: 681b         	ldr	r3, [r3]
  3120d6: 9a03         	ldr	r2, [sp, #0xc]
  3120d8: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  3120dc: 9903         	ldr	r1, [sp, #0xc]
  3120de: edd1 7a44    	vldr	s15, [r1, #272]
  3120e2: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3120e6: ed9f 7b6e    	vldr	d7, [pc, #440]          @ 0x3122a0 <EMP::triggerPull(float)+0x240>
  3120ea: ee26 6b07    	vmul.f64	d6, d6, d7
  3120ee: ed9f 7b6e    	vldr	d7, [pc, #440]          @ 0x3122a8 <EMP::triggerPull(float)+0x248>
  3120f2: eeb4 6bc7    	vcmpe.f64	d6, d7
  3120f6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3120fa: d50b         	bpl	0x312114 <EMP::triggerPull(float)+0xb4> @ imm = #0x16
  3120fc: 9903         	ldr	r1, [sp, #0xc]
  3120fe: edd1 7a44    	vldr	s15, [r1, #272]
  312102: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  312106: ed9f 7b66    	vldr	d7, [pc, #408]          @ 0x3122a0 <EMP::triggerPull(float)+0x240>
  31210a: ee26 7b07    	vmul.f64	d7, d6, d7
  31210e: eef7 7bc7    	vcvt.f32.f64	s15, d7
  312112: e001         	b	0x312118 <EMP::triggerPull(float)+0xb8> @ imm = #0x2
  312114: eddf 7a68    	vldr	s15, [pc, #416]         @ 0x3122b8 <EMP::triggerPull(float)+0x258>
  312118: 4610         	mov	r0, r2
  31211a: ee17 1a90    	vmov	r1, s15
  31211e: 4798         	blx	r3
  312120: 9b03         	ldr	r3, [sp, #0xc]
  312122: edd3 7a7e    	vldr	s15, [r3, #504]
  312126: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  31212a: ed9f 7b61    	vldr	d7, [pc, #388]          @ 0x3122b0 <EMP::triggerPull(float)+0x250>
  31212e: eeb4 6bc7    	vcmpe.f64	d6, d7
  312132: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  312136: dd1e         	ble	0x312176 <EMP::triggerPull(float)+0x116> @ imm = #0x3c
  312138: 9b03         	ldr	r3, [sp, #0xc]
  31213a: 681b         	ldr	r3, [r3]
  31213c: f503 7325    	add.w	r3, r3, #0x294
  312140: 681b         	ldr	r3, [r3]
  312142: 9803         	ldr	r0, [sp, #0xc]
  312144: 4798         	blx	r3
  312146: 9b03         	ldr	r3, [sp, #0xc]
  312148: f04f 0200    	mov.w	r2, #0x0
  31214c: f8c3 21f8    	str.w	r2, [r3, #0x1f8]
  312150: e011         	b	0x312176 <EMP::triggerPull(float)+0x116> @ imm = #0x22
  312152: 9b03         	ldr	r3, [sp, #0xc]
  312154: f04f 0200    	mov.w	r2, #0x0
  312158: f8c3 2110    	str.w	r2, [r3, #0x110]
  31215c: 9b03         	ldr	r3, [sp, #0xc]
  31215e: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  312162: 681b         	ldr	r3, [r3]
  312164: 3340         	adds	r3, #0x40
  312166: 681b         	ldr	r3, [r3]
  312168: 9a03         	ldr	r2, [sp, #0xc]
  31216a: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  31216e: 4610         	mov	r0, r2
  312170: f04f 0100    	mov.w	r1, #0x0
  312174: 4798         	blx	r3
  312176: 9b03         	ldr	r3, [sp, #0xc]
  312178: ed93 7a44    	vldr	s14, [r3, #272]
  31217c: 9b03         	ldr	r3, [sp, #0xc]
  31217e: edd3 7a57    	vldr	s15, [r3, #348]
  312182: eeb4 7ae7    	vcmpe.f32	s14, s15
  312186: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  31218a: dd5e         	ble	0x31224a <EMP::triggerPull(float)+0x1ea> @ imm = #0xbc
  31218c: 9b03         	ldr	r3, [sp, #0xc]
  31218e: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  312192: b21b         	sxth	r3, r3
  312194: 2b00         	cmp	r3, #0x0
  312196: dd0f         	ble	0x3121b8 <EMP::triggerPull(float)+0x158> @ imm = #0x1e
  312198: 9b03         	ldr	r3, [sp, #0xc]
  31219a: 681b         	ldr	r3, [r3]
  31219c: f503 7333    	add.w	r3, r3, #0x2cc
  3121a0: 681b         	ldr	r3, [r3]
  3121a2: 9a03         	ldr	r2, [sp, #0xc]
  3121a4: 4610         	mov	r0, r2
  3121a6: 4798         	blx	r3
  3121a8: 4603         	mov	r3, r0
  3121aa: f083 0301    	eor	r3, r3, #0x1
  3121ae: b2db         	uxtb	r3, r3
  3121b0: 2b00         	cmp	r3, #0x0
  3121b2: d001         	beq	0x3121b8 <EMP::triggerPull(float)+0x158> @ imm = #0x2
  3121b4: 2301         	movs	r3, #0x1
  3121b6: e000         	b	0x3121ba <EMP::triggerPull(float)+0x15a> @ imm = #0x0
  3121b8: 2300         	movs	r3, #0x0
  3121ba: 2b00         	cmp	r3, #0x0
  3121bc: d019         	beq	0x3121f2 <EMP::triggerPull(float)+0x192> @ imm = #0x32
  3121be: 9b03         	ldr	r3, [sp, #0xc]
  3121c0: 681b         	ldr	r3, [r3]
  3121c2: f503 7342    	add.w	r3, r3, #0x308
  3121c6: 681b         	ldr	r3, [r3]
  3121c8: 9a03         	ldr	r2, [sp, #0xc]
  3121ca: 4610         	mov	r0, r2
  3121cc: 4798         	blx	r3
  3121ce: 9b03         	ldr	r3, [sp, #0xc]
  3121d0: f893 3195    	ldrb.w	r3, [r3, #0x195]
  3121d4: 3301         	adds	r3, #0x1
  3121d6: b2da         	uxtb	r2, r3
  3121d8: 9b03         	ldr	r3, [sp, #0xc]
  3121da: f883 2195    	strb.w	r2, [r3, #0x195]
  3121de: 9b03         	ldr	r3, [sp, #0xc]
  3121e0: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  3121e4: b29b         	uxth	r3, r3
  3121e6: 3b00         	subs	r3, #0x0
  3121e8: b29a         	uxth	r2, r3
  3121ea: 9b03         	ldr	r3, [sp, #0xc]
  3121ec: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  3121f0: e026         	b	0x312240 <EMP::triggerPull(float)+0x1e0> @ imm = #0x4c
  3121f2: 9b03         	ldr	r3, [sp, #0xc]
  3121f4: 681b         	ldr	r3, [r3]
  3121f6: f503 7333    	add.w	r3, r3, #0x2cc
  3121fa: 681b         	ldr	r3, [r3]
  3121fc: 9a03         	ldr	r2, [sp, #0xc]
  3121fe: 4610         	mov	r0, r2
  312200: 4798         	blx	r3
  312202: 4603         	mov	r3, r0
  312204: f083 0301    	eor	r3, r3, #0x1
  312208: b2db         	uxtb	r3, r3
  31220a: 2b00         	cmp	r3, #0x0
  31220c: d018         	beq	0x312240 <EMP::triggerPull(float)+0x1e0> @ imm = #0x30
  31220e: 4b2c         	ldr	r3, [pc, #0xb0]         @ 0x3122c0 <EMP::triggerPull(float)+0x260>
  312210: 58e3         	ldr	r3, [r4, r3]
  312212: 681c         	ldr	r4, [r3]
  312214: 9b03         	ldr	r3, [sp, #0xc]
  312216: 681b         	ldr	r3, [r3]
  312218: f503 7348    	add.w	r3, r3, #0x320
  31221c: 681b         	ldr	r3, [r3]
  31221e: 9a03         	ldr	r2, [sp, #0xc]
  312220: a904         	add	r1, sp, #0x10
  312222: 4608         	mov	r0, r1
  312224: 4611         	mov	r1, r2
  312226: 4798         	blx	r3
  312228: 466b         	mov	r3, sp
  31222a: aa06         	add	r2, sp, #0x18
  31222c: e892 0003    	ldm.w	r2, {r0, r1}
  312230: e883 0003    	stm.w	r3, {r0, r1}
  312234: ab04         	add	r3, sp, #0x10
  312236: cb0c         	ldm	r3, {r2, r3}
  312238: 4620         	mov	r0, r4
  31223a: 2100         	movs	r1, #0x0
  31223c: f0e5 fedc    	bl	0x3f7ff8 <Sound::playSoundPosition(int, cpVect)> @ imm = #0xe5db8
  312240: 9b03         	ldr	r3, [sp, #0xc]
  312242: f04f 0200    	mov.w	r2, #0x0
  312246: f8c3 2110    	str.w	r2, [r3, #0x110]
  31224a: 9b03         	ldr	r3, [sp, #0xc]
  31224c: 681b         	ldr	r3, [r3]
  31224e: f503 7333    	add.w	r3, r3, #0x2cc
  312252: 681b         	ldr	r3, [r3]
  312254: 9a03         	ldr	r2, [sp, #0xc]
  312256: 4610         	mov	r0, r2
  312258: 4798         	blx	r3
  31225a: 4603         	mov	r3, r0
  31225c: f083 0301    	eor	r3, r3, #0x1
  312260: b2db         	uxtb	r3, r3
  312262: 2b00         	cmp	r3, #0x0
  312264: d00c         	beq	0x312280 <EMP::triggerPull(float)+0x220> @ imm = #0x18
  312266: 9b03         	ldr	r3, [sp, #0xc]
  312268: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  31226c: 2b00         	cmp	r3, #0x0
  31226e: d107         	bne	0x312280 <EMP::triggerPull(float)+0x220> @ imm = #0xe
  312270: 9b03         	ldr	r3, [sp, #0xc]
  312272: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  312276: b21b         	sxth	r3, r3
  312278: 2b00         	cmp	r3, #0x0
  31227a: dd01         	ble	0x312280 <EMP::triggerPull(float)+0x220> @ imm = #0x2
  31227c: 2301         	movs	r3, #0x1
  31227e: e000         	b	0x312282 <EMP::triggerPull(float)+0x222> @ imm = #0x0
  312280: 2300         	movs	r3, #0x0
  312282: 2b00         	cmp	r3, #0x0
  312284: d008         	beq	0x312298 <EMP::triggerPull(float)+0x238> @ imm = #0x10
  312286: 9b03         	ldr	r3, [sp, #0xc]
  312288: 2201         	movs	r2, #0x1
  31228a: f883 2181    	strb.w	r2, [r3, #0x181]
  31228e: 9b03         	ldr	r3, [sp, #0xc]
  312290: f04f 0200    	mov.w	r2, #0x0
  312294: f8c3 2158    	str.w	r2, [r3, #0x158]
  312298: b008         	add	sp, #0x20
  31229a: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x31229b); words below are literal-pool data ---
  31229c: f3af 8000    	nop.w
  3122a0: 3333         	adds	r3, #0x33
  3122a2: 3333         	adds	r3, #0x33
  3122a4: 3333         	adds	r3, #0x33
  3122a6: 3fd3         	subs	r7, #0xd3
  3122a8: 6666         	str	r6, [r4, #0x64]
  3122aa: 6666         	str	r6, [r4, #0x64]
  3122ac: 6666         	str	r6, [r4, #0x64]
  3122ae: 3fd6         	subs	r7, #0xd6
  3122b0: 3333         	adds	r3, #0x33
  3122b2: 3333         	adds	r3, #0x33
  3122b4: 3333         	adds	r3, #0x33
  3122b6: 3fc3         	subs	r7, #0xc3
  3122b8: 3333         	adds	r3, #0x33
  3122ba: 3eb3         	subs	r6, #0xb3
  3122bc: 099e         	lsrs	r6, r3, #0x6
  3122be: 0062         	lsls	r2, r4, #0x1
  3122c0: d730         	bvc	0x312324 <EMP::updateItemStep(float)+0x5c> @ imm = #0x60
  3122c2: ffff f3af    	<unknown>

// ==== EMP::updateItemStep
//      file offset 0x3122c8 (= ELF address; Ghidra 0x3222c8), 348 bytes, Thumb-2
  3122c8: b500         	push	{lr}
  3122ca: ed2d 8b02    	vpush	{d8}
  3122ce: b085         	sub	sp, #0x14
  3122d0: 9001         	str	r0, [sp, #0x4]
  3122d2: 9100         	str	r1, [sp]
  3122d4: 9b01         	ldr	r3, [sp, #0x4]
  3122d6: ed93 7a56    	vldr	s14, [r3, #344]
  3122da: eddd 7a00    	vldr	s15, [sp]
  3122de: ee77 7a27    	vadd.f32	s15, s14, s15
  3122e2: 9b01         	ldr	r3, [sp, #0x4]
  3122e4: edc3 7a56    	vstr	s15, [r3, #344]
  3122e8: 9b01         	ldr	r3, [sp, #0x4]
  3122ea: f893 31f4    	ldrb.w	r3, [r3, #0x1f4]
  3122ee: 2b00         	cmp	r3, #0x0
  3122f0: d009         	beq	0x312306 <EMP::updateItemStep(float)+0x3e> @ imm = #0x12
  3122f2: 9b01         	ldr	r3, [sp, #0x4]
  3122f4: 681b         	ldr	r3, [r3]
  3122f6: f503 7315    	add.w	r3, r3, #0x254
  3122fa: 681b         	ldr	r3, [r3]
  3122fc: 9a01         	ldr	r2, [sp, #0x4]
  3122fe: 4610         	mov	r0, r2
  312300: 9900         	ldr	r1, [sp]
  312302: 4798         	blx	r3
  312304: e016         	b	0x312334 <EMP::updateItemStep(float)+0x6c> @ imm = #0x2c
  312306: 9b01         	ldr	r3, [sp, #0x4]
  312308: f04f 0200    	mov.w	r2, #0x0
  31230c: f8c3 2110    	str.w	r2, [r3, #0x110]
  312310: 9b01         	ldr	r3, [sp, #0x4]
  312312: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  312316: 681b         	ldr	r3, [r3]
  312318: 3340         	adds	r3, #0x40
  31231a: 681b         	ldr	r3, [r3]
  31231c: 9a01         	ldr	r2, [sp, #0x4]
  31231e: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  312322: 4610         	mov	r0, r2
  312324: f04f 0100    	mov.w	r1, #0x0
  312328: 4798         	blx	r3
  31232a: 9b01         	ldr	r3, [sp, #0x4]
  31232c: f04f 0200    	mov.w	r2, #0x0
  312330: f8c3 21f8    	str.w	r2, [r3, #0x1f8]
  312334: 9b01         	ldr	r3, [sp, #0x4]
  312336: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  31233a: 681b         	ldr	r3, [r3]
  31233c: 3390         	adds	r3, #0x90
  31233e: 681b         	ldr	r3, [r3]
  312340: 9a01         	ldr	r2, [sp, #0x4]
  312342: f8d2 11f0    	ldr.w	r1, [r2, #0x1f0]
  312346: 9a01         	ldr	r2, [sp, #0x4]
  312348: f892 21f4    	ldrb.w	r2, [r2, #0x1f4]
  31234c: 4608         	mov	r0, r1
  31234e: 4611         	mov	r1, r2
  312350: 4798         	blx	r3
  312352: 9b01         	ldr	r3, [sp, #0x4]
  312354: 2200         	movs	r2, #0x0
  312356: f883 21f4    	strb.w	r2, [r3, #0x1f4]
  31235a: 9b01         	ldr	r3, [sp, #0x4]
  31235c: f893 3181    	ldrb.w	r3, [r3, #0x181]
  312360: 2b00         	cmp	r3, #0x0
  312362: d013         	beq	0x31238c <EMP::updateItemStep(float)+0xc4> @ imm = #0x26
  312364: 9b01         	ldr	r3, [sp, #0x4]
  312366: ed93 8a56    	vldr	s16, [r3, #344]
  31236a: 9b01         	ldr	r3, [sp, #0x4]
  31236c: 681b         	ldr	r3, [r3]
  31236e: f503 732e    	add.w	r3, r3, #0x2b8
  312372: 681b         	ldr	r3, [r3]
  312374: 9a01         	ldr	r2, [sp, #0x4]
  312376: 4610         	mov	r0, r2
  312378: 4798         	blx	r3
  31237a: ee07 0a90    	vmov	s15, r0
  31237e: eeb4 8ae7    	vcmpe.f32	s16, s15
  312382: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  312386: dd01         	ble	0x31238c <EMP::updateItemStep(float)+0xc4> @ imm = #0x2
  312388: 2301         	movs	r3, #0x1
  31238a: e000         	b	0x31238e <EMP::updateItemStep(float)+0xc6> @ imm = #0x0
  31238c: 2300         	movs	r3, #0x0
  31238e: 2b00         	cmp	r3, #0x0
  312390: d043         	beq	0x31241a <EMP::updateItemStep(float)+0x152> @ imm = #0x86
  312392: 9b01         	ldr	r3, [sp, #0x4]
  312394: 2200         	movs	r2, #0x0
  312396: f883 2181    	strb.w	r2, [r3, #0x181]
  31239a: 9b01         	ldr	r3, [sp, #0x4]
  31239c: f04f 0200    	mov.w	r2, #0x0
  3123a0: f8c3 2110    	str.w	r2, [r3, #0x110]
  3123a4: 9b01         	ldr	r3, [sp, #0x4]
  3123a6: 681b         	ldr	r3, [r3]
  3123a8: f503 732d    	add.w	r3, r3, #0x2b4
  3123ac: 681b         	ldr	r3, [r3]
  3123ae: 9a01         	ldr	r2, [sp, #0x4]
  3123b0: 4610         	mov	r0, r2
  3123b2: 4798         	blx	r3
  3123b4: 4602         	mov	r2, r0
  3123b6: 9b01         	ldr	r3, [sp, #0x4]
  3123b8: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  3123bc: b21b         	sxth	r3, r3
  3123be: 1ad3         	subs	r3, r2, r3
  3123c0: 9303         	str	r3, [sp, #0xc]
  3123c2: 9b01         	ldr	r3, [sp, #0x4]
  3123c4: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  3123c8: b29a         	uxth	r2, r3
  3123ca: 9b03         	ldr	r3, [sp, #0xc]
  3123cc: b29b         	uxth	r3, r3
  3123ce: 1ad3         	subs	r3, r2, r3
  3123d0: b29b         	uxth	r3, r3
  3123d2: b29a         	uxth	r2, r3
  3123d4: 9b01         	ldr	r3, [sp, #0x4]
  3123d6: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  3123da: 9b01         	ldr	r3, [sp, #0x4]
  3123dc: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  3123e0: b29a         	uxth	r2, r3
  3123e2: 9b03         	ldr	r3, [sp, #0xc]
  3123e4: b29b         	uxth	r3, r3
  3123e6: 4413         	add	r3, r2
  3123e8: b29a         	uxth	r2, r3
  3123ea: 9b01         	ldr	r3, [sp, #0x4]
  3123ec: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  3123f0: b21b         	sxth	r3, r3
  3123f2: ea03 73e3    	and.w	r3, r3, r3, asr #31
  3123f6: b29b         	uxth	r3, r3
  3123f8: b29b         	uxth	r3, r3
  3123fa: 4413         	add	r3, r2
  3123fc: b29b         	uxth	r3, r3
  3123fe: b29a         	uxth	r2, r3
  312400: 9b01         	ldr	r3, [sp, #0x4]
  312402: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  312406: 9b01         	ldr	r3, [sp, #0x4]
  312408: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  31240c: b21b         	sxth	r3, r3
  31240e: ea23 73e3    	bic.w	r3, r3, r3, asr #31
  312412: b29a         	uxth	r2, r3
  312414: 9b01         	ldr	r3, [sp, #0x4]
  312416: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  31241a: b005         	add	sp, #0x14
  31241c: ecbd 8b02    	vpop	{d8}
  312420: f85d fb04    	ldr	pc, [sp], #4

// ==== EMP::updateRemoteItemStep
//      file offset 0x312424 (= ELF address; Ghidra 0x322424), 218 bytes, Thumb-2
  312424: b500         	push	{lr}
  312426: b083         	sub	sp, #0xc
  312428: 9001         	str	r0, [sp, #0x4]
  31242a: 9100         	str	r1, [sp]
  31242c: 9b01         	ldr	r3, [sp, #0x4]
  31242e: ed93 7a7f    	vldr	s14, [r3, #508]
  312432: eddd 7a00    	vldr	s15, [sp]
  312436: ee77 7a27    	vadd.f32	s15, s14, s15
  31243a: 9b01         	ldr	r3, [sp, #0x4]
  31243c: edc3 7a7f    	vstr	s15, [r3, #508]
  312440: 9b01         	ldr	r3, [sp, #0x4]
  312442: f893 2194    	ldrb.w	r2, [r3, #0x194]
  312446: 9b01         	ldr	r3, [sp, #0x4]
  312448: f893 3195    	ldrb.w	r3, [r3, #0x195]
  31244c: 429a         	cmp	r2, r3
  31244e: d01a         	beq	0x312486 <EMP::updateRemoteItemStep(float)+0x62> @ imm = #0x34
  312450: 9b01         	ldr	r3, [sp, #0x4]
  312452: 2201         	movs	r2, #0x1
  312454: f883 21f4    	strb.w	r2, [r3, #0x1f4]
  312458: 9b01         	ldr	r3, [sp, #0x4]
  31245a: 681b         	ldr	r3, [r3]
  31245c: f503 7315    	add.w	r3, r3, #0x254
  312460: 681b         	ldr	r3, [r3]
  312462: 9a01         	ldr	r2, [sp, #0x4]
  312464: 4610         	mov	r0, r2
  312466: 9900         	ldr	r1, [sp]
  312468: 4798         	blx	r3
  31246a: 9b01         	ldr	r3, [sp, #0x4]
  31246c: 681b         	ldr	r3, [r3]
  31246e: f503 7318    	add.w	r3, r3, #0x260
  312472: 681b         	ldr	r3, [r3]
  312474: 9801         	ldr	r0, [sp, #0x4]
  312476: 9900         	ldr	r1, [sp]
  312478: 4798         	blx	r3
  31247a: 9b01         	ldr	r3, [sp, #0x4]
  31247c: f04f 0200    	mov.w	r2, #0x0
  312480: f8c3 21fc    	str.w	r2, [r3, #0x1fc]
  312484: e029         	b	0x3124da <EMP::updateRemoteItemStep(float)+0xb6> @ imm = #0x52
  312486: 9b01         	ldr	r3, [sp, #0x4]
  312488: ed93 7a7f    	vldr	s14, [r3, #508]
  31248c: eef5 7a00    	vmov.f32	s15, #2.500000e-01
  312490: eeb4 7ae7    	vcmpe.f32	s14, s15
  312494: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  312498: dd1f         	ble	0x3124da <EMP::updateRemoteItemStep(float)+0xb6> @ imm = #0x3e
  31249a: 9b01         	ldr	r3, [sp, #0x4]
  31249c: 2200         	movs	r2, #0x0
  31249e: f883 21f4    	strb.w	r2, [r3, #0x1f4]
  3124a2: 9b01         	ldr	r3, [sp, #0x4]
  3124a4: f04f 0200    	mov.w	r2, #0x0
  3124a8: f8c3 2110    	str.w	r2, [r3, #0x110]
  3124ac: 9b01         	ldr	r3, [sp, #0x4]
  3124ae: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3124b2: 681b         	ldr	r3, [r3]
  3124b4: 3340         	adds	r3, #0x40
  3124b6: 681b         	ldr	r3, [r3]
  3124b8: 9a01         	ldr	r2, [sp, #0x4]
  3124ba: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  3124be: 4610         	mov	r0, r2
  3124c0: f04f 0100    	mov.w	r1, #0x0
  3124c4: 4798         	blx	r3
  3124c6: 9b01         	ldr	r3, [sp, #0x4]
  3124c8: f04f 0200    	mov.w	r2, #0x0
  3124cc: f8c3 21f8    	str.w	r2, [r3, #0x1f8]
  3124d0: 9b01         	ldr	r3, [sp, #0x4]
  3124d2: f04f 0200    	mov.w	r2, #0x0
  3124d6: f8c3 21fc    	str.w	r2, [r3, #0x1fc]
  3124da: 9b01         	ldr	r3, [sp, #0x4]
  3124dc: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3124e0: 681b         	ldr	r3, [r3]
  3124e2: 3390         	adds	r3, #0x90
  3124e4: 681b         	ldr	r3, [r3]
  3124e6: 9a01         	ldr	r2, [sp, #0x4]
  3124e8: f8d2 11f0    	ldr.w	r1, [r2, #0x1f0]
  3124ec: 9a01         	ldr	r2, [sp, #0x4]
  3124ee: f892 21f4    	ldrb.w	r2, [r2, #0x1f4]
  3124f2: 4608         	mov	r0, r1
  3124f4: 4611         	mov	r1, r2
  3124f6: 4798         	blx	r3
  3124f8: b003         	add	sp, #0xc
  3124fa: f85d fb04    	ldr	pc, [sp], #4

// ==== EMP::remoteTriggerPull
//      file offset 0x312500 (= ELF address; Ghidra 0x322500), 212 bytes, Thumb-2
  312500: b500         	push	{lr}
  312502: b083         	sub	sp, #0xc
  312504: 9001         	str	r0, [sp, #0x4]
  312506: 9100         	str	r1, [sp]
  312508: 9b01         	ldr	r3, [sp, #0x4]
  31250a: f893 3195    	ldrb.w	r3, [r3, #0x195]
  31250e: 3301         	adds	r3, #0x1
  312510: b2da         	uxtb	r2, r3
  312512: 9b01         	ldr	r3, [sp, #0x4]
  312514: f883 2195    	strb.w	r2, [r3, #0x195]
  312518: 9b01         	ldr	r3, [sp, #0x4]
  31251a: ed93 7a7e    	vldr	s14, [r3, #504]
  31251e: eddd 7a00    	vldr	s15, [sp]
  312522: ee77 7a27    	vadd.f32	s15, s14, s15
  312526: 9b01         	ldr	r3, [sp, #0x4]
  312528: edc3 7a7e    	vstr	s15, [r3, #504]
  31252c: 9b01         	ldr	r3, [sp, #0x4]
  31252e: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  312532: 681b         	ldr	r3, [r3]
  312534: 3340         	adds	r3, #0x40
  312536: 681b         	ldr	r3, [r3]
  312538: 9a01         	ldr	r2, [sp, #0x4]
  31253a: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  31253e: 9901         	ldr	r1, [sp, #0x4]
  312540: edd1 7a44    	vldr	s15, [r1, #272]
  312544: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  312548: ed9f 7b1b    	vldr	d7, [pc, #108]          @ 0x3125b8 <EMP::remoteTriggerPull(float)+0xb8>
  31254c: ee26 6b07    	vmul.f64	d6, d6, d7
  312550: ed9f 7b1b    	vldr	d7, [pc, #108]          @ 0x3125c0 <EMP::remoteTriggerPull(float)+0xc0>
  312554: eeb4 6bc7    	vcmpe.f64	d6, d7
  312558: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  31255c: d50b         	bpl	0x312576 <EMP::remoteTriggerPull(float)+0x76> @ imm = #0x16
  31255e: 9901         	ldr	r1, [sp, #0x4]
  312560: edd1 7a44    	vldr	s15, [r1, #272]
  312564: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  312568: ed9f 7b13    	vldr	d7, [pc, #76]           @ 0x3125b8 <EMP::remoteTriggerPull(float)+0xb8>
  31256c: ee26 7b07    	vmul.f64	d7, d6, d7
  312570: eef7 7bc7    	vcvt.f32.f64	s15, d7
  312574: e001         	b	0x31257a <EMP::remoteTriggerPull(float)+0x7a> @ imm = #0x2
  312576: eddf 7a16    	vldr	s15, [pc, #88]          @ 0x3125d0 <EMP::remoteTriggerPull(float)+0xd0>
  31257a: 4610         	mov	r0, r2
  31257c: ee17 1a90    	vmov	r1, s15
  312580: 4798         	blx	r3
  312582: 9b01         	ldr	r3, [sp, #0x4]
  312584: edd3 7a7e    	vldr	s15, [r3, #504]
  312588: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  31258c: ed9f 7b0e    	vldr	d7, [pc, #56]           @ 0x3125c8 <EMP::remoteTriggerPull(float)+0xc8>
  312590: eeb4 6bc7    	vcmpe.f64	d6, d7
  312594: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  312598: dd0b         	ble	0x3125b2 <EMP::remoteTriggerPull(float)+0xb2> @ imm = #0x16
  31259a: 9b01         	ldr	r3, [sp, #0x4]
  31259c: 681b         	ldr	r3, [r3]
  31259e: f503 7325    	add.w	r3, r3, #0x294
  3125a2: 681b         	ldr	r3, [r3]
  3125a4: 9801         	ldr	r0, [sp, #0x4]
  3125a6: 4798         	blx	r3
  3125a8: 9b01         	ldr	r3, [sp, #0x4]
  3125aa: f04f 0200    	mov.w	r2, #0x0
  3125ae: f8c3 21f8    	str.w	r2, [r3, #0x1f8]
  3125b2: b003         	add	sp, #0xc
  3125b4: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3125b7); words below are literal-pool data ---
  3125b8: 3333         	adds	r3, #0x33
  3125ba: 3333         	adds	r3, #0x33
  3125bc: 3333         	adds	r3, #0x33
  3125be: 3fd3         	subs	r7, #0xd3
  3125c0: 6666         	str	r6, [r4, #0x64]
  3125c2: 6666         	str	r6, [r4, #0x64]
  3125c4: 6666         	str	r6, [r4, #0x64]
  3125c6: 3fd6         	subs	r7, #0xd6
  3125c8: 3333         	adds	r3, #0x33
  3125ca: 3333         	adds	r3, #0x33
  3125cc: 3333         	adds	r3, #0x33
  3125ce: 3fc3         	subs	r7, #0xc3
  3125d0: 3333         	adds	r3, #0x33
  3125d2: 3eb3         	subs	r6, #0xb3

// ==== EMP::getShellPoint
//      file offset 0x3125d8 (= ELF address; Ghidra 0x3225d8), 184 bytes, Thumb-2
  3125d8: b530         	push	{r4, r5, lr}
  3125da: b08f         	sub	sp, #0x3c
  3125dc: 9001         	str	r0, [sp, #0x4]
  3125de: 9100         	str	r1, [sp]
  3125e0: 4c29         	ldr	r4, [pc, #0xa4]         @ 0x312688 <EMP::getShellPoint()+0xb0>
  3125e2: 447c         	add	r4, pc
  3125e4: 9b00         	ldr	r3, [sp]
  3125e6: 681b         	ldr	r3, [r3]
  3125e8: 3350         	adds	r3, #0x50
  3125ea: 681b         	ldr	r3, [r3]
  3125ec: 9a00         	ldr	r2, [sp]
  3125ee: 4610         	mov	r0, r2
  3125f0: 4798         	blx	r3
  3125f2: 4605         	mov	r5, r0
  3125f4: ab04         	add	r3, sp, #0x10
  3125f6: 4618         	mov	r0, r3
  3125f8: f04f 0100    	mov.w	r1, #0x0
  3125fc: f04f 0200    	mov.w	r2, #0x0
  312600: f280 fb76    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2806ec
  312604: aa06         	add	r2, sp, #0x18
  312606: ab04         	add	r3, sp, #0x10
  312608: 4610         	mov	r0, r2
  31260a: 4629         	mov	r1, r5
  31260c: 461a         	mov	r2, r3
  31260e: f7fe fb95    	bl	0x310d3c <DEAGLE::getDAMAGE()+0x178> @ imm = #-0x18d6
  312612: 9b00         	ldr	r3, [sp]
  312614: 681b         	ldr	r3, [r3]
  312616: f503 73c2    	add.w	r3, r3, #0x184
  31261a: 681b         	ldr	r3, [r3]
  31261c: 9a00         	ldr	r2, [sp]
  31261e: a908         	add	r1, sp, #0x20
  312620: 4608         	mov	r0, r1
  312622: 4611         	mov	r1, r2
  312624: 4798         	blx	r3
  312626: a902         	add	r1, sp, #0x8
  312628: aa06         	add	r2, sp, #0x18
  31262a: ab08         	add	r3, sp, #0x20
  31262c: 4608         	mov	r0, r1
  31262e: 4611         	mov	r1, r2
  312630: 461a         	mov	r2, r3
  312632: f27f fe77    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x27fcee
  312636: 4b15         	ldr	r3, [pc, #0x54]         @ 0x31268c <EMP::getShellPoint()+0xb4>
  312638: 58e3         	ldr	r3, [r4, r3]
  31263a: 681b         	ldr	r3, [r3]
  31263c: 681b         	ldr	r3, [r3]
  31263e: f503 73c4    	add.w	r3, r3, #0x188
  312642: 681b         	ldr	r3, [r3]
  312644: 4a11         	ldr	r2, [pc, #0x44]         @ 0x31268c <EMP::getShellPoint()+0xb4>
  312646: 58a2         	ldr	r2, [r4, r2]
  312648: 6812         	ldr	r2, [r2]
  31264a: a908         	add	r1, sp, #0x20
  31264c: 4608         	mov	r0, r1
  31264e: 4611         	mov	r1, r2
  312650: 4798         	blx	r3
  312652: a906         	add	r1, sp, #0x18
  312654: aa02         	add	r2, sp, #0x8
  312656: ab08         	add	r3, sp, #0x20
  312658: 4608         	mov	r0, r1
  31265a: 4611         	mov	r1, r2
  31265c: 461a         	mov	r2, r3
  31265e: f27f fe61    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x27fcc2
  312662: eddd 7a06    	vldr	s15, [sp, #24]
  312666: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  31266a: eddd 7a07    	vldr	s15, [sp, #28]
  31266e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  312672: 9b01         	ldr	r3, [sp, #0x4]
  312674: 4618         	mov	r0, r3
  312676: eeb0 0b46    	vmov.f64	d0, d6
  31267a: eeb0 1b47    	vmov.f64	d1, d7
  31267e: f7fe fb6d    	bl	0x310d5c <DEAGLE::getDAMAGE()+0x198> @ imm = #-0x1926
  312682: 9801         	ldr	r0, [sp, #0x4]
  312684: b00f         	add	sp, #0x3c
  312686: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x312687); words below are literal-pool data ---
  312688: 0426         	lsls	r6, r4, #0x10
  31268a: 0062         	lsls	r2, r4, #0x1
  31268c: d744         	bvc	0x312718 <EMP::setPrimaryConfiguration()+0x30> @ imm = #0x88
  31268e: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== EMP::playSound
//      file offset 0x312690 (= ELF address; Ghidra 0x322690), 88 bytes, Thumb-2
  312690: b510         	push	{r4, lr}
  312692: b08a         	sub	sp, #0x28
  312694: 9005         	str	r0, [sp, #0x14]
  312696: 4a12         	ldr	r2, [pc, #0x48]         @ 0x3126e0 <EMP::playSound()+0x50>
  312698: 447a         	add	r2, pc
  31269a: 4b12         	ldr	r3, [pc, #0x48]         @ 0x3126e4 <EMP::playSound()+0x54>
  31269c: 58d3         	ldr	r3, [r2, r3]
  31269e: 681c         	ldr	r4, [r3]
  3126a0: 9b05         	ldr	r3, [sp, #0x14]
  3126a2: 681b         	ldr	r3, [r3]
  3126a4: f503 7348    	add.w	r3, r3, #0x320
  3126a8: 681b         	ldr	r3, [r3]
  3126aa: 9a05         	ldr	r2, [sp, #0x14]
  3126ac: a906         	add	r1, sp, #0x18
  3126ae: 4608         	mov	r0, r1
  3126b0: 4611         	mov	r1, r2
  3126b2: 4798         	blx	r3
  3126b4: f04f 537e    	mov.w	r3, #0x3f800000
  3126b8: 9302         	str	r3, [sp, #0x8]
  3126ba: f243 3333    	movw	r3, #0x3333
  3126be: f6c3 7333    	movt	r3, #0x3f33
  3126c2: 9303         	str	r3, [sp, #0xc]
  3126c4: 466b         	mov	r3, sp
  3126c6: aa08         	add	r2, sp, #0x20
  3126c8: e892 0003    	ldm.w	r2, {r0, r1}
  3126cc: e883 0003    	stm.w	r3, {r0, r1}
  3126d0: ab06         	add	r3, sp, #0x18
  3126d2: cb0c         	ldm	r3, {r2, r3}
  3126d4: 4620         	mov	r0, r4
  3126d6: 2124         	movs	r1, #0x24
  3126d8: f0e5 fcb4    	bl	0x3f8044 <Sound::playSoundPositionVP(int, cpVect, float, float)> @ imm = #0xe5968
  3126dc: b00a         	add	sp, #0x28
  3126de: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3126df); words below are literal-pool data ---
  3126e0: 0370         	lsls	r0, r6, #0xd
  3126e2: 0062         	lsls	r2, r4, #0x1
  3126e4: d730         	bvc	0x312748 <EMP::setPrimaryConfiguration()+0x60> @ imm = #0x60
  3126e6: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== EMP::setPrimaryConfiguration
//      file offset 0x3126e8 (= ELF address; Ghidra 0x3226e8), 328 bytes, Thumb-2
  3126e8: b530         	push	{r4, r5, lr}
  3126ea: b085         	sub	sp, #0x14
  3126ec: 9001         	str	r0, [sp, #0x4]
  3126ee: 9b01         	ldr	r3, [sp, #0x4]
  3126f0: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3126f4: 2b00         	cmp	r3, #0x0
  3126f6: d019         	beq	0x31272c <EMP::setPrimaryConfiguration()+0x44> @ imm = #0x32
  3126f8: 9b01         	ldr	r3, [sp, #0x4]
  3126fa: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  3126fe: 4b4b         	ldr	r3, [pc, #0x12c]        @ 0x31282c <EMP::setPrimaryConfiguration()+0x144>
  312700: 447b         	add	r3, pc
  312702: ed93 6b00    	vldr	d6, [r3]
  312706: ed93 7b02    	vldr	d7, [r3, #8]
  31270a: 4610         	mov	r0, r2
  31270c: eeb0 0b46    	vmov.f64	d0, d6
  312710: eeb0 1b47    	vmov.f64	d1, d7
  312714: f7fe fbac    	bl	0x310e70 <DEAGLE::getDAMAGE()+0x2ac> @ imm = #-0x18a8
  312718: 9b01         	ldr	r3, [sp, #0x4]
  31271a: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  31271e: 4618         	mov	r0, r3
  312720: f04f 0200    	mov.w	r2, #0x0
  312724: f04f 0300    	mov.w	r3, #0x0
  312728: f3c0 fd33    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x3c0a66
  31272c: 9b01         	ldr	r3, [sp, #0x4]
  31272e: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  312732: 681b         	ldr	r3, [r3]
  312734: 334c         	adds	r3, #0x4c
  312736: 681c         	ldr	r4, [r3]
  312738: 9b01         	ldr	r3, [sp, #0x4]
  31273a: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  31273e: ab02         	add	r3, sp, #0x8
  312740: 4618         	mov	r0, r3
  312742: f04f 0100    	mov.w	r1, #0x0
  312746: f04f 0200    	mov.w	r2, #0x0
  31274a: f280 fad1    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2805a2
  31274e: ab02         	add	r3, sp, #0x8
  312750: 4628         	mov	r0, r5
  312752: 4619         	mov	r1, r3
  312754: 47a0         	blx	r4
  312756: 9b01         	ldr	r3, [sp, #0x4]
  312758: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  31275c: 681b         	ldr	r3, [r3]
  31275e: 337c         	adds	r3, #0x7c
  312760: 681c         	ldr	r4, [r3]
  312762: 9b01         	ldr	r3, [sp, #0x4]
  312764: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  312768: ab02         	add	r3, sp, #0x8
  31276a: 4618         	mov	r0, r3
  31276c: f24d 710a    	movw	r1, #0xd70a
  312770: f6c3 51a3    	movt	r1, #0x3da3
  312774: f64c 42cd    	movw	r2, #0xcccd
  312778: f6c3 62cc    	movt	r2, #0x3ecc
  31277c: f280 fab8    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x280570
  312780: ab02         	add	r3, sp, #0x8
  312782: 4628         	mov	r0, r5
  312784: 4619         	mov	r1, r3
  312786: 47a0         	blx	r4
  312788: 9b01         	ldr	r3, [sp, #0x4]
  31278a: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  31278e: 681b         	ldr	r3, [r3]
  312790: 3398         	adds	r3, #0x98
  312792: 681b         	ldr	r3, [r3]
  312794: 9a01         	ldr	r2, [sp, #0x4]
  312796: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  31279a: 4610         	mov	r0, r2
  31279c: f04f 0100    	mov.w	r1, #0x0
  3127a0: f2cc 11c8    	movt	r1, #0xc1c8
  3127a4: 4798         	blx	r3
  3127a6: 9b01         	ldr	r3, [sp, #0x4]
  3127a8: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3127ac: 681b         	ldr	r3, [r3]
  3127ae: 3340         	adds	r3, #0x40
  3127b0: 681b         	ldr	r3, [r3]
  3127b2: 9a01         	ldr	r2, [sp, #0x4]
  3127b4: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3127b8: 4610         	mov	r0, r2
  3127ba: f04f 517e    	mov.w	r1, #0x3f800000
  3127be: 4798         	blx	r3
  3127c0: 9b01         	ldr	r3, [sp, #0x4]
  3127c2: 681b         	ldr	r3, [r3]
  3127c4: 334c         	adds	r3, #0x4c
  3127c6: 681c         	ldr	r4, [r3]
  3127c8: 9d01         	ldr	r5, [sp, #0x4]
  3127ca: ab02         	add	r3, sp, #0x8
  3127cc: 4618         	mov	r0, r3
  3127ce: f04f 0100    	mov.w	r1, #0x0
  3127d2: f04f 0200    	mov.w	r2, #0x0
  3127d6: f280 fa8b    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x280516
  3127da: ab02         	add	r3, sp, #0x8
  3127dc: 4628         	mov	r0, r5
  3127de: 4619         	mov	r1, r3
  3127e0: 47a0         	blx	r4
  3127e2: 9b01         	ldr	r3, [sp, #0x4]
  3127e4: 681b         	ldr	r3, [r3]
  3127e6: 3340         	adds	r3, #0x40
  3127e8: 681b         	ldr	r3, [r3]
  3127ea: 9a01         	ldr	r2, [sp, #0x4]
  3127ec: 4610         	mov	r0, r2
  3127ee: f04f 517e    	mov.w	r1, #0x3f800000
  3127f2: 4798         	blx	r3
  3127f4: 9b01         	ldr	r3, [sp, #0x4]
  3127f6: 681b         	ldr	r3, [r3]
  3127f8: 3398         	adds	r3, #0x98
  3127fa: 681b         	ldr	r3, [r3]
  3127fc: 9a01         	ldr	r2, [sp, #0x4]
  3127fe: 4610         	mov	r0, r2
  312800: f04f 0100    	mov.w	r1, #0x0
  312804: 4798         	blx	r3
  312806: 9b01         	ldr	r3, [sp, #0x4]
  312808: 2200         	movs	r2, #0x0
  31280a: f883 2195    	strb.w	r2, [r3, #0x195]
  31280e: 9b01         	ldr	r3, [sp, #0x4]
  312810: 2200         	movs	r2, #0x0
  312812: f883 2194    	strb.w	r2, [r3, #0x194]
  312816: 9b01         	ldr	r3, [sp, #0x4]
  312818: f04f 0200    	mov.w	r2, #0x0
  31281c: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  312820: 9b01         	ldr	r3, [sp, #0x4]
  312822: 2200         	movs	r2, #0x0
  312824: f883 21f4    	strb.w	r2, [r3, #0x1f4]
  312828: b005         	add	sp, #0x14
  31282a: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x31282b); words below are literal-pool data ---
  31282c: 4184         	sbcs	r4, r0
  31282e: 004b         	lsls	r3, r1, #0x1

// ==== EMP::setSecondaryConfiguration
//      file offset 0x312830 (= ELF address; Ghidra 0x322830), 360 bytes, Thumb-2
  312830: b530         	push	{r4, r5, lr}
  312832: b085         	sub	sp, #0x14
  312834: 9001         	str	r0, [sp, #0x4]
  312836: 9b01         	ldr	r3, [sp, #0x4]
  312838: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  31283c: 2b00         	cmp	r3, #0x0
  31283e: d019         	beq	0x312874 <EMP::setSecondaryConfiguration()+0x44> @ imm = #0x32
  312840: 9b01         	ldr	r3, [sp, #0x4]
  312842: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  312846: 4b53         	ldr	r3, [pc, #0x14c]        @ 0x312994 <EMP::setSecondaryConfiguration()+0x164>
  312848: 447b         	add	r3, pc
  31284a: ed93 6b00    	vldr	d6, [r3]
  31284e: ed93 7b02    	vldr	d7, [r3, #8]
  312852: 4610         	mov	r0, r2
  312854: eeb0 0b46    	vmov.f64	d0, d6
  312858: eeb0 1b47    	vmov.f64	d1, d7
  31285c: f7fe fb08    	bl	0x310e70 <DEAGLE::getDAMAGE()+0x2ac> @ imm = #-0x19f0
  312860: 9b01         	ldr	r3, [sp, #0x4]
  312862: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  312866: 4618         	mov	r0, r3
  312868: f04f 0200    	mov.w	r2, #0x0
  31286c: f04f 0300    	mov.w	r3, #0x0
  312870: f3c0 fc8f    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x3c091e
  312874: 9b01         	ldr	r3, [sp, #0x4]
  312876: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  31287a: 681b         	ldr	r3, [r3]
  31287c: 334c         	adds	r3, #0x4c
  31287e: 681c         	ldr	r4, [r3]
  312880: 9b01         	ldr	r3, [sp, #0x4]
  312882: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  312886: ab02         	add	r3, sp, #0x8
  312888: 4618         	mov	r0, r3
  31288a: f04f 0100    	mov.w	r1, #0x0
  31288e: f2cc 1120    	movt	r1, #0xc120
  312892: f04f 0200    	mov.w	r2, #0x0
  312896: f2c4 1220    	movt	r2, #0x4120
  31289a: f280 fa29    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x280452
  31289e: ab02         	add	r3, sp, #0x8
  3128a0: 4628         	mov	r0, r5
  3128a2: 4619         	mov	r1, r3
  3128a4: 47a0         	blx	r4
  3128a6: 9b01         	ldr	r3, [sp, #0x4]
  3128a8: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3128ac: 681b         	ldr	r3, [r3]
  3128ae: 337c         	adds	r3, #0x7c
  3128b0: 681c         	ldr	r4, [r3]
  3128b2: 9b01         	ldr	r3, [sp, #0x4]
  3128b4: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  3128b8: ab02         	add	r3, sp, #0x8
  3128ba: 4618         	mov	r0, r3
  3128bc: f04f 517c    	mov.w	r1, #0x3f000000
  3128c0: f04f 527c    	mov.w	r2, #0x3f000000
  3128c4: f280 fa14    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x280428
  3128c8: ab02         	add	r3, sp, #0x8
  3128ca: 4628         	mov	r0, r5
  3128cc: 4619         	mov	r1, r3
  3128ce: 47a0         	blx	r4
  3128d0: 9b01         	ldr	r3, [sp, #0x4]
  3128d2: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3128d6: 681b         	ldr	r3, [r3]
  3128d8: 3398         	adds	r3, #0x98
  3128da: 681b         	ldr	r3, [r3]
  3128dc: 9a01         	ldr	r2, [sp, #0x4]
  3128de: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3128e2: 4610         	mov	r0, r2
  3128e4: f04f 0100    	mov.w	r1, #0x0
  3128e8: f2c4 2170    	movt	r1, #0x4270
  3128ec: 4798         	blx	r3
  3128ee: 9b01         	ldr	r3, [sp, #0x4]
  3128f0: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3128f4: 681b         	ldr	r3, [r3]
  3128f6: 3340         	adds	r3, #0x40
  3128f8: 681b         	ldr	r3, [r3]
  3128fa: 9a01         	ldr	r2, [sp, #0x4]
  3128fc: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  312900: 4610         	mov	r0, r2
  312902: f04f 517e    	mov.w	r1, #0x3f800000
  312906: 4798         	blx	r3
  312908: 9b01         	ldr	r3, [sp, #0x4]
  31290a: 681b         	ldr	r3, [r3]
  31290c: 334c         	adds	r3, #0x4c
  31290e: 681c         	ldr	r4, [r3]
  312910: 9d01         	ldr	r5, [sp, #0x4]
  312912: ab02         	add	r3, sp, #0x8
  312914: 4618         	mov	r0, r3
  312916: f04f 0100    	mov.w	r1, #0x0
  31291a: f04f 0200    	mov.w	r2, #0x0
  31291e: f280 f9e7    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2803ce
  312922: ab02         	add	r3, sp, #0x8
  312924: 4628         	mov	r0, r5
  312926: 4619         	mov	r1, r3
  312928: 47a0         	blx	r4
  31292a: 9b01         	ldr	r3, [sp, #0x4]
  31292c: 681b         	ldr	r3, [r3]
  31292e: 3340         	adds	r3, #0x40
  312930: 681b         	ldr	r3, [r3]
  312932: 9a01         	ldr	r2, [sp, #0x4]
  312934: 4610         	mov	r0, r2
  312936: f04f 517e    	mov.w	r1, #0x3f800000
  31293a: 4798         	blx	r3
  31293c: 9b01         	ldr	r3, [sp, #0x4]
  31293e: 681b         	ldr	r3, [r3]
  312940: 3398         	adds	r3, #0x98
  312942: 681b         	ldr	r3, [r3]
  312944: 9a01         	ldr	r2, [sp, #0x4]
  312946: 4610         	mov	r0, r2
  312948: f04f 0100    	mov.w	r1, #0x0
  31294c: 4798         	blx	r3
  31294e: 9b01         	ldr	r3, [sp, #0x4]
  312950: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  312954: 681b         	ldr	r3, [r3]
  312956: 3390         	adds	r3, #0x90
  312958: 681b         	ldr	r3, [r3]
  31295a: 9a01         	ldr	r2, [sp, #0x4]
  31295c: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  312960: 4610         	mov	r0, r2
  312962: 2100         	movs	r1, #0x0
  312964: 4798         	blx	r3
  312966: 9b01         	ldr	r3, [sp, #0x4]
  312968: 2200         	movs	r2, #0x0
  31296a: f883 20e5    	strb.w	r2, [r3, #0xe5]
  31296e: 9b01         	ldr	r3, [sp, #0x4]
  312970: 2200         	movs	r2, #0x0
  312972: f883 2195    	strb.w	r2, [r3, #0x195]
  312976: 9b01         	ldr	r3, [sp, #0x4]
  312978: 2200         	movs	r2, #0x0
  31297a: f883 2194    	strb.w	r2, [r3, #0x194]
  31297e: 9b01         	ldr	r3, [sp, #0x4]
  312980: f04f 0200    	mov.w	r2, #0x0
  312984: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  312988: 9b01         	ldr	r3, [sp, #0x4]
  31298a: 2200         	movs	r2, #0x0
  31298c: f883 21f4    	strb.w	r2, [r3, #0x1f4]
  312990: b005         	add	sp, #0x14
  312992: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x312993); words below are literal-pool data ---
  312994: 403c         	ands	r4, r7
  312996: 004b         	lsls	r3, r1, #0x1

// ==== EMP::setMapConfiguration
//      file offset 0x312998 (= ELF address; Ghidra 0x322998), 264 bytes, Thumb-2
  312998: b570         	push	{r4, r5, r6, lr}
  31299a: b084         	sub	sp, #0x10
  31299c: 9001         	str	r0, [sp, #0x4]
  31299e: 4c3e         	ldr	r4, [pc, #0xf8]         @ 0x312a98 <EMP::setMapConfiguration()+0x100>
  3129a0: 447c         	add	r4, pc
  3129a2: 9b01         	ldr	r3, [sp, #0x4]
  3129a4: f04f 0200    	mov.w	r2, #0x0
  3129a8: f8c3 2190    	str.w	r2, [r3, #0x190]
  3129ac: 9b01         	ldr	r3, [sp, #0x4]
  3129ae: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3129b2: 681b         	ldr	r3, [r3]
  3129b4: 334c         	adds	r3, #0x4c
  3129b6: 681d         	ldr	r5, [r3]
  3129b8: 9b01         	ldr	r3, [sp, #0x4]
  3129ba: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  3129be: ab02         	add	r3, sp, #0x8
  3129c0: 4618         	mov	r0, r3
  3129c2: f04f 0100    	mov.w	r1, #0x0
  3129c6: f04f 0200    	mov.w	r2, #0x0
  3129ca: f280 f991    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x280322
  3129ce: ab02         	add	r3, sp, #0x8
  3129d0: 4630         	mov	r0, r6
  3129d2: 4619         	mov	r1, r3
  3129d4: 47a8         	blx	r5
  3129d6: 9b01         	ldr	r3, [sp, #0x4]
  3129d8: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3129dc: 681b         	ldr	r3, [r3]
  3129de: 337c         	adds	r3, #0x7c
  3129e0: 681d         	ldr	r5, [r3]
  3129e2: 9b01         	ldr	r3, [sp, #0x4]
  3129e4: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  3129e8: ab02         	add	r3, sp, #0x8
  3129ea: 4618         	mov	r0, r3
  3129ec: f04f 517c    	mov.w	r1, #0x3f000000
  3129f0: f04f 527c    	mov.w	r2, #0x3f000000
  3129f4: f280 f97c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2802f8
  3129f8: ab02         	add	r3, sp, #0x8
  3129fa: 4630         	mov	r0, r6
  3129fc: 4619         	mov	r1, r3
  3129fe: 47a8         	blx	r5
  312a00: 9b01         	ldr	r3, [sp, #0x4]
  312a02: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  312a06: 681b         	ldr	r3, [r3]
  312a08: 3398         	adds	r3, #0x98
  312a0a: 681b         	ldr	r3, [r3]
  312a0c: 9a01         	ldr	r2, [sp, #0x4]
  312a0e: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  312a12: 4610         	mov	r0, r2
  312a14: f04f 0100    	mov.w	r1, #0x0
  312a18: 4798         	blx	r3
  312a1a: 9b01         	ldr	r3, [sp, #0x4]
  312a1c: 681b         	ldr	r3, [r3]
  312a1e: 334c         	adds	r3, #0x4c
  312a20: 681d         	ldr	r5, [r3]
  312a22: 9e01         	ldr	r6, [sp, #0x4]
  312a24: ab02         	add	r3, sp, #0x8
  312a26: 4618         	mov	r0, r3
  312a28: f04f 0100    	mov.w	r1, #0x0
  312a2c: f04f 0200    	mov.w	r2, #0x0
  312a30: f280 f95e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2802bc
  312a34: ab02         	add	r3, sp, #0x8
  312a36: 4630         	mov	r0, r6
  312a38: 4619         	mov	r1, r3
  312a3a: 47a8         	blx	r5
  312a3c: 9b01         	ldr	r3, [sp, #0x4]
  312a3e: 681b         	ldr	r3, [r3]
  312a40: 3340         	adds	r3, #0x40
  312a42: 681b         	ldr	r3, [r3]
  312a44: 9901         	ldr	r1, [sp, #0x4]
  312a46: 4a15         	ldr	r2, [pc, #0x54]         @ 0x312a9c <EMP::setMapConfiguration()+0x104>
  312a48: 58a2         	ldr	r2, [r4, r2]
  312a4a: 6812         	ldr	r2, [r2]
  312a4c: 4608         	mov	r0, r1
  312a4e: 4611         	mov	r1, r2
  312a50: 4798         	blx	r3
  312a52: 9b01         	ldr	r3, [sp, #0x4]
  312a54: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  312a58: 681b         	ldr	r3, [r3]
  312a5a: 3390         	adds	r3, #0x90
  312a5c: 681b         	ldr	r3, [r3]
  312a5e: 9a01         	ldr	r2, [sp, #0x4]
  312a60: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  312a64: 4610         	mov	r0, r2
  312a66: 2100         	movs	r1, #0x0
  312a68: 4798         	blx	r3
  312a6a: 9b01         	ldr	r3, [sp, #0x4]
  312a6c: 2200         	movs	r2, #0x0
  312a6e: f883 20e5    	strb.w	r2, [r3, #0xe5]
  312a72: 9b01         	ldr	r3, [sp, #0x4]
  312a74: 2200         	movs	r2, #0x0
  312a76: f883 2195    	strb.w	r2, [r3, #0x195]
  312a7a: 9b01         	ldr	r3, [sp, #0x4]
  312a7c: 2200         	movs	r2, #0x0
  312a7e: f883 2194    	strb.w	r2, [r3, #0x194]
  312a82: 9b01         	ldr	r3, [sp, #0x4]
  312a84: f04f 0200    	mov.w	r2, #0x0
  312a88: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  312a8c: 9b01         	ldr	r3, [sp, #0x4]
  312a8e: 2200         	movs	r2, #0x0
  312a90: f883 21f4    	strb.w	r2, [r3, #0x1f4]
  312a94: b004         	add	sp, #0x10
  312a96: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x312a97); words below are literal-pool data ---
  312a98: 0068         	lsls	r0, r5, #0x1
  312a9a: 0062         	lsls	r2, r4, #0x1
  312a9c: d748         	bvc	0x312b30 <EMP::setRight(bool)+0x4> @ imm = #0x90
  312a9e: ffff b500    	<unknown>

// ==== EMP::getWeaponTexture
//      file offset 0x312aa0 (= ELF address; Ghidra 0x322aa0), 40 bytes, Thumb-2
  312aa0: b500         	push	{lr}
  312aa2: b083         	sub	sp, #0xc
  312aa4: 9001         	str	r0, [sp, #0x4]
  312aa6: 9b01         	ldr	r3, [sp, #0x4]
  312aa8: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  312aac: 681b         	ldr	r3, [r3]
  312aae: f503 73fa    	add.w	r3, r3, #0x1f4
  312ab2: 681b         	ldr	r3, [r3]
  312ab4: 9a01         	ldr	r2, [sp, #0x4]
  312ab6: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  312aba: 4610         	mov	r0, r2
  312abc: 4798         	blx	r3
  312abe: 4603         	mov	r3, r0
  312ac0: 4618         	mov	r0, r3
  312ac2: b003         	add	sp, #0xc
  312ac4: f85d fb04    	ldr	pc, [sp], #4

// ==== EMP::getWeaponRect
//      file offset 0x312ac8 (= ELF address; Ghidra 0x322ac8), 38 bytes, Thumb-2
  312ac8: b500         	push	{lr}
  312aca: b083         	sub	sp, #0xc
  312acc: 9001         	str	r0, [sp, #0x4]
  312ace: 9100         	str	r1, [sp]
  312ad0: 9b00         	ldr	r3, [sp]
  312ad2: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  312ad6: 4618         	mov	r0, r3
  312ad8: f7ca f900    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x35e00
  312adc: 4603         	mov	r3, r0
  312ade: 9801         	ldr	r0, [sp, #0x4]
  312ae0: 4619         	mov	r1, r3
  312ae2: f280 fc19    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x280832
  312ae6: 9801         	ldr	r0, [sp, #0x4]
  312ae8: b003         	add	sp, #0xc
  312aea: f85d fb04    	ldr	pc, [sp], #4

// ==== EMP::isRight
//      file offset 0x312af0 (= ELF address; Ghidra 0x322af0), 60 bytes, Thumb-2
  312af0: b500         	push	{lr}
  312af2: b083         	sub	sp, #0xc
  312af4: 9001         	str	r0, [sp, #0x4]
  312af6: 9b01         	ldr	r3, [sp, #0x4]
  312af8: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  312afc: 681b         	ldr	r3, [r3]
  312afe: 3334         	adds	r3, #0x34
  312b00: 681b         	ldr	r3, [r3]
  312b02: 9a01         	ldr	r2, [sp, #0x4]
  312b04: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  312b08: 4610         	mov	r0, r2
  312b0a: 4798         	blx	r3
  312b0c: ee07 0a10    	vmov	s14, r0
  312b10: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  312b14: eeb4 7ae7    	vcmpe.f32	s14, s15
  312b18: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  312b1c: bfd4         	ite	le
  312b1e: 2300         	movle	r3, #0x0
  312b20: 2301         	movgt	r3, #0x1
  312b22: b2db         	uxtb	r3, r3
  312b24: 4618         	mov	r0, r3
  312b26: b003         	add	sp, #0xc
  312b28: f85d fb04    	ldr	pc, [sp], #4

// ==== EMP::setRight
//      file offset 0x312b2c (= ELF address; Ghidra 0x322b2c), 64 bytes, Thumb-2
  312b2c: b500         	push	{lr}
  312b2e: b083         	sub	sp, #0xc
  312b30: 9001         	str	r0, [sp, #0x4]
  312b32: 460b         	mov	r3, r1
  312b34: f88d 3003    	strb.w	r3, [sp, #0x3]
  312b38: 9b01         	ldr	r3, [sp, #0x4]
  312b3a: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  312b3e: 681b         	ldr	r3, [r3]
  312b40: 3330         	adds	r3, #0x30
  312b42: 681a         	ldr	r2, [r3]
  312b44: 9b01         	ldr	r3, [sp, #0x4]
  312b46: f8d3 11ec    	ldr.w	r1, [r3, #0x1ec]
  312b4a: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  312b4e: 2b00         	cmp	r3, #0x0
  312b50: d002         	beq	0x312b58 <EMP::setRight(bool)+0x2c> @ imm = #0x4
  312b52: f04f 537e    	mov.w	r3, #0x3f800000
  312b56: e003         	b	0x312b60 <EMP::setRight(bool)+0x34> @ imm = #0x6
  312b58: f04f 0300    	mov.w	r3, #0x0
  312b5c: f6cb 7380    	movt	r3, #0xbf80
  312b60: 4608         	mov	r0, r1
  312b62: 4619         	mov	r1, r3
  312b64: 4790         	blx	r2
  312b66: b003         	add	sp, #0xc
  312b68: f85d fb04    	ldr	pc, [sp], #4

// ==== EMP::doFire
//      file offset 0x312b70 (= ELF address; Ghidra 0x322b70), 612 bytes, Thumb-2
  312b70: b082         	sub	sp, #0x8
  312b72: e92d 4ff0    	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  312b76: b0a7         	sub	sp, #0x9c
  312b78: 900b         	str	r0, [sp, #0x2c]
  312b7a: 910a         	str	r1, [sp, #0x28]
  312b7c: a930         	add	r1, sp, #0xc0
  312b7e: e881 000c    	stm.w	r1, {r2, r3}
  312b82: 4c90         	ldr	r4, [pc, #0x240]        @ 0x312dc4 <EMP::doFire(float, cpVect, cpVect, int, std::string)+0x254>
  312b84: 447c         	add	r4, pc
  312b86: eddd 7a0a    	vldr	s15, [sp, #40]
  312b8a: eeb1 7a67    	vneg.f32	s14, s15
  312b8e: eddf 7a8c    	vldr	s15, [pc, #560]         @ 0x312dc0 <EMP::doFire(float, cpVect, cpVect, int, std::string)+0x250>
  312b92: ee67 7a27    	vmul.f32	s15, s14, s15
  312b96: edcd 7a0e    	vstr	s15, [sp, #56]
  312b9a: eddd 7a0e    	vldr	s15, [sp, #56]
  312b9e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  312ba2: ec51 0b17    	vmov	r0, r1, d7
  312ba6: f7c3 e9b0    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x3cca0
  312baa: 4606         	mov	r6, r0
  312bac: 460f         	mov	r7, r1
  312bae: eddd 7a0e    	vldr	s15, [sp, #56]
  312bb2: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  312bb6: ec51 0b17    	vmov	r0, r1, d7
  312bba: f7c3 e9ac    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x3cca8
  312bbe: 4602         	mov	r2, r0
  312bc0: 460b         	mov	r3, r1
  312bc2: a912         	add	r1, sp, #0x48
  312bc4: 4608         	mov	r0, r1
  312bc6: ec47 6b10    	vmov	d0, r6, r7
  312bca: ec43 2b11    	vmov	d1, r2, r3
  312bce: f7fe f8c5    	bl	0x310d5c <DEAGLE::getDAMAGE()+0x198> @ imm = #-0x1e76
  312bd2: ed9d 4b34    	vldr	d4, [sp, #208]
  312bd6: ed9d 5b36    	vldr	d5, [sp, #216]
  312bda: ed9d 6b12    	vldr	d6, [sp, #72]
  312bde: ed9d 7b14    	vldr	d7, [sp, #80]
  312be2: eeb0 0b44    	vmov.f64	d0, d4
  312be6: eeb0 1b45    	vmov.f64	d1, d5
  312bea: eeb0 2b46    	vmov.f64	d2, d6
  312bee: eeb0 3b47    	vmov.f64	d3, d7
  312bf2: f7fe f919    	bl	0x310e28 <DEAGLE::getDAMAGE()+0x264> @ imm = #-0x1dce
  312bf6: ed8d 0b10    	vstr	d0, [sp, #64]
  312bfa: ed9d 7b10    	vldr	d7, [sp, #64]
  312bfe: eeb5 7bc0    	vcmpe.f64	d7, #0
  312c02: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  312c06: d505         	bpl	0x312c14 <EMP::doFire(float, cpVect, cpVect, int, std::string)+0xa4> @ imm = #0xa
  312c08: f04f 0200    	mov.w	r2, #0x0
  312c0c: f04f 0300    	mov.w	r3, #0x0
  312c10: e9cd 2310    	strd	r2, r3, [sp, #64]
  312c14: ab06         	add	r3, sp, #0x18
  312c16: ed9d 6b12    	vldr	d6, [sp, #72]
  312c1a: ed9d 7b14    	vldr	d7, [sp, #80]
  312c1e: 4618         	mov	r0, r3
  312c20: eeb0 0b46    	vmov.f64	d0, d6
  312c24: eeb0 1b47    	vmov.f64	d1, d7
  312c28: ed9d 2b10    	vldr	d2, [sp, #64]
  312c2c: f7fe f8d6    	bl	0x310ddc <DEAGLE::getDAMAGE()+0x218> @ imm = #-0x1e54
  312c30: ad34         	add	r5, sp, #0xd0
  312c32: ab06         	add	r3, sp, #0x18
  312c34: cb0f         	ldm	r3, {r0, r1, r2, r3}
  312c36: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  312c3a: ab16         	add	r3, sp, #0x58
  312c3c: ed9d 6b12    	vldr	d6, [sp, #72]
  312c40: ed9d 7b14    	vldr	d7, [sp, #80]
  312c44: 4618         	mov	r0, r3
  312c46: eeb0 0b46    	vmov.f64	d0, d6
  312c4a: eeb0 1b47    	vmov.f64	d1, d7
  312c4e: ed9f 2b5a    	vldr	d2, [pc, #360]          @ 0x312db8 <EMP::doFire(float, cpVect, cpVect, int, std::string)+0x248>
  312c52: f7fe f8c3    	bl	0x310ddc <DEAGLE::getDAMAGE()+0x218> @ imm = #-0x1e7a
  312c56: ab1a         	add	r3, sp, #0x68
  312c58: ed9d 4b16    	vldr	d4, [sp, #88]
  312c5c: ed9d 5b18    	vldr	d5, [sp, #96]
  312c60: ed9d 6b34    	vldr	d6, [sp, #208]
  312c64: ed9d 7b36    	vldr	d7, [sp, #216]
  312c68: 4618         	mov	r0, r3
  312c6a: eeb0 0b44    	vmov.f64	d0, d4
  312c6e: eeb0 1b45    	vmov.f64	d1, d5
  312c72: eeb0 2b46    	vmov.f64	d2, d6
  312c76: eeb0 3b47    	vmov.f64	d3, d7
  312c7a: f7fe f883    	bl	0x310d84 <DEAGLE::getDAMAGE()+0x1c0> @ imm = #-0x1efa
  312c7e: 9b0b         	ldr	r3, [sp, #0x2c]
  312c80: 681b         	ldr	r3, [r3]
  312c82: f503 7348    	add.w	r3, r3, #0x320
  312c86: 681b         	ldr	r3, [r3]
  312c88: 9a0b         	ldr	r2, [sp, #0x2c]
  312c8a: a91e         	add	r1, sp, #0x78
  312c8c: 4608         	mov	r0, r1
  312c8e: 4611         	mov	r1, r2
  312c90: 4798         	blx	r3
  312c92: ed9d 7b1e    	vldr	d7, [sp, #120]
  312c96: eef7 7bc7    	vcvt.f32.f64	s15, d7
  312c9a: ee17 0a90    	vmov	r0, s15
  312c9e: f7c9 fff1    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x3601e
  312ca2: 4680         	mov	r8, r0
  312ca4: 9b0b         	ldr	r3, [sp, #0x2c]
  312ca6: 681b         	ldr	r3, [r3]
  312ca8: f503 7348    	add.w	r3, r3, #0x320
  312cac: 681b         	ldr	r3, [r3]
  312cae: 9a0b         	ldr	r2, [sp, #0x2c]
  312cb0: a922         	add	r1, sp, #0x88
  312cb2: 4608         	mov	r0, r1
  312cb4: 4611         	mov	r1, r2
  312cb6: 4798         	blx	r3
  312cb8: ed9d 7b24    	vldr	d7, [sp, #144]
  312cbc: eef7 7bc7    	vcvt.f32.f64	s15, d7
  312cc0: ee17 0a90    	vmov	r0, s15
  312cc4: f7c9 ffde    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x36044
  312cc8: 4607         	mov	r7, r0
  312cca: ed9d 7b1a    	vldr	d7, [sp, #104]
  312cce: eef7 7bc7    	vcvt.f32.f64	s15, d7
  312cd2: ee17 0a90    	vmov	r0, s15
  312cd6: f7c9 ffd5    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x36056
  312cda: 4606         	mov	r6, r0
  312cdc: ed9d 7b1c    	vldr	d7, [sp, #112]
  312ce0: eef7 7bc7    	vcvt.f32.f64	s15, d7
  312ce4: ee17 0a90    	vmov	r0, s15
  312ce8: f7c9 ffcc    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x36068
  312cec: 4605         	mov	r5, r0
  312cee: 2015         	movs	r0, #0x15
  312cf0: f7d2 f80a    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x2dfec
  312cf4: 4682         	mov	r10, r0
  312cf6: f04f 507e    	mov.w	r0, #0x3f800000
  312cfa: f7c9 ffc3    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x3607a
  312cfe: 4681         	mov	r9, r0
  312d00: 4b31         	ldr	r3, [pc, #0xc4]         @ 0x312dc8 <EMP::doFire(float, cpVect, cpVect, int, std::string)+0x258>
  312d02: 58e3         	ldr	r3, [r4, r3]
  312d04: 681b         	ldr	r3, [r3]
  312d06: 1c59         	adds	r1, r3, #0x1
  312d08: 4a2f         	ldr	r2, [pc, #0xbc]         @ 0x312dc8 <EMP::doFire(float, cpVect, cpVect, int, std::string)+0x258>
  312d0a: 58a2         	ldr	r2, [r4, r2]
  312d0c: 6011         	str	r1, [r2]
  312d0e: 4618         	mov	r0, r3
  312d10: f7d1 fffa    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x2e00c
  312d14: 4604         	mov	r4, r0
  312d16: 9839         	ldr	r0, [sp, #0xe4]
  312d18: f0a2 f2f2    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4a25e4
  312d1c: 4683         	mov	r11, r0
  312d1e: ab0c         	add	r3, sp, #0x30
  312d20: 4618         	mov	r0, r3
  312d22: f077 f367    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4776ce
  312d26: aa0d         	add	r2, sp, #0x34
  312d28: ab0c         	add	r3, sp, #0x30
  312d2a: 4610         	mov	r0, r2
  312d2c: 4659         	mov	r1, r11
  312d2e: 461a         	mov	r2, r3
  312d30: f0a3 f696    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4a3d2c
  312d34: ab0d         	add	r3, sp, #0x34
  312d36: 4618         	mov	r0, r3
  312d38: f286 fe80    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x286d00
  312d3c: 4603         	mov	r3, r0
  312d3e: f8cd a000    	str.w	r10, [sp]
  312d42: f8cd 9004    	str.w	r9, [sp, #0x4]
  312d46: 9402         	str	r4, [sp, #0x8]
  312d48: 9303         	str	r3, [sp, #0xc]
  312d4a: 2300         	movs	r3, #0x0
  312d4c: 9304         	str	r3, [sp, #0x10]
  312d4e: 4640         	mov	r0, r8
  312d50: 4639         	mov	r1, r7
  312d52: 4632         	mov	r2, r6
  312d54: 462b         	mov	r3, r5
  312d56: f287 f85b    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x2870b6
  312d5a: 4603         	mov	r3, r0
  312d5c: 930f         	str	r3, [sp, #0x3c]
  312d5e: ab0d         	add	r3, sp, #0x34
  312d60: 4618         	mov	r0, r3
  312d62: f0a2 f5d7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a2bae
  312d66: ab0c         	add	r3, sp, #0x30
  312d68: 4618         	mov	r0, r3
  312d6a: f077 f347    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x47768e
  312d6e: f2cd fc9f    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2cd93e
  312d72: 4603         	mov	r3, r0
  312d74: 4618         	mov	r0, r3
  312d76: 4b15         	ldr	r3, [pc, #0x54]         @ 0x312dcc <EMP::doFire(float, cpVect, cpVect, int, std::string)+0x25c>
  312d78: 447b         	add	r3, pc
  312d7a: 4619         	mov	r1, r3
  312d7c: 9a0f         	ldr	r2, [sp, #0x3c]
  312d7e: f2cd fed5    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x2cddaa
  312d82: f2cd fc95    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2cd92a
  312d86: 4603         	mov	r3, r0
  312d88: 4618         	mov	r0, r3
  312d8a: 4b11         	ldr	r3, [pc, #0x44]         @ 0x312dd0 <EMP::doFire(float, cpVect, cpVect, int, std::string)+0x260>
  312d8c: 447b         	add	r3, pc
  312d8e: 4619         	mov	r1, r3
  312d90: 9a0f         	ldr	r2, [sp, #0x3c]
  312d92: f2cd fecb    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x2cdd96
  312d96: e00a         	b	0x312dae <EMP::doFire(float, cpVect, cpVect, int, std::string)+0x23e> @ imm = #0x14
  312d98: ab0d         	add	r3, sp, #0x34
  312d9a: 4618         	mov	r0, r3
  312d9c: f0a2 f5ba    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a2b74
  312da0: e7ff         	b	0x312da2 <EMP::doFire(float, cpVect, cpVect, int, std::string)+0x232> @ imm = #-0x2
  312da2: ab0c         	add	r3, sp, #0x30
  312da4: 4618         	mov	r0, r3
  312da6: f077 f329    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x477652
  312daa: f075 f17f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4752fe
  312dae: b027         	add	sp, #0x9c
  312db0: e8bd 4ff0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  312db4: b002         	add	sp, #0x8
  312db6: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x312db7); words below are literal-pool data ---
  312db8: 0000         	movs	r0, r0
  312dba: 0000         	movs	r0, r0
  312dbc: 2000         	movs	r0, #0x0
  312dbe: 406c         	eors	r4, r5
  312dc0: fa35 3c8e    	<unknown>
  312dc4: fe84 0061    	cdp2	p0, #0x8, c0, c4, c1, #0x3
  312dc8: d9c4         	bls	0x312d54 <EMP::doFire(float, cpVect, cpVect, int, std::string)+0x1e4> @ imm = #-0x78
  312dca: ffff 3ab0    	<unknown>
  312dce: 004b         	lsls	r3, r1, #0x1
  312dd0: 3aac         	subs	r2, #0xac
  312dd2: 004b         	lsls	r3, r1, #0x1

// ==== EMP::doRemoteFire
//      file offset 0x312dd8 (= ELF address; Ghidra 0x322dd8), 20 bytes, Thumb-2
  312dd8: b082         	sub	sp, #0x8
  312dda: b082         	sub	sp, #0x8
  312ddc: 9001         	str	r0, [sp, #0x4]
  312dde: 9100         	str	r1, [sp]
  312de0: a902         	add	r1, sp, #0x8
  312de2: e881 000c    	stm.w	r1, {r2, r3}
  312de6: b002         	add	sp, #0x8
  312de8: b002         	add	sp, #0x8
  312dea: 4770         	bx	lr

// ==== EMP::create
//      file offset 0x41778c (= ELF address; Ghidra 0x42778c), 112 bytes, Thumb-2
  41778c: b510         	push	{r4, lr}
  41778e: b082         	sub	sp, #0x8
  417790: f44f 7000    	mov.w	r0, #0x200
  417794: f370 f8e6    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x3701cc
  417798: 4603         	mov	r3, r0
  41779a: 461c         	mov	r4, r3
  41779c: 4620         	mov	r0, r4
  41779e: f6fa fa29    	bl	0x311bf4 <EMP::EMP()>   @ imm = #-0x105bae
  4177a2: 9401         	str	r4, [sp, #0x4]
  4177a4: 9b01         	ldr	r3, [sp, #0x4]
  4177a6: 2b00         	cmp	r3, #0x0
  4177a8: d00a         	beq	0x4177c0 <EMP::create()+0x34> @ imm = #0x14
  4177aa: 9b01         	ldr	r3, [sp, #0x4]
  4177ac: 681b         	ldr	r3, [r3]
  4177ae: 3318         	adds	r3, #0x18
  4177b0: 681b         	ldr	r3, [r3]
  4177b2: 9801         	ldr	r0, [sp, #0x4]
  4177b4: 4798         	blx	r3
  4177b6: 4603         	mov	r3, r0
  4177b8: 2b00         	cmp	r3, #0x0
  4177ba: d001         	beq	0x4177c0 <EMP::create()+0x34> @ imm = #0x2
  4177bc: 2301         	movs	r3, #0x1
  4177be: e000         	b	0x4177c2 <EMP::create()+0x36> @ imm = #0x0
  4177c0: 2300         	movs	r3, #0x0
  4177c2: 2b00         	cmp	r3, #0x0
  4177c4: d005         	beq	0x4177d2 <EMP::create()+0x46> @ imm = #0xa
  4177c6: 9b01         	ldr	r3, [sp, #0x4]
  4177c8: 4618         	mov	r0, r3
  4177ca: f180 fb97    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x18072e
  4177ce: 9b01         	ldr	r3, [sp, #0x4]
  4177d0: e011         	b	0x4177f6 <EMP::create()+0x6a> @ imm = #0x22
  4177d2: 9b01         	ldr	r3, [sp, #0x4]
  4177d4: 2b00         	cmp	r3, #0x0
  4177d6: d005         	beq	0x4177e4 <EMP::create()+0x58> @ imm = #0xa
  4177d8: 9b01         	ldr	r3, [sp, #0x4]
  4177da: 681b         	ldr	r3, [r3]
  4177dc: 3308         	adds	r3, #0x8
  4177de: 681b         	ldr	r3, [r3]
  4177e0: 9801         	ldr	r0, [sp, #0x4]
  4177e2: 4798         	blx	r3
  4177e4: 2300         	movs	r3, #0x0
  4177e6: 9301         	str	r3, [sp, #0x4]
  4177e8: 2300         	movs	r3, #0x0
  4177ea: e004         	b	0x4177f6 <EMP::create()+0x6a> @ imm = #0x8
  4177ec: 4620         	mov	r0, r4
  4177ee: f370 fc59    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3708b2
  4177f2: f370 fc5b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3708b6
  4177f6: 4618         	mov	r0, r3
  4177f8: b002         	add	sp, #0x8
  4177fa: bd10         	pop	{r4, pc}
