// ScoreScreen: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 16 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../ScoreScreen.cpp

// ==== ScoreScreen::create
//      file offset 0x33a09c (= ELF address; Ghidra 0x34a09c), 112 bytes, Thumb-2
  33a09c: b510         	push	{r4, lr}
  33a09e: b082         	sub	sp, #0x8
  33a0a0: f44f 7094    	mov.w	r0, #0x128
  33a0a4: f04d f45e    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x44d8bc
  33a0a8: 4603         	mov	r3, r0
  33a0aa: 461c         	mov	r4, r3
  33a0ac: 4620         	mov	r0, r4
  33a0ae: f09b fb79    	bl	0x3d57a4 <ScoreScreen::ScoreScreen()> @ imm = #0x9b6f2
  33a0b2: 9401         	str	r4, [sp, #0x4]
  33a0b4: 9b01         	ldr	r3, [sp, #0x4]
  33a0b6: 2b00         	cmp	r3, #0x0
  33a0b8: d00a         	beq	0x33a0d0 <ScoreScreen::create()+0x34> @ imm = #0x14
  33a0ba: 9b01         	ldr	r3, [sp, #0x4]
  33a0bc: 681b         	ldr	r3, [r3]
  33a0be: 3318         	adds	r3, #0x18
  33a0c0: 681b         	ldr	r3, [r3]
  33a0c2: 9801         	ldr	r0, [sp, #0x4]
  33a0c4: 4798         	blx	r3
  33a0c6: 4603         	mov	r3, r0
  33a0c8: 2b00         	cmp	r3, #0x0
  33a0ca: d001         	beq	0x33a0d0 <ScoreScreen::create()+0x34> @ imm = #0x2
  33a0cc: 2301         	movs	r3, #0x1
  33a0ce: e000         	b	0x33a0d2 <ScoreScreen::create()+0x36> @ imm = #0x0
  33a0d0: 2300         	movs	r3, #0x0
  33a0d2: 2b00         	cmp	r3, #0x0
  33a0d4: d005         	beq	0x33a0e2 <ScoreScreen::create()+0x46> @ imm = #0xa
  33a0d6: 9b01         	ldr	r3, [sp, #0x4]
  33a0d8: 4618         	mov	r0, r3
  33a0da: f25d ff0f    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x25de1e
  33a0de: 9b01         	ldr	r3, [sp, #0x4]
  33a0e0: e011         	b	0x33a106 <ScoreScreen::create()+0x6a> @ imm = #0x22
  33a0e2: 9b01         	ldr	r3, [sp, #0x4]
  33a0e4: 2b00         	cmp	r3, #0x0
  33a0e6: d005         	beq	0x33a0f4 <ScoreScreen::create()+0x58> @ imm = #0xa
  33a0e8: 9b01         	ldr	r3, [sp, #0x4]
  33a0ea: 681b         	ldr	r3, [r3]
  33a0ec: 3308         	adds	r3, #0x8
  33a0ee: 681b         	ldr	r3, [r3]
  33a0f0: 9801         	ldr	r0, [sp, #0x4]
  33a0f2: 4798         	blx	r3
  33a0f4: 2300         	movs	r3, #0x0
  33a0f6: 9301         	str	r3, [sp, #0x4]
  33a0f8: 2300         	movs	r3, #0x0
  33a0fa: e004         	b	0x33a106 <ScoreScreen::create()+0x6a> @ imm = #0x8
  33a0fc: 4620         	mov	r0, r4
  33a0fe: f04d f7d1    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x44dfa2
  33a102: f04d f7d3    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x44dfa6
  33a106: 4618         	mov	r0, r3
  33a108: b002         	add	sp, #0x8
  33a10a: bd10         	pop	{r4, pc}

// ==== ScoreScreen::ScoreScreen
//      file offset 0x3d57a4 (= ELF address; Ghidra 0x3e57a4), 72 bytes, Thumb-2
  3d57a4: b510         	push	{r4, lr}
  3d57a6: b082         	sub	sp, #0x8
  3d57a8: 9001         	str	r0, [sp, #0x4]
  3d57aa: 4c0e         	ldr	r4, [pc, #0x38]         @ 0x3d57e4 <ScoreScreen::ScoreScreen()+0x40>
  3d57ac: 447c         	add	r4, pc
  3d57ae: 9b01         	ldr	r3, [sp, #0x4]
  3d57b0: 4618         	mov	r0, r3
  3d57b2: f1b9 ff41    	bl	0x58f638 <cocos2d::CCNode::CCNode()> @ imm = #0x1b9e82
  3d57b6: 9b01         	ldr	r3, [sp, #0x4]
  3d57b8: 4a0b         	ldr	r2, [pc, #0x2c]         @ 0x3d57e8 <ScoreScreen::ScoreScreen()+0x44>
  3d57ba: 58a2         	ldr	r2, [r4, r2]
  3d57bc: 3208         	adds	r2, #0x8
  3d57be: 601a         	str	r2, [r3]
  3d57c0: 9b01         	ldr	r3, [sp, #0x4]
  3d57c2: f503 7390    	add.w	r3, r3, #0x120
  3d57c6: 4618         	mov	r0, r3
  3d57c8: f1bd fa84    	bl	0x592cd4 <cocos2d::CCPoint::CCPoint()> @ imm = #0x1bd508
  3d57cc: 9b01         	ldr	r3, [sp, #0x4]
  3d57ce: e005         	b	0x3d57dc <ScoreScreen::ScoreScreen()+0x38> @ imm = #0xa
  3d57d0: 9b01         	ldr	r3, [sp, #0x4]
  3d57d2: 4618         	mov	r0, r3
  3d57d4: f1ba f836    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x1ba06c
  3d57d8: f3b2 fc68    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3b28d0
  3d57dc: 4618         	mov	r0, r3
  3d57de: b002         	add	sp, #0x8
  3d57e0: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3d57e1); words below are literal-pool data ---
  3d57e2: bf00         	nop
  3d57e4: d25c         	bhs	0x3d58a0 <ScoreScreen::init()+0xb4> @ imm = #0xb8
  3d57e6: 0055         	lsls	r5, r2, #0x1
  3d57e8: dec8         	udf	#0xc8
  3d57ea: ffff b570    	<unknown>

// ==== ScoreScreen::init
//      file offset 0x3d57ec (= ELF address; Ghidra 0x3e57ec), 2260 bytes, Thumb-2
  3d57ec: b570         	push	{r4, r5, r6, lr}
  3d57ee: ed2d 8b02    	vpush	{d8}
  3d57f2: b09c         	sub	sp, #0x70
  3d57f4: 9003         	str	r0, [sp, #0xc]
  3d57f6: f8df 486c    	ldr.w	r4, [pc, #0x86c]        @ 0x3d6064 <ScoreScreen::init()+0x878>
  3d57fa: 447c         	add	r4, pc
  3d57fc: 9b03         	ldr	r3, [sp, #0xc]
  3d57fe: 4618         	mov	r0, r3
  3d5800: f1ba f924    	bl	0x58fa4c <cocos2d::CCNode::init()> @ imm = #0x1ba248
  3d5804: 4603         	mov	r3, r0
  3d5806: f88d 3017    	strb.w	r3, [sp, #0x17]
  3d580a: f89d 3017    	ldrb.w	r3, [sp, #0x17]
  3d580e: f083 0301    	eor	r3, r3, #0x1
  3d5812: b2db         	uxtb	r3, r3
  3d5814: 2b00         	cmp	r3, #0x0
  3d5816: d002         	beq	0x3d581e <ScoreScreen::init()+0x32> @ imm = #0x4
  3d5818: 2300         	movs	r3, #0x0
  3d581a: f000 bc1e    	b.w	0x3d605a <ScoreScreen::init()+0x86e> @ imm = #0x83c
  3d581e: f20a ff47    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x20ae8e
  3d5822: 4602         	mov	r2, r0
  3d5824: 9b03         	ldr	r3, [sp, #0xc]
  3d5826: f8df 1840    	ldr.w	r1, [pc, #0x840]        @ 0x3d6068 <ScoreScreen::init()+0x87c>
  3d582a: 5861         	ldr	r1, [r4, r1]
  3d582c: 9114         	str	r1, [sp, #0x50]
  3d582e: 2100         	movs	r1, #0x0
  3d5830: 9115         	str	r1, [sp, #0x54]
  3d5832: f8df 1838    	ldr.w	r1, [pc, #0x838]        @ 0x3d606c <ScoreScreen::init()+0x880>
  3d5836: 4479         	add	r1, pc
  3d5838: 9100         	str	r1, [sp]
  3d583a: 2100         	movs	r1, #0x0
  3d583c: 9101         	str	r1, [sp, #0x4]
  3d583e: 4610         	mov	r0, r2
  3d5840: 4619         	mov	r1, r3
  3d5842: ab14         	add	r3, sp, #0x50
  3d5844: cb0c         	ldm	r3, {r2, r3}
  3d5846: f20a ffcf    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x20af9e
  3d584a: 9b03         	ldr	r3, [sp, #0xc]
  3d584c: f04f 0200    	mov.w	r2, #0x0
  3d5850: f8c3 211c    	str.w	r2, [r3, #0x11c]
  3d5854: 9b03         	ldr	r3, [sp, #0xc]
  3d5856: f04f 0200    	mov.w	r2, #0x0
  3d585a: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  3d585e: 9b03         	ldr	r3, [sp, #0xc]
  3d5860: 681b         	ldr	r3, [r3]
  3d5862: 3390         	adds	r3, #0x90
  3d5864: 681b         	ldr	r3, [r3]
  3d5866: 9a03         	ldr	r2, [sp, #0xc]
  3d5868: 4610         	mov	r0, r2
  3d586a: 2100         	movs	r1, #0x0
  3d586c: 4798         	blx	r3
  3d586e: 9b03         	ldr	r3, [sp, #0xc]
  3d5870: 2200         	movs	r2, #0x0
  3d5872: f883 2114    	strb.w	r2, [r3, #0x114]
  3d5876: 9b03         	ldr	r3, [sp, #0xc]
  3d5878: f04f 0200    	mov.w	r2, #0x0
  3d587c: f8c3 2118    	str.w	r2, [r3, #0x118]
  3d5880: 9b03         	ldr	r3, [sp, #0xc]
  3d5882: f503 7590    	add.w	r5, r3, #0x120
  3d5886: ab1a         	add	r3, sp, #0x68
  3d5888: 4618         	mov	r0, r3
  3d588a: f44f 4180    	mov.w	r1, #0x4000
  3d588e: f2cc 611c    	movt	r1, #0xc61c
  3d5892: f44f 4280    	mov.w	r2, #0x4000
  3d5896: f2cc 621c    	movt	r2, #0xc61c
  3d589a: f1bd fa29    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1bd452
  3d589e: ab1a         	add	r3, sp, #0x68
  3d58a0: 4628         	mov	r0, r5
  3d58a2: 4619         	mov	r1, r3
  3d58a4: f1bd fa52    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x1bd4a4
  3d58a8: 9b03         	ldr	r3, [sp, #0xc]
  3d58aa: 681b         	ldr	r3, [r3]
  3d58ac: 334c         	adds	r3, #0x4c
  3d58ae: 681b         	ldr	r3, [r3]
  3d58b0: 9903         	ldr	r1, [sp, #0xc]
  3d58b2: 9a03         	ldr	r2, [sp, #0xc]
  3d58b4: f502 7290    	add.w	r2, r2, #0x120
  3d58b8: 4608         	mov	r0, r1
  3d58ba: 4611         	mov	r1, r2
  3d58bc: 4798         	blx	r3
  3d58be: f1c5 fe59    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x1c5cb2
  3d58c2: 4603         	mov	r3, r0
  3d58c4: aa0c         	add	r2, sp, #0x30
  3d58c6: 4610         	mov	r0, r2
  3d58c8: 4619         	mov	r1, r3
  3d58ca: f1c6 fcc7    	bl	0x59c25c <cocos2d::CCDirector::getWinSize()> @ imm = #0x1c698e
  3d58ce: ed9d 7a0c    	vldr	s14, [sp, #48]
  3d58d2: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3d58d6: eec7 6a27    	vdiv.f32	s13, s14, s15
  3d58da: ed9d 7a0d    	vldr	s14, [sp, #52]
  3d58de: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3d58e2: eec7 7a27    	vdiv.f32	s15, s14, s15
  3d58e6: ab0e         	add	r3, sp, #0x38
  3d58e8: 4618         	mov	r0, r3
  3d58ea: ee16 1a90    	vmov	r1, s13
  3d58ee: ee17 2a90    	vmov	r2, s15
  3d58f2: f1bd f9fd    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1bd3fa
  3d58f6: f8df 3778    	ldr.w	r3, [pc, #0x778]        @ 0x3d6070 <ScoreScreen::init()+0x884>
  3d58fa: 447b         	add	r3, pc
  3d58fc: 4618         	mov	r0, r3
  3d58fe: f202 fc41    	bl	0x5d8184 <cocos2d::CCSprite::create(char const*)> @ imm = #0x202882
  3d5902: 4602         	mov	r2, r0
  3d5904: 9b03         	ldr	r3, [sp, #0xc]
  3d5906: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  3d590a: 9b03         	ldr	r3, [sp, #0xc]
  3d590c: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3d5910: 4618         	mov	r0, r3
  3d5912: f1c2 fae9    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1c25d2
  3d5916: 9b03         	ldr	r3, [sp, #0xc]
  3d5918: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3d591c: 681b         	ldr	r3, [r3]
  3d591e: 334c         	adds	r3, #0x4c
  3d5920: 681b         	ldr	r3, [r3]
  3d5922: 9a03         	ldr	r2, [sp, #0xc]
  3d5924: f8d2 10e8    	ldr.w	r1, [r2, #0xe8]
  3d5928: aa0e         	add	r2, sp, #0x38
  3d592a: 4608         	mov	r0, r1
  3d592c: 4611         	mov	r1, r2
  3d592e: 4798         	blx	r3
  3d5930: 9b03         	ldr	r3, [sp, #0xc]
  3d5932: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3d5936: 681b         	ldr	r3, [r3]
  3d5938: f503 73d2    	add.w	r3, r3, #0x1a4
  3d593c: 681b         	ldr	r3, [r3]
  3d593e: 9a03         	ldr	r2, [sp, #0xc]
  3d5940: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  3d5944: 4610         	mov	r0, r2
  3d5946: 21b4         	movs	r1, #0xb4
  3d5948: 4798         	blx	r3
  3d594a: 9b03         	ldr	r3, [sp, #0xc]
  3d594c: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3d5950: 681b         	ldr	r3, [r3]
  3d5952: 3340         	adds	r3, #0x40
  3d5954: 681b         	ldr	r3, [r3]
  3d5956: 9a03         	ldr	r2, [sp, #0xc]
  3d5958: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  3d595c: 4610         	mov	r0, r2
  3d595e: f243 3133    	movw	r1, #0x3333
  3d5962: f6c3 7133    	movt	r1, #0x3f33
  3d5966: 4798         	blx	r3
  3d5968: 9b03         	ldr	r3, [sp, #0xc]
  3d596a: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3d596e: 681b         	ldr	r3, [r3]
  3d5970: f503 73de    	add.w	r3, r3, #0x1bc
  3d5974: 681d         	ldr	r5, [r3]
  3d5976: 9b03         	ldr	r3, [sp, #0xc]
  3d5978: f8d3 60e8    	ldr.w	r6, [r3, #0xe8]
  3d597c: 2064         	movs	r0, #0x64
  3d597e: 2164         	movs	r1, #0x64
  3d5980: 2264         	movs	r2, #0x64
  3d5982: f7fd f925    	bl	0x3d2bd0 <ScoreKeeper::getRankChange()+0x140> @ imm = #-0x2db6
  3d5986: 4603         	mov	r3, r0
  3d5988: 461a         	mov	r2, r3
  3d598a: f88d 2068    	strb.w	r2, [sp, #0x68]
  3d598e: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3d5992: f88d 2069    	strb.w	r2, [sp, #0x69]
  3d5996: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3d599a: f88d 306a    	strb.w	r3, [sp, #0x6a]
  3d599e: ab1a         	add	r3, sp, #0x68
  3d59a0: 4630         	mov	r0, r6
  3d59a2: 4619         	mov	r1, r3
  3d59a4: 47a8         	blx	r5
  3d59a6: 9b03         	ldr	r3, [sp, #0xc]
  3d59a8: 681b         	ldr	r3, [r3]
  3d59aa: 33c8         	adds	r3, #0xc8
  3d59ac: 681b         	ldr	r3, [r3]
  3d59ae: 9903         	ldr	r1, [sp, #0xc]
  3d59b0: 9a03         	ldr	r2, [sp, #0xc]
  3d59b2: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  3d59b6: 4608         	mov	r0, r1
  3d59b8: 4611         	mov	r1, r2
  3d59ba: 4798         	blx	r3
  3d59bc: f7d8 fd9e    	bl	0x3ae4fc <ScoreList::create()> @ imm = #-0x274c4
  3d59c0: 4602         	mov	r2, r0
  3d59c2: 9b03         	ldr	r3, [sp, #0xc]
  3d59c4: f8c3 20fc    	str.w	r2, [r3, #0xfc]
  3d59c8: 9b03         	ldr	r3, [sp, #0xc]
  3d59ca: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3d59ce: 4618         	mov	r0, r3
  3d59d0: f1c2 fa8a    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1c2514
  3d59d4: 9b03         	ldr	r3, [sp, #0xc]
  3d59d6: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3d59da: 681b         	ldr	r3, [r3]
  3d59dc: 334c         	adds	r3, #0x4c
  3d59de: 681b         	ldr	r3, [r3]
  3d59e0: 9a03         	ldr	r2, [sp, #0xc]
  3d59e2: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3d59e6: 4611         	mov	r1, r2
  3d59e8: aa0e         	add	r2, sp, #0x38
  3d59ea: 4608         	mov	r0, r1
  3d59ec: 4611         	mov	r1, r2
  3d59ee: 4798         	blx	r3
  3d59f0: 9b03         	ldr	r3, [sp, #0xc]
  3d59f2: 681b         	ldr	r3, [r3]
  3d59f4: 33cc         	adds	r3, #0xcc
  3d59f6: 681b         	ldr	r3, [r3]
  3d59f8: 9903         	ldr	r1, [sp, #0xc]
  3d59fa: 9a03         	ldr	r2, [sp, #0xc]
  3d59fc: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3d5a00: 4608         	mov	r0, r1
  3d5a02: 4611         	mov	r1, r2
  3d5a04: 2200         	movs	r2, #0x0
  3d5a06: 4798         	blx	r3
  3d5a08: f8df 3668    	ldr.w	r3, [pc, #0x668]        @ 0x3d6074 <ScoreScreen::init()+0x888>
  3d5a0c: 447b         	add	r3, pc
  3d5a0e: 4618         	mov	r0, r3
  3d5a10: f202 fc78    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2028f0
  3d5a14: 4603         	mov	r3, r0
  3d5a16: 9306         	str	r3, [sp, #0x18]
  3d5a18: f8df 365c    	ldr.w	r3, [pc, #0x65c]        @ 0x3d6078 <ScoreScreen::init()+0x88c>
  3d5a1c: 447b         	add	r3, pc
  3d5a1e: 4618         	mov	r0, r3
  3d5a20: f202 fc70    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2028e0
  3d5a24: 4603         	mov	r3, r0
  3d5a26: 9307         	str	r3, [sp, #0x1c]
  3d5a28: f8df 3650    	ldr.w	r3, [pc, #0x650]        @ 0x3d607c <ScoreScreen::init()+0x890>
  3d5a2c: 447b         	add	r3, pc
  3d5a2e: 4618         	mov	r0, r3
  3d5a30: f202 fc68    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2028d0
  3d5a34: 4603         	mov	r3, r0
  3d5a36: 9308         	str	r3, [sp, #0x20]
  3d5a38: f8df 3644    	ldr.w	r3, [pc, #0x644]        @ 0x3d6080 <ScoreScreen::init()+0x894>
  3d5a3c: 447b         	add	r3, pc
  3d5a3e: 4618         	mov	r0, r3
  3d5a40: f202 fc60    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2028c0
  3d5a44: 4603         	mov	r3, r0
  3d5a46: 9309         	str	r3, [sp, #0x24]
  3d5a48: f8df 3638    	ldr.w	r3, [pc, #0x638]        @ 0x3d6084 <ScoreScreen::init()+0x898>
  3d5a4c: 447b         	add	r3, pc
  3d5a4e: 4618         	mov	r0, r3
  3d5a50: f202 fc58    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2028b0
  3d5a54: 4603         	mov	r3, r0
  3d5a56: 930a         	str	r3, [sp, #0x28]
  3d5a58: f8df 362c    	ldr.w	r3, [pc, #0x62c]        @ 0x3d6088 <ScoreScreen::init()+0x89c>
  3d5a5c: 447b         	add	r3, pc
  3d5a5e: 4618         	mov	r0, r3
  3d5a60: f202 fc50    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2028a0
  3d5a64: 4603         	mov	r3, r0
  3d5a66: 930b         	str	r3, [sp, #0x2c]
  3d5a68: 9a03         	ldr	r2, [sp, #0xc]
  3d5a6a: f8df 3620    	ldr.w	r3, [pc, #0x620]        @ 0x3d608c <ScoreScreen::init()+0x8a0>
  3d5a6e: 58e3         	ldr	r3, [r4, r3]
  3d5a70: 9316         	str	r3, [sp, #0x58]
  3d5a72: 2300         	movs	r3, #0x0
  3d5a74: 9317         	str	r3, [sp, #0x5c]
  3d5a76: 9b17         	ldr	r3, [sp, #0x5c]
  3d5a78: 9300         	str	r3, [sp]
  3d5a7a: 9b16         	ldr	r3, [sp, #0x58]
  3d5a7c: 9806         	ldr	r0, [sp, #0x18]
  3d5a7e: 9907         	ldr	r1, [sp, #0x1c]
  3d5a80: f1e2 fc54    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x1e28a8
  3d5a84: 4602         	mov	r2, r0
  3d5a86: 9b03         	ldr	r3, [sp, #0xc]
  3d5a88: f8c3 2104    	str.w	r2, [r3, #0x104]
  3d5a8c: 9b03         	ldr	r3, [sp, #0xc]
  3d5a8e: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  3d5a92: 681b         	ldr	r3, [r3]
  3d5a94: 334c         	adds	r3, #0x4c
  3d5a96: 681d         	ldr	r5, [r3]
  3d5a98: 9b03         	ldr	r3, [sp, #0xc]
  3d5a9a: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  3d5a9e: 461e         	mov	r6, r3
  3d5aa0: ab1a         	add	r3, sp, #0x68
  3d5aa2: 4618         	mov	r0, r3
  3d5aa4: f04f 0100    	mov.w	r1, #0x0
  3d5aa8: f2cc 21dc    	movt	r1, #0xc2dc
  3d5aac: f04f 0200    	mov.w	r2, #0x0
  3d5ab0: f2cc 2296    	movt	r2, #0xc296
  3d5ab4: f1bd f91c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1bd238
  3d5ab8: ab1a         	add	r3, sp, #0x68
  3d5aba: 4630         	mov	r0, r6
  3d5abc: 4619         	mov	r1, r3
  3d5abe: 47a8         	blx	r5
  3d5ac0: 9a03         	ldr	r2, [sp, #0xc]
  3d5ac2: f8df 35cc    	ldr.w	r3, [pc, #0x5cc]        @ 0x3d6090 <ScoreScreen::init()+0x8a4>
  3d5ac6: 58e3         	ldr	r3, [r4, r3]
  3d5ac8: 9318         	str	r3, [sp, #0x60]
  3d5aca: 2300         	movs	r3, #0x0
  3d5acc: 9319         	str	r3, [sp, #0x64]
  3d5ace: 9b19         	ldr	r3, [sp, #0x64]
  3d5ad0: 9300         	str	r3, [sp]
  3d5ad2: 9b18         	ldr	r3, [sp, #0x60]
  3d5ad4: 9808         	ldr	r0, [sp, #0x20]
  3d5ad6: 9909         	ldr	r1, [sp, #0x24]
  3d5ad8: f1e2 fc28    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x1e2850
  3d5adc: 4602         	mov	r2, r0
  3d5ade: 9b03         	ldr	r3, [sp, #0xc]
  3d5ae0: f8c3 2108    	str.w	r2, [r3, #0x108]
  3d5ae4: 9b03         	ldr	r3, [sp, #0xc]
  3d5ae6: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3d5aea: 681b         	ldr	r3, [r3]
  3d5aec: 334c         	adds	r3, #0x4c
  3d5aee: 681d         	ldr	r5, [r3]
  3d5af0: 9b03         	ldr	r3, [sp, #0xc]
  3d5af2: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3d5af6: 461e         	mov	r6, r3
  3d5af8: ab1a         	add	r3, sp, #0x68
  3d5afa: 4618         	mov	r0, r3
  3d5afc: f04f 0100    	mov.w	r1, #0x0
  3d5b00: f2c4 21dc    	movt	r1, #0x42dc
  3d5b04: f04f 0200    	mov.w	r2, #0x0
  3d5b08: f2cc 2296    	movt	r2, #0xc296
  3d5b0c: f1bd f8f0    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1bd1e0
  3d5b10: ab1a         	add	r3, sp, #0x68
  3d5b12: 4630         	mov	r0, r6
  3d5b14: 4619         	mov	r1, r3
  3d5b16: 47a8         	blx	r5
  3d5b18: 9a03         	ldr	r2, [sp, #0xc]
  3d5b1a: f8df 3578    	ldr.w	r3, [pc, #0x578]        @ 0x3d6094 <ScoreScreen::init()+0x8a8>
  3d5b1e: 58e3         	ldr	r3, [r4, r3]
  3d5b20: 931a         	str	r3, [sp, #0x68]
  3d5b22: 2300         	movs	r3, #0x0
  3d5b24: 931b         	str	r3, [sp, #0x6c]
  3d5b26: 9b1b         	ldr	r3, [sp, #0x6c]
  3d5b28: 9300         	str	r3, [sp]
  3d5b2a: 9b1a         	ldr	r3, [sp, #0x68]
  3d5b2c: 980a         	ldr	r0, [sp, #0x28]
  3d5b2e: 990b         	ldr	r1, [sp, #0x2c]
  3d5b30: f1e2 fbfc    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x1e27f8
  3d5b34: 4602         	mov	r2, r0
  3d5b36: 9b03         	ldr	r3, [sp, #0xc]
  3d5b38: f8c3 210c    	str.w	r2, [r3, #0x10c]
  3d5b3c: 9b03         	ldr	r3, [sp, #0xc]
  3d5b3e: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3d5b42: 681b         	ldr	r3, [r3]
  3d5b44: 334c         	adds	r3, #0x4c
  3d5b46: 681c         	ldr	r4, [r3]
  3d5b48: 9b03         	ldr	r3, [sp, #0xc]
  3d5b4a: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3d5b4e: 461d         	mov	r5, r3
  3d5b50: ab12         	add	r3, sp, #0x48
  3d5b52: 4618         	mov	r0, r3
  3d5b54: f04f 0100    	mov.w	r1, #0x0
  3d5b58: f04f 0200    	mov.w	r2, #0x0
  3d5b5c: f2cc 2296    	movt	r2, #0xc296
  3d5b60: f1bd f8c6    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1bd18c
  3d5b64: ab12         	add	r3, sp, #0x48
  3d5b66: 4628         	mov	r0, r5
  3d5b68: 4619         	mov	r1, r3
  3d5b6a: 47a0         	blx	r4
  3d5b6c: 9b03         	ldr	r3, [sp, #0xc]
  3d5b6e: f8d3 1108    	ldr.w	r1, [r3, #0x108]
  3d5b72: 9b03         	ldr	r3, [sp, #0xc]
  3d5b74: f8d3 210c    	ldr.w	r2, [r3, #0x10c]
  3d5b78: 9b03         	ldr	r3, [sp, #0xc]
  3d5b7a: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  3d5b7e: 4608         	mov	r0, r1
  3d5b80: 4611         	mov	r1, r2
  3d5b82: 461a         	mov	r2, r3
  3d5b84: 2300         	movs	r3, #0x0
  3d5b86: f1df fad9    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x1df5b2
  3d5b8a: 4602         	mov	r2, r0
  3d5b8c: 9b03         	ldr	r3, [sp, #0xc]
  3d5b8e: f8c3 20ec    	str.w	r2, [r3, #0xec]
  3d5b92: 9b03         	ldr	r3, [sp, #0xc]
  3d5b94: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3d5b98: 4618         	mov	r0, r3
  3d5b9a: f1c2 f9a5    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1c234a
  3d5b9e: 9b03         	ldr	r3, [sp, #0xc]
  3d5ba0: 681b         	ldr	r3, [r3]
  3d5ba2: 33c8         	adds	r3, #0xc8
  3d5ba4: 681b         	ldr	r3, [r3]
  3d5ba6: 9903         	ldr	r1, [sp, #0xc]
  3d5ba8: 9a03         	ldr	r2, [sp, #0xc]
  3d5baa: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  3d5bae: 4608         	mov	r0, r1
  3d5bb0: 4611         	mov	r1, r2
  3d5bb2: 4798         	blx	r3
  3d5bb4: 2320         	movs	r3, #0x20
  3d5bb6: 9300         	str	r3, [sp]
  3d5bb8: f8df 34dc    	ldr.w	r3, [pc, #0x4dc]        @ 0x3d6098 <ScoreScreen::init()+0x8ac>
  3d5bbc: 447b         	add	r3, pc
  3d5bbe: 4618         	mov	r0, r3
  3d5bc0: f8df 34d8    	ldr.w	r3, [pc, #0x4d8]        @ 0x3d609c <ScoreScreen::init()+0x8b0>
  3d5bc4: 447b         	add	r3, pc
  3d5bc6: 4619         	mov	r1, r3
  3d5bc8: 2220         	movs	r2, #0x20
  3d5bca: 2320         	movs	r3, #0x20
  3d5bcc: f1cf fbd4    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1cf7a8
  3d5bd0: 4602         	mov	r2, r0
  3d5bd2: 9b03         	ldr	r3, [sp, #0xc]
  3d5bd4: f8c3 20f0    	str.w	r2, [r3, #0xf0]
  3d5bd8: 9b03         	ldr	r3, [sp, #0xc]
  3d5bda: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3d5bde: 4618         	mov	r0, r3
  3d5be0: f1c2 f982    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1c2304
  3d5be4: 9b03         	ldr	r3, [sp, #0xc]
  3d5be6: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3d5bea: 4618         	mov	r0, r3
  3d5bec: 2118         	movs	r1, #0x18
  3d5bee: f1d0 f8c9    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1d0192
  3d5bf2: 9b03         	ldr	r3, [sp, #0xc]
  3d5bf4: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3d5bf8: 681b         	ldr	r3, [r3]
  3d5bfa: 337c         	adds	r3, #0x7c
  3d5bfc: 681c         	ldr	r4, [r3]
  3d5bfe: 9b03         	ldr	r3, [sp, #0xc]
  3d5c00: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3d5c04: 461d         	mov	r5, r3
  3d5c06: ab12         	add	r3, sp, #0x48
  3d5c08: 4618         	mov	r0, r3
  3d5c0a: f04f 517c    	mov.w	r1, #0x3f000000
  3d5c0e: f04f 527c    	mov.w	r2, #0x3f000000
  3d5c12: f1bd f86d    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1bd0da
  3d5c16: ab12         	add	r3, sp, #0x48
  3d5c18: 4628         	mov	r0, r5
  3d5c1a: 4619         	mov	r1, r3
  3d5c1c: 47a0         	blx	r4
  3d5c1e: 9b03         	ldr	r3, [sp, #0xc]
  3d5c20: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3d5c24: 681b         	ldr	r3, [r3]
  3d5c26: 3340         	adds	r3, #0x40
  3d5c28: 681b         	ldr	r3, [r3]
  3d5c2a: 9a03         	ldr	r2, [sp, #0xc]
  3d5c2c: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  3d5c30: 4610         	mov	r0, r2
  3d5c32: f04f 517c    	mov.w	r1, #0x3f000000
  3d5c36: 4798         	blx	r3
  3d5c38: 9b03         	ldr	r3, [sp, #0xc]
  3d5c3a: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3d5c3e: 681b         	ldr	r3, [r3]
  3d5c40: 334c         	adds	r3, #0x4c
  3d5c42: 681c         	ldr	r4, [r3]
  3d5c44: 9b03         	ldr	r3, [sp, #0xc]
  3d5c46: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3d5c4a: 461d         	mov	r5, r3
  3d5c4c: 9b03         	ldr	r3, [sp, #0xc]
  3d5c4e: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  3d5c52: 681b         	ldr	r3, [r3]
  3d5c54: 3350         	adds	r3, #0x50
  3d5c56: 681b         	ldr	r3, [r3]
  3d5c58: 9a03         	ldr	r2, [sp, #0xc]
  3d5c5a: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  3d5c5e: 4610         	mov	r0, r2
  3d5c60: 4798         	blx	r3
  3d5c62: 4603         	mov	r3, r0
  3d5c64: ed93 7a00    	vldr	s14, [r3]
  3d5c68: eef2 7a00    	vmov.f32	s15, #8.000000e+00
  3d5c6c: ee37 8a27    	vadd.f32	s16, s14, s15
  3d5c70: 9b03         	ldr	r3, [sp, #0xc]
  3d5c72: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  3d5c76: 681b         	ldr	r3, [r3]
  3d5c78: 3350         	adds	r3, #0x50
  3d5c7a: 681b         	ldr	r3, [r3]
  3d5c7c: 9a03         	ldr	r2, [sp, #0xc]
  3d5c7e: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  3d5c82: 4610         	mov	r0, r2
  3d5c84: 4798         	blx	r3
  3d5c86: 4603         	mov	r3, r0
  3d5c88: 685b         	ldr	r3, [r3, #0x4]
  3d5c8a: aa10         	add	r2, sp, #0x40
  3d5c8c: 4610         	mov	r0, r2
  3d5c8e: ee18 1a10    	vmov	r1, s16
  3d5c92: 461a         	mov	r2, r3
  3d5c94: f1bd f82c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1bd058
  3d5c98: a912         	add	r1, sp, #0x48
  3d5c9a: aa0e         	add	r2, sp, #0x38
  3d5c9c: ab10         	add	r3, sp, #0x40
  3d5c9e: 4608         	mov	r0, r1
  3d5ca0: 4611         	mov	r1, r2
  3d5ca2: 461a         	mov	r2, r3
  3d5ca4: f7fc ffc2    	bl	0x3d2c2c <ScoreKeeper::getRankChange()+0x19c> @ imm = #-0x307c
  3d5ca8: ab12         	add	r3, sp, #0x48
  3d5caa: 4628         	mov	r0, r5
  3d5cac: 4619         	mov	r1, r3
  3d5cae: 47a0         	blx	r4
  3d5cb0: 9b03         	ldr	r3, [sp, #0xc]
  3d5cb2: 681b         	ldr	r3, [r3]
  3d5cb4: 33cc         	adds	r3, #0xcc
  3d5cb6: 681b         	ldr	r3, [r3]
  3d5cb8: 9903         	ldr	r1, [sp, #0xc]
  3d5cba: 9a03         	ldr	r2, [sp, #0xc]
  3d5cbc: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  3d5cc0: 4608         	mov	r0, r1
  3d5cc2: 4611         	mov	r1, r2
  3d5cc4: 2200         	movs	r2, #0x0
  3d5cc6: 4798         	blx	r3
  3d5cc8: 4bf5         	ldr	r3, [pc, #0x3d4]        @ 0x3d60a0 <ScoreScreen::init()+0x8b4>
  3d5cca: 447b         	add	r3, pc
  3d5ccc: 4618         	mov	r0, r3
  3d5cce: 4bf5         	ldr	r3, [pc, #0x3d4]        @ 0x3d60a4 <ScoreScreen::init()+0x8b8>
  3d5cd0: 447b         	add	r3, pc
  3d5cd2: 4619         	mov	r1, r3
  3d5cd4: f04f 0200    	mov.w	r2, #0x0
  3d5cd8: f2c4 12b0    	movt	r2, #0x41b0
  3d5cdc: f1d6 f9a0    	bl	0x5ac020 <cocos2d::CCLabelTTF::create(char const*, char const*, float)> @ imm = #0x1d6340
  3d5ce0: 4602         	mov	r2, r0
  3d5ce2: 9b03         	ldr	r3, [sp, #0xc]
  3d5ce4: f8c3 2110    	str.w	r2, [r3, #0x110]
  3d5ce8: 9b03         	ldr	r3, [sp, #0xc]
  3d5cea: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3d5cee: 4618         	mov	r0, r3
  3d5cf0: f1c2 f8fa    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1c21f4
  3d5cf4: 9b03         	ldr	r3, [sp, #0xc]
  3d5cf6: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3d5cfa: 681b         	ldr	r3, [r3]
  3d5cfc: 334c         	adds	r3, #0x4c
  3d5cfe: 681c         	ldr	r4, [r3]
  3d5d00: 9b03         	ldr	r3, [sp, #0xc]
  3d5d02: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3d5d06: 461d         	mov	r5, r3
  3d5d08: ab10         	add	r3, sp, #0x40
  3d5d0a: 4618         	mov	r0, r3
  3d5d0c: f04f 0100    	mov.w	r1, #0x0
  3d5d10: f04f 0200    	mov.w	r2, #0x0
  3d5d14: f2cc 22e2    	movt	r2, #0xc2e2
  3d5d18: f1bc ffea    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1bcfd4
  3d5d1c: a912         	add	r1, sp, #0x48
  3d5d1e: aa0e         	add	r2, sp, #0x38
  3d5d20: ab10         	add	r3, sp, #0x40
  3d5d22: 4608         	mov	r0, r1
  3d5d24: 4611         	mov	r1, r2
  3d5d26: 461a         	mov	r2, r3
  3d5d28: f7fc ff80    	bl	0x3d2c2c <ScoreKeeper::getRankChange()+0x19c> @ imm = #-0x3100
  3d5d2c: ab12         	add	r3, sp, #0x48
  3d5d2e: 4628         	mov	r0, r5
  3d5d30: 4619         	mov	r1, r3
  3d5d32: 47a0         	blx	r4
  3d5d34: 9b03         	ldr	r3, [sp, #0xc]
  3d5d36: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3d5d3a: 681b         	ldr	r3, [r3]
  3d5d3c: 3390         	adds	r3, #0x90
  3d5d3e: 681b         	ldr	r3, [r3]
  3d5d40: 9a03         	ldr	r2, [sp, #0xc]
  3d5d42: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  3d5d46: 4610         	mov	r0, r2
  3d5d48: 2100         	movs	r1, #0x0
  3d5d4a: 4798         	blx	r3
  3d5d4c: 9b03         	ldr	r3, [sp, #0xc]
  3d5d4e: 681b         	ldr	r3, [r3]
  3d5d50: 33c8         	adds	r3, #0xc8
  3d5d52: 681b         	ldr	r3, [r3]
  3d5d54: 9903         	ldr	r1, [sp, #0xc]
  3d5d56: 9a03         	ldr	r2, [sp, #0xc]
  3d5d58: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  3d5d5c: 4608         	mov	r0, r1
  3d5d5e: 4611         	mov	r1, r2
  3d5d60: 4798         	blx	r3
  3d5d62: f04d f8eb    	bl	0x422f3c <ApplicationInterface::isVideoRecording()> @ imm = #0x4d1d6
  3d5d66: 4603         	mov	r3, r0
  3d5d68: 2b00         	cmp	r3, #0x0
  3d5d6a: d009         	beq	0x3d5d80 <ScoreScreen::init()+0x594> @ imm = #0x12
  3d5d6c: 4bce         	ldr	r3, [pc, #0x338]        @ 0x3d60a8 <ScoreScreen::init()+0x8bc>
  3d5d6e: 447b         	add	r3, pc
  3d5d70: 4618         	mov	r0, r3
  3d5d72: f202 fac7    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x20258e
  3d5d76: 4602         	mov	r2, r0
  3d5d78: 9b03         	ldr	r3, [sp, #0xc]
  3d5d7a: f8c3 20f8    	str.w	r2, [r3, #0xf8]
  3d5d7e: e017         	b	0x3d5db0 <ScoreScreen::init()+0x5c4> @ imm = #0x2e
  3d5d80: 4bca         	ldr	r3, [pc, #0x328]        @ 0x3d60ac <ScoreScreen::init()+0x8c0>
  3d5d82: 447b         	add	r3, pc
  3d5d84: 4618         	mov	r0, r3
  3d5d86: f202 fabd    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x20257a
  3d5d8a: 4602         	mov	r2, r0
  3d5d8c: 9b03         	ldr	r3, [sp, #0xc]
  3d5d8e: f8c3 20f8    	str.w	r2, [r3, #0xf8]
  3d5d92: 9b03         	ldr	r3, [sp, #0xc]
  3d5d94: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3d5d98: 681b         	ldr	r3, [r3]
  3d5d9a: 3340         	adds	r3, #0x40
  3d5d9c: 681b         	ldr	r3, [r3]
  3d5d9e: 9a03         	ldr	r2, [sp, #0xc]
  3d5da0: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  3d5da4: 4610         	mov	r0, r2
  3d5da6: f64c 41cd    	movw	r1, #0xcccd
  3d5daa: f6c3 714c    	movt	r1, #0x3f4c
  3d5dae: 4798         	blx	r3
  3d5db0: 9b03         	ldr	r3, [sp, #0xc]
  3d5db2: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3d5db6: 4618         	mov	r0, r3
  3d5db8: f1c2 f896    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1c212c
  3d5dbc: 9b03         	ldr	r3, [sp, #0xc]
  3d5dbe: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3d5dc2: 681b         	ldr	r3, [r3]
  3d5dc4: 334c         	adds	r3, #0x4c
  3d5dc6: 681c         	ldr	r4, [r3]
  3d5dc8: 9b03         	ldr	r3, [sp, #0xc]
  3d5dca: f8d3 50f8    	ldr.w	r5, [r3, #0xf8]
  3d5dce: 9b03         	ldr	r3, [sp, #0xc]
  3d5dd0: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3d5dd4: 681b         	ldr	r3, [r3]
  3d5dd6: 3350         	adds	r3, #0x50
  3d5dd8: 681b         	ldr	r3, [r3]
  3d5dda: 9a03         	ldr	r2, [sp, #0xc]
  3d5ddc: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3d5de0: 4610         	mov	r0, r2
  3d5de2: 4798         	blx	r3
  3d5de4: 4603         	mov	r3, r0
  3d5de6: a912         	add	r1, sp, #0x48
  3d5de8: aa0e         	add	r2, sp, #0x38
  3d5dea: 4608         	mov	r0, r1
  3d5dec: 4611         	mov	r1, r2
  3d5dee: 461a         	mov	r2, r3
  3d5df0: f7fc ff1c    	bl	0x3d2c2c <ScoreKeeper::getRankChange()+0x19c> @ imm = #-0x31c8
  3d5df4: ab12         	add	r3, sp, #0x48
  3d5df6: 4628         	mov	r0, r5
  3d5df8: 4619         	mov	r1, r3
  3d5dfa: 47a0         	blx	r4
  3d5dfc: 9b03         	ldr	r3, [sp, #0xc]
  3d5dfe: 681b         	ldr	r3, [r3]
  3d5e00: 33cc         	adds	r3, #0xcc
  3d5e02: 681b         	ldr	r3, [r3]
  3d5e04: 9903         	ldr	r1, [sp, #0xc]
  3d5e06: 9a03         	ldr	r2, [sp, #0xc]
  3d5e08: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  3d5e0c: 4608         	mov	r0, r1
  3d5e0e: 4611         	mov	r1, r2
  3d5e10: 2200         	movs	r2, #0x0
  3d5e12: 4798         	blx	r3
  3d5e14: 2320         	movs	r3, #0x20
  3d5e16: 9300         	str	r3, [sp]
  3d5e18: 4ba5         	ldr	r3, [pc, #0x294]        @ 0x3d60b0 <ScoreScreen::init()+0x8c4>
  3d5e1a: 447b         	add	r3, pc
  3d5e1c: 4618         	mov	r0, r3
  3d5e1e: 4ba5         	ldr	r3, [pc, #0x294]        @ 0x3d60b4 <ScoreScreen::init()+0x8c8>
  3d5e20: 447b         	add	r3, pc
  3d5e22: 4619         	mov	r1, r3
  3d5e24: 2220         	movs	r2, #0x20
  3d5e26: 2320         	movs	r3, #0x20
  3d5e28: f1cf faa6    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1cf54c
  3d5e2c: 4602         	mov	r2, r0
  3d5e2e: 9b03         	ldr	r3, [sp, #0xc]
  3d5e30: f8c3 20f4    	str.w	r2, [r3, #0xf4]
  3d5e34: 9b03         	ldr	r3, [sp, #0xc]
  3d5e36: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3d5e3a: 4618         	mov	r0, r3
  3d5e3c: f1c2 f854    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1c20a8
  3d5e40: 9b03         	ldr	r3, [sp, #0xc]
  3d5e42: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3d5e46: 4618         	mov	r0, r3
  3d5e48: 2118         	movs	r1, #0x18
  3d5e4a: f1cf ff9b    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1cff36
  3d5e4e: 9b03         	ldr	r3, [sp, #0xc]
  3d5e50: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3d5e54: 681b         	ldr	r3, [r3]
  3d5e56: 337c         	adds	r3, #0x7c
  3d5e58: 681c         	ldr	r4, [r3]
  3d5e5a: 9b03         	ldr	r3, [sp, #0xc]
  3d5e5c: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3d5e60: 461d         	mov	r5, r3
  3d5e62: ab12         	add	r3, sp, #0x48
  3d5e64: 4618         	mov	r0, r3
  3d5e66: f04f 517c    	mov.w	r1, #0x3f000000
  3d5e6a: f04f 527c    	mov.w	r2, #0x3f000000
  3d5e6e: f1bc ff3f    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1bce7e
  3d5e72: ab12         	add	r3, sp, #0x48
  3d5e74: 4628         	mov	r0, r5
  3d5e76: 4619         	mov	r1, r3
  3d5e78: 47a0         	blx	r4
  3d5e7a: 9b03         	ldr	r3, [sp, #0xc]
  3d5e7c: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3d5e80: 681b         	ldr	r3, [r3]
  3d5e82: 3340         	adds	r3, #0x40
  3d5e84: 681b         	ldr	r3, [r3]
  3d5e86: 9a03         	ldr	r2, [sp, #0xc]
  3d5e88: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  3d5e8c: 4610         	mov	r0, r2
  3d5e8e: f04f 517c    	mov.w	r1, #0x3f000000
  3d5e92: 4798         	blx	r3
  3d5e94: 9b03         	ldr	r3, [sp, #0xc]
  3d5e96: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3d5e9a: 681b         	ldr	r3, [r3]
  3d5e9c: 334c         	adds	r3, #0x4c
  3d5e9e: 681c         	ldr	r4, [r3]
  3d5ea0: 9b03         	ldr	r3, [sp, #0xc]
  3d5ea2: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3d5ea6: 461d         	mov	r5, r3
  3d5ea8: 9b03         	ldr	r3, [sp, #0xc]
  3d5eaa: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3d5eae: 681b         	ldr	r3, [r3]
  3d5eb0: 3350         	adds	r3, #0x50
  3d5eb2: 681b         	ldr	r3, [r3]
  3d5eb4: 9a03         	ldr	r2, [sp, #0xc]
  3d5eb6: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3d5eba: 4610         	mov	r0, r2
  3d5ebc: 4798         	blx	r3
  3d5ebe: 4603         	mov	r3, r0
  3d5ec0: ed93 7a00    	vldr	s14, [r3]
  3d5ec4: eef2 7a00    	vmov.f32	s15, #8.000000e+00
  3d5ec8: ee37 8a27    	vadd.f32	s16, s14, s15
  3d5ecc: 9b03         	ldr	r3, [sp, #0xc]
  3d5ece: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3d5ed2: 681b         	ldr	r3, [r3]
  3d5ed4: 3350         	adds	r3, #0x50
  3d5ed6: 681b         	ldr	r3, [r3]
  3d5ed8: 9a03         	ldr	r2, [sp, #0xc]
  3d5eda: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3d5ede: 4610         	mov	r0, r2
  3d5ee0: 4798         	blx	r3
  3d5ee2: 4603         	mov	r3, r0
  3d5ee4: 685b         	ldr	r3, [r3, #0x4]
  3d5ee6: aa10         	add	r2, sp, #0x40
  3d5ee8: 4610         	mov	r0, r2
  3d5eea: ee18 1a10    	vmov	r1, s16
  3d5eee: 461a         	mov	r2, r3
  3d5ef0: f1bc fefe    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1bcdfc
  3d5ef4: a912         	add	r1, sp, #0x48
  3d5ef6: aa0e         	add	r2, sp, #0x38
  3d5ef8: ab10         	add	r3, sp, #0x40
  3d5efa: 4608         	mov	r0, r1
  3d5efc: 4611         	mov	r1, r2
  3d5efe: 461a         	mov	r2, r3
  3d5f00: f7fc fe94    	bl	0x3d2c2c <ScoreKeeper::getRankChange()+0x19c> @ imm = #-0x32d8
  3d5f04: ab12         	add	r3, sp, #0x48
  3d5f06: 4628         	mov	r0, r5
  3d5f08: 4619         	mov	r1, r3
  3d5f0a: 47a0         	blx	r4
  3d5f0c: 9b03         	ldr	r3, [sp, #0xc]
  3d5f0e: 681b         	ldr	r3, [r3]
  3d5f10: 33cc         	adds	r3, #0xcc
  3d5f12: 681b         	ldr	r3, [r3]
  3d5f14: 9903         	ldr	r1, [sp, #0xc]
  3d5f16: 9a03         	ldr	r2, [sp, #0xc]
  3d5f18: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  3d5f1c: 4608         	mov	r0, r1
  3d5f1e: 4611         	mov	r1, r2
  3d5f20: 2200         	movs	r2, #0x0
  3d5f22: 4798         	blx	r3
  3d5f24: 2320         	movs	r3, #0x20
  3d5f26: 9300         	str	r3, [sp]
  3d5f28: 4b63         	ldr	r3, [pc, #0x18c]        @ 0x3d60b8 <ScoreScreen::init()+0x8cc>
  3d5f2a: 447b         	add	r3, pc
  3d5f2c: 4618         	mov	r0, r3
  3d5f2e: 4b63         	ldr	r3, [pc, #0x18c]        @ 0x3d60bc <ScoreScreen::init()+0x8d0>
  3d5f30: 447b         	add	r3, pc
  3d5f32: 4619         	mov	r1, r3
  3d5f34: 2220         	movs	r2, #0x20
  3d5f36: 2320         	movs	r3, #0x20
  3d5f38: f1cf fa1e    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1cf43c
  3d5f3c: 4602         	mov	r2, r0
  3d5f3e: 9b03         	ldr	r3, [sp, #0xc]
  3d5f40: f8c3 2100    	str.w	r2, [r3, #0x100]
  3d5f44: 9b03         	ldr	r3, [sp, #0xc]
  3d5f46: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  3d5f4a: 4618         	mov	r0, r3
  3d5f4c: f1c1 ffcc    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1c1f98
  3d5f50: 9b03         	ldr	r3, [sp, #0xc]
  3d5f52: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  3d5f56: 4618         	mov	r0, r3
  3d5f58: 2118         	movs	r1, #0x18
  3d5f5a: f1cf ff13    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1cfe26
  3d5f5e: 9b03         	ldr	r3, [sp, #0xc]
  3d5f60: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  3d5f64: 681b         	ldr	r3, [r3]
  3d5f66: 337c         	adds	r3, #0x7c
  3d5f68: 681c         	ldr	r4, [r3]
  3d5f6a: 9b03         	ldr	r3, [sp, #0xc]
  3d5f6c: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  3d5f70: 461d         	mov	r5, r3
  3d5f72: ab12         	add	r3, sp, #0x48
  3d5f74: 4618         	mov	r0, r3
  3d5f76: f04f 517c    	mov.w	r1, #0x3f000000
  3d5f7a: f04f 527c    	mov.w	r2, #0x3f000000
  3d5f7e: f1bc feb7    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1bcd6e
  3d5f82: ab12         	add	r3, sp, #0x48
  3d5f84: 4628         	mov	r0, r5
  3d5f86: 4619         	mov	r1, r3
  3d5f88: 47a0         	blx	r4
  3d5f8a: 9b03         	ldr	r3, [sp, #0xc]
  3d5f8c: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  3d5f90: 681b         	ldr	r3, [r3]
  3d5f92: 3340         	adds	r3, #0x40
  3d5f94: 681b         	ldr	r3, [r3]
  3d5f96: 9a03         	ldr	r2, [sp, #0xc]
  3d5f98: f8d2 2100    	ldr.w	r2, [r2, #0x100]
  3d5f9c: 4610         	mov	r0, r2
  3d5f9e: f04f 517c    	mov.w	r1, #0x3f000000
  3d5fa2: 4798         	blx	r3
  3d5fa4: 9b03         	ldr	r3, [sp, #0xc]
  3d5fa6: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  3d5faa: 681b         	ldr	r3, [r3]
  3d5fac: 334c         	adds	r3, #0x4c
  3d5fae: 681c         	ldr	r4, [r3]
  3d5fb0: 9b03         	ldr	r3, [sp, #0xc]
  3d5fb2: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  3d5fb6: 461d         	mov	r5, r3
  3d5fb8: ab10         	add	r3, sp, #0x40
  3d5fba: 4618         	mov	r0, r3
  3d5fbc: f04f 0100    	mov.w	r1, #0x0
  3d5fc0: f2c4 11a0    	movt	r1, #0x41a0
  3d5fc4: f04f 0200    	mov.w	r2, #0x0
  3d5fc8: f2c4 22c8    	movt	r2, #0x42c8
  3d5fcc: f1bc fe90    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1bcd20
  3d5fd0: a912         	add	r1, sp, #0x48
  3d5fd2: aa0e         	add	r2, sp, #0x38
  3d5fd4: ab10         	add	r3, sp, #0x40
  3d5fd6: 4608         	mov	r0, r1
  3d5fd8: 4611         	mov	r1, r2
  3d5fda: 461a         	mov	r2, r3
  3d5fdc: f7fc fe26    	bl	0x3d2c2c <ScoreKeeper::getRankChange()+0x19c> @ imm = #-0x33b4
  3d5fe0: ab12         	add	r3, sp, #0x48
  3d5fe2: 4628         	mov	r0, r5
  3d5fe4: 4619         	mov	r1, r3
  3d5fe6: 47a0         	blx	r4
  3d5fe8: 9b03         	ldr	r3, [sp, #0xc]
  3d5fea: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  3d5fee: 681b         	ldr	r3, [r3]
  3d5ff0: 3390         	adds	r3, #0x90
  3d5ff2: 681b         	ldr	r3, [r3]
  3d5ff4: 9a03         	ldr	r2, [sp, #0xc]
  3d5ff6: f8d2 2100    	ldr.w	r2, [r2, #0x100]
  3d5ffa: 4610         	mov	r0, r2
  3d5ffc: 2100         	movs	r1, #0x0
  3d5ffe: 4798         	blx	r3
  3d6000: 9b03         	ldr	r3, [sp, #0xc]
  3d6002: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  3d6006: 681b         	ldr	r3, [r3]
  3d6008: f503 73de    	add.w	r3, r3, #0x1bc
  3d600c: 681c         	ldr	r4, [r3]
  3d600e: 9b03         	ldr	r3, [sp, #0xc]
  3d6010: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  3d6014: 461d         	mov	r5, r3
  3d6016: 20ff         	movs	r0, #0xff
  3d6018: 21ff         	movs	r1, #0xff
  3d601a: 2200         	movs	r2, #0x0
  3d601c: f7fc fdd8    	bl	0x3d2bd0 <ScoreKeeper::getRankChange()+0x140> @ imm = #-0x3450
  3d6020: 4603         	mov	r3, r0
  3d6022: 461a         	mov	r2, r3
  3d6024: f88d 2048    	strb.w	r2, [sp, #0x48]
  3d6028: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3d602c: f88d 2049    	strb.w	r2, [sp, #0x49]
  3d6030: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3d6034: f88d 304a    	strb.w	r3, [sp, #0x4a]
  3d6038: ab12         	add	r3, sp, #0x48
  3d603a: 4628         	mov	r0, r5
  3d603c: 4619         	mov	r1, r3
  3d603e: 47a0         	blx	r4
  3d6040: 9b03         	ldr	r3, [sp, #0xc]
  3d6042: 681b         	ldr	r3, [r3]
  3d6044: 33cc         	adds	r3, #0xcc
  3d6046: 681b         	ldr	r3, [r3]
  3d6048: 9903         	ldr	r1, [sp, #0xc]
  3d604a: 9a03         	ldr	r2, [sp, #0xc]
  3d604c: f8d2 2100    	ldr.w	r2, [r2, #0x100]
  3d6050: 4608         	mov	r0, r1
  3d6052: 4611         	mov	r1, r2
  3d6054: 2200         	movs	r2, #0x0
  3d6056: 4798         	blx	r3
  3d6058: 2301         	movs	r3, #0x1
  3d605a: 4618         	mov	r0, r3
  3d605c: b01c         	add	sp, #0x70
  3d605e: ecbd 8b02    	vpop	{d8}
  3d6062: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3d6063); words below are literal-pool data ---
  3d6064: d20e         	bhs	0x3d6084 <ScoreScreen::init()+0x898> @ imm = #0x1c
  3d6066: 0055         	lsls	r5, r2, #0x1
  3d6068: decc         	udf	#0xcc
  3d606a: ffff 1d16    	<unknown>
  3d606e: 0040         	lsls	r0, r0, #0x1
  3d6070: 1c66         	adds	r6, r4, #0x1
  3d6072: 0040         	lsls	r0, r0, #0x1
  3d6074: 1b68         	subs	r0, r5, r5
  3d6076: 0040         	lsls	r0, r0, #0x1
  3d6078: 1b58         	subs	r0, r3, r5
  3d607a: 0040         	lsls	r0, r0, #0x1
  3d607c: 1b48         	subs	r0, r1, r5
  3d607e: 0040         	lsls	r0, r0, #0x1
  3d6080: 1b38         	subs	r0, r7, r4
  3d6082: 0040         	lsls	r0, r0, #0x1
  3d6084: 1b28         	subs	r0, r5, r4
  3d6086: 0040         	lsls	r0, r0, #0x1
  3d6088: 1b18         	subs	r0, r3, r4
  3d608a: 0040         	lsls	r0, r0, #0x1
  3d608c: ded0         	udf	#0xd0
  3d608e: ffff ded4    	<unknown>
  3d6092: ffff ded8    	<unknown>
  3d6096: ffff 19c4    	<unknown>
  3d609a: 0040         	lsls	r0, r0, #0x1
  3d609c: 193c         	adds	r4, r7, r4
  3d609e: 0040         	lsls	r0, r0, #0x1
  3d60a0: 1832         	adds	r2, r6, r0
  3d60a2: 0040         	lsls	r0, r0, #0x1
  3d60a4: 1850         	adds	r0, r2, r1
  3d60a6: 0040         	lsls	r0, r0, #0x1
  3d60a8: 181a         	adds	r2, r3, r0
  3d60aa: 0040         	lsls	r0, r0, #0x1
  3d60ac: 1812         	adds	r2, r2, r0
  3d60ae: 0040         	lsls	r0, r0, #0x1
  3d60b0: 1782         	asrs	r2, r0, #0x1e
  3d60b2: 0040         	lsls	r0, r0, #0x1
  3d60b4: 16e0         	asrs	r0, r4, #0x1b
  3d60b6: 0040         	lsls	r0, r0, #0x1
  3d60b8: 167a         	asrs	r2, r7, #0x19
  3d60ba: 0040         	lsls	r0, r0, #0x1
  3d60bc: 15d0         	asrs	r0, r2, #0x17
  3d60be: 0040         	lsls	r0, r0, #0x1

// ==== ScoreScreen::~ScoreScreen
//      file offset 0x3d60c0 (= ELF address; Ghidra 0x3e60c0), 168 bytes, Thumb-2
  3d60c0: b500         	push	{lr}
  3d60c2: b083         	sub	sp, #0xc
  3d60c4: 9001         	str	r0, [sp, #0x4]
  3d60c6: 4926         	ldr	r1, [pc, #0x98]         @ 0x3d6160 <ScoreScreen::~ScoreScreen()+0xa0>
  3d60c8: 4479         	add	r1, pc
  3d60ca: 9b01         	ldr	r3, [sp, #0x4]
  3d60cc: 4a25         	ldr	r2, [pc, #0x94]         @ 0x3d6164 <ScoreScreen::~ScoreScreen()+0xa4>
  3d60ce: 588a         	ldr	r2, [r1, r2]
  3d60d0: 3208         	adds	r2, #0x8
  3d60d2: 601a         	str	r2, [r3]
  3d60d4: f20a faec    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x20a5d8
  3d60d8: 4602         	mov	r2, r0
  3d60da: 9b01         	ldr	r3, [sp, #0x4]
  3d60dc: 4610         	mov	r0, r2
  3d60de: 4619         	mov	r1, r3
  3d60e0: f20a fc1e    	bl	0x5e0920 <cocos2d::CCNotificationCenter::removeAllObservers(cocos2d::CCObject*)> @ imm = #0x20a83c
  3d60e4: 9b01         	ldr	r3, [sp, #0x4]
  3d60e6: 4618         	mov	r0, r3
  3d60e8: 2101         	movs	r1, #0x1
  3d60ea: f1ba faad    	bl	0x590648 <cocos2d::CCNode::removeAllChildrenWithCleanup(bool)> @ imm = #0x1ba55a
  3d60ee: 9b01         	ldr	r3, [sp, #0x4]
  3d60f0: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3d60f4: 4618         	mov	r0, r3
  3d60f6: f1c1 fedf    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1c1dbe
  3d60fa: 9b01         	ldr	r3, [sp, #0x4]
  3d60fc: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3d6100: 4618         	mov	r0, r3
  3d6102: f1c1 fed9    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1c1db2
  3d6106: 9b01         	ldr	r3, [sp, #0x4]
  3d6108: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3d610c: 4618         	mov	r0, r3
  3d610e: f1c1 fed3    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1c1da6
  3d6112: 9b01         	ldr	r3, [sp, #0x4]
  3d6114: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3d6118: 4618         	mov	r0, r3
  3d611a: f1c1 fecd    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1c1d9a
  3d611e: 9b01         	ldr	r3, [sp, #0x4]
  3d6120: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  3d6124: 4618         	mov	r0, r3
  3d6126: f1c1 fec7    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1c1d8e
  3d612a: 9b01         	ldr	r3, [sp, #0x4]
  3d612c: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3d6130: 4618         	mov	r0, r3
  3d6132: f1c1 fec1    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1c1d82
  3d6136: 9b01         	ldr	r3, [sp, #0x4]
  3d6138: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3d613c: 4618         	mov	r0, r3
  3d613e: f1c1 febb    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1c1d76
  3d6142: 9b01         	ldr	r3, [sp, #0x4]
  3d6144: 4618         	mov	r0, r3
  3d6146: f1b9 fb7d    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x1b96fa
  3d614a: 2300         	movs	r3, #0x0
  3d614c: 2b00         	cmp	r3, #0x0
  3d614e: d002         	beq	0x3d6156 <ScoreScreen::~ScoreScreen()+0x96> @ imm = #0x4
  3d6150: 9801         	ldr	r0, [sp, #0x4]
  3d6152: f3b1 ffa7    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3b1f4e
  3d6156: 9b01         	ldr	r3, [sp, #0x4]
  3d6158: 4618         	mov	r0, r3
  3d615a: b003         	add	sp, #0xc
  3d615c: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3d615f); words below are literal-pool data ---
  3d6160: c940         	ldm	r1!, {r6}
  3d6162: 0055         	lsls	r5, r2, #0x1
  3d6164: dec8         	udf	#0xc8
  3d6166: ffff b500    	<unknown>

// ==== ScoreScreen::~ScoreScreen
//      file offset 0x3d6168 (= ELF address; Ghidra 0x3e6168), 28 bytes, Thumb-2
  3d6168: b500         	push	{lr}
  3d616a: b083         	sub	sp, #0xc
  3d616c: 9001         	str	r0, [sp, #0x4]
  3d616e: 9801         	ldr	r0, [sp, #0x4]
  3d6170: f7ff ffa6    	bl	0x3d60c0 <ScoreScreen::~ScoreScreen()> @ imm = #-0xb4
  3d6174: 9801         	ldr	r0, [sp, #0x4]
  3d6176: f3b1 ff95    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3b1f2a
  3d617a: 9b01         	ldr	r3, [sp, #0x4]
  3d617c: 4618         	mov	r0, r3
  3d617e: b003         	add	sp, #0xc
  3d6180: f85d fb04    	ldr	pc, [sp], #4

// ==== ScoreScreen::updateStep
//      file offset 0x3d6184 (= ELF address; Ghidra 0x3e6184), 676 bytes, Thumb-2
  3d6184: b530         	push	{r4, r5, lr}
  3d6186: b08d         	sub	sp, #0x34
  3d6188: 9001         	str	r0, [sp, #0x4]
  3d618a: 9100         	str	r1, [sp]
  3d618c: 9b01         	ldr	r3, [sp, #0x4]
  3d618e: ed93 7a39    	vldr	s14, [r3, #228]
  3d6192: eddd 7a00    	vldr	s15, [sp]
  3d6196: ee77 7a27    	vadd.f32	s15, s14, s15
  3d619a: 9b01         	ldr	r3, [sp, #0x4]
  3d619c: edc3 7a39    	vstr	s15, [r3, #228]
  3d61a0: 9b01         	ldr	r3, [sp, #0x4]
  3d61a2: f893 3114    	ldrb.w	r3, [r3, #0x114]
  3d61a6: 2b00         	cmp	r3, #0x0
  3d61a8: d023         	beq	0x3d61f2 <ScoreScreen::updateStep(float)+0x6e> @ imm = #0x46
  3d61aa: 9b01         	ldr	r3, [sp, #0x4]
  3d61ac: ed93 7a47    	vldr	s14, [r3, #284]
  3d61b0: eddd 6a00    	vldr	s13, [sp]
  3d61b4: eddf 7a97    	vldr	s15, [pc, #604]         @ 0x3d6414 <ScoreScreen::updateStep(float)+0x290>
  3d61b8: ee66 7aa7    	vmul.f32	s15, s13, s15
  3d61bc: ee37 7a27    	vadd.f32	s14, s14, s15
  3d61c0: eddf 7a95    	vldr	s15, [pc, #596]         @ 0x3d6418 <ScoreScreen::updateStep(float)+0x294>
  3d61c4: eeb4 7ae7    	vcmpe.f32	s14, s15
  3d61c8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3d61cc: d50b         	bpl	0x3d61e6 <ScoreScreen::updateStep(float)+0x62> @ imm = #0x16
  3d61ce: 9b01         	ldr	r3, [sp, #0x4]
  3d61d0: ed93 7a47    	vldr	s14, [r3, #284]
  3d61d4: eddd 6a00    	vldr	s13, [sp]
  3d61d8: eddf 7a8e    	vldr	s15, [pc, #568]         @ 0x3d6414 <ScoreScreen::updateStep(float)+0x290>
  3d61dc: ee66 7aa7    	vmul.f32	s15, s13, s15
  3d61e0: ee77 7a27    	vadd.f32	s15, s14, s15
  3d61e4: e001         	b	0x3d61ea <ScoreScreen::updateStep(float)+0x66> @ imm = #0x2
  3d61e6: eddf 7a8c    	vldr	s15, [pc, #560]         @ 0x3d6418 <ScoreScreen::updateStep(float)+0x294>
  3d61ea: 9b01         	ldr	r3, [sp, #0x4]
  3d61ec: edc3 7a47    	vstr	s15, [r3, #284]
  3d61f0: e020         	b	0x3d6234 <ScoreScreen::updateStep(float)+0xb0> @ imm = #0x40
  3d61f2: 9b01         	ldr	r3, [sp, #0x4]
  3d61f4: ed93 7a47    	vldr	s14, [r3, #284]
  3d61f8: eddd 6a00    	vldr	s13, [sp]
  3d61fc: eddf 7a85    	vldr	s15, [pc, #532]         @ 0x3d6414 <ScoreScreen::updateStep(float)+0x290>
  3d6200: ee66 7aa7    	vmul.f32	s15, s13, s15
  3d6204: ee77 7a67    	vsub.f32	s15, s14, s15
  3d6208: eef5 7ac0    	vcmpe.f32	s15, #0
  3d620c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3d6210: dd0b         	ble	0x3d622a <ScoreScreen::updateStep(float)+0xa6> @ imm = #0x16
  3d6212: 9b01         	ldr	r3, [sp, #0x4]
  3d6214: ed93 7a47    	vldr	s14, [r3, #284]
  3d6218: eddd 6a00    	vldr	s13, [sp]
  3d621c: eddf 7a7d    	vldr	s15, [pc, #500]         @ 0x3d6414 <ScoreScreen::updateStep(float)+0x290>
  3d6220: ee66 7aa7    	vmul.f32	s15, s13, s15
  3d6224: ee77 7a67    	vsub.f32	s15, s14, s15
  3d6228: e001         	b	0x3d622e <ScoreScreen::updateStep(float)+0xaa> @ imm = #0x2
  3d622a: eddf 7a7c    	vldr	s15, [pc, #496]         @ 0x3d641c <ScoreScreen::updateStep(float)+0x298>
  3d622e: 9b01         	ldr	r3, [sp, #0x4]
  3d6230: edc3 7a47    	vstr	s15, [r3, #284]
  3d6234: 9b01         	ldr	r3, [sp, #0x4]
  3d6236: edd3 7a47    	vldr	s15, [r3, #284]
  3d623a: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3d623e: ee17 3a90    	vmov	r3, s15
  3d6242: 9801         	ldr	r0, [sp, #0x4]
  3d6244: 4619         	mov	r1, r3
  3d6246: f000 fe3b    	bl	0x3d6ec0 <ScoreScreen::setOpacity(int)> @ imm = #0xc76
  3d624a: 9b01         	ldr	r3, [sp, #0x4]
  3d624c: f893 3114    	ldrb.w	r3, [r3, #0x114]
  3d6250: f083 0301    	eor	r3, r3, #0x1
  3d6254: b2db         	uxtb	r3, r3
  3d6256: 2b00         	cmp	r3, #0x0
  3d6258: d01b         	beq	0x3d6292 <ScoreScreen::updateStep(float)+0x10e> @ imm = #0x36
  3d625a: 9b01         	ldr	r3, [sp, #0x4]
  3d625c: edd3 7a47    	vldr	s15, [r3, #284]
  3d6260: eef5 7ac0    	vcmpe.f32	s15, #0
  3d6264: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3d6268: d813         	bhi	0x3d6292 <ScoreScreen::updateStep(float)+0x10e> @ imm = #0x26
  3d626a: 9b01         	ldr	r3, [sp, #0x4]
  3d626c: 681b         	ldr	r3, [r3]
  3d626e: 3390         	adds	r3, #0x90
  3d6270: 681b         	ldr	r3, [r3]
  3d6272: 9a01         	ldr	r2, [sp, #0x4]
  3d6274: 4610         	mov	r0, r2
  3d6276: 2100         	movs	r1, #0x0
  3d6278: 4798         	blx	r3
  3d627a: 9b01         	ldr	r3, [sp, #0x4]
  3d627c: 681b         	ldr	r3, [r3]
  3d627e: 334c         	adds	r3, #0x4c
  3d6280: 681b         	ldr	r3, [r3]
  3d6282: 9901         	ldr	r1, [sp, #0x4]
  3d6284: 9a01         	ldr	r2, [sp, #0x4]
  3d6286: f502 7290    	add.w	r2, r2, #0x120
  3d628a: 4608         	mov	r0, r1
  3d628c: 4611         	mov	r1, r2
  3d628e: 4798         	blx	r3
  3d6290: e018         	b	0x3d62c4 <ScoreScreen::updateStep(float)+0x140> @ imm = #0x30
  3d6292: 9b01         	ldr	r3, [sp, #0x4]
  3d6294: 681b         	ldr	r3, [r3]
  3d6296: 3390         	adds	r3, #0x90
  3d6298: 681b         	ldr	r3, [r3]
  3d629a: 9a01         	ldr	r2, [sp, #0x4]
  3d629c: 4610         	mov	r0, r2
  3d629e: 2101         	movs	r1, #0x1
  3d62a0: 4798         	blx	r3
  3d62a2: 9b01         	ldr	r3, [sp, #0x4]
  3d62a4: 681b         	ldr	r3, [r3]
  3d62a6: 334c         	adds	r3, #0x4c
  3d62a8: 681c         	ldr	r4, [r3]
  3d62aa: 9d01         	ldr	r5, [sp, #0x4]
  3d62ac: ab0a         	add	r3, sp, #0x28
  3d62ae: 4618         	mov	r0, r3
  3d62b0: f04f 0100    	mov.w	r1, #0x0
  3d62b4: f04f 0200    	mov.w	r2, #0x0
  3d62b8: f1bc fd1a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1bca34
  3d62bc: ab0a         	add	r3, sp, #0x28
  3d62be: 4628         	mov	r0, r5
  3d62c0: 4619         	mov	r1, r3
  3d62c2: 47a0         	blx	r4
  3d62c4: 9b01         	ldr	r3, [sp, #0x4]
  3d62c6: f893 3114    	ldrb.w	r3, [r3, #0x114]
  3d62ca: 2b00         	cmp	r3, #0x0
  3d62cc: f000 80a0    	beq.w	0x3d6410 <ScoreScreen::updateStep(float)+0x28c> @ imm = #0x140
  3d62d0: 9b01         	ldr	r3, [sp, #0x4]
  3d62d2: edd3 7a46    	vldr	s15, [r3, #280]
  3d62d6: eef5 7ac0    	vcmpe.f32	s15, #0
  3d62da: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3d62de: f340 8097    	ble.w	0x3d6410 <ScoreScreen::updateStep(float)+0x28c> @ imm = #0x12e
  3d62e2: 9b01         	ldr	r3, [sp, #0x4]
  3d62e4: ed93 7a46    	vldr	s14, [r3, #280]
  3d62e8: eddd 7a00    	vldr	s15, [sp]
  3d62ec: ee77 7a67    	vsub.f32	s15, s14, s15
  3d62f0: 9b01         	ldr	r3, [sp, #0x4]
  3d62f2: edc3 7a46    	vstr	s15, [r3, #280]
  3d62f6: 9b01         	ldr	r3, [sp, #0x4]
  3d62f8: edd3 7a46    	vldr	s15, [r3, #280]
  3d62fc: eef5 7ac0    	vcmpe.f32	s15, #0
  3d6300: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3d6304: d504         	bpl	0x3d6310 <ScoreScreen::updateStep(float)+0x18c> @ imm = #0x8
  3d6306: 9b01         	ldr	r3, [sp, #0x4]
  3d6308: f04f 0200    	mov.w	r2, #0x0
  3d630c: f8c3 2118    	str.w	r2, [r3, #0x118]
  3d6310: 9b01         	ldr	r3, [sp, #0x4]
  3d6312: ed93 7a46    	vldr	s14, [r3, #280]
  3d6316: eef7 7a08    	vmov.f32	s15, #1.500000e+00
  3d631a: eec7 7a27    	vdiv.f32	s15, s14, s15
  3d631e: ee17 0a90    	vmov	r0, s15
  3d6322: f04f 0100    	mov.w	r1, #0x0
  3d6326: f04f 527e    	mov.w	r2, #0x3f800000
  3d632a: f20b fa5b    	bl	0x5e17e4 <cocos2d::clampf(float, float, float)> @ imm = #0x20b4b6
  3d632e: 4603         	mov	r3, r0
  3d6330: 9302         	str	r3, [sp, #0x8]
  3d6332: eeb7 7a00    	vmov.f32	s14, #1.000000e+00
  3d6336: eddd 7a02    	vldr	s15, [sp, #8]
  3d633a: ee77 7a67    	vsub.f32	s15, s14, s15
  3d633e: edcd 7a03    	vstr	s15, [sp, #12]
  3d6342: f1c5 f917    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x1c522e
  3d6346: 4603         	mov	r3, r0
  3d6348: aa04         	add	r2, sp, #0x10
  3d634a: 4610         	mov	r0, r2
  3d634c: 4619         	mov	r1, r3
  3d634e: f1c5 ff85    	bl	0x59c25c <cocos2d::CCDirector::getWinSize()> @ imm = #0x1c5f0a
  3d6352: ed9d 7a04    	vldr	s14, [sp, #16]
  3d6356: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3d635a: eec7 6a27    	vdiv.f32	s13, s14, s15
  3d635e: ed9d 7a05    	vldr	s14, [sp, #20]
  3d6362: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3d6366: eec7 7a27    	vdiv.f32	s15, s14, s15
  3d636a: ab06         	add	r3, sp, #0x18
  3d636c: 4618         	mov	r0, r3
  3d636e: ee16 1a90    	vmov	r1, s13
  3d6372: ee17 2a90    	vmov	r2, s15
  3d6376: f1bc fcbb    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1bc976
  3d637a: 9b01         	ldr	r3, [sp, #0x4]
  3d637c: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  3d6380: 681b         	ldr	r3, [r3]
  3d6382: 3340         	adds	r3, #0x40
  3d6384: 681b         	ldr	r3, [r3]
  3d6386: 9a01         	ldr	r2, [sp, #0x4]
  3d6388: f8d2 2100    	ldr.w	r2, [r2, #0x100]
  3d638c: ed9d 7a03    	vldr	s14, [sp, #12]
  3d6390: eef6 7a00    	vmov.f32	s15, #5.000000e-01
  3d6394: ee27 7a27    	vmul.f32	s14, s14, s15
  3d6398: eddd 7a02    	vldr	s15, [sp, #8]
  3d639c: ee77 7aa7    	vadd.f32	s15, s15, s15
  3d63a0: ee77 7a27    	vadd.f32	s15, s14, s15
  3d63a4: 4610         	mov	r0, r2
  3d63a6: ee17 1a90    	vmov	r1, s15
  3d63aa: 4798         	blx	r3
  3d63ac: 9b01         	ldr	r3, [sp, #0x4]
  3d63ae: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  3d63b2: 681b         	ldr	r3, [r3]
  3d63b4: 334c         	adds	r3, #0x4c
  3d63b6: 681c         	ldr	r4, [r3]
  3d63b8: 9b01         	ldr	r3, [sp, #0x4]
  3d63ba: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  3d63be: 461d         	mov	r5, r3
  3d63c0: ed9d 7a03    	vldr	s14, [sp, #12]
  3d63c4: eef3 7a04    	vmov.f32	s15, #2.000000e+01
  3d63c8: ee27 7a27    	vmul.f32	s14, s14, s15
  3d63cc: eddd 6a02    	vldr	s13, [sp, #8]
  3d63d0: eddf 7a13    	vldr	s15, [pc, #76]          @ 0x3d6420 <ScoreScreen::updateStep(float)+0x29c>
  3d63d4: ee66 7aa7    	vmul.f32	s15, s13, s15
  3d63d8: ee77 6a27    	vadd.f32	s13, s14, s15
  3d63dc: ed9d 7a03    	vldr	s14, [sp, #12]
  3d63e0: eddf 7a10    	vldr	s15, [pc, #64]          @ 0x3d6424 <ScoreScreen::updateStep(float)+0x2a0>
  3d63e4: ee67 7a27    	vmul.f32	s15, s14, s15
  3d63e8: ab08         	add	r3, sp, #0x20
  3d63ea: 4618         	mov	r0, r3
  3d63ec: ee16 1a90    	vmov	r1, s13
  3d63f0: ee17 2a90    	vmov	r2, s15
  3d63f4: f1bc fc7c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1bc8f8
  3d63f8: a90a         	add	r1, sp, #0x28
  3d63fa: aa06         	add	r2, sp, #0x18
  3d63fc: ab08         	add	r3, sp, #0x20
  3d63fe: 4608         	mov	r0, r1
  3d6400: 4611         	mov	r1, r2
  3d6402: 461a         	mov	r2, r3
  3d6404: f7fc fc12    	bl	0x3d2c2c <ScoreKeeper::getRankChange()+0x19c> @ imm = #-0x37dc
  3d6408: ab0a         	add	r3, sp, #0x28
  3d640a: 4628         	mov	r0, r5
  3d640c: 4619         	mov	r1, r3
  3d640e: 47a0         	blx	r4
  3d6410: b00d         	add	sp, #0x34
  3d6412: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3d6413); words below are literal-pool data ---
  3d6414: 0000         	movs	r0, r0
  3d6416: 447a         	add	r2, pc
  3d6418: 0000         	movs	r0, r0
  3d641a: 437f         	muls	r7, r7, r7
  3d641c: 0000         	movs	r0, r0
  3d641e: 0000         	movs	r0, r0
  3d6420: 0000         	movs	r0, r0
  3d6422: 4296         	cmp	r6, r2
  3d6424: 0000         	movs	r0, r0
  3d6426: 42c8         	cmn	r0, r1

// ==== ScoreScreen::identifyPlayer
//      file offset 0x3d6428 (= ELF address; Ghidra 0x3e6428), 294 bytes, Thumb-2
  3d6428: b530         	push	{r4, r5, lr}
  3d642a: b089         	sub	sp, #0x24
  3d642c: 9001         	str	r0, [sp, #0x4]
  3d642e: 9100         	str	r1, [sp]
  3d6430: 9b00         	ldr	r3, [sp]
  3d6432: 9304         	str	r3, [sp, #0x10]
  3d6434: 9804         	ldr	r0, [sp, #0x10]
  3d6436: 2100         	movs	r1, #0x0
  3d6438: f1c3 fe72    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1c3ce4
  3d643c: 4603         	mov	r3, r0
  3d643e: 9305         	str	r3, [sp, #0x14]
  3d6440: 9804         	ldr	r0, [sp, #0x10]
  3d6442: 2101         	movs	r1, #0x1
  3d6444: f1c3 fe6c    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1c3cd8
  3d6448: 4603         	mov	r3, r0
  3d644a: 9306         	str	r3, [sp, #0x18]
  3d644c: 9b01         	ldr	r3, [sp, #0x4]
  3d644e: f8d3 40fc    	ldr.w	r4, [r3, #0xfc]
  3d6452: 9805         	ldr	r0, [sp, #0x14]
  3d6454: f1c3 fa68    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1c34d0
  3d6458: 4605         	mov	r5, r0
  3d645a: ab02         	add	r3, sp, #0x8
  3d645c: 4618         	mov	r0, r3
  3d645e: f3b3 ffc9    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3b3f92
  3d6462: aa03         	add	r2, sp, #0xc
  3d6464: ab02         	add	r3, sp, #0x8
  3d6466: 4610         	mov	r0, r2
  3d6468: 4629         	mov	r1, r5
  3d646a: 461a         	mov	r2, r3
  3d646c: f3e0 faf8    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3e05f0
  3d6470: ab03         	add	r3, sp, #0xc
  3d6472: 4620         	mov	r0, r4
  3d6474: 4619         	mov	r1, r3
  3d6476: f7fe ff39    	bl	0x3d52ec <ScoreList::getScoreRow(std::string)> @ imm = #-0x118e
  3d647a: 4603         	mov	r3, r0
  3d647c: 9307         	str	r3, [sp, #0x1c]
  3d647e: ab03         	add	r3, sp, #0xc
  3d6480: 4618         	mov	r0, r3
  3d6482: f3df fa47    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3df48e
  3d6486: ab02         	add	r3, sp, #0x8
  3d6488: 4618         	mov	r0, r3
  3d648a: f3b3 ffb7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b3f6e
  3d648e: 9b07         	ldr	r3, [sp, #0x1c]
  3d6490: 2b00         	cmp	r3, #0x0
  3d6492: d010         	beq	0x3d64b6 <ScoreScreen::identifyPlayer(cocos2d::CCObject*)+0x8e> @ imm = #0x20
  3d6494: 9b07         	ldr	r3, [sp, #0x1c]
  3d6496: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3d649a: 681b         	ldr	r3, [r3]
  3d649c: f503 730f    	add.w	r3, r3, #0x23c
  3d64a0: 681c         	ldr	r4, [r3]
  3d64a2: 9b07         	ldr	r3, [sp, #0x1c]
  3d64a4: f8d3 50e8    	ldr.w	r5, [r3, #0xe8]
  3d64a8: 9806         	ldr	r0, [sp, #0x18]
  3d64aa: f1c3 fa3d    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1c347a
  3d64ae: 4603         	mov	r3, r0
  3d64b0: 4628         	mov	r0, r5
  3d64b2: 4619         	mov	r1, r3
  3d64b4: 47a0         	blx	r4
  3d64b6: f7a1 fb43    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x5e97a
  3d64ba: 4603         	mov	r3, r0
  3d64bc: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3d64c0: 2b00         	cmp	r3, #0x0
  3d64c2: bf0c         	ite	eq
  3d64c4: 2300         	moveq	r3, #0x0
  3d64c6: 2301         	movne	r3, #0x1
  3d64c8: b2db         	uxtb	r3, r3
  3d64ca: 2b00         	cmp	r3, #0x0
  3d64cc: d03d         	beq	0x3d654a <ScoreScreen::identifyPlayer(cocos2d::CCObject*)+0x122> @ imm = #0x7a
  3d64ce: 9b01         	ldr	r3, [sp, #0x4]
  3d64d0: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3d64d4: 681b         	ldr	r3, [r3]
  3d64d6: f503 730f    	add.w	r3, r3, #0x23c
  3d64da: 681c         	ldr	r4, [r3]
  3d64dc: 9b01         	ldr	r3, [sp, #0x4]
  3d64de: f8d3 5110    	ldr.w	r5, [r3, #0x110]
  3d64e2: f7a1 fb2d    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x5e9a6
  3d64e6: 4603         	mov	r3, r0
  3d64e8: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3d64ec: aa03         	add	r2, sp, #0xc
  3d64ee: 4610         	mov	r0, r2
  3d64f0: 4619         	mov	r1, r3
  3d64f2: f7ec f959    	bl	0x3c27a8 <RakNetDelegate::getCurrentServerName()> @ imm = #-0x13d4e
  3d64f6: ab03         	add	r3, sp, #0xc
  3d64f8: 4618         	mov	r0, r3
  3d64fa: f3de ff01    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3dee02
  3d64fe: 4603         	mov	r3, r0
  3d6500: 4628         	mov	r0, r5
  3d6502: 4619         	mov	r1, r3
  3d6504: 47a0         	blx	r4
  3d6506: ab03         	add	r3, sp, #0xc
  3d6508: 4618         	mov	r0, r3
  3d650a: f3df fa03    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3df406
  3d650e: 9b01         	ldr	r3, [sp, #0x4]
  3d6510: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3d6514: 681b         	ldr	r3, [r3]
  3d6516: 3390         	adds	r3, #0x90
  3d6518: 681b         	ldr	r3, [r3]
  3d651a: 9a01         	ldr	r2, [sp, #0x4]
  3d651c: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  3d6520: 4610         	mov	r0, r2
  3d6522: 2101         	movs	r1, #0x1
  3d6524: 4798         	blx	r3
  3d6526: e010         	b	0x3d654a <ScoreScreen::identifyPlayer(cocos2d::CCObject*)+0x122> @ imm = #0x20
  3d6528: ab03         	add	r3, sp, #0xc
  3d652a: 4618         	mov	r0, r3
  3d652c: f3df f9f2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3df3e4
  3d6530: e7ff         	b	0x3d6532 <ScoreScreen::identifyPlayer(cocos2d::CCObject*)+0x10a> @ imm = #-0x2
  3d6532: ab02         	add	r3, sp, #0x8
  3d6534: 4618         	mov	r0, r3
  3d6536: f3b3 ff61    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b3ec2
  3d653a: f3b1 fdb7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3b1b6e
  3d653e: ab03         	add	r3, sp, #0xc
  3d6540: 4618         	mov	r0, r3
  3d6542: f3df f9e7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3df3ce
  3d6546: f3b1 fdb1    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3b1b62
  3d654a: b009         	add	sp, #0x24
  3d654c: bd30         	pop	{r4, r5, pc}

// ==== ScoreScreen::onQuit
//      file offset 0x3d6550 (= ELF address; Ghidra 0x3e6550), 688 bytes, Thumb-2
  3d6550: b530         	push	{r4, r5, lr}
  3d6552: b08d         	sub	sp, #0x34
  3d6554: 9003         	str	r0, [sp, #0xc]
  3d6556: 9102         	str	r1, [sp, #0x8]
  3d6558: 4c9d         	ldr	r4, [pc, #0x274]        @ 0x3d67d0 <ScoreScreen::onQuit(cocos2d::CCObject*)+0x280>
  3d655a: 447c         	add	r4, pc
  3d655c: 4b9d         	ldr	r3, [pc, #0x274]        @ 0x3d67d4 <ScoreScreen::onQuit(cocos2d::CCObject*)+0x284>
  3d655e: 58e3         	ldr	r3, [r4, r3]
  3d6560: 681b         	ldr	r3, [r3]
  3d6562: 4618         	mov	r0, r3
  3d6564: 2104         	movs	r1, #0x4
  3d6566: f021 fc2b    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x21856
  3d656a: 4b9b         	ldr	r3, [pc, #0x26c]        @ 0x3d67d8 <ScoreScreen::onQuit(cocos2d::CCObject*)+0x288>
  3d656c: 58e3         	ldr	r3, [r4, r3]
  3d656e: 681b         	ldr	r3, [r3]
  3d6570: 2b04         	cmp	r3, #0x4
  3d6572: d16e         	bne	0x3d6652 <ScoreScreen::onQuit(cocos2d::CCObject*)+0x102> @ imm = #0xdc
  3d6574: ab06         	add	r3, sp, #0x18
  3d6576: 4618         	mov	r0, r3
  3d6578: f3b3 ff3c    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3b3e78
  3d657c: aa0a         	add	r2, sp, #0x28
  3d657e: ab06         	add	r3, sp, #0x18
  3d6580: 4610         	mov	r0, r2
  3d6582: 4a96         	ldr	r2, [pc, #0x258]        @ 0x3d67dc <ScoreScreen::onQuit(cocos2d::CCObject*)+0x28c>
  3d6584: 447a         	add	r2, pc
  3d6586: 4611         	mov	r1, r2
  3d6588: 461a         	mov	r2, r3
  3d658a: f3e0 fa69    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3e04d2
  3d658e: ab07         	add	r3, sp, #0x1c
  3d6590: 4618         	mov	r0, r3
  3d6592: f3b3 ff2f    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3b3e5e
  3d6596: aa0b         	add	r2, sp, #0x2c
  3d6598: ab07         	add	r3, sp, #0x1c
  3d659a: 4610         	mov	r0, r2
  3d659c: 4a90         	ldr	r2, [pc, #0x240]        @ 0x3d67e0 <ScoreScreen::onQuit(cocos2d::CCObject*)+0x290>
  3d659e: 447a         	add	r2, pc
  3d65a0: 4611         	mov	r1, r2
  3d65a2: 461a         	mov	r2, r3
  3d65a4: f3e0 fa5c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3e04b8
  3d65a8: ab04         	add	r3, sp, #0x10
  3d65aa: 4618         	mov	r0, r3
  3d65ac: f3b3 ff22    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3b3e44
  3d65b0: aa08         	add	r2, sp, #0x20
  3d65b2: ab04         	add	r3, sp, #0x10
  3d65b4: 4610         	mov	r0, r2
  3d65b6: 4a8b         	ldr	r2, [pc, #0x22c]        @ 0x3d67e4 <ScoreScreen::onQuit(cocos2d::CCObject*)+0x294>
  3d65b8: 447a         	add	r2, pc
  3d65ba: 4611         	mov	r1, r2
  3d65bc: 461a         	mov	r2, r3
  3d65be: f3e0 fa4f    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3e049e
  3d65c2: ab08         	add	r3, sp, #0x20
  3d65c4: 4618         	mov	r0, r3
  3d65c6: f1c3 fa39    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1c3472
  3d65ca: 4605         	mov	r5, r0
  3d65cc: ab05         	add	r3, sp, #0x14
  3d65ce: 4618         	mov	r0, r3
  3d65d0: f3b3 ff10    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3b3e20
  3d65d4: aa09         	add	r2, sp, #0x24
  3d65d6: ab05         	add	r3, sp, #0x14
  3d65d8: 4610         	mov	r0, r2
  3d65da: 4a83         	ldr	r2, [pc, #0x20c]        @ 0x3d67e8 <ScoreScreen::onQuit(cocos2d::CCObject*)+0x298>
  3d65dc: 447a         	add	r2, pc
  3d65de: 4611         	mov	r1, r2
  3d65e0: 461a         	mov	r2, r3
  3d65e2: f3e0 fa3d    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3e047a
  3d65e6: ab09         	add	r3, sp, #0x24
  3d65e8: 4618         	mov	r0, r3
  3d65ea: f1c3 fa27    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1c344e
  3d65ee: 4603         	mov	r3, r0
  3d65f0: 4628         	mov	r0, r5
  3d65f2: 4619         	mov	r1, r3
  3d65f4: 2200         	movs	r2, #0x0
  3d65f6: f1c3 fc0b    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x1c3816
  3d65fa: 4603         	mov	r3, r0
  3d65fc: a90a         	add	r1, sp, #0x28
  3d65fe: aa0b         	add	r2, sp, #0x2c
  3d6600: 2000         	movs	r0, #0x0
  3d6602: 9000         	str	r0, [sp]
  3d6604: 2000         	movs	r0, #0x0
  3d6606: 9001         	str	r0, [sp, #0x4]
  3d6608: 4878         	ldr	r0, [pc, #0x1e0]        @ 0x3d67ec <ScoreScreen::onQuit(cocos2d::CCObject*)+0x29c>
  3d660a: 5820         	ldr	r0, [r4, r0]
  3d660c: f709 f8f2    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0xf6e1c
  3d6610: ab09         	add	r3, sp, #0x24
  3d6612: 4618         	mov	r0, r3
  3d6614: f3df f97e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3df2fc
  3d6618: ab05         	add	r3, sp, #0x14
  3d661a: 4618         	mov	r0, r3
  3d661c: f3b3 feee    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b3ddc
  3d6620: ab08         	add	r3, sp, #0x20
  3d6622: 4618         	mov	r0, r3
  3d6624: f3df f976    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3df2ec
  3d6628: ab04         	add	r3, sp, #0x10
  3d662a: 4618         	mov	r0, r3
  3d662c: f3b3 fee6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b3dcc
  3d6630: ab0b         	add	r3, sp, #0x2c
  3d6632: 4618         	mov	r0, r3
  3d6634: f3df f96e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3df2dc
  3d6638: ab07         	add	r3, sp, #0x1c
  3d663a: 4618         	mov	r0, r3
  3d663c: f3b3 fede    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b3dbc
  3d6640: ab0a         	add	r3, sp, #0x28
  3d6642: 4618         	mov	r0, r3
  3d6644: f3df f966    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3df2cc
  3d6648: ab06         	add	r3, sp, #0x18
  3d664a: 4618         	mov	r0, r3
  3d664c: f3b3 fed6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b3dac
  3d6650: e0bc         	b	0x3d67cc <ScoreScreen::onQuit(cocos2d::CCObject*)+0x27c> @ imm = #0x178
  3d6652: ab06         	add	r3, sp, #0x18
  3d6654: 4618         	mov	r0, r3
  3d6656: f3b3 fecd    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3b3d9a
  3d665a: aa0a         	add	r2, sp, #0x28
  3d665c: ab06         	add	r3, sp, #0x18
  3d665e: 4610         	mov	r0, r2
  3d6660: 4a63         	ldr	r2, [pc, #0x18c]        @ 0x3d67f0 <ScoreScreen::onQuit(cocos2d::CCObject*)+0x2a0>
  3d6662: 447a         	add	r2, pc
  3d6664: 4611         	mov	r1, r2
  3d6666: 461a         	mov	r2, r3
  3d6668: f3e0 f9fa    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3e03f4
  3d666c: ab07         	add	r3, sp, #0x1c
  3d666e: 4618         	mov	r0, r3
  3d6670: f3b3 fec0    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3b3d80
  3d6674: aa0b         	add	r2, sp, #0x2c
  3d6676: ab07         	add	r3, sp, #0x1c
  3d6678: 4610         	mov	r0, r2
  3d667a: 4a5e         	ldr	r2, [pc, #0x178]        @ 0x3d67f4 <ScoreScreen::onQuit(cocos2d::CCObject*)+0x2a4>
  3d667c: 447a         	add	r2, pc
  3d667e: 4611         	mov	r1, r2
  3d6680: 461a         	mov	r2, r3
  3d6682: f3e0 f9ed    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3e03da
  3d6686: ab04         	add	r3, sp, #0x10
  3d6688: 4618         	mov	r0, r3
  3d668a: f3b3 feb3    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3b3d66
  3d668e: aa08         	add	r2, sp, #0x20
  3d6690: ab04         	add	r3, sp, #0x10
  3d6692: 4610         	mov	r0, r2
  3d6694: 4a58         	ldr	r2, [pc, #0x160]        @ 0x3d67f8 <ScoreScreen::onQuit(cocos2d::CCObject*)+0x2a8>
  3d6696: 447a         	add	r2, pc
  3d6698: 4611         	mov	r1, r2
  3d669a: 461a         	mov	r2, r3
  3d669c: f3e0 f9e0    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3e03c0
  3d66a0: ab08         	add	r3, sp, #0x20
  3d66a2: 4618         	mov	r0, r3
  3d66a4: f1c3 f9ca    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1c3394
  3d66a8: 4605         	mov	r5, r0
  3d66aa: ab05         	add	r3, sp, #0x14
  3d66ac: 4618         	mov	r0, r3
  3d66ae: f3b3 fea1    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3b3d42
  3d66b2: aa09         	add	r2, sp, #0x24
  3d66b4: ab05         	add	r3, sp, #0x14
  3d66b6: 4610         	mov	r0, r2
  3d66b8: 4a50         	ldr	r2, [pc, #0x140]        @ 0x3d67fc <ScoreScreen::onQuit(cocos2d::CCObject*)+0x2ac>
  3d66ba: 447a         	add	r2, pc
  3d66bc: 4611         	mov	r1, r2
  3d66be: 461a         	mov	r2, r3
  3d66c0: f3e0 f9ce    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3e039c
  3d66c4: ab09         	add	r3, sp, #0x24
  3d66c6: 4618         	mov	r0, r3
  3d66c8: f1c3 f9b8    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1c3370
  3d66cc: 4603         	mov	r3, r0
  3d66ce: 4628         	mov	r0, r5
  3d66d0: 4619         	mov	r1, r3
  3d66d2: 2200         	movs	r2, #0x0
  3d66d4: f1c3 fb9c    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x1c3738
  3d66d8: 4603         	mov	r3, r0
  3d66da: a90a         	add	r1, sp, #0x28
  3d66dc: aa0b         	add	r2, sp, #0x2c
  3d66de: 2000         	movs	r0, #0x0
  3d66e0: 9000         	str	r0, [sp]
  3d66e2: 2000         	movs	r0, #0x0
  3d66e4: 9001         	str	r0, [sp, #0x4]
  3d66e6: 4841         	ldr	r0, [pc, #0x104]        @ 0x3d67ec <ScoreScreen::onQuit(cocos2d::CCObject*)+0x29c>
  3d66e8: 5820         	ldr	r0, [r4, r0]
  3d66ea: f709 f883    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0xf6efa
  3d66ee: ab09         	add	r3, sp, #0x24
  3d66f0: 4618         	mov	r0, r3
  3d66f2: f3df f90f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3df21e
  3d66f6: ab05         	add	r3, sp, #0x14
  3d66f8: 4618         	mov	r0, r3
  3d66fa: f3b3 fe7f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b3cfe
  3d66fe: ab08         	add	r3, sp, #0x20
  3d6700: 4618         	mov	r0, r3
  3d6702: f3df f907    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3df20e
  3d6706: ab04         	add	r3, sp, #0x10
  3d6708: 4618         	mov	r0, r3
  3d670a: f3b3 fe77    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b3cee
  3d670e: ab0b         	add	r3, sp, #0x2c
  3d6710: 4618         	mov	r0, r3
  3d6712: f3df f8ff    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3df1fe
  3d6716: ab07         	add	r3, sp, #0x1c
  3d6718: 4618         	mov	r0, r3
  3d671a: f3b3 fe6f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b3cde
  3d671e: ab0a         	add	r3, sp, #0x28
  3d6720: 4618         	mov	r0, r3
  3d6722: f3df f8f7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3df1ee
  3d6726: ab06         	add	r3, sp, #0x18
  3d6728: 4618         	mov	r0, r3
  3d672a: f3b3 fe67    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b3cce
  3d672e: e04d         	b	0x3d67cc <ScoreScreen::onQuit(cocos2d::CCObject*)+0x27c> @ imm = #0x9a
  3d6730: ab09         	add	r3, sp, #0x24
  3d6732: 4618         	mov	r0, r3
  3d6734: f3df f8ee    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3df1dc
  3d6738: e7ff         	b	0x3d673a <ScoreScreen::onQuit(cocos2d::CCObject*)+0x1ea> @ imm = #-0x2
  3d673a: ab05         	add	r3, sp, #0x14
  3d673c: 4618         	mov	r0, r3
  3d673e: f3b3 fe5d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b3cba
  3d6742: e7ff         	b	0x3d6744 <ScoreScreen::onQuit(cocos2d::CCObject*)+0x1f4> @ imm = #-0x2
  3d6744: ab08         	add	r3, sp, #0x20
  3d6746: 4618         	mov	r0, r3
  3d6748: f3df f8e4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3df1c8
  3d674c: e7ff         	b	0x3d674e <ScoreScreen::onQuit(cocos2d::CCObject*)+0x1fe> @ imm = #-0x2
  3d674e: ab04         	add	r3, sp, #0x10
  3d6750: 4618         	mov	r0, r3
  3d6752: f3b3 fe53    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b3ca6
  3d6756: ab0b         	add	r3, sp, #0x2c
  3d6758: 4618         	mov	r0, r3
  3d675a: f3df f8db    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3df1b6
  3d675e: e7ff         	b	0x3d6760 <ScoreScreen::onQuit(cocos2d::CCObject*)+0x210> @ imm = #-0x2
  3d6760: ab07         	add	r3, sp, #0x1c
  3d6762: 4618         	mov	r0, r3
  3d6764: f3b3 fe4a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b3c94
  3d6768: ab0a         	add	r3, sp, #0x28
  3d676a: 4618         	mov	r0, r3
  3d676c: f3df f8d2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3df1a4
  3d6770: e7ff         	b	0x3d6772 <ScoreScreen::onQuit(cocos2d::CCObject*)+0x222> @ imm = #-0x2
  3d6772: ab06         	add	r3, sp, #0x18
  3d6774: 4618         	mov	r0, r3
  3d6776: f3b3 fe41    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b3c82
  3d677a: f3b1 fc97    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3b192e
  3d677e: ab09         	add	r3, sp, #0x24
  3d6780: 4618         	mov	r0, r3
  3d6782: f3df f8c7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3df18e
  3d6786: e7ff         	b	0x3d6788 <ScoreScreen::onQuit(cocos2d::CCObject*)+0x238> @ imm = #-0x2
  3d6788: ab05         	add	r3, sp, #0x14
  3d678a: 4618         	mov	r0, r3
  3d678c: f3b3 fe36    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b3c6c
  3d6790: e7ff         	b	0x3d6792 <ScoreScreen::onQuit(cocos2d::CCObject*)+0x242> @ imm = #-0x2
  3d6792: ab08         	add	r3, sp, #0x20
  3d6794: 4618         	mov	r0, r3
  3d6796: f3df f8bd    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3df17a
  3d679a: e7ff         	b	0x3d679c <ScoreScreen::onQuit(cocos2d::CCObject*)+0x24c> @ imm = #-0x2
  3d679c: ab04         	add	r3, sp, #0x10
  3d679e: 4618         	mov	r0, r3
  3d67a0: f3b3 fe2c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b3c58
  3d67a4: ab0b         	add	r3, sp, #0x2c
  3d67a6: 4618         	mov	r0, r3
  3d67a8: f3df f8b4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3df168
  3d67ac: e7ff         	b	0x3d67ae <ScoreScreen::onQuit(cocos2d::CCObject*)+0x25e> @ imm = #-0x2
  3d67ae: ab07         	add	r3, sp, #0x1c
  3d67b0: 4618         	mov	r0, r3
  3d67b2: f3b3 fe23    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b3c46
  3d67b6: ab0a         	add	r3, sp, #0x28
  3d67b8: 4618         	mov	r0, r3
  3d67ba: f3df f8ab    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3df156
  3d67be: e7ff         	b	0x3d67c0 <ScoreScreen::onQuit(cocos2d::CCObject*)+0x270> @ imm = #-0x2
  3d67c0: ab06         	add	r3, sp, #0x18
  3d67c2: 4618         	mov	r0, r3
  3d67c4: f3b3 fe1a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b3c34
  3d67c8: f3b1 fc70    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3b18e0
  3d67cc: b00d         	add	sp, #0x34
  3d67ce: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3d67cf); words below are literal-pool data ---
  3d67d0: c4ae         	stm	r4!, {r1, r2, r3, r5, r7}
  3d67d2: 0055         	lsls	r5, r2, #0x1
  3d67d4: d730         	bvc	0x3d6838 <ScoreScreen::onKeyboard(cocos2d::CCObject*)+0x38> @ imm = #0x60
  3d67d6: ffff d838    	vqshrun.s64	d29, q12, #0x1
  3d67da: ffff 102c    	<unknown>
  3d67de: 0040         	lsls	r0, r0, #0x1
  3d67e0: 1022         	asrs	r2, r4, #0x20
  3d67e2: 0040         	lsls	r0, r0, #0x1
  3d67e4: 1030         	asrs	r0, r6, #0x20
  3d67e6: 0040         	lsls	r0, r0, #0x1
  3d67e8: 0fa4         	lsrs	r4, r4, #0x1e
  3d67ea: 0040         	lsls	r0, r0, #0x1
  3d67ec: dedc         	udf	#0xdc
  3d67ee: ffff 0f4e    	<unknown>
  3d67f2: 0040         	lsls	r0, r0, #0x1
  3d67f4: 0f74         	lsrs	r4, r6, #0x1d
  3d67f6: 0040         	lsls	r0, r0, #0x1
  3d67f8: 0f52         	lsrs	r2, r2, #0x1d
  3d67fa: 0040         	lsls	r0, r0, #0x1
  3d67fc: 0ec6         	lsrs	r6, r0, #0x1b
  3d67fe: 0040         	lsls	r0, r0, #0x1

// ==== ScoreScreen::onKeyboard
//      file offset 0x3d6800 (= ELF address; Ghidra 0x3e6800), 64 bytes, Thumb-2
  3d6800: b500         	push	{lr}
  3d6802: b083         	sub	sp, #0xc
  3d6804: 9001         	str	r0, [sp, #0x4]
  3d6806: 9100         	str	r1, [sp]
  3d6808: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x3d6834 <ScoreScreen::onKeyboard(cocos2d::CCObject*)+0x34>
  3d680a: 447a         	add	r2, pc
  3d680c: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x3d6838 <ScoreScreen::onKeyboard(cocos2d::CCObject*)+0x38>
  3d680e: 58d3         	ldr	r3, [r2, r3]
  3d6810: 681b         	ldr	r3, [r3]
  3d6812: 4618         	mov	r0, r3
  3d6814: 2104         	movs	r1, #0x4
  3d6816: f021 fad3    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x215a6
  3d681a: f209 ff49    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x209e92
  3d681e: 4603         	mov	r3, r0
  3d6820: 4618         	mov	r0, r3
  3d6822: 4b06         	ldr	r3, [pc, #0x18]         @ 0x3d683c <ScoreScreen::onKeyboard(cocos2d::CCObject*)+0x3c>
  3d6824: 447b         	add	r3, pc
  3d6826: 4619         	mov	r1, r3
  3d6828: 2200         	movs	r2, #0x0
  3d682a: f20a f97f    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x20a2fe
  3d682e: b003         	add	sp, #0xc
  3d6830: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3d6833); words below are literal-pool data ---
  3d6834: c1fe         	stm	r1!, {r1, r2, r3, r4, r5, r6, r7}
  3d6836: 0055         	lsls	r5, r2, #0x1
  3d6838: d730         	bvc	0x3d689c <ScoreScreen::onRecord(cocos2d::CCObject*)+0x5c> @ imm = #0x60
  3d683a: ffff 0df8    	<unknown>
  3d683e: 0040         	lsls	r0, r0, #0x1

// ==== ScoreScreen::onRecord
//      file offset 0x3d6840 (= ELF address; Ghidra 0x3e6840), 1208 bytes, Thumb-2
  3d6840: b530         	push	{r4, r5, lr}
  3d6842: b08d         	sub	sp, #0x34
  3d6844: 9003         	str	r0, [sp, #0xc]
  3d6846: 9102         	str	r1, [sp, #0x8]
  3d6848: f8df 4468    	ldr.w	r4, [pc, #0x468]        @ 0x3d6cb4 <ScoreScreen::onRecord(cocos2d::CCObject*)+0x474>
  3d684c: 447c         	add	r4, pc
  3d684e: 9b03         	ldr	r3, [sp, #0xc]
  3d6850: ed93 7a39    	vldr	s14, [r3, #228]
  3d6854: eef6 7a00    	vmov.f32	s15, #5.000000e-01
  3d6858: eeb4 7ae7    	vcmpe.f32	s14, s15
  3d685c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3d6860: d500         	bpl	0x3d6864 <ScoreScreen::onRecord(cocos2d::CCObject*)+0x24> @ imm = #0x0
  3d6862: e225         	b	0x3d6cb0 <ScoreScreen::onRecord(cocos2d::CCObject*)+0x470> @ imm = #0x44a
  3d6864: f8df 3450    	ldr.w	r3, [pc, #0x450]        @ 0x3d6cb8 <ScoreScreen::onRecord(cocos2d::CCObject*)+0x478>
  3d6868: 58e3         	ldr	r3, [r4, r3]
  3d686a: 681b         	ldr	r3, [r3]
  3d686c: 4618         	mov	r0, r3
  3d686e: 2104         	movs	r1, #0x4
  3d6870: f021 faa6    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x2154c
  3d6874: f056 f8ca    	bl	0x42ca0c <ApplicationInterface::isVideoRecordingAvaliable()> @ imm = #0x56194
  3d6878: 4603         	mov	r3, r0
  3d687a: f083 0301    	eor	r3, r3, #0x1
  3d687e: b2db         	uxtb	r3, r3
  3d6880: 2b00         	cmp	r3, #0x0
  3d6882: d005         	beq	0x3d6890 <ScoreScreen::onRecord(cocos2d::CCObject*)+0x50> @ imm = #0xa
  3d6884: 9803         	ldr	r0, [sp, #0xc]
  3d6886: 2100         	movs	r1, #0x0
  3d6888: 2200         	movs	r2, #0x0
  3d688a: f000 fb49    	bl	0x3d6f20 <ScoreScreen::showScreen(bool, bool)> @ imm = #0x692
  3d688e: e20f         	b	0x3d6cb0 <ScoreScreen::onRecord(cocos2d::CCObject*)+0x470> @ imm = #0x41e
  3d6890: 9b03         	ldr	r3, [sp, #0xc]
  3d6892: f04f 0200    	mov.w	r2, #0x0
  3d6896: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  3d689a: f04c fb4f    	bl	0x422f3c <ApplicationInterface::isVideoRecording()> @ imm = #0x4c69e
  3d689e: 4603         	mov	r3, r0
  3d68a0: 2b00         	cmp	r3, #0x0
  3d68a2: d07a         	beq	0x3d699a <ScoreScreen::onRecord(cocos2d::CCObject*)+0x15a> @ imm = #0xf4
  3d68a4: f04c fb22    	bl	0x422eec <ApplicationInterface::stopVideoRecording()> @ imm = #0x4c644
  3d68a8: 9b03         	ldr	r3, [sp, #0xc]
  3d68aa: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3d68ae: 681b         	ldr	r3, [r3]
  3d68b0: f503 7305    	add.w	r3, r3, #0x214
  3d68b4: 681c         	ldr	r4, [r3]
  3d68b6: 9b03         	ldr	r3, [sp, #0xc]
  3d68b8: f8d3 50f8    	ldr.w	r5, [r3, #0xf8]
  3d68bc: f206 f8a4    	bl	0x5dca08 <cocos2d::CCSpriteFrameCache::sharedSpriteFrameCache()> @ imm = #0x206148
  3d68c0: 4603         	mov	r3, r0
  3d68c2: 4618         	mov	r0, r3
  3d68c4: 4bfd         	ldr	r3, [pc, #0x3f4]        @ 0x3d6cbc <ScoreScreen::onRecord(cocos2d::CCObject*)+0x47c>
  3d68c6: 447b         	add	r3, pc
  3d68c8: 4619         	mov	r1, r3
  3d68ca: f207 fc3d    	bl	0x5de148 <cocos2d::CCSpriteFrameCache::spriteFrameByName(char const*)> @ imm = #0x20787a
  3d68ce: 4603         	mov	r3, r0
  3d68d0: 4628         	mov	r0, r5
  3d68d2: 4619         	mov	r1, r3
  3d68d4: 47a0         	blx	r4
  3d68d6: 9b03         	ldr	r3, [sp, #0xc]
  3d68d8: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3d68dc: 681b         	ldr	r3, [r3]
  3d68de: 3340         	adds	r3, #0x40
  3d68e0: 681b         	ldr	r3, [r3]
  3d68e2: 9a03         	ldr	r2, [sp, #0xc]
  3d68e4: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  3d68e8: 4610         	mov	r0, r2
  3d68ea: f64c 41cd    	movw	r1, #0xcccd
  3d68ee: f6c3 714c    	movt	r1, #0x3f4c
  3d68f2: 4798         	blx	r3
  3d68f4: ab07         	add	r3, sp, #0x1c
  3d68f6: 4618         	mov	r0, r3
  3d68f8: f3b3 fd7c    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3b3af8
  3d68fc: aa0a         	add	r2, sp, #0x28
  3d68fe: ab07         	add	r3, sp, #0x1c
  3d6900: 4610         	mov	r0, r2
  3d6902: 4aef         	ldr	r2, [pc, #0x3bc]        @ 0x3d6cc0 <ScoreScreen::onRecord(cocos2d::CCObject*)+0x480>
  3d6904: 447a         	add	r2, pc
  3d6906: 4611         	mov	r1, r2
  3d6908: 461a         	mov	r2, r3
  3d690a: f3e0 f8a9    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3e0152
  3d690e: ab08         	add	r3, sp, #0x20
  3d6910: 4618         	mov	r0, r3
  3d6912: f3b3 fd6f    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3b3ade
  3d6916: aa0b         	add	r2, sp, #0x2c
  3d6918: ab08         	add	r3, sp, #0x20
  3d691a: 4610         	mov	r0, r2
  3d691c: 4ae9         	ldr	r2, [pc, #0x3a4]        @ 0x3d6cc4 <ScoreScreen::onRecord(cocos2d::CCObject*)+0x484>
  3d691e: 447a         	add	r2, pc
  3d6920: 4611         	mov	r1, r2
  3d6922: 461a         	mov	r2, r3
  3d6924: f3e0 f89c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3e0138
  3d6928: ab06         	add	r3, sp, #0x18
  3d692a: 4618         	mov	r0, r3
  3d692c: f3b3 fd62    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3b3ac4
  3d6930: aa09         	add	r2, sp, #0x24
  3d6932: ab06         	add	r3, sp, #0x18
  3d6934: 4610         	mov	r0, r2
  3d6936: 4ae4         	ldr	r2, [pc, #0x390]        @ 0x3d6cc8 <ScoreScreen::onRecord(cocos2d::CCObject*)+0x488>
  3d6938: 447a         	add	r2, pc
  3d693a: 4611         	mov	r1, r2
  3d693c: 461a         	mov	r2, r3
  3d693e: f3e0 f88f    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3e011e
  3d6942: ab09         	add	r3, sp, #0x24
  3d6944: 4618         	mov	r0, r3
  3d6946: f1c3 f879    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1c30f2
  3d694a: 4603         	mov	r3, r0
  3d694c: 4618         	mov	r0, r3
  3d694e: 2100         	movs	r1, #0x0
  3d6950: f1c3 fa5e    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x1c34bc
  3d6954: 4603         	mov	r3, r0
  3d6956: a90a         	add	r1, sp, #0x28
  3d6958: aa0b         	add	r2, sp, #0x2c
  3d695a: 2000         	movs	r0, #0x0
  3d695c: 9000         	str	r0, [sp]
  3d695e: 2000         	movs	r0, #0x0
  3d6960: 9001         	str	r0, [sp, #0x4]
  3d6962: 2000         	movs	r0, #0x0
  3d6964: f708 ff46    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0xf7174
  3d6968: ab09         	add	r3, sp, #0x24
  3d696a: 4618         	mov	r0, r3
  3d696c: f3de ffd2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3defa4
  3d6970: ab06         	add	r3, sp, #0x18
  3d6972: 4618         	mov	r0, r3
  3d6974: f3b3 fd42    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b3a84
  3d6978: ab0b         	add	r3, sp, #0x2c
  3d697a: 4618         	mov	r0, r3
  3d697c: f3de ffca    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3def94
  3d6980: ab08         	add	r3, sp, #0x20
  3d6982: 4618         	mov	r0, r3
  3d6984: f3b3 fd3a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b3a74
  3d6988: ab0a         	add	r3, sp, #0x28
  3d698a: 4618         	mov	r0, r3
  3d698c: f3de ffc2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3def84
  3d6990: ab07         	add	r3, sp, #0x1c
  3d6992: 4618         	mov	r0, r3
  3d6994: f3b3 fd32    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b3a64
  3d6998: e118         	b	0x3d6bcc <ScoreScreen::onRecord(cocos2d::CCObject*)+0x38c> @ imm = #0x230
  3d699a: f04c fb19    	bl	0x422fd0 <ApplicationInterface::hasUnViewedVideo()> @ imm = #0x4c632
  3d699e: 4603         	mov	r3, r0
  3d69a0: 2b00         	cmp	r3, #0x0
  3d69a2: d06e         	beq	0x3d6a82 <ScoreScreen::onRecord(cocos2d::CCObject*)+0x242> @ imm = #0xdc
  3d69a4: ab06         	add	r3, sp, #0x18
  3d69a6: 4618         	mov	r0, r3
  3d69a8: f3b3 fd24    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3b3a48
  3d69ac: aa0a         	add	r2, sp, #0x28
  3d69ae: ab06         	add	r3, sp, #0x18
  3d69b0: 4610         	mov	r0, r2
  3d69b2: 4ac6         	ldr	r2, [pc, #0x318]        @ 0x3d6ccc <ScoreScreen::onRecord(cocos2d::CCObject*)+0x48c>
  3d69b4: 447a         	add	r2, pc
  3d69b6: 4611         	mov	r1, r2
  3d69b8: 461a         	mov	r2, r3
  3d69ba: f3e0 f851    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3e00a2
  3d69be: ab07         	add	r3, sp, #0x1c
  3d69c0: 4618         	mov	r0, r3
  3d69c2: f3b3 fd17    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3b3a2e
  3d69c6: aa0b         	add	r2, sp, #0x2c
  3d69c8: ab07         	add	r3, sp, #0x1c
  3d69ca: 4610         	mov	r0, r2
  3d69cc: 4ac0         	ldr	r2, [pc, #0x300]        @ 0x3d6cd0 <ScoreScreen::onRecord(cocos2d::CCObject*)+0x490>
  3d69ce: 447a         	add	r2, pc
  3d69d0: 4611         	mov	r1, r2
  3d69d2: 461a         	mov	r2, r3
  3d69d4: f3e0 f844    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3e0088
  3d69d8: ab04         	add	r3, sp, #0x10
  3d69da: 4618         	mov	r0, r3
  3d69dc: f3b3 fd0a    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3b3a14
  3d69e0: aa08         	add	r2, sp, #0x20
  3d69e2: ab04         	add	r3, sp, #0x10
  3d69e4: 4610         	mov	r0, r2
  3d69e6: 4abb         	ldr	r2, [pc, #0x2ec]        @ 0x3d6cd4 <ScoreScreen::onRecord(cocos2d::CCObject*)+0x494>
  3d69e8: 447a         	add	r2, pc
  3d69ea: 4611         	mov	r1, r2
  3d69ec: 461a         	mov	r2, r3
  3d69ee: f3e0 f837    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3e006e
  3d69f2: ab08         	add	r3, sp, #0x20
  3d69f4: 4618         	mov	r0, r3
  3d69f6: f1c3 f821    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1c3042
  3d69fa: 4605         	mov	r5, r0
  3d69fc: ab05         	add	r3, sp, #0x14
  3d69fe: 4618         	mov	r0, r3
  3d6a00: f3b3 fcf8    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3b39f0
  3d6a04: aa09         	add	r2, sp, #0x24
  3d6a06: ab05         	add	r3, sp, #0x14
  3d6a08: 4610         	mov	r0, r2
  3d6a0a: 4ab3         	ldr	r2, [pc, #0x2cc]        @ 0x3d6cd8 <ScoreScreen::onRecord(cocos2d::CCObject*)+0x498>
  3d6a0c: 447a         	add	r2, pc
  3d6a0e: 4611         	mov	r1, r2
  3d6a10: 461a         	mov	r2, r3
  3d6a12: f3e0 f825    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3e004a
  3d6a16: ab09         	add	r3, sp, #0x24
  3d6a18: 4618         	mov	r0, r3
  3d6a1a: f1c3 f80f    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1c301e
  3d6a1e: 4603         	mov	r3, r0
  3d6a20: 4628         	mov	r0, r5
  3d6a22: 4619         	mov	r1, r3
  3d6a24: 2200         	movs	r2, #0x0
  3d6a26: f1c3 f9f3    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x1c33e6
  3d6a2a: 4603         	mov	r3, r0
  3d6a2c: 9803         	ldr	r0, [sp, #0xc]
  3d6a2e: a90a         	add	r1, sp, #0x28
  3d6a30: aa0b         	add	r2, sp, #0x2c
  3d6a32: 2500         	movs	r5, #0x0
  3d6a34: 9500         	str	r5, [sp]
  3d6a36: 9001         	str	r0, [sp, #0x4]
  3d6a38: 48a8         	ldr	r0, [pc, #0x2a0]        @ 0x3d6cdc <ScoreScreen::onRecord(cocos2d::CCObject*)+0x49c>
  3d6a3a: 5820         	ldr	r0, [r4, r0]
  3d6a3c: f708 feda    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0xf724c
  3d6a40: ab09         	add	r3, sp, #0x24
  3d6a42: 4618         	mov	r0, r3
  3d6a44: f3de ff66    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3deecc
  3d6a48: ab05         	add	r3, sp, #0x14
  3d6a4a: 4618         	mov	r0, r3
  3d6a4c: f3b3 fcd6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b39ac
  3d6a50: ab08         	add	r3, sp, #0x20
  3d6a52: 4618         	mov	r0, r3
  3d6a54: f3de ff5e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3deebc
  3d6a58: ab04         	add	r3, sp, #0x10
  3d6a5a: 4618         	mov	r0, r3
  3d6a5c: f3b3 fcce    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b399c
  3d6a60: ab0b         	add	r3, sp, #0x2c
  3d6a62: 4618         	mov	r0, r3
  3d6a64: f3de ff56    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3deeac
  3d6a68: ab07         	add	r3, sp, #0x1c
  3d6a6a: 4618         	mov	r0, r3
  3d6a6c: f3b3 fcc6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b398c
  3d6a70: ab0a         	add	r3, sp, #0x28
  3d6a72: 4618         	mov	r0, r3
  3d6a74: f3de ff4e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3dee9c
  3d6a78: ab06         	add	r3, sp, #0x18
  3d6a7a: 4618         	mov	r0, r3
  3d6a7c: f3b3 fcbe    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b397c
  3d6a80: e0a4         	b	0x3d6bcc <ScoreScreen::onRecord(cocos2d::CCObject*)+0x38c> @ imm = #0x148
  3d6a82: ab07         	add	r3, sp, #0x1c
  3d6a84: 4618         	mov	r0, r3
  3d6a86: f3b3 fcb5    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3b396a
  3d6a8a: aa0a         	add	r2, sp, #0x28
  3d6a8c: ab07         	add	r3, sp, #0x1c
  3d6a8e: 4610         	mov	r0, r2
  3d6a90: 4a93         	ldr	r2, [pc, #0x24c]        @ 0x3d6ce0 <ScoreScreen::onRecord(cocos2d::CCObject*)+0x4a0>
  3d6a92: 447a         	add	r2, pc
  3d6a94: 4611         	mov	r1, r2
  3d6a96: 461a         	mov	r2, r3
  3d6a98: f3df ffe2    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3dffc4
  3d6a9c: ab08         	add	r3, sp, #0x20
  3d6a9e: 4618         	mov	r0, r3
  3d6aa0: f3b3 fca8    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3b3950
  3d6aa4: aa0b         	add	r2, sp, #0x2c
  3d6aa6: ab08         	add	r3, sp, #0x20
  3d6aa8: 4610         	mov	r0, r2
  3d6aaa: 4a8e         	ldr	r2, [pc, #0x238]        @ 0x3d6ce4 <ScoreScreen::onRecord(cocos2d::CCObject*)+0x4a4>
  3d6aac: 447a         	add	r2, pc
  3d6aae: 4611         	mov	r1, r2
  3d6ab0: 461a         	mov	r2, r3
  3d6ab2: f3df ffd5    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3dffaa
  3d6ab6: ab06         	add	r3, sp, #0x18
  3d6ab8: 4618         	mov	r0, r3
  3d6aba: f3b3 fc9b    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3b3936
  3d6abe: aa09         	add	r2, sp, #0x24
  3d6ac0: ab06         	add	r3, sp, #0x18
  3d6ac2: 4610         	mov	r0, r2
  3d6ac4: 4a88         	ldr	r2, [pc, #0x220]        @ 0x3d6ce8 <ScoreScreen::onRecord(cocos2d::CCObject*)+0x4a8>
  3d6ac6: 447a         	add	r2, pc
  3d6ac8: 4611         	mov	r1, r2
  3d6aca: 461a         	mov	r2, r3
  3d6acc: f3df ffc8    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3dff90
  3d6ad0: ab09         	add	r3, sp, #0x24
  3d6ad2: 4618         	mov	r0, r3
  3d6ad4: f1c2 ffb2    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1c2f64
  3d6ad8: 4603         	mov	r3, r0
  3d6ada: 4618         	mov	r0, r3
  3d6adc: 2100         	movs	r1, #0x0
  3d6ade: f1c3 f997    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x1c332e
  3d6ae2: 4603         	mov	r3, r0
  3d6ae4: a90a         	add	r1, sp, #0x28
  3d6ae6: aa0b         	add	r2, sp, #0x2c
  3d6ae8: 2000         	movs	r0, #0x0
  3d6aea: 9000         	str	r0, [sp]
  3d6aec: 2000         	movs	r0, #0x0
  3d6aee: 9001         	str	r0, [sp, #0x4]
  3d6af0: 2000         	movs	r0, #0x0
  3d6af2: f708 fe7f    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0xf7302
  3d6af6: ab09         	add	r3, sp, #0x24
  3d6af8: 4618         	mov	r0, r3
  3d6afa: f3de ff0b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3dee16
  3d6afe: ab06         	add	r3, sp, #0x18
  3d6b00: 4618         	mov	r0, r3
  3d6b02: f3b3 fc7b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b38f6
  3d6b06: ab0b         	add	r3, sp, #0x2c
  3d6b08: 4618         	mov	r0, r3
  3d6b0a: f3de ff03    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3dee06
  3d6b0e: ab08         	add	r3, sp, #0x20
  3d6b10: 4618         	mov	r0, r3
  3d6b12: f3b3 fc73    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b38e6
  3d6b16: ab0a         	add	r3, sp, #0x28
  3d6b18: 4618         	mov	r0, r3
  3d6b1a: f3de fefb    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3dedf6
  3d6b1e: ab07         	add	r3, sp, #0x1c
  3d6b20: 4618         	mov	r0, r3
  3d6b22: f3b3 fc6b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b38d6
  3d6b26: f04c f8f9    	bl	0x422d1c <ApplicationInterface::startVideoRecording()> @ imm = #0x4c1f2
  3d6b2a: 9b03         	ldr	r3, [sp, #0xc]
  3d6b2c: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3d6b30: 681b         	ldr	r3, [r3]
  3d6b32: f503 7305    	add.w	r3, r3, #0x214
  3d6b36: 681c         	ldr	r4, [r3]
  3d6b38: 9b03         	ldr	r3, [sp, #0xc]
  3d6b3a: f8d3 50f8    	ldr.w	r5, [r3, #0xf8]
  3d6b3e: f205 ff63    	bl	0x5dca08 <cocos2d::CCSpriteFrameCache::sharedSpriteFrameCache()> @ imm = #0x205ec6
  3d6b42: 4603         	mov	r3, r0
  3d6b44: 4618         	mov	r0, r3
  3d6b46: 4b69         	ldr	r3, [pc, #0x1a4]        @ 0x3d6cec <ScoreScreen::onRecord(cocos2d::CCObject*)+0x4ac>
  3d6b48: 447b         	add	r3, pc
  3d6b4a: 4619         	mov	r1, r3
  3d6b4c: f207 fafc    	bl	0x5de148 <cocos2d::CCSpriteFrameCache::spriteFrameByName(char const*)> @ imm = #0x2075f8
  3d6b50: 4603         	mov	r3, r0
  3d6b52: 4628         	mov	r0, r5
  3d6b54: 4619         	mov	r1, r3
  3d6b56: 47a0         	blx	r4
  3d6b58: 9b03         	ldr	r3, [sp, #0xc]
  3d6b5a: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3d6b5e: 681b         	ldr	r3, [r3]
  3d6b60: 3340         	adds	r3, #0x40
  3d6b62: 681b         	ldr	r3, [r3]
  3d6b64: 9a03         	ldr	r2, [sp, #0xc]
  3d6b66: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  3d6b6a: 4610         	mov	r0, r2
  3d6b6c: f04f 517e    	mov.w	r1, #0x3f800000
  3d6b70: 4798         	blx	r3
  3d6b72: f7a0 ffe5    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x5f036
  3d6b76: 4603         	mov	r3, r0
  3d6b78: 4618         	mov	r0, r3
  3d6b7a: f7a3 fdd3    	bl	0x37a724 <NetworkManager::isUsingHostedServer()> @ imm = #-0x5c45a
  3d6b7e: 4603         	mov	r3, r0
  3d6b80: 2b00         	cmp	r3, #0x0
  3d6b82: d023         	beq	0x3d6bcc <ScoreScreen::onRecord(cocos2d::CCObject*)+0x38c> @ imm = #0x46
  3d6b84: f209 fd94    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x209b28
  3d6b88: 4604         	mov	r4, r0
  3d6b8a: ab0a         	add	r3, sp, #0x28
  3d6b8c: 4618         	mov	r0, r3
  3d6b8e: f3b3 fc31    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3b3862
  3d6b92: aa0b         	add	r2, sp, #0x2c
  3d6b94: ab0a         	add	r3, sp, #0x28
  3d6b96: 4610         	mov	r0, r2
  3d6b98: 4a55         	ldr	r2, [pc, #0x154]        @ 0x3d6cf0 <ScoreScreen::onRecord(cocos2d::CCObject*)+0x4b0>
  3d6b9a: 447a         	add	r2, pc
  3d6b9c: 4611         	mov	r1, r2
  3d6b9e: 461a         	mov	r2, r3
  3d6ba0: f3df ff5e    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3dfebc
  3d6ba4: ab0b         	add	r3, sp, #0x2c
  3d6ba6: 4618         	mov	r0, r3
  3d6ba8: f1c2 ff48    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1c2e90
  3d6bac: 4603         	mov	r3, r0
  3d6bae: 4620         	mov	r0, r4
  3d6bb0: 4a50         	ldr	r2, [pc, #0x140]        @ 0x3d6cf4 <ScoreScreen::onRecord(cocos2d::CCObject*)+0x4b4>
  3d6bb2: 447a         	add	r2, pc
  3d6bb4: 4611         	mov	r1, r2
  3d6bb6: 461a         	mov	r2, r3
  3d6bb8: f209 ffb8    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x209f70
  3d6bbc: ab0b         	add	r3, sp, #0x2c
  3d6bbe: 4618         	mov	r0, r3
  3d6bc0: f3de fea8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3ded50
  3d6bc4: ab0a         	add	r3, sp, #0x28
  3d6bc6: 4618         	mov	r0, r3
  3d6bc8: f3b3 fc18    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b3830
  3d6bcc: 9803         	ldr	r0, [sp, #0xc]
  3d6bce: 2100         	movs	r1, #0x0
  3d6bd0: 2200         	movs	r2, #0x0
  3d6bd2: f000 f9a5    	bl	0x3d6f20 <ScoreScreen::showScreen(bool, bool)> @ imm = #0x34a
  3d6bd6: e06b         	b	0x3d6cb0 <ScoreScreen::onRecord(cocos2d::CCObject*)+0x470> @ imm = #0xd6
  3d6bd8: ab09         	add	r3, sp, #0x24
  3d6bda: 4618         	mov	r0, r3
  3d6bdc: f3de fe9a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3ded34
  3d6be0: e7ff         	b	0x3d6be2 <ScoreScreen::onRecord(cocos2d::CCObject*)+0x3a2> @ imm = #-0x2
  3d6be2: ab06         	add	r3, sp, #0x18
  3d6be4: 4618         	mov	r0, r3
  3d6be6: f3b3 fc09    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b3812
  3d6bea: ab0b         	add	r3, sp, #0x2c
  3d6bec: 4618         	mov	r0, r3
  3d6bee: f3de fe91    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3ded22
  3d6bf2: e7ff         	b	0x3d6bf4 <ScoreScreen::onRecord(cocos2d::CCObject*)+0x3b4> @ imm = #-0x2
  3d6bf4: ab08         	add	r3, sp, #0x20
  3d6bf6: 4618         	mov	r0, r3
  3d6bf8: f3b3 fc00    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b3800
  3d6bfc: ab0a         	add	r3, sp, #0x28
  3d6bfe: 4618         	mov	r0, r3
  3d6c00: f3de fe88    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3ded10
  3d6c04: e7ff         	b	0x3d6c06 <ScoreScreen::onRecord(cocos2d::CCObject*)+0x3c6> @ imm = #-0x2
  3d6c06: ab07         	add	r3, sp, #0x1c
  3d6c08: 4618         	mov	r0, r3
  3d6c0a: f3b3 fbf7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b37ee
  3d6c0e: f3b1 fa4d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3b149a
  3d6c12: ab09         	add	r3, sp, #0x24
  3d6c14: 4618         	mov	r0, r3
  3d6c16: f3de fe7d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3decfa
  3d6c1a: e7ff         	b	0x3d6c1c <ScoreScreen::onRecord(cocos2d::CCObject*)+0x3dc> @ imm = #-0x2
  3d6c1c: ab05         	add	r3, sp, #0x14
  3d6c1e: 4618         	mov	r0, r3
  3d6c20: f3b3 fbec    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b37d8
  3d6c24: e7ff         	b	0x3d6c26 <ScoreScreen::onRecord(cocos2d::CCObject*)+0x3e6> @ imm = #-0x2
  3d6c26: ab08         	add	r3, sp, #0x20
  3d6c28: 4618         	mov	r0, r3
  3d6c2a: f3de fe73    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3dece6
  3d6c2e: e7ff         	b	0x3d6c30 <ScoreScreen::onRecord(cocos2d::CCObject*)+0x3f0> @ imm = #-0x2
  3d6c30: ab04         	add	r3, sp, #0x10
  3d6c32: 4618         	mov	r0, r3
  3d6c34: f3b3 fbe2    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b37c4
  3d6c38: ab0b         	add	r3, sp, #0x2c
  3d6c3a: 4618         	mov	r0, r3
  3d6c3c: f3de fe6a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3decd4
  3d6c40: e7ff         	b	0x3d6c42 <ScoreScreen::onRecord(cocos2d::CCObject*)+0x402> @ imm = #-0x2
  3d6c42: ab07         	add	r3, sp, #0x1c
  3d6c44: 4618         	mov	r0, r3
  3d6c46: f3b3 fbd9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b37b2
  3d6c4a: ab0a         	add	r3, sp, #0x28
  3d6c4c: 4618         	mov	r0, r3
  3d6c4e: f3de fe61    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3decc2
  3d6c52: e7ff         	b	0x3d6c54 <ScoreScreen::onRecord(cocos2d::CCObject*)+0x414> @ imm = #-0x2
  3d6c54: ab06         	add	r3, sp, #0x18
  3d6c56: 4618         	mov	r0, r3
  3d6c58: f3b3 fbd0    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b37a0
  3d6c5c: f3b1 fa26    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3b144c
  3d6c60: ab09         	add	r3, sp, #0x24
  3d6c62: 4618         	mov	r0, r3
  3d6c64: f3de fe56    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3decac
  3d6c68: e7ff         	b	0x3d6c6a <ScoreScreen::onRecord(cocos2d::CCObject*)+0x42a> @ imm = #-0x2
  3d6c6a: ab06         	add	r3, sp, #0x18
  3d6c6c: 4618         	mov	r0, r3
  3d6c6e: f3b3 fbc5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b378a
  3d6c72: ab0b         	add	r3, sp, #0x2c
  3d6c74: 4618         	mov	r0, r3
  3d6c76: f3de fe4d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3dec9a
  3d6c7a: e7ff         	b	0x3d6c7c <ScoreScreen::onRecord(cocos2d::CCObject*)+0x43c> @ imm = #-0x2
  3d6c7c: ab08         	add	r3, sp, #0x20
  3d6c7e: 4618         	mov	r0, r3
  3d6c80: f3b3 fbbc    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b3778
  3d6c84: ab0a         	add	r3, sp, #0x28
  3d6c86: 4618         	mov	r0, r3
  3d6c88: f3de fe44    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3dec88
  3d6c8c: e7ff         	b	0x3d6c8e <ScoreScreen::onRecord(cocos2d::CCObject*)+0x44e> @ imm = #-0x2
  3d6c8e: ab07         	add	r3, sp, #0x1c
  3d6c90: 4618         	mov	r0, r3
  3d6c92: f3b3 fbb3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b3766
  3d6c96: f3b1 fa09    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3b1412
  3d6c9a: ab0b         	add	r3, sp, #0x2c
  3d6c9c: 4618         	mov	r0, r3
  3d6c9e: f3de fe39    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3dec72
  3d6ca2: e7ff         	b	0x3d6ca4 <ScoreScreen::onRecord(cocos2d::CCObject*)+0x464> @ imm = #-0x2
  3d6ca4: ab0a         	add	r3, sp, #0x28
  3d6ca6: 4618         	mov	r0, r3
  3d6ca8: f3b3 fba8    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b3750
  3d6cac: f3b1 f9fe    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3b13fc
  3d6cb0: b00d         	add	sp, #0x34
  3d6cb2: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3d6cb3); words below are literal-pool data ---
  3d6cb4: c1bc         	stm	r1!, {r2, r3, r4, r5, r7}
  3d6cb6: 0055         	lsls	r5, r2, #0x1
  3d6cb8: d730         	bvc	0x3d6d1c <ScoreScreen::videoMessageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x24> @ imm = #0x60
  3d6cba: ffff 0cce    	<unknown>
  3d6cbe: 0040         	lsls	r0, r0, #0x1
  3d6cc0: 0d30         	lsrs	r0, r6, #0x14
  3d6cc2: 0040         	lsls	r0, r0, #0x1
  3d6cc4: 0d2a         	lsrs	r2, r5, #0x14
  3d6cc6: 0040         	lsls	r0, r0, #0x1
  3d6cc8: 0d30         	lsrs	r0, r6, #0x14
  3d6cca: 0040         	lsls	r0, r0, #0x1
  3d6ccc: 0cb8         	lsrs	r0, r7, #0x12
  3d6cce: 0040         	lsls	r0, r0, #0x1
  3d6cd0: 0cae         	lsrs	r6, r5, #0x12
  3d6cd2: 0040         	lsls	r0, r0, #0x1
  3d6cd4: 0cf8         	lsrs	r0, r7, #0x13
  3d6cd6: 0040         	lsls	r0, r0, #0x1
  3d6cd8: 0cdc         	lsrs	r4, r3, #0x13
  3d6cda: 0040         	lsls	r0, r0, #0x1
  3d6cdc: dee0         	udf	#0xe0
  3d6cde: ffff 0c62    	vdup.8	q8, d18[7]
  3d6ce2: 0040         	lsls	r0, r0, #0x1
  3d6ce4: 0c5c         	lsrs	r4, r3, #0x11
  3d6ce6: 0040         	lsls	r0, r0, #0x1
  3d6ce8: 0ba2         	lsrs	r2, r4, #0xe
  3d6cea: 0040         	lsls	r0, r0, #0x1
  3d6cec: 0a40         	lsrs	r0, r0, #0x9
  3d6cee: 0040         	lsls	r0, r0, #0x1
  3d6cf0: 0b8e         	lsrs	r6, r1, #0xe
  3d6cf2: 0040         	lsls	r0, r0, #0x1
  3d6cf4: 0b7e         	lsrs	r6, r7, #0xd
  3d6cf6: 0040         	lsls	r0, r0, #0x1

// ==== ScoreScreen::videoMessageBoxHandler
//      file offset 0x3d6cf8 (= ELF address; Ghidra 0x3e6cf8), 456 bytes, Thumb-2
  3d6cf8: b530         	push	{r4, r5, lr}
  3d6cfa: b08f         	sub	sp, #0x3c
  3d6cfc: 9005         	str	r0, [sp, #0x14]
  3d6cfe: 9104         	str	r1, [sp, #0x10]
  3d6d00: 9203         	str	r2, [sp, #0xc]
  3d6d02: 9b05         	ldr	r3, [sp, #0x14]
  3d6d04: 2b01         	cmp	r3, #0x1
  3d6d06: f040 80cc    	bne.w	0x3d6ea2 <ScoreScreen::videoMessageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x1aa> @ imm = #0x198
  3d6d0a: ab08         	add	r3, sp, #0x20
  3d6d0c: 4618         	mov	r0, r3
  3d6d0e: f3b3 fb71    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3b36e2
  3d6d12: aa0b         	add	r2, sp, #0x2c
  3d6d14: ab08         	add	r3, sp, #0x20
  3d6d16: 4610         	mov	r0, r2
  3d6d18: 4a63         	ldr	r2, [pc, #0x18c]        @ 0x3d6ea8 <ScoreScreen::videoMessageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x1b0>
  3d6d1a: 447a         	add	r2, pc
  3d6d1c: 4611         	mov	r1, r2
  3d6d1e: 461a         	mov	r2, r3
  3d6d20: f3df fe9e    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3dfd3c
  3d6d24: ab09         	add	r3, sp, #0x24
  3d6d26: 4618         	mov	r0, r3
  3d6d28: f3b3 fb64    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3b36c8
  3d6d2c: aa0c         	add	r2, sp, #0x30
  3d6d2e: ab09         	add	r3, sp, #0x24
  3d6d30: 4610         	mov	r0, r2
  3d6d32: 4a5e         	ldr	r2, [pc, #0x178]        @ 0x3d6eac <ScoreScreen::videoMessageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x1b4>
  3d6d34: 447a         	add	r2, pc
  3d6d36: 4611         	mov	r1, r2
  3d6d38: 461a         	mov	r2, r3
  3d6d3a: f3df fe91    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3dfd22
  3d6d3e: ab07         	add	r3, sp, #0x1c
  3d6d40: 4618         	mov	r0, r3
  3d6d42: f3b3 fb57    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3b36ae
  3d6d46: aa0a         	add	r2, sp, #0x28
  3d6d48: ab07         	add	r3, sp, #0x1c
  3d6d4a: 4610         	mov	r0, r2
  3d6d4c: 4a58         	ldr	r2, [pc, #0x160]        @ 0x3d6eb0 <ScoreScreen::videoMessageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x1b8>
  3d6d4e: 447a         	add	r2, pc
  3d6d50: 4611         	mov	r1, r2
  3d6d52: 461a         	mov	r2, r3
  3d6d54: f3df fe84    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3dfd08
  3d6d58: ab0a         	add	r3, sp, #0x28
  3d6d5a: 4618         	mov	r0, r3
  3d6d5c: f1c2 fe6e    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1c2cdc
  3d6d60: 4603         	mov	r3, r0
  3d6d62: 4618         	mov	r0, r3
  3d6d64: 2100         	movs	r1, #0x0
  3d6d66: f1c3 f853    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x1c30a6
  3d6d6a: 4603         	mov	r3, r0
  3d6d6c: a90b         	add	r1, sp, #0x2c
  3d6d6e: aa0c         	add	r2, sp, #0x30
  3d6d70: 2000         	movs	r0, #0x0
  3d6d72: 9000         	str	r0, [sp]
  3d6d74: 2000         	movs	r0, #0x0
  3d6d76: 9001         	str	r0, [sp, #0x4]
  3d6d78: 2000         	movs	r0, #0x0
  3d6d7a: f708 fd3b    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0xf758a
  3d6d7e: ab0a         	add	r3, sp, #0x28
  3d6d80: 4618         	mov	r0, r3
  3d6d82: f3de fdc7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3deb8e
  3d6d86: ab07         	add	r3, sp, #0x1c
  3d6d88: 4618         	mov	r0, r3
  3d6d8a: f3b3 fb37    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b366e
  3d6d8e: ab0c         	add	r3, sp, #0x30
  3d6d90: 4618         	mov	r0, r3
  3d6d92: f3de fdbf    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3deb7e
  3d6d96: ab09         	add	r3, sp, #0x24
  3d6d98: 4618         	mov	r0, r3
  3d6d9a: f3b3 fb2f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b365e
  3d6d9e: ab0b         	add	r3, sp, #0x2c
  3d6da0: 4618         	mov	r0, r3
  3d6da2: f3de fdb7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3deb6e
  3d6da6: ab08         	add	r3, sp, #0x20
  3d6da8: 4618         	mov	r0, r3
  3d6daa: f3b3 fb27    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b364e
  3d6dae: 9b03         	ldr	r3, [sp, #0xc]
  3d6db0: 930d         	str	r3, [sp, #0x34]
  3d6db2: f04b ffb3    	bl	0x422d1c <ApplicationInterface::startVideoRecording()> @ imm = #0x4bf66
  3d6db6: 9b0d         	ldr	r3, [sp, #0x34]
  3d6db8: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3d6dbc: 681b         	ldr	r3, [r3]
  3d6dbe: f503 7305    	add.w	r3, r3, #0x214
  3d6dc2: 681c         	ldr	r4, [r3]
  3d6dc4: 9b0d         	ldr	r3, [sp, #0x34]
  3d6dc6: f8d3 50f8    	ldr.w	r5, [r3, #0xf8]
  3d6dca: f205 fe1d    	bl	0x5dca08 <cocos2d::CCSpriteFrameCache::sharedSpriteFrameCache()> @ imm = #0x205c3a
  3d6dce: 4603         	mov	r3, r0
  3d6dd0: 4618         	mov	r0, r3
  3d6dd2: 4b38         	ldr	r3, [pc, #0xe0]         @ 0x3d6eb4 <ScoreScreen::videoMessageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x1bc>
  3d6dd4: 447b         	add	r3, pc
  3d6dd6: 4619         	mov	r1, r3
  3d6dd8: f207 f9b6    	bl	0x5de148 <cocos2d::CCSpriteFrameCache::spriteFrameByName(char const*)> @ imm = #0x20736c
  3d6ddc: 4603         	mov	r3, r0
  3d6dde: 4628         	mov	r0, r5
  3d6de0: 4619         	mov	r1, r3
  3d6de2: 47a0         	blx	r4
  3d6de4: 9b0d         	ldr	r3, [sp, #0x34]
  3d6de6: 681b         	ldr	r3, [r3]
  3d6de8: 3340         	adds	r3, #0x40
  3d6dea: 681b         	ldr	r3, [r3]
  3d6dec: 9a0d         	ldr	r2, [sp, #0x34]
  3d6dee: 4610         	mov	r0, r2
  3d6df0: f04f 517e    	mov.w	r1, #0x3f800000
  3d6df4: 4798         	blx	r3
  3d6df6: f7a0 fea3    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x5f2ba
  3d6dfa: 4603         	mov	r3, r0
  3d6dfc: 4618         	mov	r0, r3
  3d6dfe: f7a3 fc91    	bl	0x37a724 <NetworkManager::isUsingHostedServer()> @ imm = #-0x5c6de
  3d6e02: 4603         	mov	r3, r0
  3d6e04: 2b00         	cmp	r3, #0x0
  3d6e06: d023         	beq	0x3d6e50 <ScoreScreen::videoMessageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x158> @ imm = #0x46
  3d6e08: f209 fc52    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2098a4
  3d6e0c: 4604         	mov	r4, r0
  3d6e0e: ab0b         	add	r3, sp, #0x2c
  3d6e10: 4618         	mov	r0, r3
  3d6e12: f3b3 faef    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3b35de
  3d6e16: aa0c         	add	r2, sp, #0x30
  3d6e18: ab0b         	add	r3, sp, #0x2c
  3d6e1a: 4610         	mov	r0, r2
  3d6e1c: 4a26         	ldr	r2, [pc, #0x98]         @ 0x3d6eb8 <ScoreScreen::videoMessageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x1c0>
  3d6e1e: 447a         	add	r2, pc
  3d6e20: 4611         	mov	r1, r2
  3d6e22: 461a         	mov	r2, r3
  3d6e24: f3df fe1c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3dfc38
  3d6e28: ab0c         	add	r3, sp, #0x30
  3d6e2a: 4618         	mov	r0, r3
  3d6e2c: f1c2 fe06    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1c2c0c
  3d6e30: 4603         	mov	r3, r0
  3d6e32: 4620         	mov	r0, r4
  3d6e34: 4a21         	ldr	r2, [pc, #0x84]         @ 0x3d6ebc <ScoreScreen::videoMessageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x1c4>
  3d6e36: 447a         	add	r2, pc
  3d6e38: 4611         	mov	r1, r2
  3d6e3a: 461a         	mov	r2, r3
  3d6e3c: f209 fe76    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x209cec
  3d6e40: ab0c         	add	r3, sp, #0x30
  3d6e42: 4618         	mov	r0, r3
  3d6e44: f3de fd66    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3deacc
  3d6e48: ab0b         	add	r3, sp, #0x2c
  3d6e4a: 4618         	mov	r0, r3
  3d6e4c: f3b3 fad6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b35ac
  3d6e50: e027         	b	0x3d6ea2 <ScoreScreen::videoMessageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x1aa> @ imm = #0x4e
  3d6e52: ab0a         	add	r3, sp, #0x28
  3d6e54: 4618         	mov	r0, r3
  3d6e56: f3de fd5d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3deaba
  3d6e5a: e7ff         	b	0x3d6e5c <ScoreScreen::videoMessageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x164> @ imm = #-0x2
  3d6e5c: ab07         	add	r3, sp, #0x1c
  3d6e5e: 4618         	mov	r0, r3
  3d6e60: f3b3 facc    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b3598
  3d6e64: ab0c         	add	r3, sp, #0x30
  3d6e66: 4618         	mov	r0, r3
  3d6e68: f3de fd54    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3deaa8
  3d6e6c: e7ff         	b	0x3d6e6e <ScoreScreen::videoMessageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x176> @ imm = #-0x2
  3d6e6e: ab09         	add	r3, sp, #0x24
  3d6e70: 4618         	mov	r0, r3
  3d6e72: f3b3 fac3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b3586
  3d6e76: ab0b         	add	r3, sp, #0x2c
  3d6e78: 4618         	mov	r0, r3
  3d6e7a: f3de fd4b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3dea96
  3d6e7e: e7ff         	b	0x3d6e80 <ScoreScreen::videoMessageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x188> @ imm = #-0x2
  3d6e80: ab08         	add	r3, sp, #0x20
  3d6e82: 4618         	mov	r0, r3
  3d6e84: f3b3 faba    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b3574
  3d6e88: f3b1 f910    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3b1220
  3d6e8c: ab0c         	add	r3, sp, #0x30
  3d6e8e: 4618         	mov	r0, r3
  3d6e90: f3de fd40    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3dea80
  3d6e94: e7ff         	b	0x3d6e96 <ScoreScreen::videoMessageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x19e> @ imm = #-0x2
  3d6e96: ab0b         	add	r3, sp, #0x2c
  3d6e98: 4618         	mov	r0, r3
  3d6e9a: f3b3 faaf    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b355e
  3d6e9e: f3b1 f905    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3b120a
  3d6ea2: b00f         	add	sp, #0x3c
  3d6ea4: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3d6ea5); words below are literal-pool data ---
  3d6ea6: bf00         	nop
  3d6ea8: 0a2a         	lsrs	r2, r5, #0x8
  3d6eaa: 0040         	lsls	r0, r0, #0x1
  3d6eac: 09d4         	lsrs	r4, r2, #0x7
  3d6eae: 0040         	lsls	r0, r0, #0x1
  3d6eb0: 091a         	lsrs	r2, r3, #0x4
  3d6eb2: 0040         	lsls	r0, r0, #0x1
  3d6eb4: 07b4         	lsls	r4, r6, #0x1e
  3d6eb6: 0040         	lsls	r0, r0, #0x1
  3d6eb8: 090a         	lsrs	r2, r1, #0x4
  3d6eba: 0040         	lsls	r0, r0, #0x1
  3d6ebc: 08fa         	lsrs	r2, r7, #0x3
  3d6ebe: 0040         	lsls	r0, r0, #0x1

// ==== ScoreScreen::setOpacity
//      file offset 0x3d6ec0 (= ELF address; Ghidra 0x3e6ec0), 96 bytes, Thumb-2
  3d6ec0: b500         	push	{lr}
  3d6ec2: b083         	sub	sp, #0xc
  3d6ec4: 9001         	str	r0, [sp, #0x4]
  3d6ec6: 9100         	str	r1, [sp]
  3d6ec8: 9b01         	ldr	r3, [sp, #0x4]
  3d6eca: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3d6ece: 4618         	mov	r0, r3
  3d6ed0: 9900         	ldr	r1, [sp]
  3d6ed2: f7fe fab3    	bl	0x3d543c <ScoreList::setOpacity(int)> @ imm = #-0x1a9a
  3d6ed6: 9b01         	ldr	r3, [sp, #0x4]
  3d6ed8: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3d6edc: 681b         	ldr	r3, [r3]
  3d6ede: f503 7302    	add.w	r3, r3, #0x208
  3d6ee2: 681b         	ldr	r3, [r3]
  3d6ee4: 9a01         	ldr	r2, [sp, #0x4]
  3d6ee6: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  3d6eea: 4611         	mov	r1, r2
  3d6eec: 9a00         	ldr	r2, [sp]
  3d6eee: b2d2         	uxtb	r2, r2
  3d6ef0: 4608         	mov	r0, r1
  3d6ef2: 4611         	mov	r1, r2
  3d6ef4: 4798         	blx	r3
  3d6ef6: 9b01         	ldr	r3, [sp, #0x4]
  3d6ef8: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3d6efc: 681b         	ldr	r3, [r3]
  3d6efe: f503 73d2    	add.w	r3, r3, #0x1a4
  3d6f02: 681b         	ldr	r3, [r3]
  3d6f04: 9a01         	ldr	r2, [sp, #0x4]
  3d6f06: f8d2 10e8    	ldr.w	r1, [r2, #0xe8]
  3d6f0a: 9a00         	ldr	r2, [sp]
  3d6f0c: 2a96         	cmp	r2, #0x96
  3d6f0e: bfa8         	it	ge
  3d6f10: 2296         	movge	r2, #0x96
  3d6f12: b2d2         	uxtb	r2, r2
  3d6f14: 4608         	mov	r0, r1
  3d6f16: 4611         	mov	r1, r2
  3d6f18: 4798         	blx	r3
  3d6f1a: b003         	add	sp, #0xc
  3d6f1c: f85d fb04    	ldr	pc, [sp], #4

// ==== ScoreScreen::showScreen
//      file offset 0x3d6f20 (= ELF address; Ghidra 0x3e6f20), 348 bytes, Thumb-2
  3d6f20: b500         	push	{lr}
  3d6f22: b083         	sub	sp, #0xc
  3d6f24: 9001         	str	r0, [sp, #0x4]
  3d6f26: 4613         	mov	r3, r2
  3d6f28: 460a         	mov	r2, r1
  3d6f2a: f88d 2003    	strb.w	r2, [sp, #0x3]
  3d6f2e: f88d 3002    	strb.w	r3, [sp, #0x2]
  3d6f32: f89d 3002    	ldrb.w	r3, [sp, #0x2]
  3d6f36: 2b00         	cmp	r3, #0x0
  3d6f38: d04a         	beq	0x3d6fd0 <ScoreScreen::showScreen(bool, bool)+0xb0> @ imm = #0x94
  3d6f3a: 9b01         	ldr	r3, [sp, #0x4]
  3d6f3c: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  3d6f40: 681b         	ldr	r3, [r3]
  3d6f42: f503 73f6    	add.w	r3, r3, #0x1ec
  3d6f46: 681b         	ldr	r3, [r3]
  3d6f48: 9a01         	ldr	r2, [sp, #0x4]
  3d6f4a: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  3d6f4e: 4610         	mov	r0, r2
  3d6f50: 2101         	movs	r1, #0x1
  3d6f52: 4798         	blx	r3
  3d6f54: 9b01         	ldr	r3, [sp, #0x4]
  3d6f56: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  3d6f5a: 681b         	ldr	r3, [r3]
  3d6f5c: 3390         	adds	r3, #0x90
  3d6f5e: 681b         	ldr	r3, [r3]
  3d6f60: 9a01         	ldr	r2, [sp, #0x4]
  3d6f62: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  3d6f66: 4610         	mov	r0, r2
  3d6f68: 2101         	movs	r1, #0x1
  3d6f6a: 4798         	blx	r3
  3d6f6c: 9b01         	ldr	r3, [sp, #0x4]
  3d6f6e: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3d6f72: 681b         	ldr	r3, [r3]
  3d6f74: 3390         	adds	r3, #0x90
  3d6f76: 681b         	ldr	r3, [r3]
  3d6f78: 9a01         	ldr	r2, [sp, #0x4]
  3d6f7a: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  3d6f7e: 4610         	mov	r0, r2
  3d6f80: 2101         	movs	r1, #0x1
  3d6f82: 4798         	blx	r3
  3d6f84: 9b01         	ldr	r3, [sp, #0x4]
  3d6f86: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3d6f8a: 681b         	ldr	r3, [r3]
  3d6f8c: 3390         	adds	r3, #0x90
  3d6f8e: 681b         	ldr	r3, [r3]
  3d6f90: 9a01         	ldr	r2, [sp, #0x4]
  3d6f92: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3d6f96: 4610         	mov	r0, r2
  3d6f98: 2101         	movs	r1, #0x1
  3d6f9a: 4798         	blx	r3
  3d6f9c: 9b01         	ldr	r3, [sp, #0x4]
  3d6f9e: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3d6fa2: 681b         	ldr	r3, [r3]
  3d6fa4: f503 73f6    	add.w	r3, r3, #0x1ec
  3d6fa8: 681b         	ldr	r3, [r3]
  3d6faa: 9a01         	ldr	r2, [sp, #0x4]
  3d6fac: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3d6fb0: 4610         	mov	r0, r2
  3d6fb2: 2101         	movs	r1, #0x1
  3d6fb4: 4798         	blx	r3
  3d6fb6: 9b01         	ldr	r3, [sp, #0x4]
  3d6fb8: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3d6fbc: 681b         	ldr	r3, [r3]
  3d6fbe: 3390         	adds	r3, #0x90
  3d6fc0: 681b         	ldr	r3, [r3]
  3d6fc2: 9a01         	ldr	r2, [sp, #0x4]
  3d6fc4: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  3d6fc8: 4610         	mov	r0, r2
  3d6fca: 2101         	movs	r1, #0x1
  3d6fcc: 4798         	blx	r3
  3d6fce: e04d         	b	0x3d706c <ScoreScreen::showScreen(bool, bool)+0x14c> @ imm = #0x9a
  3d6fd0: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  3d6fd4: 2b00         	cmp	r3, #0x0
  3d6fd6: d049         	beq	0x3d706c <ScoreScreen::showScreen(bool, bool)+0x14c> @ imm = #0x92
  3d6fd8: 9b01         	ldr	r3, [sp, #0x4]
  3d6fda: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  3d6fde: 681b         	ldr	r3, [r3]
  3d6fe0: f503 73f6    	add.w	r3, r3, #0x1ec
  3d6fe4: 681b         	ldr	r3, [r3]
  3d6fe6: 9a01         	ldr	r2, [sp, #0x4]
  3d6fe8: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  3d6fec: 4610         	mov	r0, r2
  3d6fee: 2100         	movs	r1, #0x0
  3d6ff0: 4798         	blx	r3
  3d6ff2: 9b01         	ldr	r3, [sp, #0x4]
  3d6ff4: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  3d6ff8: 681b         	ldr	r3, [r3]
  3d6ffa: 3390         	adds	r3, #0x90
  3d6ffc: 681b         	ldr	r3, [r3]
  3d6ffe: 9a01         	ldr	r2, [sp, #0x4]
  3d7000: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  3d7004: 4610         	mov	r0, r2
  3d7006: 2100         	movs	r1, #0x0
  3d7008: 4798         	blx	r3
  3d700a: 9b01         	ldr	r3, [sp, #0x4]
  3d700c: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3d7010: 681b         	ldr	r3, [r3]
  3d7012: 3390         	adds	r3, #0x90
  3d7014: 681b         	ldr	r3, [r3]
  3d7016: 9a01         	ldr	r2, [sp, #0x4]
  3d7018: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  3d701c: 4610         	mov	r0, r2
  3d701e: 2100         	movs	r1, #0x0
  3d7020: 4798         	blx	r3
  3d7022: 9b01         	ldr	r3, [sp, #0x4]
  3d7024: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3d7028: 681b         	ldr	r3, [r3]
  3d702a: 3390         	adds	r3, #0x90
  3d702c: 681b         	ldr	r3, [r3]
  3d702e: 9a01         	ldr	r2, [sp, #0x4]
  3d7030: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3d7034: 4610         	mov	r0, r2
  3d7036: 2100         	movs	r1, #0x0
  3d7038: 4798         	blx	r3
  3d703a: 9b01         	ldr	r3, [sp, #0x4]
  3d703c: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3d7040: 681b         	ldr	r3, [r3]
  3d7042: f503 73f6    	add.w	r3, r3, #0x1ec
  3d7046: 681b         	ldr	r3, [r3]
  3d7048: 9a01         	ldr	r2, [sp, #0x4]
  3d704a: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3d704e: 4610         	mov	r0, r2
  3d7050: 2100         	movs	r1, #0x0
  3d7052: 4798         	blx	r3
  3d7054: 9b01         	ldr	r3, [sp, #0x4]
  3d7056: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3d705a: 681b         	ldr	r3, [r3]
  3d705c: 3390         	adds	r3, #0x90
  3d705e: 681b         	ldr	r3, [r3]
  3d7060: 9a01         	ldr	r2, [sp, #0x4]
  3d7062: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  3d7066: 4610         	mov	r0, r2
  3d7068: 2100         	movs	r1, #0x0
  3d706a: 4798         	blx	r3
  3d706c: 9b01         	ldr	r3, [sp, #0x4]
  3d706e: f89d 2003    	ldrb.w	r2, [sp, #0x3]
  3d7072: f883 2114    	strb.w	r2, [r3, #0x114]
  3d7076: b003         	add	sp, #0xc
  3d7078: f85d fb04    	ldr	pc, [sp], #4

// ==== ScoreScreen::endGame
//      file offset 0x3d707c (= ELF address; Ghidra 0x3e707c), 282 bytes, Thumb-2
  3d707c: b500         	push	{lr}
  3d707e: b083         	sub	sp, #0xc
  3d7080: 9001         	str	r0, [sp, #0x4]
  3d7082: 9b01         	ldr	r3, [sp, #0x4]
  3d7084: f04f 0200    	mov.w	r2, #0x0
  3d7088: f2c4 0240    	movt	r2, #0x4040
  3d708c: f8c3 2118    	str.w	r2, [r3, #0x118]
  3d7090: 9b01         	ldr	r3, [sp, #0x4]
  3d7092: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  3d7096: 681b         	ldr	r3, [r3]
  3d7098: 3390         	adds	r3, #0x90
  3d709a: 681b         	ldr	r3, [r3]
  3d709c: 9a01         	ldr	r2, [sp, #0x4]
  3d709e: f8d2 2100    	ldr.w	r2, [r2, #0x100]
  3d70a2: 4610         	mov	r0, r2
  3d70a4: 2101         	movs	r1, #0x1
  3d70a6: 4798         	blx	r3
  3d70a8: 9801         	ldr	r0, [sp, #0x4]
  3d70aa: 2101         	movs	r1, #0x1
  3d70ac: 2200         	movs	r2, #0x0
  3d70ae: f7ff ff37    	bl	0x3d6f20 <ScoreScreen::showScreen(bool, bool)> @ imm = #-0x192
  3d70b2: 9b01         	ldr	r3, [sp, #0x4]
  3d70b4: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  3d70b8: 681b         	ldr	r3, [r3]
  3d70ba: f503 73f6    	add.w	r3, r3, #0x1ec
  3d70be: 681b         	ldr	r3, [r3]
  3d70c0: 9a01         	ldr	r2, [sp, #0x4]
  3d70c2: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  3d70c6: 4610         	mov	r0, r2
  3d70c8: 2100         	movs	r1, #0x0
  3d70ca: 4798         	blx	r3
  3d70cc: 9b01         	ldr	r3, [sp, #0x4]
  3d70ce: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  3d70d2: 681b         	ldr	r3, [r3]
  3d70d4: 3390         	adds	r3, #0x90
  3d70d6: 681b         	ldr	r3, [r3]
  3d70d8: 9a01         	ldr	r2, [sp, #0x4]
  3d70da: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  3d70de: 4610         	mov	r0, r2
  3d70e0: 2100         	movs	r1, #0x0
  3d70e2: 4798         	blx	r3
  3d70e4: 9b01         	ldr	r3, [sp, #0x4]
  3d70e6: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3d70ea: 681b         	ldr	r3, [r3]
  3d70ec: 3390         	adds	r3, #0x90
  3d70ee: 681b         	ldr	r3, [r3]
  3d70f0: 9a01         	ldr	r2, [sp, #0x4]
  3d70f2: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  3d70f6: 4610         	mov	r0, r2
  3d70f8: 2100         	movs	r1, #0x0
  3d70fa: 4798         	blx	r3
  3d70fc: 9b01         	ldr	r3, [sp, #0x4]
  3d70fe: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3d7102: 681b         	ldr	r3, [r3]
  3d7104: f503 73f6    	add.w	r3, r3, #0x1ec
  3d7108: 681b         	ldr	r3, [r3]
  3d710a: 9a01         	ldr	r2, [sp, #0x4]
  3d710c: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3d7110: 4610         	mov	r0, r2
  3d7112: 2100         	movs	r1, #0x0
  3d7114: 4798         	blx	r3
  3d7116: 9b01         	ldr	r3, [sp, #0x4]
  3d7118: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3d711c: 681b         	ldr	r3, [r3]
  3d711e: 3390         	adds	r3, #0x90
  3d7120: 681b         	ldr	r3, [r3]
  3d7122: 9a01         	ldr	r2, [sp, #0x4]
  3d7124: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3d7128: 4610         	mov	r0, r2
  3d712a: 2100         	movs	r1, #0x0
  3d712c: 4798         	blx	r3
  3d712e: 9b01         	ldr	r3, [sp, #0x4]
  3d7130: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3d7134: 681b         	ldr	r3, [r3]
  3d7136: 3390         	adds	r3, #0x90
  3d7138: 681b         	ldr	r3, [r3]
  3d713a: 9a01         	ldr	r2, [sp, #0x4]
  3d713c: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  3d7140: 4610         	mov	r0, r2
  3d7142: 2100         	movs	r1, #0x0
  3d7144: 4798         	blx	r3
  3d7146: 9b01         	ldr	r3, [sp, #0x4]
  3d7148: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3d714c: 681b         	ldr	r3, [r3]
  3d714e: 3390         	adds	r3, #0x90
  3d7150: 681b         	ldr	r3, [r3]
  3d7152: 9a01         	ldr	r2, [sp, #0x4]
  3d7154: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3d7158: 4610         	mov	r0, r2
  3d715a: 2100         	movs	r1, #0x0
  3d715c: 4798         	blx	r3
  3d715e: 9b01         	ldr	r3, [sp, #0x4]
  3d7160: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3d7164: 681b         	ldr	r3, [r3]
  3d7166: f503 73f6    	add.w	r3, r3, #0x1ec
  3d716a: 681b         	ldr	r3, [r3]
  3d716c: 9a01         	ldr	r2, [sp, #0x4]
  3d716e: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3d7172: 4610         	mov	r0, r2
  3d7174: 2100         	movs	r1, #0x0
  3d7176: 4798         	blx	r3
  3d7178: 9b01         	ldr	r3, [sp, #0x4]
  3d717a: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3d717e: 681b         	ldr	r3, [r3]
  3d7180: 3390         	adds	r3, #0x90
  3d7182: 681b         	ldr	r3, [r3]
  3d7184: 9a01         	ldr	r2, [sp, #0x4]
  3d7186: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  3d718a: 4610         	mov	r0, r2
  3d718c: 2100         	movs	r1, #0x0
  3d718e: 4798         	blx	r3
  3d7190: b003         	add	sp, #0xc
  3d7192: f85d fb04    	ldr	pc, [sp], #4

// ==== ScoreScreen::getScoreList
//      file offset 0x3d7198 (= ELF address; Ghidra 0x3e7198), 16 bytes, Thumb-2
  3d7198: b082         	sub	sp, #0x8
  3d719a: 9001         	str	r0, [sp, #0x4]
  3d719c: 9b01         	ldr	r3, [sp, #0x4]
  3d719e: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3d71a2: 4618         	mov	r0, r3
  3d71a4: b002         	add	sp, #0x8
  3d71a6: 4770         	bx	lr

// ==== ScoreScreen::messageBoxHandler
//      file offset 0x3d71a8 (= ELF address; Ghidra 0x3e71a8), 72 bytes, Thumb-2
  3d71a8: b500         	push	{lr}
  3d71aa: b085         	sub	sp, #0x14
  3d71ac: 9003         	str	r0, [sp, #0xc]
  3d71ae: 9102         	str	r1, [sp, #0x8]
  3d71b0: 9201         	str	r2, [sp, #0x4]
  3d71b2: 4a0c         	ldr	r2, [pc, #0x30]         @ 0x3d71e4 <ScoreScreen::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x3c>
  3d71b4: 447a         	add	r2, pc
  3d71b6: 9b03         	ldr	r3, [sp, #0xc]
  3d71b8: 2b01         	cmp	r3, #0x1
  3d71ba: d110         	bne	0x3d71de <ScoreScreen::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x36> @ imm = #0x20
  3d71bc: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x3d71e8 <ScoreScreen::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x40>
  3d71be: 58d3         	ldr	r3, [r2, r3]
  3d71c0: 681b         	ldr	r3, [r3]
  3d71c2: 2b04         	cmp	r3, #0x4
  3d71c4: d101         	bne	0x3d71ca <ScoreScreen::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x22> @ imm = #0x2
  3d71c6: f054 ff9d    	bl	0x42c104 <ApplicationInterface::prepareInterstitial()> @ imm = #0x54f3a
  3d71ca: f209 fa71    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2094e2
  3d71ce: 4603         	mov	r3, r0
  3d71d0: 4618         	mov	r0, r3
  3d71d2: 4b06         	ldr	r3, [pc, #0x18]         @ 0x3d71ec <ScoreScreen::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x44>
  3d71d4: 447b         	add	r3, pc
  3d71d6: 4619         	mov	r1, r3
  3d71d8: 2200         	movs	r2, #0x0
  3d71da: f209 fca7    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x20994e
  3d71de: b005         	add	sp, #0x14
  3d71e0: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3d71e3); words below are literal-pool data ---
  3d71e4: b854         	<unknown>
  3d71e6: 0055         	lsls	r5, r2, #0x1
  3d71e8: d838         	bhi	0x3d725c <std::vector<ScoreRow*, std::allocator<ScoreRow*>>::~vector()+0x8> @ imm = #0x70
  3d71ea: ffff 0584    	<unknown>
  3d71ee: 0040         	lsls	r0, r0, #0x1
