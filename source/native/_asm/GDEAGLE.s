// GDEAGLE: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 21 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../GDEAGLE.cpp

// ==== GDEAGLE::GDEAGLE
//      file offset 0x32856c (= ELF address; Ghidra 0x33856c), 44 bytes, Thumb-2
  32856c: b510         	push	{r4, lr}
  32856e: b082         	sub	sp, #0x8
  328570: 9001         	str	r0, [sp, #0x4]
  328572: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x328590 <GDEAGLE::GDEAGLE()+0x24>
  328574: 447c         	add	r4, pc
  328576: 9b01         	ldr	r3, [sp, #0x4]
  328578: 4618         	mov	r0, r3
  32857a: f0ec fd15    	bl	0x414fa8 <Weapon::Weapon()> @ imm = #0xeca2a
  32857e: 9b01         	ldr	r3, [sp, #0x4]
  328580: 4a04         	ldr	r2, [pc, #0x10]         @ 0x328594 <GDEAGLE::GDEAGLE()+0x28>
  328582: 58a2         	ldr	r2, [r4, r2]
  328584: 3208         	adds	r2, #0x8
  328586: 601a         	str	r2, [r3]
  328588: 9b01         	ldr	r3, [sp, #0x4]
  32858a: 4618         	mov	r0, r3
  32858c: b002         	add	sp, #0x8
  32858e: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x32858f); words below are literal-pool data ---
  328590: a494         	adr	r4, #592 <GDEAGLE::init()+0x90>
  328592: 0060         	lsls	r0, r4, #0x1
  328594: da64         	bge	0x328660 <GDEAGLE::init()+0xc8> @ imm = #0xc8
  328596: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== GDEAGLE::init
//      file offset 0x328598 (= ELF address; Ghidra 0x338598), 776 bytes, Thumb-2
  328598: b530         	push	{r4, r5, lr}
  32859a: b08b         	sub	sp, #0x2c
  32859c: 9005         	str	r0, [sp, #0x14]
  32859e: 9b05         	ldr	r3, [sp, #0x14]
  3285a0: 4618         	mov	r0, r3
  3285a2: f0ec fd25    	bl	0x414ff0 <Weapon::init()> @ imm = #0xeca4a
  3285a6: 4603         	mov	r3, r0
  3285a8: f88d 301f    	strb.w	r3, [sp, #0x1f]
  3285ac: f89d 301f    	ldrb.w	r3, [sp, #0x1f]
  3285b0: f083 0301    	eor	r3, r3, #0x1
  3285b4: b2db         	uxtb	r3, r3
  3285b6: 2b00         	cmp	r3, #0x0
  3285b8: d001         	beq	0x3285be <GDEAGLE::init()+0x26> @ imm = #0x2
  3285ba: 2300         	movs	r3, #0x0
  3285bc: e15b         	b	0x328876 <GDEAGLE::init()+0x2de> @ imm = #0x2b6
  3285be: 4bb2         	ldr	r3, [pc, #0x2c8]        @ 0x328888 <GDEAGLE::init()+0x2f0>
  3285c0: 447b         	add	r3, pc
  3285c2: 4618         	mov	r0, r3
  3285c4: f2af fe9e    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2afd3c
  3285c8: 4602         	mov	r2, r0
  3285ca: 9b05         	ldr	r3, [sp, #0x14]
  3285cc: f8c3 21ec    	str.w	r2, [r3, #0x1ec]
  3285d0: 9b05         	ldr	r3, [sp, #0x14]
  3285d2: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3285d6: 4618         	mov	r0, r3
  3285d8: f26f fc86    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x26f90c
  3285dc: 4bab         	ldr	r3, [pc, #0x2ac]        @ 0x32888c <GDEAGLE::init()+0x2f4>
  3285de: 447b         	add	r3, pc
  3285e0: 4618         	mov	r0, r3
  3285e2: f2af fe8f    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2afd1e
  3285e6: 4602         	mov	r2, r0
  3285e8: 9b05         	ldr	r3, [sp, #0x14]
  3285ea: f8c3 21f0    	str.w	r2, [r3, #0x1f0]
  3285ee: 9b05         	ldr	r3, [sp, #0x14]
  3285f0: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3285f4: 4618         	mov	r0, r3
  3285f6: f26f fc77    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x26f8ee
  3285fa: 9b05         	ldr	r3, [sp, #0x14]
  3285fc: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  328600: 681b         	ldr	r3, [r3]
  328602: 337c         	adds	r3, #0x7c
  328604: 681c         	ldr	r4, [r3]
  328606: 9b05         	ldr	r3, [sp, #0x14]
  328608: f8d3 51f0    	ldr.w	r5, [r3, #0x1f0]
  32860c: ab08         	add	r3, sp, #0x20
  32860e: 4618         	mov	r0, r3
  328610: f246 6166    	movw	r1, #0x6666
  328614: f6cb 71a6    	movt	r1, #0xbfa6
  328618: f04f 527c    	mov.w	r2, #0x3f000000
  32861c: f26a fb68    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x26a6d0
  328620: ab08         	add	r3, sp, #0x20
  328622: 4628         	mov	r0, r5
  328624: 4619         	mov	r1, r3
  328626: 47a0         	blx	r4
  328628: 9b05         	ldr	r3, [sp, #0x14]
  32862a: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  32862e: 681b         	ldr	r3, [r3]
  328630: 3340         	adds	r3, #0x40
  328632: 681b         	ldr	r3, [r3]
  328634: 9a05         	ldr	r2, [sp, #0x14]
  328636: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  32863a: 4610         	mov	r0, r2
  32863c: f04f 4180    	mov.w	r1, #0x40000000
  328640: 4798         	blx	r3
  328642: 9b05         	ldr	r3, [sp, #0x14]
  328644: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  328648: 681b         	ldr	r3, [r3]
  32864a: 3390         	adds	r3, #0x90
  32864c: 681b         	ldr	r3, [r3]
  32864e: 9a05         	ldr	r2, [sp, #0x14]
  328650: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  328654: 4610         	mov	r0, r2
  328656: 2100         	movs	r1, #0x0
  328658: 4798         	blx	r3
  32865a: 9b05         	ldr	r3, [sp, #0x14]
  32865c: 681b         	ldr	r3, [r3]
  32865e: f503 73f0    	add.w	r3, r3, #0x1e0
  328662: 681b         	ldr	r3, [r3]
  328664: 9805         	ldr	r0, [sp, #0x14]
  328666: 4798         	blx	r3
  328668: 9b05         	ldr	r3, [sp, #0x14]
  32866a: 681b         	ldr	r3, [r3]
  32866c: 33cc         	adds	r3, #0xcc
  32866e: 681b         	ldr	r3, [r3]
  328670: 9905         	ldr	r1, [sp, #0x14]
  328672: 9a05         	ldr	r2, [sp, #0x14]
  328674: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  328678: 4608         	mov	r0, r1
  32867a: 4611         	mov	r1, r2
  32867c: 2200         	movs	r2, #0x0
  32867e: 4798         	blx	r3
  328680: 9b05         	ldr	r3, [sp, #0x14]
  328682: 681b         	ldr	r3, [r3]
  328684: 33cc         	adds	r3, #0xcc
  328686: 681b         	ldr	r3, [r3]
  328688: 9905         	ldr	r1, [sp, #0x14]
  32868a: 9a05         	ldr	r2, [sp, #0x14]
  32868c: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  328690: 4608         	mov	r0, r1
  328692: 4611         	mov	r1, r2
  328694: 2200         	movs	r2, #0x0
  328696: 4798         	blx	r3
  328698: 9b05         	ldr	r3, [sp, #0x14]
  32869a: f8d3 4150    	ldr.w	r4, [r3, #0x150]
  32869e: f04f 507e    	mov.w	r0, #0x3f800000
  3286a2: f7b4 faef    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x4ba22
  3286a6: 4603         	mov	r3, r0
  3286a8: 4620         	mov	r0, r4
  3286aa: 4619         	mov	r1, r3
  3286ac: f271 fdde    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x271bbc
  3286b0: 9b05         	ldr	r3, [sp, #0x14]
  3286b2: f8d3 414c    	ldr.w	r4, [r3, #0x14c]
  3286b6: ab07         	add	r3, sp, #0x1c
  3286b8: 4618         	mov	r0, r3
  3286ba: f061 f69b    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x461d36
  3286be: aa08         	add	r2, sp, #0x20
  3286c0: ab07         	add	r3, sp, #0x1c
  3286c2: 4610         	mov	r0, r2
  3286c4: 4a72         	ldr	r2, [pc, #0x1c8]        @ 0x328890 <GDEAGLE::init()+0x2f8>
  3286c6: 447a         	add	r2, pc
  3286c8: 4611         	mov	r1, r2
  3286ca: 461a         	mov	r2, r3
  3286cc: f08e f1c8    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x48e390
  3286d0: ab08         	add	r3, sp, #0x20
  3286d2: 4618         	mov	r0, r3
  3286d4: f271 f9b2    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x271364
  3286d8: 4603         	mov	r3, r0
  3286da: 4620         	mov	r0, r4
  3286dc: 4619         	mov	r1, r3
  3286de: f271 fdc5    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x271b8a
  3286e2: ab08         	add	r3, sp, #0x20
  3286e4: 4618         	mov	r0, r3
  3286e6: f08d f115    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x48d22a
  3286ea: ab07         	add	r3, sp, #0x1c
  3286ec: 4618         	mov	r0, r3
  3286ee: f061 f685    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x461d0a
  3286f2: 9b05         	ldr	r3, [sp, #0x14]
  3286f4: f8d3 4150    	ldr.w	r4, [r3, #0x150]
  3286f8: f64c 40cd    	movw	r0, #0xcccd
  3286fc: f6c3 704c    	movt	r0, #0x3f4c
  328700: f7b4 fac0    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x4ba80
  328704: 4603         	mov	r3, r0
  328706: 4620         	mov	r0, r4
  328708: 4619         	mov	r1, r3
  32870a: f271 fdaf    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x271b5e
  32870e: 9b05         	ldr	r3, [sp, #0x14]
  328710: f8d3 414c    	ldr.w	r4, [r3, #0x14c]
  328714: ab07         	add	r3, sp, #0x1c
  328716: 4618         	mov	r0, r3
  328718: f061 f66c    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x461cd8
  32871c: aa08         	add	r2, sp, #0x20
  32871e: ab07         	add	r3, sp, #0x1c
  328720: 4610         	mov	r0, r2
  328722: 4a5c         	ldr	r2, [pc, #0x170]        @ 0x328894 <GDEAGLE::init()+0x2fc>
  328724: 447a         	add	r2, pc
  328726: 4611         	mov	r1, r2
  328728: 461a         	mov	r2, r3
  32872a: f08e f199    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x48e332
  32872e: ab08         	add	r3, sp, #0x20
  328730: 4618         	mov	r0, r3
  328732: f271 f983    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x271306
  328736: 4603         	mov	r3, r0
  328738: 4620         	mov	r0, r4
  32873a: 4619         	mov	r1, r3
  32873c: f271 fd96    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x271b2c
  328740: ab08         	add	r3, sp, #0x20
  328742: 4618         	mov	r0, r3
  328744: f08d f0e6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x48d1cc
  328748: ab07         	add	r3, sp, #0x1c
  32874a: 4618         	mov	r0, r3
  32874c: f061 f656    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x461cac
  328750: 9b05         	ldr	r3, [sp, #0x14]
  328752: 2200         	movs	r2, #0x0
  328754: f8c3 2144    	str.w	r2, [r3, #0x144]
  328758: 9b05         	ldr	r3, [sp, #0x14]
  32875a: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  32875e: 4618         	mov	r0, r3
  328760: 2100         	movs	r1, #0x0
  328762: f271 fcdd    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2719ba
  328766: 4603         	mov	r3, r0
  328768: 4618         	mov	r0, r3
  32876a: f7b4 fa83    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x4bafa
  32876e: 4602         	mov	r2, r0
  328770: 9b05         	ldr	r3, [sp, #0x14]
  328772: f8c3 2148    	str.w	r2, [r3, #0x148]
  328776: 9b05         	ldr	r3, [sp, #0x14]
  328778: f64c 42cd    	movw	r2, #0xcccd
  32877c: f6c3 624c    	movt	r2, #0x3e4c
  328780: f8c3 215c    	str.w	r2, [r3, #0x15c]
  328784: 9b05         	ldr	r3, [sp, #0x14]
  328786: f04f 0200    	mov.w	r2, #0x0
  32878a: f6c3 72a0    	movt	r2, #0x3fa0
  32878e: f8c3 2160    	str.w	r2, [r3, #0x160]
  328792: 9b05         	ldr	r3, [sp, #0x14]
  328794: f04f 4280    	mov.w	r2, #0x40000000
  328798: f8c3 2164    	str.w	r2, [r3, #0x164]
  32879c: 9b05         	ldr	r3, [sp, #0x14]
  32879e: f04f 0200    	mov.w	r2, #0x0
  3287a2: f2c4 1270    	movt	r2, #0x4170
  3287a6: f8c3 216c    	str.w	r2, [r3, #0x16c]
  3287aa: 9b05         	ldr	r3, [sp, #0x14]
  3287ac: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3287b0: 681b         	ldr	r3, [r3]
  3287b2: 3398         	adds	r3, #0x98
  3287b4: 681b         	ldr	r3, [r3]
  3287b6: 9a05         	ldr	r2, [sp, #0x14]
  3287b8: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  3287bc: 4610         	mov	r0, r2
  3287be: f04f 0100    	mov.w	r1, #0x0
  3287c2: f2c4 01e0    	movt	r1, #0x40e0
  3287c6: 4798         	blx	r3
  3287c8: 9b05         	ldr	r3, [sp, #0x14]
  3287ca: 2232         	movs	r2, #0x32
  3287cc: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  3287d0: 9b05         	ldr	r3, [sp, #0x14]
  3287d2: 220f         	movs	r2, #0xf
  3287d4: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  3287d8: 9b05         	ldr	r3, [sp, #0x14]
  3287da: 2232         	movs	r2, #0x32
  3287dc: f8c3 218c    	str.w	r2, [r3, #0x18c]
  3287e0: 9b05         	ldr	r3, [sp, #0x14]
  3287e2: 2212         	movs	r2, #0x12
  3287e4: f8c3 2188    	str.w	r2, [r3, #0x188]
  3287e8: 9b05         	ldr	r3, [sp, #0x14]
  3287ea: 2219         	movs	r2, #0x19
  3287ec: f8c3 219c    	str.w	r2, [r3, #0x19c]
  3287f0: 9b05         	ldr	r3, [sp, #0x14]
  3287f2: 2223         	movs	r2, #0x23
  3287f4: f8c3 21a0    	str.w	r2, [r3, #0x1a0]
  3287f8: 4b27         	ldr	r3, [pc, #0x9c]         @ 0x328898 <GDEAGLE::init()+0x300>
  3287fa: 447b         	add	r3, pc
  3287fc: 681a         	ldr	r2, [r3]
  3287fe: 9b05         	ldr	r3, [sp, #0x14]
  328800: f8c3 21a4    	str.w	r2, [r3, #0x1a4]
  328804: 9b05         	ldr	r3, [sp, #0x14]
  328806: 2201         	movs	r2, #0x1
  328808: f883 2183    	strb.w	r2, [r3, #0x183]
  32880c: 9b05         	ldr	r3, [sp, #0x14]
  32880e: 220f         	movs	r2, #0xf
  328810: f8c3 2170    	str.w	r2, [r3, #0x170]
  328814: 9b05         	ldr	r3, [sp, #0x14]
  328816: 224b         	movs	r2, #0x4b
  328818: f8c3 2174    	str.w	r2, [r3, #0x174]
  32881c: 9c05         	ldr	r4, [sp, #0x14]
  32881e: 466b         	mov	r3, sp
  328820: 4618         	mov	r0, r3
  328822: ed9f 0b17    	vldr	d0, [pc, #92]           @ 0x328880 <GDEAGLE::init()+0x2e8>
  328826: eeb2 1b08    	vmov.f64	d1, #1.200000e+01
  32882a: f7fe ffc9    	bl	0x3277c0 <GASNADE::getWeaponRect()+0x1b0> @ imm = #-0x106e
  32882e: f504 74ec    	add.w	r4, r4, #0x1d8
  328832: 466b         	mov	r3, sp
  328834: cb0f         	ldm	r3, {r0, r1, r2, r3}
  328836: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  32883a: 4b18         	ldr	r3, [pc, #0x60]         @ 0x32889c <GDEAGLE::init()+0x304>
  32883c: 447b         	add	r3, pc
  32883e: 681a         	ldr	r2, [r3]
  328840: 9b05         	ldr	r3, [sp, #0x14]
  328842: f8c3 2198    	str.w	r2, [r3, #0x198]
  328846: 2301         	movs	r3, #0x1
  328848: e015         	b	0x328876 <GDEAGLE::init()+0x2de> @ imm = #0x2a
  32884a: ab08         	add	r3, sp, #0x20
  32884c: 4618         	mov	r0, r3
  32884e: f08d f061    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x48d0c2
  328852: e7ff         	b	0x328854 <GDEAGLE::init()+0x2bc> @ imm = #-0x2
  328854: ab07         	add	r3, sp, #0x1c
  328856: 4618         	mov	r0, r3
  328858: f061 f5d0    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x461ba0
  32885c: f05f f426    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x45f84c
  328860: ab08         	add	r3, sp, #0x20
  328862: 4618         	mov	r0, r3
  328864: f08d f056    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x48d0ac
  328868: e7ff         	b	0x32886a <GDEAGLE::init()+0x2d2> @ imm = #-0x2
  32886a: ab07         	add	r3, sp, #0x1c
  32886c: 4618         	mov	r0, r3
  32886e: f061 f5c5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x461b8a
  328872: f05f f41b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x45f836
  328876: 4618         	mov	r0, r3
  328878: b00b         	add	sp, #0x2c
  32887a: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x32887b); words below are literal-pool data ---
  32887c: f3af 8000    	nop.w
  328880: 0000         	movs	r0, r0
  328882: 0000         	movs	r0, r0
  328884: 4000         	ands	r0, r0
  328886: 405a         	eors	r2, r3
  328888: fc7c 0049    	ldc2l	p0, c0, [r12], #-292
  32888c: fc72 0049    	ldc2l	p0, c0, [r2], #-292
  328890: fb96 0049    	<unknown>
  328894: fb3c 0049    	<unknown>
  328898: ab32         	add	r3, sp, #0xc8
  32889a: 0060         	lsls	r0, r4, #0x1
  32889c: aaec         	add	r2, sp, #0x3b0
  32889e: 0060         	lsls	r0, r4, #0x1

// ==== GDEAGLE::~GDEAGLE
//      file offset 0x3288a0 (= ELF address; Ghidra 0x3388a0), 92 bytes, Thumb-2
  3288a0: b500         	push	{lr}
  3288a2: b083         	sub	sp, #0xc
  3288a4: 9001         	str	r0, [sp, #0x4]
  3288a6: 4913         	ldr	r1, [pc, #0x4c]         @ 0x3288f4 <GDEAGLE::~GDEAGLE()+0x54>
  3288a8: 4479         	add	r1, pc
  3288aa: 9b01         	ldr	r3, [sp, #0x4]
  3288ac: 4a12         	ldr	r2, [pc, #0x48]         @ 0x3288f8 <GDEAGLE::~GDEAGLE()+0x58>
  3288ae: 588a         	ldr	r2, [r1, r2]
  3288b0: 3208         	adds	r2, #0x8
  3288b2: 601a         	str	r2, [r3]
  3288b4: 9b01         	ldr	r3, [sp, #0x4]
  3288b6: 4618         	mov	r0, r3
  3288b8: f267 feb8    	bl	0x59062c <cocos2d::CCNode::removeAllChildren()> @ imm = #0x267d70
  3288bc: 9b01         	ldr	r3, [sp, #0x4]
  3288be: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3288c2: 4618         	mov	r0, r3
  3288c4: f26f faf8    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x26f5f0
  3288c8: 9b01         	ldr	r3, [sp, #0x4]
  3288ca: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3288ce: 4618         	mov	r0, r3
  3288d0: f26f faf2    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x26f5e4
  3288d4: 9b01         	ldr	r3, [sp, #0x4]
  3288d6: 4618         	mov	r0, r3
  3288d8: f0ec fc8a    	bl	0x4151f0 <Weapon::~Weapon()> @ imm = #0xec914
  3288dc: 2300         	movs	r3, #0x0
  3288de: 2b00         	cmp	r3, #0x0
  3288e0: d002         	beq	0x3288e8 <GDEAGLE::~GDEAGLE()+0x48> @ imm = #0x4
  3288e2: 9801         	ldr	r0, [sp, #0x4]
  3288e4: f05f f3de    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x45f7bc
  3288e8: 9b01         	ldr	r3, [sp, #0x4]
  3288ea: 4618         	mov	r0, r3
  3288ec: b003         	add	sp, #0xc
  3288ee: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3288f1); words below are literal-pool data ---
  3288f2: bf00         	nop
  3288f4: a160         	adr	r1, #384 <GDEAGLE::triggerPull(float)+0x40>
  3288f6: 0060         	lsls	r0, r4, #0x1
  3288f8: da64         	bge	0x3289c4 <GDEAGLE::triggerPull(float)+0xac> @ imm = #0xc8
  3288fa: ffff b500    	<unknown>

// ==== GDEAGLE::~GDEAGLE
//      file offset 0x3288fc (= ELF address; Ghidra 0x3388fc), 28 bytes, Thumb-2
  3288fc: b500         	push	{lr}
  3288fe: b083         	sub	sp, #0xc
  328900: 9001         	str	r0, [sp, #0x4]
  328902: 9801         	ldr	r0, [sp, #0x4]
  328904: f7ff ffcc    	bl	0x3288a0 <GDEAGLE::~GDEAGLE()> @ imm = #-0x68
  328908: 9801         	ldr	r0, [sp, #0x4]
  32890a: f05f f3cb    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x45f796
  32890e: 9b01         	ldr	r3, [sp, #0x4]
  328910: 4618         	mov	r0, r3
  328912: b003         	add	sp, #0xc
  328914: f85d fb04    	ldr	pc, [sp], #4

// ==== GDEAGLE::triggerPull
//      file offset 0x328918 (= ELF address; Ghidra 0x338918), 352 bytes, Thumb-2
  328918: b510         	push	{r4, lr}
  32891a: b088         	sub	sp, #0x20
  32891c: 9003         	str	r0, [sp, #0xc]
  32891e: 9102         	str	r1, [sp, #0x8]
  328920: 4c53         	ldr	r4, [pc, #0x14c]        @ 0x328a70 <GDEAGLE::triggerPull(float)+0x158>
  328922: 447c         	add	r4, pc
  328924: 9b03         	ldr	r3, [sp, #0xc]
  328926: ed93 7a44    	vldr	s14, [r3, #272]
  32892a: 9b03         	ldr	r3, [sp, #0xc]
  32892c: edd3 7a57    	vldr	s15, [r3, #348]
  328930: eeb4 7ae7    	vcmpe.f32	s14, s15
  328934: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  328938: dd71         	ble	0x328a1e <GDEAGLE::triggerPull(float)+0x106> @ imm = #0xe2
  32893a: 9b03         	ldr	r3, [sp, #0xc]
  32893c: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  328940: b21b         	sxth	r3, r3
  328942: 2b00         	cmp	r3, #0x0
  328944: dd0f         	ble	0x328966 <GDEAGLE::triggerPull(float)+0x4e> @ imm = #0x1e
  328946: 9b03         	ldr	r3, [sp, #0xc]
  328948: 681b         	ldr	r3, [r3]
  32894a: f503 7333    	add.w	r3, r3, #0x2cc
  32894e: 681b         	ldr	r3, [r3]
  328950: 9a03         	ldr	r2, [sp, #0xc]
  328952: 4610         	mov	r0, r2
  328954: 4798         	blx	r3
  328956: 4603         	mov	r3, r0
  328958: f083 0301    	eor	r3, r3, #0x1
  32895c: b2db         	uxtb	r3, r3
  32895e: 2b00         	cmp	r3, #0x0
  328960: d001         	beq	0x328966 <GDEAGLE::triggerPull(float)+0x4e> @ imm = #0x2
  328962: 2301         	movs	r3, #0x1
  328964: e000         	b	0x328968 <GDEAGLE::triggerPull(float)+0x50> @ imm = #0x0
  328966: 2300         	movs	r3, #0x0
  328968: 2b00         	cmp	r3, #0x0
  32896a: d02c         	beq	0x3289c6 <GDEAGLE::triggerPull(float)+0xae> @ imm = #0x58
  32896c: 9b03         	ldr	r3, [sp, #0xc]
  32896e: 2201         	movs	r2, #0x1
  328970: f883 2180    	strb.w	r2, [r3, #0x180]
  328974: 9b03         	ldr	r3, [sp, #0xc]
  328976: 681b         	ldr	r3, [r3]
  328978: f503 7325    	add.w	r3, r3, #0x294
  32897c: 681b         	ldr	r3, [r3]
  32897e: 9803         	ldr	r0, [sp, #0xc]
  328980: 4798         	blx	r3
  328982: 9b03         	ldr	r3, [sp, #0xc]
  328984: 681b         	ldr	r3, [r3]
  328986: f503 7342    	add.w	r3, r3, #0x308
  32898a: 681b         	ldr	r3, [r3]
  32898c: 9a03         	ldr	r2, [sp, #0xc]
  32898e: 4610         	mov	r0, r2
  328990: 4798         	blx	r3
  328992: 9b03         	ldr	r3, [sp, #0xc]
  328994: 681b         	ldr	r3, [r3]
  328996: f503 7343    	add.w	r3, r3, #0x30c
  32899a: 681b         	ldr	r3, [r3]
  32899c: 9a03         	ldr	r2, [sp, #0xc]
  32899e: 4610         	mov	r0, r2
  3289a0: 4798         	blx	r3
  3289a2: 9b03         	ldr	r3, [sp, #0xc]
  3289a4: f893 3195    	ldrb.w	r3, [r3, #0x195]
  3289a8: 3301         	adds	r3, #0x1
  3289aa: b2da         	uxtb	r2, r3
  3289ac: 9b03         	ldr	r3, [sp, #0xc]
  3289ae: f883 2195    	strb.w	r2, [r3, #0x195]
  3289b2: 9b03         	ldr	r3, [sp, #0xc]
  3289b4: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  3289b8: b29b         	uxth	r3, r3
  3289ba: 3b00         	subs	r3, #0x0
  3289bc: b29a         	uxth	r2, r3
  3289be: 9b03         	ldr	r3, [sp, #0xc]
  3289c0: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  3289c4: e026         	b	0x328a14 <GDEAGLE::triggerPull(float)+0xfc> @ imm = #0x4c
  3289c6: 9b03         	ldr	r3, [sp, #0xc]
  3289c8: 681b         	ldr	r3, [r3]
  3289ca: f503 7333    	add.w	r3, r3, #0x2cc
  3289ce: 681b         	ldr	r3, [r3]
  3289d0: 9a03         	ldr	r2, [sp, #0xc]
  3289d2: 4610         	mov	r0, r2
  3289d4: 4798         	blx	r3
  3289d6: 4603         	mov	r3, r0
  3289d8: f083 0301    	eor	r3, r3, #0x1
  3289dc: b2db         	uxtb	r3, r3
  3289de: 2b00         	cmp	r3, #0x0
  3289e0: d018         	beq	0x328a14 <GDEAGLE::triggerPull(float)+0xfc> @ imm = #0x30
  3289e2: 4b24         	ldr	r3, [pc, #0x90]         @ 0x328a74 <GDEAGLE::triggerPull(float)+0x15c>
  3289e4: 58e3         	ldr	r3, [r4, r3]
  3289e6: 681c         	ldr	r4, [r3]
  3289e8: 9b03         	ldr	r3, [sp, #0xc]
  3289ea: 681b         	ldr	r3, [r3]
  3289ec: f503 7348    	add.w	r3, r3, #0x320
  3289f0: 681b         	ldr	r3, [r3]
  3289f2: 9a03         	ldr	r2, [sp, #0xc]
  3289f4: a904         	add	r1, sp, #0x10
  3289f6: 4608         	mov	r0, r1
  3289f8: 4611         	mov	r1, r2
  3289fa: 4798         	blx	r3
  3289fc: 466b         	mov	r3, sp
  3289fe: aa06         	add	r2, sp, #0x18
  328a00: e892 0003    	ldm.w	r2, {r0, r1}
  328a04: e883 0003    	stm.w	r3, {r0, r1}
  328a08: ab04         	add	r3, sp, #0x10
  328a0a: cb0c         	ldm	r3, {r2, r3}
  328a0c: 4620         	mov	r0, r4
  328a0e: 2100         	movs	r1, #0x0
  328a10: f0cf faf2    	bl	0x3f7ff8 <Sound::playSoundPosition(int, cpVect)> @ imm = #0xcf5e4
  328a14: 9b03         	ldr	r3, [sp, #0xc]
  328a16: f04f 0200    	mov.w	r2, #0x0
  328a1a: f8c3 2110    	str.w	r2, [r3, #0x110]
  328a1e: 9b03         	ldr	r3, [sp, #0xc]
  328a20: 681b         	ldr	r3, [r3]
  328a22: f503 7333    	add.w	r3, r3, #0x2cc
  328a26: 681b         	ldr	r3, [r3]
  328a28: 9a03         	ldr	r2, [sp, #0xc]
  328a2a: 4610         	mov	r0, r2
  328a2c: 4798         	blx	r3
  328a2e: 4603         	mov	r3, r0
  328a30: f083 0301    	eor	r3, r3, #0x1
  328a34: b2db         	uxtb	r3, r3
  328a36: 2b00         	cmp	r3, #0x0
  328a38: d00c         	beq	0x328a54 <GDEAGLE::triggerPull(float)+0x13c> @ imm = #0x18
  328a3a: 9b03         	ldr	r3, [sp, #0xc]
  328a3c: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  328a40: 2b00         	cmp	r3, #0x0
  328a42: d107         	bne	0x328a54 <GDEAGLE::triggerPull(float)+0x13c> @ imm = #0xe
  328a44: 9b03         	ldr	r3, [sp, #0xc]
  328a46: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  328a4a: b21b         	sxth	r3, r3
  328a4c: 2b00         	cmp	r3, #0x0
  328a4e: dd01         	ble	0x328a54 <GDEAGLE::triggerPull(float)+0x13c> @ imm = #0x2
  328a50: 2301         	movs	r3, #0x1
  328a52: e000         	b	0x328a56 <GDEAGLE::triggerPull(float)+0x13e> @ imm = #0x0
  328a54: 2300         	movs	r3, #0x0
  328a56: 2b00         	cmp	r3, #0x0
  328a58: d008         	beq	0x328a6c <GDEAGLE::triggerPull(float)+0x154> @ imm = #0x10
  328a5a: 9b03         	ldr	r3, [sp, #0xc]
  328a5c: 2201         	movs	r2, #0x1
  328a5e: f883 2181    	strb.w	r2, [r3, #0x181]
  328a62: 9b03         	ldr	r3, [sp, #0xc]
  328a64: f04f 0200    	mov.w	r2, #0x0
  328a68: f8c3 2158    	str.w	r2, [r3, #0x158]
  328a6c: b008         	add	sp, #0x20
  328a6e: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x328a6f); words below are literal-pool data ---
  328a70: a0e6         	adr	r0, #920 <GDEAGLE::updateItemStep(float)+0xe2>
  328a72: 0060         	lsls	r0, r4, #0x1
  328a74: d730         	bvc	0x328ad8 <GDEAGLE::updateItemStep(float)+0x60> @ imm = #0x60
  328a76: ffff b500    	<unknown>

// ==== GDEAGLE::updateItemStep
//      file offset 0x328a78 (= ELF address; Ghidra 0x338a78), 282 bytes, Thumb-2
  328a78: b500         	push	{lr}
  328a7a: ed2d 8b02    	vpush	{d8}
  328a7e: b085         	sub	sp, #0x14
  328a80: 9001         	str	r0, [sp, #0x4]
  328a82: 9100         	str	r1, [sp]
  328a84: 9b01         	ldr	r3, [sp, #0x4]
  328a86: ed93 7a56    	vldr	s14, [r3, #344]
  328a8a: eddd 7a00    	vldr	s15, [sp]
  328a8e: ee77 7a27    	vadd.f32	s15, s14, s15
  328a92: 9b01         	ldr	r3, [sp, #0x4]
  328a94: edc3 7a56    	vstr	s15, [r3, #344]
  328a98: 9b01         	ldr	r3, [sp, #0x4]
  328a9a: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  328a9e: 681b         	ldr	r3, [r3]
  328aa0: 3390         	adds	r3, #0x90
  328aa2: 681b         	ldr	r3, [r3]
  328aa4: 9a01         	ldr	r2, [sp, #0x4]
  328aa6: f8d2 11f0    	ldr.w	r1, [r2, #0x1f0]
  328aaa: 9a01         	ldr	r2, [sp, #0x4]
  328aac: f892 2180    	ldrb.w	r2, [r2, #0x180]
  328ab0: 4608         	mov	r0, r1
  328ab2: 4611         	mov	r1, r2
  328ab4: 4798         	blx	r3
  328ab6: 9b01         	ldr	r3, [sp, #0x4]
  328ab8: 681b         	ldr	r3, [r3]
  328aba: f503 7315    	add.w	r3, r3, #0x254
  328abe: 681b         	ldr	r3, [r3]
  328ac0: 9a01         	ldr	r2, [sp, #0x4]
  328ac2: 4610         	mov	r0, r2
  328ac4: 9900         	ldr	r1, [sp]
  328ac6: 4798         	blx	r3
  328ac8: 9b01         	ldr	r3, [sp, #0x4]
  328aca: f893 3181    	ldrb.w	r3, [r3, #0x181]
  328ace: 2b00         	cmp	r3, #0x0
  328ad0: d013         	beq	0x328afa <GDEAGLE::updateItemStep(float)+0x82> @ imm = #0x26
  328ad2: 9b01         	ldr	r3, [sp, #0x4]
  328ad4: ed93 8a56    	vldr	s16, [r3, #344]
  328ad8: 9b01         	ldr	r3, [sp, #0x4]
  328ada: 681b         	ldr	r3, [r3]
  328adc: f503 732e    	add.w	r3, r3, #0x2b8
  328ae0: 681b         	ldr	r3, [r3]
  328ae2: 9a01         	ldr	r2, [sp, #0x4]
  328ae4: 4610         	mov	r0, r2
  328ae6: 4798         	blx	r3
  328ae8: ee07 0a90    	vmov	s15, r0
  328aec: eeb4 8ae7    	vcmpe.f32	s16, s15
  328af0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  328af4: dd01         	ble	0x328afa <GDEAGLE::updateItemStep(float)+0x82> @ imm = #0x2
  328af6: 2301         	movs	r3, #0x1
  328af8: e000         	b	0x328afc <GDEAGLE::updateItemStep(float)+0x84> @ imm = #0x0
  328afa: 2300         	movs	r3, #0x0
  328afc: 2b00         	cmp	r3, #0x0
  328afe: d043         	beq	0x328b88 <GDEAGLE::updateItemStep(float)+0x110> @ imm = #0x86
  328b00: 9b01         	ldr	r3, [sp, #0x4]
  328b02: 2200         	movs	r2, #0x0
  328b04: f883 2181    	strb.w	r2, [r3, #0x181]
  328b08: 9b01         	ldr	r3, [sp, #0x4]
  328b0a: f04f 0200    	mov.w	r2, #0x0
  328b0e: f8c3 2110    	str.w	r2, [r3, #0x110]
  328b12: 9b01         	ldr	r3, [sp, #0x4]
  328b14: 681b         	ldr	r3, [r3]
  328b16: f503 732d    	add.w	r3, r3, #0x2b4
  328b1a: 681b         	ldr	r3, [r3]
  328b1c: 9a01         	ldr	r2, [sp, #0x4]
  328b1e: 4610         	mov	r0, r2
  328b20: 4798         	blx	r3
  328b22: 4602         	mov	r2, r0
  328b24: 9b01         	ldr	r3, [sp, #0x4]
  328b26: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  328b2a: b21b         	sxth	r3, r3
  328b2c: 1ad3         	subs	r3, r2, r3
  328b2e: 9303         	str	r3, [sp, #0xc]
  328b30: 9b01         	ldr	r3, [sp, #0x4]
  328b32: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  328b36: b29a         	uxth	r2, r3
  328b38: 9b03         	ldr	r3, [sp, #0xc]
  328b3a: b29b         	uxth	r3, r3
  328b3c: 1ad3         	subs	r3, r2, r3
  328b3e: b29b         	uxth	r3, r3
  328b40: b29a         	uxth	r2, r3
  328b42: 9b01         	ldr	r3, [sp, #0x4]
  328b44: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  328b48: 9b01         	ldr	r3, [sp, #0x4]
  328b4a: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  328b4e: b29a         	uxth	r2, r3
  328b50: 9b03         	ldr	r3, [sp, #0xc]
  328b52: b29b         	uxth	r3, r3
  328b54: 4413         	add	r3, r2
  328b56: b29a         	uxth	r2, r3
  328b58: 9b01         	ldr	r3, [sp, #0x4]
  328b5a: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  328b5e: b21b         	sxth	r3, r3
  328b60: ea03 73e3    	and.w	r3, r3, r3, asr #31
  328b64: b29b         	uxth	r3, r3
  328b66: b29b         	uxth	r3, r3
  328b68: 4413         	add	r3, r2
  328b6a: b29b         	uxth	r3, r3
  328b6c: b29a         	uxth	r2, r3
  328b6e: 9b01         	ldr	r3, [sp, #0x4]
  328b70: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  328b74: 9b01         	ldr	r3, [sp, #0x4]
  328b76: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  328b7a: b21b         	sxth	r3, r3
  328b7c: ea23 73e3    	bic.w	r3, r3, r3, asr #31
  328b80: b29a         	uxth	r2, r3
  328b82: 9b01         	ldr	r3, [sp, #0x4]
  328b84: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  328b88: b005         	add	sp, #0x14
  328b8a: ecbd 8b02    	vpop	{d8}
  328b8e: f85d fb04    	ldr	pc, [sp], #4

// ==== GDEAGLE::updateRemoteItemStep
//      file offset 0x328b94 (= ELF address; Ghidra 0x338b94), 94 bytes, Thumb-2
  328b94: b500         	push	{lr}
  328b96: b083         	sub	sp, #0xc
  328b98: 9001         	str	r0, [sp, #0x4]
  328b9a: 9100         	str	r1, [sp]
  328b9c: 9b01         	ldr	r3, [sp, #0x4]
  328b9e: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  328ba2: 681b         	ldr	r3, [r3]
  328ba4: 3390         	adds	r3, #0x90
  328ba6: 681b         	ldr	r3, [r3]
  328ba8: 9a01         	ldr	r2, [sp, #0x4]
  328baa: f8d2 11f0    	ldr.w	r1, [r2, #0x1f0]
  328bae: 9a01         	ldr	r2, [sp, #0x4]
  328bb0: f892 2180    	ldrb.w	r2, [r2, #0x180]
  328bb4: 4608         	mov	r0, r1
  328bb6: 4611         	mov	r1, r2
  328bb8: 4798         	blx	r3
  328bba: 9b01         	ldr	r3, [sp, #0x4]
  328bbc: 681b         	ldr	r3, [r3]
  328bbe: f503 7315    	add.w	r3, r3, #0x254
  328bc2: 681b         	ldr	r3, [r3]
  328bc4: 9a01         	ldr	r2, [sp, #0x4]
  328bc6: 4610         	mov	r0, r2
  328bc8: 9900         	ldr	r1, [sp]
  328bca: 4798         	blx	r3
  328bcc: 9b01         	ldr	r3, [sp, #0x4]
  328bce: f893 2194    	ldrb.w	r2, [r3, #0x194]
  328bd2: 9b01         	ldr	r3, [sp, #0x4]
  328bd4: f893 3195    	ldrb.w	r3, [r3, #0x195]
  328bd8: 429a         	cmp	r2, r3
  328bda: d007         	beq	0x328bec <GDEAGLE::updateRemoteItemStep(float)+0x58> @ imm = #0xe
  328bdc: 9b01         	ldr	r3, [sp, #0x4]
  328bde: 681b         	ldr	r3, [r3]
  328be0: f503 7318    	add.w	r3, r3, #0x260
  328be4: 681b         	ldr	r3, [r3]
  328be6: 9801         	ldr	r0, [sp, #0x4]
  328be8: 9900         	ldr	r1, [sp]
  328bea: 4798         	blx	r3
  328bec: b003         	add	sp, #0xc
  328bee: f85d fb04    	ldr	pc, [sp], #4

// ==== GDEAGLE::remoteTriggerPull
//      file offset 0x328bf4 (= ELF address; Ghidra 0x338bf4), 116 bytes, Thumb-2
  328bf4: b500         	push	{lr}
  328bf6: b083         	sub	sp, #0xc
  328bf8: 9001         	str	r0, [sp, #0x4]
  328bfa: 9100         	str	r1, [sp]
  328bfc: 9b01         	ldr	r3, [sp, #0x4]
  328bfe: ed93 7a44    	vldr	s14, [r3, #272]
  328c02: 9b01         	ldr	r3, [sp, #0x4]
  328c04: edd3 7a57    	vldr	s15, [r3, #348]
  328c08: eeb4 7ae7    	vcmpe.f32	s14, s15
  328c0c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  328c10: dd27         	ble	0x328c62 <GDEAGLE::remoteTriggerPull(float)+0x6e> @ imm = #0x4e
  328c12: 9b01         	ldr	r3, [sp, #0x4]
  328c14: f04f 0200    	mov.w	r2, #0x0
  328c18: f8c3 2110    	str.w	r2, [r3, #0x110]
  328c1c: 9b01         	ldr	r3, [sp, #0x4]
  328c1e: 2201         	movs	r2, #0x1
  328c20: f883 2180    	strb.w	r2, [r3, #0x180]
  328c24: 9b01         	ldr	r3, [sp, #0x4]
  328c26: 681b         	ldr	r3, [r3]
  328c28: f503 7325    	add.w	r3, r3, #0x294
  328c2c: 681b         	ldr	r3, [r3]
  328c2e: 9801         	ldr	r0, [sp, #0x4]
  328c30: 4798         	blx	r3
  328c32: 9b01         	ldr	r3, [sp, #0x4]
  328c34: 681b         	ldr	r3, [r3]
  328c36: f503 7342    	add.w	r3, r3, #0x308
  328c3a: 681b         	ldr	r3, [r3]
  328c3c: 9a01         	ldr	r2, [sp, #0x4]
  328c3e: 4610         	mov	r0, r2
  328c40: 4798         	blx	r3
  328c42: 9b01         	ldr	r3, [sp, #0x4]
  328c44: 681b         	ldr	r3, [r3]
  328c46: f503 7343    	add.w	r3, r3, #0x30c
  328c4a: 681b         	ldr	r3, [r3]
  328c4c: 9a01         	ldr	r2, [sp, #0x4]
  328c4e: 4610         	mov	r0, r2
  328c50: 4798         	blx	r3
  328c52: 9b01         	ldr	r3, [sp, #0x4]
  328c54: f893 3195    	ldrb.w	r3, [r3, #0x195]
  328c58: 3301         	adds	r3, #0x1
  328c5a: b2da         	uxtb	r2, r3
  328c5c: 9b01         	ldr	r3, [sp, #0x4]
  328c5e: f883 2195    	strb.w	r2, [r3, #0x195]
  328c62: b003         	add	sp, #0xc
  328c64: f85d fb04    	ldr	pc, [sp], #4

// ==== GDEAGLE::getShellPoint
//      file offset 0x328c68 (= ELF address; Ghidra 0x338c68), 204 bytes, Thumb-2
  328c68: b510         	push	{r4, lr}
  328c6a: b08e         	sub	sp, #0x38
  328c6c: 9001         	str	r0, [sp, #0x4]
  328c6e: 9100         	str	r1, [sp]
  328c70: 4c2e         	ldr	r4, [pc, #0xb8]         @ 0x328d2c <GDEAGLE::getShellPoint()+0xc4>
  328c72: 447c         	add	r4, pc
  328c74: ab02         	add	r3, sp, #0x8
  328c76: 4618         	mov	r0, r3
  328c78: f04f 0100    	mov.w	r1, #0x0
  328c7c: f2c4 2120    	movt	r1, #0x4220
  328c80: f04f 0200    	mov.w	r2, #0x0
  328c84: f2c4 1270    	movt	r2, #0x4170
  328c88: f26a f832    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x26a064
  328c8c: 9b00         	ldr	r3, [sp]
  328c8e: 681b         	ldr	r3, [r3]
  328c90: 3350         	adds	r3, #0x50
  328c92: 681b         	ldr	r3, [r3]
  328c94: 9a00         	ldr	r2, [sp]
  328c96: 4610         	mov	r0, r2
  328c98: 4798         	blx	r3
  328c9a: 4602         	mov	r2, r0
  328c9c: a906         	add	r1, sp, #0x18
  328c9e: ab02         	add	r3, sp, #0x8
  328ca0: 4608         	mov	r0, r1
  328ca2: 4611         	mov	r1, r2
  328ca4: 461a         	mov	r2, r3
  328ca6: f7fe fd7b    	bl	0x3277a0 <GASNADE::getWeaponRect()+0x190> @ imm = #-0x150a
  328caa: 9b00         	ldr	r3, [sp]
  328cac: 681b         	ldr	r3, [r3]
  328cae: f503 73c2    	add.w	r3, r3, #0x184
  328cb2: 681b         	ldr	r3, [r3]
  328cb4: 9a00         	ldr	r2, [sp]
  328cb6: a908         	add	r1, sp, #0x20
  328cb8: 4608         	mov	r0, r1
  328cba: 4611         	mov	r1, r2
  328cbc: 4798         	blx	r3
  328cbe: a904         	add	r1, sp, #0x10
  328cc0: aa06         	add	r2, sp, #0x18
  328cc2: ab08         	add	r3, sp, #0x20
  328cc4: 4608         	mov	r0, r1
  328cc6: 4611         	mov	r1, r2
  328cc8: 461a         	mov	r2, r3
  328cca: f269 fb2b    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x269656
  328cce: 4b18         	ldr	r3, [pc, #0x60]         @ 0x328d30 <GDEAGLE::getShellPoint()+0xc8>
  328cd0: 58e3         	ldr	r3, [r4, r3]
  328cd2: 681b         	ldr	r3, [r3]
  328cd4: 681b         	ldr	r3, [r3]
  328cd6: f503 73c4    	add.w	r3, r3, #0x188
  328cda: 681b         	ldr	r3, [r3]
  328cdc: 4a14         	ldr	r2, [pc, #0x50]         @ 0x328d30 <GDEAGLE::getShellPoint()+0xc8>
  328cde: 58a2         	ldr	r2, [r4, r2]
  328ce0: 6812         	ldr	r2, [r2]
  328ce2: a908         	add	r1, sp, #0x20
  328ce4: 4608         	mov	r0, r1
  328ce6: 4611         	mov	r1, r2
  328ce8: 4798         	blx	r3
  328cea: a906         	add	r1, sp, #0x18
  328cec: aa04         	add	r2, sp, #0x10
  328cee: ab08         	add	r3, sp, #0x20
  328cf0: 4608         	mov	r0, r1
  328cf2: 4611         	mov	r1, r2
  328cf4: 461a         	mov	r2, r3
  328cf6: f269 fb15    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x26962a
  328cfa: aa04         	add	r2, sp, #0x10
  328cfc: ab06         	add	r3, sp, #0x18
  328cfe: 4610         	mov	r0, r2
  328d00: 4619         	mov	r1, r3
  328d02: f26a f823    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x26a046
  328d06: eddd 7a04    	vldr	s15, [sp, #16]
  328d0a: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  328d0e: eddd 7a05    	vldr	s15, [sp, #20]
  328d12: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  328d16: 9b01         	ldr	r3, [sp, #0x4]
  328d18: 4618         	mov	r0, r3
  328d1a: eeb0 0b46    	vmov.f64	d0, d6
  328d1e: eeb0 1b47    	vmov.f64	d1, d7
  328d22: f7fe fd4d    	bl	0x3277c0 <GASNADE::getWeaponRect()+0x1b0> @ imm = #-0x1566
  328d26: 9801         	ldr	r0, [sp, #0x4]
  328d28: b00e         	add	sp, #0x38
  328d2a: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x328d2b); words below are literal-pool data ---
  328d2c: 9d96         	ldr	r5, [sp, #0x258]
  328d2e: 0060         	lsls	r0, r4, #0x1
  328d30: d744         	bvc	0x328dbc <GDEAGLE::setPrimaryConfiguration()+0x40> @ imm = #0x88
  328d32: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== GDEAGLE::playSound
//      file offset 0x328d34 (= ELF address; Ghidra 0x338d34), 72 bytes, Thumb-2
  328d34: b510         	push	{r4, lr}
  328d36: b088         	sub	sp, #0x20
  328d38: 9003         	str	r0, [sp, #0xc]
  328d3a: 4a0e         	ldr	r2, [pc, #0x38]         @ 0x328d74 <GDEAGLE::playSound()+0x40>
  328d3c: 447a         	add	r2, pc
  328d3e: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x328d78 <GDEAGLE::playSound()+0x44>
  328d40: 58d3         	ldr	r3, [r2, r3]
  328d42: 681c         	ldr	r4, [r3]
  328d44: 9b03         	ldr	r3, [sp, #0xc]
  328d46: 681b         	ldr	r3, [r3]
  328d48: f503 7348    	add.w	r3, r3, #0x320
  328d4c: 681b         	ldr	r3, [r3]
  328d4e: 9a03         	ldr	r2, [sp, #0xc]
  328d50: a904         	add	r1, sp, #0x10
  328d52: 4608         	mov	r0, r1
  328d54: 4611         	mov	r1, r2
  328d56: 4798         	blx	r3
  328d58: 466b         	mov	r3, sp
  328d5a: aa06         	add	r2, sp, #0x18
  328d5c: e892 0003    	ldm.w	r2, {r0, r1}
  328d60: e883 0003    	stm.w	r3, {r0, r1}
  328d64: ab04         	add	r3, sp, #0x10
  328d66: cb0c         	ldm	r3, {r2, r3}
  328d68: 4620         	mov	r0, r4
  328d6a: 212d         	movs	r1, #0x2d
  328d6c: f0cf f944    	bl	0x3f7ff8 <Sound::playSoundPosition(int, cpVect)> @ imm = #0xcf288
  328d70: b008         	add	sp, #0x20
  328d72: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x328d73); words below are literal-pool data ---
  328d74: 9ccc         	ldr	r4, [sp, #0x330]
  328d76: 0060         	lsls	r0, r4, #0x1
  328d78: d730         	bvc	0x328ddc <GDEAGLE::setPrimaryConfiguration()+0x60> @ imm = #0x60
  328d7a: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== GDEAGLE::setPrimaryConfiguration
//      file offset 0x328d7c (= ELF address; Ghidra 0x338d7c), 316 bytes, Thumb-2
  328d7c: b530         	push	{r4, r5, lr}
  328d7e: b085         	sub	sp, #0x14
  328d80: 9001         	str	r0, [sp, #0x4]
  328d82: 9b01         	ldr	r3, [sp, #0x4]
  328d84: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  328d88: 2b00         	cmp	r3, #0x0
  328d8a: d019         	beq	0x328dc0 <GDEAGLE::setPrimaryConfiguration()+0x44> @ imm = #0x32
  328d8c: 9b01         	ldr	r3, [sp, #0x4]
  328d8e: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  328d92: 4b48         	ldr	r3, [pc, #0x120]        @ 0x328eb4 <GDEAGLE::setPrimaryConfiguration()+0x138>
  328d94: 447b         	add	r3, pc
  328d96: ed93 6b00    	vldr	d6, [r3]
  328d9a: ed93 7b02    	vldr	d7, [r3, #8]
  328d9e: 4610         	mov	r0, r2
  328da0: eeb0 0b46    	vmov.f64	d0, d6
  328da4: eeb0 1b47    	vmov.f64	d1, d7
  328da8: f7fe fd1e    	bl	0x3277e8 <GASNADE::getWeaponRect()+0x1d8> @ imm = #-0x15c4
  328dac: 9b01         	ldr	r3, [sp, #0x4]
  328dae: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  328db2: 4618         	mov	r0, r3
  328db4: f04f 0200    	mov.w	r2, #0x0
  328db8: f04f 0300    	mov.w	r3, #0x0
  328dbc: f3aa f9e9    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x3aa3d2
  328dc0: 9b01         	ldr	r3, [sp, #0x4]
  328dc2: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  328dc6: 681b         	ldr	r3, [r3]
  328dc8: 334c         	adds	r3, #0x4c
  328dca: 681c         	ldr	r4, [r3]
  328dcc: 9b01         	ldr	r3, [sp, #0x4]
  328dce: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  328dd2: ab02         	add	r3, sp, #0x8
  328dd4: 4618         	mov	r0, r3
  328dd6: f04f 0100    	mov.w	r1, #0x0
  328dda: f04f 0200    	mov.w	r2, #0x0
  328dde: f269 ff87    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x269f0e
  328de2: ab02         	add	r3, sp, #0x8
  328de4: 4628         	mov	r0, r5
  328de6: 4619         	mov	r1, r3
  328de8: 47a0         	blx	r4
  328dea: 9b01         	ldr	r3, [sp, #0x4]
  328dec: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  328df0: 681b         	ldr	r3, [r3]
  328df2: 337c         	adds	r3, #0x7c
  328df4: 681c         	ldr	r4, [r3]
  328df6: 9b01         	ldr	r3, [sp, #0x4]
  328df8: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  328dfc: ab02         	add	r3, sp, #0x8
  328dfe: 4618         	mov	r0, r3
  328e00: f64c 41cd    	movw	r1, #0xcccd
  328e04: f6cb 614c    	movt	r1, #0xbe4c
  328e08: f64c 42cd    	movw	r2, #0xcccd
  328e0c: f6c3 62cc    	movt	r2, #0x3ecc
  328e10: f269 ff6e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x269edc
  328e14: ab02         	add	r3, sp, #0x8
  328e16: 4628         	mov	r0, r5
  328e18: 4619         	mov	r1, r3
  328e1a: 47a0         	blx	r4
  328e1c: 9b01         	ldr	r3, [sp, #0x4]
  328e1e: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  328e22: 681b         	ldr	r3, [r3]
  328e24: 3398         	adds	r3, #0x98
  328e26: 681b         	ldr	r3, [r3]
  328e28: 9a01         	ldr	r2, [sp, #0x4]
  328e2a: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  328e2e: 4610         	mov	r0, r2
  328e30: f04f 0100    	mov.w	r1, #0x0
  328e34: 4798         	blx	r3
  328e36: 9b01         	ldr	r3, [sp, #0x4]
  328e38: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  328e3c: 681b         	ldr	r3, [r3]
  328e3e: 3340         	adds	r3, #0x40
  328e40: 681b         	ldr	r3, [r3]
  328e42: 9a01         	ldr	r2, [sp, #0x4]
  328e44: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  328e48: 4610         	mov	r0, r2
  328e4a: f04f 517e    	mov.w	r1, #0x3f800000
  328e4e: 4798         	blx	r3
  328e50: 9b01         	ldr	r3, [sp, #0x4]
  328e52: 681b         	ldr	r3, [r3]
  328e54: 334c         	adds	r3, #0x4c
  328e56: 681c         	ldr	r4, [r3]
  328e58: 9d01         	ldr	r5, [sp, #0x4]
  328e5a: ab02         	add	r3, sp, #0x8
  328e5c: 4618         	mov	r0, r3
  328e5e: f04f 0100    	mov.w	r1, #0x0
  328e62: f04f 0200    	mov.w	r2, #0x0
  328e66: f269 ff43    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x269e86
  328e6a: ab02         	add	r3, sp, #0x8
  328e6c: 4628         	mov	r0, r5
  328e6e: 4619         	mov	r1, r3
  328e70: 47a0         	blx	r4
  328e72: 9b01         	ldr	r3, [sp, #0x4]
  328e74: 681b         	ldr	r3, [r3]
  328e76: 3340         	adds	r3, #0x40
  328e78: 681b         	ldr	r3, [r3]
  328e7a: 9a01         	ldr	r2, [sp, #0x4]
  328e7c: 4610         	mov	r0, r2
  328e7e: f04f 517e    	mov.w	r1, #0x3f800000
  328e82: 4798         	blx	r3
  328e84: 9b01         	ldr	r3, [sp, #0x4]
  328e86: 681b         	ldr	r3, [r3]
  328e88: 3398         	adds	r3, #0x98
  328e8a: 681b         	ldr	r3, [r3]
  328e8c: 9a01         	ldr	r2, [sp, #0x4]
  328e8e: 4610         	mov	r0, r2
  328e90: f04f 0100    	mov.w	r1, #0x0
  328e94: 4798         	blx	r3
  328e96: 9b01         	ldr	r3, [sp, #0x4]
  328e98: 2200         	movs	r2, #0x0
  328e9a: f883 2195    	strb.w	r2, [r3, #0x195]
  328e9e: 9b01         	ldr	r3, [sp, #0x4]
  328ea0: 2200         	movs	r2, #0x0
  328ea2: f883 2194    	strb.w	r2, [r3, #0x194]
  328ea6: 9b01         	ldr	r3, [sp, #0x4]
  328ea8: f04f 0200    	mov.w	r2, #0x0
  328eac: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  328eb0: b005         	add	sp, #0x14
  328eb2: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x328eb3); words below are literal-pool data ---
  328eb4: f518 0049    	adds.w	r0, r8, #0xc90000

// ==== GDEAGLE::setSecondaryConfiguration
//      file offset 0x328eb8 (= ELF address; Ghidra 0x338eb8), 344 bytes, Thumb-2
  328eb8: b530         	push	{r4, r5, lr}
  328eba: b085         	sub	sp, #0x14
  328ebc: 9001         	str	r0, [sp, #0x4]
  328ebe: 9b01         	ldr	r3, [sp, #0x4]
  328ec0: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  328ec4: 2b00         	cmp	r3, #0x0
  328ec6: d019         	beq	0x328efc <GDEAGLE::setSecondaryConfiguration()+0x44> @ imm = #0x32
  328ec8: 9b01         	ldr	r3, [sp, #0x4]
  328eca: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  328ece: 4b4f         	ldr	r3, [pc, #0x13c]        @ 0x32900c <GDEAGLE::setSecondaryConfiguration()+0x154>
  328ed0: 447b         	add	r3, pc
  328ed2: ed93 6b00    	vldr	d6, [r3]
  328ed6: ed93 7b02    	vldr	d7, [r3, #8]
  328eda: 4610         	mov	r0, r2
  328edc: eeb0 0b46    	vmov.f64	d0, d6
  328ee0: eeb0 1b47    	vmov.f64	d1, d7
  328ee4: f7fe fc80    	bl	0x3277e8 <GASNADE::getWeaponRect()+0x1d8> @ imm = #-0x1700
  328ee8: 9b01         	ldr	r3, [sp, #0x4]
  328eea: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  328eee: 4618         	mov	r0, r3
  328ef0: f04f 0200    	mov.w	r2, #0x0
  328ef4: f04f 0300    	mov.w	r3, #0x0
  328ef8: f3aa f94b    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x3aa296
  328efc: 9b01         	ldr	r3, [sp, #0x4]
  328efe: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  328f02: 681b         	ldr	r3, [r3]
  328f04: 334c         	adds	r3, #0x4c
  328f06: 681c         	ldr	r4, [r3]
  328f08: 9b01         	ldr	r3, [sp, #0x4]
  328f0a: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  328f0e: ab02         	add	r3, sp, #0x8
  328f10: 4618         	mov	r0, r3
  328f12: f04f 0100    	mov.w	r1, #0x0
  328f16: f2cc 11d8    	movt	r1, #0xc1d8
  328f1a: f04f 0200    	mov.w	r2, #0x0
  328f1e: f2cc 1220    	movt	r2, #0xc120
  328f22: f269 fee5    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x269dca
  328f26: ab02         	add	r3, sp, #0x8
  328f28: 4628         	mov	r0, r5
  328f2a: 4619         	mov	r1, r3
  328f2c: 47a0         	blx	r4
  328f2e: 9b01         	ldr	r3, [sp, #0x4]
  328f30: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  328f34: 681b         	ldr	r3, [r3]
  328f36: 337c         	adds	r3, #0x7c
  328f38: 681c         	ldr	r4, [r3]
  328f3a: 9b01         	ldr	r3, [sp, #0x4]
  328f3c: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  328f40: ab02         	add	r3, sp, #0x8
  328f42: 4618         	mov	r0, r3
  328f44: f04f 517c    	mov.w	r1, #0x3f000000
  328f48: f04f 527c    	mov.w	r2, #0x3f000000
  328f4c: f269 fed0    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x269da0
  328f50: ab02         	add	r3, sp, #0x8
  328f52: 4628         	mov	r0, r5
  328f54: 4619         	mov	r1, r3
  328f56: 47a0         	blx	r4
  328f58: 9b01         	ldr	r3, [sp, #0x4]
  328f5a: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  328f5e: 681b         	ldr	r3, [r3]
  328f60: 3398         	adds	r3, #0x98
  328f62: 681b         	ldr	r3, [r3]
  328f64: 9a01         	ldr	r2, [sp, #0x4]
  328f66: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  328f6a: 4610         	mov	r0, r2
  328f6c: f04f 0100    	mov.w	r1, #0x0
  328f70: f2c4 218c    	movt	r1, #0x428c
  328f74: 4798         	blx	r3
  328f76: 9b01         	ldr	r3, [sp, #0x4]
  328f78: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  328f7c: 681b         	ldr	r3, [r3]
  328f7e: 3340         	adds	r3, #0x40
  328f80: 681b         	ldr	r3, [r3]
  328f82: 9a01         	ldr	r2, [sp, #0x4]
  328f84: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  328f88: 4610         	mov	r0, r2
  328f8a: f04f 517e    	mov.w	r1, #0x3f800000
  328f8e: 4798         	blx	r3
  328f90: 9b01         	ldr	r3, [sp, #0x4]
  328f92: 681b         	ldr	r3, [r3]
  328f94: 334c         	adds	r3, #0x4c
  328f96: 681c         	ldr	r4, [r3]
  328f98: 9d01         	ldr	r5, [sp, #0x4]
  328f9a: ab02         	add	r3, sp, #0x8
  328f9c: 4618         	mov	r0, r3
  328f9e: f04f 0100    	mov.w	r1, #0x0
  328fa2: f04f 0200    	mov.w	r2, #0x0
  328fa6: f269 fea3    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x269d46
  328faa: ab02         	add	r3, sp, #0x8
  328fac: 4628         	mov	r0, r5
  328fae: 4619         	mov	r1, r3
  328fb0: 47a0         	blx	r4
  328fb2: 9b01         	ldr	r3, [sp, #0x4]
  328fb4: 681b         	ldr	r3, [r3]
  328fb6: 3340         	adds	r3, #0x40
  328fb8: 681b         	ldr	r3, [r3]
  328fba: 9a01         	ldr	r2, [sp, #0x4]
  328fbc: 4610         	mov	r0, r2
  328fbe: f04f 517e    	mov.w	r1, #0x3f800000
  328fc2: 4798         	blx	r3
  328fc4: 9b01         	ldr	r3, [sp, #0x4]
  328fc6: 681b         	ldr	r3, [r3]
  328fc8: 3398         	adds	r3, #0x98
  328fca: 681b         	ldr	r3, [r3]
  328fcc: 9a01         	ldr	r2, [sp, #0x4]
  328fce: 4610         	mov	r0, r2
  328fd0: f04f 0100    	mov.w	r1, #0x0
  328fd4: 4798         	blx	r3
  328fd6: 9b01         	ldr	r3, [sp, #0x4]
  328fd8: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  328fdc: 681b         	ldr	r3, [r3]
  328fde: 3390         	adds	r3, #0x90
  328fe0: 681b         	ldr	r3, [r3]
  328fe2: 9a01         	ldr	r2, [sp, #0x4]
  328fe4: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  328fe8: 4610         	mov	r0, r2
  328fea: 2100         	movs	r1, #0x0
  328fec: 4798         	blx	r3
  328fee: 9b01         	ldr	r3, [sp, #0x4]
  328ff0: 2200         	movs	r2, #0x0
  328ff2: f883 2195    	strb.w	r2, [r3, #0x195]
  328ff6: 9b01         	ldr	r3, [sp, #0x4]
  328ff8: 2200         	movs	r2, #0x0
  328ffa: f883 2194    	strb.w	r2, [r3, #0x194]
  328ffe: 9b01         	ldr	r3, [sp, #0x4]
  329000: f04f 0200    	mov.w	r2, #0x0
  329004: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  329008: b005         	add	sp, #0x14
  32900a: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x32900b); words below are literal-pool data ---
  32900c: f3dc 0049    	<unknown>

// ==== GDEAGLE::setDualConfiguration
//      file offset 0x329010 (= ELF address; Ghidra 0x339010), 316 bytes, Thumb-2
  329010: b530         	push	{r4, r5, lr}
  329012: b085         	sub	sp, #0x14
  329014: 9001         	str	r0, [sp, #0x4]
  329016: 9b01         	ldr	r3, [sp, #0x4]
  329018: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  32901c: 2b00         	cmp	r3, #0x0
  32901e: d019         	beq	0x329054 <GDEAGLE::setDualConfiguration()+0x44> @ imm = #0x32
  329020: 9b01         	ldr	r3, [sp, #0x4]
  329022: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  329026: 4b48         	ldr	r3, [pc, #0x120]        @ 0x329148 <GDEAGLE::setDualConfiguration()+0x138>
  329028: 447b         	add	r3, pc
  32902a: ed93 6b00    	vldr	d6, [r3]
  32902e: ed93 7b02    	vldr	d7, [r3, #8]
  329032: 4610         	mov	r0, r2
  329034: eeb0 0b46    	vmov.f64	d0, d6
  329038: eeb0 1b47    	vmov.f64	d1, d7
  32903c: f7fe fbd4    	bl	0x3277e8 <GASNADE::getWeaponRect()+0x1d8> @ imm = #-0x1858
  329040: 9b01         	ldr	r3, [sp, #0x4]
  329042: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  329046: 4618         	mov	r0, r3
  329048: f04f 0200    	mov.w	r2, #0x0
  32904c: f04f 0300    	mov.w	r3, #0x0
  329050: f3aa f89f    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x3aa13e
  329054: 9b01         	ldr	r3, [sp, #0x4]
  329056: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  32905a: 681b         	ldr	r3, [r3]
  32905c: 334c         	adds	r3, #0x4c
  32905e: 681c         	ldr	r4, [r3]
  329060: 9b01         	ldr	r3, [sp, #0x4]
  329062: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  329066: ab02         	add	r3, sp, #0x8
  329068: 4618         	mov	r0, r3
  32906a: f04f 0100    	mov.w	r1, #0x0
  32906e: f04f 0200    	mov.w	r2, #0x0
  329072: f269 fe3d    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x269c7a
  329076: ab02         	add	r3, sp, #0x8
  329078: 4628         	mov	r0, r5
  32907a: 4619         	mov	r1, r3
  32907c: 47a0         	blx	r4
  32907e: 9b01         	ldr	r3, [sp, #0x4]
  329080: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  329084: 681b         	ldr	r3, [r3]
  329086: 337c         	adds	r3, #0x7c
  329088: 681c         	ldr	r4, [r3]
  32908a: 9b01         	ldr	r3, [sp, #0x4]
  32908c: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  329090: ab02         	add	r3, sp, #0x8
  329092: 4618         	mov	r0, r3
  329094: f64c 41cd    	movw	r1, #0xcccd
  329098: f6cb 614c    	movt	r1, #0xbe4c
  32909c: f64c 42cd    	movw	r2, #0xcccd
  3290a0: f6c3 62cc    	movt	r2, #0x3ecc
  3290a4: f269 fe24    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x269c48
  3290a8: ab02         	add	r3, sp, #0x8
  3290aa: 4628         	mov	r0, r5
  3290ac: 4619         	mov	r1, r3
  3290ae: 47a0         	blx	r4
  3290b0: 9b01         	ldr	r3, [sp, #0x4]
  3290b2: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3290b6: 681b         	ldr	r3, [r3]
  3290b8: 3398         	adds	r3, #0x98
  3290ba: 681b         	ldr	r3, [r3]
  3290bc: 9a01         	ldr	r2, [sp, #0x4]
  3290be: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3290c2: 4610         	mov	r0, r2
  3290c4: f04f 0100    	mov.w	r1, #0x0
  3290c8: 4798         	blx	r3
  3290ca: 9b01         	ldr	r3, [sp, #0x4]
  3290cc: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3290d0: 681b         	ldr	r3, [r3]
  3290d2: 3340         	adds	r3, #0x40
  3290d4: 681b         	ldr	r3, [r3]
  3290d6: 9a01         	ldr	r2, [sp, #0x4]
  3290d8: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3290dc: 4610         	mov	r0, r2
  3290de: f04f 517e    	mov.w	r1, #0x3f800000
  3290e2: 4798         	blx	r3
  3290e4: 9b01         	ldr	r3, [sp, #0x4]
  3290e6: 681b         	ldr	r3, [r3]
  3290e8: 334c         	adds	r3, #0x4c
  3290ea: 681c         	ldr	r4, [r3]
  3290ec: 9d01         	ldr	r5, [sp, #0x4]
  3290ee: ab02         	add	r3, sp, #0x8
  3290f0: 4618         	mov	r0, r3
  3290f2: f04f 0100    	mov.w	r1, #0x0
  3290f6: f04f 0200    	mov.w	r2, #0x0
  3290fa: f269 fdf9    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x269bf2
  3290fe: ab02         	add	r3, sp, #0x8
  329100: 4628         	mov	r0, r5
  329102: 4619         	mov	r1, r3
  329104: 47a0         	blx	r4
  329106: 9b01         	ldr	r3, [sp, #0x4]
  329108: 681b         	ldr	r3, [r3]
  32910a: 3340         	adds	r3, #0x40
  32910c: 681b         	ldr	r3, [r3]
  32910e: 9a01         	ldr	r2, [sp, #0x4]
  329110: 4610         	mov	r0, r2
  329112: f04f 517e    	mov.w	r1, #0x3f800000
  329116: 4798         	blx	r3
  329118: 9b01         	ldr	r3, [sp, #0x4]
  32911a: 681b         	ldr	r3, [r3]
  32911c: 3398         	adds	r3, #0x98
  32911e: 681b         	ldr	r3, [r3]
  329120: 9a01         	ldr	r2, [sp, #0x4]
  329122: 4610         	mov	r0, r2
  329124: f04f 0100    	mov.w	r1, #0x0
  329128: 4798         	blx	r3
  32912a: 9b01         	ldr	r3, [sp, #0x4]
  32912c: 2200         	movs	r2, #0x0
  32912e: f883 2195    	strb.w	r2, [r3, #0x195]
  329132: 9b01         	ldr	r3, [sp, #0x4]
  329134: 2200         	movs	r2, #0x0
  329136: f883 2194    	strb.w	r2, [r3, #0x194]
  32913a: 9b01         	ldr	r3, [sp, #0x4]
  32913c: f04f 0200    	mov.w	r2, #0x0
  329140: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  329144: b005         	add	sp, #0x14
  329146: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x329147); words below are literal-pool data ---
  329148: f284 0049    	<unknown>

// ==== GDEAGLE::setMapConfiguration
//      file offset 0x32914c (= ELF address; Ghidra 0x33914c), 276 bytes, Thumb-2
  32914c: b570         	push	{r4, r5, r6, lr}
  32914e: b084         	sub	sp, #0x10
  329150: 9001         	str	r0, [sp, #0x4]
  329152: 4c41         	ldr	r4, [pc, #0x104]        @ 0x329258 <GDEAGLE::setMapConfiguration()+0x10c>
  329154: 447c         	add	r4, pc
  329156: 9b01         	ldr	r3, [sp, #0x4]
  329158: f04f 0200    	mov.w	r2, #0x0
  32915c: f8c3 2190    	str.w	r2, [r3, #0x190]
  329160: 9b01         	ldr	r3, [sp, #0x4]
  329162: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  329166: 681b         	ldr	r3, [r3]
  329168: 334c         	adds	r3, #0x4c
  32916a: 681d         	ldr	r5, [r3]
  32916c: 9b01         	ldr	r3, [sp, #0x4]
  32916e: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  329172: ab02         	add	r3, sp, #0x8
  329174: 4618         	mov	r0, r3
  329176: f04f 0100    	mov.w	r1, #0x0
  32917a: f04f 0200    	mov.w	r2, #0x0
  32917e: f269 fdb7    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x269b6e
  329182: ab02         	add	r3, sp, #0x8
  329184: 4630         	mov	r0, r6
  329186: 4619         	mov	r1, r3
  329188: 47a8         	blx	r5
  32918a: 9b01         	ldr	r3, [sp, #0x4]
  32918c: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  329190: 681b         	ldr	r3, [r3]
  329192: 337c         	adds	r3, #0x7c
  329194: 681d         	ldr	r5, [r3]
  329196: 9b01         	ldr	r3, [sp, #0x4]
  329198: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  32919c: ab02         	add	r3, sp, #0x8
  32919e: 4618         	mov	r0, r3
  3291a0: f04f 517c    	mov.w	r1, #0x3f000000
  3291a4: f04f 527c    	mov.w	r2, #0x3f000000
  3291a8: f269 fda2    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x269b44
  3291ac: ab02         	add	r3, sp, #0x8
  3291ae: 4630         	mov	r0, r6
  3291b0: 4619         	mov	r1, r3
  3291b2: 47a8         	blx	r5
  3291b4: 9b01         	ldr	r3, [sp, #0x4]
  3291b6: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3291ba: 681b         	ldr	r3, [r3]
  3291bc: 3398         	adds	r3, #0x98
  3291be: 681b         	ldr	r3, [r3]
  3291c0: 9a01         	ldr	r2, [sp, #0x4]
  3291c2: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3291c6: 4610         	mov	r0, r2
  3291c8: f04f 0100    	mov.w	r1, #0x0
  3291cc: 4798         	blx	r3
  3291ce: 9b01         	ldr	r3, [sp, #0x4]
  3291d0: 681b         	ldr	r3, [r3]
  3291d2: 334c         	adds	r3, #0x4c
  3291d4: 681d         	ldr	r5, [r3]
  3291d6: 9e01         	ldr	r6, [sp, #0x4]
  3291d8: ab02         	add	r3, sp, #0x8
  3291da: 4618         	mov	r0, r3
  3291dc: f04f 0100    	mov.w	r1, #0x0
  3291e0: f04f 0200    	mov.w	r2, #0x0
  3291e4: f269 fd84    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x269b08
  3291e8: ab02         	add	r3, sp, #0x8
  3291ea: 4630         	mov	r0, r6
  3291ec: 4619         	mov	r1, r3
  3291ee: 47a8         	blx	r5
  3291f0: 9b01         	ldr	r3, [sp, #0x4]
  3291f2: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3291f6: 681b         	ldr	r3, [r3]
  3291f8: 3330         	adds	r3, #0x30
  3291fa: 681b         	ldr	r3, [r3]
  3291fc: 9a01         	ldr	r2, [sp, #0x4]
  3291fe: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  329202: 4610         	mov	r0, r2
  329204: f04f 517e    	mov.w	r1, #0x3f800000
  329208: 4798         	blx	r3
  32920a: 9b01         	ldr	r3, [sp, #0x4]
  32920c: 681b         	ldr	r3, [r3]
  32920e: 3340         	adds	r3, #0x40
  329210: 681b         	ldr	r3, [r3]
  329212: 9901         	ldr	r1, [sp, #0x4]
  329214: 4a11         	ldr	r2, [pc, #0x44]         @ 0x32925c <GDEAGLE::setMapConfiguration()+0x110>
  329216: 58a2         	ldr	r2, [r4, r2]
  329218: 6812         	ldr	r2, [r2]
  32921a: 4608         	mov	r0, r1
  32921c: 4611         	mov	r1, r2
  32921e: 4798         	blx	r3
  329220: 9b01         	ldr	r3, [sp, #0x4]
  329222: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  329226: 681b         	ldr	r3, [r3]
  329228: 3390         	adds	r3, #0x90
  32922a: 681b         	ldr	r3, [r3]
  32922c: 9a01         	ldr	r2, [sp, #0x4]
  32922e: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  329232: 4610         	mov	r0, r2
  329234: 2100         	movs	r1, #0x0
  329236: 4798         	blx	r3
  329238: 9b01         	ldr	r3, [sp, #0x4]
  32923a: 2200         	movs	r2, #0x0
  32923c: f883 2195    	strb.w	r2, [r3, #0x195]
  329240: 9b01         	ldr	r3, [sp, #0x4]
  329242: 2200         	movs	r2, #0x0
  329244: f883 2194    	strb.w	r2, [r3, #0x194]
  329248: 9b01         	ldr	r3, [sp, #0x4]
  32924a: f04f 0200    	mov.w	r2, #0x0
  32924e: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  329252: b004         	add	sp, #0x10
  329254: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x329255); words below are literal-pool data ---
  329256: bf00         	nop
  329258: 98b4         	ldr	r0, [sp, #0x2d0]
  32925a: 0060         	lsls	r0, r4, #0x1
  32925c: d748         	bvc	0x3292f0 <GDEAGLE::setRight(bool)+0x4> @ imm = #0x90
  32925e: ffff b500    	<unknown>

// ==== GDEAGLE::getWeaponTexture
//      file offset 0x329260 (= ELF address; Ghidra 0x339260), 40 bytes, Thumb-2
  329260: b500         	push	{lr}
  329262: b083         	sub	sp, #0xc
  329264: 9001         	str	r0, [sp, #0x4]
  329266: 9b01         	ldr	r3, [sp, #0x4]
  329268: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  32926c: 681b         	ldr	r3, [r3]
  32926e: f503 73fa    	add.w	r3, r3, #0x1f4
  329272: 681b         	ldr	r3, [r3]
  329274: 9a01         	ldr	r2, [sp, #0x4]
  329276: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  32927a: 4610         	mov	r0, r2
  32927c: 4798         	blx	r3
  32927e: 4603         	mov	r3, r0
  329280: 4618         	mov	r0, r3
  329282: b003         	add	sp, #0xc
  329284: f85d fb04    	ldr	pc, [sp], #4

// ==== GDEAGLE::getWeaponRect
//      file offset 0x329288 (= ELF address; Ghidra 0x339288), 38 bytes, Thumb-2
  329288: b500         	push	{lr}
  32928a: b083         	sub	sp, #0xc
  32928c: 9001         	str	r0, [sp, #0x4]
  32928e: 9100         	str	r1, [sp]
  329290: 9b00         	ldr	r3, [sp]
  329292: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  329296: 4618         	mov	r0, r3
  329298: f7b3 fd20    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x4c5c0
  32929c: 4603         	mov	r3, r0
  32929e: 9801         	ldr	r0, [sp, #0x4]
  3292a0: 4619         	mov	r1, r3
  3292a2: f26a f839    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x26a072
  3292a6: 9801         	ldr	r0, [sp, #0x4]
  3292a8: b003         	add	sp, #0xc
  3292aa: f85d fb04    	ldr	pc, [sp], #4

// ==== GDEAGLE::isRight
//      file offset 0x3292b0 (= ELF address; Ghidra 0x3392b0), 60 bytes, Thumb-2
  3292b0: b500         	push	{lr}
  3292b2: b083         	sub	sp, #0xc
  3292b4: 9001         	str	r0, [sp, #0x4]
  3292b6: 9b01         	ldr	r3, [sp, #0x4]
  3292b8: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3292bc: 681b         	ldr	r3, [r3]
  3292be: 3334         	adds	r3, #0x34
  3292c0: 681b         	ldr	r3, [r3]
  3292c2: 9a01         	ldr	r2, [sp, #0x4]
  3292c4: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3292c8: 4610         	mov	r0, r2
  3292ca: 4798         	blx	r3
  3292cc: ee07 0a10    	vmov	s14, r0
  3292d0: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3292d4: eeb4 7ae7    	vcmpe.f32	s14, s15
  3292d8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3292dc: bfd4         	ite	le
  3292de: 2300         	movle	r3, #0x0
  3292e0: 2301         	movgt	r3, #0x1
  3292e2: b2db         	uxtb	r3, r3
  3292e4: 4618         	mov	r0, r3
  3292e6: b003         	add	sp, #0xc
  3292e8: f85d fb04    	ldr	pc, [sp], #4

// ==== GDEAGLE::setRight
//      file offset 0x3292ec (= ELF address; Ghidra 0x3392ec), 64 bytes, Thumb-2
  3292ec: b500         	push	{lr}
  3292ee: b083         	sub	sp, #0xc
  3292f0: 9001         	str	r0, [sp, #0x4]
  3292f2: 460b         	mov	r3, r1
  3292f4: f88d 3003    	strb.w	r3, [sp, #0x3]
  3292f8: 9b01         	ldr	r3, [sp, #0x4]
  3292fa: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3292fe: 681b         	ldr	r3, [r3]
  329300: 3330         	adds	r3, #0x30
  329302: 681a         	ldr	r2, [r3]
  329304: 9b01         	ldr	r3, [sp, #0x4]
  329306: f8d3 11ec    	ldr.w	r1, [r3, #0x1ec]
  32930a: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  32930e: 2b00         	cmp	r3, #0x0
  329310: d002         	beq	0x329318 <GDEAGLE::setRight(bool)+0x2c> @ imm = #0x4
  329312: f04f 537e    	mov.w	r3, #0x3f800000
  329316: e003         	b	0x329320 <GDEAGLE::setRight(bool)+0x34> @ imm = #0x6
  329318: f04f 0300    	mov.w	r3, #0x0
  32931c: f6cb 7380    	movt	r3, #0xbf80
  329320: 4608         	mov	r0, r1
  329322: 4619         	mov	r1, r3
  329324: 4790         	blx	r2
  329326: b003         	add	sp, #0xc
  329328: f85d fb04    	ldr	pc, [sp], #4

// ==== GDEAGLE::getRANGE
//      file offset 0x32932c (= ELF address; Ghidra 0x33932c), 16 bytes, Thumb-2
  32932c: 4b02         	ldr	r3, [pc, #0x8]          @ 0x329338 <GDEAGLE::getRANGE()+0xc>
  32932e: 447b         	add	r3, pc
  329330: 681b         	ldr	r3, [r3]
  329332: 4618         	mov	r0, r3
  329334: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x329335); words below are literal-pool data ---
  329336: bf00         	nop
  329338: 9ffe         	ldr	r7, [sp, #0x3f8]
  32933a: 0060         	lsls	r0, r4, #0x1

// ==== GDEAGLE::getDAMAGE
//      file offset 0x32933c (= ELF address; Ghidra 0x33933c), 16 bytes, Thumb-2
  32933c: 4b02         	ldr	r3, [pc, #0x8]          @ 0x329348 <GDEAGLE::getDAMAGE()+0xc>
  32933e: 447b         	add	r3, pc
  329340: 681b         	ldr	r3, [r3]
  329342: 4618         	mov	r0, r3
  329344: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x329345); words below are literal-pool data ---
  329346: bf00         	nop
  329348: 9fea         	ldr	r7, [sp, #0x3a8]
  32934a: 0060         	lsls	r0, r4, #0x1

// ==== GDEAGLE::create
//      file offset 0x41740c (= ELF address; Ghidra 0x42740c), 112 bytes, Thumb-2
  41740c: b510         	push	{r4, lr}
  41740e: b082         	sub	sp, #0x8
  417410: f44f 70fc    	mov.w	r0, #0x1f8
  417414: f370 faa6    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x37054c
  417418: 4603         	mov	r3, r0
  41741a: 461c         	mov	r4, r3
  41741c: 4620         	mov	r0, r4
  41741e: f711 f8a5    	bl	0x32856c <GDEAGLE::GDEAGLE()> @ imm = #-0xeeeb6
  417422: 9401         	str	r4, [sp, #0x4]
  417424: 9b01         	ldr	r3, [sp, #0x4]
  417426: 2b00         	cmp	r3, #0x0
  417428: d00a         	beq	0x417440 <GDEAGLE::create()+0x34> @ imm = #0x14
  41742a: 9b01         	ldr	r3, [sp, #0x4]
  41742c: 681b         	ldr	r3, [r3]
  41742e: 3318         	adds	r3, #0x18
  417430: 681b         	ldr	r3, [r3]
  417432: 9801         	ldr	r0, [sp, #0x4]
  417434: 4798         	blx	r3
  417436: 4603         	mov	r3, r0
  417438: 2b00         	cmp	r3, #0x0
  41743a: d001         	beq	0x417440 <GDEAGLE::create()+0x34> @ imm = #0x2
  41743c: 2301         	movs	r3, #0x1
  41743e: e000         	b	0x417442 <GDEAGLE::create()+0x36> @ imm = #0x0
  417440: 2300         	movs	r3, #0x0
  417442: 2b00         	cmp	r3, #0x0
  417444: d005         	beq	0x417452 <GDEAGLE::create()+0x46> @ imm = #0xa
  417446: 9b01         	ldr	r3, [sp, #0x4]
  417448: 4618         	mov	r0, r3
  41744a: f180 fd57    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x180aae
  41744e: 9b01         	ldr	r3, [sp, #0x4]
  417450: e011         	b	0x417476 <GDEAGLE::create()+0x6a> @ imm = #0x22
  417452: 9b01         	ldr	r3, [sp, #0x4]
  417454: 2b00         	cmp	r3, #0x0
  417456: d005         	beq	0x417464 <GDEAGLE::create()+0x58> @ imm = #0xa
  417458: 9b01         	ldr	r3, [sp, #0x4]
  41745a: 681b         	ldr	r3, [r3]
  41745c: 3308         	adds	r3, #0x8
  41745e: 681b         	ldr	r3, [r3]
  417460: 9801         	ldr	r0, [sp, #0x4]
  417462: 4798         	blx	r3
  417464: 2300         	movs	r3, #0x0
  417466: 9301         	str	r3, [sp, #0x4]
  417468: 2300         	movs	r3, #0x0
  41746a: e004         	b	0x417476 <GDEAGLE::create()+0x6a> @ imm = #0x8
  41746c: 4620         	mov	r0, r4
  41746e: f370 fe19    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x370c32
  417472: f370 fe1b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x370c36
  417476: 4618         	mov	r0, r3
  417478: b002         	add	sp, #0x8
  41747a: bd10         	pop	{r4, pc}
