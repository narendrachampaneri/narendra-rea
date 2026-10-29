// PointsLayer: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 21 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../PointsLayer.cpp

// ==== PointsLayer::create
//      file offset 0x3aa54c (= ELF address; Ghidra 0x3ba54c), 112 bytes, Thumb-2
  3aa54c: b510         	push	{r4, lr}
  3aa54e: b082         	sub	sp, #0x8
  3aa550: f44f 70ba    	mov.w	r0, #0x174
  3aa554: f3dd fa06    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x3dd40c
  3aa558: 4603         	mov	r3, r0
  3aa55a: 461c         	mov	r4, r3
  3aa55c: 4620         	mov	r0, r4
  3aa55e: f000 f82d    	bl	0x3aa5bc <PointsLayer::PointsLayer()> @ imm = #0x5a
  3aa562: 9401         	str	r4, [sp, #0x4]
  3aa564: 9b01         	ldr	r3, [sp, #0x4]
  3aa566: 2b00         	cmp	r3, #0x0
  3aa568: d00a         	beq	0x3aa580 <PointsLayer::create()+0x34> @ imm = #0x14
  3aa56a: 9b01         	ldr	r3, [sp, #0x4]
  3aa56c: 681b         	ldr	r3, [r3]
  3aa56e: 3318         	adds	r3, #0x18
  3aa570: 681b         	ldr	r3, [r3]
  3aa572: 9801         	ldr	r0, [sp, #0x4]
  3aa574: 4798         	blx	r3
  3aa576: 4603         	mov	r3, r0
  3aa578: 2b00         	cmp	r3, #0x0
  3aa57a: d001         	beq	0x3aa580 <PointsLayer::create()+0x34> @ imm = #0x2
  3aa57c: 2301         	movs	r3, #0x1
  3aa57e: e000         	b	0x3aa582 <PointsLayer::create()+0x36> @ imm = #0x0
  3aa580: 2300         	movs	r3, #0x0
  3aa582: 2b00         	cmp	r3, #0x0
  3aa584: d005         	beq	0x3aa592 <PointsLayer::create()+0x46> @ imm = #0xa
  3aa586: 9b01         	ldr	r3, [sp, #0x4]
  3aa588: 4618         	mov	r0, r3
  3aa58a: f1ed fcb7    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x1ed96e
  3aa58e: 9b01         	ldr	r3, [sp, #0x4]
  3aa590: e011         	b	0x3aa5b6 <PointsLayer::create()+0x6a> @ imm = #0x22
  3aa592: 9b01         	ldr	r3, [sp, #0x4]
  3aa594: 2b00         	cmp	r3, #0x0
  3aa596: d005         	beq	0x3aa5a4 <PointsLayer::create()+0x58> @ imm = #0xa
  3aa598: 9b01         	ldr	r3, [sp, #0x4]
  3aa59a: 681b         	ldr	r3, [r3]
  3aa59c: 3308         	adds	r3, #0x8
  3aa59e: 681b         	ldr	r3, [r3]
  3aa5a0: 9801         	ldr	r0, [sp, #0x4]
  3aa5a2: 4798         	blx	r3
  3aa5a4: 2300         	movs	r3, #0x0
  3aa5a6: 9301         	str	r3, [sp, #0x4]
  3aa5a8: 2300         	movs	r3, #0x0
  3aa5aa: e004         	b	0x3aa5b6 <PointsLayer::create()+0x6a> @ imm = #0x8
  3aa5ac: 4620         	mov	r0, r4
  3aa5ae: f3dd fd79    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3ddaf2
  3aa5b2: f3dd fd7b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3ddaf6
  3aa5b6: 4618         	mov	r0, r3
  3aa5b8: b002         	add	sp, #0x8
  3aa5ba: bd10         	pop	{r4, pc}

// ==== PointsLayer::PointsLayer
//      file offset 0x3aa5bc (= ELF address; Ghidra 0x3ba5bc), 88 bytes, Thumb-2
  3aa5bc: b510         	push	{r4, lr}
  3aa5be: b082         	sub	sp, #0x8
  3aa5c0: 9001         	str	r0, [sp, #0x4]
  3aa5c2: 4c12         	ldr	r4, [pc, #0x48]         @ 0x3aa60c <PointsLayer::PointsLayer()+0x50>
  3aa5c4: 447c         	add	r4, pc
  3aa5c6: 9b01         	ldr	r3, [sp, #0x4]
  3aa5c8: 4618         	mov	r0, r3
  3aa5ca: f202 fd47    	bl	0x5ad05c <cocos2d::CCLayer::CCLayer()> @ imm = #0x202a8e
  3aa5ce: 9b01         	ldr	r3, [sp, #0x4]
  3aa5d0: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x3aa610 <PointsLayer::PointsLayer()+0x54>
  3aa5d2: 58a2         	ldr	r2, [r4, r2]
  3aa5d4: 3208         	adds	r2, #0x8
  3aa5d6: 601a         	str	r2, [r3]
  3aa5d8: 9b01         	ldr	r3, [sp, #0x4]
  3aa5da: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x3aa610 <PointsLayer::PointsLayer()+0x54>
  3aa5dc: 58a2         	ldr	r2, [r4, r2]
  3aa5de: f502 7204    	add.w	r2, r2, #0x210
  3aa5e2: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  3aa5e6: 9b01         	ldr	r3, [sp, #0x4]
  3aa5e8: 4a09         	ldr	r2, [pc, #0x24]         @ 0x3aa610 <PointsLayer::PointsLayer()+0x54>
  3aa5ea: 58a2         	ldr	r2, [r4, r2]
  3aa5ec: f502 7210    	add.w	r2, r2, #0x240
  3aa5f0: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  3aa5f4: 9b01         	ldr	r3, [sp, #0x4]
  3aa5f6: 4a06         	ldr	r2, [pc, #0x18]         @ 0x3aa610 <PointsLayer::PointsLayer()+0x54>
  3aa5f8: 58a2         	ldr	r2, [r4, r2]
  3aa5fa: f502 7213    	add.w	r2, r2, #0x24c
  3aa5fe: f8c3 20ec    	str.w	r2, [r3, #0xec]
  3aa602: 9b01         	ldr	r3, [sp, #0x4]
  3aa604: 4618         	mov	r0, r3
  3aa606: b002         	add	sp, #0x8
  3aa608: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3aa609); words below are literal-pool data ---
  3aa60a: bf00         	nop
  3aa60c: 8444         	strh	r4, [r0, #0x22]
  3aa60e: 0058         	lsls	r0, r3, #0x1
  3aa610: ddc0         	ble	0x3aa594 <PointsLayer::create()+0x48> @ imm = #-0x80
  3aa612: ffff b500    	<unknown>

// ==== PointsLayer::scene
//      file offset 0x3aa614 (= ELF address; Ghidra 0x3ba614), 46 bytes, Thumb-2
  3aa614: b500         	push	{lr}
  3aa616: b083         	sub	sp, #0xc
  3aa618: f205 fa22    	bl	0x5afa60 <cocos2d::CCScene::create()> @ imm = #0x205444
  3aa61c: 4603         	mov	r3, r0
  3aa61e: 9300         	str	r3, [sp]
  3aa620: f7ff ff94    	bl	0x3aa54c <PointsLayer::create()> @ imm = #-0xd8
  3aa624: 4603         	mov	r3, r0
  3aa626: 9301         	str	r3, [sp, #0x4]
  3aa628: 9b00         	ldr	r3, [sp]
  3aa62a: 681b         	ldr	r3, [r3]
  3aa62c: 33c8         	adds	r3, #0xc8
  3aa62e: 681b         	ldr	r3, [r3]
  3aa630: 9a00         	ldr	r2, [sp]
  3aa632: 4610         	mov	r0, r2
  3aa634: 9901         	ldr	r1, [sp, #0x4]
  3aa636: 4798         	blx	r3
  3aa638: 9b00         	ldr	r3, [sp]
  3aa63a: 4618         	mov	r0, r3
  3aa63c: b003         	add	sp, #0xc
  3aa63e: f85d fb04    	ldr	pc, [sp], #4

// ==== PointsLayer::init
//      file offset 0x3aa648 (= ELF address; Ghidra 0x3ba648), 6972 bytes, Thumb-2
  3aa648: b5f0         	push	{r4, r5, r6, r7, lr}
  3aa64a: ed2d 8b02    	vpush	{d8}
  3aa64e: b0bf         	sub	sp, #0xfc
  3aa650: 9003         	str	r0, [sp, #0xc]
  3aa652: 4c09         	ldr	r4, [pc, #0x24]         @ 0x3aa678 <PointsLayer::init()+0x30>
  3aa654: 447c         	add	r4, pc
  3aa656: 9b03         	ldr	r3, [sp, #0xc]
  3aa658: 4618         	mov	r0, r3
  3aa65a: f202 fdcd    	bl	0x5ad1f8 <cocos2d::CCLayer::init()> @ imm = #0x202b9a
  3aa65e: 4603         	mov	r3, r0
  3aa660: f88d 3017    	strb.w	r3, [sp, #0x17]
  3aa664: f89d 3017    	ldrb.w	r3, [sp, #0x17]
  3aa668: f083 0301    	eor	r3, r3, #0x1
  3aa66c: b2db         	uxtb	r3, r3
  3aa66e: 2b00         	cmp	r3, #0x0
  3aa670: d004         	beq	0x3aa67c <PointsLayer::init()+0x34> @ imm = #0x8
  3aa672: 2300         	movs	r3, #0x0
  3aa674: f001 bd79    	b.w	0x3ac16a <PointsLayer::init()+0x1b22> @ imm = #0x1af2
  3aa678: 83b4         	strh	r4, [r6, #0x1c]
  3aa67a: 0058         	lsls	r0, r3, #0x1
  3aa67c: 9b03         	ldr	r3, [sp, #0xc]
  3aa67e: 2200         	movs	r2, #0x0
  3aa680: f883 2108    	strb.w	r2, [r3, #0x108]
  3aa684: 9b03         	ldr	r3, [sp, #0xc]
  3aa686: 2200         	movs	r2, #0x0
  3aa688: f883 216c    	strb.w	r2, [r3, #0x16c]
  3aa68c: ab1e         	add	r3, sp, #0x78
  3aa68e: 4618         	mov	r0, r3
  3aa690: f8df 3568    	ldr.w	r3, [pc, #0x568]        @ 0x3aabfc <PointsLayer::init()+0x5b4>
  3aa694: 58e3         	ldr	r3, [r4, r3]
  3aa696: 4619         	mov	r1, r3
  3aa698: f1e8 fd0a    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x1e8a14
  3aa69c: ed9d 7a1e    	vldr	s14, [sp, #120]
  3aa6a0: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3aa6a4: eec7 6a27    	vdiv.f32	s13, s14, s15
  3aa6a8: ed9d 7a1f    	vldr	s14, [sp, #124]
  3aa6ac: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3aa6b0: eec7 7a27    	vdiv.f32	s15, s14, s15
  3aa6b4: ab20         	add	r3, sp, #0x80
  3aa6b6: 4618         	mov	r0, r3
  3aa6b8: ee16 1a90    	vmov	r1, s13
  3aa6bc: ee17 2a90    	vmov	r2, s15
  3aa6c0: f1e8 fb16    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e862c
  3aa6c4: f04f 0300    	mov.w	r3, #0x0
  3aa6c8: f2cc 13f0    	movt	r3, #0xc1f0
  3aa6cc: 9307         	str	r3, [sp, #0x1c]
  3aa6ce: f04f 0300    	mov.w	r3, #0x0
  3aa6d2: f2c4 2340    	movt	r3, #0x4240
  3aa6d6: 9308         	str	r3, [sp, #0x20]
  3aa6d8: f8df 3524    	ldr.w	r3, [pc, #0x524]        @ 0x3aac00 <PointsLayer::init()+0x5b8>
  3aa6dc: 447b         	add	r3, pc
  3aa6de: 4618         	mov	r0, r3
  3aa6e0: f22d fe10    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x22dc20
  3aa6e4: 4603         	mov	r3, r0
  3aa6e6: 9309         	str	r3, [sp, #0x24]
  3aa6e8: f8df 3518    	ldr.w	r3, [pc, #0x518]        @ 0x3aac04 <PointsLayer::init()+0x5bc>
  3aa6ec: 447b         	add	r3, pc
  3aa6ee: 4618         	mov	r0, r3
  3aa6f0: f22d fe08    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x22dc10
  3aa6f4: 4603         	mov	r3, r0
  3aa6f6: 930a         	str	r3, [sp, #0x28]
  3aa6f8: f8df 350c    	ldr.w	r3, [pc, #0x50c]        @ 0x3aac08 <PointsLayer::init()+0x5c0>
  3aa6fc: 447b         	add	r3, pc
  3aa6fe: 4618         	mov	r0, r3
  3aa700: f22d fe00    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x22dc00
  3aa704: 4603         	mov	r3, r0
  3aa706: 930b         	str	r3, [sp, #0x2c]
  3aa708: f8df 3500    	ldr.w	r3, [pc, #0x500]        @ 0x3aac0c <PointsLayer::init()+0x5c4>
  3aa70c: 447b         	add	r3, pc
  3aa70e: 4618         	mov	r0, r3
  3aa710: f22d fdf8    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x22dbf0
  3aa714: 4603         	mov	r3, r0
  3aa716: 930c         	str	r3, [sp, #0x30]
  3aa718: f8df 34f4    	ldr.w	r3, [pc, #0x4f4]        @ 0x3aac10 <PointsLayer::init()+0x5c8>
  3aa71c: 447b         	add	r3, pc
  3aa71e: 4618         	mov	r0, r3
  3aa720: f22d fdf0    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x22dbe0
  3aa724: 4603         	mov	r3, r0
  3aa726: 930d         	str	r3, [sp, #0x34]
  3aa728: f8df 34e8    	ldr.w	r3, [pc, #0x4e8]        @ 0x3aac14 <PointsLayer::init()+0x5cc>
  3aa72c: 447b         	add	r3, pc
  3aa72e: 4618         	mov	r0, r3
  3aa730: f22d fde8    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x22dbd0
  3aa734: 4603         	mov	r3, r0
  3aa736: 930e         	str	r3, [sp, #0x38]
  3aa738: f8df 34dc    	ldr.w	r3, [pc, #0x4dc]        @ 0x3aac18 <PointsLayer::init()+0x5d0>
  3aa73c: 447b         	add	r3, pc
  3aa73e: 4618         	mov	r0, r3
  3aa740: f22d fde0    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x22dbc0
  3aa744: 4603         	mov	r3, r0
  3aa746: 930f         	str	r3, [sp, #0x3c]
  3aa748: f8df 34d0    	ldr.w	r3, [pc, #0x4d0]        @ 0x3aac1c <PointsLayer::init()+0x5d4>
  3aa74c: 447b         	add	r3, pc
  3aa74e: 4618         	mov	r0, r3
  3aa750: f22d fdd8    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x22dbb0
  3aa754: 4603         	mov	r3, r0
  3aa756: 9310         	str	r3, [sp, #0x40]
  3aa758: f8df 34c4    	ldr.w	r3, [pc, #0x4c4]        @ 0x3aac20 <PointsLayer::init()+0x5d8>
  3aa75c: 447b         	add	r3, pc
  3aa75e: 4618         	mov	r0, r3
  3aa760: f22d fdd0    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x22dba0
  3aa764: 4603         	mov	r3, r0
  3aa766: 9311         	str	r3, [sp, #0x44]
  3aa768: f8df 34b8    	ldr.w	r3, [pc, #0x4b8]        @ 0x3aac24 <PointsLayer::init()+0x5dc>
  3aa76c: 447b         	add	r3, pc
  3aa76e: 4618         	mov	r0, r3
  3aa770: f22d fdc8    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x22db90
  3aa774: 4603         	mov	r3, r0
  3aa776: 9312         	str	r3, [sp, #0x48]
  3aa778: f8df 34ac    	ldr.w	r3, [pc, #0x4ac]        @ 0x3aac28 <PointsLayer::init()+0x5e0>
  3aa77c: 447b         	add	r3, pc
  3aa77e: 4618         	mov	r0, r3
  3aa780: f22d fdc0    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x22db80
  3aa784: 4603         	mov	r3, r0
  3aa786: 9313         	str	r3, [sp, #0x4c]
  3aa788: f8df 34a0    	ldr.w	r3, [pc, #0x4a0]        @ 0x3aac2c <PointsLayer::init()+0x5e4>
  3aa78c: 447b         	add	r3, pc
  3aa78e: 4618         	mov	r0, r3
  3aa790: f22d fdb8    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x22db70
  3aa794: 4603         	mov	r3, r0
  3aa796: 9314         	str	r3, [sp, #0x50]
  3aa798: f8df 3494    	ldr.w	r3, [pc, #0x494]        @ 0x3aac30 <PointsLayer::init()+0x5e8>
  3aa79c: 447b         	add	r3, pc
  3aa79e: 4618         	mov	r0, r3
  3aa7a0: f22d fdb0    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x22db60
  3aa7a4: 4603         	mov	r3, r0
  3aa7a6: 9315         	str	r3, [sp, #0x54]
  3aa7a8: f8df 3488    	ldr.w	r3, [pc, #0x488]        @ 0x3aac34 <PointsLayer::init()+0x5ec>
  3aa7ac: 447b         	add	r3, pc
  3aa7ae: 4618         	mov	r0, r3
  3aa7b0: f22d fda8    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x22db50
  3aa7b4: 4603         	mov	r3, r0
  3aa7b6: 9316         	str	r3, [sp, #0x58]
  3aa7b8: 9a03         	ldr	r2, [sp, #0xc]
  3aa7ba: f8df 347c    	ldr.w	r3, [pc, #0x47c]        @ 0x3aac38 <PointsLayer::init()+0x5f0>
  3aa7be: 58e3         	ldr	r3, [r4, r3]
  3aa7c0: 9328         	str	r3, [sp, #0xa0]
  3aa7c2: 2300         	movs	r3, #0x0
  3aa7c4: 9329         	str	r3, [sp, #0xa4]
  3aa7c6: 9b29         	ldr	r3, [sp, #0xa4]
  3aa7c8: 9300         	str	r3, [sp]
  3aa7ca: 9b28         	ldr	r3, [sp, #0xa0]
  3aa7cc: 9809         	ldr	r0, [sp, #0x24]
  3aa7ce: 990a         	ldr	r1, [sp, #0x28]
  3aa7d0: f20d fdac    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x20db58
  3aa7d4: 4603         	mov	r3, r0
  3aa7d6: 9317         	str	r3, [sp, #0x5c]
  3aa7d8: 9817         	ldr	r0, [sp, #0x5c]
  3aa7da: 2100         	movs	r1, #0x0
  3aa7dc: f20a fcae    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x20a95c
  3aa7e0: 4602         	mov	r2, r0
  3aa7e2: 9b03         	ldr	r3, [sp, #0xc]
  3aa7e4: f8c3 2138    	str.w	r2, [r3, #0x138]
  3aa7e8: 9b03         	ldr	r3, [sp, #0xc]
  3aa7ea: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3aa7ee: 4618         	mov	r0, r3
  3aa7f0: f1ed fb7a    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1ed6f4
  3aa7f4: 9b03         	ldr	r3, [sp, #0xc]
  3aa7f6: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3aa7fa: 681b         	ldr	r3, [r3]
  3aa7fc: 334c         	adds	r3, #0x4c
  3aa7fe: 681d         	ldr	r5, [r3]
  3aa800: 9b03         	ldr	r3, [sp, #0xc]
  3aa802: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3aa806: 461e         	mov	r6, r3
  3aa808: ed9d 7a20    	vldr	s14, [sp, #128]
  3aa80c: eddd 7a07    	vldr	s15, [sp, #28]
  3aa810: ee77 6a27    	vadd.f32	s13, s14, s15
  3aa814: ed9d 7a21    	vldr	s14, [sp, #132]
  3aa818: eddd 7a08    	vldr	s15, [sp, #32]
  3aa81c: ee77 7aa7    	vadd.f32	s15, s15, s15
  3aa820: ee77 7a27    	vadd.f32	s15, s14, s15
  3aa824: ab3a         	add	r3, sp, #0xe8
  3aa826: 4618         	mov	r0, r3
  3aa828: ee16 1a90    	vmov	r1, s13
  3aa82c: ee17 2a90    	vmov	r2, s15
  3aa830: f1e8 fa5e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e84bc
  3aa834: ab3a         	add	r3, sp, #0xe8
  3aa836: 4630         	mov	r0, r6
  3aa838: 4619         	mov	r1, r3
  3aa83a: 47a8         	blx	r5
  3aa83c: 9b03         	ldr	r3, [sp, #0xc]
  3aa83e: 681b         	ldr	r3, [r3]
  3aa840: 33c8         	adds	r3, #0xc8
  3aa842: 681b         	ldr	r3, [r3]
  3aa844: 9903         	ldr	r1, [sp, #0xc]
  3aa846: 9a03         	ldr	r2, [sp, #0xc]
  3aa848: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  3aa84c: 4608         	mov	r0, r1
  3aa84e: 4611         	mov	r1, r2
  3aa850: 4798         	blx	r3
  3aa852: 9a03         	ldr	r2, [sp, #0xc]
  3aa854: 4bf9         	ldr	r3, [pc, #0x3e4]        @ 0x3aac3c <PointsLayer::init()+0x5f4>
  3aa856: 58e3         	ldr	r3, [r4, r3]
  3aa858: 932a         	str	r3, [sp, #0xa8]
  3aa85a: 2300         	movs	r3, #0x0
  3aa85c: 932b         	str	r3, [sp, #0xac]
  3aa85e: 9b2b         	ldr	r3, [sp, #0xac]
  3aa860: 9300         	str	r3, [sp]
  3aa862: 9b2a         	ldr	r3, [sp, #0xa8]
  3aa864: 980b         	ldr	r0, [sp, #0x2c]
  3aa866: 990c         	ldr	r1, [sp, #0x30]
  3aa868: f20d fd60    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x20dac0
  3aa86c: 4603         	mov	r3, r0
  3aa86e: 9318         	str	r3, [sp, #0x60]
  3aa870: 9818         	ldr	r0, [sp, #0x60]
  3aa872: 2100         	movs	r1, #0x0
  3aa874: f20a fc62    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x20a8c4
  3aa878: 4602         	mov	r2, r0
  3aa87a: 9b03         	ldr	r3, [sp, #0xc]
  3aa87c: f8c3 2144    	str.w	r2, [r3, #0x144]
  3aa880: 9b03         	ldr	r3, [sp, #0xc]
  3aa882: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  3aa886: 4618         	mov	r0, r3
  3aa888: f1ed fb2e    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1ed65c
  3aa88c: 9b03         	ldr	r3, [sp, #0xc]
  3aa88e: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  3aa892: 681b         	ldr	r3, [r3]
  3aa894: 334c         	adds	r3, #0x4c
  3aa896: 681d         	ldr	r5, [r3]
  3aa898: 9b03         	ldr	r3, [sp, #0xc]
  3aa89a: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  3aa89e: 461e         	mov	r6, r3
  3aa8a0: ed9d 7a20    	vldr	s14, [sp, #128]
  3aa8a4: eddd 7a07    	vldr	s15, [sp, #28]
  3aa8a8: ee77 6a27    	vadd.f32	s13, s14, s15
  3aa8ac: ed9d 7a21    	vldr	s14, [sp, #132]
  3aa8b0: eddd 7a08    	vldr	s15, [sp, #32]
  3aa8b4: ee77 7a27    	vadd.f32	s15, s14, s15
  3aa8b8: ab3a         	add	r3, sp, #0xe8
  3aa8ba: 4618         	mov	r0, r3
  3aa8bc: ee16 1a90    	vmov	r1, s13
  3aa8c0: ee17 2a90    	vmov	r2, s15
  3aa8c4: f1e8 fa14    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e8428
  3aa8c8: ab3a         	add	r3, sp, #0xe8
  3aa8ca: 4630         	mov	r0, r6
  3aa8cc: 4619         	mov	r1, r3
  3aa8ce: 47a8         	blx	r5
  3aa8d0: 9b03         	ldr	r3, [sp, #0xc]
  3aa8d2: 681b         	ldr	r3, [r3]
  3aa8d4: 33c8         	adds	r3, #0xc8
  3aa8d6: 681b         	ldr	r3, [r3]
  3aa8d8: 9903         	ldr	r1, [sp, #0xc]
  3aa8da: 9a03         	ldr	r2, [sp, #0xc]
  3aa8dc: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  3aa8e0: 4608         	mov	r0, r1
  3aa8e2: 4611         	mov	r1, r2
  3aa8e4: 4798         	blx	r3
  3aa8e6: 9a03         	ldr	r2, [sp, #0xc]
  3aa8e8: 4bd5         	ldr	r3, [pc, #0x354]        @ 0x3aac40 <PointsLayer::init()+0x5f8>
  3aa8ea: 58e3         	ldr	r3, [r4, r3]
  3aa8ec: 932c         	str	r3, [sp, #0xb0]
  3aa8ee: 2300         	movs	r3, #0x0
  3aa8f0: 932d         	str	r3, [sp, #0xb4]
  3aa8f2: 9b2d         	ldr	r3, [sp, #0xb4]
  3aa8f4: 9300         	str	r3, [sp]
  3aa8f6: 9b2c         	ldr	r3, [sp, #0xb0]
  3aa8f8: 980d         	ldr	r0, [sp, #0x34]
  3aa8fa: 990e         	ldr	r1, [sp, #0x38]
  3aa8fc: f20d fd16    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x20da2c
  3aa900: 4603         	mov	r3, r0
  3aa902: 9319         	str	r3, [sp, #0x64]
  3aa904: 9819         	ldr	r0, [sp, #0x64]
  3aa906: 2100         	movs	r1, #0x0
  3aa908: f20a fc18    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x20a830
  3aa90c: 4602         	mov	r2, r0
  3aa90e: 9b03         	ldr	r3, [sp, #0xc]
  3aa910: f8c3 2150    	str.w	r2, [r3, #0x150]
  3aa914: 9b03         	ldr	r3, [sp, #0xc]
  3aa916: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3aa91a: 4618         	mov	r0, r3
  3aa91c: f1ed fae4    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1ed5c8
  3aa920: 9b03         	ldr	r3, [sp, #0xc]
  3aa922: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3aa926: 681b         	ldr	r3, [r3]
  3aa928: 334c         	adds	r3, #0x4c
  3aa92a: 681d         	ldr	r5, [r3]
  3aa92c: 9b03         	ldr	r3, [sp, #0xc]
  3aa92e: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3aa932: 461e         	mov	r6, r3
  3aa934: ed9d 7a20    	vldr	s14, [sp, #128]
  3aa938: eddd 7a07    	vldr	s15, [sp, #28]
  3aa93c: ee37 6a27    	vadd.f32	s12, s14, s15
  3aa940: ed9d 7a21    	vldr	s14, [sp, #132]
  3aa944: eddd 6a08    	vldr	s13, [sp, #32]
  3aa948: eddf 7aaa    	vldr	s15, [pc, #680]         @ 0x3aabf4 <PointsLayer::init()+0x5ac>
  3aa94c: ee66 7aa7    	vmul.f32	s15, s13, s15
  3aa950: ee77 7a27    	vadd.f32	s15, s14, s15
  3aa954: ab3a         	add	r3, sp, #0xe8
  3aa956: 4618         	mov	r0, r3
  3aa958: ee16 1a10    	vmov	r1, s12
  3aa95c: ee17 2a90    	vmov	r2, s15
  3aa960: f1e8 f9c6    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e838c
  3aa964: ab3a         	add	r3, sp, #0xe8
  3aa966: 4630         	mov	r0, r6
  3aa968: 4619         	mov	r1, r3
  3aa96a: 47a8         	blx	r5
  3aa96c: 9b03         	ldr	r3, [sp, #0xc]
  3aa96e: 681b         	ldr	r3, [r3]
  3aa970: 33c8         	adds	r3, #0xc8
  3aa972: 681b         	ldr	r3, [r3]
  3aa974: 9903         	ldr	r1, [sp, #0xc]
  3aa976: 9a03         	ldr	r2, [sp, #0xc]
  3aa978: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3aa97c: 4608         	mov	r0, r1
  3aa97e: 4611         	mov	r1, r2
  3aa980: 4798         	blx	r3
  3aa982: 9a03         	ldr	r2, [sp, #0xc]
  3aa984: 4baf         	ldr	r3, [pc, #0x2bc]        @ 0x3aac44 <PointsLayer::init()+0x5fc>
  3aa986: 58e3         	ldr	r3, [r4, r3]
  3aa988: 932e         	str	r3, [sp, #0xb8]
  3aa98a: 2300         	movs	r3, #0x0
  3aa98c: 932f         	str	r3, [sp, #0xbc]
  3aa98e: 9b2f         	ldr	r3, [sp, #0xbc]
  3aa990: 9300         	str	r3, [sp]
  3aa992: 9b2e         	ldr	r3, [sp, #0xb8]
  3aa994: 980f         	ldr	r0, [sp, #0x3c]
  3aa996: 9910         	ldr	r1, [sp, #0x40]
  3aa998: f20d fcc8    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x20d990
  3aa99c: 4603         	mov	r3, r0
  3aa99e: 931a         	str	r3, [sp, #0x68]
  3aa9a0: 981a         	ldr	r0, [sp, #0x68]
  3aa9a2: 2100         	movs	r1, #0x0
  3aa9a4: f20a fbca    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x20a794
  3aa9a8: 4602         	mov	r2, r0
  3aa9aa: 9b03         	ldr	r3, [sp, #0xc]
  3aa9ac: f8c3 215c    	str.w	r2, [r3, #0x15c]
  3aa9b0: 9b03         	ldr	r3, [sp, #0xc]
  3aa9b2: f8d3 315c    	ldr.w	r3, [r3, #0x15c]
  3aa9b6: 4618         	mov	r0, r3
  3aa9b8: f1ed fa96    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1ed52c
  3aa9bc: 9b03         	ldr	r3, [sp, #0xc]
  3aa9be: f8d3 315c    	ldr.w	r3, [r3, #0x15c]
  3aa9c2: 681b         	ldr	r3, [r3]
  3aa9c4: 334c         	adds	r3, #0x4c
  3aa9c6: 681d         	ldr	r5, [r3]
  3aa9c8: 9b03         	ldr	r3, [sp, #0xc]
  3aa9ca: f8d3 315c    	ldr.w	r3, [r3, #0x15c]
  3aa9ce: 461e         	mov	r6, r3
  3aa9d0: ed9d 7a20    	vldr	s14, [sp, #128]
  3aa9d4: eddd 7a07    	vldr	s15, [sp, #28]
  3aa9d8: ee77 6a27    	vadd.f32	s13, s14, s15
  3aa9dc: ed9d 7a21    	vldr	s14, [sp, #132]
  3aa9e0: eddd 7a08    	vldr	s15, [sp, #32]
  3aa9e4: ee77 7a67    	vsub.f32	s15, s14, s15
  3aa9e8: ab3a         	add	r3, sp, #0xe8
  3aa9ea: 4618         	mov	r0, r3
  3aa9ec: ee16 1a90    	vmov	r1, s13
  3aa9f0: ee17 2a90    	vmov	r2, s15
  3aa9f4: f1e8 f97c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e82f8
  3aa9f8: ab3a         	add	r3, sp, #0xe8
  3aa9fa: 4630         	mov	r0, r6
  3aa9fc: 4619         	mov	r1, r3
  3aa9fe: 47a8         	blx	r5
  3aaa00: 9b03         	ldr	r3, [sp, #0xc]
  3aaa02: 681b         	ldr	r3, [r3]
  3aaa04: 33c8         	adds	r3, #0xc8
  3aaa06: 681b         	ldr	r3, [r3]
  3aaa08: 9903         	ldr	r1, [sp, #0xc]
  3aaa0a: 9a03         	ldr	r2, [sp, #0xc]
  3aaa0c: f8d2 215c    	ldr.w	r2, [r2, #0x15c]
  3aaa10: 4608         	mov	r0, r1
  3aaa12: 4611         	mov	r1, r2
  3aaa14: 4798         	blx	r3
  3aaa16: 9a03         	ldr	r2, [sp, #0xc]
  3aaa18: 4b8b         	ldr	r3, [pc, #0x22c]        @ 0x3aac48 <PointsLayer::init()+0x600>
  3aaa1a: 58e3         	ldr	r3, [r4, r3]
  3aaa1c: 9330         	str	r3, [sp, #0xc0]
  3aaa1e: 2300         	movs	r3, #0x0
  3aaa20: 9331         	str	r3, [sp, #0xc4]
  3aaa22: 9b31         	ldr	r3, [sp, #0xc4]
  3aaa24: 9300         	str	r3, [sp]
  3aaa26: 9b30         	ldr	r3, [sp, #0xc0]
  3aaa28: 9811         	ldr	r0, [sp, #0x44]
  3aaa2a: 9912         	ldr	r1, [sp, #0x48]
  3aaa2c: f20d fc7e    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x20d8fc
  3aaa30: 4603         	mov	r3, r0
  3aaa32: 931b         	str	r3, [sp, #0x6c]
  3aaa34: 981b         	ldr	r0, [sp, #0x6c]
  3aaa36: 2100         	movs	r1, #0x0
  3aaa38: f20a fb80    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x20a700
  3aaa3c: 4602         	mov	r2, r0
  3aaa3e: 9b03         	ldr	r3, [sp, #0xc]
  3aaa40: f8c3 2168    	str.w	r2, [r3, #0x168]
  3aaa44: 9b03         	ldr	r3, [sp, #0xc]
  3aaa46: f8d3 3168    	ldr.w	r3, [r3, #0x168]
  3aaa4a: 4618         	mov	r0, r3
  3aaa4c: f1ed fa4c    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1ed498
  3aaa50: 9b03         	ldr	r3, [sp, #0xc]
  3aaa52: f8d3 3168    	ldr.w	r3, [r3, #0x168]
  3aaa56: 681b         	ldr	r3, [r3]
  3aaa58: 334c         	adds	r3, #0x4c
  3aaa5a: 681d         	ldr	r5, [r3]
  3aaa5c: 9b03         	ldr	r3, [sp, #0xc]
  3aaa5e: f8d3 3168    	ldr.w	r3, [r3, #0x168]
  3aaa62: 461e         	mov	r6, r3
  3aaa64: ed9d 7a20    	vldr	s14, [sp, #128]
  3aaa68: eddd 7a07    	vldr	s15, [sp, #28]
  3aaa6c: ee37 6a27    	vadd.f32	s12, s14, s15
  3aaa70: ed9d 7a21    	vldr	s14, [sp, #132]
  3aaa74: eddd 6a08    	vldr	s13, [sp, #32]
  3aaa78: eef8 7a00    	vmov.f32	s15, #-2.000000e+00
  3aaa7c: ee66 7aa7    	vmul.f32	s15, s13, s15
  3aaa80: ee77 7a27    	vadd.f32	s15, s14, s15
  3aaa84: ab3a         	add	r3, sp, #0xe8
  3aaa86: 4618         	mov	r0, r3
  3aaa88: ee16 1a10    	vmov	r1, s12
  3aaa8c: ee17 2a90    	vmov	r2, s15
  3aaa90: f1e8 f92e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e825c
  3aaa94: ab3a         	add	r3, sp, #0xe8
  3aaa96: 4630         	mov	r0, r6
  3aaa98: 4619         	mov	r1, r3
  3aaa9a: 47a8         	blx	r5
  3aaa9c: 9b03         	ldr	r3, [sp, #0xc]
  3aaa9e: 681b         	ldr	r3, [r3]
  3aaaa0: 33c8         	adds	r3, #0xc8
  3aaaa2: 681b         	ldr	r3, [r3]
  3aaaa4: 9903         	ldr	r1, [sp, #0xc]
  3aaaa6: 9a03         	ldr	r2, [sp, #0xc]
  3aaaa8: f8d2 2168    	ldr.w	r2, [r2, #0x168]
  3aaaac: 4608         	mov	r0, r1
  3aaaae: 4611         	mov	r1, r2
  3aaab0: 4798         	blx	r3
  3aaab2: 9a03         	ldr	r2, [sp, #0xc]
  3aaab4: 4b65         	ldr	r3, [pc, #0x194]        @ 0x3aac4c <PointsLayer::init()+0x604>
  3aaab6: 58e3         	ldr	r3, [r4, r3]
  3aaab8: 9332         	str	r3, [sp, #0xc8]
  3aaaba: 2300         	movs	r3, #0x0
  3aaabc: 9333         	str	r3, [sp, #0xcc]
  3aaabe: 9b33         	ldr	r3, [sp, #0xcc]
  3aaac0: 9300         	str	r3, [sp]
  3aaac2: 9b32         	ldr	r3, [sp, #0xc8]
  3aaac4: 9813         	ldr	r0, [sp, #0x4c]
  3aaac6: 9914         	ldr	r1, [sp, #0x50]
  3aaac8: f20d fc30    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x20d860
  3aaacc: 4603         	mov	r3, r0
  3aaace: 931c         	str	r3, [sp, #0x70]
  3aaad0: 981c         	ldr	r0, [sp, #0x70]
  3aaad2: 2100         	movs	r1, #0x0
  3aaad4: f20a fb32    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x20a664
  3aaad8: 4602         	mov	r2, r0
  3aaada: 9b03         	ldr	r3, [sp, #0xc]
  3aaadc: f8c3 2124    	str.w	r2, [r3, #0x124]
  3aaae0: 9b03         	ldr	r3, [sp, #0xc]
  3aaae2: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3aaae6: 4618         	mov	r0, r3
  3aaae8: f1ed f9fe    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1ed3fc
  3aaaec: 9b03         	ldr	r3, [sp, #0xc]
  3aaaee: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3aaaf2: 681b         	ldr	r3, [r3]
  3aaaf4: 334c         	adds	r3, #0x4c
  3aaaf6: 681d         	ldr	r5, [r3]
  3aaaf8: 9b03         	ldr	r3, [sp, #0xc]
  3aaafa: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3aaafe: 461e         	mov	r6, r3
  3aab00: 4b3e         	ldr	r3, [pc, #0xf8]         @ 0x3aabfc <PointsLayer::init()+0x5b4>
  3aab02: 58e3         	ldr	r3, [r4, r3]
  3aab04: ed93 7a00    	vldr	s14, [r3]
  3aab08: eddf 7a3b    	vldr	s15, [pc, #236]         @ 0x3aabf8 <PointsLayer::init()+0x5b0>
  3aab0c: ee77 7a67    	vsub.f32	s15, s14, s15
  3aab10: ab3a         	add	r3, sp, #0xe8
  3aab12: 4618         	mov	r0, r3
  3aab14: ee17 1a90    	vmov	r1, s15
  3aab18: f04f 4284    	mov.w	r2, #0x42000000
  3aab1c: f1e8 f8e8    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e81d0
  3aab20: ab3a         	add	r3, sp, #0xe8
  3aab22: 4630         	mov	r0, r6
  3aab24: 4619         	mov	r1, r3
  3aab26: 47a8         	blx	r5
  3aab28: 9b03         	ldr	r3, [sp, #0xc]
  3aab2a: 681b         	ldr	r3, [r3]
  3aab2c: 33c8         	adds	r3, #0xc8
  3aab2e: 681b         	ldr	r3, [r3]
  3aab30: 9903         	ldr	r1, [sp, #0xc]
  3aab32: 9a03         	ldr	r2, [sp, #0xc]
  3aab34: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  3aab38: 4608         	mov	r0, r1
  3aab3a: 4611         	mov	r1, r2
  3aab3c: 4798         	blx	r3
  3aab3e: 9a03         	ldr	r2, [sp, #0xc]
  3aab40: 4b43         	ldr	r3, [pc, #0x10c]        @ 0x3aac50 <PointsLayer::init()+0x608>
  3aab42: 58e3         	ldr	r3, [r4, r3]
  3aab44: 9334         	str	r3, [sp, #0xd0]
  3aab46: 2300         	movs	r3, #0x0
  3aab48: 9335         	str	r3, [sp, #0xd4]
  3aab4a: 9b35         	ldr	r3, [sp, #0xd4]
  3aab4c: 9300         	str	r3, [sp]
  3aab4e: 9b34         	ldr	r3, [sp, #0xd0]
  3aab50: 9815         	ldr	r0, [sp, #0x54]
  3aab52: 9916         	ldr	r1, [sp, #0x58]
  3aab54: f20d fbea    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x20d7d4
  3aab58: 4603         	mov	r3, r0
  3aab5a: 931d         	str	r3, [sp, #0x74]
  3aab5c: 981d         	ldr	r0, [sp, #0x74]
  3aab5e: 2100         	movs	r1, #0x0
  3aab60: f20a faec    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x20a5d8
  3aab64: 4602         	mov	r2, r0
  3aab66: 9b03         	ldr	r3, [sp, #0xc]
  3aab68: f8c3 212c    	str.w	r2, [r3, #0x12c]
  3aab6c: 9b03         	ldr	r3, [sp, #0xc]
  3aab6e: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  3aab72: 4618         	mov	r0, r3
  3aab74: f1ed f9b8    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1ed370
  3aab78: 9b03         	ldr	r3, [sp, #0xc]
  3aab7a: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  3aab7e: 681b         	ldr	r3, [r3]
  3aab80: 334c         	adds	r3, #0x4c
  3aab82: 681d         	ldr	r5, [r3]
  3aab84: 9b03         	ldr	r3, [sp, #0xc]
  3aab86: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  3aab8a: 461e         	mov	r6, r3
  3aab8c: ab3a         	add	r3, sp, #0xe8
  3aab8e: 4618         	mov	r0, r3
  3aab90: f04f 0100    	mov.w	r1, #0x0
  3aab94: f2c4 2160    	movt	r1, #0x4260
  3aab98: f04f 4284    	mov.w	r2, #0x42000000
  3aab9c: f1e8 f8a8    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e8150
  3aaba0: ab3a         	add	r3, sp, #0xe8
  3aaba2: 4630         	mov	r0, r6
  3aaba4: 4619         	mov	r1, r3
  3aaba6: 47a8         	blx	r5
  3aaba8: 9b03         	ldr	r3, [sp, #0xc]
  3aabaa: 681b         	ldr	r3, [r3]
  3aabac: 33c8         	adds	r3, #0xc8
  3aabae: 681b         	ldr	r3, [r3]
  3aabb0: 9903         	ldr	r1, [sp, #0xc]
  3aabb2: 9a03         	ldr	r2, [sp, #0xc]
  3aabb4: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  3aabb8: 4608         	mov	r0, r1
  3aabba: 4611         	mov	r1, r2
  3aabbc: 4798         	blx	r3
  3aabbe: 9b03         	ldr	r3, [sp, #0xc]
  3aabc0: f64c 42cd    	movw	r2, #0xcccd
  3aabc4: f6c3 720c    	movt	r2, #0x3f0c
  3aabc8: f8c3 210c    	str.w	r2, [r3, #0x10c]
  3aabcc: 9b03         	ldr	r3, [sp, #0xc]
  3aabce: f04f 0200    	mov.w	r2, #0x0
  3aabd2: f2c4 12c0    	movt	r2, #0x41c0
  3aabd6: f8c3 2110    	str.w	r2, [r3, #0x110]
  3aabda: 9b03         	ldr	r3, [sp, #0xc]
  3aabdc: f04f 4241    	mov.w	r2, #0xc1000000
  3aabe0: f8c3 2114    	str.w	r2, [r3, #0x114]
  3aabe4: 4b1b         	ldr	r3, [pc, #0x6c]         @ 0x3aac54 <PointsLayer::init()+0x60c>
  3aabe6: 447b         	add	r3, pc
  3aabe8: 4618         	mov	r0, r3
  3aabea: f22d facb    	bl	0x5d8184 <cocos2d::CCSprite::create(char const*)> @ imm = #0x22d596
  3aabee: 4602         	mov	r2, r0
  3aabf0: e032         	b	0x3aac58 <PointsLayer::init()+0x610> @ imm = #0x64
  3aabf2: bf00         	nop
  3aabf4: 0000         	movs	r0, r0
  3aabf6: 0000         	movs	r0, r0
  3aabf8: 0000         	movs	r0, r0
  3aabfa: 42b4         	cmp	r4, r6
  3aabfc: d724         	bvc	0x3aac48 <PointsLayer::init()+0x600> @ imm = #0x48
  3aabfe: ffff 8d18    	<unknown>
  3aac02: 0042         	lsls	r2, r0, #0x1
  3aac04: 8d08         	ldrh	r0, [r1, #0x28]
  3aac06: 0042         	lsls	r2, r0, #0x1
  3aac08: 8cf8         	ldrh	r0, [r7, #0x26]
  3aac0a: 0042         	lsls	r2, r0, #0x1
  3aac0c: 8ce8         	ldrh	r0, [r5, #0x26]
  3aac0e: 0042         	lsls	r2, r0, #0x1
  3aac10: 8cd8         	ldrh	r0, [r3, #0x26]
  3aac12: 0042         	lsls	r2, r0, #0x1
  3aac14: 8cc8         	ldrh	r0, [r1, #0x26]
  3aac16: 0042         	lsls	r2, r0, #0x1
  3aac18: 8cb8         	ldrh	r0, [r7, #0x24]
  3aac1a: 0042         	lsls	r2, r0, #0x1
  3aac1c: 8ca8         	ldrh	r0, [r5, #0x24]
  3aac1e: 0042         	lsls	r2, r0, #0x1
  3aac20: 8c98         	ldrh	r0, [r3, #0x24]
  3aac22: 0042         	lsls	r2, r0, #0x1
  3aac24: 8c88         	ldrh	r0, [r1, #0x24]
  3aac26: 0042         	lsls	r2, r0, #0x1
  3aac28: 8c84         	ldrh	r4, [r0, #0x24]
  3aac2a: 0042         	lsls	r2, r0, #0x1
  3aac2c: 8c74         	ldrh	r4, [r6, #0x22]
  3aac2e: 0042         	lsls	r2, r0, #0x1
  3aac30: 8c70         	ldrh	r0, [r6, #0x22]
  3aac32: 0042         	lsls	r2, r0, #0x1
  3aac34: 8c60         	ldrh	r0, [r4, #0x22]
  3aac36: 0042         	lsls	r2, r0, #0x1
  3aac38: ddc4         	ble	0x3aabc4 <PointsLayer::init()+0x57c> @ imm = #-0x78
  3aac3a: ffff ddc8    	<unknown>
  3aac3e: ffff ddcc    	<unknown>
  3aac42: ffff ddd0    	<unknown>
  3aac46: ffff ddd4    	<unknown>
  3aac4a: ffff ddd8    	<unknown>
  3aac4e: ffff dddc    	<unknown>
  3aac52: ffff 8832    	vqshrun.s64	d24, q9, #0x1
  3aac56: 0042         	lsls	r2, r0, #0x1
  3aac58: 9b03         	ldr	r3, [sp, #0xc]
  3aac5a: f8c3 2130    	str.w	r2, [r3, #0x130]
  3aac5e: 9b03         	ldr	r3, [sp, #0xc]
  3aac60: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  3aac64: 681b         	ldr	r3, [r3]
  3aac66: 334c         	adds	r3, #0x4c
  3aac68: 681b         	ldr	r3, [r3]
  3aac6a: 9a03         	ldr	r2, [sp, #0xc]
  3aac6c: f8d2 1130    	ldr.w	r1, [r2, #0x130]
  3aac70: aa20         	add	r2, sp, #0x80
  3aac72: 4608         	mov	r0, r1
  3aac74: 4611         	mov	r1, r2
  3aac76: 4798         	blx	r3
  3aac78: 9b03         	ldr	r3, [sp, #0xc]
  3aac7a: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  3aac7e: 681b         	ldr	r3, [r3]
  3aac80: f503 73d2    	add.w	r3, r3, #0x1a4
  3aac84: 681b         	ldr	r3, [r3]
  3aac86: 9a03         	ldr	r2, [sp, #0xc]
  3aac88: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  3aac8c: 4610         	mov	r0, r2
  3aac8e: 2123         	movs	r1, #0x23
  3aac90: 4798         	blx	r3
  3aac92: 9b03         	ldr	r3, [sp, #0xc]
  3aac94: 681b         	ldr	r3, [r3]
  3aac96: 33c8         	adds	r3, #0xc8
  3aac98: 681b         	ldr	r3, [r3]
  3aac9a: 9903         	ldr	r1, [sp, #0xc]
  3aac9c: 9a03         	ldr	r2, [sp, #0xc]
  3aac9e: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  3aaca2: 4608         	mov	r0, r1
  3aaca4: 4611         	mov	r1, r2
  3aaca6: 4798         	blx	r3
  3aaca8: 4be9         	ldr	r3, [pc, #0x3a4]        @ 0x3ab050 <PointsLayer::init()+0xa08>
  3aacaa: 447b         	add	r3, pc
  3aacac: 4618         	mov	r0, r3
  3aacae: f00a f327    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x40a64e
  3aacb2: 4603         	mov	r3, r0
  3aacb4: 2220         	movs	r2, #0x20
  3aacb6: 9200         	str	r2, [sp]
  3aacb8: 4ae6         	ldr	r2, [pc, #0x398]        @ 0x3ab054 <PointsLayer::init()+0xa0c>
  3aacba: 447a         	add	r2, pc
  3aacbc: 4610         	mov	r0, r2
  3aacbe: 4619         	mov	r1, r3
  3aacc0: 2220         	movs	r2, #0x20
  3aacc2: 2320         	movs	r3, #0x20
  3aacc4: f1fa fb58    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1fa6b0
  3aacc8: 4602         	mov	r2, r0
  3aacca: 9b03         	ldr	r3, [sp, #0xc]
  3aaccc: f8c3 2134    	str.w	r2, [r3, #0x134]
  3aacd0: 9b03         	ldr	r3, [sp, #0xc]
  3aacd2: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  3aacd6: 4618         	mov	r0, r3
  3aacd8: f1ed f906    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1ed20c
  3aacdc: 9b03         	ldr	r3, [sp, #0xc]
  3aacde: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  3aace2: 9a03         	ldr	r2, [sp, #0xc]
  3aace4: edd2 7a44    	vldr	s15, [r2, #272]
  3aace8: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3aacec: ee17 2a90    	vmov	r2, s15
  3aacf0: 4618         	mov	r0, r3
  3aacf2: 4611         	mov	r1, r2
  3aacf4: f1fb f846    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1fb08c
  3aacf8: 9b03         	ldr	r3, [sp, #0xc]
  3aacfa: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  3aacfe: 681b         	ldr	r3, [r3]
  3aad00: 3340         	adds	r3, #0x40
  3aad02: 681b         	ldr	r3, [r3]
  3aad04: 9a03         	ldr	r2, [sp, #0xc]
  3aad06: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  3aad0a: 4611         	mov	r1, r2
  3aad0c: 9a03         	ldr	r2, [sp, #0xc]
  3aad0e: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3aad12: 4608         	mov	r0, r1
  3aad14: 4611         	mov	r1, r2
  3aad16: 4798         	blx	r3
  3aad18: 9b03         	ldr	r3, [sp, #0xc]
  3aad1a: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  3aad1e: 681b         	ldr	r3, [r3]
  3aad20: 334c         	adds	r3, #0x4c
  3aad22: 681d         	ldr	r5, [r3]
  3aad24: 9b03         	ldr	r3, [sp, #0xc]
  3aad26: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  3aad2a: 461e         	mov	r6, r3
  3aad2c: 9b03         	ldr	r3, [sp, #0xc]
  3aad2e: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3aad32: 681b         	ldr	r3, [r3]
  3aad34: 3350         	adds	r3, #0x50
  3aad36: 681b         	ldr	r3, [r3]
  3aad38: 9a03         	ldr	r2, [sp, #0xc]
  3aad3a: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  3aad3e: 4610         	mov	r0, r2
  3aad40: 4798         	blx	r3
  3aad42: 4603         	mov	r3, r0
  3aad44: 681f         	ldr	r7, [r3]
  3aad46: 9b03         	ldr	r3, [sp, #0xc]
  3aad48: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3aad4c: 681b         	ldr	r3, [r3]
  3aad4e: 3350         	adds	r3, #0x50
  3aad50: 681b         	ldr	r3, [r3]
  3aad52: 9a03         	ldr	r2, [sp, #0xc]
  3aad54: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  3aad58: 4610         	mov	r0, r2
  3aad5a: 4798         	blx	r3
  3aad5c: 4603         	mov	r3, r0
  3aad5e: 685b         	ldr	r3, [r3, #0x4]
  3aad60: aa22         	add	r2, sp, #0x88
  3aad62: 4610         	mov	r0, r2
  3aad64: 4639         	mov	r1, r7
  3aad66: 461a         	mov	r2, r3
  3aad68: f1e7 ffc2    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e7f84
  3aad6c: 9b03         	ldr	r3, [sp, #0xc]
  3aad6e: edd3 7a45    	vldr	s15, [r3, #276]
  3aad72: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3aad76: ab36         	add	r3, sp, #0xd8
  3aad78: 4618         	mov	r0, r3
  3aad7a: ed9f 0bb3    	vldr	d0, [pc, #716]          @ 0x3ab048 <PointsLayer::init()+0xa00>
  3aad7e: eeb0 1b47    	vmov.f64	d1, d7
  3aad82: f7fe fd23    	bl	0x3a97cc <PlayerLobbyOnlineHosted::onServerStatus(cocos2d::CCObject*)+0x1e0> @ imm = #-0x15ba
  3aad86: ed9d 8b36    	vldr	d8, [sp, #216]
  3aad8a: 9b03         	ldr	r3, [sp, #0xc]
  3aad8c: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  3aad90: 681b         	ldr	r3, [r3]
  3aad92: f503 73fe    	add.w	r3, r3, #0x1fc
  3aad96: 681b         	ldr	r3, [r3]
  3aad98: 9a03         	ldr	r2, [sp, #0xc]
  3aad9a: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  3aad9e: 4610         	mov	r0, r2
  3aada0: 4798         	blx	r3
  3aada2: 4607         	mov	r7, r0
  3aada4: ab05         	add	r3, sp, #0x14
  3aada6: 4618         	mov	r0, r3
  3aada8: f3df fb24    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3df648
  3aadac: aa06         	add	r2, sp, #0x18
  3aadae: ab05         	add	r3, sp, #0x14
  3aadb0: 4610         	mov	r0, r2
  3aadb2: 4639         	mov	r1, r7
  3aadb4: 461a         	mov	r2, r3
  3aadb6: f00b f653    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x40bca6
  3aadba: ab06         	add	r3, sp, #0x18
  3aadbc: 4618         	mov	r0, r3
  3aadbe: f00a f14d    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x40a29a
  3aadc2: 4603         	mov	r3, r0
  3aadc4: ee07 3a90    	vmov	s15, r3
  3aadc8: eeb8 7a67    	vcvt.f32.u32	s14, s15
  3aadcc: 9b03         	ldr	r3, [sp, #0xc]
  3aadce: edd3 7a44    	vldr	s15, [r3, #272]
  3aadd2: ee27 7a27    	vmul.f32	s14, s14, s15
  3aadd6: 9b03         	ldr	r3, [sp, #0xc]
  3aadd8: edd3 7a43    	vldr	s15, [r3, #268]
  3aaddc: ee27 7a27    	vmul.f32	s14, s14, s15
  3aade0: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3aade4: eec7 7a27    	vdiv.f32	s15, s14, s15
  3aade8: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3aadec: ee38 7b47    	vsub.f64	d7, d8, d7
  3aadf0: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3aadf4: 9b03         	ldr	r3, [sp, #0xc]
  3aadf6: edd3 7a45    	vldr	s15, [r3, #276]
  3aadfa: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3aadfe: ab3a         	add	r3, sp, #0xe8
  3aae00: 4618         	mov	r0, r3
  3aae02: ed9f 0b91    	vldr	d0, [pc, #580]          @ 0x3ab048 <PointsLayer::init()+0xa00>
  3aae06: eeb0 1b47    	vmov.f64	d1, d7
  3aae0a: f7fe fcdf    	bl	0x3a97cc <PlayerLobbyOnlineHosted::onServerStatus(cocos2d::CCObject*)+0x1e0> @ imm = #-0x1642
  3aae0e: ed9d 7b3c    	vldr	d7, [sp, #240]
  3aae12: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3aae16: ab24         	add	r3, sp, #0x90
  3aae18: 4618         	mov	r0, r3
  3aae1a: ee18 1a10    	vmov	r1, s16
  3aae1e: ee17 2a90    	vmov	r2, s15
  3aae22: f1e7 ff65    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e7eca
  3aae26: a926         	add	r1, sp, #0x98
  3aae28: aa22         	add	r2, sp, #0x88
  3aae2a: ab24         	add	r3, sp, #0x90
  3aae2c: 4608         	mov	r0, r1
  3aae2e: 4611         	mov	r1, r2
  3aae30: 461a         	mov	r2, r3
  3aae32: f7fe fcbb    	bl	0x3a97ac <PlayerLobbyOnlineHosted::onServerStatus(cocos2d::CCObject*)+0x1c0> @ imm = #-0x168a
  3aae36: ab26         	add	r3, sp, #0x98
  3aae38: 4630         	mov	r0, r6
  3aae3a: 4619         	mov	r1, r3
  3aae3c: 47a8         	blx	r5
  3aae3e: ab06         	add	r3, sp, #0x18
  3aae40: 4618         	mov	r0, r3
  3aae42: f00a f567    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40aace
  3aae46: ab05         	add	r3, sp, #0x14
  3aae48: 4618         	mov	r0, r3
  3aae4a: f3df fad7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3df5ae
  3aae4e: 9b03         	ldr	r3, [sp, #0xc]
  3aae50: 681b         	ldr	r3, [r3]
  3aae52: 33c8         	adds	r3, #0xc8
  3aae54: 681b         	ldr	r3, [r3]
  3aae56: 9903         	ldr	r1, [sp, #0xc]
  3aae58: 9a03         	ldr	r2, [sp, #0xc]
  3aae5a: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  3aae5e: 4608         	mov	r0, r1
  3aae60: 4611         	mov	r1, r2
  3aae62: 4798         	blx	r3
  3aae64: 4b7c         	ldr	r3, [pc, #0x1f0]        @ 0x3ab058 <PointsLayer::init()+0xa10>
  3aae66: 447b         	add	r3, pc
  3aae68: 4618         	mov	r0, r3
  3aae6a: f00a f249    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x40a492
  3aae6e: 4603         	mov	r3, r0
  3aae70: 2220         	movs	r2, #0x20
  3aae72: 9200         	str	r2, [sp]
  3aae74: 4a79         	ldr	r2, [pc, #0x1e4]        @ 0x3ab05c <PointsLayer::init()+0xa14>
  3aae76: 447a         	add	r2, pc
  3aae78: 4610         	mov	r0, r2
  3aae7a: 4619         	mov	r1, r3
  3aae7c: 2220         	movs	r2, #0x20
  3aae7e: 2320         	movs	r3, #0x20
  3aae80: f1fa fa7a    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1fa4f4
  3aae84: 4602         	mov	r2, r0
  3aae86: 9b03         	ldr	r3, [sp, #0xc]
  3aae88: f8c3 2140    	str.w	r2, [r3, #0x140]
  3aae8c: 9b03         	ldr	r3, [sp, #0xc]
  3aae8e: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  3aae92: 4618         	mov	r0, r3
  3aae94: f1ed f828    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1ed050
  3aae98: 9b03         	ldr	r3, [sp, #0xc]
  3aae9a: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  3aae9e: 9a03         	ldr	r2, [sp, #0xc]
  3aaea0: edd2 7a44    	vldr	s15, [r2, #272]
  3aaea4: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3aaea8: ee17 2a90    	vmov	r2, s15
  3aaeac: 4618         	mov	r0, r3
  3aaeae: 4611         	mov	r1, r2
  3aaeb0: f1fa ff68    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1faed0
  3aaeb4: 9b03         	ldr	r3, [sp, #0xc]
  3aaeb6: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  3aaeba: 681b         	ldr	r3, [r3]
  3aaebc: 3340         	adds	r3, #0x40
  3aaebe: 681b         	ldr	r3, [r3]
  3aaec0: 9a03         	ldr	r2, [sp, #0xc]
  3aaec2: f8d2 2140    	ldr.w	r2, [r2, #0x140]
  3aaec6: 4611         	mov	r1, r2
  3aaec8: 9a03         	ldr	r2, [sp, #0xc]
  3aaeca: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3aaece: 4608         	mov	r0, r1
  3aaed0: 4611         	mov	r1, r2
  3aaed2: 4798         	blx	r3
  3aaed4: 9b03         	ldr	r3, [sp, #0xc]
  3aaed6: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  3aaeda: 681b         	ldr	r3, [r3]
  3aaedc: 334c         	adds	r3, #0x4c
  3aaede: 681d         	ldr	r5, [r3]
  3aaee0: 9b03         	ldr	r3, [sp, #0xc]
  3aaee2: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  3aaee6: 461e         	mov	r6, r3
  3aaee8: 9b03         	ldr	r3, [sp, #0xc]
  3aaeea: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  3aaeee: 681b         	ldr	r3, [r3]
  3aaef0: 3350         	adds	r3, #0x50
  3aaef2: 681b         	ldr	r3, [r3]
  3aaef4: 9a03         	ldr	r2, [sp, #0xc]
  3aaef6: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  3aaefa: 4610         	mov	r0, r2
  3aaefc: 4798         	blx	r3
  3aaefe: 4603         	mov	r3, r0
  3aaf00: 681f         	ldr	r7, [r3]
  3aaf02: 9b03         	ldr	r3, [sp, #0xc]
  3aaf04: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  3aaf08: 681b         	ldr	r3, [r3]
  3aaf0a: 3350         	adds	r3, #0x50
  3aaf0c: 681b         	ldr	r3, [r3]
  3aaf0e: 9a03         	ldr	r2, [sp, #0xc]
  3aaf10: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  3aaf14: 4610         	mov	r0, r2
  3aaf16: 4798         	blx	r3
  3aaf18: 4603         	mov	r3, r0
  3aaf1a: 685b         	ldr	r3, [r3, #0x4]
  3aaf1c: aa22         	add	r2, sp, #0x88
  3aaf1e: 4610         	mov	r0, r2
  3aaf20: 4639         	mov	r1, r7
  3aaf22: 461a         	mov	r2, r3
  3aaf24: f1e7 fee4    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e7dc8
  3aaf28: 9b03         	ldr	r3, [sp, #0xc]
  3aaf2a: ed93 7a45    	vldr	s14, [r3, #276]
  3aaf2e: eef1 7a00    	vmov.f32	s15, #4.000000e+00
  3aaf32: ee77 7a27    	vadd.f32	s15, s14, s15
  3aaf36: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3aaf3a: ab36         	add	r3, sp, #0xd8
  3aaf3c: 4618         	mov	r0, r3
  3aaf3e: ed9f 0b42    	vldr	d0, [pc, #264]          @ 0x3ab048 <PointsLayer::init()+0xa00>
  3aaf42: eeb0 1b47    	vmov.f64	d1, d7
  3aaf46: f7fe fc41    	bl	0x3a97cc <PlayerLobbyOnlineHosted::onServerStatus(cocos2d::CCObject*)+0x1e0> @ imm = #-0x177e
  3aaf4a: ed9d 8b36    	vldr	d8, [sp, #216]
  3aaf4e: 9b03         	ldr	r3, [sp, #0xc]
  3aaf50: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  3aaf54: 681b         	ldr	r3, [r3]
  3aaf56: f503 73fe    	add.w	r3, r3, #0x1fc
  3aaf5a: 681b         	ldr	r3, [r3]
  3aaf5c: 9a03         	ldr	r2, [sp, #0xc]
  3aaf5e: f8d2 2140    	ldr.w	r2, [r2, #0x140]
  3aaf62: 4610         	mov	r0, r2
  3aaf64: 4798         	blx	r3
  3aaf66: 4607         	mov	r7, r0
  3aaf68: ab05         	add	r3, sp, #0x14
  3aaf6a: 4618         	mov	r0, r3
  3aaf6c: f3df fa42    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3df484
  3aaf70: aa06         	add	r2, sp, #0x18
  3aaf72: ab05         	add	r3, sp, #0x14
  3aaf74: 4610         	mov	r0, r2
  3aaf76: 4639         	mov	r1, r7
  3aaf78: 461a         	mov	r2, r3
  3aaf7a: f00b f571    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x40bae2
  3aaf7e: ab06         	add	r3, sp, #0x18
  3aaf80: 4618         	mov	r0, r3
  3aaf82: f00a f06b    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x40a0d6
  3aaf86: 4603         	mov	r3, r0
  3aaf88: ee07 3a90    	vmov	s15, r3
  3aaf8c: eeb8 7a67    	vcvt.f32.u32	s14, s15
  3aaf90: 9b03         	ldr	r3, [sp, #0xc]
  3aaf92: edd3 7a44    	vldr	s15, [r3, #272]
  3aaf96: ee27 7a27    	vmul.f32	s14, s14, s15
  3aaf9a: 9b03         	ldr	r3, [sp, #0xc]
  3aaf9c: edd3 7a43    	vldr	s15, [r3, #268]
  3aafa0: ee27 7a27    	vmul.f32	s14, s14, s15
  3aafa4: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3aafa8: eec7 7a27    	vdiv.f32	s15, s14, s15
  3aafac: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3aafb0: ee38 7b47    	vsub.f64	d7, d8, d7
  3aafb4: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3aafb8: 9b03         	ldr	r3, [sp, #0xc]
  3aafba: ed93 7a45    	vldr	s14, [r3, #276]
  3aafbe: eef1 7a00    	vmov.f32	s15, #4.000000e+00
  3aafc2: ee77 7a27    	vadd.f32	s15, s14, s15
  3aafc6: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3aafca: ab3a         	add	r3, sp, #0xe8
  3aafcc: 4618         	mov	r0, r3
  3aafce: ed9f 0b1e    	vldr	d0, [pc, #120]          @ 0x3ab048 <PointsLayer::init()+0xa00>
  3aafd2: eeb0 1b47    	vmov.f64	d1, d7
  3aafd6: f7fe fbf9    	bl	0x3a97cc <PlayerLobbyOnlineHosted::onServerStatus(cocos2d::CCObject*)+0x1e0> @ imm = #-0x180e
  3aafda: ed9d 7b3c    	vldr	d7, [sp, #240]
  3aafde: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3aafe2: ab24         	add	r3, sp, #0x90
  3aafe4: 4618         	mov	r0, r3
  3aafe6: ee18 1a10    	vmov	r1, s16
  3aafea: ee17 2a90    	vmov	r2, s15
  3aafee: f1e7 fe7f    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e7cfe
  3aaff2: a926         	add	r1, sp, #0x98
  3aaff4: aa22         	add	r2, sp, #0x88
  3aaff6: ab24         	add	r3, sp, #0x90
  3aaff8: 4608         	mov	r0, r1
  3aaffa: 4611         	mov	r1, r2
  3aaffc: 461a         	mov	r2, r3
  3aaffe: f7fe fbd5    	bl	0x3a97ac <PlayerLobbyOnlineHosted::onServerStatus(cocos2d::CCObject*)+0x1c0> @ imm = #-0x1856
  3ab002: ab26         	add	r3, sp, #0x98
  3ab004: 4630         	mov	r0, r6
  3ab006: 4619         	mov	r1, r3
  3ab008: 47a8         	blx	r5
  3ab00a: ab06         	add	r3, sp, #0x18
  3ab00c: 4618         	mov	r0, r3
  3ab00e: f00a f481    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40a902
  3ab012: ab05         	add	r3, sp, #0x14
  3ab014: 4618         	mov	r0, r3
  3ab016: f3df f9f1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3df3e2
  3ab01a: 9b03         	ldr	r3, [sp, #0xc]
  3ab01c: 681b         	ldr	r3, [r3]
  3ab01e: 33c8         	adds	r3, #0xc8
  3ab020: 681b         	ldr	r3, [r3]
  3ab022: 9903         	ldr	r1, [sp, #0xc]
  3ab024: 9a03         	ldr	r2, [sp, #0xc]
  3ab026: f8d2 2140    	ldr.w	r2, [r2, #0x140]
  3ab02a: 4608         	mov	r0, r1
  3ab02c: 4611         	mov	r1, r2
  3ab02e: 4798         	blx	r3
  3ab030: 9b03         	ldr	r3, [sp, #0xc]
  3ab032: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  3ab036: 681b         	ldr	r3, [r3]
  3ab038: f503 73de    	add.w	r3, r3, #0x1bc
  3ab03c: 681d         	ldr	r5, [r3]
  3ab03e: 9b03         	ldr	r3, [sp, #0xc]
  3ab040: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  3ab044: e00c         	b	0x3ab060 <PointsLayer::init()+0xa18> @ imm = #0x18
  3ab046: bf00         	nop
  3ab050: 6536         	str	r6, [r6, #0x50]
  3ab052: 0059         	lsls	r1, r3, #0x1
  3ab054: 8772         	strh	r2, [r6, #0x3a]
  3ab056: 0042         	lsls	r2, r0, #0x1
  3ab058: 637a         	str	r2, [r7, #0x34]
  3ab05a: 0059         	lsls	r1, r3, #0x1
  3ab05c: 85c2         	strh	r2, [r0, #0x2e]
  3ab05e: 0042         	lsls	r2, r0, #0x1
  3ab060: 461e         	mov	r6, r3
  3ab062: 2000         	movs	r0, #0x0
  3ab064: 21ff         	movs	r1, #0xff
  3ab066: 2200         	movs	r2, #0x0
  3ab068: f7fe fb72    	bl	0x3a9750 <PlayerLobbyOnlineHosted::onServerStatus(cocos2d::CCObject*)+0x164> @ imm = #-0x191c
  3ab06c: 4603         	mov	r3, r0
  3ab06e: 461a         	mov	r2, r3
  3ab070: f88d 20e8    	strb.w	r2, [sp, #0xe8]
  3ab074: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3ab078: f88d 20e9    	strb.w	r2, [sp, #0xe9]
  3ab07c: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3ab080: f88d 30ea    	strb.w	r3, [sp, #0xea]
  3ab084: ab3a         	add	r3, sp, #0xe8
  3ab086: 4630         	mov	r0, r6
  3ab088: 4619         	mov	r1, r3
  3ab08a: 47a8         	blx	r5
  3ab08c: 4bee         	ldr	r3, [pc, #0x3b8]        @ 0x3ab448 <PointsLayer::init()+0xe00>
  3ab08e: 447b         	add	r3, pc
  3ab090: 4618         	mov	r0, r3
  3ab092: f00a f135    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x40a26a
  3ab096: 4603         	mov	r3, r0
  3ab098: 2220         	movs	r2, #0x20
  3ab09a: 9200         	str	r2, [sp]
  3ab09c: 4aeb         	ldr	r2, [pc, #0x3ac]        @ 0x3ab44c <PointsLayer::init()+0xe04>
  3ab09e: 447a         	add	r2, pc
  3ab0a0: 4610         	mov	r0, r2
  3ab0a2: 4619         	mov	r1, r3
  3ab0a4: 2220         	movs	r2, #0x20
  3ab0a6: 2320         	movs	r3, #0x20
  3ab0a8: f1fa f966    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1fa2cc
  3ab0ac: 4602         	mov	r2, r0
  3ab0ae: 9b03         	ldr	r3, [sp, #0xc]
  3ab0b0: f8c3 214c    	str.w	r2, [r3, #0x14c]
  3ab0b4: 9b03         	ldr	r3, [sp, #0xc]
  3ab0b6: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3ab0ba: 4618         	mov	r0, r3
  3ab0bc: f1ec ff14    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1ece28
  3ab0c0: 9b03         	ldr	r3, [sp, #0xc]
  3ab0c2: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3ab0c6: 9a03         	ldr	r2, [sp, #0xc]
  3ab0c8: edd2 7a44    	vldr	s15, [r2, #272]
  3ab0cc: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3ab0d0: ee17 2a90    	vmov	r2, s15
  3ab0d4: 4618         	mov	r0, r3
  3ab0d6: 4611         	mov	r1, r2
  3ab0d8: f1fa fe54    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1faca8
  3ab0dc: 9b03         	ldr	r3, [sp, #0xc]
  3ab0de: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3ab0e2: 681b         	ldr	r3, [r3]
  3ab0e4: 3340         	adds	r3, #0x40
  3ab0e6: 681b         	ldr	r3, [r3]
  3ab0e8: 9a03         	ldr	r2, [sp, #0xc]
  3ab0ea: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  3ab0ee: 4611         	mov	r1, r2
  3ab0f0: 9a03         	ldr	r2, [sp, #0xc]
  3ab0f2: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3ab0f6: 4608         	mov	r0, r1
  3ab0f8: 4611         	mov	r1, r2
  3ab0fa: 4798         	blx	r3
  3ab0fc: 9b03         	ldr	r3, [sp, #0xc]
  3ab0fe: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3ab102: 681b         	ldr	r3, [r3]
  3ab104: 334c         	adds	r3, #0x4c
  3ab106: 681d         	ldr	r5, [r3]
  3ab108: 9b03         	ldr	r3, [sp, #0xc]
  3ab10a: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3ab10e: 461e         	mov	r6, r3
  3ab110: 9b03         	ldr	r3, [sp, #0xc]
  3ab112: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3ab116: 681b         	ldr	r3, [r3]
  3ab118: 3350         	adds	r3, #0x50
  3ab11a: 681b         	ldr	r3, [r3]
  3ab11c: 9a03         	ldr	r2, [sp, #0xc]
  3ab11e: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3ab122: 4610         	mov	r0, r2
  3ab124: 4798         	blx	r3
  3ab126: 4603         	mov	r3, r0
  3ab128: 681f         	ldr	r7, [r3]
  3ab12a: 9b03         	ldr	r3, [sp, #0xc]
  3ab12c: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3ab130: 681b         	ldr	r3, [r3]
  3ab132: 3350         	adds	r3, #0x50
  3ab134: 681b         	ldr	r3, [r3]
  3ab136: 9a03         	ldr	r2, [sp, #0xc]
  3ab138: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3ab13c: 4610         	mov	r0, r2
  3ab13e: 4798         	blx	r3
  3ab140: 4603         	mov	r3, r0
  3ab142: 685b         	ldr	r3, [r3, #0x4]
  3ab144: aa22         	add	r2, sp, #0x88
  3ab146: 4610         	mov	r0, r2
  3ab148: 4639         	mov	r1, r7
  3ab14a: 461a         	mov	r2, r3
  3ab14c: f1e7 fdd0    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e7ba0
  3ab150: 9b03         	ldr	r3, [sp, #0xc]
  3ab152: ed93 7a45    	vldr	s14, [r3, #276]
  3ab156: eef1 7a00    	vmov.f32	s15, #4.000000e+00
  3ab15a: ee77 7a27    	vadd.f32	s15, s14, s15
  3ab15e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3ab162: ab36         	add	r3, sp, #0xd8
  3ab164: 4618         	mov	r0, r3
  3ab166: ed9f 0bb6    	vldr	d0, [pc, #728]          @ 0x3ab440 <PointsLayer::init()+0xdf8>
  3ab16a: eeb0 1b47    	vmov.f64	d1, d7
  3ab16e: f7fe fb2d    	bl	0x3a97cc <PlayerLobbyOnlineHosted::onServerStatus(cocos2d::CCObject*)+0x1e0> @ imm = #-0x19a6
  3ab172: ed9d 8b36    	vldr	d8, [sp, #216]
  3ab176: 9b03         	ldr	r3, [sp, #0xc]
  3ab178: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3ab17c: 681b         	ldr	r3, [r3]
  3ab17e: f503 73fe    	add.w	r3, r3, #0x1fc
  3ab182: 681b         	ldr	r3, [r3]
  3ab184: 9a03         	ldr	r2, [sp, #0xc]
  3ab186: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  3ab18a: 4610         	mov	r0, r2
  3ab18c: 4798         	blx	r3
  3ab18e: 4607         	mov	r7, r0
  3ab190: ab05         	add	r3, sp, #0x14
  3ab192: 4618         	mov	r0, r3
  3ab194: f3df f92e    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3df25c
  3ab198: aa06         	add	r2, sp, #0x18
  3ab19a: ab05         	add	r3, sp, #0x14
  3ab19c: 4610         	mov	r0, r2
  3ab19e: 4639         	mov	r1, r7
  3ab1a0: 461a         	mov	r2, r3
  3ab1a2: f00b f45d    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x40b8ba
  3ab1a6: ab06         	add	r3, sp, #0x18
  3ab1a8: 4618         	mov	r0, r3
  3ab1aa: f009 f757    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x409eae
  3ab1ae: 4603         	mov	r3, r0
  3ab1b0: ee07 3a90    	vmov	s15, r3
  3ab1b4: eeb8 7a67    	vcvt.f32.u32	s14, s15
  3ab1b8: 9b03         	ldr	r3, [sp, #0xc]
  3ab1ba: edd3 7a44    	vldr	s15, [r3, #272]
  3ab1be: ee27 7a27    	vmul.f32	s14, s14, s15
  3ab1c2: 9b03         	ldr	r3, [sp, #0xc]
  3ab1c4: edd3 7a43    	vldr	s15, [r3, #268]
  3ab1c8: ee27 7a27    	vmul.f32	s14, s14, s15
  3ab1cc: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3ab1d0: eec7 7a27    	vdiv.f32	s15, s14, s15
  3ab1d4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3ab1d8: ee38 7b47    	vsub.f64	d7, d8, d7
  3ab1dc: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3ab1e0: 9b03         	ldr	r3, [sp, #0xc]
  3ab1e2: ed93 7a45    	vldr	s14, [r3, #276]
  3ab1e6: eef1 7a00    	vmov.f32	s15, #4.000000e+00
  3ab1ea: ee77 7a27    	vadd.f32	s15, s14, s15
  3ab1ee: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3ab1f2: ab3a         	add	r3, sp, #0xe8
  3ab1f4: 4618         	mov	r0, r3
  3ab1f6: ed9f 0b92    	vldr	d0, [pc, #584]          @ 0x3ab440 <PointsLayer::init()+0xdf8>
  3ab1fa: eeb0 1b47    	vmov.f64	d1, d7
  3ab1fe: f7fe fae5    	bl	0x3a97cc <PlayerLobbyOnlineHosted::onServerStatus(cocos2d::CCObject*)+0x1e0> @ imm = #-0x1a36
  3ab202: ed9d 7b3c    	vldr	d7, [sp, #240]
  3ab206: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3ab20a: ab24         	add	r3, sp, #0x90
  3ab20c: 4618         	mov	r0, r3
  3ab20e: ee18 1a10    	vmov	r1, s16
  3ab212: ee17 2a90    	vmov	r2, s15
  3ab216: f1e7 fd6b    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e7ad6
  3ab21a: a926         	add	r1, sp, #0x98
  3ab21c: aa22         	add	r2, sp, #0x88
  3ab21e: ab24         	add	r3, sp, #0x90
  3ab220: 4608         	mov	r0, r1
  3ab222: 4611         	mov	r1, r2
  3ab224: 461a         	mov	r2, r3
  3ab226: f7fe fac1    	bl	0x3a97ac <PlayerLobbyOnlineHosted::onServerStatus(cocos2d::CCObject*)+0x1c0> @ imm = #-0x1a7e
  3ab22a: ab26         	add	r3, sp, #0x98
  3ab22c: 4630         	mov	r0, r6
  3ab22e: 4619         	mov	r1, r3
  3ab230: 47a8         	blx	r5
  3ab232: ab06         	add	r3, sp, #0x18
  3ab234: 4618         	mov	r0, r3
  3ab236: f00a f36d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40a6da
  3ab23a: ab05         	add	r3, sp, #0x14
  3ab23c: 4618         	mov	r0, r3
  3ab23e: f3df f8dd    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3df1ba
  3ab242: 9b03         	ldr	r3, [sp, #0xc]
  3ab244: 681b         	ldr	r3, [r3]
  3ab246: 33c8         	adds	r3, #0xc8
  3ab248: 681b         	ldr	r3, [r3]
  3ab24a: 9903         	ldr	r1, [sp, #0xc]
  3ab24c: 9a03         	ldr	r2, [sp, #0xc]
  3ab24e: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  3ab252: 4608         	mov	r0, r1
  3ab254: 4611         	mov	r1, r2
  3ab256: 4798         	blx	r3
  3ab258: 9b03         	ldr	r3, [sp, #0xc]
  3ab25a: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3ab25e: 681b         	ldr	r3, [r3]
  3ab260: f503 73de    	add.w	r3, r3, #0x1bc
  3ab264: 681d         	ldr	r5, [r3]
  3ab266: 9b03         	ldr	r3, [sp, #0xc]
  3ab268: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3ab26c: 461e         	mov	r6, r3
  3ab26e: 2000         	movs	r0, #0x0
  3ab270: 21ff         	movs	r1, #0xff
  3ab272: 2200         	movs	r2, #0x0
  3ab274: f7fe fa6c    	bl	0x3a9750 <PlayerLobbyOnlineHosted::onServerStatus(cocos2d::CCObject*)+0x164> @ imm = #-0x1b28
  3ab278: 4603         	mov	r3, r0
  3ab27a: 461a         	mov	r2, r3
  3ab27c: f88d 20e8    	strb.w	r2, [sp, #0xe8]
  3ab280: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3ab284: f88d 20e9    	strb.w	r2, [sp, #0xe9]
  3ab288: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3ab28c: f88d 30ea    	strb.w	r3, [sp, #0xea]
  3ab290: ab3a         	add	r3, sp, #0xe8
  3ab292: 4630         	mov	r0, r6
  3ab294: 4619         	mov	r1, r3
  3ab296: 47a8         	blx	r5
  3ab298: 4b6d         	ldr	r3, [pc, #0x1b4]        @ 0x3ab450 <PointsLayer::init()+0xe08>
  3ab29a: 447b         	add	r3, pc
  3ab29c: 4618         	mov	r0, r3
  3ab29e: f00a f02f    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x40a05e
  3ab2a2: 4603         	mov	r3, r0
  3ab2a4: 2220         	movs	r2, #0x20
  3ab2a6: 9200         	str	r2, [sp]
  3ab2a8: 4a6a         	ldr	r2, [pc, #0x1a8]        @ 0x3ab454 <PointsLayer::init()+0xe0c>
  3ab2aa: 447a         	add	r2, pc
  3ab2ac: 4610         	mov	r0, r2
  3ab2ae: 4619         	mov	r1, r3
  3ab2b0: 2220         	movs	r2, #0x20
  3ab2b2: 2320         	movs	r3, #0x20
  3ab2b4: f1fa f860    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1fa0c0
  3ab2b8: 4602         	mov	r2, r0
  3ab2ba: 9b03         	ldr	r3, [sp, #0xc]
  3ab2bc: f8c3 2158    	str.w	r2, [r3, #0x158]
  3ab2c0: 9b03         	ldr	r3, [sp, #0xc]
  3ab2c2: f8d3 3158    	ldr.w	r3, [r3, #0x158]
  3ab2c6: 4618         	mov	r0, r3
  3ab2c8: f1ec fe0e    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1ecc1c
  3ab2cc: 9b03         	ldr	r3, [sp, #0xc]
  3ab2ce: f8d3 3158    	ldr.w	r3, [r3, #0x158]
  3ab2d2: 9a03         	ldr	r2, [sp, #0xc]
  3ab2d4: edd2 7a44    	vldr	s15, [r2, #272]
  3ab2d8: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3ab2dc: ee17 2a90    	vmov	r2, s15
  3ab2e0: 4618         	mov	r0, r3
  3ab2e2: 4611         	mov	r1, r2
  3ab2e4: f1fa fd4e    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1faa9c
  3ab2e8: 9b03         	ldr	r3, [sp, #0xc]
  3ab2ea: f8d3 3158    	ldr.w	r3, [r3, #0x158]
  3ab2ee: 681b         	ldr	r3, [r3]
  3ab2f0: 3340         	adds	r3, #0x40
  3ab2f2: 681b         	ldr	r3, [r3]
  3ab2f4: 9a03         	ldr	r2, [sp, #0xc]
  3ab2f6: f8d2 2158    	ldr.w	r2, [r2, #0x158]
  3ab2fa: 4611         	mov	r1, r2
  3ab2fc: 9a03         	ldr	r2, [sp, #0xc]
  3ab2fe: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3ab302: 4608         	mov	r0, r1
  3ab304: 4611         	mov	r1, r2
  3ab306: 4798         	blx	r3
  3ab308: 9b03         	ldr	r3, [sp, #0xc]
  3ab30a: f8d3 3158    	ldr.w	r3, [r3, #0x158]
  3ab30e: 681b         	ldr	r3, [r3]
  3ab310: 334c         	adds	r3, #0x4c
  3ab312: 681d         	ldr	r5, [r3]
  3ab314: 9b03         	ldr	r3, [sp, #0xc]
  3ab316: f8d3 3158    	ldr.w	r3, [r3, #0x158]
  3ab31a: 461e         	mov	r6, r3
  3ab31c: 9b03         	ldr	r3, [sp, #0xc]
  3ab31e: f8d3 315c    	ldr.w	r3, [r3, #0x15c]
  3ab322: 681b         	ldr	r3, [r3]
  3ab324: 3350         	adds	r3, #0x50
  3ab326: 681b         	ldr	r3, [r3]
  3ab328: 9a03         	ldr	r2, [sp, #0xc]
  3ab32a: f8d2 215c    	ldr.w	r2, [r2, #0x15c]
  3ab32e: 4610         	mov	r0, r2
  3ab330: 4798         	blx	r3
  3ab332: 4603         	mov	r3, r0
  3ab334: 681f         	ldr	r7, [r3]
  3ab336: 9b03         	ldr	r3, [sp, #0xc]
  3ab338: f8d3 315c    	ldr.w	r3, [r3, #0x15c]
  3ab33c: 681b         	ldr	r3, [r3]
  3ab33e: 3350         	adds	r3, #0x50
  3ab340: 681b         	ldr	r3, [r3]
  3ab342: 9a03         	ldr	r2, [sp, #0xc]
  3ab344: f8d2 215c    	ldr.w	r2, [r2, #0x15c]
  3ab348: 4610         	mov	r0, r2
  3ab34a: 4798         	blx	r3
  3ab34c: 4603         	mov	r3, r0
  3ab34e: 685b         	ldr	r3, [r3, #0x4]
  3ab350: aa22         	add	r2, sp, #0x88
  3ab352: 4610         	mov	r0, r2
  3ab354: 4639         	mov	r1, r7
  3ab356: 461a         	mov	r2, r3
  3ab358: f1e7 fcca    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e7994
  3ab35c: 9b03         	ldr	r3, [sp, #0xc]
  3ab35e: ed93 7a45    	vldr	s14, [r3, #276]
  3ab362: eef1 7a00    	vmov.f32	s15, #4.000000e+00
  3ab366: ee77 7a27    	vadd.f32	s15, s14, s15
  3ab36a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3ab36e: ab36         	add	r3, sp, #0xd8
  3ab370: 4618         	mov	r0, r3
  3ab372: ed9f 0b33    	vldr	d0, [pc, #204]          @ 0x3ab440 <PointsLayer::init()+0xdf8>
  3ab376: eeb0 1b47    	vmov.f64	d1, d7
  3ab37a: f7fe fa27    	bl	0x3a97cc <PlayerLobbyOnlineHosted::onServerStatus(cocos2d::CCObject*)+0x1e0> @ imm = #-0x1bb2
  3ab37e: ed9d 8b36    	vldr	d8, [sp, #216]
  3ab382: 9b03         	ldr	r3, [sp, #0xc]
  3ab384: f8d3 3158    	ldr.w	r3, [r3, #0x158]
  3ab388: 681b         	ldr	r3, [r3]
  3ab38a: f503 73fe    	add.w	r3, r3, #0x1fc
  3ab38e: 681b         	ldr	r3, [r3]
  3ab390: 9a03         	ldr	r2, [sp, #0xc]
  3ab392: f8d2 2158    	ldr.w	r2, [r2, #0x158]
  3ab396: 4610         	mov	r0, r2
  3ab398: 4798         	blx	r3
  3ab39a: 4607         	mov	r7, r0
  3ab39c: ab05         	add	r3, sp, #0x14
  3ab39e: 4618         	mov	r0, r3
  3ab3a0: f3df f828    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3df050
  3ab3a4: aa06         	add	r2, sp, #0x18
  3ab3a6: ab05         	add	r3, sp, #0x14
  3ab3a8: 4610         	mov	r0, r2
  3ab3aa: 4639         	mov	r1, r7
  3ab3ac: 461a         	mov	r2, r3
  3ab3ae: f00b f357    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x40b6ae
  3ab3b2: ab06         	add	r3, sp, #0x18
  3ab3b4: 4618         	mov	r0, r3
  3ab3b6: f009 f651    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x409ca2
  3ab3ba: 4603         	mov	r3, r0
  3ab3bc: ee07 3a90    	vmov	s15, r3
  3ab3c0: eeb8 7a67    	vcvt.f32.u32	s14, s15
  3ab3c4: 9b03         	ldr	r3, [sp, #0xc]
  3ab3c6: edd3 7a44    	vldr	s15, [r3, #272]
  3ab3ca: ee27 7a27    	vmul.f32	s14, s14, s15
  3ab3ce: 9b03         	ldr	r3, [sp, #0xc]
  3ab3d0: edd3 7a43    	vldr	s15, [r3, #268]
  3ab3d4: ee27 7a27    	vmul.f32	s14, s14, s15
  3ab3d8: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3ab3dc: eec7 7a27    	vdiv.f32	s15, s14, s15
  3ab3e0: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3ab3e4: ee38 7b47    	vsub.f64	d7, d8, d7
  3ab3e8: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3ab3ec: 9b03         	ldr	r3, [sp, #0xc]
  3ab3ee: ed93 7a45    	vldr	s14, [r3, #276]
  3ab3f2: eef1 7a00    	vmov.f32	s15, #4.000000e+00
  3ab3f6: ee77 7a27    	vadd.f32	s15, s14, s15
  3ab3fa: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3ab3fe: ab3a         	add	r3, sp, #0xe8
  3ab400: 4618         	mov	r0, r3
  3ab402: ed9f 0b0f    	vldr	d0, [pc, #60]           @ 0x3ab440 <PointsLayer::init()+0xdf8>
  3ab406: eeb0 1b47    	vmov.f64	d1, d7
  3ab40a: f7fe f9df    	bl	0x3a97cc <PlayerLobbyOnlineHosted::onServerStatus(cocos2d::CCObject*)+0x1e0> @ imm = #-0x1c42
  3ab40e: ed9d 7b3c    	vldr	d7, [sp, #240]
  3ab412: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3ab416: ab24         	add	r3, sp, #0x90
  3ab418: 4618         	mov	r0, r3
  3ab41a: ee18 1a10    	vmov	r1, s16
  3ab41e: ee17 2a90    	vmov	r2, s15
  3ab422: f1e7 fc65    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e78ca
  3ab426: a926         	add	r1, sp, #0x98
  3ab428: aa22         	add	r2, sp, #0x88
  3ab42a: ab24         	add	r3, sp, #0x90
  3ab42c: 4608         	mov	r0, r1
  3ab42e: 4611         	mov	r1, r2
  3ab430: 461a         	mov	r2, r3
  3ab432: f7fe f9bb    	bl	0x3a97ac <PlayerLobbyOnlineHosted::onServerStatus(cocos2d::CCObject*)+0x1c0> @ imm = #-0x1c8a
  3ab436: ab26         	add	r3, sp, #0x98
  3ab438: 4630         	mov	r0, r6
  3ab43a: 4619         	mov	r1, r3
  3ab43c: e00c         	b	0x3ab458 <PointsLayer::init()+0xe10> @ imm = #0x18
  3ab43e: bf00         	nop
  3ab448: 6152         	str	r2, [r2, #0x14]
  3ab44a: 0059         	lsls	r1, r3, #0x1
  3ab44c: 83a2         	strh	r2, [r4, #0x1c]
  3ab44e: 0042         	lsls	r2, r0, #0x1
  3ab450: 5f46         	ldrsh	r6, [r0, r5]
  3ab452: 0059         	lsls	r1, r3, #0x1
  3ab454: 819e         	strh	r6, [r3, #0xc]
  3ab456: 0042         	lsls	r2, r0, #0x1
  3ab458: 47a8         	blx	r5
  3ab45a: ab06         	add	r3, sp, #0x18
  3ab45c: 4618         	mov	r0, r3
  3ab45e: f00a f259    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40a4b2
  3ab462: ab05         	add	r3, sp, #0x14
  3ab464: 4618         	mov	r0, r3
  3ab466: f3de ffc9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3def92
  3ab46a: 9b03         	ldr	r3, [sp, #0xc]
  3ab46c: 681b         	ldr	r3, [r3]
  3ab46e: 33c8         	adds	r3, #0xc8
  3ab470: 681b         	ldr	r3, [r3]
  3ab472: 9903         	ldr	r1, [sp, #0xc]
  3ab474: 9a03         	ldr	r2, [sp, #0xc]
  3ab476: f8d2 2158    	ldr.w	r2, [r2, #0x158]
  3ab47a: 4608         	mov	r0, r1
  3ab47c: 4611         	mov	r1, r2
  3ab47e: 4798         	blx	r3
  3ab480: 9b03         	ldr	r3, [sp, #0xc]
  3ab482: f8d3 3158    	ldr.w	r3, [r3, #0x158]
  3ab486: 681b         	ldr	r3, [r3]
  3ab488: f503 73de    	add.w	r3, r3, #0x1bc
  3ab48c: 681d         	ldr	r5, [r3]
  3ab48e: 9b03         	ldr	r3, [sp, #0xc]
  3ab490: f8d3 3158    	ldr.w	r3, [r3, #0x158]
  3ab494: 461e         	mov	r6, r3
  3ab496: 2000         	movs	r0, #0x0
  3ab498: 21ff         	movs	r1, #0xff
  3ab49a: 2200         	movs	r2, #0x0
  3ab49c: f7fe f958    	bl	0x3a9750 <PlayerLobbyOnlineHosted::onServerStatus(cocos2d::CCObject*)+0x164> @ imm = #-0x1d50
  3ab4a0: 4603         	mov	r3, r0
  3ab4a2: 461a         	mov	r2, r3
  3ab4a4: f88d 20e8    	strb.w	r2, [sp, #0xe8]
  3ab4a8: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3ab4ac: f88d 20e9    	strb.w	r2, [sp, #0xe9]
  3ab4b0: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3ab4b4: f88d 30ea    	strb.w	r3, [sp, #0xea]
  3ab4b8: ab3a         	add	r3, sp, #0xe8
  3ab4ba: 4630         	mov	r0, r6
  3ab4bc: 4619         	mov	r1, r3
  3ab4be: 47a8         	blx	r5
  3ab4c0: 4be9         	ldr	r3, [pc, #0x3a4]        @ 0x3ab868 <PointsLayer::init()+0x1220>
  3ab4c2: 447b         	add	r3, pc
  3ab4c4: 4618         	mov	r0, r3
  3ab4c6: f009 f71b    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x409e36
  3ab4ca: 4603         	mov	r3, r0
  3ab4cc: 2220         	movs	r2, #0x20
  3ab4ce: 9200         	str	r2, [sp]
  3ab4d0: 4ae6         	ldr	r2, [pc, #0x398]        @ 0x3ab86c <PointsLayer::init()+0x1224>
  3ab4d2: 447a         	add	r2, pc
  3ab4d4: 4610         	mov	r0, r2
  3ab4d6: 4619         	mov	r1, r3
  3ab4d8: 2220         	movs	r2, #0x20
  3ab4da: 2320         	movs	r3, #0x20
  3ab4dc: f1f9 ff4c    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1f9e98
  3ab4e0: 4602         	mov	r2, r0
  3ab4e2: 9b03         	ldr	r3, [sp, #0xc]
  3ab4e4: f8c3 2164    	str.w	r2, [r3, #0x164]
  3ab4e8: 9b03         	ldr	r3, [sp, #0xc]
  3ab4ea: f8d3 3164    	ldr.w	r3, [r3, #0x164]
  3ab4ee: 4618         	mov	r0, r3
  3ab4f0: f1ec fcfa    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1ec9f4
  3ab4f4: 9b03         	ldr	r3, [sp, #0xc]
  3ab4f6: f8d3 3164    	ldr.w	r3, [r3, #0x164]
  3ab4fa: 9a03         	ldr	r2, [sp, #0xc]
  3ab4fc: edd2 7a44    	vldr	s15, [r2, #272]
  3ab500: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3ab504: ee17 2a90    	vmov	r2, s15
  3ab508: 4618         	mov	r0, r3
  3ab50a: 4611         	mov	r1, r2
  3ab50c: f1fa fc3a    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1fa874
  3ab510: 9b03         	ldr	r3, [sp, #0xc]
  3ab512: f8d3 3164    	ldr.w	r3, [r3, #0x164]
  3ab516: 681b         	ldr	r3, [r3]
  3ab518: 3340         	adds	r3, #0x40
  3ab51a: 681b         	ldr	r3, [r3]
  3ab51c: 9a03         	ldr	r2, [sp, #0xc]
  3ab51e: f8d2 2164    	ldr.w	r2, [r2, #0x164]
  3ab522: 4611         	mov	r1, r2
  3ab524: 9a03         	ldr	r2, [sp, #0xc]
  3ab526: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3ab52a: 4608         	mov	r0, r1
  3ab52c: 4611         	mov	r1, r2
  3ab52e: 4798         	blx	r3
  3ab530: 9b03         	ldr	r3, [sp, #0xc]
  3ab532: f8d3 3164    	ldr.w	r3, [r3, #0x164]
  3ab536: 681b         	ldr	r3, [r3]
  3ab538: 334c         	adds	r3, #0x4c
  3ab53a: 681d         	ldr	r5, [r3]
  3ab53c: 9b03         	ldr	r3, [sp, #0xc]
  3ab53e: f8d3 3164    	ldr.w	r3, [r3, #0x164]
  3ab542: 461e         	mov	r6, r3
  3ab544: 9b03         	ldr	r3, [sp, #0xc]
  3ab546: f8d3 3168    	ldr.w	r3, [r3, #0x168]
  3ab54a: 681b         	ldr	r3, [r3]
  3ab54c: 3350         	adds	r3, #0x50
  3ab54e: 681b         	ldr	r3, [r3]
  3ab550: 9a03         	ldr	r2, [sp, #0xc]
  3ab552: f8d2 2168    	ldr.w	r2, [r2, #0x168]
  3ab556: 4610         	mov	r0, r2
  3ab558: 4798         	blx	r3
  3ab55a: 4603         	mov	r3, r0
  3ab55c: 681f         	ldr	r7, [r3]
  3ab55e: 9b03         	ldr	r3, [sp, #0xc]
  3ab560: f8d3 3168    	ldr.w	r3, [r3, #0x168]
  3ab564: 681b         	ldr	r3, [r3]
  3ab566: 3350         	adds	r3, #0x50
  3ab568: 681b         	ldr	r3, [r3]
  3ab56a: 9a03         	ldr	r2, [sp, #0xc]
  3ab56c: f8d2 2168    	ldr.w	r2, [r2, #0x168]
  3ab570: 4610         	mov	r0, r2
  3ab572: 4798         	blx	r3
  3ab574: 4603         	mov	r3, r0
  3ab576: 685b         	ldr	r3, [r3, #0x4]
  3ab578: aa22         	add	r2, sp, #0x88
  3ab57a: 4610         	mov	r0, r2
  3ab57c: 4639         	mov	r1, r7
  3ab57e: 461a         	mov	r2, r3
  3ab580: f1e7 fbb6    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e776c
  3ab584: 9b03         	ldr	r3, [sp, #0xc]
  3ab586: ed93 7a45    	vldr	s14, [r3, #276]
  3ab58a: eef1 7a00    	vmov.f32	s15, #4.000000e+00
  3ab58e: ee77 7a27    	vadd.f32	s15, s14, s15
  3ab592: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3ab596: ab36         	add	r3, sp, #0xd8
  3ab598: 4618         	mov	r0, r3
  3ab59a: ed9f 0bb1    	vldr	d0, [pc, #708]          @ 0x3ab860 <PointsLayer::init()+0x1218>
  3ab59e: eeb0 1b47    	vmov.f64	d1, d7
  3ab5a2: f7fe f913    	bl	0x3a97cc <PlayerLobbyOnlineHosted::onServerStatus(cocos2d::CCObject*)+0x1e0> @ imm = #-0x1dda
  3ab5a6: ed9d 8b36    	vldr	d8, [sp, #216]
  3ab5aa: 9b03         	ldr	r3, [sp, #0xc]
  3ab5ac: f8d3 3164    	ldr.w	r3, [r3, #0x164]
  3ab5b0: 681b         	ldr	r3, [r3]
  3ab5b2: f503 73fe    	add.w	r3, r3, #0x1fc
  3ab5b6: 681b         	ldr	r3, [r3]
  3ab5b8: 9a03         	ldr	r2, [sp, #0xc]
  3ab5ba: f8d2 2164    	ldr.w	r2, [r2, #0x164]
  3ab5be: 4610         	mov	r0, r2
  3ab5c0: 4798         	blx	r3
  3ab5c2: 4607         	mov	r7, r0
  3ab5c4: ab05         	add	r3, sp, #0x14
  3ab5c6: 4618         	mov	r0, r3
  3ab5c8: f3de ff14    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3dee28
  3ab5cc: aa06         	add	r2, sp, #0x18
  3ab5ce: ab05         	add	r3, sp, #0x14
  3ab5d0: 4610         	mov	r0, r2
  3ab5d2: 4639         	mov	r1, r7
  3ab5d4: 461a         	mov	r2, r3
  3ab5d6: f00b f243    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x40b486
  3ab5da: ab06         	add	r3, sp, #0x18
  3ab5dc: 4618         	mov	r0, r3
  3ab5de: f009 f53d    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x409a7a
  3ab5e2: 4603         	mov	r3, r0
  3ab5e4: ee07 3a90    	vmov	s15, r3
  3ab5e8: eeb8 7a67    	vcvt.f32.u32	s14, s15
  3ab5ec: 9b03         	ldr	r3, [sp, #0xc]
  3ab5ee: edd3 7a44    	vldr	s15, [r3, #272]
  3ab5f2: ee27 7a27    	vmul.f32	s14, s14, s15
  3ab5f6: 9b03         	ldr	r3, [sp, #0xc]
  3ab5f8: edd3 7a43    	vldr	s15, [r3, #268]
  3ab5fc: ee27 7a27    	vmul.f32	s14, s14, s15
  3ab600: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3ab604: eec7 7a27    	vdiv.f32	s15, s14, s15
  3ab608: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3ab60c: ee38 7b47    	vsub.f64	d7, d8, d7
  3ab610: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3ab614: 9b03         	ldr	r3, [sp, #0xc]
  3ab616: ed93 7a45    	vldr	s14, [r3, #276]
  3ab61a: eef1 7a00    	vmov.f32	s15, #4.000000e+00
  3ab61e: ee77 7a27    	vadd.f32	s15, s14, s15
  3ab622: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3ab626: ab3a         	add	r3, sp, #0xe8
  3ab628: 4618         	mov	r0, r3
  3ab62a: ed9f 0b8d    	vldr	d0, [pc, #564]          @ 0x3ab860 <PointsLayer::init()+0x1218>
  3ab62e: eeb0 1b47    	vmov.f64	d1, d7
  3ab632: f7fe f8cb    	bl	0x3a97cc <PlayerLobbyOnlineHosted::onServerStatus(cocos2d::CCObject*)+0x1e0> @ imm = #-0x1e6a
  3ab636: ed9d 7b3c    	vldr	d7, [sp, #240]
  3ab63a: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3ab63e: ab24         	add	r3, sp, #0x90
  3ab640: 4618         	mov	r0, r3
  3ab642: ee18 1a10    	vmov	r1, s16
  3ab646: ee17 2a90    	vmov	r2, s15
  3ab64a: f1e7 fb51    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e76a2
  3ab64e: a926         	add	r1, sp, #0x98
  3ab650: aa22         	add	r2, sp, #0x88
  3ab652: ab24         	add	r3, sp, #0x90
  3ab654: 4608         	mov	r0, r1
  3ab656: 4611         	mov	r1, r2
  3ab658: 461a         	mov	r2, r3
  3ab65a: f7fe f8a7    	bl	0x3a97ac <PlayerLobbyOnlineHosted::onServerStatus(cocos2d::CCObject*)+0x1c0> @ imm = #-0x1eb2
  3ab65e: ab26         	add	r3, sp, #0x98
  3ab660: 4630         	mov	r0, r6
  3ab662: 4619         	mov	r1, r3
  3ab664: 47a8         	blx	r5
  3ab666: ab06         	add	r3, sp, #0x18
  3ab668: 4618         	mov	r0, r3
  3ab66a: f00a f153    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40a2a6
  3ab66e: ab05         	add	r3, sp, #0x14
  3ab670: 4618         	mov	r0, r3
  3ab672: f3de fec3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ded86
  3ab676: 9b03         	ldr	r3, [sp, #0xc]
  3ab678: 681b         	ldr	r3, [r3]
  3ab67a: 33c8         	adds	r3, #0xc8
  3ab67c: 681b         	ldr	r3, [r3]
  3ab67e: 9903         	ldr	r1, [sp, #0xc]
  3ab680: 9a03         	ldr	r2, [sp, #0xc]
  3ab682: f8d2 2164    	ldr.w	r2, [r2, #0x164]
  3ab686: 4608         	mov	r0, r1
  3ab688: 4611         	mov	r1, r2
  3ab68a: 4798         	blx	r3
  3ab68c: 9b03         	ldr	r3, [sp, #0xc]
  3ab68e: f8d3 3164    	ldr.w	r3, [r3, #0x164]
  3ab692: 681b         	ldr	r3, [r3]
  3ab694: f503 73de    	add.w	r3, r3, #0x1bc
  3ab698: 681d         	ldr	r5, [r3]
  3ab69a: 9b03         	ldr	r3, [sp, #0xc]
  3ab69c: f8d3 3164    	ldr.w	r3, [r3, #0x164]
  3ab6a0: 461e         	mov	r6, r3
  3ab6a2: 2000         	movs	r0, #0x0
  3ab6a4: 21ff         	movs	r1, #0xff
  3ab6a6: 2200         	movs	r2, #0x0
  3ab6a8: f7fe f852    	bl	0x3a9750 <PlayerLobbyOnlineHosted::onServerStatus(cocos2d::CCObject*)+0x164> @ imm = #-0x1f5c
  3ab6ac: 4603         	mov	r3, r0
  3ab6ae: 461a         	mov	r2, r3
  3ab6b0: f88d 20e8    	strb.w	r2, [sp, #0xe8]
  3ab6b4: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3ab6b8: f88d 20e9    	strb.w	r2, [sp, #0xe9]
  3ab6bc: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3ab6c0: f88d 30ea    	strb.w	r3, [sp, #0xea]
  3ab6c4: ab3a         	add	r3, sp, #0xe8
  3ab6c6: 4630         	mov	r0, r6
  3ab6c8: 4619         	mov	r1, r3
  3ab6ca: 47a8         	blx	r5
  3ab6cc: 4b68         	ldr	r3, [pc, #0x1a0]        @ 0x3ab870 <PointsLayer::init()+0x1228>
  3ab6ce: 447b         	add	r3, pc
  3ab6d0: 4618         	mov	r0, r3
  3ab6d2: 4b68         	ldr	r3, [pc, #0x1a0]        @ 0x3ab874 <PointsLayer::init()+0x122c>
  3ab6d4: 447b         	add	r3, pc
  3ab6d6: 4619         	mov	r1, r3
  3ab6d8: f04f 0200    	mov.w	r2, #0x0
  3ab6dc: f2c4 1240    	movt	r2, #0x4140
  3ab6e0: f200 fc9e    	bl	0x5ac020 <cocos2d::CCLabelTTF::create(char const*, char const*, float)> @ imm = #0x20093c
  3ab6e4: 4602         	mov	r2, r0
  3ab6e6: 9b03         	ldr	r3, [sp, #0xc]
  3ab6e8: f8c3 213c    	str.w	r2, [r3, #0x13c]
  3ab6ec: 9b03         	ldr	r3, [sp, #0xc]
  3ab6ee: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3ab6f2: 4618         	mov	r0, r3
  3ab6f4: f1ec fbf8    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1ec7f0
  3ab6f8: 9b03         	ldr	r3, [sp, #0xc]
  3ab6fa: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3ab6fe: 681b         	ldr	r3, [r3]
  3ab700: 334c         	adds	r3, #0x4c
  3ab702: 681d         	ldr	r5, [r3]
  3ab704: 9b03         	ldr	r3, [sp, #0xc]
  3ab706: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3ab70a: 461e         	mov	r6, r3
  3ab70c: 9b03         	ldr	r3, [sp, #0xc]
  3ab70e: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  3ab712: 681b         	ldr	r3, [r3]
  3ab714: 3350         	adds	r3, #0x50
  3ab716: 681b         	ldr	r3, [r3]
  3ab718: 9a03         	ldr	r2, [sp, #0xc]
  3ab71a: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  3ab71e: 4610         	mov	r0, r2
  3ab720: 4798         	blx	r3
  3ab722: 4607         	mov	r7, r0
  3ab724: ab36         	add	r3, sp, #0xd8
  3ab726: 4618         	mov	r0, r3
  3ab728: f04f 0100    	mov.w	r1, #0x0
  3ab72c: f04f 0200    	mov.w	r2, #0x0
  3ab730: f2cc 1210    	movt	r2, #0xc110
  3ab734: f1e7 fadc    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e75b8
  3ab738: aa3a         	add	r2, sp, #0xe8
  3ab73a: ab36         	add	r3, sp, #0xd8
  3ab73c: 4610         	mov	r0, r2
  3ab73e: 4639         	mov	r1, r7
  3ab740: 461a         	mov	r2, r3
  3ab742: f7fe f833    	bl	0x3a97ac <PlayerLobbyOnlineHosted::onServerStatus(cocos2d::CCObject*)+0x1c0> @ imm = #-0x1f9a
  3ab746: ab3a         	add	r3, sp, #0xe8
  3ab748: 4630         	mov	r0, r6
  3ab74a: 4619         	mov	r1, r3
  3ab74c: 47a8         	blx	r5
  3ab74e: 9b03         	ldr	r3, [sp, #0xc]
  3ab750: 681b         	ldr	r3, [r3]
  3ab752: 33c8         	adds	r3, #0xc8
  3ab754: 681b         	ldr	r3, [r3]
  3ab756: 9903         	ldr	r1, [sp, #0xc]
  3ab758: 9a03         	ldr	r2, [sp, #0xc]
  3ab75a: f8d2 213c    	ldr.w	r2, [r2, #0x13c]
  3ab75e: 4608         	mov	r0, r1
  3ab760: 4611         	mov	r1, r2
  3ab762: 4798         	blx	r3
  3ab764: 9b03         	ldr	r3, [sp, #0xc]
  3ab766: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3ab76a: 681b         	ldr	r3, [r3]
  3ab76c: f503 73de    	add.w	r3, r3, #0x1bc
  3ab770: 681d         	ldr	r5, [r3]
  3ab772: 9b03         	ldr	r3, [sp, #0xc]
  3ab774: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3ab778: 461e         	mov	r6, r3
  3ab77a: 2000         	movs	r0, #0x0
  3ab77c: 21ff         	movs	r1, #0xff
  3ab77e: 2200         	movs	r2, #0x0
  3ab780: f7fd ffe6    	bl	0x3a9750 <PlayerLobbyOnlineHosted::onServerStatus(cocos2d::CCObject*)+0x164> @ imm = #-0x2034
  3ab784: 4603         	mov	r3, r0
  3ab786: 461a         	mov	r2, r3
  3ab788: f88d 20e8    	strb.w	r2, [sp, #0xe8]
  3ab78c: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3ab790: f88d 20e9    	strb.w	r2, [sp, #0xe9]
  3ab794: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3ab798: f88d 30ea    	strb.w	r3, [sp, #0xea]
  3ab79c: ab3a         	add	r3, sp, #0xe8
  3ab79e: 4630         	mov	r0, r6
  3ab7a0: 4619         	mov	r1, r3
  3ab7a2: 47a8         	blx	r5
  3ab7a4: 9b03         	ldr	r3, [sp, #0xc]
  3ab7a6: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3ab7aa: 681b         	ldr	r3, [r3]
  3ab7ac: 337c         	adds	r3, #0x7c
  3ab7ae: 681d         	ldr	r5, [r3]
  3ab7b0: 9b03         	ldr	r3, [sp, #0xc]
  3ab7b2: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3ab7b6: 461e         	mov	r6, r3
  3ab7b8: ab3a         	add	r3, sp, #0xe8
  3ab7ba: 4618         	mov	r0, r3
  3ab7bc: f04f 517c    	mov.w	r1, #0x3f000000
  3ab7c0: f04f 527c    	mov.w	r2, #0x3f000000
  3ab7c4: f1e7 fa94    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e7528
  3ab7c8: ab3a         	add	r3, sp, #0xe8
  3ab7ca: 4630         	mov	r0, r6
  3ab7cc: 4619         	mov	r1, r3
  3ab7ce: 47a8         	blx	r5
  3ab7d0: 4b29         	ldr	r3, [pc, #0xa4]         @ 0x3ab878 <PointsLayer::init()+0x1230>
  3ab7d2: 447b         	add	r3, pc
  3ab7d4: 4618         	mov	r0, r3
  3ab7d6: 4b29         	ldr	r3, [pc, #0xa4]         @ 0x3ab87c <PointsLayer::init()+0x1234>
  3ab7d8: 447b         	add	r3, pc
  3ab7da: 4619         	mov	r1, r3
  3ab7dc: f04f 0200    	mov.w	r2, #0x0
  3ab7e0: f2c4 1240    	movt	r2, #0x4140
  3ab7e4: f200 fc1c    	bl	0x5ac020 <cocos2d::CCLabelTTF::create(char const*, char const*, float)> @ imm = #0x200838
  3ab7e8: 4602         	mov	r2, r0
  3ab7ea: 9b03         	ldr	r3, [sp, #0xc]
  3ab7ec: f8c3 2148    	str.w	r2, [r3, #0x148]
  3ab7f0: 9b03         	ldr	r3, [sp, #0xc]
  3ab7f2: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3ab7f6: 4618         	mov	r0, r3
  3ab7f8: f1ec fb76    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1ec6ec
  3ab7fc: 9b03         	ldr	r3, [sp, #0xc]
  3ab7fe: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3ab802: 681b         	ldr	r3, [r3]
  3ab804: 334c         	adds	r3, #0x4c
  3ab806: 681d         	ldr	r5, [r3]
  3ab808: 9b03         	ldr	r3, [sp, #0xc]
  3ab80a: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3ab80e: 461e         	mov	r6, r3
  3ab810: 9b03         	ldr	r3, [sp, #0xc]
  3ab812: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3ab816: 681b         	ldr	r3, [r3]
  3ab818: 3350         	adds	r3, #0x50
  3ab81a: 681b         	ldr	r3, [r3]
  3ab81c: 9a03         	ldr	r2, [sp, #0xc]
  3ab81e: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3ab822: 4610         	mov	r0, r2
  3ab824: 4798         	blx	r3
  3ab826: 4607         	mov	r7, r0
  3ab828: ab36         	add	r3, sp, #0xd8
  3ab82a: 4618         	mov	r0, r3
  3ab82c: f04f 0100    	mov.w	r1, #0x0
  3ab830: f04f 0200    	mov.w	r2, #0x0
  3ab834: f2cc 1210    	movt	r2, #0xc110
  3ab838: f1e7 fa5a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e74b4
  3ab83c: aa3a         	add	r2, sp, #0xe8
  3ab83e: ab36         	add	r3, sp, #0xd8
  3ab840: 4610         	mov	r0, r2
  3ab842: 4639         	mov	r1, r7
  3ab844: 461a         	mov	r2, r3
  3ab846: f7fd ffb1    	bl	0x3a97ac <PlayerLobbyOnlineHosted::onServerStatus(cocos2d::CCObject*)+0x1c0> @ imm = #-0x209e
  3ab84a: ab3a         	add	r3, sp, #0xe8
  3ab84c: 4630         	mov	r0, r6
  3ab84e: 4619         	mov	r1, r3
  3ab850: 47a8         	blx	r5
  3ab852: 9b03         	ldr	r3, [sp, #0xc]
  3ab854: 681b         	ldr	r3, [r3]
  3ab856: 33c8         	adds	r3, #0xc8
  3ab858: 681b         	ldr	r3, [r3]
  3ab85a: 9903         	ldr	r1, [sp, #0xc]
  3ab85c: e010         	b	0x3ab880 <PointsLayer::init()+0x1238> @ imm = #0x20
  3ab85e: bf00         	nop
  3ab868: 5d1e         	ldrb	r6, [r3, r4]
  3ab86a: 0059         	lsls	r1, r3, #0x1
  3ab86c: 7f7e         	ldrb	r6, [r7, #0x1d]
  3ab86e: 0042         	lsls	r2, r0, #0x1
  3ab870: 7d8a         	ldrb	r2, [r1, #0x16]
  3ab872: 0042         	lsls	r2, r0, #0x1
  3ab874: 7d88         	ldrb	r0, [r1, #0x16]
  3ab876: 0042         	lsls	r2, r0, #0x1
  3ab878: 7c86         	ldrb	r6, [r0, #0x12]
  3ab87a: 0042         	lsls	r2, r0, #0x1
  3ab87c: 7c84         	ldrb	r4, [r0, #0x12]
  3ab87e: 0042         	lsls	r2, r0, #0x1
  3ab880: 9a03         	ldr	r2, [sp, #0xc]
  3ab882: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3ab886: 4608         	mov	r0, r1
  3ab888: 4611         	mov	r1, r2
  3ab88a: 4798         	blx	r3
  3ab88c: 9b03         	ldr	r3, [sp, #0xc]
  3ab88e: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3ab892: 681b         	ldr	r3, [r3]
  3ab894: f503 73de    	add.w	r3, r3, #0x1bc
  3ab898: 681d         	ldr	r5, [r3]
  3ab89a: 9b03         	ldr	r3, [sp, #0xc]
  3ab89c: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3ab8a0: 461e         	mov	r6, r3
  3ab8a2: 2000         	movs	r0, #0x0
  3ab8a4: 21ff         	movs	r1, #0xff
  3ab8a6: 2200         	movs	r2, #0x0
  3ab8a8: f7fd ff52    	bl	0x3a9750 <PlayerLobbyOnlineHosted::onServerStatus(cocos2d::CCObject*)+0x164> @ imm = #-0x215c
  3ab8ac: 4603         	mov	r3, r0
  3ab8ae: 461a         	mov	r2, r3
  3ab8b0: f88d 20e8    	strb.w	r2, [sp, #0xe8]
  3ab8b4: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3ab8b8: f88d 20e9    	strb.w	r2, [sp, #0xe9]
  3ab8bc: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3ab8c0: f88d 30ea    	strb.w	r3, [sp, #0xea]
  3ab8c4: ab3a         	add	r3, sp, #0xe8
  3ab8c6: 4630         	mov	r0, r6
  3ab8c8: 4619         	mov	r1, r3
  3ab8ca: 47a8         	blx	r5
  3ab8cc: 9b03         	ldr	r3, [sp, #0xc]
  3ab8ce: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3ab8d2: 681b         	ldr	r3, [r3]
  3ab8d4: 337c         	adds	r3, #0x7c
  3ab8d6: 681d         	ldr	r5, [r3]
  3ab8d8: 9b03         	ldr	r3, [sp, #0xc]
  3ab8da: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3ab8de: 461e         	mov	r6, r3
  3ab8e0: ab3a         	add	r3, sp, #0xe8
  3ab8e2: 4618         	mov	r0, r3
  3ab8e4: f04f 517c    	mov.w	r1, #0x3f000000
  3ab8e8: f04f 527c    	mov.w	r2, #0x3f000000
  3ab8ec: f1e7 fa00    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e7400
  3ab8f0: ab3a         	add	r3, sp, #0xe8
  3ab8f2: 4630         	mov	r0, r6
  3ab8f4: 4619         	mov	r1, r3
  3ab8f6: 47a8         	blx	r5
  3ab8f8: f8df 35b4    	ldr.w	r3, [pc, #0x5b4]        @ 0x3abeb0 <PointsLayer::init()+0x1868>
  3ab8fc: 447b         	add	r3, pc
  3ab8fe: 4618         	mov	r0, r3
  3ab900: f8df 35b0    	ldr.w	r3, [pc, #0x5b0]        @ 0x3abeb4 <PointsLayer::init()+0x186c>
  3ab904: 447b         	add	r3, pc
  3ab906: 4619         	mov	r1, r3
  3ab908: f04f 0200    	mov.w	r2, #0x0
  3ab90c: f2c4 1240    	movt	r2, #0x4140
  3ab910: f200 fb86    	bl	0x5ac020 <cocos2d::CCLabelTTF::create(char const*, char const*, float)> @ imm = #0x20070c
  3ab914: 4602         	mov	r2, r0
  3ab916: 9b03         	ldr	r3, [sp, #0xc]
  3ab918: f8c3 2154    	str.w	r2, [r3, #0x154]
  3ab91c: 9b03         	ldr	r3, [sp, #0xc]
  3ab91e: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3ab922: 4618         	mov	r0, r3
  3ab924: f1ec fae0    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1ec5c0
  3ab928: 9b03         	ldr	r3, [sp, #0xc]
  3ab92a: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3ab92e: 681b         	ldr	r3, [r3]
  3ab930: 334c         	adds	r3, #0x4c
  3ab932: 681d         	ldr	r5, [r3]
  3ab934: 9b03         	ldr	r3, [sp, #0xc]
  3ab936: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3ab93a: 461e         	mov	r6, r3
  3ab93c: 9b03         	ldr	r3, [sp, #0xc]
  3ab93e: f8d3 315c    	ldr.w	r3, [r3, #0x15c]
  3ab942: 681b         	ldr	r3, [r3]
  3ab944: 3350         	adds	r3, #0x50
  3ab946: 681b         	ldr	r3, [r3]
  3ab948: 9a03         	ldr	r2, [sp, #0xc]
  3ab94a: f8d2 215c    	ldr.w	r2, [r2, #0x15c]
  3ab94e: 4610         	mov	r0, r2
  3ab950: 4798         	blx	r3
  3ab952: 4607         	mov	r7, r0
  3ab954: ab36         	add	r3, sp, #0xd8
  3ab956: 4618         	mov	r0, r3
  3ab958: f04f 0100    	mov.w	r1, #0x0
  3ab95c: f04f 0200    	mov.w	r2, #0x0
  3ab960: f2cc 1210    	movt	r2, #0xc110
  3ab964: f1e7 f9c4    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e7388
  3ab968: aa3a         	add	r2, sp, #0xe8
  3ab96a: ab36         	add	r3, sp, #0xd8
  3ab96c: 4610         	mov	r0, r2
  3ab96e: 4639         	mov	r1, r7
  3ab970: 461a         	mov	r2, r3
  3ab972: f7fd ff1b    	bl	0x3a97ac <PlayerLobbyOnlineHosted::onServerStatus(cocos2d::CCObject*)+0x1c0> @ imm = #-0x21ca
  3ab976: ab3a         	add	r3, sp, #0xe8
  3ab978: 4630         	mov	r0, r6
  3ab97a: 4619         	mov	r1, r3
  3ab97c: 47a8         	blx	r5
  3ab97e: 9b03         	ldr	r3, [sp, #0xc]
  3ab980: 681b         	ldr	r3, [r3]
  3ab982: 33c8         	adds	r3, #0xc8
  3ab984: 681b         	ldr	r3, [r3]
  3ab986: 9903         	ldr	r1, [sp, #0xc]
  3ab988: 9a03         	ldr	r2, [sp, #0xc]
  3ab98a: f8d2 2154    	ldr.w	r2, [r2, #0x154]
  3ab98e: 4608         	mov	r0, r1
  3ab990: 4611         	mov	r1, r2
  3ab992: 4798         	blx	r3
  3ab994: 9b03         	ldr	r3, [sp, #0xc]
  3ab996: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3ab99a: 681b         	ldr	r3, [r3]
  3ab99c: f503 73de    	add.w	r3, r3, #0x1bc
  3ab9a0: 681d         	ldr	r5, [r3]
  3ab9a2: 9b03         	ldr	r3, [sp, #0xc]
  3ab9a4: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3ab9a8: 461e         	mov	r6, r3
  3ab9aa: 2000         	movs	r0, #0x0
  3ab9ac: 21ff         	movs	r1, #0xff
  3ab9ae: 2200         	movs	r2, #0x0
  3ab9b0: f7fd fece    	bl	0x3a9750 <PlayerLobbyOnlineHosted::onServerStatus(cocos2d::CCObject*)+0x164> @ imm = #-0x2264
  3ab9b4: 4603         	mov	r3, r0
  3ab9b6: 461a         	mov	r2, r3
  3ab9b8: f88d 20e8    	strb.w	r2, [sp, #0xe8]
  3ab9bc: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3ab9c0: f88d 20e9    	strb.w	r2, [sp, #0xe9]
  3ab9c4: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3ab9c8: f88d 30ea    	strb.w	r3, [sp, #0xea]
  3ab9cc: ab3a         	add	r3, sp, #0xe8
  3ab9ce: 4630         	mov	r0, r6
  3ab9d0: 4619         	mov	r1, r3
  3ab9d2: 47a8         	blx	r5
  3ab9d4: 9b03         	ldr	r3, [sp, #0xc]
  3ab9d6: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3ab9da: 681b         	ldr	r3, [r3]
  3ab9dc: 337c         	adds	r3, #0x7c
  3ab9de: 681d         	ldr	r5, [r3]
  3ab9e0: 9b03         	ldr	r3, [sp, #0xc]
  3ab9e2: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3ab9e6: 461e         	mov	r6, r3
  3ab9e8: ab3a         	add	r3, sp, #0xe8
  3ab9ea: 4618         	mov	r0, r3
  3ab9ec: f04f 517c    	mov.w	r1, #0x3f000000
  3ab9f0: f04f 527c    	mov.w	r2, #0x3f000000
  3ab9f4: f1e7 f97c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e72f8
  3ab9f8: ab3a         	add	r3, sp, #0xe8
  3ab9fa: 4630         	mov	r0, r6
  3ab9fc: 4619         	mov	r1, r3
  3ab9fe: 47a8         	blx	r5
  3aba00: f8df 34b4    	ldr.w	r3, [pc, #0x4b4]        @ 0x3abeb8 <PointsLayer::init()+0x1870>
  3aba04: 447b         	add	r3, pc
  3aba06: 4618         	mov	r0, r3
  3aba08: f8df 34b0    	ldr.w	r3, [pc, #0x4b0]        @ 0x3abebc <PointsLayer::init()+0x1874>
  3aba0c: 447b         	add	r3, pc
  3aba0e: 4619         	mov	r1, r3
  3aba10: f04f 0200    	mov.w	r2, #0x0
  3aba14: f2c4 1240    	movt	r2, #0x4140
  3aba18: f200 fb02    	bl	0x5ac020 <cocos2d::CCLabelTTF::create(char const*, char const*, float)> @ imm = #0x200604
  3aba1c: 4602         	mov	r2, r0
  3aba1e: 9b03         	ldr	r3, [sp, #0xc]
  3aba20: f8c3 2160    	str.w	r2, [r3, #0x160]
  3aba24: 9b03         	ldr	r3, [sp, #0xc]
  3aba26: f8d3 3160    	ldr.w	r3, [r3, #0x160]
  3aba2a: 4618         	mov	r0, r3
  3aba2c: f1ec fa5c    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1ec4b8
  3aba30: 9b03         	ldr	r3, [sp, #0xc]
  3aba32: f8d3 3160    	ldr.w	r3, [r3, #0x160]
  3aba36: 681b         	ldr	r3, [r3]
  3aba38: 334c         	adds	r3, #0x4c
  3aba3a: 681d         	ldr	r5, [r3]
  3aba3c: 9b03         	ldr	r3, [sp, #0xc]
  3aba3e: f8d3 3160    	ldr.w	r3, [r3, #0x160]
  3aba42: 461e         	mov	r6, r3
  3aba44: 9b03         	ldr	r3, [sp, #0xc]
  3aba46: f8d3 3168    	ldr.w	r3, [r3, #0x168]
  3aba4a: 681b         	ldr	r3, [r3]
  3aba4c: 3350         	adds	r3, #0x50
  3aba4e: 681b         	ldr	r3, [r3]
  3aba50: 9a03         	ldr	r2, [sp, #0xc]
  3aba52: f8d2 2168    	ldr.w	r2, [r2, #0x168]
  3aba56: 4610         	mov	r0, r2
  3aba58: 4798         	blx	r3
  3aba5a: 4607         	mov	r7, r0
  3aba5c: ab36         	add	r3, sp, #0xd8
  3aba5e: 4618         	mov	r0, r3
  3aba60: f04f 0100    	mov.w	r1, #0x0
  3aba64: f04f 0200    	mov.w	r2, #0x0
  3aba68: f2cc 1210    	movt	r2, #0xc110
  3aba6c: f1e7 f940    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e7280
  3aba70: aa3a         	add	r2, sp, #0xe8
  3aba72: ab36         	add	r3, sp, #0xd8
  3aba74: 4610         	mov	r0, r2
  3aba76: 4639         	mov	r1, r7
  3aba78: 461a         	mov	r2, r3
  3aba7a: f7fd fe97    	bl	0x3a97ac <PlayerLobbyOnlineHosted::onServerStatus(cocos2d::CCObject*)+0x1c0> @ imm = #-0x22d2
  3aba7e: ab3a         	add	r3, sp, #0xe8
  3aba80: 4630         	mov	r0, r6
  3aba82: 4619         	mov	r1, r3
  3aba84: 47a8         	blx	r5
  3aba86: 9b03         	ldr	r3, [sp, #0xc]
  3aba88: 681b         	ldr	r3, [r3]
  3aba8a: 33c8         	adds	r3, #0xc8
  3aba8c: 681b         	ldr	r3, [r3]
  3aba8e: 9903         	ldr	r1, [sp, #0xc]
  3aba90: 9a03         	ldr	r2, [sp, #0xc]
  3aba92: f8d2 2160    	ldr.w	r2, [r2, #0x160]
  3aba96: 4608         	mov	r0, r1
  3aba98: 4611         	mov	r1, r2
  3aba9a: 4798         	blx	r3
  3aba9c: 9b03         	ldr	r3, [sp, #0xc]
  3aba9e: f8d3 3160    	ldr.w	r3, [r3, #0x160]
  3abaa2: 681b         	ldr	r3, [r3]
  3abaa4: f503 73de    	add.w	r3, r3, #0x1bc
  3abaa8: 681d         	ldr	r5, [r3]
  3abaaa: 9b03         	ldr	r3, [sp, #0xc]
  3abaac: f8d3 3160    	ldr.w	r3, [r3, #0x160]
  3abab0: 461e         	mov	r6, r3
  3abab2: 2000         	movs	r0, #0x0
  3abab4: 21ff         	movs	r1, #0xff
  3abab6: 2200         	movs	r2, #0x0
  3abab8: f7fd fe4a    	bl	0x3a9750 <PlayerLobbyOnlineHosted::onServerStatus(cocos2d::CCObject*)+0x164> @ imm = #-0x236c
  3ababc: 4603         	mov	r3, r0
  3ababe: 461a         	mov	r2, r3
  3abac0: f88d 20e8    	strb.w	r2, [sp, #0xe8]
  3abac4: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3abac8: f88d 20e9    	strb.w	r2, [sp, #0xe9]
  3abacc: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3abad0: f88d 30ea    	strb.w	r3, [sp, #0xea]
  3abad4: ab3a         	add	r3, sp, #0xe8
  3abad6: 4630         	mov	r0, r6
  3abad8: 4619         	mov	r1, r3
  3abada: 47a8         	blx	r5
  3abadc: 9b03         	ldr	r3, [sp, #0xc]
  3abade: f8d3 3160    	ldr.w	r3, [r3, #0x160]
  3abae2: 681b         	ldr	r3, [r3]
  3abae4: 337c         	adds	r3, #0x7c
  3abae6: 681d         	ldr	r5, [r3]
  3abae8: 9b03         	ldr	r3, [sp, #0xc]
  3abaea: f8d3 3160    	ldr.w	r3, [r3, #0x160]
  3abaee: 461e         	mov	r6, r3
  3abaf0: ab3a         	add	r3, sp, #0xe8
  3abaf2: 4618         	mov	r0, r3
  3abaf4: f04f 517c    	mov.w	r1, #0x3f000000
  3abaf8: f04f 527c    	mov.w	r2, #0x3f000000
  3abafc: f1e7 f8f8    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e71f0
  3abb00: ab3a         	add	r3, sp, #0xe8
  3abb02: 4630         	mov	r0, r6
  3abb04: 4619         	mov	r1, r3
  3abb06: 47a8         	blx	r5
  3abb08: 4bed         	ldr	r3, [pc, #0x3b4]        @ 0x3abec0 <PointsLayer::init()+0x1878>
  3abb0a: 447b         	add	r3, pc
  3abb0c: 4618         	mov	r0, r3
  3abb0e: f009 f3f7    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4097ee
  3abb12: 4603         	mov	r3, r0
  3abb14: 2220         	movs	r2, #0x20
  3abb16: 9200         	str	r2, [sp]
  3abb18: 4aea         	ldr	r2, [pc, #0x3a8]        @ 0x3abec4 <PointsLayer::init()+0x187c>
  3abb1a: 447a         	add	r2, pc
  3abb1c: 4610         	mov	r0, r2
  3abb1e: 4619         	mov	r1, r3
  3abb20: 2220         	movs	r2, #0x20
  3abb22: 2320         	movs	r3, #0x20
  3abb24: f1f9 fc28    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1f9850
  3abb28: 4602         	mov	r2, r0
  3abb2a: 9b03         	ldr	r3, [sp, #0xc]
  3abb2c: f8c3 2120    	str.w	r2, [r3, #0x120]
  3abb30: 9b03         	ldr	r3, [sp, #0xc]
  3abb32: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3abb36: 4618         	mov	r0, r3
  3abb38: f1ec f9d6    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1ec3ac
  3abb3c: 9b03         	ldr	r3, [sp, #0xc]
  3abb3e: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3abb42: 9a03         	ldr	r2, [sp, #0xc]
  3abb44: edd2 7a44    	vldr	s15, [r2, #272]
  3abb48: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3abb4c: ee17 2a90    	vmov	r2, s15
  3abb50: 4618         	mov	r0, r3
  3abb52: 4611         	mov	r1, r2
  3abb54: f1fa f916    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1fa22c
  3abb58: 9b03         	ldr	r3, [sp, #0xc]
  3abb5a: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3abb5e: 681b         	ldr	r3, [r3]
  3abb60: 3340         	adds	r3, #0x40
  3abb62: 681b         	ldr	r3, [r3]
  3abb64: 9a03         	ldr	r2, [sp, #0xc]
  3abb66: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  3abb6a: 4611         	mov	r1, r2
  3abb6c: 9a03         	ldr	r2, [sp, #0xc]
  3abb6e: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3abb72: 4608         	mov	r0, r1
  3abb74: 4611         	mov	r1, r2
  3abb76: 4798         	blx	r3
  3abb78: 9b03         	ldr	r3, [sp, #0xc]
  3abb7a: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3abb7e: 681b         	ldr	r3, [r3]
  3abb80: 334c         	adds	r3, #0x4c
  3abb82: 681d         	ldr	r5, [r3]
  3abb84: 9b03         	ldr	r3, [sp, #0xc]
  3abb86: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3abb8a: 461e         	mov	r6, r3
  3abb8c: 9b03         	ldr	r3, [sp, #0xc]
  3abb8e: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3abb92: 681b         	ldr	r3, [r3]
  3abb94: 3350         	adds	r3, #0x50
  3abb96: 681b         	ldr	r3, [r3]
  3abb98: 9a03         	ldr	r2, [sp, #0xc]
  3abb9a: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  3abb9e: 4610         	mov	r0, r2
  3abba0: 4798         	blx	r3
  3abba2: 4603         	mov	r3, r0
  3abba4: 681f         	ldr	r7, [r3]
  3abba6: 9b03         	ldr	r3, [sp, #0xc]
  3abba8: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3abbac: 681b         	ldr	r3, [r3]
  3abbae: 3350         	adds	r3, #0x50
  3abbb0: 681b         	ldr	r3, [r3]
  3abbb2: 9a03         	ldr	r2, [sp, #0xc]
  3abbb4: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  3abbb8: 4610         	mov	r0, r2
  3abbba: 4798         	blx	r3
  3abbbc: 4603         	mov	r3, r0
  3abbbe: 685b         	ldr	r3, [r3, #0x4]
  3abbc0: aa22         	add	r2, sp, #0x88
  3abbc2: 4610         	mov	r0, r2
  3abbc4: 4639         	mov	r1, r7
  3abbc6: 461a         	mov	r2, r3
  3abbc8: f1e7 f892    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e7124
  3abbcc: 9b03         	ldr	r3, [sp, #0xc]
  3abbce: edd3 7a45    	vldr	s15, [r3, #276]
  3abbd2: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3abbd6: ab36         	add	r3, sp, #0xd8
  3abbd8: 4618         	mov	r0, r3
  3abbda: ed9f 0bb3    	vldr	d0, [pc, #716]          @ 0x3abea8 <PointsLayer::init()+0x1860>
  3abbde: eeb0 1b47    	vmov.f64	d1, d7
  3abbe2: f7fd fdf3    	bl	0x3a97cc <PlayerLobbyOnlineHosted::onServerStatus(cocos2d::CCObject*)+0x1e0> @ imm = #-0x241a
  3abbe6: ed9d 8b36    	vldr	d8, [sp, #216]
  3abbea: 9b03         	ldr	r3, [sp, #0xc]
  3abbec: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3abbf0: 681b         	ldr	r3, [r3]
  3abbf2: f503 73fe    	add.w	r3, r3, #0x1fc
  3abbf6: 681b         	ldr	r3, [r3]
  3abbf8: 9a03         	ldr	r2, [sp, #0xc]
  3abbfa: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  3abbfe: 4610         	mov	r0, r2
  3abc00: 4798         	blx	r3
  3abc02: 4607         	mov	r7, r0
  3abc04: ab05         	add	r3, sp, #0x14
  3abc06: 4618         	mov	r0, r3
  3abc08: f3de fbf4    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3de7e8
  3abc0c: aa06         	add	r2, sp, #0x18
  3abc0e: ab05         	add	r3, sp, #0x14
  3abc10: 4610         	mov	r0, r2
  3abc12: 4639         	mov	r1, r7
  3abc14: 461a         	mov	r2, r3
  3abc16: f00a f723    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x40ae46
  3abc1a: ab06         	add	r3, sp, #0x18
  3abc1c: 4618         	mov	r0, r3
  3abc1e: f009 f21d    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x40943a
  3abc22: 4603         	mov	r3, r0
  3abc24: ee07 3a90    	vmov	s15, r3
  3abc28: eeb8 7a67    	vcvt.f32.u32	s14, s15
  3abc2c: 9b03         	ldr	r3, [sp, #0xc]
  3abc2e: edd3 7a44    	vldr	s15, [r3, #272]
  3abc32: ee27 7a27    	vmul.f32	s14, s14, s15
  3abc36: 9b03         	ldr	r3, [sp, #0xc]
  3abc38: edd3 7a43    	vldr	s15, [r3, #268]
  3abc3c: ee27 7a27    	vmul.f32	s14, s14, s15
  3abc40: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3abc44: eec7 7a27    	vdiv.f32	s15, s14, s15
  3abc48: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3abc4c: ee38 7b47    	vsub.f64	d7, d8, d7
  3abc50: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3abc54: 9b03         	ldr	r3, [sp, #0xc]
  3abc56: edd3 7a45    	vldr	s15, [r3, #276]
  3abc5a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3abc5e: ab3a         	add	r3, sp, #0xe8
  3abc60: 4618         	mov	r0, r3
  3abc62: ed9f 0b91    	vldr	d0, [pc, #580]          @ 0x3abea8 <PointsLayer::init()+0x1860>
  3abc66: eeb0 1b47    	vmov.f64	d1, d7
  3abc6a: f7fd fdaf    	bl	0x3a97cc <PlayerLobbyOnlineHosted::onServerStatus(cocos2d::CCObject*)+0x1e0> @ imm = #-0x24a2
  3abc6e: ed9d 7b3c    	vldr	d7, [sp, #240]
  3abc72: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3abc76: ab24         	add	r3, sp, #0x90
  3abc78: 4618         	mov	r0, r3
  3abc7a: ee18 1a10    	vmov	r1, s16
  3abc7e: ee17 2a90    	vmov	r2, s15
  3abc82: f1e7 f835    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e706a
  3abc86: a926         	add	r1, sp, #0x98
  3abc88: aa22         	add	r2, sp, #0x88
  3abc8a: ab24         	add	r3, sp, #0x90
  3abc8c: 4608         	mov	r0, r1
  3abc8e: 4611         	mov	r1, r2
  3abc90: 461a         	mov	r2, r3
  3abc92: f7fd fd8b    	bl	0x3a97ac <PlayerLobbyOnlineHosted::onServerStatus(cocos2d::CCObject*)+0x1c0> @ imm = #-0x24ea
  3abc96: ab26         	add	r3, sp, #0x98
  3abc98: 4630         	mov	r0, r6
  3abc9a: 4619         	mov	r1, r3
  3abc9c: 47a8         	blx	r5
  3abc9e: ab06         	add	r3, sp, #0x18
  3abca0: 4618         	mov	r0, r3
  3abca2: f009 f637    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x409c6e
  3abca6: ab05         	add	r3, sp, #0x14
  3abca8: 4618         	mov	r0, r3
  3abcaa: f3de fba7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3de74e
  3abcae: 9b03         	ldr	r3, [sp, #0xc]
  3abcb0: 681b         	ldr	r3, [r3]
  3abcb2: 33c8         	adds	r3, #0xc8
  3abcb4: 681b         	ldr	r3, [r3]
  3abcb6: 9903         	ldr	r1, [sp, #0xc]
  3abcb8: 9a03         	ldr	r2, [sp, #0xc]
  3abcba: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  3abcbe: 4608         	mov	r0, r1
  3abcc0: 4611         	mov	r1, r2
  3abcc2: 4798         	blx	r3
  3abcc4: 4b80         	ldr	r3, [pc, #0x200]        @ 0x3abec8 <PointsLayer::init()+0x1880>
  3abcc6: 447b         	add	r3, pc
  3abcc8: 4618         	mov	r0, r3
  3abcca: f009 f319    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x409632
  3abcce: 4603         	mov	r3, r0
  3abcd0: 2220         	movs	r2, #0x20
  3abcd2: 9200         	str	r2, [sp]
  3abcd4: 4a7d         	ldr	r2, [pc, #0x1f4]        @ 0x3abecc <PointsLayer::init()+0x1884>
  3abcd6: 447a         	add	r2, pc
  3abcd8: 4610         	mov	r0, r2
  3abcda: 4619         	mov	r1, r3
  3abcdc: 2220         	movs	r2, #0x20
  3abcde: 2320         	movs	r3, #0x20
  3abce0: f1f9 fb4a    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1f9694
  3abce4: 4602         	mov	r2, r0
  3abce6: 9b03         	ldr	r3, [sp, #0xc]
  3abce8: f8c3 2128    	str.w	r2, [r3, #0x128]
  3abcec: 9b03         	ldr	r3, [sp, #0xc]
  3abcee: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3abcf2: 4618         	mov	r0, r3
  3abcf4: f1ec f8f8    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1ec1f0
  3abcf8: 9b03         	ldr	r3, [sp, #0xc]
  3abcfa: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3abcfe: 681b         	ldr	r3, [r3]
  3abd00: 334c         	adds	r3, #0x4c
  3abd02: 681d         	ldr	r5, [r3]
  3abd04: 9b03         	ldr	r3, [sp, #0xc]
  3abd06: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3abd0a: 461e         	mov	r6, r3
  3abd0c: 9b03         	ldr	r3, [sp, #0xc]
  3abd0e: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  3abd12: 681b         	ldr	r3, [r3]
  3abd14: 3350         	adds	r3, #0x50
  3abd16: 681b         	ldr	r3, [r3]
  3abd18: 9a03         	ldr	r2, [sp, #0xc]
  3abd1a: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  3abd1e: 4610         	mov	r0, r2
  3abd20: 4798         	blx	r3
  3abd22: 4603         	mov	r3, r0
  3abd24: 681f         	ldr	r7, [r3]
  3abd26: 9b03         	ldr	r3, [sp, #0xc]
  3abd28: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  3abd2c: 681b         	ldr	r3, [r3]
  3abd2e: 3350         	adds	r3, #0x50
  3abd30: 681b         	ldr	r3, [r3]
  3abd32: 9a03         	ldr	r2, [sp, #0xc]
  3abd34: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  3abd38: 4610         	mov	r0, r2
  3abd3a: 4798         	blx	r3
  3abd3c: 4603         	mov	r3, r0
  3abd3e: 685b         	ldr	r3, [r3, #0x4]
  3abd40: aa22         	add	r2, sp, #0x88
  3abd42: 4610         	mov	r0, r2
  3abd44: 4639         	mov	r1, r7
  3abd46: 461a         	mov	r2, r3
  3abd48: f1e6 ffd2    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e6fa4
  3abd4c: 9b03         	ldr	r3, [sp, #0xc]
  3abd4e: edd3 7a45    	vldr	s15, [r3, #276]
  3abd52: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3abd56: ab36         	add	r3, sp, #0xd8
  3abd58: 4618         	mov	r0, r3
  3abd5a: ed9f 0b53    	vldr	d0, [pc, #332]          @ 0x3abea8 <PointsLayer::init()+0x1860>
  3abd5e: eeb0 1b47    	vmov.f64	d1, d7
  3abd62: f7fd fd33    	bl	0x3a97cc <PlayerLobbyOnlineHosted::onServerStatus(cocos2d::CCObject*)+0x1e0> @ imm = #-0x259a
  3abd66: ed9d 8b36    	vldr	d8, [sp, #216]
  3abd6a: 9b03         	ldr	r3, [sp, #0xc]
  3abd6c: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3abd70: 681b         	ldr	r3, [r3]
  3abd72: f503 73fe    	add.w	r3, r3, #0x1fc
  3abd76: 681b         	ldr	r3, [r3]
  3abd78: 9a03         	ldr	r2, [sp, #0xc]
  3abd7a: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  3abd7e: 4610         	mov	r0, r2
  3abd80: 4798         	blx	r3
  3abd82: 4607         	mov	r7, r0
  3abd84: ab05         	add	r3, sp, #0x14
  3abd86: 4618         	mov	r0, r3
  3abd88: f3de fb34    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3de668
  3abd8c: aa06         	add	r2, sp, #0x18
  3abd8e: ab05         	add	r3, sp, #0x14
  3abd90: 4610         	mov	r0, r2
  3abd92: 4639         	mov	r1, r7
  3abd94: 461a         	mov	r2, r3
  3abd96: f00a f663    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x40acc6
  3abd9a: ab06         	add	r3, sp, #0x18
  3abd9c: 4618         	mov	r0, r3
  3abd9e: f009 f15d    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x4092ba
  3abda2: 4603         	mov	r3, r0
  3abda4: ee07 3a90    	vmov	s15, r3
  3abda8: eeb8 7a67    	vcvt.f32.u32	s14, s15
  3abdac: 9b03         	ldr	r3, [sp, #0xc]
  3abdae: edd3 7a44    	vldr	s15, [r3, #272]
  3abdb2: ee27 7a27    	vmul.f32	s14, s14, s15
  3abdb6: 9b03         	ldr	r3, [sp, #0xc]
  3abdb8: edd3 7a43    	vldr	s15, [r3, #268]
  3abdbc: ee27 7a27    	vmul.f32	s14, s14, s15
  3abdc0: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3abdc4: eec7 7a27    	vdiv.f32	s15, s14, s15
  3abdc8: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3abdcc: ee38 7b47    	vsub.f64	d7, d8, d7
  3abdd0: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3abdd4: 9b03         	ldr	r3, [sp, #0xc]
  3abdd6: edd3 7a45    	vldr	s15, [r3, #276]
  3abdda: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3abdde: ab3a         	add	r3, sp, #0xe8
  3abde0: 4618         	mov	r0, r3
  3abde2: ed9f 0b31    	vldr	d0, [pc, #196]          @ 0x3abea8 <PointsLayer::init()+0x1860>
  3abde6: eeb0 1b47    	vmov.f64	d1, d7
  3abdea: f7fd fcef    	bl	0x3a97cc <PlayerLobbyOnlineHosted::onServerStatus(cocos2d::CCObject*)+0x1e0> @ imm = #-0x2622
  3abdee: ed9d 7b3c    	vldr	d7, [sp, #240]
  3abdf2: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3abdf6: ab24         	add	r3, sp, #0x90
  3abdf8: 4618         	mov	r0, r3
  3abdfa: ee18 1a10    	vmov	r1, s16
  3abdfe: ee17 2a90    	vmov	r2, s15
  3abe02: f1e6 ff75    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e6eea
  3abe06: a926         	add	r1, sp, #0x98
  3abe08: aa22         	add	r2, sp, #0x88
  3abe0a: ab24         	add	r3, sp, #0x90
  3abe0c: 4608         	mov	r0, r1
  3abe0e: 4611         	mov	r1, r2
  3abe10: 461a         	mov	r2, r3
  3abe12: f7fd fccb    	bl	0x3a97ac <PlayerLobbyOnlineHosted::onServerStatus(cocos2d::CCObject*)+0x1c0> @ imm = #-0x266a
  3abe16: ab26         	add	r3, sp, #0x98
  3abe18: 4630         	mov	r0, r6
  3abe1a: 4619         	mov	r1, r3
  3abe1c: 47a8         	blx	r5
  3abe1e: ab06         	add	r3, sp, #0x18
  3abe20: 4618         	mov	r0, r3
  3abe22: f009 f577    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x409aee
  3abe26: ab05         	add	r3, sp, #0x14
  3abe28: 4618         	mov	r0, r3
  3abe2a: f3de fae7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3de5ce
  3abe2e: 9b03         	ldr	r3, [sp, #0xc]
  3abe30: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3abe34: 681b         	ldr	r3, [r3]
  3abe36: 3340         	adds	r3, #0x40
  3abe38: 681b         	ldr	r3, [r3]
  3abe3a: 9a03         	ldr	r2, [sp, #0xc]
  3abe3c: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  3abe40: 4611         	mov	r1, r2
  3abe42: 9a03         	ldr	r2, [sp, #0xc]
  3abe44: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3abe48: 4608         	mov	r0, r1
  3abe4a: 4611         	mov	r1, r2
  3abe4c: 4798         	blx	r3
  3abe4e: 9b03         	ldr	r3, [sp, #0xc]
  3abe50: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3abe54: 9a03         	ldr	r2, [sp, #0xc]
  3abe56: edd2 7a44    	vldr	s15, [r2, #272]
  3abe5a: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3abe5e: ee17 2a90    	vmov	r2, s15
  3abe62: 4618         	mov	r0, r3
  3abe64: 4611         	mov	r1, r2
  3abe66: f1f9 ff8d    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1f9f1a
  3abe6a: 9b03         	ldr	r3, [sp, #0xc]
  3abe6c: 681b         	ldr	r3, [r3]
  3abe6e: 33c8         	adds	r3, #0xc8
  3abe70: 681b         	ldr	r3, [r3]
  3abe72: 9903         	ldr	r1, [sp, #0xc]
  3abe74: 9a03         	ldr	r2, [sp, #0xc]
  3abe76: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  3abe7a: 4608         	mov	r0, r1
  3abe7c: 4611         	mov	r1, r2
  3abe7e: 4798         	blx	r3
  3abe80: 4b13         	ldr	r3, [pc, #0x4c]         @ 0x3abed0 <PointsLayer::init()+0x1888>
  3abe82: 447b         	add	r3, pc
  3abe84: 4618         	mov	r0, r3
  3abe86: f009 f23b    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x409476
  3abe8a: 4603         	mov	r3, r0
  3abe8c: 2220         	movs	r2, #0x20
  3abe8e: 9200         	str	r2, [sp]
  3abe90: 4a10         	ldr	r2, [pc, #0x40]         @ 0x3abed4 <PointsLayer::init()+0x188c>
  3abe92: 447a         	add	r2, pc
  3abe94: 4610         	mov	r0, r2
  3abe96: 4619         	mov	r1, r3
  3abe98: 2220         	movs	r2, #0x20
  3abe9a: 2320         	movs	r3, #0x20
  3abe9c: f1f9 fa6c    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1f94d8
  3abea0: e01a         	b	0x3abed8 <PointsLayer::init()+0x1890> @ imm = #0x34
  3abea2: bf00         	nop
  3abea4: f3af 8000    	nop.w
  3abeb0: 7b5c         	ldrb	r4, [r3, #0xd]
  3abeb2: 0042         	lsls	r2, r0, #0x1
  3abeb4: 7b58         	ldrb	r0, [r3, #0xd]
  3abeb6: 0042         	lsls	r2, r0, #0x1
  3abeb8: 7a54         	ldrb	r4, [r2, #0x9]
  3abeba: 0042         	lsls	r2, r0, #0x1
  3abebc: 7a50         	ldrb	r0, [r2, #0x9]
  3abebe: 0042         	lsls	r2, r0, #0x1
  3abec0: 56d6         	ldrsb	r6, [r2, r3]
  3abec2: 0059         	lsls	r1, r3, #0x1
  3abec4: 7952         	ldrb	r2, [r2, #0x5]
  3abec6: 0042         	lsls	r2, r0, #0x1
  3abec8: 551a         	strb	r2, [r3, r4]
  3abeca: 0059         	lsls	r1, r3, #0x1
  3abecc: 779e         	strb	r6, [r3, #0x1e]
  3abece: 0042         	lsls	r2, r0, #0x1
  3abed0: 535e         	strh	r6, [r3, r5]
  3abed2: 0059         	lsls	r1, r3, #0x1
  3abed4: 75da         	strb	r2, [r3, #0x17]
  3abed6: 0042         	lsls	r2, r0, #0x1
  3abed8: 4602         	mov	r2, r0
  3abeda: 9b03         	ldr	r3, [sp, #0xc]
  3abedc: f8c3 2118    	str.w	r2, [r3, #0x118]
  3abee0: 9b03         	ldr	r3, [sp, #0xc]
  3abee2: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3abee6: 4618         	mov	r0, r3
  3abee8: f1eb fffe    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1ebffc
  3abeec: 9b03         	ldr	r3, [sp, #0xc]
  3abeee: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3abef2: 9a03         	ldr	r2, [sp, #0xc]
  3abef4: edd2 7a44    	vldr	s15, [r2, #272]
  3abef8: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3abefc: ee17 2a90    	vmov	r2, s15
  3abf00: 4618         	mov	r0, r3
  3abf02: 4611         	mov	r1, r2
  3abf04: f1f9 ff3e    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1f9e7c
  3abf08: 9b03         	ldr	r3, [sp, #0xc]
  3abf0a: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3abf0e: 681b         	ldr	r3, [r3]
  3abf10: 3340         	adds	r3, #0x40
  3abf12: 681b         	ldr	r3, [r3]
  3abf14: 9a03         	ldr	r2, [sp, #0xc]
  3abf16: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3abf1a: 4610         	mov	r0, r2
  3abf1c: f64c 41cd    	movw	r1, #0xcccd
  3abf20: f6c3 61cc    	movt	r1, #0x3ecc
  3abf24: 4798         	blx	r3
  3abf26: 9b03         	ldr	r3, [sp, #0xc]
  3abf28: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3abf2c: 681b         	ldr	r3, [r3]
  3abf2e: 334c         	adds	r3, #0x4c
  3abf30: 681d         	ldr	r5, [r3]
  3abf32: 9b03         	ldr	r3, [sp, #0xc]
  3abf34: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3abf38: 461e         	mov	r6, r3
  3abf3a: 4b8f         	ldr	r3, [pc, #0x23c]        @ 0x3ac178 <PointsLayer::init()+0x1b30>
  3abf3c: 58e3         	ldr	r3, [r4, r3]
  3abf3e: ed93 7a00    	vldr	s14, [r3]
  3abf42: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3abf46: ee87 7a27    	vdiv.f32	s14, s14, s15
  3abf4a: eddf 7a8a    	vldr	s15, [pc, #552]         @ 0x3ac174 <PointsLayer::init()+0x1b2c>
  3abf4e: ee77 7a67    	vsub.f32	s15, s14, s15
  3abf52: ab3a         	add	r3, sp, #0xe8
  3abf54: 4618         	mov	r0, r3
  3abf56: ee17 1a90    	vmov	r1, s15
  3abf5a: f04f 0200    	mov.w	r2, #0x0
  3abf5e: f2c4 1270    	movt	r2, #0x4170
  3abf62: f1e6 fec5    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e6d8a
  3abf66: ab3a         	add	r3, sp, #0xe8
  3abf68: 4630         	mov	r0, r6
  3abf6a: 4619         	mov	r1, r3
  3abf6c: 47a8         	blx	r5
  3abf6e: 9b03         	ldr	r3, [sp, #0xc]
  3abf70: 681b         	ldr	r3, [r3]
  3abf72: 33c8         	adds	r3, #0xc8
  3abf74: 681b         	ldr	r3, [r3]
  3abf76: 9903         	ldr	r1, [sp, #0xc]
  3abf78: 9a03         	ldr	r2, [sp, #0xc]
  3abf7a: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3abf7e: 4608         	mov	r0, r1
  3abf80: 4611         	mov	r1, r2
  3abf82: 4798         	blx	r3
  3abf84: f080 f890    	bl	0x42c0a8 <ApplicationInterface::removeAdBanner()> @ imm = #0x80120
  3abf88: f7cb fdda    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x3444c
  3abf8c: 4603         	mov	r3, r0
  3abf8e: 4618         	mov	r0, r3
  3abf90: f087 fe86    	bl	0x433ca0 <NetworkManagerBridge::startReachability()> @ imm = #0x87d0c
  3abf94: 9b03         	ldr	r3, [sp, #0xc]
  3abf96: 2200         	movs	r2, #0x0
  3abf98: f883 216e    	strb.w	r2, [r3, #0x16e]
  3abf9c: 9b03         	ldr	r3, [sp, #0xc]
  3abf9e: f04f 0200    	mov.w	r2, #0x0
  3abfa2: f8c3 2170    	str.w	r2, [r3, #0x170]
  3abfa6: 9b03         	ldr	r3, [sp, #0xc]
  3abfa8: 2200         	movs	r2, #0x0
  3abfaa: f883 216d    	strb.w	r2, [r3, #0x16d]
  3abfae: 9b03         	ldr	r3, [sp, #0xc]
  3abfb0: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3abfb4: 681b         	ldr	r3, [r3]
  3abfb6: 3390         	adds	r3, #0x90
  3abfb8: 681b         	ldr	r3, [r3]
  3abfba: 9a03         	ldr	r2, [sp, #0xc]
  3abfbc: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  3abfc0: 4610         	mov	r0, r2
  3abfc2: 2100         	movs	r1, #0x0
  3abfc4: 4798         	blx	r3
  3abfc6: 9b03         	ldr	r3, [sp, #0xc]
  3abfc8: f8d3 3158    	ldr.w	r3, [r3, #0x158]
  3abfcc: 681b         	ldr	r3, [r3]
  3abfce: 3390         	adds	r3, #0x90
  3abfd0: 681b         	ldr	r3, [r3]
  3abfd2: 9a03         	ldr	r2, [sp, #0xc]
  3abfd4: f8d2 2158    	ldr.w	r2, [r2, #0x158]
  3abfd8: 4610         	mov	r0, r2
  3abfda: 2100         	movs	r1, #0x0
  3abfdc: 4798         	blx	r3
  3abfde: 9b03         	ldr	r3, [sp, #0xc]
  3abfe0: f8d3 3164    	ldr.w	r3, [r3, #0x164]
  3abfe4: 681b         	ldr	r3, [r3]
  3abfe6: 3390         	adds	r3, #0x90
  3abfe8: 681b         	ldr	r3, [r3]
  3abfea: 9a03         	ldr	r2, [sp, #0xc]
  3abfec: f8d2 2164    	ldr.w	r2, [r2, #0x164]
  3abff0: 4610         	mov	r0, r2
  3abff2: 2100         	movs	r1, #0x0
  3abff4: 4798         	blx	r3
  3abff6: 9b03         	ldr	r3, [sp, #0xc]
  3abff8: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3abffc: 681b         	ldr	r3, [r3]
  3abffe: 3390         	adds	r3, #0x90
  3ac000: 681b         	ldr	r3, [r3]
  3ac002: 9a03         	ldr	r2, [sp, #0xc]
  3ac004: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3ac008: 4610         	mov	r0, r2
  3ac00a: 2100         	movs	r1, #0x0
  3ac00c: 4798         	blx	r3
  3ac00e: 9b03         	ldr	r3, [sp, #0xc]
  3ac010: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3ac014: 681b         	ldr	r3, [r3]
  3ac016: 3390         	adds	r3, #0x90
  3ac018: 681b         	ldr	r3, [r3]
  3ac01a: 9a03         	ldr	r2, [sp, #0xc]
  3ac01c: f8d2 2154    	ldr.w	r2, [r2, #0x154]
  3ac020: 4610         	mov	r0, r2
  3ac022: 2100         	movs	r1, #0x0
  3ac024: 4798         	blx	r3
  3ac026: 9b03         	ldr	r3, [sp, #0xc]
  3ac028: f8d3 3160    	ldr.w	r3, [r3, #0x160]
  3ac02c: 681b         	ldr	r3, [r3]
  3ac02e: 3390         	adds	r3, #0x90
  3ac030: 681b         	ldr	r3, [r3]
  3ac032: 9a03         	ldr	r2, [sp, #0xc]
  3ac034: f8d2 2160    	ldr.w	r2, [r2, #0x160]
  3ac038: 4610         	mov	r0, r2
  3ac03a: 2100         	movs	r1, #0x0
  3ac03c: 4798         	blx	r3
  3ac03e: 9b03         	ldr	r3, [sp, #0xc]
  3ac040: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3ac044: 681b         	ldr	r3, [r3]
  3ac046: 3390         	adds	r3, #0x90
  3ac048: 681b         	ldr	r3, [r3]
  3ac04a: 9a03         	ldr	r2, [sp, #0xc]
  3ac04c: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3ac050: 4610         	mov	r0, r2
  3ac052: 2100         	movs	r1, #0x0
  3ac054: 4798         	blx	r3
  3ac056: 9b03         	ldr	r3, [sp, #0xc]
  3ac058: f8d3 315c    	ldr.w	r3, [r3, #0x15c]
  3ac05c: 681b         	ldr	r3, [r3]
  3ac05e: 3390         	adds	r3, #0x90
  3ac060: 681b         	ldr	r3, [r3]
  3ac062: 9a03         	ldr	r2, [sp, #0xc]
  3ac064: f8d2 215c    	ldr.w	r2, [r2, #0x15c]
  3ac068: 4610         	mov	r0, r2
  3ac06a: 2100         	movs	r1, #0x0
  3ac06c: 4798         	blx	r3
  3ac06e: 9b03         	ldr	r3, [sp, #0xc]
  3ac070: f8d3 3168    	ldr.w	r3, [r3, #0x168]
  3ac074: 681b         	ldr	r3, [r3]
  3ac076: 3390         	adds	r3, #0x90
  3ac078: 681b         	ldr	r3, [r3]
  3ac07a: 9a03         	ldr	r2, [sp, #0xc]
  3ac07c: f8d2 2168    	ldr.w	r2, [r2, #0x168]
  3ac080: 4610         	mov	r0, r2
  3ac082: 2100         	movs	r1, #0x0
  3ac084: 4798         	blx	r3
  3ac086: 9803         	ldr	r0, [sp, #0xc]
  3ac088: f04f 0100    	mov.w	r1, #0x0
  3ac08c: f000 f95e    	bl	0x3ac34c <PointsLayer::updateItemVisibility(float)> @ imm = #0x2bc
  3ac090: 9b03         	ldr	r3, [sp, #0xc]
  3ac092: 4a3a         	ldr	r2, [pc, #0xe8]         @ 0x3ac17c <PointsLayer::init()+0x1b34>
  3ac094: 58a2         	ldr	r2, [r4, r2]
  3ac096: 9236         	str	r2, [sp, #0xd8]
  3ac098: 2200         	movs	r2, #0x0
  3ac09a: 9237         	str	r2, [sp, #0xdc]
  3ac09c: 4618         	mov	r0, r3
  3ac09e: ab36         	add	r3, sp, #0xd8
  3ac0a0: e893 0006    	ldm.w	r3, {r1, r2}
  3ac0a4: f04f 537e    	mov.w	r3, #0x3f800000
  3ac0a8: f1e5 f8bc    	bl	0x591224 <cocos2d::CCNode::schedule(void (cocos2d::CCObject::*)(float), float)> @ imm = #0x1e5178
  3ac0ac: 9b03         	ldr	r3, [sp, #0xc]
  3ac0ae: 4a34         	ldr	r2, [pc, #0xd0]         @ 0x3ac180 <PointsLayer::init()+0x1b38>
  3ac0b0: 58a2         	ldr	r2, [r4, r2]
  3ac0b2: 923a         	str	r2, [sp, #0xe8]
  3ac0b4: 2200         	movs	r2, #0x0
  3ac0b6: 923b         	str	r2, [sp, #0xec]
  3ac0b8: 4618         	mov	r0, r3
  3ac0ba: ab3a         	add	r3, sp, #0xe8
  3ac0bc: e893 0006    	ldm.w	r3, {r1, r2}
  3ac0c0: f64c 43cd    	movw	r3, #0xcccd
  3ac0c4: f6c3 53cc    	movt	r3, #0x3dcc
  3ac0c8: f1e5 f8ac    	bl	0x591224 <cocos2d::CCNode::schedule(void (cocos2d::CCObject::*)(float), float)> @ imm = #0x1e5158
  3ac0cc: 2301         	movs	r3, #0x1
  3ac0ce: e04c         	b	0x3ac16a <PointsLayer::init()+0x1b22> @ imm = #0x98
  3ac0d0: ab06         	add	r3, sp, #0x18
  3ac0d2: 4618         	mov	r0, r3
  3ac0d4: f009 f41e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40983c
  3ac0d8: e7ff         	b	0x3ac0da <PointsLayer::init()+0x1a92> @ imm = #-0x2
  3ac0da: ab05         	add	r3, sp, #0x14
  3ac0dc: 4618         	mov	r0, r3
  3ac0de: f3de f98d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3de31a
  3ac0e2: f3db ffe3    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3dbfc6
  3ac0e6: ab06         	add	r3, sp, #0x18
  3ac0e8: 4618         	mov	r0, r3
  3ac0ea: f009 f413    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x409826
  3ac0ee: e7ff         	b	0x3ac0f0 <PointsLayer::init()+0x1aa8> @ imm = #-0x2
  3ac0f0: ab05         	add	r3, sp, #0x14
  3ac0f2: 4618         	mov	r0, r3
  3ac0f4: f3de f982    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3de304
  3ac0f8: f3db ffd8    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3dbfb0
  3ac0fc: ab06         	add	r3, sp, #0x18
  3ac0fe: 4618         	mov	r0, r3
  3ac100: f009 f408    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x409810
  3ac104: e7ff         	b	0x3ac106 <PointsLayer::init()+0x1abe> @ imm = #-0x2
  3ac106: ab05         	add	r3, sp, #0x14
  3ac108: 4618         	mov	r0, r3
  3ac10a: f3de f977    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3de2ee
  3ac10e: f3db ffcd    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3dbf9a
  3ac112: ab06         	add	r3, sp, #0x18
  3ac114: 4618         	mov	r0, r3
  3ac116: f009 f3fd    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4097fa
  3ac11a: e7ff         	b	0x3ac11c <PointsLayer::init()+0x1ad4> @ imm = #-0x2
  3ac11c: ab05         	add	r3, sp, #0x14
  3ac11e: 4618         	mov	r0, r3
  3ac120: f3de f96c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3de2d8
  3ac124: f3db ffc2    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3dbf84
  3ac128: ab06         	add	r3, sp, #0x18
  3ac12a: 4618         	mov	r0, r3
  3ac12c: f009 f3f2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4097e4
  3ac130: e7ff         	b	0x3ac132 <PointsLayer::init()+0x1aea> @ imm = #-0x2
  3ac132: ab05         	add	r3, sp, #0x14
  3ac134: 4618         	mov	r0, r3
  3ac136: f3de f961    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3de2c2
  3ac13a: f3db ffb7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3dbf6e
  3ac13e: ab06         	add	r3, sp, #0x18
  3ac140: 4618         	mov	r0, r3
  3ac142: f009 f3e7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4097ce
  3ac146: e7ff         	b	0x3ac148 <PointsLayer::init()+0x1b00> @ imm = #-0x2
  3ac148: ab05         	add	r3, sp, #0x14
  3ac14a: 4618         	mov	r0, r3
  3ac14c: f3de f956    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3de2ac
  3ac150: f3db ffac    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3dbf58
  3ac154: ab06         	add	r3, sp, #0x18
  3ac156: 4618         	mov	r0, r3
  3ac158: f009 f3dc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4097b8
  3ac15c: e7ff         	b	0x3ac15e <PointsLayer::init()+0x1b16> @ imm = #-0x2
  3ac15e: ab05         	add	r3, sp, #0x14
  3ac160: 4618         	mov	r0, r3
  3ac162: f3de f94b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3de296
  3ac166: f3db ffa1    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3dbf42
  3ac16a: 4618         	mov	r0, r3
  3ac16c: b03f         	add	sp, #0xfc
  3ac16e: ecbd 8b02    	vpop	{d8}
  3ac172: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x3ac173); words below are literal-pool data ---
  3ac174: 0000         	movs	r0, r0
  3ac176: 4296         	cmp	r6, r2
  3ac178: d724         	bvc	0x3ac1c4 <PointsLayer::~PointsLayer()+0x3c> @ imm = #0x48
  3ac17a: ffff dde0    	<unknown>
  3ac17e: ffff dde4    	<unknown>
  3ac182: ffff f3af    	<unknown>

// ==== PointsLayer::~PointsLayer
//      file offset 0x3ac188 (= ELF address; Ghidra 0x3bc188), 340 bytes, Thumb-2
  3ac188: b500         	push	{lr}
  3ac18a: b083         	sub	sp, #0xc
  3ac18c: 9001         	str	r0, [sp, #0x4]
  3ac18e: 4b51         	ldr	r3, [pc, #0x144]        @ 0x3ac2d4 <PointsLayer::~PointsLayer()+0x14c>
  3ac190: 447b         	add	r3, pc
  3ac192: 9a01         	ldr	r2, [sp, #0x4]
  3ac194: 4950         	ldr	r1, [pc, #0x140]        @ 0x3ac2d8 <PointsLayer::~PointsLayer()+0x150>
  3ac196: 5859         	ldr	r1, [r3, r1]
  3ac198: 3108         	adds	r1, #0x8
  3ac19a: 6011         	str	r1, [r2]
  3ac19c: 9a01         	ldr	r2, [sp, #0x4]
  3ac19e: 494e         	ldr	r1, [pc, #0x138]        @ 0x3ac2d8 <PointsLayer::~PointsLayer()+0x150>
  3ac1a0: 5859         	ldr	r1, [r3, r1]
  3ac1a2: f501 7104    	add.w	r1, r1, #0x210
  3ac1a6: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  3ac1aa: 9a01         	ldr	r2, [sp, #0x4]
  3ac1ac: 494a         	ldr	r1, [pc, #0x128]        @ 0x3ac2d8 <PointsLayer::~PointsLayer()+0x150>
  3ac1ae: 5859         	ldr	r1, [r3, r1]
  3ac1b0: f501 7110    	add.w	r1, r1, #0x240
  3ac1b4: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  3ac1b8: 9a01         	ldr	r2, [sp, #0x4]
  3ac1ba: 4947         	ldr	r1, [pc, #0x11c]        @ 0x3ac2d8 <PointsLayer::~PointsLayer()+0x150>
  3ac1bc: 585b         	ldr	r3, [r3, r1]
  3ac1be: f503 7313    	add.w	r3, r3, #0x24c
  3ac1c2: f8c2 30ec    	str.w	r3, [r2, #0xec]
  3ac1c6: f7cb fcbb    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x3468a
  3ac1ca: 4603         	mov	r3, r0
  3ac1cc: 4618         	mov	r0, r3
  3ac1ce: f087 fd6b    	bl	0x433ca8 <NetworkManagerBridge::stopReachability()> @ imm = #0x87ad6
  3ac1d2: 9b01         	ldr	r3, [sp, #0x4]
  3ac1d4: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  3ac1d8: 4618         	mov	r0, r3
  3ac1da: f1eb fe6d    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1ebcda
  3ac1de: 9b01         	ldr	r3, [sp, #0x4]
  3ac1e0: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3ac1e4: 4618         	mov	r0, r3
  3ac1e6: f1eb fe67    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1ebcce
  3ac1ea: 9b01         	ldr	r3, [sp, #0x4]
  3ac1ec: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3ac1f0: 4618         	mov	r0, r3
  3ac1f2: f1eb fe61    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1ebcc2
  3ac1f6: 9b01         	ldr	r3, [sp, #0x4]
  3ac1f8: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  3ac1fc: 4618         	mov	r0, r3
  3ac1fe: f1eb fe5b    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1ebcb6
  3ac202: 9b01         	ldr	r3, [sp, #0x4]
  3ac204: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  3ac208: 4618         	mov	r0, r3
  3ac20a: f1eb fe55    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1ebcaa
  3ac20e: 9b01         	ldr	r3, [sp, #0x4]
  3ac210: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3ac214: 4618         	mov	r0, r3
  3ac216: f1eb fe4f    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1ebc9e
  3ac21a: 9b01         	ldr	r3, [sp, #0x4]
  3ac21c: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3ac220: 4618         	mov	r0, r3
  3ac222: f1eb fe49    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1ebc92
  3ac226: 9b01         	ldr	r3, [sp, #0x4]
  3ac228: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3ac22c: 4618         	mov	r0, r3
  3ac22e: f1eb fe43    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1ebc86
  3ac232: 9b01         	ldr	r3, [sp, #0x4]
  3ac234: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3ac238: 4618         	mov	r0, r3
  3ac23a: f1eb fe3d    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1ebc7a
  3ac23e: 9b01         	ldr	r3, [sp, #0x4]
  3ac240: f8d3 3158    	ldr.w	r3, [r3, #0x158]
  3ac244: 4618         	mov	r0, r3
  3ac246: f1eb fe37    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1ebc6e
  3ac24a: 9b01         	ldr	r3, [sp, #0x4]
  3ac24c: f8d3 315c    	ldr.w	r3, [r3, #0x15c]
  3ac250: 4618         	mov	r0, r3
  3ac252: f1eb fe31    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1ebc62
  3ac256: 9b01         	ldr	r3, [sp, #0x4]
  3ac258: f8d3 3160    	ldr.w	r3, [r3, #0x160]
  3ac25c: 4618         	mov	r0, r3
  3ac25e: f1eb fe2b    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1ebc56
  3ac262: 9b01         	ldr	r3, [sp, #0x4]
  3ac264: f8d3 3164    	ldr.w	r3, [r3, #0x164]
  3ac268: 4618         	mov	r0, r3
  3ac26a: f1eb fe25    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1ebc4a
  3ac26e: 9b01         	ldr	r3, [sp, #0x4]
  3ac270: f8d3 3168    	ldr.w	r3, [r3, #0x168]
  3ac274: 4618         	mov	r0, r3
  3ac276: f1eb fe1f    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1ebc3e
  3ac27a: 9b01         	ldr	r3, [sp, #0x4]
  3ac27c: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3ac280: 4618         	mov	r0, r3
  3ac282: f1eb fe19    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1ebc32
  3ac286: 9b01         	ldr	r3, [sp, #0x4]
  3ac288: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3ac28c: 4618         	mov	r0, r3
  3ac28e: f1eb fe13    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1ebc26
  3ac292: 9b01         	ldr	r3, [sp, #0x4]
  3ac294: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3ac298: 4618         	mov	r0, r3
  3ac29a: f1eb fe0d    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1ebc1a
  3ac29e: 9b01         	ldr	r3, [sp, #0x4]
  3ac2a0: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3ac2a4: 4618         	mov	r0, r3
  3ac2a6: f1eb fe07    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1ebc0e
  3ac2aa: 9b01         	ldr	r3, [sp, #0x4]
  3ac2ac: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  3ac2b0: 4618         	mov	r0, r3
  3ac2b2: f1eb fe01    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1ebc02
  3ac2b6: 9b01         	ldr	r3, [sp, #0x4]
  3ac2b8: 4618         	mov	r0, r3
  3ac2ba: f200 ff47    	bl	0x5ad14c <cocos2d::CCLayer::~CCLayer()> @ imm = #0x200e8e
  3ac2be: 2300         	movs	r3, #0x0
  3ac2c0: 2b00         	cmp	r3, #0x0
  3ac2c2: d002         	beq	0x3ac2ca <PointsLayer::~PointsLayer()+0x142> @ imm = #0x4
  3ac2c4: 9801         	ldr	r0, [sp, #0x4]
  3ac2c6: f3db feed    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3dbdda
  3ac2ca: 9b01         	ldr	r3, [sp, #0x4]
  3ac2cc: 4618         	mov	r0, r3
  3ac2ce: b003         	add	sp, #0xc
  3ac2d0: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3ac2d3); words below are literal-pool data ---
  3ac2d4: 6878         	ldr	r0, [r7, #0x4]
  3ac2d6: 0058         	lsls	r0, r3, #0x1
  3ac2d8: ddc0         	ble	0x3ac25c <PointsLayer::~PointsLayer()+0xd4> @ imm = #-0x80
  3ac2da: ffff f1a0    	<unknown>

// ==== PointsLayer::~PointsLayer
//      file offset 0x3ac2dc (= ELF address; Ghidra 0x3bc2dc), 8 bytes, Thumb-2
  3ac2dc: f1a0 00e4    	sub.w	r0, r0, #0xe4
  3ac2e0: f7ff bf52    	b.w	0x3ac188 <PointsLayer::~PointsLayer()> @ imm = #-0x15c

// ==== PointsLayer::~PointsLayer
//      file offset 0x3ac2e4 (= ELF address; Ghidra 0x3bc2e4), 28 bytes, Thumb-2
  3ac2e4: b500         	push	{lr}
  3ac2e6: b083         	sub	sp, #0xc
  3ac2e8: 9001         	str	r0, [sp, #0x4]
  3ac2ea: 9801         	ldr	r0, [sp, #0x4]
  3ac2ec: f7ff ff4c    	bl	0x3ac188 <PointsLayer::~PointsLayer()> @ imm = #-0x168
  3ac2f0: 9801         	ldr	r0, [sp, #0x4]
  3ac2f2: f3db fed7    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3dbdae
  3ac2f6: 9b01         	ldr	r3, [sp, #0x4]
  3ac2f8: 4618         	mov	r0, r3
  3ac2fa: b003         	add	sp, #0xc
  3ac2fc: f85d fb04    	ldr	pc, [sp], #4

// ==== PointsLayer::~PointsLayer
//      file offset 0x3ac300 (= ELF address; Ghidra 0x3bc300), 8 bytes, Thumb-2
  3ac300: f1a0 00e4    	sub.w	r0, r0, #0xe4
  3ac304: f7ff bfee    	b.w	0x3ac2e4 <PointsLayer::~PointsLayer()> @ imm = #-0x24

// ==== PointsLayer::onEnter
//      file offset 0x3ac308 (= ELF address; Ghidra 0x3bc308), 40 bytes, Thumb-2
  3ac308: b500         	push	{lr}
  3ac30a: b083         	sub	sp, #0xc
  3ac30c: 9001         	str	r0, [sp, #0x4]
  3ac30e: 9b01         	ldr	r3, [sp, #0x4]
  3ac310: 4618         	mov	r0, r3
  3ac312: f201 faa3    	bl	0x5ad85c <cocos2d::CCLayer::onEnter()> @ imm = #0x201546
  3ac316: f076 f88b    	bl	0x422430 <ApplicationInterface::hasClaimedIdentity()> @ imm = #0x76116
  3ac31a: 4603         	mov	r3, r0
  3ac31c: f083 0301    	eor	r3, r3, #0x1
  3ac320: b2db         	uxtb	r3, r3
  3ac322: 2b00         	cmp	r3, #0x0
  3ac324: d001         	beq	0x3ac32a <PointsLayer::onEnter()+0x22> @ imm = #0x2
  3ac326: f080 fa7f    	bl	0x42c828 <ApplicationInterface::pickClaimedIdentity()> @ imm = #0x804fe
  3ac32a: b003         	add	sp, #0xc
  3ac32c: f85d fb04    	ldr	pc, [sp], #4

// ==== PointsLayer::onExit
//      file offset 0x3ac330 (= ELF address; Ghidra 0x3bc330), 28 bytes, Thumb-2
  3ac330: b500         	push	{lr}
  3ac332: b083         	sub	sp, #0xc
  3ac334: 9001         	str	r0, [sp, #0x4]
  3ac336: 9b01         	ldr	r3, [sp, #0x4]
  3ac338: 4618         	mov	r0, r3
  3ac33a: f1e4 ffdd    	bl	0x5912f8 <cocos2d::CCNode::unscheduleAllSelectors()> @ imm = #0x1e4fba
  3ac33e: 9b01         	ldr	r3, [sp, #0x4]
  3ac340: 4618         	mov	r0, r3
  3ac342: f201 fac9    	bl	0x5ad8d8 <cocos2d::CCLayer::onExit()> @ imm = #0x201592
  3ac346: b003         	add	sp, #0xc
  3ac348: f85d fb04    	ldr	pc, [sp], #4

// ==== PointsLayer::updateItemVisibility
//      file offset 0x3ac34c (= ELF address; Ghidra 0x3bc34c), 2400 bytes, Thumb-2
  3ac34c: b570         	push	{r4, r5, r6, lr}
  3ac34e: b08c         	sub	sp, #0x30
  3ac350: 9001         	str	r0, [sp, #0x4]
  3ac352: 9100         	str	r1, [sp]
  3ac354: 9b01         	ldr	r3, [sp, #0x4]
  3ac356: f893 316e    	ldrb.w	r3, [r3, #0x16e]
  3ac35a: f083 0301    	eor	r3, r3, #0x1
  3ac35e: b2db         	uxtb	r3, r3
  3ac360: 2b00         	cmp	r3, #0x0
  3ac362: d067         	beq	0x3ac434 <PointsLayer::updateItemVisibility(float)+0xe8> @ imm = #0xce
  3ac364: 9b01         	ldr	r3, [sp, #0x4]
  3ac366: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  3ac36a: 681b         	ldr	r3, [r3]
  3ac36c: f503 73d2    	add.w	r3, r3, #0x1a4
  3ac370: 681b         	ldr	r3, [r3]
  3ac372: 9a01         	ldr	r2, [sp, #0x4]
  3ac374: f8d2 2140    	ldr.w	r2, [r2, #0x140]
  3ac378: 4610         	mov	r0, r2
  3ac37a: 21ff         	movs	r1, #0xff
  3ac37c: 4798         	blx	r3
  3ac37e: 9b01         	ldr	r3, [sp, #0x4]
  3ac380: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3ac384: 681b         	ldr	r3, [r3]
  3ac386: f503 73d2    	add.w	r3, r3, #0x1a4
  3ac38a: 681b         	ldr	r3, [r3]
  3ac38c: 9a01         	ldr	r2, [sp, #0x4]
  3ac38e: f8d2 213c    	ldr.w	r2, [r2, #0x13c]
  3ac392: 4610         	mov	r0, r2
  3ac394: 21ff         	movs	r1, #0xff
  3ac396: 4798         	blx	r3
  3ac398: 9b01         	ldr	r3, [sp, #0x4]
  3ac39a: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3ac39e: 681b         	ldr	r3, [r3]
  3ac3a0: f503 73d2    	add.w	r3, r3, #0x1a4
  3ac3a4: 681b         	ldr	r3, [r3]
  3ac3a6: 9a01         	ldr	r2, [sp, #0x4]
  3ac3a8: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  3ac3ac: 4610         	mov	r0, r2
  3ac3ae: 21ff         	movs	r1, #0xff
  3ac3b0: 4798         	blx	r3
  3ac3b2: 9b01         	ldr	r3, [sp, #0x4]
  3ac3b4: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3ac3b8: 681b         	ldr	r3, [r3]
  3ac3ba: f503 73d2    	add.w	r3, r3, #0x1a4
  3ac3be: 681b         	ldr	r3, [r3]
  3ac3c0: 9a01         	ldr	r2, [sp, #0x4]
  3ac3c2: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3ac3c6: 4610         	mov	r0, r2
  3ac3c8: 21ff         	movs	r1, #0xff
  3ac3ca: 4798         	blx	r3
  3ac3cc: 9b01         	ldr	r3, [sp, #0x4]
  3ac3ce: f8d3 3158    	ldr.w	r3, [r3, #0x158]
  3ac3d2: 681b         	ldr	r3, [r3]
  3ac3d4: f503 73d2    	add.w	r3, r3, #0x1a4
  3ac3d8: 681b         	ldr	r3, [r3]
  3ac3da: 9a01         	ldr	r2, [sp, #0x4]
  3ac3dc: f8d2 2158    	ldr.w	r2, [r2, #0x158]
  3ac3e0: 4610         	mov	r0, r2
  3ac3e2: 21ff         	movs	r1, #0xff
  3ac3e4: 4798         	blx	r3
  3ac3e6: 9b01         	ldr	r3, [sp, #0x4]
  3ac3e8: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3ac3ec: 681b         	ldr	r3, [r3]
  3ac3ee: f503 73d2    	add.w	r3, r3, #0x1a4
  3ac3f2: 681b         	ldr	r3, [r3]
  3ac3f4: 9a01         	ldr	r2, [sp, #0x4]
  3ac3f6: f8d2 2154    	ldr.w	r2, [r2, #0x154]
  3ac3fa: 4610         	mov	r0, r2
  3ac3fc: 21ff         	movs	r1, #0xff
  3ac3fe: 4798         	blx	r3
  3ac400: 9b01         	ldr	r3, [sp, #0x4]
  3ac402: f8d3 3164    	ldr.w	r3, [r3, #0x164]
  3ac406: 681b         	ldr	r3, [r3]
  3ac408: f503 73d2    	add.w	r3, r3, #0x1a4
  3ac40c: 681b         	ldr	r3, [r3]
  3ac40e: 9a01         	ldr	r2, [sp, #0x4]
  3ac410: f8d2 2164    	ldr.w	r2, [r2, #0x164]
  3ac414: 4610         	mov	r0, r2
  3ac416: 21ff         	movs	r1, #0xff
  3ac418: 4798         	blx	r3
  3ac41a: 9b01         	ldr	r3, [sp, #0x4]
  3ac41c: f8d3 3160    	ldr.w	r3, [r3, #0x160]
  3ac420: 681b         	ldr	r3, [r3]
  3ac422: f503 73d2    	add.w	r3, r3, #0x1a4
  3ac426: 681b         	ldr	r3, [r3]
  3ac428: 9a01         	ldr	r2, [sp, #0x4]
  3ac42a: f8d2 2160    	ldr.w	r2, [r2, #0x160]
  3ac42e: 4610         	mov	r0, r2
  3ac430: 21ff         	movs	r1, #0xff
  3ac432: 4798         	blx	r3
  3ac434: 9b01         	ldr	r3, [sp, #0x4]
  3ac436: f893 316d    	ldrb.w	r3, [r3, #0x16d]
  3ac43a: f083 0301    	eor	r3, r3, #0x1
  3ac43e: b2db         	uxtb	r3, r3
  3ac440: 2b00         	cmp	r3, #0x0
  3ac442: f000 812e    	beq.w	0x3ac6a2 <PointsLayer::updateItemVisibility(float)+0x356> @ imm = #0x25c
  3ac446: ab08         	add	r3, sp, #0x20
  3ac448: 4618         	mov	r0, r3
  3ac44a: f3dd ffd3    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ddfa6
  3ac44e: aa0a         	add	r2, sp, #0x28
  3ac450: ab08         	add	r3, sp, #0x20
  3ac452: 4610         	mov	r0, r2
  3ac454: f8df 2810    	ldr.w	r2, [pc, #0x810]        @ 0x3acc68 <PointsLayer::updateItemVisibility(float)+0x91c>
  3ac458: 447a         	add	r2, pc
  3ac45a: 4611         	mov	r1, r2
  3ac45c: 461a         	mov	r2, r3
  3ac45e: f00a f2ff    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x40a5fe
  3ac462: aa03         	add	r2, sp, #0xc
  3ac464: ab0a         	add	r3, sp, #0x28
  3ac466: 4610         	mov	r0, r2
  3ac468: 4619         	mov	r1, r3
  3ac46a: f085 fb6b    	bl	0x431b44 <InAppPurchaseBridge::getProductPrice(std::string)> @ imm = #0x856d6
  3ac46e: ab0a         	add	r3, sp, #0x28
  3ac470: 4618         	mov	r0, r3
  3ac472: f009 f24f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40949e
  3ac476: ab08         	add	r3, sp, #0x20
  3ac478: 4618         	mov	r0, r3
  3ac47a: f3dd ffbf    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ddf7e
  3ac47e: ab03         	add	r3, sp, #0xc
  3ac480: 4618         	mov	r0, r3
  3ac482: f008 f5eb    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x408bd6
  3ac486: 4603         	mov	r3, r0
  3ac488: 2b00         	cmp	r3, #0x0
  3ac48a: bf0c         	ite	eq
  3ac48c: 2300         	moveq	r3, #0x0
  3ac48e: 2301         	movne	r3, #0x1
  3ac490: b2db         	uxtb	r3, r3
  3ac492: 2b00         	cmp	r3, #0x0
  3ac494: d01d         	beq	0x3ac4d2 <PointsLayer::updateItemVisibility(float)+0x186> @ imm = #0x3a
  3ac496: 9b01         	ldr	r3, [sp, #0x4]
  3ac498: 2201         	movs	r2, #0x1
  3ac49a: f883 216d    	strb.w	r2, [r3, #0x16d]
  3ac49e: ab03         	add	r3, sp, #0xc
  3ac4a0: 4618         	mov	r0, r3
  3ac4a2: f8df 37c8    	ldr.w	r3, [pc, #0x7c8]        @ 0x3acc6c <PointsLayer::updateItemVisibility(float)+0x920>
  3ac4a6: 447b         	add	r3, pc
  3ac4a8: 4619         	mov	r1, r3
  3ac4aa: f009 f721    	bl	0x7b62f0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19840> @ imm = #0x409e42
  3ac4ae: 9b01         	ldr	r3, [sp, #0x4]
  3ac4b0: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3ac4b4: 681b         	ldr	r3, [r3]
  3ac4b6: f503 730f    	add.w	r3, r3, #0x23c
  3ac4ba: 681c         	ldr	r4, [r3]
  3ac4bc: 9b01         	ldr	r3, [sp, #0x4]
  3ac4be: f8d3 513c    	ldr.w	r5, [r3, #0x13c]
  3ac4c2: ab03         	add	r3, sp, #0xc
  3ac4c4: 4618         	mov	r0, r3
  3ac4c6: f008 f71b    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x408e36
  3ac4ca: 4603         	mov	r3, r0
  3ac4cc: 4628         	mov	r0, r5
  3ac4ce: 4619         	mov	r1, r3
  3ac4d0: 47a0         	blx	r4
  3ac4d2: ab0a         	add	r3, sp, #0x28
  3ac4d4: 4618         	mov	r0, r3
  3ac4d6: f3dd ff8d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ddf1a
  3ac4da: aa04         	add	r2, sp, #0x10
  3ac4dc: ab0a         	add	r3, sp, #0x28
  3ac4de: 4610         	mov	r0, r2
  3ac4e0: f8df 278c    	ldr.w	r2, [pc, #0x78c]        @ 0x3acc70 <PointsLayer::updateItemVisibility(float)+0x924>
  3ac4e4: 447a         	add	r2, pc
  3ac4e6: 4611         	mov	r1, r2
  3ac4e8: 461a         	mov	r2, r3
  3ac4ea: f00a f2b9    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x40a572
  3ac4ee: aa05         	add	r2, sp, #0x14
  3ac4f0: ab04         	add	r3, sp, #0x10
  3ac4f2: 4610         	mov	r0, r2
  3ac4f4: 4619         	mov	r1, r3
  3ac4f6: f085 fb25    	bl	0x431b44 <InAppPurchaseBridge::getProductPrice(std::string)> @ imm = #0x8564a
  3ac4fa: aa03         	add	r2, sp, #0xc
  3ac4fc: ab05         	add	r3, sp, #0x14
  3ac4fe: 4610         	mov	r0, r2
  3ac500: 4619         	mov	r1, r3
  3ac502: f008 f6f1    	bl	0x7b52e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18838> @ imm = #0x408de2
  3ac506: ab05         	add	r3, sp, #0x14
  3ac508: 4618         	mov	r0, r3
  3ac50a: f009 f203    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x409406
  3ac50e: ab04         	add	r3, sp, #0x10
  3ac510: 4618         	mov	r0, r3
  3ac512: f009 f1ff    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4093fe
  3ac516: ab0a         	add	r3, sp, #0x28
  3ac518: 4618         	mov	r0, r3
  3ac51a: f3dd ff6f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ddede
  3ac51e: ab03         	add	r3, sp, #0xc
  3ac520: 4618         	mov	r0, r3
  3ac522: f008 f59b    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x408b36
  3ac526: 4603         	mov	r3, r0
  3ac528: 2b00         	cmp	r3, #0x0
  3ac52a: bf0c         	ite	eq
  3ac52c: 2300         	moveq	r3, #0x0
  3ac52e: 2301         	movne	r3, #0x1
  3ac530: b2db         	uxtb	r3, r3
  3ac532: 2b00         	cmp	r3, #0x0
  3ac534: d019         	beq	0x3ac56a <PointsLayer::updateItemVisibility(float)+0x21e> @ imm = #0x32
  3ac536: ab03         	add	r3, sp, #0xc
  3ac538: 4618         	mov	r0, r3
  3ac53a: f8df 3738    	ldr.w	r3, [pc, #0x738]        @ 0x3acc74 <PointsLayer::updateItemVisibility(float)+0x928>
  3ac53e: 447b         	add	r3, pc
  3ac540: 4619         	mov	r1, r3
  3ac542: f009 f6d5    	bl	0x7b62f0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19840> @ imm = #0x409daa
  3ac546: 9b01         	ldr	r3, [sp, #0x4]
  3ac548: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3ac54c: 681b         	ldr	r3, [r3]
  3ac54e: f503 730f    	add.w	r3, r3, #0x23c
  3ac552: 681c         	ldr	r4, [r3]
  3ac554: 9b01         	ldr	r3, [sp, #0x4]
  3ac556: f8d3 5148    	ldr.w	r5, [r3, #0x148]
  3ac55a: ab03         	add	r3, sp, #0xc
  3ac55c: 4618         	mov	r0, r3
  3ac55e: f008 f6cf    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x408d9e
  3ac562: 4603         	mov	r3, r0
  3ac564: 4628         	mov	r0, r5
  3ac566: 4619         	mov	r1, r3
  3ac568: 47a0         	blx	r4
  3ac56a: ab0a         	add	r3, sp, #0x28
  3ac56c: 4618         	mov	r0, r3
  3ac56e: f3dd ff41    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3dde82
  3ac572: aa06         	add	r2, sp, #0x18
  3ac574: ab0a         	add	r3, sp, #0x28
  3ac576: 4610         	mov	r0, r2
  3ac578: f8df 26fc    	ldr.w	r2, [pc, #0x6fc]        @ 0x3acc78 <PointsLayer::updateItemVisibility(float)+0x92c>
  3ac57c: 447a         	add	r2, pc
  3ac57e: 4611         	mov	r1, r2
  3ac580: 461a         	mov	r2, r3
  3ac582: f00a f26d    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x40a4da
  3ac586: aa07         	add	r2, sp, #0x1c
  3ac588: ab06         	add	r3, sp, #0x18
  3ac58a: 4610         	mov	r0, r2
  3ac58c: 4619         	mov	r1, r3
  3ac58e: f085 fad9    	bl	0x431b44 <InAppPurchaseBridge::getProductPrice(std::string)> @ imm = #0x855b2
  3ac592: aa03         	add	r2, sp, #0xc
  3ac594: ab07         	add	r3, sp, #0x1c
  3ac596: 4610         	mov	r0, r2
  3ac598: 4619         	mov	r1, r3
  3ac59a: f008 f6a5    	bl	0x7b52e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18838> @ imm = #0x408d4a
  3ac59e: ab07         	add	r3, sp, #0x1c
  3ac5a0: 4618         	mov	r0, r3
  3ac5a2: f009 f1b7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40936e
  3ac5a6: ab06         	add	r3, sp, #0x18
  3ac5a8: 4618         	mov	r0, r3
  3ac5aa: f009 f1b3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x409366
  3ac5ae: ab0a         	add	r3, sp, #0x28
  3ac5b0: 4618         	mov	r0, r3
  3ac5b2: f3dd ff23    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3dde46
  3ac5b6: ab03         	add	r3, sp, #0xc
  3ac5b8: 4618         	mov	r0, r3
  3ac5ba: f008 f54f    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x408a9e
  3ac5be: 4603         	mov	r3, r0
  3ac5c0: 2b00         	cmp	r3, #0x0
  3ac5c2: bf0c         	ite	eq
  3ac5c4: 2300         	moveq	r3, #0x0
  3ac5c6: 2301         	movne	r3, #0x1
  3ac5c8: b2db         	uxtb	r3, r3
  3ac5ca: 2b00         	cmp	r3, #0x0
  3ac5cc: d019         	beq	0x3ac602 <PointsLayer::updateItemVisibility(float)+0x2b6> @ imm = #0x32
  3ac5ce: ab03         	add	r3, sp, #0xc
  3ac5d0: 4618         	mov	r0, r3
  3ac5d2: f8df 36a8    	ldr.w	r3, [pc, #0x6a8]        @ 0x3acc7c <PointsLayer::updateItemVisibility(float)+0x930>
  3ac5d6: 447b         	add	r3, pc
  3ac5d8: 4619         	mov	r1, r3
  3ac5da: f009 f689    	bl	0x7b62f0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19840> @ imm = #0x409d12
  3ac5de: 9b01         	ldr	r3, [sp, #0x4]
  3ac5e0: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3ac5e4: 681b         	ldr	r3, [r3]
  3ac5e6: f503 730f    	add.w	r3, r3, #0x23c
  3ac5ea: 681c         	ldr	r4, [r3]
  3ac5ec: 9b01         	ldr	r3, [sp, #0x4]
  3ac5ee: f8d3 5154    	ldr.w	r5, [r3, #0x154]
  3ac5f2: ab03         	add	r3, sp, #0xc
  3ac5f4: 4618         	mov	r0, r3
  3ac5f6: f008 f683    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x408d06
  3ac5fa: 4603         	mov	r3, r0
  3ac5fc: 4628         	mov	r0, r5
  3ac5fe: 4619         	mov	r1, r3
  3ac600: 47a0         	blx	r4
  3ac602: ab07         	add	r3, sp, #0x1c
  3ac604: 4618         	mov	r0, r3
  3ac606: f3dd fef5    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3dddea
  3ac60a: aa08         	add	r2, sp, #0x20
  3ac60c: ab07         	add	r3, sp, #0x1c
  3ac60e: 4610         	mov	r0, r2
  3ac610: f8df 266c    	ldr.w	r2, [pc, #0x66c]        @ 0x3acc80 <PointsLayer::updateItemVisibility(float)+0x934>
  3ac614: 447a         	add	r2, pc
  3ac616: 4611         	mov	r1, r2
  3ac618: 461a         	mov	r2, r3
  3ac61a: f00a f221    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x40a442
  3ac61e: aa0a         	add	r2, sp, #0x28
  3ac620: ab08         	add	r3, sp, #0x20
  3ac622: 4610         	mov	r0, r2
  3ac624: 4619         	mov	r1, r3
  3ac626: f085 fa8d    	bl	0x431b44 <InAppPurchaseBridge::getProductPrice(std::string)> @ imm = #0x8551a
  3ac62a: aa03         	add	r2, sp, #0xc
  3ac62c: ab0a         	add	r3, sp, #0x28
  3ac62e: 4610         	mov	r0, r2
  3ac630: 4619         	mov	r1, r3
  3ac632: f008 f659    	bl	0x7b52e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18838> @ imm = #0x408cb2
  3ac636: ab0a         	add	r3, sp, #0x28
  3ac638: 4618         	mov	r0, r3
  3ac63a: f009 f16b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4092d6
  3ac63e: ab08         	add	r3, sp, #0x20
  3ac640: 4618         	mov	r0, r3
  3ac642: f009 f167    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4092ce
  3ac646: ab07         	add	r3, sp, #0x1c
  3ac648: 4618         	mov	r0, r3
  3ac64a: f3dd fed7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3dddae
  3ac64e: ab03         	add	r3, sp, #0xc
  3ac650: 4618         	mov	r0, r3
  3ac652: f008 f503    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x408a06
  3ac656: 4603         	mov	r3, r0
  3ac658: 2b00         	cmp	r3, #0x0
  3ac65a: bf0c         	ite	eq
  3ac65c: 2300         	moveq	r3, #0x0
  3ac65e: 2301         	movne	r3, #0x1
  3ac660: b2db         	uxtb	r3, r3
  3ac662: 2b00         	cmp	r3, #0x0
  3ac664: d019         	beq	0x3ac69a <PointsLayer::updateItemVisibility(float)+0x34e> @ imm = #0x32
  3ac666: ab03         	add	r3, sp, #0xc
  3ac668: 4618         	mov	r0, r3
  3ac66a: f8df 3618    	ldr.w	r3, [pc, #0x618]        @ 0x3acc84 <PointsLayer::updateItemVisibility(float)+0x938>
  3ac66e: 447b         	add	r3, pc
  3ac670: 4619         	mov	r1, r3
  3ac672: f009 f63d    	bl	0x7b62f0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19840> @ imm = #0x409c7a
  3ac676: 9b01         	ldr	r3, [sp, #0x4]
  3ac678: f8d3 3160    	ldr.w	r3, [r3, #0x160]
  3ac67c: 681b         	ldr	r3, [r3]
  3ac67e: f503 730f    	add.w	r3, r3, #0x23c
  3ac682: 681c         	ldr	r4, [r3]
  3ac684: 9b01         	ldr	r3, [sp, #0x4]
  3ac686: f8d3 5160    	ldr.w	r5, [r3, #0x160]
  3ac68a: ab03         	add	r3, sp, #0xc
  3ac68c: 4618         	mov	r0, r3
  3ac68e: f008 f637    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x408c6e
  3ac692: 4603         	mov	r3, r0
  3ac694: 4628         	mov	r0, r5
  3ac696: 4619         	mov	r1, r3
  3ac698: 47a0         	blx	r4
  3ac69a: ab03         	add	r3, sp, #0xc
  3ac69c: 4618         	mov	r0, r3
  3ac69e: f009 f139    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x409272
  3ac6a2: ab08         	add	r3, sp, #0x20
  3ac6a4: 4618         	mov	r0, r3
  3ac6a6: f3dd fea5    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ddd4a
  3ac6aa: aa0a         	add	r2, sp, #0x28
  3ac6ac: ab08         	add	r3, sp, #0x20
  3ac6ae: 4610         	mov	r0, r2
  3ac6b0: f8df 25d4    	ldr.w	r2, [pc, #0x5d4]        @ 0x3acc88 <PointsLayer::updateItemVisibility(float)+0x93c>
  3ac6b4: 447a         	add	r2, pc
  3ac6b6: 4611         	mov	r1, r2
  3ac6b8: 461a         	mov	r2, r3
  3ac6ba: f00a f1d1    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x40a3a2
  3ac6be: ab0a         	add	r3, sp, #0x28
  3ac6c0: 4618         	mov	r0, r3
  3ac6c2: f085 f84d    	bl	0x431760 <InAppPurchaseBridge::isProductPurchased(std::string)> @ imm = #0x8509a
  3ac6c6: 4603         	mov	r3, r0
  3ac6c8: 461c         	mov	r4, r3
  3ac6ca: ab0a         	add	r3, sp, #0x28
  3ac6cc: 4618         	mov	r0, r3
  3ac6ce: f009 f121    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x409242
  3ac6d2: ab08         	add	r3, sp, #0x20
  3ac6d4: 4618         	mov	r0, r3
  3ac6d6: f3dd fe91    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ddd22
  3ac6da: 2c00         	cmp	r4, #0x0
  3ac6dc: d017         	beq	0x3ac70e <PointsLayer::updateItemVisibility(float)+0x3c2> @ imm = #0x2e
  3ac6de: 9b01         	ldr	r3, [sp, #0x4]
  3ac6e0: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  3ac6e4: 681b         	ldr	r3, [r3]
  3ac6e6: 3390         	adds	r3, #0x90
  3ac6e8: 681b         	ldr	r3, [r3]
  3ac6ea: 9a01         	ldr	r2, [sp, #0x4]
  3ac6ec: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  3ac6f0: 4610         	mov	r0, r2
  3ac6f2: 2100         	movs	r1, #0x0
  3ac6f4: 4798         	blx	r3
  3ac6f6: 9b01         	ldr	r3, [sp, #0x4]
  3ac6f8: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3ac6fc: 681b         	ldr	r3, [r3]
  3ac6fe: 3390         	adds	r3, #0x90
  3ac700: 681b         	ldr	r3, [r3]
  3ac702: 9a01         	ldr	r2, [sp, #0x4]
  3ac704: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  3ac708: 4610         	mov	r0, r2
  3ac70a: 2100         	movs	r1, #0x0
  3ac70c: 4798         	blx	r3
  3ac70e: ab08         	add	r3, sp, #0x20
  3ac710: 4618         	mov	r0, r3
  3ac712: f3dd fe6f    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ddcde
  3ac716: aa0a         	add	r2, sp, #0x28
  3ac718: ab08         	add	r3, sp, #0x20
  3ac71a: 4610         	mov	r0, r2
  3ac71c: f8df 256c    	ldr.w	r2, [pc, #0x56c]        @ 0x3acc8c <PointsLayer::updateItemVisibility(float)+0x940>
  3ac720: 447a         	add	r2, pc
  3ac722: 4611         	mov	r1, r2
  3ac724: 461a         	mov	r2, r3
  3ac726: f00a f19b    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x40a336
  3ac72a: ab0a         	add	r3, sp, #0x28
  3ac72c: 4618         	mov	r0, r3
  3ac72e: f085 f817    	bl	0x431760 <InAppPurchaseBridge::isProductPurchased(std::string)> @ imm = #0x8502e
  3ac732: 4603         	mov	r3, r0
  3ac734: 461c         	mov	r4, r3
  3ac736: ab0a         	add	r3, sp, #0x28
  3ac738: 4618         	mov	r0, r3
  3ac73a: f009 f0eb    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4091d6
  3ac73e: ab08         	add	r3, sp, #0x20
  3ac740: 4618         	mov	r0, r3
  3ac742: f3dd fe5b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ddcb6
  3ac746: 2c00         	cmp	r4, #0x0
  3ac748: d078         	beq	0x3ac83c <PointsLayer::updateItemVisibility(float)+0x4f0> @ imm = #0xf0
  3ac74a: 9b01         	ldr	r3, [sp, #0x4]
  3ac74c: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3ac750: 681b         	ldr	r3, [r3]
  3ac752: 3390         	adds	r3, #0x90
  3ac754: 681b         	ldr	r3, [r3]
  3ac756: 9a01         	ldr	r2, [sp, #0x4]
  3ac758: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  3ac75c: 4610         	mov	r0, r2
  3ac75e: 2101         	movs	r1, #0x1
  3ac760: 4798         	blx	r3
  3ac762: 9b01         	ldr	r3, [sp, #0x4]
  3ac764: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3ac768: 681b         	ldr	r3, [r3]
  3ac76a: 3390         	adds	r3, #0x90
  3ac76c: 681b         	ldr	r3, [r3]
  3ac76e: 9a01         	ldr	r2, [sp, #0x4]
  3ac770: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3ac774: 4610         	mov	r0, r2
  3ac776: 2101         	movs	r1, #0x1
  3ac778: 4798         	blx	r3
  3ac77a: 9b01         	ldr	r3, [sp, #0x4]
  3ac77c: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3ac780: 681b         	ldr	r3, [r3]
  3ac782: 3390         	adds	r3, #0x90
  3ac784: 681b         	ldr	r3, [r3]
  3ac786: 9a01         	ldr	r2, [sp, #0x4]
  3ac788: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3ac78c: 4610         	mov	r0, r2
  3ac78e: 2101         	movs	r1, #0x1
  3ac790: 4798         	blx	r3
  3ac792: 9b01         	ldr	r3, [sp, #0x4]
  3ac794: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  3ac798: 681b         	ldr	r3, [r3]
  3ac79a: f503 73d2    	add.w	r3, r3, #0x1a4
  3ac79e: 681b         	ldr	r3, [r3]
  3ac7a0: 9a01         	ldr	r2, [sp, #0x4]
  3ac7a2: f8d2 2140    	ldr.w	r2, [r2, #0x140]
  3ac7a6: 4610         	mov	r0, r2
  3ac7a8: 2164         	movs	r1, #0x64
  3ac7aa: 4798         	blx	r3
  3ac7ac: 9b01         	ldr	r3, [sp, #0x4]
  3ac7ae: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3ac7b2: 681b         	ldr	r3, [r3]
  3ac7b4: f503 73d2    	add.w	r3, r3, #0x1a4
  3ac7b8: 681b         	ldr	r3, [r3]
  3ac7ba: 9a01         	ldr	r2, [sp, #0x4]
  3ac7bc: f8d2 213c    	ldr.w	r2, [r2, #0x13c]
  3ac7c0: 4610         	mov	r0, r2
  3ac7c2: 2164         	movs	r1, #0x64
  3ac7c4: 4798         	blx	r3
  3ac7c6: 9b01         	ldr	r3, [sp, #0x4]
  3ac7c8: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3ac7cc: 681b         	ldr	r3, [r3]
  3ac7ce: f503 730f    	add.w	r3, r3, #0x23c
  3ac7d2: 681b         	ldr	r3, [r3]
  3ac7d4: 9a01         	ldr	r2, [sp, #0x4]
  3ac7d6: f8d2 213c    	ldr.w	r2, [r2, #0x13c]
  3ac7da: 4610         	mov	r0, r2
  3ac7dc: f8df 24b0    	ldr.w	r2, [pc, #0x4b0]        @ 0x3acc90 <PointsLayer::updateItemVisibility(float)+0x944>
  3ac7e0: 447a         	add	r2, pc
  3ac7e2: 4611         	mov	r1, r2
  3ac7e4: 4798         	blx	r3
  3ac7e6: 9b01         	ldr	r3, [sp, #0x4]
  3ac7e8: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3ac7ec: 681b         	ldr	r3, [r3]
  3ac7ee: 334c         	adds	r3, #0x4c
  3ac7f0: 681c         	ldr	r4, [r3]
  3ac7f2: 9b01         	ldr	r3, [sp, #0x4]
  3ac7f4: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3ac7f8: 461d         	mov	r5, r3
  3ac7fa: 9b01         	ldr	r3, [sp, #0x4]
  3ac7fc: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  3ac800: 681b         	ldr	r3, [r3]
  3ac802: 3350         	adds	r3, #0x50
  3ac804: 681b         	ldr	r3, [r3]
  3ac806: 9a01         	ldr	r2, [sp, #0x4]
  3ac808: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  3ac80c: 4610         	mov	r0, r2
  3ac80e: 4798         	blx	r3
  3ac810: 4606         	mov	r6, r0
  3ac812: ab08         	add	r3, sp, #0x20
  3ac814: 4618         	mov	r0, r3
  3ac816: f04f 0100    	mov.w	r1, #0x0
  3ac81a: f04f 0200    	mov.w	r2, #0x0
  3ac81e: f2cc 1210    	movt	r2, #0xc110
  3ac822: f1e6 fa65    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e64ca
  3ac826: aa0a         	add	r2, sp, #0x28
  3ac828: ab08         	add	r3, sp, #0x20
  3ac82a: 4610         	mov	r0, r2
  3ac82c: 4631         	mov	r1, r6
  3ac82e: 461a         	mov	r2, r3
  3ac830: f7fc ffbc    	bl	0x3a97ac <PlayerLobbyOnlineHosted::onServerStatus(cocos2d::CCObject*)+0x1c0> @ imm = #-0x3088
  3ac834: ab0a         	add	r3, sp, #0x28
  3ac836: 4628         	mov	r0, r5
  3ac838: 4619         	mov	r1, r3
  3ac83a: 47a0         	blx	r4
  3ac83c: ab08         	add	r3, sp, #0x20
  3ac83e: 4618         	mov	r0, r3
  3ac840: f3dd fdd8    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ddbb0
  3ac844: aa0a         	add	r2, sp, #0x28
  3ac846: ab08         	add	r3, sp, #0x20
  3ac848: 4610         	mov	r0, r2
  3ac84a: f8df 2448    	ldr.w	r2, [pc, #0x448]        @ 0x3acc94 <PointsLayer::updateItemVisibility(float)+0x948>
  3ac84e: 447a         	add	r2, pc
  3ac850: 4611         	mov	r1, r2
  3ac852: 461a         	mov	r2, r3
  3ac854: f00a f104    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x40a208
  3ac858: ab0a         	add	r3, sp, #0x28
  3ac85a: 4618         	mov	r0, r3
  3ac85c: f084 ff80    	bl	0x431760 <InAppPurchaseBridge::isProductPurchased(std::string)> @ imm = #0x84f00
  3ac860: 4603         	mov	r3, r0
  3ac862: 461c         	mov	r4, r3
  3ac864: ab0a         	add	r3, sp, #0x28
  3ac866: 4618         	mov	r0, r3
  3ac868: f009 f054    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4090a8
  3ac86c: ab08         	add	r3, sp, #0x20
  3ac86e: 4618         	mov	r0, r3
  3ac870: f3dd fdc4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ddb88
  3ac874: 2c00         	cmp	r4, #0x0
  3ac876: d077         	beq	0x3ac968 <PointsLayer::updateItemVisibility(float)+0x61c> @ imm = #0xee
  3ac878: 9b01         	ldr	r3, [sp, #0x4]
  3ac87a: f8d3 3158    	ldr.w	r3, [r3, #0x158]
  3ac87e: 681b         	ldr	r3, [r3]
  3ac880: 3390         	adds	r3, #0x90
  3ac882: 681b         	ldr	r3, [r3]
  3ac884: 9a01         	ldr	r2, [sp, #0x4]
  3ac886: f8d2 2158    	ldr.w	r2, [r2, #0x158]
  3ac88a: 4610         	mov	r0, r2
  3ac88c: 2101         	movs	r1, #0x1
  3ac88e: 4798         	blx	r3
  3ac890: 9b01         	ldr	r3, [sp, #0x4]
  3ac892: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3ac896: 681b         	ldr	r3, [r3]
  3ac898: 3390         	adds	r3, #0x90
  3ac89a: 681b         	ldr	r3, [r3]
  3ac89c: 9a01         	ldr	r2, [sp, #0x4]
  3ac89e: f8d2 2154    	ldr.w	r2, [r2, #0x154]
  3ac8a2: 4610         	mov	r0, r2
  3ac8a4: 2101         	movs	r1, #0x1
  3ac8a6: 4798         	blx	r3
  3ac8a8: 9b01         	ldr	r3, [sp, #0x4]
  3ac8aa: f8d3 315c    	ldr.w	r3, [r3, #0x15c]
  3ac8ae: 681b         	ldr	r3, [r3]
  3ac8b0: 3390         	adds	r3, #0x90
  3ac8b2: 681b         	ldr	r3, [r3]
  3ac8b4: 9a01         	ldr	r2, [sp, #0x4]
  3ac8b6: f8d2 215c    	ldr.w	r2, [r2, #0x15c]
  3ac8ba: 4610         	mov	r0, r2
  3ac8bc: 2101         	movs	r1, #0x1
  3ac8be: 4798         	blx	r3
  3ac8c0: 9b01         	ldr	r3, [sp, #0x4]
  3ac8c2: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3ac8c6: 681b         	ldr	r3, [r3]
  3ac8c8: f503 73d2    	add.w	r3, r3, #0x1a4
  3ac8cc: 681b         	ldr	r3, [r3]
  3ac8ce: 9a01         	ldr	r2, [sp, #0x4]
  3ac8d0: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  3ac8d4: 4610         	mov	r0, r2
  3ac8d6: 2164         	movs	r1, #0x64
  3ac8d8: 4798         	blx	r3
  3ac8da: 9b01         	ldr	r3, [sp, #0x4]
  3ac8dc: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3ac8e0: 681b         	ldr	r3, [r3]
  3ac8e2: f503 73d2    	add.w	r3, r3, #0x1a4
  3ac8e6: 681b         	ldr	r3, [r3]
  3ac8e8: 9a01         	ldr	r2, [sp, #0x4]
  3ac8ea: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3ac8ee: 4610         	mov	r0, r2
  3ac8f0: 2164         	movs	r1, #0x64
  3ac8f2: 4798         	blx	r3
  3ac8f4: 9b01         	ldr	r3, [sp, #0x4]
  3ac8f6: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3ac8fa: 681b         	ldr	r3, [r3]
  3ac8fc: f503 730f    	add.w	r3, r3, #0x23c
  3ac900: 681b         	ldr	r3, [r3]
  3ac902: 9a01         	ldr	r2, [sp, #0x4]
  3ac904: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3ac908: 4610         	mov	r0, r2
  3ac90a: 4ae3         	ldr	r2, [pc, #0x38c]        @ 0x3acc98 <PointsLayer::updateItemVisibility(float)+0x94c>
  3ac90c: 447a         	add	r2, pc
  3ac90e: 4611         	mov	r1, r2
  3ac910: 4798         	blx	r3
  3ac912: 9b01         	ldr	r3, [sp, #0x4]
  3ac914: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3ac918: 681b         	ldr	r3, [r3]
  3ac91a: 334c         	adds	r3, #0x4c
  3ac91c: 681c         	ldr	r4, [r3]
  3ac91e: 9b01         	ldr	r3, [sp, #0x4]
  3ac920: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3ac924: 461d         	mov	r5, r3
  3ac926: 9b01         	ldr	r3, [sp, #0x4]
  3ac928: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3ac92c: 681b         	ldr	r3, [r3]
  3ac92e: 3350         	adds	r3, #0x50
  3ac930: 681b         	ldr	r3, [r3]
  3ac932: 9a01         	ldr	r2, [sp, #0x4]
  3ac934: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3ac938: 4610         	mov	r0, r2
  3ac93a: 4798         	blx	r3
  3ac93c: 4606         	mov	r6, r0
  3ac93e: ab08         	add	r3, sp, #0x20
  3ac940: 4618         	mov	r0, r3
  3ac942: f04f 0100    	mov.w	r1, #0x0
  3ac946: f04f 0200    	mov.w	r2, #0x0
  3ac94a: f2cc 1210    	movt	r2, #0xc110
  3ac94e: f1e6 f9cf    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e639e
  3ac952: aa0a         	add	r2, sp, #0x28
  3ac954: ab08         	add	r3, sp, #0x20
  3ac956: 4610         	mov	r0, r2
  3ac958: 4631         	mov	r1, r6
  3ac95a: 461a         	mov	r2, r3
  3ac95c: f7fc ff26    	bl	0x3a97ac <PlayerLobbyOnlineHosted::onServerStatus(cocos2d::CCObject*)+0x1c0> @ imm = #-0x31b4
  3ac960: ab0a         	add	r3, sp, #0x28
  3ac962: 4628         	mov	r0, r5
  3ac964: 4619         	mov	r1, r3
  3ac966: 47a0         	blx	r4
  3ac968: ab08         	add	r3, sp, #0x20
  3ac96a: 4618         	mov	r0, r3
  3ac96c: f3dd fd42    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3dda84
  3ac970: aa0a         	add	r2, sp, #0x28
  3ac972: ab08         	add	r3, sp, #0x20
  3ac974: 4610         	mov	r0, r2
  3ac976: 4ac9         	ldr	r2, [pc, #0x324]        @ 0x3acc9c <PointsLayer::updateItemVisibility(float)+0x950>
  3ac978: 447a         	add	r2, pc
  3ac97a: 4611         	mov	r1, r2
  3ac97c: 461a         	mov	r2, r3
  3ac97e: f00a f06f    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x40a0de
  3ac982: ab0a         	add	r3, sp, #0x28
  3ac984: 4618         	mov	r0, r3
  3ac986: f084 feeb    	bl	0x431760 <InAppPurchaseBridge::isProductPurchased(std::string)> @ imm = #0x84dd6
  3ac98a: 4603         	mov	r3, r0
  3ac98c: 461c         	mov	r4, r3
  3ac98e: ab0a         	add	r3, sp, #0x28
  3ac990: 4618         	mov	r0, r3
  3ac992: f008 f7bf    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x408f7e
  3ac996: ab08         	add	r3, sp, #0x20
  3ac998: 4618         	mov	r0, r3
  3ac99a: f3dd fd2f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3dda5e
  3ac99e: 2c00         	cmp	r4, #0x0
  3ac9a0: d077         	beq	0x3aca92 <PointsLayer::updateItemVisibility(float)+0x746> @ imm = #0xee
  3ac9a2: 9b01         	ldr	r3, [sp, #0x4]
  3ac9a4: f8d3 3164    	ldr.w	r3, [r3, #0x164]
  3ac9a8: 681b         	ldr	r3, [r3]
  3ac9aa: 3390         	adds	r3, #0x90
  3ac9ac: 681b         	ldr	r3, [r3]
  3ac9ae: 9a01         	ldr	r2, [sp, #0x4]
  3ac9b0: f8d2 2164    	ldr.w	r2, [r2, #0x164]
  3ac9b4: 4610         	mov	r0, r2
  3ac9b6: 2101         	movs	r1, #0x1
  3ac9b8: 4798         	blx	r3
  3ac9ba: 9b01         	ldr	r3, [sp, #0x4]
  3ac9bc: f8d3 3160    	ldr.w	r3, [r3, #0x160]
  3ac9c0: 681b         	ldr	r3, [r3]
  3ac9c2: 3390         	adds	r3, #0x90
  3ac9c4: 681b         	ldr	r3, [r3]
  3ac9c6: 9a01         	ldr	r2, [sp, #0x4]
  3ac9c8: f8d2 2160    	ldr.w	r2, [r2, #0x160]
  3ac9cc: 4610         	mov	r0, r2
  3ac9ce: 2101         	movs	r1, #0x1
  3ac9d0: 4798         	blx	r3
  3ac9d2: 9b01         	ldr	r3, [sp, #0x4]
  3ac9d4: f8d3 3168    	ldr.w	r3, [r3, #0x168]
  3ac9d8: 681b         	ldr	r3, [r3]
  3ac9da: 3390         	adds	r3, #0x90
  3ac9dc: 681b         	ldr	r3, [r3]
  3ac9de: 9a01         	ldr	r2, [sp, #0x4]
  3ac9e0: f8d2 2168    	ldr.w	r2, [r2, #0x168]
  3ac9e4: 4610         	mov	r0, r2
  3ac9e6: 2101         	movs	r1, #0x1
  3ac9e8: 4798         	blx	r3
  3ac9ea: 9b01         	ldr	r3, [sp, #0x4]
  3ac9ec: f8d3 3158    	ldr.w	r3, [r3, #0x158]
  3ac9f0: 681b         	ldr	r3, [r3]
  3ac9f2: f503 73d2    	add.w	r3, r3, #0x1a4
  3ac9f6: 681b         	ldr	r3, [r3]
  3ac9f8: 9a01         	ldr	r2, [sp, #0x4]
  3ac9fa: f8d2 2158    	ldr.w	r2, [r2, #0x158]
  3ac9fe: 4610         	mov	r0, r2
  3aca00: 2164         	movs	r1, #0x64
  3aca02: 4798         	blx	r3
  3aca04: 9b01         	ldr	r3, [sp, #0x4]
  3aca06: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3aca0a: 681b         	ldr	r3, [r3]
  3aca0c: f503 73d2    	add.w	r3, r3, #0x1a4
  3aca10: 681b         	ldr	r3, [r3]
  3aca12: 9a01         	ldr	r2, [sp, #0x4]
  3aca14: f8d2 2154    	ldr.w	r2, [r2, #0x154]
  3aca18: 4610         	mov	r0, r2
  3aca1a: 2164         	movs	r1, #0x64
  3aca1c: 4798         	blx	r3
  3aca1e: 9b01         	ldr	r3, [sp, #0x4]
  3aca20: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3aca24: 681b         	ldr	r3, [r3]
  3aca26: f503 730f    	add.w	r3, r3, #0x23c
  3aca2a: 681b         	ldr	r3, [r3]
  3aca2c: 9a01         	ldr	r2, [sp, #0x4]
  3aca2e: f8d2 2154    	ldr.w	r2, [r2, #0x154]
  3aca32: 4610         	mov	r0, r2
  3aca34: 4a9a         	ldr	r2, [pc, #0x268]        @ 0x3acca0 <PointsLayer::updateItemVisibility(float)+0x954>
  3aca36: 447a         	add	r2, pc
  3aca38: 4611         	mov	r1, r2
  3aca3a: 4798         	blx	r3
  3aca3c: 9b01         	ldr	r3, [sp, #0x4]
  3aca3e: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3aca42: 681b         	ldr	r3, [r3]
  3aca44: 334c         	adds	r3, #0x4c
  3aca46: 681c         	ldr	r4, [r3]
  3aca48: 9b01         	ldr	r3, [sp, #0x4]
  3aca4a: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3aca4e: 461d         	mov	r5, r3
  3aca50: 9b01         	ldr	r3, [sp, #0x4]
  3aca52: f8d3 315c    	ldr.w	r3, [r3, #0x15c]
  3aca56: 681b         	ldr	r3, [r3]
  3aca58: 3350         	adds	r3, #0x50
  3aca5a: 681b         	ldr	r3, [r3]
  3aca5c: 9a01         	ldr	r2, [sp, #0x4]
  3aca5e: f8d2 215c    	ldr.w	r2, [r2, #0x15c]
  3aca62: 4610         	mov	r0, r2
  3aca64: 4798         	blx	r3
  3aca66: 4606         	mov	r6, r0
  3aca68: ab08         	add	r3, sp, #0x20
  3aca6a: 4618         	mov	r0, r3
  3aca6c: f04f 0100    	mov.w	r1, #0x0
  3aca70: f04f 0200    	mov.w	r2, #0x0
  3aca74: f2cc 1210    	movt	r2, #0xc110
  3aca78: f1e6 f93a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e6274
  3aca7c: aa0a         	add	r2, sp, #0x28
  3aca7e: ab08         	add	r3, sp, #0x20
  3aca80: 4610         	mov	r0, r2
  3aca82: 4631         	mov	r1, r6
  3aca84: 461a         	mov	r2, r3
  3aca86: f7fc fe91    	bl	0x3a97ac <PlayerLobbyOnlineHosted::onServerStatus(cocos2d::CCObject*)+0x1c0> @ imm = #-0x32de
  3aca8a: ab0a         	add	r3, sp, #0x28
  3aca8c: 4628         	mov	r0, r5
  3aca8e: 4619         	mov	r1, r3
  3aca90: 47a0         	blx	r4
  3aca92: ab08         	add	r3, sp, #0x20
  3aca94: 4618         	mov	r0, r3
  3aca96: f3dd fcad    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3dd95a
  3aca9a: aa0a         	add	r2, sp, #0x28
  3aca9c: ab08         	add	r3, sp, #0x20
  3aca9e: 4610         	mov	r0, r2
  3acaa0: 4a80         	ldr	r2, [pc, #0x200]        @ 0x3acca4 <PointsLayer::updateItemVisibility(float)+0x958>
  3acaa2: 447a         	add	r2, pc
  3acaa4: 4611         	mov	r1, r2
  3acaa6: 461a         	mov	r2, r3
  3acaa8: f009 f7da    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x409fb4
  3acaac: ab0a         	add	r3, sp, #0x28
  3acaae: 4618         	mov	r0, r3
  3acab0: f084 fe56    	bl	0x431760 <InAppPurchaseBridge::isProductPurchased(std::string)> @ imm = #0x84cac
  3acab4: 4603         	mov	r3, r0
  3acab6: 461c         	mov	r4, r3
  3acab8: ab0a         	add	r3, sp, #0x28
  3acaba: 4618         	mov	r0, r3
  3acabc: f008 f72a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x408e54
  3acac0: ab08         	add	r3, sp, #0x20
  3acac2: 4618         	mov	r0, r3
  3acac4: f3dd fc9a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3dd934
  3acac8: 2c00         	cmp	r4, #0x0
  3acaca: f000 80ca    	beq.w	0x3acc62 <PointsLayer::updateItemVisibility(float)+0x916> @ imm = #0x194
  3acace: 9b01         	ldr	r3, [sp, #0x4]
  3acad0: f8d3 3164    	ldr.w	r3, [r3, #0x164]
  3acad4: 681b         	ldr	r3, [r3]
  3acad6: f503 73d2    	add.w	r3, r3, #0x1a4
  3acada: 681b         	ldr	r3, [r3]
  3acadc: 9a01         	ldr	r2, [sp, #0x4]
  3acade: f8d2 2164    	ldr.w	r2, [r2, #0x164]
  3acae2: 4610         	mov	r0, r2
  3acae4: 2164         	movs	r1, #0x64
  3acae6: 4798         	blx	r3
  3acae8: 9b01         	ldr	r3, [sp, #0x4]
  3acaea: f8d3 3160    	ldr.w	r3, [r3, #0x160]
  3acaee: 681b         	ldr	r3, [r3]
  3acaf0: f503 73d2    	add.w	r3, r3, #0x1a4
  3acaf4: 681b         	ldr	r3, [r3]
  3acaf6: 9a01         	ldr	r2, [sp, #0x4]
  3acaf8: f8d2 2160    	ldr.w	r2, [r2, #0x160]
  3acafc: 4610         	mov	r0, r2
  3acafe: 2164         	movs	r1, #0x64
  3acb00: 4798         	blx	r3
  3acb02: 9b01         	ldr	r3, [sp, #0x4]
  3acb04: f8d3 3160    	ldr.w	r3, [r3, #0x160]
  3acb08: 681b         	ldr	r3, [r3]
  3acb0a: f503 730f    	add.w	r3, r3, #0x23c
  3acb0e: 681b         	ldr	r3, [r3]
  3acb10: 9a01         	ldr	r2, [sp, #0x4]
  3acb12: f8d2 2160    	ldr.w	r2, [r2, #0x160]
  3acb16: 4610         	mov	r0, r2
  3acb18: 4a63         	ldr	r2, [pc, #0x18c]        @ 0x3acca8 <PointsLayer::updateItemVisibility(float)+0x95c>
  3acb1a: 447a         	add	r2, pc
  3acb1c: 4611         	mov	r1, r2
  3acb1e: 4798         	blx	r3
  3acb20: 9b01         	ldr	r3, [sp, #0x4]
  3acb22: f8d3 3160    	ldr.w	r3, [r3, #0x160]
  3acb26: 681b         	ldr	r3, [r3]
  3acb28: 334c         	adds	r3, #0x4c
  3acb2a: 681c         	ldr	r4, [r3]
  3acb2c: 9b01         	ldr	r3, [sp, #0x4]
  3acb2e: f8d3 3160    	ldr.w	r3, [r3, #0x160]
  3acb32: 461d         	mov	r5, r3
  3acb34: 9b01         	ldr	r3, [sp, #0x4]
  3acb36: f8d3 3168    	ldr.w	r3, [r3, #0x168]
  3acb3a: 681b         	ldr	r3, [r3]
  3acb3c: 3350         	adds	r3, #0x50
  3acb3e: 681b         	ldr	r3, [r3]
  3acb40: 9a01         	ldr	r2, [sp, #0x4]
  3acb42: f8d2 2168    	ldr.w	r2, [r2, #0x168]
  3acb46: 4610         	mov	r0, r2
  3acb48: 4798         	blx	r3
  3acb4a: 4606         	mov	r6, r0
  3acb4c: ab08         	add	r3, sp, #0x20
  3acb4e: 4618         	mov	r0, r3
  3acb50: f04f 0100    	mov.w	r1, #0x0
  3acb54: f04f 0200    	mov.w	r2, #0x0
  3acb58: f2cc 1210    	movt	r2, #0xc110
  3acb5c: f1e6 f8c8    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e6190
  3acb60: aa0a         	add	r2, sp, #0x28
  3acb62: ab08         	add	r3, sp, #0x20
  3acb64: 4610         	mov	r0, r2
  3acb66: 4631         	mov	r1, r6
  3acb68: 461a         	mov	r2, r3
  3acb6a: f7fc fe1f    	bl	0x3a97ac <PlayerLobbyOnlineHosted::onServerStatus(cocos2d::CCObject*)+0x1c0> @ imm = #-0x33c2
  3acb6e: ab0a         	add	r3, sp, #0x28
  3acb70: 4628         	mov	r0, r5
  3acb72: 4619         	mov	r1, r3
  3acb74: 47a0         	blx	r4
  3acb76: e074         	b	0x3acc62 <PointsLayer::updateItemVisibility(float)+0x916> @ imm = #0xe8
  3acb78: ab0a         	add	r3, sp, #0x28
  3acb7a: 4618         	mov	r0, r3
  3acb7c: f008 f6ca    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x408d94
  3acb80: e7ff         	b	0x3acb82 <PointsLayer::updateItemVisibility(float)+0x836> @ imm = #-0x2
  3acb82: ab08         	add	r3, sp, #0x20
  3acb84: 4618         	mov	r0, r3
  3acb86: f3dd fc39    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3dd872
  3acb8a: f3db fa8f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3db51e
  3acb8e: ab05         	add	r3, sp, #0x14
  3acb90: 4618         	mov	r0, r3
  3acb92: f008 f6bf    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x408d7e
  3acb96: e7ff         	b	0x3acb98 <PointsLayer::updateItemVisibility(float)+0x84c> @ imm = #-0x2
  3acb98: ab04         	add	r3, sp, #0x10
  3acb9a: 4618         	mov	r0, r3
  3acb9c: f008 f6ba    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x408d74
  3acba0: e7ff         	b	0x3acba2 <PointsLayer::updateItemVisibility(float)+0x856> @ imm = #-0x2
  3acba2: ab0a         	add	r3, sp, #0x28
  3acba4: 4618         	mov	r0, r3
  3acba6: f3dd fc29    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3dd852
  3acbaa: e01d         	b	0x3acbe8 <PointsLayer::updateItemVisibility(float)+0x89c> @ imm = #0x3a
  3acbac: ab07         	add	r3, sp, #0x1c
  3acbae: 4618         	mov	r0, r3
  3acbb0: f008 f6b0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x408d60
  3acbb4: e7ff         	b	0x3acbb6 <PointsLayer::updateItemVisibility(float)+0x86a> @ imm = #-0x2
  3acbb6: ab06         	add	r3, sp, #0x18
  3acbb8: 4618         	mov	r0, r3
  3acbba: f008 f6ab    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x408d56
  3acbbe: e7ff         	b	0x3acbc0 <PointsLayer::updateItemVisibility(float)+0x874> @ imm = #-0x2
  3acbc0: ab0a         	add	r3, sp, #0x28
  3acbc2: 4618         	mov	r0, r3
  3acbc4: f3dd fc1a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3dd834
  3acbc8: e00e         	b	0x3acbe8 <PointsLayer::updateItemVisibility(float)+0x89c> @ imm = #0x1c
  3acbca: ab0a         	add	r3, sp, #0x28
  3acbcc: 4618         	mov	r0, r3
  3acbce: f008 f6a1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x408d42
  3acbd2: e7ff         	b	0x3acbd4 <PointsLayer::updateItemVisibility(float)+0x888> @ imm = #-0x2
  3acbd4: ab08         	add	r3, sp, #0x20
  3acbd6: 4618         	mov	r0, r3
  3acbd8: f008 f69c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x408d38
  3acbdc: e7ff         	b	0x3acbde <PointsLayer::updateItemVisibility(float)+0x892> @ imm = #-0x2
  3acbde: ab07         	add	r3, sp, #0x1c
  3acbe0: 4618         	mov	r0, r3
  3acbe2: f3dd fc0b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3dd816
  3acbe6: e7ff         	b	0x3acbe8 <PointsLayer::updateItemVisibility(float)+0x89c> @ imm = #-0x2
  3acbe8: ab03         	add	r3, sp, #0xc
  3acbea: 4618         	mov	r0, r3
  3acbec: f008 f692    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x408d24
  3acbf0: f3db fa5c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3db4b8
  3acbf4: ab0a         	add	r3, sp, #0x28
  3acbf6: 4618         	mov	r0, r3
  3acbf8: f008 f68c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x408d18
  3acbfc: e7ff         	b	0x3acbfe <PointsLayer::updateItemVisibility(float)+0x8b2> @ imm = #-0x2
  3acbfe: ab08         	add	r3, sp, #0x20
  3acc00: 4618         	mov	r0, r3
  3acc02: f3dd fbfb    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3dd7f6
  3acc06: f3db fa51    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3db4a2
  3acc0a: ab0a         	add	r3, sp, #0x28
  3acc0c: 4618         	mov	r0, r3
  3acc0e: f008 f681    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x408d02
  3acc12: e7ff         	b	0x3acc14 <PointsLayer::updateItemVisibility(float)+0x8c8> @ imm = #-0x2
  3acc14: ab08         	add	r3, sp, #0x20
  3acc16: 4618         	mov	r0, r3
  3acc18: f3dd fbf0    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3dd7e0
  3acc1c: f3db fa46    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3db48c
  3acc20: ab0a         	add	r3, sp, #0x28
  3acc22: 4618         	mov	r0, r3
  3acc24: f008 f676    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x408cec
  3acc28: e7ff         	b	0x3acc2a <PointsLayer::updateItemVisibility(float)+0x8de> @ imm = #-0x2
  3acc2a: ab08         	add	r3, sp, #0x20
  3acc2c: 4618         	mov	r0, r3
  3acc2e: f3dd fbe5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3dd7ca
  3acc32: f3db fa3b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3db476
  3acc36: ab0a         	add	r3, sp, #0x28
  3acc38: 4618         	mov	r0, r3
  3acc3a: f008 f66b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x408cd6
  3acc3e: e7ff         	b	0x3acc40 <PointsLayer::updateItemVisibility(float)+0x8f4> @ imm = #-0x2
  3acc40: ab08         	add	r3, sp, #0x20
  3acc42: 4618         	mov	r0, r3
  3acc44: f3dd fbda    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3dd7b4
  3acc48: f3db fa30    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3db460
  3acc4c: ab0a         	add	r3, sp, #0x28
  3acc4e: 4618         	mov	r0, r3
  3acc50: f008 f660    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x408cc0
  3acc54: e7ff         	b	0x3acc56 <PointsLayer::updateItemVisibility(float)+0x90a> @ imm = #-0x2
  3acc56: ab08         	add	r3, sp, #0x20
  3acc58: 4618         	mov	r0, r3
  3acc5a: f3dd fbcf    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3dd79e
  3acc5e: f3db fa25    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3db44a
  3acc62: b00c         	add	sp, #0x30
  3acc64: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3acc65); words below are literal-pool data ---
  3acc66: bf00         	nop
  3acc68: 7024         	strb	r4, [r4]
  3acc6a: 0042         	lsls	r2, r0, #0x1
  3acc6c: 6ff6         	ldr	r6, [r6, #0x7c]
  3acc6e: 0042         	lsls	r2, r0, #0x1
  3acc70: 6fc4         	ldr	r4, [r0, #0x7c]
  3acc72: 0042         	lsls	r2, r0, #0x1
  3acc74: 6f5e         	ldr	r6, [r3, #0x74]
  3acc76: 0042         	lsls	r2, r0, #0x1
  3acc78: 6f4c         	ldr	r4, [r1, #0x74]
  3acc7a: 0042         	lsls	r2, r0, #0x1
  3acc7c: 6ec6         	ldr	r6, [r0, #0x6c]
  3acc7e: 0042         	lsls	r2, r0, #0x1
  3acc80: 6ed4         	ldr	r4, [r2, #0x6c]
  3acc82: 0042         	lsls	r2, r0, #0x1
  3acc84: 6e2e         	ldr	r6, [r5, #0x60]
  3acc86: 0042         	lsls	r2, r0, #0x1
  3acc88: 6e54         	ldr	r4, [r2, #0x64]
  3acc8a: 0042         	lsls	r2, r0, #0x1
  3acc8c: 6d5c         	ldr	r4, [r3, #0x54]
  3acc8e: 0042         	lsls	r2, r0, #0x1
  3acc90: 6d44         	ldr	r4, [r0, #0x54]
  3acc92: 0042         	lsls	r2, r0, #0x1
  3acc94: 6c5a         	ldr	r2, [r3, #0x44]
  3acc96: 0042         	lsls	r2, r0, #0x1
  3acc98: 6c18         	ldr	r0, [r3, #0x40]
  3acc9a: 0042         	lsls	r2, r0, #0x1
  3acc9c: 6b50         	ldr	r0, [r2, #0x34]
  3acc9e: 0042         	lsls	r2, r0, #0x1
  3acca0: 6aee         	ldr	r6, [r5, #0x2c]
  3acca2: 0042         	lsls	r2, r0, #0x1
  3acca4: 6a46         	ldr	r6, [r0, #0x24]
  3acca6: 0042         	lsls	r2, r0, #0x1
  3acca8: 6a0a         	ldr	r2, [r1, #0x20]
  3accaa: 0042         	lsls	r2, r0, #0x1

// ==== PointsLayer::updateStep
//      file offset 0x3accac (= ELF address; Ghidra 0x3bccac), 296 bytes, Thumb-2
  3accac: b500         	push	{lr}
  3accae: b083         	sub	sp, #0xc
  3accb0: 9001         	str	r0, [sp, #0x4]
  3accb2: 9100         	str	r1, [sp]
  3accb4: f084 fd76    	bl	0x4317a4 <InAppPurchaseBridge::readyToSignIn()> @ imm = #0x84aec
  3accb8: 4603         	mov	r3, r0
  3accba: 2b00         	cmp	r3, #0x0
  3accbc: d041         	beq	0x3acd42 <PointsLayer::updateStep(float)+0x96> @ imm = #0x82
  3accbe: 9b01         	ldr	r3, [sp, #0x4]
  3accc0: f893 316e    	ldrb.w	r3, [r3, #0x16e]
  3accc4: 2b00         	cmp	r3, #0x0
  3accc6: d023         	beq	0x3acd10 <PointsLayer::updateStep(float)+0x64> @ imm = #0x46
  3accc8: 9b01         	ldr	r3, [sp, #0x4]
  3accca: ed93 7a5c    	vldr	s14, [r3, #368]
  3accce: eef3 7a04    	vmov.f32	s15, #2.000000e+01
  3accd2: eeb4 7ae7    	vcmpe.f32	s14, s15
  3accd6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3accda: d519         	bpl	0x3acd10 <PointsLayer::updateStep(float)+0x64> @ imm = #0x32
  3accdc: 9b01         	ldr	r3, [sp, #0x4]
  3accde: ed93 7a5c    	vldr	s14, [r3, #368]
  3acce2: eddd 7a00    	vldr	s15, [sp]
  3acce6: ee77 7a27    	vadd.f32	s15, s14, s15
  3accea: 9b01         	ldr	r3, [sp, #0x4]
  3accec: edc3 7a5c    	vstr	s15, [r3, #368]
  3accf0: 9b01         	ldr	r3, [sp, #0x4]
  3accf2: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3accf6: 681b         	ldr	r3, [r3]
  3accf8: f503 73fc    	add.w	r3, r3, #0x1f8
  3accfc: 681b         	ldr	r3, [r3]
  3accfe: 9a01         	ldr	r2, [sp, #0x4]
  3acd00: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3acd04: 4610         	mov	r0, r2
  3acd06: 4a2e         	ldr	r2, [pc, #0xb8]         @ 0x3acdc0 <PointsLayer::updateStep(float)+0x114>
  3acd08: 447a         	add	r2, pc
  3acd0a: 4611         	mov	r1, r2
  3acd0c: 4798         	blx	r3
  3acd0e: e054         	b	0x3acdba <PointsLayer::updateStep(float)+0x10e> @ imm = #0xa8
  3acd10: 9b01         	ldr	r3, [sp, #0x4]
  3acd12: 2200         	movs	r2, #0x0
  3acd14: f883 216e    	strb.w	r2, [r3, #0x16e]
  3acd18: 9b01         	ldr	r3, [sp, #0x4]
  3acd1a: f04f 0200    	mov.w	r2, #0x0
  3acd1e: f8c3 2170    	str.w	r2, [r3, #0x170]
  3acd22: 9b01         	ldr	r3, [sp, #0x4]
  3acd24: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3acd28: 681b         	ldr	r3, [r3]
  3acd2a: f503 73fc    	add.w	r3, r3, #0x1f8
  3acd2e: 681b         	ldr	r3, [r3]
  3acd30: 9a01         	ldr	r2, [sp, #0x4]
  3acd32: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3acd36: 4610         	mov	r0, r2
  3acd38: 4a22         	ldr	r2, [pc, #0x88]         @ 0x3acdc4 <PointsLayer::updateStep(float)+0x118>
  3acd3a: 447a         	add	r2, pc
  3acd3c: 4611         	mov	r1, r2
  3acd3e: 4798         	blx	r3
  3acd40: e03b         	b	0x3acdba <PointsLayer::updateStep(float)+0x10e> @ imm = #0x76
  3acd42: f084 fd35    	bl	0x4317b0 <InAppPurchaseBridge::readyToPurchase()> @ imm = #0x84a6a
  3acd46: 4603         	mov	r3, r0
  3acd48: f083 0301    	eor	r3, r3, #0x1
  3acd4c: b2db         	uxtb	r3, r3
  3acd4e: 2b00         	cmp	r3, #0x0
  3acd50: d00f         	beq	0x3acd72 <PointsLayer::updateStep(float)+0xc6> @ imm = #0x1e
  3acd52: 9b01         	ldr	r3, [sp, #0x4]
  3acd54: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3acd58: 681b         	ldr	r3, [r3]
  3acd5a: f503 73fc    	add.w	r3, r3, #0x1f8
  3acd5e: 681b         	ldr	r3, [r3]
  3acd60: 9a01         	ldr	r2, [sp, #0x4]
  3acd62: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3acd66: 4610         	mov	r0, r2
  3acd68: 4a17         	ldr	r2, [pc, #0x5c]         @ 0x3acdc8 <PointsLayer::updateStep(float)+0x11c>
  3acd6a: 447a         	add	r2, pc
  3acd6c: 4611         	mov	r1, r2
  3acd6e: 4798         	blx	r3
  3acd70: e023         	b	0x3acdba <PointsLayer::updateStep(float)+0x10e> @ imm = #0x46
  3acd72: f084 fd63    	bl	0x43183c <InAppPurchaseBridge::hasPendingTransactions()> @ imm = #0x84ac6
  3acd76: 4603         	mov	r3, r0
  3acd78: 2b00         	cmp	r3, #0x0
  3acd7a: d00f         	beq	0x3acd9c <PointsLayer::updateStep(float)+0xf0> @ imm = #0x1e
  3acd7c: 9b01         	ldr	r3, [sp, #0x4]
  3acd7e: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3acd82: 681b         	ldr	r3, [r3]
  3acd84: f503 73fc    	add.w	r3, r3, #0x1f8
  3acd88: 681b         	ldr	r3, [r3]
  3acd8a: 9a01         	ldr	r2, [sp, #0x4]
  3acd8c: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3acd90: 4610         	mov	r0, r2
  3acd92: 4a0e         	ldr	r2, [pc, #0x38]         @ 0x3acdcc <PointsLayer::updateStep(float)+0x120>
  3acd94: 447a         	add	r2, pc
  3acd96: 4611         	mov	r1, r2
  3acd98: 4798         	blx	r3
  3acd9a: e00e         	b	0x3acdba <PointsLayer::updateStep(float)+0x10e> @ imm = #0x1c
  3acd9c: 9b01         	ldr	r3, [sp, #0x4]
  3acd9e: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3acda2: 681b         	ldr	r3, [r3]
  3acda4: f503 73fc    	add.w	r3, r3, #0x1f8
  3acda8: 681b         	ldr	r3, [r3]
  3acdaa: 9a01         	ldr	r2, [sp, #0x4]
  3acdac: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3acdb0: 4610         	mov	r0, r2
  3acdb2: 4a07         	ldr	r2, [pc, #0x1c]         @ 0x3acdd0 <PointsLayer::updateStep(float)+0x124>
  3acdb4: 447a         	add	r2, pc
  3acdb6: 4611         	mov	r1, r2
  3acdb8: 4798         	blx	r3
  3acdba: b003         	add	sp, #0xc
  3acdbc: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3acdbf); words below are literal-pool data ---
  3acdc0: 6828         	ldr	r0, [r5]
  3acdc2: 0042         	lsls	r2, r0, #0x1
  3acdc4: 671e         	str	r6, [r3, #0x70]
  3acdc6: 0042         	lsls	r2, r0, #0x1
  3acdc8: 67d2         	str	r2, [r2, #0x7c]
  3acdca: 0042         	lsls	r2, r0, #0x1
  3acdcc: 67b4         	str	r4, [r6, #0x78]
  3acdce: 0042         	lsls	r2, r0, #0x1
  3acdd0: 66a4         	str	r4, [r4, #0x68]
  3acdd2: 0042         	lsls	r2, r0, #0x1

// ==== PointsLayer::checkCanConnectToStore
//      file offset 0x3acdd4 (= ELF address; Ghidra 0x3bcdd4), 648 bytes, Thumb-2
  3acdd4: b510         	push	{r4, lr}
  3acdd6: b08a         	sub	sp, #0x28
  3acdd8: 9003         	str	r0, [sp, #0xc]
  3acdda: 4c98         	ldr	r4, [pc, #0x260]        @ 0x3ad03c <PointsLayer::checkCanConnectToStore()+0x268>
  3acddc: 447c         	add	r4, pc
  3acdde: f7ca feaf    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x352a2
  3acde2: 4603         	mov	r3, r0
  3acde4: 4618         	mov	r0, r3
  3acde6: f086 ff63    	bl	0x433cb0 <NetworkManagerBridge::isInternetReachable()> @ imm = #0x86ec6
  3acdea: 4603         	mov	r3, r0
  3acdec: f083 0301    	eor	r3, r3, #0x1
  3acdf0: b2db         	uxtb	r3, r3
  3acdf2: 2b00         	cmp	r3, #0x0
  3acdf4: d059         	beq	0x3aceaa <PointsLayer::checkCanConnectToStore()+0xd6> @ imm = #0xb2
  3acdf6: 4b92         	ldr	r3, [pc, #0x248]        @ 0x3ad040 <PointsLayer::checkCanConnectToStore()+0x26c>
  3acdf8: 58e3         	ldr	r3, [r4, r3]
  3acdfa: 681b         	ldr	r3, [r3]
  3acdfc: 4618         	mov	r0, r3
  3acdfe: 210e         	movs	r1, #0xe
  3ace00: f04a ffde    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x4afbc
  3ace04: ab05         	add	r3, sp, #0x14
  3ace06: 4618         	mov	r0, r3
  3ace08: f3dd faf4    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3dd5e8
  3ace0c: aa08         	add	r2, sp, #0x20
  3ace0e: ab05         	add	r3, sp, #0x14
  3ace10: 4610         	mov	r0, r2
  3ace12: 4a8c         	ldr	r2, [pc, #0x230]        @ 0x3ad044 <PointsLayer::checkCanConnectToStore()+0x270>
  3ace14: 447a         	add	r2, pc
  3ace16: 4611         	mov	r1, r2
  3ace18: 461a         	mov	r2, r3
  3ace1a: f009 f621    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x409c42
  3ace1e: ab06         	add	r3, sp, #0x18
  3ace20: 4618         	mov	r0, r3
  3ace22: f3dd fae7    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3dd5ce
  3ace26: aa09         	add	r2, sp, #0x24
  3ace28: ab06         	add	r3, sp, #0x18
  3ace2a: 4610         	mov	r0, r2
  3ace2c: 4a86         	ldr	r2, [pc, #0x218]        @ 0x3ad048 <PointsLayer::checkCanConnectToStore()+0x274>
  3ace2e: 447a         	add	r2, pc
  3ace30: 4611         	mov	r1, r2
  3ace32: 461a         	mov	r2, r3
  3ace34: f009 f614    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x409c28
  3ace38: ab04         	add	r3, sp, #0x10
  3ace3a: 4618         	mov	r0, r3
  3ace3c: f3dd fada    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3dd5b4
  3ace40: aa07         	add	r2, sp, #0x1c
  3ace42: ab04         	add	r3, sp, #0x10
  3ace44: 4610         	mov	r0, r2
  3ace46: 4a81         	ldr	r2, [pc, #0x204]        @ 0x3ad04c <PointsLayer::checkCanConnectToStore()+0x278>
  3ace48: 447a         	add	r2, pc
  3ace4a: 4611         	mov	r1, r2
  3ace4c: 461a         	mov	r2, r3
  3ace4e: f009 f607    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x409c0e
  3ace52: ab07         	add	r3, sp, #0x1c
  3ace54: 4618         	mov	r0, r3
  3ace56: f1ec fdf1    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1ecbe2
  3ace5a: 4603         	mov	r3, r0
  3ace5c: 4618         	mov	r0, r3
  3ace5e: 2100         	movs	r1, #0x0
  3ace60: f1ec ffd6    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x1ecfac
  3ace64: 4603         	mov	r3, r0
  3ace66: a908         	add	r1, sp, #0x20
  3ace68: aa09         	add	r2, sp, #0x24
  3ace6a: 2000         	movs	r0, #0x0
  3ace6c: 9000         	str	r0, [sp]
  3ace6e: 2000         	movs	r0, #0x0
  3ace70: 9001         	str	r0, [sp, #0x4]
  3ace72: 2000         	movs	r0, #0x0
  3ace74: f732 fcbe    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0xcd684
  3ace78: ab07         	add	r3, sp, #0x1c
  3ace7a: 4618         	mov	r0, r3
  3ace7c: f008 f54a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x408a94
  3ace80: ab04         	add	r3, sp, #0x10
  3ace82: 4618         	mov	r0, r3
  3ace84: f3dd faba    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3dd574
  3ace88: ab09         	add	r3, sp, #0x24
  3ace8a: 4618         	mov	r0, r3
  3ace8c: f008 f542    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x408a84
  3ace90: ab06         	add	r3, sp, #0x18
  3ace92: 4618         	mov	r0, r3
  3ace94: f3dd fab2    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3dd564
  3ace98: ab08         	add	r3, sp, #0x20
  3ace9a: 4618         	mov	r0, r3
  3ace9c: f008 f53a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x408a74
  3acea0: ab05         	add	r3, sp, #0x14
  3acea2: 4618         	mov	r0, r3
  3acea4: f3dd faaa    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3dd554
  3acea8: e0c6         	b	0x3ad038 <PointsLayer::checkCanConnectToStore()+0x264> @ imm = #0x18c
  3aceaa: f07f fceb    	bl	0x42c884 <ApplicationInterface::requiresClaimedIdentity()> @ imm = #0x7f9d6
  3aceae: 4603         	mov	r3, r0
  3aceb0: 2b00         	cmp	r3, #0x0
  3aceb2: d00d         	beq	0x3aced0 <PointsLayer::checkCanConnectToStore()+0xfc> @ imm = #0x1a
  3aceb4: f7ca fe44    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x35378
  3aceb8: 4603         	mov	r3, r0
  3aceba: 4618         	mov	r0, r3
  3acebc: f7cc fdd8    	bl	0x379a70 <NetworkManager::checkCurrentSessionIsValid()> @ imm = #-0x33450
  3acec0: 4603         	mov	r3, r0
  3acec2: f083 0301    	eor	r3, r3, #0x1
  3acec6: b2db         	uxtb	r3, r3
  3acec8: 2b00         	cmp	r3, #0x0
  3aceca: d001         	beq	0x3aced0 <PointsLayer::checkCanConnectToStore()+0xfc> @ imm = #0x2
  3acecc: 2301         	movs	r3, #0x1
  3acece: e000         	b	0x3aced2 <PointsLayer::checkCanConnectToStore()+0xfe> @ imm = #0x0
  3aced0: 2300         	movs	r3, #0x0
  3aced2: 2b00         	cmp	r3, #0x0
  3aced4: d05f         	beq	0x3acf96 <PointsLayer::checkCanConnectToStore()+0x1c2> @ imm = #0xbe
  3aced6: 4b5a         	ldr	r3, [pc, #0x168]        @ 0x3ad040 <PointsLayer::checkCanConnectToStore()+0x26c>
  3aced8: 58e3         	ldr	r3, [r4, r3]
  3aceda: 681b         	ldr	r3, [r3]
  3acedc: 4618         	mov	r0, r3
  3acede: 210d         	movs	r1, #0xd
  3acee0: f04a ff6e    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x4aedc
  3acee4: ab05         	add	r3, sp, #0x14
  3acee6: 4618         	mov	r0, r3
  3acee8: f3dd fa84    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3dd508
  3aceec: aa08         	add	r2, sp, #0x20
  3aceee: ab05         	add	r3, sp, #0x14
  3acef0: 4610         	mov	r0, r2
  3acef2: 4a57         	ldr	r2, [pc, #0x15c]        @ 0x3ad050 <PointsLayer::checkCanConnectToStore()+0x27c>
  3acef4: 447a         	add	r2, pc
  3acef6: 4611         	mov	r1, r2
  3acef8: 461a         	mov	r2, r3
  3acefa: f009 f5b1    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x409b62
  3acefe: ab06         	add	r3, sp, #0x18
  3acf00: 4618         	mov	r0, r3
  3acf02: f3dd fa77    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3dd4ee
  3acf06: aa09         	add	r2, sp, #0x24
  3acf08: ab06         	add	r3, sp, #0x18
  3acf0a: 4610         	mov	r0, r2
  3acf0c: 4a51         	ldr	r2, [pc, #0x144]        @ 0x3ad054 <PointsLayer::checkCanConnectToStore()+0x280>
  3acf0e: 447a         	add	r2, pc
  3acf10: 4611         	mov	r1, r2
  3acf12: 461a         	mov	r2, r3
  3acf14: f009 f5a4    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x409b48
  3acf18: ab04         	add	r3, sp, #0x10
  3acf1a: 4618         	mov	r0, r3
  3acf1c: f3dd fa6a    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3dd4d4
  3acf20: aa07         	add	r2, sp, #0x1c
  3acf22: ab04         	add	r3, sp, #0x10
  3acf24: 4610         	mov	r0, r2
  3acf26: 4a4c         	ldr	r2, [pc, #0x130]        @ 0x3ad058 <PointsLayer::checkCanConnectToStore()+0x284>
  3acf28: 447a         	add	r2, pc
  3acf2a: 4611         	mov	r1, r2
  3acf2c: 461a         	mov	r2, r3
  3acf2e: f009 f597    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x409b2e
  3acf32: ab07         	add	r3, sp, #0x1c
  3acf34: 4618         	mov	r0, r3
  3acf36: f1ec fd81    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1ecb02
  3acf3a: 4603         	mov	r3, r0
  3acf3c: 4618         	mov	r0, r3
  3acf3e: 2100         	movs	r1, #0x0
  3acf40: f1ec ff66    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x1ececc
  3acf44: 4603         	mov	r3, r0
  3acf46: a908         	add	r1, sp, #0x20
  3acf48: aa09         	add	r2, sp, #0x24
  3acf4a: 2000         	movs	r0, #0x0
  3acf4c: 9000         	str	r0, [sp]
  3acf4e: 2000         	movs	r0, #0x0
  3acf50: 9001         	str	r0, [sp, #0x4]
  3acf52: 2000         	movs	r0, #0x0
  3acf54: f732 fc4e    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0xcd764
  3acf58: ab07         	add	r3, sp, #0x1c
  3acf5a: 4618         	mov	r0, r3
  3acf5c: f008 f4da    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4089b4
  3acf60: ab04         	add	r3, sp, #0x10
  3acf62: 4618         	mov	r0, r3
  3acf64: f3dd fa4a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3dd494
  3acf68: ab09         	add	r3, sp, #0x24
  3acf6a: 4618         	mov	r0, r3
  3acf6c: f008 f4d2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4089a4
  3acf70: ab06         	add	r3, sp, #0x18
  3acf72: 4618         	mov	r0, r3
  3acf74: f3dd fa42    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3dd484
  3acf78: ab08         	add	r3, sp, #0x20
  3acf7a: 4618         	mov	r0, r3
  3acf7c: f008 f4ca    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x408994
  3acf80: ab05         	add	r3, sp, #0x14
  3acf82: 4618         	mov	r0, r3
  3acf84: f3dd fa3a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3dd474
  3acf88: f7ca fdda    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x3544c
  3acf8c: 4603         	mov	r3, r0
  3acf8e: 4618         	mov	r0, r3
  3acf90: f7ce f860    	bl	0x37b054 <NetworkManager::requestWebSession()> @ imm = #-0x31f40
  3acf94: e050         	b	0x3ad038 <PointsLayer::checkCanConnectToStore()+0x264> @ imm = #0xa0
  3acf96: f084 fc8d    	bl	0x4318b4 <InAppPurchaseBridge::canMakePurchases()> @ imm = #0x8491a
  3acf9a: 4603         	mov	r3, r0
  3acf9c: f083 0301    	eor	r3, r3, #0x1
  3acfa0: b2db         	uxtb	r3, r3
  3acfa2: 2b00         	cmp	r3, #0x0
  3acfa4: d048         	beq	0x3ad038 <PointsLayer::checkCanConnectToStore()+0x264> @ imm = #0x90
  3acfa6: 9b03         	ldr	r3, [sp, #0xc]
  3acfa8: f893 316c    	ldrb.w	r3, [r3, #0x16c]
  3acfac: f083 0301    	eor	r3, r3, #0x1
  3acfb0: b2db         	uxtb	r3, r3
  3acfb2: 2b00         	cmp	r3, #0x0
  3acfb4: d001         	beq	0x3acfba <PointsLayer::checkCanConnectToStore()+0x1e6> @ imm = #0x2
  3acfb6: f084 fd31    	bl	0x431a1c <InAppPurchaseBridge::showPurchaseStatusAlert()> @ imm = #0x84a62
  3acfba: 9b03         	ldr	r3, [sp, #0xc]
  3acfbc: 2201         	movs	r2, #0x1
  3acfbe: f883 216c    	strb.w	r2, [r3, #0x16c]
  3acfc2: e039         	b	0x3ad038 <PointsLayer::checkCanConnectToStore()+0x264> @ imm = #0x72
  3acfc4: ab07         	add	r3, sp, #0x1c
  3acfc6: 4618         	mov	r0, r3
  3acfc8: f008 f4a4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x408948
  3acfcc: e7ff         	b	0x3acfce <PointsLayer::checkCanConnectToStore()+0x1fa> @ imm = #-0x2
  3acfce: ab04         	add	r3, sp, #0x10
  3acfd0: 4618         	mov	r0, r3
  3acfd2: f3dd fa13    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3dd426
  3acfd6: ab09         	add	r3, sp, #0x24
  3acfd8: 4618         	mov	r0, r3
  3acfda: f008 f49b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x408936
  3acfde: e7ff         	b	0x3acfe0 <PointsLayer::checkCanConnectToStore()+0x20c> @ imm = #-0x2
  3acfe0: ab06         	add	r3, sp, #0x18
  3acfe2: 4618         	mov	r0, r3
  3acfe4: f3dd fa0a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3dd414
  3acfe8: ab08         	add	r3, sp, #0x20
  3acfea: 4618         	mov	r0, r3
  3acfec: f008 f492    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x408924
  3acff0: e7ff         	b	0x3acff2 <PointsLayer::checkCanConnectToStore()+0x21e> @ imm = #-0x2
  3acff2: ab05         	add	r3, sp, #0x14
  3acff4: 4618         	mov	r0, r3
  3acff6: f3dd fa01    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3dd402
  3acffa: f3db f857    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3db0ae
  3acffe: ab07         	add	r3, sp, #0x1c
  3ad000: 4618         	mov	r0, r3
  3ad002: f008 f487    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40890e
  3ad006: e7ff         	b	0x3ad008 <PointsLayer::checkCanConnectToStore()+0x234> @ imm = #-0x2
  3ad008: ab04         	add	r3, sp, #0x10
  3ad00a: 4618         	mov	r0, r3
  3ad00c: f3dd f9f6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3dd3ec
  3ad010: ab09         	add	r3, sp, #0x24
  3ad012: 4618         	mov	r0, r3
  3ad014: f008 f47e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4088fc
  3ad018: e7ff         	b	0x3ad01a <PointsLayer::checkCanConnectToStore()+0x246> @ imm = #-0x2
  3ad01a: ab06         	add	r3, sp, #0x18
  3ad01c: 4618         	mov	r0, r3
  3ad01e: f3dd f9ed    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3dd3da
  3ad022: ab08         	add	r3, sp, #0x20
  3ad024: 4618         	mov	r0, r3
  3ad026: f008 f475    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4088ea
  3ad02a: e7ff         	b	0x3ad02c <PointsLayer::checkCanConnectToStore()+0x258> @ imm = #-0x2
  3ad02c: ab05         	add	r3, sp, #0x14
  3ad02e: 4618         	mov	r0, r3
  3ad030: f3dd f9e4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3dd3c8
  3ad034: f3db f83a    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3db074
  3ad038: b00a         	add	sp, #0x28
  3ad03a: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3ad03b); words below are literal-pool data ---
  3ad03c: 5c2c         	ldrb	r4, [r5, r0]
  3ad03e: 0058         	lsls	r0, r3, #0x1
  3ad040: d730         	bvc	0x3ad0a4 <PointsLayer::onRestore(cocos2d::CCObject*)+0x48> @ imm = #0x60
  3ad042: ffff 6740    	<unknown>
  3ad046: 0042         	lsls	r2, r0, #0x1
  3ad048: 6742         	str	r2, [r0, #0x74]
  3ad04a: 0042         	lsls	r2, r0, #0x1
  3ad04c: 6760         	str	r0, [r4, #0x74]
  3ad04e: 0042         	lsls	r2, r0, #0x1
  3ad050: 66c0         	str	r0, [r0, #0x6c]
  3ad052: 0042         	lsls	r2, r0, #0x1
  3ad054: 66b2         	str	r2, [r6, #0x68]
  3ad056: 0042         	lsls	r2, r0, #0x1
  3ad058: 66f0         	str	r0, [r6, #0x6c]
  3ad05a: 0042         	lsls	r2, r0, #0x1

// ==== PointsLayer::onRestore
//      file offset 0x3ad05c (= ELF address; Ghidra 0x3bd05c), 76 bytes, Thumb-2
  3ad05c: b510         	push	{r4, lr}
  3ad05e: b082         	sub	sp, #0x8
  3ad060: 9001         	str	r0, [sp, #0x4]
  3ad062: 9100         	str	r1, [sp]
  3ad064: 4c0e         	ldr	r4, [pc, #0x38]         @ 0x3ad0a0 <PointsLayer::onRestore(cocos2d::CCObject*)+0x44>
  3ad066: 447c         	add	r4, pc
  3ad068: 9801         	ldr	r0, [sp, #0x4]
  3ad06a: f7ff feb3    	bl	0x3acdd4 <PointsLayer::checkCanConnectToStore()> @ imm = #-0x29a
  3ad06e: 9b01         	ldr	r3, [sp, #0x4]
  3ad070: f893 3108    	ldrb.w	r3, [r3, #0x108]
  3ad074: 2b00         	cmp	r3, #0x0
  3ad076: d000         	beq	0x3ad07a <PointsLayer::onRestore(cocos2d::CCObject*)+0x1e> @ imm = #0x0
  3ad078: e010         	b	0x3ad09c <PointsLayer::onRestore(cocos2d::CCObject*)+0x40> @ imm = #0x20
  3ad07a: 9b01         	ldr	r3, [sp, #0x4]
  3ad07c: 2201         	movs	r2, #0x1
  3ad07e: f883 2108    	strb.w	r2, [r3, #0x108]
  3ad082: 4b08         	ldr	r3, [pc, #0x20]         @ 0x3ad0a4 <PointsLayer::onRestore(cocos2d::CCObject*)+0x48>
  3ad084: 58e3         	ldr	r3, [r4, r3]
  3ad086: 681b         	ldr	r3, [r3]
  3ad088: 4618         	mov	r0, r3
  3ad08a: 210d         	movs	r1, #0xd
  3ad08c: f04a fe98    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x4ad30
  3ad090: f084 fad0    	bl	0x431634 <InAppPurchaseBridge::restore()> @ imm = #0x845a0
  3ad094: 9b01         	ldr	r3, [sp, #0x4]
  3ad096: 2200         	movs	r2, #0x0
  3ad098: f883 2108    	strb.w	r2, [r3, #0x108]
  3ad09c: b002         	add	sp, #0x8
  3ad09e: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3ad09f); words below are literal-pool data ---
  3ad0a0: 59a2         	ldr	r2, [r4, r6]
  3ad0a2: 0058         	lsls	r0, r3, #0x1
  3ad0a4: d730         	bvc	0x3ad108 <PointsLayer::processPurchase(std::string)+0x60> @ imm = #0x60
  3ad0a6: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== PointsLayer::processPurchase
//      file offset 0x3ad0a8 (= ELF address; Ghidra 0x3bd0a8), 120 bytes, Thumb-2
  3ad0a8: b510         	push	{r4, lr}
  3ad0aa: b084         	sub	sp, #0x10
  3ad0ac: 9001         	str	r0, [sp, #0x4]
  3ad0ae: 9100         	str	r1, [sp]
  3ad0b0: 4c19         	ldr	r4, [pc, #0x64]         @ 0x3ad118 <PointsLayer::processPurchase(std::string)+0x70>
  3ad0b2: 447c         	add	r4, pc
  3ad0b4: 9801         	ldr	r0, [sp, #0x4]
  3ad0b6: f7ff fe8d    	bl	0x3acdd4 <PointsLayer::checkCanConnectToStore()> @ imm = #-0x2e6
  3ad0ba: 9b01         	ldr	r3, [sp, #0x4]
  3ad0bc: f893 3108    	ldrb.w	r3, [r3, #0x108]
  3ad0c0: 2b00         	cmp	r3, #0x0
  3ad0c2: d000         	beq	0x3ad0c6 <PointsLayer::processPurchase(std::string)+0x1e> @ imm = #0x0
  3ad0c4: e026         	b	0x3ad114 <PointsLayer::processPurchase(std::string)+0x6c> @ imm = #0x4c
  3ad0c6: 9b01         	ldr	r3, [sp, #0x4]
  3ad0c8: 2201         	movs	r2, #0x1
  3ad0ca: f883 2108    	strb.w	r2, [r3, #0x108]
  3ad0ce: 4b13         	ldr	r3, [pc, #0x4c]         @ 0x3ad11c <PointsLayer::processPurchase(std::string)+0x74>
  3ad0d0: 58e3         	ldr	r3, [r4, r3]
  3ad0d2: 681b         	ldr	r3, [r3]
  3ad0d4: 4618         	mov	r0, r3
  3ad0d6: 210d         	movs	r1, #0xd
  3ad0d8: f04a fe72    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x4ace4
  3ad0dc: 9b01         	ldr	r3, [sp, #0x4]
  3ad0de: 2201         	movs	r2, #0x1
  3ad0e0: f883 216e    	strb.w	r2, [r3, #0x16e]
  3ad0e4: ab03         	add	r3, sp, #0xc
  3ad0e6: 4618         	mov	r0, r3
  3ad0e8: 9900         	ldr	r1, [sp]
  3ad0ea: f009 f1fd    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x4093fa
  3ad0ee: ab03         	add	r3, sp, #0xc
  3ad0f0: 4618         	mov	r0, r3
  3ad0f2: f084 faa9    	bl	0x431648 <InAppPurchaseBridge::purchaseProduct(std::string)> @ imm = #0x84552
  3ad0f6: ab03         	add	r3, sp, #0xc
  3ad0f8: 4618         	mov	r0, r3
  3ad0fa: f008 f40b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x408816
  3ad0fe: 9b01         	ldr	r3, [sp, #0x4]
  3ad100: 2200         	movs	r2, #0x0
  3ad102: f883 2108    	strb.w	r2, [r3, #0x108]
  3ad106: e005         	b	0x3ad114 <PointsLayer::processPurchase(std::string)+0x6c> @ imm = #0xa
  3ad108: ab03         	add	r3, sp, #0xc
  3ad10a: 4618         	mov	r0, r3
  3ad10c: f008 f402    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x408804
  3ad110: f3da ffcc    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3daf98
  3ad114: b004         	add	sp, #0x10
  3ad116: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3ad117); words below are literal-pool data ---
  3ad118: 5956         	ldr	r6, [r2, r5]
  3ad11a: 0058         	lsls	r0, r3, #0x1
  3ad11c: d730         	bvc	0x3ad180 <PointsLayer::onBattlePack1(cocos2d::CCObject*)+0x60> @ imm = #0x60
  3ad11e: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== PointsLayer::onBattlePack1
//      file offset 0x3ad120 (= ELF address; Ghidra 0x3bd120), 228 bytes, Thumb-2
  3ad120: b510         	push	{r4, lr}
  3ad122: b086         	sub	sp, #0x18
  3ad124: 9001         	str	r0, [sp, #0x4]
  3ad126: 9100         	str	r1, [sp]
  3ad128: ab05         	add	r3, sp, #0x14
  3ad12a: 4618         	mov	r0, r3
  3ad12c: f3dd f962    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3dd2c4
  3ad130: aa03         	add	r2, sp, #0xc
  3ad132: ab05         	add	r3, sp, #0x14
  3ad134: 4610         	mov	r0, r2
  3ad136: 4a32         	ldr	r2, [pc, #0xc8]         @ 0x3ad200 <PointsLayer::onBattlePack1(cocos2d::CCObject*)+0xe0>
  3ad138: 447a         	add	r2, pc
  3ad13a: 4611         	mov	r1, r2
  3ad13c: 461a         	mov	r2, r3
  3ad13e: f009 f48f    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x40991e
  3ad142: ab05         	add	r3, sp, #0x14
  3ad144: 4618         	mov	r0, r3
  3ad146: f3dd f959    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3dd2b2
  3ad14a: aa04         	add	r2, sp, #0x10
  3ad14c: ab03         	add	r3, sp, #0xc
  3ad14e: 4610         	mov	r0, r2
  3ad150: 4619         	mov	r1, r3
  3ad152: f009 f1c9    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x409392
  3ad156: ab04         	add	r3, sp, #0x10
  3ad158: 4618         	mov	r0, r3
  3ad15a: f084 fb01    	bl	0x431760 <InAppPurchaseBridge::isProductPurchased(std::string)> @ imm = #0x84602
  3ad15e: 4603         	mov	r3, r0
  3ad160: f083 0301    	eor	r3, r3, #0x1
  3ad164: b2dc         	uxtb	r4, r3
  3ad166: ab04         	add	r3, sp, #0x10
  3ad168: 4618         	mov	r0, r3
  3ad16a: f008 f3d3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4087a6
  3ad16e: 2c00         	cmp	r4, #0x0
  3ad170: d028         	beq	0x3ad1c4 <PointsLayer::onBattlePack1(cocos2d::CCObject*)+0xa4> @ imm = #0x50
  3ad172: 9b01         	ldr	r3, [sp, #0x4]
  3ad174: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  3ad178: 681b         	ldr	r3, [r3]
  3ad17a: f503 73d2    	add.w	r3, r3, #0x1a4
  3ad17e: 681b         	ldr	r3, [r3]
  3ad180: 9a01         	ldr	r2, [sp, #0x4]
  3ad182: f8d2 2140    	ldr.w	r2, [r2, #0x140]
  3ad186: 4610         	mov	r0, r2
  3ad188: 2164         	movs	r1, #0x64
  3ad18a: 4798         	blx	r3
  3ad18c: 9b01         	ldr	r3, [sp, #0x4]
  3ad18e: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3ad192: 681b         	ldr	r3, [r3]
  3ad194: f503 73d2    	add.w	r3, r3, #0x1a4
  3ad198: 681b         	ldr	r3, [r3]
  3ad19a: 9a01         	ldr	r2, [sp, #0x4]
  3ad19c: f8d2 213c    	ldr.w	r2, [r2, #0x13c]
  3ad1a0: 4610         	mov	r0, r2
  3ad1a2: 2164         	movs	r1, #0x64
  3ad1a4: 4798         	blx	r3
  3ad1a6: aa05         	add	r2, sp, #0x14
  3ad1a8: ab03         	add	r3, sp, #0xc
  3ad1aa: 4610         	mov	r0, r2
  3ad1ac: 4619         	mov	r1, r3
  3ad1ae: f009 f19b    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x409336
  3ad1b2: ab05         	add	r3, sp, #0x14
  3ad1b4: 9801         	ldr	r0, [sp, #0x4]
  3ad1b6: 4619         	mov	r1, r3
  3ad1b8: f7ff ff76    	bl	0x3ad0a8 <PointsLayer::processPurchase(std::string)> @ imm = #-0x114
  3ad1bc: ab05         	add	r3, sp, #0x14
  3ad1be: 4618         	mov	r0, r3
  3ad1c0: f008 f3a8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x408750
  3ad1c4: ab03         	add	r3, sp, #0xc
  3ad1c6: 4618         	mov	r0, r3
  3ad1c8: f008 f3a4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x408748
  3ad1cc: e015         	b	0x3ad1fa <PointsLayer::onBattlePack1(cocos2d::CCObject*)+0xda> @ imm = #0x2a
  3ad1ce: ab05         	add	r3, sp, #0x14
  3ad1d0: 4618         	mov	r0, r3
  3ad1d2: f3dd f913    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3dd226
  3ad1d6: f3da ff69    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3daed2
  3ad1da: ab04         	add	r3, sp, #0x10
  3ad1dc: 4618         	mov	r0, r3
  3ad1de: f008 f399    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x408732
  3ad1e2: e004         	b	0x3ad1ee <PointsLayer::onBattlePack1(cocos2d::CCObject*)+0xce> @ imm = #0x8
  3ad1e4: ab05         	add	r3, sp, #0x14
  3ad1e6: 4618         	mov	r0, r3
  3ad1e8: f008 f394    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x408728
  3ad1ec: e7ff         	b	0x3ad1ee <PointsLayer::onBattlePack1(cocos2d::CCObject*)+0xce> @ imm = #-0x2
  3ad1ee: ab03         	add	r3, sp, #0xc
  3ad1f0: 4618         	mov	r0, r3
  3ad1f2: f008 f38f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40871e
  3ad1f6: f3da ff59    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3daeb2
  3ad1fa: b006         	add	sp, #0x18
  3ad1fc: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3ad1fd); words below are literal-pool data ---
  3ad1fe: bf00         	nop
  3ad200: 6344         	str	r4, [r0, #0x34]
  3ad202: 0042         	lsls	r2, r0, #0x1

// ==== PointsLayer::onBattlePack2
//      file offset 0x3ad204 (= ELF address; Ghidra 0x3bd204), 228 bytes, Thumb-2
  3ad204: b510         	push	{r4, lr}
  3ad206: b086         	sub	sp, #0x18
  3ad208: 9001         	str	r0, [sp, #0x4]
  3ad20a: 9100         	str	r1, [sp]
  3ad20c: ab05         	add	r3, sp, #0x14
  3ad20e: 4618         	mov	r0, r3
  3ad210: f3dd f8f0    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3dd1e0
  3ad214: aa03         	add	r2, sp, #0xc
  3ad216: ab05         	add	r3, sp, #0x14
  3ad218: 4610         	mov	r0, r2
  3ad21a: 4a32         	ldr	r2, [pc, #0xc8]         @ 0x3ad2e4 <PointsLayer::onBattlePack2(cocos2d::CCObject*)+0xe0>
  3ad21c: 447a         	add	r2, pc
  3ad21e: 4611         	mov	r1, r2
  3ad220: 461a         	mov	r2, r3
  3ad222: f009 f41d    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x40983a
  3ad226: ab05         	add	r3, sp, #0x14
  3ad228: 4618         	mov	r0, r3
  3ad22a: f3dd f8e7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3dd1ce
  3ad22e: aa04         	add	r2, sp, #0x10
  3ad230: ab03         	add	r3, sp, #0xc
  3ad232: 4610         	mov	r0, r2
  3ad234: 4619         	mov	r1, r3
  3ad236: f009 f157    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x4092ae
  3ad23a: ab04         	add	r3, sp, #0x10
  3ad23c: 4618         	mov	r0, r3
  3ad23e: f084 fa8f    	bl	0x431760 <InAppPurchaseBridge::isProductPurchased(std::string)> @ imm = #0x8451e
  3ad242: 4603         	mov	r3, r0
  3ad244: f083 0301    	eor	r3, r3, #0x1
  3ad248: b2dc         	uxtb	r4, r3
  3ad24a: ab04         	add	r3, sp, #0x10
  3ad24c: 4618         	mov	r0, r3
  3ad24e: f008 f361    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4086c2
  3ad252: 2c00         	cmp	r4, #0x0
  3ad254: d028         	beq	0x3ad2a8 <PointsLayer::onBattlePack2(cocos2d::CCObject*)+0xa4> @ imm = #0x50
  3ad256: 9b01         	ldr	r3, [sp, #0x4]
  3ad258: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3ad25c: 681b         	ldr	r3, [r3]
  3ad25e: f503 73d2    	add.w	r3, r3, #0x1a4
  3ad262: 681b         	ldr	r3, [r3]
  3ad264: 9a01         	ldr	r2, [sp, #0x4]
  3ad266: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  3ad26a: 4610         	mov	r0, r2
  3ad26c: 2164         	movs	r1, #0x64
  3ad26e: 4798         	blx	r3
  3ad270: 9b01         	ldr	r3, [sp, #0x4]
  3ad272: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3ad276: 681b         	ldr	r3, [r3]
  3ad278: f503 73d2    	add.w	r3, r3, #0x1a4
  3ad27c: 681b         	ldr	r3, [r3]
  3ad27e: 9a01         	ldr	r2, [sp, #0x4]
  3ad280: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3ad284: 4610         	mov	r0, r2
  3ad286: 2164         	movs	r1, #0x64
  3ad288: 4798         	blx	r3
  3ad28a: aa05         	add	r2, sp, #0x14
  3ad28c: ab03         	add	r3, sp, #0xc
  3ad28e: 4610         	mov	r0, r2
  3ad290: 4619         	mov	r1, r3
  3ad292: f009 f129    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x409252
  3ad296: ab05         	add	r3, sp, #0x14
  3ad298: 9801         	ldr	r0, [sp, #0x4]
  3ad29a: 4619         	mov	r1, r3
  3ad29c: f7ff ff04    	bl	0x3ad0a8 <PointsLayer::processPurchase(std::string)> @ imm = #-0x1f8
  3ad2a0: ab05         	add	r3, sp, #0x14
  3ad2a2: 4618         	mov	r0, r3
  3ad2a4: f008 f336    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40866c
  3ad2a8: ab03         	add	r3, sp, #0xc
  3ad2aa: 4618         	mov	r0, r3
  3ad2ac: f008 f332    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x408664
  3ad2b0: e015         	b	0x3ad2de <PointsLayer::onBattlePack2(cocos2d::CCObject*)+0xda> @ imm = #0x2a
  3ad2b2: ab05         	add	r3, sp, #0x14
  3ad2b4: 4618         	mov	r0, r3
  3ad2b6: f3dd f8a1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3dd142
  3ad2ba: f3da fef7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3dadee
  3ad2be: ab04         	add	r3, sp, #0x10
  3ad2c0: 4618         	mov	r0, r3
  3ad2c2: f008 f327    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40864e
  3ad2c6: e004         	b	0x3ad2d2 <PointsLayer::onBattlePack2(cocos2d::CCObject*)+0xce> @ imm = #0x8
  3ad2c8: ab05         	add	r3, sp, #0x14
  3ad2ca: 4618         	mov	r0, r3
  3ad2cc: f008 f322    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x408644
  3ad2d0: e7ff         	b	0x3ad2d2 <PointsLayer::onBattlePack2(cocos2d::CCObject*)+0xce> @ imm = #-0x2
  3ad2d2: ab03         	add	r3, sp, #0xc
  3ad2d4: 4618         	mov	r0, r3
  3ad2d6: f008 f31d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40863a
  3ad2da: f3da fee7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3dadce
  3ad2de: b006         	add	sp, #0x18
  3ad2e0: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3ad2e1); words below are literal-pool data ---
  3ad2e2: bf00         	nop
  3ad2e4: 628c         	str	r4, [r1, #0x28]
  3ad2e6: 0042         	lsls	r2, r0, #0x1

// ==== PointsLayer::onBattlePack3
//      file offset 0x3ad2e8 (= ELF address; Ghidra 0x3bd2e8), 228 bytes, Thumb-2
  3ad2e8: b510         	push	{r4, lr}
  3ad2ea: b086         	sub	sp, #0x18
  3ad2ec: 9001         	str	r0, [sp, #0x4]
  3ad2ee: 9100         	str	r1, [sp]
  3ad2f0: ab05         	add	r3, sp, #0x14
  3ad2f2: 4618         	mov	r0, r3
  3ad2f4: f3dd f87e    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3dd0fc
  3ad2f8: aa03         	add	r2, sp, #0xc
  3ad2fa: ab05         	add	r3, sp, #0x14
  3ad2fc: 4610         	mov	r0, r2
  3ad2fe: 4a32         	ldr	r2, [pc, #0xc8]         @ 0x3ad3c8 <PointsLayer::onBattlePack3(cocos2d::CCObject*)+0xe0>
  3ad300: 447a         	add	r2, pc
  3ad302: 4611         	mov	r1, r2
  3ad304: 461a         	mov	r2, r3
  3ad306: f009 f3ab    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x409756
  3ad30a: ab05         	add	r3, sp, #0x14
  3ad30c: 4618         	mov	r0, r3
  3ad30e: f3dd f875    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3dd0ea
  3ad312: aa04         	add	r2, sp, #0x10
  3ad314: ab03         	add	r3, sp, #0xc
  3ad316: 4610         	mov	r0, r2
  3ad318: 4619         	mov	r1, r3
  3ad31a: f009 f0e5    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x4091ca
  3ad31e: ab04         	add	r3, sp, #0x10
  3ad320: 4618         	mov	r0, r3
  3ad322: f084 fa1d    	bl	0x431760 <InAppPurchaseBridge::isProductPurchased(std::string)> @ imm = #0x8443a
  3ad326: 4603         	mov	r3, r0
  3ad328: f083 0301    	eor	r3, r3, #0x1
  3ad32c: b2dc         	uxtb	r4, r3
  3ad32e: ab04         	add	r3, sp, #0x10
  3ad330: 4618         	mov	r0, r3
  3ad332: f008 f2ef    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4085de
  3ad336: 2c00         	cmp	r4, #0x0
  3ad338: d028         	beq	0x3ad38c <PointsLayer::onBattlePack3(cocos2d::CCObject*)+0xa4> @ imm = #0x50
  3ad33a: 9b01         	ldr	r3, [sp, #0x4]
  3ad33c: f8d3 3158    	ldr.w	r3, [r3, #0x158]
  3ad340: 681b         	ldr	r3, [r3]
  3ad342: f503 73d2    	add.w	r3, r3, #0x1a4
  3ad346: 681b         	ldr	r3, [r3]
  3ad348: 9a01         	ldr	r2, [sp, #0x4]
  3ad34a: f8d2 2158    	ldr.w	r2, [r2, #0x158]
  3ad34e: 4610         	mov	r0, r2
  3ad350: 2164         	movs	r1, #0x64
  3ad352: 4798         	blx	r3
  3ad354: 9b01         	ldr	r3, [sp, #0x4]
  3ad356: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3ad35a: 681b         	ldr	r3, [r3]
  3ad35c: f503 73d2    	add.w	r3, r3, #0x1a4
  3ad360: 681b         	ldr	r3, [r3]
  3ad362: 9a01         	ldr	r2, [sp, #0x4]
  3ad364: f8d2 2154    	ldr.w	r2, [r2, #0x154]
  3ad368: 4610         	mov	r0, r2
  3ad36a: 2164         	movs	r1, #0x64
  3ad36c: 4798         	blx	r3
  3ad36e: aa05         	add	r2, sp, #0x14
  3ad370: ab03         	add	r3, sp, #0xc
  3ad372: 4610         	mov	r0, r2
  3ad374: 4619         	mov	r1, r3
  3ad376: f009 f0b7    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x40916e
  3ad37a: ab05         	add	r3, sp, #0x14
  3ad37c: 9801         	ldr	r0, [sp, #0x4]
  3ad37e: 4619         	mov	r1, r3
  3ad380: f7ff fe92    	bl	0x3ad0a8 <PointsLayer::processPurchase(std::string)> @ imm = #-0x2dc
  3ad384: ab05         	add	r3, sp, #0x14
  3ad386: 4618         	mov	r0, r3
  3ad388: f008 f2c4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x408588
  3ad38c: ab03         	add	r3, sp, #0xc
  3ad38e: 4618         	mov	r0, r3
  3ad390: f008 f2c0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x408580
  3ad394: e015         	b	0x3ad3c2 <PointsLayer::onBattlePack3(cocos2d::CCObject*)+0xda> @ imm = #0x2a
  3ad396: ab05         	add	r3, sp, #0x14
  3ad398: 4618         	mov	r0, r3
  3ad39a: f3dd f82f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3dd05e
  3ad39e: f3da fe85    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3dad0a
  3ad3a2: ab04         	add	r3, sp, #0x10
  3ad3a4: 4618         	mov	r0, r3
  3ad3a6: f008 f2b5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40856a
  3ad3aa: e004         	b	0x3ad3b6 <PointsLayer::onBattlePack3(cocos2d::CCObject*)+0xce> @ imm = #0x8
  3ad3ac: ab05         	add	r3, sp, #0x14
  3ad3ae: 4618         	mov	r0, r3
  3ad3b0: f008 f2b0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x408560
  3ad3b4: e7ff         	b	0x3ad3b6 <PointsLayer::onBattlePack3(cocos2d::CCObject*)+0xce> @ imm = #-0x2
  3ad3b6: ab03         	add	r3, sp, #0xc
  3ad3b8: 4618         	mov	r0, r3
  3ad3ba: f008 f2ab    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x408556
  3ad3be: f3da fe75    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3dacea
  3ad3c2: b006         	add	sp, #0x18
  3ad3c4: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3ad3c5); words below are literal-pool data ---
  3ad3c6: bf00         	nop
  3ad3c8: 61c8         	str	r0, [r1, #0x1c]
  3ad3ca: 0042         	lsls	r2, r0, #0x1

// ==== PointsLayer::onBattlePack4
//      file offset 0x3ad3cc (= ELF address; Ghidra 0x3bd3cc), 228 bytes, Thumb-2
  3ad3cc: b510         	push	{r4, lr}
  3ad3ce: b086         	sub	sp, #0x18
  3ad3d0: 9001         	str	r0, [sp, #0x4]
  3ad3d2: 9100         	str	r1, [sp]
  3ad3d4: ab05         	add	r3, sp, #0x14
  3ad3d6: 4618         	mov	r0, r3
  3ad3d8: f3dd f80c    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3dd018
  3ad3dc: aa03         	add	r2, sp, #0xc
  3ad3de: ab05         	add	r3, sp, #0x14
  3ad3e0: 4610         	mov	r0, r2
  3ad3e2: 4a32         	ldr	r2, [pc, #0xc8]         @ 0x3ad4ac <PointsLayer::onBattlePack4(cocos2d::CCObject*)+0xe0>
  3ad3e4: 447a         	add	r2, pc
  3ad3e6: 4611         	mov	r1, r2
  3ad3e8: 461a         	mov	r2, r3
  3ad3ea: f009 f339    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x409672
  3ad3ee: ab05         	add	r3, sp, #0x14
  3ad3f0: 4618         	mov	r0, r3
  3ad3f2: f3dd f803    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3dd006
  3ad3f6: aa04         	add	r2, sp, #0x10
  3ad3f8: ab03         	add	r3, sp, #0xc
  3ad3fa: 4610         	mov	r0, r2
  3ad3fc: 4619         	mov	r1, r3
  3ad3fe: f009 f073    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x4090e6
  3ad402: ab04         	add	r3, sp, #0x10
  3ad404: 4618         	mov	r0, r3
  3ad406: f084 f9ab    	bl	0x431760 <InAppPurchaseBridge::isProductPurchased(std::string)> @ imm = #0x84356
  3ad40a: 4603         	mov	r3, r0
  3ad40c: f083 0301    	eor	r3, r3, #0x1
  3ad410: b2dc         	uxtb	r4, r3
  3ad412: ab04         	add	r3, sp, #0x10
  3ad414: 4618         	mov	r0, r3
  3ad416: f008 f27d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4084fa
  3ad41a: 2c00         	cmp	r4, #0x0
  3ad41c: d028         	beq	0x3ad470 <PointsLayer::onBattlePack4(cocos2d::CCObject*)+0xa4> @ imm = #0x50
  3ad41e: 9b01         	ldr	r3, [sp, #0x4]
  3ad420: f8d3 3164    	ldr.w	r3, [r3, #0x164]
  3ad424: 681b         	ldr	r3, [r3]
  3ad426: f503 73d2    	add.w	r3, r3, #0x1a4
  3ad42a: 681b         	ldr	r3, [r3]
  3ad42c: 9a01         	ldr	r2, [sp, #0x4]
  3ad42e: f8d2 2164    	ldr.w	r2, [r2, #0x164]
  3ad432: 4610         	mov	r0, r2
  3ad434: 2164         	movs	r1, #0x64
  3ad436: 4798         	blx	r3
  3ad438: 9b01         	ldr	r3, [sp, #0x4]
  3ad43a: f8d3 3160    	ldr.w	r3, [r3, #0x160]
  3ad43e: 681b         	ldr	r3, [r3]
  3ad440: f503 73d2    	add.w	r3, r3, #0x1a4
  3ad444: 681b         	ldr	r3, [r3]
  3ad446: 9a01         	ldr	r2, [sp, #0x4]
  3ad448: f8d2 2160    	ldr.w	r2, [r2, #0x160]
  3ad44c: 4610         	mov	r0, r2
  3ad44e: 2164         	movs	r1, #0x64
  3ad450: 4798         	blx	r3
  3ad452: aa05         	add	r2, sp, #0x14
  3ad454: ab03         	add	r3, sp, #0xc
  3ad456: 4610         	mov	r0, r2
  3ad458: 4619         	mov	r1, r3
  3ad45a: f009 f045    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x40908a
  3ad45e: ab05         	add	r3, sp, #0x14
  3ad460: 9801         	ldr	r0, [sp, #0x4]
  3ad462: 4619         	mov	r1, r3
  3ad464: f7ff fe20    	bl	0x3ad0a8 <PointsLayer::processPurchase(std::string)> @ imm = #-0x3c0
  3ad468: ab05         	add	r3, sp, #0x14
  3ad46a: 4618         	mov	r0, r3
  3ad46c: f008 f252    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4084a4
  3ad470: ab03         	add	r3, sp, #0xc
  3ad472: 4618         	mov	r0, r3
  3ad474: f008 f24e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40849c
  3ad478: e015         	b	0x3ad4a6 <PointsLayer::onBattlePack4(cocos2d::CCObject*)+0xda> @ imm = #0x2a
  3ad47a: ab05         	add	r3, sp, #0x14
  3ad47c: 4618         	mov	r0, r3
  3ad47e: f3dc ffbd    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3dcf7a
  3ad482: f3da fe13    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3dac26
  3ad486: ab04         	add	r3, sp, #0x10
  3ad488: 4618         	mov	r0, r3
  3ad48a: f008 f243    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x408486
  3ad48e: e004         	b	0x3ad49a <PointsLayer::onBattlePack4(cocos2d::CCObject*)+0xce> @ imm = #0x8
  3ad490: ab05         	add	r3, sp, #0x14
  3ad492: 4618         	mov	r0, r3
  3ad494: f008 f23e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40847c
  3ad498: e7ff         	b	0x3ad49a <PointsLayer::onBattlePack4(cocos2d::CCObject*)+0xce> @ imm = #-0x2
  3ad49a: ab03         	add	r3, sp, #0xc
  3ad49c: 4618         	mov	r0, r3
  3ad49e: f008 f239    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x408472
  3ad4a2: f3da fe03    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3dac06
  3ad4a6: b006         	add	sp, #0x18
  3ad4a8: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3ad4a9); words below are literal-pool data ---
  3ad4aa: bf00         	nop
  3ad4ac: 6104         	str	r4, [r0, #0x10]
  3ad4ae: 0042         	lsls	r2, r0, #0x1

// ==== PointsLayer::onProPack
//      file offset 0x3ad4b0 (= ELF address; Ghidra 0x3bd4b0), 192 bytes, Thumb-2
  3ad4b0: b530         	push	{r4, r5, lr}
  3ad4b2: b085         	sub	sp, #0x14
  3ad4b4: 9001         	str	r0, [sp, #0x4]
  3ad4b6: 9100         	str	r1, [sp]
  3ad4b8: 4c29         	ldr	r4, [pc, #0xa4]         @ 0x3ad560 <PointsLayer::onProPack(cocos2d::CCObject*)+0xb0>
  3ad4ba: 447c         	add	r4, pc
  3ad4bc: ab02         	add	r3, sp, #0x8
  3ad4be: 4618         	mov	r0, r3
  3ad4c0: f3dc ff98    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3dcf30
  3ad4c4: aa03         	add	r2, sp, #0xc
  3ad4c6: ab02         	add	r3, sp, #0x8
  3ad4c8: 4610         	mov	r0, r2
  3ad4ca: 4a26         	ldr	r2, [pc, #0x98]         @ 0x3ad564 <PointsLayer::onProPack(cocos2d::CCObject*)+0xb4>
  3ad4cc: 447a         	add	r2, pc
  3ad4ce: 4611         	mov	r1, r2
  3ad4d0: 461a         	mov	r2, r3
  3ad4d2: f009 f2c5    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x40958a
  3ad4d6: ab03         	add	r3, sp, #0xc
  3ad4d8: 4618         	mov	r0, r3
  3ad4da: f084 f941    	bl	0x431760 <InAppPurchaseBridge::isProductPurchased(std::string)> @ imm = #0x84282
  3ad4de: 4603         	mov	r3, r0
  3ad4e0: f083 0301    	eor	r3, r3, #0x1
  3ad4e4: b2dd         	uxtb	r5, r3
  3ad4e6: ab03         	add	r3, sp, #0xc
  3ad4e8: 4618         	mov	r0, r3
  3ad4ea: f008 f213    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x408426
  3ad4ee: ab02         	add	r3, sp, #0x8
  3ad4f0: 4618         	mov	r0, r3
  3ad4f2: f3dc ff83    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3dcf06
  3ad4f6: 2d00         	cmp	r5, #0x0
  3ad4f8: d02e         	beq	0x3ad558 <PointsLayer::onProPack(cocos2d::CCObject*)+0xa8> @ imm = #0x5c
  3ad4fa: 9b01         	ldr	r3, [sp, #0x4]
  3ad4fc: f893 3108    	ldrb.w	r3, [r3, #0x108]
  3ad500: 2b00         	cmp	r3, #0x0
  3ad502: d000         	beq	0x3ad506 <PointsLayer::onProPack(cocos2d::CCObject*)+0x56> @ imm = #0x0
  3ad504: e028         	b	0x3ad558 <PointsLayer::onProPack(cocos2d::CCObject*)+0xa8> @ imm = #0x50
  3ad506: 9b01         	ldr	r3, [sp, #0x4]
  3ad508: 2201         	movs	r2, #0x1
  3ad50a: f883 2108    	strb.w	r2, [r3, #0x108]
  3ad50e: 4b16         	ldr	r3, [pc, #0x58]         @ 0x3ad568 <PointsLayer::onProPack(cocos2d::CCObject*)+0xb8>
  3ad510: 58e3         	ldr	r3, [r4, r3]
  3ad512: 681b         	ldr	r3, [r3]
  3ad514: 4618         	mov	r0, r3
  3ad516: 210d         	movs	r1, #0xd
  3ad518: f04a fc52    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x4a8a4
  3ad51c: f1ee f82a    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x1ee054
  3ad520: 4604         	mov	r4, r0
  3ad522: 4b12         	ldr	r3, [pc, #0x48]         @ 0x3ad56c <PointsLayer::onProPack(cocos2d::CCObject*)+0xbc>
  3ad524: 447b         	add	r3, pc
  3ad526: 681d         	ldr	r5, [r3]
  3ad528: f009 ff78    	bl	0x3b741c <PurchaseLayer::scene()> @ imm = #0x9ef0
  3ad52c: 4603         	mov	r3, r0
  3ad52e: 4628         	mov	r0, r5
  3ad530: 4619         	mov	r1, r3
  3ad532: f203 fee9    	bl	0x5b1308 <cocos2d::CCTransitionSlideInL::create(float, cocos2d::CCScene*)> @ imm = #0x203dd2
  3ad536: 4603         	mov	r3, r0
  3ad538: 4620         	mov	r0, r4
  3ad53a: 4619         	mov	r1, r3
  3ad53c: f1ee ff0e    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x1eee1c
  3ad540: e00b         	b	0x3ad55a <PointsLayer::onProPack(cocos2d::CCObject*)+0xaa> @ imm = #0x16
  3ad542: ab03         	add	r3, sp, #0xc
  3ad544: 4618         	mov	r0, r3
  3ad546: f008 f1e5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4083ca
  3ad54a: e7ff         	b	0x3ad54c <PointsLayer::onProPack(cocos2d::CCObject*)+0x9c> @ imm = #-0x2
  3ad54c: ab02         	add	r3, sp, #0x8
  3ad54e: 4618         	mov	r0, r3
  3ad550: f3dc ff54    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3dcea8
  3ad554: f3da fdaa    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3dab54
  3ad558: bf00         	nop
  3ad55a: b005         	add	sp, #0x14
  3ad55c: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3ad55d); words below are literal-pool data ---
  3ad55e: bf00         	nop
  3ad560: 554e         	strb	r6, [r1, r5]
  3ad562: 0058         	lsls	r0, r3, #0x1
  3ad564: 603c         	str	r4, [r7]
  3ad566: 0042         	lsls	r2, r0, #0x1
  3ad568: d730         	bvc	0x3ad5cc <PointsLayer::onBack(cocos2d::CCObject*)+0x5c> @ imm = #0x60
  3ad56a: ffff 6084    	<unknown>
  3ad56e: 0058         	lsls	r0, r3, #0x1

// ==== PointsLayer::onBack
//      file offset 0x3ad570 (= ELF address; Ghidra 0x3bd570), 100 bytes, Thumb-2
  3ad570: b530         	push	{r4, r5, lr}
  3ad572: b083         	sub	sp, #0xc
  3ad574: 9001         	str	r0, [sp, #0x4]
  3ad576: 9100         	str	r1, [sp]
  3ad578: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x3ad5c8 <PointsLayer::onBack(cocos2d::CCObject*)+0x58>
  3ad57a: 447a         	add	r2, pc
  3ad57c: 9b01         	ldr	r3, [sp, #0x4]
  3ad57e: f893 3108    	ldrb.w	r3, [r3, #0x108]
  3ad582: 2b00         	cmp	r3, #0x0
  3ad584: d000         	beq	0x3ad588 <PointsLayer::onBack(cocos2d::CCObject*)+0x18> @ imm = #0x0
  3ad586: e01c         	b	0x3ad5c2 <PointsLayer::onBack(cocos2d::CCObject*)+0x52> @ imm = #0x38
  3ad588: 9b01         	ldr	r3, [sp, #0x4]
  3ad58a: 2101         	movs	r1, #0x1
  3ad58c: f883 1108    	strb.w	r1, [r3, #0x108]
  3ad590: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x3ad5cc <PointsLayer::onBack(cocos2d::CCObject*)+0x5c>
  3ad592: 58d3         	ldr	r3, [r2, r3]
  3ad594: 681b         	ldr	r3, [r3]
  3ad596: 4618         	mov	r0, r3
  3ad598: 210d         	movs	r1, #0xd
  3ad59a: f04a fc11    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x4a822
  3ad59e: f1ed ffe9    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x1edfd2
  3ad5a2: 4604         	mov	r4, r0
  3ad5a4: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x3ad5d0 <PointsLayer::onBack(cocos2d::CCObject*)+0x60>
  3ad5a6: 447b         	add	r3, pc
  3ad5a8: 681d         	ldr	r5, [r3]
  3ad5aa: f052 fee9    	bl	0x400380 <StoreLayer::scene()> @ imm = #0x52dd2
  3ad5ae: 4603         	mov	r3, r0
  3ad5b0: 4628         	mov	r0, r5
  3ad5b2: 4619         	mov	r1, r3
  3ad5b4: f203 fea8    	bl	0x5b1308 <cocos2d::CCTransitionSlideInL::create(float, cocos2d::CCScene*)> @ imm = #0x203d50
  3ad5b8: 4603         	mov	r3, r0
  3ad5ba: 4620         	mov	r0, r4
  3ad5bc: 4619         	mov	r1, r3
  3ad5be: f1ee fecd    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x1eed9a
  3ad5c2: b003         	add	sp, #0xc
  3ad5c4: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3ad5c5); words below are literal-pool data ---
  3ad5c6: bf00         	nop
  3ad5c8: 548e         	strb	r6, [r1, r2]
  3ad5ca: 0058         	lsls	r0, r3, #0x1
  3ad5cc: d730         	bvc	0x3ad630 <PointsLayer::onBack(cocos2d::CCObject*)+0xc0> @ imm = #0x60
  3ad5ce: ffff 6002    	<unknown>
  3ad5d2: 0058         	lsls	r0, r3, #0x1
