// HumanoidDrone: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 33 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../HumanoidDrone.cpp

// ==== HumanoidDrone::create
//      file offset 0x318c8c (= ELF address; Ghidra 0x328c8c), 112 bytes, Thumb-2
  318c8c: b510         	push	{r4, lr}
  318c8e: b082         	sub	sp, #0x8
  318c90: f44f 70ec    	mov.w	r0, #0x1d8
  318c94: f06e f666    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x46eccc
  318c98: 4603         	mov	r3, r0
  318c9a: 461c         	mov	r4, r3
  318c9c: 4620         	mov	r0, r4
  318c9e: f02c ff8f    	bl	0x345bc0 <HumanoidDrone::HumanoidDrone()> @ imm = #0x2cf1e
  318ca2: 9401         	str	r4, [sp, #0x4]
  318ca4: 9b01         	ldr	r3, [sp, #0x4]
  318ca6: 2b00         	cmp	r3, #0x0
  318ca8: d00a         	beq	0x318cc0 <HumanoidDrone::create()+0x34> @ imm = #0x14
  318caa: 9b01         	ldr	r3, [sp, #0x4]
  318cac: 681b         	ldr	r3, [r3]
  318cae: 3318         	adds	r3, #0x18
  318cb0: 681b         	ldr	r3, [r3]
  318cb2: 9801         	ldr	r0, [sp, #0x4]
  318cb4: 4798         	blx	r3
  318cb6: 4603         	mov	r3, r0
  318cb8: 2b00         	cmp	r3, #0x0
  318cba: d001         	beq	0x318cc0 <HumanoidDrone::create()+0x34> @ imm = #0x2
  318cbc: 2301         	movs	r3, #0x1
  318cbe: e000         	b	0x318cc2 <HumanoidDrone::create()+0x36> @ imm = #0x0
  318cc0: 2300         	movs	r3, #0x0
  318cc2: 2b00         	cmp	r3, #0x0
  318cc4: d005         	beq	0x318cd2 <HumanoidDrone::create()+0x46> @ imm = #0xa
  318cc6: 9b01         	ldr	r3, [sp, #0x4]
  318cc8: 4618         	mov	r0, r3
  318cca: f27f f917    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x27f22e
  318cce: 9b01         	ldr	r3, [sp, #0x4]
  318cd0: e011         	b	0x318cf6 <HumanoidDrone::create()+0x6a> @ imm = #0x22
  318cd2: 9b01         	ldr	r3, [sp, #0x4]
  318cd4: 2b00         	cmp	r3, #0x0
  318cd6: d005         	beq	0x318ce4 <HumanoidDrone::create()+0x58> @ imm = #0xa
  318cd8: 9b01         	ldr	r3, [sp, #0x4]
  318cda: 681b         	ldr	r3, [r3]
  318cdc: 3308         	adds	r3, #0x8
  318cde: 681b         	ldr	r3, [r3]
  318ce0: 9801         	ldr	r0, [sp, #0x4]
  318ce2: 4798         	blx	r3
  318ce4: 2300         	movs	r3, #0x0
  318ce6: 9301         	str	r3, [sp, #0x4]
  318ce8: 2300         	movs	r3, #0x0
  318cea: e004         	b	0x318cf6 <HumanoidDrone::create()+0x6a> @ imm = #0x8
  318cec: 4620         	mov	r0, r4
  318cee: f06f f1d9    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x46f3b2
  318cf2: f06f f1db    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46f3b6
  318cf6: 4618         	mov	r0, r3
  318cf8: b002         	add	sp, #0x8
  318cfa: bd10         	pop	{r4, pc}

// ==== HumanoidDrone::HumanoidDrone
//      file offset 0x345bc0 (= ELF address; Ghidra 0x355bc0), 44 bytes, Thumb-2
  345bc0: b510         	push	{r4, lr}
  345bc2: b082         	sub	sp, #0x8
  345bc4: 9001         	str	r0, [sp, #0x4]
  345bc6: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x345be4 <HumanoidDrone::HumanoidDrone()+0x24>
  345bc8: 447c         	add	r4, pc
  345bca: 9b01         	ldr	r3, [sp, #0x4]
  345bcc: 4618         	mov	r0, r3
  345bce: f7d1 fd99    	bl	0x317704 <Enemy::Enemy()> @ imm = #-0x2e4ce
  345bd2: 9b01         	ldr	r3, [sp, #0x4]
  345bd4: 4a04         	ldr	r2, [pc, #0x10]         @ 0x345be8 <HumanoidDrone::HumanoidDrone()+0x28>
  345bd6: 58a2         	ldr	r2, [r4, r2]
  345bd8: 3208         	adds	r2, #0x8
  345bda: 601a         	str	r2, [r3]
  345bdc: 9b01         	ldr	r3, [sp, #0x4]
  345bde: 4618         	mov	r0, r3
  345be0: b002         	add	sp, #0x8
  345be2: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x345be3); words below are literal-pool data ---
  345be4: ce40         	ldm	r6, {r6}
  345be6: 005e         	lsls	r6, r3, #0x1
  345be8: db38         	blt	0x345c5c <HumanoidDrone::init()+0x6c> @ imm = #0x70
  345bea: ffff 0000    	<unknown>

// ==== HumanoidDrone::init
//      file offset 0x345bf0 (= ELF address; Ghidra 0x355bf0), 604 bytes, Thumb-2
  345bf0: b510         	push	{r4, lr}
  345bf2: b08e         	sub	sp, #0x38
  345bf4: 9007         	str	r0, [sp, #0x1c]
  345bf6: 9b07         	ldr	r3, [sp, #0x1c]
  345bf8: 4618         	mov	r0, r3
  345bfa: f7d1 fd99    	bl	0x317730 <Enemy::init()> @ imm = #-0x2e4ce
  345bfe: 4603         	mov	r3, r0
  345c00: f88d 3023    	strb.w	r3, [sp, #0x23]
  345c04: f89d 3023    	ldrb.w	r3, [sp, #0x23]
  345c08: f083 0301    	eor	r3, r3, #0x1
  345c0c: b2db         	uxtb	r3, r3
  345c0e: 2b00         	cmp	r3, #0x0
  345c10: d001         	beq	0x345c16 <HumanoidDrone::init()+0x26> @ imm = #0x2
  345c12: 2300         	movs	r3, #0x0
  345c14: e10e         	b	0x345e34 <HumanoidDrone::init()+0x244> @ imm = #0x21c
  345c16: f7a4 fb51    	bl	0x2ea2bc <SoldierView::create()> @ imm = #-0x5b95e
  345c1a: 4602         	mov	r2, r0
  345c1c: 9b07         	ldr	r3, [sp, #0x1c]
  345c1e: f8c3 21a8    	str.w	r2, [r3, #0x1a8]
  345c22: 9b07         	ldr	r3, [sp, #0x1c]
  345c24: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  345c28: 4618         	mov	r0, r3
  345c2a: f252 f95d    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2522ba
  345c2e: f7ff ff85    	bl	0x345b3c <SoldierAIController::create()> @ imm = #-0xf6
  345c32: 4602         	mov	r2, r0
  345c34: 9b07         	ldr	r3, [sp, #0x1c]
  345c36: f8c3 21ac    	str.w	r2, [r3, #0x1ac]
  345c3a: 9b07         	ldr	r3, [sp, #0x1c]
  345c3c: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  345c40: 4618         	mov	r0, r3
  345c42: f252 f951    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2522a2
  345c46: 9b07         	ldr	r3, [sp, #0x1c]
  345c48: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  345c4c: 681b         	ldr	r3, [r3]
  345c4e: f503 73ea    	add.w	r3, r3, #0x1d4
  345c52: 681b         	ldr	r3, [r3]
  345c54: 9a07         	ldr	r2, [sp, #0x1c]
  345c56: f8d2 11ac    	ldr.w	r1, [r2, #0x1ac]
  345c5a: 9a07         	ldr	r2, [sp, #0x1c]
  345c5c: f8d2 21a8    	ldr.w	r2, [r2, #0x1a8]
  345c60: 4608         	mov	r0, r1
  345c62: 4611         	mov	r1, r2
  345c64: 4798         	blx	r3
  345c66: 9b07         	ldr	r3, [sp, #0x1c]
  345c68: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  345c6c: 681b         	ldr	r3, [r3]
  345c6e: f503 731e    	add.w	r3, r3, #0x278
  345c72: 681b         	ldr	r3, [r3]
  345c74: 9a07         	ldr	r2, [sp, #0x1c]
  345c76: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  345c7a: 4610         	mov	r0, r2
  345c7c: 210f         	movs	r1, #0xf
  345c7e: 4798         	blx	r3
  345c80: f7ad ff1a    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x521cc
  345c84: 4603         	mov	r3, r0
  345c86: 4618         	mov	r0, r3
  345c88: 2100         	movs	r1, #0x0
  345c8a: 220b         	movs	r2, #0xb
  345c8c: f7b1 f9f0    	bl	0x2f7070 <AvatarRenderer::getHeadTexture(cocos2d::CCArray*, int)> @ imm = #-0x4ec20
  345c90: 4603         	mov	r3, r0
  345c92: 930a         	str	r3, [sp, #0x28]
  345c94: f7ad ff10    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x521e0
  345c98: 4603         	mov	r3, r0
  345c9a: 4618         	mov	r0, r3
  345c9c: 2100         	movs	r1, #0x0
  345c9e: 220b         	movs	r2, #0xb
  345ca0: f7b2 f8f0    	bl	0x2f7e84 <AvatarRenderer::getBodyTexture(cocos2d::CCArray*, int)> @ imm = #-0x4de20
  345ca4: 4603         	mov	r3, r0
  345ca6: 930b         	str	r3, [sp, #0x2c]
  345ca8: f7ad ff06    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x521f4
  345cac: 4603         	mov	r3, r0
  345cae: 4618         	mov	r0, r3
  345cb0: 2100         	movs	r1, #0x0
  345cb2: 220b         	movs	r2, #0xb
  345cb4: f7b2 f984    	bl	0x2f7fc0 <AvatarRenderer::getArmTexture(cocos2d::CCArray*, int)> @ imm = #-0x4dcf8
  345cb8: 4603         	mov	r3, r0
  345cba: 930c         	str	r3, [sp, #0x30]
  345cbc: f7ad fefc    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x52208
  345cc0: 4603         	mov	r3, r0
  345cc2: 4618         	mov	r0, r3
  345cc4: 2100         	movs	r1, #0x0
  345cc6: 220b         	movs	r2, #0xb
  345cc8: f7b2 fa18    	bl	0x2f80fc <AvatarRenderer::getLegTexture(cocos2d::CCArray*, int)> @ imm = #-0x4dbd0
  345ccc: 4603         	mov	r3, r0
  345cce: 930d         	str	r3, [sp, #0x34]
  345cd0: 9b07         	ldr	r3, [sp, #0x1c]
  345cd2: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  345cd6: 681b         	ldr	r3, [r3]
  345cd8: f503 73ec    	add.w	r3, r3, #0x1d8
  345cdc: 681b         	ldr	r3, [r3]
  345cde: 9a07         	ldr	r2, [sp, #0x1c]
  345ce0: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  345ce4: 4610         	mov	r0, r2
  345ce6: 4798         	blx	r3
  345ce8: 4603         	mov	r3, r0
  345cea: 9a0c         	ldr	r2, [sp, #0x30]
  345cec: 9200         	str	r2, [sp]
  345cee: 9a0d         	ldr	r2, [sp, #0x34]
  345cf0: 9201         	str	r2, [sp, #0x4]
  345cf2: 4618         	mov	r0, r3
  345cf4: 210b         	movs	r1, #0xb
  345cf6: 9a0a         	ldr	r2, [sp, #0x28]
  345cf8: 9b0b         	ldr	r3, [sp, #0x2c]
  345cfa: f0ae f9c3    	bl	0x3f4084 <SoldierView::setPlayerSkin(int, cocos2d::CCTexture2D*, cocos2d::CCTexture2D*, cocos2d::CCTexture2D*, cocos2d::CCTexture2D*)> @ imm = #0xae386
  345cfe: 9b07         	ldr	r3, [sp, #0x1c]
  345d00: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  345d04: 681b         	ldr	r3, [r3]
  345d06: f503 73ec    	add.w	r3, r3, #0x1d8
  345d0a: 681b         	ldr	r3, [r3]
  345d0c: 9a07         	ldr	r2, [sp, #0x1c]
  345d0e: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  345d12: 4610         	mov	r0, r2
  345d14: 4798         	blx	r3
  345d16: 4604         	mov	r4, r0
  345d18: ab08         	add	r3, sp, #0x20
  345d1a: 4618         	mov	r0, r3
  345d1c: f044 f36a    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4446d4
  345d20: aa09         	add	r2, sp, #0x24
  345d22: ab08         	add	r3, sp, #0x20
  345d24: 4610         	mov	r0, r2
  345d26: 4a48         	ldr	r2, [pc, #0x120]        @ 0x345e48 <HumanoidDrone::init()+0x258>
  345d28: 447a         	add	r2, pc
  345d2a: 4611         	mov	r1, r2
  345d2c: 461a         	mov	r2, r3
  345d2e: f070 f697    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x470d2e
  345d32: ab09         	add	r3, sp, #0x24
  345d34: 4620         	mov	r0, r4
  345d36: 4619         	mov	r1, r3
  345d38: f0ae f914    	bl	0x3f3f64 <SoldierView::setPlayerName(std::string)> @ imm = #0xae228
  345d3c: ab09         	add	r3, sp, #0x24
  345d3e: 4618         	mov	r0, r3
  345d40: f06f f5e8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46fbd0
  345d44: ab08         	add	r3, sp, #0x20
  345d46: 4618         	mov	r0, r3
  345d48: f044 f358    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4446b0
  345d4c: 9b07         	ldr	r3, [sp, #0x1c]
  345d4e: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  345d52: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  345d56: 4618         	mov	r0, r3
  345d58: f04f 0200    	mov.w	r2, #0x0
  345d5c: f04f 0300    	mov.w	r3, #0x0
  345d60: f6c3 73e0    	movt	r3, #0x3fe0
  345d64: f38d f9ff    	bl	0x6d3166 <cpBodySetMass> @ imm = #0x38d3fe
  345d68: 9b07         	ldr	r3, [sp, #0x1c]
  345d6a: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  345d6e: f04f 527e    	mov.w	r2, #0x3f800000
  345d72: f8c3 21b4    	str.w	r2, [r3, #0x1b4]
  345d76: 9b07         	ldr	r3, [sp, #0x1c]
  345d78: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  345d7c: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  345d80: 4618         	mov	r0, r3
  345d82: a32f         	adr	r3, #188 <HumanoidDrone::init()+0x1c5>
  345d84: e9d3 2300    	ldrd	r2, r3, [r3]
  345d88: f38d f9f8    	bl	0x6d317c <cpBodySetMoment> @ imm = #0x38d3f0
  345d8c: 9b07         	ldr	r3, [sp, #0x1c]
  345d8e: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  345d92: 681b         	ldr	r3, [r3]
  345d94: f503 73ec    	add.w	r3, r3, #0x1d8
  345d98: 681b         	ldr	r3, [r3]
  345d9a: 9a07         	ldr	r2, [sp, #0x1c]
  345d9c: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  345da0: 4610         	mov	r0, r2
  345da2: 4798         	blx	r3
  345da4: 4603         	mov	r3, r0
  345da6: 4618         	mov	r0, r3
  345da8: 2100         	movs	r1, #0x0
  345daa: f7ff febb    	bl	0x345b24 <SoldierView::setBlood(bool)> @ imm = #-0x28a
  345dae: 9b07         	ldr	r3, [sp, #0x1c]
  345db0: f04f 0200    	mov.w	r2, #0x0
  345db4: f2c4 0240    	movt	r2, #0x4040
  345db8: f8c3 21b0    	str.w	r2, [r3, #0x1b0]
  345dbc: 9b07         	ldr	r3, [sp, #0x1c]
  345dbe: f04f 0200    	mov.w	r2, #0x0
  345dc2: f8c3 21b4    	str.w	r2, [r3, #0x1b4]
  345dc6: 9b07         	ldr	r3, [sp, #0x1c]
  345dc8: f04f 0200    	mov.w	r2, #0x0
  345dcc: f2c4 0240    	movt	r2, #0x4040
  345dd0: f8c3 21b8    	str.w	r2, [r3, #0x1b8]
  345dd4: 9b07         	ldr	r3, [sp, #0x1c]
  345dd6: f04f 0200    	mov.w	r2, #0x0
  345dda: f8c3 2198    	str.w	r2, [r3, #0x198]
  345dde: 9907         	ldr	r1, [sp, #0x1c]
  345de0: f04f 0200    	mov.w	r2, #0x0
  345de4: f04f 0300    	mov.w	r3, #0x0
  345de8: e9c1 2370    	strd	r2, r3, [r1, #448]
  345dec: 9907         	ldr	r1, [sp, #0x1c]
  345dee: f04f 0200    	mov.w	r2, #0x0
  345df2: f04f 0300    	mov.w	r3, #0x0
  345df6: e9c1 2372    	strd	r2, r3, [r1, #456]
  345dfa: 9b07         	ldr	r3, [sp, #0x1c]
  345dfc: 681b         	ldr	r3, [r3]
  345dfe: f503 7308    	add.w	r3, r3, #0x220
  345e02: 681b         	ldr	r3, [r3]
  345e04: 9c07         	ldr	r4, [sp, #0x1c]
  345e06: aa02         	add	r2, sp, #0x8
  345e08: 4610         	mov	r0, r2
  345e0a: 9907         	ldr	r1, [sp, #0x1c]
  345e0c: 4798         	blx	r3
  345e0e: f504 7490    	add.w	r4, r4, #0x120
  345e12: ab02         	add	r3, sp, #0x8
  345e14: cb0f         	ldm	r3, {r0, r1, r2, r3}
  345e16: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  345e1a: 2301         	movs	r3, #0x1
  345e1c: e00a         	b	0x345e34 <HumanoidDrone::init()+0x244> @ imm = #0x14
  345e1e: ab09         	add	r3, sp, #0x24
  345e20: 4618         	mov	r0, r3
  345e22: f06f f577    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46faee
  345e26: e7ff         	b	0x345e28 <HumanoidDrone::init()+0x238> @ imm = #-0x2
  345e28: ab08         	add	r3, sp, #0x20
  345e2a: 4618         	mov	r0, r3
  345e2c: f044 f2e6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4445cc
  345e30: f042 f13c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x442278
  345e34: 4618         	mov	r0, r3
  345e36: b00e         	add	sp, #0x38
  345e38: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x345e39); words below are literal-pool data ---
  345e3a: bf00         	nop
  345e3c: f3af 8000    	nop.w
  345e40: 0000         	movs	r0, r0
  345e42: 0000         	movs	r0, r0
  345e44: 7000         	strb	r0, [r0]
  345e46: 40a7         	lsls	r7, r4
  345e48: 48dc         	ldr	r0, [pc, #0x370]        @ 0x3461bc <HumanoidDrone::updateMoveTo(cpVect)+0x18c>
  345e4a: 0048         	lsls	r0, r1, #0x1

// ==== HumanoidDrone::~HumanoidDrone
//      file offset 0x345e50 (= ELF address; Ghidra 0x355e50), 92 bytes, Thumb-2
  345e50: b500         	push	{lr}
  345e52: b083         	sub	sp, #0xc
  345e54: 9001         	str	r0, [sp, #0x4]
  345e56: 4913         	ldr	r1, [pc, #0x4c]         @ 0x345ea4 <HumanoidDrone::~HumanoidDrone()+0x54>
  345e58: 4479         	add	r1, pc
  345e5a: 9b01         	ldr	r3, [sp, #0x4]
  345e5c: 4a12         	ldr	r2, [pc, #0x48]         @ 0x345ea8 <HumanoidDrone::~HumanoidDrone()+0x58>
  345e5e: 588a         	ldr	r2, [r1, r2]
  345e60: 3208         	adds	r2, #0x8
  345e62: 601a         	str	r2, [r3]
  345e64: 9b01         	ldr	r3, [sp, #0x4]
  345e66: 4618         	mov	r0, r3
  345e68: 2101         	movs	r1, #0x1
  345e6a: f24a fbed    	bl	0x590648 <cocos2d::CCNode::removeAllChildrenWithCleanup(bool)> @ imm = #0x24a7da
  345e6e: 9b01         	ldr	r3, [sp, #0x4]
  345e70: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  345e74: 4618         	mov	r0, r3
  345e76: f252 f81f    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x25203e
  345e7a: 9b01         	ldr	r3, [sp, #0x4]
  345e7c: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  345e80: 4618         	mov	r0, r3
  345e82: f252 f819    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x252032
  345e86: 9b01         	ldr	r3, [sp, #0x4]
  345e88: 4618         	mov	r0, r3
  345e8a: f7d1 fd07    	bl	0x31789c <Enemy::~Enemy()> @ imm = #-0x2e5f2
  345e8e: 2300         	movs	r3, #0x0
  345e90: 2b00         	cmp	r3, #0x0
  345e92: d002         	beq	0x345e9a <HumanoidDrone::~HumanoidDrone()+0x4a> @ imm = #0x4
  345e94: 9801         	ldr	r0, [sp, #0x4]
  345e96: f042 f105    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x44220a
  345e9a: 9b01         	ldr	r3, [sp, #0x4]
  345e9c: 4618         	mov	r0, r3
  345e9e: b003         	add	sp, #0xc
  345ea0: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x345ea3); words below are literal-pool data ---
  345ea4: cbb0         	ldm	r3!, {r4, r5, r7}
  345ea6: 005e         	lsls	r6, r3, #0x1
  345ea8: db38         	blt	0x345f1c <HumanoidDrone::getSearchPoint()+0x54> @ imm = #0x70
  345eaa: ffff b500    	<unknown>

// ==== HumanoidDrone::~HumanoidDrone
//      file offset 0x345eac (= ELF address; Ghidra 0x355eac), 28 bytes, Thumb-2
  345eac: b500         	push	{lr}
  345eae: b083         	sub	sp, #0xc
  345eb0: 9001         	str	r0, [sp, #0x4]
  345eb2: 9801         	ldr	r0, [sp, #0x4]
  345eb4: f7ff ffcc    	bl	0x345e50 <HumanoidDrone::~HumanoidDrone()> @ imm = #-0x68
  345eb8: 9801         	ldr	r0, [sp, #0x4]
  345eba: f042 f0f3    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4421e6
  345ebe: 9b01         	ldr	r3, [sp, #0x4]
  345ec0: 4618         	mov	r0, r3
  345ec2: b003         	add	sp, #0xc
  345ec4: f85d fb04    	ldr	pc, [sp], #4

// ==== HumanoidDrone::getSearchPoint
//      file offset 0x345ec8 (= ELF address; Ghidra 0x355ec8), 184 bytes, Thumb-2
  345ec8: b500         	push	{lr}
  345eca: ed2d 8b02    	vpush	{d8}
  345ece: b083         	sub	sp, #0xc
  345ed0: 9001         	str	r0, [sp, #0x4]
  345ed2: 9100         	str	r1, [sp]
  345ed4: f7fe fe62    	bl	0x344b9c <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x7fc> @ imm = #-0x133c
  345ed8: 4603         	mov	r3, r0
  345eda: ee07 3a90    	vmov	s15, r3
  345ede: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  345ee2: eddf 7a22    	vldr	s15, [pc, #136]         @ 0x345f6c <HumanoidDrone::getSearchPoint()+0xa4>
  345ee6: ee87 7a27    	vdiv.f32	s14, s14, s15
  345eea: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  345eee: ee37 7a67    	vsub.f32	s14, s14, s15
  345ef2: eddf 7a1f    	vldr	s15, [pc, #124]         @ 0x345f70 <HumanoidDrone::getSearchPoint()+0xa8>
  345ef6: ee67 7a27    	vmul.f32	s15, s14, s15
  345efa: ee17 0a90    	vmov	r0, s15
  345efe: f7f9 fad1    	bl	0x33f4a4 <std::abs(float)> @ imm = #-0x6a5e
  345f02: ee07 0a10    	vmov	s14, r0
  345f06: eddf 7a1b    	vldr	s15, [pc, #108]         @ 0x345f74 <HumanoidDrone::getSearchPoint()+0xac>
  345f0a: ee77 7a27    	vadd.f32	s15, s14, s15
  345f0e: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  345f12: f7fe fe43    	bl	0x344b9c <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x7fc> @ imm = #-0x137a
  345f16: 4603         	mov	r3, r0
  345f18: ee07 3a90    	vmov	s15, r3
  345f1c: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  345f20: eddf 7a12    	vldr	s15, [pc, #72]          @ 0x345f6c <HumanoidDrone::getSearchPoint()+0xa4>
  345f24: ee87 7a27    	vdiv.f32	s14, s14, s15
  345f28: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  345f2c: ee37 7a67    	vsub.f32	s14, s14, s15
  345f30: eddf 7a11    	vldr	s15, [pc, #68]          @ 0x345f78 <HumanoidDrone::getSearchPoint()+0xb0>
  345f34: ee67 7a27    	vmul.f32	s15, s14, s15
  345f38: ee17 0a90    	vmov	r0, s15
  345f3c: f7f9 fab2    	bl	0x33f4a4 <std::abs(float)> @ imm = #-0x6a9c
  345f40: ee07 0a10    	vmov	s14, r0
  345f44: eddf 7a0d    	vldr	s15, [pc, #52]          @ 0x345f7c <HumanoidDrone::getSearchPoint()+0xb4>
  345f48: ee77 7a27    	vadd.f32	s15, s14, s15
  345f4c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  345f50: 9b01         	ldr	r3, [sp, #0x4]
  345f52: 4618         	mov	r0, r3
  345f54: eeb0 0b48    	vmov.f64	d0, d8
  345f58: eeb0 1b47    	vmov.f64	d1, d7
  345f5c: f7fe fe52    	bl	0x344c04 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x864> @ imm = #-0x135c
  345f60: 9801         	ldr	r0, [sp, #0x4]
  345f62: b003         	add	sp, #0xc
  345f64: ecbd 8b02    	vpop	{d8}
  345f68: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x345f6b); words below are literal-pool data ---
  345f6c: 0000         	movs	r0, r0
  345f6e: 4e80         	ldr	r6, [pc, #0x200]        @ 0x346170 <HumanoidDrone::updateMoveTo(cpVect)+0x140>
  345f70: 4000         	ands	r0, r0
  345f72: 451c         	cmp	r4, r3
  345f74: 0000         	movs	r0, r0
  345f76: 437a         	muls	r2, r7, r2
  345f78: 0000         	movs	r0, r0
  345f7a: 42c8         	cmn	r0, r1
  345f7c: 0000         	movs	r0, r0
  345f7e: 4448         	add	r0, r9

// ==== HumanoidDrone::hover
//      file offset 0x345f80 (= ELF address; Ghidra 0x355f80), 176 bytes, Thumb-2
  345f80: b530         	push	{r4, r5, lr}
  345f82: b089         	sub	sp, #0x24
  345f84: 9003         	str	r0, [sp, #0xc]
  345f86: 9b03         	ldr	r3, [sp, #0xc]
  345f88: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  345f8c: 2201         	movs	r2, #0x1
  345f8e: f883 211c    	strb.w	r2, [r3, #0x11c]
  345f92: 9b03         	ldr	r3, [sp, #0xc]
  345f94: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  345f98: 681b         	ldr	r3, [r3]
  345f9a: f503 73f0    	add.w	r3, r3, #0x1e0
  345f9e: 681b         	ldr	r3, [r3]
  345fa0: 9a03         	ldr	r2, [sp, #0xc]
  345fa2: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  345fa6: 4610         	mov	r0, r2
  345fa8: 2101         	movs	r1, #0x1
  345faa: 4798         	blx	r3
  345fac: 9b03         	ldr	r3, [sp, #0xc]
  345fae: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  345fb2: 681b         	ldr	r3, [r3]
  345fb4: f503 730c    	add.w	r3, r3, #0x230
  345fb8: 681c         	ldr	r4, [r3]
  345fba: 9b03         	ldr	r3, [sp, #0xc]
  345fbc: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  345fc0: 461d         	mov	r5, r3
  345fc2: 9b03         	ldr	r3, [sp, #0xc]
  345fc4: ed93 7a58    	vldr	s14, [r3, #352]
  345fc8: eef0 7a08    	vmov.f32	s15, #3.000000e+00
  345fcc: ee67 7a27    	vmul.f32	s15, s14, s15
  345fd0: ee17 0a90    	vmov	r0, s15
  345fd4: f7e3 fa52    	bl	0x32947c <std::cos(float)> @ imm = #-0x1cb5c
  345fd8: ee07 0a90    	vmov	s15, r0
  345fdc: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  345fe0: ed9f 7b0d    	vldr	d7, [pc, #52]           @ 0x346018 <HumanoidDrone::hover()+0x98>
  345fe4: ee26 6b07    	vmul.f64	d6, d6, d7
  345fe8: ed9f 7b0d    	vldr	d7, [pc, #52]           @ 0x346020 <HumanoidDrone::hover()+0xa0>
  345fec: ee36 7b07    	vadd.f64	d7, d6, d7
  345ff0: ab04         	add	r3, sp, #0x10
  345ff2: 4618         	mov	r0, r3
  345ff4: ed9f 0b0c    	vldr	d0, [pc, #48]           @ 0x346028 <HumanoidDrone::hover()+0xa8>
  345ff8: eeb0 1b47    	vmov.f64	d1, d7
  345ffc: f7fe fe02    	bl	0x344c04 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x864> @ imm = #-0x13fc
  346000: 466b         	mov	r3, sp
  346002: aa06         	add	r2, sp, #0x18
  346004: e892 0003    	ldm.w	r2, {r0, r1}
  346008: e883 0003    	stm.w	r3, {r0, r1}
  34600c: ab04         	add	r3, sp, #0x10
  34600e: cb0c         	ldm	r3, {r2, r3}
  346010: 4628         	mov	r0, r5
  346012: 47a0         	blx	r4
  346014: b009         	add	sp, #0x24
  346016: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x346017); words below are literal-pool data ---
  346018: 999a         	ldr	r1, [sp, #0x268]
  34601a: 9999         	ldr	r1, [sp, #0x264]
  34601c: 9999         	ldr	r1, [sp, #0x264]
  34601e: 3fb9         	subs	r7, #0xb9
  346020: 999a         	ldr	r1, [sp, #0x268]
  346022: 9999         	ldr	r1, [sp, #0x264]
  346024: 9999         	ldr	r1, [sp, #0x264]
  346026: 3fc9         	subs	r7, #0xc9

// ==== HumanoidDrone::updateMoveTo
//      file offset 0x346030 (= ELF address; Ghidra 0x356030), 476 bytes, Thumb-2
  346030: b082         	sub	sp, #0x8
  346032: b530         	push	{r4, r5, lr}
  346034: b09b         	sub	sp, #0x6c
  346036: 9003         	str	r0, [sp, #0xc]
  346038: a91e         	add	r1, sp, #0x78
  34603a: e881 000c    	stm.w	r1, {r2, r3}
  34603e: 9b03         	ldr	r3, [sp, #0xc]
  346040: 681b         	ldr	r3, [r3]
  346042: f503 73d6    	add.w	r3, r3, #0x1ac
  346046: 681b         	ldr	r3, [r3]
  346048: aa0e         	add	r2, sp, #0x38
  34604a: 4610         	mov	r0, r2
  34604c: 9903         	ldr	r1, [sp, #0xc]
  34604e: 4798         	blx	r3
  346050: ab06         	add	r3, sp, #0x18
  346052: ed9d 4b1e    	vldr	d4, [sp, #120]
  346056: ed9d 5b20    	vldr	d5, [sp, #128]
  34605a: ed9d 6b0e    	vldr	d6, [sp, #56]
  34605e: ed9d 7b10    	vldr	d7, [sp, #64]
  346062: 4618         	mov	r0, r3
  346064: eeb0 0b44    	vmov.f64	d0, d4
  346068: eeb0 1b45    	vmov.f64	d1, d5
  34606c: eeb0 2b46    	vmov.f64	d2, d6
  346070: eeb0 3b47    	vmov.f64	d3, d7
  346074: f7fe fdda    	bl	0x344c2c <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x88c> @ imm = #-0x144c
  346078: ab06         	add	r3, sp, #0x18
  34607a: cb0f         	ldm	r3, {r0, r1, r2, r3}
  34607c: f391 f81c    	bl	0x6d70b8 <cpvlength>    @ imm = #0x391038
  346080: ec41 0b17    	vmov	d7, r0, r1
  346084: eef7 7bc7    	vcvt.f32.f64	s15, d7
  346088: edcd 7a05    	vstr	s15, [sp, #20]
  34608c: 9b03         	ldr	r3, [sp, #0xc]
  34608e: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  346092: 681b         	ldr	r3, [r3]
  346094: f503 73f0    	add.w	r3, r3, #0x1e0
  346098: 681b         	ldr	r3, [r3]
  34609a: 9a03         	ldr	r2, [sp, #0xc]
  34609c: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  3460a0: 4610         	mov	r0, r2
  3460a2: 2100         	movs	r1, #0x0
  3460a4: 4798         	blx	r3
  3460a6: ed9d 7a05    	vldr	s14, [sp, #20]
  3460aa: eddf 7a57    	vldr	s15, [pc, #348]         @ 0x346208 <HumanoidDrone::updateMoveTo(cpVect)+0x1d8>
  3460ae: eeb4 7ae7    	vcmpe.f32	s14, s15
  3460b2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3460b6: f340 809a    	ble.w	0x3461ee <HumanoidDrone::updateMoveTo(cpVect)+0x1be> @ imm = #0x134
  3460ba: ab0a         	add	r3, sp, #0x28
  3460bc: ed9d 6b06    	vldr	d6, [sp, #24]
  3460c0: ed9d 7b08    	vldr	d7, [sp, #32]
  3460c4: 4618         	mov	r0, r3
  3460c6: eeb0 0b46    	vmov.f64	d0, d6
  3460ca: eeb0 1b47    	vmov.f64	d1, d7
  3460ce: f7fe fe23    	bl	0x344d18 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x978> @ imm = #-0x13ba
  3460d2: 9b03         	ldr	r3, [sp, #0xc]
  3460d4: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  3460d8: 2201         	movs	r2, #0x1
  3460da: f883 211c    	strb.w	r2, [r3, #0x11c]
  3460de: 9b03         	ldr	r3, [sp, #0xc]
  3460e0: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  3460e4: 681b         	ldr	r3, [r3]
  3460e6: f503 7333    	add.w	r3, r3, #0x2cc
  3460ea: 681b         	ldr	r3, [r3]
  3460ec: 9a03         	ldr	r2, [sp, #0xc]
  3460ee: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  3460f2: 4610         	mov	r0, r2
  3460f4: 4798         	blx	r3
  3460f6: 4603         	mov	r3, r0
  3460f8: f083 0301    	eor	r3, r3, #0x1
  3460fc: b2db         	uxtb	r3, r3
  3460fe: 2b00         	cmp	r3, #0x0
  346100: d014         	beq	0x34612c <HumanoidDrone::updateMoveTo(cpVect)+0xfc> @ imm = #0x28
  346102: 9b03         	ldr	r3, [sp, #0xc]
  346104: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  346108: 681b         	ldr	r3, [r3]
  34610a: f503 7328    	add.w	r3, r3, #0x2a0
  34610e: 681b         	ldr	r3, [r3]
  346110: 9a03         	ldr	r2, [sp, #0xc]
  346112: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  346116: 4610         	mov	r0, r2
  346118: 4798         	blx	r3
  34611a: ee07 0a90    	vmov	s15, r0
  34611e: eef5 7ac0    	vcmpe.f32	s15, #0
  346122: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  346126: dd01         	ble	0x34612c <HumanoidDrone::updateMoveTo(cpVect)+0xfc> @ imm = #0x2
  346128: 2301         	movs	r3, #0x1
  34612a: e000         	b	0x34612e <HumanoidDrone::updateMoveTo(cpVect)+0xfe> @ imm = #0x0
  34612c: 2300         	movs	r3, #0x0
  34612e: 2b00         	cmp	r3, #0x0
  346130: d00c         	beq	0x34614c <HumanoidDrone::updateMoveTo(cpVect)+0x11c> @ imm = #0x18
  346132: 9b03         	ldr	r3, [sp, #0xc]
  346134: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  346138: 681b         	ldr	r3, [r3]
  34613a: f503 73f0    	add.w	r3, r3, #0x1e0
  34613e: 681b         	ldr	r3, [r3]
  346140: 9a03         	ldr	r2, [sp, #0xc]
  346142: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  346146: 4610         	mov	r0, r2
  346148: 2101         	movs	r1, #0x1
  34614a: 4798         	blx	r3
  34614c: 9b03         	ldr	r3, [sp, #0xc]
  34614e: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  346152: 4618         	mov	r0, r3
  346154: f7ff fcde    	bl	0x345b14 <CollisionObject::getIsCONTACT()> @ imm = #-0x644
  346158: 4603         	mov	r3, r0
  34615a: 2b00         	cmp	r3, #0x0
  34615c: d023         	beq	0x3461a6 <HumanoidDrone::updateMoveTo(cpVect)+0x176> @ imm = #0x46
  34615e: 9b03         	ldr	r3, [sp, #0xc]
  346160: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  346164: 681b         	ldr	r3, [r3]
  346166: f503 730c    	add.w	r3, r3, #0x230
  34616a: 681c         	ldr	r4, [r3]
  34616c: 9b03         	ldr	r3, [sp, #0xc]
  34616e: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  346172: 461d         	mov	r5, r3
  346174: ab12         	add	r3, sp, #0x48
  346176: ed9d 6b0a    	vldr	d6, [sp, #40]
  34617a: ed9d 7b0c    	vldr	d7, [sp, #48]
  34617e: 4618         	mov	r0, r3
  346180: eeb0 0b46    	vmov.f64	d0, d6
  346184: eeb0 1b47    	vmov.f64	d1, d7
  346188: ed9f 2b1d    	vldr	d2, [pc, #116]          @ 0x346200 <HumanoidDrone::updateMoveTo(cpVect)+0x1d0>
  34618c: f7fe fd7a    	bl	0x344c84 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x8e4> @ imm = #-0x150c
  346190: 466b         	mov	r3, sp
  346192: aa14         	add	r2, sp, #0x50
  346194: e892 0003    	ldm.w	r2, {r0, r1}
  346198: e883 0003    	stm.w	r3, {r0, r1}
  34619c: ab12         	add	r3, sp, #0x48
  34619e: cb0c         	ldm	r3, {r2, r3}
  3461a0: 4628         	mov	r0, r5
  3461a2: 47a0         	blx	r4
  3461a4: e026         	b	0x3461f4 <HumanoidDrone::updateMoveTo(cpVect)+0x1c4> @ imm = #0x4c
  3461a6: 9b03         	ldr	r3, [sp, #0xc]
  3461a8: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  3461ac: 681b         	ldr	r3, [r3]
  3461ae: f503 730c    	add.w	r3, r3, #0x230
  3461b2: 681c         	ldr	r4, [r3]
  3461b4: 9b03         	ldr	r3, [sp, #0xc]
  3461b6: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  3461ba: 461d         	mov	r5, r3
  3461bc: ab16         	add	r3, sp, #0x58
  3461be: ed9d 6b0a    	vldr	d6, [sp, #40]
  3461c2: ed9d 7b0c    	vldr	d7, [sp, #48]
  3461c6: 4618         	mov	r0, r3
  3461c8: eeb0 0b46    	vmov.f64	d0, d6
  3461cc: eeb0 1b47    	vmov.f64	d1, d7
  3461d0: eeb6 2b00    	vmov.f64	d2, #5.000000e-01
  3461d4: f7fe fd56    	bl	0x344c84 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x8e4> @ imm = #-0x1554
  3461d8: 466b         	mov	r3, sp
  3461da: aa18         	add	r2, sp, #0x60
  3461dc: e892 0003    	ldm.w	r2, {r0, r1}
  3461e0: e883 0003    	stm.w	r3, {r0, r1}
  3461e4: ab16         	add	r3, sp, #0x58
  3461e6: cb0c         	ldm	r3, {r2, r3}
  3461e8: 4628         	mov	r0, r5
  3461ea: 47a0         	blx	r4
  3461ec: e002         	b	0x3461f4 <HumanoidDrone::updateMoveTo(cpVect)+0x1c4> @ imm = #0x4
  3461ee: 9803         	ldr	r0, [sp, #0xc]
  3461f0: f7ff fec6    	bl	0x345f80 <HumanoidDrone::hover()> @ imm = #-0x274
  3461f4: b01b         	add	sp, #0x6c
  3461f6: e8bd 4030    	pop.w	{r4, r5, lr}
  3461fa: b002         	add	sp, #0x8
  3461fc: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x3461fd); words below are literal-pool data ---
  3461fe: bf00         	nop
  346200: b852         	<unknown>
  346202: 851e         	strh	r6, [r3, #0x28]
  346204: 51eb         	str	r3, [r5, r7]
  346206: 3fe8         	subs	r7, #0xe8
  346208: 0000         	movs	r0, r0
  34620a: 4320         	orrs	r0, r4

// ==== HumanoidDrone::updateAim
//      file offset 0x346210 (= ELF address; Ghidra 0x356210), 636 bytes, Thumb-2
  346210: b082         	sub	sp, #0x8
  346212: b500         	push	{lr}
  346214: ed2d 8b02    	vpush	{d8}
  346218: b09d         	sub	sp, #0x74
  34621a: 9001         	str	r0, [sp, #0x4]
  34621c: a920         	add	r1, sp, #0x80
  34621e: e881 000c    	stm.w	r1, {r2, r3}
  346222: 9b01         	ldr	r3, [sp, #0x4]
  346224: ed93 7a66    	vldr	s14, [r3, #408]
  346228: eddf 7a95    	vldr	s15, [pc, #596]         @ 0x346480 <HumanoidDrone::updateAim(cpVect)+0x270>
  34622c: eeb4 7ae7    	vcmpe.f32	s14, s15
  346230: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  346234: dd09         	ble	0x34624a <HumanoidDrone::updateAim(cpVect)+0x3a> @ imm = #0x12
  346236: 9b01         	ldr	r3, [sp, #0x4]
  346238: ed93 7a66    	vldr	s14, [r3, #408]
  34623c: eddf 7a90    	vldr	s15, [pc, #576]         @ 0x346480 <HumanoidDrone::updateAim(cpVect)+0x270>
  346240: ee77 7a67    	vsub.f32	s15, s14, s15
  346244: 9b01         	ldr	r3, [sp, #0x4]
  346246: edc3 7a66    	vstr	s15, [r3, #408]
  34624a: 9b01         	ldr	r3, [sp, #0x4]
  34624c: edd3 7a66    	vldr	s15, [r3, #408]
  346250: eef5 7ac0    	vcmpe.f32	s15, #0
  346254: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  346258: d509         	bpl	0x34626e <HumanoidDrone::updateAim(cpVect)+0x5e> @ imm = #0x12
  34625a: 9b01         	ldr	r3, [sp, #0x4]
  34625c: ed93 7a66    	vldr	s14, [r3, #408]
  346260: eddf 7a87    	vldr	s15, [pc, #540]         @ 0x346480 <HumanoidDrone::updateAim(cpVect)+0x270>
  346264: ee77 7a27    	vadd.f32	s15, s14, s15
  346268: 9b01         	ldr	r3, [sp, #0x4]
  34626a: edc3 7a66    	vstr	s15, [r3, #408]
  34626e: f04f 0300    	mov.w	r3, #0x0
  346272: f2c4 0340    	movt	r3, #0x4040
  346276: 9305         	str	r3, [sp, #0x14]
  346278: 2301         	movs	r3, #0x1
  34627a: f88d 300f    	strb.w	r3, [sp, #0xf]
  34627e: 9b01         	ldr	r3, [sp, #0x4]
  346280: ed93 7a66    	vldr	s14, [r3, #408]
  346284: eddf 7a7f    	vldr	s15, [pc, #508]         @ 0x346484 <HumanoidDrone::updateAim(cpVect)+0x274>
  346288: ee67 7a27    	vmul.f32	s15, s14, s15
  34628c: edcd 7a06    	vstr	s15, [sp, #24]
  346290: 9b01         	ldr	r3, [sp, #0x4]
  346292: ed93 7a66    	vldr	s14, [r3, #408]
  346296: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  34629a: ee37 7a27    	vadd.f32	s14, s14, s15
  34629e: eddf 7a79    	vldr	s15, [pc, #484]         @ 0x346484 <HumanoidDrone::updateAim(cpVect)+0x274>
  3462a2: ee67 7a27    	vmul.f32	s15, s14, s15
  3462a6: edcd 7a07    	vstr	s15, [sp, #28]
  3462aa: 9806         	ldr	r0, [sp, #0x18]
  3462ac: f7e3 f8e6    	bl	0x32947c <std::cos(float)> @ imm = #-0x1ce34
  3462b0: ee07 0a90    	vmov	s15, r0
  3462b4: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  3462b8: 9806         	ldr	r0, [sp, #0x18]
  3462ba: f7e3 f8f7    	bl	0x3294ac <std::sin(float)> @ imm = #-0x1ce12
  3462be: 4603         	mov	r3, r0
  3462c0: ee07 3a10    	vmov	s14, r3
  3462c4: eef1 7a47    	vneg.f32	s15, s14
  3462c8: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3462cc: ab0c         	add	r3, sp, #0x30
  3462ce: 4618         	mov	r0, r3
  3462d0: eeb0 0b48    	vmov.f64	d0, d8
  3462d4: eeb0 1b47    	vmov.f64	d1, d7
  3462d8: f7fe fc94    	bl	0x344c04 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x864> @ imm = #-0x16d8
  3462dc: ab10         	add	r3, sp, #0x40
  3462de: ed9d 6b20    	vldr	d6, [sp, #128]
  3462e2: ed9d 7b22    	vldr	d7, [sp, #136]
  3462e6: 4618         	mov	r0, r3
  3462e8: eeb0 0b46    	vmov.f64	d0, d6
  3462ec: eeb0 1b47    	vmov.f64	d1, d7
  3462f0: f7fe fd12    	bl	0x344d18 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x978> @ imm = #-0x15dc
  3462f4: ed9d 4b0c    	vldr	d4, [sp, #48]
  3462f8: ed9d 5b0e    	vldr	d5, [sp, #56]
  3462fc: ed9d 6b10    	vldr	d6, [sp, #64]
  346300: ed9d 7b12    	vldr	d7, [sp, #72]
  346304: eeb0 0b44    	vmov.f64	d0, d4
  346308: eeb0 1b45    	vmov.f64	d1, d5
  34630c: eeb0 2b46    	vmov.f64	d2, d6
  346310: eeb0 3b47    	vmov.f64	d3, d7
  346314: f7fe fcdc    	bl	0x344cd0 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x930> @ imm = #-0x1648
  346318: eeb0 7b40    	vmov.f64	d7, d0
  34631c: eef7 7bc7    	vcvt.f32.f64	s15, d7
  346320: edcd 7a08    	vstr	s15, [sp, #32]
  346324: 9807         	ldr	r0, [sp, #0x1c]
  346326: f7e3 f8a9    	bl	0x32947c <std::cos(float)> @ imm = #-0x1ceae
  34632a: ee07 0a90    	vmov	s15, r0
  34632e: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  346332: 9807         	ldr	r0, [sp, #0x1c]
  346334: f7e3 f8ba    	bl	0x3294ac <std::sin(float)> @ imm = #-0x1ce8c
  346338: 4603         	mov	r3, r0
  34633a: ee07 3a10    	vmov	s14, r3
  34633e: eef1 7a47    	vneg.f32	s15, s14
  346342: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  346346: ab14         	add	r3, sp, #0x50
  346348: 4618         	mov	r0, r3
  34634a: eeb0 0b48    	vmov.f64	d0, d8
  34634e: eeb0 1b47    	vmov.f64	d1, d7
  346352: f7fe fc57    	bl	0x344c04 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x864> @ imm = #-0x1752
  346356: ab18         	add	r3, sp, #0x60
  346358: ed9d 6b20    	vldr	d6, [sp, #128]
  34635c: ed9d 7b22    	vldr	d7, [sp, #136]
  346360: 4618         	mov	r0, r3
  346362: eeb0 0b46    	vmov.f64	d0, d6
  346366: eeb0 1b47    	vmov.f64	d1, d7
  34636a: f7fe fcd5    	bl	0x344d18 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x978> @ imm = #-0x1656
  34636e: ed9d 4b14    	vldr	d4, [sp, #80]
  346372: ed9d 5b16    	vldr	d5, [sp, #88]
  346376: ed9d 6b18    	vldr	d6, [sp, #96]
  34637a: ed9d 7b1a    	vldr	d7, [sp, #104]
  34637e: eeb0 0b44    	vmov.f64	d0, d4
  346382: eeb0 1b45    	vmov.f64	d1, d5
  346386: eeb0 2b46    	vmov.f64	d2, d6
  34638a: eeb0 3b47    	vmov.f64	d3, d7
  34638e: f7fe fc9f    	bl	0x344cd0 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x930> @ imm = #-0x16c2
  346392: eeb0 7b40    	vmov.f64	d7, d0
  346396: eef7 7bc7    	vcvt.f32.f64	s15, d7
  34639a: edcd 7a09    	vstr	s15, [sp, #36]
  34639e: ed9d 7a09    	vldr	s14, [sp, #36]
  3463a2: eddd 7a08    	vldr	s15, [sp, #32]
  3463a6: eeb4 7ae7    	vcmpe.f32	s14, s15
  3463aa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3463ae: dd02         	ble	0x3463b6 <HumanoidDrone::updateAim(cpVect)+0x1a6> @ imm = #0x4
  3463b0: f04f 537e    	mov.w	r3, #0x3f800000
  3463b4: e003         	b	0x3463be <HumanoidDrone::updateAim(cpVect)+0x1ae> @ imm = #0x6
  3463b6: f04f 0300    	mov.w	r3, #0x0
  3463ba: f6cb 7380    	movt	r3, #0xbf80
  3463be: 930a         	str	r3, [sp, #0x28]
  3463c0: ed9d 7a08    	vldr	s14, [sp, #32]
  3463c4: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3463c8: ee37 7a27    	vadd.f32	s14, s14, s15
  3463cc: eddf 7a2e    	vldr	s15, [pc, #184]         @ 0x346488 <HumanoidDrone::updateAim(cpVect)+0x278>
  3463d0: ee67 7a27    	vmul.f32	s15, s14, s15
  3463d4: ed9f 7a2a    	vldr	s14, [pc, #168]         @ 0x346480 <HumanoidDrone::updateAim(cpVect)+0x270>
  3463d8: ee77 7a67    	vsub.f32	s15, s14, s15
  3463dc: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3463e0: ee17 3a90    	vmov	r3, s15
  3463e4: 930b         	str	r3, [sp, #0x2c]
  3463e6: 9a0b         	ldr	r2, [sp, #0x2c]
  3463e8: f248 531f    	movw	r3, #0x851f
  3463ec: f2c5 13eb    	movt	r3, #0x51eb
  3463f0: fb83 1302    	smull	r1, r3, r3, r2
  3463f4: 10d9         	asrs	r1, r3, #0x3
  3463f6: 17d3         	asrs	r3, r2, #0x1f
  3463f8: 1acb         	subs	r3, r1, r3
  3463fa: 3301         	adds	r3, #0x1
  3463fc: ee07 3a10    	vmov	s14, r3
  346400: eef8 7ac7    	vcvt.f32.s32	s15, s14
  346404: edcd 7a04    	vstr	s15, [sp, #16]
  346408: 9b0b         	ldr	r3, [sp, #0x2c]
  34640a: ee07 3a90    	vmov	s15, r3
  34640e: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  346412: eddd 7a05    	vldr	s15, [sp, #20]
  346416: eeb4 7ae7    	vcmpe.f32	s14, s15
  34641a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  34641e: d406         	bmi	0x34642e <HumanoidDrone::updateAim(cpVect)+0x21e> @ imm = #0xc
  346420: f89d 300f    	ldrb.w	r3, [sp, #0xf]
  346424: f083 0301    	eor	r3, r3, #0x1
  346428: b2db         	uxtb	r3, r3
  34642a: 2b00         	cmp	r3, #0x0
  34642c: d002         	beq	0x346434 <HumanoidDrone::updateAim(cpVect)+0x224> @ imm = #0x4
  34642e: f04f 0300    	mov.w	r3, #0x0
  346432: 9304         	str	r3, [sp, #0x10]
  346434: 9b01         	ldr	r3, [sp, #0x4]
  346436: ed93 7a66    	vldr	s14, [r3, #408]
  34643a: eddd 6a0a    	vldr	s13, [sp, #40]
  34643e: eddd 7a04    	vldr	s15, [sp, #16]
  346442: ee66 7aa7    	vmul.f32	s15, s13, s15
  346446: ee77 7a27    	vadd.f32	s15, s14, s15
  34644a: 9b01         	ldr	r3, [sp, #0x4]
  34644c: edc3 7a66    	vstr	s15, [r3, #408]
  346450: 9b01         	ldr	r3, [sp, #0x4]
  346452: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  346456: 681b         	ldr	r3, [r3]
  346458: f503 730e    	add.w	r3, r3, #0x238
  34645c: 681b         	ldr	r3, [r3]
  34645e: 9a01         	ldr	r2, [sp, #0x4]
  346460: f8d2 11ac    	ldr.w	r1, [r2, #0x1ac]
  346464: 9a01         	ldr	r2, [sp, #0x4]
  346466: f8d2 2198    	ldr.w	r2, [r2, #0x198]
  34646a: 4608         	mov	r0, r1
  34646c: 4611         	mov	r1, r2
  34646e: 4798         	blx	r3
  346470: b01d         	add	sp, #0x74
  346472: ecbd 8b02    	vpop	{d8}
  346476: f85d eb04    	ldr	lr, [sp], #4
  34647a: b002         	add	sp, #0x8
  34647c: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x34647d); words below are literal-pool data ---
  34647e: bf00         	nop
  346480: 0000         	movs	r0, r0
  346482: 43b4         	bics	r4, r6
  346484: fa35 3c8e    	<unknown>
  346488: 0000         	movs	r0, r0
  34648a: 4334         	orrs	r4, r6

// ==== HumanoidDrone::updateRemoteStep
//      file offset 0x34648c (= ELF address; Ghidra 0x35648c), 192 bytes, Thumb-2
  34648c: b5f0         	push	{r4, r5, r6, r7, lr}
  34648e: b08d         	sub	sp, #0x34
  346490: 9009         	str	r0, [sp, #0x24]
  346492: 9108         	str	r1, [sp, #0x20]
  346494: 9b09         	ldr	r3, [sp, #0x24]
  346496: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  34649a: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  34649e: f8d3 3090    	ldr.w	r3, [r3, #0x90]
  3464a2: 2b00         	cmp	r3, #0x0
  3464a4: d00f         	beq	0x3464c6 <HumanoidDrone::updateRemoteStep(float)+0x3a> @ imm = #0x1e
  3464a6: 9b09         	ldr	r3, [sp, #0x24]
  3464a8: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  3464ac: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3464b0: 2200         	movs	r2, #0x0
  3464b2: f8c3 2090    	str.w	r2, [r3, #0x90]
  3464b6: 9b09         	ldr	r3, [sp, #0x24]
  3464b8: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  3464bc: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3464c0: 4a20         	ldr	r2, [pc, #0x80]         @ 0x346544 <HumanoidDrone::updateRemoteStep(float)+0xb8>
  3464c2: 447a         	add	r2, pc
  3464c4: 601a         	str	r2, [r3]
  3464c6: 9b09         	ldr	r3, [sp, #0x24]
  3464c8: 681b         	ldr	r3, [r3]
  3464ca: f503 7306    	add.w	r3, r3, #0x218
  3464ce: 681c         	ldr	r4, [r3]
  3464d0: 4b1d         	ldr	r3, [pc, #0x74]         @ 0x346548 <HumanoidDrone::updateRemoteStep(float)+0xbc>
  3464d2: 447b         	add	r3, pc
  3464d4: 466a         	mov	r2, sp
  3464d6: f103 0108    	add.w	r1, r3, #0x8
  3464da: c903         	ldm	r1, {r0, r1}
  3464dc: e882 0003    	stm.w	r2, {r0, r1}
  3464e0: cb0c         	ldm	r3, {r2, r3}
  3464e2: 9809         	ldr	r0, [sp, #0x24]
  3464e4: 47a0         	blx	r4
  3464e6: 9b09         	ldr	r3, [sp, #0x24]
  3464e8: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  3464ec: 930b         	str	r3, [sp, #0x2c]
  3464ee: 9b0b         	ldr	r3, [sp, #0x2c]
  3464f0: 2201         	movs	r2, #0x1
  3464f2: f883 21c5    	strb.w	r2, [r3, #0x1c5]
  3464f6: 9b09         	ldr	r3, [sp, #0x24]
  3464f8: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  3464fc: 681b         	ldr	r3, [r3]
  3464fe: f503 7335    	add.w	r3, r3, #0x2d4
  346502: 681e         	ldr	r6, [r3]
  346504: 9b09         	ldr	r3, [sp, #0x24]
  346506: f8d3 71ac    	ldr.w	r7, [r3, #0x1ac]
  34650a: 9b09         	ldr	r3, [sp, #0x24]
  34650c: f8d3 e180    	ldr.w	lr, [r3, #0x180]
  346510: 9c09         	ldr	r4, [sp, #0x24]
  346512: 9b09         	ldr	r3, [sp, #0x24]
  346514: ad02         	add	r5, sp, #0x8
  346516: f503 73c4    	add.w	r3, r3, #0x188
  34651a: cb0f         	ldm	r3, {r0, r1, r2, r3}
  34651c: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  346520: f8cd e018    	str.w	lr, [sp, #0x18]
  346524: 466b         	mov	r3, sp
  346526: f504 72bc    	add.w	r2, r4, #0x178
  34652a: e892 0003    	ldm.w	r2, {r0, r1}
  34652e: e883 0003    	stm.w	r3, {r0, r1}
  346532: f504 73b8    	add.w	r3, r4, #0x170
  346536: cb0c         	ldm	r3, {r2, r3}
  346538: 4638         	mov	r0, r7
  34653a: 9908         	ldr	r1, [sp, #0x20]
  34653c: 47b0         	blx	r6
  34653e: b00d         	add	sp, #0x34
  346540: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x346541); words below are literal-pool data ---
  346542: bf00         	nop
  346544: f6e7 ffff    	bl	0x22e546                @ imm = #-0x118002
  346548: 4182         	sbcs	r2, r0
  34654a: 0048         	lsls	r0, r1, #0x1

// ==== HumanoidDrone::updateStep
//      file offset 0x346550 (= ELF address; Ghidra 0x356550), 1030 bytes, Thumb-2
  346550: b530         	push	{r4, r5, lr}
  346552: b09f         	sub	sp, #0x7c
  346554: 9007         	str	r0, [sp, #0x1c]
  346556: 9106         	str	r1, [sp, #0x18]
  346558: 9b07         	ldr	r3, [sp, #0x1c]
  34655a: ed93 7a58    	vldr	s14, [r3, #352]
  34655e: eddd 7a06    	vldr	s15, [sp, #24]
  346562: ee77 7a27    	vadd.f32	s15, s14, s15
  346566: 9b07         	ldr	r3, [sp, #0x1c]
  346568: edc3 7a58    	vstr	s15, [r3, #352]
  34656c: 9b07         	ldr	r3, [sp, #0x1c]
  34656e: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  346572: 681b         	ldr	r3, [r3]
  346574: f503 73ee    	add.w	r3, r3, #0x1dc
  346578: 681b         	ldr	r3, [r3]
  34657a: 9a07         	ldr	r2, [sp, #0x1c]
  34657c: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  346580: 4610         	mov	r0, r2
  346582: 9906         	ldr	r1, [sp, #0x18]
  346584: 4798         	blx	r3
  346586: 9b07         	ldr	r3, [sp, #0x1c]
  346588: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  34658c: 681b         	ldr	r3, [r3]
  34658e: f503 7315    	add.w	r3, r3, #0x254
  346592: 681b         	ldr	r3, [r3]
  346594: 9a07         	ldr	r2, [sp, #0x1c]
  346596: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  34659a: 4610         	mov	r0, r2
  34659c: 4798         	blx	r3
  34659e: 4603         	mov	r3, r0
  3465a0: 461a         	mov	r2, r3
  3465a2: 9b07         	ldr	r3, [sp, #0x1c]
  3465a4: f883 21a4    	strb.w	r2, [r3, #0x1a4]
  3465a8: 9b07         	ldr	r3, [sp, #0x1c]
  3465aa: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  3465ae: 681b         	ldr	r3, [r3]
  3465b0: f503 73f0    	add.w	r3, r3, #0x1e0
  3465b4: 681b         	ldr	r3, [r3]
  3465b6: 9a07         	ldr	r2, [sp, #0x1c]
  3465b8: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  3465bc: 4610         	mov	r0, r2
  3465be: 2100         	movs	r1, #0x0
  3465c0: 4798         	blx	r3
  3465c2: 9b07         	ldr	r3, [sp, #0x1c]
  3465c4: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  3465c8: 2200         	movs	r2, #0x0
  3465ca: f883 211c    	strb.w	r2, [r3, #0x11c]
  3465ce: 9b07         	ldr	r3, [sp, #0x1c]
  3465d0: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  3465d4: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3465d8: ed93 6b0c    	vldr	d6, [r3, #48]
  3465dc: ed9f 7b7c    	vldr	d7, [pc, #496]          @ 0x3467d0 <HumanoidDrone::updateStep(float)+0x280>
  3465e0: eeb4 6bc7    	vcmpe.f64	d6, d7
  3465e4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3465e8: d50c         	bpl	0x346604 <HumanoidDrone::updateStep(float)+0xb4> @ imm = #0x18
  3465ea: 9b07         	ldr	r3, [sp, #0x1c]
  3465ec: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  3465f0: 681b         	ldr	r3, [r3]
  3465f2: f503 7318    	add.w	r3, r3, #0x260
  3465f6: 681b         	ldr	r3, [r3]
  3465f8: 9a07         	ldr	r2, [sp, #0x1c]
  3465fa: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  3465fe: 4610         	mov	r0, r2
  346600: 2100         	movs	r1, #0x0
  346602: 4798         	blx	r3
  346604: 9b07         	ldr	r3, [sp, #0x1c]
  346606: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  34660a: 681b         	ldr	r3, [r3]
  34660c: f503 730c    	add.w	r3, r3, #0x230
  346610: 681c         	ldr	r4, [r3]
  346612: 9b07         	ldr	r3, [sp, #0x1c]
  346614: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  346618: 461d         	mov	r5, r3
  34661a: ab0a         	add	r3, sp, #0x28
  34661c: 4618         	mov	r0, r3
  34661e: ed9f 0b6e    	vldr	d0, [pc, #440]          @ 0x3467d8 <HumanoidDrone::updateStep(float)+0x288>
  346622: ed9f 1b6d    	vldr	d1, [pc, #436]          @ 0x3467d8 <HumanoidDrone::updateStep(float)+0x288>
  346626: f7fe faed    	bl	0x344c04 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x864> @ imm = #-0x1a26
  34662a: 466b         	mov	r3, sp
  34662c: aa0c         	add	r2, sp, #0x30
  34662e: e892 0003    	ldm.w	r2, {r0, r1}
  346632: e883 0003    	stm.w	r3, {r0, r1}
  346636: ab0a         	add	r3, sp, #0x28
  346638: cb0c         	ldm	r3, {r2, r3}
  34663a: 4628         	mov	r0, r5
  34663c: 47a0         	blx	r4
  34663e: 9b07         	ldr	r3, [sp, #0x1c]
  346640: f893 319c    	ldrb.w	r3, [r3, #0x19c]
  346644: 2b00         	cmp	r3, #0x0
  346646: d014         	beq	0x346672 <HumanoidDrone::updateStep(float)+0x122> @ imm = #0x28
  346648: 9b07         	ldr	r3, [sp, #0x1c]
  34664a: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  34664e: 9309         	str	r3, [sp, #0x24]
  346650: 9b09         	ldr	r3, [sp, #0x24]
  346652: 2200         	movs	r2, #0x0
  346654: f883 21c5    	strb.w	r2, [r3, #0x1c5]
  346658: 9b07         	ldr	r3, [sp, #0x1c]
  34665a: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  34665e: 681b         	ldr	r3, [r3]
  346660: f503 7310    	add.w	r3, r3, #0x240
  346664: 681b         	ldr	r3, [r3]
  346666: 9a07         	ldr	r2, [sp, #0x1c]
  346668: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  34666c: 4610         	mov	r0, r2
  34666e: 9906         	ldr	r1, [sp, #0x18]
  346670: 4798         	blx	r3
  346672: 9b07         	ldr	r3, [sp, #0x1c]
  346674: 2200         	movs	r2, #0x0
  346676: f883 219c    	strb.w	r2, [r3, #0x19c]
  34667a: 9b07         	ldr	r3, [sp, #0x1c]
  34667c: f8d3 315c    	ldr.w	r3, [r3, #0x15c]
  346680: 2b02         	cmp	r3, #0x2
  346682: f000 80af    	beq.w	0x3467e4 <HumanoidDrone::updateStep(float)+0x294> @ imm = #0x15e
  346686: 2b03         	cmp	r3, #0x3
  346688: d000         	beq	0x34668c <HumanoidDrone::updateStep(float)+0x13c> @ imm = #0x0
  34668a: e112         	b	0x3468b2 <HumanoidDrone::updateStep(float)+0x362> @ imm = #0x224
  34668c: 9b07         	ldr	r3, [sp, #0x1c]
  34668e: ed93 7a6d    	vldr	s14, [r3, #436]
  346692: eddd 7a06    	vldr	s15, [sp, #24]
  346696: ee77 7a27    	vadd.f32	s15, s14, s15
  34669a: 9b07         	ldr	r3, [sp, #0x1c]
  34669c: edc3 7a6d    	vstr	s15, [r3, #436]
  3466a0: 9b07         	ldr	r3, [sp, #0x1c]
  3466a2: ed93 7a6d    	vldr	s14, [r3, #436]
  3466a6: 9b07         	ldr	r3, [sp, #0x1c]
  3466a8: edd3 7a6c    	vldr	s15, [r3, #432]
  3466ac: eeb4 7ae7    	vcmpe.f32	s14, s15
  3466b0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3466b4: dd52         	ble	0x34675c <HumanoidDrone::updateStep(float)+0x20c> @ imm = #0xa4
  3466b6: 9b07         	ldr	r3, [sp, #0x1c]
  3466b8: 2201         	movs	r2, #0x1
  3466ba: f883 219c    	strb.w	r2, [r3, #0x19c]
  3466be: 9b07         	ldr	r3, [sp, #0x1c]
  3466c0: ed93 7a6d    	vldr	s14, [r3, #436]
  3466c4: 9b07         	ldr	r3, [sp, #0x1c]
  3466c6: edd3 6a6e    	vldr	s13, [r3, #440]
  3466ca: 9b07         	ldr	r3, [sp, #0x1c]
  3466cc: edd3 7a6c    	vldr	s15, [r3, #432]
  3466d0: ee76 7aa7    	vadd.f32	s15, s13, s15
  3466d4: eeb4 7ae7    	vcmpe.f32	s14, s15
  3466d8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3466dc: dd3e         	ble	0x34675c <HumanoidDrone::updateStep(float)+0x20c> @ imm = #0x7c
  3466de: 9b07         	ldr	r3, [sp, #0x1c]
  3466e0: 2200         	movs	r2, #0x0
  3466e2: f883 219c    	strb.w	r2, [r3, #0x19c]
  3466e6: 9b07         	ldr	r3, [sp, #0x1c]
  3466e8: f04f 0200    	mov.w	r2, #0x0
  3466ec: f8c3 21b4    	str.w	r2, [r3, #0x1b4]
  3466f0: f7fe fa54    	bl	0x344b9c <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x7fc> @ imm = #-0x1b58
  3466f4: 4603         	mov	r3, r0
  3466f6: ee07 3a90    	vmov	s15, r3
  3466fa: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3466fe: eddf 7a38    	vldr	s15, [pc, #224]         @ 0x3467e0 <HumanoidDrone::updateStep(float)+0x290>
  346702: ee87 7a27    	vdiv.f32	s14, s14, s15
  346706: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  34670a: ee37 7a67    	vsub.f32	s14, s14, s15
  34670e: eef2 7a00    	vmov.f32	s15, #8.000000e+00
  346712: ee67 7a27    	vmul.f32	s15, s14, s15
  346716: ee17 0a90    	vmov	r0, s15
  34671a: f7f8 fecf    	bl	0x33f4bc <std::fabs(float)> @ imm = #-0x7262
  34671e: 4602         	mov	r2, r0
  346720: 9b07         	ldr	r3, [sp, #0x1c]
  346722: f8c3 21b0    	str.w	r2, [r3, #0x1b0]
  346726: f7fe fa39    	bl	0x344b9c <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x7fc> @ imm = #-0x1b8e
  34672a: 4603         	mov	r3, r0
  34672c: ee07 3a90    	vmov	s15, r3
  346730: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  346734: eddf 7a2a    	vldr	s15, [pc, #168]         @ 0x3467e0 <HumanoidDrone::updateStep(float)+0x290>
  346738: ee87 7a27    	vdiv.f32	s14, s14, s15
  34673c: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  346740: ee37 7a67    	vsub.f32	s14, s14, s15
  346744: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  346748: ee67 7a27    	vmul.f32	s15, s14, s15
  34674c: ee17 0a90    	vmov	r0, s15
  346750: f7f8 feb4    	bl	0x33f4bc <std::fabs(float)> @ imm = #-0x7298
  346754: 4602         	mov	r2, r0
  346756: 9b07         	ldr	r3, [sp, #0x1c]
  346758: f8c3 21b8    	str.w	r2, [r3, #0x1b8]
  34675c: 9b07         	ldr	r3, [sp, #0x1c]
  34675e: 466a         	mov	r2, sp
  346760: f503 718c    	add.w	r1, r3, #0x118
  346764: c903         	ldm	r1, {r0, r1}
  346766: e882 0003    	stm.w	r2, {r0, r1}
  34676a: f503 7388    	add.w	r3, r3, #0x110
  34676e: cb0c         	ldm	r3, {r2, r3}
  346770: 9807         	ldr	r0, [sp, #0x1c]
  346772: f7ff fc5d    	bl	0x346030 <HumanoidDrone::updateMoveTo(cpVect)> @ imm = #-0x746
  346776: 9b07         	ldr	r3, [sp, #0x1c]
  346778: 681b         	ldr	r3, [r3]
  34677a: f503 73d6    	add.w	r3, r3, #0x1ac
  34677e: 681b         	ldr	r3, [r3]
  346780: aa0e         	add	r2, sp, #0x38
  346782: 4610         	mov	r0, r2
  346784: 9907         	ldr	r1, [sp, #0x1c]
  346786: 4798         	blx	r3
  346788: aa12         	add	r2, sp, #0x48
  34678a: 9b07         	ldr	r3, [sp, #0x1c]
  34678c: ed93 4b44    	vldr	d4, [r3, #272]
  346790: ed93 5b46    	vldr	d5, [r3, #280]
  346794: ed9d 6b0e    	vldr	d6, [sp, #56]
  346798: ed9d 7b10    	vldr	d7, [sp, #64]
  34679c: 4610         	mov	r0, r2
  34679e: eeb0 0b44    	vmov.f64	d0, d4
  3467a2: eeb0 1b45    	vmov.f64	d1, d5
  3467a6: eeb0 2b46    	vmov.f64	d2, d6
  3467aa: eeb0 3b47    	vmov.f64	d3, d7
  3467ae: f7fe fa3d    	bl	0x344c2c <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x88c> @ imm = #-0x1b86
  3467b2: 466b         	mov	r3, sp
  3467b4: aa14         	add	r2, sp, #0x50
  3467b6: e892 0003    	ldm.w	r2, {r0, r1}
  3467ba: e883 0003    	stm.w	r3, {r0, r1}
  3467be: ab12         	add	r3, sp, #0x48
  3467c0: cb0c         	ldm	r3, {r2, r3}
  3467c2: 9807         	ldr	r0, [sp, #0x1c]
  3467c4: f7ff fd24    	bl	0x346210 <HumanoidDrone::updateAim(cpVect)> @ imm = #-0x5b8
  3467c8: e073         	b	0x3468b2 <HumanoidDrone::updateStep(float)+0x362> @ imm = #0xe6
  3467ca: bf00         	nop
  3467cc: f3af 8000    	nop.w
  3467d0: 0000         	movs	r0, r0
  3467d2: 0000         	movs	r0, r0
  3467d4: 4000         	ands	r0, r0
  3467d6: c07f         	stm	r0!, {r0, r1, r2, r3, r4, r5, r6}
  3467e0: 0000         	movs	r0, r0
  3467e2: 4e80         	ldr	r6, [pc, #0x200]        @ 0x3469e4 <HumanoidDrone::resetBody()+0x10>
  3467e4: 9b07         	ldr	r3, [sp, #0x1c]
  3467e6: ed93 7a59    	vldr	s14, [r3, #356]
  3467ea: eddd 7a06    	vldr	s15, [sp, #24]
  3467ee: ee77 7a27    	vadd.f32	s15, s14, s15
  3467f2: 9b07         	ldr	r3, [sp, #0x1c]
  3467f4: edc3 7a59    	vstr	s15, [r3, #356]
  3467f8: 9b07         	ldr	r3, [sp, #0x1c]
  3467fa: ed93 7a59    	vldr	s14, [r3, #356]
  3467fe: 9b07         	ldr	r3, [sp, #0x1c]
  346800: edd3 7a5a    	vldr	s15, [r3, #360]
  346804: eeb4 7ae7    	vcmpe.f32	s14, s15
  346808: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  34680c: dc09         	bgt	0x346822 <HumanoidDrone::updateStep(float)+0x2d2> @ imm = #0x12
  34680e: 9b07         	ldr	r3, [sp, #0x1c]
  346810: ed93 7a74    	vldr	s14, [r3, #464]
  346814: eef0 7a08    	vmov.f32	s15, #3.000000e+00
  346818: eeb4 7ae7    	vcmpe.f32	s14, s15
  34681c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  346820: dd39         	ble	0x346896 <HumanoidDrone::updateStep(float)+0x346> @ imm = #0x72
  346822: f7fe f9bb    	bl	0x344b9c <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x7fc> @ imm = #-0x1c8a
  346826: 4603         	mov	r3, r0
  346828: ee07 3a90    	vmov	s15, r3
  34682c: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  346830: ed5f 7a15    	vldr	s15, [pc, #-84]         @ 0x3467e0 <HumanoidDrone::updateStep(float)+0x290>
  346834: ee87 7a27    	vdiv.f32	s14, s14, s15
  346838: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  34683c: ee37 7a67    	vsub.f32	s14, s14, s15
  346840: eef2 7a0e    	vmov.f32	s15, #1.500000e+01
  346844: ee67 7a27    	vmul.f32	s15, s14, s15
  346848: ee17 0a90    	vmov	r0, s15
  34684c: f7f8 fe2a    	bl	0x33f4a4 <std::abs(float)> @ imm = #-0x73ac
  346850: ee07 0a10    	vmov	s14, r0
  346854: eef2 7a0e    	vmov.f32	s15, #1.500000e+01
  346858: ee77 7a27    	vadd.f32	s15, s14, s15
  34685c: 9b07         	ldr	r3, [sp, #0x1c]
  34685e: edc3 7a5a    	vstr	s15, [r3, #360]
  346862: 9b07         	ldr	r3, [sp, #0x1c]
  346864: f04f 0200    	mov.w	r2, #0x0
  346868: f8c3 2164    	str.w	r2, [r3, #0x164]
  34686c: 9b07         	ldr	r3, [sp, #0x1c]
  34686e: 681b         	ldr	r3, [r3]
  346870: f503 7308    	add.w	r3, r3, #0x220
  346874: 681b         	ldr	r3, [r3]
  346876: 9c07         	ldr	r4, [sp, #0x1c]
  346878: aa02         	add	r2, sp, #0x8
  34687a: 4610         	mov	r0, r2
  34687c: 9907         	ldr	r1, [sp, #0x1c]
  34687e: 4798         	blx	r3
  346880: f504 7490    	add.w	r4, r4, #0x120
  346884: ab02         	add	r3, sp, #0x8
  346886: cb0f         	ldm	r3, {r0, r1, r2, r3}
  346888: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  34688c: 9b07         	ldr	r3, [sp, #0x1c]
  34688e: f04f 0200    	mov.w	r2, #0x0
  346892: f8c3 21d0    	str.w	r2, [r3, #0x1d0]
  346896: 9b07         	ldr	r3, [sp, #0x1c]
  346898: 466a         	mov	r2, sp
  34689a: f503 7194    	add.w	r1, r3, #0x128
  34689e: c903         	ldm	r1, {r0, r1}
  3468a0: e882 0003    	stm.w	r2, {r0, r1}
  3468a4: f503 7390    	add.w	r3, r3, #0x120
  3468a8: cb0c         	ldm	r3, {r2, r3}
  3468aa: 9807         	ldr	r0, [sp, #0x1c]
  3468ac: f7ff fbc0    	bl	0x346030 <HumanoidDrone::updateMoveTo(cpVect)> @ imm = #-0x880
  3468b0: bf00         	nop
  3468b2: 9b07         	ldr	r3, [sp, #0x1c]
  3468b4: 681b         	ldr	r3, [r3]
  3468b6: f503 73d6    	add.w	r3, r3, #0x1ac
  3468ba: 681b         	ldr	r3, [r3]
  3468bc: aa16         	add	r2, sp, #0x58
  3468be: 4610         	mov	r0, r2
  3468c0: 9907         	ldr	r1, [sp, #0x1c]
  3468c2: 4798         	blx	r3
  3468c4: aa1a         	add	r2, sp, #0x68
  3468c6: ed9d 4b16    	vldr	d4, [sp, #88]
  3468ca: ed9d 5b18    	vldr	d5, [sp, #96]
  3468ce: 9b07         	ldr	r3, [sp, #0x1c]
  3468d0: ed93 6b70    	vldr	d6, [r3, #448]
  3468d4: ed93 7b72    	vldr	d7, [r3, #456]
  3468d8: 4610         	mov	r0, r2
  3468da: eeb0 0b44    	vmov.f64	d0, d4
  3468de: eeb0 1b45    	vmov.f64	d1, d5
  3468e2: eeb0 2b46    	vmov.f64	d2, d6
  3468e6: eeb0 3b47    	vmov.f64	d3, d7
  3468ea: f7fe f99f    	bl	0x344c2c <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x88c> @ imm = #-0x1cc2
  3468ee: ab1a         	add	r3, sp, #0x68
  3468f0: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3468f2: f390 fbe1    	bl	0x6d70b8 <cpvlength>    @ imm = #0x3907c2
  3468f6: ec41 0b16    	vmov	d6, r0, r1
  3468fa: eeb2 7b0e    	vmov.f64	d7, #1.500000e+01
  3468fe: eeb4 6bc7    	vcmpe.f64	d6, d7
  346902: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  346906: bf54         	ite	pl
  346908: 2300         	movpl	r3, #0x0
  34690a: 2301         	movmi	r3, #0x1
  34690c: b2db         	uxtb	r3, r3
  34690e: 2b00         	cmp	r3, #0x0
  346910: d00a         	beq	0x346928 <HumanoidDrone::updateStep(float)+0x3d8> @ imm = #0x14
  346912: 9b07         	ldr	r3, [sp, #0x1c]
  346914: ed93 7a74    	vldr	s14, [r3, #464]
  346918: eddd 7a06    	vldr	s15, [sp, #24]
  34691c: ee77 7a27    	vadd.f32	s15, s14, s15
  346920: 9b07         	ldr	r3, [sp, #0x1c]
  346922: edc3 7a74    	vstr	s15, [r3, #464]
  346926: e004         	b	0x346932 <HumanoidDrone::updateStep(float)+0x3e2> @ imm = #0x8
  346928: 9b07         	ldr	r3, [sp, #0x1c]
  34692a: f04f 0200    	mov.w	r2, #0x0
  34692e: f8c3 21d0    	str.w	r2, [r3, #0x1d0]
  346932: 9b07         	ldr	r3, [sp, #0x1c]
  346934: 681b         	ldr	r3, [r3]
  346936: f503 73d6    	add.w	r3, r3, #0x1ac
  34693a: 681b         	ldr	r3, [r3]
  34693c: 9c07         	ldr	r4, [sp, #0x1c]
  34693e: aa02         	add	r2, sp, #0x8
  346940: 4610         	mov	r0, r2
  346942: 9907         	ldr	r1, [sp, #0x1c]
  346944: 4798         	blx	r3
  346946: f504 74e0    	add.w	r4, r4, #0x1c0
  34694a: ab02         	add	r3, sp, #0x8
  34694c: cb0f         	ldm	r3, {r0, r1, r2, r3}
  34694e: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  346952: b01f         	add	sp, #0x7c
  346954: bd30         	pop	{r4, r5, pc}

// ==== HumanoidDrone::lookForTarget
//      file offset 0x346958 (= ELF address; Ghidra 0x356958), 52 bytes, Thumb-2
  346958: b500         	push	{lr}
  34695a: b083         	sub	sp, #0xc
  34695c: 9001         	str	r0, [sp, #0x4]
  34695e: 9b01         	ldr	r3, [sp, #0x4]
  346960: 681b         	ldr	r3, [r3]
  346962: f503 73f8    	add.w	r3, r3, #0x1f0
  346966: 681b         	ldr	r3, [r3]
  346968: 9a01         	ldr	r2, [sp, #0x4]
  34696a: 4610         	mov	r0, r2
  34696c: 4798         	blx	r3
  34696e: 4603         	mov	r3, r0
  346970: 2b00         	cmp	r3, #0x0
  346972: d004         	beq	0x34697e <HumanoidDrone::lookForTarget()+0x26> @ imm = #0x8
  346974: 9b01         	ldr	r3, [sp, #0x4]
  346976: 2203         	movs	r2, #0x3
  346978: f8c3 215c    	str.w	r2, [r3, #0x15c]
  34697c: e003         	b	0x346986 <HumanoidDrone::lookForTarget()+0x2e> @ imm = #0x6
  34697e: 9b01         	ldr	r3, [sp, #0x4]
  346980: 2202         	movs	r2, #0x2
  346982: f8c3 215c    	str.w	r2, [r3, #0x15c]
  346986: b003         	add	sp, #0xc
  346988: f85d fb04    	ldr	pc, [sp], #4

// ==== HumanoidDrone::initBody
//      file offset 0x34698c (= ELF address; Ghidra 0x35698c), 36 bytes, Thumb-2
  34698c: b500         	push	{lr}
  34698e: b083         	sub	sp, #0xc
  346990: 9001         	str	r0, [sp, #0x4]
  346992: 9b01         	ldr	r3, [sp, #0x4]
  346994: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  346998: 681b         	ldr	r3, [r3]
  34699a: f503 73e6    	add.w	r3, r3, #0x1cc
  34699e: 681b         	ldr	r3, [r3]
  3469a0: 9a01         	ldr	r2, [sp, #0x4]
  3469a2: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  3469a6: 4610         	mov	r0, r2
  3469a8: 4798         	blx	r3
  3469aa: b003         	add	sp, #0xc
  3469ac: f85d fb04    	ldr	pc, [sp], #4

// ==== HumanoidDrone::initShape
//      file offset 0x3469b0 (= ELF address; Ghidra 0x3569b0), 36 bytes, Thumb-2
  3469b0: b500         	push	{lr}
  3469b2: b083         	sub	sp, #0xc
  3469b4: 9001         	str	r0, [sp, #0x4]
  3469b6: 9b01         	ldr	r3, [sp, #0x4]
  3469b8: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  3469bc: 681b         	ldr	r3, [r3]
  3469be: f503 73e8    	add.w	r3, r3, #0x1d0
  3469c2: 681b         	ldr	r3, [r3]
  3469c4: 9a01         	ldr	r2, [sp, #0x4]
  3469c6: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  3469ca: 4610         	mov	r0, r2
  3469cc: 4798         	blx	r3
  3469ce: b003         	add	sp, #0xc
  3469d0: f85d fb04    	ldr	pc, [sp], #4

// ==== HumanoidDrone::resetBody
//      file offset 0x3469d4 (= ELF address; Ghidra 0x3569d4), 104 bytes, Thumb-2
  3469d4: b500         	push	{lr}
  3469d6: b083         	sub	sp, #0xc
  3469d8: 9001         	str	r0, [sp, #0x4]
  3469da: 9b01         	ldr	r3, [sp, #0x4]
  3469dc: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  3469e0: f8d3 2138    	ldr.w	r2, [r3, #0x138]
  3469e4: 4b13         	ldr	r3, [pc, #0x4c]         @ 0x346a34 <HumanoidDrone::resetBody()+0x60>
  3469e6: 447b         	add	r3, pc
  3469e8: ed93 6b00    	vldr	d6, [r3]
  3469ec: ed93 7b02    	vldr	d7, [r3, #8]
  3469f0: 4610         	mov	r0, r2
  3469f2: eeb0 0b46    	vmov.f64	d0, d6
  3469f6: eeb0 1b47    	vmov.f64	d1, d7
  3469fa: f7fe f9b5    	bl	0x344d68 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x9c8> @ imm = #-0x1c96
  3469fe: 9b01         	ldr	r3, [sp, #0x4]
  346a00: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  346a04: f8d3 2138    	ldr.w	r2, [r3, #0x138]
  346a08: 4b0b         	ldr	r3, [pc, #0x2c]         @ 0x346a38 <HumanoidDrone::resetBody()+0x64>
  346a0a: 447b         	add	r3, pc
  346a0c: ed93 6b00    	vldr	d6, [r3]
  346a10: ed93 7b02    	vldr	d7, [r3, #8]
  346a14: 4610         	mov	r0, r2
  346a16: eeb0 0b46    	vmov.f64	d0, d6
  346a1a: eeb0 1b47    	vmov.f64	d1, d7
  346a1e: f7fe f9b9    	bl	0x344d94 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x9f4> @ imm = #-0x1c8e
  346a22: 9b01         	ldr	r3, [sp, #0x4]
  346a24: f04f 0200    	mov.w	r2, #0x0
  346a28: f8c3 21a0    	str.w	r2, [r3, #0x1a0]
  346a2c: b003         	add	sp, #0xc
  346a2e: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x346a31); words below are literal-pool data ---
  346a32: bf00         	nop
  346a34: 3c6e         	subs	r4, #0x6e
  346a36: 0048         	lsls	r0, r1, #0x1
  346a38: 3c4a         	subs	r4, #0x4a
  346a3a: 0048         	lsls	r0, r1, #0x1

// ==== HumanoidDrone::addBodyShape
//      file offset 0x346a3c (= ELF address; Ghidra 0x356a3c), 36 bytes, Thumb-2
  346a3c: b500         	push	{lr}
  346a3e: b083         	sub	sp, #0xc
  346a40: 9001         	str	r0, [sp, #0x4]
  346a42: 9b01         	ldr	r3, [sp, #0x4]
  346a44: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  346a48: 681b         	ldr	r3, [r3]
  346a4a: f503 730a    	add.w	r3, r3, #0x228
  346a4e: 681b         	ldr	r3, [r3]
  346a50: 9a01         	ldr	r2, [sp, #0x4]
  346a52: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  346a56: 4610         	mov	r0, r2
  346a58: 4798         	blx	r3
  346a5a: b003         	add	sp, #0xc
  346a5c: f85d fb04    	ldr	pc, [sp], #4

// ==== HumanoidDrone::removeBodyShape
//      file offset 0x346a60 (= ELF address; Ghidra 0x356a60), 36 bytes, Thumb-2
  346a60: b500         	push	{lr}
  346a62: b083         	sub	sp, #0xc
  346a64: 9001         	str	r0, [sp, #0x4]
  346a66: 9b01         	ldr	r3, [sp, #0x4]
  346a68: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  346a6c: 681b         	ldr	r3, [r3]
  346a6e: f503 730b    	add.w	r3, r3, #0x22c
  346a72: 681b         	ldr	r3, [r3]
  346a74: 9a01         	ldr	r2, [sp, #0x4]
  346a76: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  346a7a: 4610         	mov	r0, r2
  346a7c: 4798         	blx	r3
  346a7e: b003         	add	sp, #0xc
  346a80: f85d fb04    	ldr	pc, [sp], #4

// ==== HumanoidDrone::addDamage
//      file offset 0x346a84 (= ELF address; Ghidra 0x356a84), 106 bytes, Thumb-2
  346a84: b530         	push	{r4, r5, lr}
  346a86: ed2d 8b02    	vpush	{d8}
  346a8a: b089         	sub	sp, #0x24
  346a8c: 9005         	str	r0, [sp, #0x14]
  346a8e: 9104         	str	r1, [sp, #0x10]
  346a90: 9203         	str	r2, [sp, #0xc]
  346a92: 9302         	str	r3, [sp, #0x8]
  346a94: 9b05         	ldr	r3, [sp, #0x14]
  346a96: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  346a9a: 681b         	ldr	r3, [r3]
  346a9c: f503 7316    	add.w	r3, r3, #0x258
  346aa0: 681c         	ldr	r4, [r3]
  346aa2: 9b05         	ldr	r3, [sp, #0x14]
  346aa4: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  346aa8: 461d         	mov	r5, r3
  346aaa: 9b04         	ldr	r3, [sp, #0x10]
  346aac: ee07 3a90    	vmov	s15, r3
  346ab0: eeb8 8ae7    	vcvt.f32.s32	s16, s15
  346ab4: ab07         	add	r3, sp, #0x1c
  346ab6: 4618         	mov	r0, r3
  346ab8: 9903         	ldr	r1, [sp, #0xc]
  346aba: f06f f515    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x46fa2a
  346abe: ab07         	add	r3, sp, #0x1c
  346ac0: 2201         	movs	r2, #0x1
  346ac2: 9200         	str	r2, [sp]
  346ac4: 4628         	mov	r0, r5
  346ac6: ee18 1a10    	vmov	r1, s16
  346aca: 461a         	mov	r2, r3
  346acc: 9b02         	ldr	r3, [sp, #0x8]
  346ace: 47a0         	blx	r4
  346ad0: ab07         	add	r3, sp, #0x1c
  346ad2: 4618         	mov	r0, r3
  346ad4: f06e f71e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46ee3c
  346ad8: e005         	b	0x346ae6 <HumanoidDrone::addDamage(int, std::string, int)+0x62> @ imm = #0xa
  346ada: ab07         	add	r3, sp, #0x1c
  346adc: 4618         	mov	r0, r3
  346ade: f06e f719    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46ee32
  346ae2: f041 f2e3    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4415c6
  346ae6: b009         	add	sp, #0x24
  346ae8: ecbd 8b02    	vpop	{d8}
  346aec: bd30         	pop	{r4, r5, pc}

// ==== HumanoidDrone::getHP
//      file offset 0x346af0 (= ELF address; Ghidra 0x356af0), 40 bytes, Thumb-2
  346af0: b500         	push	{lr}
  346af2: b083         	sub	sp, #0xc
  346af4: 9001         	str	r0, [sp, #0x4]
  346af6: 9b01         	ldr	r3, [sp, #0x4]
  346af8: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  346afc: 681b         	ldr	r3, [r3]
  346afe: f503 7317    	add.w	r3, r3, #0x25c
  346b02: 681b         	ldr	r3, [r3]
  346b04: 9a01         	ldr	r2, [sp, #0x4]
  346b06: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  346b0a: 4610         	mov	r0, r2
  346b0c: 4798         	blx	r3
  346b0e: 4603         	mov	r3, r0
  346b10: 4618         	mov	r0, r3
  346b12: b003         	add	sp, #0xc
  346b14: f85d fb04    	ldr	pc, [sp], #4

// ==== HumanoidDrone::setHP
//      file offset 0x346b18 (= ELF address; Ghidra 0x356b18), 40 bytes, Thumb-2
  346b18: b500         	push	{lr}
  346b1a: b083         	sub	sp, #0xc
  346b1c: 9001         	str	r0, [sp, #0x4]
  346b1e: 9100         	str	r1, [sp]
  346b20: 9b01         	ldr	r3, [sp, #0x4]
  346b22: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  346b26: 681b         	ldr	r3, [r3]
  346b28: f503 7318    	add.w	r3, r3, #0x260
  346b2c: 681b         	ldr	r3, [r3]
  346b2e: 9a01         	ldr	r2, [sp, #0x4]
  346b30: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  346b34: 4610         	mov	r0, r2
  346b36: 9900         	ldr	r1, [sp]
  346b38: 4798         	blx	r3
  346b3a: b003         	add	sp, #0xc
  346b3c: f85d fb04    	ldr	pc, [sp], #4

// ==== HumanoidDrone::getBodyPosition
//      file offset 0x346b40 (= ELF address; Ghidra 0x356b40), 40 bytes, Thumb-2
  346b40: b410         	push	{r4}
  346b42: b083         	sub	sp, #0xc
  346b44: 9001         	str	r0, [sp, #0x4]
  346b46: 9100         	str	r1, [sp]
  346b48: 9b00         	ldr	r3, [sp]
  346b4a: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  346b4e: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  346b52: 9a01         	ldr	r2, [sp, #0x4]
  346b54: 4614         	mov	r4, r2
  346b56: 3328         	adds	r3, #0x28
  346b58: cb0f         	ldm	r3, {r0, r1, r2, r3}
  346b5a: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  346b5e: 9801         	ldr	r0, [sp, #0x4]
  346b60: b003         	add	sp, #0xc
  346b62: f85d 4b04    	ldr	r4, [sp], #4
  346b66: 4770         	bx	lr

// ==== HumanoidDrone::getBodyVelocity
//      file offset 0x346b68 (= ELF address; Ghidra 0x356b68), 76 bytes, Thumb-2
  346b68: b410         	push	{r4}
  346b6a: b083         	sub	sp, #0xc
  346b6c: 9001         	str	r0, [sp, #0x4]
  346b6e: 9100         	str	r1, [sp]
  346b70: 9b00         	ldr	r3, [sp]
  346b72: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  346b76: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  346b7a: f8d3 3090    	ldr.w	r3, [r3, #0x90]
  346b7e: 2b00         	cmp	r3, #0x0
  346b80: d00b         	beq	0x346b9a <HumanoidDrone::getBodyVelocity()+0x32> @ imm = #0x16
  346b82: 9b00         	ldr	r3, [sp]
  346b84: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  346b88: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  346b8c: 9a01         	ldr	r2, [sp, #0x4]
  346b8e: 4614         	mov	r4, r2
  346b90: 3338         	adds	r3, #0x38
  346b92: cb0f         	ldm	r3, {r0, r1, r2, r3}
  346b94: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  346b98: e007         	b	0x346baa <HumanoidDrone::getBodyVelocity()+0x42> @ imm = #0xe
  346b9a: 9a01         	ldr	r2, [sp, #0x4]
  346b9c: 9b00         	ldr	r3, [sp]
  346b9e: 4614         	mov	r4, r2
  346ba0: f503 73c4    	add.w	r3, r3, #0x188
  346ba4: cb0f         	ldm	r3, {r0, r1, r2, r3}
  346ba6: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  346baa: 9801         	ldr	r0, [sp, #0x4]
  346bac: b003         	add	sp, #0xc
  346bae: f85d 4b04    	ldr	r4, [sp], #4
  346bb2: 4770         	bx	lr

// ==== HumanoidDrone::getBodyRotation
//      file offset 0x346bb4 (= ELF address; Ghidra 0x356bb4), 58 bytes, Thumb-2
  346bb4: b082         	sub	sp, #0x8
  346bb6: 9001         	str	r0, [sp, #0x4]
  346bb8: 9b01         	ldr	r3, [sp, #0x4]
  346bba: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  346bbe: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  346bc2: f8d3 3090    	ldr.w	r3, [r3, #0x90]
  346bc6: 2b00         	cmp	r3, #0x0
  346bc8: d009         	beq	0x346bde <HumanoidDrone::getBodyRotation()+0x2a> @ imm = #0x12
  346bca: 9b01         	ldr	r3, [sp, #0x4]
  346bcc: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  346bd0: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  346bd4: ed93 7b16    	vldr	d7, [r3, #88]
  346bd8: eef7 7bc7    	vcvt.f32.f64	s15, d7
  346bdc: e002         	b	0x346be4 <HumanoidDrone::getBodyRotation()+0x30> @ imm = #0x4
  346bde: 9b01         	ldr	r3, [sp, #0x4]
  346be0: edd3 7a60    	vldr	s15, [r3, #384]
  346be4: ee17 3a90    	vmov	r3, s15
  346be8: 4618         	mov	r0, r3
  346bea: b002         	add	sp, #0x8
  346bec: 4770         	bx	lr

// ==== HumanoidDrone::getFireAngle
//      file offset 0x346bf0 (= ELF address; Ghidra 0x356bf0), 40 bytes, Thumb-2
  346bf0: b500         	push	{lr}
  346bf2: b083         	sub	sp, #0xc
  346bf4: 9001         	str	r0, [sp, #0x4]
  346bf6: 9b01         	ldr	r3, [sp, #0x4]
  346bf8: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  346bfc: 681b         	ldr	r3, [r3]
  346bfe: f503 730f    	add.w	r3, r3, #0x23c
  346c02: 681b         	ldr	r3, [r3]
  346c04: 9a01         	ldr	r2, [sp, #0x4]
  346c06: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  346c0a: 4610         	mov	r0, r2
  346c0c: 4798         	blx	r3
  346c0e: 4603         	mov	r3, r0
  346c10: 4618         	mov	r0, r3
  346c12: b003         	add	sp, #0xc
  346c14: f85d fb04    	ldr	pc, [sp], #4

// ==== HumanoidDrone::getWeapon
//      file offset 0x346c18 (= ELF address; Ghidra 0x356c18), 40 bytes, Thumb-2
  346c18: b500         	push	{lr}
  346c1a: b083         	sub	sp, #0xc
  346c1c: 9001         	str	r0, [sp, #0x4]
  346c1e: 9b01         	ldr	r3, [sp, #0x4]
  346c20: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  346c24: 681b         	ldr	r3, [r3]
  346c26: f503 73fa    	add.w	r3, r3, #0x1f4
  346c2a: 681b         	ldr	r3, [r3]
  346c2c: 9a01         	ldr	r2, [sp, #0x4]
  346c2e: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  346c32: 4610         	mov	r0, r2
  346c34: 4798         	blx	r3
  346c36: 4603         	mov	r3, r0
  346c38: 4618         	mov	r0, r3
  346c3a: b003         	add	sp, #0xc
  346c3c: f85d fb04    	ldr	pc, [sp], #4

// ==== HumanoidDrone::setCollisionType
//      file offset 0x346c40 (= ELF address; Ghidra 0x356c40), 94 bytes, Thumb-2
  346c40: b082         	sub	sp, #0x8
  346c42: 9001         	str	r0, [sp, #0x4]
  346c44: 9100         	str	r1, [sp]
  346c46: 9b01         	ldr	r3, [sp, #0x4]
  346c48: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  346c4c: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  346c50: 9a00         	ldr	r2, [sp]
  346c52: 655a         	str	r2, [r3, #0x54]
  346c54: 9b01         	ldr	r3, [sp, #0x4]
  346c56: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  346c5a: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  346c5e: 9a00         	ldr	r2, [sp]
  346c60: 65da         	str	r2, [r3, #0x5c]
  346c62: 9b01         	ldr	r3, [sp, #0x4]
  346c64: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  346c68: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  346c6c: 9a00         	ldr	r2, [sp]
  346c6e: 659a         	str	r2, [r3, #0x58]
  346c70: 9b01         	ldr	r3, [sp, #0x4]
  346c72: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  346c76: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  346c7a: 9a00         	ldr	r2, [sp]
  346c7c: 655a         	str	r2, [r3, #0x54]
  346c7e: 9b01         	ldr	r3, [sp, #0x4]
  346c80: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  346c84: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  346c88: 9a00         	ldr	r2, [sp]
  346c8a: 65da         	str	r2, [r3, #0x5c]
  346c8c: 9b01         	ldr	r3, [sp, #0x4]
  346c8e: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  346c92: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  346c96: 9a00         	ldr	r2, [sp]
  346c98: 659a         	str	r2, [r3, #0x58]
  346c9a: b002         	add	sp, #0x8
  346c9c: 4770         	bx	lr

// ==== HumanoidDrone::setBodyGravity
//      file offset 0x346ca0 (= ELF address; Ghidra 0x356ca0), 42 bytes, Thumb-2
  346ca0: b082         	sub	sp, #0x8
  346ca2: b410         	push	{r4}
  346ca4: b083         	sub	sp, #0xc
  346ca6: 9001         	str	r0, [sp, #0x4]
  346ca8: a904         	add	r1, sp, #0x10
  346caa: e881 000c    	stm.w	r1, {r2, r3}
  346cae: 9b01         	ldr	r3, [sp, #0x4]
  346cb0: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  346cb4: f503 7494    	add.w	r4, r3, #0x128
  346cb8: ab04         	add	r3, sp, #0x10
  346cba: cb0f         	ldm	r3, {r0, r1, r2, r3}
  346cbc: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  346cc0: b003         	add	sp, #0xc
  346cc2: f85d 4b04    	ldr	r4, [sp], #4
  346cc6: b002         	add	sp, #0x8
  346cc8: 4770         	bx	lr

// ==== HumanoidDrone::getPeerID
//      file offset 0x346ccc (= ELF address; Ghidra 0x356ccc), 44 bytes, Thumb-2
  346ccc: b500         	push	{lr}
  346cce: b083         	sub	sp, #0xc
  346cd0: 9001         	str	r0, [sp, #0x4]
  346cd2: 9100         	str	r1, [sp]
  346cd4: 9b00         	ldr	r3, [sp]
  346cd6: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  346cda: 681b         	ldr	r3, [r3]
  346cdc: f503 73e0    	add.w	r3, r3, #0x1c0
  346ce0: 681b         	ldr	r3, [r3]
  346ce2: 9a00         	ldr	r2, [sp]
  346ce4: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  346ce8: 9901         	ldr	r1, [sp, #0x4]
  346cea: 4608         	mov	r0, r1
  346cec: 4611         	mov	r1, r2
  346cee: 4798         	blx	r3
  346cf0: 9801         	ldr	r0, [sp, #0x4]
  346cf2: b003         	add	sp, #0xc
  346cf4: f85d fb04    	ldr	pc, [sp], #4

// ==== HumanoidDrone::setPeerID
//      file offset 0x346cf8 (= ELF address; Ghidra 0x356cf8), 74 bytes, Thumb-2
  346cf8: b530         	push	{r4, r5, lr}
  346cfa: b085         	sub	sp, #0x14
  346cfc: 9001         	str	r0, [sp, #0x4]
  346cfe: 9100         	str	r1, [sp]
  346d00: 9b01         	ldr	r3, [sp, #0x4]
  346d02: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  346d06: 681b         	ldr	r3, [r3]
  346d08: f503 7313    	add.w	r3, r3, #0x24c
  346d0c: 681c         	ldr	r4, [r3]
  346d0e: 9b01         	ldr	r3, [sp, #0x4]
  346d10: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  346d14: 461d         	mov	r5, r3
  346d16: ab03         	add	r3, sp, #0xc
  346d18: 4618         	mov	r0, r3
  346d1a: 9900         	ldr	r1, [sp]
  346d1c: f06f f3e4    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x46f7c8
  346d20: ab03         	add	r3, sp, #0xc
  346d22: 4628         	mov	r0, r5
  346d24: 4619         	mov	r1, r3
  346d26: 47a0         	blx	r4
  346d28: ab03         	add	r3, sp, #0xc
  346d2a: 4618         	mov	r0, r3
  346d2c: f06e f5f2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46ebe4
  346d30: e005         	b	0x346d3e <HumanoidDrone::setPeerID(std::string)+0x46> @ imm = #0xa
  346d32: ab03         	add	r3, sp, #0xc
  346d34: 4618         	mov	r0, r3
  346d36: f06e f5ed    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46ebda
  346d3a: f041 f1b7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x44136e
  346d3e: b005         	add	sp, #0x14
  346d40: bd30         	pop	{r4, r5, pc}

// ==== HumanoidDrone::setRemoteFireAngle
//      file offset 0x346d44 (= ELF address; Ghidra 0x356d44), 40 bytes, Thumb-2
  346d44: b500         	push	{lr}
  346d46: b083         	sub	sp, #0xc
  346d48: 9001         	str	r0, [sp, #0x4]
  346d4a: 9100         	str	r1, [sp]
  346d4c: 9b01         	ldr	r3, [sp, #0x4]
  346d4e: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  346d52: 681b         	ldr	r3, [r3]
  346d54: f503 730e    	add.w	r3, r3, #0x238
  346d58: 681b         	ldr	r3, [r3]
  346d5a: 9a01         	ldr	r2, [sp, #0x4]
  346d5c: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  346d60: 4610         	mov	r0, r2
  346d62: 9900         	ldr	r1, [sp]
  346d64: 4798         	blx	r3
  346d66: b003         	add	sp, #0xc
  346d68: f85d fb04    	ldr	pc, [sp], #4

// ==== HumanoidDrone::setRemoteFire
//      file offset 0x346d6c (= ELF address; Ghidra 0x356d6c), 24 bytes, Thumb-2
  346d6c: b082         	sub	sp, #0x8
  346d6e: 9001         	str	r0, [sp, #0x4]
  346d70: 460b         	mov	r3, r1
  346d72: f88d 3003    	strb.w	r3, [sp, #0x3]
  346d76: 9b01         	ldr	r3, [sp, #0x4]
  346d78: f89d 2003    	ldrb.w	r2, [sp, #0x3]
  346d7c: f883 219c    	strb.w	r2, [r3, #0x19c]
  346d80: b002         	add	sp, #0x8
  346d82: 4770         	bx	lr

// ==== HumanoidDrone::setRemoteThrust
//      file offset 0x346d84 (= ELF address; Ghidra 0x356d84), 40 bytes, Thumb-2
  346d84: b500         	push	{lr}
  346d86: b083         	sub	sp, #0xc
  346d88: 9001         	str	r0, [sp, #0x4]
  346d8a: 9100         	str	r1, [sp]
  346d8c: 9b01         	ldr	r3, [sp, #0x4]
  346d8e: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  346d92: 681b         	ldr	r3, [r3]
  346d94: f503 73f2    	add.w	r3, r3, #0x1e4
  346d98: 681b         	ldr	r3, [r3]
  346d9a: 9a01         	ldr	r2, [sp, #0x4]
  346d9c: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  346da0: 4610         	mov	r0, r2
  346da2: 9900         	ldr	r1, [sp]
  346da4: 4798         	blx	r3
  346da6: b003         	add	sp, #0xc
  346da8: f85d fb04    	ldr	pc, [sp], #4

// ==== HumanoidDrone::setRemoteMovement
//      file offset 0x346dac (= ELF address; Ghidra 0x356dac), 76 bytes, Thumb-2
  346dac: b082         	sub	sp, #0x8
  346dae: b510         	push	{r4, lr}
  346db0: b084         	sub	sp, #0x10
  346db2: 9001         	str	r0, [sp, #0x4]
  346db4: a906         	add	r1, sp, #0x18
  346db6: e881 000c    	stm.w	r1, {r2, r3}
  346dba: 9b01         	ldr	r3, [sp, #0x4]
  346dbc: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  346dc0: f503 748a    	add.w	r4, r3, #0x114
  346dc4: ed9d 7b06    	vldr	d7, [sp, #24]
  346dc8: eef7 6bc7    	vcvt.f32.f64	s13, d7
  346dcc: ed9d 7b08    	vldr	d7, [sp, #32]
  346dd0: eef7 7bc7    	vcvt.f32.f64	s15, d7
  346dd4: ab02         	add	r3, sp, #0x8
  346dd6: 4618         	mov	r0, r3
  346dd8: ee16 1a90    	vmov	r1, s13
  346ddc: ee17 2a90    	vmov	r2, s15
  346de0: f24b ff86    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x24bf0c
  346de4: ab02         	add	r3, sp, #0x8
  346de6: 4620         	mov	r0, r4
  346de8: 4619         	mov	r1, r3
  346dea: f24b ffaf    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x24bf5e
  346dee: b004         	add	sp, #0x10
  346df0: e8bd 4010    	pop.w	{r4, lr}
  346df4: b002         	add	sp, #0x8
  346df6: 4770         	bx	lr
