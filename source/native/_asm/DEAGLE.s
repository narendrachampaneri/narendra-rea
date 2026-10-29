// DEAGLE: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 21 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../DEAGLE.cpp

// ==== DEAGLE::DEAGLE
//      file offset 0x30fdfc (= ELF address; Ghidra 0x31fdfc), 44 bytes, Thumb-2
  30fdfc: b510         	push	{r4, lr}
  30fdfe: b082         	sub	sp, #0x8
  30fe00: 9001         	str	r0, [sp, #0x4]
  30fe02: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x30fe20 <DEAGLE::DEAGLE()+0x24>
  30fe04: 447c         	add	r4, pc
  30fe06: 9b01         	ldr	r3, [sp, #0x4]
  30fe08: 4618         	mov	r0, r3
  30fe0a: f105 f8cd    	bl	0x414fa8 <Weapon::Weapon()> @ imm = #0x10519a
  30fe0e: 9b01         	ldr	r3, [sp, #0x4]
  30fe10: 4a04         	ldr	r2, [pc, #0x10]         @ 0x30fe24 <DEAGLE::DEAGLE()+0x28>
  30fe12: 58a2         	ldr	r2, [r4, r2]
  30fe14: 3208         	adds	r2, #0x8
  30fe16: 601a         	str	r2, [r3]
  30fe18: 9b01         	ldr	r3, [sp, #0x4]
  30fe1a: 4618         	mov	r0, r3
  30fe1c: b002         	add	sp, #0x8
  30fe1e: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x30fe1f); words below are literal-pool data ---
  30fe20: 2c04         	cmp	r4, #0x4
  30fe22: 0062         	lsls	r2, r4, #0x1
  30fe24: d9bc         	bls	0x30fda0 <CustomAvatarLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0xf38> @ imm = #-0x88
  30fe26: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== DEAGLE::init
//      file offset 0x30fe28 (= ELF address; Ghidra 0x31fe28), 768 bytes, Thumb-2
  30fe28: b530         	push	{r4, r5, lr}
  30fe2a: b08b         	sub	sp, #0x2c
  30fe2c: 9005         	str	r0, [sp, #0x14]
  30fe2e: 9b05         	ldr	r3, [sp, #0x14]
  30fe30: 4618         	mov	r0, r3
  30fe32: f105 f8dd    	bl	0x414ff0 <Weapon::init()> @ imm = #0x1051ba
  30fe36: 4603         	mov	r3, r0
  30fe38: f88d 301f    	strb.w	r3, [sp, #0x1f]
  30fe3c: f89d 301f    	ldrb.w	r3, [sp, #0x1f]
  30fe40: f083 0301    	eor	r3, r3, #0x1
  30fe44: b2db         	uxtb	r3, r3
  30fe46: 2b00         	cmp	r3, #0x0
  30fe48: d001         	beq	0x30fe4e <DEAGLE::init()+0x26> @ imm = #0x2
  30fe4a: 2300         	movs	r3, #0x0
  30fe4c: e159         	b	0x310102 <DEAGLE::init()+0x2da> @ imm = #0x2b2
  30fe4e: 4bb0         	ldr	r3, [pc, #0x2c0]        @ 0x310110 <DEAGLE::init()+0x2e8>
  30fe50: 447b         	add	r3, pc
  30fe52: 4618         	mov	r0, r3
  30fe54: f2c8 fa56    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2c84ac
  30fe58: 4602         	mov	r2, r0
  30fe5a: 9b05         	ldr	r3, [sp, #0x14]
  30fe5c: f8c3 21ec    	str.w	r2, [r3, #0x1ec]
  30fe60: 9b05         	ldr	r3, [sp, #0x14]
  30fe62: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  30fe66: 4618         	mov	r0, r3
  30fe68: f288 f83e    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x28807c
  30fe6c: 4ba9         	ldr	r3, [pc, #0x2a4]        @ 0x310114 <DEAGLE::init()+0x2ec>
  30fe6e: 447b         	add	r3, pc
  30fe70: 4618         	mov	r0, r3
  30fe72: f2c8 fa47    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2c848e
  30fe76: 4602         	mov	r2, r0
  30fe78: 9b05         	ldr	r3, [sp, #0x14]
  30fe7a: f8c3 21f0    	str.w	r2, [r3, #0x1f0]
  30fe7e: 9b05         	ldr	r3, [sp, #0x14]
  30fe80: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  30fe84: 4618         	mov	r0, r3
  30fe86: f288 f82f    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x28805e
  30fe8a: 9b05         	ldr	r3, [sp, #0x14]
  30fe8c: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  30fe90: 681b         	ldr	r3, [r3]
  30fe92: 337c         	adds	r3, #0x7c
  30fe94: 681c         	ldr	r4, [r3]
  30fe96: 9b05         	ldr	r3, [sp, #0x14]
  30fe98: f8d3 51f0    	ldr.w	r5, [r3, #0x1f0]
  30fe9c: ab08         	add	r3, sp, #0x20
  30fe9e: 4618         	mov	r0, r3
  30fea0: f04f 0100    	mov.w	r1, #0x0
  30fea4: f6cb 7180    	movt	r1, #0xbf80
  30fea8: f04f 527c    	mov.w	r2, #0x3f000000
  30feac: f282 ff20    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x282e40
  30feb0: ab08         	add	r3, sp, #0x20
  30feb2: 4628         	mov	r0, r5
  30feb4: 4619         	mov	r1, r3
  30feb6: 47a0         	blx	r4
  30feb8: 9b05         	ldr	r3, [sp, #0x14]
  30feba: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  30febe: 681b         	ldr	r3, [r3]
  30fec0: 3340         	adds	r3, #0x40
  30fec2: 681b         	ldr	r3, [r3]
  30fec4: 9a05         	ldr	r2, [sp, #0x14]
  30fec6: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  30feca: 4610         	mov	r0, r2
  30fecc: f04f 4180    	mov.w	r1, #0x40000000
  30fed0: 4798         	blx	r3
  30fed2: 9b05         	ldr	r3, [sp, #0x14]
  30fed4: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  30fed8: 681b         	ldr	r3, [r3]
  30feda: 3390         	adds	r3, #0x90
  30fedc: 681b         	ldr	r3, [r3]
  30fede: 9a05         	ldr	r2, [sp, #0x14]
  30fee0: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  30fee4: 4610         	mov	r0, r2
  30fee6: 2100         	movs	r1, #0x0
  30fee8: 4798         	blx	r3
  30feea: 9b05         	ldr	r3, [sp, #0x14]
  30feec: 681b         	ldr	r3, [r3]
  30feee: f503 73f0    	add.w	r3, r3, #0x1e0
  30fef2: 681b         	ldr	r3, [r3]
  30fef4: 9805         	ldr	r0, [sp, #0x14]
  30fef6: 4798         	blx	r3
  30fef8: 9b05         	ldr	r3, [sp, #0x14]
  30fefa: 681b         	ldr	r3, [r3]
  30fefc: 33cc         	adds	r3, #0xcc
  30fefe: 681b         	ldr	r3, [r3]
  30ff00: 9905         	ldr	r1, [sp, #0x14]
  30ff02: 9a05         	ldr	r2, [sp, #0x14]
  30ff04: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  30ff08: 4608         	mov	r0, r1
  30ff0a: 4611         	mov	r1, r2
  30ff0c: 2200         	movs	r2, #0x0
  30ff0e: 4798         	blx	r3
  30ff10: 9b05         	ldr	r3, [sp, #0x14]
  30ff12: 681b         	ldr	r3, [r3]
  30ff14: 33cc         	adds	r3, #0xcc
  30ff16: 681b         	ldr	r3, [r3]
  30ff18: 9905         	ldr	r1, [sp, #0x14]
  30ff1a: 9a05         	ldr	r2, [sp, #0x14]
  30ff1c: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  30ff20: 4608         	mov	r0, r1
  30ff22: 4611         	mov	r1, r2
  30ff24: 2200         	movs	r2, #0x0
  30ff26: 4798         	blx	r3
  30ff28: 9b05         	ldr	r3, [sp, #0x14]
  30ff2a: f8d3 4150    	ldr.w	r4, [r3, #0x150]
  30ff2e: f04f 507e    	mov.w	r0, #0x3f800000
  30ff32: f7cc fea7    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x332b2
  30ff36: 4603         	mov	r3, r0
  30ff38: 4620         	mov	r0, r4
  30ff3a: 4619         	mov	r1, r3
  30ff3c: f28a f996    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x28a32c
  30ff40: 9b05         	ldr	r3, [sp, #0x14]
  30ff42: f8d3 414c    	ldr.w	r4, [r3, #0x14c]
  30ff46: ab07         	add	r3, sp, #0x1c
  30ff48: 4618         	mov	r0, r3
  30ff4a: f07a f253    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x47a4a6
  30ff4e: aa08         	add	r2, sp, #0x20
  30ff50: ab07         	add	r3, sp, #0x1c
  30ff52: 4610         	mov	r0, r2
  30ff54: 4a70         	ldr	r2, [pc, #0x1c0]        @ 0x310118 <DEAGLE::init()+0x2f0>
  30ff56: 447a         	add	r2, pc
  30ff58: 4611         	mov	r1, r2
  30ff5a: 461a         	mov	r2, r3
  30ff5c: f0a6 f580    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4a6b00
  30ff60: ab08         	add	r3, sp, #0x20
  30ff62: 4618         	mov	r0, r3
  30ff64: f289 fd6a    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x289ad4
  30ff68: 4603         	mov	r3, r0
  30ff6a: 4620         	mov	r0, r4
  30ff6c: 4619         	mov	r1, r3
  30ff6e: f28a f97d    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x28a2fa
  30ff72: ab08         	add	r3, sp, #0x20
  30ff74: 4618         	mov	r0, r3
  30ff76: f0a5 f4cd    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a599a
  30ff7a: ab07         	add	r3, sp, #0x1c
  30ff7c: 4618         	mov	r0, r3
  30ff7e: f07a f23d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x47a47a
  30ff82: 9b05         	ldr	r3, [sp, #0x14]
  30ff84: f8d3 4150    	ldr.w	r4, [r3, #0x150]
  30ff88: f246 6066    	movw	r0, #0x6666
  30ff8c: f6c3 7066    	movt	r0, #0x3f66
  30ff90: f7cc fe78    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x33310
  30ff94: 4603         	mov	r3, r0
  30ff96: 4620         	mov	r0, r4
  30ff98: 4619         	mov	r1, r3
  30ff9a: f28a f967    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x28a2ce
  30ff9e: 9b05         	ldr	r3, [sp, #0x14]
  30ffa0: f8d3 414c    	ldr.w	r4, [r3, #0x14c]
  30ffa4: ab07         	add	r3, sp, #0x1c
  30ffa6: 4618         	mov	r0, r3
  30ffa8: f07a f224    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x47a448
  30ffac: aa08         	add	r2, sp, #0x20
  30ffae: ab07         	add	r3, sp, #0x1c
  30ffb0: 4610         	mov	r0, r2
  30ffb2: 4a5a         	ldr	r2, [pc, #0x168]        @ 0x31011c <DEAGLE::init()+0x2f4>
  30ffb4: 447a         	add	r2, pc
  30ffb6: 4611         	mov	r1, r2
  30ffb8: 461a         	mov	r2, r3
  30ffba: f0a6 f551    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4a6aa2
  30ffbe: ab08         	add	r3, sp, #0x20
  30ffc0: 4618         	mov	r0, r3
  30ffc2: f289 fd3b    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x289a76
  30ffc6: 4603         	mov	r3, r0
  30ffc8: 4620         	mov	r0, r4
  30ffca: 4619         	mov	r1, r3
  30ffcc: f28a f94e    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x28a29c
  30ffd0: ab08         	add	r3, sp, #0x20
  30ffd2: 4618         	mov	r0, r3
  30ffd4: f0a5 f49e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a593c
  30ffd8: ab07         	add	r3, sp, #0x1c
  30ffda: 4618         	mov	r0, r3
  30ffdc: f07a f20e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x47a41c
  30ffe0: 9b05         	ldr	r3, [sp, #0x14]
  30ffe2: 2200         	movs	r2, #0x0
  30ffe4: f8c3 2144    	str.w	r2, [r3, #0x144]
  30ffe8: 9b05         	ldr	r3, [sp, #0x14]
  30ffea: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  30ffee: 4618         	mov	r0, r3
  30fff0: 2100         	movs	r1, #0x0
  30fff2: f28a f895    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x28a12a
  30fff6: 4603         	mov	r3, r0
  30fff8: 4618         	mov	r0, r3
  30fffa: f7cc fe3b    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x3338a
  30fffe: 4602         	mov	r2, r0
  310000: 9b05         	ldr	r3, [sp, #0x14]
  310002: f8c3 2148    	str.w	r2, [r3, #0x148]
  310006: 9b05         	ldr	r3, [sp, #0x14]
  310008: f04f 527a    	mov.w	r2, #0x3e800000
  31000c: f8c3 215c    	str.w	r2, [r3, #0x15c]
  310010: 9b05         	ldr	r3, [sp, #0x14]
  310012: f04f 0200    	mov.w	r2, #0x0
  310016: f6c3 72a0    	movt	r2, #0x3fa0
  31001a: f8c3 2160    	str.w	r2, [r3, #0x160]
  31001e: 9b05         	ldr	r3, [sp, #0x14]
  310020: f04f 4280    	mov.w	r2, #0x40000000
  310024: f8c3 2164    	str.w	r2, [r3, #0x164]
  310028: 9b05         	ldr	r3, [sp, #0x14]
  31002a: f04f 0200    	mov.w	r2, #0x0
  31002e: f2c4 1270    	movt	r2, #0x4170
  310032: f8c3 216c    	str.w	r2, [r3, #0x16c]
  310036: 9b05         	ldr	r3, [sp, #0x14]
  310038: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  31003c: 681b         	ldr	r3, [r3]
  31003e: 3398         	adds	r3, #0x98
  310040: 681b         	ldr	r3, [r3]
  310042: 9a05         	ldr	r2, [sp, #0x14]
  310044: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  310048: 4610         	mov	r0, r2
  31004a: f04f 0100    	mov.w	r1, #0x0
  31004e: f2c4 01e0    	movt	r1, #0x40e0
  310052: 4798         	blx	r3
  310054: 9b05         	ldr	r3, [sp, #0x14]
  310056: 2232         	movs	r2, #0x32
  310058: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  31005c: 9b05         	ldr	r3, [sp, #0x14]
  31005e: 220f         	movs	r2, #0xf
  310060: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  310064: 9b05         	ldr	r3, [sp, #0x14]
  310066: 220f         	movs	r2, #0xf
  310068: f8c3 2170    	str.w	r2, [r3, #0x170]
  31006c: 9b05         	ldr	r3, [sp, #0x14]
  31006e: 224b         	movs	r2, #0x4b
  310070: f8c3 2174    	str.w	r2, [r3, #0x174]
  310074: 9b05         	ldr	r3, [sp, #0x14]
  310076: 2232         	movs	r2, #0x32
  310078: f8c3 218c    	str.w	r2, [r3, #0x18c]
  31007c: 9b05         	ldr	r3, [sp, #0x14]
  31007e: 2203         	movs	r2, #0x3
  310080: f8c3 2188    	str.w	r2, [r3, #0x188]
  310084: 9b05         	ldr	r3, [sp, #0x14]
  310086: 220f         	movs	r2, #0xf
  310088: f8c3 219c    	str.w	r2, [r3, #0x19c]
  31008c: 9b05         	ldr	r3, [sp, #0x14]
  31008e: 2223         	movs	r2, #0x23
  310090: f8c3 21a0    	str.w	r2, [r3, #0x1a0]
  310094: 4b22         	ldr	r3, [pc, #0x88]         @ 0x310120 <DEAGLE::init()+0x2f8>
  310096: 447b         	add	r3, pc
  310098: 681a         	ldr	r2, [r3]
  31009a: 9b05         	ldr	r3, [sp, #0x14]
  31009c: f8c3 21a4    	str.w	r2, [r3, #0x1a4]
  3100a0: 9b05         	ldr	r3, [sp, #0x14]
  3100a2: 2201         	movs	r2, #0x1
  3100a4: f883 2183    	strb.w	r2, [r3, #0x183]
  3100a8: 9c05         	ldr	r4, [sp, #0x14]
  3100aa: 466b         	mov	r3, sp
  3100ac: 4618         	mov	r0, r3
  3100ae: ed9f 0b16    	vldr	d0, [pc, #88]           @ 0x310108 <DEAGLE::init()+0x2e0>
  3100b2: eeb2 1b0e    	vmov.f64	d1, #1.500000e+01
  3100b6: f7fe ffcb    	bl	0x30f050 <CustomAvatarLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x1e8> @ imm = #-0x106a
  3100ba: f504 74ec    	add.w	r4, r4, #0x1d8
  3100be: 466b         	mov	r3, sp
  3100c0: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3100c2: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3100c6: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x310124 <DEAGLE::init()+0x2fc>
  3100c8: 447b         	add	r3, pc
  3100ca: 681a         	ldr	r2, [r3]
  3100cc: 9b05         	ldr	r3, [sp, #0x14]
  3100ce: f8c3 2198    	str.w	r2, [r3, #0x198]
  3100d2: 2301         	movs	r3, #0x1
  3100d4: e015         	b	0x310102 <DEAGLE::init()+0x2da> @ imm = #0x2a
  3100d6: ab08         	add	r3, sp, #0x20
  3100d8: 4618         	mov	r0, r3
  3100da: f0a5 f41b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a5836
  3100de: e7ff         	b	0x3100e0 <DEAGLE::init()+0x2b8> @ imm = #-0x2
  3100e0: ab07         	add	r3, sp, #0x1c
  3100e2: 4618         	mov	r0, r3
  3100e4: f07a f18a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x47a314
  3100e8: f077 f7e0    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x477fc0
  3100ec: ab08         	add	r3, sp, #0x20
  3100ee: 4618         	mov	r0, r3
  3100f0: f0a5 f410    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a5820
  3100f4: e7ff         	b	0x3100f6 <DEAGLE::init()+0x2ce> @ imm = #-0x2
  3100f6: ab07         	add	r3, sp, #0x1c
  3100f8: 4618         	mov	r0, r3
  3100fa: f07a f17f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x47a2fe
  3100fe: f077 f7d5    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x477faa
  310102: 4618         	mov	r0, r3
  310104: b00b         	add	sp, #0x2c
  310106: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x310107); words below are literal-pool data ---
  310108: 0000         	movs	r0, r0
  31010a: 0000         	movs	r0, r0
  31010c: 4000         	ands	r0, r0
  31010e: 4055         	eors	r5, r2
  310110: 6764         	str	r4, [r4, #0x74]
  310112: 004b         	lsls	r3, r1, #0x1
  310114: 6756         	str	r6, [r2, #0x74]
  310116: 004b         	lsls	r3, r1, #0x1
  310118: 667a         	str	r2, [r7, #0x64]
  31011a: 004b         	lsls	r3, r1, #0x1
  31011c: 6620         	str	r0, [r4, #0x60]
  31011e: 004b         	lsls	r3, r1, #0x1
  310120: 3226         	adds	r2, #0x26
  310122: 0062         	lsls	r2, r4, #0x1
  310124: 31f0         	adds	r1, #0xf0
  310126: 0062         	lsls	r2, r4, #0x1

// ==== DEAGLE::~DEAGLE
//      file offset 0x310128 (= ELF address; Ghidra 0x320128), 92 bytes, Thumb-2
  310128: b500         	push	{lr}
  31012a: b083         	sub	sp, #0xc
  31012c: 9001         	str	r0, [sp, #0x4]
  31012e: 4913         	ldr	r1, [pc, #0x4c]         @ 0x31017c <DEAGLE::~DEAGLE()+0x54>
  310130: 4479         	add	r1, pc
  310132: 9b01         	ldr	r3, [sp, #0x4]
  310134: 4a12         	ldr	r2, [pc, #0x48]         @ 0x310180 <DEAGLE::~DEAGLE()+0x58>
  310136: 588a         	ldr	r2, [r1, r2]
  310138: 3208         	adds	r2, #0x8
  31013a: 601a         	str	r2, [r3]
  31013c: 9b01         	ldr	r3, [sp, #0x4]
  31013e: 4618         	mov	r0, r3
  310140: f280 fa74    	bl	0x59062c <cocos2d::CCNode::removeAllChildren()> @ imm = #0x2804e8
  310144: 9b01         	ldr	r3, [sp, #0x4]
  310146: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  31014a: 4618         	mov	r0, r3
  31014c: f287 feb4    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x287d68
  310150: 9b01         	ldr	r3, [sp, #0x4]
  310152: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  310156: 4618         	mov	r0, r3
  310158: f287 feae    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x287d5c
  31015c: 9b01         	ldr	r3, [sp, #0x4]
  31015e: 4618         	mov	r0, r3
  310160: f105 f846    	bl	0x4151f0 <Weapon::~Weapon()> @ imm = #0x10508c
  310164: 2300         	movs	r3, #0x0
  310166: 2b00         	cmp	r3, #0x0
  310168: d002         	beq	0x310170 <DEAGLE::~DEAGLE()+0x48> @ imm = #0x4
  31016a: 9801         	ldr	r0, [sp, #0x4]
  31016c: f077 f79a    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x477f34
  310170: 9b01         	ldr	r3, [sp, #0x4]
  310172: 4618         	mov	r0, r3
  310174: b003         	add	sp, #0xc
  310176: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x310179); words below are literal-pool data ---
  31017a: bf00         	nop
  31017c: 28d8         	cmp	r0, #0xd8
  31017e: 0062         	lsls	r2, r4, #0x1
  310180: d9bc         	bls	0x3100fc <DEAGLE::init()+0x2d4> @ imm = #-0x88
  310182: ffff b500    	<unknown>

// ==== DEAGLE::~DEAGLE
//      file offset 0x310184 (= ELF address; Ghidra 0x320184), 28 bytes, Thumb-2
  310184: b500         	push	{lr}
  310186: b083         	sub	sp, #0xc
  310188: 9001         	str	r0, [sp, #0x4]
  31018a: 9801         	ldr	r0, [sp, #0x4]
  31018c: f7ff ffcc    	bl	0x310128 <DEAGLE::~DEAGLE()> @ imm = #-0x68
  310190: 9801         	ldr	r0, [sp, #0x4]
  310192: f077 f787    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x477f0e
  310196: 9b01         	ldr	r3, [sp, #0x4]
  310198: 4618         	mov	r0, r3
  31019a: b003         	add	sp, #0xc
  31019c: f85d fb04    	ldr	pc, [sp], #4

// ==== DEAGLE::triggerPull
//      file offset 0x3101a0 (= ELF address; Ghidra 0x3201a0), 352 bytes, Thumb-2
  3101a0: b510         	push	{r4, lr}
  3101a2: b088         	sub	sp, #0x20
  3101a4: 9003         	str	r0, [sp, #0xc]
  3101a6: 9102         	str	r1, [sp, #0x8]
  3101a8: 4c53         	ldr	r4, [pc, #0x14c]        @ 0x3102f8 <DEAGLE::triggerPull(float)+0x158>
  3101aa: 447c         	add	r4, pc
  3101ac: 9b03         	ldr	r3, [sp, #0xc]
  3101ae: ed93 7a44    	vldr	s14, [r3, #272]
  3101b2: 9b03         	ldr	r3, [sp, #0xc]
  3101b4: edd3 7a57    	vldr	s15, [r3, #348]
  3101b8: eeb4 7ae7    	vcmpe.f32	s14, s15
  3101bc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3101c0: dd71         	ble	0x3102a6 <DEAGLE::triggerPull(float)+0x106> @ imm = #0xe2
  3101c2: 9b03         	ldr	r3, [sp, #0xc]
  3101c4: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  3101c8: b21b         	sxth	r3, r3
  3101ca: 2b00         	cmp	r3, #0x0
  3101cc: dd0f         	ble	0x3101ee <DEAGLE::triggerPull(float)+0x4e> @ imm = #0x1e
  3101ce: 9b03         	ldr	r3, [sp, #0xc]
  3101d0: 681b         	ldr	r3, [r3]
  3101d2: f503 7333    	add.w	r3, r3, #0x2cc
  3101d6: 681b         	ldr	r3, [r3]
  3101d8: 9a03         	ldr	r2, [sp, #0xc]
  3101da: 4610         	mov	r0, r2
  3101dc: 4798         	blx	r3
  3101de: 4603         	mov	r3, r0
  3101e0: f083 0301    	eor	r3, r3, #0x1
  3101e4: b2db         	uxtb	r3, r3
  3101e6: 2b00         	cmp	r3, #0x0
  3101e8: d001         	beq	0x3101ee <DEAGLE::triggerPull(float)+0x4e> @ imm = #0x2
  3101ea: 2301         	movs	r3, #0x1
  3101ec: e000         	b	0x3101f0 <DEAGLE::triggerPull(float)+0x50> @ imm = #0x0
  3101ee: 2300         	movs	r3, #0x0
  3101f0: 2b00         	cmp	r3, #0x0
  3101f2: d02c         	beq	0x31024e <DEAGLE::triggerPull(float)+0xae> @ imm = #0x58
  3101f4: 9b03         	ldr	r3, [sp, #0xc]
  3101f6: 2201         	movs	r2, #0x1
  3101f8: f883 2180    	strb.w	r2, [r3, #0x180]
  3101fc: 9b03         	ldr	r3, [sp, #0xc]
  3101fe: 681b         	ldr	r3, [r3]
  310200: f503 7325    	add.w	r3, r3, #0x294
  310204: 681b         	ldr	r3, [r3]
  310206: 9803         	ldr	r0, [sp, #0xc]
  310208: 4798         	blx	r3
  31020a: 9b03         	ldr	r3, [sp, #0xc]
  31020c: 681b         	ldr	r3, [r3]
  31020e: f503 7342    	add.w	r3, r3, #0x308
  310212: 681b         	ldr	r3, [r3]
  310214: 9a03         	ldr	r2, [sp, #0xc]
  310216: 4610         	mov	r0, r2
  310218: 4798         	blx	r3
  31021a: 9b03         	ldr	r3, [sp, #0xc]
  31021c: 681b         	ldr	r3, [r3]
  31021e: f503 7343    	add.w	r3, r3, #0x30c
  310222: 681b         	ldr	r3, [r3]
  310224: 9a03         	ldr	r2, [sp, #0xc]
  310226: 4610         	mov	r0, r2
  310228: 4798         	blx	r3
  31022a: 9b03         	ldr	r3, [sp, #0xc]
  31022c: f893 3195    	ldrb.w	r3, [r3, #0x195]
  310230: 3301         	adds	r3, #0x1
  310232: b2da         	uxtb	r2, r3
  310234: 9b03         	ldr	r3, [sp, #0xc]
  310236: f883 2195    	strb.w	r2, [r3, #0x195]
  31023a: 9b03         	ldr	r3, [sp, #0xc]
  31023c: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  310240: b29b         	uxth	r3, r3
  310242: 3b00         	subs	r3, #0x0
  310244: b29a         	uxth	r2, r3
  310246: 9b03         	ldr	r3, [sp, #0xc]
  310248: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  31024c: e026         	b	0x31029c <DEAGLE::triggerPull(float)+0xfc> @ imm = #0x4c
  31024e: 9b03         	ldr	r3, [sp, #0xc]
  310250: 681b         	ldr	r3, [r3]
  310252: f503 7333    	add.w	r3, r3, #0x2cc
  310256: 681b         	ldr	r3, [r3]
  310258: 9a03         	ldr	r2, [sp, #0xc]
  31025a: 4610         	mov	r0, r2
  31025c: 4798         	blx	r3
  31025e: 4603         	mov	r3, r0
  310260: f083 0301    	eor	r3, r3, #0x1
  310264: b2db         	uxtb	r3, r3
  310266: 2b00         	cmp	r3, #0x0
  310268: d018         	beq	0x31029c <DEAGLE::triggerPull(float)+0xfc> @ imm = #0x30
  31026a: 4b24         	ldr	r3, [pc, #0x90]         @ 0x3102fc <DEAGLE::triggerPull(float)+0x15c>
  31026c: 58e3         	ldr	r3, [r4, r3]
  31026e: 681c         	ldr	r4, [r3]
  310270: 9b03         	ldr	r3, [sp, #0xc]
  310272: 681b         	ldr	r3, [r3]
  310274: f503 7348    	add.w	r3, r3, #0x320
  310278: 681b         	ldr	r3, [r3]
  31027a: 9a03         	ldr	r2, [sp, #0xc]
  31027c: a904         	add	r1, sp, #0x10
  31027e: 4608         	mov	r0, r1
  310280: 4611         	mov	r1, r2
  310282: 4798         	blx	r3
  310284: 466b         	mov	r3, sp
  310286: aa06         	add	r2, sp, #0x18
  310288: e892 0003    	ldm.w	r2, {r0, r1}
  31028c: e883 0003    	stm.w	r3, {r0, r1}
  310290: ab04         	add	r3, sp, #0x10
  310292: cb0c         	ldm	r3, {r2, r3}
  310294: 4620         	mov	r0, r4
  310296: 2100         	movs	r1, #0x0
  310298: f0e7 feae    	bl	0x3f7ff8 <Sound::playSoundPosition(int, cpVect)> @ imm = #0xe7d5c
  31029c: 9b03         	ldr	r3, [sp, #0xc]
  31029e: f04f 0200    	mov.w	r2, #0x0
  3102a2: f8c3 2110    	str.w	r2, [r3, #0x110]
  3102a6: 9b03         	ldr	r3, [sp, #0xc]
  3102a8: 681b         	ldr	r3, [r3]
  3102aa: f503 7333    	add.w	r3, r3, #0x2cc
  3102ae: 681b         	ldr	r3, [r3]
  3102b0: 9a03         	ldr	r2, [sp, #0xc]
  3102b2: 4610         	mov	r0, r2
  3102b4: 4798         	blx	r3
  3102b6: 4603         	mov	r3, r0
  3102b8: f083 0301    	eor	r3, r3, #0x1
  3102bc: b2db         	uxtb	r3, r3
  3102be: 2b00         	cmp	r3, #0x0
  3102c0: d00c         	beq	0x3102dc <DEAGLE::triggerPull(float)+0x13c> @ imm = #0x18
  3102c2: 9b03         	ldr	r3, [sp, #0xc]
  3102c4: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  3102c8: 2b00         	cmp	r3, #0x0
  3102ca: d107         	bne	0x3102dc <DEAGLE::triggerPull(float)+0x13c> @ imm = #0xe
  3102cc: 9b03         	ldr	r3, [sp, #0xc]
  3102ce: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  3102d2: b21b         	sxth	r3, r3
  3102d4: 2b00         	cmp	r3, #0x0
  3102d6: dd01         	ble	0x3102dc <DEAGLE::triggerPull(float)+0x13c> @ imm = #0x2
  3102d8: 2301         	movs	r3, #0x1
  3102da: e000         	b	0x3102de <DEAGLE::triggerPull(float)+0x13e> @ imm = #0x0
  3102dc: 2300         	movs	r3, #0x0
  3102de: 2b00         	cmp	r3, #0x0
  3102e0: d008         	beq	0x3102f4 <DEAGLE::triggerPull(float)+0x154> @ imm = #0x10
  3102e2: 9b03         	ldr	r3, [sp, #0xc]
  3102e4: 2201         	movs	r2, #0x1
  3102e6: f883 2181    	strb.w	r2, [r3, #0x181]
  3102ea: 9b03         	ldr	r3, [sp, #0xc]
  3102ec: f04f 0200    	mov.w	r2, #0x0
  3102f0: f8c3 2158    	str.w	r2, [r3, #0x158]
  3102f4: b008         	add	sp, #0x20
  3102f6: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3102f7); words below are literal-pool data ---
  3102f8: 285e         	cmp	r0, #0x5e
  3102fa: 0062         	lsls	r2, r4, #0x1
  3102fc: d730         	bvc	0x310360 <DEAGLE::updateItemStep(float)+0x60> @ imm = #0x60
  3102fe: ffff b500    	<unknown>

// ==== DEAGLE::updateItemStep
//      file offset 0x310300 (= ELF address; Ghidra 0x320300), 282 bytes, Thumb-2
  310300: b500         	push	{lr}
  310302: ed2d 8b02    	vpush	{d8}
  310306: b085         	sub	sp, #0x14
  310308: 9001         	str	r0, [sp, #0x4]
  31030a: 9100         	str	r1, [sp]
  31030c: 9b01         	ldr	r3, [sp, #0x4]
  31030e: ed93 7a56    	vldr	s14, [r3, #344]
  310312: eddd 7a00    	vldr	s15, [sp]
  310316: ee77 7a27    	vadd.f32	s15, s14, s15
  31031a: 9b01         	ldr	r3, [sp, #0x4]
  31031c: edc3 7a56    	vstr	s15, [r3, #344]
  310320: 9b01         	ldr	r3, [sp, #0x4]
  310322: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  310326: 681b         	ldr	r3, [r3]
  310328: 3390         	adds	r3, #0x90
  31032a: 681b         	ldr	r3, [r3]
  31032c: 9a01         	ldr	r2, [sp, #0x4]
  31032e: f8d2 11f0    	ldr.w	r1, [r2, #0x1f0]
  310332: 9a01         	ldr	r2, [sp, #0x4]
  310334: f892 2180    	ldrb.w	r2, [r2, #0x180]
  310338: 4608         	mov	r0, r1
  31033a: 4611         	mov	r1, r2
  31033c: 4798         	blx	r3
  31033e: 9b01         	ldr	r3, [sp, #0x4]
  310340: 681b         	ldr	r3, [r3]
  310342: f503 7315    	add.w	r3, r3, #0x254
  310346: 681b         	ldr	r3, [r3]
  310348: 9a01         	ldr	r2, [sp, #0x4]
  31034a: 4610         	mov	r0, r2
  31034c: 9900         	ldr	r1, [sp]
  31034e: 4798         	blx	r3
  310350: 9b01         	ldr	r3, [sp, #0x4]
  310352: f893 3181    	ldrb.w	r3, [r3, #0x181]
  310356: 2b00         	cmp	r3, #0x0
  310358: d013         	beq	0x310382 <DEAGLE::updateItemStep(float)+0x82> @ imm = #0x26
  31035a: 9b01         	ldr	r3, [sp, #0x4]
  31035c: ed93 8a56    	vldr	s16, [r3, #344]
  310360: 9b01         	ldr	r3, [sp, #0x4]
  310362: 681b         	ldr	r3, [r3]
  310364: f503 732e    	add.w	r3, r3, #0x2b8
  310368: 681b         	ldr	r3, [r3]
  31036a: 9a01         	ldr	r2, [sp, #0x4]
  31036c: 4610         	mov	r0, r2
  31036e: 4798         	blx	r3
  310370: ee07 0a90    	vmov	s15, r0
  310374: eeb4 8ae7    	vcmpe.f32	s16, s15
  310378: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  31037c: dd01         	ble	0x310382 <DEAGLE::updateItemStep(float)+0x82> @ imm = #0x2
  31037e: 2301         	movs	r3, #0x1
  310380: e000         	b	0x310384 <DEAGLE::updateItemStep(float)+0x84> @ imm = #0x0
  310382: 2300         	movs	r3, #0x0
  310384: 2b00         	cmp	r3, #0x0
  310386: d043         	beq	0x310410 <DEAGLE::updateItemStep(float)+0x110> @ imm = #0x86
  310388: 9b01         	ldr	r3, [sp, #0x4]
  31038a: 2200         	movs	r2, #0x0
  31038c: f883 2181    	strb.w	r2, [r3, #0x181]
  310390: 9b01         	ldr	r3, [sp, #0x4]
  310392: f04f 0200    	mov.w	r2, #0x0
  310396: f8c3 2110    	str.w	r2, [r3, #0x110]
  31039a: 9b01         	ldr	r3, [sp, #0x4]
  31039c: 681b         	ldr	r3, [r3]
  31039e: f503 732d    	add.w	r3, r3, #0x2b4
  3103a2: 681b         	ldr	r3, [r3]
  3103a4: 9a01         	ldr	r2, [sp, #0x4]
  3103a6: 4610         	mov	r0, r2
  3103a8: 4798         	blx	r3
  3103aa: 4602         	mov	r2, r0
  3103ac: 9b01         	ldr	r3, [sp, #0x4]
  3103ae: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  3103b2: b21b         	sxth	r3, r3
  3103b4: 1ad3         	subs	r3, r2, r3
  3103b6: 9303         	str	r3, [sp, #0xc]
  3103b8: 9b01         	ldr	r3, [sp, #0x4]
  3103ba: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  3103be: b29a         	uxth	r2, r3
  3103c0: 9b03         	ldr	r3, [sp, #0xc]
  3103c2: b29b         	uxth	r3, r3
  3103c4: 1ad3         	subs	r3, r2, r3
  3103c6: b29b         	uxth	r3, r3
  3103c8: b29a         	uxth	r2, r3
  3103ca: 9b01         	ldr	r3, [sp, #0x4]
  3103cc: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  3103d0: 9b01         	ldr	r3, [sp, #0x4]
  3103d2: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  3103d6: b29a         	uxth	r2, r3
  3103d8: 9b03         	ldr	r3, [sp, #0xc]
  3103da: b29b         	uxth	r3, r3
  3103dc: 4413         	add	r3, r2
  3103de: b29a         	uxth	r2, r3
  3103e0: 9b01         	ldr	r3, [sp, #0x4]
  3103e2: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  3103e6: b21b         	sxth	r3, r3
  3103e8: ea03 73e3    	and.w	r3, r3, r3, asr #31
  3103ec: b29b         	uxth	r3, r3
  3103ee: b29b         	uxth	r3, r3
  3103f0: 4413         	add	r3, r2
  3103f2: b29b         	uxth	r3, r3
  3103f4: b29a         	uxth	r2, r3
  3103f6: 9b01         	ldr	r3, [sp, #0x4]
  3103f8: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  3103fc: 9b01         	ldr	r3, [sp, #0x4]
  3103fe: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  310402: b21b         	sxth	r3, r3
  310404: ea23 73e3    	bic.w	r3, r3, r3, asr #31
  310408: b29a         	uxth	r2, r3
  31040a: 9b01         	ldr	r3, [sp, #0x4]
  31040c: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  310410: b005         	add	sp, #0x14
  310412: ecbd 8b02    	vpop	{d8}
  310416: f85d fb04    	ldr	pc, [sp], #4

// ==== DEAGLE::updateRemoteItemStep
//      file offset 0x31041c (= ELF address; Ghidra 0x32041c), 94 bytes, Thumb-2
  31041c: b500         	push	{lr}
  31041e: b083         	sub	sp, #0xc
  310420: 9001         	str	r0, [sp, #0x4]
  310422: 9100         	str	r1, [sp]
  310424: 9b01         	ldr	r3, [sp, #0x4]
  310426: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  31042a: 681b         	ldr	r3, [r3]
  31042c: 3390         	adds	r3, #0x90
  31042e: 681b         	ldr	r3, [r3]
  310430: 9a01         	ldr	r2, [sp, #0x4]
  310432: f8d2 11f0    	ldr.w	r1, [r2, #0x1f0]
  310436: 9a01         	ldr	r2, [sp, #0x4]
  310438: f892 2180    	ldrb.w	r2, [r2, #0x180]
  31043c: 4608         	mov	r0, r1
  31043e: 4611         	mov	r1, r2
  310440: 4798         	blx	r3
  310442: 9b01         	ldr	r3, [sp, #0x4]
  310444: 681b         	ldr	r3, [r3]
  310446: f503 7315    	add.w	r3, r3, #0x254
  31044a: 681b         	ldr	r3, [r3]
  31044c: 9a01         	ldr	r2, [sp, #0x4]
  31044e: 4610         	mov	r0, r2
  310450: 9900         	ldr	r1, [sp]
  310452: 4798         	blx	r3
  310454: 9b01         	ldr	r3, [sp, #0x4]
  310456: f893 2194    	ldrb.w	r2, [r3, #0x194]
  31045a: 9b01         	ldr	r3, [sp, #0x4]
  31045c: f893 3195    	ldrb.w	r3, [r3, #0x195]
  310460: 429a         	cmp	r2, r3
  310462: d007         	beq	0x310474 <DEAGLE::updateRemoteItemStep(float)+0x58> @ imm = #0xe
  310464: 9b01         	ldr	r3, [sp, #0x4]
  310466: 681b         	ldr	r3, [r3]
  310468: f503 7318    	add.w	r3, r3, #0x260
  31046c: 681b         	ldr	r3, [r3]
  31046e: 9801         	ldr	r0, [sp, #0x4]
  310470: 9900         	ldr	r1, [sp]
  310472: 4798         	blx	r3
  310474: b003         	add	sp, #0xc
  310476: f85d fb04    	ldr	pc, [sp], #4

// ==== DEAGLE::remoteTriggerPull
//      file offset 0x31047c (= ELF address; Ghidra 0x32047c), 116 bytes, Thumb-2
  31047c: b500         	push	{lr}
  31047e: b083         	sub	sp, #0xc
  310480: 9001         	str	r0, [sp, #0x4]
  310482: 9100         	str	r1, [sp]
  310484: 9b01         	ldr	r3, [sp, #0x4]
  310486: ed93 7a44    	vldr	s14, [r3, #272]
  31048a: 9b01         	ldr	r3, [sp, #0x4]
  31048c: edd3 7a57    	vldr	s15, [r3, #348]
  310490: eeb4 7ae7    	vcmpe.f32	s14, s15
  310494: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  310498: dd27         	ble	0x3104ea <DEAGLE::remoteTriggerPull(float)+0x6e> @ imm = #0x4e
  31049a: 9b01         	ldr	r3, [sp, #0x4]
  31049c: f04f 0200    	mov.w	r2, #0x0
  3104a0: f8c3 2110    	str.w	r2, [r3, #0x110]
  3104a4: 9b01         	ldr	r3, [sp, #0x4]
  3104a6: 2201         	movs	r2, #0x1
  3104a8: f883 2180    	strb.w	r2, [r3, #0x180]
  3104ac: 9b01         	ldr	r3, [sp, #0x4]
  3104ae: 681b         	ldr	r3, [r3]
  3104b0: f503 7325    	add.w	r3, r3, #0x294
  3104b4: 681b         	ldr	r3, [r3]
  3104b6: 9801         	ldr	r0, [sp, #0x4]
  3104b8: 4798         	blx	r3
  3104ba: 9b01         	ldr	r3, [sp, #0x4]
  3104bc: 681b         	ldr	r3, [r3]
  3104be: f503 7342    	add.w	r3, r3, #0x308
  3104c2: 681b         	ldr	r3, [r3]
  3104c4: 9a01         	ldr	r2, [sp, #0x4]
  3104c6: 4610         	mov	r0, r2
  3104c8: 4798         	blx	r3
  3104ca: 9b01         	ldr	r3, [sp, #0x4]
  3104cc: 681b         	ldr	r3, [r3]
  3104ce: f503 7343    	add.w	r3, r3, #0x30c
  3104d2: 681b         	ldr	r3, [r3]
  3104d4: 9a01         	ldr	r2, [sp, #0x4]
  3104d6: 4610         	mov	r0, r2
  3104d8: 4798         	blx	r3
  3104da: 9b01         	ldr	r3, [sp, #0x4]
  3104dc: f893 3195    	ldrb.w	r3, [r3, #0x195]
  3104e0: 3301         	adds	r3, #0x1
  3104e2: b2da         	uxtb	r2, r3
  3104e4: 9b01         	ldr	r3, [sp, #0x4]
  3104e6: f883 2195    	strb.w	r2, [r3, #0x195]
  3104ea: b003         	add	sp, #0xc
  3104ec: f85d fb04    	ldr	pc, [sp], #4

// ==== DEAGLE::getShellPoint
//      file offset 0x3104f0 (= ELF address; Ghidra 0x3204f0), 204 bytes, Thumb-2
  3104f0: b510         	push	{r4, lr}
  3104f2: b08e         	sub	sp, #0x38
  3104f4: 9001         	str	r0, [sp, #0x4]
  3104f6: 9100         	str	r1, [sp]
  3104f8: 4c2e         	ldr	r4, [pc, #0xb8]         @ 0x3105b4 <DEAGLE::getShellPoint()+0xc4>
  3104fa: 447c         	add	r4, pc
  3104fc: ab02         	add	r3, sp, #0x8
  3104fe: 4618         	mov	r0, r3
  310500: f04f 0100    	mov.w	r1, #0x0
  310504: f2c4 2120    	movt	r1, #0x4220
  310508: f04f 0200    	mov.w	r2, #0x0
  31050c: f2c4 1270    	movt	r2, #0x4170
  310510: f282 fbee    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2827dc
  310514: 9b00         	ldr	r3, [sp]
  310516: 681b         	ldr	r3, [r3]
  310518: 3350         	adds	r3, #0x50
  31051a: 681b         	ldr	r3, [r3]
  31051c: 9a00         	ldr	r2, [sp]
  31051e: 4610         	mov	r0, r2
  310520: 4798         	blx	r3
  310522: 4602         	mov	r2, r0
  310524: a906         	add	r1, sp, #0x18
  310526: ab02         	add	r3, sp, #0x8
  310528: 4608         	mov	r0, r1
  31052a: 4611         	mov	r1, r2
  31052c: 461a         	mov	r2, r3
  31052e: f7fe fd7f    	bl	0x30f030 <CustomAvatarLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x1c8> @ imm = #-0x1502
  310532: 9b00         	ldr	r3, [sp]
  310534: 681b         	ldr	r3, [r3]
  310536: f503 73c2    	add.w	r3, r3, #0x184
  31053a: 681b         	ldr	r3, [r3]
  31053c: 9a00         	ldr	r2, [sp]
  31053e: a908         	add	r1, sp, #0x20
  310540: 4608         	mov	r0, r1
  310542: 4611         	mov	r1, r2
  310544: 4798         	blx	r3
  310546: a904         	add	r1, sp, #0x10
  310548: aa06         	add	r2, sp, #0x18
  31054a: ab08         	add	r3, sp, #0x20
  31054c: 4608         	mov	r0, r1
  31054e: 4611         	mov	r1, r2
  310550: 461a         	mov	r2, r3
  310552: f281 fee7    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x281dce
  310556: 4b18         	ldr	r3, [pc, #0x60]         @ 0x3105b8 <DEAGLE::getShellPoint()+0xc8>
  310558: 58e3         	ldr	r3, [r4, r3]
  31055a: 681b         	ldr	r3, [r3]
  31055c: 681b         	ldr	r3, [r3]
  31055e: f503 73c4    	add.w	r3, r3, #0x188
  310562: 681b         	ldr	r3, [r3]
  310564: 4a14         	ldr	r2, [pc, #0x50]         @ 0x3105b8 <DEAGLE::getShellPoint()+0xc8>
  310566: 58a2         	ldr	r2, [r4, r2]
  310568: 6812         	ldr	r2, [r2]
  31056a: a908         	add	r1, sp, #0x20
  31056c: 4608         	mov	r0, r1
  31056e: 4611         	mov	r1, r2
  310570: 4798         	blx	r3
  310572: a906         	add	r1, sp, #0x18
  310574: aa04         	add	r2, sp, #0x10
  310576: ab08         	add	r3, sp, #0x20
  310578: 4608         	mov	r0, r1
  31057a: 4611         	mov	r1, r2
  31057c: 461a         	mov	r2, r3
  31057e: f281 fed1    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x281da2
  310582: aa04         	add	r2, sp, #0x10
  310584: ab06         	add	r3, sp, #0x18
  310586: 4610         	mov	r0, r2
  310588: 4619         	mov	r1, r3
  31058a: f282 fbdf    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x2827be
  31058e: eddd 7a04    	vldr	s15, [sp, #16]
  310592: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  310596: eddd 7a05    	vldr	s15, [sp, #20]
  31059a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  31059e: 9b01         	ldr	r3, [sp, #0x4]
  3105a0: 4618         	mov	r0, r3
  3105a2: eeb0 0b46    	vmov.f64	d0, d6
  3105a6: eeb0 1b47    	vmov.f64	d1, d7
  3105aa: f7fe fd51    	bl	0x30f050 <CustomAvatarLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x1e8> @ imm = #-0x155e
  3105ae: 9801         	ldr	r0, [sp, #0x4]
  3105b0: b00e         	add	sp, #0x38
  3105b2: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3105b3); words below are literal-pool data ---
  3105b4: 250e         	movs	r5, #0xe
  3105b6: 0062         	lsls	r2, r4, #0x1
  3105b8: d744         	bvc	0x310644 <DEAGLE::setPrimaryConfiguration()+0x40> @ imm = #0x88
  3105ba: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== DEAGLE::playSound
//      file offset 0x3105bc (= ELF address; Ghidra 0x3205bc), 72 bytes, Thumb-2
  3105bc: b510         	push	{r4, lr}
  3105be: b088         	sub	sp, #0x20
  3105c0: 9003         	str	r0, [sp, #0xc]
  3105c2: 4a0e         	ldr	r2, [pc, #0x38]         @ 0x3105fc <DEAGLE::playSound()+0x40>
  3105c4: 447a         	add	r2, pc
  3105c6: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x310600 <DEAGLE::playSound()+0x44>
  3105c8: 58d3         	ldr	r3, [r2, r3]
  3105ca: 681c         	ldr	r4, [r3]
  3105cc: 9b03         	ldr	r3, [sp, #0xc]
  3105ce: 681b         	ldr	r3, [r3]
  3105d0: f503 7348    	add.w	r3, r3, #0x320
  3105d4: 681b         	ldr	r3, [r3]
  3105d6: 9a03         	ldr	r2, [sp, #0xc]
  3105d8: a904         	add	r1, sp, #0x10
  3105da: 4608         	mov	r0, r1
  3105dc: 4611         	mov	r1, r2
  3105de: 4798         	blx	r3
  3105e0: 466b         	mov	r3, sp
  3105e2: aa06         	add	r2, sp, #0x18
  3105e4: e892 0003    	ldm.w	r2, {r0, r1}
  3105e8: e883 0003    	stm.w	r3, {r0, r1}
  3105ec: ab04         	add	r3, sp, #0x10
  3105ee: cb0c         	ldm	r3, {r2, r3}
  3105f0: 4620         	mov	r0, r4
  3105f2: 2112         	movs	r1, #0x12
  3105f4: f0e7 fd00    	bl	0x3f7ff8 <Sound::playSoundPosition(int, cpVect)> @ imm = #0xe7a00
  3105f8: b008         	add	sp, #0x20
  3105fa: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3105fb); words below are literal-pool data ---
  3105fc: 2444         	movs	r4, #0x44
  3105fe: 0062         	lsls	r2, r4, #0x1
  310600: d730         	bvc	0x310664 <DEAGLE::setPrimaryConfiguration()+0x60> @ imm = #0x60
  310602: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== DEAGLE::setPrimaryConfiguration
//      file offset 0x310604 (= ELF address; Ghidra 0x320604), 316 bytes, Thumb-2
  310604: b530         	push	{r4, r5, lr}
  310606: b085         	sub	sp, #0x14
  310608: 9001         	str	r0, [sp, #0x4]
  31060a: 9b01         	ldr	r3, [sp, #0x4]
  31060c: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  310610: 2b00         	cmp	r3, #0x0
  310612: d019         	beq	0x310648 <DEAGLE::setPrimaryConfiguration()+0x44> @ imm = #0x32
  310614: 9b01         	ldr	r3, [sp, #0x4]
  310616: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  31061a: 4b48         	ldr	r3, [pc, #0x120]        @ 0x31073c <DEAGLE::setPrimaryConfiguration()+0x138>
  31061c: 447b         	add	r3, pc
  31061e: ed93 6b00    	vldr	d6, [r3]
  310622: ed93 7b02    	vldr	d7, [r3, #8]
  310626: 4610         	mov	r0, r2
  310628: eeb0 0b46    	vmov.f64	d0, d6
  31062c: eeb0 1b47    	vmov.f64	d1, d7
  310630: f7fe fd22    	bl	0x30f078 <CustomAvatarLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x210> @ imm = #-0x15bc
  310634: 9b01         	ldr	r3, [sp, #0x4]
  310636: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  31063a: 4618         	mov	r0, r3
  31063c: f04f 0200    	mov.w	r2, #0x0
  310640: f04f 0300    	mov.w	r3, #0x0
  310644: f3c2 fda5    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x3c2b4a
  310648: 9b01         	ldr	r3, [sp, #0x4]
  31064a: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  31064e: 681b         	ldr	r3, [r3]
  310650: 334c         	adds	r3, #0x4c
  310652: 681c         	ldr	r4, [r3]
  310654: 9b01         	ldr	r3, [sp, #0x4]
  310656: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  31065a: ab02         	add	r3, sp, #0x8
  31065c: 4618         	mov	r0, r3
  31065e: f04f 0100    	mov.w	r1, #0x0
  310662: f04f 0200    	mov.w	r2, #0x0
  310666: f282 fb43    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x282686
  31066a: ab02         	add	r3, sp, #0x8
  31066c: 4628         	mov	r0, r5
  31066e: 4619         	mov	r1, r3
  310670: 47a0         	blx	r4
  310672: 9b01         	ldr	r3, [sp, #0x4]
  310674: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  310678: 681b         	ldr	r3, [r3]
  31067a: 337c         	adds	r3, #0x7c
  31067c: 681c         	ldr	r4, [r3]
  31067e: 9b01         	ldr	r3, [sp, #0x4]
  310680: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  310684: ab02         	add	r3, sp, #0x8
  310686: 4618         	mov	r0, r3
  310688: f649 119a    	movw	r1, #0x999a
  31068c: f6cb 6199    	movt	r1, #0xbe99
  310690: f64c 42cd    	movw	r2, #0xcccd
  310694: f6c3 62cc    	movt	r2, #0x3ecc
  310698: f282 fb2a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x282654
  31069c: ab02         	add	r3, sp, #0x8
  31069e: 4628         	mov	r0, r5
  3106a0: 4619         	mov	r1, r3
  3106a2: 47a0         	blx	r4
  3106a4: 9b01         	ldr	r3, [sp, #0x4]
  3106a6: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3106aa: 681b         	ldr	r3, [r3]
  3106ac: 3398         	adds	r3, #0x98
  3106ae: 681b         	ldr	r3, [r3]
  3106b0: 9a01         	ldr	r2, [sp, #0x4]
  3106b2: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3106b6: 4610         	mov	r0, r2
  3106b8: f04f 0100    	mov.w	r1, #0x0
  3106bc: 4798         	blx	r3
  3106be: 9b01         	ldr	r3, [sp, #0x4]
  3106c0: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3106c4: 681b         	ldr	r3, [r3]
  3106c6: 3340         	adds	r3, #0x40
  3106c8: 681b         	ldr	r3, [r3]
  3106ca: 9a01         	ldr	r2, [sp, #0x4]
  3106cc: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3106d0: 4610         	mov	r0, r2
  3106d2: f04f 517e    	mov.w	r1, #0x3f800000
  3106d6: 4798         	blx	r3
  3106d8: 9b01         	ldr	r3, [sp, #0x4]
  3106da: 681b         	ldr	r3, [r3]
  3106dc: 334c         	adds	r3, #0x4c
  3106de: 681c         	ldr	r4, [r3]
  3106e0: 9d01         	ldr	r5, [sp, #0x4]
  3106e2: ab02         	add	r3, sp, #0x8
  3106e4: 4618         	mov	r0, r3
  3106e6: f04f 0100    	mov.w	r1, #0x0
  3106ea: f04f 0200    	mov.w	r2, #0x0
  3106ee: f282 faff    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2825fe
  3106f2: ab02         	add	r3, sp, #0x8
  3106f4: 4628         	mov	r0, r5
  3106f6: 4619         	mov	r1, r3
  3106f8: 47a0         	blx	r4
  3106fa: 9b01         	ldr	r3, [sp, #0x4]
  3106fc: 681b         	ldr	r3, [r3]
  3106fe: 3340         	adds	r3, #0x40
  310700: 681b         	ldr	r3, [r3]
  310702: 9a01         	ldr	r2, [sp, #0x4]
  310704: 4610         	mov	r0, r2
  310706: f04f 517e    	mov.w	r1, #0x3f800000
  31070a: 4798         	blx	r3
  31070c: 9b01         	ldr	r3, [sp, #0x4]
  31070e: 681b         	ldr	r3, [r3]
  310710: 3398         	adds	r3, #0x98
  310712: 681b         	ldr	r3, [r3]
  310714: 9a01         	ldr	r2, [sp, #0x4]
  310716: 4610         	mov	r0, r2
  310718: f04f 0100    	mov.w	r1, #0x0
  31071c: 4798         	blx	r3
  31071e: 9b01         	ldr	r3, [sp, #0x4]
  310720: 2200         	movs	r2, #0x0
  310722: f883 2195    	strb.w	r2, [r3, #0x195]
  310726: 9b01         	ldr	r3, [sp, #0x4]
  310728: 2200         	movs	r2, #0x0
  31072a: f883 2194    	strb.w	r2, [r3, #0x194]
  31072e: 9b01         	ldr	r3, [sp, #0x4]
  310730: f04f 0200    	mov.w	r2, #0x0
  310734: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  310738: b005         	add	sp, #0x14
  31073a: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x31073b); words below are literal-pool data ---
  31073c: 6000         	str	r0, [r0]
  31073e: 004b         	lsls	r3, r1, #0x1

// ==== DEAGLE::setSecondaryConfiguration
//      file offset 0x310740 (= ELF address; Ghidra 0x320740), 344 bytes, Thumb-2
  310740: b530         	push	{r4, r5, lr}
  310742: b085         	sub	sp, #0x14
  310744: 9001         	str	r0, [sp, #0x4]
  310746: 9b01         	ldr	r3, [sp, #0x4]
  310748: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  31074c: 2b00         	cmp	r3, #0x0
  31074e: d019         	beq	0x310784 <DEAGLE::setSecondaryConfiguration()+0x44> @ imm = #0x32
  310750: 9b01         	ldr	r3, [sp, #0x4]
  310752: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  310756: 4b4f         	ldr	r3, [pc, #0x13c]        @ 0x310894 <DEAGLE::setSecondaryConfiguration()+0x154>
  310758: 447b         	add	r3, pc
  31075a: ed93 6b00    	vldr	d6, [r3]
  31075e: ed93 7b02    	vldr	d7, [r3, #8]
  310762: 4610         	mov	r0, r2
  310764: eeb0 0b46    	vmov.f64	d0, d6
  310768: eeb0 1b47    	vmov.f64	d1, d7
  31076c: f7fe fc84    	bl	0x30f078 <CustomAvatarLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x210> @ imm = #-0x16f8
  310770: 9b01         	ldr	r3, [sp, #0x4]
  310772: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  310776: 4618         	mov	r0, r3
  310778: f04f 0200    	mov.w	r2, #0x0
  31077c: f04f 0300    	mov.w	r3, #0x0
  310780: f3c2 fd07    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x3c2a0e
  310784: 9b01         	ldr	r3, [sp, #0x4]
  310786: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  31078a: 681b         	ldr	r3, [r3]
  31078c: 334c         	adds	r3, #0x4c
  31078e: 681c         	ldr	r4, [r3]
  310790: 9b01         	ldr	r3, [sp, #0x4]
  310792: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  310796: ab02         	add	r3, sp, #0x8
  310798: 4618         	mov	r0, r3
  31079a: f04f 0100    	mov.w	r1, #0x0
  31079e: f2cc 11e0    	movt	r1, #0xc1e0
  3107a2: f04f 0200    	mov.w	r2, #0x0
  3107a6: f2cc 1220    	movt	r2, #0xc120
  3107aa: f282 faa1    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x282542
  3107ae: ab02         	add	r3, sp, #0x8
  3107b0: 4628         	mov	r0, r5
  3107b2: 4619         	mov	r1, r3
  3107b4: 47a0         	blx	r4
  3107b6: 9b01         	ldr	r3, [sp, #0x4]
  3107b8: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3107bc: 681b         	ldr	r3, [r3]
  3107be: 337c         	adds	r3, #0x7c
  3107c0: 681c         	ldr	r4, [r3]
  3107c2: 9b01         	ldr	r3, [sp, #0x4]
  3107c4: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  3107c8: ab02         	add	r3, sp, #0x8
  3107ca: 4618         	mov	r0, r3
  3107cc: f04f 517c    	mov.w	r1, #0x3f000000
  3107d0: f04f 527c    	mov.w	r2, #0x3f000000
  3107d4: f282 fa8c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x282518
  3107d8: ab02         	add	r3, sp, #0x8
  3107da: 4628         	mov	r0, r5
  3107dc: 4619         	mov	r1, r3
  3107de: 47a0         	blx	r4
  3107e0: 9b01         	ldr	r3, [sp, #0x4]
  3107e2: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3107e6: 681b         	ldr	r3, [r3]
  3107e8: 3398         	adds	r3, #0x98
  3107ea: 681b         	ldr	r3, [r3]
  3107ec: 9a01         	ldr	r2, [sp, #0x4]
  3107ee: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3107f2: 4610         	mov	r0, r2
  3107f4: f04f 0100    	mov.w	r1, #0x0
  3107f8: f2c4 21aa    	movt	r1, #0x42aa
  3107fc: 4798         	blx	r3
  3107fe: 9b01         	ldr	r3, [sp, #0x4]
  310800: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  310804: 681b         	ldr	r3, [r3]
  310806: 3340         	adds	r3, #0x40
  310808: 681b         	ldr	r3, [r3]
  31080a: 9a01         	ldr	r2, [sp, #0x4]
  31080c: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  310810: 4610         	mov	r0, r2
  310812: f04f 517e    	mov.w	r1, #0x3f800000
  310816: 4798         	blx	r3
  310818: 9b01         	ldr	r3, [sp, #0x4]
  31081a: 681b         	ldr	r3, [r3]
  31081c: 334c         	adds	r3, #0x4c
  31081e: 681c         	ldr	r4, [r3]
  310820: 9d01         	ldr	r5, [sp, #0x4]
  310822: ab02         	add	r3, sp, #0x8
  310824: 4618         	mov	r0, r3
  310826: f04f 0100    	mov.w	r1, #0x0
  31082a: f04f 0200    	mov.w	r2, #0x0
  31082e: f282 fa5f    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2824be
  310832: ab02         	add	r3, sp, #0x8
  310834: 4628         	mov	r0, r5
  310836: 4619         	mov	r1, r3
  310838: 47a0         	blx	r4
  31083a: 9b01         	ldr	r3, [sp, #0x4]
  31083c: 681b         	ldr	r3, [r3]
  31083e: 3340         	adds	r3, #0x40
  310840: 681b         	ldr	r3, [r3]
  310842: 9a01         	ldr	r2, [sp, #0x4]
  310844: 4610         	mov	r0, r2
  310846: f04f 517e    	mov.w	r1, #0x3f800000
  31084a: 4798         	blx	r3
  31084c: 9b01         	ldr	r3, [sp, #0x4]
  31084e: 681b         	ldr	r3, [r3]
  310850: 3398         	adds	r3, #0x98
  310852: 681b         	ldr	r3, [r3]
  310854: 9a01         	ldr	r2, [sp, #0x4]
  310856: 4610         	mov	r0, r2
  310858: f04f 0100    	mov.w	r1, #0x0
  31085c: 4798         	blx	r3
  31085e: 9b01         	ldr	r3, [sp, #0x4]
  310860: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  310864: 681b         	ldr	r3, [r3]
  310866: 3390         	adds	r3, #0x90
  310868: 681b         	ldr	r3, [r3]
  31086a: 9a01         	ldr	r2, [sp, #0x4]
  31086c: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  310870: 4610         	mov	r0, r2
  310872: 2100         	movs	r1, #0x0
  310874: 4798         	blx	r3
  310876: 9b01         	ldr	r3, [sp, #0x4]
  310878: 2200         	movs	r2, #0x0
  31087a: f883 2195    	strb.w	r2, [r3, #0x195]
  31087e: 9b01         	ldr	r3, [sp, #0x4]
  310880: 2200         	movs	r2, #0x0
  310882: f883 2194    	strb.w	r2, [r3, #0x194]
  310886: 9b01         	ldr	r3, [sp, #0x4]
  310888: f04f 0200    	mov.w	r2, #0x0
  31088c: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  310890: b005         	add	sp, #0x14
  310892: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x310893); words below are literal-pool data ---
  310894: 5ec4         	ldrsh	r4, [r0, r3]
  310896: 004b         	lsls	r3, r1, #0x1

// ==== DEAGLE::setDualConfiguration
//      file offset 0x310898 (= ELF address; Ghidra 0x320898), 316 bytes, Thumb-2
  310898: b530         	push	{r4, r5, lr}
  31089a: b085         	sub	sp, #0x14
  31089c: 9001         	str	r0, [sp, #0x4]
  31089e: 9b01         	ldr	r3, [sp, #0x4]
  3108a0: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3108a4: 2b00         	cmp	r3, #0x0
  3108a6: d019         	beq	0x3108dc <DEAGLE::setDualConfiguration()+0x44> @ imm = #0x32
  3108a8: 9b01         	ldr	r3, [sp, #0x4]
  3108aa: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  3108ae: 4b48         	ldr	r3, [pc, #0x120]        @ 0x3109d0 <DEAGLE::setDualConfiguration()+0x138>
  3108b0: 447b         	add	r3, pc
  3108b2: ed93 6b00    	vldr	d6, [r3]
  3108b6: ed93 7b02    	vldr	d7, [r3, #8]
  3108ba: 4610         	mov	r0, r2
  3108bc: eeb0 0b46    	vmov.f64	d0, d6
  3108c0: eeb0 1b47    	vmov.f64	d1, d7
  3108c4: f7fe fbd8    	bl	0x30f078 <CustomAvatarLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x210> @ imm = #-0x1850
  3108c8: 9b01         	ldr	r3, [sp, #0x4]
  3108ca: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3108ce: 4618         	mov	r0, r3
  3108d0: f04f 0200    	mov.w	r2, #0x0
  3108d4: f04f 0300    	mov.w	r3, #0x0
  3108d8: f3c2 fc5b    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x3c28b6
  3108dc: 9b01         	ldr	r3, [sp, #0x4]
  3108de: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3108e2: 681b         	ldr	r3, [r3]
  3108e4: 334c         	adds	r3, #0x4c
  3108e6: 681c         	ldr	r4, [r3]
  3108e8: 9b01         	ldr	r3, [sp, #0x4]
  3108ea: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  3108ee: ab02         	add	r3, sp, #0x8
  3108f0: 4618         	mov	r0, r3
  3108f2: f04f 0100    	mov.w	r1, #0x0
  3108f6: f04f 0200    	mov.w	r2, #0x0
  3108fa: f282 f9f9    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2823f2
  3108fe: ab02         	add	r3, sp, #0x8
  310900: 4628         	mov	r0, r5
  310902: 4619         	mov	r1, r3
  310904: 47a0         	blx	r4
  310906: 9b01         	ldr	r3, [sp, #0x4]
  310908: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  31090c: 681b         	ldr	r3, [r3]
  31090e: 337c         	adds	r3, #0x7c
  310910: 681c         	ldr	r4, [r3]
  310912: 9b01         	ldr	r3, [sp, #0x4]
  310914: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  310918: ab02         	add	r3, sp, #0x8
  31091a: 4618         	mov	r0, r3
  31091c: f649 119a    	movw	r1, #0x999a
  310920: f6cb 6199    	movt	r1, #0xbe99
  310924: f64c 42cd    	movw	r2, #0xcccd
  310928: f6c3 62cc    	movt	r2, #0x3ecc
  31092c: f282 f9e0    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2823c0
  310930: ab02         	add	r3, sp, #0x8
  310932: 4628         	mov	r0, r5
  310934: 4619         	mov	r1, r3
  310936: 47a0         	blx	r4
  310938: 9b01         	ldr	r3, [sp, #0x4]
  31093a: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  31093e: 681b         	ldr	r3, [r3]
  310940: 3398         	adds	r3, #0x98
  310942: 681b         	ldr	r3, [r3]
  310944: 9a01         	ldr	r2, [sp, #0x4]
  310946: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  31094a: 4610         	mov	r0, r2
  31094c: f04f 0100    	mov.w	r1, #0x0
  310950: 4798         	blx	r3
  310952: 9b01         	ldr	r3, [sp, #0x4]
  310954: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  310958: 681b         	ldr	r3, [r3]
  31095a: 3340         	adds	r3, #0x40
  31095c: 681b         	ldr	r3, [r3]
  31095e: 9a01         	ldr	r2, [sp, #0x4]
  310960: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  310964: 4610         	mov	r0, r2
  310966: f04f 517e    	mov.w	r1, #0x3f800000
  31096a: 4798         	blx	r3
  31096c: 9b01         	ldr	r3, [sp, #0x4]
  31096e: 681b         	ldr	r3, [r3]
  310970: 334c         	adds	r3, #0x4c
  310972: 681c         	ldr	r4, [r3]
  310974: 9d01         	ldr	r5, [sp, #0x4]
  310976: ab02         	add	r3, sp, #0x8
  310978: 4618         	mov	r0, r3
  31097a: f04f 0100    	mov.w	r1, #0x0
  31097e: f04f 0200    	mov.w	r2, #0x0
  310982: f282 f9b5    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x28236a
  310986: ab02         	add	r3, sp, #0x8
  310988: 4628         	mov	r0, r5
  31098a: 4619         	mov	r1, r3
  31098c: 47a0         	blx	r4
  31098e: 9b01         	ldr	r3, [sp, #0x4]
  310990: 681b         	ldr	r3, [r3]
  310992: 3340         	adds	r3, #0x40
  310994: 681b         	ldr	r3, [r3]
  310996: 9a01         	ldr	r2, [sp, #0x4]
  310998: 4610         	mov	r0, r2
  31099a: f04f 517e    	mov.w	r1, #0x3f800000
  31099e: 4798         	blx	r3
  3109a0: 9b01         	ldr	r3, [sp, #0x4]
  3109a2: 681b         	ldr	r3, [r3]
  3109a4: 3398         	adds	r3, #0x98
  3109a6: 681b         	ldr	r3, [r3]
  3109a8: 9a01         	ldr	r2, [sp, #0x4]
  3109aa: 4610         	mov	r0, r2
  3109ac: f04f 0100    	mov.w	r1, #0x0
  3109b0: 4798         	blx	r3
  3109b2: 9b01         	ldr	r3, [sp, #0x4]
  3109b4: 2200         	movs	r2, #0x0
  3109b6: f883 2195    	strb.w	r2, [r3, #0x195]
  3109ba: 9b01         	ldr	r3, [sp, #0x4]
  3109bc: 2200         	movs	r2, #0x0
  3109be: f883 2194    	strb.w	r2, [r3, #0x194]
  3109c2: 9b01         	ldr	r3, [sp, #0x4]
  3109c4: f04f 0200    	mov.w	r2, #0x0
  3109c8: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  3109cc: b005         	add	sp, #0x14
  3109ce: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3109cf); words below are literal-pool data ---
  3109d0: 5d6c         	ldrb	r4, [r5, r5]
  3109d2: 004b         	lsls	r3, r1, #0x1

// ==== DEAGLE::setMapConfiguration
//      file offset 0x3109d4 (= ELF address; Ghidra 0x3209d4), 276 bytes, Thumb-2
  3109d4: b570         	push	{r4, r5, r6, lr}
  3109d6: b084         	sub	sp, #0x10
  3109d8: 9001         	str	r0, [sp, #0x4]
  3109da: 4c41         	ldr	r4, [pc, #0x104]        @ 0x310ae0 <DEAGLE::setMapConfiguration()+0x10c>
  3109dc: 447c         	add	r4, pc
  3109de: 9b01         	ldr	r3, [sp, #0x4]
  3109e0: f04f 0200    	mov.w	r2, #0x0
  3109e4: f8c3 2190    	str.w	r2, [r3, #0x190]
  3109e8: 9b01         	ldr	r3, [sp, #0x4]
  3109ea: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3109ee: 681b         	ldr	r3, [r3]
  3109f0: 334c         	adds	r3, #0x4c
  3109f2: 681d         	ldr	r5, [r3]
  3109f4: 9b01         	ldr	r3, [sp, #0x4]
  3109f6: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  3109fa: ab02         	add	r3, sp, #0x8
  3109fc: 4618         	mov	r0, r3
  3109fe: f04f 0100    	mov.w	r1, #0x0
  310a02: f04f 0200    	mov.w	r2, #0x0
  310a06: f282 f973    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2822e6
  310a0a: ab02         	add	r3, sp, #0x8
  310a0c: 4630         	mov	r0, r6
  310a0e: 4619         	mov	r1, r3
  310a10: 47a8         	blx	r5
  310a12: 9b01         	ldr	r3, [sp, #0x4]
  310a14: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  310a18: 681b         	ldr	r3, [r3]
  310a1a: 337c         	adds	r3, #0x7c
  310a1c: 681d         	ldr	r5, [r3]
  310a1e: 9b01         	ldr	r3, [sp, #0x4]
  310a20: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  310a24: ab02         	add	r3, sp, #0x8
  310a26: 4618         	mov	r0, r3
  310a28: f04f 517c    	mov.w	r1, #0x3f000000
  310a2c: f04f 527c    	mov.w	r2, #0x3f000000
  310a30: f282 f95e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2822bc
  310a34: ab02         	add	r3, sp, #0x8
  310a36: 4630         	mov	r0, r6
  310a38: 4619         	mov	r1, r3
  310a3a: 47a8         	blx	r5
  310a3c: 9b01         	ldr	r3, [sp, #0x4]
  310a3e: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  310a42: 681b         	ldr	r3, [r3]
  310a44: 3398         	adds	r3, #0x98
  310a46: 681b         	ldr	r3, [r3]
  310a48: 9a01         	ldr	r2, [sp, #0x4]
  310a4a: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  310a4e: 4610         	mov	r0, r2
  310a50: f04f 0100    	mov.w	r1, #0x0
  310a54: 4798         	blx	r3
  310a56: 9b01         	ldr	r3, [sp, #0x4]
  310a58: 681b         	ldr	r3, [r3]
  310a5a: 334c         	adds	r3, #0x4c
  310a5c: 681d         	ldr	r5, [r3]
  310a5e: 9e01         	ldr	r6, [sp, #0x4]
  310a60: ab02         	add	r3, sp, #0x8
  310a62: 4618         	mov	r0, r3
  310a64: f04f 0100    	mov.w	r1, #0x0
  310a68: f04f 0200    	mov.w	r2, #0x0
  310a6c: f282 f940    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x282280
  310a70: ab02         	add	r3, sp, #0x8
  310a72: 4630         	mov	r0, r6
  310a74: 4619         	mov	r1, r3
  310a76: 47a8         	blx	r5
  310a78: 9b01         	ldr	r3, [sp, #0x4]
  310a7a: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  310a7e: 681b         	ldr	r3, [r3]
  310a80: 3330         	adds	r3, #0x30
  310a82: 681b         	ldr	r3, [r3]
  310a84: 9a01         	ldr	r2, [sp, #0x4]
  310a86: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  310a8a: 4610         	mov	r0, r2
  310a8c: f04f 517e    	mov.w	r1, #0x3f800000
  310a90: 4798         	blx	r3
  310a92: 9b01         	ldr	r3, [sp, #0x4]
  310a94: 681b         	ldr	r3, [r3]
  310a96: 3340         	adds	r3, #0x40
  310a98: 681b         	ldr	r3, [r3]
  310a9a: 9901         	ldr	r1, [sp, #0x4]
  310a9c: 4a11         	ldr	r2, [pc, #0x44]         @ 0x310ae4 <DEAGLE::setMapConfiguration()+0x110>
  310a9e: 58a2         	ldr	r2, [r4, r2]
  310aa0: 6812         	ldr	r2, [r2]
  310aa2: 4608         	mov	r0, r1
  310aa4: 4611         	mov	r1, r2
  310aa6: 4798         	blx	r3
  310aa8: 9b01         	ldr	r3, [sp, #0x4]
  310aaa: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  310aae: 681b         	ldr	r3, [r3]
  310ab0: 3390         	adds	r3, #0x90
  310ab2: 681b         	ldr	r3, [r3]
  310ab4: 9a01         	ldr	r2, [sp, #0x4]
  310ab6: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  310aba: 4610         	mov	r0, r2
  310abc: 2100         	movs	r1, #0x0
  310abe: 4798         	blx	r3
  310ac0: 9b01         	ldr	r3, [sp, #0x4]
  310ac2: 2200         	movs	r2, #0x0
  310ac4: f883 2195    	strb.w	r2, [r3, #0x195]
  310ac8: 9b01         	ldr	r3, [sp, #0x4]
  310aca: 2200         	movs	r2, #0x0
  310acc: f883 2194    	strb.w	r2, [r3, #0x194]
  310ad0: 9b01         	ldr	r3, [sp, #0x4]
  310ad2: f04f 0200    	mov.w	r2, #0x0
  310ad6: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  310ada: b004         	add	sp, #0x10
  310adc: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x310add); words below are literal-pool data ---
  310ade: bf00         	nop
  310ae0: 202c         	movs	r0, #0x2c
  310ae2: 0062         	lsls	r2, r4, #0x1
  310ae4: d748         	bvc	0x310b78 <DEAGLE::setRight(bool)+0x4> @ imm = #0x90
  310ae6: ffff b500    	<unknown>

// ==== DEAGLE::getWeaponTexture
//      file offset 0x310ae8 (= ELF address; Ghidra 0x320ae8), 40 bytes, Thumb-2
  310ae8: b500         	push	{lr}
  310aea: b083         	sub	sp, #0xc
  310aec: 9001         	str	r0, [sp, #0x4]
  310aee: 9b01         	ldr	r3, [sp, #0x4]
  310af0: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  310af4: 681b         	ldr	r3, [r3]
  310af6: f503 73fa    	add.w	r3, r3, #0x1f4
  310afa: 681b         	ldr	r3, [r3]
  310afc: 9a01         	ldr	r2, [sp, #0x4]
  310afe: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  310b02: 4610         	mov	r0, r2
  310b04: 4798         	blx	r3
  310b06: 4603         	mov	r3, r0
  310b08: 4618         	mov	r0, r3
  310b0a: b003         	add	sp, #0xc
  310b0c: f85d fb04    	ldr	pc, [sp], #4

// ==== DEAGLE::getWeaponRect
//      file offset 0x310b10 (= ELF address; Ghidra 0x320b10), 38 bytes, Thumb-2
  310b10: b500         	push	{lr}
  310b12: b083         	sub	sp, #0xc
  310b14: 9001         	str	r0, [sp, #0x4]
  310b16: 9100         	str	r1, [sp]
  310b18: 9b00         	ldr	r3, [sp]
  310b1a: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  310b1e: 4618         	mov	r0, r3
  310b20: f7cc f8dc    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x33e48
  310b24: 4603         	mov	r3, r0
  310b26: 9801         	ldr	r0, [sp, #0x4]
  310b28: 4619         	mov	r1, r3
  310b2a: f282 fbf5    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x2827ea
  310b2e: 9801         	ldr	r0, [sp, #0x4]
  310b30: b003         	add	sp, #0xc
  310b32: f85d fb04    	ldr	pc, [sp], #4

// ==== DEAGLE::isRight
//      file offset 0x310b38 (= ELF address; Ghidra 0x320b38), 60 bytes, Thumb-2
  310b38: b500         	push	{lr}
  310b3a: b083         	sub	sp, #0xc
  310b3c: 9001         	str	r0, [sp, #0x4]
  310b3e: 9b01         	ldr	r3, [sp, #0x4]
  310b40: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  310b44: 681b         	ldr	r3, [r3]
  310b46: 3334         	adds	r3, #0x34
  310b48: 681b         	ldr	r3, [r3]
  310b4a: 9a01         	ldr	r2, [sp, #0x4]
  310b4c: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  310b50: 4610         	mov	r0, r2
  310b52: 4798         	blx	r3
  310b54: ee07 0a10    	vmov	s14, r0
  310b58: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  310b5c: eeb4 7ae7    	vcmpe.f32	s14, s15
  310b60: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  310b64: bfd4         	ite	le
  310b66: 2300         	movle	r3, #0x0
  310b68: 2301         	movgt	r3, #0x1
  310b6a: b2db         	uxtb	r3, r3
  310b6c: 4618         	mov	r0, r3
  310b6e: b003         	add	sp, #0xc
  310b70: f85d fb04    	ldr	pc, [sp], #4

// ==== DEAGLE::setRight
//      file offset 0x310b74 (= ELF address; Ghidra 0x320b74), 64 bytes, Thumb-2
  310b74: b500         	push	{lr}
  310b76: b083         	sub	sp, #0xc
  310b78: 9001         	str	r0, [sp, #0x4]
  310b7a: 460b         	mov	r3, r1
  310b7c: f88d 3003    	strb.w	r3, [sp, #0x3]
  310b80: 9b01         	ldr	r3, [sp, #0x4]
  310b82: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  310b86: 681b         	ldr	r3, [r3]
  310b88: 3330         	adds	r3, #0x30
  310b8a: 681a         	ldr	r2, [r3]
  310b8c: 9b01         	ldr	r3, [sp, #0x4]
  310b8e: f8d3 11ec    	ldr.w	r1, [r3, #0x1ec]
  310b92: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  310b96: 2b00         	cmp	r3, #0x0
  310b98: d002         	beq	0x310ba0 <DEAGLE::setRight(bool)+0x2c> @ imm = #0x4
  310b9a: f04f 537e    	mov.w	r3, #0x3f800000
  310b9e: e003         	b	0x310ba8 <DEAGLE::setRight(bool)+0x34> @ imm = #0x6
  310ba0: f04f 0300    	mov.w	r3, #0x0
  310ba4: f6cb 7380    	movt	r3, #0xbf80
  310ba8: 4608         	mov	r0, r1
  310baa: 4619         	mov	r1, r3
  310bac: 4790         	blx	r2
  310bae: b003         	add	sp, #0xc
  310bb0: f85d fb04    	ldr	pc, [sp], #4

// ==== DEAGLE::getRANGE
//      file offset 0x310bb4 (= ELF address; Ghidra 0x320bb4), 16 bytes, Thumb-2
  310bb4: 4b02         	ldr	r3, [pc, #0x8]          @ 0x310bc0 <DEAGLE::getRANGE()+0xc>
  310bb6: 447b         	add	r3, pc
  310bb8: 681b         	ldr	r3, [r3]
  310bba: 4618         	mov	r0, r3
  310bbc: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x310bbd); words below are literal-pool data ---
  310bbe: bf00         	nop
  310bc0: 2706         	movs	r7, #0x6
  310bc2: 0062         	lsls	r2, r4, #0x1

// ==== DEAGLE::getDAMAGE
//      file offset 0x310bc4 (= ELF address; Ghidra 0x320bc4), 16 bytes, Thumb-2
  310bc4: 4b02         	ldr	r3, [pc, #0x8]          @ 0x310bd0 <DEAGLE::getDAMAGE()+0xc>
  310bc6: 447b         	add	r3, pc
  310bc8: 681b         	ldr	r3, [r3]
  310bca: 4618         	mov	r0, r3
  310bcc: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x310bcd); words below are literal-pool data ---
  310bce: bf00         	nop
  310bd0: 26f2         	movs	r6, #0xf2
  310bd2: 0062         	lsls	r2, r4, #0x1

// ==== DEAGLE::create
//      file offset 0x416fac (= ELF address; Ghidra 0x426fac), 112 bytes, Thumb-2
  416fac: b510         	push	{r4, lr}
  416fae: b082         	sub	sp, #0x8
  416fb0: f44f 70fc    	mov.w	r0, #0x1f8
  416fb4: f370 fcd6    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x3709ac
  416fb8: 4603         	mov	r3, r0
  416fba: 461c         	mov	r4, r3
  416fbc: 4620         	mov	r0, r4
  416fbe: f6f8 ff1d    	bl	0x30fdfc <DEAGLE::DEAGLE()> @ imm = #-0x1071c6
  416fc2: 9401         	str	r4, [sp, #0x4]
  416fc4: 9b01         	ldr	r3, [sp, #0x4]
  416fc6: 2b00         	cmp	r3, #0x0
  416fc8: d00a         	beq	0x416fe0 <DEAGLE::create()+0x34> @ imm = #0x14
  416fca: 9b01         	ldr	r3, [sp, #0x4]
  416fcc: 681b         	ldr	r3, [r3]
  416fce: 3318         	adds	r3, #0x18
  416fd0: 681b         	ldr	r3, [r3]
  416fd2: 9801         	ldr	r0, [sp, #0x4]
  416fd4: 4798         	blx	r3
  416fd6: 4603         	mov	r3, r0
  416fd8: 2b00         	cmp	r3, #0x0
  416fda: d001         	beq	0x416fe0 <DEAGLE::create()+0x34> @ imm = #0x2
  416fdc: 2301         	movs	r3, #0x1
  416fde: e000         	b	0x416fe2 <DEAGLE::create()+0x36> @ imm = #0x0
  416fe0: 2300         	movs	r3, #0x0
  416fe2: 2b00         	cmp	r3, #0x0
  416fe4: d005         	beq	0x416ff2 <DEAGLE::create()+0x46> @ imm = #0xa
  416fe6: 9b01         	ldr	r3, [sp, #0x4]
  416fe8: 4618         	mov	r0, r3
  416fea: f180 ff87    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x180f0e
  416fee: 9b01         	ldr	r3, [sp, #0x4]
  416ff0: e011         	b	0x417016 <DEAGLE::create()+0x6a> @ imm = #0x22
  416ff2: 9b01         	ldr	r3, [sp, #0x4]
  416ff4: 2b00         	cmp	r3, #0x0
  416ff6: d005         	beq	0x417004 <DEAGLE::create()+0x58> @ imm = #0xa
  416ff8: 9b01         	ldr	r3, [sp, #0x4]
  416ffa: 681b         	ldr	r3, [r3]
  416ffc: 3308         	adds	r3, #0x8
  416ffe: 681b         	ldr	r3, [r3]
  417000: 9801         	ldr	r0, [sp, #0x4]
  417002: 4798         	blx	r3
  417004: 2300         	movs	r3, #0x0
  417006: 9301         	str	r3, [sp, #0x4]
  417008: 2300         	movs	r3, #0x0
  41700a: e004         	b	0x417016 <DEAGLE::create()+0x6a> @ imm = #0x8
  41700c: 4620         	mov	r0, r4
  41700e: f371 f849    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x371092
  417012: f371 f84b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x371096
  417016: 4618         	mov	r0, r3
  417018: b002         	add	sp, #0x8
  41701a: bd10         	pop	{r4, pc}
