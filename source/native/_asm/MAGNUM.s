// MAGNUM: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 21 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../MAGNUM.cpp

// ==== MAGNUM::MAGNUM
//      file offset 0x35af54 (= ELF address; Ghidra 0x36af54), 44 bytes, Thumb-2
  35af54: b510         	push	{r4, lr}
  35af56: b082         	sub	sp, #0x8
  35af58: 9001         	str	r0, [sp, #0x4]
  35af5a: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x35af78 <MAGNUM::MAGNUM()+0x24>
  35af5c: 447c         	add	r4, pc
  35af5e: 9b01         	ldr	r3, [sp, #0x4]
  35af60: 4618         	mov	r0, r3
  35af62: f0ba f821    	bl	0x414fa8 <Weapon::Weapon()> @ imm = #0xba042
  35af66: 9b01         	ldr	r3, [sp, #0x4]
  35af68: 4a04         	ldr	r2, [pc, #0x10]         @ 0x35af7c <MAGNUM::MAGNUM()+0x28>
  35af6a: 58a2         	ldr	r2, [r4, r2]
  35af6c: 3208         	adds	r2, #0x8
  35af6e: 601a         	str	r2, [r3]
  35af70: 9b01         	ldr	r3, [sp, #0x4]
  35af72: 4618         	mov	r0, r3
  35af74: b002         	add	sp, #0x8
  35af76: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x35af77); words below are literal-pool data ---
  35af78: 7aac         	ldrb	r4, [r5, #0xa]
  35af7a: 005d         	lsls	r5, r3, #0x1
  35af7c: db88         	blt	0x35ae90 <MACHETE::setRight(bool)+0xeb0> @ imm = #-0xf0
  35af7e: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== MAGNUM::init
//      file offset 0x35af80 (= ELF address; Ghidra 0x36af80), 768 bytes, Thumb-2
  35af80: b530         	push	{r4, r5, lr}
  35af82: b08b         	sub	sp, #0x2c
  35af84: 9005         	str	r0, [sp, #0x14]
  35af86: 9b05         	ldr	r3, [sp, #0x14]
  35af88: 4618         	mov	r0, r3
  35af8a: f0ba f831    	bl	0x414ff0 <Weapon::init()> @ imm = #0xba062
  35af8e: 4603         	mov	r3, r0
  35af90: f88d 301f    	strb.w	r3, [sp, #0x1f]
  35af94: f89d 301f    	ldrb.w	r3, [sp, #0x1f]
  35af98: f083 0301    	eor	r3, r3, #0x1
  35af9c: b2db         	uxtb	r3, r3
  35af9e: 2b00         	cmp	r3, #0x0
  35afa0: d001         	beq	0x35afa6 <MAGNUM::init()+0x26> @ imm = #0x2
  35afa2: 2300         	movs	r3, #0x0
  35afa4: e159         	b	0x35b25a <MAGNUM::init()+0x2da> @ imm = #0x2b2
  35afa6: 4bb0         	ldr	r3, [pc, #0x2c0]        @ 0x35b268 <MAGNUM::init()+0x2e8>
  35afa8: 447b         	add	r3, pc
  35afaa: 4618         	mov	r0, r3
  35afac: f27d f9aa    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x27d354
  35afb0: 4602         	mov	r2, r0
  35afb2: 9b05         	ldr	r3, [sp, #0x14]
  35afb4: f8c3 21ec    	str.w	r2, [r3, #0x1ec]
  35afb8: 9b05         	ldr	r3, [sp, #0x14]
  35afba: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  35afbe: 4618         	mov	r0, r3
  35afc0: f23c ff92    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x23cf24
  35afc4: 4ba9         	ldr	r3, [pc, #0x2a4]        @ 0x35b26c <MAGNUM::init()+0x2ec>
  35afc6: 447b         	add	r3, pc
  35afc8: 4618         	mov	r0, r3
  35afca: f27d f99b    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x27d336
  35afce: 4602         	mov	r2, r0
  35afd0: 9b05         	ldr	r3, [sp, #0x14]
  35afd2: f8c3 21f0    	str.w	r2, [r3, #0x1f0]
  35afd6: 9b05         	ldr	r3, [sp, #0x14]
  35afd8: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  35afdc: 4618         	mov	r0, r3
  35afde: f23c ff83    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x23cf06
  35afe2: 9b05         	ldr	r3, [sp, #0x14]
  35afe4: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  35afe8: 681b         	ldr	r3, [r3]
  35afea: 337c         	adds	r3, #0x7c
  35afec: 681c         	ldr	r4, [r3]
  35afee: 9b05         	ldr	r3, [sp, #0x14]
  35aff0: f8d3 51f0    	ldr.w	r5, [r3, #0x1f0]
  35aff4: ab08         	add	r3, sp, #0x20
  35aff6: 4618         	mov	r0, r3
  35aff8: f243 3133    	movw	r1, #0x3333
  35affc: f6cb 71b3    	movt	r1, #0xbfb3
  35b000: f04f 527c    	mov.w	r2, #0x3f000000
  35b004: f237 fe74    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x237ce8
  35b008: ab08         	add	r3, sp, #0x20
  35b00a: 4628         	mov	r0, r5
  35b00c: 4619         	mov	r1, r3
  35b00e: 47a0         	blx	r4
  35b010: 9b05         	ldr	r3, [sp, #0x14]
  35b012: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  35b016: 681b         	ldr	r3, [r3]
  35b018: 3340         	adds	r3, #0x40
  35b01a: 681b         	ldr	r3, [r3]
  35b01c: 9a05         	ldr	r2, [sp, #0x14]
  35b01e: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  35b022: 4610         	mov	r0, r2
  35b024: f04f 4180    	mov.w	r1, #0x40000000
  35b028: 4798         	blx	r3
  35b02a: 9b05         	ldr	r3, [sp, #0x14]
  35b02c: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  35b030: 681b         	ldr	r3, [r3]
  35b032: 3390         	adds	r3, #0x90
  35b034: 681b         	ldr	r3, [r3]
  35b036: 9a05         	ldr	r2, [sp, #0x14]
  35b038: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  35b03c: 4610         	mov	r0, r2
  35b03e: 2100         	movs	r1, #0x0
  35b040: 4798         	blx	r3
  35b042: 9b05         	ldr	r3, [sp, #0x14]
  35b044: 681b         	ldr	r3, [r3]
  35b046: f503 73f0    	add.w	r3, r3, #0x1e0
  35b04a: 681b         	ldr	r3, [r3]
  35b04c: 9805         	ldr	r0, [sp, #0x14]
  35b04e: 4798         	blx	r3
  35b050: 9b05         	ldr	r3, [sp, #0x14]
  35b052: 681b         	ldr	r3, [r3]
  35b054: 33cc         	adds	r3, #0xcc
  35b056: 681b         	ldr	r3, [r3]
  35b058: 9905         	ldr	r1, [sp, #0x14]
  35b05a: 9a05         	ldr	r2, [sp, #0x14]
  35b05c: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  35b060: 4608         	mov	r0, r1
  35b062: 4611         	mov	r1, r2
  35b064: 2200         	movs	r2, #0x0
  35b066: 4798         	blx	r3
  35b068: 9b05         	ldr	r3, [sp, #0x14]
  35b06a: 681b         	ldr	r3, [r3]
  35b06c: 33cc         	adds	r3, #0xcc
  35b06e: 681b         	ldr	r3, [r3]
  35b070: 9905         	ldr	r1, [sp, #0x14]
  35b072: 9a05         	ldr	r2, [sp, #0x14]
  35b074: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  35b078: 4608         	mov	r0, r1
  35b07a: 4611         	mov	r1, r2
  35b07c: 2200         	movs	r2, #0x0
  35b07e: 4798         	blx	r3
  35b080: 9b05         	ldr	r3, [sp, #0x14]
  35b082: f8d3 4150    	ldr.w	r4, [r3, #0x150]
  35b086: f04f 507e    	mov.w	r0, #0x3f800000
  35b08a: f781 fdfb    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x7e40a
  35b08e: 4603         	mov	r3, r0
  35b090: 4620         	mov	r0, r4
  35b092: 4619         	mov	r1, r3
  35b094: f23f f8ea    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x23f1d4
  35b098: 9b05         	ldr	r3, [sp, #0x14]
  35b09a: f8d3 414c    	ldr.w	r4, [r3, #0x14c]
  35b09e: ab07         	add	r3, sp, #0x1c
  35b0a0: 4618         	mov	r0, r3
  35b0a2: f02f f1a7    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x42f34e
  35b0a6: aa08         	add	r2, sp, #0x20
  35b0a8: ab07         	add	r3, sp, #0x1c
  35b0aa: 4610         	mov	r0, r2
  35b0ac: 4a70         	ldr	r2, [pc, #0x1c0]        @ 0x35b270 <MAGNUM::init()+0x2f0>
  35b0ae: 447a         	add	r2, pc
  35b0b0: 4611         	mov	r1, r2
  35b0b2: 461a         	mov	r2, r3
  35b0b4: f05b f4d4    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x45b9a8
  35b0b8: ab08         	add	r3, sp, #0x20
  35b0ba: 4618         	mov	r0, r3
  35b0bc: f23e fcbe    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x23e97c
  35b0c0: 4603         	mov	r3, r0
  35b0c2: 4620         	mov	r0, r4
  35b0c4: 4619         	mov	r1, r3
  35b0c6: f23f f8d1    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x23f1a2
  35b0ca: ab08         	add	r3, sp, #0x20
  35b0cc: 4618         	mov	r0, r3
  35b0ce: f05a f421    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45a842
  35b0d2: ab07         	add	r3, sp, #0x1c
  35b0d4: 4618         	mov	r0, r3
  35b0d6: f02f f191    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42f322
  35b0da: 9b05         	ldr	r3, [sp, #0x14]
  35b0dc: f8d3 4150    	ldr.w	r4, [r3, #0x150]
  35b0e0: f64c 40cd    	movw	r0, #0xcccd
  35b0e4: f6c3 704c    	movt	r0, #0x3f4c
  35b0e8: f781 fdcc    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x7e468
  35b0ec: 4603         	mov	r3, r0
  35b0ee: 4620         	mov	r0, r4
  35b0f0: 4619         	mov	r1, r3
  35b0f2: f23f f8bb    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x23f176
  35b0f6: 9b05         	ldr	r3, [sp, #0x14]
  35b0f8: f8d3 414c    	ldr.w	r4, [r3, #0x14c]
  35b0fc: ab07         	add	r3, sp, #0x1c
  35b0fe: 4618         	mov	r0, r3
  35b100: f02f f178    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x42f2f0
  35b104: aa08         	add	r2, sp, #0x20
  35b106: ab07         	add	r3, sp, #0x1c
  35b108: 4610         	mov	r0, r2
  35b10a: 4a5a         	ldr	r2, [pc, #0x168]        @ 0x35b274 <MAGNUM::init()+0x2f4>
  35b10c: 447a         	add	r2, pc
  35b10e: 4611         	mov	r1, r2
  35b110: 461a         	mov	r2, r3
  35b112: f05b f4a5    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x45b94a
  35b116: ab08         	add	r3, sp, #0x20
  35b118: 4618         	mov	r0, r3
  35b11a: f23e fc8f    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x23e91e
  35b11e: 4603         	mov	r3, r0
  35b120: 4620         	mov	r0, r4
  35b122: 4619         	mov	r1, r3
  35b124: f23f f8a2    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x23f144
  35b128: ab08         	add	r3, sp, #0x20
  35b12a: 4618         	mov	r0, r3
  35b12c: f05a f3f2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45a7e4
  35b130: ab07         	add	r3, sp, #0x1c
  35b132: 4618         	mov	r0, r3
  35b134: f02f f162    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42f2c4
  35b138: 9b05         	ldr	r3, [sp, #0x14]
  35b13a: 2200         	movs	r2, #0x0
  35b13c: f8c3 2144    	str.w	r2, [r3, #0x144]
  35b140: 9b05         	ldr	r3, [sp, #0x14]
  35b142: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  35b146: 4618         	mov	r0, r3
  35b148: 2100         	movs	r1, #0x0
  35b14a: f23e ffe9    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x23efd2
  35b14e: 4603         	mov	r3, r0
  35b150: 4618         	mov	r0, r3
  35b152: f781 fd8f    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x7e4e2
  35b156: 4602         	mov	r2, r0
  35b158: 9b05         	ldr	r3, [sp, #0x14]
  35b15a: f8c3 2148    	str.w	r2, [r3, #0x148]
  35b15e: 9b05         	ldr	r3, [sp, #0x14]
  35b160: f649 129a    	movw	r2, #0x999a
  35b164: f6c3 7219    	movt	r2, #0x3f19
  35b168: f8c3 215c    	str.w	r2, [r3, #0x15c]
  35b16c: 9b05         	ldr	r3, [sp, #0x14]
  35b16e: f04f 4280    	mov.w	r2, #0x40000000
  35b172: f8c3 2160    	str.w	r2, [r3, #0x160]
  35b176: 9b05         	ldr	r3, [sp, #0x14]
  35b178: f04f 527e    	mov.w	r2, #0x3f800000
  35b17c: f8c3 2164    	str.w	r2, [r3, #0x164]
  35b180: 9b05         	ldr	r3, [sp, #0x14]
  35b182: f04f 0200    	mov.w	r2, #0x0
  35b186: f2c4 12c8    	movt	r2, #0x41c8
  35b18a: f8c3 216c    	str.w	r2, [r3, #0x16c]
  35b18e: 9b05         	ldr	r3, [sp, #0x14]
  35b190: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  35b194: 681b         	ldr	r3, [r3]
  35b196: 3398         	adds	r3, #0x98
  35b198: 681b         	ldr	r3, [r3]
  35b19a: 9a05         	ldr	r2, [sp, #0x14]
  35b19c: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  35b1a0: 4610         	mov	r0, r2
  35b1a2: f04f 0100    	mov.w	r1, #0x0
  35b1a6: f2c4 11a0    	movt	r1, #0x41a0
  35b1aa: 4798         	blx	r3
  35b1ac: 9b05         	ldr	r3, [sp, #0x14]
  35b1ae: 2224         	movs	r2, #0x24
  35b1b0: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  35b1b4: 9b05         	ldr	r3, [sp, #0x14]
  35b1b6: 2206         	movs	r2, #0x6
  35b1b8: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  35b1bc: 9b05         	ldr	r3, [sp, #0x14]
  35b1be: 223c         	movs	r2, #0x3c
  35b1c0: f8c3 218c    	str.w	r2, [r3, #0x18c]
  35b1c4: 9b05         	ldr	r3, [sp, #0x14]
  35b1c6: 2204         	movs	r2, #0x4
  35b1c8: f8c3 2188    	str.w	r2, [r3, #0x188]
  35b1cc: 9b05         	ldr	r3, [sp, #0x14]
  35b1ce: 2219         	movs	r2, #0x19
  35b1d0: f8c3 219c    	str.w	r2, [r3, #0x19c]
  35b1d4: 9b05         	ldr	r3, [sp, #0x14]
  35b1d6: 2223         	movs	r2, #0x23
  35b1d8: f8c3 21a0    	str.w	r2, [r3, #0x1a0]
  35b1dc: 4b26         	ldr	r3, [pc, #0x98]         @ 0x35b278 <MAGNUM::init()+0x2f8>
  35b1de: 447b         	add	r3, pc
  35b1e0: 681a         	ldr	r2, [r3]
  35b1e2: 9b05         	ldr	r3, [sp, #0x14]
  35b1e4: f8c3 21a4    	str.w	r2, [r3, #0x1a4]
  35b1e8: 9b05         	ldr	r3, [sp, #0x14]
  35b1ea: 2201         	movs	r2, #0x1
  35b1ec: f883 2183    	strb.w	r2, [r3, #0x183]
  35b1f0: 9b05         	ldr	r3, [sp, #0x14]
  35b1f2: 2206         	movs	r2, #0x6
  35b1f4: f8c3 2170    	str.w	r2, [r3, #0x170]
  35b1f8: 9b05         	ldr	r3, [sp, #0x14]
  35b1fa: 2224         	movs	r2, #0x24
  35b1fc: f8c3 2174    	str.w	r2, [r3, #0x174]
  35b200: 9c05         	ldr	r4, [sp, #0x14]
  35b202: 466b         	mov	r3, sp
  35b204: 4618         	mov	r0, r3
  35b206: ed9f 0b16    	vldr	d0, [pc, #88]           @ 0x35b260 <MAGNUM::init()+0x2e0>
  35b20a: eeb2 1b0e    	vmov.f64	d1, #1.500000e+01
  35b20e: f7fe ffcb    	bl	0x35a1a8 <MACHETE::setRight(bool)+0x1c8> @ imm = #-0x106a
  35b212: f504 74ec    	add.w	r4, r4, #0x1d8
  35b216: 466b         	mov	r3, sp
  35b218: cb0f         	ldm	r3, {r0, r1, r2, r3}
  35b21a: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  35b21e: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x35b27c <MAGNUM::init()+0x2fc>
  35b220: 447b         	add	r3, pc
  35b222: 681a         	ldr	r2, [r3]
  35b224: 9b05         	ldr	r3, [sp, #0x14]
  35b226: f8c3 2198    	str.w	r2, [r3, #0x198]
  35b22a: 2301         	movs	r3, #0x1
  35b22c: e015         	b	0x35b25a <MAGNUM::init()+0x2da> @ imm = #0x2a
  35b22e: ab08         	add	r3, sp, #0x20
  35b230: 4618         	mov	r0, r3
  35b232: f05a f36f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45a6de
  35b236: e7ff         	b	0x35b238 <MAGNUM::init()+0x2b8> @ imm = #-0x2
  35b238: ab07         	add	r3, sp, #0x1c
  35b23a: 4618         	mov	r0, r3
  35b23c: f02f f0de    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42f1bc
  35b240: f02c f734    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x42ce68
  35b244: ab08         	add	r3, sp, #0x20
  35b246: 4618         	mov	r0, r3
  35b248: f05a f364    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45a6c8
  35b24c: e7ff         	b	0x35b24e <MAGNUM::init()+0x2ce> @ imm = #-0x2
  35b24e: ab07         	add	r3, sp, #0x1c
  35b250: 4618         	mov	r0, r3
  35b252: f02f f0d3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42f1a6
  35b256: f02c f729    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x42ce52
  35b25a: 4618         	mov	r0, r3
  35b25c: b00b         	add	sp, #0x2c
  35b25e: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x35b25f); words below are literal-pool data ---
  35b260: 0000         	movs	r0, r0
  35b262: 0000         	movs	r0, r0
  35b264: c000         	<unknown>
  35b266: 4057         	eors	r7, r2
  35b268: 1864         	adds	r4, r4, r1
  35b26a: 0047         	lsls	r7, r0, #0x1
  35b26c: 1852         	adds	r2, r2, r1
  35b26e: 0047         	lsls	r7, r0, #0x1
  35b270: 1776         	asrs	r6, r6, #0x1d
  35b272: 0047         	lsls	r7, r0, #0x1
  35b274: 171c         	asrs	r4, r3, #0x1c
  35b276: 0047         	lsls	r7, r0, #0x1
  35b278: 820e         	strh	r6, [r1, #0x10]
  35b27a: 005d         	lsls	r5, r3, #0x1
  35b27c: 81c8         	strh	r0, [r1, #0xe]
  35b27e: 005d         	lsls	r5, r3, #0x1

// ==== MAGNUM::~MAGNUM
//      file offset 0x35b280 (= ELF address; Ghidra 0x36b280), 92 bytes, Thumb-2
  35b280: b500         	push	{lr}
  35b282: b083         	sub	sp, #0xc
  35b284: 9001         	str	r0, [sp, #0x4]
  35b286: 4913         	ldr	r1, [pc, #0x4c]         @ 0x35b2d4 <MAGNUM::~MAGNUM()+0x54>
  35b288: 4479         	add	r1, pc
  35b28a: 9b01         	ldr	r3, [sp, #0x4]
  35b28c: 4a12         	ldr	r2, [pc, #0x48]         @ 0x35b2d8 <MAGNUM::~MAGNUM()+0x58>
  35b28e: 588a         	ldr	r2, [r1, r2]
  35b290: 3208         	adds	r2, #0x8
  35b292: 601a         	str	r2, [r3]
  35b294: 9b01         	ldr	r3, [sp, #0x4]
  35b296: 4618         	mov	r0, r3
  35b298: f235 f9c8    	bl	0x59062c <cocos2d::CCNode::removeAllChildren()> @ imm = #0x235390
  35b29c: 9b01         	ldr	r3, [sp, #0x4]
  35b29e: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  35b2a2: 4618         	mov	r0, r3
  35b2a4: f23c fe08    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x23cc10
  35b2a8: 9b01         	ldr	r3, [sp, #0x4]
  35b2aa: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  35b2ae: 4618         	mov	r0, r3
  35b2b0: f23c fe02    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x23cc04
  35b2b4: 9b01         	ldr	r3, [sp, #0x4]
  35b2b6: 4618         	mov	r0, r3
  35b2b8: f0b9 ff9a    	bl	0x4151f0 <Weapon::~Weapon()> @ imm = #0xb9f34
  35b2bc: 2300         	movs	r3, #0x0
  35b2be: 2b00         	cmp	r3, #0x0
  35b2c0: d002         	beq	0x35b2c8 <MAGNUM::~MAGNUM()+0x48> @ imm = #0x4
  35b2c2: 9801         	ldr	r0, [sp, #0x4]
  35b2c4: f02c f6ee    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x42cddc
  35b2c8: 9b01         	ldr	r3, [sp, #0x4]
  35b2ca: 4618         	mov	r0, r3
  35b2cc: b003         	add	sp, #0xc
  35b2ce: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x35b2d1); words below are literal-pool data ---
  35b2d2: bf00         	nop
  35b2d4: 7780         	strb	r0, [r0, #0x1e]
  35b2d6: 005d         	lsls	r5, r3, #0x1
  35b2d8: db88         	blt	0x35b1ec <MAGNUM::init()+0x26c> @ imm = #-0xf0
  35b2da: ffff b500    	<unknown>

// ==== MAGNUM::~MAGNUM
//      file offset 0x35b2dc (= ELF address; Ghidra 0x36b2dc), 28 bytes, Thumb-2
  35b2dc: b500         	push	{lr}
  35b2de: b083         	sub	sp, #0xc
  35b2e0: 9001         	str	r0, [sp, #0x4]
  35b2e2: 9801         	ldr	r0, [sp, #0x4]
  35b2e4: f7ff ffcc    	bl	0x35b280 <MAGNUM::~MAGNUM()> @ imm = #-0x68
  35b2e8: 9801         	ldr	r0, [sp, #0x4]
  35b2ea: f02c f6db    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x42cdb6
  35b2ee: 9b01         	ldr	r3, [sp, #0x4]
  35b2f0: 4618         	mov	r0, r3
  35b2f2: b003         	add	sp, #0xc
  35b2f4: f85d fb04    	ldr	pc, [sp], #4

// ==== MAGNUM::triggerPull
//      file offset 0x35b2f8 (= ELF address; Ghidra 0x36b2f8), 336 bytes, Thumb-2
  35b2f8: b510         	push	{r4, lr}
  35b2fa: b088         	sub	sp, #0x20
  35b2fc: 9003         	str	r0, [sp, #0xc]
  35b2fe: 9102         	str	r1, [sp, #0x8]
  35b300: 4c4f         	ldr	r4, [pc, #0x13c]        @ 0x35b440 <MAGNUM::triggerPull(float)+0x148>
  35b302: 447c         	add	r4, pc
  35b304: 9b03         	ldr	r3, [sp, #0xc]
  35b306: ed93 7a44    	vldr	s14, [r3, #272]
  35b30a: 9b03         	ldr	r3, [sp, #0xc]
  35b30c: edd3 7a57    	vldr	s15, [r3, #348]
  35b310: eeb4 7ae7    	vcmpe.f32	s14, s15
  35b314: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  35b318: dd69         	ble	0x35b3ee <MAGNUM::triggerPull(float)+0xf6> @ imm = #0xd2
  35b31a: 9b03         	ldr	r3, [sp, #0xc]
  35b31c: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  35b320: b21b         	sxth	r3, r3
  35b322: 2b00         	cmp	r3, #0x0
  35b324: dd0f         	ble	0x35b346 <MAGNUM::triggerPull(float)+0x4e> @ imm = #0x1e
  35b326: 9b03         	ldr	r3, [sp, #0xc]
  35b328: 681b         	ldr	r3, [r3]
  35b32a: f503 7333    	add.w	r3, r3, #0x2cc
  35b32e: 681b         	ldr	r3, [r3]
  35b330: 9a03         	ldr	r2, [sp, #0xc]
  35b332: 4610         	mov	r0, r2
  35b334: 4798         	blx	r3
  35b336: 4603         	mov	r3, r0
  35b338: f083 0301    	eor	r3, r3, #0x1
  35b33c: b2db         	uxtb	r3, r3
  35b33e: 2b00         	cmp	r3, #0x0
  35b340: d001         	beq	0x35b346 <MAGNUM::triggerPull(float)+0x4e> @ imm = #0x2
  35b342: 2301         	movs	r3, #0x1
  35b344: e000         	b	0x35b348 <MAGNUM::triggerPull(float)+0x50> @ imm = #0x0
  35b346: 2300         	movs	r3, #0x0
  35b348: 2b00         	cmp	r3, #0x0
  35b34a: d024         	beq	0x35b396 <MAGNUM::triggerPull(float)+0x9e> @ imm = #0x48
  35b34c: 9b03         	ldr	r3, [sp, #0xc]
  35b34e: 2201         	movs	r2, #0x1
  35b350: f883 2180    	strb.w	r2, [r3, #0x180]
  35b354: 9b03         	ldr	r3, [sp, #0xc]
  35b356: 681b         	ldr	r3, [r3]
  35b358: f503 7325    	add.w	r3, r3, #0x294
  35b35c: 681b         	ldr	r3, [r3]
  35b35e: 9803         	ldr	r0, [sp, #0xc]
  35b360: 4798         	blx	r3
  35b362: 9b03         	ldr	r3, [sp, #0xc]
  35b364: 681b         	ldr	r3, [r3]
  35b366: f503 7342    	add.w	r3, r3, #0x308
  35b36a: 681b         	ldr	r3, [r3]
  35b36c: 9a03         	ldr	r2, [sp, #0xc]
  35b36e: 4610         	mov	r0, r2
  35b370: 4798         	blx	r3
  35b372: 9b03         	ldr	r3, [sp, #0xc]
  35b374: f893 3195    	ldrb.w	r3, [r3, #0x195]
  35b378: 3301         	adds	r3, #0x1
  35b37a: b2da         	uxtb	r2, r3
  35b37c: 9b03         	ldr	r3, [sp, #0xc]
  35b37e: f883 2195    	strb.w	r2, [r3, #0x195]
  35b382: 9b03         	ldr	r3, [sp, #0xc]
  35b384: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  35b388: b29b         	uxth	r3, r3
  35b38a: 3b00         	subs	r3, #0x0
  35b38c: b29a         	uxth	r2, r3
  35b38e: 9b03         	ldr	r3, [sp, #0xc]
  35b390: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  35b394: e026         	b	0x35b3e4 <MAGNUM::triggerPull(float)+0xec> @ imm = #0x4c
  35b396: 9b03         	ldr	r3, [sp, #0xc]
  35b398: 681b         	ldr	r3, [r3]
  35b39a: f503 7333    	add.w	r3, r3, #0x2cc
  35b39e: 681b         	ldr	r3, [r3]
  35b3a0: 9a03         	ldr	r2, [sp, #0xc]
  35b3a2: 4610         	mov	r0, r2
  35b3a4: 4798         	blx	r3
  35b3a6: 4603         	mov	r3, r0
  35b3a8: f083 0301    	eor	r3, r3, #0x1
  35b3ac: b2db         	uxtb	r3, r3
  35b3ae: 2b00         	cmp	r3, #0x0
  35b3b0: d018         	beq	0x35b3e4 <MAGNUM::triggerPull(float)+0xec> @ imm = #0x30
  35b3b2: 4b24         	ldr	r3, [pc, #0x90]         @ 0x35b444 <MAGNUM::triggerPull(float)+0x14c>
  35b3b4: 58e3         	ldr	r3, [r4, r3]
  35b3b6: 681c         	ldr	r4, [r3]
  35b3b8: 9b03         	ldr	r3, [sp, #0xc]
  35b3ba: 681b         	ldr	r3, [r3]
  35b3bc: f503 7348    	add.w	r3, r3, #0x320
  35b3c0: 681b         	ldr	r3, [r3]
  35b3c2: 9a03         	ldr	r2, [sp, #0xc]
  35b3c4: a904         	add	r1, sp, #0x10
  35b3c6: 4608         	mov	r0, r1
  35b3c8: 4611         	mov	r1, r2
  35b3ca: 4798         	blx	r3
  35b3cc: 466b         	mov	r3, sp
  35b3ce: aa06         	add	r2, sp, #0x18
  35b3d0: e892 0003    	ldm.w	r2, {r0, r1}
  35b3d4: e883 0003    	stm.w	r3, {r0, r1}
  35b3d8: ab04         	add	r3, sp, #0x10
  35b3da: cb0c         	ldm	r3, {r2, r3}
  35b3dc: 4620         	mov	r0, r4
  35b3de: 2100         	movs	r1, #0x0
  35b3e0: f09c fe0a    	bl	0x3f7ff8 <Sound::playSoundPosition(int, cpVect)> @ imm = #0x9cc14
  35b3e4: 9b03         	ldr	r3, [sp, #0xc]
  35b3e6: f04f 0200    	mov.w	r2, #0x0
  35b3ea: f8c3 2110    	str.w	r2, [r3, #0x110]
  35b3ee: 9b03         	ldr	r3, [sp, #0xc]
  35b3f0: 681b         	ldr	r3, [r3]
  35b3f2: f503 7333    	add.w	r3, r3, #0x2cc
  35b3f6: 681b         	ldr	r3, [r3]
  35b3f8: 9a03         	ldr	r2, [sp, #0xc]
  35b3fa: 4610         	mov	r0, r2
  35b3fc: 4798         	blx	r3
  35b3fe: 4603         	mov	r3, r0
  35b400: f083 0301    	eor	r3, r3, #0x1
  35b404: b2db         	uxtb	r3, r3
  35b406: 2b00         	cmp	r3, #0x0
  35b408: d00c         	beq	0x35b424 <MAGNUM::triggerPull(float)+0x12c> @ imm = #0x18
  35b40a: 9b03         	ldr	r3, [sp, #0xc]
  35b40c: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  35b410: 2b00         	cmp	r3, #0x0
  35b412: d107         	bne	0x35b424 <MAGNUM::triggerPull(float)+0x12c> @ imm = #0xe
  35b414: 9b03         	ldr	r3, [sp, #0xc]
  35b416: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  35b41a: b21b         	sxth	r3, r3
  35b41c: 2b00         	cmp	r3, #0x0
  35b41e: dd01         	ble	0x35b424 <MAGNUM::triggerPull(float)+0x12c> @ imm = #0x2
  35b420: 2301         	movs	r3, #0x1
  35b422: e000         	b	0x35b426 <MAGNUM::triggerPull(float)+0x12e> @ imm = #0x0
  35b424: 2300         	movs	r3, #0x0
  35b426: 2b00         	cmp	r3, #0x0
  35b428: d008         	beq	0x35b43c <MAGNUM::triggerPull(float)+0x144> @ imm = #0x10
  35b42a: 9b03         	ldr	r3, [sp, #0xc]
  35b42c: 2201         	movs	r2, #0x1
  35b42e: f883 2181    	strb.w	r2, [r3, #0x181]
  35b432: 9b03         	ldr	r3, [sp, #0xc]
  35b434: f04f 0200    	mov.w	r2, #0x0
  35b438: f8c3 2158    	str.w	r2, [r3, #0x158]
  35b43c: b008         	add	sp, #0x20
  35b43e: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x35b43f); words below are literal-pool data ---
  35b440: 7706         	strb	r6, [r0, #0x1c]
  35b442: 005d         	lsls	r5, r3, #0x1
  35b444: d730         	bvc	0x35b4a8 <MAGNUM::updateItemStep(float)+0x60> @ imm = #0x60
  35b446: ffff b500    	<unknown>

// ==== MAGNUM::updateItemStep
//      file offset 0x35b448 (= ELF address; Ghidra 0x36b448), 282 bytes, Thumb-2
  35b448: b500         	push	{lr}
  35b44a: ed2d 8b02    	vpush	{d8}
  35b44e: b085         	sub	sp, #0x14
  35b450: 9001         	str	r0, [sp, #0x4]
  35b452: 9100         	str	r1, [sp]
  35b454: 9b01         	ldr	r3, [sp, #0x4]
  35b456: ed93 7a56    	vldr	s14, [r3, #344]
  35b45a: eddd 7a00    	vldr	s15, [sp]
  35b45e: ee77 7a27    	vadd.f32	s15, s14, s15
  35b462: 9b01         	ldr	r3, [sp, #0x4]
  35b464: edc3 7a56    	vstr	s15, [r3, #344]
  35b468: 9b01         	ldr	r3, [sp, #0x4]
  35b46a: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  35b46e: 681b         	ldr	r3, [r3]
  35b470: 3390         	adds	r3, #0x90
  35b472: 681b         	ldr	r3, [r3]
  35b474: 9a01         	ldr	r2, [sp, #0x4]
  35b476: f8d2 11f0    	ldr.w	r1, [r2, #0x1f0]
  35b47a: 9a01         	ldr	r2, [sp, #0x4]
  35b47c: f892 2180    	ldrb.w	r2, [r2, #0x180]
  35b480: 4608         	mov	r0, r1
  35b482: 4611         	mov	r1, r2
  35b484: 4798         	blx	r3
  35b486: 9b01         	ldr	r3, [sp, #0x4]
  35b488: 681b         	ldr	r3, [r3]
  35b48a: f503 7315    	add.w	r3, r3, #0x254
  35b48e: 681b         	ldr	r3, [r3]
  35b490: 9a01         	ldr	r2, [sp, #0x4]
  35b492: 4610         	mov	r0, r2
  35b494: 9900         	ldr	r1, [sp]
  35b496: 4798         	blx	r3
  35b498: 9b01         	ldr	r3, [sp, #0x4]
  35b49a: f893 3181    	ldrb.w	r3, [r3, #0x181]
  35b49e: 2b00         	cmp	r3, #0x0
  35b4a0: d013         	beq	0x35b4ca <MAGNUM::updateItemStep(float)+0x82> @ imm = #0x26
  35b4a2: 9b01         	ldr	r3, [sp, #0x4]
  35b4a4: ed93 8a56    	vldr	s16, [r3, #344]
  35b4a8: 9b01         	ldr	r3, [sp, #0x4]
  35b4aa: 681b         	ldr	r3, [r3]
  35b4ac: f503 732e    	add.w	r3, r3, #0x2b8
  35b4b0: 681b         	ldr	r3, [r3]
  35b4b2: 9a01         	ldr	r2, [sp, #0x4]
  35b4b4: 4610         	mov	r0, r2
  35b4b6: 4798         	blx	r3
  35b4b8: ee07 0a90    	vmov	s15, r0
  35b4bc: eeb4 8ae7    	vcmpe.f32	s16, s15
  35b4c0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  35b4c4: dd01         	ble	0x35b4ca <MAGNUM::updateItemStep(float)+0x82> @ imm = #0x2
  35b4c6: 2301         	movs	r3, #0x1
  35b4c8: e000         	b	0x35b4cc <MAGNUM::updateItemStep(float)+0x84> @ imm = #0x0
  35b4ca: 2300         	movs	r3, #0x0
  35b4cc: 2b00         	cmp	r3, #0x0
  35b4ce: d043         	beq	0x35b558 <MAGNUM::updateItemStep(float)+0x110> @ imm = #0x86
  35b4d0: 9b01         	ldr	r3, [sp, #0x4]
  35b4d2: 2200         	movs	r2, #0x0
  35b4d4: f883 2181    	strb.w	r2, [r3, #0x181]
  35b4d8: 9b01         	ldr	r3, [sp, #0x4]
  35b4da: f04f 0200    	mov.w	r2, #0x0
  35b4de: f8c3 2110    	str.w	r2, [r3, #0x110]
  35b4e2: 9b01         	ldr	r3, [sp, #0x4]
  35b4e4: 681b         	ldr	r3, [r3]
  35b4e6: f503 732d    	add.w	r3, r3, #0x2b4
  35b4ea: 681b         	ldr	r3, [r3]
  35b4ec: 9a01         	ldr	r2, [sp, #0x4]
  35b4ee: 4610         	mov	r0, r2
  35b4f0: 4798         	blx	r3
  35b4f2: 4602         	mov	r2, r0
  35b4f4: 9b01         	ldr	r3, [sp, #0x4]
  35b4f6: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  35b4fa: b21b         	sxth	r3, r3
  35b4fc: 1ad3         	subs	r3, r2, r3
  35b4fe: 9303         	str	r3, [sp, #0xc]
  35b500: 9b01         	ldr	r3, [sp, #0x4]
  35b502: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  35b506: b29a         	uxth	r2, r3
  35b508: 9b03         	ldr	r3, [sp, #0xc]
  35b50a: b29b         	uxth	r3, r3
  35b50c: 1ad3         	subs	r3, r2, r3
  35b50e: b29b         	uxth	r3, r3
  35b510: b29a         	uxth	r2, r3
  35b512: 9b01         	ldr	r3, [sp, #0x4]
  35b514: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  35b518: 9b01         	ldr	r3, [sp, #0x4]
  35b51a: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  35b51e: b29a         	uxth	r2, r3
  35b520: 9b03         	ldr	r3, [sp, #0xc]
  35b522: b29b         	uxth	r3, r3
  35b524: 4413         	add	r3, r2
  35b526: b29a         	uxth	r2, r3
  35b528: 9b01         	ldr	r3, [sp, #0x4]
  35b52a: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  35b52e: b21b         	sxth	r3, r3
  35b530: ea03 73e3    	and.w	r3, r3, r3, asr #31
  35b534: b29b         	uxth	r3, r3
  35b536: b29b         	uxth	r3, r3
  35b538: 4413         	add	r3, r2
  35b53a: b29b         	uxth	r3, r3
  35b53c: b29a         	uxth	r2, r3
  35b53e: 9b01         	ldr	r3, [sp, #0x4]
  35b540: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  35b544: 9b01         	ldr	r3, [sp, #0x4]
  35b546: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  35b54a: b21b         	sxth	r3, r3
  35b54c: ea23 73e3    	bic.w	r3, r3, r3, asr #31
  35b550: b29a         	uxth	r2, r3
  35b552: 9b01         	ldr	r3, [sp, #0x4]
  35b554: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  35b558: b005         	add	sp, #0x14
  35b55a: ecbd 8b02    	vpop	{d8}
  35b55e: f85d fb04    	ldr	pc, [sp], #4

// ==== MAGNUM::updateRemoteItemStep
//      file offset 0x35b564 (= ELF address; Ghidra 0x36b564), 94 bytes, Thumb-2
  35b564: b500         	push	{lr}
  35b566: b083         	sub	sp, #0xc
  35b568: 9001         	str	r0, [sp, #0x4]
  35b56a: 9100         	str	r1, [sp]
  35b56c: 9b01         	ldr	r3, [sp, #0x4]
  35b56e: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  35b572: 681b         	ldr	r3, [r3]
  35b574: 3390         	adds	r3, #0x90
  35b576: 681b         	ldr	r3, [r3]
  35b578: 9a01         	ldr	r2, [sp, #0x4]
  35b57a: f8d2 11f0    	ldr.w	r1, [r2, #0x1f0]
  35b57e: 9a01         	ldr	r2, [sp, #0x4]
  35b580: f892 2180    	ldrb.w	r2, [r2, #0x180]
  35b584: 4608         	mov	r0, r1
  35b586: 4611         	mov	r1, r2
  35b588: 4798         	blx	r3
  35b58a: 9b01         	ldr	r3, [sp, #0x4]
  35b58c: 681b         	ldr	r3, [r3]
  35b58e: f503 7315    	add.w	r3, r3, #0x254
  35b592: 681b         	ldr	r3, [r3]
  35b594: 9a01         	ldr	r2, [sp, #0x4]
  35b596: 4610         	mov	r0, r2
  35b598: 9900         	ldr	r1, [sp]
  35b59a: 4798         	blx	r3
  35b59c: 9b01         	ldr	r3, [sp, #0x4]
  35b59e: f893 2194    	ldrb.w	r2, [r3, #0x194]
  35b5a2: 9b01         	ldr	r3, [sp, #0x4]
  35b5a4: f893 3195    	ldrb.w	r3, [r3, #0x195]
  35b5a8: 429a         	cmp	r2, r3
  35b5aa: d007         	beq	0x35b5bc <MAGNUM::updateRemoteItemStep(float)+0x58> @ imm = #0xe
  35b5ac: 9b01         	ldr	r3, [sp, #0x4]
  35b5ae: 681b         	ldr	r3, [r3]
  35b5b0: f503 7318    	add.w	r3, r3, #0x260
  35b5b4: 681b         	ldr	r3, [r3]
  35b5b6: 9801         	ldr	r0, [sp, #0x4]
  35b5b8: 9900         	ldr	r1, [sp]
  35b5ba: 4798         	blx	r3
  35b5bc: b003         	add	sp, #0xc
  35b5be: f85d fb04    	ldr	pc, [sp], #4

// ==== MAGNUM::remoteTriggerPull
//      file offset 0x35b5c4 (= ELF address; Ghidra 0x36b5c4), 100 bytes, Thumb-2
  35b5c4: b500         	push	{lr}
  35b5c6: b083         	sub	sp, #0xc
  35b5c8: 9001         	str	r0, [sp, #0x4]
  35b5ca: 9100         	str	r1, [sp]
  35b5cc: 9b01         	ldr	r3, [sp, #0x4]
  35b5ce: ed93 7a44    	vldr	s14, [r3, #272]
  35b5d2: 9b01         	ldr	r3, [sp, #0x4]
  35b5d4: edd3 7a57    	vldr	s15, [r3, #348]
  35b5d8: eeb4 7ae7    	vcmpe.f32	s14, s15
  35b5dc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  35b5e0: dd1f         	ble	0x35b622 <MAGNUM::remoteTriggerPull(float)+0x5e> @ imm = #0x3e
  35b5e2: 9b01         	ldr	r3, [sp, #0x4]
  35b5e4: f04f 0200    	mov.w	r2, #0x0
  35b5e8: f8c3 2110    	str.w	r2, [r3, #0x110]
  35b5ec: 9b01         	ldr	r3, [sp, #0x4]
  35b5ee: 2201         	movs	r2, #0x1
  35b5f0: f883 2180    	strb.w	r2, [r3, #0x180]
  35b5f4: 9b01         	ldr	r3, [sp, #0x4]
  35b5f6: 681b         	ldr	r3, [r3]
  35b5f8: f503 7325    	add.w	r3, r3, #0x294
  35b5fc: 681b         	ldr	r3, [r3]
  35b5fe: 9801         	ldr	r0, [sp, #0x4]
  35b600: 4798         	blx	r3
  35b602: 9b01         	ldr	r3, [sp, #0x4]
  35b604: 681b         	ldr	r3, [r3]
  35b606: f503 7342    	add.w	r3, r3, #0x308
  35b60a: 681b         	ldr	r3, [r3]
  35b60c: 9a01         	ldr	r2, [sp, #0x4]
  35b60e: 4610         	mov	r0, r2
  35b610: 4798         	blx	r3
  35b612: 9b01         	ldr	r3, [sp, #0x4]
  35b614: f893 3195    	ldrb.w	r3, [r3, #0x195]
  35b618: 3301         	adds	r3, #0x1
  35b61a: b2da         	uxtb	r2, r3
  35b61c: 9b01         	ldr	r3, [sp, #0x4]
  35b61e: f883 2195    	strb.w	r2, [r3, #0x195]
  35b622: b003         	add	sp, #0xc
  35b624: f85d fb04    	ldr	pc, [sp], #4

// ==== MAGNUM::getShellPoint
//      file offset 0x35b628 (= ELF address; Ghidra 0x36b628), 204 bytes, Thumb-2
  35b628: b510         	push	{r4, lr}
  35b62a: b08e         	sub	sp, #0x38
  35b62c: 9001         	str	r0, [sp, #0x4]
  35b62e: 9100         	str	r1, [sp]
  35b630: 4c2e         	ldr	r4, [pc, #0xb8]         @ 0x35b6ec <MAGNUM::getShellPoint()+0xc4>
  35b632: 447c         	add	r4, pc
  35b634: ab02         	add	r3, sp, #0x8
  35b636: 4618         	mov	r0, r3
  35b638: f04f 0100    	mov.w	r1, #0x0
  35b63c: f2c4 2148    	movt	r1, #0x4248
  35b640: f04f 0200    	mov.w	r2, #0x0
  35b644: f2c4 1270    	movt	r2, #0x4170
  35b648: f237 fb52    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2376a4
  35b64c: 9b00         	ldr	r3, [sp]
  35b64e: 681b         	ldr	r3, [r3]
  35b650: 3350         	adds	r3, #0x50
  35b652: 681b         	ldr	r3, [r3]
  35b654: 9a00         	ldr	r2, [sp]
  35b656: 4610         	mov	r0, r2
  35b658: 4798         	blx	r3
  35b65a: 4602         	mov	r2, r0
  35b65c: a906         	add	r1, sp, #0x18
  35b65e: ab02         	add	r3, sp, #0x8
  35b660: 4608         	mov	r0, r1
  35b662: 4611         	mov	r1, r2
  35b664: 461a         	mov	r2, r3
  35b666: f7fe fd8f    	bl	0x35a188 <MACHETE::setRight(bool)+0x1a8> @ imm = #-0x14e2
  35b66a: 9b00         	ldr	r3, [sp]
  35b66c: 681b         	ldr	r3, [r3]
  35b66e: f503 73c2    	add.w	r3, r3, #0x184
  35b672: 681b         	ldr	r3, [r3]
  35b674: 9a00         	ldr	r2, [sp]
  35b676: a908         	add	r1, sp, #0x20
  35b678: 4608         	mov	r0, r1
  35b67a: 4611         	mov	r1, r2
  35b67c: 4798         	blx	r3
  35b67e: a904         	add	r1, sp, #0x10
  35b680: aa06         	add	r2, sp, #0x18
  35b682: ab08         	add	r3, sp, #0x20
  35b684: 4608         	mov	r0, r1
  35b686: 4611         	mov	r1, r2
  35b688: 461a         	mov	r2, r3
  35b68a: f236 fe4b    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x236c96
  35b68e: 4b18         	ldr	r3, [pc, #0x60]         @ 0x35b6f0 <MAGNUM::getShellPoint()+0xc8>
  35b690: 58e3         	ldr	r3, [r4, r3]
  35b692: 681b         	ldr	r3, [r3]
  35b694: 681b         	ldr	r3, [r3]
  35b696: f503 73c4    	add.w	r3, r3, #0x188
  35b69a: 681b         	ldr	r3, [r3]
  35b69c: 4a14         	ldr	r2, [pc, #0x50]         @ 0x35b6f0 <MAGNUM::getShellPoint()+0xc8>
  35b69e: 58a2         	ldr	r2, [r4, r2]
  35b6a0: 6812         	ldr	r2, [r2]
  35b6a2: a908         	add	r1, sp, #0x20
  35b6a4: 4608         	mov	r0, r1
  35b6a6: 4611         	mov	r1, r2
  35b6a8: 4798         	blx	r3
  35b6aa: a906         	add	r1, sp, #0x18
  35b6ac: aa04         	add	r2, sp, #0x10
  35b6ae: ab08         	add	r3, sp, #0x20
  35b6b0: 4608         	mov	r0, r1
  35b6b2: 4611         	mov	r1, r2
  35b6b4: 461a         	mov	r2, r3
  35b6b6: f236 fe35    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x236c6a
  35b6ba: aa04         	add	r2, sp, #0x10
  35b6bc: ab06         	add	r3, sp, #0x18
  35b6be: 4610         	mov	r0, r2
  35b6c0: 4619         	mov	r1, r3
  35b6c2: f237 fb43    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x237686
  35b6c6: eddd 7a04    	vldr	s15, [sp, #16]
  35b6ca: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  35b6ce: eddd 7a05    	vldr	s15, [sp, #20]
  35b6d2: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  35b6d6: 9b01         	ldr	r3, [sp, #0x4]
  35b6d8: 4618         	mov	r0, r3
  35b6da: eeb0 0b46    	vmov.f64	d0, d6
  35b6de: eeb0 1b47    	vmov.f64	d1, d7
  35b6e2: f7fe fd61    	bl	0x35a1a8 <MACHETE::setRight(bool)+0x1c8> @ imm = #-0x153e
  35b6e6: 9801         	ldr	r0, [sp, #0x4]
  35b6e8: b00e         	add	sp, #0x38
  35b6ea: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x35b6eb); words below are literal-pool data ---
  35b6ec: 73d6         	strb	r6, [r2, #0xf]
  35b6ee: 005d         	lsls	r5, r3, #0x1
  35b6f0: d744         	bvc	0x35b77c <MAGNUM::setPrimaryConfiguration()+0x40> @ imm = #0x88
  35b6f2: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== MAGNUM::playSound
//      file offset 0x35b6f4 (= ELF address; Ghidra 0x36b6f4), 72 bytes, Thumb-2
  35b6f4: b510         	push	{r4, lr}
  35b6f6: b088         	sub	sp, #0x20
  35b6f8: 9003         	str	r0, [sp, #0xc]
  35b6fa: 4a0e         	ldr	r2, [pc, #0x38]         @ 0x35b734 <MAGNUM::playSound()+0x40>
  35b6fc: 447a         	add	r2, pc
  35b6fe: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x35b738 <MAGNUM::playSound()+0x44>
  35b700: 58d3         	ldr	r3, [r2, r3]
  35b702: 681c         	ldr	r4, [r3]
  35b704: 9b03         	ldr	r3, [sp, #0xc]
  35b706: 681b         	ldr	r3, [r3]
  35b708: f503 7348    	add.w	r3, r3, #0x320
  35b70c: 681b         	ldr	r3, [r3]
  35b70e: 9a03         	ldr	r2, [sp, #0xc]
  35b710: a904         	add	r1, sp, #0x10
  35b712: 4608         	mov	r0, r1
  35b714: 4611         	mov	r1, r2
  35b716: 4798         	blx	r3
  35b718: 466b         	mov	r3, sp
  35b71a: aa06         	add	r2, sp, #0x18
  35b71c: e892 0003    	ldm.w	r2, {r0, r1}
  35b720: e883 0003    	stm.w	r3, {r0, r1}
  35b724: ab04         	add	r3, sp, #0x10
  35b726: cb0c         	ldm	r3, {r2, r3}
  35b728: 4620         	mov	r0, r4
  35b72a: 2113         	movs	r1, #0x13
  35b72c: f09c fc64    	bl	0x3f7ff8 <Sound::playSoundPosition(int, cpVect)> @ imm = #0x9c8c8
  35b730: b008         	add	sp, #0x20
  35b732: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x35b733); words below are literal-pool data ---
  35b734: 730c         	strb	r4, [r1, #0xc]
  35b736: 005d         	lsls	r5, r3, #0x1
  35b738: d730         	bvc	0x35b79c <MAGNUM::setPrimaryConfiguration()+0x60> @ imm = #0x60
  35b73a: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== MAGNUM::setPrimaryConfiguration
//      file offset 0x35b73c (= ELF address; Ghidra 0x36b73c), 316 bytes, Thumb-2
  35b73c: b530         	push	{r4, r5, lr}
  35b73e: b085         	sub	sp, #0x14
  35b740: 9001         	str	r0, [sp, #0x4]
  35b742: 9b01         	ldr	r3, [sp, #0x4]
  35b744: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  35b748: 2b00         	cmp	r3, #0x0
  35b74a: d019         	beq	0x35b780 <MAGNUM::setPrimaryConfiguration()+0x44> @ imm = #0x32
  35b74c: 9b01         	ldr	r3, [sp, #0x4]
  35b74e: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  35b752: 4b48         	ldr	r3, [pc, #0x120]        @ 0x35b874 <MAGNUM::setPrimaryConfiguration()+0x138>
  35b754: 447b         	add	r3, pc
  35b756: ed93 6b00    	vldr	d6, [r3]
  35b75a: ed93 7b02    	vldr	d7, [r3, #8]
  35b75e: 4610         	mov	r0, r2
  35b760: eeb0 0b46    	vmov.f64	d0, d6
  35b764: eeb0 1b47    	vmov.f64	d1, d7
  35b768: f7fe fd32    	bl	0x35a1d0 <MACHETE::setRight(bool)+0x1f0> @ imm = #-0x159c
  35b76c: 9b01         	ldr	r3, [sp, #0x4]
  35b76e: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  35b772: 4618         	mov	r0, r3
  35b774: f04f 0200    	mov.w	r2, #0x0
  35b778: f04f 0300    	mov.w	r3, #0x0
  35b77c: f377 fd09    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x377a12
  35b780: 9b01         	ldr	r3, [sp, #0x4]
  35b782: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  35b786: 681b         	ldr	r3, [r3]
  35b788: 334c         	adds	r3, #0x4c
  35b78a: 681c         	ldr	r4, [r3]
  35b78c: 9b01         	ldr	r3, [sp, #0x4]
  35b78e: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  35b792: ab02         	add	r3, sp, #0x8
  35b794: 4618         	mov	r0, r3
  35b796: f04f 0100    	mov.w	r1, #0x0
  35b79a: f04f 0200    	mov.w	r2, #0x0
  35b79e: f237 faa7    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x23754e
  35b7a2: ab02         	add	r3, sp, #0x8
  35b7a4: 4628         	mov	r0, r5
  35b7a6: 4619         	mov	r1, r3
  35b7a8: 47a0         	blx	r4
  35b7aa: 9b01         	ldr	r3, [sp, #0x4]
  35b7ac: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  35b7b0: 681b         	ldr	r3, [r3]
  35b7b2: 337c         	adds	r3, #0x7c
  35b7b4: 681c         	ldr	r4, [r3]
  35b7b6: 9b01         	ldr	r3, [sp, #0x4]
  35b7b8: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  35b7bc: ab02         	add	r3, sp, #0x8
  35b7be: 4618         	mov	r0, r3
  35b7c0: f649 119a    	movw	r1, #0x999a
  35b7c4: f6cb 6199    	movt	r1, #0xbe99
  35b7c8: f64c 42cd    	movw	r2, #0xcccd
  35b7cc: f6c3 62cc    	movt	r2, #0x3ecc
  35b7d0: f237 fa8e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x23751c
  35b7d4: ab02         	add	r3, sp, #0x8
  35b7d6: 4628         	mov	r0, r5
  35b7d8: 4619         	mov	r1, r3
  35b7da: 47a0         	blx	r4
  35b7dc: 9b01         	ldr	r3, [sp, #0x4]
  35b7de: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  35b7e2: 681b         	ldr	r3, [r3]
  35b7e4: 3398         	adds	r3, #0x98
  35b7e6: 681b         	ldr	r3, [r3]
  35b7e8: 9a01         	ldr	r2, [sp, #0x4]
  35b7ea: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  35b7ee: 4610         	mov	r0, r2
  35b7f0: f04f 0100    	mov.w	r1, #0x0
  35b7f4: 4798         	blx	r3
  35b7f6: 9b01         	ldr	r3, [sp, #0x4]
  35b7f8: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  35b7fc: 681b         	ldr	r3, [r3]
  35b7fe: 3340         	adds	r3, #0x40
  35b800: 681b         	ldr	r3, [r3]
  35b802: 9a01         	ldr	r2, [sp, #0x4]
  35b804: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  35b808: 4610         	mov	r0, r2
  35b80a: f04f 517e    	mov.w	r1, #0x3f800000
  35b80e: 4798         	blx	r3
  35b810: 9b01         	ldr	r3, [sp, #0x4]
  35b812: 681b         	ldr	r3, [r3]
  35b814: 334c         	adds	r3, #0x4c
  35b816: 681c         	ldr	r4, [r3]
  35b818: 9d01         	ldr	r5, [sp, #0x4]
  35b81a: ab02         	add	r3, sp, #0x8
  35b81c: 4618         	mov	r0, r3
  35b81e: f04f 0100    	mov.w	r1, #0x0
  35b822: f04f 0200    	mov.w	r2, #0x0
  35b826: f237 fa63    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2374c6
  35b82a: ab02         	add	r3, sp, #0x8
  35b82c: 4628         	mov	r0, r5
  35b82e: 4619         	mov	r1, r3
  35b830: 47a0         	blx	r4
  35b832: 9b01         	ldr	r3, [sp, #0x4]
  35b834: 681b         	ldr	r3, [r3]
  35b836: 3340         	adds	r3, #0x40
  35b838: 681b         	ldr	r3, [r3]
  35b83a: 9a01         	ldr	r2, [sp, #0x4]
  35b83c: 4610         	mov	r0, r2
  35b83e: f04f 517e    	mov.w	r1, #0x3f800000
  35b842: 4798         	blx	r3
  35b844: 9b01         	ldr	r3, [sp, #0x4]
  35b846: 681b         	ldr	r3, [r3]
  35b848: 3398         	adds	r3, #0x98
  35b84a: 681b         	ldr	r3, [r3]
  35b84c: 9a01         	ldr	r2, [sp, #0x4]
  35b84e: 4610         	mov	r0, r2
  35b850: f04f 0100    	mov.w	r1, #0x0
  35b854: 4798         	blx	r3
  35b856: 9b01         	ldr	r3, [sp, #0x4]
  35b858: 2200         	movs	r2, #0x0
  35b85a: f883 2195    	strb.w	r2, [r3, #0x195]
  35b85e: 9b01         	ldr	r3, [sp, #0x4]
  35b860: 2200         	movs	r2, #0x0
  35b862: f883 2194    	strb.w	r2, [r3, #0x194]
  35b866: 9b01         	ldr	r3, [sp, #0x4]
  35b868: f04f 0200    	mov.w	r2, #0x0
  35b86c: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  35b870: b005         	add	sp, #0x14
  35b872: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x35b873); words below are literal-pool data ---
  35b874: 1118         	asrs	r0, r3, #0x4
  35b876: 0047         	lsls	r7, r0, #0x1

// ==== MAGNUM::setSecondaryConfiguration
//      file offset 0x35b878 (= ELF address; Ghidra 0x36b878), 340 bytes, Thumb-2
  35b878: b530         	push	{r4, r5, lr}
  35b87a: b085         	sub	sp, #0x14
  35b87c: 9001         	str	r0, [sp, #0x4]
  35b87e: 9b01         	ldr	r3, [sp, #0x4]
  35b880: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  35b884: 2b00         	cmp	r3, #0x0
  35b886: d019         	beq	0x35b8bc <MAGNUM::setSecondaryConfiguration()+0x44> @ imm = #0x32
  35b888: 9b01         	ldr	r3, [sp, #0x4]
  35b88a: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  35b88e: 4b4e         	ldr	r3, [pc, #0x138]        @ 0x35b9c8 <MAGNUM::setSecondaryConfiguration()+0x150>
  35b890: 447b         	add	r3, pc
  35b892: ed93 6b00    	vldr	d6, [r3]
  35b896: ed93 7b02    	vldr	d7, [r3, #8]
  35b89a: 4610         	mov	r0, r2
  35b89c: eeb0 0b46    	vmov.f64	d0, d6
  35b8a0: eeb0 1b47    	vmov.f64	d1, d7
  35b8a4: f7fe fc94    	bl	0x35a1d0 <MACHETE::setRight(bool)+0x1f0> @ imm = #-0x16d8
  35b8a8: 9b01         	ldr	r3, [sp, #0x4]
  35b8aa: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  35b8ae: 4618         	mov	r0, r3
  35b8b0: f04f 0200    	mov.w	r2, #0x0
  35b8b4: f04f 0300    	mov.w	r3, #0x0
  35b8b8: f377 fc6b    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x3778d6
  35b8bc: 9b01         	ldr	r3, [sp, #0x4]
  35b8be: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  35b8c2: 681b         	ldr	r3, [r3]
  35b8c4: 334c         	adds	r3, #0x4c
  35b8c6: 681c         	ldr	r4, [r3]
  35b8c8: 9b01         	ldr	r3, [sp, #0x4]
  35b8ca: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  35b8ce: ab02         	add	r3, sp, #0x8
  35b8d0: 4618         	mov	r0, r3
  35b8d2: f04f 0100    	mov.w	r1, #0x0
  35b8d6: f2cc 11f0    	movt	r1, #0xc1f0
  35b8da: f04f 0200    	mov.w	r2, #0x0
  35b8de: f237 fa07    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x23740e
  35b8e2: ab02         	add	r3, sp, #0x8
  35b8e4: 4628         	mov	r0, r5
  35b8e6: 4619         	mov	r1, r3
  35b8e8: 47a0         	blx	r4
  35b8ea: 9b01         	ldr	r3, [sp, #0x4]
  35b8ec: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  35b8f0: 681b         	ldr	r3, [r3]
  35b8f2: 337c         	adds	r3, #0x7c
  35b8f4: 681c         	ldr	r4, [r3]
  35b8f6: 9b01         	ldr	r3, [sp, #0x4]
  35b8f8: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  35b8fc: ab02         	add	r3, sp, #0x8
  35b8fe: 4618         	mov	r0, r3
  35b900: f04f 517c    	mov.w	r1, #0x3f000000
  35b904: f04f 527c    	mov.w	r2, #0x3f000000
  35b908: f237 f9f2    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2373e4
  35b90c: ab02         	add	r3, sp, #0x8
  35b90e: 4628         	mov	r0, r5
  35b910: 4619         	mov	r1, r3
  35b912: 47a0         	blx	r4
  35b914: 9b01         	ldr	r3, [sp, #0x4]
  35b916: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  35b91a: 681b         	ldr	r3, [r3]
  35b91c: 3398         	adds	r3, #0x98
  35b91e: 681b         	ldr	r3, [r3]
  35b920: 9a01         	ldr	r2, [sp, #0x4]
  35b922: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  35b926: 4610         	mov	r0, r2
  35b928: f04f 0100    	mov.w	r1, #0x0
  35b92c: f2c4 2196    	movt	r1, #0x4296
  35b930: 4798         	blx	r3
  35b932: 9b01         	ldr	r3, [sp, #0x4]
  35b934: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  35b938: 681b         	ldr	r3, [r3]
  35b93a: 3340         	adds	r3, #0x40
  35b93c: 681b         	ldr	r3, [r3]
  35b93e: 9a01         	ldr	r2, [sp, #0x4]
  35b940: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  35b944: 4610         	mov	r0, r2
  35b946: f04f 517e    	mov.w	r1, #0x3f800000
  35b94a: 4798         	blx	r3
  35b94c: 9b01         	ldr	r3, [sp, #0x4]
  35b94e: 681b         	ldr	r3, [r3]
  35b950: 334c         	adds	r3, #0x4c
  35b952: 681c         	ldr	r4, [r3]
  35b954: 9d01         	ldr	r5, [sp, #0x4]
  35b956: ab02         	add	r3, sp, #0x8
  35b958: 4618         	mov	r0, r3
  35b95a: f04f 0100    	mov.w	r1, #0x0
  35b95e: f04f 0200    	mov.w	r2, #0x0
  35b962: f237 f9c5    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x23738a
  35b966: ab02         	add	r3, sp, #0x8
  35b968: 4628         	mov	r0, r5
  35b96a: 4619         	mov	r1, r3
  35b96c: 47a0         	blx	r4
  35b96e: 9b01         	ldr	r3, [sp, #0x4]
  35b970: 681b         	ldr	r3, [r3]
  35b972: 3340         	adds	r3, #0x40
  35b974: 681b         	ldr	r3, [r3]
  35b976: 9a01         	ldr	r2, [sp, #0x4]
  35b978: 4610         	mov	r0, r2
  35b97a: f04f 517e    	mov.w	r1, #0x3f800000
  35b97e: 4798         	blx	r3
  35b980: 9b01         	ldr	r3, [sp, #0x4]
  35b982: 681b         	ldr	r3, [r3]
  35b984: 3398         	adds	r3, #0x98
  35b986: 681b         	ldr	r3, [r3]
  35b988: 9a01         	ldr	r2, [sp, #0x4]
  35b98a: 4610         	mov	r0, r2
  35b98c: f04f 0100    	mov.w	r1, #0x0
  35b990: 4798         	blx	r3
  35b992: 9b01         	ldr	r3, [sp, #0x4]
  35b994: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  35b998: 681b         	ldr	r3, [r3]
  35b99a: 3390         	adds	r3, #0x90
  35b99c: 681b         	ldr	r3, [r3]
  35b99e: 9a01         	ldr	r2, [sp, #0x4]
  35b9a0: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  35b9a4: 4610         	mov	r0, r2
  35b9a6: 2100         	movs	r1, #0x0
  35b9a8: 4798         	blx	r3
  35b9aa: 9b01         	ldr	r3, [sp, #0x4]
  35b9ac: 2200         	movs	r2, #0x0
  35b9ae: f883 2195    	strb.w	r2, [r3, #0x195]
  35b9b2: 9b01         	ldr	r3, [sp, #0x4]
  35b9b4: 2200         	movs	r2, #0x0
  35b9b6: f883 2194    	strb.w	r2, [r3, #0x194]
  35b9ba: 9b01         	ldr	r3, [sp, #0x4]
  35b9bc: f04f 0200    	mov.w	r2, #0x0
  35b9c0: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  35b9c4: b005         	add	sp, #0x14
  35b9c6: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x35b9c7); words below are literal-pool data ---
  35b9c8: 0fdc         	lsrs	r4, r3, #0x1f
  35b9ca: 0047         	lsls	r7, r0, #0x1

// ==== MAGNUM::setDualConfiguration
//      file offset 0x35b9cc (= ELF address; Ghidra 0x36b9cc), 316 bytes, Thumb-2
  35b9cc: b530         	push	{r4, r5, lr}
  35b9ce: b085         	sub	sp, #0x14
  35b9d0: 9001         	str	r0, [sp, #0x4]
  35b9d2: 9b01         	ldr	r3, [sp, #0x4]
  35b9d4: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  35b9d8: 2b00         	cmp	r3, #0x0
  35b9da: d019         	beq	0x35ba10 <MAGNUM::setDualConfiguration()+0x44> @ imm = #0x32
  35b9dc: 9b01         	ldr	r3, [sp, #0x4]
  35b9de: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  35b9e2: 4b48         	ldr	r3, [pc, #0x120]        @ 0x35bb04 <MAGNUM::setDualConfiguration()+0x138>
  35b9e4: 447b         	add	r3, pc
  35b9e6: ed93 6b00    	vldr	d6, [r3]
  35b9ea: ed93 7b02    	vldr	d7, [r3, #8]
  35b9ee: 4610         	mov	r0, r2
  35b9f0: eeb0 0b46    	vmov.f64	d0, d6
  35b9f4: eeb0 1b47    	vmov.f64	d1, d7
  35b9f8: f7fe fbea    	bl	0x35a1d0 <MACHETE::setRight(bool)+0x1f0> @ imm = #-0x182c
  35b9fc: 9b01         	ldr	r3, [sp, #0x4]
  35b9fe: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  35ba02: 4618         	mov	r0, r3
  35ba04: f04f 0200    	mov.w	r2, #0x0
  35ba08: f04f 0300    	mov.w	r3, #0x0
  35ba0c: f377 fbc1    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x377782
  35ba10: 9b01         	ldr	r3, [sp, #0x4]
  35ba12: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  35ba16: 681b         	ldr	r3, [r3]
  35ba18: 334c         	adds	r3, #0x4c
  35ba1a: 681c         	ldr	r4, [r3]
  35ba1c: 9b01         	ldr	r3, [sp, #0x4]
  35ba1e: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  35ba22: ab02         	add	r3, sp, #0x8
  35ba24: 4618         	mov	r0, r3
  35ba26: f04f 0100    	mov.w	r1, #0x0
  35ba2a: f04f 0200    	mov.w	r2, #0x0
  35ba2e: f237 f95f    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2372be
  35ba32: ab02         	add	r3, sp, #0x8
  35ba34: 4628         	mov	r0, r5
  35ba36: 4619         	mov	r1, r3
  35ba38: 47a0         	blx	r4
  35ba3a: 9b01         	ldr	r3, [sp, #0x4]
  35ba3c: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  35ba40: 681b         	ldr	r3, [r3]
  35ba42: 337c         	adds	r3, #0x7c
  35ba44: 681c         	ldr	r4, [r3]
  35ba46: 9b01         	ldr	r3, [sp, #0x4]
  35ba48: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  35ba4c: ab02         	add	r3, sp, #0x8
  35ba4e: 4618         	mov	r0, r3
  35ba50: f649 119a    	movw	r1, #0x999a
  35ba54: f6cb 6199    	movt	r1, #0xbe99
  35ba58: f64c 42cd    	movw	r2, #0xcccd
  35ba5c: f6c3 62cc    	movt	r2, #0x3ecc
  35ba60: f237 f946    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x23728c
  35ba64: ab02         	add	r3, sp, #0x8
  35ba66: 4628         	mov	r0, r5
  35ba68: 4619         	mov	r1, r3
  35ba6a: 47a0         	blx	r4
  35ba6c: 9b01         	ldr	r3, [sp, #0x4]
  35ba6e: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  35ba72: 681b         	ldr	r3, [r3]
  35ba74: 3398         	adds	r3, #0x98
  35ba76: 681b         	ldr	r3, [r3]
  35ba78: 9a01         	ldr	r2, [sp, #0x4]
  35ba7a: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  35ba7e: 4610         	mov	r0, r2
  35ba80: f04f 0100    	mov.w	r1, #0x0
  35ba84: 4798         	blx	r3
  35ba86: 9b01         	ldr	r3, [sp, #0x4]
  35ba88: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  35ba8c: 681b         	ldr	r3, [r3]
  35ba8e: 3340         	adds	r3, #0x40
  35ba90: 681b         	ldr	r3, [r3]
  35ba92: 9a01         	ldr	r2, [sp, #0x4]
  35ba94: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  35ba98: 4610         	mov	r0, r2
  35ba9a: f04f 517e    	mov.w	r1, #0x3f800000
  35ba9e: 4798         	blx	r3
  35baa0: 9b01         	ldr	r3, [sp, #0x4]
  35baa2: 681b         	ldr	r3, [r3]
  35baa4: 334c         	adds	r3, #0x4c
  35baa6: 681c         	ldr	r4, [r3]
  35baa8: 9d01         	ldr	r5, [sp, #0x4]
  35baaa: ab02         	add	r3, sp, #0x8
  35baac: 4618         	mov	r0, r3
  35baae: f04f 0100    	mov.w	r1, #0x0
  35bab2: f04f 0200    	mov.w	r2, #0x0
  35bab6: f237 f91b    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x237236
  35baba: ab02         	add	r3, sp, #0x8
  35babc: 4628         	mov	r0, r5
  35babe: 4619         	mov	r1, r3
  35bac0: 47a0         	blx	r4
  35bac2: 9b01         	ldr	r3, [sp, #0x4]
  35bac4: 681b         	ldr	r3, [r3]
  35bac6: 3340         	adds	r3, #0x40
  35bac8: 681b         	ldr	r3, [r3]
  35baca: 9a01         	ldr	r2, [sp, #0x4]
  35bacc: 4610         	mov	r0, r2
  35bace: f04f 517e    	mov.w	r1, #0x3f800000
  35bad2: 4798         	blx	r3
  35bad4: 9b01         	ldr	r3, [sp, #0x4]
  35bad6: 681b         	ldr	r3, [r3]
  35bad8: 3398         	adds	r3, #0x98
  35bada: 681b         	ldr	r3, [r3]
  35badc: 9a01         	ldr	r2, [sp, #0x4]
  35bade: 4610         	mov	r0, r2
  35bae0: f04f 0100    	mov.w	r1, #0x0
  35bae4: 4798         	blx	r3
  35bae6: 9b01         	ldr	r3, [sp, #0x4]
  35bae8: 2200         	movs	r2, #0x0
  35baea: f883 2195    	strb.w	r2, [r3, #0x195]
  35baee: 9b01         	ldr	r3, [sp, #0x4]
  35baf0: 2200         	movs	r2, #0x0
  35baf2: f883 2194    	strb.w	r2, [r3, #0x194]
  35baf6: 9b01         	ldr	r3, [sp, #0x4]
  35baf8: f04f 0200    	mov.w	r2, #0x0
  35bafc: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  35bb00: b005         	add	sp, #0x14
  35bb02: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x35bb03); words below are literal-pool data ---
  35bb04: 0e88         	lsrs	r0, r1, #0x1a
  35bb06: 0047         	lsls	r7, r0, #0x1

// ==== MAGNUM::setMapConfiguration
//      file offset 0x35bb08 (= ELF address; Ghidra 0x36bb08), 248 bytes, Thumb-2
  35bb08: b570         	push	{r4, r5, r6, lr}
  35bb0a: b084         	sub	sp, #0x10
  35bb0c: 9001         	str	r0, [sp, #0x4]
  35bb0e: 4c3a         	ldr	r4, [pc, #0xe8]         @ 0x35bbf8 <MAGNUM::setMapConfiguration()+0xf0>
  35bb10: 447c         	add	r4, pc
  35bb12: 9b01         	ldr	r3, [sp, #0x4]
  35bb14: f04f 0200    	mov.w	r2, #0x0
  35bb18: f8c3 2190    	str.w	r2, [r3, #0x190]
  35bb1c: 9b01         	ldr	r3, [sp, #0x4]
  35bb1e: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  35bb22: 681b         	ldr	r3, [r3]
  35bb24: 334c         	adds	r3, #0x4c
  35bb26: 681d         	ldr	r5, [r3]
  35bb28: 9b01         	ldr	r3, [sp, #0x4]
  35bb2a: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  35bb2e: ab02         	add	r3, sp, #0x8
  35bb30: 4618         	mov	r0, r3
  35bb32: f04f 0100    	mov.w	r1, #0x0
  35bb36: f04f 0200    	mov.w	r2, #0x0
  35bb3a: f237 f8d9    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2371b2
  35bb3e: ab02         	add	r3, sp, #0x8
  35bb40: 4630         	mov	r0, r6
  35bb42: 4619         	mov	r1, r3
  35bb44: 47a8         	blx	r5
  35bb46: 9b01         	ldr	r3, [sp, #0x4]
  35bb48: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  35bb4c: 681b         	ldr	r3, [r3]
  35bb4e: 337c         	adds	r3, #0x7c
  35bb50: 681d         	ldr	r5, [r3]
  35bb52: 9b01         	ldr	r3, [sp, #0x4]
  35bb54: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  35bb58: ab02         	add	r3, sp, #0x8
  35bb5a: 4618         	mov	r0, r3
  35bb5c: f04f 517c    	mov.w	r1, #0x3f000000
  35bb60: f04f 527c    	mov.w	r2, #0x3f000000
  35bb64: f237 f8c4    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x237188
  35bb68: ab02         	add	r3, sp, #0x8
  35bb6a: 4630         	mov	r0, r6
  35bb6c: 4619         	mov	r1, r3
  35bb6e: 47a8         	blx	r5
  35bb70: 9b01         	ldr	r3, [sp, #0x4]
  35bb72: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  35bb76: 681b         	ldr	r3, [r3]
  35bb78: 3398         	adds	r3, #0x98
  35bb7a: 681b         	ldr	r3, [r3]
  35bb7c: 9a01         	ldr	r2, [sp, #0x4]
  35bb7e: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  35bb82: 4610         	mov	r0, r2
  35bb84: f04f 0100    	mov.w	r1, #0x0
  35bb88: 4798         	blx	r3
  35bb8a: 9b01         	ldr	r3, [sp, #0x4]
  35bb8c: 681b         	ldr	r3, [r3]
  35bb8e: 334c         	adds	r3, #0x4c
  35bb90: 681d         	ldr	r5, [r3]
  35bb92: 9e01         	ldr	r6, [sp, #0x4]
  35bb94: ab02         	add	r3, sp, #0x8
  35bb96: 4618         	mov	r0, r3
  35bb98: f04f 0100    	mov.w	r1, #0x0
  35bb9c: f04f 0200    	mov.w	r2, #0x0
  35bba0: f237 f8a6    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x23714c
  35bba4: ab02         	add	r3, sp, #0x8
  35bba6: 4630         	mov	r0, r6
  35bba8: 4619         	mov	r1, r3
  35bbaa: 47a8         	blx	r5
  35bbac: 9b01         	ldr	r3, [sp, #0x4]
  35bbae: 681b         	ldr	r3, [r3]
  35bbb0: 3340         	adds	r3, #0x40
  35bbb2: 681b         	ldr	r3, [r3]
  35bbb4: 9901         	ldr	r1, [sp, #0x4]
  35bbb6: 4a11         	ldr	r2, [pc, #0x44]         @ 0x35bbfc <MAGNUM::setMapConfiguration()+0xf4>
  35bbb8: 58a2         	ldr	r2, [r4, r2]
  35bbba: 6812         	ldr	r2, [r2]
  35bbbc: 4608         	mov	r0, r1
  35bbbe: 4611         	mov	r1, r2
  35bbc0: 4798         	blx	r3
  35bbc2: 9b01         	ldr	r3, [sp, #0x4]
  35bbc4: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  35bbc8: 681b         	ldr	r3, [r3]
  35bbca: 3390         	adds	r3, #0x90
  35bbcc: 681b         	ldr	r3, [r3]
  35bbce: 9a01         	ldr	r2, [sp, #0x4]
  35bbd0: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  35bbd4: 4610         	mov	r0, r2
  35bbd6: 2100         	movs	r1, #0x0
  35bbd8: 4798         	blx	r3
  35bbda: 9b01         	ldr	r3, [sp, #0x4]
  35bbdc: 2200         	movs	r2, #0x0
  35bbde: f883 2195    	strb.w	r2, [r3, #0x195]
  35bbe2: 9b01         	ldr	r3, [sp, #0x4]
  35bbe4: 2200         	movs	r2, #0x0
  35bbe6: f883 2194    	strb.w	r2, [r3, #0x194]
  35bbea: 9b01         	ldr	r3, [sp, #0x4]
  35bbec: f04f 0200    	mov.w	r2, #0x0
  35bbf0: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  35bbf4: b004         	add	sp, #0x10
  35bbf6: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x35bbf7); words below are literal-pool data ---
  35bbf8: 6ef8         	ldr	r0, [r7, #0x6c]
  35bbfa: 005d         	lsls	r5, r3, #0x1
  35bbfc: d748         	bvc	0x35bc90 <MAGNUM::setRight(bool)+0x4> @ imm = #0x90
  35bbfe: ffff b500    	<unknown>

// ==== MAGNUM::getWeaponTexture
//      file offset 0x35bc00 (= ELF address; Ghidra 0x36bc00), 40 bytes, Thumb-2
  35bc00: b500         	push	{lr}
  35bc02: b083         	sub	sp, #0xc
  35bc04: 9001         	str	r0, [sp, #0x4]
  35bc06: 9b01         	ldr	r3, [sp, #0x4]
  35bc08: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  35bc0c: 681b         	ldr	r3, [r3]
  35bc0e: f503 73fa    	add.w	r3, r3, #0x1f4
  35bc12: 681b         	ldr	r3, [r3]
  35bc14: 9a01         	ldr	r2, [sp, #0x4]
  35bc16: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  35bc1a: 4610         	mov	r0, r2
  35bc1c: 4798         	blx	r3
  35bc1e: 4603         	mov	r3, r0
  35bc20: 4618         	mov	r0, r3
  35bc22: b003         	add	sp, #0xc
  35bc24: f85d fb04    	ldr	pc, [sp], #4

// ==== MAGNUM::getWeaponRect
//      file offset 0x35bc28 (= ELF address; Ghidra 0x36bc28), 38 bytes, Thumb-2
  35bc28: b500         	push	{lr}
  35bc2a: b083         	sub	sp, #0xc
  35bc2c: 9001         	str	r0, [sp, #0x4]
  35bc2e: 9100         	str	r1, [sp]
  35bc30: 9b00         	ldr	r3, [sp]
  35bc32: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  35bc36: 4618         	mov	r0, r3
  35bc38: f781 f850    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x7ef60
  35bc3c: 4603         	mov	r3, r0
  35bc3e: 9801         	ldr	r0, [sp, #0x4]
  35bc40: 4619         	mov	r1, r3
  35bc42: f237 fb69    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x2376d2
  35bc46: 9801         	ldr	r0, [sp, #0x4]
  35bc48: b003         	add	sp, #0xc
  35bc4a: f85d fb04    	ldr	pc, [sp], #4

// ==== MAGNUM::isRight
//      file offset 0x35bc50 (= ELF address; Ghidra 0x36bc50), 60 bytes, Thumb-2
  35bc50: b500         	push	{lr}
  35bc52: b083         	sub	sp, #0xc
  35bc54: 9001         	str	r0, [sp, #0x4]
  35bc56: 9b01         	ldr	r3, [sp, #0x4]
  35bc58: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  35bc5c: 681b         	ldr	r3, [r3]
  35bc5e: 3334         	adds	r3, #0x34
  35bc60: 681b         	ldr	r3, [r3]
  35bc62: 9a01         	ldr	r2, [sp, #0x4]
  35bc64: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  35bc68: 4610         	mov	r0, r2
  35bc6a: 4798         	blx	r3
  35bc6c: ee07 0a10    	vmov	s14, r0
  35bc70: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  35bc74: eeb4 7ae7    	vcmpe.f32	s14, s15
  35bc78: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  35bc7c: bfd4         	ite	le
  35bc7e: 2300         	movle	r3, #0x0
  35bc80: 2301         	movgt	r3, #0x1
  35bc82: b2db         	uxtb	r3, r3
  35bc84: 4618         	mov	r0, r3
  35bc86: b003         	add	sp, #0xc
  35bc88: f85d fb04    	ldr	pc, [sp], #4

// ==== MAGNUM::setRight
//      file offset 0x35bc8c (= ELF address; Ghidra 0x36bc8c), 64 bytes, Thumb-2
  35bc8c: b500         	push	{lr}
  35bc8e: b083         	sub	sp, #0xc
  35bc90: 9001         	str	r0, [sp, #0x4]
  35bc92: 460b         	mov	r3, r1
  35bc94: f88d 3003    	strb.w	r3, [sp, #0x3]
  35bc98: 9b01         	ldr	r3, [sp, #0x4]
  35bc9a: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  35bc9e: 681b         	ldr	r3, [r3]
  35bca0: 3330         	adds	r3, #0x30
  35bca2: 681a         	ldr	r2, [r3]
  35bca4: 9b01         	ldr	r3, [sp, #0x4]
  35bca6: f8d3 11ec    	ldr.w	r1, [r3, #0x1ec]
  35bcaa: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  35bcae: 2b00         	cmp	r3, #0x0
  35bcb0: d002         	beq	0x35bcb8 <MAGNUM::setRight(bool)+0x2c> @ imm = #0x4
  35bcb2: f04f 537e    	mov.w	r3, #0x3f800000
  35bcb6: e003         	b	0x35bcc0 <MAGNUM::setRight(bool)+0x34> @ imm = #0x6
  35bcb8: f04f 0300    	mov.w	r3, #0x0
  35bcbc: f6cb 7380    	movt	r3, #0xbf80
  35bcc0: 4608         	mov	r0, r1
  35bcc2: 4619         	mov	r1, r3
  35bcc4: 4790         	blx	r2
  35bcc6: b003         	add	sp, #0xc
  35bcc8: f85d fb04    	ldr	pc, [sp], #4

// ==== MAGNUM::getRANGE
//      file offset 0x35bccc (= ELF address; Ghidra 0x36bccc), 16 bytes, Thumb-2
  35bccc: 4b02         	ldr	r3, [pc, #0x8]          @ 0x35bcd8 <MAGNUM::getRANGE()+0xc>
  35bcce: 447b         	add	r3, pc
  35bcd0: 681b         	ldr	r3, [r3]
  35bcd2: 4618         	mov	r0, r3
  35bcd4: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x35bcd5); words below are literal-pool data ---
  35bcd6: bf00         	nop
  35bcd8: 771e         	strb	r6, [r3, #0x1c]
  35bcda: 005d         	lsls	r5, r3, #0x1

// ==== MAGNUM::getDAMAGE
//      file offset 0x35bcdc (= ELF address; Ghidra 0x36bcdc), 16 bytes, Thumb-2
  35bcdc: 4b02         	ldr	r3, [pc, #0x8]          @ 0x35bce8 <MAGNUM::getDAMAGE()+0xc>
  35bcde: 447b         	add	r3, pc
  35bce0: 681b         	ldr	r3, [r3]
  35bce2: 4618         	mov	r0, r3
  35bce4: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x35bce5); words below are literal-pool data ---
  35bce6: bf00         	nop
  35bce8: 770a         	strb	r2, [r1, #0x1c]
  35bcea: 005d         	lsls	r5, r3, #0x1

// ==== MAGNUM::create
//      file offset 0x41701c (= ELF address; Ghidra 0x42701c), 112 bytes, Thumb-2
  41701c: b510         	push	{r4, lr}
  41701e: b082         	sub	sp, #0x8
  417020: f44f 70fc    	mov.w	r0, #0x1f8
  417024: f370 fc9e    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x37093c
  417028: 4603         	mov	r3, r0
  41702a: 461c         	mov	r4, r3
  41702c: 4620         	mov	r0, r4
  41702e: f743 ff91    	bl	0x35af54 <MAGNUM::MAGNUM()> @ imm = #-0xbc0de
  417032: 9401         	str	r4, [sp, #0x4]
  417034: 9b01         	ldr	r3, [sp, #0x4]
  417036: 2b00         	cmp	r3, #0x0
  417038: d00a         	beq	0x417050 <MAGNUM::create()+0x34> @ imm = #0x14
  41703a: 9b01         	ldr	r3, [sp, #0x4]
  41703c: 681b         	ldr	r3, [r3]
  41703e: 3318         	adds	r3, #0x18
  417040: 681b         	ldr	r3, [r3]
  417042: 9801         	ldr	r0, [sp, #0x4]
  417044: 4798         	blx	r3
  417046: 4603         	mov	r3, r0
  417048: 2b00         	cmp	r3, #0x0
  41704a: d001         	beq	0x417050 <MAGNUM::create()+0x34> @ imm = #0x2
  41704c: 2301         	movs	r3, #0x1
  41704e: e000         	b	0x417052 <MAGNUM::create()+0x36> @ imm = #0x0
  417050: 2300         	movs	r3, #0x0
  417052: 2b00         	cmp	r3, #0x0
  417054: d005         	beq	0x417062 <MAGNUM::create()+0x46> @ imm = #0xa
  417056: 9b01         	ldr	r3, [sp, #0x4]
  417058: 4618         	mov	r0, r3
  41705a: f180 ff4f    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x180e9e
  41705e: 9b01         	ldr	r3, [sp, #0x4]
  417060: e011         	b	0x417086 <MAGNUM::create()+0x6a> @ imm = #0x22
  417062: 9b01         	ldr	r3, [sp, #0x4]
  417064: 2b00         	cmp	r3, #0x0
  417066: d005         	beq	0x417074 <MAGNUM::create()+0x58> @ imm = #0xa
  417068: 9b01         	ldr	r3, [sp, #0x4]
  41706a: 681b         	ldr	r3, [r3]
  41706c: 3308         	adds	r3, #0x8
  41706e: 681b         	ldr	r3, [r3]
  417070: 9801         	ldr	r0, [sp, #0x4]
  417072: 4798         	blx	r3
  417074: 2300         	movs	r3, #0x0
  417076: 9301         	str	r3, [sp, #0x4]
  417078: 2300         	movs	r3, #0x0
  41707a: e004         	b	0x417086 <MAGNUM::create()+0x6a> @ imm = #0x8
  41707c: 4620         	mov	r0, r4
  41707e: f371 f811    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x371022
  417082: f371 f813    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x371026
  417086: 4618         	mov	r0, r3
  417088: b002         	add	sp, #0x8
  41708a: bd10         	pop	{r4, pc}
