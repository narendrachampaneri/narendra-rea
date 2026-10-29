// GameTypeLayer: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 16 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../GameTypeLayer.cpp

// ==== GameTypeLayer::create
//      file offset 0x3363f4 (= ELF address; Ghidra 0x3463f4), 112 bytes, Thumb-2
  3363f4: b510         	push	{r4, lr}
  3363f6: b082         	sub	sp, #0x8
  3363f8: f44f 709c    	mov.w	r0, #0x138
  3363fc: f051 f2b2    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x451564
  336400: 4603         	mov	r3, r0
  336402: 461c         	mov	r4, r3
  336404: 4620         	mov	r0, r4
  336406: f000 f82d    	bl	0x336464 <GameTypeLayer::GameTypeLayer()> @ imm = #0x5a
  33640a: 9401         	str	r4, [sp, #0x4]
  33640c: 9b01         	ldr	r3, [sp, #0x4]
  33640e: 2b00         	cmp	r3, #0x0
  336410: d00a         	beq	0x336428 <GameTypeLayer::create()+0x34> @ imm = #0x14
  336412: 9b01         	ldr	r3, [sp, #0x4]
  336414: 681b         	ldr	r3, [r3]
  336416: 3318         	adds	r3, #0x18
  336418: 681b         	ldr	r3, [r3]
  33641a: 9801         	ldr	r0, [sp, #0x4]
  33641c: 4798         	blx	r3
  33641e: 4603         	mov	r3, r0
  336420: 2b00         	cmp	r3, #0x0
  336422: d001         	beq	0x336428 <GameTypeLayer::create()+0x34> @ imm = #0x2
  336424: 2301         	movs	r3, #0x1
  336426: e000         	b	0x33642a <GameTypeLayer::create()+0x36> @ imm = #0x0
  336428: 2300         	movs	r3, #0x0
  33642a: 2b00         	cmp	r3, #0x0
  33642c: d005         	beq	0x33643a <GameTypeLayer::create()+0x46> @ imm = #0xa
  33642e: 9b01         	ldr	r3, [sp, #0x4]
  336430: 4618         	mov	r0, r3
  336432: f261 fd63    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x261ac6
  336436: 9b01         	ldr	r3, [sp, #0x4]
  336438: e011         	b	0x33645e <GameTypeLayer::create()+0x6a> @ imm = #0x22
  33643a: 9b01         	ldr	r3, [sp, #0x4]
  33643c: 2b00         	cmp	r3, #0x0
  33643e: d005         	beq	0x33644c <GameTypeLayer::create()+0x58> @ imm = #0xa
  336440: 9b01         	ldr	r3, [sp, #0x4]
  336442: 681b         	ldr	r3, [r3]
  336444: 3308         	adds	r3, #0x8
  336446: 681b         	ldr	r3, [r3]
  336448: 9801         	ldr	r0, [sp, #0x4]
  33644a: 4798         	blx	r3
  33644c: 2300         	movs	r3, #0x0
  33644e: 9301         	str	r3, [sp, #0x4]
  336450: 2300         	movs	r3, #0x0
  336452: e004         	b	0x33645e <GameTypeLayer::create()+0x6a> @ imm = #0x8
  336454: 4620         	mov	r0, r4
  336456: f051 f625    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x451c4a
  33645a: f051 f627    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x451c4e
  33645e: 4618         	mov	r0, r3
  336460: b002         	add	sp, #0x8
  336462: bd10         	pop	{r4, pc}

// ==== GameTypeLayer::GameTypeLayer
//      file offset 0x336464 (= ELF address; Ghidra 0x346464), 88 bytes, Thumb-2
  336464: b510         	push	{r4, lr}
  336466: b082         	sub	sp, #0x8
  336468: 9001         	str	r0, [sp, #0x4]
  33646a: 4c12         	ldr	r4, [pc, #0x48]         @ 0x3364b4 <GameTypeLayer::GameTypeLayer()+0x50>
  33646c: 447c         	add	r4, pc
  33646e: 9b01         	ldr	r3, [sp, #0x4]
  336470: 4618         	mov	r0, r3
  336472: f276 fdf3    	bl	0x5ad05c <cocos2d::CCLayer::CCLayer()> @ imm = #0x276be6
  336476: 9b01         	ldr	r3, [sp, #0x4]
  336478: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x3364b8 <GameTypeLayer::GameTypeLayer()+0x54>
  33647a: 58a2         	ldr	r2, [r4, r2]
  33647c: 3208         	adds	r2, #0x8
  33647e: 601a         	str	r2, [r3]
  336480: 9b01         	ldr	r3, [sp, #0x4]
  336482: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x3364b8 <GameTypeLayer::GameTypeLayer()+0x54>
  336484: 58a2         	ldr	r2, [r4, r2]
  336486: f502 7204    	add.w	r2, r2, #0x210
  33648a: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  33648e: 9b01         	ldr	r3, [sp, #0x4]
  336490: 4a09         	ldr	r2, [pc, #0x24]         @ 0x3364b8 <GameTypeLayer::GameTypeLayer()+0x54>
  336492: 58a2         	ldr	r2, [r4, r2]
  336494: f502 7210    	add.w	r2, r2, #0x240
  336498: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  33649c: 9b01         	ldr	r3, [sp, #0x4]
  33649e: 4a06         	ldr	r2, [pc, #0x18]         @ 0x3364b8 <GameTypeLayer::GameTypeLayer()+0x54>
  3364a0: 58a2         	ldr	r2, [r4, r2]
  3364a2: f502 7213    	add.w	r2, r2, #0x24c
  3364a6: f8c3 20ec    	str.w	r2, [r3, #0xec]
  3364aa: 9b01         	ldr	r3, [sp, #0x4]
  3364ac: 4618         	mov	r0, r3
  3364ae: b002         	add	sp, #0x8
  3364b0: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3364b1); words below are literal-pool data ---
  3364b2: bf00         	nop
  3364b4: c59c         	stm	r5!, {r2, r3, r4, r7}
  3364b6: 005f         	lsls	r7, r3, #0x1
  3364b8: da84         	bge	0x3363c4 <__gnu_cxx::__normal_iterator<gpg::Achievement const*, std::vector<gpg::Achievement, std::allocator<gpg::Achievement>>>::base() const+0xeac> @ imm = #-0xf8
  3364ba: ffff b500    	<unknown>

// ==== GameTypeLayer::scene
//      file offset 0x3364bc (= ELF address; Ghidra 0x3464bc), 46 bytes, Thumb-2
  3364bc: b500         	push	{lr}
  3364be: b083         	sub	sp, #0xc
  3364c0: f279 face    	bl	0x5afa60 <cocos2d::CCScene::create()> @ imm = #0x27959c
  3364c4: 4603         	mov	r3, r0
  3364c6: 9300         	str	r3, [sp]
  3364c8: f7ff ff94    	bl	0x3363f4 <GameTypeLayer::create()> @ imm = #-0xd8
  3364cc: 4603         	mov	r3, r0
  3364ce: 9301         	str	r3, [sp, #0x4]
  3364d0: 9b00         	ldr	r3, [sp]
  3364d2: 681b         	ldr	r3, [r3]
  3364d4: 33c8         	adds	r3, #0xc8
  3364d6: 681b         	ldr	r3, [r3]
  3364d8: 9a00         	ldr	r2, [sp]
  3364da: 4610         	mov	r0, r2
  3364dc: 9901         	ldr	r1, [sp, #0x4]
  3364de: 4798         	blx	r3
  3364e0: 9b00         	ldr	r3, [sp]
  3364e2: 4618         	mov	r0, r3
  3364e4: b003         	add	sp, #0xc
  3364e6: f85d fb04    	ldr	pc, [sp], #4

// ==== GameTypeLayer::init
//      file offset 0x3364f0 (= ELF address; Ghidra 0x3464f0), 3516 bytes, Thumb-2
  3364f0: b5f0         	push	{r4, r5, r6, r7, lr}
  3364f2: ed2d 8b02    	vpush	{d8}
  3364f6: b0b3         	sub	sp, #0xcc
  3364f8: 9003         	str	r0, [sp, #0xc]
  3364fa: 4c09         	ldr	r4, [pc, #0x24]         @ 0x336520 <GameTypeLayer::init()+0x30>
  3364fc: 447c         	add	r4, pc
  3364fe: 9b03         	ldr	r3, [sp, #0xc]
  336500: 4618         	mov	r0, r3
  336502: f276 fe79    	bl	0x5ad1f8 <cocos2d::CCLayer::init()> @ imm = #0x276cf2
  336506: 4603         	mov	r3, r0
  336508: f88d 3017    	strb.w	r3, [sp, #0x17]
  33650c: f89d 3017    	ldrb.w	r3, [sp, #0x17]
  336510: f083 0301    	eor	r3, r3, #0x1
  336514: b2db         	uxtb	r3, r3
  336516: 2b00         	cmp	r3, #0x0
  336518: d004         	beq	0x336524 <GameTypeLayer::init()+0x34> @ imm = #0x8
  33651a: 2300         	movs	r3, #0x0
  33651c: f000 bebe    	b.w	0x33729c <GameTypeLayer::init()+0xdac> @ imm = #0xd7c
  336520: c50c         	stm	r5!, {r2, r3}
  336522: 005f         	lsls	r7, r3, #0x1
  336524: 9b03         	ldr	r3, [sp, #0xc]
  336526: 2200         	movs	r2, #0x0
  336528: f883 2108    	strb.w	r2, [r3, #0x108]
  33652c: 9b03         	ldr	r3, [sp, #0xc]
  33652e: 2200         	movs	r2, #0x0
  336530: f883 2109    	strb.w	r2, [r3, #0x109]
  336534: ab16         	add	r3, sp, #0x58
  336536: 4618         	mov	r0, r3
  336538: f8df 35e8    	ldr.w	r3, [pc, #0x5e8]        @ 0x336b24 <GameTypeLayer::init()+0x634>
  33653c: 58e3         	ldr	r3, [r4, r3]
  33653e: 4619         	mov	r1, r3
  336540: f25c fdb6    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x25cb6c
  336544: ed9d 7a16    	vldr	s14, [sp, #88]
  336548: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  33654c: eec7 6a27    	vdiv.f32	s13, s14, s15
  336550: ed9d 7a17    	vldr	s14, [sp, #92]
  336554: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  336558: eec7 7a27    	vdiv.f32	s15, s14, s15
  33655c: ab18         	add	r3, sp, #0x60
  33655e: 4618         	mov	r0, r3
  336560: ee16 1a90    	vmov	r1, s13
  336564: ee17 2a90    	vmov	r2, s15
  336568: f25c fbc2    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x25c784
  33656c: f04f 0300    	mov.w	r3, #0x0
  336570: 9307         	str	r3, [sp, #0x1c]
  336572: f04f 0300    	mov.w	r3, #0x0
  336576: f2c4 2340    	movt	r3, #0x4240
  33657a: 9308         	str	r3, [sp, #0x20]
  33657c: f8df 35a8    	ldr.w	r3, [pc, #0x5a8]        @ 0x336b28 <GameTypeLayer::init()+0x638>
  336580: 447b         	add	r3, pc
  336582: 4618         	mov	r0, r3
  336584: f2a1 febe    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2a1d7c
  336588: 4603         	mov	r3, r0
  33658a: 9309         	str	r3, [sp, #0x24]
  33658c: f8df 359c    	ldr.w	r3, [pc, #0x59c]        @ 0x336b2c <GameTypeLayer::init()+0x63c>
  336590: 447b         	add	r3, pc
  336592: 4618         	mov	r0, r3
  336594: f2a1 feb6    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2a1d6c
  336598: 4603         	mov	r3, r0
  33659a: 930a         	str	r3, [sp, #0x28]
  33659c: f8df 3590    	ldr.w	r3, [pc, #0x590]        @ 0x336b30 <GameTypeLayer::init()+0x640>
  3365a0: 447b         	add	r3, pc
  3365a2: 4618         	mov	r0, r3
  3365a4: f2a1 feae    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2a1d5c
  3365a8: 4603         	mov	r3, r0
  3365aa: 930b         	str	r3, [sp, #0x2c]
  3365ac: f8df 3584    	ldr.w	r3, [pc, #0x584]        @ 0x336b34 <GameTypeLayer::init()+0x644>
  3365b0: 447b         	add	r3, pc
  3365b2: 4618         	mov	r0, r3
  3365b4: f2a1 fea6    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2a1d4c
  3365b8: 4603         	mov	r3, r0
  3365ba: 930c         	str	r3, [sp, #0x30]
  3365bc: f8df 3578    	ldr.w	r3, [pc, #0x578]        @ 0x336b38 <GameTypeLayer::init()+0x648>
  3365c0: 447b         	add	r3, pc
  3365c2: 4618         	mov	r0, r3
  3365c4: f2a1 fe9e    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2a1d3c
  3365c8: 4603         	mov	r3, r0
  3365ca: 930d         	str	r3, [sp, #0x34]
  3365cc: 9a03         	ldr	r2, [sp, #0xc]
  3365ce: f8df 356c    	ldr.w	r3, [pc, #0x56c]        @ 0x336b3c <GameTypeLayer::init()+0x64c>
  3365d2: 58e3         	ldr	r3, [r4, r3]
  3365d4: 9320         	str	r3, [sp, #0x80]
  3365d6: 2300         	movs	r3, #0x0
  3365d8: 9321         	str	r3, [sp, #0x84]
  3365da: 9b21         	ldr	r3, [sp, #0x84]
  3365dc: 9300         	str	r3, [sp]
  3365de: 9b20         	ldr	r3, [sp, #0x80]
  3365e0: 9809         	ldr	r0, [sp, #0x24]
  3365e2: 9909         	ldr	r1, [sp, #0x24]
  3365e4: f281 fea2    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x281d44
  3365e8: 4603         	mov	r3, r0
  3365ea: 930e         	str	r3, [sp, #0x38]
  3365ec: 980e         	ldr	r0, [sp, #0x38]
  3365ee: 2100         	movs	r1, #0x0
  3365f0: f27e fda4    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x27eb48
  3365f4: 4602         	mov	r2, r0
  3365f6: 9b03         	ldr	r3, [sp, #0xc]
  3365f8: f8c3 2128    	str.w	r2, [r3, #0x128]
  3365fc: 9b03         	ldr	r3, [sp, #0xc]
  3365fe: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  336602: 4618         	mov	r0, r3
  336604: f261 fc70    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2618e0
  336608: 9b03         	ldr	r3, [sp, #0xc]
  33660a: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  33660e: 681b         	ldr	r3, [r3]
  336610: 334c         	adds	r3, #0x4c
  336612: 681d         	ldr	r5, [r3]
  336614: 9b03         	ldr	r3, [sp, #0xc]
  336616: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  33661a: 461e         	mov	r6, r3
  33661c: ed9d 7a18    	vldr	s14, [sp, #96]
  336620: eddd 7a07    	vldr	s15, [sp, #28]
  336624: ee77 7a27    	vadd.f32	s15, s14, s15
  336628: 9b19         	ldr	r3, [sp, #0x64]
  33662a: aa2e         	add	r2, sp, #0xb8
  33662c: 4610         	mov	r0, r2
  33662e: ee17 1a90    	vmov	r1, s15
  336632: 461a         	mov	r2, r3
  336634: f25c fb5c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x25c6b8
  336638: ab2e         	add	r3, sp, #0xb8
  33663a: 4630         	mov	r0, r6
  33663c: 4619         	mov	r1, r3
  33663e: 47a8         	blx	r5
  336640: 9b03         	ldr	r3, [sp, #0xc]
  336642: 681b         	ldr	r3, [r3]
  336644: 33c8         	adds	r3, #0xc8
  336646: 681b         	ldr	r3, [r3]
  336648: 9903         	ldr	r1, [sp, #0xc]
  33664a: 9a03         	ldr	r2, [sp, #0xc]
  33664c: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  336650: 4608         	mov	r0, r1
  336652: 4611         	mov	r1, r2
  336654: 4798         	blx	r3
  336656: 9a03         	ldr	r2, [sp, #0xc]
  336658: f8df 34e4    	ldr.w	r3, [pc, #0x4e4]        @ 0x336b40 <GameTypeLayer::init()+0x650>
  33665c: 58e3         	ldr	r3, [r4, r3]
  33665e: 9322         	str	r3, [sp, #0x88]
  336660: 2300         	movs	r3, #0x0
  336662: 9323         	str	r3, [sp, #0x8c]
  336664: 9b23         	ldr	r3, [sp, #0x8c]
  336666: 9300         	str	r3, [sp]
  336668: 9b22         	ldr	r3, [sp, #0x88]
  33666a: 980a         	ldr	r0, [sp, #0x28]
  33666c: 990a         	ldr	r1, [sp, #0x28]
  33666e: f281 fe5d    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x281cba
  336672: 4603         	mov	r3, r0
  336674: 930f         	str	r3, [sp, #0x3c]
  336676: 980f         	ldr	r0, [sp, #0x3c]
  336678: 2100         	movs	r1, #0x0
  33667a: f27e fd5f    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x27eabe
  33667e: 4602         	mov	r2, r0
  336680: 9b03         	ldr	r3, [sp, #0xc]
  336682: f8c3 2124    	str.w	r2, [r3, #0x124]
  336686: 9b03         	ldr	r3, [sp, #0xc]
  336688: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  33668c: 4618         	mov	r0, r3
  33668e: f261 fc2b    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x261856
  336692: 9b03         	ldr	r3, [sp, #0xc]
  336694: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  336698: 681b         	ldr	r3, [r3]
  33669a: 334c         	adds	r3, #0x4c
  33669c: 681d         	ldr	r5, [r3]
  33669e: 9b03         	ldr	r3, [sp, #0xc]
  3366a0: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3366a4: 461e         	mov	r6, r3
  3366a6: ed9d 7a18    	vldr	s14, [sp, #96]
  3366aa: eddd 7a07    	vldr	s15, [sp, #28]
  3366ae: ee77 6a27    	vadd.f32	s13, s14, s15
  3366b2: ed9d 7a19    	vldr	s14, [sp, #100]
  3366b6: eddd 7a08    	vldr	s15, [sp, #32]
  3366ba: ee77 7a27    	vadd.f32	s15, s14, s15
  3366be: ab2e         	add	r3, sp, #0xb8
  3366c0: 4618         	mov	r0, r3
  3366c2: ee16 1a90    	vmov	r1, s13
  3366c6: ee17 2a90    	vmov	r2, s15
  3366ca: f25c fb11    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x25c622
  3366ce: ab2e         	add	r3, sp, #0xb8
  3366d0: 4630         	mov	r0, r6
  3366d2: 4619         	mov	r1, r3
  3366d4: 47a8         	blx	r5
  3366d6: 9b03         	ldr	r3, [sp, #0xc]
  3366d8: 681b         	ldr	r3, [r3]
  3366da: 33c8         	adds	r3, #0xc8
  3366dc: 681b         	ldr	r3, [r3]
  3366de: 9903         	ldr	r1, [sp, #0xc]
  3366e0: 9a03         	ldr	r2, [sp, #0xc]
  3366e2: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  3366e6: 4608         	mov	r0, r1
  3366e8: 4611         	mov	r1, r2
  3366ea: 4798         	blx	r3
  3366ec: 9a03         	ldr	r2, [sp, #0xc]
  3366ee: f8df 3454    	ldr.w	r3, [pc, #0x454]        @ 0x336b44 <GameTypeLayer::init()+0x654>
  3366f2: 58e3         	ldr	r3, [r4, r3]
  3366f4: 9324         	str	r3, [sp, #0x90]
  3366f6: 2300         	movs	r3, #0x0
  3366f8: 9325         	str	r3, [sp, #0x94]
  3366fa: 9b25         	ldr	r3, [sp, #0x94]
  3366fc: 9300         	str	r3, [sp]
  3366fe: 9b24         	ldr	r3, [sp, #0x90]
  336700: 980b         	ldr	r0, [sp, #0x2c]
  336702: 990b         	ldr	r1, [sp, #0x2c]
  336704: f281 fe12    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x281c24
  336708: 4603         	mov	r3, r0
  33670a: 9310         	str	r3, [sp, #0x40]
  33670c: 9810         	ldr	r0, [sp, #0x40]
  33670e: 2100         	movs	r1, #0x0
  336710: f27e fd14    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x27ea28
  336714: 4602         	mov	r2, r0
  336716: 9b03         	ldr	r3, [sp, #0xc]
  336718: f8c3 2134    	str.w	r2, [r3, #0x134]
  33671c: 9b03         	ldr	r3, [sp, #0xc]
  33671e: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  336722: 4618         	mov	r0, r3
  336724: f261 fbe0    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2617c0
  336728: 9b03         	ldr	r3, [sp, #0xc]
  33672a: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  33672e: 681b         	ldr	r3, [r3]
  336730: 334c         	adds	r3, #0x4c
  336732: 681d         	ldr	r5, [r3]
  336734: 9b03         	ldr	r3, [sp, #0xc]
  336736: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  33673a: 461e         	mov	r6, r3
  33673c: ed9d 7a18    	vldr	s14, [sp, #96]
  336740: eddd 7a07    	vldr	s15, [sp, #28]
  336744: ee77 6a27    	vadd.f32	s13, s14, s15
  336748: ed9d 7a19    	vldr	s14, [sp, #100]
  33674c: eddd 7a08    	vldr	s15, [sp, #32]
  336750: ee77 7a67    	vsub.f32	s15, s14, s15
  336754: ab2e         	add	r3, sp, #0xb8
  336756: 4618         	mov	r0, r3
  336758: ee16 1a90    	vmov	r1, s13
  33675c: ee17 2a90    	vmov	r2, s15
  336760: f25c fac6    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x25c58c
  336764: ab2e         	add	r3, sp, #0xb8
  336766: 4630         	mov	r0, r6
  336768: 4619         	mov	r1, r3
  33676a: 47a8         	blx	r5
  33676c: 9b03         	ldr	r3, [sp, #0xc]
  33676e: 681b         	ldr	r3, [r3]
  336770: 33c8         	adds	r3, #0xc8
  336772: 681b         	ldr	r3, [r3]
  336774: 9903         	ldr	r1, [sp, #0xc]
  336776: 9a03         	ldr	r2, [sp, #0xc]
  336778: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  33677c: 4608         	mov	r0, r1
  33677e: 4611         	mov	r1, r2
  336780: 4798         	blx	r3
  336782: 9a03         	ldr	r2, [sp, #0xc]
  336784: 4bf0         	ldr	r3, [pc, #0x3c0]        @ 0x336b48 <GameTypeLayer::init()+0x658>
  336786: 58e3         	ldr	r3, [r4, r3]
  336788: 9326         	str	r3, [sp, #0x98]
  33678a: 2300         	movs	r3, #0x0
  33678c: 9327         	str	r3, [sp, #0x9c]
  33678e: 9b27         	ldr	r3, [sp, #0x9c]
  336790: 9300         	str	r3, [sp]
  336792: 9b26         	ldr	r3, [sp, #0x98]
  336794: 980c         	ldr	r0, [sp, #0x30]
  336796: 990c         	ldr	r1, [sp, #0x30]
  336798: f281 fdc8    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x281b90
  33679c: 4603         	mov	r3, r0
  33679e: 9311         	str	r3, [sp, #0x44]
  3367a0: 9811         	ldr	r0, [sp, #0x44]
  3367a2: 2100         	movs	r1, #0x0
  3367a4: f27e fcca    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x27e994
  3367a8: 4602         	mov	r2, r0
  3367aa: 9b03         	ldr	r3, [sp, #0xc]
  3367ac: f8c3 212c    	str.w	r2, [r3, #0x12c]
  3367b0: 9b03         	ldr	r3, [sp, #0xc]
  3367b2: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  3367b6: 4618         	mov	r0, r3
  3367b8: f261 fb96    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x26172c
  3367bc: 9b03         	ldr	r3, [sp, #0xc]
  3367be: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  3367c2: 681b         	ldr	r3, [r3]
  3367c4: 334c         	adds	r3, #0x4c
  3367c6: 681d         	ldr	r5, [r3]
  3367c8: 9b03         	ldr	r3, [sp, #0xc]
  3367ca: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  3367ce: 461e         	mov	r6, r3
  3367d0: ab2e         	add	r3, sp, #0xb8
  3367d2: 4618         	mov	r0, r3
  3367d4: f04f 0100    	mov.w	r1, #0x0
  3367d8: f2c4 2160    	movt	r1, #0x4260
  3367dc: f04f 4284    	mov.w	r2, #0x42000000
  3367e0: f25c fa86    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x25c50c
  3367e4: ab2e         	add	r3, sp, #0xb8
  3367e6: 4630         	mov	r0, r6
  3367e8: 4619         	mov	r1, r3
  3367ea: 47a8         	blx	r5
  3367ec: 9b03         	ldr	r3, [sp, #0xc]
  3367ee: 681b         	ldr	r3, [r3]
  3367f0: 33c8         	adds	r3, #0xc8
  3367f2: 681b         	ldr	r3, [r3]
  3367f4: 9903         	ldr	r1, [sp, #0xc]
  3367f6: 9a03         	ldr	r2, [sp, #0xc]
  3367f8: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  3367fc: 4608         	mov	r0, r1
  3367fe: 4611         	mov	r1, r2
  336800: 4798         	blx	r3
  336802: 9a03         	ldr	r2, [sp, #0xc]
  336804: 4bd1         	ldr	r3, [pc, #0x344]        @ 0x336b4c <GameTypeLayer::init()+0x65c>
  336806: 58e3         	ldr	r3, [r4, r3]
  336808: 9328         	str	r3, [sp, #0xa0]
  33680a: 2300         	movs	r3, #0x0
  33680c: 9329         	str	r3, [sp, #0xa4]
  33680e: 9b29         	ldr	r3, [sp, #0xa4]
  336810: 9300         	str	r3, [sp]
  336812: 9b28         	ldr	r3, [sp, #0xa0]
  336814: 980d         	ldr	r0, [sp, #0x34]
  336816: 990d         	ldr	r1, [sp, #0x34]
  336818: f281 fd88    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x281b10
  33681c: 4603         	mov	r3, r0
  33681e: 9312         	str	r3, [sp, #0x48]
  336820: 9812         	ldr	r0, [sp, #0x48]
  336822: 2100         	movs	r1, #0x0
  336824: f27e fc8a    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x27e914
  336828: 4602         	mov	r2, r0
  33682a: 9b03         	ldr	r3, [sp, #0xc]
  33682c: f8c3 2130    	str.w	r2, [r3, #0x130]
  336830: 9b03         	ldr	r3, [sp, #0xc]
  336832: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  336836: 4618         	mov	r0, r3
  336838: f261 fb56    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2616ac
  33683c: 9b03         	ldr	r3, [sp, #0xc]
  33683e: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  336842: 681b         	ldr	r3, [r3]
  336844: 334c         	adds	r3, #0x4c
  336846: 681d         	ldr	r5, [r3]
  336848: 9b03         	ldr	r3, [sp, #0xc]
  33684a: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  33684e: 461e         	mov	r6, r3
  336850: 4bb4         	ldr	r3, [pc, #0x2d0]        @ 0x336b24 <GameTypeLayer::init()+0x634>
  336852: 58e3         	ldr	r3, [r4, r3]
  336854: ed93 7a00    	vldr	s14, [r3]
  336858: eddf 7ab1    	vldr	s15, [pc, #708]         @ 0x336b20 <GameTypeLayer::init()+0x630>
  33685c: ee77 7a67    	vsub.f32	s15, s14, s15
  336860: ab2e         	add	r3, sp, #0xb8
  336862: 4618         	mov	r0, r3
  336864: ee17 1a90    	vmov	r1, s15
  336868: f04f 0200    	mov.w	r2, #0x0
  33686c: f2c4 22a0    	movt	r2, #0x42a0
  336870: f25c fa3e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x25c47c
  336874: ab2e         	add	r3, sp, #0xb8
  336876: 4630         	mov	r0, r6
  336878: 4619         	mov	r1, r3
  33687a: 47a8         	blx	r5
  33687c: 9b03         	ldr	r3, [sp, #0xc]
  33687e: 681b         	ldr	r3, [r3]
  336880: 33c8         	adds	r3, #0xc8
  336882: 681b         	ldr	r3, [r3]
  336884: 9903         	ldr	r1, [sp, #0xc]
  336886: 9a03         	ldr	r2, [sp, #0xc]
  336888: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  33688c: 4608         	mov	r0, r1
  33688e: 4611         	mov	r1, r2
  336890: 4798         	blx	r3
  336892: f64c 43cd    	movw	r3, #0xcccd
  336896: f6c3 730c    	movt	r3, #0x3f0c
  33689a: 9313         	str	r3, [sp, #0x4c]
  33689c: f04f 0300    	mov.w	r3, #0x0
  3368a0: f2c4 13c0    	movt	r3, #0x41c0
  3368a4: 9314         	str	r3, [sp, #0x50]
  3368a6: f04f 4341    	mov.w	r3, #0xc1000000
  3368aa: 9315         	str	r3, [sp, #0x54]
  3368ac: 4ba8         	ldr	r3, [pc, #0x2a0]        @ 0x336b50 <GameTypeLayer::init()+0x660>
  3368ae: 447b         	add	r3, pc
  3368b0: 4618         	mov	r0, r3
  3368b2: f07e f525    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x47ea4a
  3368b6: 4603         	mov	r3, r0
  3368b8: 2220         	movs	r2, #0x20
  3368ba: 9200         	str	r2, [sp]
  3368bc: 4aa5         	ldr	r2, [pc, #0x294]        @ 0x336b54 <GameTypeLayer::init()+0x664>
  3368be: 447a         	add	r2, pc
  3368c0: 4610         	mov	r0, r2
  3368c2: 4619         	mov	r1, r3
  3368c4: 2220         	movs	r2, #0x20
  3368c6: 2320         	movs	r3, #0x20
  3368c8: f26e fd56    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x26eaac
  3368cc: 4602         	mov	r2, r0
  3368ce: 9b03         	ldr	r3, [sp, #0xc]
  3368d0: f8c3 2110    	str.w	r2, [r3, #0x110]
  3368d4: 9b03         	ldr	r3, [sp, #0xc]
  3368d6: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3368da: 4618         	mov	r0, r3
  3368dc: f261 fb04    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x261608
  3368e0: 9b03         	ldr	r3, [sp, #0xc]
  3368e2: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3368e6: eddd 7a14    	vldr	s15, [sp, #80]
  3368ea: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3368ee: ee17 2a90    	vmov	r2, s15
  3368f2: 4618         	mov	r0, r3
  3368f4: 4611         	mov	r1, r2
  3368f6: f26f fa45    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x26f48a
  3368fa: 9b03         	ldr	r3, [sp, #0xc]
  3368fc: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  336900: 681b         	ldr	r3, [r3]
  336902: 3340         	adds	r3, #0x40
  336904: 681b         	ldr	r3, [r3]
  336906: 9a03         	ldr	r2, [sp, #0xc]
  336908: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  33690c: 4610         	mov	r0, r2
  33690e: 9913         	ldr	r1, [sp, #0x4c]
  336910: 4798         	blx	r3
  336912: 9b03         	ldr	r3, [sp, #0xc]
  336914: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  336918: 681b         	ldr	r3, [r3]
  33691a: 334c         	adds	r3, #0x4c
  33691c: 681d         	ldr	r5, [r3]
  33691e: 9b03         	ldr	r3, [sp, #0xc]
  336920: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  336924: 461e         	mov	r6, r3
  336926: 9b03         	ldr	r3, [sp, #0xc]
  336928: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  33692c: 681b         	ldr	r3, [r3]
  33692e: 3350         	adds	r3, #0x50
  336930: 681b         	ldr	r3, [r3]
  336932: 9a03         	ldr	r2, [sp, #0xc]
  336934: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  336938: 4610         	mov	r0, r2
  33693a: 4798         	blx	r3
  33693c: 4603         	mov	r3, r0
  33693e: 681f         	ldr	r7, [r3]
  336940: 9b03         	ldr	r3, [sp, #0xc]
  336942: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  336946: 681b         	ldr	r3, [r3]
  336948: 3350         	adds	r3, #0x50
  33694a: 681b         	ldr	r3, [r3]
  33694c: 9a03         	ldr	r2, [sp, #0xc]
  33694e: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  336952: 4610         	mov	r0, r2
  336954: 4798         	blx	r3
  336956: 4603         	mov	r3, r0
  336958: 685b         	ldr	r3, [r3, #0x4]
  33695a: aa1a         	add	r2, sp, #0x68
  33695c: 4610         	mov	r0, r2
  33695e: 4639         	mov	r1, r7
  336960: 461a         	mov	r2, r3
  336962: f25c f9c5    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x25c38a
  336966: eddd 7a15    	vldr	s15, [sp, #84]
  33696a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  33696e: ab2a         	add	r3, sp, #0xa8
  336970: 4618         	mov	r0, r3
  336972: ed9f 0b69    	vldr	d0, [pc, #420]          @ 0x336b18 <GameTypeLayer::init()+0x628>
  336976: eeb0 1b47    	vmov.f64	d1, d7
  33697a: f7fe fe7b    	bl	0x335674 <__gnu_cxx::__normal_iterator<gpg::Achievement const*, std::vector<gpg::Achievement, std::allocator<gpg::Achievement>>>::base() const+0x15c> @ imm = #-0x130a
  33697e: ed9d 8b2a    	vldr	d8, [sp, #168]
  336982: 9b03         	ldr	r3, [sp, #0xc]
  336984: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  336988: 681b         	ldr	r3, [r3]
  33698a: f503 73fe    	add.w	r3, r3, #0x1fc
  33698e: 681b         	ldr	r3, [r3]
  336990: 9a03         	ldr	r2, [sp, #0xc]
  336992: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  336996: 4610         	mov	r0, r2
  336998: 4798         	blx	r3
  33699a: 4607         	mov	r7, r0
  33699c: ab05         	add	r3, sp, #0x14
  33699e: 4618         	mov	r0, r3
  3369a0: f053 f528    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x453a50
  3369a4: aa06         	add	r2, sp, #0x18
  3369a6: ab05         	add	r3, sp, #0x14
  3369a8: 4610         	mov	r0, r2
  3369aa: 4639         	mov	r1, r7
  3369ac: 461a         	mov	r2, r3
  3369ae: f080 f057    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4800ae
  3369b2: ab06         	add	r3, sp, #0x18
  3369b4: 4618         	mov	r0, r3
  3369b6: f07e f351    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x47e6a2
  3369ba: 4603         	mov	r3, r0
  3369bc: ee07 3a90    	vmov	s15, r3
  3369c0: eeb8 7a67    	vcvt.f32.u32	s14, s15
  3369c4: eddd 7a14    	vldr	s15, [sp, #80]
  3369c8: ee27 7a27    	vmul.f32	s14, s14, s15
  3369cc: eddd 7a13    	vldr	s15, [sp, #76]
  3369d0: ee27 7a27    	vmul.f32	s14, s14, s15
  3369d4: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3369d8: eec7 7a27    	vdiv.f32	s15, s14, s15
  3369dc: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3369e0: ee38 7b47    	vsub.f64	d7, d8, d7
  3369e4: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3369e8: eddd 7a15    	vldr	s15, [sp, #84]
  3369ec: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3369f0: ab2e         	add	r3, sp, #0xb8
  3369f2: 4618         	mov	r0, r3
  3369f4: ed9f 0b48    	vldr	d0, [pc, #288]          @ 0x336b18 <GameTypeLayer::init()+0x628>
  3369f8: eeb0 1b47    	vmov.f64	d1, d7
  3369fc: f7fe fe3a    	bl	0x335674 <__gnu_cxx::__normal_iterator<gpg::Achievement const*, std::vector<gpg::Achievement, std::allocator<gpg::Achievement>>>::base() const+0x15c> @ imm = #-0x138c
  336a00: ed9d 7b30    	vldr	d7, [sp, #192]
  336a04: eef7 7bc7    	vcvt.f32.f64	s15, d7
  336a08: ab1c         	add	r3, sp, #0x70
  336a0a: 4618         	mov	r0, r3
  336a0c: ee18 1a10    	vmov	r1, s16
  336a10: ee17 2a90    	vmov	r2, s15
  336a14: f25c f96c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x25c2d8
  336a18: a91e         	add	r1, sp, #0x78
  336a1a: aa1a         	add	r2, sp, #0x68
  336a1c: ab1c         	add	r3, sp, #0x70
  336a1e: 4608         	mov	r0, r1
  336a20: 4611         	mov	r1, r2
  336a22: 461a         	mov	r2, r3
  336a24: f7fe fe16    	bl	0x335654 <__gnu_cxx::__normal_iterator<gpg::Achievement const*, std::vector<gpg::Achievement, std::allocator<gpg::Achievement>>>::base() const+0x13c> @ imm = #-0x13d4
  336a28: ab1e         	add	r3, sp, #0x78
  336a2a: 4630         	mov	r0, r6
  336a2c: 4619         	mov	r1, r3
  336a2e: 47a8         	blx	r5
  336a30: ab06         	add	r3, sp, #0x18
  336a32: 4618         	mov	r0, r3
  336a34: f07e f76e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47eedc
  336a38: ab05         	add	r3, sp, #0x14
  336a3a: 4618         	mov	r0, r3
  336a3c: f053 f4de    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4539bc
  336a40: 9b03         	ldr	r3, [sp, #0xc]
  336a42: 681b         	ldr	r3, [r3]
  336a44: 33c8         	adds	r3, #0xc8
  336a46: 681b         	ldr	r3, [r3]
  336a48: 9903         	ldr	r1, [sp, #0xc]
  336a4a: 9a03         	ldr	r2, [sp, #0xc]
  336a4c: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  336a50: 4608         	mov	r0, r1
  336a52: 4611         	mov	r1, r2
  336a54: 4798         	blx	r3
  336a56: 4b40         	ldr	r3, [pc, #0x100]        @ 0x336b58 <GameTypeLayer::init()+0x668>
  336a58: 447b         	add	r3, pc
  336a5a: 4618         	mov	r0, r3
  336a5c: f07e f450    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x47e8a0
  336a60: 4603         	mov	r3, r0
  336a62: 2220         	movs	r2, #0x20
  336a64: 9200         	str	r2, [sp]
  336a66: 4a3d         	ldr	r2, [pc, #0xf4]         @ 0x336b5c <GameTypeLayer::init()+0x66c>
  336a68: 447a         	add	r2, pc
  336a6a: 4610         	mov	r0, r2
  336a6c: 4619         	mov	r1, r3
  336a6e: 2220         	movs	r2, #0x20
  336a70: 2320         	movs	r3, #0x20
  336a72: f26e fc81    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x26e902
  336a76: 4602         	mov	r2, r0
  336a78: 9b03         	ldr	r3, [sp, #0xc]
  336a7a: f8c3 2114    	str.w	r2, [r3, #0x114]
  336a7e: 9b03         	ldr	r3, [sp, #0xc]
  336a80: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  336a84: 4618         	mov	r0, r3
  336a86: f261 fa2f    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x26145e
  336a8a: 9b03         	ldr	r3, [sp, #0xc]
  336a8c: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  336a90: eddd 7a14    	vldr	s15, [sp, #80]
  336a94: eefd 7ae7    	vcvt.s32.f32	s15, s15
  336a98: ee17 2a90    	vmov	r2, s15
  336a9c: 4618         	mov	r0, r3
  336a9e: 4611         	mov	r1, r2
  336aa0: f26f f970    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x26f2e0
  336aa4: 9b03         	ldr	r3, [sp, #0xc]
  336aa6: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  336aaa: 681b         	ldr	r3, [r3]
  336aac: 3340         	adds	r3, #0x40
  336aae: 681b         	ldr	r3, [r3]
  336ab0: 9a03         	ldr	r2, [sp, #0xc]
  336ab2: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  336ab6: 4610         	mov	r0, r2
  336ab8: 9913         	ldr	r1, [sp, #0x4c]
  336aba: 4798         	blx	r3
  336abc: 9b03         	ldr	r3, [sp, #0xc]
  336abe: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  336ac2: 681b         	ldr	r3, [r3]
  336ac4: 334c         	adds	r3, #0x4c
  336ac6: 681d         	ldr	r5, [r3]
  336ac8: 9b03         	ldr	r3, [sp, #0xc]
  336aca: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  336ace: 461e         	mov	r6, r3
  336ad0: 9b03         	ldr	r3, [sp, #0xc]
  336ad2: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  336ad6: 681b         	ldr	r3, [r3]
  336ad8: 3350         	adds	r3, #0x50
  336ada: 681b         	ldr	r3, [r3]
  336adc: 9a03         	ldr	r2, [sp, #0xc]
  336ade: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  336ae2: 4610         	mov	r0, r2
  336ae4: 4798         	blx	r3
  336ae6: 4603         	mov	r3, r0
  336ae8: 681f         	ldr	r7, [r3]
  336aea: 9b03         	ldr	r3, [sp, #0xc]
  336aec: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  336af0: 681b         	ldr	r3, [r3]
  336af2: 3350         	adds	r3, #0x50
  336af4: 681b         	ldr	r3, [r3]
  336af6: 9a03         	ldr	r2, [sp, #0xc]
  336af8: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  336afc: 4610         	mov	r0, r2
  336afe: 4798         	blx	r3
  336b00: 4603         	mov	r3, r0
  336b02: 685b         	ldr	r3, [r3, #0x4]
  336b04: aa1a         	add	r2, sp, #0x68
  336b06: 4610         	mov	r0, r2
  336b08: 4639         	mov	r1, r7
  336b0a: 461a         	mov	r2, r3
  336b0c: f25c f8f0    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x25c1e0
  336b10: e026         	b	0x336b60 <GameTypeLayer::init()+0x670> @ imm = #0x4c
  336b12: bf00         	nop
  336b14: f3af 8000    	nop.w
  336b20: 0000         	movs	r0, r0
  336b22: 4270         	rsbs	r0, r6, #0
  336b24: d724         	bvc	0x336b70 <GameTypeLayer::init()+0x680> @ imm = #0x48
  336b26: ffff 2c68    	vdup.8	q9, d24[7]
  336b2a: 0049         	lsls	r1, r1, #0x1
  336b2c: 2c64         	cmp	r4, #0x64
  336b2e: 0049         	lsls	r1, r1, #0x1
  336b30: 2c60         	cmp	r4, #0x60
  336b32: 0049         	lsls	r1, r1, #0x1
  336b34: 2c5c         	cmp	r4, #0x5c
  336b36: 0049         	lsls	r1, r1, #0x1
  336b38: 2c58         	cmp	r4, #0x58
  336b3a: 0049         	lsls	r1, r1, #0x1
  336b3c: da88         	bge	0x336a50 <GameTypeLayer::init()+0x560> @ imm = #-0xf0
  336b3e: ffff da8c    	vtbl.8	d29, {d31, fpinst2, mvfr0}, d12
  336b42: ffff da90    	<unknown>
  336b46: ffff da94    	<unknown>
  336b4a: ffff da98    	<unknown>
  336b4e: ffff 9b3a    	<unknown>
  336b52: 0060         	lsls	r0, r4, #0x1
  336b54: 2966         	cmp	r1, #0x66
  336b56: 0049         	lsls	r1, r1, #0x1
  336b58: 9990         	ldr	r1, [sp, #0x240]
  336b5a: 0060         	lsls	r0, r4, #0x1
  336b5c: 27c8         	movs	r7, #0xc8
  336b5e: 0049         	lsls	r1, r1, #0x1
  336b60: ed9d 7a15    	vldr	s14, [sp, #84]
  336b64: eef0 7a08    	vmov.f32	s15, #3.000000e+00
  336b68: ee77 7a27    	vadd.f32	s15, s14, s15
  336b6c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  336b70: ab2a         	add	r3, sp, #0xa8
  336b72: 4618         	mov	r0, r3
  336b74: ed9f 0bb6    	vldr	d0, [pc, #728]          @ 0x336e50 <GameTypeLayer::init()+0x960>
  336b78: eeb0 1b47    	vmov.f64	d1, d7
  336b7c: f7fe fd7a    	bl	0x335674 <__gnu_cxx::__normal_iterator<gpg::Achievement const*, std::vector<gpg::Achievement, std::allocator<gpg::Achievement>>>::base() const+0x15c> @ imm = #-0x150c
  336b80: ed9d 8b2a    	vldr	d8, [sp, #168]
  336b84: 9b03         	ldr	r3, [sp, #0xc]
  336b86: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  336b8a: 681b         	ldr	r3, [r3]
  336b8c: f503 73fe    	add.w	r3, r3, #0x1fc
  336b90: 681b         	ldr	r3, [r3]
  336b92: 9a03         	ldr	r2, [sp, #0xc]
  336b94: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  336b98: 4610         	mov	r0, r2
  336b9a: 4798         	blx	r3
  336b9c: 4607         	mov	r7, r0
  336b9e: ab05         	add	r3, sp, #0x14
  336ba0: 4618         	mov	r0, r3
  336ba2: f053 f427    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x45384e
  336ba6: aa06         	add	r2, sp, #0x18
  336ba8: ab05         	add	r3, sp, #0x14
  336baa: 4610         	mov	r0, r2
  336bac: 4639         	mov	r1, r7
  336bae: 461a         	mov	r2, r3
  336bb0: f07f f756    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x47feac
  336bb4: ab06         	add	r3, sp, #0x18
  336bb6: 4618         	mov	r0, r3
  336bb8: f07e f250    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x47e4a0
  336bbc: 4603         	mov	r3, r0
  336bbe: ee07 3a90    	vmov	s15, r3
  336bc2: eeb8 7a67    	vcvt.f32.u32	s14, s15
  336bc6: eddd 7a14    	vldr	s15, [sp, #80]
  336bca: ee27 7a27    	vmul.f32	s14, s14, s15
  336bce: eddd 7a13    	vldr	s15, [sp, #76]
  336bd2: ee27 7a27    	vmul.f32	s14, s14, s15
  336bd6: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  336bda: eec7 7a27    	vdiv.f32	s15, s14, s15
  336bde: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  336be2: ee38 7b47    	vsub.f64	d7, d8, d7
  336be6: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  336bea: ed9d 7a15    	vldr	s14, [sp, #84]
  336bee: eef0 7a08    	vmov.f32	s15, #3.000000e+00
  336bf2: ee77 7a27    	vadd.f32	s15, s14, s15
  336bf6: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  336bfa: ab2e         	add	r3, sp, #0xb8
  336bfc: 4618         	mov	r0, r3
  336bfe: ed9f 0b94    	vldr	d0, [pc, #592]          @ 0x336e50 <GameTypeLayer::init()+0x960>
  336c02: eeb0 1b47    	vmov.f64	d1, d7
  336c06: f7fe fd35    	bl	0x335674 <__gnu_cxx::__normal_iterator<gpg::Achievement const*, std::vector<gpg::Achievement, std::allocator<gpg::Achievement>>>::base() const+0x15c> @ imm = #-0x1596
  336c0a: ed9d 7b30    	vldr	d7, [sp, #192]
  336c0e: eef7 7bc7    	vcvt.f32.f64	s15, d7
  336c12: ab1c         	add	r3, sp, #0x70
  336c14: 4618         	mov	r0, r3
  336c16: ee18 1a10    	vmov	r1, s16
  336c1a: ee17 2a90    	vmov	r2, s15
  336c1e: f25c f867    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x25c0ce
  336c22: a91e         	add	r1, sp, #0x78
  336c24: aa1a         	add	r2, sp, #0x68
  336c26: ab1c         	add	r3, sp, #0x70
  336c28: 4608         	mov	r0, r1
  336c2a: 4611         	mov	r1, r2
  336c2c: 461a         	mov	r2, r3
  336c2e: f7fe fd11    	bl	0x335654 <__gnu_cxx::__normal_iterator<gpg::Achievement const*, std::vector<gpg::Achievement, std::allocator<gpg::Achievement>>>::base() const+0x13c> @ imm = #-0x15de
  336c32: ab1e         	add	r3, sp, #0x78
  336c34: 4630         	mov	r0, r6
  336c36: 4619         	mov	r1, r3
  336c38: 47a8         	blx	r5
  336c3a: ab06         	add	r3, sp, #0x18
  336c3c: 4618         	mov	r0, r3
  336c3e: f07e f669    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47ecd2
  336c42: ab05         	add	r3, sp, #0x14
  336c44: 4618         	mov	r0, r3
  336c46: f053 f3d9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4537b2
  336c4a: 9b03         	ldr	r3, [sp, #0xc]
  336c4c: 681b         	ldr	r3, [r3]
  336c4e: 33c8         	adds	r3, #0xc8
  336c50: 681b         	ldr	r3, [r3]
  336c52: 9903         	ldr	r1, [sp, #0xc]
  336c54: 9a03         	ldr	r2, [sp, #0xc]
  336c56: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  336c5a: 4608         	mov	r0, r1
  336c5c: 4611         	mov	r1, r2
  336c5e: 4798         	blx	r3
  336c60: 4b7f         	ldr	r3, [pc, #0x1fc]        @ 0x336e60 <GameTypeLayer::init()+0x970>
  336c62: 447b         	add	r3, pc
  336c64: 4618         	mov	r0, r3
  336c66: f07e f34b    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x47e696
  336c6a: 4603         	mov	r3, r0
  336c6c: 2220         	movs	r2, #0x20
  336c6e: 9200         	str	r2, [sp]
  336c70: 4a7c         	ldr	r2, [pc, #0x1f0]        @ 0x336e64 <GameTypeLayer::init()+0x974>
  336c72: 447a         	add	r2, pc
  336c74: 4610         	mov	r0, r2
  336c76: 4619         	mov	r1, r3
  336c78: 2220         	movs	r2, #0x20
  336c7a: 2320         	movs	r3, #0x20
  336c7c: f26e fb7c    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x26e6f8
  336c80: 4602         	mov	r2, r0
  336c82: 9b03         	ldr	r3, [sp, #0xc]
  336c84: f8c3 211c    	str.w	r2, [r3, #0x11c]
  336c88: 9b03         	ldr	r3, [sp, #0xc]
  336c8a: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  336c8e: 4618         	mov	r0, r3
  336c90: f261 f92a    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x261254
  336c94: 9b03         	ldr	r3, [sp, #0xc]
  336c96: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  336c9a: eddd 7a14    	vldr	s15, [sp, #80]
  336c9e: eefd 7ae7    	vcvt.s32.f32	s15, s15
  336ca2: ee17 2a90    	vmov	r2, s15
  336ca6: 4618         	mov	r0, r3
  336ca8: 4611         	mov	r1, r2
  336caa: f26f f86b    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x26f0d6
  336cae: 9b03         	ldr	r3, [sp, #0xc]
  336cb0: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  336cb4: 681b         	ldr	r3, [r3]
  336cb6: 3340         	adds	r3, #0x40
  336cb8: 681b         	ldr	r3, [r3]
  336cba: 9a03         	ldr	r2, [sp, #0xc]
  336cbc: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  336cc0: 4610         	mov	r0, r2
  336cc2: f645 4129    	movw	r1, #0x5c29
  336cc6: f6c3 618f    	movt	r1, #0x3e8f
  336cca: 4798         	blx	r3
  336ccc: 9b03         	ldr	r3, [sp, #0xc]
  336cce: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  336cd2: 681b         	ldr	r3, [r3]
  336cd4: 334c         	adds	r3, #0x4c
  336cd6: 681d         	ldr	r5, [r3]
  336cd8: 9b03         	ldr	r3, [sp, #0xc]
  336cda: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  336cde: 461e         	mov	r6, r3
  336ce0: 9b03         	ldr	r3, [sp, #0xc]
  336ce2: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  336ce6: 681b         	ldr	r3, [r3]
  336ce8: 3350         	adds	r3, #0x50
  336cea: 681b         	ldr	r3, [r3]
  336cec: 9a03         	ldr	r2, [sp, #0xc]
  336cee: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  336cf2: 4610         	mov	r0, r2
  336cf4: 4798         	blx	r3
  336cf6: 4603         	mov	r3, r0
  336cf8: 681f         	ldr	r7, [r3]
  336cfa: 9b03         	ldr	r3, [sp, #0xc]
  336cfc: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  336d00: 681b         	ldr	r3, [r3]
  336d02: 3350         	adds	r3, #0x50
  336d04: 681b         	ldr	r3, [r3]
  336d06: 9a03         	ldr	r2, [sp, #0xc]
  336d08: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  336d0c: 4610         	mov	r0, r2
  336d0e: 4798         	blx	r3
  336d10: 4603         	mov	r3, r0
  336d12: 685b         	ldr	r3, [r3, #0x4]
  336d14: aa1a         	add	r2, sp, #0x68
  336d16: 4610         	mov	r0, r2
  336d18: 4639         	mov	r1, r7
  336d1a: 461a         	mov	r2, r3
  336d1c: f25b ffe8    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x25bfd0
  336d20: ed9d 7a15    	vldr	s14, [sp, #84]
  336d24: eef1 7a0c    	vmov.f32	s15, #7.000000e+00
  336d28: ee77 7a67    	vsub.f32	s15, s14, s15
  336d2c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  336d30: ab2a         	add	r3, sp, #0xa8
  336d32: 4618         	mov	r0, r3
  336d34: ed9f 0b46    	vldr	d0, [pc, #280]          @ 0x336e50 <GameTypeLayer::init()+0x960>
  336d38: eeb0 1b47    	vmov.f64	d1, d7
  336d3c: f7fe fc9a    	bl	0x335674 <__gnu_cxx::__normal_iterator<gpg::Achievement const*, std::vector<gpg::Achievement, std::allocator<gpg::Achievement>>>::base() const+0x15c> @ imm = #-0x16cc
  336d40: ed9d 8b2a    	vldr	d8, [sp, #168]
  336d44: 9b03         	ldr	r3, [sp, #0xc]
  336d46: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  336d4a: 681b         	ldr	r3, [r3]
  336d4c: f503 73fe    	add.w	r3, r3, #0x1fc
  336d50: 681b         	ldr	r3, [r3]
  336d52: 9a03         	ldr	r2, [sp, #0xc]
  336d54: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  336d58: 4610         	mov	r0, r2
  336d5a: 4798         	blx	r3
  336d5c: 4607         	mov	r7, r0
  336d5e: ab05         	add	r3, sp, #0x14
  336d60: 4618         	mov	r0, r3
  336d62: f053 f347    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x45368e
  336d66: aa06         	add	r2, sp, #0x18
  336d68: ab05         	add	r3, sp, #0x14
  336d6a: 4610         	mov	r0, r2
  336d6c: 4639         	mov	r1, r7
  336d6e: 461a         	mov	r2, r3
  336d70: f07f f676    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x47fcec
  336d74: ab06         	add	r3, sp, #0x18
  336d76: 4618         	mov	r0, r3
  336d78: f07e f170    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x47e2e0
  336d7c: 4603         	mov	r3, r0
  336d7e: ee07 3a90    	vmov	s15, r3
  336d82: eeb8 7a67    	vcvt.f32.u32	s14, s15
  336d86: eddd 7a14    	vldr	s15, [sp, #80]
  336d8a: ee67 7a27    	vmul.f32	s15, s14, s15
  336d8e: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  336d92: ed9f 7b31    	vldr	d7, [pc, #196]          @ 0x336e58 <GameTypeLayer::init()+0x968>
  336d96: ee26 6b07    	vmul.f64	d6, d6, d7
  336d9a: eeb0 7b00    	vmov.f64	d7, #2.000000e+00
  336d9e: ee86 7b07    	vdiv.f64	d7, d6, d7
  336da2: ee38 7b47    	vsub.f64	d7, d8, d7
  336da6: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  336daa: ed9d 7a15    	vldr	s14, [sp, #84]
  336dae: eef1 7a0c    	vmov.f32	s15, #7.000000e+00
  336db2: ee77 7a67    	vsub.f32	s15, s14, s15
  336db6: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  336dba: ab2e         	add	r3, sp, #0xb8
  336dbc: 4618         	mov	r0, r3
  336dbe: ed9f 0b24    	vldr	d0, [pc, #144]          @ 0x336e50 <GameTypeLayer::init()+0x960>
  336dc2: eeb0 1b47    	vmov.f64	d1, d7
  336dc6: f7fe fc55    	bl	0x335674 <__gnu_cxx::__normal_iterator<gpg::Achievement const*, std::vector<gpg::Achievement, std::allocator<gpg::Achievement>>>::base() const+0x15c> @ imm = #-0x1756
  336dca: ed9d 7b30    	vldr	d7, [sp, #192]
  336dce: eef7 7bc7    	vcvt.f32.f64	s15, d7
  336dd2: ab1c         	add	r3, sp, #0x70
  336dd4: 4618         	mov	r0, r3
  336dd6: ee18 1a10    	vmov	r1, s16
  336dda: ee17 2a90    	vmov	r2, s15
  336dde: f25b ff87    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x25bf0e
  336de2: a91e         	add	r1, sp, #0x78
  336de4: aa1a         	add	r2, sp, #0x68
  336de6: ab1c         	add	r3, sp, #0x70
  336de8: 4608         	mov	r0, r1
  336dea: 4611         	mov	r1, r2
  336dec: 461a         	mov	r2, r3
  336dee: f7fe fc31    	bl	0x335654 <__gnu_cxx::__normal_iterator<gpg::Achievement const*, std::vector<gpg::Achievement, std::allocator<gpg::Achievement>>>::base() const+0x13c> @ imm = #-0x179e
  336df2: ab1e         	add	r3, sp, #0x78
  336df4: 4630         	mov	r0, r6
  336df6: 4619         	mov	r1, r3
  336df8: 47a8         	blx	r5
  336dfa: ab06         	add	r3, sp, #0x18
  336dfc: 4618         	mov	r0, r3
  336dfe: f07e f589    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47eb12
  336e02: ab05         	add	r3, sp, #0x14
  336e04: 4618         	mov	r0, r3
  336e06: f053 f2f9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4535f2
  336e0a: 9b03         	ldr	r3, [sp, #0xc]
  336e0c: 681b         	ldr	r3, [r3]
  336e0e: 33c8         	adds	r3, #0xc8
  336e10: 681b         	ldr	r3, [r3]
  336e12: 9903         	ldr	r1, [sp, #0xc]
  336e14: 9a03         	ldr	r2, [sp, #0xc]
  336e16: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  336e1a: 4608         	mov	r0, r1
  336e1c: 4611         	mov	r1, r2
  336e1e: 4798         	blx	r3
  336e20: 4b11         	ldr	r3, [pc, #0x44]         @ 0x336e68 <GameTypeLayer::init()+0x978>
  336e22: 447b         	add	r3, pc
  336e24: 4618         	mov	r0, r3
  336e26: f07e f26b    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x47e4d6
  336e2a: 4603         	mov	r3, r0
  336e2c: 2220         	movs	r2, #0x20
  336e2e: 9200         	str	r2, [sp]
  336e30: 4a0e         	ldr	r2, [pc, #0x38]         @ 0x336e6c <GameTypeLayer::init()+0x97c>
  336e32: 447a         	add	r2, pc
  336e34: 4610         	mov	r0, r2
  336e36: 4619         	mov	r1, r3
  336e38: 2220         	movs	r2, #0x20
  336e3a: 2320         	movs	r3, #0x20
  336e3c: f26e fa9c    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x26e538
  336e40: 4602         	mov	r2, r0
  336e42: 9b03         	ldr	r3, [sp, #0xc]
  336e44: f8c3 2118    	str.w	r2, [r3, #0x118]
  336e48: 9b03         	ldr	r3, [sp, #0xc]
  336e4a: e011         	b	0x336e70 <GameTypeLayer::init()+0x980> @ imm = #0x22
  336e4c: f3af 8000    	nop.w
  336e58: 51ec         	str	r4, [r5, r7]
  336e5a: 1eb8         	subs	r0, r7, #0x2
  336e5c: eb85 3fd1    	<unknown>
  336e60: 9786         	str	r7, [sp, #0x218]
  336e62: 0060         	lsls	r0, r4, #0x1
  336e64: 25ca         	movs	r5, #0xca
  336e66: 0049         	lsls	r1, r1, #0x1
  336e68: 95c6         	str	r5, [sp, #0x318]
  336e6a: 0060         	lsls	r0, r4, #0x1
  336e6c: 2412         	movs	r4, #0x12
  336e6e: 0049         	lsls	r1, r1, #0x1
  336e70: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  336e74: 4618         	mov	r0, r3
  336e76: f261 f837    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x26106e
  336e7a: 9b03         	ldr	r3, [sp, #0xc]
  336e7c: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  336e80: eddd 7a14    	vldr	s15, [sp, #80]
  336e84: eefd 7ae7    	vcvt.s32.f32	s15, s15
  336e88: ee17 2a90    	vmov	r2, s15
  336e8c: 4618         	mov	r0, r3
  336e8e: 4611         	mov	r1, r2
  336e90: f26e ff78    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x26eef0
  336e94: 9b03         	ldr	r3, [sp, #0xc]
  336e96: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  336e9a: 681b         	ldr	r3, [r3]
  336e9c: 3340         	adds	r3, #0x40
  336e9e: 681b         	ldr	r3, [r3]
  336ea0: 9a03         	ldr	r2, [sp, #0xc]
  336ea2: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  336ea6: 4610         	mov	r0, r2
  336ea8: 9913         	ldr	r1, [sp, #0x4c]
  336eaa: 4798         	blx	r3
  336eac: 9b03         	ldr	r3, [sp, #0xc]
  336eae: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  336eb2: 681b         	ldr	r3, [r3]
  336eb4: 334c         	adds	r3, #0x4c
  336eb6: 681d         	ldr	r5, [r3]
  336eb8: 9b03         	ldr	r3, [sp, #0xc]
  336eba: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  336ebe: 461e         	mov	r6, r3
  336ec0: 9b03         	ldr	r3, [sp, #0xc]
  336ec2: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  336ec6: 681b         	ldr	r3, [r3]
  336ec8: 3350         	adds	r3, #0x50
  336eca: 681b         	ldr	r3, [r3]
  336ecc: 9a03         	ldr	r2, [sp, #0xc]
  336ece: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  336ed2: 4610         	mov	r0, r2
  336ed4: 4798         	blx	r3
  336ed6: 4603         	mov	r3, r0
  336ed8: 681f         	ldr	r7, [r3]
  336eda: 9b03         	ldr	r3, [sp, #0xc]
  336edc: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  336ee0: 681b         	ldr	r3, [r3]
  336ee2: 3350         	adds	r3, #0x50
  336ee4: 681b         	ldr	r3, [r3]
  336ee6: 9a03         	ldr	r2, [sp, #0xc]
  336ee8: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  336eec: 4610         	mov	r0, r2
  336eee: 4798         	blx	r3
  336ef0: 4603         	mov	r3, r0
  336ef2: 685b         	ldr	r3, [r3, #0x4]
  336ef4: aa1a         	add	r2, sp, #0x68
  336ef6: 4610         	mov	r0, r2
  336ef8: 4639         	mov	r1, r7
  336efa: 461a         	mov	r2, r3
  336efc: f25b fef8    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x25bdf0
  336f00: eddd 7a15    	vldr	s15, [sp, #84]
  336f04: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  336f08: ab2a         	add	r3, sp, #0xa8
  336f0a: 4618         	mov	r0, r3
  336f0c: ed9f 0bb2    	vldr	d0, [pc, #712]          @ 0x3371d8 <GameTypeLayer::init()+0xce8>
  336f10: eeb0 1b47    	vmov.f64	d1, d7
  336f14: f7fe fbae    	bl	0x335674 <__gnu_cxx::__normal_iterator<gpg::Achievement const*, std::vector<gpg::Achievement, std::allocator<gpg::Achievement>>>::base() const+0x15c> @ imm = #-0x18a4
  336f18: ed9d 8b2a    	vldr	d8, [sp, #168]
  336f1c: 9b03         	ldr	r3, [sp, #0xc]
  336f1e: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  336f22: 681b         	ldr	r3, [r3]
  336f24: f503 73fe    	add.w	r3, r3, #0x1fc
  336f28: 681b         	ldr	r3, [r3]
  336f2a: 9a03         	ldr	r2, [sp, #0xc]
  336f2c: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  336f30: 4610         	mov	r0, r2
  336f32: 4798         	blx	r3
  336f34: 4607         	mov	r7, r0
  336f36: ab05         	add	r3, sp, #0x14
  336f38: 4618         	mov	r0, r3
  336f3a: f053 f25b    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4534b6
  336f3e: aa06         	add	r2, sp, #0x18
  336f40: ab05         	add	r3, sp, #0x14
  336f42: 4610         	mov	r0, r2
  336f44: 4639         	mov	r1, r7
  336f46: 461a         	mov	r2, r3
  336f48: f07f f58a    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x47fb14
  336f4c: ab06         	add	r3, sp, #0x18
  336f4e: 4618         	mov	r0, r3
  336f50: f07e f084    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x47e108
  336f54: 4603         	mov	r3, r0
  336f56: ee07 3a90    	vmov	s15, r3
  336f5a: eeb8 7a67    	vcvt.f32.u32	s14, s15
  336f5e: eddd 7a14    	vldr	s15, [sp, #80]
  336f62: ee27 7a27    	vmul.f32	s14, s14, s15
  336f66: eddd 7a13    	vldr	s15, [sp, #76]
  336f6a: ee27 7a27    	vmul.f32	s14, s14, s15
  336f6e: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  336f72: eec7 7a27    	vdiv.f32	s15, s14, s15
  336f76: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  336f7a: ee38 7b47    	vsub.f64	d7, d8, d7
  336f7e: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  336f82: eddd 7a15    	vldr	s15, [sp, #84]
  336f86: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  336f8a: ab2e         	add	r3, sp, #0xb8
  336f8c: 4618         	mov	r0, r3
  336f8e: ed9f 0b92    	vldr	d0, [pc, #584]          @ 0x3371d8 <GameTypeLayer::init()+0xce8>
  336f92: eeb0 1b47    	vmov.f64	d1, d7
  336f96: f7fe fb6d    	bl	0x335674 <__gnu_cxx::__normal_iterator<gpg::Achievement const*, std::vector<gpg::Achievement, std::allocator<gpg::Achievement>>>::base() const+0x15c> @ imm = #-0x1926
  336f9a: ed9d 7b30    	vldr	d7, [sp, #192]
  336f9e: eef7 7bc7    	vcvt.f32.f64	s15, d7
  336fa2: ab1c         	add	r3, sp, #0x70
  336fa4: 4618         	mov	r0, r3
  336fa6: ee18 1a10    	vmov	r1, s16
  336faa: ee17 2a90    	vmov	r2, s15
  336fae: f25b fe9f    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x25bd3e
  336fb2: a91e         	add	r1, sp, #0x78
  336fb4: aa1a         	add	r2, sp, #0x68
  336fb6: ab1c         	add	r3, sp, #0x70
  336fb8: 4608         	mov	r0, r1
  336fba: 4611         	mov	r1, r2
  336fbc: 461a         	mov	r2, r3
  336fbe: f7fe fb49    	bl	0x335654 <__gnu_cxx::__normal_iterator<gpg::Achievement const*, std::vector<gpg::Achievement, std::allocator<gpg::Achievement>>>::base() const+0x13c> @ imm = #-0x196e
  336fc2: ab1e         	add	r3, sp, #0x78
  336fc4: 4630         	mov	r0, r6
  336fc6: 4619         	mov	r1, r3
  336fc8: 47a8         	blx	r5
  336fca: ab06         	add	r3, sp, #0x18
  336fcc: 4618         	mov	r0, r3
  336fce: f07e f4a1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47e942
  336fd2: ab05         	add	r3, sp, #0x14
  336fd4: 4618         	mov	r0, r3
  336fd6: f053 f211    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x453422
  336fda: 9b03         	ldr	r3, [sp, #0xc]
  336fdc: 681b         	ldr	r3, [r3]
  336fde: 33c8         	adds	r3, #0xc8
  336fe0: 681b         	ldr	r3, [r3]
  336fe2: 9903         	ldr	r1, [sp, #0xc]
  336fe4: 9a03         	ldr	r2, [sp, #0xc]
  336fe6: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  336fea: 4608         	mov	r0, r1
  336fec: 4611         	mov	r1, r2
  336fee: 4798         	blx	r3
  336ff0: 4b7b         	ldr	r3, [pc, #0x1ec]        @ 0x3371e0 <GameTypeLayer::init()+0xcf0>
  336ff2: 447b         	add	r3, pc
  336ff4: 4618         	mov	r0, r3
  336ff6: f07e f183    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x47e306
  336ffa: 4603         	mov	r3, r0
  336ffc: 2220         	movs	r2, #0x20
  336ffe: 9200         	str	r2, [sp]
  337000: 4a78         	ldr	r2, [pc, #0x1e0]        @ 0x3371e4 <GameTypeLayer::init()+0xcf4>
  337002: 447a         	add	r2, pc
  337004: 4610         	mov	r0, r2
  337006: 4619         	mov	r1, r3
  337008: 2220         	movs	r2, #0x20
  33700a: 2320         	movs	r3, #0x20
  33700c: f26e f9b4    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x26e368
  337010: 4602         	mov	r2, r0
  337012: 9b03         	ldr	r3, [sp, #0xc]
  337014: f8c3 2120    	str.w	r2, [r3, #0x120]
  337018: 9b03         	ldr	r3, [sp, #0xc]
  33701a: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  33701e: 4618         	mov	r0, r3
  337020: f260 ff62    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x260ec4
  337024: 9b03         	ldr	r3, [sp, #0xc]
  337026: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  33702a: 681b         	ldr	r3, [r3]
  33702c: 334c         	adds	r3, #0x4c
  33702e: 681d         	ldr	r5, [r3]
  337030: 9b03         	ldr	r3, [sp, #0xc]
  337032: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  337036: 461e         	mov	r6, r3
  337038: 9b03         	ldr	r3, [sp, #0xc]
  33703a: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  33703e: 681b         	ldr	r3, [r3]
  337040: 3350         	adds	r3, #0x50
  337042: 681b         	ldr	r3, [r3]
  337044: 9a03         	ldr	r2, [sp, #0xc]
  337046: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  33704a: 4610         	mov	r0, r2
  33704c: 4798         	blx	r3
  33704e: 4603         	mov	r3, r0
  337050: 681f         	ldr	r7, [r3]
  337052: 9b03         	ldr	r3, [sp, #0xc]
  337054: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  337058: 681b         	ldr	r3, [r3]
  33705a: 3350         	adds	r3, #0x50
  33705c: 681b         	ldr	r3, [r3]
  33705e: 9a03         	ldr	r2, [sp, #0xc]
  337060: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  337064: 4610         	mov	r0, r2
  337066: 4798         	blx	r3
  337068: 4603         	mov	r3, r0
  33706a: 685b         	ldr	r3, [r3, #0x4]
  33706c: aa1a         	add	r2, sp, #0x68
  33706e: 4610         	mov	r0, r2
  337070: 4639         	mov	r1, r7
  337072: 461a         	mov	r2, r3
  337074: f25b fe3c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x25bc78
  337078: eddd 7a15    	vldr	s15, [sp, #84]
  33707c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  337080: ab2a         	add	r3, sp, #0xa8
  337082: 4618         	mov	r0, r3
  337084: ed9f 0b54    	vldr	d0, [pc, #336]          @ 0x3371d8 <GameTypeLayer::init()+0xce8>
  337088: eeb0 1b47    	vmov.f64	d1, d7
  33708c: f7fe faf2    	bl	0x335674 <__gnu_cxx::__normal_iterator<gpg::Achievement const*, std::vector<gpg::Achievement, std::allocator<gpg::Achievement>>>::base() const+0x15c> @ imm = #-0x1a1c
  337090: ed9d 8b2a    	vldr	d8, [sp, #168]
  337094: 9b03         	ldr	r3, [sp, #0xc]
  337096: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  33709a: 681b         	ldr	r3, [r3]
  33709c: f503 73fe    	add.w	r3, r3, #0x1fc
  3370a0: 681b         	ldr	r3, [r3]
  3370a2: 9a03         	ldr	r2, [sp, #0xc]
  3370a4: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  3370a8: 4610         	mov	r0, r2
  3370aa: 4798         	blx	r3
  3370ac: 4607         	mov	r7, r0
  3370ae: ab05         	add	r3, sp, #0x14
  3370b0: 4618         	mov	r0, r3
  3370b2: f053 f19f    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x45333e
  3370b6: aa06         	add	r2, sp, #0x18
  3370b8: ab05         	add	r3, sp, #0x14
  3370ba: 4610         	mov	r0, r2
  3370bc: 4639         	mov	r1, r7
  3370be: 461a         	mov	r2, r3
  3370c0: f07f f4ce    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x47f99c
  3370c4: ab06         	add	r3, sp, #0x18
  3370c6: 4618         	mov	r0, r3
  3370c8: f07d f7c8    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x47df90
  3370cc: 4603         	mov	r3, r0
  3370ce: ee07 3a90    	vmov	s15, r3
  3370d2: eeb8 7a67    	vcvt.f32.u32	s14, s15
  3370d6: eddd 7a14    	vldr	s15, [sp, #80]
  3370da: ee27 7a27    	vmul.f32	s14, s14, s15
  3370de: eddd 7a13    	vldr	s15, [sp, #76]
  3370e2: ee27 7a27    	vmul.f32	s14, s14, s15
  3370e6: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3370ea: eec7 7a27    	vdiv.f32	s15, s14, s15
  3370ee: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3370f2: ee38 7b47    	vsub.f64	d7, d8, d7
  3370f6: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3370fa: eddd 7a15    	vldr	s15, [sp, #84]
  3370fe: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  337102: ab2e         	add	r3, sp, #0xb8
  337104: 4618         	mov	r0, r3
  337106: ed9f 0b34    	vldr	d0, [pc, #208]          @ 0x3371d8 <GameTypeLayer::init()+0xce8>
  33710a: eeb0 1b47    	vmov.f64	d1, d7
  33710e: f7fe fab1    	bl	0x335674 <__gnu_cxx::__normal_iterator<gpg::Achievement const*, std::vector<gpg::Achievement, std::allocator<gpg::Achievement>>>::base() const+0x15c> @ imm = #-0x1a9e
  337112: ed9d 7b30    	vldr	d7, [sp, #192]
  337116: eef7 7bc7    	vcvt.f32.f64	s15, d7
  33711a: ab1c         	add	r3, sp, #0x70
  33711c: 4618         	mov	r0, r3
  33711e: ee18 1a10    	vmov	r1, s16
  337122: ee17 2a90    	vmov	r2, s15
  337126: f25b fde3    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x25bbc6
  33712a: a91e         	add	r1, sp, #0x78
  33712c: aa1a         	add	r2, sp, #0x68
  33712e: ab1c         	add	r3, sp, #0x70
  337130: 4608         	mov	r0, r1
  337132: 4611         	mov	r1, r2
  337134: 461a         	mov	r2, r3
  337136: f7fe fa8d    	bl	0x335654 <__gnu_cxx::__normal_iterator<gpg::Achievement const*, std::vector<gpg::Achievement, std::allocator<gpg::Achievement>>>::base() const+0x13c> @ imm = #-0x1ae6
  33713a: ab1e         	add	r3, sp, #0x78
  33713c: 4630         	mov	r0, r6
  33713e: 4619         	mov	r1, r3
  337140: 47a8         	blx	r5
  337142: ab06         	add	r3, sp, #0x18
  337144: 4618         	mov	r0, r3
  337146: f07e f3e5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47e7ca
  33714a: ab05         	add	r3, sp, #0x14
  33714c: 4618         	mov	r0, r3
  33714e: f053 f155    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4532aa
  337152: 9b03         	ldr	r3, [sp, #0xc]
  337154: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  337158: 681b         	ldr	r3, [r3]
  33715a: 3340         	adds	r3, #0x40
  33715c: 681b         	ldr	r3, [r3]
  33715e: 9a03         	ldr	r2, [sp, #0xc]
  337160: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  337164: 4610         	mov	r0, r2
  337166: 9913         	ldr	r1, [sp, #0x4c]
  337168: 4798         	blx	r3
  33716a: 9b03         	ldr	r3, [sp, #0xc]
  33716c: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  337170: eddd 7a14    	vldr	s15, [sp, #80]
  337174: eefd 7ae7    	vcvt.s32.f32	s15, s15
  337178: ee17 2a90    	vmov	r2, s15
  33717c: 4618         	mov	r0, r3
  33717e: 4611         	mov	r1, r2
  337180: f26e fe00    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x26ec00
  337184: 9b03         	ldr	r3, [sp, #0xc]
  337186: 681b         	ldr	r3, [r3]
  337188: 33c8         	adds	r3, #0xc8
  33718a: 681b         	ldr	r3, [r3]
  33718c: 9903         	ldr	r1, [sp, #0xc]
  33718e: 9a03         	ldr	r2, [sp, #0xc]
  337190: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  337194: 4608         	mov	r0, r1
  337196: 4611         	mov	r1, r2
  337198: 4798         	blx	r3
  33719a: 4b13         	ldr	r3, [pc, #0x4c]         @ 0x3371e8 <GameTypeLayer::init()+0xcf8>
  33719c: 447b         	add	r3, pc
  33719e: 4618         	mov	r0, r3
  3371a0: f2a0 fff0    	bl	0x5d8184 <cocos2d::CCSprite::create(char const*)> @ imm = #0x2a0fe0
  3371a4: 4602         	mov	r2, r0
  3371a6: 9b03         	ldr	r3, [sp, #0xc]
  3371a8: f8c3 210c    	str.w	r2, [r3, #0x10c]
  3371ac: 9b03         	ldr	r3, [sp, #0xc]
  3371ae: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3371b2: 681b         	ldr	r3, [r3]
  3371b4: 334c         	adds	r3, #0x4c
  3371b6: 681b         	ldr	r3, [r3]
  3371b8: 9a03         	ldr	r2, [sp, #0xc]
  3371ba: f8d2 110c    	ldr.w	r1, [r2, #0x10c]
  3371be: aa18         	add	r2, sp, #0x60
  3371c0: 4608         	mov	r0, r1
  3371c2: 4611         	mov	r1, r2
  3371c4: 4798         	blx	r3
  3371c6: 9b03         	ldr	r3, [sp, #0xc]
  3371c8: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3371cc: 681b         	ldr	r3, [r3]
  3371ce: f503 73d2    	add.w	r3, r3, #0x1a4
  3371d2: 681b         	ldr	r3, [r3]
  3371d4: e00a         	b	0x3371ec <GameTypeLayer::init()+0xcfc> @ imm = #0x14
  3371d6: bf00         	nop
  3371e0: 93f6         	str	r3, [sp, #0x3d8]
  3371e2: 0060         	lsls	r0, r4, #0x1
  3371e4: 224a         	movs	r2, #0x4a
  3371e6: 0049         	lsls	r1, r1, #0x1
  3371e8: 20b8         	movs	r0, #0xb8
  3371ea: 0049         	lsls	r1, r1, #0x1
  3371ec: 9a03         	ldr	r2, [sp, #0xc]
  3371ee: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3371f2: 4610         	mov	r0, r2
  3371f4: 2123         	movs	r1, #0x23
  3371f6: 4798         	blx	r3
  3371f8: 9b03         	ldr	r3, [sp, #0xc]
  3371fa: 681b         	ldr	r3, [r3]
  3371fc: 33c8         	adds	r3, #0xc8
  3371fe: 681b         	ldr	r3, [r3]
  337200: 9903         	ldr	r1, [sp, #0xc]
  337202: 9a03         	ldr	r2, [sp, #0xc]
  337204: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  337208: 4608         	mov	r0, r1
  33720a: 4611         	mov	r1, r2
  33720c: 4798         	blx	r3
  33720e: 9b03         	ldr	r3, [sp, #0xc]
  337210: 4a25         	ldr	r2, [pc, #0x94]         @ 0x3372a8 <GameTypeLayer::init()+0xdb8>
  337212: 58a2         	ldr	r2, [r4, r2]
  337214: 922e         	str	r2, [sp, #0xb8]
  337216: 2200         	movs	r2, #0x0
  337218: 922f         	str	r2, [sp, #0xbc]
  33721a: 4618         	mov	r0, r3
  33721c: ab2e         	add	r3, sp, #0xb8
  33721e: e893 0006    	ldm.w	r3, {r1, r2}
  337222: f04f 537e    	mov.w	r3, #0x3f800000
  337226: f259 fffd    	bl	0x591224 <cocos2d::CCNode::schedule(void (cocos2d::CCObject::*)(float), float)> @ imm = #0x259ffa
  33722a: 2301         	movs	r3, #0x1
  33722c: e036         	b	0x33729c <GameTypeLayer::init()+0xdac> @ imm = #0x6c
  33722e: ab06         	add	r3, sp, #0x18
  337230: 4618         	mov	r0, r3
  337232: f07e f36f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47e6de
  337236: e7ff         	b	0x337238 <GameTypeLayer::init()+0xd48> @ imm = #-0x2
  337238: ab05         	add	r3, sp, #0x14
  33723a: 4618         	mov	r0, r3
  33723c: f053 f0de    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4531bc
  337240: f050 f734    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x450e68
  337244: ab06         	add	r3, sp, #0x18
  337246: 4618         	mov	r0, r3
  337248: f07e f364    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47e6c8
  33724c: e7ff         	b	0x33724e <GameTypeLayer::init()+0xd5e> @ imm = #-0x2
  33724e: ab05         	add	r3, sp, #0x14
  337250: 4618         	mov	r0, r3
  337252: f053 f0d3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4531a6
  337256: f050 f729    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x450e52
  33725a: ab06         	add	r3, sp, #0x18
  33725c: 4618         	mov	r0, r3
  33725e: f07e f359    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47e6b2
  337262: e7ff         	b	0x337264 <GameTypeLayer::init()+0xd74> @ imm = #-0x2
  337264: ab05         	add	r3, sp, #0x14
  337266: 4618         	mov	r0, r3
  337268: f053 f0c8    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x453190
  33726c: f050 f71e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x450e3c
  337270: ab06         	add	r3, sp, #0x18
  337272: 4618         	mov	r0, r3
  337274: f07e f34e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47e69c
  337278: e7ff         	b	0x33727a <GameTypeLayer::init()+0xd8a> @ imm = #-0x2
  33727a: ab05         	add	r3, sp, #0x14
  33727c: 4618         	mov	r0, r3
  33727e: f053 f0bd    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x45317a
  337282: f050 f713    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x450e26
  337286: ab06         	add	r3, sp, #0x18
  337288: 4618         	mov	r0, r3
  33728a: f07e f343    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47e686
  33728e: e7ff         	b	0x337290 <GameTypeLayer::init()+0xda0> @ imm = #-0x2
  337290: ab05         	add	r3, sp, #0x14
  337292: 4618         	mov	r0, r3
  337294: f053 f0b2    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x453164
  337298: f050 f708    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x450e10
  33729c: 4618         	mov	r0, r3
  33729e: b033         	add	sp, #0xcc
  3372a0: ecbd 8b02    	vpop	{d8}
  3372a4: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x3372a5); words below are literal-pool data ---
  3372a6: bf00         	nop
  3372a8: da9c         	bge	0x3371e4 <GameTypeLayer::init()+0xcf4> @ imm = #-0xc8
  3372aa: ffff f3af    	<unknown>

// ==== GameTypeLayer::~GameTypeLayer
//      file offset 0x3372b0 (= ELF address; Ghidra 0x3472b0), 220 bytes, Thumb-2
  3372b0: b500         	push	{lr}
  3372b2: b083         	sub	sp, #0xc
  3372b4: 9001         	str	r0, [sp, #0x4]
  3372b6: 4b33         	ldr	r3, [pc, #0xcc]         @ 0x337384 <GameTypeLayer::~GameTypeLayer()+0xd4>
  3372b8: 447b         	add	r3, pc
  3372ba: 9a01         	ldr	r2, [sp, #0x4]
  3372bc: 4932         	ldr	r1, [pc, #0xc8]         @ 0x337388 <GameTypeLayer::~GameTypeLayer()+0xd8>
  3372be: 5859         	ldr	r1, [r3, r1]
  3372c0: 3108         	adds	r1, #0x8
  3372c2: 6011         	str	r1, [r2]
  3372c4: 9a01         	ldr	r2, [sp, #0x4]
  3372c6: 4930         	ldr	r1, [pc, #0xc0]         @ 0x337388 <GameTypeLayer::~GameTypeLayer()+0xd8>
  3372c8: 5859         	ldr	r1, [r3, r1]
  3372ca: f501 7104    	add.w	r1, r1, #0x210
  3372ce: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  3372d2: 9a01         	ldr	r2, [sp, #0x4]
  3372d4: 492c         	ldr	r1, [pc, #0xb0]         @ 0x337388 <GameTypeLayer::~GameTypeLayer()+0xd8>
  3372d6: 5859         	ldr	r1, [r3, r1]
  3372d8: f501 7110    	add.w	r1, r1, #0x240
  3372dc: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  3372e0: 9a01         	ldr	r2, [sp, #0x4]
  3372e2: 4929         	ldr	r1, [pc, #0xa4]         @ 0x337388 <GameTypeLayer::~GameTypeLayer()+0xd8>
  3372e4: 585b         	ldr	r3, [r3, r1]
  3372e6: f503 7313    	add.w	r3, r3, #0x24c
  3372ea: f8c2 30ec    	str.w	r3, [r2, #0xec]
  3372ee: 9b01         	ldr	r3, [sp, #0x4]
  3372f0: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3372f4: 4618         	mov	r0, r3
  3372f6: f260 fddf    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x260bbe
  3372fa: 9b01         	ldr	r3, [sp, #0x4]
  3372fc: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  337300: 4618         	mov	r0, r3
  337302: f260 fdd9    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x260bb2
  337306: 9b01         	ldr	r3, [sp, #0x4]
  337308: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  33730c: 4618         	mov	r0, r3
  33730e: f260 fdd3    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x260ba6
  337312: 9b01         	ldr	r3, [sp, #0x4]
  337314: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  337318: 4618         	mov	r0, r3
  33731a: f260 fdcd    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x260b9a
  33731e: 9b01         	ldr	r3, [sp, #0x4]
  337320: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  337324: 4618         	mov	r0, r3
  337326: f260 fdc7    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x260b8e
  33732a: 9b01         	ldr	r3, [sp, #0x4]
  33732c: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  337330: 4618         	mov	r0, r3
  337332: f260 fdc1    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x260b82
  337336: 9b01         	ldr	r3, [sp, #0x4]
  337338: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  33733c: 4618         	mov	r0, r3
  33733e: f260 fdbb    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x260b76
  337342: 9b01         	ldr	r3, [sp, #0x4]
  337344: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  337348: 4618         	mov	r0, r3
  33734a: f260 fdb5    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x260b6a
  33734e: 9b01         	ldr	r3, [sp, #0x4]
  337350: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  337354: 4618         	mov	r0, r3
  337356: f260 fdaf    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x260b5e
  33735a: 9b01         	ldr	r3, [sp, #0x4]
  33735c: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  337360: 4618         	mov	r0, r3
  337362: f260 fda9    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x260b52
  337366: 9b01         	ldr	r3, [sp, #0x4]
  337368: 4618         	mov	r0, r3
  33736a: f275 feef    	bl	0x5ad14c <cocos2d::CCLayer::~CCLayer()> @ imm = #0x275dde
  33736e: 2300         	movs	r3, #0x0
  337370: 2b00         	cmp	r3, #0x0
  337372: d002         	beq	0x33737a <GameTypeLayer::~GameTypeLayer()+0xca> @ imm = #0x4
  337374: 9801         	ldr	r0, [sp, #0x4]
  337376: f050 f695    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x450d2a
  33737a: 9b01         	ldr	r3, [sp, #0x4]
  33737c: 4618         	mov	r0, r3
  33737e: b003         	add	sp, #0xc
  337380: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x337383); words below are literal-pool data ---
  337384: b750         	<unknown>
  337386: 005f         	lsls	r7, r3, #0x1
  337388: da84         	bge	0x337294 <GameTypeLayer::init()+0xda4> @ imm = #-0xf8
  33738a: ffff f1a0    	<unknown>

// ==== GameTypeLayer::~GameTypeLayer
//      file offset 0x33738c (= ELF address; Ghidra 0x34738c), 8 bytes, Thumb-2
  33738c: f1a0 00e4    	sub.w	r0, r0, #0xe4
  337390: f7ff bf8e    	b.w	0x3372b0 <GameTypeLayer::~GameTypeLayer()> @ imm = #-0xe4

// ==== GameTypeLayer::~GameTypeLayer
//      file offset 0x337394 (= ELF address; Ghidra 0x347394), 28 bytes, Thumb-2
  337394: b500         	push	{lr}
  337396: b083         	sub	sp, #0xc
  337398: 9001         	str	r0, [sp, #0x4]
  33739a: 9801         	ldr	r0, [sp, #0x4]
  33739c: f7ff ff88    	bl	0x3372b0 <GameTypeLayer::~GameTypeLayer()> @ imm = #-0xf0
  3373a0: 9801         	ldr	r0, [sp, #0x4]
  3373a2: f050 f67f    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x450cfe
  3373a6: 9b01         	ldr	r3, [sp, #0x4]
  3373a8: 4618         	mov	r0, r3
  3373aa: b003         	add	sp, #0xc
  3373ac: f85d fb04    	ldr	pc, [sp], #4

// ==== GameTypeLayer::~GameTypeLayer
//      file offset 0x3373b0 (= ELF address; Ghidra 0x3473b0), 8 bytes, Thumb-2
  3373b0: f1a0 00e4    	sub.w	r0, r0, #0xe4
  3373b4: f7ff bfee    	b.w	0x337394 <GameTypeLayer::~GameTypeLayer()> @ imm = #-0x24

// ==== GameTypeLayer::onExit
//      file offset 0x3373b8 (= ELF address; Ghidra 0x3473b8), 56 bytes, Thumb-2
  3373b8: b500         	push	{lr}
  3373ba: b085         	sub	sp, #0x14
  3373bc: 9001         	str	r0, [sp, #0x4]
  3373be: 490a         	ldr	r1, [pc, #0x28]         @ 0x3373e8 <GameTypeLayer::onExit()+0x30>
  3373c0: 4479         	add	r1, pc
  3373c2: 9b01         	ldr	r3, [sp, #0x4]
  3373c4: 4a09         	ldr	r2, [pc, #0x24]         @ 0x3373ec <GameTypeLayer::onExit()+0x34>
  3373c6: 588a         	ldr	r2, [r1, r2]
  3373c8: 9202         	str	r2, [sp, #0x8]
  3373ca: 2200         	movs	r2, #0x0
  3373cc: 9203         	str	r2, [sp, #0xc]
  3373ce: 4618         	mov	r0, r3
  3373d0: ab02         	add	r3, sp, #0x8
  3373d2: e893 0006    	ldm.w	r3, {r1, r2}
  3373d6: f259 ff73    	bl	0x5912c0 <cocos2d::CCNode::unschedule(void (cocos2d::CCObject::*)(float))> @ imm = #0x259ee6
  3373da: 9b01         	ldr	r3, [sp, #0x4]
  3373dc: 4618         	mov	r0, r3
  3373de: f276 fa7b    	bl	0x5ad8d8 <cocos2d::CCLayer::onExit()> @ imm = #0x2764f6
  3373e2: b005         	add	sp, #0x14
  3373e4: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3373e7); words below are literal-pool data ---
  3373e8: b648         	<unknown>
  3373ea: 005f         	lsls	r7, r3, #0x1
  3373ec: da9c         	bge	0x337328 <GameTypeLayer::~GameTypeLayer()+0x78> @ imm = #-0xc8
  3373ee: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== GameTypeLayer::onDM
//      file offset 0x3373f0 (= ELF address; Ghidra 0x3473f0), 148 bytes, Thumb-2
  3373f0: b530         	push	{r4, r5, lr}
  3373f2: b083         	sub	sp, #0xc
  3373f4: 9001         	str	r0, [sp, #0x4]
  3373f6: 9100         	str	r1, [sp]
  3373f8: 4c1c         	ldr	r4, [pc, #0x70]         @ 0x33746c <GameTypeLayer::onDM(cocos2d::CCObject*)+0x7c>
  3373fa: 447c         	add	r4, pc
  3373fc: 9b01         	ldr	r3, [sp, #0x4]
  3373fe: f893 3108    	ldrb.w	r3, [r3, #0x108]
  337402: 2b00         	cmp	r3, #0x0
  337404: d000         	beq	0x337408 <GameTypeLayer::onDM(cocos2d::CCObject*)+0x18> @ imm = #0x0
  337406: e02f         	b	0x337468 <GameTypeLayer::onDM(cocos2d::CCObject*)+0x78> @ imm = #0x5e
  337408: 9b01         	ldr	r3, [sp, #0x4]
  33740a: 2201         	movs	r2, #0x1
  33740c: f883 2108    	strb.w	r2, [r3, #0x108]
  337410: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x337470 <GameTypeLayer::onDM(cocos2d::CCObject*)+0x80>
  337412: 58e3         	ldr	r3, [r4, r3]
  337414: 2200         	movs	r2, #0x0
  337416: 701a         	strb	r2, [r3]
  337418: 4b16         	ldr	r3, [pc, #0x58]         @ 0x337474 <GameTypeLayer::onDM(cocos2d::CCObject*)+0x84>
  33741a: 58e3         	ldr	r3, [r4, r3]
  33741c: 681b         	ldr	r3, [r3]
  33741e: 4618         	mov	r0, r3
  337420: 210d         	movs	r1, #0xd
  337422: f0c0 fccd    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xc099a
  337426: f040 fb8b    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x40716
  33742a: 4603         	mov	r3, r0
  33742c: 4618         	mov	r0, r3
  33742e: 2104         	movs	r1, #0x4
  337430: f042 fc60    	bl	0x379cf4 <NetworkManager::setMaxPlayers(int)> @ imm = #0x428c0
  337434: 4b10         	ldr	r3, [pc, #0x40]         @ 0x337478 <GameTypeLayer::onDM(cocos2d::CCObject*)+0x88>
  337436: 58e3         	ldr	r3, [r4, r3]
  337438: 2204         	movs	r2, #0x4
  33743a: 601a         	str	r2, [r3]
  33743c: 4b0f         	ldr	r3, [pc, #0x3c]         @ 0x33747c <GameTypeLayer::onDM(cocos2d::CCObject*)+0x8c>
  33743e: 58e3         	ldr	r3, [r4, r3]
  337440: 2203         	movs	r2, #0x3
  337442: 601a         	str	r2, [r3]
  337444: f264 f896    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x26412c
  337448: 4604         	mov	r4, r0
  33744a: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x337480 <GameTypeLayer::onDM(cocos2d::CCObject*)+0x90>
  33744c: 447b         	add	r3, pc
  33744e: 681d         	ldr	r5, [r3]
  337450: f03a fca4    	bl	0x371d9c <MultiplayerGameLayer::scene()> @ imm = #0x3a948
  337454: 4603         	mov	r3, r0
  337456: 4628         	mov	r0, r5
  337458: 4619         	mov	r1, r3
  33745a: f27b fc13    	bl	0x5b2c84 <cocos2d::CCTransitionFade::create(float, cocos2d::CCScene*)> @ imm = #0x27b826
  33745e: 4603         	mov	r3, r0
  337460: 4620         	mov	r0, r4
  337462: 4619         	mov	r1, r3
  337464: f264 ff7a    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x264ef4
  337468: b003         	add	sp, #0xc
  33746a: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x33746b); words below are literal-pool data ---
  33746c: b60e         	<unknown>
  33746e: 005f         	lsls	r7, r3, #0x1
  337470: da58         	bge	0x337524 <GameTypeLayer::onLB(cocos2d::CCObject*)+0xc> @ imm = #0xb0
  337472: ffff d730    	vqshl.u32	d29, d16, #0x1f
  337476: ffff d838    	vqshrun.s64	d29, q12, #0x1
  33747a: ffff daa0    	vtbl.8	d29, {d31, fpinst2, mvfr0}, d16
  33747e: ffff bef0    	<unknown>
  337482: 005f         	lsls	r7, r3, #0x1

// ==== GameTypeLayer::onCoOp
//      file offset 0x337484 (= ELF address; Ghidra 0x347484), 148 bytes, Thumb-2
  337484: b530         	push	{r4, r5, lr}
  337486: b083         	sub	sp, #0xc
  337488: 9001         	str	r0, [sp, #0x4]
  33748a: 9100         	str	r1, [sp]
  33748c: 4c1c         	ldr	r4, [pc, #0x70]         @ 0x337500 <GameTypeLayer::onCoOp(cocos2d::CCObject*)+0x7c>
  33748e: 447c         	add	r4, pc
  337490: 9b01         	ldr	r3, [sp, #0x4]
  337492: f893 3108    	ldrb.w	r3, [r3, #0x108]
  337496: 2b00         	cmp	r3, #0x0
  337498: d000         	beq	0x33749c <GameTypeLayer::onCoOp(cocos2d::CCObject*)+0x18> @ imm = #0x0
  33749a: e02f         	b	0x3374fc <GameTypeLayer::onCoOp(cocos2d::CCObject*)+0x78> @ imm = #0x5e
  33749c: 9b01         	ldr	r3, [sp, #0x4]
  33749e: 2201         	movs	r2, #0x1
  3374a0: f883 2108    	strb.w	r2, [r3, #0x108]
  3374a4: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x337504 <GameTypeLayer::onCoOp(cocos2d::CCObject*)+0x80>
  3374a6: 58e3         	ldr	r3, [r4, r3]
  3374a8: 2200         	movs	r2, #0x0
  3374aa: 701a         	strb	r2, [r3]
  3374ac: f040 fb48    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x40690
  3374b0: 4603         	mov	r3, r0
  3374b2: 4618         	mov	r0, r3
  3374b4: 2102         	movs	r1, #0x2
  3374b6: f042 fc1d    	bl	0x379cf4 <NetworkManager::setMaxPlayers(int)> @ imm = #0x4283a
  3374ba: 4b13         	ldr	r3, [pc, #0x4c]         @ 0x337508 <GameTypeLayer::onCoOp(cocos2d::CCObject*)+0x84>
  3374bc: 58e3         	ldr	r3, [r4, r3]
  3374be: 681b         	ldr	r3, [r3]
  3374c0: 4618         	mov	r0, r3
  3374c2: 210d         	movs	r1, #0xd
  3374c4: f0c0 fc7c    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xc08f8
  3374c8: 4b10         	ldr	r3, [pc, #0x40]         @ 0x33750c <GameTypeLayer::onCoOp(cocos2d::CCObject*)+0x88>
  3374ca: 58e3         	ldr	r3, [r4, r3]
  3374cc: 2202         	movs	r2, #0x2
  3374ce: 601a         	str	r2, [r3]
  3374d0: 4b0f         	ldr	r3, [pc, #0x3c]         @ 0x337510 <GameTypeLayer::onCoOp(cocos2d::CCObject*)+0x8c>
  3374d2: 58e3         	ldr	r3, [r4, r3]
  3374d4: 2202         	movs	r2, #0x2
  3374d6: 601a         	str	r2, [r3]
  3374d8: f264 f84c    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x264098
  3374dc: 4604         	mov	r4, r0
  3374de: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x337514 <GameTypeLayer::onCoOp(cocos2d::CCObject*)+0x90>
  3374e0: 447b         	add	r3, pc
  3374e2: 681d         	ldr	r5, [r3]
  3374e4: f03a fc5a    	bl	0x371d9c <MultiplayerGameLayer::scene()> @ imm = #0x3a8b4
  3374e8: 4603         	mov	r3, r0
  3374ea: 4628         	mov	r0, r5
  3374ec: 4619         	mov	r1, r3
  3374ee: f279 ff9b    	bl	0x5b1428 <cocos2d::CCTransitionSlideInR::create(float, cocos2d::CCScene*)> @ imm = #0x279f36
  3374f2: 4603         	mov	r3, r0
  3374f4: 4620         	mov	r0, r4
  3374f6: 4619         	mov	r1, r3
  3374f8: f264 ff30    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x264e60
  3374fc: b003         	add	sp, #0xc
  3374fe: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3374ff); words below are literal-pool data ---
  337500: b57a         	push	{r1, r3, r4, r5, r6, lr}
  337502: 005f         	lsls	r7, r3, #0x1
  337504: da58         	bge	0x3375b8 <GameTypeLayer::onLB(cocos2d::CCObject*)+0xa0> @ imm = #0xb0
  337506: ffff d730    	vqshl.u32	d29, d16, #0x1f
  33750a: ffff d838    	vqshrun.s64	d29, q12, #0x1
  33750e: ffff daa0    	vtbl.8	d29, {d31, fpinst2, mvfr0}, d16
  337512: ffff be5c    	<unknown>
  337516: 005f         	lsls	r7, r3, #0x1

// ==== GameTypeLayer::onLB
//      file offset 0x337518 (= ELF address; Ghidra 0x347518), 568 bytes, Thumb-2
  337518: b500         	push	{lr}
  33751a: b08b         	sub	sp, #0x2c
  33751c: 9003         	str	r0, [sp, #0xc]
  33751e: 9102         	str	r1, [sp, #0x8]
  337520: 4a83         	ldr	r2, [pc, #0x20c]        @ 0x337730 <GameTypeLayer::onLB(cocos2d::CCObject*)+0x218>
  337522: 447a         	add	r2, pc
  337524: 4b83         	ldr	r3, [pc, #0x20c]        @ 0x337734 <GameTypeLayer::onLB(cocos2d::CCObject*)+0x21c>
  337526: 58d3         	ldr	r3, [r2, r3]
  337528: 681b         	ldr	r3, [r3]
  33752a: 4618         	mov	r0, r3
  33752c: 210d         	movs	r1, #0xd
  33752e: f0c0 fc47    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xc088e
  337532: f7fb fa73    	bl	0x332a1c <GPGSStateManager::IsAuthorized()> @ imm = #-0x4b1a
  337536: 4603         	mov	r3, r0
  337538: f083 0301    	eor	r3, r3, #0x1
  33753c: b2db         	uxtb	r3, r3
  33753e: 2b00         	cmp	r3, #0x0
  337540: d052         	beq	0x3375e8 <GameTypeLayer::onLB(cocos2d::CCObject*)+0xd0> @ imm = #0xa4
  337542: ab05         	add	r3, sp, #0x14
  337544: 4618         	mov	r0, r3
  337546: f052 f755    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x452eaa
  33754a: aa08         	add	r2, sp, #0x20
  33754c: ab05         	add	r3, sp, #0x14
  33754e: 4610         	mov	r0, r2
  337550: 4a79         	ldr	r2, [pc, #0x1e4]        @ 0x337738 <GameTypeLayer::onLB(cocos2d::CCObject*)+0x220>
  337552: 447a         	add	r2, pc
  337554: 4611         	mov	r1, r2
  337556: 461a         	mov	r2, r3
  337558: f07f f282    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x47f504
  33755c: ab06         	add	r3, sp, #0x18
  33755e: 4618         	mov	r0, r3
  337560: f052 f748    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x452e90
  337564: aa09         	add	r2, sp, #0x24
  337566: ab06         	add	r3, sp, #0x18
  337568: 4610         	mov	r0, r2
  33756a: 4a74         	ldr	r2, [pc, #0x1d0]        @ 0x33773c <GameTypeLayer::onLB(cocos2d::CCObject*)+0x224>
  33756c: 447a         	add	r2, pc
  33756e: 4611         	mov	r1, r2
  337570: 461a         	mov	r2, r3
  337572: f07f f275    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x47f4ea
  337576: ab04         	add	r3, sp, #0x10
  337578: 4618         	mov	r0, r3
  33757a: f052 f73b    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x452e76
  33757e: aa07         	add	r2, sp, #0x1c
  337580: ab04         	add	r3, sp, #0x10
  337582: 4610         	mov	r0, r2
  337584: 4a6e         	ldr	r2, [pc, #0x1b8]        @ 0x337740 <GameTypeLayer::onLB(cocos2d::CCObject*)+0x228>
  337586: 447a         	add	r2, pc
  337588: 4611         	mov	r1, r2
  33758a: 461a         	mov	r2, r3
  33758c: f07f f268    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x47f4d0
  337590: ab07         	add	r3, sp, #0x1c
  337592: 4618         	mov	r0, r3
  337594: f262 fa52    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2624a4
  337598: 4603         	mov	r3, r0
  33759a: 4618         	mov	r0, r3
  33759c: 2100         	movs	r1, #0x0
  33759e: f262 fc37    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x26286e
  3375a2: 4603         	mov	r3, r0
  3375a4: a908         	add	r1, sp, #0x20
  3375a6: aa09         	add	r2, sp, #0x24
  3375a8: 2000         	movs	r0, #0x0
  3375aa: 9000         	str	r0, [sp]
  3375ac: 2000         	movs	r0, #0x0
  3375ae: 9001         	str	r0, [sp, #0x4]
  3375b0: 2000         	movs	r0, #0x0
  3375b2: f7a8 f91f    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0x57dc2
  3375b6: ab07         	add	r3, sp, #0x1c
  3375b8: 4618         	mov	r0, r3
  3375ba: f07e f1ab    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47e356
  3375be: ab04         	add	r3, sp, #0x10
  3375c0: 4618         	mov	r0, r3
  3375c2: f052 f71b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x452e36
  3375c6: ab09         	add	r3, sp, #0x24
  3375c8: 4618         	mov	r0, r3
  3375ca: f07e f1a3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47e346
  3375ce: ab06         	add	r3, sp, #0x18
  3375d0: 4618         	mov	r0, r3
  3375d2: f052 f713    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x452e26
  3375d6: ab08         	add	r3, sp, #0x20
  3375d8: 4618         	mov	r0, r3
  3375da: f07e f19b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47e336
  3375de: ab05         	add	r3, sp, #0x14
  3375e0: 4618         	mov	r0, r3
  3375e2: f052 f70b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x452e16
  3375e6: e0a0         	b	0x33772a <GameTypeLayer::onLB(cocos2d::CCObject*)+0x212> @ imm = #0x140
  3375e8: f040 faaa    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x40554
  3375ec: 4603         	mov	r3, r0
  3375ee: 4618         	mov	r0, r3
  3375f0: f0fc fb5e    	bl	0x433cb0 <NetworkManagerBridge::isInternetReachable()> @ imm = #0xfc6bc
  3375f4: 4603         	mov	r3, r0
  3375f6: f083 0301    	eor	r3, r3, #0x1
  3375fa: b2db         	uxtb	r3, r3
  3375fc: 2b00         	cmp	r3, #0x0
  3375fe: d052         	beq	0x3376a6 <GameTypeLayer::onLB(cocos2d::CCObject*)+0x18e> @ imm = #0xa4
  337600: ab05         	add	r3, sp, #0x14
  337602: 4618         	mov	r0, r3
  337604: f052 f6f6    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x452dec
  337608: aa08         	add	r2, sp, #0x20
  33760a: ab05         	add	r3, sp, #0x14
  33760c: 4610         	mov	r0, r2
  33760e: 4a4d         	ldr	r2, [pc, #0x134]        @ 0x337744 <GameTypeLayer::onLB(cocos2d::CCObject*)+0x22c>
  337610: 447a         	add	r2, pc
  337612: 4611         	mov	r1, r2
  337614: 461a         	mov	r2, r3
  337616: f07f f223    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x47f446
  33761a: ab06         	add	r3, sp, #0x18
  33761c: 4618         	mov	r0, r3
  33761e: f052 f6e9    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x452dd2
  337622: aa09         	add	r2, sp, #0x24
  337624: ab06         	add	r3, sp, #0x18
  337626: 4610         	mov	r0, r2
  337628: 4a47         	ldr	r2, [pc, #0x11c]        @ 0x337748 <GameTypeLayer::onLB(cocos2d::CCObject*)+0x230>
  33762a: 447a         	add	r2, pc
  33762c: 4611         	mov	r1, r2
  33762e: 461a         	mov	r2, r3
  337630: f07f f216    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x47f42c
  337634: ab04         	add	r3, sp, #0x10
  337636: 4618         	mov	r0, r3
  337638: f052 f6dc    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x452db8
  33763c: aa07         	add	r2, sp, #0x1c
  33763e: ab04         	add	r3, sp, #0x10
  337640: 4610         	mov	r0, r2
  337642: 4a42         	ldr	r2, [pc, #0x108]        @ 0x33774c <GameTypeLayer::onLB(cocos2d::CCObject*)+0x234>
  337644: 447a         	add	r2, pc
  337646: 4611         	mov	r1, r2
  337648: 461a         	mov	r2, r3
  33764a: f07f f209    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x47f412
  33764e: ab07         	add	r3, sp, #0x1c
  337650: 4618         	mov	r0, r3
  337652: f262 f9f3    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2623e6
  337656: 4603         	mov	r3, r0
  337658: 4618         	mov	r0, r3
  33765a: 2100         	movs	r1, #0x0
  33765c: f262 fbd8    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x2627b0
  337660: 4603         	mov	r3, r0
  337662: a908         	add	r1, sp, #0x20
  337664: aa09         	add	r2, sp, #0x24
  337666: 2000         	movs	r0, #0x0
  337668: 9000         	str	r0, [sp]
  33766a: 2000         	movs	r0, #0x0
  33766c: 9001         	str	r0, [sp, #0x4]
  33766e: 2000         	movs	r0, #0x0
  337670: f7a8 f8c0    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0x57e80
  337674: ab07         	add	r3, sp, #0x1c
  337676: 4618         	mov	r0, r3
  337678: f07e f14c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47e298
  33767c: ab04         	add	r3, sp, #0x10
  33767e: 4618         	mov	r0, r3
  337680: f052 f6bc    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x452d78
  337684: ab09         	add	r3, sp, #0x24
  337686: 4618         	mov	r0, r3
  337688: f07e f144    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47e288
  33768c: ab06         	add	r3, sp, #0x18
  33768e: 4618         	mov	r0, r3
  337690: f052 f6b4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x452d68
  337694: ab08         	add	r3, sp, #0x20
  337696: 4618         	mov	r0, r3
  337698: f07e f13c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47e278
  33769c: ab05         	add	r3, sp, #0x14
  33769e: 4618         	mov	r0, r3
  3376a0: f052 f6ac    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x452d58
  3376a4: e041         	b	0x33772a <GameTypeLayer::onLB(cocos2d::CCObject*)+0x212> @ imm = #0x82
  3376a6: f0ed fd07    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #0xeda0e
  3376aa: 4603         	mov	r3, r0
  3376ac: 4618         	mov	r0, r3
  3376ae: 2102         	movs	r1, #0x2
  3376b0: f0fc f86a    	bl	0x433788 <LeaderBoardBridge::showLeaderboard(ELeaderboardType)> @ imm = #0xfc0d4
  3376b4: e039         	b	0x33772a <GameTypeLayer::onLB(cocos2d::CCObject*)+0x212> @ imm = #0x72
  3376b6: ab07         	add	r3, sp, #0x1c
  3376b8: 4618         	mov	r0, r3
  3376ba: f07e f12b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47e256
  3376be: e7ff         	b	0x3376c0 <GameTypeLayer::onLB(cocos2d::CCObject*)+0x1a8> @ imm = #-0x2
  3376c0: ab04         	add	r3, sp, #0x10
  3376c2: 4618         	mov	r0, r3
  3376c4: f052 f69a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x452d34
  3376c8: ab09         	add	r3, sp, #0x24
  3376ca: 4618         	mov	r0, r3
  3376cc: f07e f122    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47e244
  3376d0: e7ff         	b	0x3376d2 <GameTypeLayer::onLB(cocos2d::CCObject*)+0x1ba> @ imm = #-0x2
  3376d2: ab06         	add	r3, sp, #0x18
  3376d4: 4618         	mov	r0, r3
  3376d6: f052 f691    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x452d22
  3376da: ab08         	add	r3, sp, #0x20
  3376dc: 4618         	mov	r0, r3
  3376de: f07e f119    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47e232
  3376e2: e7ff         	b	0x3376e4 <GameTypeLayer::onLB(cocos2d::CCObject*)+0x1cc> @ imm = #-0x2
  3376e4: ab05         	add	r3, sp, #0x14
  3376e6: 4618         	mov	r0, r3
  3376e8: f052 f688    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x452d10
  3376ec: f050 f4de    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4509bc
  3376f0: ab07         	add	r3, sp, #0x1c
  3376f2: 4618         	mov	r0, r3
  3376f4: f07e f10e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47e21c
  3376f8: e7ff         	b	0x3376fa <GameTypeLayer::onLB(cocos2d::CCObject*)+0x1e2> @ imm = #-0x2
  3376fa: ab04         	add	r3, sp, #0x10
  3376fc: 4618         	mov	r0, r3
  3376fe: f052 f67d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x452cfa
  337702: ab09         	add	r3, sp, #0x24
  337704: 4618         	mov	r0, r3
  337706: f07e f105    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47e20a
  33770a: e7ff         	b	0x33770c <GameTypeLayer::onLB(cocos2d::CCObject*)+0x1f4> @ imm = #-0x2
  33770c: ab06         	add	r3, sp, #0x18
  33770e: 4618         	mov	r0, r3
  337710: f052 f674    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x452ce8
  337714: ab08         	add	r3, sp, #0x20
  337716: 4618         	mov	r0, r3
  337718: f07e f0fc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47e1f8
  33771c: e7ff         	b	0x33771e <GameTypeLayer::onLB(cocos2d::CCObject*)+0x206> @ imm = #-0x2
  33771e: ab05         	add	r3, sp, #0x14
  337720: 4618         	mov	r0, r3
  337722: f052 f66b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x452cd6
  337726: f050 f4c1    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x450982
  33772a: b00b         	add	sp, #0x2c
  33772c: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x33772f); words below are literal-pool data ---
  337730: b4e6         	push	{r1, r2, r5, r6, r7}
  337732: 005f         	lsls	r7, r3, #0x1
  337734: d730         	bvc	0x337798 <GameTypeLayer::onBack(cocos2d::CCObject*)+0x48> @ imm = #0x60
  337736: ffff 1d16    	<unknown>
  33773a: 0049         	lsls	r1, r1, #0x1
  33773c: 1d0c         	adds	r4, r1, #0x4
  33773e: 0049         	lsls	r1, r1, #0x1
  337740: 1d26         	adds	r6, r4, #0x4
  337742: 0049         	lsls	r1, r1, #0x1
  337744: 1ca0         	adds	r0, r4, #0x2
  337746: 0049         	lsls	r1, r1, #0x1
  337748: 1c9e         	adds	r6, r3, #0x2
  33774a: 0049         	lsls	r1, r1, #0x1
  33774c: 1c68         	adds	r0, r5, #0x1
  33774e: 0049         	lsls	r1, r1, #0x1

// ==== GameTypeLayer::onBack
//      file offset 0x337750 (= ELF address; Ghidra 0x347750), 100 bytes, Thumb-2
  337750: b530         	push	{r4, r5, lr}
  337752: b083         	sub	sp, #0xc
  337754: 9001         	str	r0, [sp, #0x4]
  337756: 9100         	str	r1, [sp]
  337758: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x3377a8 <GameTypeLayer::onBack(cocos2d::CCObject*)+0x58>
  33775a: 447a         	add	r2, pc
  33775c: 9b01         	ldr	r3, [sp, #0x4]
  33775e: f893 3108    	ldrb.w	r3, [r3, #0x108]
  337762: 2b00         	cmp	r3, #0x0
  337764: d000         	beq	0x337768 <GameTypeLayer::onBack(cocos2d::CCObject*)+0x18> @ imm = #0x0
  337766: e01c         	b	0x3377a2 <GameTypeLayer::onBack(cocos2d::CCObject*)+0x52> @ imm = #0x38
  337768: 9b01         	ldr	r3, [sp, #0x4]
  33776a: 2101         	movs	r1, #0x1
  33776c: f883 1108    	strb.w	r1, [r3, #0x108]
  337770: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x3377ac <GameTypeLayer::onBack(cocos2d::CCObject*)+0x5c>
  337772: 58d3         	ldr	r3, [r2, r3]
  337774: 681b         	ldr	r3, [r3]
  337776: 4618         	mov	r0, r3
  337778: 210d         	movs	r1, #0xd
  33777a: f0c0 fb21    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xc0642
  33777e: f263 fef9    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x263df2
  337782: 4604         	mov	r4, r0
  337784: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x3377b0 <GameTypeLayer::onBack(cocos2d::CCObject*)+0x60>
  337786: 447b         	add	r3, pc
  337788: 681d         	ldr	r5, [r3]
  33778a: f032 f9a3    	bl	0x369ad4 <MenuLayer::scene()> @ imm = #0x32346
  33778e: 4603         	mov	r3, r0
  337790: 4628         	mov	r0, r5
  337792: 4619         	mov	r1, r3
  337794: f279 fdb8    	bl	0x5b1308 <cocos2d::CCTransitionSlideInL::create(float, cocos2d::CCScene*)> @ imm = #0x279b70
  337798: 4603         	mov	r3, r0
  33779a: 4620         	mov	r0, r4
  33779c: 4619         	mov	r1, r3
  33779e: f264 fddd    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x264bba
  3377a2: b003         	add	sp, #0xc
  3377a4: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3377a5); words below are literal-pool data ---
  3377a6: bf00         	nop
  3377a8: b2ae         	uxth	r6, r5
  3377aa: 005f         	lsls	r7, r3, #0x1
  3377ac: d730         	bvc	0x337810 <GameTypeLayer::onStartedMatchFromMMVC()+0x30> @ imm = #0x60
  3377ae: ffff bbb6    	<unknown>
  3377b2: 005f         	lsls	r7, r3, #0x1

// ==== GameTypeLayer::onDA
//      file offset 0x3377b4 (= ELF address; Ghidra 0x3477b4), 44 bytes, Thumb-2
  3377b4: b500         	push	{lr}
  3377b6: b083         	sub	sp, #0xc
  3377b8: 9001         	str	r0, [sp, #0x4]
  3377ba: 9100         	str	r1, [sp]
  3377bc: 4a06         	ldr	r2, [pc, #0x18]         @ 0x3377d8 <GameTypeLayer::onDA(cocos2d::CCObject*)+0x24>
  3377be: 447a         	add	r2, pc
  3377c0: 4b06         	ldr	r3, [pc, #0x18]         @ 0x3377dc <GameTypeLayer::onDA(cocos2d::CCObject*)+0x28>
  3377c2: 58d3         	ldr	r3, [r2, r3]
  3377c4: 681b         	ldr	r3, [r3]
  3377c6: 4618         	mov	r0, r3
  3377c8: 210d         	movs	r1, #0xd
  3377ca: f0c0 faf9    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xc05f2
  3377ce: f0f4 fe11    	bl	0x42c3f4 <ApplicationInterface::openDoodleArmyAppLink()> @ imm = #0xf4c22
  3377d2: b003         	add	sp, #0xc
  3377d4: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3377d7); words below are literal-pool data ---
  3377d8: b24a         	sxtb	r2, r1
  3377da: 005f         	lsls	r7, r3, #0x1
  3377dc: d730         	bvc	0x337840 <GameTypeLayer::onStartedMatchFromMMVC()+0x60> @ imm = #0x60
  3377de: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== GameTypeLayer::onStartedMatchFromMMVC
//      file offset 0x3377e0 (= ELF address; Ghidra 0x3477e0), 112 bytes, Thumb-2
  3377e0: b530         	push	{r4, r5, lr}
  3377e2: b083         	sub	sp, #0xc
  3377e4: 9001         	str	r0, [sp, #0x4]
  3377e6: 4b14         	ldr	r3, [pc, #0x50]         @ 0x337838 <GameTypeLayer::onStartedMatchFromMMVC()+0x58>
  3377e8: 447b         	add	r3, pc
  3377ea: 4a14         	ldr	r2, [pc, #0x50]         @ 0x33783c <GameTypeLayer::onStartedMatchFromMMVC()+0x5c>
  3377ec: 589a         	ldr	r2, [r3, r2]
  3377ee: 2100         	movs	r1, #0x0
  3377f0: 7011         	strb	r1, [r2]
  3377f2: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x337840 <GameTypeLayer::onStartedMatchFromMMVC()+0x60>
  3377f4: 589a         	ldr	r2, [r3, r2]
  3377f6: 2104         	movs	r1, #0x4
  3377f8: 6011         	str	r1, [r2]
  3377fa: 4a12         	ldr	r2, [pc, #0x48]         @ 0x337844 <GameTypeLayer::onStartedMatchFromMMVC()+0x64>
  3377fc: 589a         	ldr	r2, [r3, r2]
  3377fe: 2103         	movs	r1, #0x3
  337800: 6011         	str	r1, [r2]
  337802: 4a11         	ldr	r2, [pc, #0x44]         @ 0x337848 <GameTypeLayer::onStartedMatchFromMMVC()+0x68>
  337804: 589b         	ldr	r3, [r3, r2]
  337806: 681b         	ldr	r3, [r3]
  337808: 4618         	mov	r0, r3
  33780a: 210d         	movs	r1, #0xd
  33780c: f0c0 fad8    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xc05b0
  337810: f263 feb0    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x263d60
  337814: 4604         	mov	r4, r0
  337816: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x33784c <GameTypeLayer::onStartedMatchFromMMVC()+0x6c>
  337818: 447b         	add	r3, pc
  33781a: 681d         	ldr	r5, [r3]
  33781c: f019 fed6    	bl	0x3515cc <LobbyLayer::scene()> @ imm = #0x19dac
  337820: 4603         	mov	r3, r0
  337822: 4628         	mov	r0, r5
  337824: 4619         	mov	r1, r3
  337826: f27b fa2d    	bl	0x5b2c84 <cocos2d::CCTransitionFade::create(float, cocos2d::CCScene*)> @ imm = #0x27b45a
  33782a: 4603         	mov	r3, r0
  33782c: 4620         	mov	r0, r4
  33782e: 4619         	mov	r1, r3
  337830: f264 fd94    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x264b28
  337834: b003         	add	sp, #0xc
  337836: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x337837); words below are literal-pool data ---
  337838: b220         	sxth	r0, r4
  33783a: 005f         	lsls	r7, r3, #0x1
  33783c: da58         	bge	0x3378f0 <GameTypeLayer::inviteCheck(float)+0xa0> @ imm = #0xb0
  33783e: ffff d838    	vqshrun.s64	d29, q12, #0x1
  337842: ffff daa0    	vtbl.8	d29, {d31, fpinst2, mvfr0}, d16
  337846: ffff d730    	vqshl.u32	d29, d16, #0x1f
  33784a: ffff bb24    	vtbl.8	d27, {d15, d16, d17, d18}, d20
  33784e: 005f         	lsls	r7, r3, #0x1

// ==== GameTypeLayer::inviteCheck
//      file offset 0x337850 (= ELF address; Ghidra 0x347850), 52 bytes, Thumb-2
  337850: b500         	push	{lr}
  337852: b083         	sub	sp, #0xc
  337854: 9001         	str	r0, [sp, #0x4]
  337856: 9100         	str	r1, [sp]
  337858: f040 f972    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x402e4
  33785c: 4603         	mov	r3, r0
  33785e: 4618         	mov	r0, r3
  337860: f042 ff68    	bl	0x37a734 <NetworkManager::getWasInvited()> @ imm = #0x42ed0
  337864: 4603         	mov	r3, r0
  337866: 2b00         	cmp	r3, #0x0
  337868: d009         	beq	0x33787e <GameTypeLayer::inviteCheck(float)+0x2e> @ imm = #0x12
  33786a: f040 f969    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x402d2
  33786e: 4603         	mov	r3, r0
  337870: 4618         	mov	r0, r3
  337872: 2100         	movs	r1, #0x0
  337874: f042 ff66    	bl	0x37a744 <NetworkManager::setWasInvited(bool)> @ imm = #0x42ecc
  337878: 9801         	ldr	r0, [sp, #0x4]
  33787a: f7ff ffb1    	bl	0x3377e0 <GameTypeLayer::onStartedMatchFromMMVC()> @ imm = #-0x9e
  33787e: b003         	add	sp, #0xc
  337880: f85d fb04    	ldr	pc, [sp], #4
