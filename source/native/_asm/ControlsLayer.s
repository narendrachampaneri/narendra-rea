// ControlsLayer: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 16 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../ControlsLayer.cpp

// ==== ControlsLayer::create
//      file offset 0x30636c (= ELF address; Ghidra 0x31636c), 112 bytes, Thumb-2
  30636c: b510         	push	{r4, lr}
  30636e: b082         	sub	sp, #0x8
  306370: f44f 70b0    	mov.w	r0, #0x160
  306374: f081 f2f6    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x4815ec
  306378: 4603         	mov	r3, r0
  30637a: 461c         	mov	r4, r3
  30637c: 4620         	mov	r0, r4
  30637e: f000 f82d    	bl	0x3063dc <ControlsLayer::ControlsLayer()> @ imm = #0x5a
  306382: 9401         	str	r4, [sp, #0x4]
  306384: 9b01         	ldr	r3, [sp, #0x4]
  306386: 2b00         	cmp	r3, #0x0
  306388: d00a         	beq	0x3063a0 <ControlsLayer::create()+0x34> @ imm = #0x14
  30638a: 9b01         	ldr	r3, [sp, #0x4]
  30638c: 681b         	ldr	r3, [r3]
  30638e: 3318         	adds	r3, #0x18
  306390: 681b         	ldr	r3, [r3]
  306392: 9801         	ldr	r0, [sp, #0x4]
  306394: 4798         	blx	r3
  306396: 4603         	mov	r3, r0
  306398: 2b00         	cmp	r3, #0x0
  30639a: d001         	beq	0x3063a0 <ControlsLayer::create()+0x34> @ imm = #0x2
  30639c: 2301         	movs	r3, #0x1
  30639e: e000         	b	0x3063a2 <ControlsLayer::create()+0x36> @ imm = #0x0
  3063a0: 2300         	movs	r3, #0x0
  3063a2: 2b00         	cmp	r3, #0x0
  3063a4: d005         	beq	0x3063b2 <ControlsLayer::create()+0x46> @ imm = #0xa
  3063a6: 9b01         	ldr	r3, [sp, #0x4]
  3063a8: 4618         	mov	r0, r3
  3063aa: f291 fda7    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x291b4e
  3063ae: 9b01         	ldr	r3, [sp, #0x4]
  3063b0: e011         	b	0x3063d6 <ControlsLayer::create()+0x6a> @ imm = #0x22
  3063b2: 9b01         	ldr	r3, [sp, #0x4]
  3063b4: 2b00         	cmp	r3, #0x0
  3063b6: d005         	beq	0x3063c4 <ControlsLayer::create()+0x58> @ imm = #0xa
  3063b8: 9b01         	ldr	r3, [sp, #0x4]
  3063ba: 681b         	ldr	r3, [r3]
  3063bc: 3308         	adds	r3, #0x8
  3063be: 681b         	ldr	r3, [r3]
  3063c0: 9801         	ldr	r0, [sp, #0x4]
  3063c2: 4798         	blx	r3
  3063c4: 2300         	movs	r3, #0x0
  3063c6: 9301         	str	r3, [sp, #0x4]
  3063c8: 2300         	movs	r3, #0x0
  3063ca: e004         	b	0x3063d6 <ControlsLayer::create()+0x6a> @ imm = #0x8
  3063cc: 4620         	mov	r0, r4
  3063ce: f081 f669    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x481cd2
  3063d2: f081 f66b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x481cd6
  3063d6: 4618         	mov	r0, r3
  3063d8: b002         	add	sp, #0x8
  3063da: bd10         	pop	{r4, pc}

// ==== ControlsLayer::ControlsLayer
//      file offset 0x3063dc (= ELF address; Ghidra 0x3163dc), 88 bytes, Thumb-2
  3063dc: b510         	push	{r4, lr}
  3063de: b082         	sub	sp, #0x8
  3063e0: 9001         	str	r0, [sp, #0x4]
  3063e2: 4c12         	ldr	r4, [pc, #0x48]         @ 0x30642c <ControlsLayer::ControlsLayer()+0x50>
  3063e4: 447c         	add	r4, pc
  3063e6: 9b01         	ldr	r3, [sp, #0x4]
  3063e8: 4618         	mov	r0, r3
  3063ea: f2a6 fe37    	bl	0x5ad05c <cocos2d::CCLayer::CCLayer()> @ imm = #0x2a6c6e
  3063ee: 9b01         	ldr	r3, [sp, #0x4]
  3063f0: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x306430 <ControlsLayer::ControlsLayer()+0x54>
  3063f2: 58a2         	ldr	r2, [r4, r2]
  3063f4: 3208         	adds	r2, #0x8
  3063f6: 601a         	str	r2, [r3]
  3063f8: 9b01         	ldr	r3, [sp, #0x4]
  3063fa: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x306430 <ControlsLayer::ControlsLayer()+0x54>
  3063fc: 58a2         	ldr	r2, [r4, r2]
  3063fe: f502 7204    	add.w	r2, r2, #0x210
  306402: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  306406: 9b01         	ldr	r3, [sp, #0x4]
  306408: 4a09         	ldr	r2, [pc, #0x24]         @ 0x306430 <ControlsLayer::ControlsLayer()+0x54>
  30640a: 58a2         	ldr	r2, [r4, r2]
  30640c: f502 7210    	add.w	r2, r2, #0x240
  306410: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  306414: 9b01         	ldr	r3, [sp, #0x4]
  306416: 4a06         	ldr	r2, [pc, #0x18]         @ 0x306430 <ControlsLayer::ControlsLayer()+0x54>
  306418: 58a2         	ldr	r2, [r4, r2]
  30641a: f502 7213    	add.w	r2, r2, #0x24c
  30641e: f8c3 20ec    	str.w	r2, [r3, #0xec]
  306422: 9b01         	ldr	r3, [sp, #0x4]
  306424: 4618         	mov	r0, r3
  306426: b002         	add	sp, #0x8
  306428: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x306429); words below are literal-pool data ---
  30642a: bf00         	nop
  30642c: c624         	stm	r6!, {r2, r5}
  30642e: 0062         	lsls	r2, r4, #0x1
  306430: d95c         	bls	0x3064ec <ControlsLayer::init()+0x84> @ imm = #0xb8
  306432: ffff b500    	<unknown>

// ==== ControlsLayer::scene
//      file offset 0x306434 (= ELF address; Ghidra 0x316434), 46 bytes, Thumb-2
  306434: b500         	push	{lr}
  306436: b083         	sub	sp, #0xc
  306438: f2a9 fb12    	bl	0x5afa60 <cocos2d::CCScene::create()> @ imm = #0x2a9624
  30643c: 4603         	mov	r3, r0
  30643e: 9300         	str	r3, [sp]
  306440: f7ff ff94    	bl	0x30636c <ControlsLayer::create()> @ imm = #-0xd8
  306444: 4603         	mov	r3, r0
  306446: 9301         	str	r3, [sp, #0x4]
  306448: 9b00         	ldr	r3, [sp]
  30644a: 681b         	ldr	r3, [r3]
  30644c: 33c8         	adds	r3, #0xc8
  30644e: 681b         	ldr	r3, [r3]
  306450: 9a00         	ldr	r2, [sp]
  306452: 4610         	mov	r0, r2
  306454: 9901         	ldr	r1, [sp, #0x4]
  306456: 4798         	blx	r3
  306458: 9b00         	ldr	r3, [sp]
  30645a: 4618         	mov	r0, r3
  30645c: b003         	add	sp, #0xc
  30645e: f85d fb04    	ldr	pc, [sp], #4

// ==== ControlsLayer::init
//      file offset 0x306468 (= ELF address; Ghidra 0x316468), 5654 bytes, Thumb-2
  306468: b5f0         	push	{r4, r5, r6, r7, lr}
  30646a: ed2d 8b02    	vpush	{d8}
  30646e: b0bf         	sub	sp, #0xfc
  306470: 9003         	str	r0, [sp, #0xc]
  306472: 4c09         	ldr	r4, [pc, #0x24]         @ 0x306498 <ControlsLayer::init()+0x30>
  306474: 447c         	add	r4, pc
  306476: 9b03         	ldr	r3, [sp, #0xc]
  306478: 4618         	mov	r0, r3
  30647a: f2a6 febd    	bl	0x5ad1f8 <cocos2d::CCLayer::init()> @ imm = #0x2a6d7a
  30647e: 4603         	mov	r3, r0
  306480: f88d 3013    	strb.w	r3, [sp, #0x13]
  306484: f89d 3013    	ldrb.w	r3, [sp, #0x13]
  306488: f083 0301    	eor	r3, r3, #0x1
  30648c: b2db         	uxtb	r3, r3
  30648e: 2b00         	cmp	r3, #0x0
  306490: d004         	beq	0x30649c <ControlsLayer::init()+0x34> @ imm = #0x8
  306492: 2300         	movs	r3, #0x0
  306494: f001 baee    	b.w	0x307a74 <ControlsLayer::init()+0x160c> @ imm = #0x15dc
  306498: c594         	stm	r5!, {r2, r4, r7}
  30649a: 0062         	lsls	r2, r4, #0x1
  30649c: 9b03         	ldr	r3, [sp, #0xc]
  30649e: 2200         	movs	r2, #0x0
  3064a0: f883 2108    	strb.w	r2, [r3, #0x108]
  3064a4: ab1e         	add	r3, sp, #0x78
  3064a6: 4618         	mov	r0, r3
  3064a8: f8df 3554    	ldr.w	r3, [pc, #0x554]        @ 0x306a00 <ControlsLayer::init()+0x598>
  3064ac: 58e3         	ldr	r3, [r4, r3]
  3064ae: 4619         	mov	r1, r3
  3064b0: f28c fdfe    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x28cbfc
  3064b4: ed9d 7a1e    	vldr	s14, [sp, #120]
  3064b8: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3064bc: eec7 6a27    	vdiv.f32	s13, s14, s15
  3064c0: ed9d 7a1f    	vldr	s14, [sp, #124]
  3064c4: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3064c8: eec7 7a27    	vdiv.f32	s15, s14, s15
  3064cc: ab20         	add	r3, sp, #0x80
  3064ce: 4618         	mov	r0, r3
  3064d0: ee16 1a90    	vmov	r1, s13
  3064d4: ee17 2a90    	vmov	r2, s15
  3064d8: f28c fc0a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x28c814
  3064dc: f8df 3524    	ldr.w	r3, [pc, #0x524]        @ 0x306a04 <ControlsLayer::init()+0x59c>
  3064e0: 447b         	add	r3, pc
  3064e2: 4618         	mov	r0, r3
  3064e4: f2d1 fe4e    	bl	0x5d8184 <cocos2d::CCSprite::create(char const*)> @ imm = #0x2d1c9c
  3064e8: 4602         	mov	r2, r0
  3064ea: 9b03         	ldr	r3, [sp, #0xc]
  3064ec: f8c3 215c    	str.w	r2, [r3, #0x15c]
  3064f0: 9b03         	ldr	r3, [sp, #0xc]
  3064f2: f8d3 315c    	ldr.w	r3, [r3, #0x15c]
  3064f6: 681b         	ldr	r3, [r3]
  3064f8: 334c         	adds	r3, #0x4c
  3064fa: 681b         	ldr	r3, [r3]
  3064fc: 9a03         	ldr	r2, [sp, #0xc]
  3064fe: f8d2 115c    	ldr.w	r1, [r2, #0x15c]
  306502: aa20         	add	r2, sp, #0x80
  306504: 4608         	mov	r0, r1
  306506: 4611         	mov	r1, r2
  306508: 4798         	blx	r3
  30650a: 9b03         	ldr	r3, [sp, #0xc]
  30650c: f8d3 315c    	ldr.w	r3, [r3, #0x15c]
  306510: 681b         	ldr	r3, [r3]
  306512: f503 73d2    	add.w	r3, r3, #0x1a4
  306516: 681b         	ldr	r3, [r3]
  306518: 9a03         	ldr	r2, [sp, #0xc]
  30651a: f8d2 215c    	ldr.w	r2, [r2, #0x15c]
  30651e: 4610         	mov	r0, r2
  306520: 2123         	movs	r1, #0x23
  306522: 4798         	blx	r3
  306524: 9b03         	ldr	r3, [sp, #0xc]
  306526: 681b         	ldr	r3, [r3]
  306528: 33c8         	adds	r3, #0xc8
  30652a: 681b         	ldr	r3, [r3]
  30652c: 9903         	ldr	r1, [sp, #0xc]
  30652e: 9a03         	ldr	r2, [sp, #0xc]
  306530: f8d2 215c    	ldr.w	r2, [r2, #0x15c]
  306534: 4608         	mov	r0, r1
  306536: 4611         	mov	r1, r2
  306538: 4798         	blx	r3
  30653a: f8df 34cc    	ldr.w	r3, [pc, #0x4cc]        @ 0x306a08 <ControlsLayer::init()+0x5a0>
  30653e: 447b         	add	r3, pc
  306540: 4618         	mov	r0, r3
  306542: f2d1 fedf    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2d1dbe
  306546: 4602         	mov	r2, r0
  306548: 9b03         	ldr	r3, [sp, #0xc]
  30654a: f8c3 210c    	str.w	r2, [r3, #0x10c]
  30654e: 9b03         	ldr	r3, [sp, #0xc]
  306550: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  306554: 4618         	mov	r0, r3
  306556: f291 fcc7    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x29198e
  30655a: 9b03         	ldr	r3, [sp, #0xc]
  30655c: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  306560: 681b         	ldr	r3, [r3]
  306562: 337c         	adds	r3, #0x7c
  306564: 681d         	ldr	r5, [r3]
  306566: 9b03         	ldr	r3, [sp, #0xc]
  306568: f8d3 610c    	ldr.w	r6, [r3, #0x10c]
  30656c: ab3a         	add	r3, sp, #0xe8
  30656e: 4618         	mov	r0, r3
  306570: f04f 517c    	mov.w	r1, #0x3f000000
  306574: f04f 527c    	mov.w	r2, #0x3f000000
  306578: f28c fbba    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x28c774
  30657c: ab3a         	add	r3, sp, #0xe8
  30657e: 4630         	mov	r0, r6
  306580: 4619         	mov	r1, r3
  306582: 47a8         	blx	r5
  306584: 9b03         	ldr	r3, [sp, #0xc]
  306586: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  30658a: 681b         	ldr	r3, [r3]
  30658c: 334c         	adds	r3, #0x4c
  30658e: 681d         	ldr	r5, [r3]
  306590: 9b03         	ldr	r3, [sp, #0xc]
  306592: f8d3 610c    	ldr.w	r6, [r3, #0x10c]
  306596: ab36         	add	r3, sp, #0xd8
  306598: 4618         	mov	r0, r3
  30659a: f04f 4143    	mov.w	r1, #0xc3000000
  30659e: f04f 0200    	mov.w	r2, #0x0
  3065a2: f2c4 22aa    	movt	r2, #0x42aa
  3065a6: f28c fba3    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x28c746
  3065aa: a93a         	add	r1, sp, #0xe8
  3065ac: aa20         	add	r2, sp, #0x80
  3065ae: ab36         	add	r3, sp, #0xd8
  3065b0: 4608         	mov	r0, r1
  3065b2: 4611         	mov	r1, r2
  3065b4: 461a         	mov	r2, r3
  3065b6: f7ff f809    	bl	0x3055cc <ConfigLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x13cc> @ imm = #-0xfee
  3065ba: ab3a         	add	r3, sp, #0xe8
  3065bc: 4630         	mov	r0, r6
  3065be: 4619         	mov	r1, r3
  3065c0: 47a8         	blx	r5
  3065c2: 9b03         	ldr	r3, [sp, #0xc]
  3065c4: 681b         	ldr	r3, [r3]
  3065c6: 33c8         	adds	r3, #0xc8
  3065c8: 681b         	ldr	r3, [r3]
  3065ca: 9903         	ldr	r1, [sp, #0xc]
  3065cc: 9a03         	ldr	r2, [sp, #0xc]
  3065ce: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3065d2: 4608         	mov	r0, r1
  3065d4: 4611         	mov	r1, r2
  3065d6: 4798         	blx	r3
  3065d8: f8df 3430    	ldr.w	r3, [pc, #0x430]        @ 0x306a0c <ControlsLayer::init()+0x5a4>
  3065dc: 447b         	add	r3, pc
  3065de: 4618         	mov	r0, r3
  3065e0: f2d1 fe90    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2d1d20
  3065e4: 4602         	mov	r2, r0
  3065e6: 9b03         	ldr	r3, [sp, #0xc]
  3065e8: f8c3 2110    	str.w	r2, [r3, #0x110]
  3065ec: 9b03         	ldr	r3, [sp, #0xc]
  3065ee: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3065f2: 4618         	mov	r0, r3
  3065f4: f291 fc78    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2918f0
  3065f8: 9b03         	ldr	r3, [sp, #0xc]
  3065fa: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3065fe: 681b         	ldr	r3, [r3]
  306600: 337c         	adds	r3, #0x7c
  306602: 681d         	ldr	r5, [r3]
  306604: 9b03         	ldr	r3, [sp, #0xc]
  306606: f8d3 6110    	ldr.w	r6, [r3, #0x110]
  30660a: ab3a         	add	r3, sp, #0xe8
  30660c: 4618         	mov	r0, r3
  30660e: f04f 517c    	mov.w	r1, #0x3f000000
  306612: f04f 527c    	mov.w	r2, #0x3f000000
  306616: f28c fb6b    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x28c6d6
  30661a: ab3a         	add	r3, sp, #0xe8
  30661c: 4630         	mov	r0, r6
  30661e: 4619         	mov	r1, r3
  306620: 47a8         	blx	r5
  306622: 9b03         	ldr	r3, [sp, #0xc]
  306624: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  306628: 681b         	ldr	r3, [r3]
  30662a: 334c         	adds	r3, #0x4c
  30662c: 681d         	ldr	r5, [r3]
  30662e: 9b03         	ldr	r3, [sp, #0xc]
  306630: f8d3 6110    	ldr.w	r6, [r3, #0x110]
  306634: ab36         	add	r3, sp, #0xd8
  306636: 4618         	mov	r0, r3
  306638: f04f 4186    	mov.w	r1, #0x43000000
  30663c: f04f 0200    	mov.w	r2, #0x0
  306640: f2c4 22aa    	movt	r2, #0x42aa
  306644: f28c fb54    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x28c6a8
  306648: a93a         	add	r1, sp, #0xe8
  30664a: aa20         	add	r2, sp, #0x80
  30664c: ab36         	add	r3, sp, #0xd8
  30664e: 4608         	mov	r0, r1
  306650: 4611         	mov	r1, r2
  306652: 461a         	mov	r2, r3
  306654: f7fe ffba    	bl	0x3055cc <ConfigLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x13cc> @ imm = #-0x108c
  306658: ab3a         	add	r3, sp, #0xe8
  30665a: 4630         	mov	r0, r6
  30665c: 4619         	mov	r1, r3
  30665e: 47a8         	blx	r5
  306660: 9b03         	ldr	r3, [sp, #0xc]
  306662: 681b         	ldr	r3, [r3]
  306664: 33c8         	adds	r3, #0xc8
  306666: 681b         	ldr	r3, [r3]
  306668: 9903         	ldr	r1, [sp, #0xc]
  30666a: 9a03         	ldr	r2, [sp, #0xc]
  30666c: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  306670: 4608         	mov	r0, r1
  306672: 4611         	mov	r1, r2
  306674: 4798         	blx	r3
  306676: f04f 4341    	mov.w	r3, #0xc1000000
  30667a: 9306         	str	r3, [sp, #0x18]
  30667c: f04f 0300    	mov.w	r3, #0x0
  306680: f2c4 13c0    	movt	r3, #0x41c0
  306684: 9307         	str	r3, [sp, #0x1c]
  306686: f64c 43cd    	movw	r3, #0xcccd
  30668a: f6c3 730c    	movt	r3, #0x3f0c
  30668e: 9308         	str	r3, [sp, #0x20]
  306690: 4bdf         	ldr	r3, [pc, #0x37c]        @ 0x306a10 <ControlsLayer::init()+0x5a8>
  306692: 447b         	add	r3, pc
  306694: 4618         	mov	r0, r3
  306696: f0ae f633    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4aec66
  30669a: 4603         	mov	r3, r0
  30669c: 2220         	movs	r2, #0x20
  30669e: 9200         	str	r2, [sp]
  3066a0: 4adc         	ldr	r2, [pc, #0x370]        @ 0x306a14 <ControlsLayer::init()+0x5ac>
  3066a2: 447a         	add	r2, pc
  3066a4: 4610         	mov	r0, r2
  3066a6: 4619         	mov	r1, r3
  3066a8: 2220         	movs	r2, #0x20
  3066aa: 2320         	movs	r3, #0x20
  3066ac: f29e fe64    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x29ecc8
  3066b0: 4602         	mov	r2, r0
  3066b2: 9b03         	ldr	r3, [sp, #0xc]
  3066b4: f8c3 2114    	str.w	r2, [r3, #0x114]
  3066b8: 9b03         	ldr	r3, [sp, #0xc]
  3066ba: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3066be: 4618         	mov	r0, r3
  3066c0: f291 fc12    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x291824
  3066c4: 9b03         	ldr	r3, [sp, #0xc]
  3066c6: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3066ca: 681b         	ldr	r3, [r3]
  3066cc: 334c         	adds	r3, #0x4c
  3066ce: 681d         	ldr	r5, [r3]
  3066d0: 9b03         	ldr	r3, [sp, #0xc]
  3066d2: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3066d6: 461e         	mov	r6, r3
  3066d8: 9b03         	ldr	r3, [sp, #0xc]
  3066da: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3066de: 681b         	ldr	r3, [r3]
  3066e0: 3350         	adds	r3, #0x50
  3066e2: 681b         	ldr	r3, [r3]
  3066e4: 9a03         	ldr	r2, [sp, #0xc]
  3066e6: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3066ea: 4610         	mov	r0, r2
  3066ec: 4798         	blx	r3
  3066ee: 4603         	mov	r3, r0
  3066f0: 681f         	ldr	r7, [r3]
  3066f2: 9b03         	ldr	r3, [sp, #0xc]
  3066f4: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3066f8: 681b         	ldr	r3, [r3]
  3066fa: 3350         	adds	r3, #0x50
  3066fc: 681b         	ldr	r3, [r3]
  3066fe: 9a03         	ldr	r2, [sp, #0xc]
  306700: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  306704: 4610         	mov	r0, r2
  306706: 4798         	blx	r3
  306708: 4603         	mov	r3, r0
  30670a: 685b         	ldr	r3, [r3, #0x4]
  30670c: aa30         	add	r2, sp, #0xc0
  30670e: 4610         	mov	r0, r2
  306710: 4639         	mov	r1, r7
  306712: 461a         	mov	r2, r3
  306714: f28c faec    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x28c5d8
  306718: eddd 7a06    	vldr	s15, [sp, #24]
  30671c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  306720: ab36         	add	r3, sp, #0xd8
  306722: 4618         	mov	r0, r3
  306724: ed9f 0bb4    	vldr	d0, [pc, #720]          @ 0x3069f8 <ControlsLayer::init()+0x590>
  306728: eeb0 1b47    	vmov.f64	d1, d7
  30672c: f7fe ff5e    	bl	0x3055ec <ConfigLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x13ec> @ imm = #-0x1144
  306730: ed9d 8b36    	vldr	d8, [sp, #216]
  306734: 9b03         	ldr	r3, [sp, #0xc]
  306736: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  30673a: 681b         	ldr	r3, [r3]
  30673c: f503 73fe    	add.w	r3, r3, #0x1fc
  306740: 681b         	ldr	r3, [r3]
  306742: 9a03         	ldr	r2, [sp, #0xc]
  306744: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  306748: 4610         	mov	r0, r2
  30674a: 4798         	blx	r3
  30674c: 4607         	mov	r7, r0
  30674e: ab2c         	add	r3, sp, #0xb0
  306750: 4618         	mov	r0, r3
  306752: f083 f64f    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x483c9e
  306756: aa2e         	add	r2, sp, #0xb8
  306758: ab2c         	add	r3, sp, #0xb0
  30675a: 4610         	mov	r0, r2
  30675c: 4639         	mov	r1, r7
  30675e: 461a         	mov	r2, r3
  306760: f0b0 f17e    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4b02fc
  306764: ab2e         	add	r3, sp, #0xb8
  306766: 4618         	mov	r0, r3
  306768: f0ae f478    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x4ae8f0
  30676c: 4603         	mov	r3, r0
  30676e: ee07 3a90    	vmov	s15, r3
  306772: eeb8 7a67    	vcvt.f32.u32	s14, s15
  306776: eddd 7a07    	vldr	s15, [sp, #28]
  30677a: ee27 7a27    	vmul.f32	s14, s14, s15
  30677e: eddd 7a08    	vldr	s15, [sp, #32]
  306782: ee27 7a27    	vmul.f32	s14, s14, s15
  306786: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  30678a: eec7 7a27    	vdiv.f32	s15, s14, s15
  30678e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  306792: ee38 7b47    	vsub.f64	d7, d8, d7
  306796: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  30679a: eddd 7a06    	vldr	s15, [sp, #24]
  30679e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3067a2: ab3a         	add	r3, sp, #0xe8
  3067a4: 4618         	mov	r0, r3
  3067a6: ed9f 0b94    	vldr	d0, [pc, #592]          @ 0x3069f8 <ControlsLayer::init()+0x590>
  3067aa: eeb0 1b47    	vmov.f64	d1, d7
  3067ae: f7fe ff1d    	bl	0x3055ec <ConfigLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x13ec> @ imm = #-0x11c6
  3067b2: ed9d 7b3c    	vldr	d7, [sp, #240]
  3067b6: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3067ba: ab32         	add	r3, sp, #0xc8
  3067bc: 4618         	mov	r0, r3
  3067be: ee18 1a10    	vmov	r1, s16
  3067c2: ee17 2a90    	vmov	r2, s15
  3067c6: f28c fa93    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x28c526
  3067ca: a934         	add	r1, sp, #0xd0
  3067cc: aa30         	add	r2, sp, #0xc0
  3067ce: ab32         	add	r3, sp, #0xc8
  3067d0: 4608         	mov	r0, r1
  3067d2: 4611         	mov	r1, r2
  3067d4: 461a         	mov	r2, r3
  3067d6: f7fe fef9    	bl	0x3055cc <ConfigLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x13cc> @ imm = #-0x120e
  3067da: ab34         	add	r3, sp, #0xd0
  3067dc: 4630         	mov	r0, r6
  3067de: 4619         	mov	r1, r3
  3067e0: 47a8         	blx	r5
  3067e2: ab2e         	add	r3, sp, #0xb8
  3067e4: 4618         	mov	r0, r3
  3067e6: f0af f095    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4af12a
  3067ea: ab2c         	add	r3, sp, #0xb0
  3067ec: 4618         	mov	r0, r3
  3067ee: f083 f605    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x483c0a
  3067f2: 9b03         	ldr	r3, [sp, #0xc]
  3067f4: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3067f8: eddd 7a07    	vldr	s15, [sp, #28]
  3067fc: eefd 7ae7    	vcvt.s32.f32	s15, s15
  306800: ee17 2a90    	vmov	r2, s15
  306804: 4618         	mov	r0, r3
  306806: 4611         	mov	r1, r2
  306808: f29f fabc    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x29f578
  30680c: 9b03         	ldr	r3, [sp, #0xc]
  30680e: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  306812: 681b         	ldr	r3, [r3]
  306814: 3340         	adds	r3, #0x40
  306816: 681b         	ldr	r3, [r3]
  306818: 9a03         	ldr	r2, [sp, #0xc]
  30681a: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  30681e: 4610         	mov	r0, r2
  306820: 9908         	ldr	r1, [sp, #0x20]
  306822: 4798         	blx	r3
  306824: 9b03         	ldr	r3, [sp, #0xc]
  306826: 681b         	ldr	r3, [r3]
  306828: 33c8         	adds	r3, #0xc8
  30682a: 681b         	ldr	r3, [r3]
  30682c: 9903         	ldr	r1, [sp, #0xc]
  30682e: 9a03         	ldr	r2, [sp, #0xc]
  306830: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  306834: 4608         	mov	r0, r1
  306836: 4611         	mov	r1, r2
  306838: 4798         	blx	r3
  30683a: 4b77         	ldr	r3, [pc, #0x1dc]        @ 0x306a18 <ControlsLayer::init()+0x5b0>
  30683c: 447b         	add	r3, pc
  30683e: 4618         	mov	r0, r3
  306840: f0ae f55e    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4aeabc
  306844: 4603         	mov	r3, r0
  306846: 2220         	movs	r2, #0x20
  306848: 9200         	str	r2, [sp]
  30684a: 4a74         	ldr	r2, [pc, #0x1d0]        @ 0x306a1c <ControlsLayer::init()+0x5b4>
  30684c: 447a         	add	r2, pc
  30684e: 4610         	mov	r0, r2
  306850: 4619         	mov	r1, r3
  306852: 2220         	movs	r2, #0x20
  306854: 2320         	movs	r3, #0x20
  306856: f29e fd8f    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x29eb1e
  30685a: 4602         	mov	r2, r0
  30685c: 9b03         	ldr	r3, [sp, #0xc]
  30685e: f8c3 2118    	str.w	r2, [r3, #0x118]
  306862: 9b03         	ldr	r3, [sp, #0xc]
  306864: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  306868: 4618         	mov	r0, r3
  30686a: f291 fb3d    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x29167a
  30686e: 9b03         	ldr	r3, [sp, #0xc]
  306870: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  306874: 681b         	ldr	r3, [r3]
  306876: 334c         	adds	r3, #0x4c
  306878: 681d         	ldr	r5, [r3]
  30687a: 9b03         	ldr	r3, [sp, #0xc]
  30687c: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  306880: 461e         	mov	r6, r3
  306882: 9b03         	ldr	r3, [sp, #0xc]
  306884: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  306888: 681b         	ldr	r3, [r3]
  30688a: 3350         	adds	r3, #0x50
  30688c: 681b         	ldr	r3, [r3]
  30688e: 9a03         	ldr	r2, [sp, #0xc]
  306890: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  306894: 4610         	mov	r0, r2
  306896: 4798         	blx	r3
  306898: 4603         	mov	r3, r0
  30689a: 681f         	ldr	r7, [r3]
  30689c: 9b03         	ldr	r3, [sp, #0xc]
  30689e: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3068a2: 681b         	ldr	r3, [r3]
  3068a4: 3350         	adds	r3, #0x50
  3068a6: 681b         	ldr	r3, [r3]
  3068a8: 9a03         	ldr	r2, [sp, #0xc]
  3068aa: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  3068ae: 4610         	mov	r0, r2
  3068b0: 4798         	blx	r3
  3068b2: 4603         	mov	r3, r0
  3068b4: 685b         	ldr	r3, [r3, #0x4]
  3068b6: aa30         	add	r2, sp, #0xc0
  3068b8: 4610         	mov	r0, r2
  3068ba: 4639         	mov	r1, r7
  3068bc: 461a         	mov	r2, r3
  3068be: f28c fa17    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x28c42e
  3068c2: eddd 7a06    	vldr	s15, [sp, #24]
  3068c6: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3068ca: ab36         	add	r3, sp, #0xd8
  3068cc: 4618         	mov	r0, r3
  3068ce: ed9f 0b4a    	vldr	d0, [pc, #296]          @ 0x3069f8 <ControlsLayer::init()+0x590>
  3068d2: eeb0 1b47    	vmov.f64	d1, d7
  3068d6: f7fe fe89    	bl	0x3055ec <ConfigLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x13ec> @ imm = #-0x12ee
  3068da: ed9d 8b36    	vldr	d8, [sp, #216]
  3068de: 9b03         	ldr	r3, [sp, #0xc]
  3068e0: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3068e4: 681b         	ldr	r3, [r3]
  3068e6: f503 73fe    	add.w	r3, r3, #0x1fc
  3068ea: 681b         	ldr	r3, [r3]
  3068ec: 9a03         	ldr	r2, [sp, #0xc]
  3068ee: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3068f2: 4610         	mov	r0, r2
  3068f4: 4798         	blx	r3
  3068f6: 4607         	mov	r7, r0
  3068f8: ab2c         	add	r3, sp, #0xb0
  3068fa: 4618         	mov	r0, r3
  3068fc: f083 f57a    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x483af4
  306900: aa2e         	add	r2, sp, #0xb8
  306902: ab2c         	add	r3, sp, #0xb0
  306904: 4610         	mov	r0, r2
  306906: 4639         	mov	r1, r7
  306908: 461a         	mov	r2, r3
  30690a: f0b0 f0a9    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4b0152
  30690e: ab2e         	add	r3, sp, #0xb8
  306910: 4618         	mov	r0, r3
  306912: f0ae f3a3    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x4ae746
  306916: 4603         	mov	r3, r0
  306918: ee07 3a90    	vmov	s15, r3
  30691c: eeb8 7a67    	vcvt.f32.u32	s14, s15
  306920: eddd 7a07    	vldr	s15, [sp, #28]
  306924: ee27 7a27    	vmul.f32	s14, s14, s15
  306928: eddd 7a08    	vldr	s15, [sp, #32]
  30692c: ee27 7a27    	vmul.f32	s14, s14, s15
  306930: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  306934: eec7 7a27    	vdiv.f32	s15, s14, s15
  306938: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  30693c: ee38 7b47    	vsub.f64	d7, d8, d7
  306940: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  306944: eddd 7a06    	vldr	s15, [sp, #24]
  306948: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  30694c: ab3a         	add	r3, sp, #0xe8
  30694e: 4618         	mov	r0, r3
  306950: ed9f 0b29    	vldr	d0, [pc, #164]          @ 0x3069f8 <ControlsLayer::init()+0x590>
  306954: eeb0 1b47    	vmov.f64	d1, d7
  306958: f7fe fe48    	bl	0x3055ec <ConfigLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x13ec> @ imm = #-0x1370
  30695c: ed9d 7b3c    	vldr	d7, [sp, #240]
  306960: eef7 7bc7    	vcvt.f32.f64	s15, d7
  306964: ab32         	add	r3, sp, #0xc8
  306966: 4618         	mov	r0, r3
  306968: ee18 1a10    	vmov	r1, s16
  30696c: ee17 2a90    	vmov	r2, s15
  306970: f28c f9be    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x28c37c
  306974: a934         	add	r1, sp, #0xd0
  306976: aa30         	add	r2, sp, #0xc0
  306978: ab32         	add	r3, sp, #0xc8
  30697a: 4608         	mov	r0, r1
  30697c: 4611         	mov	r1, r2
  30697e: 461a         	mov	r2, r3
  306980: f7fe fe24    	bl	0x3055cc <ConfigLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x13cc> @ imm = #-0x13b8
  306984: ab34         	add	r3, sp, #0xd0
  306986: 4630         	mov	r0, r6
  306988: 4619         	mov	r1, r3
  30698a: 47a8         	blx	r5
  30698c: ab2e         	add	r3, sp, #0xb8
  30698e: 4618         	mov	r0, r3
  306990: f0ae f7c0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4aef80
  306994: ab2c         	add	r3, sp, #0xb0
  306996: 4618         	mov	r0, r3
  306998: f083 f530    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x483a60
  30699c: 9b03         	ldr	r3, [sp, #0xc]
  30699e: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3069a2: eddd 7a07    	vldr	s15, [sp, #28]
  3069a6: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3069aa: ee17 2a90    	vmov	r2, s15
  3069ae: 4618         	mov	r0, r3
  3069b0: 4611         	mov	r1, r2
  3069b2: f29f f9e7    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x29f3ce
  3069b6: 9b03         	ldr	r3, [sp, #0xc]
  3069b8: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3069bc: 681b         	ldr	r3, [r3]
  3069be: 3340         	adds	r3, #0x40
  3069c0: 681b         	ldr	r3, [r3]
  3069c2: 9a03         	ldr	r2, [sp, #0xc]
  3069c4: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3069c8: 4610         	mov	r0, r2
  3069ca: 9908         	ldr	r1, [sp, #0x20]
  3069cc: 4798         	blx	r3
  3069ce: 9b03         	ldr	r3, [sp, #0xc]
  3069d0: 681b         	ldr	r3, [r3]
  3069d2: 33c8         	adds	r3, #0xc8
  3069d4: 681b         	ldr	r3, [r3]
  3069d6: 9903         	ldr	r1, [sp, #0xc]
  3069d8: 9a03         	ldr	r2, [sp, #0xc]
  3069da: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3069de: 4608         	mov	r0, r1
  3069e0: 4611         	mov	r1, r2
  3069e2: 4798         	blx	r3
  3069e4: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x306a20 <ControlsLayer::init()+0x5b8>
  3069e6: 447b         	add	r3, pc
  3069e8: 4618         	mov	r0, r3
  3069ea: f2d1 fc8b    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2d1916
  3069ee: 4603         	mov	r3, r0
  3069f0: e018         	b	0x306a24 <ControlsLayer::init()+0x5bc> @ imm = #0x30
  3069f2: bf00         	nop
  3069f4: f3af 8000    	nop.w
  306a00: d724         	bvc	0x306a4c <ControlsLayer::init()+0x5e4> @ imm = #0x48
  306a02: ffff f464    	<unknown>
  306a06: 004b         	lsls	r3, r1, #0x1
  306a08: f41a 004b    	ands	r0, r10, #0xcb0000
  306a0c: f37c 004b    	<unknown>
  306a10: 9a26         	ldr	r2, [sp, #0x98]
  306a12: 0063         	lsls	r3, r4, #0x1
  306a14: f2c6 004b    	movt	r0, #0x604b
  306a18: 987c         	ldr	r0, [sp, #0x1f0]
  306a1a: 0063         	lsls	r3, r4, #0x1
  306a1c: f128 004b    	<unknown>
  306a20: ef96 004b    	vmla.i16	d0, d6, d3[1]
  306a24: 9309         	str	r3, [sp, #0x24]
  306a26: f8df 38ac    	ldr.w	r3, [pc, #0x8ac]        @ 0x3072d4 <ControlsLayer::init()+0xe6c>
  306a2a: 447b         	add	r3, pc
  306a2c: 4618         	mov	r0, r3
  306a2e: f2d1 fc69    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2d18d2
  306a32: 4603         	mov	r3, r0
  306a34: 930a         	str	r3, [sp, #0x28]
  306a36: f8df 38a0    	ldr.w	r3, [pc, #0x8a0]        @ 0x3072d8 <ControlsLayer::init()+0xe70>
  306a3a: 447b         	add	r3, pc
  306a3c: 4618         	mov	r0, r3
  306a3e: f2d1 fc61    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2d18c2
  306a42: 4603         	mov	r3, r0
  306a44: 930b         	str	r3, [sp, #0x2c]
  306a46: f8df 3894    	ldr.w	r3, [pc, #0x894]        @ 0x3072dc <ControlsLayer::init()+0xe74>
  306a4a: 447b         	add	r3, pc
  306a4c: 4618         	mov	r0, r3
  306a4e: f2d1 fc59    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2d18b2
  306a52: 4603         	mov	r3, r0
  306a54: 930c         	str	r3, [sp, #0x30]
  306a56: f8df 3888    	ldr.w	r3, [pc, #0x888]        @ 0x3072e0 <ControlsLayer::init()+0xe78>
  306a5a: 447b         	add	r3, pc
  306a5c: 4618         	mov	r0, r3
  306a5e: f2d1 fc51    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2d18a2
  306a62: 4603         	mov	r3, r0
  306a64: 930d         	str	r3, [sp, #0x34]
  306a66: f8df 387c    	ldr.w	r3, [pc, #0x87c]        @ 0x3072e4 <ControlsLayer::init()+0xe7c>
  306a6a: 447b         	add	r3, pc
  306a6c: 4618         	mov	r0, r3
  306a6e: f2d1 fc49    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2d1892
  306a72: 4603         	mov	r3, r0
  306a74: 930e         	str	r3, [sp, #0x38]
  306a76: f8df 3870    	ldr.w	r3, [pc, #0x870]        @ 0x3072e8 <ControlsLayer::init()+0xe80>
  306a7a: 447b         	add	r3, pc
  306a7c: 4618         	mov	r0, r3
  306a7e: f2d1 fc41    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2d1882
  306a82: 4603         	mov	r3, r0
  306a84: 930f         	str	r3, [sp, #0x3c]
  306a86: f8df 3864    	ldr.w	r3, [pc, #0x864]        @ 0x3072ec <ControlsLayer::init()+0xe84>
  306a8a: 447b         	add	r3, pc
  306a8c: 4618         	mov	r0, r3
  306a8e: f2d1 fc39    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2d1872
  306a92: 4603         	mov	r3, r0
  306a94: 9310         	str	r3, [sp, #0x40]
  306a96: f8df 3858    	ldr.w	r3, [pc, #0x858]        @ 0x3072f0 <ControlsLayer::init()+0xe88>
  306a9a: 447b         	add	r3, pc
  306a9c: 4618         	mov	r0, r3
  306a9e: f2d1 fc31    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2d1862
  306aa2: 4603         	mov	r3, r0
  306aa4: 9311         	str	r3, [sp, #0x44]
  306aa6: f8df 384c    	ldr.w	r3, [pc, #0x84c]        @ 0x3072f4 <ControlsLayer::init()+0xe8c>
  306aaa: 447b         	add	r3, pc
  306aac: 4618         	mov	r0, r3
  306aae: f2d1 fc29    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2d1852
  306ab2: 4603         	mov	r3, r0
  306ab4: 9312         	str	r3, [sp, #0x48]
  306ab6: f8df 3840    	ldr.w	r3, [pc, #0x840]        @ 0x3072f8 <ControlsLayer::init()+0xe90>
  306aba: 447b         	add	r3, pc
  306abc: 4618         	mov	r0, r3
  306abe: f2d1 fc21    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2d1842
  306ac2: 4603         	mov	r3, r0
  306ac4: 9313         	str	r3, [sp, #0x4c]
  306ac6: f8df 3834    	ldr.w	r3, [pc, #0x834]        @ 0x3072fc <ControlsLayer::init()+0xe94>
  306aca: 447b         	add	r3, pc
  306acc: 4618         	mov	r0, r3
  306ace: f2d1 fc19    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2d1832
  306ad2: 4603         	mov	r3, r0
  306ad4: 9314         	str	r3, [sp, #0x50]
  306ad6: f8df 3828    	ldr.w	r3, [pc, #0x828]        @ 0x307300 <ControlsLayer::init()+0xe98>
  306ada: 447b         	add	r3, pc
  306adc: 4618         	mov	r0, r3
  306ade: f2d1 fc11    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2d1822
  306ae2: 4603         	mov	r3, r0
  306ae4: 9315         	str	r3, [sp, #0x54]
  306ae6: f8df 381c    	ldr.w	r3, [pc, #0x81c]        @ 0x307304 <ControlsLayer::init()+0xe9c>
  306aea: 447b         	add	r3, pc
  306aec: 4618         	mov	r0, r3
  306aee: f2d1 fc09    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2d1812
  306af2: 4603         	mov	r3, r0
  306af4: 9316         	str	r3, [sp, #0x58]
  306af6: 9a03         	ldr	r2, [sp, #0xc]
  306af8: f8df 380c    	ldr.w	r3, [pc, #0x80c]        @ 0x307308 <ControlsLayer::init()+0xea0>
  306afc: 58e3         	ldr	r3, [r4, r3]
  306afe: 9328         	str	r3, [sp, #0xa0]
  306b00: 2300         	movs	r3, #0x0
  306b02: 9329         	str	r3, [sp, #0xa4]
  306b04: 9b29         	ldr	r3, [sp, #0xa4]
  306b06: 9300         	str	r3, [sp]
  306b08: 9b28         	ldr	r3, [sp, #0xa0]
  306b0a: 9809         	ldr	r0, [sp, #0x24]
  306b0c: 990a         	ldr	r1, [sp, #0x28]
  306b0e: f2b1 fc0d    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2b181a
  306b12: 4603         	mov	r3, r0
  306b14: 9317         	str	r3, [sp, #0x5c]
  306b16: 9817         	ldr	r0, [sp, #0x5c]
  306b18: 2100         	movs	r1, #0x0
  306b1a: f2ae fb0f    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2ae61e
  306b1e: 4602         	mov	r2, r0
  306b20: 9b03         	ldr	r3, [sp, #0xc]
  306b22: f8c3 211c    	str.w	r2, [r3, #0x11c]
  306b26: 9b03         	ldr	r3, [sp, #0xc]
  306b28: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  306b2c: 4618         	mov	r0, r3
  306b2e: f291 f9db    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2913b6
  306b32: 9b03         	ldr	r3, [sp, #0xc]
  306b34: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  306b38: 681b         	ldr	r3, [r3]
  306b3a: 334c         	adds	r3, #0x4c
  306b3c: 681d         	ldr	r5, [r3]
  306b3e: 9b03         	ldr	r3, [sp, #0xc]
  306b40: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  306b44: 461e         	mov	r6, r3
  306b46: ab36         	add	r3, sp, #0xd8
  306b48: 4618         	mov	r0, r3
  306b4a: f04f 0100    	mov.w	r1, #0x0
  306b4e: f04f 0200    	mov.w	r2, #0x0
  306b52: f2c4 22aa    	movt	r2, #0x42aa
  306b56: f28c f8cb    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x28c196
  306b5a: a93a         	add	r1, sp, #0xe8
  306b5c: aa20         	add	r2, sp, #0x80
  306b5e: ab36         	add	r3, sp, #0xd8
  306b60: 4608         	mov	r0, r1
  306b62: 4611         	mov	r1, r2
  306b64: 461a         	mov	r2, r3
  306b66: f7fe fd31    	bl	0x3055cc <ConfigLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x13cc> @ imm = #-0x159e
  306b6a: ab3a         	add	r3, sp, #0xe8
  306b6c: 4630         	mov	r0, r6
  306b6e: 4619         	mov	r1, r3
  306b70: 47a8         	blx	r5
  306b72: 9b03         	ldr	r3, [sp, #0xc]
  306b74: 681b         	ldr	r3, [r3]
  306b76: 33c8         	adds	r3, #0xc8
  306b78: 681b         	ldr	r3, [r3]
  306b7a: 9903         	ldr	r1, [sp, #0xc]
  306b7c: 9a03         	ldr	r2, [sp, #0xc]
  306b7e: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  306b82: 4608         	mov	r0, r1
  306b84: 4611         	mov	r1, r2
  306b86: 4798         	blx	r3
  306b88: f8df 3780    	ldr.w	r3, [pc, #0x780]        @ 0x30730c <ControlsLayer::init()+0xea4>
  306b8c: 447b         	add	r3, pc
  306b8e: 4618         	mov	r0, r3
  306b90: f0ae f3b6    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4ae76c
  306b94: 4603         	mov	r3, r0
  306b96: 2220         	movs	r2, #0x20
  306b98: 9200         	str	r2, [sp]
  306b9a: f8df 2774    	ldr.w	r2, [pc, #0x774]        @ 0x307310 <ControlsLayer::init()+0xea8>
  306b9e: 447a         	add	r2, pc
  306ba0: 4610         	mov	r0, r2
  306ba2: 4619         	mov	r1, r3
  306ba4: 2220         	movs	r2, #0x20
  306ba6: 2320         	movs	r3, #0x20
  306ba8: f29e fbe6    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x29e7cc
  306bac: 4602         	mov	r2, r0
  306bae: 9b03         	ldr	r3, [sp, #0xc]
  306bb0: f8c3 2120    	str.w	r2, [r3, #0x120]
  306bb4: 9b03         	ldr	r3, [sp, #0xc]
  306bb6: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  306bba: 4618         	mov	r0, r3
  306bbc: f291 f994    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x291328
  306bc0: 9b03         	ldr	r3, [sp, #0xc]
  306bc2: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  306bc6: 681b         	ldr	r3, [r3]
  306bc8: 3340         	adds	r3, #0x40
  306bca: 681b         	ldr	r3, [r3]
  306bcc: 9a03         	ldr	r2, [sp, #0xc]
  306bce: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  306bd2: 4610         	mov	r0, r2
  306bd4: 9908         	ldr	r1, [sp, #0x20]
  306bd6: 4798         	blx	r3
  306bd8: 9b03         	ldr	r3, [sp, #0xc]
  306bda: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  306bde: eddd 7a07    	vldr	s15, [sp, #28]
  306be2: eefd 7ae7    	vcvt.s32.f32	s15, s15
  306be6: ee17 2a90    	vmov	r2, s15
  306bea: 4618         	mov	r0, r3
  306bec: 4611         	mov	r1, r2
  306bee: f29f f8c9    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x29f192
  306bf2: 9b03         	ldr	r3, [sp, #0xc]
  306bf4: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  306bf8: 681b         	ldr	r3, [r3]
  306bfa: f503 73fc    	add.w	r3, r3, #0x1f8
  306bfe: 681b         	ldr	r3, [r3]
  306c00: 9a03         	ldr	r2, [sp, #0xc]
  306c02: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  306c06: 4610         	mov	r0, r2
  306c08: f8df 2708    	ldr.w	r2, [pc, #0x708]        @ 0x307314 <ControlsLayer::init()+0xeac>
  306c0c: 447a         	add	r2, pc
  306c0e: 4611         	mov	r1, r2
  306c10: 4798         	blx	r3
  306c12: 9b03         	ldr	r3, [sp, #0xc]
  306c14: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  306c18: 681b         	ldr	r3, [r3]
  306c1a: 334c         	adds	r3, #0x4c
  306c1c: 681d         	ldr	r5, [r3]
  306c1e: 9b03         	ldr	r3, [sp, #0xc]
  306c20: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  306c24: 461e         	mov	r6, r3
  306c26: 9b03         	ldr	r3, [sp, #0xc]
  306c28: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  306c2c: 681b         	ldr	r3, [r3]
  306c2e: 3350         	adds	r3, #0x50
  306c30: 681b         	ldr	r3, [r3]
  306c32: 9a03         	ldr	r2, [sp, #0xc]
  306c34: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  306c38: 4610         	mov	r0, r2
  306c3a: 4798         	blx	r3
  306c3c: 4603         	mov	r3, r0
  306c3e: 4630         	mov	r0, r6
  306c40: 4619         	mov	r1, r3
  306c42: 47a8         	blx	r5
  306c44: 9b03         	ldr	r3, [sp, #0xc]
  306c46: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  306c4a: 681b         	ldr	r3, [r3]
  306c4c: 337c         	adds	r3, #0x7c
  306c4e: 681d         	ldr	r5, [r3]
  306c50: 9b03         	ldr	r3, [sp, #0xc]
  306c52: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  306c56: 461e         	mov	r6, r3
  306c58: ab3a         	add	r3, sp, #0xe8
  306c5a: 4618         	mov	r0, r3
  306c5c: f04f 517c    	mov.w	r1, #0x3f000000
  306c60: f04f 527c    	mov.w	r2, #0x3f000000
  306c64: f28c f844    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x28c088
  306c68: ab3a         	add	r3, sp, #0xe8
  306c6a: 4630         	mov	r0, r6
  306c6c: 4619         	mov	r1, r3
  306c6e: 47a8         	blx	r5
  306c70: 9b03         	ldr	r3, [sp, #0xc]
  306c72: 681b         	ldr	r3, [r3]
  306c74: 33c8         	adds	r3, #0xc8
  306c76: 681b         	ldr	r3, [r3]
  306c78: 9903         	ldr	r1, [sp, #0xc]
  306c7a: 9a03         	ldr	r2, [sp, #0xc]
  306c7c: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  306c80: 4608         	mov	r0, r1
  306c82: 4611         	mov	r1, r2
  306c84: 4798         	blx	r3
  306c86: 9a03         	ldr	r2, [sp, #0xc]
  306c88: f8df 368c    	ldr.w	r3, [pc, #0x68c]        @ 0x307318 <ControlsLayer::init()+0xeb0>
  306c8c: 58e3         	ldr	r3, [r4, r3]
  306c8e: 932a         	str	r3, [sp, #0xa8]
  306c90: 2300         	movs	r3, #0x0
  306c92: 932b         	str	r3, [sp, #0xac]
  306c94: 9b2b         	ldr	r3, [sp, #0xac]
  306c96: 9300         	str	r3, [sp]
  306c98: 9b2a         	ldr	r3, [sp, #0xa8]
  306c9a: 980b         	ldr	r0, [sp, #0x2c]
  306c9c: 990c         	ldr	r1, [sp, #0x30]
  306c9e: f2b1 fb45    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2b168a
  306ca2: 4603         	mov	r3, r0
  306ca4: 9318         	str	r3, [sp, #0x60]
  306ca6: 9818         	ldr	r0, [sp, #0x60]
  306ca8: 2100         	movs	r1, #0x0
  306caa: f2ae fa47    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2ae48e
  306cae: 4602         	mov	r2, r0
  306cb0: 9b03         	ldr	r3, [sp, #0xc]
  306cb2: f8c3 2148    	str.w	r2, [r3, #0x148]
  306cb6: 9b03         	ldr	r3, [sp, #0xc]
  306cb8: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  306cbc: 4618         	mov	r0, r3
  306cbe: f291 f913    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x291226
  306cc2: 9b03         	ldr	r3, [sp, #0xc]
  306cc4: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  306cc8: 681b         	ldr	r3, [r3]
  306cca: 334c         	adds	r3, #0x4c
  306ccc: 681d         	ldr	r5, [r3]
  306cce: 9b03         	ldr	r3, [sp, #0xc]
  306cd0: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  306cd4: 461e         	mov	r6, r3
  306cd6: ab3a         	add	r3, sp, #0xe8
  306cd8: 4618         	mov	r0, r3
  306cda: f04f 0100    	mov.w	r1, #0x0
  306cde: f2c4 2160    	movt	r1, #0x4260
  306ce2: f04f 4284    	mov.w	r2, #0x42000000
  306ce6: f28c f803    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x28c006
  306cea: ab3a         	add	r3, sp, #0xe8
  306cec: 4630         	mov	r0, r6
  306cee: 4619         	mov	r1, r3
  306cf0: 47a8         	blx	r5
  306cf2: 9b03         	ldr	r3, [sp, #0xc]
  306cf4: 681b         	ldr	r3, [r3]
  306cf6: 33c8         	adds	r3, #0xc8
  306cf8: 681b         	ldr	r3, [r3]
  306cfa: 9903         	ldr	r1, [sp, #0xc]
  306cfc: 9a03         	ldr	r2, [sp, #0xc]
  306cfe: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  306d02: 4608         	mov	r0, r1
  306d04: 4611         	mov	r1, r2
  306d06: 4798         	blx	r3
  306d08: 9a03         	ldr	r2, [sp, #0xc]
  306d0a: f8df 3610    	ldr.w	r3, [pc, #0x610]        @ 0x30731c <ControlsLayer::init()+0xeb4>
  306d0e: 58e3         	ldr	r3, [r4, r3]
  306d10: 932c         	str	r3, [sp, #0xb0]
  306d12: 2300         	movs	r3, #0x0
  306d14: 932d         	str	r3, [sp, #0xb4]
  306d16: 9b2d         	ldr	r3, [sp, #0xb4]
  306d18: 9300         	str	r3, [sp]
  306d1a: 9b2c         	ldr	r3, [sp, #0xb0]
  306d1c: 980d         	ldr	r0, [sp, #0x34]
  306d1e: 990e         	ldr	r1, [sp, #0x38]
  306d20: f2b1 fb04    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2b1608
  306d24: 4603         	mov	r3, r0
  306d26: 9319         	str	r3, [sp, #0x64]
  306d28: 9819         	ldr	r0, [sp, #0x64]
  306d2a: 2100         	movs	r1, #0x0
  306d2c: f2ae fa06    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2ae40c
  306d30: 4602         	mov	r2, r0
  306d32: 9b03         	ldr	r3, [sp, #0xc]
  306d34: f8c3 2150    	str.w	r2, [r3, #0x150]
  306d38: 9b03         	ldr	r3, [sp, #0xc]
  306d3a: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  306d3e: 4618         	mov	r0, r3
  306d40: f291 f8d2    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2911a4
  306d44: 9b03         	ldr	r3, [sp, #0xc]
  306d46: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  306d4a: 681b         	ldr	r3, [r3]
  306d4c: 334c         	adds	r3, #0x4c
  306d4e: 681d         	ldr	r5, [r3]
  306d50: 9b03         	ldr	r3, [sp, #0xc]
  306d52: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  306d56: 461e         	mov	r6, r3
  306d58: ab36         	add	r3, sp, #0xd8
  306d5a: 4618         	mov	r0, r3
  306d5c: f04f 0100    	mov.w	r1, #0x0
  306d60: f04f 0200    	mov.w	r2, #0x0
  306d64: f2cc 2248    	movt	r2, #0xc248
  306d68: f28b ffc2    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x28bf84
  306d6c: a93a         	add	r1, sp, #0xe8
  306d6e: aa20         	add	r2, sp, #0x80
  306d70: ab36         	add	r3, sp, #0xd8
  306d72: 4608         	mov	r0, r1
  306d74: 4611         	mov	r1, r2
  306d76: 461a         	mov	r2, r3
  306d78: f7fe fc28    	bl	0x3055cc <ConfigLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x13cc> @ imm = #-0x17b0
  306d7c: ab3a         	add	r3, sp, #0xe8
  306d7e: 4630         	mov	r0, r6
  306d80: 4619         	mov	r1, r3
  306d82: 47a8         	blx	r5
  306d84: 9b03         	ldr	r3, [sp, #0xc]
  306d86: 681b         	ldr	r3, [r3]
  306d88: 33c8         	adds	r3, #0xc8
  306d8a: 681b         	ldr	r3, [r3]
  306d8c: 9903         	ldr	r1, [sp, #0xc]
  306d8e: 9a03         	ldr	r2, [sp, #0xc]
  306d90: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  306d94: 4608         	mov	r0, r1
  306d96: 4611         	mov	r1, r2
  306d98: 4798         	blx	r3
  306d9a: f8df 3584    	ldr.w	r3, [pc, #0x584]        @ 0x307320 <ControlsLayer::init()+0xeb8>
  306d9e: 447b         	add	r3, pc
  306da0: 4618         	mov	r0, r3
  306da2: f0ae f2ad    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4ae55a
  306da6: 4603         	mov	r3, r0
  306da8: 2220         	movs	r2, #0x20
  306daa: 9200         	str	r2, [sp]
  306dac: f8df 2574    	ldr.w	r2, [pc, #0x574]        @ 0x307324 <ControlsLayer::init()+0xebc>
  306db0: 447a         	add	r2, pc
  306db2: 4610         	mov	r0, r2
  306db4: 4619         	mov	r1, r3
  306db6: 2220         	movs	r2, #0x20
  306db8: 2320         	movs	r3, #0x20
  306dba: f29e fadd    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x29e5ba
  306dbe: 4602         	mov	r2, r0
  306dc0: 9b03         	ldr	r3, [sp, #0xc]
  306dc2: f8c3 214c    	str.w	r2, [r3, #0x14c]
  306dc6: 9b03         	ldr	r3, [sp, #0xc]
  306dc8: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  306dcc: 4618         	mov	r0, r3
  306dce: f291 f88b    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x291116
  306dd2: 9b03         	ldr	r3, [sp, #0xc]
  306dd4: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  306dd8: eddd 7a07    	vldr	s15, [sp, #28]
  306ddc: eefd 7ae7    	vcvt.s32.f32	s15, s15
  306de0: ee17 2a90    	vmov	r2, s15
  306de4: 4618         	mov	r0, r3
  306de6: 4611         	mov	r1, r2
  306de8: f29e ffcc    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x29ef98
  306dec: 9b03         	ldr	r3, [sp, #0xc]
  306dee: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  306df2: 681b         	ldr	r3, [r3]
  306df4: 3340         	adds	r3, #0x40
  306df6: 681b         	ldr	r3, [r3]
  306df8: 9a03         	ldr	r2, [sp, #0xc]
  306dfa: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  306dfe: 4610         	mov	r0, r2
  306e00: 9908         	ldr	r1, [sp, #0x20]
  306e02: 4798         	blx	r3
  306e04: 9b03         	ldr	r3, [sp, #0xc]
  306e06: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  306e0a: 681b         	ldr	r3, [r3]
  306e0c: f503 73fc    	add.w	r3, r3, #0x1f8
  306e10: 681b         	ldr	r3, [r3]
  306e12: 9a03         	ldr	r2, [sp, #0xc]
  306e14: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  306e18: 4610         	mov	r0, r2
  306e1a: f8df 250c    	ldr.w	r2, [pc, #0x50c]        @ 0x307328 <ControlsLayer::init()+0xec0>
  306e1e: 447a         	add	r2, pc
  306e20: 4611         	mov	r1, r2
  306e22: 4798         	blx	r3
  306e24: 9b03         	ldr	r3, [sp, #0xc]
  306e26: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  306e2a: 681b         	ldr	r3, [r3]
  306e2c: 334c         	adds	r3, #0x4c
  306e2e: 681d         	ldr	r5, [r3]
  306e30: 9b03         	ldr	r3, [sp, #0xc]
  306e32: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  306e36: 461e         	mov	r6, r3
  306e38: 9b03         	ldr	r3, [sp, #0xc]
  306e3a: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  306e3e: 681b         	ldr	r3, [r3]
  306e40: 3350         	adds	r3, #0x50
  306e42: 681b         	ldr	r3, [r3]
  306e44: 9a03         	ldr	r2, [sp, #0xc]
  306e46: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  306e4a: 4610         	mov	r0, r2
  306e4c: 4798         	blx	r3
  306e4e: 4603         	mov	r3, r0
  306e50: 4630         	mov	r0, r6
  306e52: 4619         	mov	r1, r3
  306e54: 47a8         	blx	r5
  306e56: 9b03         	ldr	r3, [sp, #0xc]
  306e58: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  306e5c: 681b         	ldr	r3, [r3]
  306e5e: 337c         	adds	r3, #0x7c
  306e60: 681d         	ldr	r5, [r3]
  306e62: 9b03         	ldr	r3, [sp, #0xc]
  306e64: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  306e68: 461e         	mov	r6, r3
  306e6a: ab3a         	add	r3, sp, #0xe8
  306e6c: 4618         	mov	r0, r3
  306e6e: f04f 517c    	mov.w	r1, #0x3f000000
  306e72: f04f 527c    	mov.w	r2, #0x3f000000
  306e76: f28b ff3b    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x28be76
  306e7a: ab3a         	add	r3, sp, #0xe8
  306e7c: 4630         	mov	r0, r6
  306e7e: 4619         	mov	r1, r3
  306e80: 47a8         	blx	r5
  306e82: 9b03         	ldr	r3, [sp, #0xc]
  306e84: 681b         	ldr	r3, [r3]
  306e86: 33c8         	adds	r3, #0xc8
  306e88: 681b         	ldr	r3, [r3]
  306e8a: 9903         	ldr	r1, [sp, #0xc]
  306e8c: 9a03         	ldr	r2, [sp, #0xc]
  306e8e: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  306e92: 4608         	mov	r0, r1
  306e94: 4611         	mov	r1, r2
  306e96: 4798         	blx	r3
  306e98: f8df 3490    	ldr.w	r3, [pc, #0x490]        @ 0x30732c <ControlsLayer::init()+0xec4>
  306e9c: 447b         	add	r3, pc
  306e9e: 4618         	mov	r0, r3
  306ea0: f0ae f22e    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4ae45c
  306ea4: 4603         	mov	r3, r0
  306ea6: 2220         	movs	r2, #0x20
  306ea8: 9200         	str	r2, [sp]
  306eaa: f8df 2484    	ldr.w	r2, [pc, #0x484]        @ 0x307330 <ControlsLayer::init()+0xec8>
  306eae: 447a         	add	r2, pc
  306eb0: 4610         	mov	r0, r2
  306eb2: 4619         	mov	r1, r3
  306eb4: 2220         	movs	r2, #0x20
  306eb6: 2320         	movs	r3, #0x20
  306eb8: f29e fa5e    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x29e4bc
  306ebc: 4602         	mov	r2, r0
  306ebe: 9b03         	ldr	r3, [sp, #0xc]
  306ec0: f8c3 2144    	str.w	r2, [r3, #0x144]
  306ec4: 9b03         	ldr	r3, [sp, #0xc]
  306ec6: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  306eca: 4618         	mov	r0, r3
  306ecc: f291 f80c    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x291018
  306ed0: 9b03         	ldr	r3, [sp, #0xc]
  306ed2: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  306ed6: eddd 7a07    	vldr	s15, [sp, #28]
  306eda: eefd 7ae7    	vcvt.s32.f32	s15, s15
  306ede: ee17 2a90    	vmov	r2, s15
  306ee2: 4618         	mov	r0, r3
  306ee4: 4611         	mov	r1, r2
  306ee6: f29e ff4d    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x29ee9a
  306eea: 9b03         	ldr	r3, [sp, #0xc]
  306eec: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  306ef0: 681b         	ldr	r3, [r3]
  306ef2: 3340         	adds	r3, #0x40
  306ef4: 681b         	ldr	r3, [r3]
  306ef6: 9a03         	ldr	r2, [sp, #0xc]
  306ef8: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  306efc: 4610         	mov	r0, r2
  306efe: 9908         	ldr	r1, [sp, #0x20]
  306f00: 4798         	blx	r3
  306f02: 9b03         	ldr	r3, [sp, #0xc]
  306f04: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  306f08: 681b         	ldr	r3, [r3]
  306f0a: f503 73fc    	add.w	r3, r3, #0x1f8
  306f0e: 681b         	ldr	r3, [r3]
  306f10: 9a03         	ldr	r2, [sp, #0xc]
  306f12: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  306f16: 4610         	mov	r0, r2
  306f18: f8df 2418    	ldr.w	r2, [pc, #0x418]        @ 0x307334 <ControlsLayer::init()+0xecc>
  306f1c: 447a         	add	r2, pc
  306f1e: 4611         	mov	r1, r2
  306f20: 4798         	blx	r3
  306f22: 9b03         	ldr	r3, [sp, #0xc]
  306f24: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  306f28: 681b         	ldr	r3, [r3]
  306f2a: 334c         	adds	r3, #0x4c
  306f2c: 681d         	ldr	r5, [r3]
  306f2e: 9b03         	ldr	r3, [sp, #0xc]
  306f30: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  306f34: 461e         	mov	r6, r3
  306f36: 9b03         	ldr	r3, [sp, #0xc]
  306f38: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  306f3c: 681b         	ldr	r3, [r3]
  306f3e: 3350         	adds	r3, #0x50
  306f40: 681b         	ldr	r3, [r3]
  306f42: 9a03         	ldr	r2, [sp, #0xc]
  306f44: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  306f48: 4610         	mov	r0, r2
  306f4a: 4798         	blx	r3
  306f4c: 4603         	mov	r3, r0
  306f4e: 4630         	mov	r0, r6
  306f50: 4619         	mov	r1, r3
  306f52: 47a8         	blx	r5
  306f54: 9b03         	ldr	r3, [sp, #0xc]
  306f56: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  306f5a: 681b         	ldr	r3, [r3]
  306f5c: 337c         	adds	r3, #0x7c
  306f5e: 681d         	ldr	r5, [r3]
  306f60: 9b03         	ldr	r3, [sp, #0xc]
  306f62: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  306f66: 461e         	mov	r6, r3
  306f68: ab3a         	add	r3, sp, #0xe8
  306f6a: 4618         	mov	r0, r3
  306f6c: f04f 517c    	mov.w	r1, #0x3f000000
  306f70: f04f 527c    	mov.w	r2, #0x3f000000
  306f74: f28b febc    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x28bd78
  306f78: ab3a         	add	r3, sp, #0xe8
  306f7a: 4630         	mov	r0, r6
  306f7c: 4619         	mov	r1, r3
  306f7e: 47a8         	blx	r5
  306f80: 9b03         	ldr	r3, [sp, #0xc]
  306f82: 681b         	ldr	r3, [r3]
  306f84: 33c8         	adds	r3, #0xc8
  306f86: 681b         	ldr	r3, [r3]
  306f88: 9903         	ldr	r1, [sp, #0xc]
  306f8a: 9a03         	ldr	r2, [sp, #0xc]
  306f8c: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  306f90: 4608         	mov	r0, r1
  306f92: 4611         	mov	r1, r2
  306f94: 4798         	blx	r3
  306f96: 9a03         	ldr	r2, [sp, #0xc]
  306f98: 4be7         	ldr	r3, [pc, #0x39c]        @ 0x307338 <ControlsLayer::init()+0xed0>
  306f9a: 58e3         	ldr	r3, [r4, r3]
  306f9c: 932e         	str	r3, [sp, #0xb8]
  306f9e: 2300         	movs	r3, #0x0
  306fa0: 932f         	str	r3, [sp, #0xbc]
  306fa2: 9b2f         	ldr	r3, [sp, #0xbc]
  306fa4: 9300         	str	r3, [sp]
  306fa6: 9b2e         	ldr	r3, [sp, #0xb8]
  306fa8: 980f         	ldr	r0, [sp, #0x3c]
  306faa: 9910         	ldr	r1, [sp, #0x40]
  306fac: f2b1 f9be    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2b137c
  306fb0: 4603         	mov	r3, r0
  306fb2: 931a         	str	r3, [sp, #0x68]
  306fb4: 981a         	ldr	r0, [sp, #0x68]
  306fb6: 2100         	movs	r1, #0x0
  306fb8: f2ae f8c0    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2ae180
  306fbc: 4602         	mov	r2, r0
  306fbe: 9b03         	ldr	r3, [sp, #0xc]
  306fc0: f8c3 2124    	str.w	r2, [r3, #0x124]
  306fc4: 9b03         	ldr	r3, [sp, #0xc]
  306fc6: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  306fca: 4618         	mov	r0, r3
  306fcc: f290 ff8c    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x290f18
  306fd0: 9b03         	ldr	r3, [sp, #0xc]
  306fd2: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  306fd6: 681b         	ldr	r3, [r3]
  306fd8: 334c         	adds	r3, #0x4c
  306fda: 681d         	ldr	r5, [r3]
  306fdc: 9b03         	ldr	r3, [sp, #0xc]
  306fde: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  306fe2: 461e         	mov	r6, r3
  306fe4: ed9d 7a20    	vldr	s14, [sp, #128]
  306fe8: eddf 7ab8    	vldr	s15, [pc, #736]         @ 0x3072cc <ControlsLayer::init()+0xe64>
  306fec: ee37 7a27    	vadd.f32	s14, s14, s15
  306ff0: eddf 7ab7    	vldr	s15, [pc, #732]         @ 0x3072d0 <ControlsLayer::init()+0xe68>
  306ff4: ee77 6a67    	vsub.f32	s13, s14, s15
  306ff8: ed9d 7a21    	vldr	s14, [sp, #132]
  306ffc: eef3 7a04    	vmov.f32	s15, #2.000000e+01
  307000: ee77 7a27    	vadd.f32	s15, s14, s15
  307004: ab3a         	add	r3, sp, #0xe8
  307006: 4618         	mov	r0, r3
  307008: ee16 1a90    	vmov	r1, s13
  30700c: ee17 2a90    	vmov	r2, s15
  307010: f28b fe6e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x28bcdc
  307014: ab3a         	add	r3, sp, #0xe8
  307016: 4630         	mov	r0, r6
  307018: 4619         	mov	r1, r3
  30701a: 47a8         	blx	r5
  30701c: 9b03         	ldr	r3, [sp, #0xc]
  30701e: 681b         	ldr	r3, [r3]
  307020: 33c8         	adds	r3, #0xc8
  307022: 681b         	ldr	r3, [r3]
  307024: 9903         	ldr	r1, [sp, #0xc]
  307026: 9a03         	ldr	r2, [sp, #0xc]
  307028: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  30702c: 4608         	mov	r0, r1
  30702e: 4611         	mov	r1, r2
  307030: 4798         	blx	r3
  307032: 9a03         	ldr	r2, [sp, #0xc]
  307034: 4bc1         	ldr	r3, [pc, #0x304]        @ 0x30733c <ControlsLayer::init()+0xed4>
  307036: 58e3         	ldr	r3, [r4, r3]
  307038: 9330         	str	r3, [sp, #0xc0]
  30703a: 2300         	movs	r3, #0x0
  30703c: 9331         	str	r3, [sp, #0xc4]
  30703e: 9b31         	ldr	r3, [sp, #0xc4]
  307040: 9300         	str	r3, [sp]
  307042: 9b30         	ldr	r3, [sp, #0xc0]
  307044: 9813         	ldr	r0, [sp, #0x4c]
  307046: 9914         	ldr	r1, [sp, #0x50]
  307048: f2b1 f970    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2b12e0
  30704c: 4603         	mov	r3, r0
  30704e: 931b         	str	r3, [sp, #0x6c]
  307050: 981b         	ldr	r0, [sp, #0x6c]
  307052: 2100         	movs	r1, #0x0
  307054: f2ae f872    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2ae0e4
  307058: 4602         	mov	r2, r0
  30705a: 9b03         	ldr	r3, [sp, #0xc]
  30705c: f8c3 2128    	str.w	r2, [r3, #0x128]
  307060: 9b03         	ldr	r3, [sp, #0xc]
  307062: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  307066: 4618         	mov	r0, r3
  307068: f290 ff3e    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x290e7c
  30706c: 9b03         	ldr	r3, [sp, #0xc]
  30706e: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  307072: 681b         	ldr	r3, [r3]
  307074: 334c         	adds	r3, #0x4c
  307076: 681d         	ldr	r5, [r3]
  307078: 9b03         	ldr	r3, [sp, #0xc]
  30707a: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  30707e: 461e         	mov	r6, r3
  307080: ed9d 7a20    	vldr	s14, [sp, #128]
  307084: eddf 7a91    	vldr	s15, [pc, #580]         @ 0x3072cc <ControlsLayer::init()+0xe64>
  307088: ee37 7a67    	vsub.f32	s14, s14, s15
  30708c: eddf 7a90    	vldr	s15, [pc, #576]         @ 0x3072d0 <ControlsLayer::init()+0xe68>
  307090: ee77 6a67    	vsub.f32	s13, s14, s15
  307094: ed9d 7a21    	vldr	s14, [sp, #132]
  307098: eef3 7a04    	vmov.f32	s15, #2.000000e+01
  30709c: ee77 7a27    	vadd.f32	s15, s14, s15
  3070a0: ab3a         	add	r3, sp, #0xe8
  3070a2: 4618         	mov	r0, r3
  3070a4: ee16 1a90    	vmov	r1, s13
  3070a8: ee17 2a90    	vmov	r2, s15
  3070ac: f28b fe20    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x28bc40
  3070b0: ab3a         	add	r3, sp, #0xe8
  3070b2: 4630         	mov	r0, r6
  3070b4: 4619         	mov	r1, r3
  3070b6: 47a8         	blx	r5
  3070b8: 9b03         	ldr	r3, [sp, #0xc]
  3070ba: 681b         	ldr	r3, [r3]
  3070bc: 33c8         	adds	r3, #0xc8
  3070be: 681b         	ldr	r3, [r3]
  3070c0: 9903         	ldr	r1, [sp, #0xc]
  3070c2: 9a03         	ldr	r2, [sp, #0xc]
  3070c4: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  3070c8: 4608         	mov	r0, r1
  3070ca: 4611         	mov	r1, r2
  3070cc: 4798         	blx	r3
  3070ce: 4b9c         	ldr	r3, [pc, #0x270]        @ 0x307340 <ControlsLayer::init()+0xed8>
  3070d0: 447b         	add	r3, pc
  3070d2: 4618         	mov	r0, r3
  3070d4: f0ae f114    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4ae228
  3070d8: 4603         	mov	r3, r0
  3070da: 2220         	movs	r2, #0x20
  3070dc: 9200         	str	r2, [sp]
  3070de: 4a99         	ldr	r2, [pc, #0x264]        @ 0x307344 <ControlsLayer::init()+0xedc>
  3070e0: 447a         	add	r2, pc
  3070e2: 4610         	mov	r0, r2
  3070e4: 4619         	mov	r1, r3
  3070e6: 2220         	movs	r2, #0x20
  3070e8: 2320         	movs	r3, #0x20
  3070ea: f29e f945    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x29e28a
  3070ee: 4602         	mov	r2, r0
  3070f0: 9b03         	ldr	r3, [sp, #0xc]
  3070f2: f8c3 212c    	str.w	r2, [r3, #0x12c]
  3070f6: 9b03         	ldr	r3, [sp, #0xc]
  3070f8: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  3070fc: 4618         	mov	r0, r3
  3070fe: f290 fef3    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x290de6
  307102: 9b03         	ldr	r3, [sp, #0xc]
  307104: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  307108: 681b         	ldr	r3, [r3]
  30710a: 334c         	adds	r3, #0x4c
  30710c: 681d         	ldr	r5, [r3]
  30710e: 9b03         	ldr	r3, [sp, #0xc]
  307110: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  307114: 461e         	mov	r6, r3
  307116: ed9d 7a20    	vldr	s14, [sp, #128]
  30711a: eddf 7a6d    	vldr	s15, [pc, #436]         @ 0x3072d0 <ControlsLayer::init()+0xe68>
  30711e: ee77 7a67    	vsub.f32	s15, s14, s15
  307122: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  307126: ed9d 7a21    	vldr	s14, [sp, #132]
  30712a: eef3 7a04    	vmov.f32	s15, #2.000000e+01
  30712e: ee37 7a27    	vadd.f32	s14, s14, s15
  307132: eddd 7a06    	vldr	s15, [sp, #24]
  307136: ee77 7a27    	vadd.f32	s15, s14, s15
  30713a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  30713e: ab36         	add	r3, sp, #0xd8
  307140: 4618         	mov	r0, r3
  307142: eeb0 0b46    	vmov.f64	d0, d6
  307146: eeb0 1b47    	vmov.f64	d1, d7
  30714a: f7fe fa4f    	bl	0x3055ec <ConfigLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x13ec> @ imm = #-0x1b62
  30714e: ed9d 8b36    	vldr	d8, [sp, #216]
  307152: 9b03         	ldr	r3, [sp, #0xc]
  307154: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  307158: 681b         	ldr	r3, [r3]
  30715a: f503 73fe    	add.w	r3, r3, #0x1fc
  30715e: 681b         	ldr	r3, [r3]
  307160: 9a03         	ldr	r2, [sp, #0xc]
  307162: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  307166: 4610         	mov	r0, r2
  307168: 4798         	blx	r3
  30716a: 4607         	mov	r7, r0
  30716c: ab26         	add	r3, sp, #0x98
  30716e: 4618         	mov	r0, r3
  307170: f083 f140    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x483280
  307174: aa32         	add	r2, sp, #0xc8
  307176: ab26         	add	r3, sp, #0x98
  307178: 4610         	mov	r0, r2
  30717a: 4639         	mov	r1, r7
  30717c: 461a         	mov	r2, r3
  30717e: f0af f46f    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4af8de
  307182: ab32         	add	r3, sp, #0xc8
  307184: 4618         	mov	r0, r3
  307186: f0ad f769    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x4aded2
  30718a: 4603         	mov	r3, r0
  30718c: ee07 3a90    	vmov	s15, r3
  307190: eeb8 7a67    	vcvt.f32.u32	s14, s15
  307194: eddd 7a07    	vldr	s15, [sp, #28]
  307198: ee27 7a27    	vmul.f32	s14, s14, s15
  30719c: eddd 7a08    	vldr	s15, [sp, #32]
  3071a0: ee27 7a27    	vmul.f32	s14, s14, s15
  3071a4: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3071a8: eec7 7a27    	vdiv.f32	s15, s14, s15
  3071ac: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3071b0: ee38 7b47    	vsub.f64	d7, d8, d7
  3071b4: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3071b8: ed9d 7a20    	vldr	s14, [sp, #128]
  3071bc: eddf 7a44    	vldr	s15, [pc, #272]         @ 0x3072d0 <ControlsLayer::init()+0xe68>
  3071c0: ee77 7a67    	vsub.f32	s15, s14, s15
  3071c4: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3071c8: ed9d 7a21    	vldr	s14, [sp, #132]
  3071cc: eef3 7a04    	vmov.f32	s15, #2.000000e+01
  3071d0: ee37 7a27    	vadd.f32	s14, s14, s15
  3071d4: eddd 7a06    	vldr	s15, [sp, #24]
  3071d8: ee77 7a27    	vadd.f32	s15, s14, s15
  3071dc: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3071e0: ab3a         	add	r3, sp, #0xe8
  3071e2: 4618         	mov	r0, r3
  3071e4: eeb0 0b46    	vmov.f64	d0, d6
  3071e8: eeb0 1b47    	vmov.f64	d1, d7
  3071ec: f7fe f9fe    	bl	0x3055ec <ConfigLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x13ec> @ imm = #-0x1c04
  3071f0: ed9d 7b3c    	vldr	d7, [sp, #240]
  3071f4: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3071f8: ab34         	add	r3, sp, #0xd0
  3071fa: 4618         	mov	r0, r3
  3071fc: ee18 1a10    	vmov	r1, s16
  307200: ee17 2a90    	vmov	r2, s15
  307204: f28b fd74    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x28bae8
  307208: ab34         	add	r3, sp, #0xd0
  30720a: 4630         	mov	r0, r6
  30720c: 4619         	mov	r1, r3
  30720e: 47a8         	blx	r5
  307210: ab32         	add	r3, sp, #0xc8
  307212: 4618         	mov	r0, r3
  307214: f0ae f37e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ae6fc
  307218: ab26         	add	r3, sp, #0x98
  30721a: 4618         	mov	r0, r3
  30721c: f083 f0ee    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4831dc
  307220: 9b03         	ldr	r3, [sp, #0xc]
  307222: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  307226: eddd 7a07    	vldr	s15, [sp, #28]
  30722a: eefd 7ae7    	vcvt.s32.f32	s15, s15
  30722e: ee17 2a90    	vmov	r2, s15
  307232: 4618         	mov	r0, r3
  307234: 4611         	mov	r1, r2
  307236: f29e fda5    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x29eb4a
  30723a: 9b03         	ldr	r3, [sp, #0xc]
  30723c: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  307240: 681b         	ldr	r3, [r3]
  307242: 3340         	adds	r3, #0x40
  307244: 681b         	ldr	r3, [r3]
  307246: 9a03         	ldr	r2, [sp, #0xc]
  307248: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  30724c: 4610         	mov	r0, r2
  30724e: 9908         	ldr	r1, [sp, #0x20]
  307250: 4798         	blx	r3
  307252: 9b03         	ldr	r3, [sp, #0xc]
  307254: 681b         	ldr	r3, [r3]
  307256: 33c8         	adds	r3, #0xc8
  307258: 681b         	ldr	r3, [r3]
  30725a: 9903         	ldr	r1, [sp, #0xc]
  30725c: 9a03         	ldr	r2, [sp, #0xc]
  30725e: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  307262: 4608         	mov	r0, r1
  307264: 4611         	mov	r1, r2
  307266: 4798         	blx	r3
  307268: 9a03         	ldr	r2, [sp, #0xc]
  30726a: 4b37         	ldr	r3, [pc, #0xdc]         @ 0x307348 <ControlsLayer::init()+0xee0>
  30726c: 58e3         	ldr	r3, [r4, r3]
  30726e: 9332         	str	r3, [sp, #0xc8]
  307270: 2300         	movs	r3, #0x0
  307272: 9333         	str	r3, [sp, #0xcc]
  307274: 9b33         	ldr	r3, [sp, #0xcc]
  307276: 9300         	str	r3, [sp]
  307278: 9b32         	ldr	r3, [sp, #0xc8]
  30727a: 9811         	ldr	r0, [sp, #0x44]
  30727c: 9912         	ldr	r1, [sp, #0x48]
  30727e: f2b1 f855    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2b10aa
  307282: 4603         	mov	r3, r0
  307284: 931c         	str	r3, [sp, #0x70]
  307286: 981c         	ldr	r0, [sp, #0x70]
  307288: 2100         	movs	r1, #0x0
  30728a: f2ad ff57    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2adeae
  30728e: 4602         	mov	r2, r0
  307290: 9b03         	ldr	r3, [sp, #0xc]
  307292: f8c3 2134    	str.w	r2, [r3, #0x134]
  307296: 9b03         	ldr	r3, [sp, #0xc]
  307298: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  30729c: 4618         	mov	r0, r3
  30729e: f290 fe23    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x290c46
  3072a2: 9b03         	ldr	r3, [sp, #0xc]
  3072a4: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  3072a8: 681b         	ldr	r3, [r3]
  3072aa: 334c         	adds	r3, #0x4c
  3072ac: 681d         	ldr	r5, [r3]
  3072ae: 9b03         	ldr	r3, [sp, #0xc]
  3072b0: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  3072b4: 461e         	mov	r6, r3
  3072b6: ed9d 7a20    	vldr	s14, [sp, #128]
  3072ba: eddf 7a04    	vldr	s15, [pc, #16]          @ 0x3072cc <ControlsLayer::init()+0xe64>
  3072be: ee37 7a27    	vadd.f32	s14, s14, s15
  3072c2: eddf 7a03    	vldr	s15, [pc, #12]          @ 0x3072d0 <ControlsLayer::init()+0xe68>
  3072c6: ee77 6a27    	vadd.f32	s13, s14, s15
  3072ca: e03f         	b	0x30734c <ControlsLayer::init()+0xee4> @ imm = #0x7e
  3072cc: 0000         	movs	r0, r0
  3072ce: 4288         	cmp	r0, r1
  3072d0: 0000         	movs	r0, r0
  3072d2: 4300         	orrs	r0, r0
  3072d4: ef52 004b    	<unknown>
  3072d8: ef42 004b    	<unknown>
  3072dc: ef32 004b    	<unknown>
  3072e0: ef2e 004b    	<unknown>
  3072e4: ef1e 004b    	<unknown>
  3072e8: ef1a 004b    	<unknown>
  3072ec: ef0a 004b    	<unknown>
  3072f0: eefa 004b    	cdp	p0, #0xf, c0, c10, c11, #0x2
  3072f4: eeea 004b    	cdp	p0, #0xe, c0, c10, c11, #0x2
  3072f8: eeea 004b    	cdp	p0, #0xe, c0, c10, c11, #0x2
  3072fc: eeda 004b    	cdp	p0, #0xd, c0, c10, c11, #0x2
  307300: eeca 004b    	cdp	p0, #0xc, c0, c10, c11, #0x2
  307304: eeba 004b    	cdp	p0, #0xb, c0, c10, c11, #0x2
  307308: d960         	bls	0x3073cc <ControlsLayer::init()+0xf64> @ imm = #0xc0
  30730a: ffff 952c    	<unknown>
  30730e: 0063         	lsls	r3, r4, #0x1
  307310: ee16 004b    	cdp	p0, #0x1, c0, c6, c11, #0x2
  307314: edac 004b    	stc	p0, c0, [r12, #300]!
  307318: d964         	bls	0x3073e4 <ControlsLayer::init()+0xf7c> @ imm = #0xc8
  30731a: ffff d968    	vtbx.8	d29, {d15, d16}, d24
  30731e: ffff 931a    	vrsra.u32	d25, d10, #0x1
  307322: 0063         	lsls	r3, r4, #0x1
  307324: ec04 004b    	<unknown>
  307328: eba2 004b    	sub.w	r0, r2, r11, lsl #1
  30732c: 921c         	str	r2, [sp, #0x70]
  30732e: 0063         	lsls	r3, r4, #0x1
  307330: eb06 004b    	add.w	r0, r6, r11, lsl #1
  307334: eab0 004b    	<unknown>
  307338: d96c         	bls	0x307414 <ControlsLayer::init()+0xfac> @ imm = #0xd8
  30733a: ffff d970    	vqrshrn.u64	d29, q8, #0x1
  30733e: ffff 8fe8    	<unknown>
  307342: 0063         	lsls	r3, r4, #0x1
  307344: e8f4 004b    	ldrd	r0, r0, [r4], #300
  307348: d974         	bls	0x307434 <ControlsLayer::init()+0xfcc> @ imm = #0xe8
  30734a: ffff ed9d    	<unknown>
  30734e: 7a21         	ldrb	r1, [r4, #0x8]
  307350: eef3 7a04    	vmov.f32	s15, #2.000000e+01
  307354: ee77 7a27    	vadd.f32	s15, s14, s15
  307358: ab3a         	add	r3, sp, #0xe8
  30735a: 4618         	mov	r0, r3
  30735c: ee16 1a90    	vmov	r1, s13
  307360: ee17 2a90    	vmov	r2, s15
  307364: f28b fcc4    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x28b988
  307368: ab3a         	add	r3, sp, #0xe8
  30736a: 4630         	mov	r0, r6
  30736c: 4619         	mov	r1, r3
  30736e: 47a8         	blx	r5
  307370: 9b03         	ldr	r3, [sp, #0xc]
  307372: 681b         	ldr	r3, [r3]
  307374: 33c8         	adds	r3, #0xc8
  307376: 681b         	ldr	r3, [r3]
  307378: 9903         	ldr	r1, [sp, #0xc]
  30737a: 9a03         	ldr	r2, [sp, #0xc]
  30737c: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  307380: 4608         	mov	r0, r1
  307382: 4611         	mov	r1, r2
  307384: 4798         	blx	r3
  307386: 9a03         	ldr	r2, [sp, #0xc]
  307388: 4bcf         	ldr	r3, [pc, #0x33c]        @ 0x3076c8 <ControlsLayer::init()+0x1260>
  30738a: 58e3         	ldr	r3, [r4, r3]
  30738c: 9334         	str	r3, [sp, #0xd0]
  30738e: 2300         	movs	r3, #0x0
  307390: 9335         	str	r3, [sp, #0xd4]
  307392: 9b35         	ldr	r3, [sp, #0xd4]
  307394: 9300         	str	r3, [sp]
  307396: 9b34         	ldr	r3, [sp, #0xd0]
  307398: 9815         	ldr	r0, [sp, #0x54]
  30739a: 9916         	ldr	r1, [sp, #0x58]
  30739c: f2b0 ffc6    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2b0f8c
  3073a0: 4603         	mov	r3, r0
  3073a2: 931d         	str	r3, [sp, #0x74]
  3073a4: 981d         	ldr	r0, [sp, #0x74]
  3073a6: 2100         	movs	r1, #0x0
  3073a8: f2ad fec8    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2add90
  3073ac: 4602         	mov	r2, r0
  3073ae: 9b03         	ldr	r3, [sp, #0xc]
  3073b0: f8c3 2138    	str.w	r2, [r3, #0x138]
  3073b4: 9b03         	ldr	r3, [sp, #0xc]
  3073b6: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3073ba: 4618         	mov	r0, r3
  3073bc: f290 fd94    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x290b28
  3073c0: 9b03         	ldr	r3, [sp, #0xc]
  3073c2: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3073c6: 681b         	ldr	r3, [r3]
  3073c8: 334c         	adds	r3, #0x4c
  3073ca: 681c         	ldr	r4, [r3]
  3073cc: 9b03         	ldr	r3, [sp, #0xc]
  3073ce: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3073d2: 461d         	mov	r5, r3
  3073d4: ed9d 7a20    	vldr	s14, [sp, #128]
  3073d8: eddf 7ab9    	vldr	s15, [pc, #740]         @ 0x3076c0 <ControlsLayer::init()+0x1258>
  3073dc: ee37 7a67    	vsub.f32	s14, s14, s15
  3073e0: eddf 7ab8    	vldr	s15, [pc, #736]         @ 0x3076c4 <ControlsLayer::init()+0x125c>
  3073e4: ee77 6a27    	vadd.f32	s13, s14, s15
  3073e8: ed9d 7a21    	vldr	s14, [sp, #132]
  3073ec: eef3 7a04    	vmov.f32	s15, #2.000000e+01
  3073f0: ee77 7a27    	vadd.f32	s15, s14, s15
  3073f4: ab3a         	add	r3, sp, #0xe8
  3073f6: 4618         	mov	r0, r3
  3073f8: ee16 1a90    	vmov	r1, s13
  3073fc: ee17 2a90    	vmov	r2, s15
  307400: f28b fc76    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x28b8ec
  307404: ab3a         	add	r3, sp, #0xe8
  307406: 4628         	mov	r0, r5
  307408: 4619         	mov	r1, r3
  30740a: 47a0         	blx	r4
  30740c: 9b03         	ldr	r3, [sp, #0xc]
  30740e: 681b         	ldr	r3, [r3]
  307410: 33c8         	adds	r3, #0xc8
  307412: 681b         	ldr	r3, [r3]
  307414: 9903         	ldr	r1, [sp, #0xc]
  307416: 9a03         	ldr	r2, [sp, #0xc]
  307418: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  30741c: 4608         	mov	r0, r1
  30741e: 4611         	mov	r1, r2
  307420: 4798         	blx	r3
  307422: 4baa         	ldr	r3, [pc, #0x2a8]        @ 0x3076cc <ControlsLayer::init()+0x1264>
  307424: 447b         	add	r3, pc
  307426: 4618         	mov	r0, r3
  307428: f0ad f76a    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4aded4
  30742c: 4603         	mov	r3, r0
  30742e: 2220         	movs	r2, #0x20
  307430: 9200         	str	r2, [sp]
  307432: 4aa7         	ldr	r2, [pc, #0x29c]        @ 0x3076d0 <ControlsLayer::init()+0x1268>
  307434: 447a         	add	r2, pc
  307436: 4610         	mov	r0, r2
  307438: 4619         	mov	r1, r3
  30743a: 2220         	movs	r2, #0x20
  30743c: 2320         	movs	r3, #0x20
  30743e: f29d ff9b    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x29df36
  307442: 4602         	mov	r2, r0
  307444: 9b03         	ldr	r3, [sp, #0xc]
  307446: f8c3 213c    	str.w	r2, [r3, #0x13c]
  30744a: 9b03         	ldr	r3, [sp, #0xc]
  30744c: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  307450: 4618         	mov	r0, r3
  307452: f290 fd49    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x290a92
  307456: 9b03         	ldr	r3, [sp, #0xc]
  307458: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  30745c: 681b         	ldr	r3, [r3]
  30745e: 334c         	adds	r3, #0x4c
  307460: 681c         	ldr	r4, [r3]
  307462: 9b03         	ldr	r3, [sp, #0xc]
  307464: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  307468: 461d         	mov	r5, r3
  30746a: ed9d 7a20    	vldr	s14, [sp, #128]
  30746e: eddf 7a95    	vldr	s15, [pc, #596]         @ 0x3076c4 <ControlsLayer::init()+0x125c>
  307472: ee77 7a27    	vadd.f32	s15, s14, s15
  307476: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  30747a: ed9d 7a21    	vldr	s14, [sp, #132]
  30747e: eef3 7a04    	vmov.f32	s15, #2.000000e+01
  307482: ee37 7a27    	vadd.f32	s14, s14, s15
  307486: eddd 7a06    	vldr	s15, [sp, #24]
  30748a: ee77 7a27    	vadd.f32	s15, s14, s15
  30748e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  307492: ab36         	add	r3, sp, #0xd8
  307494: 4618         	mov	r0, r3
  307496: eeb0 0b46    	vmov.f64	d0, d6
  30749a: eeb0 1b47    	vmov.f64	d1, d7
  30749e: f7fe f8a5    	bl	0x3055ec <ConfigLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x13ec> @ imm = #-0x1eb6
  3074a2: ed9d 8b36    	vldr	d8, [sp, #216]
  3074a6: 9b03         	ldr	r3, [sp, #0xc]
  3074a8: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3074ac: 681b         	ldr	r3, [r3]
  3074ae: f503 73fe    	add.w	r3, r3, #0x1fc
  3074b2: 681b         	ldr	r3, [r3]
  3074b4: 9a03         	ldr	r2, [sp, #0xc]
  3074b6: f8d2 213c    	ldr.w	r2, [r2, #0x13c]
  3074ba: 4610         	mov	r0, r2
  3074bc: 4798         	blx	r3
  3074be: 4606         	mov	r6, r0
  3074c0: ab22         	add	r3, sp, #0x88
  3074c2: 4618         	mov	r0, r3
  3074c4: f082 f796    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x482f2c
  3074c8: aa24         	add	r2, sp, #0x90
  3074ca: ab22         	add	r3, sp, #0x88
  3074cc: 4610         	mov	r0, r2
  3074ce: 4631         	mov	r1, r6
  3074d0: 461a         	mov	r2, r3
  3074d2: f0af f2c5    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4af58a
  3074d6: ab24         	add	r3, sp, #0x90
  3074d8: 4618         	mov	r0, r3
  3074da: f0ad f5bf    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x4adb7e
  3074de: 4603         	mov	r3, r0
  3074e0: ee07 3a90    	vmov	s15, r3
  3074e4: eeb8 7a67    	vcvt.f32.u32	s14, s15
  3074e8: eddd 7a07    	vldr	s15, [sp, #28]
  3074ec: ee27 7a27    	vmul.f32	s14, s14, s15
  3074f0: eddd 7a08    	vldr	s15, [sp, #32]
  3074f4: ee27 7a27    	vmul.f32	s14, s14, s15
  3074f8: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3074fc: eec7 7a27    	vdiv.f32	s15, s14, s15
  307500: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  307504: ee38 7b47    	vsub.f64	d7, d8, d7
  307508: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  30750c: ed9d 7a20    	vldr	s14, [sp, #128]
  307510: eddf 7a6c    	vldr	s15, [pc, #432]         @ 0x3076c4 <ControlsLayer::init()+0x125c>
  307514: ee77 7a27    	vadd.f32	s15, s14, s15
  307518: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  30751c: ed9d 7a21    	vldr	s14, [sp, #132]
  307520: eef3 7a04    	vmov.f32	s15, #2.000000e+01
  307524: ee37 7a27    	vadd.f32	s14, s14, s15
  307528: eddd 7a06    	vldr	s15, [sp, #24]
  30752c: ee77 7a27    	vadd.f32	s15, s14, s15
  307530: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  307534: ab3a         	add	r3, sp, #0xe8
  307536: 4618         	mov	r0, r3
  307538: eeb0 0b46    	vmov.f64	d0, d6
  30753c: eeb0 1b47    	vmov.f64	d1, d7
  307540: f7fe f854    	bl	0x3055ec <ConfigLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x13ec> @ imm = #-0x1f58
  307544: ed9d 7b3c    	vldr	d7, [sp, #240]
  307548: eef7 7bc7    	vcvt.f32.f64	s15, d7
  30754c: ab26         	add	r3, sp, #0x98
  30754e: 4618         	mov	r0, r3
  307550: ee18 1a10    	vmov	r1, s16
  307554: ee17 2a90    	vmov	r2, s15
  307558: f28b fbca    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x28b794
  30755c: ab26         	add	r3, sp, #0x98
  30755e: 4628         	mov	r0, r5
  307560: 4619         	mov	r1, r3
  307562: 47a0         	blx	r4
  307564: ab24         	add	r3, sp, #0x90
  307566: 4618         	mov	r0, r3
  307568: f0ae f1d4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ae3a8
  30756c: ab22         	add	r3, sp, #0x88
  30756e: 4618         	mov	r0, r3
  307570: f082 f744    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x482e88
  307574: 9b03         	ldr	r3, [sp, #0xc]
  307576: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  30757a: eddd 7a07    	vldr	s15, [sp, #28]
  30757e: eefd 7ae7    	vcvt.s32.f32	s15, s15
  307582: ee17 2a90    	vmov	r2, s15
  307586: 4618         	mov	r0, r3
  307588: 4611         	mov	r1, r2
  30758a: f29e fbfb    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x29e7f6
  30758e: 9b03         	ldr	r3, [sp, #0xc]
  307590: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  307594: 681b         	ldr	r3, [r3]
  307596: 3340         	adds	r3, #0x40
  307598: 681b         	ldr	r3, [r3]
  30759a: 9a03         	ldr	r2, [sp, #0xc]
  30759c: f8d2 213c    	ldr.w	r2, [r2, #0x13c]
  3075a0: 4610         	mov	r0, r2
  3075a2: 9908         	ldr	r1, [sp, #0x20]
  3075a4: 4798         	blx	r3
  3075a6: 9b03         	ldr	r3, [sp, #0xc]
  3075a8: 681b         	ldr	r3, [r3]
  3075aa: 33c8         	adds	r3, #0xc8
  3075ac: 681b         	ldr	r3, [r3]
  3075ae: 9903         	ldr	r1, [sp, #0xc]
  3075b0: 9a03         	ldr	r2, [sp, #0xc]
  3075b2: f8d2 213c    	ldr.w	r2, [r2, #0x13c]
  3075b6: 4608         	mov	r0, r1
  3075b8: 4611         	mov	r1, r2
  3075ba: 4798         	blx	r3
  3075bc: ed9d 7a08    	vldr	s14, [sp, #32]
  3075c0: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3075c4: eec7 7a27    	vdiv.f32	s15, s14, s15
  3075c8: edcd 7a08    	vstr	s15, [sp, #32]
  3075cc: 4b41         	ldr	r3, [pc, #0x104]        @ 0x3076d4 <ControlsLayer::init()+0x126c>
  3075ce: 447b         	add	r3, pc
  3075d0: 4618         	mov	r0, r3
  3075d2: f0ad f695    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4add2a
  3075d6: 4603         	mov	r3, r0
  3075d8: 2220         	movs	r2, #0x20
  3075da: 9200         	str	r2, [sp]
  3075dc: 4a3e         	ldr	r2, [pc, #0xf8]         @ 0x3076d8 <ControlsLayer::init()+0x1270>
  3075de: 447a         	add	r2, pc
  3075e0: 4610         	mov	r0, r2
  3075e2: 4619         	mov	r1, r3
  3075e4: 2220         	movs	r2, #0x20
  3075e6: 2320         	movs	r3, #0x20
  3075e8: f29d fec6    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x29dd8c
  3075ec: 4602         	mov	r2, r0
  3075ee: 9b03         	ldr	r3, [sp, #0xc]
  3075f0: f8c3 2130    	str.w	r2, [r3, #0x130]
  3075f4: 9b03         	ldr	r3, [sp, #0xc]
  3075f6: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  3075fa: 4618         	mov	r0, r3
  3075fc: f290 fc74    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2908e8
  307600: 9b03         	ldr	r3, [sp, #0xc]
  307602: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  307606: 681b         	ldr	r3, [r3]
  307608: 334c         	adds	r3, #0x4c
  30760a: 681c         	ldr	r4, [r3]
  30760c: 9b03         	ldr	r3, [sp, #0xc]
  30760e: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  307612: 461d         	mov	r5, r3
  307614: 9b03         	ldr	r3, [sp, #0xc]
  307616: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  30761a: 681b         	ldr	r3, [r3]
  30761c: 3350         	adds	r3, #0x50
  30761e: 681b         	ldr	r3, [r3]
  307620: 9a03         	ldr	r2, [sp, #0xc]
  307622: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  307626: 4610         	mov	r0, r2
  307628: 4798         	blx	r3
  30762a: 4603         	mov	r3, r0
  30762c: 681e         	ldr	r6, [r3]
  30762e: 9b03         	ldr	r3, [sp, #0xc]
  307630: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  307634: 681b         	ldr	r3, [r3]
  307636: 3350         	adds	r3, #0x50
  307638: 681b         	ldr	r3, [r3]
  30763a: 9a03         	ldr	r2, [sp, #0xc]
  30763c: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  307640: 4610         	mov	r0, r2
  307642: 4798         	blx	r3
  307644: 4603         	mov	r3, r0
  307646: 685b         	ldr	r3, [r3, #0x4]
  307648: aa22         	add	r2, sp, #0x88
  30764a: 4610         	mov	r0, r2
  30764c: 4631         	mov	r1, r6
  30764e: 461a         	mov	r2, r3
  307650: f28b fb4e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x28b69c
  307654: ed9d 7a06    	vldr	s14, [sp, #24]
  307658: eef8 7a00    	vmov.f32	s15, #-2.000000e+00
  30765c: ee67 7a27    	vmul.f32	s15, s14, s15
  307660: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  307664: ab36         	add	r3, sp, #0xd8
  307666: 4618         	mov	r0, r3
  307668: ed9f 0b13    	vldr	d0, [pc, #76]           @ 0x3076b8 <ControlsLayer::init()+0x1250>
  30766c: eeb0 1b47    	vmov.f64	d1, d7
  307670: f7fd ffbc    	bl	0x3055ec <ConfigLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x13ec> @ imm = #-0x2088
  307674: ed9d 8b36    	vldr	d8, [sp, #216]
  307678: 9b03         	ldr	r3, [sp, #0xc]
  30767a: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  30767e: 681b         	ldr	r3, [r3]
  307680: f503 73fe    	add.w	r3, r3, #0x1fc
  307684: 681b         	ldr	r3, [r3]
  307686: 9a03         	ldr	r2, [sp, #0xc]
  307688: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  30768c: 4610         	mov	r0, r2
  30768e: 4798         	blx	r3
  307690: 4606         	mov	r6, r0
  307692: ab04         	add	r3, sp, #0x10
  307694: 4618         	mov	r0, r3
  307696: f082 f6ad    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x482d5a
  30769a: aa05         	add	r2, sp, #0x14
  30769c: ab04         	add	r3, sp, #0x10
  30769e: 4610         	mov	r0, r2
  3076a0: 4631         	mov	r1, r6
  3076a2: 461a         	mov	r2, r3
  3076a4: f0af f1dc    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4af3b8
  3076a8: ab05         	add	r3, sp, #0x14
  3076aa: 4618         	mov	r0, r3
  3076ac: f0ad f4d6    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x4ad9ac
  3076b0: 4603         	mov	r3, r0
  3076b2: ee07 3a90    	vmov	s15, r3
  3076b6: e011         	b	0x3076dc <ControlsLayer::init()+0x1274> @ imm = #0x22
  3076c0: 0000         	movs	r0, r0
  3076c2: 4288         	cmp	r0, r1
  3076c4: 0000         	movs	r0, r0
  3076c6: 4300         	orrs	r0, r0
  3076c8: d978         	bls	0x3077bc <ControlsLayer::init()+0x1354> @ imm = #0xf0
  3076ca: ffff 8c94    	<unknown>
  3076ce: 0063         	lsls	r3, r4, #0x1
  3076d0: e5a0         	b	0x307214 <ControlsLayer::init()+0xdac> @ imm = #-0x4c0
  3076d2: 004b         	lsls	r3, r1, #0x1
  3076d4: 8aea         	ldrh	r2, [r5, #0x16]
  3076d6: 0063         	lsls	r3, r4, #0x1
  3076d8: e3fe         	b	0x307ed8 <ControlsLayer::updateLabels()+0x300> @ imm = #0x7fc
  3076da: 004b         	lsls	r3, r1, #0x1
  3076dc: eeb8 7a67    	vcvt.f32.u32	s14, s15
  3076e0: eddd 7a07    	vldr	s15, [sp, #28]
  3076e4: ee27 7a27    	vmul.f32	s14, s14, s15
  3076e8: eddd 7a08    	vldr	s15, [sp, #32]
  3076ec: ee27 7a27    	vmul.f32	s14, s14, s15
  3076f0: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3076f4: eec7 7a27    	vdiv.f32	s15, s14, s15
  3076f8: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3076fc: ee38 7b47    	vsub.f64	d7, d8, d7
  307700: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  307704: ed9d 7a06    	vldr	s14, [sp, #24]
  307708: eef8 7a00    	vmov.f32	s15, #-2.000000e+00
  30770c: ee67 7a27    	vmul.f32	s15, s14, s15
  307710: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  307714: ab3a         	add	r3, sp, #0xe8
  307716: 4618         	mov	r0, r3
  307718: ed9f 0bb1    	vldr	d0, [pc, #708]          @ 0x3079e0 <ControlsLayer::init()+0x1578>
  30771c: eeb0 1b47    	vmov.f64	d1, d7
  307720: f7fd ff64    	bl	0x3055ec <ConfigLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x13ec> @ imm = #-0x2138
  307724: ed9d 7b3c    	vldr	d7, [sp, #240]
  307728: eef7 7bc7    	vcvt.f32.f64	s15, d7
  30772c: ab24         	add	r3, sp, #0x90
  30772e: 4618         	mov	r0, r3
  307730: ee18 1a10    	vmov	r1, s16
  307734: ee17 2a90    	vmov	r2, s15
  307738: f28b fada    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x28b5b4
  30773c: a926         	add	r1, sp, #0x98
  30773e: aa22         	add	r2, sp, #0x88
  307740: ab24         	add	r3, sp, #0x90
  307742: 4608         	mov	r0, r1
  307744: 4611         	mov	r1, r2
  307746: 461a         	mov	r2, r3
  307748: f7fd ff40    	bl	0x3055cc <ConfigLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x13cc> @ imm = #-0x2180
  30774c: ab26         	add	r3, sp, #0x98
  30774e: 4628         	mov	r0, r5
  307750: 4619         	mov	r1, r3
  307752: 47a0         	blx	r4
  307754: ab05         	add	r3, sp, #0x14
  307756: 4618         	mov	r0, r3
  307758: f0ae f0dc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ae1b8
  30775c: ab04         	add	r3, sp, #0x10
  30775e: 4618         	mov	r0, r3
  307760: f082 f64c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x482c98
  307764: 9b03         	ldr	r3, [sp, #0xc]
  307766: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  30776a: eddd 7a07    	vldr	s15, [sp, #28]
  30776e: eefd 7ae7    	vcvt.s32.f32	s15, s15
  307772: ee17 2a90    	vmov	r2, s15
  307776: 4618         	mov	r0, r3
  307778: 4611         	mov	r1, r2
  30777a: f29e fb03    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x29e606
  30777e: 9b03         	ldr	r3, [sp, #0xc]
  307780: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  307784: 681b         	ldr	r3, [r3]
  307786: 3340         	adds	r3, #0x40
  307788: 681b         	ldr	r3, [r3]
  30778a: 9a03         	ldr	r2, [sp, #0xc]
  30778c: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  307790: 4610         	mov	r0, r2
  307792: 9908         	ldr	r1, [sp, #0x20]
  307794: 4798         	blx	r3
  307796: 9b03         	ldr	r3, [sp, #0xc]
  307798: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  30779c: 681b         	ldr	r3, [r3]
  30779e: 337c         	adds	r3, #0x7c
  3077a0: 681c         	ldr	r4, [r3]
  3077a2: 9b03         	ldr	r3, [sp, #0xc]
  3077a4: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  3077a8: 461d         	mov	r5, r3
  3077aa: eddd 7a08    	vldr	s15, [sp, #32]
  3077ae: eef1 7a67    	vneg.f32	s15, s15
  3077b2: ee17 2a90    	vmov	r2, s15
  3077b6: ab3a         	add	r3, sp, #0xe8
  3077b8: 4618         	mov	r0, r3
  3077ba: 4611         	mov	r1, r2
  3077bc: f04f 0200    	mov.w	r2, #0x0
  3077c0: f28b fa96    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x28b52c
  3077c4: ab3a         	add	r3, sp, #0xe8
  3077c6: 4628         	mov	r0, r5
  3077c8: 4619         	mov	r1, r3
  3077ca: 47a0         	blx	r4
  3077cc: 9b03         	ldr	r3, [sp, #0xc]
  3077ce: 681b         	ldr	r3, [r3]
  3077d0: 33c8         	adds	r3, #0xc8
  3077d2: 681b         	ldr	r3, [r3]
  3077d4: 9903         	ldr	r1, [sp, #0xc]
  3077d6: 9a03         	ldr	r2, [sp, #0xc]
  3077d8: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  3077dc: 4608         	mov	r0, r1
  3077de: 4611         	mov	r1, r2
  3077e0: 4798         	blx	r3
  3077e2: 4b81         	ldr	r3, [pc, #0x204]        @ 0x3079e8 <ControlsLayer::init()+0x1580>
  3077e4: 447b         	add	r3, pc
  3077e6: 4618         	mov	r0, r3
  3077e8: f0ad f58a    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4adb14
  3077ec: 4603         	mov	r3, r0
  3077ee: 2220         	movs	r2, #0x20
  3077f0: 9200         	str	r2, [sp]
  3077f2: 4a7e         	ldr	r2, [pc, #0x1f8]        @ 0x3079ec <ControlsLayer::init()+0x1584>
  3077f4: 447a         	add	r2, pc
  3077f6: 4610         	mov	r0, r2
  3077f8: 4619         	mov	r1, r3
  3077fa: 2220         	movs	r2, #0x20
  3077fc: 2320         	movs	r3, #0x20
  3077fe: f29d fdbb    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x29db76
  307802: 4602         	mov	r2, r0
  307804: 9b03         	ldr	r3, [sp, #0xc]
  307806: f8c3 2140    	str.w	r2, [r3, #0x140]
  30780a: 9b03         	ldr	r3, [sp, #0xc]
  30780c: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  307810: 4618         	mov	r0, r3
  307812: f290 fb69    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2906d2
  307816: 9b03         	ldr	r3, [sp, #0xc]
  307818: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  30781c: 681b         	ldr	r3, [r3]
  30781e: 334c         	adds	r3, #0x4c
  307820: 681c         	ldr	r4, [r3]
  307822: 9b03         	ldr	r3, [sp, #0xc]
  307824: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  307828: 461d         	mov	r5, r3
  30782a: 9b03         	ldr	r3, [sp, #0xc]
  30782c: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  307830: 681b         	ldr	r3, [r3]
  307832: 3350         	adds	r3, #0x50
  307834: 681b         	ldr	r3, [r3]
  307836: 9a03         	ldr	r2, [sp, #0xc]
  307838: f8d2 213c    	ldr.w	r2, [r2, #0x13c]
  30783c: 4610         	mov	r0, r2
  30783e: 4798         	blx	r3
  307840: 4603         	mov	r3, r0
  307842: 681e         	ldr	r6, [r3]
  307844: 9b03         	ldr	r3, [sp, #0xc]
  307846: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  30784a: 681b         	ldr	r3, [r3]
  30784c: 3350         	adds	r3, #0x50
  30784e: 681b         	ldr	r3, [r3]
  307850: 9a03         	ldr	r2, [sp, #0xc]
  307852: f8d2 213c    	ldr.w	r2, [r2, #0x13c]
  307856: 4610         	mov	r0, r2
  307858: 4798         	blx	r3
  30785a: 4603         	mov	r3, r0
  30785c: 685b         	ldr	r3, [r3, #0x4]
  30785e: aa22         	add	r2, sp, #0x88
  307860: 4610         	mov	r0, r2
  307862: 4631         	mov	r1, r6
  307864: 461a         	mov	r2, r3
  307866: f28b fa43    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x28b486
  30786a: ed9d 7a06    	vldr	s14, [sp, #24]
  30786e: eef8 7a00    	vmov.f32	s15, #-2.000000e+00
  307872: ee67 7a27    	vmul.f32	s15, s14, s15
  307876: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  30787a: ab36         	add	r3, sp, #0xd8
  30787c: 4618         	mov	r0, r3
  30787e: ed9f 0b58    	vldr	d0, [pc, #352]          @ 0x3079e0 <ControlsLayer::init()+0x1578>
  307882: eeb0 1b47    	vmov.f64	d1, d7
  307886: f7fd feb1    	bl	0x3055ec <ConfigLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x13ec> @ imm = #-0x229e
  30788a: ed9d 8b36    	vldr	d8, [sp, #216]
  30788e: 9b03         	ldr	r3, [sp, #0xc]
  307890: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  307894: 681b         	ldr	r3, [r3]
  307896: f503 73fe    	add.w	r3, r3, #0x1fc
  30789a: 681b         	ldr	r3, [r3]
  30789c: 9a03         	ldr	r2, [sp, #0xc]
  30789e: f8d2 2140    	ldr.w	r2, [r2, #0x140]
  3078a2: 4610         	mov	r0, r2
  3078a4: 4798         	blx	r3
  3078a6: 4606         	mov	r6, r0
  3078a8: ab04         	add	r3, sp, #0x10
  3078aa: 4618         	mov	r0, r3
  3078ac: f082 f5a2    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x482b44
  3078b0: aa05         	add	r2, sp, #0x14
  3078b2: ab04         	add	r3, sp, #0x10
  3078b4: 4610         	mov	r0, r2
  3078b6: 4631         	mov	r1, r6
  3078b8: 461a         	mov	r2, r3
  3078ba: f0af f0d1    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4af1a2
  3078be: ab05         	add	r3, sp, #0x14
  3078c0: 4618         	mov	r0, r3
  3078c2: f0ad f3cb    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x4ad796
  3078c6: 4603         	mov	r3, r0
  3078c8: ee07 3a90    	vmov	s15, r3
  3078cc: eeb8 7a67    	vcvt.f32.u32	s14, s15
  3078d0: eddd 7a07    	vldr	s15, [sp, #28]
  3078d4: ee27 7a27    	vmul.f32	s14, s14, s15
  3078d8: eddd 7a08    	vldr	s15, [sp, #32]
  3078dc: ee27 7a27    	vmul.f32	s14, s14, s15
  3078e0: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3078e4: eec7 7a27    	vdiv.f32	s15, s14, s15
  3078e8: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3078ec: ee38 7b47    	vsub.f64	d7, d8, d7
  3078f0: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3078f4: ed9d 7a06    	vldr	s14, [sp, #24]
  3078f8: eef8 7a00    	vmov.f32	s15, #-2.000000e+00
  3078fc: ee67 7a27    	vmul.f32	s15, s14, s15
  307900: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  307904: ab3a         	add	r3, sp, #0xe8
  307906: 4618         	mov	r0, r3
  307908: ed9f 0b35    	vldr	d0, [pc, #212]          @ 0x3079e0 <ControlsLayer::init()+0x1578>
  30790c: eeb0 1b47    	vmov.f64	d1, d7
  307910: f7fd fe6c    	bl	0x3055ec <ConfigLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x13ec> @ imm = #-0x2328
  307914: ed9d 7b3c    	vldr	d7, [sp, #240]
  307918: eef7 7bc7    	vcvt.f32.f64	s15, d7
  30791c: ab24         	add	r3, sp, #0x90
  30791e: 4618         	mov	r0, r3
  307920: ee18 1a10    	vmov	r1, s16
  307924: ee17 2a90    	vmov	r2, s15
  307928: f28b f9e2    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x28b3c4
  30792c: a926         	add	r1, sp, #0x98
  30792e: aa22         	add	r2, sp, #0x88
  307930: ab24         	add	r3, sp, #0x90
  307932: 4608         	mov	r0, r1
  307934: 4611         	mov	r1, r2
  307936: 461a         	mov	r2, r3
  307938: f7fd fe48    	bl	0x3055cc <ConfigLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x13cc> @ imm = #-0x2370
  30793c: ab26         	add	r3, sp, #0x98
  30793e: 4628         	mov	r0, r5
  307940: 4619         	mov	r1, r3
  307942: 47a0         	blx	r4
  307944: ab05         	add	r3, sp, #0x14
  307946: 4618         	mov	r0, r3
  307948: f0ad f7e4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4adfc8
  30794c: ab04         	add	r3, sp, #0x10
  30794e: 4618         	mov	r0, r3
  307950: f082 f554    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x482aa8
  307954: 9b03         	ldr	r3, [sp, #0xc]
  307956: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  30795a: eddd 7a07    	vldr	s15, [sp, #28]
  30795e: eefd 7ae7    	vcvt.s32.f32	s15, s15
  307962: ee17 2a90    	vmov	r2, s15
  307966: 4618         	mov	r0, r3
  307968: 4611         	mov	r1, r2
  30796a: f29e fa0b    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x29e416
  30796e: 9b03         	ldr	r3, [sp, #0xc]
  307970: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  307974: 681b         	ldr	r3, [r3]
  307976: 3340         	adds	r3, #0x40
  307978: 681b         	ldr	r3, [r3]
  30797a: 9a03         	ldr	r2, [sp, #0xc]
  30797c: f8d2 2140    	ldr.w	r2, [r2, #0x140]
  307980: 4610         	mov	r0, r2
  307982: 9908         	ldr	r1, [sp, #0x20]
  307984: 4798         	blx	r3
  307986: 9b03         	ldr	r3, [sp, #0xc]
  307988: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  30798c: 681b         	ldr	r3, [r3]
  30798e: 337c         	adds	r3, #0x7c
  307990: 681c         	ldr	r4, [r3]
  307992: 9b03         	ldr	r3, [sp, #0xc]
  307994: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  307998: 461d         	mov	r5, r3
  30799a: eddd 7a08    	vldr	s15, [sp, #32]
  30799e: eef1 7a67    	vneg.f32	s15, s15
  3079a2: ee17 2a90    	vmov	r2, s15
  3079a6: ab3a         	add	r3, sp, #0xe8
  3079a8: 4618         	mov	r0, r3
  3079aa: 4611         	mov	r1, r2
  3079ac: f04f 0200    	mov.w	r2, #0x0
  3079b0: f28b f99e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x28b33c
  3079b4: ab3a         	add	r3, sp, #0xe8
  3079b6: 4628         	mov	r0, r5
  3079b8: 4619         	mov	r1, r3
  3079ba: 47a0         	blx	r4
  3079bc: 9b03         	ldr	r3, [sp, #0xc]
  3079be: 681b         	ldr	r3, [r3]
  3079c0: 33c8         	adds	r3, #0xc8
  3079c2: 681b         	ldr	r3, [r3]
  3079c4: 9903         	ldr	r1, [sp, #0xc]
  3079c6: 9a03         	ldr	r2, [sp, #0xc]
  3079c8: f8d2 2140    	ldr.w	r2, [r2, #0x140]
  3079cc: 4608         	mov	r0, r1
  3079ce: 4611         	mov	r1, r2
  3079d0: 4798         	blx	r3
  3079d2: 9803         	ldr	r0, [sp, #0xc]
  3079d4: f000 f900    	bl	0x307bd8 <ControlsLayer::updateLabels()> @ imm = #0x200
  3079d8: 2301         	movs	r3, #0x1
  3079da: e04b         	b	0x307a74 <ControlsLayer::init()+0x160c> @ imm = #0x96
  3079dc: f3af 8000    	nop.w
  3079e8: 88d4         	ldrh	r4, [r2, #0x6]
  3079ea: 0063         	lsls	r3, r4, #0x1
  3079ec: e1e8         	b	0x307dc0 <ControlsLayer::updateLabels()+0x1e8> @ imm = #0x3d0
  3079ee: 004b         	lsls	r3, r1, #0x1
  3079f0: ab2e         	add	r3, sp, #0xb8
  3079f2: 4618         	mov	r0, r3
  3079f4: f0ad f78e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4adf1c
  3079f8: e7ff         	b	0x3079fa <ControlsLayer::init()+0x1592> @ imm = #-0x2
  3079fa: ab2c         	add	r3, sp, #0xb0
  3079fc: 4618         	mov	r0, r3
  3079fe: f082 f4fd    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4829fa
  307a02: f080 f353    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4806a6
  307a06: ab2e         	add	r3, sp, #0xb8
  307a08: 4618         	mov	r0, r3
  307a0a: f0ad f783    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4adf06
  307a0e: e7ff         	b	0x307a10 <ControlsLayer::init()+0x15a8> @ imm = #-0x2
  307a10: ab2c         	add	r3, sp, #0xb0
  307a12: 4618         	mov	r0, r3
  307a14: f082 f4f2    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4829e4
  307a18: f080 f348    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x480690
  307a1c: ab32         	add	r3, sp, #0xc8
  307a1e: 4618         	mov	r0, r3
  307a20: f0ad f778    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4adef0
  307a24: e7ff         	b	0x307a26 <ControlsLayer::init()+0x15be> @ imm = #-0x2
  307a26: ab26         	add	r3, sp, #0x98
  307a28: 4618         	mov	r0, r3
  307a2a: f082 f4e7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4829ce
  307a2e: f080 f33d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48067a
  307a32: ab24         	add	r3, sp, #0x90
  307a34: 4618         	mov	r0, r3
  307a36: f0ad f76d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4adeda
  307a3a: e7ff         	b	0x307a3c <ControlsLayer::init()+0x15d4> @ imm = #-0x2
  307a3c: ab22         	add	r3, sp, #0x88
  307a3e: 4618         	mov	r0, r3
  307a40: f082 f4dc    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4829b8
  307a44: f080 f332    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x480664
  307a48: ab05         	add	r3, sp, #0x14
  307a4a: 4618         	mov	r0, r3
  307a4c: f0ad f762    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4adec4
  307a50: e7ff         	b	0x307a52 <ControlsLayer::init()+0x15ea> @ imm = #-0x2
  307a52: ab04         	add	r3, sp, #0x10
  307a54: 4618         	mov	r0, r3
  307a56: f082 f4d1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4829a2
  307a5a: f080 f327    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48064e
  307a5e: ab05         	add	r3, sp, #0x14
  307a60: 4618         	mov	r0, r3
  307a62: f0ad f757    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4adeae
  307a66: e7ff         	b	0x307a68 <ControlsLayer::init()+0x1600> @ imm = #-0x2
  307a68: ab04         	add	r3, sp, #0x10
  307a6a: 4618         	mov	r0, r3
  307a6c: f082 f4c6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x48298c
  307a70: f080 f31c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x480638
  307a74: 4618         	mov	r0, r3
  307a76: b03f         	add	sp, #0xfc
  307a78: ecbd 8b02    	vpop	{d8}
  307a7c: bdf0         	pop	{r4, r5, r6, r7, pc}

// ==== ControlsLayer::~ControlsLayer
//      file offset 0x307a80 (= ELF address; Ghidra 0x317a80), 300 bytes, Thumb-2
  307a80: b500         	push	{lr}
  307a82: b083         	sub	sp, #0xc
  307a84: 9001         	str	r0, [sp, #0x4]
  307a86: 4b47         	ldr	r3, [pc, #0x11c]        @ 0x307ba4 <ControlsLayer::~ControlsLayer()+0x124>
  307a88: 447b         	add	r3, pc
  307a8a: 9a01         	ldr	r2, [sp, #0x4]
  307a8c: 4946         	ldr	r1, [pc, #0x118]        @ 0x307ba8 <ControlsLayer::~ControlsLayer()+0x128>
  307a8e: 5859         	ldr	r1, [r3, r1]
  307a90: 3108         	adds	r1, #0x8
  307a92: 6011         	str	r1, [r2]
  307a94: 9a01         	ldr	r2, [sp, #0x4]
  307a96: 4944         	ldr	r1, [pc, #0x110]        @ 0x307ba8 <ControlsLayer::~ControlsLayer()+0x128>
  307a98: 5859         	ldr	r1, [r3, r1]
  307a9a: f501 7104    	add.w	r1, r1, #0x210
  307a9e: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  307aa2: 9a01         	ldr	r2, [sp, #0x4]
  307aa4: 4940         	ldr	r1, [pc, #0x100]        @ 0x307ba8 <ControlsLayer::~ControlsLayer()+0x128>
  307aa6: 5859         	ldr	r1, [r3, r1]
  307aa8: f501 7110    	add.w	r1, r1, #0x240
  307aac: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  307ab0: 9a01         	ldr	r2, [sp, #0x4]
  307ab2: 493d         	ldr	r1, [pc, #0xf4]         @ 0x307ba8 <ControlsLayer::~ControlsLayer()+0x128>
  307ab4: 585b         	ldr	r3, [r3, r1]
  307ab6: f503 7313    	add.w	r3, r3, #0x24c
  307aba: f8c2 30ec    	str.w	r3, [r2, #0xec]
  307abe: 9b01         	ldr	r3, [sp, #0x4]
  307ac0: 4618         	mov	r0, r3
  307ac2: f288 fdb3    	bl	0x59062c <cocos2d::CCNode::removeAllChildren()> @ imm = #0x288b66
  307ac6: 9b01         	ldr	r3, [sp, #0x4]
  307ac8: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  307acc: 4618         	mov	r0, r3
  307ace: f290 f9f3    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2903e6
  307ad2: 9b01         	ldr	r3, [sp, #0x4]
  307ad4: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  307ad8: 4618         	mov	r0, r3
  307ada: f290 f9ed    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2903da
  307ade: 9b01         	ldr	r3, [sp, #0x4]
  307ae0: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  307ae4: 4618         	mov	r0, r3
  307ae6: f290 f9e7    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2903ce
  307aea: 9b01         	ldr	r3, [sp, #0x4]
  307aec: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  307af0: 4618         	mov	r0, r3
  307af2: f290 f9e1    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2903c2
  307af6: 9b01         	ldr	r3, [sp, #0x4]
  307af8: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  307afc: 4618         	mov	r0, r3
  307afe: f290 f9db    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2903b6
  307b02: 9b01         	ldr	r3, [sp, #0x4]
  307b04: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  307b08: 4618         	mov	r0, r3
  307b0a: f290 f9d5    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2903aa
  307b0e: 9b01         	ldr	r3, [sp, #0x4]
  307b10: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  307b14: 4618         	mov	r0, r3
  307b16: f290 f9cf    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x29039e
  307b1a: 9b01         	ldr	r3, [sp, #0x4]
  307b1c: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  307b20: 4618         	mov	r0, r3
  307b22: f290 f9c9    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x290392
  307b26: 9b01         	ldr	r3, [sp, #0x4]
  307b28: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  307b2c: 4618         	mov	r0, r3
  307b2e: f290 f9c3    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x290386
  307b32: 9b01         	ldr	r3, [sp, #0x4]
  307b34: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  307b38: 4618         	mov	r0, r3
  307b3a: f290 f9bd    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x29037a
  307b3e: 9b01         	ldr	r3, [sp, #0x4]
  307b40: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  307b44: 4618         	mov	r0, r3
  307b46: f290 f9b7    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x29036e
  307b4a: 9b01         	ldr	r3, [sp, #0x4]
  307b4c: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  307b50: 4618         	mov	r0, r3
  307b52: f290 f9b1    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x290362
  307b56: 9b01         	ldr	r3, [sp, #0x4]
  307b58: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  307b5c: 4618         	mov	r0, r3
  307b5e: f290 f9ab    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x290356
  307b62: 9b01         	ldr	r3, [sp, #0x4]
  307b64: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  307b68: 4618         	mov	r0, r3
  307b6a: f290 f9a5    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x29034a
  307b6e: 9b01         	ldr	r3, [sp, #0x4]
  307b70: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  307b74: 4618         	mov	r0, r3
  307b76: f290 f99f    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x29033e
  307b7a: 9b01         	ldr	r3, [sp, #0x4]
  307b7c: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  307b80: 4618         	mov	r0, r3
  307b82: f290 f999    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x290332
  307b86: 9b01         	ldr	r3, [sp, #0x4]
  307b88: 4618         	mov	r0, r3
  307b8a: f2a5 fadf    	bl	0x5ad14c <cocos2d::CCLayer::~CCLayer()> @ imm = #0x2a55be
  307b8e: 2300         	movs	r3, #0x0
  307b90: 2b00         	cmp	r3, #0x0
  307b92: d002         	beq	0x307b9a <ControlsLayer::~ControlsLayer()+0x11a> @ imm = #0x4
  307b94: 9801         	ldr	r0, [sp, #0x4]
  307b96: f080 f285    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48050a
  307b9a: 9b01         	ldr	r3, [sp, #0x4]
  307b9c: 4618         	mov	r0, r3
  307b9e: b003         	add	sp, #0xc
  307ba0: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x307ba3); words below are literal-pool data ---
  307ba4: af80         	add	r7, sp, #0x200
  307ba6: 0062         	lsls	r2, r4, #0x1
  307ba8: d95c         	bls	0x307c64 <ControlsLayer::updateLabels()+0x8c> @ imm = #0xb8
  307baa: ffff f1a0    	<unknown>

// ==== ControlsLayer::~ControlsLayer
//      file offset 0x307bac (= ELF address; Ghidra 0x317bac), 8 bytes, Thumb-2
  307bac: f1a0 00e4    	sub.w	r0, r0, #0xe4
  307bb0: f7ff bf66    	b.w	0x307a80 <ControlsLayer::~ControlsLayer()> @ imm = #-0x134

// ==== ControlsLayer::~ControlsLayer
//      file offset 0x307bb4 (= ELF address; Ghidra 0x317bb4), 28 bytes, Thumb-2
  307bb4: b500         	push	{lr}
  307bb6: b083         	sub	sp, #0xc
  307bb8: 9001         	str	r0, [sp, #0x4]
  307bba: 9801         	ldr	r0, [sp, #0x4]
  307bbc: f7ff ff60    	bl	0x307a80 <ControlsLayer::~ControlsLayer()> @ imm = #-0x140
  307bc0: 9801         	ldr	r0, [sp, #0x4]
  307bc2: f080 f26f    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4804de
  307bc6: 9b01         	ldr	r3, [sp, #0x4]
  307bc8: 4618         	mov	r0, r3
  307bca: b003         	add	sp, #0xc
  307bcc: f85d fb04    	ldr	pc, [sp], #4

// ==== ControlsLayer::~ControlsLayer
//      file offset 0x307bd0 (= ELF address; Ghidra 0x317bd0), 8 bytes, Thumb-2
  307bd0: f1a0 00e4    	sub.w	r0, r0, #0xe4
  307bd4: f7ff bfee    	b.w	0x307bb4 <ControlsLayer::~ControlsLayer()> @ imm = #-0x24

// ==== ControlsLayer::updateLabels
//      file offset 0x307bd8 (= ELF address; Ghidra 0x317bd8), 2472 bytes, Thumb-2
  307bd8: b570         	push	{r4, r5, r6, lr}
  307bda: ed2d 8b02    	vpush	{d8}
  307bde: b0a4         	sub	sp, #0x90
  307be0: 9001         	str	r0, [sp, #0x4]
  307be2: 4aad         	ldr	r2, [pc, #0x2b4]        @ 0x307e98 <ControlsLayer::updateLabels()+0x2c0>
  307be4: 447a         	add	r2, pc
  307be6: f04f 4341    	mov.w	r3, #0xc1000000
  307bea: 930a         	str	r3, [sp, #0x28]
  307bec: f04f 0300    	mov.w	r3, #0x0
  307bf0: f2c4 13c0    	movt	r3, #0x41c0
  307bf4: 930b         	str	r3, [sp, #0x2c]
  307bf6: f64c 43cd    	movw	r3, #0xcccd
  307bfa: f6c3 730c    	movt	r3, #0x3f0c
  307bfe: 930c         	str	r3, [sp, #0x30]
  307c00: ab10         	add	r3, sp, #0x40
  307c02: 4618         	mov	r0, r3
  307c04: 4ba5         	ldr	r3, [pc, #0x294]        @ 0x307e9c <ControlsLayer::updateLabels()+0x2c4>
  307c06: 58d3         	ldr	r3, [r2, r3]
  307c08: 4619         	mov	r1, r3
  307c0a: f28b fa51    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x28b4a2
  307c0e: ed9d 7a10    	vldr	s14, [sp, #64]
  307c12: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  307c16: eec7 7a27    	vdiv.f32	s15, s14, s15
  307c1a: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  307c1e: ed9d 7a11    	vldr	s14, [sp, #68]
  307c22: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  307c26: eec7 7a27    	vdiv.f32	s15, s14, s15
  307c2a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  307c2e: ab18         	add	r3, sp, #0x60
  307c30: 4618         	mov	r0, r3
  307c32: eeb0 0b46    	vmov.f64	d0, d6
  307c36: eeb0 1b47    	vmov.f64	d1, d7
  307c3a: f7fd fcd7    	bl	0x3055ec <ConfigLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x13ec> @ imm = #-0x2652
  307c3e: f2da fcf5    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2da9ea
  307c42: 4603         	mov	r3, r0
  307c44: 4618         	mov	r0, r3
  307c46: 4b96         	ldr	r3, [pc, #0x258]        @ 0x307ea0 <ControlsLayer::updateLabels()+0x2c8>
  307c48: 447b         	add	r3, pc
  307c4a: 4619         	mov	r1, r3
  307c4c: 2200         	movs	r2, #0x0
  307c4e: f2da faeb    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x2da5d6
  307c52: 4603         	mov	r3, r0
  307c54: 930d         	str	r3, [sp, #0x34]
  307c56: 9b0d         	ldr	r3, [sp, #0x34]
  307c58: 2b00         	cmp	r3, #0x0
  307c5a: d11e         	bne	0x307c9a <ControlsLayer::updateLabels()+0xc2> @ imm = #0x3c
  307c5c: 9b01         	ldr	r3, [sp, #0x4]
  307c5e: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  307c62: 681b         	ldr	r3, [r3]
  307c64: f503 73fc    	add.w	r3, r3, #0x1f8
  307c68: 681b         	ldr	r3, [r3]
  307c6a: 9a01         	ldr	r2, [sp, #0x4]
  307c6c: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  307c70: 4610         	mov	r0, r2
  307c72: 4a8c         	ldr	r2, [pc, #0x230]        @ 0x307ea4 <ControlsLayer::updateLabels()+0x2cc>
  307c74: 447a         	add	r2, pc
  307c76: 4611         	mov	r1, r2
  307c78: 4798         	blx	r3
  307c7a: 9b01         	ldr	r3, [sp, #0x4]
  307c7c: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  307c80: 681b         	ldr	r3, [r3]
  307c82: f503 73fc    	add.w	r3, r3, #0x1f8
  307c86: 681b         	ldr	r3, [r3]
  307c88: 9a01         	ldr	r2, [sp, #0x4]
  307c8a: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  307c8e: 4610         	mov	r0, r2
  307c90: 4a85         	ldr	r2, [pc, #0x214]        @ 0x307ea8 <ControlsLayer::updateLabels()+0x2d0>
  307c92: 447a         	add	r2, pc
  307c94: 4611         	mov	r1, r2
  307c96: 4798         	blx	r3
  307c98: e01d         	b	0x307cd6 <ControlsLayer::updateLabels()+0xfe> @ imm = #0x3a
  307c9a: 9b01         	ldr	r3, [sp, #0x4]
  307c9c: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  307ca0: 681b         	ldr	r3, [r3]
  307ca2: f503 73fc    	add.w	r3, r3, #0x1f8
  307ca6: 681b         	ldr	r3, [r3]
  307ca8: 9a01         	ldr	r2, [sp, #0x4]
  307caa: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  307cae: 4610         	mov	r0, r2
  307cb0: 4a7e         	ldr	r2, [pc, #0x1f8]        @ 0x307eac <ControlsLayer::updateLabels()+0x2d4>
  307cb2: 447a         	add	r2, pc
  307cb4: 4611         	mov	r1, r2
  307cb6: 4798         	blx	r3
  307cb8: 9b01         	ldr	r3, [sp, #0x4]
  307cba: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  307cbe: 681b         	ldr	r3, [r3]
  307cc0: f503 73fc    	add.w	r3, r3, #0x1f8
  307cc4: 681b         	ldr	r3, [r3]
  307cc6: 9a01         	ldr	r2, [sp, #0x4]
  307cc8: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  307ccc: 4610         	mov	r0, r2
  307cce: 4a78         	ldr	r2, [pc, #0x1e0]        @ 0x307eb0 <ControlsLayer::updateLabels()+0x2d8>
  307cd0: 447a         	add	r2, pc
  307cd2: 4611         	mov	r1, r2
  307cd4: 4798         	blx	r3
  307cd6: ab20         	add	r3, sp, #0x80
  307cd8: 4618         	mov	r0, r3
  307cda: f082 f38b    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x482716
  307cde: aa03         	add	r2, sp, #0xc
  307ce0: ab20         	add	r3, sp, #0x80
  307ce2: 4610         	mov	r0, r2
  307ce4: 4a73         	ldr	r2, [pc, #0x1cc]        @ 0x307eb4 <ControlsLayer::updateLabels()+0x2dc>
  307ce6: 447a         	add	r2, pc
  307ce8: 4611         	mov	r1, r2
  307cea: 461a         	mov	r2, r3
  307cec: f0ae f6b8    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4aed70
  307cf0: ab20         	add	r3, sp, #0x80
  307cf2: 4618         	mov	r0, r3
  307cf4: f082 f382    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x482704
  307cf8: ab20         	add	r3, sp, #0x80
  307cfa: 4618         	mov	r0, r3
  307cfc: f082 f37a    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4826f4
  307d00: aa04         	add	r2, sp, #0x10
  307d02: ab20         	add	r3, sp, #0x80
  307d04: 4610         	mov	r0, r2
  307d06: 4a6c         	ldr	r2, [pc, #0x1b0]        @ 0x307eb8 <ControlsLayer::updateLabels()+0x2e0>
  307d08: 447a         	add	r2, pc
  307d0a: 4611         	mov	r1, r2
  307d0c: 461a         	mov	r2, r3
  307d0e: f0ae f6a7    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4aed4e
  307d12: ab20         	add	r3, sp, #0x80
  307d14: 4618         	mov	r0, r3
  307d16: f082 f371    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4826e2
  307d1a: ab20         	add	r3, sp, #0x80
  307d1c: 4618         	mov	r0, r3
  307d1e: f082 f369    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4826d2
  307d22: aa05         	add	r2, sp, #0x14
  307d24: ab20         	add	r3, sp, #0x80
  307d26: 4610         	mov	r0, r2
  307d28: 4a64         	ldr	r2, [pc, #0x190]        @ 0x307ebc <ControlsLayer::updateLabels()+0x2e4>
  307d2a: 447a         	add	r2, pc
  307d2c: 4611         	mov	r1, r2
  307d2e: 461a         	mov	r2, r3
  307d30: f0ae f696    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4aed2c
  307d34: ab20         	add	r3, sp, #0x80
  307d36: 4618         	mov	r0, r3
  307d38: f082 f360    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4826c0
  307d3c: ab20         	add	r3, sp, #0x80
  307d3e: 4618         	mov	r0, r3
  307d40: f082 f358    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4826b0
  307d44: aa06         	add	r2, sp, #0x18
  307d46: ab20         	add	r3, sp, #0x80
  307d48: 4610         	mov	r0, r2
  307d4a: 4a5d         	ldr	r2, [pc, #0x174]        @ 0x307ec0 <ControlsLayer::updateLabels()+0x2e8>
  307d4c: 447a         	add	r2, pc
  307d4e: 4611         	mov	r1, r2
  307d50: 461a         	mov	r2, r3
  307d52: f0ae f685    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4aed0a
  307d56: ab20         	add	r3, sp, #0x80
  307d58: 4618         	mov	r0, r3
  307d5a: f082 f34f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x48269e
  307d5e: 9b0d         	ldr	r3, [sp, #0x34]
  307d60: 2b01         	cmp	r3, #0x1
  307d62: d11b         	bne	0x307d9c <ControlsLayer::updateLabels()+0x1c4> @ imm = #0x36
  307d64: ab03         	add	r3, sp, #0xc
  307d66: 4618         	mov	r0, r3
  307d68: 4b56         	ldr	r3, [pc, #0x158]        @ 0x307ec4 <ControlsLayer::updateLabels()+0x2ec>
  307d6a: 447b         	add	r3, pc
  307d6c: 4619         	mov	r1, r3
  307d6e: f0ae f07f    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4ae0fe
  307d72: ab04         	add	r3, sp, #0x10
  307d74: 4618         	mov	r0, r3
  307d76: 4b54         	ldr	r3, [pc, #0x150]        @ 0x307ec8 <ControlsLayer::updateLabels()+0x2f0>
  307d78: 447b         	add	r3, pc
  307d7a: 4619         	mov	r1, r3
  307d7c: f0ae f078    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4ae0f0
  307d80: ab05         	add	r3, sp, #0x14
  307d82: 4618         	mov	r0, r3
  307d84: 4b51         	ldr	r3, [pc, #0x144]        @ 0x307ecc <ControlsLayer::updateLabels()+0x2f4>
  307d86: 447b         	add	r3, pc
  307d88: 4619         	mov	r1, r3
  307d8a: f0ae f071    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4ae0e2
  307d8e: ab06         	add	r3, sp, #0x18
  307d90: 4618         	mov	r0, r3
  307d92: 4b4f         	ldr	r3, [pc, #0x13c]        @ 0x307ed0 <ControlsLayer::updateLabels()+0x2f8>
  307d94: 447b         	add	r3, pc
  307d96: 4619         	mov	r1, r3
  307d98: f0ae f06a    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4ae0d4
  307d9c: f2da fc46    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2da88c
  307da0: 4604         	mov	r4, r0
  307da2: ab05         	add	r3, sp, #0x14
  307da4: 4618         	mov	r0, r3
  307da6: f0ad f2ab    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4ad556
  307daa: 4603         	mov	r3, r0
  307dac: 4620         	mov	r0, r4
  307dae: 4619         	mov	r1, r3
  307db0: 2200         	movs	r2, #0x0
  307db2: f2da fa39    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x2da472
  307db6: 4603         	mov	r3, r0
  307db8: 930e         	str	r3, [sp, #0x38]
  307dba: f2da fc37    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2da86e
  307dbe: 4604         	mov	r4, r0
  307dc0: ab06         	add	r3, sp, #0x18
  307dc2: 4618         	mov	r0, r3
  307dc4: f0ad f29c    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4ad538
  307dc8: 4603         	mov	r3, r0
  307dca: 4620         	mov	r0, r4
  307dcc: 4619         	mov	r1, r3
  307dce: 2200         	movs	r2, #0x0
  307dd0: f2da fa2a    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x2da454
  307dd4: 4603         	mov	r3, r0
  307dd6: 930f         	str	r3, [sp, #0x3c]
  307dd8: ab20         	add	r3, sp, #0x80
  307dda: 4618         	mov	r0, r3
  307ddc: f082 f30a    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x482614
  307de0: aa07         	add	r2, sp, #0x1c
  307de2: ab20         	add	r3, sp, #0x80
  307de4: 4610         	mov	r0, r2
  307de6: 4a3b         	ldr	r2, [pc, #0xec]         @ 0x307ed4 <ControlsLayer::updateLabels()+0x2fc>
  307de8: 447a         	add	r2, pc
  307dea: 4611         	mov	r1, r2
  307dec: 461a         	mov	r2, r3
  307dee: f0ae f637    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4aec6e
  307df2: ab20         	add	r3, sp, #0x80
  307df4: 4618         	mov	r0, r3
  307df6: f082 f301    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x482602
  307dfa: 9b0e         	ldr	r3, [sp, #0x38]
  307dfc: 2b01         	cmp	r3, #0x1
  307dfe: d107         	bne	0x307e10 <ControlsLayer::updateLabels()+0x238> @ imm = #0xe
  307e00: ab07         	add	r3, sp, #0x1c
  307e02: 4618         	mov	r0, r3
  307e04: 4b34         	ldr	r3, [pc, #0xd0]         @ 0x307ed8 <ControlsLayer::updateLabels()+0x300>
  307e06: 447b         	add	r3, pc
  307e08: 4619         	mov	r1, r3
  307e0a: f0ae f031    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4ae062
  307e0e: e014         	b	0x307e3a <ControlsLayer::updateLabels()+0x262> @ imm = #0x28
  307e10: 9b0e         	ldr	r3, [sp, #0x38]
  307e12: 2b02         	cmp	r3, #0x2
  307e14: d107         	bne	0x307e26 <ControlsLayer::updateLabels()+0x24e> @ imm = #0xe
  307e16: ab07         	add	r3, sp, #0x1c
  307e18: 4618         	mov	r0, r3
  307e1a: 4b30         	ldr	r3, [pc, #0xc0]         @ 0x307edc <ControlsLayer::updateLabels()+0x304>
  307e1c: 447b         	add	r3, pc
  307e1e: 4619         	mov	r1, r3
  307e20: f0ae f026    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4ae04c
  307e24: e009         	b	0x307e3a <ControlsLayer::updateLabels()+0x262> @ imm = #0x12
  307e26: 9b0e         	ldr	r3, [sp, #0x38]
  307e28: 2b03         	cmp	r3, #0x3
  307e2a: d106         	bne	0x307e3a <ControlsLayer::updateLabels()+0x262> @ imm = #0xc
  307e2c: ab07         	add	r3, sp, #0x1c
  307e2e: 4618         	mov	r0, r3
  307e30: 4b2b         	ldr	r3, [pc, #0xac]         @ 0x307ee0 <ControlsLayer::updateLabels()+0x308>
  307e32: 447b         	add	r3, pc
  307e34: 4619         	mov	r1, r3
  307e36: f0ae f01b    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4ae036
  307e3a: 9b01         	ldr	r3, [sp, #0x4]
  307e3c: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  307e40: 681b         	ldr	r3, [r3]
  307e42: f503 73fc    	add.w	r3, r3, #0x1f8
  307e46: 681c         	ldr	r4, [r3]
  307e48: 9b01         	ldr	r3, [sp, #0x4]
  307e4a: f8d3 512c    	ldr.w	r5, [r3, #0x12c]
  307e4e: ab07         	add	r3, sp, #0x1c
  307e50: 4618         	mov	r0, r3
  307e52: f0ad f255    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4ad4aa
  307e56: 4603         	mov	r3, r0
  307e58: 4628         	mov	r0, r5
  307e5a: 4619         	mov	r1, r3
  307e5c: 47a0         	blx	r4
  307e5e: ab07         	add	r3, sp, #0x1c
  307e60: 4618         	mov	r0, r3
  307e62: 4b20         	ldr	r3, [pc, #0x80]         @ 0x307ee4 <ControlsLayer::updateLabels()+0x30c>
  307e64: 447b         	add	r3, pc
  307e66: 4619         	mov	r1, r3
  307e68: f0ae f002    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4ae004
  307e6c: 9b0f         	ldr	r3, [sp, #0x3c]
  307e6e: 2b01         	cmp	r3, #0x1
  307e70: d107         	bne	0x307e82 <ControlsLayer::updateLabels()+0x2aa> @ imm = #0xe
  307e72: ab07         	add	r3, sp, #0x1c
  307e74: 4618         	mov	r0, r3
  307e76: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x307ee8 <ControlsLayer::updateLabels()+0x310>
  307e78: 447b         	add	r3, pc
  307e7a: 4619         	mov	r1, r3
  307e7c: f0ad f7f8    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4adff0
  307e80: e040         	b	0x307f04 <ControlsLayer::updateLabels()+0x32c> @ imm = #0x80
  307e82: 9b0f         	ldr	r3, [sp, #0x3c]
  307e84: 2b02         	cmp	r3, #0x2
  307e86: d133         	bne	0x307ef0 <ControlsLayer::updateLabels()+0x318> @ imm = #0x66
  307e88: ab07         	add	r3, sp, #0x1c
  307e8a: 4618         	mov	r0, r3
  307e8c: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x307eec <ControlsLayer::updateLabels()+0x314>
  307e8e: 447b         	add	r3, pc
  307e90: 4619         	mov	r1, r3
  307e92: f0ad f7ed    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4adfda
  307e96: e035         	b	0x307f04 <ControlsLayer::updateLabels()+0x32c> @ imm = #0x6a
  307e98: ae24         	add	r6, sp, #0x90
  307e9a: 0062         	lsls	r2, r4, #0x1
  307e9c: d724         	bvc	0x307ee8 <ControlsLayer::updateLabels()+0x310> @ imm = #0x48
  307e9e: ffff dd9c    	<unknown>
  307ea2: 004b         	lsls	r3, r1, #0x1
  307ea4: dcf4         	bgt	0x307e90 <ControlsLayer::updateLabels()+0x2b8> @ imm = #-0x18
  307ea6: 004b         	lsls	r3, r1, #0x1
  307ea8: dce2         	bgt	0x307e70 <ControlsLayer::updateLabels()+0x298> @ imm = #-0x3c
  307eaa: 004b         	lsls	r3, r1, #0x1
  307eac: dcc2         	bgt	0x307e34 <ControlsLayer::updateLabels()+0x25c> @ imm = #-0x7c
  307eae: 004b         	lsls	r3, r1, #0x1
  307eb0: dc98         	bgt	0x307de4 <ControlsLayer::updateLabels()+0x20c> @ imm = #-0xd0
  307eb2: 004b         	lsls	r3, r1, #0x1
  307eb4: dd0a         	ble	0x307ecc <ControlsLayer::updateLabels()+0x2f4> @ imm = #0x14
  307eb6: 004b         	lsls	r3, r1, #0x1
  307eb8: dcf8         	bgt	0x307eac <ControlsLayer::updateLabels()+0x2d4> @ imm = #-0x10
  307eba: 004b         	lsls	r3, r1, #0x1
  307ebc: dce6         	bgt	0x307e8c <ControlsLayer::updateLabels()+0x2b4> @ imm = #-0x34
  307ebe: 004b         	lsls	r3, r1, #0x1
  307ec0: dcd4         	bgt	0x307e6c <ControlsLayer::updateLabels()+0x294> @ imm = #-0x58
  307ec2: 004b         	lsls	r3, r1, #0x1
  307ec4: dc96         	bgt	0x307df4 <ControlsLayer::updateLabels()+0x21c> @ imm = #-0xd4
  307ec6: 004b         	lsls	r3, r1, #0x1
  307ec8: dc78         	bgt	0x307fbc <ControlsLayer::updateLabels()+0x3e4> @ imm = #0xf0
  307eca: 004b         	lsls	r3, r1, #0x1
  307ecc: dc9a         	bgt	0x307e04 <ControlsLayer::updateLabels()+0x22c> @ imm = #-0xcc
  307ece: 004b         	lsls	r3, r1, #0x1
  307ed0: dc7c         	bgt	0x307fcc <ControlsLayer::updateLabels()+0x3f4> @ imm = #0xf8
  307ed2: 004b         	lsls	r3, r1, #0x1
  307ed4: dbec         	blt	0x307eb0 <ControlsLayer::updateLabels()+0x2d8> @ imm = #-0x28
  307ed6: 004b         	lsls	r3, r1, #0x1
  307ed8: dc2a         	bgt	0x307f30 <ControlsLayer::updateLabels()+0x358> @ imm = #0x54
  307eda: 004b         	lsls	r3, r1, #0x1
  307edc: dc18         	bgt	0x307f10 <ControlsLayer::updateLabels()+0x338> @ imm = #0x30
  307ede: 004b         	lsls	r3, r1, #0x1
  307ee0: dc06         	bgt	0x307ef0 <ControlsLayer::updateLabels()+0x318> @ imm = #0xc
  307ee2: 004b         	lsls	r3, r1, #0x1
  307ee4: db70         	blt	0x307fc8 <ControlsLayer::updateLabels()+0x3f0> @ imm = #0xe0
  307ee6: 004b         	lsls	r3, r1, #0x1
  307ee8: dbb8         	blt	0x307e5c <ControlsLayer::updateLabels()+0x284> @ imm = #-0x90
  307eea: 004b         	lsls	r3, r1, #0x1
  307eec: dba6         	blt	0x307e3c <ControlsLayer::updateLabels()+0x264> @ imm = #-0xb4
  307eee: 004b         	lsls	r3, r1, #0x1
  307ef0: 9b0f         	ldr	r3, [sp, #0x3c]
  307ef2: 2b03         	cmp	r3, #0x3
  307ef4: d106         	bne	0x307f04 <ControlsLayer::updateLabels()+0x32c> @ imm = #0xc
  307ef6: ab07         	add	r3, sp, #0x1c
  307ef8: 4618         	mov	r0, r3
  307efa: 4bdf         	ldr	r3, [pc, #0x37c]        @ 0x308278 <ControlsLayer::updateLabels()+0x6a0>
  307efc: 447b         	add	r3, pc
  307efe: 4619         	mov	r1, r3
  307f00: f0ad f7b6    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4adf6c
  307f04: 9b01         	ldr	r3, [sp, #0x4]
  307f06: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  307f0a: 681b         	ldr	r3, [r3]
  307f0c: f503 73fc    	add.w	r3, r3, #0x1f8
  307f10: 681c         	ldr	r4, [r3]
  307f12: 9b01         	ldr	r3, [sp, #0x4]
  307f14: f8d3 513c    	ldr.w	r5, [r3, #0x13c]
  307f18: ab07         	add	r3, sp, #0x1c
  307f1a: 4618         	mov	r0, r3
  307f1c: f0ad f1f0    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4ad3e0
  307f20: 4603         	mov	r3, r0
  307f22: 4628         	mov	r0, r5
  307f24: 4619         	mov	r1, r3
  307f26: 47a0         	blx	r4
  307f28: 9b01         	ldr	r3, [sp, #0x4]
  307f2a: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  307f2e: 681b         	ldr	r3, [r3]
  307f30: 334c         	adds	r3, #0x4c
  307f32: 681c         	ldr	r4, [r3]
  307f34: 9b01         	ldr	r3, [sp, #0x4]
  307f36: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  307f3a: 461d         	mov	r5, r3
  307f3c: 9b01         	ldr	r3, [sp, #0x4]
  307f3e: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  307f42: 681b         	ldr	r3, [r3]
  307f44: 3350         	adds	r3, #0x50
  307f46: 681b         	ldr	r3, [r3]
  307f48: 9a01         	ldr	r2, [sp, #0x4]
  307f4a: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  307f4e: 4610         	mov	r0, r2
  307f50: 4798         	blx	r3
  307f52: 4603         	mov	r3, r0
  307f54: 681e         	ldr	r6, [r3]
  307f56: 9b01         	ldr	r3, [sp, #0x4]
  307f58: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  307f5c: 681b         	ldr	r3, [r3]
  307f5e: 3350         	adds	r3, #0x50
  307f60: 681b         	ldr	r3, [r3]
  307f62: 9a01         	ldr	r2, [sp, #0x4]
  307f64: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  307f68: 4610         	mov	r0, r2
  307f6a: 4798         	blx	r3
  307f6c: 4603         	mov	r3, r0
  307f6e: 685b         	ldr	r3, [r3, #0x4]
  307f70: aa12         	add	r2, sp, #0x48
  307f72: 4610         	mov	r0, r2
  307f74: 4631         	mov	r1, r6
  307f76: 461a         	mov	r2, r3
  307f78: f28a feba    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x28ad74
  307f7c: eddd 7a0a    	vldr	s15, [sp, #40]
  307f80: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  307f84: ab1c         	add	r3, sp, #0x70
  307f86: 4618         	mov	r0, r3
  307f88: ed9f 0bb7    	vldr	d0, [pc, #732]          @ 0x308268 <ControlsLayer::updateLabels()+0x690>
  307f8c: eeb0 1b47    	vmov.f64	d1, d7
  307f90: f7fd fb2c    	bl	0x3055ec <ConfigLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x13ec> @ imm = #-0x29a8
  307f94: ed9d 8b1c    	vldr	d8, [sp, #112]
  307f98: 9b01         	ldr	r3, [sp, #0x4]
  307f9a: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  307f9e: 681b         	ldr	r3, [r3]
  307fa0: f503 73fe    	add.w	r3, r3, #0x1fc
  307fa4: 681b         	ldr	r3, [r3]
  307fa6: 9a01         	ldr	r2, [sp, #0x4]
  307fa8: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  307fac: 4610         	mov	r0, r2
  307fae: 4798         	blx	r3
  307fb0: 4606         	mov	r6, r0
  307fb2: ab09         	add	r3, sp, #0x24
  307fb4: 4618         	mov	r0, r3
  307fb6: f082 f21d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x48243a
  307fba: aa08         	add	r2, sp, #0x20
  307fbc: ab09         	add	r3, sp, #0x24
  307fbe: 4610         	mov	r0, r2
  307fc0: 4631         	mov	r1, r6
  307fc2: 461a         	mov	r2, r3
  307fc4: f0ae f54c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4aea98
  307fc8: ab08         	add	r3, sp, #0x20
  307fca: 4618         	mov	r0, r3
  307fcc: f0ad f046    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x4ad08c
  307fd0: 4603         	mov	r3, r0
  307fd2: ee07 3a90    	vmov	s15, r3
  307fd6: eeb8 7a67    	vcvt.f32.u32	s14, s15
  307fda: eddd 7a0b    	vldr	s15, [sp, #44]
  307fde: ee27 7a27    	vmul.f32	s14, s14, s15
  307fe2: eddd 7a0c    	vldr	s15, [sp, #48]
  307fe6: ee27 7a27    	vmul.f32	s14, s14, s15
  307fea: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  307fee: eec7 7a27    	vdiv.f32	s15, s14, s15
  307ff2: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  307ff6: ee38 7b47    	vsub.f64	d7, d8, d7
  307ffa: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  307ffe: eddd 7a0a    	vldr	s15, [sp, #40]
  308002: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  308006: ab20         	add	r3, sp, #0x80
  308008: 4618         	mov	r0, r3
  30800a: ed9f 0b97    	vldr	d0, [pc, #604]          @ 0x308268 <ControlsLayer::updateLabels()+0x690>
  30800e: eeb0 1b47    	vmov.f64	d1, d7
  308012: f7fd faeb    	bl	0x3055ec <ConfigLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x13ec> @ imm = #-0x2a2a
  308016: ed9d 7b22    	vldr	d7, [sp, #136]
  30801a: eef7 7bc7    	vcvt.f32.f64	s15, d7
  30801e: ab14         	add	r3, sp, #0x50
  308020: 4618         	mov	r0, r3
  308022: ee18 1a10    	vmov	r1, s16
  308026: ee17 2a90    	vmov	r2, s15
  30802a: f28a fe61    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x28acc2
  30802e: a916         	add	r1, sp, #0x58
  308030: aa12         	add	r2, sp, #0x48
  308032: ab14         	add	r3, sp, #0x50
  308034: 4608         	mov	r0, r1
  308036: 4611         	mov	r1, r2
  308038: 461a         	mov	r2, r3
  30803a: f7fd fac7    	bl	0x3055cc <ConfigLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x13cc> @ imm = #-0x2a72
  30803e: ab16         	add	r3, sp, #0x58
  308040: 4628         	mov	r0, r5
  308042: 4619         	mov	r1, r3
  308044: 47a0         	blx	r4
  308046: ab08         	add	r3, sp, #0x20
  308048: 4618         	mov	r0, r3
  30804a: f0ad f463    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ad8c6
  30804e: ab09         	add	r3, sp, #0x24
  308050: 4618         	mov	r0, r3
  308052: f082 f1d3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4823a6
  308056: 9b01         	ldr	r3, [sp, #0x4]
  308058: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  30805c: eddd 7a0b    	vldr	s15, [sp, #44]
  308060: eefd 7ae7    	vcvt.s32.f32	s15, s15
  308064: ee17 2a90    	vmov	r2, s15
  308068: 4618         	mov	r0, r3
  30806a: 4611         	mov	r1, r2
  30806c: f29d fe8a    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x29dd14
  308070: 9b01         	ldr	r3, [sp, #0x4]
  308072: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  308076: 681b         	ldr	r3, [r3]
  308078: 3340         	adds	r3, #0x40
  30807a: 681b         	ldr	r3, [r3]
  30807c: 9a01         	ldr	r2, [sp, #0x4]
  30807e: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  308082: 4610         	mov	r0, r2
  308084: 990c         	ldr	r1, [sp, #0x30]
  308086: 4798         	blx	r3
  308088: 9b01         	ldr	r3, [sp, #0x4]
  30808a: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  30808e: 681b         	ldr	r3, [r3]
  308090: 334c         	adds	r3, #0x4c
  308092: 681c         	ldr	r4, [r3]
  308094: 9b01         	ldr	r3, [sp, #0x4]
  308096: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  30809a: 461d         	mov	r5, r3
  30809c: 9b01         	ldr	r3, [sp, #0x4]
  30809e: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3080a2: 681b         	ldr	r3, [r3]
  3080a4: 3350         	adds	r3, #0x50
  3080a6: 681b         	ldr	r3, [r3]
  3080a8: 9a01         	ldr	r2, [sp, #0x4]
  3080aa: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  3080ae: 4610         	mov	r0, r2
  3080b0: 4798         	blx	r3
  3080b2: 4603         	mov	r3, r0
  3080b4: 681e         	ldr	r6, [r3]
  3080b6: 9b01         	ldr	r3, [sp, #0x4]
  3080b8: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3080bc: 681b         	ldr	r3, [r3]
  3080be: 3350         	adds	r3, #0x50
  3080c0: 681b         	ldr	r3, [r3]
  3080c2: 9a01         	ldr	r2, [sp, #0x4]
  3080c4: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  3080c8: 4610         	mov	r0, r2
  3080ca: 4798         	blx	r3
  3080cc: 4603         	mov	r3, r0
  3080ce: 685b         	ldr	r3, [r3, #0x4]
  3080d0: aa12         	add	r2, sp, #0x48
  3080d2: 4610         	mov	r0, r2
  3080d4: 4631         	mov	r1, r6
  3080d6: 461a         	mov	r2, r3
  3080d8: f28a fe0a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x28ac14
  3080dc: eddd 7a0a    	vldr	s15, [sp, #40]
  3080e0: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3080e4: ab1c         	add	r3, sp, #0x70
  3080e6: 4618         	mov	r0, r3
  3080e8: ed9f 0b5f    	vldr	d0, [pc, #380]          @ 0x308268 <ControlsLayer::updateLabels()+0x690>
  3080ec: eeb0 1b47    	vmov.f64	d1, d7
  3080f0: f7fd fa7c    	bl	0x3055ec <ConfigLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x13ec> @ imm = #-0x2b08
  3080f4: ed9d 8b1c    	vldr	d8, [sp, #112]
  3080f8: 9b01         	ldr	r3, [sp, #0x4]
  3080fa: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3080fe: 681b         	ldr	r3, [r3]
  308100: f503 73fe    	add.w	r3, r3, #0x1fc
  308104: 681b         	ldr	r3, [r3]
  308106: 9a01         	ldr	r2, [sp, #0x4]
  308108: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  30810c: 4610         	mov	r0, r2
  30810e: 4798         	blx	r3
  308110: 4606         	mov	r6, r0
  308112: ab08         	add	r3, sp, #0x20
  308114: 4618         	mov	r0, r3
  308116: f082 f16d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4822da
  30811a: aa09         	add	r2, sp, #0x24
  30811c: ab08         	add	r3, sp, #0x20
  30811e: 4610         	mov	r0, r2
  308120: 4631         	mov	r1, r6
  308122: 461a         	mov	r2, r3
  308124: f0ae f49c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4ae938
  308128: ab09         	add	r3, sp, #0x24
  30812a: 4618         	mov	r0, r3
  30812c: f0ac f796    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x4acf2c
  308130: 4603         	mov	r3, r0
  308132: ee07 3a90    	vmov	s15, r3
  308136: eeb8 7a67    	vcvt.f32.u32	s14, s15
  30813a: eddd 7a0b    	vldr	s15, [sp, #44]
  30813e: ee27 7a27    	vmul.f32	s14, s14, s15
  308142: eddd 7a0c    	vldr	s15, [sp, #48]
  308146: ee27 7a27    	vmul.f32	s14, s14, s15
  30814a: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  30814e: eec7 7a27    	vdiv.f32	s15, s14, s15
  308152: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  308156: ee38 7b47    	vsub.f64	d7, d8, d7
  30815a: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  30815e: eddd 7a0a    	vldr	s15, [sp, #40]
  308162: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  308166: ab20         	add	r3, sp, #0x80
  308168: 4618         	mov	r0, r3
  30816a: ed9f 0b3f    	vldr	d0, [pc, #252]          @ 0x308268 <ControlsLayer::updateLabels()+0x690>
  30816e: eeb0 1b47    	vmov.f64	d1, d7
  308172: f7fd fa3b    	bl	0x3055ec <ConfigLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x13ec> @ imm = #-0x2b8a
  308176: ed9d 7b22    	vldr	d7, [sp, #136]
  30817a: eef7 7bc7    	vcvt.f32.f64	s15, d7
  30817e: ab14         	add	r3, sp, #0x50
  308180: 4618         	mov	r0, r3
  308182: ee18 1a10    	vmov	r1, s16
  308186: ee17 2a90    	vmov	r2, s15
  30818a: f28a fdb1    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x28ab62
  30818e: a916         	add	r1, sp, #0x58
  308190: aa12         	add	r2, sp, #0x48
  308192: ab14         	add	r3, sp, #0x50
  308194: 4608         	mov	r0, r1
  308196: 4611         	mov	r1, r2
  308198: 461a         	mov	r2, r3
  30819a: f7fd fa17    	bl	0x3055cc <ConfigLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x13cc> @ imm = #-0x2bd2
  30819e: ab16         	add	r3, sp, #0x58
  3081a0: 4628         	mov	r0, r5
  3081a2: 4619         	mov	r1, r3
  3081a4: 47a0         	blx	r4
  3081a6: ab09         	add	r3, sp, #0x24
  3081a8: 4618         	mov	r0, r3
  3081aa: f0ad f3b3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ad766
  3081ae: ab08         	add	r3, sp, #0x20
  3081b0: 4618         	mov	r0, r3
  3081b2: f082 f123    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x482246
  3081b6: 9b01         	ldr	r3, [sp, #0x4]
  3081b8: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3081bc: eddd 7a0b    	vldr	s15, [sp, #44]
  3081c0: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3081c4: ee17 2a90    	vmov	r2, s15
  3081c8: 4618         	mov	r0, r3
  3081ca: 4611         	mov	r1, r2
  3081cc: f29d fdda    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x29dbb4
  3081d0: 9b01         	ldr	r3, [sp, #0x4]
  3081d2: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3081d6: 681b         	ldr	r3, [r3]
  3081d8: 3340         	adds	r3, #0x40
  3081da: 681b         	ldr	r3, [r3]
  3081dc: 9a01         	ldr	r2, [sp, #0x4]
  3081de: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3081e2: 4610         	mov	r0, r2
  3081e4: 990c         	ldr	r1, [sp, #0x30]
  3081e6: 4798         	blx	r3
  3081e8: 9b01         	ldr	r3, [sp, #0x4]
  3081ea: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  3081ee: 681b         	ldr	r3, [r3]
  3081f0: 334c         	adds	r3, #0x4c
  3081f2: 681c         	ldr	r4, [r3]
  3081f4: 9b01         	ldr	r3, [sp, #0x4]
  3081f6: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  3081fa: 461d         	mov	r5, r3
  3081fc: ed9d 6b18    	vldr	d6, [sp, #96]
  308200: ed9f 7b1b    	vldr	d7, [pc, #108]          @ 0x308270 <ControlsLayer::updateLabels()+0x698>
  308204: ee36 6b47    	vsub.f64	d6, d6, d7
  308208: ed9d 5b1a    	vldr	d5, [sp, #104]
  30820c: eeb3 7b04    	vmov.f64	d7, #2.000000e+01
  308210: ee35 5b07    	vadd.f64	d5, d5, d7
  308214: eddd 7a0a    	vldr	s15, [sp, #40]
  308218: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  30821c: ee35 7b07    	vadd.f64	d7, d5, d7
  308220: ab1c         	add	r3, sp, #0x70
  308222: 4618         	mov	r0, r3
  308224: eeb0 0b46    	vmov.f64	d0, d6
  308228: eeb0 1b47    	vmov.f64	d1, d7
  30822c: f7fd f9de    	bl	0x3055ec <ConfigLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x13ec> @ imm = #-0x2c44
  308230: ed9d 8b1c    	vldr	d8, [sp, #112]
  308234: 9b01         	ldr	r3, [sp, #0x4]
  308236: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  30823a: 681b         	ldr	r3, [r3]
  30823c: f503 73fe    	add.w	r3, r3, #0x1fc
  308240: 681b         	ldr	r3, [r3]
  308242: 9a01         	ldr	r2, [sp, #0x4]
  308244: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  308248: 4610         	mov	r0, r2
  30824a: 4798         	blx	r3
  30824c: 4606         	mov	r6, r0
  30824e: ab14         	add	r3, sp, #0x50
  308250: 4618         	mov	r0, r3
  308252: f082 f0cf    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x48219e
  308256: aa12         	add	r2, sp, #0x48
  308258: ab14         	add	r3, sp, #0x50
  30825a: 4610         	mov	r0, r2
  30825c: 4631         	mov	r1, r6
  30825e: 461a         	mov	r2, r3
  308260: f0ae f3fe    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4ae7fc
  308264: ab12         	add	r3, sp, #0x48
  308266: e009         	b	0x30827c <ControlsLayer::updateLabels()+0x6a4> @ imm = #0x12
  308274: 0000         	movs	r0, r0
  308276: 4060         	eors	r0, r4
  308278: db3c         	blt	0x3082f4 <ControlsLayer::updateLabels()+0x71c> @ imm = #0x78
  30827a: 004b         	lsls	r3, r1, #0x1
  30827c: 4618         	mov	r0, r3
  30827e: f0ac f6ed    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x4acdda
  308282: 4603         	mov	r3, r0
  308284: ee07 3a90    	vmov	s15, r3
  308288: eeb8 7a67    	vcvt.f32.u32	s14, s15
  30828c: eddd 7a0b    	vldr	s15, [sp, #44]
  308290: ee27 7a27    	vmul.f32	s14, s14, s15
  308294: eddd 7a0c    	vldr	s15, [sp, #48]
  308298: ee27 7a27    	vmul.f32	s14, s14, s15
  30829c: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3082a0: eec7 7a27    	vdiv.f32	s15, s14, s15
  3082a4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3082a8: ee38 7b47    	vsub.f64	d7, d8, d7
  3082ac: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3082b0: ed9d 6b18    	vldr	d6, [sp, #96]
  3082b4: ed9f 7bb0    	vldr	d7, [pc, #704]          @ 0x308578 <ControlsLayer::updateLabels()+0x9a0>
  3082b8: ee36 6b47    	vsub.f64	d6, d6, d7
  3082bc: ed9d 5b1a    	vldr	d5, [sp, #104]
  3082c0: eeb3 7b04    	vmov.f64	d7, #2.000000e+01
  3082c4: ee35 5b07    	vadd.f64	d5, d5, d7
  3082c8: eddd 7a0a    	vldr	s15, [sp, #40]
  3082cc: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3082d0: ee35 7b07    	vadd.f64	d7, d5, d7
  3082d4: ab20         	add	r3, sp, #0x80
  3082d6: 4618         	mov	r0, r3
  3082d8: eeb0 0b46    	vmov.f64	d0, d6
  3082dc: eeb0 1b47    	vmov.f64	d1, d7
  3082e0: f7fd f984    	bl	0x3055ec <ConfigLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x13ec> @ imm = #-0x2cf8
  3082e4: ed9d 7b22    	vldr	d7, [sp, #136]
  3082e8: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3082ec: ab16         	add	r3, sp, #0x58
  3082ee: 4618         	mov	r0, r3
  3082f0: ee18 1a10    	vmov	r1, s16
  3082f4: ee17 2a90    	vmov	r2, s15
  3082f8: f28a fcfa    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x28a9f4
  3082fc: ab16         	add	r3, sp, #0x58
  3082fe: 4628         	mov	r0, r5
  308300: 4619         	mov	r1, r3
  308302: 47a0         	blx	r4
  308304: ab12         	add	r3, sp, #0x48
  308306: 4618         	mov	r0, r3
  308308: f0ad f304    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ad608
  30830c: ab14         	add	r3, sp, #0x50
  30830e: 4618         	mov	r0, r3
  308310: f082 f074    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4820e8
  308314: 9b01         	ldr	r3, [sp, #0x4]
  308316: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  30831a: eddd 7a0b    	vldr	s15, [sp, #44]
  30831e: eefd 7ae7    	vcvt.s32.f32	s15, s15
  308322: ee17 2a90    	vmov	r2, s15
  308326: 4618         	mov	r0, r3
  308328: 4611         	mov	r1, r2
  30832a: f29d fd2b    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x29da56
  30832e: 9b01         	ldr	r3, [sp, #0x4]
  308330: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  308334: 681b         	ldr	r3, [r3]
  308336: 3340         	adds	r3, #0x40
  308338: 681b         	ldr	r3, [r3]
  30833a: 9a01         	ldr	r2, [sp, #0x4]
  30833c: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  308340: 4610         	mov	r0, r2
  308342: 990c         	ldr	r1, [sp, #0x30]
  308344: 4798         	blx	r3
  308346: 9b01         	ldr	r3, [sp, #0x4]
  308348: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  30834c: 681b         	ldr	r3, [r3]
  30834e: 334c         	adds	r3, #0x4c
  308350: 681c         	ldr	r4, [r3]
  308352: 9b01         	ldr	r3, [sp, #0x4]
  308354: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  308358: 461d         	mov	r5, r3
  30835a: ed9d 6b18    	vldr	d6, [sp, #96]
  30835e: ed9f 7b86    	vldr	d7, [pc, #536]          @ 0x308578 <ControlsLayer::updateLabels()+0x9a0>
  308362: ee36 6b07    	vadd.f64	d6, d6, d7
  308366: ed9d 5b1a    	vldr	d5, [sp, #104]
  30836a: eeb3 7b04    	vmov.f64	d7, #2.000000e+01
  30836e: ee35 5b07    	vadd.f64	d5, d5, d7
  308372: eddd 7a0a    	vldr	s15, [sp, #40]
  308376: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  30837a: ee35 7b07    	vadd.f64	d7, d5, d7
  30837e: ab1c         	add	r3, sp, #0x70
  308380: 4618         	mov	r0, r3
  308382: eeb0 0b46    	vmov.f64	d0, d6
  308386: eeb0 1b47    	vmov.f64	d1, d7
  30838a: f7fd f92f    	bl	0x3055ec <ConfigLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x13ec> @ imm = #-0x2da2
  30838e: ed9d 8b1c    	vldr	d8, [sp, #112]
  308392: 9b01         	ldr	r3, [sp, #0x4]
  308394: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  308398: 681b         	ldr	r3, [r3]
  30839a: f503 73fe    	add.w	r3, r3, #0x1fc
  30839e: 681b         	ldr	r3, [r3]
  3083a0: 9a01         	ldr	r2, [sp, #0x4]
  3083a2: f8d2 213c    	ldr.w	r2, [r2, #0x13c]
  3083a6: 4610         	mov	r0, r2
  3083a8: 4798         	blx	r3
  3083aa: 4606         	mov	r6, r0
  3083ac: ab12         	add	r3, sp, #0x48
  3083ae: 4618         	mov	r0, r3
  3083b0: f082 f020    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x482040
  3083b4: aa14         	add	r2, sp, #0x50
  3083b6: ab12         	add	r3, sp, #0x48
  3083b8: 4610         	mov	r0, r2
  3083ba: 4631         	mov	r1, r6
  3083bc: 461a         	mov	r2, r3
  3083be: f0ae f34f    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4ae69e
  3083c2: ab14         	add	r3, sp, #0x50
  3083c4: 4618         	mov	r0, r3
  3083c6: f0ac f649    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x4acc92
  3083ca: 4603         	mov	r3, r0
  3083cc: ee07 3a90    	vmov	s15, r3
  3083d0: eeb8 7a67    	vcvt.f32.u32	s14, s15
  3083d4: eddd 7a0b    	vldr	s15, [sp, #44]
  3083d8: ee27 7a27    	vmul.f32	s14, s14, s15
  3083dc: eddd 7a0c    	vldr	s15, [sp, #48]
  3083e0: ee27 7a27    	vmul.f32	s14, s14, s15
  3083e4: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3083e8: eec7 7a27    	vdiv.f32	s15, s14, s15
  3083ec: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3083f0: ee38 7b47    	vsub.f64	d7, d8, d7
  3083f4: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3083f8: ed9d 6b18    	vldr	d6, [sp, #96]
  3083fc: ed9f 7b5e    	vldr	d7, [pc, #376]          @ 0x308578 <ControlsLayer::updateLabels()+0x9a0>
  308400: ee36 6b07    	vadd.f64	d6, d6, d7
  308404: ed9d 5b1a    	vldr	d5, [sp, #104]
  308408: eeb3 7b04    	vmov.f64	d7, #2.000000e+01
  30840c: ee35 5b07    	vadd.f64	d5, d5, d7
  308410: eddd 7a0a    	vldr	s15, [sp, #40]
  308414: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  308418: ee35 7b07    	vadd.f64	d7, d5, d7
  30841c: ab20         	add	r3, sp, #0x80
  30841e: 4618         	mov	r0, r3
  308420: eeb0 0b46    	vmov.f64	d0, d6
  308424: eeb0 1b47    	vmov.f64	d1, d7
  308428: f7fd f8e0    	bl	0x3055ec <ConfigLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x13ec> @ imm = #-0x2e40
  30842c: ed9d 7b22    	vldr	d7, [sp, #136]
  308430: eef7 7bc7    	vcvt.f32.f64	s15, d7
  308434: ab16         	add	r3, sp, #0x58
  308436: 4618         	mov	r0, r3
  308438: ee18 1a10    	vmov	r1, s16
  30843c: ee17 2a90    	vmov	r2, s15
  308440: f28a fc56    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x28a8ac
  308444: ab16         	add	r3, sp, #0x58
  308446: 4628         	mov	r0, r5
  308448: 4619         	mov	r1, r3
  30844a: 47a0         	blx	r4
  30844c: ab14         	add	r3, sp, #0x50
  30844e: 4618         	mov	r0, r3
  308450: f0ad f260    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ad4c0
  308454: ab12         	add	r3, sp, #0x48
  308456: 4618         	mov	r0, r3
  308458: f081 f7d0    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x481fa0
  30845c: 9b01         	ldr	r3, [sp, #0x4]
  30845e: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  308462: eddd 7a0b    	vldr	s15, [sp, #44]
  308466: eefd 7ae7    	vcvt.s32.f32	s15, s15
  30846a: ee17 2a90    	vmov	r2, s15
  30846e: 4618         	mov	r0, r3
  308470: 4611         	mov	r1, r2
  308472: f29d fc87    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x29d90e
  308476: 9b01         	ldr	r3, [sp, #0x4]
  308478: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  30847c: 681b         	ldr	r3, [r3]
  30847e: 3340         	adds	r3, #0x40
  308480: 681b         	ldr	r3, [r3]
  308482: 9a01         	ldr	r2, [sp, #0x4]
  308484: f8d2 213c    	ldr.w	r2, [r2, #0x13c]
  308488: 4610         	mov	r0, r2
  30848a: 990c         	ldr	r1, [sp, #0x30]
  30848c: 4798         	blx	r3
  30848e: ab07         	add	r3, sp, #0x1c
  308490: 4618         	mov	r0, r3
  308492: f0ad f23f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ad47e
  308496: ab06         	add	r3, sp, #0x18
  308498: 4618         	mov	r0, r3
  30849a: f0ad f23b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ad476
  30849e: ab05         	add	r3, sp, #0x14
  3084a0: 4618         	mov	r0, r3
  3084a2: f0ad f237    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ad46e
  3084a6: ab04         	add	r3, sp, #0x10
  3084a8: 4618         	mov	r0, r3
  3084aa: f0ad f233    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ad466
  3084ae: ab03         	add	r3, sp, #0xc
  3084b0: 4618         	mov	r0, r3
  3084b2: f0ad f22f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ad45e
  3084b6: e058         	b	0x30856a <ControlsLayer::updateLabels()+0x992> @ imm = #0xb0
  3084b8: ab20         	add	r3, sp, #0x80
  3084ba: 4618         	mov	r0, r3
  3084bc: f081 f79e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x481f3c
  3084c0: f07f f5f4    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x47fbe8
  3084c4: ab20         	add	r3, sp, #0x80
  3084c6: 4618         	mov	r0, r3
  3084c8: f081 f798    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x481f30
  3084cc: e047         	b	0x30855e <ControlsLayer::updateLabels()+0x986> @ imm = #0x8e
  3084ce: ab20         	add	r3, sp, #0x80
  3084d0: 4618         	mov	r0, r3
  3084d2: f081 f793    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x481f26
  3084d6: e03e         	b	0x308556 <ControlsLayer::updateLabels()+0x97e> @ imm = #0x7c
  3084d8: ab20         	add	r3, sp, #0x80
  3084da: 4618         	mov	r0, r3
  3084dc: f081 f78e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x481f1c
  3084e0: e035         	b	0x30854e <ControlsLayer::updateLabels()+0x976> @ imm = #0x6a
  3084e2: ab20         	add	r3, sp, #0x80
  3084e4: 4618         	mov	r0, r3
  3084e6: f081 f789    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x481f12
  3084ea: e02c         	b	0x308546 <ControlsLayer::updateLabels()+0x96e> @ imm = #0x58
  3084ec: ab08         	add	r3, sp, #0x20
  3084ee: 4618         	mov	r0, r3
  3084f0: f0ad f210    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ad420
  3084f4: e7ff         	b	0x3084f6 <ControlsLayer::updateLabels()+0x91e> @ imm = #-0x2
  3084f6: ab09         	add	r3, sp, #0x24
  3084f8: 4618         	mov	r0, r3
  3084fa: f081 f77f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x481efe
  3084fe: e01d         	b	0x30853c <ControlsLayer::updateLabels()+0x964> @ imm = #0x3a
  308500: ab09         	add	r3, sp, #0x24
  308502: 4618         	mov	r0, r3
  308504: f0ad f206    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ad40c
  308508: e7ff         	b	0x30850a <ControlsLayer::updateLabels()+0x932> @ imm = #-0x2
  30850a: ab08         	add	r3, sp, #0x20
  30850c: 4618         	mov	r0, r3
  30850e: f081 f775    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x481eea
  308512: e013         	b	0x30853c <ControlsLayer::updateLabels()+0x964> @ imm = #0x26
  308514: ab12         	add	r3, sp, #0x48
  308516: 4618         	mov	r0, r3
  308518: f0ad f1fc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ad3f8
  30851c: e7ff         	b	0x30851e <ControlsLayer::updateLabels()+0x946> @ imm = #-0x2
  30851e: ab14         	add	r3, sp, #0x50
  308520: 4618         	mov	r0, r3
  308522: f081 f76b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x481ed6
  308526: e009         	b	0x30853c <ControlsLayer::updateLabels()+0x964> @ imm = #0x12
  308528: ab14         	add	r3, sp, #0x50
  30852a: 4618         	mov	r0, r3
  30852c: f0ad f1f2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ad3e4
  308530: e7ff         	b	0x308532 <ControlsLayer::updateLabels()+0x95a> @ imm = #-0x2
  308532: ab12         	add	r3, sp, #0x48
  308534: 4618         	mov	r0, r3
  308536: f081 f761    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x481ec2
  30853a: e7ff         	b	0x30853c <ControlsLayer::updateLabels()+0x964> @ imm = #-0x2
  30853c: ab07         	add	r3, sp, #0x1c
  30853e: 4618         	mov	r0, r3
  308540: f0ad f1e8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ad3d0
  308544: e7ff         	b	0x308546 <ControlsLayer::updateLabels()+0x96e> @ imm = #-0x2
  308546: ab06         	add	r3, sp, #0x18
  308548: 4618         	mov	r0, r3
  30854a: f0ad f1e3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ad3c6
  30854e: ab05         	add	r3, sp, #0x14
  308550: 4618         	mov	r0, r3
  308552: f0ad f1df    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ad3be
  308556: ab04         	add	r3, sp, #0x10
  308558: 4618         	mov	r0, r3
  30855a: f0ad f1db    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ad3b6
  30855e: ab03         	add	r3, sp, #0xc
  308560: 4618         	mov	r0, r3
  308562: f0ad f1d7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ad3ae
  308566: f07f f5a1    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x47fb42
  30856a: b024         	add	sp, #0x90
  30856c: ecbd 8b02    	vpop	{d8}
  308570: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x308571); words below are literal-pool data ---
  308572: bf00         	nop
  308574: f3af 8000    	nop.w
  308578: 0000         	movs	r0, r0
  30857a: 0000         	movs	r0, r0
  30857c: 0000         	movs	r0, r0
  30857e: 4060         	eors	r0, r4

// ==== ControlsLayer::onSwap
//      file offset 0x308580 (= ELF address; Ghidra 0x318580), 116 bytes, Thumb-2
  308580: b510         	push	{r4, lr}
  308582: b084         	sub	sp, #0x10
  308584: 9001         	str	r0, [sp, #0x4]
  308586: 9100         	str	r1, [sp]
  308588: 4c16         	ldr	r4, [pc, #0x58]         @ 0x3085e4 <ControlsLayer::onSwap(cocos2d::CCObject*)+0x64>
  30858a: 447c         	add	r4, pc
  30858c: f2da f84e    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2da09c
  308590: 4603         	mov	r3, r0
  308592: 4618         	mov	r0, r3
  308594: 4b14         	ldr	r3, [pc, #0x50]         @ 0x3085e8 <ControlsLayer::onSwap(cocos2d::CCObject*)+0x68>
  308596: 447b         	add	r3, pc
  308598: 4619         	mov	r1, r3
  30859a: 2200         	movs	r2, #0x0
  30859c: f2d9 fe44    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x2d9c88
  3085a0: 4603         	mov	r3, r0
  3085a2: 9303         	str	r3, [sp, #0xc]
  3085a4: 9b03         	ldr	r3, [sp, #0xc]
  3085a6: 1c5a         	adds	r2, r3, #0x1
  3085a8: 17d3         	asrs	r3, r2, #0x1f
  3085aa: 0fdb         	lsrs	r3, r3, #0x1f
  3085ac: 441a         	add	r2, r3
  3085ae: f002 0201    	and	r2, r2, #0x1
  3085b2: 1ad3         	subs	r3, r2, r3
  3085b4: 9303         	str	r3, [sp, #0xc]
  3085b6: f2da f839    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2da072
  3085ba: 4603         	mov	r3, r0
  3085bc: 4618         	mov	r0, r3
  3085be: 4b0b         	ldr	r3, [pc, #0x2c]         @ 0x3085ec <ControlsLayer::onSwap(cocos2d::CCObject*)+0x6c>
  3085c0: 447b         	add	r3, pc
  3085c2: 4619         	mov	r1, r3
  3085c4: 9a03         	ldr	r2, [sp, #0xc]
  3085c6: f2d9 ffeb    	bl	0x5e25a0 <cocos2d::CCUserDefault::setIntegerForKey(char const*, int)> @ imm = #0x2d9fd6
  3085ca: 4b09         	ldr	r3, [pc, #0x24]         @ 0x3085f0 <ControlsLayer::onSwap(cocos2d::CCObject*)+0x70>
  3085cc: 58e3         	ldr	r3, [r4, r3]
  3085ce: 681b         	ldr	r3, [r3]
  3085d0: 4618         	mov	r0, r3
  3085d2: 210d         	movs	r1, #0xd
  3085d4: f0ef fbf4    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xef7e8
  3085d8: 9801         	ldr	r0, [sp, #0x4]
  3085da: f7ff fafd    	bl	0x307bd8 <ControlsLayer::updateLabels()> @ imm = #-0xa06
  3085de: b004         	add	sp, #0x10
  3085e0: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3085e1); words below are literal-pool data ---
  3085e2: bf00         	nop
  3085e4: a47e         	adr	r4, #504 <ControlsLayer::onPlacement(cocos2d::CCObject*)+0xe>
  3085e6: 0062         	lsls	r2, r4, #0x1
  3085e8: d44e         	bmi	0x308688 <ControlsLayer::onPlacement(cocos2d::CCObject*)+0x30> @ imm = #0x9c
  3085ea: 004b         	lsls	r3, r1, #0x1
  3085ec: d424         	bmi	0x308638 <ControlsLayer::onDone(cocos2d::CCObject*)+0x44> @ imm = #0x48
  3085ee: 004b         	lsls	r3, r1, #0x1
  3085f0: d730         	bvc	0x308654 <ControlsLayer::onDone(cocos2d::CCObject*)+0x60> @ imm = #0x60
  3085f2: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== ControlsLayer::onDone
//      file offset 0x3085f4 (= ELF address; Ghidra 0x3185f4), 100 bytes, Thumb-2
  3085f4: b530         	push	{r4, r5, lr}
  3085f6: b083         	sub	sp, #0xc
  3085f8: 9001         	str	r0, [sp, #0x4]
  3085fa: 9100         	str	r1, [sp]
  3085fc: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x30864c <ControlsLayer::onDone(cocos2d::CCObject*)+0x58>
  3085fe: 447a         	add	r2, pc
  308600: 9b01         	ldr	r3, [sp, #0x4]
  308602: f893 3108    	ldrb.w	r3, [r3, #0x108]
  308606: 2b00         	cmp	r3, #0x0
  308608: d000         	beq	0x30860c <ControlsLayer::onDone(cocos2d::CCObject*)+0x18> @ imm = #0x0
  30860a: e01c         	b	0x308646 <ControlsLayer::onDone(cocos2d::CCObject*)+0x52> @ imm = #0x38
  30860c: 9b01         	ldr	r3, [sp, #0x4]
  30860e: 2101         	movs	r1, #0x1
  308610: f883 1108    	strb.w	r1, [r3, #0x108]
  308614: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x308650 <ControlsLayer::onDone(cocos2d::CCObject*)+0x5c>
  308616: 58d3         	ldr	r3, [r2, r3]
  308618: 681b         	ldr	r3, [r3]
  30861a: 4618         	mov	r0, r3
  30861c: 210d         	movs	r1, #0xd
  30861e: f0ef fbcf    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xef79e
  308622: f292 ffa7    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x292f4e
  308626: 4604         	mov	r4, r0
  308628: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x308654 <ControlsLayer::onDone(cocos2d::CCObject*)+0x60>
  30862a: 447b         	add	r3, pc
  30862c: 681d         	ldr	r5, [r3]
  30862e: f0d2 f989    	bl	0x3da944 <SettingsLayer::scene()> @ imm = #0xd2312
  308632: 4603         	mov	r3, r0
  308634: 4628         	mov	r0, r5
  308636: 4619         	mov	r1, r3
  308638: f2a8 fe66    	bl	0x5b1308 <cocos2d::CCTransitionSlideInL::create(float, cocos2d::CCScene*)> @ imm = #0x2a8ccc
  30863c: 4603         	mov	r3, r0
  30863e: 4620         	mov	r0, r4
  308640: 4619         	mov	r1, r3
  308642: f293 fe8b    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x293d16
  308646: b003         	add	sp, #0xc
  308648: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x308649); words below are literal-pool data ---
  30864a: bf00         	nop
  30864c: a40a         	adr	r4, #40 <ControlsLayer::onPlacement(cocos2d::CCObject*)+0x2>
  30864e: 0062         	lsls	r2, r4, #0x1
  308650: d730         	bvc	0x3086b4 <ControlsLayer::onPlacement(cocos2d::CCObject*)+0x5c> @ imm = #0x60
  308652: ffff ac6a    	vdup.8	q13, d26[7]
  308656: 0062         	lsls	r2, r4, #0x1

// ==== ControlsLayer::onPlacement
//      file offset 0x308658 (= ELF address; Ghidra 0x318658), 100 bytes, Thumb-2
  308658: b530         	push	{r4, r5, lr}
  30865a: b083         	sub	sp, #0xc
  30865c: 9001         	str	r0, [sp, #0x4]
  30865e: 9100         	str	r1, [sp]
  308660: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x3086b0 <ControlsLayer::onPlacement(cocos2d::CCObject*)+0x58>
  308662: 447a         	add	r2, pc
  308664: 9b01         	ldr	r3, [sp, #0x4]
  308666: f893 3108    	ldrb.w	r3, [r3, #0x108]
  30866a: 2b00         	cmp	r3, #0x0
  30866c: d000         	beq	0x308670 <ControlsLayer::onPlacement(cocos2d::CCObject*)+0x18> @ imm = #0x0
  30866e: e01c         	b	0x3086aa <ControlsLayer::onPlacement(cocos2d::CCObject*)+0x52> @ imm = #0x38
  308670: 9b01         	ldr	r3, [sp, #0x4]
  308672: 2101         	movs	r1, #0x1
  308674: f883 1108    	strb.w	r1, [r3, #0x108]
  308678: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x3086b4 <ControlsLayer::onPlacement(cocos2d::CCObject*)+0x5c>
  30867a: 58d3         	ldr	r3, [r2, r3]
  30867c: 681b         	ldr	r3, [r3]
  30867e: 4618         	mov	r0, r3
  308680: 210d         	movs	r1, #0xd
  308682: f0ef fb9d    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xef73a
  308686: f292 ff75    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x292eea
  30868a: 4604         	mov	r4, r0
  30868c: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x3086b8 <ControlsLayer::onPlacement(cocos2d::CCObject*)+0x60>
  30868e: 447b         	add	r3, pc
  308690: 681d         	ldr	r5, [r3]
  308692: f001 fa07    	bl	0x309aa4 <ControlsPlacementLayer::scene()> @ imm = #0x140e
  308696: 4603         	mov	r3, r0
  308698: 4628         	mov	r0, r5
  30869a: 4619         	mov	r1, r3
  30869c: f2a8 fe34    	bl	0x5b1308 <cocos2d::CCTransitionSlideInL::create(float, cocos2d::CCScene*)> @ imm = #0x2a8c68
  3086a0: 4603         	mov	r3, r0
  3086a2: 4620         	mov	r0, r4
  3086a4: 4619         	mov	r1, r3
  3086a6: f293 fe59    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x293cb2
  3086aa: b003         	add	sp, #0xc
  3086ac: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3086ad); words below are literal-pool data ---
  3086ae: bf00         	nop
  3086b0: a3a6         	adr	r3, #664 <ControlsLayer::onNextLeftInv(cocos2d::CCObject*)+0x9e>
  3086b2: 0062         	lsls	r2, r4, #0x1
  3086b4: d730         	bvc	0x308718 <ControlsLayer::onNextLeftInv(cocos2d::CCObject*)+0x5c> @ imm = #0x60
  3086b6: ffff ac06    	vdup.8	d26, d6[7]
  3086ba: 0062         	lsls	r2, r4, #0x1

// ==== ControlsLayer::onNextLeftInv
//      file offset 0x3086bc (= ELF address; Ghidra 0x3186bc), 248 bytes, Thumb-2
  3086bc: b530         	push	{r4, r5, lr}
  3086be: b087         	sub	sp, #0x1c
  3086c0: 9001         	str	r0, [sp, #0x4]
  3086c2: 9100         	str	r1, [sp]
  3086c4: 4c36         	ldr	r4, [pc, #0xd8]         @ 0x3087a0 <ControlsLayer::onNextLeftInv(cocos2d::CCObject*)+0xe4>
  3086c6: 447c         	add	r4, pc
  3086c8: ab03         	add	r3, sp, #0xc
  3086ca: 4618         	mov	r0, r3
  3086cc: f081 f692    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x481d24
  3086d0: aa04         	add	r2, sp, #0x10
  3086d2: ab03         	add	r3, sp, #0xc
  3086d4: 4610         	mov	r0, r2
  3086d6: 4a33         	ldr	r2, [pc, #0xcc]         @ 0x3087a4 <ControlsLayer::onNextLeftInv(cocos2d::CCObject*)+0xe8>
  3086d8: 447a         	add	r2, pc
  3086da: 4611         	mov	r1, r2
  3086dc: 461a         	mov	r2, r3
  3086de: f0ae f1bf    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4ae37e
  3086e2: ab03         	add	r3, sp, #0xc
  3086e4: 4618         	mov	r0, r3
  3086e6: f081 f689    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x481d12
  3086ea: f2d9 ff9f    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2d9f3e
  3086ee: 4603         	mov	r3, r0
  3086f0: 4618         	mov	r0, r3
  3086f2: 4b2d         	ldr	r3, [pc, #0xb4]         @ 0x3087a8 <ControlsLayer::onNextLeftInv(cocos2d::CCObject*)+0xec>
  3086f4: 447b         	add	r3, pc
  3086f6: 4619         	mov	r1, r3
  3086f8: 2200         	movs	r2, #0x0
  3086fa: f2d9 fd95    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x2d9b2a
  3086fe: 4603         	mov	r3, r0
  308700: 2b01         	cmp	r3, #0x1
  308702: bf14         	ite	ne
  308704: 2300         	movne	r3, #0x0
  308706: 2301         	moveq	r3, #0x1
  308708: b2db         	uxtb	r3, r3
  30870a: 2b00         	cmp	r3, #0x0
  30870c: d006         	beq	0x30871c <ControlsLayer::onNextLeftInv(cocos2d::CCObject*)+0x60> @ imm = #0xc
  30870e: ab04         	add	r3, sp, #0x10
  308710: 4618         	mov	r0, r3
  308712: 4b26         	ldr	r3, [pc, #0x98]         @ 0x3087ac <ControlsLayer::onNextLeftInv(cocos2d::CCObject*)+0xf0>
  308714: 447b         	add	r3, pc
  308716: 4619         	mov	r1, r3
  308718: f0ad f3aa    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4ad754
  30871c: f2d9 ff86    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2d9f0c
  308720: 4605         	mov	r5, r0
  308722: ab04         	add	r3, sp, #0x10
  308724: 4618         	mov	r0, r3
  308726: f0ac f5eb    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4acbd6
  30872a: 4603         	mov	r3, r0
  30872c: 4628         	mov	r0, r5
  30872e: 4619         	mov	r1, r3
  308730: 2200         	movs	r2, #0x0
  308732: f2d9 fd79    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x2d9af2
  308736: 4603         	mov	r3, r0
  308738: 9305         	str	r3, [sp, #0x14]
  30873a: 9b05         	ldr	r3, [sp, #0x14]
  30873c: 1c5a         	adds	r2, r3, #0x1
  30873e: 17d3         	asrs	r3, r2, #0x1f
  308740: 0f9b         	lsrs	r3, r3, #0x1e
  308742: 441a         	add	r2, r3
  308744: f002 0203    	and	r2, r2, #0x3
  308748: 1ad3         	subs	r3, r2, r3
  30874a: 9305         	str	r3, [sp, #0x14]
  30874c: f2d9 ff6e    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2d9edc
  308750: 4605         	mov	r5, r0
  308752: ab04         	add	r3, sp, #0x10
  308754: 4618         	mov	r0, r3
  308756: f0ac f5d3    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4acba6
  30875a: 4603         	mov	r3, r0
  30875c: 4628         	mov	r0, r5
  30875e: 4619         	mov	r1, r3
  308760: 9a05         	ldr	r2, [sp, #0x14]
  308762: f2d9 ff1d    	bl	0x5e25a0 <cocos2d::CCUserDefault::setIntegerForKey(char const*, int)> @ imm = #0x2d9e3a
  308766: 4b12         	ldr	r3, [pc, #0x48]         @ 0x3087b0 <ControlsLayer::onNextLeftInv(cocos2d::CCObject*)+0xf4>
  308768: 58e3         	ldr	r3, [r4, r3]
  30876a: 681b         	ldr	r3, [r3]
  30876c: 4618         	mov	r0, r3
  30876e: 210d         	movs	r1, #0xd
  308770: f0ef fb26    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xef64c
  308774: 9801         	ldr	r0, [sp, #0x4]
  308776: f7ff fa2f    	bl	0x307bd8 <ControlsLayer::updateLabels()> @ imm = #-0xba2
  30877a: ab04         	add	r3, sp, #0x10
  30877c: 4618         	mov	r0, r3
  30877e: f0ad f0c9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ad192
  308782: e00b         	b	0x30879c <ControlsLayer::onNextLeftInv(cocos2d::CCObject*)+0xe0> @ imm = #0x16
  308784: ab03         	add	r3, sp, #0xc
  308786: 4618         	mov	r0, r3
  308788: f081 f638    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x481c70
  30878c: f07f f48e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x47f91c
  308790: ab04         	add	r3, sp, #0x10
  308792: 4618         	mov	r0, r3
  308794: f0ad f0be    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ad17c
  308798: f07f f488    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x47f910
  30879c: b007         	add	sp, #0x1c
  30879e: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x30879f); words below are literal-pool data ---
  3087a0: a342         	adr	r3, #264 <ControlsLayer::onNextRightInv(cocos2d::CCObject*)+0x32>
  3087a2: 0062         	lsls	r2, r4, #0x1
  3087a4: d338         	blo	0x308818 <ControlsLayer::onNextRightInv(cocos2d::CCObject*)+0x64> @ imm = #0x70
  3087a6: 004b         	lsls	r3, r1, #0x1
  3087a8: d2f0         	bhs	0x30878c <ControlsLayer::onNextLeftInv(cocos2d::CCObject*)+0xd0> @ imm = #-0x20
  3087aa: 004b         	lsls	r3, r1, #0x1
  3087ac: d30c         	blo	0x3087c8 <ControlsLayer::onNextRightInv(cocos2d::CCObject*)+0x14> @ imm = #0x18
  3087ae: 004b         	lsls	r3, r1, #0x1
  3087b0: d730         	bvc	0x308814 <ControlsLayer::onNextRightInv(cocos2d::CCObject*)+0x60> @ imm = #0x60
  3087b2: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== ControlsLayer::onNextRightInv
//      file offset 0x3087b4 (= ELF address; Ghidra 0x3187b4), 248 bytes, Thumb-2
  3087b4: b530         	push	{r4, r5, lr}
  3087b6: b087         	sub	sp, #0x1c
  3087b8: 9001         	str	r0, [sp, #0x4]
  3087ba: 9100         	str	r1, [sp]
  3087bc: 4c36         	ldr	r4, [pc, #0xd8]         @ 0x308898 <ControlsLayer::onNextRightInv(cocos2d::CCObject*)+0xe4>
  3087be: 447c         	add	r4, pc
  3087c0: ab03         	add	r3, sp, #0xc
  3087c2: 4618         	mov	r0, r3
  3087c4: f081 f616    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x481c2c
  3087c8: aa04         	add	r2, sp, #0x10
  3087ca: ab03         	add	r3, sp, #0xc
  3087cc: 4610         	mov	r0, r2
  3087ce: 4a33         	ldr	r2, [pc, #0xcc]         @ 0x30889c <ControlsLayer::onNextRightInv(cocos2d::CCObject*)+0xe8>
  3087d0: 447a         	add	r2, pc
  3087d2: 4611         	mov	r1, r2
  3087d4: 461a         	mov	r2, r3
  3087d6: f0ae f143    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4ae286
  3087da: ab03         	add	r3, sp, #0xc
  3087dc: 4618         	mov	r0, r3
  3087de: f081 f60d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x481c1a
  3087e2: f2d9 ff23    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2d9e46
  3087e6: 4603         	mov	r3, r0
  3087e8: 4618         	mov	r0, r3
  3087ea: 4b2d         	ldr	r3, [pc, #0xb4]         @ 0x3088a0 <ControlsLayer::onNextRightInv(cocos2d::CCObject*)+0xec>
  3087ec: 447b         	add	r3, pc
  3087ee: 4619         	mov	r1, r3
  3087f0: 2200         	movs	r2, #0x0
  3087f2: f2d9 fd19    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x2d9a32
  3087f6: 4603         	mov	r3, r0
  3087f8: 2b01         	cmp	r3, #0x1
  3087fa: bf14         	ite	ne
  3087fc: 2300         	movne	r3, #0x0
  3087fe: 2301         	moveq	r3, #0x1
  308800: b2db         	uxtb	r3, r3
  308802: 2b00         	cmp	r3, #0x0
  308804: d006         	beq	0x308814 <ControlsLayer::onNextRightInv(cocos2d::CCObject*)+0x60> @ imm = #0xc
  308806: ab04         	add	r3, sp, #0x10
  308808: 4618         	mov	r0, r3
  30880a: 4b26         	ldr	r3, [pc, #0x98]         @ 0x3088a4 <ControlsLayer::onNextRightInv(cocos2d::CCObject*)+0xf0>
  30880c: 447b         	add	r3, pc
  30880e: 4619         	mov	r1, r3
  308810: f0ad f32e    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4ad65c
  308814: f2d9 ff0a    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2d9e14
  308818: 4605         	mov	r5, r0
  30881a: ab04         	add	r3, sp, #0x10
  30881c: 4618         	mov	r0, r3
  30881e: f0ac f56f    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4acade
  308822: 4603         	mov	r3, r0
  308824: 4628         	mov	r0, r5
  308826: 4619         	mov	r1, r3
  308828: 2200         	movs	r2, #0x0
  30882a: f2d9 fcfd    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x2d99fa
  30882e: 4603         	mov	r3, r0
  308830: 9305         	str	r3, [sp, #0x14]
  308832: 9b05         	ldr	r3, [sp, #0x14]
  308834: 1c5a         	adds	r2, r3, #0x1
  308836: 17d3         	asrs	r3, r2, #0x1f
  308838: 0f9b         	lsrs	r3, r3, #0x1e
  30883a: 441a         	add	r2, r3
  30883c: f002 0203    	and	r2, r2, #0x3
  308840: 1ad3         	subs	r3, r2, r3
  308842: 9305         	str	r3, [sp, #0x14]
  308844: f2d9 fef2    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2d9de4
  308848: 4605         	mov	r5, r0
  30884a: ab04         	add	r3, sp, #0x10
  30884c: 4618         	mov	r0, r3
  30884e: f0ac f557    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4acaae
  308852: 4603         	mov	r3, r0
  308854: 4628         	mov	r0, r5
  308856: 4619         	mov	r1, r3
  308858: 9a05         	ldr	r2, [sp, #0x14]
  30885a: f2d9 fea1    	bl	0x5e25a0 <cocos2d::CCUserDefault::setIntegerForKey(char const*, int)> @ imm = #0x2d9d42
  30885e: 4b12         	ldr	r3, [pc, #0x48]         @ 0x3088a8 <ControlsLayer::onNextRightInv(cocos2d::CCObject*)+0xf4>
  308860: 58e3         	ldr	r3, [r4, r3]
  308862: 681b         	ldr	r3, [r3]
  308864: 4618         	mov	r0, r3
  308866: 210d         	movs	r1, #0xd
  308868: f0ef faaa    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xef554
  30886c: 9801         	ldr	r0, [sp, #0x4]
  30886e: f7ff f9b3    	bl	0x307bd8 <ControlsLayer::updateLabels()> @ imm = #-0xc9a
  308872: ab04         	add	r3, sp, #0x10
  308874: 4618         	mov	r0, r3
  308876: f0ad f04d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ad09a
  30887a: e00b         	b	0x308894 <ControlsLayer::onNextRightInv(cocos2d::CCObject*)+0xe0> @ imm = #0x16
  30887c: ab03         	add	r3, sp, #0xc
  30887e: 4618         	mov	r0, r3
  308880: f081 f5bc    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x481b78
  308884: f07f f412    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x47f824
  308888: ab04         	add	r3, sp, #0x10
  30888a: 4618         	mov	r0, r3
  30888c: f0ad f042    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ad084
  308890: f07f f40c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x47f818
  308894: b007         	add	sp, #0x1c
  308896: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x308897); words below are literal-pool data ---
  308898: a24a         	adr	r2, #296 <ControlsLayer::onPrevLeftInv(cocos2d::CCObject*)+0x3a>
  30889a: 0062         	lsls	r2, r4, #0x1
  30889c: d250         	bhs	0x308940 <ControlsLayer::onPrevLeftInv(cocos2d::CCObject*)+0x94> @ imm = #0xa0
  30889e: 004b         	lsls	r3, r1, #0x1
  3088a0: d1f8         	bne	0x308894 <ControlsLayer::onNextRightInv(cocos2d::CCObject*)+0xe0> @ imm = #-0x10
  3088a2: 004b         	lsls	r3, r1, #0x1
  3088a4: d204         	bhs	0x3088b0 <ControlsLayer::onPrevLeftInv(cocos2d::CCObject*)+0x4> @ imm = #0x8
  3088a6: 004b         	lsls	r3, r1, #0x1
  3088a8: d730         	bvc	0x30890c <ControlsLayer::onPrevLeftInv(cocos2d::CCObject*)+0x60> @ imm = #0x60
  3088aa: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== ControlsLayer::onPrevLeftInv
//      file offset 0x3088ac (= ELF address; Ghidra 0x3188ac), 248 bytes, Thumb-2
  3088ac: b530         	push	{r4, r5, lr}
  3088ae: b087         	sub	sp, #0x1c
  3088b0: 9001         	str	r0, [sp, #0x4]
  3088b2: 9100         	str	r1, [sp]
  3088b4: 4c36         	ldr	r4, [pc, #0xd8]         @ 0x308990 <ControlsLayer::onPrevLeftInv(cocos2d::CCObject*)+0xe4>
  3088b6: 447c         	add	r4, pc
  3088b8: ab03         	add	r3, sp, #0xc
  3088ba: 4618         	mov	r0, r3
  3088bc: f081 f59a    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x481b34
  3088c0: aa04         	add	r2, sp, #0x10
  3088c2: ab03         	add	r3, sp, #0xc
  3088c4: 4610         	mov	r0, r2
  3088c6: 4a33         	ldr	r2, [pc, #0xcc]         @ 0x308994 <ControlsLayer::onPrevLeftInv(cocos2d::CCObject*)+0xe8>
  3088c8: 447a         	add	r2, pc
  3088ca: 4611         	mov	r1, r2
  3088cc: 461a         	mov	r2, r3
  3088ce: f0ae f0c7    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4ae18e
  3088d2: ab03         	add	r3, sp, #0xc
  3088d4: 4618         	mov	r0, r3
  3088d6: f081 f591    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x481b22
  3088da: f2d9 fea7    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2d9d4e
  3088de: 4603         	mov	r3, r0
  3088e0: 4618         	mov	r0, r3
  3088e2: 4b2d         	ldr	r3, [pc, #0xb4]         @ 0x308998 <ControlsLayer::onPrevLeftInv(cocos2d::CCObject*)+0xec>
  3088e4: 447b         	add	r3, pc
  3088e6: 4619         	mov	r1, r3
  3088e8: 2200         	movs	r2, #0x0
  3088ea: f2d9 fc9d    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x2d993a
  3088ee: 4603         	mov	r3, r0
  3088f0: 2b01         	cmp	r3, #0x1
  3088f2: bf14         	ite	ne
  3088f4: 2300         	movne	r3, #0x0
  3088f6: 2301         	moveq	r3, #0x1
  3088f8: b2db         	uxtb	r3, r3
  3088fa: 2b00         	cmp	r3, #0x0
  3088fc: d006         	beq	0x30890c <ControlsLayer::onPrevLeftInv(cocos2d::CCObject*)+0x60> @ imm = #0xc
  3088fe: ab04         	add	r3, sp, #0x10
  308900: 4618         	mov	r0, r3
  308902: 4b26         	ldr	r3, [pc, #0x98]         @ 0x30899c <ControlsLayer::onPrevLeftInv(cocos2d::CCObject*)+0xf0>
  308904: 447b         	add	r3, pc
  308906: 4619         	mov	r1, r3
  308908: f0ad f2b2    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4ad564
  30890c: f2d9 fe8e    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2d9d1c
  308910: 4605         	mov	r5, r0
  308912: ab04         	add	r3, sp, #0x10
  308914: 4618         	mov	r0, r3
  308916: f0ac f4f3    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4ac9e6
  30891a: 4603         	mov	r3, r0
  30891c: 4628         	mov	r0, r5
  30891e: 4619         	mov	r1, r3
  308920: 2200         	movs	r2, #0x0
  308922: f2d9 fc81    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x2d9902
  308926: 4603         	mov	r3, r0
  308928: 9305         	str	r3, [sp, #0x14]
  30892a: 9b05         	ldr	r3, [sp, #0x14]
  30892c: 3b01         	subs	r3, #0x1
  30892e: 9305         	str	r3, [sp, #0x14]
  308930: 9b05         	ldr	r3, [sp, #0x14]
  308932: 2b00         	cmp	r3, #0x0
  308934: da01         	bge	0x30893a <ControlsLayer::onPrevLeftInv(cocos2d::CCObject*)+0x8e> @ imm = #0x2
  308936: 2303         	movs	r3, #0x3
  308938: 9305         	str	r3, [sp, #0x14]
  30893a: f2d9 fe77    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2d9cee
  30893e: 4605         	mov	r5, r0
  308940: ab04         	add	r3, sp, #0x10
  308942: 4618         	mov	r0, r3
  308944: f0ac f4dc    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4ac9b8
  308948: 4603         	mov	r3, r0
  30894a: 4628         	mov	r0, r5
  30894c: 4619         	mov	r1, r3
  30894e: 9a05         	ldr	r2, [sp, #0x14]
  308950: f2d9 fe26    	bl	0x5e25a0 <cocos2d::CCUserDefault::setIntegerForKey(char const*, int)> @ imm = #0x2d9c4c
  308954: 4b12         	ldr	r3, [pc, #0x48]         @ 0x3089a0 <ControlsLayer::onPrevLeftInv(cocos2d::CCObject*)+0xf4>
  308956: 58e3         	ldr	r3, [r4, r3]
  308958: 681b         	ldr	r3, [r3]
  30895a: 4618         	mov	r0, r3
  30895c: 210d         	movs	r1, #0xd
  30895e: f0ef fa2f    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xef45e
  308962: 9801         	ldr	r0, [sp, #0x4]
  308964: f7ff f938    	bl	0x307bd8 <ControlsLayer::updateLabels()> @ imm = #-0xd90
  308968: ab04         	add	r3, sp, #0x10
  30896a: 4618         	mov	r0, r3
  30896c: f0ac f7d2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4acfa4
  308970: e00b         	b	0x30898a <ControlsLayer::onPrevLeftInv(cocos2d::CCObject*)+0xde> @ imm = #0x16
  308972: ab03         	add	r3, sp, #0xc
  308974: 4618         	mov	r0, r3
  308976: f081 f541    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x481a82
  30897a: f07f f397    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x47f72e
  30897e: ab04         	add	r3, sp, #0x10
  308980: 4618         	mov	r0, r3
  308982: f0ac f7c7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4acf8e
  308986: f07f f391    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x47f722
  30898a: b007         	add	sp, #0x1c
  30898c: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x30898d); words below are literal-pool data ---
  30898e: bf00         	nop
  308990: a152         	adr	r1, #328 <ControlsLayer::onPrevRightInv(cocos2d::CCObject*)+0x42>
  308992: 0062         	lsls	r2, r4, #0x1
  308994: d148         	bne	0x308a28 <ControlsLayer::onPrevRightInv(cocos2d::CCObject*)+0x84> @ imm = #0x90
  308996: 004b         	lsls	r3, r1, #0x1
  308998: d100         	bne	0x30899c <ControlsLayer::onPrevLeftInv(cocos2d::CCObject*)+0xf0> @ imm = #0x0
  30899a: 004b         	lsls	r3, r1, #0x1
  30899c: d11c         	bne	0x3089d8 <ControlsLayer::onPrevRightInv(cocos2d::CCObject*)+0x34> @ imm = #0x38
  30899e: 004b         	lsls	r3, r1, #0x1
  3089a0: d730         	bvc	0x308a04 <ControlsLayer::onPrevRightInv(cocos2d::CCObject*)+0x60> @ imm = #0x60
  3089a2: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== ControlsLayer::onPrevRightInv
//      file offset 0x3089a4 (= ELF address; Ghidra 0x3189a4), 248 bytes, Thumb-2
  3089a4: b530         	push	{r4, r5, lr}
  3089a6: b087         	sub	sp, #0x1c
  3089a8: 9001         	str	r0, [sp, #0x4]
  3089aa: 9100         	str	r1, [sp]
  3089ac: 4c36         	ldr	r4, [pc, #0xd8]         @ 0x308a88 <ControlsLayer::onPrevRightInv(cocos2d::CCObject*)+0xe4>
  3089ae: 447c         	add	r4, pc
  3089b0: ab03         	add	r3, sp, #0xc
  3089b2: 4618         	mov	r0, r3
  3089b4: f081 f51e    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x481a3c
  3089b8: aa04         	add	r2, sp, #0x10
  3089ba: ab03         	add	r3, sp, #0xc
  3089bc: 4610         	mov	r0, r2
  3089be: 4a33         	ldr	r2, [pc, #0xcc]         @ 0x308a8c <ControlsLayer::onPrevRightInv(cocos2d::CCObject*)+0xe8>
  3089c0: 447a         	add	r2, pc
  3089c2: 4611         	mov	r1, r2
  3089c4: 461a         	mov	r2, r3
  3089c6: f0ae f04b    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4ae096
  3089ca: ab03         	add	r3, sp, #0xc
  3089cc: 4618         	mov	r0, r3
  3089ce: f081 f515    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x481a2a
  3089d2: f2d9 fe2b    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2d9c56
  3089d6: 4603         	mov	r3, r0
  3089d8: 4618         	mov	r0, r3
  3089da: 4b2d         	ldr	r3, [pc, #0xb4]         @ 0x308a90 <ControlsLayer::onPrevRightInv(cocos2d::CCObject*)+0xec>
  3089dc: 447b         	add	r3, pc
  3089de: 4619         	mov	r1, r3
  3089e0: 2200         	movs	r2, #0x0
  3089e2: f2d9 fc21    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x2d9842
  3089e6: 4603         	mov	r3, r0
  3089e8: 2b01         	cmp	r3, #0x1
  3089ea: bf14         	ite	ne
  3089ec: 2300         	movne	r3, #0x0
  3089ee: 2301         	moveq	r3, #0x1
  3089f0: b2db         	uxtb	r3, r3
  3089f2: 2b00         	cmp	r3, #0x0
  3089f4: d006         	beq	0x308a04 <ControlsLayer::onPrevRightInv(cocos2d::CCObject*)+0x60> @ imm = #0xc
  3089f6: ab04         	add	r3, sp, #0x10
  3089f8: 4618         	mov	r0, r3
  3089fa: 4b26         	ldr	r3, [pc, #0x98]         @ 0x308a94 <ControlsLayer::onPrevRightInv(cocos2d::CCObject*)+0xf0>
  3089fc: 447b         	add	r3, pc
  3089fe: 4619         	mov	r1, r3
  308a00: f0ad f236    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4ad46c
  308a04: f2d9 fe12    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2d9c24
  308a08: 4605         	mov	r5, r0
  308a0a: ab04         	add	r3, sp, #0x10
  308a0c: 4618         	mov	r0, r3
  308a0e: f0ac f477    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4ac8ee
  308a12: 4603         	mov	r3, r0
  308a14: 4628         	mov	r0, r5
  308a16: 4619         	mov	r1, r3
  308a18: 2200         	movs	r2, #0x0
  308a1a: f2d9 fc05    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x2d980a
  308a1e: 4603         	mov	r3, r0
  308a20: 9305         	str	r3, [sp, #0x14]
  308a22: 9b05         	ldr	r3, [sp, #0x14]
  308a24: 3b01         	subs	r3, #0x1
  308a26: 9305         	str	r3, [sp, #0x14]
  308a28: 9b05         	ldr	r3, [sp, #0x14]
  308a2a: 2b00         	cmp	r3, #0x0
  308a2c: da01         	bge	0x308a32 <ControlsLayer::onPrevRightInv(cocos2d::CCObject*)+0x8e> @ imm = #0x2
  308a2e: 2303         	movs	r3, #0x3
  308a30: 9305         	str	r3, [sp, #0x14]
  308a32: f2d9 fdfb    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2d9bf6
  308a36: 4605         	mov	r5, r0
  308a38: ab04         	add	r3, sp, #0x10
  308a3a: 4618         	mov	r0, r3
  308a3c: f0ac f460    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4ac8c0
  308a40: 4603         	mov	r3, r0
  308a42: 4628         	mov	r0, r5
  308a44: 4619         	mov	r1, r3
  308a46: 9a05         	ldr	r2, [sp, #0x14]
  308a48: f2d9 fdaa    	bl	0x5e25a0 <cocos2d::CCUserDefault::setIntegerForKey(char const*, int)> @ imm = #0x2d9b54
  308a4c: 4b12         	ldr	r3, [pc, #0x48]         @ 0x308a98 <ControlsLayer::onPrevRightInv(cocos2d::CCObject*)+0xf4>
  308a4e: 58e3         	ldr	r3, [r4, r3]
  308a50: 681b         	ldr	r3, [r3]
  308a52: 4618         	mov	r0, r3
  308a54: 210d         	movs	r1, #0xd
  308a56: f0ef f9b3    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xef366
  308a5a: 9801         	ldr	r0, [sp, #0x4]
  308a5c: f7ff f8bc    	bl	0x307bd8 <ControlsLayer::updateLabels()> @ imm = #-0xe88
  308a60: ab04         	add	r3, sp, #0x10
  308a62: 4618         	mov	r0, r3
  308a64: f0ac f756    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4aceac
  308a68: e00b         	b	0x308a82 <ControlsLayer::onPrevRightInv(cocos2d::CCObject*)+0xde> @ imm = #0x16
  308a6a: ab03         	add	r3, sp, #0xc
  308a6c: 4618         	mov	r0, r3
  308a6e: f081 f4c5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x48198a
  308a72: f07f f31b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x47f636
  308a76: ab04         	add	r3, sp, #0x10
  308a78: 4618         	mov	r0, r3
  308a7a: f0ac f74b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ace96
  308a7e: f07f f315    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x47f62a
  308a82: b007         	add	sp, #0x1c
  308a84: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x308a85); words below are literal-pool data ---
  308a86: bf00         	nop
  308a88: a05a         	adr	r0, #360 <ControlsLayer::onPrevRightInv(cocos2d::CCObject*)+0x142>
  308a8a: 0062         	lsls	r2, r4, #0x1
  308a8c: d060         	beq	0x308b50 <ControlsLayer::onPrevRightInv(cocos2d::CCObject*)+0x1ac> @ imm = #0xc0
  308a8e: 004b         	lsls	r3, r1, #0x1
  308a90: d008         	beq	0x308aa4 <ControlsLayer::onPrevRightInv(cocos2d::CCObject*)+0x100> @ imm = #0x10
  308a92: 004b         	lsls	r3, r1, #0x1
  308a94: d014         	beq	0x308ac0 <ControlsLayer::onPrevRightInv(cocos2d::CCObject*)+0x11c> @ imm = #0x28
  308a96: 004b         	lsls	r3, r1, #0x1
  308a98: d730         	bvc	0x308afc <ControlsLayer::onPrevRightInv(cocos2d::CCObject*)+0x158> @ imm = #0x60
  308a9a: ffff b510    	vsli.32	d27, d0, #0x1f
