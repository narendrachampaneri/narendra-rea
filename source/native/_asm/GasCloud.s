// GasCloud: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 6 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../GasCloud.cpp

// ==== GasCloud::GasCloud
//      file offset 0x3387f4 (= ELF address; Ghidra 0x3487f4), 304 bytes, Thumb-2
  3387f4: b530         	push	{r4, r5, lr}
  3387f6: b085         	sub	sp, #0x14
  3387f8: 9001         	str	r0, [sp, #0x4]
  3387fa: 4c45         	ldr	r4, [pc, #0x114]        @ 0x338910 <GasCloud::GasCloud()+0x11c>
  3387fc: 447c         	add	r4, pc
  3387fe: 9b01         	ldr	r3, [sp, #0x4]
  338800: 4618         	mov	r0, r3
  338802: f256 ff19    	bl	0x58f638 <cocos2d::CCNode::CCNode()> @ imm = #0x256e32
  338806: 9b01         	ldr	r3, [sp, #0x4]
  338808: 4a42         	ldr	r2, [pc, #0x108]        @ 0x338914 <GasCloud::GasCloud()+0x120>
  33880a: 58a2         	ldr	r2, [r4, r2]
  33880c: 3208         	adds	r2, #0x8
  33880e: 601a         	str	r2, [r3]
  338810: 9b01         	ldr	r3, [sp, #0x4]
  338812: 33ec         	adds	r3, #0xec
  338814: 4618         	mov	r0, r3
  338816: f07c f4cb    	bl	0x7b51b0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18700> @ imm = #0x47c996
  33881a: 4b3f         	ldr	r3, [pc, #0xfc]         @ 0x338918 <GasCloud::GasCloud()+0x124>
  33881c: 447b         	add	r3, pc
  33881e: 4618         	mov	r0, r3
  338820: f29f fd70    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x29fae0
  338824: 4602         	mov	r2, r0
  338826: 9b01         	ldr	r3, [sp, #0x4]
  338828: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  33882c: 9b01         	ldr	r3, [sp, #0x4]
  33882e: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  338832: 4618         	mov	r0, r3
  338834: f25f fb58    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x25f6b0
  338838: 9a01         	ldr	r2, [sp, #0x4]
  33883a: 9b01         	ldr	r3, [sp, #0x4]
  33883c: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  338840: 4610         	mov	r0, r2
  338842: 4619         	mov	r1, r3
  338844: f257 fe52    	bl	0x5904ec <cocos2d::CCNode::addChild(cocos2d::CCNode*)> @ imm = #0x257ca4
  338848: 9b01         	ldr	r3, [sp, #0x4]
  33884a: 4618         	mov	r0, r3
  33884c: 2100         	movs	r1, #0x0
  33884e: f257 fb1f    	bl	0x58fe90 <cocos2d::CCNode::setVisible(bool)> @ imm = #0x25763e
  338852: 9b01         	ldr	r3, [sp, #0x4]
  338854: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  338858: 681b         	ldr	r3, [r3]
  33885a: f503 73de    	add.w	r3, r3, #0x1bc
  33885e: 681c         	ldr	r4, [r3]
  338860: 9b01         	ldr	r3, [sp, #0x4]
  338862: f8d3 50e8    	ldr.w	r5, [r3, #0xe8]
  338866: 2064         	movs	r0, #0x64
  338868: 21ff         	movs	r1, #0xff
  33886a: 2200         	movs	r2, #0x0
  33886c: f7ff f8a8    	bl	0x3379c0 <GameTypeLayer::inviteCheck(float)+0x170> @ imm = #-0xeb0
  338870: 4603         	mov	r3, r0
  338872: 461a         	mov	r2, r3
  338874: f88d 200c    	strb.w	r2, [sp, #0xc]
  338878: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  33887c: f88d 200d    	strb.w	r2, [sp, #0xd]
  338880: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  338884: f88d 300e    	strb.w	r3, [sp, #0xe]
  338888: ab03         	add	r3, sp, #0xc
  33888a: 4628         	mov	r0, r5
  33888c: 4619         	mov	r1, r3
  33888e: 47a0         	blx	r4
  338890: 4b22         	ldr	r3, [pc, #0x88]         @ 0x33891c <GasCloud::GasCloud()+0x128>
  338892: 447b         	add	r3, pc
  338894: 4618         	mov	r0, r3
  338896: f29f fd35    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x29fa6a
  33889a: 4602         	mov	r2, r0
  33889c: 9b01         	ldr	r3, [sp, #0x4]
  33889e: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  3388a2: 9b01         	ldr	r3, [sp, #0x4]
  3388a4: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3388a8: 4618         	mov	r0, r3
  3388aa: f25f fb1d    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x25f63a
  3388ae: 9a01         	ldr	r2, [sp, #0x4]
  3388b0: 9b01         	ldr	r3, [sp, #0x4]
  3388b2: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3388b6: 4610         	mov	r0, r2
  3388b8: 4619         	mov	r1, r3
  3388ba: f257 fe17    	bl	0x5904ec <cocos2d::CCNode::addChild(cocos2d::CCNode*)> @ imm = #0x257c2e
  3388be: 9b01         	ldr	r3, [sp, #0x4]
  3388c0: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3388c4: 681b         	ldr	r3, [r3]
  3388c6: 3390         	adds	r3, #0x90
  3388c8: 681b         	ldr	r3, [r3]
  3388ca: 9a01         	ldr	r2, [sp, #0x4]
  3388cc: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  3388d0: 4610         	mov	r0, r2
  3388d2: 2100         	movs	r1, #0x0
  3388d4: 4798         	blx	r3
  3388d6: 9b01         	ldr	r3, [sp, #0x4]
  3388d8: 33ec         	adds	r3, #0xec
  3388da: 4618         	mov	r0, r3
  3388dc: 4b10         	ldr	r3, [pc, #0x40]         @ 0x338920 <GasCloud::GasCloud()+0x12c>
  3388de: 447b         	add	r3, pc
  3388e0: 4619         	mov	r1, r3
  3388e2: f07d f2c5    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x47d58a
  3388e6: 9b01         	ldr	r3, [sp, #0x4]
  3388e8: 2200         	movs	r2, #0x0
  3388ea: f8c3 20fc    	str.w	r2, [r3, #0xfc]
  3388ee: 9b01         	ldr	r3, [sp, #0x4]
  3388f0: e00b         	b	0x33890a <GasCloud::GasCloud()+0x116> @ imm = #0x16
  3388f2: 9b01         	ldr	r3, [sp, #0x4]
  3388f4: 33ec         	adds	r3, #0xec
  3388f6: 4618         	mov	r0, r3
  3388f8: f07d f00c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47d018
  3388fc: e7ff         	b	0x3388fe <GasCloud::GasCloud()+0x10a> @ imm = #-0x2
  3388fe: 9b01         	ldr	r3, [sp, #0x4]
  338900: 4618         	mov	r0, r3
  338902: f256 ff9f    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x256f3e
  338906: f04f f3d1    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x44f7a2
  33890a: 4618         	mov	r0, r3
  33890c: b005         	add	sp, #0x14
  33890e: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x33890f); words below are literal-pool data ---
  338910: a20c         	adr	r2, #48 <GasCloud::GasCloud()+0x12c>
  338912: 005f         	lsls	r7, r3, #0x1
  338914: daa4         	bge	0x338860 <GasCloud::GasCloud()+0x6c> @ imm = #-0xb8
  338916: ffff 0d58    	<unknown>
  33891a: 0049         	lsls	r1, r1, #0x1
  33891c: 0cee         	lsrs	r6, r5, #0x13
  33891e: 0049         	lsls	r1, r1, #0x1
  338920: 0cb2         	lsrs	r2, r6, #0x12
  338922: 0049         	lsls	r1, r1, #0x1

// ==== GasCloud::~GasCloud
//      file offset 0x338924 (= ELF address; Ghidra 0x348924), 92 bytes, Thumb-2
  338924: b500         	push	{lr}
  338926: b083         	sub	sp, #0xc
  338928: 9001         	str	r0, [sp, #0x4]
  33892a: 4913         	ldr	r1, [pc, #0x4c]         @ 0x338978 <GasCloud::~GasCloud()+0x54>
  33892c: 4479         	add	r1, pc
  33892e: 9b01         	ldr	r3, [sp, #0x4]
  338930: 4a12         	ldr	r2, [pc, #0x48]         @ 0x33897c <GasCloud::~GasCloud()+0x58>
  338932: 588a         	ldr	r2, [r1, r2]
  338934: 3208         	adds	r2, #0x8
  338936: 601a         	str	r2, [r3]
  338938: 9b01         	ldr	r3, [sp, #0x4]
  33893a: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  33893e: 4618         	mov	r0, r3
  338940: f25f faba    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x25f574
  338944: 9b01         	ldr	r3, [sp, #0x4]
  338946: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  33894a: 4618         	mov	r0, r3
  33894c: f25f fab4    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x25f568
  338950: 9b01         	ldr	r3, [sp, #0x4]
  338952: 33ec         	adds	r3, #0xec
  338954: 4618         	mov	r0, r3
  338956: f07c f7dd    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47cfba
  33895a: 9b01         	ldr	r3, [sp, #0x4]
  33895c: 4618         	mov	r0, r3
  33895e: f256 ff71    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x256ee2
  338962: 2300         	movs	r3, #0x0
  338964: 2b00         	cmp	r3, #0x0
  338966: d002         	beq	0x33896e <GasCloud::~GasCloud()+0x4a> @ imm = #0x4
  338968: 9801         	ldr	r0, [sp, #0x4]
  33896a: f04f f39b    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x44f736
  33896e: 9b01         	ldr	r3, [sp, #0x4]
  338970: 4618         	mov	r0, r3
  338972: b003         	add	sp, #0xc
  338974: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x338977); words below are literal-pool data ---
  338978: a0dc         	adr	r0, #880 <GasCloud::reset(cpVect, std::string, int)+0xbc>
  33897a: 005f         	lsls	r7, r3, #0x1
  33897c: daa4         	bge	0x3388c8 <GasCloud::GasCloud()+0xd4> @ imm = #-0xb8
  33897e: ffff b500    	<unknown>

// ==== GasCloud::~GasCloud
//      file offset 0x338980 (= ELF address; Ghidra 0x348980), 28 bytes, Thumb-2
  338980: b500         	push	{lr}
  338982: b083         	sub	sp, #0xc
  338984: 9001         	str	r0, [sp, #0x4]
  338986: 9801         	ldr	r0, [sp, #0x4]
  338988: f7ff ffcc    	bl	0x338924 <GasCloud::~GasCloud()> @ imm = #-0x68
  33898c: 9801         	ldr	r0, [sp, #0x4]
  33898e: f04f f389    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x44f712
  338992: 9b01         	ldr	r3, [sp, #0x4]
  338994: 4618         	mov	r0, r3
  338996: b003         	add	sp, #0xc
  338998: f85d fb04    	ldr	pc, [sp], #4

// ==== GasCloud::reset
//      file offset 0x33899c (= ELF address; Ghidra 0x34899c), 312 bytes, Thumb-2
  33899c: b082         	sub	sp, #0x8
  33899e: b530         	push	{r4, r5, lr}
  3389a0: b085         	sub	sp, #0x14
  3389a2: 9001         	str	r0, [sp, #0x4]
  3389a4: a908         	add	r1, sp, #0x20
  3389a6: e881 000c    	stm.w	r1, {r2, r3}
  3389aa: 9b01         	ldr	r3, [sp, #0x4]
  3389ac: f04f 0200    	mov.w	r2, #0x0
  3389b0: f8c3 20f0    	str.w	r2, [r3, #0xf0]
  3389b4: 9b01         	ldr	r3, [sp, #0x4]
  3389b6: f04f 0200    	mov.w	r2, #0x0
  3389ba: f8c3 20f4    	str.w	r2, [r3, #0xf4]
  3389be: 9b01         	ldr	r3, [sp, #0x4]
  3389c0: f04f 0200    	mov.w	r2, #0x0
  3389c4: f8c3 2100    	str.w	r2, [r3, #0x100]
  3389c8: 9b01         	ldr	r3, [sp, #0x4]
  3389ca: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3389ce: 681b         	ldr	r3, [r3]
  3389d0: 3340         	adds	r3, #0x40
  3389d2: 681b         	ldr	r3, [r3]
  3389d4: 9a01         	ldr	r2, [sp, #0x4]
  3389d6: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  3389da: 4610         	mov	r0, r2
  3389dc: f24d 710a    	movw	r1, #0xd70a
  3389e0: f6c3 4123    	movt	r1, #0x3c23
  3389e4: 4798         	blx	r3
  3389e6: 9b01         	ldr	r3, [sp, #0x4]
  3389e8: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3389ec: 681b         	ldr	r3, [r3]
  3389ee: 3340         	adds	r3, #0x40
  3389f0: 681b         	ldr	r3, [r3]
  3389f2: 9a01         	ldr	r2, [sp, #0x4]
  3389f4: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  3389f8: 4610         	mov	r0, r2
  3389fa: f04f 0100    	mov.w	r1, #0x0
  3389fe: 4798         	blx	r3
  338a00: 9b01         	ldr	r3, [sp, #0x4]
  338a02: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  338a06: 681b         	ldr	r3, [r3]
  338a08: f503 73d2    	add.w	r3, r3, #0x1a4
  338a0c: 681b         	ldr	r3, [r3]
  338a0e: 9a01         	ldr	r2, [sp, #0x4]
  338a10: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  338a14: 4610         	mov	r0, r2
  338a16: 21ff         	movs	r1, #0xff
  338a18: 4798         	blx	r3
  338a1a: 9b01         	ldr	r3, [sp, #0x4]
  338a1c: 681b         	ldr	r3, [r3]
  338a1e: 334c         	adds	r3, #0x4c
  338a20: 681c         	ldr	r4, [r3]
  338a22: 9d01         	ldr	r5, [sp, #0x4]
  338a24: ed9d 7b08    	vldr	d7, [sp, #32]
  338a28: eef7 6bc7    	vcvt.f32.f64	s13, d7
  338a2c: ed9d 7b0a    	vldr	d7, [sp, #40]
  338a30: eef7 7bc7    	vcvt.f32.f64	s15, d7
  338a34: ab02         	add	r3, sp, #0x8
  338a36: 4618         	mov	r0, r3
  338a38: ee16 1a90    	vmov	r1, s13
  338a3c: ee17 2a90    	vmov	r2, s15
  338a40: f25a f956    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x25a2ac
  338a44: ab02         	add	r3, sp, #0x8
  338a46: 4628         	mov	r0, r5
  338a48: 4619         	mov	r1, r3
  338a4a: 47a0         	blx	r4
  338a4c: 9b01         	ldr	r3, [sp, #0x4]
  338a4e: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  338a52: 681b         	ldr	r3, [r3]
  338a54: 3390         	adds	r3, #0x90
  338a56: 681b         	ldr	r3, [r3]
  338a58: 9a01         	ldr	r2, [sp, #0x4]
  338a5a: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  338a5e: 4610         	mov	r0, r2
  338a60: 2101         	movs	r1, #0x1
  338a62: 4798         	blx	r3
  338a64: 9b01         	ldr	r3, [sp, #0x4]
  338a66: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  338a6a: 681b         	ldr	r3, [r3]
  338a6c: 3398         	adds	r3, #0x98
  338a6e: 681c         	ldr	r4, [r3]
  338a70: 9b01         	ldr	r3, [sp, #0x4]
  338a72: f8d3 50e4    	ldr.w	r5, [r3, #0xe4]
  338a76: f7fe ff9d    	bl	0x3379b4 <GameTypeLayer::inviteCheck(float)+0x164> @ imm = #-0x10c6
  338a7a: 4603         	mov	r3, r0
  338a7c: ee07 3a90    	vmov	s15, r3
  338a80: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  338a84: eddf 7a11    	vldr	s15, [pc, #68]          @ 0x338acc <GasCloud::reset(cpVect, std::string, int)+0x130>
  338a88: ee87 7a27    	vdiv.f32	s14, s14, s15
  338a8c: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  338a90: ee37 7a67    	vsub.f32	s14, s14, s15
  338a94: eddf 7a0e    	vldr	s15, [pc, #56]          @ 0x338ad0 <GasCloud::reset(cpVect, std::string, int)+0x134>
  338a98: ee67 7a27    	vmul.f32	s15, s14, s15
  338a9c: 4628         	mov	r0, r5
  338a9e: ee17 1a90    	vmov	r1, s15
  338aa2: 47a0         	blx	r4
  338aa4: 9b01         	ldr	r3, [sp, #0x4]
  338aa6: 33ec         	adds	r3, #0xec
  338aa8: 4618         	mov	r0, r3
  338aaa: 990c         	ldr	r1, [sp, #0x30]
  338aac: f07d f582    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x47db04
  338ab0: 9b01         	ldr	r3, [sp, #0x4]
  338ab2: 9a0d         	ldr	r2, [sp, #0x34]
  338ab4: f8c3 20fc    	str.w	r2, [r3, #0xfc]
  338ab8: 9b01         	ldr	r3, [sp, #0x4]
  338aba: 2201         	movs	r2, #0x1
  338abc: f883 20f9    	strb.w	r2, [r3, #0xf9]
  338ac0: b005         	add	sp, #0x14
  338ac2: e8bd 4030    	pop.w	{r4, r5, lr}
  338ac6: b002         	add	sp, #0x8
  338ac8: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x338ac9); words below are literal-pool data ---
  338aca: bf00         	nop
  338acc: 0000         	movs	r0, r0
  338ace: 4e80         	ldr	r6, [pc, #0x200]        @ 0x338cd0 <GasCloud::updateStep(float)+0x18>
  338ad0: 0000         	movs	r0, r0
  338ad2: 4334         	orrs	r4, r6

// ==== GasCloud::applyDamage
//      file offset 0x338ad8 (= ELF address; Ghidra 0x348ad8), 480 bytes, Thumb-2
  338ad8: b530         	push	{r4, r5, lr}
  338ada: ed2d 8b02    	vpush	{d8}
  338ade: b093         	sub	sp, #0x4c
  338ae0: 9005         	str	r0, [sp, #0x14]
  338ae2: 9104         	str	r1, [sp, #0x10]
  338ae4: 4c71         	ldr	r4, [pc, #0x1c4]        @ 0x338cac <GasCloud::applyDamage(float)+0x1d4>
  338ae6: 447c         	add	r4, pc
  338ae8: 9b05         	ldr	r3, [sp, #0x14]
  338aea: 681b         	ldr	r3, [r3]
  338aec: 3350         	adds	r3, #0x50
  338aee: 681b         	ldr	r3, [r3]
  338af0: 9a05         	ldr	r2, [sp, #0x14]
  338af2: 4610         	mov	r0, r2
  338af4: 4798         	blx	r3
  338af6: 4603         	mov	r3, r0
  338af8: edd3 7a00    	vldr	s15, [r3]
  338afc: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  338b00: 9b05         	ldr	r3, [sp, #0x14]
  338b02: 681b         	ldr	r3, [r3]
  338b04: 3350         	adds	r3, #0x50
  338b06: 681b         	ldr	r3, [r3]
  338b08: 9a05         	ldr	r2, [sp, #0x14]
  338b0a: 4610         	mov	r0, r2
  338b0c: 4798         	blx	r3
  338b0e: 4603         	mov	r3, r0
  338b10: edd3 7a01    	vldr	s15, [r3, #4]
  338b14: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  338b18: ab0a         	add	r3, sp, #0x28
  338b1a: 4618         	mov	r0, r3
  338b1c: eeb0 0b48    	vmov.f64	d0, d8
  338b20: eeb0 1b47    	vmov.f64	d1, d7
  338b24: f7fe ff7a    	bl	0x337a1c <GameTypeLayer::inviteCheck(float)+0x1cc> @ imm = #-0x110c
  338b28: 4b61         	ldr	r3, [pc, #0x184]        @ 0x338cb0 <GasCloud::applyDamage(float)+0x1d8>
  338b2a: 58e3         	ldr	r3, [r4, r3]
  338b2c: 681b         	ldr	r3, [r3]
  338b2e: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  338b32: aa0e         	add	r2, sp, #0x38
  338b34: ed9d 4b0a    	vldr	d4, [sp, #40]
  338b38: ed9d 5b0c    	vldr	d5, [sp, #48]
  338b3c: ed93 6b0a    	vldr	d6, [r3, #40]
  338b40: ed93 7b0c    	vldr	d7, [r3, #48]
  338b44: 4610         	mov	r0, r2
  338b46: eeb0 0b44    	vmov.f64	d0, d4
  338b4a: eeb0 1b45    	vmov.f64	d1, d5
  338b4e: eeb0 2b46    	vmov.f64	d2, d6
  338b52: eeb0 3b47    	vmov.f64	d3, d7
  338b56: f7fe ff75    	bl	0x337a44 <GameTypeLayer::inviteCheck(float)+0x1f4> @ imm = #-0x1116
  338b5a: ab0e         	add	r3, sp, #0x38
  338b5c: cb0f         	ldm	r3, {r0, r1, r2, r3}
  338b5e: f39e faab    	bl	0x6d70b8 <cpvlength>    @ imm = #0x39e556
  338b62: 4602         	mov	r2, r0
  338b64: 460b         	mov	r3, r1
  338b66: e9cd 2308    	strd	r2, r3, [sp, #32]
  338b6a: 9b05         	ldr	r3, [sp, #0x14]
  338b6c: ed93 7a40    	vldr	s14, [r3, #256]
  338b70: eddd 7a04    	vldr	s15, [sp, #16]
  338b74: ee77 7a27    	vadd.f32	s15, s14, s15
  338b78: 9b05         	ldr	r3, [sp, #0x14]
  338b7a: edc3 7a40    	vstr	s15, [r3, #256]
  338b7e: 9b05         	ldr	r3, [sp, #0x14]
  338b80: edd3 7a40    	vldr	s15, [r3, #256]
  338b84: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  338b88: ed9f 7b41    	vldr	d7, [pc, #260]          @ 0x338c90 <GasCloud::applyDamage(float)+0x1b8>
  338b8c: eeb4 6bc7    	vcmpe.f64	d6, d7
  338b90: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  338b94: dd36         	ble	0x338c04 <GasCloud::applyDamage(float)+0x12c> @ imm = #0x6c
  338b96: 9b05         	ldr	r3, [sp, #0x14]
  338b98: f04f 0200    	mov.w	r2, #0x0
  338b9c: f8c3 2100    	str.w	r2, [r3, #0x100]
  338ba0: 4b44         	ldr	r3, [pc, #0x110]        @ 0x338cb4 <GasCloud::applyDamage(float)+0x1dc>
  338ba2: 58e3         	ldr	r3, [r4, r3]
  338ba4: 681d         	ldr	r5, [r3]
  338ba6: ed9d 6b08    	vldr	d6, [sp, #32]
  338baa: ed9f 7b3b    	vldr	d7, [pc, #236]          @ 0x338c98 <GasCloud::applyDamage(float)+0x1c0>
  338bae: ee86 7b07    	vdiv.f64	d7, d6, d7
  338bb2: eeb7 6b00    	vmov.f64	d6, #1.000000e+00
  338bb6: ee36 7b47    	vsub.f64	d7, d6, d7
  338bba: eeb5 7bc0    	vcmpe.f64	d7, #0
  338bbe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  338bc2: d502         	bpl	0x338bca <GasCloud::applyDamage(float)+0xf2> @ imm = #0x4
  338bc4: eddf 7a38    	vldr	s15, [pc, #224]         @ 0x338ca8 <GasCloud::applyDamage(float)+0x1d0>
  338bc8: e00b         	b	0x338be2 <GasCloud::applyDamage(float)+0x10a> @ imm = #0x16
  338bca: ed9d 6b08    	vldr	d6, [sp, #32]
  338bce: ed9f 7b32    	vldr	d7, [pc, #200]          @ 0x338c98 <GasCloud::applyDamage(float)+0x1c0>
  338bd2: ee86 7b07    	vdiv.f64	d7, d6, d7
  338bd6: eeb7 6b00    	vmov.f64	d6, #1.000000e+00
  338bda: ee36 7b47    	vsub.f64	d7, d6, d7
  338bde: eef7 7bc7    	vcvt.f32.f64	s15, d7
  338be2: edcd 7a02    	vstr	s15, [sp, #8]
  338be6: f04f 537e    	mov.w	r3, #0x3f800000
  338bea: 9303         	str	r3, [sp, #0xc]
  338bec: 466b         	mov	r3, sp
  338bee: aa0c         	add	r2, sp, #0x30
  338bf0: e892 0003    	ldm.w	r2, {r0, r1}
  338bf4: e883 0003    	stm.w	r3, {r0, r1}
  338bf8: ab0a         	add	r3, sp, #0x28
  338bfa: cb0c         	ldm	r3, {r2, r3}
  338bfc: 4628         	mov	r0, r5
  338bfe: 212f         	movs	r1, #0x2f
  338c00: f0bf fa20    	bl	0x3f8044 <Sound::playSoundPositionVP(int, cpVect, float, float)> @ imm = #0xbf440
  338c04: ed9d 6b08    	vldr	d6, [sp, #32]
  338c08: ed9f 7b25    	vldr	d7, [pc, #148]          @ 0x338ca0 <GasCloud::applyDamage(float)+0x1c8>
  338c0c: eeb4 6bc7    	vcmpe.f64	d6, d7
  338c10: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  338c14: d400         	bmi	0x338c18 <GasCloud::applyDamage(float)+0x140> @ imm = #0x0
  338c16: e034         	b	0x338c82 <GasCloud::applyDamage(float)+0x1aa> @ imm = #0x68
  338c18: 4b25         	ldr	r3, [pc, #0x94]         @ 0x338cb0 <GasCloud::applyDamage(float)+0x1d8>
  338c1a: 58e3         	ldr	r3, [r4, r3]
  338c1c: 681b         	ldr	r3, [r3]
  338c1e: 681b         	ldr	r3, [r3]
  338c20: f503 7316    	add.w	r3, r3, #0x258
  338c24: 681d         	ldr	r5, [r3]
  338c26: 4b22         	ldr	r3, [pc, #0x88]         @ 0x338cb0 <GasCloud::applyDamage(float)+0x1d8>
  338c28: 58e3         	ldr	r3, [r4, r3]
  338c2a: 681b         	ldr	r3, [r3]
  338c2c: 461c         	mov	r4, r3
  338c2e: ed9f 6b1c    	vldr	d6, [pc, #112]          @ 0x338ca0 <GasCloud::applyDamage(float)+0x1c8>
  338c32: ed9d 7b08    	vldr	d7, [sp, #32]
  338c36: ee36 6b47    	vsub.f64	d6, d6, d7
  338c3a: eddd 7a04    	vldr	s15, [sp, #16]
  338c3e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  338c42: ee26 7b07    	vmul.f64	d7, d6, d7
  338c46: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  338c4a: 9b05         	ldr	r3, [sp, #0x14]
  338c4c: 33ec         	adds	r3, #0xec
  338c4e: aa07         	add	r2, sp, #0x1c
  338c50: 4610         	mov	r0, r2
  338c52: 4619         	mov	r1, r3
  338c54: f07d f448    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x47d890
  338c58: 9b05         	ldr	r3, [sp, #0x14]
  338c5a: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  338c5e: aa07         	add	r2, sp, #0x1c
  338c60: 2100         	movs	r1, #0x0
  338c62: 9100         	str	r1, [sp]
  338c64: 4620         	mov	r0, r4
  338c66: ee18 1a10    	vmov	r1, s16
  338c6a: 47a8         	blx	r5
  338c6c: ab07         	add	r3, sp, #0x1c
  338c6e: 4618         	mov	r0, r3
  338c70: f07c f650    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47cca0
  338c74: e005         	b	0x338c82 <GasCloud::applyDamage(float)+0x1aa> @ imm = #0xa
  338c76: ab07         	add	r3, sp, #0x1c
  338c78: 4618         	mov	r0, r3
  338c7a: f07c f64b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47cc96
  338c7e: f04f f215    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x44f42a
  338c82: b013         	add	sp, #0x4c
  338c84: ecbd 8b02    	vpop	{d8}
  338c88: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x338c89); words below are literal-pool data ---
  338c8a: bf00         	nop
  338c8c: f3af 8000    	nop.w
  338c90: 3333         	adds	r3, #0x33
  338c92: 3333         	adds	r3, #0x33
  338c94: 3333         	adds	r3, #0x33
  338c96: 3fe3         	subs	r7, #0xe3
  338c98: 0000         	movs	r0, r0
  338c9a: 0000         	movs	r0, r0
  338c9c: 3000         	adds	r0, #0x0
  338c9e: 4071         	eors	r1, r6
  338ca0: 0000         	movs	r0, r0
  338ca2: 0000         	movs	r0, r0
  338ca4: c000         	<unknown>
  338ca6: 4062         	eors	r2, r4
  338ca8: 0000         	movs	r0, r0
  338caa: 0000         	movs	r0, r0
  338cac: 9f22         	ldr	r7, [sp, #0x88]
  338cae: 005f         	lsls	r7, r3, #0x1
  338cb0: d784         	bvc	0x338bbc <GasCloud::applyDamage(float)+0xe4> @ imm = #-0xf8
  338cb2: ffff d730    	vqshl.u32	d29, d16, #0x1f
  338cb6: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== GasCloud::updateStep
//      file offset 0x338cb8 (= ELF address; Ghidra 0x348cb8), 912 bytes, Thumb-2
  338cb8: b530         	push	{r4, r5, lr}
  338cba: ed2d 8b02    	vpush	{d8}
  338cbe: b08f         	sub	sp, #0x3c
  338cc0: 9005         	str	r0, [sp, #0x14]
  338cc2: 9104         	str	r1, [sp, #0x10]
  338cc4: 9b05         	ldr	r3, [sp, #0x14]
  338cc6: ed93 7a3c    	vldr	s14, [r3, #240]
  338cca: eddd 7a04    	vldr	s15, [sp, #16]
  338cce: ee77 7a27    	vadd.f32	s15, s14, s15
  338cd2: 9b05         	ldr	r3, [sp, #0x14]
  338cd4: edc3 7a3c    	vstr	s15, [r3, #240]
  338cd8: 9b05         	ldr	r3, [sp, #0x14]
  338cda: 681b         	ldr	r3, [r3]
  338cdc: 3390         	adds	r3, #0x90
  338cde: 681b         	ldr	r3, [r3]
  338ce0: 9a05         	ldr	r2, [sp, #0x14]
  338ce2: 4610         	mov	r0, r2
  338ce4: 2100         	movs	r1, #0x0
  338ce6: 4798         	blx	r3
  338ce8: 9b05         	ldr	r3, [sp, #0x14]
  338cea: ed93 7a3c    	vldr	s14, [r3, #240]
  338cee: eef3 7a01    	vmov.f32	s15, #1.700000e+01
  338cf2: eeb4 7ae7    	vcmpe.f32	s14, s15
  338cf6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  338cfa: dd04         	ble	0x338d06 <GasCloud::updateStep(float)+0x4e> @ imm = #0x8
  338cfc: 9b05         	ldr	r3, [sp, #0x14]
  338cfe: 2200         	movs	r2, #0x0
  338d00: f883 20f9    	strb.w	r2, [r3, #0xf9]
  338d04: e189         	b	0x33901a <GasCloud::updateStep(float)+0x362> @ imm = #0x312
  338d06: 9b05         	ldr	r3, [sp, #0x14]
  338d08: 681b         	ldr	r3, [r3]
  338d0a: 3350         	adds	r3, #0x50
  338d0c: 681b         	ldr	r3, [r3]
  338d0e: 9a05         	ldr	r2, [sp, #0x14]
  338d10: 4610         	mov	r0, r2
  338d12: 4798         	blx	r3
  338d14: 4603         	mov	r3, r0
  338d16: edd3 7a00    	vldr	s15, [r3]
  338d1a: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  338d1e: 9b05         	ldr	r3, [sp, #0x14]
  338d20: 681b         	ldr	r3, [r3]
  338d22: 3350         	adds	r3, #0x50
  338d24: 681b         	ldr	r3, [r3]
  338d26: 9a05         	ldr	r2, [sp, #0x14]
  338d28: 4610         	mov	r0, r2
  338d2a: 4798         	blx	r3
  338d2c: 4603         	mov	r3, r0
  338d2e: edd3 7a01    	vldr	s15, [r3, #4]
  338d32: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  338d36: ab06         	add	r3, sp, #0x18
  338d38: 4618         	mov	r0, r3
  338d3a: eeb0 0b48    	vmov.f64	d0, d8
  338d3e: eeb0 1b47    	vmov.f64	d1, d7
  338d42: f7fe fe6b    	bl	0x337a1c <GameTypeLayer::inviteCheck(float)+0x1cc> @ imm = #-0x132a
  338d46: ab0a         	add	r3, sp, #0x28
  338d48: 4618         	mov	r0, r3
  338d4a: ed9f 0bb7    	vldr	d0, [pc, #732]          @ 0x339028 <GasCloud::updateStep(float)+0x370>
  338d4e: ed9f 1bb6    	vldr	d1, [pc, #728]          @ 0x339028 <GasCloud::updateStep(float)+0x370>
  338d52: f7fe fe63    	bl	0x337a1c <GameTypeLayer::inviteCheck(float)+0x1cc> @ imm = #-0x133a
  338d56: 466c         	mov	r4, sp
  338d58: ab0a         	add	r3, sp, #0x28
  338d5a: cb0f         	ldm	r3, {r0, r1, r2, r3}
  338d5c: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  338d60: ab06         	add	r3, sp, #0x18
  338d62: cb0f         	ldm	r3, {r0, r1, r2, r3}
  338d64: f7ff f814    	bl	0x337d90 <GameTypeLayer::inviteCheck(float)+0x540> @ imm = #-0xfd8
  338d68: 4603         	mov	r3, r0
  338d6a: 2b00         	cmp	r3, #0x0
  338d6c: d007         	beq	0x338d7e <GasCloud::updateStep(float)+0xc6> @ imm = #0xe
  338d6e: 9b05         	ldr	r3, [sp, #0x14]
  338d70: 681b         	ldr	r3, [r3]
  338d72: 3390         	adds	r3, #0x90
  338d74: 681b         	ldr	r3, [r3]
  338d76: 9a05         	ldr	r2, [sp, #0x14]
  338d78: 4610         	mov	r0, r2
  338d7a: 2101         	movs	r1, #0x1
  338d7c: 4798         	blx	r3
  338d7e: 9b05         	ldr	r3, [sp, #0x14]
  338d80: ed93 7a3c    	vldr	s14, [r3, #240]
  338d84: eef2 7a0e    	vmov.f32	s15, #1.500000e+01
  338d88: eeb4 7ae7    	vcmpe.f32	s14, s15
  338d8c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  338d90: dd57         	ble	0x338e42 <GasCloud::updateStep(float)+0x18a> @ imm = #0xae
  338d92: 9b05         	ldr	r3, [sp, #0x14]
  338d94: ed93 7a3d    	vldr	s14, [r3, #244]
  338d98: eddd 7a04    	vldr	s15, [sp, #16]
  338d9c: ee77 7a27    	vadd.f32	s15, s14, s15
  338da0: 9b05         	ldr	r3, [sp, #0x14]
  338da2: edc3 7a3d    	vstr	s15, [r3, #244]
  338da6: 9b05         	ldr	r3, [sp, #0x14]
  338da8: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  338dac: 681b         	ldr	r3, [r3]
  338dae: f503 73d2    	add.w	r3, r3, #0x1a4
  338db2: 681c         	ldr	r4, [r3]
  338db4: 9b05         	ldr	r3, [sp, #0x14]
  338db6: f8d3 50e8    	ldr.w	r5, [r3, #0xe8]
  338dba: 9b05         	ldr	r3, [sp, #0x14]
  338dbc: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  338dc0: 681b         	ldr	r3, [r3]
  338dc2: f503 73ce    	add.w	r3, r3, #0x19c
  338dc6: 681b         	ldr	r3, [r3]
  338dc8: 9a05         	ldr	r2, [sp, #0x14]
  338dca: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  338dce: 4610         	mov	r0, r2
  338dd0: 4798         	blx	r3
  338dd2: 4603         	mov	r3, r0
  338dd4: ee07 3a90    	vmov	s15, r3
  338dd8: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  338ddc: 9b05         	ldr	r3, [sp, #0x14]
  338dde: edd3 6a3d    	vldr	s13, [r3, #244]
  338de2: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  338de6: ee66 7aa7    	vmul.f32	s15, s13, s15
  338dea: ee77 7a67    	vsub.f32	s15, s14, s15
  338dee: eef5 7ac0    	vcmpe.f32	s15, #0
  338df2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  338df6: dd1f         	ble	0x338e38 <GasCloud::updateStep(float)+0x180> @ imm = #0x3e
  338df8: 9b05         	ldr	r3, [sp, #0x14]
  338dfa: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  338dfe: 681b         	ldr	r3, [r3]
  338e00: f503 73ce    	add.w	r3, r3, #0x19c
  338e04: 681b         	ldr	r3, [r3]
  338e06: 9a05         	ldr	r2, [sp, #0x14]
  338e08: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  338e0c: 4610         	mov	r0, r2
  338e0e: 4798         	blx	r3
  338e10: 4603         	mov	r3, r0
  338e12: ee07 3a90    	vmov	s15, r3
  338e16: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  338e1a: 9b05         	ldr	r3, [sp, #0x14]
  338e1c: edd3 6a3d    	vldr	s13, [r3, #244]
  338e20: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  338e24: ee66 7aa7    	vmul.f32	s15, s13, s15
  338e28: ee77 7a67    	vsub.f32	s15, s14, s15
  338e2c: eefc 7ae7    	vcvt.u32.f32	s15, s15
  338e30: ee17 3a90    	vmov	r3, s15
  338e34: b2db         	uxtb	r3, r3
  338e36: e000         	b	0x338e3a <GasCloud::updateStep(float)+0x182> @ imm = #0x0
  338e38: 2300         	movs	r3, #0x0
  338e3a: 4628         	mov	r0, r5
  338e3c: 4619         	mov	r1, r3
  338e3e: 47a0         	blx	r4
  338e40: e0eb         	b	0x33901a <GasCloud::updateStep(float)+0x362> @ imm = #0x1d6
  338e42: 9b05         	ldr	r3, [sp, #0x14]
  338e44: edd3 7a3c    	vldr	s15, [r3, #240]
  338e48: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  338e4c: ed9f 7b78    	vldr	d7, [pc, #480]          @ 0x339030 <GasCloud::updateStep(float)+0x378>
  338e50: eeb4 6bc7    	vcmpe.f64	d6, d7
  338e54: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  338e58: f340 8097    	ble.w	0x338f8a <GasCloud::updateStep(float)+0x2d2> @ imm = #0x12e
  338e5c: 9b05         	ldr	r3, [sp, #0x14]
  338e5e: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  338e62: 681b         	ldr	r3, [r3]
  338e64: 3390         	adds	r3, #0x90
  338e66: 681b         	ldr	r3, [r3]
  338e68: 9a05         	ldr	r2, [sp, #0x14]
  338e6a: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  338e6e: 4610         	mov	r0, r2
  338e70: 2100         	movs	r1, #0x0
  338e72: 4798         	blx	r3
  338e74: 9b05         	ldr	r3, [sp, #0x14]
  338e76: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  338e7a: 681b         	ldr	r3, [r3]
  338e7c: 3340         	adds	r3, #0x40
  338e7e: 681c         	ldr	r4, [r3]
  338e80: 9b05         	ldr	r3, [sp, #0x14]
  338e82: f8d3 50e8    	ldr.w	r5, [r3, #0xe8]
  338e86: 9b05         	ldr	r3, [sp, #0x14]
  338e88: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  338e8c: 681b         	ldr	r3, [r3]
  338e8e: 3344         	adds	r3, #0x44
  338e90: 681b         	ldr	r3, [r3]
  338e92: 9a05         	ldr	r2, [sp, #0x14]
  338e94: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  338e98: 4610         	mov	r0, r2
  338e9a: 4798         	blx	r3
  338e9c: ee07 0a90    	vmov	s15, r0
  338ea0: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  338ea4: eddd 7a04    	vldr	s15, [sp, #16]
  338ea8: eeb7 5ae7    	vcvt.f64.f32	d5, s15
  338eac: eeb5 7b00    	vmov.f64	d7, #2.500000e-01
  338eb0: ee25 7b07    	vmul.f64	d7, d5, d7
  338eb4: ee36 6b07    	vadd.f64	d6, d6, d7
  338eb8: eeb0 7b00    	vmov.f64	d7, #2.000000e+00
  338ebc: eeb4 6bc7    	vcmpe.f64	d6, d7
  338ec0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  338ec4: dd02         	ble	0x338ecc <GasCloud::updateStep(float)+0x214> @ imm = #0x4
  338ec6: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  338eca: e01a         	b	0x338f02 <GasCloud::updateStep(float)+0x24a> @ imm = #0x34
  338ecc: 9b05         	ldr	r3, [sp, #0x14]
  338ece: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  338ed2: 681b         	ldr	r3, [r3]
  338ed4: 3344         	adds	r3, #0x44
  338ed6: 681b         	ldr	r3, [r3]
  338ed8: 9a05         	ldr	r2, [sp, #0x14]
  338eda: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  338ede: 4610         	mov	r0, r2
  338ee0: 4798         	blx	r3
  338ee2: ee07 0a90    	vmov	s15, r0
  338ee6: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  338eea: eddd 7a04    	vldr	s15, [sp, #16]
  338eee: eeb7 5ae7    	vcvt.f64.f32	d5, s15
  338ef2: eeb5 7b00    	vmov.f64	d7, #2.500000e-01
  338ef6: ee25 7b07    	vmul.f64	d7, d5, d7
  338efa: ee36 7b07    	vadd.f64	d7, d6, d7
  338efe: eef7 7bc7    	vcvt.f32.f64	s15, d7
  338f02: 4628         	mov	r0, r5
  338f04: ee17 1a90    	vmov	r1, s15
  338f08: 47a0         	blx	r4
  338f0a: 9b05         	ldr	r3, [sp, #0x14]
  338f0c: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  338f10: 681b         	ldr	r3, [r3]
  338f12: 3398         	adds	r3, #0x98
  338f14: 681c         	ldr	r4, [r3]
  338f16: 9b05         	ldr	r3, [sp, #0x14]
  338f18: f8d3 50e8    	ldr.w	r5, [r3, #0xe8]
  338f1c: 9b05         	ldr	r3, [sp, #0x14]
  338f1e: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  338f22: 681b         	ldr	r3, [r3]
  338f24: 339c         	adds	r3, #0x9c
  338f26: 681b         	ldr	r3, [r3]
  338f28: 9a05         	ldr	r2, [sp, #0x14]
  338f2a: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  338f2e: 4610         	mov	r0, r2
  338f30: 4798         	blx	r3
  338f32: ee06 0a90    	vmov	s13, r0
  338f36: ed9d 7a04    	vldr	s14, [sp, #16]
  338f3a: eef3 7a04    	vmov.f32	s15, #2.000000e+01
  338f3e: ee67 7a27    	vmul.f32	s15, s14, s15
  338f42: ee76 7aa7    	vadd.f32	s15, s13, s15
  338f46: 4628         	mov	r0, r5
  338f48: ee17 1a90    	vmov	r1, s15
  338f4c: 47a0         	blx	r4
  338f4e: 9b05         	ldr	r3, [sp, #0x14]
  338f50: ed93 7a3c    	vldr	s14, [r3, #240]
  338f54: eef3 7a00    	vmov.f32	s15, #1.600000e+01
  338f58: eeb4 7ae7    	vcmpe.f32	s14, s15
  338f5c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  338f60: d50b         	bpl	0x338f7a <GasCloud::updateStep(float)+0x2c2> @ imm = #0x16
  338f62: 9b05         	ldr	r3, [sp, #0x14]
  338f64: 681b         	ldr	r3, [r3]
  338f66: 3394         	adds	r3, #0x94
  338f68: 681b         	ldr	r3, [r3]
  338f6a: 9a05         	ldr	r2, [sp, #0x14]
  338f6c: 4610         	mov	r0, r2
  338f6e: 4798         	blx	r3
  338f70: 4603         	mov	r3, r0
  338f72: 2b00         	cmp	r3, #0x0
  338f74: d001         	beq	0x338f7a <GasCloud::updateStep(float)+0x2c2> @ imm = #0x2
  338f76: 2301         	movs	r3, #0x1
  338f78: e000         	b	0x338f7c <GasCloud::updateStep(float)+0x2c4> @ imm = #0x0
  338f7a: 2300         	movs	r3, #0x0
  338f7c: 2b00         	cmp	r3, #0x0
  338f7e: d04c         	beq	0x33901a <GasCloud::updateStep(float)+0x362> @ imm = #0x98
  338f80: 9805         	ldr	r0, [sp, #0x14]
  338f82: 9904         	ldr	r1, [sp, #0x10]
  338f84: f7ff fda8    	bl	0x338ad8 <GasCloud::applyDamage(float)> @ imm = #-0x4b0
  338f88: e047         	b	0x33901a <GasCloud::updateStep(float)+0x362> @ imm = #0x8e
  338f8a: 9b05         	ldr	r3, [sp, #0x14]
  338f8c: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  338f90: 681b         	ldr	r3, [r3]
  338f92: 3340         	adds	r3, #0x40
  338f94: 681c         	ldr	r4, [r3]
  338f96: 9b05         	ldr	r3, [sp, #0x14]
  338f98: f8d3 50e8    	ldr.w	r5, [r3, #0xe8]
  338f9c: 9b05         	ldr	r3, [sp, #0x14]
  338f9e: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  338fa2: 681b         	ldr	r3, [r3]
  338fa4: 3344         	adds	r3, #0x44
  338fa6: 681b         	ldr	r3, [r3]
  338fa8: 9a05         	ldr	r2, [sp, #0x14]
  338faa: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  338fae: 4610         	mov	r0, r2
  338fb0: 4798         	blx	r3
  338fb2: ee06 0a90    	vmov	s13, r0
  338fb6: ed9d 7a04    	vldr	s14, [sp, #16]
  338fba: eef2 7a04    	vmov.f32	s15, #1.000000e+01
  338fbe: ee67 7a27    	vmul.f32	s15, s14, s15
  338fc2: ee76 7aa7    	vadd.f32	s15, s13, s15
  338fc6: 4628         	mov	r0, r5
  338fc8: ee17 1a90    	vmov	r1, s15
  338fcc: 47a0         	blx	r4
  338fce: 9b05         	ldr	r3, [sp, #0x14]
  338fd0: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  338fd4: 681b         	ldr	r3, [r3]
  338fd6: 3340         	adds	r3, #0x40
  338fd8: 681c         	ldr	r4, [r3]
  338fda: 9b05         	ldr	r3, [sp, #0x14]
  338fdc: f8d3 50e4    	ldr.w	r5, [r3, #0xe4]
  338fe0: 9b05         	ldr	r3, [sp, #0x14]
  338fe2: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  338fe6: 681b         	ldr	r3, [r3]
  338fe8: 3344         	adds	r3, #0x44
  338fea: 681b         	ldr	r3, [r3]
  338fec: 9a05         	ldr	r2, [sp, #0x14]
  338fee: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  338ff2: 4610         	mov	r0, r2
  338ff4: 4798         	blx	r3
  338ff6: ee07 0a90    	vmov	s15, r0
  338ffa: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  338ffe: ed9f 7b0e    	vldr	d7, [pc, #56]           @ 0x339038 <GasCloud::updateStep(float)+0x380>
  339002: ee26 6b07    	vmul.f64	d6, d6, d7
  339006: ed9f 7b0e    	vldr	d7, [pc, #56]           @ 0x339040 <GasCloud::updateStep(float)+0x388>
  33900a: ee36 7b07    	vadd.f64	d7, d6, d7
  33900e: eef7 7bc7    	vcvt.f32.f64	s15, d7
  339012: 4628         	mov	r0, r5
  339014: ee17 1a90    	vmov	r1, s15
  339018: 47a0         	blx	r4
  33901a: b00f         	add	sp, #0x3c
  33901c: ecbd 8b02    	vpop	{d8}
  339020: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x339021); words below are literal-pool data ---
  339022: bf00         	nop
  339024: f3af 8000    	nop.w
  339028: 0000         	movs	r0, r0
  33902a: 0000         	movs	r0, r0
  33902c: c000         	<unknown>
  33902e: 4062         	eors	r2, r4
  339030: 3333         	adds	r3, #0x33
  339032: 3333         	adds	r3, #0x33
  339034: 3333         	adds	r3, #0x33
  339036: 3fc3         	subs	r7, #0xc3
  339038: 3333         	adds	r3, #0x33
  33903a: 3333         	adds	r3, #0x33
  33903c: 3333         	adds	r3, #0x33
  33903e: 3fd3         	subs	r7, #0xd3
  339040: 999a         	ldr	r1, [sp, #0x268]
  339042: 9999         	ldr	r1, [sp, #0x264]
  339044: 9999         	ldr	r1, [sp, #0x264]
  339046: 3fc9         	subs	r7, #0xc9
