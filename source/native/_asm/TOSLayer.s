// TOSLayer: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 11 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../TOSLayer.cpp

// ==== TOSLayer::create
//      file offset 0x40558c (= ELF address; Ghidra 0x41558c), 112 bytes, Thumb-2
  40558c: b510         	push	{r4, lr}
  40558e: b082         	sub	sp, #0x8
  405590: f44f 7090    	mov.w	r0, #0x120
  405594: f382 f9e6    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x3823cc
  405598: 4603         	mov	r3, r0
  40559a: 461c         	mov	r4, r3
  40559c: 4620         	mov	r0, r4
  40559e: f000 f82d    	bl	0x4055fc <TOSLayer::TOSLayer()> @ imm = #0x5a
  4055a2: 9401         	str	r4, [sp, #0x4]
  4055a4: 9b01         	ldr	r3, [sp, #0x4]
  4055a6: 2b00         	cmp	r3, #0x0
  4055a8: d00a         	beq	0x4055c0 <TOSLayer::create()+0x34> @ imm = #0x14
  4055aa: 9b01         	ldr	r3, [sp, #0x4]
  4055ac: 681b         	ldr	r3, [r3]
  4055ae: 3318         	adds	r3, #0x18
  4055b0: 681b         	ldr	r3, [r3]
  4055b2: 9801         	ldr	r0, [sp, #0x4]
  4055b4: 4798         	blx	r3
  4055b6: 4603         	mov	r3, r0
  4055b8: 2b00         	cmp	r3, #0x0
  4055ba: d001         	beq	0x4055c0 <TOSLayer::create()+0x34> @ imm = #0x2
  4055bc: 2301         	movs	r3, #0x1
  4055be: e000         	b	0x4055c2 <TOSLayer::create()+0x36> @ imm = #0x0
  4055c0: 2300         	movs	r3, #0x0
  4055c2: 2b00         	cmp	r3, #0x0
  4055c4: d005         	beq	0x4055d2 <TOSLayer::create()+0x46> @ imm = #0xa
  4055c6: 9b01         	ldr	r3, [sp, #0x4]
  4055c8: 4618         	mov	r0, r3
  4055ca: f192 fc97    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x19292e
  4055ce: 9b01         	ldr	r3, [sp, #0x4]
  4055d0: e011         	b	0x4055f6 <TOSLayer::create()+0x6a> @ imm = #0x22
  4055d2: 9b01         	ldr	r3, [sp, #0x4]
  4055d4: 2b00         	cmp	r3, #0x0
  4055d6: d005         	beq	0x4055e4 <TOSLayer::create()+0x58> @ imm = #0xa
  4055d8: 9b01         	ldr	r3, [sp, #0x4]
  4055da: 681b         	ldr	r3, [r3]
  4055dc: 3308         	adds	r3, #0x8
  4055de: 681b         	ldr	r3, [r3]
  4055e0: 9801         	ldr	r0, [sp, #0x4]
  4055e2: 4798         	blx	r3
  4055e4: 2300         	movs	r3, #0x0
  4055e6: 9301         	str	r3, [sp, #0x4]
  4055e8: 2300         	movs	r3, #0x0
  4055ea: e004         	b	0x4055f6 <TOSLayer::create()+0x6a> @ imm = #0x8
  4055ec: 4620         	mov	r0, r4
  4055ee: f382 fd59    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x382ab2
  4055f2: f382 fd5b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x382ab6
  4055f6: 4618         	mov	r0, r3
  4055f8: b002         	add	sp, #0x8
  4055fa: bd10         	pop	{r4, pc}

// ==== TOSLayer::TOSLayer
//      file offset 0x4055fc (= ELF address; Ghidra 0x4155fc), 88 bytes, Thumb-2
  4055fc: b510         	push	{r4, lr}
  4055fe: b082         	sub	sp, #0x8
  405600: 9001         	str	r0, [sp, #0x4]
  405602: 4c12         	ldr	r4, [pc, #0x48]         @ 0x40564c <TOSLayer::TOSLayer()+0x50>
  405604: 447c         	add	r4, pc
  405606: 9b01         	ldr	r3, [sp, #0x4]
  405608: 4618         	mov	r0, r3
  40560a: f1a7 fd27    	bl	0x5ad05c <cocos2d::CCLayer::CCLayer()> @ imm = #0x1a7a4e
  40560e: 9b01         	ldr	r3, [sp, #0x4]
  405610: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x405650 <TOSLayer::TOSLayer()+0x54>
  405612: 58a2         	ldr	r2, [r4, r2]
  405614: 3208         	adds	r2, #0x8
  405616: 601a         	str	r2, [r3]
  405618: 9b01         	ldr	r3, [sp, #0x4]
  40561a: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x405650 <TOSLayer::TOSLayer()+0x54>
  40561c: 58a2         	ldr	r2, [r4, r2]
  40561e: f502 7204    	add.w	r2, r2, #0x210
  405622: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  405626: 9b01         	ldr	r3, [sp, #0x4]
  405628: 4a09         	ldr	r2, [pc, #0x24]         @ 0x405650 <TOSLayer::TOSLayer()+0x54>
  40562a: 58a2         	ldr	r2, [r4, r2]
  40562c: f502 7210    	add.w	r2, r2, #0x240
  405630: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  405634: 9b01         	ldr	r3, [sp, #0x4]
  405636: 4a06         	ldr	r2, [pc, #0x18]         @ 0x405650 <TOSLayer::TOSLayer()+0x54>
  405638: 58a2         	ldr	r2, [r4, r2]
  40563a: f502 7213    	add.w	r2, r2, #0x24c
  40563e: f8c3 20ec    	str.w	r2, [r3, #0xec]
  405642: 9b01         	ldr	r3, [sp, #0x4]
  405644: 4618         	mov	r0, r3
  405646: b002         	add	sp, #0x8
  405648: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x405649); words below are literal-pool data ---
  40564a: bf00         	nop
  40564c: d404         	bmi	0x405658 <TOSLayer::scene()+0x4> @ imm = #0x8
  40564e: 0052         	lsls	r2, r2, #0x1
  405650: df80         	svc	#0x80
  405652: ffff b500    	<unknown>

// ==== TOSLayer::scene
//      file offset 0x405654 (= ELF address; Ghidra 0x415654), 46 bytes, Thumb-2
  405654: b500         	push	{lr}
  405656: b083         	sub	sp, #0xc
  405658: f1aa fa02    	bl	0x5afa60 <cocos2d::CCScene::create()> @ imm = #0x1aa404
  40565c: 4603         	mov	r3, r0
  40565e: 9300         	str	r3, [sp]
  405660: f7ff ff94    	bl	0x40558c <TOSLayer::create()> @ imm = #-0xd8
  405664: 4603         	mov	r3, r0
  405666: 9301         	str	r3, [sp, #0x4]
  405668: 9b00         	ldr	r3, [sp]
  40566a: 681b         	ldr	r3, [r3]
  40566c: 33c8         	adds	r3, #0xc8
  40566e: 681b         	ldr	r3, [r3]
  405670: 9a00         	ldr	r2, [sp]
  405672: 4610         	mov	r0, r2
  405674: 9901         	ldr	r1, [sp, #0x4]
  405676: 4798         	blx	r3
  405678: 9b00         	ldr	r3, [sp]
  40567a: 4618         	mov	r0, r3
  40567c: b003         	add	sp, #0xc
  40567e: f85d fb04    	ldr	pc, [sp], #4

// ==== TOSLayer::init
//      file offset 0x405688 (= ELF address; Ghidra 0x415688), 1752 bytes, Thumb-2
  405688: b5f0         	push	{r4, r5, r6, r7, lr}
  40568a: ed2d 8b02    	vpush	{d8}
  40568e: b0a5         	sub	sp, #0x94
  405690: 9003         	str	r0, [sp, #0xc]
  405692: 4c09         	ldr	r4, [pc, #0x24]         @ 0x4056b8 <TOSLayer::init()+0x30>
  405694: 447c         	add	r4, pc
  405696: 9b03         	ldr	r3, [sp, #0xc]
  405698: 4618         	mov	r0, r3
  40569a: f1a7 fdad    	bl	0x5ad1f8 <cocos2d::CCLayer::init()> @ imm = #0x1a7b5a
  40569e: 4603         	mov	r3, r0
  4056a0: f88d 3017    	strb.w	r3, [sp, #0x17]
  4056a4: f89d 3017    	ldrb.w	r3, [sp, #0x17]
  4056a8: f083 0301    	eor	r3, r3, #0x1
  4056ac: b2db         	uxtb	r3, r3
  4056ae: 2b00         	cmp	r3, #0x0
  4056b0: d004         	beq	0x4056bc <TOSLayer::init()+0x34> @ imm = #0x8
  4056b2: 2300         	movs	r3, #0x0
  4056b4: e342         	b	0x405d3c <TOSLayer::init()+0x6b4> @ imm = #0x684
  4056b6: bf00         	nop
  4056b8: d374         	blo	0x4057a4 <TOSLayer::init()+0x11c> @ imm = #0xe8
  4056ba: 0052         	lsls	r2, r2, #0x1
  4056bc: 9b03         	ldr	r3, [sp, #0xc]
  4056be: 2200         	movs	r2, #0x0
  4056c0: f883 2108    	strb.w	r2, [r3, #0x108]
  4056c4: ab0e         	add	r3, sp, #0x38
  4056c6: 4618         	mov	r0, r3
  4056c8: f8df 3448    	ldr.w	r3, [pc, #0x448]        @ 0x405b14 <TOSLayer::init()+0x48c>
  4056cc: 58e3         	ldr	r3, [r4, r3]
  4056ce: 4619         	mov	r1, r3
  4056d0: f18d fcee    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x18d9dc
  4056d4: ed9d 7a0e    	vldr	s14, [sp, #56]
  4056d8: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  4056dc: eec7 6a27    	vdiv.f32	s13, s14, s15
  4056e0: ed9d 7a0f    	vldr	s14, [sp, #60]
  4056e4: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  4056e8: eec7 7a27    	vdiv.f32	s15, s14, s15
  4056ec: ab10         	add	r3, sp, #0x40
  4056ee: 4618         	mov	r0, r3
  4056f0: ee16 1a90    	vmov	r1, s13
  4056f4: ee17 2a90    	vmov	r2, s15
  4056f8: f18d fafa    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x18d5f4
  4056fc: f8df 3418    	ldr.w	r3, [pc, #0x418]        @ 0x405b18 <TOSLayer::init()+0x490>
  405700: 447b         	add	r3, pc
  405702: 4618         	mov	r0, r3
  405704: f1d2 fd3e    	bl	0x5d8184 <cocos2d::CCSprite::create(char const*)> @ imm = #0x1d2a7c
  405708: 4602         	mov	r2, r0
  40570a: 9b03         	ldr	r3, [sp, #0xc]
  40570c: f8c3 210c    	str.w	r2, [r3, #0x10c]
  405710: 9b03         	ldr	r3, [sp, #0xc]
  405712: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  405716: 681b         	ldr	r3, [r3]
  405718: 334c         	adds	r3, #0x4c
  40571a: 681b         	ldr	r3, [r3]
  40571c: 9a03         	ldr	r2, [sp, #0xc]
  40571e: f8d2 110c    	ldr.w	r1, [r2, #0x10c]
  405722: aa10         	add	r2, sp, #0x40
  405724: 4608         	mov	r0, r1
  405726: 4611         	mov	r1, r2
  405728: 4798         	blx	r3
  40572a: 9b03         	ldr	r3, [sp, #0xc]
  40572c: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  405730: 681b         	ldr	r3, [r3]
  405732: f503 73d2    	add.w	r3, r3, #0x1a4
  405736: 681b         	ldr	r3, [r3]
  405738: 9a03         	ldr	r2, [sp, #0xc]
  40573a: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  40573e: 4610         	mov	r0, r2
  405740: 2123         	movs	r1, #0x23
  405742: 4798         	blx	r3
  405744: 9b03         	ldr	r3, [sp, #0xc]
  405746: 681b         	ldr	r3, [r3]
  405748: 33c8         	adds	r3, #0xc8
  40574a: 681b         	ldr	r3, [r3]
  40574c: 9903         	ldr	r1, [sp, #0xc]
  40574e: 9a03         	ldr	r2, [sp, #0xc]
  405750: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  405754: 4608         	mov	r0, r1
  405756: 4611         	mov	r1, r2
  405758: 4798         	blx	r3
  40575a: 4bf0         	ldr	r3, [pc, #0x3c0]        @ 0x405b1c <TOSLayer::init()+0x494>
  40575c: 447b         	add	r3, pc
  40575e: 4618         	mov	r0, r3
  405760: f1d2 fdd0    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x1d2ba0
  405764: 4603         	mov	r3, r0
  405766: 9307         	str	r3, [sp, #0x1c]
  405768: 4bed         	ldr	r3, [pc, #0x3b4]        @ 0x405b20 <TOSLayer::init()+0x498>
  40576a: 447b         	add	r3, pc
  40576c: 4618         	mov	r0, r3
  40576e: f1d2 fdc9    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x1d2b92
  405772: 4603         	mov	r3, r0
  405774: 9308         	str	r3, [sp, #0x20]
  405776: 9a03         	ldr	r2, [sp, #0xc]
  405778: 4bea         	ldr	r3, [pc, #0x3a8]        @ 0x405b24 <TOSLayer::init()+0x49c>
  40577a: 58e3         	ldr	r3, [r4, r3]
  40577c: 9318         	str	r3, [sp, #0x60]
  40577e: 2300         	movs	r3, #0x0
  405780: 9319         	str	r3, [sp, #0x64]
  405782: 9b19         	ldr	r3, [sp, #0x64]
  405784: 9300         	str	r3, [sp]
  405786: 9b18         	ldr	r3, [sp, #0x60]
  405788: 9807         	ldr	r0, [sp, #0x1c]
  40578a: 9907         	ldr	r1, [sp, #0x1c]
  40578c: f1b2 fdce    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x1b2b9c
  405790: 4603         	mov	r3, r0
  405792: 9309         	str	r3, [sp, #0x24]
  405794: 9809         	ldr	r0, [sp, #0x24]
  405796: 2100         	movs	r1, #0x0
  405798: f1af fcd0    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x1af9a0
  40579c: 4602         	mov	r2, r0
  40579e: 9b03         	ldr	r3, [sp, #0xc]
  4057a0: f8c3 2118    	str.w	r2, [r3, #0x118]
  4057a4: 9b03         	ldr	r3, [sp, #0xc]
  4057a6: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  4057aa: 4618         	mov	r0, r3
  4057ac: f192 fb9c    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x192738
  4057b0: 9b03         	ldr	r3, [sp, #0xc]
  4057b2: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  4057b6: 681b         	ldr	r3, [r3]
  4057b8: 334c         	adds	r3, #0x4c
  4057ba: 681d         	ldr	r5, [r3]
  4057bc: 9b03         	ldr	r3, [sp, #0xc]
  4057be: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  4057c2: 461e         	mov	r6, r3
  4057c4: ab20         	add	r3, sp, #0x80
  4057c6: 4618         	mov	r0, r3
  4057c8: f04f 0100    	mov.w	r1, #0x0
  4057cc: f2c4 2160    	movt	r1, #0x4260
  4057d0: f04f 4284    	mov.w	r2, #0x42000000
  4057d4: f18d fa8c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x18d518
  4057d8: ab20         	add	r3, sp, #0x80
  4057da: 4630         	mov	r0, r6
  4057dc: 4619         	mov	r1, r3
  4057de: 47a8         	blx	r5
  4057e0: 9b03         	ldr	r3, [sp, #0xc]
  4057e2: 681b         	ldr	r3, [r3]
  4057e4: 33c8         	adds	r3, #0xc8
  4057e6: 681b         	ldr	r3, [r3]
  4057e8: 9903         	ldr	r1, [sp, #0xc]
  4057ea: 9a03         	ldr	r2, [sp, #0xc]
  4057ec: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  4057f0: 4608         	mov	r0, r1
  4057f2: 4611         	mov	r1, r2
  4057f4: 4798         	blx	r3
  4057f6: 9a03         	ldr	r2, [sp, #0xc]
  4057f8: 4bcb         	ldr	r3, [pc, #0x32c]        @ 0x405b28 <TOSLayer::init()+0x4a0>
  4057fa: 58e3         	ldr	r3, [r4, r3]
  4057fc: 931a         	str	r3, [sp, #0x68]
  4057fe: 2300         	movs	r3, #0x0
  405800: 931b         	str	r3, [sp, #0x6c]
  405802: 9b1b         	ldr	r3, [sp, #0x6c]
  405804: 9300         	str	r3, [sp]
  405806: 9b1a         	ldr	r3, [sp, #0x68]
  405808: 9808         	ldr	r0, [sp, #0x20]
  40580a: 9908         	ldr	r1, [sp, #0x20]
  40580c: f1b2 fd8e    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x1b2b1c
  405810: 4603         	mov	r3, r0
  405812: 930a         	str	r3, [sp, #0x28]
  405814: 980a         	ldr	r0, [sp, #0x28]
  405816: 2100         	movs	r1, #0x0
  405818: f1af fc90    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x1af920
  40581c: 4602         	mov	r2, r0
  40581e: 9b03         	ldr	r3, [sp, #0xc]
  405820: f8c3 211c    	str.w	r2, [r3, #0x11c]
  405824: 9b03         	ldr	r3, [sp, #0xc]
  405826: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  40582a: 4618         	mov	r0, r3
  40582c: f192 fb5c    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1926b8
  405830: 9b03         	ldr	r3, [sp, #0xc]
  405832: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  405836: 681b         	ldr	r3, [r3]
  405838: 334c         	adds	r3, #0x4c
  40583a: 681d         	ldr	r5, [r3]
  40583c: 9b03         	ldr	r3, [sp, #0xc]
  40583e: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  405842: 461e         	mov	r6, r3
  405844: ed9d 7a0e    	vldr	s14, [sp, #56]
  405848: eddf 7ab1    	vldr	s15, [pc, #708]         @ 0x405b10 <TOSLayer::init()+0x488>
  40584c: ee77 7a67    	vsub.f32	s15, s14, s15
  405850: ab20         	add	r3, sp, #0x80
  405852: 4618         	mov	r0, r3
  405854: ee17 1a90    	vmov	r1, s15
  405858: f04f 4284    	mov.w	r2, #0x42000000
  40585c: f18d fa48    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x18d490
  405860: ab20         	add	r3, sp, #0x80
  405862: 4630         	mov	r0, r6
  405864: 4619         	mov	r1, r3
  405866: 47a8         	blx	r5
  405868: 9b03         	ldr	r3, [sp, #0xc]
  40586a: 681b         	ldr	r3, [r3]
  40586c: 33c8         	adds	r3, #0xc8
  40586e: 681b         	ldr	r3, [r3]
  405870: 9903         	ldr	r1, [sp, #0xc]
  405872: 9a03         	ldr	r2, [sp, #0xc]
  405874: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  405878: 4608         	mov	r0, r1
  40587a: 4611         	mov	r1, r2
  40587c: 4798         	blx	r3
  40587e: f64c 43cd    	movw	r3, #0xcccd
  405882: f6c3 730c    	movt	r3, #0x3f0c
  405886: 930b         	str	r3, [sp, #0x2c]
  405888: f04f 0300    	mov.w	r3, #0x0
  40588c: f2c4 13c0    	movt	r3, #0x41c0
  405890: 930c         	str	r3, [sp, #0x30]
  405892: f04f 4341    	mov.w	r3, #0xc1000000
  405896: 930d         	str	r3, [sp, #0x34]
  405898: 4ba4         	ldr	r3, [pc, #0x290]        @ 0x405b2c <TOSLayer::init()+0x4a4>
  40589a: 447b         	add	r3, pc
  40589c: 4618         	mov	r0, r3
  40589e: f3af fd2f    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3afa5e
  4058a2: 4603         	mov	r3, r0
  4058a4: 2220         	movs	r2, #0x20
  4058a6: 9200         	str	r2, [sp]
  4058a8: 4aa1         	ldr	r2, [pc, #0x284]        @ 0x405b30 <TOSLayer::init()+0x4a8>
  4058aa: 447a         	add	r2, pc
  4058ac: 4610         	mov	r0, r2
  4058ae: 4619         	mov	r1, r3
  4058b0: 2220         	movs	r2, #0x20
  4058b2: 2320         	movs	r3, #0x20
  4058b4: f19f fd60    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x19fac0
  4058b8: 4602         	mov	r2, r0
  4058ba: 9b03         	ldr	r3, [sp, #0xc]
  4058bc: f8c3 2110    	str.w	r2, [r3, #0x110]
  4058c0: 9b03         	ldr	r3, [sp, #0xc]
  4058c2: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  4058c6: 4618         	mov	r0, r3
  4058c8: f192 fb0e    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x19261c
  4058cc: 9b03         	ldr	r3, [sp, #0xc]
  4058ce: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  4058d2: 681b         	ldr	r3, [r3]
  4058d4: 334c         	adds	r3, #0x4c
  4058d6: 681d         	ldr	r5, [r3]
  4058d8: 9b03         	ldr	r3, [sp, #0xc]
  4058da: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  4058de: 461e         	mov	r6, r3
  4058e0: 9b03         	ldr	r3, [sp, #0xc]
  4058e2: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  4058e6: 681b         	ldr	r3, [r3]
  4058e8: 3350         	adds	r3, #0x50
  4058ea: 681b         	ldr	r3, [r3]
  4058ec: 9a03         	ldr	r2, [sp, #0xc]
  4058ee: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  4058f2: 4610         	mov	r0, r2
  4058f4: 4798         	blx	r3
  4058f6: 4603         	mov	r3, r0
  4058f8: 681f         	ldr	r7, [r3]
  4058fa: 9b03         	ldr	r3, [sp, #0xc]
  4058fc: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  405900: 681b         	ldr	r3, [r3]
  405902: 3350         	adds	r3, #0x50
  405904: 681b         	ldr	r3, [r3]
  405906: 9a03         	ldr	r2, [sp, #0xc]
  405908: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  40590c: 4610         	mov	r0, r2
  40590e: 4798         	blx	r3
  405910: 4603         	mov	r3, r0
  405912: 685b         	ldr	r3, [r3, #0x4]
  405914: aa12         	add	r2, sp, #0x48
  405916: 4610         	mov	r0, r2
  405918: 4639         	mov	r1, r7
  40591a: 461a         	mov	r2, r3
  40591c: f18d f9e8    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x18d3d0
  405920: eddd 7a0d    	vldr	s15, [sp, #52]
  405924: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  405928: ab1c         	add	r3, sp, #0x70
  40592a: 4618         	mov	r0, r3
  40592c: ed9f 0b76    	vldr	d0, [pc, #472]          @ 0x405b08 <TOSLayer::init()+0x480>
  405930: eeb0 1b47    	vmov.f64	d1, d7
  405934: f7fe ff6c    	bl	0x404810 <SurvivalStage::returnToLobby(cocos2d::CCObject*)+0x220> @ imm = #-0x1128
  405938: ed9d 8b1c    	vldr	d8, [sp, #112]
  40593c: 9b03         	ldr	r3, [sp, #0xc]
  40593e: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  405942: 681b         	ldr	r3, [r3]
  405944: f503 73fe    	add.w	r3, r3, #0x1fc
  405948: 681b         	ldr	r3, [r3]
  40594a: 9a03         	ldr	r2, [sp, #0xc]
  40594c: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  405950: 4610         	mov	r0, r2
  405952: 4798         	blx	r3
  405954: 4607         	mov	r7, r0
  405956: ab05         	add	r3, sp, #0x14
  405958: 4618         	mov	r0, r3
  40595a: f384 fd4b    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x384a96
  40595e: aa06         	add	r2, sp, #0x18
  405960: ab05         	add	r3, sp, #0x14
  405962: 4610         	mov	r0, r2
  405964: 4639         	mov	r1, r7
  405966: 461a         	mov	r2, r3
  405968: f3b1 f87a    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3b10f4
  40596c: ab06         	add	r3, sp, #0x18
  40596e: 4618         	mov	r0, r3
  405970: f3af fb74    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x3af6e8
  405974: 4603         	mov	r3, r0
  405976: ee07 3a90    	vmov	s15, r3
  40597a: eeb8 7a67    	vcvt.f32.u32	s14, s15
  40597e: eddd 7a0c    	vldr	s15, [sp, #48]
  405982: ee27 7a27    	vmul.f32	s14, s14, s15
  405986: eddd 7a0b    	vldr	s15, [sp, #44]
  40598a: ee27 7a27    	vmul.f32	s14, s14, s15
  40598e: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  405992: eec7 7a27    	vdiv.f32	s15, s14, s15
  405996: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  40599a: ee38 7b47    	vsub.f64	d7, d8, d7
  40599e: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  4059a2: eddd 7a0d    	vldr	s15, [sp, #52]
  4059a6: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  4059aa: ab20         	add	r3, sp, #0x80
  4059ac: 4618         	mov	r0, r3
  4059ae: ed9f 0b56    	vldr	d0, [pc, #344]          @ 0x405b08 <TOSLayer::init()+0x480>
  4059b2: eeb0 1b47    	vmov.f64	d1, d7
  4059b6: f7fe ff2b    	bl	0x404810 <SurvivalStage::returnToLobby(cocos2d::CCObject*)+0x220> @ imm = #-0x11aa
  4059ba: ed9d 7b22    	vldr	d7, [sp, #136]
  4059be: eef7 7bc7    	vcvt.f32.f64	s15, d7
  4059c2: ab14         	add	r3, sp, #0x50
  4059c4: 4618         	mov	r0, r3
  4059c6: ee18 1a10    	vmov	r1, s16
  4059ca: ee17 2a90    	vmov	r2, s15
  4059ce: f18d f98f    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x18d31e
  4059d2: a916         	add	r1, sp, #0x58
  4059d4: aa12         	add	r2, sp, #0x48
  4059d6: ab14         	add	r3, sp, #0x50
  4059d8: 4608         	mov	r0, r1
  4059da: 4611         	mov	r1, r2
  4059dc: 461a         	mov	r2, r3
  4059de: f7fe ff07    	bl	0x4047f0 <SurvivalStage::returnToLobby(cocos2d::CCObject*)+0x200> @ imm = #-0x11f2
  4059e2: ab16         	add	r3, sp, #0x58
  4059e4: 4630         	mov	r0, r6
  4059e6: 4619         	mov	r1, r3
  4059e8: 47a8         	blx	r5
  4059ea: ab06         	add	r3, sp, #0x18
  4059ec: 4618         	mov	r0, r3
  4059ee: f3af ff91    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3aff22
  4059f2: ab05         	add	r3, sp, #0x14
  4059f4: 4618         	mov	r0, r3
  4059f6: f384 fd01    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x384a02
  4059fa: 9b03         	ldr	r3, [sp, #0xc]
  4059fc: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  405a00: 681b         	ldr	r3, [r3]
  405a02: 3340         	adds	r3, #0x40
  405a04: 681b         	ldr	r3, [r3]
  405a06: 9a03         	ldr	r2, [sp, #0xc]
  405a08: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  405a0c: 4610         	mov	r0, r2
  405a0e: 990b         	ldr	r1, [sp, #0x2c]
  405a10: 4798         	blx	r3
  405a12: 9b03         	ldr	r3, [sp, #0xc]
  405a14: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  405a18: eddd 7a0c    	vldr	s15, [sp, #48]
  405a1c: eefd 7ae7    	vcvt.s32.f32	s15, s15
  405a20: ee17 2a90    	vmov	r2, s15
  405a24: 4618         	mov	r0, r3
  405a26: 4611         	mov	r1, r2
  405a28: f1a0 f9ac    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1a0358
  405a2c: 9b03         	ldr	r3, [sp, #0xc]
  405a2e: 681b         	ldr	r3, [r3]
  405a30: 33c8         	adds	r3, #0xc8
  405a32: 681b         	ldr	r3, [r3]
  405a34: 9903         	ldr	r1, [sp, #0xc]
  405a36: 9a03         	ldr	r2, [sp, #0xc]
  405a38: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  405a3c: 4608         	mov	r0, r1
  405a3e: 4611         	mov	r1, r2
  405a40: 4798         	blx	r3
  405a42: 4b3c         	ldr	r3, [pc, #0xf0]         @ 0x405b34 <TOSLayer::init()+0x4ac>
  405a44: 447b         	add	r3, pc
  405a46: 4618         	mov	r0, r3
  405a48: f3af fc5a    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3af8b4
  405a4c: 4603         	mov	r3, r0
  405a4e: 2220         	movs	r2, #0x20
  405a50: 9200         	str	r2, [sp]
  405a52: 4a39         	ldr	r2, [pc, #0xe4]         @ 0x405b38 <TOSLayer::init()+0x4b0>
  405a54: 447a         	add	r2, pc
  405a56: 4610         	mov	r0, r2
  405a58: 4619         	mov	r1, r3
  405a5a: 2220         	movs	r2, #0x20
  405a5c: 2320         	movs	r3, #0x20
  405a5e: f19f fc8b    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x19f916
  405a62: 4602         	mov	r2, r0
  405a64: 9b03         	ldr	r3, [sp, #0xc]
  405a66: f8c3 2114    	str.w	r2, [r3, #0x114]
  405a6a: 9b03         	ldr	r3, [sp, #0xc]
  405a6c: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  405a70: 4618         	mov	r0, r3
  405a72: f192 fa39    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x192472
  405a76: 9b03         	ldr	r3, [sp, #0xc]
  405a78: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  405a7c: 681b         	ldr	r3, [r3]
  405a7e: 334c         	adds	r3, #0x4c
  405a80: 681d         	ldr	r5, [r3]
  405a82: 9b03         	ldr	r3, [sp, #0xc]
  405a84: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  405a88: 461e         	mov	r6, r3
  405a8a: 9b03         	ldr	r3, [sp, #0xc]
  405a8c: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  405a90: 681b         	ldr	r3, [r3]
  405a92: 3350         	adds	r3, #0x50
  405a94: 681b         	ldr	r3, [r3]
  405a96: 9a03         	ldr	r2, [sp, #0xc]
  405a98: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  405a9c: 4610         	mov	r0, r2
  405a9e: 4798         	blx	r3
  405aa0: 4603         	mov	r3, r0
  405aa2: 681f         	ldr	r7, [r3]
  405aa4: 9b03         	ldr	r3, [sp, #0xc]
  405aa6: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  405aaa: 681b         	ldr	r3, [r3]
  405aac: 3350         	adds	r3, #0x50
  405aae: 681b         	ldr	r3, [r3]
  405ab0: 9a03         	ldr	r2, [sp, #0xc]
  405ab2: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  405ab6: 4610         	mov	r0, r2
  405ab8: 4798         	blx	r3
  405aba: 4603         	mov	r3, r0
  405abc: 685b         	ldr	r3, [r3, #0x4]
  405abe: aa12         	add	r2, sp, #0x48
  405ac0: 4610         	mov	r0, r2
  405ac2: 4639         	mov	r1, r7
  405ac4: 461a         	mov	r2, r3
  405ac6: f18d f913    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x18d226
  405aca: eddd 7a0d    	vldr	s15, [sp, #52]
  405ace: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  405ad2: ab1c         	add	r3, sp, #0x70
  405ad4: 4618         	mov	r0, r3
  405ad6: ed9f 0b0c    	vldr	d0, [pc, #48]           @ 0x405b08 <TOSLayer::init()+0x480>
  405ada: eeb0 1b47    	vmov.f64	d1, d7
  405ade: f7fe fe97    	bl	0x404810 <SurvivalStage::returnToLobby(cocos2d::CCObject*)+0x220> @ imm = #-0x12d2
  405ae2: ed9d 8b1c    	vldr	d8, [sp, #112]
  405ae6: 9b03         	ldr	r3, [sp, #0xc]
  405ae8: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  405aec: 681b         	ldr	r3, [r3]
  405aee: f503 73fe    	add.w	r3, r3, #0x1fc
  405af2: 681b         	ldr	r3, [r3]
  405af4: 9a03         	ldr	r2, [sp, #0xc]
  405af6: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  405afa: 4610         	mov	r0, r2
  405afc: 4798         	blx	r3
  405afe: 4607         	mov	r7, r0
  405b00: e01c         	b	0x405b3c <TOSLayer::init()+0x4b4> @ imm = #0x38
  405b02: bf00         	nop
  405b04: f3af 8000    	nop.w
  405b10: 0000         	movs	r0, r0
  405b12: 4260         	rsbs	r0, r4, #0
  405b14: d724         	bvc	0x405b60 <TOSLayer::init()+0x4d8> @ imm = #0x48
  405b16: ffff 4bbc    	<unknown>
  405b1a: 003d         	movs	r5, r7
  405b1c: 4b74         	ldr	r3, [pc, #0x1d0]        @ 0x405cf0 <TOSLayer::init()+0x668>
  405b1e: 003d         	movs	r5, r7
  405b20: 4b66         	ldr	r3, [pc, #0x198]        @ 0x405cbc <TOSLayer::init()+0x634>
  405b22: 003d         	movs	r5, r7
  405b24: df84         	svc	#0x84
  405b26: ffff df88    	<unknown>
  405b2a: ffff d56e    	<unknown>
  405b2e: 0053         	lsls	r3, r2, #0x1
  405b30: 4a32         	ldr	r2, [pc, #0xc8]         @ 0x405bfc <TOSLayer::init()+0x574>
  405b32: 003d         	movs	r5, r7
  405b34: d3c4         	blo	0x405ac0 <TOSLayer::init()+0x438> @ imm = #-0x78
  405b36: 0053         	lsls	r3, r2, #0x1
  405b38: 4890         	ldr	r0, [pc, #0x240]        @ 0x405d7c <TOSLayer::~TOSLayer()+0x1c>
  405b3a: 003d         	movs	r5, r7
  405b3c: ab05         	add	r3, sp, #0x14
  405b3e: 4618         	mov	r0, r3
  405b40: f384 fc58    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3848b0
  405b44: aa06         	add	r2, sp, #0x18
  405b46: ab05         	add	r3, sp, #0x14
  405b48: 4610         	mov	r0, r2
  405b4a: 4639         	mov	r1, r7
  405b4c: 461a         	mov	r2, r3
  405b4e: f3b0 ff87    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3b0f0e
  405b52: ab06         	add	r3, sp, #0x18
  405b54: 4618         	mov	r0, r3
  405b56: f3af fa81    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x3af502
  405b5a: 4603         	mov	r3, r0
  405b5c: ee07 3a90    	vmov	s15, r3
  405b60: eeb8 7a67    	vcvt.f32.u32	s14, s15
  405b64: eddd 7a0c    	vldr	s15, [sp, #48]
  405b68: ee27 7a27    	vmul.f32	s14, s14, s15
  405b6c: eddd 7a0b    	vldr	s15, [sp, #44]
  405b70: ee27 7a27    	vmul.f32	s14, s14, s15
  405b74: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  405b78: eec7 7a27    	vdiv.f32	s15, s14, s15
  405b7c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  405b80: ee38 7b47    	vsub.f64	d7, d8, d7
  405b84: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  405b88: eddd 7a0d    	vldr	s15, [sp, #52]
  405b8c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  405b90: ab20         	add	r3, sp, #0x80
  405b92: 4618         	mov	r0, r3
  405b94: ed9f 0b6c    	vldr	d0, [pc, #432]          @ 0x405d48 <TOSLayer::init()+0x6c0>
  405b98: eeb0 1b47    	vmov.f64	d1, d7
  405b9c: f7fe fe38    	bl	0x404810 <SurvivalStage::returnToLobby(cocos2d::CCObject*)+0x220> @ imm = #-0x1390
  405ba0: ed9d 7b22    	vldr	d7, [sp, #136]
  405ba4: eef7 7bc7    	vcvt.f32.f64	s15, d7
  405ba8: ab14         	add	r3, sp, #0x50
  405baa: 4618         	mov	r0, r3
  405bac: ee18 1a10    	vmov	r1, s16
  405bb0: ee17 2a90    	vmov	r2, s15
  405bb4: f18d f89c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x18d138
  405bb8: a916         	add	r1, sp, #0x58
  405bba: aa12         	add	r2, sp, #0x48
  405bbc: ab14         	add	r3, sp, #0x50
  405bbe: 4608         	mov	r0, r1
  405bc0: 4611         	mov	r1, r2
  405bc2: 461a         	mov	r2, r3
  405bc4: f7fe fe14    	bl	0x4047f0 <SurvivalStage::returnToLobby(cocos2d::CCObject*)+0x200> @ imm = #-0x13d8
  405bc8: ab16         	add	r3, sp, #0x58
  405bca: 4630         	mov	r0, r6
  405bcc: 4619         	mov	r1, r3
  405bce: 47a8         	blx	r5
  405bd0: ab06         	add	r3, sp, #0x18
  405bd2: 4618         	mov	r0, r3
  405bd4: f3af fe9e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3afd3c
  405bd8: ab05         	add	r3, sp, #0x14
  405bda: 4618         	mov	r0, r3
  405bdc: f384 fc0e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38481c
  405be0: 9b03         	ldr	r3, [sp, #0xc]
  405be2: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  405be6: 681b         	ldr	r3, [r3]
  405be8: 3340         	adds	r3, #0x40
  405bea: 681b         	ldr	r3, [r3]
  405bec: 9a03         	ldr	r2, [sp, #0xc]
  405bee: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  405bf2: 4610         	mov	r0, r2
  405bf4: 990b         	ldr	r1, [sp, #0x2c]
  405bf6: 4798         	blx	r3
  405bf8: 9b03         	ldr	r3, [sp, #0xc]
  405bfa: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  405bfe: eddd 7a0c    	vldr	s15, [sp, #48]
  405c02: eefd 7ae7    	vcvt.s32.f32	s15, s15
  405c06: ee17 2a90    	vmov	r2, s15
  405c0a: 4618         	mov	r0, r3
  405c0c: 4611         	mov	r1, r2
  405c0e: f1a0 f8b9    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1a0172
  405c12: 9b03         	ldr	r3, [sp, #0xc]
  405c14: 681b         	ldr	r3, [r3]
  405c16: 33c8         	adds	r3, #0xc8
  405c18: 681b         	ldr	r3, [r3]
  405c1a: 9903         	ldr	r1, [sp, #0xc]
  405c1c: 9a03         	ldr	r2, [sp, #0xc]
  405c1e: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  405c22: 4608         	mov	r0, r1
  405c24: 4611         	mov	r1, r2
  405c26: 4798         	blx	r3
  405c28: f026 fa3e    	bl	0x42c0a8 <ApplicationInterface::removeAdBanner()> @ imm = #0x2647c
  405c2c: ab12         	add	r3, sp, #0x48
  405c2e: 4618         	mov	r0, r3
  405c30: f384 fbe0    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3847c0
  405c34: aa1c         	add	r2, sp, #0x70
  405c36: ab12         	add	r3, sp, #0x48
  405c38: 4610         	mov	r0, r2
  405c3a: 4a45         	ldr	r2, [pc, #0x114]        @ 0x405d50 <TOSLayer::init()+0x6c8>
  405c3c: 447a         	add	r2, pc
  405c3e: 4611         	mov	r1, r2
  405c40: 461a         	mov	r2, r3
  405c42: f3b0 ff0d    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3b0e1a
  405c46: ab14         	add	r3, sp, #0x50
  405c48: 4618         	mov	r0, r3
  405c4a: f384 fbd3    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3847a6
  405c4e: aa20         	add	r2, sp, #0x80
  405c50: ab14         	add	r3, sp, #0x50
  405c52: 4610         	mov	r0, r2
  405c54: 4a3f         	ldr	r2, [pc, #0xfc]         @ 0x405d54 <TOSLayer::init()+0x6cc>
  405c56: 447a         	add	r2, pc
  405c58: 4611         	mov	r1, r2
  405c5a: 461a         	mov	r2, r3
  405c5c: f3b0 ff00    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3b0e00
  405c60: ab06         	add	r3, sp, #0x18
  405c62: 4618         	mov	r0, r3
  405c64: f384 fbc6    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x38478c
  405c68: aa16         	add	r2, sp, #0x58
  405c6a: ab06         	add	r3, sp, #0x18
  405c6c: 4610         	mov	r0, r2
  405c6e: 4a3a         	ldr	r2, [pc, #0xe8]         @ 0x405d58 <TOSLayer::init()+0x6d0>
  405c70: 447a         	add	r2, pc
  405c72: 4611         	mov	r1, r2
  405c74: 461a         	mov	r2, r3
  405c76: f3b0 fef3    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3b0de6
  405c7a: ab16         	add	r3, sp, #0x58
  405c7c: 4618         	mov	r0, r3
  405c7e: f193 fedd    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x193dba
  405c82: 4603         	mov	r3, r0
  405c84: 4618         	mov	r0, r3
  405c86: 2100         	movs	r1, #0x0
  405c88: f194 f8c2    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x194184
  405c8c: 4603         	mov	r3, r0
  405c8e: a91c         	add	r1, sp, #0x70
  405c90: aa20         	add	r2, sp, #0x80
  405c92: 2000         	movs	r0, #0x0
  405c94: 9000         	str	r0, [sp]
  405c96: 2000         	movs	r0, #0x0
  405c98: 9001         	str	r0, [sp, #0x4]
  405c9a: 4830         	ldr	r0, [pc, #0xc0]         @ 0x405d5c <TOSLayer::init()+0x6d4>
  405c9c: 5820         	ldr	r0, [r4, r0]
  405c9e: f6d9 fda9    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0x1264ae
  405ca2: ab16         	add	r3, sp, #0x58
  405ca4: 4618         	mov	r0, r3
  405ca6: f3af fe35    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3afc6a
  405caa: ab06         	add	r3, sp, #0x18
  405cac: 4618         	mov	r0, r3
  405cae: f384 fba5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38474a
  405cb2: ab20         	add	r3, sp, #0x80
  405cb4: 4618         	mov	r0, r3
  405cb6: f3af fe2d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3afc5a
  405cba: ab14         	add	r3, sp, #0x50
  405cbc: 4618         	mov	r0, r3
  405cbe: f384 fb9d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38473a
  405cc2: ab1c         	add	r3, sp, #0x70
  405cc4: 4618         	mov	r0, r3
  405cc6: f3af fe25    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3afc4a
  405cca: ab12         	add	r3, sp, #0x48
  405ccc: 4618         	mov	r0, r3
  405cce: f384 fb95    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38472a
  405cd2: 2301         	movs	r3, #0x1
  405cd4: e032         	b	0x405d3c <TOSLayer::init()+0x6b4> @ imm = #0x64
  405cd6: ab06         	add	r3, sp, #0x18
  405cd8: 4618         	mov	r0, r3
  405cda: f3af fe1b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3afc36
  405cde: e7ff         	b	0x405ce0 <TOSLayer::init()+0x658> @ imm = #-0x2
  405ce0: ab05         	add	r3, sp, #0x14
  405ce2: 4618         	mov	r0, r3
  405ce4: f384 fb8a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x384714
  405ce8: f382 f9e0    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3823c0
  405cec: ab06         	add	r3, sp, #0x18
  405cee: 4618         	mov	r0, r3
  405cf0: f3af fe10    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3afc20
  405cf4: e7ff         	b	0x405cf6 <TOSLayer::init()+0x66e> @ imm = #-0x2
  405cf6: ab05         	add	r3, sp, #0x14
  405cf8: 4618         	mov	r0, r3
  405cfa: f384 fb7f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3846fe
  405cfe: f382 f9d5    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3823aa
  405d02: ab16         	add	r3, sp, #0x58
  405d04: 4618         	mov	r0, r3
  405d06: f3af fe05    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3afc0a
  405d0a: e7ff         	b	0x405d0c <TOSLayer::init()+0x684> @ imm = #-0x2
  405d0c: ab06         	add	r3, sp, #0x18
  405d0e: 4618         	mov	r0, r3
  405d10: f384 fb74    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3846e8
  405d14: ab20         	add	r3, sp, #0x80
  405d16: 4618         	mov	r0, r3
  405d18: f3af fdfc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3afbf8
  405d1c: e7ff         	b	0x405d1e <TOSLayer::init()+0x696> @ imm = #-0x2
  405d1e: ab14         	add	r3, sp, #0x50
  405d20: 4618         	mov	r0, r3
  405d22: f384 fb6b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3846d6
  405d26: ab1c         	add	r3, sp, #0x70
  405d28: 4618         	mov	r0, r3
  405d2a: f3af fdf3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3afbe6
  405d2e: e7ff         	b	0x405d30 <TOSLayer::init()+0x6a8> @ imm = #-0x2
  405d30: ab12         	add	r3, sp, #0x48
  405d32: 4618         	mov	r0, r3
  405d34: f384 fb62    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3846c4
  405d38: f382 f9b8    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x382370
  405d3c: 4618         	mov	r0, r3
  405d3e: b025         	add	sp, #0x94
  405d40: ecbd 8b02    	vpop	{d8}
  405d44: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x405d45); words below are literal-pool data ---
  405d46: bf00         	nop
  405d50: 46b0         	mov	r8, r6
  405d52: 003d         	movs	r5, r7
  405d54: 46ae         	mov	lr, r5
  405d56: 003d         	movs	r5, r7
  405d58: 46d0         	mov	r8, r10
  405d5a: 003d         	movs	r5, r7
  405d5c: df8c         	svc	#0x8c
  405d5e: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== TOSLayer::~TOSLayer
//      file offset 0x405d60 (= ELF address; Ghidra 0x415d60), 164 bytes, Thumb-2
  405d60: b510         	push	{r4, lr}
  405d62: b082         	sub	sp, #0x8
  405d64: 9001         	str	r0, [sp, #0x4]
  405d66: 4c24         	ldr	r4, [pc, #0x90]         @ 0x405df8 <TOSLayer::~TOSLayer()+0x98>
  405d68: 447c         	add	r4, pc
  405d6a: 9b01         	ldr	r3, [sp, #0x4]
  405d6c: 4a23         	ldr	r2, [pc, #0x8c]         @ 0x405dfc <TOSLayer::~TOSLayer()+0x9c>
  405d6e: 58a2         	ldr	r2, [r4, r2]
  405d70: 3208         	adds	r2, #0x8
  405d72: 601a         	str	r2, [r3]
  405d74: 9b01         	ldr	r3, [sp, #0x4]
  405d76: 4a21         	ldr	r2, [pc, #0x84]         @ 0x405dfc <TOSLayer::~TOSLayer()+0x9c>
  405d78: 58a2         	ldr	r2, [r4, r2]
  405d7a: f502 7204    	add.w	r2, r2, #0x210
  405d7e: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  405d82: 9b01         	ldr	r3, [sp, #0x4]
  405d84: 4a1d         	ldr	r2, [pc, #0x74]         @ 0x405dfc <TOSLayer::~TOSLayer()+0x9c>
  405d86: 58a2         	ldr	r2, [r4, r2]
  405d88: f502 7210    	add.w	r2, r2, #0x240
  405d8c: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  405d90: 9b01         	ldr	r3, [sp, #0x4]
  405d92: 4a1a         	ldr	r2, [pc, #0x68]         @ 0x405dfc <TOSLayer::~TOSLayer()+0x9c>
  405d94: 58a2         	ldr	r2, [r4, r2]
  405d96: f502 7213    	add.w	r2, r2, #0x24c
  405d9a: f8c3 20ec    	str.w	r2, [r3, #0xec]
  405d9e: 9b01         	ldr	r3, [sp, #0x4]
  405da0: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  405da4: 4618         	mov	r0, r3
  405da6: f192 f887    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x19210e
  405daa: 9b01         	ldr	r3, [sp, #0x4]
  405dac: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  405db0: 4618         	mov	r0, r3
  405db2: f192 f881    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x192102
  405db6: 9b01         	ldr	r3, [sp, #0x4]
  405db8: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  405dbc: 4618         	mov	r0, r3
  405dbe: f192 f87b    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1920f6
  405dc2: 9b01         	ldr	r3, [sp, #0x4]
  405dc4: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  405dc8: 4618         	mov	r0, r3
  405dca: f192 f875    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1920ea
  405dce: 4b0c         	ldr	r3, [pc, #0x30]         @ 0x405e00 <TOSLayer::~TOSLayer()+0xa0>
  405dd0: 58e3         	ldr	r3, [r4, r3]
  405dd2: 681b         	ldr	r3, [r3]
  405dd4: 4618         	mov	r0, r3
  405dd6: f02e f971    	bl	0x4340bc <ZYWebView::removeWebView()> @ imm = #0x2e2e2
  405dda: 9b01         	ldr	r3, [sp, #0x4]
  405ddc: 4618         	mov	r0, r3
  405dde: f1a7 f9b5    	bl	0x5ad14c <cocos2d::CCLayer::~CCLayer()> @ imm = #0x1a736a
  405de2: 2300         	movs	r3, #0x0
  405de4: 2b00         	cmp	r3, #0x0
  405de6: d002         	beq	0x405dee <TOSLayer::~TOSLayer()+0x8e> @ imm = #0x4
  405de8: 9801         	ldr	r0, [sp, #0x4]
  405dea: f382 f95b    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3822b6
  405dee: 9b01         	ldr	r3, [sp, #0x4]
  405df0: 4618         	mov	r0, r3
  405df2: b002         	add	sp, #0x8
  405df4: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x405df5); words below are literal-pool data ---
  405df6: bf00         	nop
  405df8: cca0         	ldm	r4!, {r5, r7}
  405dfa: 0052         	lsls	r2, r2, #0x1
  405dfc: df80         	svc	#0x80
  405dfe: ffff d75c    	<unknown>
  405e02: ffff f1a0    	<unknown>

// ==== TOSLayer::~TOSLayer
//      file offset 0x405e04 (= ELF address; Ghidra 0x415e04), 8 bytes, Thumb-2
  405e04: f1a0 00e4    	sub.w	r0, r0, #0xe4
  405e08: f7ff bfaa    	b.w	0x405d60 <TOSLayer::~TOSLayer()> @ imm = #-0xac

// ==== TOSLayer::~TOSLayer
//      file offset 0x405e0c (= ELF address; Ghidra 0x415e0c), 28 bytes, Thumb-2
  405e0c: b500         	push	{lr}
  405e0e: b083         	sub	sp, #0xc
  405e10: 9001         	str	r0, [sp, #0x4]
  405e12: 9801         	ldr	r0, [sp, #0x4]
  405e14: f7ff ffa4    	bl	0x405d60 <TOSLayer::~TOSLayer()> @ imm = #-0xb8
  405e18: 9801         	ldr	r0, [sp, #0x4]
  405e1a: f382 f943    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x382286
  405e1e: 9b01         	ldr	r3, [sp, #0x4]
  405e20: 4618         	mov	r0, r3
  405e22: b003         	add	sp, #0xc
  405e24: f85d fb04    	ldr	pc, [sp], #4

// ==== TOSLayer::~TOSLayer
//      file offset 0x405e28 (= ELF address; Ghidra 0x415e28), 8 bytes, Thumb-2
  405e28: f1a0 00e4    	sub.w	r0, r0, #0xe4
  405e2c: f7ff bfee    	b.w	0x405e0c <TOSLayer::~TOSLayer()> @ imm = #-0x24

// ==== TOSLayer::onNext
//      file offset 0x405e30 (= ELF address; Ghidra 0x415e30), 136 bytes, Thumb-2
  405e30: b530         	push	{r4, r5, lr}
  405e32: b083         	sub	sp, #0xc
  405e34: 9001         	str	r0, [sp, #0x4]
  405e36: 9100         	str	r1, [sp]
  405e38: 4c1a         	ldr	r4, [pc, #0x68]         @ 0x405ea4 <TOSLayer::onNext(cocos2d::CCObject*)+0x74>
  405e3a: 447c         	add	r4, pc
  405e3c: 9b01         	ldr	r3, [sp, #0x4]
  405e3e: f893 3108    	ldrb.w	r3, [r3, #0x108]
  405e42: 2b00         	cmp	r3, #0x0
  405e44: d000         	beq	0x405e48 <TOSLayer::onNext(cocos2d::CCObject*)+0x18> @ imm = #0x0
  405e46: e02a         	b	0x405e9e <TOSLayer::onNext(cocos2d::CCObject*)+0x6e> @ imm = #0x54
  405e48: 9b01         	ldr	r3, [sp, #0x4]
  405e4a: 2201         	movs	r2, #0x1
  405e4c: f883 2108    	strb.w	r2, [r3, #0x108]
  405e50: 4b15         	ldr	r3, [pc, #0x54]         @ 0x405ea8 <TOSLayer::onNext(cocos2d::CCObject*)+0x78>
  405e52: 58e3         	ldr	r3, [r4, r3]
  405e54: 681b         	ldr	r3, [r3]
  405e56: 4618         	mov	r0, r3
  405e58: 210d         	movs	r1, #0xd
  405e5a: f7f1 ffb1    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #-0xe09e
  405e5e: f1dc fbe5    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x1dc7ca
  405e62: 4603         	mov	r3, r0
  405e64: 4618         	mov	r0, r3
  405e66: 4b11         	ldr	r3, [pc, #0x44]         @ 0x405eac <TOSLayer::onNext(cocos2d::CCObject*)+0x7c>
  405e68: 447b         	add	r3, pc
  405e6a: 4619         	mov	r1, r3
  405e6c: 2201         	movs	r2, #0x1
  405e6e: f1dc fb83    	bl	0x5e2578 <cocos2d::CCUserDefault::setBoolForKey(char const*, bool)> @ imm = #0x1dc706
  405e72: 4b0f         	ldr	r3, [pc, #0x3c]         @ 0x405eb0 <TOSLayer::onNext(cocos2d::CCObject*)+0x80>
  405e74: 58e3         	ldr	r3, [r4, r3]
  405e76: 2201         	movs	r2, #0x1
  405e78: 701a         	strb	r2, [r3]
  405e7a: f195 fb7b    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x1956f6
  405e7e: 4604         	mov	r4, r0
  405e80: 4b0c         	ldr	r3, [pc, #0x30]         @ 0x405eb4 <TOSLayer::onNext(cocos2d::CCObject*)+0x84>
  405e82: 447b         	add	r3, pc
  405e84: 681d         	ldr	r5, [r3]
  405e86: f74b fba1    	bl	0x3515cc <LobbyLayer::scene()> @ imm = #-0xb48be
  405e8a: 4603         	mov	r3, r0
  405e8c: 4628         	mov	r0, r5
  405e8e: 4619         	mov	r1, r3
  405e90: f1ac fef8    	bl	0x5b2c84 <cocos2d::CCTransitionFade::create(float, cocos2d::CCScene*)> @ imm = #0x1acdf0
  405e94: 4603         	mov	r3, r0
  405e96: 4620         	mov	r0, r4
  405e98: 4619         	mov	r1, r3
  405e9a: f196 fa5f    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x1964be
  405e9e: b003         	add	sp, #0xc
  405ea0: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x405ea1); words below are literal-pool data ---
  405ea2: bf00         	nop
  405ea4: cbce         	ldm	r3, {r1, r2, r3, r6, r7}
  405ea6: 0052         	lsls	r2, r2, #0x1
  405ea8: d730         	bvc	0x405f0c <TOSLayer::onBack(cocos2d::CCObject*)+0x54> @ imm = #0x60
  405eaa: ffff 44dc    	vsri.64	q10, q6, #0x1
  405eae: 003d         	movs	r5, r7
  405eb0: d7a0         	bvc	0x405df4 <TOSLayer::~TOSLayer()+0x94> @ imm = #-0xc0
  405eb2: ffff d82e    	vtbl.8	d29, {d15}, d30
  405eb6: 0052         	lsls	r2, r2, #0x1

// ==== TOSLayer::onBack
//      file offset 0x405eb8 (= ELF address; Ghidra 0x415eb8), 100 bytes, Thumb-2
  405eb8: b530         	push	{r4, r5, lr}
  405eba: b083         	sub	sp, #0xc
  405ebc: 9001         	str	r0, [sp, #0x4]
  405ebe: 9100         	str	r1, [sp]
  405ec0: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x405f10 <TOSLayer::onBack(cocos2d::CCObject*)+0x58>
  405ec2: 447a         	add	r2, pc
  405ec4: 9b01         	ldr	r3, [sp, #0x4]
  405ec6: f893 3108    	ldrb.w	r3, [r3, #0x108]
  405eca: 2b00         	cmp	r3, #0x0
  405ecc: d000         	beq	0x405ed0 <TOSLayer::onBack(cocos2d::CCObject*)+0x18> @ imm = #0x0
  405ece: e01c         	b	0x405f0a <TOSLayer::onBack(cocos2d::CCObject*)+0x52> @ imm = #0x38
  405ed0: 9b01         	ldr	r3, [sp, #0x4]
  405ed2: 2101         	movs	r1, #0x1
  405ed4: f883 1108    	strb.w	r1, [r3, #0x108]
  405ed8: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x405f14 <TOSLayer::onBack(cocos2d::CCObject*)+0x5c>
  405eda: 58d3         	ldr	r3, [r2, r3]
  405edc: 681b         	ldr	r3, [r3]
  405ede: 4618         	mov	r0, r3
  405ee0: 210d         	movs	r1, #0xd
  405ee2: f7f1 ff6d    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #-0xe126
  405ee6: f195 fb45    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x19568a
  405eea: 4604         	mov	r4, r0
  405eec: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x405f18 <TOSLayer::onBack(cocos2d::CCObject*)+0x60>
  405eee: 447b         	add	r3, pc
  405ef0: 681d         	ldr	r5, [r3]
  405ef2: f763 fdef    	bl	0x369ad4 <MenuLayer::scene()> @ imm = #-0x9c422
  405ef6: 4603         	mov	r3, r0
  405ef8: 4628         	mov	r0, r5
  405efa: 4619         	mov	r1, r3
  405efc: f1ab fa04    	bl	0x5b1308 <cocos2d::CCTransitionSlideInL::create(float, cocos2d::CCScene*)> @ imm = #0x1ab408
  405f00: 4603         	mov	r3, r0
  405f02: 4620         	mov	r0, r4
  405f04: 4619         	mov	r1, r3
  405f06: f196 fa29    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x196452
  405f0a: b003         	add	sp, #0xc
  405f0c: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x405f0d); words below are literal-pool data ---
  405f0e: bf00         	nop
  405f10: cb46         	ldm	r3!, {r1, r2, r6}
  405f12: 0052         	lsls	r2, r2, #0x1
  405f14: d730         	bvc	0x405f78 <TOSLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x5c> @ imm = #0x60
  405f16: ffff d7c2    	<unknown>
  405f1a: 0052         	lsls	r2, r2, #0x1

// ==== TOSLayer::messageBoxHandler
//      file offset 0x405f1c (= ELF address; Ghidra 0x415f1c), 108 bytes, Thumb-2
  405f1c: b510         	push	{r4, lr}
  405f1e: b08a         	sub	sp, #0x28
  405f20: 9005         	str	r0, [sp, #0x14]
  405f22: 9104         	str	r1, [sp, #0x10]
  405f24: 9203         	str	r2, [sp, #0xc]
  405f26: 4c14         	ldr	r4, [pc, #0x50]         @ 0x405f78 <TOSLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x5c>
  405f28: 447c         	add	r4, pc
  405f2a: 4b14         	ldr	r3, [pc, #0x50]         @ 0x405f7c <TOSLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x60>
  405f2c: 58e3         	ldr	r3, [r4, r3]
  405f2e: 681b         	ldr	r3, [r3]
  405f30: 4a12         	ldr	r2, [pc, #0x48]         @ 0x405f7c <TOSLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x60>
  405f32: 58a2         	ldr	r2, [r4, r2]
  405f34: ed92 7a01    	vldr	s14, [r2, #4]
  405f38: eddf 7a0e    	vldr	s15, [pc, #56]          @ 0x405f74 <TOSLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x58>
  405f3c: ee77 7a67    	vsub.f32	s15, s14, s15
  405f40: aa06         	add	r2, sp, #0x18
  405f42: edcd 7a00    	vstr	s15, [sp]
  405f46: 4610         	mov	r0, r2
  405f48: f04f 0100    	mov.w	r1, #0x0
  405f4c: f04f 0200    	mov.w	r2, #0x0
  405f50: f18d f9c6    	bl	0x5932e0 <cocos2d::CCRect::CCRect(float, float, float, float)> @ imm = #0x18d38c
  405f54: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x405f80 <TOSLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x64>
  405f56: 58e3         	ldr	r3, [r4, r3]
  405f58: 6819         	ldr	r1, [r3]
  405f5a: 9a06         	ldr	r2, [sp, #0x18]
  405f5c: 9b07         	ldr	r3, [sp, #0x1c]
  405f5e: 9c08         	ldr	r4, [sp, #0x20]
  405f60: 9809         	ldr	r0, [sp, #0x24]
  405f62: 9400         	str	r4, [sp]
  405f64: 9001         	str	r0, [sp, #0x4]
  405f66: 4608         	mov	r0, r1
  405f68: 4906         	ldr	r1, [pc, #0x18]         @ 0x405f84 <TOSLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x68>
  405f6a: 4479         	add	r1, pc
  405f6c: f022 feae    	bl	0x428ccc <ZYWebView::showWebView(char const*, float, float, float, float)> @ imm = #0x22d5c
  405f70: b00a         	add	sp, #0x28
  405f72: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x405f73); words below are literal-pool data ---
  405f74: 0000         	movs	r0, r0
  405f76: 4280         	cmp	r0, r0
  405f78: cae0         	ldm	r2!, {r5, r6, r7}
  405f7a: 0052         	lsls	r2, r2, #0x1
  405f7c: d724         	bvc	0x405fc8 <TOSLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0xac> @ imm = #0x48
  405f7e: ffff d75c    	<unknown>
  405f82: ffff 43e6    	<unknown>
  405f86: 003d         	movs	r5, r7
