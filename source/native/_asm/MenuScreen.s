// MenuScreen: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 22 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../MenuScreen.cpp

// ==== MenuScreen::create
//      file offset 0x33a17c (= ELF address; Ghidra 0x34a17c), 112 bytes, Thumb-2
  33a17c: b510         	push	{r4, lr}
  33a17e: b082         	sub	sp, #0x8
  33a180: f44f 709a    	mov.w	r0, #0x134
  33a184: f04d f3ee    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x44d7dc
  33a188: 4603         	mov	r3, r0
  33a18a: 461c         	mov	r4, r3
  33a18c: 4620         	mov	r0, r4
  33a18e: f033 f835    	bl	0x36d1fc <MenuScreen::MenuScreen()> @ imm = #0x3306a
  33a192: 9401         	str	r4, [sp, #0x4]
  33a194: 9b01         	ldr	r3, [sp, #0x4]
  33a196: 2b00         	cmp	r3, #0x0
  33a198: d00a         	beq	0x33a1b0 <MenuScreen::create()+0x34> @ imm = #0x14
  33a19a: 9b01         	ldr	r3, [sp, #0x4]
  33a19c: 681b         	ldr	r3, [r3]
  33a19e: 3318         	adds	r3, #0x18
  33a1a0: 681b         	ldr	r3, [r3]
  33a1a2: 9801         	ldr	r0, [sp, #0x4]
  33a1a4: 4798         	blx	r3
  33a1a6: 4603         	mov	r3, r0
  33a1a8: 2b00         	cmp	r3, #0x0
  33a1aa: d001         	beq	0x33a1b0 <MenuScreen::create()+0x34> @ imm = #0x2
  33a1ac: 2301         	movs	r3, #0x1
  33a1ae: e000         	b	0x33a1b2 <MenuScreen::create()+0x36> @ imm = #0x0
  33a1b0: 2300         	movs	r3, #0x0
  33a1b2: 2b00         	cmp	r3, #0x0
  33a1b4: d005         	beq	0x33a1c2 <MenuScreen::create()+0x46> @ imm = #0xa
  33a1b6: 9b01         	ldr	r3, [sp, #0x4]
  33a1b8: 4618         	mov	r0, r3
  33a1ba: f25d fe9f    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x25dd3e
  33a1be: 9b01         	ldr	r3, [sp, #0x4]
  33a1c0: e011         	b	0x33a1e6 <MenuScreen::create()+0x6a> @ imm = #0x22
  33a1c2: 9b01         	ldr	r3, [sp, #0x4]
  33a1c4: 2b00         	cmp	r3, #0x0
  33a1c6: d005         	beq	0x33a1d4 <MenuScreen::create()+0x58> @ imm = #0xa
  33a1c8: 9b01         	ldr	r3, [sp, #0x4]
  33a1ca: 681b         	ldr	r3, [r3]
  33a1cc: 3308         	adds	r3, #0x8
  33a1ce: 681b         	ldr	r3, [r3]
  33a1d0: 9801         	ldr	r0, [sp, #0x4]
  33a1d2: 4798         	blx	r3
  33a1d4: 2300         	movs	r3, #0x0
  33a1d6: 9301         	str	r3, [sp, #0x4]
  33a1d8: 2300         	movs	r3, #0x0
  33a1da: e004         	b	0x33a1e6 <MenuScreen::create()+0x6a> @ imm = #0x8
  33a1dc: 4620         	mov	r0, r4
  33a1de: f04d f761    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x44dec2
  33a1e2: f04d f763    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x44dec6
  33a1e6: 4618         	mov	r0, r3
  33a1e8: b002         	add	sp, #0x8
  33a1ea: bd10         	pop	{r4, pc}

// ==== MenuScreen::MenuScreen
//      file offset 0x36d1fc (= ELF address; Ghidra 0x37d1fc), 96 bytes, Thumb-2
  36d1fc: b510         	push	{r4, lr}
  36d1fe: b082         	sub	sp, #0x8
  36d200: 9001         	str	r0, [sp, #0x4]
  36d202: 4c14         	ldr	r4, [pc, #0x50]         @ 0x36d254 <MenuScreen::MenuScreen()+0x58>
  36d204: 447c         	add	r4, pc
  36d206: 9b01         	ldr	r3, [sp, #0x4]
  36d208: 4618         	mov	r0, r3
  36d20a: f222 fa15    	bl	0x58f638 <cocos2d::CCNode::CCNode()> @ imm = #0x22242a
  36d20e: 9b01         	ldr	r3, [sp, #0x4]
  36d210: 4a11         	ldr	r2, [pc, #0x44]         @ 0x36d258 <MenuScreen::MenuScreen()+0x5c>
  36d212: 58a2         	ldr	r2, [r4, r2]
  36d214: 3208         	adds	r2, #0x8
  36d216: 601a         	str	r2, [r3]
  36d218: 9b01         	ldr	r3, [sp, #0x4]
  36d21a: f503 7388    	add.w	r3, r3, #0x110
  36d21e: 4618         	mov	r0, r3
  36d220: f225 ff2a    	bl	0x593078 <cocos2d::CCSize::CCSize()> @ imm = #0x225e54
  36d224: 9b01         	ldr	r3, [sp, #0x4]
  36d226: f503 738c    	add.w	r3, r3, #0x118
  36d22a: 4618         	mov	r0, r3
  36d22c: f225 fd52    	bl	0x592cd4 <cocos2d::CCPoint::CCPoint()> @ imm = #0x225aa4
  36d230: 9b01         	ldr	r3, [sp, #0x4]
  36d232: f503 7394    	add.w	r3, r3, #0x128
  36d236: 4618         	mov	r0, r3
  36d238: f225 fd4c    	bl	0x592cd4 <cocos2d::CCPoint::CCPoint()> @ imm = #0x225a98
  36d23c: 9b01         	ldr	r3, [sp, #0x4]
  36d23e: e005         	b	0x36d24c <MenuScreen::MenuScreen()+0x50> @ imm = #0xa
  36d240: 9b01         	ldr	r3, [sp, #0x4]
  36d242: 4618         	mov	r0, r3
  36d244: f222 fafe    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x2225fc
  36d248: f01a f730    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x41ae60
  36d24c: 4618         	mov	r0, r3
  36d24e: b002         	add	sp, #0x8
  36d250: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x36d251); words below are literal-pool data ---
  36d252: bf00         	nop
  36d254: 5804         	ldr	r4, [r0, r0]
  36d256: 005c         	lsls	r4, r3, #0x1
  36d258: dbf8         	blt	0x36d24c <MenuScreen::MenuScreen()+0x50> @ imm = #-0x10
  36d25a: ffff b5f0    	<unknown>

// ==== MenuScreen::init
//      file offset 0x36d25c (= ELF address; Ghidra 0x37d25c), 2108 bytes, Thumb-2
  36d25c: b5f0         	push	{r4, r5, r6, r7, lr}
  36d25e: b095         	sub	sp, #0x54
  36d260: 9003         	str	r0, [sp, #0xc]
  36d262: f8df 47cc    	ldr.w	r4, [pc, #0x7cc]        @ 0x36da30 <MenuScreen::init()+0x7d4>
  36d266: 447c         	add	r4, pc
  36d268: 9b03         	ldr	r3, [sp, #0xc]
  36d26a: 4618         	mov	r0, r3
  36d26c: f222 fbee    	bl	0x58fa4c <cocos2d::CCNode::init()> @ imm = #0x2227dc
  36d270: 4603         	mov	r3, r0
  36d272: f88d 3013    	strb.w	r3, [sp, #0x13]
  36d276: f89d 3013    	ldrb.w	r3, [sp, #0x13]
  36d27a: f083 0301    	eor	r3, r3, #0x1
  36d27e: b2db         	uxtb	r3, r3
  36d280: 2b00         	cmp	r3, #0x0
  36d282: d001         	beq	0x36d288 <MenuScreen::init()+0x2c> @ imm = #0x2
  36d284: 2300         	movs	r3, #0x0
  36d286: e3d0         	b	0x36da2a <MenuScreen::init()+0x7ce> @ imm = #0x7a0
  36d288: 9b03         	ldr	r3, [sp, #0xc]
  36d28a: 681b         	ldr	r3, [r3]
  36d28c: 3390         	adds	r3, #0x90
  36d28e: 681b         	ldr	r3, [r3]
  36d290: 9a03         	ldr	r2, [sp, #0xc]
  36d292: 4610         	mov	r0, r2
  36d294: 2100         	movs	r1, #0x0
  36d296: 4798         	blx	r3
  36d298: 9b03         	ldr	r3, [sp, #0xc]
  36d29a: 2200         	movs	r2, #0x0
  36d29c: f883 2124    	strb.w	r2, [r3, #0x124]
  36d2a0: 9b03         	ldr	r3, [sp, #0xc]
  36d2a2: f04f 0200    	mov.w	r2, #0x0
  36d2a6: f8c3 2120    	str.w	r2, [r3, #0x120]
  36d2aa: 9b03         	ldr	r3, [sp, #0xc]
  36d2ac: f04f 0200    	mov.w	r2, #0x0
  36d2b0: f8c3 2130    	str.w	r2, [r3, #0x130]
  36d2b4: 9b03         	ldr	r3, [sp, #0xc]
  36d2b6: f503 7594    	add.w	r5, r3, #0x128
  36d2ba: ab12         	add	r3, sp, #0x48
  36d2bc: 4618         	mov	r0, r3
  36d2be: f44f 4180    	mov.w	r1, #0x4000
  36d2c2: f2cc 611c    	movt	r1, #0xc61c
  36d2c6: f44f 4280    	mov.w	r2, #0x4000
  36d2ca: f2cc 621c    	movt	r2, #0xc61c
  36d2ce: f225 fd0f    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x225a1e
  36d2d2: ab12         	add	r3, sp, #0x48
  36d2d4: 4628         	mov	r0, r5
  36d2d6: 4619         	mov	r1, r3
  36d2d8: f225 fd38    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x225a70
  36d2dc: 9b03         	ldr	r3, [sp, #0xc]
  36d2de: 681b         	ldr	r3, [r3]
  36d2e0: 334c         	adds	r3, #0x4c
  36d2e2: 681b         	ldr	r3, [r3]
  36d2e4: 9903         	ldr	r1, [sp, #0xc]
  36d2e6: 9a03         	ldr	r2, [sp, #0xc]
  36d2e8: f502 7294    	add.w	r2, r2, #0x128
  36d2ec: 4608         	mov	r0, r1
  36d2ee: 4611         	mov	r1, r2
  36d2f0: 4798         	blx	r3
  36d2f2: 9b03         	ldr	r3, [sp, #0xc]
  36d2f4: f503 7388    	add.w	r3, r3, #0x110
  36d2f8: 4618         	mov	r0, r3
  36d2fa: f8df 3738    	ldr.w	r3, [pc, #0x738]        @ 0x36da34 <MenuScreen::init()+0x7d8>
  36d2fe: 58e3         	ldr	r3, [r4, r3]
  36d300: 4619         	mov	r1, r3
  36d302: f225 fef5    	bl	0x5930f0 <cocos2d::CCSize::operator=(cocos2d::CCSize const&)> @ imm = #0x225dea
  36d306: 9b03         	ldr	r3, [sp, #0xc]
  36d308: f503 758c    	add.w	r5, r3, #0x118
  36d30c: 9b03         	ldr	r3, [sp, #0xc]
  36d30e: ed93 7a44    	vldr	s14, [r3, #272]
  36d312: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  36d316: eec7 6a27    	vdiv.f32	s13, s14, s15
  36d31a: 9b03         	ldr	r3, [sp, #0xc]
  36d31c: ed93 7a45    	vldr	s14, [r3, #276]
  36d320: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  36d324: eec7 7a27    	vdiv.f32	s15, s14, s15
  36d328: ab12         	add	r3, sp, #0x48
  36d32a: 4618         	mov	r0, r3
  36d32c: ee16 1a90    	vmov	r1, s13
  36d330: ee17 2a90    	vmov	r2, s15
  36d334: f225 fcdc    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2259b8
  36d338: ab12         	add	r3, sp, #0x48
  36d33a: 4628         	mov	r0, r5
  36d33c: 4619         	mov	r1, r3
  36d33e: f225 fd05    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x225a0a
  36d342: f8df 36f4    	ldr.w	r3, [pc, #0x6f4]        @ 0x36da38 <MenuScreen::init()+0x7dc>
  36d346: 447b         	add	r3, pc
  36d348: 4618         	mov	r0, r3
  36d34a: f26a ff1b    	bl	0x5d8184 <cocos2d::CCSprite::create(char const*)> @ imm = #0x26ae36
  36d34e: 4602         	mov	r2, r0
  36d350: 9b03         	ldr	r3, [sp, #0xc]
  36d352: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  36d356: 9b03         	ldr	r3, [sp, #0xc]
  36d358: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  36d35c: 4618         	mov	r0, r3
  36d35e: f22a fdc3    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x22ab86
  36d362: 9b03         	ldr	r3, [sp, #0xc]
  36d364: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  36d368: 681b         	ldr	r3, [r3]
  36d36a: 334c         	adds	r3, #0x4c
  36d36c: 681b         	ldr	r3, [r3]
  36d36e: 9a03         	ldr	r2, [sp, #0xc]
  36d370: f8d2 10e4    	ldr.w	r1, [r2, #0xe4]
  36d374: 9a03         	ldr	r2, [sp, #0xc]
  36d376: f502 728c    	add.w	r2, r2, #0x118
  36d37a: 4608         	mov	r0, r1
  36d37c: 4611         	mov	r1, r2
  36d37e: 4798         	blx	r3
  36d380: 9b03         	ldr	r3, [sp, #0xc]
  36d382: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  36d386: 681b         	ldr	r3, [r3]
  36d388: f503 73d2    	add.w	r3, r3, #0x1a4
  36d38c: 681b         	ldr	r3, [r3]
  36d38e: 9a03         	ldr	r2, [sp, #0xc]
  36d390: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  36d394: 4610         	mov	r0, r2
  36d396: 21b4         	movs	r1, #0xb4
  36d398: 4798         	blx	r3
  36d39a: 9b03         	ldr	r3, [sp, #0xc]
  36d39c: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  36d3a0: 681b         	ldr	r3, [r3]
  36d3a2: 3340         	adds	r3, #0x40
  36d3a4: 681b         	ldr	r3, [r3]
  36d3a6: 9a03         	ldr	r2, [sp, #0xc]
  36d3a8: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  36d3ac: 4610         	mov	r0, r2
  36d3ae: f243 3133    	movw	r1, #0x3333
  36d3b2: f6c3 7133    	movt	r1, #0x3f33
  36d3b6: 4798         	blx	r3
  36d3b8: 9b03         	ldr	r3, [sp, #0xc]
  36d3ba: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  36d3be: 681b         	ldr	r3, [r3]
  36d3c0: f503 73de    	add.w	r3, r3, #0x1bc
  36d3c4: 681d         	ldr	r5, [r3]
  36d3c6: 9b03         	ldr	r3, [sp, #0xc]
  36d3c8: f8d3 60e4    	ldr.w	r6, [r3, #0xe4]
  36d3cc: 2064         	movs	r0, #0x64
  36d3ce: 2164         	movs	r1, #0x64
  36d3d0: 2264         	movs	r2, #0x64
  36d3d2: f7ff f815    	bl	0x36c400 <non-virtual thunk to MenuLayer::keyBackClicked()+0x138> @ imm = #-0xfd6
  36d3d6: 4603         	mov	r3, r0
  36d3d8: 461a         	mov	r2, r3
  36d3da: f88d 2048    	strb.w	r2, [sp, #0x48]
  36d3de: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  36d3e2: f88d 2049    	strb.w	r2, [sp, #0x49]
  36d3e6: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  36d3ea: f88d 304a    	strb.w	r3, [sp, #0x4a]
  36d3ee: ab12         	add	r3, sp, #0x48
  36d3f0: 4630         	mov	r0, r6
  36d3f2: 4619         	mov	r1, r3
  36d3f4: 47a8         	blx	r5
  36d3f6: 9b03         	ldr	r3, [sp, #0xc]
  36d3f8: 681b         	ldr	r3, [r3]
  36d3fa: 33c8         	adds	r3, #0xc8
  36d3fc: 681b         	ldr	r3, [r3]
  36d3fe: 9903         	ldr	r1, [sp, #0xc]
  36d400: 9a03         	ldr	r2, [sp, #0xc]
  36d402: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  36d406: 4608         	mov	r0, r1
  36d408: 4611         	mov	r1, r2
  36d40a: 4798         	blx	r3
  36d40c: 2320         	movs	r3, #0x20
  36d40e: 9300         	str	r3, [sp]
  36d410: f8df 3628    	ldr.w	r3, [pc, #0x628]        @ 0x36da3c <MenuScreen::init()+0x7e0>
  36d414: 447b         	add	r3, pc
  36d416: 4618         	mov	r0, r3
  36d418: f8df 3624    	ldr.w	r3, [pc, #0x624]        @ 0x36da40 <MenuScreen::init()+0x7e4>
  36d41c: 447b         	add	r3, pc
  36d41e: 4619         	mov	r1, r3
  36d420: 2220         	movs	r2, #0x20
  36d422: 2320         	movs	r3, #0x20
  36d424: f237 ffa8    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x237f50
  36d428: 4602         	mov	r2, r0
  36d42a: 9b03         	ldr	r3, [sp, #0xc]
  36d42c: f8c3 20fc    	str.w	r2, [r3, #0xfc]
  36d430: 9b03         	ldr	r3, [sp, #0xc]
  36d432: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36d436: 4618         	mov	r0, r3
  36d438: f22a fd56    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x22aaac
  36d43c: 9b03         	ldr	r3, [sp, #0xc]
  36d43e: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36d442: 4618         	mov	r0, r3
  36d444: 2118         	movs	r1, #0x18
  36d446: f238 fc9d    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x23893a
  36d44a: 9b03         	ldr	r3, [sp, #0xc]
  36d44c: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36d450: 681b         	ldr	r3, [r3]
  36d452: 3340         	adds	r3, #0x40
  36d454: 681b         	ldr	r3, [r3]
  36d456: 9a03         	ldr	r2, [sp, #0xc]
  36d458: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  36d45c: 4610         	mov	r0, r2
  36d45e: f243 3133    	movw	r1, #0x3333
  36d462: f6c3 7133    	movt	r1, #0x3f33
  36d466: 4798         	blx	r3
  36d468: 9b03         	ldr	r3, [sp, #0xc]
  36d46a: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36d46e: 681b         	ldr	r3, [r3]
  36d470: 334c         	adds	r3, #0x4c
  36d472: 681d         	ldr	r5, [r3]
  36d474: 9b03         	ldr	r3, [sp, #0xc]
  36d476: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36d47a: 461e         	mov	r6, r3
  36d47c: 9b03         	ldr	r3, [sp, #0xc]
  36d47e: f503 778c    	add.w	r7, r3, #0x118
  36d482: ab10         	add	r3, sp, #0x40
  36d484: 4618         	mov	r0, r3
  36d486: f04f 0100    	mov.w	r1, #0x0
  36d48a: f04f 0200    	mov.w	r2, #0x0
  36d48e: f2c4 2270    	movt	r2, #0x4270
  36d492: f225 fc2d    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x22585a
  36d496: aa12         	add	r2, sp, #0x48
  36d498: ab10         	add	r3, sp, #0x40
  36d49a: 4610         	mov	r0, r2
  36d49c: 4639         	mov	r1, r7
  36d49e: 461a         	mov	r2, r3
  36d4a0: f7fe ffdc    	bl	0x36c45c <non-virtual thunk to MenuLayer::keyBackClicked()+0x194> @ imm = #-0x1048
  36d4a4: ab12         	add	r3, sp, #0x48
  36d4a6: 4630         	mov	r0, r6
  36d4a8: 4619         	mov	r1, r3
  36d4aa: 47a8         	blx	r5
  36d4ac: 9b03         	ldr	r3, [sp, #0xc]
  36d4ae: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36d4b2: 681b         	ldr	r3, [r3]
  36d4b4: 337c         	adds	r3, #0x7c
  36d4b6: 681d         	ldr	r5, [r3]
  36d4b8: 9b03         	ldr	r3, [sp, #0xc]
  36d4ba: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36d4be: 461e         	mov	r6, r3
  36d4c0: ab12         	add	r3, sp, #0x48
  36d4c2: 4618         	mov	r0, r3
  36d4c4: f04f 517c    	mov.w	r1, #0x3f000000
  36d4c8: f04f 527c    	mov.w	r2, #0x3f000000
  36d4cc: f225 fc10    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x225820
  36d4d0: ab12         	add	r3, sp, #0x48
  36d4d2: 4630         	mov	r0, r6
  36d4d4: 4619         	mov	r1, r3
  36d4d6: 47a8         	blx	r5
  36d4d8: 9b03         	ldr	r3, [sp, #0xc]
  36d4da: 681b         	ldr	r3, [r3]
  36d4dc: 33cc         	adds	r3, #0xcc
  36d4de: 681b         	ldr	r3, [r3]
  36d4e0: 9903         	ldr	r1, [sp, #0xc]
  36d4e2: 9a03         	ldr	r2, [sp, #0xc]
  36d4e4: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  36d4e8: 4608         	mov	r0, r1
  36d4ea: 4611         	mov	r1, r2
  36d4ec: 2200         	movs	r2, #0x0
  36d4ee: 4798         	blx	r3
  36d4f0: 2320         	movs	r3, #0x20
  36d4f2: 9300         	str	r3, [sp]
  36d4f4: f8df 354c    	ldr.w	r3, [pc, #0x54c]        @ 0x36da44 <MenuScreen::init()+0x7e8>
  36d4f8: 447b         	add	r3, pc
  36d4fa: 4618         	mov	r0, r3
  36d4fc: f8df 3548    	ldr.w	r3, [pc, #0x548]        @ 0x36da48 <MenuScreen::init()+0x7ec>
  36d500: 447b         	add	r3, pc
  36d502: 4619         	mov	r1, r3
  36d504: 2220         	movs	r2, #0x20
  36d506: 2320         	movs	r3, #0x20
  36d508: f237 ff36    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x237e6c
  36d50c: 4602         	mov	r2, r0
  36d50e: 9b03         	ldr	r3, [sp, #0xc]
  36d510: f8c3 2100    	str.w	r2, [r3, #0x100]
  36d514: 9b03         	ldr	r3, [sp, #0xc]
  36d516: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  36d51a: 4618         	mov	r0, r3
  36d51c: f22a fce4    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x22a9c8
  36d520: 9b03         	ldr	r3, [sp, #0xc]
  36d522: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  36d526: 4618         	mov	r0, r3
  36d528: 2118         	movs	r1, #0x18
  36d52a: f238 fc2b    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x238856
  36d52e: 9b03         	ldr	r3, [sp, #0xc]
  36d530: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  36d534: 681b         	ldr	r3, [r3]
  36d536: 3340         	adds	r3, #0x40
  36d538: 681b         	ldr	r3, [r3]
  36d53a: 9a03         	ldr	r2, [sp, #0xc]
  36d53c: f8d2 2100    	ldr.w	r2, [r2, #0x100]
  36d540: 4610         	mov	r0, r2
  36d542: f04f 517c    	mov.w	r1, #0x3f000000
  36d546: 4798         	blx	r3
  36d548: 9b03         	ldr	r3, [sp, #0xc]
  36d54a: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  36d54e: 681b         	ldr	r3, [r3]
  36d550: 334c         	adds	r3, #0x4c
  36d552: 681d         	ldr	r5, [r3]
  36d554: 9b03         	ldr	r3, [sp, #0xc]
  36d556: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  36d55a: 461e         	mov	r6, r3
  36d55c: 9b03         	ldr	r3, [sp, #0xc]
  36d55e: f503 778c    	add.w	r7, r3, #0x118
  36d562: ab10         	add	r3, sp, #0x40
  36d564: 4618         	mov	r0, r3
  36d566: f04f 0100    	mov.w	r1, #0x0
  36d56a: f2cc 11c8    	movt	r1, #0xc1c8
  36d56e: f04f 0200    	mov.w	r2, #0x0
  36d572: f2c4 12f0    	movt	r2, #0x41f0
  36d576: f225 fbbb    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x225776
  36d57a: aa12         	add	r2, sp, #0x48
  36d57c: ab10         	add	r3, sp, #0x40
  36d57e: 4610         	mov	r0, r2
  36d580: 4639         	mov	r1, r7
  36d582: 461a         	mov	r2, r3
  36d584: f7fe ff6a    	bl	0x36c45c <non-virtual thunk to MenuLayer::keyBackClicked()+0x194> @ imm = #-0x112c
  36d588: ab12         	add	r3, sp, #0x48
  36d58a: 4630         	mov	r0, r6
  36d58c: 4619         	mov	r1, r3
  36d58e: 47a8         	blx	r5
  36d590: 9b03         	ldr	r3, [sp, #0xc]
  36d592: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  36d596: 681b         	ldr	r3, [r3]
  36d598: 337c         	adds	r3, #0x7c
  36d59a: 681d         	ldr	r5, [r3]
  36d59c: 9b03         	ldr	r3, [sp, #0xc]
  36d59e: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  36d5a2: 461e         	mov	r6, r3
  36d5a4: ab12         	add	r3, sp, #0x48
  36d5a6: 4618         	mov	r0, r3
  36d5a8: f04f 517c    	mov.w	r1, #0x3f000000
  36d5ac: f04f 527c    	mov.w	r2, #0x3f000000
  36d5b0: f225 fb9e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x22573c
  36d5b4: ab12         	add	r3, sp, #0x48
  36d5b6: 4630         	mov	r0, r6
  36d5b8: 4619         	mov	r1, r3
  36d5ba: 47a8         	blx	r5
  36d5bc: 9b03         	ldr	r3, [sp, #0xc]
  36d5be: 681b         	ldr	r3, [r3]
  36d5c0: 33cc         	adds	r3, #0xcc
  36d5c2: 681b         	ldr	r3, [r3]
  36d5c4: 9903         	ldr	r1, [sp, #0xc]
  36d5c6: 9a03         	ldr	r2, [sp, #0xc]
  36d5c8: f8d2 2100    	ldr.w	r2, [r2, #0x100]
  36d5cc: 4608         	mov	r0, r1
  36d5ce: 4611         	mov	r1, r2
  36d5d0: 2200         	movs	r2, #0x0
  36d5d2: 4798         	blx	r3
  36d5d4: 2320         	movs	r3, #0x20
  36d5d6: 9300         	str	r3, [sp]
  36d5d8: f8df 3470    	ldr.w	r3, [pc, #0x470]        @ 0x36da4c <MenuScreen::init()+0x7f0>
  36d5dc: 447b         	add	r3, pc
  36d5de: 4618         	mov	r0, r3
  36d5e0: f8df 346c    	ldr.w	r3, [pc, #0x46c]        @ 0x36da50 <MenuScreen::init()+0x7f4>
  36d5e4: 447b         	add	r3, pc
  36d5e6: 4619         	mov	r1, r3
  36d5e8: 2220         	movs	r2, #0x20
  36d5ea: 2320         	movs	r3, #0x20
  36d5ec: f237 fec4    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x237d88
  36d5f0: 4602         	mov	r2, r0
  36d5f2: 9b03         	ldr	r3, [sp, #0xc]
  36d5f4: f8c3 2104    	str.w	r2, [r3, #0x104]
  36d5f8: 9b03         	ldr	r3, [sp, #0xc]
  36d5fa: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  36d5fe: 4618         	mov	r0, r3
  36d600: f22a fc72    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x22a8e4
  36d604: 9b03         	ldr	r3, [sp, #0xc]
  36d606: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  36d60a: 4618         	mov	r0, r3
  36d60c: 2118         	movs	r1, #0x18
  36d60e: f238 fbb9    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x238772
  36d612: 9b03         	ldr	r3, [sp, #0xc]
  36d614: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  36d618: 681b         	ldr	r3, [r3]
  36d61a: 3340         	adds	r3, #0x40
  36d61c: 681b         	ldr	r3, [r3]
  36d61e: 9a03         	ldr	r2, [sp, #0xc]
  36d620: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  36d624: 4610         	mov	r0, r2
  36d626: f04f 517c    	mov.w	r1, #0x3f000000
  36d62a: 4798         	blx	r3
  36d62c: 9b03         	ldr	r3, [sp, #0xc]
  36d62e: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  36d632: 681b         	ldr	r3, [r3]
  36d634: 334c         	adds	r3, #0x4c
  36d636: 681d         	ldr	r5, [r3]
  36d638: 9b03         	ldr	r3, [sp, #0xc]
  36d63a: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  36d63e: 461e         	mov	r6, r3
  36d640: 9b03         	ldr	r3, [sp, #0xc]
  36d642: f503 778c    	add.w	r7, r3, #0x118
  36d646: ab10         	add	r3, sp, #0x40
  36d648: 4618         	mov	r0, r3
  36d64a: f04f 0100    	mov.w	r1, #0x0
  36d64e: f2cc 11c8    	movt	r1, #0xc1c8
  36d652: f04f 0200    	mov.w	r2, #0x0
  36d656: f2c4 02a0    	movt	r2, #0x40a0
  36d65a: f225 fb49    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x225692
  36d65e: aa12         	add	r2, sp, #0x48
  36d660: ab10         	add	r3, sp, #0x40
  36d662: 4610         	mov	r0, r2
  36d664: 4639         	mov	r1, r7
  36d666: 461a         	mov	r2, r3
  36d668: f7fe fef8    	bl	0x36c45c <non-virtual thunk to MenuLayer::keyBackClicked()+0x194> @ imm = #-0x1210
  36d66c: ab12         	add	r3, sp, #0x48
  36d66e: 4630         	mov	r0, r6
  36d670: 4619         	mov	r1, r3
  36d672: 47a8         	blx	r5
  36d674: 9b03         	ldr	r3, [sp, #0xc]
  36d676: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  36d67a: 681b         	ldr	r3, [r3]
  36d67c: 337c         	adds	r3, #0x7c
  36d67e: 681d         	ldr	r5, [r3]
  36d680: 9b03         	ldr	r3, [sp, #0xc]
  36d682: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  36d686: 461e         	mov	r6, r3
  36d688: ab12         	add	r3, sp, #0x48
  36d68a: 4618         	mov	r0, r3
  36d68c: f04f 517c    	mov.w	r1, #0x3f000000
  36d690: f04f 527c    	mov.w	r2, #0x3f000000
  36d694: f225 fb2c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x225658
  36d698: ab12         	add	r3, sp, #0x48
  36d69a: 4630         	mov	r0, r6
  36d69c: 4619         	mov	r1, r3
  36d69e: 47a8         	blx	r5
  36d6a0: 9b03         	ldr	r3, [sp, #0xc]
  36d6a2: 681b         	ldr	r3, [r3]
  36d6a4: 33cc         	adds	r3, #0xcc
  36d6a6: 681b         	ldr	r3, [r3]
  36d6a8: 9903         	ldr	r1, [sp, #0xc]
  36d6aa: 9a03         	ldr	r2, [sp, #0xc]
  36d6ac: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  36d6b0: 4608         	mov	r0, r1
  36d6b2: 4611         	mov	r1, r2
  36d6b4: 2200         	movs	r2, #0x0
  36d6b6: 4798         	blx	r3
  36d6b8: 2320         	movs	r3, #0x20
  36d6ba: 9300         	str	r3, [sp]
  36d6bc: 4be5         	ldr	r3, [pc, #0x394]        @ 0x36da54 <MenuScreen::init()+0x7f8>
  36d6be: 447b         	add	r3, pc
  36d6c0: 4618         	mov	r0, r3
  36d6c2: 4be5         	ldr	r3, [pc, #0x394]        @ 0x36da58 <MenuScreen::init()+0x7fc>
  36d6c4: 447b         	add	r3, pc
  36d6c6: 4619         	mov	r1, r3
  36d6c8: 2220         	movs	r2, #0x20
  36d6ca: 2320         	movs	r3, #0x20
  36d6cc: f237 fe54    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x237ca8
  36d6d0: 4602         	mov	r2, r0
  36d6d2: 9b03         	ldr	r3, [sp, #0xc]
  36d6d4: f8c3 2108    	str.w	r2, [r3, #0x108]
  36d6d8: 9b03         	ldr	r3, [sp, #0xc]
  36d6da: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  36d6de: 4618         	mov	r0, r3
  36d6e0: f22a fc02    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x22a804
  36d6e4: 9b03         	ldr	r3, [sp, #0xc]
  36d6e6: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  36d6ea: 4618         	mov	r0, r3
  36d6ec: 2118         	movs	r1, #0x18
  36d6ee: f238 fb49    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x238692
  36d6f2: 9b03         	ldr	r3, [sp, #0xc]
  36d6f4: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  36d6f8: 681b         	ldr	r3, [r3]
  36d6fa: 3340         	adds	r3, #0x40
  36d6fc: 681b         	ldr	r3, [r3]
  36d6fe: 9a03         	ldr	r2, [sp, #0xc]
  36d700: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  36d704: 4610         	mov	r0, r2
  36d706: f04f 517c    	mov.w	r1, #0x3f000000
  36d70a: 4798         	blx	r3
  36d70c: 9b03         	ldr	r3, [sp, #0xc]
  36d70e: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  36d712: 681b         	ldr	r3, [r3]
  36d714: 334c         	adds	r3, #0x4c
  36d716: 681d         	ldr	r5, [r3]
  36d718: 9b03         	ldr	r3, [sp, #0xc]
  36d71a: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  36d71e: 461e         	mov	r6, r3
  36d720: 9b03         	ldr	r3, [sp, #0xc]
  36d722: f503 778c    	add.w	r7, r3, #0x118
  36d726: ab10         	add	r3, sp, #0x40
  36d728: 4618         	mov	r0, r3
  36d72a: f04f 0100    	mov.w	r1, #0x0
  36d72e: f2cc 11c8    	movt	r1, #0xc1c8
  36d732: f04f 0200    	mov.w	r2, #0x0
  36d736: f2cc 12a0    	movt	r2, #0xc1a0
  36d73a: f225 fad9    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2255b2
  36d73e: aa12         	add	r2, sp, #0x48
  36d740: ab10         	add	r3, sp, #0x40
  36d742: 4610         	mov	r0, r2
  36d744: 4639         	mov	r1, r7
  36d746: 461a         	mov	r2, r3
  36d748: f7fe fe88    	bl	0x36c45c <non-virtual thunk to MenuLayer::keyBackClicked()+0x194> @ imm = #-0x12f0
  36d74c: ab12         	add	r3, sp, #0x48
  36d74e: 4630         	mov	r0, r6
  36d750: 4619         	mov	r1, r3
  36d752: 47a8         	blx	r5
  36d754: 9b03         	ldr	r3, [sp, #0xc]
  36d756: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  36d75a: 681b         	ldr	r3, [r3]
  36d75c: 337c         	adds	r3, #0x7c
  36d75e: 681d         	ldr	r5, [r3]
  36d760: 9b03         	ldr	r3, [sp, #0xc]
  36d762: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  36d766: 461e         	mov	r6, r3
  36d768: ab12         	add	r3, sp, #0x48
  36d76a: 4618         	mov	r0, r3
  36d76c: f04f 517c    	mov.w	r1, #0x3f000000
  36d770: f04f 527c    	mov.w	r2, #0x3f000000
  36d774: f225 fabc    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x225578
  36d778: ab12         	add	r3, sp, #0x48
  36d77a: 4630         	mov	r0, r6
  36d77c: 4619         	mov	r1, r3
  36d77e: 47a8         	blx	r5
  36d780: 9b03         	ldr	r3, [sp, #0xc]
  36d782: 681b         	ldr	r3, [r3]
  36d784: 33cc         	adds	r3, #0xcc
  36d786: 681b         	ldr	r3, [r3]
  36d788: 9903         	ldr	r1, [sp, #0xc]
  36d78a: 9a03         	ldr	r2, [sp, #0xc]
  36d78c: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  36d790: 4608         	mov	r0, r1
  36d792: 4611         	mov	r1, r2
  36d794: 2200         	movs	r2, #0x0
  36d796: 4798         	blx	r3
  36d798: 4bb0         	ldr	r3, [pc, #0x2c0]        @ 0x36da5c <MenuScreen::init()+0x800>
  36d79a: 447b         	add	r3, pc
  36d79c: 4618         	mov	r0, r3
  36d79e: f26a fdb1    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x26ab62
  36d7a2: 4603         	mov	r3, r0
  36d7a4: 9305         	str	r3, [sp, #0x14]
  36d7a6: 4bae         	ldr	r3, [pc, #0x2b8]        @ 0x36da60 <MenuScreen::init()+0x804>
  36d7a8: 447b         	add	r3, pc
  36d7aa: 4618         	mov	r0, r3
  36d7ac: f26a fdaa    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x26ab54
  36d7b0: 4603         	mov	r3, r0
  36d7b2: 9306         	str	r3, [sp, #0x18]
  36d7b4: 4bab         	ldr	r3, [pc, #0x2ac]        @ 0x36da64 <MenuScreen::init()+0x808>
  36d7b6: 447b         	add	r3, pc
  36d7b8: 4618         	mov	r0, r3
  36d7ba: f26a fda3    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x26ab46
  36d7be: 4603         	mov	r3, r0
  36d7c0: 9307         	str	r3, [sp, #0x1c]
  36d7c2: 4ba9         	ldr	r3, [pc, #0x2a4]        @ 0x36da68 <MenuScreen::init()+0x80c>
  36d7c4: 447b         	add	r3, pc
  36d7c6: 4618         	mov	r0, r3
  36d7c8: f26a fd9c    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x26ab38
  36d7cc: 4603         	mov	r3, r0
  36d7ce: 9308         	str	r3, [sp, #0x20]
  36d7d0: 4ba6         	ldr	r3, [pc, #0x298]        @ 0x36da6c <MenuScreen::init()+0x810>
  36d7d2: 447b         	add	r3, pc
  36d7d4: 4618         	mov	r0, r3
  36d7d6: f26a fd95    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x26ab2a
  36d7da: 4603         	mov	r3, r0
  36d7dc: 9309         	str	r3, [sp, #0x24]
  36d7de: 4ba4         	ldr	r3, [pc, #0x290]        @ 0x36da70 <MenuScreen::init()+0x814>
  36d7e0: 447b         	add	r3, pc
  36d7e2: 4618         	mov	r0, r3
  36d7e4: f26a fd8e    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x26ab1c
  36d7e8: 4603         	mov	r3, r0
  36d7ea: 930a         	str	r3, [sp, #0x28]
  36d7ec: 9a03         	ldr	r2, [sp, #0xc]
  36d7ee: 4ba1         	ldr	r3, [pc, #0x284]        @ 0x36da74 <MenuScreen::init()+0x818>
  36d7f0: 58e3         	ldr	r3, [r4, r3]
  36d7f2: 930e         	str	r3, [sp, #0x38]
  36d7f4: 2300         	movs	r3, #0x0
  36d7f6: 930f         	str	r3, [sp, #0x3c]
  36d7f8: 9b0f         	ldr	r3, [sp, #0x3c]
  36d7fa: 9300         	str	r3, [sp]
  36d7fc: 9b0e         	ldr	r3, [sp, #0x38]
  36d7fe: 9805         	ldr	r0, [sp, #0x14]
  36d800: 9906         	ldr	r1, [sp, #0x18]
  36d802: f24a fd93    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x24ab26
  36d806: 4603         	mov	r3, r0
  36d808: 930b         	str	r3, [sp, #0x2c]
  36d80a: 980b         	ldr	r0, [sp, #0x2c]
  36d80c: 2100         	movs	r1, #0x0
  36d80e: f247 fc95    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x24792a
  36d812: 4602         	mov	r2, r0
  36d814: 9b03         	ldr	r3, [sp, #0xc]
  36d816: f8c3 20f0    	str.w	r2, [r3, #0xf0]
  36d81a: 9b03         	ldr	r3, [sp, #0xc]
  36d81c: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  36d820: 4618         	mov	r0, r3
  36d822: f22a fb61    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x22a6c2
  36d826: 9a03         	ldr	r2, [sp, #0xc]
  36d828: 4b93         	ldr	r3, [pc, #0x24c]        @ 0x36da78 <MenuScreen::init()+0x81c>
  36d82a: 58e3         	ldr	r3, [r4, r3]
  36d82c: 9310         	str	r3, [sp, #0x40]
  36d82e: 2300         	movs	r3, #0x0
  36d830: 9311         	str	r3, [sp, #0x44]
  36d832: 9b11         	ldr	r3, [sp, #0x44]
  36d834: 9300         	str	r3, [sp]
  36d836: 9b10         	ldr	r3, [sp, #0x40]
  36d838: 9807         	ldr	r0, [sp, #0x1c]
  36d83a: 9908         	ldr	r1, [sp, #0x20]
  36d83c: f24a fd76    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x24aaec
  36d840: 4603         	mov	r3, r0
  36d842: 930c         	str	r3, [sp, #0x30]
  36d844: 980c         	ldr	r0, [sp, #0x30]
  36d846: 2100         	movs	r1, #0x0
  36d848: f247 fc78    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2478f0
  36d84c: 4602         	mov	r2, r0
  36d84e: 9b03         	ldr	r3, [sp, #0xc]
  36d850: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  36d854: 9b03         	ldr	r3, [sp, #0xc]
  36d856: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  36d85a: 4618         	mov	r0, r3
  36d85c: f22a fb44    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x22a688
  36d860: 9a03         	ldr	r2, [sp, #0xc]
  36d862: 4b86         	ldr	r3, [pc, #0x218]        @ 0x36da7c <MenuScreen::init()+0x820>
  36d864: 58e3         	ldr	r3, [r4, r3]
  36d866: 9312         	str	r3, [sp, #0x48]
  36d868: 2300         	movs	r3, #0x0
  36d86a: 9313         	str	r3, [sp, #0x4c]
  36d86c: 9b13         	ldr	r3, [sp, #0x4c]
  36d86e: 9300         	str	r3, [sp]
  36d870: 9b12         	ldr	r3, [sp, #0x48]
  36d872: 9809         	ldr	r0, [sp, #0x24]
  36d874: 990a         	ldr	r1, [sp, #0x28]
  36d876: f24a fd59    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x24aab2
  36d87a: 4603         	mov	r3, r0
  36d87c: 930d         	str	r3, [sp, #0x34]
  36d87e: 980d         	ldr	r0, [sp, #0x34]
  36d880: 2100         	movs	r1, #0x0
  36d882: f247 fc5b    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2478b6
  36d886: 4602         	mov	r2, r0
  36d888: 9b03         	ldr	r3, [sp, #0xc]
  36d88a: f8c3 20ec    	str.w	r2, [r3, #0xec]
  36d88e: 9b03         	ldr	r3, [sp, #0xc]
  36d890: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  36d894: 4618         	mov	r0, r3
  36d896: f22a fb27    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x22a64e
  36d89a: 2320         	movs	r3, #0x20
  36d89c: 9300         	str	r3, [sp]
  36d89e: 4b78         	ldr	r3, [pc, #0x1e0]        @ 0x36da80 <MenuScreen::init()+0x824>
  36d8a0: 447b         	add	r3, pc
  36d8a2: 4618         	mov	r0, r3
  36d8a4: 4b77         	ldr	r3, [pc, #0x1dc]        @ 0x36da84 <MenuScreen::init()+0x828>
  36d8a6: 447b         	add	r3, pc
  36d8a8: 4619         	mov	r1, r3
  36d8aa: 2220         	movs	r2, #0x20
  36d8ac: 2320         	movs	r3, #0x20
  36d8ae: f237 fd63    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x237ac6
  36d8b2: 4602         	mov	r2, r0
  36d8b4: 9b03         	ldr	r3, [sp, #0xc]
  36d8b6: f8c3 210c    	str.w	r2, [r3, #0x10c]
  36d8ba: 9b03         	ldr	r3, [sp, #0xc]
  36d8bc: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  36d8c0: 4618         	mov	r0, r3
  36d8c2: f22a fb11    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x22a622
  36d8c6: 9b03         	ldr	r3, [sp, #0xc]
  36d8c8: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  36d8cc: 4618         	mov	r0, r3
  36d8ce: 2118         	movs	r1, #0x18
  36d8d0: f238 fa58    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x2384b0
  36d8d4: 9b03         	ldr	r3, [sp, #0xc]
  36d8d6: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  36d8da: 681b         	ldr	r3, [r3]
  36d8dc: 3340         	adds	r3, #0x40
  36d8de: 681b         	ldr	r3, [r3]
  36d8e0: 9a03         	ldr	r2, [sp, #0xc]
  36d8e2: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  36d8e6: 4610         	mov	r0, r2
  36d8e8: f04f 517c    	mov.w	r1, #0x3f000000
  36d8ec: 4798         	blx	r3
  36d8ee: 2320         	movs	r3, #0x20
  36d8f0: 9300         	str	r3, [sp]
  36d8f2: 4b65         	ldr	r3, [pc, #0x194]        @ 0x36da88 <MenuScreen::init()+0x82c>
  36d8f4: 447b         	add	r3, pc
  36d8f6: 4618         	mov	r0, r3
  36d8f8: 4b64         	ldr	r3, [pc, #0x190]        @ 0x36da8c <MenuScreen::init()+0x830>
  36d8fa: 447b         	add	r3, pc
  36d8fc: 4619         	mov	r1, r3
  36d8fe: 2220         	movs	r2, #0x20
  36d900: 2320         	movs	r3, #0x20
  36d902: f237 fd39    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x237a72
  36d906: 4602         	mov	r2, r0
  36d908: 9b03         	ldr	r3, [sp, #0xc]
  36d90a: f8c3 20f4    	str.w	r2, [r3, #0xf4]
  36d90e: 9b03         	ldr	r3, [sp, #0xc]
  36d910: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  36d914: 4618         	mov	r0, r3
  36d916: f22a fae7    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x22a5ce
  36d91a: 9b03         	ldr	r3, [sp, #0xc]
  36d91c: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  36d920: 4618         	mov	r0, r3
  36d922: 2118         	movs	r1, #0x18
  36d924: f238 fa2e    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x23845c
  36d928: 9b03         	ldr	r3, [sp, #0xc]
  36d92a: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  36d92e: 681b         	ldr	r3, [r3]
  36d930: 3340         	adds	r3, #0x40
  36d932: 681b         	ldr	r3, [r3]
  36d934: 9a03         	ldr	r2, [sp, #0xc]
  36d936: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  36d93a: 4610         	mov	r0, r2
  36d93c: f04f 517c    	mov.w	r1, #0x3f000000
  36d940: 4798         	blx	r3
  36d942: 2320         	movs	r3, #0x20
  36d944: 9300         	str	r3, [sp]
  36d946: 4b52         	ldr	r3, [pc, #0x148]        @ 0x36da90 <MenuScreen::init()+0x834>
  36d948: 447b         	add	r3, pc
  36d94a: 4618         	mov	r0, r3
  36d94c: 4b51         	ldr	r3, [pc, #0x144]        @ 0x36da94 <MenuScreen::init()+0x838>
  36d94e: 447b         	add	r3, pc
  36d950: 4619         	mov	r1, r3
  36d952: 2220         	movs	r2, #0x20
  36d954: 2320         	movs	r3, #0x20
  36d956: f237 fd0f    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x237a1e
  36d95a: 4602         	mov	r2, r0
  36d95c: 9b03         	ldr	r3, [sp, #0xc]
  36d95e: f8c3 20f8    	str.w	r2, [r3, #0xf8]
  36d962: 9b03         	ldr	r3, [sp, #0xc]
  36d964: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  36d968: 4618         	mov	r0, r3
  36d96a: f22a fabd    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x22a57a
  36d96e: 9b03         	ldr	r3, [sp, #0xc]
  36d970: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  36d974: 4618         	mov	r0, r3
  36d976: 2118         	movs	r1, #0x18
  36d978: f238 fa04    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x238408
  36d97c: 9b03         	ldr	r3, [sp, #0xc]
  36d97e: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  36d982: 681b         	ldr	r3, [r3]
  36d984: 3340         	adds	r3, #0x40
  36d986: 681b         	ldr	r3, [r3]
  36d988: 9a03         	ldr	r2, [sp, #0xc]
  36d98a: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  36d98e: 4610         	mov	r0, r2
  36d990: f04f 517c    	mov.w	r1, #0x3f000000
  36d994: 4798         	blx	r3
  36d996: 9b03         	ldr	r3, [sp, #0xc]
  36d998: 681b         	ldr	r3, [r3]
  36d99a: 33c8         	adds	r3, #0xc8
  36d99c: 681b         	ldr	r3, [r3]
  36d99e: 9903         	ldr	r1, [sp, #0xc]
  36d9a0: 9a03         	ldr	r2, [sp, #0xc]
  36d9a2: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  36d9a6: 4608         	mov	r0, r1
  36d9a8: 4611         	mov	r1, r2
  36d9aa: 4798         	blx	r3
  36d9ac: 9b03         	ldr	r3, [sp, #0xc]
  36d9ae: 681b         	ldr	r3, [r3]
  36d9b0: 33c8         	adds	r3, #0xc8
  36d9b2: 681b         	ldr	r3, [r3]
  36d9b4: 9903         	ldr	r1, [sp, #0xc]
  36d9b6: 9a03         	ldr	r2, [sp, #0xc]
  36d9b8: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  36d9bc: 4608         	mov	r0, r1
  36d9be: 4611         	mov	r1, r2
  36d9c0: 4798         	blx	r3
  36d9c2: 9b03         	ldr	r3, [sp, #0xc]
  36d9c4: 681b         	ldr	r3, [r3]
  36d9c6: 33c8         	adds	r3, #0xc8
  36d9c8: 681b         	ldr	r3, [r3]
  36d9ca: 9903         	ldr	r1, [sp, #0xc]
  36d9cc: 9a03         	ldr	r2, [sp, #0xc]
  36d9ce: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  36d9d2: 4608         	mov	r0, r1
  36d9d4: 4611         	mov	r1, r2
  36d9d6: 4798         	blx	r3
  36d9d8: 9b03         	ldr	r3, [sp, #0xc]
  36d9da: 681b         	ldr	r3, [r3]
  36d9dc: 33cc         	adds	r3, #0xcc
  36d9de: 681b         	ldr	r3, [r3]
  36d9e0: 9903         	ldr	r1, [sp, #0xc]
  36d9e2: 9a03         	ldr	r2, [sp, #0xc]
  36d9e4: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  36d9e8: 4608         	mov	r0, r1
  36d9ea: 4611         	mov	r1, r2
  36d9ec: 2200         	movs	r2, #0x0
  36d9ee: 4798         	blx	r3
  36d9f0: 9b03         	ldr	r3, [sp, #0xc]
  36d9f2: 681b         	ldr	r3, [r3]
  36d9f4: 33cc         	adds	r3, #0xcc
  36d9f6: 681b         	ldr	r3, [r3]
  36d9f8: 9903         	ldr	r1, [sp, #0xc]
  36d9fa: 9a03         	ldr	r2, [sp, #0xc]
  36d9fc: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  36da00: 4608         	mov	r0, r1
  36da02: 4611         	mov	r1, r2
  36da04: 2200         	movs	r2, #0x0
  36da06: 4798         	blx	r3
  36da08: 9b03         	ldr	r3, [sp, #0xc]
  36da0a: 681b         	ldr	r3, [r3]
  36da0c: 33cc         	adds	r3, #0xcc
  36da0e: 681b         	ldr	r3, [r3]
  36da10: 9903         	ldr	r1, [sp, #0xc]
  36da12: 9a03         	ldr	r2, [sp, #0xc]
  36da14: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  36da18: 4608         	mov	r0, r1
  36da1a: 4611         	mov	r1, r2
  36da1c: 2200         	movs	r2, #0x0
  36da1e: 4798         	blx	r3
  36da20: 9803         	ldr	r0, [sp, #0xc]
  36da22: 2100         	movs	r1, #0x0
  36da24: f002 f8e6    	bl	0x36fbf4 <MenuScreen::setMenuOpacity(int)> @ imm = #0x21cc
  36da28: 2301         	movs	r3, #0x1
  36da2a: 4618         	mov	r0, r3
  36da2c: b015         	add	sp, #0x54
  36da2e: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x36da2f); words below are literal-pool data ---
  36da30: 57a2         	ldrsb	r2, [r4, r6]
  36da32: 005c         	lsls	r4, r3, #0x1
  36da34: d724         	bvc	0x36da80 <MenuScreen::init()+0x824> @ imm = #0x48
  36da36: ffff 05fe    	vsli.64	q8, q15, #0x3f
  36da3a: 0046         	lsls	r6, r0, #0x1
  36da3c: 0544         	lsls	r4, r0, #0x15
  36da3e: 0046         	lsls	r6, r0, #0x1
  36da40: 0540         	lsls	r0, r0, #0x15
  36da42: 0046         	lsls	r6, r0, #0x1
  36da44: 0474         	lsls	r4, r6, #0x11
  36da46: 0046         	lsls	r6, r0, #0x1
  36da48: 045c         	lsls	r4, r3, #0x11
  36da4a: 0046         	lsls	r6, r0, #0x1
  36da4c: 039c         	lsls	r4, r3, #0xe
  36da4e: 0046         	lsls	r6, r0, #0x1
  36da50: 0378         	lsls	r0, r7, #0xd
  36da52: 0046         	lsls	r6, r0, #0x1
  36da54: 02c6         	lsls	r6, r0, #0xb
  36da56: 0046         	lsls	r6, r0, #0x1
  36da58: 0298         	lsls	r0, r3, #0xa
  36da5a: 0046         	lsls	r6, r0, #0x1
  36da5c: 01f2         	lsls	r2, r6, #0x7
  36da5e: 0046         	lsls	r6, r0, #0x1
  36da60: 01e4         	lsls	r4, r4, #0x7
  36da62: 0046         	lsls	r6, r0, #0x1
  36da64: 01d6         	lsls	r6, r2, #0x7
  36da66: 0046         	lsls	r6, r0, #0x1
  36da68: 01c8         	lsls	r0, r1, #0x7
  36da6a: 0046         	lsls	r6, r0, #0x1
  36da6c: 01ba         	lsls	r2, r7, #0x6
  36da6e: 0046         	lsls	r6, r0, #0x1
  36da70: 01ac         	lsls	r4, r5, #0x6
  36da72: 0046         	lsls	r6, r0, #0x1
  36da74: dbfc         	blt	0x36da70 <MenuScreen::init()+0x814> @ imm = #-0x8
  36da76: ffff dc00    	vdup.8	d29, d0[7]
  36da7a: ffff dc04    	vdup.8	d29, d4[7]
  36da7e: ffff 00f8    	vshr.u64	q8, q12, #0x1
  36da82: 0046         	lsls	r6, r0, #0x1
  36da84: 00b6         	lsls	r6, r6, #0x2
  36da86: 0046         	lsls	r6, r0, #0x1
  36da88: 00ac         	lsls	r4, r5, #0x2
  36da8a: 0046         	lsls	r6, r0, #0x1
  36da8c: 0062         	lsls	r2, r4, #0x1
  36da8e: 0046         	lsls	r6, r0, #0x1
  36da90: 0060         	lsls	r0, r4, #0x1
  36da92: 0046         	lsls	r6, r0, #0x1
  36da94: 000e         	movs	r6, r1
  36da96: 0046         	lsls	r6, r0, #0x1

// ==== MenuScreen::~MenuScreen
//      file offset 0x36da98 (= ELF address; Ghidra 0x37da98), 200 bytes, Thumb-2
  36da98: b500         	push	{lr}
  36da9a: b083         	sub	sp, #0xc
  36da9c: 9001         	str	r0, [sp, #0x4]
  36da9e: 492e         	ldr	r1, [pc, #0xb8]         @ 0x36db58 <MenuScreen::~MenuScreen()+0xc0>
  36daa0: 4479         	add	r1, pc
  36daa2: 9b01         	ldr	r3, [sp, #0x4]
  36daa4: 4a2d         	ldr	r2, [pc, #0xb4]         @ 0x36db5c <MenuScreen::~MenuScreen()+0xc4>
  36daa6: 588a         	ldr	r2, [r1, r2]
  36daa8: 3208         	adds	r2, #0x8
  36daaa: 601a         	str	r2, [r3]
  36daac: 9b01         	ldr	r3, [sp, #0x4]
  36daae: 4618         	mov	r0, r3
  36dab0: 2101         	movs	r1, #0x1
  36dab2: f222 fdc9    	bl	0x590648 <cocos2d::CCNode::removeAllChildrenWithCleanup(bool)> @ imm = #0x222b92
  36dab6: 9b01         	ldr	r3, [sp, #0x4]
  36dab8: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  36dabc: 4618         	mov	r0, r3
  36dabe: f22a f9fb    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x22a3f6
  36dac2: 9b01         	ldr	r3, [sp, #0x4]
  36dac4: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36dac8: 4618         	mov	r0, r3
  36daca: f22a f9f5    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x22a3ea
  36dace: 9b01         	ldr	r3, [sp, #0x4]
  36dad0: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  36dad4: 4618         	mov	r0, r3
  36dad6: f22a f9ef    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x22a3de
  36dada: 9b01         	ldr	r3, [sp, #0x4]
  36dadc: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  36dae0: 4618         	mov	r0, r3
  36dae2: f22a f9e9    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x22a3d2
  36dae6: 9b01         	ldr	r3, [sp, #0x4]
  36dae8: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  36daec: 4618         	mov	r0, r3
  36daee: f22a f9e3    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x22a3c6
  36daf2: 9b01         	ldr	r3, [sp, #0x4]
  36daf4: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  36daf8: 4618         	mov	r0, r3
  36dafa: f22a f9dd    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x22a3ba
  36dafe: 9b01         	ldr	r3, [sp, #0x4]
  36db00: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  36db04: 4618         	mov	r0, r3
  36db06: f22a f9d7    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x22a3ae
  36db0a: 9b01         	ldr	r3, [sp, #0x4]
  36db0c: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  36db10: 4618         	mov	r0, r3
  36db12: f22a f9d1    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x22a3a2
  36db16: 9b01         	ldr	r3, [sp, #0x4]
  36db18: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  36db1c: 4618         	mov	r0, r3
  36db1e: f22a f9cb    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x22a396
  36db22: 9b01         	ldr	r3, [sp, #0x4]
  36db24: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  36db28: 4618         	mov	r0, r3
  36db2a: f22a f9c5    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x22a38a
  36db2e: 9b01         	ldr	r3, [sp, #0x4]
  36db30: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  36db34: 4618         	mov	r0, r3
  36db36: f22a f9bf    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x22a37e
  36db3a: 9b01         	ldr	r3, [sp, #0x4]
  36db3c: 4618         	mov	r0, r3
  36db3e: f221 fe81    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x221d02
  36db42: 2300         	movs	r3, #0x0
  36db44: 2b00         	cmp	r3, #0x0
  36db46: d002         	beq	0x36db4e <MenuScreen::~MenuScreen()+0xb6> @ imm = #0x4
  36db48: 9801         	ldr	r0, [sp, #0x4]
  36db4a: f01a f2ab    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x41a556
  36db4e: 9b01         	ldr	r3, [sp, #0x4]
  36db50: 4618         	mov	r0, r3
  36db52: b003         	add	sp, #0xc
  36db54: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x36db57); words below are literal-pool data ---
  36db58: 4f68         	ldr	r7, [pc, #0x1a0]        @ 0x36dcfc <MenuScreen::onQuit(cocos2d::CCObject*)+0x30>
  36db5a: 005c         	lsls	r4, r3, #0x1
  36db5c: dbf8         	blt	0x36db50 <MenuScreen::~MenuScreen()+0xb8> @ imm = #-0x10
  36db5e: ffff b500    	<unknown>

// ==== MenuScreen::~MenuScreen
//      file offset 0x36db60 (= ELF address; Ghidra 0x37db60), 28 bytes, Thumb-2
  36db60: b500         	push	{lr}
  36db62: b083         	sub	sp, #0xc
  36db64: 9001         	str	r0, [sp, #0x4]
  36db66: 9801         	ldr	r0, [sp, #0x4]
  36db68: f7ff ff96    	bl	0x36da98 <MenuScreen::~MenuScreen()> @ imm = #-0xd4
  36db6c: 9801         	ldr	r0, [sp, #0x4]
  36db6e: f01a f299    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x41a532
  36db72: 9b01         	ldr	r3, [sp, #0x4]
  36db74: 4618         	mov	r0, r3
  36db76: b003         	add	sp, #0xc
  36db78: f85d fb04    	ldr	pc, [sp], #4

// ==== MenuScreen::updateStep
//      file offset 0x36db7c (= ELF address; Ghidra 0x37db7c), 336 bytes, Thumb-2
  36db7c: b530         	push	{r4, r5, lr}
  36db7e: b085         	sub	sp, #0x14
  36db80: 9001         	str	r0, [sp, #0x4]
  36db82: 9100         	str	r1, [sp]
  36db84: 9b01         	ldr	r3, [sp, #0x4]
  36db86: f893 3124    	ldrb.w	r3, [r3, #0x124]
  36db8a: 2b00         	cmp	r3, #0x0
  36db8c: d023         	beq	0x36dbd6 <MenuScreen::updateStep(float)+0x5a> @ imm = #0x46
  36db8e: 9b01         	ldr	r3, [sp, #0x4]
  36db90: ed93 7a48    	vldr	s14, [r3, #288]
  36db94: eddd 6a00    	vldr	s13, [sp]
  36db98: eddf 7a49    	vldr	s15, [pc, #292]         @ 0x36dcc0 <MenuScreen::updateStep(float)+0x144>
  36db9c: ee66 7aa7    	vmul.f32	s15, s13, s15
  36dba0: ee37 7a27    	vadd.f32	s14, s14, s15
  36dba4: eddf 7a47    	vldr	s15, [pc, #284]         @ 0x36dcc4 <MenuScreen::updateStep(float)+0x148>
  36dba8: eeb4 7ae7    	vcmpe.f32	s14, s15
  36dbac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  36dbb0: d50b         	bpl	0x36dbca <MenuScreen::updateStep(float)+0x4e> @ imm = #0x16
  36dbb2: 9b01         	ldr	r3, [sp, #0x4]
  36dbb4: ed93 7a48    	vldr	s14, [r3, #288]
  36dbb8: eddd 6a00    	vldr	s13, [sp]
  36dbbc: eddf 7a40    	vldr	s15, [pc, #256]         @ 0x36dcc0 <MenuScreen::updateStep(float)+0x144>
  36dbc0: ee66 7aa7    	vmul.f32	s15, s13, s15
  36dbc4: ee77 7a27    	vadd.f32	s15, s14, s15
  36dbc8: e001         	b	0x36dbce <MenuScreen::updateStep(float)+0x52> @ imm = #0x2
  36dbca: eddf 7a3e    	vldr	s15, [pc, #248]         @ 0x36dcc4 <MenuScreen::updateStep(float)+0x148>
  36dbce: 9b01         	ldr	r3, [sp, #0x4]
  36dbd0: edc3 7a48    	vstr	s15, [r3, #288]
  36dbd4: e020         	b	0x36dc18 <MenuScreen::updateStep(float)+0x9c> @ imm = #0x40
  36dbd6: 9b01         	ldr	r3, [sp, #0x4]
  36dbd8: ed93 7a48    	vldr	s14, [r3, #288]
  36dbdc: eddd 6a00    	vldr	s13, [sp]
  36dbe0: eddf 7a37    	vldr	s15, [pc, #220]         @ 0x36dcc0 <MenuScreen::updateStep(float)+0x144>
  36dbe4: ee66 7aa7    	vmul.f32	s15, s13, s15
  36dbe8: ee77 7a67    	vsub.f32	s15, s14, s15
  36dbec: eef5 7ac0    	vcmpe.f32	s15, #0
  36dbf0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  36dbf4: dd0b         	ble	0x36dc0e <MenuScreen::updateStep(float)+0x92> @ imm = #0x16
  36dbf6: 9b01         	ldr	r3, [sp, #0x4]
  36dbf8: ed93 7a48    	vldr	s14, [r3, #288]
  36dbfc: eddd 6a00    	vldr	s13, [sp]
  36dc00: eddf 7a2f    	vldr	s15, [pc, #188]         @ 0x36dcc0 <MenuScreen::updateStep(float)+0x144>
  36dc04: ee66 7aa7    	vmul.f32	s15, s13, s15
  36dc08: ee77 7a67    	vsub.f32	s15, s14, s15
  36dc0c: e001         	b	0x36dc12 <MenuScreen::updateStep(float)+0x96> @ imm = #0x2
  36dc0e: eddf 7a2e    	vldr	s15, [pc, #184]         @ 0x36dcc8 <MenuScreen::updateStep(float)+0x14c>
  36dc12: 9b01         	ldr	r3, [sp, #0x4]
  36dc14: edc3 7a48    	vstr	s15, [r3, #288]
  36dc18: 9b01         	ldr	r3, [sp, #0x4]
  36dc1a: edd3 7a48    	vldr	s15, [r3, #288]
  36dc1e: eefd 7ae7    	vcvt.s32.f32	s15, s15
  36dc22: ee17 3a90    	vmov	r3, s15
  36dc26: 9801         	ldr	r0, [sp, #0x4]
  36dc28: 4619         	mov	r1, r3
  36dc2a: f001 ffe3    	bl	0x36fbf4 <MenuScreen::setMenuOpacity(int)> @ imm = #0x1fc6
  36dc2e: 9b01         	ldr	r3, [sp, #0x4]
  36dc30: ed93 7a4c    	vldr	s14, [r3, #304]
  36dc34: eddd 7a00    	vldr	s15, [sp]
  36dc38: ee77 7a27    	vadd.f32	s15, s14, s15
  36dc3c: 9b01         	ldr	r3, [sp, #0x4]
  36dc3e: edc3 7a4c    	vstr	s15, [r3, #304]
  36dc42: 9b01         	ldr	r3, [sp, #0x4]
  36dc44: f893 3124    	ldrb.w	r3, [r3, #0x124]
  36dc48: f083 0301    	eor	r3, r3, #0x1
  36dc4c: b2db         	uxtb	r3, r3
  36dc4e: 2b00         	cmp	r3, #0x0
  36dc50: d01b         	beq	0x36dc8a <MenuScreen::updateStep(float)+0x10e> @ imm = #0x36
  36dc52: 9b01         	ldr	r3, [sp, #0x4]
  36dc54: edd3 7a48    	vldr	s15, [r3, #288]
  36dc58: eef5 7ac0    	vcmpe.f32	s15, #0
  36dc5c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  36dc60: d813         	bhi	0x36dc8a <MenuScreen::updateStep(float)+0x10e> @ imm = #0x26
  36dc62: 9b01         	ldr	r3, [sp, #0x4]
  36dc64: 681b         	ldr	r3, [r3]
  36dc66: 3390         	adds	r3, #0x90
  36dc68: 681b         	ldr	r3, [r3]
  36dc6a: 9a01         	ldr	r2, [sp, #0x4]
  36dc6c: 4610         	mov	r0, r2
  36dc6e: 2100         	movs	r1, #0x0
  36dc70: 4798         	blx	r3
  36dc72: 9b01         	ldr	r3, [sp, #0x4]
  36dc74: 681b         	ldr	r3, [r3]
  36dc76: 334c         	adds	r3, #0x4c
  36dc78: 681b         	ldr	r3, [r3]
  36dc7a: 9901         	ldr	r1, [sp, #0x4]
  36dc7c: 9a01         	ldr	r2, [sp, #0x4]
  36dc7e: f502 7294    	add.w	r2, r2, #0x128
  36dc82: 4608         	mov	r0, r1
  36dc84: 4611         	mov	r1, r2
  36dc86: 4798         	blx	r3
  36dc88: e018         	b	0x36dcbc <MenuScreen::updateStep(float)+0x140> @ imm = #0x30
  36dc8a: 9b01         	ldr	r3, [sp, #0x4]
  36dc8c: 681b         	ldr	r3, [r3]
  36dc8e: 3390         	adds	r3, #0x90
  36dc90: 681b         	ldr	r3, [r3]
  36dc92: 9a01         	ldr	r2, [sp, #0x4]
  36dc94: 4610         	mov	r0, r2
  36dc96: 2101         	movs	r1, #0x1
  36dc98: 4798         	blx	r3
  36dc9a: 9b01         	ldr	r3, [sp, #0x4]
  36dc9c: 681b         	ldr	r3, [r3]
  36dc9e: 334c         	adds	r3, #0x4c
  36dca0: 681c         	ldr	r4, [r3]
  36dca2: 9d01         	ldr	r5, [sp, #0x4]
  36dca4: ab02         	add	r3, sp, #0x8
  36dca6: 4618         	mov	r0, r3
  36dca8: f04f 0100    	mov.w	r1, #0x0
  36dcac: f04f 0200    	mov.w	r2, #0x0
  36dcb0: f225 f81e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x22503c
  36dcb4: ab02         	add	r3, sp, #0x8
  36dcb6: 4628         	mov	r0, r5
  36dcb8: 4619         	mov	r1, r3
  36dcba: 47a0         	blx	r4
  36dcbc: b005         	add	sp, #0x14
  36dcbe: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x36dcbf); words below are literal-pool data ---
  36dcc0: 0000         	movs	r0, r0
  36dcc2: 447a         	add	r2, pc
  36dcc4: 0000         	movs	r0, r0
  36dcc6: 437f         	muls	r7, r7, r7
  36dcc8: 0000         	movs	r0, r0
  36dcca: 0000         	movs	r0, r0

// ==== MenuScreen::onQuit
//      file offset 0x36dccc (= ELF address; Ghidra 0x37dccc), 64 bytes, Thumb-2
  36dccc: b500         	push	{lr}
  36dcce: b083         	sub	sp, #0xc
  36dcd0: 9001         	str	r0, [sp, #0x4]
  36dcd2: 9100         	str	r1, [sp]
  36dcd4: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x36dd00 <MenuScreen::onQuit(cocos2d::CCObject*)+0x34>
  36dcd6: 447a         	add	r2, pc
  36dcd8: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x36dd04 <MenuScreen::onQuit(cocos2d::CCObject*)+0x38>
  36dcda: 58d3         	ldr	r3, [r2, r3]
  36dcdc: 681b         	ldr	r3, [r3]
  36dcde: 4618         	mov	r0, r3
  36dce0: 2104         	movs	r1, #0x4
  36dce2: f08a f86d    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x8a0da
  36dce6: f272 fce3    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2729c6
  36dcea: 4603         	mov	r3, r0
  36dcec: 4618         	mov	r0, r3
  36dcee: 4b06         	ldr	r3, [pc, #0x18]         @ 0x36dd08 <MenuScreen::onQuit(cocos2d::CCObject*)+0x3c>
  36dcf0: 447b         	add	r3, pc
  36dcf2: 4619         	mov	r1, r3
  36dcf4: 2200         	movs	r2, #0x0
  36dcf6: f272 ff19    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x272e32
  36dcfa: b003         	add	sp, #0xc
  36dcfc: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x36dcff); words below are literal-pool data ---
  36dd00: 4d32         	ldr	r5, [pc, #0xc8]         @ 0x36ddcc <MenuScreen::pauseTraining()+0xc>
  36dd02: 005c         	lsls	r4, r3, #0x1
  36dd04: d730         	bvc	0x36dd68 <MenuScreen::onRetry(cocos2d::CCObject*)+0x5c> @ imm = #0x60
  36dd06: ffff fcc0    	<unknown>
  36dd0a: 0045         	lsls	r5, r0, #0x1

// ==== MenuScreen::onRetry
//      file offset 0x36dd0c (= ELF address; Ghidra 0x37dd0c), 140 bytes, Thumb-2
  36dd0c: b510         	push	{r4, lr}
  36dd0e: b084         	sub	sp, #0x10
  36dd10: 9001         	str	r0, [sp, #0x4]
  36dd12: 9100         	str	r1, [sp]
  36dd14: 9801         	ldr	r0, [sp, #0x4]
  36dd16: 2100         	movs	r1, #0x0
  36dd18: f002 f826    	bl	0x36fd68 <MenuScreen::showScreen(bool)> @ imm = #0x204c
  36dd1c: ab02         	add	r3, sp, #0x8
  36dd1e: 4618         	mov	r0, r3
  36dd20: f01c f368    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x41c6d0
  36dd24: aa03         	add	r2, sp, #0xc
  36dd26: ab02         	add	r3, sp, #0x8
  36dd28: 4610         	mov	r0, r2
  36dd2a: 4a19         	ldr	r2, [pc, #0x64]         @ 0x36dd90 <MenuScreen::onRetry(cocos2d::CCObject*)+0x84>
  36dd2c: 447a         	add	r2, pc
  36dd2e: 4611         	mov	r1, r2
  36dd30: 461a         	mov	r2, r3
  36dd32: f048 f695    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x448d2a
  36dd36: ab03         	add	r3, sp, #0xc
  36dd38: 4618         	mov	r0, r3
  36dd3a: f0c3 fd11    	bl	0x431760 <InAppPurchaseBridge::isProductPurchased(std::string)> @ imm = #0xc3a22
  36dd3e: 4603         	mov	r3, r0
  36dd40: f083 0301    	eor	r3, r3, #0x1
  36dd44: b2dc         	uxtb	r4, r3
  36dd46: ab03         	add	r3, sp, #0xc
  36dd48: 4618         	mov	r0, r3
  36dd4a: f047 f5e3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x447bc6
  36dd4e: ab02         	add	r3, sp, #0x8
  36dd50: 4618         	mov	r0, r3
  36dd52: f01c f353    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41c6a6
  36dd56: 2c00         	cmp	r4, #0x0
  36dd58: d001         	beq	0x36dd5e <MenuScreen::onRetry(cocos2d::CCObject*)+0x52> @ imm = #0x2
  36dd5a: f0be fa01    	bl	0x42c160 <ApplicationInterface::showInterstitial()> @ imm = #0xbe402
  36dd5e: f272 fca7    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x27294e
  36dd62: 4603         	mov	r3, r0
  36dd64: 4618         	mov	r0, r3
  36dd66: 4b0b         	ldr	r3, [pc, #0x2c]         @ 0x36dd94 <MenuScreen::onRetry(cocos2d::CCObject*)+0x88>
  36dd68: 447b         	add	r3, pc
  36dd6a: 4619         	mov	r1, r3
  36dd6c: 2200         	movs	r2, #0x0
  36dd6e: f272 fedd    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x272dba
  36dd72: e00a         	b	0x36dd8a <MenuScreen::onRetry(cocos2d::CCObject*)+0x7e> @ imm = #0x14
  36dd74: ab03         	add	r3, sp, #0xc
  36dd76: 4618         	mov	r0, r3
  36dd78: f047 f5cc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x447b98
  36dd7c: e7ff         	b	0x36dd7e <MenuScreen::onRetry(cocos2d::CCObject*)+0x72> @ imm = #-0x2
  36dd7e: ab02         	add	r3, sp, #0x8
  36dd80: 4618         	mov	r0, r3
  36dd82: f01c f33b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41c676
  36dd86: f01a f191    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x41a322
  36dd8a: b004         	add	sp, #0x10
  36dd8c: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x36dd8d); words below are literal-pool data ---
  36dd8e: bf00         	nop
  36dd90: fc94 0045    	ldc2	p0, c0, [r4], {69}
  36dd94: fc74 0045    	ldc2l	p0, c0, [r4], #-276

// ==== MenuScreen::onKeyboard
//      file offset 0x36dd98 (= ELF address; Ghidra 0x37dd98), 40 bytes, Thumb-2
  36dd98: b500         	push	{lr}
  36dd9a: b083         	sub	sp, #0xc
  36dd9c: 9001         	str	r0, [sp, #0x4]
  36dd9e: 9100         	str	r1, [sp]
  36dda0: f272 fc86    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x27290c
  36dda4: 4603         	mov	r3, r0
  36dda6: 4618         	mov	r0, r3
  36dda8: 4b04         	ldr	r3, [pc, #0x10]         @ 0x36ddbc <MenuScreen::onKeyboard(cocos2d::CCObject*)+0x24>
  36ddaa: 447b         	add	r3, pc
  36ddac: 4619         	mov	r1, r3
  36ddae: 2200         	movs	r2, #0x0
  36ddb0: f272 febc    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x272d78
  36ddb4: b003         	add	sp, #0xc
  36ddb6: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x36ddb9); words below are literal-pool data ---
  36ddba: bf00         	nop
  36ddbc: fc3e 0045    	ldc2	p0, c0, [lr], #-276

// ==== MenuScreen::pauseTraining
//      file offset 0x36ddc0 (= ELF address; Ghidra 0x37ddc0), 756 bytes, Thumb-2
  36ddc0: b5f0         	push	{r4, r5, r6, r7, lr}
  36ddc2: b087         	sub	sp, #0x1c
  36ddc4: 9001         	str	r0, [sp, #0x4]
  36ddc6: 4cb5         	ldr	r4, [pc, #0x2d4]        @ 0x36e09c <MenuScreen::pauseTraining()+0x2dc>
  36ddc8: 447c         	add	r4, pc
  36ddca: 9b01         	ldr	r3, [sp, #0x4]
  36ddcc: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  36ddd0: 681b         	ldr	r3, [r3]
  36ddd2: 3390         	adds	r3, #0x90
  36ddd4: 681b         	ldr	r3, [r3]
  36ddd6: 9a01         	ldr	r2, [sp, #0x4]
  36ddd8: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  36dddc: 4610         	mov	r0, r2
  36ddde: 2101         	movs	r1, #0x1
  36dde0: 4798         	blx	r3
  36dde2: 9b01         	ldr	r3, [sp, #0x4]
  36dde4: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  36dde8: 681b         	ldr	r3, [r3]
  36ddea: 3390         	adds	r3, #0x90
  36ddec: 681b         	ldr	r3, [r3]
  36ddee: 9a01         	ldr	r2, [sp, #0x4]
  36ddf0: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  36ddf4: 4610         	mov	r0, r2
  36ddf6: 2100         	movs	r1, #0x0
  36ddf8: 4798         	blx	r3
  36ddfa: 9b01         	ldr	r3, [sp, #0x4]
  36ddfc: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  36de00: 681b         	ldr	r3, [r3]
  36de02: 3390         	adds	r3, #0x90
  36de04: 681b         	ldr	r3, [r3]
  36de06: 9a01         	ldr	r2, [sp, #0x4]
  36de08: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  36de0c: 4610         	mov	r0, r2
  36de0e: 2101         	movs	r1, #0x1
  36de10: 4798         	blx	r3
  36de12: 9b01         	ldr	r3, [sp, #0x4]
  36de14: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  36de18: 681b         	ldr	r3, [r3]
  36de1a: 3390         	adds	r3, #0x90
  36de1c: 681b         	ldr	r3, [r3]
  36de1e: 9a01         	ldr	r2, [sp, #0x4]
  36de20: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  36de24: 4610         	mov	r0, r2
  36de26: 2100         	movs	r1, #0x0
  36de28: 4798         	blx	r3
  36de2a: 9b01         	ldr	r3, [sp, #0x4]
  36de2c: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  36de30: 681b         	ldr	r3, [r3]
  36de32: 3390         	adds	r3, #0x90
  36de34: 681b         	ldr	r3, [r3]
  36de36: 9a01         	ldr	r2, [sp, #0x4]
  36de38: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  36de3c: 4610         	mov	r0, r2
  36de3e: 2100         	movs	r1, #0x0
  36de40: 4798         	blx	r3
  36de42: 9b01         	ldr	r3, [sp, #0x4]
  36de44: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  36de48: 681b         	ldr	r3, [r3]
  36de4a: 3390         	adds	r3, #0x90
  36de4c: 681b         	ldr	r3, [r3]
  36de4e: 9a01         	ldr	r2, [sp, #0x4]
  36de50: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  36de54: 4610         	mov	r0, r2
  36de56: 2100         	movs	r1, #0x0
  36de58: 4798         	blx	r3
  36de5a: 9b01         	ldr	r3, [sp, #0x4]
  36de5c: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  36de60: 681b         	ldr	r3, [r3]
  36de62: 3390         	adds	r3, #0x90
  36de64: 681b         	ldr	r3, [r3]
  36de66: 9a01         	ldr	r2, [sp, #0x4]
  36de68: f8d2 2100    	ldr.w	r2, [r2, #0x100]
  36de6c: 4610         	mov	r0, r2
  36de6e: 2100         	movs	r1, #0x0
  36de70: 4798         	blx	r3
  36de72: 9b01         	ldr	r3, [sp, #0x4]
  36de74: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  36de78: 681b         	ldr	r3, [r3]
  36de7a: 3390         	adds	r3, #0x90
  36de7c: 681b         	ldr	r3, [r3]
  36de7e: 9a01         	ldr	r2, [sp, #0x4]
  36de80: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  36de84: 4610         	mov	r0, r2
  36de86: 2100         	movs	r1, #0x0
  36de88: 4798         	blx	r3
  36de8a: 9b01         	ldr	r3, [sp, #0x4]
  36de8c: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  36de90: 681b         	ldr	r3, [r3]
  36de92: 3390         	adds	r3, #0x90
  36de94: 681b         	ldr	r3, [r3]
  36de96: 9a01         	ldr	r2, [sp, #0x4]
  36de98: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  36de9c: 4610         	mov	r0, r2
  36de9e: 2100         	movs	r1, #0x0
  36dea0: 4798         	blx	r3
  36dea2: 9b01         	ldr	r3, [sp, #0x4]
  36dea4: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  36dea8: 681b         	ldr	r3, [r3]
  36deaa: f503 73fc    	add.w	r3, r3, #0x1f8
  36deae: 681b         	ldr	r3, [r3]
  36deb0: 9a01         	ldr	r2, [sp, #0x4]
  36deb2: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  36deb6: 4610         	mov	r0, r2
  36deb8: 4a79         	ldr	r2, [pc, #0x1e4]        @ 0x36e0a0 <MenuScreen::pauseTraining()+0x2e0>
  36deba: 447a         	add	r2, pc
  36debc: 4611         	mov	r1, r2
  36debe: 4798         	blx	r3
  36dec0: 9b01         	ldr	r3, [sp, #0x4]
  36dec2: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  36dec6: 681b         	ldr	r3, [r3]
  36dec8: 334c         	adds	r3, #0x4c
  36deca: 681d         	ldr	r5, [r3]
  36decc: 9b01         	ldr	r3, [sp, #0x4]
  36dece: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  36ded2: 461e         	mov	r6, r3
  36ded4: 9b01         	ldr	r3, [sp, #0x4]
  36ded6: f503 778c    	add.w	r7, r3, #0x118
  36deda: ab02         	add	r3, sp, #0x8
  36dedc: 4618         	mov	r0, r3
  36dede: f04f 0100    	mov.w	r1, #0x0
  36dee2: f04f 0200    	mov.w	r2, #0x0
  36dee6: f2cc 2270    	movt	r2, #0xc270
  36deea: f224 ff01    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x224e02
  36deee: aa04         	add	r2, sp, #0x10
  36def0: ab02         	add	r3, sp, #0x8
  36def2: 4610         	mov	r0, r2
  36def4: 4639         	mov	r1, r7
  36def6: 461a         	mov	r2, r3
  36def8: f7fe fab0    	bl	0x36c45c <non-virtual thunk to MenuLayer::keyBackClicked()+0x194> @ imm = #-0x1aa0
  36defc: ab04         	add	r3, sp, #0x10
  36defe: 4630         	mov	r0, r6
  36df00: 4619         	mov	r1, r3
  36df02: 47a8         	blx	r5
  36df04: 9b01         	ldr	r3, [sp, #0x4]
  36df06: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  36df0a: 681b         	ldr	r3, [r3]
  36df0c: 334c         	adds	r3, #0x4c
  36df0e: 681d         	ldr	r5, [r3]
  36df10: 9b01         	ldr	r3, [sp, #0x4]
  36df12: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  36df16: 461e         	mov	r6, r3
  36df18: 9b01         	ldr	r3, [sp, #0x4]
  36df1a: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  36df1e: 681b         	ldr	r3, [r3]
  36df20: 3350         	adds	r3, #0x50
  36df22: 681b         	ldr	r3, [r3]
  36df24: 9a01         	ldr	r2, [sp, #0x4]
  36df26: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  36df2a: 4610         	mov	r0, r2
  36df2c: 4798         	blx	r3
  36df2e: 4603         	mov	r3, r0
  36df30: 4630         	mov	r0, r6
  36df32: 4619         	mov	r1, r3
  36df34: 47a8         	blx	r5
  36df36: 9b01         	ldr	r3, [sp, #0x4]
  36df38: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  36df3c: 681b         	ldr	r3, [r3]
  36df3e: 337c         	adds	r3, #0x7c
  36df40: 681d         	ldr	r5, [r3]
  36df42: 9b01         	ldr	r3, [sp, #0x4]
  36df44: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  36df48: 461e         	mov	r6, r3
  36df4a: ab04         	add	r3, sp, #0x10
  36df4c: 4618         	mov	r0, r3
  36df4e: f04f 517c    	mov.w	r1, #0x3f000000
  36df52: f04f 527c    	mov.w	r2, #0x3f000000
  36df56: f224 fecb    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x224d96
  36df5a: ab04         	add	r3, sp, #0x10
  36df5c: 4630         	mov	r0, r6
  36df5e: 4619         	mov	r1, r3
  36df60: 47a8         	blx	r5
  36df62: 9b01         	ldr	r3, [sp, #0x4]
  36df64: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  36df68: 681b         	ldr	r3, [r3]
  36df6a: f503 73fc    	add.w	r3, r3, #0x1f8
  36df6e: 681b         	ldr	r3, [r3]
  36df70: 9a01         	ldr	r2, [sp, #0x4]
  36df72: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  36df76: 4610         	mov	r0, r2
  36df78: 4a4a         	ldr	r2, [pc, #0x128]        @ 0x36e0a4 <MenuScreen::pauseTraining()+0x2e4>
  36df7a: 447a         	add	r2, pc
  36df7c: 4611         	mov	r1, r2
  36df7e: 4798         	blx	r3
  36df80: 9b01         	ldr	r3, [sp, #0x4]
  36df82: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  36df86: 681b         	ldr	r3, [r3]
  36df88: 334c         	adds	r3, #0x4c
  36df8a: 681d         	ldr	r5, [r3]
  36df8c: 9b01         	ldr	r3, [sp, #0x4]
  36df8e: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  36df92: 461e         	mov	r6, r3
  36df94: 9b01         	ldr	r3, [sp, #0x4]
  36df96: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  36df9a: 681b         	ldr	r3, [r3]
  36df9c: 3350         	adds	r3, #0x50
  36df9e: 681b         	ldr	r3, [r3]
  36dfa0: 9a01         	ldr	r2, [sp, #0x4]
  36dfa2: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  36dfa6: 4610         	mov	r0, r2
  36dfa8: 4798         	blx	r3
  36dfaa: 4603         	mov	r3, r0
  36dfac: 4630         	mov	r0, r6
  36dfae: 4619         	mov	r1, r3
  36dfb0: 47a8         	blx	r5
  36dfb2: 9b01         	ldr	r3, [sp, #0x4]
  36dfb4: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  36dfb8: 681b         	ldr	r3, [r3]
  36dfba: 337c         	adds	r3, #0x7c
  36dfbc: 681d         	ldr	r5, [r3]
  36dfbe: 9b01         	ldr	r3, [sp, #0x4]
  36dfc0: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  36dfc4: 461e         	mov	r6, r3
  36dfc6: ab04         	add	r3, sp, #0x10
  36dfc8: 4618         	mov	r0, r3
  36dfca: f04f 517c    	mov.w	r1, #0x3f000000
  36dfce: f04f 527c    	mov.w	r2, #0x3f000000
  36dfd2: f224 fe8d    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x224d1a
  36dfd6: ab04         	add	r3, sp, #0x10
  36dfd8: 4630         	mov	r0, r6
  36dfda: 4619         	mov	r1, r3
  36dfdc: 47a8         	blx	r5
  36dfde: 9b01         	ldr	r3, [sp, #0x4]
  36dfe0: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36dfe4: 681b         	ldr	r3, [r3]
  36dfe6: f503 73fc    	add.w	r3, r3, #0x1f8
  36dfea: 681b         	ldr	r3, [r3]
  36dfec: 9a01         	ldr	r2, [sp, #0x4]
  36dfee: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  36dff2: 4610         	mov	r0, r2
  36dff4: 4a2c         	ldr	r2, [pc, #0xb0]         @ 0x36e0a8 <MenuScreen::pauseTraining()+0x2e8>
  36dff6: 447a         	add	r2, pc
  36dff8: 4611         	mov	r1, r2
  36dffa: 4798         	blx	r3
  36dffc: 9b01         	ldr	r3, [sp, #0x4]
  36dffe: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36e002: 681b         	ldr	r3, [r3]
  36e004: 334c         	adds	r3, #0x4c
  36e006: 681d         	ldr	r5, [r3]
  36e008: 9b01         	ldr	r3, [sp, #0x4]
  36e00a: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36e00e: 461e         	mov	r6, r3
  36e010: 9b01         	ldr	r3, [sp, #0x4]
  36e012: f503 778c    	add.w	r7, r3, #0x118
  36e016: ab02         	add	r3, sp, #0x8
  36e018: 4618         	mov	r0, r3
  36e01a: f04f 0100    	mov.w	r1, #0x0
  36e01e: f04f 0200    	mov.w	r2, #0x0
  36e022: f2c4 2270    	movt	r2, #0x4270
  36e026: f224 fe63    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x224cc6
  36e02a: aa04         	add	r2, sp, #0x10
  36e02c: ab02         	add	r3, sp, #0x8
  36e02e: 4610         	mov	r0, r2
  36e030: 4639         	mov	r1, r7
  36e032: 461a         	mov	r2, r3
  36e034: f7fe fa12    	bl	0x36c45c <non-virtual thunk to MenuLayer::keyBackClicked()+0x194> @ imm = #-0x1bdc
  36e038: ab04         	add	r3, sp, #0x10
  36e03a: 4630         	mov	r0, r6
  36e03c: 4619         	mov	r1, r3
  36e03e: 47a8         	blx	r5
  36e040: 9b01         	ldr	r3, [sp, #0x4]
  36e042: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36e046: 681b         	ldr	r3, [r3]
  36e048: 337c         	adds	r3, #0x7c
  36e04a: 681d         	ldr	r5, [r3]
  36e04c: 9b01         	ldr	r3, [sp, #0x4]
  36e04e: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36e052: 461e         	mov	r6, r3
  36e054: ab04         	add	r3, sp, #0x10
  36e056: 4618         	mov	r0, r3
  36e058: f04f 517c    	mov.w	r1, #0x3f000000
  36e05c: f04f 527c    	mov.w	r2, #0x3f000000
  36e060: f224 fe46    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x224c8c
  36e064: ab04         	add	r3, sp, #0x10
  36e066: 4630         	mov	r0, r6
  36e068: 4619         	mov	r1, r3
  36e06a: 47a8         	blx	r5
  36e06c: 4b0f         	ldr	r3, [pc, #0x3c]         @ 0x36e0ac <MenuScreen::pauseTraining()+0x2ec>
  36e06e: 58e3         	ldr	r3, [r4, r3]
  36e070: 681b         	ldr	r3, [r3]
  36e072: 4618         	mov	r0, r3
  36e074: 2104         	movs	r1, #0x4
  36e076: f089 fea3    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x89d46
  36e07a: 9801         	ldr	r0, [sp, #0x4]
  36e07c: 2101         	movs	r1, #0x1
  36e07e: f001 fe73    	bl	0x36fd68 <MenuScreen::showScreen(bool)> @ imm = #0x1ce6
  36e082: f272 fb15    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x27262a
  36e086: 4603         	mov	r3, r0
  36e088: 4618         	mov	r0, r3
  36e08a: 4b09         	ldr	r3, [pc, #0x24]         @ 0x36e0b0 <MenuScreen::pauseTraining()+0x2f0>
  36e08c: 447b         	add	r3, pc
  36e08e: 4619         	mov	r1, r3
  36e090: 2200         	movs	r2, #0x0
  36e092: f272 fd4b    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x272a96
  36e096: b007         	add	sp, #0x1c
  36e098: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x36e099); words below are literal-pool data ---
  36e09a: bf00         	nop
  36e09c: 4c40         	ldr	r4, [pc, #0x100]        @ 0x36e1a0 <MenuScreen::endTraining()+0xa4>
  36e09e: 005c         	lsls	r4, r3, #0x1
  36e0a0: fb46 0045    	<unknown>
  36e0a4: fa2e 0045    	<unknown>
  36e0a8: fa12 0045    	<unknown>
  36e0ac: d730         	bvc	0x36e110 <MenuScreen::endTraining()+0x14> @ imm = #0x60
  36e0ae: ffff f984    	<unknown>
  36e0b2: 0045         	lsls	r5, r0, #0x1

// ==== MenuScreen::resumeTraining
//      file offset 0x36e0b4 (= ELF address; Ghidra 0x37e0b4), 72 bytes, Thumb-2
  36e0b4: b500         	push	{lr}
  36e0b6: b083         	sub	sp, #0xc
  36e0b8: 9001         	str	r0, [sp, #0x4]
  36e0ba: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x36e0f0 <MenuScreen::resumeTraining()+0x3c>
  36e0bc: 447a         	add	r2, pc
  36e0be: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x36e0f4 <MenuScreen::resumeTraining()+0x40>
  36e0c0: 58d3         	ldr	r3, [r2, r3]
  36e0c2: 681b         	ldr	r3, [r3]
  36e0c4: 4618         	mov	r0, r3
  36e0c6: 2104         	movs	r1, #0x4
  36e0c8: f089 fe7a    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x89cf4
  36e0cc: 9801         	ldr	r0, [sp, #0x4]
  36e0ce: 2100         	movs	r1, #0x0
  36e0d0: f001 fe4a    	bl	0x36fd68 <MenuScreen::showScreen(bool)> @ imm = #0x1c94
  36e0d4: f272 faec    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2725d8
  36e0d8: 4603         	mov	r3, r0
  36e0da: 4618         	mov	r0, r3
  36e0dc: 4b06         	ldr	r3, [pc, #0x18]         @ 0x36e0f8 <MenuScreen::resumeTraining()+0x44>
  36e0de: 447b         	add	r3, pc
  36e0e0: 4619         	mov	r1, r3
  36e0e2: 2200         	movs	r2, #0x0
  36e0e4: f272 fd22    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x272a44
  36e0e8: b003         	add	sp, #0xc
  36e0ea: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x36e0ed); words below are literal-pool data ---
  36e0ee: bf00         	nop
  36e0f0: 494c         	ldr	r1, [pc, #0x130]        @ 0x36e224 <MenuScreen::endTraining()+0x128>
  36e0f2: 005c         	lsls	r4, r3, #0x1
  36e0f4: d730         	bvc	0x36e158 <MenuScreen::endTraining()+0x5c> @ imm = #0x60
  36e0f6: ffff f93e    	vqshrn.u64	d31, q15, #0x1
  36e0fa: 0045         	lsls	r5, r0, #0x1

// ==== MenuScreen::endTraining
//      file offset 0x36e0fc (= ELF address; Ghidra 0x37e0fc), 576 bytes, Thumb-2
  36e0fc: b570         	push	{r4, r5, r6, lr}
  36e0fe: b086         	sub	sp, #0x18
  36e100: 9001         	str	r0, [sp, #0x4]
  36e102: 9b01         	ldr	r3, [sp, #0x4]
  36e104: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  36e108: 681b         	ldr	r3, [r3]
  36e10a: 3390         	adds	r3, #0x90
  36e10c: 681b         	ldr	r3, [r3]
  36e10e: 9a01         	ldr	r2, [sp, #0x4]
  36e110: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  36e114: 4610         	mov	r0, r2
  36e116: 2101         	movs	r1, #0x1
  36e118: 4798         	blx	r3
  36e11a: 9b01         	ldr	r3, [sp, #0x4]
  36e11c: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  36e120: 681b         	ldr	r3, [r3]
  36e122: 3390         	adds	r3, #0x90
  36e124: 681b         	ldr	r3, [r3]
  36e126: 9a01         	ldr	r2, [sp, #0x4]
  36e128: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  36e12c: 4610         	mov	r0, r2
  36e12e: 2101         	movs	r1, #0x1
  36e130: 4798         	blx	r3
  36e132: 9b01         	ldr	r3, [sp, #0x4]
  36e134: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  36e138: 681b         	ldr	r3, [r3]
  36e13a: 3390         	adds	r3, #0x90
  36e13c: 681b         	ldr	r3, [r3]
  36e13e: 9a01         	ldr	r2, [sp, #0x4]
  36e140: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  36e144: 4610         	mov	r0, r2
  36e146: 2100         	movs	r1, #0x0
  36e148: 4798         	blx	r3
  36e14a: 9b01         	ldr	r3, [sp, #0x4]
  36e14c: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  36e150: 681b         	ldr	r3, [r3]
  36e152: 3390         	adds	r3, #0x90
  36e154: 681b         	ldr	r3, [r3]
  36e156: 9a01         	ldr	r2, [sp, #0x4]
  36e158: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  36e15c: 4610         	mov	r0, r2
  36e15e: 2100         	movs	r1, #0x0
  36e160: 4798         	blx	r3
  36e162: 9b01         	ldr	r3, [sp, #0x4]
  36e164: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  36e168: 681b         	ldr	r3, [r3]
  36e16a: 3390         	adds	r3, #0x90
  36e16c: 681b         	ldr	r3, [r3]
  36e16e: 9a01         	ldr	r2, [sp, #0x4]
  36e170: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  36e174: 4610         	mov	r0, r2
  36e176: 2100         	movs	r1, #0x0
  36e178: 4798         	blx	r3
  36e17a: 9b01         	ldr	r3, [sp, #0x4]
  36e17c: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  36e180: 681b         	ldr	r3, [r3]
  36e182: 3390         	adds	r3, #0x90
  36e184: 681b         	ldr	r3, [r3]
  36e186: 9a01         	ldr	r2, [sp, #0x4]
  36e188: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  36e18c: 4610         	mov	r0, r2
  36e18e: 2100         	movs	r1, #0x0
  36e190: 4798         	blx	r3
  36e192: 9b01         	ldr	r3, [sp, #0x4]
  36e194: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  36e198: 681b         	ldr	r3, [r3]
  36e19a: 3390         	adds	r3, #0x90
  36e19c: 681b         	ldr	r3, [r3]
  36e19e: 9a01         	ldr	r2, [sp, #0x4]
  36e1a0: f8d2 2100    	ldr.w	r2, [r2, #0x100]
  36e1a4: 4610         	mov	r0, r2
  36e1a6: 2100         	movs	r1, #0x0
  36e1a8: 4798         	blx	r3
  36e1aa: 9b01         	ldr	r3, [sp, #0x4]
  36e1ac: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  36e1b0: 681b         	ldr	r3, [r3]
  36e1b2: 3390         	adds	r3, #0x90
  36e1b4: 681b         	ldr	r3, [r3]
  36e1b6: 9a01         	ldr	r2, [sp, #0x4]
  36e1b8: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  36e1bc: 4610         	mov	r0, r2
  36e1be: 2100         	movs	r1, #0x0
  36e1c0: 4798         	blx	r3
  36e1c2: 9b01         	ldr	r3, [sp, #0x4]
  36e1c4: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  36e1c8: 681b         	ldr	r3, [r3]
  36e1ca: 3390         	adds	r3, #0x90
  36e1cc: 681b         	ldr	r3, [r3]
  36e1ce: 9a01         	ldr	r2, [sp, #0x4]
  36e1d0: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  36e1d4: 4610         	mov	r0, r2
  36e1d6: 2100         	movs	r1, #0x0
  36e1d8: 4798         	blx	r3
  36e1da: 9b01         	ldr	r3, [sp, #0x4]
  36e1dc: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36e1e0: 681b         	ldr	r3, [r3]
  36e1e2: f503 73fc    	add.w	r3, r3, #0x1f8
  36e1e6: 681b         	ldr	r3, [r3]
  36e1e8: 9a01         	ldr	r2, [sp, #0x4]
  36e1ea: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  36e1ee: 4610         	mov	r0, r2
  36e1f0: 4a50         	ldr	r2, [pc, #0x140]        @ 0x36e334 <MenuScreen::endTraining()+0x238>
  36e1f2: 447a         	add	r2, pc
  36e1f4: 4611         	mov	r1, r2
  36e1f6: 4798         	blx	r3
  36e1f8: 9b01         	ldr	r3, [sp, #0x4]
  36e1fa: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36e1fe: 681b         	ldr	r3, [r3]
  36e200: 334c         	adds	r3, #0x4c
  36e202: 681c         	ldr	r4, [r3]
  36e204: 9b01         	ldr	r3, [sp, #0x4]
  36e206: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36e20a: 461d         	mov	r5, r3
  36e20c: 9b01         	ldr	r3, [sp, #0x4]
  36e20e: f503 768c    	add.w	r6, r3, #0x118
  36e212: ab02         	add	r3, sp, #0x8
  36e214: 4618         	mov	r0, r3
  36e216: f04f 0100    	mov.w	r1, #0x0
  36e21a: f04f 0200    	mov.w	r2, #0x0
  36e21e: f2c4 2270    	movt	r2, #0x4270
  36e222: f224 fd65    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x224aca
  36e226: aa04         	add	r2, sp, #0x10
  36e228: ab02         	add	r3, sp, #0x8
  36e22a: 4610         	mov	r0, r2
  36e22c: 4631         	mov	r1, r6
  36e22e: 461a         	mov	r2, r3
  36e230: f7fe f914    	bl	0x36c45c <non-virtual thunk to MenuLayer::keyBackClicked()+0x194> @ imm = #-0x1dd8
  36e234: ab04         	add	r3, sp, #0x10
  36e236: 4628         	mov	r0, r5
  36e238: 4619         	mov	r1, r3
  36e23a: 47a0         	blx	r4
  36e23c: 9b01         	ldr	r3, [sp, #0x4]
  36e23e: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36e242: 681b         	ldr	r3, [r3]
  36e244: 337c         	adds	r3, #0x7c
  36e246: 681c         	ldr	r4, [r3]
  36e248: 9b01         	ldr	r3, [sp, #0x4]
  36e24a: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36e24e: 461d         	mov	r5, r3
  36e250: ab04         	add	r3, sp, #0x10
  36e252: 4618         	mov	r0, r3
  36e254: f04f 517c    	mov.w	r1, #0x3f000000
  36e258: f04f 527c    	mov.w	r2, #0x3f000000
  36e25c: f224 fd48    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x224a90
  36e260: ab04         	add	r3, sp, #0x10
  36e262: 4628         	mov	r0, r5
  36e264: 4619         	mov	r1, r3
  36e266: 47a0         	blx	r4
  36e268: 9b01         	ldr	r3, [sp, #0x4]
  36e26a: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  36e26e: 681b         	ldr	r3, [r3]
  36e270: f503 73fc    	add.w	r3, r3, #0x1f8
  36e274: 681b         	ldr	r3, [r3]
  36e276: 9a01         	ldr	r2, [sp, #0x4]
  36e278: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  36e27c: 4610         	mov	r0, r2
  36e27e: 4a2e         	ldr	r2, [pc, #0xb8]         @ 0x36e338 <MenuScreen::endTraining()+0x23c>
  36e280: 447a         	add	r2, pc
  36e282: 4611         	mov	r1, r2
  36e284: 4798         	blx	r3
  36e286: 9b01         	ldr	r3, [sp, #0x4]
  36e288: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  36e28c: 681b         	ldr	r3, [r3]
  36e28e: 337c         	adds	r3, #0x7c
  36e290: 681c         	ldr	r4, [r3]
  36e292: 9b01         	ldr	r3, [sp, #0x4]
  36e294: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  36e298: 461d         	mov	r5, r3
  36e29a: ab04         	add	r3, sp, #0x10
  36e29c: 4618         	mov	r0, r3
  36e29e: f04f 517c    	mov.w	r1, #0x3f000000
  36e2a2: f04f 527c    	mov.w	r2, #0x3f000000
  36e2a6: f224 fd23    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x224a46
  36e2aa: ab04         	add	r3, sp, #0x10
  36e2ac: 4628         	mov	r0, r5
  36e2ae: 4619         	mov	r1, r3
  36e2b0: 47a0         	blx	r4
  36e2b2: 9b01         	ldr	r3, [sp, #0x4]
  36e2b4: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  36e2b8: 681b         	ldr	r3, [r3]
  36e2ba: 334c         	adds	r3, #0x4c
  36e2bc: 681c         	ldr	r4, [r3]
  36e2be: 9b01         	ldr	r3, [sp, #0x4]
  36e2c0: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  36e2c4: 461d         	mov	r5, r3
  36e2c6: 9b01         	ldr	r3, [sp, #0x4]
  36e2c8: f503 768c    	add.w	r6, r3, #0x118
  36e2cc: ab02         	add	r3, sp, #0x8
  36e2ce: 4618         	mov	r0, r3
  36e2d0: f04f 0100    	mov.w	r1, #0x0
  36e2d4: f04f 0200    	mov.w	r2, #0x0
  36e2d8: f2cc 2270    	movt	r2, #0xc270
  36e2dc: f224 fd08    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x224a10
  36e2e0: aa04         	add	r2, sp, #0x10
  36e2e2: ab02         	add	r3, sp, #0x8
  36e2e4: 4610         	mov	r0, r2
  36e2e6: 4631         	mov	r1, r6
  36e2e8: 461a         	mov	r2, r3
  36e2ea: f7fe f8b7    	bl	0x36c45c <non-virtual thunk to MenuLayer::keyBackClicked()+0x194> @ imm = #-0x1e92
  36e2ee: ab04         	add	r3, sp, #0x10
  36e2f0: 4628         	mov	r0, r5
  36e2f2: 4619         	mov	r1, r3
  36e2f4: 47a0         	blx	r4
  36e2f6: 9b01         	ldr	r3, [sp, #0x4]
  36e2f8: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  36e2fc: 681b         	ldr	r3, [r3]
  36e2fe: 334c         	adds	r3, #0x4c
  36e300: 681c         	ldr	r4, [r3]
  36e302: 9b01         	ldr	r3, [sp, #0x4]
  36e304: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  36e308: 461d         	mov	r5, r3
  36e30a: 9b01         	ldr	r3, [sp, #0x4]
  36e30c: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  36e310: 681b         	ldr	r3, [r3]
  36e312: 3350         	adds	r3, #0x50
  36e314: 681b         	ldr	r3, [r3]
  36e316: 9a01         	ldr	r2, [sp, #0x4]
  36e318: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  36e31c: 4610         	mov	r0, r2
  36e31e: 4798         	blx	r3
  36e320: 4603         	mov	r3, r0
  36e322: 4628         	mov	r0, r5
  36e324: 4619         	mov	r1, r3
  36e326: 47a0         	blx	r4
  36e328: 9801         	ldr	r0, [sp, #0x4]
  36e32a: 2101         	movs	r1, #0x1
  36e32c: f001 fd1c    	bl	0x36fd68 <MenuScreen::showScreen(bool)> @ imm = #0x1a38
  36e330: b006         	add	sp, #0x18
  36e332: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x36e333); words below are literal-pool data ---
  36e334: f836 0045    	<unknown>
  36e338: f720 0045    	<unknown>

// ==== MenuScreen::pauseCoop
//      file offset 0x36e33c (= ELF address; Ghidra 0x37e33c), 1124 bytes, Thumb-2
  36e33c: b5f0         	push	{r4, r5, r6, r7, lr}
  36e33e: b08b         	sub	sp, #0x2c
  36e340: 9001         	str	r0, [sp, #0x4]
  36e342: f8df 4434    	ldr.w	r4, [pc, #0x434]        @ 0x36e778 <MenuScreen::pauseCoop()+0x43c>
  36e346: 447c         	add	r4, pc
  36e348: 9b01         	ldr	r3, [sp, #0x4]
  36e34a: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  36e34e: 681b         	ldr	r3, [r3]
  36e350: 3390         	adds	r3, #0x90
  36e352: 681b         	ldr	r3, [r3]
  36e354: 9a01         	ldr	r2, [sp, #0x4]
  36e356: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  36e35a: 4610         	mov	r0, r2
  36e35c: 2101         	movs	r1, #0x1
  36e35e: 4798         	blx	r3
  36e360: 9b01         	ldr	r3, [sp, #0x4]
  36e362: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  36e366: 681b         	ldr	r3, [r3]
  36e368: 3390         	adds	r3, #0x90
  36e36a: 681b         	ldr	r3, [r3]
  36e36c: 9a01         	ldr	r2, [sp, #0x4]
  36e36e: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  36e372: 4610         	mov	r0, r2
  36e374: 2101         	movs	r1, #0x1
  36e376: 4798         	blx	r3
  36e378: 9b01         	ldr	r3, [sp, #0x4]
  36e37a: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  36e37e: 681b         	ldr	r3, [r3]
  36e380: f503 73fc    	add.w	r3, r3, #0x1f8
  36e384: 681b         	ldr	r3, [r3]
  36e386: 9a01         	ldr	r2, [sp, #0x4]
  36e388: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  36e38c: 4610         	mov	r0, r2
  36e38e: 4afb         	ldr	r2, [pc, #0x3ec]        @ 0x36e77c <MenuScreen::pauseCoop()+0x440>
  36e390: 447a         	add	r2, pc
  36e392: 4611         	mov	r1, r2
  36e394: 4798         	blx	r3
  36e396: 9b01         	ldr	r3, [sp, #0x4]
  36e398: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  36e39c: 681b         	ldr	r3, [r3]
  36e39e: 334c         	adds	r3, #0x4c
  36e3a0: 681d         	ldr	r5, [r3]
  36e3a2: 9b01         	ldr	r3, [sp, #0x4]
  36e3a4: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  36e3a8: 461e         	mov	r6, r3
  36e3aa: 9b01         	ldr	r3, [sp, #0x4]
  36e3ac: f503 778c    	add.w	r7, r3, #0x118
  36e3b0: ab06         	add	r3, sp, #0x18
  36e3b2: 4618         	mov	r0, r3
  36e3b4: f04f 0100    	mov.w	r1, #0x0
  36e3b8: f2cc 2196    	movt	r1, #0xc296
  36e3bc: f04f 0200    	mov.w	r2, #0x0
  36e3c0: f2cc 2270    	movt	r2, #0xc270
  36e3c4: f224 fc94    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x224928
  36e3c8: aa08         	add	r2, sp, #0x20
  36e3ca: ab06         	add	r3, sp, #0x18
  36e3cc: 4610         	mov	r0, r2
  36e3ce: 4639         	mov	r1, r7
  36e3d0: 461a         	mov	r2, r3
  36e3d2: f7fe f843    	bl	0x36c45c <non-virtual thunk to MenuLayer::keyBackClicked()+0x194> @ imm = #-0x1f7a
  36e3d6: ab08         	add	r3, sp, #0x20
  36e3d8: 4630         	mov	r0, r6
  36e3da: 4619         	mov	r1, r3
  36e3dc: 47a8         	blx	r5
  36e3de: 9b01         	ldr	r3, [sp, #0x4]
  36e3e0: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  36e3e4: 681b         	ldr	r3, [r3]
  36e3e6: 334c         	adds	r3, #0x4c
  36e3e8: 681d         	ldr	r5, [r3]
  36e3ea: 9b01         	ldr	r3, [sp, #0x4]
  36e3ec: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  36e3f0: 461e         	mov	r6, r3
  36e3f2: 9b01         	ldr	r3, [sp, #0x4]
  36e3f4: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  36e3f8: 681b         	ldr	r3, [r3]
  36e3fa: 3350         	adds	r3, #0x50
  36e3fc: 681b         	ldr	r3, [r3]
  36e3fe: 9a01         	ldr	r2, [sp, #0x4]
  36e400: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  36e404: 4610         	mov	r0, r2
  36e406: 4798         	blx	r3
  36e408: 4603         	mov	r3, r0
  36e40a: 4630         	mov	r0, r6
  36e40c: 4619         	mov	r1, r3
  36e40e: 47a8         	blx	r5
  36e410: 9b01         	ldr	r3, [sp, #0x4]
  36e412: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  36e416: 681b         	ldr	r3, [r3]
  36e418: 337c         	adds	r3, #0x7c
  36e41a: 681d         	ldr	r5, [r3]
  36e41c: 9b01         	ldr	r3, [sp, #0x4]
  36e41e: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  36e422: 461e         	mov	r6, r3
  36e424: ab08         	add	r3, sp, #0x20
  36e426: 4618         	mov	r0, r3
  36e428: f04f 517c    	mov.w	r1, #0x3f000000
  36e42c: f04f 527c    	mov.w	r2, #0x3f000000
  36e430: f224 fc5e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2248bc
  36e434: ab08         	add	r3, sp, #0x20
  36e436: 4630         	mov	r0, r6
  36e438: 4619         	mov	r1, r3
  36e43a: 47a8         	blx	r5
  36e43c: 9b01         	ldr	r3, [sp, #0x4]
  36e43e: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  36e442: 681b         	ldr	r3, [r3]
  36e444: 3390         	adds	r3, #0x90
  36e446: 681b         	ldr	r3, [r3]
  36e448: 9a01         	ldr	r2, [sp, #0x4]
  36e44a: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  36e44e: 4610         	mov	r0, r2
  36e450: 2101         	movs	r1, #0x1
  36e452: 4798         	blx	r3
  36e454: 9b01         	ldr	r3, [sp, #0x4]
  36e456: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  36e45a: 681b         	ldr	r3, [r3]
  36e45c: 3390         	adds	r3, #0x90
  36e45e: 681b         	ldr	r3, [r3]
  36e460: 9a01         	ldr	r2, [sp, #0x4]
  36e462: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  36e466: 4610         	mov	r0, r2
  36e468: 2101         	movs	r1, #0x1
  36e46a: 4798         	blx	r3
  36e46c: 9b01         	ldr	r3, [sp, #0x4]
  36e46e: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  36e472: 681b         	ldr	r3, [r3]
  36e474: f503 73fc    	add.w	r3, r3, #0x1f8
  36e478: 681b         	ldr	r3, [r3]
  36e47a: 9a01         	ldr	r2, [sp, #0x4]
  36e47c: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  36e480: 4610         	mov	r0, r2
  36e482: 4abf         	ldr	r2, [pc, #0x2fc]        @ 0x36e780 <MenuScreen::pauseCoop()+0x444>
  36e484: 447a         	add	r2, pc
  36e486: 4611         	mov	r1, r2
  36e488: 4798         	blx	r3
  36e48a: 9b01         	ldr	r3, [sp, #0x4]
  36e48c: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  36e490: 681b         	ldr	r3, [r3]
  36e492: 334c         	adds	r3, #0x4c
  36e494: 681d         	ldr	r5, [r3]
  36e496: 9b01         	ldr	r3, [sp, #0x4]
  36e498: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  36e49c: 461e         	mov	r6, r3
  36e49e: 9b01         	ldr	r3, [sp, #0x4]
  36e4a0: f503 778c    	add.w	r7, r3, #0x118
  36e4a4: ab06         	add	r3, sp, #0x18
  36e4a6: 4618         	mov	r0, r3
  36e4a8: f04f 0100    	mov.w	r1, #0x0
  36e4ac: f2c4 2196    	movt	r1, #0x4296
  36e4b0: f04f 0200    	mov.w	r2, #0x0
  36e4b4: f2cc 2270    	movt	r2, #0xc270
  36e4b8: f224 fc1a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x224834
  36e4bc: aa08         	add	r2, sp, #0x20
  36e4be: ab06         	add	r3, sp, #0x18
  36e4c0: 4610         	mov	r0, r2
  36e4c2: 4639         	mov	r1, r7
  36e4c4: 461a         	mov	r2, r3
  36e4c6: f7fd ffc9    	bl	0x36c45c <non-virtual thunk to MenuLayer::keyBackClicked()+0x194> @ imm = #-0x206e
  36e4ca: ab08         	add	r3, sp, #0x20
  36e4cc: 4630         	mov	r0, r6
  36e4ce: 4619         	mov	r1, r3
  36e4d0: 47a8         	blx	r5
  36e4d2: 9b01         	ldr	r3, [sp, #0x4]
  36e4d4: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  36e4d8: 681b         	ldr	r3, [r3]
  36e4da: 334c         	adds	r3, #0x4c
  36e4dc: 681d         	ldr	r5, [r3]
  36e4de: 9b01         	ldr	r3, [sp, #0x4]
  36e4e0: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  36e4e4: 461e         	mov	r6, r3
  36e4e6: 9b01         	ldr	r3, [sp, #0x4]
  36e4e8: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  36e4ec: 681b         	ldr	r3, [r3]
  36e4ee: 3350         	adds	r3, #0x50
  36e4f0: 681b         	ldr	r3, [r3]
  36e4f2: 9a01         	ldr	r2, [sp, #0x4]
  36e4f4: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  36e4f8: 4610         	mov	r0, r2
  36e4fa: 4798         	blx	r3
  36e4fc: 4603         	mov	r3, r0
  36e4fe: 4630         	mov	r0, r6
  36e500: 4619         	mov	r1, r3
  36e502: 47a8         	blx	r5
  36e504: 9b01         	ldr	r3, [sp, #0x4]
  36e506: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  36e50a: 681b         	ldr	r3, [r3]
  36e50c: 337c         	adds	r3, #0x7c
  36e50e: 681d         	ldr	r5, [r3]
  36e510: 9b01         	ldr	r3, [sp, #0x4]
  36e512: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  36e516: 461e         	mov	r6, r3
  36e518: ab08         	add	r3, sp, #0x20
  36e51a: 4618         	mov	r0, r3
  36e51c: f04f 517c    	mov.w	r1, #0x3f000000
  36e520: f04f 527c    	mov.w	r2, #0x3f000000
  36e524: f224 fbe4    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2247c8
  36e528: ab08         	add	r3, sp, #0x20
  36e52a: 4630         	mov	r0, r6
  36e52c: 4619         	mov	r1, r3
  36e52e: 47a8         	blx	r5
  36e530: 9b01         	ldr	r3, [sp, #0x4]
  36e532: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  36e536: 681b         	ldr	r3, [r3]
  36e538: 3390         	adds	r3, #0x90
  36e53a: 681b         	ldr	r3, [r3]
  36e53c: 9a01         	ldr	r2, [sp, #0x4]
  36e53e: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  36e542: 4610         	mov	r0, r2
  36e544: 2100         	movs	r1, #0x0
  36e546: 4798         	blx	r3
  36e548: 9b01         	ldr	r3, [sp, #0x4]
  36e54a: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  36e54e: 681b         	ldr	r3, [r3]
  36e550: 3390         	adds	r3, #0x90
  36e552: 681b         	ldr	r3, [r3]
  36e554: 9a01         	ldr	r2, [sp, #0x4]
  36e556: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  36e55a: 4610         	mov	r0, r2
  36e55c: 2100         	movs	r1, #0x0
  36e55e: 4798         	blx	r3
  36e560: 9b01         	ldr	r3, [sp, #0x4]
  36e562: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  36e566: 681b         	ldr	r3, [r3]
  36e568: 3390         	adds	r3, #0x90
  36e56a: 681b         	ldr	r3, [r3]
  36e56c: 9a01         	ldr	r2, [sp, #0x4]
  36e56e: f8d2 2100    	ldr.w	r2, [r2, #0x100]
  36e572: 4610         	mov	r0, r2
  36e574: 2101         	movs	r1, #0x1
  36e576: 4798         	blx	r3
  36e578: 9b01         	ldr	r3, [sp, #0x4]
  36e57a: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  36e57e: 681b         	ldr	r3, [r3]
  36e580: 3390         	adds	r3, #0x90
  36e582: 681b         	ldr	r3, [r3]
  36e584: 9a01         	ldr	r2, [sp, #0x4]
  36e586: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  36e58a: 4610         	mov	r0, r2
  36e58c: 2101         	movs	r1, #0x1
  36e58e: 4798         	blx	r3
  36e590: 9b01         	ldr	r3, [sp, #0x4]
  36e592: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  36e596: 681b         	ldr	r3, [r3]
  36e598: f503 73de    	add.w	r3, r3, #0x1bc
  36e59c: 681d         	ldr	r5, [r3]
  36e59e: 9b01         	ldr	r3, [sp, #0x4]
  36e5a0: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  36e5a4: 461e         	mov	r6, r3
  36e5a6: 20ff         	movs	r0, #0xff
  36e5a8: 21ff         	movs	r1, #0xff
  36e5aa: 22ff         	movs	r2, #0xff
  36e5ac: f7fd ff28    	bl	0x36c400 <non-virtual thunk to MenuLayer::keyBackClicked()+0x138> @ imm = #-0x21b0
  36e5b0: 4603         	mov	r3, r0
  36e5b2: 461a         	mov	r2, r3
  36e5b4: f88d 2020    	strb.w	r2, [sp, #0x20]
  36e5b8: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  36e5bc: f88d 2021    	strb.w	r2, [sp, #0x21]
  36e5c0: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  36e5c4: f88d 3022    	strb.w	r3, [sp, #0x22]
  36e5c8: ab08         	add	r3, sp, #0x20
  36e5ca: 4630         	mov	r0, r6
  36e5cc: 4619         	mov	r1, r3
  36e5ce: 47a8         	blx	r5
  36e5d0: f063 fe7a    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #0x63cf4
  36e5d4: 4603         	mov	r3, r0
  36e5d6: 4618         	mov	r0, r3
  36e5d8: f064 f956    	bl	0x3d2888 <ScoreKeeper::getScore()> @ imm = #0x642ac
  36e5dc: 4603         	mov	r3, r0
  36e5de: 9303         	str	r3, [sp, #0xc]
  36e5e0: f063 fe72    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #0x63ce4
  36e5e4: 4605         	mov	r5, r0
  36e5e6: 4b67         	ldr	r3, [pc, #0x19c]        @ 0x36e784 <MenuScreen::pauseCoop()+0x448>
  36e5e8: 58e3         	ldr	r3, [r4, r3]
  36e5ea: 681b         	ldr	r3, [r3]
  36e5ec: 681b         	ldr	r3, [r3]
  36e5ee: f503 73e0    	add.w	r3, r3, #0x1c0
  36e5f2: 681b         	ldr	r3, [r3]
  36e5f4: 4a63         	ldr	r2, [pc, #0x18c]        @ 0x36e784 <MenuScreen::pauseCoop()+0x448>
  36e5f6: 58a2         	ldr	r2, [r4, r2]
  36e5f8: 6812         	ldr	r2, [r2]
  36e5fa: a908         	add	r1, sp, #0x20
  36e5fc: 4608         	mov	r0, r1
  36e5fe: 4611         	mov	r1, r2
  36e600: 4798         	blx	r3
  36e602: ab08         	add	r3, sp, #0x20
  36e604: 4628         	mov	r0, r5
  36e606: 4619         	mov	r1, r3
  36e608: f064 f886    	bl	0x3d2718 <ScoreKeeper::getKills(std::string)> @ imm = #0x6410c
  36e60c: 4603         	mov	r3, r0
  36e60e: 9304         	str	r3, [sp, #0x10]
  36e610: ab08         	add	r3, sp, #0x20
  36e612: 4618         	mov	r0, r3
  36e614: f047 f17e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4472fc
  36e618: f274 f808    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x274010
  36e61c: 4603         	mov	r3, r0
  36e61e: 4618         	mov	r0, r3
  36e620: 4b59         	ldr	r3, [pc, #0x164]        @ 0x36e788 <MenuScreen::pauseCoop()+0x44c>
  36e622: 447b         	add	r3, pc
  36e624: 4619         	mov	r1, r3
  36e626: 2200         	movs	r2, #0x0
  36e628: f273 fdfe    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x273bfc
  36e62c: 4603         	mov	r3, r0
  36e62e: 9305         	str	r3, [sp, #0x14]
  36e630: 9b01         	ldr	r3, [sp, #0x4]
  36e632: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  36e636: 681b         	ldr	r3, [r3]
  36e638: f503 73fc    	add.w	r3, r3, #0x1f8
  36e63c: 681d         	ldr	r5, [r3]
  36e63e: 9b01         	ldr	r3, [sp, #0x4]
  36e640: f8d3 6100    	ldr.w	r6, [r3, #0x100]
  36e644: 4b51         	ldr	r3, [pc, #0x144]        @ 0x36e78c <MenuScreen::pauseCoop()+0x450>
  36e646: 447b         	add	r3, pc
  36e648: 4618         	mov	r0, r3
  36e64a: 9903         	ldr	r1, [sp, #0xc]
  36e64c: f22b fa60    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x22b4c0
  36e650: 4603         	mov	r3, r0
  36e652: 4618         	mov	r0, r3
  36e654: f22b f968    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x22b2d0
  36e658: 4603         	mov	r3, r0
  36e65a: 4630         	mov	r0, r6
  36e65c: 4619         	mov	r1, r3
  36e65e: 47a8         	blx	r5
  36e660: 9b01         	ldr	r3, [sp, #0x4]
  36e662: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  36e666: 681b         	ldr	r3, [r3]
  36e668: f503 73fc    	add.w	r3, r3, #0x1f8
  36e66c: 681d         	ldr	r5, [r3]
  36e66e: 9b01         	ldr	r3, [sp, #0x4]
  36e670: f8d3 6104    	ldr.w	r6, [r3, #0x104]
  36e674: 4b46         	ldr	r3, [pc, #0x118]        @ 0x36e790 <MenuScreen::pauseCoop()+0x454>
  36e676: 447b         	add	r3, pc
  36e678: 4618         	mov	r0, r3
  36e67a: 9904         	ldr	r1, [sp, #0x10]
  36e67c: f22b fa48    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x22b490
  36e680: 4603         	mov	r3, r0
  36e682: 4618         	mov	r0, r3
  36e684: f22b f950    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x22b2a0
  36e688: 4603         	mov	r3, r0
  36e68a: 4630         	mov	r0, r6
  36e68c: 4619         	mov	r1, r3
  36e68e: 47a8         	blx	r5
  36e690: 9b01         	ldr	r3, [sp, #0x4]
  36e692: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  36e696: 681b         	ldr	r3, [r3]
  36e698: f503 73fc    	add.w	r3, r3, #0x1f8
  36e69c: 681d         	ldr	r5, [r3]
  36e69e: 9b01         	ldr	r3, [sp, #0x4]
  36e6a0: f8d3 6108    	ldr.w	r6, [r3, #0x108]
  36e6a4: 4b3b         	ldr	r3, [pc, #0xec]         @ 0x36e794 <MenuScreen::pauseCoop()+0x458>
  36e6a6: 447b         	add	r3, pc
  36e6a8: 4618         	mov	r0, r3
  36e6aa: 9905         	ldr	r1, [sp, #0x14]
  36e6ac: f22b fa30    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x22b460
  36e6b0: 4603         	mov	r3, r0
  36e6b2: 4618         	mov	r0, r3
  36e6b4: f22b f938    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x22b270
  36e6b8: 4603         	mov	r3, r0
  36e6ba: 4630         	mov	r0, r6
  36e6bc: 4619         	mov	r1, r3
  36e6be: 47a8         	blx	r5
  36e6c0: 9b01         	ldr	r3, [sp, #0x4]
  36e6c2: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36e6c6: 681b         	ldr	r3, [r3]
  36e6c8: f503 73fc    	add.w	r3, r3, #0x1f8
  36e6cc: 681b         	ldr	r3, [r3]
  36e6ce: 9a01         	ldr	r2, [sp, #0x4]
  36e6d0: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  36e6d4: 4610         	mov	r0, r2
  36e6d6: 4a30         	ldr	r2, [pc, #0xc0]         @ 0x36e798 <MenuScreen::pauseCoop()+0x45c>
  36e6d8: 447a         	add	r2, pc
  36e6da: 4611         	mov	r1, r2
  36e6dc: 4798         	blx	r3
  36e6de: 9b01         	ldr	r3, [sp, #0x4]
  36e6e0: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36e6e4: 681b         	ldr	r3, [r3]
  36e6e6: 337c         	adds	r3, #0x7c
  36e6e8: 681d         	ldr	r5, [r3]
  36e6ea: 9b01         	ldr	r3, [sp, #0x4]
  36e6ec: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36e6f0: 461e         	mov	r6, r3
  36e6f2: ab08         	add	r3, sp, #0x20
  36e6f4: 4618         	mov	r0, r3
  36e6f6: f04f 517c    	mov.w	r1, #0x3f000000
  36e6fa: f04f 527c    	mov.w	r2, #0x3f000000
  36e6fe: f224 faf7    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2245ee
  36e702: ab08         	add	r3, sp, #0x20
  36e704: 4630         	mov	r0, r6
  36e706: 4619         	mov	r1, r3
  36e708: 47a8         	blx	r5
  36e70a: 9b01         	ldr	r3, [sp, #0x4]
  36e70c: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36e710: 681b         	ldr	r3, [r3]
  36e712: 334c         	adds	r3, #0x4c
  36e714: 681d         	ldr	r5, [r3]
  36e716: 9b01         	ldr	r3, [sp, #0x4]
  36e718: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36e71c: 461e         	mov	r6, r3
  36e71e: 9b01         	ldr	r3, [sp, #0x4]
  36e720: f503 778c    	add.w	r7, r3, #0x118
  36e724: ab06         	add	r3, sp, #0x18
  36e726: 4618         	mov	r0, r3
  36e728: f04f 0100    	mov.w	r1, #0x0
  36e72c: f04f 0200    	mov.w	r2, #0x0
  36e730: f2c4 2270    	movt	r2, #0x4270
  36e734: f224 fadc    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2245b8
  36e738: aa08         	add	r2, sp, #0x20
  36e73a: ab06         	add	r3, sp, #0x18
  36e73c: 4610         	mov	r0, r2
  36e73e: 4639         	mov	r1, r7
  36e740: 461a         	mov	r2, r3
  36e742: f7fd fe8b    	bl	0x36c45c <non-virtual thunk to MenuLayer::keyBackClicked()+0x194> @ imm = #-0x22ea
  36e746: ab08         	add	r3, sp, #0x20
  36e748: 4630         	mov	r0, r6
  36e74a: 4619         	mov	r1, r3
  36e74c: 47a8         	blx	r5
  36e74e: 4b13         	ldr	r3, [pc, #0x4c]         @ 0x36e79c <MenuScreen::pauseCoop()+0x460>
  36e750: 58e3         	ldr	r3, [r4, r3]
  36e752: 681b         	ldr	r3, [r3]
  36e754: 4618         	mov	r0, r3
  36e756: 2104         	movs	r1, #0x4
  36e758: f089 fb32    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x89664
  36e75c: 9801         	ldr	r0, [sp, #0x4]
  36e75e: 2101         	movs	r1, #0x1
  36e760: f001 fb02    	bl	0x36fd68 <MenuScreen::showScreen(bool)> @ imm = #0x1604
  36e764: e005         	b	0x36e772 <MenuScreen::pauseCoop()+0x436> @ imm = #0xa
  36e766: ab08         	add	r3, sp, #0x20
  36e768: 4618         	mov	r0, r3
  36e76a: f047 f0d3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4471a6
  36e76e: f019 f49d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x41993a
  36e772: b00b         	add	sp, #0x2c
  36e774: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x36e775); words below are literal-pool data ---
  36e776: bf00         	nop
  36e778: 46c2         	mov	r10, r8
  36e77a: 005c         	lsls	r4, r3, #0x1
  36e77c: f670 0045    	<unknown>
  36e780: f514 0045    	adds.w	r0, r4, #0xc50000
  36e784: d784         	bvc	0x36e690 <MenuScreen::pauseCoop()+0x354> @ imm = #-0xf8
  36e786: ffff f41a    	vsri.32	d31, d10, #0x1
  36e78a: 0045         	lsls	r5, r0, #0x1
  36e78c: f402 0045    	and	r0, r2, #0xc50000
  36e790: f3de 0045    	<unknown>
  36e794: f3ba 0045    	<unknown>
  36e798: f394 0045    	<unknown>
  36e79c: d730         	bvc	0x36e800 <MenuScreen::pauseSurvival()+0x30> @ imm = #0x60
  36e79e: ffff b500    	<unknown>

// ==== MenuScreen::resumeCoop
//      file offset 0x36e7a0 (= ELF address; Ghidra 0x37e7a0), 48 bytes, Thumb-2
  36e7a0: b500         	push	{lr}
  36e7a2: b083         	sub	sp, #0xc
  36e7a4: 9001         	str	r0, [sp, #0x4]
  36e7a6: 4a08         	ldr	r2, [pc, #0x20]         @ 0x36e7c8 <MenuScreen::resumeCoop()+0x28>
  36e7a8: 447a         	add	r2, pc
  36e7aa: 4b08         	ldr	r3, [pc, #0x20]         @ 0x36e7cc <MenuScreen::resumeCoop()+0x2c>
  36e7ac: 58d3         	ldr	r3, [r2, r3]
  36e7ae: 681b         	ldr	r3, [r3]
  36e7b0: 4618         	mov	r0, r3
  36e7b2: 2104         	movs	r1, #0x4
  36e7b4: f089 fb04    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x89608
  36e7b8: 9801         	ldr	r0, [sp, #0x4]
  36e7ba: 2100         	movs	r1, #0x0
  36e7bc: f001 fad4    	bl	0x36fd68 <MenuScreen::showScreen(bool)> @ imm = #0x15a8
  36e7c0: b003         	add	sp, #0xc
  36e7c2: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x36e7c5); words below are literal-pool data ---
  36e7c6: bf00         	nop
  36e7c8: 4260         	rsbs	r0, r4, #0
  36e7ca: 005c         	lsls	r4, r3, #0x1
  36e7cc: d730         	bvc	0x36e830 <MenuScreen::pauseSurvival()+0x60> @ imm = #0x60
  36e7ce: ffff b5f0    	<unknown>

// ==== MenuScreen::pauseSurvival
//      file offset 0x36e7d0 (= ELF address; Ghidra 0x37e7d0), 940 bytes, Thumb-2
  36e7d0: b5f0         	push	{r4, r5, r6, r7, lr}
  36e7d2: b08b         	sub	sp, #0x2c
  36e7d4: 9001         	str	r0, [sp, #0x4]
  36e7d6: 4cdf         	ldr	r4, [pc, #0x37c]        @ 0x36eb54 <MenuScreen::pauseSurvival()+0x384>
  36e7d8: 447c         	add	r4, pc
  36e7da: 9b01         	ldr	r3, [sp, #0x4]
  36e7dc: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  36e7e0: 681b         	ldr	r3, [r3]
  36e7e2: 3390         	adds	r3, #0x90
  36e7e4: 681b         	ldr	r3, [r3]
  36e7e6: 9a01         	ldr	r2, [sp, #0x4]
  36e7e8: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  36e7ec: 4610         	mov	r0, r2
  36e7ee: 2100         	movs	r1, #0x0
  36e7f0: 4798         	blx	r3
  36e7f2: 9b01         	ldr	r3, [sp, #0x4]
  36e7f4: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  36e7f8: 681b         	ldr	r3, [r3]
  36e7fa: 3390         	adds	r3, #0x90
  36e7fc: 681b         	ldr	r3, [r3]
  36e7fe: 9a01         	ldr	r2, [sp, #0x4]
  36e800: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  36e804: 4610         	mov	r0, r2
  36e806: 2100         	movs	r1, #0x0
  36e808: 4798         	blx	r3
  36e80a: 9b01         	ldr	r3, [sp, #0x4]
  36e80c: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  36e810: 681b         	ldr	r3, [r3]
  36e812: 3390         	adds	r3, #0x90
  36e814: 681b         	ldr	r3, [r3]
  36e816: 9a01         	ldr	r2, [sp, #0x4]
  36e818: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  36e81c: 4610         	mov	r0, r2
  36e81e: 2101         	movs	r1, #0x1
  36e820: 4798         	blx	r3
  36e822: 9b01         	ldr	r3, [sp, #0x4]
  36e824: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  36e828: 681b         	ldr	r3, [r3]
  36e82a: 3390         	adds	r3, #0x90
  36e82c: 681b         	ldr	r3, [r3]
  36e82e: 9a01         	ldr	r2, [sp, #0x4]
  36e830: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  36e834: 4610         	mov	r0, r2
  36e836: 2100         	movs	r1, #0x0
  36e838: 4798         	blx	r3
  36e83a: 9b01         	ldr	r3, [sp, #0x4]
  36e83c: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  36e840: 681b         	ldr	r3, [r3]
  36e842: 3390         	adds	r3, #0x90
  36e844: 681b         	ldr	r3, [r3]
  36e846: 9a01         	ldr	r2, [sp, #0x4]
  36e848: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  36e84c: 4610         	mov	r0, r2
  36e84e: 2101         	movs	r1, #0x1
  36e850: 4798         	blx	r3
  36e852: 9b01         	ldr	r3, [sp, #0x4]
  36e854: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  36e858: 681b         	ldr	r3, [r3]
  36e85a: 3390         	adds	r3, #0x90
  36e85c: 681b         	ldr	r3, [r3]
  36e85e: 9a01         	ldr	r2, [sp, #0x4]
  36e860: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  36e864: 4610         	mov	r0, r2
  36e866: 2100         	movs	r1, #0x0
  36e868: 4798         	blx	r3
  36e86a: 9b01         	ldr	r3, [sp, #0x4]
  36e86c: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  36e870: 681b         	ldr	r3, [r3]
  36e872: 3390         	adds	r3, #0x90
  36e874: 681b         	ldr	r3, [r3]
  36e876: 9a01         	ldr	r2, [sp, #0x4]
  36e878: f8d2 2100    	ldr.w	r2, [r2, #0x100]
  36e87c: 4610         	mov	r0, r2
  36e87e: 2101         	movs	r1, #0x1
  36e880: 4798         	blx	r3
  36e882: 9b01         	ldr	r3, [sp, #0x4]
  36e884: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  36e888: 681b         	ldr	r3, [r3]
  36e88a: 3390         	adds	r3, #0x90
  36e88c: 681b         	ldr	r3, [r3]
  36e88e: 9a01         	ldr	r2, [sp, #0x4]
  36e890: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  36e894: 4610         	mov	r0, r2
  36e896: 2101         	movs	r1, #0x1
  36e898: 4798         	blx	r3
  36e89a: 9b01         	ldr	r3, [sp, #0x4]
  36e89c: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  36e8a0: 681b         	ldr	r3, [r3]
  36e8a2: f503 73de    	add.w	r3, r3, #0x1bc
  36e8a6: 681d         	ldr	r5, [r3]
  36e8a8: 9b01         	ldr	r3, [sp, #0x4]
  36e8aa: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  36e8ae: 461e         	mov	r6, r3
  36e8b0: 20ff         	movs	r0, #0xff
  36e8b2: 21ff         	movs	r1, #0xff
  36e8b4: 22ff         	movs	r2, #0xff
  36e8b6: f7fd fda3    	bl	0x36c400 <non-virtual thunk to MenuLayer::keyBackClicked()+0x138> @ imm = #-0x24ba
  36e8ba: 4603         	mov	r3, r0
  36e8bc: 461a         	mov	r2, r3
  36e8be: f88d 2020    	strb.w	r2, [sp, #0x20]
  36e8c2: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  36e8c6: f88d 2021    	strb.w	r2, [sp, #0x21]
  36e8ca: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  36e8ce: f88d 3022    	strb.w	r3, [sp, #0x22]
  36e8d2: ab08         	add	r3, sp, #0x20
  36e8d4: 4630         	mov	r0, r6
  36e8d6: 4619         	mov	r1, r3
  36e8d8: 47a8         	blx	r5
  36e8da: 9b01         	ldr	r3, [sp, #0x4]
  36e8dc: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  36e8e0: 681b         	ldr	r3, [r3]
  36e8e2: f503 73fc    	add.w	r3, r3, #0x1f8
  36e8e6: 681b         	ldr	r3, [r3]
  36e8e8: 9a01         	ldr	r2, [sp, #0x4]
  36e8ea: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  36e8ee: 4610         	mov	r0, r2
  36e8f0: 4a99         	ldr	r2, [pc, #0x264]        @ 0x36eb58 <MenuScreen::pauseSurvival()+0x388>
  36e8f2: 447a         	add	r2, pc
  36e8f4: 4611         	mov	r1, r2
  36e8f6: 4798         	blx	r3
  36e8f8: 9b01         	ldr	r3, [sp, #0x4]
  36e8fa: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  36e8fe: 681b         	ldr	r3, [r3]
  36e900: 334c         	adds	r3, #0x4c
  36e902: 681d         	ldr	r5, [r3]
  36e904: 9b01         	ldr	r3, [sp, #0x4]
  36e906: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  36e90a: 461e         	mov	r6, r3
  36e90c: 9b01         	ldr	r3, [sp, #0x4]
  36e90e: f503 778c    	add.w	r7, r3, #0x118
  36e912: ab06         	add	r3, sp, #0x18
  36e914: 4618         	mov	r0, r3
  36e916: f04f 0100    	mov.w	r1, #0x0
  36e91a: f04f 0200    	mov.w	r2, #0x0
  36e91e: f2cc 2270    	movt	r2, #0xc270
  36e922: f224 f9e5    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2243ca
  36e926: aa08         	add	r2, sp, #0x20
  36e928: ab06         	add	r3, sp, #0x18
  36e92a: 4610         	mov	r0, r2
  36e92c: 4639         	mov	r1, r7
  36e92e: 461a         	mov	r2, r3
  36e930: f7fd fd94    	bl	0x36c45c <non-virtual thunk to MenuLayer::keyBackClicked()+0x194> @ imm = #-0x24d8
  36e934: ab08         	add	r3, sp, #0x20
  36e936: 4630         	mov	r0, r6
  36e938: 4619         	mov	r1, r3
  36e93a: 47a8         	blx	r5
  36e93c: 9b01         	ldr	r3, [sp, #0x4]
  36e93e: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  36e942: 681b         	ldr	r3, [r3]
  36e944: 334c         	adds	r3, #0x4c
  36e946: 681d         	ldr	r5, [r3]
  36e948: 9b01         	ldr	r3, [sp, #0x4]
  36e94a: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  36e94e: 461e         	mov	r6, r3
  36e950: 9b01         	ldr	r3, [sp, #0x4]
  36e952: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  36e956: 681b         	ldr	r3, [r3]
  36e958: 3350         	adds	r3, #0x50
  36e95a: 681b         	ldr	r3, [r3]
  36e95c: 9a01         	ldr	r2, [sp, #0x4]
  36e95e: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  36e962: 4610         	mov	r0, r2
  36e964: 4798         	blx	r3
  36e966: 4603         	mov	r3, r0
  36e968: 4630         	mov	r0, r6
  36e96a: 4619         	mov	r1, r3
  36e96c: 47a8         	blx	r5
  36e96e: 9b01         	ldr	r3, [sp, #0x4]
  36e970: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  36e974: 681b         	ldr	r3, [r3]
  36e976: 337c         	adds	r3, #0x7c
  36e978: 681d         	ldr	r5, [r3]
  36e97a: 9b01         	ldr	r3, [sp, #0x4]
  36e97c: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  36e980: 461e         	mov	r6, r3
  36e982: ab08         	add	r3, sp, #0x20
  36e984: 4618         	mov	r0, r3
  36e986: f04f 517c    	mov.w	r1, #0x3f000000
  36e98a: f04f 527c    	mov.w	r2, #0x3f000000
  36e98e: f224 f9af    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x22435e
  36e992: ab08         	add	r3, sp, #0x20
  36e994: 4630         	mov	r0, r6
  36e996: 4619         	mov	r1, r3
  36e998: 47a8         	blx	r5
  36e99a: f063 fc95    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #0x6392a
  36e99e: 4603         	mov	r3, r0
  36e9a0: 4618         	mov	r0, r3
  36e9a2: f063 ff71    	bl	0x3d2888 <ScoreKeeper::getScore()> @ imm = #0x63ee2
  36e9a6: 4603         	mov	r3, r0
  36e9a8: 9303         	str	r3, [sp, #0xc]
  36e9aa: f063 fc8d    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #0x6391a
  36e9ae: 4605         	mov	r5, r0
  36e9b0: 4b6a         	ldr	r3, [pc, #0x1a8]        @ 0x36eb5c <MenuScreen::pauseSurvival()+0x38c>
  36e9b2: 58e3         	ldr	r3, [r4, r3]
  36e9b4: 681b         	ldr	r3, [r3]
  36e9b6: 681b         	ldr	r3, [r3]
  36e9b8: f503 73e0    	add.w	r3, r3, #0x1c0
  36e9bc: 681b         	ldr	r3, [r3]
  36e9be: 4a67         	ldr	r2, [pc, #0x19c]        @ 0x36eb5c <MenuScreen::pauseSurvival()+0x38c>
  36e9c0: 58a2         	ldr	r2, [r4, r2]
  36e9c2: 6812         	ldr	r2, [r2]
  36e9c4: a908         	add	r1, sp, #0x20
  36e9c6: 4608         	mov	r0, r1
  36e9c8: 4611         	mov	r1, r2
  36e9ca: 4798         	blx	r3
  36e9cc: ab08         	add	r3, sp, #0x20
  36e9ce: 4628         	mov	r0, r5
  36e9d0: 4619         	mov	r1, r3
  36e9d2: f063 fea1    	bl	0x3d2718 <ScoreKeeper::getKills(std::string)> @ imm = #0x63d42
  36e9d6: 4603         	mov	r3, r0
  36e9d8: 9304         	str	r3, [sp, #0x10]
  36e9da: ab08         	add	r3, sp, #0x20
  36e9dc: 4618         	mov	r0, r3
  36e9de: f046 f799    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x446f32
  36e9e2: f273 fe23    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x273c46
  36e9e6: 4603         	mov	r3, r0
  36e9e8: 4618         	mov	r0, r3
  36e9ea: 4b5d         	ldr	r3, [pc, #0x174]        @ 0x36eb60 <MenuScreen::pauseSurvival()+0x390>
  36e9ec: 447b         	add	r3, pc
  36e9ee: 4619         	mov	r1, r3
  36e9f0: 2200         	movs	r2, #0x0
  36e9f2: f273 fc19    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x273832
  36e9f6: 4603         	mov	r3, r0
  36e9f8: 9305         	str	r3, [sp, #0x14]
  36e9fa: 9b01         	ldr	r3, [sp, #0x4]
  36e9fc: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  36ea00: 681b         	ldr	r3, [r3]
  36ea02: f503 73fc    	add.w	r3, r3, #0x1f8
  36ea06: 681d         	ldr	r5, [r3]
  36ea08: 9b01         	ldr	r3, [sp, #0x4]
  36ea0a: f8d3 6100    	ldr.w	r6, [r3, #0x100]
  36ea0e: 4b55         	ldr	r3, [pc, #0x154]        @ 0x36eb64 <MenuScreen::pauseSurvival()+0x394>
  36ea10: 447b         	add	r3, pc
  36ea12: 4618         	mov	r0, r3
  36ea14: 9903         	ldr	r1, [sp, #0xc]
  36ea16: f22b f87b    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x22b0f6
  36ea1a: 4603         	mov	r3, r0
  36ea1c: 4618         	mov	r0, r3
  36ea1e: f22a ff83    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x22af06
  36ea22: 4603         	mov	r3, r0
  36ea24: 4630         	mov	r0, r6
  36ea26: 4619         	mov	r1, r3
  36ea28: 47a8         	blx	r5
  36ea2a: 9b01         	ldr	r3, [sp, #0x4]
  36ea2c: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  36ea30: 681b         	ldr	r3, [r3]
  36ea32: f503 73fc    	add.w	r3, r3, #0x1f8
  36ea36: 681d         	ldr	r5, [r3]
  36ea38: 9b01         	ldr	r3, [sp, #0x4]
  36ea3a: f8d3 6104    	ldr.w	r6, [r3, #0x104]
  36ea3e: 4b4a         	ldr	r3, [pc, #0x128]        @ 0x36eb68 <MenuScreen::pauseSurvival()+0x398>
  36ea40: 447b         	add	r3, pc
  36ea42: 4618         	mov	r0, r3
  36ea44: 9904         	ldr	r1, [sp, #0x10]
  36ea46: f22b f863    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x22b0c6
  36ea4a: 4603         	mov	r3, r0
  36ea4c: 4618         	mov	r0, r3
  36ea4e: f22a ff6b    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x22aed6
  36ea52: 4603         	mov	r3, r0
  36ea54: 4630         	mov	r0, r6
  36ea56: 4619         	mov	r1, r3
  36ea58: 47a8         	blx	r5
  36ea5a: 9b01         	ldr	r3, [sp, #0x4]
  36ea5c: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  36ea60: 681b         	ldr	r3, [r3]
  36ea62: f503 73fc    	add.w	r3, r3, #0x1f8
  36ea66: 681d         	ldr	r5, [r3]
  36ea68: 9b01         	ldr	r3, [sp, #0x4]
  36ea6a: f8d3 6108    	ldr.w	r6, [r3, #0x108]
  36ea6e: 4b3f         	ldr	r3, [pc, #0xfc]         @ 0x36eb6c <MenuScreen::pauseSurvival()+0x39c>
  36ea70: 447b         	add	r3, pc
  36ea72: 4618         	mov	r0, r3
  36ea74: 9905         	ldr	r1, [sp, #0x14]
  36ea76: f22b f84b    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x22b096
  36ea7a: 4603         	mov	r3, r0
  36ea7c: 4618         	mov	r0, r3
  36ea7e: f22a ff53    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x22aea6
  36ea82: 4603         	mov	r3, r0
  36ea84: 4630         	mov	r0, r6
  36ea86: 4619         	mov	r1, r3
  36ea88: 47a8         	blx	r5
  36ea8a: 9b01         	ldr	r3, [sp, #0x4]
  36ea8c: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36ea90: 681b         	ldr	r3, [r3]
  36ea92: f503 73fc    	add.w	r3, r3, #0x1f8
  36ea96: 681b         	ldr	r3, [r3]
  36ea98: 9a01         	ldr	r2, [sp, #0x4]
  36ea9a: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  36ea9e: 4610         	mov	r0, r2
  36eaa0: 4a33         	ldr	r2, [pc, #0xcc]         @ 0x36eb70 <MenuScreen::pauseSurvival()+0x3a0>
  36eaa2: 447a         	add	r2, pc
  36eaa4: 4611         	mov	r1, r2
  36eaa6: 4798         	blx	r3
  36eaa8: 9b01         	ldr	r3, [sp, #0x4]
  36eaaa: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36eaae: 681b         	ldr	r3, [r3]
  36eab0: 337c         	adds	r3, #0x7c
  36eab2: 681d         	ldr	r5, [r3]
  36eab4: 9b01         	ldr	r3, [sp, #0x4]
  36eab6: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36eaba: 461e         	mov	r6, r3
  36eabc: ab08         	add	r3, sp, #0x20
  36eabe: 4618         	mov	r0, r3
  36eac0: f04f 517c    	mov.w	r1, #0x3f000000
  36eac4: f04f 527c    	mov.w	r2, #0x3f000000
  36eac8: f224 f912    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x224224
  36eacc: ab08         	add	r3, sp, #0x20
  36eace: 4630         	mov	r0, r6
  36ead0: 4619         	mov	r1, r3
  36ead2: 47a8         	blx	r5
  36ead4: 9b01         	ldr	r3, [sp, #0x4]
  36ead6: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36eada: 681b         	ldr	r3, [r3]
  36eadc: 334c         	adds	r3, #0x4c
  36eade: 681d         	ldr	r5, [r3]
  36eae0: 9b01         	ldr	r3, [sp, #0x4]
  36eae2: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36eae6: 461e         	mov	r6, r3
  36eae8: 9b01         	ldr	r3, [sp, #0x4]
  36eaea: f503 778c    	add.w	r7, r3, #0x118
  36eaee: ab06         	add	r3, sp, #0x18
  36eaf0: 4618         	mov	r0, r3
  36eaf2: f04f 0100    	mov.w	r1, #0x0
  36eaf6: f04f 0200    	mov.w	r2, #0x0
  36eafa: f2c4 2270    	movt	r2, #0x4270
  36eafe: f224 f8f7    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2241ee
  36eb02: aa08         	add	r2, sp, #0x20
  36eb04: ab06         	add	r3, sp, #0x18
  36eb06: 4610         	mov	r0, r2
  36eb08: 4639         	mov	r1, r7
  36eb0a: 461a         	mov	r2, r3
  36eb0c: f7fd fca6    	bl	0x36c45c <non-virtual thunk to MenuLayer::keyBackClicked()+0x194> @ imm = #-0x26b4
  36eb10: ab08         	add	r3, sp, #0x20
  36eb12: 4630         	mov	r0, r6
  36eb14: 4619         	mov	r1, r3
  36eb16: 47a8         	blx	r5
  36eb18: 4b16         	ldr	r3, [pc, #0x58]         @ 0x36eb74 <MenuScreen::pauseSurvival()+0x3a4>
  36eb1a: 58e3         	ldr	r3, [r4, r3]
  36eb1c: 681b         	ldr	r3, [r3]
  36eb1e: 4618         	mov	r0, r3
  36eb20: 2104         	movs	r1, #0x4
  36eb22: f089 f94d    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x8929a
  36eb26: 9801         	ldr	r0, [sp, #0x4]
  36eb28: 2101         	movs	r1, #0x1
  36eb2a: f001 f91d    	bl	0x36fd68 <MenuScreen::showScreen(bool)> @ imm = #0x123a
  36eb2e: f271 fdbf    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x271b7e
  36eb32: 4603         	mov	r3, r0
  36eb34: 4618         	mov	r0, r3
  36eb36: 4b10         	ldr	r3, [pc, #0x40]         @ 0x36eb78 <MenuScreen::pauseSurvival()+0x3a8>
  36eb38: 447b         	add	r3, pc
  36eb3a: 4619         	mov	r1, r3
  36eb3c: 2200         	movs	r2, #0x0
  36eb3e: f271 fff5    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x271fea
  36eb42: e005         	b	0x36eb50 <MenuScreen::pauseSurvival()+0x380> @ imm = #0xa
  36eb44: ab08         	add	r3, sp, #0x20
  36eb46: 4618         	mov	r0, r3
  36eb48: f046 f6e4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x446dc8
  36eb4c: f019 f2ae    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x41955c
  36eb50: b00b         	add	sp, #0x2c
  36eb52: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x36eb53); words below are literal-pool data ---
  36eb54: 4230         	tst	r0, r6
  36eb56: 005c         	lsls	r4, r3, #0x1
  36eb58: f10e 0045    	add.w	r0, lr, #0x45
  36eb5c: d784         	bvc	0x36ea68 <MenuScreen::pauseSurvival()+0x298> @ imm = #-0xf8
  36eb5e: ffff f090    	vshr.u64	d31, d0, #0x1
  36eb62: 0045         	lsls	r5, r0, #0x1
  36eb64: f038 0045    	bics	r0, r8, #0x45
  36eb68: f014 0045    	ands	r0, r4, #0x45
  36eb6c: eff0 0045    	<unknown>
  36eb70: ef66 0045    	<unknown>
  36eb74: d730         	bvc	0x36ebd8 <MenuScreen::endRound()+0x14> @ imm = #0x60
  36eb76: ffff eed8    	<unknown>
  36eb7a: 0045         	lsls	r5, r0, #0x1

// ==== MenuScreen::resumeSurvival
//      file offset 0x36eb7c (= ELF address; Ghidra 0x37eb7c), 72 bytes, Thumb-2
  36eb7c: b500         	push	{lr}
  36eb7e: b083         	sub	sp, #0xc
  36eb80: 9001         	str	r0, [sp, #0x4]
  36eb82: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x36ebb8 <MenuScreen::resumeSurvival()+0x3c>
  36eb84: 447a         	add	r2, pc
  36eb86: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x36ebbc <MenuScreen::resumeSurvival()+0x40>
  36eb88: 58d3         	ldr	r3, [r2, r3]
  36eb8a: 681b         	ldr	r3, [r3]
  36eb8c: 4618         	mov	r0, r3
  36eb8e: 2104         	movs	r1, #0x4
  36eb90: f089 f916    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x8922c
  36eb94: 9801         	ldr	r0, [sp, #0x4]
  36eb96: 2100         	movs	r1, #0x0
  36eb98: f001 f8e6    	bl	0x36fd68 <MenuScreen::showScreen(bool)> @ imm = #0x11cc
  36eb9c: f271 fd88    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x271b10
  36eba0: 4603         	mov	r3, r0
  36eba2: 4618         	mov	r0, r3
  36eba4: 4b06         	ldr	r3, [pc, #0x18]         @ 0x36ebc0 <MenuScreen::resumeSurvival()+0x44>
  36eba6: 447b         	add	r3, pc
  36eba8: 4619         	mov	r1, r3
  36ebaa: 2200         	movs	r2, #0x0
  36ebac: f271 ffbe    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x271f7c
  36ebb0: b003         	add	sp, #0xc
  36ebb2: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x36ebb5); words below are literal-pool data ---
  36ebb6: bf00         	nop
  36ebb8: 3e84         	subs	r6, #0x84
  36ebba: 005c         	lsls	r4, r3, #0x1
  36ebbc: d730         	bvc	0x36ec20 <MenuScreen::endRound()+0x5c> @ imm = #0x60
  36ebbe: ffff ee76    	vcvt.f32.u32	q15, q11, #0x1
  36ebc2: 0045         	lsls	r5, r0, #0x1

// ==== MenuScreen::endRound
//      file offset 0x36ebc4 (= ELF address; Ghidra 0x37ebc4), 720 bytes, Thumb-2
  36ebc4: b570         	push	{r4, r5, r6, lr}
  36ebc6: b08a         	sub	sp, #0x28
  36ebc8: 9001         	str	r0, [sp, #0x4]
  36ebca: 4cab         	ldr	r4, [pc, #0x2ac]        @ 0x36ee78 <MenuScreen::endRound()+0x2b4>
  36ebcc: 447c         	add	r4, pc
  36ebce: 9b01         	ldr	r3, [sp, #0x4]
  36ebd0: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  36ebd4: 681b         	ldr	r3, [r3]
  36ebd6: 3390         	adds	r3, #0x90
  36ebd8: 681b         	ldr	r3, [r3]
  36ebda: 9a01         	ldr	r2, [sp, #0x4]
  36ebdc: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  36ebe0: 4610         	mov	r0, r2
  36ebe2: 2100         	movs	r1, #0x0
  36ebe4: 4798         	blx	r3
  36ebe6: 9b01         	ldr	r3, [sp, #0x4]
  36ebe8: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  36ebec: 681b         	ldr	r3, [r3]
  36ebee: 3390         	adds	r3, #0x90
  36ebf0: 681b         	ldr	r3, [r3]
  36ebf2: 9a01         	ldr	r2, [sp, #0x4]
  36ebf4: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  36ebf8: 4610         	mov	r0, r2
  36ebfa: 2100         	movs	r1, #0x0
  36ebfc: 4798         	blx	r3
  36ebfe: 9b01         	ldr	r3, [sp, #0x4]
  36ec00: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  36ec04: 681b         	ldr	r3, [r3]
  36ec06: 3390         	adds	r3, #0x90
  36ec08: 681b         	ldr	r3, [r3]
  36ec0a: 9a01         	ldr	r2, [sp, #0x4]
  36ec0c: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  36ec10: 4610         	mov	r0, r2
  36ec12: 2100         	movs	r1, #0x0
  36ec14: 4798         	blx	r3
  36ec16: 9b01         	ldr	r3, [sp, #0x4]
  36ec18: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  36ec1c: 681b         	ldr	r3, [r3]
  36ec1e: 3390         	adds	r3, #0x90
  36ec20: 681b         	ldr	r3, [r3]
  36ec22: 9a01         	ldr	r2, [sp, #0x4]
  36ec24: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  36ec28: 4610         	mov	r0, r2
  36ec2a: 2100         	movs	r1, #0x0
  36ec2c: 4798         	blx	r3
  36ec2e: 9b01         	ldr	r3, [sp, #0x4]
  36ec30: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  36ec34: 681b         	ldr	r3, [r3]
  36ec36: 3390         	adds	r3, #0x90
  36ec38: 681b         	ldr	r3, [r3]
  36ec3a: 9a01         	ldr	r2, [sp, #0x4]
  36ec3c: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  36ec40: 4610         	mov	r0, r2
  36ec42: 2100         	movs	r1, #0x0
  36ec44: 4798         	blx	r3
  36ec46: 9b01         	ldr	r3, [sp, #0x4]
  36ec48: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  36ec4c: 681b         	ldr	r3, [r3]
  36ec4e: 3390         	adds	r3, #0x90
  36ec50: 681b         	ldr	r3, [r3]
  36ec52: 9a01         	ldr	r2, [sp, #0x4]
  36ec54: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  36ec58: 4610         	mov	r0, r2
  36ec5a: 2100         	movs	r1, #0x0
  36ec5c: 4798         	blx	r3
  36ec5e: 9b01         	ldr	r3, [sp, #0x4]
  36ec60: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  36ec64: 681b         	ldr	r3, [r3]
  36ec66: 3390         	adds	r3, #0x90
  36ec68: 681b         	ldr	r3, [r3]
  36ec6a: 9a01         	ldr	r2, [sp, #0x4]
  36ec6c: f8d2 2100    	ldr.w	r2, [r2, #0x100]
  36ec70: 4610         	mov	r0, r2
  36ec72: 2101         	movs	r1, #0x1
  36ec74: 4798         	blx	r3
  36ec76: 9b01         	ldr	r3, [sp, #0x4]
  36ec78: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  36ec7c: 681b         	ldr	r3, [r3]
  36ec7e: 3390         	adds	r3, #0x90
  36ec80: 681b         	ldr	r3, [r3]
  36ec82: 9a01         	ldr	r2, [sp, #0x4]
  36ec84: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  36ec88: 4610         	mov	r0, r2
  36ec8a: 2101         	movs	r1, #0x1
  36ec8c: 4798         	blx	r3
  36ec8e: 9b01         	ldr	r3, [sp, #0x4]
  36ec90: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  36ec94: 681b         	ldr	r3, [r3]
  36ec96: 3390         	adds	r3, #0x90
  36ec98: 681b         	ldr	r3, [r3]
  36ec9a: 9a01         	ldr	r2, [sp, #0x4]
  36ec9c: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  36eca0: 4610         	mov	r0, r2
  36eca2: 2101         	movs	r1, #0x1
  36eca4: 4798         	blx	r3
  36eca6: 9b01         	ldr	r3, [sp, #0x4]
  36eca8: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  36ecac: 681b         	ldr	r3, [r3]
  36ecae: f503 73de    	add.w	r3, r3, #0x1bc
  36ecb2: 681d         	ldr	r5, [r3]
  36ecb4: 9b01         	ldr	r3, [sp, #0x4]
  36ecb6: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  36ecba: 461e         	mov	r6, r3
  36ecbc: 20ff         	movs	r0, #0xff
  36ecbe: 21ff         	movs	r1, #0xff
  36ecc0: 22ff         	movs	r2, #0xff
  36ecc2: f7fd fb9d    	bl	0x36c400 <non-virtual thunk to MenuLayer::keyBackClicked()+0x138> @ imm = #-0x28c6
  36ecc6: 4603         	mov	r3, r0
  36ecc8: 461a         	mov	r2, r3
  36ecca: f88d 2020    	strb.w	r2, [sp, #0x20]
  36ecce: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  36ecd2: f88d 2021    	strb.w	r2, [sp, #0x21]
  36ecd6: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  36ecda: f88d 3022    	strb.w	r3, [sp, #0x22]
  36ecde: ab08         	add	r3, sp, #0x20
  36ece0: 4630         	mov	r0, r6
  36ece2: 4619         	mov	r1, r3
  36ece4: 47a8         	blx	r5
  36ece6: f063 faef    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #0x635de
  36ecea: 4603         	mov	r3, r0
  36ecec: 4618         	mov	r0, r3
  36ecee: f063 fdcb    	bl	0x3d2888 <ScoreKeeper::getScore()> @ imm = #0x63b96
  36ecf2: 4603         	mov	r3, r0
  36ecf4: 9303         	str	r3, [sp, #0xc]
  36ecf6: f063 fae7    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #0x635ce
  36ecfa: 4605         	mov	r5, r0
  36ecfc: 4b5f         	ldr	r3, [pc, #0x17c]        @ 0x36ee7c <MenuScreen::endRound()+0x2b8>
  36ecfe: 58e3         	ldr	r3, [r4, r3]
  36ed00: 681b         	ldr	r3, [r3]
  36ed02: 681b         	ldr	r3, [r3]
  36ed04: f503 73e0    	add.w	r3, r3, #0x1c0
  36ed08: 681b         	ldr	r3, [r3]
  36ed0a: 4a5c         	ldr	r2, [pc, #0x170]        @ 0x36ee7c <MenuScreen::endRound()+0x2b8>
  36ed0c: 58a2         	ldr	r2, [r4, r2]
  36ed0e: 6812         	ldr	r2, [r2]
  36ed10: a908         	add	r1, sp, #0x20
  36ed12: 4608         	mov	r0, r1
  36ed14: 4611         	mov	r1, r2
  36ed16: 4798         	blx	r3
  36ed18: ab08         	add	r3, sp, #0x20
  36ed1a: 4628         	mov	r0, r5
  36ed1c: 4619         	mov	r1, r3
  36ed1e: f063 fcfb    	bl	0x3d2718 <ScoreKeeper::getKills(std::string)> @ imm = #0x639f6
  36ed22: 4603         	mov	r3, r0
  36ed24: 9304         	str	r3, [sp, #0x10]
  36ed26: ab08         	add	r3, sp, #0x20
  36ed28: 4618         	mov	r0, r3
  36ed2a: f046 f5f3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x446be6
  36ed2e: f273 fc7d    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2738fa
  36ed32: 4603         	mov	r3, r0
  36ed34: 4618         	mov	r0, r3
  36ed36: 4b52         	ldr	r3, [pc, #0x148]        @ 0x36ee80 <MenuScreen::endRound()+0x2bc>
  36ed38: 447b         	add	r3, pc
  36ed3a: 4619         	mov	r1, r3
  36ed3c: 2200         	movs	r2, #0x0
  36ed3e: f273 fa73    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x2734e6
  36ed42: 4603         	mov	r3, r0
  36ed44: 9305         	str	r3, [sp, #0x14]
  36ed46: 9b01         	ldr	r3, [sp, #0x4]
  36ed48: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  36ed4c: 681b         	ldr	r3, [r3]
  36ed4e: f503 73fc    	add.w	r3, r3, #0x1f8
  36ed52: 681c         	ldr	r4, [r3]
  36ed54: 9b01         	ldr	r3, [sp, #0x4]
  36ed56: f8d3 5100    	ldr.w	r5, [r3, #0x100]
  36ed5a: 4b4a         	ldr	r3, [pc, #0x128]        @ 0x36ee84 <MenuScreen::endRound()+0x2c0>
  36ed5c: 447b         	add	r3, pc
  36ed5e: 4618         	mov	r0, r3
  36ed60: 9903         	ldr	r1, [sp, #0xc]
  36ed62: f22a fed5    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x22adaa
  36ed66: 4603         	mov	r3, r0
  36ed68: 4618         	mov	r0, r3
  36ed6a: f22a fddd    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x22abba
  36ed6e: 4603         	mov	r3, r0
  36ed70: 4628         	mov	r0, r5
  36ed72: 4619         	mov	r1, r3
  36ed74: 47a0         	blx	r4
  36ed76: 9b01         	ldr	r3, [sp, #0x4]
  36ed78: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  36ed7c: 681b         	ldr	r3, [r3]
  36ed7e: f503 73fc    	add.w	r3, r3, #0x1f8
  36ed82: 681c         	ldr	r4, [r3]
  36ed84: 9b01         	ldr	r3, [sp, #0x4]
  36ed86: f8d3 5104    	ldr.w	r5, [r3, #0x104]
  36ed8a: 4b3f         	ldr	r3, [pc, #0xfc]         @ 0x36ee88 <MenuScreen::endRound()+0x2c4>
  36ed8c: 447b         	add	r3, pc
  36ed8e: 4618         	mov	r0, r3
  36ed90: 9904         	ldr	r1, [sp, #0x10]
  36ed92: f22a febd    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x22ad7a
  36ed96: 4603         	mov	r3, r0
  36ed98: 4618         	mov	r0, r3
  36ed9a: f22a fdc5    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x22ab8a
  36ed9e: 4603         	mov	r3, r0
  36eda0: 4628         	mov	r0, r5
  36eda2: 4619         	mov	r1, r3
  36eda4: 47a0         	blx	r4
  36eda6: 9b01         	ldr	r3, [sp, #0x4]
  36eda8: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  36edac: 681b         	ldr	r3, [r3]
  36edae: f503 73fc    	add.w	r3, r3, #0x1f8
  36edb2: 681c         	ldr	r4, [r3]
  36edb4: 9b01         	ldr	r3, [sp, #0x4]
  36edb6: f8d3 5108    	ldr.w	r5, [r3, #0x108]
  36edba: 4b34         	ldr	r3, [pc, #0xd0]         @ 0x36ee8c <MenuScreen::endRound()+0x2c8>
  36edbc: 447b         	add	r3, pc
  36edbe: 4618         	mov	r0, r3
  36edc0: 9905         	ldr	r1, [sp, #0x14]
  36edc2: f22a fea5    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x22ad4a
  36edc6: 4603         	mov	r3, r0
  36edc8: 4618         	mov	r0, r3
  36edca: f22a fdad    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x22ab5a
  36edce: 4603         	mov	r3, r0
  36edd0: 4628         	mov	r0, r5
  36edd2: 4619         	mov	r1, r3
  36edd4: 47a0         	blx	r4
  36edd6: 9b01         	ldr	r3, [sp, #0x4]
  36edd8: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36eddc: 681b         	ldr	r3, [r3]
  36edde: f503 73fc    	add.w	r3, r3, #0x1f8
  36ede2: 681b         	ldr	r3, [r3]
  36ede4: 9a01         	ldr	r2, [sp, #0x4]
  36ede6: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  36edea: 4610         	mov	r0, r2
  36edec: 4a28         	ldr	r2, [pc, #0xa0]         @ 0x36ee90 <MenuScreen::endRound()+0x2cc>
  36edee: 447a         	add	r2, pc
  36edf0: 4611         	mov	r1, r2
  36edf2: 4798         	blx	r3
  36edf4: 9b01         	ldr	r3, [sp, #0x4]
  36edf6: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36edfa: 681b         	ldr	r3, [r3]
  36edfc: 334c         	adds	r3, #0x4c
  36edfe: 681c         	ldr	r4, [r3]
  36ee00: 9b01         	ldr	r3, [sp, #0x4]
  36ee02: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36ee06: 461d         	mov	r5, r3
  36ee08: 9b01         	ldr	r3, [sp, #0x4]
  36ee0a: f503 768c    	add.w	r6, r3, #0x118
  36ee0e: ab06         	add	r3, sp, #0x18
  36ee10: 4618         	mov	r0, r3
  36ee12: f04f 0100    	mov.w	r1, #0x0
  36ee16: f04f 0200    	mov.w	r2, #0x0
  36ee1a: f2c4 2270    	movt	r2, #0x4270
  36ee1e: f223 ff67    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x223ece
  36ee22: aa08         	add	r2, sp, #0x20
  36ee24: ab06         	add	r3, sp, #0x18
  36ee26: 4610         	mov	r0, r2
  36ee28: 4631         	mov	r1, r6
  36ee2a: 461a         	mov	r2, r3
  36ee2c: f7fd fb16    	bl	0x36c45c <non-virtual thunk to MenuLayer::keyBackClicked()+0x194> @ imm = #-0x29d4
  36ee30: ab08         	add	r3, sp, #0x20
  36ee32: 4628         	mov	r0, r5
  36ee34: 4619         	mov	r1, r3
  36ee36: 47a0         	blx	r4
  36ee38: 9b01         	ldr	r3, [sp, #0x4]
  36ee3a: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36ee3e: 681b         	ldr	r3, [r3]
  36ee40: 337c         	adds	r3, #0x7c
  36ee42: 681c         	ldr	r4, [r3]
  36ee44: 9b01         	ldr	r3, [sp, #0x4]
  36ee46: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36ee4a: 461d         	mov	r5, r3
  36ee4c: ab08         	add	r3, sp, #0x20
  36ee4e: 4618         	mov	r0, r3
  36ee50: f04f 517c    	mov.w	r1, #0x3f000000
  36ee54: f04f 527c    	mov.w	r2, #0x3f000000
  36ee58: f223 ff4a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x223e94
  36ee5c: ab08         	add	r3, sp, #0x20
  36ee5e: 4628         	mov	r0, r5
  36ee60: 4619         	mov	r1, r3
  36ee62: 47a0         	blx	r4
  36ee64: e005         	b	0x36ee72 <MenuScreen::endRound()+0x2ae> @ imm = #0xa
  36ee66: ab08         	add	r3, sp, #0x20
  36ee68: 4618         	mov	r0, r3
  36ee6a: f046 f553    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x446aa6
  36ee6e: f019 f11d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x41923a
  36ee72: b00a         	add	sp, #0x28
  36ee74: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x36ee75); words below are literal-pool data ---
  36ee76: bf00         	nop
  36ee78: 3e3c         	subs	r6, #0x3c
  36ee7a: 005c         	lsls	r4, r3, #0x1
  36ee7c: d784         	bvc	0x36ed88 <MenuScreen::endRound()+0x1c4> @ imm = #-0xf8
  36ee7e: ffff ed44    	<unknown>
  36ee82: 0045         	lsls	r5, r0, #0x1
  36ee84: ecec 0045    	stcl	p0, c0, [r12], #276
  36ee88: ecc8 0045    	stcl	p0, c0, [r8], {69}
  36ee8c: eca4 0045    	stc	p0, c0, [r4], #276
  36ee90: ec96 0045    	ldc	p0, c0, [r6], {69}

// ==== MenuScreen::endCoopRound
//      file offset 0x36ee94 (= ELF address; Ghidra 0x37ee94), 720 bytes, Thumb-2
  36ee94: b570         	push	{r4, r5, r6, lr}
  36ee96: b08a         	sub	sp, #0x28
  36ee98: 9001         	str	r0, [sp, #0x4]
  36ee9a: 4cab         	ldr	r4, [pc, #0x2ac]        @ 0x36f148 <MenuScreen::endCoopRound()+0x2b4>
  36ee9c: 447c         	add	r4, pc
  36ee9e: 9b01         	ldr	r3, [sp, #0x4]
  36eea0: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  36eea4: 681b         	ldr	r3, [r3]
  36eea6: 3390         	adds	r3, #0x90
  36eea8: 681b         	ldr	r3, [r3]
  36eeaa: 9a01         	ldr	r2, [sp, #0x4]
  36eeac: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  36eeb0: 4610         	mov	r0, r2
  36eeb2: 2100         	movs	r1, #0x0
  36eeb4: 4798         	blx	r3
  36eeb6: 9b01         	ldr	r3, [sp, #0x4]
  36eeb8: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  36eebc: 681b         	ldr	r3, [r3]
  36eebe: 3390         	adds	r3, #0x90
  36eec0: 681b         	ldr	r3, [r3]
  36eec2: 9a01         	ldr	r2, [sp, #0x4]
  36eec4: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  36eec8: 4610         	mov	r0, r2
  36eeca: 2100         	movs	r1, #0x0
  36eecc: 4798         	blx	r3
  36eece: 9b01         	ldr	r3, [sp, #0x4]
  36eed0: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  36eed4: 681b         	ldr	r3, [r3]
  36eed6: 3390         	adds	r3, #0x90
  36eed8: 681b         	ldr	r3, [r3]
  36eeda: 9a01         	ldr	r2, [sp, #0x4]
  36eedc: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  36eee0: 4610         	mov	r0, r2
  36eee2: 2100         	movs	r1, #0x0
  36eee4: 4798         	blx	r3
  36eee6: 9b01         	ldr	r3, [sp, #0x4]
  36eee8: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  36eeec: 681b         	ldr	r3, [r3]
  36eeee: 3390         	adds	r3, #0x90
  36eef0: 681b         	ldr	r3, [r3]
  36eef2: 9a01         	ldr	r2, [sp, #0x4]
  36eef4: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  36eef8: 4610         	mov	r0, r2
  36eefa: 2100         	movs	r1, #0x0
  36eefc: 4798         	blx	r3
  36eefe: 9b01         	ldr	r3, [sp, #0x4]
  36ef00: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  36ef04: 681b         	ldr	r3, [r3]
  36ef06: 3390         	adds	r3, #0x90
  36ef08: 681b         	ldr	r3, [r3]
  36ef0a: 9a01         	ldr	r2, [sp, #0x4]
  36ef0c: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  36ef10: 4610         	mov	r0, r2
  36ef12: 2100         	movs	r1, #0x0
  36ef14: 4798         	blx	r3
  36ef16: 9b01         	ldr	r3, [sp, #0x4]
  36ef18: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  36ef1c: 681b         	ldr	r3, [r3]
  36ef1e: 3390         	adds	r3, #0x90
  36ef20: 681b         	ldr	r3, [r3]
  36ef22: 9a01         	ldr	r2, [sp, #0x4]
  36ef24: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  36ef28: 4610         	mov	r0, r2
  36ef2a: 2100         	movs	r1, #0x0
  36ef2c: 4798         	blx	r3
  36ef2e: 9b01         	ldr	r3, [sp, #0x4]
  36ef30: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  36ef34: 681b         	ldr	r3, [r3]
  36ef36: 3390         	adds	r3, #0x90
  36ef38: 681b         	ldr	r3, [r3]
  36ef3a: 9a01         	ldr	r2, [sp, #0x4]
  36ef3c: f8d2 2100    	ldr.w	r2, [r2, #0x100]
  36ef40: 4610         	mov	r0, r2
  36ef42: 2101         	movs	r1, #0x1
  36ef44: 4798         	blx	r3
  36ef46: 9b01         	ldr	r3, [sp, #0x4]
  36ef48: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  36ef4c: 681b         	ldr	r3, [r3]
  36ef4e: 3390         	adds	r3, #0x90
  36ef50: 681b         	ldr	r3, [r3]
  36ef52: 9a01         	ldr	r2, [sp, #0x4]
  36ef54: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  36ef58: 4610         	mov	r0, r2
  36ef5a: 2101         	movs	r1, #0x1
  36ef5c: 4798         	blx	r3
  36ef5e: 9b01         	ldr	r3, [sp, #0x4]
  36ef60: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  36ef64: 681b         	ldr	r3, [r3]
  36ef66: 3390         	adds	r3, #0x90
  36ef68: 681b         	ldr	r3, [r3]
  36ef6a: 9a01         	ldr	r2, [sp, #0x4]
  36ef6c: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  36ef70: 4610         	mov	r0, r2
  36ef72: 2101         	movs	r1, #0x1
  36ef74: 4798         	blx	r3
  36ef76: 9b01         	ldr	r3, [sp, #0x4]
  36ef78: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  36ef7c: 681b         	ldr	r3, [r3]
  36ef7e: f503 73de    	add.w	r3, r3, #0x1bc
  36ef82: 681d         	ldr	r5, [r3]
  36ef84: 9b01         	ldr	r3, [sp, #0x4]
  36ef86: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  36ef8a: 461e         	mov	r6, r3
  36ef8c: 20ff         	movs	r0, #0xff
  36ef8e: 21ff         	movs	r1, #0xff
  36ef90: 22ff         	movs	r2, #0xff
  36ef92: f7fd fa35    	bl	0x36c400 <non-virtual thunk to MenuLayer::keyBackClicked()+0x138> @ imm = #-0x2b96
  36ef96: 4603         	mov	r3, r0
  36ef98: 461a         	mov	r2, r3
  36ef9a: f88d 2020    	strb.w	r2, [sp, #0x20]
  36ef9e: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  36efa2: f88d 2021    	strb.w	r2, [sp, #0x21]
  36efa6: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  36efaa: f88d 3022    	strb.w	r3, [sp, #0x22]
  36efae: ab08         	add	r3, sp, #0x20
  36efb0: 4630         	mov	r0, r6
  36efb2: 4619         	mov	r1, r3
  36efb4: 47a8         	blx	r5
  36efb6: f063 f987    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #0x6330e
  36efba: 4603         	mov	r3, r0
  36efbc: 4618         	mov	r0, r3
  36efbe: f063 fc63    	bl	0x3d2888 <ScoreKeeper::getScore()> @ imm = #0x638c6
  36efc2: 4603         	mov	r3, r0
  36efc4: 9303         	str	r3, [sp, #0xc]
  36efc6: f063 f97f    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #0x632fe
  36efca: 4605         	mov	r5, r0
  36efcc: 4b5f         	ldr	r3, [pc, #0x17c]        @ 0x36f14c <MenuScreen::endCoopRound()+0x2b8>
  36efce: 58e3         	ldr	r3, [r4, r3]
  36efd0: 681b         	ldr	r3, [r3]
  36efd2: 681b         	ldr	r3, [r3]
  36efd4: f503 73e0    	add.w	r3, r3, #0x1c0
  36efd8: 681b         	ldr	r3, [r3]
  36efda: 4a5c         	ldr	r2, [pc, #0x170]        @ 0x36f14c <MenuScreen::endCoopRound()+0x2b8>
  36efdc: 58a2         	ldr	r2, [r4, r2]
  36efde: 6812         	ldr	r2, [r2]
  36efe0: a908         	add	r1, sp, #0x20
  36efe2: 4608         	mov	r0, r1
  36efe4: 4611         	mov	r1, r2
  36efe6: 4798         	blx	r3
  36efe8: ab08         	add	r3, sp, #0x20
  36efea: 4628         	mov	r0, r5
  36efec: 4619         	mov	r1, r3
  36efee: f063 fb93    	bl	0x3d2718 <ScoreKeeper::getKills(std::string)> @ imm = #0x63726
  36eff2: 4603         	mov	r3, r0
  36eff4: 9304         	str	r3, [sp, #0x10]
  36eff6: ab08         	add	r3, sp, #0x20
  36eff8: 4618         	mov	r0, r3
  36effa: f046 f48b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x446916
  36effe: f273 fb15    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x27362a
  36f002: 4603         	mov	r3, r0
  36f004: 4618         	mov	r0, r3
  36f006: 4b52         	ldr	r3, [pc, #0x148]        @ 0x36f150 <MenuScreen::endCoopRound()+0x2bc>
  36f008: 447b         	add	r3, pc
  36f00a: 4619         	mov	r1, r3
  36f00c: 2200         	movs	r2, #0x0
  36f00e: f273 f90b    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x273216
  36f012: 4603         	mov	r3, r0
  36f014: 9305         	str	r3, [sp, #0x14]
  36f016: 9b01         	ldr	r3, [sp, #0x4]
  36f018: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  36f01c: 681b         	ldr	r3, [r3]
  36f01e: f503 73fc    	add.w	r3, r3, #0x1f8
  36f022: 681c         	ldr	r4, [r3]
  36f024: 9b01         	ldr	r3, [sp, #0x4]
  36f026: f8d3 5100    	ldr.w	r5, [r3, #0x100]
  36f02a: 4b4a         	ldr	r3, [pc, #0x128]        @ 0x36f154 <MenuScreen::endCoopRound()+0x2c0>
  36f02c: 447b         	add	r3, pc
  36f02e: 4618         	mov	r0, r3
  36f030: 9903         	ldr	r1, [sp, #0xc]
  36f032: f22a fd6d    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x22aada
  36f036: 4603         	mov	r3, r0
  36f038: 4618         	mov	r0, r3
  36f03a: f22a fc75    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x22a8ea
  36f03e: 4603         	mov	r3, r0
  36f040: 4628         	mov	r0, r5
  36f042: 4619         	mov	r1, r3
  36f044: 47a0         	blx	r4
  36f046: 9b01         	ldr	r3, [sp, #0x4]
  36f048: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  36f04c: 681b         	ldr	r3, [r3]
  36f04e: f503 73fc    	add.w	r3, r3, #0x1f8
  36f052: 681c         	ldr	r4, [r3]
  36f054: 9b01         	ldr	r3, [sp, #0x4]
  36f056: f8d3 5104    	ldr.w	r5, [r3, #0x104]
  36f05a: 4b3f         	ldr	r3, [pc, #0xfc]         @ 0x36f158 <MenuScreen::endCoopRound()+0x2c4>
  36f05c: 447b         	add	r3, pc
  36f05e: 4618         	mov	r0, r3
  36f060: 9904         	ldr	r1, [sp, #0x10]
  36f062: f22a fd55    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x22aaaa
  36f066: 4603         	mov	r3, r0
  36f068: 4618         	mov	r0, r3
  36f06a: f22a fc5d    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x22a8ba
  36f06e: 4603         	mov	r3, r0
  36f070: 4628         	mov	r0, r5
  36f072: 4619         	mov	r1, r3
  36f074: 47a0         	blx	r4
  36f076: 9b01         	ldr	r3, [sp, #0x4]
  36f078: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  36f07c: 681b         	ldr	r3, [r3]
  36f07e: f503 73fc    	add.w	r3, r3, #0x1f8
  36f082: 681c         	ldr	r4, [r3]
  36f084: 9b01         	ldr	r3, [sp, #0x4]
  36f086: f8d3 5108    	ldr.w	r5, [r3, #0x108]
  36f08a: 4b34         	ldr	r3, [pc, #0xd0]         @ 0x36f15c <MenuScreen::endCoopRound()+0x2c8>
  36f08c: 447b         	add	r3, pc
  36f08e: 4618         	mov	r0, r3
  36f090: 9905         	ldr	r1, [sp, #0x14]
  36f092: f22a fd3d    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x22aa7a
  36f096: 4603         	mov	r3, r0
  36f098: 4618         	mov	r0, r3
  36f09a: f22a fc45    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x22a88a
  36f09e: 4603         	mov	r3, r0
  36f0a0: 4628         	mov	r0, r5
  36f0a2: 4619         	mov	r1, r3
  36f0a4: 47a0         	blx	r4
  36f0a6: 9b01         	ldr	r3, [sp, #0x4]
  36f0a8: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36f0ac: 681b         	ldr	r3, [r3]
  36f0ae: f503 73fc    	add.w	r3, r3, #0x1f8
  36f0b2: 681b         	ldr	r3, [r3]
  36f0b4: 9a01         	ldr	r2, [sp, #0x4]
  36f0b6: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  36f0ba: 4610         	mov	r0, r2
  36f0bc: 4a28         	ldr	r2, [pc, #0xa0]         @ 0x36f160 <MenuScreen::endCoopRound()+0x2cc>
  36f0be: 447a         	add	r2, pc
  36f0c0: 4611         	mov	r1, r2
  36f0c2: 4798         	blx	r3
  36f0c4: 9b01         	ldr	r3, [sp, #0x4]
  36f0c6: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36f0ca: 681b         	ldr	r3, [r3]
  36f0cc: 334c         	adds	r3, #0x4c
  36f0ce: 681c         	ldr	r4, [r3]
  36f0d0: 9b01         	ldr	r3, [sp, #0x4]
  36f0d2: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36f0d6: 461d         	mov	r5, r3
  36f0d8: 9b01         	ldr	r3, [sp, #0x4]
  36f0da: f503 768c    	add.w	r6, r3, #0x118
  36f0de: ab06         	add	r3, sp, #0x18
  36f0e0: 4618         	mov	r0, r3
  36f0e2: f04f 0100    	mov.w	r1, #0x0
  36f0e6: f04f 0200    	mov.w	r2, #0x0
  36f0ea: f2c4 2270    	movt	r2, #0x4270
  36f0ee: f223 fdff    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x223bfe
  36f0f2: aa08         	add	r2, sp, #0x20
  36f0f4: ab06         	add	r3, sp, #0x18
  36f0f6: 4610         	mov	r0, r2
  36f0f8: 4631         	mov	r1, r6
  36f0fa: 461a         	mov	r2, r3
  36f0fc: f7fd f9ae    	bl	0x36c45c <non-virtual thunk to MenuLayer::keyBackClicked()+0x194> @ imm = #-0x2ca4
  36f100: ab08         	add	r3, sp, #0x20
  36f102: 4628         	mov	r0, r5
  36f104: 4619         	mov	r1, r3
  36f106: 47a0         	blx	r4
  36f108: 9b01         	ldr	r3, [sp, #0x4]
  36f10a: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36f10e: 681b         	ldr	r3, [r3]
  36f110: 337c         	adds	r3, #0x7c
  36f112: 681c         	ldr	r4, [r3]
  36f114: 9b01         	ldr	r3, [sp, #0x4]
  36f116: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36f11a: 461d         	mov	r5, r3
  36f11c: ab08         	add	r3, sp, #0x20
  36f11e: 4618         	mov	r0, r3
  36f120: f04f 517c    	mov.w	r1, #0x3f000000
  36f124: f04f 527c    	mov.w	r2, #0x3f000000
  36f128: f223 fde2    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x223bc4
  36f12c: ab08         	add	r3, sp, #0x20
  36f12e: 4628         	mov	r0, r5
  36f130: 4619         	mov	r1, r3
  36f132: 47a0         	blx	r4
  36f134: e005         	b	0x36f142 <MenuScreen::endCoopRound()+0x2ae> @ imm = #0xa
  36f136: ab08         	add	r3, sp, #0x20
  36f138: 4618         	mov	r0, r3
  36f13a: f046 f3eb    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4467d6
  36f13e: f018 f7b5    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x418f6a
  36f142: b00a         	add	sp, #0x28
  36f144: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x36f145); words below are literal-pool data ---
  36f146: bf00         	nop
  36f148: 3b6c         	subs	r3, #0x6c
  36f14a: 005c         	lsls	r4, r3, #0x1
  36f14c: d784         	bvc	0x36f058 <MenuScreen::endCoopRound()+0x1c4> @ imm = #-0xf8
  36f14e: ffff ea74    	<unknown>
  36f152: 0045         	lsls	r5, r0, #0x1
  36f154: ea1c 0045    	ands.w	r0, r12, r5, lsl #1
  36f158: e9f8 0045    	ldrd	r0, r0, [r8, #276]!
  36f15c: e9d4 0045    	ldrd	r0, r0, [r4, #276]
  36f160: e9ae 0045    	<unknown>

// ==== MenuScreen::endCoopSurvival
//      file offset 0x36f164 (= ELF address; Ghidra 0x37f164), 1312 bytes, Thumb-2
  36f164: b5f0         	push	{r4, r5, r6, r7, lr}
  36f166: b08b         	sub	sp, #0x2c
  36f168: 9001         	str	r0, [sp, #0x4]
  36f16a: f8df 44e8    	ldr.w	r4, [pc, #0x4e8]        @ 0x36f654 <MenuScreen::endCoopSurvival()+0x4f0>
  36f16e: 447c         	add	r4, pc
  36f170: 9b01         	ldr	r3, [sp, #0x4]
  36f172: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  36f176: 681b         	ldr	r3, [r3]
  36f178: 3390         	adds	r3, #0x90
  36f17a: 681b         	ldr	r3, [r3]
  36f17c: 9a01         	ldr	r2, [sp, #0x4]
  36f17e: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  36f182: 4610         	mov	r0, r2
  36f184: 2100         	movs	r1, #0x0
  36f186: 4798         	blx	r3
  36f188: 9b01         	ldr	r3, [sp, #0x4]
  36f18a: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  36f18e: 681b         	ldr	r3, [r3]
  36f190: 3390         	adds	r3, #0x90
  36f192: 681b         	ldr	r3, [r3]
  36f194: 9a01         	ldr	r2, [sp, #0x4]
  36f196: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  36f19a: 4610         	mov	r0, r2
  36f19c: 2100         	movs	r1, #0x0
  36f19e: 4798         	blx	r3
  36f1a0: 9b01         	ldr	r3, [sp, #0x4]
  36f1a2: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  36f1a6: 681b         	ldr	r3, [r3]
  36f1a8: 3390         	adds	r3, #0x90
  36f1aa: 681b         	ldr	r3, [r3]
  36f1ac: 9a01         	ldr	r2, [sp, #0x4]
  36f1ae: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  36f1b2: 4610         	mov	r0, r2
  36f1b4: 2101         	movs	r1, #0x1
  36f1b6: 4798         	blx	r3
  36f1b8: 9b01         	ldr	r3, [sp, #0x4]
  36f1ba: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  36f1be: 681b         	ldr	r3, [r3]
  36f1c0: 3390         	adds	r3, #0x90
  36f1c2: 681b         	ldr	r3, [r3]
  36f1c4: 9a01         	ldr	r2, [sp, #0x4]
  36f1c6: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  36f1ca: 4610         	mov	r0, r2
  36f1cc: 2100         	movs	r1, #0x0
  36f1ce: 4798         	blx	r3
  36f1d0: 9b01         	ldr	r3, [sp, #0x4]
  36f1d2: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  36f1d6: 681b         	ldr	r3, [r3]
  36f1d8: 3390         	adds	r3, #0x90
  36f1da: 681b         	ldr	r3, [r3]
  36f1dc: 9a01         	ldr	r2, [sp, #0x4]
  36f1de: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  36f1e2: 4610         	mov	r0, r2
  36f1e4: 2101         	movs	r1, #0x1
  36f1e6: 4798         	blx	r3
  36f1e8: 9b01         	ldr	r3, [sp, #0x4]
  36f1ea: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  36f1ee: 681b         	ldr	r3, [r3]
  36f1f0: 3390         	adds	r3, #0x90
  36f1f2: 681b         	ldr	r3, [r3]
  36f1f4: 9a01         	ldr	r2, [sp, #0x4]
  36f1f6: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  36f1fa: 4610         	mov	r0, r2
  36f1fc: 2100         	movs	r1, #0x0
  36f1fe: 4798         	blx	r3
  36f200: 9b01         	ldr	r3, [sp, #0x4]
  36f202: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  36f206: 681b         	ldr	r3, [r3]
  36f208: 3390         	adds	r3, #0x90
  36f20a: 681b         	ldr	r3, [r3]
  36f20c: 9a01         	ldr	r2, [sp, #0x4]
  36f20e: f8d2 2100    	ldr.w	r2, [r2, #0x100]
  36f212: 4610         	mov	r0, r2
  36f214: 2101         	movs	r1, #0x1
  36f216: 4798         	blx	r3
  36f218: 9b01         	ldr	r3, [sp, #0x4]
  36f21a: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  36f21e: 681b         	ldr	r3, [r3]
  36f220: 3390         	adds	r3, #0x90
  36f222: 681b         	ldr	r3, [r3]
  36f224: 9a01         	ldr	r2, [sp, #0x4]
  36f226: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  36f22a: 4610         	mov	r0, r2
  36f22c: 2101         	movs	r1, #0x1
  36f22e: 4798         	blx	r3
  36f230: 9b01         	ldr	r3, [sp, #0x4]
  36f232: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  36f236: 681b         	ldr	r3, [r3]
  36f238: 3390         	adds	r3, #0x90
  36f23a: 681b         	ldr	r3, [r3]
  36f23c: 9a01         	ldr	r2, [sp, #0x4]
  36f23e: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  36f242: 4610         	mov	r0, r2
  36f244: 2101         	movs	r1, #0x1
  36f246: 4798         	blx	r3
  36f248: 9b01         	ldr	r3, [sp, #0x4]
  36f24a: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  36f24e: 681b         	ldr	r3, [r3]
  36f250: f503 73fc    	add.w	r3, r3, #0x1f8
  36f254: 681b         	ldr	r3, [r3]
  36f256: 9a01         	ldr	r2, [sp, #0x4]
  36f258: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  36f25c: 4610         	mov	r0, r2
  36f25e: 4afe         	ldr	r2, [pc, #0x3f8]        @ 0x36f658 <MenuScreen::endCoopSurvival()+0x4f4>
  36f260: 447a         	add	r2, pc
  36f262: 4611         	mov	r1, r2
  36f264: 4798         	blx	r3
  36f266: 9b01         	ldr	r3, [sp, #0x4]
  36f268: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  36f26c: 681b         	ldr	r3, [r3]
  36f26e: f503 73fc    	add.w	r3, r3, #0x1f8
  36f272: 681b         	ldr	r3, [r3]
  36f274: 9a01         	ldr	r2, [sp, #0x4]
  36f276: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  36f27a: 4610         	mov	r0, r2
  36f27c: 4af7         	ldr	r2, [pc, #0x3dc]        @ 0x36f65c <MenuScreen::endCoopSurvival()+0x4f8>
  36f27e: 447a         	add	r2, pc
  36f280: 4611         	mov	r1, r2
  36f282: 4798         	blx	r3
  36f284: 9b01         	ldr	r3, [sp, #0x4]
  36f286: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36f28a: 681b         	ldr	r3, [r3]
  36f28c: f503 73fc    	add.w	r3, r3, #0x1f8
  36f290: 681b         	ldr	r3, [r3]
  36f292: 9a01         	ldr	r2, [sp, #0x4]
  36f294: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  36f298: 4610         	mov	r0, r2
  36f29a: 4af1         	ldr	r2, [pc, #0x3c4]        @ 0x36f660 <MenuScreen::endCoopSurvival()+0x4fc>
  36f29c: 447a         	add	r2, pc
  36f29e: 4611         	mov	r1, r2
  36f2a0: 4798         	blx	r3
  36f2a2: 9b01         	ldr	r3, [sp, #0x4]
  36f2a4: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36f2a8: 681b         	ldr	r3, [r3]
  36f2aa: 334c         	adds	r3, #0x4c
  36f2ac: 681d         	ldr	r5, [r3]
  36f2ae: 9b01         	ldr	r3, [sp, #0x4]
  36f2b0: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36f2b4: 461e         	mov	r6, r3
  36f2b6: 9b01         	ldr	r3, [sp, #0x4]
  36f2b8: f503 778c    	add.w	r7, r3, #0x118
  36f2bc: ab06         	add	r3, sp, #0x18
  36f2be: 4618         	mov	r0, r3
  36f2c0: f04f 0100    	mov.w	r1, #0x0
  36f2c4: f04f 0200    	mov.w	r2, #0x0
  36f2c8: f2c4 2270    	movt	r2, #0x4270
  36f2cc: f223 fd10    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x223a20
  36f2d0: aa08         	add	r2, sp, #0x20
  36f2d2: ab06         	add	r3, sp, #0x18
  36f2d4: 4610         	mov	r0, r2
  36f2d6: 4639         	mov	r1, r7
  36f2d8: 461a         	mov	r2, r3
  36f2da: f7fd f8bf    	bl	0x36c45c <non-virtual thunk to MenuLayer::keyBackClicked()+0x194> @ imm = #-0x2e82
  36f2de: ab08         	add	r3, sp, #0x20
  36f2e0: 4630         	mov	r0, r6
  36f2e2: 4619         	mov	r1, r3
  36f2e4: 47a8         	blx	r5
  36f2e6: 9b01         	ldr	r3, [sp, #0x4]
  36f2e8: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36f2ec: 681b         	ldr	r3, [r3]
  36f2ee: 337c         	adds	r3, #0x7c
  36f2f0: 681d         	ldr	r5, [r3]
  36f2f2: 9b01         	ldr	r3, [sp, #0x4]
  36f2f4: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36f2f8: 461e         	mov	r6, r3
  36f2fa: ab08         	add	r3, sp, #0x20
  36f2fc: 4618         	mov	r0, r3
  36f2fe: f04f 517c    	mov.w	r1, #0x3f000000
  36f302: f04f 527c    	mov.w	r2, #0x3f000000
  36f306: f223 fcf3    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2239e6
  36f30a: ab08         	add	r3, sp, #0x20
  36f30c: 4630         	mov	r0, r6
  36f30e: 4619         	mov	r1, r3
  36f310: 47a8         	blx	r5
  36f312: 9b01         	ldr	r3, [sp, #0x4]
  36f314: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  36f318: 681b         	ldr	r3, [r3]
  36f31a: 334c         	adds	r3, #0x4c
  36f31c: 681d         	ldr	r5, [r3]
  36f31e: 9b01         	ldr	r3, [sp, #0x4]
  36f320: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  36f324: 461e         	mov	r6, r3
  36f326: 9b01         	ldr	r3, [sp, #0x4]
  36f328: f503 778c    	add.w	r7, r3, #0x118
  36f32c: ab06         	add	r3, sp, #0x18
  36f32e: 4618         	mov	r0, r3
  36f330: f04f 0100    	mov.w	r1, #0x0
  36f334: f04f 0200    	mov.w	r2, #0x0
  36f338: f2cc 2270    	movt	r2, #0xc270
  36f33c: f223 fcd8    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2239b0
  36f340: aa08         	add	r2, sp, #0x20
  36f342: ab06         	add	r3, sp, #0x18
  36f344: 4610         	mov	r0, r2
  36f346: 4639         	mov	r1, r7
  36f348: 461a         	mov	r2, r3
  36f34a: f7fd f887    	bl	0x36c45c <non-virtual thunk to MenuLayer::keyBackClicked()+0x194> @ imm = #-0x2ef2
  36f34e: ab08         	add	r3, sp, #0x20
  36f350: 4630         	mov	r0, r6
  36f352: 4619         	mov	r1, r3
  36f354: 47a8         	blx	r5
  36f356: f062 ffb7    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #0x62f6e
  36f35a: 4603         	mov	r3, r0
  36f35c: 4618         	mov	r0, r3
  36f35e: f063 fa93    	bl	0x3d2888 <ScoreKeeper::getScore()> @ imm = #0x63526
  36f362: 4603         	mov	r3, r0
  36f364: 9303         	str	r3, [sp, #0xc]
  36f366: f062 ffaf    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #0x62f5e
  36f36a: 4605         	mov	r5, r0
  36f36c: 4bbd         	ldr	r3, [pc, #0x2f4]        @ 0x36f664 <MenuScreen::endCoopSurvival()+0x500>
  36f36e: 58e3         	ldr	r3, [r4, r3]
  36f370: 681b         	ldr	r3, [r3]
  36f372: 681b         	ldr	r3, [r3]
  36f374: f503 73e0    	add.w	r3, r3, #0x1c0
  36f378: 681b         	ldr	r3, [r3]
  36f37a: 4aba         	ldr	r2, [pc, #0x2e8]        @ 0x36f664 <MenuScreen::endCoopSurvival()+0x500>
  36f37c: 58a2         	ldr	r2, [r4, r2]
  36f37e: 6812         	ldr	r2, [r2]
  36f380: a908         	add	r1, sp, #0x20
  36f382: 4608         	mov	r0, r1
  36f384: 4611         	mov	r1, r2
  36f386: 4798         	blx	r3
  36f388: ab08         	add	r3, sp, #0x20
  36f38a: 4628         	mov	r0, r5
  36f38c: 4619         	mov	r1, r3
  36f38e: f063 f9c3    	bl	0x3d2718 <ScoreKeeper::getKills(std::string)> @ imm = #0x63386
  36f392: 4603         	mov	r3, r0
  36f394: 9304         	str	r3, [sp, #0x10]
  36f396: ab08         	add	r3, sp, #0x20
  36f398: 4618         	mov	r0, r3
  36f39a: f046 f2bb    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x446576
  36f39e: f273 f945    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x27328a
  36f3a2: 4603         	mov	r3, r0
  36f3a4: 4618         	mov	r0, r3
  36f3a6: 4bb0         	ldr	r3, [pc, #0x2c0]        @ 0x36f668 <MenuScreen::endCoopSurvival()+0x504>
  36f3a8: 447b         	add	r3, pc
  36f3aa: 4619         	mov	r1, r3
  36f3ac: 2200         	movs	r2, #0x0
  36f3ae: f272 ff3b    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x272e76
  36f3b2: 4603         	mov	r3, r0
  36f3b4: 9305         	str	r3, [sp, #0x14]
  36f3b6: 9a03         	ldr	r2, [sp, #0xc]
  36f3b8: 9b05         	ldr	r3, [sp, #0x14]
  36f3ba: 429a         	cmp	r2, r3
  36f3bc: dd76         	ble	0x36f4ac <MenuScreen::endCoopSurvival()+0x348> @ imm = #0xec
  36f3be: f273 f935    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x27326a
  36f3c2: 4603         	mov	r3, r0
  36f3c4: 4618         	mov	r0, r3
  36f3c6: 4ba9         	ldr	r3, [pc, #0x2a4]        @ 0x36f66c <MenuScreen::endCoopSurvival()+0x508>
  36f3c8: 447b         	add	r3, pc
  36f3ca: 4619         	mov	r1, r3
  36f3cc: 9a03         	ldr	r2, [sp, #0xc]
  36f3ce: f273 f8e7    	bl	0x5e25a0 <cocos2d::CCUserDefault::setIntegerForKey(char const*, int)> @ imm = #0x2731ce
  36f3d2: 9b01         	ldr	r3, [sp, #0x4]
  36f3d4: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  36f3d8: 681b         	ldr	r3, [r3]
  36f3da: f503 73de    	add.w	r3, r3, #0x1bc
  36f3de: 681d         	ldr	r5, [r3]
  36f3e0: 9b01         	ldr	r3, [sp, #0x4]
  36f3e2: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  36f3e6: 461e         	mov	r6, r3
  36f3e8: 20ff         	movs	r0, #0xff
  36f3ea: 2100         	movs	r1, #0x0
  36f3ec: 2200         	movs	r2, #0x0
  36f3ee: f7fd f807    	bl	0x36c400 <non-virtual thunk to MenuLayer::keyBackClicked()+0x138> @ imm = #-0x2ff2
  36f3f2: 4603         	mov	r3, r0
  36f3f4: 461a         	mov	r2, r3
  36f3f6: f88d 2020    	strb.w	r2, [sp, #0x20]
  36f3fa: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  36f3fe: f88d 2021    	strb.w	r2, [sp, #0x21]
  36f402: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  36f406: f88d 3022    	strb.w	r3, [sp, #0x22]
  36f40a: ab08         	add	r3, sp, #0x20
  36f40c: 4630         	mov	r0, r6
  36f40e: 4619         	mov	r1, r3
  36f410: 47a8         	blx	r5
  36f412: 9b01         	ldr	r3, [sp, #0x4]
  36f414: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  36f418: 681b         	ldr	r3, [r3]
  36f41a: f503 73fc    	add.w	r3, r3, #0x1f8
  36f41e: 681d         	ldr	r5, [r3]
  36f420: 9b01         	ldr	r3, [sp, #0x4]
  36f422: f8d3 6108    	ldr.w	r6, [r3, #0x108]
  36f426: 4b92         	ldr	r3, [pc, #0x248]        @ 0x36f670 <MenuScreen::endCoopSurvival()+0x50c>
  36f428: 447b         	add	r3, pc
  36f42a: 4618         	mov	r0, r3
  36f42c: 9903         	ldr	r1, [sp, #0xc]
  36f42e: f22a fb6f    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x22a6de
  36f432: 4603         	mov	r3, r0
  36f434: 4618         	mov	r0, r3
  36f436: f22a fa77    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x22a4ee
  36f43a: 4603         	mov	r3, r0
  36f43c: 4630         	mov	r0, r6
  36f43e: 4619         	mov	r1, r3
  36f440: 47a8         	blx	r5
  36f442: 4b8c         	ldr	r3, [pc, #0x230]        @ 0x36f674 <MenuScreen::endCoopSurvival()+0x510>
  36f444: 58e3         	ldr	r3, [r4, r3]
  36f446: 681b         	ldr	r3, [r3]
  36f448: 4618         	mov	r0, r3
  36f44a: 2101         	movs	r1, #0x1
  36f44c: f088 fcb8    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x88970
  36f450: f0b5 fe32    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #0xb5c64
  36f454: 4603         	mov	r3, r0
  36f456: 4618         	mov	r0, r3
  36f458: 2105         	movs	r1, #0x5
  36f45a: f0b6 f96b    	bl	0x425734 <LeaderBoardBridge::getScoreData(ELeaderboardType)> @ imm = #0xb62d6
  36f45e: 4604         	mov	r4, r0
  36f460: f062 ff32    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #0x62e64
  36f464: 4603         	mov	r3, r0
  36f466: 4618         	mov	r0, r3
  36f468: f063 fa0e    	bl	0x3d2888 <ScoreKeeper::getScore()> @ imm = #0x6341c
  36f46c: 4603         	mov	r3, r0
  36f46e: 429c         	cmp	r4, r3
  36f470: bfac         	ite	ge
  36f472: 2300         	movge	r3, #0x0
  36f474: 2301         	movlt	r3, #0x1
  36f476: b2db         	uxtb	r3, r3
  36f478: 2b00         	cmp	r3, #0x0
  36f47a: d04f         	beq	0x36f51c <MenuScreen::endCoopSurvival()+0x3b8> @ imm = #0x9e
  36f47c: f0b5 fe1c    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #0xb5c38
  36f480: 4604         	mov	r4, r0
  36f482: f062 ff21    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #0x62e42
  36f486: 4603         	mov	r3, r0
  36f488: 4618         	mov	r0, r3
  36f48a: f063 f9fd    	bl	0x3d2888 <ScoreKeeper::getScore()> @ imm = #0x633fa
  36f48e: 4603         	mov	r3, r0
  36f490: 461a         	mov	r2, r3
  36f492: ea4f 73e2    	asr.w	r3, r2, #0x1f
  36f496: 4620         	mov	r0, r4
  36f498: 2105         	movs	r1, #0x5
  36f49a: f0b6 f977    	bl	0x42578c <LeaderBoardBridge::setLocalScore(ELeaderboardType, long long)> @ imm = #0xb62ee
  36f49e: f0b5 fe0b    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #0xb5c16
  36f4a2: 4603         	mov	r3, r0
  36f4a4: 4618         	mov	r0, r3
  36f4a6: f0b6 f919    	bl	0x4256dc <LeaderBoardBridge::sendServerScores()> @ imm = #0xb6232
  36f4aa: e037         	b	0x36f51c <MenuScreen::endCoopSurvival()+0x3b8> @ imm = #0x6e
  36f4ac: 9b01         	ldr	r3, [sp, #0x4]
  36f4ae: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  36f4b2: 681b         	ldr	r3, [r3]
  36f4b4: f503 73de    	add.w	r3, r3, #0x1bc
  36f4b8: 681c         	ldr	r4, [r3]
  36f4ba: 9b01         	ldr	r3, [sp, #0x4]
  36f4bc: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  36f4c0: 461d         	mov	r5, r3
  36f4c2: 20ff         	movs	r0, #0xff
  36f4c4: 21ff         	movs	r1, #0xff
  36f4c6: 22ff         	movs	r2, #0xff
  36f4c8: f7fc ff9a    	bl	0x36c400 <non-virtual thunk to MenuLayer::keyBackClicked()+0x138> @ imm = #-0x30cc
  36f4cc: 4603         	mov	r3, r0
  36f4ce: 461a         	mov	r2, r3
  36f4d0: f88d 2020    	strb.w	r2, [sp, #0x20]
  36f4d4: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  36f4d8: f88d 2021    	strb.w	r2, [sp, #0x21]
  36f4dc: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  36f4e0: f88d 3022    	strb.w	r3, [sp, #0x22]
  36f4e4: ab08         	add	r3, sp, #0x20
  36f4e6: 4628         	mov	r0, r5
  36f4e8: 4619         	mov	r1, r3
  36f4ea: 47a0         	blx	r4
  36f4ec: 9b01         	ldr	r3, [sp, #0x4]
  36f4ee: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  36f4f2: 681b         	ldr	r3, [r3]
  36f4f4: f503 73fc    	add.w	r3, r3, #0x1f8
  36f4f8: 681c         	ldr	r4, [r3]
  36f4fa: 9b01         	ldr	r3, [sp, #0x4]
  36f4fc: f8d3 5108    	ldr.w	r5, [r3, #0x108]
  36f500: 4b5d         	ldr	r3, [pc, #0x174]        @ 0x36f678 <MenuScreen::endCoopSurvival()+0x514>
  36f502: 447b         	add	r3, pc
  36f504: 4618         	mov	r0, r3
  36f506: 9905         	ldr	r1, [sp, #0x14]
  36f508: f22a fb02    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x22a604
  36f50c: 4603         	mov	r3, r0
  36f50e: 4618         	mov	r0, r3
  36f510: f22a fa0a    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x22a414
  36f514: 4603         	mov	r3, r0
  36f516: 4628         	mov	r0, r5
  36f518: 4619         	mov	r1, r3
  36f51a: 47a0         	blx	r4
  36f51c: 9b01         	ldr	r3, [sp, #0x4]
  36f51e: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  36f522: 681b         	ldr	r3, [r3]
  36f524: f503 73fc    	add.w	r3, r3, #0x1f8
  36f528: 681c         	ldr	r4, [r3]
  36f52a: 9b01         	ldr	r3, [sp, #0x4]
  36f52c: f8d3 5100    	ldr.w	r5, [r3, #0x100]
  36f530: 4b52         	ldr	r3, [pc, #0x148]        @ 0x36f67c <MenuScreen::endCoopSurvival()+0x518>
  36f532: 447b         	add	r3, pc
  36f534: 4618         	mov	r0, r3
  36f536: 9903         	ldr	r1, [sp, #0xc]
  36f538: f22a faea    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x22a5d4
  36f53c: 4603         	mov	r3, r0
  36f53e: 4618         	mov	r0, r3
  36f540: f22a f9f2    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x22a3e4
  36f544: 4603         	mov	r3, r0
  36f546: 4628         	mov	r0, r5
  36f548: 4619         	mov	r1, r3
  36f54a: 47a0         	blx	r4
  36f54c: 9b01         	ldr	r3, [sp, #0x4]
  36f54e: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  36f552: 681b         	ldr	r3, [r3]
  36f554: f503 73fc    	add.w	r3, r3, #0x1f8
  36f558: 681c         	ldr	r4, [r3]
  36f55a: 9b01         	ldr	r3, [sp, #0x4]
  36f55c: f8d3 5104    	ldr.w	r5, [r3, #0x104]
  36f560: 4b47         	ldr	r3, [pc, #0x11c]        @ 0x36f680 <MenuScreen::endCoopSurvival()+0x51c>
  36f562: 447b         	add	r3, pc
  36f564: 4618         	mov	r0, r3
  36f566: 9904         	ldr	r1, [sp, #0x10]
  36f568: f22a fad2    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x22a5a4
  36f56c: 4603         	mov	r3, r0
  36f56e: 4618         	mov	r0, r3
  36f570: f22a f9da    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x22a3b4
  36f574: 4603         	mov	r3, r0
  36f576: 4628         	mov	r0, r5
  36f578: 4619         	mov	r1, r3
  36f57a: 47a0         	blx	r4
  36f57c: 9b01         	ldr	r3, [sp, #0x4]
  36f57e: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  36f582: 681b         	ldr	r3, [r3]
  36f584: 334c         	adds	r3, #0x4c
  36f586: 681c         	ldr	r4, [r3]
  36f588: 9b01         	ldr	r3, [sp, #0x4]
  36f58a: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  36f58e: 461d         	mov	r5, r3
  36f590: 9b01         	ldr	r3, [sp, #0x4]
  36f592: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  36f596: 681b         	ldr	r3, [r3]
  36f598: 3350         	adds	r3, #0x50
  36f59a: 681b         	ldr	r3, [r3]
  36f59c: 9a01         	ldr	r2, [sp, #0x4]
  36f59e: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  36f5a2: 4610         	mov	r0, r2
  36f5a4: 4798         	blx	r3
  36f5a6: 4603         	mov	r3, r0
  36f5a8: 4628         	mov	r0, r5
  36f5aa: 4619         	mov	r1, r3
  36f5ac: 47a0         	blx	r4
  36f5ae: 9b01         	ldr	r3, [sp, #0x4]
  36f5b0: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  36f5b4: 681b         	ldr	r3, [r3]
  36f5b6: 337c         	adds	r3, #0x7c
  36f5b8: 681c         	ldr	r4, [r3]
  36f5ba: 9b01         	ldr	r3, [sp, #0x4]
  36f5bc: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  36f5c0: 461d         	mov	r5, r3
  36f5c2: ab08         	add	r3, sp, #0x20
  36f5c4: 4618         	mov	r0, r3
  36f5c6: f04f 517c    	mov.w	r1, #0x3f000000
  36f5ca: f04f 527c    	mov.w	r2, #0x3f000000
  36f5ce: f223 fb8f    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x22371e
  36f5d2: ab08         	add	r3, sp, #0x20
  36f5d4: 4628         	mov	r0, r5
  36f5d6: 4619         	mov	r1, r3
  36f5d8: 47a0         	blx	r4
  36f5da: 9b01         	ldr	r3, [sp, #0x4]
  36f5dc: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  36f5e0: 681b         	ldr	r3, [r3]
  36f5e2: 334c         	adds	r3, #0x4c
  36f5e4: 681c         	ldr	r4, [r3]
  36f5e6: 9b01         	ldr	r3, [sp, #0x4]
  36f5e8: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  36f5ec: 461d         	mov	r5, r3
  36f5ee: 9b01         	ldr	r3, [sp, #0x4]
  36f5f0: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  36f5f4: 681b         	ldr	r3, [r3]
  36f5f6: 3350         	adds	r3, #0x50
  36f5f8: 681b         	ldr	r3, [r3]
  36f5fa: 9a01         	ldr	r2, [sp, #0x4]
  36f5fc: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  36f600: 4610         	mov	r0, r2
  36f602: 4798         	blx	r3
  36f604: 4603         	mov	r3, r0
  36f606: 4628         	mov	r0, r5
  36f608: 4619         	mov	r1, r3
  36f60a: 47a0         	blx	r4
  36f60c: 9b01         	ldr	r3, [sp, #0x4]
  36f60e: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  36f612: 681b         	ldr	r3, [r3]
  36f614: 337c         	adds	r3, #0x7c
  36f616: 681c         	ldr	r4, [r3]
  36f618: 9b01         	ldr	r3, [sp, #0x4]
  36f61a: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  36f61e: 461d         	mov	r5, r3
  36f620: ab08         	add	r3, sp, #0x20
  36f622: 4618         	mov	r0, r3
  36f624: f04f 517c    	mov.w	r1, #0x3f000000
  36f628: f04f 527c    	mov.w	r2, #0x3f000000
  36f62c: f223 fb60    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2236c0
  36f630: ab08         	add	r3, sp, #0x20
  36f632: 4628         	mov	r0, r5
  36f634: 4619         	mov	r1, r3
  36f636: 47a0         	blx	r4
  36f638: 9801         	ldr	r0, [sp, #0x4]
  36f63a: 2101         	movs	r1, #0x1
  36f63c: f000 fb94    	bl	0x36fd68 <MenuScreen::showScreen(bool)> @ imm = #0x728
  36f640: e005         	b	0x36f64e <MenuScreen::endCoopSurvival()+0x4ea> @ imm = #0xa
  36f642: ab08         	add	r3, sp, #0x20
  36f644: 4618         	mov	r0, r3
  36f646: f046 f165    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4462ca
  36f64a: f018 f52f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x418a5e
  36f64e: b00b         	add	sp, #0x2c
  36f650: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x36f651); words below are literal-pool data ---
  36f652: bf00         	nop
  36f654: 389a         	subs	r0, #0x9a
  36f656: 005c         	lsls	r4, r3, #0x1
  36f658: e748         	b	0x36f4ec <MenuScreen::endCoopSurvival()+0x388> @ imm = #-0x170
  36f65a: 0045         	lsls	r5, r0, #0x1
  36f65c: e722         	b	0x36f4a4 <MenuScreen::endCoopSurvival()+0x340> @ imm = #-0x1bc
  36f65e: 0045         	lsls	r5, r0, #0x1
  36f660: e7f4         	b	0x36f64c <MenuScreen::endCoopSurvival()+0x4e8> @ imm = #-0x18
  36f662: 0045         	lsls	r5, r0, #0x1
  36f664: d784         	bvc	0x36f570 <MenuScreen::endCoopSurvival()+0x40c> @ imm = #-0xf8
  36f666: ffff e694    	vqshlu.s64	d30, d4, #0x3f
  36f66a: 0045         	lsls	r5, r0, #0x1
  36f66c: e674         	b	0x36f358 <MenuScreen::endCoopSurvival()+0x1f4> @ imm = #-0x318
  36f66e: 0045         	lsls	r5, r0, #0x1
  36f670: e674         	b	0x36f35c <MenuScreen::endCoopSurvival()+0x1f8> @ imm = #-0x318
  36f672: 0045         	lsls	r5, r0, #0x1
  36f674: d730         	bvc	0x36f6d8 <MenuScreen::endSurvival()+0x54> @ imm = #0x60
  36f676: ffff e55e    	vsli.32	q15, q7, #0x1f
  36f67a: 0045         	lsls	r5, r0, #0x1
  36f67c: e516         	b	0x36f0ac <MenuScreen::endCoopRound()+0x218> @ imm = #-0x5d4
  36f67e: 0045         	lsls	r5, r0, #0x1
  36f680: e4f2         	b	0x36f068 <MenuScreen::endCoopRound()+0x1d4> @ imm = #-0x61c
  36f682: 0045         	lsls	r5, r0, #0x1

// ==== MenuScreen::endSurvival
//      file offset 0x36f684 (= ELF address; Ghidra 0x37f684), 1392 bytes, Thumb-2
  36f684: b5f0         	push	{r4, r5, r6, r7, lr}
  36f686: b08b         	sub	sp, #0x2c
  36f688: 9001         	str	r0, [sp, #0x4]
  36f68a: f8df 4538    	ldr.w	r4, [pc, #0x538]        @ 0x36fbc4 <MenuScreen::endSurvival()+0x540>
  36f68e: 447c         	add	r4, pc
  36f690: 9b01         	ldr	r3, [sp, #0x4]
  36f692: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  36f696: 681b         	ldr	r3, [r3]
  36f698: 3390         	adds	r3, #0x90
  36f69a: 681b         	ldr	r3, [r3]
  36f69c: 9a01         	ldr	r2, [sp, #0x4]
  36f69e: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  36f6a2: 4610         	mov	r0, r2
  36f6a4: 2100         	movs	r1, #0x0
  36f6a6: 4798         	blx	r3
  36f6a8: 9b01         	ldr	r3, [sp, #0x4]
  36f6aa: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  36f6ae: 681b         	ldr	r3, [r3]
  36f6b0: 3390         	adds	r3, #0x90
  36f6b2: 681b         	ldr	r3, [r3]
  36f6b4: 9a01         	ldr	r2, [sp, #0x4]
  36f6b6: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  36f6ba: 4610         	mov	r0, r2
  36f6bc: 2100         	movs	r1, #0x0
  36f6be: 4798         	blx	r3
  36f6c0: 9b01         	ldr	r3, [sp, #0x4]
  36f6c2: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  36f6c6: 681b         	ldr	r3, [r3]
  36f6c8: 3390         	adds	r3, #0x90
  36f6ca: 681b         	ldr	r3, [r3]
  36f6cc: 9a01         	ldr	r2, [sp, #0x4]
  36f6ce: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  36f6d2: 4610         	mov	r0, r2
  36f6d4: 2101         	movs	r1, #0x1
  36f6d6: 4798         	blx	r3
  36f6d8: 9b01         	ldr	r3, [sp, #0x4]
  36f6da: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  36f6de: 681b         	ldr	r3, [r3]
  36f6e0: 3390         	adds	r3, #0x90
  36f6e2: 681b         	ldr	r3, [r3]
  36f6e4: 9a01         	ldr	r2, [sp, #0x4]
  36f6e6: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  36f6ea: 4610         	mov	r0, r2
  36f6ec: 2101         	movs	r1, #0x1
  36f6ee: 4798         	blx	r3
  36f6f0: 9b01         	ldr	r3, [sp, #0x4]
  36f6f2: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  36f6f6: 681b         	ldr	r3, [r3]
  36f6f8: 3390         	adds	r3, #0x90
  36f6fa: 681b         	ldr	r3, [r3]
  36f6fc: 9a01         	ldr	r2, [sp, #0x4]
  36f6fe: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  36f702: 4610         	mov	r0, r2
  36f704: 2101         	movs	r1, #0x1
  36f706: 4798         	blx	r3
  36f708: 9b01         	ldr	r3, [sp, #0x4]
  36f70a: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  36f70e: 681b         	ldr	r3, [r3]
  36f710: 3390         	adds	r3, #0x90
  36f712: 681b         	ldr	r3, [r3]
  36f714: 9a01         	ldr	r2, [sp, #0x4]
  36f716: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  36f71a: 4610         	mov	r0, r2
  36f71c: 2101         	movs	r1, #0x1
  36f71e: 4798         	blx	r3
  36f720: 9b01         	ldr	r3, [sp, #0x4]
  36f722: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  36f726: 681b         	ldr	r3, [r3]
  36f728: 3390         	adds	r3, #0x90
  36f72a: 681b         	ldr	r3, [r3]
  36f72c: 9a01         	ldr	r2, [sp, #0x4]
  36f72e: f8d2 2100    	ldr.w	r2, [r2, #0x100]
  36f732: 4610         	mov	r0, r2
  36f734: 2101         	movs	r1, #0x1
  36f736: 4798         	blx	r3
  36f738: 9b01         	ldr	r3, [sp, #0x4]
  36f73a: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  36f73e: 681b         	ldr	r3, [r3]
  36f740: 3390         	adds	r3, #0x90
  36f742: 681b         	ldr	r3, [r3]
  36f744: 9a01         	ldr	r2, [sp, #0x4]
  36f746: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  36f74a: 4610         	mov	r0, r2
  36f74c: 2101         	movs	r1, #0x1
  36f74e: 4798         	blx	r3
  36f750: 9b01         	ldr	r3, [sp, #0x4]
  36f752: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  36f756: 681b         	ldr	r3, [r3]
  36f758: 3390         	adds	r3, #0x90
  36f75a: 681b         	ldr	r3, [r3]
  36f75c: 9a01         	ldr	r2, [sp, #0x4]
  36f75e: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  36f762: 4610         	mov	r0, r2
  36f764: 2101         	movs	r1, #0x1
  36f766: 4798         	blx	r3
  36f768: 9b01         	ldr	r3, [sp, #0x4]
  36f76a: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  36f76e: 681b         	ldr	r3, [r3]
  36f770: f503 73fc    	add.w	r3, r3, #0x1f8
  36f774: 681b         	ldr	r3, [r3]
  36f776: 9a01         	ldr	r2, [sp, #0x4]
  36f778: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  36f77c: 4610         	mov	r0, r2
  36f77e: f8df 2448    	ldr.w	r2, [pc, #0x448]        @ 0x36fbc8 <MenuScreen::endSurvival()+0x544>
  36f782: 447a         	add	r2, pc
  36f784: 4611         	mov	r1, r2
  36f786: 4798         	blx	r3
  36f788: 9b01         	ldr	r3, [sp, #0x4]
  36f78a: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  36f78e: 681b         	ldr	r3, [r3]
  36f790: f503 73fc    	add.w	r3, r3, #0x1f8
  36f794: 681b         	ldr	r3, [r3]
  36f796: 9a01         	ldr	r2, [sp, #0x4]
  36f798: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  36f79c: 4610         	mov	r0, r2
  36f79e: f8df 242c    	ldr.w	r2, [pc, #0x42c]        @ 0x36fbcc <MenuScreen::endSurvival()+0x548>
  36f7a2: 447a         	add	r2, pc
  36f7a4: 4611         	mov	r1, r2
  36f7a6: 4798         	blx	r3
  36f7a8: 9b01         	ldr	r3, [sp, #0x4]
  36f7aa: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36f7ae: 681b         	ldr	r3, [r3]
  36f7b0: f503 73fc    	add.w	r3, r3, #0x1f8
  36f7b4: 681b         	ldr	r3, [r3]
  36f7b6: 9a01         	ldr	r2, [sp, #0x4]
  36f7b8: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  36f7bc: 4610         	mov	r0, r2
  36f7be: f8df 2410    	ldr.w	r2, [pc, #0x410]        @ 0x36fbd0 <MenuScreen::endSurvival()+0x54c>
  36f7c2: 447a         	add	r2, pc
  36f7c4: 4611         	mov	r1, r2
  36f7c6: 4798         	blx	r3
  36f7c8: 9b01         	ldr	r3, [sp, #0x4]
  36f7ca: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36f7ce: 681b         	ldr	r3, [r3]
  36f7d0: 334c         	adds	r3, #0x4c
  36f7d2: 681d         	ldr	r5, [r3]
  36f7d4: 9b01         	ldr	r3, [sp, #0x4]
  36f7d6: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36f7da: 461e         	mov	r6, r3
  36f7dc: 9b01         	ldr	r3, [sp, #0x4]
  36f7de: f503 778c    	add.w	r7, r3, #0x118
  36f7e2: ab06         	add	r3, sp, #0x18
  36f7e4: 4618         	mov	r0, r3
  36f7e6: f04f 0100    	mov.w	r1, #0x0
  36f7ea: f04f 0200    	mov.w	r2, #0x0
  36f7ee: f2c4 2270    	movt	r2, #0x4270
  36f7f2: f223 fa7d    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2234fa
  36f7f6: aa08         	add	r2, sp, #0x20
  36f7f8: ab06         	add	r3, sp, #0x18
  36f7fa: 4610         	mov	r0, r2
  36f7fc: 4639         	mov	r1, r7
  36f7fe: 461a         	mov	r2, r3
  36f800: f7fc fe2c    	bl	0x36c45c <non-virtual thunk to MenuLayer::keyBackClicked()+0x194> @ imm = #-0x33a8
  36f804: ab08         	add	r3, sp, #0x20
  36f806: 4630         	mov	r0, r6
  36f808: 4619         	mov	r1, r3
  36f80a: 47a8         	blx	r5
  36f80c: 9b01         	ldr	r3, [sp, #0x4]
  36f80e: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36f812: 681b         	ldr	r3, [r3]
  36f814: 337c         	adds	r3, #0x7c
  36f816: 681d         	ldr	r5, [r3]
  36f818: 9b01         	ldr	r3, [sp, #0x4]
  36f81a: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36f81e: 461e         	mov	r6, r3
  36f820: ab08         	add	r3, sp, #0x20
  36f822: 4618         	mov	r0, r3
  36f824: f04f 517c    	mov.w	r1, #0x3f000000
  36f828: f04f 527c    	mov.w	r2, #0x3f000000
  36f82c: f223 fa60    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2234c0
  36f830: ab08         	add	r3, sp, #0x20
  36f832: 4630         	mov	r0, r6
  36f834: 4619         	mov	r1, r3
  36f836: 47a8         	blx	r5
  36f838: 9b01         	ldr	r3, [sp, #0x4]
  36f83a: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  36f83e: 681b         	ldr	r3, [r3]
  36f840: 334c         	adds	r3, #0x4c
  36f842: 681d         	ldr	r5, [r3]
  36f844: 9b01         	ldr	r3, [sp, #0x4]
  36f846: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  36f84a: 461e         	mov	r6, r3
  36f84c: 9b01         	ldr	r3, [sp, #0x4]
  36f84e: f503 778c    	add.w	r7, r3, #0x118
  36f852: ab06         	add	r3, sp, #0x18
  36f854: 4618         	mov	r0, r3
  36f856: f04f 0100    	mov.w	r1, #0x0
  36f85a: f2c4 2170    	movt	r1, #0x4270
  36f85e: f04f 0200    	mov.w	r2, #0x0
  36f862: f2cc 2270    	movt	r2, #0xc270
  36f866: f223 fa43    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x223486
  36f86a: aa08         	add	r2, sp, #0x20
  36f86c: ab06         	add	r3, sp, #0x18
  36f86e: 4610         	mov	r0, r2
  36f870: 4639         	mov	r1, r7
  36f872: 461a         	mov	r2, r3
  36f874: f7fc fdf2    	bl	0x36c45c <non-virtual thunk to MenuLayer::keyBackClicked()+0x194> @ imm = #-0x341c
  36f878: ab08         	add	r3, sp, #0x20
  36f87a: 4630         	mov	r0, r6
  36f87c: 4619         	mov	r1, r3
  36f87e: 47a8         	blx	r5
  36f880: 9b01         	ldr	r3, [sp, #0x4]
  36f882: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  36f886: 681b         	ldr	r3, [r3]
  36f888: 334c         	adds	r3, #0x4c
  36f88a: 681d         	ldr	r5, [r3]
  36f88c: 9b01         	ldr	r3, [sp, #0x4]
  36f88e: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  36f892: 461e         	mov	r6, r3
  36f894: 9b01         	ldr	r3, [sp, #0x4]
  36f896: f503 778c    	add.w	r7, r3, #0x118
  36f89a: ab06         	add	r3, sp, #0x18
  36f89c: 4618         	mov	r0, r3
  36f89e: f04f 0100    	mov.w	r1, #0x0
  36f8a2: f2cc 2170    	movt	r1, #0xc270
  36f8a6: f04f 0200    	mov.w	r2, #0x0
  36f8aa: f2cc 2270    	movt	r2, #0xc270
  36f8ae: f223 fa1f    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x22343e
  36f8b2: aa08         	add	r2, sp, #0x20
  36f8b4: ab06         	add	r3, sp, #0x18
  36f8b6: 4610         	mov	r0, r2
  36f8b8: 4639         	mov	r1, r7
  36f8ba: 461a         	mov	r2, r3
  36f8bc: f7fc fdce    	bl	0x36c45c <non-virtual thunk to MenuLayer::keyBackClicked()+0x194> @ imm = #-0x3464
  36f8c0: ab08         	add	r3, sp, #0x20
  36f8c2: 4630         	mov	r0, r6
  36f8c4: 4619         	mov	r1, r3
  36f8c6: 47a8         	blx	r5
  36f8c8: f062 fcfe    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #0x629fc
  36f8cc: 4603         	mov	r3, r0
  36f8ce: 4618         	mov	r0, r3
  36f8d0: f062 ffda    	bl	0x3d2888 <ScoreKeeper::getScore()> @ imm = #0x62fb4
  36f8d4: 4603         	mov	r3, r0
  36f8d6: 9303         	str	r3, [sp, #0xc]
  36f8d8: f062 fcf6    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #0x629ec
  36f8dc: 4605         	mov	r5, r0
  36f8de: 4bbd         	ldr	r3, [pc, #0x2f4]        @ 0x36fbd4 <MenuScreen::endSurvival()+0x550>
  36f8e0: 58e3         	ldr	r3, [r4, r3]
  36f8e2: 681b         	ldr	r3, [r3]
  36f8e4: 681b         	ldr	r3, [r3]
  36f8e6: f503 73e0    	add.w	r3, r3, #0x1c0
  36f8ea: 681b         	ldr	r3, [r3]
  36f8ec: 4ab9         	ldr	r2, [pc, #0x2e4]        @ 0x36fbd4 <MenuScreen::endSurvival()+0x550>
  36f8ee: 58a2         	ldr	r2, [r4, r2]
  36f8f0: 6812         	ldr	r2, [r2]
  36f8f2: a908         	add	r1, sp, #0x20
  36f8f4: 4608         	mov	r0, r1
  36f8f6: 4611         	mov	r1, r2
  36f8f8: 4798         	blx	r3
  36f8fa: ab08         	add	r3, sp, #0x20
  36f8fc: 4628         	mov	r0, r5
  36f8fe: 4619         	mov	r1, r3
  36f900: f062 ff0a    	bl	0x3d2718 <ScoreKeeper::getKills(std::string)> @ imm = #0x62e14
  36f904: 4603         	mov	r3, r0
  36f906: 9304         	str	r3, [sp, #0x10]
  36f908: ab08         	add	r3, sp, #0x20
  36f90a: 4618         	mov	r0, r3
  36f90c: f046 f002    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x446004
  36f910: f272 fe8c    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x272d18
  36f914: 4603         	mov	r3, r0
  36f916: 4618         	mov	r0, r3
  36f918: 4baf         	ldr	r3, [pc, #0x2bc]        @ 0x36fbd8 <MenuScreen::endSurvival()+0x554>
  36f91a: 447b         	add	r3, pc
  36f91c: 4619         	mov	r1, r3
  36f91e: 2200         	movs	r2, #0x0
  36f920: f272 fc82    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x272904
  36f924: 4603         	mov	r3, r0
  36f926: 9305         	str	r3, [sp, #0x14]
  36f928: 9a03         	ldr	r2, [sp, #0xc]
  36f92a: 9b05         	ldr	r3, [sp, #0x14]
  36f92c: 429a         	cmp	r2, r3
  36f92e: dd76         	ble	0x36fa1e <MenuScreen::endSurvival()+0x39a> @ imm = #0xec
  36f930: f272 fe7c    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x272cf8
  36f934: 4603         	mov	r3, r0
  36f936: 4618         	mov	r0, r3
  36f938: 4ba8         	ldr	r3, [pc, #0x2a0]        @ 0x36fbdc <MenuScreen::endSurvival()+0x558>
  36f93a: 447b         	add	r3, pc
  36f93c: 4619         	mov	r1, r3
  36f93e: 9a03         	ldr	r2, [sp, #0xc]
  36f940: f272 fe2e    	bl	0x5e25a0 <cocos2d::CCUserDefault::setIntegerForKey(char const*, int)> @ imm = #0x272c5c
  36f944: 9b01         	ldr	r3, [sp, #0x4]
  36f946: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  36f94a: 681b         	ldr	r3, [r3]
  36f94c: f503 73de    	add.w	r3, r3, #0x1bc
  36f950: 681d         	ldr	r5, [r3]
  36f952: 9b01         	ldr	r3, [sp, #0x4]
  36f954: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  36f958: 461e         	mov	r6, r3
  36f95a: 20ff         	movs	r0, #0xff
  36f95c: 2100         	movs	r1, #0x0
  36f95e: 2200         	movs	r2, #0x0
  36f960: f7fc fd4e    	bl	0x36c400 <non-virtual thunk to MenuLayer::keyBackClicked()+0x138> @ imm = #-0x3564
  36f964: 4603         	mov	r3, r0
  36f966: 461a         	mov	r2, r3
  36f968: f88d 2020    	strb.w	r2, [sp, #0x20]
  36f96c: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  36f970: f88d 2021    	strb.w	r2, [sp, #0x21]
  36f974: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  36f978: f88d 3022    	strb.w	r3, [sp, #0x22]
  36f97c: ab08         	add	r3, sp, #0x20
  36f97e: 4630         	mov	r0, r6
  36f980: 4619         	mov	r1, r3
  36f982: 47a8         	blx	r5
  36f984: 9b01         	ldr	r3, [sp, #0x4]
  36f986: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  36f98a: 681b         	ldr	r3, [r3]
  36f98c: f503 73fc    	add.w	r3, r3, #0x1f8
  36f990: 681d         	ldr	r5, [r3]
  36f992: 9b01         	ldr	r3, [sp, #0x4]
  36f994: f8d3 6108    	ldr.w	r6, [r3, #0x108]
  36f998: 4b91         	ldr	r3, [pc, #0x244]        @ 0x36fbe0 <MenuScreen::endSurvival()+0x55c>
  36f99a: 447b         	add	r3, pc
  36f99c: 4618         	mov	r0, r3
  36f99e: 9903         	ldr	r1, [sp, #0xc]
  36f9a0: f22a f8b6    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x22a16c
  36f9a4: 4603         	mov	r3, r0
  36f9a6: 4618         	mov	r0, r3
  36f9a8: f229 ffbe    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x229f7c
  36f9ac: 4603         	mov	r3, r0
  36f9ae: 4630         	mov	r0, r6
  36f9b0: 4619         	mov	r1, r3
  36f9b2: 47a8         	blx	r5
  36f9b4: 4b8b         	ldr	r3, [pc, #0x22c]        @ 0x36fbe4 <MenuScreen::endSurvival()+0x560>
  36f9b6: 58e3         	ldr	r3, [r4, r3]
  36f9b8: 681b         	ldr	r3, [r3]
  36f9ba: 4618         	mov	r0, r3
  36f9bc: 2101         	movs	r1, #0x1
  36f9be: f088 f9ff    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x883fe
  36f9c2: f0b5 fb79    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #0xb56f2
  36f9c6: 4603         	mov	r3, r0
  36f9c8: 4618         	mov	r0, r3
  36f9ca: 2104         	movs	r1, #0x4
  36f9cc: f0b5 feb2    	bl	0x425734 <LeaderBoardBridge::getScoreData(ELeaderboardType)> @ imm = #0xb5d64
  36f9d0: 4604         	mov	r4, r0
  36f9d2: f062 fc79    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #0x628f2
  36f9d6: 4603         	mov	r3, r0
  36f9d8: 4618         	mov	r0, r3
  36f9da: f062 ff55    	bl	0x3d2888 <ScoreKeeper::getScore()> @ imm = #0x62eaa
  36f9de: 4603         	mov	r3, r0
  36f9e0: 429c         	cmp	r4, r3
  36f9e2: bfac         	ite	ge
  36f9e4: 2300         	movge	r3, #0x0
  36f9e6: 2301         	movlt	r3, #0x1
  36f9e8: b2db         	uxtb	r3, r3
  36f9ea: 2b00         	cmp	r3, #0x0
  36f9ec: d04f         	beq	0x36fa8e <MenuScreen::endSurvival()+0x40a> @ imm = #0x9e
  36f9ee: f0b5 fb63    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #0xb56c6
  36f9f2: 4604         	mov	r4, r0
  36f9f4: f062 fc68    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #0x628d0
  36f9f8: 4603         	mov	r3, r0
  36f9fa: 4618         	mov	r0, r3
  36f9fc: f062 ff44    	bl	0x3d2888 <ScoreKeeper::getScore()> @ imm = #0x62e88
  36fa00: 4603         	mov	r3, r0
  36fa02: 461a         	mov	r2, r3
  36fa04: ea4f 73e2    	asr.w	r3, r2, #0x1f
  36fa08: 4620         	mov	r0, r4
  36fa0a: 2104         	movs	r1, #0x4
  36fa0c: f0b5 febe    	bl	0x42578c <LeaderBoardBridge::setLocalScore(ELeaderboardType, long long)> @ imm = #0xb5d7c
  36fa10: f0b5 fb52    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #0xb56a4
  36fa14: 4603         	mov	r3, r0
  36fa16: 4618         	mov	r0, r3
  36fa18: f0b5 fe60    	bl	0x4256dc <LeaderBoardBridge::sendServerScores()> @ imm = #0xb5cc0
  36fa1c: e037         	b	0x36fa8e <MenuScreen::endSurvival()+0x40a> @ imm = #0x6e
  36fa1e: 9b01         	ldr	r3, [sp, #0x4]
  36fa20: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  36fa24: 681b         	ldr	r3, [r3]
  36fa26: f503 73de    	add.w	r3, r3, #0x1bc
  36fa2a: 681c         	ldr	r4, [r3]
  36fa2c: 9b01         	ldr	r3, [sp, #0x4]
  36fa2e: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  36fa32: 461d         	mov	r5, r3
  36fa34: 20ff         	movs	r0, #0xff
  36fa36: 21ff         	movs	r1, #0xff
  36fa38: 22ff         	movs	r2, #0xff
  36fa3a: f7fc fce1    	bl	0x36c400 <non-virtual thunk to MenuLayer::keyBackClicked()+0x138> @ imm = #-0x363e
  36fa3e: 4603         	mov	r3, r0
  36fa40: 461a         	mov	r2, r3
  36fa42: f88d 2020    	strb.w	r2, [sp, #0x20]
  36fa46: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  36fa4a: f88d 2021    	strb.w	r2, [sp, #0x21]
  36fa4e: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  36fa52: f88d 3022    	strb.w	r3, [sp, #0x22]
  36fa56: ab08         	add	r3, sp, #0x20
  36fa58: 4628         	mov	r0, r5
  36fa5a: 4619         	mov	r1, r3
  36fa5c: 47a0         	blx	r4
  36fa5e: 9b01         	ldr	r3, [sp, #0x4]
  36fa60: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  36fa64: 681b         	ldr	r3, [r3]
  36fa66: f503 73fc    	add.w	r3, r3, #0x1f8
  36fa6a: 681c         	ldr	r4, [r3]
  36fa6c: 9b01         	ldr	r3, [sp, #0x4]
  36fa6e: f8d3 5108    	ldr.w	r5, [r3, #0x108]
  36fa72: 4b5d         	ldr	r3, [pc, #0x174]        @ 0x36fbe8 <MenuScreen::endSurvival()+0x564>
  36fa74: 447b         	add	r3, pc
  36fa76: 4618         	mov	r0, r3
  36fa78: 9905         	ldr	r1, [sp, #0x14]
  36fa7a: f22a f849    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x22a092
  36fa7e: 4603         	mov	r3, r0
  36fa80: 4618         	mov	r0, r3
  36fa82: f229 ff51    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x229ea2
  36fa86: 4603         	mov	r3, r0
  36fa88: 4628         	mov	r0, r5
  36fa8a: 4619         	mov	r1, r3
  36fa8c: 47a0         	blx	r4
  36fa8e: 9b01         	ldr	r3, [sp, #0x4]
  36fa90: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  36fa94: 681b         	ldr	r3, [r3]
  36fa96: f503 73fc    	add.w	r3, r3, #0x1f8
  36fa9a: 681c         	ldr	r4, [r3]
  36fa9c: 9b01         	ldr	r3, [sp, #0x4]
  36fa9e: f8d3 5100    	ldr.w	r5, [r3, #0x100]
  36faa2: 4b52         	ldr	r3, [pc, #0x148]        @ 0x36fbec <MenuScreen::endSurvival()+0x568>
  36faa4: 447b         	add	r3, pc
  36faa6: 4618         	mov	r0, r3
  36faa8: 9903         	ldr	r1, [sp, #0xc]
  36faaa: f22a f831    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x22a062
  36faae: 4603         	mov	r3, r0
  36fab0: 4618         	mov	r0, r3
  36fab2: f229 ff39    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x229e72
  36fab6: 4603         	mov	r3, r0
  36fab8: 4628         	mov	r0, r5
  36faba: 4619         	mov	r1, r3
  36fabc: 47a0         	blx	r4
  36fabe: 9b01         	ldr	r3, [sp, #0x4]
  36fac0: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  36fac4: 681b         	ldr	r3, [r3]
  36fac6: f503 73fc    	add.w	r3, r3, #0x1f8
  36faca: 681c         	ldr	r4, [r3]
  36facc: 9b01         	ldr	r3, [sp, #0x4]
  36face: f8d3 5104    	ldr.w	r5, [r3, #0x104]
  36fad2: 4b47         	ldr	r3, [pc, #0x11c]        @ 0x36fbf0 <MenuScreen::endSurvival()+0x56c>
  36fad4: 447b         	add	r3, pc
  36fad6: 4618         	mov	r0, r3
  36fad8: 9904         	ldr	r1, [sp, #0x10]
  36fada: f22a f819    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x22a032
  36fade: 4603         	mov	r3, r0
  36fae0: 4618         	mov	r0, r3
  36fae2: f229 ff21    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x229e42
  36fae6: 4603         	mov	r3, r0
  36fae8: 4628         	mov	r0, r5
  36faea: 4619         	mov	r1, r3
  36faec: 47a0         	blx	r4
  36faee: 9b01         	ldr	r3, [sp, #0x4]
  36faf0: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  36faf4: 681b         	ldr	r3, [r3]
  36faf6: 334c         	adds	r3, #0x4c
  36faf8: 681c         	ldr	r4, [r3]
  36fafa: 9b01         	ldr	r3, [sp, #0x4]
  36fafc: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  36fb00: 461d         	mov	r5, r3
  36fb02: 9b01         	ldr	r3, [sp, #0x4]
  36fb04: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  36fb08: 681b         	ldr	r3, [r3]
  36fb0a: 3350         	adds	r3, #0x50
  36fb0c: 681b         	ldr	r3, [r3]
  36fb0e: 9a01         	ldr	r2, [sp, #0x4]
  36fb10: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  36fb14: 4610         	mov	r0, r2
  36fb16: 4798         	blx	r3
  36fb18: 4603         	mov	r3, r0
  36fb1a: 4628         	mov	r0, r5
  36fb1c: 4619         	mov	r1, r3
  36fb1e: 47a0         	blx	r4
  36fb20: 9b01         	ldr	r3, [sp, #0x4]
  36fb22: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  36fb26: 681b         	ldr	r3, [r3]
  36fb28: 337c         	adds	r3, #0x7c
  36fb2a: 681c         	ldr	r4, [r3]
  36fb2c: 9b01         	ldr	r3, [sp, #0x4]
  36fb2e: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  36fb32: 461d         	mov	r5, r3
  36fb34: ab08         	add	r3, sp, #0x20
  36fb36: 4618         	mov	r0, r3
  36fb38: f04f 517c    	mov.w	r1, #0x3f000000
  36fb3c: f04f 527c    	mov.w	r2, #0x3f000000
  36fb40: f223 f8d6    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2231ac
  36fb44: ab08         	add	r3, sp, #0x20
  36fb46: 4628         	mov	r0, r5
  36fb48: 4619         	mov	r1, r3
  36fb4a: 47a0         	blx	r4
  36fb4c: 9b01         	ldr	r3, [sp, #0x4]
  36fb4e: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  36fb52: 681b         	ldr	r3, [r3]
  36fb54: 334c         	adds	r3, #0x4c
  36fb56: 681c         	ldr	r4, [r3]
  36fb58: 9b01         	ldr	r3, [sp, #0x4]
  36fb5a: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  36fb5e: 461d         	mov	r5, r3
  36fb60: 9b01         	ldr	r3, [sp, #0x4]
  36fb62: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  36fb66: 681b         	ldr	r3, [r3]
  36fb68: 3350         	adds	r3, #0x50
  36fb6a: 681b         	ldr	r3, [r3]
  36fb6c: 9a01         	ldr	r2, [sp, #0x4]
  36fb6e: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  36fb72: 4610         	mov	r0, r2
  36fb74: 4798         	blx	r3
  36fb76: 4603         	mov	r3, r0
  36fb78: 4628         	mov	r0, r5
  36fb7a: 4619         	mov	r1, r3
  36fb7c: 47a0         	blx	r4
  36fb7e: 9b01         	ldr	r3, [sp, #0x4]
  36fb80: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  36fb84: 681b         	ldr	r3, [r3]
  36fb86: 337c         	adds	r3, #0x7c
  36fb88: 681c         	ldr	r4, [r3]
  36fb8a: 9b01         	ldr	r3, [sp, #0x4]
  36fb8c: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  36fb90: 461d         	mov	r5, r3
  36fb92: ab08         	add	r3, sp, #0x20
  36fb94: 4618         	mov	r0, r3
  36fb96: f04f 517c    	mov.w	r1, #0x3f000000
  36fb9a: f04f 527c    	mov.w	r2, #0x3f000000
  36fb9e: f223 f8a7    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x22314e
  36fba2: ab08         	add	r3, sp, #0x20
  36fba4: 4628         	mov	r0, r5
  36fba6: 4619         	mov	r1, r3
  36fba8: 47a0         	blx	r4
  36fbaa: 9801         	ldr	r0, [sp, #0x4]
  36fbac: 2101         	movs	r1, #0x1
  36fbae: f000 f8db    	bl	0x36fd68 <MenuScreen::showScreen(bool)> @ imm = #0x1b6
  36fbb2: e005         	b	0x36fbc0 <MenuScreen::endSurvival()+0x53c> @ imm = #0xa
  36fbb4: ab08         	add	r3, sp, #0x20
  36fbb6: 4618         	mov	r0, r3
  36fbb8: f045 f6ac    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x445d58
  36fbbc: f018 f276    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4184ec
  36fbc0: b00b         	add	sp, #0x2c
  36fbc2: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x36fbc3); words below are literal-pool data ---
  36fbc4: 337a         	adds	r3, #0x7a
  36fbc6: 005c         	lsls	r4, r3, #0x1
  36fbc8: e226         	b	0x370018 <MenuScreen::showScreen(bool)+0x2b0> @ imm = #0x44c
  36fbca: 0045         	lsls	r5, r0, #0x1
  36fbcc: e1fe         	b	0x36ffcc <MenuScreen::showScreen(bool)+0x264> @ imm = #0x3fc
  36fbce: 0045         	lsls	r5, r0, #0x1
  36fbd0: e2ce         	b	0x370170 <MenuScreen::showScreen(bool)+0x408> @ imm = #0x59c
  36fbd2: 0045         	lsls	r5, r0, #0x1
  36fbd4: d784         	bvc	0x36fae0 <MenuScreen::endSurvival()+0x45c> @ imm = #-0xf8
  36fbd6: ffff e162    	<unknown>
  36fbda: 0045         	lsls	r5, r0, #0x1
  36fbdc: e142         	b	0x36fe64 <MenuScreen::showScreen(bool)+0xfc> @ imm = #0x284
  36fbde: 0045         	lsls	r5, r0, #0x1
  36fbe0: e102         	b	0x36fde8 <MenuScreen::showScreen(bool)+0x80> @ imm = #0x204
  36fbe2: 0045         	lsls	r5, r0, #0x1
  36fbe4: d730         	bvc	0x36fc48 <MenuScreen::setMenuOpacity(int)+0x54> @ imm = #0x60
  36fbe6: ffff dfec    	<unknown>
  36fbea: 0045         	lsls	r5, r0, #0x1
  36fbec: dfa4         	svc	#0xa4
  36fbee: 0045         	lsls	r5, r0, #0x1
  36fbf0: df80         	svc	#0x80
  36fbf2: 0045         	lsls	r5, r0, #0x1

// ==== MenuScreen::setMenuOpacity
//      file offset 0x36fbf4 (= ELF address; Ghidra 0x37fbf4), 370 bytes, Thumb-2
  36fbf4: b500         	push	{lr}
  36fbf6: b083         	sub	sp, #0xc
  36fbf8: 9001         	str	r0, [sp, #0x4]
  36fbfa: 9100         	str	r1, [sp]
  36fbfc: 9b01         	ldr	r3, [sp, #0x4]
  36fbfe: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  36fc02: 681b         	ldr	r3, [r3]
  36fc04: f503 7302    	add.w	r3, r3, #0x208
  36fc08: 681b         	ldr	r3, [r3]
  36fc0a: 9a01         	ldr	r2, [sp, #0x4]
  36fc0c: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  36fc10: 4611         	mov	r1, r2
  36fc12: 9a00         	ldr	r2, [sp]
  36fc14: b2d2         	uxtb	r2, r2
  36fc16: 4608         	mov	r0, r1
  36fc18: 4611         	mov	r1, r2
  36fc1a: 4798         	blx	r3
  36fc1c: 9b01         	ldr	r3, [sp, #0x4]
  36fc1e: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  36fc22: 681b         	ldr	r3, [r3]
  36fc24: f503 73d2    	add.w	r3, r3, #0x1a4
  36fc28: 681b         	ldr	r3, [r3]
  36fc2a: 9a01         	ldr	r2, [sp, #0x4]
  36fc2c: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  36fc30: 4611         	mov	r1, r2
  36fc32: 9a00         	ldr	r2, [sp]
  36fc34: b2d2         	uxtb	r2, r2
  36fc36: 4608         	mov	r0, r1
  36fc38: 4611         	mov	r1, r2
  36fc3a: 4798         	blx	r3
  36fc3c: 9b01         	ldr	r3, [sp, #0x4]
  36fc3e: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  36fc42: 681b         	ldr	r3, [r3]
  36fc44: f503 7302    	add.w	r3, r3, #0x208
  36fc48: 681b         	ldr	r3, [r3]
  36fc4a: 9a01         	ldr	r2, [sp, #0x4]
  36fc4c: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  36fc50: 4611         	mov	r1, r2
  36fc52: 9a00         	ldr	r2, [sp]
  36fc54: b2d2         	uxtb	r2, r2
  36fc56: 4608         	mov	r0, r1
  36fc58: 4611         	mov	r1, r2
  36fc5a: 4798         	blx	r3
  36fc5c: 9b01         	ldr	r3, [sp, #0x4]
  36fc5e: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  36fc62: 681b         	ldr	r3, [r3]
  36fc64: f503 7302    	add.w	r3, r3, #0x208
  36fc68: 681b         	ldr	r3, [r3]
  36fc6a: 9a01         	ldr	r2, [sp, #0x4]
  36fc6c: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  36fc70: 4611         	mov	r1, r2
  36fc72: 9a00         	ldr	r2, [sp]
  36fc74: b2d2         	uxtb	r2, r2
  36fc76: 4608         	mov	r0, r1
  36fc78: 4611         	mov	r1, r2
  36fc7a: 4798         	blx	r3
  36fc7c: 9b01         	ldr	r3, [sp, #0x4]
  36fc7e: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  36fc82: 681b         	ldr	r3, [r3]
  36fc84: f503 73d2    	add.w	r3, r3, #0x1a4
  36fc88: 681b         	ldr	r3, [r3]
  36fc8a: 9a01         	ldr	r2, [sp, #0x4]
  36fc8c: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  36fc90: 4611         	mov	r1, r2
  36fc92: 9a00         	ldr	r2, [sp]
  36fc94: b2d2         	uxtb	r2, r2
  36fc96: 4608         	mov	r0, r1
  36fc98: 4611         	mov	r1, r2
  36fc9a: 4798         	blx	r3
  36fc9c: 9b01         	ldr	r3, [sp, #0x4]
  36fc9e: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  36fca2: 681b         	ldr	r3, [r3]
  36fca4: f503 73d2    	add.w	r3, r3, #0x1a4
  36fca8: 681b         	ldr	r3, [r3]
  36fcaa: 9a01         	ldr	r2, [sp, #0x4]
  36fcac: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  36fcb0: 4611         	mov	r1, r2
  36fcb2: 9a00         	ldr	r2, [sp]
  36fcb4: b2d2         	uxtb	r2, r2
  36fcb6: 4608         	mov	r0, r1
  36fcb8: 4611         	mov	r1, r2
  36fcba: 4798         	blx	r3
  36fcbc: 9b01         	ldr	r3, [sp, #0x4]
  36fcbe: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  36fcc2: 681b         	ldr	r3, [r3]
  36fcc4: f503 73d2    	add.w	r3, r3, #0x1a4
  36fcc8: 681b         	ldr	r3, [r3]
  36fcca: 9a01         	ldr	r2, [sp, #0x4]
  36fccc: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  36fcd0: 4611         	mov	r1, r2
  36fcd2: 9a00         	ldr	r2, [sp]
  36fcd4: b2d2         	uxtb	r2, r2
  36fcd6: 4608         	mov	r0, r1
  36fcd8: 4611         	mov	r1, r2
  36fcda: 4798         	blx	r3
  36fcdc: 9b01         	ldr	r3, [sp, #0x4]
  36fcde: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  36fce2: 681b         	ldr	r3, [r3]
  36fce4: f503 73d2    	add.w	r3, r3, #0x1a4
  36fce8: 681b         	ldr	r3, [r3]
  36fcea: 9a01         	ldr	r2, [sp, #0x4]
  36fcec: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  36fcf0: 4611         	mov	r1, r2
  36fcf2: 9a00         	ldr	r2, [sp]
  36fcf4: b2d2         	uxtb	r2, r2
  36fcf6: 4608         	mov	r0, r1
  36fcf8: 4611         	mov	r1, r2
  36fcfa: 4798         	blx	r3
  36fcfc: 9b01         	ldr	r3, [sp, #0x4]
  36fcfe: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  36fd02: 681b         	ldr	r3, [r3]
  36fd04: f503 73d2    	add.w	r3, r3, #0x1a4
  36fd08: 681b         	ldr	r3, [r3]
  36fd0a: 9a01         	ldr	r2, [sp, #0x4]
  36fd0c: f8d2 2100    	ldr.w	r2, [r2, #0x100]
  36fd10: 4611         	mov	r1, r2
  36fd12: 9a00         	ldr	r2, [sp]
  36fd14: b2d2         	uxtb	r2, r2
  36fd16: 4608         	mov	r0, r1
  36fd18: 4611         	mov	r1, r2
  36fd1a: 4798         	blx	r3
  36fd1c: 9b01         	ldr	r3, [sp, #0x4]
  36fd1e: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  36fd22: 681b         	ldr	r3, [r3]
  36fd24: f503 73d2    	add.w	r3, r3, #0x1a4
  36fd28: 681b         	ldr	r3, [r3]
  36fd2a: 9a01         	ldr	r2, [sp, #0x4]
  36fd2c: f8d2 10e4    	ldr.w	r1, [r2, #0xe4]
  36fd30: 9a00         	ldr	r2, [sp]
  36fd32: 2a96         	cmp	r2, #0x96
  36fd34: bfa8         	it	ge
  36fd36: 2296         	movge	r2, #0x96
  36fd38: b2d2         	uxtb	r2, r2
  36fd3a: 4608         	mov	r0, r1
  36fd3c: 4611         	mov	r1, r2
  36fd3e: 4798         	blx	r3
  36fd40: 9b01         	ldr	r3, [sp, #0x4]
  36fd42: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  36fd46: 681b         	ldr	r3, [r3]
  36fd48: f503 73d2    	add.w	r3, r3, #0x1a4
  36fd4c: 681b         	ldr	r3, [r3]
  36fd4e: 9a01         	ldr	r2, [sp, #0x4]
  36fd50: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  36fd54: 4611         	mov	r1, r2
  36fd56: 9a00         	ldr	r2, [sp]
  36fd58: b2d2         	uxtb	r2, r2
  36fd5a: 4608         	mov	r0, r1
  36fd5c: 4611         	mov	r1, r2
  36fd5e: 4798         	blx	r3
  36fd60: b003         	add	sp, #0xc
  36fd62: f85d fb04    	ldr	pc, [sp], #4

// ==== MenuScreen::showScreen
//      file offset 0x36fd68 (= ELF address; Ghidra 0x37fd68), 24 bytes, Thumb-2
  36fd68: b082         	sub	sp, #0x8
  36fd6a: 9001         	str	r0, [sp, #0x4]
  36fd6c: 460b         	mov	r3, r1
  36fd6e: f88d 3003    	strb.w	r3, [sp, #0x3]
  36fd72: 9b01         	ldr	r3, [sp, #0x4]
  36fd74: f89d 2003    	ldrb.w	r2, [sp, #0x3]
  36fd78: f883 2124    	strb.w	r2, [r3, #0x124]
  36fd7c: b002         	add	sp, #0x8
  36fd7e: 4770         	bx	lr
