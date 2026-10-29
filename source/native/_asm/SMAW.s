// SMAW: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 20 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../SMAW.cpp

// ==== SMAW::SMAW
//      file offset 0x3d04b4 (= ELF address; Ghidra 0x3e04b4), 44 bytes, Thumb-2
  3d04b4: b510         	push	{r4, lr}
  3d04b6: b082         	sub	sp, #0x8
  3d04b8: 9001         	str	r0, [sp, #0x4]
  3d04ba: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x3d04d8 <SMAW::SMAW()+0x24>
  3d04bc: 447c         	add	r4, pc
  3d04be: 9b01         	ldr	r3, [sp, #0x4]
  3d04c0: 4618         	mov	r0, r3
  3d04c2: f044 fd71    	bl	0x414fa8 <Weapon::Weapon()> @ imm = #0x44ae2
  3d04c6: 9b01         	ldr	r3, [sp, #0x4]
  3d04c8: 4a04         	ldr	r2, [pc, #0x10]         @ 0x3d04dc <SMAW::SMAW()+0x28>
  3d04ca: 58a2         	ldr	r2, [r4, r2]
  3d04cc: 3208         	adds	r2, #0x8
  3d04ce: 601a         	str	r2, [r3]
  3d04d0: 9b01         	ldr	r3, [sp, #0x4]
  3d04d2: 4618         	mov	r0, r3
  3d04d4: b002         	add	sp, #0x8
  3d04d6: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3d04d7); words below are literal-pool data ---
  3d04d8: 254c         	movs	r5, #0x4c
  3d04da: 0056         	lsls	r6, r2, #0x1
  3d04dc: de98         	udf	#0x98
  3d04de: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== SMAW::init
//      file offset 0x3d04e0 (= ELF address; Ghidra 0x3e04e0), 972 bytes, Thumb-2
  3d04e0: b530         	push	{r4, r5, lr}
  3d04e2: b08b         	sub	sp, #0x2c
  3d04e4: 9005         	str	r0, [sp, #0x14]
  3d04e6: 9b05         	ldr	r3, [sp, #0x14]
  3d04e8: 4618         	mov	r0, r3
  3d04ea: f044 fd81    	bl	0x414ff0 <Weapon::init()> @ imm = #0x44b02
  3d04ee: 4603         	mov	r3, r0
  3d04f0: f88d 301f    	strb.w	r3, [sp, #0x1f]
  3d04f4: f89d 301f    	ldrb.w	r3, [sp, #0x1f]
  3d04f8: f083 0301    	eor	r3, r3, #0x1
  3d04fc: b2db         	uxtb	r3, r3
  3d04fe: 2b00         	cmp	r3, #0x0
  3d0500: d001         	beq	0x3d0506 <SMAW::init()+0x26> @ imm = #0x2
  3d0502: 2300         	movs	r3, #0x0
  3d0504: e1b6         	b	0x3d0874 <SMAW::init()+0x394> @ imm = #0x36c
  3d0506: 4be2         	ldr	r3, [pc, #0x388]        @ 0x3d0890 <SMAW::init()+0x3b0>
  3d0508: 447b         	add	r3, pc
  3d050a: 4618         	mov	r0, r3
  3d050c: f207 fefa    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x207df4
  3d0510: 4602         	mov	r2, r0
  3d0512: 9b05         	ldr	r3, [sp, #0x14]
  3d0514: f8c3 21ec    	str.w	r2, [r3, #0x1ec]
  3d0518: 9b05         	ldr	r3, [sp, #0x14]
  3d051a: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3d051e: 4618         	mov	r0, r3
  3d0520: f1c7 fce2    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1c79c4
  3d0524: 4bdb         	ldr	r3, [pc, #0x36c]        @ 0x3d0894 <SMAW::init()+0x3b4>
  3d0526: 447b         	add	r3, pc
  3d0528: 4618         	mov	r0, r3
  3d052a: f207 feeb    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x207dd6
  3d052e: 4602         	mov	r2, r0
  3d0530: 9b05         	ldr	r3, [sp, #0x14]
  3d0532: f8c3 21f0    	str.w	r2, [r3, #0x1f0]
  3d0536: 9b05         	ldr	r3, [sp, #0x14]
  3d0538: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3d053c: 4618         	mov	r0, r3
  3d053e: f1c7 fcd3    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1c79a6
  3d0542: 9b05         	ldr	r3, [sp, #0x14]
  3d0544: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3d0548: 681b         	ldr	r3, [r3]
  3d054a: 337c         	adds	r3, #0x7c
  3d054c: 681c         	ldr	r4, [r3]
  3d054e: 9b05         	ldr	r3, [sp, #0x14]
  3d0550: f8d3 51f0    	ldr.w	r5, [r3, #0x1f0]
  3d0554: ab08         	add	r3, sp, #0x20
  3d0556: 4618         	mov	r0, r3
  3d0558: f243 3133    	movw	r1, #0x3333
  3d055c: f6cb 71b3    	movt	r1, #0xbfb3
  3d0560: f649 129a    	movw	r2, #0x999a
  3d0564: f6cb 6299    	movt	r2, #0xbe99
  3d0568: f1c2 fbc2    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1c2784
  3d056c: ab08         	add	r3, sp, #0x20
  3d056e: 4628         	mov	r0, r5
  3d0570: 4619         	mov	r1, r3
  3d0572: 47a0         	blx	r4
  3d0574: 9b05         	ldr	r3, [sp, #0x14]
  3d0576: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3d057a: 681b         	ldr	r3, [r3]
  3d057c: 3330         	adds	r3, #0x30
  3d057e: 681b         	ldr	r3, [r3]
  3d0580: 9a05         	ldr	r2, [sp, #0x14]
  3d0582: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  3d0586: 4610         	mov	r0, r2
  3d0588: f04f 0100    	mov.w	r1, #0x0
  3d058c: f2c4 0140    	movt	r1, #0x4040
  3d0590: 4798         	blx	r3
  3d0592: 9b05         	ldr	r3, [sp, #0x14]
  3d0594: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3d0598: 681b         	ldr	r3, [r3]
  3d059a: 3338         	adds	r3, #0x38
  3d059c: 681b         	ldr	r3, [r3]
  3d059e: 9a05         	ldr	r2, [sp, #0x14]
  3d05a0: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  3d05a4: 4610         	mov	r0, r2
  3d05a6: f04f 0100    	mov.w	r1, #0x0
  3d05aa: f2c4 0140    	movt	r1, #0x4040
  3d05ae: 4798         	blx	r3
  3d05b0: 9b05         	ldr	r3, [sp, #0x14]
  3d05b2: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3d05b6: 681b         	ldr	r3, [r3]
  3d05b8: 3390         	adds	r3, #0x90
  3d05ba: 681b         	ldr	r3, [r3]
  3d05bc: 9a05         	ldr	r2, [sp, #0x14]
  3d05be: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  3d05c2: 4610         	mov	r0, r2
  3d05c4: 2100         	movs	r1, #0x0
  3d05c6: 4798         	blx	r3
  3d05c8: 9b05         	ldr	r3, [sp, #0x14]
  3d05ca: 681b         	ldr	r3, [r3]
  3d05cc: f503 73f0    	add.w	r3, r3, #0x1e0
  3d05d0: 681b         	ldr	r3, [r3]
  3d05d2: 9805         	ldr	r0, [sp, #0x14]
  3d05d4: 4798         	blx	r3
  3d05d6: 9b05         	ldr	r3, [sp, #0x14]
  3d05d8: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3d05dc: 681b         	ldr	r3, [r3]
  3d05de: 33cc         	adds	r3, #0xcc
  3d05e0: 681b         	ldr	r3, [r3]
  3d05e2: 9a05         	ldr	r2, [sp, #0x14]
  3d05e4: f8d2 11ec    	ldr.w	r1, [r2, #0x1ec]
  3d05e8: 9a05         	ldr	r2, [sp, #0x14]
  3d05ea: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  3d05ee: 4608         	mov	r0, r1
  3d05f0: 4611         	mov	r1, r2
  3d05f2: 2200         	movs	r2, #0x0
  3d05f4: 4798         	blx	r3
  3d05f6: 9b05         	ldr	r3, [sp, #0x14]
  3d05f8: 681b         	ldr	r3, [r3]
  3d05fa: 33cc         	adds	r3, #0xcc
  3d05fc: 681b         	ldr	r3, [r3]
  3d05fe: 9905         	ldr	r1, [sp, #0x14]
  3d0600: 9a05         	ldr	r2, [sp, #0x14]
  3d0602: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3d0606: 4608         	mov	r0, r1
  3d0608: 4611         	mov	r1, r2
  3d060a: 2200         	movs	r2, #0x0
  3d060c: 4798         	blx	r3
  3d060e: 9b05         	ldr	r3, [sp, #0x14]
  3d0610: f8d3 4150    	ldr.w	r4, [r3, #0x150]
  3d0614: f04f 507e    	mov.w	r0, #0x3f800000
  3d0618: f70c fb34    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xf3998
  3d061c: 4603         	mov	r3, r0
  3d061e: 4620         	mov	r0, r4
  3d0620: 4619         	mov	r1, r3
  3d0622: f1c9 fe23    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x1c9c46
  3d0626: 9b05         	ldr	r3, [sp, #0x14]
  3d0628: f8d3 414c    	ldr.w	r4, [r3, #0x14c]
  3d062c: ab07         	add	r3, sp, #0x1c
  3d062e: 4618         	mov	r0, r3
  3d0630: f3b9 fee0    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3b9dc0
  3d0634: aa08         	add	r2, sp, #0x20
  3d0636: ab07         	add	r3, sp, #0x1c
  3d0638: 4610         	mov	r0, r2
  3d063a: 4a97         	ldr	r2, [pc, #0x25c]        @ 0x3d0898 <SMAW::init()+0x3b8>
  3d063c: 447a         	add	r2, pc
  3d063e: 4611         	mov	r1, r2
  3d0640: 461a         	mov	r2, r3
  3d0642: f3e6 fa0d    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3e641a
  3d0646: ab08         	add	r3, sp, #0x20
  3d0648: 4618         	mov	r0, r3
  3d064a: f1c9 f9f7    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1c93ee
  3d064e: 4603         	mov	r3, r0
  3d0650: 4620         	mov	r0, r4
  3d0652: 4619         	mov	r1, r3
  3d0654: f1c9 fe0a    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x1c9c14
  3d0658: ab08         	add	r3, sp, #0x20
  3d065a: 4618         	mov	r0, r3
  3d065c: f3e5 f95a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e52b4
  3d0660: ab07         	add	r3, sp, #0x1c
  3d0662: 4618         	mov	r0, r3
  3d0664: f3b9 feca    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b9d94
  3d0668: 9b05         	ldr	r3, [sp, #0x14]
  3d066a: f8d3 4150    	ldr.w	r4, [r3, #0x150]
  3d066e: f243 3033    	movw	r0, #0x3333
  3d0672: f6c3 7033    	movt	r0, #0x3f33
  3d0676: f70c fb05    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xf39f6
  3d067a: 4603         	mov	r3, r0
  3d067c: 4620         	mov	r0, r4
  3d067e: 4619         	mov	r1, r3
  3d0680: f1c9 fdf4    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x1c9be8
  3d0684: 9b05         	ldr	r3, [sp, #0x14]
  3d0686: f8d3 414c    	ldr.w	r4, [r3, #0x14c]
  3d068a: ab07         	add	r3, sp, #0x1c
  3d068c: 4618         	mov	r0, r3
  3d068e: f3b9 feb1    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3b9d62
  3d0692: aa08         	add	r2, sp, #0x20
  3d0694: ab07         	add	r3, sp, #0x1c
  3d0696: 4610         	mov	r0, r2
  3d0698: 4a80         	ldr	r2, [pc, #0x200]        @ 0x3d089c <SMAW::init()+0x3bc>
  3d069a: 447a         	add	r2, pc
  3d069c: 4611         	mov	r1, r2
  3d069e: 461a         	mov	r2, r3
  3d06a0: f3e6 f9de    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3e63bc
  3d06a4: ab08         	add	r3, sp, #0x20
  3d06a6: 4618         	mov	r0, r3
  3d06a8: f1c9 f9c8    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1c9390
  3d06ac: 4603         	mov	r3, r0
  3d06ae: 4620         	mov	r0, r4
  3d06b0: 4619         	mov	r1, r3
  3d06b2: f1c9 fddb    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x1c9bb6
  3d06b6: ab08         	add	r3, sp, #0x20
  3d06b8: 4618         	mov	r0, r3
  3d06ba: f3e5 f92b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e5256
  3d06be: ab07         	add	r3, sp, #0x1c
  3d06c0: 4618         	mov	r0, r3
  3d06c2: f3b9 fe9b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b9d36
  3d06c6: 9b05         	ldr	r3, [sp, #0x14]
  3d06c8: f8d3 4150    	ldr.w	r4, [r3, #0x150]
  3d06cc: f04f 507c    	mov.w	r0, #0x3f000000
  3d06d0: f70c fad8    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xf3a50
  3d06d4: 4603         	mov	r3, r0
  3d06d6: 4620         	mov	r0, r4
  3d06d8: 4619         	mov	r1, r3
  3d06da: f1c9 fdc7    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x1c9b8e
  3d06de: 9b05         	ldr	r3, [sp, #0x14]
  3d06e0: f8d3 414c    	ldr.w	r4, [r3, #0x14c]
  3d06e4: ab07         	add	r3, sp, #0x1c
  3d06e6: 4618         	mov	r0, r3
  3d06e8: f3b9 fe84    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3b9d08
  3d06ec: aa08         	add	r2, sp, #0x20
  3d06ee: ab07         	add	r3, sp, #0x1c
  3d06f0: 4610         	mov	r0, r2
  3d06f2: 4a6b         	ldr	r2, [pc, #0x1ac]        @ 0x3d08a0 <SMAW::init()+0x3c0>
  3d06f4: 447a         	add	r2, pc
  3d06f6: 4611         	mov	r1, r2
  3d06f8: 461a         	mov	r2, r3
  3d06fa: f3e6 f9b1    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3e6362
  3d06fe: ab08         	add	r3, sp, #0x20
  3d0700: 4618         	mov	r0, r3
  3d0702: f1c9 f99b    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1c9336
  3d0706: 4603         	mov	r3, r0
  3d0708: 4620         	mov	r0, r4
  3d070a: 4619         	mov	r1, r3
  3d070c: f1c9 fdae    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x1c9b5c
  3d0710: ab08         	add	r3, sp, #0x20
  3d0712: 4618         	mov	r0, r3
  3d0714: f3e5 f8fe    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e51fc
  3d0718: ab07         	add	r3, sp, #0x1c
  3d071a: 4618         	mov	r0, r3
  3d071c: f3b9 fe6e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b9cdc
  3d0720: 9b05         	ldr	r3, [sp, #0x14]
  3d0722: 2200         	movs	r2, #0x0
  3d0724: f8c3 2144    	str.w	r2, [r3, #0x144]
  3d0728: 9b05         	ldr	r3, [sp, #0x14]
  3d072a: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3d072e: 4618         	mov	r0, r3
  3d0730: 2100         	movs	r1, #0x0
  3d0732: f1c9 fcf5    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1c99ea
  3d0736: 4603         	mov	r3, r0
  3d0738: 4618         	mov	r0, r3
  3d073a: f70c fa9b    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0xf3aca
  3d073e: 4602         	mov	r2, r0
  3d0740: 9b05         	ldr	r3, [sp, #0x14]
  3d0742: f8c3 2148    	str.w	r2, [r3, #0x148]
  3d0746: 9b05         	ldr	r3, [sp, #0x14]
  3d0748: f04f 0200    	mov.w	r2, #0x0
  3d074c: f6c3 72a0    	movt	r2, #0x3fa0
  3d0750: f8c3 215c    	str.w	r2, [r3, #0x15c]
  3d0754: 9b05         	ldr	r3, [sp, #0x14]
  3d0756: f04f 4281    	mov.w	r2, #0x40800000
  3d075a: f8c3 2160    	str.w	r2, [r3, #0x160]
  3d075e: 9b05         	ldr	r3, [sp, #0x14]
  3d0760: f04f 0200    	mov.w	r2, #0x0
  3d0764: f8c3 2164    	str.w	r2, [r3, #0x164]
  3d0768: 9b05         	ldr	r3, [sp, #0x14]
  3d076a: f04f 0200    	mov.w	r2, #0x0
  3d076e: f2c4 12c8    	movt	r2, #0x41c8
  3d0772: f8c3 216c    	str.w	r2, [r3, #0x16c]
  3d0776: 9b05         	ldr	r3, [sp, #0x14]
  3d0778: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3d077c: 681b         	ldr	r3, [r3]
  3d077e: 3398         	adds	r3, #0x98
  3d0780: 681b         	ldr	r3, [r3]
  3d0782: 9a05         	ldr	r2, [sp, #0x14]
  3d0784: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  3d0788: 4610         	mov	r0, r2
  3d078a: f04f 0100    	mov.w	r1, #0x0
  3d078e: f2c4 1170    	movt	r1, #0x4170
  3d0792: 4798         	blx	r3
  3d0794: 9b05         	ldr	r3, [sp, #0x14]
  3d0796: 2206         	movs	r2, #0x6
  3d0798: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  3d079c: 9b05         	ldr	r3, [sp, #0x14]
  3d079e: 2203         	movs	r2, #0x3
  3d07a0: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  3d07a4: 9b05         	ldr	r3, [sp, #0x14]
  3d07a6: 2282         	movs	r2, #0x82
  3d07a8: f8c3 218c    	str.w	r2, [r3, #0x18c]
  3d07ac: 9b05         	ldr	r3, [sp, #0x14]
  3d07ae: 220b         	movs	r2, #0xb
  3d07b0: f8c3 2188    	str.w	r2, [r3, #0x188]
  3d07b4: 9b05         	ldr	r3, [sp, #0x14]
  3d07b6: 2223         	movs	r2, #0x23
  3d07b8: f8c3 219c    	str.w	r2, [r3, #0x19c]
  3d07bc: 9b05         	ldr	r3, [sp, #0x14]
  3d07be: 2223         	movs	r2, #0x23
  3d07c0: f8c3 21a0    	str.w	r2, [r3, #0x1a0]
  3d07c4: 4b37         	ldr	r3, [pc, #0xdc]         @ 0x3d08a4 <SMAW::init()+0x3c4>
  3d07c6: 447b         	add	r3, pc
  3d07c8: 681a         	ldr	r2, [r3]
  3d07ca: 9b05         	ldr	r3, [sp, #0x14]
  3d07cc: f8c3 21a4    	str.w	r2, [r3, #0x1a4]
  3d07d0: 9b05         	ldr	r3, [sp, #0x14]
  3d07d2: 2201         	movs	r2, #0x1
  3d07d4: f8c3 21bc    	str.w	r2, [r3, #0x1bc]
  3d07d8: 9b05         	ldr	r3, [sp, #0x14]
  3d07da: f04f 0200    	mov.w	r2, #0x0
  3d07de: f2cc 2220    	movt	r2, #0xc220
  3d07e2: f8c3 21b8    	str.w	r2, [r3, #0x1b8]
  3d07e6: 9b05         	ldr	r3, [sp, #0x14]
  3d07e8: f246 6266    	movw	r2, #0x6666
  3d07ec: f6c3 7266    	movt	r2, #0x3f66
  3d07f0: f8c3 21cc    	str.w	r2, [r3, #0x1cc]
  3d07f4: 9b05         	ldr	r3, [sp, #0x14]
  3d07f6: 2203         	movs	r2, #0x3
  3d07f8: f8c3 2170    	str.w	r2, [r3, #0x170]
  3d07fc: 9b05         	ldr	r3, [sp, #0x14]
  3d07fe: 2206         	movs	r2, #0x6
  3d0800: f8c3 2174    	str.w	r2, [r3, #0x174]
  3d0804: 9c05         	ldr	r4, [sp, #0x14]
  3d0806: 466b         	mov	r3, sp
  3d0808: 4618         	mov	r0, r3
  3d080a: ed9f 0b1d    	vldr	d0, [pc, #116]          @ 0x3d0880 <SMAW::init()+0x3a0>
  3d080e: ed9f 1b1e    	vldr	d1, [pc, #120]          @ 0x3d0888 <SMAW::init()+0x3a8>
  3d0812: f7fe ff79    	bl	0x3cf708 <SHOTGUN::getDAMAGE()+0x198> @ imm = #-0x110e
  3d0816: f504 74ec    	add.w	r4, r4, #0x1d8
  3d081a: 466b         	mov	r3, sp
  3d081c: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3d081e: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3d0822: 4b21         	ldr	r3, [pc, #0x84]         @ 0x3d08a8 <SMAW::init()+0x3c8>
  3d0824: 447b         	add	r3, pc
  3d0826: 681a         	ldr	r2, [r3]
  3d0828: 9b05         	ldr	r3, [sp, #0x14]
  3d082a: f8c3 2198    	str.w	r2, [r3, #0x198]
  3d082e: 2301         	movs	r3, #0x1
  3d0830: e020         	b	0x3d0874 <SMAW::init()+0x394> @ imm = #0x40
  3d0832: ab08         	add	r3, sp, #0x20
  3d0834: 4618         	mov	r0, r3
  3d0836: f3e5 f86d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e50da
  3d083a: e7ff         	b	0x3d083c <SMAW::init()+0x35c> @ imm = #-0x2
  3d083c: ab07         	add	r3, sp, #0x1c
  3d083e: 4618         	mov	r0, r3
  3d0840: f3b9 fddc    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b9bb8
  3d0844: f3b7 fc32    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3b7864
  3d0848: ab08         	add	r3, sp, #0x20
  3d084a: 4618         	mov	r0, r3
  3d084c: f3e5 f862    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e50c4
  3d0850: e7ff         	b	0x3d0852 <SMAW::init()+0x372> @ imm = #-0x2
  3d0852: ab07         	add	r3, sp, #0x1c
  3d0854: 4618         	mov	r0, r3
  3d0856: f3b9 fdd1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b9ba2
  3d085a: f3b7 fc27    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3b784e
  3d085e: ab08         	add	r3, sp, #0x20
  3d0860: 4618         	mov	r0, r3
  3d0862: f3e5 f857    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e50ae
  3d0866: e7ff         	b	0x3d0868 <SMAW::init()+0x388> @ imm = #-0x2
  3d0868: ab07         	add	r3, sp, #0x1c
  3d086a: 4618         	mov	r0, r3
  3d086c: f3b9 fdc6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b9b8c
  3d0870: f3b7 fc1c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3b7838
  3d0874: 4618         	mov	r0, r3
  3d0876: b00b         	add	sp, #0x2c
  3d0878: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3d0879); words below are literal-pool data ---
  3d087a: bf00         	nop
  3d087c: f3af 8000    	nop.w
  3d0880: 0000         	movs	r0, r0
  3d0882: 0000         	movs	r0, r0
  3d0884: 0000         	movs	r0, r0
  3d0886: 4044         	eors	r4, r0
  3d0888: 0000         	movs	r0, r0
  3d088a: 0000         	movs	r0, r0
  3d088c: 8000         	strh	r0, [r0]
  3d088e: 4046         	eors	r6, r0
  3d0890: 6ab4         	ldr	r4, [r6, #0x28]
  3d0892: 0040         	lsls	r0, r0, #0x1
  3d0894: 6aa2         	ldr	r2, [r4, #0x28]
  3d0896: 0040         	lsls	r0, r0, #0x1
  3d0898: 6998         	ldr	r0, [r3, #0x18]
  3d089a: 0040         	lsls	r0, r0, #0x1
  3d089c: 693e         	ldr	r6, [r7, #0x10]
  3d089e: 0040         	lsls	r0, r0, #0x1
  3d08a0: 68e8         	ldr	r0, [r5, #0xc]
  3d08a2: 0040         	lsls	r0, r0, #0x1
  3d08a4: 2e6a         	cmp	r6, #0x6a
  3d08a6: 0056         	lsls	r6, r2, #0x1
  3d08a8: 2e08         	cmp	r6, #0x8
  3d08aa: 0056         	lsls	r6, r2, #0x1

// ==== SMAW::~SMAW
//      file offset 0x3d08b0 (= ELF address; Ghidra 0x3e08b0), 116 bytes, Thumb-2
  3d08b0: b500         	push	{lr}
  3d08b2: b083         	sub	sp, #0xc
  3d08b4: 9001         	str	r0, [sp, #0x4]
  3d08b6: 4919         	ldr	r1, [pc, #0x64]         @ 0x3d091c <SMAW::~SMAW()+0x6c>
  3d08b8: 4479         	add	r1, pc
  3d08ba: 9b01         	ldr	r3, [sp, #0x4]
  3d08bc: 4a18         	ldr	r2, [pc, #0x60]         @ 0x3d0920 <SMAW::~SMAW()+0x70>
  3d08be: 588a         	ldr	r2, [r1, r2]
  3d08c0: 3208         	adds	r2, #0x8
  3d08c2: 601a         	str	r2, [r3]
  3d08c4: 9b01         	ldr	r3, [sp, #0x4]
  3d08c6: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3d08ca: 681b         	ldr	r3, [r3]
  3d08cc: f503 7380    	add.w	r3, r3, #0x100
  3d08d0: 681b         	ldr	r3, [r3]
  3d08d2: 9a01         	ldr	r2, [sp, #0x4]
  3d08d4: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3d08d8: 4610         	mov	r0, r2
  3d08da: 4798         	blx	r3
  3d08dc: 9b01         	ldr	r3, [sp, #0x4]
  3d08de: 4618         	mov	r0, r3
  3d08e0: f1bf fea4    	bl	0x59062c <cocos2d::CCNode::removeAllChildren()> @ imm = #0x1bfd48
  3d08e4: 9b01         	ldr	r3, [sp, #0x4]
  3d08e6: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3d08ea: 4618         	mov	r0, r3
  3d08ec: f1c7 fae4    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1c75c8
  3d08f0: 9b01         	ldr	r3, [sp, #0x4]
  3d08f2: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3d08f6: 4618         	mov	r0, r3
  3d08f8: f1c7 fade    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1c75bc
  3d08fc: 9b01         	ldr	r3, [sp, #0x4]
  3d08fe: 4618         	mov	r0, r3
  3d0900: f044 fc76    	bl	0x4151f0 <Weapon::~Weapon()> @ imm = #0x448ec
  3d0904: 2300         	movs	r3, #0x0
  3d0906: 2b00         	cmp	r3, #0x0
  3d0908: d002         	beq	0x3d0910 <SMAW::~SMAW()+0x60> @ imm = #0x4
  3d090a: 9801         	ldr	r0, [sp, #0x4]
  3d090c: f3b7 fbca    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3b7794
  3d0910: 9b01         	ldr	r3, [sp, #0x4]
  3d0912: 4618         	mov	r0, r3
  3d0914: b003         	add	sp, #0xc
  3d0916: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3d0919); words below are literal-pool data ---
  3d091a: bf00         	nop
  3d091c: 2150         	movs	r1, #0x50
  3d091e: 0056         	lsls	r6, r2, #0x1
  3d0920: de98         	udf	#0x98
  3d0922: ffff b500    	<unknown>

// ==== SMAW::~SMAW
//      file offset 0x3d0924 (= ELF address; Ghidra 0x3e0924), 28 bytes, Thumb-2
  3d0924: b500         	push	{lr}
  3d0926: b083         	sub	sp, #0xc
  3d0928: 9001         	str	r0, [sp, #0x4]
  3d092a: 9801         	ldr	r0, [sp, #0x4]
  3d092c: f7ff ffc0    	bl	0x3d08b0 <SMAW::~SMAW()> @ imm = #-0x80
  3d0930: 9801         	ldr	r0, [sp, #0x4]
  3d0932: f3b7 fbb7    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3b776e
  3d0936: 9b01         	ldr	r3, [sp, #0x4]
  3d0938: 4618         	mov	r0, r3
  3d093a: b003         	add	sp, #0xc
  3d093c: f85d fb04    	ldr	pc, [sp], #4

// ==== SMAW::triggerPull
//      file offset 0x3d0940 (= ELF address; Ghidra 0x3e0940), 336 bytes, Thumb-2
  3d0940: b510         	push	{r4, lr}
  3d0942: b088         	sub	sp, #0x20
  3d0944: 9003         	str	r0, [sp, #0xc]
  3d0946: 9102         	str	r1, [sp, #0x8]
  3d0948: 4c4f         	ldr	r4, [pc, #0x13c]        @ 0x3d0a88 <SMAW::triggerPull(float)+0x148>
  3d094a: 447c         	add	r4, pc
  3d094c: 9b03         	ldr	r3, [sp, #0xc]
  3d094e: ed93 7a44    	vldr	s14, [r3, #272]
  3d0952: 9b03         	ldr	r3, [sp, #0xc]
  3d0954: edd3 7a57    	vldr	s15, [r3, #348]
  3d0958: eeb4 7ae7    	vcmpe.f32	s14, s15
  3d095c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3d0960: dd69         	ble	0x3d0a36 <SMAW::triggerPull(float)+0xf6> @ imm = #0xd2
  3d0962: 9b03         	ldr	r3, [sp, #0xc]
  3d0964: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  3d0968: b21b         	sxth	r3, r3
  3d096a: 2b00         	cmp	r3, #0x0
  3d096c: dd0f         	ble	0x3d098e <SMAW::triggerPull(float)+0x4e> @ imm = #0x1e
  3d096e: 9b03         	ldr	r3, [sp, #0xc]
  3d0970: 681b         	ldr	r3, [r3]
  3d0972: f503 7333    	add.w	r3, r3, #0x2cc
  3d0976: 681b         	ldr	r3, [r3]
  3d0978: 9a03         	ldr	r2, [sp, #0xc]
  3d097a: 4610         	mov	r0, r2
  3d097c: 4798         	blx	r3
  3d097e: 4603         	mov	r3, r0
  3d0980: f083 0301    	eor	r3, r3, #0x1
  3d0984: b2db         	uxtb	r3, r3
  3d0986: 2b00         	cmp	r3, #0x0
  3d0988: d001         	beq	0x3d098e <SMAW::triggerPull(float)+0x4e> @ imm = #0x2
  3d098a: 2301         	movs	r3, #0x1
  3d098c: e000         	b	0x3d0990 <SMAW::triggerPull(float)+0x50> @ imm = #0x0
  3d098e: 2300         	movs	r3, #0x0
  3d0990: 2b00         	cmp	r3, #0x0
  3d0992: d024         	beq	0x3d09de <SMAW::triggerPull(float)+0x9e> @ imm = #0x48
  3d0994: 9b03         	ldr	r3, [sp, #0xc]
  3d0996: 2201         	movs	r2, #0x1
  3d0998: f883 2180    	strb.w	r2, [r3, #0x180]
  3d099c: 9b03         	ldr	r3, [sp, #0xc]
  3d099e: 681b         	ldr	r3, [r3]
  3d09a0: f503 7325    	add.w	r3, r3, #0x294
  3d09a4: 681b         	ldr	r3, [r3]
  3d09a6: 9803         	ldr	r0, [sp, #0xc]
  3d09a8: 4798         	blx	r3
  3d09aa: 9b03         	ldr	r3, [sp, #0xc]
  3d09ac: 681b         	ldr	r3, [r3]
  3d09ae: f503 7342    	add.w	r3, r3, #0x308
  3d09b2: 681b         	ldr	r3, [r3]
  3d09b4: 9a03         	ldr	r2, [sp, #0xc]
  3d09b6: 4610         	mov	r0, r2
  3d09b8: 4798         	blx	r3
  3d09ba: 9b03         	ldr	r3, [sp, #0xc]
  3d09bc: f893 3195    	ldrb.w	r3, [r3, #0x195]
  3d09c0: 3301         	adds	r3, #0x1
  3d09c2: b2da         	uxtb	r2, r3
  3d09c4: 9b03         	ldr	r3, [sp, #0xc]
  3d09c6: f883 2195    	strb.w	r2, [r3, #0x195]
  3d09ca: 9b03         	ldr	r3, [sp, #0xc]
  3d09cc: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  3d09d0: b29b         	uxth	r3, r3
  3d09d2: 3b00         	subs	r3, #0x0
  3d09d4: b29a         	uxth	r2, r3
  3d09d6: 9b03         	ldr	r3, [sp, #0xc]
  3d09d8: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  3d09dc: e026         	b	0x3d0a2c <SMAW::triggerPull(float)+0xec> @ imm = #0x4c
  3d09de: 9b03         	ldr	r3, [sp, #0xc]
  3d09e0: 681b         	ldr	r3, [r3]
  3d09e2: f503 7333    	add.w	r3, r3, #0x2cc
  3d09e6: 681b         	ldr	r3, [r3]
  3d09e8: 9a03         	ldr	r2, [sp, #0xc]
  3d09ea: 4610         	mov	r0, r2
  3d09ec: 4798         	blx	r3
  3d09ee: 4603         	mov	r3, r0
  3d09f0: f083 0301    	eor	r3, r3, #0x1
  3d09f4: b2db         	uxtb	r3, r3
  3d09f6: 2b00         	cmp	r3, #0x0
  3d09f8: d018         	beq	0x3d0a2c <SMAW::triggerPull(float)+0xec> @ imm = #0x30
  3d09fa: 4b24         	ldr	r3, [pc, #0x90]         @ 0x3d0a8c <SMAW::triggerPull(float)+0x14c>
  3d09fc: 58e3         	ldr	r3, [r4, r3]
  3d09fe: 681c         	ldr	r4, [r3]
  3d0a00: 9b03         	ldr	r3, [sp, #0xc]
  3d0a02: 681b         	ldr	r3, [r3]
  3d0a04: f503 7348    	add.w	r3, r3, #0x320
  3d0a08: 681b         	ldr	r3, [r3]
  3d0a0a: 9a03         	ldr	r2, [sp, #0xc]
  3d0a0c: a904         	add	r1, sp, #0x10
  3d0a0e: 4608         	mov	r0, r1
  3d0a10: 4611         	mov	r1, r2
  3d0a12: 4798         	blx	r3
  3d0a14: 466b         	mov	r3, sp
  3d0a16: aa06         	add	r2, sp, #0x18
  3d0a18: e892 0003    	ldm.w	r2, {r0, r1}
  3d0a1c: e883 0003    	stm.w	r3, {r0, r1}
  3d0a20: ab04         	add	r3, sp, #0x10
  3d0a22: cb0c         	ldm	r3, {r2, r3}
  3d0a24: 4620         	mov	r0, r4
  3d0a26: 2100         	movs	r1, #0x0
  3d0a28: f027 fae6    	bl	0x3f7ff8 <Sound::playSoundPosition(int, cpVect)> @ imm = #0x275cc
  3d0a2c: 9b03         	ldr	r3, [sp, #0xc]
  3d0a2e: f04f 0200    	mov.w	r2, #0x0
  3d0a32: f8c3 2110    	str.w	r2, [r3, #0x110]
  3d0a36: 9b03         	ldr	r3, [sp, #0xc]
  3d0a38: 681b         	ldr	r3, [r3]
  3d0a3a: f503 7333    	add.w	r3, r3, #0x2cc
  3d0a3e: 681b         	ldr	r3, [r3]
  3d0a40: 9a03         	ldr	r2, [sp, #0xc]
  3d0a42: 4610         	mov	r0, r2
  3d0a44: 4798         	blx	r3
  3d0a46: 4603         	mov	r3, r0
  3d0a48: f083 0301    	eor	r3, r3, #0x1
  3d0a4c: b2db         	uxtb	r3, r3
  3d0a4e: 2b00         	cmp	r3, #0x0
  3d0a50: d00c         	beq	0x3d0a6c <SMAW::triggerPull(float)+0x12c> @ imm = #0x18
  3d0a52: 9b03         	ldr	r3, [sp, #0xc]
  3d0a54: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  3d0a58: 2b00         	cmp	r3, #0x0
  3d0a5a: d107         	bne	0x3d0a6c <SMAW::triggerPull(float)+0x12c> @ imm = #0xe
  3d0a5c: 9b03         	ldr	r3, [sp, #0xc]
  3d0a5e: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  3d0a62: b21b         	sxth	r3, r3
  3d0a64: 2b00         	cmp	r3, #0x0
  3d0a66: dd01         	ble	0x3d0a6c <SMAW::triggerPull(float)+0x12c> @ imm = #0x2
  3d0a68: 2301         	movs	r3, #0x1
  3d0a6a: e000         	b	0x3d0a6e <SMAW::triggerPull(float)+0x12e> @ imm = #0x0
  3d0a6c: 2300         	movs	r3, #0x0
  3d0a6e: 2b00         	cmp	r3, #0x0
  3d0a70: d008         	beq	0x3d0a84 <SMAW::triggerPull(float)+0x144> @ imm = #0x10
  3d0a72: 9b03         	ldr	r3, [sp, #0xc]
  3d0a74: 2201         	movs	r2, #0x1
  3d0a76: f883 2181    	strb.w	r2, [r3, #0x181]
  3d0a7a: 9b03         	ldr	r3, [sp, #0xc]
  3d0a7c: f04f 0200    	mov.w	r2, #0x0
  3d0a80: f8c3 2158    	str.w	r2, [r3, #0x158]
  3d0a84: b008         	add	sp, #0x20
  3d0a86: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3d0a87); words below are literal-pool data ---
  3d0a88: 20be         	movs	r0, #0xbe
  3d0a8a: 0056         	lsls	r6, r2, #0x1
  3d0a8c: d730         	bvc	0x3d0af0 <SMAW::updateItemStep(float)+0x60> @ imm = #0x60
  3d0a8e: ffff b500    	<unknown>

// ==== SMAW::updateItemStep
//      file offset 0x3d0a90 (= ELF address; Ghidra 0x3e0a90), 282 bytes, Thumb-2
  3d0a90: b500         	push	{lr}
  3d0a92: ed2d 8b02    	vpush	{d8}
  3d0a96: b085         	sub	sp, #0x14
  3d0a98: 9001         	str	r0, [sp, #0x4]
  3d0a9a: 9100         	str	r1, [sp]
  3d0a9c: 9b01         	ldr	r3, [sp, #0x4]
  3d0a9e: ed93 7a56    	vldr	s14, [r3, #344]
  3d0aa2: eddd 7a00    	vldr	s15, [sp]
  3d0aa6: ee77 7a27    	vadd.f32	s15, s14, s15
  3d0aaa: 9b01         	ldr	r3, [sp, #0x4]
  3d0aac: edc3 7a56    	vstr	s15, [r3, #344]
  3d0ab0: 9b01         	ldr	r3, [sp, #0x4]
  3d0ab2: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3d0ab6: 681b         	ldr	r3, [r3]
  3d0ab8: 3390         	adds	r3, #0x90
  3d0aba: 681b         	ldr	r3, [r3]
  3d0abc: 9a01         	ldr	r2, [sp, #0x4]
  3d0abe: f8d2 11f0    	ldr.w	r1, [r2, #0x1f0]
  3d0ac2: 9a01         	ldr	r2, [sp, #0x4]
  3d0ac4: f892 2180    	ldrb.w	r2, [r2, #0x180]
  3d0ac8: 4608         	mov	r0, r1
  3d0aca: 4611         	mov	r1, r2
  3d0acc: 4798         	blx	r3
  3d0ace: 9b01         	ldr	r3, [sp, #0x4]
  3d0ad0: 681b         	ldr	r3, [r3]
  3d0ad2: f503 7315    	add.w	r3, r3, #0x254
  3d0ad6: 681b         	ldr	r3, [r3]
  3d0ad8: 9a01         	ldr	r2, [sp, #0x4]
  3d0ada: 4610         	mov	r0, r2
  3d0adc: 9900         	ldr	r1, [sp]
  3d0ade: 4798         	blx	r3
  3d0ae0: 9b01         	ldr	r3, [sp, #0x4]
  3d0ae2: f893 3181    	ldrb.w	r3, [r3, #0x181]
  3d0ae6: 2b00         	cmp	r3, #0x0
  3d0ae8: d013         	beq	0x3d0b12 <SMAW::updateItemStep(float)+0x82> @ imm = #0x26
  3d0aea: 9b01         	ldr	r3, [sp, #0x4]
  3d0aec: ed93 8a56    	vldr	s16, [r3, #344]
  3d0af0: 9b01         	ldr	r3, [sp, #0x4]
  3d0af2: 681b         	ldr	r3, [r3]
  3d0af4: f503 732e    	add.w	r3, r3, #0x2b8
  3d0af8: 681b         	ldr	r3, [r3]
  3d0afa: 9a01         	ldr	r2, [sp, #0x4]
  3d0afc: 4610         	mov	r0, r2
  3d0afe: 4798         	blx	r3
  3d0b00: ee07 0a90    	vmov	s15, r0
  3d0b04: eeb4 8ae7    	vcmpe.f32	s16, s15
  3d0b08: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3d0b0c: dd01         	ble	0x3d0b12 <SMAW::updateItemStep(float)+0x82> @ imm = #0x2
  3d0b0e: 2301         	movs	r3, #0x1
  3d0b10: e000         	b	0x3d0b14 <SMAW::updateItemStep(float)+0x84> @ imm = #0x0
  3d0b12: 2300         	movs	r3, #0x0
  3d0b14: 2b00         	cmp	r3, #0x0
  3d0b16: d043         	beq	0x3d0ba0 <SMAW::updateItemStep(float)+0x110> @ imm = #0x86
  3d0b18: 9b01         	ldr	r3, [sp, #0x4]
  3d0b1a: 2200         	movs	r2, #0x0
  3d0b1c: f883 2181    	strb.w	r2, [r3, #0x181]
  3d0b20: 9b01         	ldr	r3, [sp, #0x4]
  3d0b22: f04f 0200    	mov.w	r2, #0x0
  3d0b26: f8c3 2110    	str.w	r2, [r3, #0x110]
  3d0b2a: 9b01         	ldr	r3, [sp, #0x4]
  3d0b2c: 681b         	ldr	r3, [r3]
  3d0b2e: f503 732d    	add.w	r3, r3, #0x2b4
  3d0b32: 681b         	ldr	r3, [r3]
  3d0b34: 9a01         	ldr	r2, [sp, #0x4]
  3d0b36: 4610         	mov	r0, r2
  3d0b38: 4798         	blx	r3
  3d0b3a: 4602         	mov	r2, r0
  3d0b3c: 9b01         	ldr	r3, [sp, #0x4]
  3d0b3e: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  3d0b42: b21b         	sxth	r3, r3
  3d0b44: 1ad3         	subs	r3, r2, r3
  3d0b46: 9303         	str	r3, [sp, #0xc]
  3d0b48: 9b01         	ldr	r3, [sp, #0x4]
  3d0b4a: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  3d0b4e: b29a         	uxth	r2, r3
  3d0b50: 9b03         	ldr	r3, [sp, #0xc]
  3d0b52: b29b         	uxth	r3, r3
  3d0b54: 1ad3         	subs	r3, r2, r3
  3d0b56: b29b         	uxth	r3, r3
  3d0b58: b29a         	uxth	r2, r3
  3d0b5a: 9b01         	ldr	r3, [sp, #0x4]
  3d0b5c: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  3d0b60: 9b01         	ldr	r3, [sp, #0x4]
  3d0b62: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  3d0b66: b29a         	uxth	r2, r3
  3d0b68: 9b03         	ldr	r3, [sp, #0xc]
  3d0b6a: b29b         	uxth	r3, r3
  3d0b6c: 4413         	add	r3, r2
  3d0b6e: b29a         	uxth	r2, r3
  3d0b70: 9b01         	ldr	r3, [sp, #0x4]
  3d0b72: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  3d0b76: b21b         	sxth	r3, r3
  3d0b78: ea03 73e3    	and.w	r3, r3, r3, asr #31
  3d0b7c: b29b         	uxth	r3, r3
  3d0b7e: b29b         	uxth	r3, r3
  3d0b80: 4413         	add	r3, r2
  3d0b82: b29b         	uxth	r3, r3
  3d0b84: b29a         	uxth	r2, r3
  3d0b86: 9b01         	ldr	r3, [sp, #0x4]
  3d0b88: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  3d0b8c: 9b01         	ldr	r3, [sp, #0x4]
  3d0b8e: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  3d0b92: b21b         	sxth	r3, r3
  3d0b94: ea23 73e3    	bic.w	r3, r3, r3, asr #31
  3d0b98: b29a         	uxth	r2, r3
  3d0b9a: 9b01         	ldr	r3, [sp, #0x4]
  3d0b9c: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  3d0ba0: b005         	add	sp, #0x14
  3d0ba2: ecbd 8b02    	vpop	{d8}
  3d0ba6: f85d fb04    	ldr	pc, [sp], #4

// ==== SMAW::updateRemoteItemStep
//      file offset 0x3d0bac (= ELF address; Ghidra 0x3e0bac), 94 bytes, Thumb-2
  3d0bac: b500         	push	{lr}
  3d0bae: b083         	sub	sp, #0xc
  3d0bb0: 9001         	str	r0, [sp, #0x4]
  3d0bb2: 9100         	str	r1, [sp]
  3d0bb4: 9b01         	ldr	r3, [sp, #0x4]
  3d0bb6: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3d0bba: 681b         	ldr	r3, [r3]
  3d0bbc: 3390         	adds	r3, #0x90
  3d0bbe: 681b         	ldr	r3, [r3]
  3d0bc0: 9a01         	ldr	r2, [sp, #0x4]
  3d0bc2: f8d2 11f0    	ldr.w	r1, [r2, #0x1f0]
  3d0bc6: 9a01         	ldr	r2, [sp, #0x4]
  3d0bc8: f892 2180    	ldrb.w	r2, [r2, #0x180]
  3d0bcc: 4608         	mov	r0, r1
  3d0bce: 4611         	mov	r1, r2
  3d0bd0: 4798         	blx	r3
  3d0bd2: 9b01         	ldr	r3, [sp, #0x4]
  3d0bd4: 681b         	ldr	r3, [r3]
  3d0bd6: f503 7315    	add.w	r3, r3, #0x254
  3d0bda: 681b         	ldr	r3, [r3]
  3d0bdc: 9a01         	ldr	r2, [sp, #0x4]
  3d0bde: 4610         	mov	r0, r2
  3d0be0: 9900         	ldr	r1, [sp]
  3d0be2: 4798         	blx	r3
  3d0be4: 9b01         	ldr	r3, [sp, #0x4]
  3d0be6: f893 2194    	ldrb.w	r2, [r3, #0x194]
  3d0bea: 9b01         	ldr	r3, [sp, #0x4]
  3d0bec: f893 3195    	ldrb.w	r3, [r3, #0x195]
  3d0bf0: 429a         	cmp	r2, r3
  3d0bf2: d007         	beq	0x3d0c04 <SMAW::updateRemoteItemStep(float)+0x58> @ imm = #0xe
  3d0bf4: 9b01         	ldr	r3, [sp, #0x4]
  3d0bf6: 681b         	ldr	r3, [r3]
  3d0bf8: f503 7318    	add.w	r3, r3, #0x260
  3d0bfc: 681b         	ldr	r3, [r3]
  3d0bfe: 9801         	ldr	r0, [sp, #0x4]
  3d0c00: 9900         	ldr	r1, [sp]
  3d0c02: 4798         	blx	r3
  3d0c04: b003         	add	sp, #0xc
  3d0c06: f85d fb04    	ldr	pc, [sp], #4

// ==== SMAW::remoteTriggerPull
//      file offset 0x3d0c0c (= ELF address; Ghidra 0x3e0c0c), 100 bytes, Thumb-2
  3d0c0c: b500         	push	{lr}
  3d0c0e: b083         	sub	sp, #0xc
  3d0c10: 9001         	str	r0, [sp, #0x4]
  3d0c12: 9100         	str	r1, [sp]
  3d0c14: 9b01         	ldr	r3, [sp, #0x4]
  3d0c16: ed93 7a44    	vldr	s14, [r3, #272]
  3d0c1a: 9b01         	ldr	r3, [sp, #0x4]
  3d0c1c: edd3 7a57    	vldr	s15, [r3, #348]
  3d0c20: eeb4 7ae7    	vcmpe.f32	s14, s15
  3d0c24: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3d0c28: dd1f         	ble	0x3d0c6a <SMAW::remoteTriggerPull(float)+0x5e> @ imm = #0x3e
  3d0c2a: 9b01         	ldr	r3, [sp, #0x4]
  3d0c2c: f04f 0200    	mov.w	r2, #0x0
  3d0c30: f8c3 2110    	str.w	r2, [r3, #0x110]
  3d0c34: 9b01         	ldr	r3, [sp, #0x4]
  3d0c36: 2201         	movs	r2, #0x1
  3d0c38: f883 2180    	strb.w	r2, [r3, #0x180]
  3d0c3c: 9b01         	ldr	r3, [sp, #0x4]
  3d0c3e: 681b         	ldr	r3, [r3]
  3d0c40: f503 7325    	add.w	r3, r3, #0x294
  3d0c44: 681b         	ldr	r3, [r3]
  3d0c46: 9801         	ldr	r0, [sp, #0x4]
  3d0c48: 4798         	blx	r3
  3d0c4a: 9b01         	ldr	r3, [sp, #0x4]
  3d0c4c: 681b         	ldr	r3, [r3]
  3d0c4e: f503 7342    	add.w	r3, r3, #0x308
  3d0c52: 681b         	ldr	r3, [r3]
  3d0c54: 9a01         	ldr	r2, [sp, #0x4]
  3d0c56: 4610         	mov	r0, r2
  3d0c58: 4798         	blx	r3
  3d0c5a: 9b01         	ldr	r3, [sp, #0x4]
  3d0c5c: f893 3195    	ldrb.w	r3, [r3, #0x195]
  3d0c60: 3301         	adds	r3, #0x1
  3d0c62: b2da         	uxtb	r2, r3
  3d0c64: 9b01         	ldr	r3, [sp, #0x4]
  3d0c66: f883 2195    	strb.w	r2, [r3, #0x195]
  3d0c6a: b003         	add	sp, #0xc
  3d0c6c: f85d fb04    	ldr	pc, [sp], #4

// ==== SMAW::getShellPoint
//      file offset 0x3d0c70 (= ELF address; Ghidra 0x3e0c70), 196 bytes, Thumb-2
  3d0c70: b530         	push	{r4, r5, lr}
  3d0c72: b08f         	sub	sp, #0x3c
  3d0c74: 9001         	str	r0, [sp, #0x4]
  3d0c76: 9100         	str	r1, [sp]
  3d0c78: 4c2c         	ldr	r4, [pc, #0xb0]         @ 0x3d0d2c <SMAW::getShellPoint()+0xbc>
  3d0c7a: 447c         	add	r4, pc
  3d0c7c: 9b00         	ldr	r3, [sp]
  3d0c7e: 681b         	ldr	r3, [r3]
  3d0c80: 3350         	adds	r3, #0x50
  3d0c82: 681b         	ldr	r3, [r3]
  3d0c84: 9a00         	ldr	r2, [sp]
  3d0c86: 4610         	mov	r0, r2
  3d0c88: 4798         	blx	r3
  3d0c8a: 4605         	mov	r5, r0
  3d0c8c: ab04         	add	r3, sp, #0x10
  3d0c8e: 4618         	mov	r0, r3
  3d0c90: f04f 0100    	mov.w	r1, #0x0
  3d0c94: f04f 0200    	mov.w	r2, #0x0
  3d0c98: f1c2 f82a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1c2054
  3d0c9c: aa06         	add	r2, sp, #0x18
  3d0c9e: ab04         	add	r3, sp, #0x10
  3d0ca0: 4610         	mov	r0, r2
  3d0ca2: 4629         	mov	r1, r5
  3d0ca4: 461a         	mov	r2, r3
  3d0ca6: f7fe fd1f    	bl	0x3cf6e8 <SHOTGUN::getDAMAGE()+0x178> @ imm = #-0x15c2
  3d0caa: 9b00         	ldr	r3, [sp]
  3d0cac: 681b         	ldr	r3, [r3]
  3d0cae: f503 73c2    	add.w	r3, r3, #0x184
  3d0cb2: 681b         	ldr	r3, [r3]
  3d0cb4: 9a00         	ldr	r2, [sp]
  3d0cb6: a908         	add	r1, sp, #0x20
  3d0cb8: 4608         	mov	r0, r1
  3d0cba: 4611         	mov	r1, r2
  3d0cbc: 4798         	blx	r3
  3d0cbe: a902         	add	r1, sp, #0x8
  3d0cc0: aa06         	add	r2, sp, #0x18
  3d0cc2: ab08         	add	r3, sp, #0x20
  3d0cc4: 4608         	mov	r0, r1
  3d0cc6: 4611         	mov	r1, r2
  3d0cc8: 461a         	mov	r2, r3
  3d0cca: f1c1 fb2b    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x1c1656
  3d0cce: 4b18         	ldr	r3, [pc, #0x60]         @ 0x3d0d30 <SMAW::getShellPoint()+0xc0>
  3d0cd0: 58e3         	ldr	r3, [r4, r3]
  3d0cd2: 681b         	ldr	r3, [r3]
  3d0cd4: 681b         	ldr	r3, [r3]
  3d0cd6: f503 73c4    	add.w	r3, r3, #0x188
  3d0cda: 681b         	ldr	r3, [r3]
  3d0cdc: 4a14         	ldr	r2, [pc, #0x50]         @ 0x3d0d30 <SMAW::getShellPoint()+0xc0>
  3d0cde: 58a2         	ldr	r2, [r4, r2]
  3d0ce0: 6812         	ldr	r2, [r2]
  3d0ce2: a908         	add	r1, sp, #0x20
  3d0ce4: 4608         	mov	r0, r1
  3d0ce6: 4611         	mov	r1, r2
  3d0ce8: 4798         	blx	r3
  3d0cea: a906         	add	r1, sp, #0x18
  3d0cec: aa02         	add	r2, sp, #0x8
  3d0cee: ab08         	add	r3, sp, #0x20
  3d0cf0: 4608         	mov	r0, r1
  3d0cf2: 4611         	mov	r1, r2
  3d0cf4: 461a         	mov	r2, r3
  3d0cf6: f1c1 fb15    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x1c162a
  3d0cfa: aa02         	add	r2, sp, #0x8
  3d0cfc: ab06         	add	r3, sp, #0x18
  3d0cfe: 4610         	mov	r0, r2
  3d0d00: 4619         	mov	r1, r3
  3d0d02: f1c2 f823    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x1c2046
  3d0d06: eddd 7a02    	vldr	s15, [sp, #8]
  3d0d0a: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3d0d0e: eddd 7a03    	vldr	s15, [sp, #12]
  3d0d12: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3d0d16: 9b01         	ldr	r3, [sp, #0x4]
  3d0d18: 4618         	mov	r0, r3
  3d0d1a: eeb0 0b46    	vmov.f64	d0, d6
  3d0d1e: eeb0 1b47    	vmov.f64	d1, d7
  3d0d22: f7fe fcf1    	bl	0x3cf708 <SHOTGUN::getDAMAGE()+0x198> @ imm = #-0x161e
  3d0d26: 9801         	ldr	r0, [sp, #0x4]
  3d0d28: b00f         	add	sp, #0x3c
  3d0d2a: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3d0d2b); words below are literal-pool data ---
  3d0d2c: 1d8e         	adds	r6, r1, #0x6
  3d0d2e: 0056         	lsls	r6, r2, #0x1
  3d0d30: d744         	bvc	0x3d0dbc <SMAW::setPrimaryConfiguration()+0x40> @ imm = #0x88
  3d0d32: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== SMAW::playSound
//      file offset 0x3d0d34 (= ELF address; Ghidra 0x3e0d34), 72 bytes, Thumb-2
  3d0d34: b510         	push	{r4, lr}
  3d0d36: b088         	sub	sp, #0x20
  3d0d38: 9003         	str	r0, [sp, #0xc]
  3d0d3a: 4a0e         	ldr	r2, [pc, #0x38]         @ 0x3d0d74 <SMAW::playSound()+0x40>
  3d0d3c: 447a         	add	r2, pc
  3d0d3e: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x3d0d78 <SMAW::playSound()+0x44>
  3d0d40: 58d3         	ldr	r3, [r2, r3]
  3d0d42: 681c         	ldr	r4, [r3]
  3d0d44: 9b03         	ldr	r3, [sp, #0xc]
  3d0d46: 681b         	ldr	r3, [r3]
  3d0d48: f503 7348    	add.w	r3, r3, #0x320
  3d0d4c: 681b         	ldr	r3, [r3]
  3d0d4e: 9a03         	ldr	r2, [sp, #0xc]
  3d0d50: a904         	add	r1, sp, #0x10
  3d0d52: 4608         	mov	r0, r1
  3d0d54: 4611         	mov	r1, r2
  3d0d56: 4798         	blx	r3
  3d0d58: 466b         	mov	r3, sp
  3d0d5a: aa06         	add	r2, sp, #0x18
  3d0d5c: e892 0003    	ldm.w	r2, {r0, r1}
  3d0d60: e883 0003    	stm.w	r3, {r0, r1}
  3d0d64: ab04         	add	r3, sp, #0x10
  3d0d66: cb0c         	ldm	r3, {r2, r3}
  3d0d68: 4620         	mov	r0, r4
  3d0d6a: 2122         	movs	r1, #0x22
  3d0d6c: f027 f944    	bl	0x3f7ff8 <Sound::playSoundPosition(int, cpVect)> @ imm = #0x27288
  3d0d70: b008         	add	sp, #0x20
  3d0d72: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3d0d73); words below are literal-pool data ---
  3d0d74: 1ccc         	adds	r4, r1, #0x3
  3d0d76: 0056         	lsls	r6, r2, #0x1
  3d0d78: d730         	bvc	0x3d0ddc <SMAW::setPrimaryConfiguration()+0x60> @ imm = #0x60
  3d0d7a: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== SMAW::setPrimaryConfiguration
//      file offset 0x3d0d7c (= ELF address; Ghidra 0x3e0d7c), 316 bytes, Thumb-2
  3d0d7c: b530         	push	{r4, r5, lr}
  3d0d7e: b085         	sub	sp, #0x14
  3d0d80: 9001         	str	r0, [sp, #0x4]
  3d0d82: 9b01         	ldr	r3, [sp, #0x4]
  3d0d84: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3d0d88: 2b00         	cmp	r3, #0x0
  3d0d8a: d019         	beq	0x3d0dc0 <SMAW::setPrimaryConfiguration()+0x44> @ imm = #0x32
  3d0d8c: 9b01         	ldr	r3, [sp, #0x4]
  3d0d8e: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  3d0d92: 4b48         	ldr	r3, [pc, #0x120]        @ 0x3d0eb4 <SMAW::setPrimaryConfiguration()+0x138>
  3d0d94: 447b         	add	r3, pc
  3d0d96: ed93 6b00    	vldr	d6, [r3]
  3d0d9a: ed93 7b02    	vldr	d7, [r3, #8]
  3d0d9e: 4610         	mov	r0, r2
  3d0da0: eeb0 0b46    	vmov.f64	d0, d6
  3d0da4: eeb0 1b47    	vmov.f64	d1, d7
  3d0da8: f7fe fcc2    	bl	0x3cf730 <SHOTGUN::getDAMAGE()+0x1c0> @ imm = #-0x167c
  3d0dac: 9b01         	ldr	r3, [sp, #0x4]
  3d0dae: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3d0db2: 4618         	mov	r0, r3
  3d0db4: f04f 0200    	mov.w	r2, #0x0
  3d0db8: f04f 0300    	mov.w	r3, #0x0
  3d0dbc: f302 f9e9    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x3023d2
  3d0dc0: 9b01         	ldr	r3, [sp, #0x4]
  3d0dc2: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3d0dc6: 681b         	ldr	r3, [r3]
  3d0dc8: 334c         	adds	r3, #0x4c
  3d0dca: 681c         	ldr	r4, [r3]
  3d0dcc: 9b01         	ldr	r3, [sp, #0x4]
  3d0dce: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  3d0dd2: ab02         	add	r3, sp, #0x8
  3d0dd4: 4618         	mov	r0, r3
  3d0dd6: f04f 0100    	mov.w	r1, #0x0
  3d0dda: f04f 0200    	mov.w	r2, #0x0
  3d0dde: f1c1 ff87    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1c1f0e
  3d0de2: ab02         	add	r3, sp, #0x8
  3d0de4: 4628         	mov	r0, r5
  3d0de6: 4619         	mov	r1, r3
  3d0de8: 47a0         	blx	r4
  3d0dea: 9b01         	ldr	r3, [sp, #0x4]
  3d0dec: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3d0df0: 681b         	ldr	r3, [r3]
  3d0df2: 337c         	adds	r3, #0x7c
  3d0df4: 681c         	ldr	r4, [r3]
  3d0df6: 9b01         	ldr	r3, [sp, #0x4]
  3d0df8: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  3d0dfc: ab02         	add	r3, sp, #0x8
  3d0dfe: 4618         	mov	r0, r3
  3d0e00: f246 6166    	movw	r1, #0x6666
  3d0e04: f6c3 61e6    	movt	r1, #0x3ee6
  3d0e08: f04f 527c    	mov.w	r2, #0x3f000000
  3d0e0c: f1c1 ff70    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1c1ee0
  3d0e10: ab02         	add	r3, sp, #0x8
  3d0e12: 4628         	mov	r0, r5
  3d0e14: 4619         	mov	r1, r3
  3d0e16: 47a0         	blx	r4
  3d0e18: 9b01         	ldr	r3, [sp, #0x4]
  3d0e1a: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3d0e1e: 681b         	ldr	r3, [r3]
  3d0e20: 3398         	adds	r3, #0x98
  3d0e22: 681b         	ldr	r3, [r3]
  3d0e24: 9a01         	ldr	r2, [sp, #0x4]
  3d0e26: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3d0e2a: 4610         	mov	r0, r2
  3d0e2c: f04f 0100    	mov.w	r1, #0x0
  3d0e30: f2cc 2120    	movt	r1, #0xc220
  3d0e34: 4798         	blx	r3
  3d0e36: 9b01         	ldr	r3, [sp, #0x4]
  3d0e38: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3d0e3c: 681b         	ldr	r3, [r3]
  3d0e3e: 3340         	adds	r3, #0x40
  3d0e40: 681b         	ldr	r3, [r3]
  3d0e42: 9a01         	ldr	r2, [sp, #0x4]
  3d0e44: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3d0e48: 4610         	mov	r0, r2
  3d0e4a: f04f 517e    	mov.w	r1, #0x3f800000
  3d0e4e: 4798         	blx	r3
  3d0e50: 9b01         	ldr	r3, [sp, #0x4]
  3d0e52: 681b         	ldr	r3, [r3]
  3d0e54: 334c         	adds	r3, #0x4c
  3d0e56: 681c         	ldr	r4, [r3]
  3d0e58: 9d01         	ldr	r5, [sp, #0x4]
  3d0e5a: ab02         	add	r3, sp, #0x8
  3d0e5c: 4618         	mov	r0, r3
  3d0e5e: f04f 0100    	mov.w	r1, #0x0
  3d0e62: f04f 0200    	mov.w	r2, #0x0
  3d0e66: f1c1 ff43    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1c1e86
  3d0e6a: ab02         	add	r3, sp, #0x8
  3d0e6c: 4628         	mov	r0, r5
  3d0e6e: 4619         	mov	r1, r3
  3d0e70: 47a0         	blx	r4
  3d0e72: 9b01         	ldr	r3, [sp, #0x4]
  3d0e74: 681b         	ldr	r3, [r3]
  3d0e76: 3340         	adds	r3, #0x40
  3d0e78: 681b         	ldr	r3, [r3]
  3d0e7a: 9a01         	ldr	r2, [sp, #0x4]
  3d0e7c: 4610         	mov	r0, r2
  3d0e7e: f04f 517e    	mov.w	r1, #0x3f800000
  3d0e82: 4798         	blx	r3
  3d0e84: 9b01         	ldr	r3, [sp, #0x4]
  3d0e86: 681b         	ldr	r3, [r3]
  3d0e88: 3398         	adds	r3, #0x98
  3d0e8a: 681b         	ldr	r3, [r3]
  3d0e8c: 9a01         	ldr	r2, [sp, #0x4]
  3d0e8e: 4610         	mov	r0, r2
  3d0e90: f04f 0100    	mov.w	r1, #0x0
  3d0e94: 4798         	blx	r3
  3d0e96: 9b01         	ldr	r3, [sp, #0x4]
  3d0e98: 2200         	movs	r2, #0x0
  3d0e9a: f883 2195    	strb.w	r2, [r3, #0x195]
  3d0e9e: 9b01         	ldr	r3, [sp, #0x4]
  3d0ea0: 2200         	movs	r2, #0x0
  3d0ea2: f883 2194    	strb.w	r2, [r3, #0x194]
  3d0ea6: 9b01         	ldr	r3, [sp, #0x4]
  3d0ea8: f04f 0200    	mov.w	r2, #0x0
  3d0eac: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  3d0eb0: b005         	add	sp, #0x14
  3d0eb2: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3d0eb3); words below are literal-pool data ---
  3d0eb4: 62a0         	str	r0, [r4, #0x28]
  3d0eb6: 0040         	lsls	r0, r0, #0x1

// ==== SMAW::setSecondaryConfiguration
//      file offset 0x3d0eb8 (= ELF address; Ghidra 0x3e0eb8), 340 bytes, Thumb-2
  3d0eb8: b530         	push	{r4, r5, lr}
  3d0eba: b085         	sub	sp, #0x14
  3d0ebc: 9001         	str	r0, [sp, #0x4]
  3d0ebe: 9b01         	ldr	r3, [sp, #0x4]
  3d0ec0: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3d0ec4: 2b00         	cmp	r3, #0x0
  3d0ec6: d019         	beq	0x3d0efc <SMAW::setSecondaryConfiguration()+0x44> @ imm = #0x32
  3d0ec8: 9b01         	ldr	r3, [sp, #0x4]
  3d0eca: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  3d0ece: 4b4e         	ldr	r3, [pc, #0x138]        @ 0x3d1008 <SMAW::setSecondaryConfiguration()+0x150>
  3d0ed0: 447b         	add	r3, pc
  3d0ed2: ed93 6b00    	vldr	d6, [r3]
  3d0ed6: ed93 7b02    	vldr	d7, [r3, #8]
  3d0eda: 4610         	mov	r0, r2
  3d0edc: eeb0 0b46    	vmov.f64	d0, d6
  3d0ee0: eeb0 1b47    	vmov.f64	d1, d7
  3d0ee4: f7fe fc24    	bl	0x3cf730 <SHOTGUN::getDAMAGE()+0x1c0> @ imm = #-0x17b8
  3d0ee8: 9b01         	ldr	r3, [sp, #0x4]
  3d0eea: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3d0eee: 4618         	mov	r0, r3
  3d0ef0: f04f 0200    	mov.w	r2, #0x0
  3d0ef4: f04f 0300    	mov.w	r3, #0x0
  3d0ef8: f302 f94b    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x302296
  3d0efc: 9b01         	ldr	r3, [sp, #0x4]
  3d0efe: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3d0f02: 681b         	ldr	r3, [r3]
  3d0f04: 334c         	adds	r3, #0x4c
  3d0f06: 681c         	ldr	r4, [r3]
  3d0f08: 9b01         	ldr	r3, [sp, #0x4]
  3d0f0a: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  3d0f0e: ab02         	add	r3, sp, #0x8
  3d0f10: 4618         	mov	r0, r3
  3d0f12: f04f 4141    	mov.w	r1, #0xc1000000
  3d0f16: f04f 0200    	mov.w	r2, #0x0
  3d0f1a: f2c4 1290    	movt	r2, #0x4190
  3d0f1e: f1c1 fee7    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1c1dce
  3d0f22: ab02         	add	r3, sp, #0x8
  3d0f24: 4628         	mov	r0, r5
  3d0f26: 4619         	mov	r1, r3
  3d0f28: 47a0         	blx	r4
  3d0f2a: 9b01         	ldr	r3, [sp, #0x4]
  3d0f2c: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3d0f30: 681b         	ldr	r3, [r3]
  3d0f32: 337c         	adds	r3, #0x7c
  3d0f34: 681c         	ldr	r4, [r3]
  3d0f36: 9b01         	ldr	r3, [sp, #0x4]
  3d0f38: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  3d0f3c: ab02         	add	r3, sp, #0x8
  3d0f3e: 4618         	mov	r0, r3
  3d0f40: f04f 517c    	mov.w	r1, #0x3f000000
  3d0f44: f04f 527c    	mov.w	r2, #0x3f000000
  3d0f48: f1c1 fed2    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1c1da4
  3d0f4c: ab02         	add	r3, sp, #0x8
  3d0f4e: 4628         	mov	r0, r5
  3d0f50: 4619         	mov	r1, r3
  3d0f52: 47a0         	blx	r4
  3d0f54: 9b01         	ldr	r3, [sp, #0x4]
  3d0f56: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3d0f5a: 681b         	ldr	r3, [r3]
  3d0f5c: 3398         	adds	r3, #0x98
  3d0f5e: 681b         	ldr	r3, [r3]
  3d0f60: 9a01         	ldr	r2, [sp, #0x4]
  3d0f62: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3d0f66: 4610         	mov	r0, r2
  3d0f68: f04f 0100    	mov.w	r1, #0x0
  3d0f6c: f2cc 2134    	movt	r1, #0xc234
  3d0f70: 4798         	blx	r3
  3d0f72: 9b01         	ldr	r3, [sp, #0x4]
  3d0f74: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3d0f78: 681b         	ldr	r3, [r3]
  3d0f7a: 3340         	adds	r3, #0x40
  3d0f7c: 681b         	ldr	r3, [r3]
  3d0f7e: 9a01         	ldr	r2, [sp, #0x4]
  3d0f80: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3d0f84: 4610         	mov	r0, r2
  3d0f86: f04f 517e    	mov.w	r1, #0x3f800000
  3d0f8a: 4798         	blx	r3
  3d0f8c: 9b01         	ldr	r3, [sp, #0x4]
  3d0f8e: 681b         	ldr	r3, [r3]
  3d0f90: 334c         	adds	r3, #0x4c
  3d0f92: 681c         	ldr	r4, [r3]
  3d0f94: 9d01         	ldr	r5, [sp, #0x4]
  3d0f96: ab02         	add	r3, sp, #0x8
  3d0f98: 4618         	mov	r0, r3
  3d0f9a: f04f 0100    	mov.w	r1, #0x0
  3d0f9e: f04f 0200    	mov.w	r2, #0x0
  3d0fa2: f1c1 fea5    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1c1d4a
  3d0fa6: ab02         	add	r3, sp, #0x8
  3d0fa8: 4628         	mov	r0, r5
  3d0faa: 4619         	mov	r1, r3
  3d0fac: 47a0         	blx	r4
  3d0fae: 9b01         	ldr	r3, [sp, #0x4]
  3d0fb0: 681b         	ldr	r3, [r3]
  3d0fb2: 3340         	adds	r3, #0x40
  3d0fb4: 681b         	ldr	r3, [r3]
  3d0fb6: 9a01         	ldr	r2, [sp, #0x4]
  3d0fb8: 4610         	mov	r0, r2
  3d0fba: f04f 517e    	mov.w	r1, #0x3f800000
  3d0fbe: 4798         	blx	r3
  3d0fc0: 9b01         	ldr	r3, [sp, #0x4]
  3d0fc2: 681b         	ldr	r3, [r3]
  3d0fc4: 3398         	adds	r3, #0x98
  3d0fc6: 681b         	ldr	r3, [r3]
  3d0fc8: 9a01         	ldr	r2, [sp, #0x4]
  3d0fca: 4610         	mov	r0, r2
  3d0fcc: f04f 0100    	mov.w	r1, #0x0
  3d0fd0: 4798         	blx	r3
  3d0fd2: 9b01         	ldr	r3, [sp, #0x4]
  3d0fd4: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3d0fd8: 681b         	ldr	r3, [r3]
  3d0fda: 3390         	adds	r3, #0x90
  3d0fdc: 681b         	ldr	r3, [r3]
  3d0fde: 9a01         	ldr	r2, [sp, #0x4]
  3d0fe0: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  3d0fe4: 4610         	mov	r0, r2
  3d0fe6: 2100         	movs	r1, #0x0
  3d0fe8: 4798         	blx	r3
  3d0fea: 9b01         	ldr	r3, [sp, #0x4]
  3d0fec: 2200         	movs	r2, #0x0
  3d0fee: f883 2195    	strb.w	r2, [r3, #0x195]
  3d0ff2: 9b01         	ldr	r3, [sp, #0x4]
  3d0ff4: 2200         	movs	r2, #0x0
  3d0ff6: f883 2194    	strb.w	r2, [r3, #0x194]
  3d0ffa: 9b01         	ldr	r3, [sp, #0x4]
  3d0ffc: f04f 0200    	mov.w	r2, #0x0
  3d1000: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  3d1004: b005         	add	sp, #0x14
  3d1006: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3d1007); words below are literal-pool data ---
  3d1008: 6164         	str	r4, [r4, #0x14]
  3d100a: 0040         	lsls	r0, r0, #0x1

// ==== SMAW::setMapConfiguration
//      file offset 0x3d100c (= ELF address; Ghidra 0x3e100c), 248 bytes, Thumb-2
  3d100c: b570         	push	{r4, r5, r6, lr}
  3d100e: b084         	sub	sp, #0x10
  3d1010: 9001         	str	r0, [sp, #0x4]
  3d1012: 4c3a         	ldr	r4, [pc, #0xe8]         @ 0x3d10fc <SMAW::setMapConfiguration()+0xf0>
  3d1014: 447c         	add	r4, pc
  3d1016: 9b01         	ldr	r3, [sp, #0x4]
  3d1018: f04f 0200    	mov.w	r2, #0x0
  3d101c: f8c3 2190    	str.w	r2, [r3, #0x190]
  3d1020: 9b01         	ldr	r3, [sp, #0x4]
  3d1022: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3d1026: 681b         	ldr	r3, [r3]
  3d1028: 334c         	adds	r3, #0x4c
  3d102a: 681d         	ldr	r5, [r3]
  3d102c: 9b01         	ldr	r3, [sp, #0x4]
  3d102e: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  3d1032: ab02         	add	r3, sp, #0x8
  3d1034: 4618         	mov	r0, r3
  3d1036: f04f 0100    	mov.w	r1, #0x0
  3d103a: f04f 0200    	mov.w	r2, #0x0
  3d103e: f1c1 fe57    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1c1cae
  3d1042: ab02         	add	r3, sp, #0x8
  3d1044: 4630         	mov	r0, r6
  3d1046: 4619         	mov	r1, r3
  3d1048: 47a8         	blx	r5
  3d104a: 9b01         	ldr	r3, [sp, #0x4]
  3d104c: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3d1050: 681b         	ldr	r3, [r3]
  3d1052: 337c         	adds	r3, #0x7c
  3d1054: 681d         	ldr	r5, [r3]
  3d1056: 9b01         	ldr	r3, [sp, #0x4]
  3d1058: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  3d105c: ab02         	add	r3, sp, #0x8
  3d105e: 4618         	mov	r0, r3
  3d1060: f04f 517c    	mov.w	r1, #0x3f000000
  3d1064: f04f 527c    	mov.w	r2, #0x3f000000
  3d1068: f1c1 fe42    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1c1c84
  3d106c: ab02         	add	r3, sp, #0x8
  3d106e: 4630         	mov	r0, r6
  3d1070: 4619         	mov	r1, r3
  3d1072: 47a8         	blx	r5
  3d1074: 9b01         	ldr	r3, [sp, #0x4]
  3d1076: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3d107a: 681b         	ldr	r3, [r3]
  3d107c: 3398         	adds	r3, #0x98
  3d107e: 681b         	ldr	r3, [r3]
  3d1080: 9a01         	ldr	r2, [sp, #0x4]
  3d1082: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3d1086: 4610         	mov	r0, r2
  3d1088: f04f 0100    	mov.w	r1, #0x0
  3d108c: 4798         	blx	r3
  3d108e: 9b01         	ldr	r3, [sp, #0x4]
  3d1090: 681b         	ldr	r3, [r3]
  3d1092: 334c         	adds	r3, #0x4c
  3d1094: 681d         	ldr	r5, [r3]
  3d1096: 9e01         	ldr	r6, [sp, #0x4]
  3d1098: ab02         	add	r3, sp, #0x8
  3d109a: 4618         	mov	r0, r3
  3d109c: f04f 0100    	mov.w	r1, #0x0
  3d10a0: f04f 0200    	mov.w	r2, #0x0
  3d10a4: f1c1 fe24    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1c1c48
  3d10a8: ab02         	add	r3, sp, #0x8
  3d10aa: 4630         	mov	r0, r6
  3d10ac: 4619         	mov	r1, r3
  3d10ae: 47a8         	blx	r5
  3d10b0: 9b01         	ldr	r3, [sp, #0x4]
  3d10b2: 681b         	ldr	r3, [r3]
  3d10b4: 3340         	adds	r3, #0x40
  3d10b6: 681b         	ldr	r3, [r3]
  3d10b8: 9901         	ldr	r1, [sp, #0x4]
  3d10ba: 4a11         	ldr	r2, [pc, #0x44]         @ 0x3d1100 <SMAW::setMapConfiguration()+0xf4>
  3d10bc: 58a2         	ldr	r2, [r4, r2]
  3d10be: 6812         	ldr	r2, [r2]
  3d10c0: 4608         	mov	r0, r1
  3d10c2: 4611         	mov	r1, r2
  3d10c4: 4798         	blx	r3
  3d10c6: 9b01         	ldr	r3, [sp, #0x4]
  3d10c8: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3d10cc: 681b         	ldr	r3, [r3]
  3d10ce: 3390         	adds	r3, #0x90
  3d10d0: 681b         	ldr	r3, [r3]
  3d10d2: 9a01         	ldr	r2, [sp, #0x4]
  3d10d4: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  3d10d8: 4610         	mov	r0, r2
  3d10da: 2100         	movs	r1, #0x0
  3d10dc: 4798         	blx	r3
  3d10de: 9b01         	ldr	r3, [sp, #0x4]
  3d10e0: 2200         	movs	r2, #0x0
  3d10e2: f883 2195    	strb.w	r2, [r3, #0x195]
  3d10e6: 9b01         	ldr	r3, [sp, #0x4]
  3d10e8: 2200         	movs	r2, #0x0
  3d10ea: f883 2194    	strb.w	r2, [r3, #0x194]
  3d10ee: 9b01         	ldr	r3, [sp, #0x4]
  3d10f0: f04f 0200    	mov.w	r2, #0x0
  3d10f4: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  3d10f8: b004         	add	sp, #0x10
  3d10fa: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3d10fb); words below are literal-pool data ---
  3d10fc: 19f4         	adds	r4, r6, r7
  3d10fe: 0056         	lsls	r6, r2, #0x1
  3d1100: d748         	bvc	0x3d1194 <SMAW::setRight(bool)+0x4> @ imm = #0x90
  3d1102: ffff b500    	<unknown>

// ==== SMAW::getWeaponTexture
//      file offset 0x3d1104 (= ELF address; Ghidra 0x3e1104), 40 bytes, Thumb-2
  3d1104: b500         	push	{lr}
  3d1106: b083         	sub	sp, #0xc
  3d1108: 9001         	str	r0, [sp, #0x4]
  3d110a: 9b01         	ldr	r3, [sp, #0x4]
  3d110c: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3d1110: 681b         	ldr	r3, [r3]
  3d1112: f503 73fa    	add.w	r3, r3, #0x1f4
  3d1116: 681b         	ldr	r3, [r3]
  3d1118: 9a01         	ldr	r2, [sp, #0x4]
  3d111a: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3d111e: 4610         	mov	r0, r2
  3d1120: 4798         	blx	r3
  3d1122: 4603         	mov	r3, r0
  3d1124: 4618         	mov	r0, r3
  3d1126: b003         	add	sp, #0xc
  3d1128: f85d fb04    	ldr	pc, [sp], #4

// ==== SMAW::getWeaponRect
//      file offset 0x3d112c (= ELF address; Ghidra 0x3e112c), 38 bytes, Thumb-2
  3d112c: b500         	push	{lr}
  3d112e: b083         	sub	sp, #0xc
  3d1130: 9001         	str	r0, [sp, #0x4]
  3d1132: 9100         	str	r1, [sp]
  3d1134: 9b00         	ldr	r3, [sp]
  3d1136: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3d113a: 4618         	mov	r0, r3
  3d113c: f70b fdce    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0xf4464
  3d1140: 4603         	mov	r3, r0
  3d1142: 9801         	ldr	r0, [sp, #0x4]
  3d1144: 4619         	mov	r1, r3
  3d1146: f1c2 f8e7    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x1c21ce
  3d114a: 9801         	ldr	r0, [sp, #0x4]
  3d114c: b003         	add	sp, #0xc
  3d114e: f85d fb04    	ldr	pc, [sp], #4

// ==== SMAW::isRight
//      file offset 0x3d1154 (= ELF address; Ghidra 0x3e1154), 60 bytes, Thumb-2
  3d1154: b500         	push	{lr}
  3d1156: b083         	sub	sp, #0xc
  3d1158: 9001         	str	r0, [sp, #0x4]
  3d115a: 9b01         	ldr	r3, [sp, #0x4]
  3d115c: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3d1160: 681b         	ldr	r3, [r3]
  3d1162: 3334         	adds	r3, #0x34
  3d1164: 681b         	ldr	r3, [r3]
  3d1166: 9a01         	ldr	r2, [sp, #0x4]
  3d1168: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3d116c: 4610         	mov	r0, r2
  3d116e: 4798         	blx	r3
  3d1170: ee07 0a10    	vmov	s14, r0
  3d1174: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3d1178: eeb4 7ae7    	vcmpe.f32	s14, s15
  3d117c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3d1180: bfd4         	ite	le
  3d1182: 2300         	movle	r3, #0x0
  3d1184: 2301         	movgt	r3, #0x1
  3d1186: b2db         	uxtb	r3, r3
  3d1188: 4618         	mov	r0, r3
  3d118a: b003         	add	sp, #0xc
  3d118c: f85d fb04    	ldr	pc, [sp], #4

// ==== SMAW::setRight
//      file offset 0x3d1190 (= ELF address; Ghidra 0x3e1190), 64 bytes, Thumb-2
  3d1190: b500         	push	{lr}
  3d1192: b083         	sub	sp, #0xc
  3d1194: 9001         	str	r0, [sp, #0x4]
  3d1196: 460b         	mov	r3, r1
  3d1198: f88d 3003    	strb.w	r3, [sp, #0x3]
  3d119c: 9b01         	ldr	r3, [sp, #0x4]
  3d119e: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3d11a2: 681b         	ldr	r3, [r3]
  3d11a4: 3330         	adds	r3, #0x30
  3d11a6: 681a         	ldr	r2, [r3]
  3d11a8: 9b01         	ldr	r3, [sp, #0x4]
  3d11aa: f8d3 11ec    	ldr.w	r1, [r3, #0x1ec]
  3d11ae: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  3d11b2: 2b00         	cmp	r3, #0x0
  3d11b4: d002         	beq	0x3d11bc <SMAW::setRight(bool)+0x2c> @ imm = #0x4
  3d11b6: f04f 537e    	mov.w	r3, #0x3f800000
  3d11ba: e003         	b	0x3d11c4 <SMAW::setRight(bool)+0x34> @ imm = #0x6
  3d11bc: f04f 0300    	mov.w	r3, #0x0
  3d11c0: f6cb 7380    	movt	r3, #0xbf80
  3d11c4: 4608         	mov	r0, r1
  3d11c6: 4619         	mov	r1, r3
  3d11c8: 4790         	blx	r2
  3d11ca: b003         	add	sp, #0xc
  3d11cc: f85d fb04    	ldr	pc, [sp], #4

// ==== SMAW::doFire
//      file offset 0x3d11d0 (= ELF address; Ghidra 0x3e11d0), 184 bytes, Thumb-2
  3d11d0: b082         	sub	sp, #0x8
  3d11d2: e92d 47f0    	push.w	{r4, r5, r6, r7, r8, r9, r10, lr}
  3d11d6: b08a         	sub	sp, #0x28
  3d11d8: 9007         	str	r0, [sp, #0x1c]
  3d11da: 9106         	str	r1, [sp, #0x18]
  3d11dc: a912         	add	r1, sp, #0x48
  3d11de: e881 000c    	stm.w	r1, {r2, r3}
  3d11e2: 9f07         	ldr	r7, [sp, #0x1c]
  3d11e4: 9806         	ldr	r0, [sp, #0x18]
  3d11e6: f70b fd4d    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xf4566
  3d11ea: 4606         	mov	r6, r0
  3d11ec: ed9d 7b16    	vldr	d7, [sp, #88]
  3d11f0: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3d11f4: ee17 0a90    	vmov	r0, s15
  3d11f8: f70b fd44    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xf4578
  3d11fc: 4605         	mov	r5, r0
  3d11fe: ed9d 7b18    	vldr	d7, [sp, #96]
  3d1202: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3d1206: ee17 0a90    	vmov	r0, s15
  3d120a: f70b fd3b    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xf458a
  3d120e: 4604         	mov	r4, r0
  3d1210: ed9d 7b12    	vldr	d7, [sp, #72]
  3d1214: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3d1218: ee17 0a90    	vmov	r0, s15
  3d121c: f70b fd32    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xf459c
  3d1220: 4682         	mov	r10, r0
  3d1222: ed9d 7b14    	vldr	d7, [sp, #80]
  3d1226: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3d122a: ee17 0a90    	vmov	r0, s15
  3d122e: f70b fd29    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xf45ae
  3d1232: 4681         	mov	r9, r0
  3d1234: 981a         	ldr	r0, [sp, #0x68]
  3d1236: f713 fd67    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xec532
  3d123a: 4680         	mov	r8, r0
  3d123c: 981b         	ldr	r0, [sp, #0x6c]
  3d123e: f1c8 fbfd    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1c87fa
  3d1242: 4603         	mov	r3, r0
  3d1244: f8cd a000    	str.w	r10, [sp]
  3d1248: f8cd 9004    	str.w	r9, [sp, #0x4]
  3d124c: f8cd 8008    	str.w	r8, [sp, #0x8]
  3d1250: 9303         	str	r3, [sp, #0xc]
  3d1252: 2300         	movs	r3, #0x0
  3d1254: 9304         	str	r3, [sp, #0x10]
  3d1256: 4638         	mov	r0, r7
  3d1258: 4631         	mov	r1, r6
  3d125a: 462a         	mov	r2, r5
  3d125c: 4623         	mov	r3, r4
  3d125e: f1c8 fdd7    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x1c8bae
  3d1262: 4603         	mov	r3, r0
  3d1264: 9309         	str	r3, [sp, #0x24]
  3d1266: f20f fa23    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x20f446
  3d126a: 4603         	mov	r3, r0
  3d126c: 4618         	mov	r0, r3
  3d126e: 4b05         	ldr	r3, [pc, #0x14]         @ 0x3d1284 <SMAW::doFire(float, cpVect, cpVect, int, std::string)+0xb4>
  3d1270: 447b         	add	r3, pc
  3d1272: 4619         	mov	r1, r3
  3d1274: 9a09         	ldr	r2, [sp, #0x24]
  3d1276: f20f fc59    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x20f8b2
  3d127a: b00a         	add	sp, #0x28
  3d127c: e8bd 47f0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, lr}
  3d1280: b002         	add	sp, #0x8
  3d1282: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x3d1283); words below are literal-pool data ---
  3d1284: 5d70         	ldrb	r0, [r6, r5]
  3d1286: 0040         	lsls	r0, r0, #0x1

// ==== SMAW::doRemoteFire
//      file offset 0x3d1288 (= ELF address; Ghidra 0x3e1288), 20 bytes, Thumb-2
  3d1288: b082         	sub	sp, #0x8
  3d128a: b082         	sub	sp, #0x8
  3d128c: 9001         	str	r0, [sp, #0x4]
  3d128e: 9100         	str	r1, [sp]
  3d1290: a902         	add	r1, sp, #0x8
  3d1292: e881 000c    	stm.w	r1, {r2, r3}
  3d1296: b002         	add	sp, #0x8
  3d1298: b002         	add	sp, #0x8
  3d129a: 4770         	bx	lr

// ==== SMAW::create
//      file offset 0x41732c (= ELF address; Ghidra 0x42732c), 112 bytes, Thumb-2
  41732c: b510         	push	{r4, lr}
  41732e: b082         	sub	sp, #0x8
  417330: f44f 70fc    	mov.w	r0, #0x1f8
  417334: f370 fb16    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x37062c
  417338: 4603         	mov	r3, r0
  41733a: 461c         	mov	r4, r3
  41733c: 4620         	mov	r0, r4
  41733e: f7b9 f8b9    	bl	0x3d04b4 <SMAW::SMAW()> @ imm = #-0x46e8e
  417342: 9401         	str	r4, [sp, #0x4]
  417344: 9b01         	ldr	r3, [sp, #0x4]
  417346: 2b00         	cmp	r3, #0x0
  417348: d00a         	beq	0x417360 <SMAW::create()+0x34> @ imm = #0x14
  41734a: 9b01         	ldr	r3, [sp, #0x4]
  41734c: 681b         	ldr	r3, [r3]
  41734e: 3318         	adds	r3, #0x18
  417350: 681b         	ldr	r3, [r3]
  417352: 9801         	ldr	r0, [sp, #0x4]
  417354: 4798         	blx	r3
  417356: 4603         	mov	r3, r0
  417358: 2b00         	cmp	r3, #0x0
  41735a: d001         	beq	0x417360 <SMAW::create()+0x34> @ imm = #0x2
  41735c: 2301         	movs	r3, #0x1
  41735e: e000         	b	0x417362 <SMAW::create()+0x36> @ imm = #0x0
  417360: 2300         	movs	r3, #0x0
  417362: 2b00         	cmp	r3, #0x0
  417364: d005         	beq	0x417372 <SMAW::create()+0x46> @ imm = #0xa
  417366: 9b01         	ldr	r3, [sp, #0x4]
  417368: 4618         	mov	r0, r3
  41736a: f180 fdc7    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x180b8e
  41736e: 9b01         	ldr	r3, [sp, #0x4]
  417370: e011         	b	0x417396 <SMAW::create()+0x6a> @ imm = #0x22
  417372: 9b01         	ldr	r3, [sp, #0x4]
  417374: 2b00         	cmp	r3, #0x0
  417376: d005         	beq	0x417384 <SMAW::create()+0x58> @ imm = #0xa
  417378: 9b01         	ldr	r3, [sp, #0x4]
  41737a: 681b         	ldr	r3, [r3]
  41737c: 3308         	adds	r3, #0x8
  41737e: 681b         	ldr	r3, [r3]
  417380: 9801         	ldr	r0, [sp, #0x4]
  417382: 4798         	blx	r3
  417384: 2300         	movs	r3, #0x0
  417386: 9301         	str	r3, [sp, #0x4]
  417388: 2300         	movs	r3, #0x0
  41738a: e004         	b	0x417396 <SMAW::create()+0x6a> @ imm = #0x8
  41738c: 4620         	mov	r0, r4
  41738e: f370 fe89    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x370d12
  417392: f370 fe8b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x370d16
  417396: 4618         	mov	r0, r3
  417398: b002         	add	sp, #0x8
  41739a: bd10         	pop	{r4, pc}
