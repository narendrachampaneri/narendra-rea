// CustomAvatarLayer: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 13 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../CustomAvatarLayer.cpp

// ==== CustomAvatarLayer::create
//      file offset 0x30e3dc (= ELF address; Ghidra 0x31e3dc), 112 bytes, Thumb-2
  30e3dc: b510         	push	{r4, lr}
  30e3de: b082         	sub	sp, #0x8
  30e3e0: f44f 7090    	mov.w	r0, #0x120
  30e3e4: f079 f2be    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x47957c
  30e3e8: 4603         	mov	r3, r0
  30e3ea: 461c         	mov	r4, r3
  30e3ec: 4620         	mov	r0, r4
  30e3ee: f000 f82d    	bl	0x30e44c <CustomAvatarLayer::CustomAvatarLayer()> @ imm = #0x5a
  30e3f2: 9401         	str	r4, [sp, #0x4]
  30e3f4: 9b01         	ldr	r3, [sp, #0x4]
  30e3f6: 2b00         	cmp	r3, #0x0
  30e3f8: d00a         	beq	0x30e410 <CustomAvatarLayer::create()+0x34> @ imm = #0x14
  30e3fa: 9b01         	ldr	r3, [sp, #0x4]
  30e3fc: 681b         	ldr	r3, [r3]
  30e3fe: 3318         	adds	r3, #0x18
  30e400: 681b         	ldr	r3, [r3]
  30e402: 9801         	ldr	r0, [sp, #0x4]
  30e404: 4798         	blx	r3
  30e406: 4603         	mov	r3, r0
  30e408: 2b00         	cmp	r3, #0x0
  30e40a: d001         	beq	0x30e410 <CustomAvatarLayer::create()+0x34> @ imm = #0x2
  30e40c: 2301         	movs	r3, #0x1
  30e40e: e000         	b	0x30e412 <CustomAvatarLayer::create()+0x36> @ imm = #0x0
  30e410: 2300         	movs	r3, #0x0
  30e412: 2b00         	cmp	r3, #0x0
  30e414: d005         	beq	0x30e422 <CustomAvatarLayer::create()+0x46> @ imm = #0xa
  30e416: 9b01         	ldr	r3, [sp, #0x4]
  30e418: 4618         	mov	r0, r3
  30e41a: f289 fd6f    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x289ade
  30e41e: 9b01         	ldr	r3, [sp, #0x4]
  30e420: e011         	b	0x30e446 <CustomAvatarLayer::create()+0x6a> @ imm = #0x22
  30e422: 9b01         	ldr	r3, [sp, #0x4]
  30e424: 2b00         	cmp	r3, #0x0
  30e426: d005         	beq	0x30e434 <CustomAvatarLayer::create()+0x58> @ imm = #0xa
  30e428: 9b01         	ldr	r3, [sp, #0x4]
  30e42a: 681b         	ldr	r3, [r3]
  30e42c: 3308         	adds	r3, #0x8
  30e42e: 681b         	ldr	r3, [r3]
  30e430: 9801         	ldr	r0, [sp, #0x4]
  30e432: 4798         	blx	r3
  30e434: 2300         	movs	r3, #0x0
  30e436: 9301         	str	r3, [sp, #0x4]
  30e438: 2300         	movs	r3, #0x0
  30e43a: e004         	b	0x30e446 <CustomAvatarLayer::create()+0x6a> @ imm = #0x8
  30e43c: 4620         	mov	r0, r4
  30e43e: f079 f631    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x479c62
  30e442: f079 f633    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x479c66
  30e446: 4618         	mov	r0, r3
  30e448: b002         	add	sp, #0x8
  30e44a: bd10         	pop	{r4, pc}

// ==== CustomAvatarLayer::CustomAvatarLayer
//      file offset 0x30e44c (= ELF address; Ghidra 0x31e44c), 88 bytes, Thumb-2
  30e44c: b510         	push	{r4, lr}
  30e44e: b082         	sub	sp, #0x8
  30e450: 9001         	str	r0, [sp, #0x4]
  30e452: 4c12         	ldr	r4, [pc, #0x48]         @ 0x30e49c <CustomAvatarLayer::CustomAvatarLayer()+0x50>
  30e454: 447c         	add	r4, pc
  30e456: 9b01         	ldr	r3, [sp, #0x4]
  30e458: 4618         	mov	r0, r3
  30e45a: f29e fdff    	bl	0x5ad05c <cocos2d::CCLayer::CCLayer()> @ imm = #0x29ebfe
  30e45e: 9b01         	ldr	r3, [sp, #0x4]
  30e460: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x30e4a0 <CustomAvatarLayer::CustomAvatarLayer()+0x54>
  30e462: 58a2         	ldr	r2, [r4, r2]
  30e464: 3208         	adds	r2, #0x8
  30e466: 601a         	str	r2, [r3]
  30e468: 9b01         	ldr	r3, [sp, #0x4]
  30e46a: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x30e4a0 <CustomAvatarLayer::CustomAvatarLayer()+0x54>
  30e46c: 58a2         	ldr	r2, [r4, r2]
  30e46e: f502 7204    	add.w	r2, r2, #0x210
  30e472: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  30e476: 9b01         	ldr	r3, [sp, #0x4]
  30e478: 4a09         	ldr	r2, [pc, #0x24]         @ 0x30e4a0 <CustomAvatarLayer::CustomAvatarLayer()+0x54>
  30e47a: 58a2         	ldr	r2, [r4, r2]
  30e47c: f502 7210    	add.w	r2, r2, #0x240
  30e480: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  30e484: 9b01         	ldr	r3, [sp, #0x4]
  30e486: 4a06         	ldr	r2, [pc, #0x18]         @ 0x30e4a0 <CustomAvatarLayer::CustomAvatarLayer()+0x54>
  30e488: 58a2         	ldr	r2, [r4, r2]
  30e48a: f502 7213    	add.w	r2, r2, #0x24c
  30e48e: f8c3 20ec    	str.w	r2, [r3, #0xec]
  30e492: 9b01         	ldr	r3, [sp, #0x4]
  30e494: 4618         	mov	r0, r3
  30e496: b002         	add	sp, #0x8
  30e498: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x30e499); words below are literal-pool data ---
  30e49a: bf00         	nop
  30e49c: 45b4         	cmp	r12, r6
  30e49e: 0062         	lsls	r2, r4, #0x1
  30e4a0: d9a8         	bls	0x30e3f4 <CustomAvatarLayer::create()+0x18> @ imm = #-0xb0
  30e4a2: ffff b500    	<unknown>

// ==== CustomAvatarLayer::scene
//      file offset 0x30e4a4 (= ELF address; Ghidra 0x31e4a4), 46 bytes, Thumb-2
  30e4a4: b500         	push	{lr}
  30e4a6: b083         	sub	sp, #0xc
  30e4a8: f2a1 fada    	bl	0x5afa60 <cocos2d::CCScene::create()> @ imm = #0x2a15b4
  30e4ac: 4603         	mov	r3, r0
  30e4ae: 9300         	str	r3, [sp]
  30e4b0: f7ff ff94    	bl	0x30e3dc <CustomAvatarLayer::create()> @ imm = #-0xd8
  30e4b4: 4603         	mov	r3, r0
  30e4b6: 9301         	str	r3, [sp, #0x4]
  30e4b8: 9b00         	ldr	r3, [sp]
  30e4ba: 681b         	ldr	r3, [r3]
  30e4bc: 33c8         	adds	r3, #0xc8
  30e4be: 681b         	ldr	r3, [r3]
  30e4c0: 9a00         	ldr	r2, [sp]
  30e4c2: 4610         	mov	r0, r2
  30e4c4: 9901         	ldr	r1, [sp, #0x4]
  30e4c6: 4798         	blx	r3
  30e4c8: 9b00         	ldr	r3, [sp]
  30e4ca: 4618         	mov	r0, r3
  30e4cc: b003         	add	sp, #0xc
  30e4ce: f85d fb04    	ldr	pc, [sp], #4

// ==== CustomAvatarLayer::init
//      file offset 0x30e4d8 (= ELF address; Ghidra 0x31e4d8), 1592 bytes, Thumb-2
  30e4d8: b5f0         	push	{r4, r5, r6, r7, lr}
  30e4da: ed2d 8b02    	vpush	{d8}
  30e4de: b0a5         	sub	sp, #0x94
  30e4e0: 9003         	str	r0, [sp, #0xc]
  30e4e2: 4c2e         	ldr	r4, [pc, #0xb8]         @ 0x30e59c <CustomAvatarLayer::init()+0xc4>
  30e4e4: 447c         	add	r4, pc
  30e4e6: 9b03         	ldr	r3, [sp, #0xc]
  30e4e8: 4618         	mov	r0, r3
  30e4ea: f29e fe85    	bl	0x5ad1f8 <cocos2d::CCLayer::init()> @ imm = #0x29ed0a
  30e4ee: 4603         	mov	r3, r0
  30e4f0: f88d 3013    	strb.w	r3, [sp, #0x13]
  30e4f4: f89d 3013    	ldrb.w	r3, [sp, #0x13]
  30e4f8: f083 0301    	eor	r3, r3, #0x1
  30e4fc: b2db         	uxtb	r3, r3
  30e4fe: 2b00         	cmp	r3, #0x0
  30e500: d001         	beq	0x30e506 <CustomAvatarLayer::init()+0x2e> @ imm = #0x2
  30e502: 2300         	movs	r3, #0x0
  30e504: e2f7         	b	0x30eaf6 <CustomAvatarLayer::init()+0x61e> @ imm = #0x5ee
  30e506: 9b03         	ldr	r3, [sp, #0xc]
  30e508: 2200         	movs	r2, #0x0
  30e50a: f883 2114    	strb.w	r2, [r3, #0x114]
  30e50e: ab10         	add	r3, sp, #0x40
  30e510: 4618         	mov	r0, r3
  30e512: 4b23         	ldr	r3, [pc, #0x8c]         @ 0x30e5a0 <CustomAvatarLayer::init()+0xc8>
  30e514: 58e3         	ldr	r3, [r4, r3]
  30e516: 4619         	mov	r1, r3
  30e518: f284 fdca    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x284b94
  30e51c: f64c 43cd    	movw	r3, #0xcccd
  30e520: f6c3 730c    	movt	r3, #0x3f0c
  30e524: 9306         	str	r3, [sp, #0x18]
  30e526: f04f 0300    	mov.w	r3, #0x0
  30e52a: f2c4 13c0    	movt	r3, #0x41c0
  30e52e: 9307         	str	r3, [sp, #0x1c]
  30e530: f04f 4341    	mov.w	r3, #0xc1000000
  30e534: 9308         	str	r3, [sp, #0x20]
  30e536: f7ff ff19    	bl	0x30e36c <AvatarCreator::create()> @ imm = #-0x1ce
  30e53a: 4602         	mov	r2, r0
  30e53c: 9b03         	ldr	r3, [sp, #0xc]
  30e53e: f8c3 2108    	str.w	r2, [r3, #0x108]
  30e542: 9b03         	ldr	r3, [sp, #0xc]
  30e544: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  30e548: 4618         	mov	r0, r3
  30e54a: f289 fccd    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x28999a
  30e54e: 9b03         	ldr	r3, [sp, #0xc]
  30e550: 681b         	ldr	r3, [r3]
  30e552: 33c8         	adds	r3, #0xc8
  30e554: 681b         	ldr	r3, [r3]
  30e556: 9903         	ldr	r1, [sp, #0xc]
  30e558: 9a03         	ldr	r2, [sp, #0xc]
  30e55a: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  30e55e: 4608         	mov	r0, r1
  30e560: 4611         	mov	r1, r2
  30e562: 4798         	blx	r3
  30e564: f7e5 faa8    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x1aab0
  30e568: 4603         	mov	r3, r0
  30e56a: 4618         	mov	r0, r3
  30e56c: f7e9 fef0    	bl	0x2f8350 <AvatarRenderer::getCustomAvatarProperties()> @ imm = #-0x16220
  30e570: 4603         	mov	r3, r0
  30e572: 9309         	str	r3, [sp, #0x24]
  30e574: 9809         	ldr	r0, [sp, #0x24]
  30e576: f28b fdb3    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x28bb66
  30e57a: 4603         	mov	r3, r0
  30e57c: 2b00         	cmp	r3, #0x0
  30e57e: bf0c         	ite	eq
  30e580: 2300         	moveq	r3, #0x0
  30e582: 2301         	movne	r3, #0x1
  30e584: b2db         	uxtb	r3, r3
  30e586: 2b00         	cmp	r3, #0x0
  30e588: d00c         	beq	0x30e5a4 <CustomAvatarLayer::init()+0xcc> @ imm = #0x18
  30e58a: 9b03         	ldr	r3, [sp, #0xc]
  30e58c: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  30e590: 4618         	mov	r0, r3
  30e592: 9909         	ldr	r1, [sp, #0x24]
  30e594: f7de fa56    	bl	0x2eca44 <AvatarCreator::setSelections(cocos2d::CCArray*)> @ imm = #-0x21b54
  30e598: e012         	b	0x30e5c0 <CustomAvatarLayer::init()+0xe8> @ imm = #0x24
  30e59a: bf00         	nop
  30e59c: 4524         	cmp	r4, r4
  30e59e: 0062         	lsls	r2, r4, #0x1
  30e5a0: d724         	bvc	0x30e5ec <CustomAvatarLayer::init()+0x114> @ imm = #0x48
  30e5a2: ffff 9b03    	vtbl.8	d25, {d15, d16, d17, d18}, d3
  30e5a6: f8d3 5108    	ldr.w	r5, [r3, #0x108]
  30e5aa: 9b03         	ldr	r3, [sp, #0xc]
  30e5ac: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  30e5b0: 4618         	mov	r0, r3
  30e5b2: f7de f8f3    	bl	0x2ec79c <AvatarCreator::getSelections()> @ imm = #-0x21e1a
  30e5b6: 4603         	mov	r3, r0
  30e5b8: 4628         	mov	r0, r5
  30e5ba: 4619         	mov	r1, r3
  30e5bc: f7de fa42    	bl	0x2eca44 <AvatarCreator::setSelections(cocos2d::CCArray*)> @ imm = #-0x21b7c
  30e5c0: 4bd3         	ldr	r3, [pc, #0x34c]        @ 0x30e910 <CustomAvatarLayer::init()+0x438>
  30e5c2: 447b         	add	r3, pc
  30e5c4: 4618         	mov	r0, r3
  30e5c6: f2c9 fe9d    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2c9d3a
  30e5ca: 4603         	mov	r3, r0
  30e5cc: 930a         	str	r3, [sp, #0x28]
  30e5ce: 4bd1         	ldr	r3, [pc, #0x344]        @ 0x30e914 <CustomAvatarLayer::init()+0x43c>
  30e5d0: 447b         	add	r3, pc
  30e5d2: 4618         	mov	r0, r3
  30e5d4: f2c9 fe96    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2c9d2c
  30e5d8: 4603         	mov	r3, r0
  30e5da: 930b         	str	r3, [sp, #0x2c]
  30e5dc: 4bce         	ldr	r3, [pc, #0x338]        @ 0x30e918 <CustomAvatarLayer::init()+0x440>
  30e5de: 447b         	add	r3, pc
  30e5e0: 4618         	mov	r0, r3
  30e5e2: f2c9 fe8f    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2c9d1e
  30e5e6: 4603         	mov	r3, r0
  30e5e8: 930c         	str	r3, [sp, #0x30]
  30e5ea: 4bcc         	ldr	r3, [pc, #0x330]        @ 0x30e91c <CustomAvatarLayer::init()+0x444>
  30e5ec: 447b         	add	r3, pc
  30e5ee: 4618         	mov	r0, r3
  30e5f0: f2c9 fe88    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2c9d10
  30e5f4: 4603         	mov	r3, r0
  30e5f6: 930d         	str	r3, [sp, #0x34]
  30e5f8: 9a03         	ldr	r2, [sp, #0xc]
  30e5fa: 4bc9         	ldr	r3, [pc, #0x324]        @ 0x30e920 <CustomAvatarLayer::init()+0x448>
  30e5fc: 58e3         	ldr	r3, [r4, r3]
  30e5fe: 9318         	str	r3, [sp, #0x60]
  30e600: 2300         	movs	r3, #0x0
  30e602: 9319         	str	r3, [sp, #0x64]
  30e604: 9b19         	ldr	r3, [sp, #0x64]
  30e606: 9300         	str	r3, [sp]
  30e608: 9b18         	ldr	r3, [sp, #0x60]
  30e60a: 980a         	ldr	r0, [sp, #0x28]
  30e60c: 990b         	ldr	r1, [sp, #0x2c]
  30e60e: f2a9 fe8d    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2a9d1a
  30e612: 4603         	mov	r3, r0
  30e614: 930e         	str	r3, [sp, #0x38]
  30e616: 980e         	ldr	r0, [sp, #0x38]
  30e618: 2100         	movs	r1, #0x0
  30e61a: f2a6 fd8f    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2a6b1e
  30e61e: 4602         	mov	r2, r0
  30e620: 9b03         	ldr	r3, [sp, #0xc]
  30e622: f8c3 2110    	str.w	r2, [r3, #0x110]
  30e626: 9b03         	ldr	r3, [sp, #0xc]
  30e628: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  30e62c: 4618         	mov	r0, r3
  30e62e: f289 fc5b    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2898b6
  30e632: 9b03         	ldr	r3, [sp, #0xc]
  30e634: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  30e638: 681b         	ldr	r3, [r3]
  30e63a: 334c         	adds	r3, #0x4c
  30e63c: 681d         	ldr	r5, [r3]
  30e63e: 9b03         	ldr	r3, [sp, #0xc]
  30e640: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  30e644: 461e         	mov	r6, r3
  30e646: ed9d 7a10    	vldr	s14, [sp, #64]
  30e64a: eddf 7aaf    	vldr	s15, [pc, #700]         @ 0x30e908 <CustomAvatarLayer::init()+0x430>
  30e64e: ee77 7a67    	vsub.f32	s15, s14, s15
  30e652: ab20         	add	r3, sp, #0x80
  30e654: 4618         	mov	r0, r3
  30e656: ee17 1a90    	vmov	r1, s15
  30e65a: f04f 4284    	mov.w	r2, #0x42000000
  30e65e: f284 fb47    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x28468e
  30e662: ab20         	add	r3, sp, #0x80
  30e664: 4630         	mov	r0, r6
  30e666: 4619         	mov	r1, r3
  30e668: 47a8         	blx	r5
  30e66a: 9b03         	ldr	r3, [sp, #0xc]
  30e66c: 681b         	ldr	r3, [r3]
  30e66e: 33c8         	adds	r3, #0xc8
  30e670: 681b         	ldr	r3, [r3]
  30e672: 9903         	ldr	r1, [sp, #0xc]
  30e674: 9a03         	ldr	r2, [sp, #0xc]
  30e676: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  30e67a: 4608         	mov	r0, r1
  30e67c: 4611         	mov	r1, r2
  30e67e: 4798         	blx	r3
  30e680: 4ba8         	ldr	r3, [pc, #0x2a0]        @ 0x30e924 <CustomAvatarLayer::init()+0x44c>
  30e682: 447b         	add	r3, pc
  30e684: 4618         	mov	r0, r3
  30e686: f0a6 f63b    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4a6c76
  30e68a: 4603         	mov	r3, r0
  30e68c: 2220         	movs	r2, #0x20
  30e68e: 9200         	str	r2, [sp]
  30e690: 4aa5         	ldr	r2, [pc, #0x294]        @ 0x30e928 <CustomAvatarLayer::init()+0x450>
  30e692: 447a         	add	r2, pc
  30e694: 4610         	mov	r0, r2
  30e696: 4619         	mov	r1, r3
  30e698: 2220         	movs	r2, #0x20
  30e69a: 2320         	movs	r3, #0x20
  30e69c: f296 fe6c    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x296cd8
  30e6a0: 4602         	mov	r2, r0
  30e6a2: 9b03         	ldr	r3, [sp, #0xc]
  30e6a4: f8c3 210c    	str.w	r2, [r3, #0x10c]
  30e6a8: 9b03         	ldr	r3, [sp, #0xc]
  30e6aa: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  30e6ae: 4618         	mov	r0, r3
  30e6b0: f289 fc1a    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x289834
  30e6b4: 9b03         	ldr	r3, [sp, #0xc]
  30e6b6: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  30e6ba: 681b         	ldr	r3, [r3]
  30e6bc: 334c         	adds	r3, #0x4c
  30e6be: 681d         	ldr	r5, [r3]
  30e6c0: 9b03         	ldr	r3, [sp, #0xc]
  30e6c2: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  30e6c6: 461e         	mov	r6, r3
  30e6c8: 9b03         	ldr	r3, [sp, #0xc]
  30e6ca: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  30e6ce: 681b         	ldr	r3, [r3]
  30e6d0: 3350         	adds	r3, #0x50
  30e6d2: 681b         	ldr	r3, [r3]
  30e6d4: 9a03         	ldr	r2, [sp, #0xc]
  30e6d6: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  30e6da: 4610         	mov	r0, r2
  30e6dc: 4798         	blx	r3
  30e6de: 4603         	mov	r3, r0
  30e6e0: 681f         	ldr	r7, [r3]
  30e6e2: 9b03         	ldr	r3, [sp, #0xc]
  30e6e4: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  30e6e8: 681b         	ldr	r3, [r3]
  30e6ea: 3350         	adds	r3, #0x50
  30e6ec: 681b         	ldr	r3, [r3]
  30e6ee: 9a03         	ldr	r2, [sp, #0xc]
  30e6f0: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  30e6f4: 4610         	mov	r0, r2
  30e6f6: 4798         	blx	r3
  30e6f8: 4603         	mov	r3, r0
  30e6fa: 685b         	ldr	r3, [r3, #0x4]
  30e6fc: aa14         	add	r2, sp, #0x50
  30e6fe: 4610         	mov	r0, r2
  30e700: 4639         	mov	r1, r7
  30e702: 461a         	mov	r2, r3
  30e704: f284 faf4    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2845e8
  30e708: eddd 7a08    	vldr	s15, [sp, #32]
  30e70c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  30e710: ab1c         	add	r3, sp, #0x70
  30e712: 4618         	mov	r0, r3
  30e714: ed9f 0b7a    	vldr	d0, [pc, #488]          @ 0x30e900 <CustomAvatarLayer::init()+0x428>
  30e718: eeb0 1b47    	vmov.f64	d1, d7
  30e71c: f7fe ff66    	bl	0x30d5ec <CreditsLayer::onBack(cocos2d::CCObject*)+0x1ec> @ imm = #-0x1134
  30e720: ed9d 8b1c    	vldr	d8, [sp, #112]
  30e724: 9b03         	ldr	r3, [sp, #0xc]
  30e726: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  30e72a: 681b         	ldr	r3, [r3]
  30e72c: f503 73fe    	add.w	r3, r3, #0x1fc
  30e730: 681b         	ldr	r3, [r3]
  30e732: 9a03         	ldr	r2, [sp, #0xc]
  30e734: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  30e738: 4610         	mov	r0, r2
  30e73a: 4798         	blx	r3
  30e73c: 4607         	mov	r7, r0
  30e73e: ab05         	add	r3, sp, #0x14
  30e740: 4618         	mov	r0, r3
  30e742: f07b f657    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x47bcae
  30e746: aa12         	add	r2, sp, #0x48
  30e748: ab05         	add	r3, sp, #0x14
  30e74a: 4610         	mov	r0, r2
  30e74c: 4639         	mov	r1, r7
  30e74e: 461a         	mov	r2, r3
  30e750: f0a8 f186    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4a830c
  30e754: ab12         	add	r3, sp, #0x48
  30e756: 4618         	mov	r0, r3
  30e758: f0a6 f480    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x4a6900
  30e75c: 4603         	mov	r3, r0
  30e75e: ee07 3a90    	vmov	s15, r3
  30e762: eeb8 7a67    	vcvt.f32.u32	s14, s15
  30e766: eddd 7a07    	vldr	s15, [sp, #28]
  30e76a: ee27 7a27    	vmul.f32	s14, s14, s15
  30e76e: eddd 7a06    	vldr	s15, [sp, #24]
  30e772: ee27 7a27    	vmul.f32	s14, s14, s15
  30e776: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  30e77a: eec7 7a27    	vdiv.f32	s15, s14, s15
  30e77e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  30e782: ee38 7b47    	vsub.f64	d7, d8, d7
  30e786: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  30e78a: eddd 7a08    	vldr	s15, [sp, #32]
  30e78e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  30e792: ab20         	add	r3, sp, #0x80
  30e794: 4618         	mov	r0, r3
  30e796: ed9f 0b5a    	vldr	d0, [pc, #360]          @ 0x30e900 <CustomAvatarLayer::init()+0x428>
  30e79a: eeb0 1b47    	vmov.f64	d1, d7
  30e79e: f7fe ff25    	bl	0x30d5ec <CreditsLayer::onBack(cocos2d::CCObject*)+0x1ec> @ imm = #-0x11b6
  30e7a2: ed9d 7b22    	vldr	d7, [sp, #136]
  30e7a6: eef7 7bc7    	vcvt.f32.f64	s15, d7
  30e7aa: ab16         	add	r3, sp, #0x58
  30e7ac: 4618         	mov	r0, r3
  30e7ae: ee18 1a10    	vmov	r1, s16
  30e7b2: ee17 2a90    	vmov	r2, s15
  30e7b6: f284 fa9b    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x284536
  30e7ba: a91a         	add	r1, sp, #0x68
  30e7bc: aa14         	add	r2, sp, #0x50
  30e7be: ab16         	add	r3, sp, #0x58
  30e7c0: 4608         	mov	r0, r1
  30e7c2: 4611         	mov	r1, r2
  30e7c4: 461a         	mov	r2, r3
  30e7c6: f7fe ff01    	bl	0x30d5cc <CreditsLayer::onBack(cocos2d::CCObject*)+0x1cc> @ imm = #-0x11fe
  30e7ca: ab1a         	add	r3, sp, #0x68
  30e7cc: 4630         	mov	r0, r6
  30e7ce: 4619         	mov	r1, r3
  30e7d0: 47a8         	blx	r5
  30e7d2: ab12         	add	r3, sp, #0x48
  30e7d4: 4618         	mov	r0, r3
  30e7d6: f0a7 f09d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a713a
  30e7da: ab05         	add	r3, sp, #0x14
  30e7dc: 4618         	mov	r0, r3
  30e7de: f07b f60d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x47bc1a
  30e7e2: 9b03         	ldr	r3, [sp, #0xc]
  30e7e4: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  30e7e8: 681b         	ldr	r3, [r3]
  30e7ea: 3340         	adds	r3, #0x40
  30e7ec: 681b         	ldr	r3, [r3]
  30e7ee: 9a03         	ldr	r2, [sp, #0xc]
  30e7f0: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  30e7f4: 4610         	mov	r0, r2
  30e7f6: 9906         	ldr	r1, [sp, #0x18]
  30e7f8: 4798         	blx	r3
  30e7fa: 9b03         	ldr	r3, [sp, #0xc]
  30e7fc: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  30e800: eddd 7a07    	vldr	s15, [sp, #28]
  30e804: eefd 7ae7    	vcvt.s32.f32	s15, s15
  30e808: ee17 2a90    	vmov	r2, s15
  30e80c: 4618         	mov	r0, r3
  30e80e: 4611         	mov	r1, r2
  30e810: f297 fab8    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x297570
  30e814: 9b03         	ldr	r3, [sp, #0xc]
  30e816: 681b         	ldr	r3, [r3]
  30e818: 33c8         	adds	r3, #0xc8
  30e81a: 681b         	ldr	r3, [r3]
  30e81c: 9903         	ldr	r1, [sp, #0xc]
  30e81e: 9a03         	ldr	r2, [sp, #0xc]
  30e820: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  30e824: 4608         	mov	r0, r1
  30e826: 4611         	mov	r1, r2
  30e828: 4798         	blx	r3
  30e82a: 9a03         	ldr	r2, [sp, #0xc]
  30e82c: 4b3f         	ldr	r3, [pc, #0xfc]         @ 0x30e92c <CustomAvatarLayer::init()+0x454>
  30e82e: 58e3         	ldr	r3, [r4, r3]
  30e830: 931a         	str	r3, [sp, #0x68]
  30e832: 2300         	movs	r3, #0x0
  30e834: 931b         	str	r3, [sp, #0x6c]
  30e836: 9b1b         	ldr	r3, [sp, #0x6c]
  30e838: 9300         	str	r3, [sp]
  30e83a: 9b1a         	ldr	r3, [sp, #0x68]
  30e83c: 980c         	ldr	r0, [sp, #0x30]
  30e83e: 990d         	ldr	r1, [sp, #0x34]
  30e840: f2a9 fd74    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2a9ae8
  30e844: 4603         	mov	r3, r0
  30e846: 930f         	str	r3, [sp, #0x3c]
  30e848: 980f         	ldr	r0, [sp, #0x3c]
  30e84a: 2100         	movs	r1, #0x0
  30e84c: f2a6 fc76    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2a68ec
  30e850: 4602         	mov	r2, r0
  30e852: 9b03         	ldr	r3, [sp, #0xc]
  30e854: f8c3 211c    	str.w	r2, [r3, #0x11c]
  30e858: 9b03         	ldr	r3, [sp, #0xc]
  30e85a: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  30e85e: 4618         	mov	r0, r3
  30e860: f289 fb42    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x289684
  30e864: 9b03         	ldr	r3, [sp, #0xc]
  30e866: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  30e86a: 681b         	ldr	r3, [r3]
  30e86c: 334c         	adds	r3, #0x4c
  30e86e: 681d         	ldr	r5, [r3]
  30e870: 9b03         	ldr	r3, [sp, #0xc]
  30e872: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  30e876: 461e         	mov	r6, r3
  30e878: ed9d 7a10    	vldr	s14, [sp, #64]
  30e87c: eddf 7a23    	vldr	s15, [pc, #140]         @ 0x30e90c <CustomAvatarLayer::init()+0x434>
  30e880: ee77 7a67    	vsub.f32	s15, s14, s15
  30e884: ab20         	add	r3, sp, #0x80
  30e886: 4618         	mov	r0, r3
  30e888: ee17 1a90    	vmov	r1, s15
  30e88c: f04f 4284    	mov.w	r2, #0x42000000
  30e890: f284 fa2e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x28445c
  30e894: ab20         	add	r3, sp, #0x80
  30e896: 4630         	mov	r0, r6
  30e898: 4619         	mov	r1, r3
  30e89a: 47a8         	blx	r5
  30e89c: 9b03         	ldr	r3, [sp, #0xc]
  30e89e: 681b         	ldr	r3, [r3]
  30e8a0: 33c8         	adds	r3, #0xc8
  30e8a2: 681b         	ldr	r3, [r3]
  30e8a4: 9903         	ldr	r1, [sp, #0xc]
  30e8a6: 9a03         	ldr	r2, [sp, #0xc]
  30e8a8: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  30e8ac: 4608         	mov	r0, r1
  30e8ae: 4611         	mov	r1, r2
  30e8b0: 4798         	blx	r3
  30e8b2: 4b1f         	ldr	r3, [pc, #0x7c]         @ 0x30e930 <CustomAvatarLayer::init()+0x458>
  30e8b4: 447b         	add	r3, pc
  30e8b6: 4618         	mov	r0, r3
  30e8b8: f0a6 f522    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4a6a44
  30e8bc: 4603         	mov	r3, r0
  30e8be: 2220         	movs	r2, #0x20
  30e8c0: 9200         	str	r2, [sp]
  30e8c2: 4a1c         	ldr	r2, [pc, #0x70]         @ 0x30e934 <CustomAvatarLayer::init()+0x45c>
  30e8c4: 447a         	add	r2, pc
  30e8c6: 4610         	mov	r0, r2
  30e8c8: 4619         	mov	r1, r3
  30e8ca: 2220         	movs	r2, #0x20
  30e8cc: 2320         	movs	r3, #0x20
  30e8ce: f296 fd53    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x296aa6
  30e8d2: 4602         	mov	r2, r0
  30e8d4: 9b03         	ldr	r3, [sp, #0xc]
  30e8d6: f8c3 2118    	str.w	r2, [r3, #0x118]
  30e8da: 9b03         	ldr	r3, [sp, #0xc]
  30e8dc: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  30e8e0: 4618         	mov	r0, r3
  30e8e2: f289 fb01    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x289602
  30e8e6: 9b03         	ldr	r3, [sp, #0xc]
  30e8e8: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  30e8ec: 681b         	ldr	r3, [r3]
  30e8ee: 334c         	adds	r3, #0x4c
  30e8f0: 681d         	ldr	r5, [r3]
  30e8f2: 9b03         	ldr	r3, [sp, #0xc]
  30e8f4: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  30e8f8: 461e         	mov	r6, r3
  30e8fa: e01d         	b	0x30e938 <CustomAvatarLayer::init()+0x460> @ imm = #0x3a
  30e8fc: f3af 8000    	nop.w
  30e908: 0000         	movs	r0, r0
  30e90a: 4260         	rsbs	r0, r4, #0
  30e90c: 0000         	movs	r0, r0
  30e90e: 431c         	orrs	r4, r3
  30e910: 7d2a         	ldrb	r2, [r5, #0x14]
  30e912: 004b         	lsls	r3, r1, #0x1
  30e914: 7d1c         	ldrb	r4, [r3, #0x14]
  30e916: 004b         	lsls	r3, r1, #0x1
  30e918: 7d0e         	ldrb	r6, [r1, #0x14]
  30e91a: 004b         	lsls	r3, r1, #0x1
  30e91c: 7d00         	ldrb	r0, [r0, #0x14]
  30e91e: 004b         	lsls	r3, r1, #0x1
  30e920: d9ac         	bls	0x30e87c <CustomAvatarLayer::init()+0x3a4> @ imm = #-0xa8
  30e922: ffff 1aae    	vtbl.8	d17, {d31, fpinst2, mvfr0}, d30
  30e926: 0063         	lsls	r3, r4, #0x1
  30e928: 7c66         	ldrb	r6, [r4, #0x11]
  30e92a: 004b         	lsls	r3, r1, #0x1
  30e92c: d9b0         	bls	0x30e890 <CustomAvatarLayer::init()+0x3b8> @ imm = #-0xa0
  30e92e: ffff 187c    	vqrshrun.s64	d17, q14, #0x1
  30e932: 0063         	lsls	r3, r4, #0x1
  30e934: 7a3c         	ldrb	r4, [r7, #0x8]
  30e936: 004b         	lsls	r3, r1, #0x1
  30e938: 9b03         	ldr	r3, [sp, #0xc]
  30e93a: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  30e93e: 681b         	ldr	r3, [r3]
  30e940: 3350         	adds	r3, #0x50
  30e942: 681b         	ldr	r3, [r3]
  30e944: 9a03         	ldr	r2, [sp, #0xc]
  30e946: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  30e94a: 4610         	mov	r0, r2
  30e94c: 4798         	blx	r3
  30e94e: 4603         	mov	r3, r0
  30e950: 681f         	ldr	r7, [r3]
  30e952: 9b03         	ldr	r3, [sp, #0xc]
  30e954: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  30e958: 681b         	ldr	r3, [r3]
  30e95a: 3350         	adds	r3, #0x50
  30e95c: 681b         	ldr	r3, [r3]
  30e95e: 9a03         	ldr	r2, [sp, #0xc]
  30e960: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  30e964: 4610         	mov	r0, r2
  30e966: 4798         	blx	r3
  30e968: 4603         	mov	r3, r0
  30e96a: 685b         	ldr	r3, [r3, #0x4]
  30e96c: aa12         	add	r2, sp, #0x48
  30e96e: 4610         	mov	r0, r2
  30e970: 4639         	mov	r1, r7
  30e972: 461a         	mov	r2, r3
  30e974: f284 f9bc    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x284378
  30e978: eddd 7a08    	vldr	s15, [sp, #32]
  30e97c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  30e980: ab1c         	add	r3, sp, #0x70
  30e982: 4618         	mov	r0, r3
  30e984: ed9f 0b5e    	vldr	d0, [pc, #376]          @ 0x30eb00 <CustomAvatarLayer::init()+0x628>
  30e988: eeb0 1b47    	vmov.f64	d1, d7
  30e98c: f7fe fe2e    	bl	0x30d5ec <CreditsLayer::onBack(cocos2d::CCObject*)+0x1ec> @ imm = #-0x13a4
  30e990: ed9d 8b1c    	vldr	d8, [sp, #112]
  30e994: 9b03         	ldr	r3, [sp, #0xc]
  30e996: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  30e99a: 681b         	ldr	r3, [r3]
  30e99c: f503 73fe    	add.w	r3, r3, #0x1fc
  30e9a0: 681b         	ldr	r3, [r3]
  30e9a2: 9a03         	ldr	r2, [sp, #0xc]
  30e9a4: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  30e9a8: 4610         	mov	r0, r2
  30e9aa: 4798         	blx	r3
  30e9ac: 4607         	mov	r7, r0
  30e9ae: ab04         	add	r3, sp, #0x10
  30e9b0: 4618         	mov	r0, r3
  30e9b2: f07b f51f    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x47ba3e
  30e9b6: aa05         	add	r2, sp, #0x14
  30e9b8: ab04         	add	r3, sp, #0x10
  30e9ba: 4610         	mov	r0, r2
  30e9bc: 4639         	mov	r1, r7
  30e9be: 461a         	mov	r2, r3
  30e9c0: f0a8 f04e    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4a809c
  30e9c4: ab05         	add	r3, sp, #0x14
  30e9c6: 4618         	mov	r0, r3
  30e9c8: f0a6 f348    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x4a6690
  30e9cc: 4603         	mov	r3, r0
  30e9ce: ee07 3a90    	vmov	s15, r3
  30e9d2: eeb8 7a67    	vcvt.f32.u32	s14, s15
  30e9d6: eddd 7a07    	vldr	s15, [sp, #28]
  30e9da: ee27 7a27    	vmul.f32	s14, s14, s15
  30e9de: eddd 7a06    	vldr	s15, [sp, #24]
  30e9e2: ee27 7a27    	vmul.f32	s14, s14, s15
  30e9e6: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  30e9ea: eec7 7a27    	vdiv.f32	s15, s14, s15
  30e9ee: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  30e9f2: ee38 7b47    	vsub.f64	d7, d8, d7
  30e9f6: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  30e9fa: eddd 7a08    	vldr	s15, [sp, #32]
  30e9fe: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  30ea02: ab20         	add	r3, sp, #0x80
  30ea04: 4618         	mov	r0, r3
  30ea06: ed9f 0b3e    	vldr	d0, [pc, #248]          @ 0x30eb00 <CustomAvatarLayer::init()+0x628>
  30ea0a: eeb0 1b47    	vmov.f64	d1, d7
  30ea0e: f7fe fded    	bl	0x30d5ec <CreditsLayer::onBack(cocos2d::CCObject*)+0x1ec> @ imm = #-0x1426
  30ea12: ed9d 7b22    	vldr	d7, [sp, #136]
  30ea16: eef7 7bc7    	vcvt.f32.f64	s15, d7
  30ea1a: ab14         	add	r3, sp, #0x50
  30ea1c: 4618         	mov	r0, r3
  30ea1e: ee18 1a10    	vmov	r1, s16
  30ea22: ee17 2a90    	vmov	r2, s15
  30ea26: f284 f963    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2842c6
  30ea2a: a916         	add	r1, sp, #0x58
  30ea2c: aa12         	add	r2, sp, #0x48
  30ea2e: ab14         	add	r3, sp, #0x50
  30ea30: 4608         	mov	r0, r1
  30ea32: 4611         	mov	r1, r2
  30ea34: 461a         	mov	r2, r3
  30ea36: f7fe fdc9    	bl	0x30d5cc <CreditsLayer::onBack(cocos2d::CCObject*)+0x1cc> @ imm = #-0x146e
  30ea3a: ab16         	add	r3, sp, #0x58
  30ea3c: 4630         	mov	r0, r6
  30ea3e: 4619         	mov	r1, r3
  30ea40: 47a8         	blx	r5
  30ea42: ab05         	add	r3, sp, #0x14
  30ea44: 4618         	mov	r0, r3
  30ea46: f0a6 f765    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a6eca
  30ea4a: ab04         	add	r3, sp, #0x10
  30ea4c: 4618         	mov	r0, r3
  30ea4e: f07b f4d5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x47b9aa
  30ea52: 9b03         	ldr	r3, [sp, #0xc]
  30ea54: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  30ea58: 681b         	ldr	r3, [r3]
  30ea5a: 3340         	adds	r3, #0x40
  30ea5c: 681b         	ldr	r3, [r3]
  30ea5e: 9a03         	ldr	r2, [sp, #0xc]
  30ea60: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  30ea64: 4610         	mov	r0, r2
  30ea66: 9906         	ldr	r1, [sp, #0x18]
  30ea68: 4798         	blx	r3
  30ea6a: 9b03         	ldr	r3, [sp, #0xc]
  30ea6c: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  30ea70: eddd 7a07    	vldr	s15, [sp, #28]
  30ea74: eefd 7ae7    	vcvt.s32.f32	s15, s15
  30ea78: ee17 2a90    	vmov	r2, s15
  30ea7c: 4618         	mov	r0, r3
  30ea7e: 4611         	mov	r1, r2
  30ea80: f297 f980    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x297300
  30ea84: 9b03         	ldr	r3, [sp, #0xc]
  30ea86: 681b         	ldr	r3, [r3]
  30ea88: 33c8         	adds	r3, #0xc8
  30ea8a: 681b         	ldr	r3, [r3]
  30ea8c: 9903         	ldr	r1, [sp, #0xc]
  30ea8e: 9a03         	ldr	r2, [sp, #0xc]
  30ea90: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  30ea94: 4608         	mov	r0, r1
  30ea96: 4611         	mov	r1, r2
  30ea98: 4798         	blx	r3
  30ea9a: f2d1 fe09    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2d1c12
  30ea9e: 4602         	mov	r2, r0
  30eaa0: 9b03         	ldr	r3, [sp, #0xc]
  30eaa2: 4919         	ldr	r1, [pc, #0x64]         @ 0x30eb08 <CustomAvatarLayer::init()+0x630>
  30eaa4: 5861         	ldr	r1, [r4, r1]
  30eaa6: 9120         	str	r1, [sp, #0x80]
  30eaa8: 2100         	movs	r1, #0x0
  30eaaa: 9121         	str	r1, [sp, #0x84]
  30eaac: 4917         	ldr	r1, [pc, #0x5c]         @ 0x30eb0c <CustomAvatarLayer::init()+0x634>
  30eaae: 4479         	add	r1, pc
  30eab0: 9100         	str	r1, [sp]
  30eab2: 2100         	movs	r1, #0x0
  30eab4: 9101         	str	r1, [sp, #0x4]
  30eab6: 4610         	mov	r0, r2
  30eab8: 4619         	mov	r1, r3
  30eaba: ab20         	add	r3, sp, #0x80
  30eabc: cb0c         	ldm	r3, {r2, r3}
  30eabe: f2d1 fe93    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2d1d26
  30eac2: f11d faf1    	bl	0x42c0a8 <ApplicationInterface::removeAdBanner()> @ imm = #0x11d5e2
  30eac6: 2301         	movs	r3, #0x1
  30eac8: e015         	b	0x30eaf6 <CustomAvatarLayer::init()+0x61e> @ imm = #0x2a
  30eaca: ab12         	add	r3, sp, #0x48
  30eacc: 4618         	mov	r0, r3
  30eace: f0a6 f721    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a6e42
  30ead2: e7ff         	b	0x30ead4 <CustomAvatarLayer::init()+0x5fc> @ imm = #-0x2
  30ead4: ab05         	add	r3, sp, #0x14
  30ead6: 4618         	mov	r0, r3
  30ead8: f07b f490    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x47b920
  30eadc: f079 f2e6    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4795cc
  30eae0: ab05         	add	r3, sp, #0x14
  30eae2: 4618         	mov	r0, r3
  30eae4: f0a6 f716    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a6e2c
  30eae8: e7ff         	b	0x30eaea <CustomAvatarLayer::init()+0x612> @ imm = #-0x2
  30eaea: ab04         	add	r3, sp, #0x10
  30eaec: 4618         	mov	r0, r3
  30eaee: f07b f485    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x47b90a
  30eaf2: f079 f2db    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4795b6
  30eaf6: 4618         	mov	r0, r3
  30eaf8: b025         	add	sp, #0x94
  30eafa: ecbd 8b02    	vpop	{d8}
  30eafe: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x30eaff); words below are literal-pool data ---
  30eb08: d9b4         	bls	0x30ea74 <CustomAvatarLayer::init()+0x59c> @ imm = #-0x98
  30eb0a: ffff 785a    	vqrshrun.s64	d23, q5, #0x1
  30eb0e: 004b         	lsls	r3, r1, #0x1

// ==== CustomAvatarLayer::~CustomAvatarLayer
//      file offset 0x30eb10 (= ELF address; Ghidra 0x31eb10), 184 bytes, Thumb-2
  30eb10: b500         	push	{lr}
  30eb12: b083         	sub	sp, #0xc
  30eb14: 9001         	str	r0, [sp, #0x4]
  30eb16: 4b2a         	ldr	r3, [pc, #0xa8]         @ 0x30ebc0 <CustomAvatarLayer::~CustomAvatarLayer()+0xb0>
  30eb18: 447b         	add	r3, pc
  30eb1a: 9a01         	ldr	r2, [sp, #0x4]
  30eb1c: 4929         	ldr	r1, [pc, #0xa4]         @ 0x30ebc4 <CustomAvatarLayer::~CustomAvatarLayer()+0xb4>
  30eb1e: 5859         	ldr	r1, [r3, r1]
  30eb20: 3108         	adds	r1, #0x8
  30eb22: 6011         	str	r1, [r2]
  30eb24: 9a01         	ldr	r2, [sp, #0x4]
  30eb26: 4927         	ldr	r1, [pc, #0x9c]         @ 0x30ebc4 <CustomAvatarLayer::~CustomAvatarLayer()+0xb4>
  30eb28: 5859         	ldr	r1, [r3, r1]
  30eb2a: f501 7104    	add.w	r1, r1, #0x210
  30eb2e: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  30eb32: 9a01         	ldr	r2, [sp, #0x4]
  30eb34: 4923         	ldr	r1, [pc, #0x8c]         @ 0x30ebc4 <CustomAvatarLayer::~CustomAvatarLayer()+0xb4>
  30eb36: 5859         	ldr	r1, [r3, r1]
  30eb38: f501 7110    	add.w	r1, r1, #0x240
  30eb3c: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  30eb40: 9a01         	ldr	r2, [sp, #0x4]
  30eb42: 4920         	ldr	r1, [pc, #0x80]         @ 0x30ebc4 <CustomAvatarLayer::~CustomAvatarLayer()+0xb4>
  30eb44: 585b         	ldr	r3, [r3, r1]
  30eb46: f503 7313    	add.w	r3, r3, #0x24c
  30eb4a: f8c2 30ec    	str.w	r3, [r2, #0xec]
  30eb4e: f2d1 fdaf    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2d1b5e
  30eb52: 4602         	mov	r2, r0
  30eb54: 9b01         	ldr	r3, [sp, #0x4]
  30eb56: 4610         	mov	r0, r2
  30eb58: 4619         	mov	r1, r3
  30eb5a: f2d1 fee1    	bl	0x5e0920 <cocos2d::CCNotificationCenter::removeAllObservers(cocos2d::CCObject*)> @ imm = #0x2d1dc2
  30eb5e: 9b01         	ldr	r3, [sp, #0x4]
  30eb60: 4618         	mov	r0, r3
  30eb62: f281 fd63    	bl	0x59062c <cocos2d::CCNode::removeAllChildren()> @ imm = #0x281ac6
  30eb66: 9b01         	ldr	r3, [sp, #0x4]
  30eb68: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  30eb6c: 4618         	mov	r0, r3
  30eb6e: f289 f9a3    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x289346
  30eb72: 9b01         	ldr	r3, [sp, #0x4]
  30eb74: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  30eb78: 4618         	mov	r0, r3
  30eb7a: f289 f99d    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x28933a
  30eb7e: 9b01         	ldr	r3, [sp, #0x4]
  30eb80: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  30eb84: 4618         	mov	r0, r3
  30eb86: f289 f997    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x28932e
  30eb8a: 9b01         	ldr	r3, [sp, #0x4]
  30eb8c: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  30eb90: 4618         	mov	r0, r3
  30eb92: f289 f991    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x289322
  30eb96: 9b01         	ldr	r3, [sp, #0x4]
  30eb98: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  30eb9c: 4618         	mov	r0, r3
  30eb9e: f289 f98b    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x289316
  30eba2: 9b01         	ldr	r3, [sp, #0x4]
  30eba4: 4618         	mov	r0, r3
  30eba6: f29e fad1    	bl	0x5ad14c <cocos2d::CCLayer::~CCLayer()> @ imm = #0x29e5a2
  30ebaa: 2300         	movs	r3, #0x0
  30ebac: 2b00         	cmp	r3, #0x0
  30ebae: d002         	beq	0x30ebb6 <CustomAvatarLayer::~CustomAvatarLayer()+0xa6> @ imm = #0x4
  30ebb0: 9801         	ldr	r0, [sp, #0x4]
  30ebb2: f079 f277    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4794ee
  30ebb6: 9b01         	ldr	r3, [sp, #0x4]
  30ebb8: 4618         	mov	r0, r3
  30ebba: b003         	add	sp, #0xc
  30ebbc: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x30ebbf); words below are literal-pool data ---
  30ebc0: 3ef0         	subs	r6, #0xf0
  30ebc2: 0062         	lsls	r2, r4, #0x1
  30ebc4: d9a8         	bls	0x30eb18 <CustomAvatarLayer::~CustomAvatarLayer()+0x8> @ imm = #-0xb0
  30ebc6: ffff f1a0    	<unknown>

// ==== CustomAvatarLayer::~CustomAvatarLayer
//      file offset 0x30ebc8 (= ELF address; Ghidra 0x31ebc8), 8 bytes, Thumb-2
  30ebc8: f1a0 00e4    	sub.w	r0, r0, #0xe4
  30ebcc: f7ff bfa0    	b.w	0x30eb10 <CustomAvatarLayer::~CustomAvatarLayer()> @ imm = #-0xc0

// ==== CustomAvatarLayer::~CustomAvatarLayer
//      file offset 0x30ebd0 (= ELF address; Ghidra 0x31ebd0), 28 bytes, Thumb-2
  30ebd0: b500         	push	{lr}
  30ebd2: b083         	sub	sp, #0xc
  30ebd4: 9001         	str	r0, [sp, #0x4]
  30ebd6: 9801         	ldr	r0, [sp, #0x4]
  30ebd8: f7ff ff9a    	bl	0x30eb10 <CustomAvatarLayer::~CustomAvatarLayer()> @ imm = #-0xcc
  30ebdc: 9801         	ldr	r0, [sp, #0x4]
  30ebde: f079 f261    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4794c2
  30ebe2: 9b01         	ldr	r3, [sp, #0x4]
  30ebe4: 4618         	mov	r0, r3
  30ebe6: b003         	add	sp, #0xc
  30ebe8: f85d fb04    	ldr	pc, [sp], #4

// ==== CustomAvatarLayer::~CustomAvatarLayer
//      file offset 0x30ebec (= ELF address; Ghidra 0x31ebec), 8 bytes, Thumb-2
  30ebec: f1a0 00e4    	sub.w	r0, r0, #0xe4
  30ebf0: f7ff bfee    	b.w	0x30ebd0 <CustomAvatarLayer::~CustomAvatarLayer()> @ imm = #-0x24

// ==== CustomAvatarLayer::saveProperties
//      file offset 0x30ebf4 (= ELF address; Ghidra 0x31ebf4), 84 bytes, Thumb-2
  30ebf4: b510         	push	{r4, lr}
  30ebf6: b082         	sub	sp, #0x8
  30ebf8: 9001         	str	r0, [sp, #0x4]
  30ebfa: 4a10         	ldr	r2, [pc, #0x40]         @ 0x30ec3c <CustomAvatarLayer::saveProperties()+0x48>
  30ebfc: 447a         	add	r2, pc
  30ebfe: 4b10         	ldr	r3, [pc, #0x40]         @ 0x30ec40 <CustomAvatarLayer::saveProperties()+0x4c>
  30ec00: 58d3         	ldr	r3, [r2, r3]
  30ec02: 2200         	movs	r2, #0x0
  30ec04: 601a         	str	r2, [r3]
  30ec06: f2d3 fd11    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2d3a22
  30ec0a: 4603         	mov	r3, r0
  30ec0c: 4618         	mov	r0, r3
  30ec0e: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x30ec44 <CustomAvatarLayer::saveProperties()+0x50>
  30ec10: 447b         	add	r3, pc
  30ec12: 4619         	mov	r1, r3
  30ec14: 2200         	movs	r2, #0x0
  30ec16: f2d3 fcc3    	bl	0x5e25a0 <cocos2d::CCUserDefault::setIntegerForKey(char const*, int)> @ imm = #0x2d3986
  30ec1a: f7e4 ff4d    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x1b166
  30ec1e: 4604         	mov	r4, r0
  30ec20: 9b01         	ldr	r3, [sp, #0x4]
  30ec22: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  30ec26: 4618         	mov	r0, r3
  30ec28: f7dd fdb8    	bl	0x2ec79c <AvatarCreator::getSelections()> @ imm = #-0x22490
  30ec2c: 4603         	mov	r3, r0
  30ec2e: 4620         	mov	r0, r4
  30ec30: 4619         	mov	r1, r3
  30ec32: f7e9 fb35    	bl	0x2f82a0 <AvatarRenderer::saveCustomAvatarProperties(cocos2d::CCArray*)> @ imm = #-0x16996
  30ec36: b002         	add	sp, #0x8
  30ec38: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x30ec39); words below are literal-pool data ---
  30ec3a: bf00         	nop
  30ec3c: 3e0c         	subs	r6, #0xc
  30ec3e: 0062         	lsls	r2, r4, #0x1
  30ec40: d8b0         	bhi	0x30eba4 <CustomAvatarLayer::~CustomAvatarLayer()+0x94> @ imm = #-0xa0
  30ec42: ffff 7710    	vqshl.u32	d23, d0, #0x1f
  30ec46: 004b         	lsls	r3, r1, #0x1

// ==== CustomAvatarLayer::onSave
//      file offset 0x30ec48 (= ELF address; Ghidra 0x31ec48), 104 bytes, Thumb-2
  30ec48: b530         	push	{r4, r5, lr}
  30ec4a: b083         	sub	sp, #0xc
  30ec4c: 9001         	str	r0, [sp, #0x4]
  30ec4e: 9100         	str	r1, [sp]
  30ec50: 4c14         	ldr	r4, [pc, #0x50]         @ 0x30eca4 <CustomAvatarLayer::onSave(cocos2d::CCObject*)+0x5c>
  30ec52: 447c         	add	r4, pc
  30ec54: 9b01         	ldr	r3, [sp, #0x4]
  30ec56: f893 3114    	ldrb.w	r3, [r3, #0x114]
  30ec5a: 2b00         	cmp	r3, #0x0
  30ec5c: d000         	beq	0x30ec60 <CustomAvatarLayer::onSave(cocos2d::CCObject*)+0x18> @ imm = #0x0
  30ec5e: e01f         	b	0x30eca0 <CustomAvatarLayer::onSave(cocos2d::CCObject*)+0x58> @ imm = #0x3e
  30ec60: 9b01         	ldr	r3, [sp, #0x4]
  30ec62: 2201         	movs	r2, #0x1
  30ec64: f883 2114    	strb.w	r2, [r3, #0x114]
  30ec68: 9801         	ldr	r0, [sp, #0x4]
  30ec6a: f7ff ffc3    	bl	0x30ebf4 <CustomAvatarLayer::saveProperties()> @ imm = #-0x7a
  30ec6e: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x30eca8 <CustomAvatarLayer::onSave(cocos2d::CCObject*)+0x60>
  30ec70: 58e3         	ldr	r3, [r4, r3]
  30ec72: 681b         	ldr	r3, [r3]
  30ec74: 4618         	mov	r0, r3
  30ec76: 210d         	movs	r1, #0xd
  30ec78: f0e9 f8a2    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xe9144
  30ec7c: f28c fc7a    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x28c8f4
  30ec80: 4604         	mov	r4, r0
  30ec82: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x30ecac <CustomAvatarLayer::onSave(cocos2d::CCObject*)+0x64>
  30ec84: 447b         	add	r3, pc
  30ec86: 681d         	ldr	r5, [r3]
  30ec88: f7df f88c    	bl	0x2edda4 <AvatarLayer::scene()> @ imm = #-0x20ee8
  30ec8c: 4603         	mov	r3, r0
  30ec8e: 4628         	mov	r0, r5
  30ec90: 4619         	mov	r1, r3
  30ec92: f2a2 fb39    	bl	0x5b1308 <cocos2d::CCTransitionSlideInL::create(float, cocos2d::CCScene*)> @ imm = #0x2a2672
  30ec96: 4603         	mov	r3, r0
  30ec98: 4620         	mov	r0, r4
  30ec9a: 4619         	mov	r1, r3
  30ec9c: f28d fb5e    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x28d6bc
  30eca0: b003         	add	sp, #0xc
  30eca2: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x30eca3); words below are literal-pool data ---
  30eca4: 3db6         	subs	r5, #0xb6
  30eca6: 0062         	lsls	r2, r4, #0x1
  30eca8: d730         	bvc	0x30ed0c <CustomAvatarLayer::onCancel(cocos2d::CCObject*)+0x5c> @ imm = #0x60
  30ecaa: ffff 4628    	<unknown>
  30ecae: 0062         	lsls	r2, r4, #0x1

// ==== CustomAvatarLayer::onCancel
//      file offset 0x30ecb0 (= ELF address; Ghidra 0x31ecb0), 100 bytes, Thumb-2
  30ecb0: b530         	push	{r4, r5, lr}
  30ecb2: b083         	sub	sp, #0xc
  30ecb4: 9001         	str	r0, [sp, #0x4]
  30ecb6: 9100         	str	r1, [sp]
  30ecb8: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x30ed08 <CustomAvatarLayer::onCancel(cocos2d::CCObject*)+0x58>
  30ecba: 447a         	add	r2, pc
  30ecbc: 9b01         	ldr	r3, [sp, #0x4]
  30ecbe: f893 3114    	ldrb.w	r3, [r3, #0x114]
  30ecc2: 2b00         	cmp	r3, #0x0
  30ecc4: d000         	beq	0x30ecc8 <CustomAvatarLayer::onCancel(cocos2d::CCObject*)+0x18> @ imm = #0x0
  30ecc6: e01c         	b	0x30ed02 <CustomAvatarLayer::onCancel(cocos2d::CCObject*)+0x52> @ imm = #0x38
  30ecc8: 9b01         	ldr	r3, [sp, #0x4]
  30ecca: 2101         	movs	r1, #0x1
  30eccc: f883 1114    	strb.w	r1, [r3, #0x114]
  30ecd0: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x30ed0c <CustomAvatarLayer::onCancel(cocos2d::CCObject*)+0x5c>
  30ecd2: 58d3         	ldr	r3, [r2, r3]
  30ecd4: 681b         	ldr	r3, [r3]
  30ecd6: 4618         	mov	r0, r3
  30ecd8: 210d         	movs	r1, #0xd
  30ecda: f0e9 f871    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xe90e2
  30ecde: f28c fc49    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x28c892
  30ece2: 4604         	mov	r4, r0
  30ece4: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x30ed10 <CustomAvatarLayer::onCancel(cocos2d::CCObject*)+0x60>
  30ece6: 447b         	add	r3, pc
  30ece8: 681d         	ldr	r5, [r3]
  30ecea: f7df f85b    	bl	0x2edda4 <AvatarLayer::scene()> @ imm = #-0x20f4a
  30ecee: 4603         	mov	r3, r0
  30ecf0: 4628         	mov	r0, r5
  30ecf2: 4619         	mov	r1, r3
  30ecf4: f2a2 fb08    	bl	0x5b1308 <cocos2d::CCTransitionSlideInL::create(float, cocos2d::CCScene*)> @ imm = #0x2a2610
  30ecf8: 4603         	mov	r3, r0
  30ecfa: 4620         	mov	r0, r4
  30ecfc: 4619         	mov	r1, r3
  30ecfe: f28d fb2d    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x28d65a
  30ed02: b003         	add	sp, #0xc
  30ed04: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x30ed05); words below are literal-pool data ---
  30ed06: bf00         	nop
  30ed08: 3d4e         	subs	r5, #0x4e
  30ed0a: 0062         	lsls	r2, r4, #0x1
  30ed0c: d730         	bvc	0x30ed70 <CustomAvatarLayer::presentProPackAlert(cocos2d::CCObject*)+0x5c> @ imm = #0x60
  30ed0e: ffff 45c6    	<unknown>
  30ed12: 0062         	lsls	r2, r4, #0x1

// ==== CustomAvatarLayer::presentProPackAlert
//      file offset 0x30ed14 (= ELF address; Ghidra 0x31ed14), 340 bytes, Thumb-2
  30ed14: b530         	push	{r4, r5, lr}
  30ed16: b08d         	sub	sp, #0x34
  30ed18: 9003         	str	r0, [sp, #0xc]
  30ed1a: 9102         	str	r1, [sp, #0x8]
  30ed1c: 4c4c         	ldr	r4, [pc, #0x130]        @ 0x30ee50 <CustomAvatarLayer::presentProPackAlert(cocos2d::CCObject*)+0x13c>
  30ed1e: 447c         	add	r4, pc
  30ed20: ab06         	add	r3, sp, #0x18
  30ed22: 4618         	mov	r0, r3
  30ed24: f07b f366    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x47b6cc
  30ed28: aa0a         	add	r2, sp, #0x28
  30ed2a: ab06         	add	r3, sp, #0x18
  30ed2c: 4610         	mov	r0, r2
  30ed2e: 4a49         	ldr	r2, [pc, #0x124]        @ 0x30ee54 <CustomAvatarLayer::presentProPackAlert(cocos2d::CCObject*)+0x140>
  30ed30: 447a         	add	r2, pc
  30ed32: 4611         	mov	r1, r2
  30ed34: 461a         	mov	r2, r3
  30ed36: f0a7 f693    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4a7d26
  30ed3a: ab07         	add	r3, sp, #0x1c
  30ed3c: 4618         	mov	r0, r3
  30ed3e: f07b f359    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x47b6b2
  30ed42: aa0b         	add	r2, sp, #0x2c
  30ed44: ab07         	add	r3, sp, #0x1c
  30ed46: 4610         	mov	r0, r2
  30ed48: 4a43         	ldr	r2, [pc, #0x10c]        @ 0x30ee58 <CustomAvatarLayer::presentProPackAlert(cocos2d::CCObject*)+0x144>
  30ed4a: 447a         	add	r2, pc
  30ed4c: 4611         	mov	r1, r2
  30ed4e: 461a         	mov	r2, r3
  30ed50: f0a7 f686    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4a7d0c
  30ed54: ab04         	add	r3, sp, #0x10
  30ed56: 4618         	mov	r0, r3
  30ed58: f07b f34c    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x47b698
  30ed5c: aa08         	add	r2, sp, #0x20
  30ed5e: ab04         	add	r3, sp, #0x10
  30ed60: 4610         	mov	r0, r2
  30ed62: 4a3e         	ldr	r2, [pc, #0xf8]         @ 0x30ee5c <CustomAvatarLayer::presentProPackAlert(cocos2d::CCObject*)+0x148>
  30ed64: 447a         	add	r2, pc
  30ed66: 4611         	mov	r1, r2
  30ed68: 461a         	mov	r2, r3
  30ed6a: f0a7 f679    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4a7cf2
  30ed6e: ab08         	add	r3, sp, #0x20
  30ed70: 4618         	mov	r0, r3
  30ed72: f28a fe63    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x28acc6
  30ed76: 4605         	mov	r5, r0
  30ed78: ab05         	add	r3, sp, #0x14
  30ed7a: 4618         	mov	r0, r3
  30ed7c: f07b f33a    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x47b674
  30ed80: aa09         	add	r2, sp, #0x24
  30ed82: ab05         	add	r3, sp, #0x14
  30ed84: 4610         	mov	r0, r2
  30ed86: 4a36         	ldr	r2, [pc, #0xd8]         @ 0x30ee60 <CustomAvatarLayer::presentProPackAlert(cocos2d::CCObject*)+0x14c>
  30ed88: 447a         	add	r2, pc
  30ed8a: 4611         	mov	r1, r2
  30ed8c: 461a         	mov	r2, r3
  30ed8e: f0a7 f667    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4a7cce
  30ed92: ab09         	add	r3, sp, #0x24
  30ed94: 4618         	mov	r0, r3
  30ed96: f28a fe51    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x28aca2
  30ed9a: 4603         	mov	r3, r0
  30ed9c: 4628         	mov	r0, r5
  30ed9e: 4619         	mov	r1, r3
  30eda0: 2200         	movs	r2, #0x0
  30eda2: f28b f835    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x28b06a
  30eda6: 4603         	mov	r3, r0
  30eda8: 9803         	ldr	r0, [sp, #0xc]
  30edaa: a90a         	add	r1, sp, #0x28
  30edac: aa0b         	add	r2, sp, #0x2c
  30edae: 2500         	movs	r5, #0x0
  30edb0: 9500         	str	r5, [sp]
  30edb2: 9001         	str	r0, [sp, #0x4]
  30edb4: 482b         	ldr	r0, [pc, #0xac]         @ 0x30ee64 <CustomAvatarLayer::presentProPackAlert(cocos2d::CCObject*)+0x150>
  30edb6: 5820         	ldr	r0, [r4, r0]
  30edb8: f7d0 fd1c    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0x2f5c8
  30edbc: ab09         	add	r3, sp, #0x24
  30edbe: 4618         	mov	r0, r3
  30edc0: f0a6 f5a8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a6b50
  30edc4: ab05         	add	r3, sp, #0x14
  30edc6: 4618         	mov	r0, r3
  30edc8: f07b f318    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x47b630
  30edcc: ab08         	add	r3, sp, #0x20
  30edce: 4618         	mov	r0, r3
  30edd0: f0a6 f5a0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a6b40
  30edd4: ab04         	add	r3, sp, #0x10
  30edd6: 4618         	mov	r0, r3
  30edd8: f07b f310    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x47b620
  30eddc: ab0b         	add	r3, sp, #0x2c
  30edde: 4618         	mov	r0, r3
  30ede0: f0a6 f598    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a6b30
  30ede4: ab07         	add	r3, sp, #0x1c
  30ede6: 4618         	mov	r0, r3
  30ede8: f07b f308    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x47b610
  30edec: ab0a         	add	r3, sp, #0x28
  30edee: 4618         	mov	r0, r3
  30edf0: f0a6 f590    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a6b20
  30edf4: ab06         	add	r3, sp, #0x18
  30edf6: 4618         	mov	r0, r3
  30edf8: f07b f300    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x47b600
  30edfc: e026         	b	0x30ee4c <CustomAvatarLayer::presentProPackAlert(cocos2d::CCObject*)+0x138> @ imm = #0x4c
  30edfe: ab09         	add	r3, sp, #0x24
  30ee00: 4618         	mov	r0, r3
  30ee02: f0a6 f587    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a6b0e
  30ee06: e7ff         	b	0x30ee08 <CustomAvatarLayer::presentProPackAlert(cocos2d::CCObject*)+0xf4> @ imm = #-0x2
  30ee08: ab05         	add	r3, sp, #0x14
  30ee0a: 4618         	mov	r0, r3
  30ee0c: f07b f2f6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x47b5ec
  30ee10: e7ff         	b	0x30ee12 <CustomAvatarLayer::presentProPackAlert(cocos2d::CCObject*)+0xfe> @ imm = #-0x2
  30ee12: ab08         	add	r3, sp, #0x20
  30ee14: 4618         	mov	r0, r3
  30ee16: f0a6 f57d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a6afa
  30ee1a: e7ff         	b	0x30ee1c <CustomAvatarLayer::presentProPackAlert(cocos2d::CCObject*)+0x108> @ imm = #-0x2
  30ee1c: ab04         	add	r3, sp, #0x10
  30ee1e: 4618         	mov	r0, r3
  30ee20: f07b f2ec    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x47b5d8
  30ee24: ab0b         	add	r3, sp, #0x2c
  30ee26: 4618         	mov	r0, r3
  30ee28: f0a6 f574    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a6ae8
  30ee2c: e7ff         	b	0x30ee2e <CustomAvatarLayer::presentProPackAlert(cocos2d::CCObject*)+0x11a> @ imm = #-0x2
  30ee2e: ab07         	add	r3, sp, #0x1c
  30ee30: 4618         	mov	r0, r3
  30ee32: f07b f2e3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x47b5c6
  30ee36: ab0a         	add	r3, sp, #0x28
  30ee38: 4618         	mov	r0, r3
  30ee3a: f0a6 f56b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4a6ad6
  30ee3e: e7ff         	b	0x30ee40 <CustomAvatarLayer::presentProPackAlert(cocos2d::CCObject*)+0x12c> @ imm = #-0x2
  30ee40: ab06         	add	r3, sp, #0x18
  30ee42: 4618         	mov	r0, r3
  30ee44: f07b f2da    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x47b5b4
  30ee48: f079 f130    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x479260
  30ee4c: b00d         	add	sp, #0x34
  30ee4e: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x30ee4f); words below are literal-pool data ---
  30ee50: 3cea         	subs	r4, #0xea
  30ee52: 0062         	lsls	r2, r4, #0x1
  30ee54: 75fc         	strb	r4, [r7, #0x17]
  30ee56: 004b         	lsls	r3, r1, #0x1
  30ee58: 75f6         	strb	r6, [r6, #0x17]
  30ee5a: 004b         	lsls	r3, r1, #0x1
  30ee5c: 7600         	strb	r0, [r0, #0x18]
  30ee5e: 004b         	lsls	r3, r1, #0x1
  30ee60: 75e4         	strb	r4, [r4, #0x17]
  30ee62: 004b         	lsls	r3, r1, #0x1
  30ee64: d9b8         	bls	0x30edd8 <CustomAvatarLayer::presentProPackAlert(cocos2d::CCObject*)+0xc4> @ imm = #-0x90
  30ee66: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== CustomAvatarLayer::messageBoxHandler
//      file offset 0x30ee68 (= ELF address; Ghidra 0x31ee68), 96 bytes, Thumb-2
  30ee68: b530         	push	{r4, r5, lr}
  30ee6a: b087         	sub	sp, #0x1c
  30ee6c: 9003         	str	r0, [sp, #0xc]
  30ee6e: 9102         	str	r1, [sp, #0x8]
  30ee70: 9201         	str	r2, [sp, #0x4]
  30ee72: 4c12         	ldr	r4, [pc, #0x48]         @ 0x30eebc <CustomAvatarLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x54>
  30ee74: 447c         	add	r4, pc
  30ee76: 9b03         	ldr	r3, [sp, #0xc]
  30ee78: 2b01         	cmp	r3, #0x1
  30ee7a: d11d         	bne	0x30eeb8 <CustomAvatarLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x50> @ imm = #0x3a
  30ee7c: 9b01         	ldr	r3, [sp, #0x4]
  30ee7e: 9305         	str	r3, [sp, #0x14]
  30ee80: 9805         	ldr	r0, [sp, #0x14]
  30ee82: f7ff feb7    	bl	0x30ebf4 <CustomAvatarLayer::saveProperties()> @ imm = #-0x292
  30ee86: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x30eec0 <CustomAvatarLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x58>
  30ee88: 58e3         	ldr	r3, [r4, r3]
  30ee8a: 681b         	ldr	r3, [r3]
  30ee8c: 4618         	mov	r0, r3
  30ee8e: 210e         	movs	r1, #0xe
  30ee90: f0e8 ff96    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xe8f2c
  30ee94: f28c fb6e    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x28c6dc
  30ee98: 4604         	mov	r4, r0
  30ee9a: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x30eec4 <CustomAvatarLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x5c>
  30ee9c: 447b         	add	r3, pc
  30ee9e: 681d         	ldr	r5, [r3]
  30eea0: f0a8 fabc    	bl	0x3b741c <PurchaseLayer::scene()> @ imm = #0xa8578
  30eea4: 4603         	mov	r3, r0
  30eea6: 4628         	mov	r0, r5
  30eea8: 4619         	mov	r1, r3
  30eeaa: f2a2 fa2d    	bl	0x5b1308 <cocos2d::CCTransitionSlideInL::create(float, cocos2d::CCScene*)> @ imm = #0x2a245a
  30eeae: 4603         	mov	r3, r0
  30eeb0: 4620         	mov	r0, r4
  30eeb2: 4619         	mov	r1, r3
  30eeb4: f28d fa52    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x28d4a4
  30eeb8: b007         	add	sp, #0x1c
  30eeba: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x30eebb); words below are literal-pool data ---
  30eebc: 3b94         	subs	r3, #0x94
  30eebe: 0062         	lsls	r2, r4, #0x1
  30eec0: d730         	bvc	0x30ef24 <CustomAvatarLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0xbc> @ imm = #0x60
  30eec2: ffff 4410    	vsri.32	d20, d0, #0x1
  30eec6: 0062         	lsls	r2, r4, #0x1
