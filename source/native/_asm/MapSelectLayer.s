// MapSelectLayer: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 17 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../MapSelectLayer.cpp

// ==== MapSelectLayer::create
//      file offset 0x366694 (= ELF address; Ghidra 0x376694), 112 bytes, Thumb-2
  366694: b510         	push	{r4, lr}
  366696: b082         	sub	sp, #0x8
  366698: f44f 709e    	mov.w	r0, #0x13c
  36669c: f021 f162    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x4212c4
  3666a0: 4603         	mov	r3, r0
  3666a2: 461c         	mov	r4, r3
  3666a4: 4620         	mov	r0, r4
  3666a6: f000 f82d    	bl	0x366704 <MapSelectLayer::MapSelectLayer()> @ imm = #0x5a
  3666aa: 9401         	str	r4, [sp, #0x4]
  3666ac: 9b01         	ldr	r3, [sp, #0x4]
  3666ae: 2b00         	cmp	r3, #0x0
  3666b0: d00a         	beq	0x3666c8 <MapSelectLayer::create()+0x34> @ imm = #0x14
  3666b2: 9b01         	ldr	r3, [sp, #0x4]
  3666b4: 681b         	ldr	r3, [r3]
  3666b6: 3318         	adds	r3, #0x18
  3666b8: 681b         	ldr	r3, [r3]
  3666ba: 9801         	ldr	r0, [sp, #0x4]
  3666bc: 4798         	blx	r3
  3666be: 4603         	mov	r3, r0
  3666c0: 2b00         	cmp	r3, #0x0
  3666c2: d001         	beq	0x3666c8 <MapSelectLayer::create()+0x34> @ imm = #0x2
  3666c4: 2301         	movs	r3, #0x1
  3666c6: e000         	b	0x3666ca <MapSelectLayer::create()+0x36> @ imm = #0x0
  3666c8: 2300         	movs	r3, #0x0
  3666ca: 2b00         	cmp	r3, #0x0
  3666cc: d005         	beq	0x3666da <MapSelectLayer::create()+0x46> @ imm = #0xa
  3666ce: 9b01         	ldr	r3, [sp, #0x4]
  3666d0: 4618         	mov	r0, r3
  3666d2: f231 fc13    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x231826
  3666d6: 9b01         	ldr	r3, [sp, #0x4]
  3666d8: e011         	b	0x3666fe <MapSelectLayer::create()+0x6a> @ imm = #0x22
  3666da: 9b01         	ldr	r3, [sp, #0x4]
  3666dc: 2b00         	cmp	r3, #0x0
  3666de: d005         	beq	0x3666ec <MapSelectLayer::create()+0x58> @ imm = #0xa
  3666e0: 9b01         	ldr	r3, [sp, #0x4]
  3666e2: 681b         	ldr	r3, [r3]
  3666e4: 3308         	adds	r3, #0x8
  3666e6: 681b         	ldr	r3, [r3]
  3666e8: 9801         	ldr	r0, [sp, #0x4]
  3666ea: 4798         	blx	r3
  3666ec: 2300         	movs	r3, #0x0
  3666ee: 9301         	str	r3, [sp, #0x4]
  3666f0: 2300         	movs	r3, #0x0
  3666f2: e004         	b	0x3666fe <MapSelectLayer::create()+0x6a> @ imm = #0x8
  3666f4: 4620         	mov	r0, r4
  3666f6: f021 f4d5    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4219aa
  3666fa: f021 f4d7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4219ae
  3666fe: 4618         	mov	r0, r3
  366700: b002         	add	sp, #0x8
  366702: bd10         	pop	{r4, pc}

// ==== MapSelectLayer::MapSelectLayer
//      file offset 0x366704 (= ELF address; Ghidra 0x376704), 88 bytes, Thumb-2
  366704: b510         	push	{r4, lr}
  366706: b082         	sub	sp, #0x8
  366708: 9001         	str	r0, [sp, #0x4]
  36670a: 4c12         	ldr	r4, [pc, #0x48]         @ 0x366754 <MapSelectLayer::MapSelectLayer()+0x50>
  36670c: 447c         	add	r4, pc
  36670e: 9b01         	ldr	r3, [sp, #0x4]
  366710: 4618         	mov	r0, r3
  366712: f246 fca3    	bl	0x5ad05c <cocos2d::CCLayer::CCLayer()> @ imm = #0x246946
  366716: 9b01         	ldr	r3, [sp, #0x4]
  366718: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x366758 <MapSelectLayer::MapSelectLayer()+0x54>
  36671a: 58a2         	ldr	r2, [r4, r2]
  36671c: 3208         	adds	r2, #0x8
  36671e: 601a         	str	r2, [r3]
  366720: 9b01         	ldr	r3, [sp, #0x4]
  366722: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x366758 <MapSelectLayer::MapSelectLayer()+0x54>
  366724: 58a2         	ldr	r2, [r4, r2]
  366726: f502 7204    	add.w	r2, r2, #0x210
  36672a: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  36672e: 9b01         	ldr	r3, [sp, #0x4]
  366730: 4a09         	ldr	r2, [pc, #0x24]         @ 0x366758 <MapSelectLayer::MapSelectLayer()+0x54>
  366732: 58a2         	ldr	r2, [r4, r2]
  366734: f502 7210    	add.w	r2, r2, #0x240
  366738: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  36673c: 9b01         	ldr	r3, [sp, #0x4]
  36673e: 4a06         	ldr	r2, [pc, #0x18]         @ 0x366758 <MapSelectLayer::MapSelectLayer()+0x54>
  366740: 58a2         	ldr	r2, [r4, r2]
  366742: f502 7213    	add.w	r2, r2, #0x24c
  366746: f8c3 20ec    	str.w	r2, [r3, #0xec]
  36674a: 9b01         	ldr	r3, [sp, #0x4]
  36674c: 4618         	mov	r0, r3
  36674e: b002         	add	sp, #0x8
  366750: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x366751); words below are literal-pool data ---
  366752: bf00         	nop
  366754: c2fc         	stm	r2!, {r2, r3, r4, r5, r6, r7}
  366756: 005c         	lsls	r4, r3, #0x1
  366758: dba0         	blt	0x36669c <MapSelectLayer::create()+0x8> @ imm = #-0xc0
  36675a: ffff b500    	<unknown>

// ==== MapSelectLayer::scene
//      file offset 0x36675c (= ELF address; Ghidra 0x37675c), 46 bytes, Thumb-2
  36675c: b500         	push	{lr}
  36675e: b083         	sub	sp, #0xc
  366760: f249 f97e    	bl	0x5afa60 <cocos2d::CCScene::create()> @ imm = #0x2492fc
  366764: 4603         	mov	r3, r0
  366766: 9300         	str	r3, [sp]
  366768: f7ff ff94    	bl	0x366694 <MapSelectLayer::create()> @ imm = #-0xd8
  36676c: 4603         	mov	r3, r0
  36676e: 9301         	str	r3, [sp, #0x4]
  366770: 9b00         	ldr	r3, [sp]
  366772: 681b         	ldr	r3, [r3]
  366774: 33c8         	adds	r3, #0xc8
  366776: 681b         	ldr	r3, [r3]
  366778: 9a00         	ldr	r2, [sp]
  36677a: 4610         	mov	r0, r2
  36677c: 9901         	ldr	r1, [sp, #0x4]
  36677e: 4798         	blx	r3
  366780: 9b00         	ldr	r3, [sp]
  366782: 4618         	mov	r0, r3
  366784: b003         	add	sp, #0xc
  366786: f85d fb04    	ldr	pc, [sp], #4

// ==== MapSelectLayer::init
//      file offset 0x366790 (= ELF address; Ghidra 0x376790), 2484 bytes, Thumb-2
  366790: b570         	push	{r4, r5, r6, lr}
  366792: ed2d 8b02    	vpush	{d8}
  366796: b0b0         	sub	sp, #0xc0
  366798: 9003         	str	r0, [sp, #0xc]
  36679a: 4c09         	ldr	r4, [pc, #0x24]         @ 0x3667c0 <MapSelectLayer::init()+0x30>
  36679c: 447c         	add	r4, pc
  36679e: 9b03         	ldr	r3, [sp, #0xc]
  3667a0: 4618         	mov	r0, r3
  3667a2: f246 fd29    	bl	0x5ad1f8 <cocos2d::CCLayer::init()> @ imm = #0x246a52
  3667a6: 4603         	mov	r3, r0
  3667a8: f88d 3013    	strb.w	r3, [sp, #0x13]
  3667ac: f89d 3013    	ldrb.w	r3, [sp, #0x13]
  3667b0: f083 0301    	eor	r3, r3, #0x1
  3667b4: b2db         	uxtb	r3, r3
  3667b6: 2b00         	cmp	r3, #0x0
  3667b8: d004         	beq	0x3667c4 <MapSelectLayer::init()+0x34> @ imm = #0x8
  3667ba: 2300         	movs	r3, #0x0
  3667bc: f000 bcb5    	b.w	0x36712a <MapSelectLayer::init()+0x99a> @ imm = #0x96a
  3667c0: c26c         	stm	r2!, {r2, r3, r5, r6}
  3667c2: 005c         	lsls	r4, r3, #0x1
  3667c4: 4beb         	ldr	r3, [pc, #0x3ac]        @ 0x366b74 <MapSelectLayer::init()+0x3e4>
  3667c6: 58e3         	ldr	r3, [r4, r3]
  3667c8: 2200         	movs	r2, #0x0
  3667ca: 701a         	strb	r2, [r3]
  3667cc: 9b03         	ldr	r3, [sp, #0xc]
  3667ce: 2200         	movs	r2, #0x0
  3667d0: f883 2108    	strb.w	r2, [r3, #0x108]
  3667d4: 9b03         	ldr	r3, [sp, #0xc]
  3667d6: 220c         	movs	r2, #0xc
  3667d8: f8c3 212c    	str.w	r2, [r3, #0x12c]
  3667dc: 9b03         	ldr	r3, [sp, #0xc]
  3667de: 2200         	movs	r2, #0x0
  3667e0: f8c3 2128    	str.w	r2, [r3, #0x128]
  3667e4: ab16         	add	r3, sp, #0x58
  3667e6: 4618         	mov	r0, r3
  3667e8: 4be3         	ldr	r3, [pc, #0x38c]        @ 0x366b78 <MapSelectLayer::init()+0x3e8>
  3667ea: 58e3         	ldr	r3, [r4, r3]
  3667ec: 4619         	mov	r1, r3
  3667ee: f22c fc5f    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x22c8be
  3667f2: ed9d 7a16    	vldr	s14, [sp, #88]
  3667f6: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3667fa: eec7 6a27    	vdiv.f32	s13, s14, s15
  3667fe: ed9d 7a17    	vldr	s14, [sp, #92]
  366802: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  366806: eec7 7a27    	vdiv.f32	s15, s14, s15
  36680a: ab18         	add	r3, sp, #0x60
  36680c: 4618         	mov	r0, r3
  36680e: ee16 1a90    	vmov	r1, s13
  366812: ee17 2a90    	vmov	r2, s15
  366816: f22c fa6b    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x22c4d6
  36681a: 4bd8         	ldr	r3, [pc, #0x360]        @ 0x366b7c <MapSelectLayer::init()+0x3ec>
  36681c: 447b         	add	r3, pc
  36681e: 4618         	mov	r0, r3
  366820: f271 fd70    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x271ae0
  366824: 4603         	mov	r3, r0
  366826: 9306         	str	r3, [sp, #0x18]
  366828: 4bd5         	ldr	r3, [pc, #0x354]        @ 0x366b80 <MapSelectLayer::init()+0x3f0>
  36682a: 447b         	add	r3, pc
  36682c: 4618         	mov	r0, r3
  36682e: f271 fd69    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x271ad2
  366832: 4603         	mov	r3, r0
  366834: 9307         	str	r3, [sp, #0x1c]
  366836: 4bd3         	ldr	r3, [pc, #0x34c]        @ 0x366b84 <MapSelectLayer::init()+0x3f4>
  366838: 447b         	add	r3, pc
  36683a: 4618         	mov	r0, r3
  36683c: f271 fd62    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x271ac4
  366840: 4603         	mov	r3, r0
  366842: 9308         	str	r3, [sp, #0x20]
  366844: 4bd0         	ldr	r3, [pc, #0x340]        @ 0x366b88 <MapSelectLayer::init()+0x3f8>
  366846: 447b         	add	r3, pc
  366848: 4618         	mov	r0, r3
  36684a: f271 fd5b    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x271ab6
  36684e: 4603         	mov	r3, r0
  366850: 9309         	str	r3, [sp, #0x24]
  366852: 4bce         	ldr	r3, [pc, #0x338]        @ 0x366b8c <MapSelectLayer::init()+0x3fc>
  366854: 447b         	add	r3, pc
  366856: 4618         	mov	r0, r3
  366858: f271 fd54    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x271aa8
  36685c: 4603         	mov	r3, r0
  36685e: 930a         	str	r3, [sp, #0x28]
  366860: 4bcb         	ldr	r3, [pc, #0x32c]        @ 0x366b90 <MapSelectLayer::init()+0x400>
  366862: 447b         	add	r3, pc
  366864: 4618         	mov	r0, r3
  366866: f271 fd4d    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x271a9a
  36686a: 4603         	mov	r3, r0
  36686c: 930b         	str	r3, [sp, #0x2c]
  36686e: 4bc9         	ldr	r3, [pc, #0x324]        @ 0x366b94 <MapSelectLayer::init()+0x404>
  366870: 447b         	add	r3, pc
  366872: 4618         	mov	r0, r3
  366874: f271 fd46    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x271a8c
  366878: 4603         	mov	r3, r0
  36687a: 930c         	str	r3, [sp, #0x30]
  36687c: 4bc6         	ldr	r3, [pc, #0x318]        @ 0x366b98 <MapSelectLayer::init()+0x408>
  36687e: 447b         	add	r3, pc
  366880: 4618         	mov	r0, r3
  366882: f271 fd3f    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x271a7e
  366886: 4603         	mov	r3, r0
  366888: 930d         	str	r3, [sp, #0x34]
  36688a: 9a03         	ldr	r2, [sp, #0xc]
  36688c: 4bc3         	ldr	r3, [pc, #0x30c]        @ 0x366b9c <MapSelectLayer::init()+0x40c>
  36688e: 58e3         	ldr	r3, [r4, r3]
  366890: 9320         	str	r3, [sp, #0x80]
  366892: 2300         	movs	r3, #0x0
  366894: 9321         	str	r3, [sp, #0x84]
  366896: 9b21         	ldr	r3, [sp, #0x84]
  366898: 9300         	str	r3, [sp]
  36689a: 9b20         	ldr	r3, [sp, #0x80]
  36689c: 9806         	ldr	r0, [sp, #0x18]
  36689e: 9909         	ldr	r1, [sp, #0x24]
  3668a0: f251 fd44    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x251a88
  3668a4: 4603         	mov	r3, r0
  3668a6: 930e         	str	r3, [sp, #0x38]
  3668a8: 980e         	ldr	r0, [sp, #0x38]
  3668aa: 2100         	movs	r1, #0x0
  3668ac: f24e fc46    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x24e88c
  3668b0: 4602         	mov	r2, r0
  3668b2: 9b03         	ldr	r3, [sp, #0xc]
  3668b4: f8c3 2114    	str.w	r2, [r3, #0x114]
  3668b8: 9b03         	ldr	r3, [sp, #0xc]
  3668ba: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3668be: 4618         	mov	r0, r3
  3668c0: f231 fb12    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x231624
  3668c4: 9b03         	ldr	r3, [sp, #0xc]
  3668c6: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3668ca: 681b         	ldr	r3, [r3]
  3668cc: 334c         	adds	r3, #0x4c
  3668ce: 681d         	ldr	r5, [r3]
  3668d0: 9b03         	ldr	r3, [sp, #0xc]
  3668d2: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3668d6: 461e         	mov	r6, r3
  3668d8: ed9d 7a16    	vldr	s14, [sp, #88]
  3668dc: eddf 7aa4    	vldr	s15, [pc, #656]         @ 0x366b70 <MapSelectLayer::init()+0x3e0>
  3668e0: ee77 7a67    	vsub.f32	s15, s14, s15
  3668e4: ab2c         	add	r3, sp, #0xb0
  3668e6: 4618         	mov	r0, r3
  3668e8: ee17 1a90    	vmov	r1, s15
  3668ec: f04f 4284    	mov.w	r2, #0x42000000
  3668f0: f22c f9fe    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x22c3fc
  3668f4: ab2c         	add	r3, sp, #0xb0
  3668f6: 4630         	mov	r0, r6
  3668f8: 4619         	mov	r1, r3
  3668fa: 47a8         	blx	r5
  3668fc: 9b03         	ldr	r3, [sp, #0xc]
  3668fe: 681b         	ldr	r3, [r3]
  366900: 33c8         	adds	r3, #0xc8
  366902: 681b         	ldr	r3, [r3]
  366904: 9903         	ldr	r1, [sp, #0xc]
  366906: 9a03         	ldr	r2, [sp, #0xc]
  366908: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  36690c: 4608         	mov	r0, r1
  36690e: 4611         	mov	r1, r2
  366910: 4798         	blx	r3
  366912: f04f 0300    	mov.w	r3, #0x0
  366916: f2c4 23d8    	movt	r3, #0x42d8
  36691a: 930f         	str	r3, [sp, #0x3c]
  36691c: 9a03         	ldr	r2, [sp, #0xc]
  36691e: 4ba0         	ldr	r3, [pc, #0x280]        @ 0x366ba0 <MapSelectLayer::init()+0x410>
  366920: 58e3         	ldr	r3, [r4, r3]
  366922: 9322         	str	r3, [sp, #0x88]
  366924: 2300         	movs	r3, #0x0
  366926: 9323         	str	r3, [sp, #0x8c]
  366928: 9b23         	ldr	r3, [sp, #0x8c]
  36692a: 9300         	str	r3, [sp]
  36692c: 9b22         	ldr	r3, [sp, #0x88]
  36692e: 9807         	ldr	r0, [sp, #0x1c]
  366930: 990a         	ldr	r1, [sp, #0x28]
  366932: f251 fcfb    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2519f6
  366936: 4603         	mov	r3, r0
  366938: 9310         	str	r3, [sp, #0x40]
  36693a: 9810         	ldr	r0, [sp, #0x40]
  36693c: 2100         	movs	r1, #0x0
  36693e: f24e fbfd    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x24e7fa
  366942: 4602         	mov	r2, r0
  366944: 9b03         	ldr	r3, [sp, #0xc]
  366946: f8c3 211c    	str.w	r2, [r3, #0x11c]
  36694a: 9b03         	ldr	r3, [sp, #0xc]
  36694c: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  366950: 4618         	mov	r0, r3
  366952: f231 fac9    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x231592
  366956: 9b03         	ldr	r3, [sp, #0xc]
  366958: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  36695c: 681b         	ldr	r3, [r3]
  36695e: 334c         	adds	r3, #0x4c
  366960: 681d         	ldr	r5, [r3]
  366962: 9b03         	ldr	r3, [sp, #0xc]
  366964: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  366968: 461e         	mov	r6, r3
  36696a: ed9d 7a18    	vldr	s14, [sp, #96]
  36696e: eddd 7a0f    	vldr	s15, [sp, #60]
  366972: ee77 7a27    	vadd.f32	s15, s14, s15
  366976: 9b19         	ldr	r3, [sp, #0x64]
  366978: aa2c         	add	r2, sp, #0xb0
  36697a: 4610         	mov	r0, r2
  36697c: ee17 1a90    	vmov	r1, s15
  366980: 461a         	mov	r2, r3
  366982: f22c f9b5    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x22c36a
  366986: ab2c         	add	r3, sp, #0xb0
  366988: 4630         	mov	r0, r6
  36698a: 4619         	mov	r1, r3
  36698c: 47a8         	blx	r5
  36698e: 9b03         	ldr	r3, [sp, #0xc]
  366990: 681b         	ldr	r3, [r3]
  366992: 33c8         	adds	r3, #0xc8
  366994: 681b         	ldr	r3, [r3]
  366996: 9903         	ldr	r1, [sp, #0xc]
  366998: 9a03         	ldr	r2, [sp, #0xc]
  36699a: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  36699e: 4608         	mov	r0, r1
  3669a0: 4611         	mov	r1, r2
  3669a2: 4798         	blx	r3
  3669a4: 9a03         	ldr	r2, [sp, #0xc]
  3669a6: 4b7f         	ldr	r3, [pc, #0x1fc]        @ 0x366ba4 <MapSelectLayer::init()+0x414>
  3669a8: 58e3         	ldr	r3, [r4, r3]
  3669aa: 9324         	str	r3, [sp, #0x90]
  3669ac: 2300         	movs	r3, #0x0
  3669ae: 9325         	str	r3, [sp, #0x94]
  3669b0: 9b25         	ldr	r3, [sp, #0x94]
  3669b2: 9300         	str	r3, [sp]
  3669b4: 9b24         	ldr	r3, [sp, #0x90]
  3669b6: 9808         	ldr	r0, [sp, #0x20]
  3669b8: 990b         	ldr	r1, [sp, #0x2c]
  3669ba: f251 fcb7    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x25196e
  3669be: 4603         	mov	r3, r0
  3669c0: 9311         	str	r3, [sp, #0x44]
  3669c2: 9811         	ldr	r0, [sp, #0x44]
  3669c4: 2100         	movs	r1, #0x0
  3669c6: f24e fbb9    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x24e772
  3669ca: 4602         	mov	r2, r0
  3669cc: 9b03         	ldr	r3, [sp, #0xc]
  3669ce: f8c3 2120    	str.w	r2, [r3, #0x120]
  3669d2: 9b03         	ldr	r3, [sp, #0xc]
  3669d4: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3669d8: 4618         	mov	r0, r3
  3669da: f231 fa85    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x23150a
  3669de: 9b03         	ldr	r3, [sp, #0xc]
  3669e0: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3669e4: 681b         	ldr	r3, [r3]
  3669e6: 334c         	adds	r3, #0x4c
  3669e8: 681d         	ldr	r5, [r3]
  3669ea: 9b03         	ldr	r3, [sp, #0xc]
  3669ec: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3669f0: 461e         	mov	r6, r3
  3669f2: ed9d 7a18    	vldr	s14, [sp, #96]
  3669f6: eddd 7a0f    	vldr	s15, [sp, #60]
  3669fa: ee77 7a67    	vsub.f32	s15, s14, s15
  3669fe: 9b19         	ldr	r3, [sp, #0x64]
  366a00: aa2c         	add	r2, sp, #0xb0
  366a02: 4610         	mov	r0, r2
  366a04: ee17 1a90    	vmov	r1, s15
  366a08: 461a         	mov	r2, r3
  366a0a: f22c f971    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x22c2e2
  366a0e: ab2c         	add	r3, sp, #0xb0
  366a10: 4630         	mov	r0, r6
  366a12: 4619         	mov	r1, r3
  366a14: 47a8         	blx	r5
  366a16: 9b03         	ldr	r3, [sp, #0xc]
  366a18: 681b         	ldr	r3, [r3]
  366a1a: 33c8         	adds	r3, #0xc8
  366a1c: 681b         	ldr	r3, [r3]
  366a1e: 9903         	ldr	r1, [sp, #0xc]
  366a20: 9a03         	ldr	r2, [sp, #0xc]
  366a22: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  366a26: 4608         	mov	r0, r1
  366a28: 4611         	mov	r1, r2
  366a2a: 4798         	blx	r3
  366a2c: 4b5e         	ldr	r3, [pc, #0x178]        @ 0x366ba8 <MapSelectLayer::init()+0x418>
  366a2e: 447b         	add	r3, pc
  366a30: 4618         	mov	r0, r3
  366a32: f271 fc67    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2718ce
  366a36: 4602         	mov	r2, r0
  366a38: 9b03         	ldr	r3, [sp, #0xc]
  366a3a: f8c3 2124    	str.w	r2, [r3, #0x124]
  366a3e: 9b03         	ldr	r3, [sp, #0xc]
  366a40: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  366a44: 681b         	ldr	r3, [r3]
  366a46: 334c         	adds	r3, #0x4c
  366a48: 681d         	ldr	r5, [r3]
  366a4a: 9b03         	ldr	r3, [sp, #0xc]
  366a4c: f8d3 6124    	ldr.w	r6, [r3, #0x124]
  366a50: 9a18         	ldr	r2, [sp, #0x60]
  366a52: 9b19         	ldr	r3, [sp, #0x64]
  366a54: a92c         	add	r1, sp, #0xb0
  366a56: 4608         	mov	r0, r1
  366a58: 4611         	mov	r1, r2
  366a5a: 461a         	mov	r2, r3
  366a5c: f22c f948    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x22c290
  366a60: ab2c         	add	r3, sp, #0xb0
  366a62: 4630         	mov	r0, r6
  366a64: 4619         	mov	r1, r3
  366a66: 47a8         	blx	r5
  366a68: 9b03         	ldr	r3, [sp, #0xc]
  366a6a: 681b         	ldr	r3, [r3]
  366a6c: 33c8         	adds	r3, #0xc8
  366a6e: 681b         	ldr	r3, [r3]
  366a70: 9903         	ldr	r1, [sp, #0xc]
  366a72: 9a03         	ldr	r2, [sp, #0xc]
  366a74: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  366a78: 4608         	mov	r0, r1
  366a7a: 4611         	mov	r1, r2
  366a7c: 4798         	blx	r3
  366a7e: 4b4b         	ldr	r3, [pc, #0x12c]        @ 0x366bac <MapSelectLayer::init()+0x41c>
  366a80: 447b         	add	r3, pc
  366a82: 4618         	mov	r0, r3
  366a84: f04e f43c    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x44e878
  366a88: 4603         	mov	r3, r0
  366a8a: 2220         	movs	r2, #0x20
  366a8c: 9200         	str	r2, [sp]
  366a8e: 4a48         	ldr	r2, [pc, #0x120]        @ 0x366bb0 <MapSelectLayer::init()+0x420>
  366a90: 447a         	add	r2, pc
  366a92: 4610         	mov	r0, r2
  366a94: 4619         	mov	r1, r3
  366a96: 2220         	movs	r2, #0x20
  366a98: 2320         	movs	r3, #0x20
  366a9a: f23e fc6d    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x23e8da
  366a9e: 4602         	mov	r2, r0
  366aa0: 9b03         	ldr	r3, [sp, #0xc]
  366aa2: f8c3 2118    	str.w	r2, [r3, #0x118]
  366aa6: 9b03         	ldr	r3, [sp, #0xc]
  366aa8: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  366aac: 4618         	mov	r0, r3
  366aae: f231 fa1b    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x231436
  366ab2: 9b03         	ldr	r3, [sp, #0xc]
  366ab4: 681b         	ldr	r3, [r3]
  366ab6: 33c8         	adds	r3, #0xc8
  366ab8: 681b         	ldr	r3, [r3]
  366aba: 9903         	ldr	r1, [sp, #0xc]
  366abc: 9a03         	ldr	r2, [sp, #0xc]
  366abe: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  366ac2: 4608         	mov	r0, r1
  366ac4: 4611         	mov	r1, r2
  366ac6: 4798         	blx	r3
  366ac8: 9803         	ldr	r0, [sp, #0xc]
  366aca: f000 fd61    	bl	0x367590 <MapSelectLayer::UpdateCurrentMapLabel()> @ imm = #0xac2
  366ace: f04f 4341    	mov.w	r3, #0xc1000000
  366ad2: 9312         	str	r3, [sp, #0x48]
  366ad4: f04f 0300    	mov.w	r3, #0x0
  366ad8: f2c4 13c0    	movt	r3, #0x41c0
  366adc: 9313         	str	r3, [sp, #0x4c]
  366ade: f64c 43cd    	movw	r3, #0xcccd
  366ae2: f6c3 730c    	movt	r3, #0x3f0c
  366ae6: 9314         	str	r3, [sp, #0x50]
  366ae8: 9a03         	ldr	r2, [sp, #0xc]
  366aea: 4b32         	ldr	r3, [pc, #0xc8]         @ 0x366bb4 <MapSelectLayer::init()+0x424>
  366aec: 58e3         	ldr	r3, [r4, r3]
  366aee: 9326         	str	r3, [sp, #0x98]
  366af0: 2300         	movs	r3, #0x0
  366af2: 9327         	str	r3, [sp, #0x9c]
  366af4: 9b27         	ldr	r3, [sp, #0x9c]
  366af6: 9300         	str	r3, [sp]
  366af8: 9b26         	ldr	r3, [sp, #0x98]
  366afa: 980c         	ldr	r0, [sp, #0x30]
  366afc: 990d         	ldr	r1, [sp, #0x34]
  366afe: f251 fc15    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x25182a
  366b02: 4603         	mov	r3, r0
  366b04: 9315         	str	r3, [sp, #0x54]
  366b06: 9815         	ldr	r0, [sp, #0x54]
  366b08: 2100         	movs	r1, #0x0
  366b0a: f24e fb17    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x24e62e
  366b0e: 4602         	mov	r2, r0
  366b10: 9b03         	ldr	r3, [sp, #0xc]
  366b12: f8c3 2134    	str.w	r2, [r3, #0x134]
  366b16: 9b03         	ldr	r3, [sp, #0xc]
  366b18: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  366b1c: 4618         	mov	r0, r3
  366b1e: f231 f9e3    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2313c6
  366b22: 9b03         	ldr	r3, [sp, #0xc]
  366b24: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  366b28: 681b         	ldr	r3, [r3]
  366b2a: 334c         	adds	r3, #0x4c
  366b2c: 681c         	ldr	r4, [r3]
  366b2e: 9b03         	ldr	r3, [sp, #0xc]
  366b30: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  366b34: 461d         	mov	r5, r3
  366b36: ab2c         	add	r3, sp, #0xb0
  366b38: 4618         	mov	r0, r3
  366b3a: f04f 0100    	mov.w	r1, #0x0
  366b3e: f2c4 2160    	movt	r1, #0x4260
  366b42: f04f 4284    	mov.w	r2, #0x42000000
  366b46: f22c f8d3    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x22c1a6
  366b4a: ab2c         	add	r3, sp, #0xb0
  366b4c: 4628         	mov	r0, r5
  366b4e: 4619         	mov	r1, r3
  366b50: 47a0         	blx	r4
  366b52: 9b03         	ldr	r3, [sp, #0xc]
  366b54: 681b         	ldr	r3, [r3]
  366b56: 33c8         	adds	r3, #0xc8
  366b58: 681b         	ldr	r3, [r3]
  366b5a: 9903         	ldr	r1, [sp, #0xc]
  366b5c: 9a03         	ldr	r2, [sp, #0xc]
  366b5e: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  366b62: 4608         	mov	r0, r1
  366b64: 4611         	mov	r1, r2
  366b66: 4798         	blx	r3
  366b68: 4b13         	ldr	r3, [pc, #0x4c]         @ 0x366bb8 <MapSelectLayer::init()+0x428>
  366b6a: 447b         	add	r3, pc
  366b6c: e026         	b	0x366bbc <MapSelectLayer::init()+0x42c> @ imm = #0x4c
  366b6e: bf00         	nop
  366b70: 0000         	movs	r0, r0
  366b72: 4260         	rsbs	r0, r4, #0
  366b74: da54         	bge	0x366c20 <MapSelectLayer::init()+0x490> @ imm = #0xa8
  366b76: ffff d724    	<unknown>
  366b7a: ffff 6760    	<unknown>
  366b7e: 0046         	lsls	r6, r0, #0x1
  366b80: 675e         	str	r6, [r3, #0x74]
  366b82: 0046         	lsls	r6, r0, #0x1
  366b84: 6760         	str	r0, [r4, #0x74]
  366b86: 0046         	lsls	r6, r0, #0x1
  366b88: 6736         	str	r6, [r6, #0x70]
  366b8a: 0046         	lsls	r6, r0, #0x1
  366b8c: 6734         	str	r4, [r6, #0x70]
  366b8e: 0046         	lsls	r6, r0, #0x1
  366b90: 6736         	str	r6, [r6, #0x70]
  366b92: 0046         	lsls	r6, r0, #0x1
  366b94: 670c         	str	r4, [r1, #0x70]
  366b96: 0046         	lsls	r6, r0, #0x1
  366b98: 66fe         	str	r6, [r7, #0x6c]
  366b9a: 0046         	lsls	r6, r0, #0x1
  366b9c: dba4         	blt	0x366ae8 <MapSelectLayer::init()+0x358> @ imm = #-0xb8
  366b9e: ffff dba8    	vtbl.8	d29, {d31, fpinst2, mvfr0, mvfr1}, d24
  366ba2: ffff dbac    	vtbl.8	d29, {d31, fpinst2, mvfr0, mvfr1}, d28
  366ba6: ffff 657a    	vsli.32	q11, q13, #0x1f
  366baa: 0046         	lsls	r6, r0, #0x1
  366bac: 9da0         	ldr	r5, [sp, #0x280]
  366bae: 005d         	lsls	r5, r3, #0x1
  366bb0: 6524         	str	r4, [r4, #0x50]
  366bb2: 0046         	lsls	r6, r0, #0x1
  366bb4: dbb0         	blt	0x366b18 <MapSelectLayer::init()+0x388> @ imm = #-0xa0
  366bb6: ffff 9cb6    	<unknown>
  366bba: 005d         	lsls	r5, r3, #0x1
  366bbc: 4618         	mov	r0, r3
  366bbe: f04e f39f    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x44e73e
  366bc2: 4603         	mov	r3, r0
  366bc4: 2220         	movs	r2, #0x20
  366bc6: 9200         	str	r2, [sp]
  366bc8: 4ac8         	ldr	r2, [pc, #0x320]        @ 0x366eec <MapSelectLayer::init()+0x75c>
  366bca: 447a         	add	r2, pc
  366bcc: 4610         	mov	r0, r2
  366bce: 4619         	mov	r1, r3
  366bd0: 2220         	movs	r2, #0x20
  366bd2: 2320         	movs	r3, #0x20
  366bd4: f23e fbd0    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x23e7a0
  366bd8: 4602         	mov	r2, r0
  366bda: 9b03         	ldr	r3, [sp, #0xc]
  366bdc: f8c3 210c    	str.w	r2, [r3, #0x10c]
  366be0: 9b03         	ldr	r3, [sp, #0xc]
  366be2: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  366be6: 4618         	mov	r0, r3
  366be8: f231 f97e    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2312fc
  366bec: 9b03         	ldr	r3, [sp, #0xc]
  366bee: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  366bf2: 681b         	ldr	r3, [r3]
  366bf4: 334c         	adds	r3, #0x4c
  366bf6: 681c         	ldr	r4, [r3]
  366bf8: 9b03         	ldr	r3, [sp, #0xc]
  366bfa: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  366bfe: 461d         	mov	r5, r3
  366c00: eddd 7a18    	vldr	s15, [sp, #96]
  366c04: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  366c08: ed9d 7a17    	vldr	s14, [sp, #92]
  366c0c: eddf 7ab6    	vldr	s15, [pc, #728]         @ 0x366ee8 <MapSelectLayer::init()+0x758>
  366c10: ee77 7a67    	vsub.f32	s15, s14, s15
  366c14: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  366c18: ab28         	add	r3, sp, #0xa0
  366c1a: 4618         	mov	r0, r3
  366c1c: eeb0 0b46    	vmov.f64	d0, d6
  366c20: eeb0 1b47    	vmov.f64	d1, d7
  366c24: f7fe fe76    	bl	0x365914 <MapManager::hasPrefix(std::string, std::string)+0x1e4> @ imm = #-0x1314
  366c28: ed9d 8b28    	vldr	d8, [sp, #160]
  366c2c: 9b03         	ldr	r3, [sp, #0xc]
  366c2e: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  366c32: 681b         	ldr	r3, [r3]
  366c34: f503 73fe    	add.w	r3, r3, #0x1fc
  366c38: 681b         	ldr	r3, [r3]
  366c3a: 9a03         	ldr	r2, [sp, #0xc]
  366c3c: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  366c40: 4610         	mov	r0, r2
  366c42: 4798         	blx	r3
  366c44: 4606         	mov	r6, r0
  366c46: ab1a         	add	r3, sp, #0x68
  366c48: 4618         	mov	r0, r3
  366c4a: f023 f3d3    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4237a6
  366c4e: aa1c         	add	r2, sp, #0x70
  366c50: ab1a         	add	r3, sp, #0x68
  366c52: 4610         	mov	r0, r2
  366c54: 4631         	mov	r1, r6
  366c56: 461a         	mov	r2, r3
  366c58: f04f f702    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x44fe04
  366c5c: ab1c         	add	r3, sp, #0x70
  366c5e: 4618         	mov	r0, r3
  366c60: f04e f1fc    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x44e3f8
  366c64: 4603         	mov	r3, r0
  366c66: ee07 3a90    	vmov	s15, r3
  366c6a: eeb8 7a67    	vcvt.f32.u32	s14, s15
  366c6e: eddd 7a13    	vldr	s15, [sp, #76]
  366c72: ee27 7a27    	vmul.f32	s14, s14, s15
  366c76: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  366c7a: eec7 7a27    	vdiv.f32	s15, s14, s15
  366c7e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  366c82: ee38 7b47    	vsub.f64	d7, d8, d7
  366c86: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  366c8a: eddd 7a18    	vldr	s15, [sp, #96]
  366c8e: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  366c92: ed9d 7a17    	vldr	s14, [sp, #92]
  366c96: eddf 7a94    	vldr	s15, [pc, #592]         @ 0x366ee8 <MapSelectLayer::init()+0x758>
  366c9a: ee77 7a67    	vsub.f32	s15, s14, s15
  366c9e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  366ca2: ab2c         	add	r3, sp, #0xb0
  366ca4: 4618         	mov	r0, r3
  366ca6: eeb0 0b46    	vmov.f64	d0, d6
  366caa: eeb0 1b47    	vmov.f64	d1, d7
  366cae: f7fe fe31    	bl	0x365914 <MapManager::hasPrefix(std::string, std::string)+0x1e4> @ imm = #-0x139e
  366cb2: ed9d 7b2e    	vldr	d7, [sp, #184]
  366cb6: eef7 7bc7    	vcvt.f32.f64	s15, d7
  366cba: ab1e         	add	r3, sp, #0x78
  366cbc: 4618         	mov	r0, r3
  366cbe: ee18 1a10    	vmov	r1, s16
  366cc2: ee17 2a90    	vmov	r2, s15
  366cc6: f22c f813    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x22c026
  366cca: ab1e         	add	r3, sp, #0x78
  366ccc: 4628         	mov	r0, r5
  366cce: 4619         	mov	r1, r3
  366cd0: 47a0         	blx	r4
  366cd2: ab1c         	add	r3, sp, #0x70
  366cd4: 4618         	mov	r0, r3
  366cd6: f04e f61d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44ec3a
  366cda: ab1a         	add	r3, sp, #0x68
  366cdc: 4618         	mov	r0, r3
  366cde: f023 f38d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42371a
  366ce2: 9b03         	ldr	r3, [sp, #0xc]
  366ce4: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  366ce8: eddd 7a13    	vldr	s15, [sp, #76]
  366cec: eefd 7ae7    	vcvt.s32.f32	s15, s15
  366cf0: ee17 2a90    	vmov	r2, s15
  366cf4: 4618         	mov	r0, r3
  366cf6: 4611         	mov	r1, r2
  366cf8: f23f f844    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x23f088
  366cfc: 9b03         	ldr	r3, [sp, #0xc]
  366cfe: 681b         	ldr	r3, [r3]
  366d00: 33c8         	adds	r3, #0xc8
  366d02: 681b         	ldr	r3, [r3]
  366d04: 9903         	ldr	r1, [sp, #0xc]
  366d06: 9a03         	ldr	r2, [sp, #0xc]
  366d08: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  366d0c: 4608         	mov	r0, r1
  366d0e: 4611         	mov	r1, r2
  366d10: 4798         	blx	r3
  366d12: 4b77         	ldr	r3, [pc, #0x1dc]        @ 0x366ef0 <MapSelectLayer::init()+0x760>
  366d14: 447b         	add	r3, pc
  366d16: 4618         	mov	r0, r3
  366d18: f04e f2f2    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x44e5e4
  366d1c: 4603         	mov	r3, r0
  366d1e: 2220         	movs	r2, #0x20
  366d20: 9200         	str	r2, [sp]
  366d22: 4a74         	ldr	r2, [pc, #0x1d0]        @ 0x366ef4 <MapSelectLayer::init()+0x764>
  366d24: 447a         	add	r2, pc
  366d26: 4610         	mov	r0, r2
  366d28: 4619         	mov	r1, r3
  366d2a: 2220         	movs	r2, #0x20
  366d2c: 2320         	movs	r3, #0x20
  366d2e: f23e fb23    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x23e646
  366d32: 4602         	mov	r2, r0
  366d34: 9b03         	ldr	r3, [sp, #0xc]
  366d36: f8c3 2110    	str.w	r2, [r3, #0x110]
  366d3a: 9b03         	ldr	r3, [sp, #0xc]
  366d3c: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  366d40: 4618         	mov	r0, r3
  366d42: f231 f8d1    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2311a2
  366d46: 9b03         	ldr	r3, [sp, #0xc]
  366d48: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  366d4c: 681b         	ldr	r3, [r3]
  366d4e: 334c         	adds	r3, #0x4c
  366d50: 681c         	ldr	r4, [r3]
  366d52: 9b03         	ldr	r3, [sp, #0xc]
  366d54: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  366d58: 461d         	mov	r5, r3
  366d5a: 9b03         	ldr	r3, [sp, #0xc]
  366d5c: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  366d60: 681b         	ldr	r3, [r3]
  366d62: 3350         	adds	r3, #0x50
  366d64: 681b         	ldr	r3, [r3]
  366d66: 9a03         	ldr	r2, [sp, #0xc]
  366d68: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  366d6c: 4610         	mov	r0, r2
  366d6e: 4798         	blx	r3
  366d70: 4603         	mov	r3, r0
  366d72: 681e         	ldr	r6, [r3]
  366d74: 9b03         	ldr	r3, [sp, #0xc]
  366d76: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  366d7a: 681b         	ldr	r3, [r3]
  366d7c: 3350         	adds	r3, #0x50
  366d7e: 681b         	ldr	r3, [r3]
  366d80: 9a03         	ldr	r2, [sp, #0xc]
  366d82: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  366d86: 4610         	mov	r0, r2
  366d88: 4798         	blx	r3
  366d8a: 4603         	mov	r3, r0
  366d8c: 685b         	ldr	r3, [r3, #0x4]
  366d8e: aa1a         	add	r2, sp, #0x68
  366d90: 4610         	mov	r0, r2
  366d92: 4631         	mov	r1, r6
  366d94: 461a         	mov	r2, r3
  366d96: f22b ffab    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x22bf56
  366d9a: eddd 7a12    	vldr	s15, [sp, #72]
  366d9e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  366da2: ab28         	add	r3, sp, #0xa0
  366da4: 4618         	mov	r0, r3
  366da6: ed9f 0b4e    	vldr	d0, [pc, #312]          @ 0x366ee0 <MapSelectLayer::init()+0x750>
  366daa: eeb0 1b47    	vmov.f64	d1, d7
  366dae: f7fe fdb1    	bl	0x365914 <MapManager::hasPrefix(std::string, std::string)+0x1e4> @ imm = #-0x149e
  366db2: ed9d 8b28    	vldr	d8, [sp, #160]
  366db6: 9b03         	ldr	r3, [sp, #0xc]
  366db8: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  366dbc: 681b         	ldr	r3, [r3]
  366dbe: f503 73fe    	add.w	r3, r3, #0x1fc
  366dc2: 681b         	ldr	r3, [r3]
  366dc4: 9a03         	ldr	r2, [sp, #0xc]
  366dc6: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  366dca: 4610         	mov	r0, r2
  366dcc: 4798         	blx	r3
  366dce: 4606         	mov	r6, r0
  366dd0: ab04         	add	r3, sp, #0x10
  366dd2: 4618         	mov	r0, r3
  366dd4: f023 f30e    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x42361c
  366dd8: aa05         	add	r2, sp, #0x14
  366dda: ab04         	add	r3, sp, #0x10
  366ddc: 4610         	mov	r0, r2
  366dde: 4631         	mov	r1, r6
  366de0: 461a         	mov	r2, r3
  366de2: f04f f63d    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x44fc7a
  366de6: ab05         	add	r3, sp, #0x14
  366de8: 4618         	mov	r0, r3
  366dea: f04e f137    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x44e26e
  366dee: 4603         	mov	r3, r0
  366df0: ee07 3a90    	vmov	s15, r3
  366df4: eeb8 7a67    	vcvt.f32.u32	s14, s15
  366df8: eddd 7a13    	vldr	s15, [sp, #76]
  366dfc: ee27 7a27    	vmul.f32	s14, s14, s15
  366e00: eddd 7a14    	vldr	s15, [sp, #80]
  366e04: ee27 7a27    	vmul.f32	s14, s14, s15
  366e08: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  366e0c: eec7 7a27    	vdiv.f32	s15, s14, s15
  366e10: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  366e14: ee38 7b47    	vsub.f64	d7, d8, d7
  366e18: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  366e1c: eddd 7a12    	vldr	s15, [sp, #72]
  366e20: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  366e24: ab2c         	add	r3, sp, #0xb0
  366e26: 4618         	mov	r0, r3
  366e28: ed9f 0b2d    	vldr	d0, [pc, #180]          @ 0x366ee0 <MapSelectLayer::init()+0x750>
  366e2c: eeb0 1b47    	vmov.f64	d1, d7
  366e30: f7fe fd70    	bl	0x365914 <MapManager::hasPrefix(std::string, std::string)+0x1e4> @ imm = #-0x1520
  366e34: ed9d 7b2e    	vldr	d7, [sp, #184]
  366e38: eef7 7bc7    	vcvt.f32.f64	s15, d7
  366e3c: ab1c         	add	r3, sp, #0x70
  366e3e: 4618         	mov	r0, r3
  366e40: ee18 1a10    	vmov	r1, s16
  366e44: ee17 2a90    	vmov	r2, s15
  366e48: f22b ff52    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x22bea4
  366e4c: a91e         	add	r1, sp, #0x78
  366e4e: aa1a         	add	r2, sp, #0x68
  366e50: ab1c         	add	r3, sp, #0x70
  366e52: 4608         	mov	r0, r1
  366e54: 4611         	mov	r1, r2
  366e56: 461a         	mov	r2, r3
  366e58: f7fe fd4c    	bl	0x3658f4 <MapManager::hasPrefix(std::string, std::string)+0x1c4> @ imm = #-0x1568
  366e5c: ab1e         	add	r3, sp, #0x78
  366e5e: 4628         	mov	r0, r5
  366e60: 4619         	mov	r1, r3
  366e62: 47a0         	blx	r4
  366e64: ab05         	add	r3, sp, #0x14
  366e66: 4618         	mov	r0, r3
  366e68: f04e f554    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44eaa8
  366e6c: ab04         	add	r3, sp, #0x10
  366e6e: 4618         	mov	r0, r3
  366e70: f023 f2c4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x423588
  366e74: 9b03         	ldr	r3, [sp, #0xc]
  366e76: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  366e7a: eddd 7a13    	vldr	s15, [sp, #76]
  366e7e: eefd 7ae7    	vcvt.s32.f32	s15, s15
  366e82: ee17 2a90    	vmov	r2, s15
  366e86: 4618         	mov	r0, r3
  366e88: 4611         	mov	r1, r2
  366e8a: f23e ff7b    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x23eef6
  366e8e: 9b03         	ldr	r3, [sp, #0xc]
  366e90: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  366e94: 681b         	ldr	r3, [r3]
  366e96: 3340         	adds	r3, #0x40
  366e98: 681b         	ldr	r3, [r3]
  366e9a: 9a03         	ldr	r2, [sp, #0xc]
  366e9c: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  366ea0: 4610         	mov	r0, r2
  366ea2: 9914         	ldr	r1, [sp, #0x50]
  366ea4: 4798         	blx	r3
  366ea6: 9b03         	ldr	r3, [sp, #0xc]
  366ea8: 681b         	ldr	r3, [r3]
  366eaa: 33c8         	adds	r3, #0xc8
  366eac: 681b         	ldr	r3, [r3]
  366eae: 9903         	ldr	r1, [sp, #0xc]
  366eb0: 9a03         	ldr	r2, [sp, #0xc]
  366eb2: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  366eb6: 4608         	mov	r0, r1
  366eb8: 4611         	mov	r1, r2
  366eba: 4798         	blx	r3
  366ebc: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x366ef8 <MapSelectLayer::init()+0x768>
  366ebe: 447b         	add	r3, pc
  366ec0: 4618         	mov	r0, r3
  366ec2: f04e f21d    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x44e43a
  366ec6: 4603         	mov	r3, r0
  366ec8: 2220         	movs	r2, #0x20
  366eca: 9200         	str	r2, [sp]
  366ecc: 4a0b         	ldr	r2, [pc, #0x2c]         @ 0x366efc <MapSelectLayer::init()+0x76c>
  366ece: 447a         	add	r2, pc
  366ed0: 4610         	mov	r0, r2
  366ed2: 4619         	mov	r1, r3
  366ed4: 2220         	movs	r2, #0x20
  366ed6: 2320         	movs	r3, #0x20
  366ed8: f23e fa4e    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x23e49c
  366edc: 4602         	mov	r2, r0
  366ede: e00f         	b	0x366f00 <MapSelectLayer::init()+0x770> @ imm = #0x1e
  366ee8: 0000         	movs	r0, r0
  366eea: 42a0         	cmp	r0, r4
  366eec: 63ee         	str	r6, [r5, #0x3c]
  366eee: 0046         	lsls	r6, r0, #0x1
  366ef0: 9b0c         	ldr	r3, [sp, #0x30]
  366ef2: 005d         	lsls	r5, r3, #0x1
  366ef4: 62a0         	str	r0, [r4, #0x28]
  366ef6: 0046         	lsls	r6, r0, #0x1
  366ef8: 9962         	ldr	r1, [sp, #0x188]
  366efa: 005d         	lsls	r5, r3, #0x1
  366efc: 60fe         	str	r6, [r7, #0xc]
  366efe: 0046         	lsls	r6, r0, #0x1
  366f00: 9b03         	ldr	r3, [sp, #0xc]
  366f02: f8c3 2130    	str.w	r2, [r3, #0x130]
  366f06: 9b03         	ldr	r3, [sp, #0xc]
  366f08: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  366f0c: 4618         	mov	r0, r3
  366f0e: f230 ffeb    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x230fd6
  366f12: 9b03         	ldr	r3, [sp, #0xc]
  366f14: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  366f18: 681b         	ldr	r3, [r3]
  366f1a: 334c         	adds	r3, #0x4c
  366f1c: 681c         	ldr	r4, [r3]
  366f1e: 9b03         	ldr	r3, [sp, #0xc]
  366f20: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  366f24: 461d         	mov	r5, r3
  366f26: 9b03         	ldr	r3, [sp, #0xc]
  366f28: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  366f2c: 681b         	ldr	r3, [r3]
  366f2e: 3350         	adds	r3, #0x50
  366f30: 681b         	ldr	r3, [r3]
  366f32: 9a03         	ldr	r2, [sp, #0xc]
  366f34: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  366f38: 4610         	mov	r0, r2
  366f3a: 4798         	blx	r3
  366f3c: 4603         	mov	r3, r0
  366f3e: 681e         	ldr	r6, [r3]
  366f40: 9b03         	ldr	r3, [sp, #0xc]
  366f42: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  366f46: 681b         	ldr	r3, [r3]
  366f48: 3350         	adds	r3, #0x50
  366f4a: 681b         	ldr	r3, [r3]
  366f4c: 9a03         	ldr	r2, [sp, #0xc]
  366f4e: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  366f52: 4610         	mov	r0, r2
  366f54: 4798         	blx	r3
  366f56: 4603         	mov	r3, r0
  366f58: 685b         	ldr	r3, [r3, #0x4]
  366f5a: aa1a         	add	r2, sp, #0x68
  366f5c: 4610         	mov	r0, r2
  366f5e: 4631         	mov	r1, r6
  366f60: 461a         	mov	r2, r3
  366f62: f22b fec5    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x22bd8a
  366f66: eddd 7a12    	vldr	s15, [sp, #72]
  366f6a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  366f6e: ab28         	add	r3, sp, #0xa0
  366f70: 4618         	mov	r0, r3
  366f72: ed9f 0b71    	vldr	d0, [pc, #452]          @ 0x367138 <MapSelectLayer::init()+0x9a8>
  366f76: eeb0 1b47    	vmov.f64	d1, d7
  366f7a: f7fe fccb    	bl	0x365914 <MapManager::hasPrefix(std::string, std::string)+0x1e4> @ imm = #-0x166a
  366f7e: ed9d 8b28    	vldr	d8, [sp, #160]
  366f82: 9b03         	ldr	r3, [sp, #0xc]
  366f84: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  366f88: 681b         	ldr	r3, [r3]
  366f8a: f503 73fe    	add.w	r3, r3, #0x1fc
  366f8e: 681b         	ldr	r3, [r3]
  366f90: 9a03         	ldr	r2, [sp, #0xc]
  366f92: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  366f96: 4610         	mov	r0, r2
  366f98: 4798         	blx	r3
  366f9a: 4606         	mov	r6, r0
  366f9c: ab04         	add	r3, sp, #0x10
  366f9e: 4618         	mov	r0, r3
  366fa0: f023 f228    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x423450
  366fa4: aa05         	add	r2, sp, #0x14
  366fa6: ab04         	add	r3, sp, #0x10
  366fa8: 4610         	mov	r0, r2
  366faa: 4631         	mov	r1, r6
  366fac: 461a         	mov	r2, r3
  366fae: f04f f557    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x44faae
  366fb2: ab05         	add	r3, sp, #0x14
  366fb4: 4618         	mov	r0, r3
  366fb6: f04e f051    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x44e0a2
  366fba: 4603         	mov	r3, r0
  366fbc: ee07 3a90    	vmov	s15, r3
  366fc0: eeb8 7a67    	vcvt.f32.u32	s14, s15
  366fc4: eddd 7a13    	vldr	s15, [sp, #76]
  366fc8: ee27 7a27    	vmul.f32	s14, s14, s15
  366fcc: eddd 7a14    	vldr	s15, [sp, #80]
  366fd0: ee27 7a27    	vmul.f32	s14, s14, s15
  366fd4: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  366fd8: eec7 7a27    	vdiv.f32	s15, s14, s15
  366fdc: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  366fe0: ee38 7b47    	vsub.f64	d7, d8, d7
  366fe4: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  366fe8: eddd 7a12    	vldr	s15, [sp, #72]
  366fec: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  366ff0: ab2c         	add	r3, sp, #0xb0
  366ff2: 4618         	mov	r0, r3
  366ff4: ed9f 0b50    	vldr	d0, [pc, #320]          @ 0x367138 <MapSelectLayer::init()+0x9a8>
  366ff8: eeb0 1b47    	vmov.f64	d1, d7
  366ffc: f7fe fc8a    	bl	0x365914 <MapManager::hasPrefix(std::string, std::string)+0x1e4> @ imm = #-0x16ec
  367000: ed9d 7b2e    	vldr	d7, [sp, #184]
  367004: eef7 7bc7    	vcvt.f32.f64	s15, d7
  367008: ab1c         	add	r3, sp, #0x70
  36700a: 4618         	mov	r0, r3
  36700c: ee18 1a10    	vmov	r1, s16
  367010: ee17 2a90    	vmov	r2, s15
  367014: f22b fe6c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x22bcd8
  367018: a91e         	add	r1, sp, #0x78
  36701a: aa1a         	add	r2, sp, #0x68
  36701c: ab1c         	add	r3, sp, #0x70
  36701e: 4608         	mov	r0, r1
  367020: 4611         	mov	r1, r2
  367022: 461a         	mov	r2, r3
  367024: f7fe fc66    	bl	0x3658f4 <MapManager::hasPrefix(std::string, std::string)+0x1c4> @ imm = #-0x1734
  367028: ab1e         	add	r3, sp, #0x78
  36702a: 4628         	mov	r0, r5
  36702c: 4619         	mov	r1, r3
  36702e: 47a0         	blx	r4
  367030: ab05         	add	r3, sp, #0x14
  367032: 4618         	mov	r0, r3
  367034: f04e f46e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44e8dc
  367038: ab04         	add	r3, sp, #0x10
  36703a: 4618         	mov	r0, r3
  36703c: f023 f1de    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4233bc
  367040: 9b03         	ldr	r3, [sp, #0xc]
  367042: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  367046: 681b         	ldr	r3, [r3]
  367048: 3340         	adds	r3, #0x40
  36704a: 681b         	ldr	r3, [r3]
  36704c: 9a03         	ldr	r2, [sp, #0xc]
  36704e: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  367052: 4610         	mov	r0, r2
  367054: 9914         	ldr	r1, [sp, #0x50]
  367056: 4798         	blx	r3
  367058: 9b03         	ldr	r3, [sp, #0xc]
  36705a: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  36705e: eddd 7a13    	vldr	s15, [sp, #76]
  367062: eefd 7ae7    	vcvt.s32.f32	s15, s15
  367066: ee17 2a90    	vmov	r2, s15
  36706a: 4618         	mov	r0, r3
  36706c: 4611         	mov	r1, r2
  36706e: f23e fe89    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x23ed12
  367072: 9b03         	ldr	r3, [sp, #0xc]
  367074: 681b         	ldr	r3, [r3]
  367076: 33c8         	adds	r3, #0xc8
  367078: 681b         	ldr	r3, [r3]
  36707a: 9903         	ldr	r1, [sp, #0xc]
  36707c: 9a03         	ldr	r2, [sp, #0xc]
  36707e: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  367082: 4608         	mov	r0, r1
  367084: 4611         	mov	r1, r2
  367086: 4798         	blx	r3
  367088: 4b2d         	ldr	r3, [pc, #0xb4]         @ 0x367140 <MapSelectLayer::init()+0x9b0>
  36708a: 447b         	add	r3, pc
  36708c: 4618         	mov	r0, r3
  36708e: f271 f879    	bl	0x5d8184 <cocos2d::CCSprite::create(char const*)> @ imm = #0x2710f2
  367092: 4602         	mov	r2, r0
  367094: 9b03         	ldr	r3, [sp, #0xc]
  367096: f8c3 2138    	str.w	r2, [r3, #0x138]
  36709a: 9b03         	ldr	r3, [sp, #0xc]
  36709c: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3670a0: 681b         	ldr	r3, [r3]
  3670a2: 334c         	adds	r3, #0x4c
  3670a4: 681b         	ldr	r3, [r3]
  3670a6: 9a03         	ldr	r2, [sp, #0xc]
  3670a8: f8d2 1138    	ldr.w	r1, [r2, #0x138]
  3670ac: aa18         	add	r2, sp, #0x60
  3670ae: 4608         	mov	r0, r1
  3670b0: 4611         	mov	r1, r2
  3670b2: 4798         	blx	r3
  3670b4: 9b03         	ldr	r3, [sp, #0xc]
  3670b6: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3670ba: 681b         	ldr	r3, [r3]
  3670bc: f503 73d2    	add.w	r3, r3, #0x1a4
  3670c0: 681b         	ldr	r3, [r3]
  3670c2: 9a03         	ldr	r2, [sp, #0xc]
  3670c4: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  3670c8: 4610         	mov	r0, r2
  3670ca: 2123         	movs	r1, #0x23
  3670cc: 4798         	blx	r3
  3670ce: 9b03         	ldr	r3, [sp, #0xc]
  3670d0: 681b         	ldr	r3, [r3]
  3670d2: 33c8         	adds	r3, #0xc8
  3670d4: 681b         	ldr	r3, [r3]
  3670d6: 9903         	ldr	r1, [sp, #0xc]
  3670d8: 9a03         	ldr	r2, [sp, #0xc]
  3670da: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  3670de: 4608         	mov	r0, r1
  3670e0: 4611         	mov	r1, r2
  3670e2: 4798         	blx	r3
  3670e4: 2301         	movs	r3, #0x1
  3670e6: e020         	b	0x36712a <MapSelectLayer::init()+0x99a> @ imm = #0x40
  3670e8: ab1c         	add	r3, sp, #0x70
  3670ea: 4618         	mov	r0, r3
  3670ec: f04e f412    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44e824
  3670f0: e7ff         	b	0x3670f2 <MapSelectLayer::init()+0x962> @ imm = #-0x2
  3670f2: ab1a         	add	r3, sp, #0x68
  3670f4: 4618         	mov	r0, r3
  3670f6: f023 f181    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x423302
  3670fa: f020 f7d7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x420fae
  3670fe: ab05         	add	r3, sp, #0x14
  367100: 4618         	mov	r0, r3
  367102: f04e f407    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44e80e
  367106: e7ff         	b	0x367108 <MapSelectLayer::init()+0x978> @ imm = #-0x2
  367108: ab04         	add	r3, sp, #0x10
  36710a: 4618         	mov	r0, r3
  36710c: f023 f176    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4232ec
  367110: f020 f7cc    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x420f98
  367114: ab05         	add	r3, sp, #0x14
  367116: 4618         	mov	r0, r3
  367118: f04e f3fc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44e7f8
  36711c: e7ff         	b	0x36711e <MapSelectLayer::init()+0x98e> @ imm = #-0x2
  36711e: ab04         	add	r3, sp, #0x10
  367120: 4618         	mov	r0, r3
  367122: f023 f16b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4232d6
  367126: f020 f7c1    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x420f82
  36712a: 4618         	mov	r0, r3
  36712c: b030         	add	sp, #0xc0
  36712e: ecbd 8b02    	vpop	{d8}
  367132: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x367133); words below are literal-pool data ---
  367134: f3af 8000    	nop.w
  367140: 5f4a         	ldrsh	r2, [r1, r5]
  367142: 0046         	lsls	r6, r0, #0x1

// ==== MapSelectLayer::~MapSelectLayer
//      file offset 0x367148 (= ELF address; Ghidra 0x377148), 196 bytes, Thumb-2
  367148: b500         	push	{lr}
  36714a: b083         	sub	sp, #0xc
  36714c: 9001         	str	r0, [sp, #0x4]
  36714e: 4b2d         	ldr	r3, [pc, #0xb4]         @ 0x367204 <MapSelectLayer::~MapSelectLayer()+0xbc>
  367150: 447b         	add	r3, pc
  367152: 9a01         	ldr	r2, [sp, #0x4]
  367154: 492c         	ldr	r1, [pc, #0xb0]         @ 0x367208 <MapSelectLayer::~MapSelectLayer()+0xc0>
  367156: 5859         	ldr	r1, [r3, r1]
  367158: 3108         	adds	r1, #0x8
  36715a: 6011         	str	r1, [r2]
  36715c: 9a01         	ldr	r2, [sp, #0x4]
  36715e: 492a         	ldr	r1, [pc, #0xa8]         @ 0x367208 <MapSelectLayer::~MapSelectLayer()+0xc0>
  367160: 5859         	ldr	r1, [r3, r1]
  367162: f501 7104    	add.w	r1, r1, #0x210
  367166: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  36716a: 9a01         	ldr	r2, [sp, #0x4]
  36716c: 4926         	ldr	r1, [pc, #0x98]         @ 0x367208 <MapSelectLayer::~MapSelectLayer()+0xc0>
  36716e: 5859         	ldr	r1, [r3, r1]
  367170: f501 7110    	add.w	r1, r1, #0x240
  367174: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  367178: 9a01         	ldr	r2, [sp, #0x4]
  36717a: 4923         	ldr	r1, [pc, #0x8c]         @ 0x367208 <MapSelectLayer::~MapSelectLayer()+0xc0>
  36717c: 585b         	ldr	r3, [r3, r1]
  36717e: f503 7313    	add.w	r3, r3, #0x24c
  367182: f8c2 30ec    	str.w	r3, [r2, #0xec]
  367186: 9b01         	ldr	r3, [sp, #0x4]
  367188: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  36718c: 4618         	mov	r0, r3
  36718e: f230 fe93    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x230d26
  367192: 9b01         	ldr	r3, [sp, #0x4]
  367194: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  367198: 4618         	mov	r0, r3
  36719a: f230 fe8d    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x230d1a
  36719e: 9b01         	ldr	r3, [sp, #0x4]
  3671a0: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3671a4: 4618         	mov	r0, r3
  3671a6: f230 fe87    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x230d0e
  3671aa: 9b01         	ldr	r3, [sp, #0x4]
  3671ac: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3671b0: 4618         	mov	r0, r3
  3671b2: f230 fe81    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x230d02
  3671b6: 9b01         	ldr	r3, [sp, #0x4]
  3671b8: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3671bc: 4618         	mov	r0, r3
  3671be: f230 fe7b    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x230cf6
  3671c2: 9b01         	ldr	r3, [sp, #0x4]
  3671c4: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3671c8: 4618         	mov	r0, r3
  3671ca: f230 fe75    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x230cea
  3671ce: 9b01         	ldr	r3, [sp, #0x4]
  3671d0: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  3671d4: 4618         	mov	r0, r3
  3671d6: f230 fe6f    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x230cde
  3671da: 9b01         	ldr	r3, [sp, #0x4]
  3671dc: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  3671e0: 4618         	mov	r0, r3
  3671e2: f230 fe69    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x230cd2
  3671e6: 9b01         	ldr	r3, [sp, #0x4]
  3671e8: 4618         	mov	r0, r3
  3671ea: f245 ffaf    	bl	0x5ad14c <cocos2d::CCLayer::~CCLayer()> @ imm = #0x245f5e
  3671ee: 2300         	movs	r3, #0x0
  3671f0: 2b00         	cmp	r3, #0x0
  3671f2: d002         	beq	0x3671fa <MapSelectLayer::~MapSelectLayer()+0xb2> @ imm = #0x4
  3671f4: 9801         	ldr	r0, [sp, #0x4]
  3671f6: f020 f755    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x420eaa
  3671fa: 9b01         	ldr	r3, [sp, #0x4]
  3671fc: 4618         	mov	r0, r3
  3671fe: b003         	add	sp, #0xc
  367200: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x367203); words below are literal-pool data ---
  367204: b8b8         	<unknown>
  367206: 005c         	lsls	r4, r3, #0x1
  367208: dba0         	blt	0x36714c <MapSelectLayer::~MapSelectLayer()+0x4> @ imm = #-0xc0
  36720a: ffff f1a0    	<unknown>

// ==== MapSelectLayer::~MapSelectLayer
//      file offset 0x36720c (= ELF address; Ghidra 0x37720c), 8 bytes, Thumb-2
  36720c: f1a0 00e4    	sub.w	r0, r0, #0xe4
  367210: f7ff bf9a    	b.w	0x367148 <MapSelectLayer::~MapSelectLayer()> @ imm = #-0xcc

// ==== MapSelectLayer::~MapSelectLayer
//      file offset 0x367214 (= ELF address; Ghidra 0x377214), 28 bytes, Thumb-2
  367214: b500         	push	{lr}
  367216: b083         	sub	sp, #0xc
  367218: 9001         	str	r0, [sp, #0x4]
  36721a: 9801         	ldr	r0, [sp, #0x4]
  36721c: f7ff ff94    	bl	0x367148 <MapSelectLayer::~MapSelectLayer()> @ imm = #-0xd8
  367220: 9801         	ldr	r0, [sp, #0x4]
  367222: f020 f73f    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x420e7e
  367226: 9b01         	ldr	r3, [sp, #0x4]
  367228: 4618         	mov	r0, r3
  36722a: b003         	add	sp, #0xc
  36722c: f85d fb04    	ldr	pc, [sp], #4

// ==== MapSelectLayer::~MapSelectLayer
//      file offset 0x367230 (= ELF address; Ghidra 0x377230), 8 bytes, Thumb-2
  367230: f1a0 00e4    	sub.w	r0, r0, #0xe4
  367234: f7ff bfee    	b.w	0x367214 <MapSelectLayer::~MapSelectLayer()> @ imm = #-0x24

// ==== MapSelectLayer::onPlay
//      file offset 0x367238 (= ELF address; Ghidra 0x377238), 376 bytes, Thumb-2
  367238: b570         	push	{r4, r5, r6, lr}
  36723a: b086         	sub	sp, #0x18
  36723c: 9001         	str	r0, [sp, #0x4]
  36723e: 9100         	str	r1, [sp]
  367240: 4c53         	ldr	r4, [pc, #0x14c]        @ 0x367390 <MapSelectLayer::onPlay(cocos2d::CCObject*)+0x158>
  367242: 447c         	add	r4, pc
  367244: 9b01         	ldr	r3, [sp, #0x4]
  367246: f893 3108    	ldrb.w	r3, [r3, #0x108]
  36724a: 2b00         	cmp	r3, #0x0
  36724c: d000         	beq	0x367250 <MapSelectLayer::onPlay(cocos2d::CCObject*)+0x18> @ imm = #0x0
  36724e: e09d         	b	0x36738c <MapSelectLayer::onPlay(cocos2d::CCObject*)+0x154> @ imm = #0x13a
  367250: 9b01         	ldr	r3, [sp, #0x4]
  367252: 2201         	movs	r2, #0x1
  367254: f883 2108    	strb.w	r2, [r3, #0x108]
  367258: 4b4e         	ldr	r3, [pc, #0x138]        @ 0x367394 <MapSelectLayer::onPlay(cocos2d::CCObject*)+0x15c>
  36725a: 58e3         	ldr	r3, [r4, r3]
  36725c: 681b         	ldr	r3, [r3]
  36725e: 4618         	mov	r0, r3
  367260: 210d         	movs	r1, #0xd
  367262: f090 fdad    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x90b5a
  367266: 4b4c         	ldr	r3, [pc, #0x130]        @ 0x367398 <MapSelectLayer::onPlay(cocos2d::CCObject*)+0x160>
  367268: 58e3         	ldr	r3, [r4, r3]
  36726a: 781b         	ldrb	r3, [r3]
  36726c: f083 0301    	eor	r3, r3, #0x1
  367270: b2db         	uxtb	r3, r3
  367272: 2b00         	cmp	r3, #0x0
  367274: d05c         	beq	0x367330 <MapSelectLayer::onPlay(cocos2d::CCObject*)+0xf8> @ imm = #0xb8
  367276: f010 fc63    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x108c6
  36727a: 4602         	mov	r2, r0
  36727c: 9b01         	ldr	r3, [sp, #0x4]
  36727e: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  367282: 4610         	mov	r0, r2
  367284: 4619         	mov	r1, r3
  367286: f012 fd35    	bl	0x379cf4 <NetworkManager::setMaxPlayers(int)> @ imm = #0x12a6a
  36728a: f27b f9cf    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x27b39e
  36728e: 4605         	mov	r5, r0
  367290: ab03         	add	r3, sp, #0xc
  367292: 4618         	mov	r0, r3
  367294: f023 f0ae    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x42315c
  367298: aa05         	add	r2, sp, #0x14
  36729a: ab03         	add	r3, sp, #0xc
  36729c: 4610         	mov	r0, r2
  36729e: 4a3f         	ldr	r2, [pc, #0xfc]         @ 0x36739c <MapSelectLayer::onPlay(cocos2d::CCObject*)+0x164>
  3672a0: 447a         	add	r2, pc
  3672a2: 4611         	mov	r1, r2
  3672a4: 461a         	mov	r2, r3
  3672a6: f04f f3db    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x44f7b6
  3672aa: aa04         	add	r2, sp, #0x10
  3672ac: ab05         	add	r3, sp, #0x14
  3672ae: 4610         	mov	r0, r2
  3672b0: 4629         	mov	r1, r5
  3672b2: 4a3b         	ldr	r2, [pc, #0xec]         @ 0x3673a0 <MapSelectLayer::onPlay(cocos2d::CCObject*)+0x168>
  3672b4: 447a         	add	r2, pc
  3672b6: f27b f8f1    	bl	0x5e249c <cocos2d::CCUserDefault::getStringForKey(char const*, std::string const&)> @ imm = #0x27b1e2
  3672ba: ab05         	add	r3, sp, #0x14
  3672bc: 4618         	mov	r0, r3
  3672be: f04e f329    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44e652
  3672c2: ab03         	add	r3, sp, #0xc
  3672c4: 4618         	mov	r0, r3
  3672c6: f023 f099    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x423132
  3672ca: f010 fc39    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x10872
  3672ce: 4605         	mov	r5, r0
  3672d0: ab04         	add	r3, sp, #0x10
  3672d2: 4618         	mov	r0, r3
  3672d4: f04e f014    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x44e028
  3672d8: 4603         	mov	r3, r0
  3672da: 4a32         	ldr	r2, [pc, #0xc8]         @ 0x3673a4 <MapSelectLayer::onPlay(cocos2d::CCObject*)+0x16c>
  3672dc: 447a         	add	r2, pc
  3672de: 4610         	mov	r0, r2
  3672e0: 4619         	mov	r1, r3
  3672e2: f232 fc15    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x23282a
  3672e6: 4603         	mov	r3, r0
  3672e8: 4618         	mov	r0, r3
  3672ea: f232 fb1d    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x23263a
  3672ee: 4606         	mov	r6, r0
  3672f0: ab03         	add	r3, sp, #0xc
  3672f2: 4618         	mov	r0, r3
  3672f4: f023 f07e    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4230fc
  3672f8: aa05         	add	r2, sp, #0x14
  3672fa: ab03         	add	r3, sp, #0xc
  3672fc: 4610         	mov	r0, r2
  3672fe: 4631         	mov	r1, r6
  367300: 461a         	mov	r2, r3
  367302: f04f f3ad    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x44f75a
  367306: ab05         	add	r3, sp, #0x14
  367308: 4628         	mov	r0, r5
  36730a: 4619         	mov	r1, r3
  36730c: f012 fe3a    	bl	0x379f84 <NetworkManager::hostSession(std::string)> @ imm = #0x12c74
  367310: ab05         	add	r3, sp, #0x14
  367312: 4618         	mov	r0, r3
  367314: f04e f2fe    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44e5fc
  367318: ab03         	add	r3, sp, #0xc
  36731a: 4618         	mov	r0, r3
  36731c: f023 f06e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4230dc
  367320: 4b21         	ldr	r3, [pc, #0x84]         @ 0x3673a8 <MapSelectLayer::onPlay(cocos2d::CCObject*)+0x170>
  367322: 58e3         	ldr	r3, [r4, r3]
  367324: 2201         	movs	r2, #0x1
  367326: 701a         	strb	r2, [r3]
  367328: ab04         	add	r3, sp, #0x10
  36732a: 4618         	mov	r0, r3
  36732c: f04e f2f2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44e5e4
  367330: f234 f920    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x234240
  367334: 4604         	mov	r4, r0
  367336: 4b1d         	ldr	r3, [pc, #0x74]         @ 0x3673ac <MapSelectLayer::onPlay(cocos2d::CCObject*)+0x174>
  367338: 447b         	add	r3, pc
  36733a: 681d         	ldr	r5, [r3]
  36733c: f7ea f946    	bl	0x3515cc <LobbyLayer::scene()> @ imm = #-0x15d74
  367340: 4603         	mov	r3, r0
  367342: 4628         	mov	r0, r5
  367344: 4619         	mov	r1, r3
  367346: f24b fc9d    	bl	0x5b2c84 <cocos2d::CCTransitionFade::create(float, cocos2d::CCScene*)> @ imm = #0x24b93a
  36734a: 4603         	mov	r3, r0
  36734c: 4620         	mov	r0, r4
  36734e: 4619         	mov	r1, r3
  367350: f235 f804    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x235008
  367354: e01a         	b	0x36738c <MapSelectLayer::onPlay(cocos2d::CCObject*)+0x154> @ imm = #0x34
  367356: ab05         	add	r3, sp, #0x14
  367358: 4618         	mov	r0, r3
  36735a: f04e f2db    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44e5b6
  36735e: e7ff         	b	0x367360 <MapSelectLayer::onPlay(cocos2d::CCObject*)+0x128> @ imm = #-0x2
  367360: ab03         	add	r3, sp, #0xc
  367362: 4618         	mov	r0, r3
  367364: f023 f04a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x423094
  367368: f020 f6a0    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x420d40
  36736c: ab05         	add	r3, sp, #0x14
  36736e: 4618         	mov	r0, r3
  367370: f04e f2d0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44e5a0
  367374: e7ff         	b	0x367376 <MapSelectLayer::onPlay(cocos2d::CCObject*)+0x13e> @ imm = #-0x2
  367376: ab03         	add	r3, sp, #0xc
  367378: 4618         	mov	r0, r3
  36737a: f023 f03f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42307e
  36737e: e7ff         	b	0x367380 <MapSelectLayer::onPlay(cocos2d::CCObject*)+0x148> @ imm = #-0x2
  367380: ab04         	add	r3, sp, #0x10
  367382: 4618         	mov	r0, r3
  367384: f04e f2c6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44e58c
  367388: f020 f690    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x420d20
  36738c: b006         	add	sp, #0x18
  36738e: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x36738f); words below are literal-pool data ---
  367390: b7c6         	<unknown>
  367392: 005c         	lsls	r4, r3, #0x1
  367394: d730         	bvc	0x3673f8 <MapSelectLayer::onNextMap(cocos2d::CCObject*)+0x48> @ imm = #0x60
  367396: ffff da58    	<unknown>
  36739a: ffff 5d48    	<unknown>
  36739e: 0046         	lsls	r6, r0, #0x1
  3673a0: 5d3c         	ldrb	r4, [r7, r4]
  3673a2: 0046         	lsls	r6, r0, #0x1
  3673a4: 5d20         	ldrb	r0, [r4, r4]
  3673a6: 0046         	lsls	r6, r0, #0x1
  3673a8: da54         	bge	0x367454 <MapSelectLayer::onPrevMap(cocos2d::CCObject*)+0x38> @ imm = #0xa8
  3673aa: ffff c0d4    	vshr.u64	q14, q2, #0x1
  3673ae: 005c         	lsls	r4, r3, #0x1

// ==== MapSelectLayer::onNextMap
//      file offset 0x3673b0 (= ELF address; Ghidra 0x3773b0), 108 bytes, Thumb-2
  3673b0: b530         	push	{r4, r5, lr}
  3673b2: b083         	sub	sp, #0xc
  3673b4: 9001         	str	r0, [sp, #0x4]
  3673b6: 9100         	str	r1, [sp]
  3673b8: 4c15         	ldr	r4, [pc, #0x54]         @ 0x367410 <MapSelectLayer::onNextMap(cocos2d::CCObject*)+0x60>
  3673ba: 447c         	add	r4, pc
  3673bc: 9b01         	ldr	r3, [sp, #0x4]
  3673be: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3673c2: 1c5a         	adds	r2, r3, #0x1
  3673c4: 9b01         	ldr	r3, [sp, #0x4]
  3673c6: f8c3 2128    	str.w	r2, [r3, #0x128]
  3673ca: 9b01         	ldr	r3, [sp, #0x4]
  3673cc: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3673d0: 461d         	mov	r5, r3
  3673d2: 4b10         	ldr	r3, [pc, #0x40]         @ 0x367414 <MapSelectLayer::onNextMap(cocos2d::CCObject*)+0x64>
  3673d4: 58e3         	ldr	r3, [r4, r3]
  3673d6: 681b         	ldr	r3, [r3]
  3673d8: 4618         	mov	r0, r3
  3673da: f22c fc47    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x22c88e
  3673de: 4603         	mov	r3, r0
  3673e0: 429d         	cmp	r5, r3
  3673e2: bf34         	ite	lo
  3673e4: 2300         	movlo	r3, #0x0
  3673e6: 2301         	movhs	r3, #0x1
  3673e8: b2db         	uxtb	r3, r3
  3673ea: 2b00         	cmp	r3, #0x0
  3673ec: d003         	beq	0x3673f6 <MapSelectLayer::onNextMap(cocos2d::CCObject*)+0x46> @ imm = #0x6
  3673ee: 9b01         	ldr	r3, [sp, #0x4]
  3673f0: 2200         	movs	r2, #0x0
  3673f2: f8c3 2128    	str.w	r2, [r3, #0x128]
  3673f6: 4b08         	ldr	r3, [pc, #0x20]         @ 0x367418 <MapSelectLayer::onNextMap(cocos2d::CCObject*)+0x68>
  3673f8: 58e3         	ldr	r3, [r4, r3]
  3673fa: 681b         	ldr	r3, [r3]
  3673fc: 4618         	mov	r0, r3
  3673fe: 210e         	movs	r1, #0xe
  367400: f090 fcde    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x909bc
  367404: 9801         	ldr	r0, [sp, #0x4]
  367406: f000 f8c3    	bl	0x367590 <MapSelectLayer::UpdateCurrentMapLabel()> @ imm = #0x186
  36740a: b003         	add	sp, #0xc
  36740c: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x36740d); words below are literal-pool data ---
  36740e: bf00         	nop
  367410: b64e         	<unknown>
  367412: 005c         	lsls	r4, r3, #0x1
  367414: d7cc         	bvc	0x3673b0 <MapSelectLayer::onNextMap(cocos2d::CCObject*)> @ imm = #-0x68
  367416: ffff d730    	vqshl.u32	d29, d16, #0x1f
  36741a: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== MapSelectLayer::onPrevMap
//      file offset 0x36741c (= ELF address; Ghidra 0x37741c), 96 bytes, Thumb-2
  36741c: b510         	push	{r4, lr}
  36741e: b082         	sub	sp, #0x8
  367420: 9001         	str	r0, [sp, #0x4]
  367422: 9100         	str	r1, [sp]
  367424: 4c12         	ldr	r4, [pc, #0x48]         @ 0x367470 <MapSelectLayer::onPrevMap(cocos2d::CCObject*)+0x54>
  367426: 447c         	add	r4, pc
  367428: 9b01         	ldr	r3, [sp, #0x4]
  36742a: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  36742e: 1e5a         	subs	r2, r3, #0x1
  367430: 9b01         	ldr	r3, [sp, #0x4]
  367432: f8c3 2128    	str.w	r2, [r3, #0x128]
  367436: 9b01         	ldr	r3, [sp, #0x4]
  367438: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  36743c: 2b00         	cmp	r3, #0x0
  36743e: da0b         	bge	0x367458 <MapSelectLayer::onPrevMap(cocos2d::CCObject*)+0x3c> @ imm = #0x16
  367440: 4b0c         	ldr	r3, [pc, #0x30]         @ 0x367474 <MapSelectLayer::onPrevMap(cocos2d::CCObject*)+0x58>
  367442: 58e3         	ldr	r3, [r4, r3]
  367444: 681b         	ldr	r3, [r3]
  367446: 4618         	mov	r0, r3
  367448: f22c fc10    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x22c820
  36744c: 4603         	mov	r3, r0
  36744e: 3b01         	subs	r3, #0x1
  367450: 461a         	mov	r2, r3
  367452: 9b01         	ldr	r3, [sp, #0x4]
  367454: f8c3 2128    	str.w	r2, [r3, #0x128]
  367458: 4b07         	ldr	r3, [pc, #0x1c]         @ 0x367478 <MapSelectLayer::onPrevMap(cocos2d::CCObject*)+0x5c>
  36745a: 58e3         	ldr	r3, [r4, r3]
  36745c: 681b         	ldr	r3, [r3]
  36745e: 4618         	mov	r0, r3
  367460: 210d         	movs	r1, #0xd
  367462: f090 fcad    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x9095a
  367466: 9801         	ldr	r0, [sp, #0x4]
  367468: f000 f892    	bl	0x367590 <MapSelectLayer::UpdateCurrentMapLabel()> @ imm = #0x124
  36746c: b002         	add	sp, #0x8
  36746e: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x36746f); words below are literal-pool data ---
  367470: b5e2         	push	{r1, r5, r6, r7, lr}
  367472: 005c         	lsls	r4, r3, #0x1
  367474: d7cc         	bvc	0x367410 <MapSelectLayer::onNextMap(cocos2d::CCObject*)+0x60> @ imm = #-0x68
  367476: ffff d730    	vqshl.u32	d29, d16, #0x1f
  36747a: ffff b500    	<unknown>

// ==== MapSelectLayer::onMorePlayers
//      file offset 0x36747c (= ELF address; Ghidra 0x37747c), 52 bytes, Thumb-2
  36747c: b500         	push	{lr}
  36747e: b083         	sub	sp, #0xc
  367480: 9001         	str	r0, [sp, #0x4]
  367482: 9100         	str	r1, [sp]
  367484: 9b01         	ldr	r3, [sp, #0x4]
  367486: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  36748a: 1c5a         	adds	r2, r3, #0x1
  36748c: 9b01         	ldr	r3, [sp, #0x4]
  36748e: f8c3 212c    	str.w	r2, [r3, #0x12c]
  367492: 9b01         	ldr	r3, [sp, #0x4]
  367494: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  367498: 2b04         	cmp	r3, #0x4
  36749a: dd03         	ble	0x3674a4 <MapSelectLayer::onMorePlayers(cocos2d::CCObject*)+0x28> @ imm = #0x6
  36749c: 9b01         	ldr	r3, [sp, #0x4]
  36749e: 2204         	movs	r2, #0x4
  3674a0: f8c3 212c    	str.w	r2, [r3, #0x12c]
  3674a4: 9801         	ldr	r0, [sp, #0x4]
  3674a6: f000 f95f    	bl	0x367768 <MapSelectLayer::UpdateNumPlayersLabel()> @ imm = #0x2be
  3674aa: b003         	add	sp, #0xc
  3674ac: f85d fb04    	ldr	pc, [sp], #4

// ==== MapSelectLayer::onLessPlayers
//      file offset 0x3674b0 (= ELF address; Ghidra 0x3774b0), 52 bytes, Thumb-2
  3674b0: b500         	push	{lr}
  3674b2: b083         	sub	sp, #0xc
  3674b4: 9001         	str	r0, [sp, #0x4]
  3674b6: 9100         	str	r1, [sp]
  3674b8: 9b01         	ldr	r3, [sp, #0x4]
  3674ba: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  3674be: 1e5a         	subs	r2, r3, #0x1
  3674c0: 9b01         	ldr	r3, [sp, #0x4]
  3674c2: f8c3 212c    	str.w	r2, [r3, #0x12c]
  3674c6: 9b01         	ldr	r3, [sp, #0x4]
  3674c8: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  3674cc: 2b01         	cmp	r3, #0x1
  3674ce: dc03         	bgt	0x3674d8 <MapSelectLayer::onLessPlayers(cocos2d::CCObject*)+0x28> @ imm = #0x6
  3674d0: 9b01         	ldr	r3, [sp, #0x4]
  3674d2: 2202         	movs	r2, #0x2
  3674d4: f8c3 212c    	str.w	r2, [r3, #0x12c]
  3674d8: 9801         	ldr	r0, [sp, #0x4]
  3674da: f000 f945    	bl	0x367768 <MapSelectLayer::UpdateNumPlayersLabel()> @ imm = #0x28a
  3674de: b003         	add	sp, #0xc
  3674e0: f85d fb04    	ldr	pc, [sp], #4

// ==== MapSelectLayer::onTeams
//      file offset 0x3674e4 (= ELF address; Ghidra 0x3774e4), 10 bytes, Thumb-2
  3674e4: b082         	sub	sp, #0x8
  3674e6: 9001         	str	r0, [sp, #0x4]
  3674e8: 9100         	str	r1, [sp]
  3674ea: b002         	add	sp, #0x8
  3674ec: 4770         	bx	lr

// ==== MapSelectLayer::onBack
//      file offset 0x3674f0 (= ELF address; Ghidra 0x3774f0), 156 bytes, Thumb-2
  3674f0: b530         	push	{r4, r5, lr}
  3674f2: b083         	sub	sp, #0xc
  3674f4: 9001         	str	r0, [sp, #0x4]
  3674f6: 9100         	str	r1, [sp]
  3674f8: 4c1f         	ldr	r4, [pc, #0x7c]         @ 0x367578 <MapSelectLayer::onBack(cocos2d::CCObject*)+0x88>
  3674fa: 447c         	add	r4, pc
  3674fc: 9b01         	ldr	r3, [sp, #0x4]
  3674fe: f893 3108    	ldrb.w	r3, [r3, #0x108]
  367502: 2b00         	cmp	r3, #0x0
  367504: d000         	beq	0x367508 <MapSelectLayer::onBack(cocos2d::CCObject*)+0x18> @ imm = #0x0
  367506: e034         	b	0x367572 <MapSelectLayer::onBack(cocos2d::CCObject*)+0x82> @ imm = #0x68
  367508: 9b01         	ldr	r3, [sp, #0x4]
  36750a: 2201         	movs	r2, #0x1
  36750c: f883 2108    	strb.w	r2, [r3, #0x108]
  367510: 4b1a         	ldr	r3, [pc, #0x68]         @ 0x36757c <MapSelectLayer::onBack(cocos2d::CCObject*)+0x8c>
  367512: 58e3         	ldr	r3, [r4, r3]
  367514: 681b         	ldr	r3, [r3]
  367516: 4618         	mov	r0, r3
  367518: 210d         	movs	r1, #0xd
  36751a: f090 fc51    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x908a2
  36751e: 4b18         	ldr	r3, [pc, #0x60]         @ 0x367580 <MapSelectLayer::onBack(cocos2d::CCObject*)+0x90>
  367520: 58e3         	ldr	r3, [r4, r3]
  367522: 781b         	ldrb	r3, [r3]
  367524: 2b00         	cmp	r3, #0x0
  367526: d012         	beq	0x36754e <MapSelectLayer::onBack(cocos2d::CCObject*)+0x5e> @ imm = #0x24
  367528: f234 f824    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x234048
  36752c: 4604         	mov	r4, r0
  36752e: 4b15         	ldr	r3, [pc, #0x54]         @ 0x367584 <MapSelectLayer::onBack(cocos2d::CCObject*)+0x94>
  367530: 447b         	add	r3, pc
  367532: 681d         	ldr	r5, [r3]
  367534: f7eb f85a    	bl	0x3525ec <LocalGameLayer::scene()> @ imm = #-0x14f4c
  367538: 4603         	mov	r3, r0
  36753a: 4628         	mov	r0, r5
  36753c: 4619         	mov	r1, r3
  36753e: f249 fee3    	bl	0x5b1308 <cocos2d::CCTransitionSlideInL::create(float, cocos2d::CCScene*)> @ imm = #0x249dc6
  367542: 4603         	mov	r3, r0
  367544: 4620         	mov	r0, r4
  367546: 4619         	mov	r1, r3
  367548: f234 ff08    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x234e10
  36754c: e011         	b	0x367572 <MapSelectLayer::onBack(cocos2d::CCObject*)+0x82> @ imm = #0x22
  36754e: f234 f811    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x234022
  367552: 4604         	mov	r4, r0
  367554: 4b0c         	ldr	r3, [pc, #0x30]         @ 0x367588 <MapSelectLayer::onBack(cocos2d::CCObject*)+0x98>
  367556: 447b         	add	r3, pc
  367558: 681d         	ldr	r5, [r3]
  36755a: f7bc fd27    	bl	0x323fac <FindGameLayer::scene()> @ imm = #-0x435b2
  36755e: 4603         	mov	r3, r0
  367560: 4628         	mov	r0, r5
  367562: 4619         	mov	r1, r3
  367564: f249 fed0    	bl	0x5b1308 <cocos2d::CCTransitionSlideInL::create(float, cocos2d::CCScene*)> @ imm = #0x249da0
  367568: 4603         	mov	r3, r0
  36756a: 4620         	mov	r0, r4
  36756c: 4619         	mov	r1, r3
  36756e: f234 fef5    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x234dea
  367572: b003         	add	sp, #0xc
  367574: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x367575); words below are literal-pool data ---
  367576: bf00         	nop
  367578: b50e         	push	{r1, r2, r3, lr}
  36757a: 005c         	lsls	r4, r3, #0x1
  36757c: d730         	bvc	0x3675e0 <MapSelectLayer::UpdateCurrentMapLabel()+0x50> @ imm = #0x60
  36757e: ffff da58    	<unknown>
  367582: ffff bedc    	<unknown>
  367586: 005c         	lsls	r4, r3, #0x1
  367588: beb6         	bkpt	#0xb6
  36758a: 005c         	lsls	r4, r3, #0x1

// ==== MapSelectLayer::UpdateCurrentMapLabel
//      file offset 0x367590 (= ELF address; Ghidra 0x377590), 472 bytes, Thumb-2
  367590: b570         	push	{r4, r5, r6, lr}
  367592: ed2d 8b02    	vpush	{d8}
  367596: b092         	sub	sp, #0x48
  367598: 9001         	str	r0, [sp, #0x4]
  36759a: 4c70         	ldr	r4, [pc, #0x1c0]        @ 0x36775c <MapSelectLayer::UpdateCurrentMapLabel()+0x1cc>
  36759c: 447c         	add	r4, pc
  36759e: 4b70         	ldr	r3, [pc, #0x1c0]        @ 0x367760 <MapSelectLayer::UpdateCurrentMapLabel()+0x1d0>
  3675a0: 58e3         	ldr	r3, [r4, r3]
  3675a2: 681b         	ldr	r3, [r3]
  3675a4: 4618         	mov	r0, r3
  3675a6: f22c fb71    	bl	0x593c8c <cocos2d::CCDictionary::allKeys()> @ imm = #0x22c6e2
  3675aa: 4602         	mov	r2, r0
  3675ac: 9b01         	ldr	r3, [sp, #0x4]
  3675ae: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  3675b2: 4610         	mov	r0, r2
  3675b4: 4619         	mov	r1, r3
  3675b6: f232 fdb3    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x232b66
  3675ba: 4603         	mov	r3, r0
  3675bc: 9303         	str	r3, [sp, #0xc]
  3675be: 9803         	ldr	r0, [sp, #0xc]
  3675c0: f232 f9b2    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x232364
  3675c4: 4603         	mov	r3, r0
  3675c6: 4a67         	ldr	r2, [pc, #0x19c]        @ 0x367764 <MapSelectLayer::UpdateCurrentMapLabel()+0x1d4>
  3675c8: 58a2         	ldr	r2, [r4, r2]
  3675ca: 4610         	mov	r0, r2
  3675cc: 4619         	mov	r1, r3
  3675ce: f04e f44f    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x44e89e
  3675d2: ab0e         	add	r3, sp, #0x38
  3675d4: 4618         	mov	r0, r3
  3675d6: 4b63         	ldr	r3, [pc, #0x18c]        @ 0x367764 <MapSelectLayer::UpdateCurrentMapLabel()+0x1d4>
  3675d8: 58e3         	ldr	r3, [r4, r3]
  3675da: 4619         	mov	r1, r3
  3675dc: f04e f784    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x44ef08
  3675e0: aa02         	add	r2, sp, #0x8
  3675e2: ab0e         	add	r3, sp, #0x38
  3675e4: 4610         	mov	r0, r2
  3675e6: 4619         	mov	r1, r3
  3675e8: f7ff f81c    	bl	0x366624 <MapManager::hasPrefix(std::string, std::string)+0xef4> @ imm = #-0xfc8
  3675ec: ab0e         	add	r3, sp, #0x38
  3675ee: 4618         	mov	r0, r3
  3675f0: f04e f190    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44e320
  3675f4: 9b01         	ldr	r3, [sp, #0x4]
  3675f6: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3675fa: 681b         	ldr	r3, [r3]
  3675fc: f503 73fc    	add.w	r3, r3, #0x1f8
  367600: 681c         	ldr	r4, [r3]
  367602: 9b01         	ldr	r3, [sp, #0x4]
  367604: f8d3 5118    	ldr.w	r5, [r3, #0x118]
  367608: ab02         	add	r3, sp, #0x8
  36760a: 4618         	mov	r0, r3
  36760c: f04d f678    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x44dcf0
  367610: 4603         	mov	r3, r0
  367612: 4628         	mov	r0, r5
  367614: 4619         	mov	r1, r3
  367616: 47a0         	blx	r4
  367618: 9b01         	ldr	r3, [sp, #0x4]
  36761a: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  36761e: 681b         	ldr	r3, [r3]
  367620: 334c         	adds	r3, #0x4c
  367622: 681c         	ldr	r4, [r3]
  367624: 9b01         	ldr	r3, [sp, #0x4]
  367626: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  36762a: 461d         	mov	r5, r3
  36762c: 9b01         	ldr	r3, [sp, #0x4]
  36762e: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  367632: 681b         	ldr	r3, [r3]
  367634: 3350         	adds	r3, #0x50
  367636: 681b         	ldr	r3, [r3]
  367638: 9a01         	ldr	r2, [sp, #0x4]
  36763a: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  36763e: 4610         	mov	r0, r2
  367640: 4798         	blx	r3
  367642: 4603         	mov	r3, r0
  367644: 681e         	ldr	r6, [r3]
  367646: 9b01         	ldr	r3, [sp, #0x4]
  367648: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  36764c: 681b         	ldr	r3, [r3]
  36764e: 3350         	adds	r3, #0x50
  367650: 681b         	ldr	r3, [r3]
  367652: 9a01         	ldr	r2, [sp, #0x4]
  367654: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  367658: 4610         	mov	r0, r2
  36765a: 4798         	blx	r3
  36765c: 4603         	mov	r3, r0
  36765e: 685b         	ldr	r3, [r3, #0x4]
  367660: aa04         	add	r2, sp, #0x10
  367662: 4610         	mov	r0, r2
  367664: 4631         	mov	r1, r6
  367666: 461a         	mov	r2, r3
  367668: f22b fb42    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x22b684
  36766c: ab0a         	add	r3, sp, #0x28
  36766e: 4618         	mov	r0, r3
  367670: ed9f 0b37    	vldr	d0, [pc, #220]          @ 0x367750 <MapSelectLayer::UpdateCurrentMapLabel()+0x1c0>
  367674: eeba 1b00    	vmov.f64	d1, #-8.000000e+00
  367678: f7fe f94c    	bl	0x365914 <MapManager::hasPrefix(std::string, std::string)+0x1e4> @ imm = #-0x1d68
  36767c: ed9d 8b0a    	vldr	d8, [sp, #40]
  367680: ab02         	add	r3, sp, #0x8
  367682: 4618         	mov	r0, r3
  367684: f04d f4ea    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x44d9d4
  367688: 4603         	mov	r3, r0
  36768a: ee07 3a90    	vmov	s15, r3
  36768e: eeb8 7a67    	vcvt.f32.u32	s14, s15
  367692: eef3 7a08    	vmov.f32	s15, #2.400000e+01
  367696: ee27 7a27    	vmul.f32	s14, s14, s15
  36769a: eddf 7a2f    	vldr	s15, [pc, #188]         @ 0x367758 <MapSelectLayer::UpdateCurrentMapLabel()+0x1c8>
  36769e: ee27 7a27    	vmul.f32	s14, s14, s15
  3676a2: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3676a6: eec7 7a27    	vdiv.f32	s15, s14, s15
  3676aa: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3676ae: ee38 7b47    	vsub.f64	d7, d8, d7
  3676b2: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3676b6: ab0e         	add	r3, sp, #0x38
  3676b8: 4618         	mov	r0, r3
  3676ba: ed9f 0b25    	vldr	d0, [pc, #148]          @ 0x367750 <MapSelectLayer::UpdateCurrentMapLabel()+0x1c0>
  3676be: eeba 1b00    	vmov.f64	d1, #-8.000000e+00
  3676c2: f7fe f927    	bl	0x365914 <MapManager::hasPrefix(std::string, std::string)+0x1e4> @ imm = #-0x1db2
  3676c6: ed9d 7b10    	vldr	d7, [sp, #64]
  3676ca: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3676ce: ab06         	add	r3, sp, #0x18
  3676d0: 4618         	mov	r0, r3
  3676d2: ee18 1a10    	vmov	r1, s16
  3676d6: ee17 2a90    	vmov	r2, s15
  3676da: f22b fb09    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x22b612
  3676de: a908         	add	r1, sp, #0x20
  3676e0: aa04         	add	r2, sp, #0x10
  3676e2: ab06         	add	r3, sp, #0x18
  3676e4: 4608         	mov	r0, r1
  3676e6: 4611         	mov	r1, r2
  3676e8: 461a         	mov	r2, r3
  3676ea: f7fe f903    	bl	0x3658f4 <MapManager::hasPrefix(std::string, std::string)+0x1c4> @ imm = #-0x1dfa
  3676ee: ab08         	add	r3, sp, #0x20
  3676f0: 4628         	mov	r0, r5
  3676f2: 4619         	mov	r1, r3
  3676f4: 47a0         	blx	r4
  3676f6: 9b01         	ldr	r3, [sp, #0x4]
  3676f8: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3676fc: 4618         	mov	r0, r3
  3676fe: 2118         	movs	r1, #0x18
  367700: f23e fb40    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x23e680
  367704: 9b01         	ldr	r3, [sp, #0x4]
  367706: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  36770a: 681b         	ldr	r3, [r3]
  36770c: 3340         	adds	r3, #0x40
  36770e: 681b         	ldr	r3, [r3]
  367710: 9a01         	ldr	r2, [sp, #0x4]
  367712: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  367716: 4610         	mov	r0, r2
  367718: f64c 41cd    	movw	r1, #0xcccd
  36771c: f6c3 710c    	movt	r1, #0x3f0c
  367720: 4798         	blx	r3
  367722: ab02         	add	r3, sp, #0x8
  367724: 4618         	mov	r0, r3
  367726: f04e f0f5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44e1ea
  36772a: e00b         	b	0x367744 <MapSelectLayer::UpdateCurrentMapLabel()+0x1b4> @ imm = #0x16
  36772c: ab0e         	add	r3, sp, #0x38
  36772e: 4618         	mov	r0, r3
  367730: f04e f0f0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44e1e0
  367734: f020 f4ba    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x420974
  367738: ab02         	add	r3, sp, #0x8
  36773a: 4618         	mov	r0, r3
  36773c: f04e f0ea    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x44e1d4
  367740: f020 f4b4    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x420968
  367744: b012         	add	sp, #0x48
  367746: ecbd 8b02    	vpop	{d8}
  36774a: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x36774b); words below are literal-pool data ---
  36774c: f3af 8000    	nop.w
  367758: cccd         	ldm	r4!, {r0, r2, r3, r6, r7}
  36775a: 3f0c         	subs	r7, #0xc
  36775c: b46c         	push	{r2, r3, r5, r6}
  36775e: 005c         	lsls	r4, r3, #0x1
  367760: d7cc         	bvc	0x3676fc <MapSelectLayer::UpdateCurrentMapLabel()+0x16c> @ imm = #-0x68
  367762: ffff d958    	vqrshrn.u64	d29, q4, #0x1
  367766: ffff b082    	<unknown>

// ==== MapSelectLayer::UpdateNumPlayersLabel
//      file offset 0x367768 (= ELF address; Ghidra 0x377768), 8 bytes, Thumb-2
  367768: b082         	sub	sp, #0x8
  36776a: 9001         	str	r0, [sp, #0x4]
  36776c: b002         	add	sp, #0x8
  36776e: 4770         	bx	lr
