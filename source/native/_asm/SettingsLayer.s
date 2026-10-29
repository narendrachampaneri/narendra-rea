// SettingsLayer: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 14 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../SettingsLayer.cpp

// ==== SettingsLayer::create
//      file offset 0x3da87c (= ELF address; Ghidra 0x3ea87c), 112 bytes, Thumb-2
  3da87c: b510         	push	{r4, lr}
  3da87e: b082         	sub	sp, #0x8
  3da880: f44f 70a4    	mov.w	r0, #0x148
  3da884: f3ad f86e    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x3ad0dc
  3da888: 4603         	mov	r3, r0
  3da88a: 461c         	mov	r4, r3
  3da88c: 4620         	mov	r0, r4
  3da88e: f000 f82d    	bl	0x3da8ec <SettingsLayer::SettingsLayer()> @ imm = #0x5a
  3da892: 9401         	str	r4, [sp, #0x4]
  3da894: 9b01         	ldr	r3, [sp, #0x4]
  3da896: 2b00         	cmp	r3, #0x0
  3da898: d00a         	beq	0x3da8b0 <SettingsLayer::create()+0x34> @ imm = #0x14
  3da89a: 9b01         	ldr	r3, [sp, #0x4]
  3da89c: 681b         	ldr	r3, [r3]
  3da89e: 3318         	adds	r3, #0x18
  3da8a0: 681b         	ldr	r3, [r3]
  3da8a2: 9801         	ldr	r0, [sp, #0x4]
  3da8a4: 4798         	blx	r3
  3da8a6: 4603         	mov	r3, r0
  3da8a8: 2b00         	cmp	r3, #0x0
  3da8aa: d001         	beq	0x3da8b0 <SettingsLayer::create()+0x34> @ imm = #0x2
  3da8ac: 2301         	movs	r3, #0x1
  3da8ae: e000         	b	0x3da8b2 <SettingsLayer::create()+0x36> @ imm = #0x0
  3da8b0: 2300         	movs	r3, #0x0
  3da8b2: 2b00         	cmp	r3, #0x0
  3da8b4: d005         	beq	0x3da8c2 <SettingsLayer::create()+0x46> @ imm = #0xa
  3da8b6: 9b01         	ldr	r3, [sp, #0x4]
  3da8b8: 4618         	mov	r0, r3
  3da8ba: f1bd fb1f    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x1bd63e
  3da8be: 9b01         	ldr	r3, [sp, #0x4]
  3da8c0: e011         	b	0x3da8e6 <SettingsLayer::create()+0x6a> @ imm = #0x22
  3da8c2: 9b01         	ldr	r3, [sp, #0x4]
  3da8c4: 2b00         	cmp	r3, #0x0
  3da8c6: d005         	beq	0x3da8d4 <SettingsLayer::create()+0x58> @ imm = #0xa
  3da8c8: 9b01         	ldr	r3, [sp, #0x4]
  3da8ca: 681b         	ldr	r3, [r3]
  3da8cc: 3308         	adds	r3, #0x8
  3da8ce: 681b         	ldr	r3, [r3]
  3da8d0: 9801         	ldr	r0, [sp, #0x4]
  3da8d2: 4798         	blx	r3
  3da8d4: 2300         	movs	r3, #0x0
  3da8d6: 9301         	str	r3, [sp, #0x4]
  3da8d8: 2300         	movs	r3, #0x0
  3da8da: e004         	b	0x3da8e6 <SettingsLayer::create()+0x6a> @ imm = #0x8
  3da8dc: 4620         	mov	r0, r4
  3da8de: f3ad fbe1    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3ad7c2
  3da8e2: f3ad fbe3    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3ad7c6
  3da8e6: 4618         	mov	r0, r3
  3da8e8: b002         	add	sp, #0x8
  3da8ea: bd10         	pop	{r4, pc}

// ==== SettingsLayer::SettingsLayer
//      file offset 0x3da8ec (= ELF address; Ghidra 0x3ea8ec), 88 bytes, Thumb-2
  3da8ec: b510         	push	{r4, lr}
  3da8ee: b082         	sub	sp, #0x8
  3da8f0: 9001         	str	r0, [sp, #0x4]
  3da8f2: 4c12         	ldr	r4, [pc, #0x48]         @ 0x3da93c <SettingsLayer::SettingsLayer()+0x50>
  3da8f4: 447c         	add	r4, pc
  3da8f6: 9b01         	ldr	r3, [sp, #0x4]
  3da8f8: 4618         	mov	r0, r3
  3da8fa: f1d2 fbaf    	bl	0x5ad05c <cocos2d::CCLayer::CCLayer()> @ imm = #0x1d275e
  3da8fe: 9b01         	ldr	r3, [sp, #0x4]
  3da900: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x3da940 <SettingsLayer::SettingsLayer()+0x54>
  3da902: 58a2         	ldr	r2, [r4, r2]
  3da904: 3208         	adds	r2, #0x8
  3da906: 601a         	str	r2, [r3]
  3da908: 9b01         	ldr	r3, [sp, #0x4]
  3da90a: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x3da940 <SettingsLayer::SettingsLayer()+0x54>
  3da90c: 58a2         	ldr	r2, [r4, r2]
  3da90e: f502 7204    	add.w	r2, r2, #0x210
  3da912: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  3da916: 9b01         	ldr	r3, [sp, #0x4]
  3da918: 4a09         	ldr	r2, [pc, #0x24]         @ 0x3da940 <SettingsLayer::SettingsLayer()+0x54>
  3da91a: 58a2         	ldr	r2, [r4, r2]
  3da91c: f502 7210    	add.w	r2, r2, #0x240
  3da920: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  3da924: 9b01         	ldr	r3, [sp, #0x4]
  3da926: 4a06         	ldr	r2, [pc, #0x18]         @ 0x3da940 <SettingsLayer::SettingsLayer()+0x54>
  3da928: 58a2         	ldr	r2, [r4, r2]
  3da92a: f502 7213    	add.w	r2, r2, #0x24c
  3da92e: f8c3 20ec    	str.w	r2, [r3, #0xec]
  3da932: 9b01         	ldr	r3, [sp, #0x4]
  3da934: 4618         	mov	r0, r3
  3da936: b002         	add	sp, #0x8
  3da938: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3da939); words below are literal-pool data ---
  3da93a: bf00         	nop
  3da93c: 8114         	strh	r4, [r2, #0x8]
  3da93e: 0055         	lsls	r5, r2, #0x1
  3da940: dee4         	udf	#0xe4
  3da942: ffff b500    	<unknown>

// ==== SettingsLayer::scene
//      file offset 0x3da944 (= ELF address; Ghidra 0x3ea944), 46 bytes, Thumb-2
  3da944: b500         	push	{lr}
  3da946: b083         	sub	sp, #0xc
  3da948: f1d5 f88a    	bl	0x5afa60 <cocos2d::CCScene::create()> @ imm = #0x1d5114
  3da94c: 4603         	mov	r3, r0
  3da94e: 9300         	str	r3, [sp]
  3da950: f7ff ff94    	bl	0x3da87c <SettingsLayer::create()> @ imm = #-0xd8
  3da954: 4603         	mov	r3, r0
  3da956: 9301         	str	r3, [sp, #0x4]
  3da958: 9b00         	ldr	r3, [sp]
  3da95a: 681b         	ldr	r3, [r3]
  3da95c: 33c8         	adds	r3, #0xc8
  3da95e: 681b         	ldr	r3, [r3]
  3da960: 9a00         	ldr	r2, [sp]
  3da962: 4610         	mov	r0, r2
  3da964: 9901         	ldr	r1, [sp, #0x4]
  3da966: 4798         	blx	r3
  3da968: 9b00         	ldr	r3, [sp]
  3da96a: 4618         	mov	r0, r3
  3da96c: b003         	add	sp, #0xc
  3da96e: f85d fb04    	ldr	pc, [sp], #4

// ==== SettingsLayer::init
//      file offset 0x3da978 (= ELF address; Ghidra 0x3ea978), 4266 bytes, Thumb-2
  3da978: b5f0         	push	{r4, r5, r6, r7, lr}
  3da97a: ed2d 8b02    	vpush	{d8}
  3da97e: b0bd         	sub	sp, #0xf4
  3da980: 9003         	str	r0, [sp, #0xc]
  3da982: 4c09         	ldr	r4, [pc, #0x24]         @ 0x3da9a8 <SettingsLayer::init()+0x30>
  3da984: 447c         	add	r4, pc
  3da986: 9b03         	ldr	r3, [sp, #0xc]
  3da988: 4618         	mov	r0, r3
  3da98a: f1d2 fc35    	bl	0x5ad1f8 <cocos2d::CCLayer::init()> @ imm = #0x1d286a
  3da98e: 4603         	mov	r3, r0
  3da990: f88d 3015    	strb.w	r3, [sp, #0x15]
  3da994: f89d 3015    	ldrb.w	r3, [sp, #0x15]
  3da998: f083 0301    	eor	r3, r3, #0x1
  3da99c: b2db         	uxtb	r3, r3
  3da99e: 2b00         	cmp	r3, #0x0
  3da9a0: d004         	beq	0x3da9ac <SettingsLayer::init()+0x34> @ imm = #0x8
  3da9a2: 2400         	movs	r4, #0x0
  3da9a4: f000 bff9    	b.w	0x3db99a <SettingsLayer::init()+0x1022> @ imm = #0xff2
  3da9a8: 8084         	strh	r4, [r0, #0x4]
  3da9aa: 0055         	lsls	r5, r2, #0x1
  3da9ac: 9b03         	ldr	r3, [sp, #0xc]
  3da9ae: 2200         	movs	r2, #0x0
  3da9b0: f883 2108    	strb.w	r2, [r3, #0x108]
  3da9b4: ab20         	add	r3, sp, #0x80
  3da9b6: 4618         	mov	r0, r3
  3da9b8: f8df 380c    	ldr.w	r3, [pc, #0x80c]        @ 0x3db1c8 <SettingsLayer::init()+0x850>
  3da9bc: 58e3         	ldr	r3, [r4, r3]
  3da9be: 4619         	mov	r1, r3
  3da9c0: f1b8 fb76    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x1b86ec
  3da9c4: ed9d 7a20    	vldr	s14, [sp, #128]
  3da9c8: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3da9cc: eec7 6a27    	vdiv.f32	s13, s14, s15
  3da9d0: ed9d 7a21    	vldr	s14, [sp, #132]
  3da9d4: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3da9d8: eec7 7a27    	vdiv.f32	s15, s14, s15
  3da9dc: ab22         	add	r3, sp, #0x88
  3da9de: 4618         	mov	r0, r3
  3da9e0: ee16 1a90    	vmov	r1, s13
  3da9e4: ee17 2a90    	vmov	r2, s15
  3da9e8: f1b8 f982    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1b8304
  3da9ec: f8df 37dc    	ldr.w	r3, [pc, #0x7dc]        @ 0x3db1cc <SettingsLayer::init()+0x854>
  3da9f0: 447b         	add	r3, pc
  3da9f2: 4618         	mov	r0, r3
  3da9f4: f1fd fbc6    	bl	0x5d8184 <cocos2d::CCSprite::create(char const*)> @ imm = #0x1fd78c
  3da9f8: 4602         	mov	r2, r0
  3da9fa: 9b03         	ldr	r3, [sp, #0xc]
  3da9fc: f8c3 210c    	str.w	r2, [r3, #0x10c]
  3daa00: 9b03         	ldr	r3, [sp, #0xc]
  3daa02: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3daa06: 681b         	ldr	r3, [r3]
  3daa08: 334c         	adds	r3, #0x4c
  3daa0a: 681b         	ldr	r3, [r3]
  3daa0c: 9a03         	ldr	r2, [sp, #0xc]
  3daa0e: f8d2 110c    	ldr.w	r1, [r2, #0x10c]
  3daa12: aa22         	add	r2, sp, #0x88
  3daa14: 4608         	mov	r0, r1
  3daa16: 4611         	mov	r1, r2
  3daa18: 4798         	blx	r3
  3daa1a: 9b03         	ldr	r3, [sp, #0xc]
  3daa1c: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3daa20: 681b         	ldr	r3, [r3]
  3daa22: f503 73d2    	add.w	r3, r3, #0x1a4
  3daa26: 681b         	ldr	r3, [r3]
  3daa28: 9a03         	ldr	r2, [sp, #0xc]
  3daa2a: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3daa2e: 4610         	mov	r0, r2
  3daa30: 2123         	movs	r1, #0x23
  3daa32: 4798         	blx	r3
  3daa34: 9b03         	ldr	r3, [sp, #0xc]
  3daa36: 681b         	ldr	r3, [r3]
  3daa38: 33c8         	adds	r3, #0xc8
  3daa3a: 681b         	ldr	r3, [r3]
  3daa3c: 9903         	ldr	r1, [sp, #0xc]
  3daa3e: 9a03         	ldr	r2, [sp, #0xc]
  3daa40: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3daa44: 4608         	mov	r0, r1
  3daa46: 4611         	mov	r1, r2
  3daa48: 4798         	blx	r3
  3daa4a: f04f 0300    	mov.w	r3, #0x0
  3daa4e: 9307         	str	r3, [sp, #0x1c]
  3daa50: f04f 0300    	mov.w	r3, #0x0
  3daa54: f2c4 2340    	movt	r3, #0x4240
  3daa58: 9308         	str	r3, [sp, #0x20]
  3daa5a: f8df 3774    	ldr.w	r3, [pc, #0x774]        @ 0x3db1d0 <SettingsLayer::init()+0x858>
  3daa5e: 447b         	add	r3, pc
  3daa60: 4618         	mov	r0, r3
  3daa62: f1fd fc4f    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x1fd89e
  3daa66: 4603         	mov	r3, r0
  3daa68: 9309         	str	r3, [sp, #0x24]
  3daa6a: f8df 3768    	ldr.w	r3, [pc, #0x768]        @ 0x3db1d4 <SettingsLayer::init()+0x85c>
  3daa6e: 447b         	add	r3, pc
  3daa70: 4618         	mov	r0, r3
  3daa72: f1fd fc47    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x1fd88e
  3daa76: 4603         	mov	r3, r0
  3daa78: 930a         	str	r3, [sp, #0x28]
  3daa7a: f8df 375c    	ldr.w	r3, [pc, #0x75c]        @ 0x3db1d8 <SettingsLayer::init()+0x860>
  3daa7e: 447b         	add	r3, pc
  3daa80: 4618         	mov	r0, r3
  3daa82: f1fd fc3f    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x1fd87e
  3daa86: 4603         	mov	r3, r0
  3daa88: 930b         	str	r3, [sp, #0x2c]
  3daa8a: f8df 3750    	ldr.w	r3, [pc, #0x750]        @ 0x3db1dc <SettingsLayer::init()+0x864>
  3daa8e: 447b         	add	r3, pc
  3daa90: 4618         	mov	r0, r3
  3daa92: f1fd fc37    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x1fd86e
  3daa96: 4603         	mov	r3, r0
  3daa98: 930c         	str	r3, [sp, #0x30]
  3daa9a: f8df 3744    	ldr.w	r3, [pc, #0x744]        @ 0x3db1e0 <SettingsLayer::init()+0x868>
  3daa9e: 447b         	add	r3, pc
  3daaa0: 4618         	mov	r0, r3
  3daaa2: f1fd fc2f    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x1fd85e
  3daaa6: 4603         	mov	r3, r0
  3daaa8: 930d         	str	r3, [sp, #0x34]
  3daaaa: f8df 3738    	ldr.w	r3, [pc, #0x738]        @ 0x3db1e4 <SettingsLayer::init()+0x86c>
  3daaae: 447b         	add	r3, pc
  3daab0: 4618         	mov	r0, r3
  3daab2: f1fd fc27    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x1fd84e
  3daab6: 4603         	mov	r3, r0
  3daab8: 930e         	str	r3, [sp, #0x38]
  3daaba: f8df 372c    	ldr.w	r3, [pc, #0x72c]        @ 0x3db1e8 <SettingsLayer::init()+0x870>
  3daabe: 447b         	add	r3, pc
  3daac0: 4618         	mov	r0, r3
  3daac2: f1fd fc1f    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x1fd83e
  3daac6: 4603         	mov	r3, r0
  3daac8: 930f         	str	r3, [sp, #0x3c]
  3daaca: f8df 3720    	ldr.w	r3, [pc, #0x720]        @ 0x3db1ec <SettingsLayer::init()+0x874>
  3daace: 447b         	add	r3, pc
  3daad0: 4618         	mov	r0, r3
  3daad2: f1fd fc17    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x1fd82e
  3daad6: 4603         	mov	r3, r0
  3daad8: 9310         	str	r3, [sp, #0x40]
  3daada: f8df 3714    	ldr.w	r3, [pc, #0x714]        @ 0x3db1f0 <SettingsLayer::init()+0x878>
  3daade: 447b         	add	r3, pc
  3daae0: 4618         	mov	r0, r3
  3daae2: f1fd fc0f    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x1fd81e
  3daae6: 4603         	mov	r3, r0
  3daae8: 9311         	str	r3, [sp, #0x44]
  3daaea: f8df 3708    	ldr.w	r3, [pc, #0x708]        @ 0x3db1f4 <SettingsLayer::init()+0x87c>
  3daaee: 447b         	add	r3, pc
  3daaf0: 4618         	mov	r0, r3
  3daaf2: f1fd fc07    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x1fd80e
  3daaf6: 4603         	mov	r3, r0
  3daaf8: 9312         	str	r3, [sp, #0x48]
  3daafa: f8df 36fc    	ldr.w	r3, [pc, #0x6fc]        @ 0x3db1f8 <SettingsLayer::init()+0x880>
  3daafe: 447b         	add	r3, pc
  3dab00: 4618         	mov	r0, r3
  3dab02: f1fd fbff    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x1fd7fe
  3dab06: 4603         	mov	r3, r0
  3dab08: 9313         	str	r3, [sp, #0x4c]
  3dab0a: f8df 36f0    	ldr.w	r3, [pc, #0x6f0]        @ 0x3db1fc <SettingsLayer::init()+0x884>
  3dab0e: 447b         	add	r3, pc
  3dab10: 4618         	mov	r0, r3
  3dab12: f1fd fbf7    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x1fd7ee
  3dab16: 4603         	mov	r3, r0
  3dab18: 9314         	str	r3, [sp, #0x50]
  3dab1a: f8df 36e4    	ldr.w	r3, [pc, #0x6e4]        @ 0x3db200 <SettingsLayer::init()+0x888>
  3dab1e: 447b         	add	r3, pc
  3dab20: 4618         	mov	r0, r3
  3dab22: f1fd fbef    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x1fd7de
  3dab26: 4603         	mov	r3, r0
  3dab28: 9315         	str	r3, [sp, #0x54]
  3dab2a: f8df 36d8    	ldr.w	r3, [pc, #0x6d8]        @ 0x3db204 <SettingsLayer::init()+0x88c>
  3dab2e: 447b         	add	r3, pc
  3dab30: 4618         	mov	r0, r3
  3dab32: f1fd fbe7    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x1fd7ce
  3dab36: 4603         	mov	r3, r0
  3dab38: 9316         	str	r3, [sp, #0x58]
  3dab3a: 9a03         	ldr	r2, [sp, #0xc]
  3dab3c: f8df 36c8    	ldr.w	r3, [pc, #0x6c8]        @ 0x3db208 <SettingsLayer::init()+0x890>
  3dab40: 58e3         	ldr	r3, [r4, r3]
  3dab42: 932a         	str	r3, [sp, #0xa8]
  3dab44: 2300         	movs	r3, #0x0
  3dab46: 932b         	str	r3, [sp, #0xac]
  3dab48: 9b2b         	ldr	r3, [sp, #0xac]
  3dab4a: 9300         	str	r3, [sp]
  3dab4c: 9b2a         	ldr	r3, [sp, #0xa8]
  3dab4e: 9809         	ldr	r0, [sp, #0x24]
  3dab50: 990a         	ldr	r1, [sp, #0x28]
  3dab52: f1dd fbeb    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x1dd7d6
  3dab56: 4603         	mov	r3, r0
  3dab58: 9317         	str	r3, [sp, #0x5c]
  3dab5a: 9817         	ldr	r0, [sp, #0x5c]
  3dab5c: 2100         	movs	r1, #0x0
  3dab5e: f1da faed    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x1da5da
  3dab62: 4602         	mov	r2, r0
  3dab64: 9b03         	ldr	r3, [sp, #0xc]
  3dab66: f8c3 2128    	str.w	r2, [r3, #0x128]
  3dab6a: 9b03         	ldr	r3, [sp, #0xc]
  3dab6c: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3dab70: 4618         	mov	r0, r3
  3dab72: f1bd f9b9    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1bd372
  3dab76: 9b03         	ldr	r3, [sp, #0xc]
  3dab78: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3dab7c: 681b         	ldr	r3, [r3]
  3dab7e: 334c         	adds	r3, #0x4c
  3dab80: 681d         	ldr	r5, [r3]
  3dab82: 9b03         	ldr	r3, [sp, #0xc]
  3dab84: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3dab88: 461e         	mov	r6, r3
  3dab8a: ed9d 7a22    	vldr	s14, [sp, #136]
  3dab8e: eddd 7a07    	vldr	s15, [sp, #28]
  3dab92: ee77 6a27    	vadd.f32	s13, s14, s15
  3dab96: ed9d 7a23    	vldr	s14, [sp, #140]
  3dab9a: eddd 7a08    	vldr	s15, [sp, #32]
  3dab9e: ee77 7a27    	vadd.f32	s15, s14, s15
  3daba2: ab38         	add	r3, sp, #0xe0
  3daba4: 4618         	mov	r0, r3
  3daba6: ee16 1a90    	vmov	r1, s13
  3dabaa: ee17 2a90    	vmov	r2, s15
  3dabae: f1b8 f89f    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1b813e
  3dabb2: ab38         	add	r3, sp, #0xe0
  3dabb4: 4630         	mov	r0, r6
  3dabb6: 4619         	mov	r1, r3
  3dabb8: 47a8         	blx	r5
  3dabba: 9b03         	ldr	r3, [sp, #0xc]
  3dabbc: 681b         	ldr	r3, [r3]
  3dabbe: 33c8         	adds	r3, #0xc8
  3dabc0: 681b         	ldr	r3, [r3]
  3dabc2: 9903         	ldr	r1, [sp, #0xc]
  3dabc4: 9a03         	ldr	r2, [sp, #0xc]
  3dabc6: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  3dabca: 4608         	mov	r0, r1
  3dabcc: 4611         	mov	r1, r2
  3dabce: 4798         	blx	r3
  3dabd0: 9a03         	ldr	r2, [sp, #0xc]
  3dabd2: f8df 3638    	ldr.w	r3, [pc, #0x638]        @ 0x3db20c <SettingsLayer::init()+0x894>
  3dabd6: 58e3         	ldr	r3, [r4, r3]
  3dabd8: 932c         	str	r3, [sp, #0xb0]
  3dabda: 2300         	movs	r3, #0x0
  3dabdc: 932d         	str	r3, [sp, #0xb4]
  3dabde: 9b2d         	ldr	r3, [sp, #0xb4]
  3dabe0: 9300         	str	r3, [sp]
  3dabe2: 9b2c         	ldr	r3, [sp, #0xb0]
  3dabe4: 980b         	ldr	r0, [sp, #0x2c]
  3dabe6: 990c         	ldr	r1, [sp, #0x30]
  3dabe8: f1dd fba0    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x1dd740
  3dabec: 4603         	mov	r3, r0
  3dabee: 9318         	str	r3, [sp, #0x60]
  3dabf0: 9818         	ldr	r0, [sp, #0x60]
  3dabf2: 2100         	movs	r1, #0x0
  3dabf4: f1da faa2    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x1da544
  3dabf8: 4602         	mov	r2, r0
  3dabfa: 9b03         	ldr	r3, [sp, #0xc]
  3dabfc: f8c3 212c    	str.w	r2, [r3, #0x12c]
  3dac00: 9b03         	ldr	r3, [sp, #0xc]
  3dac02: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  3dac06: 4618         	mov	r0, r3
  3dac08: f1bd f96e    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1bd2dc
  3dac0c: 9b03         	ldr	r3, [sp, #0xc]
  3dac0e: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  3dac12: 681b         	ldr	r3, [r3]
  3dac14: 334c         	adds	r3, #0x4c
  3dac16: 681d         	ldr	r5, [r3]
  3dac18: 9b03         	ldr	r3, [sp, #0xc]
  3dac1a: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  3dac1e: 461e         	mov	r6, r3
  3dac20: ed9d 7a22    	vldr	s14, [sp, #136]
  3dac24: eddd 7a07    	vldr	s15, [sp, #28]
  3dac28: ee77 7a27    	vadd.f32	s15, s14, s15
  3dac2c: 9b23         	ldr	r3, [sp, #0x8c]
  3dac2e: aa38         	add	r2, sp, #0xe0
  3dac30: 4610         	mov	r0, r2
  3dac32: ee17 1a90    	vmov	r1, s15
  3dac36: 461a         	mov	r2, r3
  3dac38: f1b8 f85a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1b80b4
  3dac3c: ab38         	add	r3, sp, #0xe0
  3dac3e: 4630         	mov	r0, r6
  3dac40: 4619         	mov	r1, r3
  3dac42: 47a8         	blx	r5
  3dac44: 9b03         	ldr	r3, [sp, #0xc]
  3dac46: 681b         	ldr	r3, [r3]
  3dac48: 33c8         	adds	r3, #0xc8
  3dac4a: 681b         	ldr	r3, [r3]
  3dac4c: 9903         	ldr	r1, [sp, #0xc]
  3dac4e: 9a03         	ldr	r2, [sp, #0xc]
  3dac50: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  3dac54: 4608         	mov	r0, r1
  3dac56: 4611         	mov	r1, r2
  3dac58: 4798         	blx	r3
  3dac5a: 9a03         	ldr	r2, [sp, #0xc]
  3dac5c: f8df 35b0    	ldr.w	r3, [pc, #0x5b0]        @ 0x3db210 <SettingsLayer::init()+0x898>
  3dac60: 58e3         	ldr	r3, [r4, r3]
  3dac62: 932e         	str	r3, [sp, #0xb8]
  3dac64: 2300         	movs	r3, #0x0
  3dac66: 932f         	str	r3, [sp, #0xbc]
  3dac68: 9b2f         	ldr	r3, [sp, #0xbc]
  3dac6a: 9300         	str	r3, [sp]
  3dac6c: 9b2e         	ldr	r3, [sp, #0xb8]
  3dac6e: 980d         	ldr	r0, [sp, #0x34]
  3dac70: 990e         	ldr	r1, [sp, #0x38]
  3dac72: f1dd fb5b    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x1dd6b6
  3dac76: 4603         	mov	r3, r0
  3dac78: 9319         	str	r3, [sp, #0x64]
  3dac7a: 9819         	ldr	r0, [sp, #0x64]
  3dac7c: 2100         	movs	r1, #0x0
  3dac7e: f1da fa5d    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x1da4ba
  3dac82: 4602         	mov	r2, r0
  3dac84: 9b03         	ldr	r3, [sp, #0xc]
  3dac86: f8c3 2134    	str.w	r2, [r3, #0x134]
  3dac8a: 9b03         	ldr	r3, [sp, #0xc]
  3dac8c: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  3dac90: 4618         	mov	r0, r3
  3dac92: f1bd f929    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1bd252
  3dac96: 9b03         	ldr	r3, [sp, #0xc]
  3dac98: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  3dac9c: 681b         	ldr	r3, [r3]
  3dac9e: 334c         	adds	r3, #0x4c
  3daca0: 681d         	ldr	r5, [r3]
  3daca2: 9b03         	ldr	r3, [sp, #0xc]
  3daca4: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  3daca8: 461e         	mov	r6, r3
  3dacaa: ed9d 7a22    	vldr	s14, [sp, #136]
  3dacae: eddd 7a07    	vldr	s15, [sp, #28]
  3dacb2: ee77 6a27    	vadd.f32	s13, s14, s15
  3dacb6: ed9d 7a23    	vldr	s14, [sp, #140]
  3dacba: eddd 7a08    	vldr	s15, [sp, #32]
  3dacbe: ee77 7a67    	vsub.f32	s15, s14, s15
  3dacc2: ab38         	add	r3, sp, #0xe0
  3dacc4: 4618         	mov	r0, r3
  3dacc6: ee16 1a90    	vmov	r1, s13
  3dacca: ee17 2a90    	vmov	r2, s15
  3dacce: f1b8 f80f    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1b801e
  3dacd2: ab38         	add	r3, sp, #0xe0
  3dacd4: 4630         	mov	r0, r6
  3dacd6: 4619         	mov	r1, r3
  3dacd8: 47a8         	blx	r5
  3dacda: 9b03         	ldr	r3, [sp, #0xc]
  3dacdc: 681b         	ldr	r3, [r3]
  3dacde: 33c8         	adds	r3, #0xc8
  3dace0: 681b         	ldr	r3, [r3]
  3dace2: 9903         	ldr	r1, [sp, #0xc]
  3dace4: 9a03         	ldr	r2, [sp, #0xc]
  3dace6: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  3dacea: 4608         	mov	r0, r1
  3dacec: 4611         	mov	r1, r2
  3dacee: 4798         	blx	r3
  3dacf0: 9a03         	ldr	r2, [sp, #0xc]
  3dacf2: f8df 3520    	ldr.w	r3, [pc, #0x520]        @ 0x3db214 <SettingsLayer::init()+0x89c>
  3dacf6: 58e3         	ldr	r3, [r4, r3]
  3dacf8: 9330         	str	r3, [sp, #0xc0]
  3dacfa: 2300         	movs	r3, #0x0
  3dacfc: 9331         	str	r3, [sp, #0xc4]
  3dacfe: 9b31         	ldr	r3, [sp, #0xc4]
  3dad00: 9300         	str	r3, [sp]
  3dad02: 9b30         	ldr	r3, [sp, #0xc0]
  3dad04: 980f         	ldr	r0, [sp, #0x3c]
  3dad06: 9910         	ldr	r1, [sp, #0x40]
  3dad08: f1dd fb10    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x1dd620
  3dad0c: 4603         	mov	r3, r0
  3dad0e: 931a         	str	r3, [sp, #0x68]
  3dad10: 981a         	ldr	r0, [sp, #0x68]
  3dad12: 2100         	movs	r1, #0x0
  3dad14: f1da fa12    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x1da424
  3dad18: 4602         	mov	r2, r0
  3dad1a: 9b03         	ldr	r3, [sp, #0xc]
  3dad1c: f8c3 2130    	str.w	r2, [r3, #0x130]
  3dad20: 9b03         	ldr	r3, [sp, #0xc]
  3dad22: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  3dad26: 4618         	mov	r0, r3
  3dad28: f1bd f8de    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1bd1bc
  3dad2c: 9b03         	ldr	r3, [sp, #0xc]
  3dad2e: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  3dad32: 681b         	ldr	r3, [r3]
  3dad34: 334c         	adds	r3, #0x4c
  3dad36: 681d         	ldr	r5, [r3]
  3dad38: 9b03         	ldr	r3, [sp, #0xc]
  3dad3a: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  3dad3e: 461e         	mov	r6, r3
  3dad40: ed9d 7a22    	vldr	s14, [sp, #136]
  3dad44: eddd 7a07    	vldr	s15, [sp, #28]
  3dad48: ee77 6a27    	vadd.f32	s13, s14, s15
  3dad4c: ed9d 7a23    	vldr	s14, [sp, #140]
  3dad50: eddd 7a08    	vldr	s15, [sp, #32]
  3dad54: ee77 7aa7    	vadd.f32	s15, s15, s15
  3dad58: ee77 7a67    	vsub.f32	s15, s14, s15
  3dad5c: ab38         	add	r3, sp, #0xe0
  3dad5e: 4618         	mov	r0, r3
  3dad60: ee16 1a90    	vmov	r1, s13
  3dad64: ee17 2a90    	vmov	r2, s15
  3dad68: f1b7 ffc2    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1b7f84
  3dad6c: ab38         	add	r3, sp, #0xe0
  3dad6e: 4630         	mov	r0, r6
  3dad70: 4619         	mov	r1, r3
  3dad72: 47a8         	blx	r5
  3dad74: 9b03         	ldr	r3, [sp, #0xc]
  3dad76: 681b         	ldr	r3, [r3]
  3dad78: 33c8         	adds	r3, #0xc8
  3dad7a: 681b         	ldr	r3, [r3]
  3dad7c: 9903         	ldr	r1, [sp, #0xc]
  3dad7e: 9a03         	ldr	r2, [sp, #0xc]
  3dad80: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  3dad84: 4608         	mov	r0, r1
  3dad86: 4611         	mov	r1, r2
  3dad88: 4798         	blx	r3
  3dad8a: 9a03         	ldr	r2, [sp, #0xc]
  3dad8c: f8df 3488    	ldr.w	r3, [pc, #0x488]        @ 0x3db218 <SettingsLayer::init()+0x8a0>
  3dad90: 58e3         	ldr	r3, [r4, r3]
  3dad92: 9332         	str	r3, [sp, #0xc8]
  3dad94: 2300         	movs	r3, #0x0
  3dad96: 9333         	str	r3, [sp, #0xcc]
  3dad98: 9b33         	ldr	r3, [sp, #0xcc]
  3dad9a: 9300         	str	r3, [sp]
  3dad9c: 9b32         	ldr	r3, [sp, #0xc8]
  3dad9e: 9811         	ldr	r0, [sp, #0x44]
  3dada0: 9912         	ldr	r1, [sp, #0x48]
  3dada2: f1dd fac3    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x1dd586
  3dada6: 4603         	mov	r3, r0
  3dada8: 931b         	str	r3, [sp, #0x6c]
  3dadaa: 981b         	ldr	r0, [sp, #0x6c]
  3dadac: 2100         	movs	r1, #0x0
  3dadae: f1da f9c5    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x1da38a
  3dadb2: 4602         	mov	r2, r0
  3dadb4: 9b03         	ldr	r3, [sp, #0xc]
  3dadb6: f8c3 2138    	str.w	r2, [r3, #0x138]
  3dadba: 9b03         	ldr	r3, [sp, #0xc]
  3dadbc: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3dadc0: 4618         	mov	r0, r3
  3dadc2: f1bd f891    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1bd122
  3dadc6: 9b03         	ldr	r3, [sp, #0xc]
  3dadc8: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3dadcc: 681b         	ldr	r3, [r3]
  3dadce: 334c         	adds	r3, #0x4c
  3dadd0: 681d         	ldr	r5, [r3]
  3dadd2: 9b03         	ldr	r3, [sp, #0xc]
  3dadd4: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3dadd8: 461e         	mov	r6, r3
  3dadda: ab38         	add	r3, sp, #0xe0
  3daddc: 4618         	mov	r0, r3
  3dadde: f04f 0100    	mov.w	r1, #0x0
  3dade2: f2c4 2160    	movt	r1, #0x4260
  3dade6: f04f 4284    	mov.w	r2, #0x42000000
  3dadea: f1b7 ff81    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1b7f02
  3dadee: ab38         	add	r3, sp, #0xe0
  3dadf0: 4630         	mov	r0, r6
  3dadf2: 4619         	mov	r1, r3
  3dadf4: 47a8         	blx	r5
  3dadf6: 9b03         	ldr	r3, [sp, #0xc]
  3dadf8: 681b         	ldr	r3, [r3]
  3dadfa: 33c8         	adds	r3, #0xc8
  3dadfc: 681b         	ldr	r3, [r3]
  3dadfe: 9903         	ldr	r1, [sp, #0xc]
  3dae00: 9a03         	ldr	r2, [sp, #0xc]
  3dae02: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  3dae06: 4608         	mov	r0, r1
  3dae08: 4611         	mov	r1, r2
  3dae0a: 4798         	blx	r3
  3dae0c: f64c 43cd    	movw	r3, #0xcccd
  3dae10: f6c3 730c    	movt	r3, #0x3f0c
  3dae14: 931c         	str	r3, [sp, #0x70]
  3dae16: f04f 0300    	mov.w	r3, #0x0
  3dae1a: f2c4 13c0    	movt	r3, #0x41c0
  3dae1e: 931d         	str	r3, [sp, #0x74]
  3dae20: f04f 4341    	mov.w	r3, #0xc1000000
  3dae24: 931e         	str	r3, [sp, #0x78]
  3dae26: 4bfd         	ldr	r3, [pc, #0x3f4]        @ 0x3db21c <SettingsLayer::init()+0x8a4>
  3dae28: 447b         	add	r3, pc
  3dae2a: 4618         	mov	r0, r3
  3dae2c: f3da fa68    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3da4d0
  3dae30: 4603         	mov	r3, r0
  3dae32: 2220         	movs	r2, #0x20
  3dae34: 9200         	str	r2, [sp]
  3dae36: 4afa         	ldr	r2, [pc, #0x3e8]        @ 0x3db220 <SettingsLayer::init()+0x8a8>
  3dae38: 447a         	add	r2, pc
  3dae3a: 4610         	mov	r0, r2
  3dae3c: 4619         	mov	r1, r3
  3dae3e: 2220         	movs	r2, #0x20
  3dae40: 2320         	movs	r3, #0x20
  3dae42: f1ca fa99    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1ca532
  3dae46: 4602         	mov	r2, r0
  3dae48: 9b03         	ldr	r3, [sp, #0xc]
  3dae4a: f8c3 2110    	str.w	r2, [r3, #0x110]
  3dae4e: 9b03         	ldr	r3, [sp, #0xc]
  3dae50: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3dae54: 4618         	mov	r0, r3
  3dae56: f1bd f847    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1bd08e
  3dae5a: 9b03         	ldr	r3, [sp, #0xc]
  3dae5c: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3dae60: eddd 7a1d    	vldr	s15, [sp, #116]
  3dae64: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3dae68: ee17 2a90    	vmov	r2, s15
  3dae6c: 4618         	mov	r0, r3
  3dae6e: 4611         	mov	r1, r2
  3dae70: f1ca ff88    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1caf10
  3dae74: 9b03         	ldr	r3, [sp, #0xc]
  3dae76: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3dae7a: 681b         	ldr	r3, [r3]
  3dae7c: 3340         	adds	r3, #0x40
  3dae7e: 681b         	ldr	r3, [r3]
  3dae80: 9a03         	ldr	r2, [sp, #0xc]
  3dae82: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  3dae86: 4610         	mov	r0, r2
  3dae88: 991c         	ldr	r1, [sp, #0x70]
  3dae8a: 4798         	blx	r3
  3dae8c: 9b03         	ldr	r3, [sp, #0xc]
  3dae8e: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3dae92: 681b         	ldr	r3, [r3]
  3dae94: 334c         	adds	r3, #0x4c
  3dae96: 681d         	ldr	r5, [r3]
  3dae98: 9b03         	ldr	r3, [sp, #0xc]
  3dae9a: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3dae9e: 461e         	mov	r6, r3
  3daea0: 9b03         	ldr	r3, [sp, #0xc]
  3daea2: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3daea6: 681b         	ldr	r3, [r3]
  3daea8: 3350         	adds	r3, #0x50
  3daeaa: 681b         	ldr	r3, [r3]
  3daeac: 9a03         	ldr	r2, [sp, #0xc]
  3daeae: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  3daeb2: 4610         	mov	r0, r2
  3daeb4: 4798         	blx	r3
  3daeb6: 4603         	mov	r3, r0
  3daeb8: 681f         	ldr	r7, [r3]
  3daeba: 9b03         	ldr	r3, [sp, #0xc]
  3daebc: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3daec0: 681b         	ldr	r3, [r3]
  3daec2: 3350         	adds	r3, #0x50
  3daec4: 681b         	ldr	r3, [r3]
  3daec6: 9a03         	ldr	r2, [sp, #0xc]
  3daec8: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  3daecc: 4610         	mov	r0, r2
  3daece: 4798         	blx	r3
  3daed0: 4603         	mov	r3, r0
  3daed2: 685b         	ldr	r3, [r3, #0x4]
  3daed4: aa24         	add	r2, sp, #0x90
  3daed6: 4610         	mov	r0, r2
  3daed8: 4639         	mov	r1, r7
  3daeda: 461a         	mov	r2, r3
  3daedc: f1b7 ff08    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1b7e10
  3daee0: eddd 7a1e    	vldr	s15, [sp, #120]
  3daee4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3daee8: ab34         	add	r3, sp, #0xd0
  3daeea: 4618         	mov	r0, r3
  3daeec: ed9f 0bb4    	vldr	d0, [pc, #720]          @ 0x3db1c0 <SettingsLayer::init()+0x848>
  3daef0: eeb0 1b47    	vmov.f64	d1, d7
  3daef4: f7fe fe02    	bl	0x3d9afc <ScoreRow** std::__copy_move<true, true, std::random_access_iterator_tag>::__copy_m<ScoreRow*>(ScoreRow* const*, ScoreRow* const*, ScoreRow**)+0x1e4> @ imm = #-0x13fc
  3daef8: ed9d 8b34    	vldr	d8, [sp, #208]
  3daefc: 9b03         	ldr	r3, [sp, #0xc]
  3daefe: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3daf02: 681b         	ldr	r3, [r3]
  3daf04: f503 73fe    	add.w	r3, r3, #0x1fc
  3daf08: 681b         	ldr	r3, [r3]
  3daf0a: 9a03         	ldr	r2, [sp, #0xc]
  3daf0c: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  3daf10: 4610         	mov	r0, r2
  3daf12: 4798         	blx	r3
  3daf14: 4607         	mov	r7, r0
  3daf16: ab05         	add	r3, sp, #0x14
  3daf18: 4618         	mov	r0, r3
  3daf1a: f3af fa6b    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3af4d6
  3daf1e: aa06         	add	r2, sp, #0x18
  3daf20: ab05         	add	r3, sp, #0x14
  3daf22: 4610         	mov	r0, r2
  3daf24: 4639         	mov	r1, r7
  3daf26: 461a         	mov	r2, r3
  3daf28: f3db fd9a    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3dbb34
  3daf2c: ab06         	add	r3, sp, #0x18
  3daf2e: 4618         	mov	r0, r3
  3daf30: f3da f894    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x3da128
  3daf34: 4603         	mov	r3, r0
  3daf36: ee07 3a90    	vmov	s15, r3
  3daf3a: eeb8 7a67    	vcvt.f32.u32	s14, s15
  3daf3e: eddd 7a1d    	vldr	s15, [sp, #116]
  3daf42: ee27 7a27    	vmul.f32	s14, s14, s15
  3daf46: eddd 7a1c    	vldr	s15, [sp, #112]
  3daf4a: ee27 7a27    	vmul.f32	s14, s14, s15
  3daf4e: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3daf52: eec7 7a27    	vdiv.f32	s15, s14, s15
  3daf56: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3daf5a: ee38 7b47    	vsub.f64	d7, d8, d7
  3daf5e: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3daf62: eddd 7a1e    	vldr	s15, [sp, #120]
  3daf66: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3daf6a: ab38         	add	r3, sp, #0xe0
  3daf6c: 4618         	mov	r0, r3
  3daf6e: ed9f 0b94    	vldr	d0, [pc, #592]          @ 0x3db1c0 <SettingsLayer::init()+0x848>
  3daf72: eeb0 1b47    	vmov.f64	d1, d7
  3daf76: f7fe fdc1    	bl	0x3d9afc <ScoreRow** std::__copy_move<true, true, std::random_access_iterator_tag>::__copy_m<ScoreRow*>(ScoreRow* const*, ScoreRow* const*, ScoreRow**)+0x1e4> @ imm = #-0x147e
  3daf7a: ed9d 7b3a    	vldr	d7, [sp, #232]
  3daf7e: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3daf82: ab26         	add	r3, sp, #0x98
  3daf84: 4618         	mov	r0, r3
  3daf86: ee18 1a10    	vmov	r1, s16
  3daf8a: ee17 2a90    	vmov	r2, s15
  3daf8e: f1b7 feaf    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1b7d5e
  3daf92: a928         	add	r1, sp, #0xa0
  3daf94: aa24         	add	r2, sp, #0x90
  3daf96: ab26         	add	r3, sp, #0x98
  3daf98: 4608         	mov	r0, r1
  3daf9a: 4611         	mov	r1, r2
  3daf9c: 461a         	mov	r2, r3
  3daf9e: f7fe fd9d    	bl	0x3d9adc <ScoreRow** std::__copy_move<true, true, std::random_access_iterator_tag>::__copy_m<ScoreRow*>(ScoreRow* const*, ScoreRow* const*, ScoreRow**)+0x1c4> @ imm = #-0x14c6
  3dafa2: ab28         	add	r3, sp, #0xa0
  3dafa4: 4630         	mov	r0, r6
  3dafa6: 4619         	mov	r1, r3
  3dafa8: 47a8         	blx	r5
  3dafaa: ab06         	add	r3, sp, #0x18
  3dafac: 4618         	mov	r0, r3
  3dafae: f3da fcb1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3da962
  3dafb2: ab05         	add	r3, sp, #0x14
  3dafb4: 4618         	mov	r0, r3
  3dafb6: f3af fa21    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3af442
  3dafba: 9b03         	ldr	r3, [sp, #0xc]
  3dafbc: 681b         	ldr	r3, [r3]
  3dafbe: 33c8         	adds	r3, #0xc8
  3dafc0: 681b         	ldr	r3, [r3]
  3dafc2: 9903         	ldr	r1, [sp, #0xc]
  3dafc4: 9a03         	ldr	r2, [sp, #0xc]
  3dafc6: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  3dafca: 4608         	mov	r0, r1
  3dafcc: 4611         	mov	r1, r2
  3dafce: 4798         	blx	r3
  3dafd0: 4b94         	ldr	r3, [pc, #0x250]        @ 0x3db224 <SettingsLayer::init()+0x8ac>
  3dafd2: 447b         	add	r3, pc
  3dafd4: 4618         	mov	r0, r3
  3dafd6: f3da f993    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3da326
  3dafda: 4603         	mov	r3, r0
  3dafdc: 2220         	movs	r2, #0x20
  3dafde: 9200         	str	r2, [sp]
  3dafe0: 4a91         	ldr	r2, [pc, #0x244]        @ 0x3db228 <SettingsLayer::init()+0x8b0>
  3dafe2: 447a         	add	r2, pc
  3dafe4: 4610         	mov	r0, r2
  3dafe6: 4619         	mov	r1, r3
  3dafe8: 2220         	movs	r2, #0x20
  3dafea: 2320         	movs	r3, #0x20
  3dafec: f1ca f9c4    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1ca388
  3daff0: 4602         	mov	r2, r0
  3daff2: 9b03         	ldr	r3, [sp, #0xc]
  3daff4: f8c3 2114    	str.w	r2, [r3, #0x114]
  3daff8: 9b03         	ldr	r3, [sp, #0xc]
  3daffa: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3daffe: 4618         	mov	r0, r3
  3db000: f1bc ff72    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1bcee4
  3db004: 9b03         	ldr	r3, [sp, #0xc]
  3db006: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3db00a: eddd 7a1d    	vldr	s15, [sp, #116]
  3db00e: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3db012: ee17 2a90    	vmov	r2, s15
  3db016: 4618         	mov	r0, r3
  3db018: 4611         	mov	r1, r2
  3db01a: f1ca feb3    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1cad66
  3db01e: 9b03         	ldr	r3, [sp, #0xc]
  3db020: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3db024: 681b         	ldr	r3, [r3]
  3db026: 3340         	adds	r3, #0x40
  3db028: 681b         	ldr	r3, [r3]
  3db02a: 9a03         	ldr	r2, [sp, #0xc]
  3db02c: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  3db030: 4610         	mov	r0, r2
  3db032: 991c         	ldr	r1, [sp, #0x70]
  3db034: 4798         	blx	r3
  3db036: 9b03         	ldr	r3, [sp, #0xc]
  3db038: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3db03c: 681b         	ldr	r3, [r3]
  3db03e: 334c         	adds	r3, #0x4c
  3db040: 681d         	ldr	r5, [r3]
  3db042: 9b03         	ldr	r3, [sp, #0xc]
  3db044: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3db048: 461e         	mov	r6, r3
  3db04a: 9b03         	ldr	r3, [sp, #0xc]
  3db04c: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  3db050: 681b         	ldr	r3, [r3]
  3db052: 3350         	adds	r3, #0x50
  3db054: 681b         	ldr	r3, [r3]
  3db056: 9a03         	ldr	r2, [sp, #0xc]
  3db058: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  3db05c: 4610         	mov	r0, r2
  3db05e: 4798         	blx	r3
  3db060: 4603         	mov	r3, r0
  3db062: 681f         	ldr	r7, [r3]
  3db064: 9b03         	ldr	r3, [sp, #0xc]
  3db066: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  3db06a: 681b         	ldr	r3, [r3]
  3db06c: 3350         	adds	r3, #0x50
  3db06e: 681b         	ldr	r3, [r3]
  3db070: 9a03         	ldr	r2, [sp, #0xc]
  3db072: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  3db076: 4610         	mov	r0, r2
  3db078: 4798         	blx	r3
  3db07a: 4603         	mov	r3, r0
  3db07c: 685b         	ldr	r3, [r3, #0x4]
  3db07e: aa24         	add	r2, sp, #0x90
  3db080: 4610         	mov	r0, r2
  3db082: 4639         	mov	r1, r7
  3db084: 461a         	mov	r2, r3
  3db086: f1b7 fe33    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1b7c66
  3db08a: eddd 7a1e    	vldr	s15, [sp, #120]
  3db08e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3db092: ab34         	add	r3, sp, #0xd0
  3db094: 4618         	mov	r0, r3
  3db096: ed9f 0b4a    	vldr	d0, [pc, #296]          @ 0x3db1c0 <SettingsLayer::init()+0x848>
  3db09a: eeb0 1b47    	vmov.f64	d1, d7
  3db09e: f7fe fd2d    	bl	0x3d9afc <ScoreRow** std::__copy_move<true, true, std::random_access_iterator_tag>::__copy_m<ScoreRow*>(ScoreRow* const*, ScoreRow* const*, ScoreRow**)+0x1e4> @ imm = #-0x15a6
  3db0a2: ed9d 8b34    	vldr	d8, [sp, #208]
  3db0a6: 9b03         	ldr	r3, [sp, #0xc]
  3db0a8: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3db0ac: 681b         	ldr	r3, [r3]
  3db0ae: f503 73fe    	add.w	r3, r3, #0x1fc
  3db0b2: 681b         	ldr	r3, [r3]
  3db0b4: 9a03         	ldr	r2, [sp, #0xc]
  3db0b6: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  3db0ba: 4610         	mov	r0, r2
  3db0bc: 4798         	blx	r3
  3db0be: 4607         	mov	r7, r0
  3db0c0: ab05         	add	r3, sp, #0x14
  3db0c2: 4618         	mov	r0, r3
  3db0c4: f3af f996    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3af32c
  3db0c8: aa06         	add	r2, sp, #0x18
  3db0ca: ab05         	add	r3, sp, #0x14
  3db0cc: 4610         	mov	r0, r2
  3db0ce: 4639         	mov	r1, r7
  3db0d0: 461a         	mov	r2, r3
  3db0d2: f3db fcc5    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3db98a
  3db0d6: ab06         	add	r3, sp, #0x18
  3db0d8: 4618         	mov	r0, r3
  3db0da: f3d9 ffbf    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x3d9f7e
  3db0de: 4603         	mov	r3, r0
  3db0e0: ee07 3a90    	vmov	s15, r3
  3db0e4: eeb8 7a67    	vcvt.f32.u32	s14, s15
  3db0e8: eddd 7a1d    	vldr	s15, [sp, #116]
  3db0ec: ee27 7a27    	vmul.f32	s14, s14, s15
  3db0f0: eddd 7a1c    	vldr	s15, [sp, #112]
  3db0f4: ee27 7a27    	vmul.f32	s14, s14, s15
  3db0f8: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3db0fc: eec7 7a27    	vdiv.f32	s15, s14, s15
  3db100: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3db104: ee38 7b47    	vsub.f64	d7, d8, d7
  3db108: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3db10c: eddd 7a1e    	vldr	s15, [sp, #120]
  3db110: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3db114: ab38         	add	r3, sp, #0xe0
  3db116: 4618         	mov	r0, r3
  3db118: ed9f 0b29    	vldr	d0, [pc, #164]          @ 0x3db1c0 <SettingsLayer::init()+0x848>
  3db11c: eeb0 1b47    	vmov.f64	d1, d7
  3db120: f7fe fcec    	bl	0x3d9afc <ScoreRow** std::__copy_move<true, true, std::random_access_iterator_tag>::__copy_m<ScoreRow*>(ScoreRow* const*, ScoreRow* const*, ScoreRow**)+0x1e4> @ imm = #-0x1628
  3db124: ed9d 7b3a    	vldr	d7, [sp, #232]
  3db128: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3db12c: ab26         	add	r3, sp, #0x98
  3db12e: 4618         	mov	r0, r3
  3db130: ee18 1a10    	vmov	r1, s16
  3db134: ee17 2a90    	vmov	r2, s15
  3db138: f1b7 fdda    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1b7bb4
  3db13c: a928         	add	r1, sp, #0xa0
  3db13e: aa24         	add	r2, sp, #0x90
  3db140: ab26         	add	r3, sp, #0x98
  3db142: 4608         	mov	r0, r1
  3db144: 4611         	mov	r1, r2
  3db146: 461a         	mov	r2, r3
  3db148: f7fe fcc8    	bl	0x3d9adc <ScoreRow** std::__copy_move<true, true, std::random_access_iterator_tag>::__copy_m<ScoreRow*>(ScoreRow* const*, ScoreRow* const*, ScoreRow**)+0x1c4> @ imm = #-0x1670
  3db14c: ab28         	add	r3, sp, #0xa0
  3db14e: 4630         	mov	r0, r6
  3db150: 4619         	mov	r1, r3
  3db152: 47a8         	blx	r5
  3db154: ab06         	add	r3, sp, #0x18
  3db156: 4618         	mov	r0, r3
  3db158: f3da fbdc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3da7b8
  3db15c: ab05         	add	r3, sp, #0x14
  3db15e: 4618         	mov	r0, r3
  3db160: f3af f94c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3af298
  3db164: 9b03         	ldr	r3, [sp, #0xc]
  3db166: 681b         	ldr	r3, [r3]
  3db168: 33c8         	adds	r3, #0xc8
  3db16a: 681b         	ldr	r3, [r3]
  3db16c: 9903         	ldr	r1, [sp, #0xc]
  3db16e: 9a03         	ldr	r2, [sp, #0xc]
  3db170: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  3db174: 4608         	mov	r0, r1
  3db176: 4611         	mov	r1, r2
  3db178: 4798         	blx	r3
  3db17a: 4b2c         	ldr	r3, [pc, #0xb0]         @ 0x3db22c <SettingsLayer::init()+0x8b4>
  3db17c: 447b         	add	r3, pc
  3db17e: 4618         	mov	r0, r3
  3db180: f3da f8be    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3da17c
  3db184: 4603         	mov	r3, r0
  3db186: 2220         	movs	r2, #0x20
  3db188: 9200         	str	r2, [sp]
  3db18a: 4a29         	ldr	r2, [pc, #0xa4]         @ 0x3db230 <SettingsLayer::init()+0x8b8>
  3db18c: 447a         	add	r2, pc
  3db18e: 4610         	mov	r0, r2
  3db190: 4619         	mov	r1, r3
  3db192: 2220         	movs	r2, #0x20
  3db194: 2320         	movs	r3, #0x20
  3db196: f1ca f8ef    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1ca1de
  3db19a: 4602         	mov	r2, r0
  3db19c: 9b03         	ldr	r3, [sp, #0xc]
  3db19e: f8c3 2118    	str.w	r2, [r3, #0x118]
  3db1a2: 9b03         	ldr	r3, [sp, #0xc]
  3db1a4: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3db1a8: 4618         	mov	r0, r3
  3db1aa: f1bc fe9d    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1bcd3a
  3db1ae: 9b03         	ldr	r3, [sp, #0xc]
  3db1b0: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3db1b4: eddd 7a1d    	vldr	s15, [sp, #116]
  3db1b8: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3db1bc: e03a         	b	0x3db234 <SettingsLayer::init()+0x8bc> @ imm = #0x74
  3db1be: bf00         	nop
  3db1c8: d724         	bvc	0x3db214 <SettingsLayer::init()+0x89c> @ imm = #0x48
  3db1ca: ffff cffc    	<unknown>
  3db1ce: 003f         	movs	r7, r7
  3db1d0: cfa2         	ldm	r7, {r1, r5, r7}
  3db1d2: 003f         	movs	r7, r7
  3db1d4: cf92         	ldm	r7, {r1, r4, r7}
  3db1d6: 003f         	movs	r7, r7
  3db1d8: cf8e         	ldm	r7, {r1, r2, r3, r7}
  3db1da: 003f         	movs	r7, r7
  3db1dc: cf7e         	ldm	r7!, {r1, r2, r3, r4, r5, r6}
  3db1de: 003f         	movs	r7, r7
  3db1e0: cf6e         	ldm	r7!, {r1, r2, r3, r5, r6}
  3db1e2: 003f         	movs	r7, r7
  3db1e4: cf5e         	ldm	r7!, {r1, r2, r3, r4, r6}
  3db1e6: 003f         	movs	r7, r7
  3db1e8: cf5a         	ldm	r7!, {r1, r3, r4, r6}
  3db1ea: 003f         	movs	r7, r7
  3db1ec: cf4a         	ldm	r7!, {r1, r3, r6}
  3db1ee: 003f         	movs	r7, r7
  3db1f0: cf46         	ldm	r7!, {r1, r2, r6}
  3db1f2: 003f         	movs	r7, r7
  3db1f4: cf36         	ldm	r7!, {r1, r2, r4, r5}
  3db1f6: 003f         	movs	r7, r7
  3db1f8: cf26         	ldm	r7!, {r1, r2, r5}
  3db1fa: 003f         	movs	r7, r7
  3db1fc: cf16         	ldm	r7!, {r1, r2, r4}
  3db1fe: 003f         	movs	r7, r7
  3db200: cf12         	ldm	r7!, {r1, r4}
  3db202: 003f         	movs	r7, r7
  3db204: cf02         	ldm	r7!, {r1}
  3db206: 003f         	movs	r7, r7
  3db208: dee8         	udf	#0xe8
  3db20a: ffff deec    	<unknown>
  3db20e: ffff def0    	<unknown>
  3db212: ffff def4    	<unknown>
  3db216: ffff def8    	<unknown>
  3db21a: ffff 7cb0    	<unknown>
  3db21e: 0056         	lsls	r6, r2, #0x1
  3db220: cc04         	ldm	r4!, {r2}
  3db222: 003f         	movs	r7, r7
  3db224: 7b06         	ldrb	r6, [r0, #0xc]
  3db226: 0056         	lsls	r6, r2, #0x1
  3db228: ca62         	ldm	r2!, {r1, r5, r6}
  3db22a: 003f         	movs	r7, r7
  3db22c: 795c         	ldrb	r4, [r3, #0x5]
  3db22e: 0056         	lsls	r6, r2, #0x1
  3db230: c8c0         	ldm	r0!, {r6, r7}
  3db232: 003f         	movs	r7, r7
  3db234: ee17 2a90    	vmov	r2, s15
  3db238: 4618         	mov	r0, r3
  3db23a: 4611         	mov	r1, r2
  3db23c: f1ca fda2    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1cab44
  3db240: 9b03         	ldr	r3, [sp, #0xc]
  3db242: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3db246: 681b         	ldr	r3, [r3]
  3db248: 3340         	adds	r3, #0x40
  3db24a: 681b         	ldr	r3, [r3]
  3db24c: 9a03         	ldr	r2, [sp, #0xc]
  3db24e: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3db252: 4610         	mov	r0, r2
  3db254: 991c         	ldr	r1, [sp, #0x70]
  3db256: 4798         	blx	r3
  3db258: 9b03         	ldr	r3, [sp, #0xc]
  3db25a: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3db25e: 681b         	ldr	r3, [r3]
  3db260: 334c         	adds	r3, #0x4c
  3db262: 681d         	ldr	r5, [r3]
  3db264: 9b03         	ldr	r3, [sp, #0xc]
  3db266: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3db26a: 461e         	mov	r6, r3
  3db26c: 9b03         	ldr	r3, [sp, #0xc]
  3db26e: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  3db272: 681b         	ldr	r3, [r3]
  3db274: 3350         	adds	r3, #0x50
  3db276: 681b         	ldr	r3, [r3]
  3db278: 9a03         	ldr	r2, [sp, #0xc]
  3db27a: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  3db27e: 4610         	mov	r0, r2
  3db280: 4798         	blx	r3
  3db282: 4603         	mov	r3, r0
  3db284: 681f         	ldr	r7, [r3]
  3db286: 9b03         	ldr	r3, [sp, #0xc]
  3db288: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  3db28c: 681b         	ldr	r3, [r3]
  3db28e: 3350         	adds	r3, #0x50
  3db290: 681b         	ldr	r3, [r3]
  3db292: 9a03         	ldr	r2, [sp, #0xc]
  3db294: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  3db298: 4610         	mov	r0, r2
  3db29a: 4798         	blx	r3
  3db29c: 4603         	mov	r3, r0
  3db29e: 685b         	ldr	r3, [r3, #0x4]
  3db2a0: aa24         	add	r2, sp, #0x90
  3db2a2: 4610         	mov	r0, r2
  3db2a4: 4639         	mov	r1, r7
  3db2a6: 461a         	mov	r2, r3
  3db2a8: f1b7 fd22    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1b7a44
  3db2ac: eddd 7a1e    	vldr	s15, [sp, #120]
  3db2b0: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3db2b4: ab34         	add	r3, sp, #0xd0
  3db2b6: 4618         	mov	r0, r3
  3db2b8: ed9f 0bb3    	vldr	d0, [pc, #716]          @ 0x3db588 <SettingsLayer::init()+0xc10>
  3db2bc: eeb0 1b47    	vmov.f64	d1, d7
  3db2c0: f7fe fc1c    	bl	0x3d9afc <ScoreRow** std::__copy_move<true, true, std::random_access_iterator_tag>::__copy_m<ScoreRow*>(ScoreRow* const*, ScoreRow* const*, ScoreRow**)+0x1e4> @ imm = #-0x17c8
  3db2c4: ed9d 8b34    	vldr	d8, [sp, #208]
  3db2c8: 9b03         	ldr	r3, [sp, #0xc]
  3db2ca: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3db2ce: 681b         	ldr	r3, [r3]
  3db2d0: f503 73fe    	add.w	r3, r3, #0x1fc
  3db2d4: 681b         	ldr	r3, [r3]
  3db2d6: 9a03         	ldr	r2, [sp, #0xc]
  3db2d8: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3db2dc: 4610         	mov	r0, r2
  3db2de: 4798         	blx	r3
  3db2e0: 4607         	mov	r7, r0
  3db2e2: ab05         	add	r3, sp, #0x14
  3db2e4: 4618         	mov	r0, r3
  3db2e6: f3af f885    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3af10a
  3db2ea: aa06         	add	r2, sp, #0x18
  3db2ec: ab05         	add	r3, sp, #0x14
  3db2ee: 4610         	mov	r0, r2
  3db2f0: 4639         	mov	r1, r7
  3db2f2: 461a         	mov	r2, r3
  3db2f4: f3db fbb4    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3db768
  3db2f8: ab06         	add	r3, sp, #0x18
  3db2fa: 4618         	mov	r0, r3
  3db2fc: f3d9 feae    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x3d9d5c
  3db300: 4603         	mov	r3, r0
  3db302: ee07 3a90    	vmov	s15, r3
  3db306: eeb8 7a67    	vcvt.f32.u32	s14, s15
  3db30a: eddd 7a1d    	vldr	s15, [sp, #116]
  3db30e: ee27 7a27    	vmul.f32	s14, s14, s15
  3db312: eddd 7a1c    	vldr	s15, [sp, #112]
  3db316: ee27 7a27    	vmul.f32	s14, s14, s15
  3db31a: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3db31e: eec7 7a27    	vdiv.f32	s15, s14, s15
  3db322: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3db326: ee38 7b47    	vsub.f64	d7, d8, d7
  3db32a: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3db32e: eddd 7a1e    	vldr	s15, [sp, #120]
  3db332: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3db336: ab38         	add	r3, sp, #0xe0
  3db338: 4618         	mov	r0, r3
  3db33a: ed9f 0b93    	vldr	d0, [pc, #588]          @ 0x3db588 <SettingsLayer::init()+0xc10>
  3db33e: eeb0 1b47    	vmov.f64	d1, d7
  3db342: f7fe fbdb    	bl	0x3d9afc <ScoreRow** std::__copy_move<true, true, std::random_access_iterator_tag>::__copy_m<ScoreRow*>(ScoreRow* const*, ScoreRow* const*, ScoreRow**)+0x1e4> @ imm = #-0x184a
  3db346: ed9d 7b3a    	vldr	d7, [sp, #232]
  3db34a: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3db34e: ab26         	add	r3, sp, #0x98
  3db350: 4618         	mov	r0, r3
  3db352: ee18 1a10    	vmov	r1, s16
  3db356: ee17 2a90    	vmov	r2, s15
  3db35a: f1b7 fcc9    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1b7992
  3db35e: a928         	add	r1, sp, #0xa0
  3db360: aa24         	add	r2, sp, #0x90
  3db362: ab26         	add	r3, sp, #0x98
  3db364: 4608         	mov	r0, r1
  3db366: 4611         	mov	r1, r2
  3db368: 461a         	mov	r2, r3
  3db36a: f7fe fbb7    	bl	0x3d9adc <ScoreRow** std::__copy_move<true, true, std::random_access_iterator_tag>::__copy_m<ScoreRow*>(ScoreRow* const*, ScoreRow* const*, ScoreRow**)+0x1c4> @ imm = #-0x1892
  3db36e: ab28         	add	r3, sp, #0xa0
  3db370: 4630         	mov	r0, r6
  3db372: 4619         	mov	r1, r3
  3db374: 47a8         	blx	r5
  3db376: ab06         	add	r3, sp, #0x18
  3db378: 4618         	mov	r0, r3
  3db37a: f3da facb    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3da596
  3db37e: ab05         	add	r3, sp, #0x14
  3db380: 4618         	mov	r0, r3
  3db382: f3af f83b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3af076
  3db386: 9b03         	ldr	r3, [sp, #0xc]
  3db388: 681b         	ldr	r3, [r3]
  3db38a: 33c8         	adds	r3, #0xc8
  3db38c: 681b         	ldr	r3, [r3]
  3db38e: 9903         	ldr	r1, [sp, #0xc]
  3db390: 9a03         	ldr	r2, [sp, #0xc]
  3db392: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3db396: 4608         	mov	r0, r1
  3db398: 4611         	mov	r1, r2
  3db39a: 4798         	blx	r3
  3db39c: 4b7c         	ldr	r3, [pc, #0x1f0]        @ 0x3db590 <SettingsLayer::init()+0xc18>
  3db39e: 447b         	add	r3, pc
  3db3a0: 4618         	mov	r0, r3
  3db3a2: f3d9 ffad    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3d9f5a
  3db3a6: 4603         	mov	r3, r0
  3db3a8: 2220         	movs	r2, #0x20
  3db3aa: 9200         	str	r2, [sp]
  3db3ac: 4a79         	ldr	r2, [pc, #0x1e4]        @ 0x3db594 <SettingsLayer::init()+0xc1c>
  3db3ae: 447a         	add	r2, pc
  3db3b0: 4610         	mov	r0, r2
  3db3b2: 4619         	mov	r1, r3
  3db3b4: 2220         	movs	r2, #0x20
  3db3b6: 2320         	movs	r3, #0x20
  3db3b8: f1c9 ffde    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1c9fbc
  3db3bc: 4602         	mov	r2, r0
  3db3be: 9b03         	ldr	r3, [sp, #0xc]
  3db3c0: f8c3 2120    	str.w	r2, [r3, #0x120]
  3db3c4: 9b03         	ldr	r3, [sp, #0xc]
  3db3c6: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3db3ca: 4618         	mov	r0, r3
  3db3cc: f1bc fd8c    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1bcb18
  3db3d0: 9b03         	ldr	r3, [sp, #0xc]
  3db3d2: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3db3d6: eddd 7a1d    	vldr	s15, [sp, #116]
  3db3da: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3db3de: ee17 2a90    	vmov	r2, s15
  3db3e2: 4618         	mov	r0, r3
  3db3e4: 4611         	mov	r1, r2
  3db3e6: f1ca fccd    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1ca99a
  3db3ea: 9b03         	ldr	r3, [sp, #0xc]
  3db3ec: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3db3f0: 681b         	ldr	r3, [r3]
  3db3f2: 3340         	adds	r3, #0x40
  3db3f4: 681b         	ldr	r3, [r3]
  3db3f6: 9a03         	ldr	r2, [sp, #0xc]
  3db3f8: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  3db3fc: 4610         	mov	r0, r2
  3db3fe: 991c         	ldr	r1, [sp, #0x70]
  3db400: 4798         	blx	r3
  3db402: 9b03         	ldr	r3, [sp, #0xc]
  3db404: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3db408: 681b         	ldr	r3, [r3]
  3db40a: 334c         	adds	r3, #0x4c
  3db40c: 681d         	ldr	r5, [r3]
  3db40e: 9b03         	ldr	r3, [sp, #0xc]
  3db410: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3db414: 461e         	mov	r6, r3
  3db416: 9b03         	ldr	r3, [sp, #0xc]
  3db418: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  3db41c: 681b         	ldr	r3, [r3]
  3db41e: 3350         	adds	r3, #0x50
  3db420: 681b         	ldr	r3, [r3]
  3db422: 9a03         	ldr	r2, [sp, #0xc]
  3db424: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  3db428: 4610         	mov	r0, r2
  3db42a: 4798         	blx	r3
  3db42c: 4603         	mov	r3, r0
  3db42e: 681f         	ldr	r7, [r3]
  3db430: 9b03         	ldr	r3, [sp, #0xc]
  3db432: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  3db436: 681b         	ldr	r3, [r3]
  3db438: 3350         	adds	r3, #0x50
  3db43a: 681b         	ldr	r3, [r3]
  3db43c: 9a03         	ldr	r2, [sp, #0xc]
  3db43e: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  3db442: 4610         	mov	r0, r2
  3db444: 4798         	blx	r3
  3db446: 4603         	mov	r3, r0
  3db448: 685b         	ldr	r3, [r3, #0x4]
  3db44a: aa24         	add	r2, sp, #0x90
  3db44c: 4610         	mov	r0, r2
  3db44e: 4639         	mov	r1, r7
  3db450: 461a         	mov	r2, r3
  3db452: f1b7 fc4d    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1b789a
  3db456: eddd 7a1e    	vldr	s15, [sp, #120]
  3db45a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3db45e: ab34         	add	r3, sp, #0xd0
  3db460: 4618         	mov	r0, r3
  3db462: ed9f 0b49    	vldr	d0, [pc, #292]          @ 0x3db588 <SettingsLayer::init()+0xc10>
  3db466: eeb0 1b47    	vmov.f64	d1, d7
  3db46a: f7fe fb47    	bl	0x3d9afc <ScoreRow** std::__copy_move<true, true, std::random_access_iterator_tag>::__copy_m<ScoreRow*>(ScoreRow* const*, ScoreRow* const*, ScoreRow**)+0x1e4> @ imm = #-0x1972
  3db46e: ed9d 8b34    	vldr	d8, [sp, #208]
  3db472: 9b03         	ldr	r3, [sp, #0xc]
  3db474: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3db478: 681b         	ldr	r3, [r3]
  3db47a: f503 73fe    	add.w	r3, r3, #0x1fc
  3db47e: 681b         	ldr	r3, [r3]
  3db480: 9a03         	ldr	r2, [sp, #0xc]
  3db482: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  3db486: 4610         	mov	r0, r2
  3db488: 4798         	blx	r3
  3db48a: 4607         	mov	r7, r0
  3db48c: ab05         	add	r3, sp, #0x14
  3db48e: 4618         	mov	r0, r3
  3db490: f3ae ffb0    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3aef60
  3db494: aa06         	add	r2, sp, #0x18
  3db496: ab05         	add	r3, sp, #0x14
  3db498: 4610         	mov	r0, r2
  3db49a: 4639         	mov	r1, r7
  3db49c: 461a         	mov	r2, r3
  3db49e: f3db fadf    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3db5be
  3db4a2: ab06         	add	r3, sp, #0x18
  3db4a4: 4618         	mov	r0, r3
  3db4a6: f3d9 fdd9    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x3d9bb2
  3db4aa: 4603         	mov	r3, r0
  3db4ac: ee07 3a90    	vmov	s15, r3
  3db4b0: eeb8 7a67    	vcvt.f32.u32	s14, s15
  3db4b4: eddd 7a1d    	vldr	s15, [sp, #116]
  3db4b8: ee27 7a27    	vmul.f32	s14, s14, s15
  3db4bc: eddd 7a1c    	vldr	s15, [sp, #112]
  3db4c0: ee27 7a27    	vmul.f32	s14, s14, s15
  3db4c4: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3db4c8: eec7 7a27    	vdiv.f32	s15, s14, s15
  3db4cc: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3db4d0: ee38 7b47    	vsub.f64	d7, d8, d7
  3db4d4: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3db4d8: eddd 7a1e    	vldr	s15, [sp, #120]
  3db4dc: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3db4e0: ab38         	add	r3, sp, #0xe0
  3db4e2: 4618         	mov	r0, r3
  3db4e4: ed9f 0b28    	vldr	d0, [pc, #160]          @ 0x3db588 <SettingsLayer::init()+0xc10>
  3db4e8: eeb0 1b47    	vmov.f64	d1, d7
  3db4ec: f7fe fb06    	bl	0x3d9afc <ScoreRow** std::__copy_move<true, true, std::random_access_iterator_tag>::__copy_m<ScoreRow*>(ScoreRow* const*, ScoreRow* const*, ScoreRow**)+0x1e4> @ imm = #-0x19f4
  3db4f0: ed9d 7b3a    	vldr	d7, [sp, #232]
  3db4f4: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3db4f8: ab26         	add	r3, sp, #0x98
  3db4fa: 4618         	mov	r0, r3
  3db4fc: ee18 1a10    	vmov	r1, s16
  3db500: ee17 2a90    	vmov	r2, s15
  3db504: f1b7 fbf4    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1b77e8
  3db508: a928         	add	r1, sp, #0xa0
  3db50a: aa24         	add	r2, sp, #0x90
  3db50c: ab26         	add	r3, sp, #0x98
  3db50e: 4608         	mov	r0, r1
  3db510: 4611         	mov	r1, r2
  3db512: 461a         	mov	r2, r3
  3db514: f7fe fae2    	bl	0x3d9adc <ScoreRow** std::__copy_move<true, true, std::random_access_iterator_tag>::__copy_m<ScoreRow*>(ScoreRow* const*, ScoreRow* const*, ScoreRow**)+0x1c4> @ imm = #-0x1a3c
  3db518: ab28         	add	r3, sp, #0xa0
  3db51a: 4630         	mov	r0, r6
  3db51c: 4619         	mov	r1, r3
  3db51e: 47a8         	blx	r5
  3db520: ab06         	add	r3, sp, #0x18
  3db522: 4618         	mov	r0, r3
  3db524: f3da f9f6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3da3ec
  3db528: ab05         	add	r3, sp, #0x14
  3db52a: 4618         	mov	r0, r3
  3db52c: f3ae ff66    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3aeecc
  3db530: 9b03         	ldr	r3, [sp, #0xc]
  3db532: 681b         	ldr	r3, [r3]
  3db534: 33c8         	adds	r3, #0xc8
  3db536: 681b         	ldr	r3, [r3]
  3db538: 9903         	ldr	r1, [sp, #0xc]
  3db53a: 9a03         	ldr	r2, [sp, #0xc]
  3db53c: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  3db540: 4608         	mov	r0, r1
  3db542: 4611         	mov	r1, r2
  3db544: 4798         	blx	r3
  3db546: 4b14         	ldr	r3, [pc, #0x50]         @ 0x3db598 <SettingsLayer::init()+0xc20>
  3db548: 447b         	add	r3, pc
  3db54a: 4618         	mov	r0, r3
  3db54c: f3d9 fed8    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3d9db0
  3db550: 4603         	mov	r3, r0
  3db552: 2220         	movs	r2, #0x20
  3db554: 9200         	str	r2, [sp]
  3db556: 4a11         	ldr	r2, [pc, #0x44]         @ 0x3db59c <SettingsLayer::init()+0xc24>
  3db558: 447a         	add	r2, pc
  3db55a: 4610         	mov	r0, r2
  3db55c: 4619         	mov	r1, r3
  3db55e: 2220         	movs	r2, #0x20
  3db560: 2320         	movs	r3, #0x20
  3db562: f1c9 ff09    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1c9e12
  3db566: 4602         	mov	r2, r0
  3db568: 9b03         	ldr	r3, [sp, #0xc]
  3db56a: f8c3 211c    	str.w	r2, [r3, #0x11c]
  3db56e: 9b03         	ldr	r3, [sp, #0xc]
  3db570: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3db574: 4618         	mov	r0, r3
  3db576: f1bc fcb7    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1bc96e
  3db57a: 9b03         	ldr	r3, [sp, #0xc]
  3db57c: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3db580: 681b         	ldr	r3, [r3]
  3db582: 334c         	adds	r3, #0x4c
  3db584: e00c         	b	0x3db5a0 <SettingsLayer::init()+0xc28> @ imm = #0x18
  3db586: bf00         	nop
  3db590: 773a         	strb	r2, [r7, #0x1c]
  3db592: 0056         	lsls	r6, r2, #0x1
  3db594: c6aa         	stm	r6!, {r1, r3, r5, r7}
  3db596: 003f         	movs	r7, r7
  3db598: 7590         	strb	r0, [r2, #0x16]
  3db59a: 0056         	lsls	r6, r2, #0x1
  3db59c: c50c         	stm	r5!, {r2, r3}
  3db59e: 003f         	movs	r7, r7
  3db5a0: 681d         	ldr	r5, [r3]
  3db5a2: 9b03         	ldr	r3, [sp, #0xc]
  3db5a4: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3db5a8: 461e         	mov	r6, r3
  3db5aa: 9b03         	ldr	r3, [sp, #0xc]
  3db5ac: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3db5b0: 681b         	ldr	r3, [r3]
  3db5b2: 3350         	adds	r3, #0x50
  3db5b4: 681b         	ldr	r3, [r3]
  3db5b6: 9a03         	ldr	r2, [sp, #0xc]
  3db5b8: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  3db5bc: 4610         	mov	r0, r2
  3db5be: 4798         	blx	r3
  3db5c0: 4603         	mov	r3, r0
  3db5c2: 681f         	ldr	r7, [r3]
  3db5c4: 9b03         	ldr	r3, [sp, #0xc]
  3db5c6: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3db5ca: 681b         	ldr	r3, [r3]
  3db5cc: 3350         	adds	r3, #0x50
  3db5ce: 681b         	ldr	r3, [r3]
  3db5d0: 9a03         	ldr	r2, [sp, #0xc]
  3db5d2: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  3db5d6: 4610         	mov	r0, r2
  3db5d8: 4798         	blx	r3
  3db5da: 4603         	mov	r3, r0
  3db5dc: 685b         	ldr	r3, [r3, #0x4]
  3db5de: aa24         	add	r2, sp, #0x90
  3db5e0: 4610         	mov	r0, r2
  3db5e2: 4639         	mov	r1, r7
  3db5e4: 461a         	mov	r2, r3
  3db5e6: f1b7 fb83    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1b7706
  3db5ea: eddd 7a1e    	vldr	s15, [sp, #120]
  3db5ee: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3db5f2: ab34         	add	r3, sp, #0xd0
  3db5f4: 4618         	mov	r0, r3
  3db5f6: ed9f 0bb2    	vldr	d0, [pc, #712]          @ 0x3db8c0 <SettingsLayer::init()+0xf48>
  3db5fa: eeb0 1b47    	vmov.f64	d1, d7
  3db5fe: f7fe fa7d    	bl	0x3d9afc <ScoreRow** std::__copy_move<true, true, std::random_access_iterator_tag>::__copy_m<ScoreRow*>(ScoreRow* const*, ScoreRow* const*, ScoreRow**)+0x1e4> @ imm = #-0x1b06
  3db602: ed9d 8b34    	vldr	d8, [sp, #208]
  3db606: 9b03         	ldr	r3, [sp, #0xc]
  3db608: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3db60c: 681b         	ldr	r3, [r3]
  3db60e: f503 73fe    	add.w	r3, r3, #0x1fc
  3db612: 681b         	ldr	r3, [r3]
  3db614: 9a03         	ldr	r2, [sp, #0xc]
  3db616: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  3db61a: 4610         	mov	r0, r2
  3db61c: 4798         	blx	r3
  3db61e: 4607         	mov	r7, r0
  3db620: ab05         	add	r3, sp, #0x14
  3db622: 4618         	mov	r0, r3
  3db624: f3ae fee6    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3aedcc
  3db628: aa06         	add	r2, sp, #0x18
  3db62a: ab05         	add	r3, sp, #0x14
  3db62c: 4610         	mov	r0, r2
  3db62e: 4639         	mov	r1, r7
  3db630: 461a         	mov	r2, r3
  3db632: f3db fa15    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3db42a
  3db636: ab06         	add	r3, sp, #0x18
  3db638: 4618         	mov	r0, r3
  3db63a: f3d9 fd0f    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x3d9a1e
  3db63e: 4603         	mov	r3, r0
  3db640: ee07 3a90    	vmov	s15, r3
  3db644: eeb8 7a67    	vcvt.f32.u32	s14, s15
  3db648: eddd 7a1d    	vldr	s15, [sp, #116]
  3db64c: ee27 7a27    	vmul.f32	s14, s14, s15
  3db650: eddd 7a1c    	vldr	s15, [sp, #112]
  3db654: ee27 7a27    	vmul.f32	s14, s14, s15
  3db658: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3db65c: eec7 7a27    	vdiv.f32	s15, s14, s15
  3db660: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3db664: ee38 7b47    	vsub.f64	d7, d8, d7
  3db668: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3db66c: eddd 7a1e    	vldr	s15, [sp, #120]
  3db670: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3db674: ab38         	add	r3, sp, #0xe0
  3db676: 4618         	mov	r0, r3
  3db678: ed9f 0b91    	vldr	d0, [pc, #580]          @ 0x3db8c0 <SettingsLayer::init()+0xf48>
  3db67c: eeb0 1b47    	vmov.f64	d1, d7
  3db680: f7fe fa3c    	bl	0x3d9afc <ScoreRow** std::__copy_move<true, true, std::random_access_iterator_tag>::__copy_m<ScoreRow*>(ScoreRow* const*, ScoreRow* const*, ScoreRow**)+0x1e4> @ imm = #-0x1b88
  3db684: ed9d 7b3a    	vldr	d7, [sp, #232]
  3db688: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3db68c: ab26         	add	r3, sp, #0x98
  3db68e: 4618         	mov	r0, r3
  3db690: ee18 1a10    	vmov	r1, s16
  3db694: ee17 2a90    	vmov	r2, s15
  3db698: f1b7 fb2a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1b7654
  3db69c: a928         	add	r1, sp, #0xa0
  3db69e: aa24         	add	r2, sp, #0x90
  3db6a0: ab26         	add	r3, sp, #0x98
  3db6a2: 4608         	mov	r0, r1
  3db6a4: 4611         	mov	r1, r2
  3db6a6: 461a         	mov	r2, r3
  3db6a8: f7fe fa18    	bl	0x3d9adc <ScoreRow** std::__copy_move<true, true, std::random_access_iterator_tag>::__copy_m<ScoreRow*>(ScoreRow* const*, ScoreRow* const*, ScoreRow**)+0x1c4> @ imm = #-0x1bd0
  3db6ac: ab28         	add	r3, sp, #0xa0
  3db6ae: 4630         	mov	r0, r6
  3db6b0: 4619         	mov	r1, r3
  3db6b2: 47a8         	blx	r5
  3db6b4: ab06         	add	r3, sp, #0x18
  3db6b6: 4618         	mov	r0, r3
  3db6b8: f3da f92c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3da258
  3db6bc: ab05         	add	r3, sp, #0x14
  3db6be: 4618         	mov	r0, r3
  3db6c0: f3ae fe9c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3aed38
  3db6c4: 9b03         	ldr	r3, [sp, #0xc]
  3db6c6: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3db6ca: 681b         	ldr	r3, [r3]
  3db6cc: 3340         	adds	r3, #0x40
  3db6ce: 681b         	ldr	r3, [r3]
  3db6d0: 9a03         	ldr	r2, [sp, #0xc]
  3db6d2: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  3db6d6: 4610         	mov	r0, r2
  3db6d8: 991c         	ldr	r1, [sp, #0x70]
  3db6da: 4798         	blx	r3
  3db6dc: 9b03         	ldr	r3, [sp, #0xc]
  3db6de: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3db6e2: eddd 7a1d    	vldr	s15, [sp, #116]
  3db6e6: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3db6ea: ee17 2a90    	vmov	r2, s15
  3db6ee: 4618         	mov	r0, r3
  3db6f0: 4611         	mov	r1, r2
  3db6f2: f1ca fb47    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1ca68e
  3db6f6: 9b03         	ldr	r3, [sp, #0xc]
  3db6f8: 681b         	ldr	r3, [r3]
  3db6fa: 33c8         	adds	r3, #0xc8
  3db6fc: 681b         	ldr	r3, [r3]
  3db6fe: 9903         	ldr	r1, [sp, #0xc]
  3db700: 9a03         	ldr	r2, [sp, #0xc]
  3db702: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  3db706: 4608         	mov	r0, r1
  3db708: 4611         	mov	r1, r2
  3db70a: 4798         	blx	r3
  3db70c: 9a03         	ldr	r2, [sp, #0xc]
  3db70e: 4b6f         	ldr	r3, [pc, #0x1bc]        @ 0x3db8cc <SettingsLayer::init()+0xf54>
  3db710: 58e3         	ldr	r3, [r4, r3]
  3db712: 9338         	str	r3, [sp, #0xe0]
  3db714: 2300         	movs	r3, #0x0
  3db716: 9339         	str	r3, [sp, #0xe4]
  3db718: 9b39         	ldr	r3, [sp, #0xe4]
  3db71a: 9300         	str	r3, [sp]
  3db71c: 9b38         	ldr	r3, [sp, #0xe0]
  3db71e: 9815         	ldr	r0, [sp, #0x54]
  3db720: 9916         	ldr	r1, [sp, #0x58]
  3db722: f1dc fe03    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x1dcc06
  3db726: 4603         	mov	r3, r0
  3db728: 931f         	str	r3, [sp, #0x7c]
  3db72a: 981f         	ldr	r0, [sp, #0x7c]
  3db72c: 2100         	movs	r1, #0x0
  3db72e: f1d9 fd05    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x1d9a0a
  3db732: 4602         	mov	r2, r0
  3db734: 9b03         	ldr	r3, [sp, #0xc]
  3db736: f8c3 213c    	str.w	r2, [r3, #0x13c]
  3db73a: 9b03         	ldr	r3, [sp, #0xc]
  3db73c: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3db740: 4618         	mov	r0, r3
  3db742: f1bc fbd1    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1bc7a2
  3db746: 9b03         	ldr	r3, [sp, #0xc]
  3db748: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3db74c: 681b         	ldr	r3, [r3]
  3db74e: 334c         	adds	r3, #0x4c
  3db750: 681d         	ldr	r5, [r3]
  3db752: 9b03         	ldr	r3, [sp, #0xc]
  3db754: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3db758: 461e         	mov	r6, r3
  3db75a: 4b5d         	ldr	r3, [pc, #0x174]        @ 0x3db8d0 <SettingsLayer::init()+0xf58>
  3db75c: 58e3         	ldr	r3, [r4, r3]
  3db75e: ed93 7a00    	vldr	s14, [r3]
  3db762: eddf 7a59    	vldr	s15, [pc, #356]         @ 0x3db8c8 <SettingsLayer::init()+0xf50>
  3db766: ee77 7a67    	vsub.f32	s15, s14, s15
  3db76a: ab34         	add	r3, sp, #0xd0
  3db76c: 4618         	mov	r0, r3
  3db76e: ee17 1a90    	vmov	r1, s15
  3db772: f04f 0200    	mov.w	r2, #0x0
  3db776: f2c4 22a0    	movt	r2, #0x42a0
  3db77a: f1b7 fab9    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1b7572
  3db77e: ab34         	add	r3, sp, #0xd0
  3db780: 4630         	mov	r0, r6
  3db782: 4619         	mov	r1, r3
  3db784: 47a8         	blx	r5
  3db786: 9b03         	ldr	r3, [sp, #0xc]
  3db788: 681b         	ldr	r3, [r3]
  3db78a: 33c8         	adds	r3, #0xc8
  3db78c: 681b         	ldr	r3, [r3]
  3db78e: 9903         	ldr	r1, [sp, #0xc]
  3db790: 9a03         	ldr	r2, [sp, #0xc]
  3db792: f8d2 213c    	ldr.w	r2, [r2, #0x13c]
  3db796: 4608         	mov	r0, r1
  3db798: 4611         	mov	r1, r2
  3db79a: 4798         	blx	r3
  3db79c: f051 f8aa    	bl	0x42c8f4 <ApplicationInterface::getOSType()> @ imm = #0x51154
  3db7a0: 4603         	mov	r3, r0
  3db7a2: f8ad 3016    	strh.w	r3, [sp, #0x16]
  3db7a6: f9bd 3016    	ldrsh.w	r3, [sp, #0x16]
  3db7aa: 011a         	lsls	r2, r3, #0x4
  3db7ac: 4b49         	ldr	r3, [pc, #0x124]        @ 0x3db8d4 <SettingsLayer::init()+0xf5c>
  3db7ae: 58e3         	ldr	r3, [r4, r3]
  3db7b0: 4413         	add	r3, r2
  3db7b2: 4a49         	ldr	r2, [pc, #0x124]        @ 0x3db8d8 <SettingsLayer::init()+0xf60>
  3db7b4: 447a         	add	r2, pc
  3db7b6: 4610         	mov	r0, r2
  3db7b8: 4619         	mov	r1, r3
  3db7ba: f1fc fd21    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x1fca42
  3db7be: 4602         	mov	r2, r0
  3db7c0: 9b03         	ldr	r3, [sp, #0xc]
  3db7c2: f8c3 2144    	str.w	r2, [r3, #0x144]
  3db7c6: 9b03         	ldr	r3, [sp, #0xc]
  3db7c8: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  3db7cc: 4618         	mov	r0, r3
  3db7ce: f1bc fb8b    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1bc716
  3db7d2: 9b03         	ldr	r3, [sp, #0xc]
  3db7d4: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  3db7d8: 681b         	ldr	r3, [r3]
  3db7da: 3340         	adds	r3, #0x40
  3db7dc: 681b         	ldr	r3, [r3]
  3db7de: 9a03         	ldr	r2, [sp, #0xc]
  3db7e0: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  3db7e4: 4610         	mov	r0, r2
  3db7e6: f649 119a    	movw	r1, #0x999a
  3db7ea: f6c3 7119    	movt	r1, #0x3f19
  3db7ee: 4798         	blx	r3
  3db7f0: 9b03         	ldr	r3, [sp, #0xc]
  3db7f2: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  3db7f6: 681b         	ldr	r3, [r3]
  3db7f8: 334c         	adds	r3, #0x4c
  3db7fa: 681d         	ldr	r5, [r3]
  3db7fc: 9b03         	ldr	r3, [sp, #0xc]
  3db7fe: f8d3 6144    	ldr.w	r6, [r3, #0x144]
  3db802: 4b33         	ldr	r3, [pc, #0xcc]         @ 0x3db8d0 <SettingsLayer::init()+0xf58>
  3db804: 58e3         	ldr	r3, [r4, r3]
  3db806: ed93 7a00    	vldr	s14, [r3]
  3db80a: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3db80e: ee87 7a27    	vdiv.f32	s14, s14, s15
  3db812: eef3 7a02    	vmov.f32	s15, #1.800000e+01
  3db816: ee77 7a67    	vsub.f32	s15, s14, s15
  3db81a: ab34         	add	r3, sp, #0xd0
  3db81c: 4618         	mov	r0, r3
  3db81e: ee17 1a90    	vmov	r1, s15
  3db822: f04f 0200    	mov.w	r2, #0x0
  3db826: f2c4 1270    	movt	r2, #0x4170
  3db82a: f1b7 fa61    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1b74c2
  3db82e: ab34         	add	r3, sp, #0xd0
  3db830: 4630         	mov	r0, r6
  3db832: 4619         	mov	r1, r3
  3db834: 47a8         	blx	r5
  3db836: 9b03         	ldr	r3, [sp, #0xc]
  3db838: 681b         	ldr	r3, [r3]
  3db83a: 33c8         	adds	r3, #0xc8
  3db83c: 681b         	ldr	r3, [r3]
  3db83e: 9903         	ldr	r1, [sp, #0xc]
  3db840: 9a03         	ldr	r2, [sp, #0xc]
  3db842: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  3db846: 4608         	mov	r0, r1
  3db848: 4611         	mov	r1, r2
  3db84a: 4798         	blx	r3
  3db84c: ab26         	add	r3, sp, #0x98
  3db84e: 4618         	mov	r0, r3
  3db850: f050 fcc4    	bl	0x42c1dc <ApplicationInterface::getAppVersion()> @ imm = #0x50988
  3db854: ab26         	add	r3, sp, #0x98
  3db856: 4618         	mov	r0, r3
  3db858: f3d9 fd52    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3d9aa4
  3db85c: 4604         	mov	r4, r0
  3db85e: 4b1f         	ldr	r3, [pc, #0x7c]         @ 0x3db8dc <SettingsLayer::init()+0xf64>
  3db860: 447b         	add	r3, pc
  3db862: 4618         	mov	r0, r3
  3db864: f3d9 fd4c    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3d9a98
  3db868: 4603         	mov	r3, r0
  3db86a: 2220         	movs	r2, #0x20
  3db86c: 9200         	str	r2, [sp]
  3db86e: 4620         	mov	r0, r4
  3db870: 4619         	mov	r1, r3
  3db872: 2220         	movs	r2, #0x20
  3db874: 2320         	movs	r3, #0x20
  3db876: f1c9 fd7f    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1c9afe
  3db87a: 4602         	mov	r2, r0
  3db87c: 9b03         	ldr	r3, [sp, #0xc]
  3db87e: f8c3 2140    	str.w	r2, [r3, #0x140]
  3db882: 9b03         	ldr	r3, [sp, #0xc]
  3db884: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  3db888: 4618         	mov	r0, r3
  3db88a: f1bc fb2d    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1bc65a
  3db88e: 9b03         	ldr	r3, [sp, #0xc]
  3db890: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  3db894: 4618         	mov	r0, r3
  3db896: 2118         	movs	r1, #0x18
  3db898: f1ca fa74    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1ca4e8
  3db89c: 9b03         	ldr	r3, [sp, #0xc]
  3db89e: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  3db8a2: 681b         	ldr	r3, [r3]
  3db8a4: 3340         	adds	r3, #0x40
  3db8a6: 681b         	ldr	r3, [r3]
  3db8a8: 9a03         	ldr	r2, [sp, #0xc]
  3db8aa: f8d2 2140    	ldr.w	r2, [r2, #0x140]
  3db8ae: 4610         	mov	r0, r2
  3db8b0: f649 119a    	movw	r1, #0x999a
  3db8b4: f6c3 6199    	movt	r1, #0x3e99
  3db8b8: 4798         	blx	r3
  3db8ba: 9b03         	ldr	r3, [sp, #0xc]
  3db8bc: e010         	b	0x3db8e0 <SettingsLayer::init()+0xf68> @ imm = #0x20
  3db8be: bf00         	nop
  3db8c8: 0000         	movs	r0, r0
  3db8ca: 4270         	rsbs	r0, r6, #0
  3db8cc: defc         	udf	#0xfc
  3db8ce: ffff d724    	<unknown>
  3db8d2: ffff d7c4    	<unknown>
  3db8d6: ffff c2b8    	vrshr.u64	d28, d24, #0x1
  3db8da: 003f         	movs	r7, r7
  3db8dc: 7278         	strb	r0, [r7, #0x9]
  3db8de: 0056         	lsls	r6, r2, #0x1
  3db8e0: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  3db8e4: 681b         	ldr	r3, [r3]
  3db8e6: 334c         	adds	r3, #0x4c
  3db8e8: 681c         	ldr	r4, [r3]
  3db8ea: 9b03         	ldr	r3, [sp, #0xc]
  3db8ec: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  3db8f0: 461d         	mov	r5, r3
  3db8f2: 9b03         	ldr	r3, [sp, #0xc]
  3db8f4: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  3db8f8: 681b         	ldr	r3, [r3]
  3db8fa: 3350         	adds	r3, #0x50
  3db8fc: 681b         	ldr	r3, [r3]
  3db8fe: 9a03         	ldr	r2, [sp, #0xc]
  3db900: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  3db904: 4610         	mov	r0, r2
  3db906: 4798         	blx	r3
  3db908: 4606         	mov	r6, r0
  3db90a: ab28         	add	r3, sp, #0xa0
  3db90c: 4618         	mov	r0, r3
  3db90e: f04f 0100    	mov.w	r1, #0x0
  3db912: f2c4 1120    	movt	r1, #0x4120
  3db916: f04f 0200    	mov.w	r2, #0x0
  3db91a: f1b7 f9e9    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1b73d2
  3db91e: aa34         	add	r2, sp, #0xd0
  3db920: ab28         	add	r3, sp, #0xa0
  3db922: 4610         	mov	r0, r2
  3db924: 4631         	mov	r1, r6
  3db926: 461a         	mov	r2, r3
  3db928: f7fe f8d8    	bl	0x3d9adc <ScoreRow** std::__copy_move<true, true, std::random_access_iterator_tag>::__copy_m<ScoreRow*>(ScoreRow* const*, ScoreRow* const*, ScoreRow**)+0x1c4> @ imm = #-0x1e50
  3db92c: ab34         	add	r3, sp, #0xd0
  3db92e: 4628         	mov	r0, r5
  3db930: 4619         	mov	r1, r3
  3db932: 47a0         	blx	r4
  3db934: 9b03         	ldr	r3, [sp, #0xc]
  3db936: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  3db93a: 681b         	ldr	r3, [r3]
  3db93c: 337c         	adds	r3, #0x7c
  3db93e: 681c         	ldr	r4, [r3]
  3db940: 9b03         	ldr	r3, [sp, #0xc]
  3db942: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  3db946: 461d         	mov	r5, r3
  3db948: ab34         	add	r3, sp, #0xd0
  3db94a: 4618         	mov	r0, r3
  3db94c: f04f 0100    	mov.w	r1, #0x0
  3db950: f04f 527c    	mov.w	r2, #0x3f000000
  3db954: f1b7 f9cc    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1b7398
  3db958: ab34         	add	r3, sp, #0xd0
  3db95a: 4628         	mov	r0, r5
  3db95c: 4619         	mov	r1, r3
  3db95e: 47a0         	blx	r4
  3db960: 9b03         	ldr	r3, [sp, #0xc]
  3db962: 681b         	ldr	r3, [r3]
  3db964: 33c8         	adds	r3, #0xc8
  3db966: 681b         	ldr	r3, [r3]
  3db968: 9903         	ldr	r1, [sp, #0xc]
  3db96a: 9a03         	ldr	r2, [sp, #0xc]
  3db96c: f8d2 2140    	ldr.w	r2, [r2, #0x140]
  3db970: 4608         	mov	r0, r1
  3db972: 4611         	mov	r1, r2
  3db974: 4798         	blx	r3
  3db976: 9b03         	ldr	r3, [sp, #0xc]
  3db978: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  3db97c: 681b         	ldr	r3, [r3]
  3db97e: f503 73d2    	add.w	r3, r3, #0x1a4
  3db982: 681b         	ldr	r3, [r3]
  3db984: 9a03         	ldr	r2, [sp, #0xc]
  3db986: f8d2 2140    	ldr.w	r2, [r2, #0x140]
  3db98a: 4610         	mov	r0, r2
  3db98c: 2196         	movs	r1, #0x96
  3db98e: 4798         	blx	r3
  3db990: 2401         	movs	r4, #0x1
  3db992: ab26         	add	r3, sp, #0x98
  3db994: 4618         	mov	r0, r3
  3db996: f3d9 ffbd    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d9f7a
  3db99a: 4623         	mov	r3, r4
  3db99c: e03c         	b	0x3dba18 <SettingsLayer::init()+0x10a0> @ imm = #0x78
  3db99e: ab06         	add	r3, sp, #0x18
  3db9a0: 4618         	mov	r0, r3
  3db9a2: f3d9 ffb7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d9f6e
  3db9a6: e7ff         	b	0x3db9a8 <SettingsLayer::init()+0x1030> @ imm = #-0x2
  3db9a8: ab05         	add	r3, sp, #0x14
  3db9aa: 4618         	mov	r0, r3
  3db9ac: f3ae fd26    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3aea4c
  3db9b0: f3ac fb7c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3ac6f8
  3db9b4: ab06         	add	r3, sp, #0x18
  3db9b6: 4618         	mov	r0, r3
  3db9b8: f3d9 ffac    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d9f58
  3db9bc: e7ff         	b	0x3db9be <SettingsLayer::init()+0x1046> @ imm = #-0x2
  3db9be: ab05         	add	r3, sp, #0x14
  3db9c0: 4618         	mov	r0, r3
  3db9c2: f3ae fd1b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3aea36
  3db9c6: f3ac fb71    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3ac6e2
  3db9ca: ab06         	add	r3, sp, #0x18
  3db9cc: 4618         	mov	r0, r3
  3db9ce: f3d9 ffa1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d9f42
  3db9d2: e7ff         	b	0x3db9d4 <SettingsLayer::init()+0x105c> @ imm = #-0x2
  3db9d4: ab05         	add	r3, sp, #0x14
  3db9d6: 4618         	mov	r0, r3
  3db9d8: f3ae fd10    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3aea20
  3db9dc: f3ac fb66    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3ac6cc
  3db9e0: ab06         	add	r3, sp, #0x18
  3db9e2: 4618         	mov	r0, r3
  3db9e4: f3d9 ff96    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d9f2c
  3db9e8: e7ff         	b	0x3db9ea <SettingsLayer::init()+0x1072> @ imm = #-0x2
  3db9ea: ab05         	add	r3, sp, #0x14
  3db9ec: 4618         	mov	r0, r3
  3db9ee: f3ae fd05    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3aea0a
  3db9f2: f3ac fb5b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3ac6b6
  3db9f6: ab06         	add	r3, sp, #0x18
  3db9f8: 4618         	mov	r0, r3
  3db9fa: f3d9 ff8b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d9f16
  3db9fe: e7ff         	b	0x3dba00 <SettingsLayer::init()+0x1088> @ imm = #-0x2
  3dba00: ab05         	add	r3, sp, #0x14
  3dba02: 4618         	mov	r0, r3
  3dba04: f3ae fcfa    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ae9f4
  3dba08: f3ac fb50    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3ac6a0
  3dba0c: ab26         	add	r3, sp, #0x98
  3dba0e: 4618         	mov	r0, r3
  3dba10: f3d9 ff80    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d9f00
  3dba14: f3ac fb4a    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3ac694
  3dba18: 4618         	mov	r0, r3
  3dba1a: b03d         	add	sp, #0xf4
  3dba1c: ecbd 8b02    	vpop	{d8}
  3dba20: bdf0         	pop	{r4, r5, r6, r7, pc}

// ==== SettingsLayer::~SettingsLayer
//      file offset 0x3dba28 (= ELF address; Ghidra 0x3eba28), 268 bytes, Thumb-2
  3dba28: b500         	push	{lr}
  3dba2a: b083         	sub	sp, #0xc
  3dba2c: 9001         	str	r0, [sp, #0x4]
  3dba2e: 4b3f         	ldr	r3, [pc, #0xfc]         @ 0x3dbb2c <SettingsLayer::~SettingsLayer()+0x104>
  3dba30: 447b         	add	r3, pc
  3dba32: 9a01         	ldr	r2, [sp, #0x4]
  3dba34: 493e         	ldr	r1, [pc, #0xf8]         @ 0x3dbb30 <SettingsLayer::~SettingsLayer()+0x108>
  3dba36: 5859         	ldr	r1, [r3, r1]
  3dba38: 3108         	adds	r1, #0x8
  3dba3a: 6011         	str	r1, [r2]
  3dba3c: 9a01         	ldr	r2, [sp, #0x4]
  3dba3e: 493c         	ldr	r1, [pc, #0xf0]         @ 0x3dbb30 <SettingsLayer::~SettingsLayer()+0x108>
  3dba40: 5859         	ldr	r1, [r3, r1]
  3dba42: f501 7104    	add.w	r1, r1, #0x210
  3dba46: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  3dba4a: 9a01         	ldr	r2, [sp, #0x4]
  3dba4c: 4938         	ldr	r1, [pc, #0xe0]         @ 0x3dbb30 <SettingsLayer::~SettingsLayer()+0x108>
  3dba4e: 5859         	ldr	r1, [r3, r1]
  3dba50: f501 7110    	add.w	r1, r1, #0x240
  3dba54: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  3dba58: 9a01         	ldr	r2, [sp, #0x4]
  3dba5a: 4935         	ldr	r1, [pc, #0xd4]         @ 0x3dbb30 <SettingsLayer::~SettingsLayer()+0x108>
  3dba5c: 585b         	ldr	r3, [r3, r1]
  3dba5e: f503 7313    	add.w	r3, r3, #0x24c
  3dba62: f8c2 30ec    	str.w	r3, [r2, #0xec]
  3dba66: 9b01         	ldr	r3, [sp, #0x4]
  3dba68: 4618         	mov	r0, r3
  3dba6a: 2100         	movs	r1, #0x0
  3dba6c: f1b4 fdec    	bl	0x590648 <cocos2d::CCNode::removeAllChildrenWithCleanup(bool)> @ imm = #0x1b4bd8
  3dba70: 9b01         	ldr	r3, [sp, #0x4]
  3dba72: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3dba76: 4618         	mov	r0, r3
  3dba78: f1bc fa1e    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1bc43c
  3dba7c: 9b01         	ldr	r3, [sp, #0x4]
  3dba7e: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  3dba82: 4618         	mov	r0, r3
  3dba84: f1bc fa18    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1bc430
  3dba88: 9b01         	ldr	r3, [sp, #0x4]
  3dba8a: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  3dba8e: 4618         	mov	r0, r3
  3dba90: f1bc fa12    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1bc424
  3dba94: 9b01         	ldr	r3, [sp, #0x4]
  3dba96: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3dba9a: 4618         	mov	r0, r3
  3dba9c: f1bc fa0c    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1bc418
  3dbaa0: 9b01         	ldr	r3, [sp, #0x4]
  3dbaa2: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  3dbaa6: 4618         	mov	r0, r3
  3dbaa8: f1bc fa06    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1bc40c
  3dbaac: 9b01         	ldr	r3, [sp, #0x4]
  3dbaae: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3dbab2: 4618         	mov	r0, r3
  3dbab4: f1bc fa00    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1bc400
  3dbab8: 9b01         	ldr	r3, [sp, #0x4]
  3dbaba: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3dbabe: 4618         	mov	r0, r3
  3dbac0: f1bc f9fa    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1bc3f4
  3dbac4: 9b01         	ldr	r3, [sp, #0x4]
  3dbac6: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3dbaca: 4618         	mov	r0, r3
  3dbacc: f1bc f9f4    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1bc3e8
  3dbad0: 9b01         	ldr	r3, [sp, #0x4]
  3dbad2: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3dbad6: 4618         	mov	r0, r3
  3dbad8: f1bc f9ee    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1bc3dc
  3dbadc: 9b01         	ldr	r3, [sp, #0x4]
  3dbade: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3dbae2: 4618         	mov	r0, r3
  3dbae4: f1bc f9e8    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1bc3d0
  3dbae8: 9b01         	ldr	r3, [sp, #0x4]
  3dbaea: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3dbaee: 4618         	mov	r0, r3
  3dbaf0: f1bc f9e2    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1bc3c4
  3dbaf4: 9b01         	ldr	r3, [sp, #0x4]
  3dbaf6: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  3dbafa: 4618         	mov	r0, r3
  3dbafc: f1bc f9dc    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1bc3b8
  3dbb00: 9b01         	ldr	r3, [sp, #0x4]
  3dbb02: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  3dbb06: 4618         	mov	r0, r3
  3dbb08: f1bc f9d6    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1bc3ac
  3dbb0c: 9b01         	ldr	r3, [sp, #0x4]
  3dbb0e: 4618         	mov	r0, r3
  3dbb10: f1d1 fb1c    	bl	0x5ad14c <cocos2d::CCLayer::~CCLayer()> @ imm = #0x1d1638
  3dbb14: 2300         	movs	r3, #0x0
  3dbb16: 2b00         	cmp	r3, #0x0
  3dbb18: d002         	beq	0x3dbb20 <SettingsLayer::~SettingsLayer()+0xf8> @ imm = #0x4
  3dbb1a: 9801         	ldr	r0, [sp, #0x4]
  3dbb1c: f3ac fac2    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3ac584
  3dbb20: 9b01         	ldr	r3, [sp, #0x4]
  3dbb22: 4618         	mov	r0, r3
  3dbb24: b003         	add	sp, #0xc
  3dbb26: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3dbb29); words below are literal-pool data ---
  3dbb2a: bf00         	nop
  3dbb2c: 6fd8         	ldr	r0, [r3, #0x7c]
  3dbb2e: 0055         	lsls	r5, r2, #0x1
  3dbb30: dee4         	udf	#0xe4
  3dbb32: ffff f1a0    	<unknown>

// ==== SettingsLayer::~SettingsLayer
//      file offset 0x3dbb34 (= ELF address; Ghidra 0x3ebb34), 8 bytes, Thumb-2
  3dbb34: f1a0 00e4    	sub.w	r0, r0, #0xe4
  3dbb38: f7ff bf76    	b.w	0x3dba28 <SettingsLayer::~SettingsLayer()> @ imm = #-0x114

// ==== SettingsLayer::~SettingsLayer
//      file offset 0x3dbb3c (= ELF address; Ghidra 0x3ebb3c), 28 bytes, Thumb-2
  3dbb3c: b500         	push	{lr}
  3dbb3e: b083         	sub	sp, #0xc
  3dbb40: 9001         	str	r0, [sp, #0x4]
  3dbb42: 9801         	ldr	r0, [sp, #0x4]
  3dbb44: f7ff ff70    	bl	0x3dba28 <SettingsLayer::~SettingsLayer()> @ imm = #-0x120
  3dbb48: 9801         	ldr	r0, [sp, #0x4]
  3dbb4a: f3ac faab    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3ac556
  3dbb4e: 9b01         	ldr	r3, [sp, #0x4]
  3dbb50: 4618         	mov	r0, r3
  3dbb52: b003         	add	sp, #0xc
  3dbb54: f85d fb04    	ldr	pc, [sp], #4

// ==== SettingsLayer::~SettingsLayer
//      file offset 0x3dbb58 (= ELF address; Ghidra 0x3ebb58), 8 bytes, Thumb-2
  3dbb58: f1a0 00e4    	sub.w	r0, r0, #0xe4
  3dbb5c: f7ff bfee    	b.w	0x3dbb3c <SettingsLayer::~SettingsLayer()> @ imm = #-0x24

// ==== SettingsLayer::onDA
//      file offset 0x3dbb60 (= ELF address; Ghidra 0x3ebb60), 44 bytes, Thumb-2
  3dbb60: b500         	push	{lr}
  3dbb62: b083         	sub	sp, #0xc
  3dbb64: 9001         	str	r0, [sp, #0x4]
  3dbb66: 9100         	str	r1, [sp]
  3dbb68: 4a06         	ldr	r2, [pc, #0x18]         @ 0x3dbb84 <SettingsLayer::onDA(cocos2d::CCObject*)+0x24>
  3dbb6a: 447a         	add	r2, pc
  3dbb6c: 4b06         	ldr	r3, [pc, #0x18]         @ 0x3dbb88 <SettingsLayer::onDA(cocos2d::CCObject*)+0x28>
  3dbb6e: 58d3         	ldr	r3, [r2, r3]
  3dbb70: 681b         	ldr	r3, [r3]
  3dbb72: 4618         	mov	r0, r3
  3dbb74: 210d         	movs	r1, #0xd
  3dbb76: f01c f923    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x1c246
  3dbb7a: f050 fc3b    	bl	0x42c3f4 <ApplicationInterface::openDoodleArmyAppLink()> @ imm = #0x50876
  3dbb7e: b003         	add	sp, #0xc
  3dbb80: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3dbb83); words below are literal-pool data ---
  3dbb84: 6e9e         	ldr	r6, [r3, #0x68]
  3dbb86: 0055         	lsls	r5, r2, #0x1
  3dbb88: d730         	bvc	0x3dbbec <SettingsLayer::onBack(cocos2d::CCObject*)+0x60> @ imm = #0x60
  3dbb8a: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== SettingsLayer::onBack
//      file offset 0x3dbb8c (= ELF address; Ghidra 0x3ebb8c), 100 bytes, Thumb-2
  3dbb8c: b530         	push	{r4, r5, lr}
  3dbb8e: b083         	sub	sp, #0xc
  3dbb90: 9001         	str	r0, [sp, #0x4]
  3dbb92: 9100         	str	r1, [sp]
  3dbb94: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x3dbbe4 <SettingsLayer::onBack(cocos2d::CCObject*)+0x58>
  3dbb96: 447a         	add	r2, pc
  3dbb98: 9b01         	ldr	r3, [sp, #0x4]
  3dbb9a: f893 3108    	ldrb.w	r3, [r3, #0x108]
  3dbb9e: 2b00         	cmp	r3, #0x0
  3dbba0: d000         	beq	0x3dbba4 <SettingsLayer::onBack(cocos2d::CCObject*)+0x18> @ imm = #0x0
  3dbba2: e01c         	b	0x3dbbde <SettingsLayer::onBack(cocos2d::CCObject*)+0x52> @ imm = #0x38
  3dbba4: 9b01         	ldr	r3, [sp, #0x4]
  3dbba6: 2101         	movs	r1, #0x1
  3dbba8: f883 1108    	strb.w	r1, [r3, #0x108]
  3dbbac: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x3dbbe8 <SettingsLayer::onBack(cocos2d::CCObject*)+0x5c>
  3dbbae: 58d3         	ldr	r3, [r2, r3]
  3dbbb0: 681b         	ldr	r3, [r3]
  3dbbb2: 4618         	mov	r0, r3
  3dbbb4: 210d         	movs	r1, #0xd
  3dbbb6: f01c f903    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x1c206
  3dbbba: f1bf fcdb    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x1bf9b6
  3dbbbe: 4604         	mov	r4, r0
  3dbbc0: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x3dbbec <SettingsLayer::onBack(cocos2d::CCObject*)+0x60>
  3dbbc2: 447b         	add	r3, pc
  3dbbc4: 681d         	ldr	r5, [r3]
  3dbbc6: f78d ff85    	bl	0x369ad4 <MenuLayer::scene()> @ imm = #-0x720f6
  3dbbca: 4603         	mov	r3, r0
  3dbbcc: 4628         	mov	r0, r5
  3dbbce: 4619         	mov	r1, r3
  3dbbd0: f1d5 fb9a    	bl	0x5b1308 <cocos2d::CCTransitionSlideInL::create(float, cocos2d::CCScene*)> @ imm = #0x1d5734
  3dbbd4: 4603         	mov	r3, r0
  3dbbd6: 4620         	mov	r0, r4
  3dbbd8: 4619         	mov	r1, r3
  3dbbda: f1c0 fbbf    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x1c077e
  3dbbde: b003         	add	sp, #0xc
  3dbbe0: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3dbbe1); words below are literal-pool data ---
  3dbbe2: bf00         	nop
  3dbbe4: 6e72         	ldr	r2, [r6, #0x64]
  3dbbe6: 0055         	lsls	r5, r2, #0x1
  3dbbe8: d730         	bvc	0x3dbc4c <SettingsLayer::onStore(cocos2d::CCObject*)+0x5c> @ imm = #0x60
  3dbbea: ffff 7a86    	vtbl.8	d23, {d31, fpinst2, mvfr0}, d6
  3dbbee: 0055         	lsls	r5, r2, #0x1

// ==== SettingsLayer::onStore
//      file offset 0x3dbbf0 (= ELF address; Ghidra 0x3ebbf0), 100 bytes, Thumb-2
  3dbbf0: b530         	push	{r4, r5, lr}
  3dbbf2: b083         	sub	sp, #0xc
  3dbbf4: 9001         	str	r0, [sp, #0x4]
  3dbbf6: 9100         	str	r1, [sp]
  3dbbf8: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x3dbc48 <SettingsLayer::onStore(cocos2d::CCObject*)+0x58>
  3dbbfa: 447a         	add	r2, pc
  3dbbfc: 9b01         	ldr	r3, [sp, #0x4]
  3dbbfe: f893 3108    	ldrb.w	r3, [r3, #0x108]
  3dbc02: 2b00         	cmp	r3, #0x0
  3dbc04: d000         	beq	0x3dbc08 <SettingsLayer::onStore(cocos2d::CCObject*)+0x18> @ imm = #0x0
  3dbc06: e01c         	b	0x3dbc42 <SettingsLayer::onStore(cocos2d::CCObject*)+0x52> @ imm = #0x38
  3dbc08: 9b01         	ldr	r3, [sp, #0x4]
  3dbc0a: 2101         	movs	r1, #0x1
  3dbc0c: f883 1108    	strb.w	r1, [r3, #0x108]
  3dbc10: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x3dbc4c <SettingsLayer::onStore(cocos2d::CCObject*)+0x5c>
  3dbc12: 58d3         	ldr	r3, [r2, r3]
  3dbc14: 681b         	ldr	r3, [r3]
  3dbc16: 4618         	mov	r0, r3
  3dbc18: 210d         	movs	r1, #0xd
  3dbc1a: f01c f8d1    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x1c1a2
  3dbc1e: f1bf fca9    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x1bf952
  3dbc22: 4604         	mov	r4, r0
  3dbc24: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x3dbc50 <SettingsLayer::onStore(cocos2d::CCObject*)+0x60>
  3dbc26: 447b         	add	r3, pc
  3dbc28: 681d         	ldr	r5, [r3]
  3dbc2a: f024 fba9    	bl	0x400380 <StoreLayer::scene()> @ imm = #0x24752
  3dbc2e: 4603         	mov	r3, r0
  3dbc30: 4628         	mov	r0, r5
  3dbc32: 4619         	mov	r1, r3
  3dbc34: f1d5 fbf8    	bl	0x5b1428 <cocos2d::CCTransitionSlideInR::create(float, cocos2d::CCScene*)> @ imm = #0x1d57f0
  3dbc38: 4603         	mov	r3, r0
  3dbc3a: 4620         	mov	r0, r4
  3dbc3c: 4619         	mov	r1, r3
  3dbc3e: f1c0 fb8d    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x1c071a
  3dbc42: b003         	add	sp, #0xc
  3dbc44: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3dbc45); words below are literal-pool data ---
  3dbc46: bf00         	nop
  3dbc48: 6e0e         	ldr	r6, [r1, #0x60]
  3dbc4a: 0055         	lsls	r5, r2, #0x1
  3dbc4c: d730         	bvc	0x3dbcb0 <SettingsLayer::onSkin(cocos2d::CCObject*)+0x5c> @ imm = #0x60
  3dbc4e: ffff 7a22    	vtbl.8	d23, {d15, d16, d17}, d18
  3dbc52: 0055         	lsls	r5, r2, #0x1

// ==== SettingsLayer::onSkin
//      file offset 0x3dbc54 (= ELF address; Ghidra 0x3ebc54), 100 bytes, Thumb-2
  3dbc54: b530         	push	{r4, r5, lr}
  3dbc56: b083         	sub	sp, #0xc
  3dbc58: 9001         	str	r0, [sp, #0x4]
  3dbc5a: 9100         	str	r1, [sp]
  3dbc5c: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x3dbcac <SettingsLayer::onSkin(cocos2d::CCObject*)+0x58>
  3dbc5e: 447a         	add	r2, pc
  3dbc60: 9b01         	ldr	r3, [sp, #0x4]
  3dbc62: f893 3108    	ldrb.w	r3, [r3, #0x108]
  3dbc66: 2b00         	cmp	r3, #0x0
  3dbc68: d000         	beq	0x3dbc6c <SettingsLayer::onSkin(cocos2d::CCObject*)+0x18> @ imm = #0x0
  3dbc6a: e01c         	b	0x3dbca6 <SettingsLayer::onSkin(cocos2d::CCObject*)+0x52> @ imm = #0x38
  3dbc6c: 9b01         	ldr	r3, [sp, #0x4]
  3dbc6e: 2101         	movs	r1, #0x1
  3dbc70: f883 1108    	strb.w	r1, [r3, #0x108]
  3dbc74: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x3dbcb0 <SettingsLayer::onSkin(cocos2d::CCObject*)+0x5c>
  3dbc76: 58d3         	ldr	r3, [r2, r3]
  3dbc78: 681b         	ldr	r3, [r3]
  3dbc7a: 4618         	mov	r0, r3
  3dbc7c: 210d         	movs	r1, #0xd
  3dbc7e: f01c f89f    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x1c13e
  3dbc82: f1bf fc77    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x1bf8ee
  3dbc86: 4604         	mov	r4, r0
  3dbc88: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x3dbcb4 <SettingsLayer::onSkin(cocos2d::CCObject*)+0x60>
  3dbc8a: 447b         	add	r3, pc
  3dbc8c: 681d         	ldr	r5, [r3]
  3dbc8e: f712 f889    	bl	0x2edda4 <AvatarLayer::scene()> @ imm = #-0xedeee
  3dbc92: 4603         	mov	r3, r0
  3dbc94: 4628         	mov	r0, r5
  3dbc96: 4619         	mov	r1, r3
  3dbc98: f1d5 fbc6    	bl	0x5b1428 <cocos2d::CCTransitionSlideInR::create(float, cocos2d::CCScene*)> @ imm = #0x1d578c
  3dbc9c: 4603         	mov	r3, r0
  3dbc9e: 4620         	mov	r0, r4
  3dbca0: 4619         	mov	r1, r3
  3dbca2: f1c0 fb5b    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x1c06b6
  3dbca6: b003         	add	sp, #0xc
  3dbca8: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3dbca9); words below are literal-pool data ---
  3dbcaa: bf00         	nop
  3dbcac: 6daa         	ldr	r2, [r5, #0x58]
  3dbcae: 0055         	lsls	r5, r2, #0x1
  3dbcb0: d730         	bvc	0x3dbd14 <SettingsLayer::onControls(cocos2d::CCObject*)+0x5c> @ imm = #0x60
  3dbcb2: ffff 79be    	<unknown>
  3dbcb6: 0055         	lsls	r5, r2, #0x1

// ==== SettingsLayer::onControls
//      file offset 0x3dbcb8 (= ELF address; Ghidra 0x3ebcb8), 100 bytes, Thumb-2
  3dbcb8: b530         	push	{r4, r5, lr}
  3dbcba: b083         	sub	sp, #0xc
  3dbcbc: 9001         	str	r0, [sp, #0x4]
  3dbcbe: 9100         	str	r1, [sp]
  3dbcc0: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x3dbd10 <SettingsLayer::onControls(cocos2d::CCObject*)+0x58>
  3dbcc2: 447a         	add	r2, pc
  3dbcc4: 9b01         	ldr	r3, [sp, #0x4]
  3dbcc6: f893 3108    	ldrb.w	r3, [r3, #0x108]
  3dbcca: 2b00         	cmp	r3, #0x0
  3dbccc: d000         	beq	0x3dbcd0 <SettingsLayer::onControls(cocos2d::CCObject*)+0x18> @ imm = #0x0
  3dbcce: e01c         	b	0x3dbd0a <SettingsLayer::onControls(cocos2d::CCObject*)+0x52> @ imm = #0x38
  3dbcd0: 9b01         	ldr	r3, [sp, #0x4]
  3dbcd2: 2101         	movs	r1, #0x1
  3dbcd4: f883 1108    	strb.w	r1, [r3, #0x108]
  3dbcd8: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x3dbd14 <SettingsLayer::onControls(cocos2d::CCObject*)+0x5c>
  3dbcda: 58d3         	ldr	r3, [r2, r3]
  3dbcdc: 681b         	ldr	r3, [r3]
  3dbcde: 4618         	mov	r0, r3
  3dbce0: 210d         	movs	r1, #0xd
  3dbce2: f01c f86d    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x1c0da
  3dbce6: f1bf fc45    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x1bf88a
  3dbcea: 4604         	mov	r4, r0
  3dbcec: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x3dbd18 <SettingsLayer::onControls(cocos2d::CCObject*)+0x60>
  3dbcee: 447b         	add	r3, pc
  3dbcf0: 681d         	ldr	r5, [r3]
  3dbcf2: f72a fb9f    	bl	0x306434 <ControlsLayer::scene()> @ imm = #-0xd58c2
  3dbcf6: 4603         	mov	r3, r0
  3dbcf8: 4628         	mov	r0, r5
  3dbcfa: 4619         	mov	r1, r3
  3dbcfc: f1d5 fb94    	bl	0x5b1428 <cocos2d::CCTransitionSlideInR::create(float, cocos2d::CCScene*)> @ imm = #0x1d5728
  3dbd00: 4603         	mov	r3, r0
  3dbd02: 4620         	mov	r0, r4
  3dbd04: 4619         	mov	r1, r3
  3dbd06: f1c0 fb29    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x1c0652
  3dbd0a: b003         	add	sp, #0xc
  3dbd0c: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3dbd0d); words below are literal-pool data ---
  3dbd0e: bf00         	nop
  3dbd10: 6d46         	ldr	r6, [r0, #0x54]
  3dbd12: 0055         	lsls	r5, r2, #0x1
  3dbd14: d730         	bvc	0x3dbd78 <SettingsLayer::onConfig(cocos2d::CCObject*)+0x5c> @ imm = #0x60
  3dbd16: ffff 795a    	vqrshrn.u64	d23, q5, #0x1
  3dbd1a: 0055         	lsls	r5, r2, #0x1

// ==== SettingsLayer::onConfig
//      file offset 0x3dbd1c (= ELF address; Ghidra 0x3ebd1c), 100 bytes, Thumb-2
  3dbd1c: b530         	push	{r4, r5, lr}
  3dbd1e: b083         	sub	sp, #0xc
  3dbd20: 9001         	str	r0, [sp, #0x4]
  3dbd22: 9100         	str	r1, [sp]
  3dbd24: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x3dbd74 <SettingsLayer::onConfig(cocos2d::CCObject*)+0x58>
  3dbd26: 447a         	add	r2, pc
  3dbd28: 9b01         	ldr	r3, [sp, #0x4]
  3dbd2a: f893 3108    	ldrb.w	r3, [r3, #0x108]
  3dbd2e: 2b00         	cmp	r3, #0x0
  3dbd30: d000         	beq	0x3dbd34 <SettingsLayer::onConfig(cocos2d::CCObject*)+0x18> @ imm = #0x0
  3dbd32: e01c         	b	0x3dbd6e <SettingsLayer::onConfig(cocos2d::CCObject*)+0x52> @ imm = #0x38
  3dbd34: 9b01         	ldr	r3, [sp, #0x4]
  3dbd36: 2101         	movs	r1, #0x1
  3dbd38: f883 1108    	strb.w	r1, [r3, #0x108]
  3dbd3c: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x3dbd78 <SettingsLayer::onConfig(cocos2d::CCObject*)+0x5c>
  3dbd3e: 58d3         	ldr	r3, [r2, r3]
  3dbd40: 681b         	ldr	r3, [r3]
  3dbd42: 4618         	mov	r0, r3
  3dbd44: 210d         	movs	r1, #0xd
  3dbd46: f01c f83b    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x1c076
  3dbd4a: f1bf fc13    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x1bf826
  3dbd4e: 4604         	mov	r4, r0
  3dbd50: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x3dbd7c <SettingsLayer::onConfig(cocos2d::CCObject*)+0x60>
  3dbd52: 447b         	add	r3, pc
  3dbd54: 681d         	ldr	r5, [r3]
  3dbd56: f726 f829    	bl	0x301dac <ConfigLayer::scene()> @ imm = #-0xd9fae
  3dbd5a: 4603         	mov	r3, r0
  3dbd5c: 4628         	mov	r0, r5
  3dbd5e: 4619         	mov	r1, r3
  3dbd60: f1d5 fb62    	bl	0x5b1428 <cocos2d::CCTransitionSlideInR::create(float, cocos2d::CCScene*)> @ imm = #0x1d56c4
  3dbd64: 4603         	mov	r3, r0
  3dbd66: 4620         	mov	r0, r4
  3dbd68: 4619         	mov	r1, r3
  3dbd6a: f1c0 faf7    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x1c05ee
  3dbd6e: b003         	add	sp, #0xc
  3dbd70: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3dbd71); words below are literal-pool data ---
  3dbd72: bf00         	nop
  3dbd74: 6ce2         	ldr	r2, [r4, #0x4c]
  3dbd76: 0055         	lsls	r5, r2, #0x1
  3dbd78: d730         	bvc	0x3dbddc <SettingsLayer::onConfig(cocos2d::CCObject*)+0xc0> @ imm = #0x60
  3dbd7a: ffff 78f6    	<unknown>
  3dbd7e: 0055         	lsls	r5, r2, #0x1
