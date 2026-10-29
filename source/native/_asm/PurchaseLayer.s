// PurchaseLayer: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 15 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../PurchaseLayer.cpp

// ==== PurchaseLayer::create
//      file offset 0x3b7354 (= ELF address; Ghidra 0x3c7354), 112 bytes, Thumb-2
  3b7354: b510         	push	{r4, lr}
  3b7356: b082         	sub	sp, #0x8
  3b7358: f44f 70a2    	mov.w	r0, #0x144
  3b735c: f3d0 fb02    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x3d0604
  3b7360: 4603         	mov	r3, r0
  3b7362: 461c         	mov	r4, r3
  3b7364: 4620         	mov	r0, r4
  3b7366: f000 f82d    	bl	0x3b73c4 <PurchaseLayer::PurchaseLayer()> @ imm = #0x5a
  3b736a: 9401         	str	r4, [sp, #0x4]
  3b736c: 9b01         	ldr	r3, [sp, #0x4]
  3b736e: 2b00         	cmp	r3, #0x0
  3b7370: d00a         	beq	0x3b7388 <PurchaseLayer::create()+0x34> @ imm = #0x14
  3b7372: 9b01         	ldr	r3, [sp, #0x4]
  3b7374: 681b         	ldr	r3, [r3]
  3b7376: 3318         	adds	r3, #0x18
  3b7378: 681b         	ldr	r3, [r3]
  3b737a: 9801         	ldr	r0, [sp, #0x4]
  3b737c: 4798         	blx	r3
  3b737e: 4603         	mov	r3, r0
  3b7380: 2b00         	cmp	r3, #0x0
  3b7382: d001         	beq	0x3b7388 <PurchaseLayer::create()+0x34> @ imm = #0x2
  3b7384: 2301         	movs	r3, #0x1
  3b7386: e000         	b	0x3b738a <PurchaseLayer::create()+0x36> @ imm = #0x0
  3b7388: 2300         	movs	r3, #0x0
  3b738a: 2b00         	cmp	r3, #0x0
  3b738c: d005         	beq	0x3b739a <PurchaseLayer::create()+0x46> @ imm = #0xa
  3b738e: 9b01         	ldr	r3, [sp, #0x4]
  3b7390: 4618         	mov	r0, r3
  3b7392: f1e0 fdb3    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x1e0b66
  3b7396: 9b01         	ldr	r3, [sp, #0x4]
  3b7398: e011         	b	0x3b73be <PurchaseLayer::create()+0x6a> @ imm = #0x22
  3b739a: 9b01         	ldr	r3, [sp, #0x4]
  3b739c: 2b00         	cmp	r3, #0x0
  3b739e: d005         	beq	0x3b73ac <PurchaseLayer::create()+0x58> @ imm = #0xa
  3b73a0: 9b01         	ldr	r3, [sp, #0x4]
  3b73a2: 681b         	ldr	r3, [r3]
  3b73a4: 3308         	adds	r3, #0x8
  3b73a6: 681b         	ldr	r3, [r3]
  3b73a8: 9801         	ldr	r0, [sp, #0x4]
  3b73aa: 4798         	blx	r3
  3b73ac: 2300         	movs	r3, #0x0
  3b73ae: 9301         	str	r3, [sp, #0x4]
  3b73b0: 2300         	movs	r3, #0x0
  3b73b2: e004         	b	0x3b73be <PurchaseLayer::create()+0x6a> @ imm = #0x8
  3b73b4: 4620         	mov	r0, r4
  3b73b6: f3d0 fe75    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3d0cea
  3b73ba: f3d0 fe77    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3d0cee
  3b73be: 4618         	mov	r0, r3
  3b73c0: b002         	add	sp, #0x8
  3b73c2: bd10         	pop	{r4, pc}

// ==== PurchaseLayer::PurchaseLayer
//      file offset 0x3b73c4 (= ELF address; Ghidra 0x3c73c4), 88 bytes, Thumb-2
  3b73c4: b510         	push	{r4, lr}
  3b73c6: b082         	sub	sp, #0x8
  3b73c8: 9001         	str	r0, [sp, #0x4]
  3b73ca: 4c12         	ldr	r4, [pc, #0x48]         @ 0x3b7414 <PurchaseLayer::PurchaseLayer()+0x50>
  3b73cc: 447c         	add	r4, pc
  3b73ce: 9b01         	ldr	r3, [sp, #0x4]
  3b73d0: 4618         	mov	r0, r3
  3b73d2: f1f5 fe43    	bl	0x5ad05c <cocos2d::CCLayer::CCLayer()> @ imm = #0x1f5c86
  3b73d6: 9b01         	ldr	r3, [sp, #0x4]
  3b73d8: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x3b7418 <PurchaseLayer::PurchaseLayer()+0x54>
  3b73da: 58a2         	ldr	r2, [r4, r2]
  3b73dc: 3208         	adds	r2, #0x8
  3b73de: 601a         	str	r2, [r3]
  3b73e0: 9b01         	ldr	r3, [sp, #0x4]
  3b73e2: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x3b7418 <PurchaseLayer::PurchaseLayer()+0x54>
  3b73e4: 58a2         	ldr	r2, [r4, r2]
  3b73e6: f502 7204    	add.w	r2, r2, #0x210
  3b73ea: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  3b73ee: 9b01         	ldr	r3, [sp, #0x4]
  3b73f0: 4a09         	ldr	r2, [pc, #0x24]         @ 0x3b7418 <PurchaseLayer::PurchaseLayer()+0x54>
  3b73f2: 58a2         	ldr	r2, [r4, r2]
  3b73f4: f502 7210    	add.w	r2, r2, #0x240
  3b73f8: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  3b73fc: 9b01         	ldr	r3, [sp, #0x4]
  3b73fe: 4a06         	ldr	r2, [pc, #0x18]         @ 0x3b7418 <PurchaseLayer::PurchaseLayer()+0x54>
  3b7400: 58a2         	ldr	r2, [r4, r2]
  3b7402: f502 7213    	add.w	r2, r2, #0x24c
  3b7406: f8c3 20ec    	str.w	r2, [r3, #0xec]
  3b740a: 9b01         	ldr	r3, [sp, #0x4]
  3b740c: 4618         	mov	r0, r3
  3b740e: b002         	add	sp, #0x8
  3b7410: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3b7411); words below are literal-pool data ---
  3b7412: bf00         	nop
  3b7414: b63c         	<unknown>
  3b7416: 0057         	lsls	r7, r2, #0x1
  3b7418: de10         	udf	#0x10
  3b741a: ffff b500    	<unknown>

// ==== PurchaseLayer::scene
//      file offset 0x3b741c (= ELF address; Ghidra 0x3c741c), 46 bytes, Thumb-2
  3b741c: b500         	push	{lr}
  3b741e: b083         	sub	sp, #0xc
  3b7420: f1f8 fb1e    	bl	0x5afa60 <cocos2d::CCScene::create()> @ imm = #0x1f863c
  3b7424: 4603         	mov	r3, r0
  3b7426: 9300         	str	r3, [sp]
  3b7428: f7ff ff94    	bl	0x3b7354 <PurchaseLayer::create()> @ imm = #-0xd8
  3b742c: 4603         	mov	r3, r0
  3b742e: 9301         	str	r3, [sp, #0x4]
  3b7430: 9b00         	ldr	r3, [sp]
  3b7432: 681b         	ldr	r3, [r3]
  3b7434: 33c8         	adds	r3, #0xc8
  3b7436: 681b         	ldr	r3, [r3]
  3b7438: 9a00         	ldr	r2, [sp]
  3b743a: 4610         	mov	r0, r2
  3b743c: 9901         	ldr	r1, [sp, #0x4]
  3b743e: 4798         	blx	r3
  3b7440: 9b00         	ldr	r3, [sp]
  3b7442: 4618         	mov	r0, r3
  3b7444: b003         	add	sp, #0xc
  3b7446: f85d fb04    	ldr	pc, [sp], #4

// ==== PurchaseLayer::init
//      file offset 0x3b7450 (= ELF address; Ghidra 0x3c7450), 2668 bytes, Thumb-2
  3b7450: b5f0         	push	{r4, r5, r6, r7, lr}
  3b7452: ed2d 8b02    	vpush	{d8}
  3b7456: b0a9         	sub	sp, #0xa4
  3b7458: 9003         	str	r0, [sp, #0xc]
  3b745a: 4c09         	ldr	r4, [pc, #0x24]         @ 0x3b7480 <PurchaseLayer::init()+0x30>
  3b745c: 447c         	add	r4, pc
  3b745e: 9b03         	ldr	r3, [sp, #0xc]
  3b7460: 4618         	mov	r0, r3
  3b7462: f1f5 fec9    	bl	0x5ad1f8 <cocos2d::CCLayer::init()> @ imm = #0x1f5d92
  3b7466: 4603         	mov	r3, r0
  3b7468: f88d 3017    	strb.w	r3, [sp, #0x17]
  3b746c: f89d 3017    	ldrb.w	r3, [sp, #0x17]
  3b7470: f083 0301    	eor	r3, r3, #0x1
  3b7474: b2db         	uxtb	r3, r3
  3b7476: 2b00         	cmp	r3, #0x0
  3b7478: d004         	beq	0x3b7484 <PurchaseLayer::init()+0x34> @ imm = #0x8
  3b747a: 2300         	movs	r3, #0x0
  3b747c: f000 bd0e    	b.w	0x3b7e9c <PurchaseLayer::init()+0xa4c> @ imm = #0xa1c
  ; --- end of code (Ghidra body ends at 0x3b747f); words below are literal-pool data ---
  3b7480: b5ac         	push	{r2, r3, r5, r7, lr}
  3b7482: 0057         	lsls	r7, r2, #0x1
  3b7484: 9b03         	ldr	r3, [sp, #0xc]
  3b7486: 2200         	movs	r2, #0x0
  3b7488: f883 2108    	strb.w	r2, [r3, #0x108]
  3b748c: 9b03         	ldr	r3, [sp, #0xc]
  3b748e: 2200         	movs	r2, #0x0
  3b7490: f883 213c    	strb.w	r2, [r3, #0x13c]
  3b7494: ab10         	add	r3, sp, #0x40
  3b7496: 4618         	mov	r0, r3
  3b7498: 4be1         	ldr	r3, [pc, #0x384]        @ 0x3b7820 <PurchaseLayer::init()+0x3d0>
  3b749a: 58e3         	ldr	r3, [r4, r3]
  3b749c: 4619         	mov	r1, r3
  3b749e: f1db fe07    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x1dbc0e
  3b74a2: ed9d 7a10    	vldr	s14, [sp, #64]
  3b74a6: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3b74aa: eec7 6a27    	vdiv.f32	s13, s14, s15
  3b74ae: ed9d 7a11    	vldr	s14, [sp, #68]
  3b74b2: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3b74b6: eec7 7a27    	vdiv.f32	s15, s14, s15
  3b74ba: ab12         	add	r3, sp, #0x48
  3b74bc: 4618         	mov	r0, r3
  3b74be: ee16 1a90    	vmov	r1, s13
  3b74c2: ee17 2a90    	vmov	r2, s15
  3b74c6: f1db fc13    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1db826
  3b74ca: 4bd6         	ldr	r3, [pc, #0x358]        @ 0x3b7824 <PurchaseLayer::init()+0x3d4>
  3b74cc: 447b         	add	r3, pc
  3b74ce: 4618         	mov	r0, r3
  3b74d0: f220 ff18    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x220e30
  3b74d4: 4603         	mov	r3, r0
  3b74d6: 9307         	str	r3, [sp, #0x1c]
  3b74d8: 4bd3         	ldr	r3, [pc, #0x34c]        @ 0x3b7828 <PurchaseLayer::init()+0x3d8>
  3b74da: 447b         	add	r3, pc
  3b74dc: 4618         	mov	r0, r3
  3b74de: f220 ff11    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x220e22
  3b74e2: 4603         	mov	r3, r0
  3b74e4: 9308         	str	r3, [sp, #0x20]
  3b74e6: 4bd1         	ldr	r3, [pc, #0x344]        @ 0x3b782c <PurchaseLayer::init()+0x3dc>
  3b74e8: 447b         	add	r3, pc
  3b74ea: 4618         	mov	r0, r3
  3b74ec: f220 ff0a    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x220e14
  3b74f0: 4603         	mov	r3, r0
  3b74f2: 9309         	str	r3, [sp, #0x24]
  3b74f4: 4bce         	ldr	r3, [pc, #0x338]        @ 0x3b7830 <PurchaseLayer::init()+0x3e0>
  3b74f6: 447b         	add	r3, pc
  3b74f8: 4618         	mov	r0, r3
  3b74fa: f220 ff03    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x220e06
  3b74fe: 4603         	mov	r3, r0
  3b7500: 930a         	str	r3, [sp, #0x28]
  3b7502: 4bcc         	ldr	r3, [pc, #0x330]        @ 0x3b7834 <PurchaseLayer::init()+0x3e4>
  3b7504: 447b         	add	r3, pc
  3b7506: 4618         	mov	r0, r3
  3b7508: f220 fefc    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x220df8
  3b750c: 4603         	mov	r3, r0
  3b750e: 930b         	str	r3, [sp, #0x2c]
  3b7510: 4bc9         	ldr	r3, [pc, #0x324]        @ 0x3b7838 <PurchaseLayer::init()+0x3e8>
  3b7512: 447b         	add	r3, pc
  3b7514: 4618         	mov	r0, r3
  3b7516: f220 fef5    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x220dea
  3b751a: 4603         	mov	r3, r0
  3b751c: 930c         	str	r3, [sp, #0x30]
  3b751e: 9a03         	ldr	r2, [sp, #0xc]
  3b7520: 4bc6         	ldr	r3, [pc, #0x318]        @ 0x3b783c <PurchaseLayer::init()+0x3ec>
  3b7522: 58e3         	ldr	r3, [r4, r3]
  3b7524: 931a         	str	r3, [sp, #0x68]
  3b7526: 2300         	movs	r3, #0x0
  3b7528: 931b         	str	r3, [sp, #0x6c]
  3b752a: 9b1b         	ldr	r3, [sp, #0x6c]
  3b752c: 9300         	str	r3, [sp]
  3b752e: 9b1a         	ldr	r3, [sp, #0x68]
  3b7530: 9807         	ldr	r0, [sp, #0x1c]
  3b7532: 9908         	ldr	r1, [sp, #0x20]
  3b7534: f200 fefa    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x200df4
  3b7538: 4603         	mov	r3, r0
  3b753a: 930d         	str	r3, [sp, #0x34]
  3b753c: 980d         	ldr	r0, [sp, #0x34]
  3b753e: 2100         	movs	r1, #0x0
  3b7540: f1fd fdfc    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x1fdbf8
  3b7544: 4602         	mov	r2, r0
  3b7546: 9b03         	ldr	r3, [sp, #0xc]
  3b7548: f8c3 211c    	str.w	r2, [r3, #0x11c]
  3b754c: 9b03         	ldr	r3, [sp, #0xc]
  3b754e: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3b7552: 4618         	mov	r0, r3
  3b7554: f1e0 fcc8    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1e0990
  3b7558: 9b03         	ldr	r3, [sp, #0xc]
  3b755a: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3b755e: 681b         	ldr	r3, [r3]
  3b7560: 334c         	adds	r3, #0x4c
  3b7562: 681d         	ldr	r5, [r3]
  3b7564: 9b03         	ldr	r3, [sp, #0xc]
  3b7566: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3b756a: 461e         	mov	r6, r3
  3b756c: 4bac         	ldr	r3, [pc, #0x2b0]        @ 0x3b7820 <PurchaseLayer::init()+0x3d0>
  3b756e: 58e3         	ldr	r3, [r4, r3]
  3b7570: ed93 7a00    	vldr	s14, [r3]
  3b7574: eddf 7aa9    	vldr	s15, [pc, #676]         @ 0x3b781c <PurchaseLayer::init()+0x3cc>
  3b7578: ee77 7a67    	vsub.f32	s15, s14, s15
  3b757c: ab24         	add	r3, sp, #0x90
  3b757e: 4618         	mov	r0, r3
  3b7580: ee17 1a90    	vmov	r1, s15
  3b7584: f04f 4284    	mov.w	r2, #0x42000000
  3b7588: f1db fbb2    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1db764
  3b758c: ab24         	add	r3, sp, #0x90
  3b758e: 4630         	mov	r0, r6
  3b7590: 4619         	mov	r1, r3
  3b7592: 47a8         	blx	r5
  3b7594: 9b03         	ldr	r3, [sp, #0xc]
  3b7596: 681b         	ldr	r3, [r3]
  3b7598: 33c8         	adds	r3, #0xc8
  3b759a: 681b         	ldr	r3, [r3]
  3b759c: 9903         	ldr	r1, [sp, #0xc]
  3b759e: 9a03         	ldr	r2, [sp, #0xc]
  3b75a0: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  3b75a4: 4608         	mov	r0, r1
  3b75a6: 4611         	mov	r1, r2
  3b75a8: 4798         	blx	r3
  3b75aa: 9a03         	ldr	r2, [sp, #0xc]
  3b75ac: 4ba4         	ldr	r3, [pc, #0x290]        @ 0x3b7840 <PurchaseLayer::init()+0x3f0>
  3b75ae: 58e3         	ldr	r3, [r4, r3]
  3b75b0: 931c         	str	r3, [sp, #0x70]
  3b75b2: 2300         	movs	r3, #0x0
  3b75b4: 931d         	str	r3, [sp, #0x74]
  3b75b6: 9b1d         	ldr	r3, [sp, #0x74]
  3b75b8: 9300         	str	r3, [sp]
  3b75ba: 9b1c         	ldr	r3, [sp, #0x70]
  3b75bc: 9809         	ldr	r0, [sp, #0x24]
  3b75be: 990a         	ldr	r1, [sp, #0x28]
  3b75c0: f200 feb4    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x200d68
  3b75c4: 4603         	mov	r3, r0
  3b75c6: 930e         	str	r3, [sp, #0x38]
  3b75c8: 980e         	ldr	r0, [sp, #0x38]
  3b75ca: 2100         	movs	r1, #0x0
  3b75cc: f1fd fdb6    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x1fdb6c
  3b75d0: 4602         	mov	r2, r0
  3b75d2: 9b03         	ldr	r3, [sp, #0xc]
  3b75d4: f8c3 2124    	str.w	r2, [r3, #0x124]
  3b75d8: 9b03         	ldr	r3, [sp, #0xc]
  3b75da: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3b75de: 4618         	mov	r0, r3
  3b75e0: f1e0 fc82    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1e0904
  3b75e4: 9b03         	ldr	r3, [sp, #0xc]
  3b75e6: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3b75ea: 681b         	ldr	r3, [r3]
  3b75ec: 334c         	adds	r3, #0x4c
  3b75ee: 681d         	ldr	r5, [r3]
  3b75f0: 9b03         	ldr	r3, [sp, #0xc]
  3b75f2: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3b75f6: 461e         	mov	r6, r3
  3b75f8: 4b89         	ldr	r3, [pc, #0x224]        @ 0x3b7820 <PurchaseLayer::init()+0x3d0>
  3b75fa: 58e3         	ldr	r3, [r4, r3]
  3b75fc: ed93 7a00    	vldr	s14, [r3]
  3b7600: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3b7604: ee87 7a27    	vdiv.f32	s14, s14, s15
  3b7608: eef3 7a0e    	vmov.f32	s15, #3.000000e+01
  3b760c: ee77 7a67    	vsub.f32	s15, s14, s15
  3b7610: ab24         	add	r3, sp, #0x90
  3b7612: 4618         	mov	r0, r3
  3b7614: ee17 1a90    	vmov	r1, s15
  3b7618: f04f 4284    	mov.w	r2, #0x42000000
  3b761c: f1db fb68    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1db6d0
  3b7620: ab24         	add	r3, sp, #0x90
  3b7622: 4630         	mov	r0, r6
  3b7624: 4619         	mov	r1, r3
  3b7626: 47a8         	blx	r5
  3b7628: 9b03         	ldr	r3, [sp, #0xc]
  3b762a: 681b         	ldr	r3, [r3]
  3b762c: 33c8         	adds	r3, #0xc8
  3b762e: 681b         	ldr	r3, [r3]
  3b7630: 9903         	ldr	r1, [sp, #0xc]
  3b7632: 9a03         	ldr	r2, [sp, #0xc]
  3b7634: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  3b7638: 4608         	mov	r0, r1
  3b763a: 4611         	mov	r1, r2
  3b763c: 4798         	blx	r3
  3b763e: 9a03         	ldr	r2, [sp, #0xc]
  3b7640: 4b80         	ldr	r3, [pc, #0x200]        @ 0x3b7844 <PurchaseLayer::init()+0x3f4>
  3b7642: 58e3         	ldr	r3, [r4, r3]
  3b7644: 931e         	str	r3, [sp, #0x78]
  3b7646: 2300         	movs	r3, #0x0
  3b7648: 931f         	str	r3, [sp, #0x7c]
  3b764a: 9b1f         	ldr	r3, [sp, #0x7c]
  3b764c: 9300         	str	r3, [sp]
  3b764e: 9b1e         	ldr	r3, [sp, #0x78]
  3b7650: 980b         	ldr	r0, [sp, #0x2c]
  3b7652: 990c         	ldr	r1, [sp, #0x30]
  3b7654: f200 fe6a    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x200cd4
  3b7658: 4603         	mov	r3, r0
  3b765a: 930f         	str	r3, [sp, #0x3c]
  3b765c: 980f         	ldr	r0, [sp, #0x3c]
  3b765e: 2100         	movs	r1, #0x0
  3b7660: f1fd fd6c    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x1fdad8
  3b7664: 4602         	mov	r2, r0
  3b7666: 9b03         	ldr	r3, [sp, #0xc]
  3b7668: f8c3 212c    	str.w	r2, [r3, #0x12c]
  3b766c: 9b03         	ldr	r3, [sp, #0xc]
  3b766e: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  3b7672: 4618         	mov	r0, r3
  3b7674: f1e0 fc38    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1e0870
  3b7678: 9b03         	ldr	r3, [sp, #0xc]
  3b767a: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  3b767e: 681b         	ldr	r3, [r3]
  3b7680: 334c         	adds	r3, #0x4c
  3b7682: 681d         	ldr	r5, [r3]
  3b7684: 9b03         	ldr	r3, [sp, #0xc]
  3b7686: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  3b768a: 461e         	mov	r6, r3
  3b768c: ab24         	add	r3, sp, #0x90
  3b768e: 4618         	mov	r0, r3
  3b7690: f04f 0100    	mov.w	r1, #0x0
  3b7694: f2c4 2160    	movt	r1, #0x4260
  3b7698: f04f 4284    	mov.w	r2, #0x42000000
  3b769c: f1db fb28    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1db650
  3b76a0: ab24         	add	r3, sp, #0x90
  3b76a2: 4630         	mov	r0, r6
  3b76a4: 4619         	mov	r1, r3
  3b76a6: 47a8         	blx	r5
  3b76a8: 9b03         	ldr	r3, [sp, #0xc]
  3b76aa: 681b         	ldr	r3, [r3]
  3b76ac: 33c8         	adds	r3, #0xc8
  3b76ae: 681b         	ldr	r3, [r3]
  3b76b0: 9903         	ldr	r1, [sp, #0xc]
  3b76b2: 9a03         	ldr	r2, [sp, #0xc]
  3b76b4: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  3b76b8: 4608         	mov	r0, r1
  3b76ba: 4611         	mov	r1, r2
  3b76bc: 4798         	blx	r3
  3b76be: 9b03         	ldr	r3, [sp, #0xc]
  3b76c0: f64c 42cd    	movw	r2, #0xcccd
  3b76c4: f6c3 720c    	movt	r2, #0x3f0c
  3b76c8: f8c3 210c    	str.w	r2, [r3, #0x10c]
  3b76cc: 9b03         	ldr	r3, [sp, #0xc]
  3b76ce: f04f 0200    	mov.w	r2, #0x0
  3b76d2: f2c4 12c0    	movt	r2, #0x41c0
  3b76d6: f8c3 2110    	str.w	r2, [r3, #0x110]
  3b76da: 9b03         	ldr	r3, [sp, #0xc]
  3b76dc: f04f 4241    	mov.w	r2, #0xc1000000
  3b76e0: f8c3 2114    	str.w	r2, [r3, #0x114]
  3b76e4: 4b58         	ldr	r3, [pc, #0x160]        @ 0x3b7848 <PurchaseLayer::init()+0x3f8>
  3b76e6: 447b         	add	r3, pc
  3b76e8: 4618         	mov	r0, r3
  3b76ea: f220 fd4b    	bl	0x5d8184 <cocos2d::CCSprite::create(char const*)> @ imm = #0x220a96
  3b76ee: 4602         	mov	r2, r0
  3b76f0: 9b03         	ldr	r3, [sp, #0xc]
  3b76f2: f8c3 2134    	str.w	r2, [r3, #0x134]
  3b76f6: 9b03         	ldr	r3, [sp, #0xc]
  3b76f8: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  3b76fc: 681b         	ldr	r3, [r3]
  3b76fe: 334c         	adds	r3, #0x4c
  3b7700: 681b         	ldr	r3, [r3]
  3b7702: 9a03         	ldr	r2, [sp, #0xc]
  3b7704: f8d2 1134    	ldr.w	r1, [r2, #0x134]
  3b7708: aa12         	add	r2, sp, #0x48
  3b770a: 4608         	mov	r0, r1
  3b770c: 4611         	mov	r1, r2
  3b770e: 4798         	blx	r3
  3b7710: 9b03         	ldr	r3, [sp, #0xc]
  3b7712: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  3b7716: 681b         	ldr	r3, [r3]
  3b7718: f503 73d2    	add.w	r3, r3, #0x1a4
  3b771c: 681b         	ldr	r3, [r3]
  3b771e: 9a03         	ldr	r2, [sp, #0xc]
  3b7720: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  3b7724: 4610         	mov	r0, r2
  3b7726: 2123         	movs	r1, #0x23
  3b7728: 4798         	blx	r3
  3b772a: 9b03         	ldr	r3, [sp, #0xc]
  3b772c: 681b         	ldr	r3, [r3]
  3b772e: 33c8         	adds	r3, #0xc8
  3b7730: 681b         	ldr	r3, [r3]
  3b7732: 9903         	ldr	r1, [sp, #0xc]
  3b7734: 9a03         	ldr	r2, [sp, #0xc]
  3b7736: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  3b773a: 4608         	mov	r0, r1
  3b773c: 4611         	mov	r1, r2
  3b773e: 4798         	blx	r3
  3b7740: 4b42         	ldr	r3, [pc, #0x108]        @ 0x3b784c <PurchaseLayer::init()+0x3fc>
  3b7742: 447b         	add	r3, pc
  3b7744: 4618         	mov	r0, r3
  3b7746: f220 fd1d    	bl	0x5d8184 <cocos2d::CCSprite::create(char const*)> @ imm = #0x220a3a
  3b774a: 4602         	mov	r2, r0
  3b774c: 9b03         	ldr	r3, [sp, #0xc]
  3b774e: f8c3 2138    	str.w	r2, [r3, #0x138]
  3b7752: 9b03         	ldr	r3, [sp, #0xc]
  3b7754: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3b7758: 681b         	ldr	r3, [r3]
  3b775a: 334c         	adds	r3, #0x4c
  3b775c: 681d         	ldr	r5, [r3]
  3b775e: 9b03         	ldr	r3, [sp, #0xc]
  3b7760: f8d3 6138    	ldr.w	r6, [r3, #0x138]
  3b7764: ab20         	add	r3, sp, #0x80
  3b7766: 4618         	mov	r0, r3
  3b7768: f04f 0100    	mov.w	r1, #0x0
  3b776c: f2cc 1120    	movt	r1, #0xc120
  3b7770: f04f 0200    	mov.w	r2, #0x0
  3b7774: f2c4 12a0    	movt	r2, #0x41a0
  3b7778: f1db faba    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1db574
  3b777c: a924         	add	r1, sp, #0x90
  3b777e: aa12         	add	r2, sp, #0x48
  3b7780: ab20         	add	r3, sp, #0x80
  3b7782: 4608         	mov	r0, r1
  3b7784: 4611         	mov	r1, r2
  3b7786: 461a         	mov	r2, r3
  3b7788: f7fe ff16    	bl	0x3b65b8 <ProxyMine::removeMine(bool)+0x330> @ imm = #-0x11d4
  3b778c: ab24         	add	r3, sp, #0x90
  3b778e: 4630         	mov	r0, r6
  3b7790: 4619         	mov	r1, r3
  3b7792: 47a8         	blx	r5
  3b7794: 9b03         	ldr	r3, [sp, #0xc]
  3b7796: 681b         	ldr	r3, [r3]
  3b7798: 33c8         	adds	r3, #0xc8
  3b779a: 681b         	ldr	r3, [r3]
  3b779c: 9903         	ldr	r1, [sp, #0xc]
  3b779e: 9a03         	ldr	r2, [sp, #0xc]
  3b77a0: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  3b77a4: 4608         	mov	r0, r1
  3b77a6: 4611         	mov	r1, r2
  3b77a8: 4798         	blx	r3
  3b77aa: 4b29         	ldr	r3, [pc, #0xa4]         @ 0x3b7850 <PurchaseLayer::init()+0x400>
  3b77ac: 447b         	add	r3, pc
  3b77ae: 4618         	mov	r0, r3
  3b77b0: f3fd fda6    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3fdb4c
  3b77b4: 4603         	mov	r3, r0
  3b77b6: 2220         	movs	r2, #0x20
  3b77b8: 9200         	str	r2, [sp]
  3b77ba: 4a26         	ldr	r2, [pc, #0x98]         @ 0x3b7854 <PurchaseLayer::init()+0x404>
  3b77bc: 447a         	add	r2, pc
  3b77be: 4610         	mov	r0, r2
  3b77c0: 4619         	mov	r1, r3
  3b77c2: 2220         	movs	r2, #0x20
  3b77c4: 2320         	movs	r3, #0x20
  3b77c6: f1ed fdd7    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1edbae
  3b77ca: 4602         	mov	r2, r0
  3b77cc: 9b03         	ldr	r3, [sp, #0xc]
  3b77ce: f8c3 2118    	str.w	r2, [r3, #0x118]
  3b77d2: 9b03         	ldr	r3, [sp, #0xc]
  3b77d4: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3b77d8: 4618         	mov	r0, r3
  3b77da: f1e0 fb85    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1e070a
  3b77de: 9b03         	ldr	r3, [sp, #0xc]
  3b77e0: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3b77e4: 9a03         	ldr	r2, [sp, #0xc]
  3b77e6: edd2 7a44    	vldr	s15, [r2, #272]
  3b77ea: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3b77ee: ee17 2a90    	vmov	r2, s15
  3b77f2: 4618         	mov	r0, r3
  3b77f4: 4611         	mov	r1, r2
  3b77f6: f1ee fac5    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1ee58a
  3b77fa: 9b03         	ldr	r3, [sp, #0xc]
  3b77fc: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3b7800: 681b         	ldr	r3, [r3]
  3b7802: 3340         	adds	r3, #0x40
  3b7804: 681b         	ldr	r3, [r3]
  3b7806: 9a03         	ldr	r2, [sp, #0xc]
  3b7808: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3b780c: 4611         	mov	r1, r2
  3b780e: 9a03         	ldr	r2, [sp, #0xc]
  3b7810: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3b7814: 4608         	mov	r0, r1
  3b7816: 4611         	mov	r1, r2
  3b7818: e01e         	b	0x3b7858 <PurchaseLayer::init()+0x408> @ imm = #0x3c
  3b781a: bf00         	nop
  3b781c: 0000         	movs	r0, r0
  3b781e: 42b4         	cmp	r4, r6
  3b7820: d724         	bvc	0x3b786c <PurchaseLayer::init()+0x41c> @ imm = #0x48
  3b7822: ffff cf50    	vcvt.u32.f32	q14, q0, #0x1
  3b7826: 0041         	lsls	r1, r0, #0x1
  3b7828: cf42         	ldm	r7!, {r1, r6}
  3b782a: 0041         	lsls	r1, r0, #0x1
  3b782c: cf40         	ldm	r7!, {r6}
  3b782e: 0041         	lsls	r1, r0, #0x1
  3b7830: cf32         	ldm	r7!, {r1, r4, r5}
  3b7832: 0041         	lsls	r1, r0, #0x1
  3b7834: cf30         	ldm	r7!, {r4, r5}
  3b7836: 0041         	lsls	r1, r0, #0x1
  3b7838: cf22         	ldm	r7!, {r1, r5}
  3b783a: 0041         	lsls	r1, r0, #0x1
  3b783c: de14         	udf	#0x14
  3b783e: ffff de18    	vcvt.f32.u32	d29, d8, #0x1
  3b7842: ffff de1c    	vcvt.f32.u32	d29, d12, #0x1
  3b7846: ffff cd5a    	<unknown>
  3b784a: 0041         	lsls	r1, r0, #0x1
  3b784c: cd12         	ldm	r5!, {r1, r4}
  3b784e: 0041         	lsls	r1, r0, #0x1
  3b7850: 9b4c         	ldr	r3, [sp, #0x130]
  3b7852: 0058         	lsls	r0, r3, #0x1
  3b7854: cca8         	ldm	r4!, {r3, r5, r7}
  3b7856: 0041         	lsls	r1, r0, #0x1
  3b7858: 4798         	blx	r3
  3b785a: 9b03         	ldr	r3, [sp, #0xc]
  3b785c: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3b7860: 681b         	ldr	r3, [r3]
  3b7862: 334c         	adds	r3, #0x4c
  3b7864: 681d         	ldr	r5, [r3]
  3b7866: 9b03         	ldr	r3, [sp, #0xc]
  3b7868: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3b786c: 461e         	mov	r6, r3
  3b786e: 9b03         	ldr	r3, [sp, #0xc]
  3b7870: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3b7874: 681b         	ldr	r3, [r3]
  3b7876: 3350         	adds	r3, #0x50
  3b7878: 681b         	ldr	r3, [r3]
  3b787a: 9a03         	ldr	r2, [sp, #0xc]
  3b787c: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  3b7880: 4610         	mov	r0, r2
  3b7882: 4798         	blx	r3
  3b7884: 4603         	mov	r3, r0
  3b7886: 681f         	ldr	r7, [r3]
  3b7888: 9b03         	ldr	r3, [sp, #0xc]
  3b788a: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3b788e: 681b         	ldr	r3, [r3]
  3b7890: 3350         	adds	r3, #0x50
  3b7892: 681b         	ldr	r3, [r3]
  3b7894: 9a03         	ldr	r2, [sp, #0xc]
  3b7896: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  3b789a: 4610         	mov	r0, r2
  3b789c: 4798         	blx	r3
  3b789e: 4603         	mov	r3, r0
  3b78a0: 685b         	ldr	r3, [r3, #0x4]
  3b78a2: aa14         	add	r2, sp, #0x50
  3b78a4: 4610         	mov	r0, r2
  3b78a6: 4639         	mov	r1, r7
  3b78a8: 461a         	mov	r2, r3
  3b78aa: f1db fa21    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1db442
  3b78ae: 9b03         	ldr	r3, [sp, #0xc]
  3b78b0: edd3 7a45    	vldr	s15, [r3, #276]
  3b78b4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3b78b8: ab20         	add	r3, sp, #0x80
  3b78ba: 4618         	mov	r0, r3
  3b78bc: ed9f 0bb2    	vldr	d0, [pc, #712]          @ 0x3b7b88 <PurchaseLayer::init()+0x738>
  3b78c0: eeb0 1b47    	vmov.f64	d1, d7
  3b78c4: f7fe fe88    	bl	0x3b65d8 <ProxyMine::removeMine(bool)+0x350> @ imm = #-0x12f0
  3b78c8: ed9d 8b20    	vldr	d8, [sp, #128]
  3b78cc: 9b03         	ldr	r3, [sp, #0xc]
  3b78ce: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3b78d2: 681b         	ldr	r3, [r3]
  3b78d4: f503 73fe    	add.w	r3, r3, #0x1fc
  3b78d8: 681b         	ldr	r3, [r3]
  3b78da: 9a03         	ldr	r2, [sp, #0xc]
  3b78dc: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3b78e0: 4610         	mov	r0, r2
  3b78e2: 4798         	blx	r3
  3b78e4: 4607         	mov	r7, r0
  3b78e6: ab05         	add	r3, sp, #0x14
  3b78e8: 4618         	mov	r0, r3
  3b78ea: f3d2 fd83    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3d2b06
  3b78ee: aa06         	add	r2, sp, #0x18
  3b78f0: ab05         	add	r3, sp, #0x14
  3b78f2: 4610         	mov	r0, r2
  3b78f4: 4639         	mov	r1, r7
  3b78f6: 461a         	mov	r2, r3
  3b78f8: f3ff f8b2    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3ff164
  3b78fc: ab06         	add	r3, sp, #0x18
  3b78fe: 4618         	mov	r0, r3
  3b7900: f3fd fbac    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x3fd758
  3b7904: 4603         	mov	r3, r0
  3b7906: ee07 3a90    	vmov	s15, r3
  3b790a: eeb8 7a67    	vcvt.f32.u32	s14, s15
  3b790e: 9b03         	ldr	r3, [sp, #0xc]
  3b7910: edd3 7a44    	vldr	s15, [r3, #272]
  3b7914: ee27 7a27    	vmul.f32	s14, s14, s15
  3b7918: 9b03         	ldr	r3, [sp, #0xc]
  3b791a: edd3 7a43    	vldr	s15, [r3, #268]
  3b791e: ee27 7a27    	vmul.f32	s14, s14, s15
  3b7922: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3b7926: eec7 7a27    	vdiv.f32	s15, s14, s15
  3b792a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3b792e: ee38 7b47    	vsub.f64	d7, d8, d7
  3b7932: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3b7936: 9b03         	ldr	r3, [sp, #0xc]
  3b7938: edd3 7a45    	vldr	s15, [r3, #276]
  3b793c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3b7940: ab24         	add	r3, sp, #0x90
  3b7942: 4618         	mov	r0, r3
  3b7944: ed9f 0b90    	vldr	d0, [pc, #576]          @ 0x3b7b88 <PurchaseLayer::init()+0x738>
  3b7948: eeb0 1b47    	vmov.f64	d1, d7
  3b794c: f7fe fe44    	bl	0x3b65d8 <ProxyMine::removeMine(bool)+0x350> @ imm = #-0x1378
  3b7950: ed9d 7b26    	vldr	d7, [sp, #152]
  3b7954: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3b7958: ab16         	add	r3, sp, #0x58
  3b795a: 4618         	mov	r0, r3
  3b795c: ee18 1a10    	vmov	r1, s16
  3b7960: ee17 2a90    	vmov	r2, s15
  3b7964: f1db f9c4    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1db388
  3b7968: a918         	add	r1, sp, #0x60
  3b796a: aa14         	add	r2, sp, #0x50
  3b796c: ab16         	add	r3, sp, #0x58
  3b796e: 4608         	mov	r0, r1
  3b7970: 4611         	mov	r1, r2
  3b7972: 461a         	mov	r2, r3
  3b7974: f7fe fe20    	bl	0x3b65b8 <ProxyMine::removeMine(bool)+0x330> @ imm = #-0x13c0
  3b7978: ab18         	add	r3, sp, #0x60
  3b797a: 4630         	mov	r0, r6
  3b797c: 4619         	mov	r1, r3
  3b797e: 47a8         	blx	r5
  3b7980: ab06         	add	r3, sp, #0x18
  3b7982: 4618         	mov	r0, r3
  3b7984: f3fd ffc6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3fdf8c
  3b7988: ab05         	add	r3, sp, #0x14
  3b798a: 4618         	mov	r0, r3
  3b798c: f3d2 fd36    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3d2a6c
  3b7990: 9b03         	ldr	r3, [sp, #0xc]
  3b7992: 681b         	ldr	r3, [r3]
  3b7994: 33c8         	adds	r3, #0xc8
  3b7996: 681b         	ldr	r3, [r3]
  3b7998: 9903         	ldr	r1, [sp, #0xc]
  3b799a: 9a03         	ldr	r2, [sp, #0xc]
  3b799c: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3b79a0: 4608         	mov	r0, r1
  3b79a2: 4611         	mov	r1, r2
  3b79a4: 4798         	blx	r3
  3b79a6: 4b7a         	ldr	r3, [pc, #0x1e8]        @ 0x3b7b90 <PurchaseLayer::init()+0x740>
  3b79a8: 447b         	add	r3, pc
  3b79aa: 4618         	mov	r0, r3
  3b79ac: f3fd fca8    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3fd950
  3b79b0: 4603         	mov	r3, r0
  3b79b2: 2220         	movs	r2, #0x20
  3b79b4: 9200         	str	r2, [sp]
  3b79b6: 4a77         	ldr	r2, [pc, #0x1dc]        @ 0x3b7b94 <PurchaseLayer::init()+0x744>
  3b79b8: 447a         	add	r2, pc
  3b79ba: 4610         	mov	r0, r2
  3b79bc: 4619         	mov	r1, r3
  3b79be: 2220         	movs	r2, #0x20
  3b79c0: 2320         	movs	r3, #0x20
  3b79c2: f1ed fcd9    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1ed9b2
  3b79c6: 4602         	mov	r2, r0
  3b79c8: 9b03         	ldr	r3, [sp, #0xc]
  3b79ca: f8c3 2120    	str.w	r2, [r3, #0x120]
  3b79ce: 9b03         	ldr	r3, [sp, #0xc]
  3b79d0: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3b79d4: 4618         	mov	r0, r3
  3b79d6: f1e0 fa87    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1e050e
  3b79da: 9b03         	ldr	r3, [sp, #0xc]
  3b79dc: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3b79e0: 9a03         	ldr	r2, [sp, #0xc]
  3b79e2: edd2 7a44    	vldr	s15, [r2, #272]
  3b79e6: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3b79ea: ee17 2a90    	vmov	r2, s15
  3b79ee: 4618         	mov	r0, r3
  3b79f0: 4611         	mov	r1, r2
  3b79f2: f1ee f9c7    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1ee38e
  3b79f6: 9b03         	ldr	r3, [sp, #0xc]
  3b79f8: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3b79fc: 681b         	ldr	r3, [r3]
  3b79fe: 3340         	adds	r3, #0x40
  3b7a00: 681b         	ldr	r3, [r3]
  3b7a02: 9a03         	ldr	r2, [sp, #0xc]
  3b7a04: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  3b7a08: 4611         	mov	r1, r2
  3b7a0a: 9a03         	ldr	r2, [sp, #0xc]
  3b7a0c: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3b7a10: 4608         	mov	r0, r1
  3b7a12: 4611         	mov	r1, r2
  3b7a14: 4798         	blx	r3
  3b7a16: 9b03         	ldr	r3, [sp, #0xc]
  3b7a18: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3b7a1c: 681b         	ldr	r3, [r3]
  3b7a1e: 334c         	adds	r3, #0x4c
  3b7a20: 681d         	ldr	r5, [r3]
  3b7a22: 9b03         	ldr	r3, [sp, #0xc]
  3b7a24: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3b7a28: 461e         	mov	r6, r3
  3b7a2a: 9b03         	ldr	r3, [sp, #0xc]
  3b7a2c: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3b7a30: 681b         	ldr	r3, [r3]
  3b7a32: 3350         	adds	r3, #0x50
  3b7a34: 681b         	ldr	r3, [r3]
  3b7a36: 9a03         	ldr	r2, [sp, #0xc]
  3b7a38: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  3b7a3c: 4610         	mov	r0, r2
  3b7a3e: 4798         	blx	r3
  3b7a40: 4603         	mov	r3, r0
  3b7a42: 681f         	ldr	r7, [r3]
  3b7a44: 9b03         	ldr	r3, [sp, #0xc]
  3b7a46: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3b7a4a: 681b         	ldr	r3, [r3]
  3b7a4c: 3350         	adds	r3, #0x50
  3b7a4e: 681b         	ldr	r3, [r3]
  3b7a50: 9a03         	ldr	r2, [sp, #0xc]
  3b7a52: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  3b7a56: 4610         	mov	r0, r2
  3b7a58: 4798         	blx	r3
  3b7a5a: 4603         	mov	r3, r0
  3b7a5c: 685b         	ldr	r3, [r3, #0x4]
  3b7a5e: aa14         	add	r2, sp, #0x50
  3b7a60: 4610         	mov	r0, r2
  3b7a62: 4639         	mov	r1, r7
  3b7a64: 461a         	mov	r2, r3
  3b7a66: f1db f943    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1db286
  3b7a6a: 9b03         	ldr	r3, [sp, #0xc]
  3b7a6c: edd3 7a45    	vldr	s15, [r3, #276]
  3b7a70: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3b7a74: ab20         	add	r3, sp, #0x80
  3b7a76: 4618         	mov	r0, r3
  3b7a78: ed9f 0b43    	vldr	d0, [pc, #268]          @ 0x3b7b88 <PurchaseLayer::init()+0x738>
  3b7a7c: eeb0 1b47    	vmov.f64	d1, d7
  3b7a80: f7fe fdaa    	bl	0x3b65d8 <ProxyMine::removeMine(bool)+0x350> @ imm = #-0x14ac
  3b7a84: ed9d 8b20    	vldr	d8, [sp, #128]
  3b7a88: 9b03         	ldr	r3, [sp, #0xc]
  3b7a8a: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3b7a8e: 681b         	ldr	r3, [r3]
  3b7a90: f503 73fe    	add.w	r3, r3, #0x1fc
  3b7a94: 681b         	ldr	r3, [r3]
  3b7a96: 9a03         	ldr	r2, [sp, #0xc]
  3b7a98: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  3b7a9c: 4610         	mov	r0, r2
  3b7a9e: 4798         	blx	r3
  3b7aa0: 4607         	mov	r7, r0
  3b7aa2: ab05         	add	r3, sp, #0x14
  3b7aa4: 4618         	mov	r0, r3
  3b7aa6: f3d2 fca5    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3d294a
  3b7aaa: aa06         	add	r2, sp, #0x18
  3b7aac: ab05         	add	r3, sp, #0x14
  3b7aae: 4610         	mov	r0, r2
  3b7ab0: 4639         	mov	r1, r7
  3b7ab2: 461a         	mov	r2, r3
  3b7ab4: f3fe ffd4    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3fefa8
  3b7ab8: ab06         	add	r3, sp, #0x18
  3b7aba: 4618         	mov	r0, r3
  3b7abc: f3fd face    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x3fd59c
  3b7ac0: 4603         	mov	r3, r0
  3b7ac2: ee07 3a90    	vmov	s15, r3
  3b7ac6: eeb8 7a67    	vcvt.f32.u32	s14, s15
  3b7aca: 9b03         	ldr	r3, [sp, #0xc]
  3b7acc: edd3 7a44    	vldr	s15, [r3, #272]
  3b7ad0: ee27 7a27    	vmul.f32	s14, s14, s15
  3b7ad4: 9b03         	ldr	r3, [sp, #0xc]
  3b7ad6: edd3 7a43    	vldr	s15, [r3, #268]
  3b7ada: ee27 7a27    	vmul.f32	s14, s14, s15
  3b7ade: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3b7ae2: eec7 7a27    	vdiv.f32	s15, s14, s15
  3b7ae6: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3b7aea: ee38 7b47    	vsub.f64	d7, d8, d7
  3b7aee: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3b7af2: 9b03         	ldr	r3, [sp, #0xc]
  3b7af4: edd3 7a45    	vldr	s15, [r3, #276]
  3b7af8: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3b7afc: ab24         	add	r3, sp, #0x90
  3b7afe: 4618         	mov	r0, r3
  3b7b00: ed9f 0b21    	vldr	d0, [pc, #132]          @ 0x3b7b88 <PurchaseLayer::init()+0x738>
  3b7b04: eeb0 1b47    	vmov.f64	d1, d7
  3b7b08: f7fe fd66    	bl	0x3b65d8 <ProxyMine::removeMine(bool)+0x350> @ imm = #-0x1534
  3b7b0c: ed9d 7b26    	vldr	d7, [sp, #152]
  3b7b10: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3b7b14: ab16         	add	r3, sp, #0x58
  3b7b16: 4618         	mov	r0, r3
  3b7b18: ee18 1a10    	vmov	r1, s16
  3b7b1c: ee17 2a90    	vmov	r2, s15
  3b7b20: f1db f8e6    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1db1cc
  3b7b24: a918         	add	r1, sp, #0x60
  3b7b26: aa14         	add	r2, sp, #0x50
  3b7b28: ab16         	add	r3, sp, #0x58
  3b7b2a: 4608         	mov	r0, r1
  3b7b2c: 4611         	mov	r1, r2
  3b7b2e: 461a         	mov	r2, r3
  3b7b30: f7fe fd42    	bl	0x3b65b8 <ProxyMine::removeMine(bool)+0x330> @ imm = #-0x157c
  3b7b34: ab18         	add	r3, sp, #0x60
  3b7b36: 4630         	mov	r0, r6
  3b7b38: 4619         	mov	r1, r3
  3b7b3a: 47a8         	blx	r5
  3b7b3c: ab06         	add	r3, sp, #0x18
  3b7b3e: 4618         	mov	r0, r3
  3b7b40: f3fd fee8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3fddd0
  3b7b44: ab05         	add	r3, sp, #0x14
  3b7b46: 4618         	mov	r0, r3
  3b7b48: f3d2 fc58    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3d28b0
  3b7b4c: 9b03         	ldr	r3, [sp, #0xc]
  3b7b4e: 681b         	ldr	r3, [r3]
  3b7b50: 33c8         	adds	r3, #0xc8
  3b7b52: 681b         	ldr	r3, [r3]
  3b7b54: 9903         	ldr	r1, [sp, #0xc]
  3b7b56: 9a03         	ldr	r2, [sp, #0xc]
  3b7b58: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  3b7b5c: 4608         	mov	r0, r1
  3b7b5e: 4611         	mov	r1, r2
  3b7b60: 4798         	blx	r3
  3b7b62: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x3b7b98 <PurchaseLayer::init()+0x748>
  3b7b64: 447b         	add	r3, pc
  3b7b66: 4618         	mov	r0, r3
  3b7b68: f3fd fbca    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3fd794
  3b7b6c: 4603         	mov	r3, r0
  3b7b6e: 2220         	movs	r2, #0x20
  3b7b70: 9200         	str	r2, [sp]
  3b7b72: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x3b7b9c <PurchaseLayer::init()+0x74c>
  3b7b74: 447a         	add	r2, pc
  3b7b76: 4610         	mov	r0, r2
  3b7b78: 4619         	mov	r1, r3
  3b7b7a: 2220         	movs	r2, #0x20
  3b7b7c: 2320         	movs	r3, #0x20
  3b7b7e: f1ed fbfb    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1ed7f6
  3b7b82: e00d         	b	0x3b7ba0 <PurchaseLayer::init()+0x750> @ imm = #0x1a
  3b7b84: f3af 8000    	nop.w
  3b7b90: 9950         	ldr	r1, [sp, #0x140]
  3b7b92: 0058         	lsls	r0, r3, #0x1
  3b7b94: cab8         	ldm	r2!, {r3, r4, r5, r7}
  3b7b96: 0041         	lsls	r1, r0, #0x1
  3b7b98: 9794         	str	r7, [sp, #0x250]
  3b7b9a: 0058         	lsls	r0, r3, #0x1
  3b7b9c: c904         	ldm	r1!, {r2}
  3b7b9e: 0041         	lsls	r1, r0, #0x1
  3b7ba0: 4602         	mov	r2, r0
  3b7ba2: 9b03         	ldr	r3, [sp, #0xc]
  3b7ba4: f8c3 2128    	str.w	r2, [r3, #0x128]
  3b7ba8: 9b03         	ldr	r3, [sp, #0xc]
  3b7baa: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3b7bae: 4618         	mov	r0, r3
  3b7bb0: f1e0 f99a    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1e0334
  3b7bb4: 9b03         	ldr	r3, [sp, #0xc]
  3b7bb6: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3b7bba: 681b         	ldr	r3, [r3]
  3b7bbc: 334c         	adds	r3, #0x4c
  3b7bbe: 681d         	ldr	r5, [r3]
  3b7bc0: 9b03         	ldr	r3, [sp, #0xc]
  3b7bc2: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3b7bc6: 461e         	mov	r6, r3
  3b7bc8: 9b03         	ldr	r3, [sp, #0xc]
  3b7bca: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  3b7bce: 681b         	ldr	r3, [r3]
  3b7bd0: 3350         	adds	r3, #0x50
  3b7bd2: 681b         	ldr	r3, [r3]
  3b7bd4: 9a03         	ldr	r2, [sp, #0xc]
  3b7bd6: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  3b7bda: 4610         	mov	r0, r2
  3b7bdc: 4798         	blx	r3
  3b7bde: 4603         	mov	r3, r0
  3b7be0: 681f         	ldr	r7, [r3]
  3b7be2: 9b03         	ldr	r3, [sp, #0xc]
  3b7be4: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  3b7be8: 681b         	ldr	r3, [r3]
  3b7bea: 3350         	adds	r3, #0x50
  3b7bec: 681b         	ldr	r3, [r3]
  3b7bee: 9a03         	ldr	r2, [sp, #0xc]
  3b7bf0: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  3b7bf4: 4610         	mov	r0, r2
  3b7bf6: 4798         	blx	r3
  3b7bf8: 4603         	mov	r3, r0
  3b7bfa: 685b         	ldr	r3, [r3, #0x4]
  3b7bfc: aa14         	add	r2, sp, #0x50
  3b7bfe: 4610         	mov	r0, r2
  3b7c00: 4639         	mov	r1, r7
  3b7c02: 461a         	mov	r2, r3
  3b7c04: f1db f874    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1db0e8
  3b7c08: 9b03         	ldr	r3, [sp, #0xc]
  3b7c0a: edd3 7a45    	vldr	s15, [r3, #276]
  3b7c0e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3b7c12: ab20         	add	r3, sp, #0x80
  3b7c14: 4618         	mov	r0, r3
  3b7c16: ed9f 0ba4    	vldr	d0, [pc, #656]          @ 0x3b7ea8 <PurchaseLayer::init()+0xa58>
  3b7c1a: eeb0 1b47    	vmov.f64	d1, d7
  3b7c1e: f7fe fcdb    	bl	0x3b65d8 <ProxyMine::removeMine(bool)+0x350> @ imm = #-0x164a
  3b7c22: ed9d 8b20    	vldr	d8, [sp, #128]
  3b7c26: 9b03         	ldr	r3, [sp, #0xc]
  3b7c28: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3b7c2c: 681b         	ldr	r3, [r3]
  3b7c2e: f503 73fe    	add.w	r3, r3, #0x1fc
  3b7c32: 681b         	ldr	r3, [r3]
  3b7c34: 9a03         	ldr	r2, [sp, #0xc]
  3b7c36: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  3b7c3a: 4610         	mov	r0, r2
  3b7c3c: 4798         	blx	r3
  3b7c3e: 4607         	mov	r7, r0
  3b7c40: ab05         	add	r3, sp, #0x14
  3b7c42: 4618         	mov	r0, r3
  3b7c44: f3d2 fbd6    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3d27ac
  3b7c48: aa06         	add	r2, sp, #0x18
  3b7c4a: ab05         	add	r3, sp, #0x14
  3b7c4c: 4610         	mov	r0, r2
  3b7c4e: 4639         	mov	r1, r7
  3b7c50: 461a         	mov	r2, r3
  3b7c52: f3fe ff05    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3fee0a
  3b7c56: ab06         	add	r3, sp, #0x18
  3b7c58: 4618         	mov	r0, r3
  3b7c5a: f3fd f9ff    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x3fd3fe
  3b7c5e: 4603         	mov	r3, r0
  3b7c60: ee07 3a90    	vmov	s15, r3
  3b7c64: eeb8 7a67    	vcvt.f32.u32	s14, s15
  3b7c68: 9b03         	ldr	r3, [sp, #0xc]
  3b7c6a: edd3 7a44    	vldr	s15, [r3, #272]
  3b7c6e: ee27 7a27    	vmul.f32	s14, s14, s15
  3b7c72: 9b03         	ldr	r3, [sp, #0xc]
  3b7c74: edd3 7a43    	vldr	s15, [r3, #268]
  3b7c78: ee27 7a27    	vmul.f32	s14, s14, s15
  3b7c7c: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3b7c80: eec7 7a27    	vdiv.f32	s15, s14, s15
  3b7c84: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3b7c88: ee38 7b47    	vsub.f64	d7, d8, d7
  3b7c8c: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3b7c90: 9b03         	ldr	r3, [sp, #0xc]
  3b7c92: edd3 7a45    	vldr	s15, [r3, #276]
  3b7c96: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3b7c9a: ab24         	add	r3, sp, #0x90
  3b7c9c: 4618         	mov	r0, r3
  3b7c9e: ed9f 0b82    	vldr	d0, [pc, #520]          @ 0x3b7ea8 <PurchaseLayer::init()+0xa58>
  3b7ca2: eeb0 1b47    	vmov.f64	d1, d7
  3b7ca6: f7fe fc97    	bl	0x3b65d8 <ProxyMine::removeMine(bool)+0x350> @ imm = #-0x16d2
  3b7caa: ed9d 7b26    	vldr	d7, [sp, #152]
  3b7cae: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3b7cb2: ab16         	add	r3, sp, #0x58
  3b7cb4: 4618         	mov	r0, r3
  3b7cb6: ee18 1a10    	vmov	r1, s16
  3b7cba: ee17 2a90    	vmov	r2, s15
  3b7cbe: f1db f817    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1db02e
  3b7cc2: a918         	add	r1, sp, #0x60
  3b7cc4: aa14         	add	r2, sp, #0x50
  3b7cc6: ab16         	add	r3, sp, #0x58
  3b7cc8: 4608         	mov	r0, r1
  3b7cca: 4611         	mov	r1, r2
  3b7ccc: 461a         	mov	r2, r3
  3b7cce: f7fe fc73    	bl	0x3b65b8 <ProxyMine::removeMine(bool)+0x330> @ imm = #-0x171a
  3b7cd2: ab18         	add	r3, sp, #0x60
  3b7cd4: 4630         	mov	r0, r6
  3b7cd6: 4619         	mov	r1, r3
  3b7cd8: 47a8         	blx	r5
  3b7cda: ab06         	add	r3, sp, #0x18
  3b7cdc: 4618         	mov	r0, r3
  3b7cde: f3fd fe19    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3fdc32
  3b7ce2: ab05         	add	r3, sp, #0x14
  3b7ce4: 4618         	mov	r0, r3
  3b7ce6: f3d2 fb89    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3d2712
  3b7cea: 9b03         	ldr	r3, [sp, #0xc]
  3b7cec: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3b7cf0: 681b         	ldr	r3, [r3]
  3b7cf2: 3340         	adds	r3, #0x40
  3b7cf4: 681b         	ldr	r3, [r3]
  3b7cf6: 9a03         	ldr	r2, [sp, #0xc]
  3b7cf8: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  3b7cfc: 4611         	mov	r1, r2
  3b7cfe: 9a03         	ldr	r2, [sp, #0xc]
  3b7d00: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3b7d04: 4608         	mov	r0, r1
  3b7d06: 4611         	mov	r1, r2
  3b7d08: 4798         	blx	r3
  3b7d0a: 9b03         	ldr	r3, [sp, #0xc]
  3b7d0c: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3b7d10: 9a03         	ldr	r2, [sp, #0xc]
  3b7d12: edd2 7a44    	vldr	s15, [r2, #272]
  3b7d16: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3b7d1a: ee17 2a90    	vmov	r2, s15
  3b7d1e: 4618         	mov	r0, r3
  3b7d20: 4611         	mov	r1, r2
  3b7d22: f1ee f82f    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1ee05e
  3b7d26: 9b03         	ldr	r3, [sp, #0xc]
  3b7d28: 681b         	ldr	r3, [r3]
  3b7d2a: 33c8         	adds	r3, #0xc8
  3b7d2c: 681b         	ldr	r3, [r3]
  3b7d2e: 9903         	ldr	r1, [sp, #0xc]
  3b7d30: 9a03         	ldr	r2, [sp, #0xc]
  3b7d32: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  3b7d36: 4608         	mov	r0, r1
  3b7d38: 4611         	mov	r1, r2
  3b7d3a: 4798         	blx	r3
  3b7d3c: 9b03         	ldr	r3, [sp, #0xc]
  3b7d3e: 2200         	movs	r2, #0x0
  3b7d40: f883 2109    	strb.w	r2, [r3, #0x109]
  3b7d44: 4b5a         	ldr	r3, [pc, #0x168]        @ 0x3b7eb0 <PurchaseLayer::init()+0xa60>
  3b7d46: 447b         	add	r3, pc
  3b7d48: 4618         	mov	r0, r3
  3b7d4a: 4b5a         	ldr	r3, [pc, #0x168]        @ 0x3b7eb4 <PurchaseLayer::init()+0xa64>
  3b7d4c: 447b         	add	r3, pc
  3b7d4e: 4619         	mov	r1, r3
  3b7d50: f04f 0200    	mov.w	r2, #0x0
  3b7d54: f2c4 12f0    	movt	r2, #0x41f0
  3b7d58: f1f4 f962    	bl	0x5ac020 <cocos2d::CCLabelTTF::create(char const*, char const*, float)> @ imm = #0x1f42c4
  3b7d5c: 4602         	mov	r2, r0
  3b7d5e: 9b03         	ldr	r3, [sp, #0xc]
  3b7d60: f8c3 2130    	str.w	r2, [r3, #0x130]
  3b7d64: 9b03         	ldr	r3, [sp, #0xc]
  3b7d66: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  3b7d6a: 4618         	mov	r0, r3
  3b7d6c: f1e0 f8bc    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1e0178
  3b7d70: 9b03         	ldr	r3, [sp, #0xc]
  3b7d72: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  3b7d76: 681b         	ldr	r3, [r3]
  3b7d78: 337c         	adds	r3, #0x7c
  3b7d7a: 681d         	ldr	r5, [r3]
  3b7d7c: 9b03         	ldr	r3, [sp, #0xc]
  3b7d7e: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  3b7d82: 461e         	mov	r6, r3
  3b7d84: ab24         	add	r3, sp, #0x90
  3b7d86: 4618         	mov	r0, r3
  3b7d88: f04f 0100    	mov.w	r1, #0x0
  3b7d8c: f04f 527c    	mov.w	r2, #0x3f000000
  3b7d90: f1da ffae    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1daf5c
  3b7d94: ab24         	add	r3, sp, #0x90
  3b7d96: 4630         	mov	r0, r6
  3b7d98: 4619         	mov	r1, r3
  3b7d9a: 47a8         	blx	r5
  3b7d9c: 9b03         	ldr	r3, [sp, #0xc]
  3b7d9e: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  3b7da2: 681b         	ldr	r3, [r3]
  3b7da4: 334c         	adds	r3, #0x4c
  3b7da6: 681d         	ldr	r5, [r3]
  3b7da8: 9b03         	ldr	r3, [sp, #0xc]
  3b7daa: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  3b7dae: 461e         	mov	r6, r3
  3b7db0: ab20         	add	r3, sp, #0x80
  3b7db2: 4618         	mov	r0, r3
  3b7db4: f04f 0100    	mov.w	r1, #0x0
  3b7db8: f2c4 21e6    	movt	r1, #0x42e6
  3b7dbc: f04f 0200    	mov.w	r2, #0x0
  3b7dc0: f2c4 3207    	movt	r2, #0x4307
  3b7dc4: f1da ff94    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1daf28
  3b7dc8: a924         	add	r1, sp, #0x90
  3b7dca: aa12         	add	r2, sp, #0x48
  3b7dcc: ab20         	add	r3, sp, #0x80
  3b7dce: 4608         	mov	r0, r1
  3b7dd0: 4611         	mov	r1, r2
  3b7dd2: 461a         	mov	r2, r3
  3b7dd4: f7fe fbf0    	bl	0x3b65b8 <ProxyMine::removeMine(bool)+0x330> @ imm = #-0x1820
  3b7dd8: ab24         	add	r3, sp, #0x90
  3b7dda: 4630         	mov	r0, r6
  3b7ddc: 4619         	mov	r1, r3
  3b7dde: 47a8         	blx	r5
  3b7de0: 9b03         	ldr	r3, [sp, #0xc]
  3b7de2: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  3b7de6: 681b         	ldr	r3, [r3]
  3b7de8: 3398         	adds	r3, #0x98
  3b7dea: 681b         	ldr	r3, [r3]
  3b7dec: 9a03         	ldr	r2, [sp, #0xc]
  3b7dee: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  3b7df2: 4610         	mov	r0, r2
  3b7df4: f04f 0100    	mov.w	r1, #0x0
  3b7df8: f2c4 2120    	movt	r1, #0x4220
  3b7dfc: 4798         	blx	r3
  3b7dfe: 9b03         	ldr	r3, [sp, #0xc]
  3b7e00: 681b         	ldr	r3, [r3]
  3b7e02: 33c8         	adds	r3, #0xc8
  3b7e04: 681b         	ldr	r3, [r3]
  3b7e06: 9903         	ldr	r1, [sp, #0xc]
  3b7e08: 9a03         	ldr	r2, [sp, #0xc]
  3b7e0a: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  3b7e0e: 4608         	mov	r0, r1
  3b7e10: 4611         	mov	r1, r2
  3b7e12: 4798         	blx	r3
  3b7e14: f074 f948    	bl	0x42c0a8 <ApplicationInterface::removeAdBanner()> @ imm = #0x74290
  3b7e18: f7bf fe92    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x402dc
  3b7e1c: 4603         	mov	r3, r0
  3b7e1e: 4618         	mov	r0, r3
  3b7e20: f07b ff3e    	bl	0x433ca0 <NetworkManagerBridge::startReachability()> @ imm = #0x7be7c
  3b7e24: 9b03         	ldr	r3, [sp, #0xc]
  3b7e26: 2200         	movs	r2, #0x0
  3b7e28: f883 213d    	strb.w	r2, [r3, #0x13d]
  3b7e2c: 9b03         	ldr	r3, [sp, #0xc]
  3b7e2e: f04f 0200    	mov.w	r2, #0x0
  3b7e32: f8c3 2140    	str.w	r2, [r3, #0x140]
  3b7e36: 9b03         	ldr	r3, [sp, #0xc]
  3b7e38: 4a1f         	ldr	r2, [pc, #0x7c]         @ 0x3b7eb8 <PurchaseLayer::init()+0xa68>
  3b7e3a: 58a2         	ldr	r2, [r4, r2]
  3b7e3c: 9224         	str	r2, [sp, #0x90]
  3b7e3e: 2200         	movs	r2, #0x0
  3b7e40: 9225         	str	r2, [sp, #0x94]
  3b7e42: 4618         	mov	r0, r3
  3b7e44: ab24         	add	r3, sp, #0x90
  3b7e46: e893 0006    	ldm.w	r3, {r1, r2}
  3b7e4a: f64c 43cd    	movw	r3, #0xcccd
  3b7e4e: f6c3 53cc    	movt	r3, #0x3dcc
  3b7e52: f1d9 f9e7    	bl	0x591224 <cocos2d::CCNode::schedule(void (cocos2d::CCObject::*)(float), float)> @ imm = #0x1d93ce
  3b7e56: 2301         	movs	r3, #0x1
  3b7e58: e020         	b	0x3b7e9c <PurchaseLayer::init()+0xa4c> @ imm = #0x40
  3b7e5a: ab06         	add	r3, sp, #0x18
  3b7e5c: 4618         	mov	r0, r3
  3b7e5e: f3fd fd59    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3fdab2
  3b7e62: e7ff         	b	0x3b7e64 <PurchaseLayer::init()+0xa14> @ imm = #-0x2
  3b7e64: ab05         	add	r3, sp, #0x14
  3b7e66: 4618         	mov	r0, r3
  3b7e68: f3d2 fac8    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3d2590
  3b7e6c: f3d0 f91e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3d023c
  3b7e70: ab06         	add	r3, sp, #0x18
  3b7e72: 4618         	mov	r0, r3
  3b7e74: f3fd fd4e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3fda9c
  3b7e78: e7ff         	b	0x3b7e7a <PurchaseLayer::init()+0xa2a> @ imm = #-0x2
  3b7e7a: ab05         	add	r3, sp, #0x14
  3b7e7c: 4618         	mov	r0, r3
  3b7e7e: f3d2 fabd    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3d257a
  3b7e82: f3d0 f913    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3d0226
  3b7e86: ab06         	add	r3, sp, #0x18
  3b7e88: 4618         	mov	r0, r3
  3b7e8a: f3fd fd43    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3fda86
  3b7e8e: e7ff         	b	0x3b7e90 <PurchaseLayer::init()+0xa40> @ imm = #-0x2
  3b7e90: ab05         	add	r3, sp, #0x14
  3b7e92: 4618         	mov	r0, r3
  3b7e94: f3d2 fab2    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3d2564
  3b7e98: f3d0 f908    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3d0210
  3b7e9c: 4618         	mov	r0, r3
  3b7e9e: b029         	add	sp, #0xa4
  3b7ea0: ecbd 8b02    	vpop	{d8}
  3b7ea4: bdf0         	pop	{r4, r5, r6, r7, pc}
  3b7ea6: bf00         	nop
  3b7eb0: c73a         	stm	r7!, {r1, r3, r4, r5}
  3b7eb2: 0041         	lsls	r1, r0, #0x1
  3b7eb4: c738         	stm	r7!, {r3, r4, r5}
  3b7eb6: 0041         	lsls	r1, r0, #0x1
  3b7eb8: de20         	udf	#0x20
  3b7eba: ffff f3af    	<unknown>

// ==== PurchaseLayer::~PurchaseLayer
//      file offset 0x3b7ec0 (= ELF address; Ghidra 0x3c7ec0), 204 bytes, Thumb-2
  3b7ec0: b500         	push	{lr}
  3b7ec2: b083         	sub	sp, #0xc
  3b7ec4: 9001         	str	r0, [sp, #0x4]
  3b7ec6: 4b2f         	ldr	r3, [pc, #0xbc]         @ 0x3b7f84 <PurchaseLayer::~PurchaseLayer()+0xc4>
  3b7ec8: 447b         	add	r3, pc
  3b7eca: 9a01         	ldr	r2, [sp, #0x4]
  3b7ecc: 492e         	ldr	r1, [pc, #0xb8]         @ 0x3b7f88 <PurchaseLayer::~PurchaseLayer()+0xc8>
  3b7ece: 5859         	ldr	r1, [r3, r1]
  3b7ed0: 3108         	adds	r1, #0x8
  3b7ed2: 6011         	str	r1, [r2]
  3b7ed4: 9a01         	ldr	r2, [sp, #0x4]
  3b7ed6: 492c         	ldr	r1, [pc, #0xb0]         @ 0x3b7f88 <PurchaseLayer::~PurchaseLayer()+0xc8>
  3b7ed8: 5859         	ldr	r1, [r3, r1]
  3b7eda: f501 7104    	add.w	r1, r1, #0x210
  3b7ede: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  3b7ee2: 9a01         	ldr	r2, [sp, #0x4]
  3b7ee4: 4928         	ldr	r1, [pc, #0xa0]         @ 0x3b7f88 <PurchaseLayer::~PurchaseLayer()+0xc8>
  3b7ee6: 5859         	ldr	r1, [r3, r1]
  3b7ee8: f501 7110    	add.w	r1, r1, #0x240
  3b7eec: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  3b7ef0: 9a01         	ldr	r2, [sp, #0x4]
  3b7ef2: 4925         	ldr	r1, [pc, #0x94]         @ 0x3b7f88 <PurchaseLayer::~PurchaseLayer()+0xc8>
  3b7ef4: 585b         	ldr	r3, [r3, r1]
  3b7ef6: f503 7313    	add.w	r3, r3, #0x24c
  3b7efa: f8c2 30ec    	str.w	r3, [r2, #0xec]
  3b7efe: 9b01         	ldr	r3, [sp, #0x4]
  3b7f00: 4618         	mov	r0, r3
  3b7f02: f1d8 fb93    	bl	0x59062c <cocos2d::CCNode::removeAllChildren()> @ imm = #0x1d8726
  3b7f06: f7bf fe1b    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x403ca
  3b7f0a: 4603         	mov	r3, r0
  3b7f0c: 4618         	mov	r0, r3
  3b7f0e: f07b fecb    	bl	0x433ca8 <NetworkManagerBridge::stopReachability()> @ imm = #0x7bd96
  3b7f12: 9b01         	ldr	r3, [sp, #0x4]
  3b7f14: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3b7f18: 4618         	mov	r0, r3
  3b7f1a: f1df ffcd    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1dff9a
  3b7f1e: 9b01         	ldr	r3, [sp, #0x4]
  3b7f20: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3b7f24: 4618         	mov	r0, r3
  3b7f26: f1df ffc7    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1dff8e
  3b7f2a: 9b01         	ldr	r3, [sp, #0x4]
  3b7f2c: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3b7f30: 4618         	mov	r0, r3
  3b7f32: f1df ffc1    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1dff82
  3b7f36: 9b01         	ldr	r3, [sp, #0x4]
  3b7f38: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3b7f3c: 4618         	mov	r0, r3
  3b7f3e: f1df ffbb    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1dff76
  3b7f42: 9b01         	ldr	r3, [sp, #0x4]
  3b7f44: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3b7f48: 4618         	mov	r0, r3
  3b7f4a: f1df ffb5    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1dff6a
  3b7f4e: 9b01         	ldr	r3, [sp, #0x4]
  3b7f50: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  3b7f54: 4618         	mov	r0, r3
  3b7f56: f1df ffaf    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1dff5e
  3b7f5a: 9b01         	ldr	r3, [sp, #0x4]
  3b7f5c: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  3b7f60: 4618         	mov	r0, r3
  3b7f62: f1df ffa9    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1dff52
  3b7f66: 9b01         	ldr	r3, [sp, #0x4]
  3b7f68: 4618         	mov	r0, r3
  3b7f6a: f1f5 f8ef    	bl	0x5ad14c <cocos2d::CCLayer::~CCLayer()> @ imm = #0x1f51de
  3b7f6e: 2300         	movs	r3, #0x0
  3b7f70: 2b00         	cmp	r3, #0x0
  3b7f72: d002         	beq	0x3b7f7a <PurchaseLayer::~PurchaseLayer()+0xba> @ imm = #0x4
  3b7f74: 9801         	ldr	r0, [sp, #0x4]
  3b7f76: f3d0 f895    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3d012a
  3b7f7a: 9b01         	ldr	r3, [sp, #0x4]
  3b7f7c: 4618         	mov	r0, r3
  3b7f7e: b003         	add	sp, #0xc
  3b7f80: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3b7f83); words below are literal-pool data ---
  3b7f84: ab40         	add	r3, sp, #0x100
  3b7f86: 0057         	lsls	r7, r2, #0x1
  3b7f88: de10         	udf	#0x10
  3b7f8a: ffff f1a0    	<unknown>

// ==== PurchaseLayer::~PurchaseLayer
//      file offset 0x3b7f8c (= ELF address; Ghidra 0x3c7f8c), 8 bytes, Thumb-2
  3b7f8c: f1a0 00e4    	sub.w	r0, r0, #0xe4
  3b7f90: f7ff bf96    	b.w	0x3b7ec0 <PurchaseLayer::~PurchaseLayer()> @ imm = #-0xd4

// ==== PurchaseLayer::~PurchaseLayer
//      file offset 0x3b7f94 (= ELF address; Ghidra 0x3c7f94), 28 bytes, Thumb-2
  3b7f94: b500         	push	{lr}
  3b7f96: b083         	sub	sp, #0xc
  3b7f98: 9001         	str	r0, [sp, #0x4]
  3b7f9a: 9801         	ldr	r0, [sp, #0x4]
  3b7f9c: f7ff ff90    	bl	0x3b7ec0 <PurchaseLayer::~PurchaseLayer()> @ imm = #-0xe0
  3b7fa0: 9801         	ldr	r0, [sp, #0x4]
  3b7fa2: f3d0 f87f    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3d00fe
  3b7fa6: 9b01         	ldr	r3, [sp, #0x4]
  3b7fa8: 4618         	mov	r0, r3
  3b7faa: b003         	add	sp, #0xc
  3b7fac: f85d fb04    	ldr	pc, [sp], #4

// ==== PurchaseLayer::~PurchaseLayer
//      file offset 0x3b7fb0 (= ELF address; Ghidra 0x3c7fb0), 8 bytes, Thumb-2
  3b7fb0: f1a0 00e4    	sub.w	r0, r0, #0xe4
  3b7fb4: f7ff bfee    	b.w	0x3b7f94 <PurchaseLayer::~PurchaseLayer()> @ imm = #-0x24

// ==== PurchaseLayer::onEnter
//      file offset 0x3b7fb8 (= ELF address; Ghidra 0x3c7fb8), 50 bytes, Thumb-2
  3b7fb8: b500         	push	{lr}
  3b7fba: b083         	sub	sp, #0xc
  3b7fbc: 9001         	str	r0, [sp, #0x4]
  3b7fbe: 9b01         	ldr	r3, [sp, #0x4]
  3b7fc0: 4618         	mov	r0, r3
  3b7fc2: f1f5 fc4b    	bl	0x5ad85c <cocos2d::CCLayer::onEnter()> @ imm = #0x1f5896
  3b7fc6: f074 fc5d    	bl	0x42c884 <ApplicationInterface::requiresClaimedIdentity()> @ imm = #0x748ba
  3b7fca: 4603         	mov	r3, r0
  3b7fcc: 2b00         	cmp	r3, #0x0
  3b7fce: d009         	beq	0x3b7fe4 <PurchaseLayer::onEnter()+0x2c> @ imm = #0x12
  3b7fd0: f06a fa2e    	bl	0x422430 <ApplicationInterface::hasClaimedIdentity()> @ imm = #0x6a45c
  3b7fd4: 4603         	mov	r3, r0
  3b7fd6: f083 0301    	eor	r3, r3, #0x1
  3b7fda: b2db         	uxtb	r3, r3
  3b7fdc: 2b00         	cmp	r3, #0x0
  3b7fde: d001         	beq	0x3b7fe4 <PurchaseLayer::onEnter()+0x2c> @ imm = #0x2
  3b7fe0: f074 fc22    	bl	0x42c828 <ApplicationInterface::pickClaimedIdentity()> @ imm = #0x74844
  3b7fe4: b003         	add	sp, #0xc
  3b7fe6: f85d fb04    	ldr	pc, [sp], #4

// ==== PurchaseLayer::onExit
//      file offset 0x3b7fec (= ELF address; Ghidra 0x3c7fec), 56 bytes, Thumb-2
  3b7fec: b500         	push	{lr}
  3b7fee: b085         	sub	sp, #0x14
  3b7ff0: 9001         	str	r0, [sp, #0x4]
  3b7ff2: 490a         	ldr	r1, [pc, #0x28]         @ 0x3b801c <PurchaseLayer::onExit()+0x30>
  3b7ff4: 4479         	add	r1, pc
  3b7ff6: 9b01         	ldr	r3, [sp, #0x4]
  3b7ff8: 4a09         	ldr	r2, [pc, #0x24]         @ 0x3b8020 <PurchaseLayer::onExit()+0x34>
  3b7ffa: 588a         	ldr	r2, [r1, r2]
  3b7ffc: 9202         	str	r2, [sp, #0x8]
  3b7ffe: 2200         	movs	r2, #0x0
  3b8000: 9203         	str	r2, [sp, #0xc]
  3b8002: 4618         	mov	r0, r3
  3b8004: ab02         	add	r3, sp, #0x8
  3b8006: e893 0006    	ldm.w	r3, {r1, r2}
  3b800a: f1d9 f959    	bl	0x5912c0 <cocos2d::CCNode::unschedule(void (cocos2d::CCObject::*)(float))> @ imm = #0x1d92b2
  3b800e: 9b01         	ldr	r3, [sp, #0x4]
  3b8010: 4618         	mov	r0, r3
  3b8012: f1f5 fc61    	bl	0x5ad8d8 <cocos2d::CCLayer::onExit()> @ imm = #0x1f58c2
  3b8016: b005         	add	sp, #0x14
  3b8018: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3b801b); words below are literal-pool data ---
  3b801c: aa14         	add	r2, sp, #0x50
  3b801e: 0057         	lsls	r7, r2, #0x1
  3b8020: de20         	udf	#0x20
  3b8022: ffff 0000    	<unknown>

// ==== PurchaseLayer::updateStep
//      file offset 0x3b8028 (= ELF address; Ghidra 0x3c8028), 1208 bytes, Thumb-2
  3b8028: b570         	push	{r4, r5, r6, lr}
  3b802a: ed2d 8b02    	vpush	{d8}
  3b802e: b092         	sub	sp, #0x48
  3b8030: 9001         	str	r0, [sp, #0x4]
  3b8032: 9100         	str	r1, [sp]
  3b8034: 9b01         	ldr	r3, [sp, #0x4]
  3b8036: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3b803a: 681b         	ldr	r3, [r3]
  3b803c: 3390         	adds	r3, #0x90
  3b803e: 681b         	ldr	r3, [r3]
  3b8040: 9a01         	ldr	r2, [sp, #0x4]
  3b8042: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  3b8046: 4610         	mov	r0, r2
  3b8048: 2101         	movs	r1, #0x1
  3b804a: 4798         	blx	r3
  3b804c: 9b01         	ldr	r3, [sp, #0x4]
  3b804e: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3b8052: 681b         	ldr	r3, [r3]
  3b8054: 3390         	adds	r3, #0x90
  3b8056: 681b         	ldr	r3, [r3]
  3b8058: 9a01         	ldr	r2, [sp, #0x4]
  3b805a: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  3b805e: 4610         	mov	r0, r2
  3b8060: 2101         	movs	r1, #0x1
  3b8062: 4798         	blx	r3
  3b8064: 9b01         	ldr	r3, [sp, #0x4]
  3b8066: f893 3109    	ldrb.w	r3, [r3, #0x109]
  3b806a: f083 0301    	eor	r3, r3, #0x1
  3b806e: b2db         	uxtb	r3, r3
  3b8070: 2b00         	cmp	r3, #0x0
  3b8072: d041         	beq	0x3b80f8 <PurchaseLayer::updateStep(float)+0xd0> @ imm = #0x82
  3b8074: ab08         	add	r3, sp, #0x20
  3b8076: 4618         	mov	r0, r3
  3b8078: f3d2 f9bc    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3d2378
  3b807c: aa0e         	add	r2, sp, #0x38
  3b807e: ab08         	add	r3, sp, #0x20
  3b8080: 4610         	mov	r0, r2
  3b8082: f8df 243c    	ldr.w	r2, [pc, #0x43c]        @ 0x3b84c0 <PurchaseLayer::updateStep(float)+0x498>
  3b8086: 447a         	add	r2, pc
  3b8088: 4611         	mov	r1, r2
  3b808a: 461a         	mov	r2, r3
  3b808c: f3fe fce8    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3fe9d0
  3b8090: aa0a         	add	r2, sp, #0x28
  3b8092: ab0e         	add	r3, sp, #0x38
  3b8094: 4610         	mov	r0, r2
  3b8096: 4619         	mov	r1, r3
  3b8098: f079 fd54    	bl	0x431b44 <InAppPurchaseBridge::getProductPrice(std::string)> @ imm = #0x79aa8
  3b809c: ab0e         	add	r3, sp, #0x38
  3b809e: 4618         	mov	r0, r3
  3b80a0: f3fd fc38    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3fd870
  3b80a4: ab08         	add	r3, sp, #0x20
  3b80a6: 4618         	mov	r0, r3
  3b80a8: f3d2 f9a8    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3d2350
  3b80ac: ab0a         	add	r3, sp, #0x28
  3b80ae: 4618         	mov	r0, r3
  3b80b0: f3fc ffd4    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x3fcfa8
  3b80b4: 4603         	mov	r3, r0
  3b80b6: 2b00         	cmp	r3, #0x0
  3b80b8: bf0c         	ite	eq
  3b80ba: 2300         	moveq	r3, #0x0
  3b80bc: 2301         	movne	r3, #0x1
  3b80be: b2db         	uxtb	r3, r3
  3b80c0: 2b00         	cmp	r3, #0x0
  3b80c2: d015         	beq	0x3b80f0 <PurchaseLayer::updateStep(float)+0xc8> @ imm = #0x2a
  3b80c4: 9b01         	ldr	r3, [sp, #0x4]
  3b80c6: 2201         	movs	r2, #0x1
  3b80c8: f883 2109    	strb.w	r2, [r3, #0x109]
  3b80cc: 9b01         	ldr	r3, [sp, #0x4]
  3b80ce: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  3b80d2: 681b         	ldr	r3, [r3]
  3b80d4: f503 730f    	add.w	r3, r3, #0x23c
  3b80d8: 681c         	ldr	r4, [r3]
  3b80da: 9b01         	ldr	r3, [sp, #0x4]
  3b80dc: f8d3 5130    	ldr.w	r5, [r3, #0x130]
  3b80e0: ab0a         	add	r3, sp, #0x28
  3b80e2: 4618         	mov	r0, r3
  3b80e4: f3fd f90c    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3fd218
  3b80e8: 4603         	mov	r3, r0
  3b80ea: 4628         	mov	r0, r5
  3b80ec: 4619         	mov	r1, r3
  3b80ee: 47a0         	blx	r4
  3b80f0: ab0a         	add	r3, sp, #0x28
  3b80f2: 4618         	mov	r0, r3
  3b80f4: f3fd fc0e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3fd81c
  3b80f8: ab0a         	add	r3, sp, #0x28
  3b80fa: 4618         	mov	r0, r3
  3b80fc: f3d2 f97a    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3d22f4
  3b8100: aa0e         	add	r2, sp, #0x38
  3b8102: ab0a         	add	r3, sp, #0x28
  3b8104: 4610         	mov	r0, r2
  3b8106: 4aef         	ldr	r2, [pc, #0x3bc]        @ 0x3b84c4 <PurchaseLayer::updateStep(float)+0x49c>
  3b8108: 447a         	add	r2, pc
  3b810a: 4611         	mov	r1, r2
  3b810c: 461a         	mov	r2, r3
  3b810e: f3fe fca7    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3fe94e
  3b8112: ab0e         	add	r3, sp, #0x38
  3b8114: 4618         	mov	r0, r3
  3b8116: f079 fb23    	bl	0x431760 <InAppPurchaseBridge::isProductPurchased(std::string)> @ imm = #0x79646
  3b811a: 4603         	mov	r3, r0
  3b811c: 461c         	mov	r4, r3
  3b811e: ab0e         	add	r3, sp, #0x38
  3b8120: 4618         	mov	r0, r3
  3b8122: f3fd fbf7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3fd7ee
  3b8126: ab0a         	add	r3, sp, #0x28
  3b8128: 4618         	mov	r0, r3
  3b812a: f3d2 f967    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3d22ce
  3b812e: 2c00         	cmp	r4, #0x0
  3b8130: d034         	beq	0x3b819c <PurchaseLayer::updateStep(float)+0x174> @ imm = #0x68
  3b8132: 9b01         	ldr	r3, [sp, #0x4]
  3b8134: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3b8138: 681b         	ldr	r3, [r3]
  3b813a: 3390         	adds	r3, #0x90
  3b813c: 681b         	ldr	r3, [r3]
  3b813e: 9a01         	ldr	r2, [sp, #0x4]
  3b8140: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  3b8144: 4610         	mov	r0, r2
  3b8146: 2100         	movs	r1, #0x0
  3b8148: 4798         	blx	r3
  3b814a: 9b01         	ldr	r3, [sp, #0x4]
  3b814c: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3b8150: 681b         	ldr	r3, [r3]
  3b8152: 3390         	adds	r3, #0x90
  3b8154: 681b         	ldr	r3, [r3]
  3b8156: 9a01         	ldr	r2, [sp, #0x4]
  3b8158: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  3b815c: 4610         	mov	r0, r2
  3b815e: 2100         	movs	r1, #0x0
  3b8160: 4798         	blx	r3
  3b8162: 9b01         	ldr	r3, [sp, #0x4]
  3b8164: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3b8168: 681b         	ldr	r3, [r3]
  3b816a: f503 73fc    	add.w	r3, r3, #0x1f8
  3b816e: 681b         	ldr	r3, [r3]
  3b8170: 9a01         	ldr	r2, [sp, #0x4]
  3b8172: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3b8176: 4610         	mov	r0, r2
  3b8178: 4ad3         	ldr	r2, [pc, #0x34c]        @ 0x3b84c8 <PurchaseLayer::updateStep(float)+0x4a0>
  3b817a: 447a         	add	r2, pc
  3b817c: 4611         	mov	r1, r2
  3b817e: 4798         	blx	r3
  3b8180: 9b01         	ldr	r3, [sp, #0x4]
  3b8182: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3b8186: 681b         	ldr	r3, [r3]
  3b8188: f503 73d2    	add.w	r3, r3, #0x1a4
  3b818c: 681b         	ldr	r3, [r3]
  3b818e: 9a01         	ldr	r2, [sp, #0x4]
  3b8190: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3b8194: 4610         	mov	r0, r2
  3b8196: 2164         	movs	r1, #0x64
  3b8198: 4798         	blx	r3
  3b819a: e0c3         	b	0x3b8324 <PurchaseLayer::updateStep(float)+0x2fc> @ imm = #0x186
  3b819c: f079 fb02    	bl	0x4317a4 <InAppPurchaseBridge::readyToSignIn()> @ imm = #0x79604
  3b81a0: 4603         	mov	r3, r0
  3b81a2: 2b00         	cmp	r3, #0x0
  3b81a4: d05b         	beq	0x3b825e <PurchaseLayer::updateStep(float)+0x236> @ imm = #0xb6
  3b81a6: 9b01         	ldr	r3, [sp, #0x4]
  3b81a8: f893 313d    	ldrb.w	r3, [r3, #0x13d]
  3b81ac: 2b00         	cmp	r3, #0x0
  3b81ae: d030         	beq	0x3b8212 <PurchaseLayer::updateStep(float)+0x1ea> @ imm = #0x60
  3b81b0: 9b01         	ldr	r3, [sp, #0x4]
  3b81b2: ed93 7a50    	vldr	s14, [r3, #320]
  3b81b6: eef2 7a04    	vmov.f32	s15, #1.000000e+01
  3b81ba: eeb4 7ae7    	vcmpe.f32	s14, s15
  3b81be: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3b81c2: d526         	bpl	0x3b8212 <PurchaseLayer::updateStep(float)+0x1ea> @ imm = #0x4c
  3b81c4: 9b01         	ldr	r3, [sp, #0x4]
  3b81c6: ed93 7a50    	vldr	s14, [r3, #320]
  3b81ca: eddd 7a00    	vldr	s15, [sp]
  3b81ce: ee77 7a27    	vadd.f32	s15, s14, s15
  3b81d2: 9b01         	ldr	r3, [sp, #0x4]
  3b81d4: edc3 7a50    	vstr	s15, [r3, #320]
  3b81d8: 9b01         	ldr	r3, [sp, #0x4]
  3b81da: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3b81de: 681b         	ldr	r3, [r3]
  3b81e0: f503 73fc    	add.w	r3, r3, #0x1f8
  3b81e4: 681b         	ldr	r3, [r3]
  3b81e6: 9a01         	ldr	r2, [sp, #0x4]
  3b81e8: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3b81ec: 4610         	mov	r0, r2
  3b81ee: 4ab7         	ldr	r2, [pc, #0x2dc]        @ 0x3b84cc <PurchaseLayer::updateStep(float)+0x4a4>
  3b81f0: 447a         	add	r2, pc
  3b81f2: 4611         	mov	r1, r2
  3b81f4: 4798         	blx	r3
  3b81f6: 9b01         	ldr	r3, [sp, #0x4]
  3b81f8: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3b81fc: 681b         	ldr	r3, [r3]
  3b81fe: f503 73d2    	add.w	r3, r3, #0x1a4
  3b8202: 681b         	ldr	r3, [r3]
  3b8204: 9a01         	ldr	r2, [sp, #0x4]
  3b8206: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3b820a: 4610         	mov	r0, r2
  3b820c: 2164         	movs	r1, #0x64
  3b820e: 4798         	blx	r3
  3b8210: e088         	b	0x3b8324 <PurchaseLayer::updateStep(float)+0x2fc> @ imm = #0x110
  3b8212: 9b01         	ldr	r3, [sp, #0x4]
  3b8214: 2200         	movs	r2, #0x0
  3b8216: f883 213d    	strb.w	r2, [r3, #0x13d]
  3b821a: 9b01         	ldr	r3, [sp, #0x4]
  3b821c: f04f 0200    	mov.w	r2, #0x0
  3b8220: f8c3 2140    	str.w	r2, [r3, #0x140]
  3b8224: 9b01         	ldr	r3, [sp, #0x4]
  3b8226: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3b822a: 681b         	ldr	r3, [r3]
  3b822c: f503 73fc    	add.w	r3, r3, #0x1f8
  3b8230: 681b         	ldr	r3, [r3]
  3b8232: 9a01         	ldr	r2, [sp, #0x4]
  3b8234: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3b8238: 4610         	mov	r0, r2
  3b823a: 4aa5         	ldr	r2, [pc, #0x294]        @ 0x3b84d0 <PurchaseLayer::updateStep(float)+0x4a8>
  3b823c: 447a         	add	r2, pc
  3b823e: 4611         	mov	r1, r2
  3b8240: 4798         	blx	r3
  3b8242: 9b01         	ldr	r3, [sp, #0x4]
  3b8244: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3b8248: 681b         	ldr	r3, [r3]
  3b824a: f503 73d2    	add.w	r3, r3, #0x1a4
  3b824e: 681b         	ldr	r3, [r3]
  3b8250: 9a01         	ldr	r2, [sp, #0x4]
  3b8252: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3b8256: 4610         	mov	r0, r2
  3b8258: 21ff         	movs	r1, #0xff
  3b825a: 4798         	blx	r3
  3b825c: e062         	b	0x3b8324 <PurchaseLayer::updateStep(float)+0x2fc> @ imm = #0xc4
  3b825e: f079 faa7    	bl	0x4317b0 <InAppPurchaseBridge::readyToPurchase()> @ imm = #0x7954e
  3b8262: 4603         	mov	r3, r0
  3b8264: f083 0301    	eor	r3, r3, #0x1
  3b8268: b2db         	uxtb	r3, r3
  3b826a: 2b00         	cmp	r3, #0x0
  3b826c: d01c         	beq	0x3b82a8 <PurchaseLayer::updateStep(float)+0x280> @ imm = #0x38
  3b826e: 9b01         	ldr	r3, [sp, #0x4]
  3b8270: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3b8274: 681b         	ldr	r3, [r3]
  3b8276: f503 73fc    	add.w	r3, r3, #0x1f8
  3b827a: 681b         	ldr	r3, [r3]
  3b827c: 9a01         	ldr	r2, [sp, #0x4]
  3b827e: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3b8282: 4610         	mov	r0, r2
  3b8284: 4a93         	ldr	r2, [pc, #0x24c]        @ 0x3b84d4 <PurchaseLayer::updateStep(float)+0x4ac>
  3b8286: 447a         	add	r2, pc
  3b8288: 4611         	mov	r1, r2
  3b828a: 4798         	blx	r3
  3b828c: 9b01         	ldr	r3, [sp, #0x4]
  3b828e: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3b8292: 681b         	ldr	r3, [r3]
  3b8294: f503 73d2    	add.w	r3, r3, #0x1a4
  3b8298: 681b         	ldr	r3, [r3]
  3b829a: 9a01         	ldr	r2, [sp, #0x4]
  3b829c: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3b82a0: 4610         	mov	r0, r2
  3b82a2: 2164         	movs	r1, #0x64
  3b82a4: 4798         	blx	r3
  3b82a6: e03d         	b	0x3b8324 <PurchaseLayer::updateStep(float)+0x2fc> @ imm = #0x7a
  3b82a8: f079 fac8    	bl	0x43183c <InAppPurchaseBridge::hasPendingTransactions()> @ imm = #0x79590
  3b82ac: 4603         	mov	r3, r0
  3b82ae: 2b00         	cmp	r3, #0x0
  3b82b0: d01c         	beq	0x3b82ec <PurchaseLayer::updateStep(float)+0x2c4> @ imm = #0x38
  3b82b2: 9b01         	ldr	r3, [sp, #0x4]
  3b82b4: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3b82b8: 681b         	ldr	r3, [r3]
  3b82ba: f503 73fc    	add.w	r3, r3, #0x1f8
  3b82be: 681b         	ldr	r3, [r3]
  3b82c0: 9a01         	ldr	r2, [sp, #0x4]
  3b82c2: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3b82c6: 4610         	mov	r0, r2
  3b82c8: 4a83         	ldr	r2, [pc, #0x20c]        @ 0x3b84d8 <PurchaseLayer::updateStep(float)+0x4b0>
  3b82ca: 447a         	add	r2, pc
  3b82cc: 4611         	mov	r1, r2
  3b82ce: 4798         	blx	r3
  3b82d0: 9b01         	ldr	r3, [sp, #0x4]
  3b82d2: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3b82d6: 681b         	ldr	r3, [r3]
  3b82d8: f503 73d2    	add.w	r3, r3, #0x1a4
  3b82dc: 681b         	ldr	r3, [r3]
  3b82de: 9a01         	ldr	r2, [sp, #0x4]
  3b82e0: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3b82e4: 4610         	mov	r0, r2
  3b82e6: 2164         	movs	r1, #0x64
  3b82e8: 4798         	blx	r3
  3b82ea: e01b         	b	0x3b8324 <PurchaseLayer::updateStep(float)+0x2fc> @ imm = #0x36
  3b82ec: 9b01         	ldr	r3, [sp, #0x4]
  3b82ee: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3b82f2: 681b         	ldr	r3, [r3]
  3b82f4: f503 73fc    	add.w	r3, r3, #0x1f8
  3b82f8: 681b         	ldr	r3, [r3]
  3b82fa: 9a01         	ldr	r2, [sp, #0x4]
  3b82fc: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3b8300: 4610         	mov	r0, r2
  3b8302: 4a76         	ldr	r2, [pc, #0x1d8]        @ 0x3b84dc <PurchaseLayer::updateStep(float)+0x4b4>
  3b8304: 447a         	add	r2, pc
  3b8306: 4611         	mov	r1, r2
  3b8308: 4798         	blx	r3
  3b830a: 9b01         	ldr	r3, [sp, #0x4]
  3b830c: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3b8310: 681b         	ldr	r3, [r3]
  3b8312: f503 73d2    	add.w	r3, r3, #0x1a4
  3b8316: 681b         	ldr	r3, [r3]
  3b8318: 9a01         	ldr	r2, [sp, #0x4]
  3b831a: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3b831e: 4610         	mov	r0, r2
  3b8320: 21ff         	movs	r1, #0xff
  3b8322: 4798         	blx	r3
  3b8324: 9b01         	ldr	r3, [sp, #0x4]
  3b8326: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3b832a: 681b         	ldr	r3, [r3]
  3b832c: 334c         	adds	r3, #0x4c
  3b832e: 681c         	ldr	r4, [r3]
  3b8330: 9b01         	ldr	r3, [sp, #0x4]
  3b8332: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3b8336: 461d         	mov	r5, r3
  3b8338: 9b01         	ldr	r3, [sp, #0x4]
  3b833a: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3b833e: 681b         	ldr	r3, [r3]
  3b8340: 3350         	adds	r3, #0x50
  3b8342: 681b         	ldr	r3, [r3]
  3b8344: 9a01         	ldr	r2, [sp, #0x4]
  3b8346: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  3b834a: 4610         	mov	r0, r2
  3b834c: 4798         	blx	r3
  3b834e: 4603         	mov	r3, r0
  3b8350: 681e         	ldr	r6, [r3]
  3b8352: 9b01         	ldr	r3, [sp, #0x4]
  3b8354: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3b8358: 681b         	ldr	r3, [r3]
  3b835a: 3350         	adds	r3, #0x50
  3b835c: 681b         	ldr	r3, [r3]
  3b835e: 9a01         	ldr	r2, [sp, #0x4]
  3b8360: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  3b8364: 4610         	mov	r0, r2
  3b8366: 4798         	blx	r3
  3b8368: 4603         	mov	r3, r0
  3b836a: 685b         	ldr	r3, [r3, #0x4]
  3b836c: aa04         	add	r2, sp, #0x10
  3b836e: 4610         	mov	r0, r2
  3b8370: 4631         	mov	r1, r6
  3b8372: 461a         	mov	r2, r3
  3b8374: f1da fcbc    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1da978
  3b8378: 9b01         	ldr	r3, [sp, #0x4]
  3b837a: edd3 7a45    	vldr	s15, [r3, #276]
  3b837e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3b8382: ab0a         	add	r3, sp, #0x28
  3b8384: 4618         	mov	r0, r3
  3b8386: ed9f 0b4c    	vldr	d0, [pc, #304]          @ 0x3b84b8 <PurchaseLayer::updateStep(float)+0x490>
  3b838a: eeb0 1b47    	vmov.f64	d1, d7
  3b838e: f7fe f923    	bl	0x3b65d8 <ProxyMine::removeMine(bool)+0x350> @ imm = #-0x1dba
  3b8392: ed9d 8b0a    	vldr	d8, [sp, #40]
  3b8396: 9b01         	ldr	r3, [sp, #0x4]
  3b8398: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3b839c: 681b         	ldr	r3, [r3]
  3b839e: f503 73fe    	add.w	r3, r3, #0x1fc
  3b83a2: 681b         	ldr	r3, [r3]
  3b83a4: 9a01         	ldr	r2, [sp, #0x4]
  3b83a6: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3b83aa: 4610         	mov	r0, r2
  3b83ac: 4798         	blx	r3
  3b83ae: 4606         	mov	r6, r0
  3b83b0: ab02         	add	r3, sp, #0x8
  3b83b2: 4618         	mov	r0, r3
  3b83b4: f3d2 f81e    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3d203c
  3b83b8: aa03         	add	r2, sp, #0xc
  3b83ba: ab02         	add	r3, sp, #0x8
  3b83bc: 4610         	mov	r0, r2
  3b83be: 4631         	mov	r1, r6
  3b83c0: 461a         	mov	r2, r3
  3b83c2: f3fe fb4d    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3fe69a
  3b83c6: ab03         	add	r3, sp, #0xc
  3b83c8: 4618         	mov	r0, r3
  3b83ca: f3fc fe47    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x3fcc8e
  3b83ce: 4603         	mov	r3, r0
  3b83d0: ee07 3a90    	vmov	s15, r3
  3b83d4: eeb8 7a67    	vcvt.f32.u32	s14, s15
  3b83d8: 9b01         	ldr	r3, [sp, #0x4]
  3b83da: edd3 7a44    	vldr	s15, [r3, #272]
  3b83de: ee27 7a27    	vmul.f32	s14, s14, s15
  3b83e2: 9b01         	ldr	r3, [sp, #0x4]
  3b83e4: edd3 7a43    	vldr	s15, [r3, #268]
  3b83e8: ee27 7a27    	vmul.f32	s14, s14, s15
  3b83ec: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3b83f0: eec7 7a27    	vdiv.f32	s15, s14, s15
  3b83f4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3b83f8: ee38 7b47    	vsub.f64	d7, d8, d7
  3b83fc: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3b8400: 9b01         	ldr	r3, [sp, #0x4]
  3b8402: edd3 7a45    	vldr	s15, [r3, #276]
  3b8406: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3b840a: ab0e         	add	r3, sp, #0x38
  3b840c: 4618         	mov	r0, r3
  3b840e: ed9f 0b2a    	vldr	d0, [pc, #168]          @ 0x3b84b8 <PurchaseLayer::updateStep(float)+0x490>
  3b8412: eeb0 1b47    	vmov.f64	d1, d7
  3b8416: f7fe f8df    	bl	0x3b65d8 <ProxyMine::removeMine(bool)+0x350> @ imm = #-0x1e42
  3b841a: ed9d 7b10    	vldr	d7, [sp, #64]
  3b841e: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3b8422: ab06         	add	r3, sp, #0x18
  3b8424: 4618         	mov	r0, r3
  3b8426: ee18 1a10    	vmov	r1, s16
  3b842a: ee17 2a90    	vmov	r2, s15
  3b842e: f1da fc5f    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1da8be
  3b8432: a908         	add	r1, sp, #0x20
  3b8434: aa04         	add	r2, sp, #0x10
  3b8436: ab06         	add	r3, sp, #0x18
  3b8438: 4608         	mov	r0, r1
  3b843a: 4611         	mov	r1, r2
  3b843c: 461a         	mov	r2, r3
  3b843e: f7fe f8bb    	bl	0x3b65b8 <ProxyMine::removeMine(bool)+0x330> @ imm = #-0x1e8a
  3b8442: ab08         	add	r3, sp, #0x20
  3b8444: 4628         	mov	r0, r5
  3b8446: 4619         	mov	r1, r3
  3b8448: 47a0         	blx	r4
  3b844a: ab03         	add	r3, sp, #0xc
  3b844c: 4618         	mov	r0, r3
  3b844e: f3fd fa61    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3fd4c2
  3b8452: ab02         	add	r3, sp, #0x8
  3b8454: 4618         	mov	r0, r3
  3b8456: f3d1 ffd1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3d1fa2
  3b845a: e026         	b	0x3b84aa <PurchaseLayer::updateStep(float)+0x482> @ imm = #0x4c
  3b845c: ab0e         	add	r3, sp, #0x38
  3b845e: 4618         	mov	r0, r3
  3b8460: f3fd fa58    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3fd4b0
  3b8464: e7ff         	b	0x3b8466 <PurchaseLayer::updateStep(float)+0x43e> @ imm = #-0x2
  3b8466: ab08         	add	r3, sp, #0x20
  3b8468: 4618         	mov	r0, r3
  3b846a: f3d1 ffc7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3d1f8e
  3b846e: f3cf fe1d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3cfc3a
  3b8472: ab0a         	add	r3, sp, #0x28
  3b8474: 4618         	mov	r0, r3
  3b8476: f3fd fa4d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3fd49a
  3b847a: f3cf fe17    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3cfc2e
  3b847e: ab0e         	add	r3, sp, #0x38
  3b8480: 4618         	mov	r0, r3
  3b8482: f3fd fa47    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3fd48e
  3b8486: e7ff         	b	0x3b8488 <PurchaseLayer::updateStep(float)+0x460> @ imm = #-0x2
  3b8488: ab0a         	add	r3, sp, #0x28
  3b848a: 4618         	mov	r0, r3
  3b848c: f3d1 ffb6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3d1f6c
  3b8490: f3cf fe0c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3cfc18
  3b8494: ab03         	add	r3, sp, #0xc
  3b8496: 4618         	mov	r0, r3
  3b8498: f3fd fa3c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3fd478
  3b849c: e7ff         	b	0x3b849e <PurchaseLayer::updateStep(float)+0x476> @ imm = #-0x2
  3b849e: ab02         	add	r3, sp, #0x8
  3b84a0: 4618         	mov	r0, r3
  3b84a2: f3d1 ffab    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3d1f56
  3b84a6: f3cf fe01    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3cfc02
  3b84aa: b012         	add	sp, #0x48
  3b84ac: ecbd 8b02    	vpop	{d8}
  3b84b0: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3b84b1); words below are literal-pool data ---
  3b84b2: bf00         	nop
  3b84b4: f3af 8000    	nop.w
  3b84c0: c40e         	stm	r4!, {r1, r2, r3}
  3b84c2: 0041         	lsls	r1, r0, #0x1
  3b84c4: c38c         	stm	r3!, {r2, r3, r7}
  3b84c6: 0041         	lsls	r1, r0, #0x1
  3b84c8: c336         	stm	r3!, {r1, r2, r4, r5}
  3b84ca: 0041         	lsls	r1, r0, #0x1
  3b84cc: c2cc         	stm	r2!, {r2, r3, r6, r7}
  3b84ce: 0041         	lsls	r1, r0, #0x1
  3b84d0: c228         	stm	r2!, {r3, r5}
  3b84d2: 0041         	lsls	r1, r0, #0x1
  3b84d4: c242         	stm	r2!, {r1, r6}
  3b84d6: 0041         	lsls	r1, r0, #0x1
  3b84d8: c20a         	stm	r2!, {r1, r3}
  3b84da: 0041         	lsls	r1, r0, #0x1
  3b84dc: c160         	stm	r1!, {r5, r6}
  3b84de: 0041         	lsls	r1, r0, #0x1

// ==== PurchaseLayer::checkCanConnectToStore
//      file offset 0x3b84e0 (= ELF address; Ghidra 0x3c84e0), 648 bytes, Thumb-2
  3b84e0: b510         	push	{r4, lr}
  3b84e2: b08a         	sub	sp, #0x28
  3b84e4: 9003         	str	r0, [sp, #0xc]
  3b84e6: 4c98         	ldr	r4, [pc, #0x260]        @ 0x3b8748 <PurchaseLayer::checkCanConnectToStore()+0x268>
  3b84e8: 447c         	add	r4, pc
  3b84ea: f7bf fb29    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x409ae
  3b84ee: 4603         	mov	r3, r0
  3b84f0: 4618         	mov	r0, r3
  3b84f2: f07b fbdd    	bl	0x433cb0 <NetworkManagerBridge::isInternetReachable()> @ imm = #0x7b7ba
  3b84f6: 4603         	mov	r3, r0
  3b84f8: f083 0301    	eor	r3, r3, #0x1
  3b84fc: b2db         	uxtb	r3, r3
  3b84fe: 2b00         	cmp	r3, #0x0
  3b8500: d059         	beq	0x3b85b6 <PurchaseLayer::checkCanConnectToStore()+0xd6> @ imm = #0xb2
  3b8502: 4b92         	ldr	r3, [pc, #0x248]        @ 0x3b874c <PurchaseLayer::checkCanConnectToStore()+0x26c>
  3b8504: 58e3         	ldr	r3, [r4, r3]
  3b8506: 681b         	ldr	r3, [r3]
  3b8508: 4618         	mov	r0, r3
  3b850a: 210e         	movs	r1, #0xe
  3b850c: f03f fc58    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x3f8b0
  3b8510: ab05         	add	r3, sp, #0x14
  3b8512: 4618         	mov	r0, r3
  3b8514: f3d1 ff6e    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3d1edc
  3b8518: aa08         	add	r2, sp, #0x20
  3b851a: ab05         	add	r3, sp, #0x14
  3b851c: 4610         	mov	r0, r2
  3b851e: 4a8c         	ldr	r2, [pc, #0x230]        @ 0x3b8750 <PurchaseLayer::checkCanConnectToStore()+0x270>
  3b8520: 447a         	add	r2, pc
  3b8522: 4611         	mov	r1, r2
  3b8524: 461a         	mov	r2, r3
  3b8526: f3fe fa9b    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3fe536
  3b852a: ab06         	add	r3, sp, #0x18
  3b852c: 4618         	mov	r0, r3
  3b852e: f3d1 ff61    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3d1ec2
  3b8532: aa09         	add	r2, sp, #0x24
  3b8534: ab06         	add	r3, sp, #0x18
  3b8536: 4610         	mov	r0, r2
  3b8538: 4a86         	ldr	r2, [pc, #0x218]        @ 0x3b8754 <PurchaseLayer::checkCanConnectToStore()+0x274>
  3b853a: 447a         	add	r2, pc
  3b853c: 4611         	mov	r1, r2
  3b853e: 461a         	mov	r2, r3
  3b8540: f3fe fa8e    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3fe51c
  3b8544: ab04         	add	r3, sp, #0x10
  3b8546: 4618         	mov	r0, r3
  3b8548: f3d1 ff54    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3d1ea8
  3b854c: aa07         	add	r2, sp, #0x1c
  3b854e: ab04         	add	r3, sp, #0x10
  3b8550: 4610         	mov	r0, r2
  3b8552: 4a81         	ldr	r2, [pc, #0x204]        @ 0x3b8758 <PurchaseLayer::checkCanConnectToStore()+0x278>
  3b8554: 447a         	add	r2, pc
  3b8556: 4611         	mov	r1, r2
  3b8558: 461a         	mov	r2, r3
  3b855a: f3fe fa81    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3fe502
  3b855e: ab07         	add	r3, sp, #0x1c
  3b8560: 4618         	mov	r0, r3
  3b8562: f1e1 fa6b    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1e14d6
  3b8566: 4603         	mov	r3, r0
  3b8568: 4618         	mov	r0, r3
  3b856a: 2100         	movs	r1, #0x0
  3b856c: f1e1 fc50    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x1e18a0
  3b8570: 4603         	mov	r3, r0
  3b8572: a908         	add	r1, sp, #0x20
  3b8574: aa09         	add	r2, sp, #0x24
  3b8576: 2000         	movs	r0, #0x0
  3b8578: 9000         	str	r0, [sp]
  3b857a: 2000         	movs	r0, #0x0
  3b857c: 9001         	str	r0, [sp, #0x4]
  3b857e: 2000         	movs	r0, #0x0
  3b8580: f727 f938    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0xd8d90
  3b8584: ab07         	add	r3, sp, #0x1c
  3b8586: 4618         	mov	r0, r3
  3b8588: f3fd f9c4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3fd388
  3b858c: ab04         	add	r3, sp, #0x10
  3b858e: 4618         	mov	r0, r3
  3b8590: f3d1 ff34    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3d1e68
  3b8594: ab09         	add	r3, sp, #0x24
  3b8596: 4618         	mov	r0, r3
  3b8598: f3fd f9bc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3fd378
  3b859c: ab06         	add	r3, sp, #0x18
  3b859e: 4618         	mov	r0, r3
  3b85a0: f3d1 ff2c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3d1e58
  3b85a4: ab08         	add	r3, sp, #0x20
  3b85a6: 4618         	mov	r0, r3
  3b85a8: f3fd f9b4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3fd368
  3b85ac: ab05         	add	r3, sp, #0x14
  3b85ae: 4618         	mov	r0, r3
  3b85b0: f3d1 ff24    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3d1e48
  3b85b4: e0c6         	b	0x3b8744 <PurchaseLayer::checkCanConnectToStore()+0x264> @ imm = #0x18c
  3b85b6: f074 f965    	bl	0x42c884 <ApplicationInterface::requiresClaimedIdentity()> @ imm = #0x742ca
  3b85ba: 4603         	mov	r3, r0
  3b85bc: 2b00         	cmp	r3, #0x0
  3b85be: d00d         	beq	0x3b85dc <PurchaseLayer::checkCanConnectToStore()+0xfc> @ imm = #0x1a
  3b85c0: f7bf fabe    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x40a84
  3b85c4: 4603         	mov	r3, r0
  3b85c6: 4618         	mov	r0, r3
  3b85c8: f7c1 fa52    	bl	0x379a70 <NetworkManager::checkCurrentSessionIsValid()> @ imm = #-0x3eb5c
  3b85cc: 4603         	mov	r3, r0
  3b85ce: f083 0301    	eor	r3, r3, #0x1
  3b85d2: b2db         	uxtb	r3, r3
  3b85d4: 2b00         	cmp	r3, #0x0
  3b85d6: d001         	beq	0x3b85dc <PurchaseLayer::checkCanConnectToStore()+0xfc> @ imm = #0x2
  3b85d8: 2301         	movs	r3, #0x1
  3b85da: e000         	b	0x3b85de <PurchaseLayer::checkCanConnectToStore()+0xfe> @ imm = #0x0
  3b85dc: 2300         	movs	r3, #0x0
  3b85de: 2b00         	cmp	r3, #0x0
  3b85e0: d05f         	beq	0x3b86a2 <PurchaseLayer::checkCanConnectToStore()+0x1c2> @ imm = #0xbe
  3b85e2: 4b5a         	ldr	r3, [pc, #0x168]        @ 0x3b874c <PurchaseLayer::checkCanConnectToStore()+0x26c>
  3b85e4: 58e3         	ldr	r3, [r4, r3]
  3b85e6: 681b         	ldr	r3, [r3]
  3b85e8: 4618         	mov	r0, r3
  3b85ea: 210d         	movs	r1, #0xd
  3b85ec: f03f fbe8    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x3f7d0
  3b85f0: ab05         	add	r3, sp, #0x14
  3b85f2: 4618         	mov	r0, r3
  3b85f4: f3d1 fefe    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3d1dfc
  3b85f8: aa08         	add	r2, sp, #0x20
  3b85fa: ab05         	add	r3, sp, #0x14
  3b85fc: 4610         	mov	r0, r2
  3b85fe: 4a57         	ldr	r2, [pc, #0x15c]        @ 0x3b875c <PurchaseLayer::checkCanConnectToStore()+0x27c>
  3b8600: 447a         	add	r2, pc
  3b8602: 4611         	mov	r1, r2
  3b8604: 461a         	mov	r2, r3
  3b8606: f3fe fa2b    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3fe456
  3b860a: ab06         	add	r3, sp, #0x18
  3b860c: 4618         	mov	r0, r3
  3b860e: f3d1 fef1    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3d1de2
  3b8612: aa09         	add	r2, sp, #0x24
  3b8614: ab06         	add	r3, sp, #0x18
  3b8616: 4610         	mov	r0, r2
  3b8618: 4a51         	ldr	r2, [pc, #0x144]        @ 0x3b8760 <PurchaseLayer::checkCanConnectToStore()+0x280>
  3b861a: 447a         	add	r2, pc
  3b861c: 4611         	mov	r1, r2
  3b861e: 461a         	mov	r2, r3
  3b8620: f3fe fa1e    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3fe43c
  3b8624: ab04         	add	r3, sp, #0x10
  3b8626: 4618         	mov	r0, r3
  3b8628: f3d1 fee4    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3d1dc8
  3b862c: aa07         	add	r2, sp, #0x1c
  3b862e: ab04         	add	r3, sp, #0x10
  3b8630: 4610         	mov	r0, r2
  3b8632: 4a4c         	ldr	r2, [pc, #0x130]        @ 0x3b8764 <PurchaseLayer::checkCanConnectToStore()+0x284>
  3b8634: 447a         	add	r2, pc
  3b8636: 4611         	mov	r1, r2
  3b8638: 461a         	mov	r2, r3
  3b863a: f3fe fa11    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3fe422
  3b863e: ab07         	add	r3, sp, #0x1c
  3b8640: 4618         	mov	r0, r3
  3b8642: f1e1 f9fb    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1e13f6
  3b8646: 4603         	mov	r3, r0
  3b8648: 4618         	mov	r0, r3
  3b864a: 2100         	movs	r1, #0x0
  3b864c: f1e1 fbe0    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x1e17c0
  3b8650: 4603         	mov	r3, r0
  3b8652: a908         	add	r1, sp, #0x20
  3b8654: aa09         	add	r2, sp, #0x24
  3b8656: 2000         	movs	r0, #0x0
  3b8658: 9000         	str	r0, [sp]
  3b865a: 2000         	movs	r0, #0x0
  3b865c: 9001         	str	r0, [sp, #0x4]
  3b865e: 2000         	movs	r0, #0x0
  3b8660: f727 f8c8    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0xd8e70
  3b8664: ab07         	add	r3, sp, #0x1c
  3b8666: 4618         	mov	r0, r3
  3b8668: f3fd f954    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3fd2a8
  3b866c: ab04         	add	r3, sp, #0x10
  3b866e: 4618         	mov	r0, r3
  3b8670: f3d1 fec4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3d1d88
  3b8674: ab09         	add	r3, sp, #0x24
  3b8676: 4618         	mov	r0, r3
  3b8678: f3fd f94c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3fd298
  3b867c: ab06         	add	r3, sp, #0x18
  3b867e: 4618         	mov	r0, r3
  3b8680: f3d1 febc    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3d1d78
  3b8684: ab08         	add	r3, sp, #0x20
  3b8686: 4618         	mov	r0, r3
  3b8688: f3fd f944    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3fd288
  3b868c: ab05         	add	r3, sp, #0x14
  3b868e: 4618         	mov	r0, r3
  3b8690: f3d1 feb4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3d1d68
  3b8694: f7bf fa54    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x40b58
  3b8698: 4603         	mov	r3, r0
  3b869a: 4618         	mov	r0, r3
  3b869c: f7c2 fcda    	bl	0x37b054 <NetworkManager::requestWebSession()> @ imm = #-0x3d64c
  3b86a0: e050         	b	0x3b8744 <PurchaseLayer::checkCanConnectToStore()+0x264> @ imm = #0xa0
  3b86a2: f079 f907    	bl	0x4318b4 <InAppPurchaseBridge::canMakePurchases()> @ imm = #0x7920e
  3b86a6: 4603         	mov	r3, r0
  3b86a8: f083 0301    	eor	r3, r3, #0x1
  3b86ac: b2db         	uxtb	r3, r3
  3b86ae: 2b00         	cmp	r3, #0x0
  3b86b0: d048         	beq	0x3b8744 <PurchaseLayer::checkCanConnectToStore()+0x264> @ imm = #0x90
  3b86b2: 9b03         	ldr	r3, [sp, #0xc]
  3b86b4: f893 313c    	ldrb.w	r3, [r3, #0x13c]
  3b86b8: f083 0301    	eor	r3, r3, #0x1
  3b86bc: b2db         	uxtb	r3, r3
  3b86be: 2b00         	cmp	r3, #0x0
  3b86c0: d001         	beq	0x3b86c6 <PurchaseLayer::checkCanConnectToStore()+0x1e6> @ imm = #0x2
  3b86c2: f079 f9ab    	bl	0x431a1c <InAppPurchaseBridge::showPurchaseStatusAlert()> @ imm = #0x79356
  3b86c6: 9b03         	ldr	r3, [sp, #0xc]
  3b86c8: 2201         	movs	r2, #0x1
  3b86ca: f883 213c    	strb.w	r2, [r3, #0x13c]
  3b86ce: e039         	b	0x3b8744 <PurchaseLayer::checkCanConnectToStore()+0x264> @ imm = #0x72
  3b86d0: ab07         	add	r3, sp, #0x1c
  3b86d2: 4618         	mov	r0, r3
  3b86d4: f3fd f91e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3fd23c
  3b86d8: e7ff         	b	0x3b86da <PurchaseLayer::checkCanConnectToStore()+0x1fa> @ imm = #-0x2
  3b86da: ab04         	add	r3, sp, #0x10
  3b86dc: 4618         	mov	r0, r3
  3b86de: f3d1 fe8d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3d1d1a
  3b86e2: ab09         	add	r3, sp, #0x24
  3b86e4: 4618         	mov	r0, r3
  3b86e6: f3fd f915    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3fd22a
  3b86ea: e7ff         	b	0x3b86ec <PurchaseLayer::checkCanConnectToStore()+0x20c> @ imm = #-0x2
  3b86ec: ab06         	add	r3, sp, #0x18
  3b86ee: 4618         	mov	r0, r3
  3b86f0: f3d1 fe84    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3d1d08
  3b86f4: ab08         	add	r3, sp, #0x20
  3b86f6: 4618         	mov	r0, r3
  3b86f8: f3fd f90c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3fd218
  3b86fc: e7ff         	b	0x3b86fe <PurchaseLayer::checkCanConnectToStore()+0x21e> @ imm = #-0x2
  3b86fe: ab05         	add	r3, sp, #0x14
  3b8700: 4618         	mov	r0, r3
  3b8702: f3d1 fe7b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3d1cf6
  3b8706: f3cf fcd1    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3cf9a2
  3b870a: ab07         	add	r3, sp, #0x1c
  3b870c: 4618         	mov	r0, r3
  3b870e: f3fd f901    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3fd202
  3b8712: e7ff         	b	0x3b8714 <PurchaseLayer::checkCanConnectToStore()+0x234> @ imm = #-0x2
  3b8714: ab04         	add	r3, sp, #0x10
  3b8716: 4618         	mov	r0, r3
  3b8718: f3d1 fe70    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3d1ce0
  3b871c: ab09         	add	r3, sp, #0x24
  3b871e: 4618         	mov	r0, r3
  3b8720: f3fd f8f8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3fd1f0
  3b8724: e7ff         	b	0x3b8726 <PurchaseLayer::checkCanConnectToStore()+0x246> @ imm = #-0x2
  3b8726: ab06         	add	r3, sp, #0x18
  3b8728: 4618         	mov	r0, r3
  3b872a: f3d1 fe67    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3d1cce
  3b872e: ab08         	add	r3, sp, #0x20
  3b8730: 4618         	mov	r0, r3
  3b8732: f3fd f8ef    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3fd1de
  3b8736: e7ff         	b	0x3b8738 <PurchaseLayer::checkCanConnectToStore()+0x258> @ imm = #-0x2
  3b8738: ab05         	add	r3, sp, #0x14
  3b873a: 4618         	mov	r0, r3
  3b873c: f3d1 fe5e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3d1cbc
  3b8740: f3cf fcb4    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3cf968
  3b8744: b00a         	add	sp, #0x28
  3b8746: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3b8747); words below are literal-pool data ---
  3b8748: a520         	adr	r5, #128 <PurchaseLayer::onRestore(cocos2d::CCObject*)+0x4>
  3b874a: 0057         	lsls	r7, r2, #0x1
  3b874c: d730         	bvc	0x3b87b0 <PurchaseLayer::onRestore(cocos2d::CCObject*)+0x48> @ imm = #0x60
  3b874e: ffff bfc0    	<unknown>
  3b8752: 0041         	lsls	r1, r0, #0x1
  3b8754: bfc2         	ittt	gt
  3b8756: 0041         	lslgt	r1, r0, #0x1
  3b8758: bfe0         	hintgt	#0xe
  3b875a: 0041         	lslgt	r1, r0, #0x1
  3b875c: bf40         	sev
  3b875e: 0041         	lsls	r1, r0, #0x1
  3b8760: bf32         	itee	lo
  3b8762: 0041         	lsllo	r1, r0, #0x1
  3b8764: bf70         	hinths	#0x7
  3b8766: 0041         	lslhs	r1, r0, #0x1

// ==== PurchaseLayer::onRestore
//      file offset 0x3b8768 (= ELF address; Ghidra 0x3c8768), 76 bytes, Thumb-2
  3b8768: b510         	push	{r4, lr}
  3b876a: b082         	sub	sp, #0x8
  3b876c: 9001         	str	r0, [sp, #0x4]
  3b876e: 9100         	str	r1, [sp]
  3b8770: 4c0e         	ldr	r4, [pc, #0x38]         @ 0x3b87ac <PurchaseLayer::onRestore(cocos2d::CCObject*)+0x44>
  3b8772: 447c         	add	r4, pc
  3b8774: 9801         	ldr	r0, [sp, #0x4]
  3b8776: f7ff feb3    	bl	0x3b84e0 <PurchaseLayer::checkCanConnectToStore()> @ imm = #-0x29a
  3b877a: 9b01         	ldr	r3, [sp, #0x4]
  3b877c: f893 3108    	ldrb.w	r3, [r3, #0x108]
  3b8780: 2b00         	cmp	r3, #0x0
  3b8782: d000         	beq	0x3b8786 <PurchaseLayer::onRestore(cocos2d::CCObject*)+0x1e> @ imm = #0x0
  3b8784: e010         	b	0x3b87a8 <PurchaseLayer::onRestore(cocos2d::CCObject*)+0x40> @ imm = #0x20
  3b8786: 9b01         	ldr	r3, [sp, #0x4]
  3b8788: 2201         	movs	r2, #0x1
  3b878a: f883 2108    	strb.w	r2, [r3, #0x108]
  3b878e: 4b08         	ldr	r3, [pc, #0x20]         @ 0x3b87b0 <PurchaseLayer::onRestore(cocos2d::CCObject*)+0x48>
  3b8790: 58e3         	ldr	r3, [r4, r3]
  3b8792: 681b         	ldr	r3, [r3]
  3b8794: 4618         	mov	r0, r3
  3b8796: 210d         	movs	r1, #0xd
  3b8798: f03f fb12    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x3f624
  3b879c: f078 ff4a    	bl	0x431634 <InAppPurchaseBridge::restore()> @ imm = #0x78e94
  3b87a0: 9b01         	ldr	r3, [sp, #0x4]
  3b87a2: 2200         	movs	r2, #0x0
  3b87a4: f883 2108    	strb.w	r2, [r3, #0x108]
  3b87a8: b002         	add	sp, #0x8
  3b87aa: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3b87ab); words below are literal-pool data ---
  3b87ac: a296         	adr	r2, #600 <PurchaseLayer::onPurchase(cocos2d::CCObject*)+0x92>
  3b87ae: 0057         	lsls	r7, r2, #0x1
  3b87b0: d730         	bvc	0x3b8814 <PurchaseLayer::onPurchase(cocos2d::CCObject*)+0x60> @ imm = #0x60
  3b87b2: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== PurchaseLayer::onPurchase
//      file offset 0x3b87b4 (= ELF address; Ghidra 0x3c87b4), 160 bytes, Thumb-2
  3b87b4: b510         	push	{r4, lr}
  3b87b6: b084         	sub	sp, #0x10
  3b87b8: 9001         	str	r0, [sp, #0x4]
  3b87ba: 9100         	str	r1, [sp]
  3b87bc: 4c22         	ldr	r4, [pc, #0x88]         @ 0x3b8848 <PurchaseLayer::onPurchase(cocos2d::CCObject*)+0x94>
  3b87be: 447c         	add	r4, pc
  3b87c0: 9801         	ldr	r0, [sp, #0x4]
  3b87c2: f7ff fe8d    	bl	0x3b84e0 <PurchaseLayer::checkCanConnectToStore()> @ imm = #-0x2e6
  3b87c6: 9b01         	ldr	r3, [sp, #0x4]
  3b87c8: f893 3108    	ldrb.w	r3, [r3, #0x108]
  3b87cc: 2b00         	cmp	r3, #0x0
  3b87ce: d000         	beq	0x3b87d2 <PurchaseLayer::onPurchase(cocos2d::CCObject*)+0x1e> @ imm = #0x0
  3b87d0: e037         	b	0x3b8842 <PurchaseLayer::onPurchase(cocos2d::CCObject*)+0x8e> @ imm = #0x6e
  3b87d2: 9b01         	ldr	r3, [sp, #0x4]
  3b87d4: 2201         	movs	r2, #0x1
  3b87d6: f883 2108    	strb.w	r2, [r3, #0x108]
  3b87da: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x3b884c <PurchaseLayer::onPurchase(cocos2d::CCObject*)+0x98>
  3b87dc: 58e3         	ldr	r3, [r4, r3]
  3b87de: 681b         	ldr	r3, [r3]
  3b87e0: 4618         	mov	r0, r3
  3b87e2: 210d         	movs	r1, #0xd
  3b87e4: f03f faec    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x3f5d8
  3b87e8: 9b01         	ldr	r3, [sp, #0x4]
  3b87ea: 2201         	movs	r2, #0x1
  3b87ec: f883 213d    	strb.w	r2, [r3, #0x13d]
  3b87f0: ab02         	add	r3, sp, #0x8
  3b87f2: 4618         	mov	r0, r3
  3b87f4: f3d1 fdfe    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3d1bfc
  3b87f8: aa03         	add	r2, sp, #0xc
  3b87fa: ab02         	add	r3, sp, #0x8
  3b87fc: 4610         	mov	r0, r2
  3b87fe: 4a14         	ldr	r2, [pc, #0x50]         @ 0x3b8850 <PurchaseLayer::onPurchase(cocos2d::CCObject*)+0x9c>
  3b8800: 447a         	add	r2, pc
  3b8802: 4611         	mov	r1, r2
  3b8804: 461a         	mov	r2, r3
  3b8806: f3fe f92b    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3fe256
  3b880a: ab03         	add	r3, sp, #0xc
  3b880c: 4618         	mov	r0, r3
  3b880e: f078 ff1b    	bl	0x431648 <InAppPurchaseBridge::purchaseProduct(std::string)> @ imm = #0x78e36
  3b8812: ab03         	add	r3, sp, #0xc
  3b8814: 4618         	mov	r0, r3
  3b8816: f3fd f87d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3fd0fa
  3b881a: ab02         	add	r3, sp, #0x8
  3b881c: 4618         	mov	r0, r3
  3b881e: f3d1 fded    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3d1bda
  3b8822: 9b01         	ldr	r3, [sp, #0x4]
  3b8824: 2200         	movs	r2, #0x0
  3b8826: f883 2108    	strb.w	r2, [r3, #0x108]
  3b882a: e00a         	b	0x3b8842 <PurchaseLayer::onPurchase(cocos2d::CCObject*)+0x8e> @ imm = #0x14
  3b882c: ab03         	add	r3, sp, #0xc
  3b882e: 4618         	mov	r0, r3
  3b8830: f3fd f870    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3fd0e0
  3b8834: e7ff         	b	0x3b8836 <PurchaseLayer::onPurchase(cocos2d::CCObject*)+0x82> @ imm = #-0x2
  3b8836: ab02         	add	r3, sp, #0x8
  3b8838: 4618         	mov	r0, r3
  3b883a: f3d1 fddf    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3d1bbe
  3b883e: f3cf fc35    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3cf86a
  3b8842: b004         	add	sp, #0x10
  3b8844: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3b8845); words below are literal-pool data ---
  3b8846: bf00         	nop
  3b8848: a24a         	adr	r2, #296 <PurchaseLayer::onBack(cocos2d::CCObject*)+0x42>
  3b884a: 0057         	lsls	r7, r2, #0x1
  3b884c: d730         	bvc	0x3b88b0 <PurchaseLayer::onBack(cocos2d::CCObject*)+0x5c> @ imm = #0x60
  3b884e: ffff bc94    	<unknown>
  3b8852: 0041         	lsls	r1, r0, #0x1

// ==== PurchaseLayer::onBack
//      file offset 0x3b8854 (= ELF address; Ghidra 0x3c8854), 100 bytes, Thumb-2
  3b8854: b530         	push	{r4, r5, lr}
  3b8856: b083         	sub	sp, #0xc
  3b8858: 9001         	str	r0, [sp, #0x4]
  3b885a: 9100         	str	r1, [sp]
  3b885c: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x3b88ac <PurchaseLayer::onBack(cocos2d::CCObject*)+0x58>
  3b885e: 447a         	add	r2, pc
  3b8860: 9b01         	ldr	r3, [sp, #0x4]
  3b8862: f893 3108    	ldrb.w	r3, [r3, #0x108]
  3b8866: 2b00         	cmp	r3, #0x0
  3b8868: d000         	beq	0x3b886c <PurchaseLayer::onBack(cocos2d::CCObject*)+0x18> @ imm = #0x0
  3b886a: e01c         	b	0x3b88a6 <PurchaseLayer::onBack(cocos2d::CCObject*)+0x52> @ imm = #0x38
  3b886c: 9b01         	ldr	r3, [sp, #0x4]
  3b886e: 2101         	movs	r1, #0x1
  3b8870: f883 1108    	strb.w	r1, [r3, #0x108]
  3b8874: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x3b88b0 <PurchaseLayer::onBack(cocos2d::CCObject*)+0x5c>
  3b8876: 58d3         	ldr	r3, [r2, r3]
  3b8878: 681b         	ldr	r3, [r3]
  3b887a: 4618         	mov	r0, r3
  3b887c: 210d         	movs	r1, #0xd
  3b887e: f03f fa9f    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x3f53e
  3b8882: f1e2 fe77    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x1e2cee
  3b8886: 4604         	mov	r4, r0
  3b8888: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x3b88b4 <PurchaseLayer::onBack(cocos2d::CCObject*)+0x60>
  3b888a: 447b         	add	r3, pc
  3b888c: 681d         	ldr	r5, [r3]
  3b888e: f7b1 f921    	bl	0x369ad4 <MenuLayer::scene()> @ imm = #-0x4edbe
  3b8892: 4603         	mov	r3, r0
  3b8894: 4628         	mov	r0, r5
  3b8896: 4619         	mov	r1, r3
  3b8898: f1f8 fd36    	bl	0x5b1308 <cocos2d::CCTransitionSlideInL::create(float, cocos2d::CCScene*)> @ imm = #0x1f8a6c
  3b889c: 4603         	mov	r3, r0
  3b889e: 4620         	mov	r0, r4
  3b88a0: 4619         	mov	r1, r3
  3b88a2: f1e3 fd5b    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x1e3ab6
  3b88a6: b003         	add	sp, #0xc
  3b88a8: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3b88a9); words below are literal-pool data ---
  3b88aa: bf00         	nop
  3b88ac: a1aa         	adr	r1, #680 <PurchaseLayer::onBack(cocos2d::CCObject*)+0x106>
  3b88ae: 0057         	lsls	r7, r2, #0x1
  3b88b0: d730         	bvc	0x3b8914 <PurchaseLayer::onBack(cocos2d::CCObject*)+0xc0> @ imm = #0x60
  3b88b2: ffff ad46    	<unknown>
  3b88b6: 0057         	lsls	r7, r2, #0x1
