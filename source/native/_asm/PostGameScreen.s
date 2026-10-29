// PostGameScreen: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 13 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../PostGameScreen.cpp

// ==== PostGameScreen::create
//      file offset 0x397df4 (= ELF address; Ghidra 0x3a7df4), 112 bytes, Thumb-2
  397df4: b510         	push	{r4, lr}
  397df6: b082         	sub	sp, #0x8
  397df8: f44f 7092    	mov.w	r0, #0x124
  397dfc: f3ef fdb2    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x3efb64
  397e00: 4603         	mov	r3, r0
  397e02: 461c         	mov	r4, r3
  397e04: 4620         	mov	r0, r4
  397e06: f016 fbb1    	bl	0x3ae56c <PostGameScreen::PostGameScreen()> @ imm = #0x16762
  397e0a: 9401         	str	r4, [sp, #0x4]
  397e0c: 9b01         	ldr	r3, [sp, #0x4]
  397e0e: 2b00         	cmp	r3, #0x0
  397e10: d00a         	beq	0x397e28 <PostGameScreen::create()+0x34> @ imm = #0x14
  397e12: 9b01         	ldr	r3, [sp, #0x4]
  397e14: 681b         	ldr	r3, [r3]
  397e16: 3318         	adds	r3, #0x18
  397e18: 681b         	ldr	r3, [r3]
  397e1a: 9801         	ldr	r0, [sp, #0x4]
  397e1c: 4798         	blx	r3
  397e1e: 4603         	mov	r3, r0
  397e20: 2b00         	cmp	r3, #0x0
  397e22: d001         	beq	0x397e28 <PostGameScreen::create()+0x34> @ imm = #0x2
  397e24: 2301         	movs	r3, #0x1
  397e26: e000         	b	0x397e2a <PostGameScreen::create()+0x36> @ imm = #0x0
  397e28: 2300         	movs	r3, #0x0
  397e2a: 2b00         	cmp	r3, #0x0
  397e2c: d005         	beq	0x397e3a <PostGameScreen::create()+0x46> @ imm = #0xa
  397e2e: 9b01         	ldr	r3, [sp, #0x4]
  397e30: 4618         	mov	r0, r3
  397e32: f200 f863    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x2000c6
  397e36: 9b01         	ldr	r3, [sp, #0x4]
  397e38: e011         	b	0x397e5e <PostGameScreen::create()+0x6a> @ imm = #0x22
  397e3a: 9b01         	ldr	r3, [sp, #0x4]
  397e3c: 2b00         	cmp	r3, #0x0
  397e3e: d005         	beq	0x397e4c <PostGameScreen::create()+0x58> @ imm = #0xa
  397e40: 9b01         	ldr	r3, [sp, #0x4]
  397e42: 681b         	ldr	r3, [r3]
  397e44: 3308         	adds	r3, #0x8
  397e46: 681b         	ldr	r3, [r3]
  397e48: 9801         	ldr	r0, [sp, #0x4]
  397e4a: 4798         	blx	r3
  397e4c: 2300         	movs	r3, #0x0
  397e4e: 9301         	str	r3, [sp, #0x4]
  397e50: 2300         	movs	r3, #0x0
  397e52: e004         	b	0x397e5e <PostGameScreen::create()+0x6a> @ imm = #0x8
  397e54: 4620         	mov	r0, r4
  397e56: f3f0 f925    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3f024a
  397e5a: f3f0 f927    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3f024e
  397e5e: 4618         	mov	r0, r3
  397e60: b002         	add	sp, #0x8
  397e62: bd10         	pop	{r4, pc}

// ==== PostGameScreen::PostGameScreen
//      file offset 0x3ae56c (= ELF address; Ghidra 0x3be56c), 44 bytes, Thumb-2
  3ae56c: b510         	push	{r4, lr}
  3ae56e: b082         	sub	sp, #0x8
  3ae570: 9001         	str	r0, [sp, #0x4]
  3ae572: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x3ae590 <PostGameScreen::PostGameScreen()+0x24>
  3ae574: 447c         	add	r4, pc
  3ae576: 9b01         	ldr	r3, [sp, #0x4]
  3ae578: 4618         	mov	r0, r3
  3ae57a: f1e1 f85d    	bl	0x58f638 <cocos2d::CCNode::CCNode()> @ imm = #0x1e10ba
  3ae57e: 9b01         	ldr	r3, [sp, #0x4]
  3ae580: 4a04         	ldr	r2, [pc, #0x10]         @ 0x3ae594 <PostGameScreen::PostGameScreen()+0x28>
  3ae582: 58a2         	ldr	r2, [r4, r2]
  3ae584: 3208         	adds	r2, #0x8
  3ae586: 601a         	str	r2, [r3]
  3ae588: 9b01         	ldr	r3, [sp, #0x4]
  3ae58a: 4618         	mov	r0, r3
  3ae58c: b002         	add	sp, #0x8
  3ae58e: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3ae58f); words below are literal-pool data ---
  3ae590: 4494         	add	r12, r2
  3ae592: 0058         	lsls	r0, r3, #0x1
  3ae594: dde8         	ble	0x3ae568 <ScoreList::create()+0x6c> @ imm = #-0x30
  3ae596: ffff b5f0    	<unknown>

// ==== PostGameScreen::init
//      file offset 0x3ae598 (= ELF address; Ghidra 0x3be598), 3868 bytes, Thumb-2
  3ae598: b5f0         	push	{r4, r5, r6, r7, lr}
  3ae59a: b097         	sub	sp, #0x5c
  3ae59c: 9003         	str	r0, [sp, #0xc]
  3ae59e: 4c09         	ldr	r4, [pc, #0x24]         @ 0x3ae5c4 <PostGameScreen::init()+0x2c>
  3ae5a0: 447c         	add	r4, pc
  3ae5a2: 9b03         	ldr	r3, [sp, #0xc]
  3ae5a4: 4618         	mov	r0, r3
  3ae5a6: f1e1 fa51    	bl	0x58fa4c <cocos2d::CCNode::init()> @ imm = #0x1e14a2
  3ae5aa: 4603         	mov	r3, r0
  3ae5ac: f88d 3017    	strb.w	r3, [sp, #0x17]
  3ae5b0: f89d 3017    	ldrb.w	r3, [sp, #0x17]
  3ae5b4: f083 0301    	eor	r3, r3, #0x1
  3ae5b8: b2db         	uxtb	r3, r3
  3ae5ba: 2b00         	cmp	r3, #0x0
  3ae5bc: d004         	beq	0x3ae5c8 <PostGameScreen::init()+0x30> @ imm = #0x8
  3ae5be: 2300         	movs	r3, #0x0
  3ae5c0: f000 bf46    	b.w	0x3af450 <PostGameScreen::init()+0xeb8> @ imm = #0xe8c
  3ae5c4: 4468         	add	r0, sp, r0
  3ae5c6: 0058         	lsls	r0, r3, #0x1
  3ae5c8: 4bec         	ldr	r3, [pc, #0x3b0]        @ 0x3ae97c <PostGameScreen::init()+0x3e4>
  3ae5ca: 447b         	add	r3, pc
  3ae5cc: 4618         	mov	r0, r3
  3ae5ce: f229 fdd9    	bl	0x5d8184 <cocos2d::CCSprite::create(char const*)> @ imm = #0x229bb2
  3ae5d2: 4603         	mov	r3, r0
  3ae5d4: 9308         	str	r3, [sp, #0x20]
  3ae5d6: 9b08         	ldr	r3, [sp, #0x20]
  3ae5d8: 681b         	ldr	r3, [r3]
  3ae5da: f503 73d2    	add.w	r3, r3, #0x1a4
  3ae5de: 681b         	ldr	r3, [r3]
  3ae5e0: 9808         	ldr	r0, [sp, #0x20]
  3ae5e2: 21dc         	movs	r1, #0xdc
  3ae5e4: 4798         	blx	r3
  3ae5e6: 9b08         	ldr	r3, [sp, #0x20]
  3ae5e8: 681b         	ldr	r3, [r3]
  3ae5ea: f503 73de    	add.w	r3, r3, #0x1bc
  3ae5ee: 681d         	ldr	r5, [r3]
  3ae5f0: 2000         	movs	r0, #0x0
  3ae5f2: 2100         	movs	r1, #0x0
  3ae5f4: 2200         	movs	r2, #0x0
  3ae5f6: f7ff f885    	bl	0x3ad704 <PointsLayer::onBack(cocos2d::CCObject*)+0x194> @ imm = #-0xef6
  3ae5fa: 4603         	mov	r3, r0
  3ae5fc: 461a         	mov	r2, r3
  3ae5fe: f88d 2050    	strb.w	r2, [sp, #0x50]
  3ae602: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3ae606: f88d 2051    	strb.w	r2, [sp, #0x51]
  3ae60a: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3ae60e: f88d 3052    	strb.w	r3, [sp, #0x52]
  3ae612: ab14         	add	r3, sp, #0x50
  3ae614: 9808         	ldr	r0, [sp, #0x20]
  3ae616: 4619         	mov	r1, r3
  3ae618: 47a8         	blx	r5
  3ae61a: 9b08         	ldr	r3, [sp, #0x20]
  3ae61c: 681b         	ldr	r3, [r3]
  3ae61e: 337c         	adds	r3, #0x7c
  3ae620: 681d         	ldr	r5, [r3]
  3ae622: ab14         	add	r3, sp, #0x50
  3ae624: 4618         	mov	r0, r3
  3ae626: f04f 517c    	mov.w	r1, #0x3f000000
  3ae62a: f04f 527c    	mov.w	r2, #0x3f000000
  3ae62e: f1e4 fb5f    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e46be
  3ae632: ab14         	add	r3, sp, #0x50
  3ae634: 9808         	ldr	r0, [sp, #0x20]
  3ae636: 4619         	mov	r1, r3
  3ae638: 47a8         	blx	r5
  3ae63a: 9b03         	ldr	r3, [sp, #0xc]
  3ae63c: 681b         	ldr	r3, [r3]
  3ae63e: 33c8         	adds	r3, #0xc8
  3ae640: 681b         	ldr	r3, [r3]
  3ae642: 9a03         	ldr	r2, [sp, #0xc]
  3ae644: 4610         	mov	r0, r2
  3ae646: 9908         	ldr	r1, [sp, #0x20]
  3ae648: 4798         	blx	r3
  3ae64a: 4bcd         	ldr	r3, [pc, #0x334]        @ 0x3ae980 <PostGameScreen::init()+0x3e8>
  3ae64c: 447b         	add	r3, pc
  3ae64e: 4618         	mov	r0, r3
  3ae650: f229 fe58    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x229cb0
  3ae654: 4603         	mov	r3, r0
  3ae656: 9309         	str	r3, [sp, #0x24]
  3ae658: 4bca         	ldr	r3, [pc, #0x328]        @ 0x3ae984 <PostGameScreen::init()+0x3ec>
  3ae65a: 447b         	add	r3, pc
  3ae65c: 4618         	mov	r0, r3
  3ae65e: f229 fe51    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x229ca2
  3ae662: 4603         	mov	r3, r0
  3ae664: 930a         	str	r3, [sp, #0x28]
  3ae666: 9a03         	ldr	r2, [sp, #0xc]
  3ae668: 4bc7         	ldr	r3, [pc, #0x31c]        @ 0x3ae988 <PostGameScreen::init()+0x3f0>
  3ae66a: 58e3         	ldr	r3, [r4, r3]
  3ae66c: 9314         	str	r3, [sp, #0x50]
  3ae66e: 2300         	movs	r3, #0x0
  3ae670: 9315         	str	r3, [sp, #0x54]
  3ae672: 9b15         	ldr	r3, [sp, #0x54]
  3ae674: 9300         	str	r3, [sp]
  3ae676: 9b14         	ldr	r3, [sp, #0x50]
  3ae678: 9809         	ldr	r0, [sp, #0x24]
  3ae67a: 990a         	ldr	r1, [sp, #0x28]
  3ae67c: f209 fe56    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x209cac
  3ae680: 4603         	mov	r3, r0
  3ae682: 930b         	str	r3, [sp, #0x2c]
  3ae684: 980b         	ldr	r0, [sp, #0x2c]
  3ae686: 2100         	movs	r1, #0x0
  3ae688: f206 fd58    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x206ab0
  3ae68c: 4602         	mov	r2, r0
  3ae68e: 9b03         	ldr	r3, [sp, #0xc]
  3ae690: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  3ae694: 9b03         	ldr	r3, [sp, #0xc]
  3ae696: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3ae69a: 4618         	mov	r0, r3
  3ae69c: f1e9 fc24    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1e9848
  3ae6a0: 9b03         	ldr	r3, [sp, #0xc]
  3ae6a2: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3ae6a6: 681b         	ldr	r3, [r3]
  3ae6a8: 334c         	adds	r3, #0x4c
  3ae6aa: 681d         	ldr	r5, [r3]
  3ae6ac: 9b03         	ldr	r3, [sp, #0xc]
  3ae6ae: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3ae6b2: 461e         	mov	r6, r3
  3ae6b4: 4bb5         	ldr	r3, [pc, #0x2d4]        @ 0x3ae98c <PostGameScreen::init()+0x3f4>
  3ae6b6: 58e3         	ldr	r3, [r4, r3]
  3ae6b8: ed93 7a00    	vldr	s14, [r3]
  3ae6bc: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3ae6c0: ee87 7a27    	vdiv.f32	s14, s14, s15
  3ae6c4: eddf 7aac    	vldr	s15, [pc, #688]         @ 0x3ae978 <PostGameScreen::init()+0x3e0>
  3ae6c8: ee77 6a67    	vsub.f32	s13, s14, s15
  3ae6cc: 4baf         	ldr	r3, [pc, #0x2bc]        @ 0x3ae98c <PostGameScreen::init()+0x3f4>
  3ae6ce: 58e3         	ldr	r3, [r4, r3]
  3ae6d0: edd3 7a01    	vldr	s15, [r3, #4]
  3ae6d4: eeb1 7a67    	vneg.f32	s14, s15
  3ae6d8: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3ae6dc: ee87 7a27    	vdiv.f32	s14, s14, s15
  3ae6e0: eef3 7a09    	vmov.f32	s15, #2.500000e+01
  3ae6e4: ee77 7a27    	vadd.f32	s15, s14, s15
  3ae6e8: ab12         	add	r3, sp, #0x48
  3ae6ea: 4618         	mov	r0, r3
  3ae6ec: ee16 1a90    	vmov	r1, s13
  3ae6f0: ee17 2a90    	vmov	r2, s15
  3ae6f4: f1e4 fafc    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e45f8
  3ae6f8: ab12         	add	r3, sp, #0x48
  3ae6fa: 4630         	mov	r0, r6
  3ae6fc: 4619         	mov	r1, r3
  3ae6fe: 47a8         	blx	r5
  3ae700: 9b03         	ldr	r3, [sp, #0xc]
  3ae702: 681b         	ldr	r3, [r3]
  3ae704: 33c8         	adds	r3, #0xc8
  3ae706: 681b         	ldr	r3, [r3]
  3ae708: 9903         	ldr	r1, [sp, #0xc]
  3ae70a: 9a03         	ldr	r2, [sp, #0xc]
  3ae70c: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  3ae710: 4608         	mov	r0, r1
  3ae712: 4611         	mov	r1, r2
  3ae714: 4798         	blx	r3
  3ae716: 2320         	movs	r3, #0x20
  3ae718: 9300         	str	r3, [sp]
  3ae71a: 4b9d         	ldr	r3, [pc, #0x274]        @ 0x3ae990 <PostGameScreen::init()+0x3f8>
  3ae71c: 447b         	add	r3, pc
  3ae71e: 4618         	mov	r0, r3
  3ae720: 4b9c         	ldr	r3, [pc, #0x270]        @ 0x3ae994 <PostGameScreen::init()+0x3fc>
  3ae722: 447b         	add	r3, pc
  3ae724: 4619         	mov	r1, r3
  3ae726: 2220         	movs	r2, #0x20
  3ae728: 2320         	movs	r3, #0x20
  3ae72a: f1f6 fe25    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1f6c4a
  3ae72e: 4602         	mov	r2, r0
  3ae730: 9b03         	ldr	r3, [sp, #0xc]
  3ae732: f8c3 20ec    	str.w	r2, [r3, #0xec]
  3ae736: 9b03         	ldr	r3, [sp, #0xc]
  3ae738: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3ae73c: 4618         	mov	r0, r3
  3ae73e: f1e9 fbd3    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1e97a6
  3ae742: 9b03         	ldr	r3, [sp, #0xc]
  3ae744: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3ae748: 4618         	mov	r0, r3
  3ae74a: 2118         	movs	r1, #0x18
  3ae74c: f1f7 fb1a    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1f7634
  3ae750: 9b03         	ldr	r3, [sp, #0xc]
  3ae752: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3ae756: 681b         	ldr	r3, [r3]
  3ae758: 337c         	adds	r3, #0x7c
  3ae75a: 681d         	ldr	r5, [r3]
  3ae75c: 9b03         	ldr	r3, [sp, #0xc]
  3ae75e: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3ae762: 461e         	mov	r6, r3
  3ae764: ab12         	add	r3, sp, #0x48
  3ae766: 4618         	mov	r0, r3
  3ae768: f04f 517c    	mov.w	r1, #0x3f000000
  3ae76c: f04f 527c    	mov.w	r2, #0x3f000000
  3ae770: f1e4 fabe    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e457c
  3ae774: ab12         	add	r3, sp, #0x48
  3ae776: 4630         	mov	r0, r6
  3ae778: 4619         	mov	r1, r3
  3ae77a: 47a8         	blx	r5
  3ae77c: 9b03         	ldr	r3, [sp, #0xc]
  3ae77e: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3ae782: 681b         	ldr	r3, [r3]
  3ae784: 3340         	adds	r3, #0x40
  3ae786: 681b         	ldr	r3, [r3]
  3ae788: 9a03         	ldr	r2, [sp, #0xc]
  3ae78a: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  3ae78e: 4610         	mov	r0, r2
  3ae790: f04f 517c    	mov.w	r1, #0x3f000000
  3ae794: 4798         	blx	r3
  3ae796: 9b03         	ldr	r3, [sp, #0xc]
  3ae798: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3ae79c: 681b         	ldr	r3, [r3]
  3ae79e: 334c         	adds	r3, #0x4c
  3ae7a0: 681d         	ldr	r5, [r3]
  3ae7a2: 9b03         	ldr	r3, [sp, #0xc]
  3ae7a4: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3ae7a8: 461e         	mov	r6, r3
  3ae7aa: ab10         	add	r3, sp, #0x40
  3ae7ac: 4618         	mov	r0, r3
  3ae7ae: f04f 0100    	mov.w	r1, #0x0
  3ae7b2: f2c4 01e0    	movt	r1, #0x40e0
  3ae7b6: f04f 0200    	mov.w	r2, #0x0
  3ae7ba: f1e4 fa99    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e4532
  3ae7be: 9b03         	ldr	r3, [sp, #0xc]
  3ae7c0: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3ae7c4: 681b         	ldr	r3, [r3]
  3ae7c6: 3350         	adds	r3, #0x50
  3ae7c8: 681b         	ldr	r3, [r3]
  3ae7ca: 9a03         	ldr	r2, [sp, #0xc]
  3ae7cc: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  3ae7d0: 4610         	mov	r0, r2
  3ae7d2: 4798         	blx	r3
  3ae7d4: 4603         	mov	r3, r0
  3ae7d6: a912         	add	r1, sp, #0x48
  3ae7d8: aa10         	add	r2, sp, #0x40
  3ae7da: 4608         	mov	r0, r1
  3ae7dc: 4611         	mov	r1, r2
  3ae7de: 461a         	mov	r2, r3
  3ae7e0: f7fe ffbe    	bl	0x3ad760 <PointsLayer::onBack(cocos2d::CCObject*)+0x1f0> @ imm = #-0x1084
  3ae7e4: ab12         	add	r3, sp, #0x48
  3ae7e6: 4630         	mov	r0, r6
  3ae7e8: 4619         	mov	r1, r3
  3ae7ea: 47a8         	blx	r5
  3ae7ec: 9b03         	ldr	r3, [sp, #0xc]
  3ae7ee: 681b         	ldr	r3, [r3]
  3ae7f0: 33cc         	adds	r3, #0xcc
  3ae7f2: 681b         	ldr	r3, [r3]
  3ae7f4: 9903         	ldr	r1, [sp, #0xc]
  3ae7f6: 9a03         	ldr	r2, [sp, #0xc]
  3ae7f8: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  3ae7fc: 4608         	mov	r0, r1
  3ae7fe: 4611         	mov	r1, r2
  3ae800: 2200         	movs	r2, #0x0
  3ae802: 4798         	blx	r3
  3ae804: 4b64         	ldr	r3, [pc, #0x190]        @ 0x3ae998 <PostGameScreen::init()+0x400>
  3ae806: 447b         	add	r3, pc
  3ae808: 4618         	mov	r0, r3
  3ae80a: 4b64         	ldr	r3, [pc, #0x190]        @ 0x3ae99c <PostGameScreen::init()+0x404>
  3ae80c: 447b         	add	r3, pc
  3ae80e: 4619         	mov	r1, r3
  3ae810: f04f 4283    	mov.w	r2, #0x41800000
  3ae814: f1fd fc04    	bl	0x5ac020 <cocos2d::CCLabelTTF::create(char const*, char const*, float)> @ imm = #0x1fd808
  3ae818: 4602         	mov	r2, r0
  3ae81a: 9b03         	ldr	r3, [sp, #0xc]
  3ae81c: f8c3 2110    	str.w	r2, [r3, #0x110]
  3ae820: 9b03         	ldr	r3, [sp, #0xc]
  3ae822: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3ae826: 4618         	mov	r0, r3
  3ae828: f1e9 fb5e    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1e96bc
  3ae82c: 9b03         	ldr	r3, [sp, #0xc]
  3ae82e: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3ae832: 681b         	ldr	r3, [r3]
  3ae834: 337c         	adds	r3, #0x7c
  3ae836: 681d         	ldr	r5, [r3]
  3ae838: 9b03         	ldr	r3, [sp, #0xc]
  3ae83a: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3ae83e: 461e         	mov	r6, r3
  3ae840: ab12         	add	r3, sp, #0x48
  3ae842: 4618         	mov	r0, r3
  3ae844: f04f 0100    	mov.w	r1, #0x0
  3ae848: f04f 527c    	mov.w	r2, #0x3f000000
  3ae84c: f1e4 fa50    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e44a0
  3ae850: ab12         	add	r3, sp, #0x48
  3ae852: 4630         	mov	r0, r6
  3ae854: 4619         	mov	r1, r3
  3ae856: 47a8         	blx	r5
  3ae858: 9b03         	ldr	r3, [sp, #0xc]
  3ae85a: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3ae85e: 681b         	ldr	r3, [r3]
  3ae860: 334c         	adds	r3, #0x4c
  3ae862: 681d         	ldr	r5, [r3]
  3ae864: 9b03         	ldr	r3, [sp, #0xc]
  3ae866: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3ae86a: 461e         	mov	r6, r3
  3ae86c: ab12         	add	r3, sp, #0x48
  3ae86e: 4618         	mov	r0, r3
  3ae870: f04f 0100    	mov.w	r1, #0x0
  3ae874: f2cc 3150    	movt	r1, #0xc350
  3ae878: f04f 0200    	mov.w	r2, #0x0
  3ae87c: f2c4 12c0    	movt	r2, #0x41c0
  3ae880: f1e4 fa36    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e446c
  3ae884: ab12         	add	r3, sp, #0x48
  3ae886: 4630         	mov	r0, r6
  3ae888: 4619         	mov	r1, r3
  3ae88a: 47a8         	blx	r5
  3ae88c: 9b03         	ldr	r3, [sp, #0xc]
  3ae88e: 681b         	ldr	r3, [r3]
  3ae890: 33cc         	adds	r3, #0xcc
  3ae892: 681b         	ldr	r3, [r3]
  3ae894: 9903         	ldr	r1, [sp, #0xc]
  3ae896: 9a03         	ldr	r2, [sp, #0xc]
  3ae898: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  3ae89c: 4608         	mov	r0, r1
  3ae89e: 4611         	mov	r1, r2
  3ae8a0: 2200         	movs	r2, #0x0
  3ae8a2: 4798         	blx	r3
  3ae8a4: 2320         	movs	r3, #0x20
  3ae8a6: 9300         	str	r3, [sp]
  3ae8a8: 4b3d         	ldr	r3, [pc, #0xf4]         @ 0x3ae9a0 <PostGameScreen::init()+0x408>
  3ae8aa: 447b         	add	r3, pc
  3ae8ac: 4618         	mov	r0, r3
  3ae8ae: 4b3d         	ldr	r3, [pc, #0xf4]         @ 0x3ae9a4 <PostGameScreen::init()+0x40c>
  3ae8b0: 447b         	add	r3, pc
  3ae8b2: 4619         	mov	r1, r3
  3ae8b4: 2220         	movs	r2, #0x20
  3ae8b6: 2320         	movs	r3, #0x20
  3ae8b8: f1f6 fd5e    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1f6abc
  3ae8bc: 4602         	mov	r2, r0
  3ae8be: 9b03         	ldr	r3, [sp, #0xc]
  3ae8c0: f8c3 2108    	str.w	r2, [r3, #0x108]
  3ae8c4: 9b03         	ldr	r3, [sp, #0xc]
  3ae8c6: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3ae8ca: 4618         	mov	r0, r3
  3ae8cc: f1e9 fb0c    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1e9618
  3ae8d0: 9b03         	ldr	r3, [sp, #0xc]
  3ae8d2: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3ae8d6: 4618         	mov	r0, r3
  3ae8d8: 2118         	movs	r1, #0x18
  3ae8da: f1f7 fa53    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1f74a6
  3ae8de: 9b03         	ldr	r3, [sp, #0xc]
  3ae8e0: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3ae8e4: 681b         	ldr	r3, [r3]
  3ae8e6: 337c         	adds	r3, #0x7c
  3ae8e8: 681d         	ldr	r5, [r3]
  3ae8ea: 9b03         	ldr	r3, [sp, #0xc]
  3ae8ec: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3ae8f0: 461e         	mov	r6, r3
  3ae8f2: ab12         	add	r3, sp, #0x48
  3ae8f4: 4618         	mov	r0, r3
  3ae8f6: f04f 517c    	mov.w	r1, #0x3f000000
  3ae8fa: f04f 527c    	mov.w	r2, #0x3f000000
  3ae8fe: f1e4 f9f7    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e43ee
  3ae902: ab12         	add	r3, sp, #0x48
  3ae904: 4630         	mov	r0, r6
  3ae906: 4619         	mov	r1, r3
  3ae908: 47a8         	blx	r5
  3ae90a: 9b03         	ldr	r3, [sp, #0xc]
  3ae90c: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3ae910: 681b         	ldr	r3, [r3]
  3ae912: 3340         	adds	r3, #0x40
  3ae914: 681b         	ldr	r3, [r3]
  3ae916: 9a03         	ldr	r2, [sp, #0xc]
  3ae918: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3ae91c: 4610         	mov	r0, r2
  3ae91e: f04f 517c    	mov.w	r1, #0x3f000000
  3ae922: 4798         	blx	r3
  3ae924: 9b03         	ldr	r3, [sp, #0xc]
  3ae926: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3ae92a: 681b         	ldr	r3, [r3]
  3ae92c: 334c         	adds	r3, #0x4c
  3ae92e: 681d         	ldr	r5, [r3]
  3ae930: 9b03         	ldr	r3, [sp, #0xc]
  3ae932: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3ae936: 461e         	mov	r6, r3
  3ae938: ab12         	add	r3, sp, #0x48
  3ae93a: 4618         	mov	r0, r3
  3ae93c: f04f 0100    	mov.w	r1, #0x0
  3ae940: f2cc 218c    	movt	r1, #0xc28c
  3ae944: f04f 0200    	mov.w	r2, #0x0
  3ae948: f2c4 2228    	movt	r2, #0x4228
  3ae94c: f1e4 f9d0    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e43a0
  3ae950: ab12         	add	r3, sp, #0x48
  3ae952: 4630         	mov	r0, r6
  3ae954: 4619         	mov	r1, r3
  3ae956: 47a8         	blx	r5
  3ae958: 9b03         	ldr	r3, [sp, #0xc]
  3ae95a: 681b         	ldr	r3, [r3]
  3ae95c: 33cc         	adds	r3, #0xcc
  3ae95e: 681b         	ldr	r3, [r3]
  3ae960: 9903         	ldr	r1, [sp, #0xc]
  3ae962: 9a03         	ldr	r2, [sp, #0xc]
  3ae964: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3ae968: 4608         	mov	r0, r1
  3ae96a: 4611         	mov	r1, r2
  3ae96c: 2200         	movs	r2, #0x0
  3ae96e: 4798         	blx	r3
  3ae970: 2320         	movs	r3, #0x20
  3ae972: 9300         	str	r3, [sp]
  3ae974: e018         	b	0x3ae9a8 <PostGameScreen::init()+0x410> @ imm = #0x30
  3ae976: bf00         	nop
  3ae978: 0000         	movs	r0, r0
  3ae97a: 4248         	rsbs	r0, r1, #0
  3ae97c: 52c2         	strh	r2, [r0, r3]
  3ae97e: 0042         	lsls	r2, r0, #0x1
  3ae980: 5254         	strh	r4, [r2, r1]
  3ae982: 0042         	lsls	r2, r0, #0x1
  3ae984: 5246         	strh	r6, [r0, r1]
  3ae986: 0042         	lsls	r2, r0, #0x1
  3ae988: ddec         	ble	0x3ae964 <PostGameScreen::init()+0x3cc> @ imm = #-0x28
  3ae98a: ffff d724    	<unknown>
  3ae98e: ffff 5190    	vsra.u64	d21, d0, #0x1
  3ae992: 0042         	lsls	r2, r0, #0x1
  3ae994: 5192         	str	r2, [r2, r6]
  3ae996: 0042         	lsls	r2, r0, #0x1
  3ae998: 50be         	str	r6, [r7, r2]
  3ae99a: 0042         	lsls	r2, r0, #0x1
  3ae99c: 50c8         	str	r0, [r1, r3]
  3ae99e: 0042         	lsls	r2, r0, #0x1
  3ae9a0: 503a         	str	r2, [r7, r0]
  3ae9a2: 0042         	lsls	r2, r0, #0x1
  3ae9a4: 5004         	str	r4, [r0, r0]
  3ae9a6: 0042         	lsls	r2, r0, #0x1
  3ae9a8: f8df 3aac    	ldr.w	r3, [pc, #0xaac]        @ 0x3af458 <PostGameScreen::init()+0xec0>
  3ae9ac: 447b         	add	r3, pc
  3ae9ae: 4618         	mov	r0, r3
  3ae9b0: f8df 3aa8    	ldr.w	r3, [pc, #0xaa8]        @ 0x3af45c <PostGameScreen::init()+0xec4>
  3ae9b4: 447b         	add	r3, pc
  3ae9b6: 4619         	mov	r1, r3
  3ae9b8: 2220         	movs	r2, #0x20
  3ae9ba: 2320         	movs	r3, #0x20
  3ae9bc: f1f6 fcdc    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1f69b8
  3ae9c0: 4602         	mov	r2, r0
  3ae9c2: 9b03         	ldr	r3, [sp, #0xc]
  3ae9c4: f8c3 20f8    	str.w	r2, [r3, #0xf8]
  3ae9c8: 9b03         	ldr	r3, [sp, #0xc]
  3ae9ca: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3ae9ce: 4618         	mov	r0, r3
  3ae9d0: f1e9 fa8a    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1e9514
  3ae9d4: 9b03         	ldr	r3, [sp, #0xc]
  3ae9d6: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3ae9da: 4618         	mov	r0, r3
  3ae9dc: 2118         	movs	r1, #0x18
  3ae9de: f1f7 f9d1    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1f73a2
  3ae9e2: 9b03         	ldr	r3, [sp, #0xc]
  3ae9e4: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3ae9e8: 681b         	ldr	r3, [r3]
  3ae9ea: 337c         	adds	r3, #0x7c
  3ae9ec: 681d         	ldr	r5, [r3]
  3ae9ee: 9b03         	ldr	r3, [sp, #0xc]
  3ae9f0: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3ae9f4: 461e         	mov	r6, r3
  3ae9f6: ab12         	add	r3, sp, #0x48
  3ae9f8: 4618         	mov	r0, r3
  3ae9fa: f04f 0100    	mov.w	r1, #0x0
  3ae9fe: f04f 527c    	mov.w	r2, #0x3f000000
  3aea02: f1e4 f975    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e42ea
  3aea06: ab12         	add	r3, sp, #0x48
  3aea08: 4630         	mov	r0, r6
  3aea0a: 4619         	mov	r1, r3
  3aea0c: 47a8         	blx	r5
  3aea0e: 9b03         	ldr	r3, [sp, #0xc]
  3aea10: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3aea14: 681b         	ldr	r3, [r3]
  3aea16: 3340         	adds	r3, #0x40
  3aea18: 681b         	ldr	r3, [r3]
  3aea1a: 9a03         	ldr	r2, [sp, #0xc]
  3aea1c: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  3aea20: 4610         	mov	r0, r2
  3aea22: f64c 41cd    	movw	r1, #0xcccd
  3aea26: f6c3 61cc    	movt	r1, #0x3ecc
  3aea2a: 4798         	blx	r3
  3aea2c: 9b03         	ldr	r3, [sp, #0xc]
  3aea2e: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3aea32: 681b         	ldr	r3, [r3]
  3aea34: 334c         	adds	r3, #0x4c
  3aea36: 681d         	ldr	r5, [r3]
  3aea38: 9b03         	ldr	r3, [sp, #0xc]
  3aea3a: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3aea3e: 461e         	mov	r6, r3
  3aea40: ab12         	add	r3, sp, #0x48
  3aea42: 4618         	mov	r0, r3
  3aea44: f04f 0100    	mov.w	r1, #0x0
  3aea48: f04f 0200    	mov.w	r2, #0x0
  3aea4c: f2cc 1270    	movt	r2, #0xc170
  3aea50: f1e4 f94e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e429c
  3aea54: ab12         	add	r3, sp, #0x48
  3aea56: 4630         	mov	r0, r6
  3aea58: 4619         	mov	r1, r3
  3aea5a: 47a8         	blx	r5
  3aea5c: 9b03         	ldr	r3, [sp, #0xc]
  3aea5e: 681b         	ldr	r3, [r3]
  3aea60: 33cc         	adds	r3, #0xcc
  3aea62: 681b         	ldr	r3, [r3]
  3aea64: 9903         	ldr	r1, [sp, #0xc]
  3aea66: 9a03         	ldr	r2, [sp, #0xc]
  3aea68: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  3aea6c: 4608         	mov	r0, r1
  3aea6e: 4611         	mov	r1, r2
  3aea70: 2200         	movs	r2, #0x0
  3aea72: 4798         	blx	r3
  3aea74: 2320         	movs	r3, #0x20
  3aea76: 9300         	str	r3, [sp]
  3aea78: f8df 39e4    	ldr.w	r3, [pc, #0x9e4]        @ 0x3af460 <PostGameScreen::init()+0xec8>
  3aea7c: 447b         	add	r3, pc
  3aea7e: 4618         	mov	r0, r3
  3aea80: f8df 39e0    	ldr.w	r3, [pc, #0x9e0]        @ 0x3af464 <PostGameScreen::init()+0xecc>
  3aea84: 447b         	add	r3, pc
  3aea86: 4619         	mov	r1, r3
  3aea88: 2220         	movs	r2, #0x20
  3aea8a: 2320         	movs	r3, #0x20
  3aea8c: f1f6 fc74    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1f68e8
  3aea90: 4602         	mov	r2, r0
  3aea92: 9b03         	ldr	r3, [sp, #0xc]
  3aea94: f8c3 20f4    	str.w	r2, [r3, #0xf4]
  3aea98: 9b03         	ldr	r3, [sp, #0xc]
  3aea9a: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3aea9e: 4618         	mov	r0, r3
  3aeaa0: f1e9 fa22    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1e9444
  3aeaa4: 9b03         	ldr	r3, [sp, #0xc]
  3aeaa6: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3aeaaa: 4618         	mov	r0, r3
  3aeaac: 2118         	movs	r1, #0x18
  3aeaae: f1f7 f969    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1f72d2
  3aeab2: 9b03         	ldr	r3, [sp, #0xc]
  3aeab4: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3aeab8: 681b         	ldr	r3, [r3]
  3aeaba: 337c         	adds	r3, #0x7c
  3aeabc: 681d         	ldr	r5, [r3]
  3aeabe: 9b03         	ldr	r3, [sp, #0xc]
  3aeac0: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3aeac4: 461e         	mov	r6, r3
  3aeac6: ab12         	add	r3, sp, #0x48
  3aeac8: 4618         	mov	r0, r3
  3aeaca: f04f 0100    	mov.w	r1, #0x0
  3aeace: f04f 527c    	mov.w	r2, #0x3f000000
  3aead2: f1e4 f90d    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e421a
  3aead6: ab12         	add	r3, sp, #0x48
  3aead8: 4630         	mov	r0, r6
  3aeada: 4619         	mov	r1, r3
  3aeadc: 47a8         	blx	r5
  3aeade: 9b03         	ldr	r3, [sp, #0xc]
  3aeae0: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3aeae4: 681b         	ldr	r3, [r3]
  3aeae6: 3340         	adds	r3, #0x40
  3aeae8: 681b         	ldr	r3, [r3]
  3aeaea: 9a03         	ldr	r2, [sp, #0xc]
  3aeaec: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  3aeaf0: 4610         	mov	r0, r2
  3aeaf2: f64c 41cd    	movw	r1, #0xcccd
  3aeaf6: f6c3 61cc    	movt	r1, #0x3ecc
  3aeafa: 4798         	blx	r3
  3aeafc: 9b03         	ldr	r3, [sp, #0xc]
  3aeafe: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3aeb02: 681b         	ldr	r3, [r3]
  3aeb04: 334c         	adds	r3, #0x4c
  3aeb06: 681d         	ldr	r5, [r3]
  3aeb08: 9b03         	ldr	r3, [sp, #0xc]
  3aeb0a: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3aeb0e: 461e         	mov	r6, r3
  3aeb10: ab12         	add	r3, sp, #0x48
  3aeb12: 4618         	mov	r0, r3
  3aeb14: f04f 0100    	mov.w	r1, #0x0
  3aeb18: f04f 0200    	mov.w	r2, #0x0
  3aeb1c: f2cc 12f0    	movt	r2, #0xc1f0
  3aeb20: f1e4 f8e6    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e41cc
  3aeb24: ab12         	add	r3, sp, #0x48
  3aeb26: 4630         	mov	r0, r6
  3aeb28: 4619         	mov	r1, r3
  3aeb2a: 47a8         	blx	r5
  3aeb2c: 9b03         	ldr	r3, [sp, #0xc]
  3aeb2e: 681b         	ldr	r3, [r3]
  3aeb30: 33cc         	adds	r3, #0xcc
  3aeb32: 681b         	ldr	r3, [r3]
  3aeb34: 9903         	ldr	r1, [sp, #0xc]
  3aeb36: 9a03         	ldr	r2, [sp, #0xc]
  3aeb38: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  3aeb3c: 4608         	mov	r0, r1
  3aeb3e: 4611         	mov	r1, r2
  3aeb40: 2200         	movs	r2, #0x0
  3aeb42: 4798         	blx	r3
  3aeb44: 2320         	movs	r3, #0x20
  3aeb46: 9300         	str	r3, [sp]
  3aeb48: f8df 391c    	ldr.w	r3, [pc, #0x91c]        @ 0x3af468 <PostGameScreen::init()+0xed0>
  3aeb4c: 447b         	add	r3, pc
  3aeb4e: 4618         	mov	r0, r3
  3aeb50: f8df 3918    	ldr.w	r3, [pc, #0x918]        @ 0x3af46c <PostGameScreen::init()+0xed4>
  3aeb54: 447b         	add	r3, pc
  3aeb56: 4619         	mov	r1, r3
  3aeb58: 2220         	movs	r2, #0x20
  3aeb5a: 2320         	movs	r3, #0x20
  3aeb5c: f1f6 fc0c    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1f6818
  3aeb60: 4602         	mov	r2, r0
  3aeb62: 9b03         	ldr	r3, [sp, #0xc]
  3aeb64: f8c3 20f0    	str.w	r2, [r3, #0xf0]
  3aeb68: 9b03         	ldr	r3, [sp, #0xc]
  3aeb6a: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3aeb6e: 4618         	mov	r0, r3
  3aeb70: f1e9 f9ba    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1e9374
  3aeb74: 9b03         	ldr	r3, [sp, #0xc]
  3aeb76: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3aeb7a: 4618         	mov	r0, r3
  3aeb7c: 2118         	movs	r1, #0x18
  3aeb7e: f1f7 f901    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1f7202
  3aeb82: 9b03         	ldr	r3, [sp, #0xc]
  3aeb84: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3aeb88: 681b         	ldr	r3, [r3]
  3aeb8a: 337c         	adds	r3, #0x7c
  3aeb8c: 681d         	ldr	r5, [r3]
  3aeb8e: 9b03         	ldr	r3, [sp, #0xc]
  3aeb90: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3aeb94: 461e         	mov	r6, r3
  3aeb96: ab12         	add	r3, sp, #0x48
  3aeb98: 4618         	mov	r0, r3
  3aeb9a: f04f 0100    	mov.w	r1, #0x0
  3aeb9e: f04f 527c    	mov.w	r2, #0x3f000000
  3aeba2: f1e4 f8a5    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e414a
  3aeba6: ab12         	add	r3, sp, #0x48
  3aeba8: 4630         	mov	r0, r6
  3aebaa: 4619         	mov	r1, r3
  3aebac: 47a8         	blx	r5
  3aebae: 9b03         	ldr	r3, [sp, #0xc]
  3aebb0: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3aebb4: 681b         	ldr	r3, [r3]
  3aebb6: 3340         	adds	r3, #0x40
  3aebb8: 681b         	ldr	r3, [r3]
  3aebba: 9a03         	ldr	r2, [sp, #0xc]
  3aebbc: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  3aebc0: 4610         	mov	r0, r2
  3aebc2: f64c 41cd    	movw	r1, #0xcccd
  3aebc6: f6c3 61cc    	movt	r1, #0x3ecc
  3aebca: 4798         	blx	r3
  3aebcc: 9b03         	ldr	r3, [sp, #0xc]
  3aebce: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3aebd2: 681b         	ldr	r3, [r3]
  3aebd4: 334c         	adds	r3, #0x4c
  3aebd6: 681d         	ldr	r5, [r3]
  3aebd8: 9b03         	ldr	r3, [sp, #0xc]
  3aebda: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3aebde: 461e         	mov	r6, r3
  3aebe0: ab12         	add	r3, sp, #0x48
  3aebe2: 4618         	mov	r0, r3
  3aebe4: f04f 0100    	mov.w	r1, #0x0
  3aebe8: f04f 0200    	mov.w	r2, #0x0
  3aebec: f2cc 2234    	movt	r2, #0xc234
  3aebf0: f1e4 f87e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e40fc
  3aebf4: ab12         	add	r3, sp, #0x48
  3aebf6: 4630         	mov	r0, r6
  3aebf8: 4619         	mov	r1, r3
  3aebfa: 47a8         	blx	r5
  3aebfc: 9b03         	ldr	r3, [sp, #0xc]
  3aebfe: 681b         	ldr	r3, [r3]
  3aec00: 33cc         	adds	r3, #0xcc
  3aec02: 681b         	ldr	r3, [r3]
  3aec04: 9903         	ldr	r1, [sp, #0xc]
  3aec06: 9a03         	ldr	r2, [sp, #0xc]
  3aec08: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  3aec0c: 4608         	mov	r0, r1
  3aec0e: 4611         	mov	r1, r2
  3aec10: 2200         	movs	r2, #0x0
  3aec12: 4798         	blx	r3
  3aec14: 2320         	movs	r3, #0x20
  3aec16: 9300         	str	r3, [sp]
  3aec18: f8df 3854    	ldr.w	r3, [pc, #0x854]        @ 0x3af470 <PostGameScreen::init()+0xed8>
  3aec1c: 447b         	add	r3, pc
  3aec1e: 4618         	mov	r0, r3
  3aec20: f8df 3850    	ldr.w	r3, [pc, #0x850]        @ 0x3af474 <PostGameScreen::init()+0xedc>
  3aec24: 447b         	add	r3, pc
  3aec26: 4619         	mov	r1, r3
  3aec28: 2220         	movs	r2, #0x20
  3aec2a: 2320         	movs	r3, #0x20
  3aec2c: f1f6 fba4    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1f6748
  3aec30: 4602         	mov	r2, r0
  3aec32: 9b03         	ldr	r3, [sp, #0xc]
  3aec34: f8c3 210c    	str.w	r2, [r3, #0x10c]
  3aec38: 9b03         	ldr	r3, [sp, #0xc]
  3aec3a: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3aec3e: 4618         	mov	r0, r3
  3aec40: f1e9 f952    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1e92a4
  3aec44: 9b03         	ldr	r3, [sp, #0xc]
  3aec46: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3aec4a: 4618         	mov	r0, r3
  3aec4c: 2118         	movs	r1, #0x18
  3aec4e: f1f7 f899    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1f7132
  3aec52: 9b03         	ldr	r3, [sp, #0xc]
  3aec54: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3aec58: 681b         	ldr	r3, [r3]
  3aec5a: 337c         	adds	r3, #0x7c
  3aec5c: 681d         	ldr	r5, [r3]
  3aec5e: 9b03         	ldr	r3, [sp, #0xc]
  3aec60: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3aec64: 461e         	mov	r6, r3
  3aec66: ab12         	add	r3, sp, #0x48
  3aec68: 4618         	mov	r0, r3
  3aec6a: f04f 0100    	mov.w	r1, #0x0
  3aec6e: f04f 527c    	mov.w	r2, #0x3f000000
  3aec72: f1e4 f83d    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e407a
  3aec76: ab12         	add	r3, sp, #0x48
  3aec78: 4630         	mov	r0, r6
  3aec7a: 4619         	mov	r1, r3
  3aec7c: 47a8         	blx	r5
  3aec7e: 9b03         	ldr	r3, [sp, #0xc]
  3aec80: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3aec84: 681b         	ldr	r3, [r3]
  3aec86: 3340         	adds	r3, #0x40
  3aec88: 681b         	ldr	r3, [r3]
  3aec8a: 9a03         	ldr	r2, [sp, #0xc]
  3aec8c: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3aec90: 4610         	mov	r0, r2
  3aec92: f64c 41cd    	movw	r1, #0xcccd
  3aec96: f6c3 61cc    	movt	r1, #0x3ecc
  3aec9a: 4798         	blx	r3
  3aec9c: 9b03         	ldr	r3, [sp, #0xc]
  3aec9e: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3aeca2: 681b         	ldr	r3, [r3]
  3aeca4: 334c         	adds	r3, #0x4c
  3aeca6: 681d         	ldr	r5, [r3]
  3aeca8: 9b03         	ldr	r3, [sp, #0xc]
  3aecaa: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3aecae: 461e         	mov	r6, r3
  3aecb0: ab12         	add	r3, sp, #0x48
  3aecb2: 4618         	mov	r0, r3
  3aecb4: f04f 0100    	mov.w	r1, #0x0
  3aecb8: f04f 0200    	mov.w	r2, #0x0
  3aecbc: f2cc 2270    	movt	r2, #0xc270
  3aecc0: f1e4 f816    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e402c
  3aecc4: ab12         	add	r3, sp, #0x48
  3aecc6: 4630         	mov	r0, r6
  3aecc8: 4619         	mov	r1, r3
  3aecca: 47a8         	blx	r5
  3aeccc: 9b03         	ldr	r3, [sp, #0xc]
  3aecce: 681b         	ldr	r3, [r3]
  3aecd0: 33cc         	adds	r3, #0xcc
  3aecd2: 681b         	ldr	r3, [r3]
  3aecd4: 9903         	ldr	r1, [sp, #0xc]
  3aecd6: 9a03         	ldr	r2, [sp, #0xc]
  3aecd8: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3aecdc: 4608         	mov	r0, r1
  3aecde: 4611         	mov	r1, r2
  3aece0: 2200         	movs	r2, #0x0
  3aece2: 4798         	blx	r3
  3aece4: 2320         	movs	r3, #0x20
  3aece6: 9300         	str	r3, [sp]
  3aece8: f8df 378c    	ldr.w	r3, [pc, #0x78c]        @ 0x3af478 <PostGameScreen::init()+0xee0>
  3aecec: 447b         	add	r3, pc
  3aecee: 4618         	mov	r0, r3
  3aecf0: f8df 3788    	ldr.w	r3, [pc, #0x788]        @ 0x3af47c <PostGameScreen::init()+0xee4>
  3aecf4: 447b         	add	r3, pc
  3aecf6: 4619         	mov	r1, r3
  3aecf8: 2220         	movs	r2, #0x20
  3aecfa: 2320         	movs	r3, #0x20
  3aecfc: f1f6 fb3c    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1f6678
  3aed00: 4602         	mov	r2, r0
  3aed02: 9b03         	ldr	r3, [sp, #0xc]
  3aed04: f8c3 20fc    	str.w	r2, [r3, #0xfc]
  3aed08: 9b03         	ldr	r3, [sp, #0xc]
  3aed0a: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3aed0e: 4618         	mov	r0, r3
  3aed10: f1e9 f8ea    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1e91d4
  3aed14: 9b03         	ldr	r3, [sp, #0xc]
  3aed16: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3aed1a: 4618         	mov	r0, r3
  3aed1c: 2118         	movs	r1, #0x18
  3aed1e: f1f7 f831    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1f7062
  3aed22: 9b03         	ldr	r3, [sp, #0xc]
  3aed24: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3aed28: 681b         	ldr	r3, [r3]
  3aed2a: 337c         	adds	r3, #0x7c
  3aed2c: 681d         	ldr	r5, [r3]
  3aed2e: 9b03         	ldr	r3, [sp, #0xc]
  3aed30: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3aed34: 461e         	mov	r6, r3
  3aed36: ab12         	add	r3, sp, #0x48
  3aed38: 4618         	mov	r0, r3
  3aed3a: f04f 0100    	mov.w	r1, #0x0
  3aed3e: f04f 527c    	mov.w	r2, #0x3f000000
  3aed42: f1e3 ffd5    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e3faa
  3aed46: ab12         	add	r3, sp, #0x48
  3aed48: 4630         	mov	r0, r6
  3aed4a: 4619         	mov	r1, r3
  3aed4c: 47a8         	blx	r5
  3aed4e: 9b03         	ldr	r3, [sp, #0xc]
  3aed50: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3aed54: 681b         	ldr	r3, [r3]
  3aed56: 3340         	adds	r3, #0x40
  3aed58: 681b         	ldr	r3, [r3]
  3aed5a: 9a03         	ldr	r2, [sp, #0xc]
  3aed5c: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3aed60: 4610         	mov	r0, r2
  3aed62: f04f 517c    	mov.w	r1, #0x3f000000
  3aed66: 4798         	blx	r3
  3aed68: 9b03         	ldr	r3, [sp, #0xc]
  3aed6a: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3aed6e: 681b         	ldr	r3, [r3]
  3aed70: 334c         	adds	r3, #0x4c
  3aed72: 681d         	ldr	r5, [r3]
  3aed74: 9b03         	ldr	r3, [sp, #0xc]
  3aed76: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3aed7a: 461e         	mov	r6, r3
  3aed7c: ab12         	add	r3, sp, #0x48
  3aed7e: 4618         	mov	r0, r3
  3aed80: f04f 0100    	mov.w	r1, #0x0
  3aed84: f04f 0200    	mov.w	r2, #0x0
  3aed88: f2cc 22a0    	movt	r2, #0xc2a0
  3aed8c: f1e3 ffb0    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e3f60
  3aed90: ab12         	add	r3, sp, #0x48
  3aed92: 4630         	mov	r0, r6
  3aed94: 4619         	mov	r1, r3
  3aed96: 47a8         	blx	r5
  3aed98: 9b03         	ldr	r3, [sp, #0xc]
  3aed9a: 681b         	ldr	r3, [r3]
  3aed9c: 33cc         	adds	r3, #0xcc
  3aed9e: 681b         	ldr	r3, [r3]
  3aeda0: 9903         	ldr	r1, [sp, #0xc]
  3aeda2: 9a03         	ldr	r2, [sp, #0xc]
  3aeda4: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3aeda8: 4608         	mov	r0, r1
  3aedaa: 4611         	mov	r1, r2
  3aedac: 2200         	movs	r2, #0x0
  3aedae: 4798         	blx	r3
  3aedb0: 2320         	movs	r3, #0x20
  3aedb2: 9300         	str	r3, [sp]
  3aedb4: f8df 36c8    	ldr.w	r3, [pc, #0x6c8]        @ 0x3af480 <PostGameScreen::init()+0xee8>
  3aedb8: 447b         	add	r3, pc
  3aedba: 4618         	mov	r0, r3
  3aedbc: f8df 36c4    	ldr.w	r3, [pc, #0x6c4]        @ 0x3af484 <PostGameScreen::init()+0xeec>
  3aedc0: 447b         	add	r3, pc
  3aedc2: 4619         	mov	r1, r3
  3aedc4: 2220         	movs	r2, #0x20
  3aedc6: 2320         	movs	r3, #0x20
  3aedc8: f1f6 fad6    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1f65ac
  3aedcc: 4602         	mov	r2, r0
  3aedce: 9b03         	ldr	r3, [sp, #0xc]
  3aedd0: f8c3 2118    	str.w	r2, [r3, #0x118]
  3aedd4: 9b03         	ldr	r3, [sp, #0xc]
  3aedd6: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3aedda: 4618         	mov	r0, r3
  3aeddc: f1e9 f884    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1e9108
  3aede0: 9b03         	ldr	r3, [sp, #0xc]
  3aede2: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3aede6: 4618         	mov	r0, r3
  3aede8: 2118         	movs	r1, #0x18
  3aedea: f1f6 ffcb    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1f6f96
  3aedee: 9b03         	ldr	r3, [sp, #0xc]
  3aedf0: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3aedf4: 681b         	ldr	r3, [r3]
  3aedf6: 337c         	adds	r3, #0x7c
  3aedf8: 681d         	ldr	r5, [r3]
  3aedfa: 9b03         	ldr	r3, [sp, #0xc]
  3aedfc: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3aee00: 461e         	mov	r6, r3
  3aee02: ab12         	add	r3, sp, #0x48
  3aee04: 4618         	mov	r0, r3
  3aee06: f04f 0100    	mov.w	r1, #0x0
  3aee0a: f04f 527c    	mov.w	r2, #0x3f000000
  3aee0e: f1e3 ff6f    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e3ede
  3aee12: ab12         	add	r3, sp, #0x48
  3aee14: 4630         	mov	r0, r6
  3aee16: 4619         	mov	r1, r3
  3aee18: 47a8         	blx	r5
  3aee1a: 9b03         	ldr	r3, [sp, #0xc]
  3aee1c: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3aee20: 681b         	ldr	r3, [r3]
  3aee22: 3340         	adds	r3, #0x40
  3aee24: 681b         	ldr	r3, [r3]
  3aee26: 9a03         	ldr	r2, [sp, #0xc]
  3aee28: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3aee2c: 4610         	mov	r0, r2
  3aee2e: f04f 517c    	mov.w	r1, #0x3f000000
  3aee32: 4798         	blx	r3
  3aee34: 9b03         	ldr	r3, [sp, #0xc]
  3aee36: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3aee3a: 681b         	ldr	r3, [r3]
  3aee3c: 334c         	adds	r3, #0x4c
  3aee3e: 681d         	ldr	r5, [r3]
  3aee40: 9b03         	ldr	r3, [sp, #0xc]
  3aee42: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3aee46: 461e         	mov	r6, r3
  3aee48: ab12         	add	r3, sp, #0x48
  3aee4a: 4618         	mov	r0, r3
  3aee4c: f04f 0100    	mov.w	r1, #0x0
  3aee50: f04f 0200    	mov.w	r2, #0x0
  3aee54: f2cc 22c8    	movt	r2, #0xc2c8
  3aee58: f1e3 ff4a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e3e94
  3aee5c: ab12         	add	r3, sp, #0x48
  3aee5e: 4630         	mov	r0, r6
  3aee60: 4619         	mov	r1, r3
  3aee62: 47a8         	blx	r5
  3aee64: 9b03         	ldr	r3, [sp, #0xc]
  3aee66: 681b         	ldr	r3, [r3]
  3aee68: 33cc         	adds	r3, #0xcc
  3aee6a: 681b         	ldr	r3, [r3]
  3aee6c: 9903         	ldr	r1, [sp, #0xc]
  3aee6e: 9a03         	ldr	r2, [sp, #0xc]
  3aee70: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3aee74: 4608         	mov	r0, r1
  3aee76: 4611         	mov	r1, r2
  3aee78: 2200         	movs	r2, #0x0
  3aee7a: 4798         	blx	r3
  3aee7c: 2320         	movs	r3, #0x20
  3aee7e: 9300         	str	r3, [sp]
  3aee80: f8df 3604    	ldr.w	r3, [pc, #0x604]        @ 0x3af488 <PostGameScreen::init()+0xef0>
  3aee84: 447b         	add	r3, pc
  3aee86: 4618         	mov	r0, r3
  3aee88: f8df 3600    	ldr.w	r3, [pc, #0x600]        @ 0x3af48c <PostGameScreen::init()+0xef4>
  3aee8c: 447b         	add	r3, pc
  3aee8e: 4619         	mov	r1, r3
  3aee90: 2220         	movs	r2, #0x20
  3aee92: 2320         	movs	r3, #0x20
  3aee94: f1f6 fa70    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1f64e0
  3aee98: 4602         	mov	r2, r0
  3aee9a: 9b03         	ldr	r3, [sp, #0xc]
  3aee9c: f8c3 2100    	str.w	r2, [r3, #0x100]
  3aeea0: 9b03         	ldr	r3, [sp, #0xc]
  3aeea2: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  3aeea6: 4618         	mov	r0, r3
  3aeea8: f1e9 f81e    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1e903c
  3aeeac: 9b03         	ldr	r3, [sp, #0xc]
  3aeeae: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  3aeeb2: 4618         	mov	r0, r3
  3aeeb4: 2118         	movs	r1, #0x18
  3aeeb6: f1f6 ff65    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1f6eca
  3aeeba: 9b03         	ldr	r3, [sp, #0xc]
  3aeebc: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  3aeec0: 681b         	ldr	r3, [r3]
  3aeec2: 337c         	adds	r3, #0x7c
  3aeec4: 681d         	ldr	r5, [r3]
  3aeec6: 9b03         	ldr	r3, [sp, #0xc]
  3aeec8: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  3aeecc: 461e         	mov	r6, r3
  3aeece: ab12         	add	r3, sp, #0x48
  3aeed0: 4618         	mov	r0, r3
  3aeed2: f04f 0100    	mov.w	r1, #0x0
  3aeed6: f04f 527c    	mov.w	r2, #0x3f000000
  3aeeda: f1e3 ff09    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e3e12
  3aeede: ab12         	add	r3, sp, #0x48
  3aeee0: 4630         	mov	r0, r6
  3aeee2: 4619         	mov	r1, r3
  3aeee4: 47a8         	blx	r5
  3aeee6: 9b03         	ldr	r3, [sp, #0xc]
  3aeee8: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  3aeeec: 681b         	ldr	r3, [r3]
  3aeeee: 3340         	adds	r3, #0x40
  3aeef0: 681b         	ldr	r3, [r3]
  3aeef2: 9a03         	ldr	r2, [sp, #0xc]
  3aeef4: f8d2 2100    	ldr.w	r2, [r2, #0x100]
  3aeef8: 4610         	mov	r0, r2
  3aeefa: f246 6166    	movw	r1, #0x6666
  3aeefe: f6c3 61e6    	movt	r1, #0x3ee6
  3aef02: 4798         	blx	r3
  3aef04: 9b03         	ldr	r3, [sp, #0xc]
  3aef06: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  3aef0a: 681b         	ldr	r3, [r3]
  3aef0c: 334c         	adds	r3, #0x4c
  3aef0e: 681d         	ldr	r5, [r3]
  3aef10: 9b03         	ldr	r3, [sp, #0xc]
  3aef12: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  3aef16: 461e         	mov	r6, r3
  3aef18: ab12         	add	r3, sp, #0x48
  3aef1a: 4618         	mov	r0, r3
  3aef1c: f04f 0100    	mov.w	r1, #0x0
  3aef20: f2cc 3152    	movt	r1, #0xc352
  3aef24: f04f 0200    	mov.w	r2, #0x0
  3aef28: f2cc 320c    	movt	r2, #0xc30c
  3aef2c: f1e3 fee0    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e3dc0
  3aef30: ab12         	add	r3, sp, #0x48
  3aef32: 4630         	mov	r0, r6
  3aef34: 4619         	mov	r1, r3
  3aef36: 47a8         	blx	r5
  3aef38: 9b03         	ldr	r3, [sp, #0xc]
  3aef3a: 681b         	ldr	r3, [r3]
  3aef3c: 33cc         	adds	r3, #0xcc
  3aef3e: 681b         	ldr	r3, [r3]
  3aef40: 9903         	ldr	r1, [sp, #0xc]
  3aef42: 9a03         	ldr	r2, [sp, #0xc]
  3aef44: f8d2 2100    	ldr.w	r2, [r2, #0x100]
  3aef48: 4608         	mov	r0, r1
  3aef4a: 4611         	mov	r1, r2
  3aef4c: 2200         	movs	r2, #0x0
  3aef4e: 4798         	blx	r3
  3aef50: 2320         	movs	r3, #0x20
  3aef52: 9300         	str	r3, [sp]
  3aef54: f8df 3538    	ldr.w	r3, [pc, #0x538]        @ 0x3af490 <PostGameScreen::init()+0xef8>
  3aef58: 447b         	add	r3, pc
  3aef5a: 4618         	mov	r0, r3
  3aef5c: f8df 3534    	ldr.w	r3, [pc, #0x534]        @ 0x3af494 <PostGameScreen::init()+0xefc>
  3aef60: 447b         	add	r3, pc
  3aef62: 4619         	mov	r1, r3
  3aef64: 2220         	movs	r2, #0x20
  3aef66: 2320         	movs	r3, #0x20
  3aef68: f1f6 fa06    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1f640c
  3aef6c: 4602         	mov	r2, r0
  3aef6e: 9b03         	ldr	r3, [sp, #0xc]
  3aef70: f8c3 2104    	str.w	r2, [r3, #0x104]
  3aef74: 9b03         	ldr	r3, [sp, #0xc]
  3aef76: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  3aef7a: 4618         	mov	r0, r3
  3aef7c: f1e8 ffb4    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1e8f68
  3aef80: 9b03         	ldr	r3, [sp, #0xc]
  3aef82: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  3aef86: 4618         	mov	r0, r3
  3aef88: 2118         	movs	r1, #0x18
  3aef8a: f1f6 fefb    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1f6df6
  3aef8e: 9b03         	ldr	r3, [sp, #0xc]
  3aef90: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  3aef94: 681b         	ldr	r3, [r3]
  3aef96: 337c         	adds	r3, #0x7c
  3aef98: 681d         	ldr	r5, [r3]
  3aef9a: 9b03         	ldr	r3, [sp, #0xc]
  3aef9c: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  3aefa0: 461e         	mov	r6, r3
  3aefa2: ab12         	add	r3, sp, #0x48
  3aefa4: 4618         	mov	r0, r3
  3aefa6: f04f 0100    	mov.w	r1, #0x0
  3aefaa: f04f 527c    	mov.w	r2, #0x3f000000
  3aefae: f1e3 fe9f    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e3d3e
  3aefb2: ab12         	add	r3, sp, #0x48
  3aefb4: 4630         	mov	r0, r6
  3aefb6: 4619         	mov	r1, r3
  3aefb8: 47a8         	blx	r5
  3aefba: 9b03         	ldr	r3, [sp, #0xc]
  3aefbc: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  3aefc0: 681b         	ldr	r3, [r3]
  3aefc2: 3340         	adds	r3, #0x40
  3aefc4: 681b         	ldr	r3, [r3]
  3aefc6: 9a03         	ldr	r2, [sp, #0xc]
  3aefc8: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  3aefcc: 4610         	mov	r0, r2
  3aefce: f246 6166    	movw	r1, #0x6666
  3aefd2: f6c3 61e6    	movt	r1, #0x3ee6
  3aefd6: 4798         	blx	r3
  3aefd8: 9b03         	ldr	r3, [sp, #0xc]
  3aefda: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  3aefde: 681b         	ldr	r3, [r3]
  3aefe0: 334c         	adds	r3, #0x4c
  3aefe2: 681d         	ldr	r5, [r3]
  3aefe4: 9b03         	ldr	r3, [sp, #0xc]
  3aefe6: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  3aefea: 461e         	mov	r6, r3
  3aefec: 9b03         	ldr	r3, [sp, #0xc]
  3aefee: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  3aeff2: 681b         	ldr	r3, [r3]
  3aeff4: 3350         	adds	r3, #0x50
  3aeff6: 681b         	ldr	r3, [r3]
  3aeff8: 9a03         	ldr	r2, [sp, #0xc]
  3aeffa: f8d2 2100    	ldr.w	r2, [r2, #0x100]
  3aeffe: 4610         	mov	r0, r2
  3af000: 4798         	blx	r3
  3af002: 4607         	mov	r7, r0
  3af004: ab10         	add	r3, sp, #0x40
  3af006: 4618         	mov	r0, r3
  3af008: f04f 0100    	mov.w	r1, #0x0
  3af00c: f04f 0200    	mov.w	r2, #0x0
  3af010: f2c4 12a0    	movt	r2, #0x41a0
  3af014: f1e3 fe6c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e3cd8
  3af018: aa12         	add	r2, sp, #0x48
  3af01a: ab10         	add	r3, sp, #0x40
  3af01c: 4610         	mov	r0, r2
  3af01e: 4639         	mov	r1, r7
  3af020: 461a         	mov	r2, r3
  3af022: f7fe fb9d    	bl	0x3ad760 <PointsLayer::onBack(cocos2d::CCObject*)+0x1f0> @ imm = #-0x18c6
  3af026: ab12         	add	r3, sp, #0x48
  3af028: 4630         	mov	r0, r6
  3af02a: 4619         	mov	r1, r3
  3af02c: 47a8         	blx	r5
  3af02e: 9b03         	ldr	r3, [sp, #0xc]
  3af030: 681b         	ldr	r3, [r3]
  3af032: 33cc         	adds	r3, #0xcc
  3af034: 681b         	ldr	r3, [r3]
  3af036: 9903         	ldr	r1, [sp, #0xc]
  3af038: 9a03         	ldr	r2, [sp, #0xc]
  3af03a: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  3af03e: 4608         	mov	r0, r1
  3af040: 4611         	mov	r1, r2
  3af042: 2200         	movs	r2, #0x0
  3af044: 4798         	blx	r3
  3af046: f8df 3450    	ldr.w	r3, [pc, #0x450]        @ 0x3af498 <PostGameScreen::init()+0xf00>
  3af04a: 447b         	add	r3, pc
  3af04c: 4618         	mov	r0, r3
  3af04e: f8df 344c    	ldr.w	r3, [pc, #0x44c]        @ 0x3af49c <PostGameScreen::init()+0xf04>
  3af052: 58e3         	ldr	r3, [r4, r3]
  3af054: 4619         	mov	r1, r3
  3af056: f229 f8d3    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2291a6
  3af05a: 4602         	mov	r2, r0
  3af05c: 9b03         	ldr	r3, [sp, #0xc]
  3af05e: f8c3 211c    	str.w	r2, [r3, #0x11c]
  3af062: 9b03         	ldr	r3, [sp, #0xc]
  3af064: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3af068: 4618         	mov	r0, r3
  3af06a: f1e8 ff3d    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1e8e7a
  3af06e: 9b03         	ldr	r3, [sp, #0xc]
  3af070: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3af074: 681b         	ldr	r3, [r3]
  3af076: 334c         	adds	r3, #0x4c
  3af078: 681c         	ldr	r4, [r3]
  3af07a: 9b03         	ldr	r3, [sp, #0xc]
  3af07c: f8d3 511c    	ldr.w	r5, [r3, #0x11c]
  3af080: ab12         	add	r3, sp, #0x48
  3af082: 4618         	mov	r0, r3
  3af084: f04f 0100    	mov.w	r1, #0x0
  3af088: f2c4 3134    	movt	r1, #0x4334
  3af08c: f04f 0200    	mov.w	r2, #0x0
  3af090: f1e3 fe2e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e3c5c
  3af094: ab12         	add	r3, sp, #0x48
  3af096: 4628         	mov	r0, r5
  3af098: 4619         	mov	r1, r3
  3af09a: 47a0         	blx	r4
  3af09c: 9b03         	ldr	r3, [sp, #0xc]
  3af09e: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3af0a2: 681b         	ldr	r3, [r3]
  3af0a4: 3390         	adds	r3, #0x90
  3af0a6: 681b         	ldr	r3, [r3]
  3af0a8: 9a03         	ldr	r2, [sp, #0xc]
  3af0aa: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  3af0ae: 4610         	mov	r0, r2
  3af0b0: 2100         	movs	r1, #0x0
  3af0b2: 4798         	blx	r3
  3af0b4: 9b03         	ldr	r3, [sp, #0xc]
  3af0b6: 681b         	ldr	r3, [r3]
  3af0b8: 33c8         	adds	r3, #0xc8
  3af0ba: 681b         	ldr	r3, [r3]
  3af0bc: 9903         	ldr	r1, [sp, #0xc]
  3af0be: 9a03         	ldr	r2, [sp, #0xc]
  3af0c0: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  3af0c4: 4608         	mov	r0, r1
  3af0c6: 4611         	mov	r1, r2
  3af0c8: 4798         	blx	r3
  3af0ca: 2320         	movs	r3, #0x20
  3af0cc: 9300         	str	r3, [sp]
  3af0ce: 4bf4         	ldr	r3, [pc, #0x3d0]        @ 0x3af4a0 <PostGameScreen::init()+0xf08>
  3af0d0: 447b         	add	r3, pc
  3af0d2: 4618         	mov	r0, r3
  3af0d4: 4bf3         	ldr	r3, [pc, #0x3cc]        @ 0x3af4a4 <PostGameScreen::init()+0xf0c>
  3af0d6: 447b         	add	r3, pc
  3af0d8: 4619         	mov	r1, r3
  3af0da: 2220         	movs	r2, #0x20
  3af0dc: 2320         	movs	r3, #0x20
  3af0de: f1f6 f94b    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1f6296
  3af0e2: 4602         	mov	r2, r0
  3af0e4: 9b03         	ldr	r3, [sp, #0xc]
  3af0e6: f8c3 2114    	str.w	r2, [r3, #0x114]
  3af0ea: 9b03         	ldr	r3, [sp, #0xc]
  3af0ec: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3af0f0: 4618         	mov	r0, r3
  3af0f2: f1e8 fef9    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1e8df2
  3af0f6: 9b03         	ldr	r3, [sp, #0xc]
  3af0f8: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3af0fc: 4618         	mov	r0, r3
  3af0fe: 2118         	movs	r1, #0x18
  3af100: f1f6 fe40    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1f6c80
  3af104: 9b03         	ldr	r3, [sp, #0xc]
  3af106: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3af10a: 681b         	ldr	r3, [r3]
  3af10c: 3340         	adds	r3, #0x40
  3af10e: 681b         	ldr	r3, [r3]
  3af110: 9a03         	ldr	r2, [sp, #0xc]
  3af112: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  3af116: 4610         	mov	r0, r2
  3af118: f64c 41cd    	movw	r1, #0xcccd
  3af11c: f6c3 61cc    	movt	r1, #0x3ecc
  3af120: 4798         	blx	r3
  3af122: 9b03         	ldr	r3, [sp, #0xc]
  3af124: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3af128: 681b         	ldr	r3, [r3]
  3af12a: 3390         	adds	r3, #0x90
  3af12c: 681b         	ldr	r3, [r3]
  3af12e: 9a03         	ldr	r2, [sp, #0xc]
  3af130: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  3af134: 4610         	mov	r0, r2
  3af136: 2100         	movs	r1, #0x0
  3af138: 4798         	blx	r3
  3af13a: 9b03         	ldr	r3, [sp, #0xc]
  3af13c: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3af140: 681b         	ldr	r3, [r3]
  3af142: 334c         	adds	r3, #0x4c
  3af144: 681c         	ldr	r4, [r3]
  3af146: 9b03         	ldr	r3, [sp, #0xc]
  3af148: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3af14c: 461d         	mov	r5, r3
  3af14e: ab10         	add	r3, sp, #0x40
  3af150: 4618         	mov	r0, r3
  3af152: f04f 0100    	mov.w	r1, #0x0
  3af156: f04f 0200    	mov.w	r2, #0x0
  3af15a: f2c4 220c    	movt	r2, #0x420c
  3af15e: f1e3 fdc7    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e3b8e
  3af162: 9b03         	ldr	r3, [sp, #0xc]
  3af164: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3af168: 681b         	ldr	r3, [r3]
  3af16a: 3350         	adds	r3, #0x50
  3af16c: 681b         	ldr	r3, [r3]
  3af16e: 9a03         	ldr	r2, [sp, #0xc]
  3af170: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  3af174: 4610         	mov	r0, r2
  3af176: 4798         	blx	r3
  3af178: 4603         	mov	r3, r0
  3af17a: a912         	add	r1, sp, #0x48
  3af17c: aa10         	add	r2, sp, #0x40
  3af17e: 4608         	mov	r0, r1
  3af180: 4611         	mov	r1, r2
  3af182: 461a         	mov	r2, r3
  3af184: f7fe faec    	bl	0x3ad760 <PointsLayer::onBack(cocos2d::CCObject*)+0x1f0> @ imm = #-0x1a28
  3af188: ab12         	add	r3, sp, #0x48
  3af18a: 4628         	mov	r0, r5
  3af18c: 4619         	mov	r1, r3
  3af18e: 47a0         	blx	r4
  3af190: 9b03         	ldr	r3, [sp, #0xc]
  3af192: 681b         	ldr	r3, [r3]
  3af194: 33cc         	adds	r3, #0xcc
  3af196: 681b         	ldr	r3, [r3]
  3af198: 9903         	ldr	r1, [sp, #0xc]
  3af19a: 9a03         	ldr	r2, [sp, #0xc]
  3af19c: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  3af1a0: 4608         	mov	r0, r1
  3af1a2: 4611         	mov	r1, r2
  3af1a4: 2200         	movs	r2, #0x0
  3af1a6: 4798         	blx	r3
  3af1a8: 9b03         	ldr	r3, [sp, #0xc]
  3af1aa: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3af1ae: 681b         	ldr	r3, [r3]
  3af1b0: 337c         	adds	r3, #0x7c
  3af1b2: 681c         	ldr	r4, [r3]
  3af1b4: 9b03         	ldr	r3, [sp, #0xc]
  3af1b6: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3af1ba: 461d         	mov	r5, r3
  3af1bc: ab12         	add	r3, sp, #0x48
  3af1be: 4618         	mov	r0, r3
  3af1c0: f04f 517c    	mov.w	r1, #0x3f000000
  3af1c4: f04f 527c    	mov.w	r2, #0x3f000000
  3af1c8: f1e3 fd92    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e3b24
  3af1cc: ab12         	add	r3, sp, #0x48
  3af1ce: 4628         	mov	r0, r5
  3af1d0: 4619         	mov	r1, r3
  3af1d2: 47a0         	blx	r4
  3af1d4: f7ff f992    	bl	0x3ae4fc <ScoreList::create()> @ imm = #-0xcdc
  3af1d8: 4602         	mov	r2, r0
  3af1da: 9b03         	ldr	r3, [sp, #0xc]
  3af1dc: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  3af1e0: 9b03         	ldr	r3, [sp, #0xc]
  3af1e2: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3af1e6: 4618         	mov	r0, r3
  3af1e8: f1e8 fe7e    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1e8cfc
  3af1ec: 9b03         	ldr	r3, [sp, #0xc]
  3af1ee: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3af1f2: 681b         	ldr	r3, [r3]
  3af1f4: 334c         	adds	r3, #0x4c
  3af1f6: 681c         	ldr	r4, [r3]
  3af1f8: 9b03         	ldr	r3, [sp, #0xc]
  3af1fa: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3af1fe: 461d         	mov	r5, r3
  3af200: ab12         	add	r3, sp, #0x48
  3af202: 4618         	mov	r0, r3
  3af204: f04f 0100    	mov.w	r1, #0x0
  3af208: f2cc 21e6    	movt	r1, #0xc2e6
  3af20c: f04f 0200    	mov.w	r2, #0x0
  3af210: f2cc 220c    	movt	r2, #0xc20c
  3af214: f1e3 fd6c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e3ad8
  3af218: ab12         	add	r3, sp, #0x48
  3af21a: 4628         	mov	r0, r5
  3af21c: 4619         	mov	r1, r3
  3af21e: 47a0         	blx	r4
  3af220: 9b03         	ldr	r3, [sp, #0xc]
  3af222: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3af226: 681b         	ldr	r3, [r3]
  3af228: 3340         	adds	r3, #0x40
  3af22a: 681b         	ldr	r3, [r3]
  3af22c: 9a03         	ldr	r2, [sp, #0xc]
  3af22e: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  3af232: 4610         	mov	r0, r2
  3af234: f04f 517d    	mov.w	r1, #0x3f400000
  3af238: 4798         	blx	r3
  3af23a: 9b03         	ldr	r3, [sp, #0xc]
  3af23c: 681b         	ldr	r3, [r3]
  3af23e: 33c8         	adds	r3, #0xc8
  3af240: 681b         	ldr	r3, [r3]
  3af242: 9903         	ldr	r1, [sp, #0xc]
  3af244: 9a03         	ldr	r2, [sp, #0xc]
  3af246: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  3af24a: 4608         	mov	r0, r1
  3af24c: 4611         	mov	r1, r2
  3af24e: 4798         	blx	r3
  3af250: f023 f83a    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #0x23074
  3af254: 4603         	mov	r3, r0
  3af256: 4618         	mov	r0, r3
  3af258: f023 fb1e    	bl	0x3d2898 <ScoreKeeper::getPlayerInfo()> @ imm = #0x2363c
  3af25c: 4603         	mov	r3, r0
  3af25e: 930c         	str	r3, [sp, #0x30]
  3af260: 2300         	movs	r3, #0x0
  3af262: 9306         	str	r3, [sp, #0x18]
  3af264: 2300         	movs	r3, #0x0
  3af266: 9307         	str	r3, [sp, #0x1c]
  3af268: 9b0c         	ldr	r3, [sp, #0x30]
  3af26a: 2b00         	cmp	r3, #0x0
  3af26c: d007         	beq	0x3af27e <PostGameScreen::init()+0xce6> @ imm = #0xe
  3af26e: 980c         	ldr	r0, [sp, #0x30]
  3af270: f1e4 fcfc    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x1e49f8
  3af274: 4603         	mov	r3, r0
  3af276: 2b00         	cmp	r3, #0x0
  3af278: d001         	beq	0x3af27e <PostGameScreen::init()+0xce6> @ imm = #0x2
  3af27a: 2301         	movs	r3, #0x1
  3af27c: e000         	b	0x3af280 <PostGameScreen::init()+0xce8> @ imm = #0x0
  3af27e: 2300         	movs	r3, #0x0
  3af280: 2b00         	cmp	r3, #0x0
  3af282: d041         	beq	0x3af308 <PostGameScreen::init()+0xd70> @ imm = #0x82
  3af284: 9b0c         	ldr	r3, [sp, #0x30]
  3af286: 695b         	ldr	r3, [r3, #0x14]
  3af288: 9306         	str	r3, [sp, #0x18]
  3af28a: 9b0c         	ldr	r3, [sp, #0x30]
  3af28c: 695b         	ldr	r3, [r3, #0x14]
  3af28e: 2b00         	cmp	r3, #0x0
  3af290: d004         	beq	0x3af29c <PostGameScreen::init()+0xd04> @ imm = #0x8
  3af292: 9b0c         	ldr	r3, [sp, #0x30]
  3af294: 695b         	ldr	r3, [r3, #0x14]
  3af296: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3af29a: e000         	b	0x3af29e <PostGameScreen::init()+0xd06> @ imm = #0x0
  3af29c: 2300         	movs	r3, #0x0
  3af29e: 9307         	str	r3, [sp, #0x1c]
  3af2a0: e02f         	b	0x3af302 <PostGameScreen::init()+0xd6a> @ imm = #0x5e
  3af2a2: 9806         	ldr	r0, [sp, #0x18]
  3af2a4: f74f f9c6    	bl	0x2fe634 <cocos2d::CCDictElement::getObject() const> @ imm = #-0xb0c74
  3af2a8: 4603         	mov	r3, r0
  3af2aa: 930d         	str	r3, [sp, #0x34]
  3af2ac: 9b03         	ldr	r3, [sp, #0xc]
  3af2ae: f8d3 40e4    	ldr.w	r4, [r3, #0xe4]
  3af2b2: 9b0d         	ldr	r3, [sp, #0x34]
  3af2b4: 3314         	adds	r3, #0x14
  3af2b6: aa10         	add	r2, sp, #0x40
  3af2b8: 4610         	mov	r0, r2
  3af2ba: 4619         	mov	r1, r3
  3af2bc: f007 f114    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x407228
  3af2c0: 9b0d         	ldr	r3, [sp, #0x34]
  3af2c2: 3318         	adds	r3, #0x18
  3af2c4: aa12         	add	r2, sp, #0x48
  3af2c6: 4610         	mov	r0, r2
  3af2c8: 4619         	mov	r1, r3
  3af2ca: f007 f10d    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x40721a
  3af2ce: 9b0d         	ldr	r3, [sp, #0x34]
  3af2d0: 69db         	ldr	r3, [r3, #0x1c]
  3af2d2: a910         	add	r1, sp, #0x40
  3af2d4: aa12         	add	r2, sp, #0x48
  3af2d6: 4620         	mov	r0, r4
  3af2d8: f025 ff1c    	bl	0x3d5114 <ScoreList::addSoldierScore(std::string, std::string, int)> @ imm = #0x25e38
  3af2dc: ab12         	add	r3, sp, #0x48
  3af2de: 4618         	mov	r0, r3
  3af2e0: f006 f318    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x406630
  3af2e4: ab10         	add	r3, sp, #0x40
  3af2e6: 4618         	mov	r0, r3
  3af2e8: f006 f314    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x406628
  3af2ec: 9b07         	ldr	r3, [sp, #0x1c]
  3af2ee: 9306         	str	r3, [sp, #0x18]
  3af2f0: 9b07         	ldr	r3, [sp, #0x1c]
  3af2f2: 2b00         	cmp	r3, #0x0
  3af2f4: d003         	beq	0x3af2fe <PostGameScreen::init()+0xd66> @ imm = #0x6
  3af2f6: 9b07         	ldr	r3, [sp, #0x1c]
  3af2f8: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3af2fc: e000         	b	0x3af300 <PostGameScreen::init()+0xd68> @ imm = #0x0
  3af2fe: 2300         	movs	r3, #0x0
  3af300: 9307         	str	r3, [sp, #0x1c]
  3af302: 9b06         	ldr	r3, [sp, #0x18]
  3af304: 2b00         	cmp	r3, #0x0
  3af306: d1cc         	bne	0x3af2a2 <PostGameScreen::init()+0xd0a> @ imm = #-0x68
  3af308: 9b03         	ldr	r3, [sp, #0xc]
  3af30a: f8d3 40e4    	ldr.w	r4, [r3, #0xe4]
  3af30e: ab10         	add	r3, sp, #0x40
  3af310: 4618         	mov	r0, r3
  3af312: f3db f86f    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3db0de
  3af316: aa12         	add	r2, sp, #0x48
  3af318: ab10         	add	r3, sp, #0x40
  3af31a: 4610         	mov	r0, r2
  3af31c: 4a62         	ldr	r2, [pc, #0x188]        @ 0x3af4a8 <PostGameScreen::init()+0xf10>
  3af31e: 447a         	add	r2, pc
  3af320: 4611         	mov	r1, r2
  3af322: 461a         	mov	r2, r3
  3af324: f007 f39c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x407738
  3af328: ab12         	add	r3, sp, #0x48
  3af32a: 4620         	mov	r0, r4
  3af32c: 4619         	mov	r1, r3
  3af32e: f025 ffc5    	bl	0x3d52bc <ScoreList::setTitle(std::string)> @ imm = #0x25f8a
  3af332: ab12         	add	r3, sp, #0x48
  3af334: 4618         	mov	r0, r3
  3af336: f006 f2ed    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4065da
  3af33a: ab10         	add	r3, sp, #0x40
  3af33c: 4618         	mov	r0, r3
  3af33e: f3db f85d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3db0ba
  3af342: 9b03         	ldr	r3, [sp, #0xc]
  3af344: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3af348: 4618         	mov	r0, r3
  3af34a: f025 fbb9    	bl	0x3d4ac0 <ScoreList::updateScores()> @ imm = #0x25772
  3af34e: f075 feb3    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #0x75d66
  3af352: 4603         	mov	r3, r0
  3af354: 4618         	mov	r0, r3
  3af356: f076 f845    	bl	0x4253e4 <LeaderBoardBridge::calcPlayerExp()> @ imm = #0x7608a
  3af35a: 4603         	mov	r3, r0
  3af35c: 930e         	str	r3, [sp, #0x38]
  3af35e: f075 feab    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #0x75d56
  3af362: 4603         	mov	r3, r0
  3af364: 4618         	mov	r0, r3
  3af366: f076 f84f    	bl	0x425408 <LeaderBoardBridge::calcPlayerPoints()> @ imm = #0x7609e
  3af36a: 4604         	mov	r4, r0
  3af36c: f799 ff8c    	bl	0x349288 <ItemLibrary::sharedItemLibrary()> @ imm = #-0x660e8
  3af370: 4605         	mov	r5, r0
  3af372: f79c fe53    	bl	0x34c01c <ItemPurchase::sharedItemPurchase()> @ imm = #-0x6335a
  3af376: 4603         	mov	r3, r0
  3af378: 685b         	ldr	r3, [r3, #0x4]
  3af37a: 4628         	mov	r0, r5
  3af37c: 4619         	mov	r1, r3
  3af37e: f79b f825    	bl	0x34a3cc <ItemLibrary::getTotalPurchaseAmount(cocos2d::CCArray*)> @ imm = #-0x64fb6
  3af382: 4603         	mov	r3, r0
  3af384: 1ae3         	subs	r3, r4, r3
  3af386: 2b00         	cmp	r3, #0x0
  3af388: dd14         	ble	0x3af3b4 <PostGameScreen::init()+0xe1c> @ imm = #0x28
  3af38a: f075 fe95    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #0x75d2a
  3af38e: 4603         	mov	r3, r0
  3af390: 4618         	mov	r0, r3
  3af392: f076 f839    	bl	0x425408 <LeaderBoardBridge::calcPlayerPoints()> @ imm = #0x76072
  3af396: 4604         	mov	r4, r0
  3af398: f799 ff76    	bl	0x349288 <ItemLibrary::sharedItemLibrary()> @ imm = #-0x66114
  3af39c: 4605         	mov	r5, r0
  3af39e: f79c fe3d    	bl	0x34c01c <ItemPurchase::sharedItemPurchase()> @ imm = #-0x63386
  3af3a2: 4603         	mov	r3, r0
  3af3a4: 685b         	ldr	r3, [r3, #0x4]
  3af3a6: 4628         	mov	r0, r5
  3af3a8: 4619         	mov	r1, r3
  3af3aa: f79b f80f    	bl	0x34a3cc <ItemLibrary::getTotalPurchaseAmount(cocos2d::CCArray*)> @ imm = #-0x64fe2
  3af3ae: 4603         	mov	r3, r0
  3af3b0: 1ae3         	subs	r3, r4, r3
  3af3b2: e000         	b	0x3af3b6 <PostGameScreen::init()+0xe1e> @ imm = #0x0
  3af3b4: 2300         	movs	r3, #0x0
  3af3b6: 930f         	str	r3, [sp, #0x3c]
  3af3b8: 9b03         	ldr	r3, [sp, #0xc]
  3af3ba: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  3af3be: 681b         	ldr	r3, [r3]
  3af3c0: f503 73fc    	add.w	r3, r3, #0x1f8
  3af3c4: 681c         	ldr	r4, [r3]
  3af3c6: 9b03         	ldr	r3, [sp, #0xc]
  3af3c8: f8d3 5100    	ldr.w	r5, [r3, #0x100]
  3af3cc: 4b37         	ldr	r3, [pc, #0xdc]         @ 0x3af4ac <PostGameScreen::init()+0xf14>
  3af3ce: 447b         	add	r3, pc
  3af3d0: 4618         	mov	r0, r3
  3af3d2: 990e         	ldr	r1, [sp, #0x38]
  3af3d4: f1ea fb9c    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1ea738
  3af3d8: 4603         	mov	r3, r0
  3af3da: 4618         	mov	r0, r3
  3af3dc: f1ea faa4    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1ea548
  3af3e0: 4603         	mov	r3, r0
  3af3e2: 4628         	mov	r0, r5
  3af3e4: 4619         	mov	r1, r3
  3af3e6: 47a0         	blx	r4
  3af3e8: 9b03         	ldr	r3, [sp, #0xc]
  3af3ea: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  3af3ee: 681b         	ldr	r3, [r3]
  3af3f0: f503 73fc    	add.w	r3, r3, #0x1f8
  3af3f4: 681c         	ldr	r4, [r3]
  3af3f6: 9b03         	ldr	r3, [sp, #0xc]
  3af3f8: f8d3 5104    	ldr.w	r5, [r3, #0x104]
  3af3fc: 4b2c         	ldr	r3, [pc, #0xb0]         @ 0x3af4b0 <PostGameScreen::init()+0xf18>
  3af3fe: 447b         	add	r3, pc
  3af400: 4618         	mov	r0, r3
  3af402: 990f         	ldr	r1, [sp, #0x3c]
  3af404: f1ea fb84    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1ea708
  3af408: 4603         	mov	r3, r0
  3af40a: 4618         	mov	r0, r3
  3af40c: f1ea fa8c    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1ea518
  3af410: 4603         	mov	r3, r0
  3af412: 4628         	mov	r0, r5
  3af414: 4619         	mov	r1, r3
  3af416: 47a0         	blx	r4
  3af418: 9b03         	ldr	r3, [sp, #0xc]
  3af41a: 2200         	movs	r2, #0x0
  3af41c: f8c3 2120    	str.w	r2, [r3, #0x120]
  3af420: 2301         	movs	r3, #0x1
  3af422: e015         	b	0x3af450 <PostGameScreen::init()+0xeb8> @ imm = #0x2a
  3af424: ab12         	add	r3, sp, #0x48
  3af426: 4618         	mov	r0, r3
  3af428: f006 f274    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4064e8
  3af42c: e7ff         	b	0x3af42e <PostGameScreen::init()+0xe96> @ imm = #-0x2
  3af42e: ab10         	add	r3, sp, #0x40
  3af430: 4618         	mov	r0, r3
  3af432: f006 f26f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4064de
  3af436: f3d8 fe39    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3d8c72
  3af43a: ab12         	add	r3, sp, #0x48
  3af43c: 4618         	mov	r0, r3
  3af43e: f006 f269    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4064d2
  3af442: e7ff         	b	0x3af444 <PostGameScreen::init()+0xeac> @ imm = #-0x2
  3af444: ab10         	add	r3, sp, #0x40
  3af446: 4618         	mov	r0, r3
  3af448: f3da ffd8    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3dafb0
  3af44c: f3d8 fe2e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3d8c5c
  3af450: 4618         	mov	r0, r3
  3af452: b017         	add	sp, #0x5c
  3af454: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x3af455); words below are literal-pool data ---
  3af456: bf00         	nop
  3af458: 4f4c         	ldr	r7, [pc, #0x130]        @ 0x3af58c <PostGameScreen::~PostGameScreen()+0xd8>
  3af45a: 0042         	lsls	r2, r0, #0x1
  3af45c: 4f00         	ldr	r7, [pc, #0x0]          @ 0x3af460 <PostGameScreen::init()+0xec8>
  3af45e: 0042         	lsls	r2, r0, #0x1
  3af460: 4e7c         	ldr	r6, [pc, #0x1f0]        @ 0x3af654 <PostGameScreen::setWinnerLabel()+0x48>
  3af462: 0042         	lsls	r2, r0, #0x1
  3af464: 4e30         	ldr	r6, [pc, #0xc0]         @ 0x3af528 <PostGameScreen::~PostGameScreen()+0x74>
  3af466: 0042         	lsls	r2, r0, #0x1
  3af468: 4dac         	ldr	r5, [pc, #0x2b0]        @ 0x3af71c <PostGameScreen::setWinnerLabel()+0x110>
  3af46a: 0042         	lsls	r2, r0, #0x1
  3af46c: 4d60         	ldr	r5, [pc, #0x180]        @ 0x3af5f0 <PostGameScreen::onOK(cocos2d::CCObject*)+0x24>
  3af46e: 0042         	lsls	r2, r0, #0x1
  3af470: 4cdc         	ldr	r4, [pc, #0x370]        @ 0x3af7e4 <PostGameScreen::setWinnerLabel()+0x1d8>
  3af472: 0042         	lsls	r2, r0, #0x1
  3af474: 4c90         	ldr	r4, [pc, #0x240]        @ 0x3af6b8 <PostGameScreen::setWinnerLabel()+0xac>
  3af476: 0042         	lsls	r2, r0, #0x1
  3af478: 4c0c         	ldr	r4, [pc, #0x30]         @ 0x3af4ac <PostGameScreen::init()+0xf14>
  3af47a: 0042         	lsls	r2, r0, #0x1
  3af47c: 4bc0         	ldr	r3, [pc, #0x300]        @ 0x3af780 <PostGameScreen::setWinnerLabel()+0x174>
  3af47e: 0042         	lsls	r2, r0, #0x1
  3af480: 4b40         	ldr	r3, [pc, #0x100]        @ 0x3af584 <PostGameScreen::~PostGameScreen()+0xd0>
  3af482: 0042         	lsls	r2, r0, #0x1
  3af484: 4af4         	ldr	r2, [pc, #0x3d0]        @ 0x3af858 <PostGameScreen::setWinnerLabel()+0x24c>
  3af486: 0042         	lsls	r2, r0, #0x1
  3af488: 4a78         	ldr	r2, [pc, #0x1e0]        @ 0x3af66c <PostGameScreen::setWinnerLabel()+0x60>
  3af48a: 0042         	lsls	r2, r0, #0x1
  3af48c: 4a28         	ldr	r2, [pc, #0xa0]         @ 0x3af530 <PostGameScreen::~PostGameScreen()+0x7c>
  3af48e: 0042         	lsls	r2, r0, #0x1
  3af490: 49b8         	ldr	r1, [pc, #0x2e0]        @ 0x3af774 <PostGameScreen::setWinnerLabel()+0x168>
  3af492: 0042         	lsls	r2, r0, #0x1
  3af494: 4954         	ldr	r1, [pc, #0x150]        @ 0x3af5e8 <PostGameScreen::onOK(cocos2d::CCObject*)+0x1c>
  3af496: 0042         	lsls	r2, r0, #0x1
  3af498: 48da         	ldr	r0, [pc, #0x368]        @ 0x3af804 <PostGameScreen::setWinnerLabel()+0x1f8>
  3af49a: 0042         	lsls	r2, r0, #0x1
  3af49c: d7c0         	bvc	0x3af420 <PostGameScreen::init()+0xe88> @ imm = #-0x80
  3af49e: ffff 4828    	vtbl.8	d20, {d15}, d24
  3af4a2: 0042         	lsls	r2, r0, #0x1
  3af4a4: 47de         	<unknown>
  3af4a6: 0042         	lsls	r2, r0, #0x1
  3af4a8: 45da         	cmp	r10, r11
  3af4aa: 0042         	lsls	r2, r0, #0x1
  3af4ac: 4566         	cmp	r6, r12
  3af4ae: 0042         	lsls	r2, r0, #0x1
  3af4b0: 4546         	cmp	r6, r8
  3af4b2: 0042         	lsls	r2, r0, #0x1

// ==== PostGameScreen::~PostGameScreen
//      file offset 0x3af4b4 (= ELF address; Ghidra 0x3bf4b4), 252 bytes, Thumb-2
  3af4b4: b500         	push	{lr}
  3af4b6: b083         	sub	sp, #0xc
  3af4b8: 9001         	str	r0, [sp, #0x4]
  3af4ba: 493b         	ldr	r1, [pc, #0xec]         @ 0x3af5a8 <PostGameScreen::~PostGameScreen()+0xf4>
  3af4bc: 4479         	add	r1, pc
  3af4be: 9b01         	ldr	r3, [sp, #0x4]
  3af4c0: 4a3a         	ldr	r2, [pc, #0xe8]         @ 0x3af5ac <PostGameScreen::~PostGameScreen()+0xf8>
  3af4c2: 588a         	ldr	r2, [r1, r2]
  3af4c4: 3208         	adds	r2, #0x8
  3af4c6: 601a         	str	r2, [r3]
  3af4c8: f231 f8f2    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2311e4
  3af4cc: 4602         	mov	r2, r0
  3af4ce: 9b01         	ldr	r3, [sp, #0x4]
  3af4d0: 4610         	mov	r0, r2
  3af4d2: 4619         	mov	r1, r3
  3af4d4: f231 fa24    	bl	0x5e0920 <cocos2d::CCNotificationCenter::removeAllObservers(cocos2d::CCObject*)> @ imm = #0x231448
  3af4d8: 9b01         	ldr	r3, [sp, #0x4]
  3af4da: 4618         	mov	r0, r3
  3af4dc: 2101         	movs	r1, #0x1
  3af4de: f1e1 f8b3    	bl	0x590648 <cocos2d::CCNode::removeAllChildrenWithCleanup(bool)> @ imm = #0x1e1166
  3af4e2: 9b01         	ldr	r3, [sp, #0x4]
  3af4e4: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3af4e8: 4618         	mov	r0, r3
  3af4ea: f1e8 fce5    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1e89ca
  3af4ee: 9b01         	ldr	r3, [sp, #0x4]
  3af4f0: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3af4f4: 4618         	mov	r0, r3
  3af4f6: f1e8 fcdf    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1e89be
  3af4fa: 9b01         	ldr	r3, [sp, #0x4]
  3af4fc: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3af500: 4618         	mov	r0, r3
  3af502: f1e8 fcd9    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1e89b2
  3af506: 9b01         	ldr	r3, [sp, #0x4]
  3af508: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3af50c: 4618         	mov	r0, r3
  3af50e: f1e8 fcd3    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1e89a6
  3af512: 9b01         	ldr	r3, [sp, #0x4]
  3af514: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3af518: 4618         	mov	r0, r3
  3af51a: f1e8 fccd    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1e899a
  3af51e: 9b01         	ldr	r3, [sp, #0x4]
  3af520: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3af524: 4618         	mov	r0, r3
  3af526: f1e8 fcc7    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1e898e
  3af52a: 9b01         	ldr	r3, [sp, #0x4]
  3af52c: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3af530: 4618         	mov	r0, r3
  3af532: f1e8 fcc1    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1e8982
  3af536: 9b01         	ldr	r3, [sp, #0x4]
  3af538: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  3af53c: 4618         	mov	r0, r3
  3af53e: f1e8 fcbb    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1e8976
  3af542: 9b01         	ldr	r3, [sp, #0x4]
  3af544: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  3af548: 4618         	mov	r0, r3
  3af54a: f1e8 fcb5    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1e896a
  3af54e: 9b01         	ldr	r3, [sp, #0x4]
  3af550: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3af554: 4618         	mov	r0, r3
  3af556: f1e8 fcaf    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1e895e
  3af55a: 9b01         	ldr	r3, [sp, #0x4]
  3af55c: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3af560: 4618         	mov	r0, r3
  3af562: f1e8 fca9    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1e8952
  3af566: 9b01         	ldr	r3, [sp, #0x4]
  3af568: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3af56c: 4618         	mov	r0, r3
  3af56e: f1e8 fca3    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1e8946
  3af572: 9b01         	ldr	r3, [sp, #0x4]
  3af574: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3af578: 4618         	mov	r0, r3
  3af57a: f1e8 fc9d    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1e893a
  3af57e: 9b01         	ldr	r3, [sp, #0x4]
  3af580: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3af584: 4618         	mov	r0, r3
  3af586: f1e8 fc97    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1e892e
  3af58a: 9b01         	ldr	r3, [sp, #0x4]
  3af58c: 4618         	mov	r0, r3
  3af58e: f1e0 f959    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x1e02b2
  3af592: 2300         	movs	r3, #0x0
  3af594: 2b00         	cmp	r3, #0x0
  3af596: d002         	beq	0x3af59e <PostGameScreen::~PostGameScreen()+0xea> @ imm = #0x4
  3af598: 9801         	ldr	r0, [sp, #0x4]
  3af59a: f3d8 fd83    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3d8b06
  3af59e: 9b01         	ldr	r3, [sp, #0x4]
  3af5a0: 4618         	mov	r0, r3
  3af5a2: b003         	add	sp, #0xc
  3af5a4: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3af5a7); words below are literal-pool data ---
  3af5a8: 354c         	adds	r5, #0x4c
  3af5aa: 0058         	lsls	r0, r3, #0x1
  3af5ac: dde8         	ble	0x3af580 <PostGameScreen::~PostGameScreen()+0xcc> @ imm = #-0x30
  3af5ae: ffff b500    	<unknown>

// ==== PostGameScreen::~PostGameScreen
//      file offset 0x3af5b0 (= ELF address; Ghidra 0x3bf5b0), 28 bytes, Thumb-2
  3af5b0: b500         	push	{lr}
  3af5b2: b083         	sub	sp, #0xc
  3af5b4: 9001         	str	r0, [sp, #0x4]
  3af5b6: 9801         	ldr	r0, [sp, #0x4]
  3af5b8: f7ff ff7c    	bl	0x3af4b4 <PostGameScreen::~PostGameScreen()> @ imm = #-0x108
  3af5bc: 9801         	ldr	r0, [sp, #0x4]
  3af5be: f3d8 fd71    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3d8ae2
  3af5c2: 9b01         	ldr	r3, [sp, #0x4]
  3af5c4: 4618         	mov	r0, r3
  3af5c6: b003         	add	sp, #0xc
  3af5c8: f85d fb04    	ldr	pc, [sp], #4

// ==== PostGameScreen::onOK
//      file offset 0x3af5cc (= ELF address; Ghidra 0x3bf5cc), 64 bytes, Thumb-2
  3af5cc: b500         	push	{lr}
  3af5ce: b083         	sub	sp, #0xc
  3af5d0: 9001         	str	r0, [sp, #0x4]
  3af5d2: 9100         	str	r1, [sp]
  3af5d4: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x3af600 <PostGameScreen::onOK(cocos2d::CCObject*)+0x34>
  3af5d6: 447a         	add	r2, pc
  3af5d8: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x3af604 <PostGameScreen::onOK(cocos2d::CCObject*)+0x38>
  3af5da: 58d3         	ldr	r3, [r2, r3]
  3af5dc: 681b         	ldr	r3, [r3]
  3af5de: 4618         	mov	r0, r3
  3af5e0: 2104         	movs	r1, #0x4
  3af5e2: f048 fbed    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x487da
  3af5e6: f231 f863    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2310c6
  3af5ea: 4603         	mov	r3, r0
  3af5ec: 4618         	mov	r0, r3
  3af5ee: 4b06         	ldr	r3, [pc, #0x18]         @ 0x3af608 <PostGameScreen::onOK(cocos2d::CCObject*)+0x3c>
  3af5f0: 447b         	add	r3, pc
  3af5f2: 4619         	mov	r1, r3
  3af5f4: 2200         	movs	r2, #0x0
  3af5f6: f231 fa99    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x231532
  3af5fa: b003         	add	sp, #0xc
  3af5fc: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3af5ff); words below are literal-pool data ---
  3af600: 3432         	adds	r4, #0x32
  3af602: 0058         	lsls	r0, r3, #0x1
  3af604: d730         	bvc	0x3af668 <PostGameScreen::setWinnerLabel()+0x5c> @ imm = #0x60
  3af606: ffff 4364    	<unknown>
  3af60a: 0042         	lsls	r2, r0, #0x1

// ==== PostGameScreen::setWinnerLabel
//      file offset 0x3af60c (= ELF address; Ghidra 0x3bf60c), 808 bytes, Thumb-2
  3af60c: b570         	push	{r4, r5, r6, lr}
  3af60e: b08a         	sub	sp, #0x28
  3af610: 9001         	str	r0, [sp, #0x4]
  3af612: 4cc2         	ldr	r4, [pc, #0x308]        @ 0x3af91c <PostGameScreen::setWinnerLabel()+0x310>
  3af614: 447c         	add	r4, pc
  3af616: 2300         	movs	r3, #0x0
  3af618: f88d 300a    	strb.w	r3, [sp, #0xa]
  3af61c: 2300         	movs	r3, #0x0
  3af61e: f88d 300b    	strb.w	r3, [sp, #0xb]
  3af622: 9b01         	ldr	r3, [sp, #0x4]
  3af624: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3af628: 4618         	mov	r0, r3
  3af62a: 2100         	movs	r1, #0x0
  3af62c: f025 ffa2    	bl	0x3d5574 <ScoreList::getScoreRowAt(int)> @ imm = #0x25f44
  3af630: 4603         	mov	r3, r0
  3af632: 9304         	str	r3, [sp, #0x10]
  3af634: 9b01         	ldr	r3, [sp, #0x4]
  3af636: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3af63a: 4618         	mov	r0, r3
  3af63c: 2101         	movs	r1, #0x1
  3af63e: f025 ff99    	bl	0x3d5574 <ScoreList::getScoreRowAt(int)> @ imm = #0x25f32
  3af642: 4603         	mov	r3, r0
  3af644: 9305         	str	r3, [sp, #0x14]
  3af646: 9b01         	ldr	r3, [sp, #0x4]
  3af648: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3af64c: 4618         	mov	r0, r3
  3af64e: 2100         	movs	r1, #0x0
  3af650: f026 f81c    	bl	0x3d568c <ScoreList::getTeamRowAt(int)> @ imm = #0x26038
  3af654: 4603         	mov	r3, r0
  3af656: 9306         	str	r3, [sp, #0x18]
  3af658: 9b01         	ldr	r3, [sp, #0x4]
  3af65a: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3af65e: 4618         	mov	r0, r3
  3af660: 2101         	movs	r1, #0x1
  3af662: f026 f813    	bl	0x3d568c <ScoreList::getTeamRowAt(int)> @ imm = #0x26026
  3af666: 4603         	mov	r3, r0
  3af668: 9307         	str	r3, [sp, #0x1c]
  3af66a: 9b04         	ldr	r3, [sp, #0x10]
  3af66c: 2b00         	cmp	r3, #0x0
  3af66e: d100         	bne	0x3af672 <PostGameScreen::setWinnerLabel()+0x66> @ imm = #0x0
  3af670: e152         	b	0x3af918 <PostGameScreen::setWinnerLabel()+0x30c> @ imm = #0x2a4
  3af672: 9b06         	ldr	r3, [sp, #0x18]
  3af674: 2b00         	cmp	r3, #0x0
  3af676: d00a         	beq	0x3af68e <PostGameScreen::setWinnerLabel()+0x82> @ imm = #0x14
  3af678: 9b06         	ldr	r3, [sp, #0x18]
  3af67a: f8d3 20ec    	ldr.w	r2, [r3, #0xec]
  3af67e: 9b04         	ldr	r3, [sp, #0x10]
  3af680: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3af684: 429a         	cmp	r2, r3
  3af686: db02         	blt	0x3af68e <PostGameScreen::setWinnerLabel()+0x82> @ imm = #0x4
  3af688: 2301         	movs	r3, #0x1
  3af68a: f88d 300b    	strb.w	r3, [sp, #0xb]
  3af68e: f89d 300b    	ldrb.w	r3, [sp, #0xb]
  3af692: 2b00         	cmp	r3, #0x0
  3af694: d012         	beq	0x3af6bc <PostGameScreen::setWinnerLabel()+0xb0> @ imm = #0x24
  3af696: 9b06         	ldr	r3, [sp, #0x18]
  3af698: 2b00         	cmp	r3, #0x0
  3af69a: d00f         	beq	0x3af6bc <PostGameScreen::setWinnerLabel()+0xb0> @ imm = #0x1e
  3af69c: 9b06         	ldr	r3, [sp, #0x18]
  3af69e: f8d3 20ec    	ldr.w	r2, [r3, #0xec]
  3af6a2: 9b04         	ldr	r3, [sp, #0x10]
  3af6a4: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3af6a8: 429a         	cmp	r2, r3
  3af6aa: d107         	bne	0x3af6bc <PostGameScreen::setWinnerLabel()+0xb0> @ imm = #0xe
  3af6ac: 9b04         	ldr	r3, [sp, #0x10]
  3af6ae: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3af6b2: 2b00         	cmp	r3, #0x0
  3af6b4: d102         	bne	0x3af6bc <PostGameScreen::setWinnerLabel()+0xb0> @ imm = #0x4
  3af6b6: 2301         	movs	r3, #0x1
  3af6b8: f88d 300a    	strb.w	r3, [sp, #0xa]
  3af6bc: f89d 300b    	ldrb.w	r3, [sp, #0xb]
  3af6c0: 2b00         	cmp	r3, #0x0
  3af6c2: d015         	beq	0x3af6f0 <PostGameScreen::setWinnerLabel()+0xe4> @ imm = #0x2a
  3af6c4: 9b06         	ldr	r3, [sp, #0x18]
  3af6c6: 2b00         	cmp	r3, #0x0
  3af6c8: d012         	beq	0x3af6f0 <PostGameScreen::setWinnerLabel()+0xe4> @ imm = #0x24
  3af6ca: 9b05         	ldr	r3, [sp, #0x14]
  3af6cc: 2b00         	cmp	r3, #0x0
  3af6ce: d00f         	beq	0x3af6f0 <PostGameScreen::setWinnerLabel()+0xe4> @ imm = #0x1e
  3af6d0: 9b06         	ldr	r3, [sp, #0x18]
  3af6d2: f8d3 20ec    	ldr.w	r2, [r3, #0xec]
  3af6d6: 9b05         	ldr	r3, [sp, #0x14]
  3af6d8: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3af6dc: 429a         	cmp	r2, r3
  3af6de: d107         	bne	0x3af6f0 <PostGameScreen::setWinnerLabel()+0xe4> @ imm = #0xe
  3af6e0: 9b05         	ldr	r3, [sp, #0x14]
  3af6e2: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3af6e6: 2b00         	cmp	r3, #0x0
  3af6e8: d102         	bne	0x3af6f0 <PostGameScreen::setWinnerLabel()+0xe4> @ imm = #0x4
  3af6ea: 2301         	movs	r3, #0x1
  3af6ec: f88d 300a    	strb.w	r3, [sp, #0xa]
  3af6f0: f89d 300b    	ldrb.w	r3, [sp, #0xb]
  3af6f4: 2b00         	cmp	r3, #0x0
  3af6f6: d010         	beq	0x3af71a <PostGameScreen::setWinnerLabel()+0x10e> @ imm = #0x20
  3af6f8: 9b06         	ldr	r3, [sp, #0x18]
  3af6fa: 2b00         	cmp	r3, #0x0
  3af6fc: d00d         	beq	0x3af71a <PostGameScreen::setWinnerLabel()+0x10e> @ imm = #0x1a
  3af6fe: 9b07         	ldr	r3, [sp, #0x1c]
  3af700: 2b00         	cmp	r3, #0x0
  3af702: d00a         	beq	0x3af71a <PostGameScreen::setWinnerLabel()+0x10e> @ imm = #0x14
  3af704: 9b06         	ldr	r3, [sp, #0x18]
  3af706: f8d3 20ec    	ldr.w	r2, [r3, #0xec]
  3af70a: 9b07         	ldr	r3, [sp, #0x1c]
  3af70c: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3af710: 429a         	cmp	r2, r3
  3af712: d102         	bne	0x3af71a <PostGameScreen::setWinnerLabel()+0x10e> @ imm = #0x4
  3af714: 2301         	movs	r3, #0x1
  3af716: f88d 300a    	strb.w	r3, [sp, #0xa]
  3af71a: f89d 300b    	ldrb.w	r3, [sp, #0xb]
  3af71e: f083 0301    	eor	r3, r3, #0x1
  3af722: b2db         	uxtb	r3, r3
  3af724: 2b00         	cmp	r3, #0x0
  3af726: d012         	beq	0x3af74e <PostGameScreen::setWinnerLabel()+0x142> @ imm = #0x24
  3af728: 9b06         	ldr	r3, [sp, #0x18]
  3af72a: 2b00         	cmp	r3, #0x0
  3af72c: d00f         	beq	0x3af74e <PostGameScreen::setWinnerLabel()+0x142> @ imm = #0x1e
  3af72e: 9b04         	ldr	r3, [sp, #0x10]
  3af730: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3af734: 2b00         	cmp	r3, #0x0
  3af736: d10a         	bne	0x3af74e <PostGameScreen::setWinnerLabel()+0x142> @ imm = #0x14
  3af738: 9b04         	ldr	r3, [sp, #0x10]
  3af73a: f8d3 2108    	ldr.w	r2, [r3, #0x108]
  3af73e: 9b06         	ldr	r3, [sp, #0x18]
  3af740: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3af744: 429a         	cmp	r2, r3
  3af746: d102         	bne	0x3af74e <PostGameScreen::setWinnerLabel()+0x142> @ imm = #0x4
  3af748: 2301         	movs	r3, #0x1
  3af74a: f88d 300a    	strb.w	r3, [sp, #0xa]
  3af74e: f89d 300b    	ldrb.w	r3, [sp, #0xb]
  3af752: f083 0301    	eor	r3, r3, #0x1
  3af756: b2db         	uxtb	r3, r3
  3af758: 2b00         	cmp	r3, #0x0
  3af75a: d017         	beq	0x3af78c <PostGameScreen::setWinnerLabel()+0x180> @ imm = #0x2e
  3af75c: 9b05         	ldr	r3, [sp, #0x14]
  3af75e: 2b00         	cmp	r3, #0x0
  3af760: d014         	beq	0x3af78c <PostGameScreen::setWinnerLabel()+0x180> @ imm = #0x28
  3af762: 9b05         	ldr	r3, [sp, #0x14]
  3af764: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3af768: 2b00         	cmp	r3, #0x0
  3af76a: d10f         	bne	0x3af78c <PostGameScreen::setWinnerLabel()+0x180> @ imm = #0x1e
  3af76c: 9b04         	ldr	r3, [sp, #0x10]
  3af76e: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3af772: 2b00         	cmp	r3, #0x0
  3af774: d10a         	bne	0x3af78c <PostGameScreen::setWinnerLabel()+0x180> @ imm = #0x14
  3af776: 9b04         	ldr	r3, [sp, #0x10]
  3af778: f8d3 2108    	ldr.w	r2, [r3, #0x108]
  3af77c: 9b05         	ldr	r3, [sp, #0x14]
  3af77e: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3af782: 429a         	cmp	r2, r3
  3af784: d102         	bne	0x3af78c <PostGameScreen::setWinnerLabel()+0x180> @ imm = #0x4
  3af786: 2301         	movs	r3, #0x1
  3af788: f88d 300a    	strb.w	r3, [sp, #0xa]
  3af78c: f89d 300a    	ldrb.w	r3, [sp, #0xa]
  3af790: 2b00         	cmp	r3, #0x0
  3af792: d02f         	beq	0x3af7f4 <PostGameScreen::setWinnerLabel()+0x1e8> @ imm = #0x5e
  3af794: 9b01         	ldr	r3, [sp, #0x4]
  3af796: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3af79a: 681b         	ldr	r3, [r3]
  3af79c: f503 730f    	add.w	r3, r3, #0x23c
  3af7a0: 681b         	ldr	r3, [r3]
  3af7a2: 9a01         	ldr	r2, [sp, #0x4]
  3af7a4: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  3af7a8: 4610         	mov	r0, r2
  3af7aa: 4a5d         	ldr	r2, [pc, #0x174]        @ 0x3af920 <PostGameScreen::setWinnerLabel()+0x314>
  3af7ac: 447a         	add	r2, pc
  3af7ae: 4611         	mov	r1, r2
  3af7b0: 4798         	blx	r3
  3af7b2: 9b01         	ldr	r3, [sp, #0x4]
  3af7b4: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3af7b8: 681b         	ldr	r3, [r3]
  3af7ba: f503 73de    	add.w	r3, r3, #0x1bc
  3af7be: 681c         	ldr	r4, [r3]
  3af7c0: 9b01         	ldr	r3, [sp, #0x4]
  3af7c2: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3af7c6: 461d         	mov	r5, r3
  3af7c8: 20ff         	movs	r0, #0xff
  3af7ca: 21ff         	movs	r1, #0xff
  3af7cc: 22ff         	movs	r2, #0xff
  3af7ce: f7fd ff99    	bl	0x3ad704 <PointsLayer::onBack(cocos2d::CCObject*)+0x194> @ imm = #-0x20ce
  3af7d2: 4603         	mov	r3, r0
  3af7d4: 461a         	mov	r2, r3
  3af7d6: f88d 200c    	strb.w	r2, [sp, #0xc]
  3af7da: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3af7de: f88d 200d    	strb.w	r2, [sp, #0xd]
  3af7e2: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3af7e6: f88d 300e    	strb.w	r3, [sp, #0xe]
  3af7ea: ab03         	add	r3, sp, #0xc
  3af7ec: 4628         	mov	r0, r5
  3af7ee: 4619         	mov	r1, r3
  3af7f0: 47a0         	blx	r4
  3af7f2: e091         	b	0x3af918 <PostGameScreen::setWinnerLabel()+0x30c> @ imm = #0x122
  3af7f4: f89d 300b    	ldrb.w	r3, [sp, #0xb]
  3af7f8: 2b00         	cmp	r3, #0x0
  3af7fa: d03f         	beq	0x3af87c <PostGameScreen::setWinnerLabel()+0x270> @ imm = #0x7e
  3af7fc: 4b49         	ldr	r3, [pc, #0x124]        @ 0x3af924 <PostGameScreen::setWinnerLabel()+0x318>
  3af7fe: 58e3         	ldr	r3, [r4, r3]
  3af800: 681a         	ldr	r2, [r3]
  3af802: 9b06         	ldr	r3, [sp, #0x18]
  3af804: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3af808: 4610         	mov	r0, r2
  3af80a: 4619         	mov	r1, r3
  3af80c: f1ea fc88    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1ea910
  3af810: 4603         	mov	r3, r0
  3af812: 9308         	str	r3, [sp, #0x20]
  3af814: 9b01         	ldr	r3, [sp, #0x4]
  3af816: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3af81a: 681b         	ldr	r3, [r3]
  3af81c: f503 730f    	add.w	r3, r3, #0x23c
  3af820: 681d         	ldr	r5, [r3]
  3af822: 9b01         	ldr	r3, [sp, #0x4]
  3af824: f8d3 6110    	ldr.w	r6, [r3, #0x110]
  3af828: 9808         	ldr	r0, [sp, #0x20]
  3af82a: f1ea f87d    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1ea0fa
  3af82e: 4603         	mov	r3, r0
  3af830: 4a3d         	ldr	r2, [pc, #0xf4]         @ 0x3af928 <PostGameScreen::setWinnerLabel()+0x31c>
  3af832: 447a         	add	r2, pc
  3af834: 4610         	mov	r0, r2
  3af836: 4619         	mov	r1, r3
  3af838: f1ea f96a    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1ea2d4
  3af83c: 4603         	mov	r3, r0
  3af83e: 4618         	mov	r0, r3
  3af840: f1ea f872    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1ea0e4
  3af844: 4603         	mov	r3, r0
  3af846: 4630         	mov	r0, r6
  3af848: 4619         	mov	r1, r3
  3af84a: 47a8         	blx	r5
  3af84c: 9b01         	ldr	r3, [sp, #0x4]
  3af84e: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3af852: 681b         	ldr	r3, [r3]
  3af854: f503 73de    	add.w	r3, r3, #0x1bc
  3af858: 681d         	ldr	r5, [r3]
  3af85a: 9b01         	ldr	r3, [sp, #0x4]
  3af85c: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3af860: 4619         	mov	r1, r3
  3af862: 9b06         	ldr	r3, [sp, #0x18]
  3af864: f8d3 20f0    	ldr.w	r2, [r3, #0xf0]
  3af868: 4613         	mov	r3, r2
  3af86a: 005b         	lsls	r3, r3, #0x1
  3af86c: 4413         	add	r3, r2
  3af86e: 4a2f         	ldr	r2, [pc, #0xbc]         @ 0x3af92c <PostGameScreen::setWinnerLabel()+0x320>
  3af870: 58a2         	ldr	r2, [r4, r2]
  3af872: 4413         	add	r3, r2
  3af874: 4608         	mov	r0, r1
  3af876: 4619         	mov	r1, r3
  3af878: 47a8         	blx	r5
  3af87a: e04d         	b	0x3af918 <PostGameScreen::setWinnerLabel()+0x30c> @ imm = #0x9a
  3af87c: ab03         	add	r3, sp, #0xc
  3af87e: 4618         	mov	r0, r3
  3af880: 9904         	ldr	r1, [sp, #0x10]
  3af882: f024 ff0b    	bl	0x3d469c <ScoreRow::getPlayerName()> @ imm = #0x24e16
  3af886: ab03         	add	r3, sp, #0xc
  3af888: 4618         	mov	r0, r3
  3af88a: f005 f539    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x405a72
  3af88e: 4603         	mov	r3, r0
  3af890: 4a27         	ldr	r2, [pc, #0x9c]         @ 0x3af930 <PostGameScreen::setWinnerLabel()+0x324>
  3af892: 447a         	add	r2, pc
  3af894: 4610         	mov	r0, r2
  3af896: 4619         	mov	r1, r3
  3af898: f1ea f93a    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1ea274
  3af89c: 4603         	mov	r3, r0
  3af89e: 9309         	str	r3, [sp, #0x24]
  3af8a0: ab03         	add	r3, sp, #0xc
  3af8a2: 4618         	mov	r0, r3
  3af8a4: f006 f036    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40606c
  3af8a8: 9b01         	ldr	r3, [sp, #0x4]
  3af8aa: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3af8ae: 681b         	ldr	r3, [r3]
  3af8b0: f503 730f    	add.w	r3, r3, #0x23c
  3af8b4: 681c         	ldr	r4, [r3]
  3af8b6: 9b01         	ldr	r3, [sp, #0x4]
  3af8b8: f8d3 5110    	ldr.w	r5, [r3, #0x110]
  3af8bc: 9809         	ldr	r0, [sp, #0x24]
  3af8be: f1ea f833    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1ea066
  3af8c2: 4603         	mov	r3, r0
  3af8c4: 4628         	mov	r0, r5
  3af8c6: 4619         	mov	r1, r3
  3af8c8: 47a0         	blx	r4
  3af8ca: 9b01         	ldr	r3, [sp, #0x4]
  3af8cc: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3af8d0: 681b         	ldr	r3, [r3]
  3af8d2: f503 73de    	add.w	r3, r3, #0x1bc
  3af8d6: 681c         	ldr	r4, [r3]
  3af8d8: 9b01         	ldr	r3, [sp, #0x4]
  3af8da: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3af8de: 461d         	mov	r5, r3
  3af8e0: 20ff         	movs	r0, #0xff
  3af8e2: 21ff         	movs	r1, #0xff
  3af8e4: 22ff         	movs	r2, #0xff
  3af8e6: f7fd ff0d    	bl	0x3ad704 <PointsLayer::onBack(cocos2d::CCObject*)+0x194> @ imm = #-0x21e6
  3af8ea: 4603         	mov	r3, r0
  3af8ec: 461a         	mov	r2, r3
  3af8ee: f88d 200c    	strb.w	r2, [sp, #0xc]
  3af8f2: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3af8f6: f88d 200d    	strb.w	r2, [sp, #0xd]
  3af8fa: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3af8fe: f88d 300e    	strb.w	r3, [sp, #0xe]
  3af902: ab03         	add	r3, sp, #0xc
  3af904: 4628         	mov	r0, r5
  3af906: 4619         	mov	r1, r3
  3af908: 47a0         	blx	r4
  3af90a: e005         	b	0x3af918 <PostGameScreen::setWinnerLabel()+0x30c> @ imm = #0xa
  3af90c: ab03         	add	r3, sp, #0xc
  3af90e: 4618         	mov	r0, r3
  3af910: f006 f000    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x406000
  3af914: f3d8 fbca    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3d8794
  3af918: b00a         	add	sp, #0x28
  3af91a: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3af91b); words below are literal-pool data ---
  3af91c: 33f4         	adds	r3, #0xf4
  3af91e: 0058         	lsls	r0, r3, #0x1
  3af920: 41b8         	sbcs	r0, r7
  3af922: 0042         	lsls	r2, r0, #0x1
  3af924: d7bc         	bvc	0x3af8a0 <PostGameScreen::setWinnerLabel()+0x294> @ imm = #-0x88
  3af926: ffff 413e    	vsra.u32	d20, d30, #0x1
  3af92a: 0042         	lsls	r2, r0, #0x1
  3af92c: d7b8         	bvc	0x3af8a0 <PostGameScreen::setWinnerLabel()+0x294> @ imm = #-0x90
  3af92e: ffff 40ee    	<unknown>
  3af932: 0042         	lsls	r2, r0, #0x1

// ==== PostGameScreen::isHostMVP
//      file offset 0x3af934 (= ELF address; Ghidra 0x3bf934), 834 bytes, Thumb-2
  3af934: b530         	push	{r4, r5, lr}
  3af936: b093         	sub	sp, #0x4c
  3af938: 9001         	str	r0, [sp, #0x4]
  3af93a: 9b01         	ldr	r3, [sp, #0x4]
  3af93c: 2200         	movs	r2, #0x0
  3af93e: f8c3 2120    	str.w	r2, [r3, #0x120]
  3af942: f022 fcc1    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #0x22982
  3af946: 4603         	mov	r3, r0
  3af948: 69db         	ldr	r3, [r3, #0x1c]
  3af94a: 4618         	mov	r0, r3
  3af94c: f1e4 f99e    	bl	0x593c8c <cocos2d::CCDictionary::allKeys()> @ imm = #0x1e433c
  3af950: 4603         	mov	r3, r0
  3af952: 9307         	str	r3, [sp, #0x1c]
  3af954: 2300         	movs	r3, #0x0
  3af956: 9305         	str	r3, [sp, #0x14]
  3af958: e05d         	b	0x3afa16 <PostGameScreen::isHostMVP()+0xe2> @ imm = #0xba
  3af95a: 9b05         	ldr	r3, [sp, #0x14]
  3af95c: 9807         	ldr	r0, [sp, #0x1c]
  3af95e: 4619         	mov	r1, r3
  3af960: f1ea fbde    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1ea7bc
  3af964: 4603         	mov	r3, r0
  3af966: 9308         	str	r3, [sp, #0x20]
  3af968: f022 fcae    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #0x2295c
  3af96c: 4604         	mov	r4, r0
  3af96e: 9808         	ldr	r0, [sp, #0x20]
  3af970: f1e9 ffda    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1e9fb4
  3af974: 4605         	mov	r5, r0
  3af976: ab03         	add	r3, sp, #0xc
  3af978: 4618         	mov	r0, r3
  3af97a: f3da fd3b    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3daa76
  3af97e: aa04         	add	r2, sp, #0x10
  3af980: ab03         	add	r3, sp, #0xc
  3af982: 4610         	mov	r0, r2
  3af984: 4629         	mov	r1, r5
  3af986: 461a         	mov	r2, r3
  3af988: f007 f06a    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4070d4
  3af98c: ab04         	add	r3, sp, #0x10
  3af98e: 4620         	mov	r0, r4
  3af990: 4619         	mov	r1, r3
  3af992: f022 fec1    	bl	0x3d2718 <ScoreKeeper::getKills(std::string)> @ imm = #0x22d82
  3af996: 4603         	mov	r3, r0
  3af998: 9309         	str	r3, [sp, #0x24]
  3af99a: ab04         	add	r3, sp, #0x10
  3af99c: 4618         	mov	r0, r3
  3af99e: f005 f7b9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x405f72
  3af9a2: ab03         	add	r3, sp, #0xc
  3af9a4: 4618         	mov	r0, r3
  3af9a6: f3da fd29    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3daa52
  3af9aa: f022 fc8d    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #0x2291a
  3af9ae: 4604         	mov	r4, r0
  3af9b0: 9808         	ldr	r0, [sp, #0x20]
  3af9b2: f1e9 ffb9    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1e9f72
  3af9b6: 4605         	mov	r5, r0
  3af9b8: ab03         	add	r3, sp, #0xc
  3af9ba: 4618         	mov	r0, r3
  3af9bc: f3da fd1a    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3daa34
  3af9c0: aa04         	add	r2, sp, #0x10
  3af9c2: ab03         	add	r3, sp, #0xc
  3af9c4: 4610         	mov	r0, r2
  3af9c6: 4629         	mov	r1, r5
  3af9c8: 461a         	mov	r2, r3
  3af9ca: f007 f049    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x407092
  3af9ce: ab04         	add	r3, sp, #0x10
  3af9d0: 4620         	mov	r0, r4
  3af9d2: 4619         	mov	r1, r3
  3af9d4: f022 febc    	bl	0x3d2750 <ScoreKeeper::getDeaths(std::string)> @ imm = #0x22d78
  3af9d8: 4603         	mov	r3, r0
  3af9da: 930a         	str	r3, [sp, #0x28]
  3af9dc: ab04         	add	r3, sp, #0x10
  3af9de: 4618         	mov	r0, r3
  3af9e0: f005 f798    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x405f30
  3af9e4: ab03         	add	r3, sp, #0xc
  3af9e6: 4618         	mov	r0, r3
  3af9e8: f3da fd08    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3daa10
  3af9ec: 9a09         	ldr	r2, [sp, #0x24]
  3af9ee: 9b0a         	ldr	r3, [sp, #0x28]
  3af9f0: 1ad3         	subs	r3, r2, r3
  3af9f2: 930b         	str	r3, [sp, #0x2c]
  3af9f4: 9b0b         	ldr	r3, [sp, #0x2c]
  3af9f6: ea23 73e3    	bic.w	r3, r3, r3, asr #31
  3af9fa: 930b         	str	r3, [sp, #0x2c]
  3af9fc: 9b01         	ldr	r3, [sp, #0x4]
  3af9fe: f8d3 2120    	ldr.w	r2, [r3, #0x120]
  3afa02: 9b0b         	ldr	r3, [sp, #0x2c]
  3afa04: 429a         	cmp	r2, r3
  3afa06: da03         	bge	0x3afa10 <PostGameScreen::isHostMVP()+0xdc> @ imm = #0x6
  3afa08: 9b01         	ldr	r3, [sp, #0x4]
  3afa0a: 9a0b         	ldr	r2, [sp, #0x2c]
  3afa0c: f8c3 2120    	str.w	r2, [r3, #0x120]
  3afa10: 9b05         	ldr	r3, [sp, #0x14]
  3afa12: 3301         	adds	r3, #0x1
  3afa14: 9305         	str	r3, [sp, #0x14]
  3afa16: 9c05         	ldr	r4, [sp, #0x14]
  3afa18: 9807         	ldr	r0, [sp, #0x1c]
  3afa1a: f1ea fb61    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x1ea6c2
  3afa1e: 4603         	mov	r3, r0
  3afa20: 429c         	cmp	r4, r3
  3afa22: bf2c         	ite	hs
  3afa24: 2300         	movhs	r3, #0x0
  3afa26: 2301         	movlo	r3, #0x1
  3afa28: b2db         	uxtb	r3, r3
  3afa2a: 2b00         	cmp	r3, #0x0
  3afa2c: d195         	bne	0x3af95a <PostGameScreen::isHostMVP()+0x26> @ imm = #-0xd6
  3afa2e: 9b01         	ldr	r3, [sp, #0x4]
  3afa30: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3afa34: 2b00         	cmp	r3, #0x0
  3afa36: f340 8090    	ble.w	0x3afb5a <PostGameScreen::isHostMVP()+0x226> @ imm = #0x120
  3afa3a: 2300         	movs	r3, #0x0
  3afa3c: 9306         	str	r3, [sp, #0x18]
  3afa3e: e07f         	b	0x3afb40 <PostGameScreen::isHostMVP()+0x20c> @ imm = #0xfe
  3afa40: 9b06         	ldr	r3, [sp, #0x18]
  3afa42: 9807         	ldr	r0, [sp, #0x1c]
  3afa44: 4619         	mov	r1, r3
  3afa46: f1ea fb6b    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1ea6d6
  3afa4a: 4603         	mov	r3, r0
  3afa4c: 930c         	str	r3, [sp, #0x30]
  3afa4e: f022 fc3b    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #0x22876
  3afa52: 4604         	mov	r4, r0
  3afa54: 980c         	ldr	r0, [sp, #0x30]
  3afa56: f1e9 ff67    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1e9ece
  3afa5a: 4605         	mov	r5, r0
  3afa5c: ab03         	add	r3, sp, #0xc
  3afa5e: 4618         	mov	r0, r3
  3afa60: f3da fcc8    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3da990
  3afa64: aa04         	add	r2, sp, #0x10
  3afa66: ab03         	add	r3, sp, #0xc
  3afa68: 4610         	mov	r0, r2
  3afa6a: 4629         	mov	r1, r5
  3afa6c: 461a         	mov	r2, r3
  3afa6e: f006 f7f7    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x406fee
  3afa72: ab04         	add	r3, sp, #0x10
  3afa74: 4620         	mov	r0, r4
  3afa76: 4619         	mov	r1, r3
  3afa78: f022 fe4e    	bl	0x3d2718 <ScoreKeeper::getKills(std::string)> @ imm = #0x22c9c
  3afa7c: 4603         	mov	r3, r0
  3afa7e: 930d         	str	r3, [sp, #0x34]
  3afa80: ab04         	add	r3, sp, #0x10
  3afa82: 4618         	mov	r0, r3
  3afa84: f005 f746    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x405e8c
  3afa88: ab03         	add	r3, sp, #0xc
  3afa8a: 4618         	mov	r0, r3
  3afa8c: f3da fcb6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3da96c
  3afa90: f022 fc1a    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #0x22834
  3afa94: 4604         	mov	r4, r0
  3afa96: 980c         	ldr	r0, [sp, #0x30]
  3afa98: f1e9 ff46    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1e9e8c
  3afa9c: 4605         	mov	r5, r0
  3afa9e: ab03         	add	r3, sp, #0xc
  3afaa0: 4618         	mov	r0, r3
  3afaa2: f3da fca7    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3da94e
  3afaa6: aa04         	add	r2, sp, #0x10
  3afaa8: ab03         	add	r3, sp, #0xc
  3afaaa: 4610         	mov	r0, r2
  3afaac: 4629         	mov	r1, r5
  3afaae: 461a         	mov	r2, r3
  3afab0: f006 f7d6    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x406fac
  3afab4: ab04         	add	r3, sp, #0x10
  3afab6: 4620         	mov	r0, r4
  3afab8: 4619         	mov	r1, r3
  3afaba: f022 fe49    	bl	0x3d2750 <ScoreKeeper::getDeaths(std::string)> @ imm = #0x22c92
  3afabe: 4603         	mov	r3, r0
  3afac0: 930e         	str	r3, [sp, #0x38]
  3afac2: ab04         	add	r3, sp, #0x10
  3afac4: 4618         	mov	r0, r3
  3afac6: f005 f725    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x405e4a
  3afaca: ab03         	add	r3, sp, #0xc
  3afacc: 4618         	mov	r0, r3
  3aface: f3da fc95    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3da92a
  3afad2: 9a0d         	ldr	r2, [sp, #0x34]
  3afad4: 9b0e         	ldr	r3, [sp, #0x38]
  3afad6: 1ad3         	subs	r3, r2, r3
  3afad8: 930f         	str	r3, [sp, #0x3c]
  3afada: 9b0f         	ldr	r3, [sp, #0x3c]
  3afadc: ea23 73e3    	bic.w	r3, r3, r3, asr #31
  3afae0: 930f         	str	r3, [sp, #0x3c]
  3afae2: 9b01         	ldr	r3, [sp, #0x4]
  3afae4: f8d3 2120    	ldr.w	r2, [r3, #0x120]
  3afae8: 9b0f         	ldr	r3, [sp, #0x3c]
  3afaea: 429a         	cmp	r2, r3
  3afaec: dc25         	bgt	0x3afb3a <PostGameScreen::isHostMVP()+0x206> @ imm = #0x4a
  3afaee: 9b01         	ldr	r3, [sp, #0x4]
  3afaf0: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3afaf4: f8d3 40e4    	ldr.w	r4, [r3, #0xe4]
  3afaf8: 980c         	ldr	r0, [sp, #0x30]
  3afafa: f1e9 ff15    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1e9e2a
  3afafe: 4605         	mov	r5, r0
  3afb00: ab03         	add	r3, sp, #0xc
  3afb02: 4618         	mov	r0, r3
  3afb04: f3da fc76    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3da8ec
  3afb08: aa04         	add	r2, sp, #0x10
  3afb0a: ab03         	add	r3, sp, #0xc
  3afb0c: 4610         	mov	r0, r2
  3afb0e: 4629         	mov	r1, r5
  3afb10: 461a         	mov	r2, r3
  3afb12: f006 f7a5    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x406f4a
  3afb16: ab04         	add	r3, sp, #0x10
  3afb18: 4620         	mov	r0, r4
  3afb1a: 4619         	mov	r1, r3
  3afb1c: f1e4 f9e8    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x1e43d0
  3afb20: 4603         	mov	r3, r0
  3afb22: 9310         	str	r3, [sp, #0x40]
  3afb24: ab04         	add	r3, sp, #0x10
  3afb26: 4618         	mov	r0, r3
  3afb28: f005 f6f4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x405de8
  3afb2c: ab03         	add	r3, sp, #0xc
  3afb2e: 4618         	mov	r0, r3
  3afb30: f3da fc64    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3da8c8
  3afb34: 9810         	ldr	r0, [sp, #0x40]
  3afb36: f024 fe93    	bl	0x3d4860 <ScoreRow::setMVP()> @ imm = #0x24d26
  3afb3a: 9b06         	ldr	r3, [sp, #0x18]
  3afb3c: 3301         	adds	r3, #0x1
  3afb3e: 9306         	str	r3, [sp, #0x18]
  3afb40: 9c06         	ldr	r4, [sp, #0x18]
  3afb42: 9807         	ldr	r0, [sp, #0x1c]
  3afb44: f1ea facc    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x1ea598
  3afb48: 4603         	mov	r3, r0
  3afb4a: 429c         	cmp	r4, r3
  3afb4c: bf2c         	ite	hs
  3afb4e: 2300         	movhs	r3, #0x0
  3afb50: 2301         	movlo	r3, #0x1
  3afb52: b2db         	uxtb	r3, r3
  3afb54: 2b00         	cmp	r3, #0x0
  3afb56: f47f af73    	bne.w	0x3afa40 <PostGameScreen::isHostMVP()+0x10c> @ imm = #-0x11a
  3afb5a: f7c7 fff1    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x3801e
  3afb5e: 4603         	mov	r3, r0
  3afb60: aa02         	add	r2, sp, #0x8
  3afb62: 4610         	mov	r0, r2
  3afb64: 4619         	mov	r1, r3
  3afb66: f7c9 ffef    	bl	0x379b48 <NetworkManager::getHostPeerID()> @ imm = #-0x36022
  3afb6a: f022 fbad    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #0x2275a
  3afb6e: 4604         	mov	r4, r0
  3afb70: aa03         	add	r2, sp, #0xc
  3afb72: ab02         	add	r3, sp, #0x8
  3afb74: 4610         	mov	r0, r2
  3afb76: 4619         	mov	r1, r3
  3afb78: f006 f4b6    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x40696c
  3afb7c: ab03         	add	r3, sp, #0xc
  3afb7e: 4620         	mov	r0, r4
  3afb80: 4619         	mov	r1, r3
  3afb82: f022 fdc9    	bl	0x3d2718 <ScoreKeeper::getKills(std::string)> @ imm = #0x22b92
  3afb86: 4604         	mov	r4, r0
  3afb88: f022 fb9e    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #0x2273c
  3afb8c: 4605         	mov	r5, r0
  3afb8e: aa04         	add	r2, sp, #0x10
  3afb90: ab02         	add	r3, sp, #0x8
  3afb92: 4610         	mov	r0, r2
  3afb94: 4619         	mov	r1, r3
  3afb96: f006 f4a7    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x40694e
  3afb9a: ab04         	add	r3, sp, #0x10
  3afb9c: 4628         	mov	r0, r5
  3afb9e: 4619         	mov	r1, r3
  3afba0: f022 fdd6    	bl	0x3d2750 <ScoreKeeper::getDeaths(std::string)> @ imm = #0x22bac
  3afba4: 4603         	mov	r3, r0
  3afba6: 1ae3         	subs	r3, r4, r3
  3afba8: 9311         	str	r3, [sp, #0x44]
  3afbaa: ab04         	add	r3, sp, #0x10
  3afbac: 4618         	mov	r0, r3
  3afbae: f005 f6b1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x405d62
  3afbb2: ab03         	add	r3, sp, #0xc
  3afbb4: 4618         	mov	r0, r3
  3afbb6: f005 f6ad    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x405d5a
  3afbba: 9b11         	ldr	r3, [sp, #0x44]
  3afbbc: 2b00         	cmp	r3, #0x0
  3afbbe: dc01         	bgt	0x3afbc4 <PostGameScreen::isHostMVP()+0x290> @ imm = #0x2
  3afbc0: 2400         	movs	r4, #0x0
  3afbc2: e008         	b	0x3afbd6 <PostGameScreen::isHostMVP()+0x2a2> @ imm = #0x10
  3afbc4: 9b01         	ldr	r3, [sp, #0x4]
  3afbc6: f8d3 2120    	ldr.w	r2, [r3, #0x120]
  3afbca: 9b11         	ldr	r3, [sp, #0x44]
  3afbcc: 429a         	cmp	r2, r3
  3afbce: d101         	bne	0x3afbd4 <PostGameScreen::isHostMVP()+0x2a0> @ imm = #0x2
  3afbd0: 2401         	movs	r4, #0x1
  3afbd2: e000         	b	0x3afbd6 <PostGameScreen::isHostMVP()+0x2a2> @ imm = #0x0
  3afbd4: 2400         	movs	r4, #0x0
  3afbd6: ab02         	add	r3, sp, #0x8
  3afbd8: 4618         	mov	r0, r3
  3afbda: f005 f69b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x405d36
  3afbde: 4623         	mov	r3, r4
  3afbe0: e046         	b	0x3afc70 <PostGameScreen::isHostMVP()+0x33c> @ imm = #0x8c
  3afbe2: ab04         	add	r3, sp, #0x10
  3afbe4: 4618         	mov	r0, r3
  3afbe6: f005 f695    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x405d2a
  3afbea: e7ff         	b	0x3afbec <PostGameScreen::isHostMVP()+0x2b8> @ imm = #-0x2
  3afbec: ab03         	add	r3, sp, #0xc
  3afbee: 4618         	mov	r0, r3
  3afbf0: f3da fc04    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3da808
  3afbf4: f3d8 fa5a    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3d84b4
  3afbf8: ab04         	add	r3, sp, #0x10
  3afbfa: 4618         	mov	r0, r3
  3afbfc: f005 f68a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x405d14
  3afc00: e7ff         	b	0x3afc02 <PostGameScreen::isHostMVP()+0x2ce> @ imm = #-0x2
  3afc02: ab03         	add	r3, sp, #0xc
  3afc04: 4618         	mov	r0, r3
  3afc06: f3da fbf9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3da7f2
  3afc0a: f3d8 fa4f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3d849e
  3afc0e: ab04         	add	r3, sp, #0x10
  3afc10: 4618         	mov	r0, r3
  3afc12: f005 f67f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x405cfe
  3afc16: e7ff         	b	0x3afc18 <PostGameScreen::isHostMVP()+0x2e4> @ imm = #-0x2
  3afc18: ab03         	add	r3, sp, #0xc
  3afc1a: 4618         	mov	r0, r3
  3afc1c: f3da fbee    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3da7dc
  3afc20: f3d8 fa44    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3d8488
  3afc24: ab04         	add	r3, sp, #0x10
  3afc26: 4618         	mov	r0, r3
  3afc28: f005 f674    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x405ce8
  3afc2c: e7ff         	b	0x3afc2e <PostGameScreen::isHostMVP()+0x2fa> @ imm = #-0x2
  3afc2e: ab03         	add	r3, sp, #0xc
  3afc30: 4618         	mov	r0, r3
  3afc32: f3da fbe3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3da7c6
  3afc36: f3d8 fa39    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3d8472
  3afc3a: ab04         	add	r3, sp, #0x10
  3afc3c: 4618         	mov	r0, r3
  3afc3e: f005 f669    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x405cd2
  3afc42: e7ff         	b	0x3afc44 <PostGameScreen::isHostMVP()+0x310> @ imm = #-0x2
  3afc44: ab03         	add	r3, sp, #0xc
  3afc46: 4618         	mov	r0, r3
  3afc48: f3da fbd8    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3da7b0
  3afc4c: f3d8 fa2e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3d845c
  3afc50: ab04         	add	r3, sp, #0x10
  3afc52: 4618         	mov	r0, r3
  3afc54: f005 f65e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x405cbc
  3afc58: e7ff         	b	0x3afc5a <PostGameScreen::isHostMVP()+0x326> @ imm = #-0x2
  3afc5a: ab03         	add	r3, sp, #0xc
  3afc5c: 4618         	mov	r0, r3
  3afc5e: f005 f659    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x405cb2
  3afc62: e7ff         	b	0x3afc64 <PostGameScreen::isHostMVP()+0x330> @ imm = #-0x2
  3afc64: ab02         	add	r3, sp, #0x8
  3afc66: 4618         	mov	r0, r3
  3afc68: f005 f654    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x405ca8
  3afc6c: f3d8 fa1e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3d843c
  3afc70: 4618         	mov	r0, r3
  3afc72: b013         	add	sp, #0x4c
  3afc74: bd30         	pop	{r4, r5, pc}

// ==== PostGameScreen::showPromotion
//      file offset 0x3afc78 (= ELF address; Ghidra 0x3bfc78), 224 bytes, Thumb-2
  3afc78: b570         	push	{r4, r5, r6, lr}
  3afc7a: b084         	sub	sp, #0x10
  3afc7c: 9001         	str	r0, [sp, #0x4]
  3afc7e: 4e33         	ldr	r6, [pc, #0xcc]         @ 0x3afd4c <PostGameScreen::showPromotion()+0xd4>
  3afc80: 447e         	add	r6, pc
  3afc82: 9b01         	ldr	r3, [sp, #0x4]
  3afc84: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3afc88: 681b         	ldr	r3, [r3]
  3afc8a: 3390         	adds	r3, #0x90
  3afc8c: 681b         	ldr	r3, [r3]
  3afc8e: 9a01         	ldr	r2, [sp, #0x4]
  3afc90: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  3afc94: 4610         	mov	r0, r2
  3afc96: 2101         	movs	r1, #0x1
  3afc98: 4798         	blx	r3
  3afc9a: 9b01         	ldr	r3, [sp, #0x4]
  3afc9c: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3afca0: 681b         	ldr	r3, [r3]
  3afca2: f503 73fc    	add.w	r3, r3, #0x1f8
  3afca6: 681b         	ldr	r3, [r3]
  3afca8: 9a01         	ldr	r2, [sp, #0x4]
  3afcaa: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  3afcae: 4610         	mov	r0, r2
  3afcb0: 4a27         	ldr	r2, [pc, #0x9c]         @ 0x3afd50 <PostGameScreen::showPromotion()+0xd8>
  3afcb2: 447a         	add	r2, pc
  3afcb4: 4611         	mov	r1, r2
  3afcb6: 4798         	blx	r3
  3afcb8: 9b01         	ldr	r3, [sp, #0x4]
  3afcba: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3afcbe: 681b         	ldr	r3, [r3]
  3afcc0: f503 73de    	add.w	r3, r3, #0x1bc
  3afcc4: 681c         	ldr	r4, [r3]
  3afcc6: 9b01         	ldr	r3, [sp, #0x4]
  3afcc8: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3afccc: 461d         	mov	r5, r3
  3afcce: 2000         	movs	r0, #0x0
  3afcd0: 21ff         	movs	r1, #0xff
  3afcd2: 2200         	movs	r2, #0x0
  3afcd4: f7fd fd16    	bl	0x3ad704 <PointsLayer::onBack(cocos2d::CCObject*)+0x194> @ imm = #-0x25d4
  3afcd8: 4603         	mov	r3, r0
  3afcda: 461a         	mov	r2, r3
  3afcdc: f88d 200c    	strb.w	r2, [sp, #0xc]
  3afce0: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3afce4: f88d 200d    	strb.w	r2, [sp, #0xd]
  3afce8: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3afcec: f88d 300e    	strb.w	r3, [sp, #0xe]
  3afcf0: ab03         	add	r3, sp, #0xc
  3afcf2: 4628         	mov	r0, r5
  3afcf4: 4619         	mov	r1, r3
  3afcf6: 47a0         	blx	r4
  3afcf8: 9b01         	ldr	r3, [sp, #0x4]
  3afcfa: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3afcfe: 681b         	ldr	r3, [r3]
  3afd00: 3390         	adds	r3, #0x90
  3afd02: 681b         	ldr	r3, [r3]
  3afd04: 9a01         	ldr	r2, [sp, #0x4]
  3afd06: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  3afd0a: 4610         	mov	r0, r2
  3afd0c: 2101         	movs	r1, #0x1
  3afd0e: 4798         	blx	r3
  3afd10: 9b01         	ldr	r3, [sp, #0x4]
  3afd12: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3afd16: 681b         	ldr	r3, [r3]
  3afd18: f503 7302    	add.w	r3, r3, #0x208
  3afd1c: 681c         	ldr	r4, [r3]
  3afd1e: 9b01         	ldr	r3, [sp, #0x4]
  3afd20: f8d3 511c    	ldr.w	r5, [r3, #0x11c]
  3afd24: f075 f9c8    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #0x75390
  3afd28: 4603         	mov	r3, r0
  3afd2a: 4618         	mov	r0, r3
  3afd2c: f075 fb5a    	bl	0x4253e4 <LeaderBoardBridge::calcPlayerExp()> @ imm = #0x756b4
  3afd30: 4603         	mov	r3, r0
  3afd32: 4618         	mov	r0, r3
  3afd34: f7fe fb7e    	bl	0x3ae434 <PointsLayer::onBack(cocos2d::CCObject*)+0xec4> @ imm = #-0x1904
  3afd38: 4603         	mov	r3, r0
  3afd3a: 011a         	lsls	r2, r3, #0x4
  3afd3c: 4b05         	ldr	r3, [pc, #0x14]         @ 0x3afd54 <PostGameScreen::showPromotion()+0xdc>
  3afd3e: 58f3         	ldr	r3, [r6, r3]
  3afd40: 4413         	add	r3, r2
  3afd42: 4628         	mov	r0, r5
  3afd44: 4619         	mov	r1, r3
  3afd46: 47a0         	blx	r4
  3afd48: b004         	add	sp, #0x10
  3afd4a: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3afd4b); words below are literal-pool data ---
  3afd4c: 2d88         	cmp	r5, #0x88
  3afd4e: 0058         	lsls	r0, r3, #0x1
  3afd50: 3cda         	subs	r4, #0xda
  3afd52: 0042         	lsls	r2, r0, #0x1
  3afd54: d7c0         	bvc	0x3afcd8 <PostGameScreen::showPromotion()+0x60> @ imm = #-0x80
  3afd56: ffff b570    	<unknown>

// ==== PostGameScreen::showDemotion
//      file offset 0x3afd58 (= ELF address; Ghidra 0x3bfd58), 224 bytes, Thumb-2
  3afd58: b570         	push	{r4, r5, r6, lr}
  3afd5a: b084         	sub	sp, #0x10
  3afd5c: 9001         	str	r0, [sp, #0x4]
  3afd5e: 4e33         	ldr	r6, [pc, #0xcc]         @ 0x3afe2c <PostGameScreen::showDemotion()+0xd4>
  3afd60: 447e         	add	r6, pc
  3afd62: 9b01         	ldr	r3, [sp, #0x4]
  3afd64: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3afd68: 681b         	ldr	r3, [r3]
  3afd6a: 3390         	adds	r3, #0x90
  3afd6c: 681b         	ldr	r3, [r3]
  3afd6e: 9a01         	ldr	r2, [sp, #0x4]
  3afd70: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  3afd74: 4610         	mov	r0, r2
  3afd76: 2101         	movs	r1, #0x1
  3afd78: 4798         	blx	r3
  3afd7a: 9b01         	ldr	r3, [sp, #0x4]
  3afd7c: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3afd80: 681b         	ldr	r3, [r3]
  3afd82: f503 73fc    	add.w	r3, r3, #0x1f8
  3afd86: 681b         	ldr	r3, [r3]
  3afd88: 9a01         	ldr	r2, [sp, #0x4]
  3afd8a: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  3afd8e: 4610         	mov	r0, r2
  3afd90: 4a27         	ldr	r2, [pc, #0x9c]         @ 0x3afe30 <PostGameScreen::showDemotion()+0xd8>
  3afd92: 447a         	add	r2, pc
  3afd94: 4611         	mov	r1, r2
  3afd96: 4798         	blx	r3
  3afd98: 9b01         	ldr	r3, [sp, #0x4]
  3afd9a: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3afd9e: 681b         	ldr	r3, [r3]
  3afda0: f503 73de    	add.w	r3, r3, #0x1bc
  3afda4: 681c         	ldr	r4, [r3]
  3afda6: 9b01         	ldr	r3, [sp, #0x4]
  3afda8: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3afdac: 461d         	mov	r5, r3
  3afdae: 20ff         	movs	r0, #0xff
  3afdb0: 2100         	movs	r1, #0x0
  3afdb2: 2200         	movs	r2, #0x0
  3afdb4: f7fd fca6    	bl	0x3ad704 <PointsLayer::onBack(cocos2d::CCObject*)+0x194> @ imm = #-0x26b4
  3afdb8: 4603         	mov	r3, r0
  3afdba: 461a         	mov	r2, r3
  3afdbc: f88d 200c    	strb.w	r2, [sp, #0xc]
  3afdc0: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3afdc4: f88d 200d    	strb.w	r2, [sp, #0xd]
  3afdc8: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3afdcc: f88d 300e    	strb.w	r3, [sp, #0xe]
  3afdd0: ab03         	add	r3, sp, #0xc
  3afdd2: 4628         	mov	r0, r5
  3afdd4: 4619         	mov	r1, r3
  3afdd6: 47a0         	blx	r4
  3afdd8: 9b01         	ldr	r3, [sp, #0x4]
  3afdda: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3afdde: 681b         	ldr	r3, [r3]
  3afde0: 3390         	adds	r3, #0x90
  3afde2: 681b         	ldr	r3, [r3]
  3afde4: 9a01         	ldr	r2, [sp, #0x4]
  3afde6: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  3afdea: 4610         	mov	r0, r2
  3afdec: 2101         	movs	r1, #0x1
  3afdee: 4798         	blx	r3
  3afdf0: 9b01         	ldr	r3, [sp, #0x4]
  3afdf2: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3afdf6: 681b         	ldr	r3, [r3]
  3afdf8: f503 7302    	add.w	r3, r3, #0x208
  3afdfc: 681c         	ldr	r4, [r3]
  3afdfe: 9b01         	ldr	r3, [sp, #0x4]
  3afe00: f8d3 511c    	ldr.w	r5, [r3, #0x11c]
  3afe04: f075 f958    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #0x752b0
  3afe08: 4603         	mov	r3, r0
  3afe0a: 4618         	mov	r0, r3
  3afe0c: f075 faea    	bl	0x4253e4 <LeaderBoardBridge::calcPlayerExp()> @ imm = #0x755d4
  3afe10: 4603         	mov	r3, r0
  3afe12: 4618         	mov	r0, r3
  3afe14: f7fe fb0e    	bl	0x3ae434 <PointsLayer::onBack(cocos2d::CCObject*)+0xec4> @ imm = #-0x19e4
  3afe18: 4603         	mov	r3, r0
  3afe1a: 011a         	lsls	r2, r3, #0x4
  3afe1c: 4b05         	ldr	r3, [pc, #0x14]         @ 0x3afe34 <PostGameScreen::showDemotion()+0xdc>
  3afe1e: 58f3         	ldr	r3, [r6, r3]
  3afe20: 4413         	add	r3, r2
  3afe22: 4628         	mov	r0, r5
  3afe24: 4619         	mov	r1, r3
  3afe26: 47a0         	blx	r4
  3afe28: b004         	add	sp, #0x10
  3afe2a: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3afe2b); words below are literal-pool data ---
  3afe2c: 2ca8         	cmp	r4, #0xa8
  3afe2e: 0058         	lsls	r0, r3, #0x1
  3afe30: 3c06         	subs	r4, #0x6
  3afe32: 0042         	lsls	r2, r0, #0x1
  3afe34: d7c0         	bvc	0x3afdb8 <PostGameScreen::showDemotion()+0x60> @ imm = #-0x80
  3afe36: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== PostGameScreen::playerCompletedGame
//      file offset 0x3afe38 (= ELF address; Ghidra 0x3bfe38), 1288 bytes, Thumb-2
  3afe38: b530         	push	{r4, r5, lr}
  3afe3a: b08f         	sub	sp, #0x3c
  3afe3c: 9003         	str	r0, [sp, #0xc]
  3afe3e: 9803         	ldr	r0, [sp, #0xc]
  3afe40: f7ff fbe4    	bl	0x3af60c <PostGameScreen::setWinnerLabel()> @ imm = #-0x838
  3afe44: f022 fa40    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #0x22480
  3afe48: 4604         	mov	r4, r0
  3afe4a: f7c7 fe79    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x3830e
  3afe4e: 4603         	mov	r3, r0
  3afe50: aa05         	add	r2, sp, #0x14
  3afe52: 4610         	mov	r0, r2
  3afe54: 4619         	mov	r1, r3
  3afe56: f7c9 fe77    	bl	0x379b48 <NetworkManager::getHostPeerID()> @ imm = #-0x36312
  3afe5a: ab05         	add	r3, sp, #0x14
  3afe5c: 4620         	mov	r0, r4
  3afe5e: 4619         	mov	r1, r3
  3afe60: f022 fc5a    	bl	0x3d2718 <ScoreKeeper::getKills(std::string)> @ imm = #0x228b4
  3afe64: 4603         	mov	r3, r0
  3afe66: 9306         	str	r3, [sp, #0x18]
  3afe68: ab05         	add	r3, sp, #0x14
  3afe6a: 4618         	mov	r0, r3
  3afe6c: f005 f552    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x405aa4
  3afe70: f022 fa2a    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #0x22454
  3afe74: 4604         	mov	r4, r0
  3afe76: f7c7 fe63    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x3833a
  3afe7a: 4603         	mov	r3, r0
  3afe7c: aa05         	add	r2, sp, #0x14
  3afe7e: 4610         	mov	r0, r2
  3afe80: 4619         	mov	r1, r3
  3afe82: f7c9 fe61    	bl	0x379b48 <NetworkManager::getHostPeerID()> @ imm = #-0x3633e
  3afe86: ab05         	add	r3, sp, #0x14
  3afe88: 4620         	mov	r0, r4
  3afe8a: 4619         	mov	r1, r3
  3afe8c: f022 fc60    	bl	0x3d2750 <ScoreKeeper::getDeaths(std::string)> @ imm = #0x228c0
  3afe90: 4603         	mov	r3, r0
  3afe92: 9307         	str	r3, [sp, #0x1c]
  3afe94: ab05         	add	r3, sp, #0x14
  3afe96: 4618         	mov	r0, r3
  3afe98: f005 f53c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x405a78
  3afe9c: f022 fa14    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #0x22428
  3afea0: 4603         	mov	r3, r0
  3afea2: 4618         	mov	r0, r3
  3afea4: f022 fd0a    	bl	0x3d28bc <ScoreKeeper::getSuicides()> @ imm = #0x22a14
  3afea8: 4603         	mov	r3, r0
  3afeaa: 9308         	str	r3, [sp, #0x20]
  3afeac: 9a06         	ldr	r2, [sp, #0x18]
  3afeae: 9b08         	ldr	r3, [sp, #0x20]
  3afeb0: 1ad3         	subs	r3, r2, r3
  3afeb2: 9309         	str	r3, [sp, #0x24]
  3afeb4: 9b09         	ldr	r3, [sp, #0x24]
  3afeb6: ea23 73e3    	bic.w	r3, r3, r3, asr #31
  3afeba: 9309         	str	r3, [sp, #0x24]
  3afebc: 9803         	ldr	r0, [sp, #0xc]
  3afebe: f7ff fd39    	bl	0x3af934 <PostGameScreen::isHostMVP()> @ imm = #-0x58e
  3afec2: 4603         	mov	r3, r0
  3afec4: 2b00         	cmp	r3, #0x0
  3afec6: d001         	beq	0x3afecc <PostGameScreen::playerCompletedGame()+0x94> @ imm = #0x2
  3afec8: 2305         	movs	r3, #0x5
  3afeca: e000         	b	0x3afece <PostGameScreen::playerCompletedGame()+0x96> @ imm = #0x0
  3afecc: 2300         	movs	r3, #0x0
  3afece: 930a         	str	r3, [sp, #0x28]
  3afed0: 9b09         	ldr	r3, [sp, #0x24]
  3afed2: f103 020a    	add.w	r2, r3, #0xa
  3afed6: 9b0a         	ldr	r3, [sp, #0x28]
  3afed8: 4413         	add	r3, r2
  3afeda: 930b         	str	r3, [sp, #0x2c]
  3afedc: 9b03         	ldr	r3, [sp, #0xc]
  3afede: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3afee2: 681b         	ldr	r3, [r3]
  3afee4: 3390         	adds	r3, #0x90
  3afee6: 681b         	ldr	r3, [r3]
  3afee8: 9a03         	ldr	r2, [sp, #0xc]
  3afeea: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  3afeee: 4610         	mov	r0, r2
  3afef0: 2101         	movs	r1, #0x1
  3afef2: 4798         	blx	r3
  3afef4: 9b03         	ldr	r3, [sp, #0xc]
  3afef6: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3afefa: 681b         	ldr	r3, [r3]
  3afefc: 3390         	adds	r3, #0x90
  3afefe: 681b         	ldr	r3, [r3]
  3aff00: 9a03         	ldr	r2, [sp, #0xc]
  3aff02: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3aff06: 4610         	mov	r0, r2
  3aff08: 2101         	movs	r1, #0x1
  3aff0a: 4798         	blx	r3
  3aff0c: 9b03         	ldr	r3, [sp, #0xc]
  3aff0e: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3aff12: 681b         	ldr	r3, [r3]
  3aff14: 3390         	adds	r3, #0x90
  3aff16: 681b         	ldr	r3, [r3]
  3aff18: 9a03         	ldr	r2, [sp, #0xc]
  3aff1a: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  3aff1e: 4611         	mov	r1, r2
  3aff20: 9a0a         	ldr	r2, [sp, #0x28]
  3aff22: 2a00         	cmp	r2, #0x0
  3aff24: bfd4         	ite	le
  3aff26: 2200         	movle	r2, #0x0
  3aff28: 2201         	movgt	r2, #0x1
  3aff2a: b2d2         	uxtb	r2, r2
  3aff2c: 4608         	mov	r0, r1
  3aff2e: 4611         	mov	r1, r2
  3aff30: 4798         	blx	r3
  3aff32: 9b03         	ldr	r3, [sp, #0xc]
  3aff34: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3aff38: 681b         	ldr	r3, [r3]
  3aff3a: 3390         	adds	r3, #0x90
  3aff3c: 681b         	ldr	r3, [r3]
  3aff3e: 9a03         	ldr	r2, [sp, #0xc]
  3aff40: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3aff44: 4611         	mov	r1, r2
  3aff46: 9a08         	ldr	r2, [sp, #0x20]
  3aff48: 2a00         	cmp	r2, #0x0
  3aff4a: bfd4         	ite	le
  3aff4c: 2200         	movle	r2, #0x0
  3aff4e: 2201         	movgt	r2, #0x1
  3aff50: b2d2         	uxtb	r2, r2
  3aff52: 4608         	mov	r0, r1
  3aff54: 4611         	mov	r1, r2
  3aff56: 4798         	blx	r3
  3aff58: 9b03         	ldr	r3, [sp, #0xc]
  3aff5a: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3aff5e: 681b         	ldr	r3, [r3]
  3aff60: f503 73fc    	add.w	r3, r3, #0x1f8
  3aff64: 681c         	ldr	r4, [r3]
  3aff66: 9b03         	ldr	r3, [sp, #0xc]
  3aff68: f8d3 50f8    	ldr.w	r5, [r3, #0xf8]
  3aff6c: 4bec         	ldr	r3, [pc, #0x3b0]        @ 0x3b0320 <PostGameScreen::playerCompletedGame()+0x4e8>
  3aff6e: 447b         	add	r3, pc
  3aff70: 4618         	mov	r0, r3
  3aff72: f1e9 fdcd    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1e9b9a
  3aff76: 4603         	mov	r3, r0
  3aff78: 4618         	mov	r0, r3
  3aff7a: f1e9 fcd5    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1e99aa
  3aff7e: 4603         	mov	r3, r0
  3aff80: 4628         	mov	r0, r5
  3aff82: 4619         	mov	r1, r3
  3aff84: 47a0         	blx	r4
  3aff86: 9b03         	ldr	r3, [sp, #0xc]
  3aff88: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3aff8c: 681b         	ldr	r3, [r3]
  3aff8e: f503 73fc    	add.w	r3, r3, #0x1f8
  3aff92: 681c         	ldr	r4, [r3]
  3aff94: 9b03         	ldr	r3, [sp, #0xc]
  3aff96: f8d3 50f4    	ldr.w	r5, [r3, #0xf4]
  3aff9a: 4be2         	ldr	r3, [pc, #0x388]        @ 0x3b0324 <PostGameScreen::playerCompletedGame()+0x4ec>
  3aff9c: 447b         	add	r3, pc
  3aff9e: 4618         	mov	r0, r3
  3affa0: f1e9 fdb6    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1e9b6c
  3affa4: 4603         	mov	r3, r0
  3affa6: 4618         	mov	r0, r3
  3affa8: f1e9 fcbe    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1e997c
  3affac: 4603         	mov	r3, r0
  3affae: 4628         	mov	r0, r5
  3affb0: 4619         	mov	r1, r3
  3affb2: 47a0         	blx	r4
  3affb4: 9b03         	ldr	r3, [sp, #0xc]
  3affb6: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3affba: 681b         	ldr	r3, [r3]
  3affbc: f503 73fc    	add.w	r3, r3, #0x1f8
  3affc0: 681c         	ldr	r4, [r3]
  3affc2: 9b03         	ldr	r3, [sp, #0xc]
  3affc4: f8d3 50f0    	ldr.w	r5, [r3, #0xf0]
  3affc8: 4bd7         	ldr	r3, [pc, #0x35c]        @ 0x3b0328 <PostGameScreen::playerCompletedGame()+0x4f0>
  3affca: 447b         	add	r3, pc
  3affcc: 4618         	mov	r0, r3
  3affce: 9906         	ldr	r1, [sp, #0x18]
  3affd0: f1e9 fd9e    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1e9b3c
  3affd4: 4603         	mov	r3, r0
  3affd6: 4618         	mov	r0, r3
  3affd8: f1e9 fca6    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1e994c
  3affdc: 4603         	mov	r3, r0
  3affde: 4628         	mov	r0, r5
  3affe0: 4619         	mov	r1, r3
  3affe2: 47a0         	blx	r4
  3affe4: 9b03         	ldr	r3, [sp, #0xc]
  3affe6: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3affea: 681b         	ldr	r3, [r3]
  3affec: f503 73fc    	add.w	r3, r3, #0x1f8
  3afff0: 681c         	ldr	r4, [r3]
  3afff2: 9b03         	ldr	r3, [sp, #0xc]
  3afff4: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  3afff8: 4bcc         	ldr	r3, [pc, #0x330]        @ 0x3b032c <PostGameScreen::playerCompletedGame()+0x4f4>
  3afffa: 447b         	add	r3, pc
  3afffc: 4618         	mov	r0, r3
  3afffe: 9908         	ldr	r1, [sp, #0x20]
  3b0000: f1e9 fd86    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1e9b0c
  3b0004: 4603         	mov	r3, r0
  3b0006: 4618         	mov	r0, r3
  3b0008: f1e9 fc8e    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1e991c
  3b000c: 4603         	mov	r3, r0
  3b000e: 4628         	mov	r0, r5
  3b0010: 4619         	mov	r1, r3
  3b0012: 47a0         	blx	r4
  3b0014: 9b03         	ldr	r3, [sp, #0xc]
  3b0016: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3b001a: 681b         	ldr	r3, [r3]
  3b001c: f503 73fc    	add.w	r3, r3, #0x1f8
  3b0020: 681c         	ldr	r4, [r3]
  3b0022: 9b03         	ldr	r3, [sp, #0xc]
  3b0024: f8d3 50fc    	ldr.w	r5, [r3, #0xfc]
  3b0028: 4bc1         	ldr	r3, [pc, #0x304]        @ 0x3b0330 <PostGameScreen::playerCompletedGame()+0x4f8>
  3b002a: 447b         	add	r3, pc
  3b002c: 4618         	mov	r0, r3
  3b002e: 990b         	ldr	r1, [sp, #0x2c]
  3b0030: f1e9 fd6e    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1e9adc
  3b0034: 4603         	mov	r3, r0
  3b0036: 4618         	mov	r0, r3
  3b0038: f1e9 fc76    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1e98ec
  3b003c: 4603         	mov	r3, r0
  3b003e: 4628         	mov	r0, r5
  3b0040: 4619         	mov	r1, r3
  3b0042: 47a0         	blx	r4
  3b0044: 9b03         	ldr	r3, [sp, #0xc]
  3b0046: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3b004a: 681b         	ldr	r3, [r3]
  3b004c: f503 73fc    	add.w	r3, r3, #0x1f8
  3b0050: 681c         	ldr	r4, [r3]
  3b0052: 9b03         	ldr	r3, [sp, #0xc]
  3b0054: f8d3 5118    	ldr.w	r5, [r3, #0x118]
  3b0058: 4bb6         	ldr	r3, [pc, #0x2d8]        @ 0x3b0334 <PostGameScreen::playerCompletedGame()+0x4fc>
  3b005a: 447b         	add	r3, pc
  3b005c: 4618         	mov	r0, r3
  3b005e: 9909         	ldr	r1, [sp, #0x24]
  3b0060: f1e9 fd56    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1e9aac
  3b0064: 4603         	mov	r3, r0
  3b0066: 4618         	mov	r0, r3
  3b0068: f1e9 fc5e    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1e98bc
  3b006c: 4603         	mov	r3, r0
  3b006e: 4628         	mov	r0, r5
  3b0070: 4619         	mov	r1, r3
  3b0072: 47a0         	blx	r4
  3b0074: 9b03         	ldr	r3, [sp, #0xc]
  3b0076: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3b007a: 681b         	ldr	r3, [r3]
  3b007c: f503 73de    	add.w	r3, r3, #0x1bc
  3b0080: 681c         	ldr	r4, [r3]
  3b0082: 9b03         	ldr	r3, [sp, #0xc]
  3b0084: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3b0088: 461d         	mov	r5, r3
  3b008a: 20f5         	movs	r0, #0xf5
  3b008c: 21f5         	movs	r1, #0xf5
  3b008e: 2200         	movs	r2, #0x0
  3b0090: f7fd fb38    	bl	0x3ad704 <PointsLayer::onBack(cocos2d::CCObject*)+0x194> @ imm = #-0x2990
  3b0094: 4603         	mov	r3, r0
  3b0096: 461a         	mov	r2, r3
  3b0098: f88d 2014    	strb.w	r2, [sp, #0x14]
  3b009c: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3b00a0: f88d 2015    	strb.w	r2, [sp, #0x15]
  3b00a4: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3b00a8: f88d 3016    	strb.w	r3, [sp, #0x16]
  3b00ac: ab05         	add	r3, sp, #0x14
  3b00ae: 4628         	mov	r0, r5
  3b00b0: 4619         	mov	r1, r3
  3b00b2: 47a0         	blx	r4
  3b00b4: 9b03         	ldr	r3, [sp, #0xc]
  3b00b6: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3b00ba: 681b         	ldr	r3, [r3]
  3b00bc: f503 73de    	add.w	r3, r3, #0x1bc
  3b00c0: 681c         	ldr	r4, [r3]
  3b00c2: 9b03         	ldr	r3, [sp, #0xc]
  3b00c4: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3b00c8: 461d         	mov	r5, r3
  3b00ca: 20f5         	movs	r0, #0xf5
  3b00cc: 21f5         	movs	r1, #0xf5
  3b00ce: 2200         	movs	r2, #0x0
  3b00d0: f7fd fb18    	bl	0x3ad704 <PointsLayer::onBack(cocos2d::CCObject*)+0x194> @ imm = #-0x29d0
  3b00d4: 4603         	mov	r3, r0
  3b00d6: 461a         	mov	r2, r3
  3b00d8: f88d 2014    	strb.w	r2, [sp, #0x14]
  3b00dc: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3b00e0: f88d 2015    	strb.w	r2, [sp, #0x15]
  3b00e4: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3b00e8: f88d 3016    	strb.w	r3, [sp, #0x16]
  3b00ec: ab05         	add	r3, sp, #0x14
  3b00ee: 4628         	mov	r0, r5
  3b00f0: 4619         	mov	r1, r3
  3b00f2: 47a0         	blx	r4
  3b00f4: 9b03         	ldr	r3, [sp, #0xc]
  3b00f6: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3b00fa: 681b         	ldr	r3, [r3]
  3b00fc: f503 73de    	add.w	r3, r3, #0x1bc
  3b0100: 681c         	ldr	r4, [r3]
  3b0102: 9b03         	ldr	r3, [sp, #0xc]
  3b0104: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3b0108: 461d         	mov	r5, r3
  3b010a: 20ff         	movs	r0, #0xff
  3b010c: 2100         	movs	r1, #0x0
  3b010e: 2200         	movs	r2, #0x0
  3b0110: f7fd faf8    	bl	0x3ad704 <PointsLayer::onBack(cocos2d::CCObject*)+0x194> @ imm = #-0x2a10
  3b0114: 4603         	mov	r3, r0
  3b0116: 461a         	mov	r2, r3
  3b0118: f88d 2014    	strb.w	r2, [sp, #0x14]
  3b011c: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3b0120: f88d 2015    	strb.w	r2, [sp, #0x15]
  3b0124: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3b0128: f88d 3016    	strb.w	r3, [sp, #0x16]
  3b012c: ab05         	add	r3, sp, #0x14
  3b012e: 4628         	mov	r0, r5
  3b0130: 4619         	mov	r1, r3
  3b0132: 47a0         	blx	r4
  3b0134: 9b03         	ldr	r3, [sp, #0xc]
  3b0136: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3b013a: 681b         	ldr	r3, [r3]
  3b013c: f503 73de    	add.w	r3, r3, #0x1bc
  3b0140: 681c         	ldr	r4, [r3]
  3b0142: 9b03         	ldr	r3, [sp, #0xc]
  3b0144: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3b0148: 461d         	mov	r5, r3
  3b014a: 2000         	movs	r0, #0x0
  3b014c: 21ff         	movs	r1, #0xff
  3b014e: 2200         	movs	r2, #0x0
  3b0150: f7fd fad8    	bl	0x3ad704 <PointsLayer::onBack(cocos2d::CCObject*)+0x194> @ imm = #-0x2a50
  3b0154: 4603         	mov	r3, r0
  3b0156: 461a         	mov	r2, r3
  3b0158: f88d 2014    	strb.w	r2, [sp, #0x14]
  3b015c: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3b0160: f88d 2015    	strb.w	r2, [sp, #0x15]
  3b0164: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3b0168: f88d 3016    	strb.w	r3, [sp, #0x16]
  3b016c: ab05         	add	r3, sp, #0x14
  3b016e: 4628         	mov	r0, r5
  3b0170: 4619         	mov	r1, r3
  3b0172: 47a0         	blx	r4
  3b0174: 9b03         	ldr	r3, [sp, #0xc]
  3b0176: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3b017a: 681b         	ldr	r3, [r3]
  3b017c: f503 73de    	add.w	r3, r3, #0x1bc
  3b0180: 681c         	ldr	r4, [r3]
  3b0182: 9b03         	ldr	r3, [sp, #0xc]
  3b0184: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3b0188: 461d         	mov	r5, r3
  3b018a: 2000         	movs	r0, #0x0
  3b018c: 21ff         	movs	r1, #0xff
  3b018e: 2200         	movs	r2, #0x0
  3b0190: f7fd fab8    	bl	0x3ad704 <PointsLayer::onBack(cocos2d::CCObject*)+0x194> @ imm = #-0x2a90
  3b0194: 4603         	mov	r3, r0
  3b0196: 461a         	mov	r2, r3
  3b0198: f88d 2014    	strb.w	r2, [sp, #0x14]
  3b019c: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3b01a0: f88d 2015    	strb.w	r2, [sp, #0x15]
  3b01a4: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3b01a8: f88d 3016    	strb.w	r3, [sp, #0x16]
  3b01ac: ab05         	add	r3, sp, #0x14
  3b01ae: 4628         	mov	r0, r5
  3b01b0: 4619         	mov	r1, r3
  3b01b2: 47a0         	blx	r4
  3b01b4: 9b03         	ldr	r3, [sp, #0xc]
  3b01b6: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3b01ba: 681b         	ldr	r3, [r3]
  3b01bc: f503 73de    	add.w	r3, r3, #0x1bc
  3b01c0: 681c         	ldr	r4, [r3]
  3b01c2: 9b03         	ldr	r3, [sp, #0xc]
  3b01c4: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3b01c8: 461d         	mov	r5, r3
  3b01ca: 2000         	movs	r0, #0x0
  3b01cc: 21ff         	movs	r1, #0xff
  3b01ce: 2200         	movs	r2, #0x0
  3b01d0: f7fd fa98    	bl	0x3ad704 <PointsLayer::onBack(cocos2d::CCObject*)+0x194> @ imm = #-0x2ad0
  3b01d4: 4603         	mov	r3, r0
  3b01d6: 461a         	mov	r2, r3
  3b01d8: f88d 2014    	strb.w	r2, [sp, #0x14]
  3b01dc: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3b01e0: f88d 2015    	strb.w	r2, [sp, #0x15]
  3b01e4: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3b01e8: f88d 3016    	strb.w	r3, [sp, #0x16]
  3b01ec: ab05         	add	r3, sp, #0x14
  3b01ee: 4628         	mov	r0, r5
  3b01f0: 4619         	mov	r1, r3
  3b01f2: 47a0         	blx	r4
  3b01f4: f022 f868    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #0x220d0
  3b01f8: 4603         	mov	r3, r0
  3b01fa: 9a09         	ldr	r2, [sp, #0x24]
  3b01fc: 9200         	str	r2, [sp]
  3b01fe: 4618         	mov	r0, r3
  3b0200: 990b         	ldr	r1, [sp, #0x2c]
  3b0202: 9a06         	ldr	r2, [sp, #0x18]
  3b0204: 9b07         	ldr	r3, [sp, #0x1c]
  3b0206: f022 fb61    	bl	0x3d28cc <ScoreKeeper::applyAward(int, int, int, int)> @ imm = #0x226c2
  3b020a: f022 f85d    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #0x220ba
  3b020e: 4603         	mov	r3, r0
  3b0210: 2201         	movs	r2, #0x1
  3b0212: f883 2028    	strb.w	r2, [r3, #0x28]
  3b0216: f074 ff4f    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #0x74e9e
  3b021a: 4603         	mov	r3, r0
  3b021c: 4618         	mov	r0, r3
  3b021e: f075 f8e1    	bl	0x4253e4 <LeaderBoardBridge::calcPlayerExp()> @ imm = #0x751c2
  3b0222: 4603         	mov	r3, r0
  3b0224: 930c         	str	r3, [sp, #0x30]
  3b0226: f074 ff47    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #0x74e8e
  3b022a: 4603         	mov	r3, r0
  3b022c: 4618         	mov	r0, r3
  3b022e: f075 f8eb    	bl	0x425408 <LeaderBoardBridge::calcPlayerPoints()> @ imm = #0x751d6
  3b0232: 4604         	mov	r4, r0
  3b0234: f799 f828    	bl	0x349288 <ItemLibrary::sharedItemLibrary()> @ imm = #-0x66fb0
  3b0238: 4605         	mov	r5, r0
  3b023a: f79b feef    	bl	0x34c01c <ItemPurchase::sharedItemPurchase()> @ imm = #-0x64222
  3b023e: 4603         	mov	r3, r0
  3b0240: 685b         	ldr	r3, [r3, #0x4]
  3b0242: 4628         	mov	r0, r5
  3b0244: 4619         	mov	r1, r3
  3b0246: f79a f8c1    	bl	0x34a3cc <ItemLibrary::getTotalPurchaseAmount(cocos2d::CCArray*)> @ imm = #-0x65e7e
  3b024a: 4603         	mov	r3, r0
  3b024c: 1ae3         	subs	r3, r4, r3
  3b024e: 2b00         	cmp	r3, #0x0
  3b0250: dd14         	ble	0x3b027c <PostGameScreen::playerCompletedGame()+0x444> @ imm = #0x28
  3b0252: f074 ff31    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #0x74e62
  3b0256: 4603         	mov	r3, r0
  3b0258: 4618         	mov	r0, r3
  3b025a: f075 f8d5    	bl	0x425408 <LeaderBoardBridge::calcPlayerPoints()> @ imm = #0x751aa
  3b025e: 4604         	mov	r4, r0
  3b0260: f799 f812    	bl	0x349288 <ItemLibrary::sharedItemLibrary()> @ imm = #-0x66fdc
  3b0264: 4605         	mov	r5, r0
  3b0266: f79b fed9    	bl	0x34c01c <ItemPurchase::sharedItemPurchase()> @ imm = #-0x6424e
  3b026a: 4603         	mov	r3, r0
  3b026c: 685b         	ldr	r3, [r3, #0x4]
  3b026e: 4628         	mov	r0, r5
  3b0270: 4619         	mov	r1, r3
  3b0272: f79a f8ab    	bl	0x34a3cc <ItemLibrary::getTotalPurchaseAmount(cocos2d::CCArray*)> @ imm = #-0x65eaa
  3b0276: 4603         	mov	r3, r0
  3b0278: 1ae3         	subs	r3, r4, r3
  3b027a: e000         	b	0x3b027e <PostGameScreen::playerCompletedGame()+0x446> @ imm = #0x0
  3b027c: 2300         	movs	r3, #0x0
  3b027e: 930d         	str	r3, [sp, #0x34]
  3b0280: 9b03         	ldr	r3, [sp, #0xc]
  3b0282: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  3b0286: 681b         	ldr	r3, [r3]
  3b0288: f503 73fc    	add.w	r3, r3, #0x1f8
  3b028c: 681c         	ldr	r4, [r3]
  3b028e: 9b03         	ldr	r3, [sp, #0xc]
  3b0290: f8d3 5100    	ldr.w	r5, [r3, #0x100]
  3b0294: 4b28         	ldr	r3, [pc, #0xa0]         @ 0x3b0338 <PostGameScreen::playerCompletedGame()+0x500>
  3b0296: 447b         	add	r3, pc
  3b0298: 4618         	mov	r0, r3
  3b029a: 990c         	ldr	r1, [sp, #0x30]
  3b029c: f1e9 fc38    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1e9870
  3b02a0: 4603         	mov	r3, r0
  3b02a2: 4618         	mov	r0, r3
  3b02a4: f1e9 fb40    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1e9680
  3b02a8: 4603         	mov	r3, r0
  3b02aa: 4628         	mov	r0, r5
  3b02ac: 4619         	mov	r1, r3
  3b02ae: 47a0         	blx	r4
  3b02b0: 9b03         	ldr	r3, [sp, #0xc]
  3b02b2: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  3b02b6: 681b         	ldr	r3, [r3]
  3b02b8: f503 73fc    	add.w	r3, r3, #0x1f8
  3b02bc: 681c         	ldr	r4, [r3]
  3b02be: 9b03         	ldr	r3, [sp, #0xc]
  3b02c0: f8d3 5104    	ldr.w	r5, [r3, #0x104]
  3b02c4: 4b1d         	ldr	r3, [pc, #0x74]         @ 0x3b033c <PostGameScreen::playerCompletedGame()+0x504>
  3b02c6: 447b         	add	r3, pc
  3b02c8: 4618         	mov	r0, r3
  3b02ca: 990d         	ldr	r1, [sp, #0x34]
  3b02cc: f1e9 fc20    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1e9840
  3b02d0: 4603         	mov	r3, r0
  3b02d2: 4618         	mov	r0, r3
  3b02d4: f1e9 fb28    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1e9650
  3b02d8: 4603         	mov	r3, r0
  3b02da: 4628         	mov	r0, r5
  3b02dc: 4619         	mov	r1, r3
  3b02de: 47a0         	blx	r4
  3b02e0: f021 fff2    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #0x21fe4
  3b02e4: 4603         	mov	r3, r0
  3b02e6: 4618         	mov	r0, r3
  3b02e8: f022 fbd2    	bl	0x3d2a90 <ScoreKeeper::getRankChange()> @ imm = #0x227a4
  3b02ec: 4603         	mov	r3, r0
  3b02ee: 2b01         	cmp	r3, #0x1
  3b02f0: bf14         	ite	ne
  3b02f2: 2300         	movne	r3, #0x0
  3b02f4: 2301         	moveq	r3, #0x1
  3b02f6: b2db         	uxtb	r3, r3
  3b02f8: 2b00         	cmp	r3, #0x0
  3b02fa: d00f         	beq	0x3b031c <PostGameScreen::playerCompletedGame()+0x4e4> @ imm = #0x1e
  3b02fc: 9803         	ldr	r0, [sp, #0xc]
  3b02fe: f7ff fcbb    	bl	0x3afc78 <PostGameScreen::showPromotion()> @ imm = #-0x68a
  3b0302: e00b         	b	0x3b031c <PostGameScreen::playerCompletedGame()+0x4e4> @ imm = #0x16
  3b0304: ab05         	add	r3, sp, #0x14
  3b0306: 4618         	mov	r0, r3
  3b0308: f005 f304    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x405608
  3b030c: f3d7 fece    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3d7d9c
  3b0310: ab05         	add	r3, sp, #0x14
  3b0312: 4618         	mov	r0, r3
  3b0314: f005 f2fe    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4055fc
  3b0318: f3d7 fec8    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3d7d90
  3b031c: b00f         	add	sp, #0x3c
  3b031e: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3b031f); words below are literal-pool data ---
  3b0320: 3a32         	subs	r2, #0x32
  3b0322: 0042         	lsls	r2, r0, #0x1
  3b0324: 3a14         	subs	r2, #0x14
  3b0326: 0042         	lsls	r2, r0, #0x1
  3b0328: 39fa         	subs	r1, #0xfa
  3b032a: 0042         	lsls	r2, r0, #0x1
  3b032c: 39da         	subs	r1, #0xda
  3b032e: 0042         	lsls	r2, r0, #0x1
  3b0330: 39ba         	subs	r1, #0xba
  3b0332: 0042         	lsls	r2, r0, #0x1
  3b0334: 399a         	subs	r1, #0x9a
  3b0336: 0042         	lsls	r2, r0, #0x1
  3b0338: 369e         	adds	r6, #0x9e
  3b033a: 0042         	lsls	r2, r0, #0x1
  3b033c: 367e         	adds	r6, #0x7e
  3b033e: 0042         	lsls	r2, r0, #0x1

// ==== PostGameScreen::playerEndedGame
//      file offset 0x3b0340 (= ELF address; Ghidra 0x3c0340), 1044 bytes, Thumb-2
  3b0340: b530         	push	{r4, r5, lr}
  3b0342: b08d         	sub	sp, #0x34
  3b0344: 9003         	str	r0, [sp, #0xc]
  3b0346: 9803         	ldr	r0, [sp, #0xc]
  3b0348: f7ff f960    	bl	0x3af60c <PostGameScreen::setWinnerLabel()> @ imm = #-0xd40
  3b034c: f021 ffbc    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #0x21f78
  3b0350: 4604         	mov	r4, r0
  3b0352: f7c7 fbf5    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x38816
  3b0356: 4603         	mov	r3, r0
  3b0358: aa04         	add	r2, sp, #0x10
  3b035a: 4610         	mov	r0, r2
  3b035c: 4619         	mov	r1, r3
  3b035e: f7c9 fbf3    	bl	0x379b48 <NetworkManager::getHostPeerID()> @ imm = #-0x3681a
  3b0362: ab04         	add	r3, sp, #0x10
  3b0364: 4620         	mov	r0, r4
  3b0366: 4619         	mov	r1, r3
  3b0368: f022 f9d6    	bl	0x3d2718 <ScoreKeeper::getKills(std::string)> @ imm = #0x223ac
  3b036c: 4603         	mov	r3, r0
  3b036e: 9305         	str	r3, [sp, #0x14]
  3b0370: ab04         	add	r3, sp, #0x10
  3b0372: 4618         	mov	r0, r3
  3b0374: f005 f2ce    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40559c
  3b0378: f021 ffa6    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #0x21f4c
  3b037c: 4604         	mov	r4, r0
  3b037e: f7c7 fbdf    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x38842
  3b0382: 4603         	mov	r3, r0
  3b0384: aa04         	add	r2, sp, #0x10
  3b0386: 4610         	mov	r0, r2
  3b0388: 4619         	mov	r1, r3
  3b038a: f7c9 fbdd    	bl	0x379b48 <NetworkManager::getHostPeerID()> @ imm = #-0x36846
  3b038e: ab04         	add	r3, sp, #0x10
  3b0390: 4620         	mov	r0, r4
  3b0392: 4619         	mov	r1, r3
  3b0394: f022 f9dc    	bl	0x3d2750 <ScoreKeeper::getDeaths(std::string)> @ imm = #0x223b8
  3b0398: 4603         	mov	r3, r0
  3b039a: 9306         	str	r3, [sp, #0x18]
  3b039c: ab04         	add	r3, sp, #0x10
  3b039e: 4618         	mov	r0, r3
  3b03a0: f005 f2b8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x405570
  3b03a4: f021 ff90    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #0x21f20
  3b03a8: 4603         	mov	r3, r0
  3b03aa: 4618         	mov	r0, r3
  3b03ac: f022 fa86    	bl	0x3d28bc <ScoreKeeper::getSuicides()> @ imm = #0x2250c
  3b03b0: 4603         	mov	r3, r0
  3b03b2: 9307         	str	r3, [sp, #0x1c]
  3b03b4: 9a05         	ldr	r2, [sp, #0x14]
  3b03b6: 9b07         	ldr	r3, [sp, #0x1c]
  3b03b8: 1ad3         	subs	r3, r2, r3
  3b03ba: 9308         	str	r3, [sp, #0x20]
  3b03bc: 9b08         	ldr	r3, [sp, #0x20]
  3b03be: ea23 73e3    	bic.w	r3, r3, r3, asr #31
  3b03c2: 9308         	str	r3, [sp, #0x20]
  3b03c4: 9b08         	ldr	r3, [sp, #0x20]
  3b03c6: 9309         	str	r3, [sp, #0x24]
  3b03c8: 9b03         	ldr	r3, [sp, #0xc]
  3b03ca: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3b03ce: 681b         	ldr	r3, [r3]
  3b03d0: 3390         	adds	r3, #0x90
  3b03d2: 681b         	ldr	r3, [r3]
  3b03d4: 9a03         	ldr	r2, [sp, #0xc]
  3b03d6: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  3b03da: 4610         	mov	r0, r2
  3b03dc: 2101         	movs	r1, #0x1
  3b03de: 4798         	blx	r3
  3b03e0: 9b03         	ldr	r3, [sp, #0xc]
  3b03e2: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3b03e6: 681b         	ldr	r3, [r3]
  3b03e8: 3390         	adds	r3, #0x90
  3b03ea: 681b         	ldr	r3, [r3]
  3b03ec: 9a03         	ldr	r2, [sp, #0xc]
  3b03ee: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  3b03f2: 4610         	mov	r0, r2
  3b03f4: 2100         	movs	r1, #0x0
  3b03f6: 4798         	blx	r3
  3b03f8: 9b03         	ldr	r3, [sp, #0xc]
  3b03fa: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3b03fe: 681b         	ldr	r3, [r3]
  3b0400: 3390         	adds	r3, #0x90
  3b0402: 681b         	ldr	r3, [r3]
  3b0404: 9a03         	ldr	r2, [sp, #0xc]
  3b0406: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  3b040a: 4610         	mov	r0, r2
  3b040c: 2100         	movs	r1, #0x0
  3b040e: 4798         	blx	r3
  3b0410: 9b03         	ldr	r3, [sp, #0xc]
  3b0412: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3b0416: 681b         	ldr	r3, [r3]
  3b0418: 3390         	adds	r3, #0x90
  3b041a: 681b         	ldr	r3, [r3]
  3b041c: 9a03         	ldr	r2, [sp, #0xc]
  3b041e: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3b0422: 4610         	mov	r0, r2
  3b0424: 2101         	movs	r1, #0x1
  3b0426: 4798         	blx	r3
  3b0428: 9b03         	ldr	r3, [sp, #0xc]
  3b042a: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3b042e: 681b         	ldr	r3, [r3]
  3b0430: 3390         	adds	r3, #0x90
  3b0432: 681b         	ldr	r3, [r3]
  3b0434: 9a03         	ldr	r2, [sp, #0xc]
  3b0436: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3b043a: 4611         	mov	r1, r2
  3b043c: 9a07         	ldr	r2, [sp, #0x1c]
  3b043e: 2a00         	cmp	r2, #0x0
  3b0440: bfd4         	ite	le
  3b0442: 2200         	movle	r2, #0x0
  3b0444: 2201         	movgt	r2, #0x1
  3b0446: b2d2         	uxtb	r2, r2
  3b0448: 4608         	mov	r0, r1
  3b044a: 4611         	mov	r1, r2
  3b044c: 4798         	blx	r3
  3b044e: 9b03         	ldr	r3, [sp, #0xc]
  3b0450: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3b0454: 681b         	ldr	r3, [r3]
  3b0456: f503 73fc    	add.w	r3, r3, #0x1f8
  3b045a: 681c         	ldr	r4, [r3]
  3b045c: 9b03         	ldr	r3, [sp, #0xc]
  3b045e: f8d3 50f0    	ldr.w	r5, [r3, #0xf0]
  3b0462: 4bb6         	ldr	r3, [pc, #0x2d8]        @ 0x3b073c <PostGameScreen::playerEndedGame()+0x3fc>
  3b0464: 447b         	add	r3, pc
  3b0466: 4618         	mov	r0, r3
  3b0468: 9905         	ldr	r1, [sp, #0x14]
  3b046a: f1e9 fb51    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1e96a2
  3b046e: 4603         	mov	r3, r0
  3b0470: 4618         	mov	r0, r3
  3b0472: f1e9 fa59    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1e94b2
  3b0476: 4603         	mov	r3, r0
  3b0478: 4628         	mov	r0, r5
  3b047a: 4619         	mov	r1, r3
  3b047c: 47a0         	blx	r4
  3b047e: 9b03         	ldr	r3, [sp, #0xc]
  3b0480: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3b0484: 681b         	ldr	r3, [r3]
  3b0486: f503 73fc    	add.w	r3, r3, #0x1f8
  3b048a: 681c         	ldr	r4, [r3]
  3b048c: 9b03         	ldr	r3, [sp, #0xc]
  3b048e: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  3b0492: 4bab         	ldr	r3, [pc, #0x2ac]        @ 0x3b0740 <PostGameScreen::playerEndedGame()+0x400>
  3b0494: 447b         	add	r3, pc
  3b0496: 4618         	mov	r0, r3
  3b0498: 9907         	ldr	r1, [sp, #0x1c]
  3b049a: f1e9 fb39    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1e9672
  3b049e: 4603         	mov	r3, r0
  3b04a0: 4618         	mov	r0, r3
  3b04a2: f1e9 fa41    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1e9482
  3b04a6: 4603         	mov	r3, r0
  3b04a8: 4628         	mov	r0, r5
  3b04aa: 4619         	mov	r1, r3
  3b04ac: 47a0         	blx	r4
  3b04ae: 9b03         	ldr	r3, [sp, #0xc]
  3b04b0: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3b04b4: 681b         	ldr	r3, [r3]
  3b04b6: f503 73fc    	add.w	r3, r3, #0x1f8
  3b04ba: 681c         	ldr	r4, [r3]
  3b04bc: 9b03         	ldr	r3, [sp, #0xc]
  3b04be: f8d3 50fc    	ldr.w	r5, [r3, #0xfc]
  3b04c2: 4ba0         	ldr	r3, [pc, #0x280]        @ 0x3b0744 <PostGameScreen::playerEndedGame()+0x404>
  3b04c4: 447b         	add	r3, pc
  3b04c6: 4618         	mov	r0, r3
  3b04c8: 9909         	ldr	r1, [sp, #0x24]
  3b04ca: f1e9 fb21    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1e9642
  3b04ce: 4603         	mov	r3, r0
  3b04d0: 4618         	mov	r0, r3
  3b04d2: f1e9 fa29    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1e9452
  3b04d6: 4603         	mov	r3, r0
  3b04d8: 4628         	mov	r0, r5
  3b04da: 4619         	mov	r1, r3
  3b04dc: 47a0         	blx	r4
  3b04de: 9b03         	ldr	r3, [sp, #0xc]
  3b04e0: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3b04e4: 681b         	ldr	r3, [r3]
  3b04e6: f503 73fc    	add.w	r3, r3, #0x1f8
  3b04ea: 681c         	ldr	r4, [r3]
  3b04ec: 9b03         	ldr	r3, [sp, #0xc]
  3b04ee: f8d3 5118    	ldr.w	r5, [r3, #0x118]
  3b04f2: 4b95         	ldr	r3, [pc, #0x254]        @ 0x3b0748 <PostGameScreen::playerEndedGame()+0x408>
  3b04f4: 447b         	add	r3, pc
  3b04f6: 4618         	mov	r0, r3
  3b04f8: 9908         	ldr	r1, [sp, #0x20]
  3b04fa: f1e9 fb09    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1e9612
  3b04fe: 4603         	mov	r3, r0
  3b0500: 4618         	mov	r0, r3
  3b0502: f1e9 fa11    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1e9422
  3b0506: 4603         	mov	r3, r0
  3b0508: 4628         	mov	r0, r5
  3b050a: 4619         	mov	r1, r3
  3b050c: 47a0         	blx	r4
  3b050e: 9b03         	ldr	r3, [sp, #0xc]
  3b0510: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3b0514: 681b         	ldr	r3, [r3]
  3b0516: f503 73de    	add.w	r3, r3, #0x1bc
  3b051a: 681c         	ldr	r4, [r3]
  3b051c: 9b03         	ldr	r3, [sp, #0xc]
  3b051e: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3b0522: 461d         	mov	r5, r3
  3b0524: 20f5         	movs	r0, #0xf5
  3b0526: 21f5         	movs	r1, #0xf5
  3b0528: 2200         	movs	r2, #0x0
  3b052a: f7fd f8eb    	bl	0x3ad704 <PointsLayer::onBack(cocos2d::CCObject*)+0x194> @ imm = #-0x2e2a
  3b052e: 4603         	mov	r3, r0
  3b0530: 461a         	mov	r2, r3
  3b0532: f88d 2010    	strb.w	r2, [sp, #0x10]
  3b0536: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3b053a: f88d 2011    	strb.w	r2, [sp, #0x11]
  3b053e: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3b0542: f88d 3012    	strb.w	r3, [sp, #0x12]
  3b0546: ab04         	add	r3, sp, #0x10
  3b0548: 4628         	mov	r0, r5
  3b054a: 4619         	mov	r1, r3
  3b054c: 47a0         	blx	r4
  3b054e: 9b03         	ldr	r3, [sp, #0xc]
  3b0550: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3b0554: 681b         	ldr	r3, [r3]
  3b0556: f503 73de    	add.w	r3, r3, #0x1bc
  3b055a: 681c         	ldr	r4, [r3]
  3b055c: 9b03         	ldr	r3, [sp, #0xc]
  3b055e: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3b0562: 461d         	mov	r5, r3
  3b0564: 20f5         	movs	r0, #0xf5
  3b0566: 21f5         	movs	r1, #0xf5
  3b0568: 2200         	movs	r2, #0x0
  3b056a: f7fd f8cb    	bl	0x3ad704 <PointsLayer::onBack(cocos2d::CCObject*)+0x194> @ imm = #-0x2e6a
  3b056e: 4603         	mov	r3, r0
  3b0570: 461a         	mov	r2, r3
  3b0572: f88d 2010    	strb.w	r2, [sp, #0x10]
  3b0576: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3b057a: f88d 2011    	strb.w	r2, [sp, #0x11]
  3b057e: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3b0582: f88d 3012    	strb.w	r3, [sp, #0x12]
  3b0586: ab04         	add	r3, sp, #0x10
  3b0588: 4628         	mov	r0, r5
  3b058a: 4619         	mov	r1, r3
  3b058c: 47a0         	blx	r4
  3b058e: 9b03         	ldr	r3, [sp, #0xc]
  3b0590: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3b0594: 681b         	ldr	r3, [r3]
  3b0596: f503 73de    	add.w	r3, r3, #0x1bc
  3b059a: 681c         	ldr	r4, [r3]
  3b059c: 9b03         	ldr	r3, [sp, #0xc]
  3b059e: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3b05a2: 461d         	mov	r5, r3
  3b05a4: 20ff         	movs	r0, #0xff
  3b05a6: 2100         	movs	r1, #0x0
  3b05a8: 2200         	movs	r2, #0x0
  3b05aa: f7fd f8ab    	bl	0x3ad704 <PointsLayer::onBack(cocos2d::CCObject*)+0x194> @ imm = #-0x2eaa
  3b05ae: 4603         	mov	r3, r0
  3b05b0: 461a         	mov	r2, r3
  3b05b2: f88d 2010    	strb.w	r2, [sp, #0x10]
  3b05b6: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3b05ba: f88d 2011    	strb.w	r2, [sp, #0x11]
  3b05be: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3b05c2: f88d 3012    	strb.w	r3, [sp, #0x12]
  3b05c6: ab04         	add	r3, sp, #0x10
  3b05c8: 4628         	mov	r0, r5
  3b05ca: 4619         	mov	r1, r3
  3b05cc: 47a0         	blx	r4
  3b05ce: 9b03         	ldr	r3, [sp, #0xc]
  3b05d0: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3b05d4: 681b         	ldr	r3, [r3]
  3b05d6: f503 73de    	add.w	r3, r3, #0x1bc
  3b05da: 681c         	ldr	r4, [r3]
  3b05dc: 9b03         	ldr	r3, [sp, #0xc]
  3b05de: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3b05e2: 461d         	mov	r5, r3
  3b05e4: 2000         	movs	r0, #0x0
  3b05e6: 21ff         	movs	r1, #0xff
  3b05e8: 2200         	movs	r2, #0x0
  3b05ea: f7fd f88b    	bl	0x3ad704 <PointsLayer::onBack(cocos2d::CCObject*)+0x194> @ imm = #-0x2eea
  3b05ee: 4603         	mov	r3, r0
  3b05f0: 461a         	mov	r2, r3
  3b05f2: f88d 2010    	strb.w	r2, [sp, #0x10]
  3b05f6: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3b05fa: f88d 2011    	strb.w	r2, [sp, #0x11]
  3b05fe: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3b0602: f88d 3012    	strb.w	r3, [sp, #0x12]
  3b0606: ab04         	add	r3, sp, #0x10
  3b0608: 4628         	mov	r0, r5
  3b060a: 4619         	mov	r1, r3
  3b060c: 47a0         	blx	r4
  3b060e: f021 fe5b    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #0x21cb6
  3b0612: 4603         	mov	r3, r0
  3b0614: 9a08         	ldr	r2, [sp, #0x20]
  3b0616: 9200         	str	r2, [sp]
  3b0618: 4618         	mov	r0, r3
  3b061a: 9909         	ldr	r1, [sp, #0x24]
  3b061c: 9a05         	ldr	r2, [sp, #0x14]
  3b061e: 9b06         	ldr	r3, [sp, #0x18]
  3b0620: f022 f954    	bl	0x3d28cc <ScoreKeeper::applyAward(int, int, int, int)> @ imm = #0x222a8
  3b0624: f021 fe50    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #0x21ca0
  3b0628: 4603         	mov	r3, r0
  3b062a: 2201         	movs	r2, #0x1
  3b062c: f883 2028    	strb.w	r2, [r3, #0x28]
  3b0630: f074 fd42    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #0x74a84
  3b0634: 4603         	mov	r3, r0
  3b0636: 4618         	mov	r0, r3
  3b0638: f074 fed4    	bl	0x4253e4 <LeaderBoardBridge::calcPlayerExp()> @ imm = #0x74da8
  3b063c: 4603         	mov	r3, r0
  3b063e: 930a         	str	r3, [sp, #0x28]
  3b0640: f074 fd3a    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #0x74a74
  3b0644: 4603         	mov	r3, r0
  3b0646: 4618         	mov	r0, r3
  3b0648: f074 fede    	bl	0x425408 <LeaderBoardBridge::calcPlayerPoints()> @ imm = #0x74dbc
  3b064c: 4604         	mov	r4, r0
  3b064e: f798 fe1b    	bl	0x349288 <ItemLibrary::sharedItemLibrary()> @ imm = #-0x673ca
  3b0652: 4605         	mov	r5, r0
  3b0654: f79b fce2    	bl	0x34c01c <ItemPurchase::sharedItemPurchase()> @ imm = #-0x6463c
  3b0658: 4603         	mov	r3, r0
  3b065a: 685b         	ldr	r3, [r3, #0x4]
  3b065c: 4628         	mov	r0, r5
  3b065e: 4619         	mov	r1, r3
  3b0660: f799 feb4    	bl	0x34a3cc <ItemLibrary::getTotalPurchaseAmount(cocos2d::CCArray*)> @ imm = #-0x66298
  3b0664: 4603         	mov	r3, r0
  3b0666: 1ae3         	subs	r3, r4, r3
  3b0668: 2b00         	cmp	r3, #0x0
  3b066a: dd14         	ble	0x3b0696 <PostGameScreen::playerEndedGame()+0x356> @ imm = #0x28
  3b066c: f074 fd24    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #0x74a48
  3b0670: 4603         	mov	r3, r0
  3b0672: 4618         	mov	r0, r3
  3b0674: f074 fec8    	bl	0x425408 <LeaderBoardBridge::calcPlayerPoints()> @ imm = #0x74d90
  3b0678: 4604         	mov	r4, r0
  3b067a: f798 fe05    	bl	0x349288 <ItemLibrary::sharedItemLibrary()> @ imm = #-0x673f6
  3b067e: 4605         	mov	r5, r0
  3b0680: f79b fccc    	bl	0x34c01c <ItemPurchase::sharedItemPurchase()> @ imm = #-0x64668
  3b0684: 4603         	mov	r3, r0
  3b0686: 685b         	ldr	r3, [r3, #0x4]
  3b0688: 4628         	mov	r0, r5
  3b068a: 4619         	mov	r1, r3
  3b068c: f799 fe9e    	bl	0x34a3cc <ItemLibrary::getTotalPurchaseAmount(cocos2d::CCArray*)> @ imm = #-0x662c4
  3b0690: 4603         	mov	r3, r0
  3b0692: 1ae3         	subs	r3, r4, r3
  3b0694: e000         	b	0x3b0698 <PostGameScreen::playerEndedGame()+0x358> @ imm = #0x0
  3b0696: 2300         	movs	r3, #0x0
  3b0698: 930b         	str	r3, [sp, #0x2c]
  3b069a: 9b03         	ldr	r3, [sp, #0xc]
  3b069c: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  3b06a0: 681b         	ldr	r3, [r3]
  3b06a2: f503 73fc    	add.w	r3, r3, #0x1f8
  3b06a6: 681c         	ldr	r4, [r3]
  3b06a8: 9b03         	ldr	r3, [sp, #0xc]
  3b06aa: f8d3 5100    	ldr.w	r5, [r3, #0x100]
  3b06ae: 4b27         	ldr	r3, [pc, #0x9c]         @ 0x3b074c <PostGameScreen::playerEndedGame()+0x40c>
  3b06b0: 447b         	add	r3, pc
  3b06b2: 4618         	mov	r0, r3
  3b06b4: 990a         	ldr	r1, [sp, #0x28]
  3b06b6: f1e9 fa2b    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1e9456
  3b06ba: 4603         	mov	r3, r0
  3b06bc: 4618         	mov	r0, r3
  3b06be: f1e9 f933    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1e9266
  3b06c2: 4603         	mov	r3, r0
  3b06c4: 4628         	mov	r0, r5
  3b06c6: 4619         	mov	r1, r3
  3b06c8: 47a0         	blx	r4
  3b06ca: 9b03         	ldr	r3, [sp, #0xc]
  3b06cc: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  3b06d0: 681b         	ldr	r3, [r3]
  3b06d2: f503 73fc    	add.w	r3, r3, #0x1f8
  3b06d6: 681c         	ldr	r4, [r3]
  3b06d8: 9b03         	ldr	r3, [sp, #0xc]
  3b06da: f8d3 5104    	ldr.w	r5, [r3, #0x104]
  3b06de: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x3b0750 <PostGameScreen::playerEndedGame()+0x410>
  3b06e0: 447b         	add	r3, pc
  3b06e2: 4618         	mov	r0, r3
  3b06e4: 990b         	ldr	r1, [sp, #0x2c]
  3b06e6: f1e9 fa13    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1e9426
  3b06ea: 4603         	mov	r3, r0
  3b06ec: 4618         	mov	r0, r3
  3b06ee: f1e9 f91b    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1e9236
  3b06f2: 4603         	mov	r3, r0
  3b06f4: 4628         	mov	r0, r5
  3b06f6: 4619         	mov	r1, r3
  3b06f8: 47a0         	blx	r4
  3b06fa: f021 fde5    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #0x21bca
  3b06fe: 4603         	mov	r3, r0
  3b0700: 4618         	mov	r0, r3
  3b0702: f022 f9c5    	bl	0x3d2a90 <ScoreKeeper::getRankChange()> @ imm = #0x2238a
  3b0706: 4603         	mov	r3, r0
  3b0708: 2b01         	cmp	r3, #0x1
  3b070a: bf14         	ite	ne
  3b070c: 2300         	movne	r3, #0x0
  3b070e: 2301         	moveq	r3, #0x1
  3b0710: b2db         	uxtb	r3, r3
  3b0712: 2b00         	cmp	r3, #0x0
  3b0714: d00f         	beq	0x3b0736 <PostGameScreen::playerEndedGame()+0x3f6> @ imm = #0x1e
  3b0716: 9803         	ldr	r0, [sp, #0xc]
  3b0718: f7ff faae    	bl	0x3afc78 <PostGameScreen::showPromotion()> @ imm = #-0xaa4
  3b071c: e00b         	b	0x3b0736 <PostGameScreen::playerEndedGame()+0x3f6> @ imm = #0x16
  3b071e: ab04         	add	r3, sp, #0x10
  3b0720: 4618         	mov	r0, r3
  3b0722: f005 f0f7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4051ee
  3b0726: f3d7 fcc1    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3d7982
  3b072a: ab04         	add	r3, sp, #0x10
  3b072c: 4618         	mov	r0, r3
  3b072e: f005 f0f1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4051e2
  3b0732: f3d7 fcbb    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3d7976
  3b0736: b00d         	add	sp, #0x34
  3b0738: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3b0739); words below are literal-pool data ---
  3b073a: bf00         	nop
  3b073c: 3560         	adds	r5, #0x60
  3b073e: 0042         	lsls	r2, r0, #0x1
  3b0740: 3540         	adds	r5, #0x40
  3b0742: 0042         	lsls	r2, r0, #0x1
  3b0744: 3520         	adds	r5, #0x20
  3b0746: 0042         	lsls	r2, r0, #0x1
  3b0748: 3500         	adds	r5, #0x0
  3b074a: 0042         	lsls	r2, r0, #0x1
  3b074c: 3284         	adds	r2, #0x84
  3b074e: 0042         	lsls	r2, r0, #0x1
  3b0750: 3264         	adds	r2, #0x64
  3b0752: 0042         	lsls	r2, r0, #0x1

// ==== PostGameScreen::playerQuitGame
//      file offset 0x3b0754 (= ELF address; Ghidra 0x3c0754), 364 bytes, Thumb-2
  3b0754: b530         	push	{r4, r5, lr}
  3b0756: b085         	sub	sp, #0x14
  3b0758: 9001         	str	r0, [sp, #0x4]
  3b075a: 9b01         	ldr	r3, [sp, #0x4]
  3b075c: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3b0760: 681b         	ldr	r3, [r3]
  3b0762: 3390         	adds	r3, #0x90
  3b0764: 681b         	ldr	r3, [r3]
  3b0766: 9a01         	ldr	r2, [sp, #0x4]
  3b0768: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  3b076c: 4610         	mov	r0, r2
  3b076e: 2100         	movs	r1, #0x0
  3b0770: 4798         	blx	r3
  3b0772: 9b01         	ldr	r3, [sp, #0x4]
  3b0774: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3b0778: 681b         	ldr	r3, [r3]
  3b077a: 3390         	adds	r3, #0x90
  3b077c: 681b         	ldr	r3, [r3]
  3b077e: 9a01         	ldr	r2, [sp, #0x4]
  3b0780: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  3b0784: 4610         	mov	r0, r2
  3b0786: 2100         	movs	r1, #0x0
  3b0788: 4798         	blx	r3
  3b078a: 9b01         	ldr	r3, [sp, #0x4]
  3b078c: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3b0790: 681b         	ldr	r3, [r3]
  3b0792: 3390         	adds	r3, #0x90
  3b0794: 681b         	ldr	r3, [r3]
  3b0796: 9a01         	ldr	r2, [sp, #0x4]
  3b0798: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3b079c: 4610         	mov	r0, r2
  3b079e: 2100         	movs	r1, #0x0
  3b07a0: 4798         	blx	r3
  3b07a2: 9b01         	ldr	r3, [sp, #0x4]
  3b07a4: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3b07a8: 681b         	ldr	r3, [r3]
  3b07aa: 3390         	adds	r3, #0x90
  3b07ac: 681b         	ldr	r3, [r3]
  3b07ae: 9a01         	ldr	r2, [sp, #0x4]
  3b07b0: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3b07b4: 4610         	mov	r0, r2
  3b07b6: 2100         	movs	r1, #0x0
  3b07b8: 4798         	blx	r3
  3b07ba: 9b01         	ldr	r3, [sp, #0x4]
  3b07bc: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3b07c0: 681b         	ldr	r3, [r3]
  3b07c2: f503 73fc    	add.w	r3, r3, #0x1f8
  3b07c6: 681c         	ldr	r4, [r3]
  3b07c8: 9b01         	ldr	r3, [sp, #0x4]
  3b07ca: f8d3 50f4    	ldr.w	r5, [r3, #0xf4]
  3b07ce: 4b39         	ldr	r3, [pc, #0xe4]         @ 0x3b08b4 <PostGameScreen::playerQuitGame()+0x160>
  3b07d0: 447b         	add	r3, pc
  3b07d2: 4618         	mov	r0, r3
  3b07d4: f1e9 f99c    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1e9338
  3b07d8: 4603         	mov	r3, r0
  3b07da: 4618         	mov	r0, r3
  3b07dc: f1e9 f8a4    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1e9148
  3b07e0: 4603         	mov	r3, r0
  3b07e2: 4628         	mov	r0, r5
  3b07e4: 4619         	mov	r1, r3
  3b07e6: 47a0         	blx	r4
  3b07e8: 9b01         	ldr	r3, [sp, #0x4]
  3b07ea: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3b07ee: 681b         	ldr	r3, [r3]
  3b07f0: f503 73fc    	add.w	r3, r3, #0x1f8
  3b07f4: 681b         	ldr	r3, [r3]
  3b07f6: 9a01         	ldr	r2, [sp, #0x4]
  3b07f8: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3b07fc: 4610         	mov	r0, r2
  3b07fe: 4a2e         	ldr	r2, [pc, #0xb8]         @ 0x3b08b8 <PostGameScreen::playerQuitGame()+0x164>
  3b0800: 447a         	add	r2, pc
  3b0802: 4611         	mov	r1, r2
  3b0804: 4798         	blx	r3
  3b0806: 9b01         	ldr	r3, [sp, #0x4]
  3b0808: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3b080c: 681b         	ldr	r3, [r3]
  3b080e: f503 73de    	add.w	r3, r3, #0x1bc
  3b0812: 681c         	ldr	r4, [r3]
  3b0814: 9b01         	ldr	r3, [sp, #0x4]
  3b0816: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3b081a: 461d         	mov	r5, r3
  3b081c: 20ff         	movs	r0, #0xff
  3b081e: 2100         	movs	r1, #0x0
  3b0820: 2200         	movs	r2, #0x0
  3b0822: f7fc ff6f    	bl	0x3ad704 <PointsLayer::onBack(cocos2d::CCObject*)+0x194> @ imm = #-0x3122
  3b0826: 4603         	mov	r3, r0
  3b0828: 461a         	mov	r2, r3
  3b082a: f88d 200c    	strb.w	r2, [sp, #0xc]
  3b082e: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3b0832: f88d 200d    	strb.w	r2, [sp, #0xd]
  3b0836: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3b083a: f88d 300e    	strb.w	r3, [sp, #0xe]
  3b083e: ab03         	add	r3, sp, #0xc
  3b0840: 4628         	mov	r0, r5
  3b0842: 4619         	mov	r1, r3
  3b0844: 47a0         	blx	r4
  3b0846: 9b01         	ldr	r3, [sp, #0x4]
  3b0848: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3b084c: 681b         	ldr	r3, [r3]
  3b084e: f503 730f    	add.w	r3, r3, #0x23c
  3b0852: 681b         	ldr	r3, [r3]
  3b0854: 9a01         	ldr	r2, [sp, #0x4]
  3b0856: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  3b085a: 4610         	mov	r0, r2
  3b085c: 4a17         	ldr	r2, [pc, #0x5c]         @ 0x3b08bc <PostGameScreen::playerQuitGame()+0x168>
  3b085e: 447a         	add	r2, pc
  3b0860: 4611         	mov	r1, r2
  3b0862: 4798         	blx	r3
  3b0864: 9b01         	ldr	r3, [sp, #0x4]
  3b0866: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3b086a: 681b         	ldr	r3, [r3]
  3b086c: f503 73de    	add.w	r3, r3, #0x1bc
  3b0870: 681c         	ldr	r4, [r3]
  3b0872: 9b01         	ldr	r3, [sp, #0x4]
  3b0874: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3b0878: 461d         	mov	r5, r3
  3b087a: 20ff         	movs	r0, #0xff
  3b087c: 2100         	movs	r1, #0x0
  3b087e: 2200         	movs	r2, #0x0
  3b0880: f7fc ff40    	bl	0x3ad704 <PointsLayer::onBack(cocos2d::CCObject*)+0x194> @ imm = #-0x3180
  3b0884: 4603         	mov	r3, r0
  3b0886: 461a         	mov	r2, r3
  3b0888: f88d 200c    	strb.w	r2, [sp, #0xc]
  3b088c: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3b0890: f88d 200d    	strb.w	r2, [sp, #0xd]
  3b0894: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3b0898: f88d 300e    	strb.w	r3, [sp, #0xe]
  3b089c: ab03         	add	r3, sp, #0xc
  3b089e: 4628         	mov	r0, r5
  3b08a0: 4619         	mov	r1, r3
  3b08a2: 47a0         	blx	r4
  3b08a4: f021 fd10    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #0x21a20
  3b08a8: 4603         	mov	r3, r0
  3b08aa: 2201         	movs	r2, #0x1
  3b08ac: f883 2028    	strb.w	r2, [r3, #0x28]
  3b08b0: b005         	add	sp, #0x14
  3b08b2: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3b08b3); words below are literal-pool data ---
  3b08b4: 3234         	adds	r2, #0x34
  3b08b6: 0042         	lsls	r2, r0, #0x1
  3b08b8: 321c         	adds	r2, #0x1c
  3b08ba: 0042         	lsls	r2, r0, #0x1
  3b08bc: 309a         	adds	r0, #0x9a
  3b08be: 0042         	lsls	r2, r0, #0x1
