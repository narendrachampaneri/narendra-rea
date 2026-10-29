// HawkDrone: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 37 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../HawkDrone.cpp

// ==== HawkDrone::create
//      file offset 0x318c1c (= ELF address; Ghidra 0x328c1c), 112 bytes, Thumb-2
  318c1c: b510         	push	{r4, lr}
  318c1e: b082         	sub	sp, #0x8
  318c20: f44f 7008    	mov.w	r0, #0x220
  318c24: f06e f69e    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x46ed3c
  318c28: 4603         	mov	r3, r0
  318c2a: 461c         	mov	r4, r3
  318c2c: 4620         	mov	r0, r4
  318c2e: f026 fd4b    	bl	0x33f6c8 <HawkDrone::HawkDrone()> @ imm = #0x26a96
  318c32: 9401         	str	r4, [sp, #0x4]
  318c34: 9b01         	ldr	r3, [sp, #0x4]
  318c36: 2b00         	cmp	r3, #0x0
  318c38: d00a         	beq	0x318c50 <HawkDrone::create()+0x34> @ imm = #0x14
  318c3a: 9b01         	ldr	r3, [sp, #0x4]
  318c3c: 681b         	ldr	r3, [r3]
  318c3e: 3318         	adds	r3, #0x18
  318c40: 681b         	ldr	r3, [r3]
  318c42: 9801         	ldr	r0, [sp, #0x4]
  318c44: 4798         	blx	r3
  318c46: 4603         	mov	r3, r0
  318c48: 2b00         	cmp	r3, #0x0
  318c4a: d001         	beq	0x318c50 <HawkDrone::create()+0x34> @ imm = #0x2
  318c4c: 2301         	movs	r3, #0x1
  318c4e: e000         	b	0x318c52 <HawkDrone::create()+0x36> @ imm = #0x0
  318c50: 2300         	movs	r3, #0x0
  318c52: 2b00         	cmp	r3, #0x0
  318c54: d005         	beq	0x318c62 <HawkDrone::create()+0x46> @ imm = #0xa
  318c56: 9b01         	ldr	r3, [sp, #0x4]
  318c58: 4618         	mov	r0, r3
  318c5a: f27f f94f    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x27f29e
  318c5e: 9b01         	ldr	r3, [sp, #0x4]
  318c60: e011         	b	0x318c86 <HawkDrone::create()+0x6a> @ imm = #0x22
  318c62: 9b01         	ldr	r3, [sp, #0x4]
  318c64: 2b00         	cmp	r3, #0x0
  318c66: d005         	beq	0x318c74 <HawkDrone::create()+0x58> @ imm = #0xa
  318c68: 9b01         	ldr	r3, [sp, #0x4]
  318c6a: 681b         	ldr	r3, [r3]
  318c6c: 3308         	adds	r3, #0x8
  318c6e: 681b         	ldr	r3, [r3]
  318c70: 9801         	ldr	r0, [sp, #0x4]
  318c72: 4798         	blx	r3
  318c74: 2300         	movs	r3, #0x0
  318c76: 9301         	str	r3, [sp, #0x4]
  318c78: 2300         	movs	r3, #0x0
  318c7a: e004         	b	0x318c86 <HawkDrone::create()+0x6a> @ imm = #0x8
  318c7c: 4620         	mov	r0, r4
  318c7e: f06f f211    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x46f422
  318c82: f06f f213    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46f426
  318c86: 4618         	mov	r0, r3
  318c88: b002         	add	sp, #0x8
  318c8a: bd10         	pop	{r4, pc}

// ==== HawkDrone::HawkDrone
//      file offset 0x33f6c8 (= ELF address; Ghidra 0x34f6c8), 108 bytes, Thumb-2
  33f6c8: b510         	push	{r4, lr}
  33f6ca: b082         	sub	sp, #0x8
  33f6cc: 9001         	str	r0, [sp, #0x4]
  33f6ce: 4c17         	ldr	r4, [pc, #0x5c]         @ 0x33f72c <HawkDrone::HawkDrone()+0x64>
  33f6d0: 447c         	add	r4, pc
  33f6d2: 9b01         	ldr	r3, [sp, #0x4]
  33f6d4: 4618         	mov	r0, r3
  33f6d6: f7d8 f815    	bl	0x317704 <Enemy::Enemy()> @ imm = #-0x27fd6
  33f6da: 9b01         	ldr	r3, [sp, #0x4]
  33f6dc: f503 73d4    	add.w	r3, r3, #0x1a8
  33f6e0: 4618         	mov	r0, r3
  33f6e2: f7ff ffdf    	bl	0x33f6a4 <WeaponFireDelegate::WeaponFireDelegate()> @ imm = #-0x42
  33f6e6: 9b01         	ldr	r3, [sp, #0x4]
  33f6e8: 4a11         	ldr	r2, [pc, #0x44]         @ 0x33f730 <HawkDrone::HawkDrone()+0x68>
  33f6ea: 58a2         	ldr	r2, [r4, r2]
  33f6ec: 3208         	adds	r2, #0x8
  33f6ee: 601a         	str	r2, [r3]
  33f6f0: 9b01         	ldr	r3, [sp, #0x4]
  33f6f2: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x33f730 <HawkDrone::HawkDrone()+0x68>
  33f6f4: 58a2         	ldr	r2, [r4, r2]
  33f6f6: f502 7216    	add.w	r2, r2, #0x258
  33f6fa: f8c3 21a8    	str.w	r2, [r3, #0x1a8]
  33f6fe: 9b01         	ldr	r3, [sp, #0x4]
  33f700: f503 73f4    	add.w	r3, r3, #0x1e8
  33f704: 4618         	mov	r0, r3
  33f706: f253 fae5    	bl	0x592cd4 <cocos2d::CCPoint::CCPoint()> @ imm = #0x2535ca
  33f70a: 9b01         	ldr	r3, [sp, #0x4]
  33f70c: f503 7300    	add.w	r3, r3, #0x200
  33f710: 4618         	mov	r0, r3
  33f712: f075 f54d    	bl	0x7b51b0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18700> @ imm = #0x475a9a
  33f716: 9b01         	ldr	r3, [sp, #0x4]
  33f718: e005         	b	0x33f726 <HawkDrone::HawkDrone()+0x5e> @ imm = #0xa
  33f71a: 9b01         	ldr	r3, [sp, #0x4]
  33f71c: 4618         	mov	r0, r3
  33f71e: f7d8 f8bd    	bl	0x31789c <Enemy::~Enemy()> @ imm = #-0x27e86
  33f722: f048 f4c3    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x448986
  33f726: 4618         	mov	r0, r3
  33f728: b002         	add	sp, #0x8
  33f72a: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x33f72b); words below are literal-pool data ---
  33f72c: 3338         	adds	r3, #0x38
  33f72e: 005f         	lsls	r7, r3, #0x1
  33f730: db20         	blt	0x33f774 <HawkDrone::init()+0x40> @ imm = #0x40
  33f732: ffff b570    	<unknown>

// ==== HawkDrone::init
//      file offset 0x33f734 (= ELF address; Ghidra 0x34f734), 1092 bytes, Thumb-2
  33f734: b570         	push	{r4, r5, r6, lr}
  33f736: b08a         	sub	sp, #0x28
  33f738: 9005         	str	r0, [sp, #0x14]
  33f73a: f8df 4424    	ldr.w	r4, [pc, #0x424]        @ 0x33fb60 <HawkDrone::init()+0x42c>
  33f73e: 447c         	add	r4, pc
  33f740: 9b05         	ldr	r3, [sp, #0x14]
  33f742: 4618         	mov	r0, r3
  33f744: f7d7 fff4    	bl	0x317730 <Enemy::init()> @ imm = #-0x28018
  33f748: 4603         	mov	r3, r0
  33f74a: f88d 301f    	strb.w	r3, [sp, #0x1f]
  33f74e: f89d 301f    	ldrb.w	r3, [sp, #0x1f]
  33f752: f083 0301    	eor	r3, r3, #0x1
  33f756: b2db         	uxtb	r3, r3
  33f758: 2b00         	cmp	r3, #0x0
  33f75a: d001         	beq	0x33f760 <HawkDrone::init()+0x2c> @ imm = #0x2
  33f75c: 2300         	movs	r3, #0x0
  33f75e: e1fc         	b	0x33fb5a <HawkDrone::init()+0x426> @ imm = #0x3f8
  33f760: 9b05         	ldr	r3, [sp, #0x14]
  33f762: 2200         	movs	r2, #0x0
  33f764: f883 21d0    	strb.w	r2, [r3, #0x1d0]
  33f768: 9b05         	ldr	r3, [sp, #0x14]
  33f76a: f04f 0200    	mov.w	r2, #0x0
  33f76e: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  33f772: 9b05         	ldr	r3, [sp, #0x14]
  33f774: f04f 0200    	mov.w	r2, #0x0
  33f778: f8c3 2218    	str.w	r2, [r3, #0x218]
  33f77c: 4bf9         	ldr	r3, [pc, #0x3e4]        @ 0x33fb64 <HawkDrone::init()+0x430>
  33f77e: 447b         	add	r3, pc
  33f780: 4618         	mov	r0, r3
  33f782: f298 fdbf    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x298b7e
  33f786: 4602         	mov	r2, r0
  33f788: 9b05         	ldr	r3, [sp, #0x14]
  33f78a: f8c3 21b0    	str.w	r2, [r3, #0x1b0]
  33f78e: 9b05         	ldr	r3, [sp, #0x14]
  33f790: f8d3 31b0    	ldr.w	r3, [r3, #0x1b0]
  33f794: 4618         	mov	r0, r3
  33f796: f258 fba7    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x25874e
  33f79a: 9b05         	ldr	r3, [sp, #0x14]
  33f79c: f8d3 31b0    	ldr.w	r3, [r3, #0x1b0]
  33f7a0: 681b         	ldr	r3, [r3]
  33f7a2: 337c         	adds	r3, #0x7c
  33f7a4: 681d         	ldr	r5, [r3]
  33f7a6: 9b05         	ldr	r3, [sp, #0x14]
  33f7a8: f8d3 61b0    	ldr.w	r6, [r3, #0x1b0]
  33f7ac: ab08         	add	r3, sp, #0x20
  33f7ae: 4618         	mov	r0, r3
  33f7b0: f04f 517c    	mov.w	r1, #0x3f000000
  33f7b4: f04f 527e    	mov.w	r2, #0x3f800000
  33f7b8: f253 fa9a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x253534
  33f7bc: ab08         	add	r3, sp, #0x20
  33f7be: 4630         	mov	r0, r6
  33f7c0: 4619         	mov	r1, r3
  33f7c2: 47a8         	blx	r5
  33f7c4: 9b05         	ldr	r3, [sp, #0x14]
  33f7c6: f8d3 31b0    	ldr.w	r3, [r3, #0x1b0]
  33f7ca: 681b         	ldr	r3, [r3]
  33f7cc: 334c         	adds	r3, #0x4c
  33f7ce: 681d         	ldr	r5, [r3]
  33f7d0: 9b05         	ldr	r3, [sp, #0x14]
  33f7d2: f8d3 61b0    	ldr.w	r6, [r3, #0x1b0]
  33f7d6: ab08         	add	r3, sp, #0x20
  33f7d8: 4618         	mov	r0, r3
  33f7da: f04f 4141    	mov.w	r1, #0xc1000000
  33f7de: f04f 0200    	mov.w	r2, #0x0
  33f7e2: f2cc 12c8    	movt	r2, #0xc1c8
  33f7e6: f253 fa83    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x253506
  33f7ea: ab08         	add	r3, sp, #0x20
  33f7ec: 4630         	mov	r0, r6
  33f7ee: 4619         	mov	r1, r3
  33f7f0: 47a8         	blx	r5
  33f7f2: 9b05         	ldr	r3, [sp, #0x14]
  33f7f4: 681b         	ldr	r3, [r3]
  33f7f6: 33cc         	adds	r3, #0xcc
  33f7f8: 681b         	ldr	r3, [r3]
  33f7fa: 9905         	ldr	r1, [sp, #0x14]
  33f7fc: 9a05         	ldr	r2, [sp, #0x14]
  33f7fe: f8d2 21b0    	ldr.w	r2, [r2, #0x1b0]
  33f802: 4608         	mov	r0, r1
  33f804: 4611         	mov	r1, r2
  33f806: 2200         	movs	r2, #0x0
  33f808: 4798         	blx	r3
  33f80a: f0d8 f8bb    	bl	0x417984 <WeaponFactory::sharedWeaponFactory()> @ imm = #0xd8176
  33f80e: 4603         	mov	r3, r0
  33f810: 4618         	mov	r0, r3
  33f812: 2105         	movs	r1, #0x5
  33f814: f0d8 ff72    	bl	0x4186fc <WeaponFactory::createWeaponFromAmmoType(ItemType)> @ imm = #0xd8ee4
  33f818: 4602         	mov	r2, r0
  33f81a: 9b05         	ldr	r3, [sp, #0x14]
  33f81c: f8c3 21f0    	str.w	r2, [r3, #0x1f0]
  33f820: 9b05         	ldr	r3, [sp, #0x14]
  33f822: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  33f826: 4618         	mov	r0, r3
  33f828: f258 fb5e    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2586bc
  33f82c: 9b05         	ldr	r3, [sp, #0x14]
  33f82e: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  33f832: 681b         	ldr	r3, [r3]
  33f834: f503 73ea    	add.w	r3, r3, #0x1d4
  33f838: 681b         	ldr	r3, [r3]
  33f83a: 9a05         	ldr	r2, [sp, #0x14]
  33f83c: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  33f840: 4610         	mov	r0, r2
  33f842: 4798         	blx	r3
  33f844: 9b05         	ldr	r3, [sp, #0x14]
  33f846: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  33f84a: 681b         	ldr	r3, [r3]
  33f84c: f503 730f    	add.w	r3, r3, #0x23c
  33f850: 681b         	ldr	r3, [r3]
  33f852: 9a05         	ldr	r2, [sp, #0x14]
  33f854: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  33f858: 4611         	mov	r1, r2
  33f85a: 9a05         	ldr	r2, [sp, #0x14]
  33f85c: f502 72d4    	add.w	r2, r2, #0x1a8
  33f860: 4608         	mov	r0, r1
  33f862: 4611         	mov	r1, r2
  33f864: 4798         	blx	r3
  33f866: 9b05         	ldr	r3, [sp, #0x14]
  33f868: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  33f86c: 681b         	ldr	r3, [r3]
  33f86e: 334c         	adds	r3, #0x4c
  33f870: 681d         	ldr	r5, [r3]
  33f872: 9b05         	ldr	r3, [sp, #0x14]
  33f874: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  33f878: 461e         	mov	r6, r3
  33f87a: ab08         	add	r3, sp, #0x20
  33f87c: 4618         	mov	r0, r3
  33f87e: f04f 0100    	mov.w	r1, #0x0
  33f882: f2cc 11c8    	movt	r1, #0xc1c8
  33f886: f04f 0200    	mov.w	r2, #0x0
  33f88a: f2cc 1220    	movt	r2, #0xc120
  33f88e: f253 fa2f    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x25345e
  33f892: ab08         	add	r3, sp, #0x20
  33f894: 4630         	mov	r0, r6
  33f896: 4619         	mov	r1, r3
  33f898: 47a8         	blx	r5
  33f89a: 9b05         	ldr	r3, [sp, #0x14]
  33f89c: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  33f8a0: f04f 527a    	mov.w	r2, #0x3e800000
  33f8a4: f8c3 215c    	str.w	r2, [r3, #0x15c]
  33f8a8: 9b05         	ldr	r3, [sp, #0x14]
  33f8aa: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  33f8ae: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  33f8b2: 681b         	ldr	r3, [r3]
  33f8b4: 3398         	adds	r3, #0x98
  33f8b6: 681b         	ldr	r3, [r3]
  33f8b8: 9a05         	ldr	r2, [sp, #0x14]
  33f8ba: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  33f8be: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  33f8c2: 4610         	mov	r0, r2
  33f8c4: f04f 0100    	mov.w	r1, #0x0
  33f8c8: 4798         	blx	r3
  33f8ca: f250 fc81    	bl	0x5901d0 <cocos2d::CCNode::create()> @ imm = #0x250902
  33f8ce: 4602         	mov	r2, r0
  33f8d0: 9b05         	ldr	r3, [sp, #0x14]
  33f8d2: f8c3 21b8    	str.w	r2, [r3, #0x1b8]
  33f8d6: 9b05         	ldr	r3, [sp, #0x14]
  33f8d8: f8d3 31b8    	ldr.w	r3, [r3, #0x1b8]
  33f8dc: 4618         	mov	r0, r3
  33f8de: f258 fb03    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x258606
  33f8e2: 9b05         	ldr	r3, [sp, #0x14]
  33f8e4: f8d3 31b8    	ldr.w	r3, [r3, #0x1b8]
  33f8e8: 681b         	ldr	r3, [r3]
  33f8ea: 334c         	adds	r3, #0x4c
  33f8ec: 681d         	ldr	r5, [r3]
  33f8ee: 9b05         	ldr	r3, [sp, #0x14]
  33f8f0: f8d3 61b8    	ldr.w	r6, [r3, #0x1b8]
  33f8f4: ab08         	add	r3, sp, #0x20
  33f8f6: 4618         	mov	r0, r3
  33f8f8: f04f 0100    	mov.w	r1, #0x0
  33f8fc: f2c4 01e0    	movt	r1, #0x40e0
  33f900: f04f 0200    	mov.w	r2, #0x0
  33f904: f2cc 2220    	movt	r2, #0xc220
  33f908: f253 f9f2    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2533e4
  33f90c: ab08         	add	r3, sp, #0x20
  33f90e: 4630         	mov	r0, r6
  33f910: 4619         	mov	r1, r3
  33f912: 47a8         	blx	r5
  33f914: 9b05         	ldr	r3, [sp, #0x14]
  33f916: f8d3 31b8    	ldr.w	r3, [r3, #0x1b8]
  33f91a: 681b         	ldr	r3, [r3]
  33f91c: 33c8         	adds	r3, #0xc8
  33f91e: 681b         	ldr	r3, [r3]
  33f920: 9a05         	ldr	r2, [sp, #0x14]
  33f922: f8d2 11b8    	ldr.w	r1, [r2, #0x1b8]
  33f926: 9a05         	ldr	r2, [sp, #0x14]
  33f928: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  33f92c: 4608         	mov	r0, r1
  33f92e: 4611         	mov	r1, r2
  33f930: 4798         	blx	r3
  33f932: 9b05         	ldr	r3, [sp, #0x14]
  33f934: 681b         	ldr	r3, [r3]
  33f936: 33c8         	adds	r3, #0xc8
  33f938: 681b         	ldr	r3, [r3]
  33f93a: 9905         	ldr	r1, [sp, #0x14]
  33f93c: 9a05         	ldr	r2, [sp, #0x14]
  33f93e: f8d2 21b8    	ldr.w	r2, [r2, #0x1b8]
  33f942: 4608         	mov	r0, r1
  33f944: 4611         	mov	r1, r2
  33f946: 4798         	blx	r3
  33f948: 4b87         	ldr	r3, [pc, #0x21c]        @ 0x33fb68 <HawkDrone::init()+0x434>
  33f94a: 447b         	add	r3, pc
  33f94c: 4618         	mov	r0, r3
  33f94e: f298 fcd9    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2989b2
  33f952: 4602         	mov	r2, r0
  33f954: 9b05         	ldr	r3, [sp, #0x14]
  33f956: f8c3 21b4    	str.w	r2, [r3, #0x1b4]
  33f95a: 9b05         	ldr	r3, [sp, #0x14]
  33f95c: f8d3 31b4    	ldr.w	r3, [r3, #0x1b4]
  33f960: 4618         	mov	r0, r3
  33f962: f258 fac1    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x258582
  33f966: 9b05         	ldr	r3, [sp, #0x14]
  33f968: f8d3 31b4    	ldr.w	r3, [r3, #0x1b4]
  33f96c: 681b         	ldr	r3, [r3]
  33f96e: 337c         	adds	r3, #0x7c
  33f970: 681d         	ldr	r5, [r3]
  33f972: 9b05         	ldr	r3, [sp, #0x14]
  33f974: f8d3 61b4    	ldr.w	r6, [r3, #0x1b4]
  33f978: ab08         	add	r3, sp, #0x20
  33f97a: 4618         	mov	r0, r3
  33f97c: f04f 517c    	mov.w	r1, #0x3f000000
  33f980: f04f 527c    	mov.w	r2, #0x3f000000
  33f984: f253 f9b4    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x253368
  33f988: ab08         	add	r3, sp, #0x20
  33f98a: 4630         	mov	r0, r6
  33f98c: 4619         	mov	r1, r3
  33f98e: 47a8         	blx	r5
  33f990: 9b05         	ldr	r3, [sp, #0x14]
  33f992: f8d3 31b4    	ldr.w	r3, [r3, #0x1b4]
  33f996: 681b         	ldr	r3, [r3]
  33f998: 334c         	adds	r3, #0x4c
  33f99a: 681d         	ldr	r5, [r3]
  33f99c: 9b05         	ldr	r3, [sp, #0x14]
  33f99e: f8d3 61b4    	ldr.w	r6, [r3, #0x1b4]
  33f9a2: ab08         	add	r3, sp, #0x20
  33f9a4: 4618         	mov	r0, r3
  33f9a6: f04f 0100    	mov.w	r1, #0x0
  33f9aa: f2cc 01a0    	movt	r1, #0xc0a0
  33f9ae: f04f 0200    	mov.w	r2, #0x0
  33f9b2: f253 f99d    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x25333a
  33f9b6: ab08         	add	r3, sp, #0x20
  33f9b8: 4630         	mov	r0, r6
  33f9ba: 4619         	mov	r1, r3
  33f9bc: 47a8         	blx	r5
  33f9be: 9b05         	ldr	r3, [sp, #0x14]
  33f9c0: 681b         	ldr	r3, [r3]
  33f9c2: 33cc         	adds	r3, #0xcc
  33f9c4: 681b         	ldr	r3, [r3]
  33f9c6: 9905         	ldr	r1, [sp, #0x14]
  33f9c8: 9a05         	ldr	r2, [sp, #0x14]
  33f9ca: f8d2 21b4    	ldr.w	r2, [r2, #0x1b4]
  33f9ce: 4608         	mov	r0, r1
  33f9d0: 4611         	mov	r1, r2
  33f9d2: 2200         	movs	r2, #0x0
  33f9d4: 4798         	blx	r3
  33f9d6: 4b65         	ldr	r3, [pc, #0x194]        @ 0x33fb6c <HawkDrone::init()+0x438>
  33f9d8: 447b         	add	r3, pc
  33f9da: 4618         	mov	r0, r3
  33f9dc: f285 fa9e    	bl	0x5c4f1c <cocos2d::CCParticleSystemQuad::create(char const*)> @ imm = #0x28553c
  33f9e0: 4602         	mov	r2, r0
  33f9e2: 9b05         	ldr	r3, [sp, #0x14]
  33f9e4: f8c3 21bc    	str.w	r2, [r3, #0x1bc]
  33f9e8: 9b05         	ldr	r3, [sp, #0x14]
  33f9ea: f8d3 31bc    	ldr.w	r3, [r3, #0x1bc]
  33f9ee: 681b         	ldr	r3, [r3]
  33f9f0: f503 733c    	add.w	r3, r3, #0x2f0
  33f9f4: 681b         	ldr	r3, [r3]
  33f9f6: 9a05         	ldr	r2, [sp, #0x14]
  33f9f8: f8d2 21bc    	ldr.w	r2, [r2, #0x1bc]
  33f9fc: 4610         	mov	r0, r2
  33f9fe: 2102         	movs	r1, #0x2
  33fa00: 4798         	blx	r3
  33fa02: 4b5b         	ldr	r3, [pc, #0x16c]        @ 0x33fb70 <HawkDrone::init()+0x43c>
  33fa04: 58e3         	ldr	r3, [r4, r3]
  33fa06: 681b         	ldr	r3, [r3]
  33fa08: 681b         	ldr	r3, [r3]
  33fa0a: 33cc         	adds	r3, #0xcc
  33fa0c: 681b         	ldr	r3, [r3]
  33fa0e: 4a58         	ldr	r2, [pc, #0x160]        @ 0x33fb70 <HawkDrone::init()+0x43c>
  33fa10: 58a2         	ldr	r2, [r4, r2]
  33fa12: 6812         	ldr	r2, [r2]
  33fa14: 4611         	mov	r1, r2
  33fa16: 9a05         	ldr	r2, [sp, #0x14]
  33fa18: f8d2 21bc    	ldr.w	r2, [r2, #0x1bc]
  33fa1c: 4608         	mov	r0, r1
  33fa1e: 4611         	mov	r1, r2
  33fa20: 2202         	movs	r2, #0x2
  33fa22: 4798         	blx	r3
  33fa24: 9b05         	ldr	r3, [sp, #0x14]
  33fa26: f8d3 31bc    	ldr.w	r3, [r3, #0x1bc]
  33fa2a: 4618         	mov	r0, r3
  33fa2c: f258 fa5c    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2584b8
  33fa30: 9b05         	ldr	r3, [sp, #0x14]
  33fa32: 2200         	movs	r2, #0x0
  33fa34: f883 21c4    	strb.w	r2, [r3, #0x1c4]
  33fa38: 9b05         	ldr	r3, [sp, #0x14]
  33fa3a: 2200         	movs	r2, #0x0
  33fa3c: f883 219c    	strb.w	r2, [r3, #0x19c]
  33fa40: 9b05         	ldr	r3, [sp, #0x14]
  33fa42: f04f 527c    	mov.w	r2, #0x3f000000
  33fa46: f8c3 21d4    	str.w	r2, [r3, #0x1d4]
  33fa4a: 9b05         	ldr	r3, [sp, #0x14]
  33fa4c: f04f 0200    	mov.w	r2, #0x0
  33fa50: f8c3 21d8    	str.w	r2, [r3, #0x1d8]
  33fa54: 9b05         	ldr	r3, [sp, #0x14]
  33fa56: f04f 0200    	mov.w	r2, #0x0
  33fa5a: f8c3 21e0    	str.w	r2, [r3, #0x1e0]
  33fa5e: 9b05         	ldr	r3, [sp, #0x14]
  33fa60: 2232         	movs	r2, #0x32
  33fa62: f8c3 21ac    	str.w	r2, [r3, #0x1ac]
  33fa66: 9805         	ldr	r0, [sp, #0x14]
  33fa68: f001 fb70    	bl	0x34114c <HawkDrone::initBody()> @ imm = #0x16e0
  33fa6c: 9805         	ldr	r0, [sp, #0x14]
  33fa6e: f001 fba7    	bl	0x3411c0 <HawkDrone::initShape()> @ imm = #0x174e
  33fa72: 9b05         	ldr	r3, [sp, #0x14]
  33fa74: 2200         	movs	r2, #0x0
  33fa76: f883 21dc    	strb.w	r2, [r3, #0x1dc]
  33fa7a: 9905         	ldr	r1, [sp, #0x14]
  33fa7c: f04f 0200    	mov.w	r2, #0x0
  33fa80: f04f 0300    	mov.w	r3, #0x0
  33fa84: e9c1 234e    	strd	r2, r3, [r1, #312]
  33fa88: 9905         	ldr	r1, [sp, #0x14]
  33fa8a: f04f 0200    	mov.w	r2, #0x0
  33fa8e: f04f 0300    	mov.w	r3, #0x0
  33fa92: e9c1 2350    	strd	r2, r3, [r1, #320]
  33fa96: 9b05         	ldr	r3, [sp, #0x14]
  33fa98: f04f 0200    	mov.w	r2, #0x0
  33fa9c: f8c3 21e4    	str.w	r2, [r3, #0x1e4]
  33faa0: 9b05         	ldr	r3, [sp, #0x14]
  33faa2: f04f 527c    	mov.w	r2, #0x3f000000
  33faa6: f8c3 2108    	str.w	r2, [r3, #0x108]
  33faaa: 9b05         	ldr	r3, [sp, #0x14]
  33faac: f503 74f4    	add.w	r4, r3, #0x1e8
  33fab0: ab08         	add	r3, sp, #0x20
  33fab2: 4618         	mov	r0, r3
  33fab4: f04f 0100    	mov.w	r1, #0x0
  33fab8: f2c4 2120    	movt	r1, #0x4220
  33fabc: f04f 0200    	mov.w	r2, #0x0
  33fac0: f2c4 02c0    	movt	r2, #0x40c0
  33fac4: f253 f914    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x253228
  33fac8: ab08         	add	r3, sp, #0x20
  33faca: 4620         	mov	r0, r4
  33facc: 4619         	mov	r1, r3
  33face: f253 f93d    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x25327a
  33fad2: 9b05         	ldr	r3, [sp, #0x14]
  33fad4: f04f 0200    	mov.w	r2, #0x0
  33fad8: f8c3 21f8    	str.w	r2, [r3, #0x1f8]
  33fadc: 9b05         	ldr	r3, [sp, #0x14]
  33fade: f503 7300    	add.w	r3, r3, #0x200
  33fae2: 4618         	mov	r0, r3
  33fae4: 4b23         	ldr	r3, [pc, #0x8c]         @ 0x33fb74 <HawkDrone::init()+0x440>
  33fae6: 447b         	add	r3, pc
  33fae8: 4619         	mov	r1, r3
  33faea: f076 f1c1    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x476382
  33faee: 9b05         	ldr	r3, [sp, #0x14]
  33faf0: f04f 0200    	mov.w	r2, #0x0
  33faf4: f2c4 0240    	movt	r2, #0x4040
  33faf8: f8c3 21f4    	str.w	r2, [r3, #0x1f4]
  33fafc: 9b05         	ldr	r3, [sp, #0x14]
  33fafe: f04f 0200    	mov.w	r2, #0x0
  33fb02: f8c3 21f8    	str.w	r2, [r3, #0x1f8]
  33fb06: 9b05         	ldr	r3, [sp, #0x14]
  33fb08: f04f 0200    	mov.w	r2, #0x0
  33fb0c: f2c4 0240    	movt	r2, #0x4040
  33fb10: f8c3 21fc    	str.w	r2, [r3, #0x1fc]
  33fb14: 9905         	ldr	r1, [sp, #0x14]
  33fb16: f04f 0200    	mov.w	r2, #0x0
  33fb1a: f04f 0300    	mov.w	r3, #0x0
  33fb1e: e9c1 2382    	strd	r2, r3, [r1, #520]
  33fb22: 9905         	ldr	r1, [sp, #0x14]
  33fb24: f04f 0200    	mov.w	r2, #0x0
  33fb28: f04f 0300    	mov.w	r3, #0x0
  33fb2c: e9c1 2384    	strd	r2, r3, [r1, #528]
  33fb30: 9b05         	ldr	r3, [sp, #0x14]
  33fb32: 681b         	ldr	r3, [r3]
  33fb34: f503 7308    	add.w	r3, r3, #0x220
  33fb38: 681b         	ldr	r3, [r3]
  33fb3a: 9c05         	ldr	r4, [sp, #0x14]
  33fb3c: 466a         	mov	r2, sp
  33fb3e: 4610         	mov	r0, r2
  33fb40: 9905         	ldr	r1, [sp, #0x14]
  33fb42: 4798         	blx	r3
  33fb44: f504 7490    	add.w	r4, r4, #0x120
  33fb48: 466b         	mov	r3, sp
  33fb4a: cb0f         	ldm	r3, {r0, r1, r2, r3}
  33fb4c: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  33fb50: 9b05         	ldr	r3, [sp, #0x14]
  33fb52: 2201         	movs	r2, #0x1
  33fb54: f883 216c    	strb.w	r2, [r3, #0x16c]
  33fb58: 2301         	movs	r3, #0x1
  33fb5a: 4618         	mov	r0, r3
  33fb5c: b00a         	add	sp, #0x28
  33fb5e: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x33fb5f); words below are literal-pool data ---
  33fb60: 32ca         	adds	r2, #0xca
  33fb62: 005f         	lsls	r7, r3, #0x1
  33fb64: a576         	adr	r5, #472 <HawkDrone::~HawkDrone()+0x66>
  33fb66: 0048         	lsls	r0, r1, #0x1
  33fb68: a3b6         	adr	r3, #728 <HawkDrone::~HawkDrone()+0xaa>
  33fb6a: 0048         	lsls	r0, r1, #0x1
  33fb6c: a338         	adr	r3, #224 <HawkDrone::~HawkDrone()+0x30>
  33fb6e: 0048         	lsls	r0, r1, #0x1
  33fb70: d744         	bvc	0x33fbfc <HawkDrone::~HawkDrone()+0x84> @ imm = #0x88
  33fb72: ffff a236    	vrshr.u32	d26, d22, #0x1
  33fb76: 0048         	lsls	r0, r1, #0x1

// ==== HawkDrone::~HawkDrone
//      file offset 0x33fb78 (= ELF address; Ghidra 0x34fb78), 228 bytes, Thumb-2
  33fb78: b500         	push	{lr}
  33fb7a: b083         	sub	sp, #0xc
  33fb7c: 9001         	str	r0, [sp, #0x4]
  33fb7e: 4b35         	ldr	r3, [pc, #0xd4]         @ 0x33fc54 <HawkDrone::~HawkDrone()+0xdc>
  33fb80: 447b         	add	r3, pc
  33fb82: 9a01         	ldr	r2, [sp, #0x4]
  33fb84: 4934         	ldr	r1, [pc, #0xd0]         @ 0x33fc58 <HawkDrone::~HawkDrone()+0xe0>
  33fb86: 5859         	ldr	r1, [r3, r1]
  33fb88: 3108         	adds	r1, #0x8
  33fb8a: 6011         	str	r1, [r2]
  33fb8c: 9a01         	ldr	r2, [sp, #0x4]
  33fb8e: 4932         	ldr	r1, [pc, #0xc8]         @ 0x33fc58 <HawkDrone::~HawkDrone()+0xe0>
  33fb90: 585b         	ldr	r3, [r3, r1]
  33fb92: f503 7316    	add.w	r3, r3, #0x258
  33fb96: f8c2 31a8    	str.w	r3, [r2, #0x1a8]
  33fb9a: 9b01         	ldr	r3, [sp, #0x4]
  33fb9c: 4618         	mov	r0, r3
  33fb9e: 2101         	movs	r1, #0x1
  33fba0: f250 fd52    	bl	0x590648 <cocos2d::CCNode::removeAllChildrenWithCleanup(bool)> @ imm = #0x250aa4
  33fba4: 9b01         	ldr	r3, [sp, #0x4]
  33fba6: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  33fbaa: 681b         	ldr	r3, [r3]
  33fbac: f503 730f    	add.w	r3, r3, #0x23c
  33fbb0: 681b         	ldr	r3, [r3]
  33fbb2: 9a01         	ldr	r2, [sp, #0x4]
  33fbb4: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  33fbb8: 4610         	mov	r0, r2
  33fbba: 2100         	movs	r1, #0x0
  33fbbc: 4798         	blx	r3
  33fbbe: 9b01         	ldr	r3, [sp, #0x4]
  33fbc0: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  33fbc4: 4618         	mov	r0, r3
  33fbc6: f258 f977    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2582ee
  33fbca: 9b01         	ldr	r3, [sp, #0x4]
  33fbcc: f8d3 31bc    	ldr.w	r3, [r3, #0x1bc]
  33fbd0: 681b         	ldr	r3, [r3]
  33fbd2: 33e8         	adds	r3, #0xe8
  33fbd4: 681b         	ldr	r3, [r3]
  33fbd6: 9a01         	ldr	r2, [sp, #0x4]
  33fbd8: f8d2 21bc    	ldr.w	r2, [r2, #0x1bc]
  33fbdc: 4610         	mov	r0, r2
  33fbde: 4798         	blx	r3
  33fbe0: 9b01         	ldr	r3, [sp, #0x4]
  33fbe2: f8d3 31bc    	ldr.w	r3, [r3, #0x1bc]
  33fbe6: 4618         	mov	r0, r3
  33fbe8: f258 f966    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2582cc
  33fbec: 9b01         	ldr	r3, [sp, #0x4]
  33fbee: f8d3 31b8    	ldr.w	r3, [r3, #0x1b8]
  33fbf2: 681b         	ldr	r3, [r3]
  33fbf4: f503 7382    	add.w	r3, r3, #0x104
  33fbf8: 681b         	ldr	r3, [r3]
  33fbfa: 9a01         	ldr	r2, [sp, #0x4]
  33fbfc: f8d2 21b8    	ldr.w	r2, [r2, #0x1b8]
  33fc00: 4610         	mov	r0, r2
  33fc02: 2100         	movs	r1, #0x0
  33fc04: 4798         	blx	r3
  33fc06: 9b01         	ldr	r3, [sp, #0x4]
  33fc08: f8d3 31b0    	ldr.w	r3, [r3, #0x1b0]
  33fc0c: 4618         	mov	r0, r3
  33fc0e: f258 f953    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2582a6
  33fc12: 9b01         	ldr	r3, [sp, #0x4]
  33fc14: f8d3 31b4    	ldr.w	r3, [r3, #0x1b4]
  33fc18: 4618         	mov	r0, r3
  33fc1a: f258 f94d    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x25829a
  33fc1e: 9b01         	ldr	r3, [sp, #0x4]
  33fc20: f8d3 31b8    	ldr.w	r3, [r3, #0x1b8]
  33fc24: 4618         	mov	r0, r3
  33fc26: f258 f947    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x25828e
  33fc2a: 9b01         	ldr	r3, [sp, #0x4]
  33fc2c: f503 7300    	add.w	r3, r3, #0x200
  33fc30: 4618         	mov	r0, r3
  33fc32: f075 f66f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x475cde
  33fc36: 9b01         	ldr	r3, [sp, #0x4]
  33fc38: 4618         	mov	r0, r3
  33fc3a: f7d7 fe2f    	bl	0x31789c <Enemy::~Enemy()> @ imm = #-0x283a2
  33fc3e: 2300         	movs	r3, #0x0
  33fc40: 2b00         	cmp	r3, #0x0
  33fc42: d002         	beq	0x33fc4a <HawkDrone::~HawkDrone()+0xd2> @ imm = #0x4
  33fc44: 9801         	ldr	r0, [sp, #0x4]
  33fc46: f048 f22d    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x44845a
  33fc4a: 9b01         	ldr	r3, [sp, #0x4]
  33fc4c: 4618         	mov	r0, r3
  33fc4e: b003         	add	sp, #0xc
  33fc50: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x33fc53); words below are literal-pool data ---
  33fc54: 2e88         	cmp	r6, #0x88
  33fc56: 005f         	lsls	r7, r3, #0x1
  33fc58: db20         	blt	0x33fc9c <HawkDrone::hover()+0x24> @ imm = #0x40
  33fc5a: ffff b500    	<unknown>

// ==== HawkDrone::~HawkDrone
//      file offset 0x33fc5c (= ELF address; Ghidra 0x34fc5c), 28 bytes, Thumb-2
  33fc5c: b500         	push	{lr}
  33fc5e: b083         	sub	sp, #0xc
  33fc60: 9001         	str	r0, [sp, #0x4]
  33fc62: 9801         	ldr	r0, [sp, #0x4]
  33fc64: f7ff ff88    	bl	0x33fb78 <HawkDrone::~HawkDrone()> @ imm = #-0xf0
  33fc68: 9801         	ldr	r0, [sp, #0x4]
  33fc6a: f048 f21b    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x448436
  33fc6e: 9b01         	ldr	r3, [sp, #0x4]
  33fc70: 4618         	mov	r0, r3
  33fc72: b003         	add	sp, #0xc
  33fc74: f85d fb04    	ldr	pc, [sp], #4

// ==== HawkDrone::hover
//      file offset 0x33fc78 (= ELF address; Ghidra 0x34fc78), 120 bytes, Thumb-2
  33fc78: b530         	push	{r4, r5, lr}
  33fc7a: b089         	sub	sp, #0x24
  33fc7c: 9003         	str	r0, [sp, #0xc]
  33fc7e: 9b03         	ldr	r3, [sp, #0xc]
  33fc80: 681b         	ldr	r3, [r3]
  33fc82: f503 73fe    	add.w	r3, r3, #0x1fc
  33fc86: 681c         	ldr	r4, [r3]
  33fc88: 9d03         	ldr	r5, [sp, #0xc]
  33fc8a: 9b03         	ldr	r3, [sp, #0xc]
  33fc8c: ed93 7a58    	vldr	s14, [r3, #352]
  33fc90: eef0 7a08    	vmov.f32	s15, #3.000000e+00
  33fc94: ee67 7a27    	vmul.f32	s15, s14, s15
  33fc98: ee17 0a90    	vmov	r0, s15
  33fc9c: f7e9 fbee    	bl	0x32947c <std::cos(float)> @ imm = #-0x16824
  33fca0: ee07 0a90    	vmov	s15, r0
  33fca4: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  33fca8: ed9f 7b0d    	vldr	d7, [pc, #52]           @ 0x33fce0 <HawkDrone::hover()+0x68>
  33fcac: ee26 6b07    	vmul.f64	d6, d6, d7
  33fcb0: ed9f 7b0d    	vldr	d7, [pc, #52]           @ 0x33fce8 <HawkDrone::hover()+0x70>
  33fcb4: ee36 7b07    	vadd.f64	d7, d6, d7
  33fcb8: ab04         	add	r3, sp, #0x10
  33fcba: 4618         	mov	r0, r3
  33fcbc: ed9f 0b0a    	vldr	d0, [pc, #40]           @ 0x33fce8 <HawkDrone::hover()+0x70>
  33fcc0: eeb0 1b47    	vmov.f64	d1, d7
  33fcc4: f7fe fb72    	bl	0x33e3ac <non-virtual thunk to HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)+0x220> @ imm = #-0x191c
  33fcc8: 466b         	mov	r3, sp
  33fcca: aa06         	add	r2, sp, #0x18
  33fccc: e892 0003    	ldm.w	r2, {r0, r1}
  33fcd0: e883 0003    	stm.w	r3, {r0, r1}
  33fcd4: ab04         	add	r3, sp, #0x10
  33fcd6: cb0c         	ldm	r3, {r2, r3}
  33fcd8: 4628         	mov	r0, r5
  33fcda: 47a0         	blx	r4
  33fcdc: b009         	add	sp, #0x24
  33fcde: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x33fcdf); words below are literal-pool data ---
  33fce0: 999a         	ldr	r1, [sp, #0x268]
  33fce2: 9999         	ldr	r1, [sp, #0x264]
  33fce4: 9999         	ldr	r1, [sp, #0x264]
  33fce6: 3fb9         	subs	r7, #0xb9

// ==== HawkDrone::getSearchPoint
//      file offset 0x33fcf0 (= ELF address; Ghidra 0x34fcf0), 184 bytes, Thumb-2
  33fcf0: b500         	push	{lr}
  33fcf2: ed2d 8b02    	vpush	{d8}
  33fcf6: b083         	sub	sp, #0xc
  33fcf8: 9001         	str	r0, [sp, #0x4]
  33fcfa: 9100         	str	r1, [sp]
  33fcfc: f7fe fad0    	bl	0x33e2a0 <non-virtual thunk to HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)+0x114> @ imm = #-0x1a60
  33fd00: 4603         	mov	r3, r0
  33fd02: ee07 3a90    	vmov	s15, r3
  33fd06: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  33fd0a: eddf 7a22    	vldr	s15, [pc, #136]         @ 0x33fd94 <HawkDrone::getSearchPoint()+0xa4>
  33fd0e: ee87 7a27    	vdiv.f32	s14, s14, s15
  33fd12: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  33fd16: ee37 7a67    	vsub.f32	s14, s14, s15
  33fd1a: eddf 7a1f    	vldr	s15, [pc, #124]         @ 0x33fd98 <HawkDrone::getSearchPoint()+0xa8>
  33fd1e: ee67 7a27    	vmul.f32	s15, s14, s15
  33fd22: ee17 0a90    	vmov	r0, s15
  33fd26: f7ff fbbd    	bl	0x33f4a4 <std::abs(float)> @ imm = #-0x886
  33fd2a: ee07 0a10    	vmov	s14, r0
  33fd2e: eddf 7a1b    	vldr	s15, [pc, #108]         @ 0x33fd9c <HawkDrone::getSearchPoint()+0xac>
  33fd32: ee77 7a27    	vadd.f32	s15, s14, s15
  33fd36: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  33fd3a: f7fe fab1    	bl	0x33e2a0 <non-virtual thunk to HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)+0x114> @ imm = #-0x1a9e
  33fd3e: 4603         	mov	r3, r0
  33fd40: ee07 3a90    	vmov	s15, r3
  33fd44: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  33fd48: eddf 7a12    	vldr	s15, [pc, #72]          @ 0x33fd94 <HawkDrone::getSearchPoint()+0xa4>
  33fd4c: ee87 7a27    	vdiv.f32	s14, s14, s15
  33fd50: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  33fd54: ee37 7a67    	vsub.f32	s14, s14, s15
  33fd58: eddf 7a11    	vldr	s15, [pc, #68]          @ 0x33fda0 <HawkDrone::getSearchPoint()+0xb0>
  33fd5c: ee67 7a27    	vmul.f32	s15, s14, s15
  33fd60: ee17 0a90    	vmov	r0, s15
  33fd64: f7ff fb9e    	bl	0x33f4a4 <std::abs(float)> @ imm = #-0x8c4
  33fd68: ee07 0a10    	vmov	s14, r0
  33fd6c: eddf 7a0d    	vldr	s15, [pc, #52]          @ 0x33fda4 <HawkDrone::getSearchPoint()+0xb4>
  33fd70: ee77 7a27    	vadd.f32	s15, s14, s15
  33fd74: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  33fd78: 9b01         	ldr	r3, [sp, #0x4]
  33fd7a: 4618         	mov	r0, r3
  33fd7c: eeb0 0b48    	vmov.f64	d0, d8
  33fd80: eeb0 1b47    	vmov.f64	d1, d7
  33fd84: f7fe fb12    	bl	0x33e3ac <non-virtual thunk to HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)+0x220> @ imm = #-0x19dc
  33fd88: 9801         	ldr	r0, [sp, #0x4]
  33fd8a: b003         	add	sp, #0xc
  33fd8c: ecbd 8b02    	vpop	{d8}
  33fd90: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x33fd93); words below are literal-pool data ---
  33fd94: 0000         	movs	r0, r0
  33fd96: 4e80         	ldr	r6, [pc, #0x200]        @ 0x33ff98 <HawkDrone::updateThrust(float)+0x118>
  33fd98: 4000         	ands	r0, r0
  33fd9a: 451c         	cmp	r4, r3
  33fd9c: 0000         	movs	r0, r0
  33fd9e: 437a         	muls	r2, r7, r2
  33fda0: 0000         	movs	r0, r0
  33fda2: 42c8         	cmn	r0, r1
  33fda4: 0000         	movs	r0, r0
  33fda6: 4448         	add	r0, r9

// ==== HawkDrone::updateMoveTo
//      file offset 0x33fda8 (= ELF address; Ghidra 0x34fda8), 216 bytes, Thumb-2
  33fda8: b082         	sub	sp, #0x8
  33fdaa: b530         	push	{r4, r5, lr}
  33fdac: b097         	sub	sp, #0x5c
  33fdae: 9003         	str	r0, [sp, #0xc]
  33fdb0: a91a         	add	r1, sp, #0x68
  33fdb2: e881 000c    	stm.w	r1, {r2, r3}
  33fdb6: 9b03         	ldr	r3, [sp, #0xc]
  33fdb8: 681b         	ldr	r3, [r3]
  33fdba: f503 73d6    	add.w	r3, r3, #0x1ac
  33fdbe: 681b         	ldr	r3, [r3]
  33fdc0: aa0e         	add	r2, sp, #0x38
  33fdc2: 4610         	mov	r0, r2
  33fdc4: 9903         	ldr	r1, [sp, #0xc]
  33fdc6: 4798         	blx	r3
  33fdc8: ab06         	add	r3, sp, #0x18
  33fdca: ed9d 4b1a    	vldr	d4, [sp, #104]
  33fdce: ed9d 5b1c    	vldr	d5, [sp, #112]
  33fdd2: ed9d 6b0e    	vldr	d6, [sp, #56]
  33fdd6: ed9d 7b10    	vldr	d7, [sp, #64]
  33fdda: 4618         	mov	r0, r3
  33fddc: eeb0 0b44    	vmov.f64	d0, d4
  33fde0: eeb0 1b45    	vmov.f64	d1, d5
  33fde4: eeb0 2b46    	vmov.f64	d2, d6
  33fde8: eeb0 3b47    	vmov.f64	d3, d7
  33fdec: f7fe fb1e    	bl	0x33e42c <non-virtual thunk to HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)+0x2a0> @ imm = #-0x19c4
  33fdf0: ab06         	add	r3, sp, #0x18
  33fdf2: cb0f         	ldm	r3, {r0, r1, r2, r3}
  33fdf4: f397 f960    	bl	0x6d70b8 <cpvlength>    @ imm = #0x3972c0
  33fdf8: ec41 0b17    	vmov	d7, r0, r1
  33fdfc: eef7 7bc7    	vcvt.f32.f64	s15, d7
  33fe00: edcd 7a05    	vstr	s15, [sp, #20]
  33fe04: ed9d 7a05    	vldr	s14, [sp, #20]
  33fe08: eddf 7a1c    	vldr	s15, [pc, #112]         @ 0x33fe7c <HawkDrone::updateMoveTo(cpVect)+0xd4>
  33fe0c: eeb4 7ae7    	vcmpe.f32	s14, s15
  33fe10: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  33fe14: dd2a         	ble	0x33fe6c <HawkDrone::updateMoveTo(cpVect)+0xc4> @ imm = #0x54
  33fe16: ab0a         	add	r3, sp, #0x28
  33fe18: ed9d 6b06    	vldr	d6, [sp, #24]
  33fe1c: ed9d 7b08    	vldr	d7, [sp, #32]
  33fe20: 4618         	mov	r0, r3
  33fe22: eeb0 0b46    	vmov.f64	d0, d6
  33fe26: eeb0 1b47    	vmov.f64	d1, d7
  33fe2a: f7fe fb99    	bl	0x33e560 <non-virtual thunk to HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)+0x3d4> @ imm = #-0x18ce
  33fe2e: 9b03         	ldr	r3, [sp, #0xc]
  33fe30: 681b         	ldr	r3, [r3]
  33fe32: f503 73fe    	add.w	r3, r3, #0x1fc
  33fe36: 681c         	ldr	r4, [r3]
  33fe38: 9d03         	ldr	r5, [sp, #0xc]
  33fe3a: ab12         	add	r3, sp, #0x48
  33fe3c: ed9d 6b0a    	vldr	d6, [sp, #40]
  33fe40: ed9d 7b0c    	vldr	d7, [sp, #48]
  33fe44: 4618         	mov	r0, r3
  33fe46: eeb0 0b46    	vmov.f64	d0, d6
  33fe4a: eeb0 1b47    	vmov.f64	d1, d7
  33fe4e: eeb6 2b00    	vmov.f64	d2, #5.000000e-01
  33fe52: f7fe fb17    	bl	0x33e484 <non-virtual thunk to HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)+0x2f8> @ imm = #-0x19d2
  33fe56: 466b         	mov	r3, sp
  33fe58: aa14         	add	r2, sp, #0x50
  33fe5a: e892 0003    	ldm.w	r2, {r0, r1}
  33fe5e: e883 0003    	stm.w	r3, {r0, r1}
  33fe62: ab12         	add	r3, sp, #0x48
  33fe64: cb0c         	ldm	r3, {r2, r3}
  33fe66: 4628         	mov	r0, r5
  33fe68: 47a0         	blx	r4
  33fe6a: e002         	b	0x33fe72 <HawkDrone::updateMoveTo(cpVect)+0xca> @ imm = #0x4
  33fe6c: 9803         	ldr	r0, [sp, #0xc]
  33fe6e: f7ff ff03    	bl	0x33fc78 <HawkDrone::hover()> @ imm = #-0x1fa
  33fe72: b017         	add	sp, #0x5c
  33fe74: e8bd 4030    	pop.w	{r4, r5, lr}
  33fe78: b002         	add	sp, #0x8
  33fe7a: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x33fe7b); words below are literal-pool data ---
  33fe7c: 0000         	movs	r0, r0
  33fe7e: 4320         	orrs	r0, r4

// ==== HawkDrone::updateThrust
//      file offset 0x33fe80 (= ELF address; Ghidra 0x34fe80), 468 bytes, Thumb-2
  33fe80: b510         	push	{r4, lr}
  33fe82: b0a0         	sub	sp, #0x80
  33fe84: 9001         	str	r0, [sp, #0x4]
  33fe86: 9100         	str	r1, [sp]
  33fe88: 9b01         	ldr	r3, [sp, #0x4]
  33fe8a: 681b         	ldr	r3, [r3]
  33fe8c: f503 73fc    	add.w	r3, r3, #0x1f8
  33fe90: 681b         	ldr	r3, [r3]
  33fe92: 9a01         	ldr	r2, [sp, #0x4]
  33fe94: a914         	add	r1, sp, #0x50
  33fe96: 4608         	mov	r0, r1
  33fe98: 4611         	mov	r1, r2
  33fe9a: 4798         	blx	r3
  33fe9c: ab08         	add	r3, sp, #0x20
  33fe9e: ed9d 6b14    	vldr	d6, [sp, #80]
  33fea2: ed9d 7b16    	vldr	d7, [sp, #88]
  33fea6: 4618         	mov	r0, r3
  33fea8: eeb0 0b46    	vmov.f64	d0, d6
  33feac: eeb0 1b47    	vmov.f64	d1, d7
  33feb0: ed9f 2b61    	vldr	d2, [pc, #388]          @ 0x340038 <HawkDrone::updateThrust(float)+0x1b8>
  33feb4: f7fe fae6    	bl	0x33e484 <non-virtual thunk to HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)+0x2f8> @ imm = #-0x1a34
  33feb8: 9b01         	ldr	r3, [sp, #0x4]
  33feba: 681b         	ldr	r3, [r3]
  33febc: f503 73fc    	add.w	r3, r3, #0x1f8
  33fec0: 681b         	ldr	r3, [r3]
  33fec2: 9a01         	ldr	r2, [sp, #0x4]
  33fec4: a918         	add	r1, sp, #0x60
  33fec6: 4608         	mov	r0, r1
  33fec8: 4611         	mov	r1, r2
  33feca: 4798         	blx	r3
  33fecc: ab0c         	add	r3, sp, #0x30
  33fece: ed9d 6b18    	vldr	d6, [sp, #96]
  33fed2: ed9d 7b1a    	vldr	d7, [sp, #104]
  33fed6: 4618         	mov	r0, r3
  33fed8: eeb0 0b46    	vmov.f64	d0, d6
  33fedc: eeb0 1b47    	vmov.f64	d1, d7
  33fee0: f7fe fb3e    	bl	0x33e560 <non-virtual thunk to HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)+0x3d4> @ imm = #-0x1984
  33fee4: ab08         	add	r3, sp, #0x20
  33fee6: cb0f         	ldm	r3, {r0, r1, r2, r3}
  33fee8: f397 f8e6    	bl	0x6d70b8 <cpvlength>    @ imm = #0x3971cc
  33feec: ec41 0b17    	vmov	d7, r0, r1
  33fef0: eef7 7bc7    	vcvt.f32.f64	s15, d7
  33fef4: edcd 7a03    	vstr	s15, [sp, #12]
  33fef8: eddd 7a03    	vldr	s15, [sp, #12]
  33fefc: eef5 7a40    	vcmp.f32	s15, #0
  33ff00: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  33ff04: f000 8093    	beq.w	0x34002e <HawkDrone::updateThrust(float)+0x1ae> @ imm = #0x126
  33ff08: 9b01         	ldr	r3, [sp, #0x4]
  33ff0a: f8d3 31c8    	ldr.w	r3, [r3, #0x1c8]
  33ff0e: ac10         	add	r4, sp, #0x40
  33ff10: 3338         	adds	r3, #0x38
  33ff12: cb0f         	ldm	r3, {r0, r1, r2, r3}
  33ff14: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  33ff18: ed9d 4b10    	vldr	d4, [sp, #64]
  33ff1c: ed9d 5b12    	vldr	d5, [sp, #72]
  33ff20: ed9d 6b08    	vldr	d6, [sp, #32]
  33ff24: ed9d 7b0a    	vldr	d7, [sp, #40]
  33ff28: eeb0 0b44    	vmov.f64	d0, d4
  33ff2c: eeb0 1b45    	vmov.f64	d1, d5
  33ff30: eeb0 2b46    	vmov.f64	d2, d6
  33ff34: eeb0 3b47    	vmov.f64	d3, d7
  33ff38: f7fe faca    	bl	0x33e4d0 <non-virtual thunk to HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)+0x344> @ imm = #-0x1a6c
  33ff3c: ed8d 0b04    	vstr	d0, [sp, #16]
  33ff40: ed9d 7a03    	vldr	s14, [sp, #12]
  33ff44: eddd 7a03    	vldr	s15, [sp, #12]
  33ff48: ee67 7a27    	vmul.f32	s15, s14, s15
  33ff4c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  33ff50: ed9d 6b04    	vldr	d6, [sp, #16]
  33ff54: ee86 7b07    	vdiv.f64	d7, d6, d7
  33ff58: eeb5 7bc0    	vcmpe.f64	d7, #0
  33ff5c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  33ff60: d502         	bpl	0x33ff68 <HawkDrone::updateThrust(float)+0xe8> @ imm = #0x4
  33ff62: ed9f 7b37    	vldr	d7, [pc, #220]          @ 0x340040 <HawkDrone::updateThrust(float)+0x1c0>
  33ff66: e00b         	b	0x33ff80 <HawkDrone::updateThrust(float)+0x100> @ imm = #0x16
  33ff68: ed9d 7a03    	vldr	s14, [sp, #12]
  33ff6c: eddd 7a03    	vldr	s15, [sp, #12]
  33ff70: ee67 7a27    	vmul.f32	s15, s14, s15
  33ff74: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  33ff78: ed9d 6b04    	vldr	d6, [sp, #16]
  33ff7c: ee86 7b07    	vdiv.f64	d7, d6, d7
  33ff80: ed8d 7b06    	vstr	d7, [sp, #24]
  33ff84: eddd 7a03    	vldr	s15, [sp, #12]
  33ff88: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  33ff8c: ed9d 7b06    	vldr	d7, [sp, #24]
  33ff90: ee36 6b47    	vsub.f64	d6, d6, d7
  33ff94: ed9f 7b2c    	vldr	d7, [pc, #176]          @ 0x340048 <HawkDrone::updateThrust(float)+0x1c8>
  33ff98: eeb4 6bc7    	vcmpe.f64	d6, d7
  33ff9c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  33ffa0: d502         	bpl	0x33ffa8 <HawkDrone::updateThrust(float)+0x128> @ imm = #0x4
  33ffa2: ed9f 7b29    	vldr	d7, [pc, #164]          @ 0x340048 <HawkDrone::updateThrust(float)+0x1c8>
  33ffa6: e007         	b	0x33ffb8 <HawkDrone::updateThrust(float)+0x138> @ imm = #0xe
  33ffa8: eddd 7a03    	vldr	s15, [sp, #12]
  33ffac: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  33ffb0: ed9d 7b06    	vldr	d7, [sp, #24]
  33ffb4: ee36 7b47    	vsub.f64	d7, d6, d7
  33ffb8: ed8d 7b06    	vstr	d7, [sp, #24]
  33ffbc: 9b01         	ldr	r3, [sp, #0x4]
  33ffbe: f8d3 41c8    	ldr.w	r4, [r3, #0x1c8]
  33ffc2: eddd 7a00    	vldr	s15, [sp]
  33ffc6: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  33ffca: eeb7 7b08    	vmov.f64	d7, #1.500000e+00
  33ffce: ee26 6b07    	vmul.f64	d6, d6, d7
  33ffd2: ed9d 7b06    	vldr	d7, [sp, #24]
  33ffd6: ee26 6b07    	vmul.f64	d6, d6, d7
  33ffda: 9b01         	ldr	r3, [sp, #0x4]
  33ffdc: edd3 7a75    	vldr	s15, [r3, #468]
  33ffe0: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  33ffe4: ee26 7b07    	vmul.f64	d7, d6, d7
  33ffe8: ab1c         	add	r3, sp, #0x70
  33ffea: ed9d 5b0c    	vldr	d5, [sp, #48]
  33ffee: ed9d 6b0e    	vldr	d6, [sp, #56]
  33fff2: 4618         	mov	r0, r3
  33fff4: eeb0 0b45    	vmov.f64	d0, d5
  33fff8: eeb0 1b46    	vmov.f64	d1, d6
  33fffc: eeb0 2b47    	vmov.f64	d2, d7
  340000: f7fe fa40    	bl	0x33e484 <non-virtual thunk to HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)+0x2f8> @ imm = #-0x1b80
  340004: ed9d 4b1c    	vldr	d4, [sp, #112]
  340008: ed9d 5b1e    	vldr	d5, [sp, #120]
  34000c: 4b10         	ldr	r3, [pc, #0x40]         @ 0x340050 <HawkDrone::updateThrust(float)+0x1d0>
  34000e: 447b         	add	r3, pc
  340010: ed93 6b00    	vldr	d6, [r3]
  340014: ed93 7b02    	vldr	d7, [r3, #8]
  340018: 4620         	mov	r0, r4
  34001a: eeb0 0b44    	vmov.f64	d0, d4
  34001e: eeb0 1b45    	vmov.f64	d1, d5
  340022: eeb0 2b46    	vmov.f64	d2, d6
  340026: eeb0 3b47    	vmov.f64	d3, d7
  34002a: f7fe fb29    	bl	0x33e680 <non-virtual thunk to HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)+0x4f4> @ imm = #-0x19ae
  34002e: b020         	add	sp, #0x80
  340030: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x340031); words below are literal-pool data ---
  340032: bf00         	nop
  340034: f3af 8000    	nop.w
  340038: 0000         	movs	r0, r0
  34003a: 0000         	movs	r0, r0
  34003c: 0000         	movs	r0, r0
  34003e: 405e         	eors	r6, r3
  340048: 432d         	orrs	r5, r5
  34004a: eb1c 36e2    	adds.w	r6, r12, r2, asr #15
  34004e: 3f1a         	subs	r7, #0x1a
  340050: 9d66         	ldr	r5, [sp, #0x198]
  340052: 0048         	lsls	r0, r1, #0x1

// ==== HawkDrone::rotateWeapon
//      file offset 0x340058 (= ELF address; Ghidra 0x350058), 604 bytes, Thumb-2
  340058: b530         	push	{r4, r5, lr}
  34005a: ed2d 8b02    	vpush	{d8}
  34005e: b093         	sub	sp, #0x4c
  340060: 9001         	str	r0, [sp, #0x4]
  340062: 9b01         	ldr	r3, [sp, #0x4]
  340064: ed93 8a66    	vldr	s16, [r3, #408]
  340068: 9b01         	ldr	r3, [sp, #0x4]
  34006a: 681b         	ldr	r3, [r3]
  34006c: 339c         	adds	r3, #0x9c
  34006e: 681b         	ldr	r3, [r3]
  340070: 9a01         	ldr	r2, [sp, #0x4]
  340072: 4610         	mov	r0, r2
  340074: 4798         	blx	r3
  340076: ee07 0a90    	vmov	s15, r0
  34007a: ee78 7a67    	vsub.f32	s15, s16, s15
  34007e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  340082: ed8d 7b02    	vstr	d7, [sp, #8]
  340086: 9b01         	ldr	r3, [sp, #0x4]
  340088: 681b         	ldr	r3, [r3]
  34008a: 339c         	adds	r3, #0x9c
  34008c: 681b         	ldr	r3, [r3]
  34008e: 9a01         	ldr	r2, [sp, #0x4]
  340090: 4610         	mov	r0, r2
  340092: 4798         	blx	r3
  340094: ee07 0a10    	vmov	s14, r0
  340098: eddf 7a85    	vldr	s15, [pc, #532]         @ 0x3402b0 <HawkDrone::rotateWeapon()+0x258>
  34009c: ee67 7a27    	vmul.f32	s15, s14, s15
  3400a0: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3400a4: ed8d 7b04    	vstr	d7, [sp, #16]
  3400a8: 9b01         	ldr	r3, [sp, #0x4]
  3400aa: ed93 7a66    	vldr	s14, [r3, #408]
  3400ae: eddf 7a80    	vldr	s15, [pc, #512]         @ 0x3402b0 <HawkDrone::rotateWeapon()+0x258>
  3400b2: ee67 7a27    	vmul.f32	s15, s14, s15
  3400b6: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3400ba: ed8d 7b06    	vstr	d7, [sp, #24]
  3400be: e9dd 0104    	ldrd	r0, r1, [sp, #16]
  3400c2: f795 ef22    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x6a1bc
  3400c6: 4604         	mov	r4, r0
  3400c8: 460d         	mov	r5, r1
  3400ca: e9dd 0104    	ldrd	r0, r1, [sp, #16]
  3400ce: f795 ef22    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x6a1bc
  3400d2: 4602         	mov	r2, r0
  3400d4: 460b         	mov	r3, r1
  3400d6: a90a         	add	r1, sp, #0x28
  3400d8: 4608         	mov	r0, r1
  3400da: ec45 4b10    	vmov	d0, r4, r5
  3400de: ec43 2b11    	vmov	d1, r2, r3
  3400e2: f7fe f963    	bl	0x33e3ac <non-virtual thunk to HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)+0x220> @ imm = #-0x1d3a
  3400e6: e9dd 0106    	ldrd	r0, r1, [sp, #24]
  3400ea: f795 ef0e    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x6a1e4
  3400ee: 4604         	mov	r4, r0
  3400f0: 460d         	mov	r5, r1
  3400f2: e9dd 0106    	ldrd	r0, r1, [sp, #24]
  3400f6: f795 ef0e    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x6a1e4
  3400fa: 4602         	mov	r2, r0
  3400fc: 460b         	mov	r3, r1
  3400fe: a90e         	add	r1, sp, #0x38
  340100: 4608         	mov	r0, r1
  340102: ec45 4b10    	vmov	d0, r4, r5
  340106: ec43 2b11    	vmov	d1, r2, r3
  34010a: f7fe f94f    	bl	0x33e3ac <non-virtual thunk to HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)+0x220> @ imm = #-0x1d62
  34010e: ed9d 4b0a    	vldr	d4, [sp, #40]
  340112: ed9d 5b0c    	vldr	d5, [sp, #48]
  340116: ed9d 6b0e    	vldr	d6, [sp, #56]
  34011a: ed9d 7b10    	vldr	d7, [sp, #64]
  34011e: eeb0 0b44    	vmov.f64	d0, d4
  340122: eeb0 1b45    	vmov.f64	d1, d5
  340126: eeb0 2b46    	vmov.f64	d2, d6
  34012a: eeb0 3b47    	vmov.f64	d3, d7
  34012e: f7fe f9cf    	bl	0x33e4d0 <non-virtual thunk to HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)+0x344> @ imm = #-0x1c62
  340132: ed8d 0b08    	vstr	d0, [sp, #32]
  340136: ed9d 6b02    	vldr	d6, [sp, #8]
  34013a: ed9f 7b53    	vldr	d7, [pc, #332]          @ 0x340288 <HawkDrone::rotateWeapon()+0x230>
  34013e: eeb4 6bc7    	vcmpe.f64	d6, d7
  340142: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  340146: d51f         	bpl	0x340188 <HawkDrone::rotateWeapon()+0x130> @ imm = #0x3e
  340148: ed9d 6b02    	vldr	d6, [sp, #8]
  34014c: ed9f 7b50    	vldr	d7, [pc, #320]          @ 0x340290 <HawkDrone::rotateWeapon()+0x238>
  340150: eeb4 6bc7    	vcmpe.f64	d6, d7
  340154: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  340158: dd16         	ble	0x340188 <HawkDrone::rotateWeapon()+0x130> @ imm = #0x2c
  34015a: ed9d 6b02    	vldr	d6, [sp, #8]
  34015e: ed9f 7b4e    	vldr	d7, [pc, #312]          @ 0x340298 <HawkDrone::rotateWeapon()+0x240>
  340162: eeb4 6bc7    	vcmpe.f64	d6, d7
  340166: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  34016a: dd05         	ble	0x340178 <HawkDrone::rotateWeapon()+0x120> @ imm = #0xa
  34016c: a346         	adr	r3, #280 <HawkDrone::rotateWeapon()+0x15e>
  34016e: e9d3 2300    	ldrd	r2, r3, [r3]
  340172: e9cd 2302    	strd	r2, r3, [sp, #8]
  340176: e007         	b	0x340188 <HawkDrone::rotateWeapon()+0x130> @ imm = #0xe
  340178: f04f 0200    	mov.w	r2, #0x0
  34017c: f44f 4380    	mov.w	r3, #0x4000
  340180: f2c4 036a    	movt	r3, #0x406a
  340184: e9cd 2302    	strd	r2, r3, [sp, #8]
  340188: ed9d 7b08    	vldr	d7, [sp, #32]
  34018c: eeb5 7bc0    	vcmpe.f64	d7, #0
  340190: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  340194: d83f         	bhi	0x340216 <HawkDrone::rotateWeapon()+0x1be> @ imm = #0x7e
  340196: ed9d 7b08    	vldr	d7, [sp, #32]
  34019a: eeb0 6bc7    	vabs.f64	d6, d7
  34019e: ed9f 7b40    	vldr	d7, [pc, #256]          @ 0x3402a0 <HawkDrone::rotateWeapon()+0x248>
  3401a2: eeb4 6bc7    	vcmpe.f64	d6, d7
  3401a6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3401aa: dd34         	ble	0x340216 <HawkDrone::rotateWeapon()+0x1be> @ imm = #0x68
  3401ac: 9b01         	ldr	r3, [sp, #0x4]
  3401ae: 681b         	ldr	r3, [r3]
  3401b0: 3330         	adds	r3, #0x30
  3401b2: 681c         	ldr	r4, [r3]
  3401b4: 9d01         	ldr	r5, [sp, #0x4]
  3401b6: 9b01         	ldr	r3, [sp, #0x4]
  3401b8: 681b         	ldr	r3, [r3]
  3401ba: 3334         	adds	r3, #0x34
  3401bc: 681b         	ldr	r3, [r3]
  3401be: 9a01         	ldr	r2, [sp, #0x4]
  3401c0: 4610         	mov	r0, r2
  3401c2: 4798         	blx	r3
  3401c4: 4603         	mov	r3, r0
  3401c6: 4618         	mov	r0, r3
  3401c8: f7ff f978    	bl	0x33f4bc <std::fabs(float)> @ imm = #-0xd10
  3401cc: 4603         	mov	r3, r0
  3401ce: f083 4300    	eor	r3, r3, #0x80000000
  3401d2: 4628         	mov	r0, r5
  3401d4: 4619         	mov	r1, r3
  3401d6: 47a0         	blx	r4
  3401d8: 9b01         	ldr	r3, [sp, #0x4]
  3401da: f8d3 31b8    	ldr.w	r3, [r3, #0x1b8]
  3401de: 681b         	ldr	r3, [r3]
  3401e0: 3398         	adds	r3, #0x98
  3401e2: 681b         	ldr	r3, [r3]
  3401e4: 9a01         	ldr	r2, [sp, #0x4]
  3401e6: f8d2 21b8    	ldr.w	r2, [r2, #0x1b8]
  3401ea: ed9d 7b02    	vldr	d7, [sp, #8]
  3401ee: eeb1 6b47    	vneg.f64	d6, d7
  3401f2: ed9f 7b2d    	vldr	d7, [pc, #180]          @ 0x3402a8 <HawkDrone::rotateWeapon()+0x250>
  3401f6: ee36 6b47    	vsub.f64	d6, d6, d7
  3401fa: 9901         	ldr	r1, [sp, #0x4]
  3401fc: edd1 7a56    	vldr	s15, [r1, #344]
  340200: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  340204: ee36 7b47    	vsub.f64	d7, d6, d7
  340208: eef7 7bc7    	vcvt.f32.f64	s15, d7
  34020c: 4610         	mov	r0, r2
  34020e: ee17 1a90    	vmov	r1, s15
  340212: 4798         	blx	r3
  340214: e02b         	b	0x34026e <HawkDrone::rotateWeapon()+0x216> @ imm = #0x56
  340216: 9b01         	ldr	r3, [sp, #0x4]
  340218: 681b         	ldr	r3, [r3]
  34021a: 3330         	adds	r3, #0x30
  34021c: 681c         	ldr	r4, [r3]
  34021e: 9d01         	ldr	r5, [sp, #0x4]
  340220: 9b01         	ldr	r3, [sp, #0x4]
  340222: 681b         	ldr	r3, [r3]
  340224: 3334         	adds	r3, #0x34
  340226: 681b         	ldr	r3, [r3]
  340228: 9a01         	ldr	r2, [sp, #0x4]
  34022a: 4610         	mov	r0, r2
  34022c: 4798         	blx	r3
  34022e: 4603         	mov	r3, r0
  340230: 4618         	mov	r0, r3
  340232: f7ff f943    	bl	0x33f4bc <std::fabs(float)> @ imm = #-0xd7a
  340236: 4603         	mov	r3, r0
  340238: 4628         	mov	r0, r5
  34023a: 4619         	mov	r1, r3
  34023c: 47a0         	blx	r4
  34023e: 9b01         	ldr	r3, [sp, #0x4]
  340240: f8d3 31b8    	ldr.w	r3, [r3, #0x1b8]
  340244: 681b         	ldr	r3, [r3]
  340246: 3398         	adds	r3, #0x98
  340248: 681b         	ldr	r3, [r3]
  34024a: 9a01         	ldr	r2, [sp, #0x4]
  34024c: f8d2 21b8    	ldr.w	r2, [r2, #0x1b8]
  340250: 9901         	ldr	r1, [sp, #0x4]
  340252: edd1 7a56    	vldr	s15, [r1, #344]
  340256: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  34025a: ed9d 6b02    	vldr	d6, [sp, #8]
  34025e: ee36 7b47    	vsub.f64	d7, d6, d7
  340262: eef7 7bc7    	vcvt.f32.f64	s15, d7
  340266: 4610         	mov	r0, r2
  340268: ee17 1a90    	vmov	r1, s15
  34026c: 4798         	blx	r3
  34026e: ed9d 7b02    	vldr	d7, [sp, #8]
  340272: eef7 7bc7    	vcvt.f32.f64	s15, d7
  340276: 9b01         	ldr	r3, [sp, #0x4]
  340278: edc3 7a78    	vstr	s15, [r3, #480]
  34027c: b013         	add	sp, #0x4c
  34027e: ecbd 8b02    	vpop	{d8}
  340282: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x340283); words below are literal-pool data ---
  340284: f3af 8000    	nop.w
  340288: 0000         	movs	r0, r0
  34028a: 0000         	movs	r0, r0
  34028c: a000         	adr	r0, #0 <HawkDrone::rotateWeapon()+0x238>
  34028e: 4074         	eors	r4, r6
  340290: 0000         	movs	r0, r0
  340292: 0000         	movs	r0, r0
  340294: 4000         	ands	r0, r0
  340296: 406a         	eors	r2, r5
  340298: 0000         	movs	r0, r0
  34029a: 0000         	movs	r0, r0
  34029c: e000         	b	0x3402a0 <HawkDrone::rotateWeapon()+0x248> @ imm = #0x0
  34029e: 4070         	eors	r0, r6
  3402a0: 999a         	ldr	r1, [sp, #0x268]
  3402a2: 9999         	ldr	r1, [sp, #0x264]
  3402a4: 9999         	ldr	r1, [sp, #0x264]
  3402a6: 3fa9         	subs	r7, #0xa9
  3402a8: 0000         	movs	r0, r0
  3402aa: 0000         	movs	r0, r0
  3402ac: 8000         	strh	r0, [r0]
  3402ae: 4066         	eors	r6, r4
  3402b0: fa35 3c8e    	<unknown>

// ==== HawkDrone::updateAim
//      file offset 0x3402b8 (= ELF address; Ghidra 0x3502b8), 608 bytes, Thumb-2
  3402b8: b082         	sub	sp, #0x8
  3402ba: b500         	push	{lr}
  3402bc: ed2d 8b02    	vpush	{d8}
  3402c0: b09d         	sub	sp, #0x74
  3402c2: 9001         	str	r0, [sp, #0x4]
  3402c4: a920         	add	r1, sp, #0x80
  3402c6: e881 000c    	stm.w	r1, {r2, r3}
  3402ca: 9b01         	ldr	r3, [sp, #0x4]
  3402cc: ed93 7a66    	vldr	s14, [r3, #408]
  3402d0: eddf 7a8e    	vldr	s15, [pc, #568]         @ 0x34050c <HawkDrone::updateAim(cpVect)+0x254>
  3402d4: eeb4 7ae7    	vcmpe.f32	s14, s15
  3402d8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3402dc: dd09         	ble	0x3402f2 <HawkDrone::updateAim(cpVect)+0x3a> @ imm = #0x12
  3402de: 9b01         	ldr	r3, [sp, #0x4]
  3402e0: ed93 7a66    	vldr	s14, [r3, #408]
  3402e4: eddf 7a89    	vldr	s15, [pc, #548]         @ 0x34050c <HawkDrone::updateAim(cpVect)+0x254>
  3402e8: ee77 7a67    	vsub.f32	s15, s14, s15
  3402ec: 9b01         	ldr	r3, [sp, #0x4]
  3402ee: edc3 7a66    	vstr	s15, [r3, #408]
  3402f2: 9b01         	ldr	r3, [sp, #0x4]
  3402f4: edd3 7a66    	vldr	s15, [r3, #408]
  3402f8: eef5 7ac0    	vcmpe.f32	s15, #0
  3402fc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  340300: d509         	bpl	0x340316 <HawkDrone::updateAim(cpVect)+0x5e> @ imm = #0x12
  340302: 9b01         	ldr	r3, [sp, #0x4]
  340304: ed93 7a66    	vldr	s14, [r3, #408]
  340308: eddf 7a80    	vldr	s15, [pc, #512]         @ 0x34050c <HawkDrone::updateAim(cpVect)+0x254>
  34030c: ee77 7a27    	vadd.f32	s15, s14, s15
  340310: 9b01         	ldr	r3, [sp, #0x4]
  340312: edc3 7a66    	vstr	s15, [r3, #408]
  340316: f04f 0300    	mov.w	r3, #0x0
  34031a: f2c4 0340    	movt	r3, #0x4040
  34031e: 9305         	str	r3, [sp, #0x14]
  340320: 2301         	movs	r3, #0x1
  340322: f88d 300f    	strb.w	r3, [sp, #0xf]
  340326: 9b01         	ldr	r3, [sp, #0x4]
  340328: ed93 7a66    	vldr	s14, [r3, #408]
  34032c: eddf 7a78    	vldr	s15, [pc, #480]         @ 0x340510 <HawkDrone::updateAim(cpVect)+0x258>
  340330: ee67 7a27    	vmul.f32	s15, s14, s15
  340334: edcd 7a06    	vstr	s15, [sp, #24]
  340338: 9b01         	ldr	r3, [sp, #0x4]
  34033a: ed93 7a66    	vldr	s14, [r3, #408]
  34033e: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  340342: ee37 7a27    	vadd.f32	s14, s14, s15
  340346: eddf 7a72    	vldr	s15, [pc, #456]         @ 0x340510 <HawkDrone::updateAim(cpVect)+0x258>
  34034a: ee67 7a27    	vmul.f32	s15, s14, s15
  34034e: edcd 7a07    	vstr	s15, [sp, #28]
  340352: 9806         	ldr	r0, [sp, #0x18]
  340354: f7e9 f892    	bl	0x32947c <std::cos(float)> @ imm = #-0x16edc
  340358: ee07 0a90    	vmov	s15, r0
  34035c: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  340360: 9806         	ldr	r0, [sp, #0x18]
  340362: f7e9 f8a3    	bl	0x3294ac <std::sin(float)> @ imm = #-0x16eba
  340366: 4603         	mov	r3, r0
  340368: ee07 3a10    	vmov	s14, r3
  34036c: eef1 7a47    	vneg.f32	s15, s14
  340370: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  340374: ab0c         	add	r3, sp, #0x30
  340376: 4618         	mov	r0, r3
  340378: eeb0 0b48    	vmov.f64	d0, d8
  34037c: eeb0 1b47    	vmov.f64	d1, d7
  340380: f7fe f814    	bl	0x33e3ac <non-virtual thunk to HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)+0x220> @ imm = #-0x1fd8
  340384: ab10         	add	r3, sp, #0x40
  340386: ed9d 6b20    	vldr	d6, [sp, #128]
  34038a: ed9d 7b22    	vldr	d7, [sp, #136]
  34038e: 4618         	mov	r0, r3
  340390: eeb0 0b46    	vmov.f64	d0, d6
  340394: eeb0 1b47    	vmov.f64	d1, d7
  340398: f7fe f8e2    	bl	0x33e560 <non-virtual thunk to HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)+0x3d4> @ imm = #-0x1e3c
  34039c: ed9d 4b0c    	vldr	d4, [sp, #48]
  3403a0: ed9d 5b0e    	vldr	d5, [sp, #56]
  3403a4: ed9d 6b10    	vldr	d6, [sp, #64]
  3403a8: ed9d 7b12    	vldr	d7, [sp, #72]
  3403ac: eeb0 0b44    	vmov.f64	d0, d4
  3403b0: eeb0 1b45    	vmov.f64	d1, d5
  3403b4: eeb0 2b46    	vmov.f64	d2, d6
  3403b8: eeb0 3b47    	vmov.f64	d3, d7
  3403bc: f7fe f888    	bl	0x33e4d0 <non-virtual thunk to HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)+0x344> @ imm = #-0x1ef0
  3403c0: eeb0 7b40    	vmov.f64	d7, d0
  3403c4: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3403c8: edcd 7a08    	vstr	s15, [sp, #32]
  3403cc: 9807         	ldr	r0, [sp, #0x1c]
  3403ce: f7e9 f855    	bl	0x32947c <std::cos(float)> @ imm = #-0x16f56
  3403d2: ee07 0a90    	vmov	s15, r0
  3403d6: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  3403da: 9807         	ldr	r0, [sp, #0x1c]
  3403dc: f7e9 f866    	bl	0x3294ac <std::sin(float)> @ imm = #-0x16f34
  3403e0: 4603         	mov	r3, r0
  3403e2: ee07 3a10    	vmov	s14, r3
  3403e6: eef1 7a47    	vneg.f32	s15, s14
  3403ea: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3403ee: ab14         	add	r3, sp, #0x50
  3403f0: 4618         	mov	r0, r3
  3403f2: eeb0 0b48    	vmov.f64	d0, d8
  3403f6: eeb0 1b47    	vmov.f64	d1, d7
  3403fa: f7fd ffd7    	bl	0x33e3ac <non-virtual thunk to HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)+0x220> @ imm = #-0x2052
  3403fe: ab18         	add	r3, sp, #0x60
  340400: ed9d 6b20    	vldr	d6, [sp, #128]
  340404: ed9d 7b22    	vldr	d7, [sp, #136]
  340408: 4618         	mov	r0, r3
  34040a: eeb0 0b46    	vmov.f64	d0, d6
  34040e: eeb0 1b47    	vmov.f64	d1, d7
  340412: f7fe f8a5    	bl	0x33e560 <non-virtual thunk to HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)+0x3d4> @ imm = #-0x1eb6
  340416: ed9d 4b14    	vldr	d4, [sp, #80]
  34041a: ed9d 5b16    	vldr	d5, [sp, #88]
  34041e: ed9d 6b18    	vldr	d6, [sp, #96]
  340422: ed9d 7b1a    	vldr	d7, [sp, #104]
  340426: eeb0 0b44    	vmov.f64	d0, d4
  34042a: eeb0 1b45    	vmov.f64	d1, d5
  34042e: eeb0 2b46    	vmov.f64	d2, d6
  340432: eeb0 3b47    	vmov.f64	d3, d7
  340436: f7fe f84b    	bl	0x33e4d0 <non-virtual thunk to HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)+0x344> @ imm = #-0x1f6a
  34043a: eeb0 7b40    	vmov.f64	d7, d0
  34043e: eef7 7bc7    	vcvt.f32.f64	s15, d7
  340442: edcd 7a09    	vstr	s15, [sp, #36]
  340446: ed9d 7a09    	vldr	s14, [sp, #36]
  34044a: eddd 7a08    	vldr	s15, [sp, #32]
  34044e: eeb4 7ae7    	vcmpe.f32	s14, s15
  340452: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  340456: dd02         	ble	0x34045e <HawkDrone::updateAim(cpVect)+0x1a6> @ imm = #0x4
  340458: f04f 537e    	mov.w	r3, #0x3f800000
  34045c: e003         	b	0x340466 <HawkDrone::updateAim(cpVect)+0x1ae> @ imm = #0x6
  34045e: f04f 0300    	mov.w	r3, #0x0
  340462: f6cb 7380    	movt	r3, #0xbf80
  340466: 930a         	str	r3, [sp, #0x28]
  340468: ed9d 7a08    	vldr	s14, [sp, #32]
  34046c: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  340470: ee37 7a27    	vadd.f32	s14, s14, s15
  340474: eddf 7a27    	vldr	s15, [pc, #156]         @ 0x340514 <HawkDrone::updateAim(cpVect)+0x25c>
  340478: ee67 7a27    	vmul.f32	s15, s14, s15
  34047c: ed9f 7a23    	vldr	s14, [pc, #140]         @ 0x34050c <HawkDrone::updateAim(cpVect)+0x254>
  340480: ee77 7a67    	vsub.f32	s15, s14, s15
  340484: eefd 7ae7    	vcvt.s32.f32	s15, s15
  340488: ee17 3a90    	vmov	r3, s15
  34048c: 930b         	str	r3, [sp, #0x2c]
  34048e: 9a0b         	ldr	r2, [sp, #0x2c]
  340490: f246 6367    	movw	r3, #0x6667
  340494: f2c6 6366    	movt	r3, #0x6666
  340498: fb83 1302    	smull	r1, r3, r3, r2
  34049c: 10d9         	asrs	r1, r3, #0x3
  34049e: 17d3         	asrs	r3, r2, #0x1f
  3404a0: 1acb         	subs	r3, r1, r3
  3404a2: 3301         	adds	r3, #0x1
  3404a4: ee07 3a10    	vmov	s14, r3
  3404a8: eef8 7ac7    	vcvt.f32.s32	s15, s14
  3404ac: edcd 7a04    	vstr	s15, [sp, #16]
  3404b0: 9b0b         	ldr	r3, [sp, #0x2c]
  3404b2: ee07 3a90    	vmov	s15, r3
  3404b6: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3404ba: eddd 7a05    	vldr	s15, [sp, #20]
  3404be: eeb4 7ae7    	vcmpe.f32	s14, s15
  3404c2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3404c6: d406         	bmi	0x3404d6 <HawkDrone::updateAim(cpVect)+0x21e> @ imm = #0xc
  3404c8: f89d 300f    	ldrb.w	r3, [sp, #0xf]
  3404cc: f083 0301    	eor	r3, r3, #0x1
  3404d0: b2db         	uxtb	r3, r3
  3404d2: 2b00         	cmp	r3, #0x0
  3404d4: d002         	beq	0x3404dc <HawkDrone::updateAim(cpVect)+0x224> @ imm = #0x4
  3404d6: f04f 0300    	mov.w	r3, #0x0
  3404da: 9304         	str	r3, [sp, #0x10]
  3404dc: 9b01         	ldr	r3, [sp, #0x4]
  3404de: ed93 7a66    	vldr	s14, [r3, #408]
  3404e2: eddd 6a0a    	vldr	s13, [sp, #40]
  3404e6: eddd 7a04    	vldr	s15, [sp, #16]
  3404ea: ee66 7aa7    	vmul.f32	s15, s13, s15
  3404ee: ee77 7a27    	vadd.f32	s15, s14, s15
  3404f2: 9b01         	ldr	r3, [sp, #0x4]
  3404f4: edc3 7a66    	vstr	s15, [r3, #408]
  3404f8: 9801         	ldr	r0, [sp, #0x4]
  3404fa: f7ff fdad    	bl	0x340058 <HawkDrone::rotateWeapon()> @ imm = #-0x4a6
  3404fe: b01d         	add	sp, #0x74
  340500: ecbd 8b02    	vpop	{d8}
  340504: f85d eb04    	ldr	lr, [sp], #4
  340508: b002         	add	sp, #0x8
  34050a: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x34050b); words below are literal-pool data ---
  34050c: 0000         	movs	r0, r0
  34050e: 43b4         	bics	r4, r6
  340510: fa35 3c8e    	<unknown>
  340514: 0000         	movs	r0, r0
  340516: 4334         	orrs	r4, r6

// ==== HawkDrone::updateSprite
//      file offset 0x340518 (= ELF address; Ghidra 0x350518), 1264 bytes, Thumb-2
  340518: b530         	push	{r4, r5, lr}
  34051a: ed2d 8b02    	vpush	{d8}
  34051e: b0a1         	sub	sp, #0x84
  340520: 9009         	str	r0, [sp, #0x24]
  340522: 9108         	str	r1, [sp, #0x20]
  340524: 9b09         	ldr	r3, [sp, #0x24]
  340526: 681b         	ldr	r3, [r3]
  340528: f503 73fc    	add.w	r3, r3, #0x1f8
  34052c: 681b         	ldr	r3, [r3]
  34052e: 9a09         	ldr	r2, [sp, #0x24]
  340530: a91c         	add	r1, sp, #0x70
  340532: 4608         	mov	r0, r1
  340534: 4611         	mov	r1, r2
  340536: 4798         	blx	r3
  340538: ed9d 6b1e    	vldr	d6, [sp, #120]
  34053c: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
  340540: ee26 6b07    	vmul.f64	d6, d6, d7
  340544: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
  340548: ee36 7b07    	vadd.f64	d7, d6, d7
  34054c: 2400         	movs	r4, #0x0
  34054e: eeb5 7bc0    	vcmpe.f64	d7, #0
  340552: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  340556: dd17         	ble	0x340588 <HawkDrone::updateSprite(float)+0x70> @ imm = #0x2e
  340558: 9b09         	ldr	r3, [sp, #0x24]
  34055a: 681b         	ldr	r3, [r3]
  34055c: f503 73fc    	add.w	r3, r3, #0x1f8
  340560: 681b         	ldr	r3, [r3]
  340562: 9a09         	ldr	r2, [sp, #0x24]
  340564: a90c         	add	r1, sp, #0x30
  340566: 4608         	mov	r0, r1
  340568: 4611         	mov	r1, r2
  34056a: 4798         	blx	r3
  34056c: 2401         	movs	r4, #0x1
  34056e: ed9d 6b0e    	vldr	d6, [sp, #56]
  340572: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
  340576: ee26 6b07    	vmul.f64	d6, d6, d7
  34057a: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
  34057e: ee36 7b07    	vadd.f64	d7, d6, d7
  340582: eef7 7bc7    	vcvt.f32.f64	s15, d7
  340586: e001         	b	0x34058c <HawkDrone::updateSprite(float)+0x74> @ imm = #0x2
  340588: eddf 7a6f    	vldr	s15, [pc, #444]         @ 0x340748 <HawkDrone::updateSprite(float)+0x230>
  34058c: 9b09         	ldr	r3, [sp, #0x24]
  34058e: edc3 7a79    	vstr	s15, [r3, #484]
  340592: 2c00         	cmp	r4, #0x0
  340594: 9b09         	ldr	r3, [sp, #0x24]
  340596: ed93 7a58    	vldr	s14, [r3, #352]
  34059a: eddd 7a08    	vldr	s15, [sp, #32]
  34059e: ee77 7a27    	vadd.f32	s15, s14, s15
  3405a2: 9b09         	ldr	r3, [sp, #0x24]
  3405a4: edc3 7a58    	vstr	s15, [r3, #352]
  3405a8: 9b09         	ldr	r3, [sp, #0x24]
  3405aa: ed93 7a7e    	vldr	s14, [r3, #504]
  3405ae: eddd 7a08    	vldr	s15, [sp, #32]
  3405b2: ee77 7a27    	vadd.f32	s15, s14, s15
  3405b6: 9b09         	ldr	r3, [sp, #0x24]
  3405b8: edc3 7a7e    	vstr	s15, [r3, #504]
  3405bc: 9b09         	ldr	r3, [sp, #0x24]
  3405be: f8d3 31b0    	ldr.w	r3, [r3, #0x1b0]
  3405c2: 681b         	ldr	r3, [r3]
  3405c4: 3338         	adds	r3, #0x38
  3405c6: 681b         	ldr	r3, [r3]
  3405c8: 9a09         	ldr	r2, [sp, #0x24]
  3405ca: f8d2 21b0    	ldr.w	r2, [r2, #0x1b0]
  3405ce: 9909         	ldr	r1, [sp, #0x24]
  3405d0: f891 11c4    	ldrb.w	r1, [r1, #0x1c4]
  3405d4: 2900         	cmp	r1, #0x0
  3405d6: d003         	beq	0x3405e0 <HawkDrone::updateSprite(float)+0xc8> @ imm = #0x6
  3405d8: 9909         	ldr	r1, [sp, #0x24]
  3405da: edd1 7a79    	vldr	s15, [r1, #484]
  3405de: e00a         	b	0x3405f6 <HawkDrone::updateSprite(float)+0xde> @ imm = #0x14
  3405e0: 9909         	ldr	r1, [sp, #0x24]
  3405e2: edd1 7a79    	vldr	s15, [r1, #484]
  3405e6: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3405ea: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
  3405ee: ee26 7b07    	vmul.f64	d7, d6, d7
  3405f2: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3405f6: 4610         	mov	r0, r2
  3405f8: ee17 1a90    	vmov	r1, s15
  3405fc: 4798         	blx	r3
  3405fe: 9b09         	ldr	r3, [sp, #0x24]
  340600: f893 31c4    	ldrb.w	r3, [r3, #0x1c4]
  340604: f083 0301    	eor	r3, r3, #0x1
  340608: b2da         	uxtb	r2, r3
  34060a: 9b09         	ldr	r3, [sp, #0x24]
  34060c: f883 21c4    	strb.w	r2, [r3, #0x1c4]
  340610: 9b09         	ldr	r3, [sp, #0x24]
  340612: edd3 7a79    	vldr	s15, [r3, #484]
  340616: eef5 7ac0    	vcmpe.f32	s15, #0
  34061a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  34061e: d811         	bhi	0x340644 <HawkDrone::updateSprite(float)+0x12c> @ imm = #0x22
  340620: 9b09         	ldr	r3, [sp, #0x24]
  340622: f04f 0200    	mov.w	r2, #0x0
  340626: f8c3 21e4    	str.w	r2, [r3, #0x1e4]
  34062a: 9b09         	ldr	r3, [sp, #0x24]
  34062c: f8d3 31b0    	ldr.w	r3, [r3, #0x1b0]
  340630: 681b         	ldr	r3, [r3]
  340632: 3390         	adds	r3, #0x90
  340634: 681b         	ldr	r3, [r3]
  340636: 9a09         	ldr	r2, [sp, #0x24]
  340638: f8d2 21b0    	ldr.w	r2, [r2, #0x1b0]
  34063c: 4610         	mov	r0, r2
  34063e: 2100         	movs	r1, #0x0
  340640: 4798         	blx	r3
  340642: e00b         	b	0x34065c <HawkDrone::updateSprite(float)+0x144> @ imm = #0x16
  340644: 9b09         	ldr	r3, [sp, #0x24]
  340646: f8d3 31b0    	ldr.w	r3, [r3, #0x1b0]
  34064a: 681b         	ldr	r3, [r3]
  34064c: 3390         	adds	r3, #0x90
  34064e: 681b         	ldr	r3, [r3]
  340650: 9a09         	ldr	r2, [sp, #0x24]
  340652: f8d2 21b0    	ldr.w	r2, [r2, #0x1b0]
  340656: 4610         	mov	r0, r2
  340658: 2101         	movs	r1, #0x1
  34065a: 4798         	blx	r3
  34065c: 9b09         	ldr	r3, [sp, #0x24]
  34065e: edd3 7a56    	vldr	s15, [r3, #344]
  340662: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  340666: ed9f 7b34    	vldr	d7, [pc, #208]          @ 0x340738 <HawkDrone::updateSprite(float)+0x220>
  34066a: eeb4 6bc7    	vcmpe.f64	d6, d7
  34066e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  340672: dd0b         	ble	0x34068c <HawkDrone::updateSprite(float)+0x174> @ imm = #0x16
  340674: 9b09         	ldr	r3, [sp, #0x24]
  340676: edd3 7a56    	vldr	s15, [r3, #344]
  34067a: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  34067e: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
  340682: ee26 7b07    	vmul.f64	d7, d6, d7
  340686: eef7 7bc7    	vcvt.f32.f64	s15, d7
  34068a: e001         	b	0x340690 <HawkDrone::updateSprite(float)+0x178> @ imm = #0x2
  34068c: eddf 7a2e    	vldr	s15, [pc, #184]         @ 0x340748 <HawkDrone::updateSprite(float)+0x230>
  340690: 9b09         	ldr	r3, [sp, #0x24]
  340692: edc3 7a56    	vstr	s15, [r3, #344]
  340696: 9b09         	ldr	r3, [sp, #0x24]
  340698: edd3 7a79    	vldr	s15, [r3, #484]
  34069c: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3406a0: 9b09         	ldr	r3, [sp, #0x24]
  3406a2: edd3 7a76    	vldr	s15, [r3, #472]
  3406a6: eeb7 5ae7    	vcvt.f64.f32	d5, s15
  3406aa: eddd 7a08    	vldr	s15, [sp, #32]
  3406ae: eeb7 4ae7    	vcvt.f64.f32	d4, s15
  3406b2: ed9f 7b23    	vldr	d7, [pc, #140]          @ 0x340740 <HawkDrone::updateSprite(float)+0x228>
  3406b6: ee24 7b07    	vmul.f64	d7, d4, d7
  3406ba: ee35 7b47    	vsub.f64	d7, d5, d7
  3406be: eeb4 6bc7    	vcmpe.f64	d6, d7
  3406c2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3406c6: d511         	bpl	0x3406ec <HawkDrone::updateSprite(float)+0x1d4> @ imm = #0x22
  3406c8: 9b09         	ldr	r3, [sp, #0x24]
  3406ca: edd3 7a76    	vldr	s15, [r3, #472]
  3406ce: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3406d2: eddd 7a08    	vldr	s15, [sp, #32]
  3406d6: eeb7 5ae7    	vcvt.f64.f32	d5, s15
  3406da: ed9f 7b19    	vldr	d7, [pc, #100]          @ 0x340740 <HawkDrone::updateSprite(float)+0x228>
  3406de: ee25 7b07    	vmul.f64	d7, d5, d7
  3406e2: ee36 7b47    	vsub.f64	d7, d6, d7
  3406e6: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3406ea: e002         	b	0x3406f2 <HawkDrone::updateSprite(float)+0x1da> @ imm = #0x4
  3406ec: 9b09         	ldr	r3, [sp, #0x24]
  3406ee: edd3 7a79    	vldr	s15, [r3, #484]
  3406f2: 9b09         	ldr	r3, [sp, #0x24]
  3406f4: edc3 7a76    	vstr	s15, [r3, #472]
  3406f8: 9b09         	ldr	r3, [sp, #0x24]
  3406fa: edd3 7a70    	vldr	s15, [r3, #448]
  3406fe: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  340702: eddd 7a08    	vldr	s15, [sp, #32]
  340706: eeb7 5ae7    	vcvt.f64.f32	d5, s15
  34070a: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
  34070e: ee25 7b07    	vmul.f64	d7, d5, d7
  340712: ee36 6b47    	vsub.f64	d6, d6, d7
  340716: 9b09         	ldr	r3, [sp, #0x24]
  340718: edd3 7a76    	vldr	s15, [r3, #472]
  34071c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  340720: eeb4 6bc7    	vcmpe.f64	d6, d7
  340724: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  340728: d510         	bpl	0x34074c <HawkDrone::updateSprite(float)+0x234> @ imm = #0x20
  34072a: 9b09         	ldr	r3, [sp, #0x24]
  34072c: edd3 7a76    	vldr	s15, [r3, #472]
  340730: e01d         	b	0x34076e <HawkDrone::updateSprite(float)+0x256> @ imm = #0x3a
  340732: bf00         	nop
  340734: f3af 8000    	nop.w
  340738: 999a         	ldr	r1, [sp, #0x268]
  34073a: 9999         	ldr	r1, [sp, #0x264]
  34073c: 9999         	ldr	r1, [sp, #0x264]
  34073e: 3fb9         	subs	r7, #0xb9
  340740: 3333         	adds	r3, #0x33
  340742: 3333         	adds	r3, #0x33
  340744: 3333         	adds	r3, #0x33
  340746: 3fc3         	subs	r7, #0xc3
  340748: 0000         	movs	r0, r0
  34074a: 0000         	movs	r0, r0
  34074c: 9b09         	ldr	r3, [sp, #0x24]
  34074e: edd3 7a70    	vldr	s15, [r3, #448]
  340752: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  340756: eddd 7a08    	vldr	s15, [sp, #32]
  34075a: eeb7 5ae7    	vcvt.f64.f32	d5, s15
  34075e: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
  340762: ee25 7b07    	vmul.f64	d7, d5, d7
  340766: ee36 7b47    	vsub.f64	d7, d6, d7
  34076a: eef7 7bc7    	vcvt.f32.f64	s15, d7
  34076e: 9b09         	ldr	r3, [sp, #0x24]
  340770: edc3 7a70    	vstr	s15, [r3, #448]
  340774: 9b09         	ldr	r3, [sp, #0x24]
  340776: f8d3 31bc    	ldr.w	r3, [r3, #0x1bc]
  34077a: 681b         	ldr	r3, [r3]
  34077c: f503 731a    	add.w	r3, r3, #0x268
  340780: 681b         	ldr	r3, [r3]
  340782: 9a09         	ldr	r2, [sp, #0x24]
  340784: f8d2 21bc    	ldr.w	r2, [r2, #0x1bc]
  340788: 9909         	ldr	r1, [sp, #0x24]
  34078a: ed91 7a70    	vldr	s14, [r1, #448]
  34078e: eef3 7a0b    	vmov.f32	s15, #2.700000e+01
  340792: ee67 7a27    	vmul.f32	s15, s14, s15
  340796: 4610         	mov	r0, r2
  340798: ee17 1a90    	vmov	r1, s15
  34079c: 4798         	blx	r3
  34079e: 9b09         	ldr	r3, [sp, #0x24]
  3407a0: f8d3 31bc    	ldr.w	r3, [r3, #0x1bc]
  3407a4: 681b         	ldr	r3, [r3]
  3407a6: f503 731e    	add.w	r3, r3, #0x278
  3407aa: 681b         	ldr	r3, [r3]
  3407ac: 9a09         	ldr	r2, [sp, #0x24]
  3407ae: f8d2 21bc    	ldr.w	r2, [r2, #0x1bc]
  3407b2: 9909         	ldr	r1, [sp, #0x24]
  3407b4: ed91 7a70    	vldr	s14, [r1, #448]
  3407b8: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  3407bc: ee67 7a27    	vmul.f32	s15, s14, s15
  3407c0: 4610         	mov	r0, r2
  3407c2: ee17 1a90    	vmov	r1, s15
  3407c6: 4798         	blx	r3
  3407c8: 9b09         	ldr	r3, [sp, #0x24]
  3407ca: f8d3 31bc    	ldr.w	r3, [r3, #0x1bc]
  3407ce: 681b         	ldr	r3, [r3]
  3407d0: f503 73de    	add.w	r3, r3, #0x1bc
  3407d4: 681c         	ldr	r4, [r3]
  3407d6: 9b09         	ldr	r3, [sp, #0x24]
  3407d8: f8d3 51bc    	ldr.w	r5, [r3, #0x1bc]
  3407dc: ab18         	add	r3, sp, #0x60
  3407de: 4618         	mov	r0, r3
  3407e0: 9909         	ldr	r1, [sp, #0x24]
  3407e2: f000 fc5b    	bl	0x34109c <HawkDrone::getThrustPoint()> @ imm = #0x8b6
  3407e6: ed9d 7b18    	vldr	d7, [sp, #96]
  3407ea: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3407ee: ab1c         	add	r3, sp, #0x70
  3407f0: 4618         	mov	r0, r3
  3407f2: 9909         	ldr	r1, [sp, #0x24]
  3407f4: f000 fc52    	bl	0x34109c <HawkDrone::getThrustPoint()> @ imm = #0x8a4
  3407f8: ed9d 7b1e    	vldr	d7, [sp, #120]
  3407fc: eef7 7bc7    	vcvt.f32.f64	s15, d7
  340800: ab14         	add	r3, sp, #0x50
  340802: 4618         	mov	r0, r3
  340804: ee18 1a10    	vmov	r1, s16
  340808: ee17 2a90    	vmov	r2, s15
  34080c: f252 fa70    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2524e0
  340810: ab14         	add	r3, sp, #0x50
  340812: 4628         	mov	r0, r5
  340814: 4619         	mov	r1, r3
  340816: 47a0         	blx	r4
  340818: 9b09         	ldr	r3, [sp, #0x24]
  34081a: 681b         	ldr	r3, [r3]
  34081c: 3334         	adds	r3, #0x34
  34081e: 681b         	ldr	r3, [r3]
  340820: 9a09         	ldr	r2, [sp, #0x24]
  340822: 4610         	mov	r0, r2
  340824: 4798         	blx	r3
  340826: ee07 0a90    	vmov	s15, r0
  34082a: eef5 7ac0    	vcmpe.f32	s15, #0
  34082e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  340832: bfd4         	ite	le
  340834: 2300         	movle	r3, #0x0
  340836: 2301         	movgt	r3, #0x1
  340838: b2da         	uxtb	r2, r3
  34083a: 9b09         	ldr	r3, [sp, #0x24]
  34083c: f883 21dc    	strb.w	r2, [r3, #0x1dc]
  340840: 9809         	ldr	r0, [sp, #0x24]
  340842: 9908         	ldr	r1, [sp, #0x20]
  340844: f7ff fb1c    	bl	0x33fe80 <HawkDrone::updateThrust(float)> @ imm = #-0x9c8
  340848: 9b09         	ldr	r3, [sp, #0x24]
  34084a: 681b         	ldr	r3, [r3]
  34084c: f503 73d6    	add.w	r3, r3, #0x1ac
  340850: 681b         	ldr	r3, [r3]
  340852: aa14         	add	r2, sp, #0x50
  340854: 4610         	mov	r0, r2
  340856: 9909         	ldr	r1, [sp, #0x24]
  340858: 4798         	blx	r3
  34085a: aa18         	add	r2, sp, #0x60
  34085c: ed9d 4b14    	vldr	d4, [sp, #80]
  340860: ed9d 5b16    	vldr	d5, [sp, #88]
  340864: 9b09         	ldr	r3, [sp, #0x24]
  340866: ed93 6b82    	vldr	d6, [r3, #520]
  34086a: ed93 7b84    	vldr	d7, [r3, #528]
  34086e: 4610         	mov	r0, r2
  340870: eeb0 0b44    	vmov.f64	d0, d4
  340874: eeb0 1b45    	vmov.f64	d1, d5
  340878: eeb0 2b46    	vmov.f64	d2, d6
  34087c: eeb0 3b47    	vmov.f64	d3, d7
  340880: f7fd fdd4    	bl	0x33e42c <non-virtual thunk to HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)+0x2a0> @ imm = #-0x2458
  340884: ab18         	add	r3, sp, #0x60
  340886: cb0f         	ldm	r3, {r0, r1, r2, r3}
  340888: f396 fc16    	bl	0x6d70b8 <cpvlength>    @ imm = #0x39682c
  34088c: ec41 0b16    	vmov	d6, r0, r1
  340890: eeb2 7b0e    	vmov.f64	d7, #1.500000e+01
  340894: eeb4 6bc7    	vcmpe.f64	d6, d7
  340898: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  34089c: bf54         	ite	pl
  34089e: 2300         	movpl	r3, #0x0
  3408a0: 2301         	movmi	r3, #0x1
  3408a2: b2db         	uxtb	r3, r3
  3408a4: 2b00         	cmp	r3, #0x0
  3408a6: d00a         	beq	0x3408be <HawkDrone::updateSprite(float)+0x3a6> @ imm = #0x14
  3408a8: 9b09         	ldr	r3, [sp, #0x24]
  3408aa: ed93 7a86    	vldr	s14, [r3, #536]
  3408ae: eddd 7a08    	vldr	s15, [sp, #32]
  3408b2: ee77 7a27    	vadd.f32	s15, s14, s15
  3408b6: 9b09         	ldr	r3, [sp, #0x24]
  3408b8: edc3 7a86    	vstr	s15, [r3, #536]
  3408bc: e004         	b	0x3408c8 <HawkDrone::updateSprite(float)+0x3b0> @ imm = #0x8
  3408be: 9b09         	ldr	r3, [sp, #0x24]
  3408c0: f04f 0200    	mov.w	r2, #0x0
  3408c4: f8c3 2218    	str.w	r2, [r3, #0x218]
  3408c8: 9b09         	ldr	r3, [sp, #0x24]
  3408ca: 681b         	ldr	r3, [r3]
  3408cc: f503 73d6    	add.w	r3, r3, #0x1ac
  3408d0: 681b         	ldr	r3, [r3]
  3408d2: 9c09         	ldr	r4, [sp, #0x24]
  3408d4: aa04         	add	r2, sp, #0x10
  3408d6: 4610         	mov	r0, r2
  3408d8: 9909         	ldr	r1, [sp, #0x24]
  3408da: 4798         	blx	r3
  3408dc: f504 7402    	add.w	r4, r4, #0x208
  3408e0: ab04         	add	r3, sp, #0x10
  3408e2: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3408e4: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3408e8: 9b09         	ldr	r3, [sp, #0x24]
  3408ea: f893 316c    	ldrb.w	r3, [r3, #0x16c]
  3408ee: 2b00         	cmp	r3, #0x0
  3408f0: d00a         	beq	0x340908 <HawkDrone::updateSprite(float)+0x3f0> @ imm = #0x14
  3408f2: 9b09         	ldr	r3, [sp, #0x24]
  3408f4: ed93 7a68    	vldr	s14, [r3, #416]
  3408f8: eddd 7a08    	vldr	s15, [sp, #32]
  3408fc: ee77 7a27    	vadd.f32	s15, s14, s15
  340900: 9b09         	ldr	r3, [sp, #0x24]
  340902: edc3 7a68    	vstr	s15, [r3, #416]
  340906: e004         	b	0x340912 <HawkDrone::updateSprite(float)+0x3fa> @ imm = #0x8
  340908: 9b09         	ldr	r3, [sp, #0x24]
  34090a: f04f 0200    	mov.w	r2, #0x0
  34090e: f8c3 21a0    	str.w	r2, [r3, #0x1a0]
  340912: 9b09         	ldr	r3, [sp, #0x24]
  340914: 681b         	ldr	r3, [r3]
  340916: 3350         	adds	r3, #0x50
  340918: 681b         	ldr	r3, [r3]
  34091a: 9a09         	ldr	r2, [sp, #0x24]
  34091c: 4610         	mov	r0, r2
  34091e: 4798         	blx	r3
  340920: 4603         	mov	r3, r0
  340922: edd3 7a00    	vldr	s15, [r3]
  340926: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  34092a: 9b09         	ldr	r3, [sp, #0x24]
  34092c: 681b         	ldr	r3, [r3]
  34092e: 3350         	adds	r3, #0x50
  340930: 681b         	ldr	r3, [r3]
  340932: 9a09         	ldr	r2, [sp, #0x24]
  340934: 4610         	mov	r0, r2
  340936: 4798         	blx	r3
  340938: 4603         	mov	r3, r0
  34093a: edd3 7a01    	vldr	s15, [r3, #4]
  34093e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  340942: ab10         	add	r3, sp, #0x40
  340944: 4618         	mov	r0, r3
  340946: eeb0 0b48    	vmov.f64	d0, d8
  34094a: eeb0 1b47    	vmov.f64	d1, d7
  34094e: f7fd fd2d    	bl	0x33e3ac <non-virtual thunk to HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)+0x220> @ imm = #-0x25a6
  340952: 9b09         	ldr	r3, [sp, #0x24]
  340954: ed93 7a68    	vldr	s14, [r3, #416]
  340958: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  34095c: eeb4 7ae7    	vcmpe.f32	s14, s15
  340960: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  340964: dd1a         	ble	0x34099c <HawkDrone::updateSprite(float)+0x484> @ imm = #0x34
  340966: 9b09         	ldr	r3, [sp, #0x24]
  340968: f893 316c    	ldrb.w	r3, [r3, #0x16c]
  34096c: 2b00         	cmp	r3, #0x0
  34096e: d015         	beq	0x34099c <HawkDrone::updateSprite(float)+0x484> @ imm = #0x2a
  340970: ab1c         	add	r3, sp, #0x70
  340972: 4618         	mov	r0, r3
  340974: ed9f 0b22    	vldr	d0, [pc, #136]          @ 0x340a00 <HawkDrone::updateSprite(float)+0x4e8>
  340978: ed9f 1b21    	vldr	d1, [pc, #132]          @ 0x340a00 <HawkDrone::updateSprite(float)+0x4e8>
  34097c: f7fd fd16    	bl	0x33e3ac <non-virtual thunk to HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)+0x220> @ imm = #-0x25d4
  340980: 466c         	mov	r4, sp
  340982: ab1c         	add	r3, sp, #0x70
  340984: cb0f         	ldm	r3, {r0, r1, r2, r3}
  340986: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  34098a: ab10         	add	r3, sp, #0x40
  34098c: cb0f         	ldm	r3, {r0, r1, r2, r3}
  34098e: f7fe f857    	bl	0x33ea40 <non-virtual thunk to HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)+0x8b4> @ imm = #-0x1f52
  340992: 4603         	mov	r3, r0
  340994: 2b00         	cmp	r3, #0x0
  340996: d001         	beq	0x34099c <HawkDrone::updateSprite(float)+0x484> @ imm = #0x2
  340998: 2301         	movs	r3, #0x1
  34099a: e000         	b	0x34099e <HawkDrone::updateSprite(float)+0x486> @ imm = #0x0
  34099c: 2300         	movs	r3, #0x0
  34099e: f88d 302f    	strb.w	r3, [sp, #0x2f]
  3409a2: 9b09         	ldr	r3, [sp, #0x24]
  3409a4: 681b         	ldr	r3, [r3]
  3409a6: 3390         	adds	r3, #0x90
  3409a8: 681b         	ldr	r3, [r3]
  3409aa: 9909         	ldr	r1, [sp, #0x24]
  3409ac: f89d 202f    	ldrb.w	r2, [sp, #0x2f]
  3409b0: 4608         	mov	r0, r1
  3409b2: 4611         	mov	r1, r2
  3409b4: 4798         	blx	r3
  3409b6: 9b09         	ldr	r3, [sp, #0x24]
  3409b8: f8d3 31b0    	ldr.w	r3, [r3, #0x1b0]
  3409bc: 681b         	ldr	r3, [r3]
  3409be: 3390         	adds	r3, #0x90
  3409c0: 681b         	ldr	r3, [r3]
  3409c2: 9a09         	ldr	r2, [sp, #0x24]
  3409c4: f8d2 11b0    	ldr.w	r1, [r2, #0x1b0]
  3409c8: f89d 202f    	ldrb.w	r2, [sp, #0x2f]
  3409cc: 4608         	mov	r0, r1
  3409ce: 4611         	mov	r1, r2
  3409d0: 4798         	blx	r3
  3409d2: 9b09         	ldr	r3, [sp, #0x24]
  3409d4: f8d3 31bc    	ldr.w	r3, [r3, #0x1bc]
  3409d8: 681b         	ldr	r3, [r3]
  3409da: 3390         	adds	r3, #0x90
  3409dc: 681b         	ldr	r3, [r3]
  3409de: 9a09         	ldr	r2, [sp, #0x24]
  3409e0: f8d2 21bc    	ldr.w	r2, [r2, #0x1bc]
  3409e4: 4611         	mov	r1, r2
  3409e6: f89d 202f    	ldrb.w	r2, [sp, #0x2f]
  3409ea: 4608         	mov	r0, r1
  3409ec: 4611         	mov	r1, r2
  3409ee: 4798         	blx	r3
  3409f0: e002         	b	0x3409f8 <HawkDrone::updateSprite(float)+0x4e0> @ imm = #0x4
  3409f2: 2c00         	cmp	r4, #0x0
  3409f4: f047 f35a    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4476b4
  3409f8: b021         	add	sp, #0x84
  3409fa: ecbd 8b02    	vpop	{d8}
  3409fe: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3409ff); words below are literal-pool data ---
  340a00: 0000         	movs	r0, r0
  340a02: 0000         	movs	r0, r0
  340a04: 0000         	movs	r0, r0
  340a06: 4059         	eors	r1, r3

// ==== HawkDrone::updateStep
//      file offset 0x340a08 (= ELF address; Ghidra 0x350a08), 808 bytes, Thumb-2
  340a08: b510         	push	{r4, lr}
  340a0a: b092         	sub	sp, #0x48
  340a0c: 9007         	str	r0, [sp, #0x1c]
  340a0e: 9106         	str	r1, [sp, #0x18]
  340a10: 9b07         	ldr	r3, [sp, #0x1c]
  340a12: f8d3 31c8    	ldr.w	r3, [r3, #0x1c8]
  340a16: f8d3 3090    	ldr.w	r3, [r3, #0x90]
  340a1a: 2b00         	cmp	r3, #0x0
  340a1c: d10b         	bne	0x340a36 <HawkDrone::updateStep(float)+0x2e> @ imm = #0x16
  340a1e: 9b07         	ldr	r3, [sp, #0x1c]
  340a20: f8d3 31c8    	ldr.w	r3, [r3, #0x1c8]
  340a24: 9a07         	ldr	r2, [sp, #0x1c]
  340a26: f8c3 2090    	str.w	r2, [r3, #0x90]
  340a2a: 9b07         	ldr	r3, [sp, #0x1c]
  340a2c: f8d3 31c8    	ldr.w	r3, [r3, #0x1c8]
  340a30: 4abe         	ldr	r2, [pc, #0x2f8]        @ 0x340d2c <HawkDrone::updateStep(float)+0x324>
  340a32: 447a         	add	r2, pc
  340a34: 601a         	str	r2, [r3]
  340a36: 9807         	ldr	r0, [sp, #0x1c]
  340a38: 9906         	ldr	r1, [sp, #0x18]
  340a3a: f7ff fd6d    	bl	0x340518 <HawkDrone::updateSprite(float)> @ imm = #-0x526
  340a3e: 9b07         	ldr	r3, [sp, #0x1c]
  340a40: f8d3 31c8    	ldr.w	r3, [r3, #0x1c8]
  340a44: 9a07         	ldr	r2, [sp, #0x1c]
  340a46: f8d2 21c8    	ldr.w	r2, [r2, #0x1c8]
  340a4a: ed92 6b16    	vldr	d6, [r2, #88]
  340a4e: ed9f 7bb2    	vldr	d7, [pc, #712]          @ 0x340d18 <HawkDrone::updateStep(float)+0x310>
  340a52: ee26 7b07    	vmul.f64	d7, d6, d7
  340a56: 4618         	mov	r0, r3
  340a58: ec53 2b17    	vmov	r2, r3, d7
  340a5c: f392 fb99    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x392732
  340a60: 9b07         	ldr	r3, [sp, #0x1c]
  340a62: f8d3 31c8    	ldr.w	r3, [r3, #0x1c8]
  340a66: ed93 6b0c    	vldr	d6, [r3, #48]
  340a6a: ed9f 7bad    	vldr	d7, [pc, #692]          @ 0x340d20 <HawkDrone::updateStep(float)+0x318>
  340a6e: eeb4 6bc7    	vcmpe.f64	d6, d7
  340a72: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  340a76: d503         	bpl	0x340a80 <HawkDrone::updateStep(float)+0x78> @ imm = #0x6
  340a78: 9b07         	ldr	r3, [sp, #0x1c]
  340a7a: 2200         	movs	r2, #0x0
  340a7c: f8c3 21ac    	str.w	r2, [r3, #0x1ac]
  340a80: 9b07         	ldr	r3, [sp, #0x1c]
  340a82: 681b         	ldr	r3, [r3]
  340a84: f503 7303    	add.w	r3, r3, #0x20c
  340a88: 681b         	ldr	r3, [r3]
  340a8a: 9807         	ldr	r0, [sp, #0x1c]
  340a8c: 4798         	blx	r3
  340a8e: 4603         	mov	r3, r0
  340a90: 9309         	str	r3, [sp, #0x24]
  340a92: 9b09         	ldr	r3, [sp, #0x24]
  340a94: 2b00         	cmp	r3, #0x0
  340a96: d015         	beq	0x340ac4 <HawkDrone::updateStep(float)+0xbc> @ imm = #0x2a
  340a98: 9b09         	ldr	r3, [sp, #0x24]
  340a9a: 681b         	ldr	r3, [r3]
  340a9c: f503 73da    	add.w	r3, r3, #0x1b4
  340aa0: 681b         	ldr	r3, [r3]
  340aa2: 9a09         	ldr	r2, [sp, #0x24]
  340aa4: 4610         	mov	r0, r2
  340aa6: 9906         	ldr	r1, [sp, #0x18]
  340aa8: 4798         	blx	r3
  340aaa: 9b07         	ldr	r3, [sp, #0x1c]
  340aac: f893 319c    	ldrb.w	r3, [r3, #0x19c]
  340ab0: 2b00         	cmp	r3, #0x0
  340ab2: d007         	beq	0x340ac4 <HawkDrone::updateStep(float)+0xbc> @ imm = #0xe
  340ab4: 9b09         	ldr	r3, [sp, #0x24]
  340ab6: 681b         	ldr	r3, [r3]
  340ab8: f503 7317    	add.w	r3, r3, #0x25c
  340abc: 681b         	ldr	r3, [r3]
  340abe: 9809         	ldr	r0, [sp, #0x24]
  340ac0: 9906         	ldr	r1, [sp, #0x18]
  340ac2: 4798         	blx	r3
  340ac4: 9b07         	ldr	r3, [sp, #0x1c]
  340ac6: 2200         	movs	r2, #0x0
  340ac8: f883 219c    	strb.w	r2, [r3, #0x19c]
  340acc: 9b07         	ldr	r3, [sp, #0x1c]
  340ace: f8d3 315c    	ldr.w	r3, [r3, #0x15c]
  340ad2: 2b03         	cmp	r3, #0x3
  340ad4: d006         	beq	0x340ae4 <HawkDrone::updateStep(float)+0xdc> @ imm = #0xc
  340ad6: 2b04         	cmp	r3, #0x4
  340ad8: f000 810a    	beq.w	0x340cf0 <HawkDrone::updateStep(float)+0x2e8> @ imm = #0x214
  340adc: 2b02         	cmp	r3, #0x2
  340ade: f000 80a0    	beq.w	0x340c22 <HawkDrone::updateStep(float)+0x21a> @ imm = #0x140
  340ae2: e112         	b	0x340d0a <HawkDrone::updateStep(float)+0x302> @ imm = #0x224
  340ae4: 9b07         	ldr	r3, [sp, #0x1c]
  340ae6: ed93 7a7e    	vldr	s14, [r3, #504]
  340aea: eddd 7a06    	vldr	s15, [sp, #24]
  340aee: ee77 7a27    	vadd.f32	s15, s14, s15
  340af2: 9b07         	ldr	r3, [sp, #0x1c]
  340af4: edc3 7a7e    	vstr	s15, [r3, #504]
  340af8: 9b07         	ldr	r3, [sp, #0x1c]
  340afa: ed93 7a7e    	vldr	s14, [r3, #504]
  340afe: 9b07         	ldr	r3, [sp, #0x1c]
  340b00: edd3 7a7d    	vldr	s15, [r3, #500]
  340b04: eeb4 7ae7    	vcmpe.f32	s14, s15
  340b08: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  340b0c: dd52         	ble	0x340bb4 <HawkDrone::updateStep(float)+0x1ac> @ imm = #0xa4
  340b0e: 9b07         	ldr	r3, [sp, #0x1c]
  340b10: 2201         	movs	r2, #0x1
  340b12: f883 219c    	strb.w	r2, [r3, #0x19c]
  340b16: 9b07         	ldr	r3, [sp, #0x1c]
  340b18: ed93 7a7e    	vldr	s14, [r3, #504]
  340b1c: 9b07         	ldr	r3, [sp, #0x1c]
  340b1e: edd3 6a7f    	vldr	s13, [r3, #508]
  340b22: 9b07         	ldr	r3, [sp, #0x1c]
  340b24: edd3 7a7d    	vldr	s15, [r3, #500]
  340b28: ee76 7aa7    	vadd.f32	s15, s13, s15
  340b2c: eeb4 7ae7    	vcmpe.f32	s14, s15
  340b30: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  340b34: dd3e         	ble	0x340bb4 <HawkDrone::updateStep(float)+0x1ac> @ imm = #0x7c
  340b36: 9b07         	ldr	r3, [sp, #0x1c]
  340b38: 2200         	movs	r2, #0x0
  340b3a: f883 219c    	strb.w	r2, [r3, #0x19c]
  340b3e: 9b07         	ldr	r3, [sp, #0x1c]
  340b40: f04f 0200    	mov.w	r2, #0x0
  340b44: f8c3 21f8    	str.w	r2, [r3, #0x1f8]
  340b48: f7fd fbaa    	bl	0x33e2a0 <non-virtual thunk to HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)+0x114> @ imm = #-0x28ac
  340b4c: 4603         	mov	r3, r0
  340b4e: ee07 3a90    	vmov	s15, r3
  340b52: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  340b56: eddf 7a74    	vldr	s15, [pc, #464]         @ 0x340d28 <HawkDrone::updateStep(float)+0x320>
  340b5a: ee87 7a27    	vdiv.f32	s14, s14, s15
  340b5e: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  340b62: ee37 7a67    	vsub.f32	s14, s14, s15
  340b66: eef2 7a00    	vmov.f32	s15, #8.000000e+00
  340b6a: ee67 7a27    	vmul.f32	s15, s14, s15
  340b6e: ee17 0a90    	vmov	r0, s15
  340b72: f7fe fca3    	bl	0x33f4bc <std::fabs(float)> @ imm = #-0x16ba
  340b76: 4602         	mov	r2, r0
  340b78: 9b07         	ldr	r3, [sp, #0x1c]
  340b7a: f8c3 21f4    	str.w	r2, [r3, #0x1f4]
  340b7e: f7fd fb8f    	bl	0x33e2a0 <non-virtual thunk to HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)+0x114> @ imm = #-0x28e2
  340b82: 4603         	mov	r3, r0
  340b84: ee07 3a90    	vmov	s15, r3
  340b88: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  340b8c: eddf 7a66    	vldr	s15, [pc, #408]         @ 0x340d28 <HawkDrone::updateStep(float)+0x320>
  340b90: ee87 7a27    	vdiv.f32	s14, s14, s15
  340b94: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  340b98: ee37 7a67    	vsub.f32	s14, s14, s15
  340b9c: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  340ba0: ee67 7a27    	vmul.f32	s15, s14, s15
  340ba4: ee17 0a90    	vmov	r0, s15
  340ba8: f7fe fc88    	bl	0x33f4bc <std::fabs(float)> @ imm = #-0x16f0
  340bac: 4602         	mov	r2, r0
  340bae: 9b07         	ldr	r3, [sp, #0x1c]
  340bb0: f8c3 21fc    	str.w	r2, [r3, #0x1fc]
  340bb4: 9b07         	ldr	r3, [sp, #0x1c]
  340bb6: 466a         	mov	r2, sp
  340bb8: f503 718c    	add.w	r1, r3, #0x118
  340bbc: c903         	ldm	r1, {r0, r1}
  340bbe: e882 0003    	stm.w	r2, {r0, r1}
  340bc2: f503 7388    	add.w	r3, r3, #0x110
  340bc6: cb0c         	ldm	r3, {r2, r3}
  340bc8: 9807         	ldr	r0, [sp, #0x1c]
  340bca: f7ff f8ed    	bl	0x33fda8 <HawkDrone::updateMoveTo(cpVect)> @ imm = #-0xe26
  340bce: 9b07         	ldr	r3, [sp, #0x1c]
  340bd0: 681b         	ldr	r3, [r3]
  340bd2: f503 73d6    	add.w	r3, r3, #0x1ac
  340bd6: 681b         	ldr	r3, [r3]
  340bd8: aa0a         	add	r2, sp, #0x28
  340bda: 4610         	mov	r0, r2
  340bdc: 9907         	ldr	r1, [sp, #0x1c]
  340bde: 4798         	blx	r3
  340be0: aa0e         	add	r2, sp, #0x38
  340be2: 9b07         	ldr	r3, [sp, #0x1c]
  340be4: ed93 4b44    	vldr	d4, [r3, #272]
  340be8: ed93 5b46    	vldr	d5, [r3, #280]
  340bec: ed9d 6b0a    	vldr	d6, [sp, #40]
  340bf0: ed9d 7b0c    	vldr	d7, [sp, #48]
  340bf4: 4610         	mov	r0, r2
  340bf6: eeb0 0b44    	vmov.f64	d0, d4
  340bfa: eeb0 1b45    	vmov.f64	d1, d5
  340bfe: eeb0 2b46    	vmov.f64	d2, d6
  340c02: eeb0 3b47    	vmov.f64	d3, d7
  340c06: f7fd fc11    	bl	0x33e42c <non-virtual thunk to HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)+0x2a0> @ imm = #-0x27de
  340c0a: 466b         	mov	r3, sp
  340c0c: aa10         	add	r2, sp, #0x40
  340c0e: e892 0003    	ldm.w	r2, {r0, r1}
  340c12: e883 0003    	stm.w	r3, {r0, r1}
  340c16: ab0e         	add	r3, sp, #0x38
  340c18: cb0c         	ldm	r3, {r2, r3}
  340c1a: 9807         	ldr	r0, [sp, #0x1c]
  340c1c: f7ff fb4c    	bl	0x3402b8 <HawkDrone::updateAim(cpVect)> @ imm = #-0x968
  340c20: e073         	b	0x340d0a <HawkDrone::updateStep(float)+0x302> @ imm = #0xe6
  340c22: 9b07         	ldr	r3, [sp, #0x1c]
  340c24: ed93 7a59    	vldr	s14, [r3, #356]
  340c28: eddd 7a06    	vldr	s15, [sp, #24]
  340c2c: ee77 7a27    	vadd.f32	s15, s14, s15
  340c30: 9b07         	ldr	r3, [sp, #0x1c]
  340c32: edc3 7a59    	vstr	s15, [r3, #356]
  340c36: 9b07         	ldr	r3, [sp, #0x1c]
  340c38: ed93 7a59    	vldr	s14, [r3, #356]
  340c3c: 9b07         	ldr	r3, [sp, #0x1c]
  340c3e: edd3 7a5a    	vldr	s15, [r3, #360]
  340c42: eeb4 7ae7    	vcmpe.f32	s14, s15
  340c46: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  340c4a: dc09         	bgt	0x340c60 <HawkDrone::updateStep(float)+0x258> @ imm = #0x12
  340c4c: 9b07         	ldr	r3, [sp, #0x1c]
  340c4e: ed93 7a86    	vldr	s14, [r3, #536]
  340c52: eef0 7a08    	vmov.f32	s15, #3.000000e+00
  340c56: eeb4 7ae7    	vcmpe.f32	s14, s15
  340c5a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  340c5e: dd39         	ble	0x340cd4 <HawkDrone::updateStep(float)+0x2cc> @ imm = #0x72
  340c60: f7fd fb1e    	bl	0x33e2a0 <non-virtual thunk to HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)+0x114> @ imm = #-0x29c4
  340c64: 4603         	mov	r3, r0
  340c66: ee07 3a90    	vmov	s15, r3
  340c6a: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  340c6e: eddf 7a2e    	vldr	s15, [pc, #184]         @ 0x340d28 <HawkDrone::updateStep(float)+0x320>
  340c72: ee87 7a27    	vdiv.f32	s14, s14, s15
  340c76: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  340c7a: ee37 7a67    	vsub.f32	s14, s14, s15
  340c7e: eef2 7a0e    	vmov.f32	s15, #1.500000e+01
  340c82: ee67 7a27    	vmul.f32	s15, s14, s15
  340c86: ee17 0a90    	vmov	r0, s15
  340c8a: f7fe fc0b    	bl	0x33f4a4 <std::abs(float)> @ imm = #-0x17ea
  340c8e: ee07 0a10    	vmov	s14, r0
  340c92: eef2 7a0e    	vmov.f32	s15, #1.500000e+01
  340c96: ee77 7a27    	vadd.f32	s15, s14, s15
  340c9a: 9b07         	ldr	r3, [sp, #0x1c]
  340c9c: edc3 7a5a    	vstr	s15, [r3, #360]
  340ca0: 9b07         	ldr	r3, [sp, #0x1c]
  340ca2: f04f 0200    	mov.w	r2, #0x0
  340ca6: f8c3 2164    	str.w	r2, [r3, #0x164]
  340caa: 9b07         	ldr	r3, [sp, #0x1c]
  340cac: 681b         	ldr	r3, [r3]
  340cae: f503 7308    	add.w	r3, r3, #0x220
  340cb2: 681b         	ldr	r3, [r3]
  340cb4: 9c07         	ldr	r4, [sp, #0x1c]
  340cb6: aa02         	add	r2, sp, #0x8
  340cb8: 4610         	mov	r0, r2
  340cba: 9907         	ldr	r1, [sp, #0x1c]
  340cbc: 4798         	blx	r3
  340cbe: f504 7490    	add.w	r4, r4, #0x120
  340cc2: ab02         	add	r3, sp, #0x8
  340cc4: cb0f         	ldm	r3, {r0, r1, r2, r3}
  340cc6: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  340cca: 9b07         	ldr	r3, [sp, #0x1c]
  340ccc: f04f 0200    	mov.w	r2, #0x0
  340cd0: f8c3 2218    	str.w	r2, [r3, #0x218]
  340cd4: 9b07         	ldr	r3, [sp, #0x1c]
  340cd6: 466a         	mov	r2, sp
  340cd8: f503 7194    	add.w	r1, r3, #0x128
  340cdc: c903         	ldm	r1, {r0, r1}
  340cde: e882 0003    	stm.w	r2, {r0, r1}
  340ce2: f503 7390    	add.w	r3, r3, #0x120
  340ce6: cb0c         	ldm	r3, {r2, r3}
  340ce8: 9807         	ldr	r0, [sp, #0x1c]
  340cea: f7ff f85d    	bl	0x33fda8 <HawkDrone::updateMoveTo(cpVect)> @ imm = #-0xf46
  340cee: e00c         	b	0x340d0a <HawkDrone::updateStep(float)+0x302> @ imm = #0x18
  340cf0: 9b07         	ldr	r3, [sp, #0x1c]
  340cf2: f8d3 31b8    	ldr.w	r3, [r3, #0x1b8]
  340cf6: 681b         	ldr	r3, [r3]
  340cf8: 3390         	adds	r3, #0x90
  340cfa: 681b         	ldr	r3, [r3]
  340cfc: 9a07         	ldr	r2, [sp, #0x1c]
  340cfe: f8d2 21b8    	ldr.w	r2, [r2, #0x1b8]
  340d02: 4610         	mov	r0, r2
  340d04: 2100         	movs	r1, #0x0
  340d06: 4798         	blx	r3
  340d08: bf00         	nop
  340d0a: 9b07         	ldr	r3, [sp, #0x1c]
  340d0c: 2200         	movs	r2, #0x0
  340d0e: f883 20e6    	strb.w	r2, [r3, #0xe6]
  340d12: b012         	add	sp, #0x48
  340d14: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x340d15); words below are literal-pool data ---
  340d16: bf00         	nop
  340d18: 6666         	str	r6, [r4, #0x64]
  340d1a: 6666         	str	r6, [r4, #0x64]
  340d1c: 6666         	str	r6, [r4, #0x64]
  340d1e: 3fee         	subs	r7, #0xee
  340d20: 0000         	movs	r0, r0
  340d22: 0000         	movs	r0, r0
  340d24: 4000         	ands	r0, r0
  340d26: c07f         	stm	r0!, {r0, r1, r2, r3, r4, r5, r6}
  340d28: 0000         	movs	r0, r0
  340d2a: 4e80         	ldr	r6, [pc, #0x200]        @ 0x340f2c <HawkDrone::updateRemoteStep(float)+0x18c>
  340d2c: eacb ffff    	<unknown>

// ==== HawkDrone::updateBody
//      file offset 0x340d30 (= ELF address; Ghidra 0x350d30), 112 bytes, Thumb-2
  340d30: b082         	sub	sp, #0x8
  340d32: b530         	push	{r4, r5, lr}
  340d34: b085         	sub	sp, #0x14
  340d36: 9001         	str	r0, [sp, #0x4]
  340d38: a908         	add	r1, sp, #0x20
  340d3a: e881 000c    	stm.w	r1, {r2, r3}
  340d3e: 9b01         	ldr	r3, [sp, #0x4]
  340d40: 681b         	ldr	r3, [r3]
  340d42: 334c         	adds	r3, #0x4c
  340d44: 681c         	ldr	r4, [r3]
  340d46: 9d01         	ldr	r5, [sp, #0x4]
  340d48: ed9d 7b08    	vldr	d7, [sp, #32]
  340d4c: eef7 6bc7    	vcvt.f32.f64	s13, d7
  340d50: ed9d 7b0a    	vldr	d7, [sp, #40]
  340d54: eef7 7bc7    	vcvt.f32.f64	s15, d7
  340d58: ab02         	add	r3, sp, #0x8
  340d5a: 4618         	mov	r0, r3
  340d5c: ee16 1a90    	vmov	r1, s13
  340d60: ee17 2a90    	vmov	r2, s15
  340d64: f251 ffc4    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x251f88
  340d68: ab02         	add	r3, sp, #0x8
  340d6a: 4628         	mov	r0, r5
  340d6c: 4619         	mov	r1, r3
  340d6e: 47a0         	blx	r4
  340d70: 9b01         	ldr	r3, [sp, #0x4]
  340d72: 681b         	ldr	r3, [r3]
  340d74: 3398         	adds	r3, #0x98
  340d76: 681b         	ldr	r3, [r3]
  340d78: 9a01         	ldr	r2, [sp, #0x4]
  340d7a: eddd 7a0c    	vldr	s15, [sp, #48]
  340d7e: eeb1 7a67    	vneg.f32	s14, s15
  340d82: eddf 7a06    	vldr	s15, [pc, #24]          @ 0x340d9c <HawkDrone::updateBody(cpVect, float)+0x6c>
  340d86: ee67 7a27    	vmul.f32	s15, s14, s15
  340d8a: 4610         	mov	r0, r2
  340d8c: ee17 1a90    	vmov	r1, s15
  340d90: 4798         	blx	r3
  340d92: b005         	add	sp, #0x14
  340d94: e8bd 4030    	pop.w	{r4, r5, lr}
  340d98: b002         	add	sp, #0x8
  340d9a: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x340d9b); words below are literal-pool data ---
  340d9c: 2ee1         	cmp	r6, #0xe1
  340d9e: 4265         	rsbs	r5, r4, #0

// ==== HawkDrone::updateRemoteStep
//      file offset 0x340da0 (= ELF address; Ghidra 0x350da0), 712 bytes, Thumb-2
  340da0: b500         	push	{lr}
  340da2: ed2d 8b02    	vpush	{d8}
  340da6: b0b3         	sub	sp, #0xcc
  340da8: 9005         	str	r0, [sp, #0x14]
  340daa: 9104         	str	r1, [sp, #0x10]
  340dac: 9b05         	ldr	r3, [sp, #0x14]
  340dae: f8d3 31c8    	ldr.w	r3, [r3, #0x1c8]
  340db2: f8d3 3090    	ldr.w	r3, [r3, #0x90]
  340db6: 2b00         	cmp	r3, #0x0
  340db8: d00b         	beq	0x340dd2 <HawkDrone::updateRemoteStep(float)+0x32> @ imm = #0x16
  340dba: 9b05         	ldr	r3, [sp, #0x14]
  340dbc: f8d3 31c8    	ldr.w	r3, [r3, #0x1c8]
  340dc0: 2200         	movs	r2, #0x0
  340dc2: f8c3 2090    	str.w	r2, [r3, #0x90]
  340dc6: 9b05         	ldr	r3, [sp, #0x14]
  340dc8: f8d3 31c8    	ldr.w	r3, [r3, #0x1c8]
  340dcc: 4aa5         	ldr	r2, [pc, #0x294]        @ 0x341064 <HawkDrone::updateRemoteStep(float)+0x2c4>
  340dce: 447a         	add	r2, pc
  340dd0: 601a         	str	r2, [r3]
  340dd2: 9b05         	ldr	r3, [sp, #0x14]
  340dd4: 681b         	ldr	r3, [r3]
  340dd6: f503 73d6    	add.w	r3, r3, #0x1ac
  340dda: 681b         	ldr	r3, [r3]
  340ddc: aa1e         	add	r2, sp, #0x78
  340dde: 4610         	mov	r0, r2
  340de0: 9905         	ldr	r1, [sp, #0x14]
  340de2: 4798         	blx	r3
  340de4: aa22         	add	r2, sp, #0x88
  340de6: 9b05         	ldr	r3, [sp, #0x14]
  340de8: ed93 4b5c    	vldr	d4, [r3, #368]
  340dec: ed93 5b5e    	vldr	d5, [r3, #376]
  340df0: ed9d 6b1e    	vldr	d6, [sp, #120]
  340df4: ed9d 7b20    	vldr	d7, [sp, #128]
  340df8: 4610         	mov	r0, r2
  340dfa: eeb0 0b44    	vmov.f64	d0, d4
  340dfe: eeb0 1b45    	vmov.f64	d1, d5
  340e02: eeb0 2b46    	vmov.f64	d2, d6
  340e06: eeb0 3b47    	vmov.f64	d3, d7
  340e0a: f7fd fb0f    	bl	0x33e42c <non-virtual thunk to HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)+0x2a0> @ imm = #-0x29e2
  340e0e: ed9d 7a04    	vldr	s14, [sp, #16]
  340e12: eef2 7a0e    	vmov.f32	s15, #1.500000e+01
  340e16: ee67 7a27    	vmul.f32	s15, s14, s15
  340e1a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  340e1e: ed9f 6b88    	vldr	d6, [pc, #544]          @ 0x341040 <HawkDrone::updateRemoteStep(float)+0x2a0>
  340e22: ee36 6b47    	vsub.f64	d6, d6, d7
  340e26: ed9f 7b88    	vldr	d7, [pc, #544]          @ 0x341048 <HawkDrone::updateRemoteStep(float)+0x2a8>
  340e2a: eeb4 6bc7    	vcmpe.f64	d6, d7
  340e2e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  340e32: d502         	bpl	0x340e3a <HawkDrone::updateRemoteStep(float)+0x9a> @ imm = #0x4
  340e34: ed9f 7b84    	vldr	d7, [pc, #528]          @ 0x341048 <HawkDrone::updateRemoteStep(float)+0x2a8>
  340e38: e00b         	b	0x340e52 <HawkDrone::updateRemoteStep(float)+0xb2> @ imm = #0x16
  340e3a: ed9d 7a04    	vldr	s14, [sp, #16]
  340e3e: eef2 7a0e    	vmov.f32	s15, #1.500000e+01
  340e42: ee67 7a27    	vmul.f32	s15, s14, s15
  340e46: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  340e4a: ed9f 6b7d    	vldr	d6, [pc, #500]          @ 0x341040 <HawkDrone::updateRemoteStep(float)+0x2a0>
  340e4e: ee36 7b47    	vsub.f64	d7, d6, d7
  340e52: ab0a         	add	r3, sp, #0x28
  340e54: ed9d 5b22    	vldr	d5, [sp, #136]
  340e58: ed9d 6b24    	vldr	d6, [sp, #144]
  340e5c: 4618         	mov	r0, r3
  340e5e: eeb0 0b45    	vmov.f64	d0, d5
  340e62: eeb0 1b46    	vmov.f64	d1, d6
  340e66: eeb0 2b47    	vmov.f64	d2, d7
  340e6a: f7fd fb0b    	bl	0x33e484 <non-virtual thunk to HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)+0x2f8> @ imm = #-0x29ea
  340e6e: 9b05         	ldr	r3, [sp, #0x14]
  340e70: 681b         	ldr	r3, [r3]
  340e72: f503 73d6    	add.w	r3, r3, #0x1ac
  340e76: 681b         	ldr	r3, [r3]
  340e78: aa26         	add	r2, sp, #0x98
  340e7a: 4610         	mov	r0, r2
  340e7c: 9905         	ldr	r1, [sp, #0x14]
  340e7e: 4798         	blx	r3
  340e80: ab0e         	add	r3, sp, #0x38
  340e82: ed9d 4b26    	vldr	d4, [sp, #152]
  340e86: ed9d 5b28    	vldr	d5, [sp, #160]
  340e8a: ed9d 6b0a    	vldr	d6, [sp, #40]
  340e8e: ed9d 7b0c    	vldr	d7, [sp, #48]
  340e92: 4618         	mov	r0, r3
  340e94: eeb0 0b44    	vmov.f64	d0, d4
  340e98: eeb0 1b45    	vmov.f64	d1, d5
  340e9c: eeb0 2b46    	vmov.f64	d2, d6
  340ea0: eeb0 3b47    	vmov.f64	d3, d7
  340ea4: f7fd fa96    	bl	0x33e3d4 <non-virtual thunk to HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)+0x248> @ imm = #-0x2ad4
  340ea8: 9b05         	ldr	r3, [sp, #0x14]
  340eaa: 681b         	ldr	r3, [r3]
  340eac: f503 73fa    	add.w	r3, r3, #0x1f4
  340eb0: 681b         	ldr	r3, [r3]
  340eb2: 9805         	ldr	r0, [sp, #0x14]
  340eb4: 4798         	blx	r3
  340eb6: 4603         	mov	r3, r0
  340eb8: 4618         	mov	r0, r3
  340eba: f7e8 fadf    	bl	0x32947c <std::cos(float)> @ imm = #-0x17a42
  340ebe: ee07 0a90    	vmov	s15, r0
  340ec2: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  340ec6: 9b05         	ldr	r3, [sp, #0x14]
  340ec8: 681b         	ldr	r3, [r3]
  340eca: f503 73fa    	add.w	r3, r3, #0x1f4
  340ece: 681b         	ldr	r3, [r3]
  340ed0: 9805         	ldr	r0, [sp, #0x14]
  340ed2: 4798         	blx	r3
  340ed4: 4603         	mov	r3, r0
  340ed6: 4618         	mov	r0, r3
  340ed8: f7e8 fae8    	bl	0x3294ac <std::sin(float)> @ imm = #-0x17a30
  340edc: ee07 0a90    	vmov	s15, r0
  340ee0: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  340ee4: ab12         	add	r3, sp, #0x48
  340ee6: 4618         	mov	r0, r3
  340ee8: eeb0 0b48    	vmov.f64	d0, d8
  340eec: eeb0 1b47    	vmov.f64	d1, d7
  340ef0: f7fd fa5c    	bl	0x33e3ac <non-virtual thunk to HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)+0x220> @ imm = #-0x2b48
  340ef4: 9b05         	ldr	r3, [sp, #0x14]
  340ef6: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  340efa: 4618         	mov	r0, r3
  340efc: f7e8 fabe    	bl	0x32947c <std::cos(float)> @ imm = #-0x17a84
  340f00: ee07 0a90    	vmov	s15, r0
  340f04: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  340f08: 9b05         	ldr	r3, [sp, #0x14]
  340f0a: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  340f0e: 4618         	mov	r0, r3
  340f10: f7e8 facc    	bl	0x3294ac <std::sin(float)> @ imm = #-0x17a68
  340f14: ee07 0a90    	vmov	s15, r0
  340f18: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  340f1c: ab16         	add	r3, sp, #0x58
  340f1e: 4618         	mov	r0, r3
  340f20: eeb0 0b48    	vmov.f64	d0, d8
  340f24: eeb0 1b47    	vmov.f64	d1, d7
  340f28: f7fd fa40    	bl	0x33e3ac <non-virtual thunk to HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)+0x220> @ imm = #-0x2b80
  340f2c: ab2a         	add	r3, sp, #0xa8
  340f2e: ed9d 6b12    	vldr	d6, [sp, #72]
  340f32: ed9d 7b14    	vldr	d7, [sp, #80]
  340f36: 4618         	mov	r0, r3
  340f38: eeb0 0b46    	vmov.f64	d0, d6
  340f3c: eeb0 1b47    	vmov.f64	d1, d7
  340f40: ed9f 2b43    	vldr	d2, [pc, #268]          @ 0x341050 <HawkDrone::updateRemoteStep(float)+0x2b0>
  340f44: f7fd fa9e    	bl	0x33e484 <non-virtual thunk to HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)+0x2f8> @ imm = #-0x2ac4
  340f48: ab2e         	add	r3, sp, #0xb8
  340f4a: ed9d 6b16    	vldr	d6, [sp, #88]
  340f4e: ed9d 7b18    	vldr	d7, [sp, #96]
  340f52: 4618         	mov	r0, r3
  340f54: eeb0 0b46    	vmov.f64	d0, d6
  340f58: eeb0 1b47    	vmov.f64	d1, d7
  340f5c: ed9f 2b3e    	vldr	d2, [pc, #248]          @ 0x341058 <HawkDrone::updateRemoteStep(float)+0x2b8>
  340f60: f7fd fa90    	bl	0x33e484 <non-virtual thunk to HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)+0x2f8> @ imm = #-0x2ae0
  340f64: ab1a         	add	r3, sp, #0x68
  340f66: ed9d 4b2a    	vldr	d4, [sp, #168]
  340f6a: ed9d 5b2c    	vldr	d5, [sp, #176]
  340f6e: ed9d 6b2e    	vldr	d6, [sp, #184]
  340f72: ed9d 7b30    	vldr	d7, [sp, #192]
  340f76: 4618         	mov	r0, r3
  340f78: eeb0 0b44    	vmov.f64	d0, d4
  340f7c: eeb0 1b45    	vmov.f64	d1, d5
  340f80: eeb0 2b46    	vmov.f64	d2, d6
  340f84: eeb0 3b47    	vmov.f64	d3, d7
  340f88: f7fd fa24    	bl	0x33e3d4 <non-virtual thunk to HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)+0x248> @ imm = #-0x2bb8
  340f8c: ab1a         	add	r3, sp, #0x68
  340f8e: cb0f         	ldm	r3, {r0, r1, r2, r3}
  340f90: f7fd fc0e    	bl	0x33e7b0 <non-virtual thunk to HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)+0x624> @ imm = #-0x27e4
  340f94: ee07 0a10    	vmov	s14, r0
  340f98: eddf 7a31    	vldr	s15, [pc, #196]         @ 0x341060 <HawkDrone::updateRemoteStep(float)+0x2c0>
  340f9c: ee67 7a27    	vmul.f32	s15, s14, s15
  340fa0: eef1 7a67    	vneg.f32	s15, s15
  340fa4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  340fa8: ed8d 7b08    	vstr	d7, [sp, #32]
  340fac: 9b05         	ldr	r3, [sp, #0x14]
  340fae: f8d3 31c8    	ldr.w	r3, [r3, #0x1c8]
  340fb2: ed9d 6b0e    	vldr	d6, [sp, #56]
  340fb6: ed9d 7b10    	vldr	d7, [sp, #64]
  340fba: 4618         	mov	r0, r3
  340fbc: eeb0 0b46    	vmov.f64	d0, d6
  340fc0: eeb0 1b47    	vmov.f64	d1, d7
  340fc4: f7fd fb46    	bl	0x33e654 <non-virtual thunk to HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)+0x4c8> @ imm = #-0x2974
  340fc8: 9b05         	ldr	r3, [sp, #0x14]
  340fca: f8d3 31c8    	ldr.w	r3, [r3, #0x1c8]
  340fce: 4618         	mov	r0, r3
  340fd0: e9dd 2308    	ldrd	r2, r3, [sp, #32]
  340fd4: f392 f8dd    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x3921ba
  340fd8: ed9d 7b08    	vldr	d7, [sp, #32]
  340fdc: eef7 7bc7    	vcvt.f32.f64	s15, d7
  340fe0: edcd 7a02    	vstr	s15, [sp, #8]
  340fe4: 466b         	mov	r3, sp
  340fe6: aa10         	add	r2, sp, #0x40
  340fe8: e892 0003    	ldm.w	r2, {r0, r1}
  340fec: e883 0003    	stm.w	r3, {r0, r1}
  340ff0: ab0e         	add	r3, sp, #0x38
  340ff2: cb0c         	ldm	r3, {r2, r3}
  340ff4: 9805         	ldr	r0, [sp, #0x14]
  340ff6: f7ff fe9b    	bl	0x340d30 <HawkDrone::updateBody(cpVect, float)> @ imm = #-0x2ca
  340ffa: 9b05         	ldr	r3, [sp, #0x14]
  340ffc: 681b         	ldr	r3, [r3]
  340ffe: f503 7303    	add.w	r3, r3, #0x20c
  341002: 681b         	ldr	r3, [r3]
  341004: 9805         	ldr	r0, [sp, #0x14]
  341006: 4798         	blx	r3
  341008: 4603         	mov	r3, r0
  34100a: 9307         	str	r3, [sp, #0x1c]
  34100c: 9b07         	ldr	r3, [sp, #0x1c]
  34100e: 2b00         	cmp	r3, #0x0
  341010: d008         	beq	0x341024 <HawkDrone::updateRemoteStep(float)+0x284> @ imm = #0x10
  341012: 9b07         	ldr	r3, [sp, #0x1c]
  341014: 681b         	ldr	r3, [r3]
  341016: f503 73d8    	add.w	r3, r3, #0x1b0
  34101a: 681b         	ldr	r3, [r3]
  34101c: 9a07         	ldr	r2, [sp, #0x1c]
  34101e: 4610         	mov	r0, r2
  341020: 9904         	ldr	r1, [sp, #0x10]
  341022: 4798         	blx	r3
  341024: 9805         	ldr	r0, [sp, #0x14]
  341026: 9904         	ldr	r1, [sp, #0x10]
  341028: f7ff fa76    	bl	0x340518 <HawkDrone::updateSprite(float)> @ imm = #-0xb14
  34102c: 9805         	ldr	r0, [sp, #0x14]
  34102e: f7ff f813    	bl	0x340058 <HawkDrone::rotateWeapon()> @ imm = #-0xfda
  341032: b033         	add	sp, #0xcc
  341034: ecbd 8b02    	vpop	{d8}
  341038: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x34103b); words below are literal-pool data ---
  34103c: f3af 8000    	nop.w
  341040: 872b         	strh	r3, [r5, #0x38]
  341042: d916         	bls	0x341072 <HawkDrone::lookForTarget()+0xa> @ imm = #0x2c
  341044: f7ce 3fd7    	ubfx	pc, lr, #0xf, #0x18
  341048: 999a         	ldr	r1, [sp, #0x268]
  34104a: 9999         	ldr	r1, [sp, #0x264]
  34104c: 9999         	ldr	r1, [sp, #0x264]
  34104e: 3fa9         	subs	r7, #0xa9
  341050: 6666         	str	r6, [r4, #0x64]
  341052: 6666         	str	r6, [r4, #0x64]
  341054: 6666         	str	r6, [r4, #0x64]
  341056: 3fe6         	subs	r7, #0xe6
  341058: 3333         	adds	r3, #0x33
  34105a: 3333         	adds	r3, #0x33
  34105c: 3333         	adds	r3, #0x33
  34105e: 3fd3         	subs	r7, #0xd3
  341060: fa35 3c8e    	<unknown>
  341064: e8bf ffff    	ldm.w	pc!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, sp, lr, pc}

// ==== HawkDrone::lookForTarget
//      file offset 0x341068 (= ELF address; Ghidra 0x351068), 52 bytes, Thumb-2
  341068: b500         	push	{lr}
  34106a: b083         	sub	sp, #0xc
  34106c: 9001         	str	r0, [sp, #0x4]
  34106e: 9b01         	ldr	r3, [sp, #0x4]
  341070: 681b         	ldr	r3, [r3]
  341072: f503 73f8    	add.w	r3, r3, #0x1f0
  341076: 681b         	ldr	r3, [r3]
  341078: 9a01         	ldr	r2, [sp, #0x4]
  34107a: 4610         	mov	r0, r2
  34107c: 4798         	blx	r3
  34107e: 4603         	mov	r3, r0
  341080: 2b00         	cmp	r3, #0x0
  341082: d004         	beq	0x34108e <HawkDrone::lookForTarget()+0x26> @ imm = #0x8
  341084: 9b01         	ldr	r3, [sp, #0x4]
  341086: 2203         	movs	r2, #0x3
  341088: f8c3 215c    	str.w	r2, [r3, #0x15c]
  34108c: e003         	b	0x341096 <HawkDrone::lookForTarget()+0x2e> @ imm = #0x6
  34108e: 9b01         	ldr	r3, [sp, #0x4]
  341090: 2202         	movs	r2, #0x2
  341092: f8c3 215c    	str.w	r2, [r3, #0x15c]
  341096: b003         	add	sp, #0xc
  341098: f85d fb04    	ldr	pc, [sp], #4

// ==== HawkDrone::getThrustPoint
//      file offset 0x34109c (= ELF address; Ghidra 0x35109c), 176 bytes, Thumb-2
  34109c: b510         	push	{r4, lr}
  34109e: b08e         	sub	sp, #0x38
  3410a0: 9001         	str	r0, [sp, #0x4]
  3410a2: 9100         	str	r1, [sp]
  3410a4: 4c27         	ldr	r4, [pc, #0x9c]         @ 0x341144 <HawkDrone::getThrustPoint()+0xa8>
  3410a6: 447c         	add	r4, pc
  3410a8: 9b00         	ldr	r3, [sp]
  3410aa: f503 73f4    	add.w	r3, r3, #0x1e8
  3410ae: aa02         	add	r2, sp, #0x8
  3410b0: 4610         	mov	r0, r2
  3410b2: 4619         	mov	r1, r3
  3410b4: f251 fe2a    	bl	0x592d0c <cocos2d::CCPoint::CCPoint(cocos2d::CCPoint const&)> @ imm = #0x251c54
  3410b8: 9b00         	ldr	r3, [sp]
  3410ba: f8d3 31b4    	ldr.w	r3, [r3, #0x1b4]
  3410be: 681b         	ldr	r3, [r3]
  3410c0: f503 73c2    	add.w	r3, r3, #0x184
  3410c4: 681b         	ldr	r3, [r3]
  3410c6: 9a00         	ldr	r2, [sp]
  3410c8: f8d2 21b4    	ldr.w	r2, [r2, #0x1b4]
  3410cc: a908         	add	r1, sp, #0x20
  3410ce: 4608         	mov	r0, r1
  3410d0: 4611         	mov	r1, r2
  3410d2: 4798         	blx	r3
  3410d4: a904         	add	r1, sp, #0x10
  3410d6: aa02         	add	r2, sp, #0x8
  3410d8: ab08         	add	r3, sp, #0x20
  3410da: 4608         	mov	r0, r1
  3410dc: 4611         	mov	r1, r2
  3410de: 461a         	mov	r2, r3
  3410e0: f251 f920    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x251240
  3410e4: 4b18         	ldr	r3, [pc, #0x60]         @ 0x341148 <HawkDrone::getThrustPoint()+0xac>
  3410e6: 58e3         	ldr	r3, [r4, r3]
  3410e8: 681b         	ldr	r3, [r3]
  3410ea: 681b         	ldr	r3, [r3]
  3410ec: f503 73c4    	add.w	r3, r3, #0x188
  3410f0: 681b         	ldr	r3, [r3]
  3410f2: 4a15         	ldr	r2, [pc, #0x54]         @ 0x341148 <HawkDrone::getThrustPoint()+0xac>
  3410f4: 58a2         	ldr	r2, [r4, r2]
  3410f6: 6812         	ldr	r2, [r2]
  3410f8: a908         	add	r1, sp, #0x20
  3410fa: 4608         	mov	r0, r1
  3410fc: 4611         	mov	r1, r2
  3410fe: 4798         	blx	r3
  341100: a906         	add	r1, sp, #0x18
  341102: aa04         	add	r2, sp, #0x10
  341104: ab08         	add	r3, sp, #0x20
  341106: 4608         	mov	r0, r1
  341108: 4611         	mov	r1, r2
  34110a: 461a         	mov	r2, r3
  34110c: f251 f90a    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x251214
  341110: aa04         	add	r2, sp, #0x10
  341112: ab06         	add	r3, sp, #0x18
  341114: 4610         	mov	r0, r2
  341116: 4619         	mov	r1, r3
  341118: f251 fe18    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x251c30
  34111c: eddd 7a04    	vldr	s15, [sp, #16]
  341120: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  341124: eddd 7a05    	vldr	s15, [sp, #20]
  341128: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  34112c: 9b01         	ldr	r3, [sp, #0x4]
  34112e: 4618         	mov	r0, r3
  341130: eeb0 0b46    	vmov.f64	d0, d6
  341134: eeb0 1b47    	vmov.f64	d1, d7
  341138: f7fd f938    	bl	0x33e3ac <non-virtual thunk to HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)+0x220> @ imm = #-0x2d90
  34113c: 9801         	ldr	r0, [sp, #0x4]
  34113e: b00e         	add	sp, #0x38
  341140: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x341141); words below are literal-pool data ---
  341142: bf00         	nop
  341144: 1962         	adds	r2, r4, r5
  341146: 005f         	lsls	r7, r3, #0x1
  341148: d744         	bvc	0x3411d4 <HawkDrone::initShape()+0x14> @ imm = #0x88
  34114a: ffff b500    	<unknown>

// ==== HawkDrone::initBody
//      file offset 0x34114c (= ELF address; Ghidra 0x35114c), 116 bytes, Thumb-2
  34114c: b500         	push	{lr}
  34114e: b083         	sub	sp, #0xc
  341150: 9001         	str	r0, [sp, #0x4]
  341152: 9b01         	ldr	r3, [sp, #0x4]
  341154: edd3 7a75    	vldr	s15, [r3, #468]
  341158: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  34115c: 9b01         	ldr	r3, [sp, #0x4]
  34115e: ed93 7a75    	vldr	s14, [r3, #468]
  341162: eddf 7a15    	vldr	s15, [pc, #84]          @ 0x3411b8 <HawkDrone::initBody()+0x6c>
  341166: ee67 7a27    	vmul.f32	s15, s14, s15
  34116a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  34116e: ec51 0b16    	vmov	r0, r1, d6
  341172: ec53 2b17    	vmov	r2, r3, d7
  341176: f392 f869    	bl	0x6d324c <cpBodyNew>    @ imm = #0x3920d2
  34117a: 4602         	mov	r2, r0
  34117c: 9b01         	ldr	r3, [sp, #0x4]
  34117e: f8c3 21c8    	str.w	r2, [r3, #0x1c8]
  341182: 9b01         	ldr	r3, [sp, #0x4]
  341184: f8d3 31c8    	ldr.w	r3, [r3, #0x1c8]
  341188: 4a0c         	ldr	r2, [pc, #0x30]         @ 0x3411bc <HawkDrone::initBody()+0x70>
  34118a: 447a         	add	r2, pc
  34118c: 601a         	str	r2, [r3]
  34118e: 9b01         	ldr	r3, [sp, #0x4]
  341190: f8d3 11c8    	ldr.w	r1, [r3, #0x1c8]
  341194: f04f 0200    	mov.w	r2, #0x0
  341198: f04f 0300    	mov.w	r3, #0x0
  34119c: f2c4 0324    	movt	r3, #0x4024
  3411a0: e9c1 2322    	strd	r2, r3, [r1, #136]
  3411a4: 9b01         	ldr	r3, [sp, #0x4]
  3411a6: f8d3 31c8    	ldr.w	r3, [r3, #0x1c8]
  3411aa: 9a01         	ldr	r2, [sp, #0x4]
  3411ac: f8c3 2090    	str.w	r2, [r3, #0x90]
  3411b0: b003         	add	sp, #0xc
  3411b2: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3411b5); words below are literal-pool data ---
  3411b6: bf00         	nop
  3411b8: 0000         	movs	r0, r0
  3411ba: 4348         	muls	r0, r1, r0
  3411bc: e373         	b	0x3418a6 <HawkDrone::setRemoteFire(bool)+0x19a> @ imm = #0x6e6
  3411be: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== HawkDrone::initShape
//      file offset 0x3411c0 (= ELF address; Ghidra 0x3511c0), 176 bytes, Thumb-2
  3411c0: b530         	push	{r4, r5, lr}
  3411c2: b089         	sub	sp, #0x24
  3411c4: 9005         	str	r0, [sp, #0x14]
  3411c6: 4a27         	ldr	r2, [pc, #0x9c]         @ 0x341264 <HawkDrone::initShape()+0xa4>
  3411c8: 447a         	add	r2, pc
  3411ca: 4b27         	ldr	r3, [pc, #0x9c]         @ 0x341268 <HawkDrone::initShape()+0xa8>
  3411cc: 58d3         	ldr	r3, [r2, r3]
  3411ce: 681b         	ldr	r3, [r3]
  3411d0: 9306         	str	r3, [sp, #0x18]
  3411d2: ed9d 7a06    	vldr	s14, [sp, #24]
  3411d6: eddf 7a22    	vldr	s15, [pc, #136]         @ 0x341260 <HawkDrone::initShape()+0xa0>
  3411da: ee67 7a27    	vmul.f32	s15, s14, s15
  3411de: edcd 7a07    	vstr	s15, [sp, #28]
  3411e2: 9b05         	ldr	r3, [sp, #0x14]
  3411e4: 681b         	ldr	r3, [r3]
  3411e6: 3340         	adds	r3, #0x40
  3411e8: 681b         	ldr	r3, [r3]
  3411ea: 9a05         	ldr	r2, [sp, #0x14]
  3411ec: 4610         	mov	r0, r2
  3411ee: 9906         	ldr	r1, [sp, #0x18]
  3411f0: 4798         	blx	r3
  3411f2: 9b05         	ldr	r3, [sp, #0x14]
  3411f4: f8d3 51c8    	ldr.w	r5, [r3, #0x1c8]
  3411f8: eddd 7a07    	vldr	s15, [sp, #28]
  3411fc: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  341200: 4b1a         	ldr	r3, [pc, #0x68]         @ 0x34126c <HawkDrone::initShape()+0xac>
  341202: 447b         	add	r3, pc
  341204: 466c         	mov	r4, sp
  341206: cb0f         	ldm	r3, {r0, r1, r2, r3}
  341208: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  34120c: 4628         	mov	r0, r5
  34120e: ec53 2b17    	vmov	r2, r3, d7
  341212: f393 ffa5    	bl	0x6d5160 <cpCircleShapeNew> @ imm = #0x393f4a
  341216: 4602         	mov	r2, r0
  341218: 9b05         	ldr	r3, [sp, #0x14]
  34121a: f8c3 21cc    	str.w	r2, [r3, #0x1cc]
  34121e: 9b05         	ldr	r3, [sp, #0x14]
  341220: f8d3 11cc    	ldr.w	r1, [r3, #0x1cc]
  341224: a30a         	adr	r3, #40 <HawkDrone::initShape()+0x72>
  341226: e9d3 2300    	ldrd	r2, r3, [r3]
  34122a: e9c1 230c    	strd	r2, r3, [r1, #48]
  34122e: 9b05         	ldr	r3, [sp, #0x14]
  341230: f8d3 11cc    	ldr.w	r1, [r3, #0x1cc]
  341234: a308         	adr	r3, #32 <HawkDrone::initShape()+0x80>
  341236: e9d3 2300    	ldrd	r2, r3, [r3]
  34123a: e9c1 230e    	strd	r2, r3, [r1, #56]
  34123e: 9b05         	ldr	r3, [sp, #0x14]
  341240: f8d3 31cc    	ldr.w	r3, [r3, #0x1cc]
  341244: 9a05         	ldr	r2, [sp, #0x14]
  341246: 651a         	str	r2, [r3, #0x50]
  341248: b009         	add	sp, #0x24
  34124a: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x34124b); words below are literal-pool data ---
  34124c: f3af 8000    	nop.w
  341250: 0000         	movs	r0, r0
  341252: a000         	adr	r0, #0 <HawkDrone::initShape()+0x96>
  341254: 9999         	ldr	r1, [sp, #0x264]
  341256: 3fe9         	subs	r7, #0xe9
  341258: 0000         	movs	r0, r0
  34125a: a000         	adr	r0, #0 <HawkDrone::initShape()+0x9e>
  34125c: 9999         	ldr	r1, [sp, #0x264]
  34125e: 3fb9         	subs	r7, #0xb9
  341260: 0000         	movs	r0, r0
  341262: 4220         	tst	r0, r4
  341264: 1840         	adds	r0, r0, r1
  341266: 005f         	lsls	r7, r3, #0x1
  341268: d748         	bvc	0x3412fc <HawkDrone::addBodyShape()+0x2c> @ imm = #0x90
  34126a: ffff 8b72    	<unknown>
  34126e: 0048         	lsls	r0, r1, #0x1

// ==== HawkDrone::resetBody
//      file offset 0x341270 (= ELF address; Ghidra 0x351270), 94 bytes, Thumb-2
  341270: b500         	push	{lr}
  341272: b083         	sub	sp, #0xc
  341274: 9001         	str	r0, [sp, #0x4]
  341276: 9b01         	ldr	r3, [sp, #0x4]
  341278: f8d3 11c8    	ldr.w	r1, [r3, #0x1c8]
  34127c: f04f 0200    	mov.w	r2, #0x0
  341280: f04f 0300    	mov.w	r3, #0x0
  341284: e9c1 230e    	strd	r2, r3, [r1, #56]
  341288: f04f 0200    	mov.w	r2, #0x0
  34128c: f04f 0300    	mov.w	r3, #0x0
  341290: e9c1 2310    	strd	r2, r3, [r1, #64]
  341294: 9b01         	ldr	r3, [sp, #0x4]
  341296: f8d3 11c8    	ldr.w	r1, [r3, #0x1c8]
  34129a: f04f 0200    	mov.w	r2, #0x0
  34129e: f04f 0300    	mov.w	r3, #0x0
  3412a2: e9c1 2312    	strd	r2, r3, [r1, #72]
  3412a6: f04f 0200    	mov.w	r2, #0x0
  3412aa: f04f 0300    	mov.w	r3, #0x0
  3412ae: e9c1 2314    	strd	r2, r3, [r1, #80]
  3412b2: 9b01         	ldr	r3, [sp, #0x4]
  3412b4: f8d3 31bc    	ldr.w	r3, [r3, #0x1bc]
  3412b8: 4618         	mov	r0, r3
  3412ba: f281 fc93    	bl	0x5c2be4 <cocos2d::CCParticleSystem::resetSystem()> @ imm = #0x281926
  3412be: 9b01         	ldr	r3, [sp, #0x4]
  3412c0: f04f 0200    	mov.w	r2, #0x0
  3412c4: f8c3 21a0    	str.w	r2, [r3, #0x1a0]
  3412c8: b003         	add	sp, #0xc
  3412ca: f85d fb04    	ldr	pc, [sp], #4

// ==== HawkDrone::addBodyShape
//      file offset 0x3412d0 (= ELF address; Ghidra 0x3512d0), 88 bytes, Thumb-2
  3412d0: b510         	push	{r4, lr}
  3412d2: b082         	sub	sp, #0x8
  3412d4: 9001         	str	r0, [sp, #0x4]
  3412d6: 4c12         	ldr	r4, [pc, #0x48]         @ 0x341320 <HawkDrone::addBodyShape()+0x50>
  3412d8: 447c         	add	r4, pc
  3412da: 9b01         	ldr	r3, [sp, #0x4]
  3412dc: f893 31d0    	ldrb.w	r3, [r3, #0x1d0]
  3412e0: f083 0301    	eor	r3, r3, #0x1
  3412e4: b2db         	uxtb	r3, r3
  3412e6: 2b00         	cmp	r3, #0x0
  3412e8: d017         	beq	0x34131a <HawkDrone::addBodyShape()+0x4a> @ imm = #0x2e
  3412ea: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x341324 <HawkDrone::addBodyShape()+0x54>
  3412ec: 58e3         	ldr	r3, [r4, r3]
  3412ee: 681a         	ldr	r2, [r3]
  3412f0: 9b01         	ldr	r3, [sp, #0x4]
  3412f2: f8d3 31c8    	ldr.w	r3, [r3, #0x1c8]
  3412f6: 4610         	mov	r0, r2
  3412f8: 4619         	mov	r1, r3
  3412fa: f394 fd4b    	bl	0x6d5d94 <cpSpaceAddBody> @ imm = #0x394a96
  3412fe: 4b09         	ldr	r3, [pc, #0x24]         @ 0x341324 <HawkDrone::addBodyShape()+0x54>
  341300: 58e3         	ldr	r3, [r4, r3]
  341302: 681a         	ldr	r2, [r3]
  341304: 9b01         	ldr	r3, [sp, #0x4]
  341306: f8d3 31cc    	ldr.w	r3, [r3, #0x1cc]
  34130a: 4610         	mov	r0, r2
  34130c: 4619         	mov	r1, r3
  34130e: f394 ff7b    	bl	0x6d6208 <cpSpaceAddShape> @ imm = #0x394ef6
  341312: 9b01         	ldr	r3, [sp, #0x4]
  341314: 2201         	movs	r2, #0x1
  341316: f883 21d0    	strb.w	r2, [r3, #0x1d0]
  34131a: b002         	add	sp, #0x8
  34131c: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x34131d); words below are literal-pool data ---
  34131e: bf00         	nop
  341320: 1730         	asrs	r0, r6, #0x1c
  341322: 005f         	lsls	r7, r3, #0x1
  341324: da00         	bge	0x341328 <HawkDrone::removeBodyShape()> @ imm = #0x0
  341326: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== HawkDrone::removeBodyShape
//      file offset 0x341328 (= ELF address; Ghidra 0x351328), 80 bytes, Thumb-2
  341328: b510         	push	{r4, lr}
  34132a: b082         	sub	sp, #0x8
  34132c: 9001         	str	r0, [sp, #0x4]
  34132e: 4c10         	ldr	r4, [pc, #0x40]         @ 0x341370 <HawkDrone::removeBodyShape()+0x48>
  341330: 447c         	add	r4, pc
  341332: 9b01         	ldr	r3, [sp, #0x4]
  341334: f893 31d0    	ldrb.w	r3, [r3, #0x1d0]
  341338: 2b00         	cmp	r3, #0x0
  34133a: d017         	beq	0x34136c <HawkDrone::removeBodyShape()+0x44> @ imm = #0x2e
  34133c: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x341374 <HawkDrone::removeBodyShape()+0x4c>
  34133e: 58e3         	ldr	r3, [r4, r3]
  341340: 681a         	ldr	r2, [r3]
  341342: 9b01         	ldr	r3, [sp, #0x4]
  341344: f8d3 31c8    	ldr.w	r3, [r3, #0x1c8]
  341348: 4610         	mov	r0, r2
  34134a: 4619         	mov	r1, r3
  34134c: f394 ffcf    	bl	0x6d62ee <cpSpaceRemoveBody> @ imm = #0x394f9e
  341350: 4b08         	ldr	r3, [pc, #0x20]         @ 0x341374 <HawkDrone::removeBodyShape()+0x4c>
  341352: 58e3         	ldr	r3, [r4, r3]
  341354: 681a         	ldr	r2, [r3]
  341356: 9b01         	ldr	r3, [sp, #0x4]
  341358: f8d3 31cc    	ldr.w	r3, [r3, #0x1cc]
  34135c: 4610         	mov	r0, r2
  34135e: 4619         	mov	r1, r3
  341360: f394 ff8c    	bl	0x6d627c <cpSpaceRemoveShape> @ imm = #0x394f18
  341364: 9b01         	ldr	r3, [sp, #0x4]
  341366: 2200         	movs	r2, #0x0
  341368: f883 21d0    	strb.w	r2, [r3, #0x1d0]
  34136c: b002         	add	sp, #0x8
  34136e: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x34136f); words below are literal-pool data ---
  341370: 16d8         	asrs	r0, r3, #0x1b
  341372: 005f         	lsls	r7, r3, #0x1
  341374: da00         	bge	0x341378 <HawkDrone::addDamage(int, std::string, int)> @ imm = #0x0
  341376: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== HawkDrone::addDamage
//      file offset 0x341378 (= ELF address; Ghidra 0x351378), 268 bytes, Thumb-2
  341378: b530         	push	{r4, r5, lr}
  34137a: ed2d 8b02    	vpush	{d8}
  34137e: b089         	sub	sp, #0x24
  341380: 9007         	str	r0, [sp, #0x1c]
  341382: 9106         	str	r1, [sp, #0x18]
  341384: 9205         	str	r2, [sp, #0x14]
  341386: 9304         	str	r3, [sp, #0x10]
  341388: 4c3c         	ldr	r4, [pc, #0xf0]         @ 0x34147c <HawkDrone::addDamage(int, std::string, int)+0x104>
  34138a: 447c         	add	r4, pc
  34138c: 9b07         	ldr	r3, [sp, #0x1c]
  34138e: f8d3 21ac    	ldr.w	r2, [r3, #0x1ac]
  341392: 9b06         	ldr	r3, [sp, #0x18]
  341394: 1ad3         	subs	r3, r2, r3
  341396: ea23 72e3    	bic.w	r2, r3, r3, asr #31
  34139a: 9b07         	ldr	r3, [sp, #0x1c]
  34139c: f8c3 21ac    	str.w	r2, [r3, #0x1ac]
  3413a0: 9b07         	ldr	r3, [sp, #0x1c]
  3413a2: 33ec         	adds	r3, #0xec
  3413a4: 4618         	mov	r0, r3
  3413a6: 9905         	ldr	r1, [sp, #0x14]
  3413a8: f075 f104    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x475208
  3413ac: 9b07         	ldr	r3, [sp, #0x1c]
  3413ae: 9a04         	ldr	r2, [sp, #0x10]
  3413b0: f8c3 20f0    	str.w	r2, [r3, #0xf0]
  3413b4: 4b32         	ldr	r3, [pc, #0xc8]         @ 0x341480 <HawkDrone::addDamage(int, std::string, int)+0x108>
  3413b6: 58e3         	ldr	r3, [r4, r3]
  3413b8: 681d         	ldr	r5, [r3]
  3413ba: 9b07         	ldr	r3, [sp, #0x1c]
  3413bc: f8d3 41c8    	ldr.w	r4, [r3, #0x1c8]
  3413c0: 9b06         	ldr	r3, [sp, #0x18]
  3413c2: ee07 3a90    	vmov	s15, r3
  3413c6: eeb8 6be7    	vcvt.f64.s32	d6, s15
  3413ca: eeb5 7b00    	vmov.f64	d7, #2.500000e-01
  3413ce: ee26 6b07    	vmul.f64	d6, d6, d7
  3413d2: eeb3 7b0e    	vmov.f64	d7, #3.000000e+01
  3413d6: ee86 6b07    	vdiv.f64	d6, d6, d7
  3413da: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
  3413de: eeb4 6bc7    	vcmpe.f64	d6, d7
  3413e2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3413e6: d502         	bpl	0x3413ee <HawkDrone::addDamage(int, std::string, int)+0x76> @ imm = #0x4
  3413e8: eeb7 8a04    	vmov.f32	s16, #1.250000e+00
  3413ec: e012         	b	0x341414 <HawkDrone::addDamage(int, std::string, int)+0x9c> @ imm = #0x24
  3413ee: 9b06         	ldr	r3, [sp, #0x18]
  3413f0: ee07 3a90    	vmov	s15, r3
  3413f4: eeb8 6be7    	vcvt.f64.s32	d6, s15
  3413f8: eeb5 7b00    	vmov.f64	d7, #2.500000e-01
  3413fc: ee26 6b07    	vmul.f64	d6, d6, d7
  341400: eeb3 7b0e    	vmov.f64	d7, #3.000000e+01
  341404: ee86 6b07    	vdiv.f64	d6, d6, d7
  341408: eeb6 7b08    	vmov.f64	d7, #7.500000e-01
  34140c: ee36 7b07    	vadd.f64	d7, d6, d7
  341410: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  341414: f7fc ff44    	bl	0x33e2a0 <non-virtual thunk to HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)+0x114> @ imm = #-0x3178
  341418: 4603         	mov	r3, r0
  34141a: ee07 3a90    	vmov	s15, r3
  34141e: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  341422: eddf 7a15    	vldr	s15, [pc, #84]          @ 0x341478 <HawkDrone::addDamage(int, std::string, int)+0x100>
  341426: ee87 7a27    	vdiv.f32	s14, s14, s15
  34142a: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  34142e: ee77 7a67    	vsub.f32	s15, s14, s15
  341432: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  341436: eeb5 7b00    	vmov.f64	d7, #2.500000e-01
  34143a: ee26 6b07    	vmul.f64	d6, d6, d7
  34143e: eeb7 7b00    	vmov.f64	d7, #1.000000e+00
  341442: ee36 7b07    	vadd.f64	d7, d6, d7
  341446: eef7 7bc7    	vcvt.f32.f64	s15, d7
  34144a: ed8d 8a02    	vstr	s16, [sp, #8]
  34144e: edcd 7a03    	vstr	s15, [sp, #12]
  341452: 466b         	mov	r3, sp
  341454: f104 0230    	add.w	r2, r4, #0x30
  341458: e892 0003    	ldm.w	r2, {r0, r1}
  34145c: e883 0003    	stm.w	r3, {r0, r1}
  341460: f104 0328    	add.w	r3, r4, #0x28
  341464: cb0c         	ldm	r3, {r2, r3}
  341466: 4628         	mov	r0, r5
  341468: 210f         	movs	r1, #0xf
  34146a: f0b6 fdeb    	bl	0x3f8044 <Sound::playSoundPositionVP(int, cpVect, float, float)> @ imm = #0xb6bd6
  34146e: b009         	add	sp, #0x24
  341470: ecbd 8b02    	vpop	{d8}
  341474: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x341475); words below are literal-pool data ---
  341476: bf00         	nop
  341478: 0000         	movs	r0, r0
  34147a: 4e80         	ldr	r6, [pc, #0x200]        @ 0x34167c <HawkDrone::getPeerID()+0x14>
  34147c: 167e         	asrs	r6, r7, #0x19
  34147e: 005f         	lsls	r7, r3, #0x1
  341480: d730         	bvc	0x3414e4 <HawkDrone::getBodyVelocity()+0x2c> @ imm = #0x60
  341482: ffff b082    	<unknown>

// ==== HawkDrone::getHP
//      file offset 0x341484 (= ELF address; Ghidra 0x351484), 16 bytes, Thumb-2
  341484: b082         	sub	sp, #0x8
  341486: 9001         	str	r0, [sp, #0x4]
  341488: 9b01         	ldr	r3, [sp, #0x4]
  34148a: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  34148e: 4618         	mov	r0, r3
  341490: b002         	add	sp, #0x8
  341492: 4770         	bx	lr

// ==== HawkDrone::getBodyPosition
//      file offset 0x341494 (= ELF address; Ghidra 0x351494), 36 bytes, Thumb-2
  341494: b410         	push	{r4}
  341496: b083         	sub	sp, #0xc
  341498: 9001         	str	r0, [sp, #0x4]
  34149a: 9100         	str	r1, [sp]
  34149c: 9b00         	ldr	r3, [sp]
  34149e: f8d3 31c8    	ldr.w	r3, [r3, #0x1c8]
  3414a2: 9a01         	ldr	r2, [sp, #0x4]
  3414a4: 4614         	mov	r4, r2
  3414a6: 3328         	adds	r3, #0x28
  3414a8: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3414aa: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3414ae: 9801         	ldr	r0, [sp, #0x4]
  3414b0: b003         	add	sp, #0xc
  3414b2: f85d 4b04    	ldr	r4, [sp], #4
  3414b6: 4770         	bx	lr

// ==== HawkDrone::getBodyVelocity
//      file offset 0x3414b8 (= ELF address; Ghidra 0x3514b8), 68 bytes, Thumb-2
  3414b8: b410         	push	{r4}
  3414ba: b083         	sub	sp, #0xc
  3414bc: 9001         	str	r0, [sp, #0x4]
  3414be: 9100         	str	r1, [sp]
  3414c0: 9b00         	ldr	r3, [sp]
  3414c2: f8d3 31c8    	ldr.w	r3, [r3, #0x1c8]
  3414c6: f8d3 3090    	ldr.w	r3, [r3, #0x90]
  3414ca: 2b00         	cmp	r3, #0x0
  3414cc: d009         	beq	0x3414e2 <HawkDrone::getBodyVelocity()+0x2a> @ imm = #0x12
  3414ce: 9b00         	ldr	r3, [sp]
  3414d0: f8d3 31c8    	ldr.w	r3, [r3, #0x1c8]
  3414d4: 9a01         	ldr	r2, [sp, #0x4]
  3414d6: 4614         	mov	r4, r2
  3414d8: 3338         	adds	r3, #0x38
  3414da: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3414dc: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3414e0: e007         	b	0x3414f2 <HawkDrone::getBodyVelocity()+0x3a> @ imm = #0xe
  3414e2: 9a01         	ldr	r2, [sp, #0x4]
  3414e4: 9b00         	ldr	r3, [sp]
  3414e6: 4614         	mov	r4, r2
  3414e8: f503 73c4    	add.w	r3, r3, #0x188
  3414ec: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3414ee: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3414f2: 9801         	ldr	r0, [sp, #0x4]
  3414f4: b003         	add	sp, #0xc
  3414f6: f85d 4b04    	ldr	r4, [sp], #4
  3414fa: 4770         	bx	lr

// ==== HawkDrone::getBodyRotation
//      file offset 0x3414fc (= ELF address; Ghidra 0x3514fc), 28 bytes, Thumb-2
  3414fc: b082         	sub	sp, #0x8
  3414fe: 9001         	str	r0, [sp, #0x4]
  341500: 9b01         	ldr	r3, [sp, #0x4]
  341502: f8d3 31c8    	ldr.w	r3, [r3, #0x1c8]
  341506: ed93 7b16    	vldr	d7, [r3, #88]
  34150a: eef7 7bc7    	vcvt.f32.f64	s15, d7
  34150e: ee17 3a90    	vmov	r3, s15
  341512: 4618         	mov	r0, r3
  341514: b002         	add	sp, #0x8
  341516: 4770         	bx	lr

// ==== HawkDrone::getFireAngle
//      file offset 0x341518 (= ELF address; Ghidra 0x351518), 16 bytes, Thumb-2
  341518: b082         	sub	sp, #0x8
  34151a: 9001         	str	r0, [sp, #0x4]
  34151c: 9b01         	ldr	r3, [sp, #0x4]
  34151e: f8d3 31e0    	ldr.w	r3, [r3, #0x1e0]
  341522: 4618         	mov	r0, r3
  341524: b002         	add	sp, #0x8
  341526: 4770         	bx	lr

// ==== HawkDrone::getWeapon
//      file offset 0x341528 (= ELF address; Ghidra 0x351528), 16 bytes, Thumb-2
  341528: b082         	sub	sp, #0x8
  34152a: 9001         	str	r0, [sp, #0x4]
  34152c: 9b01         	ldr	r3, [sp, #0x4]
  34152e: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  341532: 4618         	mov	r0, r3
  341534: b002         	add	sp, #0x8
  341536: 4770         	bx	lr

// ==== HawkDrone::weaponDidFire
//      file offset 0x341538 (= ELF address; Ghidra 0x351538), 256 bytes, Thumb-2
  341538: e92d 41f0    	push.w	{r4, r5, r6, r7, r8, lr}
  34153c: b08c         	sub	sp, #0x30
  34153e: 9009         	str	r0, [sp, #0x24]
  341540: 9108         	str	r1, [sp, #0x20]
  341542: 9b08         	ldr	r3, [sp, #0x20]
  341544: 2b00         	cmp	r3, #0x0
  341546: d100         	bne	0x34154a <HawkDrone::weaponDidFire(Item*)+0x12> @ imm = #0x0
  341548: e071         	b	0x34162e <HawkDrone::weaponDidFire(Item*)+0xf6> @ imm = #0xe2
  34154a: 9b08         	ldr	r3, [sp, #0x20]
  34154c: 930b         	str	r3, [sp, #0x2c]
  34154e: 9b09         	ldr	r3, [sp, #0x24]
  341550: 681b         	ldr	r3, [r3]
  341552: f503 7304    	add.w	r3, r3, #0x210
  341556: 6819         	ldr	r1, [r3]
  341558: 9b09         	ldr	r3, [sp, #0x24]
  34155a: 9a0b         	ldr	r2, [sp, #0x2c]
  34155c: edd2 7a5b    	vldr	s15, [r2, #364]
  341560: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  341564: 4618         	mov	r0, r3
  341566: ec53 2b17    	vmov	r2, r3, d7
  34156a: 4788         	blx	r1
  34156c: 9b0b         	ldr	r3, [sp, #0x2c]
  34156e: 681b         	ldr	r3, [r3]
  341570: f503 7344    	add.w	r3, r3, #0x310
  341574: 681e         	ldr	r6, [r3]
  341576: 9b09         	ldr	r3, [sp, #0x24]
  341578: 681b         	ldr	r3, [r3]
  34157a: f503 7302    	add.w	r3, r3, #0x208
  34157e: 681b         	ldr	r3, [r3]
  341580: 9809         	ldr	r0, [sp, #0x24]
  341582: 4798         	blx	r3
  341584: 4607         	mov	r7, r0
  341586: 9b09         	ldr	r3, [sp, #0x24]
  341588: f8d3 41c8    	ldr.w	r4, [r3, #0x1c8]
  34158c: 9b09         	ldr	r3, [sp, #0x24]
  34158e: f8d3 81c8    	ldr.w	r8, [r3, #0x1c8]
  341592: 9b09         	ldr	r3, [sp, #0x24]
  341594: 681b         	ldr	r3, [r3]
  341596: f503 73e0    	add.w	r3, r3, #0x1c0
  34159a: 681b         	ldr	r3, [r3]
  34159c: aa0a         	add	r2, sp, #0x28
  34159e: 4610         	mov	r0, r2
  3415a0: 9909         	ldr	r1, [sp, #0x24]
  3415a2: 4798         	blx	r3
  3415a4: ad02         	add	r5, sp, #0x8
  3415a6: f108 0338    	add.w	r3, r8, #0x38
  3415aa: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3415ac: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  3415b0: f44f 7382    	mov.w	r3, #0x104
  3415b4: 9306         	str	r3, [sp, #0x18]
  3415b6: ab0a         	add	r3, sp, #0x28
  3415b8: 9307         	str	r3, [sp, #0x1c]
  3415ba: 466b         	mov	r3, sp
  3415bc: f104 0230    	add.w	r2, r4, #0x30
  3415c0: e892 0003    	ldm.w	r2, {r0, r1}
  3415c4: e883 0003    	stm.w	r3, {r0, r1}
  3415c8: f104 0328    	add.w	r3, r4, #0x28
  3415cc: cb0c         	ldm	r3, {r2, r3}
  3415ce: 980b         	ldr	r0, [sp, #0x2c]
  3415d0: 4639         	mov	r1, r7
  3415d2: 47b0         	blx	r6
  3415d4: ab0a         	add	r3, sp, #0x28
  3415d6: 4618         	mov	r0, r3
  3415d8: f074 f19c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x474338
  3415dc: f29f f868    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x29f0d0
  3415e0: 4604         	mov	r4, r0
  3415e2: 9b09         	ldr	r3, [sp, #0x24]
  3415e4: 681b         	ldr	r3, [r3]
  3415e6: f503 73e0    	add.w	r3, r3, #0x1c0
  3415ea: 681b         	ldr	r3, [r3]
  3415ec: aa0a         	add	r2, sp, #0x28
  3415ee: 4610         	mov	r0, r2
  3415f0: 9909         	ldr	r1, [sp, #0x24]
  3415f2: 4798         	blx	r3
  3415f4: ab0a         	add	r3, sp, #0x28
  3415f6: 4618         	mov	r0, r3
  3415f8: f258 fa20    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x258440
  3415fc: 4603         	mov	r3, r0
  3415fe: 4620         	mov	r0, r4
  341600: 4a0c         	ldr	r2, [pc, #0x30]         @ 0x341634 <HawkDrone::weaponDidFire(Item*)+0xfc>
  341602: 447a         	add	r2, pc
  341604: 4611         	mov	r1, r2
  341606: 461a         	mov	r2, r3
  341608: f29f fa90    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x29f520
  34160c: ab0a         	add	r3, sp, #0x28
  34160e: 4618         	mov	r0, r3
  341610: f074 f180    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x474300
  341614: e00b         	b	0x34162e <HawkDrone::weaponDidFire(Item*)+0xf6> @ imm = #0x16
  341616: ab0a         	add	r3, sp, #0x28
  341618: 4618         	mov	r0, r3
  34161a: f074 f17b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4742f6
  34161e: f046 f545    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x446a8a
  341622: ab0a         	add	r3, sp, #0x28
  341624: 4618         	mov	r0, r3
  341626: f074 f175    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4742ea
  34162a: f046 f53f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x446a7e
  34162e: b00c         	add	sp, #0x30
  341630: e8bd 81f0    	pop.w	{r4, r5, r6, r7, r8, pc}
  ; --- end of code (Ghidra body ends at 0x341633); words below are literal-pool data ---
  341634: 871e         	strh	r6, [r3, #0x38]
  341636: 0048         	lsls	r0, r1, #0x1

// ==== HawkDrone::weaponDidFire
//      file offset 0x341638 (= ELF address; Ghidra 0x351638), 8 bytes, Thumb-2
  341638: f5a0 70d4    	sub.w	r0, r0, #0x1a8
  34163c: f7ff bf7c    	b.w	0x341538 <HawkDrone::weaponDidFire(Item*)> @ imm = #-0x108

// ==== HawkDrone::setCollisionType
//      file offset 0x341640 (= ELF address; Ghidra 0x351640), 40 bytes, Thumb-2
  341640: b082         	sub	sp, #0x8
  341642: 9001         	str	r0, [sp, #0x4]
  341644: 9100         	str	r1, [sp]
  341646: 9b01         	ldr	r3, [sp, #0x4]
  341648: f8d3 31cc    	ldr.w	r3, [r3, #0x1cc]
  34164c: 9a00         	ldr	r2, [sp]
  34164e: 655a         	str	r2, [r3, #0x54]
  341650: 9b01         	ldr	r3, [sp, #0x4]
  341652: f8d3 31cc    	ldr.w	r3, [r3, #0x1cc]
  341656: 9a00         	ldr	r2, [sp]
  341658: 65da         	str	r2, [r3, #0x5c]
  34165a: 9b01         	ldr	r3, [sp, #0x4]
  34165c: f8d3 31cc    	ldr.w	r3, [r3, #0x1cc]
  341660: 9a00         	ldr	r2, [sp]
  341662: 659a         	str	r2, [r3, #0x58]
  341664: b002         	add	sp, #0x8
  341666: 4770         	bx	lr

// ==== HawkDrone::getPeerID
//      file offset 0x341668 (= ELF address; Ghidra 0x351668), 30 bytes, Thumb-2
  341668: b500         	push	{lr}
  34166a: b083         	sub	sp, #0xc
  34166c: 9001         	str	r0, [sp, #0x4]
  34166e: 9100         	str	r1, [sp]
  341670: 9b00         	ldr	r3, [sp]
  341672: f503 7300    	add.w	r3, r3, #0x200
  341676: 9801         	ldr	r0, [sp, #0x4]
  341678: 4619         	mov	r1, r3
  34167a: f074 f735    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x474e6a
  34167e: 9801         	ldr	r0, [sp, #0x4]
  341680: b003         	add	sp, #0xc
  341682: f85d fb04    	ldr	pc, [sp], #4

// ==== HawkDrone::setPeerID
//      file offset 0x341688 (= ELF address; Ghidra 0x351688), 92 bytes, Thumb-2
  341688: b530         	push	{r4, r5, lr}
  34168a: b085         	sub	sp, #0x14
  34168c: 9001         	str	r0, [sp, #0x4]
  34168e: 9100         	str	r1, [sp]
  341690: 9b01         	ldr	r3, [sp, #0x4]
  341692: f503 7300    	add.w	r3, r3, #0x200
  341696: 4618         	mov	r0, r3
  341698: 9900         	ldr	r1, [sp]
  34169a: f074 f78b    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x474f16
  34169e: 9b01         	ldr	r3, [sp, #0x4]
  3416a0: 681b         	ldr	r3, [r3]
  3416a2: f503 7303    	add.w	r3, r3, #0x20c
  3416a6: 681b         	ldr	r3, [r3]
  3416a8: 9801         	ldr	r0, [sp, #0x4]
  3416aa: 4798         	blx	r3
  3416ac: 4603         	mov	r3, r0
  3416ae: 461c         	mov	r4, r3
  3416b0: 6823         	ldr	r3, [r4]
  3416b2: f503 73f8    	add.w	r3, r3, #0x1f0
  3416b6: 681d         	ldr	r5, [r3]
  3416b8: ab03         	add	r3, sp, #0xc
  3416ba: 4618         	mov	r0, r3
  3416bc: 9900         	ldr	r1, [sp]
  3416be: f074 f713    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x474e26
  3416c2: ab03         	add	r3, sp, #0xc
  3416c4: 4620         	mov	r0, r4
  3416c6: 4619         	mov	r1, r3
  3416c8: 47a8         	blx	r5
  3416ca: ab03         	add	r3, sp, #0xc
  3416cc: 4618         	mov	r0, r3
  3416ce: f074 f121    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x474242
  3416d2: e005         	b	0x3416e0 <HawkDrone::setPeerID(std::string)+0x58> @ imm = #0xa
  3416d4: ab03         	add	r3, sp, #0xc
  3416d6: 4618         	mov	r0, r3
  3416d8: f074 f11c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x474238
  3416dc: f046 f4e6    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4469cc
  3416e0: b005         	add	sp, #0x14
  3416e2: bd30         	pop	{r4, r5, pc}

// ==== HawkDrone::setHP
//      file offset 0x3416e4 (= ELF address; Ghidra 0x3516e4), 18 bytes, Thumb-2
  3416e4: b082         	sub	sp, #0x8
  3416e6: 9001         	str	r0, [sp, #0x4]
  3416e8: 9100         	str	r1, [sp]
  3416ea: 9b01         	ldr	r3, [sp, #0x4]
  3416ec: 9a00         	ldr	r2, [sp]
  3416ee: f8c3 21ac    	str.w	r2, [r3, #0x1ac]
  3416f2: b002         	add	sp, #0x8
  3416f4: 4770         	bx	lr

// ==== HawkDrone::setRemoteFireAngle
//      file offset 0x3416f8 (= ELF address; Ghidra 0x3516f8), 18 bytes, Thumb-2
  3416f8: b082         	sub	sp, #0x8
  3416fa: 9001         	str	r0, [sp, #0x4]
  3416fc: 9100         	str	r1, [sp]
  3416fe: 9b01         	ldr	r3, [sp, #0x4]
  341700: 9a00         	ldr	r2, [sp]
  341702: f8c3 2198    	str.w	r2, [r3, #0x198]
  341706: b002         	add	sp, #0x8
  341708: 4770         	bx	lr

// ==== HawkDrone::setRemoteFire
//      file offset 0x34170c (= ELF address; Ghidra 0x35170c), 24 bytes, Thumb-2
  34170c: b082         	sub	sp, #0x8
  34170e: 9001         	str	r0, [sp, #0x4]
  341710: 460b         	mov	r3, r1
  341712: f88d 3003    	strb.w	r3, [sp, #0x3]
  341716: 9b01         	ldr	r3, [sp, #0x4]
  341718: f89d 2003    	ldrb.w	r2, [sp, #0x3]
  34171c: f883 219c    	strb.w	r2, [r3, #0x19c]
  341720: b002         	add	sp, #0x8
  341722: 4770         	bx	lr
