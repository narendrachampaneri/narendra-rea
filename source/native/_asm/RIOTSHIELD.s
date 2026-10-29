// RIOTSHIELD: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 24 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../RIOTSHIELD.cpp

// ==== RIOTSHIELD::RIOTSHIELD
//      file offset 0x3b9848 (= ELF address; Ghidra 0x3c9848), 44 bytes, Thumb-2
  3b9848: b510         	push	{r4, lr}
  3b984a: b082         	sub	sp, #0x8
  3b984c: 9001         	str	r0, [sp, #0x4]
  3b984e: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x3b986c <RIOTSHIELD::RIOTSHIELD()+0x24>
  3b9850: 447c         	add	r4, pc
  3b9852: 9b01         	ldr	r3, [sp, #0x4]
  3b9854: 4618         	mov	r0, r3
  3b9856: f05b fba7    	bl	0x414fa8 <Weapon::Weapon()> @ imm = #0x5b74e
  3b985a: 9b01         	ldr	r3, [sp, #0x4]
  3b985c: 4a04         	ldr	r2, [pc, #0x10]         @ 0x3b9870 <RIOTSHIELD::RIOTSHIELD()+0x28>
  3b985e: 58a2         	ldr	r2, [r4, r2]
  3b9860: 3208         	adds	r2, #0x8
  3b9862: 601a         	str	r2, [r3]
  3b9864: 9b01         	ldr	r3, [sp, #0x4]
  3b9866: 4618         	mov	r0, r3
  3b9868: b002         	add	sp, #0x8
  3b986a: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3b986b); words below are literal-pool data ---
  3b986c: 91b8         	str	r1, [sp, #0x2e0]
  3b986e: 0057         	lsls	r7, r2, #0x1
  3b9870: de24         	udf	#0x24
  3b9872: ffff 0000    	<unknown>

// ==== RIOTSHIELD::init
//      file offset 0x3b9878 (= ELF address; Ghidra 0x3c9878), 496 bytes, Thumb-2
  3b9878: b510         	push	{r4, lr}
  3b987a: b088         	sub	sp, #0x20
  3b987c: 9005         	str	r0, [sp, #0x14]
  3b987e: 9b05         	ldr	r3, [sp, #0x14]
  3b9880: 4618         	mov	r0, r3
  3b9882: f05b fbb5    	bl	0x414ff0 <Weapon::init()> @ imm = #0x5b76a
  3b9886: 4603         	mov	r3, r0
  3b9888: f88d 301b    	strb.w	r3, [sp, #0x1b]
  3b988c: f89d 301b    	ldrb.w	r3, [sp, #0x1b]
  3b9890: f083 0301    	eor	r3, r3, #0x1
  3b9894: b2db         	uxtb	r3, r3
  3b9896: 2b00         	cmp	r3, #0x0
  3b9898: d001         	beq	0x3b989e <RIOTSHIELD::init()+0x26> @ imm = #0x2
  3b989a: 2300         	movs	r3, #0x0
  3b989c: e0d8         	b	0x3b9a50 <RIOTSHIELD::init()+0x1d8> @ imm = #0x1b0
  3b989e: 4b70         	ldr	r3, [pc, #0x1c0]        @ 0x3b9a60 <RIOTSHIELD::init()+0x1e8>
  3b98a0: 447b         	add	r3, pc
  3b98a2: 4618         	mov	r0, r3
  3b98a4: f21e fd2e    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x21ea5c
  3b98a8: 4602         	mov	r2, r0
  3b98aa: 9b05         	ldr	r3, [sp, #0x14]
  3b98ac: f8c3 21ec    	str.w	r2, [r3, #0x1ec]
  3b98b0: 9b05         	ldr	r3, [sp, #0x14]
  3b98b2: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3b98b6: 4618         	mov	r0, r3
  3b98b8: f1de fb16    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1de62c
  3b98bc: 9b05         	ldr	r3, [sp, #0x14]
  3b98be: 2200         	movs	r2, #0x0
  3b98c0: f883 21f8    	strb.w	r2, [r3, #0x1f8]
  3b98c4: 9b05         	ldr	r3, [sp, #0x14]
  3b98c6: 681b         	ldr	r3, [r3]
  3b98c8: f503 73f0    	add.w	r3, r3, #0x1e0
  3b98cc: 681b         	ldr	r3, [r3]
  3b98ce: 9805         	ldr	r0, [sp, #0x14]
  3b98d0: 4798         	blx	r3
  3b98d2: 9b05         	ldr	r3, [sp, #0x14]
  3b98d4: 681b         	ldr	r3, [r3]
  3b98d6: 33cc         	adds	r3, #0xcc
  3b98d8: 681b         	ldr	r3, [r3]
  3b98da: 9905         	ldr	r1, [sp, #0x14]
  3b98dc: 9a05         	ldr	r2, [sp, #0x14]
  3b98de: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3b98e2: 4608         	mov	r0, r1
  3b98e4: 4611         	mov	r1, r2
  3b98e6: 2200         	movs	r2, #0x0
  3b98e8: 4798         	blx	r3
  3b98ea: 9b05         	ldr	r3, [sp, #0x14]
  3b98ec: f8d3 4150    	ldr.w	r4, [r3, #0x150]
  3b98f0: f04f 507e    	mov.w	r0, #0x3f800000
  3b98f4: f723 f9c6    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xdcc74
  3b98f8: 4603         	mov	r3, r0
  3b98fa: 4620         	mov	r0, r4
  3b98fc: 4619         	mov	r1, r3
  3b98fe: f1e0 fcb5    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x1e096a
  3b9902: 9b05         	ldr	r3, [sp, #0x14]
  3b9904: f8d3 414c    	ldr.w	r4, [r3, #0x14c]
  3b9908: ab06         	add	r3, sp, #0x18
  3b990a: 4618         	mov	r0, r3
  3b990c: f3d0 fd72    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3d0ae4
  3b9910: aa07         	add	r2, sp, #0x1c
  3b9912: ab06         	add	r3, sp, #0x18
  3b9914: 4610         	mov	r0, r2
  3b9916: 4a53         	ldr	r2, [pc, #0x14c]        @ 0x3b9a64 <RIOTSHIELD::init()+0x1ec>
  3b9918: 447a         	add	r2, pc
  3b991a: 4611         	mov	r1, r2
  3b991c: 461a         	mov	r2, r3
  3b991e: f3fd f89f    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3fd13e
  3b9922: ab07         	add	r3, sp, #0x1c
  3b9924: 4618         	mov	r0, r3
  3b9926: f1e0 f889    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1e0112
  3b992a: 4603         	mov	r3, r0
  3b992c: 4620         	mov	r0, r4
  3b992e: 4619         	mov	r1, r3
  3b9930: f1e0 fc9c    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x1e0938
  3b9934: ab07         	add	r3, sp, #0x1c
  3b9936: 4618         	mov	r0, r3
  3b9938: f3fb ffec    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3fbfd8
  3b993c: ab06         	add	r3, sp, #0x18
  3b993e: 4618         	mov	r0, r3
  3b9940: f3d0 fd5c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3d0ab8
  3b9944: 9b05         	ldr	r3, [sp, #0x14]
  3b9946: 2200         	movs	r2, #0x0
  3b9948: f8c3 2144    	str.w	r2, [r3, #0x144]
  3b994c: 9b05         	ldr	r3, [sp, #0x14]
  3b994e: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3b9952: 4618         	mov	r0, r3
  3b9954: 2100         	movs	r1, #0x0
  3b9956: f1e0 fbe3    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1e07c6
  3b995a: 4603         	mov	r3, r0
  3b995c: 4618         	mov	r0, r3
  3b995e: f723 f989    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0xdccee
  3b9962: 4602         	mov	r2, r0
  3b9964: 9b05         	ldr	r3, [sp, #0x14]
  3b9966: f8c3 2148    	str.w	r2, [r3, #0x148]
  3b996a: 9b05         	ldr	r3, [sp, #0x14]
  3b996c: f649 129a    	movw	r2, #0x999a
  3b9970: f6c3 7219    	movt	r2, #0x3f19
  3b9974: f8c3 215c    	str.w	r2, [r3, #0x15c]
  3b9978: 9b05         	ldr	r3, [sp, #0x14]
  3b997a: f04f 4280    	mov.w	r2, #0x40000000
  3b997e: f8c3 2160    	str.w	r2, [r3, #0x160]
  3b9982: 9b05         	ldr	r3, [sp, #0x14]
  3b9984: f04f 527e    	mov.w	r2, #0x3f800000
  3b9988: f8c3 2164    	str.w	r2, [r3, #0x164]
  3b998c: 9b05         	ldr	r3, [sp, #0x14]
  3b998e: f04f 0200    	mov.w	r2, #0x0
  3b9992: f2c4 12c8    	movt	r2, #0x41c8
  3b9996: f8c3 216c    	str.w	r2, [r3, #0x16c]
  3b999a: 9b05         	ldr	r3, [sp, #0x14]
  3b999c: 2201         	movs	r2, #0x1
  3b999e: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  3b99a2: 9b05         	ldr	r3, [sp, #0x14]
  3b99a4: 2201         	movs	r2, #0x1
  3b99a6: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  3b99aa: 9b05         	ldr	r3, [sp, #0x14]
  3b99ac: 2228         	movs	r2, #0x28
  3b99ae: f8c3 218c    	str.w	r2, [r3, #0x18c]
  3b99b2: 9b05         	ldr	r3, [sp, #0x14]
  3b99b4: 220d         	movs	r2, #0xd
  3b99b6: f8c3 2188    	str.w	r2, [r3, #0x188]
  3b99ba: 9b05         	ldr	r3, [sp, #0x14]
  3b99bc: 2264         	movs	r2, #0x64
  3b99be: f8c3 219c    	str.w	r2, [r3, #0x19c]
  3b99c2: 9b05         	ldr	r3, [sp, #0x14]
  3b99c4: 2228         	movs	r2, #0x28
  3b99c6: f8c3 21a0    	str.w	r2, [r3, #0x1a0]
  3b99ca: 9b05         	ldr	r3, [sp, #0x14]
  3b99cc: 2200         	movs	r2, #0x0
  3b99ce: f8c3 21a4    	str.w	r2, [r3, #0x1a4]
  3b99d2: 9b05         	ldr	r3, [sp, #0x14]
  3b99d4: 2201         	movs	r2, #0x1
  3b99d6: f883 21b0    	strb.w	r2, [r3, #0x1b0]
  3b99da: 9b05         	ldr	r3, [sp, #0x14]
  3b99dc: 2201         	movs	r2, #0x1
  3b99de: f883 2183    	strb.w	r2, [r3, #0x183]
  3b99e2: 9b05         	ldr	r3, [sp, #0x14]
  3b99e4: 2201         	movs	r2, #0x1
  3b99e6: f883 2182    	strb.w	r2, [r3, #0x182]
  3b99ea: 9b05         	ldr	r3, [sp, #0x14]
  3b99ec: 2201         	movs	r2, #0x1
  3b99ee: f883 2185    	strb.w	r2, [r3, #0x185]
  3b99f2: 9b05         	ldr	r3, [sp, #0x14]
  3b99f4: f649 129a    	movw	r2, #0x999a
  3b99f8: f6c3 7259    	movt	r2, #0x3f59
  3b99fc: f8c3 21cc    	str.w	r2, [r3, #0x1cc]
  3b9a00: 9b05         	ldr	r3, [sp, #0x14]
  3b9a02: 2200         	movs	r2, #0x0
  3b9a04: f8c3 2170    	str.w	r2, [r3, #0x170]
  3b9a08: 9b05         	ldr	r3, [sp, #0x14]
  3b9a0a: 2200         	movs	r2, #0x0
  3b9a0c: f8c3 2174    	str.w	r2, [r3, #0x174]
  3b9a10: 9c05         	ldr	r4, [sp, #0x14]
  3b9a12: 466b         	mov	r3, sp
  3b9a14: 4618         	mov	r0, r3
  3b9a16: ed9f 0b10    	vldr	d0, [pc, #64]           @ 0x3b9a58 <RIOTSHIELD::init()+0x1e0>
  3b9a1a: eeb2 1b0e    	vmov.f64	d1, #1.500000e+01
  3b9a1e: f7ff f821    	bl	0x3b8a64 <PurchaseLayer::onBack(cocos2d::CCObject*)+0x210> @ imm = #-0xfbe
  3b9a22: f504 74ec    	add.w	r4, r4, #0x1d8
  3b9a26: 466b         	mov	r3, sp
  3b9a28: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3b9a2a: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3b9a2e: 9b05         	ldr	r3, [sp, #0x14]
  3b9a30: 2200         	movs	r2, #0x0
  3b9a32: f8c3 2198    	str.w	r2, [r3, #0x198]
  3b9a36: 2301         	movs	r3, #0x1
  3b9a38: e00a         	b	0x3b9a50 <RIOTSHIELD::init()+0x1d8> @ imm = #0x14
  3b9a3a: ab07         	add	r3, sp, #0x1c
  3b9a3c: 4618         	mov	r0, r3
  3b9a3e: f3fb ff69    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3fbed2
  3b9a42: e7ff         	b	0x3b9a44 <RIOTSHIELD::init()+0x1cc> @ imm = #-0x2
  3b9a44: ab06         	add	r3, sp, #0x18
  3b9a46: 4618         	mov	r0, r3
  3b9a48: f3d0 fcd8    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3d09b0
  3b9a4c: f3ce fb2e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3ce65c
  3b9a50: 4618         	mov	r0, r3
  3b9a52: b008         	add	sp, #0x20
  3b9a54: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3b9a55); words below are literal-pool data ---
  3b9a56: bf00         	nop
  3b9a58: 0000         	movs	r0, r0
  3b9a5a: 0000         	movs	r0, r0
  3b9a5c: 4000         	ands	r0, r0
  3b9a5e: 405a         	eors	r2, r3
  3b9a60: af7c         	add	r7, sp, #0x1f0
  3b9a62: 0041         	lsls	r1, r0, #0x1
  3b9a64: af10         	add	r7, sp, #0x40
  3b9a66: 0041         	lsls	r1, r0, #0x1

// ==== RIOTSHIELD::~RIOTSHIELD
//      file offset 0x3b9a68 (= ELF address; Ghidra 0x3c9a68), 108 bytes, Thumb-2
  3b9a68: b500         	push	{lr}
  3b9a6a: b083         	sub	sp, #0xc
  3b9a6c: 9001         	str	r0, [sp, #0x4]
  3b9a6e: 4917         	ldr	r1, [pc, #0x5c]         @ 0x3b9acc <RIOTSHIELD::~RIOTSHIELD()+0x64>
  3b9a70: 4479         	add	r1, pc
  3b9a72: 9b01         	ldr	r3, [sp, #0x4]
  3b9a74: 4a16         	ldr	r2, [pc, #0x58]         @ 0x3b9ad0 <RIOTSHIELD::~RIOTSHIELD()+0x68>
  3b9a76: 588a         	ldr	r2, [r1, r2]
  3b9a78: 3208         	adds	r2, #0x8
  3b9a7a: 601a         	str	r2, [r3]
  3b9a7c: 9b01         	ldr	r3, [sp, #0x4]
  3b9a7e: 4618         	mov	r0, r3
  3b9a80: f1d6 fdd4    	bl	0x59062c <cocos2d::CCNode::removeAllChildren()> @ imm = #0x1d6ba8
  3b9a84: 9801         	ldr	r0, [sp, #0x4]
  3b9a86: f000 f865    	bl	0x3b9b54 <RIOTSHIELD::removeBodyShape2()> @ imm = #0xca
  3b9a8a: 9b01         	ldr	r3, [sp, #0x4]
  3b9a8c: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3b9a90: 4618         	mov	r0, r3
  3b9a92: f1de fa11    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1de422
  3b9a96: 9b01         	ldr	r3, [sp, #0x4]
  3b9a98: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3b9a9c: 4618         	mov	r0, r3
  3b9a9e: f31b faa5    	bl	0x6d4fec <cpShapeFree>  @ imm = #0x31b54a
  3b9aa2: 9b01         	ldr	r3, [sp, #0x4]
  3b9aa4: f8d3 31f4    	ldr.w	r3, [r3, #0x1f4]
  3b9aa8: 4618         	mov	r0, r3
  3b9aaa: f319 fb51    	bl	0x6d3150 <cpBodyFree>   @ imm = #0x3196a2
  3b9aae: 9b01         	ldr	r3, [sp, #0x4]
  3b9ab0: 4618         	mov	r0, r3
  3b9ab2: f05b fb9d    	bl	0x4151f0 <Weapon::~Weapon()> @ imm = #0x5b73a
  3b9ab6: 2300         	movs	r3, #0x0
  3b9ab8: 2b00         	cmp	r3, #0x0
  3b9aba: d002         	beq	0x3b9ac2 <RIOTSHIELD::~RIOTSHIELD()+0x5a> @ imm = #0x4
  3b9abc: 9801         	ldr	r0, [sp, #0x4]
  3b9abe: f3ce faf1    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3ce5e2
  3b9ac2: 9b01         	ldr	r3, [sp, #0x4]
  3b9ac4: 4618         	mov	r0, r3
  3b9ac6: b003         	add	sp, #0xc
  3b9ac8: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3b9acb); words below are literal-pool data ---
  3b9acc: 8f98         	ldrh	r0, [r3, #0x3c]
  3b9ace: 0057         	lsls	r7, r2, #0x1
  3b9ad0: de24         	udf	#0x24
  3b9ad2: ffff b500    	<unknown>

// ==== RIOTSHIELD::~RIOTSHIELD
//      file offset 0x3b9ad4 (= ELF address; Ghidra 0x3c9ad4), 28 bytes, Thumb-2
  3b9ad4: b500         	push	{lr}
  3b9ad6: b083         	sub	sp, #0xc
  3b9ad8: 9001         	str	r0, [sp, #0x4]
  3b9ada: 9801         	ldr	r0, [sp, #0x4]
  3b9adc: f7ff ffc4    	bl	0x3b9a68 <RIOTSHIELD::~RIOTSHIELD()> @ imm = #-0x78
  3b9ae0: 9801         	ldr	r0, [sp, #0x4]
  3b9ae2: f3ce fadf    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3ce5be
  3b9ae6: 9b01         	ldr	r3, [sp, #0x4]
  3b9ae8: 4618         	mov	r0, r3
  3b9aea: b003         	add	sp, #0xc
  3b9aec: f85d fb04    	ldr	pc, [sp], #4

// ==== RIOTSHIELD::addBodyShape2
//      file offset 0x3b9af0 (= ELF address; Ghidra 0x3c9af0), 100 bytes, Thumb-2
  3b9af0: b510         	push	{r4, lr}
  3b9af2: b082         	sub	sp, #0x8
  3b9af4: 9001         	str	r0, [sp, #0x4]
  3b9af6: 4c15         	ldr	r4, [pc, #0x54]         @ 0x3b9b4c <RIOTSHIELD::addBodyShape2()+0x5c>
  3b9af8: 447c         	add	r4, pc
  3b9afa: 9b01         	ldr	r3, [sp, #0x4]
  3b9afc: f8d3 31f4    	ldr.w	r3, [r3, #0x1f4]
  3b9b00: 9a01         	ldr	r2, [sp, #0x4]
  3b9b02: f8c3 2090    	str.w	r2, [r3, #0x90]
  3b9b06: 9b01         	ldr	r3, [sp, #0x4]
  3b9b08: f893 31f8    	ldrb.w	r3, [r3, #0x1f8]
  3b9b0c: f083 0301    	eor	r3, r3, #0x1
  3b9b10: b2db         	uxtb	r3, r3
  3b9b12: 2b00         	cmp	r3, #0x0
  3b9b14: d017         	beq	0x3b9b46 <RIOTSHIELD::addBodyShape2()+0x56> @ imm = #0x2e
  3b9b16: 9b01         	ldr	r3, [sp, #0x4]
  3b9b18: 2201         	movs	r2, #0x1
  3b9b1a: f883 21f8    	strb.w	r2, [r3, #0x1f8]
  3b9b1e: 4b0c         	ldr	r3, [pc, #0x30]         @ 0x3b9b50 <RIOTSHIELD::addBodyShape2()+0x60>
  3b9b20: 58e3         	ldr	r3, [r4, r3]
  3b9b22: 681a         	ldr	r2, [r3]
  3b9b24: 9b01         	ldr	r3, [sp, #0x4]
  3b9b26: f8d3 31f4    	ldr.w	r3, [r3, #0x1f4]
  3b9b2a: 4610         	mov	r0, r2
  3b9b2c: 4619         	mov	r1, r3
  3b9b2e: f31c f931    	bl	0x6d5d94 <cpSpaceAddBody> @ imm = #0x31c262
  3b9b32: 4b07         	ldr	r3, [pc, #0x1c]         @ 0x3b9b50 <RIOTSHIELD::addBodyShape2()+0x60>
  3b9b34: 58e3         	ldr	r3, [r4, r3]
  3b9b36: 681a         	ldr	r2, [r3]
  3b9b38: 9b01         	ldr	r3, [sp, #0x4]
  3b9b3a: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3b9b3e: 4610         	mov	r0, r2
  3b9b40: 4619         	mov	r1, r3
  3b9b42: f31c fb61    	bl	0x6d6208 <cpSpaceAddShape> @ imm = #0x31c6c2
  3b9b46: b002         	add	sp, #0x8
  3b9b48: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3b9b49); words below are literal-pool data ---
  3b9b4a: bf00         	nop
  3b9b4c: 8f10         	ldrh	r0, [r2, #0x38]
  3b9b4e: 0057         	lsls	r7, r2, #0x1
  3b9b50: da00         	bge	0x3b9b54 <RIOTSHIELD::removeBodyShape2()> @ imm = #0x0
  3b9b52: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== RIOTSHIELD::removeBodyShape2
//      file offset 0x3b9b54 (= ELF address; Ghidra 0x3c9b54), 92 bytes, Thumb-2
  3b9b54: b510         	push	{r4, lr}
  3b9b56: b082         	sub	sp, #0x8
  3b9b58: 9001         	str	r0, [sp, #0x4]
  3b9b5a: 4c13         	ldr	r4, [pc, #0x4c]         @ 0x3b9ba8 <RIOTSHIELD::removeBodyShape2()+0x54>
  3b9b5c: 447c         	add	r4, pc
  3b9b5e: 9b01         	ldr	r3, [sp, #0x4]
  3b9b60: f8d3 31f4    	ldr.w	r3, [r3, #0x1f4]
  3b9b64: 2200         	movs	r2, #0x0
  3b9b66: f8c3 2090    	str.w	r2, [r3, #0x90]
  3b9b6a: 9b01         	ldr	r3, [sp, #0x4]
  3b9b6c: f893 31f8    	ldrb.w	r3, [r3, #0x1f8]
  3b9b70: 2b00         	cmp	r3, #0x0
  3b9b72: d017         	beq	0x3b9ba4 <RIOTSHIELD::removeBodyShape2()+0x50> @ imm = #0x2e
  3b9b74: 9b01         	ldr	r3, [sp, #0x4]
  3b9b76: 2200         	movs	r2, #0x0
  3b9b78: f883 21f8    	strb.w	r2, [r3, #0x1f8]
  3b9b7c: 4b0b         	ldr	r3, [pc, #0x2c]         @ 0x3b9bac <RIOTSHIELD::removeBodyShape2()+0x58>
  3b9b7e: 58e3         	ldr	r3, [r4, r3]
  3b9b80: 681a         	ldr	r2, [r3]
  3b9b82: 9b01         	ldr	r3, [sp, #0x4]
  3b9b84: f8d3 31f4    	ldr.w	r3, [r3, #0x1f4]
  3b9b88: 4610         	mov	r0, r2
  3b9b8a: 4619         	mov	r1, r3
  3b9b8c: f31c fbaf    	bl	0x6d62ee <cpSpaceRemoveBody> @ imm = #0x31c75e
  3b9b90: 4b06         	ldr	r3, [pc, #0x18]         @ 0x3b9bac <RIOTSHIELD::removeBodyShape2()+0x58>
  3b9b92: 58e3         	ldr	r3, [r4, r3]
  3b9b94: 681a         	ldr	r2, [r3]
  3b9b96: 9b01         	ldr	r3, [sp, #0x4]
  3b9b98: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3b9b9c: 4610         	mov	r0, r2
  3b9b9e: 4619         	mov	r1, r3
  3b9ba0: f31c fb6c    	bl	0x6d627c <cpSpaceRemoveShape> @ imm = #0x31c6d8
  3b9ba4: b002         	add	sp, #0x8
  3b9ba6: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3b9ba7); words below are literal-pool data ---
  3b9ba8: 8eac         	ldrh	r4, [r5, #0x34]
  3b9baa: 0057         	lsls	r7, r2, #0x1
  3b9bac: da00         	bge	0x3b9bb0 <RIOTSHIELD::removeBodyShape()> @ imm = #0x0
  3b9bae: ffff b500    	<unknown>

// ==== RIOTSHIELD::removeBodyShape
//      file offset 0x3b9bb0 (= ELF address; Ghidra 0x3c9bb0), 26 bytes, Thumb-2
  3b9bb0: b500         	push	{lr}
  3b9bb2: b083         	sub	sp, #0xc
  3b9bb4: 9001         	str	r0, [sp, #0x4]
  3b9bb6: 9b01         	ldr	r3, [sp, #0x4]
  3b9bb8: 4618         	mov	r0, r3
  3b9bba: f78e fa23    	bl	0x348004 <Item::removeBodyShape()> @ imm = #-0x71bba
  3b9bbe: 9801         	ldr	r0, [sp, #0x4]
  3b9bc0: f7ff ffc8    	bl	0x3b9b54 <RIOTSHIELD::removeBodyShape2()> @ imm = #-0x70
  3b9bc4: b003         	add	sp, #0xc
  3b9bc6: f85d fb04    	ldr	pc, [sp], #4

// ==== RIOTSHIELD::initBody
//      file offset 0x3b9bd0 (= ELF address; Ghidra 0x3c9bd0), 428 bytes, Thumb-2
  3b9bd0: b570         	push	{r4, r5, r6, lr}
  3b9bd2: b09a         	sub	sp, #0x68
  3b9bd4: 9005         	str	r0, [sp, #0x14]
  3b9bd6: 4c65         	ldr	r4, [pc, #0x194]        @ 0x3b9d6c <RIOTSHIELD::initBody()+0x19c>
  3b9bd8: 447c         	add	r4, pc
  3b9bda: 9b05         	ldr	r3, [sp, #0x14]
  3b9bdc: 4618         	mov	r0, r3
  3b9bde: f05b fb4b    	bl	0x415278 <Weapon::initBody()> @ imm = #0x5b696
  3b9be2: f64c 43cd    	movw	r3, #0xcccd
  3b9be6: f6c3 53cc    	movt	r3, #0x3dcc
  3b9bea: 9306         	str	r3, [sp, #0x18]
  3b9bec: eddd 7a06    	vldr	s15, [sp, #24]
  3b9bf0: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3b9bf4: ec51 0b17    	vmov	r0, r1, d7
  3b9bf8: f04f 0200    	mov.w	r2, #0x0
  3b9bfc: f04f 0300    	mov.w	r3, #0x0
  3b9c00: f2c4 0314    	movt	r3, #0x4014
  3b9c04: f319 fb22    	bl	0x6d324c <cpBodyNew>    @ imm = #0x319644
  3b9c08: 4602         	mov	r2, r0
  3b9c0a: 9b05         	ldr	r3, [sp, #0x14]
  3b9c0c: f8c3 21f4    	str.w	r2, [r3, #0x1f4]
  3b9c10: 9b05         	ldr	r3, [sp, #0x14]
  3b9c12: f8d3 31f4    	ldr.w	r3, [r3, #0x1f4]
  3b9c16: 4a56         	ldr	r2, [pc, #0x158]        @ 0x3b9d70 <RIOTSHIELD::initBody()+0x1a0>
  3b9c18: 447a         	add	r2, pc
  3b9c1a: 601a         	str	r2, [r3]
  3b9c1c: 9b05         	ldr	r3, [sp, #0x14]
  3b9c1e: f8d3 31f4    	ldr.w	r3, [r3, #0x1f4]
  3b9c22: 9a05         	ldr	r2, [sp, #0x14]
  3b9c24: f8c3 2090    	str.w	r2, [r3, #0x90]
  3b9c28: 4b52         	ldr	r3, [pc, #0x148]        @ 0x3b9d74 <RIOTSHIELD::initBody()+0x1a4>
  3b9c2a: 58e3         	ldr	r3, [r4, r3]
  3b9c2c: 681b         	ldr	r3, [r3]
  3b9c2e: 9307         	str	r3, [sp, #0x1c]
  3b9c30: ed9d 7a07    	vldr	s14, [sp, #28]
  3b9c34: eddf 7a4c    	vldr	s15, [pc, #304]         @ 0x3b9d68 <RIOTSHIELD::initBody()+0x198>
  3b9c38: ee67 7a27    	vmul.f32	s15, s14, s15
  3b9c3c: edcd 7a08    	vstr	s15, [sp, #32]
  3b9c40: ed9d 7a07    	vldr	s14, [sp, #28]
  3b9c44: eef1 7a0c    	vmov.f32	s15, #7.000000e+00
  3b9c48: ee67 7a27    	vmul.f32	s15, s14, s15
  3b9c4c: edcd 7a09    	vstr	s15, [sp, #36]
  3b9c50: eddd 7a09    	vldr	s15, [sp, #36]
  3b9c54: eef1 7a67    	vneg.f32	s15, s15
  3b9c58: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3b9c5c: eddd 7a08    	vldr	s15, [sp, #32]
  3b9c60: eef1 7a67    	vneg.f32	s15, s15
  3b9c64: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3b9c68: ab0a         	add	r3, sp, #0x28
  3b9c6a: 4618         	mov	r0, r3
  3b9c6c: eeb0 0b46    	vmov.f64	d0, d6
  3b9c70: eeb0 1b47    	vmov.f64	d1, d7
  3b9c74: f7fe fef6    	bl	0x3b8a64 <PurchaseLayer::onBack(cocos2d::CCObject*)+0x210> @ imm = #-0x1214
  3b9c78: eddd 7a09    	vldr	s15, [sp, #36]
  3b9c7c: eef1 7a67    	vneg.f32	s15, s15
  3b9c80: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3b9c84: eddd 7a08    	vldr	s15, [sp, #32]
  3b9c88: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3b9c8c: ab0e         	add	r3, sp, #0x38
  3b9c8e: 4618         	mov	r0, r3
  3b9c90: eeb0 0b46    	vmov.f64	d0, d6
  3b9c94: eeb0 1b47    	vmov.f64	d1, d7
  3b9c98: f7fe fee4    	bl	0x3b8a64 <PurchaseLayer::onBack(cocos2d::CCObject*)+0x210> @ imm = #-0x1238
  3b9c9c: eddd 7a09    	vldr	s15, [sp, #36]
  3b9ca0: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3b9ca4: eddd 7a08    	vldr	s15, [sp, #32]
  3b9ca8: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3b9cac: ab12         	add	r3, sp, #0x48
  3b9cae: 4618         	mov	r0, r3
  3b9cb0: eeb0 0b46    	vmov.f64	d0, d6
  3b9cb4: eeb0 1b47    	vmov.f64	d1, d7
  3b9cb8: f7fe fed4    	bl	0x3b8a64 <PurchaseLayer::onBack(cocos2d::CCObject*)+0x210> @ imm = #-0x1258
  3b9cbc: eddd 7a09    	vldr	s15, [sp, #36]
  3b9cc0: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3b9cc4: eddd 7a08    	vldr	s15, [sp, #32]
  3b9cc8: eef1 7a67    	vneg.f32	s15, s15
  3b9ccc: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3b9cd0: ab16         	add	r3, sp, #0x58
  3b9cd2: 4618         	mov	r0, r3
  3b9cd4: eeb0 0b46    	vmov.f64	d0, d6
  3b9cd8: eeb0 1b47    	vmov.f64	d1, d7
  3b9cdc: f7fe fec2    	bl	0x3b8a64 <PurchaseLayer::onBack(cocos2d::CCObject*)+0x210> @ imm = #-0x127c
  3b9ce0: 9b05         	ldr	r3, [sp, #0x14]
  3b9ce2: f8d3 61f4    	ldr.w	r6, [r3, #0x1f4]
  3b9ce6: ad0a         	add	r5, sp, #0x28
  3b9ce8: 4b23         	ldr	r3, [pc, #0x8c]         @ 0x3b9d78 <RIOTSHIELD::initBody()+0x1a8>
  3b9cea: 447b         	add	r3, pc
  3b9cec: 466c         	mov	r4, sp
  3b9cee: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3b9cf0: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3b9cf4: 4630         	mov	r0, r6
  3b9cf6: 2104         	movs	r1, #0x4
  3b9cf8: 462a         	mov	r2, r5
  3b9cfa: f31a fe27    	bl	0x6d494c <cpPolyShapeNew> @ imm = #0x31ac4e
  3b9cfe: 4602         	mov	r2, r0
  3b9d00: 9b05         	ldr	r3, [sp, #0x14]
  3b9d02: f8c3 21f0    	str.w	r2, [r3, #0x1f0]
  3b9d06: 9b05         	ldr	r3, [sp, #0x14]
  3b9d08: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3b9d0c: 220d         	movs	r2, #0xd
  3b9d0e: 655a         	str	r2, [r3, #0x54]
  3b9d10: 9b05         	ldr	r3, [sp, #0x14]
  3b9d12: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3b9d16: 220d         	movs	r2, #0xd
  3b9d18: 65da         	str	r2, [r3, #0x5c]
  3b9d1a: 9b05         	ldr	r3, [sp, #0x14]
  3b9d1c: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3b9d20: 220d         	movs	r2, #0xd
  3b9d22: 659a         	str	r2, [r3, #0x58]
  3b9d24: 9b05         	ldr	r3, [sp, #0x14]
  3b9d26: f8d3 11f0    	ldr.w	r1, [r3, #0x1f0]
  3b9d2a: a30b         	adr	r3, #44 <RIOTSHIELD::initBody()+0x169>
  3b9d2c: e9d3 2300    	ldrd	r2, r3, [r3]
  3b9d30: e9c1 230c    	strd	r2, r3, [r1, #48]
  3b9d34: 9b05         	ldr	r3, [sp, #0x14]
  3b9d36: f8d3 11f0    	ldr.w	r1, [r3, #0x1f0]
  3b9d3a: a309         	adr	r3, #36 <RIOTSHIELD::initBody()+0x177>
  3b9d3c: e9d3 2300    	ldrd	r2, r3, [r3]
  3b9d40: e9c1 230e    	strd	r2, r3, [r1, #56]
  3b9d44: 9b05         	ldr	r3, [sp, #0x14]
  3b9d46: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3b9d4a: 2200         	movs	r2, #0x0
  3b9d4c: 651a         	str	r2, [r3, #0x50]
  3b9d4e: b01a         	add	sp, #0x68
  3b9d50: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3b9d51); words below are literal-pool data ---
  3b9d52: bf00         	nop
  3b9d54: f3af 8000    	nop.w
  3b9d58: 0000         	movs	r0, r0
  3b9d5a: a000         	adr	r0, #0 <RIOTSHIELD::initBody()+0x18e>
  3b9d5c: 9999         	ldr	r1, [sp, #0x264]
  3b9d5e: 3fb9         	subs	r7, #0xb9
  3b9d60: 0000         	movs	r0, r0
  3b9d62: c000         	<unknown>
  3b9d64: cccc         	ldm	r4!, {r2, r3, r6, r7}
  3b9d66: 3fec         	subs	r7, #0xec
  3b9d68: 0000         	movs	r0, r0
  3b9d6a: 4220         	tst	r0, r4
  3b9d6c: 8e30         	ldrh	r0, [r6, #0x30]
  3b9d6e: 0057         	lsls	r7, r2, #0x1
  3b9d70: fbf1 ffff    	<unknown>
  3b9d74: d748         	bvc	0x3b9e08 <RIOTSHIELD::updateItemStep(float)+0x88> @ imm = #0x90
  3b9d76: ffff ab8a    	vtbl.8	d26, {d31, fpinst2, mvfr0, mvfr1}, d10
  3b9d7a: 0041         	lsls	r1, r0, #0x1

// ==== RIOTSHIELD::updateItemStep
//      file offset 0x3b9d80 (= ELF address; Ghidra 0x3c9d80), 264 bytes, Thumb-2
  3b9d80: b510         	push	{r4, lr}
  3b9d82: b092         	sub	sp, #0x48
  3b9d84: 9005         	str	r0, [sp, #0x14]
  3b9d86: 9104         	str	r1, [sp, #0x10]
  3b9d88: 4c3d         	ldr	r4, [pc, #0xf4]         @ 0x3b9e80 <RIOTSHIELD::updateItemStep(float)+0x100>
  3b9d8a: 447c         	add	r4, pc
  3b9d8c: 9b05         	ldr	r3, [sp, #0x14]
  3b9d8e: f893 31f8    	ldrb.w	r3, [r3, #0x1f8]
  3b9d92: 2b00         	cmp	r3, #0x0
  3b9d94: d070         	beq	0x3b9e78 <RIOTSHIELD::updateItemStep(float)+0xf8> @ imm = #0xe0
  3b9d96: ab06         	add	r3, sp, #0x18
  3b9d98: 4618         	mov	r0, r3
  3b9d9a: f04f 0100    	mov.w	r1, #0x0
  3b9d9e: f2c4 213c    	movt	r1, #0x423c
  3b9da2: f04f 0200    	mov.w	r2, #0x0
  3b9da6: f2c4 02a0    	movt	r2, #0x40a0
  3b9daa: f1d8 ffa1    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1d8f42
  3b9dae: 9b05         	ldr	r3, [sp, #0x14]
  3b9db0: 681b         	ldr	r3, [r3]
  3b9db2: 3350         	adds	r3, #0x50
  3b9db4: 681b         	ldr	r3, [r3]
  3b9db6: 9a05         	ldr	r2, [sp, #0x14]
  3b9db8: 4610         	mov	r0, r2
  3b9dba: 4798         	blx	r3
  3b9dbc: 4602         	mov	r2, r0
  3b9dbe: a90a         	add	r1, sp, #0x28
  3b9dc0: ab06         	add	r3, sp, #0x18
  3b9dc2: 4608         	mov	r0, r1
  3b9dc4: 4611         	mov	r1, r2
  3b9dc6: 461a         	mov	r2, r3
  3b9dc8: f7fe fe3c    	bl	0x3b8a44 <PurchaseLayer::onBack(cocos2d::CCObject*)+0x1f0> @ imm = #-0x1388
  3b9dcc: 9b05         	ldr	r3, [sp, #0x14]
  3b9dce: 681b         	ldr	r3, [r3]
  3b9dd0: f503 73c2    	add.w	r3, r3, #0x184
  3b9dd4: 681b         	ldr	r3, [r3]
  3b9dd6: 9a05         	ldr	r2, [sp, #0x14]
  3b9dd8: a90c         	add	r1, sp, #0x30
  3b9dda: 4608         	mov	r0, r1
  3b9ddc: 4611         	mov	r1, r2
  3b9dde: 4798         	blx	r3
  3b9de0: a908         	add	r1, sp, #0x20
  3b9de2: aa0a         	add	r2, sp, #0x28
  3b9de4: ab0c         	add	r3, sp, #0x30
  3b9de6: 4608         	mov	r0, r1
  3b9de8: 4611         	mov	r1, r2
  3b9dea: 461a         	mov	r2, r3
  3b9dec: f1d8 fa9a    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x1d8534
  3b9df0: 4b24         	ldr	r3, [pc, #0x90]         @ 0x3b9e84 <RIOTSHIELD::updateItemStep(float)+0x104>
  3b9df2: 58e3         	ldr	r3, [r4, r3]
  3b9df4: 681b         	ldr	r3, [r3]
  3b9df6: 681b         	ldr	r3, [r3]
  3b9df8: f503 73c4    	add.w	r3, r3, #0x188
  3b9dfc: 681b         	ldr	r3, [r3]
  3b9dfe: 4a21         	ldr	r2, [pc, #0x84]         @ 0x3b9e84 <RIOTSHIELD::updateItemStep(float)+0x104>
  3b9e00: 58a2         	ldr	r2, [r4, r2]
  3b9e02: 6812         	ldr	r2, [r2]
  3b9e04: a90c         	add	r1, sp, #0x30
  3b9e06: 4608         	mov	r0, r1
  3b9e08: 4611         	mov	r1, r2
  3b9e0a: 4798         	blx	r3
  3b9e0c: a90a         	add	r1, sp, #0x28
  3b9e0e: aa08         	add	r2, sp, #0x20
  3b9e10: ab0c         	add	r3, sp, #0x30
  3b9e12: 4608         	mov	r0, r1
  3b9e14: 4611         	mov	r1, r2
  3b9e16: 461a         	mov	r2, r3
  3b9e18: f1d8 fa84    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x1d8508
  3b9e1c: aa08         	add	r2, sp, #0x20
  3b9e1e: ab0a         	add	r3, sp, #0x28
  3b9e20: 4610         	mov	r0, r2
  3b9e22: 4619         	mov	r1, r3
  3b9e24: f1d8 ff92    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x1d8f24
  3b9e28: 9b05         	ldr	r3, [sp, #0x14]
  3b9e2a: f8d3 41f4    	ldr.w	r4, [r3, #0x1f4]
  3b9e2e: eddd 7a08    	vldr	s15, [sp, #32]
  3b9e32: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3b9e36: eddd 7a09    	vldr	s15, [sp, #36]
  3b9e3a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3b9e3e: 466b         	mov	r3, sp
  3b9e40: 4618         	mov	r0, r3
  3b9e42: eeb0 0b46    	vmov.f64	d0, d6
  3b9e46: eeb0 1b47    	vmov.f64	d1, d7
  3b9e4a: f7fe fe0b    	bl	0x3b8a64 <PurchaseLayer::onBack(cocos2d::CCObject*)+0x210> @ imm = #-0x13ea
  3b9e4e: 3428         	adds	r4, #0x28
  3b9e50: 466b         	mov	r3, sp
  3b9e52: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3b9e54: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3b9e58: 9b05         	ldr	r3, [sp, #0x14]
  3b9e5a: f8d3 31f4    	ldr.w	r3, [r3, #0x1f4]
  3b9e5e: 9a05         	ldr	r2, [sp, #0x14]
  3b9e60: edd2 7a72    	vldr	s15, [r2, #456]
  3b9e64: eeb1 7a67    	vneg.f32	s14, s15
  3b9e68: eddf 7a04    	vldr	s15, [pc, #16]          @ 0x3b9e7c <RIOTSHIELD::updateItemStep(float)+0xfc>
  3b9e6c: ee67 7a27    	vmul.f32	s15, s14, s15
  3b9e70: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3b9e74: ed83 7b16    	vstr	d7, [r3, #88]
  3b9e78: b012         	add	sp, #0x48
  3b9e7a: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3b9e7b); words below are literal-pool data ---
  3b9e7c: fa35 3c8e    	<unknown>
  3b9e80: 8c7e         	ldrh	r6, [r7, #0x22]
  3b9e82: 0057         	lsls	r7, r2, #0x1
  3b9e84: d744         	bvc	0x3b9f10 <RIOTSHIELD::updateRemoteItemStep(float)+0x88> @ imm = #0x88
  3b9e86: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== RIOTSHIELD::updateRemoteItemStep
//      file offset 0x3b9e88 (= ELF address; Ghidra 0x3c9e88), 264 bytes, Thumb-2
  3b9e88: b510         	push	{r4, lr}
  3b9e8a: b092         	sub	sp, #0x48
  3b9e8c: 9005         	str	r0, [sp, #0x14]
  3b9e8e: 9104         	str	r1, [sp, #0x10]
  3b9e90: 4c3d         	ldr	r4, [pc, #0xf4]         @ 0x3b9f88 <RIOTSHIELD::updateRemoteItemStep(float)+0x100>
  3b9e92: 447c         	add	r4, pc
  3b9e94: 9b05         	ldr	r3, [sp, #0x14]
  3b9e96: f893 31f8    	ldrb.w	r3, [r3, #0x1f8]
  3b9e9a: 2b00         	cmp	r3, #0x0
  3b9e9c: d070         	beq	0x3b9f80 <RIOTSHIELD::updateRemoteItemStep(float)+0xf8> @ imm = #0xe0
  3b9e9e: ab06         	add	r3, sp, #0x18
  3b9ea0: 4618         	mov	r0, r3
  3b9ea2: f04f 0100    	mov.w	r1, #0x0
  3b9ea6: f2c4 213c    	movt	r1, #0x423c
  3b9eaa: f04f 0200    	mov.w	r2, #0x0
  3b9eae: f2c4 02a0    	movt	r2, #0x40a0
  3b9eb2: f1d8 ff1d    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1d8e3a
  3b9eb6: 9b05         	ldr	r3, [sp, #0x14]
  3b9eb8: 681b         	ldr	r3, [r3]
  3b9eba: 3350         	adds	r3, #0x50
  3b9ebc: 681b         	ldr	r3, [r3]
  3b9ebe: 9a05         	ldr	r2, [sp, #0x14]
  3b9ec0: 4610         	mov	r0, r2
  3b9ec2: 4798         	blx	r3
  3b9ec4: 4602         	mov	r2, r0
  3b9ec6: a90a         	add	r1, sp, #0x28
  3b9ec8: ab06         	add	r3, sp, #0x18
  3b9eca: 4608         	mov	r0, r1
  3b9ecc: 4611         	mov	r1, r2
  3b9ece: 461a         	mov	r2, r3
  3b9ed0: f7fe fdb8    	bl	0x3b8a44 <PurchaseLayer::onBack(cocos2d::CCObject*)+0x1f0> @ imm = #-0x1490
  3b9ed4: 9b05         	ldr	r3, [sp, #0x14]
  3b9ed6: 681b         	ldr	r3, [r3]
  3b9ed8: f503 73c2    	add.w	r3, r3, #0x184
  3b9edc: 681b         	ldr	r3, [r3]
  3b9ede: 9a05         	ldr	r2, [sp, #0x14]
  3b9ee0: a90c         	add	r1, sp, #0x30
  3b9ee2: 4608         	mov	r0, r1
  3b9ee4: 4611         	mov	r1, r2
  3b9ee6: 4798         	blx	r3
  3b9ee8: a908         	add	r1, sp, #0x20
  3b9eea: aa0a         	add	r2, sp, #0x28
  3b9eec: ab0c         	add	r3, sp, #0x30
  3b9eee: 4608         	mov	r0, r1
  3b9ef0: 4611         	mov	r1, r2
  3b9ef2: 461a         	mov	r2, r3
  3b9ef4: f1d8 fa16    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x1d842c
  3b9ef8: 4b24         	ldr	r3, [pc, #0x90]         @ 0x3b9f8c <RIOTSHIELD::updateRemoteItemStep(float)+0x104>
  3b9efa: 58e3         	ldr	r3, [r4, r3]
  3b9efc: 681b         	ldr	r3, [r3]
  3b9efe: 681b         	ldr	r3, [r3]
  3b9f00: f503 73c4    	add.w	r3, r3, #0x188
  3b9f04: 681b         	ldr	r3, [r3]
  3b9f06: 4a21         	ldr	r2, [pc, #0x84]         @ 0x3b9f8c <RIOTSHIELD::updateRemoteItemStep(float)+0x104>
  3b9f08: 58a2         	ldr	r2, [r4, r2]
  3b9f0a: 6812         	ldr	r2, [r2]
  3b9f0c: a90c         	add	r1, sp, #0x30
  3b9f0e: 4608         	mov	r0, r1
  3b9f10: 4611         	mov	r1, r2
  3b9f12: 4798         	blx	r3
  3b9f14: a90a         	add	r1, sp, #0x28
  3b9f16: aa08         	add	r2, sp, #0x20
  3b9f18: ab0c         	add	r3, sp, #0x30
  3b9f1a: 4608         	mov	r0, r1
  3b9f1c: 4611         	mov	r1, r2
  3b9f1e: 461a         	mov	r2, r3
  3b9f20: f1d8 fa00    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x1d8400
  3b9f24: aa08         	add	r2, sp, #0x20
  3b9f26: ab0a         	add	r3, sp, #0x28
  3b9f28: 4610         	mov	r0, r2
  3b9f2a: 4619         	mov	r1, r3
  3b9f2c: f1d8 ff0e    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x1d8e1c
  3b9f30: 9b05         	ldr	r3, [sp, #0x14]
  3b9f32: f8d3 41f4    	ldr.w	r4, [r3, #0x1f4]
  3b9f36: eddd 7a08    	vldr	s15, [sp, #32]
  3b9f3a: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3b9f3e: eddd 7a09    	vldr	s15, [sp, #36]
  3b9f42: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3b9f46: 466b         	mov	r3, sp
  3b9f48: 4618         	mov	r0, r3
  3b9f4a: eeb0 0b46    	vmov.f64	d0, d6
  3b9f4e: eeb0 1b47    	vmov.f64	d1, d7
  3b9f52: f7fe fd87    	bl	0x3b8a64 <PurchaseLayer::onBack(cocos2d::CCObject*)+0x210> @ imm = #-0x14f2
  3b9f56: 3428         	adds	r4, #0x28
  3b9f58: 466b         	mov	r3, sp
  3b9f5a: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3b9f5c: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3b9f60: 9b05         	ldr	r3, [sp, #0x14]
  3b9f62: f8d3 31f4    	ldr.w	r3, [r3, #0x1f4]
  3b9f66: 9a05         	ldr	r2, [sp, #0x14]
  3b9f68: edd2 7a72    	vldr	s15, [r2, #456]
  3b9f6c: eeb1 7a67    	vneg.f32	s14, s15
  3b9f70: eddf 7a04    	vldr	s15, [pc, #16]          @ 0x3b9f84 <RIOTSHIELD::updateRemoteItemStep(float)+0xfc>
  3b9f74: ee67 7a27    	vmul.f32	s15, s14, s15
  3b9f78: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3b9f7c: ed83 7b16    	vstr	d7, [r3, #88]
  3b9f80: b012         	add	sp, #0x48
  3b9f82: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3b9f83); words below are literal-pool data ---
  3b9f84: fa35 3c8e    	<unknown>
  3b9f88: 8b76         	ldrh	r6, [r6, #0x1a]
  3b9f8a: 0057         	lsls	r7, r2, #0x1
  3b9f8c: d744         	bvc	0x3ba018 <RIOTSHIELD::getShellPoint()+0x70> @ imm = #0x88
  3b9f8e: ffff b082    	<unknown>

// ==== RIOTSHIELD::triggerPull
//      file offset 0x3b9f90 (= ELF address; Ghidra 0x3c9f90), 10 bytes, Thumb-2
  3b9f90: b082         	sub	sp, #0x8
  3b9f92: 9001         	str	r0, [sp, #0x4]
  3b9f94: 9100         	str	r1, [sp]
  3b9f96: b002         	add	sp, #0x8
  3b9f98: 4770         	bx	lr

// ==== RIOTSHIELD::remoteTriggerPull
//      file offset 0x3b9f9c (= ELF address; Ghidra 0x3c9f9c), 10 bytes, Thumb-2
  3b9f9c: b082         	sub	sp, #0x8
  3b9f9e: 9001         	str	r0, [sp, #0x4]
  3b9fa0: 9100         	str	r1, [sp]
  3b9fa2: b002         	add	sp, #0x8
  3b9fa4: 4770         	bx	lr

// ==== RIOTSHIELD::getShellPoint
//      file offset 0x3b9fa8 (= ELF address; Ghidra 0x3c9fa8), 204 bytes, Thumb-2
  3b9fa8: b530         	push	{r4, r5, lr}
  3b9faa: b08f         	sub	sp, #0x3c
  3b9fac: 9001         	str	r0, [sp, #0x4]
  3b9fae: 9100         	str	r1, [sp]
  3b9fb0: 4c2e         	ldr	r4, [pc, #0xb8]         @ 0x3ba06c <RIOTSHIELD::getShellPoint()+0xc4>
  3b9fb2: 447c         	add	r4, pc
  3b9fb4: 9b00         	ldr	r3, [sp]
  3b9fb6: 681b         	ldr	r3, [r3]
  3b9fb8: 3350         	adds	r3, #0x50
  3b9fba: 681b         	ldr	r3, [r3]
  3b9fbc: 9a00         	ldr	r2, [sp]
  3b9fbe: 4610         	mov	r0, r2
  3b9fc0: 4798         	blx	r3
  3b9fc2: 4605         	mov	r5, r0
  3b9fc4: ab04         	add	r3, sp, #0x10
  3b9fc6: 4618         	mov	r0, r3
  3b9fc8: f04f 0100    	mov.w	r1, #0x0
  3b9fcc: f2c4 2148    	movt	r1, #0x4248
  3b9fd0: f04f 0200    	mov.w	r2, #0x0
  3b9fd4: f2c4 1270    	movt	r2, #0x4170
  3b9fd8: f1d8 fe8a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1d8d14
  3b9fdc: aa06         	add	r2, sp, #0x18
  3b9fde: ab04         	add	r3, sp, #0x10
  3b9fe0: 4610         	mov	r0, r2
  3b9fe2: 4629         	mov	r1, r5
  3b9fe4: 461a         	mov	r2, r3
  3b9fe6: f7fe fd2d    	bl	0x3b8a44 <PurchaseLayer::onBack(cocos2d::CCObject*)+0x1f0> @ imm = #-0x15a6
  3b9fea: 9b00         	ldr	r3, [sp]
  3b9fec: 681b         	ldr	r3, [r3]
  3b9fee: f503 73c2    	add.w	r3, r3, #0x184
  3b9ff2: 681b         	ldr	r3, [r3]
  3b9ff4: 9a00         	ldr	r2, [sp]
  3b9ff6: a908         	add	r1, sp, #0x20
  3b9ff8: 4608         	mov	r0, r1
  3b9ffa: 4611         	mov	r1, r2
  3b9ffc: 4798         	blx	r3
  3b9ffe: a902         	add	r1, sp, #0x8
  3ba000: aa06         	add	r2, sp, #0x18
  3ba002: ab08         	add	r3, sp, #0x20
  3ba004: 4608         	mov	r0, r1
  3ba006: 4611         	mov	r1, r2
  3ba008: 461a         	mov	r2, r3
  3ba00a: f1d8 f98b    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x1d8316
  3ba00e: 4b18         	ldr	r3, [pc, #0x60]         @ 0x3ba070 <RIOTSHIELD::getShellPoint()+0xc8>
  3ba010: 58e3         	ldr	r3, [r4, r3]
  3ba012: 681b         	ldr	r3, [r3]
  3ba014: 681b         	ldr	r3, [r3]
  3ba016: f503 73c4    	add.w	r3, r3, #0x188
  3ba01a: 681b         	ldr	r3, [r3]
  3ba01c: 4a14         	ldr	r2, [pc, #0x50]         @ 0x3ba070 <RIOTSHIELD::getShellPoint()+0xc8>
  3ba01e: 58a2         	ldr	r2, [r4, r2]
  3ba020: 6812         	ldr	r2, [r2]
  3ba022: a908         	add	r1, sp, #0x20
  3ba024: 4608         	mov	r0, r1
  3ba026: 4611         	mov	r1, r2
  3ba028: 4798         	blx	r3
  3ba02a: a906         	add	r1, sp, #0x18
  3ba02c: aa02         	add	r2, sp, #0x8
  3ba02e: ab08         	add	r3, sp, #0x20
  3ba030: 4608         	mov	r0, r1
  3ba032: 4611         	mov	r1, r2
  3ba034: 461a         	mov	r2, r3
  3ba036: f1d8 f975    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x1d82ea
  3ba03a: aa02         	add	r2, sp, #0x8
  3ba03c: ab06         	add	r3, sp, #0x18
  3ba03e: 4610         	mov	r0, r2
  3ba040: 4619         	mov	r1, r3
  3ba042: f1d8 fe83    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x1d8d06
  3ba046: eddd 7a02    	vldr	s15, [sp, #8]
  3ba04a: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3ba04e: eddd 7a03    	vldr	s15, [sp, #12]
  3ba052: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3ba056: 9b01         	ldr	r3, [sp, #0x4]
  3ba058: 4618         	mov	r0, r3
  3ba05a: eeb0 0b46    	vmov.f64	d0, d6
  3ba05e: eeb0 1b47    	vmov.f64	d1, d7
  3ba062: f7fe fcff    	bl	0x3b8a64 <PurchaseLayer::onBack(cocos2d::CCObject*)+0x210> @ imm = #-0x1602
  3ba066: 9801         	ldr	r0, [sp, #0x4]
  3ba068: b00f         	add	sp, #0x3c
  3ba06a: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3ba06b); words below are literal-pool data ---
  3ba06c: 8a56         	ldrh	r6, [r2, #0x12]
  3ba06e: 0057         	lsls	r7, r2, #0x1
  3ba070: d744         	bvc	0x3ba0fc <RIOTSHIELD::setDualConfiguration()+0x5c> @ imm = #0x88
  3ba072: ffff b082    	<unknown>

// ==== RIOTSHIELD::playSound
//      file offset 0x3ba074 (= ELF address; Ghidra 0x3ca074), 8 bytes, Thumb-2
  3ba074: b082         	sub	sp, #0x8
  3ba076: 9001         	str	r0, [sp, #0x4]
  3ba078: b002         	add	sp, #0x8
  3ba07a: 4770         	bx	lr

// ==== RIOTSHIELD::setPrimaryConfiguration
//      file offset 0x3ba07c (= ELF address; Ghidra 0x3ca07c), 8 bytes, Thumb-2
  3ba07c: b082         	sub	sp, #0x8
  3ba07e: 9001         	str	r0, [sp, #0x4]
  3ba080: b002         	add	sp, #0x8
  3ba082: 4770         	bx	lr

// ==== RIOTSHIELD::setHostDualConfiguration
//      file offset 0x3ba084 (= ELF address; Ghidra 0x3ca084), 26 bytes, Thumb-2
  3ba084: b500         	push	{lr}
  3ba086: b083         	sub	sp, #0xc
  3ba088: 9001         	str	r0, [sp, #0x4]
  3ba08a: 9b01         	ldr	r3, [sp, #0x4]
  3ba08c: 681b         	ldr	r3, [r3]
  3ba08e: f503 73ee    	add.w	r3, r3, #0x1dc
  3ba092: 681b         	ldr	r3, [r3]
  3ba094: 9801         	ldr	r0, [sp, #0x4]
  3ba096: 4798         	blx	r3
  3ba098: b003         	add	sp, #0xc
  3ba09a: f85d fb04    	ldr	pc, [sp], #4

// ==== RIOTSHIELD::setDualConfiguration
//      file offset 0x3ba0a0 (= ELF address; Ghidra 0x3ca0a0), 300 bytes, Thumb-2
  3ba0a0: b530         	push	{r4, r5, lr}
  3ba0a2: b085         	sub	sp, #0x14
  3ba0a4: 9001         	str	r0, [sp, #0x4]
  3ba0a6: 9b01         	ldr	r3, [sp, #0x4]
  3ba0a8: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3ba0ac: 2b00         	cmp	r3, #0x0
  3ba0ae: d019         	beq	0x3ba0e4 <RIOTSHIELD::setDualConfiguration()+0x44> @ imm = #0x32
  3ba0b0: 9b01         	ldr	r3, [sp, #0x4]
  3ba0b2: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  3ba0b6: 4b44         	ldr	r3, [pc, #0x110]        @ 0x3ba1c8 <RIOTSHIELD::setDualConfiguration()+0x128>
  3ba0b8: 447b         	add	r3, pc
  3ba0ba: ed93 6b00    	vldr	d6, [r3]
  3ba0be: ed93 7b02    	vldr	d7, [r3, #8]
  3ba0c2: 4610         	mov	r0, r2
  3ba0c4: eeb0 0b46    	vmov.f64	d0, d6
  3ba0c8: eeb0 1b47    	vmov.f64	d1, d7
  3ba0cc: f7fe fcde    	bl	0x3b8a8c <PurchaseLayer::onBack(cocos2d::CCObject*)+0x238> @ imm = #-0x1644
  3ba0d0: 9b01         	ldr	r3, [sp, #0x4]
  3ba0d2: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3ba0d6: 4618         	mov	r0, r3
  3ba0d8: f04f 0200    	mov.w	r2, #0x0
  3ba0dc: f04f 0300    	mov.w	r3, #0x0
  3ba0e0: f319 f857    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x3190ae
  3ba0e4: 9b01         	ldr	r3, [sp, #0x4]
  3ba0e6: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3ba0ea: 681b         	ldr	r3, [r3]
  3ba0ec: 334c         	adds	r3, #0x4c
  3ba0ee: 681c         	ldr	r4, [r3]
  3ba0f0: 9b01         	ldr	r3, [sp, #0x4]
  3ba0f2: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  3ba0f6: ab02         	add	r3, sp, #0x8
  3ba0f8: 4618         	mov	r0, r3
  3ba0fa: f04f 0100    	mov.w	r1, #0x0
  3ba0fe: f2c4 1188    	movt	r1, #0x4188
  3ba102: f04f 0200    	mov.w	r2, #0x0
  3ba106: f2c4 02a0    	movt	r2, #0x40a0
  3ba10a: f1d8 fdf1    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1d8be2
  3ba10e: ab02         	add	r3, sp, #0x8
  3ba110: 4628         	mov	r0, r5
  3ba112: 4619         	mov	r1, r3
  3ba114: 47a0         	blx	r4
  3ba116: 9b01         	ldr	r3, [sp, #0x4]
  3ba118: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3ba11c: 681b         	ldr	r3, [r3]
  3ba11e: 337c         	adds	r3, #0x7c
  3ba120: 681c         	ldr	r4, [r3]
  3ba122: 9b01         	ldr	r3, [sp, #0x4]
  3ba124: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  3ba128: ab02         	add	r3, sp, #0x8
  3ba12a: 4618         	mov	r0, r3
  3ba12c: f64c 41cd    	movw	r1, #0xcccd
  3ba130: f6c3 51cc    	movt	r1, #0x3dcc
  3ba134: f04f 527c    	mov.w	r2, #0x3f000000
  3ba138: f1d8 fdda    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1d8bb4
  3ba13c: ab02         	add	r3, sp, #0x8
  3ba13e: 4628         	mov	r0, r5
  3ba140: 4619         	mov	r1, r3
  3ba142: 47a0         	blx	r4
  3ba144: 9b01         	ldr	r3, [sp, #0x4]
  3ba146: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3ba14a: 681b         	ldr	r3, [r3]
  3ba14c: 3398         	adds	r3, #0x98
  3ba14e: 681b         	ldr	r3, [r3]
  3ba150: 9a01         	ldr	r2, [sp, #0x4]
  3ba152: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3ba156: 4610         	mov	r0, r2
  3ba158: f04f 0100    	mov.w	r1, #0x0
  3ba15c: 4798         	blx	r3
  3ba15e: 9b01         	ldr	r3, [sp, #0x4]
  3ba160: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3ba164: 681b         	ldr	r3, [r3]
  3ba166: 3340         	adds	r3, #0x40
  3ba168: 681b         	ldr	r3, [r3]
  3ba16a: 9a01         	ldr	r2, [sp, #0x4]
  3ba16c: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3ba170: 4610         	mov	r0, r2
  3ba172: f04f 517e    	mov.w	r1, #0x3f800000
  3ba176: 4798         	blx	r3
  3ba178: 9b01         	ldr	r3, [sp, #0x4]
  3ba17a: 681b         	ldr	r3, [r3]
  3ba17c: 334c         	adds	r3, #0x4c
  3ba17e: 681c         	ldr	r4, [r3]
  3ba180: 9d01         	ldr	r5, [sp, #0x4]
  3ba182: ab02         	add	r3, sp, #0x8
  3ba184: 4618         	mov	r0, r3
  3ba186: f04f 0100    	mov.w	r1, #0x0
  3ba18a: f04f 0200    	mov.w	r2, #0x0
  3ba18e: f1d8 fdaf    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1d8b5e
  3ba192: ab02         	add	r3, sp, #0x8
  3ba194: 4628         	mov	r0, r5
  3ba196: 4619         	mov	r1, r3
  3ba198: 47a0         	blx	r4
  3ba19a: 9b01         	ldr	r3, [sp, #0x4]
  3ba19c: 681b         	ldr	r3, [r3]
  3ba19e: 3340         	adds	r3, #0x40
  3ba1a0: 681b         	ldr	r3, [r3]
  3ba1a2: 9a01         	ldr	r2, [sp, #0x4]
  3ba1a4: 4610         	mov	r0, r2
  3ba1a6: f04f 517e    	mov.w	r1, #0x3f800000
  3ba1aa: 4798         	blx	r3
  3ba1ac: 9b01         	ldr	r3, [sp, #0x4]
  3ba1ae: 681b         	ldr	r3, [r3]
  3ba1b0: 3398         	adds	r3, #0x98
  3ba1b2: 681b         	ldr	r3, [r3]
  3ba1b4: 9a01         	ldr	r2, [sp, #0x4]
  3ba1b6: 4610         	mov	r0, r2
  3ba1b8: f04f 0100    	mov.w	r1, #0x0
  3ba1bc: 4798         	blx	r3
  3ba1be: 9801         	ldr	r0, [sp, #0x4]
  3ba1c0: f7ff fc96    	bl	0x3b9af0 <RIOTSHIELD::addBodyShape2()> @ imm = #-0x6d4
  3ba1c4: b005         	add	sp, #0x14
  3ba1c6: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3ba1c7); words below are literal-pool data ---
  3ba1c8: a7bc         	adr	r7, #752 <RIOTSHIELD::setMapConfiguration()+0xb4>
  3ba1ca: 0041         	lsls	r1, r0, #0x1

// ==== RIOTSHIELD::setSecondaryConfiguration
//      file offset 0x3ba1cc (= ELF address; Ghidra 0x3ca1cc), 8 bytes, Thumb-2
  3ba1cc: b082         	sub	sp, #0x8
  3ba1ce: 9001         	str	r0, [sp, #0x4]
  3ba1d0: b002         	add	sp, #0x8
  3ba1d2: 4770         	bx	lr

// ==== RIOTSHIELD::setMapConfiguration
//      file offset 0x3ba1d4 (= ELF address; Ghidra 0x3ca1d4), 248 bytes, Thumb-2
  3ba1d4: b570         	push	{r4, r5, r6, lr}
  3ba1d6: b084         	sub	sp, #0x10
  3ba1d8: 9001         	str	r0, [sp, #0x4]
  3ba1da: 4c3a         	ldr	r4, [pc, #0xe8]         @ 0x3ba2c4 <RIOTSHIELD::setMapConfiguration()+0xf0>
  3ba1dc: 447c         	add	r4, pc
  3ba1de: 9b01         	ldr	r3, [sp, #0x4]
  3ba1e0: f04f 0200    	mov.w	r2, #0x0
  3ba1e4: f8c3 2190    	str.w	r2, [r3, #0x190]
  3ba1e8: 9b01         	ldr	r3, [sp, #0x4]
  3ba1ea: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3ba1ee: 681b         	ldr	r3, [r3]
  3ba1f0: 334c         	adds	r3, #0x4c
  3ba1f2: 681d         	ldr	r5, [r3]
  3ba1f4: 9b01         	ldr	r3, [sp, #0x4]
  3ba1f6: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  3ba1fa: ab02         	add	r3, sp, #0x8
  3ba1fc: 4618         	mov	r0, r3
  3ba1fe: f04f 0100    	mov.w	r1, #0x0
  3ba202: f04f 0200    	mov.w	r2, #0x0
  3ba206: f1d8 fd73    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1d8ae6
  3ba20a: ab02         	add	r3, sp, #0x8
  3ba20c: 4630         	mov	r0, r6
  3ba20e: 4619         	mov	r1, r3
  3ba210: 47a8         	blx	r5
  3ba212: 9b01         	ldr	r3, [sp, #0x4]
  3ba214: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3ba218: 681b         	ldr	r3, [r3]
  3ba21a: 337c         	adds	r3, #0x7c
  3ba21c: 681d         	ldr	r5, [r3]
  3ba21e: 9b01         	ldr	r3, [sp, #0x4]
  3ba220: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  3ba224: ab02         	add	r3, sp, #0x8
  3ba226: 4618         	mov	r0, r3
  3ba228: f04f 517c    	mov.w	r1, #0x3f000000
  3ba22c: f04f 527c    	mov.w	r2, #0x3f000000
  3ba230: f1d8 fd5e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1d8abc
  3ba234: ab02         	add	r3, sp, #0x8
  3ba236: 4630         	mov	r0, r6
  3ba238: 4619         	mov	r1, r3
  3ba23a: 47a8         	blx	r5
  3ba23c: 9b01         	ldr	r3, [sp, #0x4]
  3ba23e: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3ba242: 681b         	ldr	r3, [r3]
  3ba244: 3398         	adds	r3, #0x98
  3ba246: 681b         	ldr	r3, [r3]
  3ba248: 9a01         	ldr	r2, [sp, #0x4]
  3ba24a: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3ba24e: 4610         	mov	r0, r2
  3ba250: f04f 0100    	mov.w	r1, #0x0
  3ba254: f2c4 21b4    	movt	r1, #0x42b4
  3ba258: 4798         	blx	r3
  3ba25a: 9b01         	ldr	r3, [sp, #0x4]
  3ba25c: 681b         	ldr	r3, [r3]
  3ba25e: 334c         	adds	r3, #0x4c
  3ba260: 681d         	ldr	r5, [r3]
  3ba262: 9e01         	ldr	r6, [sp, #0x4]
  3ba264: ab02         	add	r3, sp, #0x8
  3ba266: 4618         	mov	r0, r3
  3ba268: f04f 0100    	mov.w	r1, #0x0
  3ba26c: f04f 0200    	mov.w	r2, #0x0
  3ba270: f1d8 fd3e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1d8a7c
  3ba274: ab02         	add	r3, sp, #0x8
  3ba276: 4630         	mov	r0, r6
  3ba278: 4619         	mov	r1, r3
  3ba27a: 47a8         	blx	r5
  3ba27c: 9b01         	ldr	r3, [sp, #0x4]
  3ba27e: 681b         	ldr	r3, [r3]
  3ba280: 3340         	adds	r3, #0x40
  3ba282: 681b         	ldr	r3, [r3]
  3ba284: 9901         	ldr	r1, [sp, #0x4]
  3ba286: 4a10         	ldr	r2, [pc, #0x40]         @ 0x3ba2c8 <RIOTSHIELD::setMapConfiguration()+0xf4>
  3ba288: 58a2         	ldr	r2, [r4, r2]
  3ba28a: 6812         	ldr	r2, [r2]
  3ba28c: 4608         	mov	r0, r1
  3ba28e: 4611         	mov	r1, r2
  3ba290: 4798         	blx	r3
  3ba292: 9b01         	ldr	r3, [sp, #0x4]
  3ba294: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3ba298: 2b00         	cmp	r3, #0x0
  3ba29a: d00e         	beq	0x3ba2ba <RIOTSHIELD::setMapConfiguration()+0xe6> @ imm = #0x1c
  3ba29c: 9b01         	ldr	r3, [sp, #0x4]
  3ba29e: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3ba2a2: 220d         	movs	r2, #0xd
  3ba2a4: 655a         	str	r2, [r3, #0x54]
  3ba2a6: 9b01         	ldr	r3, [sp, #0x4]
  3ba2a8: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3ba2ac: 220d         	movs	r2, #0xd
  3ba2ae: 65da         	str	r2, [r3, #0x5c]
  3ba2b0: 9b01         	ldr	r3, [sp, #0x4]
  3ba2b2: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3ba2b6: 220d         	movs	r2, #0xd
  3ba2b8: 659a         	str	r2, [r3, #0x58]
  3ba2ba: 9801         	ldr	r0, [sp, #0x4]
  3ba2bc: f7ff fc4a    	bl	0x3b9b54 <RIOTSHIELD::removeBodyShape2()> @ imm = #-0x76c
  3ba2c0: b004         	add	sp, #0x10
  3ba2c2: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3ba2c3); words below are literal-pool data ---
  3ba2c4: 882c         	ldrh	r4, [r5]
  3ba2c6: 0057         	lsls	r7, r2, #0x1
  3ba2c8: d748         	bvc	0x3ba35c <RIOTSHIELD::setRight(bool)+0x4> @ imm = #0x90
  3ba2ca: ffff b500    	<unknown>

// ==== RIOTSHIELD::getWeaponTexture
//      file offset 0x3ba2cc (= ELF address; Ghidra 0x3ca2cc), 40 bytes, Thumb-2
  3ba2cc: b500         	push	{lr}
  3ba2ce: b083         	sub	sp, #0xc
  3ba2d0: 9001         	str	r0, [sp, #0x4]
  3ba2d2: 9b01         	ldr	r3, [sp, #0x4]
  3ba2d4: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3ba2d8: 681b         	ldr	r3, [r3]
  3ba2da: f503 73fa    	add.w	r3, r3, #0x1f4
  3ba2de: 681b         	ldr	r3, [r3]
  3ba2e0: 9a01         	ldr	r2, [sp, #0x4]
  3ba2e2: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3ba2e6: 4610         	mov	r0, r2
  3ba2e8: 4798         	blx	r3
  3ba2ea: 4603         	mov	r3, r0
  3ba2ec: 4618         	mov	r0, r3
  3ba2ee: b003         	add	sp, #0xc
  3ba2f0: f85d fb04    	ldr	pc, [sp], #4

// ==== RIOTSHIELD::getWeaponRect
//      file offset 0x3ba2f4 (= ELF address; Ghidra 0x3ca2f4), 38 bytes, Thumb-2
  3ba2f4: b500         	push	{lr}
  3ba2f6: b083         	sub	sp, #0xc
  3ba2f8: 9001         	str	r0, [sp, #0x4]
  3ba2fa: 9100         	str	r1, [sp]
  3ba2fc: 9b00         	ldr	r3, [sp]
  3ba2fe: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3ba302: 4618         	mov	r0, r3
  3ba304: f722 fcea    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0xdd62c
  3ba308: 4603         	mov	r3, r0
  3ba30a: 9801         	ldr	r0, [sp, #0x4]
  3ba30c: 4619         	mov	r1, r3
  3ba30e: f1d9 f803    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x1d9006
  3ba312: 9801         	ldr	r0, [sp, #0x4]
  3ba314: b003         	add	sp, #0xc
  3ba316: f85d fb04    	ldr	pc, [sp], #4

// ==== RIOTSHIELD::isRight
//      file offset 0x3ba31c (= ELF address; Ghidra 0x3ca31c), 60 bytes, Thumb-2
  3ba31c: b500         	push	{lr}
  3ba31e: b083         	sub	sp, #0xc
  3ba320: 9001         	str	r0, [sp, #0x4]
  3ba322: 9b01         	ldr	r3, [sp, #0x4]
  3ba324: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3ba328: 681b         	ldr	r3, [r3]
  3ba32a: 3334         	adds	r3, #0x34
  3ba32c: 681b         	ldr	r3, [r3]
  3ba32e: 9a01         	ldr	r2, [sp, #0x4]
  3ba330: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3ba334: 4610         	mov	r0, r2
  3ba336: 4798         	blx	r3
  3ba338: ee07 0a10    	vmov	s14, r0
  3ba33c: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3ba340: eeb4 7ae7    	vcmpe.f32	s14, s15
  3ba344: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3ba348: bfd4         	ite	le
  3ba34a: 2300         	movle	r3, #0x0
  3ba34c: 2301         	movgt	r3, #0x1
  3ba34e: b2db         	uxtb	r3, r3
  3ba350: 4618         	mov	r0, r3
  3ba352: b003         	add	sp, #0xc
  3ba354: f85d fb04    	ldr	pc, [sp], #4

// ==== RIOTSHIELD::setRight
//      file offset 0x3ba358 (= ELF address; Ghidra 0x3ca358), 64 bytes, Thumb-2
  3ba358: b500         	push	{lr}
  3ba35a: b083         	sub	sp, #0xc
  3ba35c: 9001         	str	r0, [sp, #0x4]
  3ba35e: 460b         	mov	r3, r1
  3ba360: f88d 3003    	strb.w	r3, [sp, #0x3]
  3ba364: 9b01         	ldr	r3, [sp, #0x4]
  3ba366: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3ba36a: 681b         	ldr	r3, [r3]
  3ba36c: 3330         	adds	r3, #0x30
  3ba36e: 681a         	ldr	r2, [r3]
  3ba370: 9b01         	ldr	r3, [sp, #0x4]
  3ba372: f8d3 11ec    	ldr.w	r1, [r3, #0x1ec]
  3ba376: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  3ba37a: 2b00         	cmp	r3, #0x0
  3ba37c: d002         	beq	0x3ba384 <RIOTSHIELD::setRight(bool)+0x2c> @ imm = #0x4
  3ba37e: f04f 537e    	mov.w	r3, #0x3f800000
  3ba382: e003         	b	0x3ba38c <RIOTSHIELD::setRight(bool)+0x34> @ imm = #0x6
  3ba384: f04f 0300    	mov.w	r3, #0x0
  3ba388: f6cb 7380    	movt	r3, #0xbf80
  3ba38c: 4608         	mov	r0, r1
  3ba38e: 4619         	mov	r1, r3
  3ba390: 4790         	blx	r2
  3ba392: b003         	add	sp, #0xc
  3ba394: f85d fb04    	ldr	pc, [sp], #4

// ==== RIOTSHIELD::create
//      file offset 0x4176ac (= ELF address; Ghidra 0x4276ac), 112 bytes, Thumb-2
  4176ac: b510         	push	{r4, lr}
  4176ae: b082         	sub	sp, #0x8
  4176b0: f44f 7000    	mov.w	r0, #0x200
  4176b4: f370 f956    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x3702ac
  4176b8: 4603         	mov	r3, r0
  4176ba: 461c         	mov	r4, r3
  4176bc: 4620         	mov	r0, r4
  4176be: f7a2 f8c3    	bl	0x3b9848 <RIOTSHIELD::RIOTSHIELD()> @ imm = #-0x5de7a
  4176c2: 9401         	str	r4, [sp, #0x4]
  4176c4: 9b01         	ldr	r3, [sp, #0x4]
  4176c6: 2b00         	cmp	r3, #0x0
  4176c8: d00a         	beq	0x4176e0 <RIOTSHIELD::create()+0x34> @ imm = #0x14
  4176ca: 9b01         	ldr	r3, [sp, #0x4]
  4176cc: 681b         	ldr	r3, [r3]
  4176ce: 3318         	adds	r3, #0x18
  4176d0: 681b         	ldr	r3, [r3]
  4176d2: 9801         	ldr	r0, [sp, #0x4]
  4176d4: 4798         	blx	r3
  4176d6: 4603         	mov	r3, r0
  4176d8: 2b00         	cmp	r3, #0x0
  4176da: d001         	beq	0x4176e0 <RIOTSHIELD::create()+0x34> @ imm = #0x2
  4176dc: 2301         	movs	r3, #0x1
  4176de: e000         	b	0x4176e2 <RIOTSHIELD::create()+0x36> @ imm = #0x0
  4176e0: 2300         	movs	r3, #0x0
  4176e2: 2b00         	cmp	r3, #0x0
  4176e4: d005         	beq	0x4176f2 <RIOTSHIELD::create()+0x46> @ imm = #0xa
  4176e6: 9b01         	ldr	r3, [sp, #0x4]
  4176e8: 4618         	mov	r0, r3
  4176ea: f180 fc07    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x18080e
  4176ee: 9b01         	ldr	r3, [sp, #0x4]
  4176f0: e011         	b	0x417716 <RIOTSHIELD::create()+0x6a> @ imm = #0x22
  4176f2: 9b01         	ldr	r3, [sp, #0x4]
  4176f4: 2b00         	cmp	r3, #0x0
  4176f6: d005         	beq	0x417704 <RIOTSHIELD::create()+0x58> @ imm = #0xa
  4176f8: 9b01         	ldr	r3, [sp, #0x4]
  4176fa: 681b         	ldr	r3, [r3]
  4176fc: 3308         	adds	r3, #0x8
  4176fe: 681b         	ldr	r3, [r3]
  417700: 9801         	ldr	r0, [sp, #0x4]
  417702: 4798         	blx	r3
  417704: 2300         	movs	r3, #0x0
  417706: 9301         	str	r3, [sp, #0x4]
  417708: 2300         	movs	r3, #0x0
  41770a: e004         	b	0x417716 <RIOTSHIELD::create()+0x6a> @ imm = #0x8
  41770c: 4620         	mov	r0, r4
  41770e: f370 fcc9    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x370992
  417712: f370 fccb    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x370996
  417716: 4618         	mov	r0, r3
  417718: b002         	add	sp, #0x8
  41771a: bd10         	pop	{r4, pc}
