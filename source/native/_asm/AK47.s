// AK47: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 20 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../AK47.cpp

// ==== AK47::AK47
//      file offset 0x2ddb18 (= ELF address; Ghidra 0x2edb18), 44 bytes, Thumb-2
  2ddb18: b510         	push	{r4, lr}
  2ddb1a: b082         	sub	sp, #0x8
  2ddb1c: 9001         	str	r0, [sp, #0x4]
  2ddb1e: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x2ddb3c <AK47::AK47()+0x24>
  2ddb20: 447c         	add	r4, pc
  2ddb22: 9b01         	ldr	r3, [sp, #0x4]
  2ddb24: 4618         	mov	r0, r3
  2ddb26: f137 fa3f    	bl	0x414fa8 <Weapon::Weapon()> @ imm = #0x13747e
  2ddb2a: 9b01         	ldr	r3, [sp, #0x4]
  2ddb2c: 4a04         	ldr	r2, [pc, #0x10]         @ 0x2ddb40 <AK47::AK47()+0x28>
  2ddb2e: 58a2         	ldr	r2, [r4, r2]
  2ddb30: 3208         	adds	r2, #0x8
  2ddb32: 601a         	str	r2, [r3]
  2ddb34: 9b01         	ldr	r3, [sp, #0x4]
  2ddb36: 4618         	mov	r0, r3
  2ddb38: b002         	add	sp, #0x8
  2ddb3a: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2ddb3b); words below are literal-pool data ---
  2ddb3c: 4ee8         	ldr	r6, [pc, #0x3a0]        @ 0x2ddee0 <AK47::~AK47()+0x18>
  2ddb3e: 0065         	lsls	r5, r4, #0x1
  2ddb40: d740         	bvc	0x2ddbc4 <AK47::init()+0x7c> @ imm = #0x80
  2ddb42: ffff 0000    	<unknown>

// ==== AK47::init
//      file offset 0x2ddb48 (= ELF address; Ghidra 0x2edb48), 892 bytes, Thumb-2
  2ddb48: b530         	push	{r4, r5, lr}
  2ddb4a: b08b         	sub	sp, #0x2c
  2ddb4c: 9005         	str	r0, [sp, #0x14]
  2ddb4e: 9b05         	ldr	r3, [sp, #0x14]
  2ddb50: 4618         	mov	r0, r3
  2ddb52: f137 fa4d    	bl	0x414ff0 <Weapon::init()> @ imm = #0x13749a
  2ddb56: 4603         	mov	r3, r0
  2ddb58: f88d 301f    	strb.w	r3, [sp, #0x1f]
  2ddb5c: f89d 301f    	ldrb.w	r3, [sp, #0x1f]
  2ddb60: f083 0301    	eor	r3, r3, #0x1
  2ddb64: b2db         	uxtb	r3, r3
  2ddb66: 2b00         	cmp	r3, #0x0
  2ddb68: d001         	beq	0x2ddb6e <AK47::init()+0x26> @ imm = #0x2
  2ddb6a: 2300         	movs	r3, #0x0
  2ddb6c: e195         	b	0x2dde9a <AK47::init()+0x352> @ imm = #0x32a
  2ddb6e: 4bce         	ldr	r3, [pc, #0x338]        @ 0x2ddea8 <AK47::init()+0x360>
  2ddb70: 447b         	add	r3, pc
  2ddb72: 4618         	mov	r0, r3
  2ddb74: f2fa fbc6    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2fa78c
  2ddb78: 4602         	mov	r2, r0
  2ddb7a: 9b05         	ldr	r3, [sp, #0x14]
  2ddb7c: f8c3 21ec    	str.w	r2, [r3, #0x1ec]
  2ddb80: 9b05         	ldr	r3, [sp, #0x14]
  2ddb82: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  2ddb86: 4618         	mov	r0, r3
  2ddb88: f2ba f9ae    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2ba35c
  2ddb8c: 4bc7         	ldr	r3, [pc, #0x31c]        @ 0x2ddeac <AK47::init()+0x364>
  2ddb8e: 447b         	add	r3, pc
  2ddb90: 4618         	mov	r0, r3
  2ddb92: f2fa fbb7    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2fa76e
  2ddb96: 4602         	mov	r2, r0
  2ddb98: 9b05         	ldr	r3, [sp, #0x14]
  2ddb9a: f8c3 21f0    	str.w	r2, [r3, #0x1f0]
  2ddb9e: 9b05         	ldr	r3, [sp, #0x14]
  2ddba0: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  2ddba4: 4618         	mov	r0, r3
  2ddba6: f2ba f99f    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2ba33e
  2ddbaa: 9b05         	ldr	r3, [sp, #0x14]
  2ddbac: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  2ddbb0: 681b         	ldr	r3, [r3]
  2ddbb2: 337c         	adds	r3, #0x7c
  2ddbb4: 681c         	ldr	r4, [r3]
  2ddbb6: 9b05         	ldr	r3, [sp, #0x14]
  2ddbb8: f8d3 51f0    	ldr.w	r5, [r3, #0x1f0]
  2ddbbc: ab08         	add	r3, sp, #0x20
  2ddbbe: 4618         	mov	r0, r3
  2ddbc0: f243 3133    	movw	r1, #0x3333
  2ddbc4: f6cb 71b3    	movt	r1, #0xbfb3
  2ddbc8: f64c 42cd    	movw	r2, #0xcccd
  2ddbcc: f6c3 62cc    	movt	r2, #0x3ecc
  2ddbd0: f2b5 f88e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2b511c
  2ddbd4: ab08         	add	r3, sp, #0x20
  2ddbd6: 4628         	mov	r0, r5
  2ddbd8: 4619         	mov	r1, r3
  2ddbda: 47a0         	blx	r4
  2ddbdc: 9b05         	ldr	r3, [sp, #0x14]
  2ddbde: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  2ddbe2: 681b         	ldr	r3, [r3]
  2ddbe4: 3340         	adds	r3, #0x40
  2ddbe6: 681b         	ldr	r3, [r3]
  2ddbe8: 9a05         	ldr	r2, [sp, #0x14]
  2ddbea: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  2ddbee: 4610         	mov	r0, r2
  2ddbf0: f04f 4180    	mov.w	r1, #0x40000000
  2ddbf4: 4798         	blx	r3
  2ddbf6: 9b05         	ldr	r3, [sp, #0x14]
  2ddbf8: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  2ddbfc: 681b         	ldr	r3, [r3]
  2ddbfe: 3390         	adds	r3, #0x90
  2ddc00: 681b         	ldr	r3, [r3]
  2ddc02: 9a05         	ldr	r2, [sp, #0x14]
  2ddc04: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  2ddc08: 4610         	mov	r0, r2
  2ddc0a: 2100         	movs	r1, #0x0
  2ddc0c: 4798         	blx	r3
  2ddc0e: 9b05         	ldr	r3, [sp, #0x14]
  2ddc10: 681b         	ldr	r3, [r3]
  2ddc12: f503 73f0    	add.w	r3, r3, #0x1e0
  2ddc16: 681b         	ldr	r3, [r3]
  2ddc18: 9805         	ldr	r0, [sp, #0x14]
  2ddc1a: 4798         	blx	r3
  2ddc1c: 9b05         	ldr	r3, [sp, #0x14]
  2ddc1e: 681b         	ldr	r3, [r3]
  2ddc20: 33cc         	adds	r3, #0xcc
  2ddc22: 681b         	ldr	r3, [r3]
  2ddc24: 9905         	ldr	r1, [sp, #0x14]
  2ddc26: 9a05         	ldr	r2, [sp, #0x14]
  2ddc28: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  2ddc2c: 4608         	mov	r0, r1
  2ddc2e: 4611         	mov	r1, r2
  2ddc30: 2200         	movs	r2, #0x0
  2ddc32: 4798         	blx	r3
  2ddc34: 9b05         	ldr	r3, [sp, #0x14]
  2ddc36: 681b         	ldr	r3, [r3]
  2ddc38: 33cc         	adds	r3, #0xcc
  2ddc3a: 681b         	ldr	r3, [r3]
  2ddc3c: 9905         	ldr	r1, [sp, #0x14]
  2ddc3e: 9a05         	ldr	r2, [sp, #0x14]
  2ddc40: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  2ddc44: 4608         	mov	r0, r1
  2ddc46: 4611         	mov	r1, r2
  2ddc48: 2200         	movs	r2, #0x0
  2ddc4a: 4798         	blx	r3
  2ddc4c: 9b05         	ldr	r3, [sp, #0x14]
  2ddc4e: f8d3 4150    	ldr.w	r4, [r3, #0x150]
  2ddc52: f04f 507e    	mov.w	r0, #0x3f800000
  2ddc56: f7ff f815    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xfd6
  2ddc5a: 4603         	mov	r3, r0
  2ddc5c: 4620         	mov	r0, r4
  2ddc5e: 4619         	mov	r1, r3
  2ddc60: f2bc fb04    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x2bc608
  2ddc64: 9b05         	ldr	r3, [sp, #0x14]
  2ddc66: f8d3 414c    	ldr.w	r4, [r3, #0x14c]
  2ddc6a: ab07         	add	r3, sp, #0x1c
  2ddc6c: 4618         	mov	r0, r3
  2ddc6e: f0ac f3c1    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4ac782
  2ddc72: aa08         	add	r2, sp, #0x20
  2ddc74: ab07         	add	r3, sp, #0x1c
  2ddc76: 4610         	mov	r0, r2
  2ddc78: 4a8d         	ldr	r2, [pc, #0x234]        @ 0x2ddeb0 <AK47::init()+0x368>
  2ddc7a: 447a         	add	r2, pc
  2ddc7c: 4611         	mov	r1, r2
  2ddc7e: 461a         	mov	r2, r3
  2ddc80: f0d8 f6ee    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4d8ddc
  2ddc84: ab08         	add	r3, sp, #0x20
  2ddc86: 4618         	mov	r0, r3
  2ddc88: f2bb fed8    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2bbdb0
  2ddc8c: 4603         	mov	r3, r0
  2ddc8e: 4620         	mov	r0, r4
  2ddc90: 4619         	mov	r1, r3
  2ddc92: f2bc faeb    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x2bc5d6
  2ddc96: ab08         	add	r3, sp, #0x20
  2ddc98: 4618         	mov	r0, r3
  2ddc9a: f0d7 f63b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4d7c76
  2ddc9e: ab07         	add	r3, sp, #0x1c
  2ddca0: 4618         	mov	r0, r3
  2ddca2: f0ac f3ab    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4ac756
  2ddca6: 9b05         	ldr	r3, [sp, #0x14]
  2ddca8: f8d3 4150    	ldr.w	r4, [r3, #0x150]
  2ddcac: f246 6066    	movw	r0, #0x6666
  2ddcb0: f6c3 7066    	movt	r0, #0x3f66
  2ddcb4: f7fe ffe6    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x1034
  2ddcb8: 4603         	mov	r3, r0
  2ddcba: 4620         	mov	r0, r4
  2ddcbc: 4619         	mov	r1, r3
  2ddcbe: f2bc fad5    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x2bc5aa
  2ddcc2: 9b05         	ldr	r3, [sp, #0x14]
  2ddcc4: f8d3 414c    	ldr.w	r4, [r3, #0x14c]
  2ddcc8: ab07         	add	r3, sp, #0x1c
  2ddcca: 4618         	mov	r0, r3
  2ddccc: f0ac f392    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4ac724
  2ddcd0: aa08         	add	r2, sp, #0x20
  2ddcd2: ab07         	add	r3, sp, #0x1c
  2ddcd4: 4610         	mov	r0, r2
  2ddcd6: 4a77         	ldr	r2, [pc, #0x1dc]        @ 0x2ddeb4 <AK47::init()+0x36c>
  2ddcd8: 447a         	add	r2, pc
  2ddcda: 4611         	mov	r1, r2
  2ddcdc: 461a         	mov	r2, r3
  2ddcde: f0d8 f6bf    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4d8d7e
  2ddce2: ab08         	add	r3, sp, #0x20
  2ddce4: 4618         	mov	r0, r3
  2ddce6: f2bb fea9    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2bbd52
  2ddcea: 4603         	mov	r3, r0
  2ddcec: 4620         	mov	r0, r4
  2ddcee: 4619         	mov	r1, r3
  2ddcf0: f2bc fabc    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x2bc578
  2ddcf4: ab08         	add	r3, sp, #0x20
  2ddcf6: 4618         	mov	r0, r3
  2ddcf8: f0d7 f60c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4d7c18
  2ddcfc: ab07         	add	r3, sp, #0x1c
  2ddcfe: 4618         	mov	r0, r3
  2ddd00: f0ac f37c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4ac6f8
  2ddd04: 9b05         	ldr	r3, [sp, #0x14]
  2ddd06: f8d3 4150    	ldr.w	r4, [r3, #0x150]
  2ddd0a: f243 3033    	movw	r0, #0x3333
  2ddd0e: f6c3 7033    	movt	r0, #0x3f33
  2ddd12: f7fe ffb7    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x1092
  2ddd16: 4603         	mov	r3, r0
  2ddd18: 4620         	mov	r0, r4
  2ddd1a: 4619         	mov	r1, r3
  2ddd1c: f2bc faa6    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x2bc54c
  2ddd20: 9b05         	ldr	r3, [sp, #0x14]
  2ddd22: f8d3 414c    	ldr.w	r4, [r3, #0x14c]
  2ddd26: ab07         	add	r3, sp, #0x1c
  2ddd28: 4618         	mov	r0, r3
  2ddd2a: f0ac f363    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4ac6c6
  2ddd2e: aa08         	add	r2, sp, #0x20
  2ddd30: ab07         	add	r3, sp, #0x1c
  2ddd32: 4610         	mov	r0, r2
  2ddd34: 4a60         	ldr	r2, [pc, #0x180]        @ 0x2ddeb8 <AK47::init()+0x370>
  2ddd36: 447a         	add	r2, pc
  2ddd38: 4611         	mov	r1, r2
  2ddd3a: 461a         	mov	r2, r3
  2ddd3c: f0d8 f690    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4d8d20
  2ddd40: ab08         	add	r3, sp, #0x20
  2ddd42: 4618         	mov	r0, r3
  2ddd44: f2bb fe7a    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2bbcf4
  2ddd48: 4603         	mov	r3, r0
  2ddd4a: 4620         	mov	r0, r4
  2ddd4c: 4619         	mov	r1, r3
  2ddd4e: f2bc fa8d    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x2bc51a
  2ddd52: ab08         	add	r3, sp, #0x20
  2ddd54: 4618         	mov	r0, r3
  2ddd56: f0d7 f5dd    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4d7bba
  2ddd5a: ab07         	add	r3, sp, #0x1c
  2ddd5c: 4618         	mov	r0, r3
  2ddd5e: f0ac f34d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4ac69a
  2ddd62: 9b05         	ldr	r3, [sp, #0x14]
  2ddd64: 2200         	movs	r2, #0x0
  2ddd66: f8c3 2144    	str.w	r2, [r3, #0x144]
  2ddd6a: 9b05         	ldr	r3, [sp, #0x14]
  2ddd6c: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  2ddd70: 4618         	mov	r0, r3
  2ddd72: 2100         	movs	r1, #0x0
  2ddd74: f2bc f9d4    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2bc3a8
  2ddd78: 4603         	mov	r3, r0
  2ddd7a: 4618         	mov	r0, r3
  2ddd7c: f7fe ff7a    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x110c
  2ddd80: 4602         	mov	r2, r0
  2ddd82: 9b05         	ldr	r3, [sp, #0x14]
  2ddd84: f8c3 2148    	str.w	r2, [r3, #0x148]
  2ddd88: 9b05         	ldr	r3, [sp, #0x14]
  2ddd8a: f64c 42cd    	movw	r2, #0xcccd
  2ddd8e: f6c3 52cc    	movt	r2, #0x3dcc
  2ddd92: f8c3 215c    	str.w	r2, [r3, #0x15c]
  2ddd96: 9b05         	ldr	r3, [sp, #0x14]
  2ddd98: f04f 4280    	mov.w	r2, #0x40000000
  2ddd9c: f8c3 2160    	str.w	r2, [r3, #0x160]
  2ddda0: 9b05         	ldr	r3, [sp, #0x14]
  2ddda2: f04f 4281    	mov.w	r2, #0x40800000
  2ddda6: f8c3 2164    	str.w	r2, [r3, #0x164]
  2dddaa: 9b05         	ldr	r3, [sp, #0x14]
  2dddac: f04f 0200    	mov.w	r2, #0x0
  2dddb0: f2c4 1220    	movt	r2, #0x4120
  2dddb4: f8c3 216c    	str.w	r2, [r3, #0x16c]
  2dddb8: 9b05         	ldr	r3, [sp, #0x14]
  2dddba: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  2dddbe: 681b         	ldr	r3, [r3]
  2dddc0: 3398         	adds	r3, #0x98
  2dddc2: 681b         	ldr	r3, [r3]
  2dddc4: 9a05         	ldr	r2, [sp, #0x14]
  2dddc6: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  2dddca: 4610         	mov	r0, r2
  2dddcc: f04f 0100    	mov.w	r1, #0x0
  2dddd0: f2c4 01a0    	movt	r1, #0x40a0
  2dddd4: 4798         	blx	r3
  2dddd6: 9b05         	ldr	r3, [sp, #0x14]
  2dddd8: 22c8         	movs	r2, #0xc8
  2dddda: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  2dddde: 9b05         	ldr	r3, [sp, #0x14]
  2ddde0: 2223         	movs	r2, #0x23
  2ddde2: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  2ddde6: 9b05         	ldr	r3, [sp, #0x14]
  2ddde8: 225a         	movs	r2, #0x5a
  2dddea: f8c3 218c    	str.w	r2, [r3, #0x18c]
  2dddee: 9b05         	ldr	r3, [sp, #0x14]
  2dddf0: 2200         	movs	r2, #0x0
  2dddf2: f883 2181    	strb.w	r2, [r3, #0x181]
  2dddf6: 9b05         	ldr	r3, [sp, #0x14]
  2dddf8: 2207         	movs	r2, #0x7
  2dddfa: f8c3 2188    	str.w	r2, [r3, #0x188]
  2dddfe: 9b05         	ldr	r3, [sp, #0x14]
  2dde00: 221e         	movs	r2, #0x1e
  2dde02: f8c3 219c    	str.w	r2, [r3, #0x19c]
  2dde06: 9b05         	ldr	r3, [sp, #0x14]
  2dde08: 2228         	movs	r2, #0x28
  2dde0a: f8c3 21a0    	str.w	r2, [r3, #0x1a0]
  2dde0e: 4b2b         	ldr	r3, [pc, #0xac]         @ 0x2ddebc <AK47::init()+0x374>
  2dde10: 447b         	add	r3, pc
  2dde12: 681a         	ldr	r2, [r3]
  2dde14: 9b05         	ldr	r3, [sp, #0x14]
  2dde16: f8c3 21a4    	str.w	r2, [r3, #0x1a4]
  2dde1a: 9b05         	ldr	r3, [sp, #0x14]
  2dde1c: 2223         	movs	r2, #0x23
  2dde1e: f8c3 2170    	str.w	r2, [r3, #0x170]
  2dde22: 9b05         	ldr	r3, [sp, #0x14]
  2dde24: 22fa         	movs	r2, #0xfa
  2dde26: f8c3 2174    	str.w	r2, [r3, #0x174]
  2dde2a: 9c05         	ldr	r4, [sp, #0x14]
  2dde2c: 466b         	mov	r3, sp
  2dde2e: 4618         	mov	r0, r3
  2dde30: ed9f 0b1b    	vldr	d0, [pc, #108]          @ 0x2ddea0 <AK47::init()+0x358>
  2dde34: eeb2 1b08    	vmov.f64	d1, #1.200000e+01
  2dde38: f7fe ff68    	bl	0x2dcd0c <cocos2d::CCSprite::getTextureRect()+0x30> @ imm = #-0x1130
  2dde3c: f504 74ec    	add.w	r4, r4, #0x1d8
  2dde40: 466b         	mov	r3, sp
  2dde42: cb0f         	ldm	r3, {r0, r1, r2, r3}
  2dde44: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  2dde48: 4b1d         	ldr	r3, [pc, #0x74]         @ 0x2ddec0 <AK47::init()+0x378>
  2dde4a: 447b         	add	r3, pc
  2dde4c: 681a         	ldr	r2, [r3]
  2dde4e: 9b05         	ldr	r3, [sp, #0x14]
  2dde50: f8c3 2198    	str.w	r2, [r3, #0x198]
  2dde54: 2301         	movs	r3, #0x1
  2dde56: e020         	b	0x2dde9a <AK47::init()+0x352> @ imm = #0x40
  2dde58: ab08         	add	r3, sp, #0x20
  2dde5a: 4618         	mov	r0, r3
  2dde5c: f0d7 f55a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4d7ab4
  2dde60: e7ff         	b	0x2dde62 <AK47::init()+0x31a> @ imm = #-0x2
  2dde62: ab07         	add	r3, sp, #0x1c
  2dde64: 4618         	mov	r0, r3
  2dde66: f0ac f2c9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4ac592
  2dde6a: f0aa f11f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4aa23e
  2dde6e: ab08         	add	r3, sp, #0x20
  2dde70: 4618         	mov	r0, r3
  2dde72: f0d7 f54f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4d7a9e
  2dde76: e7ff         	b	0x2dde78 <AK47::init()+0x330> @ imm = #-0x2
  2dde78: ab07         	add	r3, sp, #0x1c
  2dde7a: 4618         	mov	r0, r3
  2dde7c: f0ac f2be    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4ac57c
  2dde80: f0aa f114    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4aa228
  2dde84: ab08         	add	r3, sp, #0x20
  2dde86: 4618         	mov	r0, r3
  2dde88: f0d7 f544    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4d7a88
  2dde8c: e7ff         	b	0x2dde8e <AK47::init()+0x346> @ imm = #-0x2
  2dde8e: ab07         	add	r3, sp, #0x1c
  2dde90: 4618         	mov	r0, r3
  2dde92: f0ac f2b3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4ac566
  2dde96: f0aa f109    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4aa212
  2dde9a: 4618         	mov	r0, r3
  2dde9c: b00b         	add	sp, #0x2c
  2dde9e: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x2dde9f); words below are literal-pool data ---
  2ddea0: 0000         	movs	r0, r0
  2ddea2: 0000         	movs	r0, r0
  2ddea4: 8000         	strh	r0, [r0]
  2ddea6: 4059         	eors	r1, r3
  2ddea8: 3c6c         	subs	r4, #0x6c
  2ddeaa: 004e         	lsls	r6, r1, #0x1
  2ddeac: 3c5a         	subs	r4, #0x5a
  2ddeae: 004e         	lsls	r6, r1, #0x1
  2ddeb0: 3b7a         	subs	r3, #0x7a
  2ddeb2: 004e         	lsls	r6, r1, #0x1
  2ddeb4: 3b20         	subs	r3, #0x20
  2ddeb6: 004e         	lsls	r6, r1, #0x1
  2ddeb8: 3ac6         	subs	r2, #0xc6
  2ddeba: 004e         	lsls	r6, r1, #0x1
  2ddebc: 5204         	strh	r4, [r0, r0]
  2ddebe: 0065         	lsls	r5, r4, #0x1
  2ddec0: 51c6         	str	r6, [r0, r7]
  2ddec2: 0065         	lsls	r5, r4, #0x1

// ==== AK47::~AK47
//      file offset 0x2ddec8 (= ELF address; Ghidra 0x2edec8), 92 bytes, Thumb-2
  2ddec8: b500         	push	{lr}
  2ddeca: b083         	sub	sp, #0xc
  2ddecc: 9001         	str	r0, [sp, #0x4]
  2ddece: 4913         	ldr	r1, [pc, #0x4c]         @ 0x2ddf1c <AK47::~AK47()+0x54>
  2dded0: 4479         	add	r1, pc
  2dded2: 9b01         	ldr	r3, [sp, #0x4]
  2dded4: 4a12         	ldr	r2, [pc, #0x48]         @ 0x2ddf20 <AK47::~AK47()+0x58>
  2dded6: 588a         	ldr	r2, [r1, r2]
  2dded8: 3208         	adds	r2, #0x8
  2ddeda: 601a         	str	r2, [r3]
  2ddedc: 9b01         	ldr	r3, [sp, #0x4]
  2ddede: 4618         	mov	r0, r3
  2ddee0: f2b2 fba4    	bl	0x59062c <cocos2d::CCNode::removeAllChildren()> @ imm = #0x2b2748
  2ddee4: 9b01         	ldr	r3, [sp, #0x4]
  2ddee6: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  2ddeea: 4618         	mov	r0, r3
  2ddeec: f2b9 ffe4    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2b9fc8
  2ddef0: 9b01         	ldr	r3, [sp, #0x4]
  2ddef2: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  2ddef6: 4618         	mov	r0, r3
  2ddef8: f2b9 ffde    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2b9fbc
  2ddefc: 9b01         	ldr	r3, [sp, #0x4]
  2ddefe: 4618         	mov	r0, r3
  2ddf00: f137 f976    	bl	0x4151f0 <Weapon::~Weapon()> @ imm = #0x1372ec
  2ddf04: 2300         	movs	r3, #0x0
  2ddf06: 2b00         	cmp	r3, #0x0
  2ddf08: d002         	beq	0x2ddf10 <AK47::~AK47()+0x48> @ imm = #0x4
  2ddf0a: 9801         	ldr	r0, [sp, #0x4]
  2ddf0c: f0aa f0ca    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4aa194
  2ddf10: 9b01         	ldr	r3, [sp, #0x4]
  2ddf12: 4618         	mov	r0, r3
  2ddf14: b003         	add	sp, #0xc
  2ddf16: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2ddf19); words below are literal-pool data ---
  2ddf1a: bf00         	nop
  2ddf1c: 4b38         	ldr	r3, [pc, #0xe0]         @ 0x2de000 <AK47::triggerPull(float)+0xc0>
  2ddf1e: 0065         	lsls	r5, r4, #0x1
  2ddf20: d740         	bvc	0x2ddfa4 <AK47::triggerPull(float)+0x64> @ imm = #0x80
  2ddf22: ffff b500    	<unknown>

// ==== AK47::~AK47
//      file offset 0x2ddf24 (= ELF address; Ghidra 0x2edf24), 28 bytes, Thumb-2
  2ddf24: b500         	push	{lr}
  2ddf26: b083         	sub	sp, #0xc
  2ddf28: 9001         	str	r0, [sp, #0x4]
  2ddf2a: 9801         	ldr	r0, [sp, #0x4]
  2ddf2c: f7ff ffcc    	bl	0x2ddec8 <AK47::~AK47()> @ imm = #-0x68
  2ddf30: 9801         	ldr	r0, [sp, #0x4]
  2ddf32: f0aa f0b7    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4aa16e
  2ddf36: 9b01         	ldr	r3, [sp, #0x4]
  2ddf38: 4618         	mov	r0, r3
  2ddf3a: b003         	add	sp, #0xc
  2ddf3c: f85d fb04    	ldr	pc, [sp], #4

// ==== AK47::triggerPull
//      file offset 0x2ddf40 (= ELF address; Ghidra 0x2edf40), 352 bytes, Thumb-2
  2ddf40: b510         	push	{r4, lr}
  2ddf42: b088         	sub	sp, #0x20
  2ddf44: 9003         	str	r0, [sp, #0xc]
  2ddf46: 9102         	str	r1, [sp, #0x8]
  2ddf48: 4c53         	ldr	r4, [pc, #0x14c]        @ 0x2de098 <AK47::triggerPull(float)+0x158>
  2ddf4a: 447c         	add	r4, pc
  2ddf4c: 9b03         	ldr	r3, [sp, #0xc]
  2ddf4e: ed93 7a44    	vldr	s14, [r3, #272]
  2ddf52: 9b03         	ldr	r3, [sp, #0xc]
  2ddf54: edd3 7a57    	vldr	s15, [r3, #348]
  2ddf58: eeb4 7ae7    	vcmpe.f32	s14, s15
  2ddf5c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  2ddf60: dd71         	ble	0x2de046 <AK47::triggerPull(float)+0x106> @ imm = #0xe2
  2ddf62: 9b03         	ldr	r3, [sp, #0xc]
  2ddf64: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  2ddf68: b21b         	sxth	r3, r3
  2ddf6a: 2b00         	cmp	r3, #0x0
  2ddf6c: dd0f         	ble	0x2ddf8e <AK47::triggerPull(float)+0x4e> @ imm = #0x1e
  2ddf6e: 9b03         	ldr	r3, [sp, #0xc]
  2ddf70: 681b         	ldr	r3, [r3]
  2ddf72: f503 7333    	add.w	r3, r3, #0x2cc
  2ddf76: 681b         	ldr	r3, [r3]
  2ddf78: 9a03         	ldr	r2, [sp, #0xc]
  2ddf7a: 4610         	mov	r0, r2
  2ddf7c: 4798         	blx	r3
  2ddf7e: 4603         	mov	r3, r0
  2ddf80: f083 0301    	eor	r3, r3, #0x1
  2ddf84: b2db         	uxtb	r3, r3
  2ddf86: 2b00         	cmp	r3, #0x0
  2ddf88: d001         	beq	0x2ddf8e <AK47::triggerPull(float)+0x4e> @ imm = #0x2
  2ddf8a: 2301         	movs	r3, #0x1
  2ddf8c: e000         	b	0x2ddf90 <AK47::triggerPull(float)+0x50> @ imm = #0x0
  2ddf8e: 2300         	movs	r3, #0x0
  2ddf90: 2b00         	cmp	r3, #0x0
  2ddf92: d02c         	beq	0x2ddfee <AK47::triggerPull(float)+0xae> @ imm = #0x58
  2ddf94: 9b03         	ldr	r3, [sp, #0xc]
  2ddf96: 2201         	movs	r2, #0x1
  2ddf98: f883 2180    	strb.w	r2, [r3, #0x180]
  2ddf9c: 9b03         	ldr	r3, [sp, #0xc]
  2ddf9e: 681b         	ldr	r3, [r3]
  2ddfa0: f503 7325    	add.w	r3, r3, #0x294
  2ddfa4: 681b         	ldr	r3, [r3]
  2ddfa6: 9803         	ldr	r0, [sp, #0xc]
  2ddfa8: 4798         	blx	r3
  2ddfaa: 9b03         	ldr	r3, [sp, #0xc]
  2ddfac: 681b         	ldr	r3, [r3]
  2ddfae: f503 7342    	add.w	r3, r3, #0x308
  2ddfb2: 681b         	ldr	r3, [r3]
  2ddfb4: 9a03         	ldr	r2, [sp, #0xc]
  2ddfb6: 4610         	mov	r0, r2
  2ddfb8: 4798         	blx	r3
  2ddfba: 9b03         	ldr	r3, [sp, #0xc]
  2ddfbc: 681b         	ldr	r3, [r3]
  2ddfbe: f503 7343    	add.w	r3, r3, #0x30c
  2ddfc2: 681b         	ldr	r3, [r3]
  2ddfc4: 9a03         	ldr	r2, [sp, #0xc]
  2ddfc6: 4610         	mov	r0, r2
  2ddfc8: 4798         	blx	r3
  2ddfca: 9b03         	ldr	r3, [sp, #0xc]
  2ddfcc: f893 3195    	ldrb.w	r3, [r3, #0x195]
  2ddfd0: 3301         	adds	r3, #0x1
  2ddfd2: b2da         	uxtb	r2, r3
  2ddfd4: 9b03         	ldr	r3, [sp, #0xc]
  2ddfd6: f883 2195    	strb.w	r2, [r3, #0x195]
  2ddfda: 9b03         	ldr	r3, [sp, #0xc]
  2ddfdc: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  2ddfe0: b29b         	uxth	r3, r3
  2ddfe2: 3b00         	subs	r3, #0x0
  2ddfe4: b29a         	uxth	r2, r3
  2ddfe6: 9b03         	ldr	r3, [sp, #0xc]
  2ddfe8: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  2ddfec: e026         	b	0x2de03c <AK47::triggerPull(float)+0xfc> @ imm = #0x4c
  2ddfee: 9b03         	ldr	r3, [sp, #0xc]
  2ddff0: 681b         	ldr	r3, [r3]
  2ddff2: f503 7333    	add.w	r3, r3, #0x2cc
  2ddff6: 681b         	ldr	r3, [r3]
  2ddff8: 9a03         	ldr	r2, [sp, #0xc]
  2ddffa: 4610         	mov	r0, r2
  2ddffc: 4798         	blx	r3
  2ddffe: 4603         	mov	r3, r0
  2de000: f083 0301    	eor	r3, r3, #0x1
  2de004: b2db         	uxtb	r3, r3
  2de006: 2b00         	cmp	r3, #0x0
  2de008: d018         	beq	0x2de03c <AK47::triggerPull(float)+0xfc> @ imm = #0x30
  2de00a: 4b24         	ldr	r3, [pc, #0x90]         @ 0x2de09c <AK47::triggerPull(float)+0x15c>
  2de00c: 58e3         	ldr	r3, [r4, r3]
  2de00e: 681c         	ldr	r4, [r3]
  2de010: 9b03         	ldr	r3, [sp, #0xc]
  2de012: 681b         	ldr	r3, [r3]
  2de014: f503 7348    	add.w	r3, r3, #0x320
  2de018: 681b         	ldr	r3, [r3]
  2de01a: 9a03         	ldr	r2, [sp, #0xc]
  2de01c: a904         	add	r1, sp, #0x10
  2de01e: 4608         	mov	r0, r1
  2de020: 4611         	mov	r1, r2
  2de022: 4798         	blx	r3
  2de024: 466b         	mov	r3, sp
  2de026: aa06         	add	r2, sp, #0x18
  2de028: e892 0003    	ldm.w	r2, {r0, r1}
  2de02c: e883 0003    	stm.w	r3, {r0, r1}
  2de030: ab04         	add	r3, sp, #0x10
  2de032: cb0c         	ldm	r3, {r2, r3}
  2de034: 4620         	mov	r0, r4
  2de036: 2100         	movs	r1, #0x0
  2de038: f119 ffde    	bl	0x3f7ff8 <Sound::playSoundPosition(int, cpVect)> @ imm = #0x119fbc
  2de03c: 9b03         	ldr	r3, [sp, #0xc]
  2de03e: f04f 0200    	mov.w	r2, #0x0
  2de042: f8c3 2110    	str.w	r2, [r3, #0x110]
  2de046: 9b03         	ldr	r3, [sp, #0xc]
  2de048: 681b         	ldr	r3, [r3]
  2de04a: f503 7333    	add.w	r3, r3, #0x2cc
  2de04e: 681b         	ldr	r3, [r3]
  2de050: 9a03         	ldr	r2, [sp, #0xc]
  2de052: 4610         	mov	r0, r2
  2de054: 4798         	blx	r3
  2de056: 4603         	mov	r3, r0
  2de058: f083 0301    	eor	r3, r3, #0x1
  2de05c: b2db         	uxtb	r3, r3
  2de05e: 2b00         	cmp	r3, #0x0
  2de060: d00c         	beq	0x2de07c <AK47::triggerPull(float)+0x13c> @ imm = #0x18
  2de062: 9b03         	ldr	r3, [sp, #0xc]
  2de064: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  2de068: 2b00         	cmp	r3, #0x0
  2de06a: d107         	bne	0x2de07c <AK47::triggerPull(float)+0x13c> @ imm = #0xe
  2de06c: 9b03         	ldr	r3, [sp, #0xc]
  2de06e: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  2de072: b21b         	sxth	r3, r3
  2de074: 2b00         	cmp	r3, #0x0
  2de076: dd01         	ble	0x2de07c <AK47::triggerPull(float)+0x13c> @ imm = #0x2
  2de078: 2301         	movs	r3, #0x1
  2de07a: e000         	b	0x2de07e <AK47::triggerPull(float)+0x13e> @ imm = #0x0
  2de07c: 2300         	movs	r3, #0x0
  2de07e: 2b00         	cmp	r3, #0x0
  2de080: d008         	beq	0x2de094 <AK47::triggerPull(float)+0x154> @ imm = #0x10
  2de082: 9b03         	ldr	r3, [sp, #0xc]
  2de084: 2201         	movs	r2, #0x1
  2de086: f883 2181    	strb.w	r2, [r3, #0x181]
  2de08a: 9b03         	ldr	r3, [sp, #0xc]
  2de08c: f04f 0200    	mov.w	r2, #0x0
  2de090: f8c3 2158    	str.w	r2, [r3, #0x158]
  2de094: b008         	add	sp, #0x20
  2de096: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2de097); words below are literal-pool data ---
  2de098: 4abe         	ldr	r2, [pc, #0x2f8]        @ 0x2de394 <AK47::playSound()+0x38>
  2de09a: 0065         	lsls	r5, r4, #0x1
  2de09c: d730         	bvc	0x2de100 <AK47::updateItemStep(float)+0x60> @ imm = #0x60
  2de09e: ffff b500    	<unknown>

// ==== AK47::updateItemStep
//      file offset 0x2de0a0 (= ELF address; Ghidra 0x2ee0a0), 282 bytes, Thumb-2
  2de0a0: b500         	push	{lr}
  2de0a2: ed2d 8b02    	vpush	{d8}
  2de0a6: b085         	sub	sp, #0x14
  2de0a8: 9001         	str	r0, [sp, #0x4]
  2de0aa: 9100         	str	r1, [sp]
  2de0ac: 9b01         	ldr	r3, [sp, #0x4]
  2de0ae: ed93 7a56    	vldr	s14, [r3, #344]
  2de0b2: eddd 7a00    	vldr	s15, [sp]
  2de0b6: ee77 7a27    	vadd.f32	s15, s14, s15
  2de0ba: 9b01         	ldr	r3, [sp, #0x4]
  2de0bc: edc3 7a56    	vstr	s15, [r3, #344]
  2de0c0: 9b01         	ldr	r3, [sp, #0x4]
  2de0c2: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  2de0c6: 681b         	ldr	r3, [r3]
  2de0c8: 3390         	adds	r3, #0x90
  2de0ca: 681b         	ldr	r3, [r3]
  2de0cc: 9a01         	ldr	r2, [sp, #0x4]
  2de0ce: f8d2 11f0    	ldr.w	r1, [r2, #0x1f0]
  2de0d2: 9a01         	ldr	r2, [sp, #0x4]
  2de0d4: f892 2180    	ldrb.w	r2, [r2, #0x180]
  2de0d8: 4608         	mov	r0, r1
  2de0da: 4611         	mov	r1, r2
  2de0dc: 4798         	blx	r3
  2de0de: 9b01         	ldr	r3, [sp, #0x4]
  2de0e0: 681b         	ldr	r3, [r3]
  2de0e2: f503 7315    	add.w	r3, r3, #0x254
  2de0e6: 681b         	ldr	r3, [r3]
  2de0e8: 9a01         	ldr	r2, [sp, #0x4]
  2de0ea: 4610         	mov	r0, r2
  2de0ec: 9900         	ldr	r1, [sp]
  2de0ee: 4798         	blx	r3
  2de0f0: 9b01         	ldr	r3, [sp, #0x4]
  2de0f2: f893 3181    	ldrb.w	r3, [r3, #0x181]
  2de0f6: 2b00         	cmp	r3, #0x0
  2de0f8: d013         	beq	0x2de122 <AK47::updateItemStep(float)+0x82> @ imm = #0x26
  2de0fa: 9b01         	ldr	r3, [sp, #0x4]
  2de0fc: ed93 8a56    	vldr	s16, [r3, #344]
  2de100: 9b01         	ldr	r3, [sp, #0x4]
  2de102: 681b         	ldr	r3, [r3]
  2de104: f503 732e    	add.w	r3, r3, #0x2b8
  2de108: 681b         	ldr	r3, [r3]
  2de10a: 9a01         	ldr	r2, [sp, #0x4]
  2de10c: 4610         	mov	r0, r2
  2de10e: 4798         	blx	r3
  2de110: ee07 0a90    	vmov	s15, r0
  2de114: eeb4 8ae7    	vcmpe.f32	s16, s15
  2de118: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  2de11c: dd01         	ble	0x2de122 <AK47::updateItemStep(float)+0x82> @ imm = #0x2
  2de11e: 2301         	movs	r3, #0x1
  2de120: e000         	b	0x2de124 <AK47::updateItemStep(float)+0x84> @ imm = #0x0
  2de122: 2300         	movs	r3, #0x0
  2de124: 2b00         	cmp	r3, #0x0
  2de126: d043         	beq	0x2de1b0 <AK47::updateItemStep(float)+0x110> @ imm = #0x86
  2de128: 9b01         	ldr	r3, [sp, #0x4]
  2de12a: 2200         	movs	r2, #0x0
  2de12c: f883 2181    	strb.w	r2, [r3, #0x181]
  2de130: 9b01         	ldr	r3, [sp, #0x4]
  2de132: f04f 0200    	mov.w	r2, #0x0
  2de136: f8c3 2110    	str.w	r2, [r3, #0x110]
  2de13a: 9b01         	ldr	r3, [sp, #0x4]
  2de13c: 681b         	ldr	r3, [r3]
  2de13e: f503 732d    	add.w	r3, r3, #0x2b4
  2de142: 681b         	ldr	r3, [r3]
  2de144: 9a01         	ldr	r2, [sp, #0x4]
  2de146: 4610         	mov	r0, r2
  2de148: 4798         	blx	r3
  2de14a: 4602         	mov	r2, r0
  2de14c: 9b01         	ldr	r3, [sp, #0x4]
  2de14e: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  2de152: b21b         	sxth	r3, r3
  2de154: 1ad3         	subs	r3, r2, r3
  2de156: 9303         	str	r3, [sp, #0xc]
  2de158: 9b01         	ldr	r3, [sp, #0x4]
  2de15a: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  2de15e: b29a         	uxth	r2, r3
  2de160: 9b03         	ldr	r3, [sp, #0xc]
  2de162: b29b         	uxth	r3, r3
  2de164: 1ad3         	subs	r3, r2, r3
  2de166: b29b         	uxth	r3, r3
  2de168: b29a         	uxth	r2, r3
  2de16a: 9b01         	ldr	r3, [sp, #0x4]
  2de16c: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  2de170: 9b01         	ldr	r3, [sp, #0x4]
  2de172: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  2de176: b29a         	uxth	r2, r3
  2de178: 9b03         	ldr	r3, [sp, #0xc]
  2de17a: b29b         	uxth	r3, r3
  2de17c: 4413         	add	r3, r2
  2de17e: b29a         	uxth	r2, r3
  2de180: 9b01         	ldr	r3, [sp, #0x4]
  2de182: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  2de186: b21b         	sxth	r3, r3
  2de188: ea03 73e3    	and.w	r3, r3, r3, asr #31
  2de18c: b29b         	uxth	r3, r3
  2de18e: b29b         	uxth	r3, r3
  2de190: 4413         	add	r3, r2
  2de192: b29b         	uxth	r3, r3
  2de194: b29a         	uxth	r2, r3
  2de196: 9b01         	ldr	r3, [sp, #0x4]
  2de198: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  2de19c: 9b01         	ldr	r3, [sp, #0x4]
  2de19e: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  2de1a2: b21b         	sxth	r3, r3
  2de1a4: ea23 73e3    	bic.w	r3, r3, r3, asr #31
  2de1a8: b29a         	uxth	r2, r3
  2de1aa: 9b01         	ldr	r3, [sp, #0x4]
  2de1ac: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  2de1b0: b005         	add	sp, #0x14
  2de1b2: ecbd 8b02    	vpop	{d8}
  2de1b6: f85d fb04    	ldr	pc, [sp], #4

// ==== AK47::updateRemoteItemStep
//      file offset 0x2de1bc (= ELF address; Ghidra 0x2ee1bc), 94 bytes, Thumb-2
  2de1bc: b500         	push	{lr}
  2de1be: b083         	sub	sp, #0xc
  2de1c0: 9001         	str	r0, [sp, #0x4]
  2de1c2: 9100         	str	r1, [sp]
  2de1c4: 9b01         	ldr	r3, [sp, #0x4]
  2de1c6: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  2de1ca: 681b         	ldr	r3, [r3]
  2de1cc: 3390         	adds	r3, #0x90
  2de1ce: 681b         	ldr	r3, [r3]
  2de1d0: 9a01         	ldr	r2, [sp, #0x4]
  2de1d2: f8d2 11f0    	ldr.w	r1, [r2, #0x1f0]
  2de1d6: 9a01         	ldr	r2, [sp, #0x4]
  2de1d8: f892 2180    	ldrb.w	r2, [r2, #0x180]
  2de1dc: 4608         	mov	r0, r1
  2de1de: 4611         	mov	r1, r2
  2de1e0: 4798         	blx	r3
  2de1e2: 9b01         	ldr	r3, [sp, #0x4]
  2de1e4: 681b         	ldr	r3, [r3]
  2de1e6: f503 7315    	add.w	r3, r3, #0x254
  2de1ea: 681b         	ldr	r3, [r3]
  2de1ec: 9a01         	ldr	r2, [sp, #0x4]
  2de1ee: 4610         	mov	r0, r2
  2de1f0: 9900         	ldr	r1, [sp]
  2de1f2: 4798         	blx	r3
  2de1f4: 9b01         	ldr	r3, [sp, #0x4]
  2de1f6: f893 2194    	ldrb.w	r2, [r3, #0x194]
  2de1fa: 9b01         	ldr	r3, [sp, #0x4]
  2de1fc: f893 3195    	ldrb.w	r3, [r3, #0x195]
  2de200: 429a         	cmp	r2, r3
  2de202: d007         	beq	0x2de214 <AK47::updateRemoteItemStep(float)+0x58> @ imm = #0xe
  2de204: 9b01         	ldr	r3, [sp, #0x4]
  2de206: 681b         	ldr	r3, [r3]
  2de208: f503 7318    	add.w	r3, r3, #0x260
  2de20c: 681b         	ldr	r3, [r3]
  2de20e: 9801         	ldr	r0, [sp, #0x4]
  2de210: 9900         	ldr	r1, [sp]
  2de212: 4798         	blx	r3
  2de214: b003         	add	sp, #0xc
  2de216: f85d fb04    	ldr	pc, [sp], #4

// ==== AK47::remoteTriggerPull
//      file offset 0x2de21c (= ELF address; Ghidra 0x2ee21c), 116 bytes, Thumb-2
  2de21c: b500         	push	{lr}
  2de21e: b083         	sub	sp, #0xc
  2de220: 9001         	str	r0, [sp, #0x4]
  2de222: 9100         	str	r1, [sp]
  2de224: 9b01         	ldr	r3, [sp, #0x4]
  2de226: ed93 7a44    	vldr	s14, [r3, #272]
  2de22a: 9b01         	ldr	r3, [sp, #0x4]
  2de22c: edd3 7a57    	vldr	s15, [r3, #348]
  2de230: eeb4 7ae7    	vcmpe.f32	s14, s15
  2de234: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  2de238: dd27         	ble	0x2de28a <AK47::remoteTriggerPull(float)+0x6e> @ imm = #0x4e
  2de23a: 9b01         	ldr	r3, [sp, #0x4]
  2de23c: f04f 0200    	mov.w	r2, #0x0
  2de240: f8c3 2110    	str.w	r2, [r3, #0x110]
  2de244: 9b01         	ldr	r3, [sp, #0x4]
  2de246: 2201         	movs	r2, #0x1
  2de248: f883 2180    	strb.w	r2, [r3, #0x180]
  2de24c: 9b01         	ldr	r3, [sp, #0x4]
  2de24e: 681b         	ldr	r3, [r3]
  2de250: f503 7325    	add.w	r3, r3, #0x294
  2de254: 681b         	ldr	r3, [r3]
  2de256: 9801         	ldr	r0, [sp, #0x4]
  2de258: 4798         	blx	r3
  2de25a: 9b01         	ldr	r3, [sp, #0x4]
  2de25c: 681b         	ldr	r3, [r3]
  2de25e: f503 7342    	add.w	r3, r3, #0x308
  2de262: 681b         	ldr	r3, [r3]
  2de264: 9a01         	ldr	r2, [sp, #0x4]
  2de266: 4610         	mov	r0, r2
  2de268: 4798         	blx	r3
  2de26a: 9b01         	ldr	r3, [sp, #0x4]
  2de26c: 681b         	ldr	r3, [r3]
  2de26e: f503 7343    	add.w	r3, r3, #0x30c
  2de272: 681b         	ldr	r3, [r3]
  2de274: 9a01         	ldr	r2, [sp, #0x4]
  2de276: 4610         	mov	r0, r2
  2de278: 4798         	blx	r3
  2de27a: 9b01         	ldr	r3, [sp, #0x4]
  2de27c: f893 3195    	ldrb.w	r3, [r3, #0x195]
  2de280: 3301         	adds	r3, #0x1
  2de282: b2da         	uxtb	r2, r3
  2de284: 9b01         	ldr	r3, [sp, #0x4]
  2de286: f883 2195    	strb.w	r2, [r3, #0x195]
  2de28a: b003         	add	sp, #0xc
  2de28c: f85d fb04    	ldr	pc, [sp], #4

// ==== AK47::getShellPoint
//      file offset 0x2de290 (= ELF address; Ghidra 0x2ee290), 204 bytes, Thumb-2
  2de290: b510         	push	{r4, lr}
  2de292: b08e         	sub	sp, #0x38
  2de294: 9001         	str	r0, [sp, #0x4]
  2de296: 9100         	str	r1, [sp]
  2de298: 4c2e         	ldr	r4, [pc, #0xb8]         @ 0x2de354 <AK47::getShellPoint()+0xc4>
  2de29a: 447c         	add	r4, pc
  2de29c: ab02         	add	r3, sp, #0x8
  2de29e: 4618         	mov	r0, r3
  2de2a0: f04f 0100    	mov.w	r1, #0x0
  2de2a4: f2c4 2148    	movt	r1, #0x4248
  2de2a8: f04f 0200    	mov.w	r2, #0x0
  2de2ac: f2c4 1270    	movt	r2, #0x4170
  2de2b0: f2b4 fd1e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2b4a3c
  2de2b4: 9b00         	ldr	r3, [sp]
  2de2b6: 681b         	ldr	r3, [r3]
  2de2b8: 3350         	adds	r3, #0x50
  2de2ba: 681b         	ldr	r3, [r3]
  2de2bc: 9a00         	ldr	r2, [sp]
  2de2be: 4610         	mov	r0, r2
  2de2c0: 4798         	blx	r3
  2de2c2: 4602         	mov	r2, r0
  2de2c4: a906         	add	r1, sp, #0x18
  2de2c6: ab02         	add	r3, sp, #0x8
  2de2c8: 4608         	mov	r0, r1
  2de2ca: 4611         	mov	r1, r2
  2de2cc: 461a         	mov	r2, r3
  2de2ce: f7fe fd0d    	bl	0x2dccec <cocos2d::CCSprite::getTextureRect()+0x10> @ imm = #-0x15e6
  2de2d2: 9b00         	ldr	r3, [sp]
  2de2d4: 681b         	ldr	r3, [r3]
  2de2d6: f503 73c2    	add.w	r3, r3, #0x184
  2de2da: 681b         	ldr	r3, [r3]
  2de2dc: 9a00         	ldr	r2, [sp]
  2de2de: a908         	add	r1, sp, #0x20
  2de2e0: 4608         	mov	r0, r1
  2de2e2: 4611         	mov	r1, r2
  2de2e4: 4798         	blx	r3
  2de2e6: a904         	add	r1, sp, #0x10
  2de2e8: aa06         	add	r2, sp, #0x18
  2de2ea: ab08         	add	r3, sp, #0x20
  2de2ec: 4608         	mov	r0, r1
  2de2ee: 4611         	mov	r1, r2
  2de2f0: 461a         	mov	r2, r3
  2de2f2: f2b4 f817    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x2b402e
  2de2f6: 4b18         	ldr	r3, [pc, #0x60]         @ 0x2de358 <AK47::getShellPoint()+0xc8>
  2de2f8: 58e3         	ldr	r3, [r4, r3]
  2de2fa: 681b         	ldr	r3, [r3]
  2de2fc: 681b         	ldr	r3, [r3]
  2de2fe: f503 73c4    	add.w	r3, r3, #0x188
  2de302: 681b         	ldr	r3, [r3]
  2de304: 4a14         	ldr	r2, [pc, #0x50]         @ 0x2de358 <AK47::getShellPoint()+0xc8>
  2de306: 58a2         	ldr	r2, [r4, r2]
  2de308: 6812         	ldr	r2, [r2]
  2de30a: a908         	add	r1, sp, #0x20
  2de30c: 4608         	mov	r0, r1
  2de30e: 4611         	mov	r1, r2
  2de310: 4798         	blx	r3
  2de312: a906         	add	r1, sp, #0x18
  2de314: aa04         	add	r2, sp, #0x10
  2de316: ab08         	add	r3, sp, #0x20
  2de318: 4608         	mov	r0, r1
  2de31a: 4611         	mov	r1, r2
  2de31c: 461a         	mov	r2, r3
  2de31e: f2b4 f801    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x2b4002
  2de322: aa04         	add	r2, sp, #0x10
  2de324: ab06         	add	r3, sp, #0x18
  2de326: 4610         	mov	r0, r2
  2de328: 4619         	mov	r1, r3
  2de32a: f2b4 fd0f    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x2b4a1e
  2de32e: eddd 7a04    	vldr	s15, [sp, #16]
  2de332: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  2de336: eddd 7a05    	vldr	s15, [sp, #20]
  2de33a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  2de33e: 9b01         	ldr	r3, [sp, #0x4]
  2de340: 4618         	mov	r0, r3
  2de342: eeb0 0b46    	vmov.f64	d0, d6
  2de346: eeb0 1b47    	vmov.f64	d1, d7
  2de34a: f7fe fcdf    	bl	0x2dcd0c <cocos2d::CCSprite::getTextureRect()+0x30> @ imm = #-0x1642
  2de34e: 9801         	ldr	r0, [sp, #0x4]
  2de350: b00e         	add	sp, #0x38
  2de352: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2de353); words below are literal-pool data ---
  2de354: 476e         	bx	sp
  2de356: 0065         	lsls	r5, r4, #0x1
  2de358: d744         	bvc	0x2de3e4 <AK47::setPrimaryConfiguration()+0x40> @ imm = #0x88
  2de35a: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== AK47::playSound
//      file offset 0x2de35c (= ELF address; Ghidra 0x2ee35c), 72 bytes, Thumb-2
  2de35c: b510         	push	{r4, lr}
  2de35e: b088         	sub	sp, #0x20
  2de360: 9003         	str	r0, [sp, #0xc]
  2de362: 4a0e         	ldr	r2, [pc, #0x38]         @ 0x2de39c <AK47::playSound()+0x40>
  2de364: 447a         	add	r2, pc
  2de366: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x2de3a0 <AK47::playSound()+0x44>
  2de368: 58d3         	ldr	r3, [r2, r3]
  2de36a: 681c         	ldr	r4, [r3]
  2de36c: 9b03         	ldr	r3, [sp, #0xc]
  2de36e: 681b         	ldr	r3, [r3]
  2de370: f503 7348    	add.w	r3, r3, #0x320
  2de374: 681b         	ldr	r3, [r3]
  2de376: 9a03         	ldr	r2, [sp, #0xc]
  2de378: a904         	add	r1, sp, #0x10
  2de37a: 4608         	mov	r0, r1
  2de37c: 4611         	mov	r1, r2
  2de37e: 4798         	blx	r3
  2de380: 466b         	mov	r3, sp
  2de382: aa06         	add	r2, sp, #0x18
  2de384: e892 0003    	ldm.w	r2, {r0, r1}
  2de388: e883 0003    	stm.w	r3, {r0, r1}
  2de38c: ab04         	add	r3, sp, #0x10
  2de38e: cb0c         	ldm	r3, {r2, r3}
  2de390: 4620         	mov	r0, r4
  2de392: 2117         	movs	r1, #0x17
  2de394: f119 fe30    	bl	0x3f7ff8 <Sound::playSoundPosition(int, cpVect)> @ imm = #0x119c60
  2de398: b008         	add	sp, #0x20
  2de39a: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2de39b); words below are literal-pool data ---
  2de39c: 46a4         	mov	r12, r4
  2de39e: 0065         	lsls	r5, r4, #0x1
  2de3a0: d730         	bvc	0x2de404 <AK47::setPrimaryConfiguration()+0x60> @ imm = #0x60
  2de3a2: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== AK47::setPrimaryConfiguration
//      file offset 0x2de3a4 (= ELF address; Ghidra 0x2ee3a4), 308 bytes, Thumb-2
  2de3a4: b530         	push	{r4, r5, lr}
  2de3a6: b085         	sub	sp, #0x14
  2de3a8: 9001         	str	r0, [sp, #0x4]
  2de3aa: 9b01         	ldr	r3, [sp, #0x4]
  2de3ac: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  2de3b0: 2b00         	cmp	r3, #0x0
  2de3b2: d019         	beq	0x2de3e8 <AK47::setPrimaryConfiguration()+0x44> @ imm = #0x32
  2de3b4: 9b01         	ldr	r3, [sp, #0x4]
  2de3b6: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  2de3ba: 4b46         	ldr	r3, [pc, #0x118]        @ 0x2de4d4 <AK47::setPrimaryConfiguration()+0x130>
  2de3bc: 447b         	add	r3, pc
  2de3be: ed93 6b00    	vldr	d6, [r3]
  2de3c2: ed93 7b02    	vldr	d7, [r3, #8]
  2de3c6: 4610         	mov	r0, r2
  2de3c8: eeb0 0b46    	vmov.f64	d0, d6
  2de3cc: eeb0 1b47    	vmov.f64	d1, d7
  2de3d0: f7fe fcb0    	bl	0x2dcd34 <cocos2d::CCSprite::getTextureRect()+0x58> @ imm = #-0x16a0
  2de3d4: 9b01         	ldr	r3, [sp, #0x4]
  2de3d6: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  2de3da: 4618         	mov	r0, r3
  2de3dc: f04f 0200    	mov.w	r2, #0x0
  2de3e0: f04f 0300    	mov.w	r3, #0x0
  2de3e4: f3f4 fed5    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x3f4daa
  2de3e8: 9b01         	ldr	r3, [sp, #0x4]
  2de3ea: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  2de3ee: 681b         	ldr	r3, [r3]
  2de3f0: 334c         	adds	r3, #0x4c
  2de3f2: 681c         	ldr	r4, [r3]
  2de3f4: 9b01         	ldr	r3, [sp, #0x4]
  2de3f6: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  2de3fa: ab02         	add	r3, sp, #0x8
  2de3fc: 4618         	mov	r0, r3
  2de3fe: f04f 0100    	mov.w	r1, #0x0
  2de402: f04f 0200    	mov.w	r2, #0x0
  2de406: f2b4 fc73    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2b48e6
  2de40a: ab02         	add	r3, sp, #0x8
  2de40c: 4628         	mov	r0, r5
  2de40e: 4619         	mov	r1, r3
  2de410: 47a0         	blx	r4
  2de412: 9b01         	ldr	r3, [sp, #0x4]
  2de414: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  2de418: 681b         	ldr	r3, [r3]
  2de41a: 337c         	adds	r3, #0x7c
  2de41c: 681c         	ldr	r4, [r3]
  2de41e: 9b01         	ldr	r3, [sp, #0x4]
  2de420: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  2de424: ab02         	add	r3, sp, #0x8
  2de426: 4618         	mov	r0, r3
  2de428: f04f 0100    	mov.w	r1, #0x0
  2de42c: f04f 527c    	mov.w	r2, #0x3f000000
  2de430: f2b4 fc5e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2b48bc
  2de434: ab02         	add	r3, sp, #0x8
  2de436: 4628         	mov	r0, r5
  2de438: 4619         	mov	r1, r3
  2de43a: 47a0         	blx	r4
  2de43c: 9b01         	ldr	r3, [sp, #0x4]
  2de43e: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  2de442: 681b         	ldr	r3, [r3]
  2de444: 3398         	adds	r3, #0x98
  2de446: 681b         	ldr	r3, [r3]
  2de448: 9a01         	ldr	r2, [sp, #0x4]
  2de44a: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  2de44e: 4610         	mov	r0, r2
  2de450: f04f 0100    	mov.w	r1, #0x0
  2de454: 4798         	blx	r3
  2de456: 9b01         	ldr	r3, [sp, #0x4]
  2de458: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  2de45c: 681b         	ldr	r3, [r3]
  2de45e: 3340         	adds	r3, #0x40
  2de460: 681b         	ldr	r3, [r3]
  2de462: 9a01         	ldr	r2, [sp, #0x4]
  2de464: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  2de468: 4610         	mov	r0, r2
  2de46a: f04f 517e    	mov.w	r1, #0x3f800000
  2de46e: 4798         	blx	r3
  2de470: 9b01         	ldr	r3, [sp, #0x4]
  2de472: 681b         	ldr	r3, [r3]
  2de474: 334c         	adds	r3, #0x4c
  2de476: 681c         	ldr	r4, [r3]
  2de478: 9d01         	ldr	r5, [sp, #0x4]
  2de47a: ab02         	add	r3, sp, #0x8
  2de47c: 4618         	mov	r0, r3
  2de47e: f04f 0100    	mov.w	r1, #0x0
  2de482: f04f 0200    	mov.w	r2, #0x0
  2de486: f2b4 fc33    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2b4866
  2de48a: ab02         	add	r3, sp, #0x8
  2de48c: 4628         	mov	r0, r5
  2de48e: 4619         	mov	r1, r3
  2de490: 47a0         	blx	r4
  2de492: 9b01         	ldr	r3, [sp, #0x4]
  2de494: 681b         	ldr	r3, [r3]
  2de496: 3340         	adds	r3, #0x40
  2de498: 681b         	ldr	r3, [r3]
  2de49a: 9a01         	ldr	r2, [sp, #0x4]
  2de49c: 4610         	mov	r0, r2
  2de49e: f04f 517e    	mov.w	r1, #0x3f800000
  2de4a2: 4798         	blx	r3
  2de4a4: 9b01         	ldr	r3, [sp, #0x4]
  2de4a6: 681b         	ldr	r3, [r3]
  2de4a8: 3398         	adds	r3, #0x98
  2de4aa: 681b         	ldr	r3, [r3]
  2de4ac: 9a01         	ldr	r2, [sp, #0x4]
  2de4ae: 4610         	mov	r0, r2
  2de4b0: f04f 0100    	mov.w	r1, #0x0
  2de4b4: 4798         	blx	r3
  2de4b6: 9b01         	ldr	r3, [sp, #0x4]
  2de4b8: 2200         	movs	r2, #0x0
  2de4ba: f883 2195    	strb.w	r2, [r3, #0x195]
  2de4be: 9b01         	ldr	r3, [sp, #0x4]
  2de4c0: 2200         	movs	r2, #0x0
  2de4c2: f883 2194    	strb.w	r2, [r3, #0x194]
  2de4c6: 9b01         	ldr	r3, [sp, #0x4]
  2de4c8: f04f 0200    	mov.w	r2, #0x0
  2de4cc: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  2de4d0: b005         	add	sp, #0x14
  2de4d2: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x2de4d3); words below are literal-pool data ---
  2de4d4: 3488         	adds	r4, #0x88
  2de4d6: 004e         	lsls	r6, r1, #0x1

// ==== AK47::setSecondaryConfiguration
//      file offset 0x2de4d8 (= ELF address; Ghidra 0x2ee4d8), 344 bytes, Thumb-2
  2de4d8: b530         	push	{r4, r5, lr}
  2de4da: b085         	sub	sp, #0x14
  2de4dc: 9001         	str	r0, [sp, #0x4]
  2de4de: 9b01         	ldr	r3, [sp, #0x4]
  2de4e0: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  2de4e4: 2b00         	cmp	r3, #0x0
  2de4e6: d019         	beq	0x2de51c <AK47::setSecondaryConfiguration()+0x44> @ imm = #0x32
  2de4e8: 9b01         	ldr	r3, [sp, #0x4]
  2de4ea: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  2de4ee: 4b4f         	ldr	r3, [pc, #0x13c]        @ 0x2de62c <AK47::setSecondaryConfiguration()+0x154>
  2de4f0: 447b         	add	r3, pc
  2de4f2: ed93 6b00    	vldr	d6, [r3]
  2de4f6: ed93 7b02    	vldr	d7, [r3, #8]
  2de4fa: 4610         	mov	r0, r2
  2de4fc: eeb0 0b46    	vmov.f64	d0, d6
  2de500: eeb0 1b47    	vmov.f64	d1, d7
  2de504: f7fe fc16    	bl	0x2dcd34 <cocos2d::CCSprite::getTextureRect()+0x58> @ imm = #-0x17d4
  2de508: 9b01         	ldr	r3, [sp, #0x4]
  2de50a: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  2de50e: 4618         	mov	r0, r3
  2de510: f04f 0200    	mov.w	r2, #0x0
  2de514: f04f 0300    	mov.w	r3, #0x0
  2de518: f3f4 fe3b    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x3f4c76
  2de51c: 9b01         	ldr	r3, [sp, #0x4]
  2de51e: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  2de522: 681b         	ldr	r3, [r3]
  2de524: 334c         	adds	r3, #0x4c
  2de526: 681c         	ldr	r4, [r3]
  2de528: 9b01         	ldr	r3, [sp, #0x4]
  2de52a: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  2de52e: ab02         	add	r3, sp, #0x8
  2de530: 4618         	mov	r0, r3
  2de532: f04f 0100    	mov.w	r1, #0x0
  2de536: f2cc 11f0    	movt	r1, #0xc1f0
  2de53a: f04f 0200    	mov.w	r2, #0x0
  2de53e: f2c4 02a0    	movt	r2, #0x40a0
  2de542: f2b4 fbd5    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2b47aa
  2de546: ab02         	add	r3, sp, #0x8
  2de548: 4628         	mov	r0, r5
  2de54a: 4619         	mov	r1, r3
  2de54c: 47a0         	blx	r4
  2de54e: 9b01         	ldr	r3, [sp, #0x4]
  2de550: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  2de554: 681b         	ldr	r3, [r3]
  2de556: 337c         	adds	r3, #0x7c
  2de558: 681c         	ldr	r4, [r3]
  2de55a: 9b01         	ldr	r3, [sp, #0x4]
  2de55c: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  2de560: ab02         	add	r3, sp, #0x8
  2de562: 4618         	mov	r0, r3
  2de564: f04f 517c    	mov.w	r1, #0x3f000000
  2de568: f04f 527c    	mov.w	r2, #0x3f000000
  2de56c: f2b4 fbc0    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2b4780
  2de570: ab02         	add	r3, sp, #0x8
  2de572: 4628         	mov	r0, r5
  2de574: 4619         	mov	r1, r3
  2de576: 47a0         	blx	r4
  2de578: 9b01         	ldr	r3, [sp, #0x4]
  2de57a: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  2de57e: 681b         	ldr	r3, [r3]
  2de580: 3398         	adds	r3, #0x98
  2de582: 681b         	ldr	r3, [r3]
  2de584: 9a01         	ldr	r2, [sp, #0x4]
  2de586: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  2de58a: 4610         	mov	r0, r2
  2de58c: f04f 0100    	mov.w	r1, #0x0
  2de590: f2c4 2196    	movt	r1, #0x4296
  2de594: 4798         	blx	r3
  2de596: 9b01         	ldr	r3, [sp, #0x4]
  2de598: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  2de59c: 681b         	ldr	r3, [r3]
  2de59e: 3340         	adds	r3, #0x40
  2de5a0: 681b         	ldr	r3, [r3]
  2de5a2: 9a01         	ldr	r2, [sp, #0x4]
  2de5a4: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  2de5a8: 4610         	mov	r0, r2
  2de5aa: f04f 517e    	mov.w	r1, #0x3f800000
  2de5ae: 4798         	blx	r3
  2de5b0: 9b01         	ldr	r3, [sp, #0x4]
  2de5b2: 681b         	ldr	r3, [r3]
  2de5b4: 334c         	adds	r3, #0x4c
  2de5b6: 681c         	ldr	r4, [r3]
  2de5b8: 9d01         	ldr	r5, [sp, #0x4]
  2de5ba: ab02         	add	r3, sp, #0x8
  2de5bc: 4618         	mov	r0, r3
  2de5be: f04f 0100    	mov.w	r1, #0x0
  2de5c2: f04f 0200    	mov.w	r2, #0x0
  2de5c6: f2b4 fb93    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2b4726
  2de5ca: ab02         	add	r3, sp, #0x8
  2de5cc: 4628         	mov	r0, r5
  2de5ce: 4619         	mov	r1, r3
  2de5d0: 47a0         	blx	r4
  2de5d2: 9b01         	ldr	r3, [sp, #0x4]
  2de5d4: 681b         	ldr	r3, [r3]
  2de5d6: 3340         	adds	r3, #0x40
  2de5d8: 681b         	ldr	r3, [r3]
  2de5da: 9a01         	ldr	r2, [sp, #0x4]
  2de5dc: 4610         	mov	r0, r2
  2de5de: f04f 517e    	mov.w	r1, #0x3f800000
  2de5e2: 4798         	blx	r3
  2de5e4: 9b01         	ldr	r3, [sp, #0x4]
  2de5e6: 681b         	ldr	r3, [r3]
  2de5e8: 3398         	adds	r3, #0x98
  2de5ea: 681b         	ldr	r3, [r3]
  2de5ec: 9a01         	ldr	r2, [sp, #0x4]
  2de5ee: 4610         	mov	r0, r2
  2de5f0: f04f 0100    	mov.w	r1, #0x0
  2de5f4: 4798         	blx	r3
  2de5f6: 9b01         	ldr	r3, [sp, #0x4]
  2de5f8: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  2de5fc: 681b         	ldr	r3, [r3]
  2de5fe: 3390         	adds	r3, #0x90
  2de600: 681b         	ldr	r3, [r3]
  2de602: 9a01         	ldr	r2, [sp, #0x4]
  2de604: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  2de608: 4610         	mov	r0, r2
  2de60a: 2100         	movs	r1, #0x0
  2de60c: 4798         	blx	r3
  2de60e: 9b01         	ldr	r3, [sp, #0x4]
  2de610: 2200         	movs	r2, #0x0
  2de612: f883 2195    	strb.w	r2, [r3, #0x195]
  2de616: 9b01         	ldr	r3, [sp, #0x4]
  2de618: 2200         	movs	r2, #0x0
  2de61a: f883 2194    	strb.w	r2, [r3, #0x194]
  2de61e: 9b01         	ldr	r3, [sp, #0x4]
  2de620: f04f 0200    	mov.w	r2, #0x0
  2de624: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  2de628: b005         	add	sp, #0x14
  2de62a: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x2de62b); words below are literal-pool data ---
  2de62c: 3354         	adds	r3, #0x54
  2de62e: 004e         	lsls	r6, r1, #0x1

// ==== AK47::setMapConfiguration
//      file offset 0x2de630 (= ELF address; Ghidra 0x2ee630), 248 bytes, Thumb-2
  2de630: b570         	push	{r4, r5, r6, lr}
  2de632: b084         	sub	sp, #0x10
  2de634: 9001         	str	r0, [sp, #0x4]
  2de636: 4c3a         	ldr	r4, [pc, #0xe8]         @ 0x2de720 <AK47::setMapConfiguration()+0xf0>
  2de638: 447c         	add	r4, pc
  2de63a: 9b01         	ldr	r3, [sp, #0x4]
  2de63c: f04f 0200    	mov.w	r2, #0x0
  2de640: f8c3 2190    	str.w	r2, [r3, #0x190]
  2de644: 9b01         	ldr	r3, [sp, #0x4]
  2de646: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  2de64a: 681b         	ldr	r3, [r3]
  2de64c: 334c         	adds	r3, #0x4c
  2de64e: 681d         	ldr	r5, [r3]
  2de650: 9b01         	ldr	r3, [sp, #0x4]
  2de652: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  2de656: ab02         	add	r3, sp, #0x8
  2de658: 4618         	mov	r0, r3
  2de65a: f04f 0100    	mov.w	r1, #0x0
  2de65e: f04f 0200    	mov.w	r2, #0x0
  2de662: f2b4 fb45    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2b468a
  2de666: ab02         	add	r3, sp, #0x8
  2de668: 4630         	mov	r0, r6
  2de66a: 4619         	mov	r1, r3
  2de66c: 47a8         	blx	r5
  2de66e: 9b01         	ldr	r3, [sp, #0x4]
  2de670: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  2de674: 681b         	ldr	r3, [r3]
  2de676: 337c         	adds	r3, #0x7c
  2de678: 681d         	ldr	r5, [r3]
  2de67a: 9b01         	ldr	r3, [sp, #0x4]
  2de67c: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  2de680: ab02         	add	r3, sp, #0x8
  2de682: 4618         	mov	r0, r3
  2de684: f04f 517c    	mov.w	r1, #0x3f000000
  2de688: f04f 527c    	mov.w	r2, #0x3f000000
  2de68c: f2b4 fb30    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2b4660
  2de690: ab02         	add	r3, sp, #0x8
  2de692: 4630         	mov	r0, r6
  2de694: 4619         	mov	r1, r3
  2de696: 47a8         	blx	r5
  2de698: 9b01         	ldr	r3, [sp, #0x4]
  2de69a: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  2de69e: 681b         	ldr	r3, [r3]
  2de6a0: 3398         	adds	r3, #0x98
  2de6a2: 681b         	ldr	r3, [r3]
  2de6a4: 9a01         	ldr	r2, [sp, #0x4]
  2de6a6: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  2de6aa: 4610         	mov	r0, r2
  2de6ac: f04f 0100    	mov.w	r1, #0x0
  2de6b0: 4798         	blx	r3
  2de6b2: 9b01         	ldr	r3, [sp, #0x4]
  2de6b4: 681b         	ldr	r3, [r3]
  2de6b6: 334c         	adds	r3, #0x4c
  2de6b8: 681d         	ldr	r5, [r3]
  2de6ba: 9e01         	ldr	r6, [sp, #0x4]
  2de6bc: ab02         	add	r3, sp, #0x8
  2de6be: 4618         	mov	r0, r3
  2de6c0: f04f 0100    	mov.w	r1, #0x0
  2de6c4: f04f 0200    	mov.w	r2, #0x0
  2de6c8: f2b4 fb12    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2b4624
  2de6cc: ab02         	add	r3, sp, #0x8
  2de6ce: 4630         	mov	r0, r6
  2de6d0: 4619         	mov	r1, r3
  2de6d2: 47a8         	blx	r5
  2de6d4: 9b01         	ldr	r3, [sp, #0x4]
  2de6d6: 681b         	ldr	r3, [r3]
  2de6d8: 3340         	adds	r3, #0x40
  2de6da: 681b         	ldr	r3, [r3]
  2de6dc: 9901         	ldr	r1, [sp, #0x4]
  2de6de: 4a11         	ldr	r2, [pc, #0x44]         @ 0x2de724 <AK47::setMapConfiguration()+0xf4>
  2de6e0: 58a2         	ldr	r2, [r4, r2]
  2de6e2: 6812         	ldr	r2, [r2]
  2de6e4: 4608         	mov	r0, r1
  2de6e6: 4611         	mov	r1, r2
  2de6e8: 4798         	blx	r3
  2de6ea: 9b01         	ldr	r3, [sp, #0x4]
  2de6ec: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  2de6f0: 681b         	ldr	r3, [r3]
  2de6f2: 3390         	adds	r3, #0x90
  2de6f4: 681b         	ldr	r3, [r3]
  2de6f6: 9a01         	ldr	r2, [sp, #0x4]
  2de6f8: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  2de6fc: 4610         	mov	r0, r2
  2de6fe: 2100         	movs	r1, #0x0
  2de700: 4798         	blx	r3
  2de702: 9b01         	ldr	r3, [sp, #0x4]
  2de704: 2200         	movs	r2, #0x0
  2de706: f883 2195    	strb.w	r2, [r3, #0x195]
  2de70a: 9b01         	ldr	r3, [sp, #0x4]
  2de70c: 2200         	movs	r2, #0x0
  2de70e: f883 2194    	strb.w	r2, [r3, #0x194]
  2de712: 9b01         	ldr	r3, [sp, #0x4]
  2de714: f04f 0200    	mov.w	r2, #0x0
  2de718: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  2de71c: b004         	add	sp, #0x10
  2de71e: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x2de71f); words below are literal-pool data ---
  2de720: 43d0         	mvns	r0, r2
  2de722: 0065         	lsls	r5, r4, #0x1
  2de724: d748         	bvc	0x2de7b8 <AK47::setRight(bool)+0x4> @ imm = #0x90
  2de726: ffff b500    	<unknown>

// ==== AK47::getWeaponTexture
//      file offset 0x2de728 (= ELF address; Ghidra 0x2ee728), 40 bytes, Thumb-2
  2de728: b500         	push	{lr}
  2de72a: b083         	sub	sp, #0xc
  2de72c: 9001         	str	r0, [sp, #0x4]
  2de72e: 9b01         	ldr	r3, [sp, #0x4]
  2de730: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  2de734: 681b         	ldr	r3, [r3]
  2de736: f503 73fa    	add.w	r3, r3, #0x1f4
  2de73a: 681b         	ldr	r3, [r3]
  2de73c: 9a01         	ldr	r2, [sp, #0x4]
  2de73e: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  2de742: 4610         	mov	r0, r2
  2de744: 4798         	blx	r3
  2de746: 4603         	mov	r3, r0
  2de748: 4618         	mov	r0, r3
  2de74a: b003         	add	sp, #0xc
  2de74c: f85d fb04    	ldr	pc, [sp], #4

// ==== AK47::getWeaponRect
//      file offset 0x2de750 (= ELF address; Ghidra 0x2ee750), 38 bytes, Thumb-2
  2de750: b500         	push	{lr}
  2de752: b083         	sub	sp, #0xc
  2de754: 9001         	str	r0, [sp, #0x4]
  2de756: 9100         	str	r1, [sp]
  2de758: 9b00         	ldr	r3, [sp]
  2de75a: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  2de75e: 4618         	mov	r0, r3
  2de760: f7fe fabc    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x1a88
  2de764: 4603         	mov	r3, r0
  2de766: 9801         	ldr	r0, [sp, #0x4]
  2de768: 4619         	mov	r1, r3
  2de76a: f2b4 fdd5    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x2b4baa
  2de76e: 9801         	ldr	r0, [sp, #0x4]
  2de770: b003         	add	sp, #0xc
  2de772: f85d fb04    	ldr	pc, [sp], #4

// ==== AK47::isRight
//      file offset 0x2de778 (= ELF address; Ghidra 0x2ee778), 60 bytes, Thumb-2
  2de778: b500         	push	{lr}
  2de77a: b083         	sub	sp, #0xc
  2de77c: 9001         	str	r0, [sp, #0x4]
  2de77e: 9b01         	ldr	r3, [sp, #0x4]
  2de780: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  2de784: 681b         	ldr	r3, [r3]
  2de786: 3334         	adds	r3, #0x34
  2de788: 681b         	ldr	r3, [r3]
  2de78a: 9a01         	ldr	r2, [sp, #0x4]
  2de78c: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  2de790: 4610         	mov	r0, r2
  2de792: 4798         	blx	r3
  2de794: ee07 0a10    	vmov	s14, r0
  2de798: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  2de79c: eeb4 7ae7    	vcmpe.f32	s14, s15
  2de7a0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  2de7a4: bfd4         	ite	le
  2de7a6: 2300         	movle	r3, #0x0
  2de7a8: 2301         	movgt	r3, #0x1
  2de7aa: b2db         	uxtb	r3, r3
  2de7ac: 4618         	mov	r0, r3
  2de7ae: b003         	add	sp, #0xc
  2de7b0: f85d fb04    	ldr	pc, [sp], #4

// ==== AK47::setRight
//      file offset 0x2de7b4 (= ELF address; Ghidra 0x2ee7b4), 64 bytes, Thumb-2
  2de7b4: b500         	push	{lr}
  2de7b6: b083         	sub	sp, #0xc
  2de7b8: 9001         	str	r0, [sp, #0x4]
  2de7ba: 460b         	mov	r3, r1
  2de7bc: f88d 3003    	strb.w	r3, [sp, #0x3]
  2de7c0: 9b01         	ldr	r3, [sp, #0x4]
  2de7c2: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  2de7c6: 681b         	ldr	r3, [r3]
  2de7c8: 3330         	adds	r3, #0x30
  2de7ca: 681a         	ldr	r2, [r3]
  2de7cc: 9b01         	ldr	r3, [sp, #0x4]
  2de7ce: f8d3 11ec    	ldr.w	r1, [r3, #0x1ec]
  2de7d2: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  2de7d6: 2b00         	cmp	r3, #0x0
  2de7d8: d002         	beq	0x2de7e0 <AK47::setRight(bool)+0x2c> @ imm = #0x4
  2de7da: f04f 537e    	mov.w	r3, #0x3f800000
  2de7de: e003         	b	0x2de7e8 <AK47::setRight(bool)+0x34> @ imm = #0x6
  2de7e0: f04f 0300    	mov.w	r3, #0x0
  2de7e4: f6cb 7380    	movt	r3, #0xbf80
  2de7e8: 4608         	mov	r0, r1
  2de7ea: 4619         	mov	r1, r3
  2de7ec: 4790         	blx	r2
  2de7ee: b003         	add	sp, #0xc
  2de7f0: f85d fb04    	ldr	pc, [sp], #4

// ==== AK47::getRANGE
//      file offset 0x2de7f4 (= ELF address; Ghidra 0x2ee7f4), 16 bytes, Thumb-2
  2de7f4: 4b02         	ldr	r3, [pc, #0x8]          @ 0x2de800 <AK47::getRANGE()+0xc>
  2de7f6: 447b         	add	r3, pc
  2de7f8: 681b         	ldr	r3, [r3]
  2de7fa: 4618         	mov	r0, r3
  2de7fc: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x2de7fd); words below are literal-pool data ---
  2de7fe: bf00         	nop
  2de800: 481e         	ldr	r0, [pc, #0x78]         @ 0x2de87c <cocos2d::CCFloat::~CCFloat()+0x2c>
  2de802: 0065         	lsls	r5, r4, #0x1

// ==== AK47::getDAMAGE
//      file offset 0x2de804 (= ELF address; Ghidra 0x2ee804), 16 bytes, Thumb-2
  2de804: 4b02         	ldr	r3, [pc, #0x8]          @ 0x2de810 <AK47::getDAMAGE()+0xc>
  2de806: 447b         	add	r3, pc
  2de808: 681b         	ldr	r3, [r3]
  2de80a: 4618         	mov	r0, r3
  2de80c: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x2de80d); words below are literal-pool data ---
  2de80e: bf00         	nop
  2de810: 480a         	ldr	r0, [pc, #0x28]         @ 0x2de83c <cocos2d::CCFloat::~CCFloat()+0x28>
  2de812: 0065         	lsls	r5, r4, #0x1

// ==== AK47::create
//      file offset 0x416f3c (= ELF address; Ghidra 0x426f3c), 112 bytes, Thumb-2
  416f3c: b510         	push	{r4, lr}
  416f3e: b082         	sub	sp, #0x8
  416f40: f44f 70fc    	mov.w	r0, #0x1f8
  416f44: f370 fd0e    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x370a1c
  416f48: 4603         	mov	r3, r0
  416f4a: 461c         	mov	r4, r3
  416f4c: 4620         	mov	r0, r4
  416f4e: f6c6 fde3    	bl	0x2ddb18 <AK47::AK47()> @ imm = #-0x13943a
  416f52: 9401         	str	r4, [sp, #0x4]
  416f54: 9b01         	ldr	r3, [sp, #0x4]
  416f56: 2b00         	cmp	r3, #0x0
  416f58: d00a         	beq	0x416f70 <AK47::create()+0x34> @ imm = #0x14
  416f5a: 9b01         	ldr	r3, [sp, #0x4]
  416f5c: 681b         	ldr	r3, [r3]
  416f5e: 3318         	adds	r3, #0x18
  416f60: 681b         	ldr	r3, [r3]
  416f62: 9801         	ldr	r0, [sp, #0x4]
  416f64: 4798         	blx	r3
  416f66: 4603         	mov	r3, r0
  416f68: 2b00         	cmp	r3, #0x0
  416f6a: d001         	beq	0x416f70 <AK47::create()+0x34> @ imm = #0x2
  416f6c: 2301         	movs	r3, #0x1
  416f6e: e000         	b	0x416f72 <AK47::create()+0x36> @ imm = #0x0
  416f70: 2300         	movs	r3, #0x0
  416f72: 2b00         	cmp	r3, #0x0
  416f74: d005         	beq	0x416f82 <AK47::create()+0x46> @ imm = #0xa
  416f76: 9b01         	ldr	r3, [sp, #0x4]
  416f78: 4618         	mov	r0, r3
  416f7a: f180 ffbf    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x180f7e
  416f7e: 9b01         	ldr	r3, [sp, #0x4]
  416f80: e011         	b	0x416fa6 <AK47::create()+0x6a> @ imm = #0x22
  416f82: 9b01         	ldr	r3, [sp, #0x4]
  416f84: 2b00         	cmp	r3, #0x0
  416f86: d005         	beq	0x416f94 <AK47::create()+0x58> @ imm = #0xa
  416f88: 9b01         	ldr	r3, [sp, #0x4]
  416f8a: 681b         	ldr	r3, [r3]
  416f8c: 3308         	adds	r3, #0x8
  416f8e: 681b         	ldr	r3, [r3]
  416f90: 9801         	ldr	r0, [sp, #0x4]
  416f92: 4798         	blx	r3
  416f94: 2300         	movs	r3, #0x0
  416f96: 9301         	str	r3, [sp, #0x4]
  416f98: 2300         	movs	r3, #0x0
  416f9a: e004         	b	0x416fa6 <AK47::create()+0x6a> @ imm = #0x8
  416f9c: 4620         	mov	r0, r4
  416f9e: f371 f881    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x371102
  416fa2: f371 f883    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x371106
  416fa6: 4618         	mov	r0, r3
  416fa8: b002         	add	sp, #0x8
  416faa: bd10         	pop	{r4, pc}
