// MP5: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 20 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../MP5.cpp

// ==== MP5::MP5
//      file offset 0x35cc1c (= ELF address; Ghidra 0x36cc1c), 44 bytes, Thumb-2
  35cc1c: b510         	push	{r4, lr}
  35cc1e: b082         	sub	sp, #0x8
  35cc20: 9001         	str	r0, [sp, #0x4]
  35cc22: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x35cc40 <MP5::MP5()+0x24>
  35cc24: 447c         	add	r4, pc
  35cc26: 9b01         	ldr	r3, [sp, #0x4]
  35cc28: 4618         	mov	r0, r3
  35cc2a: f0b8 f9bd    	bl	0x414fa8 <Weapon::Weapon()> @ imm = #0xb837a
  35cc2e: 9b01         	ldr	r3, [sp, #0x4]
  35cc30: 4a04         	ldr	r2, [pc, #0x10]         @ 0x35cc44 <MP5::MP5()+0x28>
  35cc32: 58a2         	ldr	r2, [r4, r2]
  35cc34: 3208         	adds	r2, #0x8
  35cc36: 601a         	str	r2, [r3]
  35cc38: 9b01         	ldr	r3, [sp, #0x4]
  35cc3a: 4618         	mov	r0, r3
  35cc3c: b002         	add	sp, #0x8
  35cc3e: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x35cc3f); words below are literal-pool data ---
  35cc40: 5de4         	ldrb	r4, [r4, r7]
  35cc42: 005d         	lsls	r5, r3, #0x1
  35cc44: db8c         	blt	0x35cb60 <MAGNUM::getDAMAGE()+0xe84> @ imm = #-0xe8
  35cc46: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== MP5::init
//      file offset 0x35cc48 (= ELF address; Ghidra 0x36cc48), 816 bytes, Thumb-2
  35cc48: b530         	push	{r4, r5, lr}
  35cc4a: b08b         	sub	sp, #0x2c
  35cc4c: 9005         	str	r0, [sp, #0x14]
  35cc4e: 9b05         	ldr	r3, [sp, #0x14]
  35cc50: 4618         	mov	r0, r3
  35cc52: f0b8 f9cd    	bl	0x414ff0 <Weapon::init()> @ imm = #0xb839a
  35cc56: 4603         	mov	r3, r0
  35cc58: f88d 301f    	strb.w	r3, [sp, #0x1f]
  35cc5c: f89d 301f    	ldrb.w	r3, [sp, #0x1f]
  35cc60: f083 0301    	eor	r3, r3, #0x1
  35cc64: b2db         	uxtb	r3, r3
  35cc66: 2b00         	cmp	r3, #0x0
  35cc68: d001         	beq	0x35cc6e <MP5::init()+0x26> @ imm = #0x2
  35cc6a: 2300         	movs	r3, #0x0
  35cc6c: e170         	b	0x35cf50 <MP5::init()+0x308> @ imm = #0x2e0
  35cc6e: 4bbc         	ldr	r3, [pc, #0x2f0]        @ 0x35cf60 <MP5::init()+0x318>
  35cc70: 447b         	add	r3, pc
  35cc72: 4618         	mov	r0, r3
  35cc74: f27b fb46    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x27b68c
  35cc78: 4602         	mov	r2, r0
  35cc7a: 9b05         	ldr	r3, [sp, #0x14]
  35cc7c: f8c3 21ec    	str.w	r2, [r3, #0x1ec]
  35cc80: 9b05         	ldr	r3, [sp, #0x14]
  35cc82: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  35cc86: 4618         	mov	r0, r3
  35cc88: f23b f92e    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x23b25c
  35cc8c: 4bb5         	ldr	r3, [pc, #0x2d4]        @ 0x35cf64 <MP5::init()+0x31c>
  35cc8e: 447b         	add	r3, pc
  35cc90: 4618         	mov	r0, r3
  35cc92: f27b fb37    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x27b66e
  35cc96: 4602         	mov	r2, r0
  35cc98: 9b05         	ldr	r3, [sp, #0x14]
  35cc9a: f8c3 21f0    	str.w	r2, [r3, #0x1f0]
  35cc9e: 9b05         	ldr	r3, [sp, #0x14]
  35cca0: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  35cca4: 4618         	mov	r0, r3
  35cca6: f23b f91f    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x23b23e
  35ccaa: 9b05         	ldr	r3, [sp, #0x14]
  35ccac: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  35ccb0: 681b         	ldr	r3, [r3]
  35ccb2: 337c         	adds	r3, #0x7c
  35ccb4: 681c         	ldr	r4, [r3]
  35ccb6: 9b05         	ldr	r3, [sp, #0x14]
  35ccb8: f8d3 51f0    	ldr.w	r5, [r3, #0x1f0]
  35ccbc: ab08         	add	r3, sp, #0x20
  35ccbe: 4618         	mov	r0, r3
  35ccc0: f64c 41cd    	movw	r1, #0xcccd
  35ccc4: f6cb 71cc    	movt	r1, #0xbfcc
  35ccc8: f64c 42cd    	movw	r2, #0xcccd
  35cccc: f6c3 624c    	movt	r2, #0x3e4c
  35ccd0: f236 f80e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x23601c
  35ccd4: ab08         	add	r3, sp, #0x20
  35ccd6: 4628         	mov	r0, r5
  35ccd8: 4619         	mov	r1, r3
  35ccda: 47a0         	blx	r4
  35ccdc: 9b05         	ldr	r3, [sp, #0x14]
  35ccde: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  35cce2: 681b         	ldr	r3, [r3]
  35cce4: 3338         	adds	r3, #0x38
  35cce6: 681b         	ldr	r3, [r3]
  35cce8: 9a05         	ldr	r2, [sp, #0x14]
  35ccea: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  35ccee: 4610         	mov	r0, r2
  35ccf0: f04f 517e    	mov.w	r1, #0x3f800000
  35ccf4: 4798         	blx	r3
  35ccf6: 9b05         	ldr	r3, [sp, #0x14]
  35ccf8: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  35ccfc: 681b         	ldr	r3, [r3]
  35ccfe: 3330         	adds	r3, #0x30
  35cd00: 681b         	ldr	r3, [r3]
  35cd02: 9a05         	ldr	r2, [sp, #0x14]
  35cd04: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  35cd08: 4610         	mov	r0, r2
  35cd0a: f04f 0100    	mov.w	r1, #0x0
  35cd0e: f6c3 71e0    	movt	r1, #0x3fe0
  35cd12: 4798         	blx	r3
  35cd14: 9b05         	ldr	r3, [sp, #0x14]
  35cd16: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  35cd1a: 681b         	ldr	r3, [r3]
  35cd1c: 3390         	adds	r3, #0x90
  35cd1e: 681b         	ldr	r3, [r3]
  35cd20: 9a05         	ldr	r2, [sp, #0x14]
  35cd22: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  35cd26: 4610         	mov	r0, r2
  35cd28: 2100         	movs	r1, #0x0
  35cd2a: 4798         	blx	r3
  35cd2c: 9b05         	ldr	r3, [sp, #0x14]
  35cd2e: 681b         	ldr	r3, [r3]
  35cd30: f503 73f0    	add.w	r3, r3, #0x1e0
  35cd34: 681b         	ldr	r3, [r3]
  35cd36: 9805         	ldr	r0, [sp, #0x14]
  35cd38: 4798         	blx	r3
  35cd3a: 9b05         	ldr	r3, [sp, #0x14]
  35cd3c: 681b         	ldr	r3, [r3]
  35cd3e: 33cc         	adds	r3, #0xcc
  35cd40: 681b         	ldr	r3, [r3]
  35cd42: 9905         	ldr	r1, [sp, #0x14]
  35cd44: 9a05         	ldr	r2, [sp, #0x14]
  35cd46: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  35cd4a: 4608         	mov	r0, r1
  35cd4c: 4611         	mov	r1, r2
  35cd4e: 2200         	movs	r2, #0x0
  35cd50: 4798         	blx	r3
  35cd52: 9b05         	ldr	r3, [sp, #0x14]
  35cd54: 681b         	ldr	r3, [r3]
  35cd56: 33cc         	adds	r3, #0xcc
  35cd58: 681b         	ldr	r3, [r3]
  35cd5a: 9905         	ldr	r1, [sp, #0x14]
  35cd5c: 9a05         	ldr	r2, [sp, #0x14]
  35cd5e: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  35cd62: 4608         	mov	r0, r1
  35cd64: 4611         	mov	r1, r2
  35cd66: 2200         	movs	r2, #0x0
  35cd68: 4798         	blx	r3
  35cd6a: 9b05         	ldr	r3, [sp, #0x14]
  35cd6c: f8d3 4150    	ldr.w	r4, [r3, #0x150]
  35cd70: f04f 507e    	mov.w	r0, #0x3f800000
  35cd74: f77f ff86    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x800f4
  35cd78: 4603         	mov	r3, r0
  35cd7a: 4620         	mov	r0, r4
  35cd7c: 4619         	mov	r1, r3
  35cd7e: f23d fa75    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x23d4ea
  35cd82: 9b05         	ldr	r3, [sp, #0x14]
  35cd84: f8d3 414c    	ldr.w	r4, [r3, #0x14c]
  35cd88: ab07         	add	r3, sp, #0x1c
  35cd8a: 4618         	mov	r0, r3
  35cd8c: f02d f332    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x42d664
  35cd90: aa08         	add	r2, sp, #0x20
  35cd92: ab07         	add	r3, sp, #0x1c
  35cd94: 4610         	mov	r0, r2
  35cd96: 4a74         	ldr	r2, [pc, #0x1d0]        @ 0x35cf68 <MP5::init()+0x320>
  35cd98: 447a         	add	r2, pc
  35cd9a: 4611         	mov	r1, r2
  35cd9c: 461a         	mov	r2, r3
  35cd9e: f059 f65f    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x459cbe
  35cda2: ab08         	add	r3, sp, #0x20
  35cda4: 4618         	mov	r0, r3
  35cda6: f23c fe49    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x23cc92
  35cdaa: 4603         	mov	r3, r0
  35cdac: 4620         	mov	r0, r4
  35cdae: 4619         	mov	r1, r3
  35cdb0: f23d fa5c    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x23d4b8
  35cdb4: ab08         	add	r3, sp, #0x20
  35cdb6: 4618         	mov	r0, r3
  35cdb8: f058 f5ac    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x458b58
  35cdbc: ab07         	add	r3, sp, #0x1c
  35cdbe: 4618         	mov	r0, r3
  35cdc0: f02d f31c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42d638
  35cdc4: 9b05         	ldr	r3, [sp, #0x14]
  35cdc6: f8d3 4150    	ldr.w	r4, [r3, #0x150]
  35cdca: f64c 40cd    	movw	r0, #0xcccd
  35cdce: f6c3 704c    	movt	r0, #0x3f4c
  35cdd2: f77f ff57    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x80152
  35cdd6: 4603         	mov	r3, r0
  35cdd8: 4620         	mov	r0, r4
  35cdda: 4619         	mov	r1, r3
  35cddc: f23d fa46    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x23d48c
  35cde0: 9b05         	ldr	r3, [sp, #0x14]
  35cde2: f8d3 414c    	ldr.w	r4, [r3, #0x14c]
  35cde6: ab07         	add	r3, sp, #0x1c
  35cde8: 4618         	mov	r0, r3
  35cdea: f02d f303    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x42d606
  35cdee: aa08         	add	r2, sp, #0x20
  35cdf0: ab07         	add	r3, sp, #0x1c
  35cdf2: 4610         	mov	r0, r2
  35cdf4: 4a5d         	ldr	r2, [pc, #0x174]        @ 0x35cf6c <MP5::init()+0x324>
  35cdf6: 447a         	add	r2, pc
  35cdf8: 4611         	mov	r1, r2
  35cdfa: 461a         	mov	r2, r3
  35cdfc: f059 f630    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x459c60
  35ce00: ab08         	add	r3, sp, #0x20
  35ce02: 4618         	mov	r0, r3
  35ce04: f23c fe1a    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x23cc34
  35ce08: 4603         	mov	r3, r0
  35ce0a: 4620         	mov	r0, r4
  35ce0c: 4619         	mov	r1, r3
  35ce0e: f23d fa2d    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x23d45a
  35ce12: ab08         	add	r3, sp, #0x20
  35ce14: 4618         	mov	r0, r3
  35ce16: f058 f57d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x458afa
  35ce1a: ab07         	add	r3, sp, #0x1c
  35ce1c: 4618         	mov	r0, r3
  35ce1e: f02d f2ed    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42d5da
  35ce22: 9b05         	ldr	r3, [sp, #0x14]
  35ce24: 2200         	movs	r2, #0x0
  35ce26: f8c3 2144    	str.w	r2, [r3, #0x144]
  35ce2a: 9b05         	ldr	r3, [sp, #0x14]
  35ce2c: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  35ce30: 4618         	mov	r0, r3
  35ce32: 2100         	movs	r1, #0x0
  35ce34: f23d f974    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x23d2e8
  35ce38: 4603         	mov	r3, r0
  35ce3a: 4618         	mov	r0, r3
  35ce3c: f77f ff1a    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x801cc
  35ce40: 4602         	mov	r2, r0
  35ce42: 9b05         	ldr	r3, [sp, #0x14]
  35ce44: f8c3 2148    	str.w	r2, [r3, #0x148]
  35ce48: 9b05         	ldr	r3, [sp, #0x14]
  35ce4a: f24c 228f    	movw	r2, #0xc28f
  35ce4e: f6c3 5275    	movt	r2, #0x3d75
  35ce52: f8c3 215c    	str.w	r2, [r3, #0x15c]
  35ce56: 9b05         	ldr	r3, [sp, #0x14]
  35ce58: f04f 0200    	mov.w	r2, #0x0
  35ce5c: f6c3 72e0    	movt	r2, #0x3fe0
  35ce60: f8c3 2160    	str.w	r2, [r3, #0x160]
  35ce64: 9b05         	ldr	r3, [sp, #0x14]
  35ce66: f04f 0200    	mov.w	r2, #0x0
  35ce6a: f2c4 02a0    	movt	r2, #0x40a0
  35ce6e: f8c3 2164    	str.w	r2, [r3, #0x164]
  35ce72: 9b05         	ldr	r3, [sp, #0x14]
  35ce74: f04f 4282    	mov.w	r2, #0x41000000
  35ce78: f8c3 216c    	str.w	r2, [r3, #0x16c]
  35ce7c: 9b05         	ldr	r3, [sp, #0x14]
  35ce7e: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  35ce82: 681b         	ldr	r3, [r3]
  35ce84: 3398         	adds	r3, #0x98
  35ce86: 681b         	ldr	r3, [r3]
  35ce88: 9a05         	ldr	r2, [sp, #0x14]
  35ce8a: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  35ce8e: 4610         	mov	r0, r2
  35ce90: f04f 4181    	mov.w	r1, #0x40800000
  35ce94: 4798         	blx	r3
  35ce96: 9b05         	ldr	r3, [sp, #0x14]
  35ce98: 22fa         	movs	r2, #0xfa
  35ce9a: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  35ce9e: 9b05         	ldr	r3, [sp, #0x14]
  35cea0: 2232         	movs	r2, #0x32
  35cea2: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  35cea6: 9b05         	ldr	r3, [sp, #0x14]
  35cea8: 2250         	movs	r2, #0x50
  35ceaa: f8c3 218c    	str.w	r2, [r3, #0x18c]
  35ceae: 9b05         	ldr	r3, [sp, #0x14]
  35ceb0: 2200         	movs	r2, #0x0
  35ceb2: f883 2181    	strb.w	r2, [r3, #0x181]
  35ceb6: 9b05         	ldr	r3, [sp, #0x14]
  35ceb8: 2206         	movs	r2, #0x6
  35ceba: f8c3 2188    	str.w	r2, [r3, #0x188]
  35cebe: 9b05         	ldr	r3, [sp, #0x14]
  35cec0: 221e         	movs	r2, #0x1e
  35cec2: f8c3 219c    	str.w	r2, [r3, #0x19c]
  35cec6: 9b05         	ldr	r3, [sp, #0x14]
  35cec8: 2223         	movs	r2, #0x23
  35ceca: f8c3 21a0    	str.w	r2, [r3, #0x1a0]
  35cece: 4b28         	ldr	r3, [pc, #0xa0]         @ 0x35cf70 <MP5::init()+0x328>
  35ced0: 447b         	add	r3, pc
  35ced2: 681a         	ldr	r2, [r3]
  35ced4: 9b05         	ldr	r3, [sp, #0x14]
  35ced6: f8c3 21a4    	str.w	r2, [r3, #0x1a4]
  35ceda: 9b05         	ldr	r3, [sp, #0x14]
  35cedc: f44f 62af    	mov.w	r2, #0x578
  35cee0: f8c3 21bc    	str.w	r2, [r3, #0x1bc]
  35cee4: 9b05         	ldr	r3, [sp, #0x14]
  35cee6: 2232         	movs	r2, #0x32
  35cee8: f8c3 2170    	str.w	r2, [r3, #0x170]
  35ceec: 9b05         	ldr	r3, [sp, #0x14]
  35ceee: f44f 72c8    	mov.w	r2, #0x190
  35cef2: f8c3 2174    	str.w	r2, [r3, #0x174]
  35cef6: 9c05         	ldr	r4, [sp, #0x14]
  35cef8: 466b         	mov	r3, sp
  35cefa: 4618         	mov	r0, r3
  35cefc: ed9f 0b16    	vldr	d0, [pc, #88]           @ 0x35cf58 <MP5::init()+0x310>
  35cf00: eeb2 1b0e    	vmov.f64	d1, #1.500000e+01
  35cf04: f7fe ffb6    	bl	0x35be74 <MAGNUM::getDAMAGE()+0x198> @ imm = #-0x1094
  35cf08: f504 74ec    	add.w	r4, r4, #0x1d8
  35cf0c: 466b         	mov	r3, sp
  35cf0e: cb0f         	ldm	r3, {r0, r1, r2, r3}
  35cf10: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  35cf14: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x35cf74 <MP5::init()+0x32c>
  35cf16: 447b         	add	r3, pc
  35cf18: 681a         	ldr	r2, [r3]
  35cf1a: 9b05         	ldr	r3, [sp, #0x14]
  35cf1c: f8c3 2198    	str.w	r2, [r3, #0x198]
  35cf20: 2301         	movs	r3, #0x1
  35cf22: e015         	b	0x35cf50 <MP5::init()+0x308> @ imm = #0x2a
  35cf24: ab08         	add	r3, sp, #0x20
  35cf26: 4618         	mov	r0, r3
  35cf28: f058 f4f4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4589e8
  35cf2c: e7ff         	b	0x35cf2e <MP5::init()+0x2e6> @ imm = #-0x2
  35cf2e: ab07         	add	r3, sp, #0x1c
  35cf30: 4618         	mov	r0, r3
  35cf32: f02d f263    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42d4c6
  35cf36: f02b f0b9    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x42b172
  35cf3a: ab08         	add	r3, sp, #0x20
  35cf3c: 4618         	mov	r0, r3
  35cf3e: f058 f4e9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4589d2
  35cf42: e7ff         	b	0x35cf44 <MP5::init()+0x2fc> @ imm = #-0x2
  35cf44: ab07         	add	r3, sp, #0x1c
  35cf46: 4618         	mov	r0, r3
  35cf48: f02d f258    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42d4b0
  35cf4c: f02b f0ae    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x42b15c
  35cf50: 4618         	mov	r0, r3
  35cf52: b00b         	add	sp, #0x2c
  35cf54: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x35cf55); words below are literal-pool data ---
  35cf56: bf00         	nop
  35cf58: 0000         	movs	r0, r0
  35cf5a: 0000         	movs	r0, r0
  35cf5c: 8000         	strh	r0, [r0]
  35cf5e: 4058         	eors	r0, r3
  35cf60: fde4 0046    	stc2l	p0, c0, [r4, #280]!
  35cf64: fdce 0046    	stc2l	p0, c0, [lr, #280]
  35cf68: fcd0 0046    	ldc2l	p0, c0, [r0], {70}
  35cf6c: fc76 0046    	ldc2l	p0, c0, [r6], #-280
  35cf70: 652c         	str	r4, [r5, #0x50]
  35cf72: 005d         	lsls	r5, r3, #0x1
  35cf74: 64e2         	str	r2, [r4, #0x4c]
  35cf76: 005d         	lsls	r5, r3, #0x1

// ==== MP5::~MP5
//      file offset 0x35cf78 (= ELF address; Ghidra 0x36cf78), 92 bytes, Thumb-2
  35cf78: b500         	push	{lr}
  35cf7a: b083         	sub	sp, #0xc
  35cf7c: 9001         	str	r0, [sp, #0x4]
  35cf7e: 4913         	ldr	r1, [pc, #0x4c]         @ 0x35cfcc <MP5::~MP5()+0x54>
  35cf80: 4479         	add	r1, pc
  35cf82: 9b01         	ldr	r3, [sp, #0x4]
  35cf84: 4a12         	ldr	r2, [pc, #0x48]         @ 0x35cfd0 <MP5::~MP5()+0x58>
  35cf86: 588a         	ldr	r2, [r1, r2]
  35cf88: 3208         	adds	r2, #0x8
  35cf8a: 601a         	str	r2, [r3]
  35cf8c: 9b01         	ldr	r3, [sp, #0x4]
  35cf8e: 4618         	mov	r0, r3
  35cf90: f233 fb4c    	bl	0x59062c <cocos2d::CCNode::removeAllChildren()> @ imm = #0x233698
  35cf94: 9b01         	ldr	r3, [sp, #0x4]
  35cf96: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  35cf9a: 4618         	mov	r0, r3
  35cf9c: f23a ff8c    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x23af18
  35cfa0: 9b01         	ldr	r3, [sp, #0x4]
  35cfa2: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  35cfa6: 4618         	mov	r0, r3
  35cfa8: f23a ff86    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x23af0c
  35cfac: 9b01         	ldr	r3, [sp, #0x4]
  35cfae: 4618         	mov	r0, r3
  35cfb0: f0b8 f91e    	bl	0x4151f0 <Weapon::~Weapon()> @ imm = #0xb823c
  35cfb4: 2300         	movs	r3, #0x0
  35cfb6: 2b00         	cmp	r3, #0x0
  35cfb8: d002         	beq	0x35cfc0 <MP5::~MP5()+0x48> @ imm = #0x4
  35cfba: 9801         	ldr	r0, [sp, #0x4]
  35cfbc: f02b f072    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x42b0e4
  35cfc0: 9b01         	ldr	r3, [sp, #0x4]
  35cfc2: 4618         	mov	r0, r3
  35cfc4: b003         	add	sp, #0xc
  35cfc6: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x35cfc9); words below are literal-pool data ---
  35cfca: bf00         	nop
  35cfcc: 5a88         	ldrh	r0, [r1, r2]
  35cfce: 005d         	lsls	r5, r3, #0x1
  35cfd0: db8c         	blt	0x35ceec <MP5::init()+0x2a4> @ imm = #-0xe8
  35cfd2: ffff b500    	<unknown>

// ==== MP5::~MP5
//      file offset 0x35cfd4 (= ELF address; Ghidra 0x36cfd4), 28 bytes, Thumb-2
  35cfd4: b500         	push	{lr}
  35cfd6: b083         	sub	sp, #0xc
  35cfd8: 9001         	str	r0, [sp, #0x4]
  35cfda: 9801         	ldr	r0, [sp, #0x4]
  35cfdc: f7ff ffcc    	bl	0x35cf78 <MP5::~MP5()>  @ imm = #-0x68
  35cfe0: 9801         	ldr	r0, [sp, #0x4]
  35cfe2: f02b f05f    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x42b0be
  35cfe6: 9b01         	ldr	r3, [sp, #0x4]
  35cfe8: 4618         	mov	r0, r3
  35cfea: b003         	add	sp, #0xc
  35cfec: f85d fb04    	ldr	pc, [sp], #4

// ==== MP5::triggerPull
//      file offset 0x35cff0 (= ELF address; Ghidra 0x36cff0), 352 bytes, Thumb-2
  35cff0: b510         	push	{r4, lr}
  35cff2: b088         	sub	sp, #0x20
  35cff4: 9003         	str	r0, [sp, #0xc]
  35cff6: 9102         	str	r1, [sp, #0x8]
  35cff8: 4c53         	ldr	r4, [pc, #0x14c]        @ 0x35d148 <MP5::triggerPull(float)+0x158>
  35cffa: 447c         	add	r4, pc
  35cffc: 9b03         	ldr	r3, [sp, #0xc]
  35cffe: ed93 7a44    	vldr	s14, [r3, #272]
  35d002: 9b03         	ldr	r3, [sp, #0xc]
  35d004: edd3 7a57    	vldr	s15, [r3, #348]
  35d008: eeb4 7ae7    	vcmpe.f32	s14, s15
  35d00c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  35d010: dd71         	ble	0x35d0f6 <MP5::triggerPull(float)+0x106> @ imm = #0xe2
  35d012: 9b03         	ldr	r3, [sp, #0xc]
  35d014: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  35d018: b21b         	sxth	r3, r3
  35d01a: 2b00         	cmp	r3, #0x0
  35d01c: dd0f         	ble	0x35d03e <MP5::triggerPull(float)+0x4e> @ imm = #0x1e
  35d01e: 9b03         	ldr	r3, [sp, #0xc]
  35d020: 681b         	ldr	r3, [r3]
  35d022: f503 7333    	add.w	r3, r3, #0x2cc
  35d026: 681b         	ldr	r3, [r3]
  35d028: 9a03         	ldr	r2, [sp, #0xc]
  35d02a: 4610         	mov	r0, r2
  35d02c: 4798         	blx	r3
  35d02e: 4603         	mov	r3, r0
  35d030: f083 0301    	eor	r3, r3, #0x1
  35d034: b2db         	uxtb	r3, r3
  35d036: 2b00         	cmp	r3, #0x0
  35d038: d001         	beq	0x35d03e <MP5::triggerPull(float)+0x4e> @ imm = #0x2
  35d03a: 2301         	movs	r3, #0x1
  35d03c: e000         	b	0x35d040 <MP5::triggerPull(float)+0x50> @ imm = #0x0
  35d03e: 2300         	movs	r3, #0x0
  35d040: 2b00         	cmp	r3, #0x0
  35d042: d02c         	beq	0x35d09e <MP5::triggerPull(float)+0xae> @ imm = #0x58
  35d044: 9b03         	ldr	r3, [sp, #0xc]
  35d046: 2201         	movs	r2, #0x1
  35d048: f883 2180    	strb.w	r2, [r3, #0x180]
  35d04c: 9b03         	ldr	r3, [sp, #0xc]
  35d04e: 681b         	ldr	r3, [r3]
  35d050: f503 7325    	add.w	r3, r3, #0x294
  35d054: 681b         	ldr	r3, [r3]
  35d056: 9803         	ldr	r0, [sp, #0xc]
  35d058: 4798         	blx	r3
  35d05a: 9b03         	ldr	r3, [sp, #0xc]
  35d05c: 681b         	ldr	r3, [r3]
  35d05e: f503 7342    	add.w	r3, r3, #0x308
  35d062: 681b         	ldr	r3, [r3]
  35d064: 9a03         	ldr	r2, [sp, #0xc]
  35d066: 4610         	mov	r0, r2
  35d068: 4798         	blx	r3
  35d06a: 9b03         	ldr	r3, [sp, #0xc]
  35d06c: 681b         	ldr	r3, [r3]
  35d06e: f503 7343    	add.w	r3, r3, #0x30c
  35d072: 681b         	ldr	r3, [r3]
  35d074: 9a03         	ldr	r2, [sp, #0xc]
  35d076: 4610         	mov	r0, r2
  35d078: 4798         	blx	r3
  35d07a: 9b03         	ldr	r3, [sp, #0xc]
  35d07c: f893 3195    	ldrb.w	r3, [r3, #0x195]
  35d080: 3301         	adds	r3, #0x1
  35d082: b2da         	uxtb	r2, r3
  35d084: 9b03         	ldr	r3, [sp, #0xc]
  35d086: f883 2195    	strb.w	r2, [r3, #0x195]
  35d08a: 9b03         	ldr	r3, [sp, #0xc]
  35d08c: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  35d090: b29b         	uxth	r3, r3
  35d092: 3b00         	subs	r3, #0x0
  35d094: b29a         	uxth	r2, r3
  35d096: 9b03         	ldr	r3, [sp, #0xc]
  35d098: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  35d09c: e026         	b	0x35d0ec <MP5::triggerPull(float)+0xfc> @ imm = #0x4c
  35d09e: 9b03         	ldr	r3, [sp, #0xc]
  35d0a0: 681b         	ldr	r3, [r3]
  35d0a2: f503 7333    	add.w	r3, r3, #0x2cc
  35d0a6: 681b         	ldr	r3, [r3]
  35d0a8: 9a03         	ldr	r2, [sp, #0xc]
  35d0aa: 4610         	mov	r0, r2
  35d0ac: 4798         	blx	r3
  35d0ae: 4603         	mov	r3, r0
  35d0b0: f083 0301    	eor	r3, r3, #0x1
  35d0b4: b2db         	uxtb	r3, r3
  35d0b6: 2b00         	cmp	r3, #0x0
  35d0b8: d018         	beq	0x35d0ec <MP5::triggerPull(float)+0xfc> @ imm = #0x30
  35d0ba: 4b24         	ldr	r3, [pc, #0x90]         @ 0x35d14c <MP5::triggerPull(float)+0x15c>
  35d0bc: 58e3         	ldr	r3, [r4, r3]
  35d0be: 681c         	ldr	r4, [r3]
  35d0c0: 9b03         	ldr	r3, [sp, #0xc]
  35d0c2: 681b         	ldr	r3, [r3]
  35d0c4: f503 7348    	add.w	r3, r3, #0x320
  35d0c8: 681b         	ldr	r3, [r3]
  35d0ca: 9a03         	ldr	r2, [sp, #0xc]
  35d0cc: a904         	add	r1, sp, #0x10
  35d0ce: 4608         	mov	r0, r1
  35d0d0: 4611         	mov	r1, r2
  35d0d2: 4798         	blx	r3
  35d0d4: 466b         	mov	r3, sp
  35d0d6: aa06         	add	r2, sp, #0x18
  35d0d8: e892 0003    	ldm.w	r2, {r0, r1}
  35d0dc: e883 0003    	stm.w	r3, {r0, r1}
  35d0e0: ab04         	add	r3, sp, #0x10
  35d0e2: cb0c         	ldm	r3, {r2, r3}
  35d0e4: 4620         	mov	r0, r4
  35d0e6: 2100         	movs	r1, #0x0
  35d0e8: f09a ff86    	bl	0x3f7ff8 <Sound::playSoundPosition(int, cpVect)> @ imm = #0x9af0c
  35d0ec: 9b03         	ldr	r3, [sp, #0xc]
  35d0ee: f04f 0200    	mov.w	r2, #0x0
  35d0f2: f8c3 2110    	str.w	r2, [r3, #0x110]
  35d0f6: 9b03         	ldr	r3, [sp, #0xc]
  35d0f8: 681b         	ldr	r3, [r3]
  35d0fa: f503 7333    	add.w	r3, r3, #0x2cc
  35d0fe: 681b         	ldr	r3, [r3]
  35d100: 9a03         	ldr	r2, [sp, #0xc]
  35d102: 4610         	mov	r0, r2
  35d104: 4798         	blx	r3
  35d106: 4603         	mov	r3, r0
  35d108: f083 0301    	eor	r3, r3, #0x1
  35d10c: b2db         	uxtb	r3, r3
  35d10e: 2b00         	cmp	r3, #0x0
  35d110: d00c         	beq	0x35d12c <MP5::triggerPull(float)+0x13c> @ imm = #0x18
  35d112: 9b03         	ldr	r3, [sp, #0xc]
  35d114: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  35d118: 2b00         	cmp	r3, #0x0
  35d11a: d107         	bne	0x35d12c <MP5::triggerPull(float)+0x13c> @ imm = #0xe
  35d11c: 9b03         	ldr	r3, [sp, #0xc]
  35d11e: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  35d122: b21b         	sxth	r3, r3
  35d124: 2b00         	cmp	r3, #0x0
  35d126: dd01         	ble	0x35d12c <MP5::triggerPull(float)+0x13c> @ imm = #0x2
  35d128: 2301         	movs	r3, #0x1
  35d12a: e000         	b	0x35d12e <MP5::triggerPull(float)+0x13e> @ imm = #0x0
  35d12c: 2300         	movs	r3, #0x0
  35d12e: 2b00         	cmp	r3, #0x0
  35d130: d008         	beq	0x35d144 <MP5::triggerPull(float)+0x154> @ imm = #0x10
  35d132: 9b03         	ldr	r3, [sp, #0xc]
  35d134: 2201         	movs	r2, #0x1
  35d136: f883 2181    	strb.w	r2, [r3, #0x181]
  35d13a: 9b03         	ldr	r3, [sp, #0xc]
  35d13c: f04f 0200    	mov.w	r2, #0x0
  35d140: f8c3 2158    	str.w	r2, [r3, #0x158]
  35d144: b008         	add	sp, #0x20
  35d146: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x35d147); words below are literal-pool data ---
  35d148: 5a0e         	ldrh	r6, [r1, r0]
  35d14a: 005d         	lsls	r5, r3, #0x1
  35d14c: d730         	bvc	0x35d1b0 <MP5::updateItemStep(float)+0x60> @ imm = #0x60
  35d14e: ffff b500    	<unknown>

// ==== MP5::updateItemStep
//      file offset 0x35d150 (= ELF address; Ghidra 0x36d150), 282 bytes, Thumb-2
  35d150: b500         	push	{lr}
  35d152: ed2d 8b02    	vpush	{d8}
  35d156: b085         	sub	sp, #0x14
  35d158: 9001         	str	r0, [sp, #0x4]
  35d15a: 9100         	str	r1, [sp]
  35d15c: 9b01         	ldr	r3, [sp, #0x4]
  35d15e: ed93 7a56    	vldr	s14, [r3, #344]
  35d162: eddd 7a00    	vldr	s15, [sp]
  35d166: ee77 7a27    	vadd.f32	s15, s14, s15
  35d16a: 9b01         	ldr	r3, [sp, #0x4]
  35d16c: edc3 7a56    	vstr	s15, [r3, #344]
  35d170: 9b01         	ldr	r3, [sp, #0x4]
  35d172: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  35d176: 681b         	ldr	r3, [r3]
  35d178: 3390         	adds	r3, #0x90
  35d17a: 681b         	ldr	r3, [r3]
  35d17c: 9a01         	ldr	r2, [sp, #0x4]
  35d17e: f8d2 11f0    	ldr.w	r1, [r2, #0x1f0]
  35d182: 9a01         	ldr	r2, [sp, #0x4]
  35d184: f892 2180    	ldrb.w	r2, [r2, #0x180]
  35d188: 4608         	mov	r0, r1
  35d18a: 4611         	mov	r1, r2
  35d18c: 4798         	blx	r3
  35d18e: 9b01         	ldr	r3, [sp, #0x4]
  35d190: 681b         	ldr	r3, [r3]
  35d192: f503 7315    	add.w	r3, r3, #0x254
  35d196: 681b         	ldr	r3, [r3]
  35d198: 9a01         	ldr	r2, [sp, #0x4]
  35d19a: 4610         	mov	r0, r2
  35d19c: 9900         	ldr	r1, [sp]
  35d19e: 4798         	blx	r3
  35d1a0: 9b01         	ldr	r3, [sp, #0x4]
  35d1a2: f893 3181    	ldrb.w	r3, [r3, #0x181]
  35d1a6: 2b00         	cmp	r3, #0x0
  35d1a8: d013         	beq	0x35d1d2 <MP5::updateItemStep(float)+0x82> @ imm = #0x26
  35d1aa: 9b01         	ldr	r3, [sp, #0x4]
  35d1ac: ed93 8a56    	vldr	s16, [r3, #344]
  35d1b0: 9b01         	ldr	r3, [sp, #0x4]
  35d1b2: 681b         	ldr	r3, [r3]
  35d1b4: f503 732e    	add.w	r3, r3, #0x2b8
  35d1b8: 681b         	ldr	r3, [r3]
  35d1ba: 9a01         	ldr	r2, [sp, #0x4]
  35d1bc: 4610         	mov	r0, r2
  35d1be: 4798         	blx	r3
  35d1c0: ee07 0a90    	vmov	s15, r0
  35d1c4: eeb4 8ae7    	vcmpe.f32	s16, s15
  35d1c8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  35d1cc: dd01         	ble	0x35d1d2 <MP5::updateItemStep(float)+0x82> @ imm = #0x2
  35d1ce: 2301         	movs	r3, #0x1
  35d1d0: e000         	b	0x35d1d4 <MP5::updateItemStep(float)+0x84> @ imm = #0x0
  35d1d2: 2300         	movs	r3, #0x0
  35d1d4: 2b00         	cmp	r3, #0x0
  35d1d6: d043         	beq	0x35d260 <MP5::updateItemStep(float)+0x110> @ imm = #0x86
  35d1d8: 9b01         	ldr	r3, [sp, #0x4]
  35d1da: 2200         	movs	r2, #0x0
  35d1dc: f883 2181    	strb.w	r2, [r3, #0x181]
  35d1e0: 9b01         	ldr	r3, [sp, #0x4]
  35d1e2: f04f 0200    	mov.w	r2, #0x0
  35d1e6: f8c3 2110    	str.w	r2, [r3, #0x110]
  35d1ea: 9b01         	ldr	r3, [sp, #0x4]
  35d1ec: 681b         	ldr	r3, [r3]
  35d1ee: f503 732d    	add.w	r3, r3, #0x2b4
  35d1f2: 681b         	ldr	r3, [r3]
  35d1f4: 9a01         	ldr	r2, [sp, #0x4]
  35d1f6: 4610         	mov	r0, r2
  35d1f8: 4798         	blx	r3
  35d1fa: 4602         	mov	r2, r0
  35d1fc: 9b01         	ldr	r3, [sp, #0x4]
  35d1fe: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  35d202: b21b         	sxth	r3, r3
  35d204: 1ad3         	subs	r3, r2, r3
  35d206: 9303         	str	r3, [sp, #0xc]
  35d208: 9b01         	ldr	r3, [sp, #0x4]
  35d20a: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  35d20e: b29a         	uxth	r2, r3
  35d210: 9b03         	ldr	r3, [sp, #0xc]
  35d212: b29b         	uxth	r3, r3
  35d214: 1ad3         	subs	r3, r2, r3
  35d216: b29b         	uxth	r3, r3
  35d218: b29a         	uxth	r2, r3
  35d21a: 9b01         	ldr	r3, [sp, #0x4]
  35d21c: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  35d220: 9b01         	ldr	r3, [sp, #0x4]
  35d222: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  35d226: b29a         	uxth	r2, r3
  35d228: 9b03         	ldr	r3, [sp, #0xc]
  35d22a: b29b         	uxth	r3, r3
  35d22c: 4413         	add	r3, r2
  35d22e: b29a         	uxth	r2, r3
  35d230: 9b01         	ldr	r3, [sp, #0x4]
  35d232: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  35d236: b21b         	sxth	r3, r3
  35d238: ea03 73e3    	and.w	r3, r3, r3, asr #31
  35d23c: b29b         	uxth	r3, r3
  35d23e: b29b         	uxth	r3, r3
  35d240: 4413         	add	r3, r2
  35d242: b29b         	uxth	r3, r3
  35d244: b29a         	uxth	r2, r3
  35d246: 9b01         	ldr	r3, [sp, #0x4]
  35d248: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  35d24c: 9b01         	ldr	r3, [sp, #0x4]
  35d24e: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  35d252: b21b         	sxth	r3, r3
  35d254: ea23 73e3    	bic.w	r3, r3, r3, asr #31
  35d258: b29a         	uxth	r2, r3
  35d25a: 9b01         	ldr	r3, [sp, #0x4]
  35d25c: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  35d260: b005         	add	sp, #0x14
  35d262: ecbd 8b02    	vpop	{d8}
  35d266: f85d fb04    	ldr	pc, [sp], #4

// ==== MP5::updateRemoteItemStep
//      file offset 0x35d26c (= ELF address; Ghidra 0x36d26c), 94 bytes, Thumb-2
  35d26c: b500         	push	{lr}
  35d26e: b083         	sub	sp, #0xc
  35d270: 9001         	str	r0, [sp, #0x4]
  35d272: 9100         	str	r1, [sp]
  35d274: 9b01         	ldr	r3, [sp, #0x4]
  35d276: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  35d27a: 681b         	ldr	r3, [r3]
  35d27c: 3390         	adds	r3, #0x90
  35d27e: 681b         	ldr	r3, [r3]
  35d280: 9a01         	ldr	r2, [sp, #0x4]
  35d282: f8d2 11f0    	ldr.w	r1, [r2, #0x1f0]
  35d286: 9a01         	ldr	r2, [sp, #0x4]
  35d288: f892 2180    	ldrb.w	r2, [r2, #0x180]
  35d28c: 4608         	mov	r0, r1
  35d28e: 4611         	mov	r1, r2
  35d290: 4798         	blx	r3
  35d292: 9b01         	ldr	r3, [sp, #0x4]
  35d294: 681b         	ldr	r3, [r3]
  35d296: f503 7315    	add.w	r3, r3, #0x254
  35d29a: 681b         	ldr	r3, [r3]
  35d29c: 9a01         	ldr	r2, [sp, #0x4]
  35d29e: 4610         	mov	r0, r2
  35d2a0: 9900         	ldr	r1, [sp]
  35d2a2: 4798         	blx	r3
  35d2a4: 9b01         	ldr	r3, [sp, #0x4]
  35d2a6: f893 2194    	ldrb.w	r2, [r3, #0x194]
  35d2aa: 9b01         	ldr	r3, [sp, #0x4]
  35d2ac: f893 3195    	ldrb.w	r3, [r3, #0x195]
  35d2b0: 429a         	cmp	r2, r3
  35d2b2: d007         	beq	0x35d2c4 <MP5::updateRemoteItemStep(float)+0x58> @ imm = #0xe
  35d2b4: 9b01         	ldr	r3, [sp, #0x4]
  35d2b6: 681b         	ldr	r3, [r3]
  35d2b8: f503 7318    	add.w	r3, r3, #0x260
  35d2bc: 681b         	ldr	r3, [r3]
  35d2be: 9801         	ldr	r0, [sp, #0x4]
  35d2c0: 9900         	ldr	r1, [sp]
  35d2c2: 4798         	blx	r3
  35d2c4: b003         	add	sp, #0xc
  35d2c6: f85d fb04    	ldr	pc, [sp], #4

// ==== MP5::remoteTriggerPull
//      file offset 0x35d2cc (= ELF address; Ghidra 0x36d2cc), 116 bytes, Thumb-2
  35d2cc: b500         	push	{lr}
  35d2ce: b083         	sub	sp, #0xc
  35d2d0: 9001         	str	r0, [sp, #0x4]
  35d2d2: 9100         	str	r1, [sp]
  35d2d4: 9b01         	ldr	r3, [sp, #0x4]
  35d2d6: ed93 7a44    	vldr	s14, [r3, #272]
  35d2da: 9b01         	ldr	r3, [sp, #0x4]
  35d2dc: edd3 7a57    	vldr	s15, [r3, #348]
  35d2e0: eeb4 7ae7    	vcmpe.f32	s14, s15
  35d2e4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  35d2e8: dd27         	ble	0x35d33a <MP5::remoteTriggerPull(float)+0x6e> @ imm = #0x4e
  35d2ea: 9b01         	ldr	r3, [sp, #0x4]
  35d2ec: f04f 0200    	mov.w	r2, #0x0
  35d2f0: f8c3 2110    	str.w	r2, [r3, #0x110]
  35d2f4: 9b01         	ldr	r3, [sp, #0x4]
  35d2f6: 2201         	movs	r2, #0x1
  35d2f8: f883 2180    	strb.w	r2, [r3, #0x180]
  35d2fc: 9b01         	ldr	r3, [sp, #0x4]
  35d2fe: 681b         	ldr	r3, [r3]
  35d300: f503 7325    	add.w	r3, r3, #0x294
  35d304: 681b         	ldr	r3, [r3]
  35d306: 9801         	ldr	r0, [sp, #0x4]
  35d308: 4798         	blx	r3
  35d30a: 9b01         	ldr	r3, [sp, #0x4]
  35d30c: 681b         	ldr	r3, [r3]
  35d30e: f503 7342    	add.w	r3, r3, #0x308
  35d312: 681b         	ldr	r3, [r3]
  35d314: 9a01         	ldr	r2, [sp, #0x4]
  35d316: 4610         	mov	r0, r2
  35d318: 4798         	blx	r3
  35d31a: 9b01         	ldr	r3, [sp, #0x4]
  35d31c: 681b         	ldr	r3, [r3]
  35d31e: f503 7343    	add.w	r3, r3, #0x30c
  35d322: 681b         	ldr	r3, [r3]
  35d324: 9a01         	ldr	r2, [sp, #0x4]
  35d326: 4610         	mov	r0, r2
  35d328: 4798         	blx	r3
  35d32a: 9b01         	ldr	r3, [sp, #0x4]
  35d32c: f893 3195    	ldrb.w	r3, [r3, #0x195]
  35d330: 3301         	adds	r3, #0x1
  35d332: b2da         	uxtb	r2, r3
  35d334: 9b01         	ldr	r3, [sp, #0x4]
  35d336: f883 2195    	strb.w	r2, [r3, #0x195]
  35d33a: b003         	add	sp, #0xc
  35d33c: f85d fb04    	ldr	pc, [sp], #4

// ==== MP5::getShellPoint
//      file offset 0x35d340 (= ELF address; Ghidra 0x36d340), 204 bytes, Thumb-2
  35d340: b510         	push	{r4, lr}
  35d342: b08e         	sub	sp, #0x38
  35d344: 9001         	str	r0, [sp, #0x4]
  35d346: 9100         	str	r1, [sp]
  35d348: 4c2e         	ldr	r4, [pc, #0xb8]         @ 0x35d404 <MP5::getShellPoint()+0xc4>
  35d34a: 447c         	add	r4, pc
  35d34c: ab02         	add	r3, sp, #0x8
  35d34e: 4618         	mov	r0, r3
  35d350: f04f 0100    	mov.w	r1, #0x0
  35d354: f2c4 2134    	movt	r1, #0x4234
  35d358: f04f 0200    	mov.w	r2, #0x0
  35d35c: f2c4 1270    	movt	r2, #0x4170
  35d360: f235 fcc6    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x23598c
  35d364: 9b00         	ldr	r3, [sp]
  35d366: 681b         	ldr	r3, [r3]
  35d368: 3350         	adds	r3, #0x50
  35d36a: 681b         	ldr	r3, [r3]
  35d36c: 9a00         	ldr	r2, [sp]
  35d36e: 4610         	mov	r0, r2
  35d370: 4798         	blx	r3
  35d372: 4602         	mov	r2, r0
  35d374: a906         	add	r1, sp, #0x18
  35d376: ab02         	add	r3, sp, #0x8
  35d378: 4608         	mov	r0, r1
  35d37a: 4611         	mov	r1, r2
  35d37c: 461a         	mov	r2, r3
  35d37e: f7fe fd69    	bl	0x35be54 <MAGNUM::getDAMAGE()+0x178> @ imm = #-0x152e
  35d382: 9b00         	ldr	r3, [sp]
  35d384: 681b         	ldr	r3, [r3]
  35d386: f503 73c2    	add.w	r3, r3, #0x184
  35d38a: 681b         	ldr	r3, [r3]
  35d38c: 9a00         	ldr	r2, [sp]
  35d38e: a908         	add	r1, sp, #0x20
  35d390: 4608         	mov	r0, r1
  35d392: 4611         	mov	r1, r2
  35d394: 4798         	blx	r3
  35d396: a904         	add	r1, sp, #0x10
  35d398: aa06         	add	r2, sp, #0x18
  35d39a: ab08         	add	r3, sp, #0x20
  35d39c: 4608         	mov	r0, r1
  35d39e: 4611         	mov	r1, r2
  35d3a0: 461a         	mov	r2, r3
  35d3a2: f234 ffbf    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x234f7e
  35d3a6: 4b18         	ldr	r3, [pc, #0x60]         @ 0x35d408 <MP5::getShellPoint()+0xc8>
  35d3a8: 58e3         	ldr	r3, [r4, r3]
  35d3aa: 681b         	ldr	r3, [r3]
  35d3ac: 681b         	ldr	r3, [r3]
  35d3ae: f503 73c4    	add.w	r3, r3, #0x188
  35d3b2: 681b         	ldr	r3, [r3]
  35d3b4: 4a14         	ldr	r2, [pc, #0x50]         @ 0x35d408 <MP5::getShellPoint()+0xc8>
  35d3b6: 58a2         	ldr	r2, [r4, r2]
  35d3b8: 6812         	ldr	r2, [r2]
  35d3ba: a908         	add	r1, sp, #0x20
  35d3bc: 4608         	mov	r0, r1
  35d3be: 4611         	mov	r1, r2
  35d3c0: 4798         	blx	r3
  35d3c2: a906         	add	r1, sp, #0x18
  35d3c4: aa04         	add	r2, sp, #0x10
  35d3c6: ab08         	add	r3, sp, #0x20
  35d3c8: 4608         	mov	r0, r1
  35d3ca: 4611         	mov	r1, r2
  35d3cc: 461a         	mov	r2, r3
  35d3ce: f234 ffa9    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x234f52
  35d3d2: aa04         	add	r2, sp, #0x10
  35d3d4: ab06         	add	r3, sp, #0x18
  35d3d6: 4610         	mov	r0, r2
  35d3d8: 4619         	mov	r1, r3
  35d3da: f235 fcb7    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x23596e
  35d3de: eddd 7a04    	vldr	s15, [sp, #16]
  35d3e2: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  35d3e6: eddd 7a05    	vldr	s15, [sp, #20]
  35d3ea: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  35d3ee: 9b01         	ldr	r3, [sp, #0x4]
  35d3f0: 4618         	mov	r0, r3
  35d3f2: eeb0 0b46    	vmov.f64	d0, d6
  35d3f6: eeb0 1b47    	vmov.f64	d1, d7
  35d3fa: f7fe fd3b    	bl	0x35be74 <MAGNUM::getDAMAGE()+0x198> @ imm = #-0x158a
  35d3fe: 9801         	ldr	r0, [sp, #0x4]
  35d400: b00e         	add	sp, #0x38
  35d402: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x35d403); words below are literal-pool data ---
  35d404: 56be         	ldrsb	r6, [r7, r2]
  35d406: 005d         	lsls	r5, r3, #0x1
  35d408: d744         	bvc	0x35d494 <MP5::setPrimaryConfiguration()+0x40> @ imm = #0x88
  35d40a: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== MP5::playSound
//      file offset 0x35d40c (= ELF address; Ghidra 0x36d40c), 72 bytes, Thumb-2
  35d40c: b510         	push	{r4, lr}
  35d40e: b088         	sub	sp, #0x20
  35d410: 9003         	str	r0, [sp, #0xc]
  35d412: 4a0e         	ldr	r2, [pc, #0x38]         @ 0x35d44c <MP5::playSound()+0x40>
  35d414: 447a         	add	r2, pc
  35d416: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x35d450 <MP5::playSound()+0x44>
  35d418: 58d3         	ldr	r3, [r2, r3]
  35d41a: 681c         	ldr	r4, [r3]
  35d41c: 9b03         	ldr	r3, [sp, #0xc]
  35d41e: 681b         	ldr	r3, [r3]
  35d420: f503 7348    	add.w	r3, r3, #0x320
  35d424: 681b         	ldr	r3, [r3]
  35d426: 9a03         	ldr	r2, [sp, #0xc]
  35d428: a904         	add	r1, sp, #0x10
  35d42a: 4608         	mov	r0, r1
  35d42c: 4611         	mov	r1, r2
  35d42e: 4798         	blx	r3
  35d430: 466b         	mov	r3, sp
  35d432: aa06         	add	r2, sp, #0x18
  35d434: e892 0003    	ldm.w	r2, {r0, r1}
  35d438: e883 0003    	stm.w	r3, {r0, r1}
  35d43c: ab04         	add	r3, sp, #0x10
  35d43e: cb0c         	ldm	r3, {r2, r3}
  35d440: 4620         	mov	r0, r4
  35d442: 2105         	movs	r1, #0x5
  35d444: f09a fdd8    	bl	0x3f7ff8 <Sound::playSoundPosition(int, cpVect)> @ imm = #0x9abb0
  35d448: b008         	add	sp, #0x20
  35d44a: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x35d44b); words below are literal-pool data ---
  35d44c: 55f4         	strb	r4, [r6, r7]
  35d44e: 005d         	lsls	r5, r3, #0x1
  35d450: d730         	bvc	0x35d4b4 <MP5::setPrimaryConfiguration()+0x60> @ imm = #0x60
  35d452: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== MP5::setPrimaryConfiguration
//      file offset 0x35d454 (= ELF address; Ghidra 0x36d454), 312 bytes, Thumb-2
  35d454: b530         	push	{r4, r5, lr}
  35d456: b085         	sub	sp, #0x14
  35d458: 9001         	str	r0, [sp, #0x4]
  35d45a: 9b01         	ldr	r3, [sp, #0x4]
  35d45c: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  35d460: 2b00         	cmp	r3, #0x0
  35d462: d019         	beq	0x35d498 <MP5::setPrimaryConfiguration()+0x44> @ imm = #0x32
  35d464: 9b01         	ldr	r3, [sp, #0x4]
  35d466: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  35d46a: 4b47         	ldr	r3, [pc, #0x11c]        @ 0x35d588 <MP5::setPrimaryConfiguration()+0x134>
  35d46c: 447b         	add	r3, pc
  35d46e: ed93 6b00    	vldr	d6, [r3]
  35d472: ed93 7b02    	vldr	d7, [r3, #8]
  35d476: 4610         	mov	r0, r2
  35d478: eeb0 0b46    	vmov.f64	d0, d6
  35d47c: eeb0 1b47    	vmov.f64	d1, d7
  35d480: f7fe fd0c    	bl	0x35be9c <MAGNUM::getDAMAGE()+0x1c0> @ imm = #-0x15e8
  35d484: 9b01         	ldr	r3, [sp, #0x4]
  35d486: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  35d48a: 4618         	mov	r0, r3
  35d48c: f04f 0200    	mov.w	r2, #0x0
  35d490: f04f 0300    	mov.w	r3, #0x0
  35d494: f375 fe7d    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x375cfa
  35d498: 9b01         	ldr	r3, [sp, #0x4]
  35d49a: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  35d49e: 681b         	ldr	r3, [r3]
  35d4a0: 334c         	adds	r3, #0x4c
  35d4a2: 681c         	ldr	r4, [r3]
  35d4a4: 9b01         	ldr	r3, [sp, #0x4]
  35d4a6: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  35d4aa: ab02         	add	r3, sp, #0x8
  35d4ac: 4618         	mov	r0, r3
  35d4ae: f04f 0100    	mov.w	r1, #0x0
  35d4b2: f2c4 01a0    	movt	r1, #0x40a0
  35d4b6: f04f 0200    	mov.w	r2, #0x0
  35d4ba: f235 fc19    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x235832
  35d4be: ab02         	add	r3, sp, #0x8
  35d4c0: 4628         	mov	r0, r5
  35d4c2: 4619         	mov	r1, r3
  35d4c4: 47a0         	blx	r4
  35d4c6: 9b01         	ldr	r3, [sp, #0x4]
  35d4c8: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  35d4cc: 681b         	ldr	r3, [r3]
  35d4ce: 337c         	adds	r3, #0x7c
  35d4d0: 681c         	ldr	r4, [r3]
  35d4d2: 9b01         	ldr	r3, [sp, #0x4]
  35d4d4: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  35d4d8: ab02         	add	r3, sp, #0x8
  35d4da: 4618         	mov	r0, r3
  35d4dc: f04f 0100    	mov.w	r1, #0x0
  35d4e0: f04f 527c    	mov.w	r2, #0x3f000000
  35d4e4: f235 fc04    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x235808
  35d4e8: ab02         	add	r3, sp, #0x8
  35d4ea: 4628         	mov	r0, r5
  35d4ec: 4619         	mov	r1, r3
  35d4ee: 47a0         	blx	r4
  35d4f0: 9b01         	ldr	r3, [sp, #0x4]
  35d4f2: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  35d4f6: 681b         	ldr	r3, [r3]
  35d4f8: 3398         	adds	r3, #0x98
  35d4fa: 681b         	ldr	r3, [r3]
  35d4fc: 9a01         	ldr	r2, [sp, #0x4]
  35d4fe: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  35d502: 4610         	mov	r0, r2
  35d504: f04f 0100    	mov.w	r1, #0x0
  35d508: 4798         	blx	r3
  35d50a: 9b01         	ldr	r3, [sp, #0x4]
  35d50c: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  35d510: 681b         	ldr	r3, [r3]
  35d512: 3340         	adds	r3, #0x40
  35d514: 681b         	ldr	r3, [r3]
  35d516: 9a01         	ldr	r2, [sp, #0x4]
  35d518: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  35d51c: 4610         	mov	r0, r2
  35d51e: f04f 517e    	mov.w	r1, #0x3f800000
  35d522: 4798         	blx	r3
  35d524: 9b01         	ldr	r3, [sp, #0x4]
  35d526: 681b         	ldr	r3, [r3]
  35d528: 334c         	adds	r3, #0x4c
  35d52a: 681c         	ldr	r4, [r3]
  35d52c: 9d01         	ldr	r5, [sp, #0x4]
  35d52e: ab02         	add	r3, sp, #0x8
  35d530: 4618         	mov	r0, r3
  35d532: f04f 0100    	mov.w	r1, #0x0
  35d536: f04f 0200    	mov.w	r2, #0x0
  35d53a: f235 fbd9    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2357b2
  35d53e: ab02         	add	r3, sp, #0x8
  35d540: 4628         	mov	r0, r5
  35d542: 4619         	mov	r1, r3
  35d544: 47a0         	blx	r4
  35d546: 9b01         	ldr	r3, [sp, #0x4]
  35d548: 681b         	ldr	r3, [r3]
  35d54a: 3340         	adds	r3, #0x40
  35d54c: 681b         	ldr	r3, [r3]
  35d54e: 9a01         	ldr	r2, [sp, #0x4]
  35d550: 4610         	mov	r0, r2
  35d552: f04f 517e    	mov.w	r1, #0x3f800000
  35d556: 4798         	blx	r3
  35d558: 9b01         	ldr	r3, [sp, #0x4]
  35d55a: 681b         	ldr	r3, [r3]
  35d55c: 3398         	adds	r3, #0x98
  35d55e: 681b         	ldr	r3, [r3]
  35d560: 9a01         	ldr	r2, [sp, #0x4]
  35d562: 4610         	mov	r0, r2
  35d564: f04f 0100    	mov.w	r1, #0x0
  35d568: 4798         	blx	r3
  35d56a: 9b01         	ldr	r3, [sp, #0x4]
  35d56c: 2200         	movs	r2, #0x0
  35d56e: f883 2195    	strb.w	r2, [r3, #0x195]
  35d572: 9b01         	ldr	r3, [sp, #0x4]
  35d574: 2200         	movs	r2, #0x0
  35d576: f883 2194    	strb.w	r2, [r3, #0x194]
  35d57a: 9b01         	ldr	r3, [sp, #0x4]
  35d57c: f04f 0200    	mov.w	r2, #0x0
  35d580: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  35d584: b005         	add	sp, #0x14
  35d586: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x35d587); words below are literal-pool data ---
  35d588: f648 0046    	movw	r0, #0x8846

// ==== MP5::setSecondaryConfiguration
//      file offset 0x35d58c (= ELF address; Ghidra 0x36d58c), 340 bytes, Thumb-2
  35d58c: b530         	push	{r4, r5, lr}
  35d58e: b085         	sub	sp, #0x14
  35d590: 9001         	str	r0, [sp, #0x4]
  35d592: 9b01         	ldr	r3, [sp, #0x4]
  35d594: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  35d598: 2b00         	cmp	r3, #0x0
  35d59a: d019         	beq	0x35d5d0 <MP5::setSecondaryConfiguration()+0x44> @ imm = #0x32
  35d59c: 9b01         	ldr	r3, [sp, #0x4]
  35d59e: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  35d5a2: 4b4e         	ldr	r3, [pc, #0x138]        @ 0x35d6dc <MP5::setSecondaryConfiguration()+0x150>
  35d5a4: 447b         	add	r3, pc
  35d5a6: ed93 6b00    	vldr	d6, [r3]
  35d5aa: ed93 7b02    	vldr	d7, [r3, #8]
  35d5ae: 4610         	mov	r0, r2
  35d5b0: eeb0 0b46    	vmov.f64	d0, d6
  35d5b4: eeb0 1b47    	vmov.f64	d1, d7
  35d5b8: f7fe fc70    	bl	0x35be9c <MAGNUM::getDAMAGE()+0x1c0> @ imm = #-0x1720
  35d5bc: 9b01         	ldr	r3, [sp, #0x4]
  35d5be: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  35d5c2: 4618         	mov	r0, r3
  35d5c4: f04f 0200    	mov.w	r2, #0x0
  35d5c8: f04f 0300    	mov.w	r3, #0x0
  35d5cc: f375 fde1    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x375bc2
  35d5d0: 9b01         	ldr	r3, [sp, #0x4]
  35d5d2: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  35d5d6: 681b         	ldr	r3, [r3]
  35d5d8: 334c         	adds	r3, #0x4c
  35d5da: 681c         	ldr	r4, [r3]
  35d5dc: 9b01         	ldr	r3, [sp, #0x4]
  35d5de: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  35d5e2: ab02         	add	r3, sp, #0x8
  35d5e4: 4618         	mov	r0, r3
  35d5e6: f04f 4142    	mov.w	r1, #0xc2000000
  35d5ea: f04f 0200    	mov.w	r2, #0x0
  35d5ee: f2c4 02a0    	movt	r2, #0x40a0
  35d5f2: f235 fb7d    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2356fa
  35d5f6: ab02         	add	r3, sp, #0x8
  35d5f8: 4628         	mov	r0, r5
  35d5fa: 4619         	mov	r1, r3
  35d5fc: 47a0         	blx	r4
  35d5fe: 9b01         	ldr	r3, [sp, #0x4]
  35d600: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  35d604: 681b         	ldr	r3, [r3]
  35d606: 337c         	adds	r3, #0x7c
  35d608: 681c         	ldr	r4, [r3]
  35d60a: 9b01         	ldr	r3, [sp, #0x4]
  35d60c: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  35d610: ab02         	add	r3, sp, #0x8
  35d612: 4618         	mov	r0, r3
  35d614: f04f 517c    	mov.w	r1, #0x3f000000
  35d618: f04f 527c    	mov.w	r2, #0x3f000000
  35d61c: f235 fb68    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2356d0
  35d620: ab02         	add	r3, sp, #0x8
  35d622: 4628         	mov	r0, r5
  35d624: 4619         	mov	r1, r3
  35d626: 47a0         	blx	r4
  35d628: 9b01         	ldr	r3, [sp, #0x4]
  35d62a: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  35d62e: 681b         	ldr	r3, [r3]
  35d630: 3398         	adds	r3, #0x98
  35d632: 681b         	ldr	r3, [r3]
  35d634: 9a01         	ldr	r2, [sp, #0x4]
  35d636: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  35d63a: 4610         	mov	r0, r2
  35d63c: f04f 0100    	mov.w	r1, #0x0
  35d640: f2c4 2196    	movt	r1, #0x4296
  35d644: 4798         	blx	r3
  35d646: 9b01         	ldr	r3, [sp, #0x4]
  35d648: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  35d64c: 681b         	ldr	r3, [r3]
  35d64e: 3340         	adds	r3, #0x40
  35d650: 681b         	ldr	r3, [r3]
  35d652: 9a01         	ldr	r2, [sp, #0x4]
  35d654: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  35d658: 4610         	mov	r0, r2
  35d65a: f04f 517e    	mov.w	r1, #0x3f800000
  35d65e: 4798         	blx	r3
  35d660: 9b01         	ldr	r3, [sp, #0x4]
  35d662: 681b         	ldr	r3, [r3]
  35d664: 334c         	adds	r3, #0x4c
  35d666: 681c         	ldr	r4, [r3]
  35d668: 9d01         	ldr	r5, [sp, #0x4]
  35d66a: ab02         	add	r3, sp, #0x8
  35d66c: 4618         	mov	r0, r3
  35d66e: f04f 0100    	mov.w	r1, #0x0
  35d672: f04f 0200    	mov.w	r2, #0x0
  35d676: f235 fb3b    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x235676
  35d67a: ab02         	add	r3, sp, #0x8
  35d67c: 4628         	mov	r0, r5
  35d67e: 4619         	mov	r1, r3
  35d680: 47a0         	blx	r4
  35d682: 9b01         	ldr	r3, [sp, #0x4]
  35d684: 681b         	ldr	r3, [r3]
  35d686: 3340         	adds	r3, #0x40
  35d688: 681b         	ldr	r3, [r3]
  35d68a: 9a01         	ldr	r2, [sp, #0x4]
  35d68c: 4610         	mov	r0, r2
  35d68e: f04f 517e    	mov.w	r1, #0x3f800000
  35d692: 4798         	blx	r3
  35d694: 9b01         	ldr	r3, [sp, #0x4]
  35d696: 681b         	ldr	r3, [r3]
  35d698: 3398         	adds	r3, #0x98
  35d69a: 681b         	ldr	r3, [r3]
  35d69c: 9a01         	ldr	r2, [sp, #0x4]
  35d69e: 4610         	mov	r0, r2
  35d6a0: f04f 0100    	mov.w	r1, #0x0
  35d6a4: 4798         	blx	r3
  35d6a6: 9b01         	ldr	r3, [sp, #0x4]
  35d6a8: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  35d6ac: 681b         	ldr	r3, [r3]
  35d6ae: 3390         	adds	r3, #0x90
  35d6b0: 681b         	ldr	r3, [r3]
  35d6b2: 9a01         	ldr	r2, [sp, #0x4]
  35d6b4: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  35d6b8: 4610         	mov	r0, r2
  35d6ba: 2100         	movs	r1, #0x0
  35d6bc: 4798         	blx	r3
  35d6be: 9b01         	ldr	r3, [sp, #0x4]
  35d6c0: 2200         	movs	r2, #0x0
  35d6c2: f883 2195    	strb.w	r2, [r3, #0x195]
  35d6c6: 9b01         	ldr	r3, [sp, #0x4]
  35d6c8: 2200         	movs	r2, #0x0
  35d6ca: f883 2194    	strb.w	r2, [r3, #0x194]
  35d6ce: 9b01         	ldr	r3, [sp, #0x4]
  35d6d0: f04f 0200    	mov.w	r2, #0x0
  35d6d4: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  35d6d8: b005         	add	sp, #0x14
  35d6da: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x35d6db); words below are literal-pool data ---
  35d6dc: f510 0046    	adds.w	r0, r0, #0xc60000

// ==== MP5::setMapConfiguration
//      file offset 0x35d6e0 (= ELF address; Ghidra 0x36d6e0), 248 bytes, Thumb-2
  35d6e0: b570         	push	{r4, r5, r6, lr}
  35d6e2: b084         	sub	sp, #0x10
  35d6e4: 9001         	str	r0, [sp, #0x4]
  35d6e6: 4c3a         	ldr	r4, [pc, #0xe8]         @ 0x35d7d0 <MP5::setMapConfiguration()+0xf0>
  35d6e8: 447c         	add	r4, pc
  35d6ea: 9b01         	ldr	r3, [sp, #0x4]
  35d6ec: f04f 0200    	mov.w	r2, #0x0
  35d6f0: f8c3 2190    	str.w	r2, [r3, #0x190]
  35d6f4: 9b01         	ldr	r3, [sp, #0x4]
  35d6f6: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  35d6fa: 681b         	ldr	r3, [r3]
  35d6fc: 334c         	adds	r3, #0x4c
  35d6fe: 681d         	ldr	r5, [r3]
  35d700: 9b01         	ldr	r3, [sp, #0x4]
  35d702: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  35d706: ab02         	add	r3, sp, #0x8
  35d708: 4618         	mov	r0, r3
  35d70a: f04f 0100    	mov.w	r1, #0x0
  35d70e: f04f 0200    	mov.w	r2, #0x0
  35d712: f235 faed    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2355da
  35d716: ab02         	add	r3, sp, #0x8
  35d718: 4630         	mov	r0, r6
  35d71a: 4619         	mov	r1, r3
  35d71c: 47a8         	blx	r5
  35d71e: 9b01         	ldr	r3, [sp, #0x4]
  35d720: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  35d724: 681b         	ldr	r3, [r3]
  35d726: 337c         	adds	r3, #0x7c
  35d728: 681d         	ldr	r5, [r3]
  35d72a: 9b01         	ldr	r3, [sp, #0x4]
  35d72c: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  35d730: ab02         	add	r3, sp, #0x8
  35d732: 4618         	mov	r0, r3
  35d734: f04f 517c    	mov.w	r1, #0x3f000000
  35d738: f04f 527c    	mov.w	r2, #0x3f000000
  35d73c: f235 fad8    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2355b0
  35d740: ab02         	add	r3, sp, #0x8
  35d742: 4630         	mov	r0, r6
  35d744: 4619         	mov	r1, r3
  35d746: 47a8         	blx	r5
  35d748: 9b01         	ldr	r3, [sp, #0x4]
  35d74a: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  35d74e: 681b         	ldr	r3, [r3]
  35d750: 3398         	adds	r3, #0x98
  35d752: 681b         	ldr	r3, [r3]
  35d754: 9a01         	ldr	r2, [sp, #0x4]
  35d756: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  35d75a: 4610         	mov	r0, r2
  35d75c: f04f 0100    	mov.w	r1, #0x0
  35d760: 4798         	blx	r3
  35d762: 9b01         	ldr	r3, [sp, #0x4]
  35d764: 681b         	ldr	r3, [r3]
  35d766: 334c         	adds	r3, #0x4c
  35d768: 681d         	ldr	r5, [r3]
  35d76a: 9e01         	ldr	r6, [sp, #0x4]
  35d76c: ab02         	add	r3, sp, #0x8
  35d76e: 4618         	mov	r0, r3
  35d770: f04f 0100    	mov.w	r1, #0x0
  35d774: f04f 0200    	mov.w	r2, #0x0
  35d778: f235 faba    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x235574
  35d77c: ab02         	add	r3, sp, #0x8
  35d77e: 4630         	mov	r0, r6
  35d780: 4619         	mov	r1, r3
  35d782: 47a8         	blx	r5
  35d784: 9b01         	ldr	r3, [sp, #0x4]
  35d786: 681b         	ldr	r3, [r3]
  35d788: 3340         	adds	r3, #0x40
  35d78a: 681b         	ldr	r3, [r3]
  35d78c: 9901         	ldr	r1, [sp, #0x4]
  35d78e: 4a11         	ldr	r2, [pc, #0x44]         @ 0x35d7d4 <MP5::setMapConfiguration()+0xf4>
  35d790: 58a2         	ldr	r2, [r4, r2]
  35d792: 6812         	ldr	r2, [r2]
  35d794: 4608         	mov	r0, r1
  35d796: 4611         	mov	r1, r2
  35d798: 4798         	blx	r3
  35d79a: 9b01         	ldr	r3, [sp, #0x4]
  35d79c: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  35d7a0: 681b         	ldr	r3, [r3]
  35d7a2: 3390         	adds	r3, #0x90
  35d7a4: 681b         	ldr	r3, [r3]
  35d7a6: 9a01         	ldr	r2, [sp, #0x4]
  35d7a8: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  35d7ac: 4610         	mov	r0, r2
  35d7ae: 2100         	movs	r1, #0x0
  35d7b0: 4798         	blx	r3
  35d7b2: 9b01         	ldr	r3, [sp, #0x4]
  35d7b4: 2200         	movs	r2, #0x0
  35d7b6: f883 2195    	strb.w	r2, [r3, #0x195]
  35d7ba: 9b01         	ldr	r3, [sp, #0x4]
  35d7bc: 2200         	movs	r2, #0x0
  35d7be: f883 2194    	strb.w	r2, [r3, #0x194]
  35d7c2: 9b01         	ldr	r3, [sp, #0x4]
  35d7c4: f04f 0200    	mov.w	r2, #0x0
  35d7c8: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  35d7cc: b004         	add	sp, #0x10
  35d7ce: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x35d7cf); words below are literal-pool data ---
  35d7d0: 5320         	strh	r0, [r4, r4]
  35d7d2: 005d         	lsls	r5, r3, #0x1
  35d7d4: d748         	bvc	0x35d868 <MP5::setRight(bool)+0x4> @ imm = #0x90
  35d7d6: ffff b500    	<unknown>

// ==== MP5::getWeaponTexture
//      file offset 0x35d7d8 (= ELF address; Ghidra 0x36d7d8), 40 bytes, Thumb-2
  35d7d8: b500         	push	{lr}
  35d7da: b083         	sub	sp, #0xc
  35d7dc: 9001         	str	r0, [sp, #0x4]
  35d7de: 9b01         	ldr	r3, [sp, #0x4]
  35d7e0: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  35d7e4: 681b         	ldr	r3, [r3]
  35d7e6: f503 73fa    	add.w	r3, r3, #0x1f4
  35d7ea: 681b         	ldr	r3, [r3]
  35d7ec: 9a01         	ldr	r2, [sp, #0x4]
  35d7ee: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  35d7f2: 4610         	mov	r0, r2
  35d7f4: 4798         	blx	r3
  35d7f6: 4603         	mov	r3, r0
  35d7f8: 4618         	mov	r0, r3
  35d7fa: b003         	add	sp, #0xc
  35d7fc: f85d fb04    	ldr	pc, [sp], #4

// ==== MP5::getWeaponRect
//      file offset 0x35d800 (= ELF address; Ghidra 0x36d800), 38 bytes, Thumb-2
  35d800: b500         	push	{lr}
  35d802: b083         	sub	sp, #0xc
  35d804: 9001         	str	r0, [sp, #0x4]
  35d806: 9100         	str	r1, [sp]
  35d808: 9b00         	ldr	r3, [sp]
  35d80a: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  35d80e: 4618         	mov	r0, r3
  35d810: f77f fa64    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x80b38
  35d814: 4603         	mov	r3, r0
  35d816: 9801         	ldr	r0, [sp, #0x4]
  35d818: 4619         	mov	r1, r3
  35d81a: f235 fd7d    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x235afa
  35d81e: 9801         	ldr	r0, [sp, #0x4]
  35d820: b003         	add	sp, #0xc
  35d822: f85d fb04    	ldr	pc, [sp], #4

// ==== MP5::isRight
//      file offset 0x35d828 (= ELF address; Ghidra 0x36d828), 60 bytes, Thumb-2
  35d828: b500         	push	{lr}
  35d82a: b083         	sub	sp, #0xc
  35d82c: 9001         	str	r0, [sp, #0x4]
  35d82e: 9b01         	ldr	r3, [sp, #0x4]
  35d830: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  35d834: 681b         	ldr	r3, [r3]
  35d836: 3334         	adds	r3, #0x34
  35d838: 681b         	ldr	r3, [r3]
  35d83a: 9a01         	ldr	r2, [sp, #0x4]
  35d83c: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  35d840: 4610         	mov	r0, r2
  35d842: 4798         	blx	r3
  35d844: ee07 0a10    	vmov	s14, r0
  35d848: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  35d84c: eeb4 7ae7    	vcmpe.f32	s14, s15
  35d850: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  35d854: bfd4         	ite	le
  35d856: 2300         	movle	r3, #0x0
  35d858: 2301         	movgt	r3, #0x1
  35d85a: b2db         	uxtb	r3, r3
  35d85c: 4618         	mov	r0, r3
  35d85e: b003         	add	sp, #0xc
  35d860: f85d fb04    	ldr	pc, [sp], #4

// ==== MP5::setRight
//      file offset 0x35d864 (= ELF address; Ghidra 0x36d864), 64 bytes, Thumb-2
  35d864: b500         	push	{lr}
  35d866: b083         	sub	sp, #0xc
  35d868: 9001         	str	r0, [sp, #0x4]
  35d86a: 460b         	mov	r3, r1
  35d86c: f88d 3003    	strb.w	r3, [sp, #0x3]
  35d870: 9b01         	ldr	r3, [sp, #0x4]
  35d872: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  35d876: 681b         	ldr	r3, [r3]
  35d878: 3330         	adds	r3, #0x30
  35d87a: 681a         	ldr	r2, [r3]
  35d87c: 9b01         	ldr	r3, [sp, #0x4]
  35d87e: f8d3 11ec    	ldr.w	r1, [r3, #0x1ec]
  35d882: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  35d886: 2b00         	cmp	r3, #0x0
  35d888: d002         	beq	0x35d890 <MP5::setRight(bool)+0x2c> @ imm = #0x4
  35d88a: f04f 537e    	mov.w	r3, #0x3f800000
  35d88e: e003         	b	0x35d898 <MP5::setRight(bool)+0x34> @ imm = #0x6
  35d890: f04f 0300    	mov.w	r3, #0x0
  35d894: f6cb 7380    	movt	r3, #0xbf80
  35d898: 4608         	mov	r0, r1
  35d89a: 4619         	mov	r1, r3
  35d89c: 4790         	blx	r2
  35d89e: b003         	add	sp, #0xc
  35d8a0: f85d fb04    	ldr	pc, [sp], #4

// ==== MP5::getRANGE
//      file offset 0x35d8a4 (= ELF address; Ghidra 0x36d8a4), 16 bytes, Thumb-2
  35d8a4: 4b02         	ldr	r3, [pc, #0x8]          @ 0x35d8b0 <MP5::getRANGE()+0xc>
  35d8a6: 447b         	add	r3, pc
  35d8a8: 681b         	ldr	r3, [r3]
  35d8aa: 4618         	mov	r0, r3
  35d8ac: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x35d8ad); words below are literal-pool data ---
  35d8ae: bf00         	nop
  35d8b0: 5b56         	ldrh	r6, [r2, r5]
  35d8b2: 005d         	lsls	r5, r3, #0x1

// ==== MP5::getDAMAGE
//      file offset 0x35d8b4 (= ELF address; Ghidra 0x36d8b4), 16 bytes, Thumb-2
  35d8b4: 4b02         	ldr	r3, [pc, #0x8]          @ 0x35d8c0 <MP5::getDAMAGE()+0xc>
  35d8b6: 447b         	add	r3, pc
  35d8b8: 681b         	ldr	r3, [r3]
  35d8ba: 4618         	mov	r0, r3
  35d8bc: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x35d8bd); words below are literal-pool data ---
  35d8be: bf00         	nop
  35d8c0: 5b42         	ldrh	r2, [r0, r5]
  35d8c2: 005d         	lsls	r5, r3, #0x1

// ==== MP5::create
//      file offset 0x4170fc (= ELF address; Ghidra 0x4270fc), 112 bytes, Thumb-2
  4170fc: b510         	push	{r4, lr}
  4170fe: b082         	sub	sp, #0x8
  417100: f44f 70fc    	mov.w	r0, #0x1f8
  417104: f370 fc2e    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x37085c
  417108: 4603         	mov	r3, r0
  41710a: 461c         	mov	r4, r3
  41710c: 4620         	mov	r0, r4
  41710e: f745 fd85    	bl	0x35cc1c <MP5::MP5()>   @ imm = #-0xba4f6
  417112: 9401         	str	r4, [sp, #0x4]
  417114: 9b01         	ldr	r3, [sp, #0x4]
  417116: 2b00         	cmp	r3, #0x0
  417118: d00a         	beq	0x417130 <MP5::create()+0x34> @ imm = #0x14
  41711a: 9b01         	ldr	r3, [sp, #0x4]
  41711c: 681b         	ldr	r3, [r3]
  41711e: 3318         	adds	r3, #0x18
  417120: 681b         	ldr	r3, [r3]
  417122: 9801         	ldr	r0, [sp, #0x4]
  417124: 4798         	blx	r3
  417126: 4603         	mov	r3, r0
  417128: 2b00         	cmp	r3, #0x0
  41712a: d001         	beq	0x417130 <MP5::create()+0x34> @ imm = #0x2
  41712c: 2301         	movs	r3, #0x1
  41712e: e000         	b	0x417132 <MP5::create()+0x36> @ imm = #0x0
  417130: 2300         	movs	r3, #0x0
  417132: 2b00         	cmp	r3, #0x0
  417134: d005         	beq	0x417142 <MP5::create()+0x46> @ imm = #0xa
  417136: 9b01         	ldr	r3, [sp, #0x4]
  417138: 4618         	mov	r0, r3
  41713a: f180 fedf    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x180dbe
  41713e: 9b01         	ldr	r3, [sp, #0x4]
  417140: e011         	b	0x417166 <MP5::create()+0x6a> @ imm = #0x22
  417142: 9b01         	ldr	r3, [sp, #0x4]
  417144: 2b00         	cmp	r3, #0x0
  417146: d005         	beq	0x417154 <MP5::create()+0x58> @ imm = #0xa
  417148: 9b01         	ldr	r3, [sp, #0x4]
  41714a: 681b         	ldr	r3, [r3]
  41714c: 3308         	adds	r3, #0x8
  41714e: 681b         	ldr	r3, [r3]
  417150: 9801         	ldr	r0, [sp, #0x4]
  417152: 4798         	blx	r3
  417154: 2300         	movs	r3, #0x0
  417156: 9301         	str	r3, [sp, #0x4]
  417158: 2300         	movs	r3, #0x0
  41715a: e004         	b	0x417166 <MP5::create()+0x6a> @ imm = #0x8
  41715c: 4620         	mov	r0, r4
  41715e: f370 ffa1    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x370f42
  417162: f370 ffa3    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x370f46
  417166: 4618         	mov	r0, r3
  417168: b002         	add	sp, #0x8
  41716a: bd10         	pop	{r4, pc}
