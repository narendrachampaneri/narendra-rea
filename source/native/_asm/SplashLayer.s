// SplashLayer: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 14 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../SplashLayer.cpp

// ==== SplashLayer::create
//      file offset 0x3f94bc (= ELF address; Ghidra 0x4094bc), 112 bytes, Thumb-2
  3f94bc: b510         	push	{r4, lr}
  3f94be: b082         	sub	sp, #0x8
  3f94c0: f44f 7090    	mov.w	r0, #0x120
  3f94c4: f38e fa4e    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x38e49c
  3f94c8: 4603         	mov	r3, r0
  3f94ca: 461c         	mov	r4, r3
  3f94cc: 4620         	mov	r0, r4
  3f94ce: f000 f82d    	bl	0x3f952c <SplashLayer::SplashLayer()> @ imm = #0x5a
  3f94d2: 9401         	str	r4, [sp, #0x4]
  3f94d4: 9b01         	ldr	r3, [sp, #0x4]
  3f94d6: 2b00         	cmp	r3, #0x0
  3f94d8: d00a         	beq	0x3f94f0 <SplashLayer::create()+0x34> @ imm = #0x14
  3f94da: 9b01         	ldr	r3, [sp, #0x4]
  3f94dc: 681b         	ldr	r3, [r3]
  3f94de: 3318         	adds	r3, #0x18
  3f94e0: 681b         	ldr	r3, [r3]
  3f94e2: 9801         	ldr	r0, [sp, #0x4]
  3f94e4: 4798         	blx	r3
  3f94e6: 4603         	mov	r3, r0
  3f94e8: 2b00         	cmp	r3, #0x0
  3f94ea: d001         	beq	0x3f94f0 <SplashLayer::create()+0x34> @ imm = #0x2
  3f94ec: 2301         	movs	r3, #0x1
  3f94ee: e000         	b	0x3f94f2 <SplashLayer::create()+0x36> @ imm = #0x0
  3f94f0: 2300         	movs	r3, #0x0
  3f94f2: 2b00         	cmp	r3, #0x0
  3f94f4: d005         	beq	0x3f9502 <SplashLayer::create()+0x46> @ imm = #0xa
  3f94f6: 9b01         	ldr	r3, [sp, #0x4]
  3f94f8: 4618         	mov	r0, r3
  3f94fa: f19e fcff    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x19e9fe
  3f94fe: 9b01         	ldr	r3, [sp, #0x4]
  3f9500: e011         	b	0x3f9526 <SplashLayer::create()+0x6a> @ imm = #0x22
  3f9502: 9b01         	ldr	r3, [sp, #0x4]
  3f9504: 2b00         	cmp	r3, #0x0
  3f9506: d005         	beq	0x3f9514 <SplashLayer::create()+0x58> @ imm = #0xa
  3f9508: 9b01         	ldr	r3, [sp, #0x4]
  3f950a: 681b         	ldr	r3, [r3]
  3f950c: 3308         	adds	r3, #0x8
  3f950e: 681b         	ldr	r3, [r3]
  3f9510: 9801         	ldr	r0, [sp, #0x4]
  3f9512: 4798         	blx	r3
  3f9514: 2300         	movs	r3, #0x0
  3f9516: 9301         	str	r3, [sp, #0x4]
  3f9518: 2300         	movs	r3, #0x0
  3f951a: e004         	b	0x3f9526 <SplashLayer::create()+0x6a> @ imm = #0x8
  3f951c: 4620         	mov	r0, r4
  3f951e: f38e fdc1    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x38eb82
  3f9522: f38e fdc3    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x38eb86
  3f9526: 4618         	mov	r0, r3
  3f9528: b002         	add	sp, #0x8
  3f952a: bd10         	pop	{r4, pc}

// ==== SplashLayer::SplashLayer
//      file offset 0x3f952c (= ELF address; Ghidra 0x40952c), 88 bytes, Thumb-2
  3f952c: b510         	push	{r4, lr}
  3f952e: b082         	sub	sp, #0x8
  3f9530: 9001         	str	r0, [sp, #0x4]
  3f9532: 4c12         	ldr	r4, [pc, #0x48]         @ 0x3f957c <SplashLayer::SplashLayer()+0x50>
  3f9534: 447c         	add	r4, pc
  3f9536: 9b01         	ldr	r3, [sp, #0x4]
  3f9538: 4618         	mov	r0, r3
  3f953a: f1b3 fd8f    	bl	0x5ad05c <cocos2d::CCLayer::CCLayer()> @ imm = #0x1b3b1e
  3f953e: 9b01         	ldr	r3, [sp, #0x4]
  3f9540: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x3f9580 <SplashLayer::SplashLayer()+0x54>
  3f9542: 58a2         	ldr	r2, [r4, r2]
  3f9544: 3208         	adds	r2, #0x8
  3f9546: 601a         	str	r2, [r3]
  3f9548: 9b01         	ldr	r3, [sp, #0x4]
  3f954a: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x3f9580 <SplashLayer::SplashLayer()+0x54>
  3f954c: 58a2         	ldr	r2, [r4, r2]
  3f954e: f502 7204    	add.w	r2, r2, #0x210
  3f9552: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  3f9556: 9b01         	ldr	r3, [sp, #0x4]
  3f9558: 4a09         	ldr	r2, [pc, #0x24]         @ 0x3f9580 <SplashLayer::SplashLayer()+0x54>
  3f955a: 58a2         	ldr	r2, [r4, r2]
  3f955c: f502 7210    	add.w	r2, r2, #0x240
  3f9560: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  3f9564: 9b01         	ldr	r3, [sp, #0x4]
  3f9566: 4a06         	ldr	r2, [pc, #0x18]         @ 0x3f9580 <SplashLayer::SplashLayer()+0x54>
  3f9568: 58a2         	ldr	r2, [r4, r2]
  3f956a: f502 7213    	add.w	r2, r2, #0x24c
  3f956e: f8c3 20ec    	str.w	r2, [r3, #0xec]
  3f9572: 9b01         	ldr	r3, [sp, #0x4]
  3f9574: 4618         	mov	r0, r3
  3f9576: b002         	add	sp, #0x8
  3f9578: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3f9579); words below are literal-pool data ---
  3f957a: bf00         	nop
  3f957c: 94d4         	str	r4, [sp, #0x350]
  3f957e: 0053         	lsls	r3, r2, #0x1
  3f9580: df30         	svc	#0x30
  3f9582: ffff b500    	<unknown>

// ==== SplashLayer::scene
//      file offset 0x3f9584 (= ELF address; Ghidra 0x409584), 46 bytes, Thumb-2
  3f9584: b500         	push	{lr}
  3f9586: b083         	sub	sp, #0xc
  3f9588: f1b6 fa6a    	bl	0x5afa60 <cocos2d::CCScene::create()> @ imm = #0x1b64d4
  3f958c: 4603         	mov	r3, r0
  3f958e: 9300         	str	r3, [sp]
  3f9590: f7ff ff94    	bl	0x3f94bc <SplashLayer::create()> @ imm = #-0xd8
  3f9594: 4603         	mov	r3, r0
  3f9596: 9301         	str	r3, [sp, #0x4]
  3f9598: 9b00         	ldr	r3, [sp]
  3f959a: 681b         	ldr	r3, [r3]
  3f959c: 33c8         	adds	r3, #0xc8
  3f959e: 681b         	ldr	r3, [r3]
  3f95a0: 9a00         	ldr	r2, [sp]
  3f95a2: 4610         	mov	r0, r2
  3f95a4: 9901         	ldr	r1, [sp, #0x4]
  3f95a6: 4798         	blx	r3
  3f95a8: 9b00         	ldr	r3, [sp]
  3f95aa: 4618         	mov	r0, r3
  3f95ac: b003         	add	sp, #0xc
  3f95ae: f85d fb04    	ldr	pc, [sp], #4

// ==== SplashLayer::init
//      file offset 0x3f95b8 (= ELF address; Ghidra 0x4095b8), 1144 bytes, Thumb-2
  3f95b8: b570         	push	{r4, r5, r6, lr}
  3f95ba: b092         	sub	sp, #0x48
  3f95bc: 9003         	str	r0, [sp, #0xc]
  3f95be: f8df 4440    	ldr.w	r4, [pc, #0x440]        @ 0x3f9a00 <SplashLayer::init()+0x448>
  3f95c2: 447c         	add	r4, pc
  3f95c4: 9b03         	ldr	r3, [sp, #0xc]
  3f95c6: 4618         	mov	r0, r3
  3f95c8: f1b3 fe16    	bl	0x5ad1f8 <cocos2d::CCLayer::init()> @ imm = #0x1b3c2c
  3f95cc: 4603         	mov	r3, r0
  3f95ce: f083 0301    	eor	r3, r3, #0x1
  3f95d2: b2db         	uxtb	r3, r3
  3f95d4: 2b00         	cmp	r3, #0x0
  3f95d6: d001         	beq	0x3f95dc <SplashLayer::init()+0x24> @ imm = #0x2
  3f95d8: 2400         	movs	r4, #0x0
  3f95da: e1fc         	b	0x3f99d6 <SplashLayer::init()+0x41e> @ imm = #0x3f8
  3f95dc: ab06         	add	r3, sp, #0x18
  3f95de: 4618         	mov	r0, r3
  3f95e0: f8df 3420    	ldr.w	r3, [pc, #0x420]        @ 0x3f9a04 <SplashLayer::init()+0x44c>
  3f95e4: 58e3         	ldr	r3, [r4, r3]
  3f95e6: 4619         	mov	r1, r3
  3f95e8: f199 fd62    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x199ac4
  3f95ec: ed9d 7a06    	vldr	s14, [sp, #24]
  3f95f0: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3f95f4: eec7 7a27    	vdiv.f32	s15, s14, s15
  3f95f8: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3f95fc: ed9d 7a07    	vldr	s14, [sp, #28]
  3f9600: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3f9604: eec7 7a27    	vdiv.f32	s15, s14, s15
  3f9608: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3f960c: ab0e         	add	r3, sp, #0x38
  3f960e: 4618         	mov	r0, r3
  3f9610: eeb0 0b46    	vmov.f64	d0, d6
  3f9614: eeb0 1b47    	vmov.f64	d1, d7
  3f9618: f7ff f892    	bl	0x3f8740 <std::pair<int const, int>::pair<int&&, 0u>(std::tuple<int&&>&, std::tuple<>&, std::_Index_tuple<0u>, std::_Index_tuple<>)+0x140> @ imm = #-0xedc
  3f961c: 9b03         	ldr	r3, [sp, #0xc]
  3f961e: 2200         	movs	r2, #0x0
  3f9620: f883 2109    	strb.w	r2, [r3, #0x109]
  3f9624: 9b03         	ldr	r3, [sp, #0xc]
  3f9626: 2200         	movs	r2, #0x0
  3f9628: f883 2108    	strb.w	r2, [r3, #0x108]
  3f962c: 9a03         	ldr	r2, [sp, #0xc]
  3f962e: 4bf6         	ldr	r3, [pc, #0x3d8]        @ 0x3f9a08 <SplashLayer::init()+0x450>
  3f9630: 58e3         	ldr	r3, [r4, r3]
  3f9632: 9308         	str	r3, [sp, #0x20]
  3f9634: 2300         	movs	r3, #0x0
  3f9636: 9309         	str	r3, [sp, #0x24]
  3f9638: 9b09         	ldr	r3, [sp, #0x24]
  3f963a: 9300         	str	r3, [sp]
  3f963c: 9b08         	ldr	r3, [sp, #0x20]
  3f963e: 49f3         	ldr	r1, [pc, #0x3cc]        @ 0x3f9a0c <SplashLayer::init()+0x454>
  3f9640: 4479         	add	r1, pc
  3f9642: 4608         	mov	r0, r1
  3f9644: 49f2         	ldr	r1, [pc, #0x3c8]        @ 0x3f9a10 <SplashLayer::init()+0x458>
  3f9646: 4479         	add	r1, pc
  3f9648: f1bf f8cc    	bl	0x5b87e4 <cocos2d::CCMenuItemImage::create(char const*, char const*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x1bf198
  3f964c: 4603         	mov	r3, r0
  3f964e: 9305         	str	r3, [sp, #0x14]
  3f9650: 9805         	ldr	r0, [sp, #0x14]
  3f9652: 2100         	movs	r1, #0x0
  3f9654: f1bb fd72    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x1bbae4
  3f9658: 4602         	mov	r2, r0
  3f965a: 9b03         	ldr	r3, [sp, #0xc]
  3f965c: f8c3 2118    	str.w	r2, [r3, #0x118]
  3f9660: 9b03         	ldr	r3, [sp, #0xc]
  3f9662: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3f9666: 4618         	mov	r0, r3
  3f9668: f19e fc3e    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x19e87c
  3f966c: 9b03         	ldr	r3, [sp, #0xc]
  3f966e: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3f9672: 681b         	ldr	r3, [r3]
  3f9674: 334c         	adds	r3, #0x4c
  3f9676: 681d         	ldr	r5, [r3]
  3f9678: 9b03         	ldr	r3, [sp, #0xc]
  3f967a: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3f967e: 461e         	mov	r6, r3
  3f9680: ed9d 7b0e    	vldr	d7, [sp, #56]
  3f9684: eef7 6bc7    	vcvt.f32.f64	s13, d7
  3f9688: ed9d 7b10    	vldr	d7, [sp, #64]
  3f968c: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3f9690: ab0c         	add	r3, sp, #0x30
  3f9692: 4618         	mov	r0, r3
  3f9694: ee16 1a90    	vmov	r1, s13
  3f9698: ee17 2a90    	vmov	r2, s15
  3f969c: f199 fb28    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x199650
  3f96a0: ab0c         	add	r3, sp, #0x30
  3f96a2: 4630         	mov	r0, r6
  3f96a4: 4619         	mov	r1, r3
  3f96a6: 47a8         	blx	r5
  3f96a8: 9b03         	ldr	r3, [sp, #0xc]
  3f96aa: 681b         	ldr	r3, [r3]
  3f96ac: 33c8         	adds	r3, #0xc8
  3f96ae: 681b         	ldr	r3, [r3]
  3f96b0: 9903         	ldr	r1, [sp, #0xc]
  3f96b2: 9a03         	ldr	r2, [sp, #0xc]
  3f96b4: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3f96b8: 4608         	mov	r0, r1
  3f96ba: 4611         	mov	r1, r2
  3f96bc: 4798         	blx	r3
  3f96be: ab04         	add	r3, sp, #0x10
  3f96c0: 4618         	mov	r0, r3
  3f96c2: f032 fd8b    	bl	0x42c1dc <ApplicationInterface::getAppVersion()> @ imm = #0x32b16
  3f96c6: ab04         	add	r3, sp, #0x10
  3f96c8: 4618         	mov	r0, r3
  3f96ca: f3bb fe19    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3bbc32
  3f96ce: 4605         	mov	r5, r0
  3f96d0: 4bd0         	ldr	r3, [pc, #0x340]        @ 0x3f9a14 <SplashLayer::init()+0x45c>
  3f96d2: 447b         	add	r3, pc
  3f96d4: 4618         	mov	r0, r3
  3f96d6: f3bb fe13    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3bbc26
  3f96da: 4603         	mov	r3, r0
  3f96dc: 2220         	movs	r2, #0x20
  3f96de: 9200         	str	r2, [sp]
  3f96e0: 4628         	mov	r0, r5
  3f96e2: 4619         	mov	r1, r3
  3f96e4: 2220         	movs	r2, #0x20
  3f96e6: 2320         	movs	r3, #0x20
  3f96e8: f1ab fe46    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1abc8c
  3f96ec: 4602         	mov	r2, r0
  3f96ee: 9b03         	ldr	r3, [sp, #0xc]
  3f96f0: f8c3 210c    	str.w	r2, [r3, #0x10c]
  3f96f4: 9b03         	ldr	r3, [sp, #0xc]
  3f96f6: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3f96fa: 4618         	mov	r0, r3
  3f96fc: f19e fbf4    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x19e7e8
  3f9700: 9b03         	ldr	r3, [sp, #0xc]
  3f9702: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3f9706: 4618         	mov	r0, r3
  3f9708: 2118         	movs	r1, #0x18
  3f970a: f1ac fb3b    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1ac676
  3f970e: 9b03         	ldr	r3, [sp, #0xc]
  3f9710: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3f9714: 681b         	ldr	r3, [r3]
  3f9716: 3340         	adds	r3, #0x40
  3f9718: 681b         	ldr	r3, [r3]
  3f971a: 9a03         	ldr	r2, [sp, #0xc]
  3f971c: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3f9720: 4610         	mov	r0, r2
  3f9722: f649 119a    	movw	r1, #0x999a
  3f9726: f6c3 6199    	movt	r1, #0x3e99
  3f972a: 4798         	blx	r3
  3f972c: 9b03         	ldr	r3, [sp, #0xc]
  3f972e: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3f9732: 681b         	ldr	r3, [r3]
  3f9734: 334c         	adds	r3, #0x4c
  3f9736: 681d         	ldr	r5, [r3]
  3f9738: 9b03         	ldr	r3, [sp, #0xc]
  3f973a: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3f973e: 461e         	mov	r6, r3
  3f9740: 9b06         	ldr	r3, [sp, #0x18]
  3f9742: aa0c         	add	r2, sp, #0x30
  3f9744: 4610         	mov	r0, r2
  3f9746: 4619         	mov	r1, r3
  3f9748: f04f 4282    	mov.w	r2, #0x41000000
  3f974c: f199 fad0    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1995a0
  3f9750: ab0c         	add	r3, sp, #0x30
  3f9752: 4630         	mov	r0, r6
  3f9754: 4619         	mov	r1, r3
  3f9756: 47a8         	blx	r5
  3f9758: 9b03         	ldr	r3, [sp, #0xc]
  3f975a: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3f975e: 681b         	ldr	r3, [r3]
  3f9760: 337c         	adds	r3, #0x7c
  3f9762: 681d         	ldr	r5, [r3]
  3f9764: 9b03         	ldr	r3, [sp, #0xc]
  3f9766: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3f976a: 461e         	mov	r6, r3
  3f976c: ab0c         	add	r3, sp, #0x30
  3f976e: 4618         	mov	r0, r3
  3f9770: f04f 517e    	mov.w	r1, #0x3f800000
  3f9774: f04f 527c    	mov.w	r2, #0x3f000000
  3f9778: f199 faba    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x199574
  3f977c: ab0c         	add	r3, sp, #0x30
  3f977e: 4630         	mov	r0, r6
  3f9780: 4619         	mov	r1, r3
  3f9782: 47a8         	blx	r5
  3f9784: 9b03         	ldr	r3, [sp, #0xc]
  3f9786: 681b         	ldr	r3, [r3]
  3f9788: 33c8         	adds	r3, #0xc8
  3f978a: 681b         	ldr	r3, [r3]
  3f978c: 9903         	ldr	r1, [sp, #0xc]
  3f978e: 9a03         	ldr	r2, [sp, #0xc]
  3f9790: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3f9794: 4608         	mov	r0, r1
  3f9796: 4611         	mov	r1, r2
  3f9798: 4798         	blx	r3
  3f979a: 9b03         	ldr	r3, [sp, #0xc]
  3f979c: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3f97a0: 681b         	ldr	r3, [r3]
  3f97a2: f503 73d2    	add.w	r3, r3, #0x1a4
  3f97a6: 681b         	ldr	r3, [r3]
  3f97a8: 9a03         	ldr	r2, [sp, #0xc]
  3f97aa: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3f97ae: 4610         	mov	r0, r2
  3f97b0: 2196         	movs	r1, #0x96
  3f97b2: 4798         	blx	r3
  3f97b4: 4b98         	ldr	r3, [pc, #0x260]        @ 0x3f9a18 <SplashLayer::init()+0x460>
  3f97b6: 447b         	add	r3, pc
  3f97b8: 4618         	mov	r0, r3
  3f97ba: f3bb fda1    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3bbb42
  3f97be: 4603         	mov	r3, r0
  3f97c0: 2220         	movs	r2, #0x20
  3f97c2: 9200         	str	r2, [sp]
  3f97c4: 4a95         	ldr	r2, [pc, #0x254]        @ 0x3f9a1c <SplashLayer::init()+0x464>
  3f97c6: 447a         	add	r2, pc
  3f97c8: 4610         	mov	r0, r2
  3f97ca: 4619         	mov	r1, r3
  3f97cc: 2220         	movs	r2, #0x20
  3f97ce: 2320         	movs	r3, #0x20
  3f97d0: f1ab fdd2    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1abba4
  3f97d4: 4602         	mov	r2, r0
  3f97d6: 9b03         	ldr	r3, [sp, #0xc]
  3f97d8: f8c3 2110    	str.w	r2, [r3, #0x110]
  3f97dc: 9b03         	ldr	r3, [sp, #0xc]
  3f97de: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3f97e2: 4618         	mov	r0, r3
  3f97e4: f19e fb80    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x19e700
  3f97e8: 9b03         	ldr	r3, [sp, #0xc]
  3f97ea: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3f97ee: 4618         	mov	r0, r3
  3f97f0: 2118         	movs	r1, #0x18
  3f97f2: f1ac fac7    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1ac58e
  3f97f6: 9b03         	ldr	r3, [sp, #0xc]
  3f97f8: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3f97fc: 681b         	ldr	r3, [r3]
  3f97fe: 3340         	adds	r3, #0x40
  3f9800: 681b         	ldr	r3, [r3]
  3f9802: 9a03         	ldr	r2, [sp, #0xc]
  3f9804: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  3f9808: 4610         	mov	r0, r2
  3f980a: f64c 41cd    	movw	r1, #0xcccd
  3f980e: f6c3 61cc    	movt	r1, #0x3ecc
  3f9812: 4798         	blx	r3
  3f9814: 9b03         	ldr	r3, [sp, #0xc]
  3f9816: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3f981a: 681b         	ldr	r3, [r3]
  3f981c: 334c         	adds	r3, #0x4c
  3f981e: 681d         	ldr	r5, [r3]
  3f9820: 9b03         	ldr	r3, [sp, #0xc]
  3f9822: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3f9826: 461e         	mov	r6, r3
  3f9828: ed9d 6b0e    	vldr	d6, [sp, #56]
  3f982c: ed9f 7b70    	vldr	d7, [pc, #448]          @ 0x3f99f0 <SplashLayer::init()+0x438>
  3f9830: ee36 7b47    	vsub.f64	d7, d6, d7
  3f9834: eef7 5bc7    	vcvt.f32.f64	s11, d7
  3f9838: ed9d 6b10    	vldr	d6, [sp, #64]
  3f983c: eeb3 7b0f    	vmov.f64	d7, #3.100000e+01
  3f9840: ee36 7b07    	vadd.f64	d7, d6, d7
  3f9844: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3f9848: ab0c         	add	r3, sp, #0x30
  3f984a: 4618         	mov	r0, r3
  3f984c: ee15 1a90    	vmov	r1, s11
  3f9850: ee17 2a90    	vmov	r2, s15
  3f9854: f199 fa4c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x199498
  3f9858: ab0c         	add	r3, sp, #0x30
  3f985a: 4630         	mov	r0, r6
  3f985c: 4619         	mov	r1, r3
  3f985e: 47a8         	blx	r5
  3f9860: 9b03         	ldr	r3, [sp, #0xc]
  3f9862: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3f9866: 681b         	ldr	r3, [r3]
  3f9868: f503 73d2    	add.w	r3, r3, #0x1a4
  3f986c: 681b         	ldr	r3, [r3]
  3f986e: 9a03         	ldr	r2, [sp, #0xc]
  3f9870: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  3f9874: 4610         	mov	r0, r2
  3f9876: 2100         	movs	r1, #0x0
  3f9878: 4798         	blx	r3
  3f987a: 9b03         	ldr	r3, [sp, #0xc]
  3f987c: 681b         	ldr	r3, [r3]
  3f987e: 33c8         	adds	r3, #0xc8
  3f9880: 681b         	ldr	r3, [r3]
  3f9882: 9903         	ldr	r1, [sp, #0xc]
  3f9884: 9a03         	ldr	r2, [sp, #0xc]
  3f9886: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  3f988a: 4608         	mov	r0, r1
  3f988c: 4611         	mov	r1, r2
  3f988e: 4798         	blx	r3
  3f9890: 4b63         	ldr	r3, [pc, #0x18c]        @ 0x3f9a20 <SplashLayer::init()+0x468>
  3f9892: 447b         	add	r3, pc
  3f9894: 4618         	mov	r0, r3
  3f9896: f3bb fd33    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3bba66
  3f989a: 4603         	mov	r3, r0
  3f989c: 2220         	movs	r2, #0x20
  3f989e: 9200         	str	r2, [sp]
  3f98a0: 4a60         	ldr	r2, [pc, #0x180]        @ 0x3f9a24 <SplashLayer::init()+0x46c>
  3f98a2: 447a         	add	r2, pc
  3f98a4: 4610         	mov	r0, r2
  3f98a6: 4619         	mov	r1, r3
  3f98a8: 2220         	movs	r2, #0x20
  3f98aa: 2320         	movs	r3, #0x20
  3f98ac: f1ab fd64    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1abac8
  3f98b0: 4602         	mov	r2, r0
  3f98b2: 9b03         	ldr	r3, [sp, #0xc]
  3f98b4: f8c3 2114    	str.w	r2, [r3, #0x114]
  3f98b8: 9b03         	ldr	r3, [sp, #0xc]
  3f98ba: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3f98be: 4618         	mov	r0, r3
  3f98c0: f19e fb12    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x19e624
  3f98c4: 9b03         	ldr	r3, [sp, #0xc]
  3f98c6: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3f98ca: 4618         	mov	r0, r3
  3f98cc: 211e         	movs	r1, #0x1e
  3f98ce: f1ac fa59    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1ac4b2
  3f98d2: 9b03         	ldr	r3, [sp, #0xc]
  3f98d4: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3f98d8: 681b         	ldr	r3, [r3]
  3f98da: 3340         	adds	r3, #0x40
  3f98dc: 681b         	ldr	r3, [r3]
  3f98de: 9a03         	ldr	r2, [sp, #0xc]
  3f98e0: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  3f98e4: 4610         	mov	r0, r2
  3f98e6: f64c 41cd    	movw	r1, #0xcccd
  3f98ea: f6c3 714c    	movt	r1, #0x3f4c
  3f98ee: 4798         	blx	r3
  3f98f0: 9b03         	ldr	r3, [sp, #0xc]
  3f98f2: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3f98f6: 681b         	ldr	r3, [r3]
  3f98f8: 334c         	adds	r3, #0x4c
  3f98fa: 681d         	ldr	r5, [r3]
  3f98fc: 9b03         	ldr	r3, [sp, #0xc]
  3f98fe: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3f9902: 461e         	mov	r6, r3
  3f9904: ed9d 7b0e    	vldr	d7, [sp, #56]
  3f9908: eef7 5bc7    	vcvt.f32.f64	s11, d7
  3f990c: ed9d 6b10    	vldr	d6, [sp, #64]
  3f9910: ed9f 7b39    	vldr	d7, [pc, #228]          @ 0x3f99f8 <SplashLayer::init()+0x440>
  3f9914: ee36 7b47    	vsub.f64	d7, d6, d7
  3f9918: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3f991c: ab0c         	add	r3, sp, #0x30
  3f991e: 4618         	mov	r0, r3
  3f9920: ee15 1a90    	vmov	r1, s11
  3f9924: ee17 2a90    	vmov	r2, s15
  3f9928: f199 f9e2    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1993c4
  3f992c: ab0c         	add	r3, sp, #0x30
  3f992e: 4630         	mov	r0, r6
  3f9930: 4619         	mov	r1, r3
  3f9932: 47a8         	blx	r5
  3f9934: 9b03         	ldr	r3, [sp, #0xc]
  3f9936: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3f993a: 681b         	ldr	r3, [r3]
  3f993c: 337c         	adds	r3, #0x7c
  3f993e: 681d         	ldr	r5, [r3]
  3f9940: 9b03         	ldr	r3, [sp, #0xc]
  3f9942: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3f9946: 461e         	mov	r6, r3
  3f9948: ab0c         	add	r3, sp, #0x30
  3f994a: 4618         	mov	r0, r3
  3f994c: f04f 517c    	mov.w	r1, #0x3f000000
  3f9950: f04f 527c    	mov.w	r2, #0x3f000000
  3f9954: f199 f9cc    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x199398
  3f9958: ab0c         	add	r3, sp, #0x30
  3f995a: 4630         	mov	r0, r6
  3f995c: 4619         	mov	r1, r3
  3f995e: 47a8         	blx	r5
  3f9960: 9b03         	ldr	r3, [sp, #0xc]
  3f9962: 681b         	ldr	r3, [r3]
  3f9964: 33c8         	adds	r3, #0xc8
  3f9966: 681b         	ldr	r3, [r3]
  3f9968: 9903         	ldr	r1, [sp, #0xc]
  3f996a: 9a03         	ldr	r2, [sp, #0xc]
  3f996c: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  3f9970: 4608         	mov	r0, r1
  3f9972: 4611         	mov	r1, r2
  3f9974: 4798         	blx	r3
  3f9976: 9b03         	ldr	r3, [sp, #0xc]
  3f9978: f04f 0200    	mov.w	r2, #0x0
  3f997c: f8c3 211c    	str.w	r2, [r3, #0x11c]
  3f9980: 9b03         	ldr	r3, [sp, #0xc]
  3f9982: 4a29         	ldr	r2, [pc, #0xa4]         @ 0x3f9a28 <SplashLayer::init()+0x470>
  3f9984: 58a2         	ldr	r2, [r4, r2]
  3f9986: 920a         	str	r2, [sp, #0x28]
  3f9988: 2200         	movs	r2, #0x0
  3f998a: 920b         	str	r2, [sp, #0x2c]
  3f998c: 4618         	mov	r0, r3
  3f998e: ab0a         	add	r3, sp, #0x28
  3f9990: e893 0006    	ldm.w	r3, {r1, r2}
  3f9994: f04f 537e    	mov.w	r3, #0x3f800000
  3f9998: f197 fc44    	bl	0x591224 <cocos2d::CCNode::schedule(void (cocos2d::CCObject::*)(float), float)> @ imm = #0x197888
  3f999c: 9b03         	ldr	r3, [sp, #0xc]
  3f999e: 4a23         	ldr	r2, [pc, #0x8c]         @ 0x3f9a2c <SplashLayer::init()+0x474>
  3f99a0: 58a2         	ldr	r2, [r4, r2]
  3f99a2: 920c         	str	r2, [sp, #0x30]
  3f99a4: 2200         	movs	r2, #0x0
  3f99a6: 920d         	str	r2, [sp, #0x34]
  3f99a8: 4618         	mov	r0, r3
  3f99aa: ab0c         	add	r3, sp, #0x30
  3f99ac: e893 0006    	ldm.w	r3, {r1, r2}
  3f99b0: f197 fc20    	bl	0x5911f4 <cocos2d::CCNode::schedule(void (cocos2d::CCObject::*)(float))> @ imm = #0x197840
  3f99b4: f77e f8c4    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x81e78
  3f99b8: 4603         	mov	r3, r0
  3f99ba: 4618         	mov	r0, r3
  3f99bc: f780 fa88    	bl	0x379ed0 <NetworkManager::authenticateLocalPlayer()> @ imm = #-0x7faf0
  3f99c0: f77e f8be    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x81e84
  3f99c4: 4603         	mov	r3, r0
  3f99c6: 4618         	mov	r0, r3
  3f99c8: f780 fd94    	bl	0x37a4f4 <NetworkManager::rak_detectNATType()> @ imm = #-0x7f4d8
  3f99cc: 2401         	movs	r4, #0x1
  3f99ce: ab04         	add	r3, sp, #0x10
  3f99d0: 4618         	mov	r0, r3
  3f99d2: f3bb ff9f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3bbf3e
  3f99d6: 4623         	mov	r3, r4
  3f99d8: e005         	b	0x3f99e6 <SplashLayer::init()+0x42e> @ imm = #0xa
  3f99da: ab04         	add	r3, sp, #0x10
  3f99dc: 4618         	mov	r0, r3
  3f99de: f3bb ff99    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3bbf32
  3f99e2: f38e fb63    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x38e6c6
  3f99e6: 4618         	mov	r0, r3
  3f99e8: b012         	add	sp, #0x48
  3f99ea: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3f99eb); words below are literal-pool data ---
  3f99ec: f3af 8000    	nop.w
  3f99f0: 0000         	movs	r0, r0
  3f99f2: 0000         	movs	r0, r0
  3f99f4: 0000         	movs	r0, r0
  3f99f6: 4052         	eors	r2, r2
  3f99f8: 0000         	movs	r0, r0
  3f99fa: 0000         	movs	r0, r0
  3f99fc: 0000         	movs	r0, r0
  3f99fe: 404e         	eors	r6, r1
  3f9a00: 9446         	str	r4, [sp, #0x118]
  3f9a02: 0053         	lsls	r3, r2, #0x1
  3f9a04: d724         	bvc	0x3f9a50 <SplashLayer::~SplashLayer()+0x20> @ imm = #0x48
  3f9a06: ffff df34    	vcvt.u32.f32	d29, d20, #0x1
  3f9a0a: ffff fc04    	vdup.8	d31, d4[7]
  3f9a0e: 003d         	movs	r5, r7
  3f9a10: fbfe 003d    	<unknown>
  3f9a14: 95a6         	str	r5, [sp, #0x298]
  3f9a16: 0054         	lsls	r4, r2, #0x1
  3f9a18: 94c2         	str	r4, [sp, #0x308]
  3f9a1a: 0054         	lsls	r4, r2, #0x1
  3f9a1c: fa92 003d    	<unknown>
  3f9a20: 93e6         	str	r3, [sp, #0x398]
  3f9a22: 0054         	lsls	r4, r2, #0x1
  3f9a24: f9c6 003d    	<unknown>
  3f9a28: df38         	svc	#0x38
  3f9a2a: ffff df3c    	vcvt.u32.f32	d29, d28, #0x1
  3f9a2e: ffff b500    	<unknown>

// ==== SplashLayer::~SplashLayer
//      file offset 0x3f9a30 (= ELF address; Ghidra 0x409a30), 164 bytes, Thumb-2
  3f9a30: b500         	push	{lr}
  3f9a32: b083         	sub	sp, #0xc
  3f9a34: 9001         	str	r0, [sp, #0x4]
  3f9a36: 4b25         	ldr	r3, [pc, #0x94]         @ 0x3f9acc <SplashLayer::~SplashLayer()+0x9c>
  3f9a38: 447b         	add	r3, pc
  3f9a3a: 9a01         	ldr	r2, [sp, #0x4]
  3f9a3c: 4924         	ldr	r1, [pc, #0x90]         @ 0x3f9ad0 <SplashLayer::~SplashLayer()+0xa0>
  3f9a3e: 5859         	ldr	r1, [r3, r1]
  3f9a40: 3108         	adds	r1, #0x8
  3f9a42: 6011         	str	r1, [r2]
  3f9a44: 9a01         	ldr	r2, [sp, #0x4]
  3f9a46: 4922         	ldr	r1, [pc, #0x88]         @ 0x3f9ad0 <SplashLayer::~SplashLayer()+0xa0>
  3f9a48: 5859         	ldr	r1, [r3, r1]
  3f9a4a: f501 7104    	add.w	r1, r1, #0x210
  3f9a4e: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  3f9a52: 9a01         	ldr	r2, [sp, #0x4]
  3f9a54: 491e         	ldr	r1, [pc, #0x78]         @ 0x3f9ad0 <SplashLayer::~SplashLayer()+0xa0>
  3f9a56: 5859         	ldr	r1, [r3, r1]
  3f9a58: f501 7110    	add.w	r1, r1, #0x240
  3f9a5c: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  3f9a60: 9a01         	ldr	r2, [sp, #0x4]
  3f9a62: 491b         	ldr	r1, [pc, #0x6c]         @ 0x3f9ad0 <SplashLayer::~SplashLayer()+0xa0>
  3f9a64: 585b         	ldr	r3, [r3, r1]
  3f9a66: f503 7313    	add.w	r3, r3, #0x24c
  3f9a6a: f8c2 30ec    	str.w	r3, [r2, #0xec]
  3f9a6e: f1e6 fe1f    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1e6c3e
  3f9a72: 4602         	mov	r2, r0
  3f9a74: 9b01         	ldr	r3, [sp, #0x4]
  3f9a76: 4610         	mov	r0, r2
  3f9a78: 4619         	mov	r1, r3
  3f9a7a: f1e6 ff51    	bl	0x5e0920 <cocos2d::CCNotificationCenter::removeAllObservers(cocos2d::CCObject*)> @ imm = #0x1e6ea2
  3f9a7e: 9b01         	ldr	r3, [sp, #0x4]
  3f9a80: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3f9a84: 4618         	mov	r0, r3
  3f9a86: f19e fa17    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x19e42e
  3f9a8a: 9b01         	ldr	r3, [sp, #0x4]
  3f9a8c: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3f9a90: 4618         	mov	r0, r3
  3f9a92: f19e fa11    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x19e422
  3f9a96: 9b01         	ldr	r3, [sp, #0x4]
  3f9a98: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3f9a9c: 4618         	mov	r0, r3
  3f9a9e: f19e fa0b    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x19e416
  3f9aa2: 9b01         	ldr	r3, [sp, #0x4]
  3f9aa4: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3f9aa8: 4618         	mov	r0, r3
  3f9aaa: f19e fa05    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x19e40a
  3f9aae: 9b01         	ldr	r3, [sp, #0x4]
  3f9ab0: 4618         	mov	r0, r3
  3f9ab2: f1b3 fb4b    	bl	0x5ad14c <cocos2d::CCLayer::~CCLayer()> @ imm = #0x1b3696
  3f9ab6: 2300         	movs	r3, #0x0
  3f9ab8: 2b00         	cmp	r3, #0x0
  3f9aba: d002         	beq	0x3f9ac2 <SplashLayer::~SplashLayer()+0x92> @ imm = #0x4
  3f9abc: 9801         	ldr	r0, [sp, #0x4]
  3f9abe: f38e faf1    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x38e5e2
  3f9ac2: 9b01         	ldr	r3, [sp, #0x4]
  3f9ac4: 4618         	mov	r0, r3
  3f9ac6: b003         	add	sp, #0xc
  3f9ac8: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3f9acb); words below are literal-pool data ---
  3f9acc: 8fd0         	ldrh	r0, [r2, #0x3e]
  3f9ace: 0053         	lsls	r3, r2, #0x1
  3f9ad0: df30         	svc	#0x30
  3f9ad2: ffff f1a0    	<unknown>

// ==== SplashLayer::~SplashLayer
//      file offset 0x3f9ad4 (= ELF address; Ghidra 0x409ad4), 8 bytes, Thumb-2
  3f9ad4: f1a0 00e4    	sub.w	r0, r0, #0xe4
  3f9ad8: f7ff bfaa    	b.w	0x3f9a30 <SplashLayer::~SplashLayer()> @ imm = #-0xac

// ==== SplashLayer::~SplashLayer
//      file offset 0x3f9adc (= ELF address; Ghidra 0x409adc), 28 bytes, Thumb-2
  3f9adc: b500         	push	{lr}
  3f9ade: b083         	sub	sp, #0xc
  3f9ae0: 9001         	str	r0, [sp, #0x4]
  3f9ae2: 9801         	ldr	r0, [sp, #0x4]
  3f9ae4: f7ff ffa4    	bl	0x3f9a30 <SplashLayer::~SplashLayer()> @ imm = #-0xb8
  3f9ae8: 9801         	ldr	r0, [sp, #0x4]
  3f9aea: f38e fadb    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x38e5b6
  3f9aee: 9b01         	ldr	r3, [sp, #0x4]
  3f9af0: 4618         	mov	r0, r3
  3f9af2: b003         	add	sp, #0xc
  3f9af4: f85d fb04    	ldr	pc, [sp], #4

// ==== SplashLayer::~SplashLayer
//      file offset 0x3f9af8 (= ELF address; Ghidra 0x409af8), 8 bytes, Thumb-2
  3f9af8: f1a0 00e4    	sub.w	r0, r0, #0xe4
  3f9afc: f7ff bfee    	b.w	0x3f9adc <SplashLayer::~SplashLayer()> @ imm = #-0x24

// ==== SplashLayer::onEnter
//      file offset 0x3f9b00 (= ELF address; Ghidra 0x409b00), 20 bytes, Thumb-2
  3f9b00: b500         	push	{lr}
  3f9b02: b083         	sub	sp, #0xc
  3f9b04: 9001         	str	r0, [sp, #0x4]
  3f9b06: 9b01         	ldr	r3, [sp, #0x4]
  3f9b08: 4618         	mov	r0, r3
  3f9b0a: f1b3 fea7    	bl	0x5ad85c <cocos2d::CCLayer::onEnter()> @ imm = #0x1b3d4e
  3f9b0e: b003         	add	sp, #0xc
  3f9b10: f85d fb04    	ldr	pc, [sp], #4

// ==== SplashLayer::onExit
//      file offset 0x3f9b14 (= ELF address; Ghidra 0x409b14), 28 bytes, Thumb-2
  3f9b14: b500         	push	{lr}
  3f9b16: b083         	sub	sp, #0xc
  3f9b18: 9001         	str	r0, [sp, #0x4]
  3f9b1a: 9b01         	ldr	r3, [sp, #0x4]
  3f9b1c: 4618         	mov	r0, r3
  3f9b1e: f197 fbeb    	bl	0x5912f8 <cocos2d::CCNode::unscheduleAllSelectors()> @ imm = #0x1977d6
  3f9b22: 9b01         	ldr	r3, [sp, #0x4]
  3f9b24: 4618         	mov	r0, r3
  3f9b26: f1b3 fed7    	bl	0x5ad8d8 <cocos2d::CCLayer::onExit()> @ imm = #0x1b3dae
  3f9b2a: b003         	add	sp, #0xc
  3f9b2c: f85d fb04    	ldr	pc, [sp], #4

// ==== SplashLayer::updateStep
//      file offset 0x3f9b30 (= ELF address; Ghidra 0x409b30), 428 bytes, Thumb-2
  3f9b30: b530         	push	{r4, r5, lr}
  3f9b32: b085         	sub	sp, #0x14
  3f9b34: 9001         	str	r0, [sp, #0x4]
  3f9b36: 9100         	str	r1, [sp]
  3f9b38: 4c63         	ldr	r4, [pc, #0x18c]        @ 0x3f9cc8 <SplashLayer::updateStep(float)+0x198>
  3f9b3a: 447c         	add	r4, pc
  3f9b3c: 9b01         	ldr	r3, [sp, #0x4]
  3f9b3e: f893 3109    	ldrb.w	r3, [r3, #0x109]
  3f9b42: f083 0301    	eor	r3, r3, #0x1
  3f9b46: b2db         	uxtb	r3, r3
  3f9b48: 2b00         	cmp	r3, #0x0
  3f9b4a: d05b         	beq	0x3f9c04 <SplashLayer::updateStep(float)+0xd4> @ imm = #0xb6
  3f9b4c: 2038         	movs	r0, #0x38
  3f9b4e: f38d ff09    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x38de12
  3f9b52: 4603         	mov	r3, r0
  3f9b54: 461d         	mov	r5, r3
  3f9b56: 4628         	mov	r0, r5
  3f9b58: f7fa fee2    	bl	0x3f4920 <Sound::Sound()> @ imm = #-0x523c
  3f9b5c: 4b5b         	ldr	r3, [pc, #0x16c]        @ 0x3f9ccc <SplashLayer::updateStep(float)+0x19c>
  3f9b5e: 58e3         	ldr	r3, [r4, r3]
  3f9b60: 601d         	str	r5, [r3]
  3f9b62: 4b5a         	ldr	r3, [pc, #0x168]        @ 0x3f9ccc <SplashLayer::updateStep(float)+0x19c>
  3f9b64: 58e3         	ldr	r3, [r4, r3]
  3f9b66: 681d         	ldr	r5, [r3]
  3f9b68: f1e8 fd60    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x1e8ac0
  3f9b6c: 4603         	mov	r3, r0
  3f9b6e: 4618         	mov	r0, r3
  3f9b70: 4b57         	ldr	r3, [pc, #0x15c]        @ 0x3f9cd0 <SplashLayer::updateStep(float)+0x1a0>
  3f9b72: 447b         	add	r3, pc
  3f9b74: 4619         	mov	r1, r3
  3f9b76: 2201         	movs	r2, #0x1
  3f9b78: f1e8 faee    	bl	0x5e2158 <cocos2d::CCUserDefault::getBoolForKey(char const*, bool)> @ imm = #0x1e85dc
  3f9b7c: 4603         	mov	r3, r0
  3f9b7e: f885 3028    	strb.w	r3, [r5, #0x28]
  3f9b82: 4b52         	ldr	r3, [pc, #0x148]        @ 0x3f9ccc <SplashLayer::updateStep(float)+0x19c>
  3f9b84: 58e3         	ldr	r3, [r4, r3]
  3f9b86: 681d         	ldr	r5, [r3]
  3f9b88: f1e8 fd50    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x1e8aa0
  3f9b8c: 4603         	mov	r3, r0
  3f9b8e: 4618         	mov	r0, r3
  3f9b90: 4b50         	ldr	r3, [pc, #0x140]        @ 0x3f9cd4 <SplashLayer::updateStep(float)+0x1a4>
  3f9b92: 447b         	add	r3, pc
  3f9b94: 4619         	mov	r1, r3
  3f9b96: 2201         	movs	r2, #0x1
  3f9b98: f1e8 fade    	bl	0x5e2158 <cocos2d::CCUserDefault::getBoolForKey(char const*, bool)> @ imm = #0x1e85bc
  3f9b9c: 4603         	mov	r3, r0
  3f9b9e: f885 3029    	strb.w	r3, [r5, #0x29]
  3f9ba2: 9b01         	ldr	r3, [sp, #0x4]
  3f9ba4: 2201         	movs	r2, #0x1
  3f9ba6: f883 2109    	strb.w	r2, [r3, #0x109]
  3f9baa: 4b48         	ldr	r3, [pc, #0x120]        @ 0x3f9ccc <SplashLayer::updateStep(float)+0x19c>
  3f9bac: 58e3         	ldr	r3, [r4, r3]
  3f9bae: 681c         	ldr	r4, [r3]
  3f9bb0: ab02         	add	r3, sp, #0x8
  3f9bb2: 4618         	mov	r0, r3
  3f9bb4: f390 fc1e    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x39083c
  3f9bb8: aa03         	add	r2, sp, #0xc
  3f9bba: ab02         	add	r3, sp, #0x8
  3f9bbc: 4610         	mov	r0, r2
  3f9bbe: 4a46         	ldr	r2, [pc, #0x118]        @ 0x3f9cd8 <SplashLayer::updateStep(float)+0x1a8>
  3f9bc0: 447a         	add	r2, pc
  3f9bc2: 4611         	mov	r1, r2
  3f9bc4: 461a         	mov	r2, r3
  3f9bc6: f3bc ff4b    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3bce96
  3f9bca: ab03         	add	r3, sp, #0xc
  3f9bcc: 4620         	mov	r0, r4
  3f9bce: 4619         	mov	r1, r3
  3f9bd0: f04f 527c    	mov.w	r2, #0x3f000000
  3f9bd4: 2301         	movs	r3, #0x1
  3f9bd6: f7fe f865    	bl	0x3f7ca4 <Sound::playMusicFile(std::string, float, bool)> @ imm = #-0x1f36
  3f9bda: ab03         	add	r3, sp, #0xc
  3f9bdc: 4618         	mov	r0, r3
  3f9bde: f3bb fe99    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3bbd32
  3f9be2: ab02         	add	r3, sp, #0x8
  3f9be4: 4618         	mov	r0, r3
  3f9be6: f390 fc09    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x390812
  3f9bea: 9b01         	ldr	r3, [sp, #0x4]
  3f9bec: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3f9bf0: 681b         	ldr	r3, [r3]
  3f9bf2: 3390         	adds	r3, #0x90
  3f9bf4: 681b         	ldr	r3, [r3]
  3f9bf6: 9a01         	ldr	r2, [sp, #0x4]
  3f9bf8: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  3f9bfc: 4610         	mov	r0, r2
  3f9bfe: 2100         	movs	r1, #0x0
  3f9c00: 4798         	blx	r3
  3f9c02: e057         	b	0x3f9cb4 <SplashLayer::updateStep(float)+0x184> @ imm = #0xae
  3f9c04: 9b01         	ldr	r3, [sp, #0x4]
  3f9c06: ed93 7a47    	vldr	s14, [r3, #284]
  3f9c0a: eddd 7a00    	vldr	s15, [sp]
  3f9c0e: ee77 7a27    	vadd.f32	s15, s14, s15
  3f9c12: 9b01         	ldr	r3, [sp, #0x4]
  3f9c14: edc3 7a47    	vstr	s15, [r3, #284]
  3f9c18: 9b01         	ldr	r3, [sp, #0x4]
  3f9c1a: edd3 7a47    	vldr	s15, [r3, #284]
  3f9c1e: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3f9c22: ed9f 7b25    	vldr	d7, [pc, #148]          @ 0x3f9cb8 <SplashLayer::updateStep(float)+0x188>
  3f9c26: eeb4 6bc7    	vcmpe.f64	d6, d7
  3f9c2a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3f9c2e: dd29         	ble	0x3f9c84 <SplashLayer::updateStep(float)+0x154> @ imm = #0x52
  3f9c30: 9b01         	ldr	r3, [sp, #0x4]
  3f9c32: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3f9c36: 681b         	ldr	r3, [r3]
  3f9c38: f503 73d2    	add.w	r3, r3, #0x1a4
  3f9c3c: 681c         	ldr	r4, [r3]
  3f9c3e: 9b01         	ldr	r3, [sp, #0x4]
  3f9c40: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3f9c44: 461d         	mov	r5, r3
  3f9c46: 9b01         	ldr	r3, [sp, #0x4]
  3f9c48: ed93 7a47    	vldr	s14, [r3, #284]
  3f9c4c: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  3f9c50: ee67 7a27    	vmul.f32	s15, s14, s15
  3f9c54: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3f9c58: ec51 0b17    	vmov	r0, r1, d7
  3f9c5c: f6dc e954    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x123d58
  3f9c60: ec41 0b16    	vmov	d6, r0, r1
  3f9c64: ed9f 7b16    	vldr	d7, [pc, #88]           @ 0x3f9cc0 <SplashLayer::updateStep(float)+0x190>
  3f9c68: ee26 6b07    	vmul.f64	d6, d6, d7
  3f9c6c: ed9f 7b14    	vldr	d7, [pc, #80]           @ 0x3f9cc0 <SplashLayer::updateStep(float)+0x190>
  3f9c70: ee36 7b07    	vadd.f64	d7, d6, d7
  3f9c74: eefc 6bc7    	vcvt.u32.f64	s13, d7
  3f9c78: ee16 3a90    	vmov	r3, s13
  3f9c7c: b2db         	uxtb	r3, r3
  3f9c7e: 4628         	mov	r0, r5
  3f9c80: 4619         	mov	r1, r3
  3f9c82: 47a0         	blx	r4
  3f9c84: f77d ff5c    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x82148
  3f9c88: 4603         	mov	r3, r0
  3f9c8a: 4618         	mov	r0, r3
  3f9c8c: 9900         	ldr	r1, [sp]
  3f9c8e: f77f febd    	bl	0x379a0c <NetworkManager::updateNetworkObjects(float)> @ imm = #-0x80286
  3f9c92: e00f         	b	0x3f9cb4 <SplashLayer::updateStep(float)+0x184> @ imm = #0x1e
  3f9c94: 4628         	mov	r0, r5
  3f9c96: f38e fa05    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x38e40a
  3f9c9a: f38e fa07    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x38e40e
  3f9c9e: ab03         	add	r3, sp, #0xc
  3f9ca0: 4618         	mov	r0, r3
  3f9ca2: f3bb fe37    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3bbc6e
  3f9ca6: e7ff         	b	0x3f9ca8 <SplashLayer::updateStep(float)+0x178> @ imm = #-0x2
  3f9ca8: ab02         	add	r3, sp, #0x8
  3f9caa: 4618         	mov	r0, r3
  3f9cac: f390 fba6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x39074c
  3f9cb0: f38e f9fc    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x38e3f8
  3f9cb4: b005         	add	sp, #0x14
  3f9cb6: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3f9cb7); words below are literal-pool data ---
  3f9cb8: 3333         	adds	r3, #0x33
  3f9cba: 3333         	adds	r3, #0x33
  3f9cbc: 3333         	adds	r3, #0x33
  3f9cbe: 4011         	ands	r1, r2
  3f9cc0: 0000         	movs	r0, r0
  3f9cc2: 0000         	movs	r0, r0
  3f9cc4: 4000         	ands	r0, r0
  3f9cc6: 405f         	eors	r7, r3
  3f9cc8: 8ece         	ldrh	r6, [r1, #0x36]
  3f9cca: 0053         	lsls	r3, r2, #0x1
  3f9ccc: d730         	bvc	0x3f9d30 <SplashLayer::onProceed(cocos2d::CCObject*)+0x50> @ imm = #0x60
  3f9cce: ffff f6fe    	<unknown>
  3f9cd2: 003d         	movs	r5, r7
  3f9cd4: f6e6 003d    	<unknown>
  3f9cd8: f6c0 003d    	movt	r0, #0x83d

// ==== SplashLayer::onProceed
//      file offset 0x3f9ce0 (= ELF address; Ghidra 0x409ce0), 140 bytes, Thumb-2
  3f9ce0: b530         	push	{r4, r5, lr}
  3f9ce2: b083         	sub	sp, #0xc
  3f9ce4: 9001         	str	r0, [sp, #0x4]
  3f9ce6: 9100         	str	r1, [sp]
  3f9ce8: 4a1d         	ldr	r2, [pc, #0x74]         @ 0x3f9d60 <SplashLayer::onProceed(cocos2d::CCObject*)+0x80>
  3f9cea: 447a         	add	r2, pc
  3f9cec: 9b01         	ldr	r3, [sp, #0x4]
  3f9cee: f893 3109    	ldrb.w	r3, [r3, #0x109]
  3f9cf2: f083 0301    	eor	r3, r3, #0x1
  3f9cf6: b2db         	uxtb	r3, r3
  3f9cf8: 2b00         	cmp	r3, #0x0
  3f9cfa: d000         	beq	0x3f9cfe <SplashLayer::onProceed(cocos2d::CCObject*)+0x1e> @ imm = #0x0
  3f9cfc: e02e         	b	0x3f9d5c <SplashLayer::onProceed(cocos2d::CCObject*)+0x7c> @ imm = #0x5c
  3f9cfe: 9b01         	ldr	r3, [sp, #0x4]
  3f9d00: f893 3108    	ldrb.w	r3, [r3, #0x108]
  3f9d04: 2b00         	cmp	r3, #0x0
  3f9d06: d000         	beq	0x3f9d0a <SplashLayer::onProceed(cocos2d::CCObject*)+0x2a> @ imm = #0x0
  3f9d08: e028         	b	0x3f9d5c <SplashLayer::onProceed(cocos2d::CCObject*)+0x7c> @ imm = #0x50
  3f9d0a: 9b01         	ldr	r3, [sp, #0x4]
  3f9d0c: 2101         	movs	r1, #0x1
  3f9d0e: f883 1108    	strb.w	r1, [r3, #0x108]
  3f9d12: 4b14         	ldr	r3, [pc, #0x50]         @ 0x3f9d64 <SplashLayer::onProceed(cocos2d::CCObject*)+0x84>
  3f9d14: 58d3         	ldr	r3, [r2, r3]
  3f9d16: 681b         	ldr	r3, [r3]
  3f9d18: 4618         	mov	r0, r3
  3f9d1a: 210d         	movs	r1, #0xd
  3f9d1c: f7fe f850    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #-0x1f60
  3f9d20: f02b f9ca    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #0x2b394
  3f9d24: 4603         	mov	r3, r0
  3f9d26: 4618         	mov	r0, r3
  3f9d28: f02b fc9e    	bl	0x425668 <LeaderBoardBridge::getServerScores()> @ imm = #0x2b93c
  3f9d2c: f026 fe60    	bl	0x4209f0 <AchievementBridge::sharedAchievementBridge()> @ imm = #0x26cc0
  3f9d30: 4603         	mov	r3, r0
  3f9d32: 4618         	mov	r0, r3
  3f9d34: f031 f820    	bl	0x42ad78 <AchievementBridge::getServerProgress()> @ imm = #0x31040
  3f9d38: f1a1 fc1c    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x1a1838
  3f9d3c: 4604         	mov	r4, r0
  3f9d3e: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x3f9d68 <SplashLayer::onProceed(cocos2d::CCObject*)+0x88>
  3f9d40: 447b         	add	r3, pc
  3f9d42: 681d         	ldr	r5, [r3]
  3f9d44: f76f fec6    	bl	0x369ad4 <MenuLayer::scene()> @ imm = #-0x90274
  3f9d48: 4603         	mov	r3, r0
  3f9d4a: 4628         	mov	r0, r5
  3f9d4c: 4619         	mov	r1, r3
  3f9d4e: f1b8 ff99    	bl	0x5b2c84 <cocos2d::CCTransitionFade::create(float, cocos2d::CCScene*)> @ imm = #0x1b8f32
  3f9d52: 4603         	mov	r3, r0
  3f9d54: 4620         	mov	r0, r4
  3f9d56: 4619         	mov	r1, r3
  3f9d58: f1a2 fb00    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x1a2600
  3f9d5c: b003         	add	sp, #0xc
  3f9d5e: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3f9d5f); words below are literal-pool data ---
  3f9d60: 8d1e         	ldrh	r6, [r3, #0x28]
  3f9d62: 0053         	lsls	r3, r2, #0x1
  3f9d64: d730         	bvc	0x3f9dc8 <SplashLayer::onStartedMatchFromMMVC()+0x5c> @ imm = #0x60
  3f9d66: ffff 9948    	vtbx.8	d25, {d15, d16}, d8
  3f9d6a: 0053         	lsls	r3, r2, #0x1

// ==== SplashLayer::onStartedMatchFromMMVC
//      file offset 0x3f9d6c (= ELF address; Ghidra 0x409d6c), 112 bytes, Thumb-2
  3f9d6c: b530         	push	{r4, r5, lr}
  3f9d6e: b083         	sub	sp, #0xc
  3f9d70: 9001         	str	r0, [sp, #0x4]
  3f9d72: 4b14         	ldr	r3, [pc, #0x50]         @ 0x3f9dc4 <SplashLayer::onStartedMatchFromMMVC()+0x58>
  3f9d74: 447b         	add	r3, pc
  3f9d76: 4a14         	ldr	r2, [pc, #0x50]         @ 0x3f9dc8 <SplashLayer::onStartedMatchFromMMVC()+0x5c>
  3f9d78: 589a         	ldr	r2, [r3, r2]
  3f9d7a: 2100         	movs	r1, #0x0
  3f9d7c: 7011         	strb	r1, [r2]
  3f9d7e: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x3f9dcc <SplashLayer::onStartedMatchFromMMVC()+0x60>
  3f9d80: 589a         	ldr	r2, [r3, r2]
  3f9d82: 2104         	movs	r1, #0x4
  3f9d84: 6011         	str	r1, [r2]
  3f9d86: 4a12         	ldr	r2, [pc, #0x48]         @ 0x3f9dd0 <SplashLayer::onStartedMatchFromMMVC()+0x64>
  3f9d88: 589a         	ldr	r2, [r3, r2]
  3f9d8a: 2103         	movs	r1, #0x3
  3f9d8c: 6011         	str	r1, [r2]
  3f9d8e: 4a11         	ldr	r2, [pc, #0x44]         @ 0x3f9dd4 <SplashLayer::onStartedMatchFromMMVC()+0x68>
  3f9d90: 589b         	ldr	r3, [r3, r2]
  3f9d92: 681b         	ldr	r3, [r3]
  3f9d94: 4618         	mov	r0, r3
  3f9d96: 210d         	movs	r1, #0xd
  3f9d98: f7fe f812    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #-0x1fdc
  3f9d9c: f1a1 fbea    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x1a17d4
  3f9da0: 4604         	mov	r4, r0
  3f9da2: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x3f9dd8 <SplashLayer::onStartedMatchFromMMVC()+0x6c>
  3f9da4: 447b         	add	r3, pc
  3f9da6: 681d         	ldr	r5, [r3]
  3f9da8: f757 fc10    	bl	0x3515cc <LobbyLayer::scene()> @ imm = #-0xa87e0
  3f9dac: 4603         	mov	r3, r0
  3f9dae: 4628         	mov	r0, r5
  3f9db0: 4619         	mov	r1, r3
  3f9db2: f1b8 ff67    	bl	0x5b2c84 <cocos2d::CCTransitionFade::create(float, cocos2d::CCScene*)> @ imm = #0x1b8ece
  3f9db6: 4603         	mov	r3, r0
  3f9db8: 4620         	mov	r0, r4
  3f9dba: 4619         	mov	r1, r3
  3f9dbc: f1a2 face    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x1a259c
  3f9dc0: b003         	add	sp, #0xc
  3f9dc2: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3f9dc3); words below are literal-pool data ---
  3f9dc4: 8c94         	ldrh	r4, [r2, #0x24]
  3f9dc6: 0053         	lsls	r3, r2, #0x1
  3f9dc8: da58         	bge	0x3f9e7c <SplashLayer::inviteCheck(float)+0xa0> @ imm = #0xb0
  3f9dca: ffff d838    	vqshrun.s64	d29, q12, #0x1
  3f9dce: ffff daa0    	vtbl.8	d29, {d31, fpinst2, mvfr0}, d16
  3f9dd2: ffff d730    	vqshl.u32	d29, d16, #0x1f
  3f9dd6: ffff 98e4    	vtbx.8	d25, {d31}, d20
  3f9dda: 0053         	lsls	r3, r2, #0x1

// ==== SplashLayer::inviteCheck
//      file offset 0x3f9ddc (= ELF address; Ghidra 0x409ddc), 52 bytes, Thumb-2
  3f9ddc: b500         	push	{lr}
  3f9dde: b083         	sub	sp, #0xc
  3f9de0: 9001         	str	r0, [sp, #0x4]
  3f9de2: 9100         	str	r1, [sp]
  3f9de4: f77d feac    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x822a8
  3f9de8: 4603         	mov	r3, r0
  3f9dea: 4618         	mov	r0, r3
  3f9dec: f780 fca2    	bl	0x37a734 <NetworkManager::getWasInvited()> @ imm = #-0x7f6bc
  3f9df0: 4603         	mov	r3, r0
  3f9df2: 2b00         	cmp	r3, #0x0
  3f9df4: d009         	beq	0x3f9e0a <SplashLayer::inviteCheck(float)+0x2e> @ imm = #0x12
  3f9df6: f77d fea3    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x822ba
  3f9dfa: 4603         	mov	r3, r0
  3f9dfc: 4618         	mov	r0, r3
  3f9dfe: 2100         	movs	r1, #0x0
  3f9e00: f780 fca0    	bl	0x37a744 <NetworkManager::setWasInvited(bool)> @ imm = #-0x7f6c0
  3f9e04: 9801         	ldr	r0, [sp, #0x4]
  3f9e06: f7ff ffb1    	bl	0x3f9d6c <SplashLayer::onStartedMatchFromMMVC()> @ imm = #-0x9e
  3f9e0a: b003         	add	sp, #0xc
  3f9e0c: f85d fb04    	ldr	pc, [sp], #4
