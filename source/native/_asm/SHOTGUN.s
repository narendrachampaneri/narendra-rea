// SHOTGUN: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 20 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../SHOTGUN.cpp

// ==== SHOTGUN::SHOTGUN
//      file offset 0x3ce884 (= ELF address; Ghidra 0x3de884), 44 bytes, Thumb-2
  3ce884: b510         	push	{r4, lr}
  3ce886: b082         	sub	sp, #0x8
  3ce888: 9001         	str	r0, [sp, #0x4]
  3ce88a: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x3ce8a8 <SHOTGUN::SHOTGUN()+0x24>
  3ce88c: 447c         	add	r4, pc
  3ce88e: 9b01         	ldr	r3, [sp, #0x4]
  3ce890: 4618         	mov	r0, r3
  3ce892: f046 fb89    	bl	0x414fa8 <Weapon::Weapon()> @ imm = #0x46712
  3ce896: 9b01         	ldr	r3, [sp, #0x4]
  3ce898: 4a04         	ldr	r2, [pc, #0x10]         @ 0x3ce8ac <SHOTGUN::SHOTGUN()+0x28>
  3ce89a: 58a2         	ldr	r2, [r4, r2]
  3ce89c: 3208         	adds	r2, #0x8
  3ce89e: 601a         	str	r2, [r3]
  3ce8a0: 9b01         	ldr	r3, [sp, #0x4]
  3ce8a2: 4618         	mov	r0, r3
  3ce8a4: b002         	add	sp, #0x8
  3ce8a6: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3ce8a7); words below are literal-pool data ---
  3ce8a8: 417c         	adcs	r4, r7
  3ce8aa: 0056         	lsls	r6, r2, #0x1
  3ce8ac: de94         	udf	#0x94
  3ce8ae: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== SHOTGUN::init
//      file offset 0x3ce8b0 (= ELF address; Ghidra 0x3de8b0), 864 bytes, Thumb-2
  3ce8b0: b530         	push	{r4, r5, lr}
  3ce8b2: b08b         	sub	sp, #0x2c
  3ce8b4: 9005         	str	r0, [sp, #0x14]
  3ce8b6: 9b05         	ldr	r3, [sp, #0x14]
  3ce8b8: 4618         	mov	r0, r3
  3ce8ba: f046 fb99    	bl	0x414ff0 <Weapon::init()> @ imm = #0x46732
  3ce8be: 4603         	mov	r3, r0
  3ce8c0: f88d 301f    	strb.w	r3, [sp, #0x1f]
  3ce8c4: f89d 301f    	ldrb.w	r3, [sp, #0x1f]
  3ce8c8: f083 0301    	eor	r3, r3, #0x1
  3ce8cc: b2db         	uxtb	r3, r3
  3ce8ce: 2b00         	cmp	r3, #0x0
  3ce8d0: d001         	beq	0x3ce8d6 <SHOTGUN::init()+0x26> @ imm = #0x2
  3ce8d2: 2300         	movs	r3, #0x0
  3ce8d4: e182         	b	0x3cebdc <SHOTGUN::init()+0x32c> @ imm = #0x304
  3ce8d6: 4bc8         	ldr	r3, [pc, #0x320]        @ 0x3cebf8 <SHOTGUN::init()+0x348>
  3ce8d8: 447b         	add	r3, pc
  3ce8da: 4618         	mov	r0, r3
  3ce8dc: f209 fd12    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x209a24
  3ce8e0: 4602         	mov	r2, r0
  3ce8e2: 9b05         	ldr	r3, [sp, #0x14]
  3ce8e4: f8c3 21ec    	str.w	r2, [r3, #0x1ec]
  3ce8e8: 9b05         	ldr	r3, [sp, #0x14]
  3ce8ea: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3ce8ee: 4618         	mov	r0, r3
  3ce8f0: f1c9 fafa    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1c95f4
  3ce8f4: 4bc1         	ldr	r3, [pc, #0x304]        @ 0x3cebfc <SHOTGUN::init()+0x34c>
  3ce8f6: 447b         	add	r3, pc
  3ce8f8: 4618         	mov	r0, r3
  3ce8fa: f209 fd03    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x209a06
  3ce8fe: 4602         	mov	r2, r0
  3ce900: 9b05         	ldr	r3, [sp, #0x14]
  3ce902: f8c3 21f0    	str.w	r2, [r3, #0x1f0]
  3ce906: 9b05         	ldr	r3, [sp, #0x14]
  3ce908: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3ce90c: 4618         	mov	r0, r3
  3ce90e: f1c9 faeb    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1c95d6
  3ce912: 9b05         	ldr	r3, [sp, #0x14]
  3ce914: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3ce918: 681b         	ldr	r3, [r3]
  3ce91a: 337c         	adds	r3, #0x7c
  3ce91c: 681c         	ldr	r4, [r3]
  3ce91e: 9b05         	ldr	r3, [sp, #0x14]
  3ce920: f8d3 51f0    	ldr.w	r5, [r3, #0x1f0]
  3ce924: ab08         	add	r3, sp, #0x20
  3ce926: 4618         	mov	r0, r3
  3ce928: f04f 0100    	mov.w	r1, #0x0
  3ce92c: f6cb 71c0    	movt	r1, #0xbfc0
  3ce930: f64c 42cd    	movw	r2, #0xcccd
  3ce934: f6c3 62cc    	movt	r2, #0x3ecc
  3ce938: f1c4 f9da    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1c43b4
  3ce93c: ab08         	add	r3, sp, #0x20
  3ce93e: 4628         	mov	r0, r5
  3ce940: 4619         	mov	r1, r3
  3ce942: 47a0         	blx	r4
  3ce944: 9b05         	ldr	r3, [sp, #0x14]
  3ce946: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3ce94a: 681b         	ldr	r3, [r3]
  3ce94c: 3330         	adds	r3, #0x30
  3ce94e: 681b         	ldr	r3, [r3]
  3ce950: 9a05         	ldr	r2, [sp, #0x14]
  3ce952: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  3ce956: 4610         	mov	r0, r2
  3ce958: f04f 4180    	mov.w	r1, #0x40000000
  3ce95c: 4798         	blx	r3
  3ce95e: 9b05         	ldr	r3, [sp, #0x14]
  3ce960: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3ce964: 681b         	ldr	r3, [r3]
  3ce966: 3338         	adds	r3, #0x38
  3ce968: 681b         	ldr	r3, [r3]
  3ce96a: 9a05         	ldr	r2, [sp, #0x14]
  3ce96c: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  3ce970: 4610         	mov	r0, r2
  3ce972: f04f 0100    	mov.w	r1, #0x0
  3ce976: f2c4 0140    	movt	r1, #0x4040
  3ce97a: 4798         	blx	r3
  3ce97c: 9b05         	ldr	r3, [sp, #0x14]
  3ce97e: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3ce982: 681b         	ldr	r3, [r3]
  3ce984: 3390         	adds	r3, #0x90
  3ce986: 681b         	ldr	r3, [r3]
  3ce988: 9a05         	ldr	r2, [sp, #0x14]
  3ce98a: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  3ce98e: 4610         	mov	r0, r2
  3ce990: 2100         	movs	r1, #0x0
  3ce992: 4798         	blx	r3
  3ce994: 9b05         	ldr	r3, [sp, #0x14]
  3ce996: 681b         	ldr	r3, [r3]
  3ce998: f503 73f0    	add.w	r3, r3, #0x1e0
  3ce99c: 681b         	ldr	r3, [r3]
  3ce99e: 9805         	ldr	r0, [sp, #0x14]
  3ce9a0: 4798         	blx	r3
  3ce9a2: 9b05         	ldr	r3, [sp, #0x14]
  3ce9a4: 681b         	ldr	r3, [r3]
  3ce9a6: 33cc         	adds	r3, #0xcc
  3ce9a8: 681b         	ldr	r3, [r3]
  3ce9aa: 9905         	ldr	r1, [sp, #0x14]
  3ce9ac: 9a05         	ldr	r2, [sp, #0x14]
  3ce9ae: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3ce9b2: 4608         	mov	r0, r1
  3ce9b4: 4611         	mov	r1, r2
  3ce9b6: 2200         	movs	r2, #0x0
  3ce9b8: 4798         	blx	r3
  3ce9ba: 9b05         	ldr	r3, [sp, #0x14]
  3ce9bc: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3ce9c0: 681b         	ldr	r3, [r3]
  3ce9c2: 33cc         	adds	r3, #0xcc
  3ce9c4: 681b         	ldr	r3, [r3]
  3ce9c6: 9a05         	ldr	r2, [sp, #0x14]
  3ce9c8: f8d2 11ec    	ldr.w	r1, [r2, #0x1ec]
  3ce9cc: 9a05         	ldr	r2, [sp, #0x14]
  3ce9ce: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  3ce9d2: 4608         	mov	r0, r1
  3ce9d4: 4611         	mov	r1, r2
  3ce9d6: 2200         	movs	r2, #0x0
  3ce9d8: 4798         	blx	r3
  3ce9da: 9b05         	ldr	r3, [sp, #0x14]
  3ce9dc: f8d3 4150    	ldr.w	r4, [r3, #0x150]
  3ce9e0: f04f 507e    	mov.w	r0, #0x3f800000
  3ce9e4: f70e f94e    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xf1d64
  3ce9e8: 4603         	mov	r3, r0
  3ce9ea: 4620         	mov	r0, r4
  3ce9ec: 4619         	mov	r1, r3
  3ce9ee: f1cb fc3d    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x1cb87a
  3ce9f2: 9b05         	ldr	r3, [sp, #0x14]
  3ce9f4: f8d3 414c    	ldr.w	r4, [r3, #0x14c]
  3ce9f8: ab07         	add	r3, sp, #0x1c
  3ce9fa: 4618         	mov	r0, r3
  3ce9fc: f3bb fcfa    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3bb9f4
  3cea00: aa08         	add	r2, sp, #0x20
  3cea02: ab07         	add	r3, sp, #0x1c
  3cea04: 4610         	mov	r0, r2
  3cea06: 4a7e         	ldr	r2, [pc, #0x1f8]        @ 0x3cec00 <SHOTGUN::init()+0x350>
  3cea08: 447a         	add	r2, pc
  3cea0a: 4611         	mov	r1, r2
  3cea0c: 461a         	mov	r2, r3
  3cea0e: f3e8 f827    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3e804e
  3cea12: ab08         	add	r3, sp, #0x20
  3cea14: 4618         	mov	r0, r3
  3cea16: f1cb f811    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1cb022
  3cea1a: 4603         	mov	r3, r0
  3cea1c: 4620         	mov	r0, r4
  3cea1e: 4619         	mov	r1, r3
  3cea20: f1cb fc24    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x1cb848
  3cea24: ab08         	add	r3, sp, #0x20
  3cea26: 4618         	mov	r0, r3
  3cea28: f3e6 ff74    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e6ee8
  3cea2c: ab07         	add	r3, sp, #0x1c
  3cea2e: 4618         	mov	r0, r3
  3cea30: f3bb fce4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3bb9c8
  3cea34: 9b05         	ldr	r3, [sp, #0x14]
  3cea36: f8d3 4150    	ldr.w	r4, [r3, #0x150]
  3cea3a: f246 6066    	movw	r0, #0x6666
  3cea3e: f6c3 7066    	movt	r0, #0x3f66
  3cea42: f70e f91f    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xf1dc2
  3cea46: 4603         	mov	r3, r0
  3cea48: 4620         	mov	r0, r4
  3cea4a: 4619         	mov	r1, r3
  3cea4c: f1cb fc0e    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x1cb81c
  3cea50: 9b05         	ldr	r3, [sp, #0x14]
  3cea52: f8d3 414c    	ldr.w	r4, [r3, #0x14c]
  3cea56: ab07         	add	r3, sp, #0x1c
  3cea58: 4618         	mov	r0, r3
  3cea5a: f3bb fccb    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3bb996
  3cea5e: aa08         	add	r2, sp, #0x20
  3cea60: ab07         	add	r3, sp, #0x1c
  3cea62: 4610         	mov	r0, r2
  3cea64: 4a67         	ldr	r2, [pc, #0x19c]        @ 0x3cec04 <SHOTGUN::init()+0x354>
  3cea66: 447a         	add	r2, pc
  3cea68: 4611         	mov	r1, r2
  3cea6a: 461a         	mov	r2, r3
  3cea6c: f3e7 fff8    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3e7ff0
  3cea70: ab08         	add	r3, sp, #0x20
  3cea72: 4618         	mov	r0, r3
  3cea74: f1ca ffe2    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1cafc4
  3cea78: 4603         	mov	r3, r0
  3cea7a: 4620         	mov	r0, r4
  3cea7c: 4619         	mov	r1, r3
  3cea7e: f1cb fbf5    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x1cb7ea
  3cea82: ab08         	add	r3, sp, #0x20
  3cea84: 4618         	mov	r0, r3
  3cea86: f3e6 ff45    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e6e8a
  3cea8a: ab07         	add	r3, sp, #0x1c
  3cea8c: 4618         	mov	r0, r3
  3cea8e: f3bb fcb5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3bb96a
  3cea92: 9b05         	ldr	r3, [sp, #0x14]
  3cea94: 2200         	movs	r2, #0x0
  3cea96: f8c3 2144    	str.w	r2, [r3, #0x144]
  3cea9a: 9b05         	ldr	r3, [sp, #0x14]
  3cea9c: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3ceaa0: 4618         	mov	r0, r3
  3ceaa2: 2100         	movs	r1, #0x0
  3ceaa4: f1cb fb3c    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1cb678
  3ceaa8: 4603         	mov	r3, r0
  3ceaaa: 4618         	mov	r0, r3
  3ceaac: f70e f8e2    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0xf1e3c
  3ceab0: 4602         	mov	r2, r0
  3ceab2: 9b05         	ldr	r3, [sp, #0x14]
  3ceab4: f8c3 2148    	str.w	r2, [r3, #0x148]
  3ceab8: 9b05         	ldr	r3, [sp, #0x14]
  3ceaba: f04f 527d    	mov.w	r2, #0x3f400000
  3ceabe: f8c3 215c    	str.w	r2, [r3, #0x15c]
  3ceac2: 9b05         	ldr	r3, [sp, #0x14]
  3ceac4: f04f 0200    	mov.w	r2, #0x0
  3ceac8: f2c4 0220    	movt	r2, #0x4020
  3ceacc: f8c3 2160    	str.w	r2, [r3, #0x160]
  3cead0: 9b05         	ldr	r3, [sp, #0x14]
  3cead2: f04f 0200    	mov.w	r2, #0x0
  3cead6: f2c4 1220    	movt	r2, #0x4120
  3ceada: f8c3 2164    	str.w	r2, [r3, #0x164]
  3ceade: 9b05         	ldr	r3, [sp, #0x14]
  3ceae0: f04f 0200    	mov.w	r2, #0x0
  3ceae4: f2c4 12a0    	movt	r2, #0x41a0
  3ceae8: f8c3 216c    	str.w	r2, [r3, #0x16c]
  3ceaec: 9b05         	ldr	r3, [sp, #0x14]
  3ceaee: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3ceaf2: 681b         	ldr	r3, [r3]
  3ceaf4: 3398         	adds	r3, #0x98
  3ceaf6: 681b         	ldr	r3, [r3]
  3ceaf8: 9a05         	ldr	r2, [sp, #0x14]
  3ceafa: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  3ceafe: 4610         	mov	r0, r2
  3ceb00: f04f 0100    	mov.w	r1, #0x0
  3ceb04: f2c4 0140    	movt	r1, #0x4040
  3ceb08: 4798         	blx	r3
  3ceb0a: 9b05         	ldr	r3, [sp, #0x14]
  3ceb0c: 221e         	movs	r2, #0x1e
  3ceb0e: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  3ceb12: 9b05         	ldr	r3, [sp, #0x14]
  3ceb14: 2205         	movs	r2, #0x5
  3ceb16: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  3ceb1a: 9b05         	ldr	r3, [sp, #0x14]
  3ceb1c: 225a         	movs	r2, #0x5a
  3ceb1e: f8c3 218c    	str.w	r2, [r3, #0x18c]
  3ceb22: 9b05         	ldr	r3, [sp, #0x14]
  3ceb24: 2200         	movs	r2, #0x0
  3ceb26: f883 2181    	strb.w	r2, [r3, #0x181]
  3ceb2a: 9b05         	ldr	r3, [sp, #0x14]
  3ceb2c: 2209         	movs	r2, #0x9
  3ceb2e: f8c3 2188    	str.w	r2, [r3, #0x188]
  3ceb32: 9b05         	ldr	r3, [sp, #0x14]
  3ceb34: 2228         	movs	r2, #0x28
  3ceb36: f8c3 219c    	str.w	r2, [r3, #0x19c]
  3ceb3a: 9b05         	ldr	r3, [sp, #0x14]
  3ceb3c: 2232         	movs	r2, #0x32
  3ceb3e: f8c3 21a0    	str.w	r2, [r3, #0x1a0]
  3ceb42: 4b31         	ldr	r3, [pc, #0xc4]         @ 0x3cec08 <SHOTGUN::init()+0x358>
  3ceb44: 447b         	add	r3, pc
  3ceb46: 681a         	ldr	r2, [r3]
  3ceb48: 9b05         	ldr	r3, [sp, #0x14]
  3ceb4a: f8c3 21a4    	str.w	r2, [r3, #0x1a4]
  3ceb4e: 9b05         	ldr	r3, [sp, #0x14]
  3ceb50: 2206         	movs	r2, #0x6
  3ceb52: f8c3 21b4    	str.w	r2, [r3, #0x1b4]
  3ceb56: 9b05         	ldr	r3, [sp, #0x14]
  3ceb58: f04f 0200    	mov.w	r2, #0x0
  3ceb5c: f2cc 12c8    	movt	r2, #0xc1c8
  3ceb60: f8c3 21b8    	str.w	r2, [r3, #0x1b8]
  3ceb64: 9b05         	ldr	r3, [sp, #0x14]
  3ceb66: f246 6266    	movw	r2, #0x6666
  3ceb6a: f6c3 7266    	movt	r2, #0x3f66
  3ceb6e: f8c3 21cc    	str.w	r2, [r3, #0x1cc]
  3ceb72: 9b05         	ldr	r3, [sp, #0x14]
  3ceb74: 2205         	movs	r2, #0x5
  3ceb76: f8c3 2170    	str.w	r2, [r3, #0x170]
  3ceb7a: 9b05         	ldr	r3, [sp, #0x14]
  3ceb7c: 221e         	movs	r2, #0x1e
  3ceb7e: f8c3 2174    	str.w	r2, [r3, #0x174]
  3ceb82: 9c05         	ldr	r4, [sp, #0x14]
  3ceb84: 466b         	mov	r3, sp
  3ceb86: 4618         	mov	r0, r3
  3ceb88: ed9f 0b17    	vldr	d0, [pc, #92]           @ 0x3cebe8 <SHOTGUN::init()+0x338>
  3ceb8c: ed9f 1b18    	vldr	d1, [pc, #96]           @ 0x3cebf0 <SHOTGUN::init()+0x340>
  3ceb90: f7fe ffa4    	bl	0x3cdadc <SAWGUN::setRight(bool)+0x1c8> @ imm = #-0x10b8
  3ceb94: f504 74ec    	add.w	r4, r4, #0x1d8
  3ceb98: 466b         	mov	r3, sp
  3ceb9a: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3ceb9c: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3ceba0: 4b1a         	ldr	r3, [pc, #0x68]         @ 0x3cec0c <SHOTGUN::init()+0x35c>
  3ceba2: 447b         	add	r3, pc
  3ceba4: 681a         	ldr	r2, [r3]
  3ceba6: 9b05         	ldr	r3, [sp, #0x14]
  3ceba8: f8c3 2198    	str.w	r2, [r3, #0x198]
  3cebac: 2301         	movs	r3, #0x1
  3cebae: e015         	b	0x3cebdc <SHOTGUN::init()+0x32c> @ imm = #0x2a
  3cebb0: ab08         	add	r3, sp, #0x20
  3cebb2: 4618         	mov	r0, r3
  3cebb4: f3e6 feae    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e6d5c
  3cebb8: e7ff         	b	0x3cebba <SHOTGUN::init()+0x30a> @ imm = #-0x2
  3cebba: ab07         	add	r3, sp, #0x1c
  3cebbc: 4618         	mov	r0, r3
  3cebbe: f3bb fc1d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3bb83a
  3cebc2: f3b9 fa73    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3b94e6
  3cebc6: ab08         	add	r3, sp, #0x20
  3cebc8: 4618         	mov	r0, r3
  3cebca: f3e6 fea3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e6d46
  3cebce: e7ff         	b	0x3cebd0 <SHOTGUN::init()+0x320> @ imm = #-0x2
  3cebd0: ab07         	add	r3, sp, #0x1c
  3cebd2: 4618         	mov	r0, r3
  3cebd4: f3bb fc12    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3bb824
  3cebd8: f3b9 fa68    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3b94d0
  3cebdc: 4618         	mov	r0, r3
  3cebde: b00b         	add	sp, #0x2c
  3cebe0: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3cebe1); words below are literal-pool data ---
  3cebe2: bf00         	nop
  3cebe4: f3af 8000    	nop.w
  3cebe8: 0000         	movs	r0, r0
  3cebea: 0000         	movs	r0, r0
  3cebec: 4000         	ands	r0, r0
  3cebee: 405a         	eors	r2, r3
  3cebf0: 0000         	movs	r0, r0
  3cebf2: 0000         	movs	r0, r0
  3cebf4: 0000         	movs	r0, r0
  3cebf6: 4049         	eors	r1, r1
  3cebf8: 8494         	strh	r4, [r2, #0x24]
  3cebfa: 0040         	lsls	r0, r0, #0x1
  3cebfc: 8482         	strh	r2, [r0, #0x24]
  3cebfe: 0040         	lsls	r0, r0, #0x1
  3cec00: 837c         	strh	r4, [r7, #0x1a]
  3cec02: 0040         	lsls	r0, r0, #0x1
  3cec04: 8322         	strh	r2, [r4, #0x18]
  3cec06: 0040         	lsls	r0, r0, #0x1
  3cec08: 4adc         	ldr	r2, [pc, #0x370]        @ 0x3cef7c <SHOTGUN::remoteTriggerPull(float)>
  3cec0a: 0056         	lsls	r6, r2, #0x1
  3cec0c: 4a7a         	ldr	r2, [pc, #0x1e8]        @ 0x3cedf8 <SHOTGUN::triggerPull(float)+0x158>
  3cec0e: 0056         	lsls	r6, r2, #0x1

// ==== SHOTGUN::~SHOTGUN
//      file offset 0x3cec10 (= ELF address; Ghidra 0x3dec10), 116 bytes, Thumb-2
  3cec10: b500         	push	{lr}
  3cec12: b083         	sub	sp, #0xc
  3cec14: 9001         	str	r0, [sp, #0x4]
  3cec16: 4919         	ldr	r1, [pc, #0x64]         @ 0x3cec7c <SHOTGUN::~SHOTGUN()+0x6c>
  3cec18: 4479         	add	r1, pc
  3cec1a: 9b01         	ldr	r3, [sp, #0x4]
  3cec1c: 4a18         	ldr	r2, [pc, #0x60]         @ 0x3cec80 <SHOTGUN::~SHOTGUN()+0x70>
  3cec1e: 588a         	ldr	r2, [r1, r2]
  3cec20: 3208         	adds	r2, #0x8
  3cec22: 601a         	str	r2, [r3]
  3cec24: 9b01         	ldr	r3, [sp, #0x4]
  3cec26: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cec2a: 681b         	ldr	r3, [r3]
  3cec2c: f503 7380    	add.w	r3, r3, #0x100
  3cec30: 681b         	ldr	r3, [r3]
  3cec32: 9a01         	ldr	r2, [sp, #0x4]
  3cec34: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3cec38: 4610         	mov	r0, r2
  3cec3a: 4798         	blx	r3
  3cec3c: 9b01         	ldr	r3, [sp, #0x4]
  3cec3e: 4618         	mov	r0, r3
  3cec40: f1c1 fcf4    	bl	0x59062c <cocos2d::CCNode::removeAllChildren()> @ imm = #0x1c19e8
  3cec44: 9b01         	ldr	r3, [sp, #0x4]
  3cec46: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cec4a: 4618         	mov	r0, r3
  3cec4c: f1c9 f934    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1c9268
  3cec50: 9b01         	ldr	r3, [sp, #0x4]
  3cec52: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3cec56: 4618         	mov	r0, r3
  3cec58: f1c9 f92e    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1c925c
  3cec5c: 9b01         	ldr	r3, [sp, #0x4]
  3cec5e: 4618         	mov	r0, r3
  3cec60: f046 fac6    	bl	0x4151f0 <Weapon::~Weapon()> @ imm = #0x4658c
  3cec64: 2300         	movs	r3, #0x0
  3cec66: 2b00         	cmp	r3, #0x0
  3cec68: d002         	beq	0x3cec70 <SHOTGUN::~SHOTGUN()+0x60> @ imm = #0x4
  3cec6a: 9801         	ldr	r0, [sp, #0x4]
  3cec6c: f3b9 fa1a    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3b9434
  3cec70: 9b01         	ldr	r3, [sp, #0x4]
  3cec72: 4618         	mov	r0, r3
  3cec74: b003         	add	sp, #0xc
  3cec76: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3cec79); words below are literal-pool data ---
  3cec7a: bf00         	nop
  3cec7c: 3df0         	subs	r5, #0xf0
  3cec7e: 0056         	lsls	r6, r2, #0x1
  3cec80: de94         	udf	#0x94
  3cec82: ffff b500    	<unknown>

// ==== SHOTGUN::~SHOTGUN
//      file offset 0x3cec84 (= ELF address; Ghidra 0x3dec84), 28 bytes, Thumb-2
  3cec84: b500         	push	{lr}
  3cec86: b083         	sub	sp, #0xc
  3cec88: 9001         	str	r0, [sp, #0x4]
  3cec8a: 9801         	ldr	r0, [sp, #0x4]
  3cec8c: f7ff ffc0    	bl	0x3cec10 <SHOTGUN::~SHOTGUN()> @ imm = #-0x80
  3cec90: 9801         	ldr	r0, [sp, #0x4]
  3cec92: f3b9 fa07    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3b940e
  3cec96: 9b01         	ldr	r3, [sp, #0x4]
  3cec98: 4618         	mov	r0, r3
  3cec9a: b003         	add	sp, #0xc
  3cec9c: f85d fb04    	ldr	pc, [sp], #4

// ==== SHOTGUN::triggerPull
//      file offset 0x3ceca0 (= ELF address; Ghidra 0x3deca0), 352 bytes, Thumb-2
  3ceca0: b510         	push	{r4, lr}
  3ceca2: b088         	sub	sp, #0x20
  3ceca4: 9003         	str	r0, [sp, #0xc]
  3ceca6: 9102         	str	r1, [sp, #0x8]
  3ceca8: 4c53         	ldr	r4, [pc, #0x14c]        @ 0x3cedf8 <SHOTGUN::triggerPull(float)+0x158>
  3cecaa: 447c         	add	r4, pc
  3cecac: 9b03         	ldr	r3, [sp, #0xc]
  3cecae: ed93 7a44    	vldr	s14, [r3, #272]
  3cecb2: 9b03         	ldr	r3, [sp, #0xc]
  3cecb4: edd3 7a57    	vldr	s15, [r3, #348]
  3cecb8: eeb4 7ae7    	vcmpe.f32	s14, s15
  3cecbc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3cecc0: dd71         	ble	0x3ceda6 <SHOTGUN::triggerPull(float)+0x106> @ imm = #0xe2
  3cecc2: 9b03         	ldr	r3, [sp, #0xc]
  3cecc4: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  3cecc8: b21b         	sxth	r3, r3
  3cecca: 2b00         	cmp	r3, #0x0
  3ceccc: dd0f         	ble	0x3cecee <SHOTGUN::triggerPull(float)+0x4e> @ imm = #0x1e
  3cecce: 9b03         	ldr	r3, [sp, #0xc]
  3cecd0: 681b         	ldr	r3, [r3]
  3cecd2: f503 7333    	add.w	r3, r3, #0x2cc
  3cecd6: 681b         	ldr	r3, [r3]
  3cecd8: 9a03         	ldr	r2, [sp, #0xc]
  3cecda: 4610         	mov	r0, r2
  3cecdc: 4798         	blx	r3
  3cecde: 4603         	mov	r3, r0
  3cece0: f083 0301    	eor	r3, r3, #0x1
  3cece4: b2db         	uxtb	r3, r3
  3cece6: 2b00         	cmp	r3, #0x0
  3cece8: d001         	beq	0x3cecee <SHOTGUN::triggerPull(float)+0x4e> @ imm = #0x2
  3cecea: 2301         	movs	r3, #0x1
  3cecec: e000         	b	0x3cecf0 <SHOTGUN::triggerPull(float)+0x50> @ imm = #0x0
  3cecee: 2300         	movs	r3, #0x0
  3cecf0: 2b00         	cmp	r3, #0x0
  3cecf2: d02c         	beq	0x3ced4e <SHOTGUN::triggerPull(float)+0xae> @ imm = #0x58
  3cecf4: 9b03         	ldr	r3, [sp, #0xc]
  3cecf6: 2201         	movs	r2, #0x1
  3cecf8: f883 2180    	strb.w	r2, [r3, #0x180]
  3cecfc: 9b03         	ldr	r3, [sp, #0xc]
  3cecfe: 681b         	ldr	r3, [r3]
  3ced00: f503 7325    	add.w	r3, r3, #0x294
  3ced04: 681b         	ldr	r3, [r3]
  3ced06: 9803         	ldr	r0, [sp, #0xc]
  3ced08: 4798         	blx	r3
  3ced0a: 9b03         	ldr	r3, [sp, #0xc]
  3ced0c: 681b         	ldr	r3, [r3]
  3ced0e: f503 7342    	add.w	r3, r3, #0x308
  3ced12: 681b         	ldr	r3, [r3]
  3ced14: 9a03         	ldr	r2, [sp, #0xc]
  3ced16: 4610         	mov	r0, r2
  3ced18: 4798         	blx	r3
  3ced1a: 9b03         	ldr	r3, [sp, #0xc]
  3ced1c: 681b         	ldr	r3, [r3]
  3ced1e: f503 7343    	add.w	r3, r3, #0x30c
  3ced22: 681b         	ldr	r3, [r3]
  3ced24: 9a03         	ldr	r2, [sp, #0xc]
  3ced26: 4610         	mov	r0, r2
  3ced28: 4798         	blx	r3
  3ced2a: 9b03         	ldr	r3, [sp, #0xc]
  3ced2c: f893 3195    	ldrb.w	r3, [r3, #0x195]
  3ced30: 3301         	adds	r3, #0x1
  3ced32: b2da         	uxtb	r2, r3
  3ced34: 9b03         	ldr	r3, [sp, #0xc]
  3ced36: f883 2195    	strb.w	r2, [r3, #0x195]
  3ced3a: 9b03         	ldr	r3, [sp, #0xc]
  3ced3c: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  3ced40: b29b         	uxth	r3, r3
  3ced42: 3b00         	subs	r3, #0x0
  3ced44: b29a         	uxth	r2, r3
  3ced46: 9b03         	ldr	r3, [sp, #0xc]
  3ced48: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  3ced4c: e026         	b	0x3ced9c <SHOTGUN::triggerPull(float)+0xfc> @ imm = #0x4c
  3ced4e: 9b03         	ldr	r3, [sp, #0xc]
  3ced50: 681b         	ldr	r3, [r3]
  3ced52: f503 7333    	add.w	r3, r3, #0x2cc
  3ced56: 681b         	ldr	r3, [r3]
  3ced58: 9a03         	ldr	r2, [sp, #0xc]
  3ced5a: 4610         	mov	r0, r2
  3ced5c: 4798         	blx	r3
  3ced5e: 4603         	mov	r3, r0
  3ced60: f083 0301    	eor	r3, r3, #0x1
  3ced64: b2db         	uxtb	r3, r3
  3ced66: 2b00         	cmp	r3, #0x0
  3ced68: d018         	beq	0x3ced9c <SHOTGUN::triggerPull(float)+0xfc> @ imm = #0x30
  3ced6a: 4b24         	ldr	r3, [pc, #0x90]         @ 0x3cedfc <SHOTGUN::triggerPull(float)+0x15c>
  3ced6c: 58e3         	ldr	r3, [r4, r3]
  3ced6e: 681c         	ldr	r4, [r3]
  3ced70: 9b03         	ldr	r3, [sp, #0xc]
  3ced72: 681b         	ldr	r3, [r3]
  3ced74: f503 7348    	add.w	r3, r3, #0x320
  3ced78: 681b         	ldr	r3, [r3]
  3ced7a: 9a03         	ldr	r2, [sp, #0xc]
  3ced7c: a904         	add	r1, sp, #0x10
  3ced7e: 4608         	mov	r0, r1
  3ced80: 4611         	mov	r1, r2
  3ced82: 4798         	blx	r3
  3ced84: 466b         	mov	r3, sp
  3ced86: aa06         	add	r2, sp, #0x18
  3ced88: e892 0003    	ldm.w	r2, {r0, r1}
  3ced8c: e883 0003    	stm.w	r3, {r0, r1}
  3ced90: ab04         	add	r3, sp, #0x10
  3ced92: cb0c         	ldm	r3, {r2, r3}
  3ced94: 4620         	mov	r0, r4
  3ced96: 2100         	movs	r1, #0x0
  3ced98: f029 f92e    	bl	0x3f7ff8 <Sound::playSoundPosition(int, cpVect)> @ imm = #0x2925c
  3ced9c: 9b03         	ldr	r3, [sp, #0xc]
  3ced9e: f04f 0200    	mov.w	r2, #0x0
  3ceda2: f8c3 2110    	str.w	r2, [r3, #0x110]
  3ceda6: 9b03         	ldr	r3, [sp, #0xc]
  3ceda8: 681b         	ldr	r3, [r3]
  3cedaa: f503 7333    	add.w	r3, r3, #0x2cc
  3cedae: 681b         	ldr	r3, [r3]
  3cedb0: 9a03         	ldr	r2, [sp, #0xc]
  3cedb2: 4610         	mov	r0, r2
  3cedb4: 4798         	blx	r3
  3cedb6: 4603         	mov	r3, r0
  3cedb8: f083 0301    	eor	r3, r3, #0x1
  3cedbc: b2db         	uxtb	r3, r3
  3cedbe: 2b00         	cmp	r3, #0x0
  3cedc0: d00c         	beq	0x3ceddc <SHOTGUN::triggerPull(float)+0x13c> @ imm = #0x18
  3cedc2: 9b03         	ldr	r3, [sp, #0xc]
  3cedc4: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  3cedc8: 2b00         	cmp	r3, #0x0
  3cedca: d107         	bne	0x3ceddc <SHOTGUN::triggerPull(float)+0x13c> @ imm = #0xe
  3cedcc: 9b03         	ldr	r3, [sp, #0xc]
  3cedce: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  3cedd2: b21b         	sxth	r3, r3
  3cedd4: 2b00         	cmp	r3, #0x0
  3cedd6: dd01         	ble	0x3ceddc <SHOTGUN::triggerPull(float)+0x13c> @ imm = #0x2
  3cedd8: 2301         	movs	r3, #0x1
  3cedda: e000         	b	0x3cedde <SHOTGUN::triggerPull(float)+0x13e> @ imm = #0x0
  3ceddc: 2300         	movs	r3, #0x0
  3cedde: 2b00         	cmp	r3, #0x0
  3cede0: d008         	beq	0x3cedf4 <SHOTGUN::triggerPull(float)+0x154> @ imm = #0x10
  3cede2: 9b03         	ldr	r3, [sp, #0xc]
  3cede4: 2201         	movs	r2, #0x1
  3cede6: f883 2181    	strb.w	r2, [r3, #0x181]
  3cedea: 9b03         	ldr	r3, [sp, #0xc]
  3cedec: f04f 0200    	mov.w	r2, #0x0
  3cedf0: f8c3 2158    	str.w	r2, [r3, #0x158]
  3cedf4: b008         	add	sp, #0x20
  3cedf6: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3cedf7); words below are literal-pool data ---
  3cedf8: 3d5e         	subs	r5, #0x5e
  3cedfa: 0056         	lsls	r6, r2, #0x1
  3cedfc: d730         	bvc	0x3cee60 <SHOTGUN::updateItemStep(float)+0x60> @ imm = #0x60
  3cedfe: ffff b500    	<unknown>

// ==== SHOTGUN::updateItemStep
//      file offset 0x3cee00 (= ELF address; Ghidra 0x3dee00), 282 bytes, Thumb-2
  3cee00: b500         	push	{lr}
  3cee02: ed2d 8b02    	vpush	{d8}
  3cee06: b085         	sub	sp, #0x14
  3cee08: 9001         	str	r0, [sp, #0x4]
  3cee0a: 9100         	str	r1, [sp]
  3cee0c: 9b01         	ldr	r3, [sp, #0x4]
  3cee0e: ed93 7a56    	vldr	s14, [r3, #344]
  3cee12: eddd 7a00    	vldr	s15, [sp]
  3cee16: ee77 7a27    	vadd.f32	s15, s14, s15
  3cee1a: 9b01         	ldr	r3, [sp, #0x4]
  3cee1c: edc3 7a56    	vstr	s15, [r3, #344]
  3cee20: 9b01         	ldr	r3, [sp, #0x4]
  3cee22: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3cee26: 681b         	ldr	r3, [r3]
  3cee28: 3390         	adds	r3, #0x90
  3cee2a: 681b         	ldr	r3, [r3]
  3cee2c: 9a01         	ldr	r2, [sp, #0x4]
  3cee2e: f8d2 11f0    	ldr.w	r1, [r2, #0x1f0]
  3cee32: 9a01         	ldr	r2, [sp, #0x4]
  3cee34: f892 2180    	ldrb.w	r2, [r2, #0x180]
  3cee38: 4608         	mov	r0, r1
  3cee3a: 4611         	mov	r1, r2
  3cee3c: 4798         	blx	r3
  3cee3e: 9b01         	ldr	r3, [sp, #0x4]
  3cee40: 681b         	ldr	r3, [r3]
  3cee42: f503 7315    	add.w	r3, r3, #0x254
  3cee46: 681b         	ldr	r3, [r3]
  3cee48: 9a01         	ldr	r2, [sp, #0x4]
  3cee4a: 4610         	mov	r0, r2
  3cee4c: 9900         	ldr	r1, [sp]
  3cee4e: 4798         	blx	r3
  3cee50: 9b01         	ldr	r3, [sp, #0x4]
  3cee52: f893 3181    	ldrb.w	r3, [r3, #0x181]
  3cee56: 2b00         	cmp	r3, #0x0
  3cee58: d013         	beq	0x3cee82 <SHOTGUN::updateItemStep(float)+0x82> @ imm = #0x26
  3cee5a: 9b01         	ldr	r3, [sp, #0x4]
  3cee5c: ed93 8a56    	vldr	s16, [r3, #344]
  3cee60: 9b01         	ldr	r3, [sp, #0x4]
  3cee62: 681b         	ldr	r3, [r3]
  3cee64: f503 732e    	add.w	r3, r3, #0x2b8
  3cee68: 681b         	ldr	r3, [r3]
  3cee6a: 9a01         	ldr	r2, [sp, #0x4]
  3cee6c: 4610         	mov	r0, r2
  3cee6e: 4798         	blx	r3
  3cee70: ee07 0a90    	vmov	s15, r0
  3cee74: eeb4 8ae7    	vcmpe.f32	s16, s15
  3cee78: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3cee7c: dd01         	ble	0x3cee82 <SHOTGUN::updateItemStep(float)+0x82> @ imm = #0x2
  3cee7e: 2301         	movs	r3, #0x1
  3cee80: e000         	b	0x3cee84 <SHOTGUN::updateItemStep(float)+0x84> @ imm = #0x0
  3cee82: 2300         	movs	r3, #0x0
  3cee84: 2b00         	cmp	r3, #0x0
  3cee86: d043         	beq	0x3cef10 <SHOTGUN::updateItemStep(float)+0x110> @ imm = #0x86
  3cee88: 9b01         	ldr	r3, [sp, #0x4]
  3cee8a: 2200         	movs	r2, #0x0
  3cee8c: f883 2181    	strb.w	r2, [r3, #0x181]
  3cee90: 9b01         	ldr	r3, [sp, #0x4]
  3cee92: f04f 0200    	mov.w	r2, #0x0
  3cee96: f8c3 2110    	str.w	r2, [r3, #0x110]
  3cee9a: 9b01         	ldr	r3, [sp, #0x4]
  3cee9c: 681b         	ldr	r3, [r3]
  3cee9e: f503 732d    	add.w	r3, r3, #0x2b4
  3ceea2: 681b         	ldr	r3, [r3]
  3ceea4: 9a01         	ldr	r2, [sp, #0x4]
  3ceea6: 4610         	mov	r0, r2
  3ceea8: 4798         	blx	r3
  3ceeaa: 4602         	mov	r2, r0
  3ceeac: 9b01         	ldr	r3, [sp, #0x4]
  3ceeae: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  3ceeb2: b21b         	sxth	r3, r3
  3ceeb4: 1ad3         	subs	r3, r2, r3
  3ceeb6: 9303         	str	r3, [sp, #0xc]
  3ceeb8: 9b01         	ldr	r3, [sp, #0x4]
  3ceeba: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  3ceebe: b29a         	uxth	r2, r3
  3ceec0: 9b03         	ldr	r3, [sp, #0xc]
  3ceec2: b29b         	uxth	r3, r3
  3ceec4: 1ad3         	subs	r3, r2, r3
  3ceec6: b29b         	uxth	r3, r3
  3ceec8: b29a         	uxth	r2, r3
  3ceeca: 9b01         	ldr	r3, [sp, #0x4]
  3ceecc: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  3ceed0: 9b01         	ldr	r3, [sp, #0x4]
  3ceed2: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  3ceed6: b29a         	uxth	r2, r3
  3ceed8: 9b03         	ldr	r3, [sp, #0xc]
  3ceeda: b29b         	uxth	r3, r3
  3ceedc: 4413         	add	r3, r2
  3ceede: b29a         	uxth	r2, r3
  3ceee0: 9b01         	ldr	r3, [sp, #0x4]
  3ceee2: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  3ceee6: b21b         	sxth	r3, r3
  3ceee8: ea03 73e3    	and.w	r3, r3, r3, asr #31
  3ceeec: b29b         	uxth	r3, r3
  3ceeee: b29b         	uxth	r3, r3
  3ceef0: 4413         	add	r3, r2
  3ceef2: b29b         	uxth	r3, r3
  3ceef4: b29a         	uxth	r2, r3
  3ceef6: 9b01         	ldr	r3, [sp, #0x4]
  3ceef8: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  3ceefc: 9b01         	ldr	r3, [sp, #0x4]
  3ceefe: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  3cef02: b21b         	sxth	r3, r3
  3cef04: ea23 73e3    	bic.w	r3, r3, r3, asr #31
  3cef08: b29a         	uxth	r2, r3
  3cef0a: 9b01         	ldr	r3, [sp, #0x4]
  3cef0c: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  3cef10: b005         	add	sp, #0x14
  3cef12: ecbd 8b02    	vpop	{d8}
  3cef16: f85d fb04    	ldr	pc, [sp], #4

// ==== SHOTGUN::updateRemoteItemStep
//      file offset 0x3cef1c (= ELF address; Ghidra 0x3def1c), 94 bytes, Thumb-2
  3cef1c: b500         	push	{lr}
  3cef1e: b083         	sub	sp, #0xc
  3cef20: 9001         	str	r0, [sp, #0x4]
  3cef22: 9100         	str	r1, [sp]
  3cef24: 9b01         	ldr	r3, [sp, #0x4]
  3cef26: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3cef2a: 681b         	ldr	r3, [r3]
  3cef2c: 3390         	adds	r3, #0x90
  3cef2e: 681b         	ldr	r3, [r3]
  3cef30: 9a01         	ldr	r2, [sp, #0x4]
  3cef32: f8d2 11f0    	ldr.w	r1, [r2, #0x1f0]
  3cef36: 9a01         	ldr	r2, [sp, #0x4]
  3cef38: f892 2180    	ldrb.w	r2, [r2, #0x180]
  3cef3c: 4608         	mov	r0, r1
  3cef3e: 4611         	mov	r1, r2
  3cef40: 4798         	blx	r3
  3cef42: 9b01         	ldr	r3, [sp, #0x4]
  3cef44: 681b         	ldr	r3, [r3]
  3cef46: f503 7315    	add.w	r3, r3, #0x254
  3cef4a: 681b         	ldr	r3, [r3]
  3cef4c: 9a01         	ldr	r2, [sp, #0x4]
  3cef4e: 4610         	mov	r0, r2
  3cef50: 9900         	ldr	r1, [sp]
  3cef52: 4798         	blx	r3
  3cef54: 9b01         	ldr	r3, [sp, #0x4]
  3cef56: f893 2194    	ldrb.w	r2, [r3, #0x194]
  3cef5a: 9b01         	ldr	r3, [sp, #0x4]
  3cef5c: f893 3195    	ldrb.w	r3, [r3, #0x195]
  3cef60: 429a         	cmp	r2, r3
  3cef62: d007         	beq	0x3cef74 <SHOTGUN::updateRemoteItemStep(float)+0x58> @ imm = #0xe
  3cef64: 9b01         	ldr	r3, [sp, #0x4]
  3cef66: 681b         	ldr	r3, [r3]
  3cef68: f503 7318    	add.w	r3, r3, #0x260
  3cef6c: 681b         	ldr	r3, [r3]
  3cef6e: 9801         	ldr	r0, [sp, #0x4]
  3cef70: 9900         	ldr	r1, [sp]
  3cef72: 4798         	blx	r3
  3cef74: b003         	add	sp, #0xc
  3cef76: f85d fb04    	ldr	pc, [sp], #4

// ==== SHOTGUN::remoteTriggerPull
//      file offset 0x3cef7c (= ELF address; Ghidra 0x3def7c), 116 bytes, Thumb-2
  3cef7c: b500         	push	{lr}
  3cef7e: b083         	sub	sp, #0xc
  3cef80: 9001         	str	r0, [sp, #0x4]
  3cef82: 9100         	str	r1, [sp]
  3cef84: 9b01         	ldr	r3, [sp, #0x4]
  3cef86: ed93 7a44    	vldr	s14, [r3, #272]
  3cef8a: 9b01         	ldr	r3, [sp, #0x4]
  3cef8c: edd3 7a57    	vldr	s15, [r3, #348]
  3cef90: eeb4 7ae7    	vcmpe.f32	s14, s15
  3cef94: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3cef98: dd27         	ble	0x3cefea <SHOTGUN::remoteTriggerPull(float)+0x6e> @ imm = #0x4e
  3cef9a: 9b01         	ldr	r3, [sp, #0x4]
  3cef9c: f04f 0200    	mov.w	r2, #0x0
  3cefa0: f8c3 2110    	str.w	r2, [r3, #0x110]
  3cefa4: 9b01         	ldr	r3, [sp, #0x4]
  3cefa6: 2201         	movs	r2, #0x1
  3cefa8: f883 2180    	strb.w	r2, [r3, #0x180]
  3cefac: 9b01         	ldr	r3, [sp, #0x4]
  3cefae: 681b         	ldr	r3, [r3]
  3cefb0: f503 7325    	add.w	r3, r3, #0x294
  3cefb4: 681b         	ldr	r3, [r3]
  3cefb6: 9801         	ldr	r0, [sp, #0x4]
  3cefb8: 4798         	blx	r3
  3cefba: 9b01         	ldr	r3, [sp, #0x4]
  3cefbc: 681b         	ldr	r3, [r3]
  3cefbe: f503 7342    	add.w	r3, r3, #0x308
  3cefc2: 681b         	ldr	r3, [r3]
  3cefc4: 9a01         	ldr	r2, [sp, #0x4]
  3cefc6: 4610         	mov	r0, r2
  3cefc8: 4798         	blx	r3
  3cefca: 9b01         	ldr	r3, [sp, #0x4]
  3cefcc: 681b         	ldr	r3, [r3]
  3cefce: f503 7343    	add.w	r3, r3, #0x30c
  3cefd2: 681b         	ldr	r3, [r3]
  3cefd4: 9a01         	ldr	r2, [sp, #0x4]
  3cefd6: 4610         	mov	r0, r2
  3cefd8: 4798         	blx	r3
  3cefda: 9b01         	ldr	r3, [sp, #0x4]
  3cefdc: f893 3195    	ldrb.w	r3, [r3, #0x195]
  3cefe0: 3301         	adds	r3, #0x1
  3cefe2: b2da         	uxtb	r2, r3
  3cefe4: 9b01         	ldr	r3, [sp, #0x4]
  3cefe6: f883 2195    	strb.w	r2, [r3, #0x195]
  3cefea: b003         	add	sp, #0xc
  3cefec: f85d fb04    	ldr	pc, [sp], #4

// ==== SHOTGUN::getShellPoint
//      file offset 0x3ceff0 (= ELF address; Ghidra 0x3deff0), 204 bytes, Thumb-2
  3ceff0: b510         	push	{r4, lr}
  3ceff2: b08e         	sub	sp, #0x38
  3ceff4: 9001         	str	r0, [sp, #0x4]
  3ceff6: 9100         	str	r1, [sp]
  3ceff8: 4c2e         	ldr	r4, [pc, #0xb8]         @ 0x3cf0b4 <SHOTGUN::getShellPoint()+0xc4>
  3ceffa: 447c         	add	r4, pc
  3ceffc: ab02         	add	r3, sp, #0x8
  3ceffe: 4618         	mov	r0, r3
  3cf000: f04f 0100    	mov.w	r1, #0x0
  3cf004: f2c4 2120    	movt	r1, #0x4220
  3cf008: f04f 0200    	mov.w	r2, #0x0
  3cf00c: f2c4 12a0    	movt	r2, #0x41a0
  3cf010: f1c3 fe6e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1c3cdc
  3cf014: 9b00         	ldr	r3, [sp]
  3cf016: 681b         	ldr	r3, [r3]
  3cf018: 3350         	adds	r3, #0x50
  3cf01a: 681b         	ldr	r3, [r3]
  3cf01c: 9a00         	ldr	r2, [sp]
  3cf01e: 4610         	mov	r0, r2
  3cf020: 4798         	blx	r3
  3cf022: 4602         	mov	r2, r0
  3cf024: a906         	add	r1, sp, #0x18
  3cf026: ab02         	add	r3, sp, #0x8
  3cf028: 4608         	mov	r0, r1
  3cf02a: 4611         	mov	r1, r2
  3cf02c: 461a         	mov	r2, r3
  3cf02e: f7fe fd45    	bl	0x3cdabc <SAWGUN::setRight(bool)+0x1a8> @ imm = #-0x1576
  3cf032: 9b00         	ldr	r3, [sp]
  3cf034: 681b         	ldr	r3, [r3]
  3cf036: f503 73c2    	add.w	r3, r3, #0x184
  3cf03a: 681b         	ldr	r3, [r3]
  3cf03c: 9a00         	ldr	r2, [sp]
  3cf03e: a908         	add	r1, sp, #0x20
  3cf040: 4608         	mov	r0, r1
  3cf042: 4611         	mov	r1, r2
  3cf044: 4798         	blx	r3
  3cf046: a904         	add	r1, sp, #0x10
  3cf048: aa06         	add	r2, sp, #0x18
  3cf04a: ab08         	add	r3, sp, #0x20
  3cf04c: 4608         	mov	r0, r1
  3cf04e: 4611         	mov	r1, r2
  3cf050: 461a         	mov	r2, r3
  3cf052: f1c3 f967    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x1c32ce
  3cf056: 4b18         	ldr	r3, [pc, #0x60]         @ 0x3cf0b8 <SHOTGUN::getShellPoint()+0xc8>
  3cf058: 58e3         	ldr	r3, [r4, r3]
  3cf05a: 681b         	ldr	r3, [r3]
  3cf05c: 681b         	ldr	r3, [r3]
  3cf05e: f503 73c4    	add.w	r3, r3, #0x188
  3cf062: 681b         	ldr	r3, [r3]
  3cf064: 4a14         	ldr	r2, [pc, #0x50]         @ 0x3cf0b8 <SHOTGUN::getShellPoint()+0xc8>
  3cf066: 58a2         	ldr	r2, [r4, r2]
  3cf068: 6812         	ldr	r2, [r2]
  3cf06a: a908         	add	r1, sp, #0x20
  3cf06c: 4608         	mov	r0, r1
  3cf06e: 4611         	mov	r1, r2
  3cf070: 4798         	blx	r3
  3cf072: a906         	add	r1, sp, #0x18
  3cf074: aa04         	add	r2, sp, #0x10
  3cf076: ab08         	add	r3, sp, #0x20
  3cf078: 4608         	mov	r0, r1
  3cf07a: 4611         	mov	r1, r2
  3cf07c: 461a         	mov	r2, r3
  3cf07e: f1c3 f951    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x1c32a2
  3cf082: aa04         	add	r2, sp, #0x10
  3cf084: ab06         	add	r3, sp, #0x18
  3cf086: 4610         	mov	r0, r2
  3cf088: 4619         	mov	r1, r3
  3cf08a: f1c3 fe5f    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x1c3cbe
  3cf08e: eddd 7a04    	vldr	s15, [sp, #16]
  3cf092: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3cf096: eddd 7a05    	vldr	s15, [sp, #20]
  3cf09a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3cf09e: 9b01         	ldr	r3, [sp, #0x4]
  3cf0a0: 4618         	mov	r0, r3
  3cf0a2: eeb0 0b46    	vmov.f64	d0, d6
  3cf0a6: eeb0 1b47    	vmov.f64	d1, d7
  3cf0aa: f7fe fd17    	bl	0x3cdadc <SAWGUN::setRight(bool)+0x1c8> @ imm = #-0x15d2
  3cf0ae: 9801         	ldr	r0, [sp, #0x4]
  3cf0b0: b00e         	add	sp, #0x38
  3cf0b2: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3cf0b3); words below are literal-pool data ---
  3cf0b4: 3a0e         	subs	r2, #0xe
  3cf0b6: 0056         	lsls	r6, r2, #0x1
  3cf0b8: d744         	bvc	0x3cf144 <SHOTGUN::setPrimaryConfiguration()+0x40> @ imm = #0x88
  3cf0ba: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== SHOTGUN::playSound
//      file offset 0x3cf0bc (= ELF address; Ghidra 0x3df0bc), 72 bytes, Thumb-2
  3cf0bc: b510         	push	{r4, lr}
  3cf0be: b088         	sub	sp, #0x20
  3cf0c0: 9003         	str	r0, [sp, #0xc]
  3cf0c2: 4a0e         	ldr	r2, [pc, #0x38]         @ 0x3cf0fc <SHOTGUN::playSound()+0x40>
  3cf0c4: 447a         	add	r2, pc
  3cf0c6: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x3cf100 <SHOTGUN::playSound()+0x44>
  3cf0c8: 58d3         	ldr	r3, [r2, r3]
  3cf0ca: 681c         	ldr	r4, [r3]
  3cf0cc: 9b03         	ldr	r3, [sp, #0xc]
  3cf0ce: 681b         	ldr	r3, [r3]
  3cf0d0: f503 7348    	add.w	r3, r3, #0x320
  3cf0d4: 681b         	ldr	r3, [r3]
  3cf0d6: 9a03         	ldr	r2, [sp, #0xc]
  3cf0d8: a904         	add	r1, sp, #0x10
  3cf0da: 4608         	mov	r0, r1
  3cf0dc: 4611         	mov	r1, r2
  3cf0de: 4798         	blx	r3
  3cf0e0: 466b         	mov	r3, sp
  3cf0e2: aa06         	add	r2, sp, #0x18
  3cf0e4: e892 0003    	ldm.w	r2, {r0, r1}
  3cf0e8: e883 0003    	stm.w	r3, {r0, r1}
  3cf0ec: ab04         	add	r3, sp, #0x10
  3cf0ee: cb0c         	ldm	r3, {r2, r3}
  3cf0f0: 4620         	mov	r0, r4
  3cf0f2: 2115         	movs	r1, #0x15
  3cf0f4: f028 ff80    	bl	0x3f7ff8 <Sound::playSoundPosition(int, cpVect)> @ imm = #0x28f00
  3cf0f8: b008         	add	sp, #0x20
  3cf0fa: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3cf0fb); words below are literal-pool data ---
  3cf0fc: 3944         	subs	r1, #0x44
  3cf0fe: 0056         	lsls	r6, r2, #0x1
  3cf100: d730         	bvc	0x3cf164 <SHOTGUN::setPrimaryConfiguration()+0x60> @ imm = #0x60
  3cf102: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== SHOTGUN::setPrimaryConfiguration
//      file offset 0x3cf104 (= ELF address; Ghidra 0x3df104), 324 bytes, Thumb-2
  3cf104: b530         	push	{r4, r5, lr}
  3cf106: b085         	sub	sp, #0x14
  3cf108: 9001         	str	r0, [sp, #0x4]
  3cf10a: 9b01         	ldr	r3, [sp, #0x4]
  3cf10c: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3cf110: 2b00         	cmp	r3, #0x0
  3cf112: d019         	beq	0x3cf148 <SHOTGUN::setPrimaryConfiguration()+0x44> @ imm = #0x32
  3cf114: 9b01         	ldr	r3, [sp, #0x4]
  3cf116: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  3cf11a: 4b4a         	ldr	r3, [pc, #0x128]        @ 0x3cf244 <SHOTGUN::setPrimaryConfiguration()+0x140>
  3cf11c: 447b         	add	r3, pc
  3cf11e: ed93 6b00    	vldr	d6, [r3]
  3cf122: ed93 7b02    	vldr	d7, [r3, #8]
  3cf126: 4610         	mov	r0, r2
  3cf128: eeb0 0b46    	vmov.f64	d0, d6
  3cf12c: eeb0 1b47    	vmov.f64	d1, d7
  3cf130: f7fe fce8    	bl	0x3cdb04 <SAWGUN::setRight(bool)+0x1f0> @ imm = #-0x1630
  3cf134: 9b01         	ldr	r3, [sp, #0x4]
  3cf136: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3cf13a: 4618         	mov	r0, r3
  3cf13c: f04f 0200    	mov.w	r2, #0x0
  3cf140: f04f 0300    	mov.w	r3, #0x0
  3cf144: f304 f825    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x30404a
  3cf148: 9b01         	ldr	r3, [sp, #0x4]
  3cf14a: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cf14e: 681b         	ldr	r3, [r3]
  3cf150: 334c         	adds	r3, #0x4c
  3cf152: 681c         	ldr	r4, [r3]
  3cf154: 9b01         	ldr	r3, [sp, #0x4]
  3cf156: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  3cf15a: ab02         	add	r3, sp, #0x8
  3cf15c: 4618         	mov	r0, r3
  3cf15e: f04f 0100    	mov.w	r1, #0x0
  3cf162: f2c4 01a0    	movt	r1, #0x40a0
  3cf166: f04f 0200    	mov.w	r2, #0x0
  3cf16a: f2cc 02a0    	movt	r2, #0xc0a0
  3cf16e: f1c3 fdbf    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1c3b7e
  3cf172: ab02         	add	r3, sp, #0x8
  3cf174: 4628         	mov	r0, r5
  3cf176: 4619         	mov	r1, r3
  3cf178: 47a0         	blx	r4
  3cf17a: 9b01         	ldr	r3, [sp, #0x4]
  3cf17c: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cf180: 681b         	ldr	r3, [r3]
  3cf182: 337c         	adds	r3, #0x7c
  3cf184: 681c         	ldr	r4, [r3]
  3cf186: 9b01         	ldr	r3, [sp, #0x4]
  3cf188: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  3cf18c: ab02         	add	r3, sp, #0x8
  3cf18e: 4618         	mov	r0, r3
  3cf190: f64c 41cd    	movw	r1, #0xcccd
  3cf194: f6cb 51cc    	movt	r1, #0xbdcc
  3cf198: f04f 527c    	mov.w	r2, #0x3f000000
  3cf19c: f1c3 fda8    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1c3b50
  3cf1a0: ab02         	add	r3, sp, #0x8
  3cf1a2: 4628         	mov	r0, r5
  3cf1a4: 4619         	mov	r1, r3
  3cf1a6: 47a0         	blx	r4
  3cf1a8: 9b01         	ldr	r3, [sp, #0x4]
  3cf1aa: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cf1ae: 681b         	ldr	r3, [r3]
  3cf1b0: 3398         	adds	r3, #0x98
  3cf1b2: 681b         	ldr	r3, [r3]
  3cf1b4: 9a01         	ldr	r2, [sp, #0x4]
  3cf1b6: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3cf1ba: 4610         	mov	r0, r2
  3cf1bc: f04f 0100    	mov.w	r1, #0x0
  3cf1c0: f2cc 11c8    	movt	r1, #0xc1c8
  3cf1c4: 4798         	blx	r3
  3cf1c6: 9b01         	ldr	r3, [sp, #0x4]
  3cf1c8: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cf1cc: 681b         	ldr	r3, [r3]
  3cf1ce: 3340         	adds	r3, #0x40
  3cf1d0: 681b         	ldr	r3, [r3]
  3cf1d2: 9a01         	ldr	r2, [sp, #0x4]
  3cf1d4: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3cf1d8: 4610         	mov	r0, r2
  3cf1da: f04f 517e    	mov.w	r1, #0x3f800000
  3cf1de: 4798         	blx	r3
  3cf1e0: 9b01         	ldr	r3, [sp, #0x4]
  3cf1e2: 681b         	ldr	r3, [r3]
  3cf1e4: 334c         	adds	r3, #0x4c
  3cf1e6: 681c         	ldr	r4, [r3]
  3cf1e8: 9d01         	ldr	r5, [sp, #0x4]
  3cf1ea: ab02         	add	r3, sp, #0x8
  3cf1ec: 4618         	mov	r0, r3
  3cf1ee: f04f 0100    	mov.w	r1, #0x0
  3cf1f2: f04f 0200    	mov.w	r2, #0x0
  3cf1f6: f1c3 fd7b    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1c3af6
  3cf1fa: ab02         	add	r3, sp, #0x8
  3cf1fc: 4628         	mov	r0, r5
  3cf1fe: 4619         	mov	r1, r3
  3cf200: 47a0         	blx	r4
  3cf202: 9b01         	ldr	r3, [sp, #0x4]
  3cf204: 681b         	ldr	r3, [r3]
  3cf206: 3340         	adds	r3, #0x40
  3cf208: 681b         	ldr	r3, [r3]
  3cf20a: 9a01         	ldr	r2, [sp, #0x4]
  3cf20c: 4610         	mov	r0, r2
  3cf20e: f04f 517e    	mov.w	r1, #0x3f800000
  3cf212: 4798         	blx	r3
  3cf214: 9b01         	ldr	r3, [sp, #0x4]
  3cf216: 681b         	ldr	r3, [r3]
  3cf218: 3398         	adds	r3, #0x98
  3cf21a: 681b         	ldr	r3, [r3]
  3cf21c: 9a01         	ldr	r2, [sp, #0x4]
  3cf21e: 4610         	mov	r0, r2
  3cf220: f04f 0100    	mov.w	r1, #0x0
  3cf224: 4798         	blx	r3
  3cf226: 9b01         	ldr	r3, [sp, #0x4]
  3cf228: 2200         	movs	r2, #0x0
  3cf22a: f883 2195    	strb.w	r2, [r3, #0x195]
  3cf22e: 9b01         	ldr	r3, [sp, #0x4]
  3cf230: 2200         	movs	r2, #0x0
  3cf232: f883 2194    	strb.w	r2, [r3, #0x194]
  3cf236: 9b01         	ldr	r3, [sp, #0x4]
  3cf238: f04f 0200    	mov.w	r2, #0x0
  3cf23c: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  3cf240: b005         	add	sp, #0x14
  3cf242: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3cf243); words below are literal-pool data ---
  3cf244: 7cb8         	ldrb	r0, [r7, #0x12]
  3cf246: 0040         	lsls	r0, r0, #0x1

// ==== SHOTGUN::setSecondaryConfiguration
//      file offset 0x3cf248 (= ELF address; Ghidra 0x3df248), 340 bytes, Thumb-2
  3cf248: b530         	push	{r4, r5, lr}
  3cf24a: b085         	sub	sp, #0x14
  3cf24c: 9001         	str	r0, [sp, #0x4]
  3cf24e: 9b01         	ldr	r3, [sp, #0x4]
  3cf250: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3cf254: 2b00         	cmp	r3, #0x0
  3cf256: d019         	beq	0x3cf28c <SHOTGUN::setSecondaryConfiguration()+0x44> @ imm = #0x32
  3cf258: 9b01         	ldr	r3, [sp, #0x4]
  3cf25a: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  3cf25e: 4b4e         	ldr	r3, [pc, #0x138]        @ 0x3cf398 <SHOTGUN::setSecondaryConfiguration()+0x150>
  3cf260: 447b         	add	r3, pc
  3cf262: ed93 6b00    	vldr	d6, [r3]
  3cf266: ed93 7b02    	vldr	d7, [r3, #8]
  3cf26a: 4610         	mov	r0, r2
  3cf26c: eeb0 0b46    	vmov.f64	d0, d6
  3cf270: eeb0 1b47    	vmov.f64	d1, d7
  3cf274: f7fe fc46    	bl	0x3cdb04 <SAWGUN::setRight(bool)+0x1f0> @ imm = #-0x1774
  3cf278: 9b01         	ldr	r3, [sp, #0x4]
  3cf27a: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3cf27e: 4618         	mov	r0, r3
  3cf280: f04f 0200    	mov.w	r2, #0x0
  3cf284: f04f 0300    	mov.w	r3, #0x0
  3cf288: f303 ff83    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x303f06
  3cf28c: 9b01         	ldr	r3, [sp, #0x4]
  3cf28e: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cf292: 681b         	ldr	r3, [r3]
  3cf294: 334c         	adds	r3, #0x4c
  3cf296: 681c         	ldr	r4, [r3]
  3cf298: 9b01         	ldr	r3, [sp, #0x4]
  3cf29a: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  3cf29e: ab02         	add	r3, sp, #0x8
  3cf2a0: 4618         	mov	r0, r3
  3cf2a2: f04f 0100    	mov.w	r1, #0x0
  3cf2a6: f2cc 1120    	movt	r1, #0xc120
  3cf2aa: f04f 0200    	mov.w	r2, #0x0
  3cf2ae: f1c3 fd1f    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1c3a3e
  3cf2b2: ab02         	add	r3, sp, #0x8
  3cf2b4: 4628         	mov	r0, r5
  3cf2b6: 4619         	mov	r1, r3
  3cf2b8: 47a0         	blx	r4
  3cf2ba: 9b01         	ldr	r3, [sp, #0x4]
  3cf2bc: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cf2c0: 681b         	ldr	r3, [r3]
  3cf2c2: 337c         	adds	r3, #0x7c
  3cf2c4: 681c         	ldr	r4, [r3]
  3cf2c6: 9b01         	ldr	r3, [sp, #0x4]
  3cf2c8: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  3cf2cc: ab02         	add	r3, sp, #0x8
  3cf2ce: 4618         	mov	r0, r3
  3cf2d0: f04f 517c    	mov.w	r1, #0x3f000000
  3cf2d4: f04f 527c    	mov.w	r2, #0x3f000000
  3cf2d8: f1c3 fd0a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1c3a14
  3cf2dc: ab02         	add	r3, sp, #0x8
  3cf2de: 4628         	mov	r0, r5
  3cf2e0: 4619         	mov	r1, r3
  3cf2e2: 47a0         	blx	r4
  3cf2e4: 9b01         	ldr	r3, [sp, #0x4]
  3cf2e6: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cf2ea: 681b         	ldr	r3, [r3]
  3cf2ec: 3398         	adds	r3, #0x98
  3cf2ee: 681b         	ldr	r3, [r3]
  3cf2f0: 9a01         	ldr	r2, [sp, #0x4]
  3cf2f2: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3cf2f6: 4610         	mov	r0, r2
  3cf2f8: f04f 0100    	mov.w	r1, #0x0
  3cf2fc: f2c4 2134    	movt	r1, #0x4234
  3cf300: 4798         	blx	r3
  3cf302: 9b01         	ldr	r3, [sp, #0x4]
  3cf304: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cf308: 681b         	ldr	r3, [r3]
  3cf30a: 3340         	adds	r3, #0x40
  3cf30c: 681b         	ldr	r3, [r3]
  3cf30e: 9a01         	ldr	r2, [sp, #0x4]
  3cf310: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3cf314: 4610         	mov	r0, r2
  3cf316: f04f 517e    	mov.w	r1, #0x3f800000
  3cf31a: 4798         	blx	r3
  3cf31c: 9b01         	ldr	r3, [sp, #0x4]
  3cf31e: 681b         	ldr	r3, [r3]
  3cf320: 334c         	adds	r3, #0x4c
  3cf322: 681c         	ldr	r4, [r3]
  3cf324: 9d01         	ldr	r5, [sp, #0x4]
  3cf326: ab02         	add	r3, sp, #0x8
  3cf328: 4618         	mov	r0, r3
  3cf32a: f04f 0100    	mov.w	r1, #0x0
  3cf32e: f04f 0200    	mov.w	r2, #0x0
  3cf332: f1c3 fcdd    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1c39ba
  3cf336: ab02         	add	r3, sp, #0x8
  3cf338: 4628         	mov	r0, r5
  3cf33a: 4619         	mov	r1, r3
  3cf33c: 47a0         	blx	r4
  3cf33e: 9b01         	ldr	r3, [sp, #0x4]
  3cf340: 681b         	ldr	r3, [r3]
  3cf342: 3340         	adds	r3, #0x40
  3cf344: 681b         	ldr	r3, [r3]
  3cf346: 9a01         	ldr	r2, [sp, #0x4]
  3cf348: 4610         	mov	r0, r2
  3cf34a: f04f 517e    	mov.w	r1, #0x3f800000
  3cf34e: 4798         	blx	r3
  3cf350: 9b01         	ldr	r3, [sp, #0x4]
  3cf352: 681b         	ldr	r3, [r3]
  3cf354: 3398         	adds	r3, #0x98
  3cf356: 681b         	ldr	r3, [r3]
  3cf358: 9a01         	ldr	r2, [sp, #0x4]
  3cf35a: 4610         	mov	r0, r2
  3cf35c: f04f 0100    	mov.w	r1, #0x0
  3cf360: 4798         	blx	r3
  3cf362: 9b01         	ldr	r3, [sp, #0x4]
  3cf364: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3cf368: 681b         	ldr	r3, [r3]
  3cf36a: 3390         	adds	r3, #0x90
  3cf36c: 681b         	ldr	r3, [r3]
  3cf36e: 9a01         	ldr	r2, [sp, #0x4]
  3cf370: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  3cf374: 4610         	mov	r0, r2
  3cf376: 2100         	movs	r1, #0x0
  3cf378: 4798         	blx	r3
  3cf37a: 9b01         	ldr	r3, [sp, #0x4]
  3cf37c: 2200         	movs	r2, #0x0
  3cf37e: f883 2195    	strb.w	r2, [r3, #0x195]
  3cf382: 9b01         	ldr	r3, [sp, #0x4]
  3cf384: 2200         	movs	r2, #0x0
  3cf386: f883 2194    	strb.w	r2, [r3, #0x194]
  3cf38a: 9b01         	ldr	r3, [sp, #0x4]
  3cf38c: f04f 0200    	mov.w	r2, #0x0
  3cf390: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  3cf394: b005         	add	sp, #0x14
  3cf396: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3cf397); words below are literal-pool data ---
  3cf398: 7b74         	ldrb	r4, [r6, #0xd]
  3cf39a: 0040         	lsls	r0, r0, #0x1

// ==== SHOTGUN::setMapConfiguration
//      file offset 0x3cf39c (= ELF address; Ghidra 0x3df39c), 248 bytes, Thumb-2
  3cf39c: b570         	push	{r4, r5, r6, lr}
  3cf39e: b084         	sub	sp, #0x10
  3cf3a0: 9001         	str	r0, [sp, #0x4]
  3cf3a2: 4c3a         	ldr	r4, [pc, #0xe8]         @ 0x3cf48c <SHOTGUN::setMapConfiguration()+0xf0>
  3cf3a4: 447c         	add	r4, pc
  3cf3a6: 9b01         	ldr	r3, [sp, #0x4]
  3cf3a8: f04f 0200    	mov.w	r2, #0x0
  3cf3ac: f8c3 2190    	str.w	r2, [r3, #0x190]
  3cf3b0: 9b01         	ldr	r3, [sp, #0x4]
  3cf3b2: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cf3b6: 681b         	ldr	r3, [r3]
  3cf3b8: 334c         	adds	r3, #0x4c
  3cf3ba: 681d         	ldr	r5, [r3]
  3cf3bc: 9b01         	ldr	r3, [sp, #0x4]
  3cf3be: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  3cf3c2: ab02         	add	r3, sp, #0x8
  3cf3c4: 4618         	mov	r0, r3
  3cf3c6: f04f 0100    	mov.w	r1, #0x0
  3cf3ca: f04f 0200    	mov.w	r2, #0x0
  3cf3ce: f1c3 fc8f    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1c391e
  3cf3d2: ab02         	add	r3, sp, #0x8
  3cf3d4: 4630         	mov	r0, r6
  3cf3d6: 4619         	mov	r1, r3
  3cf3d8: 47a8         	blx	r5
  3cf3da: 9b01         	ldr	r3, [sp, #0x4]
  3cf3dc: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cf3e0: 681b         	ldr	r3, [r3]
  3cf3e2: 337c         	adds	r3, #0x7c
  3cf3e4: 681d         	ldr	r5, [r3]
  3cf3e6: 9b01         	ldr	r3, [sp, #0x4]
  3cf3e8: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  3cf3ec: ab02         	add	r3, sp, #0x8
  3cf3ee: 4618         	mov	r0, r3
  3cf3f0: f04f 517c    	mov.w	r1, #0x3f000000
  3cf3f4: f04f 527c    	mov.w	r2, #0x3f000000
  3cf3f8: f1c3 fc7a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1c38f4
  3cf3fc: ab02         	add	r3, sp, #0x8
  3cf3fe: 4630         	mov	r0, r6
  3cf400: 4619         	mov	r1, r3
  3cf402: 47a8         	blx	r5
  3cf404: 9b01         	ldr	r3, [sp, #0x4]
  3cf406: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cf40a: 681b         	ldr	r3, [r3]
  3cf40c: 3398         	adds	r3, #0x98
  3cf40e: 681b         	ldr	r3, [r3]
  3cf410: 9a01         	ldr	r2, [sp, #0x4]
  3cf412: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3cf416: 4610         	mov	r0, r2
  3cf418: f04f 0100    	mov.w	r1, #0x0
  3cf41c: 4798         	blx	r3
  3cf41e: 9b01         	ldr	r3, [sp, #0x4]
  3cf420: 681b         	ldr	r3, [r3]
  3cf422: 334c         	adds	r3, #0x4c
  3cf424: 681d         	ldr	r5, [r3]
  3cf426: 9e01         	ldr	r6, [sp, #0x4]
  3cf428: ab02         	add	r3, sp, #0x8
  3cf42a: 4618         	mov	r0, r3
  3cf42c: f04f 0100    	mov.w	r1, #0x0
  3cf430: f04f 0200    	mov.w	r2, #0x0
  3cf434: f1c3 fc5c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1c38b8
  3cf438: ab02         	add	r3, sp, #0x8
  3cf43a: 4630         	mov	r0, r6
  3cf43c: 4619         	mov	r1, r3
  3cf43e: 47a8         	blx	r5
  3cf440: 9b01         	ldr	r3, [sp, #0x4]
  3cf442: 681b         	ldr	r3, [r3]
  3cf444: 3340         	adds	r3, #0x40
  3cf446: 681b         	ldr	r3, [r3]
  3cf448: 9901         	ldr	r1, [sp, #0x4]
  3cf44a: 4a11         	ldr	r2, [pc, #0x44]         @ 0x3cf490 <SHOTGUN::setMapConfiguration()+0xf4>
  3cf44c: 58a2         	ldr	r2, [r4, r2]
  3cf44e: 6812         	ldr	r2, [r2]
  3cf450: 4608         	mov	r0, r1
  3cf452: 4611         	mov	r1, r2
  3cf454: 4798         	blx	r3
  3cf456: 9b01         	ldr	r3, [sp, #0x4]
  3cf458: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3cf45c: 681b         	ldr	r3, [r3]
  3cf45e: 3390         	adds	r3, #0x90
  3cf460: 681b         	ldr	r3, [r3]
  3cf462: 9a01         	ldr	r2, [sp, #0x4]
  3cf464: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  3cf468: 4610         	mov	r0, r2
  3cf46a: 2100         	movs	r1, #0x0
  3cf46c: 4798         	blx	r3
  3cf46e: 9b01         	ldr	r3, [sp, #0x4]
  3cf470: 2200         	movs	r2, #0x0
  3cf472: f883 2195    	strb.w	r2, [r3, #0x195]
  3cf476: 9b01         	ldr	r3, [sp, #0x4]
  3cf478: 2200         	movs	r2, #0x0
  3cf47a: f883 2194    	strb.w	r2, [r3, #0x194]
  3cf47e: 9b01         	ldr	r3, [sp, #0x4]
  3cf480: f04f 0200    	mov.w	r2, #0x0
  3cf484: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  3cf488: b004         	add	sp, #0x10
  3cf48a: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3cf48b); words below are literal-pool data ---
  3cf48c: 3664         	adds	r6, #0x64
  3cf48e: 0056         	lsls	r6, r2, #0x1
  3cf490: d748         	bvc	0x3cf524 <SHOTGUN::setRight(bool)+0x4> @ imm = #0x90
  3cf492: ffff b500    	<unknown>

// ==== SHOTGUN::getWeaponTexture
//      file offset 0x3cf494 (= ELF address; Ghidra 0x3df494), 40 bytes, Thumb-2
  3cf494: b500         	push	{lr}
  3cf496: b083         	sub	sp, #0xc
  3cf498: 9001         	str	r0, [sp, #0x4]
  3cf49a: 9b01         	ldr	r3, [sp, #0x4]
  3cf49c: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cf4a0: 681b         	ldr	r3, [r3]
  3cf4a2: f503 73fa    	add.w	r3, r3, #0x1f4
  3cf4a6: 681b         	ldr	r3, [r3]
  3cf4a8: 9a01         	ldr	r2, [sp, #0x4]
  3cf4aa: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3cf4ae: 4610         	mov	r0, r2
  3cf4b0: 4798         	blx	r3
  3cf4b2: 4603         	mov	r3, r0
  3cf4b4: 4618         	mov	r0, r3
  3cf4b6: b003         	add	sp, #0xc
  3cf4b8: f85d fb04    	ldr	pc, [sp], #4

// ==== SHOTGUN::getWeaponRect
//      file offset 0x3cf4bc (= ELF address; Ghidra 0x3df4bc), 38 bytes, Thumb-2
  3cf4bc: b500         	push	{lr}
  3cf4be: b083         	sub	sp, #0xc
  3cf4c0: 9001         	str	r0, [sp, #0x4]
  3cf4c2: 9100         	str	r1, [sp]
  3cf4c4: 9b00         	ldr	r3, [sp]
  3cf4c6: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cf4ca: 4618         	mov	r0, r3
  3cf4cc: f70d fc06    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0xf27f4
  3cf4d0: 4603         	mov	r3, r0
  3cf4d2: 9801         	ldr	r0, [sp, #0x4]
  3cf4d4: 4619         	mov	r1, r3
  3cf4d6: f1c3 ff1f    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x1c3e3e
  3cf4da: 9801         	ldr	r0, [sp, #0x4]
  3cf4dc: b003         	add	sp, #0xc
  3cf4de: f85d fb04    	ldr	pc, [sp], #4

// ==== SHOTGUN::isRight
//      file offset 0x3cf4e4 (= ELF address; Ghidra 0x3df4e4), 60 bytes, Thumb-2
  3cf4e4: b500         	push	{lr}
  3cf4e6: b083         	sub	sp, #0xc
  3cf4e8: 9001         	str	r0, [sp, #0x4]
  3cf4ea: 9b01         	ldr	r3, [sp, #0x4]
  3cf4ec: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cf4f0: 681b         	ldr	r3, [r3]
  3cf4f2: 3334         	adds	r3, #0x34
  3cf4f4: 681b         	ldr	r3, [r3]
  3cf4f6: 9a01         	ldr	r2, [sp, #0x4]
  3cf4f8: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3cf4fc: 4610         	mov	r0, r2
  3cf4fe: 4798         	blx	r3
  3cf500: ee07 0a10    	vmov	s14, r0
  3cf504: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3cf508: eeb4 7ae7    	vcmpe.f32	s14, s15
  3cf50c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3cf510: bfd4         	ite	le
  3cf512: 2300         	movle	r3, #0x0
  3cf514: 2301         	movgt	r3, #0x1
  3cf516: b2db         	uxtb	r3, r3
  3cf518: 4618         	mov	r0, r3
  3cf51a: b003         	add	sp, #0xc
  3cf51c: f85d fb04    	ldr	pc, [sp], #4

// ==== SHOTGUN::setRight
//      file offset 0x3cf520 (= ELF address; Ghidra 0x3df520), 64 bytes, Thumb-2
  3cf520: b500         	push	{lr}
  3cf522: b083         	sub	sp, #0xc
  3cf524: 9001         	str	r0, [sp, #0x4]
  3cf526: 460b         	mov	r3, r1
  3cf528: f88d 3003    	strb.w	r3, [sp, #0x3]
  3cf52c: 9b01         	ldr	r3, [sp, #0x4]
  3cf52e: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cf532: 681b         	ldr	r3, [r3]
  3cf534: 3330         	adds	r3, #0x30
  3cf536: 681a         	ldr	r2, [r3]
  3cf538: 9b01         	ldr	r3, [sp, #0x4]
  3cf53a: f8d3 11ec    	ldr.w	r1, [r3, #0x1ec]
  3cf53e: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  3cf542: 2b00         	cmp	r3, #0x0
  3cf544: d002         	beq	0x3cf54c <SHOTGUN::setRight(bool)+0x2c> @ imm = #0x4
  3cf546: f04f 537e    	mov.w	r3, #0x3f800000
  3cf54a: e003         	b	0x3cf554 <SHOTGUN::setRight(bool)+0x34> @ imm = #0x6
  3cf54c: f04f 0300    	mov.w	r3, #0x0
  3cf550: f6cb 7380    	movt	r3, #0xbf80
  3cf554: 4608         	mov	r0, r1
  3cf556: 4619         	mov	r1, r3
  3cf558: 4790         	blx	r2
  3cf55a: b003         	add	sp, #0xc
  3cf55c: f85d fb04    	ldr	pc, [sp], #4

// ==== SHOTGUN::getRANGE
//      file offset 0x3cf560 (= ELF address; Ghidra 0x3df560), 16 bytes, Thumb-2
  3cf560: 4b02         	ldr	r3, [pc, #0x8]          @ 0x3cf56c <SHOTGUN::getRANGE()+0xc>
  3cf562: 447b         	add	r3, pc
  3cf564: 681b         	ldr	r3, [r3]
  3cf566: 4618         	mov	r0, r3
  3cf568: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x3cf569); words below are literal-pool data ---
  3cf56a: bf00         	nop
  3cf56c: 40be         	lsls	r6, r7
  3cf56e: 0056         	lsls	r6, r2, #0x1

// ==== SHOTGUN::getDAMAGE
//      file offset 0x3cf570 (= ELF address; Ghidra 0x3df570), 16 bytes, Thumb-2
  3cf570: 4b02         	ldr	r3, [pc, #0x8]          @ 0x3cf57c <SHOTGUN::getDAMAGE()+0xc>
  3cf572: 447b         	add	r3, pc
  3cf574: 681b         	ldr	r3, [r3]
  3cf576: 4618         	mov	r0, r3
  3cf578: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x3cf579); words below are literal-pool data ---
  3cf57a: bf00         	nop
  3cf57c: 40aa         	lsls	r2, r5
  3cf57e: 0056         	lsls	r6, r2, #0x1

// ==== SHOTGUN::create
//      file offset 0x41716c (= ELF address; Ghidra 0x42716c), 112 bytes, Thumb-2
  41716c: b510         	push	{r4, lr}
  41716e: b082         	sub	sp, #0x8
  417170: f44f 70fc    	mov.w	r0, #0x1f8
  417174: f370 fbf6    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x3707ec
  417178: 4603         	mov	r3, r0
  41717a: 461c         	mov	r4, r3
  41717c: 4620         	mov	r0, r4
  41717e: f7b7 fb81    	bl	0x3ce884 <SHOTGUN::SHOTGUN()> @ imm = #-0x488fe
  417182: 9401         	str	r4, [sp, #0x4]
  417184: 9b01         	ldr	r3, [sp, #0x4]
  417186: 2b00         	cmp	r3, #0x0
  417188: d00a         	beq	0x4171a0 <SHOTGUN::create()+0x34> @ imm = #0x14
  41718a: 9b01         	ldr	r3, [sp, #0x4]
  41718c: 681b         	ldr	r3, [r3]
  41718e: 3318         	adds	r3, #0x18
  417190: 681b         	ldr	r3, [r3]
  417192: 9801         	ldr	r0, [sp, #0x4]
  417194: 4798         	blx	r3
  417196: 4603         	mov	r3, r0
  417198: 2b00         	cmp	r3, #0x0
  41719a: d001         	beq	0x4171a0 <SHOTGUN::create()+0x34> @ imm = #0x2
  41719c: 2301         	movs	r3, #0x1
  41719e: e000         	b	0x4171a2 <SHOTGUN::create()+0x36> @ imm = #0x0
  4171a0: 2300         	movs	r3, #0x0
  4171a2: 2b00         	cmp	r3, #0x0
  4171a4: d005         	beq	0x4171b2 <SHOTGUN::create()+0x46> @ imm = #0xa
  4171a6: 9b01         	ldr	r3, [sp, #0x4]
  4171a8: 4618         	mov	r0, r3
  4171aa: f180 fea7    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x180d4e
  4171ae: 9b01         	ldr	r3, [sp, #0x4]
  4171b0: e011         	b	0x4171d6 <SHOTGUN::create()+0x6a> @ imm = #0x22
  4171b2: 9b01         	ldr	r3, [sp, #0x4]
  4171b4: 2b00         	cmp	r3, #0x0
  4171b6: d005         	beq	0x4171c4 <SHOTGUN::create()+0x58> @ imm = #0xa
  4171b8: 9b01         	ldr	r3, [sp, #0x4]
  4171ba: 681b         	ldr	r3, [r3]
  4171bc: 3308         	adds	r3, #0x8
  4171be: 681b         	ldr	r3, [r3]
  4171c0: 9801         	ldr	r0, [sp, #0x4]
  4171c2: 4798         	blx	r3
  4171c4: 2300         	movs	r3, #0x0
  4171c6: 9301         	str	r3, [sp, #0x4]
  4171c8: 2300         	movs	r3, #0x0
  4171ca: e004         	b	0x4171d6 <SHOTGUN::create()+0x6a> @ imm = #0x8
  4171cc: 4620         	mov	r0, r4
  4171ce: f370 ff69    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x370ed2
  4171d2: f370 ff6b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x370ed6
  4171d6: 4618         	mov	r0, r3
  4171d8: b002         	add	sp, #0x8
  4171da: bd10         	pop	{r4, pc}
