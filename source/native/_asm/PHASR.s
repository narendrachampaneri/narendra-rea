// PHASR: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 24 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../PHASR.cpp

// ==== PHASR::PHASR
//      file offset 0x38a49c (= ELF address; Ghidra 0x39a49c), 44 bytes, Thumb-2
  38a49c: b510         	push	{r4, lr}
  38a49e: b082         	sub	sp, #0x8
  38a4a0: 9001         	str	r0, [sp, #0x4]
  38a4a2: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x38a4c0 <PHASR::PHASR()+0x24>
  38a4a4: 447c         	add	r4, pc
  38a4a6: 9b01         	ldr	r3, [sp, #0x4]
  38a4a8: 4618         	mov	r0, r3
  38a4aa: f08a fd7d    	bl	0x414fa8 <Weapon::Weapon()> @ imm = #0x8aafa
  38a4ae: 9b01         	ldr	r3, [sp, #0x4]
  38a4b0: 4a04         	ldr	r2, [pc, #0x10]         @ 0x38a4c4 <PHASR::PHASR()+0x28>
  38a4b2: 58a2         	ldr	r2, [r4, r2]
  38a4b4: 3208         	adds	r2, #0x8
  38a4b6: 601a         	str	r2, [r3]
  38a4b8: 9b01         	ldr	r3, [sp, #0x4]
  38a4ba: 4618         	mov	r0, r3
  38a4bc: b002         	add	sp, #0x8
  38a4be: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x38a4bf); words below are literal-pool data ---
  38a4c0: 8564         	strh	r4, [r4, #0x2a]
  38a4c2: 005a         	lsls	r2, r3, #0x1
  38a4c4: dcf8         	bgt	0x38a4b8 <PHASR::PHASR()+0x1c> @ imm = #-0x10
  38a4c6: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== PHASR::init
//      file offset 0x38a4c8 (= ELF address; Ghidra 0x39a4c8), 1208 bytes, Thumb-2
  38a4c8: b530         	push	{r4, r5, lr}
  38a4ca: b08b         	sub	sp, #0x2c
  38a4cc: 9005         	str	r0, [sp, #0x14]
  38a4ce: 9b05         	ldr	r3, [sp, #0x14]
  38a4d0: 4618         	mov	r0, r3
  38a4d2: f08a fd8d    	bl	0x414ff0 <Weapon::init()> @ imm = #0x8ab1a
  38a4d6: 4603         	mov	r3, r0
  38a4d8: f88d 301f    	strb.w	r3, [sp, #0x1f]
  38a4dc: f89d 301f    	ldrb.w	r3, [sp, #0x1f]
  38a4e0: f083 0301    	eor	r3, r3, #0x1
  38a4e4: b2db         	uxtb	r3, r3
  38a4e6: 2b00         	cmp	r3, #0x0
  38a4e8: d001         	beq	0x38a4ee <PHASR::init()+0x26> @ imm = #0x2
  38a4ea: 2300         	movs	r3, #0x0
  38a4ec: e231         	b	0x38a952 <PHASR::init()+0x48a> @ imm = #0x462
  38a4ee: f8df 3470    	ldr.w	r3, [pc, #0x470]        @ 0x38a960 <PHASR::init()+0x498>
  38a4f2: 447b         	add	r3, pc
  38a4f4: 4618         	mov	r0, r3
  38a4f6: f24d ff05    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x24de0a
  38a4fa: 4602         	mov	r2, r0
  38a4fc: 9b05         	ldr	r3, [sp, #0x14]
  38a4fe: f8c3 21ec    	str.w	r2, [r3, #0x1ec]
  38a502: 9b05         	ldr	r3, [sp, #0x14]
  38a504: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  38a508: 4618         	mov	r0, r3
  38a50a: f20d fced    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x20d9da
  38a50e: f8df 3454    	ldr.w	r3, [pc, #0x454]        @ 0x38a964 <PHASR::init()+0x49c>
  38a512: 447b         	add	r3, pc
  38a514: 4618         	mov	r0, r3
  38a516: f24d fef5    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x24ddea
  38a51a: 4602         	mov	r2, r0
  38a51c: 9b05         	ldr	r3, [sp, #0x14]
  38a51e: f8c3 21f0    	str.w	r2, [r3, #0x1f0]
  38a522: 9b05         	ldr	r3, [sp, #0x14]
  38a524: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  38a528: 4618         	mov	r0, r3
  38a52a: f20d fcdd    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x20d9ba
  38a52e: 9b05         	ldr	r3, [sp, #0x14]
  38a530: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  38a534: 681b         	ldr	r3, [r3]
  38a536: 337c         	adds	r3, #0x7c
  38a538: 681c         	ldr	r4, [r3]
  38a53a: 9b05         	ldr	r3, [sp, #0x14]
  38a53c: f8d3 51f0    	ldr.w	r5, [r3, #0x1f0]
  38a540: ab08         	add	r3, sp, #0x20
  38a542: 4618         	mov	r0, r3
  38a544: f04f 0100    	mov.w	r1, #0x0
  38a548: f6cb 71c0    	movt	r1, #0xbfc0
  38a54c: f64c 42cd    	movw	r2, #0xcccd
  38a550: f6c3 624c    	movt	r2, #0x3e4c
  38a554: f208 fbcc    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x208798
  38a558: ab08         	add	r3, sp, #0x20
  38a55a: 4628         	mov	r0, r5
  38a55c: 4619         	mov	r1, r3
  38a55e: 47a0         	blx	r4
  38a560: 9b05         	ldr	r3, [sp, #0x14]
  38a562: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  38a566: 681b         	ldr	r3, [r3]
  38a568: 3330         	adds	r3, #0x30
  38a56a: 681b         	ldr	r3, [r3]
  38a56c: 9a05         	ldr	r2, [sp, #0x14]
  38a56e: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  38a572: 4610         	mov	r0, r2
  38a574: f04f 4180    	mov.w	r1, #0x40000000
  38a578: 4798         	blx	r3
  38a57a: 9b05         	ldr	r3, [sp, #0x14]
  38a57c: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  38a580: 681b         	ldr	r3, [r3]
  38a582: 3338         	adds	r3, #0x38
  38a584: 681b         	ldr	r3, [r3]
  38a586: 9a05         	ldr	r2, [sp, #0x14]
  38a588: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  38a58c: 4610         	mov	r0, r2
  38a58e: f04f 4180    	mov.w	r1, #0x40000000
  38a592: 4798         	blx	r3
  38a594: 9b05         	ldr	r3, [sp, #0x14]
  38a596: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  38a59a: 681b         	ldr	r3, [r3]
  38a59c: 3390         	adds	r3, #0x90
  38a59e: 681b         	ldr	r3, [r3]
  38a5a0: 9a05         	ldr	r2, [sp, #0x14]
  38a5a2: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  38a5a6: 4610         	mov	r0, r2
  38a5a8: 2100         	movs	r1, #0x0
  38a5aa: 4798         	blx	r3
  38a5ac: 9b05         	ldr	r3, [sp, #0x14]
  38a5ae: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  38a5b2: 681b         	ldr	r3, [r3]
  38a5b4: f503 73de    	add.w	r3, r3, #0x1bc
  38a5b8: 681c         	ldr	r4, [r3]
  38a5ba: 9b05         	ldr	r3, [sp, #0x14]
  38a5bc: f8d3 51f0    	ldr.w	r5, [r3, #0x1f0]
  38a5c0: 20ff         	movs	r0, #0xff
  38a5c2: 2132         	movs	r1, #0x32
  38a5c4: 2200         	movs	r2, #0x0
  38a5c6: f7fe ff53    	bl	0x389470 <NewsLayer::onBack(cocos2d::CCObject*)+0x170> @ imm = #-0x115a
  38a5ca: 4603         	mov	r3, r0
  38a5cc: 461a         	mov	r2, r3
  38a5ce: f88d 2020    	strb.w	r2, [sp, #0x20]
  38a5d2: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  38a5d6: f88d 2021    	strb.w	r2, [sp, #0x21]
  38a5da: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  38a5de: f88d 3022    	strb.w	r3, [sp, #0x22]
  38a5e2: ab08         	add	r3, sp, #0x20
  38a5e4: 4628         	mov	r0, r5
  38a5e6: 4619         	mov	r1, r3
  38a5e8: 47a0         	blx	r4
  38a5ea: 4bdf         	ldr	r3, [pc, #0x37c]        @ 0x38a968 <PHASR::init()+0x4a0>
  38a5ec: 447b         	add	r3, pc
  38a5ee: 4618         	mov	r0, r3
  38a5f0: f24d fe88    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x24dd10
  38a5f4: 4602         	mov	r2, r0
  38a5f6: 9b05         	ldr	r3, [sp, #0x14]
  38a5f8: f8c3 21f4    	str.w	r2, [r3, #0x1f4]
  38a5fc: 9b05         	ldr	r3, [sp, #0x14]
  38a5fe: f8d3 31f4    	ldr.w	r3, [r3, #0x1f4]
  38a602: 4618         	mov	r0, r3
  38a604: f20d fc70    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x20d8e0
  38a608: 9b05         	ldr	r3, [sp, #0x14]
  38a60a: f8d3 31f4    	ldr.w	r3, [r3, #0x1f4]
  38a60e: 681b         	ldr	r3, [r3]
  38a610: 3390         	adds	r3, #0x90
  38a612: 681b         	ldr	r3, [r3]
  38a614: 9a05         	ldr	r2, [sp, #0x14]
  38a616: f8d2 21f4    	ldr.w	r2, [r2, #0x1f4]
  38a61a: 4610         	mov	r0, r2
  38a61c: 2100         	movs	r1, #0x0
  38a61e: 4798         	blx	r3
  38a620: 9b05         	ldr	r3, [sp, #0x14]
  38a622: f8d3 31f4    	ldr.w	r3, [r3, #0x1f4]
  38a626: 681b         	ldr	r3, [r3]
  38a628: 3338         	adds	r3, #0x38
  38a62a: 681b         	ldr	r3, [r3]
  38a62c: 9a05         	ldr	r2, [sp, #0x14]
  38a62e: f8d2 21f4    	ldr.w	r2, [r2, #0x1f4]
  38a632: 4610         	mov	r0, r2
  38a634: f04f 517f    	mov.w	r1, #0x3fc00000
  38a638: 4798         	blx	r3
  38a63a: 9b05         	ldr	r3, [sp, #0x14]
  38a63c: f8d3 31f4    	ldr.w	r3, [r3, #0x1f4]
  38a640: 681b         	ldr	r3, [r3]
  38a642: 337c         	adds	r3, #0x7c
  38a644: 681c         	ldr	r4, [r3]
  38a646: 9b05         	ldr	r3, [sp, #0x14]
  38a648: f8d3 51f4    	ldr.w	r5, [r3, #0x1f4]
  38a64c: ab08         	add	r3, sp, #0x20
  38a64e: 4618         	mov	r0, r3
  38a650: f04f 0100    	mov.w	r1, #0x0
  38a654: f04f 527c    	mov.w	r2, #0x3f000000
  38a658: f208 fb4a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x208694
  38a65c: ab08         	add	r3, sp, #0x20
  38a65e: 4628         	mov	r0, r5
  38a660: 4619         	mov	r1, r3
  38a662: 47a0         	blx	r4
  38a664: 9b05         	ldr	r3, [sp, #0x14]
  38a666: f8d3 31f4    	ldr.w	r3, [r3, #0x1f4]
  38a66a: 681b         	ldr	r3, [r3]
  38a66c: f503 73de    	add.w	r3, r3, #0x1bc
  38a670: 681c         	ldr	r4, [r3]
  38a672: 9b05         	ldr	r3, [sp, #0x14]
  38a674: f8d3 51f4    	ldr.w	r5, [r3, #0x1f4]
  38a678: 20ff         	movs	r0, #0xff
  38a67a: 2100         	movs	r1, #0x0
  38a67c: 2200         	movs	r2, #0x0
  38a67e: f7fe fef7    	bl	0x389470 <NewsLayer::onBack(cocos2d::CCObject*)+0x170> @ imm = #-0x1212
  38a682: 4603         	mov	r3, r0
  38a684: 461a         	mov	r2, r3
  38a686: f88d 2020    	strb.w	r2, [sp, #0x20]
  38a68a: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  38a68e: f88d 2021    	strb.w	r2, [sp, #0x21]
  38a692: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  38a696: f88d 3022    	strb.w	r3, [sp, #0x22]
  38a69a: ab08         	add	r3, sp, #0x20
  38a69c: 4628         	mov	r0, r5
  38a69e: 4619         	mov	r1, r3
  38a6a0: 47a0         	blx	r4
  38a6a2: 9b05         	ldr	r3, [sp, #0x14]
  38a6a4: 681b         	ldr	r3, [r3]
  38a6a6: f503 73f0    	add.w	r3, r3, #0x1e0
  38a6aa: 681b         	ldr	r3, [r3]
  38a6ac: 9805         	ldr	r0, [sp, #0x14]
  38a6ae: 4798         	blx	r3
  38a6b0: 9b05         	ldr	r3, [sp, #0x14]
  38a6b2: 681b         	ldr	r3, [r3]
  38a6b4: 33cc         	adds	r3, #0xcc
  38a6b6: 681b         	ldr	r3, [r3]
  38a6b8: 9905         	ldr	r1, [sp, #0x14]
  38a6ba: 9a05         	ldr	r2, [sp, #0x14]
  38a6bc: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  38a6c0: 4608         	mov	r0, r1
  38a6c2: 4611         	mov	r1, r2
  38a6c4: 2200         	movs	r2, #0x0
  38a6c6: 4798         	blx	r3
  38a6c8: 9b05         	ldr	r3, [sp, #0x14]
  38a6ca: 681b         	ldr	r3, [r3]
  38a6cc: 33cc         	adds	r3, #0xcc
  38a6ce: 681b         	ldr	r3, [r3]
  38a6d0: 9905         	ldr	r1, [sp, #0x14]
  38a6d2: 9a05         	ldr	r2, [sp, #0x14]
  38a6d4: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  38a6d8: 4608         	mov	r0, r1
  38a6da: 4611         	mov	r1, r2
  38a6dc: 2200         	movs	r2, #0x0
  38a6de: 4798         	blx	r3
  38a6e0: 9b05         	ldr	r3, [sp, #0x14]
  38a6e2: f8d3 4150    	ldr.w	r4, [r3, #0x150]
  38a6e6: f04f 507e    	mov.w	r0, #0x3f800000
  38a6ea: f752 facb    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xada6a
  38a6ee: 4603         	mov	r3, r0
  38a6f0: 4620         	mov	r0, r4
  38a6f2: 4619         	mov	r1, r3
  38a6f4: f20f fdba    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x20fb74
  38a6f8: 9b05         	ldr	r3, [sp, #0x14]
  38a6fa: f8d3 414c    	ldr.w	r4, [r3, #0x14c]
  38a6fe: ab07         	add	r3, sp, #0x1c
  38a700: 4618         	mov	r0, r3
  38a702: f3ff fe77    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ffcee
  38a706: aa08         	add	r2, sp, #0x20
  38a708: ab07         	add	r3, sp, #0x1c
  38a70a: 4610         	mov	r0, r2
  38a70c: 4a97         	ldr	r2, [pc, #0x25c]        @ 0x38a96c <PHASR::init()+0x4a4>
  38a70e: 447a         	add	r2, pc
  38a710: 4611         	mov	r1, r2
  38a712: 461a         	mov	r2, r3
  38a714: f02c f1a4    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x42c348
  38a718: ab08         	add	r3, sp, #0x20
  38a71a: 4618         	mov	r0, r3
  38a71c: f20f f98e    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x20f31c
  38a720: 4603         	mov	r3, r0
  38a722: 4620         	mov	r0, r4
  38a724: 4619         	mov	r1, r3
  38a726: f20f fda1    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x20fb42
  38a72a: ab08         	add	r3, sp, #0x20
  38a72c: 4618         	mov	r0, r3
  38a72e: f02b f0f1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x42b1e2
  38a732: ab07         	add	r3, sp, #0x1c
  38a734: 4618         	mov	r0, r3
  38a736: f3ff fe61    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ffcc2
  38a73a: 9b05         	ldr	r3, [sp, #0x14]
  38a73c: f8d3 4150    	ldr.w	r4, [r3, #0x150]
  38a740: f64c 40cd    	movw	r0, #0xcccd
  38a744: f6c3 704c    	movt	r0, #0x3f4c
  38a748: f752 fa9c    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xadac8
  38a74c: 4603         	mov	r3, r0
  38a74e: 4620         	mov	r0, r4
  38a750: 4619         	mov	r1, r3
  38a752: f20f fd8b    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x20fb16
  38a756: 9b05         	ldr	r3, [sp, #0x14]
  38a758: f8d3 414c    	ldr.w	r4, [r3, #0x14c]
  38a75c: ab07         	add	r3, sp, #0x1c
  38a75e: 4618         	mov	r0, r3
  38a760: f3ff fe48    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ffc90
  38a764: aa08         	add	r2, sp, #0x20
  38a766: ab07         	add	r3, sp, #0x1c
  38a768: 4610         	mov	r0, r2
  38a76a: 4a81         	ldr	r2, [pc, #0x204]        @ 0x38a970 <PHASR::init()+0x4a8>
  38a76c: 447a         	add	r2, pc
  38a76e: 4611         	mov	r1, r2
  38a770: 461a         	mov	r2, r3
  38a772: f02c f175    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x42c2ea
  38a776: ab08         	add	r3, sp, #0x20
  38a778: 4618         	mov	r0, r3
  38a77a: f20f f95f    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x20f2be
  38a77e: 4603         	mov	r3, r0
  38a780: 4620         	mov	r0, r4
  38a782: 4619         	mov	r1, r3
  38a784: f20f fd72    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x20fae4
  38a788: ab08         	add	r3, sp, #0x20
  38a78a: 4618         	mov	r0, r3
  38a78c: f02b f0c2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x42b184
  38a790: ab07         	add	r3, sp, #0x1c
  38a792: 4618         	mov	r0, r3
  38a794: f3ff fe32    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ffc64
  38a798: 9b05         	ldr	r3, [sp, #0x14]
  38a79a: f8d3 4150    	ldr.w	r4, [r3, #0x150]
  38a79e: f649 109a    	movw	r0, #0x999a
  38a7a2: f6c3 7019    	movt	r0, #0x3f19
  38a7a6: f752 fa6d    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xadb26
  38a7aa: 4603         	mov	r3, r0
  38a7ac: 4620         	mov	r0, r4
  38a7ae: 4619         	mov	r1, r3
  38a7b0: f20f fd5c    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x20fab8
  38a7b4: 9b05         	ldr	r3, [sp, #0x14]
  38a7b6: f8d3 414c    	ldr.w	r4, [r3, #0x14c]
  38a7ba: ab07         	add	r3, sp, #0x1c
  38a7bc: 4618         	mov	r0, r3
  38a7be: f3ff fe19    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ffc32
  38a7c2: aa08         	add	r2, sp, #0x20
  38a7c4: ab07         	add	r3, sp, #0x1c
  38a7c6: 4610         	mov	r0, r2
  38a7c8: 4a6a         	ldr	r2, [pc, #0x1a8]        @ 0x38a974 <PHASR::init()+0x4ac>
  38a7ca: 447a         	add	r2, pc
  38a7cc: 4611         	mov	r1, r2
  38a7ce: 461a         	mov	r2, r3
  38a7d0: f02c f146    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x42c28c
  38a7d4: ab08         	add	r3, sp, #0x20
  38a7d6: 4618         	mov	r0, r3
  38a7d8: f20f f930    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x20f260
  38a7dc: 4603         	mov	r3, r0
  38a7de: 4620         	mov	r0, r4
  38a7e0: 4619         	mov	r1, r3
  38a7e2: f20f fd43    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x20fa86
  38a7e6: ab08         	add	r3, sp, #0x20
  38a7e8: 4618         	mov	r0, r3
  38a7ea: f02b f093    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x42b126
  38a7ee: ab07         	add	r3, sp, #0x1c
  38a7f0: 4618         	mov	r0, r3
  38a7f2: f3ff fe03    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ffc06
  38a7f6: 9b05         	ldr	r3, [sp, #0x14]
  38a7f8: 2200         	movs	r2, #0x0
  38a7fa: f8c3 2144    	str.w	r2, [r3, #0x144]
  38a7fe: 9b05         	ldr	r3, [sp, #0x14]
  38a800: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  38a804: 4618         	mov	r0, r3
  38a806: 2100         	movs	r1, #0x0
  38a808: f20f fc8a    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x20f914
  38a80c: 4603         	mov	r3, r0
  38a80e: 4618         	mov	r0, r3
  38a810: f752 fa30    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0xadba0
  38a814: 4602         	mov	r2, r0
  38a816: 9b05         	ldr	r3, [sp, #0x14]
  38a818: f8c3 2148    	str.w	r2, [r3, #0x148]
  38a81c: 9b05         	ldr	r3, [sp, #0x14]
  38a81e: f649 129a    	movw	r2, #0x999a
  38a822: f6c3 6219    	movt	r2, #0x3e19
  38a826: f8c3 215c    	str.w	r2, [r3, #0x15c]
  38a82a: 9b05         	ldr	r3, [sp, #0x14]
  38a82c: f04f 0200    	mov.w	r2, #0x0
  38a830: f8c3 2160    	str.w	r2, [r3, #0x160]
  38a834: 9b05         	ldr	r3, [sp, #0x14]
  38a836: f04f 0200    	mov.w	r2, #0x0
  38a83a: f8c3 2164    	str.w	r2, [r3, #0x164]
  38a83e: 9b05         	ldr	r3, [sp, #0x14]
  38a840: f04f 0200    	mov.w	r2, #0x0
  38a844: f8c3 216c    	str.w	r2, [r3, #0x16c]
  38a848: 9b05         	ldr	r3, [sp, #0x14]
  38a84a: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  38a84e: 681b         	ldr	r3, [r3]
  38a850: 3398         	adds	r3, #0x98
  38a852: 681b         	ldr	r3, [r3]
  38a854: 9a05         	ldr	r2, [sp, #0x14]
  38a856: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  38a85a: 4610         	mov	r0, r2
  38a85c: f04f 0100    	mov.w	r1, #0x0
  38a860: 4798         	blx	r3
  38a862: 9b05         	ldr	r3, [sp, #0x14]
  38a864: 2296         	movs	r2, #0x96
  38a866: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  38a86a: 9b05         	ldr	r3, [sp, #0x14]
  38a86c: 2232         	movs	r2, #0x32
  38a86e: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  38a872: 9b05         	ldr	r3, [sp, #0x14]
  38a874: 227d         	movs	r2, #0x7d
  38a876: f8c3 218c    	str.w	r2, [r3, #0x18c]
  38a87a: 9b05         	ldr	r3, [sp, #0x14]
  38a87c: 2211         	movs	r2, #0x11
  38a87e: f8c3 2188    	str.w	r2, [r3, #0x188]
  38a882: 9b05         	ldr	r3, [sp, #0x14]
  38a884: 2228         	movs	r2, #0x28
  38a886: f8c3 219c    	str.w	r2, [r3, #0x19c]
  38a88a: 9b05         	ldr	r3, [sp, #0x14]
  38a88c: 2228         	movs	r2, #0x28
  38a88e: f8c3 21a0    	str.w	r2, [r3, #0x1a0]
  38a892: 4b39         	ldr	r3, [pc, #0xe4]         @ 0x38a978 <PHASR::init()+0x4b0>
  38a894: 447b         	add	r3, pc
  38a896: 681a         	ldr	r2, [r3]
  38a898: 9b05         	ldr	r3, [sp, #0x14]
  38a89a: f8c3 21a4    	str.w	r2, [r3, #0x1a4]
  38a89e: 9b05         	ldr	r3, [sp, #0x14]
  38a8a0: f242 7210    	movw	r2, #0x2710
  38a8a4: f8c3 21bc    	str.w	r2, [r3, #0x1bc]
  38a8a8: 9b05         	ldr	r3, [sp, #0x14]
  38a8aa: f24e 1248    	movw	r2, #0xe148
  38a8ae: f6c3 727a    	movt	r2, #0x3f7a
  38a8b2: f8c3 21cc    	str.w	r2, [r3, #0x1cc]
  38a8b6: 9b05         	ldr	r3, [sp, #0x14]
  38a8b8: f04f 0200    	mov.w	r2, #0x0
  38a8bc: f8c3 21f8    	str.w	r2, [r3, #0x1f8]
  38a8c0: 9b05         	ldr	r3, [sp, #0x14]
  38a8c2: f04f 0200    	mov.w	r2, #0x0
  38a8c6: f8c3 21fc    	str.w	r2, [r3, #0x1fc]
  38a8ca: 9b05         	ldr	r3, [sp, #0x14]
  38a8cc: 2201         	movs	r2, #0x1
  38a8ce: f883 2200    	strb.w	r2, [r3, #0x200]
  38a8d2: 9b05         	ldr	r3, [sp, #0x14]
  38a8d4: 2232         	movs	r2, #0x32
  38a8d6: f8c3 2170    	str.w	r2, [r3, #0x170]
  38a8da: 9b05         	ldr	r3, [sp, #0x14]
  38a8dc: 2296         	movs	r2, #0x96
  38a8de: f8c3 2174    	str.w	r2, [r3, #0x174]
  38a8e2: 9c05         	ldr	r4, [sp, #0x14]
  38a8e4: 466b         	mov	r3, sp
  38a8e6: 4618         	mov	r0, r3
  38a8e8: ed9f 0b1b    	vldr	d0, [pc, #108]          @ 0x38a958 <PHASR::init()+0x490>
  38a8ec: eeb2 1b0e    	vmov.f64	d1, #1.500000e+01
  38a8f0: f7fe fdfc    	bl	0x3894ec <NewsLayer::onBack(cocos2d::CCObject*)+0x1ec> @ imm = #-0x1408
  38a8f4: f504 74ec    	add.w	r4, r4, #0x1d8
  38a8f8: 466b         	mov	r3, sp
  38a8fa: cb0f         	ldm	r3, {r0, r1, r2, r3}
  38a8fc: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  38a900: 4b1e         	ldr	r3, [pc, #0x78]         @ 0x38a97c <PHASR::init()+0x4b4>
  38a902: 447b         	add	r3, pc
  38a904: 681a         	ldr	r2, [r3]
  38a906: 9b05         	ldr	r3, [sp, #0x14]
  38a908: f8c3 2198    	str.w	r2, [r3, #0x198]
  38a90c: 2301         	movs	r3, #0x1
  38a90e: e020         	b	0x38a952 <PHASR::init()+0x48a> @ imm = #0x40
  38a910: ab08         	add	r3, sp, #0x20
  38a912: 4618         	mov	r0, r3
  38a914: f02a f7fe    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x42affc
  38a918: e7ff         	b	0x38a91a <PHASR::init()+0x452> @ imm = #-0x2
  38a91a: ab07         	add	r3, sp, #0x1c
  38a91c: 4618         	mov	r0, r3
  38a91e: f3ff fd6d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ffada
  38a922: f3fd fbc3    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3fd786
  38a926: ab08         	add	r3, sp, #0x20
  38a928: 4618         	mov	r0, r3
  38a92a: f02a f7f3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x42afe6
  38a92e: e7ff         	b	0x38a930 <PHASR::init()+0x468> @ imm = #-0x2
  38a930: ab07         	add	r3, sp, #0x1c
  38a932: 4618         	mov	r0, r3
  38a934: f3ff fd62    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ffac4
  38a938: f3fd fbb8    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3fd770
  38a93c: ab08         	add	r3, sp, #0x20
  38a93e: 4618         	mov	r0, r3
  38a940: f02a f7e8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x42afd0
  38a944: e7ff         	b	0x38a946 <PHASR::init()+0x47e> @ imm = #-0x2
  38a946: ab07         	add	r3, sp, #0x1c
  38a948: 4618         	mov	r0, r3
  38a94a: f3ff fd57    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ffaae
  38a94e: f3fd fbad    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3fd75a
  38a952: 4618         	mov	r0, r3
  38a954: b00b         	add	sp, #0x2c
  38a956: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x38a957); words below are literal-pool data ---
  38a958: 0000         	movs	r0, r0
  38a95a: 0000         	movs	r0, r0
  38a95c: 0000         	movs	r0, r0
  38a95e: 405e         	eors	r6, r3
  38a960: 6842         	ldr	r2, [r0, #0x4]
  38a962: 0044         	lsls	r4, r0, #0x1
  38a964: 682e         	ldr	r6, [r5]
  38a966: 0044         	lsls	r4, r0, #0x1
  38a968: 6760         	str	r0, [r4, #0x74]
  38a96a: 0044         	lsls	r4, r0, #0x1
  38a96c: 6646         	str	r6, [r0, #0x64]
  38a96e: 0044         	lsls	r4, r0, #0x1
  38a970: 65ec         	str	r4, [r5, #0x5c]
  38a972: 0044         	lsls	r4, r0, #0x1
  38a974: 6592         	str	r2, [r2, #0x58]
  38a976: 0044         	lsls	r4, r0, #0x1
  38a978: 8cb4         	ldrh	r4, [r6, #0x24]
  38a97a: 005a         	lsls	r2, r3, #0x1
  38a97c: 8c42         	ldrh	r2, [r0, #0x22]
  38a97e: 005a         	lsls	r2, r3, #0x1

// ==== PHASR::~PHASR
//      file offset 0x38a980 (= ELF address; Ghidra 0x39a980), 124 bytes, Thumb-2
  38a980: b500         	push	{lr}
  38a982: b083         	sub	sp, #0xc
  38a984: 9001         	str	r0, [sp, #0x4]
  38a986: 491b         	ldr	r1, [pc, #0x6c]         @ 0x38a9f4 <PHASR::~PHASR()+0x74>
  38a988: 4479         	add	r1, pc
  38a98a: 9b01         	ldr	r3, [sp, #0x4]
  38a98c: 4a1a         	ldr	r2, [pc, #0x68]         @ 0x38a9f8 <PHASR::~PHASR()+0x78>
  38a98e: 588a         	ldr	r2, [r1, r2]
  38a990: 3208         	adds	r2, #0x8
  38a992: 601a         	str	r2, [r3]
  38a994: 9b01         	ldr	r3, [sp, #0x4]
  38a996: 4618         	mov	r0, r3
  38a998: f205 fe48    	bl	0x59062c <cocos2d::CCNode::removeAllChildren()> @ imm = #0x205c90
  38a99c: 9b01         	ldr	r3, [sp, #0x4]
  38a99e: f8d3 31f4    	ldr.w	r3, [r3, #0x1f4]
  38a9a2: 681b         	ldr	r3, [r3]
  38a9a4: 33e8         	adds	r3, #0xe8
  38a9a6: 681b         	ldr	r3, [r3]
  38a9a8: 9a01         	ldr	r2, [sp, #0x4]
  38a9aa: f8d2 21f4    	ldr.w	r2, [r2, #0x1f4]
  38a9ae: 4610         	mov	r0, r2
  38a9b0: 4798         	blx	r3
  38a9b2: 9b01         	ldr	r3, [sp, #0x4]
  38a9b4: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  38a9b8: 4618         	mov	r0, r3
  38a9ba: f20d fa7d    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x20d4fa
  38a9be: 9b01         	ldr	r3, [sp, #0x4]
  38a9c0: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  38a9c4: 4618         	mov	r0, r3
  38a9c6: f20d fa77    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x20d4ee
  38a9ca: 9b01         	ldr	r3, [sp, #0x4]
  38a9cc: f8d3 31f4    	ldr.w	r3, [r3, #0x1f4]
  38a9d0: 4618         	mov	r0, r3
  38a9d2: f20d fa71    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x20d4e2
  38a9d6: 9b01         	ldr	r3, [sp, #0x4]
  38a9d8: 4618         	mov	r0, r3
  38a9da: f08a fc09    	bl	0x4151f0 <Weapon::~Weapon()> @ imm = #0x8a812
  38a9de: 2300         	movs	r3, #0x0
  38a9e0: 2b00         	cmp	r3, #0x0
  38a9e2: d002         	beq	0x38a9ea <PHASR::~PHASR()+0x6a> @ imm = #0x4
  38a9e4: 9801         	ldr	r0, [sp, #0x4]
  38a9e6: f3fd fb5d    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3fd6ba
  38a9ea: 9b01         	ldr	r3, [sp, #0x4]
  38a9ec: 4618         	mov	r0, r3
  38a9ee: b003         	add	sp, #0xc
  38a9f0: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x38a9f3); words below are literal-pool data ---
  38a9f4: 8080         	strh	r0, [r0, #0x4]
  38a9f6: 005a         	lsls	r2, r3, #0x1
  38a9f8: dcf8         	bgt	0x38a9ec <PHASR::~PHASR()+0x6c> @ imm = #-0x10
  38a9fa: ffff b500    	<unknown>

// ==== PHASR::~PHASR
//      file offset 0x38a9fc (= ELF address; Ghidra 0x39a9fc), 28 bytes, Thumb-2
  38a9fc: b500         	push	{lr}
  38a9fe: b083         	sub	sp, #0xc
  38aa00: 9001         	str	r0, [sp, #0x4]
  38aa02: 9801         	ldr	r0, [sp, #0x4]
  38aa04: f7ff ffbc    	bl	0x38a980 <PHASR::~PHASR()> @ imm = #-0x88
  38aa08: 9801         	ldr	r0, [sp, #0x4]
  38aa0a: f3fd fb4b    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3fd696
  38aa0e: 9b01         	ldr	r3, [sp, #0x4]
  38aa10: 4618         	mov	r0, r3
  38aa12: b003         	add	sp, #0xc
  38aa14: f85d fb04    	ldr	pc, [sp], #4

// ==== PHASR::triggerPull
//      file offset 0x38aa18 (= ELF address; Ghidra 0x39aa18), 282 bytes, Thumb-2
  38aa18: b500         	push	{lr}
  38aa1a: b083         	sub	sp, #0xc
  38aa1c: 9001         	str	r0, [sp, #0x4]
  38aa1e: 9100         	str	r1, [sp]
  38aa20: 9b01         	ldr	r3, [sp, #0x4]
  38aa22: ed93 7a44    	vldr	s14, [r3, #272]
  38aa26: 9b01         	ldr	r3, [sp, #0x4]
  38aa28: edd3 7a57    	vldr	s15, [r3, #348]
  38aa2c: eeb4 7ae7    	vcmpe.f32	s14, s15
  38aa30: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  38aa34: dd53         	ble	0x38aade <PHASR::triggerPull(float)+0xc6> @ imm = #0xa6
  38aa36: 9b01         	ldr	r3, [sp, #0x4]
  38aa38: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  38aa3c: b21b         	sxth	r3, r3
  38aa3e: 2b00         	cmp	r3, #0x0
  38aa40: dd0f         	ble	0x38aa62 <PHASR::triggerPull(float)+0x4a> @ imm = #0x1e
  38aa42: 9b01         	ldr	r3, [sp, #0x4]
  38aa44: 681b         	ldr	r3, [r3]
  38aa46: f503 7333    	add.w	r3, r3, #0x2cc
  38aa4a: 681b         	ldr	r3, [r3]
  38aa4c: 9a01         	ldr	r2, [sp, #0x4]
  38aa4e: 4610         	mov	r0, r2
  38aa50: 4798         	blx	r3
  38aa52: 4603         	mov	r3, r0
  38aa54: f083 0301    	eor	r3, r3, #0x1
  38aa58: b2db         	uxtb	r3, r3
  38aa5a: 2b00         	cmp	r3, #0x0
  38aa5c: d001         	beq	0x38aa62 <PHASR::triggerPull(float)+0x4a> @ imm = #0x2
  38aa5e: 2301         	movs	r3, #0x1
  38aa60: e000         	b	0x38aa64 <PHASR::triggerPull(float)+0x4c> @ imm = #0x0
  38aa62: 2300         	movs	r3, #0x0
  38aa64: 2b00         	cmp	r3, #0x0
  38aa66: d02d         	beq	0x38aac4 <PHASR::triggerPull(float)+0xac> @ imm = #0x5a
  38aa68: 9b01         	ldr	r3, [sp, #0x4]
  38aa6a: 2201         	movs	r2, #0x1
  38aa6c: f883 2180    	strb.w	r2, [r3, #0x180]
  38aa70: 9b01         	ldr	r3, [sp, #0x4]
  38aa72: 2201         	movs	r2, #0x1
  38aa74: f883 20e5    	strb.w	r2, [r3, #0xe5]
  38aa78: 9b01         	ldr	r3, [sp, #0x4]
  38aa7a: f04f 0200    	mov.w	r2, #0x0
  38aa7e: f8c3 21f8    	str.w	r2, [r3, #0x1f8]
  38aa82: 9b01         	ldr	r3, [sp, #0x4]
  38aa84: 681b         	ldr	r3, [r3]
  38aa86: f503 7325    	add.w	r3, r3, #0x294
  38aa8a: 681b         	ldr	r3, [r3]
  38aa8c: 9801         	ldr	r0, [sp, #0x4]
  38aa8e: 4798         	blx	r3
  38aa90: 9b01         	ldr	r3, [sp, #0x4]
  38aa92: 681b         	ldr	r3, [r3]
  38aa94: f503 7342    	add.w	r3, r3, #0x308
  38aa98: 681b         	ldr	r3, [r3]
  38aa9a: 9a01         	ldr	r2, [sp, #0x4]
  38aa9c: 4610         	mov	r0, r2
  38aa9e: 4798         	blx	r3
  38aaa0: 9b01         	ldr	r3, [sp, #0x4]
  38aaa2: f893 3195    	ldrb.w	r3, [r3, #0x195]
  38aaa6: 3301         	adds	r3, #0x1
  38aaa8: b2da         	uxtb	r2, r3
  38aaaa: 9b01         	ldr	r3, [sp, #0x4]
  38aaac: f883 2195    	strb.w	r2, [r3, #0x195]
  38aab0: 9b01         	ldr	r3, [sp, #0x4]
  38aab2: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  38aab6: b29b         	uxth	r3, r3
  38aab8: 3b00         	subs	r3, #0x0
  38aaba: b29a         	uxth	r2, r3
  38aabc: 9b01         	ldr	r3, [sp, #0x4]
  38aabe: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  38aac2: e007         	b	0x38aad4 <PHASR::triggerPull(float)+0xbc> @ imm = #0xe
  38aac4: 9b01         	ldr	r3, [sp, #0x4]
  38aac6: 681b         	ldr	r3, [r3]
  38aac8: f503 7333    	add.w	r3, r3, #0x2cc
  38aacc: 681b         	ldr	r3, [r3]
  38aace: 9a01         	ldr	r2, [sp, #0x4]
  38aad0: 4610         	mov	r0, r2
  38aad2: 4798         	blx	r3
  38aad4: 9b01         	ldr	r3, [sp, #0x4]
  38aad6: f04f 0200    	mov.w	r2, #0x0
  38aada: f8c3 2110    	str.w	r2, [r3, #0x110]
  38aade: 9b01         	ldr	r3, [sp, #0x4]
  38aae0: 681b         	ldr	r3, [r3]
  38aae2: f503 7333    	add.w	r3, r3, #0x2cc
  38aae6: 681b         	ldr	r3, [r3]
  38aae8: 9a01         	ldr	r2, [sp, #0x4]
  38aaea: 4610         	mov	r0, r2
  38aaec: 4798         	blx	r3
  38aaee: 4603         	mov	r3, r0
  38aaf0: f083 0301    	eor	r3, r3, #0x1
  38aaf4: b2db         	uxtb	r3, r3
  38aaf6: 2b00         	cmp	r3, #0x0
  38aaf8: d00c         	beq	0x38ab14 <PHASR::triggerPull(float)+0xfc> @ imm = #0x18
  38aafa: 9b01         	ldr	r3, [sp, #0x4]
  38aafc: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  38ab00: 2b00         	cmp	r3, #0x0
  38ab02: d107         	bne	0x38ab14 <PHASR::triggerPull(float)+0xfc> @ imm = #0xe
  38ab04: 9b01         	ldr	r3, [sp, #0x4]
  38ab06: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  38ab0a: b21b         	sxth	r3, r3
  38ab0c: 2b00         	cmp	r3, #0x0
  38ab0e: dd01         	ble	0x38ab14 <PHASR::triggerPull(float)+0xfc> @ imm = #0x2
  38ab10: 2301         	movs	r3, #0x1
  38ab12: e000         	b	0x38ab16 <PHASR::triggerPull(float)+0xfe> @ imm = #0x0
  38ab14: 2300         	movs	r3, #0x0
  38ab16: 2b00         	cmp	r3, #0x0
  38ab18: d008         	beq	0x38ab2c <PHASR::triggerPull(float)+0x114> @ imm = #0x10
  38ab1a: 9b01         	ldr	r3, [sp, #0x4]
  38ab1c: 2201         	movs	r2, #0x1
  38ab1e: f883 2181    	strb.w	r2, [r3, #0x181]
  38ab22: 9b01         	ldr	r3, [sp, #0x4]
  38ab24: f04f 0200    	mov.w	r2, #0x0
  38ab28: f8c3 2158    	str.w	r2, [r3, #0x158]
  38ab2c: b003         	add	sp, #0xc
  38ab2e: f85d fb04    	ldr	pc, [sp], #4

// ==== PHASR::getPlayerDamage
//      file offset 0x38ab34 (= ELF address; Ghidra 0x39ab34), 208 bytes, Thumb-2
  38ab34: b082         	sub	sp, #0x8
  38ab36: e92d 4ff0    	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  38ab3a: b08d         	sub	sp, #0x34
  38ab3c: 9009         	str	r0, [sp, #0x24]
  38ab3e: a916         	add	r1, sp, #0x58
  38ab40: e881 000c    	stm.w	r1, {r2, r3}
  38ab44: ed9d 7b16    	vldr	d7, [sp, #88]
  38ab48: eef7 7bc7    	vcvt.f32.f64	s15, d7
  38ab4c: ee17 0a90    	vmov	r0, s15
  38ab50: f752 f898    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xaded0
  38ab54: 4607         	mov	r7, r0
  38ab56: ed9d 7b18    	vldr	d7, [sp, #96]
  38ab5a: eef7 7bc7    	vcvt.f32.f64	s15, d7
  38ab5e: ee17 0a90    	vmov	r0, s15
  38ab62: f752 f88f    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xadee2
  38ab66: 4606         	mov	r6, r0
  38ab68: ed9d 7b1a    	vldr	d7, [sp, #104]
  38ab6c: eef7 7bc7    	vcvt.f32.f64	s15, d7
  38ab70: ee17 0a90    	vmov	r0, s15
  38ab74: f752 f886    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xadef4
  38ab78: 4605         	mov	r5, r0
  38ab7a: ed9d 7b1c    	vldr	d7, [sp, #112]
  38ab7e: eef7 7bc7    	vcvt.f32.f64	s15, d7
  38ab82: ee17 0a90    	vmov	r0, s15
  38ab86: f752 f87d    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xadf06
  38ab8a: 4604         	mov	r4, r0
  38ab8c: 2011         	movs	r0, #0x11
  38ab8e: f75a f8bb    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xa5e8a
  38ab92: 9008         	str	r0, [sp, #0x20]
  38ab94: 981e         	ldr	r0, [sp, #0x78]
  38ab96: f75a f8b7    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xa5e92
  38ab9a: 4683         	mov	r11, r0
  38ab9c: f04f 0000    	mov.w	r0, #0x0
  38aba0: f752 f870    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xadf20
  38aba4: 4682         	mov	r10, r0
  38aba6: f89d 3084    	ldrb.w	r3, [sp, #0x84]
  38abaa: 2b00         	cmp	r3, #0x0
  38abac: d001         	beq	0x38abb2 <PHASR::getPlayerDamage(cpVect, cpVect, int, std::string, std::string, bool)+0x7e> @ imm = #0x2
  38abae: 2301         	movs	r3, #0x1
  38abb0: e000         	b	0x38abb4 <PHASR::getPlayerDamage(cpVect, cpVect, int, std::string, std::string, bool)+0x80> @ imm = #0x0
  38abb2: 2300         	movs	r3, #0x0
  38abb4: 4618         	mov	r0, r3
  38abb6: f75a f8a7    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xa5eb2
  38abba: 4681         	mov	r9, r0
  38abbc: 981f         	ldr	r0, [sp, #0x7c]
  38abbe: f20e ff3d    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x20ee7a
  38abc2: 4680         	mov	r8, r0
  38abc4: 9820         	ldr	r0, [sp, #0x80]
  38abc6: f20e ff39    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x20ee72
  38abca: 4603         	mov	r3, r0
  38abcc: 9a08         	ldr	r2, [sp, #0x20]
  38abce: 9200         	str	r2, [sp]
  38abd0: f8cd b004    	str.w	r11, [sp, #0x4]
  38abd4: f8cd a008    	str.w	r10, [sp, #0x8]
  38abd8: f8cd 900c    	str.w	r9, [sp, #0xc]
  38abdc: f8cd 8010    	str.w	r8, [sp, #0x10]
  38abe0: 9305         	str	r3, [sp, #0x14]
  38abe2: 2300         	movs	r3, #0x0
  38abe4: 9306         	str	r3, [sp, #0x18]
  38abe6: 4638         	mov	r0, r7
  38abe8: 4631         	mov	r1, r6
  38abea: 462a         	mov	r2, r5
  38abec: 4623         	mov	r3, r4
  38abee: f20f f90f    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x20f21e
  38abf2: 4603         	mov	r3, r0
  38abf4: 930b         	str	r3, [sp, #0x2c]
  38abf6: 9b0b         	ldr	r3, [sp, #0x2c]
  38abf8: 4618         	mov	r0, r3
  38abfa: b00d         	add	sp, #0x34
  38abfc: e8bd 4ff0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  38ac00: b002         	add	sp, #0x8
  38ac02: 4770         	bx	lr

// ==== PHASR::updateLaserDistance
//      file offset 0x38ac08 (= ELF address; Ghidra 0x39ac08), 1716 bytes, Thumb-2
  38ac08: e92d 4ff0    	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  38ac0c: ed2d 8b02    	vpush	{d8}
  38ac10: b0c3         	sub	sp, #0x10c
  38ac12: 900f         	str	r0, [sp, #0x3c]
  38ac14: 910e         	str	r1, [sp, #0x38]
  38ac16: 4ec3         	ldr	r6, [pc, #0x30c]        @ 0x38af24 <PHASR::updateLaserDistance(float)+0x31c>
  38ac18: 447e         	add	r6, pc
  38ac1a: f04f 0300    	mov.w	r3, #0x0
  38ac1e: 9313         	str	r3, [sp, #0x4c]
  38ac20: f04f 0200    	mov.w	r2, #0x0
  38ac24: f04f 0300    	mov.w	r3, #0x0
  38ac28: e9cd 231e    	strd	r2, r3, [sp, #120]
  38ac2c: f04f 0200    	mov.w	r2, #0x0
  38ac30: f04f 0300    	mov.w	r3, #0x0
  38ac34: e9cd 2320    	strd	r2, r3, [sp, #128]
  38ac38: f04f 0200    	mov.w	r2, #0x0
  38ac3c: f04f 0300    	mov.w	r3, #0x0
  38ac40: e9cd 2322    	strd	r2, r3, [sp, #136]
  38ac44: f04f 0200    	mov.w	r2, #0x0
  38ac48: f04f 0300    	mov.w	r3, #0x0
  38ac4c: e9cd 2324    	strd	r2, r3, [sp, #144]
  38ac50: f04f 0200    	mov.w	r2, #0x0
  38ac54: f04f 0300    	mov.w	r3, #0x0
  38ac58: e9cd 2326    	strd	r2, r3, [sp, #152]
  38ac5c: f04f 0200    	mov.w	r2, #0x0
  38ac60: f04f 0300    	mov.w	r3, #0x0
  38ac64: e9cd 2328    	strd	r2, r3, [sp, #160]
  38ac68: 9b0f         	ldr	r3, [sp, #0x3c]
  38ac6a: ed93 7a7f    	vldr	s14, [r3, #508]
  38ac6e: eddd 7a0e    	vldr	s15, [sp, #56]
  38ac72: ee77 7a27    	vadd.f32	s15, s14, s15
  38ac76: 9b0f         	ldr	r3, [sp, #0x3c]
  38ac78: edc3 7a7f    	vstr	s15, [r3, #508]
  38ac7c: 9b0f         	ldr	r3, [sp, #0x3c]
  38ac7e: edd3 7a7f    	vldr	s15, [r3, #508]
  38ac82: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  38ac86: ed9f 7ba4    	vldr	d7, [pc, #656]          @ 0x38af18 <PHASR::updateLaserDistance(float)+0x310>
  38ac8a: eeb4 6bc7    	vcmpe.f64	d6, d7
  38ac8e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  38ac92: bfd4         	ite	le
  38ac94: 2300         	movle	r3, #0x0
  38ac96: 2301         	movgt	r3, #0x1
  38ac98: f88d 3043    	strb.w	r3, [sp, #0x43]
  38ac9c: 9b0f         	ldr	r3, [sp, #0x3c]
  38ac9e: f893 30e5    	ldrb.w	r3, [r3, #0xe5]
  38aca2: 2b00         	cmp	r3, #0x0
  38aca4: f000 8283    	beq.w	0x38b1ae <PHASR::updateLaserDistance(float)+0x5a6> @ imm = #0x506
  38aca8: 9b0f         	ldr	r3, [sp, #0x3c]
  38acaa: f8d3 31a4    	ldr.w	r3, [r3, #0x1a4]
  38acae: ee06 3a90    	vmov	s13, r3
  38acb2: eef8 7ae6    	vcvt.f32.s32	s15, s13
  38acb6: edcd 7a13    	vstr	s15, [sp, #76]
  38acba: 9b0f         	ldr	r3, [sp, #0x3c]
  38acbc: edd3 7a72    	vldr	s15, [r3, #456]
  38acc0: eeb1 7a67    	vneg.f32	s14, s15
  38acc4: eddf 7a96    	vldr	s15, [pc, #600]         @ 0x38af20 <PHASR::updateLaserDistance(float)+0x318>
  38acc8: ee67 7a27    	vmul.f32	s15, s14, s15
  38accc: edcd 7a15    	vstr	s15, [sp, #84]
  38acd0: eddd 7a15    	vldr	s15, [sp, #84]
  38acd4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  38acd8: ec51 0b17    	vmov	r0, r1, d7
  38acdc: f74b e914    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0xb4dd8
  38ace0: 4604         	mov	r4, r0
  38ace2: 460d         	mov	r5, r1
  38ace4: eddd 7a15    	vldr	s15, [sp, #84]
  38ace8: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  38acec: ec51 0b17    	vmov	r0, r1, d7
  38acf0: f74b e910    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0xb4de0
  38acf4: 4602         	mov	r2, r0
  38acf6: 460b         	mov	r3, r1
  38acf8: a92e         	add	r1, sp, #0xb8
  38acfa: 4608         	mov	r0, r1
  38acfc: ec45 4b10    	vmov	d0, r4, r5
  38ad00: ec43 2b11    	vmov	d1, r2, r3
  38ad04: f7fe fbf2    	bl	0x3894ec <NewsLayer::onBack(cocos2d::CCObject*)+0x1ec> @ imm = #-0x181c
  38ad08: 9b0f         	ldr	r3, [sp, #0x3c]
  38ad0a: f8d3 31a4    	ldr.w	r3, [r3, #0x1a4]
  38ad0e: ee06 3a90    	vmov	s13, r3
  38ad12: eeb8 7be6    	vcvt.f64.s32	d7, s13
  38ad16: ab0a         	add	r3, sp, #0x28
  38ad18: ed9d 5b2e    	vldr	d5, [sp, #184]
  38ad1c: ed9d 6b30    	vldr	d6, [sp, #192]
  38ad20: 4618         	mov	r0, r3
  38ad22: eeb0 0b45    	vmov.f64	d0, d5
  38ad26: eeb0 1b46    	vmov.f64	d1, d6
  38ad2a: eeb0 2b47    	vmov.f64	d2, d7
  38ad2e: f7fe fc49    	bl	0x3895c4 <NewsLayer::onBack(cocos2d::CCObject*)+0x2c4> @ imm = #-0x176e
  38ad32: ac1e         	add	r4, sp, #0x78
  38ad34: ab0a         	add	r3, sp, #0x28
  38ad36: cb0f         	ldm	r3, {r0, r1, r2, r3}
  38ad38: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  38ad3c: 9b0f         	ldr	r3, [sp, #0x3c]
  38ad3e: 681b         	ldr	r3, [r3]
  38ad40: 3350         	adds	r3, #0x50
  38ad42: 681b         	ldr	r3, [r3]
  38ad44: 9a0f         	ldr	r2, [sp, #0x3c]
  38ad46: 4610         	mov	r0, r2
  38ad48: 4798         	blx	r3
  38ad4a: 4604         	mov	r4, r0
  38ad4c: ab32         	add	r3, sp, #0xc8
  38ad4e: 4618         	mov	r0, r3
  38ad50: f04f 0100    	mov.w	r1, #0x0
  38ad54: f04f 0200    	mov.w	r2, #0x0
  38ad58: f2c4 1270    	movt	r2, #0x4170
  38ad5c: f207 ffc8    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x207f90
  38ad60: aa36         	add	r2, sp, #0xd8
  38ad62: ab32         	add	r3, sp, #0xc8
  38ad64: 4610         	mov	r0, r2
  38ad66: 4621         	mov	r1, r4
  38ad68: 461a         	mov	r2, r3
  38ad6a: f7fe fbaf    	bl	0x3894cc <NewsLayer::onBack(cocos2d::CCObject*)+0x1cc> @ imm = #-0x18a2
  38ad6e: 9b0f         	ldr	r3, [sp, #0x3c]
  38ad70: 681b         	ldr	r3, [r3]
  38ad72: f503 73c2    	add.w	r3, r3, #0x184
  38ad76: 681b         	ldr	r3, [r3]
  38ad78: 9a0f         	ldr	r2, [sp, #0x3c]
  38ad7a: a93a         	add	r1, sp, #0xe8
  38ad7c: 4608         	mov	r0, r1
  38ad7e: 4611         	mov	r1, r2
  38ad80: 4798         	blx	r3
  38ad82: a91a         	add	r1, sp, #0x68
  38ad84: aa36         	add	r2, sp, #0xd8
  38ad86: ab3a         	add	r3, sp, #0xe8
  38ad88: 4608         	mov	r0, r1
  38ad8a: 4611         	mov	r1, r2
  38ad8c: 461a         	mov	r2, r3
  38ad8e: f207 fac9    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x207592
  38ad92: 4b65         	ldr	r3, [pc, #0x194]        @ 0x38af28 <PHASR::updateLaserDistance(float)+0x320>
  38ad94: 58f3         	ldr	r3, [r6, r3]
  38ad96: 681b         	ldr	r3, [r3]
  38ad98: 681b         	ldr	r3, [r3]
  38ad9a: f503 73c4    	add.w	r3, r3, #0x188
  38ad9e: 681b         	ldr	r3, [r3]
  38ada0: 4a61         	ldr	r2, [pc, #0x184]        @ 0x38af28 <PHASR::updateLaserDistance(float)+0x320>
  38ada2: 58b2         	ldr	r2, [r6, r2]
  38ada4: 6812         	ldr	r2, [r2]
  38ada6: a93a         	add	r1, sp, #0xe8
  38ada8: 4608         	mov	r0, r1
  38adaa: 4611         	mov	r1, r2
  38adac: 4798         	blx	r3
  38adae: a91c         	add	r1, sp, #0x70
  38adb0: aa1a         	add	r2, sp, #0x68
  38adb2: ab3a         	add	r3, sp, #0xe8
  38adb4: 4608         	mov	r0, r1
  38adb6: 4611         	mov	r1, r2
  38adb8: 461a         	mov	r2, r3
  38adba: f207 fab3    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x207566
  38adbe: eddd 7a1c    	vldr	s15, [sp, #112]
  38adc2: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  38adc6: eddd 7a1d    	vldr	s15, [sp, #116]
  38adca: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  38adce: ab0a         	add	r3, sp, #0x28
  38add0: 4618         	mov	r0, r3
  38add2: eeb0 0b46    	vmov.f64	d0, d6
  38add6: eeb0 1b47    	vmov.f64	d1, d7
  38adda: f7fe fb87    	bl	0x3894ec <NewsLayer::onBack(cocos2d::CCObject*)+0x1ec> @ imm = #-0x18f2
  38adde: ac26         	add	r4, sp, #0x98
  38ade0: ab0a         	add	r3, sp, #0x28
  38ade2: cb0f         	ldm	r3, {r0, r1, r2, r3}
  38ade4: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  38ade8: ab2a         	add	r3, sp, #0xa8
  38adea: ed9d 4b26    	vldr	d4, [sp, #152]
  38adee: ed9d 5b28    	vldr	d5, [sp, #160]
  38adf2: ed9d 6b1e    	vldr	d6, [sp, #120]
  38adf6: ed9d 7b20    	vldr	d7, [sp, #128]
  38adfa: 4618         	mov	r0, r3
  38adfc: eeb0 0b44    	vmov.f64	d0, d4
  38ae00: eeb0 1b45    	vmov.f64	d1, d5
  38ae04: eeb0 2b46    	vmov.f64	d2, d6
  38ae08: eeb0 3b47    	vmov.f64	d3, d7
  38ae0c: f7fe fb82    	bl	0x389514 <NewsLayer::onBack(cocos2d::CCObject*)+0x214> @ imm = #-0x18fc
  38ae10: 9b0f         	ldr	r3, [sp, #0x3c]
  38ae12: f8d3 31f4    	ldr.w	r3, [r3, #0x1f4]
  38ae16: 681b         	ldr	r3, [r3]
  38ae18: 334c         	adds	r3, #0x4c
  38ae1a: 681b         	ldr	r3, [r3]
  38ae1c: 9a0f         	ldr	r2, [sp, #0x3c]
  38ae1e: f8d2 11f4    	ldr.w	r1, [r2, #0x1f4]
  38ae22: aa1c         	add	r2, sp, #0x70
  38ae24: 4608         	mov	r0, r1
  38ae26: 4611         	mov	r1, r2
  38ae28: 4798         	blx	r3
  38ae2a: 9b0f         	ldr	r3, [sp, #0x3c]
  38ae2c: f8d3 31f4    	ldr.w	r3, [r3, #0x1f4]
  38ae30: 681b         	ldr	r3, [r3]
  38ae32: 3398         	adds	r3, #0x98
  38ae34: 681b         	ldr	r3, [r3]
  38ae36: 9a0f         	ldr	r2, [sp, #0x3c]
  38ae38: f8d2 11f4    	ldr.w	r1, [r2, #0x1f4]
  38ae3c: 9a0f         	ldr	r2, [sp, #0x3c]
  38ae3e: f8d2 21c8    	ldr.w	r2, [r2, #0x1c8]
  38ae42: 4608         	mov	r0, r1
  38ae44: 4611         	mov	r1, r2
  38ae46: 4798         	blx	r3
  38ae48: 4b38         	ldr	r3, [pc, #0xe0]         @ 0x38af2c <PHASR::updateLaserDistance(float)+0x324>
  38ae4a: 58f3         	ldr	r3, [r6, r3]
  38ae4c: 681d         	ldr	r5, [r3]
  38ae4e: ac02         	add	r4, sp, #0x8
  38ae50: ab2a         	add	r3, sp, #0xa8
  38ae52: cb0f         	ldm	r3, {r0, r1, r2, r3}
  38ae54: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  38ae58: f44f 7362    	mov.w	r3, #0x388
  38ae5c: 9306         	str	r3, [sp, #0x18]
  38ae5e: 2300         	movs	r3, #0x0
  38ae60: 9307         	str	r3, [sp, #0x1c]
  38ae62: ab3a         	add	r3, sp, #0xe8
  38ae64: 9308         	str	r3, [sp, #0x20]
  38ae66: 466b         	mov	r3, sp
  38ae68: aa28         	add	r2, sp, #0xa0
  38ae6a: e892 0003    	ldm.w	r2, {r0, r1}
  38ae6e: e883 0003    	stm.w	r3, {r0, r1}
  38ae72: ab26         	add	r3, sp, #0x98
  38ae74: cb0c         	ldm	r3, {r2, r3}
  38ae76: 4628         	mov	r0, r5
  38ae78: f34b f86e    	bl	0x6d5f58 <cpSpaceSegmentQueryFirst> @ imm = #0x34b0dc
  38ae7c: 4603         	mov	r3, r0
  38ae7e: 9316         	str	r3, [sp, #0x58]
  38ae80: 9b16         	ldr	r3, [sp, #0x58]
  38ae82: 2b00         	cmp	r3, #0x0
  38ae84: f000 8193    	beq.w	0x38b1ae <PHASR::updateLaserDistance(float)+0x5a6> @ imm = #0x326
  38ae88: af0a         	add	r7, sp, #0x28
  38ae8a: ed9d 4b26    	vldr	d4, [sp, #152]
  38ae8e: ed9d 5b28    	vldr	d5, [sp, #160]
  38ae92: ed9d 6b2a    	vldr	d6, [sp, #168]
  38ae96: ed9d 7b2c    	vldr	d7, [sp, #176]
  38ae9a: 466c         	mov	r4, sp
  38ae9c: ad3c         	add	r5, sp, #0xf0
  38ae9e: cd0f         	ldm	r5!, {r0, r1, r2, r3}
  38aea0: c40f         	stm	r4!, {r0, r1, r2, r3}
  38aea2: e895 0003    	ldm.w	r5, {r0, r1}
  38aea6: e884 0003    	stm.w	r4, {r0, r1}
  38aeaa: ab3a         	add	r3, sp, #0xe8
  38aeac: cb0c         	ldm	r3, {r2, r3}
  38aeae: 4638         	mov	r0, r7
  38aeb0: eeb0 0b44    	vmov.f64	d0, d4
  38aeb4: eeb0 1b45    	vmov.f64	d1, d5
  38aeb8: eeb0 2b46    	vmov.f64	d2, d6
  38aebc: eeb0 3b47    	vmov.f64	d3, d7
  38aec0: f7fe fc0a    	bl	0x3896d8 <NewsLayer::onBack(cocos2d::CCObject*)+0x3d8> @ imm = #-0x17ec
  38aec4: ac22         	add	r4, sp, #0x88
  38aec6: ab0a         	add	r3, sp, #0x28
  38aec8: cb0f         	ldm	r3, {r0, r1, r2, r3}
  38aeca: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  38aece: ab32         	add	r3, sp, #0xc8
  38aed0: ed9d 4b26    	vldr	d4, [sp, #152]
  38aed4: ed9d 5b28    	vldr	d5, [sp, #160]
  38aed8: ed9d 6b22    	vldr	d6, [sp, #136]
  38aedc: ed9d 7b24    	vldr	d7, [sp, #144]
  38aee0: 4618         	mov	r0, r3
  38aee2: eeb0 0b44    	vmov.f64	d0, d4
  38aee6: eeb0 1b45    	vmov.f64	d1, d5
  38aeea: eeb0 2b46    	vmov.f64	d2, d6
  38aeee: eeb0 3b47    	vmov.f64	d3, d7
  38aef2: f7fe fb3b    	bl	0x38956c <NewsLayer::onBack(cocos2d::CCObject*)+0x26c> @ imm = #-0x198a
  38aef6: ab32         	add	r3, sp, #0xc8
  38aef8: cb0f         	ldm	r3, {r0, r1, r2, r3}
  38aefa: f34c f8dd    	bl	0x6d70b8 <cpvlength>    @ imm = #0x34c1ba
  38aefe: ec41 0b17    	vmov	d7, r0, r1
  38af02: eef7 7bc7    	vcvt.f32.f64	s15, d7
  38af06: edcd 7a13    	vstr	s15, [sp, #76]
  38af0a: f89d 3043    	ldrb.w	r3, [sp, #0x43]
  38af0e: 2b00         	cmp	r3, #0x0
  38af10: f000 814d    	beq.w	0x38b1ae <PHASR::updateLaserDistance(float)+0x5a6> @ imm = #0x29a
  38af14: e00c         	b	0x38af30 <PHASR::updateLaserDistance(float)+0x328> @ imm = #0x18
  38af16: bf00         	nop
  38af18: 999a         	ldr	r1, [sp, #0x268]
  38af1a: 9999         	ldr	r1, [sp, #0x264]
  38af1c: 9999         	ldr	r1, [sp, #0x264]
  38af1e: 3fb9         	subs	r7, #0xb9
  38af20: fa35 3c8e    	<unknown>
  38af24: 7df0         	ldrb	r0, [r6, #0x17]
  38af26: 005a         	lsls	r2, r3, #0x1
  38af28: d744         	bvc	0x38afb4 <PHASR::updateLaserDistance(float)+0x3ac> @ imm = #0x88
  38af2a: ffff da00    	vtbl.8	d29, {d15, d16, d17}, d0
  38af2e: ffff ed9d    	<unknown>
  38af32: 7b1e         	ldrb	r6, [r3, #0xc]
  38af34: eef7 7bc7    	vcvt.f32.f64	s15, d7
  38af38: ee17 0a90    	vmov	r0, s15
  38af3c: f751 fea2    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xae2bc
  38af40: 4680         	mov	r8, r0
  38af42: ed9d 7b20    	vldr	d7, [sp, #128]
  38af46: eef7 7bc7    	vcvt.f32.f64	s15, d7
  38af4a: ee17 0a90    	vmov	r0, s15
  38af4e: f751 fe99    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xae2ce
  38af52: 4607         	mov	r7, r0
  38af54: ed9d 7b22    	vldr	d7, [sp, #136]
  38af58: eef7 7bc7    	vcvt.f32.f64	s15, d7
  38af5c: ee17 0a90    	vmov	r0, s15
  38af60: f751 fe90    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xae2e0
  38af64: 4605         	mov	r5, r0
  38af66: ed9d 7b24    	vldr	d7, [sp, #144]
  38af6a: eef7 7bc7    	vcvt.f32.f64	s15, d7
  38af6e: ee17 0a90    	vmov	r0, s15
  38af72: f751 fe87    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xae2f2
  38af76: 4604         	mov	r4, r0
  38af78: 20ff         	movs	r0, #0xff
  38af7a: f759 fec5    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xa6276
  38af7e: 4683         	mov	r11, r0
  38af80: 2032         	movs	r0, #0x32
  38af82: f759 fec1    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xa627e
  38af86: 4682         	mov	r10, r0
  38af88: 2000         	movs	r0, #0x0
  38af8a: f759 febd    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xa6286
  38af8e: 4681         	mov	r9, r0
  38af90: 9b16         	ldr	r3, [sp, #0x58]
  38af92: 6ddb         	ldr	r3, [r3, #0x5c]
  38af94: 2b0d         	cmp	r3, #0xd
  38af96: d009         	beq	0x38afac <PHASR::updateLaserDistance(float)+0x3a4> @ imm = #0x12
  38af98: 9b16         	ldr	r3, [sp, #0x58]
  38af9a: 6ddb         	ldr	r3, [r3, #0x5c]
  38af9c: 2b84         	cmp	r3, #0x84
  38af9e: d005         	beq	0x38afac <PHASR::updateLaserDistance(float)+0x3a4> @ imm = #0xa
  38afa0: 9b16         	ldr	r3, [sp, #0x58]
  38afa2: 6dda         	ldr	r2, [r3, #0x5c]
  38afa4: f240 2341    	movw	r3, #0x241
  38afa8: 429a         	cmp	r2, r3
  38afaa: d101         	bne	0x38afb0 <PHASR::updateLaserDistance(float)+0x3a8> @ imm = #0x2
  38afac: 2301         	movs	r3, #0x1
  38afae: e000         	b	0x38afb2 <PHASR::updateLaserDistance(float)+0x3aa> @ imm = #0x0
  38afb0: 2300         	movs	r3, #0x0
  38afb2: 4618         	mov	r0, r3
  38afb4: f759 fea8    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xa62b0
  38afb8: 4603         	mov	r3, r0
  38afba: f8cd b000    	str.w	r11, [sp]
  38afbe: f8cd a004    	str.w	r10, [sp, #0x4]
  38afc2: f8cd 9008    	str.w	r9, [sp, #0x8]
  38afc6: 9303         	str	r3, [sp, #0xc]
  38afc8: 2300         	movs	r3, #0x0
  38afca: 9304         	str	r3, [sp, #0x10]
  38afcc: 4640         	mov	r0, r8
  38afce: 4639         	mov	r1, r7
  38afd0: 462a         	mov	r2, r5
  38afd2: 4623         	mov	r3, r4
  38afd4: f20e ff1c    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x20ee38
  38afd8: 4603         	mov	r3, r0
  38afda: 9317         	str	r3, [sp, #0x5c]
  38afdc: f255 fb68    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2556d0
  38afe0: 4603         	mov	r3, r0
  38afe2: 4618         	mov	r0, r3
  38afe4: 4bb2         	ldr	r3, [pc, #0x2c8]        @ 0x38b2b0 <PHASR::updateLaserDistance(float)+0x6a8>
  38afe6: 447b         	add	r3, pc
  38afe8: 4619         	mov	r1, r3
  38afea: 9a17         	ldr	r2, [sp, #0x5c]
  38afec: f255 fd9e    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x255b3c
  38aff0: 9b0f         	ldr	r3, [sp, #0x3c]
  38aff2: f8d3 3198    	ldr.w	r3, [r3, #0x198]
  38aff6: 9314         	str	r3, [sp, #0x50]
  38aff8: 2300         	movs	r3, #0x0
  38affa: f88d 3042    	strb.w	r3, [sp, #0x42]
  38affe: 2300         	movs	r3, #0x0
  38b000: 9318         	str	r3, [sp, #0x60]
  38b002: 9b16         	ldr	r3, [sp, #0x58]
  38b004: 6ddb         	ldr	r3, [r3, #0x5c]
  38b006: 2b84         	cmp	r3, #0x84
  38b008: d048         	beq	0x38b09c <PHASR::updateLaserDistance(float)+0x494> @ imm = #0x90
  38b00a: f240 2241    	movw	r2, #0x241
  38b00e: 4293         	cmp	r3, r2
  38b010: d000         	beq	0x38b014 <PHASR::updateLaserDistance(float)+0x40c> @ imm = #0x0
  38b012: e0cc         	b	0x38b1ae <PHASR::updateLaserDistance(float)+0x5a6> @ imm = #0x198
  38b014: 9b16         	ldr	r3, [sp, #0x58]
  38b016: 6d1b         	ldr	r3, [r3, #0x50]
  38b018: 9318         	str	r3, [sp, #0x60]
  38b01a: 9b18         	ldr	r3, [sp, #0x60]
  38b01c: f8d3 2140    	ldr.w	r2, [r3, #0x140]
  38b020: 9b16         	ldr	r3, [sp, #0x58]
  38b022: 429a         	cmp	r2, r3
  38b024: d11a         	bne	0x38b05c <PHASR::updateLaserDistance(float)+0x454> @ imm = #0x34
  38b026: 9b18         	ldr	r3, [sp, #0x60]
  38b028: 681b         	ldr	r3, [r3]
  38b02a: f503 731b    	add.w	r3, r3, #0x26c
  38b02e: 681b         	ldr	r3, [r3]
  38b030: 9818         	ldr	r0, [sp, #0x60]
  38b032: 4798         	blx	r3
  38b034: 4603         	mov	r3, r0
  38b036: 2b00         	cmp	r3, #0x0
  38b038: d000         	beq	0x38b03c <PHASR::updateLaserDistance(float)+0x434> @ imm = #0x0
  38b03a: e0b8         	b	0x38b1ae <PHASR::updateLaserDistance(float)+0x5a6> @ imm = #0x170
  38b03c: 9b0f         	ldr	r3, [sp, #0x3c]
  38b03e: f8d3 3198    	ldr.w	r3, [r3, #0x198]
  38b042: ee07 3a10    	vmov	s14, r3
  38b046: eeb8 6bc7    	vcvt.f64.s32	d6, s14
  38b04a: eeb7 7b08    	vmov.f64	d7, #1.500000e+00
  38b04e: ee26 7b07    	vmul.f64	d7, d6, d7
  38b052: eefd 6bc7    	vcvt.s32.f64	s13, d7
  38b056: ee16 3a90    	vmov	r3, s13
  38b05a: 9314         	str	r3, [sp, #0x50]
  38b05c: 9b18         	ldr	r3, [sp, #0x60]
  38b05e: 681b         	ldr	r3, [r3]
  38b060: f503 7316    	add.w	r3, r3, #0x258
  38b064: 681c         	ldr	r4, [r3]
  38b066: 9b14         	ldr	r3, [sp, #0x50]
  38b068: ee07 3a10    	vmov	s14, r3
  38b06c: eeb8 8ac7    	vcvt.f32.s32	s16, s14
  38b070: 9b0f         	ldr	r3, [sp, #0x3c]
  38b072: f503 73aa    	add.w	r3, r3, #0x154
  38b076: aa36         	add	r2, sp, #0xd8
  38b078: 4610         	mov	r0, r2
  38b07a: 4619         	mov	r1, r3
  38b07c: f02b f234    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x42b468
  38b080: ab36         	add	r3, sp, #0xd8
  38b082: 2201         	movs	r2, #0x1
  38b084: 9200         	str	r2, [sp]
  38b086: 9818         	ldr	r0, [sp, #0x60]
  38b088: ee18 1a10    	vmov	r1, s16
  38b08c: 461a         	mov	r2, r3
  38b08e: 2311         	movs	r3, #0x11
  38b090: 47a0         	blx	r4
  38b092: ab36         	add	r3, sp, #0xd8
  38b094: 4618         	mov	r0, r3
  38b096: f02a f43d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x42a87a
  38b09a: e088         	b	0x38b1ae <PHASR::updateLaserDistance(float)+0x5a6> @ imm = #0x110
  38b09c: 9b16         	ldr	r3, [sp, #0x58]
  38b09e: 6d1b         	ldr	r3, [r3, #0x50]
  38b0a0: 9318         	str	r3, [sp, #0x60]
  38b0a2: 4b84         	ldr	r3, [pc, #0x210]        @ 0x38b2b4 <PHASR::updateLaserDistance(float)+0x6ac>
  38b0a4: 58f3         	ldr	r3, [r6, r3]
  38b0a6: 681b         	ldr	r3, [r3]
  38b0a8: 681b         	ldr	r3, [r3]
  38b0aa: f503 7340    	add.w	r3, r3, #0x300
  38b0ae: 681c         	ldr	r4, [r3]
  38b0b0: 4b80         	ldr	r3, [pc, #0x200]        @ 0x38b2b4 <PHASR::updateLaserDistance(float)+0x6ac>
  38b0b2: 58f3         	ldr	r3, [r6, r3]
  38b0b4: 681d         	ldr	r5, [r3]
  38b0b6: 9b18         	ldr	r3, [sp, #0x60]
  38b0b8: 681b         	ldr	r3, [r3]
  38b0ba: f503 73e2    	add.w	r3, r3, #0x1c4
  38b0be: 681b         	ldr	r3, [r3]
  38b0c0: 9a18         	ldr	r2, [sp, #0x60]
  38b0c2: 4610         	mov	r0, r2
  38b0c4: 4798         	blx	r3
  38b0c6: 4603         	mov	r3, r0
  38b0c8: 4628         	mov	r0, r5
  38b0ca: 4619         	mov	r1, r3
  38b0cc: 47a0         	blx	r4
  38b0ce: 4603         	mov	r3, r0
  38b0d0: f083 0301    	eor	r3, r3, #0x1
  38b0d4: b2db         	uxtb	r3, r3
  38b0d6: 2b00         	cmp	r3, #0x0
  38b0d8: d068         	beq	0x38b1ac <PHASR::updateLaserDistance(float)+0x5a4> @ imm = #0xd0
  38b0da: 9b18         	ldr	r3, [sp, #0x60]
  38b0dc: f8d3 2140    	ldr.w	r2, [r3, #0x140]
  38b0e0: 9b16         	ldr	r3, [sp, #0x58]
  38b0e2: 429a         	cmp	r2, r3
  38b0e4: d10d         	bne	0x38b102 <PHASR::updateLaserDistance(float)+0x4fa> @ imm = #0x1a
  38b0e6: 9b18         	ldr	r3, [sp, #0x60]
  38b0e8: 681b         	ldr	r3, [r3]
  38b0ea: f503 731b    	add.w	r3, r3, #0x26c
  38b0ee: 681b         	ldr	r3, [r3]
  38b0f0: 9818         	ldr	r0, [sp, #0x60]
  38b0f2: 4798         	blx	r3
  38b0f4: 4603         	mov	r3, r0
  38b0f6: 2b00         	cmp	r3, #0x0
  38b0f8: d000         	beq	0x38b0fc <PHASR::updateLaserDistance(float)+0x4f4> @ imm = #0x0
  38b0fa: e058         	b	0x38b1ae <PHASR::updateLaserDistance(float)+0x5a6> @ imm = #0xb0
  38b0fc: 2301         	movs	r3, #0x1
  38b0fe: f88d 3042    	strb.w	r3, [sp, #0x42]
  38b102: 9b18         	ldr	r3, [sp, #0x60]
  38b104: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  38b108: aa36         	add	r2, sp, #0xd8
  38b10a: ed9d 4b22    	vldr	d4, [sp, #136]
  38b10e: ed9d 5b24    	vldr	d5, [sp, #144]
  38b112: ed93 6b0a    	vldr	d6, [r3, #40]
  38b116: ed93 7b0c    	vldr	d7, [r3, #48]
  38b11a: 4610         	mov	r0, r2
  38b11c: eeb0 0b44    	vmov.f64	d0, d4
  38b120: eeb0 1b45    	vmov.f64	d1, d5
  38b124: eeb0 2b46    	vmov.f64	d2, d6
  38b128: eeb0 3b47    	vmov.f64	d3, d7
  38b12c: f7fe fa1e    	bl	0x38956c <NewsLayer::onBack(cocos2d::CCObject*)+0x26c> @ imm = #-0x1bc4
  38b130: 9b18         	ldr	r3, [sp, #0x60]
  38b132: 681b         	ldr	r3, [r3]
  38b134: f503 73e0    	add.w	r3, r3, #0x1c0
  38b138: 681b         	ldr	r3, [r3]
  38b13a: aa11         	add	r2, sp, #0x44
  38b13c: 4610         	mov	r0, r2
  38b13e: 9918         	ldr	r1, [sp, #0x60]
  38b140: 4798         	blx	r3
  38b142: 9b0f         	ldr	r3, [sp, #0x3c]
  38b144: f503 73aa    	add.w	r3, r3, #0x154
  38b148: aa12         	add	r2, sp, #0x48
  38b14a: 4610         	mov	r0, r2
  38b14c: 4619         	mov	r1, r3
  38b14e: f02b f1cb    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x42b396
  38b152: ac02         	add	r4, sp, #0x8
  38b154: ab2a         	add	r3, sp, #0xa8
  38b156: cb0f         	ldm	r3, {r0, r1, r2, r3}
  38b158: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  38b15c: 9b14         	ldr	r3, [sp, #0x50]
  38b15e: 9306         	str	r3, [sp, #0x18]
  38b160: ab11         	add	r3, sp, #0x44
  38b162: 9307         	str	r3, [sp, #0x1c]
  38b164: ab12         	add	r3, sp, #0x48
  38b166: 9308         	str	r3, [sp, #0x20]
  38b168: f89d 3042    	ldrb.w	r3, [sp, #0x42]
  38b16c: 9309         	str	r3, [sp, #0x24]
  38b16e: 466b         	mov	r3, sp
  38b170: aa38         	add	r2, sp, #0xe0
  38b172: e892 0003    	ldm.w	r2, {r0, r1}
  38b176: e883 0003    	stm.w	r3, {r0, r1}
  38b17a: ab36         	add	r3, sp, #0xd8
  38b17c: cb0c         	ldm	r3, {r2, r3}
  38b17e: 980f         	ldr	r0, [sp, #0x3c]
  38b180: f7ff fcd8    	bl	0x38ab34 <PHASR::getPlayerDamage(cpVect, cpVect, int, std::string, std::string, bool)> @ imm = #-0x650
  38b184: 4603         	mov	r3, r0
  38b186: 9319         	str	r3, [sp, #0x64]
  38b188: ab12         	add	r3, sp, #0x48
  38b18a: 4618         	mov	r0, r3
  38b18c: f02a f3c2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x42a784
  38b190: ab11         	add	r3, sp, #0x44
  38b192: 4618         	mov	r0, r3
  38b194: f02a f3be    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x42a77c
  38b198: f255 fa8a    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x255514
  38b19c: 4603         	mov	r3, r0
  38b19e: 4618         	mov	r0, r3
  38b1a0: 4b45         	ldr	r3, [pc, #0x114]        @ 0x38b2b8 <PHASR::updateLaserDistance(float)+0x6b0>
  38b1a2: 447b         	add	r3, pc
  38b1a4: 4619         	mov	r1, r3
  38b1a6: 9a19         	ldr	r2, [sp, #0x64]
  38b1a8: f255 fcc0    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x255980
  38b1ac: bf00         	nop
  38b1ae: 9b0f         	ldr	r3, [sp, #0x3c]
  38b1b0: f8d3 31f4    	ldr.w	r3, [r3, #0x1f4]
  38b1b4: 681b         	ldr	r3, [r3]
  38b1b6: 3330         	adds	r3, #0x30
  38b1b8: 681b         	ldr	r3, [r3]
  38b1ba: 9a0f         	ldr	r2, [sp, #0x3c]
  38b1bc: f8d2 21f4    	ldr.w	r2, [r2, #0x1f4]
  38b1c0: ed9d 7a13    	vldr	s14, [sp, #76]
  38b1c4: eef0 7a08    	vmov.f32	s15, #3.000000e+00
  38b1c8: ee77 7a27    	vadd.f32	s15, s14, s15
  38b1cc: 4610         	mov	r0, r2
  38b1ce: ee17 1a90    	vmov	r1, s15
  38b1d2: 4798         	blx	r3
  38b1d4: f89d 3043    	ldrb.w	r3, [sp, #0x43]
  38b1d8: 2b00         	cmp	r3, #0x0
  38b1da: d063         	beq	0x38b2a4 <PHASR::updateLaserDistance(float)+0x69c> @ imm = #0xc6
  38b1dc: 9b0f         	ldr	r3, [sp, #0x3c]
  38b1de: f04f 0200    	mov.w	r2, #0x0
  38b1e2: f8c3 21fc    	str.w	r2, [r3, #0x1fc]
  38b1e6: 9b0f         	ldr	r3, [sp, #0x3c]
  38b1e8: f893 3200    	ldrb.w	r3, [r3, #0x200]
  38b1ec: f083 0301    	eor	r3, r3, #0x1
  38b1f0: b2da         	uxtb	r2, r3
  38b1f2: 9b0f         	ldr	r3, [sp, #0x3c]
  38b1f4: f883 2200    	strb.w	r2, [r3, #0x200]
  38b1f8: 9b0f         	ldr	r3, [sp, #0x3c]
  38b1fa: f893 3200    	ldrb.w	r3, [r3, #0x200]
  38b1fe: 2b00         	cmp	r3, #0x0
  38b200: d01f         	beq	0x38b242 <PHASR::updateLaserDistance(float)+0x63a> @ imm = #0x3e
  38b202: 9b0f         	ldr	r3, [sp, #0x3c]
  38b204: f8d3 31f4    	ldr.w	r3, [r3, #0x1f4]
  38b208: 681b         	ldr	r3, [r3]
  38b20a: f503 73de    	add.w	r3, r3, #0x1bc
  38b20e: 681c         	ldr	r4, [r3]
  38b210: 9b0f         	ldr	r3, [sp, #0x3c]
  38b212: f8d3 51f4    	ldr.w	r5, [r3, #0x1f4]
  38b216: 20ff         	movs	r0, #0xff
  38b218: 2100         	movs	r1, #0x0
  38b21a: 2200         	movs	r2, #0x0
  38b21c: f7fe f928    	bl	0x389470 <NewsLayer::onBack(cocos2d::CCObject*)+0x170> @ imm = #-0x1db0
  38b220: 4603         	mov	r3, r0
  38b222: 461a         	mov	r2, r3
  38b224: f88d 20e8    	strb.w	r2, [sp, #0xe8]
  38b228: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  38b22c: f88d 20e9    	strb.w	r2, [sp, #0xe9]
  38b230: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  38b234: f88d 30ea    	strb.w	r3, [sp, #0xea]
  38b238: ab3a         	add	r3, sp, #0xe8
  38b23a: 4628         	mov	r0, r5
  38b23c: 4619         	mov	r1, r3
  38b23e: 47a0         	blx	r4
  38b240: e030         	b	0x38b2a4 <PHASR::updateLaserDistance(float)+0x69c> @ imm = #0x60
  38b242: 9b0f         	ldr	r3, [sp, #0x3c]
  38b244: f8d3 31f4    	ldr.w	r3, [r3, #0x1f4]
  38b248: 681b         	ldr	r3, [r3]
  38b24a: f503 73de    	add.w	r3, r3, #0x1bc
  38b24e: 681c         	ldr	r4, [r3]
  38b250: 9b0f         	ldr	r3, [sp, #0x3c]
  38b252: f8d3 51f4    	ldr.w	r5, [r3, #0x1f4]
  38b256: 20c8         	movs	r0, #0xc8
  38b258: 2164         	movs	r1, #0x64
  38b25a: 2200         	movs	r2, #0x0
  38b25c: f7fe f908    	bl	0x389470 <NewsLayer::onBack(cocos2d::CCObject*)+0x170> @ imm = #-0x1df0
  38b260: 4603         	mov	r3, r0
  38b262: 461a         	mov	r2, r3
  38b264: f88d 20e8    	strb.w	r2, [sp, #0xe8]
  38b268: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  38b26c: f88d 20e9    	strb.w	r2, [sp, #0xe9]
  38b270: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  38b274: f88d 30ea    	strb.w	r3, [sp, #0xea]
  38b278: ab3a         	add	r3, sp, #0xe8
  38b27a: 4628         	mov	r0, r5
  38b27c: 4619         	mov	r1, r3
  38b27e: 47a0         	blx	r4
  38b280: e010         	b	0x38b2a4 <PHASR::updateLaserDistance(float)+0x69c> @ imm = #0x20
  38b282: ab36         	add	r3, sp, #0xd8
  38b284: 4618         	mov	r0, r3
  38b286: f02a f345    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x42a68a
  38b28a: f3fc ff0f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3fce1e
  38b28e: ab12         	add	r3, sp, #0x48
  38b290: 4618         	mov	r0, r3
  38b292: f02a f33f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x42a67e
  38b296: e7ff         	b	0x38b298 <PHASR::updateLaserDistance(float)+0x690> @ imm = #-0x2
  38b298: ab11         	add	r3, sp, #0x44
  38b29a: 4618         	mov	r0, r3
  38b29c: f02a f33a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x42a674
  38b2a0: f3fc ff04    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3fce08
  38b2a4: b043         	add	sp, #0x10c
  38b2a6: ecbd 8b02    	vpop	{d8}
  38b2aa: e8bd 8ff0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  ; --- end of code (Ghidra body ends at 0x38b2ad); words below are literal-pool data ---
  38b2ae: bf00         	nop
  38b2b0: 5d7a         	ldrb	r2, [r7, r5]
  38b2b2: 0044         	lsls	r4, r0, #0x1
  38b2b4: d784         	bvc	0x38b1c0 <PHASR::updateLaserDistance(float)+0x5b8> @ imm = #-0xf8
  38b2b6: ffff 5bc6    	vtbx.8	d21, {d31, fpinst2, mvfr0, mvfr1}, d6
  38b2ba: 0044         	lsls	r4, r0, #0x1

// ==== PHASR::updateRemoteLaserDistance
//      file offset 0x38b2c0 (= ELF address; Ghidra 0x39b2c0), 1192 bytes, Thumb-2
  38b2c0: e92d 47f0    	push.w	{r4, r5, r6, r7, r8, r9, r10, lr}
  38b2c4: b0ba         	sub	sp, #0xe8
  38b2c6: 900f         	str	r0, [sp, #0x3c]
  38b2c8: 910e         	str	r1, [sp, #0x38]
  38b2ca: 4cc2         	ldr	r4, [pc, #0x308]        @ 0x38b5d4 <PHASR::updateRemoteLaserDistance(float)+0x314>
  38b2cc: 447c         	add	r4, pc
  38b2ce: f04f 0300    	mov.w	r3, #0x0
  38b2d2: 9312         	str	r3, [sp, #0x48]
  38b2d4: f04f 0200    	mov.w	r2, #0x0
  38b2d8: f04f 0300    	mov.w	r3, #0x0
  38b2dc: e9cd 231a    	strd	r2, r3, [sp, #104]
  38b2e0: f04f 0200    	mov.w	r2, #0x0
  38b2e4: f04f 0300    	mov.w	r3, #0x0
  38b2e8: e9cd 231c    	strd	r2, r3, [sp, #112]
  38b2ec: f04f 0200    	mov.w	r2, #0x0
  38b2f0: f04f 0300    	mov.w	r3, #0x0
  38b2f4: e9cd 231e    	strd	r2, r3, [sp, #120]
  38b2f8: f04f 0200    	mov.w	r2, #0x0
  38b2fc: f04f 0300    	mov.w	r3, #0x0
  38b300: e9cd 2320    	strd	r2, r3, [sp, #128]
  38b304: f04f 0200    	mov.w	r2, #0x0
  38b308: f04f 0300    	mov.w	r3, #0x0
  38b30c: e9cd 2322    	strd	r2, r3, [sp, #136]
  38b310: f04f 0200    	mov.w	r2, #0x0
  38b314: f04f 0300    	mov.w	r3, #0x0
  38b318: e9cd 2324    	strd	r2, r3, [sp, #144]
  38b31c: 9b0f         	ldr	r3, [sp, #0x3c]
  38b31e: ed93 7a7f    	vldr	s14, [r3, #508]
  38b322: eddd 7a0e    	vldr	s15, [sp, #56]
  38b326: ee77 7a27    	vadd.f32	s15, s14, s15
  38b32a: 9b0f         	ldr	r3, [sp, #0x3c]
  38b32c: edc3 7a7f    	vstr	s15, [r3, #508]
  38b330: 9b0f         	ldr	r3, [sp, #0x3c]
  38b332: edd3 7a7f    	vldr	s15, [r3, #508]
  38b336: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  38b33a: ed9f 7ba3    	vldr	d7, [pc, #652]          @ 0x38b5c8 <PHASR::updateRemoteLaserDistance(float)+0x308>
  38b33e: eeb4 6bc7    	vcmpe.f64	d6, d7
  38b342: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  38b346: bfd4         	ite	le
  38b348: 2300         	movle	r3, #0x0
  38b34a: 2301         	movgt	r3, #0x1
  38b34c: f88d 3047    	strb.w	r3, [sp, #0x47]
  38b350: 9b0f         	ldr	r3, [sp, #0x3c]
  38b352: f893 30e5    	ldrb.w	r3, [r3, #0xe5]
  38b356: 2b00         	cmp	r3, #0x0
  38b358: f000 8198    	beq.w	0x38b68c <PHASR::updateRemoteLaserDistance(float)+0x3cc> @ imm = #0x330
  38b35c: 9b0f         	ldr	r3, [sp, #0x3c]
  38b35e: f8d3 31a4    	ldr.w	r3, [r3, #0x1a4]
  38b362: ee06 3a90    	vmov	s13, r3
  38b366: eef8 7ae6    	vcvt.f32.s32	s15, s13
  38b36a: edcd 7a12    	vstr	s15, [sp, #72]
  38b36e: 9b0f         	ldr	r3, [sp, #0x3c]
  38b370: edd3 7a72    	vldr	s15, [r3, #456]
  38b374: eeb1 7a67    	vneg.f32	s14, s15
  38b378: eddf 7a95    	vldr	s15, [pc, #596]         @ 0x38b5d0 <PHASR::updateRemoteLaserDistance(float)+0x310>
  38b37c: ee67 7a27    	vmul.f32	s15, s14, s15
  38b380: edcd 7a13    	vstr	s15, [sp, #76]
  38b384: eddd 7a13    	vldr	s15, [sp, #76]
  38b388: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  38b38c: ec51 0b17    	vmov	r0, r1, d7
  38b390: f74a edba    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0xb548c
  38b394: 4606         	mov	r6, r0
  38b396: 460f         	mov	r7, r1
  38b398: eddd 7a13    	vldr	s15, [sp, #76]
  38b39c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  38b3a0: ec51 0b17    	vmov	r0, r1, d7
  38b3a4: f74a edb6    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0xb5494
  38b3a8: 4602         	mov	r2, r0
  38b3aa: 460b         	mov	r3, r1
  38b3ac: a92a         	add	r1, sp, #0xa8
  38b3ae: 4608         	mov	r0, r1
  38b3b0: ec47 6b10    	vmov	d0, r6, r7
  38b3b4: ec43 2b11    	vmov	d1, r2, r3
  38b3b8: f7fe f898    	bl	0x3894ec <NewsLayer::onBack(cocos2d::CCObject*)+0x1ec> @ imm = #-0x1ed0
  38b3bc: 9b0f         	ldr	r3, [sp, #0x3c]
  38b3be: f8d3 31a4    	ldr.w	r3, [r3, #0x1a4]
  38b3c2: ee06 3a90    	vmov	s13, r3
  38b3c6: eeb8 7be6    	vcvt.f64.s32	d7, s13
  38b3ca: ab0a         	add	r3, sp, #0x28
  38b3cc: ed9d 5b2a    	vldr	d5, [sp, #168]
  38b3d0: ed9d 6b2c    	vldr	d6, [sp, #176]
  38b3d4: 4618         	mov	r0, r3
  38b3d6: eeb0 0b45    	vmov.f64	d0, d5
  38b3da: eeb0 1b46    	vmov.f64	d1, d6
  38b3de: eeb0 2b47    	vmov.f64	d2, d7
  38b3e2: f7fe f8ef    	bl	0x3895c4 <NewsLayer::onBack(cocos2d::CCObject*)+0x2c4> @ imm = #-0x1e22
  38b3e6: ad1a         	add	r5, sp, #0x68
  38b3e8: ab0a         	add	r3, sp, #0x28
  38b3ea: cb0f         	ldm	r3, {r0, r1, r2, r3}
  38b3ec: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  38b3f0: 9b0f         	ldr	r3, [sp, #0x3c]
  38b3f2: 681b         	ldr	r3, [r3]
  38b3f4: 3350         	adds	r3, #0x50
  38b3f6: 681b         	ldr	r3, [r3]
  38b3f8: 9a0f         	ldr	r2, [sp, #0x3c]
  38b3fa: 4610         	mov	r0, r2
  38b3fc: 4798         	blx	r3
  38b3fe: 4605         	mov	r5, r0
  38b400: ab26         	add	r3, sp, #0x98
  38b402: 4618         	mov	r0, r3
  38b404: f04f 0100    	mov.w	r1, #0x0
  38b408: f04f 0200    	mov.w	r2, #0x0
  38b40c: f2c4 1270    	movt	r2, #0x4170
  38b410: f207 fc6e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2078dc
  38b414: aa2e         	add	r2, sp, #0xb8
  38b416: ab26         	add	r3, sp, #0x98
  38b418: 4610         	mov	r0, r2
  38b41a: 4629         	mov	r1, r5
  38b41c: 461a         	mov	r2, r3
  38b41e: f7fe f855    	bl	0x3894cc <NewsLayer::onBack(cocos2d::CCObject*)+0x1cc> @ imm = #-0x1f56
  38b422: 9b0f         	ldr	r3, [sp, #0x3c]
  38b424: 681b         	ldr	r3, [r3]
  38b426: f503 73c2    	add.w	r3, r3, #0x184
  38b42a: 681b         	ldr	r3, [r3]
  38b42c: 9a0f         	ldr	r2, [sp, #0x3c]
  38b42e: a932         	add	r1, sp, #0xc8
  38b430: 4608         	mov	r0, r1
  38b432: 4611         	mov	r1, r2
  38b434: 4798         	blx	r3
  38b436: a916         	add	r1, sp, #0x58
  38b438: aa2e         	add	r2, sp, #0xb8
  38b43a: ab32         	add	r3, sp, #0xc8
  38b43c: 4608         	mov	r0, r1
  38b43e: 4611         	mov	r1, r2
  38b440: 461a         	mov	r2, r3
  38b442: f206 ff6f    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x206ede
  38b446: 4b64         	ldr	r3, [pc, #0x190]        @ 0x38b5d8 <PHASR::updateRemoteLaserDistance(float)+0x318>
  38b448: 58e3         	ldr	r3, [r4, r3]
  38b44a: 681b         	ldr	r3, [r3]
  38b44c: 681b         	ldr	r3, [r3]
  38b44e: f503 73c4    	add.w	r3, r3, #0x188
  38b452: 681b         	ldr	r3, [r3]
  38b454: 4a60         	ldr	r2, [pc, #0x180]        @ 0x38b5d8 <PHASR::updateRemoteLaserDistance(float)+0x318>
  38b456: 58a2         	ldr	r2, [r4, r2]
  38b458: 6812         	ldr	r2, [r2]
  38b45a: a932         	add	r1, sp, #0xc8
  38b45c: 4608         	mov	r0, r1
  38b45e: 4611         	mov	r1, r2
  38b460: 4798         	blx	r3
  38b462: a918         	add	r1, sp, #0x60
  38b464: aa16         	add	r2, sp, #0x58
  38b466: ab32         	add	r3, sp, #0xc8
  38b468: 4608         	mov	r0, r1
  38b46a: 4611         	mov	r1, r2
  38b46c: 461a         	mov	r2, r3
  38b46e: f206 ff59    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x206eb2
  38b472: eddd 7a18    	vldr	s15, [sp, #96]
  38b476: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  38b47a: eddd 7a19    	vldr	s15, [sp, #100]
  38b47e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  38b482: ab0a         	add	r3, sp, #0x28
  38b484: 4618         	mov	r0, r3
  38b486: eeb0 0b46    	vmov.f64	d0, d6
  38b48a: eeb0 1b47    	vmov.f64	d1, d7
  38b48e: f7fe f82d    	bl	0x3894ec <NewsLayer::onBack(cocos2d::CCObject*)+0x1ec> @ imm = #-0x1fa6
  38b492: ad22         	add	r5, sp, #0x88
  38b494: ab0a         	add	r3, sp, #0x28
  38b496: cb0f         	ldm	r3, {r0, r1, r2, r3}
  38b498: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  38b49c: ab26         	add	r3, sp, #0x98
  38b49e: ed9d 4b22    	vldr	d4, [sp, #136]
  38b4a2: ed9d 5b24    	vldr	d5, [sp, #144]
  38b4a6: ed9d 6b1a    	vldr	d6, [sp, #104]
  38b4aa: ed9d 7b1c    	vldr	d7, [sp, #112]
  38b4ae: 4618         	mov	r0, r3
  38b4b0: eeb0 0b44    	vmov.f64	d0, d4
  38b4b4: eeb0 1b45    	vmov.f64	d1, d5
  38b4b8: eeb0 2b46    	vmov.f64	d2, d6
  38b4bc: eeb0 3b47    	vmov.f64	d3, d7
  38b4c0: f7fe f828    	bl	0x389514 <NewsLayer::onBack(cocos2d::CCObject*)+0x214> @ imm = #-0x1fb0
  38b4c4: 9b0f         	ldr	r3, [sp, #0x3c]
  38b4c6: f8d3 31f4    	ldr.w	r3, [r3, #0x1f4]
  38b4ca: 681b         	ldr	r3, [r3]
  38b4cc: 334c         	adds	r3, #0x4c
  38b4ce: 681b         	ldr	r3, [r3]
  38b4d0: 9a0f         	ldr	r2, [sp, #0x3c]
  38b4d2: f8d2 11f4    	ldr.w	r1, [r2, #0x1f4]
  38b4d6: aa18         	add	r2, sp, #0x60
  38b4d8: 4608         	mov	r0, r1
  38b4da: 4611         	mov	r1, r2
  38b4dc: 4798         	blx	r3
  38b4de: 9b0f         	ldr	r3, [sp, #0x3c]
  38b4e0: f8d3 31f4    	ldr.w	r3, [r3, #0x1f4]
  38b4e4: 681b         	ldr	r3, [r3]
  38b4e6: 3398         	adds	r3, #0x98
  38b4e8: 681b         	ldr	r3, [r3]
  38b4ea: 9a0f         	ldr	r2, [sp, #0x3c]
  38b4ec: f8d2 11f4    	ldr.w	r1, [r2, #0x1f4]
  38b4f0: 9a0f         	ldr	r2, [sp, #0x3c]
  38b4f2: f8d2 21c8    	ldr.w	r2, [r2, #0x1c8]
  38b4f6: 4608         	mov	r0, r1
  38b4f8: 4611         	mov	r1, r2
  38b4fa: 4798         	blx	r3
  38b4fc: 4b37         	ldr	r3, [pc, #0xdc]         @ 0x38b5dc <PHASR::updateRemoteLaserDistance(float)+0x31c>
  38b4fe: 58e3         	ldr	r3, [r4, r3]
  38b500: 681d         	ldr	r5, [r3]
  38b502: ac02         	add	r4, sp, #0x8
  38b504: ab26         	add	r3, sp, #0x98
  38b506: cb0f         	ldm	r3, {r0, r1, r2, r3}
  38b508: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  38b50c: f44f 7384    	mov.w	r3, #0x108
  38b510: 9306         	str	r3, [sp, #0x18]
  38b512: 2300         	movs	r3, #0x0
  38b514: 9307         	str	r3, [sp, #0x1c]
  38b516: ab32         	add	r3, sp, #0xc8
  38b518: 9308         	str	r3, [sp, #0x20]
  38b51a: 466b         	mov	r3, sp
  38b51c: aa24         	add	r2, sp, #0x90
  38b51e: e892 0003    	ldm.w	r2, {r0, r1}
  38b522: e883 0003    	stm.w	r3, {r0, r1}
  38b526: ab22         	add	r3, sp, #0x88
  38b528: cb0c         	ldm	r3, {r2, r3}
  38b52a: 4628         	mov	r0, r5
  38b52c: f34a fd14    	bl	0x6d5f58 <cpSpaceSegmentQueryFirst> @ imm = #0x34aa28
  38b530: 4603         	mov	r3, r0
  38b532: 9314         	str	r3, [sp, #0x50]
  38b534: 9b14         	ldr	r3, [sp, #0x50]
  38b536: 2b00         	cmp	r3, #0x0
  38b538: f000 80a8    	beq.w	0x38b68c <PHASR::updateRemoteLaserDistance(float)+0x3cc> @ imm = #0x150
  38b53c: ae0a         	add	r6, sp, #0x28
  38b53e: ed9d 4b22    	vldr	d4, [sp, #136]
  38b542: ed9d 5b24    	vldr	d5, [sp, #144]
  38b546: ed9d 6b26    	vldr	d6, [sp, #152]
  38b54a: ed9d 7b28    	vldr	d7, [sp, #160]
  38b54e: 466c         	mov	r4, sp
  38b550: ad34         	add	r5, sp, #0xd0
  38b552: cd0f         	ldm	r5!, {r0, r1, r2, r3}
  38b554: c40f         	stm	r4!, {r0, r1, r2, r3}
  38b556: e895 0003    	ldm.w	r5, {r0, r1}
  38b55a: e884 0003    	stm.w	r4, {r0, r1}
  38b55e: ab32         	add	r3, sp, #0xc8
  38b560: cb0c         	ldm	r3, {r2, r3}
  38b562: 4630         	mov	r0, r6
  38b564: eeb0 0b44    	vmov.f64	d0, d4
  38b568: eeb0 1b45    	vmov.f64	d1, d5
  38b56c: eeb0 2b46    	vmov.f64	d2, d6
  38b570: eeb0 3b47    	vmov.f64	d3, d7
  38b574: f7fe f8b0    	bl	0x3896d8 <NewsLayer::onBack(cocos2d::CCObject*)+0x3d8> @ imm = #-0x1ea0
  38b578: ac1e         	add	r4, sp, #0x78
  38b57a: ab0a         	add	r3, sp, #0x28
  38b57c: cb0f         	ldm	r3, {r0, r1, r2, r3}
  38b57e: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  38b582: ab2e         	add	r3, sp, #0xb8
  38b584: ed9d 4b22    	vldr	d4, [sp, #136]
  38b588: ed9d 5b24    	vldr	d5, [sp, #144]
  38b58c: ed9d 6b1e    	vldr	d6, [sp, #120]
  38b590: ed9d 7b20    	vldr	d7, [sp, #128]
  38b594: 4618         	mov	r0, r3
  38b596: eeb0 0b44    	vmov.f64	d0, d4
  38b59a: eeb0 1b45    	vmov.f64	d1, d5
  38b59e: eeb0 2b46    	vmov.f64	d2, d6
  38b5a2: eeb0 3b47    	vmov.f64	d3, d7
  38b5a6: f7fd ffe1    	bl	0x38956c <NewsLayer::onBack(cocos2d::CCObject*)+0x26c> @ imm = #-0x203e
  38b5aa: ab2e         	add	r3, sp, #0xb8
  38b5ac: cb0f         	ldm	r3, {r0, r1, r2, r3}
  38b5ae: f34b fd83    	bl	0x6d70b8 <cpvlength>    @ imm = #0x34bb06
  38b5b2: ec41 0b17    	vmov	d7, r0, r1
  38b5b6: eef7 7bc7    	vcvt.f32.f64	s15, d7
  38b5ba: edcd 7a12    	vstr	s15, [sp, #72]
  38b5be: f89d 3047    	ldrb.w	r3, [sp, #0x47]
  38b5c2: 2b00         	cmp	r3, #0x0
  38b5c4: d062         	beq	0x38b68c <PHASR::updateRemoteLaserDistance(float)+0x3cc> @ imm = #0xc4
  38b5c6: e00b         	b	0x38b5e0 <PHASR::updateRemoteLaserDistance(float)+0x320> @ imm = #0x16
  38b5c8: 999a         	ldr	r1, [sp, #0x268]
  38b5ca: 9999         	ldr	r1, [sp, #0x264]
  38b5cc: 9999         	ldr	r1, [sp, #0x264]
  38b5ce: 3fb9         	subs	r7, #0xb9
  38b5d0: fa35 3c8e    	<unknown>
  38b5d4: 773c         	strb	r4, [r7, #0x1c]
  38b5d6: 005a         	lsls	r2, r3, #0x1
  38b5d8: d744         	bvc	0x38b664 <PHASR::updateRemoteLaserDistance(float)+0x3a4> @ imm = #0x88
  38b5da: ffff da00    	vtbl.8	d29, {d15, d16, d17}, d0
  38b5de: ffff ed9d    	<unknown>
  38b5e2: 7b1a         	ldrb	r2, [r3, #0xc]
  38b5e4: eef7 7bc7    	vcvt.f32.f64	s15, d7
  38b5e8: ee17 0a90    	vmov	r0, s15
  38b5ec: f751 fb4a    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xae96c
  38b5f0: 4607         	mov	r7, r0
  38b5f2: ed9d 7b1c    	vldr	d7, [sp, #112]
  38b5f6: eef7 7bc7    	vcvt.f32.f64	s15, d7
  38b5fa: ee17 0a90    	vmov	r0, s15
  38b5fe: f751 fb41    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xae97e
  38b602: 4606         	mov	r6, r0
  38b604: ed9d 7b1e    	vldr	d7, [sp, #120]
  38b608: eef7 7bc7    	vcvt.f32.f64	s15, d7
  38b60c: ee17 0a90    	vmov	r0, s15
  38b610: f751 fb38    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xae990
  38b614: 4605         	mov	r5, r0
  38b616: ed9d 7b20    	vldr	d7, [sp, #128]
  38b61a: eef7 7bc7    	vcvt.f32.f64	s15, d7
  38b61e: ee17 0a90    	vmov	r0, s15
  38b622: f751 fb2f    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xae9a2
  38b626: 4604         	mov	r4, r0
  38b628: 20ff         	movs	r0, #0xff
  38b62a: f759 fb6d    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xa6926
  38b62e: 4682         	mov	r10, r0
  38b630: 2032         	movs	r0, #0x32
  38b632: f759 fb69    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xa692e
  38b636: 4681         	mov	r9, r0
  38b638: 2000         	movs	r0, #0x0
  38b63a: f759 fb65    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xa6936
  38b63e: 4680         	mov	r8, r0
  38b640: 9b14         	ldr	r3, [sp, #0x50]
  38b642: 6ddb         	ldr	r3, [r3, #0x5c]
  38b644: 2b0d         	cmp	r3, #0xd
  38b646: d101         	bne	0x38b64c <PHASR::updateRemoteLaserDistance(float)+0x38c> @ imm = #0x2
  38b648: 2301         	movs	r3, #0x1
  38b64a: e000         	b	0x38b64e <PHASR::updateRemoteLaserDistance(float)+0x38e> @ imm = #0x0
  38b64c: 2300         	movs	r3, #0x0
  38b64e: 4618         	mov	r0, r3
  38b650: f759 fb5a    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xa694c
  38b654: 4603         	mov	r3, r0
  38b656: f8cd a000    	str.w	r10, [sp]
  38b65a: f8cd 9004    	str.w	r9, [sp, #0x4]
  38b65e: f8cd 8008    	str.w	r8, [sp, #0x8]
  38b662: 9303         	str	r3, [sp, #0xc]
  38b664: 2300         	movs	r3, #0x0
  38b666: 9304         	str	r3, [sp, #0x10]
  38b668: 4638         	mov	r0, r7
  38b66a: 4631         	mov	r1, r6
  38b66c: 462a         	mov	r2, r5
  38b66e: 4623         	mov	r3, r4
  38b670: f20e fbce    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x20e79c
  38b674: 4603         	mov	r3, r0
  38b676: 9315         	str	r3, [sp, #0x54]
  38b678: f255 f81a    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x255034
  38b67c: 4603         	mov	r3, r0
  38b67e: 4618         	mov	r0, r3
  38b680: 4b38         	ldr	r3, [pc, #0xe0]         @ 0x38b764 <PHASR::updateRemoteLaserDistance(float)+0x4a4>
  38b682: 447b         	add	r3, pc
  38b684: 4619         	mov	r1, r3
  38b686: 9a15         	ldr	r2, [sp, #0x54]
  38b688: f255 fa50    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x2554a0
  38b68c: 9b0f         	ldr	r3, [sp, #0x3c]
  38b68e: f8d3 31f4    	ldr.w	r3, [r3, #0x1f4]
  38b692: 681b         	ldr	r3, [r3]
  38b694: 3330         	adds	r3, #0x30
  38b696: 681b         	ldr	r3, [r3]
  38b698: 9a0f         	ldr	r2, [sp, #0x3c]
  38b69a: f8d2 21f4    	ldr.w	r2, [r2, #0x1f4]
  38b69e: ed9d 7a12    	vldr	s14, [sp, #72]
  38b6a2: eef0 7a08    	vmov.f32	s15, #3.000000e+00
  38b6a6: ee77 7a27    	vadd.f32	s15, s14, s15
  38b6aa: 4610         	mov	r0, r2
  38b6ac: ee17 1a90    	vmov	r1, s15
  38b6b0: 4798         	blx	r3
  38b6b2: f89d 3047    	ldrb.w	r3, [sp, #0x47]
  38b6b6: 2b00         	cmp	r3, #0x0
  38b6b8: d051         	beq	0x38b75e <PHASR::updateRemoteLaserDistance(float)+0x49e> @ imm = #0xa2
  38b6ba: 9b0f         	ldr	r3, [sp, #0x3c]
  38b6bc: f04f 0200    	mov.w	r2, #0x0
  38b6c0: f8c3 21fc    	str.w	r2, [r3, #0x1fc]
  38b6c4: 9b0f         	ldr	r3, [sp, #0x3c]
  38b6c6: f893 3200    	ldrb.w	r3, [r3, #0x200]
  38b6ca: f083 0301    	eor	r3, r3, #0x1
  38b6ce: b2da         	uxtb	r2, r3
  38b6d0: 9b0f         	ldr	r3, [sp, #0x3c]
  38b6d2: f883 2200    	strb.w	r2, [r3, #0x200]
  38b6d6: 9b0f         	ldr	r3, [sp, #0x3c]
  38b6d8: f893 3200    	ldrb.w	r3, [r3, #0x200]
  38b6dc: 2b00         	cmp	r3, #0x0
  38b6de: d01f         	beq	0x38b720 <PHASR::updateRemoteLaserDistance(float)+0x460> @ imm = #0x3e
  38b6e0: 9b0f         	ldr	r3, [sp, #0x3c]
  38b6e2: f8d3 31f4    	ldr.w	r3, [r3, #0x1f4]
  38b6e6: 681b         	ldr	r3, [r3]
  38b6e8: f503 73de    	add.w	r3, r3, #0x1bc
  38b6ec: 681c         	ldr	r4, [r3]
  38b6ee: 9b0f         	ldr	r3, [sp, #0x3c]
  38b6f0: f8d3 51f4    	ldr.w	r5, [r3, #0x1f4]
  38b6f4: 20ff         	movs	r0, #0xff
  38b6f6: 2100         	movs	r1, #0x0
  38b6f8: 2200         	movs	r2, #0x0
  38b6fa: f7fd feb9    	bl	0x389470 <NewsLayer::onBack(cocos2d::CCObject*)+0x170> @ imm = #-0x228e
  38b6fe: 4603         	mov	r3, r0
  38b700: 461a         	mov	r2, r3
  38b702: f88d 20c8    	strb.w	r2, [sp, #0xc8]
  38b706: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  38b70a: f88d 20c9    	strb.w	r2, [sp, #0xc9]
  38b70e: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  38b712: f88d 30ca    	strb.w	r3, [sp, #0xca]
  38b716: ab32         	add	r3, sp, #0xc8
  38b718: 4628         	mov	r0, r5
  38b71a: 4619         	mov	r1, r3
  38b71c: 47a0         	blx	r4
  38b71e: e01e         	b	0x38b75e <PHASR::updateRemoteLaserDistance(float)+0x49e> @ imm = #0x3c
  38b720: 9b0f         	ldr	r3, [sp, #0x3c]
  38b722: f8d3 31f4    	ldr.w	r3, [r3, #0x1f4]
  38b726: 681b         	ldr	r3, [r3]
  38b728: f503 73de    	add.w	r3, r3, #0x1bc
  38b72c: 681c         	ldr	r4, [r3]
  38b72e: 9b0f         	ldr	r3, [sp, #0x3c]
  38b730: f8d3 51f4    	ldr.w	r5, [r3, #0x1f4]
  38b734: 20c8         	movs	r0, #0xc8
  38b736: 2164         	movs	r1, #0x64
  38b738: 2200         	movs	r2, #0x0
  38b73a: f7fd fe99    	bl	0x389470 <NewsLayer::onBack(cocos2d::CCObject*)+0x170> @ imm = #-0x22ce
  38b73e: 4603         	mov	r3, r0
  38b740: 461a         	mov	r2, r3
  38b742: f88d 20c8    	strb.w	r2, [sp, #0xc8]
  38b746: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  38b74a: f88d 20c9    	strb.w	r2, [sp, #0xc9]
  38b74e: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  38b752: f88d 30ca    	strb.w	r3, [sp, #0xca]
  38b756: ab32         	add	r3, sp, #0xc8
  38b758: 4628         	mov	r0, r5
  38b75a: 4619         	mov	r1, r3
  38b75c: 47a0         	blx	r4
  38b75e: b03a         	add	sp, #0xe8
  38b760: e8bd 87f0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, pc}
  ; --- end of code (Ghidra body ends at 0x38b763); words below are literal-pool data ---
  38b764: 56de         	ldrsb	r6, [r3, r3]
  38b766: 0044         	lsls	r4, r0, #0x1

// ==== PHASR::doFire
//      file offset 0x38b768 (= ELF address; Ghidra 0x39b768), 20 bytes, Thumb-2
  38b768: b082         	sub	sp, #0x8
  38b76a: b082         	sub	sp, #0x8
  38b76c: 9001         	str	r0, [sp, #0x4]
  38b76e: 9100         	str	r1, [sp]
  38b770: a902         	add	r1, sp, #0x8
  38b772: e881 000c    	stm.w	r1, {r2, r3}
  38b776: b002         	add	sp, #0x8
  38b778: b002         	add	sp, #0x8
  38b77a: 4770         	bx	lr

// ==== PHASR::updateItemStep
//      file offset 0x38b77c (= ELF address; Ghidra 0x39b77c), 370 bytes, Thumb-2
  38b77c: b500         	push	{lr}
  38b77e: ed2d 8b02    	vpush	{d8}
  38b782: b085         	sub	sp, #0x14
  38b784: 9001         	str	r0, [sp, #0x4]
  38b786: 9100         	str	r1, [sp]
  38b788: 9b01         	ldr	r3, [sp, #0x4]
  38b78a: ed93 7a56    	vldr	s14, [r3, #344]
  38b78e: eddd 7a00    	vldr	s15, [sp]
  38b792: ee77 7a27    	vadd.f32	s15, s14, s15
  38b796: 9b01         	ldr	r3, [sp, #0x4]
  38b798: edc3 7a56    	vstr	s15, [r3, #344]
  38b79c: 9b01         	ldr	r3, [sp, #0x4]
  38b79e: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  38b7a2: 681b         	ldr	r3, [r3]
  38b7a4: 3390         	adds	r3, #0x90
  38b7a6: 681b         	ldr	r3, [r3]
  38b7a8: 9a01         	ldr	r2, [sp, #0x4]
  38b7aa: f8d2 11f0    	ldr.w	r1, [r2, #0x1f0]
  38b7ae: 9a01         	ldr	r2, [sp, #0x4]
  38b7b0: f892 2180    	ldrb.w	r2, [r2, #0x180]
  38b7b4: 4608         	mov	r0, r1
  38b7b6: 4611         	mov	r1, r2
  38b7b8: 4798         	blx	r3
  38b7ba: 9b01         	ldr	r3, [sp, #0x4]
  38b7bc: f8d3 31f4    	ldr.w	r3, [r3, #0x1f4]
  38b7c0: 681b         	ldr	r3, [r3]
  38b7c2: 3390         	adds	r3, #0x90
  38b7c4: 681b         	ldr	r3, [r3]
  38b7c6: 9a01         	ldr	r2, [sp, #0x4]
  38b7c8: f8d2 11f4    	ldr.w	r1, [r2, #0x1f4]
  38b7cc: 9a01         	ldr	r2, [sp, #0x4]
  38b7ce: f892 20e5    	ldrb.w	r2, [r2, #0xe5]
  38b7d2: 4608         	mov	r0, r1
  38b7d4: 4611         	mov	r1, r2
  38b7d6: 4798         	blx	r3
  38b7d8: 9b01         	ldr	r3, [sp, #0x4]
  38b7da: 681b         	ldr	r3, [r3]
  38b7dc: f503 7315    	add.w	r3, r3, #0x254
  38b7e0: 681b         	ldr	r3, [r3]
  38b7e2: 9a01         	ldr	r2, [sp, #0x4]
  38b7e4: 4610         	mov	r0, r2
  38b7e6: 9900         	ldr	r1, [sp]
  38b7e8: 4798         	blx	r3
  38b7ea: 9b01         	ldr	r3, [sp, #0x4]
  38b7ec: f893 3181    	ldrb.w	r3, [r3, #0x181]
  38b7f0: 2b00         	cmp	r3, #0x0
  38b7f2: d013         	beq	0x38b81c <PHASR::updateItemStep(float)+0xa0> @ imm = #0x26
  38b7f4: 9b01         	ldr	r3, [sp, #0x4]
  38b7f6: ed93 8a56    	vldr	s16, [r3, #344]
  38b7fa: 9b01         	ldr	r3, [sp, #0x4]
  38b7fc: 681b         	ldr	r3, [r3]
  38b7fe: f503 732e    	add.w	r3, r3, #0x2b8
  38b802: 681b         	ldr	r3, [r3]
  38b804: 9a01         	ldr	r2, [sp, #0x4]
  38b806: 4610         	mov	r0, r2
  38b808: 4798         	blx	r3
  38b80a: ee07 0a90    	vmov	s15, r0
  38b80e: eeb4 8ae7    	vcmpe.f32	s16, s15
  38b812: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  38b816: dd01         	ble	0x38b81c <PHASR::updateItemStep(float)+0xa0> @ imm = #0x2
  38b818: 2301         	movs	r3, #0x1
  38b81a: e000         	b	0x38b81e <PHASR::updateItemStep(float)+0xa2> @ imm = #0x0
  38b81c: 2300         	movs	r3, #0x0
  38b81e: 2b00         	cmp	r3, #0x0
  38b820: d043         	beq	0x38b8aa <PHASR::updateItemStep(float)+0x12e> @ imm = #0x86
  38b822: 9b01         	ldr	r3, [sp, #0x4]
  38b824: 2200         	movs	r2, #0x0
  38b826: f883 2181    	strb.w	r2, [r3, #0x181]
  38b82a: 9b01         	ldr	r3, [sp, #0x4]
  38b82c: f04f 0200    	mov.w	r2, #0x0
  38b830: f8c3 2110    	str.w	r2, [r3, #0x110]
  38b834: 9b01         	ldr	r3, [sp, #0x4]
  38b836: 681b         	ldr	r3, [r3]
  38b838: f503 732d    	add.w	r3, r3, #0x2b4
  38b83c: 681b         	ldr	r3, [r3]
  38b83e: 9a01         	ldr	r2, [sp, #0x4]
  38b840: 4610         	mov	r0, r2
  38b842: 4798         	blx	r3
  38b844: 4602         	mov	r2, r0
  38b846: 9b01         	ldr	r3, [sp, #0x4]
  38b848: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  38b84c: b21b         	sxth	r3, r3
  38b84e: 1ad3         	subs	r3, r2, r3
  38b850: 9303         	str	r3, [sp, #0xc]
  38b852: 9b01         	ldr	r3, [sp, #0x4]
  38b854: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  38b858: b29a         	uxth	r2, r3
  38b85a: 9b03         	ldr	r3, [sp, #0xc]
  38b85c: b29b         	uxth	r3, r3
  38b85e: 1ad3         	subs	r3, r2, r3
  38b860: b29b         	uxth	r3, r3
  38b862: b29a         	uxth	r2, r3
  38b864: 9b01         	ldr	r3, [sp, #0x4]
  38b866: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  38b86a: 9b01         	ldr	r3, [sp, #0x4]
  38b86c: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  38b870: b29a         	uxth	r2, r3
  38b872: 9b03         	ldr	r3, [sp, #0xc]
  38b874: b29b         	uxth	r3, r3
  38b876: 4413         	add	r3, r2
  38b878: b29a         	uxth	r2, r3
  38b87a: 9b01         	ldr	r3, [sp, #0x4]
  38b87c: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  38b880: b21b         	sxth	r3, r3
  38b882: ea03 73e3    	and.w	r3, r3, r3, asr #31
  38b886: b29b         	uxth	r3, r3
  38b888: b29b         	uxth	r3, r3
  38b88a: 4413         	add	r3, r2
  38b88c: b29b         	uxth	r3, r3
  38b88e: b29a         	uxth	r2, r3
  38b890: 9b01         	ldr	r3, [sp, #0x4]
  38b892: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  38b896: 9b01         	ldr	r3, [sp, #0x4]
  38b898: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  38b89c: b21b         	sxth	r3, r3
  38b89e: ea23 73e3    	bic.w	r3, r3, r3, asr #31
  38b8a2: b29a         	uxth	r2, r3
  38b8a4: 9b01         	ldr	r3, [sp, #0x4]
  38b8a6: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  38b8aa: 9801         	ldr	r0, [sp, #0x4]
  38b8ac: 9900         	ldr	r1, [sp]
  38b8ae: f7ff f9ab    	bl	0x38ac08 <PHASR::updateLaserDistance(float)> @ imm = #-0xcaa
  38b8b2: 9b01         	ldr	r3, [sp, #0x4]
  38b8b4: ed93 7a7e    	vldr	s14, [r3, #504]
  38b8b8: eddd 7a00    	vldr	s15, [sp]
  38b8bc: ee77 7a27    	vadd.f32	s15, s14, s15
  38b8c0: 9b01         	ldr	r3, [sp, #0x4]
  38b8c2: edc3 7a7e    	vstr	s15, [r3, #504]
  38b8c6: 9b01         	ldr	r3, [sp, #0x4]
  38b8c8: ed93 7a7e    	vldr	s14, [r3, #504]
  38b8cc: 9b01         	ldr	r3, [sp, #0x4]
  38b8ce: edd3 7a57    	vldr	s15, [r3, #348]
  38b8d2: eeb4 7ae7    	vcmpe.f32	s14, s15
  38b8d6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  38b8da: dd03         	ble	0x38b8e4 <PHASR::updateItemStep(float)+0x168> @ imm = #0x6
  38b8dc: 9b01         	ldr	r3, [sp, #0x4]
  38b8de: 2200         	movs	r2, #0x0
  38b8e0: f883 20e5    	strb.w	r2, [r3, #0xe5]
  38b8e4: b005         	add	sp, #0x14
  38b8e6: ecbd 8b02    	vpop	{d8}
  38b8ea: f85d fb04    	ldr	pc, [sp], #4

// ==== PHASR::updateRemoteItemStep
//      file offset 0x38b8f0 (= ELF address; Ghidra 0x39b8f0), 186 bytes, Thumb-2
  38b8f0: b500         	push	{lr}
  38b8f2: b083         	sub	sp, #0xc
  38b8f4: 9001         	str	r0, [sp, #0x4]
  38b8f6: 9100         	str	r1, [sp]
  38b8f8: 9b01         	ldr	r3, [sp, #0x4]
  38b8fa: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  38b8fe: 681b         	ldr	r3, [r3]
  38b900: 3390         	adds	r3, #0x90
  38b902: 681b         	ldr	r3, [r3]
  38b904: 9a01         	ldr	r2, [sp, #0x4]
  38b906: f8d2 11f0    	ldr.w	r1, [r2, #0x1f0]
  38b90a: 9a01         	ldr	r2, [sp, #0x4]
  38b90c: f892 2180    	ldrb.w	r2, [r2, #0x180]
  38b910: 4608         	mov	r0, r1
  38b912: 4611         	mov	r1, r2
  38b914: 4798         	blx	r3
  38b916: 9b01         	ldr	r3, [sp, #0x4]
  38b918: f8d3 31f4    	ldr.w	r3, [r3, #0x1f4]
  38b91c: 681b         	ldr	r3, [r3]
  38b91e: 3390         	adds	r3, #0x90
  38b920: 681b         	ldr	r3, [r3]
  38b922: 9a01         	ldr	r2, [sp, #0x4]
  38b924: f8d2 11f4    	ldr.w	r1, [r2, #0x1f4]
  38b928: 9a01         	ldr	r2, [sp, #0x4]
  38b92a: f892 20e5    	ldrb.w	r2, [r2, #0xe5]
  38b92e: 4608         	mov	r0, r1
  38b930: 4611         	mov	r1, r2
  38b932: 4798         	blx	r3
  38b934: 9b01         	ldr	r3, [sp, #0x4]
  38b936: 681b         	ldr	r3, [r3]
  38b938: f503 7315    	add.w	r3, r3, #0x254
  38b93c: 681b         	ldr	r3, [r3]
  38b93e: 9a01         	ldr	r2, [sp, #0x4]
  38b940: 4610         	mov	r0, r2
  38b942: 9900         	ldr	r1, [sp]
  38b944: 4798         	blx	r3
  38b946: 9b01         	ldr	r3, [sp, #0x4]
  38b948: f893 2194    	ldrb.w	r2, [r3, #0x194]
  38b94c: 9b01         	ldr	r3, [sp, #0x4]
  38b94e: f893 3195    	ldrb.w	r3, [r3, #0x195]
  38b952: 429a         	cmp	r2, r3
  38b954: d007         	beq	0x38b966 <PHASR::updateRemoteItemStep(float)+0x76> @ imm = #0xe
  38b956: 9b01         	ldr	r3, [sp, #0x4]
  38b958: 681b         	ldr	r3, [r3]
  38b95a: f503 7318    	add.w	r3, r3, #0x260
  38b95e: 681b         	ldr	r3, [r3]
  38b960: 9801         	ldr	r0, [sp, #0x4]
  38b962: 9900         	ldr	r1, [sp]
  38b964: 4798         	blx	r3
  38b966: 9801         	ldr	r0, [sp, #0x4]
  38b968: 9900         	ldr	r1, [sp]
  38b96a: f7ff fca9    	bl	0x38b2c0 <PHASR::updateRemoteLaserDistance(float)> @ imm = #-0x6ae
  38b96e: 9b01         	ldr	r3, [sp, #0x4]
  38b970: ed93 7a7e    	vldr	s14, [r3, #504]
  38b974: eddd 7a00    	vldr	s15, [sp]
  38b978: ee77 7a27    	vadd.f32	s15, s14, s15
  38b97c: 9b01         	ldr	r3, [sp, #0x4]
  38b97e: edc3 7a7e    	vstr	s15, [r3, #504]
  38b982: 9b01         	ldr	r3, [sp, #0x4]
  38b984: ed93 7a7e    	vldr	s14, [r3, #504]
  38b988: 9b01         	ldr	r3, [sp, #0x4]
  38b98a: edd3 7a57    	vldr	s15, [r3, #348]
  38b98e: ee77 7aa7    	vadd.f32	s15, s15, s15
  38b992: eeb4 7ae7    	vcmpe.f32	s14, s15
  38b996: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  38b99a: dd03         	ble	0x38b9a4 <PHASR::updateRemoteItemStep(float)+0xb4> @ imm = #0x6
  38b99c: 9b01         	ldr	r3, [sp, #0x4]
  38b99e: 2200         	movs	r2, #0x0
  38b9a0: f883 20e5    	strb.w	r2, [r3, #0xe5]
  38b9a4: b003         	add	sp, #0xc
  38b9a6: f85d fb04    	ldr	pc, [sp], #4

// ==== PHASR::remoteTriggerPull
//      file offset 0x38b9ac (= ELF address; Ghidra 0x39b9ac), 118 bytes, Thumb-2
  38b9ac: b500         	push	{lr}
  38b9ae: b083         	sub	sp, #0xc
  38b9b0: 9001         	str	r0, [sp, #0x4]
  38b9b2: 9100         	str	r1, [sp]
  38b9b4: 9b01         	ldr	r3, [sp, #0x4]
  38b9b6: ed93 7a44    	vldr	s14, [r3, #272]
  38b9ba: 9b01         	ldr	r3, [sp, #0x4]
  38b9bc: edd3 7a57    	vldr	s15, [r3, #348]
  38b9c0: eeb4 7ae7    	vcmpe.f32	s14, s15
  38b9c4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  38b9c8: dd28         	ble	0x38ba1c <PHASR::remoteTriggerPull(float)+0x70> @ imm = #0x50
  38b9ca: 9b01         	ldr	r3, [sp, #0x4]
  38b9cc: f04f 0200    	mov.w	r2, #0x0
  38b9d0: f8c3 2110    	str.w	r2, [r3, #0x110]
  38b9d4: 9b01         	ldr	r3, [sp, #0x4]
  38b9d6: 2201         	movs	r2, #0x1
  38b9d8: f883 2180    	strb.w	r2, [r3, #0x180]
  38b9dc: 9b01         	ldr	r3, [sp, #0x4]
  38b9de: 2201         	movs	r2, #0x1
  38b9e0: f883 20e5    	strb.w	r2, [r3, #0xe5]
  38b9e4: 9b01         	ldr	r3, [sp, #0x4]
  38b9e6: f04f 0200    	mov.w	r2, #0x0
  38b9ea: f8c3 21f8    	str.w	r2, [r3, #0x1f8]
  38b9ee: 9b01         	ldr	r3, [sp, #0x4]
  38b9f0: 681b         	ldr	r3, [r3]
  38b9f2: f503 7325    	add.w	r3, r3, #0x294
  38b9f6: 681b         	ldr	r3, [r3]
  38b9f8: 9801         	ldr	r0, [sp, #0x4]
  38b9fa: 4798         	blx	r3
  38b9fc: 9b01         	ldr	r3, [sp, #0x4]
  38b9fe: 681b         	ldr	r3, [r3]
  38ba00: f503 7342    	add.w	r3, r3, #0x308
  38ba04: 681b         	ldr	r3, [r3]
  38ba06: 9a01         	ldr	r2, [sp, #0x4]
  38ba08: 4610         	mov	r0, r2
  38ba0a: 4798         	blx	r3
  38ba0c: 9b01         	ldr	r3, [sp, #0x4]
  38ba0e: f893 3195    	ldrb.w	r3, [r3, #0x195]
  38ba12: 3301         	adds	r3, #0x1
  38ba14: b2da         	uxtb	r2, r3
  38ba16: 9b01         	ldr	r3, [sp, #0x4]
  38ba18: f883 2195    	strb.w	r2, [r3, #0x195]
  38ba1c: b003         	add	sp, #0xc
  38ba1e: f85d fb04    	ldr	pc, [sp], #4

// ==== PHASR::getShellPoint
//      file offset 0x38ba24 (= ELF address; Ghidra 0x39ba24), 204 bytes, Thumb-2
  38ba24: b530         	push	{r4, r5, lr}
  38ba26: b08f         	sub	sp, #0x3c
  38ba28: 9001         	str	r0, [sp, #0x4]
  38ba2a: 9100         	str	r1, [sp]
  38ba2c: 4c2e         	ldr	r4, [pc, #0xb8]         @ 0x38bae8 <PHASR::getShellPoint()+0xc4>
  38ba2e: 447c         	add	r4, pc
  38ba30: 9b00         	ldr	r3, [sp]
  38ba32: 681b         	ldr	r3, [r3]
  38ba34: 3350         	adds	r3, #0x50
  38ba36: 681b         	ldr	r3, [r3]
  38ba38: 9a00         	ldr	r2, [sp]
  38ba3a: 4610         	mov	r0, r2
  38ba3c: 4798         	blx	r3
  38ba3e: 4605         	mov	r5, r0
  38ba40: ab04         	add	r3, sp, #0x10
  38ba42: 4618         	mov	r0, r3
  38ba44: f04f 0100    	mov.w	r1, #0x0
  38ba48: f2c4 2148    	movt	r1, #0x4248
  38ba4c: f04f 0200    	mov.w	r2, #0x0
  38ba50: f2c4 12a0    	movt	r2, #0x41a0
  38ba54: f207 f94c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x207298
  38ba58: aa06         	add	r2, sp, #0x18
  38ba5a: ab04         	add	r3, sp, #0x10
  38ba5c: 4610         	mov	r0, r2
  38ba5e: 4629         	mov	r1, r5
  38ba60: 461a         	mov	r2, r3
  38ba62: f7fd fd33    	bl	0x3894cc <NewsLayer::onBack(cocos2d::CCObject*)+0x1cc> @ imm = #-0x259a
  38ba66: 9b00         	ldr	r3, [sp]
  38ba68: 681b         	ldr	r3, [r3]
  38ba6a: f503 73c2    	add.w	r3, r3, #0x184
  38ba6e: 681b         	ldr	r3, [r3]
  38ba70: 9a00         	ldr	r2, [sp]
  38ba72: a908         	add	r1, sp, #0x20
  38ba74: 4608         	mov	r0, r1
  38ba76: 4611         	mov	r1, r2
  38ba78: 4798         	blx	r3
  38ba7a: a902         	add	r1, sp, #0x8
  38ba7c: aa06         	add	r2, sp, #0x18
  38ba7e: ab08         	add	r3, sp, #0x20
  38ba80: 4608         	mov	r0, r1
  38ba82: 4611         	mov	r1, r2
  38ba84: 461a         	mov	r2, r3
  38ba86: f206 fc4d    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x20689a
  38ba8a: 4b18         	ldr	r3, [pc, #0x60]         @ 0x38baec <PHASR::getShellPoint()+0xc8>
  38ba8c: 58e3         	ldr	r3, [r4, r3]
  38ba8e: 681b         	ldr	r3, [r3]
  38ba90: 681b         	ldr	r3, [r3]
  38ba92: f503 73c4    	add.w	r3, r3, #0x188
  38ba96: 681b         	ldr	r3, [r3]
  38ba98: 4a14         	ldr	r2, [pc, #0x50]         @ 0x38baec <PHASR::getShellPoint()+0xc8>
  38ba9a: 58a2         	ldr	r2, [r4, r2]
  38ba9c: 6812         	ldr	r2, [r2]
  38ba9e: a908         	add	r1, sp, #0x20
  38baa0: 4608         	mov	r0, r1
  38baa2: 4611         	mov	r1, r2
  38baa4: 4798         	blx	r3
  38baa6: a906         	add	r1, sp, #0x18
  38baa8: aa02         	add	r2, sp, #0x8
  38baaa: ab08         	add	r3, sp, #0x20
  38baac: 4608         	mov	r0, r1
  38baae: 4611         	mov	r1, r2
  38bab0: 461a         	mov	r2, r3
  38bab2: f206 fc37    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x20686e
  38bab6: aa02         	add	r2, sp, #0x8
  38bab8: ab06         	add	r3, sp, #0x18
  38baba: 4610         	mov	r0, r2
  38babc: 4619         	mov	r1, r3
  38babe: f207 f945    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x20728a
  38bac2: eddd 7a02    	vldr	s15, [sp, #8]
  38bac6: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  38baca: eddd 7a03    	vldr	s15, [sp, #12]
  38bace: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  38bad2: 9b01         	ldr	r3, [sp, #0x4]
  38bad4: 4618         	mov	r0, r3
  38bad6: eeb0 0b46    	vmov.f64	d0, d6
  38bada: eeb0 1b47    	vmov.f64	d1, d7
  38bade: f7fd fd05    	bl	0x3894ec <NewsLayer::onBack(cocos2d::CCObject*)+0x1ec> @ imm = #-0x25f6
  38bae2: 9801         	ldr	r0, [sp, #0x4]
  38bae4: b00f         	add	sp, #0x3c
  38bae6: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x38bae7); words below are literal-pool data ---
  38bae8: 6fda         	ldr	r2, [r3, #0x7c]
  38baea: 005a         	lsls	r2, r3, #0x1
  38baec: d744         	bvc	0x38bb78 <PHASR::setPrimaryConfiguration()+0x40> @ imm = #0x88
  38baee: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== PHASR::playSound
//      file offset 0x38baf0 (= ELF address; Ghidra 0x39baf0), 72 bytes, Thumb-2
  38baf0: b510         	push	{r4, lr}
  38baf2: b088         	sub	sp, #0x20
  38baf4: 9003         	str	r0, [sp, #0xc]
  38baf6: 4a0e         	ldr	r2, [pc, #0x38]         @ 0x38bb30 <PHASR::playSound()+0x40>
  38baf8: 447a         	add	r2, pc
  38bafa: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x38bb34 <PHASR::playSound()+0x44>
  38bafc: 58d3         	ldr	r3, [r2, r3]
  38bafe: 681c         	ldr	r4, [r3]
  38bb00: 9b03         	ldr	r3, [sp, #0xc]
  38bb02: 681b         	ldr	r3, [r3]
  38bb04: f503 7348    	add.w	r3, r3, #0x320
  38bb08: 681b         	ldr	r3, [r3]
  38bb0a: 9a03         	ldr	r2, [sp, #0xc]
  38bb0c: a904         	add	r1, sp, #0x10
  38bb0e: 4608         	mov	r0, r1
  38bb10: 4611         	mov	r1, r2
  38bb12: 4798         	blx	r3
  38bb14: 466b         	mov	r3, sp
  38bb16: aa06         	add	r2, sp, #0x18
  38bb18: e892 0003    	ldm.w	r2, {r0, r1}
  38bb1c: e883 0003    	stm.w	r3, {r0, r1}
  38bb20: ab04         	add	r3, sp, #0x10
  38bb22: cb0c         	ldm	r3, {r2, r3}
  38bb24: 4620         	mov	r0, r4
  38bb26: 2124         	movs	r1, #0x24
  38bb28: f06c fa66    	bl	0x3f7ff8 <Sound::playSoundPosition(int, cpVect)> @ imm = #0x6c4cc
  38bb2c: b008         	add	sp, #0x20
  38bb2e: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x38bb2f); words below are literal-pool data ---
  38bb30: 6f10         	ldr	r0, [r2, #0x70]
  38bb32: 005a         	lsls	r2, r3, #0x1
  38bb34: d730         	bvc	0x38bb98 <PHASR::setPrimaryConfiguration()+0x60> @ imm = #0x60
  38bb36: ffff b570    	<unknown>

// ==== PHASR::setPrimaryConfiguration
//      file offset 0x38bb38 (= ELF address; Ghidra 0x39bb38), 404 bytes, Thumb-2
  38bb38: b570         	push	{r4, r5, r6, lr}
  38bb3a: b084         	sub	sp, #0x10
  38bb3c: 9001         	str	r0, [sp, #0x4]
  38bb3e: 4c60         	ldr	r4, [pc, #0x180]        @ 0x38bcc0 <PHASR::setPrimaryConfiguration()+0x188>
  38bb40: 447c         	add	r4, pc
  38bb42: 9b01         	ldr	r3, [sp, #0x4]
  38bb44: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  38bb48: 2b00         	cmp	r3, #0x0
  38bb4a: d019         	beq	0x38bb80 <PHASR::setPrimaryConfiguration()+0x48> @ imm = #0x32
  38bb4c: 9b01         	ldr	r3, [sp, #0x4]
  38bb4e: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  38bb52: 4b5c         	ldr	r3, [pc, #0x170]        @ 0x38bcc4 <PHASR::setPrimaryConfiguration()+0x18c>
  38bb54: 447b         	add	r3, pc
  38bb56: ed93 6b00    	vldr	d6, [r3]
  38bb5a: ed93 7b02    	vldr	d7, [r3, #8]
  38bb5e: 4610         	mov	r0, r2
  38bb60: eeb0 0b46    	vmov.f64	d0, d6
  38bb64: eeb0 1b47    	vmov.f64	d1, d7
  38bb68: f7fd fda0    	bl	0x3896ac <NewsLayer::onBack(cocos2d::CCObject*)+0x3ac> @ imm = #-0x24c0
  38bb6c: 9b01         	ldr	r3, [sp, #0x4]
  38bb6e: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  38bb72: 4618         	mov	r0, r3
  38bb74: f04f 0200    	mov.w	r2, #0x0
  38bb78: f04f 0300    	mov.w	r3, #0x0
  38bb7c: f347 fb09    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x347612
  38bb80: 9b01         	ldr	r3, [sp, #0x4]
  38bb82: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  38bb86: 681b         	ldr	r3, [r3]
  38bb88: 334c         	adds	r3, #0x4c
  38bb8a: 681d         	ldr	r5, [r3]
  38bb8c: 9b01         	ldr	r3, [sp, #0x4]
  38bb8e: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  38bb92: ab02         	add	r3, sp, #0x8
  38bb94: 4618         	mov	r0, r3
  38bb96: f04f 0100    	mov.w	r1, #0x0
  38bb9a: f04f 0200    	mov.w	r2, #0x0
  38bb9e: f207 f8a7    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x20714e
  38bba2: ab02         	add	r3, sp, #0x8
  38bba4: 4630         	mov	r0, r6
  38bba6: 4619         	mov	r1, r3
  38bba8: 47a8         	blx	r5
  38bbaa: 9b01         	ldr	r3, [sp, #0x4]
  38bbac: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  38bbb0: 681b         	ldr	r3, [r3]
  38bbb2: 337c         	adds	r3, #0x7c
  38bbb4: 681d         	ldr	r5, [r3]
  38bbb6: 9b01         	ldr	r3, [sp, #0x4]
  38bbb8: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  38bbbc: ab02         	add	r3, sp, #0x8
  38bbbe: 4618         	mov	r0, r3
  38bbc0: f04f 0100    	mov.w	r1, #0x0
  38bbc4: f649 129a    	movw	r2, #0x999a
  38bbc8: f6c3 6299    	movt	r2, #0x3e99
  38bbcc: f207 f890    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x207120
  38bbd0: ab02         	add	r3, sp, #0x8
  38bbd2: 4630         	mov	r0, r6
  38bbd4: 4619         	mov	r1, r3
  38bbd6: 47a8         	blx	r5
  38bbd8: 9b01         	ldr	r3, [sp, #0x4]
  38bbda: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  38bbde: 681b         	ldr	r3, [r3]
  38bbe0: 3398         	adds	r3, #0x98
  38bbe2: 681b         	ldr	r3, [r3]
  38bbe4: 9a01         	ldr	r2, [sp, #0x4]
  38bbe6: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  38bbea: 4610         	mov	r0, r2
  38bbec: f04f 0100    	mov.w	r1, #0x0
  38bbf0: 4798         	blx	r3
  38bbf2: 9b01         	ldr	r3, [sp, #0x4]
  38bbf4: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  38bbf8: 681b         	ldr	r3, [r3]
  38bbfa: 3340         	adds	r3, #0x40
  38bbfc: 681b         	ldr	r3, [r3]
  38bbfe: 9a01         	ldr	r2, [sp, #0x4]
  38bc00: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  38bc04: 4610         	mov	r0, r2
  38bc06: f04f 517e    	mov.w	r1, #0x3f800000
  38bc0a: 4798         	blx	r3
  38bc0c: 9b01         	ldr	r3, [sp, #0x4]
  38bc0e: 681b         	ldr	r3, [r3]
  38bc10: 334c         	adds	r3, #0x4c
  38bc12: 681d         	ldr	r5, [r3]
  38bc14: 9e01         	ldr	r6, [sp, #0x4]
  38bc16: ab02         	add	r3, sp, #0x8
  38bc18: 4618         	mov	r0, r3
  38bc1a: f04f 0100    	mov.w	r1, #0x0
  38bc1e: f04f 0200    	mov.w	r2, #0x0
  38bc22: f207 f865    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2070ca
  38bc26: ab02         	add	r3, sp, #0x8
  38bc28: 4630         	mov	r0, r6
  38bc2a: 4619         	mov	r1, r3
  38bc2c: 47a8         	blx	r5
  38bc2e: 9b01         	ldr	r3, [sp, #0x4]
  38bc30: 681b         	ldr	r3, [r3]
  38bc32: 3340         	adds	r3, #0x40
  38bc34: 681b         	ldr	r3, [r3]
  38bc36: 9a01         	ldr	r2, [sp, #0x4]
  38bc38: 4610         	mov	r0, r2
  38bc3a: f04f 517e    	mov.w	r1, #0x3f800000
  38bc3e: 4798         	blx	r3
  38bc40: 9b01         	ldr	r3, [sp, #0x4]
  38bc42: 681b         	ldr	r3, [r3]
  38bc44: 3398         	adds	r3, #0x98
  38bc46: 681b         	ldr	r3, [r3]
  38bc48: 9a01         	ldr	r2, [sp, #0x4]
  38bc4a: 4610         	mov	r0, r2
  38bc4c: f04f 0100    	mov.w	r1, #0x0
  38bc50: 4798         	blx	r3
  38bc52: 9b01         	ldr	r3, [sp, #0x4]
  38bc54: 2200         	movs	r2, #0x0
  38bc56: f883 2195    	strb.w	r2, [r3, #0x195]
  38bc5a: 9b01         	ldr	r3, [sp, #0x4]
  38bc5c: 2200         	movs	r2, #0x0
  38bc5e: f883 2194    	strb.w	r2, [r3, #0x194]
  38bc62: 9b01         	ldr	r3, [sp, #0x4]
  38bc64: f04f 0200    	mov.w	r2, #0x0
  38bc68: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  38bc6c: 9b01         	ldr	r3, [sp, #0x4]
  38bc6e: f8d3 31f4    	ldr.w	r3, [r3, #0x1f4]
  38bc72: 681b         	ldr	r3, [r3]
  38bc74: 3390         	adds	r3, #0x90
  38bc76: 681b         	ldr	r3, [r3]
  38bc78: 9a01         	ldr	r2, [sp, #0x4]
  38bc7a: f8d2 21f4    	ldr.w	r2, [r2, #0x1f4]
  38bc7e: 4610         	mov	r0, r2
  38bc80: 2100         	movs	r1, #0x0
  38bc82: 4798         	blx	r3
  38bc84: 9b01         	ldr	r3, [sp, #0x4]
  38bc86: f8d3 31f4    	ldr.w	r3, [r3, #0x1f4]
  38bc8a: 681b         	ldr	r3, [r3]
  38bc8c: 33e8         	adds	r3, #0xe8
  38bc8e: 681b         	ldr	r3, [r3]
  38bc90: 9a01         	ldr	r2, [sp, #0x4]
  38bc92: f8d2 21f4    	ldr.w	r2, [r2, #0x1f4]
  38bc96: 4610         	mov	r0, r2
  38bc98: 4798         	blx	r3
  38bc9a: 4b0b         	ldr	r3, [pc, #0x2c]         @ 0x38bcc8 <PHASR::setPrimaryConfiguration()+0x190>
  38bc9c: 58e3         	ldr	r3, [r4, r3]
  38bc9e: 681b         	ldr	r3, [r3]
  38bca0: 681b         	ldr	r3, [r3]
  38bca2: 33cc         	adds	r3, #0xcc
  38bca4: 681b         	ldr	r3, [r3]
  38bca6: 4a08         	ldr	r2, [pc, #0x20]         @ 0x38bcc8 <PHASR::setPrimaryConfiguration()+0x190>
  38bca8: 58a2         	ldr	r2, [r4, r2]
  38bcaa: 6812         	ldr	r2, [r2]
  38bcac: 4611         	mov	r1, r2
  38bcae: 9a01         	ldr	r2, [sp, #0x4]
  38bcb0: f8d2 21f4    	ldr.w	r2, [r2, #0x1f4]
  38bcb4: 4608         	mov	r0, r1
  38bcb6: 4611         	mov	r1, r2
  38bcb8: 2202         	movs	r2, #0x2
  38bcba: 4798         	blx	r3
  38bcbc: b004         	add	sp, #0x10
  38bcbe: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x38bcbf); words below are literal-pool data ---
  38bcc0: 6ec8         	ldr	r0, [r1, #0x6c]
  38bcc2: 005a         	lsls	r2, r3, #0x1
  38bcc4: 5268         	strh	r0, [r5, r1]
  38bcc6: 0044         	lsls	r4, r0, #0x1
  38bcc8: d744         	bvc	0x38bd54 <PHASR::setSecondaryConfiguration()+0x88> @ imm = #0x88
  38bcca: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== PHASR::setSecondaryConfiguration
//      file offset 0x38bccc (= ELF address; Ghidra 0x39bccc), 400 bytes, Thumb-2
  38bccc: b530         	push	{r4, r5, lr}
  38bcce: b085         	sub	sp, #0x14
  38bcd0: 9001         	str	r0, [sp, #0x4]
  38bcd2: 9b01         	ldr	r3, [sp, #0x4]
  38bcd4: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  38bcd8: 2b00         	cmp	r3, #0x0
  38bcda: d019         	beq	0x38bd10 <PHASR::setSecondaryConfiguration()+0x44> @ imm = #0x32
  38bcdc: 9b01         	ldr	r3, [sp, #0x4]
  38bcde: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  38bce2: 4b5d         	ldr	r3, [pc, #0x174]        @ 0x38be58 <PHASR::setSecondaryConfiguration()+0x18c>
  38bce4: 447b         	add	r3, pc
  38bce6: ed93 6b00    	vldr	d6, [r3]
  38bcea: ed93 7b02    	vldr	d7, [r3, #8]
  38bcee: 4610         	mov	r0, r2
  38bcf0: eeb0 0b46    	vmov.f64	d0, d6
  38bcf4: eeb0 1b47    	vmov.f64	d1, d7
  38bcf8: f7fd fcd8    	bl	0x3896ac <NewsLayer::onBack(cocos2d::CCObject*)+0x3ac> @ imm = #-0x2650
  38bcfc: 9b01         	ldr	r3, [sp, #0x4]
  38bcfe: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  38bd02: 4618         	mov	r0, r3
  38bd04: f04f 0200    	mov.w	r2, #0x0
  38bd08: f04f 0300    	mov.w	r3, #0x0
  38bd0c: f347 fa41    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x347482
  38bd10: 9b01         	ldr	r3, [sp, #0x4]
  38bd12: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  38bd16: 681b         	ldr	r3, [r3]
  38bd18: 334c         	adds	r3, #0x4c
  38bd1a: 681c         	ldr	r4, [r3]
  38bd1c: 9b01         	ldr	r3, [sp, #0x4]
  38bd1e: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  38bd22: ab02         	add	r3, sp, #0x8
  38bd24: 4618         	mov	r0, r3
  38bd26: f04f 0100    	mov.w	r1, #0x0
  38bd2a: f2cc 1120    	movt	r1, #0xc120
  38bd2e: f04f 0200    	mov.w	r2, #0x0
  38bd32: f2c4 1220    	movt	r2, #0x4120
  38bd36: f206 ffdb    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x206fb6
  38bd3a: ab02         	add	r3, sp, #0x8
  38bd3c: 4628         	mov	r0, r5
  38bd3e: 4619         	mov	r1, r3
  38bd40: 47a0         	blx	r4
  38bd42: 9b01         	ldr	r3, [sp, #0x4]
  38bd44: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  38bd48: 681b         	ldr	r3, [r3]
  38bd4a: 337c         	adds	r3, #0x7c
  38bd4c: 681c         	ldr	r4, [r3]
  38bd4e: 9b01         	ldr	r3, [sp, #0x4]
  38bd50: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  38bd54: ab02         	add	r3, sp, #0x8
  38bd56: 4618         	mov	r0, r3
  38bd58: f04f 517c    	mov.w	r1, #0x3f000000
  38bd5c: f04f 527c    	mov.w	r2, #0x3f000000
  38bd60: f206 ffc6    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x206f8c
  38bd64: ab02         	add	r3, sp, #0x8
  38bd66: 4628         	mov	r0, r5
  38bd68: 4619         	mov	r1, r3
  38bd6a: 47a0         	blx	r4
  38bd6c: 9b01         	ldr	r3, [sp, #0x4]
  38bd6e: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  38bd72: 681b         	ldr	r3, [r3]
  38bd74: 3398         	adds	r3, #0x98
  38bd76: 681b         	ldr	r3, [r3]
  38bd78: 9a01         	ldr	r2, [sp, #0x4]
  38bd7a: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  38bd7e: 4610         	mov	r0, r2
  38bd80: f04f 0100    	mov.w	r1, #0x0
  38bd84: f2c4 215c    	movt	r1, #0x425c
  38bd88: 4798         	blx	r3
  38bd8a: 9b01         	ldr	r3, [sp, #0x4]
  38bd8c: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  38bd90: 681b         	ldr	r3, [r3]
  38bd92: 3340         	adds	r3, #0x40
  38bd94: 681b         	ldr	r3, [r3]
  38bd96: 9a01         	ldr	r2, [sp, #0x4]
  38bd98: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  38bd9c: 4610         	mov	r0, r2
  38bd9e: f04f 517e    	mov.w	r1, #0x3f800000
  38bda2: 4798         	blx	r3
  38bda4: 9b01         	ldr	r3, [sp, #0x4]
  38bda6: 681b         	ldr	r3, [r3]
  38bda8: 334c         	adds	r3, #0x4c
  38bdaa: 681c         	ldr	r4, [r3]
  38bdac: 9d01         	ldr	r5, [sp, #0x4]
  38bdae: ab02         	add	r3, sp, #0x8
  38bdb0: 4618         	mov	r0, r3
  38bdb2: f04f 0100    	mov.w	r1, #0x0
  38bdb6: f04f 0200    	mov.w	r2, #0x0
  38bdba: f206 ff99    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x206f32
  38bdbe: ab02         	add	r3, sp, #0x8
  38bdc0: 4628         	mov	r0, r5
  38bdc2: 4619         	mov	r1, r3
  38bdc4: 47a0         	blx	r4
  38bdc6: 9b01         	ldr	r3, [sp, #0x4]
  38bdc8: 681b         	ldr	r3, [r3]
  38bdca: 3340         	adds	r3, #0x40
  38bdcc: 681b         	ldr	r3, [r3]
  38bdce: 9a01         	ldr	r2, [sp, #0x4]
  38bdd0: 4610         	mov	r0, r2
  38bdd2: f04f 517e    	mov.w	r1, #0x3f800000
  38bdd6: 4798         	blx	r3
  38bdd8: 9b01         	ldr	r3, [sp, #0x4]
  38bdda: 681b         	ldr	r3, [r3]
  38bddc: 3398         	adds	r3, #0x98
  38bdde: 681b         	ldr	r3, [r3]
  38bde0: 9a01         	ldr	r2, [sp, #0x4]
  38bde2: 4610         	mov	r0, r2
  38bde4: f04f 0100    	mov.w	r1, #0x0
  38bde8: 4798         	blx	r3
  38bdea: 9b01         	ldr	r3, [sp, #0x4]
  38bdec: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  38bdf0: 681b         	ldr	r3, [r3]
  38bdf2: 3390         	adds	r3, #0x90
  38bdf4: 681b         	ldr	r3, [r3]
  38bdf6: 9a01         	ldr	r2, [sp, #0x4]
  38bdf8: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  38bdfc: 4610         	mov	r0, r2
  38bdfe: 2100         	movs	r1, #0x0
  38be00: 4798         	blx	r3
  38be02: 9b01         	ldr	r3, [sp, #0x4]
  38be04: f8d3 31f4    	ldr.w	r3, [r3, #0x1f4]
  38be08: 681b         	ldr	r3, [r3]
  38be0a: 3390         	adds	r3, #0x90
  38be0c: 681b         	ldr	r3, [r3]
  38be0e: 9a01         	ldr	r2, [sp, #0x4]
  38be10: f8d2 21f4    	ldr.w	r2, [r2, #0x1f4]
  38be14: 4610         	mov	r0, r2
  38be16: 2100         	movs	r1, #0x0
  38be18: 4798         	blx	r3
  38be1a: 9b01         	ldr	r3, [sp, #0x4]
  38be1c: 2200         	movs	r2, #0x0
  38be1e: f883 20e5    	strb.w	r2, [r3, #0xe5]
  38be22: 9b01         	ldr	r3, [sp, #0x4]
  38be24: 2200         	movs	r2, #0x0
  38be26: f883 2195    	strb.w	r2, [r3, #0x195]
  38be2a: 9b01         	ldr	r3, [sp, #0x4]
  38be2c: 2200         	movs	r2, #0x0
  38be2e: f883 2194    	strb.w	r2, [r3, #0x194]
  38be32: 9b01         	ldr	r3, [sp, #0x4]
  38be34: f04f 0200    	mov.w	r2, #0x0
  38be38: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  38be3c: 9b01         	ldr	r3, [sp, #0x4]
  38be3e: f8d3 31f4    	ldr.w	r3, [r3, #0x1f4]
  38be42: 681b         	ldr	r3, [r3]
  38be44: 33e8         	adds	r3, #0xe8
  38be46: 681b         	ldr	r3, [r3]
  38be48: 9a01         	ldr	r2, [sp, #0x4]
  38be4a: f8d2 21f4    	ldr.w	r2, [r2, #0x1f4]
  38be4e: 4610         	mov	r0, r2
  38be50: 4798         	blx	r3
  38be52: b005         	add	sp, #0x14
  38be54: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x38be55); words below are literal-pool data ---
  38be56: bf00         	nop
  38be58: 50d8         	str	r0, [r3, r3]
  38be5a: 0044         	lsls	r4, r0, #0x1

// ==== PHASR::setMapConfiguration
//      file offset 0x38be5c (= ELF address; Ghidra 0x39be5c), 304 bytes, Thumb-2
  38be5c: b570         	push	{r4, r5, r6, lr}
  38be5e: b084         	sub	sp, #0x10
  38be60: 9001         	str	r0, [sp, #0x4]
  38be62: 4c48         	ldr	r4, [pc, #0x120]        @ 0x38bf84 <PHASR::setMapConfiguration()+0x128>
  38be64: 447c         	add	r4, pc
  38be66: 9b01         	ldr	r3, [sp, #0x4]
  38be68: f04f 0200    	mov.w	r2, #0x0
  38be6c: f8c3 2190    	str.w	r2, [r3, #0x190]
  38be70: 9b01         	ldr	r3, [sp, #0x4]
  38be72: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  38be76: 681b         	ldr	r3, [r3]
  38be78: 334c         	adds	r3, #0x4c
  38be7a: 681d         	ldr	r5, [r3]
  38be7c: 9b01         	ldr	r3, [sp, #0x4]
  38be7e: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  38be82: ab02         	add	r3, sp, #0x8
  38be84: 4618         	mov	r0, r3
  38be86: f04f 0100    	mov.w	r1, #0x0
  38be8a: f04f 0200    	mov.w	r2, #0x0
  38be8e: f206 ff2f    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x206e5e
  38be92: ab02         	add	r3, sp, #0x8
  38be94: 4630         	mov	r0, r6
  38be96: 4619         	mov	r1, r3
  38be98: 47a8         	blx	r5
  38be9a: 9b01         	ldr	r3, [sp, #0x4]
  38be9c: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  38bea0: 681b         	ldr	r3, [r3]
  38bea2: 337c         	adds	r3, #0x7c
  38bea4: 681d         	ldr	r5, [r3]
  38bea6: 9b01         	ldr	r3, [sp, #0x4]
  38bea8: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  38beac: ab02         	add	r3, sp, #0x8
  38beae: 4618         	mov	r0, r3
  38beb0: f04f 517c    	mov.w	r1, #0x3f000000
  38beb4: f04f 527c    	mov.w	r2, #0x3f000000
  38beb8: f206 ff1a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x206e34
  38bebc: ab02         	add	r3, sp, #0x8
  38bebe: 4630         	mov	r0, r6
  38bec0: 4619         	mov	r1, r3
  38bec2: 47a8         	blx	r5
  38bec4: 9b01         	ldr	r3, [sp, #0x4]
  38bec6: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  38beca: 681b         	ldr	r3, [r3]
  38becc: 3398         	adds	r3, #0x98
  38bece: 681b         	ldr	r3, [r3]
  38bed0: 9a01         	ldr	r2, [sp, #0x4]
  38bed2: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  38bed6: 4610         	mov	r0, r2
  38bed8: f04f 0100    	mov.w	r1, #0x0
  38bedc: 4798         	blx	r3
  38bede: 9b01         	ldr	r3, [sp, #0x4]
  38bee0: 681b         	ldr	r3, [r3]
  38bee2: 334c         	adds	r3, #0x4c
  38bee4: 681d         	ldr	r5, [r3]
  38bee6: 9e01         	ldr	r6, [sp, #0x4]
  38bee8: ab02         	add	r3, sp, #0x8
  38beea: 4618         	mov	r0, r3
  38beec: f04f 0100    	mov.w	r1, #0x0
  38bef0: f04f 0200    	mov.w	r2, #0x0
  38bef4: f206 fefc    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x206df8
  38bef8: ab02         	add	r3, sp, #0x8
  38befa: 4630         	mov	r0, r6
  38befc: 4619         	mov	r1, r3
  38befe: 47a8         	blx	r5
  38bf00: 9b01         	ldr	r3, [sp, #0x4]
  38bf02: 681b         	ldr	r3, [r3]
  38bf04: 3340         	adds	r3, #0x40
  38bf06: 681b         	ldr	r3, [r3]
  38bf08: 9901         	ldr	r1, [sp, #0x4]
  38bf0a: 4a1f         	ldr	r2, [pc, #0x7c]         @ 0x38bf88 <PHASR::setMapConfiguration()+0x12c>
  38bf0c: 58a2         	ldr	r2, [r4, r2]
  38bf0e: 6812         	ldr	r2, [r2]
  38bf10: 4608         	mov	r0, r1
  38bf12: 4611         	mov	r1, r2
  38bf14: 4798         	blx	r3
  38bf16: 9b01         	ldr	r3, [sp, #0x4]
  38bf18: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  38bf1c: 681b         	ldr	r3, [r3]
  38bf1e: 3390         	adds	r3, #0x90
  38bf20: 681b         	ldr	r3, [r3]
  38bf22: 9a01         	ldr	r2, [sp, #0x4]
  38bf24: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  38bf28: 4610         	mov	r0, r2
  38bf2a: 2100         	movs	r1, #0x0
  38bf2c: 4798         	blx	r3
  38bf2e: 9b01         	ldr	r3, [sp, #0x4]
  38bf30: f8d3 31f4    	ldr.w	r3, [r3, #0x1f4]
  38bf34: 681b         	ldr	r3, [r3]
  38bf36: 3390         	adds	r3, #0x90
  38bf38: 681b         	ldr	r3, [r3]
  38bf3a: 9a01         	ldr	r2, [sp, #0x4]
  38bf3c: f8d2 21f4    	ldr.w	r2, [r2, #0x1f4]
  38bf40: 4610         	mov	r0, r2
  38bf42: 2100         	movs	r1, #0x0
  38bf44: 4798         	blx	r3
  38bf46: 9b01         	ldr	r3, [sp, #0x4]
  38bf48: 2200         	movs	r2, #0x0
  38bf4a: f883 20e5    	strb.w	r2, [r3, #0xe5]
  38bf4e: 9b01         	ldr	r3, [sp, #0x4]
  38bf50: 2200         	movs	r2, #0x0
  38bf52: f883 2195    	strb.w	r2, [r3, #0x195]
  38bf56: 9b01         	ldr	r3, [sp, #0x4]
  38bf58: 2200         	movs	r2, #0x0
  38bf5a: f883 2194    	strb.w	r2, [r3, #0x194]
  38bf5e: 9b01         	ldr	r3, [sp, #0x4]
  38bf60: f04f 0200    	mov.w	r2, #0x0
  38bf64: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  38bf68: 9b01         	ldr	r3, [sp, #0x4]
  38bf6a: f8d3 31f4    	ldr.w	r3, [r3, #0x1f4]
  38bf6e: 681b         	ldr	r3, [r3]
  38bf70: 33e8         	adds	r3, #0xe8
  38bf72: 681b         	ldr	r3, [r3]
  38bf74: 9a01         	ldr	r2, [sp, #0x4]
  38bf76: f8d2 21f4    	ldr.w	r2, [r2, #0x1f4]
  38bf7a: 4610         	mov	r0, r2
  38bf7c: 4798         	blx	r3
  38bf7e: b004         	add	sp, #0x10
  38bf80: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x38bf81); words below are literal-pool data ---
  38bf82: bf00         	nop
  38bf84: 6ba4         	ldr	r4, [r4, #0x38]
  38bf86: 005a         	lsls	r2, r3, #0x1
  38bf88: d748         	bvc	0x38c01c <PHASR::setRight(bool)+0x4> @ imm = #0x90
  38bf8a: ffff b500    	<unknown>

// ==== PHASR::getWeaponTexture
//      file offset 0x38bf8c (= ELF address; Ghidra 0x39bf8c), 40 bytes, Thumb-2
  38bf8c: b500         	push	{lr}
  38bf8e: b083         	sub	sp, #0xc
  38bf90: 9001         	str	r0, [sp, #0x4]
  38bf92: 9b01         	ldr	r3, [sp, #0x4]
  38bf94: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  38bf98: 681b         	ldr	r3, [r3]
  38bf9a: f503 73fa    	add.w	r3, r3, #0x1f4
  38bf9e: 681b         	ldr	r3, [r3]
  38bfa0: 9a01         	ldr	r2, [sp, #0x4]
  38bfa2: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  38bfa6: 4610         	mov	r0, r2
  38bfa8: 4798         	blx	r3
  38bfaa: 4603         	mov	r3, r0
  38bfac: 4618         	mov	r0, r3
  38bfae: b003         	add	sp, #0xc
  38bfb0: f85d fb04    	ldr	pc, [sp], #4

// ==== PHASR::getWeaponRect
//      file offset 0x38bfb4 (= ELF address; Ghidra 0x39bfb4), 38 bytes, Thumb-2
  38bfb4: b500         	push	{lr}
  38bfb6: b083         	sub	sp, #0xc
  38bfb8: 9001         	str	r0, [sp, #0x4]
  38bfba: 9100         	str	r1, [sp]
  38bfbc: 9b00         	ldr	r3, [sp]
  38bfbe: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  38bfc2: 4618         	mov	r0, r3
  38bfc4: f750 fe8a    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0xaf2ec
  38bfc8: 4603         	mov	r3, r0
  38bfca: 9801         	ldr	r0, [sp, #0x4]
  38bfcc: 4619         	mov	r1, r3
  38bfce: f207 f9a3    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x207346
  38bfd2: 9801         	ldr	r0, [sp, #0x4]
  38bfd4: b003         	add	sp, #0xc
  38bfd6: f85d fb04    	ldr	pc, [sp], #4

// ==== PHASR::isRight
//      file offset 0x38bfdc (= ELF address; Ghidra 0x39bfdc), 60 bytes, Thumb-2
  38bfdc: b500         	push	{lr}
  38bfde: b083         	sub	sp, #0xc
  38bfe0: 9001         	str	r0, [sp, #0x4]
  38bfe2: 9b01         	ldr	r3, [sp, #0x4]
  38bfe4: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  38bfe8: 681b         	ldr	r3, [r3]
  38bfea: 3334         	adds	r3, #0x34
  38bfec: 681b         	ldr	r3, [r3]
  38bfee: 9a01         	ldr	r2, [sp, #0x4]
  38bff0: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  38bff4: 4610         	mov	r0, r2
  38bff6: 4798         	blx	r3
  38bff8: ee07 0a10    	vmov	s14, r0
  38bffc: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  38c000: eeb4 7ae7    	vcmpe.f32	s14, s15
  38c004: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  38c008: bfd4         	ite	le
  38c00a: 2300         	movle	r3, #0x0
  38c00c: 2301         	movgt	r3, #0x1
  38c00e: b2db         	uxtb	r3, r3
  38c010: 4618         	mov	r0, r3
  38c012: b003         	add	sp, #0xc
  38c014: f85d fb04    	ldr	pc, [sp], #4

// ==== PHASR::setRight
//      file offset 0x38c018 (= ELF address; Ghidra 0x39c018), 64 bytes, Thumb-2
  38c018: b500         	push	{lr}
  38c01a: b083         	sub	sp, #0xc
  38c01c: 9001         	str	r0, [sp, #0x4]
  38c01e: 460b         	mov	r3, r1
  38c020: f88d 3003    	strb.w	r3, [sp, #0x3]
  38c024: 9b01         	ldr	r3, [sp, #0x4]
  38c026: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  38c02a: 681b         	ldr	r3, [r3]
  38c02c: 3330         	adds	r3, #0x30
  38c02e: 681a         	ldr	r2, [r3]
  38c030: 9b01         	ldr	r3, [sp, #0x4]
  38c032: f8d3 11ec    	ldr.w	r1, [r3, #0x1ec]
  38c036: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  38c03a: 2b00         	cmp	r3, #0x0
  38c03c: d002         	beq	0x38c044 <PHASR::setRight(bool)+0x2c> @ imm = #0x4
  38c03e: f04f 537e    	mov.w	r3, #0x3f800000
  38c042: e003         	b	0x38c04c <PHASR::setRight(bool)+0x34> @ imm = #0x6
  38c044: f04f 0300    	mov.w	r3, #0x0
  38c048: f6cb 7380    	movt	r3, #0xbf80
  38c04c: 4608         	mov	r0, r1
  38c04e: 4619         	mov	r1, r3
  38c050: 4790         	blx	r2
  38c052: b003         	add	sp, #0xc
  38c054: f85d fb04    	ldr	pc, [sp], #4

// ==== PHASR::getRANGE
//      file offset 0x38c058 (= ELF address; Ghidra 0x39c058), 16 bytes, Thumb-2
  38c058: 4b02         	ldr	r3, [pc, #0x8]          @ 0x38c064 <PHASR::getRANGE()+0xc>
  38c05a: 447b         	add	r3, pc
  38c05c: 681b         	ldr	r3, [r3]
  38c05e: 4618         	mov	r0, r3
  38c060: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x38c061); words below are literal-pool data ---
  38c062: bf00         	nop
  38c064: 74ee         	strb	r6, [r5, #0x13]
  38c066: 005a         	lsls	r2, r3, #0x1

// ==== PHASR::getDAMAGE
//      file offset 0x38c068 (= ELF address; Ghidra 0x39c068), 16 bytes, Thumb-2
  38c068: 4b02         	ldr	r3, [pc, #0x8]          @ 0x38c074 <PHASR::getDAMAGE()+0xc>
  38c06a: 447b         	add	r3, pc
  38c06c: 681b         	ldr	r3, [r3]
  38c06e: 4618         	mov	r0, r3
  38c070: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x38c071); words below are literal-pool data ---
  38c072: bf00         	nop
  38c074: 74da         	strb	r2, [r3, #0x13]
  38c076: 005a         	lsls	r2, r3, #0x1

// ==== PHASR::create
//      file offset 0x41747c (= ELF address; Ghidra 0x42747c), 112 bytes, Thumb-2
  41747c: b510         	push	{r4, lr}
  41747e: b082         	sub	sp, #0x8
  417480: f44f 7002    	mov.w	r0, #0x208
  417484: f370 fa6e    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x3704dc
  417488: 4603         	mov	r3, r0
  41748a: 461c         	mov	r4, r3
  41748c: 4620         	mov	r0, r4
  41748e: f773 f805    	bl	0x38a49c <PHASR::PHASR()> @ imm = #-0x8cff6
  417492: 9401         	str	r4, [sp, #0x4]
  417494: 9b01         	ldr	r3, [sp, #0x4]
  417496: 2b00         	cmp	r3, #0x0
  417498: d00a         	beq	0x4174b0 <PHASR::create()+0x34> @ imm = #0x14
  41749a: 9b01         	ldr	r3, [sp, #0x4]
  41749c: 681b         	ldr	r3, [r3]
  41749e: 3318         	adds	r3, #0x18
  4174a0: 681b         	ldr	r3, [r3]
  4174a2: 9801         	ldr	r0, [sp, #0x4]
  4174a4: 4798         	blx	r3
  4174a6: 4603         	mov	r3, r0
  4174a8: 2b00         	cmp	r3, #0x0
  4174aa: d001         	beq	0x4174b0 <PHASR::create()+0x34> @ imm = #0x2
  4174ac: 2301         	movs	r3, #0x1
  4174ae: e000         	b	0x4174b2 <PHASR::create()+0x36> @ imm = #0x0
  4174b0: 2300         	movs	r3, #0x0
  4174b2: 2b00         	cmp	r3, #0x0
  4174b4: d005         	beq	0x4174c2 <PHASR::create()+0x46> @ imm = #0xa
  4174b6: 9b01         	ldr	r3, [sp, #0x4]
  4174b8: 4618         	mov	r0, r3
  4174ba: f180 fd1f    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x180a3e
  4174be: 9b01         	ldr	r3, [sp, #0x4]
  4174c0: e011         	b	0x4174e6 <PHASR::create()+0x6a> @ imm = #0x22
  4174c2: 9b01         	ldr	r3, [sp, #0x4]
  4174c4: 2b00         	cmp	r3, #0x0
  4174c6: d005         	beq	0x4174d4 <PHASR::create()+0x58> @ imm = #0xa
  4174c8: 9b01         	ldr	r3, [sp, #0x4]
  4174ca: 681b         	ldr	r3, [r3]
  4174cc: 3308         	adds	r3, #0x8
  4174ce: 681b         	ldr	r3, [r3]
  4174d0: 9801         	ldr	r0, [sp, #0x4]
  4174d2: 4798         	blx	r3
  4174d4: 2300         	movs	r3, #0x0
  4174d6: 9301         	str	r3, [sp, #0x4]
  4174d8: 2300         	movs	r3, #0x0
  4174da: e004         	b	0x4174e6 <PHASR::create()+0x6a> @ imm = #0x8
  4174dc: 4620         	mov	r0, r4
  4174de: f370 fde1    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x370bc2
  4174e2: f370 fde3    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x370bc6
  4174e6: 4618         	mov	r0, r3
  4174e8: b002         	add	sp, #0x8
  4174ea: bd10         	pop	{r4, pc}
