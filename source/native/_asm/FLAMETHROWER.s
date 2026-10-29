// FLAMETHROWER: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 20 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../FLAMETHROWER.cpp

// ==== FLAMETHROWER::FLAMETHROWER
//      file offset 0x32061c (= ELF address; Ghidra 0x33061c), 44 bytes, Thumb-2
  32061c: b510         	push	{r4, lr}
  32061e: b082         	sub	sp, #0x8
  320620: 9001         	str	r0, [sp, #0x4]
  320622: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x320640 <FLAMETHROWER::FLAMETHROWER()+0x24>
  320624: 447c         	add	r4, pc
  320626: 9b01         	ldr	r3, [sp, #0x4]
  320628: 4618         	mov	r0, r3
  32062a: f0f4 fcbd    	bl	0x414fa8 <Weapon::Weapon()> @ imm = #0xf497a
  32062e: 9b01         	ldr	r3, [sp, #0x4]
  320630: 4a04         	ldr	r2, [pc, #0x10]         @ 0x320644 <FLAMETHROWER::FLAMETHROWER()+0x28>
  320632: 58a2         	ldr	r2, [r4, r2]
  320634: 3208         	adds	r2, #0x8
  320636: 601a         	str	r2, [r3]
  320638: 9b01         	ldr	r3, [sp, #0x4]
  32063a: 4618         	mov	r0, r3
  32063c: b002         	add	sp, #0x8
  32063e: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x32063f); words below are literal-pool data ---
  320640: 23e4         	movs	r3, #0xe4
  320642: 0061         	lsls	r1, r4, #0x1
  320644: da28         	bge	0x320698 <FLAMETHROWER::init()+0x50> @ imm = #0x50
  320646: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== FLAMETHROWER::init
//      file offset 0x320648 (= ELF address; Ghidra 0x330648), 644 bytes, Thumb-2
  320648: b510         	push	{r4, lr}
  32064a: b088         	sub	sp, #0x20
  32064c: 9005         	str	r0, [sp, #0x14]
  32064e: 9b05         	ldr	r3, [sp, #0x14]
  320650: 4618         	mov	r0, r3
  320652: f0f4 fccd    	bl	0x414ff0 <Weapon::init()> @ imm = #0xf499a
  320656: 4603         	mov	r3, r0
  320658: f88d 301b    	strb.w	r3, [sp, #0x1b]
  32065c: f89d 301b    	ldrb.w	r3, [sp, #0x1b]
  320660: f083 0301    	eor	r3, r3, #0x1
  320664: b2db         	uxtb	r3, r3
  320666: 2b00         	cmp	r3, #0x0
  320668: d001         	beq	0x32066e <FLAMETHROWER::init()+0x26> @ imm = #0x2
  32066a: 2300         	movs	r3, #0x0
  32066c: e118         	b	0x3208a0 <FLAMETHROWER::init()+0x258> @ imm = #0x230
  32066e: 4b92         	ldr	r3, [pc, #0x248]        @ 0x3208b8 <FLAMETHROWER::init()+0x270>
  320670: 447b         	add	r3, pc
  320672: 4618         	mov	r0, r3
  320674: f2b7 fe46    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2b7c8c
  320678: 4602         	mov	r2, r0
  32067a: 9b05         	ldr	r3, [sp, #0x14]
  32067c: f8c3 21ec    	str.w	r2, [r3, #0x1ec]
  320680: 9b05         	ldr	r3, [sp, #0x14]
  320682: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  320686: 4618         	mov	r0, r3
  320688: f277 fc2e    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x27785c
  32068c: 9b05         	ldr	r3, [sp, #0x14]
  32068e: 681b         	ldr	r3, [r3]
  320690: f503 73f0    	add.w	r3, r3, #0x1e0
  320694: 681b         	ldr	r3, [r3]
  320696: 9805         	ldr	r0, [sp, #0x14]
  320698: 4798         	blx	r3
  32069a: 9b05         	ldr	r3, [sp, #0x14]
  32069c: 681b         	ldr	r3, [r3]
  32069e: 33cc         	adds	r3, #0xcc
  3206a0: 681b         	ldr	r3, [r3]
  3206a2: 9905         	ldr	r1, [sp, #0x14]
  3206a4: 9a05         	ldr	r2, [sp, #0x14]
  3206a6: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3206aa: 4608         	mov	r0, r1
  3206ac: 4611         	mov	r1, r2
  3206ae: 2200         	movs	r2, #0x0
  3206b0: 4798         	blx	r3
  3206b2: 9b05         	ldr	r3, [sp, #0x14]
  3206b4: f8d3 4150    	ldr.w	r4, [r3, #0x150]
  3206b8: f04f 507e    	mov.w	r0, #0x3f800000
  3206bc: f7bc fae2    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x43a3c
  3206c0: 4603         	mov	r3, r0
  3206c2: 4620         	mov	r0, r4
  3206c4: 4619         	mov	r1, r3
  3206c6: f279 fdd1    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x279ba2
  3206ca: 9b05         	ldr	r3, [sp, #0x14]
  3206cc: f8d3 414c    	ldr.w	r4, [r3, #0x14c]
  3206d0: ab06         	add	r3, sp, #0x18
  3206d2: 4618         	mov	r0, r3
  3206d4: f069 f68e    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x469d1c
  3206d8: aa07         	add	r2, sp, #0x1c
  3206da: ab06         	add	r3, sp, #0x18
  3206dc: 4610         	mov	r0, r2
  3206de: 4a77         	ldr	r2, [pc, #0x1dc]        @ 0x3208bc <FLAMETHROWER::init()+0x274>
  3206e0: 447a         	add	r2, pc
  3206e2: 4611         	mov	r1, r2
  3206e4: 461a         	mov	r2, r3
  3206e6: f096 f1bb    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x496376
  3206ea: ab07         	add	r3, sp, #0x1c
  3206ec: 4618         	mov	r0, r3
  3206ee: f279 f9a5    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x27934a
  3206f2: 4603         	mov	r3, r0
  3206f4: 4620         	mov	r0, r4
  3206f6: 4619         	mov	r1, r3
  3206f8: f279 fdb8    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x279b70
  3206fc: ab07         	add	r3, sp, #0x1c
  3206fe: 4618         	mov	r0, r3
  320700: f095 f108    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x495210
  320704: ab06         	add	r3, sp, #0x18
  320706: 4618         	mov	r0, r3
  320708: f069 f678    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x469cf0
  32070c: 9b05         	ldr	r3, [sp, #0x14]
  32070e: f8d3 4150    	ldr.w	r4, [r3, #0x150]
  320712: f246 6066    	movw	r0, #0x6666
  320716: f6c3 7066    	movt	r0, #0x3f66
  32071a: f7bc fab3    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x43a9a
  32071e: 4603         	mov	r3, r0
  320720: 4620         	mov	r0, r4
  320722: 4619         	mov	r1, r3
  320724: f279 fda2    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x279b44
  320728: 9b05         	ldr	r3, [sp, #0x14]
  32072a: f8d3 414c    	ldr.w	r4, [r3, #0x14c]
  32072e: ab06         	add	r3, sp, #0x18
  320730: 4618         	mov	r0, r3
  320732: f069 f65f    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x469cbe
  320736: aa07         	add	r2, sp, #0x1c
  320738: ab06         	add	r3, sp, #0x18
  32073a: 4610         	mov	r0, r2
  32073c: 4a60         	ldr	r2, [pc, #0x180]        @ 0x3208c0 <FLAMETHROWER::init()+0x278>
  32073e: 447a         	add	r2, pc
  320740: 4611         	mov	r1, r2
  320742: 461a         	mov	r2, r3
  320744: f096 f18c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x496318
  320748: ab07         	add	r3, sp, #0x1c
  32074a: 4618         	mov	r0, r3
  32074c: f279 f976    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2792ec
  320750: 4603         	mov	r3, r0
  320752: 4620         	mov	r0, r4
  320754: 4619         	mov	r1, r3
  320756: f279 fd89    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x279b12
  32075a: ab07         	add	r3, sp, #0x1c
  32075c: 4618         	mov	r0, r3
  32075e: f095 f0d9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4951b2
  320762: ab06         	add	r3, sp, #0x18
  320764: 4618         	mov	r0, r3
  320766: f069 f649    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x469c92
  32076a: 9b05         	ldr	r3, [sp, #0x14]
  32076c: 2200         	movs	r2, #0x0
  32076e: f8c3 2144    	str.w	r2, [r3, #0x144]
  320772: 9b05         	ldr	r3, [sp, #0x14]
  320774: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  320778: 4618         	mov	r0, r3
  32077a: 2100         	movs	r1, #0x0
  32077c: f279 fcd0    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2799a0
  320780: 4603         	mov	r3, r0
  320782: 4618         	mov	r0, r3
  320784: f7bc fa76    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x43b14
  320788: 4602         	mov	r2, r0
  32078a: 9b05         	ldr	r3, [sp, #0x14]
  32078c: f8c3 2148    	str.w	r2, [r3, #0x148]
  320790: 9b05         	ldr	r3, [sp, #0x14]
  320792: f649 129a    	movw	r2, #0x999a
  320796: f6c3 6219    	movt	r2, #0x3e19
  32079a: f8c3 215c    	str.w	r2, [r3, #0x15c]
  32079e: 9b05         	ldr	r3, [sp, #0x14]
  3207a0: f04f 0200    	mov.w	r2, #0x0
  3207a4: f8c3 2160    	str.w	r2, [r3, #0x160]
  3207a8: 9b05         	ldr	r3, [sp, #0x14]
  3207aa: f04f 0200    	mov.w	r2, #0x0
  3207ae: f2c4 02a0    	movt	r2, #0x40a0
  3207b2: f8c3 2164    	str.w	r2, [r3, #0x164]
  3207b6: 9b05         	ldr	r3, [sp, #0x14]
  3207b8: f04f 0200    	mov.w	r2, #0x0
  3207bc: f2c4 0240    	movt	r2, #0x4040
  3207c0: f8c3 216c    	str.w	r2, [r3, #0x16c]
  3207c4: 9b05         	ldr	r3, [sp, #0x14]
  3207c6: 2264         	movs	r2, #0x64
  3207c8: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  3207cc: 9b05         	ldr	r3, [sp, #0x14]
  3207ce: 2219         	movs	r2, #0x19
  3207d0: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  3207d4: 9b05         	ldr	r3, [sp, #0x14]
  3207d6: 225a         	movs	r2, #0x5a
  3207d8: f8c3 218c    	str.w	r2, [r3, #0x18c]
  3207dc: 9b05         	ldr	r3, [sp, #0x14]
  3207de: 2200         	movs	r2, #0x0
  3207e0: f883 2181    	strb.w	r2, [r3, #0x181]
  3207e4: 9b05         	ldr	r3, [sp, #0x14]
  3207e6: 2213         	movs	r2, #0x13
  3207e8: f8c3 2188    	str.w	r2, [r3, #0x188]
  3207ec: 9b05         	ldr	r3, [sp, #0x14]
  3207ee: 2228         	movs	r2, #0x28
  3207f0: f8c3 219c    	str.w	r2, [r3, #0x19c]
  3207f4: 9b05         	ldr	r3, [sp, #0x14]
  3207f6: 2232         	movs	r2, #0x32
  3207f8: f8c3 21a0    	str.w	r2, [r3, #0x1a0]
  3207fc: 4b31         	ldr	r3, [pc, #0xc4]         @ 0x3208c4 <FLAMETHROWER::init()+0x27c>
  3207fe: 447b         	add	r3, pc
  320800: 681a         	ldr	r2, [r3]
  320802: 9b05         	ldr	r3, [sp, #0x14]
  320804: f8c3 21a4    	str.w	r2, [r3, #0x1a4]
  320808: 9b05         	ldr	r3, [sp, #0x14]
  32080a: 2201         	movs	r2, #0x1
  32080c: f8c3 21b4    	str.w	r2, [r3, #0x1b4]
  320810: 9b05         	ldr	r3, [sp, #0x14]
  320812: f04f 0200    	mov.w	r2, #0x0
  320816: f2cc 12c8    	movt	r2, #0xc1c8
  32081a: f8c3 21b8    	str.w	r2, [r3, #0x1b8]
  32081e: 9b05         	ldr	r3, [sp, #0x14]
  320820: f649 129a    	movw	r2, #0x999a
  320824: f6c3 7259    	movt	r2, #0x3f59
  320828: f8c3 21cc    	str.w	r2, [r3, #0x1cc]
  32082c: 9b05         	ldr	r3, [sp, #0x14]
  32082e: f44f 72fa    	mov.w	r2, #0x1f4
  320832: f8c3 21bc    	str.w	r2, [r3, #0x1bc]
  320836: 9b05         	ldr	r3, [sp, #0x14]
  320838: 2219         	movs	r2, #0x19
  32083a: f8c3 2170    	str.w	r2, [r3, #0x170]
  32083e: 9b05         	ldr	r3, [sp, #0x14]
  320840: 2264         	movs	r2, #0x64
  320842: f8c3 2174    	str.w	r2, [r3, #0x174]
  320846: 9c05         	ldr	r4, [sp, #0x14]
  320848: 466b         	mov	r3, sp
  32084a: 4618         	mov	r0, r3
  32084c: ed9f 0b16    	vldr	d0, [pc, #88]           @ 0x3208a8 <FLAMETHROWER::init()+0x260>
  320850: ed9f 1b17    	vldr	d1, [pc, #92]           @ 0x3208b0 <FLAMETHROWER::init()+0x268>
  320854: f7ff f80c    	bl	0x31f870 <FLAME::setActive(bool)+0x1a0> @ imm = #-0xfe8
  320858: f504 74ec    	add.w	r4, r4, #0x1d8
  32085c: 466b         	mov	r3, sp
  32085e: cb0f         	ldm	r3, {r0, r1, r2, r3}
  320860: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  320864: 4b18         	ldr	r3, [pc, #0x60]         @ 0x3208c8 <FLAMETHROWER::init()+0x280>
  320866: 447b         	add	r3, pc
  320868: 681a         	ldr	r2, [r3]
  32086a: 9b05         	ldr	r3, [sp, #0x14]
  32086c: f8c3 2198    	str.w	r2, [r3, #0x198]
  320870: 2301         	movs	r3, #0x1
  320872: e015         	b	0x3208a0 <FLAMETHROWER::init()+0x258> @ imm = #0x2a
  320874: ab07         	add	r3, sp, #0x1c
  320876: 4618         	mov	r0, r3
  320878: f095 f04c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x495098
  32087c: e7ff         	b	0x32087e <FLAMETHROWER::init()+0x236> @ imm = #-0x2
  32087e: ab06         	add	r3, sp, #0x18
  320880: 4618         	mov	r0, r3
  320882: f069 f5bb    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x469b76
  320886: f067 f411    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x467822
  32088a: ab07         	add	r3, sp, #0x1c
  32088c: 4618         	mov	r0, r3
  32088e: f095 f041    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x495082
  320892: e7ff         	b	0x320894 <FLAMETHROWER::init()+0x24c> @ imm = #-0x2
  320894: ab06         	add	r3, sp, #0x18
  320896: 4618         	mov	r0, r3
  320898: f069 f5b0    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x469b60
  32089c: f067 f406    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46780c
  3208a0: 4618         	mov	r0, r3
  3208a2: b008         	add	sp, #0x20
  3208a4: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3208a5); words below are literal-pool data ---
  3208a6: bf00         	nop
  3208a8: 0000         	movs	r0, r0
  3208aa: 0000         	movs	r0, r0
  3208ac: 8000         	strh	r0, [r0]
  3208ae: 4056         	eors	r6, r2
  3208b0: 0000         	movs	r0, r0
  3208b2: 0000         	movs	r0, r0
  3208b4: 0000         	movs	r0, r0
  3208b6: 4048         	eors	r0, r1
  3208b8: 70fc         	strb	r4, [r7, #0x3]
  3208ba: 004a         	lsls	r2, r1, #0x1
  3208bc: 70a0         	strb	r0, [r4, #0x2]
  3208be: 004a         	lsls	r2, r1, #0x1
  3208c0: 7046         	strb	r6, [r0, #0x1]
  3208c2: 004a         	lsls	r2, r1, #0x1
  3208c4: 2b06         	cmp	r3, #0x6
  3208c6: 0061         	lsls	r1, r4, #0x1
  3208c8: 2a9a         	cmp	r2, #0x9a
  3208ca: 0061         	lsls	r1, r4, #0x1

// ==== FLAMETHROWER::~FLAMETHROWER
//      file offset 0x3208d0 (= ELF address; Ghidra 0x3308d0), 80 bytes, Thumb-2
  3208d0: b500         	push	{lr}
  3208d2: b083         	sub	sp, #0xc
  3208d4: 9001         	str	r0, [sp, #0x4]
  3208d6: 4910         	ldr	r1, [pc, #0x40]         @ 0x320918 <FLAMETHROWER::~FLAMETHROWER()+0x48>
  3208d8: 4479         	add	r1, pc
  3208da: 9b01         	ldr	r3, [sp, #0x4]
  3208dc: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x32091c <FLAMETHROWER::~FLAMETHROWER()+0x4c>
  3208de: 588a         	ldr	r2, [r1, r2]
  3208e0: 3208         	adds	r2, #0x8
  3208e2: 601a         	str	r2, [r3]
  3208e4: 9b01         	ldr	r3, [sp, #0x4]
  3208e6: 4618         	mov	r0, r3
  3208e8: f26f fea0    	bl	0x59062c <cocos2d::CCNode::removeAllChildren()> @ imm = #0x26fd40
  3208ec: 9b01         	ldr	r3, [sp, #0x4]
  3208ee: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3208f2: 4618         	mov	r0, r3
  3208f4: f277 fae0    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2775c0
  3208f8: 9b01         	ldr	r3, [sp, #0x4]
  3208fa: 4618         	mov	r0, r3
  3208fc: f0f4 fc78    	bl	0x4151f0 <Weapon::~Weapon()> @ imm = #0xf48f0
  320900: 2300         	movs	r3, #0x0
  320902: 2b00         	cmp	r3, #0x0
  320904: d002         	beq	0x32090c <FLAMETHROWER::~FLAMETHROWER()+0x3c> @ imm = #0x4
  320906: 9801         	ldr	r0, [sp, #0x4]
  320908: f067 f3cc    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x467798
  32090c: 9b01         	ldr	r3, [sp, #0x4]
  32090e: 4618         	mov	r0, r3
  320910: b003         	add	sp, #0xc
  320912: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x320915); words below are literal-pool data ---
  320916: bf00         	nop
  320918: 2130         	movs	r1, #0x30
  32091a: 0061         	lsls	r1, r4, #0x1
  32091c: da28         	bge	0x320970 <FLAMETHROWER::triggerPull(float)+0x34> @ imm = #0x50
  32091e: ffff b500    	<unknown>

// ==== FLAMETHROWER::~FLAMETHROWER
//      file offset 0x320920 (= ELF address; Ghidra 0x330920), 28 bytes, Thumb-2
  320920: b500         	push	{lr}
  320922: b083         	sub	sp, #0xc
  320924: 9001         	str	r0, [sp, #0x4]
  320926: 9801         	ldr	r0, [sp, #0x4]
  320928: f7ff ffd2    	bl	0x3208d0 <FLAMETHROWER::~FLAMETHROWER()> @ imm = #-0x5c
  32092c: 9801         	ldr	r0, [sp, #0x4]
  32092e: f067 f3b9    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x467772
  320932: 9b01         	ldr	r3, [sp, #0x4]
  320934: 4618         	mov	r0, r3
  320936: b003         	add	sp, #0xc
  320938: f85d fb04    	ldr	pc, [sp], #4

// ==== FLAMETHROWER::triggerPull
//      file offset 0x32093c (= ELF address; Ghidra 0x33093c), 336 bytes, Thumb-2
  32093c: b510         	push	{r4, lr}
  32093e: b088         	sub	sp, #0x20
  320940: 9003         	str	r0, [sp, #0xc]
  320942: 9102         	str	r1, [sp, #0x8]
  320944: 4c4f         	ldr	r4, [pc, #0x13c]        @ 0x320a84 <FLAMETHROWER::triggerPull(float)+0x148>
  320946: 447c         	add	r4, pc
  320948: 9b03         	ldr	r3, [sp, #0xc]
  32094a: ed93 7a44    	vldr	s14, [r3, #272]
  32094e: 9b03         	ldr	r3, [sp, #0xc]
  320950: edd3 7a57    	vldr	s15, [r3, #348]
  320954: eeb4 7ae7    	vcmpe.f32	s14, s15
  320958: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  32095c: dd69         	ble	0x320a32 <FLAMETHROWER::triggerPull(float)+0xf6> @ imm = #0xd2
  32095e: 9b03         	ldr	r3, [sp, #0xc]
  320960: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  320964: b21b         	sxth	r3, r3
  320966: 2b00         	cmp	r3, #0x0
  320968: dd0f         	ble	0x32098a <FLAMETHROWER::triggerPull(float)+0x4e> @ imm = #0x1e
  32096a: 9b03         	ldr	r3, [sp, #0xc]
  32096c: 681b         	ldr	r3, [r3]
  32096e: f503 7333    	add.w	r3, r3, #0x2cc
  320972: 681b         	ldr	r3, [r3]
  320974: 9a03         	ldr	r2, [sp, #0xc]
  320976: 4610         	mov	r0, r2
  320978: 4798         	blx	r3
  32097a: 4603         	mov	r3, r0
  32097c: f083 0301    	eor	r3, r3, #0x1
  320980: b2db         	uxtb	r3, r3
  320982: 2b00         	cmp	r3, #0x0
  320984: d001         	beq	0x32098a <FLAMETHROWER::triggerPull(float)+0x4e> @ imm = #0x2
  320986: 2301         	movs	r3, #0x1
  320988: e000         	b	0x32098c <FLAMETHROWER::triggerPull(float)+0x50> @ imm = #0x0
  32098a: 2300         	movs	r3, #0x0
  32098c: 2b00         	cmp	r3, #0x0
  32098e: d024         	beq	0x3209da <FLAMETHROWER::triggerPull(float)+0x9e> @ imm = #0x48
  320990: 9b03         	ldr	r3, [sp, #0xc]
  320992: 2201         	movs	r2, #0x1
  320994: f883 2180    	strb.w	r2, [r3, #0x180]
  320998: 9b03         	ldr	r3, [sp, #0xc]
  32099a: 681b         	ldr	r3, [r3]
  32099c: f503 7325    	add.w	r3, r3, #0x294
  3209a0: 681b         	ldr	r3, [r3]
  3209a2: 9803         	ldr	r0, [sp, #0xc]
  3209a4: 4798         	blx	r3
  3209a6: 9b03         	ldr	r3, [sp, #0xc]
  3209a8: 681b         	ldr	r3, [r3]
  3209aa: f503 7342    	add.w	r3, r3, #0x308
  3209ae: 681b         	ldr	r3, [r3]
  3209b0: 9a03         	ldr	r2, [sp, #0xc]
  3209b2: 4610         	mov	r0, r2
  3209b4: 4798         	blx	r3
  3209b6: 9b03         	ldr	r3, [sp, #0xc]
  3209b8: f893 3195    	ldrb.w	r3, [r3, #0x195]
  3209bc: 3301         	adds	r3, #0x1
  3209be: b2da         	uxtb	r2, r3
  3209c0: 9b03         	ldr	r3, [sp, #0xc]
  3209c2: f883 2195    	strb.w	r2, [r3, #0x195]
  3209c6: 9b03         	ldr	r3, [sp, #0xc]
  3209c8: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  3209cc: b29b         	uxth	r3, r3
  3209ce: 3b00         	subs	r3, #0x0
  3209d0: b29a         	uxth	r2, r3
  3209d2: 9b03         	ldr	r3, [sp, #0xc]
  3209d4: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  3209d8: e026         	b	0x320a28 <FLAMETHROWER::triggerPull(float)+0xec> @ imm = #0x4c
  3209da: 9b03         	ldr	r3, [sp, #0xc]
  3209dc: 681b         	ldr	r3, [r3]
  3209de: f503 7333    	add.w	r3, r3, #0x2cc
  3209e2: 681b         	ldr	r3, [r3]
  3209e4: 9a03         	ldr	r2, [sp, #0xc]
  3209e6: 4610         	mov	r0, r2
  3209e8: 4798         	blx	r3
  3209ea: 4603         	mov	r3, r0
  3209ec: f083 0301    	eor	r3, r3, #0x1
  3209f0: b2db         	uxtb	r3, r3
  3209f2: 2b00         	cmp	r3, #0x0
  3209f4: d018         	beq	0x320a28 <FLAMETHROWER::triggerPull(float)+0xec> @ imm = #0x30
  3209f6: 4b24         	ldr	r3, [pc, #0x90]         @ 0x320a88 <FLAMETHROWER::triggerPull(float)+0x14c>
  3209f8: 58e3         	ldr	r3, [r4, r3]
  3209fa: 681c         	ldr	r4, [r3]
  3209fc: 9b03         	ldr	r3, [sp, #0xc]
  3209fe: 681b         	ldr	r3, [r3]
  320a00: f503 7348    	add.w	r3, r3, #0x320
  320a04: 681b         	ldr	r3, [r3]
  320a06: 9a03         	ldr	r2, [sp, #0xc]
  320a08: a904         	add	r1, sp, #0x10
  320a0a: 4608         	mov	r0, r1
  320a0c: 4611         	mov	r1, r2
  320a0e: 4798         	blx	r3
  320a10: 466b         	mov	r3, sp
  320a12: aa06         	add	r2, sp, #0x18
  320a14: e892 0003    	ldm.w	r2, {r0, r1}
  320a18: e883 0003    	stm.w	r3, {r0, r1}
  320a1c: ab04         	add	r3, sp, #0x10
  320a1e: cb0c         	ldm	r3, {r2, r3}
  320a20: 4620         	mov	r0, r4
  320a22: 2100         	movs	r1, #0x0
  320a24: f0d7 fae8    	bl	0x3f7ff8 <Sound::playSoundPosition(int, cpVect)> @ imm = #0xd75d0
  320a28: 9b03         	ldr	r3, [sp, #0xc]
  320a2a: f04f 0200    	mov.w	r2, #0x0
  320a2e: f8c3 2110    	str.w	r2, [r3, #0x110]
  320a32: 9b03         	ldr	r3, [sp, #0xc]
  320a34: 681b         	ldr	r3, [r3]
  320a36: f503 7333    	add.w	r3, r3, #0x2cc
  320a3a: 681b         	ldr	r3, [r3]
  320a3c: 9a03         	ldr	r2, [sp, #0xc]
  320a3e: 4610         	mov	r0, r2
  320a40: 4798         	blx	r3
  320a42: 4603         	mov	r3, r0
  320a44: f083 0301    	eor	r3, r3, #0x1
  320a48: b2db         	uxtb	r3, r3
  320a4a: 2b00         	cmp	r3, #0x0
  320a4c: d00c         	beq	0x320a68 <FLAMETHROWER::triggerPull(float)+0x12c> @ imm = #0x18
  320a4e: 9b03         	ldr	r3, [sp, #0xc]
  320a50: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  320a54: 2b00         	cmp	r3, #0x0
  320a56: d107         	bne	0x320a68 <FLAMETHROWER::triggerPull(float)+0x12c> @ imm = #0xe
  320a58: 9b03         	ldr	r3, [sp, #0xc]
  320a5a: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  320a5e: b21b         	sxth	r3, r3
  320a60: 2b00         	cmp	r3, #0x0
  320a62: dd01         	ble	0x320a68 <FLAMETHROWER::triggerPull(float)+0x12c> @ imm = #0x2
  320a64: 2301         	movs	r3, #0x1
  320a66: e000         	b	0x320a6a <FLAMETHROWER::triggerPull(float)+0x12e> @ imm = #0x0
  320a68: 2300         	movs	r3, #0x0
  320a6a: 2b00         	cmp	r3, #0x0
  320a6c: d008         	beq	0x320a80 <FLAMETHROWER::triggerPull(float)+0x144> @ imm = #0x10
  320a6e: 9b03         	ldr	r3, [sp, #0xc]
  320a70: 2201         	movs	r2, #0x1
  320a72: f883 2181    	strb.w	r2, [r3, #0x181]
  320a76: 9b03         	ldr	r3, [sp, #0xc]
  320a78: f04f 0200    	mov.w	r2, #0x0
  320a7c: f8c3 2158    	str.w	r2, [r3, #0x158]
  320a80: b008         	add	sp, #0x20
  320a82: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x320a83); words below are literal-pool data ---
  320a84: 20c2         	movs	r0, #0xc2
  320a86: 0061         	lsls	r1, r4, #0x1
  320a88: d730         	bvc	0x320aec <FLAMETHROWER::doFire(float, cpVect, cpVect, int, std::string)+0x60> @ imm = #0x60
  320a8a: ffff b082    	<unknown>

// ==== FLAMETHROWER::doFire
//      file offset 0x320a8c (= ELF address; Ghidra 0x330a8c), 256 bytes, Thumb-2
  320a8c: b082         	sub	sp, #0x8
  320a8e: e92d 4ff0    	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  320a92: b08d         	sub	sp, #0x34
  320a94: 9007         	str	r0, [sp, #0x1c]
  320a96: 9106         	str	r1, [sp, #0x18]
  320a98: a916         	add	r1, sp, #0x58
  320a9a: e881 000c    	stm.w	r1, {r2, r3}
  320a9e: 9f07         	ldr	r7, [sp, #0x1c]
  320aa0: 9806         	ldr	r0, [sp, #0x18]
  320aa2: f7bc f8ef    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x43e22
  320aa6: 4606         	mov	r6, r0
  320aa8: ed9d 7b1a    	vldr	d7, [sp, #104]
  320aac: eef7 7bc7    	vcvt.f32.f64	s15, d7
  320ab0: ee17 0a90    	vmov	r0, s15
  320ab4: f7bc f8e6    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x43e34
  320ab8: 4605         	mov	r5, r0
  320aba: ed9d 7b1c    	vldr	d7, [sp, #112]
  320abe: eef7 7bc7    	vcvt.f32.f64	s15, d7
  320ac2: ee17 0a90    	vmov	r0, s15
  320ac6: f7bc f8dd    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x43e46
  320aca: 4604         	mov	r4, r0
  320acc: ed9d 7b16    	vldr	d7, [sp, #88]
  320ad0: eef7 7bc7    	vcvt.f32.f64	s15, d7
  320ad4: ee17 0a90    	vmov	r0, s15
  320ad8: f7bc f8d4    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x43e58
  320adc: 4682         	mov	r10, r0
  320ade: ed9d 7b18    	vldr	d7, [sp, #96]
  320ae2: eef7 7bc7    	vcvt.f32.f64	s15, d7
  320ae6: ee17 0a90    	vmov	r0, s15
  320aea: f7bc f8cb    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x43e6a
  320aee: 4681         	mov	r9, r0
  320af0: 981e         	ldr	r0, [sp, #0x78]
  320af2: f7c4 f909    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x3bdee
  320af6: 4680         	mov	r8, r0
  320af8: 981f         	ldr	r0, [sp, #0x7c]
  320afa: f094 f401    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x494802
  320afe: 4683         	mov	r11, r0
  320b00: ab09         	add	r3, sp, #0x24
  320b02: 4618         	mov	r0, r3
  320b04: f069 f476    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4698ec
  320b08: aa0a         	add	r2, sp, #0x28
  320b0a: ab09         	add	r3, sp, #0x24
  320b0c: 4610         	mov	r0, r2
  320b0e: 4659         	mov	r1, r11
  320b10: 461a         	mov	r2, r3
  320b12: f095 f7a5    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x495f4a
  320b16: ab0a         	add	r3, sp, #0x28
  320b18: 4618         	mov	r0, r3
  320b1a: f278 ff8f    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x278f1e
  320b1e: 4603         	mov	r3, r0
  320b20: f8cd a000    	str.w	r10, [sp]
  320b24: f8cd 9004    	str.w	r9, [sp, #0x4]
  320b28: f8cd 8008    	str.w	r8, [sp, #0x8]
  320b2c: 9303         	str	r3, [sp, #0xc]
  320b2e: 2300         	movs	r3, #0x0
  320b30: 9304         	str	r3, [sp, #0x10]
  320b32: 4638         	mov	r0, r7
  320b34: 4631         	mov	r1, r6
  320b36: 462a         	mov	r2, r5
  320b38: 4623         	mov	r3, r4
  320b3a: f279 f969    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x2792d2
  320b3e: 4603         	mov	r3, r0
  320b40: 930b         	str	r3, [sp, #0x2c]
  320b42: ab0a         	add	r3, sp, #0x28
  320b44: 4618         	mov	r0, r3
  320b46: f094 f6e5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x494dca
  320b4a: ab09         	add	r3, sp, #0x24
  320b4c: 4618         	mov	r0, r3
  320b4e: f069 f455    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4698aa
  320b52: f2bf fdad    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2bfb5a
  320b56: 4603         	mov	r3, r0
  320b58: 4618         	mov	r0, r3
  320b5a: 4b0b         	ldr	r3, [pc, #0x2c]         @ 0x320b88 <FLAMETHROWER::doFire(float, cpVect, cpVect, int, std::string)+0xfc>
  320b5c: 447b         	add	r3, pc
  320b5e: 4619         	mov	r1, r3
  320b60: 9a0b         	ldr	r2, [sp, #0x2c]
  320b62: f2bf ffe3    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x2bffc6
  320b66: e00a         	b	0x320b7e <FLAMETHROWER::doFire(float, cpVect, cpVect, int, std::string)+0xf2> @ imm = #0x14
  320b68: ab0a         	add	r3, sp, #0x28
  320b6a: 4618         	mov	r0, r3
  320b6c: f094 f6d2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x494da4
  320b70: e7ff         	b	0x320b72 <FLAMETHROWER::doFire(float, cpVect, cpVect, int, std::string)+0xe6> @ imm = #-0x2
  320b72: ab09         	add	r3, sp, #0x24
  320b74: 4618         	mov	r0, r3
  320b76: f069 f441    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x469882
  320b7a: f067 f297    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46752e
  320b7e: b00d         	add	sp, #0x34
  320b80: e8bd 4ff0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  320b84: b002         	add	sp, #0x8
  320b86: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x320b87); words below are literal-pool data ---
  320b88: 6c2c         	ldr	r4, [r5, #0x40]
  320b8a: 004a         	lsls	r2, r1, #0x1

// ==== FLAMETHROWER::updateFlames
//      file offset 0x320b8c (= ELF address; Ghidra 0x330b8c), 10 bytes, Thumb-2
  320b8c: b082         	sub	sp, #0x8
  320b8e: 9001         	str	r0, [sp, #0x4]
  320b90: 9100         	str	r1, [sp]
  320b92: b002         	add	sp, #0x8
  320b94: 4770         	bx	lr

// ==== FLAMETHROWER::updateItemStep
//      file offset 0x320b98 (= ELF address; Ghidra 0x330b98), 260 bytes, Thumb-2
  320b98: b500         	push	{lr}
  320b9a: ed2d 8b02    	vpush	{d8}
  320b9e: b085         	sub	sp, #0x14
  320ba0: 9001         	str	r0, [sp, #0x4]
  320ba2: 9100         	str	r1, [sp]
  320ba4: 9b01         	ldr	r3, [sp, #0x4]
  320ba6: ed93 7a56    	vldr	s14, [r3, #344]
  320baa: eddd 7a00    	vldr	s15, [sp]
  320bae: ee77 7a27    	vadd.f32	s15, s14, s15
  320bb2: 9b01         	ldr	r3, [sp, #0x4]
  320bb4: edc3 7a56    	vstr	s15, [r3, #344]
  320bb8: 9b01         	ldr	r3, [sp, #0x4]
  320bba: 681b         	ldr	r3, [r3]
  320bbc: f503 7315    	add.w	r3, r3, #0x254
  320bc0: 681b         	ldr	r3, [r3]
  320bc2: 9a01         	ldr	r2, [sp, #0x4]
  320bc4: 4610         	mov	r0, r2
  320bc6: 9900         	ldr	r1, [sp]
  320bc8: 4798         	blx	r3
  320bca: 9b01         	ldr	r3, [sp, #0x4]
  320bcc: f893 3181    	ldrb.w	r3, [r3, #0x181]
  320bd0: 2b00         	cmp	r3, #0x0
  320bd2: d013         	beq	0x320bfc <FLAMETHROWER::updateItemStep(float)+0x64> @ imm = #0x26
  320bd4: 9b01         	ldr	r3, [sp, #0x4]
  320bd6: ed93 8a56    	vldr	s16, [r3, #344]
  320bda: 9b01         	ldr	r3, [sp, #0x4]
  320bdc: 681b         	ldr	r3, [r3]
  320bde: f503 732e    	add.w	r3, r3, #0x2b8
  320be2: 681b         	ldr	r3, [r3]
  320be4: 9a01         	ldr	r2, [sp, #0x4]
  320be6: 4610         	mov	r0, r2
  320be8: 4798         	blx	r3
  320bea: ee07 0a90    	vmov	s15, r0
  320bee: eeb4 8ae7    	vcmpe.f32	s16, s15
  320bf2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  320bf6: dd01         	ble	0x320bfc <FLAMETHROWER::updateItemStep(float)+0x64> @ imm = #0x2
  320bf8: 2301         	movs	r3, #0x1
  320bfa: e000         	b	0x320bfe <FLAMETHROWER::updateItemStep(float)+0x66> @ imm = #0x0
  320bfc: 2300         	movs	r3, #0x0
  320bfe: 2b00         	cmp	r3, #0x0
  320c00: d043         	beq	0x320c8a <FLAMETHROWER::updateItemStep(float)+0xf2> @ imm = #0x86
  320c02: 9b01         	ldr	r3, [sp, #0x4]
  320c04: 2200         	movs	r2, #0x0
  320c06: f883 2181    	strb.w	r2, [r3, #0x181]
  320c0a: 9b01         	ldr	r3, [sp, #0x4]
  320c0c: f04f 0200    	mov.w	r2, #0x0
  320c10: f8c3 2110    	str.w	r2, [r3, #0x110]
  320c14: 9b01         	ldr	r3, [sp, #0x4]
  320c16: 681b         	ldr	r3, [r3]
  320c18: f503 732d    	add.w	r3, r3, #0x2b4
  320c1c: 681b         	ldr	r3, [r3]
  320c1e: 9a01         	ldr	r2, [sp, #0x4]
  320c20: 4610         	mov	r0, r2
  320c22: 4798         	blx	r3
  320c24: 4602         	mov	r2, r0
  320c26: 9b01         	ldr	r3, [sp, #0x4]
  320c28: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  320c2c: b21b         	sxth	r3, r3
  320c2e: 1ad3         	subs	r3, r2, r3
  320c30: 9303         	str	r3, [sp, #0xc]
  320c32: 9b01         	ldr	r3, [sp, #0x4]
  320c34: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  320c38: b29a         	uxth	r2, r3
  320c3a: 9b03         	ldr	r3, [sp, #0xc]
  320c3c: b29b         	uxth	r3, r3
  320c3e: 1ad3         	subs	r3, r2, r3
  320c40: b29b         	uxth	r3, r3
  320c42: b29a         	uxth	r2, r3
  320c44: 9b01         	ldr	r3, [sp, #0x4]
  320c46: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  320c4a: 9b01         	ldr	r3, [sp, #0x4]
  320c4c: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  320c50: b29a         	uxth	r2, r3
  320c52: 9b03         	ldr	r3, [sp, #0xc]
  320c54: b29b         	uxth	r3, r3
  320c56: 4413         	add	r3, r2
  320c58: b29a         	uxth	r2, r3
  320c5a: 9b01         	ldr	r3, [sp, #0x4]
  320c5c: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  320c60: b21b         	sxth	r3, r3
  320c62: ea03 73e3    	and.w	r3, r3, r3, asr #31
  320c66: b29b         	uxth	r3, r3
  320c68: b29b         	uxth	r3, r3
  320c6a: 4413         	add	r3, r2
  320c6c: b29b         	uxth	r3, r3
  320c6e: b29a         	uxth	r2, r3
  320c70: 9b01         	ldr	r3, [sp, #0x4]
  320c72: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  320c76: 9b01         	ldr	r3, [sp, #0x4]
  320c78: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  320c7c: b21b         	sxth	r3, r3
  320c7e: ea23 73e3    	bic.w	r3, r3, r3, asr #31
  320c82: b29a         	uxth	r2, r3
  320c84: 9b01         	ldr	r3, [sp, #0x4]
  320c86: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  320c8a: 9801         	ldr	r0, [sp, #0x4]
  320c8c: 9900         	ldr	r1, [sp]
  320c8e: f7ff ff7d    	bl	0x320b8c <FLAMETHROWER::updateFlames(float)> @ imm = #-0x106
  320c92: b005         	add	sp, #0x14
  320c94: ecbd 8b02    	vpop	{d8}
  320c98: f85d fb04    	ldr	pc, [sp], #4

// ==== FLAMETHROWER::updateRemoteItemStep
//      file offset 0x320c9c (= ELF address; Ghidra 0x330c9c), 64 bytes, Thumb-2
  320c9c: b500         	push	{lr}
  320c9e: b083         	sub	sp, #0xc
  320ca0: 9001         	str	r0, [sp, #0x4]
  320ca2: 9100         	str	r1, [sp]
  320ca4: 9b01         	ldr	r3, [sp, #0x4]
  320ca6: 681b         	ldr	r3, [r3]
  320ca8: f503 7315    	add.w	r3, r3, #0x254
  320cac: 681b         	ldr	r3, [r3]
  320cae: 9a01         	ldr	r2, [sp, #0x4]
  320cb0: 4610         	mov	r0, r2
  320cb2: 9900         	ldr	r1, [sp]
  320cb4: 4798         	blx	r3
  320cb6: 9b01         	ldr	r3, [sp, #0x4]
  320cb8: f893 2194    	ldrb.w	r2, [r3, #0x194]
  320cbc: 9b01         	ldr	r3, [sp, #0x4]
  320cbe: f893 3195    	ldrb.w	r3, [r3, #0x195]
  320cc2: 429a         	cmp	r2, r3
  320cc4: d007         	beq	0x320cd6 <FLAMETHROWER::updateRemoteItemStep(float)+0x3a> @ imm = #0xe
  320cc6: 9b01         	ldr	r3, [sp, #0x4]
  320cc8: 681b         	ldr	r3, [r3]
  320cca: f503 7318    	add.w	r3, r3, #0x260
  320cce: 681b         	ldr	r3, [r3]
  320cd0: 9801         	ldr	r0, [sp, #0x4]
  320cd2: 9900         	ldr	r1, [sp]
  320cd4: 4798         	blx	r3
  320cd6: b003         	add	sp, #0xc
  320cd8: f85d fb04    	ldr	pc, [sp], #4

// ==== FLAMETHROWER::remoteTriggerPull
//      file offset 0x320cdc (= ELF address; Ghidra 0x330cdc), 116 bytes, Thumb-2
  320cdc: b500         	push	{lr}
  320cde: b083         	sub	sp, #0xc
  320ce0: 9001         	str	r0, [sp, #0x4]
  320ce2: 9100         	str	r1, [sp]
  320ce4: 9b01         	ldr	r3, [sp, #0x4]
  320ce6: ed93 7a44    	vldr	s14, [r3, #272]
  320cea: 9b01         	ldr	r3, [sp, #0x4]
  320cec: edd3 7a57    	vldr	s15, [r3, #348]
  320cf0: eeb4 7ae7    	vcmpe.f32	s14, s15
  320cf4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  320cf8: dd27         	ble	0x320d4a <FLAMETHROWER::remoteTriggerPull(float)+0x6e> @ imm = #0x4e
  320cfa: 9b01         	ldr	r3, [sp, #0x4]
  320cfc: f04f 0200    	mov.w	r2, #0x0
  320d00: f8c3 2110    	str.w	r2, [r3, #0x110]
  320d04: 9b01         	ldr	r3, [sp, #0x4]
  320d06: 2201         	movs	r2, #0x1
  320d08: f883 2180    	strb.w	r2, [r3, #0x180]
  320d0c: 9b01         	ldr	r3, [sp, #0x4]
  320d0e: 681b         	ldr	r3, [r3]
  320d10: f503 7325    	add.w	r3, r3, #0x294
  320d14: 681b         	ldr	r3, [r3]
  320d16: 9801         	ldr	r0, [sp, #0x4]
  320d18: 4798         	blx	r3
  320d1a: 9b01         	ldr	r3, [sp, #0x4]
  320d1c: 681b         	ldr	r3, [r3]
  320d1e: f503 7342    	add.w	r3, r3, #0x308
  320d22: 681b         	ldr	r3, [r3]
  320d24: 9a01         	ldr	r2, [sp, #0x4]
  320d26: 4610         	mov	r0, r2
  320d28: 4798         	blx	r3
  320d2a: 9b01         	ldr	r3, [sp, #0x4]
  320d2c: 681b         	ldr	r3, [r3]
  320d2e: f503 7343    	add.w	r3, r3, #0x30c
  320d32: 681b         	ldr	r3, [r3]
  320d34: 9a01         	ldr	r2, [sp, #0x4]
  320d36: 4610         	mov	r0, r2
  320d38: 4798         	blx	r3
  320d3a: 9b01         	ldr	r3, [sp, #0x4]
  320d3c: f893 3195    	ldrb.w	r3, [r3, #0x195]
  320d40: 3301         	adds	r3, #0x1
  320d42: b2da         	uxtb	r2, r3
  320d44: 9b01         	ldr	r3, [sp, #0x4]
  320d46: f883 2195    	strb.w	r2, [r3, #0x195]
  320d4a: b003         	add	sp, #0xc
  320d4c: f85d fb04    	ldr	pc, [sp], #4

// ==== FLAMETHROWER::getShellPoint
//      file offset 0x320d50 (= ELF address; Ghidra 0x330d50), 192 bytes, Thumb-2
  320d50: b530         	push	{r4, r5, lr}
  320d52: b08f         	sub	sp, #0x3c
  320d54: 9001         	str	r0, [sp, #0x4]
  320d56: 9100         	str	r1, [sp]
  320d58: 4c2b         	ldr	r4, [pc, #0xac]         @ 0x320e08 <FLAMETHROWER::getShellPoint()+0xb8>
  320d5a: 447c         	add	r4, pc
  320d5c: 9b00         	ldr	r3, [sp]
  320d5e: 681b         	ldr	r3, [r3]
  320d60: 3350         	adds	r3, #0x50
  320d62: 681b         	ldr	r3, [r3]
  320d64: 9a00         	ldr	r2, [sp]
  320d66: 4610         	mov	r0, r2
  320d68: 4798         	blx	r3
  320d6a: 4605         	mov	r5, r0
  320d6c: ab04         	add	r3, sp, #0x10
  320d6e: 4618         	mov	r0, r3
  320d70: f04f 0100    	mov.w	r1, #0x0
  320d74: f2c4 2120    	movt	r1, #0x4220
  320d78: f04f 0200    	mov.w	r2, #0x0
  320d7c: f2c4 12a0    	movt	r2, #0x41a0
  320d80: f271 ffb6    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x271f6c
  320d84: aa06         	add	r2, sp, #0x18
  320d86: ab04         	add	r3, sp, #0x10
  320d88: 4610         	mov	r0, r2
  320d8a: 4629         	mov	r1, r5
  320d8c: 461a         	mov	r2, r3
  320d8e: f7fe fd5f    	bl	0x31f850 <FLAME::setActive(bool)+0x180> @ imm = #-0x1542
  320d92: 9b00         	ldr	r3, [sp]
  320d94: 681b         	ldr	r3, [r3]
  320d96: f503 73c2    	add.w	r3, r3, #0x184
  320d9a: 681b         	ldr	r3, [r3]
  320d9c: 9a00         	ldr	r2, [sp]
  320d9e: a908         	add	r1, sp, #0x20
  320da0: 4608         	mov	r0, r1
  320da2: 4611         	mov	r1, r2
  320da4: 4798         	blx	r3
  320da6: a902         	add	r1, sp, #0x8
  320da8: aa06         	add	r2, sp, #0x18
  320daa: ab08         	add	r3, sp, #0x20
  320dac: 4608         	mov	r0, r1
  320dae: 4611         	mov	r1, r2
  320db0: 461a         	mov	r2, r3
  320db2: f271 fab7    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x27156e
  320db6: 4b15         	ldr	r3, [pc, #0x54]         @ 0x320e0c <FLAMETHROWER::getShellPoint()+0xbc>
  320db8: 58e3         	ldr	r3, [r4, r3]
  320dba: 681b         	ldr	r3, [r3]
  320dbc: 681b         	ldr	r3, [r3]
  320dbe: f503 73c4    	add.w	r3, r3, #0x188
  320dc2: 681b         	ldr	r3, [r3]
  320dc4: 4a11         	ldr	r2, [pc, #0x44]         @ 0x320e0c <FLAMETHROWER::getShellPoint()+0xbc>
  320dc6: 58a2         	ldr	r2, [r4, r2]
  320dc8: 6812         	ldr	r2, [r2]
  320dca: a908         	add	r1, sp, #0x20
  320dcc: 4608         	mov	r0, r1
  320dce: 4611         	mov	r1, r2
  320dd0: 4798         	blx	r3
  320dd2: a906         	add	r1, sp, #0x18
  320dd4: aa02         	add	r2, sp, #0x8
  320dd6: ab08         	add	r3, sp, #0x20
  320dd8: 4608         	mov	r0, r1
  320dda: 4611         	mov	r1, r2
  320ddc: 461a         	mov	r2, r3
  320dde: f271 faa1    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x271542
  320de2: eddd 7a06    	vldr	s15, [sp, #24]
  320de6: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  320dea: eddd 7a07    	vldr	s15, [sp, #28]
  320dee: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  320df2: 9b01         	ldr	r3, [sp, #0x4]
  320df4: 4618         	mov	r0, r3
  320df6: eeb0 0b46    	vmov.f64	d0, d6
  320dfa: eeb0 1b47    	vmov.f64	d1, d7
  320dfe: f7fe fd37    	bl	0x31f870 <FLAME::setActive(bool)+0x1a0> @ imm = #-0x1592
  320e02: 9801         	ldr	r0, [sp, #0x4]
  320e04: b00f         	add	sp, #0x3c
  320e06: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x320e07); words below are literal-pool data ---
  320e08: 1cae         	adds	r6, r5, #0x2
  320e0a: 0061         	lsls	r1, r4, #0x1
  320e0c: d744         	bvc	0x320e98 <FLAMETHROWER::setPrimaryConfiguration()+0x40> @ imm = #0x88
  320e0e: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== FLAMETHROWER::playSound
//      file offset 0x320e10 (= ELF address; Ghidra 0x330e10), 72 bytes, Thumb-2
  320e10: b510         	push	{r4, lr}
  320e12: b088         	sub	sp, #0x20
  320e14: 9003         	str	r0, [sp, #0xc]
  320e16: 4a0e         	ldr	r2, [pc, #0x38]         @ 0x320e50 <FLAMETHROWER::playSound()+0x40>
  320e18: 447a         	add	r2, pc
  320e1a: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x320e54 <FLAMETHROWER::playSound()+0x44>
  320e1c: 58d3         	ldr	r3, [r2, r3]
  320e1e: 681c         	ldr	r4, [r3]
  320e20: 9b03         	ldr	r3, [sp, #0xc]
  320e22: 681b         	ldr	r3, [r3]
  320e24: f503 7348    	add.w	r3, r3, #0x320
  320e28: 681b         	ldr	r3, [r3]
  320e2a: 9a03         	ldr	r2, [sp, #0xc]
  320e2c: a904         	add	r1, sp, #0x10
  320e2e: 4608         	mov	r0, r1
  320e30: 4611         	mov	r1, r2
  320e32: 4798         	blx	r3
  320e34: 466b         	mov	r3, sp
  320e36: aa06         	add	r2, sp, #0x18
  320e38: e892 0003    	ldm.w	r2, {r0, r1}
  320e3c: e883 0003    	stm.w	r3, {r0, r1}
  320e40: ab04         	add	r3, sp, #0x10
  320e42: cb0c         	ldm	r3, {r2, r3}
  320e44: 4620         	mov	r0, r4
  320e46: 212e         	movs	r1, #0x2e
  320e48: f0d7 f8d6    	bl	0x3f7ff8 <Sound::playSoundPosition(int, cpVect)> @ imm = #0xd71ac
  320e4c: b008         	add	sp, #0x20
  320e4e: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x320e4f); words below are literal-pool data ---
  320e50: 1bf0         	subs	r0, r6, r7
  320e52: 0061         	lsls	r1, r4, #0x1
  320e54: d730         	bvc	0x320eb8 <FLAMETHROWER::setPrimaryConfiguration()+0x60> @ imm = #0x60
  320e56: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== FLAMETHROWER::setPrimaryConfiguration
//      file offset 0x320e58 (= ELF address; Ghidra 0x330e58), 324 bytes, Thumb-2
  320e58: b530         	push	{r4, r5, lr}
  320e5a: b085         	sub	sp, #0x14
  320e5c: 9001         	str	r0, [sp, #0x4]
  320e5e: 9b01         	ldr	r3, [sp, #0x4]
  320e60: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  320e64: 2b00         	cmp	r3, #0x0
  320e66: d019         	beq	0x320e9c <FLAMETHROWER::setPrimaryConfiguration()+0x44> @ imm = #0x32
  320e68: 9b01         	ldr	r3, [sp, #0x4]
  320e6a: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  320e6e: 4b4a         	ldr	r3, [pc, #0x128]        @ 0x320f98 <FLAMETHROWER::setPrimaryConfiguration()+0x140>
  320e70: 447b         	add	r3, pc
  320e72: ed93 6b00    	vldr	d6, [r3]
  320e76: ed93 7b02    	vldr	d7, [r3, #8]
  320e7a: 4610         	mov	r0, r2
  320e7c: eeb0 0b46    	vmov.f64	d0, d6
  320e80: eeb0 1b47    	vmov.f64	d1, d7
  320e84: f7fe fd08    	bl	0x31f898 <FLAME::setActive(bool)+0x1c8> @ imm = #-0x15f0
  320e88: 9b01         	ldr	r3, [sp, #0x4]
  320e8a: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  320e8e: 4618         	mov	r0, r3
  320e90: f04f 0200    	mov.w	r2, #0x0
  320e94: f04f 0300    	mov.w	r3, #0x0
  320e98: f3b2 f97b    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x3b22f6
  320e9c: 9b01         	ldr	r3, [sp, #0x4]
  320e9e: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  320ea2: 681b         	ldr	r3, [r3]
  320ea4: 334c         	adds	r3, #0x4c
  320ea6: 681c         	ldr	r4, [r3]
  320ea8: 9b01         	ldr	r3, [sp, #0x4]
  320eaa: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  320eae: ab02         	add	r3, sp, #0x8
  320eb0: 4618         	mov	r0, r3
  320eb2: f04f 0100    	mov.w	r1, #0x0
  320eb6: f2c4 01a0    	movt	r1, #0x40a0
  320eba: f04f 0200    	mov.w	r2, #0x0
  320ebe: f2cc 02a0    	movt	r2, #0xc0a0
  320ec2: f271 ff15    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x271e2a
  320ec6: ab02         	add	r3, sp, #0x8
  320ec8: 4628         	mov	r0, r5
  320eca: 4619         	mov	r1, r3
  320ecc: 47a0         	blx	r4
  320ece: 9b01         	ldr	r3, [sp, #0x4]
  320ed0: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  320ed4: 681b         	ldr	r3, [r3]
  320ed6: 337c         	adds	r3, #0x7c
  320ed8: 681c         	ldr	r4, [r3]
  320eda: 9b01         	ldr	r3, [sp, #0x4]
  320edc: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  320ee0: ab02         	add	r3, sp, #0x8
  320ee2: 4618         	mov	r0, r3
  320ee4: f64c 41cd    	movw	r1, #0xcccd
  320ee8: f6cb 51cc    	movt	r1, #0xbdcc
  320eec: f04f 527c    	mov.w	r2, #0x3f000000
  320ef0: f271 fefe    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x271dfc
  320ef4: ab02         	add	r3, sp, #0x8
  320ef6: 4628         	mov	r0, r5
  320ef8: 4619         	mov	r1, r3
  320efa: 47a0         	blx	r4
  320efc: 9b01         	ldr	r3, [sp, #0x4]
  320efe: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  320f02: 681b         	ldr	r3, [r3]
  320f04: 3398         	adds	r3, #0x98
  320f06: 681b         	ldr	r3, [r3]
  320f08: 9a01         	ldr	r2, [sp, #0x4]
  320f0a: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  320f0e: 4610         	mov	r0, r2
  320f10: f04f 0100    	mov.w	r1, #0x0
  320f14: f2cc 11c8    	movt	r1, #0xc1c8
  320f18: 4798         	blx	r3
  320f1a: 9b01         	ldr	r3, [sp, #0x4]
  320f1c: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  320f20: 681b         	ldr	r3, [r3]
  320f22: 3340         	adds	r3, #0x40
  320f24: 681b         	ldr	r3, [r3]
  320f26: 9a01         	ldr	r2, [sp, #0x4]
  320f28: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  320f2c: 4610         	mov	r0, r2
  320f2e: f04f 517e    	mov.w	r1, #0x3f800000
  320f32: 4798         	blx	r3
  320f34: 9b01         	ldr	r3, [sp, #0x4]
  320f36: 681b         	ldr	r3, [r3]
  320f38: 334c         	adds	r3, #0x4c
  320f3a: 681c         	ldr	r4, [r3]
  320f3c: 9d01         	ldr	r5, [sp, #0x4]
  320f3e: ab02         	add	r3, sp, #0x8
  320f40: 4618         	mov	r0, r3
  320f42: f04f 0100    	mov.w	r1, #0x0
  320f46: f04f 0200    	mov.w	r2, #0x0
  320f4a: f271 fed1    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x271da2
  320f4e: ab02         	add	r3, sp, #0x8
  320f50: 4628         	mov	r0, r5
  320f52: 4619         	mov	r1, r3
  320f54: 47a0         	blx	r4
  320f56: 9b01         	ldr	r3, [sp, #0x4]
  320f58: 681b         	ldr	r3, [r3]
  320f5a: 3340         	adds	r3, #0x40
  320f5c: 681b         	ldr	r3, [r3]
  320f5e: 9a01         	ldr	r2, [sp, #0x4]
  320f60: 4610         	mov	r0, r2
  320f62: f04f 517e    	mov.w	r1, #0x3f800000
  320f66: 4798         	blx	r3
  320f68: 9b01         	ldr	r3, [sp, #0x4]
  320f6a: 681b         	ldr	r3, [r3]
  320f6c: 3398         	adds	r3, #0x98
  320f6e: 681b         	ldr	r3, [r3]
  320f70: 9a01         	ldr	r2, [sp, #0x4]
  320f72: 4610         	mov	r0, r2
  320f74: f04f 0100    	mov.w	r1, #0x0
  320f78: 4798         	blx	r3
  320f7a: 9b01         	ldr	r3, [sp, #0x4]
  320f7c: 2200         	movs	r2, #0x0
  320f7e: f883 2195    	strb.w	r2, [r3, #0x195]
  320f82: 9b01         	ldr	r3, [sp, #0x4]
  320f84: 2200         	movs	r2, #0x0
  320f86: f883 2194    	strb.w	r2, [r3, #0x194]
  320f8a: 9b01         	ldr	r3, [sp, #0x4]
  320f8c: f04f 0200    	mov.w	r2, #0x0
  320f90: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  320f94: b005         	add	sp, #0x14
  320f96: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x320f97); words below are literal-pool data ---
  320f98: 696c         	ldr	r4, [r5, #0x14]
  320f9a: 004a         	lsls	r2, r1, #0x1

// ==== FLAMETHROWER::setSecondaryConfiguration
//      file offset 0x320f9c (= ELF address; Ghidra 0x330f9c), 316 bytes, Thumb-2
  320f9c: b530         	push	{r4, r5, lr}
  320f9e: b085         	sub	sp, #0x14
  320fa0: 9001         	str	r0, [sp, #0x4]
  320fa2: 9b01         	ldr	r3, [sp, #0x4]
  320fa4: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  320fa8: 2b00         	cmp	r3, #0x0
  320faa: d019         	beq	0x320fe0 <FLAMETHROWER::setSecondaryConfiguration()+0x44> @ imm = #0x32
  320fac: 9b01         	ldr	r3, [sp, #0x4]
  320fae: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  320fb2: 4b48         	ldr	r3, [pc, #0x120]        @ 0x3210d4 <FLAMETHROWER::setSecondaryConfiguration()+0x138>
  320fb4: 447b         	add	r3, pc
  320fb6: ed93 6b00    	vldr	d6, [r3]
  320fba: ed93 7b02    	vldr	d7, [r3, #8]
  320fbe: 4610         	mov	r0, r2
  320fc0: eeb0 0b46    	vmov.f64	d0, d6
  320fc4: eeb0 1b47    	vmov.f64	d1, d7
  320fc8: f7fe fc66    	bl	0x31f898 <FLAME::setActive(bool)+0x1c8> @ imm = #-0x1734
  320fcc: 9b01         	ldr	r3, [sp, #0x4]
  320fce: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  320fd2: 4618         	mov	r0, r3
  320fd4: f04f 0200    	mov.w	r2, #0x0
  320fd8: f04f 0300    	mov.w	r3, #0x0
  320fdc: f3b2 f8d9    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x3b21b2
  320fe0: 9b01         	ldr	r3, [sp, #0x4]
  320fe2: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  320fe6: 681b         	ldr	r3, [r3]
  320fe8: 334c         	adds	r3, #0x4c
  320fea: 681c         	ldr	r4, [r3]
  320fec: 9b01         	ldr	r3, [sp, #0x4]
  320fee: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  320ff2: ab02         	add	r3, sp, #0x8
  320ff4: 4618         	mov	r0, r3
  320ff6: f04f 0100    	mov.w	r1, #0x0
  320ffa: f2cc 1120    	movt	r1, #0xc120
  320ffe: f04f 0200    	mov.w	r2, #0x0
  321002: f271 fe75    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x271cea
  321006: ab02         	add	r3, sp, #0x8
  321008: 4628         	mov	r0, r5
  32100a: 4619         	mov	r1, r3
  32100c: 47a0         	blx	r4
  32100e: 9b01         	ldr	r3, [sp, #0x4]
  321010: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  321014: 681b         	ldr	r3, [r3]
  321016: 337c         	adds	r3, #0x7c
  321018: 681c         	ldr	r4, [r3]
  32101a: 9b01         	ldr	r3, [sp, #0x4]
  32101c: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  321020: ab02         	add	r3, sp, #0x8
  321022: 4618         	mov	r0, r3
  321024: f04f 517c    	mov.w	r1, #0x3f000000
  321028: f04f 527c    	mov.w	r2, #0x3f000000
  32102c: f271 fe60    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x271cc0
  321030: ab02         	add	r3, sp, #0x8
  321032: 4628         	mov	r0, r5
  321034: 4619         	mov	r1, r3
  321036: 47a0         	blx	r4
  321038: 9b01         	ldr	r3, [sp, #0x4]
  32103a: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  32103e: 681b         	ldr	r3, [r3]
  321040: 3398         	adds	r3, #0x98
  321042: 681b         	ldr	r3, [r3]
  321044: 9a01         	ldr	r2, [sp, #0x4]
  321046: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  32104a: 4610         	mov	r0, r2
  32104c: f04f 0100    	mov.w	r1, #0x0
  321050: f2c4 2134    	movt	r1, #0x4234
  321054: 4798         	blx	r3
  321056: 9b01         	ldr	r3, [sp, #0x4]
  321058: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  32105c: 681b         	ldr	r3, [r3]
  32105e: 3340         	adds	r3, #0x40
  321060: 681b         	ldr	r3, [r3]
  321062: 9a01         	ldr	r2, [sp, #0x4]
  321064: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  321068: 4610         	mov	r0, r2
  32106a: f04f 517e    	mov.w	r1, #0x3f800000
  32106e: 4798         	blx	r3
  321070: 9b01         	ldr	r3, [sp, #0x4]
  321072: 681b         	ldr	r3, [r3]
  321074: 334c         	adds	r3, #0x4c
  321076: 681c         	ldr	r4, [r3]
  321078: 9d01         	ldr	r5, [sp, #0x4]
  32107a: ab02         	add	r3, sp, #0x8
  32107c: 4618         	mov	r0, r3
  32107e: f04f 0100    	mov.w	r1, #0x0
  321082: f04f 0200    	mov.w	r2, #0x0
  321086: f271 fe33    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x271c66
  32108a: ab02         	add	r3, sp, #0x8
  32108c: 4628         	mov	r0, r5
  32108e: 4619         	mov	r1, r3
  321090: 47a0         	blx	r4
  321092: 9b01         	ldr	r3, [sp, #0x4]
  321094: 681b         	ldr	r3, [r3]
  321096: 3340         	adds	r3, #0x40
  321098: 681b         	ldr	r3, [r3]
  32109a: 9a01         	ldr	r2, [sp, #0x4]
  32109c: 4610         	mov	r0, r2
  32109e: f04f 517e    	mov.w	r1, #0x3f800000
  3210a2: 4798         	blx	r3
  3210a4: 9b01         	ldr	r3, [sp, #0x4]
  3210a6: 681b         	ldr	r3, [r3]
  3210a8: 3398         	adds	r3, #0x98
  3210aa: 681b         	ldr	r3, [r3]
  3210ac: 9a01         	ldr	r2, [sp, #0x4]
  3210ae: 4610         	mov	r0, r2
  3210b0: f04f 0100    	mov.w	r1, #0x0
  3210b4: 4798         	blx	r3
  3210b6: 9b01         	ldr	r3, [sp, #0x4]
  3210b8: 2200         	movs	r2, #0x0
  3210ba: f883 2195    	strb.w	r2, [r3, #0x195]
  3210be: 9b01         	ldr	r3, [sp, #0x4]
  3210c0: 2200         	movs	r2, #0x0
  3210c2: f883 2194    	strb.w	r2, [r3, #0x194]
  3210c6: 9b01         	ldr	r3, [sp, #0x4]
  3210c8: f04f 0200    	mov.w	r2, #0x0
  3210cc: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  3210d0: b005         	add	sp, #0x14
  3210d2: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3210d3); words below are literal-pool data ---
  3210d4: 6828         	ldr	r0, [r5]
  3210d6: 004a         	lsls	r2, r1, #0x1

// ==== FLAMETHROWER::setMapConfiguration
//      file offset 0x3210d8 (= ELF address; Ghidra 0x3310d8), 224 bytes, Thumb-2
  3210d8: b570         	push	{r4, r5, r6, lr}
  3210da: b084         	sub	sp, #0x10
  3210dc: 9001         	str	r0, [sp, #0x4]
  3210de: 4c34         	ldr	r4, [pc, #0xd0]         @ 0x3211b0 <FLAMETHROWER::setMapConfiguration()+0xd8>
  3210e0: 447c         	add	r4, pc
  3210e2: 9b01         	ldr	r3, [sp, #0x4]
  3210e4: f04f 0200    	mov.w	r2, #0x0
  3210e8: f8c3 2190    	str.w	r2, [r3, #0x190]
  3210ec: 9b01         	ldr	r3, [sp, #0x4]
  3210ee: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3210f2: 681b         	ldr	r3, [r3]
  3210f4: 334c         	adds	r3, #0x4c
  3210f6: 681d         	ldr	r5, [r3]
  3210f8: 9b01         	ldr	r3, [sp, #0x4]
  3210fa: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  3210fe: ab02         	add	r3, sp, #0x8
  321100: 4618         	mov	r0, r3
  321102: f04f 0100    	mov.w	r1, #0x0
  321106: f04f 0200    	mov.w	r2, #0x0
  32110a: f271 fdf1    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x271be2
  32110e: ab02         	add	r3, sp, #0x8
  321110: 4630         	mov	r0, r6
  321112: 4619         	mov	r1, r3
  321114: 47a8         	blx	r5
  321116: 9b01         	ldr	r3, [sp, #0x4]
  321118: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  32111c: 681b         	ldr	r3, [r3]
  32111e: 337c         	adds	r3, #0x7c
  321120: 681d         	ldr	r5, [r3]
  321122: 9b01         	ldr	r3, [sp, #0x4]
  321124: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  321128: ab02         	add	r3, sp, #0x8
  32112a: 4618         	mov	r0, r3
  32112c: f04f 517c    	mov.w	r1, #0x3f000000
  321130: f04f 527c    	mov.w	r2, #0x3f000000
  321134: f271 fddc    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x271bb8
  321138: ab02         	add	r3, sp, #0x8
  32113a: 4630         	mov	r0, r6
  32113c: 4619         	mov	r1, r3
  32113e: 47a8         	blx	r5
  321140: 9b01         	ldr	r3, [sp, #0x4]
  321142: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  321146: 681b         	ldr	r3, [r3]
  321148: 3398         	adds	r3, #0x98
  32114a: 681b         	ldr	r3, [r3]
  32114c: 9a01         	ldr	r2, [sp, #0x4]
  32114e: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  321152: 4610         	mov	r0, r2
  321154: f04f 0100    	mov.w	r1, #0x0
  321158: 4798         	blx	r3
  32115a: 9b01         	ldr	r3, [sp, #0x4]
  32115c: 681b         	ldr	r3, [r3]
  32115e: 334c         	adds	r3, #0x4c
  321160: 681d         	ldr	r5, [r3]
  321162: 9e01         	ldr	r6, [sp, #0x4]
  321164: ab02         	add	r3, sp, #0x8
  321166: 4618         	mov	r0, r3
  321168: f04f 0100    	mov.w	r1, #0x0
  32116c: f04f 0200    	mov.w	r2, #0x0
  321170: f271 fdbe    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x271b7c
  321174: ab02         	add	r3, sp, #0x8
  321176: 4630         	mov	r0, r6
  321178: 4619         	mov	r1, r3
  32117a: 47a8         	blx	r5
  32117c: 9b01         	ldr	r3, [sp, #0x4]
  32117e: 681b         	ldr	r3, [r3]
  321180: 3340         	adds	r3, #0x40
  321182: 681b         	ldr	r3, [r3]
  321184: 9901         	ldr	r1, [sp, #0x4]
  321186: 4a0b         	ldr	r2, [pc, #0x2c]         @ 0x3211b4 <FLAMETHROWER::setMapConfiguration()+0xdc>
  321188: 58a2         	ldr	r2, [r4, r2]
  32118a: 6812         	ldr	r2, [r2]
  32118c: 4608         	mov	r0, r1
  32118e: 4611         	mov	r1, r2
  321190: 4798         	blx	r3
  321192: 9b01         	ldr	r3, [sp, #0x4]
  321194: 2200         	movs	r2, #0x0
  321196: f883 2195    	strb.w	r2, [r3, #0x195]
  32119a: 9b01         	ldr	r3, [sp, #0x4]
  32119c: 2200         	movs	r2, #0x0
  32119e: f883 2194    	strb.w	r2, [r3, #0x194]
  3211a2: 9b01         	ldr	r3, [sp, #0x4]
  3211a4: f04f 0200    	mov.w	r2, #0x0
  3211a8: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  3211ac: b004         	add	sp, #0x10
  3211ae: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3211af); words below are literal-pool data ---
  3211b0: 1928         	adds	r0, r5, r4
  3211b2: 0061         	lsls	r1, r4, #0x1
  3211b4: d748         	bvc	0x321248 <FLAMETHROWER::setRight(bool)+0x4> @ imm = #0x90
  3211b6: ffff b500    	<unknown>

// ==== FLAMETHROWER::getWeaponTexture
//      file offset 0x3211b8 (= ELF address; Ghidra 0x3311b8), 40 bytes, Thumb-2
  3211b8: b500         	push	{lr}
  3211ba: b083         	sub	sp, #0xc
  3211bc: 9001         	str	r0, [sp, #0x4]
  3211be: 9b01         	ldr	r3, [sp, #0x4]
  3211c0: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3211c4: 681b         	ldr	r3, [r3]
  3211c6: f503 73fa    	add.w	r3, r3, #0x1f4
  3211ca: 681b         	ldr	r3, [r3]
  3211cc: 9a01         	ldr	r2, [sp, #0x4]
  3211ce: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3211d2: 4610         	mov	r0, r2
  3211d4: 4798         	blx	r3
  3211d6: 4603         	mov	r3, r0
  3211d8: 4618         	mov	r0, r3
  3211da: b003         	add	sp, #0xc
  3211dc: f85d fb04    	ldr	pc, [sp], #4

// ==== FLAMETHROWER::getWeaponRect
//      file offset 0x3211e0 (= ELF address; Ghidra 0x3311e0), 38 bytes, Thumb-2
  3211e0: b500         	push	{lr}
  3211e2: b083         	sub	sp, #0xc
  3211e4: 9001         	str	r0, [sp, #0x4]
  3211e6: 9100         	str	r1, [sp]
  3211e8: 9b00         	ldr	r3, [sp]
  3211ea: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3211ee: 4618         	mov	r0, r3
  3211f0: f7bb fd74    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x44518
  3211f4: 4603         	mov	r3, r0
  3211f6: 9801         	ldr	r0, [sp, #0x4]
  3211f8: 4619         	mov	r1, r3
  3211fa: f272 f88d    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x27211a
  3211fe: 9801         	ldr	r0, [sp, #0x4]
  321200: b003         	add	sp, #0xc
  321202: f85d fb04    	ldr	pc, [sp], #4

// ==== FLAMETHROWER::isRight
//      file offset 0x321208 (= ELF address; Ghidra 0x331208), 60 bytes, Thumb-2
  321208: b500         	push	{lr}
  32120a: b083         	sub	sp, #0xc
  32120c: 9001         	str	r0, [sp, #0x4]
  32120e: 9b01         	ldr	r3, [sp, #0x4]
  321210: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  321214: 681b         	ldr	r3, [r3]
  321216: 3334         	adds	r3, #0x34
  321218: 681b         	ldr	r3, [r3]
  32121a: 9a01         	ldr	r2, [sp, #0x4]
  32121c: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  321220: 4610         	mov	r0, r2
  321222: 4798         	blx	r3
  321224: ee07 0a10    	vmov	s14, r0
  321228: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  32122c: eeb4 7ae7    	vcmpe.f32	s14, s15
  321230: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  321234: bfd4         	ite	le
  321236: 2300         	movle	r3, #0x0
  321238: 2301         	movgt	r3, #0x1
  32123a: b2db         	uxtb	r3, r3
  32123c: 4618         	mov	r0, r3
  32123e: b003         	add	sp, #0xc
  321240: f85d fb04    	ldr	pc, [sp], #4

// ==== FLAMETHROWER::setRight
//      file offset 0x321244 (= ELF address; Ghidra 0x331244), 64 bytes, Thumb-2
  321244: b500         	push	{lr}
  321246: b083         	sub	sp, #0xc
  321248: 9001         	str	r0, [sp, #0x4]
  32124a: 460b         	mov	r3, r1
  32124c: f88d 3003    	strb.w	r3, [sp, #0x3]
  321250: 9b01         	ldr	r3, [sp, #0x4]
  321252: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  321256: 681b         	ldr	r3, [r3]
  321258: 3330         	adds	r3, #0x30
  32125a: 681a         	ldr	r2, [r3]
  32125c: 9b01         	ldr	r3, [sp, #0x4]
  32125e: f8d3 11ec    	ldr.w	r1, [r3, #0x1ec]
  321262: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  321266: 2b00         	cmp	r3, #0x0
  321268: d002         	beq	0x321270 <FLAMETHROWER::setRight(bool)+0x2c> @ imm = #0x4
  32126a: f04f 537e    	mov.w	r3, #0x3f800000
  32126e: e003         	b	0x321278 <FLAMETHROWER::setRight(bool)+0x34> @ imm = #0x6
  321270: f04f 0300    	mov.w	r3, #0x0
  321274: f6cb 7380    	movt	r3, #0xbf80
  321278: 4608         	mov	r0, r1
  32127a: 4619         	mov	r1, r3
  32127c: 4790         	blx	r2
  32127e: b003         	add	sp, #0xc
  321280: f85d fb04    	ldr	pc, [sp], #4

// ==== FLAMETHROWER::create
//      file offset 0x4174ec (= ELF address; Ghidra 0x4274ec), 112 bytes, Thumb-2
  4174ec: b510         	push	{r4, lr}
  4174ee: b082         	sub	sp, #0x8
  4174f0: f44f 70f8    	mov.w	r0, #0x1f0
  4174f4: f370 fa36    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x37046c
  4174f8: 4603         	mov	r3, r0
  4174fa: 461c         	mov	r4, r3
  4174fc: 4620         	mov	r0, r4
  4174fe: f709 f88d    	bl	0x32061c <FLAMETHROWER::FLAMETHROWER()> @ imm = #-0xf6ee6
  417502: 9401         	str	r4, [sp, #0x4]
  417504: 9b01         	ldr	r3, [sp, #0x4]
  417506: 2b00         	cmp	r3, #0x0
  417508: d00a         	beq	0x417520 <FLAMETHROWER::create()+0x34> @ imm = #0x14
  41750a: 9b01         	ldr	r3, [sp, #0x4]
  41750c: 681b         	ldr	r3, [r3]
  41750e: 3318         	adds	r3, #0x18
  417510: 681b         	ldr	r3, [r3]
  417512: 9801         	ldr	r0, [sp, #0x4]
  417514: 4798         	blx	r3
  417516: 4603         	mov	r3, r0
  417518: 2b00         	cmp	r3, #0x0
  41751a: d001         	beq	0x417520 <FLAMETHROWER::create()+0x34> @ imm = #0x2
  41751c: 2301         	movs	r3, #0x1
  41751e: e000         	b	0x417522 <FLAMETHROWER::create()+0x36> @ imm = #0x0
  417520: 2300         	movs	r3, #0x0
  417522: 2b00         	cmp	r3, #0x0
  417524: d005         	beq	0x417532 <FLAMETHROWER::create()+0x46> @ imm = #0xa
  417526: 9b01         	ldr	r3, [sp, #0x4]
  417528: 4618         	mov	r0, r3
  41752a: f180 fce7    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x1809ce
  41752e: 9b01         	ldr	r3, [sp, #0x4]
  417530: e011         	b	0x417556 <FLAMETHROWER::create()+0x6a> @ imm = #0x22
  417532: 9b01         	ldr	r3, [sp, #0x4]
  417534: 2b00         	cmp	r3, #0x0
  417536: d005         	beq	0x417544 <FLAMETHROWER::create()+0x58> @ imm = #0xa
  417538: 9b01         	ldr	r3, [sp, #0x4]
  41753a: 681b         	ldr	r3, [r3]
  41753c: 3308         	adds	r3, #0x8
  41753e: 681b         	ldr	r3, [r3]
  417540: 9801         	ldr	r0, [sp, #0x4]
  417542: 4798         	blx	r3
  417544: 2300         	movs	r3, #0x0
  417546: 9301         	str	r3, [sp, #0x4]
  417548: 2300         	movs	r3, #0x0
  41754a: e004         	b	0x417556 <FLAMETHROWER::create()+0x6a> @ imm = #0x8
  41754c: 4620         	mov	r0, r4
  41754e: f370 fda9    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x370b52
  417552: f370 fdab    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x370b56
  417556: 4618         	mov	r0, r3
  417558: b002         	add	sp, #0x8
  41755a: bd10         	pop	{r4, pc}
