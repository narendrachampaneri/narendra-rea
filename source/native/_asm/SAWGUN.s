// SAWGUN: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 20 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../SAWGUN.cpp

// ==== SAWGUN::SAWGUN
//      file offset 0x3cc9a4 (= ELF address; Ghidra 0x3dc9a4), 44 bytes, Thumb-2
  3cc9a4: b510         	push	{r4, lr}
  3cc9a6: b082         	sub	sp, #0x8
  3cc9a8: 9001         	str	r0, [sp, #0x4]
  3cc9aa: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x3cc9c8 <SAWGUN::SAWGUN()+0x24>
  3cc9ac: 447c         	add	r4, pc
  3cc9ae: 9b01         	ldr	r3, [sp, #0x4]
  3cc9b0: 4618         	mov	r0, r3
  3cc9b2: f048 faf9    	bl	0x414fa8 <Weapon::Weapon()> @ imm = #0x485f2
  3cc9b6: 9b01         	ldr	r3, [sp, #0x4]
  3cc9b8: 4a04         	ldr	r2, [pc, #0x10]         @ 0x3cc9cc <SAWGUN::SAWGUN()+0x28>
  3cc9ba: 58a2         	ldr	r2, [r4, r2]
  3cc9bc: 3208         	adds	r2, #0x8
  3cc9be: 601a         	str	r2, [r3]
  3cc9c0: 9b01         	ldr	r3, [sp, #0x4]
  3cc9c2: 4618         	mov	r0, r3
  3cc9c4: b002         	add	sp, #0x8
  3cc9c6: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3cc9c7); words below are literal-pool data ---
  3cc9c8: 605c         	str	r4, [r3, #0x4]
  3cc9ca: 0056         	lsls	r6, r2, #0x1
  3cc9cc: de90         	udf	#0x90
  3cc9ce: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== SAWGUN::init
//      file offset 0x3cc9d0 (= ELF address; Ghidra 0x3dc9d0), 908 bytes, Thumb-2
  3cc9d0: b530         	push	{r4, r5, lr}
  3cc9d2: b08b         	sub	sp, #0x2c
  3cc9d4: 9005         	str	r0, [sp, #0x14]
  3cc9d6: 9b05         	ldr	r3, [sp, #0x14]
  3cc9d8: 4618         	mov	r0, r3
  3cc9da: f048 fb09    	bl	0x414ff0 <Weapon::init()> @ imm = #0x48612
  3cc9de: 4603         	mov	r3, r0
  3cc9e0: f88d 301f    	strb.w	r3, [sp, #0x1f]
  3cc9e4: f89d 301f    	ldrb.w	r3, [sp, #0x1f]
  3cc9e8: f083 0301    	eor	r3, r3, #0x1
  3cc9ec: b2db         	uxtb	r3, r3
  3cc9ee: 2b00         	cmp	r3, #0x0
  3cc9f0: d001         	beq	0x3cc9f6 <SAWGUN::init()+0x26> @ imm = #0x2
  3cc9f2: 2300         	movs	r3, #0x0
  3cc9f4: e19c         	b	0x3ccd30 <SAWGUN::init()+0x360> @ imm = #0x338
  3cc9f6: 4bd2         	ldr	r3, [pc, #0x348]        @ 0x3ccd40 <SAWGUN::init()+0x370>
  3cc9f8: 447b         	add	r3, pc
  3cc9fa: 4618         	mov	r0, r3
  3cc9fc: f20b fc82    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x20b904
  3cca00: 4602         	mov	r2, r0
  3cca02: 9b05         	ldr	r3, [sp, #0x14]
  3cca04: f8c3 21ec    	str.w	r2, [r3, #0x1ec]
  3cca08: 9b05         	ldr	r3, [sp, #0x14]
  3cca0a: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cca0e: 4618         	mov	r0, r3
  3cca10: f1cb fa6a    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1cb4d4
  3cca14: 4bcb         	ldr	r3, [pc, #0x32c]        @ 0x3ccd44 <SAWGUN::init()+0x374>
  3cca16: 447b         	add	r3, pc
  3cca18: 4618         	mov	r0, r3
  3cca1a: f20b fc73    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x20b8e6
  3cca1e: 4602         	mov	r2, r0
  3cca20: 9b05         	ldr	r3, [sp, #0x14]
  3cca22: f8c3 21f0    	str.w	r2, [r3, #0x1f0]
  3cca26: 9b05         	ldr	r3, [sp, #0x14]
  3cca28: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3cca2c: 4618         	mov	r0, r3
  3cca2e: f1cb fa5b    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1cb4b6
  3cca32: 9b05         	ldr	r3, [sp, #0x14]
  3cca34: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3cca38: 681b         	ldr	r3, [r3]
  3cca3a: 3390         	adds	r3, #0x90
  3cca3c: 681b         	ldr	r3, [r3]
  3cca3e: 9a05         	ldr	r2, [sp, #0x14]
  3cca40: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  3cca44: 4610         	mov	r0, r2
  3cca46: 2100         	movs	r1, #0x0
  3cca48: 4798         	blx	r3
  3cca4a: 9b05         	ldr	r3, [sp, #0x14]
  3cca4c: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3cca50: 681b         	ldr	r3, [r3]
  3cca52: 334c         	adds	r3, #0x4c
  3cca54: 681c         	ldr	r4, [r3]
  3cca56: 9b05         	ldr	r3, [sp, #0x14]
  3cca58: f8d3 51f0    	ldr.w	r5, [r3, #0x1f0]
  3cca5c: ab08         	add	r3, sp, #0x20
  3cca5e: 4618         	mov	r0, r3
  3cca60: f04f 0100    	mov.w	r1, #0x0
  3cca64: f2c4 21aa    	movt	r1, #0x42aa
  3cca68: f04f 0200    	mov.w	r2, #0x0
  3cca6c: f2c4 12d0    	movt	r2, #0x41d0
  3cca70: f1c6 f93e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1c627c
  3cca74: ab08         	add	r3, sp, #0x20
  3cca76: 4628         	mov	r0, r5
  3cca78: 4619         	mov	r1, r3
  3cca7a: 47a0         	blx	r4
  3cca7c: 9b05         	ldr	r3, [sp, #0x14]
  3cca7e: 681b         	ldr	r3, [r3]
  3cca80: f503 73f0    	add.w	r3, r3, #0x1e0
  3cca84: 681b         	ldr	r3, [r3]
  3cca86: 9805         	ldr	r0, [sp, #0x14]
  3cca88: 4798         	blx	r3
  3cca8a: 9b05         	ldr	r3, [sp, #0x14]
  3cca8c: 681b         	ldr	r3, [r3]
  3cca8e: 33cc         	adds	r3, #0xcc
  3cca90: 681b         	ldr	r3, [r3]
  3cca92: 9905         	ldr	r1, [sp, #0x14]
  3cca94: 9a05         	ldr	r2, [sp, #0x14]
  3cca96: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3cca9a: 4608         	mov	r0, r1
  3cca9c: 4611         	mov	r1, r2
  3cca9e: 2200         	movs	r2, #0x0
  3ccaa0: 4798         	blx	r3
  3ccaa2: 9b05         	ldr	r3, [sp, #0x14]
  3ccaa4: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3ccaa8: 681b         	ldr	r3, [r3]
  3ccaaa: 33cc         	adds	r3, #0xcc
  3ccaac: 681b         	ldr	r3, [r3]
  3ccaae: 9a05         	ldr	r2, [sp, #0x14]
  3ccab0: f8d2 11ec    	ldr.w	r1, [r2, #0x1ec]
  3ccab4: 9a05         	ldr	r2, [sp, #0x14]
  3ccab6: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  3ccaba: 4608         	mov	r0, r1
  3ccabc: 4611         	mov	r1, r2
  3ccabe: f04f 32ff    	mov.w	r2, #0xffffffff
  3ccac2: 4798         	blx	r3
  3ccac4: 9b05         	ldr	r3, [sp, #0x14]
  3ccac6: f8d3 4150    	ldr.w	r4, [r3, #0x150]
  3ccaca: f04f 507e    	mov.w	r0, #0x3f800000
  3ccace: f710 f8d9    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xefe4e
  3ccad2: 4603         	mov	r3, r0
  3ccad4: 4620         	mov	r0, r4
  3ccad6: 4619         	mov	r1, r3
  3ccad8: f1cd fbc8    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x1cd790
  3ccadc: 9b05         	ldr	r3, [sp, #0x14]
  3ccade: f8d3 414c    	ldr.w	r4, [r3, #0x14c]
  3ccae2: ab07         	add	r3, sp, #0x1c
  3ccae4: 4618         	mov	r0, r3
  3ccae6: f3bd fc85    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3bd90a
  3ccaea: aa08         	add	r2, sp, #0x20
  3ccaec: ab07         	add	r3, sp, #0x1c
  3ccaee: 4610         	mov	r0, r2
  3ccaf0: 4a95         	ldr	r2, [pc, #0x254]        @ 0x3ccd48 <SAWGUN::init()+0x378>
  3ccaf2: 447a         	add	r2, pc
  3ccaf4: 4611         	mov	r1, r2
  3ccaf6: 461a         	mov	r2, r3
  3ccaf8: f3e9 ffb2    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3e9f64
  3ccafc: ab08         	add	r3, sp, #0x20
  3ccafe: 4618         	mov	r0, r3
  3ccb00: f1cc ff9c    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1ccf38
  3ccb04: 4603         	mov	r3, r0
  3ccb06: 4620         	mov	r0, r4
  3ccb08: 4619         	mov	r1, r3
  3ccb0a: f1cd fbaf    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x1cd75e
  3ccb0e: ab08         	add	r3, sp, #0x20
  3ccb10: 4618         	mov	r0, r3
  3ccb12: f3e8 feff    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e8dfe
  3ccb16: ab07         	add	r3, sp, #0x1c
  3ccb18: 4618         	mov	r0, r3
  3ccb1a: f3bd fc6f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3bd8de
  3ccb1e: 9b05         	ldr	r3, [sp, #0x14]
  3ccb20: f8d3 4150    	ldr.w	r4, [r3, #0x150]
  3ccb24: f246 6066    	movw	r0, #0x6666
  3ccb28: f6c3 7066    	movt	r0, #0x3f66
  3ccb2c: f710 f8aa    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xefeac
  3ccb30: 4603         	mov	r3, r0
  3ccb32: 4620         	mov	r0, r4
  3ccb34: 4619         	mov	r1, r3
  3ccb36: f1cd fb99    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x1cd732
  3ccb3a: 9b05         	ldr	r3, [sp, #0x14]
  3ccb3c: f8d3 414c    	ldr.w	r4, [r3, #0x14c]
  3ccb40: ab07         	add	r3, sp, #0x1c
  3ccb42: 4618         	mov	r0, r3
  3ccb44: f3bd fc56    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3bd8ac
  3ccb48: aa08         	add	r2, sp, #0x20
  3ccb4a: ab07         	add	r3, sp, #0x1c
  3ccb4c: 4610         	mov	r0, r2
  3ccb4e: 4a7f         	ldr	r2, [pc, #0x1fc]        @ 0x3ccd4c <SAWGUN::init()+0x37c>
  3ccb50: 447a         	add	r2, pc
  3ccb52: 4611         	mov	r1, r2
  3ccb54: 461a         	mov	r2, r3
  3ccb56: f3e9 ff83    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3e9f06
  3ccb5a: ab08         	add	r3, sp, #0x20
  3ccb5c: 4618         	mov	r0, r3
  3ccb5e: f1cc ff6d    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1cceda
  3ccb62: 4603         	mov	r3, r0
  3ccb64: 4620         	mov	r0, r4
  3ccb66: 4619         	mov	r1, r3
  3ccb68: f1cd fb80    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x1cd700
  3ccb6c: ab08         	add	r3, sp, #0x20
  3ccb6e: 4618         	mov	r0, r3
  3ccb70: f3e8 fed0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e8da0
  3ccb74: ab07         	add	r3, sp, #0x1c
  3ccb76: 4618         	mov	r0, r3
  3ccb78: f3bd fc40    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3bd880
  3ccb7c: 9b05         	ldr	r3, [sp, #0x14]
  3ccb7e: f8d3 4150    	ldr.w	r4, [r3, #0x150]
  3ccb82: f243 3033    	movw	r0, #0x3333
  3ccb86: f6c3 7033    	movt	r0, #0x3f33
  3ccb8a: f710 f87b    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xeff0a
  3ccb8e: 4603         	mov	r3, r0
  3ccb90: 4620         	mov	r0, r4
  3ccb92: 4619         	mov	r1, r3
  3ccb94: f1cd fb6a    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x1cd6d4
  3ccb98: 9b05         	ldr	r3, [sp, #0x14]
  3ccb9a: f8d3 414c    	ldr.w	r4, [r3, #0x14c]
  3ccb9e: ab07         	add	r3, sp, #0x1c
  3ccba0: 4618         	mov	r0, r3
  3ccba2: f3bd fc27    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3bd84e
  3ccba6: aa08         	add	r2, sp, #0x20
  3ccba8: ab07         	add	r3, sp, #0x1c
  3ccbaa: 4610         	mov	r0, r2
  3ccbac: 4a68         	ldr	r2, [pc, #0x1a0]        @ 0x3ccd50 <SAWGUN::init()+0x380>
  3ccbae: 447a         	add	r2, pc
  3ccbb0: 4611         	mov	r1, r2
  3ccbb2: 461a         	mov	r2, r3
  3ccbb4: f3e9 ff54    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3e9ea8
  3ccbb8: ab08         	add	r3, sp, #0x20
  3ccbba: 4618         	mov	r0, r3
  3ccbbc: f1cc ff3e    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1cce7c
  3ccbc0: 4603         	mov	r3, r0
  3ccbc2: 4620         	mov	r0, r4
  3ccbc4: 4619         	mov	r1, r3
  3ccbc6: f1cd fb51    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x1cd6a2
  3ccbca: ab08         	add	r3, sp, #0x20
  3ccbcc: 4618         	mov	r0, r3
  3ccbce: f3e8 fea1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e8d42
  3ccbd2: ab07         	add	r3, sp, #0x1c
  3ccbd4: 4618         	mov	r0, r3
  3ccbd6: f3bd fc11    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3bd822
  3ccbda: 9b05         	ldr	r3, [sp, #0x14]
  3ccbdc: 2200         	movs	r2, #0x0
  3ccbde: f8c3 2144    	str.w	r2, [r3, #0x144]
  3ccbe2: 9b05         	ldr	r3, [sp, #0x14]
  3ccbe4: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3ccbe8: 4618         	mov	r0, r3
  3ccbea: 2100         	movs	r1, #0x0
  3ccbec: f1cd fa98    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1cd530
  3ccbf0: 4603         	mov	r3, r0
  3ccbf2: 4618         	mov	r0, r3
  3ccbf4: f710 f83e    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0xeff84
  3ccbf8: 4602         	mov	r2, r0
  3ccbfa: 9b05         	ldr	r3, [sp, #0x14]
  3ccbfc: f8c3 2148    	str.w	r2, [r3, #0x148]
  3ccc00: 9b05         	ldr	r3, [sp, #0x14]
  3ccc02: 2200         	movs	r2, #0x0
  3ccc04: f883 21f4    	strb.w	r2, [r3, #0x1f4]
  3ccc08: 9b05         	ldr	r3, [sp, #0x14]
  3ccc0a: f04f 0200    	mov.w	r2, #0x0
  3ccc0e: f8c3 21f8    	str.w	r2, [r3, #0x1f8]
  3ccc12: 9b05         	ldr	r3, [sp, #0x14]
  3ccc14: f04f 0200    	mov.w	r2, #0x0
  3ccc18: f8c3 21fc    	str.w	r2, [r3, #0x1fc]
  3ccc1c: 9b05         	ldr	r3, [sp, #0x14]
  3ccc1e: f04f 527e    	mov.w	r2, #0x3f800000
  3ccc22: f8c3 215c    	str.w	r2, [r3, #0x15c]
  3ccc26: 9b05         	ldr	r3, [sp, #0x14]
  3ccc28: f04f 0200    	mov.w	r2, #0x0
  3ccc2c: f2c4 0220    	movt	r2, #0x4020
  3ccc30: f8c3 2160    	str.w	r2, [r3, #0x160]
  3ccc34: 9b05         	ldr	r3, [sp, #0x14]
  3ccc36: f04f 0200    	mov.w	r2, #0x0
  3ccc3a: f8c3 2164    	str.w	r2, [r3, #0x164]
  3ccc3e: 9b05         	ldr	r3, [sp, #0x14]
  3ccc40: f04f 0200    	mov.w	r2, #0x0
  3ccc44: f2c4 0240    	movt	r2, #0x4040
  3ccc48: f8c3 216c    	str.w	r2, [r3, #0x16c]
  3ccc4c: 9b05         	ldr	r3, [sp, #0x14]
  3ccc4e: 2206         	movs	r2, #0x6
  3ccc50: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  3ccc54: 9b05         	ldr	r3, [sp, #0x14]
  3ccc56: 2201         	movs	r2, #0x1
  3ccc58: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  3ccc5c: 9b05         	ldr	r3, [sp, #0x14]
  3ccc5e: 225a         	movs	r2, #0x5a
  3ccc60: f8c3 218c    	str.w	r2, [r3, #0x18c]
  3ccc64: 9b05         	ldr	r3, [sp, #0x14]
  3ccc66: 2200         	movs	r2, #0x0
  3ccc68: f883 2181    	strb.w	r2, [r3, #0x181]
  3ccc6c: 9b05         	ldr	r3, [sp, #0x14]
  3ccc6e: 2219         	movs	r2, #0x19
  3ccc70: f8c3 2188    	str.w	r2, [r3, #0x188]
  3ccc74: 9b05         	ldr	r3, [sp, #0x14]
  3ccc76: 2228         	movs	r2, #0x28
  3ccc78: f8c3 219c    	str.w	r2, [r3, #0x19c]
  3ccc7c: 9b05         	ldr	r3, [sp, #0x14]
  3ccc7e: 2232         	movs	r2, #0x32
  3ccc80: f8c3 21a0    	str.w	r2, [r3, #0x1a0]
  3ccc84: 4b33         	ldr	r3, [pc, #0xcc]         @ 0x3ccd54 <SAWGUN::init()+0x384>
  3ccc86: 447b         	add	r3, pc
  3ccc88: 681a         	ldr	r2, [r3]
  3ccc8a: 9b05         	ldr	r3, [sp, #0x14]
  3ccc8c: f8c3 21a4    	str.w	r2, [r3, #0x1a4]
  3ccc90: 9b05         	ldr	r3, [sp, #0x14]
  3ccc92: 2201         	movs	r2, #0x1
  3ccc94: f8c3 21b4    	str.w	r2, [r3, #0x1b4]
  3ccc98: 9b05         	ldr	r3, [sp, #0x14]
  3ccc9a: f649 129a    	movw	r2, #0x999a
  3ccc9e: f6c3 7259    	movt	r2, #0x3f59
  3ccca2: f8c3 21cc    	str.w	r2, [r3, #0x1cc]
  3ccca6: 9b05         	ldr	r3, [sp, #0x14]
  3ccca8: f44f 72fa    	mov.w	r2, #0x1f4
  3cccac: f8c3 21bc    	str.w	r2, [r3, #0x1bc]
  3cccb0: 9b05         	ldr	r3, [sp, #0x14]
  3cccb2: 2201         	movs	r2, #0x1
  3cccb4: f8c3 2170    	str.w	r2, [r3, #0x170]
  3cccb8: 9b05         	ldr	r3, [sp, #0x14]
  3cccba: 220c         	movs	r2, #0xc
  3cccbc: f8c3 2174    	str.w	r2, [r3, #0x174]
  3cccc0: 9c05         	ldr	r4, [sp, #0x14]
  3cccc2: 466b         	mov	r3, sp
  3cccc4: 4618         	mov	r0, r3
  3cccc6: ed9f 0b1c    	vldr	d0, [pc, #112]          @ 0x3ccd38 <SAWGUN::init()+0x368>
  3cccca: eeb2 1b0e    	vmov.f64	d1, #1.500000e+01
  3cccce: f7fe ff93    	bl	0x3cbbf8 <SAW::detonate(cocos2d::CCObject*)+0x1c8> @ imm = #-0x10da
  3cccd2: f504 74ec    	add.w	r4, r4, #0x1d8
  3cccd6: 466b         	mov	r3, sp
  3cccd8: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3cccda: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3cccde: 4b1e         	ldr	r3, [pc, #0x78]         @ 0x3ccd58 <SAWGUN::init()+0x388>
  3ccce0: 447b         	add	r3, pc
  3ccce2: 681a         	ldr	r2, [r3]
  3ccce4: 9b05         	ldr	r3, [sp, #0x14]
  3ccce6: f8c3 2198    	str.w	r2, [r3, #0x198]
  3cccea: 2301         	movs	r3, #0x1
  3cccec: e020         	b	0x3ccd30 <SAWGUN::init()+0x360> @ imm = #0x40
  3cccee: ab08         	add	r3, sp, #0x20
  3cccf0: 4618         	mov	r0, r3
  3cccf2: f3e8 fe0f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e8c1e
  3cccf6: e7ff         	b	0x3cccf8 <SAWGUN::init()+0x328> @ imm = #-0x2
  3cccf8: ab07         	add	r3, sp, #0x1c
  3cccfa: 4618         	mov	r0, r3
  3cccfc: f3bd fb7e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3bd6fc
  3ccd00: f3bb f9d4    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3bb3a8
  3ccd04: ab08         	add	r3, sp, #0x20
  3ccd06: 4618         	mov	r0, r3
  3ccd08: f3e8 fe04    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e8c08
  3ccd0c: e7ff         	b	0x3ccd0e <SAWGUN::init()+0x33e> @ imm = #-0x2
  3ccd0e: ab07         	add	r3, sp, #0x1c
  3ccd10: 4618         	mov	r0, r3
  3ccd12: f3bd fb73    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3bd6e6
  3ccd16: f3bb f9c9    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3bb392
  3ccd1a: ab08         	add	r3, sp, #0x20
  3ccd1c: 4618         	mov	r0, r3
  3ccd1e: f3e8 fdf9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e8bf2
  3ccd22: e7ff         	b	0x3ccd24 <SAWGUN::init()+0x354> @ imm = #-0x2
  3ccd24: ab07         	add	r3, sp, #0x1c
  3ccd26: 4618         	mov	r0, r3
  3ccd28: f3bd fb68    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3bd6d0
  3ccd2c: f3bb f9be    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3bb37c
  3ccd30: 4618         	mov	r0, r3
  3ccd32: b00b         	add	sp, #0x2c
  3ccd34: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3ccd35); words below are literal-pool data ---
  3ccd36: bf00         	nop
  3ccd38: 0000         	movs	r0, r0
  3ccd3a: 0000         	movs	r0, r0
  3ccd3c: 0000         	movs	r0, r0
  3ccd3e: 4054         	eors	r4, r2
  3ccd40: a114         	adr	r1, #80 <SAWGUN::init()+0x388>
  3ccd42: 0040         	lsls	r0, r0, #0x1
  3ccd44: a102         	adr	r1, #8 <SAWGUN::init()+0x37a>
  3ccd46: 0040         	lsls	r0, r0, #0x1
  3ccd48: a03a         	adr	r0, #232 <SAWGUN::~SAWGUN()+0x26>
  3ccd4a: 0040         	lsls	r0, r0, #0x1
  3ccd4c: 9fe0         	ldr	r7, [sp, #0x380]
  3ccd4e: 0040         	lsls	r0, r0, #0x1
  3ccd50: 9f86         	ldr	r7, [sp, #0x218]
  3ccd52: 0040         	lsls	r0, r0, #0x1
  3ccd54: 698a         	ldr	r2, [r1, #0x18]
  3ccd56: 0056         	lsls	r6, r2, #0x1
  3ccd58: 692c         	ldr	r4, [r5, #0x10]
  3ccd5a: 0056         	lsls	r6, r2, #0x1

// ==== SAWGUN::~SAWGUN
//      file offset 0x3ccd60 (= ELF address; Ghidra 0x3dcd60), 116 bytes, Thumb-2
  3ccd60: b500         	push	{lr}
  3ccd62: b083         	sub	sp, #0xc
  3ccd64: 9001         	str	r0, [sp, #0x4]
  3ccd66: 4919         	ldr	r1, [pc, #0x64]         @ 0x3ccdcc <SAWGUN::~SAWGUN()+0x6c>
  3ccd68: 4479         	add	r1, pc
  3ccd6a: 9b01         	ldr	r3, [sp, #0x4]
  3ccd6c: 4a18         	ldr	r2, [pc, #0x60]         @ 0x3ccdd0 <SAWGUN::~SAWGUN()+0x70>
  3ccd6e: 588a         	ldr	r2, [r1, r2]
  3ccd70: 3208         	adds	r2, #0x8
  3ccd72: 601a         	str	r2, [r3]
  3ccd74: 9b01         	ldr	r3, [sp, #0x4]
  3ccd76: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3ccd7a: 681b         	ldr	r3, [r3]
  3ccd7c: f503 7380    	add.w	r3, r3, #0x100
  3ccd80: 681b         	ldr	r3, [r3]
  3ccd82: 9a01         	ldr	r2, [sp, #0x4]
  3ccd84: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3ccd88: 4610         	mov	r0, r2
  3ccd8a: 4798         	blx	r3
  3ccd8c: 9b01         	ldr	r3, [sp, #0x4]
  3ccd8e: 4618         	mov	r0, r3
  3ccd90: f1c3 fc4c    	bl	0x59062c <cocos2d::CCNode::removeAllChildren()> @ imm = #0x1c3898
  3ccd94: 9b01         	ldr	r3, [sp, #0x4]
  3ccd96: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3ccd9a: 4618         	mov	r0, r3
  3ccd9c: f1cb f88c    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1cb118
  3ccda0: 9b01         	ldr	r3, [sp, #0x4]
  3ccda2: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3ccda6: 4618         	mov	r0, r3
  3ccda8: f1cb f886    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1cb10c
  3ccdac: 9b01         	ldr	r3, [sp, #0x4]
  3ccdae: 4618         	mov	r0, r3
  3ccdb0: f048 fa1e    	bl	0x4151f0 <Weapon::~Weapon()> @ imm = #0x4843c
  3ccdb4: 2300         	movs	r3, #0x0
  3ccdb6: 2b00         	cmp	r3, #0x0
  3ccdb8: d002         	beq	0x3ccdc0 <SAWGUN::~SAWGUN()+0x60> @ imm = #0x4
  3ccdba: 9801         	ldr	r0, [sp, #0x4]
  3ccdbc: f3bb f972    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3bb2e4
  3ccdc0: 9b01         	ldr	r3, [sp, #0x4]
  3ccdc2: 4618         	mov	r0, r3
  3ccdc4: b003         	add	sp, #0xc
  3ccdc6: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3ccdc9); words below are literal-pool data ---
  3ccdca: bf00         	nop
  3ccdcc: 5ca0         	ldrb	r0, [r4, r2]
  3ccdce: 0056         	lsls	r6, r2, #0x1
  3ccdd0: de90         	udf	#0x90
  3ccdd2: ffff b500    	<unknown>

// ==== SAWGUN::~SAWGUN
//      file offset 0x3ccdd4 (= ELF address; Ghidra 0x3dcdd4), 28 bytes, Thumb-2
  3ccdd4: b500         	push	{lr}
  3ccdd6: b083         	sub	sp, #0xc
  3ccdd8: 9001         	str	r0, [sp, #0x4]
  3ccdda: 9801         	ldr	r0, [sp, #0x4]
  3ccddc: f7ff ffc0    	bl	0x3ccd60 <SAWGUN::~SAWGUN()> @ imm = #-0x80
  3ccde0: 9801         	ldr	r0, [sp, #0x4]
  3ccde2: f3bb f95f    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3bb2be
  3ccde6: 9b01         	ldr	r3, [sp, #0x4]
  3ccde8: 4618         	mov	r0, r3
  3ccdea: b003         	add	sp, #0xc
  3ccdec: f85d fb04    	ldr	pc, [sp], #4

// ==== SAWGUN::triggerPull
//      file offset 0x3ccdf0 (= ELF address; Ghidra 0x3dcdf0), 572 bytes, Thumb-2
  3ccdf0: b570         	push	{r4, r5, r6, lr}
  3ccdf2: b088         	sub	sp, #0x20
  3ccdf4: 9003         	str	r0, [sp, #0xc]
  3ccdf6: 9102         	str	r1, [sp, #0x8]
  3ccdf8: 4c8a         	ldr	r4, [pc, #0x228]        @ 0x3cd024 <SAWGUN::triggerPull(float)+0x234>
  3ccdfa: 447c         	add	r4, pc
  3ccdfc: 9b03         	ldr	r3, [sp, #0xc]
  3ccdfe: 2201         	movs	r2, #0x1
  3cce00: f883 21f4    	strb.w	r2, [r3, #0x1f4]
  3cce04: 9b03         	ldr	r3, [sp, #0xc]
  3cce06: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  3cce0a: b21b         	sxth	r3, r3
  3cce0c: 2b00         	cmp	r3, #0x0
  3cce0e: dd0f         	ble	0x3cce30 <SAWGUN::triggerPull(float)+0x40> @ imm = #0x1e
  3cce10: 9b03         	ldr	r3, [sp, #0xc]
  3cce12: 681b         	ldr	r3, [r3]
  3cce14: f503 7333    	add.w	r3, r3, #0x2cc
  3cce18: 681b         	ldr	r3, [r3]
  3cce1a: 9a03         	ldr	r2, [sp, #0xc]
  3cce1c: 4610         	mov	r0, r2
  3cce1e: 4798         	blx	r3
  3cce20: 4603         	mov	r3, r0
  3cce22: f083 0301    	eor	r3, r3, #0x1
  3cce26: b2db         	uxtb	r3, r3
  3cce28: 2b00         	cmp	r3, #0x0
  3cce2a: d001         	beq	0x3cce30 <SAWGUN::triggerPull(float)+0x40> @ imm = #0x2
  3cce2c: 2301         	movs	r3, #0x1
  3cce2e: e000         	b	0x3cce32 <SAWGUN::triggerPull(float)+0x42> @ imm = #0x0
  3cce30: 2300         	movs	r3, #0x0
  3cce32: 2b00         	cmp	r3, #0x0
  3cce34: d04c         	beq	0x3cced0 <SAWGUN::triggerPull(float)+0xe0> @ imm = #0x98
  3cce36: 9b03         	ldr	r3, [sp, #0xc]
  3cce38: f893 3195    	ldrb.w	r3, [r3, #0x195]
  3cce3c: 3301         	adds	r3, #0x1
  3cce3e: b2da         	uxtb	r2, r3
  3cce40: 9b03         	ldr	r3, [sp, #0xc]
  3cce42: f883 2195    	strb.w	r2, [r3, #0x195]
  3cce46: 9b03         	ldr	r3, [sp, #0xc]
  3cce48: ed93 7a7f    	vldr	s14, [r3, #508]
  3cce4c: eddd 7a02    	vldr	s15, [sp, #8]
  3cce50: ee77 7a27    	vadd.f32	s15, s14, s15
  3cce54: 9b03         	ldr	r3, [sp, #0xc]
  3cce56: edc3 7a7f    	vstr	s15, [r3, #508]
  3cce5a: 9b03         	ldr	r3, [sp, #0xc]
  3cce5c: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3cce60: 681b         	ldr	r3, [r3]
  3cce62: 3398         	adds	r3, #0x98
  3cce64: 681d         	ldr	r5, [r3]
  3cce66: 9b03         	ldr	r3, [sp, #0xc]
  3cce68: f8d3 61f0    	ldr.w	r6, [r3, #0x1f0]
  3cce6c: 9b03         	ldr	r3, [sp, #0xc]
  3cce6e: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3cce72: 681b         	ldr	r3, [r3]
  3cce74: 339c         	adds	r3, #0x9c
  3cce76: 681b         	ldr	r3, [r3]
  3cce78: 9a03         	ldr	r2, [sp, #0xc]
  3cce7a: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  3cce7e: 4610         	mov	r0, r2
  3cce80: 4798         	blx	r3
  3cce82: ee06 0a90    	vmov	s13, r0
  3cce86: ed9d 7a02    	vldr	s14, [sp, #8]
  3cce8a: eddf 7a65    	vldr	s15, [pc, #404]         @ 0x3cd020 <SAWGUN::triggerPull(float)+0x230>
  3cce8e: ee67 7a27    	vmul.f32	s15, s14, s15
  3cce92: ee76 7ae7    	vsub.f32	s15, s13, s15
  3cce96: 4630         	mov	r0, r6
  3cce98: ee17 1a90    	vmov	r1, s15
  3cce9c: 47a8         	blx	r5
  3cce9e: 9b03         	ldr	r3, [sp, #0xc]
  3ccea0: edd3 7a7f    	vldr	s15, [r3, #508]
  3ccea4: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3ccea8: ed9f 7b5b    	vldr	d7, [pc, #364]          @ 0x3cd018 <SAWGUN::triggerPull(float)+0x228>
  3cceac: eeb4 6bc7    	vcmpe.f64	d6, d7
  3cceb0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3cceb4: dd1d         	ble	0x3ccef2 <SAWGUN::triggerPull(float)+0x102> @ imm = #0x3a
  3cceb6: 9b03         	ldr	r3, [sp, #0xc]
  3cceb8: 681b         	ldr	r3, [r3]
  3cceba: f503 7325    	add.w	r3, r3, #0x294
  3ccebe: 681b         	ldr	r3, [r3]
  3ccec0: 9803         	ldr	r0, [sp, #0xc]
  3ccec2: 4798         	blx	r3
  3ccec4: 9b03         	ldr	r3, [sp, #0xc]
  3ccec6: f04f 0200    	mov.w	r2, #0x0
  3cceca: f8c3 21fc    	str.w	r2, [r3, #0x1fc]
  3ccece: e010         	b	0x3ccef2 <SAWGUN::triggerPull(float)+0x102> @ imm = #0x20
  3cced0: 9b03         	ldr	r3, [sp, #0xc]
  3cced2: f04f 0200    	mov.w	r2, #0x0
  3cced6: f8c3 2110    	str.w	r2, [r3, #0x110]
  3cceda: 9b03         	ldr	r3, [sp, #0xc]
  3ccedc: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3ccee0: 681b         	ldr	r3, [r3]
  3ccee2: 3390         	adds	r3, #0x90
  3ccee4: 681b         	ldr	r3, [r3]
  3ccee6: 9a03         	ldr	r2, [sp, #0xc]
  3ccee8: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  3cceec: 4610         	mov	r0, r2
  3cceee: 2100         	movs	r1, #0x0
  3ccef0: 4798         	blx	r3
  3ccef2: 9b03         	ldr	r3, [sp, #0xc]
  3ccef4: ed93 7a44    	vldr	s14, [r3, #272]
  3ccef8: 9b03         	ldr	r3, [sp, #0xc]
  3ccefa: edd3 7a57    	vldr	s15, [r3, #348]
  3ccefe: eeb4 7ae7    	vcmpe.f32	s14, s15
  3ccf02: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3ccf06: dd5e         	ble	0x3ccfc6 <SAWGUN::triggerPull(float)+0x1d6> @ imm = #0xbc
  3ccf08: 9b03         	ldr	r3, [sp, #0xc]
  3ccf0a: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  3ccf0e: b21b         	sxth	r3, r3
  3ccf10: 2b00         	cmp	r3, #0x0
  3ccf12: dd0f         	ble	0x3ccf34 <SAWGUN::triggerPull(float)+0x144> @ imm = #0x1e
  3ccf14: 9b03         	ldr	r3, [sp, #0xc]
  3ccf16: 681b         	ldr	r3, [r3]
  3ccf18: f503 7333    	add.w	r3, r3, #0x2cc
  3ccf1c: 681b         	ldr	r3, [r3]
  3ccf1e: 9a03         	ldr	r2, [sp, #0xc]
  3ccf20: 4610         	mov	r0, r2
  3ccf22: 4798         	blx	r3
  3ccf24: 4603         	mov	r3, r0
  3ccf26: f083 0301    	eor	r3, r3, #0x1
  3ccf2a: b2db         	uxtb	r3, r3
  3ccf2c: 2b00         	cmp	r3, #0x0
  3ccf2e: d001         	beq	0x3ccf34 <SAWGUN::triggerPull(float)+0x144> @ imm = #0x2
  3ccf30: 2301         	movs	r3, #0x1
  3ccf32: e000         	b	0x3ccf36 <SAWGUN::triggerPull(float)+0x146> @ imm = #0x0
  3ccf34: 2300         	movs	r3, #0x0
  3ccf36: 2b00         	cmp	r3, #0x0
  3ccf38: d019         	beq	0x3ccf6e <SAWGUN::triggerPull(float)+0x17e> @ imm = #0x32
  3ccf3a: 9b03         	ldr	r3, [sp, #0xc]
  3ccf3c: 681b         	ldr	r3, [r3]
  3ccf3e: f503 7342    	add.w	r3, r3, #0x308
  3ccf42: 681b         	ldr	r3, [r3]
  3ccf44: 9a03         	ldr	r2, [sp, #0xc]
  3ccf46: 4610         	mov	r0, r2
  3ccf48: 4798         	blx	r3
  3ccf4a: 9b03         	ldr	r3, [sp, #0xc]
  3ccf4c: f893 3195    	ldrb.w	r3, [r3, #0x195]
  3ccf50: 3301         	adds	r3, #0x1
  3ccf52: b2da         	uxtb	r2, r3
  3ccf54: 9b03         	ldr	r3, [sp, #0xc]
  3ccf56: f883 2195    	strb.w	r2, [r3, #0x195]
  3ccf5a: 9b03         	ldr	r3, [sp, #0xc]
  3ccf5c: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  3ccf60: b29b         	uxth	r3, r3
  3ccf62: 3b00         	subs	r3, #0x0
  3ccf64: b29a         	uxth	r2, r3
  3ccf66: 9b03         	ldr	r3, [sp, #0xc]
  3ccf68: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  3ccf6c: e026         	b	0x3ccfbc <SAWGUN::triggerPull(float)+0x1cc> @ imm = #0x4c
  3ccf6e: 9b03         	ldr	r3, [sp, #0xc]
  3ccf70: 681b         	ldr	r3, [r3]
  3ccf72: f503 7333    	add.w	r3, r3, #0x2cc
  3ccf76: 681b         	ldr	r3, [r3]
  3ccf78: 9a03         	ldr	r2, [sp, #0xc]
  3ccf7a: 4610         	mov	r0, r2
  3ccf7c: 4798         	blx	r3
  3ccf7e: 4603         	mov	r3, r0
  3ccf80: f083 0301    	eor	r3, r3, #0x1
  3ccf84: b2db         	uxtb	r3, r3
  3ccf86: 2b00         	cmp	r3, #0x0
  3ccf88: d018         	beq	0x3ccfbc <SAWGUN::triggerPull(float)+0x1cc> @ imm = #0x30
  3ccf8a: 4b27         	ldr	r3, [pc, #0x9c]         @ 0x3cd028 <SAWGUN::triggerPull(float)+0x238>
  3ccf8c: 58e3         	ldr	r3, [r4, r3]
  3ccf8e: 681c         	ldr	r4, [r3]
  3ccf90: 9b03         	ldr	r3, [sp, #0xc]
  3ccf92: 681b         	ldr	r3, [r3]
  3ccf94: f503 7348    	add.w	r3, r3, #0x320
  3ccf98: 681b         	ldr	r3, [r3]
  3ccf9a: 9a03         	ldr	r2, [sp, #0xc]
  3ccf9c: a904         	add	r1, sp, #0x10
  3ccf9e: 4608         	mov	r0, r1
  3ccfa0: 4611         	mov	r1, r2
  3ccfa2: 4798         	blx	r3
  3ccfa4: 466b         	mov	r3, sp
  3ccfa6: aa06         	add	r2, sp, #0x18
  3ccfa8: e892 0003    	ldm.w	r2, {r0, r1}
  3ccfac: e883 0003    	stm.w	r3, {r0, r1}
  3ccfb0: ab04         	add	r3, sp, #0x10
  3ccfb2: cb0c         	ldm	r3, {r2, r3}
  3ccfb4: 4620         	mov	r0, r4
  3ccfb6: 2100         	movs	r1, #0x0
  3ccfb8: f02b f81e    	bl	0x3f7ff8 <Sound::playSoundPosition(int, cpVect)> @ imm = #0x2b03c
  3ccfbc: 9b03         	ldr	r3, [sp, #0xc]
  3ccfbe: f04f 0200    	mov.w	r2, #0x0
  3ccfc2: f8c3 2110    	str.w	r2, [r3, #0x110]
  3ccfc6: 9b03         	ldr	r3, [sp, #0xc]
  3ccfc8: 681b         	ldr	r3, [r3]
  3ccfca: f503 7333    	add.w	r3, r3, #0x2cc
  3ccfce: 681b         	ldr	r3, [r3]
  3ccfd0: 9a03         	ldr	r2, [sp, #0xc]
  3ccfd2: 4610         	mov	r0, r2
  3ccfd4: 4798         	blx	r3
  3ccfd6: 4603         	mov	r3, r0
  3ccfd8: f083 0301    	eor	r3, r3, #0x1
  3ccfdc: b2db         	uxtb	r3, r3
  3ccfde: 2b00         	cmp	r3, #0x0
  3ccfe0: d00c         	beq	0x3ccffc <SAWGUN::triggerPull(float)+0x20c> @ imm = #0x18
  3ccfe2: 9b03         	ldr	r3, [sp, #0xc]
  3ccfe4: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  3ccfe8: 2b00         	cmp	r3, #0x0
  3ccfea: d107         	bne	0x3ccffc <SAWGUN::triggerPull(float)+0x20c> @ imm = #0xe
  3ccfec: 9b03         	ldr	r3, [sp, #0xc]
  3ccfee: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  3ccff2: b21b         	sxth	r3, r3
  3ccff4: 2b00         	cmp	r3, #0x0
  3ccff6: dd01         	ble	0x3ccffc <SAWGUN::triggerPull(float)+0x20c> @ imm = #0x2
  3ccff8: 2301         	movs	r3, #0x1
  3ccffa: e000         	b	0x3ccffe <SAWGUN::triggerPull(float)+0x20e> @ imm = #0x0
  3ccffc: 2300         	movs	r3, #0x0
  3ccffe: 2b00         	cmp	r3, #0x0
  3cd000: d008         	beq	0x3cd014 <SAWGUN::triggerPull(float)+0x224> @ imm = #0x10
  3cd002: 9b03         	ldr	r3, [sp, #0xc]
  3cd004: 2201         	movs	r2, #0x1
  3cd006: f883 2181    	strb.w	r2, [r3, #0x181]
  3cd00a: 9b03         	ldr	r3, [sp, #0xc]
  3cd00c: f04f 0200    	mov.w	r2, #0x0
  3cd010: f8c3 2158    	str.w	r2, [r3, #0x158]
  3cd014: b008         	add	sp, #0x20
  3cd016: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3cd017); words below are literal-pool data ---
  3cd018: 999a         	ldr	r1, [sp, #0x268]
  3cd01a: 9999         	ldr	r1, [sp, #0x264]
  3cd01c: 9999         	ldr	r1, [sp, #0x264]
  3cd01e: 3fd9         	subs	r7, #0xd9
  3cd020: 0000         	movs	r0, r0
  3cd022: 43fa         	mvns	r2, r7
  3cd024: 5c0e         	ldrb	r6, [r1, r0]
  3cd026: 0056         	lsls	r6, r2, #0x1
  3cd028: d730         	bvc	0x3cd08c <SAWGUN::doFire(float, cpVect, cpVect, int, std::string)+0x5c> @ imm = #0x60
  3cd02a: ffff f3af    	<unknown>

// ==== SAWGUN::doFire
//      file offset 0x3cd030 (= ELF address; Ghidra 0x3dd030), 184 bytes, Thumb-2
  3cd030: b082         	sub	sp, #0x8
  3cd032: e92d 47f0    	push.w	{r4, r5, r6, r7, r8, r9, r10, lr}
  3cd036: b08a         	sub	sp, #0x28
  3cd038: 9007         	str	r0, [sp, #0x1c]
  3cd03a: 9106         	str	r1, [sp, #0x18]
  3cd03c: a912         	add	r1, sp, #0x48
  3cd03e: e881 000c    	stm.w	r1, {r2, r3}
  3cd042: 9f07         	ldr	r7, [sp, #0x1c]
  3cd044: 9806         	ldr	r0, [sp, #0x18]
  3cd046: f70f fe1d    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xf03c6
  3cd04a: 4606         	mov	r6, r0
  3cd04c: ed9d 7b16    	vldr	d7, [sp, #88]
  3cd050: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3cd054: ee17 0a90    	vmov	r0, s15
  3cd058: f70f fe14    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xf03d8
  3cd05c: 4605         	mov	r5, r0
  3cd05e: ed9d 7b18    	vldr	d7, [sp, #96]
  3cd062: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3cd066: ee17 0a90    	vmov	r0, s15
  3cd06a: f70f fe0b    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xf03ea
  3cd06e: 4604         	mov	r4, r0
  3cd070: ed9d 7b12    	vldr	d7, [sp, #72]
  3cd074: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3cd078: ee17 0a90    	vmov	r0, s15
  3cd07c: f70f fe02    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xf03fc
  3cd080: 4682         	mov	r10, r0
  3cd082: ed9d 7b14    	vldr	d7, [sp, #80]
  3cd086: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3cd08a: ee17 0a90    	vmov	r0, s15
  3cd08e: f70f fdf9    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xf040e
  3cd092: 4681         	mov	r9, r0
  3cd094: 981a         	ldr	r0, [sp, #0x68]
  3cd096: f717 fe37    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xe8392
  3cd09a: 4680         	mov	r8, r0
  3cd09c: 981b         	ldr	r0, [sp, #0x6c]
  3cd09e: f1cc fccd    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1cc99a
  3cd0a2: 4603         	mov	r3, r0
  3cd0a4: f8cd a000    	str.w	r10, [sp]
  3cd0a8: f8cd 9004    	str.w	r9, [sp, #0x4]
  3cd0ac: f8cd 8008    	str.w	r8, [sp, #0x8]
  3cd0b0: 9303         	str	r3, [sp, #0xc]
  3cd0b2: 2300         	movs	r3, #0x0
  3cd0b4: 9304         	str	r3, [sp, #0x10]
  3cd0b6: 4638         	mov	r0, r7
  3cd0b8: 4631         	mov	r1, r6
  3cd0ba: 462a         	mov	r2, r5
  3cd0bc: 4623         	mov	r3, r4
  3cd0be: f1cc fea7    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x1ccd4e
  3cd0c2: 4603         	mov	r3, r0
  3cd0c4: 9309         	str	r3, [sp, #0x24]
  3cd0c6: f213 faf3    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2135e6
  3cd0ca: 4603         	mov	r3, r0
  3cd0cc: 4618         	mov	r0, r3
  3cd0ce: 4b05         	ldr	r3, [pc, #0x14]         @ 0x3cd0e4 <SAWGUN::doFire(float, cpVect, cpVect, int, std::string)+0xb4>
  3cd0d0: 447b         	add	r3, pc
  3cd0d2: 4619         	mov	r1, r3
  3cd0d4: 9a09         	ldr	r2, [sp, #0x24]
  3cd0d6: f213 fd29    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x213a52
  3cd0da: b00a         	add	sp, #0x28
  3cd0dc: e8bd 47f0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, lr}
  3cd0e0: b002         	add	sp, #0x8
  3cd0e2: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x3cd0e3); words below are literal-pool data ---
  3cd0e4: 9a68         	ldr	r2, [sp, #0x1a0]
  3cd0e6: 0040         	lsls	r0, r0, #0x1

// ==== SAWGUN::updateFlames
//      file offset 0x3cd0e8 (= ELF address; Ghidra 0x3dd0e8), 10 bytes, Thumb-2
  3cd0e8: b082         	sub	sp, #0x8
  3cd0ea: 9001         	str	r0, [sp, #0x4]
  3cd0ec: 9100         	str	r1, [sp]
  3cd0ee: b002         	add	sp, #0x8
  3cd0f0: 4770         	bx	lr

// ==== SAWGUN::updateItemStep
//      file offset 0x3cd0f4 (= ELF address; Ghidra 0x3dd0f4), 334 bytes, Thumb-2
  3cd0f4: b500         	push	{lr}
  3cd0f6: ed2d 8b02    	vpush	{d8}
  3cd0fa: b085         	sub	sp, #0x14
  3cd0fc: 9001         	str	r0, [sp, #0x4]
  3cd0fe: 9100         	str	r1, [sp]
  3cd100: 9b01         	ldr	r3, [sp, #0x4]
  3cd102: ed93 7a56    	vldr	s14, [r3, #344]
  3cd106: eddd 7a00    	vldr	s15, [sp]
  3cd10a: ee77 7a27    	vadd.f32	s15, s14, s15
  3cd10e: 9b01         	ldr	r3, [sp, #0x4]
  3cd110: edc3 7a56    	vstr	s15, [r3, #344]
  3cd114: 9b01         	ldr	r3, [sp, #0x4]
  3cd116: f893 31f4    	ldrb.w	r3, [r3, #0x1f4]
  3cd11a: 2b00         	cmp	r3, #0x0
  3cd11c: d009         	beq	0x3cd132 <SAWGUN::updateItemStep(float)+0x3e> @ imm = #0x12
  3cd11e: 9b01         	ldr	r3, [sp, #0x4]
  3cd120: 681b         	ldr	r3, [r3]
  3cd122: f503 7315    	add.w	r3, r3, #0x254
  3cd126: 681b         	ldr	r3, [r3]
  3cd128: 9a01         	ldr	r2, [sp, #0x4]
  3cd12a: 4610         	mov	r0, r2
  3cd12c: 9900         	ldr	r1, [sp]
  3cd12e: 4798         	blx	r3
  3cd130: e009         	b	0x3cd146 <SAWGUN::updateItemStep(float)+0x52> @ imm = #0x12
  3cd132: 9b01         	ldr	r3, [sp, #0x4]
  3cd134: f04f 0200    	mov.w	r2, #0x0
  3cd138: f8c3 2110    	str.w	r2, [r3, #0x110]
  3cd13c: 9b01         	ldr	r3, [sp, #0x4]
  3cd13e: f04f 0200    	mov.w	r2, #0x0
  3cd142: f8c3 21fc    	str.w	r2, [r3, #0x1fc]
  3cd146: 9b01         	ldr	r3, [sp, #0x4]
  3cd148: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3cd14c: 681b         	ldr	r3, [r3]
  3cd14e: 3390         	adds	r3, #0x90
  3cd150: 681b         	ldr	r3, [r3]
  3cd152: 9a01         	ldr	r2, [sp, #0x4]
  3cd154: f8d2 11f0    	ldr.w	r1, [r2, #0x1f0]
  3cd158: 9a01         	ldr	r2, [sp, #0x4]
  3cd15a: f8b2 21ea    	ldrh.w	r2, [r2, #0x1ea]
  3cd15e: b212         	sxth	r2, r2
  3cd160: 2a00         	cmp	r2, #0x0
  3cd162: bfd4         	ite	le
  3cd164: 2200         	movle	r2, #0x0
  3cd166: 2201         	movgt	r2, #0x1
  3cd168: b2d2         	uxtb	r2, r2
  3cd16a: 4608         	mov	r0, r1
  3cd16c: 4611         	mov	r1, r2
  3cd16e: 4798         	blx	r3
  3cd170: 9b01         	ldr	r3, [sp, #0x4]
  3cd172: 2200         	movs	r2, #0x0
  3cd174: f883 21f4    	strb.w	r2, [r3, #0x1f4]
  3cd178: 9b01         	ldr	r3, [sp, #0x4]
  3cd17a: f893 3181    	ldrb.w	r3, [r3, #0x181]
  3cd17e: 2b00         	cmp	r3, #0x0
  3cd180: d013         	beq	0x3cd1aa <SAWGUN::updateItemStep(float)+0xb6> @ imm = #0x26
  3cd182: 9b01         	ldr	r3, [sp, #0x4]
  3cd184: ed93 8a56    	vldr	s16, [r3, #344]
  3cd188: 9b01         	ldr	r3, [sp, #0x4]
  3cd18a: 681b         	ldr	r3, [r3]
  3cd18c: f503 732e    	add.w	r3, r3, #0x2b8
  3cd190: 681b         	ldr	r3, [r3]
  3cd192: 9a01         	ldr	r2, [sp, #0x4]
  3cd194: 4610         	mov	r0, r2
  3cd196: 4798         	blx	r3
  3cd198: ee07 0a90    	vmov	s15, r0
  3cd19c: eeb4 8ae7    	vcmpe.f32	s16, s15
  3cd1a0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3cd1a4: dd01         	ble	0x3cd1aa <SAWGUN::updateItemStep(float)+0xb6> @ imm = #0x2
  3cd1a6: 2301         	movs	r3, #0x1
  3cd1a8: e000         	b	0x3cd1ac <SAWGUN::updateItemStep(float)+0xb8> @ imm = #0x0
  3cd1aa: 2300         	movs	r3, #0x0
  3cd1ac: 2b00         	cmp	r3, #0x0
  3cd1ae: d043         	beq	0x3cd238 <SAWGUN::updateItemStep(float)+0x144> @ imm = #0x86
  3cd1b0: 9b01         	ldr	r3, [sp, #0x4]
  3cd1b2: 2200         	movs	r2, #0x0
  3cd1b4: f883 2181    	strb.w	r2, [r3, #0x181]
  3cd1b8: 9b01         	ldr	r3, [sp, #0x4]
  3cd1ba: f04f 0200    	mov.w	r2, #0x0
  3cd1be: f8c3 2110    	str.w	r2, [r3, #0x110]
  3cd1c2: 9b01         	ldr	r3, [sp, #0x4]
  3cd1c4: 681b         	ldr	r3, [r3]
  3cd1c6: f503 732d    	add.w	r3, r3, #0x2b4
  3cd1ca: 681b         	ldr	r3, [r3]
  3cd1cc: 9a01         	ldr	r2, [sp, #0x4]
  3cd1ce: 4610         	mov	r0, r2
  3cd1d0: 4798         	blx	r3
  3cd1d2: 4602         	mov	r2, r0
  3cd1d4: 9b01         	ldr	r3, [sp, #0x4]
  3cd1d6: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  3cd1da: b21b         	sxth	r3, r3
  3cd1dc: 1ad3         	subs	r3, r2, r3
  3cd1de: 9303         	str	r3, [sp, #0xc]
  3cd1e0: 9b01         	ldr	r3, [sp, #0x4]
  3cd1e2: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  3cd1e6: b29a         	uxth	r2, r3
  3cd1e8: 9b03         	ldr	r3, [sp, #0xc]
  3cd1ea: b29b         	uxth	r3, r3
  3cd1ec: 1ad3         	subs	r3, r2, r3
  3cd1ee: b29b         	uxth	r3, r3
  3cd1f0: b29a         	uxth	r2, r3
  3cd1f2: 9b01         	ldr	r3, [sp, #0x4]
  3cd1f4: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  3cd1f8: 9b01         	ldr	r3, [sp, #0x4]
  3cd1fa: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  3cd1fe: b29a         	uxth	r2, r3
  3cd200: 9b03         	ldr	r3, [sp, #0xc]
  3cd202: b29b         	uxth	r3, r3
  3cd204: 4413         	add	r3, r2
  3cd206: b29a         	uxth	r2, r3
  3cd208: 9b01         	ldr	r3, [sp, #0x4]
  3cd20a: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  3cd20e: b21b         	sxth	r3, r3
  3cd210: ea03 73e3    	and.w	r3, r3, r3, asr #31
  3cd214: b29b         	uxth	r3, r3
  3cd216: b29b         	uxth	r3, r3
  3cd218: 4413         	add	r3, r2
  3cd21a: b29b         	uxth	r3, r3
  3cd21c: b29a         	uxth	r2, r3
  3cd21e: 9b01         	ldr	r3, [sp, #0x4]
  3cd220: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  3cd224: 9b01         	ldr	r3, [sp, #0x4]
  3cd226: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  3cd22a: b21b         	sxth	r3, r3
  3cd22c: ea23 73e3    	bic.w	r3, r3, r3, asr #31
  3cd230: b29a         	uxth	r2, r3
  3cd232: 9b01         	ldr	r3, [sp, #0x4]
  3cd234: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  3cd238: b005         	add	sp, #0x14
  3cd23a: ecbd 8b02    	vpop	{d8}
  3cd23e: f85d fb04    	ldr	pc, [sp], #4

// ==== SAWGUN::updateRemoteItemStep
//      file offset 0x3cd248 (= ELF address; Ghidra 0x3dd248), 232 bytes, Thumb-2
  3cd248: b500         	push	{lr}
  3cd24a: b083         	sub	sp, #0xc
  3cd24c: 9001         	str	r0, [sp, #0x4]
  3cd24e: 9100         	str	r1, [sp]
  3cd250: 9b01         	ldr	r3, [sp, #0x4]
  3cd252: ed93 7a7e    	vldr	s14, [r3, #504]
  3cd256: eddd 7a00    	vldr	s15, [sp]
  3cd25a: ee77 7a27    	vadd.f32	s15, s14, s15
  3cd25e: 9b01         	ldr	r3, [sp, #0x4]
  3cd260: edc3 7a7e    	vstr	s15, [r3, #504]
  3cd264: 9b01         	ldr	r3, [sp, #0x4]
  3cd266: f893 2194    	ldrb.w	r2, [r3, #0x194]
  3cd26a: 9b01         	ldr	r3, [sp, #0x4]
  3cd26c: f893 3195    	ldrb.w	r3, [r3, #0x195]
  3cd270: 429a         	cmp	r2, r3
  3cd272: d01a         	beq	0x3cd2aa <SAWGUN::updateRemoteItemStep(float)+0x62> @ imm = #0x34
  3cd274: 9b01         	ldr	r3, [sp, #0x4]
  3cd276: 2201         	movs	r2, #0x1
  3cd278: f883 21f4    	strb.w	r2, [r3, #0x1f4]
  3cd27c: 9b01         	ldr	r3, [sp, #0x4]
  3cd27e: 681b         	ldr	r3, [r3]
  3cd280: f503 7315    	add.w	r3, r3, #0x254
  3cd284: 681b         	ldr	r3, [r3]
  3cd286: 9a01         	ldr	r2, [sp, #0x4]
  3cd288: 4610         	mov	r0, r2
  3cd28a: 9900         	ldr	r1, [sp]
  3cd28c: 4798         	blx	r3
  3cd28e: 9b01         	ldr	r3, [sp, #0x4]
  3cd290: 681b         	ldr	r3, [r3]
  3cd292: f503 7318    	add.w	r3, r3, #0x260
  3cd296: 681b         	ldr	r3, [r3]
  3cd298: 9801         	ldr	r0, [sp, #0x4]
  3cd29a: 9900         	ldr	r1, [sp]
  3cd29c: 4798         	blx	r3
  3cd29e: 9b01         	ldr	r3, [sp, #0x4]
  3cd2a0: f04f 0200    	mov.w	r2, #0x0
  3cd2a4: f8c3 21f8    	str.w	r2, [r3, #0x1f8]
  3cd2a8: e01e         	b	0x3cd2e8 <SAWGUN::updateRemoteItemStep(float)+0xa0> @ imm = #0x3c
  3cd2aa: 9b01         	ldr	r3, [sp, #0x4]
  3cd2ac: edd3 7a7e    	vldr	s15, [r3, #504]
  3cd2b0: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3cd2b4: ed9f 7b1c    	vldr	d7, [pc, #112]          @ 0x3cd328 <SAWGUN::updateRemoteItemStep(float)+0xe0>
  3cd2b8: eeb4 6bc7    	vcmpe.f64	d6, d7
  3cd2bc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3cd2c0: dd12         	ble	0x3cd2e8 <SAWGUN::updateRemoteItemStep(float)+0xa0> @ imm = #0x24
  3cd2c2: 9b01         	ldr	r3, [sp, #0x4]
  3cd2c4: 2200         	movs	r2, #0x0
  3cd2c6: f883 21f4    	strb.w	r2, [r3, #0x1f4]
  3cd2ca: 9b01         	ldr	r3, [sp, #0x4]
  3cd2cc: f04f 0200    	mov.w	r2, #0x0
  3cd2d0: f8c3 2110    	str.w	r2, [r3, #0x110]
  3cd2d4: 9b01         	ldr	r3, [sp, #0x4]
  3cd2d6: f04f 0200    	mov.w	r2, #0x0
  3cd2da: f8c3 21fc    	str.w	r2, [r3, #0x1fc]
  3cd2de: 9b01         	ldr	r3, [sp, #0x4]
  3cd2e0: f04f 0200    	mov.w	r2, #0x0
  3cd2e4: f8c3 21f8    	str.w	r2, [r3, #0x1f8]
  3cd2e8: 9b01         	ldr	r3, [sp, #0x4]
  3cd2ea: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3cd2ee: 681b         	ldr	r3, [r3]
  3cd2f0: 3390         	adds	r3, #0x90
  3cd2f2: 681a         	ldr	r2, [r3]
  3cd2f4: 9b01         	ldr	r3, [sp, #0x4]
  3cd2f6: f8d3 11f0    	ldr.w	r1, [r3, #0x1f0]
  3cd2fa: 9b01         	ldr	r3, [sp, #0x4]
  3cd2fc: f893 3181    	ldrb.w	r3, [r3, #0x181]
  3cd300: f083 0301    	eor	r3, r3, #0x1
  3cd304: b2db         	uxtb	r3, r3
  3cd306: 2b00         	cmp	r3, #0x0
  3cd308: d007         	beq	0x3cd31a <SAWGUN::updateRemoteItemStep(float)+0xd2> @ imm = #0xe
  3cd30a: 9b01         	ldr	r3, [sp, #0x4]
  3cd30c: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  3cd310: b21b         	sxth	r3, r3
  3cd312: 2b00         	cmp	r3, #0x0
  3cd314: dd01         	ble	0x3cd31a <SAWGUN::updateRemoteItemStep(float)+0xd2> @ imm = #0x2
  3cd316: 2301         	movs	r3, #0x1
  3cd318: e000         	b	0x3cd31c <SAWGUN::updateRemoteItemStep(float)+0xd4> @ imm = #0x0
  3cd31a: 2300         	movs	r3, #0x0
  3cd31c: 4608         	mov	r0, r1
  3cd31e: 4619         	mov	r1, r3
  3cd320: 4790         	blx	r2
  3cd322: b003         	add	sp, #0xc
  3cd324: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3cd327); words below are literal-pool data ---
  3cd328: 999a         	ldr	r1, [sp, #0x268]
  3cd32a: 9999         	ldr	r1, [sp, #0x264]
  3cd32c: 9999         	ldr	r1, [sp, #0x264]
  3cd32e: 3fc9         	subs	r7, #0xc9

// ==== SAWGUN::remoteTriggerPull
//      file offset 0x3cd330 (= ELF address; Ghidra 0x3dd330), 180 bytes, Thumb-2
  3cd330: b530         	push	{r4, r5, lr}
  3cd332: b083         	sub	sp, #0xc
  3cd334: 9001         	str	r0, [sp, #0x4]
  3cd336: 9100         	str	r1, [sp]
  3cd338: 9b01         	ldr	r3, [sp, #0x4]
  3cd33a: f893 3195    	ldrb.w	r3, [r3, #0x195]
  3cd33e: 3301         	adds	r3, #0x1
  3cd340: b2da         	uxtb	r2, r3
  3cd342: 9b01         	ldr	r3, [sp, #0x4]
  3cd344: f883 2195    	strb.w	r2, [r3, #0x195]
  3cd348: 9b01         	ldr	r3, [sp, #0x4]
  3cd34a: ed93 7a7f    	vldr	s14, [r3, #508]
  3cd34e: eddd 7a00    	vldr	s15, [sp]
  3cd352: ee77 7a27    	vadd.f32	s15, s14, s15
  3cd356: 9b01         	ldr	r3, [sp, #0x4]
  3cd358: edc3 7a7f    	vstr	s15, [r3, #508]
  3cd35c: 9b01         	ldr	r3, [sp, #0x4]
  3cd35e: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3cd362: 681b         	ldr	r3, [r3]
  3cd364: 3398         	adds	r3, #0x98
  3cd366: 681c         	ldr	r4, [r3]
  3cd368: 9b01         	ldr	r3, [sp, #0x4]
  3cd36a: f8d3 51f0    	ldr.w	r5, [r3, #0x1f0]
  3cd36e: 9b01         	ldr	r3, [sp, #0x4]
  3cd370: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3cd374: 681b         	ldr	r3, [r3]
  3cd376: 339c         	adds	r3, #0x9c
  3cd378: 681b         	ldr	r3, [r3]
  3cd37a: 9a01         	ldr	r2, [sp, #0x4]
  3cd37c: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  3cd380: 4610         	mov	r0, r2
  3cd382: 4798         	blx	r3
  3cd384: ee06 0a90    	vmov	s13, r0
  3cd388: ed9d 7a00    	vldr	s14, [sp]
  3cd38c: eddf 7a14    	vldr	s15, [pc, #80]          @ 0x3cd3e0 <SAWGUN::remoteTriggerPull(float)+0xb0>
  3cd390: ee67 7a27    	vmul.f32	s15, s14, s15
  3cd394: ee76 7ae7    	vsub.f32	s15, s13, s15
  3cd398: 4628         	mov	r0, r5
  3cd39a: ee17 1a90    	vmov	r1, s15
  3cd39e: 47a0         	blx	r4
  3cd3a0: 9b01         	ldr	r3, [sp, #0x4]
  3cd3a2: edd3 7a7f    	vldr	s15, [r3, #508]
  3cd3a6: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3cd3aa: ed9f 7b0b    	vldr	d7, [pc, #44]           @ 0x3cd3d8 <SAWGUN::remoteTriggerPull(float)+0xa8>
  3cd3ae: eeb4 6bc7    	vcmpe.f64	d6, d7
  3cd3b2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3cd3b6: dd0b         	ble	0x3cd3d0 <SAWGUN::remoteTriggerPull(float)+0xa0> @ imm = #0x16
  3cd3b8: 9b01         	ldr	r3, [sp, #0x4]
  3cd3ba: 681b         	ldr	r3, [r3]
  3cd3bc: f503 7325    	add.w	r3, r3, #0x294
  3cd3c0: 681b         	ldr	r3, [r3]
  3cd3c2: 9801         	ldr	r0, [sp, #0x4]
  3cd3c4: 4798         	blx	r3
  3cd3c6: 9b01         	ldr	r3, [sp, #0x4]
  3cd3c8: f04f 0200    	mov.w	r2, #0x0
  3cd3cc: f8c3 21fc    	str.w	r2, [r3, #0x1fc]
  3cd3d0: b003         	add	sp, #0xc
  3cd3d2: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3cd3d3); words below are literal-pool data ---
  3cd3d4: f3af 8000    	nop.w
  3cd3d8: 999a         	ldr	r1, [sp, #0x268]
  3cd3da: 9999         	ldr	r1, [sp, #0x264]
  3cd3dc: 9999         	ldr	r1, [sp, #0x264]
  3cd3de: 3fd9         	subs	r7, #0xd9
  3cd3e0: 0000         	movs	r0, r0
  3cd3e2: 43fa         	mvns	r2, r7

// ==== SAWGUN::getShellPoint
//      file offset 0x3cd3e8 (= ELF address; Ghidra 0x3dd3e8), 204 bytes, Thumb-2
  3cd3e8: b530         	push	{r4, r5, lr}
  3cd3ea: b08f         	sub	sp, #0x3c
  3cd3ec: 9001         	str	r0, [sp, #0x4]
  3cd3ee: 9100         	str	r1, [sp]
  3cd3f0: 4c2e         	ldr	r4, [pc, #0xb8]         @ 0x3cd4ac <SAWGUN::getShellPoint()+0xc4>
  3cd3f2: 447c         	add	r4, pc
  3cd3f4: 9b00         	ldr	r3, [sp]
  3cd3f6: 681b         	ldr	r3, [r3]
  3cd3f8: 3350         	adds	r3, #0x50
  3cd3fa: 681b         	ldr	r3, [r3]
  3cd3fc: 9a00         	ldr	r2, [sp]
  3cd3fe: 4610         	mov	r0, r2
  3cd400: 4798         	blx	r3
  3cd402: 4605         	mov	r5, r0
  3cd404: ab04         	add	r3, sp, #0x10
  3cd406: 4618         	mov	r0, r3
  3cd408: f04f 0100    	mov.w	r1, #0x0
  3cd40c: f2c4 2120    	movt	r1, #0x4220
  3cd410: f04f 0200    	mov.w	r2, #0x0
  3cd414: f2c4 12a0    	movt	r2, #0x41a0
  3cd418: f1c5 fc6a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1c58d4
  3cd41c: aa06         	add	r2, sp, #0x18
  3cd41e: ab04         	add	r3, sp, #0x10
  3cd420: 4610         	mov	r0, r2
  3cd422: 4629         	mov	r1, r5
  3cd424: 461a         	mov	r2, r3
  3cd426: f7fe fbd7    	bl	0x3cbbd8 <SAW::detonate(cocos2d::CCObject*)+0x1a8> @ imm = #-0x1852
  3cd42a: 9b00         	ldr	r3, [sp]
  3cd42c: 681b         	ldr	r3, [r3]
  3cd42e: f503 73c2    	add.w	r3, r3, #0x184
  3cd432: 681b         	ldr	r3, [r3]
  3cd434: 9a00         	ldr	r2, [sp]
  3cd436: a908         	add	r1, sp, #0x20
  3cd438: 4608         	mov	r0, r1
  3cd43a: 4611         	mov	r1, r2
  3cd43c: 4798         	blx	r3
  3cd43e: a902         	add	r1, sp, #0x8
  3cd440: aa06         	add	r2, sp, #0x18
  3cd442: ab08         	add	r3, sp, #0x20
  3cd444: 4608         	mov	r0, r1
  3cd446: 4611         	mov	r1, r2
  3cd448: 461a         	mov	r2, r3
  3cd44a: f1c4 ff6b    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x1c4ed6
  3cd44e: 4b18         	ldr	r3, [pc, #0x60]         @ 0x3cd4b0 <SAWGUN::getShellPoint()+0xc8>
  3cd450: 58e3         	ldr	r3, [r4, r3]
  3cd452: 681b         	ldr	r3, [r3]
  3cd454: 681b         	ldr	r3, [r3]
  3cd456: f503 73c4    	add.w	r3, r3, #0x188
  3cd45a: 681b         	ldr	r3, [r3]
  3cd45c: 4a14         	ldr	r2, [pc, #0x50]         @ 0x3cd4b0 <SAWGUN::getShellPoint()+0xc8>
  3cd45e: 58a2         	ldr	r2, [r4, r2]
  3cd460: 6812         	ldr	r2, [r2]
  3cd462: a908         	add	r1, sp, #0x20
  3cd464: 4608         	mov	r0, r1
  3cd466: 4611         	mov	r1, r2
  3cd468: 4798         	blx	r3
  3cd46a: a906         	add	r1, sp, #0x18
  3cd46c: aa02         	add	r2, sp, #0x8
  3cd46e: ab08         	add	r3, sp, #0x20
  3cd470: 4608         	mov	r0, r1
  3cd472: 4611         	mov	r1, r2
  3cd474: 461a         	mov	r2, r3
  3cd476: f1c4 ff55    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x1c4eaa
  3cd47a: aa02         	add	r2, sp, #0x8
  3cd47c: ab06         	add	r3, sp, #0x18
  3cd47e: 4610         	mov	r0, r2
  3cd480: 4619         	mov	r1, r3
  3cd482: f1c5 fc63    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x1c58c6
  3cd486: eddd 7a02    	vldr	s15, [sp, #8]
  3cd48a: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3cd48e: eddd 7a03    	vldr	s15, [sp, #12]
  3cd492: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3cd496: 9b01         	ldr	r3, [sp, #0x4]
  3cd498: 4618         	mov	r0, r3
  3cd49a: eeb0 0b46    	vmov.f64	d0, d6
  3cd49e: eeb0 1b47    	vmov.f64	d1, d7
  3cd4a2: f7fe fba9    	bl	0x3cbbf8 <SAW::detonate(cocos2d::CCObject*)+0x1c8> @ imm = #-0x18ae
  3cd4a6: 9801         	ldr	r0, [sp, #0x4]
  3cd4a8: b00f         	add	sp, #0x3c
  3cd4aa: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3cd4ab); words below are literal-pool data ---
  3cd4ac: 5616         	ldrsb	r6, [r2, r0]
  3cd4ae: 0056         	lsls	r6, r2, #0x1
  3cd4b0: d744         	bvc	0x3cd53c <SAWGUN::setPrimaryConfiguration()+0x40> @ imm = #0x88
  3cd4b2: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== SAWGUN::playSound
//      file offset 0x3cd4b4 (= ELF address; Ghidra 0x3dd4b4), 72 bytes, Thumb-2
  3cd4b4: b510         	push	{r4, lr}
  3cd4b6: b088         	sub	sp, #0x20
  3cd4b8: 9003         	str	r0, [sp, #0xc]
  3cd4ba: 4a0e         	ldr	r2, [pc, #0x38]         @ 0x3cd4f4 <SAWGUN::playSound()+0x40>
  3cd4bc: 447a         	add	r2, pc
  3cd4be: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x3cd4f8 <SAWGUN::playSound()+0x44>
  3cd4c0: 58d3         	ldr	r3, [r2, r3]
  3cd4c2: 681c         	ldr	r4, [r3]
  3cd4c4: 9b03         	ldr	r3, [sp, #0xc]
  3cd4c6: 681b         	ldr	r3, [r3]
  3cd4c8: f503 7348    	add.w	r3, r3, #0x320
  3cd4cc: 681b         	ldr	r3, [r3]
  3cd4ce: 9a03         	ldr	r2, [sp, #0xc]
  3cd4d0: a904         	add	r1, sp, #0x10
  3cd4d2: 4608         	mov	r0, r1
  3cd4d4: 4611         	mov	r1, r2
  3cd4d6: 4798         	blx	r3
  3cd4d8: 466b         	mov	r3, sp
  3cd4da: aa06         	add	r2, sp, #0x18
  3cd4dc: e892 0003    	ldm.w	r2, {r0, r1}
  3cd4e0: e883 0003    	stm.w	r3, {r0, r1}
  3cd4e4: ab04         	add	r3, sp, #0x10
  3cd4e6: cb0c         	ldm	r3, {r2, r3}
  3cd4e8: 4620         	mov	r0, r4
  3cd4ea: 2121         	movs	r1, #0x21
  3cd4ec: f02a fd84    	bl	0x3f7ff8 <Sound::playSoundPosition(int, cpVect)> @ imm = #0x2ab08
  3cd4f0: b008         	add	sp, #0x20
  3cd4f2: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3cd4f3); words below are literal-pool data ---
  3cd4f4: 554c         	strb	r4, [r1, r5]
  3cd4f6: 0056         	lsls	r6, r2, #0x1
  3cd4f8: d730         	bvc	0x3cd55c <SAWGUN::setPrimaryConfiguration()+0x60> @ imm = #0x60
  3cd4fa: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== SAWGUN::setPrimaryConfiguration
//      file offset 0x3cd4fc (= ELF address; Ghidra 0x3dd4fc), 316 bytes, Thumb-2
  3cd4fc: b530         	push	{r4, r5, lr}
  3cd4fe: b085         	sub	sp, #0x14
  3cd500: 9001         	str	r0, [sp, #0x4]
  3cd502: 9b01         	ldr	r3, [sp, #0x4]
  3cd504: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3cd508: 2b00         	cmp	r3, #0x0
  3cd50a: d019         	beq	0x3cd540 <SAWGUN::setPrimaryConfiguration()+0x44> @ imm = #0x32
  3cd50c: 9b01         	ldr	r3, [sp, #0x4]
  3cd50e: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  3cd512: 4b48         	ldr	r3, [pc, #0x120]        @ 0x3cd634 <SAWGUN::setPrimaryConfiguration()+0x138>
  3cd514: 447b         	add	r3, pc
  3cd516: ed93 6b00    	vldr	d6, [r3]
  3cd51a: ed93 7b02    	vldr	d7, [r3, #8]
  3cd51e: 4610         	mov	r0, r2
  3cd520: eeb0 0b46    	vmov.f64	d0, d6
  3cd524: eeb0 1b47    	vmov.f64	d1, d7
  3cd528: f7fe fb7a    	bl	0x3cbc20 <SAW::detonate(cocos2d::CCObject*)+0x1f0> @ imm = #-0x190c
  3cd52c: 9b01         	ldr	r3, [sp, #0x4]
  3cd52e: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3cd532: 4618         	mov	r0, r3
  3cd534: f04f 0200    	mov.w	r2, #0x0
  3cd538: f04f 0300    	mov.w	r3, #0x0
  3cd53c: f305 fe29    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x305c52
  3cd540: 9b01         	ldr	r3, [sp, #0x4]
  3cd542: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cd546: 681b         	ldr	r3, [r3]
  3cd548: 334c         	adds	r3, #0x4c
  3cd54a: 681c         	ldr	r4, [r3]
  3cd54c: 9b01         	ldr	r3, [sp, #0x4]
  3cd54e: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  3cd552: ab02         	add	r3, sp, #0x8
  3cd554: 4618         	mov	r0, r3
  3cd556: f04f 0100    	mov.w	r1, #0x0
  3cd55a: f04f 0200    	mov.w	r2, #0x0
  3cd55e: f1c5 fbc7    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1c578e
  3cd562: ab02         	add	r3, sp, #0x8
  3cd564: 4628         	mov	r0, r5
  3cd566: 4619         	mov	r1, r3
  3cd568: 47a0         	blx	r4
  3cd56a: 9b01         	ldr	r3, [sp, #0x4]
  3cd56c: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cd570: 681b         	ldr	r3, [r3]
  3cd572: 337c         	adds	r3, #0x7c
  3cd574: 681c         	ldr	r4, [r3]
  3cd576: 9b01         	ldr	r3, [sp, #0x4]
  3cd578: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  3cd57c: ab02         	add	r3, sp, #0x8
  3cd57e: 4618         	mov	r0, r3
  3cd580: f24d 710a    	movw	r1, #0xd70a
  3cd584: f6c3 4123    	movt	r1, #0x3c23
  3cd588: f649 129a    	movw	r2, #0x999a
  3cd58c: f6c3 6299    	movt	r2, #0x3e99
  3cd590: f1c5 fbae    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1c575c
  3cd594: ab02         	add	r3, sp, #0x8
  3cd596: 4628         	mov	r0, r5
  3cd598: 4619         	mov	r1, r3
  3cd59a: 47a0         	blx	r4
  3cd59c: 9b01         	ldr	r3, [sp, #0x4]
  3cd59e: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cd5a2: 681b         	ldr	r3, [r3]
  3cd5a4: 3398         	adds	r3, #0x98
  3cd5a6: 681b         	ldr	r3, [r3]
  3cd5a8: 9a01         	ldr	r2, [sp, #0x4]
  3cd5aa: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3cd5ae: 4610         	mov	r0, r2
  3cd5b0: f04f 0100    	mov.w	r1, #0x0
  3cd5b4: 4798         	blx	r3
  3cd5b6: 9b01         	ldr	r3, [sp, #0x4]
  3cd5b8: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cd5bc: 681b         	ldr	r3, [r3]
  3cd5be: 3340         	adds	r3, #0x40
  3cd5c0: 681b         	ldr	r3, [r3]
  3cd5c2: 9a01         	ldr	r2, [sp, #0x4]
  3cd5c4: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3cd5c8: 4610         	mov	r0, r2
  3cd5ca: f04f 517e    	mov.w	r1, #0x3f800000
  3cd5ce: 4798         	blx	r3
  3cd5d0: 9b01         	ldr	r3, [sp, #0x4]
  3cd5d2: 681b         	ldr	r3, [r3]
  3cd5d4: 334c         	adds	r3, #0x4c
  3cd5d6: 681c         	ldr	r4, [r3]
  3cd5d8: 9d01         	ldr	r5, [sp, #0x4]
  3cd5da: ab02         	add	r3, sp, #0x8
  3cd5dc: 4618         	mov	r0, r3
  3cd5de: f04f 0100    	mov.w	r1, #0x0
  3cd5e2: f04f 0200    	mov.w	r2, #0x0
  3cd5e6: f1c5 fb83    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1c5706
  3cd5ea: ab02         	add	r3, sp, #0x8
  3cd5ec: 4628         	mov	r0, r5
  3cd5ee: 4619         	mov	r1, r3
  3cd5f0: 47a0         	blx	r4
  3cd5f2: 9b01         	ldr	r3, [sp, #0x4]
  3cd5f4: 681b         	ldr	r3, [r3]
  3cd5f6: 3340         	adds	r3, #0x40
  3cd5f8: 681b         	ldr	r3, [r3]
  3cd5fa: 9a01         	ldr	r2, [sp, #0x4]
  3cd5fc: 4610         	mov	r0, r2
  3cd5fe: f04f 517e    	mov.w	r1, #0x3f800000
  3cd602: 4798         	blx	r3
  3cd604: 9b01         	ldr	r3, [sp, #0x4]
  3cd606: 681b         	ldr	r3, [r3]
  3cd608: 3398         	adds	r3, #0x98
  3cd60a: 681b         	ldr	r3, [r3]
  3cd60c: 9a01         	ldr	r2, [sp, #0x4]
  3cd60e: 4610         	mov	r0, r2
  3cd610: f04f 0100    	mov.w	r1, #0x0
  3cd614: 4798         	blx	r3
  3cd616: 9b01         	ldr	r3, [sp, #0x4]
  3cd618: 2200         	movs	r2, #0x0
  3cd61a: f883 2195    	strb.w	r2, [r3, #0x195]
  3cd61e: 9b01         	ldr	r3, [sp, #0x4]
  3cd620: 2200         	movs	r2, #0x0
  3cd622: f883 2194    	strb.w	r2, [r3, #0x194]
  3cd626: 9b01         	ldr	r3, [sp, #0x4]
  3cd628: f04f 0200    	mov.w	r2, #0x0
  3cd62c: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  3cd630: b005         	add	sp, #0x14
  3cd632: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3cd633); words below are literal-pool data ---
  3cd634: 9670         	str	r6, [sp, #0x1c0]
  3cd636: 0040         	lsls	r0, r0, #0x1

// ==== SAWGUN::setSecondaryConfiguration
//      file offset 0x3cd638 (= ELF address; Ghidra 0x3dd638), 344 bytes, Thumb-2
  3cd638: b530         	push	{r4, r5, lr}
  3cd63a: b085         	sub	sp, #0x14
  3cd63c: 9001         	str	r0, [sp, #0x4]
  3cd63e: 9b01         	ldr	r3, [sp, #0x4]
  3cd640: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3cd644: 2b00         	cmp	r3, #0x0
  3cd646: d019         	beq	0x3cd67c <SAWGUN::setSecondaryConfiguration()+0x44> @ imm = #0x32
  3cd648: 9b01         	ldr	r3, [sp, #0x4]
  3cd64a: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  3cd64e: 4b4f         	ldr	r3, [pc, #0x13c]        @ 0x3cd78c <SAWGUN::setSecondaryConfiguration()+0x154>
  3cd650: 447b         	add	r3, pc
  3cd652: ed93 6b00    	vldr	d6, [r3]
  3cd656: ed93 7b02    	vldr	d7, [r3, #8]
  3cd65a: 4610         	mov	r0, r2
  3cd65c: eeb0 0b46    	vmov.f64	d0, d6
  3cd660: eeb0 1b47    	vmov.f64	d1, d7
  3cd664: f7fe fadc    	bl	0x3cbc20 <SAW::detonate(cocos2d::CCObject*)+0x1f0> @ imm = #-0x1a48
  3cd668: 9b01         	ldr	r3, [sp, #0x4]
  3cd66a: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3cd66e: 4618         	mov	r0, r3
  3cd670: f04f 0200    	mov.w	r2, #0x0
  3cd674: f04f 0300    	mov.w	r3, #0x0
  3cd678: f305 fd8b    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x305b16
  3cd67c: 9b01         	ldr	r3, [sp, #0x4]
  3cd67e: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cd682: 681b         	ldr	r3, [r3]
  3cd684: 334c         	adds	r3, #0x4c
  3cd686: 681c         	ldr	r4, [r3]
  3cd688: 9b01         	ldr	r3, [sp, #0x4]
  3cd68a: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  3cd68e: ab02         	add	r3, sp, #0x8
  3cd690: 4618         	mov	r0, r3
  3cd692: f04f 0100    	mov.w	r1, #0x0
  3cd696: f2cc 1140    	movt	r1, #0xc140
  3cd69a: f04f 0200    	mov.w	r2, #0x0
  3cd69e: f2c4 02a0    	movt	r2, #0x40a0
  3cd6a2: f1c5 fb25    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1c564a
  3cd6a6: ab02         	add	r3, sp, #0x8
  3cd6a8: 4628         	mov	r0, r5
  3cd6aa: 4619         	mov	r1, r3
  3cd6ac: 47a0         	blx	r4
  3cd6ae: 9b01         	ldr	r3, [sp, #0x4]
  3cd6b0: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cd6b4: 681b         	ldr	r3, [r3]
  3cd6b6: 337c         	adds	r3, #0x7c
  3cd6b8: 681c         	ldr	r4, [r3]
  3cd6ba: 9b01         	ldr	r3, [sp, #0x4]
  3cd6bc: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  3cd6c0: ab02         	add	r3, sp, #0x8
  3cd6c2: 4618         	mov	r0, r3
  3cd6c4: f04f 517c    	mov.w	r1, #0x3f000000
  3cd6c8: f04f 527c    	mov.w	r2, #0x3f000000
  3cd6cc: f1c5 fb10    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1c5620
  3cd6d0: ab02         	add	r3, sp, #0x8
  3cd6d2: 4628         	mov	r0, r5
  3cd6d4: 4619         	mov	r1, r3
  3cd6d6: 47a0         	blx	r4
  3cd6d8: 9b01         	ldr	r3, [sp, #0x4]
  3cd6da: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cd6de: 681b         	ldr	r3, [r3]
  3cd6e0: 3398         	adds	r3, #0x98
  3cd6e2: 681b         	ldr	r3, [r3]
  3cd6e4: 9a01         	ldr	r2, [sp, #0x4]
  3cd6e6: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3cd6ea: 4610         	mov	r0, r2
  3cd6ec: f04f 0100    	mov.w	r1, #0x0
  3cd6f0: f2c4 2134    	movt	r1, #0x4234
  3cd6f4: 4798         	blx	r3
  3cd6f6: 9b01         	ldr	r3, [sp, #0x4]
  3cd6f8: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cd6fc: 681b         	ldr	r3, [r3]
  3cd6fe: 3340         	adds	r3, #0x40
  3cd700: 681b         	ldr	r3, [r3]
  3cd702: 9a01         	ldr	r2, [sp, #0x4]
  3cd704: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3cd708: 4610         	mov	r0, r2
  3cd70a: f04f 517e    	mov.w	r1, #0x3f800000
  3cd70e: 4798         	blx	r3
  3cd710: 9b01         	ldr	r3, [sp, #0x4]
  3cd712: 681b         	ldr	r3, [r3]
  3cd714: 334c         	adds	r3, #0x4c
  3cd716: 681c         	ldr	r4, [r3]
  3cd718: 9d01         	ldr	r5, [sp, #0x4]
  3cd71a: ab02         	add	r3, sp, #0x8
  3cd71c: 4618         	mov	r0, r3
  3cd71e: f04f 0100    	mov.w	r1, #0x0
  3cd722: f04f 0200    	mov.w	r2, #0x0
  3cd726: f1c5 fae3    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1c55c6
  3cd72a: ab02         	add	r3, sp, #0x8
  3cd72c: 4628         	mov	r0, r5
  3cd72e: 4619         	mov	r1, r3
  3cd730: 47a0         	blx	r4
  3cd732: 9b01         	ldr	r3, [sp, #0x4]
  3cd734: 681b         	ldr	r3, [r3]
  3cd736: 3340         	adds	r3, #0x40
  3cd738: 681b         	ldr	r3, [r3]
  3cd73a: 9a01         	ldr	r2, [sp, #0x4]
  3cd73c: 4610         	mov	r0, r2
  3cd73e: f04f 517e    	mov.w	r1, #0x3f800000
  3cd742: 4798         	blx	r3
  3cd744: 9b01         	ldr	r3, [sp, #0x4]
  3cd746: 681b         	ldr	r3, [r3]
  3cd748: 3398         	adds	r3, #0x98
  3cd74a: 681b         	ldr	r3, [r3]
  3cd74c: 9a01         	ldr	r2, [sp, #0x4]
  3cd74e: 4610         	mov	r0, r2
  3cd750: f04f 0100    	mov.w	r1, #0x0
  3cd754: 4798         	blx	r3
  3cd756: 9b01         	ldr	r3, [sp, #0x4]
  3cd758: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3cd75c: 681b         	ldr	r3, [r3]
  3cd75e: 3390         	adds	r3, #0x90
  3cd760: 681b         	ldr	r3, [r3]
  3cd762: 9a01         	ldr	r2, [sp, #0x4]
  3cd764: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  3cd768: 4610         	mov	r0, r2
  3cd76a: 2100         	movs	r1, #0x0
  3cd76c: 4798         	blx	r3
  3cd76e: 9b01         	ldr	r3, [sp, #0x4]
  3cd770: 2200         	movs	r2, #0x0
  3cd772: f883 2195    	strb.w	r2, [r3, #0x195]
  3cd776: 9b01         	ldr	r3, [sp, #0x4]
  3cd778: 2200         	movs	r2, #0x0
  3cd77a: f883 2194    	strb.w	r2, [r3, #0x194]
  3cd77e: 9b01         	ldr	r3, [sp, #0x4]
  3cd780: f04f 0200    	mov.w	r2, #0x0
  3cd784: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  3cd788: b005         	add	sp, #0x14
  3cd78a: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3cd78b); words below are literal-pool data ---
  3cd78c: 9534         	str	r5, [sp, #0xd0]
  3cd78e: 0040         	lsls	r0, r0, #0x1

// ==== SAWGUN::setMapConfiguration
//      file offset 0x3cd790 (= ELF address; Ghidra 0x3dd790), 248 bytes, Thumb-2
  3cd790: b570         	push	{r4, r5, r6, lr}
  3cd792: b084         	sub	sp, #0x10
  3cd794: 9001         	str	r0, [sp, #0x4]
  3cd796: 4c3a         	ldr	r4, [pc, #0xe8]         @ 0x3cd880 <SAWGUN::setMapConfiguration()+0xf0>
  3cd798: 447c         	add	r4, pc
  3cd79a: 9b01         	ldr	r3, [sp, #0x4]
  3cd79c: f04f 0200    	mov.w	r2, #0x0
  3cd7a0: f8c3 2190    	str.w	r2, [r3, #0x190]
  3cd7a4: 9b01         	ldr	r3, [sp, #0x4]
  3cd7a6: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cd7aa: 681b         	ldr	r3, [r3]
  3cd7ac: 334c         	adds	r3, #0x4c
  3cd7ae: 681d         	ldr	r5, [r3]
  3cd7b0: 9b01         	ldr	r3, [sp, #0x4]
  3cd7b2: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  3cd7b6: ab02         	add	r3, sp, #0x8
  3cd7b8: 4618         	mov	r0, r3
  3cd7ba: f04f 0100    	mov.w	r1, #0x0
  3cd7be: f04f 0200    	mov.w	r2, #0x0
  3cd7c2: f1c5 fa95    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1c552a
  3cd7c6: ab02         	add	r3, sp, #0x8
  3cd7c8: 4630         	mov	r0, r6
  3cd7ca: 4619         	mov	r1, r3
  3cd7cc: 47a8         	blx	r5
  3cd7ce: 9b01         	ldr	r3, [sp, #0x4]
  3cd7d0: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cd7d4: 681b         	ldr	r3, [r3]
  3cd7d6: 337c         	adds	r3, #0x7c
  3cd7d8: 681d         	ldr	r5, [r3]
  3cd7da: 9b01         	ldr	r3, [sp, #0x4]
  3cd7dc: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  3cd7e0: ab02         	add	r3, sp, #0x8
  3cd7e2: 4618         	mov	r0, r3
  3cd7e4: f04f 517c    	mov.w	r1, #0x3f000000
  3cd7e8: f04f 527c    	mov.w	r2, #0x3f000000
  3cd7ec: f1c5 fa80    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1c5500
  3cd7f0: ab02         	add	r3, sp, #0x8
  3cd7f2: 4630         	mov	r0, r6
  3cd7f4: 4619         	mov	r1, r3
  3cd7f6: 47a8         	blx	r5
  3cd7f8: 9b01         	ldr	r3, [sp, #0x4]
  3cd7fa: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cd7fe: 681b         	ldr	r3, [r3]
  3cd800: 3398         	adds	r3, #0x98
  3cd802: 681b         	ldr	r3, [r3]
  3cd804: 9a01         	ldr	r2, [sp, #0x4]
  3cd806: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3cd80a: 4610         	mov	r0, r2
  3cd80c: f04f 0100    	mov.w	r1, #0x0
  3cd810: 4798         	blx	r3
  3cd812: 9b01         	ldr	r3, [sp, #0x4]
  3cd814: 681b         	ldr	r3, [r3]
  3cd816: 334c         	adds	r3, #0x4c
  3cd818: 681d         	ldr	r5, [r3]
  3cd81a: 9e01         	ldr	r6, [sp, #0x4]
  3cd81c: ab02         	add	r3, sp, #0x8
  3cd81e: 4618         	mov	r0, r3
  3cd820: f04f 0100    	mov.w	r1, #0x0
  3cd824: f04f 0200    	mov.w	r2, #0x0
  3cd828: f1c5 fa62    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1c54c4
  3cd82c: ab02         	add	r3, sp, #0x8
  3cd82e: 4630         	mov	r0, r6
  3cd830: 4619         	mov	r1, r3
  3cd832: 47a8         	blx	r5
  3cd834: 9b01         	ldr	r3, [sp, #0x4]
  3cd836: 681b         	ldr	r3, [r3]
  3cd838: 3340         	adds	r3, #0x40
  3cd83a: 681b         	ldr	r3, [r3]
  3cd83c: 9901         	ldr	r1, [sp, #0x4]
  3cd83e: 4a11         	ldr	r2, [pc, #0x44]         @ 0x3cd884 <SAWGUN::setMapConfiguration()+0xf4>
  3cd840: 58a2         	ldr	r2, [r4, r2]
  3cd842: 6812         	ldr	r2, [r2]
  3cd844: 4608         	mov	r0, r1
  3cd846: 4611         	mov	r1, r2
  3cd848: 4798         	blx	r3
  3cd84a: 9b01         	ldr	r3, [sp, #0x4]
  3cd84c: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3cd850: 681b         	ldr	r3, [r3]
  3cd852: 3390         	adds	r3, #0x90
  3cd854: 681b         	ldr	r3, [r3]
  3cd856: 9a01         	ldr	r2, [sp, #0x4]
  3cd858: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  3cd85c: 4610         	mov	r0, r2
  3cd85e: 2100         	movs	r1, #0x0
  3cd860: 4798         	blx	r3
  3cd862: 9b01         	ldr	r3, [sp, #0x4]
  3cd864: 2200         	movs	r2, #0x0
  3cd866: f883 2195    	strb.w	r2, [r3, #0x195]
  3cd86a: 9b01         	ldr	r3, [sp, #0x4]
  3cd86c: 2200         	movs	r2, #0x0
  3cd86e: f883 2194    	strb.w	r2, [r3, #0x194]
  3cd872: 9b01         	ldr	r3, [sp, #0x4]
  3cd874: f04f 0200    	mov.w	r2, #0x0
  3cd878: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  3cd87c: b004         	add	sp, #0x10
  3cd87e: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3cd87f); words below are literal-pool data ---
  3cd880: 5270         	strh	r0, [r6, r1]
  3cd882: 0056         	lsls	r6, r2, #0x1
  3cd884: d748         	bvc	0x3cd918 <SAWGUN::setRight(bool)+0x4> @ imm = #0x90
  3cd886: ffff b500    	<unknown>

// ==== SAWGUN::getWeaponTexture
//      file offset 0x3cd888 (= ELF address; Ghidra 0x3dd888), 40 bytes, Thumb-2
  3cd888: b500         	push	{lr}
  3cd88a: b083         	sub	sp, #0xc
  3cd88c: 9001         	str	r0, [sp, #0x4]
  3cd88e: 9b01         	ldr	r3, [sp, #0x4]
  3cd890: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cd894: 681b         	ldr	r3, [r3]
  3cd896: f503 73fa    	add.w	r3, r3, #0x1f4
  3cd89a: 681b         	ldr	r3, [r3]
  3cd89c: 9a01         	ldr	r2, [sp, #0x4]
  3cd89e: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3cd8a2: 4610         	mov	r0, r2
  3cd8a4: 4798         	blx	r3
  3cd8a6: 4603         	mov	r3, r0
  3cd8a8: 4618         	mov	r0, r3
  3cd8aa: b003         	add	sp, #0xc
  3cd8ac: f85d fb04    	ldr	pc, [sp], #4

// ==== SAWGUN::getWeaponRect
//      file offset 0x3cd8b0 (= ELF address; Ghidra 0x3dd8b0), 38 bytes, Thumb-2
  3cd8b0: b500         	push	{lr}
  3cd8b2: b083         	sub	sp, #0xc
  3cd8b4: 9001         	str	r0, [sp, #0x4]
  3cd8b6: 9100         	str	r1, [sp]
  3cd8b8: 9b00         	ldr	r3, [sp]
  3cd8ba: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cd8be: 4618         	mov	r0, r3
  3cd8c0: f70f fa0c    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0xf0be8
  3cd8c4: 4603         	mov	r3, r0
  3cd8c6: 9801         	ldr	r0, [sp, #0x4]
  3cd8c8: 4619         	mov	r1, r3
  3cd8ca: f1c5 fd25    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x1c5a4a
  3cd8ce: 9801         	ldr	r0, [sp, #0x4]
  3cd8d0: b003         	add	sp, #0xc
  3cd8d2: f85d fb04    	ldr	pc, [sp], #4

// ==== SAWGUN::isRight
//      file offset 0x3cd8d8 (= ELF address; Ghidra 0x3dd8d8), 60 bytes, Thumb-2
  3cd8d8: b500         	push	{lr}
  3cd8da: b083         	sub	sp, #0xc
  3cd8dc: 9001         	str	r0, [sp, #0x4]
  3cd8de: 9b01         	ldr	r3, [sp, #0x4]
  3cd8e0: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cd8e4: 681b         	ldr	r3, [r3]
  3cd8e6: 3334         	adds	r3, #0x34
  3cd8e8: 681b         	ldr	r3, [r3]
  3cd8ea: 9a01         	ldr	r2, [sp, #0x4]
  3cd8ec: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3cd8f0: 4610         	mov	r0, r2
  3cd8f2: 4798         	blx	r3
  3cd8f4: ee07 0a10    	vmov	s14, r0
  3cd8f8: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3cd8fc: eeb4 7ae7    	vcmpe.f32	s14, s15
  3cd900: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3cd904: bfd4         	ite	le
  3cd906: 2300         	movle	r3, #0x0
  3cd908: 2301         	movgt	r3, #0x1
  3cd90a: b2db         	uxtb	r3, r3
  3cd90c: 4618         	mov	r0, r3
  3cd90e: b003         	add	sp, #0xc
  3cd910: f85d fb04    	ldr	pc, [sp], #4

// ==== SAWGUN::setRight
//      file offset 0x3cd914 (= ELF address; Ghidra 0x3dd914), 64 bytes, Thumb-2
  3cd914: b500         	push	{lr}
  3cd916: b083         	sub	sp, #0xc
  3cd918: 9001         	str	r0, [sp, #0x4]
  3cd91a: 460b         	mov	r3, r1
  3cd91c: f88d 3003    	strb.w	r3, [sp, #0x3]
  3cd920: 9b01         	ldr	r3, [sp, #0x4]
  3cd922: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cd926: 681b         	ldr	r3, [r3]
  3cd928: 3330         	adds	r3, #0x30
  3cd92a: 681a         	ldr	r2, [r3]
  3cd92c: 9b01         	ldr	r3, [sp, #0x4]
  3cd92e: f8d3 11ec    	ldr.w	r1, [r3, #0x1ec]
  3cd932: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  3cd936: 2b00         	cmp	r3, #0x0
  3cd938: d002         	beq	0x3cd940 <SAWGUN::setRight(bool)+0x2c> @ imm = #0x4
  3cd93a: f04f 537e    	mov.w	r3, #0x3f800000
  3cd93e: e003         	b	0x3cd948 <SAWGUN::setRight(bool)+0x34> @ imm = #0x6
  3cd940: f04f 0300    	mov.w	r3, #0x0
  3cd944: f6cb 7380    	movt	r3, #0xbf80
  3cd948: 4608         	mov	r0, r1
  3cd94a: 4619         	mov	r1, r3
  3cd94c: 4790         	blx	r2
  3cd94e: b003         	add	sp, #0xc
  3cd950: f85d fb04    	ldr	pc, [sp], #4

// ==== SAWGUN::create
//      file offset 0x41755c (= ELF address; Ghidra 0x42755c), 112 bytes, Thumb-2
  41755c: b510         	push	{r4, lr}
  41755e: b082         	sub	sp, #0x8
  417560: f44f 7000    	mov.w	r0, #0x200
  417564: f370 f9fe    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x3703fc
  417568: 4603         	mov	r3, r0
  41756a: 461c         	mov	r4, r3
  41756c: 4620         	mov	r0, r4
  41756e: f7b5 fa19    	bl	0x3cc9a4 <SAWGUN::SAWGUN()> @ imm = #-0x4abce
  417572: 9401         	str	r4, [sp, #0x4]
  417574: 9b01         	ldr	r3, [sp, #0x4]
  417576: 2b00         	cmp	r3, #0x0
  417578: d00a         	beq	0x417590 <SAWGUN::create()+0x34> @ imm = #0x14
  41757a: 9b01         	ldr	r3, [sp, #0x4]
  41757c: 681b         	ldr	r3, [r3]
  41757e: 3318         	adds	r3, #0x18
  417580: 681b         	ldr	r3, [r3]
  417582: 9801         	ldr	r0, [sp, #0x4]
  417584: 4798         	blx	r3
  417586: 4603         	mov	r3, r0
  417588: 2b00         	cmp	r3, #0x0
  41758a: d001         	beq	0x417590 <SAWGUN::create()+0x34> @ imm = #0x2
  41758c: 2301         	movs	r3, #0x1
  41758e: e000         	b	0x417592 <SAWGUN::create()+0x36> @ imm = #0x0
  417590: 2300         	movs	r3, #0x0
  417592: 2b00         	cmp	r3, #0x0
  417594: d005         	beq	0x4175a2 <SAWGUN::create()+0x46> @ imm = #0xa
  417596: 9b01         	ldr	r3, [sp, #0x4]
  417598: 4618         	mov	r0, r3
  41759a: f180 fcaf    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x18095e
  41759e: 9b01         	ldr	r3, [sp, #0x4]
  4175a0: e011         	b	0x4175c6 <SAWGUN::create()+0x6a> @ imm = #0x22
  4175a2: 9b01         	ldr	r3, [sp, #0x4]
  4175a4: 2b00         	cmp	r3, #0x0
  4175a6: d005         	beq	0x4175b4 <SAWGUN::create()+0x58> @ imm = #0xa
  4175a8: 9b01         	ldr	r3, [sp, #0x4]
  4175aa: 681b         	ldr	r3, [r3]
  4175ac: 3308         	adds	r3, #0x8
  4175ae: 681b         	ldr	r3, [r3]
  4175b0: 9801         	ldr	r0, [sp, #0x4]
  4175b2: 4798         	blx	r3
  4175b4: 2300         	movs	r3, #0x0
  4175b6: 9301         	str	r3, [sp, #0x4]
  4175b8: 2300         	movs	r3, #0x0
  4175ba: e004         	b	0x4175c6 <SAWGUN::create()+0x6a> @ imm = #0x8
  4175bc: 4620         	mov	r0, r4
  4175be: f370 fd71    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x370ae2
  4175c2: f370 fd73    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x370ae6
  4175c6: 4618         	mov	r0, r3
  4175c8: b002         	add	sp, #0x8
  4175ca: bd10         	pop	{r4, pc}
