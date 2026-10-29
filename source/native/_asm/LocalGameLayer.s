// LocalGameLayer: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 12 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../LocalGameLayer.cpp

// ==== LocalGameLayer::create
//      file offset 0x352524 (= ELF address; Ghidra 0x362524), 112 bytes, Thumb-2
  352524: b510         	push	{r4, lr}
  352526: b082         	sub	sp, #0x8
  352528: f44f 7098    	mov.w	r0, #0x130
  35252c: f035 f21a    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x435434
  352530: 4603         	mov	r3, r0
  352532: 461c         	mov	r4, r3
  352534: 4620         	mov	r0, r4
  352536: f000 f82d    	bl	0x352594 <LocalGameLayer::LocalGameLayer()> @ imm = #0x5a
  35253a: 9401         	str	r4, [sp, #0x4]
  35253c: 9b01         	ldr	r3, [sp, #0x4]
  35253e: 2b00         	cmp	r3, #0x0
  352540: d00a         	beq	0x352558 <LocalGameLayer::create()+0x34> @ imm = #0x14
  352542: 9b01         	ldr	r3, [sp, #0x4]
  352544: 681b         	ldr	r3, [r3]
  352546: 3318         	adds	r3, #0x18
  352548: 681b         	ldr	r3, [r3]
  35254a: 9801         	ldr	r0, [sp, #0x4]
  35254c: 4798         	blx	r3
  35254e: 4603         	mov	r3, r0
  352550: 2b00         	cmp	r3, #0x0
  352552: d001         	beq	0x352558 <LocalGameLayer::create()+0x34> @ imm = #0x2
  352554: 2301         	movs	r3, #0x1
  352556: e000         	b	0x35255a <LocalGameLayer::create()+0x36> @ imm = #0x0
  352558: 2300         	movs	r3, #0x0
  35255a: 2b00         	cmp	r3, #0x0
  35255c: d005         	beq	0x35256a <LocalGameLayer::create()+0x46> @ imm = #0xa
  35255e: 9b01         	ldr	r3, [sp, #0x4]
  352560: 4618         	mov	r0, r3
  352562: f245 fccb    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x245996
  352566: 9b01         	ldr	r3, [sp, #0x4]
  352568: e011         	b	0x35258e <LocalGameLayer::create()+0x6a> @ imm = #0x22
  35256a: 9b01         	ldr	r3, [sp, #0x4]
  35256c: 2b00         	cmp	r3, #0x0
  35256e: d005         	beq	0x35257c <LocalGameLayer::create()+0x58> @ imm = #0xa
  352570: 9b01         	ldr	r3, [sp, #0x4]
  352572: 681b         	ldr	r3, [r3]
  352574: 3308         	adds	r3, #0x8
  352576: 681b         	ldr	r3, [r3]
  352578: 9801         	ldr	r0, [sp, #0x4]
  35257a: 4798         	blx	r3
  35257c: 2300         	movs	r3, #0x0
  35257e: 9301         	str	r3, [sp, #0x4]
  352580: 2300         	movs	r3, #0x0
  352582: e004         	b	0x35258e <LocalGameLayer::create()+0x6a> @ imm = #0x8
  352584: 4620         	mov	r0, r4
  352586: f035 f58d    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x435b1a
  35258a: f035 f58f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x435b1e
  35258e: 4618         	mov	r0, r3
  352590: b002         	add	sp, #0x8
  352592: bd10         	pop	{r4, pc}

// ==== LocalGameLayer::LocalGameLayer
//      file offset 0x352594 (= ELF address; Ghidra 0x362594), 88 bytes, Thumb-2
  352594: b510         	push	{r4, lr}
  352596: b082         	sub	sp, #0x8
  352598: 9001         	str	r0, [sp, #0x4]
  35259a: 4c12         	ldr	r4, [pc, #0x48]         @ 0x3525e4 <LocalGameLayer::LocalGameLayer()+0x50>
  35259c: 447c         	add	r4, pc
  35259e: 9b01         	ldr	r3, [sp, #0x4]
  3525a0: 4618         	mov	r0, r3
  3525a2: f25a fd5b    	bl	0x5ad05c <cocos2d::CCLayer::CCLayer()> @ imm = #0x25aab6
  3525a6: 9b01         	ldr	r3, [sp, #0x4]
  3525a8: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x3525e8 <LocalGameLayer::LocalGameLayer()+0x54>
  3525aa: 58a2         	ldr	r2, [r4, r2]
  3525ac: 3208         	adds	r2, #0x8
  3525ae: 601a         	str	r2, [r3]
  3525b0: 9b01         	ldr	r3, [sp, #0x4]
  3525b2: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x3525e8 <LocalGameLayer::LocalGameLayer()+0x54>
  3525b4: 58a2         	ldr	r2, [r4, r2]
  3525b6: f502 7204    	add.w	r2, r2, #0x210
  3525ba: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  3525be: 9b01         	ldr	r3, [sp, #0x4]
  3525c0: 4a09         	ldr	r2, [pc, #0x24]         @ 0x3525e8 <LocalGameLayer::LocalGameLayer()+0x54>
  3525c2: 58a2         	ldr	r2, [r4, r2]
  3525c4: f502 7210    	add.w	r2, r2, #0x240
  3525c8: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  3525cc: 9b01         	ldr	r3, [sp, #0x4]
  3525ce: 4a06         	ldr	r2, [pc, #0x18]         @ 0x3525e8 <LocalGameLayer::LocalGameLayer()+0x54>
  3525d0: 58a2         	ldr	r2, [r4, r2]
  3525d2: f502 7213    	add.w	r2, r2, #0x24c
  3525d6: f8c3 20ec    	str.w	r2, [r3, #0xec]
  3525da: 9b01         	ldr	r3, [sp, #0x4]
  3525dc: 4618         	mov	r0, r3
  3525de: b002         	add	sp, #0x8
  3525e0: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3525e1); words below are literal-pool data ---
  3525e2: bf00         	nop
  3525e4: 046c         	lsls	r4, r5, #0x11
  3525e6: 005e         	lsls	r6, r3, #0x1
  3525e8: db64         	blt	0x3526b4 <LocalGameLayer::init()+0x94> @ imm = #0xc8
  3525ea: ffff b500    	<unknown>

// ==== LocalGameLayer::scene
//      file offset 0x3525ec (= ELF address; Ghidra 0x3625ec), 46 bytes, Thumb-2
  3525ec: b500         	push	{lr}
  3525ee: b083         	sub	sp, #0xc
  3525f0: f25d fa36    	bl	0x5afa60 <cocos2d::CCScene::create()> @ imm = #0x25d46c
  3525f4: 4603         	mov	r3, r0
  3525f6: 9300         	str	r3, [sp]
  3525f8: f7ff ff94    	bl	0x352524 <LocalGameLayer::create()> @ imm = #-0xd8
  3525fc: 4603         	mov	r3, r0
  3525fe: 9301         	str	r3, [sp, #0x4]
  352600: 9b00         	ldr	r3, [sp]
  352602: 681b         	ldr	r3, [r3]
  352604: 33c8         	adds	r3, #0xc8
  352606: 681b         	ldr	r3, [r3]
  352608: 9a00         	ldr	r2, [sp]
  35260a: 4610         	mov	r0, r2
  35260c: 9901         	ldr	r1, [sp, #0x4]
  35260e: 4798         	blx	r3
  352610: 9b00         	ldr	r3, [sp]
  352612: 4618         	mov	r0, r3
  352614: b003         	add	sp, #0xc
  352616: f85d fb04    	ldr	pc, [sp], #4

// ==== LocalGameLayer::init
//      file offset 0x352620 (= ELF address; Ghidra 0x362620), 2326 bytes, Thumb-2
  352620: b570         	push	{r4, r5, r6, lr}
  352622: ed2d 8b02    	vpush	{d8}
  352626: b0ae         	sub	sp, #0xb8
  352628: 9003         	str	r0, [sp, #0xc]
  35262a: 4c09         	ldr	r4, [pc, #0x24]         @ 0x352650 <LocalGameLayer::init()+0x30>
  35262c: 447c         	add	r4, pc
  35262e: 9b03         	ldr	r3, [sp, #0xc]
  352630: 4618         	mov	r0, r3
  352632: f25a fde1    	bl	0x5ad1f8 <cocos2d::CCLayer::init()> @ imm = #0x25abc2
  352636: 4603         	mov	r3, r0
  352638: f88d 3017    	strb.w	r3, [sp, #0x17]
  35263c: f89d 3017    	ldrb.w	r3, [sp, #0x17]
  352640: f083 0301    	eor	r3, r3, #0x1
  352644: b2db         	uxtb	r3, r3
  352646: 2b00         	cmp	r3, #0x0
  352648: d004         	beq	0x352654 <LocalGameLayer::init()+0x34> @ imm = #0x8
  35264a: 2300         	movs	r3, #0x0
  35264c: f000 bc6e    	b.w	0x352f2c <LocalGameLayer::init()+0x90c> @ imm = #0x8dc
  352650: 03dc         	lsls	r4, r3, #0xf
  352652: 005e         	lsls	r6, r3, #0x1
  352654: 9b03         	ldr	r3, [sp, #0xc]
  352656: 2200         	movs	r2, #0x0
  352658: f883 2108    	strb.w	r2, [r3, #0x108]
  35265c: ab14         	add	r3, sp, #0x50
  35265e: 4618         	mov	r0, r3
  352660: f8df 3540    	ldr.w	r3, [pc, #0x540]        @ 0x352ba4 <LocalGameLayer::init()+0x584>
  352664: 58e3         	ldr	r3, [r4, r3]
  352666: 4619         	mov	r1, r3
  352668: f240 fd22    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x240a44
  35266c: ed9d 7a14    	vldr	s14, [sp, #80]
  352670: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  352674: eec7 6a27    	vdiv.f32	s13, s14, s15
  352678: ed9d 7a15    	vldr	s14, [sp, #84]
  35267c: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  352680: eec7 7a27    	vdiv.f32	s15, s14, s15
  352684: ab16         	add	r3, sp, #0x58
  352686: 4618         	mov	r0, r3
  352688: ee16 1a90    	vmov	r1, s13
  35268c: ee17 2a90    	vmov	r2, s15
  352690: f240 fb2e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x24065c
  352694: f04f 0300    	mov.w	r3, #0x0
  352698: 9307         	str	r3, [sp, #0x1c]
  35269a: f04f 0300    	mov.w	r3, #0x0
  35269e: f2c4 2340    	movt	r3, #0x4240
  3526a2: 9308         	str	r3, [sp, #0x20]
  3526a4: f8df 3500    	ldr.w	r3, [pc, #0x500]        @ 0x352ba8 <LocalGameLayer::init()+0x588>
  3526a8: 447b         	add	r3, pc
  3526aa: 4618         	mov	r0, r3
  3526ac: f285 fe2a    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x285c54
  3526b0: 4603         	mov	r3, r0
  3526b2: 9309         	str	r3, [sp, #0x24]
  3526b4: f8df 34f4    	ldr.w	r3, [pc, #0x4f4]        @ 0x352bac <LocalGameLayer::init()+0x58c>
  3526b8: 447b         	add	r3, pc
  3526ba: 4618         	mov	r0, r3
  3526bc: f285 fe22    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x285c44
  3526c0: 4603         	mov	r3, r0
  3526c2: 930a         	str	r3, [sp, #0x28]
  3526c4: f8df 34e8    	ldr.w	r3, [pc, #0x4e8]        @ 0x352bb0 <LocalGameLayer::init()+0x590>
  3526c8: 447b         	add	r3, pc
  3526ca: 4618         	mov	r0, r3
  3526cc: f285 fe1a    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x285c34
  3526d0: 4603         	mov	r3, r0
  3526d2: 930b         	str	r3, [sp, #0x2c]
  3526d4: f8df 34dc    	ldr.w	r3, [pc, #0x4dc]        @ 0x352bb4 <LocalGameLayer::init()+0x594>
  3526d8: 447b         	add	r3, pc
  3526da: 4618         	mov	r0, r3
  3526dc: f285 fe12    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x285c24
  3526e0: 4603         	mov	r3, r0
  3526e2: 930c         	str	r3, [sp, #0x30]
  3526e4: 9a03         	ldr	r2, [sp, #0xc]
  3526e6: f8df 34d0    	ldr.w	r3, [pc, #0x4d0]        @ 0x352bb8 <LocalGameLayer::init()+0x598>
  3526ea: 58e3         	ldr	r3, [r4, r3]
  3526ec: 931e         	str	r3, [sp, #0x78]
  3526ee: 2300         	movs	r3, #0x0
  3526f0: 931f         	str	r3, [sp, #0x7c]
  3526f2: 9b1f         	ldr	r3, [sp, #0x7c]
  3526f4: 9300         	str	r3, [sp]
  3526f6: 9b1e         	ldr	r3, [sp, #0x78]
  3526f8: 9809         	ldr	r0, [sp, #0x24]
  3526fa: 9909         	ldr	r1, [sp, #0x24]
  3526fc: f265 fe16    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x265c2c
  352700: 4603         	mov	r3, r0
  352702: 930d         	str	r3, [sp, #0x34]
  352704: 980d         	ldr	r0, [sp, #0x34]
  352706: 2100         	movs	r1, #0x0
  352708: f262 fd18    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x262a30
  35270c: 4602         	mov	r2, r0
  35270e: 9b03         	ldr	r3, [sp, #0xc]
  352710: f8c3 2120    	str.w	r2, [r3, #0x120]
  352714: 9b03         	ldr	r3, [sp, #0xc]
  352716: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  35271a: 4618         	mov	r0, r3
  35271c: f245 fbe4    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2457c8
  352720: 9b03         	ldr	r3, [sp, #0xc]
  352722: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  352726: 681b         	ldr	r3, [r3]
  352728: 334c         	adds	r3, #0x4c
  35272a: 681d         	ldr	r5, [r3]
  35272c: 9b03         	ldr	r3, [sp, #0xc]
  35272e: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  352732: 461e         	mov	r6, r3
  352734: ed9d 7a16    	vldr	s14, [sp, #88]
  352738: eddd 7a07    	vldr	s15, [sp, #28]
  35273c: ee77 6a27    	vadd.f32	s13, s14, s15
  352740: ed9d 7a17    	vldr	s14, [sp, #92]
  352744: eddd 7a08    	vldr	s15, [sp, #32]
  352748: ee77 7a27    	vadd.f32	s15, s14, s15
  35274c: ab2a         	add	r3, sp, #0xa8
  35274e: 4618         	mov	r0, r3
  352750: ee16 1a90    	vmov	r1, s13
  352754: ee17 2a90    	vmov	r2, s15
  352758: f240 faca    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x240594
  35275c: ab2a         	add	r3, sp, #0xa8
  35275e: 4630         	mov	r0, r6
  352760: 4619         	mov	r1, r3
  352762: 47a8         	blx	r5
  352764: 9b03         	ldr	r3, [sp, #0xc]
  352766: 681b         	ldr	r3, [r3]
  352768: 33c8         	adds	r3, #0xc8
  35276a: 681b         	ldr	r3, [r3]
  35276c: 9903         	ldr	r1, [sp, #0xc]
  35276e: 9a03         	ldr	r2, [sp, #0xc]
  352770: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  352774: 4608         	mov	r0, r1
  352776: 4611         	mov	r1, r2
  352778: 4798         	blx	r3
  35277a: 9a03         	ldr	r2, [sp, #0xc]
  35277c: f8df 343c    	ldr.w	r3, [pc, #0x43c]        @ 0x352bbc <LocalGameLayer::init()+0x59c>
  352780: 58e3         	ldr	r3, [r4, r3]
  352782: 9320         	str	r3, [sp, #0x80]
  352784: 2300         	movs	r3, #0x0
  352786: 9321         	str	r3, [sp, #0x84]
  352788: 9b21         	ldr	r3, [sp, #0x84]
  35278a: 9300         	str	r3, [sp]
  35278c: 9b20         	ldr	r3, [sp, #0x80]
  35278e: 980a         	ldr	r0, [sp, #0x28]
  352790: 990a         	ldr	r1, [sp, #0x28]
  352792: f265 fdcb    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x265b96
  352796: 4603         	mov	r3, r0
  352798: 930e         	str	r3, [sp, #0x38]
  35279a: 980e         	ldr	r0, [sp, #0x38]
  35279c: 2100         	movs	r1, #0x0
  35279e: f262 fccd    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x26299a
  3527a2: 4602         	mov	r2, r0
  3527a4: 9b03         	ldr	r3, [sp, #0xc]
  3527a6: f8c3 2124    	str.w	r2, [r3, #0x124]
  3527aa: 9b03         	ldr	r3, [sp, #0xc]
  3527ac: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3527b0: 4618         	mov	r0, r3
  3527b2: f245 fb99    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x245732
  3527b6: 9b03         	ldr	r3, [sp, #0xc]
  3527b8: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3527bc: 681b         	ldr	r3, [r3]
  3527be: 334c         	adds	r3, #0x4c
  3527c0: 681d         	ldr	r5, [r3]
  3527c2: 9b03         	ldr	r3, [sp, #0xc]
  3527c4: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3527c8: 461e         	mov	r6, r3
  3527ca: ed9d 7a16    	vldr	s14, [sp, #88]
  3527ce: eddd 7a07    	vldr	s15, [sp, #28]
  3527d2: ee77 7a27    	vadd.f32	s15, s14, s15
  3527d6: 9b17         	ldr	r3, [sp, #0x5c]
  3527d8: aa2a         	add	r2, sp, #0xa8
  3527da: 4610         	mov	r0, r2
  3527dc: ee17 1a90    	vmov	r1, s15
  3527e0: 461a         	mov	r2, r3
  3527e2: f240 fa85    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x24050a
  3527e6: ab2a         	add	r3, sp, #0xa8
  3527e8: 4630         	mov	r0, r6
  3527ea: 4619         	mov	r1, r3
  3527ec: 47a8         	blx	r5
  3527ee: 9b03         	ldr	r3, [sp, #0xc]
  3527f0: 681b         	ldr	r3, [r3]
  3527f2: 33c8         	adds	r3, #0xc8
  3527f4: 681b         	ldr	r3, [r3]
  3527f6: 9903         	ldr	r1, [sp, #0xc]
  3527f8: 9a03         	ldr	r2, [sp, #0xc]
  3527fa: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  3527fe: 4608         	mov	r0, r1
  352800: 4611         	mov	r1, r2
  352802: 4798         	blx	r3
  352804: 9a03         	ldr	r2, [sp, #0xc]
  352806: 4bee         	ldr	r3, [pc, #0x3b8]        @ 0x352bc0 <LocalGameLayer::init()+0x5a0>
  352808: 58e3         	ldr	r3, [r4, r3]
  35280a: 9322         	str	r3, [sp, #0x88]
  35280c: 2300         	movs	r3, #0x0
  35280e: 9323         	str	r3, [sp, #0x8c]
  352810: 9b23         	ldr	r3, [sp, #0x8c]
  352812: 9300         	str	r3, [sp]
  352814: 9b22         	ldr	r3, [sp, #0x88]
  352816: 980b         	ldr	r0, [sp, #0x2c]
  352818: 990b         	ldr	r1, [sp, #0x2c]
  35281a: f265 fd87    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x265b0e
  35281e: 4603         	mov	r3, r0
  352820: 930f         	str	r3, [sp, #0x3c]
  352822: 980f         	ldr	r0, [sp, #0x3c]
  352824: 2100         	movs	r1, #0x0
  352826: f262 fc89    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x262912
  35282a: 4602         	mov	r2, r0
  35282c: 9b03         	ldr	r3, [sp, #0xc]
  35282e: f8c3 2128    	str.w	r2, [r3, #0x128]
  352832: 9b03         	ldr	r3, [sp, #0xc]
  352834: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  352838: 4618         	mov	r0, r3
  35283a: f245 fb55    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2456aa
  35283e: 9b03         	ldr	r3, [sp, #0xc]
  352840: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  352844: 681b         	ldr	r3, [r3]
  352846: 334c         	adds	r3, #0x4c
  352848: 681d         	ldr	r5, [r3]
  35284a: 9b03         	ldr	r3, [sp, #0xc]
  35284c: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  352850: 461e         	mov	r6, r3
  352852: ab2a         	add	r3, sp, #0xa8
  352854: 4618         	mov	r0, r3
  352856: f04f 0100    	mov.w	r1, #0x0
  35285a: f2c4 2160    	movt	r1, #0x4260
  35285e: f04f 4284    	mov.w	r2, #0x42000000
  352862: f240 fa45    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x24048a
  352866: ab2a         	add	r3, sp, #0xa8
  352868: 4630         	mov	r0, r6
  35286a: 4619         	mov	r1, r3
  35286c: 47a8         	blx	r5
  35286e: 9b03         	ldr	r3, [sp, #0xc]
  352870: 681b         	ldr	r3, [r3]
  352872: 33c8         	adds	r3, #0xc8
  352874: 681b         	ldr	r3, [r3]
  352876: 9903         	ldr	r1, [sp, #0xc]
  352878: 9a03         	ldr	r2, [sp, #0xc]
  35287a: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  35287e: 4608         	mov	r0, r1
  352880: 4611         	mov	r1, r2
  352882: 4798         	blx	r3
  352884: 9a03         	ldr	r2, [sp, #0xc]
  352886: 4bcf         	ldr	r3, [pc, #0x33c]        @ 0x352bc4 <LocalGameLayer::init()+0x5a4>
  352888: 58e3         	ldr	r3, [r4, r3]
  35288a: 9324         	str	r3, [sp, #0x90]
  35288c: 2300         	movs	r3, #0x0
  35288e: 9325         	str	r3, [sp, #0x94]
  352890: 9b25         	ldr	r3, [sp, #0x94]
  352892: 9300         	str	r3, [sp]
  352894: 9b24         	ldr	r3, [sp, #0x90]
  352896: 980c         	ldr	r0, [sp, #0x30]
  352898: 990c         	ldr	r1, [sp, #0x30]
  35289a: f265 fd47    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x265a8e
  35289e: 4603         	mov	r3, r0
  3528a0: 9310         	str	r3, [sp, #0x40]
  3528a2: 9810         	ldr	r0, [sp, #0x40]
  3528a4: 2100         	movs	r1, #0x0
  3528a6: f262 fc49    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x262892
  3528aa: 4602         	mov	r2, r0
  3528ac: 9b03         	ldr	r3, [sp, #0xc]
  3528ae: f8c3 212c    	str.w	r2, [r3, #0x12c]
  3528b2: 9b03         	ldr	r3, [sp, #0xc]
  3528b4: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  3528b8: 4618         	mov	r0, r3
  3528ba: f245 fb15    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x24562a
  3528be: 9b03         	ldr	r3, [sp, #0xc]
  3528c0: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  3528c4: 681b         	ldr	r3, [r3]
  3528c6: 334c         	adds	r3, #0x4c
  3528c8: 681d         	ldr	r5, [r3]
  3528ca: 9b03         	ldr	r3, [sp, #0xc]
  3528cc: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  3528d0: 461e         	mov	r6, r3
  3528d2: 4bb4         	ldr	r3, [pc, #0x2d0]        @ 0x352ba4 <LocalGameLayer::init()+0x584>
  3528d4: 58e3         	ldr	r3, [r4, r3]
  3528d6: ed93 7a00    	vldr	s14, [r3]
  3528da: eddf 7ab1    	vldr	s15, [pc, #708]         @ 0x352ba0 <LocalGameLayer::init()+0x580>
  3528de: ee77 7a67    	vsub.f32	s15, s14, s15
  3528e2: ab2a         	add	r3, sp, #0xa8
  3528e4: 4618         	mov	r0, r3
  3528e6: ee17 1a90    	vmov	r1, s15
  3528ea: f04f 0200    	mov.w	r2, #0x0
  3528ee: f2c4 22a0    	movt	r2, #0x42a0
  3528f2: f240 f9fd    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2403fa
  3528f6: ab2a         	add	r3, sp, #0xa8
  3528f8: 4630         	mov	r0, r6
  3528fa: 4619         	mov	r1, r3
  3528fc: 47a8         	blx	r5
  3528fe: 9b03         	ldr	r3, [sp, #0xc]
  352900: 681b         	ldr	r3, [r3]
  352902: 33c8         	adds	r3, #0xc8
  352904: 681b         	ldr	r3, [r3]
  352906: 9903         	ldr	r1, [sp, #0xc]
  352908: 9a03         	ldr	r2, [sp, #0xc]
  35290a: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  35290e: 4608         	mov	r0, r1
  352910: 4611         	mov	r1, r2
  352912: 4798         	blx	r3
  352914: f64c 43cd    	movw	r3, #0xcccd
  352918: f6c3 730c    	movt	r3, #0x3f0c
  35291c: 9311         	str	r3, [sp, #0x44]
  35291e: f04f 0300    	mov.w	r3, #0x0
  352922: f2c4 13c0    	movt	r3, #0x41c0
  352926: 9312         	str	r3, [sp, #0x48]
  352928: f04f 4341    	mov.w	r3, #0xc1000000
  35292c: 9313         	str	r3, [sp, #0x4c]
  35292e: 4ba6         	ldr	r3, [pc, #0x298]        @ 0x352bc8 <LocalGameLayer::init()+0x5a8>
  352930: 447b         	add	r3, pc
  352932: 4618         	mov	r0, r3
  352934: f062 f4e4    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4629c8
  352938: 4603         	mov	r3, r0
  35293a: 2220         	movs	r2, #0x20
  35293c: 9200         	str	r2, [sp]
  35293e: 4aa3         	ldr	r2, [pc, #0x28c]        @ 0x352bcc <LocalGameLayer::init()+0x5ac>
  352940: 447a         	add	r2, pc
  352942: 4610         	mov	r0, r2
  352944: 4619         	mov	r1, r3
  352946: 2220         	movs	r2, #0x20
  352948: 2320         	movs	r3, #0x20
  35294a: f252 fd15    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x252a2a
  35294e: 4602         	mov	r2, r0
  352950: 9b03         	ldr	r3, [sp, #0xc]
  352952: f8c3 2110    	str.w	r2, [r3, #0x110]
  352956: 9b03         	ldr	r3, [sp, #0xc]
  352958: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  35295c: 4618         	mov	r0, r3
  35295e: f245 fac3    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x245586
  352962: 9b03         	ldr	r3, [sp, #0xc]
  352964: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  352968: eddd 7a12    	vldr	s15, [sp, #72]
  35296c: eefd 7ae7    	vcvt.s32.f32	s15, s15
  352970: ee17 2a90    	vmov	r2, s15
  352974: 4618         	mov	r0, r3
  352976: 4611         	mov	r1, r2
  352978: f253 fa04    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x253408
  35297c: 9b03         	ldr	r3, [sp, #0xc]
  35297e: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  352982: 681b         	ldr	r3, [r3]
  352984: 3340         	adds	r3, #0x40
  352986: 681b         	ldr	r3, [r3]
  352988: 9a03         	ldr	r2, [sp, #0xc]
  35298a: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  35298e: 4610         	mov	r0, r2
  352990: 9911         	ldr	r1, [sp, #0x44]
  352992: 4798         	blx	r3
  352994: 9b03         	ldr	r3, [sp, #0xc]
  352996: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  35299a: 681b         	ldr	r3, [r3]
  35299c: 334c         	adds	r3, #0x4c
  35299e: 681c         	ldr	r4, [r3]
  3529a0: 9b03         	ldr	r3, [sp, #0xc]
  3529a2: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3529a6: 461d         	mov	r5, r3
  3529a8: 9b03         	ldr	r3, [sp, #0xc]
  3529aa: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3529ae: 681b         	ldr	r3, [r3]
  3529b0: 3350         	adds	r3, #0x50
  3529b2: 681b         	ldr	r3, [r3]
  3529b4: 9a03         	ldr	r2, [sp, #0xc]
  3529b6: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  3529ba: 4610         	mov	r0, r2
  3529bc: 4798         	blx	r3
  3529be: 4603         	mov	r3, r0
  3529c0: 681e         	ldr	r6, [r3]
  3529c2: 9b03         	ldr	r3, [sp, #0xc]
  3529c4: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3529c8: 681b         	ldr	r3, [r3]
  3529ca: 3350         	adds	r3, #0x50
  3529cc: 681b         	ldr	r3, [r3]
  3529ce: 9a03         	ldr	r2, [sp, #0xc]
  3529d0: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  3529d4: 4610         	mov	r0, r2
  3529d6: 4798         	blx	r3
  3529d8: 4603         	mov	r3, r0
  3529da: 685b         	ldr	r3, [r3, #0x4]
  3529dc: aa18         	add	r2, sp, #0x60
  3529de: 4610         	mov	r0, r2
  3529e0: 4631         	mov	r1, r6
  3529e2: 461a         	mov	r2, r3
  3529e4: f240 f984    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x240308
  3529e8: eddd 7a13    	vldr	s15, [sp, #76]
  3529ec: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3529f0: ab26         	add	r3, sp, #0x98
  3529f2: 4618         	mov	r0, r3
  3529f4: ed9f 0b68    	vldr	d0, [pc, #416]          @ 0x352b98 <LocalGameLayer::init()+0x578>
  3529f8: eeb0 1b47    	vmov.f64	d1, d7
  3529fc: f7fe fed4    	bl	0x3517a8 <LobbyLayer::scene()+0x1dc> @ imm = #-0x1258
  352a00: ed9d 8b26    	vldr	d8, [sp, #152]
  352a04: 9b03         	ldr	r3, [sp, #0xc]
  352a06: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  352a0a: 681b         	ldr	r3, [r3]
  352a0c: f503 73fe    	add.w	r3, r3, #0x1fc
  352a10: 681b         	ldr	r3, [r3]
  352a12: 9a03         	ldr	r2, [sp, #0xc]
  352a14: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  352a18: 4610         	mov	r0, r2
  352a1a: 4798         	blx	r3
  352a1c: 4606         	mov	r6, r0
  352a1e: ab05         	add	r3, sp, #0x14
  352a20: 4618         	mov	r0, r3
  352a22: f037 f4e7    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4379ce
  352a26: aa06         	add	r2, sp, #0x18
  352a28: ab05         	add	r3, sp, #0x14
  352a2a: 4610         	mov	r0, r2
  352a2c: 4631         	mov	r1, r6
  352a2e: 461a         	mov	r2, r3
  352a30: f064 f016    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x46402c
  352a34: ab06         	add	r3, sp, #0x18
  352a36: 4618         	mov	r0, r3
  352a38: f062 f310    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x462620
  352a3c: 4603         	mov	r3, r0
  352a3e: ee07 3a90    	vmov	s15, r3
  352a42: eeb8 7a67    	vcvt.f32.u32	s14, s15
  352a46: eddd 7a12    	vldr	s15, [sp, #72]
  352a4a: ee27 7a27    	vmul.f32	s14, s14, s15
  352a4e: eddd 7a11    	vldr	s15, [sp, #68]
  352a52: ee27 7a27    	vmul.f32	s14, s14, s15
  352a56: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  352a5a: eec7 7a27    	vdiv.f32	s15, s14, s15
  352a5e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  352a62: ee38 7b47    	vsub.f64	d7, d8, d7
  352a66: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  352a6a: eddd 7a13    	vldr	s15, [sp, #76]
  352a6e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  352a72: ab2a         	add	r3, sp, #0xa8
  352a74: 4618         	mov	r0, r3
  352a76: ed9f 0b48    	vldr	d0, [pc, #288]          @ 0x352b98 <LocalGameLayer::init()+0x578>
  352a7a: eeb0 1b47    	vmov.f64	d1, d7
  352a7e: f7fe fe93    	bl	0x3517a8 <LobbyLayer::scene()+0x1dc> @ imm = #-0x12da
  352a82: ed9d 7b2c    	vldr	d7, [sp, #176]
  352a86: eef7 7bc7    	vcvt.f32.f64	s15, d7
  352a8a: ab1a         	add	r3, sp, #0x68
  352a8c: 4618         	mov	r0, r3
  352a8e: ee18 1a10    	vmov	r1, s16
  352a92: ee17 2a90    	vmov	r2, s15
  352a96: f240 f92b    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x240256
  352a9a: a91c         	add	r1, sp, #0x70
  352a9c: aa18         	add	r2, sp, #0x60
  352a9e: ab1a         	add	r3, sp, #0x68
  352aa0: 4608         	mov	r0, r1
  352aa2: 4611         	mov	r1, r2
  352aa4: 461a         	mov	r2, r3
  352aa6: f7fe fe6f    	bl	0x351788 <LobbyLayer::scene()+0x1bc> @ imm = #-0x1322
  352aaa: ab1c         	add	r3, sp, #0x70
  352aac: 4628         	mov	r0, r5
  352aae: 4619         	mov	r1, r3
  352ab0: 47a0         	blx	r4
  352ab2: ab06         	add	r3, sp, #0x18
  352ab4: 4618         	mov	r0, r3
  352ab6: f062 f72d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x462e5a
  352aba: ab05         	add	r3, sp, #0x14
  352abc: 4618         	mov	r0, r3
  352abe: f037 f49d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x43793a
  352ac2: 9b03         	ldr	r3, [sp, #0xc]
  352ac4: 681b         	ldr	r3, [r3]
  352ac6: 33c8         	adds	r3, #0xc8
  352ac8: 681b         	ldr	r3, [r3]
  352aca: 9903         	ldr	r1, [sp, #0xc]
  352acc: 9a03         	ldr	r2, [sp, #0xc]
  352ace: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  352ad2: 4608         	mov	r0, r1
  352ad4: 4611         	mov	r1, r2
  352ad6: 4798         	blx	r3
  352ad8: 4b3d         	ldr	r3, [pc, #0xf4]         @ 0x352bd0 <LocalGameLayer::init()+0x5b0>
  352ada: 447b         	add	r3, pc
  352adc: 4618         	mov	r0, r3
  352ade: f062 f40f    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x46281e
  352ae2: 4603         	mov	r3, r0
  352ae4: 2220         	movs	r2, #0x20
  352ae6: 9200         	str	r2, [sp]
  352ae8: 4a3a         	ldr	r2, [pc, #0xe8]         @ 0x352bd4 <LocalGameLayer::init()+0x5b4>
  352aea: 447a         	add	r2, pc
  352aec: 4610         	mov	r0, r2
  352aee: 4619         	mov	r1, r3
  352af0: 2220         	movs	r2, #0x20
  352af2: 2320         	movs	r3, #0x20
  352af4: f252 fc40    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x252880
  352af8: 4602         	mov	r2, r0
  352afa: 9b03         	ldr	r3, [sp, #0xc]
  352afc: f8c3 2114    	str.w	r2, [r3, #0x114]
  352b00: 9b03         	ldr	r3, [sp, #0xc]
  352b02: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  352b06: 4618         	mov	r0, r3
  352b08: f245 f9ee    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2453dc
  352b0c: 9b03         	ldr	r3, [sp, #0xc]
  352b0e: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  352b12: eddd 7a12    	vldr	s15, [sp, #72]
  352b16: eefd 7ae7    	vcvt.s32.f32	s15, s15
  352b1a: ee17 2a90    	vmov	r2, s15
  352b1e: 4618         	mov	r0, r3
  352b20: 4611         	mov	r1, r2
  352b22: f253 f92f    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x25325e
  352b26: 9b03         	ldr	r3, [sp, #0xc]
  352b28: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  352b2c: 681b         	ldr	r3, [r3]
  352b2e: 3340         	adds	r3, #0x40
  352b30: 681b         	ldr	r3, [r3]
  352b32: 9a03         	ldr	r2, [sp, #0xc]
  352b34: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  352b38: 4610         	mov	r0, r2
  352b3a: 9911         	ldr	r1, [sp, #0x44]
  352b3c: 4798         	blx	r3
  352b3e: 9b03         	ldr	r3, [sp, #0xc]
  352b40: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  352b44: 681b         	ldr	r3, [r3]
  352b46: 334c         	adds	r3, #0x4c
  352b48: 681c         	ldr	r4, [r3]
  352b4a: 9b03         	ldr	r3, [sp, #0xc]
  352b4c: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  352b50: 461d         	mov	r5, r3
  352b52: 9b03         	ldr	r3, [sp, #0xc]
  352b54: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  352b58: 681b         	ldr	r3, [r3]
  352b5a: 3350         	adds	r3, #0x50
  352b5c: 681b         	ldr	r3, [r3]
  352b5e: 9a03         	ldr	r2, [sp, #0xc]
  352b60: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  352b64: 4610         	mov	r0, r2
  352b66: 4798         	blx	r3
  352b68: 4603         	mov	r3, r0
  352b6a: 681e         	ldr	r6, [r3]
  352b6c: 9b03         	ldr	r3, [sp, #0xc]
  352b6e: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  352b72: 681b         	ldr	r3, [r3]
  352b74: 3350         	adds	r3, #0x50
  352b76: 681b         	ldr	r3, [r3]
  352b78: 9a03         	ldr	r2, [sp, #0xc]
  352b7a: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  352b7e: 4610         	mov	r0, r2
  352b80: 4798         	blx	r3
  352b82: 4603         	mov	r3, r0
  352b84: 685b         	ldr	r3, [r3, #0x4]
  352b86: aa18         	add	r2, sp, #0x60
  352b88: 4610         	mov	r0, r2
  352b8a: 4631         	mov	r1, r6
  352b8c: 461a         	mov	r2, r3
  352b8e: f240 f8af    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x24015e
  352b92: e021         	b	0x352bd8 <LocalGameLayer::init()+0x5b8> @ imm = #0x42
  352b94: f3af 8000    	nop.w
  352ba0: 0000         	movs	r0, r0
  352ba2: 4270         	rsbs	r0, r6, #0
  352ba4: d724         	bvc	0x352bf0 <LocalGameLayer::init()+0x5d0> @ imm = #0x48
  352ba6: ffff 9564    	<unknown>
  352baa: 0047         	lsls	r7, r0, #0x1
  352bac: 9560         	str	r5, [sp, #0x180]
  352bae: 0047         	lsls	r7, r0, #0x1
  352bb0: 955c         	str	r5, [sp, #0x170]
  352bb2: 0047         	lsls	r7, r0, #0x1
  352bb4: 9558         	str	r5, [sp, #0x160]
  352bb6: 0047         	lsls	r7, r0, #0x1
  352bb8: db68         	blt	0x352c8c <LocalGameLayer::init()+0x66c> @ imm = #0xd0
  352bba: ffff db6c    	vtbx.8	d29, {d15, d16, d17, d18}, d28
  352bbe: ffff db70    	<unknown>
  352bc2: ffff db74    	<unknown>
  352bc6: ffff dd88    	<unknown>
  352bca: 005e         	lsls	r6, r3, #0x1
  352bcc: 92fc         	str	r2, [sp, #0x3f0]
  352bce: 0047         	lsls	r7, r0, #0x1
  352bd0: dbde         	blt	0x352b90 <LocalGameLayer::init()+0x570> @ imm = #-0x44
  352bd2: 005e         	lsls	r6, r3, #0x1
  352bd4: 915e         	str	r1, [sp, #0x178]
  352bd6: 0047         	lsls	r7, r0, #0x1
  352bd8: eddd 7a13    	vldr	s15, [sp, #76]
  352bdc: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  352be0: ab26         	add	r3, sp, #0x98
  352be2: 4618         	mov	r0, r3
  352be4: ed9f 0bb2    	vldr	d0, [pc, #712]          @ 0x352eb0 <LocalGameLayer::init()+0x890>
  352be8: eeb0 1b47    	vmov.f64	d1, d7
  352bec: f7fe fddc    	bl	0x3517a8 <LobbyLayer::scene()+0x1dc> @ imm = #-0x1448
  352bf0: ed9d 8b26    	vldr	d8, [sp, #152]
  352bf4: 9b03         	ldr	r3, [sp, #0xc]
  352bf6: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  352bfa: 681b         	ldr	r3, [r3]
  352bfc: f503 73fe    	add.w	r3, r3, #0x1fc
  352c00: 681b         	ldr	r3, [r3]
  352c02: 9a03         	ldr	r2, [sp, #0xc]
  352c04: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  352c08: 4610         	mov	r0, r2
  352c0a: 4798         	blx	r3
  352c0c: 4606         	mov	r6, r0
  352c0e: ab05         	add	r3, sp, #0x14
  352c10: 4618         	mov	r0, r3
  352c12: f037 f3ef    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4377de
  352c16: aa06         	add	r2, sp, #0x18
  352c18: ab05         	add	r3, sp, #0x14
  352c1a: 4610         	mov	r0, r2
  352c1c: 4631         	mov	r1, r6
  352c1e: 461a         	mov	r2, r3
  352c20: f063 f71e    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x463e3c
  352c24: ab06         	add	r3, sp, #0x18
  352c26: 4618         	mov	r0, r3
  352c28: f062 f218    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x462430
  352c2c: 4603         	mov	r3, r0
  352c2e: ee07 3a90    	vmov	s15, r3
  352c32: eeb8 7a67    	vcvt.f32.u32	s14, s15
  352c36: eddd 7a12    	vldr	s15, [sp, #72]
  352c3a: ee27 7a27    	vmul.f32	s14, s14, s15
  352c3e: eddd 7a11    	vldr	s15, [sp, #68]
  352c42: ee27 7a27    	vmul.f32	s14, s14, s15
  352c46: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  352c4a: eec7 7a27    	vdiv.f32	s15, s14, s15
  352c4e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  352c52: ee38 7b47    	vsub.f64	d7, d8, d7
  352c56: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  352c5a: eddd 7a13    	vldr	s15, [sp, #76]
  352c5e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  352c62: ab2a         	add	r3, sp, #0xa8
  352c64: 4618         	mov	r0, r3
  352c66: ed9f 0b92    	vldr	d0, [pc, #584]          @ 0x352eb0 <LocalGameLayer::init()+0x890>
  352c6a: eeb0 1b47    	vmov.f64	d1, d7
  352c6e: f7fe fd9b    	bl	0x3517a8 <LobbyLayer::scene()+0x1dc> @ imm = #-0x14ca
  352c72: ed9d 7b2c    	vldr	d7, [sp, #176]
  352c76: eef7 7bc7    	vcvt.f32.f64	s15, d7
  352c7a: ab1a         	add	r3, sp, #0x68
  352c7c: 4618         	mov	r0, r3
  352c7e: ee18 1a10    	vmov	r1, s16
  352c82: ee17 2a90    	vmov	r2, s15
  352c86: f240 f833    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x240066
  352c8a: a91c         	add	r1, sp, #0x70
  352c8c: aa18         	add	r2, sp, #0x60
  352c8e: ab1a         	add	r3, sp, #0x68
  352c90: 4608         	mov	r0, r1
  352c92: 4611         	mov	r1, r2
  352c94: 461a         	mov	r2, r3
  352c96: f7fe fd77    	bl	0x351788 <LobbyLayer::scene()+0x1bc> @ imm = #-0x1512
  352c9a: ab1c         	add	r3, sp, #0x70
  352c9c: 4628         	mov	r0, r5
  352c9e: 4619         	mov	r1, r3
  352ca0: 47a0         	blx	r4
  352ca2: ab06         	add	r3, sp, #0x18
  352ca4: 4618         	mov	r0, r3
  352ca6: f062 f635    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x462c6a
  352caa: ab05         	add	r3, sp, #0x14
  352cac: 4618         	mov	r0, r3
  352cae: f037 f3a5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x43774a
  352cb2: 9b03         	ldr	r3, [sp, #0xc]
  352cb4: 681b         	ldr	r3, [r3]
  352cb6: 33c8         	adds	r3, #0xc8
  352cb8: 681b         	ldr	r3, [r3]
  352cba: 9903         	ldr	r1, [sp, #0xc]
  352cbc: 9a03         	ldr	r2, [sp, #0xc]
  352cbe: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  352cc2: 4608         	mov	r0, r1
  352cc4: 4611         	mov	r1, r2
  352cc6: 4798         	blx	r3
  352cc8: 4b7b         	ldr	r3, [pc, #0x1ec]        @ 0x352eb8 <LocalGameLayer::init()+0x898>
  352cca: 447b         	add	r3, pc
  352ccc: 4618         	mov	r0, r3
  352cce: f062 f317    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x46262e
  352cd2: 4603         	mov	r3, r0
  352cd4: 2220         	movs	r2, #0x20
  352cd6: 9200         	str	r2, [sp]
  352cd8: 4a78         	ldr	r2, [pc, #0x1e0]        @ 0x352ebc <LocalGameLayer::init()+0x89c>
  352cda: 447a         	add	r2, pc
  352cdc: 4610         	mov	r0, r2
  352cde: 4619         	mov	r1, r3
  352ce0: 2220         	movs	r2, #0x20
  352ce2: 2320         	movs	r3, #0x20
  352ce4: f252 fb48    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x252690
  352ce8: 4602         	mov	r2, r0
  352cea: 9b03         	ldr	r3, [sp, #0xc]
  352cec: f8c3 2118    	str.w	r2, [r3, #0x118]
  352cf0: 9b03         	ldr	r3, [sp, #0xc]
  352cf2: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  352cf6: 4618         	mov	r0, r3
  352cf8: f245 f8f6    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2451ec
  352cfc: 9b03         	ldr	r3, [sp, #0xc]
  352cfe: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  352d02: 681b         	ldr	r3, [r3]
  352d04: 334c         	adds	r3, #0x4c
  352d06: 681c         	ldr	r4, [r3]
  352d08: 9b03         	ldr	r3, [sp, #0xc]
  352d0a: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  352d0e: 461d         	mov	r5, r3
  352d10: 9b03         	ldr	r3, [sp, #0xc]
  352d12: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  352d16: 681b         	ldr	r3, [r3]
  352d18: 3350         	adds	r3, #0x50
  352d1a: 681b         	ldr	r3, [r3]
  352d1c: 9a03         	ldr	r2, [sp, #0xc]
  352d1e: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  352d22: 4610         	mov	r0, r2
  352d24: 4798         	blx	r3
  352d26: 4603         	mov	r3, r0
  352d28: 681e         	ldr	r6, [r3]
  352d2a: 9b03         	ldr	r3, [sp, #0xc]
  352d2c: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  352d30: 681b         	ldr	r3, [r3]
  352d32: 3350         	adds	r3, #0x50
  352d34: 681b         	ldr	r3, [r3]
  352d36: 9a03         	ldr	r2, [sp, #0xc]
  352d38: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  352d3c: 4610         	mov	r0, r2
  352d3e: 4798         	blx	r3
  352d40: 4603         	mov	r3, r0
  352d42: 685b         	ldr	r3, [r3, #0x4]
  352d44: aa18         	add	r2, sp, #0x60
  352d46: 4610         	mov	r0, r2
  352d48: 4631         	mov	r1, r6
  352d4a: 461a         	mov	r2, r3
  352d4c: f23f ffd0    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x23ffa0
  352d50: eddd 7a13    	vldr	s15, [sp, #76]
  352d54: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  352d58: ab26         	add	r3, sp, #0x98
  352d5a: 4618         	mov	r0, r3
  352d5c: ed9f 0b54    	vldr	d0, [pc, #336]          @ 0x352eb0 <LocalGameLayer::init()+0x890>
  352d60: eeb0 1b47    	vmov.f64	d1, d7
  352d64: f7fe fd20    	bl	0x3517a8 <LobbyLayer::scene()+0x1dc> @ imm = #-0x15c0
  352d68: ed9d 8b26    	vldr	d8, [sp, #152]
  352d6c: 9b03         	ldr	r3, [sp, #0xc]
  352d6e: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  352d72: 681b         	ldr	r3, [r3]
  352d74: f503 73fe    	add.w	r3, r3, #0x1fc
  352d78: 681b         	ldr	r3, [r3]
  352d7a: 9a03         	ldr	r2, [sp, #0xc]
  352d7c: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  352d80: 4610         	mov	r0, r2
  352d82: 4798         	blx	r3
  352d84: 4606         	mov	r6, r0
  352d86: ab05         	add	r3, sp, #0x14
  352d88: 4618         	mov	r0, r3
  352d8a: f037 f333    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x437666
  352d8e: aa06         	add	r2, sp, #0x18
  352d90: ab05         	add	r3, sp, #0x14
  352d92: 4610         	mov	r0, r2
  352d94: 4631         	mov	r1, r6
  352d96: 461a         	mov	r2, r3
  352d98: f063 f662    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x463cc4
  352d9c: ab06         	add	r3, sp, #0x18
  352d9e: 4618         	mov	r0, r3
  352da0: f062 f15c    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x4622b8
  352da4: 4603         	mov	r3, r0
  352da6: ee07 3a90    	vmov	s15, r3
  352daa: eeb8 7a67    	vcvt.f32.u32	s14, s15
  352dae: eddd 7a12    	vldr	s15, [sp, #72]
  352db2: ee27 7a27    	vmul.f32	s14, s14, s15
  352db6: eddd 7a11    	vldr	s15, [sp, #68]
  352dba: ee27 7a27    	vmul.f32	s14, s14, s15
  352dbe: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  352dc2: eec7 7a27    	vdiv.f32	s15, s14, s15
  352dc6: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  352dca: ee38 7b47    	vsub.f64	d7, d8, d7
  352dce: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  352dd2: eddd 7a13    	vldr	s15, [sp, #76]
  352dd6: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  352dda: ab2a         	add	r3, sp, #0xa8
  352ddc: 4618         	mov	r0, r3
  352dde: ed9f 0b34    	vldr	d0, [pc, #208]          @ 0x352eb0 <LocalGameLayer::init()+0x890>
  352de2: eeb0 1b47    	vmov.f64	d1, d7
  352de6: f7fe fcdf    	bl	0x3517a8 <LobbyLayer::scene()+0x1dc> @ imm = #-0x1642
  352dea: ed9d 7b2c    	vldr	d7, [sp, #176]
  352dee: eef7 7bc7    	vcvt.f32.f64	s15, d7
  352df2: ab1a         	add	r3, sp, #0x68
  352df4: 4618         	mov	r0, r3
  352df6: ee18 1a10    	vmov	r1, s16
  352dfa: ee17 2a90    	vmov	r2, s15
  352dfe: f23f ff77    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x23feee
  352e02: a91c         	add	r1, sp, #0x70
  352e04: aa18         	add	r2, sp, #0x60
  352e06: ab1a         	add	r3, sp, #0x68
  352e08: 4608         	mov	r0, r1
  352e0a: 4611         	mov	r1, r2
  352e0c: 461a         	mov	r2, r3
  352e0e: f7fe fcbb    	bl	0x351788 <LobbyLayer::scene()+0x1bc> @ imm = #-0x168a
  352e12: ab1c         	add	r3, sp, #0x70
  352e14: 4628         	mov	r0, r5
  352e16: 4619         	mov	r1, r3
  352e18: 47a0         	blx	r4
  352e1a: ab06         	add	r3, sp, #0x18
  352e1c: 4618         	mov	r0, r3
  352e1e: f062 f579    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x462af2
  352e22: ab05         	add	r3, sp, #0x14
  352e24: 4618         	mov	r0, r3
  352e26: f037 f2e9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4375d2
  352e2a: 9b03         	ldr	r3, [sp, #0xc]
  352e2c: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  352e30: 681b         	ldr	r3, [r3]
  352e32: 3340         	adds	r3, #0x40
  352e34: 681b         	ldr	r3, [r3]
  352e36: 9a03         	ldr	r2, [sp, #0xc]
  352e38: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  352e3c: 4610         	mov	r0, r2
  352e3e: 9911         	ldr	r1, [sp, #0x44]
  352e40: 4798         	blx	r3
  352e42: 9b03         	ldr	r3, [sp, #0xc]
  352e44: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  352e48: eddd 7a12    	vldr	s15, [sp, #72]
  352e4c: eefd 7ae7    	vcvt.s32.f32	s15, s15
  352e50: ee17 2a90    	vmov	r2, s15
  352e54: 4618         	mov	r0, r3
  352e56: 4611         	mov	r1, r2
  352e58: f252 ff94    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x252f28
  352e5c: 9b03         	ldr	r3, [sp, #0xc]
  352e5e: 681b         	ldr	r3, [r3]
  352e60: 33c8         	adds	r3, #0xc8
  352e62: 681b         	ldr	r3, [r3]
  352e64: 9903         	ldr	r1, [sp, #0xc]
  352e66: 9a03         	ldr	r2, [sp, #0xc]
  352e68: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  352e6c: 4608         	mov	r0, r1
  352e6e: 4611         	mov	r1, r2
  352e70: 4798         	blx	r3
  352e72: 4b13         	ldr	r3, [pc, #0x4c]         @ 0x352ec0 <LocalGameLayer::init()+0x8a0>
  352e74: 447b         	add	r3, pc
  352e76: 4618         	mov	r0, r3
  352e78: f285 f984    	bl	0x5d8184 <cocos2d::CCSprite::create(char const*)> @ imm = #0x285308
  352e7c: 4602         	mov	r2, r0
  352e7e: 9b03         	ldr	r3, [sp, #0xc]
  352e80: f8c3 210c    	str.w	r2, [r3, #0x10c]
  352e84: 9b03         	ldr	r3, [sp, #0xc]
  352e86: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  352e8a: 681b         	ldr	r3, [r3]
  352e8c: 334c         	adds	r3, #0x4c
  352e8e: 681b         	ldr	r3, [r3]
  352e90: 9a03         	ldr	r2, [sp, #0xc]
  352e92: f8d2 110c    	ldr.w	r1, [r2, #0x10c]
  352e96: aa16         	add	r2, sp, #0x58
  352e98: 4608         	mov	r0, r1
  352e9a: 4611         	mov	r1, r2
  352e9c: 4798         	blx	r3
  352e9e: 9b03         	ldr	r3, [sp, #0xc]
  352ea0: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  352ea4: 681b         	ldr	r3, [r3]
  352ea6: f503 73d2    	add.w	r3, r3, #0x1a4
  352eaa: 681b         	ldr	r3, [r3]
  352eac: e00a         	b	0x352ec4 <LocalGameLayer::init()+0x8a4> @ imm = #0x14
  352eae: bf00         	nop
  352eb8: d9ee         	bls	0x352e98 <LocalGameLayer::init()+0x878> @ imm = #-0x24
  352eba: 005e         	lsls	r6, r3, #0x1
  352ebc: 8f7a         	ldrh	r2, [r7, #0x3a]
  352ebe: 0047         	lsls	r7, r0, #0x1
  352ec0: 8de8         	ldrh	r0, [r5, #0x2e]
  352ec2: 0047         	lsls	r7, r0, #0x1
  352ec4: 9a03         	ldr	r2, [sp, #0xc]
  352ec6: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  352eca: 4610         	mov	r0, r2
  352ecc: 2123         	movs	r1, #0x23
  352ece: 4798         	blx	r3
  352ed0: 9b03         	ldr	r3, [sp, #0xc]
  352ed2: 681b         	ldr	r3, [r3]
  352ed4: 33c8         	adds	r3, #0xc8
  352ed6: 681b         	ldr	r3, [r3]
  352ed8: 9903         	ldr	r1, [sp, #0xc]
  352eda: 9a03         	ldr	r2, [sp, #0xc]
  352edc: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  352ee0: 4608         	mov	r0, r1
  352ee2: 4611         	mov	r1, r2
  352ee4: 4798         	blx	r3
  352ee6: 2301         	movs	r3, #0x1
  352ee8: e020         	b	0x352f2c <LocalGameLayer::init()+0x90c> @ imm = #0x40
  352eea: ab06         	add	r3, sp, #0x18
  352eec: 4618         	mov	r0, r3
  352eee: f062 f511    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x462a22
  352ef2: e7ff         	b	0x352ef4 <LocalGameLayer::init()+0x8d4> @ imm = #-0x2
  352ef4: ab05         	add	r3, sp, #0x14
  352ef6: 4618         	mov	r0, r3
  352ef8: f037 f280    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x437500
  352efc: f035 f0d6    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4351ac
  352f00: ab06         	add	r3, sp, #0x18
  352f02: 4618         	mov	r0, r3
  352f04: f062 f506    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x462a0c
  352f08: e7ff         	b	0x352f0a <LocalGameLayer::init()+0x8ea> @ imm = #-0x2
  352f0a: ab05         	add	r3, sp, #0x14
  352f0c: 4618         	mov	r0, r3
  352f0e: f037 f275    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4374ea
  352f12: f035 f0cb    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x435196
  352f16: ab06         	add	r3, sp, #0x18
  352f18: 4618         	mov	r0, r3
  352f1a: f062 f4fb    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4629f6
  352f1e: e7ff         	b	0x352f20 <LocalGameLayer::init()+0x900> @ imm = #-0x2
  352f20: ab05         	add	r3, sp, #0x14
  352f22: 4618         	mov	r0, r3
  352f24: f037 f26a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4374d4
  352f28: f035 f0c0    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x435180
  352f2c: 4618         	mov	r0, r3
  352f2e: b02e         	add	sp, #0xb8
  352f30: ecbd 8b02    	vpop	{d8}
  352f34: bd70         	pop	{r4, r5, r6, pc}

// ==== LocalGameLayer::~LocalGameLayer
//      file offset 0x352f38 (= ELF address; Ghidra 0x362f38), 184 bytes, Thumb-2
  352f38: b500         	push	{lr}
  352f3a: b083         	sub	sp, #0xc
  352f3c: 9001         	str	r0, [sp, #0x4]
  352f3e: 4b2a         	ldr	r3, [pc, #0xa8]         @ 0x352fe8 <LocalGameLayer::~LocalGameLayer()+0xb0>
  352f40: 447b         	add	r3, pc
  352f42: 9a01         	ldr	r2, [sp, #0x4]
  352f44: 4929         	ldr	r1, [pc, #0xa4]         @ 0x352fec <LocalGameLayer::~LocalGameLayer()+0xb4>
  352f46: 5859         	ldr	r1, [r3, r1]
  352f48: 3108         	adds	r1, #0x8
  352f4a: 6011         	str	r1, [r2]
  352f4c: 9a01         	ldr	r2, [sp, #0x4]
  352f4e: 4927         	ldr	r1, [pc, #0x9c]         @ 0x352fec <LocalGameLayer::~LocalGameLayer()+0xb4>
  352f50: 5859         	ldr	r1, [r3, r1]
  352f52: f501 7104    	add.w	r1, r1, #0x210
  352f56: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  352f5a: 9a01         	ldr	r2, [sp, #0x4]
  352f5c: 4923         	ldr	r1, [pc, #0x8c]         @ 0x352fec <LocalGameLayer::~LocalGameLayer()+0xb4>
  352f5e: 5859         	ldr	r1, [r3, r1]
  352f60: f501 7110    	add.w	r1, r1, #0x240
  352f64: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  352f68: 9a01         	ldr	r2, [sp, #0x4]
  352f6a: 4920         	ldr	r1, [pc, #0x80]         @ 0x352fec <LocalGameLayer::~LocalGameLayer()+0xb4>
  352f6c: 585b         	ldr	r3, [r3, r1]
  352f6e: f503 7313    	add.w	r3, r3, #0x24c
  352f72: f8c2 30ec    	str.w	r3, [r2, #0xec]
  352f76: 9b01         	ldr	r3, [sp, #0x4]
  352f78: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  352f7c: 4618         	mov	r0, r3
  352f7e: f244 ff9b    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x244f36
  352f82: 9b01         	ldr	r3, [sp, #0x4]
  352f84: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  352f88: 4618         	mov	r0, r3
  352f8a: f244 ff95    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x244f2a
  352f8e: 9b01         	ldr	r3, [sp, #0x4]
  352f90: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  352f94: 4618         	mov	r0, r3
  352f96: f244 ff8f    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x244f1e
  352f9a: 9b01         	ldr	r3, [sp, #0x4]
  352f9c: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  352fa0: 4618         	mov	r0, r3
  352fa2: f244 ff89    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x244f12
  352fa6: 9b01         	ldr	r3, [sp, #0x4]
  352fa8: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  352fac: 4618         	mov	r0, r3
  352fae: f244 ff83    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x244f06
  352fb2: 9b01         	ldr	r3, [sp, #0x4]
  352fb4: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  352fb8: 4618         	mov	r0, r3
  352fba: f244 ff7d    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x244efa
  352fbe: 9b01         	ldr	r3, [sp, #0x4]
  352fc0: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  352fc4: 4618         	mov	r0, r3
  352fc6: f244 ff77    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x244eee
  352fca: 9b01         	ldr	r3, [sp, #0x4]
  352fcc: 4618         	mov	r0, r3
  352fce: f25a f8bd    	bl	0x5ad14c <cocos2d::CCLayer::~CCLayer()> @ imm = #0x25a17a
  352fd2: 2300         	movs	r3, #0x0
  352fd4: 2b00         	cmp	r3, #0x0
  352fd6: d002         	beq	0x352fde <LocalGameLayer::~LocalGameLayer()+0xa6> @ imm = #0x4
  352fd8: 9801         	ldr	r0, [sp, #0x4]
  352fda: f035 f063    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4350c6
  352fde: 9b01         	ldr	r3, [sp, #0x4]
  352fe0: 4618         	mov	r0, r3
  352fe2: b003         	add	sp, #0xc
  352fe4: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x352fe7); words below are literal-pool data ---
  352fe8: fac8 005d    	<unknown>
  352fec: db64         	blt	0x3530b8 <LocalGameLayer::onSurvival(cocos2d::CCObject*)+0x14> @ imm = #0xc8
  352fee: ffff f1a0    	<unknown>

// ==== LocalGameLayer::~LocalGameLayer
//      file offset 0x352ff0 (= ELF address; Ghidra 0x362ff0), 8 bytes, Thumb-2
  352ff0: f1a0 00e4    	sub.w	r0, r0, #0xe4
  352ff4: f7ff bfa0    	b.w	0x352f38 <LocalGameLayer::~LocalGameLayer()> @ imm = #-0xc0

// ==== LocalGameLayer::~LocalGameLayer
//      file offset 0x352ff8 (= ELF address; Ghidra 0x362ff8), 28 bytes, Thumb-2
  352ff8: b500         	push	{lr}
  352ffa: b083         	sub	sp, #0xc
  352ffc: 9001         	str	r0, [sp, #0x4]
  352ffe: 9801         	ldr	r0, [sp, #0x4]
  353000: f7ff ff9a    	bl	0x352f38 <LocalGameLayer::~LocalGameLayer()> @ imm = #-0xcc
  353004: 9801         	ldr	r0, [sp, #0x4]
  353006: f035 f04d    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x43509a
  35300a: 9b01         	ldr	r3, [sp, #0x4]
  35300c: 4618         	mov	r0, r3
  35300e: b003         	add	sp, #0xc
  353010: f85d fb04    	ldr	pc, [sp], #4

// ==== LocalGameLayer::~LocalGameLayer
//      file offset 0x353014 (= ELF address; Ghidra 0x363014), 8 bytes, Thumb-2
  353014: f1a0 00e4    	sub.w	r0, r0, #0xe4
  353018: f7ff bfee    	b.w	0x352ff8 <LocalGameLayer::~LocalGameLayer()> @ imm = #-0x24

// ==== LocalGameLayer::onTraining
//      file offset 0x35301c (= ELF address; Ghidra 0x36301c), 136 bytes, Thumb-2
  35301c: b530         	push	{r4, r5, lr}
  35301e: b083         	sub	sp, #0xc
  353020: 9001         	str	r0, [sp, #0x4]
  353022: 9100         	str	r1, [sp]
  353024: 4c19         	ldr	r4, [pc, #0x64]         @ 0x35308c <LocalGameLayer::onTraining(cocos2d::CCObject*)+0x70>
  353026: 447c         	add	r4, pc
  353028: 9b01         	ldr	r3, [sp, #0x4]
  35302a: f893 3108    	ldrb.w	r3, [r3, #0x108]
  35302e: 2b00         	cmp	r3, #0x0
  353030: d000         	beq	0x353034 <LocalGameLayer::onTraining(cocos2d::CCObject*)+0x18> @ imm = #0x0
  353032: e028         	b	0x353086 <LocalGameLayer::onTraining(cocos2d::CCObject*)+0x6a> @ imm = #0x50
  353034: 9b01         	ldr	r3, [sp, #0x4]
  353036: 2201         	movs	r2, #0x1
  353038: f883 2108    	strb.w	r2, [r3, #0x108]
  35303c: 4b14         	ldr	r3, [pc, #0x50]         @ 0x353090 <LocalGameLayer::onTraining(cocos2d::CCObject*)+0x74>
  35303e: 58e3         	ldr	r3, [r4, r3]
  353040: 2201         	movs	r2, #0x1
  353042: 701a         	strb	r2, [r3]
  353044: 4b13         	ldr	r3, [pc, #0x4c]         @ 0x353094 <LocalGameLayer::onTraining(cocos2d::CCObject*)+0x78>
  353046: 58e3         	ldr	r3, [r4, r3]
  353048: 681b         	ldr	r3, [r3]
  35304a: 4618         	mov	r0, r3
  35304c: 210d         	movs	r1, #0xd
  35304e: f0a4 feb7    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xa4d6e
  353052: 4b11         	ldr	r3, [pc, #0x44]         @ 0x353098 <LocalGameLayer::onTraining(cocos2d::CCObject*)+0x7c>
  353054: 58e3         	ldr	r3, [r4, r3]
  353056: 2200         	movs	r2, #0x0
  353058: 601a         	str	r2, [r3]
  35305a: 4b10         	ldr	r3, [pc, #0x40]         @ 0x35309c <LocalGameLayer::onTraining(cocos2d::CCObject*)+0x80>
  35305c: 58e3         	ldr	r3, [r4, r3]
  35305e: 2201         	movs	r2, #0x1
  353060: 601a         	str	r2, [r3]
  353062: f248 fa87    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x24850e
  353066: 4604         	mov	r4, r0
  353068: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x3530a0 <LocalGameLayer::onTraining(cocos2d::CCObject*)+0x84>
  35306a: 447b         	add	r3, pc
  35306c: 681d         	ldr	r5, [r3]
  35306e: f0ab fb95    	bl	0x3fe79c <StageLayer::scene()> @ imm = #0xab72a
  353072: 4603         	mov	r3, r0
  353074: 4628         	mov	r0, r5
  353076: 4619         	mov	r1, r3
  353078: f25e f9d6    	bl	0x5b1428 <cocos2d::CCTransitionSlideInR::create(float, cocos2d::CCScene*)> @ imm = #0x25e3ac
  35307c: 4603         	mov	r3, r0
  35307e: 4620         	mov	r0, r4
  353080: 4619         	mov	r1, r3
  353082: f249 f96b    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x2492d6
  353086: b003         	add	sp, #0xc
  353088: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x353089); words below are literal-pool data ---
  35308a: bf00         	nop
  35308c: f9e2 005d    	<unknown>
  353090: da58         	bge	0x353144 <LocalGameLayer::onBack(cocos2d::CCObject*)+0x18> @ imm = #0xb0
  353092: ffff d730    	vqshl.u32	d29, d16, #0x1f
  353096: ffff d838    	vqshrun.s64	d29, q12, #0x1
  35309a: ffff daa0    	vtbl.8	d29, {d31, fpinst2, mvfr0}, d16
  35309e: ffff 033a    	vrsra.u32	d16, d26, #0x1
  3530a2: 005e         	lsls	r6, r3, #0x1

// ==== LocalGameLayer::onSurvival
//      file offset 0x3530a4 (= ELF address; Ghidra 0x3630a4), 136 bytes, Thumb-2
  3530a4: b530         	push	{r4, r5, lr}
  3530a6: b083         	sub	sp, #0xc
  3530a8: 9001         	str	r0, [sp, #0x4]
  3530aa: 9100         	str	r1, [sp]
  3530ac: 4c19         	ldr	r4, [pc, #0x64]         @ 0x353114 <LocalGameLayer::onSurvival(cocos2d::CCObject*)+0x70>
  3530ae: 447c         	add	r4, pc
  3530b0: 9b01         	ldr	r3, [sp, #0x4]
  3530b2: f893 3108    	ldrb.w	r3, [r3, #0x108]
  3530b6: 2b00         	cmp	r3, #0x0
  3530b8: d000         	beq	0x3530bc <LocalGameLayer::onSurvival(cocos2d::CCObject*)+0x18> @ imm = #0x0
  3530ba: e028         	b	0x35310e <LocalGameLayer::onSurvival(cocos2d::CCObject*)+0x6a> @ imm = #0x50
  3530bc: 9b01         	ldr	r3, [sp, #0x4]
  3530be: 2201         	movs	r2, #0x1
  3530c0: f883 2108    	strb.w	r2, [r3, #0x108]
  3530c4: 4b14         	ldr	r3, [pc, #0x50]         @ 0x353118 <LocalGameLayer::onSurvival(cocos2d::CCObject*)+0x74>
  3530c6: 58e3         	ldr	r3, [r4, r3]
  3530c8: 2200         	movs	r2, #0x0
  3530ca: 701a         	strb	r2, [r3]
  3530cc: 4b13         	ldr	r3, [pc, #0x4c]         @ 0x35311c <LocalGameLayer::onSurvival(cocos2d::CCObject*)+0x78>
  3530ce: 58e3         	ldr	r3, [r4, r3]
  3530d0: 681b         	ldr	r3, [r3]
  3530d2: 4618         	mov	r0, r3
  3530d4: 210d         	movs	r1, #0xd
  3530d6: f0a4 fe73    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xa4ce6
  3530da: 4b11         	ldr	r3, [pc, #0x44]         @ 0x353120 <LocalGameLayer::onSurvival(cocos2d::CCObject*)+0x7c>
  3530dc: 58e3         	ldr	r3, [r4, r3]
  3530de: 2201         	movs	r2, #0x1
  3530e0: 601a         	str	r2, [r3]
  3530e2: 4b10         	ldr	r3, [pc, #0x40]         @ 0x353124 <LocalGameLayer::onSurvival(cocos2d::CCObject*)+0x80>
  3530e4: 58e3         	ldr	r3, [r4, r3]
  3530e6: 2202         	movs	r2, #0x2
  3530e8: 601a         	str	r2, [r3]
  3530ea: f248 fa43    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x248486
  3530ee: 4604         	mov	r4, r0
  3530f0: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x353128 <LocalGameLayer::onSurvival(cocos2d::CCObject*)+0x84>
  3530f2: 447b         	add	r3, pc
  3530f4: 681d         	ldr	r5, [r3]
  3530f6: f0ab fb51    	bl	0x3fe79c <StageLayer::scene()> @ imm = #0xab6a2
  3530fa: 4603         	mov	r3, r0
  3530fc: 4628         	mov	r0, r5
  3530fe: 4619         	mov	r1, r3
  353100: f25e f992    	bl	0x5b1428 <cocos2d::CCTransitionSlideInR::create(float, cocos2d::CCScene*)> @ imm = #0x25e324
  353104: 4603         	mov	r3, r0
  353106: 4620         	mov	r0, r4
  353108: 4619         	mov	r1, r3
  35310a: f249 f927    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x24924e
  35310e: b003         	add	sp, #0xc
  353110: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x353111); words below are literal-pool data ---
  353112: bf00         	nop
  353114: f95a 005d    	<unknown>
  353118: da58         	bge	0x3531cc <LocalGameLayer::onDA(cocos2d::CCObject*)+0x3c> @ imm = #0xb0
  35311a: ffff d730    	vqshl.u32	d29, d16, #0x1f
  35311e: ffff d838    	vqshrun.s64	d29, q12, #0x1
  353122: ffff daa0    	vtbl.8	d29, {d31, fpinst2, mvfr0}, d16
  353126: ffff 02b2    	vrshr.u64	d16, d18, #0x1
  35312a: 005e         	lsls	r6, r3, #0x1

// ==== LocalGameLayer::onBack
//      file offset 0x35312c (= ELF address; Ghidra 0x36312c), 100 bytes, Thumb-2
  35312c: b530         	push	{r4, r5, lr}
  35312e: b083         	sub	sp, #0xc
  353130: 9001         	str	r0, [sp, #0x4]
  353132: 9100         	str	r1, [sp]
  353134: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x353184 <LocalGameLayer::onBack(cocos2d::CCObject*)+0x58>
  353136: 447a         	add	r2, pc
  353138: 9b01         	ldr	r3, [sp, #0x4]
  35313a: f893 3108    	ldrb.w	r3, [r3, #0x108]
  35313e: 2b00         	cmp	r3, #0x0
  353140: d000         	beq	0x353144 <LocalGameLayer::onBack(cocos2d::CCObject*)+0x18> @ imm = #0x0
  353142: e01c         	b	0x35317e <LocalGameLayer::onBack(cocos2d::CCObject*)+0x52> @ imm = #0x38
  353144: 9b01         	ldr	r3, [sp, #0x4]
  353146: 2101         	movs	r1, #0x1
  353148: f883 1108    	strb.w	r1, [r3, #0x108]
  35314c: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x353188 <LocalGameLayer::onBack(cocos2d::CCObject*)+0x5c>
  35314e: 58d3         	ldr	r3, [r2, r3]
  353150: 681b         	ldr	r3, [r3]
  353152: 4618         	mov	r0, r3
  353154: 210d         	movs	r1, #0xd
  353156: f0a4 fe33    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xa4c66
  35315a: f248 fa0b    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x248416
  35315e: 4604         	mov	r4, r0
  353160: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x35318c <LocalGameLayer::onBack(cocos2d::CCObject*)+0x60>
  353162: 447b         	add	r3, pc
  353164: 681d         	ldr	r5, [r3]
  353166: f016 fcb5    	bl	0x369ad4 <MenuLayer::scene()> @ imm = #0x1696a
  35316a: 4603         	mov	r3, r0
  35316c: 4628         	mov	r0, r5
  35316e: 4619         	mov	r1, r3
  353170: f25e f8ca    	bl	0x5b1308 <cocos2d::CCTransitionSlideInL::create(float, cocos2d::CCScene*)> @ imm = #0x25e194
  353174: 4603         	mov	r3, r0
  353176: 4620         	mov	r0, r4
  353178: 4619         	mov	r1, r3
  35317a: f249 f8ef    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x2491de
  35317e: b003         	add	sp, #0xc
  353180: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x353181); words below are literal-pool data ---
  353182: bf00         	nop
  353184: f8d2 005d    	ldr.w	r0, [r2, #0x5d]
  353188: d730         	bvc	0x3531ec <LocalGameLayer::onDA(cocos2d::CCObject*)+0x5c> @ imm = #0x60
  35318a: ffff 0242    	<unknown>
  35318e: 005e         	lsls	r6, r3, #0x1

// ==== LocalGameLayer::onDA
//      file offset 0x353190 (= ELF address; Ghidra 0x363190), 44 bytes, Thumb-2
  353190: b500         	push	{lr}
  353192: b083         	sub	sp, #0xc
  353194: 9001         	str	r0, [sp, #0x4]
  353196: 9100         	str	r1, [sp]
  353198: 4a06         	ldr	r2, [pc, #0x18]         @ 0x3531b4 <LocalGameLayer::onDA(cocos2d::CCObject*)+0x24>
  35319a: 447a         	add	r2, pc
  35319c: 4b06         	ldr	r3, [pc, #0x18]         @ 0x3531b8 <LocalGameLayer::onDA(cocos2d::CCObject*)+0x28>
  35319e: 58d3         	ldr	r3, [r2, r3]
  3531a0: 681b         	ldr	r3, [r3]
  3531a2: 4618         	mov	r0, r3
  3531a4: 210d         	movs	r1, #0xd
  3531a6: f0a4 fe0b    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xa4c16
  3531aa: f0d9 f923    	bl	0x42c3f4 <ApplicationInterface::openDoodleArmyAppLink()> @ imm = #0xd9246
  3531ae: b003         	add	sp, #0xc
  3531b0: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3531b3); words below are literal-pool data ---
  3531b4: f86e 005d    	<unknown>
  3531b8: d730         	bvc	0x35321c <LocalGameLayer::onDA(cocos2d::CCObject*)+0x8c> @ imm = #0x60
  3531ba: ffff b510    	vsli.32	d27, d0, #0x1f
