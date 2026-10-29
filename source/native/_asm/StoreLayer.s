// StoreLayer: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 29 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../StoreLayer.cpp

// ==== StoreLayer::create
//      file offset 0x400254 (= ELF address; Ghidra 0x410254), 112 bytes, Thumb-2
  400254: b510         	push	{r4, lr}
  400256: b082         	sub	sp, #0x8
  400258: f44f 70a6    	mov.w	r0, #0x14c
  40025c: f387 fb82    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x387704
  400260: 4603         	mov	r3, r0
  400262: 461c         	mov	r4, r3
  400264: 4620         	mov	r0, r4
  400266: f000 f841    	bl	0x4002ec <StoreLayer::StoreLayer()> @ imm = #0x82
  40026a: 9401         	str	r4, [sp, #0x4]
  40026c: 9b01         	ldr	r3, [sp, #0x4]
  40026e: 2b00         	cmp	r3, #0x0
  400270: d00a         	beq	0x400288 <StoreLayer::create()+0x34> @ imm = #0x14
  400272: 9b01         	ldr	r3, [sp, #0x4]
  400274: 681b         	ldr	r3, [r3]
  400276: 3318         	adds	r3, #0x18
  400278: 681b         	ldr	r3, [r3]
  40027a: 9801         	ldr	r0, [sp, #0x4]
  40027c: 4798         	blx	r3
  40027e: 4603         	mov	r3, r0
  400280: 2b00         	cmp	r3, #0x0
  400282: d001         	beq	0x400288 <StoreLayer::create()+0x34> @ imm = #0x2
  400284: 2301         	movs	r3, #0x1
  400286: e000         	b	0x40028a <StoreLayer::create()+0x36> @ imm = #0x0
  400288: 2300         	movs	r3, #0x0
  40028a: 2b00         	cmp	r3, #0x0
  40028c: d005         	beq	0x40029a <StoreLayer::create()+0x46> @ imm = #0xa
  40028e: 9b01         	ldr	r3, [sp, #0x4]
  400290: 4618         	mov	r0, r3
  400292: f197 fe33    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x197c66
  400296: 9b01         	ldr	r3, [sp, #0x4]
  400298: e011         	b	0x4002be <StoreLayer::create()+0x6a> @ imm = #0x22
  40029a: 9b01         	ldr	r3, [sp, #0x4]
  40029c: 2b00         	cmp	r3, #0x0
  40029e: d005         	beq	0x4002ac <StoreLayer::create()+0x58> @ imm = #0xa
  4002a0: 9b01         	ldr	r3, [sp, #0x4]
  4002a2: 681b         	ldr	r3, [r3]
  4002a4: 3308         	adds	r3, #0x8
  4002a6: 681b         	ldr	r3, [r3]
  4002a8: 9801         	ldr	r0, [sp, #0x4]
  4002aa: 4798         	blx	r3
  4002ac: 2300         	movs	r3, #0x0
  4002ae: 9301         	str	r3, [sp, #0x4]
  4002b0: 2300         	movs	r3, #0x0
  4002b2: e004         	b	0x4002be <StoreLayer::create()+0x6a> @ imm = #0x8
  4002b4: 4620         	mov	r0, r4
  4002b6: f387 fef5    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x387dea
  4002ba: f387 fef7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x387dee
  4002be: 4618         	mov	r0, r3
  4002c0: b002         	add	sp, #0x8
  4002c2: bd10         	pop	{r4, pc}

// ==== StoreLayer::scrollViewDidScroll
//      file offset 0x4002c4 (= ELF address; Ghidra 0x4102c4), 10 bytes, Thumb-2
  4002c4: b082         	sub	sp, #0x8
  4002c6: 9001         	str	r0, [sp, #0x4]
  4002c8: 9100         	str	r1, [sp]
  4002ca: b002         	add	sp, #0x8
  4002cc: 4770         	bx	lr

// ==== StoreLayer::scrollViewDidScroll
//      file offset 0x4002d0 (= ELF address; Ghidra 0x4102d0), 6 bytes, Thumb-2
  4002d0: f5a0 7084    	sub.w	r0, r0, #0x108
  4002d4: e7f6         	b	0x4002c4 <StoreLayer::scrollViewDidScroll(cocos2d::extension::CCScrollView*)> @ imm = #-0x14

// ==== StoreLayer::scrollViewDidZoom
//      file offset 0x4002d8 (= ELF address; Ghidra 0x4102d8), 10 bytes, Thumb-2
  4002d8: b082         	sub	sp, #0x8
  4002da: 9001         	str	r0, [sp, #0x4]
  4002dc: 9100         	str	r1, [sp]
  4002de: b002         	add	sp, #0x8
  4002e0: 4770         	bx	lr

// ==== StoreLayer::scrollViewDidZoom
//      file offset 0x4002e4 (= ELF address; Ghidra 0x4102e4), 6 bytes, Thumb-2
  4002e4: f5a0 7084    	sub.w	r0, r0, #0x108
  4002e8: e7f6         	b	0x4002d8 <StoreLayer::scrollViewDidZoom(cocos2d::extension::CCScrollView*)> @ imm = #-0x14

// ==== StoreLayer::StoreLayer
//      file offset 0x4002ec (= ELF address; Ghidra 0x4102ec), 148 bytes, Thumb-2
  4002ec: b510         	push	{r4, lr}
  4002ee: b082         	sub	sp, #0x8
  4002f0: 9001         	str	r0, [sp, #0x4]
  4002f2: 4c21         	ldr	r4, [pc, #0x84]         @ 0x400378 <StoreLayer::StoreLayer()+0x8c>
  4002f4: 447c         	add	r4, pc
  4002f6: 9b01         	ldr	r3, [sp, #0x4]
  4002f8: 4618         	mov	r0, r3
  4002fa: f1ac feaf    	bl	0x5ad05c <cocos2d::CCLayer::CCLayer()> @ imm = #0x1acd5e
  4002fe: 9b01         	ldr	r3, [sp, #0x4]
  400300: f503 7384    	add.w	r3, r3, #0x108
  400304: 4618         	mov	r0, r3
  400306: f6ea f8e1    	bl	0x2ea4cc <cocos2d::extension::CCTableViewDelegate::CCTableViewDelegate()> @ imm = #-0x115e3e
  40030a: 9b01         	ldr	r3, [sp, #0x4]
  40030c: f503 7386    	add.w	r3, r3, #0x10c
  400310: 4618         	mov	r0, r3
  400312: f6ea f91d    	bl	0x2ea550 <cocos2d::extension::CCTableViewDataSource::CCTableViewDataSource()> @ imm = #-0x115dc6
  400316: 9b01         	ldr	r3, [sp, #0x4]
  400318: 4a18         	ldr	r2, [pc, #0x60]         @ 0x40037c <StoreLayer::StoreLayer()+0x90>
  40031a: 58a2         	ldr	r2, [r4, r2]
  40031c: 3208         	adds	r2, #0x8
  40031e: 601a         	str	r2, [r3]
  400320: 9b01         	ldr	r3, [sp, #0x4]
  400322: 4a16         	ldr	r2, [pc, #0x58]         @ 0x40037c <StoreLayer::StoreLayer()+0x90>
  400324: 58a2         	ldr	r2, [r4, r2]
  400326: f502 720a    	add.w	r2, r2, #0x228
  40032a: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  40032e: 9b01         	ldr	r3, [sp, #0x4]
  400330: 4a12         	ldr	r2, [pc, #0x48]         @ 0x40037c <StoreLayer::StoreLayer()+0x90>
  400332: 58a2         	ldr	r2, [r4, r2]
  400334: f502 7216    	add.w	r2, r2, #0x258
  400338: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  40033c: 9b01         	ldr	r3, [sp, #0x4]
  40033e: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x40037c <StoreLayer::StoreLayer()+0x90>
  400340: 58a2         	ldr	r2, [r4, r2]
  400342: f502 7219    	add.w	r2, r2, #0x264
  400346: f8c3 20ec    	str.w	r2, [r3, #0xec]
  40034a: 9b01         	ldr	r3, [sp, #0x4]
  40034c: 4a0b         	ldr	r2, [pc, #0x2c]         @ 0x40037c <StoreLayer::StoreLayer()+0x90>
  40034e: 58a2         	ldr	r2, [r4, r2]
  400350: f502 721d    	add.w	r2, r2, #0x274
  400354: f8c3 2108    	str.w	r2, [r3, #0x108]
  400358: 9b01         	ldr	r3, [sp, #0x4]
  40035a: 4a08         	ldr	r2, [pc, #0x20]         @ 0x40037c <StoreLayer::StoreLayer()+0x90>
  40035c: 58a2         	ldr	r2, [r4, r2]
  40035e: f502 7227    	add.w	r2, r2, #0x29c
  400362: f8c3 210c    	str.w	r2, [r3, #0x10c]
  400366: 9b01         	ldr	r3, [sp, #0x4]
  400368: 2200         	movs	r2, #0x0
  40036a: f8c3 2114    	str.w	r2, [r3, #0x114]
  40036e: 9b01         	ldr	r3, [sp, #0x4]
  400370: 4618         	mov	r0, r3
  400372: b002         	add	sp, #0x8
  400374: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x400375); words below are literal-pool data ---
  400376: bf00         	nop
  400378: 2714         	movs	r7, #0x14
  40037a: 0053         	lsls	r3, r2, #0x1
  40037c: df60         	svc	#0x60
  40037e: ffff b500    	<unknown>

// ==== StoreLayer::scene
//      file offset 0x400380 (= ELF address; Ghidra 0x410380), 46 bytes, Thumb-2
  400380: b500         	push	{lr}
  400382: b083         	sub	sp, #0xc
  400384: f1af fb6c    	bl	0x5afa60 <cocos2d::CCScene::create()> @ imm = #0x1af6d8
  400388: 4603         	mov	r3, r0
  40038a: 9300         	str	r3, [sp]
  40038c: f7ff ff62    	bl	0x400254 <StoreLayer::create()> @ imm = #-0x13c
  400390: 4603         	mov	r3, r0
  400392: 9301         	str	r3, [sp, #0x4]
  400394: 9b00         	ldr	r3, [sp]
  400396: 681b         	ldr	r3, [r3]
  400398: 33c8         	adds	r3, #0xc8
  40039a: 681b         	ldr	r3, [r3]
  40039c: 9a00         	ldr	r2, [sp]
  40039e: 4610         	mov	r0, r2
  4003a0: 9901         	ldr	r1, [sp, #0x4]
  4003a2: 4798         	blx	r3
  4003a4: 9b00         	ldr	r3, [sp]
  4003a6: 4618         	mov	r0, r3
  4003a8: b003         	add	sp, #0xc
  4003aa: f85d fb04    	ldr	pc, [sp], #4

// ==== StoreLayer::init
//      file offset 0x4003b0 (= ELF address; Ghidra 0x4103b0), 3620 bytes, Thumb-2
  4003b0: b5f0         	push	{r4, r5, r6, r7, lr}
  4003b2: ed2d 8b02    	vpush	{d8}
  4003b6: b0ad         	sub	sp, #0xb4
  4003b8: 9003         	str	r0, [sp, #0xc]
  4003ba: 4c09         	ldr	r4, [pc, #0x24]         @ 0x4003e0 <StoreLayer::init()+0x30>
  4003bc: 447c         	add	r4, pc
  4003be: 9b03         	ldr	r3, [sp, #0xc]
  4003c0: 4618         	mov	r0, r3
  4003c2: f1ac ff19    	bl	0x5ad1f8 <cocos2d::CCLayer::init()> @ imm = #0x1ace32
  4003c6: 4603         	mov	r3, r0
  4003c8: f88d 3017    	strb.w	r3, [sp, #0x17]
  4003cc: f89d 3017    	ldrb.w	r3, [sp, #0x17]
  4003d0: f083 0301    	eor	r3, r3, #0x1
  4003d4: b2db         	uxtb	r3, r3
  4003d6: 2b00         	cmp	r3, #0x0
  4003d8: d004         	beq	0x4003e4 <StoreLayer::init()+0x34> @ imm = #0x8
  4003da: 2300         	movs	r3, #0x0
  4003dc: f000 bef5    	b.w	0x4011ca <StoreLayer::init()+0xe1a> @ imm = #0xdea
  4003e0: 264c         	movs	r6, #0x4c
  4003e2: 0053         	lsls	r3, r2, #0x1
  4003e4: 9b03         	ldr	r3, [sp, #0xc]
  4003e6: 681b         	ldr	r3, [r3]
  4003e8: f503 73e8    	add.w	r3, r3, #0x1d0
  4003ec: 681b         	ldr	r3, [r3]
  4003ee: 9a03         	ldr	r2, [sp, #0xc]
  4003f0: 4610         	mov	r0, r2
  4003f2: 2101         	movs	r1, #0x1
  4003f4: 4798         	blx	r3
  4003f6: 9b03         	ldr	r3, [sp, #0xc]
  4003f8: 2200         	movs	r2, #0x0
  4003fa: f883 2110    	strb.w	r2, [r3, #0x110]
  4003fe: ab14         	add	r3, sp, #0x50
  400400: 4618         	mov	r0, r3
  400402: f8df 3538    	ldr.w	r3, [pc, #0x538]        @ 0x40093c <StoreLayer::init()+0x58c>
  400406: 58e3         	ldr	r3, [r4, r3]
  400408: 4619         	mov	r1, r3
  40040a: f192 fe51    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x192ca2
  40040e: ed9d 7a14    	vldr	s14, [sp, #80]
  400412: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  400416: eec7 6a27    	vdiv.f32	s13, s14, s15
  40041a: ed9d 7a15    	vldr	s14, [sp, #84]
  40041e: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  400422: eec7 7a27    	vdiv.f32	s15, s14, s15
  400426: ab16         	add	r3, sp, #0x58
  400428: 4618         	mov	r0, r3
  40042a: ee16 1a90    	vmov	r1, s13
  40042e: ee17 2a90    	vmov	r2, s15
  400432: f192 fc5d    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1928ba
  400436: f8df 3508    	ldr.w	r3, [pc, #0x508]        @ 0x400940 <StoreLayer::init()+0x590>
  40043a: 447b         	add	r3, pc
  40043c: 4618         	mov	r0, r3
  40043e: f1d7 fea1    	bl	0x5d8184 <cocos2d::CCSprite::create(char const*)> @ imm = #0x1d7d42
  400442: 4602         	mov	r2, r0
  400444: 9b03         	ldr	r3, [sp, #0xc]
  400446: f8c3 2118    	str.w	r2, [r3, #0x118]
  40044a: 9b03         	ldr	r3, [sp, #0xc]
  40044c: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  400450: 681b         	ldr	r3, [r3]
  400452: 334c         	adds	r3, #0x4c
  400454: 681b         	ldr	r3, [r3]
  400456: 9a03         	ldr	r2, [sp, #0xc]
  400458: f8d2 1118    	ldr.w	r1, [r2, #0x118]
  40045c: aa16         	add	r2, sp, #0x58
  40045e: 4608         	mov	r0, r1
  400460: 4611         	mov	r1, r2
  400462: 4798         	blx	r3
  400464: 9b03         	ldr	r3, [sp, #0xc]
  400466: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  40046a: 681b         	ldr	r3, [r3]
  40046c: f503 73d2    	add.w	r3, r3, #0x1a4
  400470: 681b         	ldr	r3, [r3]
  400472: 9a03         	ldr	r2, [sp, #0xc]
  400474: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  400478: 4610         	mov	r0, r2
  40047a: 2123         	movs	r1, #0x23
  40047c: 4798         	blx	r3
  40047e: 9b03         	ldr	r3, [sp, #0xc]
  400480: 681b         	ldr	r3, [r3]
  400482: 33c8         	adds	r3, #0xc8
  400484: 681b         	ldr	r3, [r3]
  400486: 9903         	ldr	r1, [sp, #0xc]
  400488: 9a03         	ldr	r2, [sp, #0xc]
  40048a: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  40048e: 4608         	mov	r0, r1
  400490: 4611         	mov	r1, r2
  400492: 4798         	blx	r3
  400494: f04f 4341    	mov.w	r3, #0xc1000000
  400498: 9307         	str	r3, [sp, #0x1c]
  40049a: f04f 0300    	mov.w	r3, #0x0
  40049e: f2c4 13c0    	movt	r3, #0x41c0
  4004a2: 9308         	str	r3, [sp, #0x20]
  4004a4: f64c 43cd    	movw	r3, #0xcccd
  4004a8: f6c3 730c    	movt	r3, #0x3f0c
  4004ac: 9309         	str	r3, [sp, #0x24]
  4004ae: f024 fe03    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #0x24c06
  4004b2: 4603         	mov	r3, r0
  4004b4: 4618         	mov	r0, r3
  4004b6: f024 ffa7    	bl	0x425408 <LeaderBoardBridge::calcPlayerPoints()> @ imm = #0x24f4e
  4004ba: 4603         	mov	r3, r0
  4004bc: 930a         	str	r3, [sp, #0x28]
  4004be: f8df 3484    	ldr.w	r3, [pc, #0x484]        @ 0x400944 <StoreLayer::init()+0x594>
  4004c2: 447b         	add	r3, pc
  4004c4: 4618         	mov	r0, r3
  4004c6: 990a         	ldr	r1, [sp, #0x28]
  4004c8: f199 fb22    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x199644
  4004cc: 4603         	mov	r3, r0
  4004ce: 4618         	mov	r0, r3
  4004d0: f199 fa2a    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x199454
  4004d4: 4605         	mov	r5, r0
  4004d6: f8df 3470    	ldr.w	r3, [pc, #0x470]        @ 0x400948 <StoreLayer::init()+0x598>
  4004da: 447b         	add	r3, pc
  4004dc: 4618         	mov	r0, r3
  4004de: f3b4 ff0f    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3b4e1e
  4004e2: 4603         	mov	r3, r0
  4004e4: 2220         	movs	r2, #0x20
  4004e6: 9200         	str	r2, [sp]
  4004e8: 4628         	mov	r0, r5
  4004ea: 4619         	mov	r1, r3
  4004ec: 2220         	movs	r2, #0x20
  4004ee: 2320         	movs	r3, #0x20
  4004f0: f1a4 ff42    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1a4e84
  4004f4: 4602         	mov	r2, r0
  4004f6: 9b03         	ldr	r3, [sp, #0xc]
  4004f8: f8c3 211c    	str.w	r2, [r3, #0x11c]
  4004fc: 9b03         	ldr	r3, [sp, #0xc]
  4004fe: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  400502: 4618         	mov	r0, r3
  400504: f197 fcf0    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1979e0
  400508: 9b03         	ldr	r3, [sp, #0xc]
  40050a: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  40050e: 681b         	ldr	r3, [r3]
  400510: 334c         	adds	r3, #0x4c
  400512: 681d         	ldr	r5, [r3]
  400514: 9b03         	ldr	r3, [sp, #0xc]
  400516: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  40051a: 461e         	mov	r6, r3
  40051c: ab28         	add	r3, sp, #0xa0
  40051e: 4618         	mov	r0, r3
  400520: f04f 0100    	mov.w	r1, #0x0
  400524: f2c4 1120    	movt	r1, #0x4120
  400528: f04f 4281    	mov.w	r2, #0x40800000
  40052c: f192 fbe0    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1927c0
  400530: ab28         	add	r3, sp, #0xa0
  400532: 4630         	mov	r0, r6
  400534: 4619         	mov	r1, r3
  400536: 47a8         	blx	r5
  400538: 9b03         	ldr	r3, [sp, #0xc]
  40053a: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  40053e: 681b         	ldr	r3, [r3]
  400540: 3340         	adds	r3, #0x40
  400542: 681b         	ldr	r3, [r3]
  400544: 9a03         	ldr	r2, [sp, #0xc]
  400546: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  40054a: 4610         	mov	r0, r2
  40054c: f64c 41cd    	movw	r1, #0xcccd
  400550: f6c3 61cc    	movt	r1, #0x3ecc
  400554: 4798         	blx	r3
  400556: 9b03         	ldr	r3, [sp, #0xc]
  400558: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  40055c: 681b         	ldr	r3, [r3]
  40055e: f503 73de    	add.w	r3, r3, #0x1bc
  400562: 681d         	ldr	r5, [r3]
  400564: 9b03         	ldr	r3, [sp, #0xc]
  400566: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  40056a: 461e         	mov	r6, r3
  40056c: 2000         	movs	r0, #0x0
  40056e: 21ff         	movs	r1, #0xff
  400570: 2200         	movs	r2, #0x0
  400572: f7fe ff73    	bl	0x3ff45c <non-virtual thunk to StageLayer::ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*)+0x138> @ imm = #-0x111a
  400576: 4603         	mov	r3, r0
  400578: 461a         	mov	r2, r3
  40057a: f88d 20a0    	strb.w	r2, [sp, #0xa0]
  40057e: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  400582: f88d 20a1    	strb.w	r2, [sp, #0xa1]
  400586: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  40058a: f88d 30a2    	strb.w	r3, [sp, #0xa2]
  40058e: ab28         	add	r3, sp, #0xa0
  400590: 4630         	mov	r0, r6
  400592: 4619         	mov	r1, r3
  400594: 47a8         	blx	r5
  400596: 9b03         	ldr	r3, [sp, #0xc]
  400598: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  40059c: eddd 7a08    	vldr	s15, [sp, #32]
  4005a0: eefd 7ae7    	vcvt.s32.f32	s15, s15
  4005a4: ee17 2a90    	vmov	r2, s15
  4005a8: 4618         	mov	r0, r3
  4005aa: 4611         	mov	r1, r2
  4005ac: f1a5 fbea    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1a57d4
  4005b0: 9b03         	ldr	r3, [sp, #0xc]
  4005b2: 681b         	ldr	r3, [r3]
  4005b4: 33c8         	adds	r3, #0xc8
  4005b6: 681b         	ldr	r3, [r3]
  4005b8: 9903         	ldr	r1, [sp, #0xc]
  4005ba: 9a03         	ldr	r2, [sp, #0xc]
  4005bc: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  4005c0: 4608         	mov	r0, r1
  4005c2: 4611         	mov	r1, r2
  4005c4: 4798         	blx	r3
  4005c6: 4be1         	ldr	r3, [pc, #0x384]        @ 0x40094c <StoreLayer::init()+0x59c>
  4005c8: 447b         	add	r3, pc
  4005ca: 4618         	mov	r0, r3
  4005cc: f1d7 fe9a    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x1d7d34
  4005d0: 4603         	mov	r3, r0
  4005d2: 930b         	str	r3, [sp, #0x2c]
  4005d4: 4bde         	ldr	r3, [pc, #0x378]        @ 0x400950 <StoreLayer::init()+0x5a0>
  4005d6: 447b         	add	r3, pc
  4005d8: 4618         	mov	r0, r3
  4005da: f1d7 fe93    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x1d7d26
  4005de: 4603         	mov	r3, r0
  4005e0: 930c         	str	r3, [sp, #0x30]
  4005e2: 4bdc         	ldr	r3, [pc, #0x370]        @ 0x400954 <StoreLayer::init()+0x5a4>
  4005e4: 447b         	add	r3, pc
  4005e6: 4618         	mov	r0, r3
  4005e8: f1d7 fe8c    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x1d7d18
  4005ec: 4603         	mov	r3, r0
  4005ee: 930d         	str	r3, [sp, #0x34]
  4005f0: 4bd9         	ldr	r3, [pc, #0x364]        @ 0x400958 <StoreLayer::init()+0x5a8>
  4005f2: 447b         	add	r3, pc
  4005f4: 4618         	mov	r0, r3
  4005f6: f1d7 fe85    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x1d7d0a
  4005fa: 4603         	mov	r3, r0
  4005fc: 930e         	str	r3, [sp, #0x38]
  4005fe: 4bd7         	ldr	r3, [pc, #0x35c]        @ 0x40095c <StoreLayer::init()+0x5ac>
  400600: 447b         	add	r3, pc
  400602: 4618         	mov	r0, r3
  400604: f1d7 fe7e    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x1d7cfc
  400608: 4603         	mov	r3, r0
  40060a: 930f         	str	r3, [sp, #0x3c]
  40060c: 4bd4         	ldr	r3, [pc, #0x350]        @ 0x400960 <StoreLayer::init()+0x5b0>
  40060e: 447b         	add	r3, pc
  400610: 4618         	mov	r0, r3
  400612: f1d7 fe77    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x1d7cee
  400616: 4603         	mov	r3, r0
  400618: 9310         	str	r3, [sp, #0x40]
  40061a: 9a03         	ldr	r2, [sp, #0xc]
  40061c: 4bd1         	ldr	r3, [pc, #0x344]        @ 0x400964 <StoreLayer::init()+0x5b4>
  40061e: 58e3         	ldr	r3, [r4, r3]
  400620: 931e         	str	r3, [sp, #0x78]
  400622: 2300         	movs	r3, #0x0
  400624: 931f         	str	r3, [sp, #0x7c]
  400626: 9b1f         	ldr	r3, [sp, #0x7c]
  400628: 9300         	str	r3, [sp]
  40062a: 9b1e         	ldr	r3, [sp, #0x78]
  40062c: 980b         	ldr	r0, [sp, #0x2c]
  40062e: 990c         	ldr	r1, [sp, #0x30]
  400630: f1b7 fe7c    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x1b7cf8
  400634: 4603         	mov	r3, r0
  400636: 9311         	str	r3, [sp, #0x44]
  400638: 9811         	ldr	r0, [sp, #0x44]
  40063a: 2100         	movs	r1, #0x0
  40063c: f1b4 fd7e    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x1b4afc
  400640: 4602         	mov	r2, r0
  400642: 9b03         	ldr	r3, [sp, #0xc]
  400644: f8c3 212c    	str.w	r2, [r3, #0x12c]
  400648: 9b03         	ldr	r3, [sp, #0xc]
  40064a: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  40064e: 4618         	mov	r0, r3
  400650: f197 fc4a    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x197894
  400654: 9b03         	ldr	r3, [sp, #0xc]
  400656: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  40065a: 681b         	ldr	r3, [r3]
  40065c: 334c         	adds	r3, #0x4c
  40065e: 681d         	ldr	r5, [r3]
  400660: 9b03         	ldr	r3, [sp, #0xc]
  400662: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  400666: 461e         	mov	r6, r3
  400668: ed9d 7a14    	vldr	s14, [sp, #80]
  40066c: eddf 7ab0    	vldr	s15, [pc, #704]         @ 0x400930 <StoreLayer::init()+0x580>
  400670: ee77 7a67    	vsub.f32	s15, s14, s15
  400674: ab28         	add	r3, sp, #0xa0
  400676: 4618         	mov	r0, r3
  400678: ee17 1a90    	vmov	r1, s15
  40067c: f04f 0200    	mov.w	r2, #0x0
  400680: f2c4 2224    	movt	r2, #0x4224
  400684: f192 fb34    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x192668
  400688: ab28         	add	r3, sp, #0xa0
  40068a: 4630         	mov	r0, r6
  40068c: 4619         	mov	r1, r3
  40068e: 47a8         	blx	r5
  400690: 9b03         	ldr	r3, [sp, #0xc]
  400692: 681b         	ldr	r3, [r3]
  400694: 33c8         	adds	r3, #0xc8
  400696: 681b         	ldr	r3, [r3]
  400698: 9903         	ldr	r1, [sp, #0xc]
  40069a: 9a03         	ldr	r2, [sp, #0xc]
  40069c: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  4006a0: 4608         	mov	r0, r1
  4006a2: 4611         	mov	r1, r2
  4006a4: 4798         	blx	r3
  4006a6: 9a03         	ldr	r2, [sp, #0xc]
  4006a8: 4baf         	ldr	r3, [pc, #0x2bc]        @ 0x400968 <StoreLayer::init()+0x5b8>
  4006aa: 58e3         	ldr	r3, [r4, r3]
  4006ac: 9320         	str	r3, [sp, #0x80]
  4006ae: 2300         	movs	r3, #0x0
  4006b0: 9321         	str	r3, [sp, #0x84]
  4006b2: 9b21         	ldr	r3, [sp, #0x84]
  4006b4: 9300         	str	r3, [sp]
  4006b6: 9b20         	ldr	r3, [sp, #0x80]
  4006b8: 980d         	ldr	r0, [sp, #0x34]
  4006ba: 990e         	ldr	r1, [sp, #0x38]
  4006bc: f1b7 fe36    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x1b7c6c
  4006c0: 4603         	mov	r3, r0
  4006c2: 9312         	str	r3, [sp, #0x48]
  4006c4: 9812         	ldr	r0, [sp, #0x48]
  4006c6: 2100         	movs	r1, #0x0
  4006c8: f1b4 fd38    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x1b4a70
  4006cc: 4602         	mov	r2, r0
  4006ce: 9b03         	ldr	r3, [sp, #0xc]
  4006d0: f8c3 2124    	str.w	r2, [r3, #0x124]
  4006d4: 9b03         	ldr	r3, [sp, #0xc]
  4006d6: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  4006da: 4618         	mov	r0, r3
  4006dc: f197 fc04    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x197808
  4006e0: 9b03         	ldr	r3, [sp, #0xc]
  4006e2: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  4006e6: 681b         	ldr	r3, [r3]
  4006e8: 334c         	adds	r3, #0x4c
  4006ea: 681d         	ldr	r5, [r3]
  4006ec: 9b03         	ldr	r3, [sp, #0xc]
  4006ee: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  4006f2: 461e         	mov	r6, r3
  4006f4: ed9d 7a14    	vldr	s14, [sp, #80]
  4006f8: eddf 7a8e    	vldr	s15, [pc, #568]         @ 0x400934 <StoreLayer::init()+0x584>
  4006fc: ee77 7a67    	vsub.f32	s15, s14, s15
  400700: ab28         	add	r3, sp, #0xa0
  400702: 4618         	mov	r0, r3
  400704: ee17 1a90    	vmov	r1, s15
  400708: f04f 0200    	mov.w	r2, #0x0
  40070c: f2c4 22ac    	movt	r2, #0x42ac
  400710: f192 faee    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1925dc
  400714: ab28         	add	r3, sp, #0xa0
  400716: 4630         	mov	r0, r6
  400718: 4619         	mov	r1, r3
  40071a: 47a8         	blx	r5
  40071c: 9b03         	ldr	r3, [sp, #0xc]
  40071e: 681b         	ldr	r3, [r3]
  400720: 33c8         	adds	r3, #0xc8
  400722: 681b         	ldr	r3, [r3]
  400724: 9903         	ldr	r1, [sp, #0xc]
  400726: 9a03         	ldr	r2, [sp, #0xc]
  400728: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  40072c: 4608         	mov	r0, r1
  40072e: 4611         	mov	r1, r2
  400730: 4798         	blx	r3
  400732: 4b8e         	ldr	r3, [pc, #0x238]        @ 0x40096c <StoreLayer::init()+0x5bc>
  400734: 447b         	add	r3, pc
  400736: 4618         	mov	r0, r3
  400738: f3b4 fde2    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3b4bc4
  40073c: 4603         	mov	r3, r0
  40073e: 2220         	movs	r2, #0x20
  400740: 9200         	str	r2, [sp]
  400742: 4a8b         	ldr	r2, [pc, #0x22c]        @ 0x400970 <StoreLayer::init()+0x5c0>
  400744: 447a         	add	r2, pc
  400746: 4610         	mov	r0, r2
  400748: 4619         	mov	r1, r3
  40074a: 2220         	movs	r2, #0x20
  40074c: 2320         	movs	r3, #0x20
  40074e: f1a4 fe13    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1a4c26
  400752: 4602         	mov	r2, r0
  400754: 9b03         	ldr	r3, [sp, #0xc]
  400756: f8c3 2120    	str.w	r2, [r3, #0x120]
  40075a: 9b03         	ldr	r3, [sp, #0xc]
  40075c: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  400760: 4618         	mov	r0, r3
  400762: f197 fbc1    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x197782
  400766: 9b03         	ldr	r3, [sp, #0xc]
  400768: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  40076c: 681b         	ldr	r3, [r3]
  40076e: 334c         	adds	r3, #0x4c
  400770: 681d         	ldr	r5, [r3]
  400772: 9b03         	ldr	r3, [sp, #0xc]
  400774: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  400778: 461e         	mov	r6, r3
  40077a: 9b03         	ldr	r3, [sp, #0xc]
  40077c: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  400780: 681b         	ldr	r3, [r3]
  400782: 3350         	adds	r3, #0x50
  400784: 681b         	ldr	r3, [r3]
  400786: 9a03         	ldr	r2, [sp, #0xc]
  400788: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  40078c: 4610         	mov	r0, r2
  40078e: 4798         	blx	r3
  400790: 4603         	mov	r3, r0
  400792: 4630         	mov	r0, r6
  400794: 4619         	mov	r1, r3
  400796: 47a8         	blx	r5
  400798: 9b03         	ldr	r3, [sp, #0xc]
  40079a: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  40079e: 681b         	ldr	r3, [r3]
  4007a0: 3340         	adds	r3, #0x40
  4007a2: 681b         	ldr	r3, [r3]
  4007a4: 9a03         	ldr	r2, [sp, #0xc]
  4007a6: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  4007aa: 4610         	mov	r0, r2
  4007ac: 9909         	ldr	r1, [sp, #0x24]
  4007ae: 4798         	blx	r3
  4007b0: 9b03         	ldr	r3, [sp, #0xc]
  4007b2: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  4007b6: eddd 7a08    	vldr	s15, [sp, #32]
  4007ba: eefd 7ae7    	vcvt.s32.f32	s15, s15
  4007be: ee17 2a90    	vmov	r2, s15
  4007c2: 4618         	mov	r0, r3
  4007c4: 4611         	mov	r1, r2
  4007c6: f1a5 fadd    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1a55ba
  4007ca: 9b03         	ldr	r3, [sp, #0xc]
  4007cc: 681b         	ldr	r3, [r3]
  4007ce: 33c8         	adds	r3, #0xc8
  4007d0: 681b         	ldr	r3, [r3]
  4007d2: 9903         	ldr	r1, [sp, #0xc]
  4007d4: 9a03         	ldr	r2, [sp, #0xc]
  4007d6: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  4007da: 4608         	mov	r0, r1
  4007dc: 4611         	mov	r1, r2
  4007de: 4798         	blx	r3
  4007e0: 4b64         	ldr	r3, [pc, #0x190]        @ 0x400974 <StoreLayer::init()+0x5c4>
  4007e2: 447b         	add	r3, pc
  4007e4: 4618         	mov	r0, r3
  4007e6: f3b4 fd8b    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3b4b16
  4007ea: 4603         	mov	r3, r0
  4007ec: 2220         	movs	r2, #0x20
  4007ee: 9200         	str	r2, [sp]
  4007f0: 4a61         	ldr	r2, [pc, #0x184]        @ 0x400978 <StoreLayer::init()+0x5c8>
  4007f2: 447a         	add	r2, pc
  4007f4: 4610         	mov	r0, r2
  4007f6: 4619         	mov	r1, r3
  4007f8: 2220         	movs	r2, #0x20
  4007fa: 2320         	movs	r3, #0x20
  4007fc: f1a4 fdbc    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1a4b78
  400800: 4602         	mov	r2, r0
  400802: 9b03         	ldr	r3, [sp, #0xc]
  400804: f8c3 2130    	str.w	r2, [r3, #0x130]
  400808: 9b03         	ldr	r3, [sp, #0xc]
  40080a: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  40080e: 4618         	mov	r0, r3
  400810: f197 fb6a    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1976d4
  400814: 9b03         	ldr	r3, [sp, #0xc]
  400816: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  40081a: 681b         	ldr	r3, [r3]
  40081c: 334c         	adds	r3, #0x4c
  40081e: 681d         	ldr	r5, [r3]
  400820: 9b03         	ldr	r3, [sp, #0xc]
  400822: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  400826: 461e         	mov	r6, r3
  400828: 9b03         	ldr	r3, [sp, #0xc]
  40082a: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  40082e: 681b         	ldr	r3, [r3]
  400830: 3350         	adds	r3, #0x50
  400832: 681b         	ldr	r3, [r3]
  400834: 9a03         	ldr	r2, [sp, #0xc]
  400836: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  40083a: 4610         	mov	r0, r2
  40083c: 4798         	blx	r3
  40083e: 4603         	mov	r3, r0
  400840: 681f         	ldr	r7, [r3]
  400842: 9b03         	ldr	r3, [sp, #0xc]
  400844: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  400848: 681b         	ldr	r3, [r3]
  40084a: 3350         	adds	r3, #0x50
  40084c: 681b         	ldr	r3, [r3]
  40084e: 9a03         	ldr	r2, [sp, #0xc]
  400850: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  400854: 4610         	mov	r0, r2
  400856: 4798         	blx	r3
  400858: 4603         	mov	r3, r0
  40085a: 685b         	ldr	r3, [r3, #0x4]
  40085c: aa1a         	add	r2, sp, #0x68
  40085e: 4610         	mov	r0, r2
  400860: 4639         	mov	r1, r7
  400862: 461a         	mov	r2, r3
  400864: f192 fa44    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x192488
  400868: ed9d 7a07    	vldr	s14, [sp, #28]
  40086c: eddf 7a32    	vldr	s15, [pc, #200]         @ 0x400938 <StoreLayer::init()+0x588>
  400870: ee77 7a27    	vadd.f32	s15, s14, s15
  400874: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  400878: ab24         	add	r3, sp, #0x90
  40087a: 4618         	mov	r0, r3
  40087c: eebb 0b04    	vmov.f64	d0, #-2.000000e+01
  400880: eeb0 1b47    	vmov.f64	d1, d7
  400884: f7fe fe28    	bl	0x3ff4d8 <non-virtual thunk to StageLayer::ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*)+0x1b4> @ imm = #-0x13b0
  400888: ed9d 8b24    	vldr	d8, [sp, #144]
  40088c: 9b03         	ldr	r3, [sp, #0xc]
  40088e: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  400892: 681b         	ldr	r3, [r3]
  400894: f503 73fe    	add.w	r3, r3, #0x1fc
  400898: 681b         	ldr	r3, [r3]
  40089a: 9a03         	ldr	r2, [sp, #0xc]
  40089c: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  4008a0: 4610         	mov	r0, r2
  4008a2: 4798         	blx	r3
  4008a4: 4607         	mov	r7, r0
  4008a6: ab06         	add	r3, sp, #0x18
  4008a8: 4618         	mov	r0, r3
  4008aa: f389 fda3    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x389b46
  4008ae: aa18         	add	r2, sp, #0x60
  4008b0: ab06         	add	r3, sp, #0x18
  4008b2: 4610         	mov	r0, r2
  4008b4: 4639         	mov	r1, r7
  4008b6: 461a         	mov	r2, r3
  4008b8: f3b6 f8d2    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3b61a4
  4008bc: ab18         	add	r3, sp, #0x60
  4008be: 4618         	mov	r0, r3
  4008c0: f3b4 fbcc    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x3b4798
  4008c4: 4603         	mov	r3, r0
  4008c6: ee07 3a90    	vmov	s15, r3
  4008ca: eeb8 7a67    	vcvt.f32.u32	s14, s15
  4008ce: eddd 7a08    	vldr	s15, [sp, #32]
  4008d2: ee27 7a27    	vmul.f32	s14, s14, s15
  4008d6: eddd 7a09    	vldr	s15, [sp, #36]
  4008da: ee27 7a27    	vmul.f32	s14, s14, s15
  4008de: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  4008e2: eec7 7a27    	vdiv.f32	s15, s14, s15
  4008e6: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  4008ea: ee38 7b47    	vsub.f64	d7, d8, d7
  4008ee: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  4008f2: ed9d 7a07    	vldr	s14, [sp, #28]
  4008f6: eddf 7a10    	vldr	s15, [pc, #64]          @ 0x400938 <StoreLayer::init()+0x588>
  4008fa: ee77 7a27    	vadd.f32	s15, s14, s15
  4008fe: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  400902: ab28         	add	r3, sp, #0xa0
  400904: 4618         	mov	r0, r3
  400906: eebb 0b04    	vmov.f64	d0, #-2.000000e+01
  40090a: eeb0 1b47    	vmov.f64	d1, d7
  40090e: f7fe fde3    	bl	0x3ff4d8 <non-virtual thunk to StageLayer::ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*)+0x1b4> @ imm = #-0x143a
  400912: ed9d 7b2a    	vldr	d7, [sp, #168]
  400916: eef7 7bc7    	vcvt.f32.f64	s15, d7
  40091a: ab1c         	add	r3, sp, #0x70
  40091c: 4618         	mov	r0, r3
  40091e: ee18 1a10    	vmov	r1, s16
  400922: ee17 2a90    	vmov	r2, s15
  400926: f192 f9e3    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1923c6
  40092a: a922         	add	r1, sp, #0x88
  40092c: e026         	b	0x40097c <StoreLayer::init()+0x5cc> @ imm = #0x4c
  40092e: bf00         	nop
  400930: 0000         	movs	r0, r0
  400932: 4343         	muls	r3, r0, r3
  400934: 0000         	movs	r0, r0
  400936: 4260         	rsbs	r0, r4, #0
  400938: 0000         	movs	r0, r0
  40093a: 4234         	tst	r4, r6
  40093c: d724         	bvc	0x400988 <StoreLayer::init()+0x5d8> @ imm = #0x48
  40093e: ffff 9792    	vqshl.u64	d25, d2, #0x3f
  400942: 003d         	movs	r5, r7
  400944: 971e         	str	r7, [sp, #0x78]
  400946: 003d         	movs	r5, r7
  400948: 288e         	cmp	r0, #0x8e
  40094a: 0054         	lsls	r4, r2, #0x1
  40094c: 962c         	str	r6, [sp, #0xb0]
  40094e: 003d         	movs	r5, r7
  400950: 961e         	str	r6, [sp, #0x78]
  400952: 003d         	movs	r5, r7
  400954: 961c         	str	r6, [sp, #0x70]
  400956: 003d         	movs	r5, r7
  400958: 960e         	str	r6, [sp, #0x38]
  40095a: 003d         	movs	r5, r7
  40095c: 9600         	str	r6, [sp]
  40095e: 003d         	movs	r5, r7
  400960: 95f2         	str	r5, [sp, #0x3c8]
  400962: 003d         	movs	r5, r7
  400964: df64         	svc	#0x64
  400966: ffff df68    	<unknown>
  40096a: ffff 2634    	vqshlu.s32	d18, d20, #0x1f
  40096e: 0054         	lsls	r4, r2, #0x1
  400970: 94c8         	str	r4, [sp, #0x320]
  400972: 003d         	movs	r5, r7
  400974: 2586         	movs	r5, #0x86
  400976: 0054         	lsls	r4, r2, #0x1
  400978: 9422         	str	r4, [sp, #0x88]
  40097a: 003d         	movs	r5, r7
  40097c: aa1a         	add	r2, sp, #0x68
  40097e: ab1c         	add	r3, sp, #0x70
  400980: 4608         	mov	r0, r1
  400982: 4611         	mov	r1, r2
  400984: 461a         	mov	r2, r3
  400986: f7fe fd97    	bl	0x3ff4b8 <non-virtual thunk to StageLayer::ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*)+0x194> @ imm = #-0x14d2
  40098a: ab22         	add	r3, sp, #0x88
  40098c: 4630         	mov	r0, r6
  40098e: 4619         	mov	r1, r3
  400990: 47a8         	blx	r5
  400992: ab18         	add	r3, sp, #0x60
  400994: 4618         	mov	r0, r3
  400996: f3b4 ffbd    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b4f7a
  40099a: ab06         	add	r3, sp, #0x18
  40099c: 4618         	mov	r0, r3
  40099e: f389 fd2d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x389a5a
  4009a2: 9b03         	ldr	r3, [sp, #0xc]
  4009a4: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  4009a8: 681b         	ldr	r3, [r3]
  4009aa: 3340         	adds	r3, #0x40
  4009ac: 681b         	ldr	r3, [r3]
  4009ae: 9a03         	ldr	r2, [sp, #0xc]
  4009b0: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  4009b4: 4610         	mov	r0, r2
  4009b6: f243 3133    	movw	r1, #0x3333
  4009ba: f6c3 61b3    	movt	r1, #0x3eb3
  4009be: 4798         	blx	r3
  4009c0: 9b03         	ldr	r3, [sp, #0xc]
  4009c2: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  4009c6: eddd 7a08    	vldr	s15, [sp, #32]
  4009ca: eefd 7ae7    	vcvt.s32.f32	s15, s15
  4009ce: ee17 2a90    	vmov	r2, s15
  4009d2: 4618         	mov	r0, r3
  4009d4: 4611         	mov	r1, r2
  4009d6: f1a5 f9d5    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1a53aa
  4009da: 9b03         	ldr	r3, [sp, #0xc]
  4009dc: 681b         	ldr	r3, [r3]
  4009de: 33c8         	adds	r3, #0xc8
  4009e0: 681b         	ldr	r3, [r3]
  4009e2: 9903         	ldr	r1, [sp, #0xc]
  4009e4: 9a03         	ldr	r2, [sp, #0xc]
  4009e6: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  4009ea: 4608         	mov	r0, r1
  4009ec: 4611         	mov	r1, r2
  4009ee: 4798         	blx	r3
  4009f0: 9a03         	ldr	r2, [sp, #0xc]
  4009f2: 4bc4         	ldr	r3, [pc, #0x310]        @ 0x400d04 <StoreLayer::init()+0x954>
  4009f4: 58e3         	ldr	r3, [r4, r3]
  4009f6: 9322         	str	r3, [sp, #0x88]
  4009f8: 2300         	movs	r3, #0x0
  4009fa: 9323         	str	r3, [sp, #0x8c]
  4009fc: 9b23         	ldr	r3, [sp, #0x8c]
  4009fe: 9300         	str	r3, [sp]
  400a00: 9b22         	ldr	r3, [sp, #0x88]
  400a02: 980f         	ldr	r0, [sp, #0x3c]
  400a04: 9910         	ldr	r1, [sp, #0x40]
  400a06: f1b7 fc91    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x1b7922
  400a0a: 4603         	mov	r3, r0
  400a0c: 9313         	str	r3, [sp, #0x4c]
  400a0e: 9813         	ldr	r0, [sp, #0x4c]
  400a10: 2100         	movs	r1, #0x0
  400a12: f1b4 fb93    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x1b4726
  400a16: 4602         	mov	r2, r0
  400a18: 9b03         	ldr	r3, [sp, #0xc]
  400a1a: f8c3 2138    	str.w	r2, [r3, #0x138]
  400a1e: 9b03         	ldr	r3, [sp, #0xc]
  400a20: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  400a24: 4618         	mov	r0, r3
  400a26: f197 fa5f    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1974be
  400a2a: 9b03         	ldr	r3, [sp, #0xc]
  400a2c: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  400a30: 681b         	ldr	r3, [r3]
  400a32: 334c         	adds	r3, #0x4c
  400a34: 681c         	ldr	r4, [r3]
  400a36: 9b03         	ldr	r3, [sp, #0xc]
  400a38: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  400a3c: 461d         	mov	r5, r3
  400a3e: ed9d 7a14    	vldr	s14, [sp, #80]
  400a42: eddf 7aaf    	vldr	s15, [pc, #700]         @ 0x400d00 <StoreLayer::init()+0x950>
  400a46: ee77 7a67    	vsub.f32	s15, s14, s15
  400a4a: ab28         	add	r3, sp, #0xa0
  400a4c: 4618         	mov	r0, r3
  400a4e: ee17 1a90    	vmov	r1, s15
  400a52: f04f 0200    	mov.w	r2, #0x0
  400a56: f2c4 2224    	movt	r2, #0x4224
  400a5a: f192 f949    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x192292
  400a5e: ab28         	add	r3, sp, #0xa0
  400a60: 4628         	mov	r0, r5
  400a62: 4619         	mov	r1, r3
  400a64: 47a0         	blx	r4
  400a66: 9b03         	ldr	r3, [sp, #0xc]
  400a68: 681b         	ldr	r3, [r3]
  400a6a: 33c8         	adds	r3, #0xc8
  400a6c: 681b         	ldr	r3, [r3]
  400a6e: 9903         	ldr	r1, [sp, #0xc]
  400a70: 9a03         	ldr	r2, [sp, #0xc]
  400a72: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  400a76: 4608         	mov	r0, r1
  400a78: 4611         	mov	r1, r2
  400a7a: 4798         	blx	r3
  400a7c: 4ba2         	ldr	r3, [pc, #0x288]        @ 0x400d08 <StoreLayer::init()+0x958>
  400a7e: 447b         	add	r3, pc
  400a80: 4618         	mov	r0, r3
  400a82: f3b4 fc3d    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3b487a
  400a86: 4603         	mov	r3, r0
  400a88: 2220         	movs	r2, #0x20
  400a8a: 9200         	str	r2, [sp]
  400a8c: 4a9f         	ldr	r2, [pc, #0x27c]        @ 0x400d0c <StoreLayer::init()+0x95c>
  400a8e: 447a         	add	r2, pc
  400a90: 4610         	mov	r0, r2
  400a92: 4619         	mov	r1, r3
  400a94: 2220         	movs	r2, #0x20
  400a96: 2320         	movs	r3, #0x20
  400a98: f1a4 fc6e    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1a48dc
  400a9c: 4602         	mov	r2, r0
  400a9e: 9b03         	ldr	r3, [sp, #0xc]
  400aa0: f8c3 2128    	str.w	r2, [r3, #0x128]
  400aa4: 9b03         	ldr	r3, [sp, #0xc]
  400aa6: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  400aaa: 4618         	mov	r0, r3
  400aac: f197 fa1c    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x197438
  400ab0: 9b03         	ldr	r3, [sp, #0xc]
  400ab2: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  400ab6: 681b         	ldr	r3, [r3]
  400ab8: 334c         	adds	r3, #0x4c
  400aba: 681c         	ldr	r4, [r3]
  400abc: 9b03         	ldr	r3, [sp, #0xc]
  400abe: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  400ac2: 461d         	mov	r5, r3
  400ac4: 9b03         	ldr	r3, [sp, #0xc]
  400ac6: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  400aca: 681b         	ldr	r3, [r3]
  400acc: 3350         	adds	r3, #0x50
  400ace: 681b         	ldr	r3, [r3]
  400ad0: 9a03         	ldr	r2, [sp, #0xc]
  400ad2: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  400ad6: 4610         	mov	r0, r2
  400ad8: 4798         	blx	r3
  400ada: 4603         	mov	r3, r0
  400adc: 681e         	ldr	r6, [r3]
  400ade: 9b03         	ldr	r3, [sp, #0xc]
  400ae0: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  400ae4: 681b         	ldr	r3, [r3]
  400ae6: 3350         	adds	r3, #0x50
  400ae8: 681b         	ldr	r3, [r3]
  400aea: 9a03         	ldr	r2, [sp, #0xc]
  400aec: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  400af0: 4610         	mov	r0, r2
  400af2: 4798         	blx	r3
  400af4: 4603         	mov	r3, r0
  400af6: 685b         	ldr	r3, [r3, #0x4]
  400af8: aa18         	add	r2, sp, #0x60
  400afa: 4610         	mov	r0, r2
  400afc: 4631         	mov	r1, r6
  400afe: 461a         	mov	r2, r3
  400b00: f192 f8f6    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1921ec
  400b04: eddd 7a07    	vldr	s15, [sp, #28]
  400b08: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  400b0c: ab24         	add	r3, sp, #0x90
  400b0e: 4618         	mov	r0, r3
  400b10: ed9f 0b79    	vldr	d0, [pc, #484]          @ 0x400cf8 <StoreLayer::init()+0x948>
  400b14: eeb0 1b47    	vmov.f64	d1, d7
  400b18: f7fe fcde    	bl	0x3ff4d8 <non-virtual thunk to StageLayer::ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*)+0x1b4> @ imm = #-0x1644
  400b1c: ed9d 8b24    	vldr	d8, [sp, #144]
  400b20: 9b03         	ldr	r3, [sp, #0xc]
  400b22: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  400b26: 681b         	ldr	r3, [r3]
  400b28: f503 73fe    	add.w	r3, r3, #0x1fc
  400b2c: 681b         	ldr	r3, [r3]
  400b2e: 9a03         	ldr	r2, [sp, #0xc]
  400b30: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  400b34: 4610         	mov	r0, r2
  400b36: 4798         	blx	r3
  400b38: 4606         	mov	r6, r0
  400b3a: ab05         	add	r3, sp, #0x14
  400b3c: 4618         	mov	r0, r3
  400b3e: f389 fc59    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3898b2
  400b42: aa06         	add	r2, sp, #0x18
  400b44: ab05         	add	r3, sp, #0x14
  400b46: 4610         	mov	r0, r2
  400b48: 4631         	mov	r1, r6
  400b4a: 461a         	mov	r2, r3
  400b4c: f3b5 ff88    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3b5f10
  400b50: ab06         	add	r3, sp, #0x18
  400b52: 4618         	mov	r0, r3
  400b54: f3b4 fa82    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x3b4504
  400b58: 4603         	mov	r3, r0
  400b5a: ee07 3a90    	vmov	s15, r3
  400b5e: eeb8 7a67    	vcvt.f32.u32	s14, s15
  400b62: eddd 7a08    	vldr	s15, [sp, #32]
  400b66: ee27 7a27    	vmul.f32	s14, s14, s15
  400b6a: eddd 7a09    	vldr	s15, [sp, #36]
  400b6e: ee27 7a27    	vmul.f32	s14, s14, s15
  400b72: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  400b76: eec7 7a27    	vdiv.f32	s15, s14, s15
  400b7a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  400b7e: ee38 7b47    	vsub.f64	d7, d8, d7
  400b82: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  400b86: eddd 7a07    	vldr	s15, [sp, #28]
  400b8a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  400b8e: ab28         	add	r3, sp, #0xa0
  400b90: 4618         	mov	r0, r3
  400b92: ed9f 0b59    	vldr	d0, [pc, #356]          @ 0x400cf8 <StoreLayer::init()+0x948>
  400b96: eeb0 1b47    	vmov.f64	d1, d7
  400b9a: f7fe fc9d    	bl	0x3ff4d8 <non-virtual thunk to StageLayer::ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*)+0x1b4> @ imm = #-0x16c6
  400b9e: ed9d 7b2a    	vldr	d7, [sp, #168]
  400ba2: eef7 7bc7    	vcvt.f32.f64	s15, d7
  400ba6: ab1a         	add	r3, sp, #0x68
  400ba8: 4618         	mov	r0, r3
  400baa: ee18 1a10    	vmov	r1, s16
  400bae: ee17 2a90    	vmov	r2, s15
  400bb2: f192 f89d    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x19213a
  400bb6: a91c         	add	r1, sp, #0x70
  400bb8: aa18         	add	r2, sp, #0x60
  400bba: ab1a         	add	r3, sp, #0x68
  400bbc: 4608         	mov	r0, r1
  400bbe: 4611         	mov	r1, r2
  400bc0: 461a         	mov	r2, r3
  400bc2: f7fe fc79    	bl	0x3ff4b8 <non-virtual thunk to StageLayer::ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*)+0x194> @ imm = #-0x170e
  400bc6: ab1c         	add	r3, sp, #0x70
  400bc8: 4628         	mov	r0, r5
  400bca: 4619         	mov	r1, r3
  400bcc: 47a0         	blx	r4
  400bce: ab06         	add	r3, sp, #0x18
  400bd0: 4618         	mov	r0, r3
  400bd2: f3b4 fe9f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b4d3e
  400bd6: ab05         	add	r3, sp, #0x14
  400bd8: 4618         	mov	r0, r3
  400bda: f389 fc0f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38981e
  400bde: 9b03         	ldr	r3, [sp, #0xc]
  400be0: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  400be4: 681b         	ldr	r3, [r3]
  400be6: 3340         	adds	r3, #0x40
  400be8: 681b         	ldr	r3, [r3]
  400bea: 9a03         	ldr	r2, [sp, #0xc]
  400bec: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  400bf0: 4610         	mov	r0, r2
  400bf2: 9909         	ldr	r1, [sp, #0x24]
  400bf4: 4798         	blx	r3
  400bf6: 9b03         	ldr	r3, [sp, #0xc]
  400bf8: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  400bfc: eddd 7a08    	vldr	s15, [sp, #32]
  400c00: eefd 7ae7    	vcvt.s32.f32	s15, s15
  400c04: ee17 2a90    	vmov	r2, s15
  400c08: 4618         	mov	r0, r3
  400c0a: 4611         	mov	r1, r2
  400c0c: f1a5 f8ba    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1a5174
  400c10: 9b03         	ldr	r3, [sp, #0xc]
  400c12: 681b         	ldr	r3, [r3]
  400c14: 33c8         	adds	r3, #0xc8
  400c16: 681b         	ldr	r3, [r3]
  400c18: 9903         	ldr	r1, [sp, #0xc]
  400c1a: 9a03         	ldr	r2, [sp, #0xc]
  400c1c: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  400c20: 4608         	mov	r0, r1
  400c22: 4611         	mov	r1, r2
  400c24: 4798         	blx	r3
  400c26: 4b3a         	ldr	r3, [pc, #0xe8]         @ 0x400d10 <StoreLayer::init()+0x960>
  400c28: 447b         	add	r3, pc
  400c2a: 4618         	mov	r0, r3
  400c2c: f3b4 fb68    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3b46d0
  400c30: 4603         	mov	r3, r0
  400c32: 2220         	movs	r2, #0x20
  400c34: 9200         	str	r2, [sp]
  400c36: 4a37         	ldr	r2, [pc, #0xdc]         @ 0x400d14 <StoreLayer::init()+0x964>
  400c38: 447a         	add	r2, pc
  400c3a: 4610         	mov	r0, r2
  400c3c: 4619         	mov	r1, r3
  400c3e: 2220         	movs	r2, #0x20
  400c40: 2320         	movs	r3, #0x20
  400c42: f1a4 fb99    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1a4732
  400c46: 4602         	mov	r2, r0
  400c48: 9b03         	ldr	r3, [sp, #0xc]
  400c4a: f8c3 2134    	str.w	r2, [r3, #0x134]
  400c4e: 9b03         	ldr	r3, [sp, #0xc]
  400c50: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  400c54: 4618         	mov	r0, r3
  400c56: f197 f947    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x19728e
  400c5a: 9b03         	ldr	r3, [sp, #0xc]
  400c5c: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  400c60: 681b         	ldr	r3, [r3]
  400c62: 334c         	adds	r3, #0x4c
  400c64: 681c         	ldr	r4, [r3]
  400c66: 9b03         	ldr	r3, [sp, #0xc]
  400c68: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  400c6c: 461d         	mov	r5, r3
  400c6e: 9b03         	ldr	r3, [sp, #0xc]
  400c70: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  400c74: 681b         	ldr	r3, [r3]
  400c76: 3350         	adds	r3, #0x50
  400c78: 681b         	ldr	r3, [r3]
  400c7a: 9a03         	ldr	r2, [sp, #0xc]
  400c7c: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  400c80: 4610         	mov	r0, r2
  400c82: 4798         	blx	r3
  400c84: 4603         	mov	r3, r0
  400c86: 681e         	ldr	r6, [r3]
  400c88: 9b03         	ldr	r3, [sp, #0xc]
  400c8a: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  400c8e: 681b         	ldr	r3, [r3]
  400c90: 3350         	adds	r3, #0x50
  400c92: 681b         	ldr	r3, [r3]
  400c94: 9a03         	ldr	r2, [sp, #0xc]
  400c96: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  400c9a: 4610         	mov	r0, r2
  400c9c: 4798         	blx	r3
  400c9e: 4603         	mov	r3, r0
  400ca0: 685b         	ldr	r3, [r3, #0x4]
  400ca2: aa18         	add	r2, sp, #0x60
  400ca4: 4610         	mov	r0, r2
  400ca6: 4631         	mov	r1, r6
  400ca8: 461a         	mov	r2, r3
  400caa: f192 f821    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x192042
  400cae: eddd 7a07    	vldr	s15, [sp, #28]
  400cb2: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  400cb6: ab24         	add	r3, sp, #0x90
  400cb8: 4618         	mov	r0, r3
  400cba: ed9f 0b0f    	vldr	d0, [pc, #60]           @ 0x400cf8 <StoreLayer::init()+0x948>
  400cbe: eeb0 1b47    	vmov.f64	d1, d7
  400cc2: f7fe fc09    	bl	0x3ff4d8 <non-virtual thunk to StageLayer::ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*)+0x1b4> @ imm = #-0x17ee
  400cc6: ed9d 8b24    	vldr	d8, [sp, #144]
  400cca: 9b03         	ldr	r3, [sp, #0xc]
  400ccc: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  400cd0: 681b         	ldr	r3, [r3]
  400cd2: f503 73fe    	add.w	r3, r3, #0x1fc
  400cd6: 681b         	ldr	r3, [r3]
  400cd8: 9a03         	ldr	r2, [sp, #0xc]
  400cda: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  400cde: 4610         	mov	r0, r2
  400ce0: 4798         	blx	r3
  400ce2: 4606         	mov	r6, r0
  400ce4: ab05         	add	r3, sp, #0x14
  400ce6: 4618         	mov	r0, r3
  400ce8: f389 fb84    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x389708
  400cec: aa06         	add	r2, sp, #0x18
  400cee: ab05         	add	r3, sp, #0x14
  400cf0: 4610         	mov	r0, r2
  400cf2: 4631         	mov	r1, r6
  400cf4: e010         	b	0x400d18 <StoreLayer::init()+0x968> @ imm = #0x20
  400cf6: bf00         	nop
  400d00: 0000         	movs	r0, r0
  400d02: 4260         	rsbs	r0, r4, #0
  400d04: df6c         	svc	#0x6c
  400d06: ffff 22ea    	<unknown>
  400d0a: 0054         	lsls	r4, r2, #0x1
  400d0c: 918e         	str	r1, [sp, #0x238]
  400d0e: 003d         	movs	r5, r7
  400d10: 2140         	movs	r1, #0x40
  400d12: 0054         	lsls	r4, r2, #0x1
  400d14: 8ff0         	ldrh	r0, [r6, #0x3e]
  400d16: 003d         	movs	r5, r7
  400d18: 461a         	mov	r2, r3
  400d1a: f3b5 fea1    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3b5d42
  400d1e: ab06         	add	r3, sp, #0x18
  400d20: 4618         	mov	r0, r3
  400d22: f3b4 f99b    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x3b4336
  400d26: 4603         	mov	r3, r0
  400d28: ee07 3a90    	vmov	s15, r3
  400d2c: eeb8 7a67    	vcvt.f32.u32	s14, s15
  400d30: eddd 7a08    	vldr	s15, [sp, #32]
  400d34: ee27 7a27    	vmul.f32	s14, s14, s15
  400d38: eddd 7a09    	vldr	s15, [sp, #36]
  400d3c: ee27 7a27    	vmul.f32	s14, s14, s15
  400d40: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  400d44: eec7 7a27    	vdiv.f32	s15, s14, s15
  400d48: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  400d4c: ee38 7b47    	vsub.f64	d7, d8, d7
  400d50: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  400d54: eddd 7a07    	vldr	s15, [sp, #28]
  400d58: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  400d5c: ab28         	add	r3, sp, #0xa0
  400d5e: 4618         	mov	r0, r3
  400d60: ed9f 0bb5    	vldr	d0, [pc, #724]          @ 0x401038 <StoreLayer::init()+0xc88>
  400d64: eeb0 1b47    	vmov.f64	d1, d7
  400d68: f7fe fbb6    	bl	0x3ff4d8 <non-virtual thunk to StageLayer::ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*)+0x1b4> @ imm = #-0x1894
  400d6c: ed9d 7b2a    	vldr	d7, [sp, #168]
  400d70: eef7 7bc7    	vcvt.f32.f64	s15, d7
  400d74: ab1a         	add	r3, sp, #0x68
  400d76: 4618         	mov	r0, r3
  400d78: ee18 1a10    	vmov	r1, s16
  400d7c: ee17 2a90    	vmov	r2, s15
  400d80: f191 ffb6    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x191f6c
  400d84: a91c         	add	r1, sp, #0x70
  400d86: aa18         	add	r2, sp, #0x60
  400d88: ab1a         	add	r3, sp, #0x68
  400d8a: 4608         	mov	r0, r1
  400d8c: 4611         	mov	r1, r2
  400d8e: 461a         	mov	r2, r3
  400d90: f7fe fb92    	bl	0x3ff4b8 <non-virtual thunk to StageLayer::ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*)+0x194> @ imm = #-0x18dc
  400d94: ab1c         	add	r3, sp, #0x70
  400d96: 4628         	mov	r0, r5
  400d98: 4619         	mov	r1, r3
  400d9a: 47a0         	blx	r4
  400d9c: ab06         	add	r3, sp, #0x18
  400d9e: 4618         	mov	r0, r3
  400da0: f3b4 fdb8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b4b70
  400da4: ab05         	add	r3, sp, #0x14
  400da6: 4618         	mov	r0, r3
  400da8: f389 fb28    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x389650
  400dac: 9b03         	ldr	r3, [sp, #0xc]
  400dae: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  400db2: 681b         	ldr	r3, [r3]
  400db4: 3340         	adds	r3, #0x40
  400db6: 681b         	ldr	r3, [r3]
  400db8: 9a03         	ldr	r2, [sp, #0xc]
  400dba: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  400dbe: 4610         	mov	r0, r2
  400dc0: 9909         	ldr	r1, [sp, #0x24]
  400dc2: 4798         	blx	r3
  400dc4: 9b03         	ldr	r3, [sp, #0xc]
  400dc6: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  400dca: eddd 7a08    	vldr	s15, [sp, #32]
  400dce: eefd 7ae7    	vcvt.s32.f32	s15, s15
  400dd2: ee17 2a90    	vmov	r2, s15
  400dd6: 4618         	mov	r0, r3
  400dd8: 4611         	mov	r1, r2
  400dda: f1a4 ffd3    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1a4fa6
  400dde: 9b03         	ldr	r3, [sp, #0xc]
  400de0: 681b         	ldr	r3, [r3]
  400de2: 33c8         	adds	r3, #0xc8
  400de4: 681b         	ldr	r3, [r3]
  400de6: 9903         	ldr	r1, [sp, #0xc]
  400de8: 9a03         	ldr	r2, [sp, #0xc]
  400dea: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  400dee: 4608         	mov	r0, r1
  400df0: 4611         	mov	r1, r2
  400df2: 4798         	blx	r3
  400df4: ab28         	add	r3, sp, #0xa0
  400df6: f04f 0200    	mov.w	r2, #0x0
  400dfa: 9200         	str	r2, [sp]
  400dfc: 4618         	mov	r0, r3
  400dfe: f04f 0100    	mov.w	r1, #0x0
  400e02: f04f 0200    	mov.w	r2, #0x0
  400e06: f04f 0300    	mov.w	r3, #0x0
  400e0a: f192 fa69    	bl	0x5932e0 <cocos2d::CCRect::CCRect(float, float, float, float)> @ imm = #0x1924d2
  400e0e: ab28         	add	r3, sp, #0xa0
  400e10: 4a8d         	ldr	r2, [pc, #0x234]        @ 0x401048 <StoreLayer::init()+0xc98>
  400e12: 447a         	add	r2, pc
  400e14: 4610         	mov	r0, r2
  400e16: 4619         	mov	r1, r3
  400e18: f1d7 f9f2    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x1d73e4
  400e1c: 4602         	mov	r2, r0
  400e1e: 9b03         	ldr	r3, [sp, #0xc]
  400e20: f8c3 213c    	str.w	r2, [r3, #0x13c]
  400e24: 9b03         	ldr	r3, [sp, #0xc]
  400e26: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  400e2a: 681b         	ldr	r3, [r3]
  400e2c: 334c         	adds	r3, #0x4c
  400e2e: 681c         	ldr	r4, [r3]
  400e30: 9b03         	ldr	r3, [sp, #0xc]
  400e32: f8d3 513c    	ldr.w	r5, [r3, #0x13c]
  400e36: ed9d 7a16    	vldr	s14, [sp, #88]
  400e3a: eddd 6a14    	vldr	s13, [sp, #80]
  400e3e: eef1 7a00    	vmov.f32	s15, #4.000000e+00
  400e42: eec6 7aa7    	vdiv.f32	s15, s13, s15
  400e46: ee37 7a27    	vadd.f32	s14, s14, s15
  400e4a: eef3 7a04    	vmov.f32	s15, #2.000000e+01
  400e4e: ee77 6a67    	vsub.f32	s13, s14, s15
  400e52: ed9d 7a15    	vldr	s14, [sp, #84]
  400e56: eddf 7a7a    	vldr	s15, [pc, #488]         @ 0x401040 <StoreLayer::init()+0xc90>
  400e5a: ee77 7a67    	vsub.f32	s15, s14, s15
  400e5e: ab28         	add	r3, sp, #0xa0
  400e60: 4618         	mov	r0, r3
  400e62: ee16 1a90    	vmov	r1, s13
  400e66: ee17 2a90    	vmov	r2, s15
  400e6a: f191 ff41    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x191e82
  400e6e: ab28         	add	r3, sp, #0xa0
  400e70: 4628         	mov	r0, r5
  400e72: 4619         	mov	r1, r3
  400e74: 47a0         	blx	r4
  400e76: 9b03         	ldr	r3, [sp, #0xc]
  400e78: 681b         	ldr	r3, [r3]
  400e7a: 33c8         	adds	r3, #0xc8
  400e7c: 681b         	ldr	r3, [r3]
  400e7e: 9903         	ldr	r1, [sp, #0xc]
  400e80: 9a03         	ldr	r2, [sp, #0xc]
  400e82: f8d2 213c    	ldr.w	r2, [r2, #0x13c]
  400e86: 4608         	mov	r0, r1
  400e88: 4611         	mov	r1, r2
  400e8a: 4798         	blx	r3
  400e8c: 4b6f         	ldr	r3, [pc, #0x1bc]        @ 0x40104c <StoreLayer::init()+0xc9c>
  400e8e: 447b         	add	r3, pc
  400e90: 4618         	mov	r0, r3
  400e92: f3b4 fa35    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3b446a
  400e96: 4603         	mov	r3, r0
  400e98: 2220         	movs	r2, #0x20
  400e9a: 9200         	str	r2, [sp]
  400e9c: 4a6c         	ldr	r2, [pc, #0x1b0]        @ 0x401050 <StoreLayer::init()+0xca0>
  400e9e: 447a         	add	r2, pc
  400ea0: 4610         	mov	r0, r2
  400ea2: 4619         	mov	r1, r3
  400ea4: 2220         	movs	r2, #0x20
  400ea6: 2320         	movs	r3, #0x20
  400ea8: f1a4 fa66    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1a44cc
  400eac: 4602         	mov	r2, r0
  400eae: 9b03         	ldr	r3, [sp, #0xc]
  400eb0: f8c3 2140    	str.w	r2, [r3, #0x140]
  400eb4: 9b03         	ldr	r3, [sp, #0xc]
  400eb6: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  400eba: 4618         	mov	r0, r3
  400ebc: f197 f814    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x197028
  400ec0: 9b03         	ldr	r3, [sp, #0xc]
  400ec2: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  400ec6: 681b         	ldr	r3, [r3]
  400ec8: 334c         	adds	r3, #0x4c
  400eca: 681c         	ldr	r4, [r3]
  400ecc: 9b03         	ldr	r3, [sp, #0xc]
  400ece: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  400ed2: 461d         	mov	r5, r3
  400ed4: ed9d 7a16    	vldr	s14, [sp, #88]
  400ed8: eddd 6a14    	vldr	s13, [sp, #80]
  400edc: eef1 7a00    	vmov.f32	s15, #4.000000e+00
  400ee0: eec6 7aa7    	vdiv.f32	s15, s13, s15
  400ee4: ee37 7a27    	vadd.f32	s14, s14, s15
  400ee8: eef3 7a04    	vmov.f32	s15, #2.000000e+01
  400eec: ee77 6a67    	vsub.f32	s13, s14, s15
  400ef0: ed9d 7a15    	vldr	s14, [sp, #84]
  400ef4: eddf 7a53    	vldr	s15, [pc, #332]         @ 0x401044 <StoreLayer::init()+0xc94>
  400ef8: ee77 7a67    	vsub.f32	s15, s14, s15
  400efc: ab28         	add	r3, sp, #0xa0
  400efe: 4618         	mov	r0, r3
  400f00: ee16 1a90    	vmov	r1, s13
  400f04: ee17 2a90    	vmov	r2, s15
  400f08: f191 fef2    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x191de4
  400f0c: ab28         	add	r3, sp, #0xa0
  400f0e: 4628         	mov	r0, r5
  400f10: 4619         	mov	r1, r3
  400f12: 47a0         	blx	r4
  400f14: 9b03         	ldr	r3, [sp, #0xc]
  400f16: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  400f1a: 4618         	mov	r0, r3
  400f1c: 2118         	movs	r1, #0x18
  400f1e: f1a4 ff31    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1a4e62
  400f22: 9b03         	ldr	r3, [sp, #0xc]
  400f24: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  400f28: 681b         	ldr	r3, [r3]
  400f2a: 3340         	adds	r3, #0x40
  400f2c: 681b         	ldr	r3, [r3]
  400f2e: 9a03         	ldr	r2, [sp, #0xc]
  400f30: f8d2 2140    	ldr.w	r2, [r2, #0x140]
  400f34: 4610         	mov	r0, r2
  400f36: f04f 517c    	mov.w	r1, #0x3f000000
  400f3a: 4798         	blx	r3
  400f3c: 9b03         	ldr	r3, [sp, #0xc]
  400f3e: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  400f42: 681b         	ldr	r3, [r3]
  400f44: 337c         	adds	r3, #0x7c
  400f46: 681c         	ldr	r4, [r3]
  400f48: 9b03         	ldr	r3, [sp, #0xc]
  400f4a: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  400f4e: 461d         	mov	r5, r3
  400f50: ab28         	add	r3, sp, #0xa0
  400f52: 4618         	mov	r0, r3
  400f54: f04f 517c    	mov.w	r1, #0x3f000000
  400f58: f04f 527c    	mov.w	r2, #0x3f000000
  400f5c: f191 fec8    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x191d90
  400f60: ab28         	add	r3, sp, #0xa0
  400f62: 4628         	mov	r0, r5
  400f64: 4619         	mov	r1, r3
  400f66: 47a0         	blx	r4
  400f68: 9b03         	ldr	r3, [sp, #0xc]
  400f6a: 681b         	ldr	r3, [r3]
  400f6c: 33c8         	adds	r3, #0xc8
  400f6e: 681b         	ldr	r3, [r3]
  400f70: 9903         	ldr	r1, [sp, #0xc]
  400f72: 9a03         	ldr	r2, [sp, #0xc]
  400f74: f8d2 2140    	ldr.w	r2, [r2, #0x140]
  400f78: 4608         	mov	r0, r1
  400f7a: 4611         	mov	r1, r2
  400f7c: 4798         	blx	r3
  400f7e: ab28         	add	r3, sp, #0xa0
  400f80: 4618         	mov	r0, r3
  400f82: f44f 4100    	mov.w	r1, #0x8000
  400f86: f2c4 4109    	movt	r1, #0x4409
  400f8a: f04f 0200    	mov.w	r2, #0x0
  400f8e: f2c4 3248    	movt	r2, #0x4348
  400f92: f192 f87f    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x1920fe
  400f96: ab28         	add	r3, sp, #0xa0
  400f98: 2200         	movs	r2, #0x0
  400f9a: 9200         	str	r2, [sp]
  400f9c: 4a2d         	ldr	r2, [pc, #0xb4]         @ 0x401054 <StoreLayer::init()+0xca4>
  400f9e: 447a         	add	r2, pc
  400fa0: 4610         	mov	r0, r2
  400fa2: 4a2d         	ldr	r2, [pc, #0xb4]         @ 0x401058 <StoreLayer::init()+0xca8>
  400fa4: 447a         	add	r2, pc
  400fa6: 4611         	mov	r1, r2
  400fa8: f04f 4284    	mov.w	r2, #0x42000000
  400fac: f1ab f850    	bl	0x5ac050 <cocos2d::CCLabelTTF::create(char const*, char const*, float, cocos2d::CCSize const&, cocos2d::CCTextAlignment)> @ imm = #0x1ab0a0
  400fb0: 4602         	mov	r2, r0
  400fb2: 9b03         	ldr	r3, [sp, #0xc]
  400fb4: f8c3 2144    	str.w	r2, [r3, #0x144]
  400fb8: 9b03         	ldr	r3, [sp, #0xc]
  400fba: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  400fbe: 4618         	mov	r0, r3
  400fc0: f196 ff92    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x196f24
  400fc4: 9b03         	ldr	r3, [sp, #0xc]
  400fc6: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  400fca: 681b         	ldr	r3, [r3]
  400fcc: 3340         	adds	r3, #0x40
  400fce: 681b         	ldr	r3, [r3]
  400fd0: 9a03         	ldr	r2, [sp, #0xc]
  400fd2: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  400fd6: 4610         	mov	r0, r2
  400fd8: f246 6166    	movw	r1, #0x6666
  400fdc: f6c3 61e6    	movt	r1, #0x3ee6
  400fe0: 4798         	blx	r3
  400fe2: 9b03         	ldr	r3, [sp, #0xc]
  400fe4: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  400fe8: 681b         	ldr	r3, [r3]
  400fea: 337c         	adds	r3, #0x7c
  400fec: 681c         	ldr	r4, [r3]
  400fee: 9b03         	ldr	r3, [sp, #0xc]
  400ff0: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  400ff4: 461d         	mov	r5, r3
  400ff6: ab28         	add	r3, sp, #0xa0
  400ff8: 4618         	mov	r0, r3
  400ffa: f04f 517c    	mov.w	r1, #0x3f000000
  400ffe: f04f 527c    	mov.w	r2, #0x3f000000
  401002: f191 fe75    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x191cea
  401006: ab28         	add	r3, sp, #0xa0
  401008: 4628         	mov	r0, r5
  40100a: 4619         	mov	r1, r3
  40100c: 47a0         	blx	r4
  40100e: 9b03         	ldr	r3, [sp, #0xc]
  401010: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  401014: 681b         	ldr	r3, [r3]
  401016: 334c         	adds	r3, #0x4c
  401018: 681c         	ldr	r4, [r3]
  40101a: 9b03         	ldr	r3, [sp, #0xc]
  40101c: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  401020: 461d         	mov	r5, r3
  401022: ed9d 7a16    	vldr	s14, [sp, #88]
  401026: eddd 6a14    	vldr	s13, [sp, #80]
  40102a: eef1 7a00    	vmov.f32	s15, #4.000000e+00
  40102e: eec6 7aa7    	vdiv.f32	s15, s13, s15
  401032: e017         	b	0x401064 <StoreLayer::init()+0xcb4> @ imm = #0x2e
  401034: f3af 8000    	nop.w
  401040: 0000         	movs	r0, r0
  401042: 42ac         	cmp	r4, r5
  401044: 0000         	movs	r0, r0
  401046: 4300         	orrs	r0, r0
  401048: 8e1e         	ldrh	r6, [r3, #0x30]
  40104a: 003d         	movs	r5, r7
  40104c: 1eda         	subs	r2, r3, #0x3
  40104e: 0054         	lsls	r4, r2, #0x1
  401050: 8da2         	ldrh	r2, [r4, #0x2c]
  401052: 003d         	movs	r5, r7
  401054: 8cae         	ldrh	r6, [r5, #0x24]
  401056: 003d         	movs	r5, r7
  401058: 8cac         	ldrh	r4, [r5, #0x24]
  40105a: 003d         	movs	r5, r7
  40105c: 0000         	movs	r0, r0
  40105e: 4339         	orrs	r1, r7
  401060: 0000         	movs	r0, r0
  401062: 42c8         	cmn	r0, r1
  401064: ee37 7a27    	vadd.f32	s14, s14, s15
  401068: eef3 7a04    	vmov.f32	s15, #2.000000e+01
  40106c: ee77 6a67    	vsub.f32	s13, s14, s15
  401070: ed9d 7a15    	vldr	s14, [sp, #84]
  401074: ed5f 7a07    	vldr	s15, [pc, #-28]         @ 0x40105c <StoreLayer::init()+0xcac>
  401078: ee77 7a67    	vsub.f32	s15, s14, s15
  40107c: ab28         	add	r3, sp, #0xa0
  40107e: 4618         	mov	r0, r3
  401080: ee16 1a90    	vmov	r1, s13
  401084: ee17 2a90    	vmov	r2, s15
  401088: f191 fe32    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x191c64
  40108c: ab28         	add	r3, sp, #0xa0
  40108e: 4628         	mov	r0, r5
  401090: 4619         	mov	r1, r3
  401092: 47a0         	blx	r4
  401094: 9b03         	ldr	r3, [sp, #0xc]
  401096: 681b         	ldr	r3, [r3]
  401098: 33c8         	adds	r3, #0xc8
  40109a: 681b         	ldr	r3, [r3]
  40109c: 9903         	ldr	r1, [sp, #0xc]
  40109e: 9a03         	ldr	r2, [sp, #0xc]
  4010a0: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  4010a4: 4608         	mov	r0, r1
  4010a6: 4611         	mov	r1, r2
  4010a8: 4798         	blx	r3
  4010aa: 9b03         	ldr	r3, [sp, #0xc]
  4010ac: f503 7486    	add.w	r4, r3, #0x10c
  4010b0: ab28         	add	r3, sp, #0xa0
  4010b2: 4618         	mov	r0, r3
  4010b4: f04f 0100    	mov.w	r1, #0x0
  4010b8: f2c4 215c    	movt	r1, #0x425c
  4010bc: f04f 0200    	mov.w	r2, #0x0
  4010c0: f2c4 3252    	movt	r2, #0x4352
  4010c4: f191 ffe6    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x191fcc
  4010c8: ab28         	add	r3, sp, #0xa0
  4010ca: 4620         	mov	r0, r4
  4010cc: 4619         	mov	r1, r3
  4010ce: f051 ff93    	bl	0x452ff8 <cocos2d::extension::CCTableView::create(cocos2d::extension::CCTableViewDataSource*, cocos2d::CCSize)> @ imm = #0x51f26
  4010d2: 4602         	mov	r2, r0
  4010d4: 9b03         	ldr	r3, [sp, #0xc]
  4010d6: f8c3 2148    	str.w	r2, [r3, #0x148]
  4010da: 9b03         	ldr	r3, [sp, #0xc]
  4010dc: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  4010e0: 681b         	ldr	r3, [r3]
  4010e2: f503 7300    	add.w	r3, r3, #0x200
  4010e6: 681b         	ldr	r3, [r3]
  4010e8: 9a03         	ldr	r2, [sp, #0xc]
  4010ea: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  4010ee: 4610         	mov	r0, r2
  4010f0: 2101         	movs	r1, #0x1
  4010f2: 4798         	blx	r3
  4010f4: 9b03         	ldr	r3, [sp, #0xc]
  4010f6: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  4010fa: 681b         	ldr	r3, [r3]
  4010fc: 334c         	adds	r3, #0x4c
  4010fe: 681c         	ldr	r4, [r3]
  401100: 9b03         	ldr	r3, [sp, #0xc]
  401102: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  401106: 461d         	mov	r5, r3
  401108: ed9d 7a17    	vldr	s14, [sp, #92]
  40110c: ed5f 7a2c    	vldr	s15, [pc, #-176]        @ 0x401060 <StoreLayer::init()+0xcb0>
  401110: ee77 7a67    	vsub.f32	s15, s14, s15
  401114: ab28         	add	r3, sp, #0xa0
  401116: 4618         	mov	r0, r3
  401118: f04f 0100    	mov.w	r1, #0x0
  40111c: f2c4 21be    	movt	r1, #0x42be
  401120: ee17 2a90    	vmov	r2, s15
  401124: f191 fde4    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x191bc8
  401128: ab28         	add	r3, sp, #0xa0
  40112a: 4628         	mov	r0, r5
  40112c: 4619         	mov	r1, r3
  40112e: 47a0         	blx	r4
  401130: 9b03         	ldr	r3, [sp, #0xc]
  401132: f8d3 2148    	ldr.w	r2, [r3, #0x148]
  401136: 9b03         	ldr	r3, [sp, #0xc]
  401138: f503 7384    	add.w	r3, r3, #0x108
  40113c: 4610         	mov	r0, r2
  40113e: 4619         	mov	r1, r3
  401140: f6e9 f97c    	bl	0x2ea43c <cocos2d::extension::CCTableView::setDelegate(cocos2d::extension::CCTableViewDelegate*)> @ imm = #-0x116d08
  401144: 9b03         	ldr	r3, [sp, #0xc]
  401146: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  40114a: 4618         	mov	r0, r3
  40114c: 2100         	movs	r1, #0x0
  40114e: f052 f8fb    	bl	0x453348 <cocos2d::extension::CCTableView::setVerticalFillOrder(cocos2d::extension::CCTableViewVerticalFillOrder)> @ imm = #0x521f6
  401152: 9b03         	ldr	r3, [sp, #0xc]
  401154: 681b         	ldr	r3, [r3]
  401156: 33c8         	adds	r3, #0xc8
  401158: 681b         	ldr	r3, [r3]
  40115a: 9903         	ldr	r1, [sp, #0xc]
  40115c: 9a03         	ldr	r2, [sp, #0xc]
  40115e: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  401162: 4608         	mov	r0, r1
  401164: 4611         	mov	r1, r2
  401166: 4798         	blx	r3
  401168: 9b03         	ldr	r3, [sp, #0xc]
  40116a: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  40116e: 4618         	mov	r0, r3
  401170: f052 f914    	bl	0x45339c <cocos2d::extension::CCTableView::reloadData()> @ imm = #0x52228
  401174: f02a ff6a    	bl	0x42c04c <ApplicationInterface::createAdBanner()> @ imm = #0x2aed4
  401178: 9803         	ldr	r0, [sp, #0xc]
  40117a: f000 f8db    	bl	0x401334 <StoreLayer::updateSelectedItem()> @ imm = #0x1b6
  40117e: 9803         	ldr	r0, [sp, #0xc]
  401180: f000 f9be    	bl	0x401500 <StoreLayer::updateButtons()> @ imm = #0x37c
  401184: 2301         	movs	r3, #0x1
  401186: e020         	b	0x4011ca <StoreLayer::init()+0xe1a> @ imm = #0x40
  401188: ab18         	add	r3, sp, #0x60
  40118a: 4618         	mov	r0, r3
  40118c: f3b4 fbc2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b4784
  401190: e7ff         	b	0x401192 <StoreLayer::init()+0xde2> @ imm = #-0x2
  401192: ab06         	add	r3, sp, #0x18
  401194: 4618         	mov	r0, r3
  401196: f389 f931    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x389262
  40119a: f386 ff87    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x386f0e
  40119e: ab06         	add	r3, sp, #0x18
  4011a0: 4618         	mov	r0, r3
  4011a2: f3b4 fbb7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b476e
  4011a6: e7ff         	b	0x4011a8 <StoreLayer::init()+0xdf8> @ imm = #-0x2
  4011a8: ab05         	add	r3, sp, #0x14
  4011aa: 4618         	mov	r0, r3
  4011ac: f389 f926    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38924c
  4011b0: f386 ff7c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x386ef8
  4011b4: ab06         	add	r3, sp, #0x18
  4011b6: 4618         	mov	r0, r3
  4011b8: f3b4 fbac    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b4758
  4011bc: e7ff         	b	0x4011be <StoreLayer::init()+0xe0e> @ imm = #-0x2
  4011be: ab05         	add	r3, sp, #0x14
  4011c0: 4618         	mov	r0, r3
  4011c2: f389 f91b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x389236
  4011c6: f386 ff71    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x386ee2
  4011ca: 4618         	mov	r0, r3
  4011cc: b02d         	add	sp, #0xb4
  4011ce: ecbd 8b02    	vpop	{d8}
  4011d2: bdf0         	pop	{r4, r5, r6, r7, pc}

// ==== StoreLayer::~StoreLayer
//      file offset 0x4011d8 (= ELF address; Ghidra 0x4111d8), 272 bytes, Thumb-2
  4011d8: b500         	push	{lr}
  4011da: b083         	sub	sp, #0xc
  4011dc: 9001         	str	r0, [sp, #0x4]
  4011de: 4b40         	ldr	r3, [pc, #0x100]        @ 0x4012e0 <StoreLayer::~StoreLayer()+0x108>
  4011e0: 447b         	add	r3, pc
  4011e2: 9a01         	ldr	r2, [sp, #0x4]
  4011e4: 493f         	ldr	r1, [pc, #0xfc]         @ 0x4012e4 <StoreLayer::~StoreLayer()+0x10c>
  4011e6: 5859         	ldr	r1, [r3, r1]
  4011e8: 3108         	adds	r1, #0x8
  4011ea: 6011         	str	r1, [r2]
  4011ec: 9a01         	ldr	r2, [sp, #0x4]
  4011ee: 493d         	ldr	r1, [pc, #0xf4]         @ 0x4012e4 <StoreLayer::~StoreLayer()+0x10c>
  4011f0: 5859         	ldr	r1, [r3, r1]
  4011f2: f501 710a    	add.w	r1, r1, #0x228
  4011f6: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  4011fa: 9a01         	ldr	r2, [sp, #0x4]
  4011fc: 4939         	ldr	r1, [pc, #0xe4]         @ 0x4012e4 <StoreLayer::~StoreLayer()+0x10c>
  4011fe: 5859         	ldr	r1, [r3, r1]
  401200: f501 7116    	add.w	r1, r1, #0x258
  401204: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  401208: 9a01         	ldr	r2, [sp, #0x4]
  40120a: 4936         	ldr	r1, [pc, #0xd8]         @ 0x4012e4 <StoreLayer::~StoreLayer()+0x10c>
  40120c: 5859         	ldr	r1, [r3, r1]
  40120e: f501 7119    	add.w	r1, r1, #0x264
  401212: f8c2 10ec    	str.w	r1, [r2, #0xec]
  401216: 9a01         	ldr	r2, [sp, #0x4]
  401218: 4932         	ldr	r1, [pc, #0xc8]         @ 0x4012e4 <StoreLayer::~StoreLayer()+0x10c>
  40121a: 5859         	ldr	r1, [r3, r1]
  40121c: f501 711d    	add.w	r1, r1, #0x274
  401220: f8c2 1108    	str.w	r1, [r2, #0x108]
  401224: 9a01         	ldr	r2, [sp, #0x4]
  401226: 492f         	ldr	r1, [pc, #0xbc]         @ 0x4012e4 <StoreLayer::~StoreLayer()+0x10c>
  401228: 585b         	ldr	r3, [r3, r1]
  40122a: f503 7327    	add.w	r3, r3, #0x29c
  40122e: f8c2 310c    	str.w	r3, [r2, #0x10c]
  401232: 9b01         	ldr	r3, [sp, #0x4]
  401234: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  401238: 4618         	mov	r0, r3
  40123a: f196 fe3d    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x196c7a
  40123e: 9b01         	ldr	r3, [sp, #0x4]
  401240: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  401244: 4618         	mov	r0, r3
  401246: f196 fe37    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x196c6e
  40124a: 9b01         	ldr	r3, [sp, #0x4]
  40124c: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  401250: 4618         	mov	r0, r3
  401252: f196 fe31    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x196c62
  401256: 9b01         	ldr	r3, [sp, #0x4]
  401258: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  40125c: 4618         	mov	r0, r3
  40125e: f196 fe2b    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x196c56
  401262: 9b01         	ldr	r3, [sp, #0x4]
  401264: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  401268: 4618         	mov	r0, r3
  40126a: f196 fe25    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x196c4a
  40126e: 9b01         	ldr	r3, [sp, #0x4]
  401270: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  401274: 4618         	mov	r0, r3
  401276: f196 fe1f    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x196c3e
  40127a: 9b01         	ldr	r3, [sp, #0x4]
  40127c: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  401280: 4618         	mov	r0, r3
  401282: f196 fe19    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x196c32
  401286: 9b01         	ldr	r3, [sp, #0x4]
  401288: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  40128c: 4618         	mov	r0, r3
  40128e: f196 fe13    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x196c26
  401292: 9b01         	ldr	r3, [sp, #0x4]
  401294: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  401298: 4618         	mov	r0, r3
  40129a: f196 fe0d    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x196c1a
  40129e: 9b01         	ldr	r3, [sp, #0x4]
  4012a0: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  4012a4: 4618         	mov	r0, r3
  4012a6: f196 fe07    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x196c0e
  4012aa: 9b01         	ldr	r3, [sp, #0x4]
  4012ac: f503 7386    	add.w	r3, r3, #0x10c
  4012b0: 4618         	mov	r0, r3
  4012b2: f6e9 f875    	bl	0x2ea3a0 <cocos2d::extension::CCTableViewDataSource::~CCTableViewDataSource()> @ imm = #-0x116f16
  4012b6: 9b01         	ldr	r3, [sp, #0x4]
  4012b8: f503 7384    	add.w	r3, r3, #0x108
  4012bc: 4618         	mov	r0, r3
  4012be: f6e9 f91b    	bl	0x2ea4f8 <cocos2d::extension::CCTableViewDelegate::~CCTableViewDelegate()> @ imm = #-0x116dca
  4012c2: 9b01         	ldr	r3, [sp, #0x4]
  4012c4: 4618         	mov	r0, r3
  4012c6: f1ab ff41    	bl	0x5ad14c <cocos2d::CCLayer::~CCLayer()> @ imm = #0x1abe82
  4012ca: 2300         	movs	r3, #0x0
  4012cc: 2b00         	cmp	r3, #0x0
  4012ce: d002         	beq	0x4012d6 <StoreLayer::~StoreLayer()+0xfe> @ imm = #0x4
  4012d0: 9801         	ldr	r0, [sp, #0x4]
  4012d2: f386 fee7    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x386dce
  4012d6: 9b01         	ldr	r3, [sp, #0x4]
  4012d8: 4618         	mov	r0, r3
  4012da: b003         	add	sp, #0xc
  4012dc: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x4012df); words below are literal-pool data ---
  4012e0: 1828         	adds	r0, r5, r0
  4012e2: 0053         	lsls	r3, r2, #0x1
  4012e4: df60         	svc	#0x60
  4012e6: ffff f1a0    	<unknown>

// ==== StoreLayer::~StoreLayer
//      file offset 0x4012e8 (= ELF address; Ghidra 0x4112e8), 8 bytes, Thumb-2
  4012e8: f1a0 00e4    	sub.w	r0, r0, #0xe4
  4012ec: f7ff bf74    	b.w	0x4011d8 <StoreLayer::~StoreLayer()> @ imm = #-0x118

// ==== StoreLayer::~StoreLayer
//      file offset 0x4012f0 (= ELF address; Ghidra 0x4112f0), 8 bytes, Thumb-2
  4012f0: f5a0 7084    	sub.w	r0, r0, #0x108
  4012f4: f7ff bf70    	b.w	0x4011d8 <StoreLayer::~StoreLayer()> @ imm = #-0x120

// ==== StoreLayer::~StoreLayer
//      file offset 0x4012f8 (= ELF address; Ghidra 0x4112f8), 8 bytes, Thumb-2
  4012f8: f5a0 7086    	sub.w	r0, r0, #0x10c
  4012fc: f7ff bf6c    	b.w	0x4011d8 <StoreLayer::~StoreLayer()> @ imm = #-0x128

// ==== StoreLayer::~StoreLayer
//      file offset 0x401300 (= ELF address; Ghidra 0x411300), 28 bytes, Thumb-2
  401300: b500         	push	{lr}
  401302: b083         	sub	sp, #0xc
  401304: 9001         	str	r0, [sp, #0x4]
  401306: 9801         	ldr	r0, [sp, #0x4]
  401308: f7ff ff66    	bl	0x4011d8 <StoreLayer::~StoreLayer()> @ imm = #-0x134
  40130c: 9801         	ldr	r0, [sp, #0x4]
  40130e: f386 fec9    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x386d92
  401312: 9b01         	ldr	r3, [sp, #0x4]
  401314: 4618         	mov	r0, r3
  401316: b003         	add	sp, #0xc
  401318: f85d fb04    	ldr	pc, [sp], #4

// ==== StoreLayer::~StoreLayer
//      file offset 0x40131c (= ELF address; Ghidra 0x41131c), 8 bytes, Thumb-2
  40131c: f1a0 00e4    	sub.w	r0, r0, #0xe4
  401320: f7ff bfee    	b.w	0x401300 <StoreLayer::~StoreLayer()> @ imm = #-0x24

// ==== StoreLayer::~StoreLayer
//      file offset 0x401324 (= ELF address; Ghidra 0x411324), 8 bytes, Thumb-2
  401324: f5a0 7084    	sub.w	r0, r0, #0x108
  401328: f7ff bfea    	b.w	0x401300 <StoreLayer::~StoreLayer()> @ imm = #-0x2c

// ==== StoreLayer::~StoreLayer
//      file offset 0x40132c (= ELF address; Ghidra 0x41132c), 8 bytes, Thumb-2
  40132c: f5a0 7086    	sub.w	r0, r0, #0x10c
  401330: f7ff bfe6    	b.w	0x401300 <StoreLayer::~StoreLayer()> @ imm = #-0x34

// ==== StoreLayer::updateSelectedItem
//      file offset 0x401334 (= ELF address; Ghidra 0x411334), 460 bytes, Thumb-2
  401334: b530         	push	{r4, r5, lr}
  401336: b0a3         	sub	sp, #0x8c
  401338: 9001         	str	r0, [sp, #0x4]
  40133a: 9b01         	ldr	r3, [sp, #0x4]
  40133c: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  401340: 9308         	str	r3, [sp, #0x20]
  401342: f747 ffa1    	bl	0x349288 <ItemLibrary::sharedItemLibrary()> @ imm = #-0xb80be
  401346: ab16         	add	r3, sp, #0x58
  401348: 4618         	mov	r0, r3
  40134a: 9908         	ldr	r1, [sp, #0x20]
  40134c: f749 f97a    	bl	0x34a644 <ItemLibrary::getItemInfoById(int)> @ imm = #-0xb6d0c
  401350: aa0a         	add	r2, sp, #0x28
  401352: ab16         	add	r3, sp, #0x58
  401354: 4610         	mov	r0, r2
  401356: 4619         	mov	r1, r3
  401358: f749 f8ae    	bl	0x34a4b8 <ItemInfo::ItemInfo(ItemInfo&&)> @ imm = #-0xb6ea4
  40135c: ab16         	add	r3, sp, #0x58
  40135e: 4618         	mov	r0, r3
  401360: f747 ffb4    	bl	0x3492cc <ItemInfo::~ItemInfo()> @ imm = #-0xb8098
  401364: aa04         	add	r2, sp, #0x10
  401366: ab0a         	add	r3, sp, #0x28
  401368: 3308         	adds	r3, #0x8
  40136a: 4610         	mov	r0, r2
  40136c: 4619         	mov	r1, r3
  40136e: f3b5 f8bb    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x3b5176
  401372: aa05         	add	r2, sp, #0x14
  401374: ab0a         	add	r3, sp, #0x28
  401376: 3304         	adds	r3, #0x4
  401378: 4610         	mov	r0, r2
  40137a: 4619         	mov	r1, r3
  40137c: f3b5 f8b4    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x3b5168
  401380: aa16         	add	r2, sp, #0x58
  401382: ab0a         	add	r3, sp, #0x28
  401384: 3320         	adds	r3, #0x20
  401386: 4610         	mov	r0, r2
  401388: 4619         	mov	r1, r3
  40138a: f191 ffc5    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x191f8a
  40138e: 9b0d         	ldr	r3, [sp, #0x34]
  401390: 9309         	str	r3, [sp, #0x24]
  401392: 9b01         	ldr	r3, [sp, #0x4]
  401394: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  401398: 681b         	ldr	r3, [r3]
  40139a: f503 7302    	add.w	r3, r3, #0x208
  40139e: 681b         	ldr	r3, [r3]
  4013a0: 9a01         	ldr	r2, [sp, #0x4]
  4013a2: f8d2 113c    	ldr.w	r1, [r2, #0x13c]
  4013a6: aa16         	add	r2, sp, #0x58
  4013a8: 4608         	mov	r0, r1
  4013aa: 4611         	mov	r1, r2
  4013ac: 4798         	blx	r3
  4013ae: 9b01         	ldr	r3, [sp, #0x4]
  4013b0: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  4013b4: 681b         	ldr	r3, [r3]
  4013b6: f503 73fc    	add.w	r3, r3, #0x1f8
  4013ba: 681c         	ldr	r4, [r3]
  4013bc: 9b01         	ldr	r3, [sp, #0x4]
  4013be: f8d3 5140    	ldr.w	r5, [r3, #0x140]
  4013c2: ab04         	add	r3, sp, #0x10
  4013c4: 4618         	mov	r0, r3
  4013c6: f3b3 ff9b    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3b3f36
  4013ca: 4603         	mov	r3, r0
  4013cc: 4628         	mov	r0, r5
  4013ce: 4619         	mov	r1, r3
  4013d0: 47a0         	blx	r4
  4013d2: 9b01         	ldr	r3, [sp, #0x4]
  4013d4: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  4013d8: 681b         	ldr	r3, [r3]
  4013da: f503 730f    	add.w	r3, r3, #0x23c
  4013de: 681c         	ldr	r4, [r3]
  4013e0: 9b01         	ldr	r3, [sp, #0x4]
  4013e2: f8d3 5144    	ldr.w	r5, [r3, #0x144]
  4013e6: ab05         	add	r3, sp, #0x14
  4013e8: 4618         	mov	r0, r3
  4013ea: f3b3 ff89    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3b3f12
  4013ee: 4603         	mov	r3, r0
  4013f0: 4628         	mov	r0, r5
  4013f2: 4619         	mov	r1, r3
  4013f4: 47a0         	blx	r4
  4013f6: f74a fe11    	bl	0x34c01c <ItemPurchase::sharedItemPurchase()> @ imm = #-0xb53de
  4013fa: aa06         	add	r2, sp, #0x18
  4013fc: ab0a         	add	r3, sp, #0x28
  4013fe: 4610         	mov	r0, r2
  401400: 4619         	mov	r1, r3
  401402: f3b5 f871    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x3b50e2
  401406: ab06         	add	r3, sp, #0x18
  401408: 4618         	mov	r0, r3
  40140a: f74a ff43    	bl	0x34c294 <ItemPurchase::isItemPurchased(std::string)> @ imm = #-0xb517a
  40140e: 4603         	mov	r3, r0
  401410: f88d 300f    	strb.w	r3, [sp, #0xf]
  401414: ab06         	add	r3, sp, #0x18
  401416: 4618         	mov	r0, r3
  401418: f3b4 fa7c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b44f8
  40141c: f89d 300f    	ldrb.w	r3, [sp, #0xf]
  401420: 2b00         	cmp	r3, #0x0
  401422: d003         	beq	0x40142c <StoreLayer::updateSelectedItem()+0xf8> @ imm = #0x6
  401424: 4b34         	ldr	r3, [pc, #0xd0]         @ 0x4014f8 <StoreLayer::updateSelectedItem()+0x1c4>
  401426: 447b         	add	r3, pc
  401428: 461c         	mov	r4, r3
  40142a: e00b         	b	0x401444 <StoreLayer::updateSelectedItem()+0x110> @ imm = #0x16
  40142c: 4b33         	ldr	r3, [pc, #0xcc]         @ 0x4014fc <StoreLayer::updateSelectedItem()+0x1c8>
  40142e: 447b         	add	r3, pc
  401430: 4618         	mov	r0, r3
  401432: 9909         	ldr	r1, [sp, #0x24]
  401434: f198 fb6c    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1986d8
  401438: 4603         	mov	r3, r0
  40143a: 4618         	mov	r0, r3
  40143c: f198 fa74    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1984e8
  401440: 4603         	mov	r3, r0
  401442: 461c         	mov	r4, r3
  401444: ab06         	add	r3, sp, #0x18
  401446: 4618         	mov	r0, r3
  401448: f388 ffd4    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x388fa8
  40144c: aa07         	add	r2, sp, #0x1c
  40144e: ab06         	add	r3, sp, #0x18
  401450: 4610         	mov	r0, r2
  401452: 4621         	mov	r1, r4
  401454: 461a         	mov	r2, r3
  401456: f3b5 fb03    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3b5606
  40145a: ab06         	add	r3, sp, #0x18
  40145c: 4618         	mov	r0, r3
  40145e: f388 ffcd    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x388f9a
  401462: 9b01         	ldr	r3, [sp, #0x4]
  401464: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  401468: 681b         	ldr	r3, [r3]
  40146a: f503 73fc    	add.w	r3, r3, #0x1f8
  40146e: 681c         	ldr	r4, [r3]
  401470: 9b01         	ldr	r3, [sp, #0x4]
  401472: f8d3 5130    	ldr.w	r5, [r3, #0x130]
  401476: ab07         	add	r3, sp, #0x1c
  401478: 4618         	mov	r0, r3
  40147a: f3b3 ff41    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3b3e82
  40147e: 4603         	mov	r3, r0
  401480: 4628         	mov	r0, r5
  401482: 4619         	mov	r1, r3
  401484: 47a0         	blx	r4
  401486: ab07         	add	r3, sp, #0x1c
  401488: 4618         	mov	r0, r3
  40148a: f3b4 fa43    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b4486
  40148e: ab05         	add	r3, sp, #0x14
  401490: 4618         	mov	r0, r3
  401492: f3b4 fa3f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b447e
  401496: ab04         	add	r3, sp, #0x10
  401498: 4618         	mov	r0, r3
  40149a: f3b4 fa3b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b4476
  40149e: ab0a         	add	r3, sp, #0x28
  4014a0: 4618         	mov	r0, r3
  4014a2: f747 ff13    	bl	0x3492cc <ItemInfo::~ItemInfo()> @ imm = #-0xb81da
  4014a6: e024         	b	0x4014f2 <StoreLayer::updateSelectedItem()+0x1be> @ imm = #0x48
  4014a8: ab16         	add	r3, sp, #0x58
  4014aa: 4618         	mov	r0, r3
  4014ac: f747 ff0e    	bl	0x3492cc <ItemInfo::~ItemInfo()> @ imm = #-0xb81e4
  4014b0: f386 fdfc    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x386bf8
  4014b4: ab06         	add	r3, sp, #0x18
  4014b6: 4618         	mov	r0, r3
  4014b8: f3b4 fa2c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b4458
  4014bc: e009         	b	0x4014d2 <StoreLayer::updateSelectedItem()+0x19e> @ imm = #0x12
  4014be: ab06         	add	r3, sp, #0x18
  4014c0: 4618         	mov	r0, r3
  4014c2: f388 ff9b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x388f36
  4014c6: e004         	b	0x4014d2 <StoreLayer::updateSelectedItem()+0x19e> @ imm = #0x8
  4014c8: ab07         	add	r3, sp, #0x1c
  4014ca: 4618         	mov	r0, r3
  4014cc: f3b4 fa22    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b4444
  4014d0: e7ff         	b	0x4014d2 <StoreLayer::updateSelectedItem()+0x19e> @ imm = #-0x2
  4014d2: ab05         	add	r3, sp, #0x14
  4014d4: 4618         	mov	r0, r3
  4014d6: f3b4 fa1d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b443a
  4014da: e7ff         	b	0x4014dc <StoreLayer::updateSelectedItem()+0x1a8> @ imm = #-0x2
  4014dc: ab04         	add	r3, sp, #0x10
  4014de: 4618         	mov	r0, r3
  4014e0: f3b4 fa18    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b4430
  4014e4: e7ff         	b	0x4014e6 <StoreLayer::updateSelectedItem()+0x1b2> @ imm = #-0x2
  4014e6: ab0a         	add	r3, sp, #0x28
  4014e8: 4618         	mov	r0, r3
  4014ea: f747 feef    	bl	0x3492cc <ItemInfo::~ItemInfo()> @ imm = #-0xb8222
  4014ee: f386 fddd    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x386bba
  4014f2: b023         	add	sp, #0x8c
  4014f4: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x4014f5); words below are literal-pool data ---
  4014f6: bf00         	nop
  4014f8: 8836         	ldrh	r6, [r6]
  4014fa: 003d         	movs	r5, r7
  4014fc: 883a         	ldrh	r2, [r7]
  4014fe: 003d         	movs	r5, r7

// ==== StoreLayer::updateButtons
//      file offset 0x401500 (= ELF address; Ghidra 0x411500), 652 bytes, Thumb-2
  401500: b530         	push	{r4, r5, lr}
  401502: b09f         	sub	sp, #0x7c
  401504: 9001         	str	r0, [sp, #0x4]
  401506: f023 fdd7    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #0x23bae
  40150a: 4603         	mov	r3, r0
  40150c: 4618         	mov	r0, r3
  40150e: f023 ff7b    	bl	0x425408 <LeaderBoardBridge::calcPlayerPoints()> @ imm = #0x23ef6
  401512: 4603         	mov	r3, r0
  401514: 9303         	str	r3, [sp, #0xc]
  401516: f747 feb7    	bl	0x349288 <ItemLibrary::sharedItemLibrary()> @ imm = #-0xb8292
  40151a: 9b01         	ldr	r3, [sp, #0x4]
  40151c: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  401520: aa12         	add	r2, sp, #0x48
  401522: 4610         	mov	r0, r2
  401524: 4619         	mov	r1, r3
  401526: f749 f88d    	bl	0x34a644 <ItemLibrary::getItemInfoById(int)> @ imm = #-0xb6ee6
  40152a: aa06         	add	r2, sp, #0x18
  40152c: ab12         	add	r3, sp, #0x48
  40152e: 4610         	mov	r0, r2
  401530: 4619         	mov	r1, r3
  401532: f748 ffc1    	bl	0x34a4b8 <ItemInfo::ItemInfo(ItemInfo&&)> @ imm = #-0xb707e
  401536: ab12         	add	r3, sp, #0x48
  401538: 4618         	mov	r0, r3
  40153a: f747 fec7    	bl	0x3492cc <ItemInfo::~ItemInfo()> @ imm = #-0xb8272
  40153e: f74a fd6d    	bl	0x34c01c <ItemPurchase::sharedItemPurchase()> @ imm = #-0xb5526
  401542: 4603         	mov	r3, r0
  401544: 685b         	ldr	r3, [r3, #0x4]
  401546: 9304         	str	r3, [sp, #0x10]
  401548: f747 fe9e    	bl	0x349288 <ItemLibrary::sharedItemLibrary()> @ imm = #-0xb82c4
  40154c: 4603         	mov	r3, r0
  40154e: 4618         	mov	r0, r3
  401550: 9904         	ldr	r1, [sp, #0x10]
  401552: f748 ff3b    	bl	0x34a3cc <ItemLibrary::getTotalPurchaseAmount(cocos2d::CCArray*)> @ imm = #-0xb718a
  401556: 4603         	mov	r3, r0
  401558: 9305         	str	r3, [sp, #0x14]
  40155a: 9b01         	ldr	r3, [sp, #0x4]
  40155c: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  401560: 681b         	ldr	r3, [r3]
  401562: f503 73fc    	add.w	r3, r3, #0x1f8
  401566: 681c         	ldr	r4, [r3]
  401568: 9b01         	ldr	r3, [sp, #0x4]
  40156a: f8d3 511c    	ldr.w	r5, [r3, #0x11c]
  40156e: 9a03         	ldr	r2, [sp, #0xc]
  401570: 9b05         	ldr	r3, [sp, #0x14]
  401572: 1ad3         	subs	r3, r2, r3
  401574: ea23 73e3    	bic.w	r3, r3, r3, asr #31
  401578: 4a80         	ldr	r2, [pc, #0x200]        @ 0x40177c <StoreLayer::updateButtons()+0x27c>
  40157a: 447a         	add	r2, pc
  40157c: 4610         	mov	r0, r2
  40157e: 4619         	mov	r1, r3
  401580: f198 fac6    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x19858c
  401584: 4603         	mov	r3, r0
  401586: 4618         	mov	r0, r3
  401588: f198 f9ce    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x19839c
  40158c: 4603         	mov	r3, r0
  40158e: 4628         	mov	r0, r5
  401590: 4619         	mov	r1, r3
  401592: 47a0         	blx	r4
  401594: 9a09         	ldr	r2, [sp, #0x24]
  401596: 9903         	ldr	r1, [sp, #0xc]
  401598: 9b05         	ldr	r3, [sp, #0x14]
  40159a: 1acb         	subs	r3, r1, r3
  40159c: ea23 73e3    	bic.w	r3, r3, r3, asr #31
  4015a0: 429a         	cmp	r2, r3
  4015a2: bfcc         	ite	gt
  4015a4: 2300         	movgt	r3, #0x0
  4015a6: 2301         	movle	r3, #0x1
  4015a8: f88d 300a    	strb.w	r3, [sp, #0xa]
  4015ac: f74a fd36    	bl	0x34c01c <ItemPurchase::sharedItemPurchase()> @ imm = #-0xb5594
  4015b0: aa12         	add	r2, sp, #0x48
  4015b2: ab06         	add	r3, sp, #0x18
  4015b4: 4610         	mov	r0, r2
  4015b6: 4619         	mov	r1, r3
  4015b8: f3b4 ff96    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x3b4f2c
  4015bc: ab12         	add	r3, sp, #0x48
  4015be: 4618         	mov	r0, r3
  4015c0: f74a fe68    	bl	0x34c294 <ItemPurchase::isItemPurchased(std::string)> @ imm = #-0xb5330
  4015c4: 4603         	mov	r3, r0
  4015c6: f88d 300b    	strb.w	r3, [sp, #0xb]
  4015ca: ab12         	add	r3, sp, #0x48
  4015cc: 4618         	mov	r0, r3
  4015ce: f3b4 f9a1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b4342
  4015d2: f89d 300a    	ldrb.w	r3, [sp, #0xa]
  4015d6: f083 0301    	eor	r3, r3, #0x1
  4015da: b2db         	uxtb	r3, r3
  4015dc: 2b00         	cmp	r3, #0x0
  4015de: d050         	beq	0x401682 <StoreLayer::updateButtons()+0x182> @ imm = #0xa0
  4015e0: f89d 300b    	ldrb.w	r3, [sp, #0xb]
  4015e4: f083 0301    	eor	r3, r3, #0x1
  4015e8: b2db         	uxtb	r3, r3
  4015ea: 2b00         	cmp	r3, #0x0
  4015ec: d049         	beq	0x401682 <StoreLayer::updateButtons()+0x182> @ imm = #0x92
  4015ee: 9b01         	ldr	r3, [sp, #0x4]
  4015f0: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  4015f4: 681b         	ldr	r3, [r3]
  4015f6: f503 73fc    	add.w	r3, r3, #0x1f8
  4015fa: 681b         	ldr	r3, [r3]
  4015fc: 9a01         	ldr	r2, [sp, #0x4]
  4015fe: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  401602: 4610         	mov	r0, r2
  401604: 4a5e         	ldr	r2, [pc, #0x178]        @ 0x401780 <StoreLayer::updateButtons()+0x280>
  401606: 447a         	add	r2, pc
  401608: 4611         	mov	r1, r2
  40160a: 4798         	blx	r3
  40160c: 9b01         	ldr	r3, [sp, #0x4]
  40160e: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  401612: 681b         	ldr	r3, [r3]
  401614: f503 73de    	add.w	r3, r3, #0x1bc
  401618: 681c         	ldr	r4, [r3]
  40161a: 9b01         	ldr	r3, [sp, #0x4]
  40161c: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  401620: 461d         	mov	r5, r3
  401622: 20ff         	movs	r0, #0xff
  401624: 2100         	movs	r1, #0x0
  401626: 2200         	movs	r2, #0x0
  401628: f7fd ff18    	bl	0x3ff45c <non-virtual thunk to StageLayer::ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*)+0x138> @ imm = #-0x21d0
  40162c: 4603         	mov	r3, r0
  40162e: 461a         	mov	r2, r3
  401630: f88d 2048    	strb.w	r2, [sp, #0x48]
  401634: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  401638: f88d 2049    	strb.w	r2, [sp, #0x49]
  40163c: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  401640: f88d 304a    	strb.w	r3, [sp, #0x4a]
  401644: ab12         	add	r3, sp, #0x48
  401646: 4628         	mov	r0, r5
  401648: 4619         	mov	r1, r3
  40164a: 47a0         	blx	r4
  40164c: 9b01         	ldr	r3, [sp, #0x4]
  40164e: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  401652: 681b         	ldr	r3, [r3]
  401654: 337c         	adds	r3, #0x7c
  401656: 681c         	ldr	r4, [r3]
  401658: 9b01         	ldr	r3, [sp, #0x4]
  40165a: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  40165e: 461d         	mov	r5, r3
  401660: ab12         	add	r3, sp, #0x48
  401662: 4618         	mov	r0, r3
  401664: f64c 41cd    	movw	r1, #0xcccd
  401668: f6c3 714c    	movt	r1, #0x3f4c
  40166c: f64c 42cd    	movw	r2, #0xcccd
  401670: f6c3 62cc    	movt	r2, #0x3ecc
  401674: f191 fb3c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x191678
  401678: ab12         	add	r3, sp, #0x48
  40167a: 4628         	mov	r0, r5
  40167c: 4619         	mov	r1, r3
  40167e: 47a0         	blx	r4
  401680: e04b         	b	0x40171a <StoreLayer::updateButtons()+0x21a> @ imm = #0x96
  401682: 9b01         	ldr	r3, [sp, #0x4]
  401684: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  401688: 681b         	ldr	r3, [r3]
  40168a: f503 73de    	add.w	r3, r3, #0x1bc
  40168e: 681c         	ldr	r4, [r3]
  401690: 9b01         	ldr	r3, [sp, #0x4]
  401692: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  401696: 461d         	mov	r5, r3
  401698: 20ff         	movs	r0, #0xff
  40169a: 21ff         	movs	r1, #0xff
  40169c: 22ff         	movs	r2, #0xff
  40169e: f7fd fedd    	bl	0x3ff45c <non-virtual thunk to StageLayer::ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*)+0x138> @ imm = #-0x2246
  4016a2: 4603         	mov	r3, r0
  4016a4: 461a         	mov	r2, r3
  4016a6: f88d 2048    	strb.w	r2, [sp, #0x48]
  4016aa: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  4016ae: f88d 2049    	strb.w	r2, [sp, #0x49]
  4016b2: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  4016b6: f88d 304a    	strb.w	r3, [sp, #0x4a]
  4016ba: ab12         	add	r3, sp, #0x48
  4016bc: 4628         	mov	r0, r5
  4016be: 4619         	mov	r1, r3
  4016c0: 47a0         	blx	r4
  4016c2: 9b01         	ldr	r3, [sp, #0x4]
  4016c4: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  4016c8: 681b         	ldr	r3, [r3]
  4016ca: f503 73fc    	add.w	r3, r3, #0x1f8
  4016ce: 681a         	ldr	r2, [r3]
  4016d0: 9b01         	ldr	r3, [sp, #0x4]
  4016d2: f8d3 1120    	ldr.w	r1, [r3, #0x120]
  4016d6: f89d 300b    	ldrb.w	r3, [sp, #0xb]
  4016da: 2b00         	cmp	r3, #0x0
  4016dc: d002         	beq	0x4016e4 <StoreLayer::updateButtons()+0x1e4> @ imm = #0x4
  4016de: 4b29         	ldr	r3, [pc, #0xa4]         @ 0x401784 <StoreLayer::updateButtons()+0x284>
  4016e0: 447b         	add	r3, pc
  4016e2: e001         	b	0x4016e8 <StoreLayer::updateButtons()+0x1e8> @ imm = #0x2
  4016e4: 4b28         	ldr	r3, [pc, #0xa0]         @ 0x401788 <StoreLayer::updateButtons()+0x288>
  4016e6: 447b         	add	r3, pc
  4016e8: 4608         	mov	r0, r1
  4016ea: 4619         	mov	r1, r3
  4016ec: 4790         	blx	r2
  4016ee: 9b01         	ldr	r3, [sp, #0x4]
  4016f0: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  4016f4: 681b         	ldr	r3, [r3]
  4016f6: 337c         	adds	r3, #0x7c
  4016f8: 681c         	ldr	r4, [r3]
  4016fa: 9b01         	ldr	r3, [sp, #0x4]
  4016fc: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  401700: 461d         	mov	r5, r3
  401702: ab12         	add	r3, sp, #0x48
  401704: 4618         	mov	r0, r3
  401706: f04f 517c    	mov.w	r1, #0x3f000000
  40170a: f04f 527c    	mov.w	r2, #0x3f000000
  40170e: f191 faef    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1915de
  401712: ab12         	add	r3, sp, #0x48
  401714: 4628         	mov	r0, r5
  401716: 4619         	mov	r1, r3
  401718: 47a0         	blx	r4
  40171a: 9b01         	ldr	r3, [sp, #0x4]
  40171c: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  401720: 681b         	ldr	r3, [r3]
  401722: 3390         	adds	r3, #0x90
  401724: 681a         	ldr	r2, [r3]
  401726: 9b01         	ldr	r3, [sp, #0x4]
  401728: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  40172c: 4619         	mov	r1, r3
  40172e: f89d 300a    	ldrb.w	r3, [sp, #0xa]
  401732: 2b00         	cmp	r3, #0x0
  401734: d103         	bne	0x40173e <StoreLayer::updateButtons()+0x23e> @ imm = #0x6
  401736: f89d 300b    	ldrb.w	r3, [sp, #0xb]
  40173a: 2b00         	cmp	r3, #0x0
  40173c: d001         	beq	0x401742 <StoreLayer::updateButtons()+0x242> @ imm = #0x2
  40173e: 2301         	movs	r3, #0x1
  401740: e000         	b	0x401744 <StoreLayer::updateButtons()+0x244> @ imm = #0x0
  401742: 2300         	movs	r3, #0x0
  401744: 4608         	mov	r0, r1
  401746: 4619         	mov	r1, r3
  401748: 4790         	blx	r2
  40174a: ab06         	add	r3, sp, #0x18
  40174c: 4618         	mov	r0, r3
  40174e: f747 fdbd    	bl	0x3492cc <ItemInfo::~ItemInfo()> @ imm = #-0xb8486
  401752: e010         	b	0x401776 <StoreLayer::updateButtons()+0x276> @ imm = #0x20
  401754: ab12         	add	r3, sp, #0x48
  401756: 4618         	mov	r0, r3
  401758: f747 fdb8    	bl	0x3492cc <ItemInfo::~ItemInfo()> @ imm = #-0xb8490
  40175c: f386 fca6    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x38694c
  401760: ab12         	add	r3, sp, #0x48
  401762: 4618         	mov	r0, r3
  401764: f3b4 f8d6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b41ac
  401768: e7ff         	b	0x40176a <StoreLayer::updateButtons()+0x26a> @ imm = #-0x2
  40176a: ab06         	add	r3, sp, #0x18
  40176c: 4618         	mov	r0, r3
  40176e: f747 fdad    	bl	0x3492cc <ItemInfo::~ItemInfo()> @ imm = #-0xb84a6
  401772: f386 fc9b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x386936
  401776: b01f         	add	sp, #0x7c
  401778: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x401779); words below are literal-pool data ---
  40177a: bf00         	nop
  40177c: 8666         	strh	r6, [r4, #0x32]
  40177e: 003d         	movs	r5, r7
  401780: 866e         	strh	r6, [r5, #0x32]
  401782: 003d         	movs	r5, r7
  401784: 85a8         	strh	r0, [r5, #0x2c]
  401786: 003d         	movs	r5, r7
  401788: 8526         	strh	r6, [r4, #0x28]
  40178a: 003d         	movs	r5, r7

// ==== StoreLayer::tableCellTouched
//      file offset 0x40178c (= ELF address; Ghidra 0x41178c), 68 bytes, Thumb-2
  40178c: b510         	push	{r4, lr}
  40178e: b084         	sub	sp, #0x10
  401790: 9003         	str	r0, [sp, #0xc]
  401792: 9102         	str	r1, [sp, #0x8]
  401794: 9201         	str	r2, [sp, #0x4]
  401796: 4c0c         	ldr	r4, [pc, #0x30]         @ 0x4017c8 <StoreLayer::tableCellTouched(cocos2d::extension::CCTableView*, cocos2d::extension::CCTableViewCell*)+0x3c>
  401798: 447c         	add	r4, pc
  40179a: 9801         	ldr	r0, [sp, #0x4]
  40179c: f054 fc26    	bl	0x455fec <cocos2d::extension::CCTableViewCell::getIdx()> @ imm = #0x5484c
  4017a0: 4603         	mov	r3, r0
  4017a2: 461a         	mov	r2, r3
  4017a4: 9b03         	ldr	r3, [sp, #0xc]
  4017a6: f8c3 2114    	str.w	r2, [r3, #0x114]
  4017aa: 4b08         	ldr	r3, [pc, #0x20]         @ 0x4017cc <StoreLayer::tableCellTouched(cocos2d::extension::CCTableView*, cocos2d::extension::CCTableViewCell*)+0x40>
  4017ac: 58e3         	ldr	r3, [r4, r3]
  4017ae: 681b         	ldr	r3, [r3]
  4017b0: 4618         	mov	r0, r3
  4017b2: 210e         	movs	r1, #0xe
  4017b4: f7f6 fb04    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #-0x99f8
  4017b8: 9803         	ldr	r0, [sp, #0xc]
  4017ba: f7ff fdbb    	bl	0x401334 <StoreLayer::updateSelectedItem()> @ imm = #-0x48a
  4017be: 9803         	ldr	r0, [sp, #0xc]
  4017c0: f7ff fe9e    	bl	0x401500 <StoreLayer::updateButtons()> @ imm = #-0x2c4
  4017c4: b004         	add	sp, #0x10
  4017c6: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x4017c7); words below are literal-pool data ---
  4017c8: 1270         	asrs	r0, r6, #0x9
  4017ca: 0053         	lsls	r3, r2, #0x1
  4017cc: d730         	bvc	0x401830 <StoreLayer::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x24> @ imm = #0x60
  4017ce: ffff f5a0    	<unknown>

// ==== StoreLayer::tableCellTouched
//      file offset 0x4017d0 (= ELF address; Ghidra 0x4117d0), 8 bytes, Thumb-2
  4017d0: f5a0 7084    	sub.w	r0, r0, #0x108
  4017d4: f7ff bfda    	b.w	0x40178c <StoreLayer::tableCellTouched(cocos2d::extension::CCTableView*, cocos2d::extension::CCTableViewCell*)> @ imm = #-0x4c

// ==== StoreLayer::tableCellSizeForIndex
//      file offset 0x4017d8 (= ELF address; Ghidra 0x4117d8), 42 bytes, Thumb-2
  4017d8: b500         	push	{lr}
  4017da: b085         	sub	sp, #0x14
  4017dc: 9003         	str	r0, [sp, #0xc]
  4017de: 9102         	str	r1, [sp, #0x8]
  4017e0: 9201         	str	r2, [sp, #0x4]
  4017e2: 9300         	str	r3, [sp]
  4017e4: 9803         	ldr	r0, [sp, #0xc]
  4017e6: f04f 0100    	mov.w	r1, #0x0
  4017ea: f2c4 215c    	movt	r1, #0x425c
  4017ee: f04f 0200    	mov.w	r2, #0x0
  4017f2: f2c4 225c    	movt	r2, #0x425c
  4017f6: f191 fc4d    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x19189a
  4017fa: 9803         	ldr	r0, [sp, #0xc]
  4017fc: b005         	add	sp, #0x14
  4017fe: f85d fb04    	ldr	pc, [sp], #4

// ==== StoreLayer::tableCellSizeForIndex
//      file offset 0x401804 (= ELF address; Ghidra 0x411804), 8 bytes, Thumb-2
  401804: f5a1 7186    	sub.w	r1, r1, #0x10c
  401808: f7ff bfe6    	b.w	0x4017d8 <StoreLayer::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int)> @ imm = #-0x34

// ==== StoreLayer::tableCellAtIndex
//      file offset 0x40180c (= ELF address; Ghidra 0x41180c), 312 bytes, Thumb-2
  40180c: b510         	push	{r4, lr}
  40180e: b090         	sub	sp, #0x40
  401810: 9003         	str	r0, [sp, #0xc]
  401812: 9102         	str	r1, [sp, #0x8]
  401814: 9201         	str	r2, [sp, #0x4]
  401816: 9802         	ldr	r0, [sp, #0x8]
  401818: f051 fffe    	bl	0x453818 <cocos2d::extension::CCTableView::dequeueCell()> @ imm = #0x51ffc
  40181c: 4603         	mov	r3, r0
  40181e: 9305         	str	r3, [sp, #0x14]
  401820: 9b05         	ldr	r3, [sp, #0x14]
  401822: 2b00         	cmp	r3, #0x0
  401824: d006         	beq	0x401834 <StoreLayer::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x28> @ imm = #0xc
  401826: 9805         	ldr	r0, [sp, #0x14]
  401828: f054 fbe0    	bl	0x455fec <cocos2d::extension::CCTableViewCell::getIdx()> @ imm = #0x547c0
  40182c: 4602         	mov	r2, r0
  40182e: 9b01         	ldr	r3, [sp, #0x4]
  401830: 429a         	cmp	r2, r3
  401832: d001         	beq	0x401838 <StoreLayer::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x2c> @ imm = #0x2
  401834: 2301         	movs	r3, #0x1
  401836: e000         	b	0x40183a <StoreLayer::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x2e> @ imm = #0x0
  401838: 2300         	movs	r3, #0x0
  40183a: 2b00         	cmp	r3, #0x0
  40183c: d074         	beq	0x401928 <StoreLayer::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x11c> @ imm = #0xe8
  40183e: 20ec         	movs	r0, #0xec
  401840: f386 f890    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x386120
  401844: 4603         	mov	r3, r0
  401846: 461c         	mov	r4, r3
  401848: 4620         	mov	r0, r4
  40184a: f6f7 fdb7    	bl	0x2f93bc <cocos2d::extension::CCTableViewCell::CCTableViewCell()> @ imm = #-0x108492
  40184e: 9405         	str	r4, [sp, #0x14]
  401850: 9b05         	ldr	r3, [sp, #0x14]
  401852: 4618         	mov	r0, r3
  401854: f196 fb52    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x1966a4
  401858: 9b03         	ldr	r3, [sp, #0xc]
  40185a: 681b         	ldr	r3, [r3]
  40185c: f503 7300    	add.w	r3, r3, #0x200
  401860: 681c         	ldr	r4, [r3]
  401862: 9b03         	ldr	r3, [sp, #0xc]
  401864: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  401868: aa08         	add	r2, sp, #0x20
  40186a: 4610         	mov	r0, r2
  40186c: 9903         	ldr	r1, [sp, #0xc]
  40186e: 461a         	mov	r2, r3
  401870: 9b01         	ldr	r3, [sp, #0x4]
  401872: 47a0         	blx	r4
  401874: ed9d 7a08    	vldr	s14, [sp, #32]
  401878: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  40187c: eec7 6a27    	vdiv.f32	s13, s14, s15
  401880: ed9d 7a09    	vldr	s14, [sp, #36]
  401884: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  401888: eec7 7a27    	vdiv.f32	s15, s14, s15
  40188c: ab0a         	add	r3, sp, #0x28
  40188e: 4618         	mov	r0, r3
  401890: ee16 1a90    	vmov	r1, s13
  401894: ee17 2a90    	vmov	r2, s15
  401898: f191 fa2a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x191454
  40189c: 4b27         	ldr	r3, [pc, #0x9c]         @ 0x40193c <StoreLayer::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x130>
  40189e: 447b         	add	r3, pc
  4018a0: 4618         	mov	r0, r3
  4018a2: f1d6 fd2f    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x1d6a5e
  4018a6: 4603         	mov	r3, r0
  4018a8: 9306         	str	r3, [sp, #0x18]
  4018aa: 9b06         	ldr	r3, [sp, #0x18]
  4018ac: 681b         	ldr	r3, [r3]
  4018ae: 334c         	adds	r3, #0x4c
  4018b0: 681b         	ldr	r3, [r3]
  4018b2: aa0a         	add	r2, sp, #0x28
  4018b4: 9806         	ldr	r0, [sp, #0x18]
  4018b6: 4611         	mov	r1, r2
  4018b8: 4798         	blx	r3
  4018ba: 9b05         	ldr	r3, [sp, #0x14]
  4018bc: 681b         	ldr	r3, [r3]
  4018be: 33c8         	adds	r3, #0xc8
  4018c0: 681b         	ldr	r3, [r3]
  4018c2: 9a05         	ldr	r2, [sp, #0x14]
  4018c4: 4610         	mov	r0, r2
  4018c6: 9906         	ldr	r1, [sp, #0x18]
  4018c8: 4798         	blx	r3
  4018ca: 9b06         	ldr	r3, [sp, #0x18]
  4018cc: 681b         	ldr	r3, [r3]
  4018ce: 3340         	adds	r3, #0x40
  4018d0: 681b         	ldr	r3, [r3]
  4018d2: 9806         	ldr	r0, [sp, #0x18]
  4018d4: f645 4129    	movw	r1, #0x5c29
  4018d8: f6c3 710f    	movt	r1, #0x3f0f
  4018dc: 4798         	blx	r3
  4018de: f747 fcd3    	bl	0x349288 <ItemLibrary::sharedItemLibrary()> @ imm = #-0xb865a
  4018e2: 4602         	mov	r2, r0
  4018e4: 9b01         	ldr	r3, [sp, #0x4]
  4018e6: 011b         	lsls	r3, r3, #0x4
  4018e8: 4413         	add	r3, r2
  4018ea: 3304         	adds	r3, #0x4
  4018ec: aa0c         	add	r2, sp, #0x30
  4018ee: 4610         	mov	r0, r2
  4018f0: 4619         	mov	r1, r3
  4018f2: f191 fd11    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x191a22
  4018f6: ab0c         	add	r3, sp, #0x30
  4018f8: 4a11         	ldr	r2, [pc, #0x44]         @ 0x401940 <StoreLayer::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x134>
  4018fa: 447a         	add	r2, pc
  4018fc: 4610         	mov	r0, r2
  4018fe: 4619         	mov	r1, r3
  401900: f1d6 fc7e    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x1d68fc
  401904: 4603         	mov	r3, r0
  401906: 9307         	str	r3, [sp, #0x1c]
  401908: 9b07         	ldr	r3, [sp, #0x1c]
  40190a: 681b         	ldr	r3, [r3]
  40190c: 334c         	adds	r3, #0x4c
  40190e: 681b         	ldr	r3, [r3]
  401910: aa0a         	add	r2, sp, #0x28
  401912: 9807         	ldr	r0, [sp, #0x1c]
  401914: 4611         	mov	r1, r2
  401916: 4798         	blx	r3
  401918: 9b05         	ldr	r3, [sp, #0x14]
  40191a: 681b         	ldr	r3, [r3]
  40191c: 33c8         	adds	r3, #0xc8
  40191e: 681b         	ldr	r3, [r3]
  401920: 9a05         	ldr	r2, [sp, #0x14]
  401922: 4610         	mov	r0, r2
  401924: 9907         	ldr	r1, [sp, #0x1c]
  401926: 4798         	blx	r3
  401928: 9b05         	ldr	r3, [sp, #0x14]
  40192a: e004         	b	0x401936 <StoreLayer::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x12a> @ imm = #0x8
  40192c: 4620         	mov	r0, r4
  40192e: f386 fbb9    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x386772
  401932: f386 fbbb    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x386776
  401936: 4618         	mov	r0, r3
  401938: b010         	add	sp, #0x40
  40193a: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x40193b); words below are literal-pool data ---
  40193c: 83f2         	strh	r2, [r6, #0x1e]
  40193e: 003d         	movs	r5, r7
  401940: 8336         	strh	r6, [r6, #0x18]
  401942: 003d         	movs	r5, r7

// ==== StoreLayer::tableCellAtIndex
//      file offset 0x401944 (= ELF address; Ghidra 0x411944), 8 bytes, Thumb-2
  401944: f5a0 7086    	sub.w	r0, r0, #0x10c
  401948: f7ff bf60    	b.w	0x40180c <StoreLayer::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)> @ imm = #-0x140

// ==== StoreLayer::numberOfCellsInTableView
//      file offset 0x40194c (= ELF address; Ghidra 0x41194c), 36 bytes, Thumb-2
  40194c: b500         	push	{lr}
  40194e: b085         	sub	sp, #0x14
  401950: 9001         	str	r0, [sp, #0x4]
  401952: 9100         	str	r1, [sp]
  401954: f747 fc98    	bl	0x349288 <ItemLibrary::sharedItemLibrary()> @ imm = #-0xb86d0
  401958: 4603         	mov	r3, r0
  40195a: 33e4         	adds	r3, #0xe4
  40195c: 4618         	mov	r0, r3
  40195e: f748 ff27    	bl	0x34a7b0 <std::vector<ItemInfo, std::allocator<ItemInfo>>::size() const> @ imm = #-0xb71b2
  401962: 4603         	mov	r3, r0
  401964: 9303         	str	r3, [sp, #0xc]
  401966: 9b03         	ldr	r3, [sp, #0xc]
  401968: 4618         	mov	r0, r3
  40196a: b005         	add	sp, #0x14
  40196c: f85d fb04    	ldr	pc, [sp], #4

// ==== StoreLayer::numberOfCellsInTableView
//      file offset 0x401970 (= ELF address; Ghidra 0x411970), 8 bytes, Thumb-2
  401970: f5a0 7086    	sub.w	r0, r0, #0x10c
  401974: f7ff bfea    	b.w	0x40194c <StoreLayer::numberOfCellsInTableView(cocos2d::extension::CCTableView*)> @ imm = #-0x2c

// ==== StoreLayer::onBuy
//      file offset 0x401978 (= ELF address; Ghidra 0x411978), 596 bytes, Thumb-2
  401978: b530         	push	{r4, r5, lr}
  40197a: b0a5         	sub	sp, #0x94
  40197c: 9003         	str	r0, [sp, #0xc]
  40197e: 9102         	str	r1, [sp, #0x8]
  401980: 4c8c         	ldr	r4, [pc, #0x230]        @ 0x401bb4 <StoreLayer::onBuy(cocos2d::CCObject*)+0x23c>
  401982: 447c         	add	r4, pc
  401984: f747 fc80    	bl	0x349288 <ItemLibrary::sharedItemLibrary()> @ imm = #-0xb8700
  401988: 9b03         	ldr	r3, [sp, #0xc]
  40198a: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  40198e: aa18         	add	r2, sp, #0x60
  401990: 4610         	mov	r0, r2
  401992: 4619         	mov	r1, r3
  401994: f748 fe56    	bl	0x34a644 <ItemLibrary::getItemInfoById(int)> @ imm = #-0xb7354
  401998: aa0c         	add	r2, sp, #0x30
  40199a: ab18         	add	r3, sp, #0x60
  40199c: 4610         	mov	r0, r2
  40199e: 4619         	mov	r1, r3
  4019a0: f748 fd8a    	bl	0x34a4b8 <ItemInfo::ItemInfo(ItemInfo&&)> @ imm = #-0xb74ec
  4019a4: ab18         	add	r3, sp, #0x60
  4019a6: 4618         	mov	r0, r3
  4019a8: f747 fc90    	bl	0x3492cc <ItemInfo::~ItemInfo()> @ imm = #-0xb86e0
  4019ac: f74a fb36    	bl	0x34c01c <ItemPurchase::sharedItemPurchase()> @ imm = #-0xb5994
  4019b0: aa06         	add	r2, sp, #0x18
  4019b2: ab0c         	add	r3, sp, #0x30
  4019b4: 4610         	mov	r0, r2
  4019b6: 4619         	mov	r1, r3
  4019b8: f3b4 fd96    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x3b4b2c
  4019bc: ab06         	add	r3, sp, #0x18
  4019be: 4618         	mov	r0, r3
  4019c0: f74a fc68    	bl	0x34c294 <ItemPurchase::isItemPurchased(std::string)> @ imm = #-0xb5730
  4019c4: 4603         	mov	r3, r0
  4019c6: 461d         	mov	r5, r3
  4019c8: ab06         	add	r3, sp, #0x18
  4019ca: 4618         	mov	r0, r3
  4019cc: f3b3 ffa2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b3f44
  4019d0: 2d00         	cmp	r5, #0x0
  4019d2: d010         	beq	0x4019f6 <StoreLayer::onBuy(cocos2d::CCObject*)+0x7e> @ imm = #0x20
  4019d4: f74a fb22    	bl	0x34c01c <ItemPurchase::sharedItemPurchase()> @ imm = #-0xb59bc
  4019d8: aa07         	add	r2, sp, #0x1c
  4019da: ab0c         	add	r3, sp, #0x30
  4019dc: 4610         	mov	r0, r2
  4019de: 4619         	mov	r1, r3
  4019e0: f3b4 fd82    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x3b4b04
  4019e4: ab07         	add	r3, sp, #0x1c
  4019e6: 4618         	mov	r0, r3
  4019e8: f74a fcc8    	bl	0x34c37c <ItemPurchase::sellItem(std::string)> @ imm = #-0xb5670
  4019ec: ab07         	add	r3, sp, #0x1c
  4019ee: 4618         	mov	r0, r3
  4019f0: f3b3 ff90    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b3f20
  4019f4: e089         	b	0x401b0a <StoreLayer::onBuy(cocos2d::CCObject*)+0x192> @ imm = #0x112
  4019f6: ab18         	add	r3, sp, #0x60
  4019f8: 4618         	mov	r0, r3
  4019fa: f388 fcfb    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3889f6
  4019fe: aa08         	add	r2, sp, #0x20
  401a00: ab18         	add	r3, sp, #0x60
  401a02: 4610         	mov	r0, r2
  401a04: 4a6c         	ldr	r2, [pc, #0x1b0]        @ 0x401bb8 <StoreLayer::onBuy(cocos2d::CCObject*)+0x240>
  401a06: 447a         	add	r2, pc
  401a08: 4611         	mov	r1, r2
  401a0a: 461a         	mov	r2, r3
  401a0c: f3b5 f828    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3b5050
  401a10: ab08         	add	r3, sp, #0x20
  401a12: 4618         	mov	r0, r3
  401a14: f02f fea4    	bl	0x431760 <InAppPurchaseBridge::isProductPurchased(std::string)> @ imm = #0x2fd48
  401a18: 4603         	mov	r3, r0
  401a1a: f88d 3017    	strb.w	r3, [sp, #0x17]
  401a1e: ab08         	add	r3, sp, #0x20
  401a20: 4618         	mov	r0, r3
  401a22: f3b3 ff77    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b3eee
  401a26: ab18         	add	r3, sp, #0x60
  401a28: 4618         	mov	r0, r3
  401a2a: f388 fce7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3889ce
  401a2e: f89d 3017    	ldrb.w	r3, [sp, #0x17]
  401a32: f083 0301    	eor	r3, r3, #0x1
  401a36: b2db         	uxtb	r3, r3
  401a38: 2b00         	cmp	r3, #0x0
  401a3a: d056         	beq	0x401aea <StoreLayer::onBuy(cocos2d::CCObject*)+0x172> @ imm = #0xac
  401a3c: f89d 3048    	ldrb.w	r3, [sp, #0x48]
  401a40: 2b00         	cmp	r3, #0x0
  401a42: d052         	beq	0x401aea <StoreLayer::onBuy(cocos2d::CCObject*)+0x172> @ imm = #0xa4
  401a44: ab08         	add	r3, sp, #0x20
  401a46: 4618         	mov	r0, r3
  401a48: f388 fcd4    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3889a8
  401a4c: aa0a         	add	r2, sp, #0x28
  401a4e: ab08         	add	r3, sp, #0x20
  401a50: 4610         	mov	r0, r2
  401a52: 4a5a         	ldr	r2, [pc, #0x168]        @ 0x401bbc <StoreLayer::onBuy(cocos2d::CCObject*)+0x244>
  401a54: 447a         	add	r2, pc
  401a56: 4611         	mov	r1, r2
  401a58: 461a         	mov	r2, r3
  401a5a: f3b5 f801    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3b5002
  401a5e: ab18         	add	r3, sp, #0x60
  401a60: 4618         	mov	r0, r3
  401a62: f388 fcc7    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x38898e
  401a66: aa0b         	add	r2, sp, #0x2c
  401a68: ab18         	add	r3, sp, #0x60
  401a6a: 4610         	mov	r0, r2
  401a6c: 4a54         	ldr	r2, [pc, #0x150]        @ 0x401bc0 <StoreLayer::onBuy(cocos2d::CCObject*)+0x248>
  401a6e: 447a         	add	r2, pc
  401a70: 4611         	mov	r1, r2
  401a72: 461a         	mov	r2, r3
  401a74: f3b4 fff4    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3b4fe8
  401a78: ab07         	add	r3, sp, #0x1c
  401a7a: 4618         	mov	r0, r3
  401a7c: f388 fcba    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x388974
  401a80: aa09         	add	r2, sp, #0x24
  401a82: ab07         	add	r3, sp, #0x1c
  401a84: 4610         	mov	r0, r2
  401a86: 4a4f         	ldr	r2, [pc, #0x13c]        @ 0x401bc4 <StoreLayer::onBuy(cocos2d::CCObject*)+0x24c>
  401a88: 447a         	add	r2, pc
  401a8a: 4611         	mov	r1, r2
  401a8c: 461a         	mov	r2, r3
  401a8e: f3b4 ffe7    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3b4fce
  401a92: ab09         	add	r3, sp, #0x24
  401a94: 4618         	mov	r0, r3
  401a96: f197 ffd1    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x197fa2
  401a9a: 4603         	mov	r3, r0
  401a9c: 4618         	mov	r0, r3
  401a9e: 2100         	movs	r1, #0x0
  401aa0: f198 f9b6    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x19836c
  401aa4: 4603         	mov	r3, r0
  401aa6: a90a         	add	r1, sp, #0x28
  401aa8: aa0b         	add	r2, sp, #0x2c
  401aaa: 2000         	movs	r0, #0x0
  401aac: 9000         	str	r0, [sp]
  401aae: 2000         	movs	r0, #0x0
  401ab0: 9001         	str	r0, [sp, #0x4]
  401ab2: 2000         	movs	r0, #0x0
  401ab4: f6dd fe9e    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0x1222c4
  401ab8: ab09         	add	r3, sp, #0x24
  401aba: 4618         	mov	r0, r3
  401abc: f3b3 ff2a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b3e54
  401ac0: ab07         	add	r3, sp, #0x1c
  401ac2: 4618         	mov	r0, r3
  401ac4: f388 fc9a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x388934
  401ac8: ab0b         	add	r3, sp, #0x2c
  401aca: 4618         	mov	r0, r3
  401acc: f3b3 ff22    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b3e44
  401ad0: ab18         	add	r3, sp, #0x60
  401ad2: 4618         	mov	r0, r3
  401ad4: f388 fc92    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x388924
  401ad8: ab0a         	add	r3, sp, #0x28
  401ada: 4618         	mov	r0, r3
  401adc: f3b3 ff1a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b3e34
  401ae0: ab08         	add	r3, sp, #0x20
  401ae2: 4618         	mov	r0, r3
  401ae4: f388 fc8a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x388914
  401ae8: e00f         	b	0x401b0a <StoreLayer::onBuy(cocos2d::CCObject*)+0x192> @ imm = #0x1e
  401aea: f74a fa97    	bl	0x34c01c <ItemPurchase::sharedItemPurchase()> @ imm = #-0xb5ad2
  401aee: aa18         	add	r2, sp, #0x60
  401af0: ab0c         	add	r3, sp, #0x30
  401af2: 4610         	mov	r0, r2
  401af4: 4619         	mov	r1, r3
  401af6: f3b4 fcf7    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x3b49ee
  401afa: ab18         	add	r3, sp, #0x60
  401afc: 4618         	mov	r0, r3
  401afe: f74a fc01    	bl	0x34c304 <ItemPurchase::purchaseItem(std::string)> @ imm = #-0xb57fe
  401b02: ab18         	add	r3, sp, #0x60
  401b04: 4618         	mov	r0, r3
  401b06: f3b3 ff05    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b3e0a
  401b0a: 9803         	ldr	r0, [sp, #0xc]
  401b0c: f7ff fcf8    	bl	0x401500 <StoreLayer::updateButtons()> @ imm = #-0x610
  401b10: 9803         	ldr	r0, [sp, #0xc]
  401b12: f7ff fc0f    	bl	0x401334 <StoreLayer::updateSelectedItem()> @ imm = #-0x7e2
  401b16: 4b2c         	ldr	r3, [pc, #0xb0]         @ 0x401bc8 <StoreLayer::onBuy(cocos2d::CCObject*)+0x250>
  401b18: 58e3         	ldr	r3, [r4, r3]
  401b1a: 681b         	ldr	r3, [r3]
  401b1c: 4618         	mov	r0, r3
  401b1e: 210d         	movs	r1, #0xd
  401b20: f7f6 f94e    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #-0x9d64
  401b24: ab0c         	add	r3, sp, #0x30
  401b26: 4618         	mov	r0, r3
  401b28: f747 fbd0    	bl	0x3492cc <ItemInfo::~ItemInfo()> @ imm = #-0xb8860
  401b2c: e040         	b	0x401bb0 <StoreLayer::onBuy(cocos2d::CCObject*)+0x238> @ imm = #0x80
  401b2e: ab18         	add	r3, sp, #0x60
  401b30: 4618         	mov	r0, r3
  401b32: f747 fbcb    	bl	0x3492cc <ItemInfo::~ItemInfo()> @ imm = #-0xb886a
  401b36: f386 fab9    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x386572
  401b3a: ab06         	add	r3, sp, #0x18
  401b3c: 4618         	mov	r0, r3
  401b3e: f3b3 fee9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b3dd2
  401b42: e02f         	b	0x401ba4 <StoreLayer::onBuy(cocos2d::CCObject*)+0x22c> @ imm = #0x5e
  401b44: ab07         	add	r3, sp, #0x1c
  401b46: 4618         	mov	r0, r3
  401b48: f3b3 fee4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b3dc8
  401b4c: e02a         	b	0x401ba4 <StoreLayer::onBuy(cocos2d::CCObject*)+0x22c> @ imm = #0x54
  401b4e: ab08         	add	r3, sp, #0x20
  401b50: 4618         	mov	r0, r3
  401b52: f3b3 fedf    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b3dbe
  401b56: e7ff         	b	0x401b58 <StoreLayer::onBuy(cocos2d::CCObject*)+0x1e0> @ imm = #-0x2
  401b58: ab18         	add	r3, sp, #0x60
  401b5a: 4618         	mov	r0, r3
  401b5c: f388 fc4e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38889c
  401b60: e020         	b	0x401ba4 <StoreLayer::onBuy(cocos2d::CCObject*)+0x22c> @ imm = #0x40
  401b62: ab09         	add	r3, sp, #0x24
  401b64: 4618         	mov	r0, r3
  401b66: f3b3 fed5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b3daa
  401b6a: e7ff         	b	0x401b6c <StoreLayer::onBuy(cocos2d::CCObject*)+0x1f4> @ imm = #-0x2
  401b6c: ab07         	add	r3, sp, #0x1c
  401b6e: 4618         	mov	r0, r3
  401b70: f388 fc44    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x388888
  401b74: ab0b         	add	r3, sp, #0x2c
  401b76: 4618         	mov	r0, r3
  401b78: f3b3 fecc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b3d98
  401b7c: e7ff         	b	0x401b7e <StoreLayer::onBuy(cocos2d::CCObject*)+0x206> @ imm = #-0x2
  401b7e: ab18         	add	r3, sp, #0x60
  401b80: 4618         	mov	r0, r3
  401b82: f388 fc3b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x388876
  401b86: ab0a         	add	r3, sp, #0x28
  401b88: 4618         	mov	r0, r3
  401b8a: f3b3 fec3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b3d86
  401b8e: e7ff         	b	0x401b90 <StoreLayer::onBuy(cocos2d::CCObject*)+0x218> @ imm = #-0x2
  401b90: ab08         	add	r3, sp, #0x20
  401b92: 4618         	mov	r0, r3
  401b94: f388 fc32    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x388864
  401b98: e004         	b	0x401ba4 <StoreLayer::onBuy(cocos2d::CCObject*)+0x22c> @ imm = #0x8
  401b9a: ab18         	add	r3, sp, #0x60
  401b9c: 4618         	mov	r0, r3
  401b9e: f3b3 feb9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b3d72
  401ba2: e7ff         	b	0x401ba4 <StoreLayer::onBuy(cocos2d::CCObject*)+0x22c> @ imm = #-0x2
  401ba4: ab0c         	add	r3, sp, #0x30
  401ba6: 4618         	mov	r0, r3
  401ba8: f747 fb90    	bl	0x3492cc <ItemInfo::~ItemInfo()> @ imm = #-0xb88e0
  401bac: f386 fa7e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3864fc
  401bb0: b025         	add	sp, #0x94
  401bb2: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x401bb3); words below are literal-pool data ---
  401bb4: 1086         	asrs	r6, r0, #0x2
  401bb6: 0053         	lsls	r3, r2, #0x1
  401bb8: 829e         	strh	r6, [r3, #0x14]
  401bba: 003d         	movs	r5, r7
  401bbc: 826c         	strh	r4, [r5, #0x12]
  401bbe: 003d         	movs	r5, r7
  401bc0: 8266         	strh	r6, [r4, #0x12]
  401bc2: 003d         	movs	r5, r7
  401bc4: 8274         	strh	r4, [r6, #0x12]
  401bc6: 003d         	movs	r5, r7
  401bc8: d730         	bvc	0x401c2c <StoreLayer::onBack(cocos2d::CCObject*)+0x60> @ imm = #0x60
  401bca: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== StoreLayer::onBack
//      file offset 0x401bcc (= ELF address; Ghidra 0x411bcc), 100 bytes, Thumb-2
  401bcc: b530         	push	{r4, r5, lr}
  401bce: b083         	sub	sp, #0xc
  401bd0: 9001         	str	r0, [sp, #0x4]
  401bd2: 9100         	str	r1, [sp]
  401bd4: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x401c24 <StoreLayer::onBack(cocos2d::CCObject*)+0x58>
  401bd6: 447a         	add	r2, pc
  401bd8: 9b01         	ldr	r3, [sp, #0x4]
  401bda: f893 3110    	ldrb.w	r3, [r3, #0x110]
  401bde: 2b00         	cmp	r3, #0x0
  401be0: d000         	beq	0x401be4 <StoreLayer::onBack(cocos2d::CCObject*)+0x18> @ imm = #0x0
  401be2: e01c         	b	0x401c1e <StoreLayer::onBack(cocos2d::CCObject*)+0x52> @ imm = #0x38
  401be4: 9b01         	ldr	r3, [sp, #0x4]
  401be6: 2101         	movs	r1, #0x1
  401be8: f883 1110    	strb.w	r1, [r3, #0x110]
  401bec: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x401c28 <StoreLayer::onBack(cocos2d::CCObject*)+0x5c>
  401bee: 58d3         	ldr	r3, [r2, r3]
  401bf0: 681b         	ldr	r3, [r3]
  401bf2: 4618         	mov	r0, r3
  401bf4: 210d         	movs	r1, #0xd
  401bf6: f7f6 f8e3    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #-0x9e3a
  401bfa: f199 fcbb    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x199976
  401bfe: 4604         	mov	r4, r0
  401c00: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x401c2c <StoreLayer::onBack(cocos2d::CCObject*)+0x60>
  401c02: 447b         	add	r3, pc
  401c04: 681d         	ldr	r5, [r3]
  401c06: f6ef fd59    	bl	0x2f16bc <AvatarMenuLayer::scene()> @ imm = #-0x11054e
  401c0a: 4603         	mov	r3, r0
  401c0c: 4628         	mov	r0, r5
  401c0e: 4619         	mov	r1, r3
  401c10: f1af fb7a    	bl	0x5b1308 <cocos2d::CCTransitionSlideInL::create(float, cocos2d::CCScene*)> @ imm = #0x1af6f4
  401c14: 4603         	mov	r3, r0
  401c16: 4620         	mov	r0, r4
  401c18: 4619         	mov	r1, r3
  401c1a: f19a fb9f    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x19a73e
  401c1e: b003         	add	sp, #0xc
  401c20: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x401c21); words below are literal-pool data ---
  401c22: bf00         	nop
  401c24: 0e32         	lsrs	r2, r6, #0x18
  401c26: 0053         	lsls	r3, r2, #0x1
  401c28: d730         	bvc	0x401c8c <StoreLayer::onPoints(cocos2d::CCObject*)+0x5c> @ imm = #0x60
  401c2a: ffff 1a9e    	<unknown>
  401c2e: 0053         	lsls	r3, r2, #0x1

// ==== StoreLayer::onPoints
//      file offset 0x401c30 (= ELF address; Ghidra 0x411c30), 100 bytes, Thumb-2
  401c30: b530         	push	{r4, r5, lr}
  401c32: b083         	sub	sp, #0xc
  401c34: 9001         	str	r0, [sp, #0x4]
  401c36: 9100         	str	r1, [sp]
  401c38: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x401c88 <StoreLayer::onPoints(cocos2d::CCObject*)+0x58>
  401c3a: 447a         	add	r2, pc
  401c3c: 9b01         	ldr	r3, [sp, #0x4]
  401c3e: f893 3110    	ldrb.w	r3, [r3, #0x110]
  401c42: 2b00         	cmp	r3, #0x0
  401c44: d000         	beq	0x401c48 <StoreLayer::onPoints(cocos2d::CCObject*)+0x18> @ imm = #0x0
  401c46: e01c         	b	0x401c82 <StoreLayer::onPoints(cocos2d::CCObject*)+0x52> @ imm = #0x38
  401c48: 9b01         	ldr	r3, [sp, #0x4]
  401c4a: 2101         	movs	r1, #0x1
  401c4c: f883 1110    	strb.w	r1, [r3, #0x110]
  401c50: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x401c8c <StoreLayer::onPoints(cocos2d::CCObject*)+0x5c>
  401c52: 58d3         	ldr	r3, [r2, r3]
  401c54: 681b         	ldr	r3, [r3]
  401c56: 4618         	mov	r0, r3
  401c58: 210d         	movs	r1, #0xd
  401c5a: f7f6 f8b1    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #-0x9e9e
  401c5e: f199 fc89    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x199912
  401c62: 4604         	mov	r4, r0
  401c64: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x401c90 <StoreLayer::onPoints(cocos2d::CCObject*)+0x60>
  401c66: 447b         	add	r3, pc
  401c68: 681d         	ldr	r5, [r3]
  401c6a: f7a8 fcd3    	bl	0x3aa614 <PointsLayer::scene()> @ imm = #-0x5765a
  401c6e: 4603         	mov	r3, r0
  401c70: 4628         	mov	r0, r5
  401c72: 4619         	mov	r1, r3
  401c74: f1af fb48    	bl	0x5b1308 <cocos2d::CCTransitionSlideInL::create(float, cocos2d::CCScene*)> @ imm = #0x1af690
  401c78: 4603         	mov	r3, r0
  401c7a: 4620         	mov	r0, r4
  401c7c: 4619         	mov	r1, r3
  401c7e: f19a fb6d    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x19a6da
  401c82: b003         	add	sp, #0xc
  401c84: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x401c85); words below are literal-pool data ---
  401c86: bf00         	nop
  401c88: 0dce         	lsrs	r6, r1, #0x17
  401c8a: 0053         	lsls	r3, r2, #0x1
  401c8c: d730         	bvc	0x401cf0 <StoreLayer::onPoints(cocos2d::CCObject*)+0xc0> @ imm = #0x60
  401c8e: ffff 1a3a    	<unknown>
  401c92: 0053         	lsls	r3, r2, #0x1
