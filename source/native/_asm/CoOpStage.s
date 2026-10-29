// CoOpStage: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 19 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../CoOpStage.cpp

// ==== CoOpStage::CoOpStage
//      file offset 0x2ff41c (= ELF address; Ghidra 0x30f41c), 88 bytes, Thumb-2
  2ff41c: b510         	push	{r4, lr}
  2ff41e: b082         	sub	sp, #0x8
  2ff420: 9001         	str	r0, [sp, #0x4]
  2ff422: 4c12         	ldr	r4, [pc, #0x48]         @ 0x2ff46c <CoOpStage::CoOpStage()+0x50>
  2ff424: 447c         	add	r4, pc
  2ff426: 9b01         	ldr	r3, [sp, #0x4]
  2ff428: 4618         	mov	r0, r3
  2ff42a: f0fb fd4f    	bl	0x3faecc <Stage::Stage()> @ imm = #0xfba9e
  2ff42e: 9b01         	ldr	r3, [sp, #0x4]
  2ff430: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x2ff470 <CoOpStage::CoOpStage()+0x54>
  2ff432: 58a2         	ldr	r2, [r4, r2]
  2ff434: 3208         	adds	r2, #0x8
  2ff436: 601a         	str	r2, [r3]
  2ff438: 9b01         	ldr	r3, [sp, #0x4]
  2ff43a: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x2ff470 <CoOpStage::CoOpStage()+0x54>
  2ff43c: 58a2         	ldr	r2, [r4, r2]
  2ff43e: f502 721b    	add.w	r2, r2, #0x26c
  2ff442: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  2ff446: 9b01         	ldr	r3, [sp, #0x4]
  2ff448: 4a09         	ldr	r2, [pc, #0x24]         @ 0x2ff470 <CoOpStage::CoOpStage()+0x54>
  2ff44a: 58a2         	ldr	r2, [r4, r2]
  2ff44c: f502 7227    	add.w	r2, r2, #0x29c
  2ff450: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  2ff454: 9b01         	ldr	r3, [sp, #0x4]
  2ff456: 4a06         	ldr	r2, [pc, #0x18]         @ 0x2ff470 <CoOpStage::CoOpStage()+0x54>
  2ff458: 58a2         	ldr	r2, [r4, r2]
  2ff45a: f502 722a    	add.w	r2, r2, #0x2a8
  2ff45e: f8c3 20ec    	str.w	r2, [r3, #0xec]
  2ff462: 9b01         	ldr	r3, [sp, #0x4]
  2ff464: 4618         	mov	r0, r3
  2ff466: b002         	add	sp, #0x8
  2ff468: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2ff469); words below are literal-pool data ---
  2ff46a: bf00         	nop
  2ff46c: 35e4         	adds	r5, #0xe4
  2ff46e: 0063         	lsls	r3, r4, #0x1
  2ff470: d908         	bls	0x2ff484 <CoOpStage::init()+0x10> @ imm = #0x10
  2ff472: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== CoOpStage::init
//      file offset 0x2ff474 (= ELF address; Ghidra 0x30f474), 112 bytes, Thumb-2
  2ff474: b510         	push	{r4, lr}
  2ff476: b088         	sub	sp, #0x20
  2ff478: 9003         	str	r0, [sp, #0xc]
  2ff47a: 4c17         	ldr	r4, [pc, #0x5c]         @ 0x2ff4d8 <CoOpStage::init()+0x64>
  2ff47c: 447c         	add	r4, pc
  2ff47e: 9b03         	ldr	r3, [sp, #0xc]
  2ff480: 4618         	mov	r0, r3
  2ff482: f0fb fd6d    	bl	0x3faf60 <Stage::init()> @ imm = #0xfbada
  2ff486: 4603         	mov	r3, r0
  2ff488: f88d 3017    	strb.w	r3, [sp, #0x17]
  2ff48c: f89d 3017    	ldrb.w	r3, [sp, #0x17]
  2ff490: f083 0301    	eor	r3, r3, #0x1
  2ff494: b2db         	uxtb	r3, r3
  2ff496: 2b00         	cmp	r3, #0x0
  2ff498: d001         	beq	0x2ff49e <CoOpStage::init()+0x2a> @ imm = #0x2
  2ff49a: 2300         	movs	r3, #0x0
  2ff49c: e019         	b	0x2ff4d2 <CoOpStage::init()+0x5e> @ imm = #0x32
  2ff49e: 9b03         	ldr	r3, [sp, #0xc]
  2ff4a0: f04f 0200    	mov.w	r2, #0x0
  2ff4a4: f8c3 2180    	str.w	r2, [r3, #0x180]
  2ff4a8: f2e1 f902    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2e1204
  2ff4ac: 4602         	mov	r2, r0
  2ff4ae: 9b03         	ldr	r3, [sp, #0xc]
  2ff4b0: 490a         	ldr	r1, [pc, #0x28]         @ 0x2ff4dc <CoOpStage::init()+0x68>
  2ff4b2: 5861         	ldr	r1, [r4, r1]
  2ff4b4: 9106         	str	r1, [sp, #0x18]
  2ff4b6: 2100         	movs	r1, #0x0
  2ff4b8: 9107         	str	r1, [sp, #0x1c]
  2ff4ba: 4909         	ldr	r1, [pc, #0x24]         @ 0x2ff4e0 <CoOpStage::init()+0x6c>
  2ff4bc: 4479         	add	r1, pc
  2ff4be: 9100         	str	r1, [sp]
  2ff4c0: 2100         	movs	r1, #0x0
  2ff4c2: 9101         	str	r1, [sp, #0x4]
  2ff4c4: 4610         	mov	r0, r2
  2ff4c6: 4619         	mov	r1, r3
  2ff4c8: ab06         	add	r3, sp, #0x18
  2ff4ca: cb0c         	ldm	r3, {r2, r3}
  2ff4cc: f2e1 f98c    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2e1318
  2ff4d0: 2301         	movs	r3, #0x1
  2ff4d2: 4618         	mov	r0, r3
  2ff4d4: b008         	add	sp, #0x20
  2ff4d6: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2ff4d7); words below are literal-pool data ---
  2ff4d8: 358c         	adds	r5, #0x8c
  2ff4da: 0063         	lsls	r3, r4, #0x1
  2ff4dc: d90c         	bls	0x2ff4f8 <CoOpStage::~CoOpStage()+0x14> @ imm = #0x18
  2ff4de: ffff 59c8    	<unknown>
  2ff4e2: 004c         	lsls	r4, r1, #0x1

// ==== CoOpStage::~CoOpStage
//      file offset 0x2ff4e4 (= ELF address; Ghidra 0x30f4e4), 148 bytes, Thumb-2
  2ff4e4: b500         	push	{lr}
  2ff4e6: b083         	sub	sp, #0xc
  2ff4e8: 9001         	str	r0, [sp, #0x4]
  2ff4ea: 4b21         	ldr	r3, [pc, #0x84]         @ 0x2ff570 <CoOpStage::~CoOpStage()+0x8c>
  2ff4ec: 447b         	add	r3, pc
  2ff4ee: 9a01         	ldr	r2, [sp, #0x4]
  2ff4f0: 4920         	ldr	r1, [pc, #0x80]         @ 0x2ff574 <CoOpStage::~CoOpStage()+0x90>
  2ff4f2: 5859         	ldr	r1, [r3, r1]
  2ff4f4: 3108         	adds	r1, #0x8
  2ff4f6: 6011         	str	r1, [r2]
  2ff4f8: 9a01         	ldr	r2, [sp, #0x4]
  2ff4fa: 491e         	ldr	r1, [pc, #0x78]         @ 0x2ff574 <CoOpStage::~CoOpStage()+0x90>
  2ff4fc: 5859         	ldr	r1, [r3, r1]
  2ff4fe: f501 711b    	add.w	r1, r1, #0x26c
  2ff502: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  2ff506: 9a01         	ldr	r2, [sp, #0x4]
  2ff508: 491a         	ldr	r1, [pc, #0x68]         @ 0x2ff574 <CoOpStage::~CoOpStage()+0x90>
  2ff50a: 5859         	ldr	r1, [r3, r1]
  2ff50c: f501 7127    	add.w	r1, r1, #0x29c
  2ff510: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  2ff514: 9a01         	ldr	r2, [sp, #0x4]
  2ff516: 4917         	ldr	r1, [pc, #0x5c]         @ 0x2ff574 <CoOpStage::~CoOpStage()+0x90>
  2ff518: 585b         	ldr	r3, [r3, r1]
  2ff51a: f503 732a    	add.w	r3, r3, #0x2a8
  2ff51e: f8c2 30ec    	str.w	r3, [r2, #0xec]
  2ff522: f2e1 f8c5    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2e118a
  2ff526: 4602         	mov	r2, r0
  2ff528: 9b01         	ldr	r3, [sp, #0x4]
  2ff52a: 4610         	mov	r0, r2
  2ff52c: 4619         	mov	r1, r3
  2ff52e: f2e1 f9f7    	bl	0x5e0920 <cocos2d::CCNotificationCenter::removeAllObservers(cocos2d::CCObject*)> @ imm = #0x2e13ee
  2ff532: 9b01         	ldr	r3, [sp, #0x4]
  2ff534: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  2ff538: 2b00         	cmp	r3, #0x0
  2ff53a: d00a         	beq	0x2ff552 <CoOpStage::~CoOpStage()+0x6e> @ imm = #0x14
  2ff53c: 9b01         	ldr	r3, [sp, #0x4]
  2ff53e: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  2ff542: 681b         	ldr	r3, [r3]
  2ff544: 3308         	adds	r3, #0x8
  2ff546: 681b         	ldr	r3, [r3]
  2ff548: 9a01         	ldr	r2, [sp, #0x4]
  2ff54a: f8d2 216c    	ldr.w	r2, [r2, #0x16c]
  2ff54e: 4610         	mov	r0, r2
  2ff550: 4798         	blx	r3
  2ff552: 9b01         	ldr	r3, [sp, #0x4]
  2ff554: 4618         	mov	r0, r3
  2ff556: f0fb fdff    	bl	0x3fb158 <Stage::~Stage()> @ imm = #0xfbbfe
  2ff55a: 2300         	movs	r3, #0x0
  2ff55c: 2b00         	cmp	r3, #0x0
  2ff55e: d002         	beq	0x2ff566 <CoOpStage::~CoOpStage()+0x82> @ imm = #0x4
  2ff560: 9801         	ldr	r0, [sp, #0x4]
  2ff562: f088 f59f    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x488b3e
  2ff566: 9b01         	ldr	r3, [sp, #0x4]
  2ff568: 4618         	mov	r0, r3
  2ff56a: b003         	add	sp, #0xc
  2ff56c: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2ff56f); words below are literal-pool data ---
  2ff570: 351c         	adds	r5, #0x1c
  2ff572: 0063         	lsls	r3, r4, #0x1
  2ff574: d908         	bls	0x2ff588 <CoOpStage::~CoOpStage()+0x8> @ imm = #0x10
  2ff576: ffff f1a0    	<unknown>

// ==== CoOpStage::~CoOpStage
//      file offset 0x2ff578 (= ELF address; Ghidra 0x30f578), 8 bytes, Thumb-2
  2ff578: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2ff57c: f7ff bfb2    	b.w	0x2ff4e4 <CoOpStage::~CoOpStage()> @ imm = #-0x9c

// ==== CoOpStage::~CoOpStage
//      file offset 0x2ff580 (= ELF address; Ghidra 0x30f580), 28 bytes, Thumb-2
  2ff580: b500         	push	{lr}
  2ff582: b083         	sub	sp, #0xc
  2ff584: 9001         	str	r0, [sp, #0x4]
  2ff586: 9801         	ldr	r0, [sp, #0x4]
  2ff588: f7ff ffac    	bl	0x2ff4e4 <CoOpStage::~CoOpStage()> @ imm = #-0xa8
  2ff58c: 9801         	ldr	r0, [sp, #0x4]
  2ff58e: f088 f589    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x488b12
  2ff592: 9b01         	ldr	r3, [sp, #0x4]
  2ff594: 4618         	mov	r0, r3
  2ff596: b003         	add	sp, #0xc
  2ff598: f85d fb04    	ldr	pc, [sp], #4

// ==== CoOpStage::~CoOpStage
//      file offset 0x2ff59c (= ELF address; Ghidra 0x30f59c), 8 bytes, Thumb-2
  2ff59c: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2ff5a0: f7ff bfee    	b.w	0x2ff580 <CoOpStage::~CoOpStage()> @ imm = #-0x24

// ==== CoOpStage::setupStage
//      file offset 0x2ff5a4 (= ELF address; Ghidra 0x30f5a4), 332 bytes, Thumb-2
  2ff5a4: b530         	push	{r4, r5, lr}
  2ff5a6: b08b         	sub	sp, #0x2c
  2ff5a8: 9003         	str	r0, [sp, #0xc]
  2ff5aa: 4c48         	ldr	r4, [pc, #0x120]        @ 0x2ff6cc <CoOpStage::setupStage()+0x128>
  2ff5ac: 447c         	add	r4, pc
  2ff5ae: 9b03         	ldr	r3, [sp, #0xc]
  2ff5b0: 4618         	mov	r0, r3
  2ff5b2: f0fb fea5    	bl	0x3fb300 <Stage::setupStage()> @ imm = #0xfbd4a
  2ff5b6: 9b03         	ldr	r3, [sp, #0xc]
  2ff5b8: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  2ff5bc: 2200         	movs	r2, #0x0
  2ff5be: f883 2044    	strb.w	r2, [r3, #0x44]
  2ff5c2: 4b43         	ldr	r3, [pc, #0x10c]        @ 0x2ff6d0 <CoOpStage::setupStage()+0x12c>
  2ff5c4: 58e3         	ldr	r3, [r4, r3]
  2ff5c6: 681b         	ldr	r3, [r3]
  2ff5c8: 2200         	movs	r2, #0x0
  2ff5ca: f883 2035    	strb.w	r2, [r3, #0x35]
  2ff5ce: 4b40         	ldr	r3, [pc, #0x100]        @ 0x2ff6d0 <CoOpStage::setupStage()+0x12c>
  2ff5d0: 58e3         	ldr	r3, [r4, r3]
  2ff5d2: 681b         	ldr	r3, [r3]
  2ff5d4: 2204         	movs	r2, #0x4
  2ff5d6: 625a         	str	r2, [r3, #0x24]
  2ff5d8: 9b03         	ldr	r3, [sp, #0xc]
  2ff5da: f8d3 210c    	ldr.w	r2, [r3, #0x10c]
  2ff5de: 4b3c         	ldr	r3, [pc, #0xf0]         @ 0x2ff6d0 <CoOpStage::setupStage()+0x12c>
  2ff5e0: 58e3         	ldr	r3, [r4, r3]
  2ff5e2: 681b         	ldr	r3, [r3]
  2ff5e4: 6a5b         	ldr	r3, [r3, #0x24]
  2ff5e6: 4610         	mov	r0, r2
  2ff5e8: 4619         	mov	r1, r3
  2ff5ea: f03c ff15    	bl	0x33c418 <HUD::updateLifeCount(int)> @ imm = #0x3ce2a
  2ff5ee: 9b03         	ldr	r3, [sp, #0xc]
  2ff5f0: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  2ff5f4: 2200         	movs	r2, #0x0
  2ff5f6: f883 21c4    	strb.w	r2, [r3, #0x1c4]
  2ff5fa: 2050         	movs	r0, #0x50
  2ff5fc: f088 f1b2    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x488364
  2ff600: 4605         	mov	r5, r0
  2ff602: 4628         	mov	r0, r5
  2ff604: f019 fbb2    	bl	0x318d6c <EnemyManager::EnemyManager()> @ imm = #0x19764
  2ff608: 9b03         	ldr	r3, [sp, #0xc]
  2ff60a: f8c3 516c    	str.w	r5, [r3, #0x16c]
  2ff60e: 9b03         	ldr	r3, [sp, #0xc]
  2ff610: f04f 4282    	mov.w	r2, #0x41000000
  2ff614: f8c3 2174    	str.w	r2, [r3, #0x174]
  2ff618: 9b03         	ldr	r3, [sp, #0xc]
  2ff61a: f04f 0200    	mov.w	r2, #0x0
  2ff61e: f8c3 2170    	str.w	r2, [r3, #0x170]
  2ff622: 9b03         	ldr	r3, [sp, #0xc]
  2ff624: f04f 0200    	mov.w	r2, #0x0
  2ff628: f8c3 217c    	str.w	r2, [r3, #0x17c]
  2ff62c: 4b29         	ldr	r3, [pc, #0xa4]         @ 0x2ff6d4 <CoOpStage::setupStage()+0x130>
  2ff62e: 58e3         	ldr	r3, [r4, r3]
  2ff630: 681b         	ldr	r3, [r3]
  2ff632: 4618         	mov	r0, r3
  2ff634: f0f8 fb68    	bl	0x3f7d08 <Sound::stopMusic()> @ imm = #0xf86d0
  2ff638: f2e1 f83a    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2e1074
  2ff63c: 4602         	mov	r2, r0
  2ff63e: 9b03         	ldr	r3, [sp, #0xc]
  2ff640: 4925         	ldr	r1, [pc, #0x94]         @ 0x2ff6d8 <CoOpStage::setupStage()+0x134>
  2ff642: 5861         	ldr	r1, [r4, r1]
  2ff644: 9104         	str	r1, [sp, #0x10]
  2ff646: 2100         	movs	r1, #0x0
  2ff648: 9105         	str	r1, [sp, #0x14]
  2ff64a: 4924         	ldr	r1, [pc, #0x90]         @ 0x2ff6dc <CoOpStage::setupStage()+0x138>
  2ff64c: 4479         	add	r1, pc
  2ff64e: 9100         	str	r1, [sp]
  2ff650: 2100         	movs	r1, #0x0
  2ff652: 9101         	str	r1, [sp, #0x4]
  2ff654: 4610         	mov	r0, r2
  2ff656: 4619         	mov	r1, r3
  2ff658: ab04         	add	r3, sp, #0x10
  2ff65a: cb0c         	ldm	r3, {r2, r3}
  2ff65c: f2e1 f8c4    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2e1188
  2ff660: f2e1 f826    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2e104c
  2ff664: 4602         	mov	r2, r0
  2ff666: 9b03         	ldr	r3, [sp, #0xc]
  2ff668: 491d         	ldr	r1, [pc, #0x74]         @ 0x2ff6e0 <CoOpStage::setupStage()+0x13c>
  2ff66a: 5861         	ldr	r1, [r4, r1]
  2ff66c: 9106         	str	r1, [sp, #0x18]
  2ff66e: 2100         	movs	r1, #0x0
  2ff670: 9107         	str	r1, [sp, #0x1c]
  2ff672: 491c         	ldr	r1, [pc, #0x70]         @ 0x2ff6e4 <CoOpStage::setupStage()+0x140>
  2ff674: 4479         	add	r1, pc
  2ff676: 9100         	str	r1, [sp]
  2ff678: 2100         	movs	r1, #0x0
  2ff67a: 9101         	str	r1, [sp, #0x4]
  2ff67c: 4610         	mov	r0, r2
  2ff67e: 4619         	mov	r1, r3
  2ff680: ab06         	add	r3, sp, #0x18
  2ff682: cb0c         	ldm	r3, {r2, r3}
  2ff684: f2e1 f8b0    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2e1160
  2ff688: f2e1 f812    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2e1024
  2ff68c: 4602         	mov	r2, r0
  2ff68e: 9b03         	ldr	r3, [sp, #0xc]
  2ff690: 4915         	ldr	r1, [pc, #0x54]         @ 0x2ff6e8 <CoOpStage::setupStage()+0x144>
  2ff692: 5861         	ldr	r1, [r4, r1]
  2ff694: 9108         	str	r1, [sp, #0x20]
  2ff696: 2100         	movs	r1, #0x0
  2ff698: 9109         	str	r1, [sp, #0x24]
  2ff69a: 4914         	ldr	r1, [pc, #0x50]         @ 0x2ff6ec <CoOpStage::setupStage()+0x148>
  2ff69c: 4479         	add	r1, pc
  2ff69e: 9100         	str	r1, [sp]
  2ff6a0: 2100         	movs	r1, #0x0
  2ff6a2: 9101         	str	r1, [sp, #0x4]
  2ff6a4: 4610         	mov	r0, r2
  2ff6a6: 4619         	mov	r1, r3
  2ff6a8: ab08         	add	r3, sp, #0x20
  2ff6aa: cb0c         	ldm	r3, {r2, r3}
  2ff6ac: f2e1 f89c    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2e1138
  2ff6b0: 9b03         	ldr	r3, [sp, #0xc]
  2ff6b2: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  2ff6b6: 4618         	mov	r0, r3
  2ff6b8: f019 fcee    	bl	0x319098 <EnemyManager::initEnemies()> @ imm = #0x199dc
  2ff6bc: e004         	b	0x2ff6c8 <CoOpStage::setupStage()+0x124> @ imm = #0x8
  2ff6be: 4628         	mov	r0, r5
  2ff6c0: f088 f4f0    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4889e0
  2ff6c4: f088 f4f2    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4889e4
  2ff6c8: b00b         	add	sp, #0x2c
  2ff6ca: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x2ff6cb); words below are literal-pool data ---
  2ff6cc: 345c         	adds	r4, #0x5c
  2ff6ce: 0063         	lsls	r3, r4, #0x1
  2ff6d0: d910         	bls	0x2ff6f4 <CoOpStage::sendEnemyPositionData(float)+0x4> @ imm = #0x20
  2ff6d2: ffff d730    	vqshl.u32	d29, d16, #0x1f
  2ff6d6: ffff d914    	vqshrn.u64	d29, q2, #0x1
  2ff6da: ffff 5850    	vqrshrun.s64	d21, q0, #0x1
  2ff6de: 004c         	lsls	r4, r1, #0x1
  2ff6e0: d918         	bls	0x2ff714 <CoOpStage::sendEnemyPositionData(float)+0x24> @ imm = #0x30
  2ff6e2: ffff 5834    	vqshrun.s64	d21, q10, #0x1
  2ff6e6: 004c         	lsls	r4, r1, #0x1
  2ff6e8: d91c         	bls	0x2ff724 <CoOpStage::sendEnemyPositionData(float)+0x34> @ imm = #0x38
  2ff6ea: ffff 5818    	vqshrun.s64	d21, q4, #0x1
  2ff6ee: 004c         	lsls	r4, r1, #0x1

// ==== CoOpStage::sendEnemyPositionData
//      file offset 0x2ff6f0 (= ELF address; Ghidra 0x30f6f0), 1600 bytes, Thumb-2
  2ff6f0: e92d 4ff0    	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  2ff6f4: b0b5         	sub	sp, #0xd4
  2ff6f6: 9015         	str	r0, [sp, #0x54]
  2ff6f8: 9114         	str	r1, [sp, #0x50]
  2ff6fa: 2300         	movs	r3, #0x0
  2ff6fc: 9317         	str	r3, [sp, #0x5c]
  2ff6fe: 9b15         	ldr	r3, [sp, #0x54]
  2ff700: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  2ff704: 695b         	ldr	r3, [r3, #0x14]
  2ff706: 931d         	str	r3, [sp, #0x74]
  2ff708: 2300         	movs	r3, #0x0
  2ff70a: 9318         	str	r3, [sp, #0x60]
  2ff70c: 9b1d         	ldr	r3, [sp, #0x74]
  2ff70e: 2b00         	cmp	r3, #0x0
  2ff710: d007         	beq	0x2ff722 <CoOpStage::sendEnemyPositionData(float)+0x32> @ imm = #0xe
  2ff712: 981d         	ldr	r0, [sp, #0x74]
  2ff714: f294 faaa    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x294554
  2ff718: 4603         	mov	r3, r0
  2ff71a: 2b00         	cmp	r3, #0x0
  2ff71c: d001         	beq	0x2ff722 <CoOpStage::sendEnemyPositionData(float)+0x32> @ imm = #0x2
  2ff71e: 2301         	movs	r3, #0x1
  2ff720: e000         	b	0x2ff724 <CoOpStage::sendEnemyPositionData(float)+0x34> @ imm = #0x0
  2ff722: 2300         	movs	r3, #0x0
  2ff724: 2b00         	cmp	r3, #0x0
  2ff726: f000 80e2    	beq.w	0x2ff8ee <CoOpStage::sendEnemyPositionData(float)+0x1fe> @ imm = #0x1c4
  2ff72a: 9b1d         	ldr	r3, [sp, #0x74]
  2ff72c: 695b         	ldr	r3, [r3, #0x14]
  2ff72e: 9317         	str	r3, [sp, #0x5c]
  2ff730: 9b1d         	ldr	r3, [sp, #0x74]
  2ff732: 695b         	ldr	r3, [r3, #0x14]
  2ff734: 2b00         	cmp	r3, #0x0
  2ff736: d004         	beq	0x2ff742 <CoOpStage::sendEnemyPositionData(float)+0x52> @ imm = #0x8
  2ff738: 9b1d         	ldr	r3, [sp, #0x74]
  2ff73a: 695b         	ldr	r3, [r3, #0x14]
  2ff73c: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  2ff740: e000         	b	0x2ff744 <CoOpStage::sendEnemyPositionData(float)+0x54> @ imm = #0x0
  2ff742: 2300         	movs	r3, #0x0
  2ff744: 9318         	str	r3, [sp, #0x60]
  2ff746: e0ce         	b	0x2ff8e6 <CoOpStage::sendEnemyPositionData(float)+0x1f6> @ imm = #0x19c
  2ff748: 9817         	ldr	r0, [sp, #0x5c]
  2ff74a: f7fe ff73    	bl	0x2fe634 <cocos2d::CCDictElement::getObject() const> @ imm = #-0x111a
  2ff74e: 4603         	mov	r3, r0
  2ff750: 931e         	str	r3, [sp, #0x78]
  2ff752: 9b1e         	ldr	r3, [sp, #0x78]
  2ff754: 681b         	ldr	r3, [r3]
  2ff756: f503 73e0    	add.w	r3, r3, #0x1c0
  2ff75a: 681b         	ldr	r3, [r3]
  2ff75c: aa16         	add	r2, sp, #0x58
  2ff75e: 4610         	mov	r0, r2
  2ff760: 991e         	ldr	r1, [sp, #0x78]
  2ff762: 4798         	blx	r3
  2ff764: ab16         	add	r3, sp, #0x58
  2ff766: 4618         	mov	r0, r3
  2ff768: f29a f968    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x29a2d0
  2ff76c: 4607         	mov	r7, r0
  2ff76e: 9b1e         	ldr	r3, [sp, #0x78]
  2ff770: 681b         	ldr	r3, [r3]
  2ff772: f503 73d6    	add.w	r3, r3, #0x1ac
  2ff776: 681b         	ldr	r3, [r3]
  2ff778: aa24         	add	r2, sp, #0x90
  2ff77a: 4610         	mov	r0, r2
  2ff77c: 991e         	ldr	r1, [sp, #0x78]
  2ff77e: 4798         	blx	r3
  2ff780: ed9d 7b24    	vldr	d7, [sp, #144]
  2ff784: eef7 7bc7    	vcvt.f32.f64	s15, d7
  2ff788: ee17 0a90    	vmov	r0, s15
  2ff78c: f7dd fa7a    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x22b0c
  2ff790: 4606         	mov	r6, r0
  2ff792: 9b1e         	ldr	r3, [sp, #0x78]
  2ff794: 681b         	ldr	r3, [r3]
  2ff796: f503 73d6    	add.w	r3, r3, #0x1ac
  2ff79a: 681b         	ldr	r3, [r3]
  2ff79c: aa28         	add	r2, sp, #0xa0
  2ff79e: 4610         	mov	r0, r2
  2ff7a0: 991e         	ldr	r1, [sp, #0x78]
  2ff7a2: 4798         	blx	r3
  2ff7a4: ed9d 7b2a    	vldr	d7, [sp, #168]
  2ff7a8: eef7 7bc7    	vcvt.f32.f64	s15, d7
  2ff7ac: ee17 0a90    	vmov	r0, s15
  2ff7b0: f7dd fa68    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x22b30
  2ff7b4: 4605         	mov	r5, r0
  2ff7b6: 9b1e         	ldr	r3, [sp, #0x78]
  2ff7b8: 681b         	ldr	r3, [r3]
  2ff7ba: f503 73fa    	add.w	r3, r3, #0x1f4
  2ff7be: 681b         	ldr	r3, [r3]
  2ff7c0: 981e         	ldr	r0, [sp, #0x78]
  2ff7c2: 4798         	blx	r3
  2ff7c4: 4603         	mov	r3, r0
  2ff7c6: 4618         	mov	r0, r3
  2ff7c8: f7dd fa5c    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x22b48
  2ff7cc: 4604         	mov	r4, r0
  2ff7ce: 9b1e         	ldr	r3, [sp, #0x78]
  2ff7d0: f8d3 3198    	ldr.w	r3, [r3, #0x198]
  2ff7d4: 4618         	mov	r0, r3
  2ff7d6: f7dd fa55    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x22b56
  2ff7da: 9013         	str	r0, [sp, #0x4c]
  2ff7dc: 9b1e         	ldr	r3, [sp, #0x78]
  2ff7de: f893 319c    	ldrb.w	r3, [r3, #0x19c]
  2ff7e2: 2b00         	cmp	r3, #0x0
  2ff7e4: d001         	beq	0x2ff7ea <CoOpStage::sendEnemyPositionData(float)+0xfa> @ imm = #0x2
  2ff7e6: 2301         	movs	r3, #0x1
  2ff7e8: e000         	b	0x2ff7ec <CoOpStage::sendEnemyPositionData(float)+0xfc> @ imm = #0x0
  2ff7ea: 2300         	movs	r3, #0x0
  2ff7ec: 4618         	mov	r0, r3
  2ff7ee: f7e5 fa8b    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x1aaea
  2ff7f2: 9012         	str	r0, [sp, #0x48]
  2ff7f4: 9b1e         	ldr	r3, [sp, #0x78]
  2ff7f6: 681b         	ldr	r3, [r3]
  2ff7f8: f503 73d8    	add.w	r3, r3, #0x1b0
  2ff7fc: 681b         	ldr	r3, [r3]
  2ff7fe: aa2c         	add	r2, sp, #0xb0
  2ff800: 4610         	mov	r0, r2
  2ff802: 991e         	ldr	r1, [sp, #0x78]
  2ff804: 4798         	blx	r3
  2ff806: ed9d 7b2c    	vldr	d7, [sp, #176]
  2ff80a: eef7 7bc7    	vcvt.f32.f64	s15, d7
  2ff80e: ee17 0a90    	vmov	r0, s15
  2ff812: f7dd fa37    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x22b92
  2ff816: 9011         	str	r0, [sp, #0x44]
  2ff818: 9b1e         	ldr	r3, [sp, #0x78]
  2ff81a: 681b         	ldr	r3, [r3]
  2ff81c: f503 73d8    	add.w	r3, r3, #0x1b0
  2ff820: 681b         	ldr	r3, [r3]
  2ff822: aa30         	add	r2, sp, #0xc0
  2ff824: 4610         	mov	r0, r2
  2ff826: 991e         	ldr	r1, [sp, #0x78]
  2ff828: 4798         	blx	r3
  2ff82a: ed9d 7b32    	vldr	d7, [sp, #200]
  2ff82e: eef7 7bc7    	vcvt.f32.f64	s15, d7
  2ff832: ee17 0a90    	vmov	r0, s15
  2ff836: f7dd fa25    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x22bb6
  2ff83a: 4683         	mov	r11, r0
  2ff83c: f04f 0000    	mov.w	r0, #0x0
  2ff840: f7dd fa20    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x22bc0
  2ff844: 4682         	mov	r10, r0
  2ff846: f04f 0000    	mov.w	r0, #0x0
  2ff84a: f7dd fa1b    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x22bca
  2ff84e: 4681         	mov	r9, r0
  2ff850: f04f 0000    	mov.w	r0, #0x0
  2ff854: f7dd fa16    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x22bd4
  2ff858: 4680         	mov	r8, r0
  2ff85a: 9b1e         	ldr	r3, [sp, #0x78]
  2ff85c: 681b         	ldr	r3, [r3]
  2ff85e: f503 7303    	add.w	r3, r3, #0x20c
  2ff862: 681b         	ldr	r3, [r3]
  2ff864: 981e         	ldr	r0, [sp, #0x78]
  2ff866: 4798         	blx	r3
  2ff868: 4603         	mov	r3, r0
  2ff86a: 681a         	ldr	r2, [r3]
  2ff86c: f502 7210    	add.w	r2, r2, #0x240
  2ff870: 6812         	ldr	r2, [r2]
  2ff872: 4618         	mov	r0, r3
  2ff874: 4790         	blx	r2
  2ff876: 4603         	mov	r3, r0
  2ff878: 4618         	mov	r0, r3
  2ff87a: f7e5 fa45    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x1ab76
  2ff87e: 4603         	mov	r3, r0
  2ff880: 9a13         	ldr	r2, [sp, #0x4c]
  2ff882: 9200         	str	r2, [sp]
  2ff884: 9a12         	ldr	r2, [sp, #0x48]
  2ff886: 9201         	str	r2, [sp, #0x4]
  2ff888: 9a11         	ldr	r2, [sp, #0x44]
  2ff88a: 9202         	str	r2, [sp, #0x8]
  2ff88c: f8cd b00c    	str.w	r11, [sp, #0xc]
  2ff890: f8cd a010    	str.w	r10, [sp, #0x10]
  2ff894: f8cd 9014    	str.w	r9, [sp, #0x14]
  2ff898: f8cd 8018    	str.w	r8, [sp, #0x18]
  2ff89c: 9307         	str	r3, [sp, #0x1c]
  2ff89e: 2300         	movs	r3, #0x0
  2ff8a0: 9308         	str	r3, [sp, #0x20]
  2ff8a2: 4638         	mov	r0, r7
  2ff8a4: 4631         	mov	r1, r6
  2ff8a6: 462a         	mov	r2, r5
  2ff8a8: 4623         	mov	r3, r4
  2ff8aa: f29a fab1    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x29a562
  2ff8ae: 4603         	mov	r3, r0
  2ff8b0: 931f         	str	r3, [sp, #0x7c]
  2ff8b2: ab16         	add	r3, sp, #0x58
  2ff8b4: 4618         	mov	r0, r3
  2ff8b6: f0b6 f02d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b605a
  2ff8ba: f2e0 fef9    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2e0df2
  2ff8be: 4603         	mov	r3, r0
  2ff8c0: 4618         	mov	r0, r3
  2ff8c2: f8df 3460    	ldr.w	r3, [pc, #0x460]        @ 0x2ffd24 <CoOpStage::sendEnemyPositionData(float)+0x634>
  2ff8c6: 447b         	add	r3, pc
  2ff8c8: 4619         	mov	r1, r3
  2ff8ca: 9a1f         	ldr	r2, [sp, #0x7c]
  2ff8cc: f2e1 f92e    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x2e125c
  2ff8d0: 9b18         	ldr	r3, [sp, #0x60]
  2ff8d2: 9317         	str	r3, [sp, #0x5c]
  2ff8d4: 9b18         	ldr	r3, [sp, #0x60]
  2ff8d6: 2b00         	cmp	r3, #0x0
  2ff8d8: d003         	beq	0x2ff8e2 <CoOpStage::sendEnemyPositionData(float)+0x1f2> @ imm = #0x6
  2ff8da: 9b18         	ldr	r3, [sp, #0x60]
  2ff8dc: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  2ff8e0: e000         	b	0x2ff8e4 <CoOpStage::sendEnemyPositionData(float)+0x1f4> @ imm = #0x0
  2ff8e2: 2300         	movs	r3, #0x0
  2ff8e4: 9318         	str	r3, [sp, #0x60]
  2ff8e6: 9b17         	ldr	r3, [sp, #0x5c]
  2ff8e8: 2b00         	cmp	r3, #0x0
  2ff8ea: f47f af2d    	bne.w	0x2ff748 <CoOpStage::sendEnemyPositionData(float)+0x58> @ imm = #-0x1a6
  2ff8ee: 2300         	movs	r3, #0x0
  2ff8f0: 9319         	str	r3, [sp, #0x64]
  2ff8f2: 9b15         	ldr	r3, [sp, #0x54]
  2ff8f4: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  2ff8f8: 69db         	ldr	r3, [r3, #0x1c]
  2ff8fa: 931d         	str	r3, [sp, #0x74]
  2ff8fc: 2300         	movs	r3, #0x0
  2ff8fe: 931a         	str	r3, [sp, #0x68]
  2ff900: 9b1d         	ldr	r3, [sp, #0x74]
  2ff902: 2b00         	cmp	r3, #0x0
  2ff904: d007         	beq	0x2ff916 <CoOpStage::sendEnemyPositionData(float)+0x226> @ imm = #0xe
  2ff906: 981d         	ldr	r0, [sp, #0x74]
  2ff908: f294 f9b0    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x294360
  2ff90c: 4603         	mov	r3, r0
  2ff90e: 2b00         	cmp	r3, #0x0
  2ff910: d001         	beq	0x2ff916 <CoOpStage::sendEnemyPositionData(float)+0x226> @ imm = #0x2
  2ff912: 2301         	movs	r3, #0x1
  2ff914: e000         	b	0x2ff918 <CoOpStage::sendEnemyPositionData(float)+0x228> @ imm = #0x0
  2ff916: 2300         	movs	r3, #0x0
  2ff918: 2b00         	cmp	r3, #0x0
  2ff91a: f000 80d2    	beq.w	0x2ffac2 <CoOpStage::sendEnemyPositionData(float)+0x3d2> @ imm = #0x1a4
  2ff91e: 9b1d         	ldr	r3, [sp, #0x74]
  2ff920: 695b         	ldr	r3, [r3, #0x14]
  2ff922: 9319         	str	r3, [sp, #0x64]
  2ff924: 9b1d         	ldr	r3, [sp, #0x74]
  2ff926: 695b         	ldr	r3, [r3, #0x14]
  2ff928: 2b00         	cmp	r3, #0x0
  2ff92a: d004         	beq	0x2ff936 <CoOpStage::sendEnemyPositionData(float)+0x246> @ imm = #0x8
  2ff92c: 9b1d         	ldr	r3, [sp, #0x74]
  2ff92e: 695b         	ldr	r3, [r3, #0x14]
  2ff930: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  2ff934: e000         	b	0x2ff938 <CoOpStage::sendEnemyPositionData(float)+0x248> @ imm = #0x0
  2ff936: 2300         	movs	r3, #0x0
  2ff938: 931a         	str	r3, [sp, #0x68]
  2ff93a: e0be         	b	0x2ffaba <CoOpStage::sendEnemyPositionData(float)+0x3ca> @ imm = #0x17c
  2ff93c: 9819         	ldr	r0, [sp, #0x64]
  2ff93e: f7fe fe79    	bl	0x2fe634 <cocos2d::CCDictElement::getObject() const> @ imm = #-0x130e
  2ff942: 4603         	mov	r3, r0
  2ff944: 9320         	str	r3, [sp, #0x80]
  2ff946: 9b20         	ldr	r3, [sp, #0x80]
  2ff948: 681b         	ldr	r3, [r3]
  2ff94a: f503 73e0    	add.w	r3, r3, #0x1c0
  2ff94e: 681b         	ldr	r3, [r3]
  2ff950: aa16         	add	r2, sp, #0x58
  2ff952: 4610         	mov	r0, r2
  2ff954: 9920         	ldr	r1, [sp, #0x80]
  2ff956: 4798         	blx	r3
  2ff958: ab16         	add	r3, sp, #0x58
  2ff95a: 4618         	mov	r0, r3
  2ff95c: f29a f86e    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x29a0dc
  2ff960: 4607         	mov	r7, r0
  2ff962: 9b20         	ldr	r3, [sp, #0x80]
  2ff964: 681b         	ldr	r3, [r3]
  2ff966: f503 73d6    	add.w	r3, r3, #0x1ac
  2ff96a: 681b         	ldr	r3, [r3]
  2ff96c: aa24         	add	r2, sp, #0x90
  2ff96e: 4610         	mov	r0, r2
  2ff970: 9920         	ldr	r1, [sp, #0x80]
  2ff972: 4798         	blx	r3
  2ff974: ed9d 7b24    	vldr	d7, [sp, #144]
  2ff978: eef7 7bc7    	vcvt.f32.f64	s15, d7
  2ff97c: ee17 0a90    	vmov	r0, s15
  2ff980: f7dd f980    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x22d00
  2ff984: 4606         	mov	r6, r0
  2ff986: 9b20         	ldr	r3, [sp, #0x80]
  2ff988: 681b         	ldr	r3, [r3]
  2ff98a: f503 73d6    	add.w	r3, r3, #0x1ac
  2ff98e: 681b         	ldr	r3, [r3]
  2ff990: aa28         	add	r2, sp, #0xa0
  2ff992: 4610         	mov	r0, r2
  2ff994: 9920         	ldr	r1, [sp, #0x80]
  2ff996: 4798         	blx	r3
  2ff998: ed9d 7b2a    	vldr	d7, [sp, #168]
  2ff99c: eef7 7bc7    	vcvt.f32.f64	s15, d7
  2ff9a0: ee17 0a90    	vmov	r0, s15
  2ff9a4: f7dd f96e    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x22d24
  2ff9a8: 4605         	mov	r5, r0
  2ff9aa: 9b20         	ldr	r3, [sp, #0x80]
  2ff9ac: 681b         	ldr	r3, [r3]
  2ff9ae: f503 73fa    	add.w	r3, r3, #0x1f4
  2ff9b2: 681b         	ldr	r3, [r3]
  2ff9b4: 9820         	ldr	r0, [sp, #0x80]
  2ff9b6: 4798         	blx	r3
  2ff9b8: 4603         	mov	r3, r0
  2ff9ba: 4618         	mov	r0, r3
  2ff9bc: f7dd f962    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x22d3c
  2ff9c0: 4604         	mov	r4, r0
  2ff9c2: 9b20         	ldr	r3, [sp, #0x80]
  2ff9c4: f8d3 3198    	ldr.w	r3, [r3, #0x198]
  2ff9c8: 4618         	mov	r0, r3
  2ff9ca: f7dd f95b    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x22d4a
  2ff9ce: 9010         	str	r0, [sp, #0x40]
  2ff9d0: 9b20         	ldr	r3, [sp, #0x80]
  2ff9d2: f893 319c    	ldrb.w	r3, [r3, #0x19c]
  2ff9d6: 2b00         	cmp	r3, #0x0
  2ff9d8: d001         	beq	0x2ff9de <CoOpStage::sendEnemyPositionData(float)+0x2ee> @ imm = #0x2
  2ff9da: 2301         	movs	r3, #0x1
  2ff9dc: e000         	b	0x2ff9e0 <CoOpStage::sendEnemyPositionData(float)+0x2f0> @ imm = #0x0
  2ff9de: 2300         	movs	r3, #0x0
  2ff9e0: 4618         	mov	r0, r3
  2ff9e2: f7e5 f991    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x1acde
  2ff9e6: 900f         	str	r0, [sp, #0x3c]
  2ff9e8: 9b20         	ldr	r3, [sp, #0x80]
  2ff9ea: 681b         	ldr	r3, [r3]
  2ff9ec: f503 73d8    	add.w	r3, r3, #0x1b0
  2ff9f0: 681b         	ldr	r3, [r3]
  2ff9f2: aa2c         	add	r2, sp, #0xb0
  2ff9f4: 4610         	mov	r0, r2
  2ff9f6: 9920         	ldr	r1, [sp, #0x80]
  2ff9f8: 4798         	blx	r3
  2ff9fa: ed9d 7b2c    	vldr	d7, [sp, #176]
  2ff9fe: eef7 7bc7    	vcvt.f32.f64	s15, d7
  2ffa02: ee17 0a90    	vmov	r0, s15
  2ffa06: f7dd f93d    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x22d86
  2ffa0a: 900e         	str	r0, [sp, #0x38]
  2ffa0c: 9b20         	ldr	r3, [sp, #0x80]
  2ffa0e: 681b         	ldr	r3, [r3]
  2ffa10: f503 73d8    	add.w	r3, r3, #0x1b0
  2ffa14: 681b         	ldr	r3, [r3]
  2ffa16: aa30         	add	r2, sp, #0xc0
  2ffa18: 4610         	mov	r0, r2
  2ffa1a: 9920         	ldr	r1, [sp, #0x80]
  2ffa1c: 4798         	blx	r3
  2ffa1e: ed9d 7b32    	vldr	d7, [sp, #200]
  2ffa22: eef7 7bc7    	vcvt.f32.f64	s15, d7
  2ffa26: ee17 0a90    	vmov	r0, s15
  2ffa2a: f7dd f92b    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x22daa
  2ffa2e: 4683         	mov	r11, r0
  2ffa30: f04f 0000    	mov.w	r0, #0x0
  2ffa34: f7dd f926    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x22db4
  2ffa38: 4682         	mov	r10, r0
  2ffa3a: f04f 0000    	mov.w	r0, #0x0
  2ffa3e: f7dd f921    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x22dbe
  2ffa42: 4681         	mov	r9, r0
  2ffa44: f04f 0000    	mov.w	r0, #0x0
  2ffa48: f7dd f91c    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x22dc8
  2ffa4c: 4680         	mov	r8, r0
  2ffa4e: 2000         	movs	r0, #0x0
  2ffa50: f7e5 f95a    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x1ad4c
  2ffa54: 4603         	mov	r3, r0
  2ffa56: 9a10         	ldr	r2, [sp, #0x40]
  2ffa58: 9200         	str	r2, [sp]
  2ffa5a: 9a0f         	ldr	r2, [sp, #0x3c]
  2ffa5c: 9201         	str	r2, [sp, #0x4]
  2ffa5e: 9a0e         	ldr	r2, [sp, #0x38]
  2ffa60: 9202         	str	r2, [sp, #0x8]
  2ffa62: f8cd b00c    	str.w	r11, [sp, #0xc]
  2ffa66: f8cd a010    	str.w	r10, [sp, #0x10]
  2ffa6a: f8cd 9014    	str.w	r9, [sp, #0x14]
  2ffa6e: f8cd 8018    	str.w	r8, [sp, #0x18]
  2ffa72: 9307         	str	r3, [sp, #0x1c]
  2ffa74: 2300         	movs	r3, #0x0
  2ffa76: 9308         	str	r3, [sp, #0x20]
  2ffa78: 4638         	mov	r0, r7
  2ffa7a: 4631         	mov	r1, r6
  2ffa7c: 462a         	mov	r2, r5
  2ffa7e: 4623         	mov	r3, r4
  2ffa80: f29a f9c6    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x29a38c
  2ffa84: 4603         	mov	r3, r0
  2ffa86: 9321         	str	r3, [sp, #0x84]
  2ffa88: ab16         	add	r3, sp, #0x58
  2ffa8a: 4618         	mov	r0, r3
  2ffa8c: f0b5 f742    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b5e84
  2ffa90: f2e0 fe0e    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2e0c1c
  2ffa94: 4603         	mov	r3, r0
  2ffa96: 4618         	mov	r0, r3
  2ffa98: 4ba3         	ldr	r3, [pc, #0x28c]        @ 0x2ffd28 <CoOpStage::sendEnemyPositionData(float)+0x638>
  2ffa9a: 447b         	add	r3, pc
  2ffa9c: 4619         	mov	r1, r3
  2ffa9e: 9a21         	ldr	r2, [sp, #0x84]
  2ffaa0: f2e1 f844    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x2e1088
  2ffaa4: 9b1a         	ldr	r3, [sp, #0x68]
  2ffaa6: 9319         	str	r3, [sp, #0x64]
  2ffaa8: 9b1a         	ldr	r3, [sp, #0x68]
  2ffaaa: 2b00         	cmp	r3, #0x0
  2ffaac: d003         	beq	0x2ffab6 <CoOpStage::sendEnemyPositionData(float)+0x3c6> @ imm = #0x6
  2ffaae: 9b1a         	ldr	r3, [sp, #0x68]
  2ffab0: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  2ffab4: e000         	b	0x2ffab8 <CoOpStage::sendEnemyPositionData(float)+0x3c8> @ imm = #0x0
  2ffab6: 2300         	movs	r3, #0x0
  2ffab8: 931a         	str	r3, [sp, #0x68]
  2ffaba: 9b19         	ldr	r3, [sp, #0x64]
  2ffabc: 2b00         	cmp	r3, #0x0
  2ffabe: f47f af3d    	bne.w	0x2ff93c <CoOpStage::sendEnemyPositionData(float)+0x24c> @ imm = #-0x186
  2ffac2: 2300         	movs	r3, #0x0
  2ffac4: 931b         	str	r3, [sp, #0x6c]
  2ffac6: 9b15         	ldr	r3, [sp, #0x54]
  2ffac8: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  2ffacc: 699b         	ldr	r3, [r3, #0x18]
  2fface: 931d         	str	r3, [sp, #0x74]
  2ffad0: 2300         	movs	r3, #0x0
  2ffad2: 931c         	str	r3, [sp, #0x70]
  2ffad4: 9b1d         	ldr	r3, [sp, #0x74]
  2ffad6: 2b00         	cmp	r3, #0x0
  2ffad8: d007         	beq	0x2ffaea <CoOpStage::sendEnemyPositionData(float)+0x3fa> @ imm = #0xe
  2ffada: 981d         	ldr	r0, [sp, #0x74]
  2ffadc: f294 f8c6    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x29418c
  2ffae0: 4603         	mov	r3, r0
  2ffae2: 2b00         	cmp	r3, #0x0
  2ffae4: d001         	beq	0x2ffaea <CoOpStage::sendEnemyPositionData(float)+0x3fa> @ imm = #0x2
  2ffae6: 2301         	movs	r3, #0x1
  2ffae8: e000         	b	0x2ffaec <CoOpStage::sendEnemyPositionData(float)+0x3fc> @ imm = #0x0
  2ffaea: 2300         	movs	r3, #0x0
  2ffaec: 2b00         	cmp	r3, #0x0
  2ffaee: f000 8116    	beq.w	0x2ffd1e <CoOpStage::sendEnemyPositionData(float)+0x62e> @ imm = #0x22c
  2ffaf2: 9b1d         	ldr	r3, [sp, #0x74]
  2ffaf4: 695b         	ldr	r3, [r3, #0x14]
  2ffaf6: 931b         	str	r3, [sp, #0x6c]
  2ffaf8: 9b1d         	ldr	r3, [sp, #0x74]
  2ffafa: 695b         	ldr	r3, [r3, #0x14]
  2ffafc: 2b00         	cmp	r3, #0x0
  2ffafe: d004         	beq	0x2ffb0a <CoOpStage::sendEnemyPositionData(float)+0x41a> @ imm = #0x8
  2ffb00: 9b1d         	ldr	r3, [sp, #0x74]
  2ffb02: 695b         	ldr	r3, [r3, #0x14]
  2ffb04: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  2ffb08: e000         	b	0x2ffb0c <CoOpStage::sendEnemyPositionData(float)+0x41c> @ imm = #0x0
  2ffb0a: 2300         	movs	r3, #0x0
  2ffb0c: 931c         	str	r3, [sp, #0x70]
  2ffb0e: e0ef         	b	0x2ffcf0 <CoOpStage::sendEnemyPositionData(float)+0x600> @ imm = #0x1de
  2ffb10: 981b         	ldr	r0, [sp, #0x6c]
  2ffb12: f7fe fd8f    	bl	0x2fe634 <cocos2d::CCDictElement::getObject() const> @ imm = #-0x14e2
  2ffb16: 4603         	mov	r3, r0
  2ffb18: 9322         	str	r3, [sp, #0x88]
  2ffb1a: 9b22         	ldr	r3, [sp, #0x88]
  2ffb1c: 681b         	ldr	r3, [r3]
  2ffb1e: f503 73e0    	add.w	r3, r3, #0x1c0
  2ffb22: 681b         	ldr	r3, [r3]
  2ffb24: aa16         	add	r2, sp, #0x58
  2ffb26: 4610         	mov	r0, r2
  2ffb28: 9922         	ldr	r1, [sp, #0x88]
  2ffb2a: 4798         	blx	r3
  2ffb2c: ab16         	add	r3, sp, #0x58
  2ffb2e: 4618         	mov	r0, r3
  2ffb30: f299 ff84    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x299f08
  2ffb34: 4607         	mov	r7, r0
  2ffb36: 9b22         	ldr	r3, [sp, #0x88]
  2ffb38: 681b         	ldr	r3, [r3]
  2ffb3a: f503 73d6    	add.w	r3, r3, #0x1ac
  2ffb3e: 681b         	ldr	r3, [r3]
  2ffb40: aa24         	add	r2, sp, #0x90
  2ffb42: 4610         	mov	r0, r2
  2ffb44: 9922         	ldr	r1, [sp, #0x88]
  2ffb46: 4798         	blx	r3
  2ffb48: ed9d 7b24    	vldr	d7, [sp, #144]
  2ffb4c: eef7 7bc7    	vcvt.f32.f64	s15, d7
  2ffb50: ee17 0a90    	vmov	r0, s15
  2ffb54: f7dd f896    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x22ed4
  2ffb58: 4606         	mov	r6, r0
  2ffb5a: 9b22         	ldr	r3, [sp, #0x88]
  2ffb5c: 681b         	ldr	r3, [r3]
  2ffb5e: f503 73d6    	add.w	r3, r3, #0x1ac
  2ffb62: 681b         	ldr	r3, [r3]
  2ffb64: aa28         	add	r2, sp, #0xa0
  2ffb66: 4610         	mov	r0, r2
  2ffb68: 9922         	ldr	r1, [sp, #0x88]
  2ffb6a: 4798         	blx	r3
  2ffb6c: ed9d 7b2a    	vldr	d7, [sp, #168]
  2ffb70: eef7 7bc7    	vcvt.f32.f64	s15, d7
  2ffb74: ee17 0a90    	vmov	r0, s15
  2ffb78: f7dd f884    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x22ef8
  2ffb7c: 4605         	mov	r5, r0
  2ffb7e: 9b22         	ldr	r3, [sp, #0x88]
  2ffb80: 681b         	ldr	r3, [r3]
  2ffb82: f503 73fa    	add.w	r3, r3, #0x1f4
  2ffb86: 681b         	ldr	r3, [r3]
  2ffb88: 9822         	ldr	r0, [sp, #0x88]
  2ffb8a: 4798         	blx	r3
  2ffb8c: 4603         	mov	r3, r0
  2ffb8e: 4618         	mov	r0, r3
  2ffb90: f7dd f878    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x22f10
  2ffb94: 4604         	mov	r4, r0
  2ffb96: 9b22         	ldr	r3, [sp, #0x88]
  2ffb98: 681b         	ldr	r3, [r3]
  2ffb9a: f503 7302    	add.w	r3, r3, #0x208
  2ffb9e: 681b         	ldr	r3, [r3]
  2ffba0: 9822         	ldr	r0, [sp, #0x88]
  2ffba2: 4798         	blx	r3
  2ffba4: 4603         	mov	r3, r0
  2ffba6: 4618         	mov	r0, r3
  2ffba8: f7dd f86c    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x22f28
  2ffbac: 900d         	str	r0, [sp, #0x34]
  2ffbae: 9b22         	ldr	r3, [sp, #0x88]
  2ffbb0: f893 319c    	ldrb.w	r3, [r3, #0x19c]
  2ffbb4: 2b00         	cmp	r3, #0x0
  2ffbb6: d001         	beq	0x2ffbbc <CoOpStage::sendEnemyPositionData(float)+0x4cc> @ imm = #0x2
  2ffbb8: 2301         	movs	r3, #0x1
  2ffbba: e000         	b	0x2ffbbe <CoOpStage::sendEnemyPositionData(float)+0x4ce> @ imm = #0x0
  2ffbbc: 2300         	movs	r3, #0x0
  2ffbbe: 4618         	mov	r0, r3
  2ffbc0: f7e5 f8a2    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x1aebc
  2ffbc4: 900c         	str	r0, [sp, #0x30]
  2ffbc6: 9b22         	ldr	r3, [sp, #0x88]
  2ffbc8: 681b         	ldr	r3, [r3]
  2ffbca: f503 73d8    	add.w	r3, r3, #0x1b0
  2ffbce: 681b         	ldr	r3, [r3]
  2ffbd0: aa2c         	add	r2, sp, #0xb0
  2ffbd2: 4610         	mov	r0, r2
  2ffbd4: 9922         	ldr	r1, [sp, #0x88]
  2ffbd6: 4798         	blx	r3
  2ffbd8: ed9d 7b2c    	vldr	d7, [sp, #176]
  2ffbdc: eef7 7bc7    	vcvt.f32.f64	s15, d7
  2ffbe0: ee17 0a90    	vmov	r0, s15
  2ffbe4: f7dd f84e    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x22f64
  2ffbe8: 900b         	str	r0, [sp, #0x2c]
  2ffbea: 9b22         	ldr	r3, [sp, #0x88]
  2ffbec: 681b         	ldr	r3, [r3]
  2ffbee: f503 73d8    	add.w	r3, r3, #0x1b0
  2ffbf2: 681b         	ldr	r3, [r3]
  2ffbf4: aa30         	add	r2, sp, #0xc0
  2ffbf6: 4610         	mov	r0, r2
  2ffbf8: 9922         	ldr	r1, [sp, #0x88]
  2ffbfa: 4798         	blx	r3
  2ffbfc: ed9d 7b32    	vldr	d7, [sp, #200]
  2ffc00: eef7 7bc7    	vcvt.f32.f64	s15, d7
  2ffc04: ee17 0a90    	vmov	r0, s15
  2ffc08: f7dd f83c    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x22f88
  2ffc0c: 4683         	mov	r11, r0
  2ffc0e: 9b22         	ldr	r3, [sp, #0x88]
  2ffc10: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  2ffc14: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  2ffc18: 4618         	mov	r0, r3
  2ffc1a: f7dd f833    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x22f9a
  2ffc1e: 4682         	mov	r10, r0
  2ffc20: 9b22         	ldr	r3, [sp, #0x88]
  2ffc22: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  2ffc26: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  2ffc2a: 4618         	mov	r0, r3
  2ffc2c: f7dd f82a    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x22fac
  2ffc30: 4681         	mov	r9, r0
  2ffc32: 9b22         	ldr	r3, [sp, #0x88]
  2ffc34: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  2ffc38: 681b         	ldr	r3, [r3]
  2ffc3a: f503 73f4    	add.w	r3, r3, #0x1e8
  2ffc3e: 681b         	ldr	r3, [r3]
  2ffc40: 9a22         	ldr	r2, [sp, #0x88]
  2ffc42: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  2ffc46: 4610         	mov	r0, r2
  2ffc48: 4798         	blx	r3
  2ffc4a: ec41 0b17    	vmov	d7, r0, r1
  2ffc4e: eef7 7bc7    	vcvt.f32.f64	s15, d7
  2ffc52: ee17 0a90    	vmov	r0, s15
  2ffc56: f7dd f815    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x22fd6
  2ffc5a: 4680         	mov	r8, r0
  2ffc5c: 9b22         	ldr	r3, [sp, #0x88]
  2ffc5e: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  2ffc62: 681b         	ldr	r3, [r3]
  2ffc64: f503 73fa    	add.w	r3, r3, #0x1f4
  2ffc68: 681b         	ldr	r3, [r3]
  2ffc6a: 9a22         	ldr	r2, [sp, #0x88]
  2ffc6c: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  2ffc70: 4610         	mov	r0, r2
  2ffc72: 4798         	blx	r3
  2ffc74: 4603         	mov	r3, r0
  2ffc76: 681a         	ldr	r2, [r3]
  2ffc78: f502 7210    	add.w	r2, r2, #0x240
  2ffc7c: 6812         	ldr	r2, [r2]
  2ffc7e: 4618         	mov	r0, r3
  2ffc80: 4790         	blx	r2
  2ffc82: 4603         	mov	r3, r0
  2ffc84: 4618         	mov	r0, r3
  2ffc86: f7e5 f83f    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x1af82
  2ffc8a: 4603         	mov	r3, r0
  2ffc8c: 9a0d         	ldr	r2, [sp, #0x34]
  2ffc8e: 9200         	str	r2, [sp]
  2ffc90: 9a0c         	ldr	r2, [sp, #0x30]
  2ffc92: 9201         	str	r2, [sp, #0x4]
  2ffc94: 9a0b         	ldr	r2, [sp, #0x2c]
  2ffc96: 9202         	str	r2, [sp, #0x8]
  2ffc98: f8cd b00c    	str.w	r11, [sp, #0xc]
  2ffc9c: f8cd a010    	str.w	r10, [sp, #0x10]
  2ffca0: f8cd 9014    	str.w	r9, [sp, #0x14]
  2ffca4: f8cd 8018    	str.w	r8, [sp, #0x18]
  2ffca8: 9307         	str	r3, [sp, #0x1c]
  2ffcaa: 2300         	movs	r3, #0x0
  2ffcac: 9308         	str	r3, [sp, #0x20]
  2ffcae: 4638         	mov	r0, r7
  2ffcb0: 4631         	mov	r1, r6
  2ffcb2: 462a         	mov	r2, r5
  2ffcb4: 4623         	mov	r3, r4
  2ffcb6: f29a f8ab    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x29a156
  2ffcba: 4603         	mov	r3, r0
  2ffcbc: 9323         	str	r3, [sp, #0x8c]
  2ffcbe: ab16         	add	r3, sp, #0x58
  2ffcc0: 4618         	mov	r0, r3
  2ffcc2: f0b5 f627    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b5c4e
  2ffcc6: f2e0 fcf3    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2e09e6
  2ffcca: 4603         	mov	r3, r0
  2ffccc: 4618         	mov	r0, r3
  2ffcce: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x2ffd2c <CoOpStage::sendEnemyPositionData(float)+0x63c>
  2ffcd0: 447b         	add	r3, pc
  2ffcd2: 4619         	mov	r1, r3
  2ffcd4: 9a23         	ldr	r2, [sp, #0x8c]
  2ffcd6: f2e0 ff29    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x2e0e52
  2ffcda: 9b1c         	ldr	r3, [sp, #0x70]
  2ffcdc: 931b         	str	r3, [sp, #0x6c]
  2ffcde: 9b1c         	ldr	r3, [sp, #0x70]
  2ffce0: 2b00         	cmp	r3, #0x0
  2ffce2: d003         	beq	0x2ffcec <CoOpStage::sendEnemyPositionData(float)+0x5fc> @ imm = #0x6
  2ffce4: 9b1c         	ldr	r3, [sp, #0x70]
  2ffce6: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  2ffcea: e000         	b	0x2ffcee <CoOpStage::sendEnemyPositionData(float)+0x5fe> @ imm = #0x0
  2ffcec: 2300         	movs	r3, #0x0
  2ffcee: 931c         	str	r3, [sp, #0x70]
  2ffcf0: 9b1b         	ldr	r3, [sp, #0x6c]
  2ffcf2: 2b00         	cmp	r3, #0x0
  2ffcf4: f47f af0c    	bne.w	0x2ffb10 <CoOpStage::sendEnemyPositionData(float)+0x420> @ imm = #-0x1e8
  2ffcf8: e011         	b	0x2ffd1e <CoOpStage::sendEnemyPositionData(float)+0x62e> @ imm = #0x22
  2ffcfa: ab16         	add	r3, sp, #0x58
  2ffcfc: 4618         	mov	r0, r3
  2ffcfe: f0b5 f609    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b5c12
  2ffd02: f088 f1d3    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4883a6
  2ffd06: ab16         	add	r3, sp, #0x58
  2ffd08: 4618         	mov	r0, r3
  2ffd0a: f0b5 f603    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b5c06
  2ffd0e: f088 f1cd    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48839a
  2ffd12: ab16         	add	r3, sp, #0x58
  2ffd14: 4618         	mov	r0, r3
  2ffd16: f0b5 f5fd    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b5bfa
  2ffd1a: f088 f1c7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48838e
  2ffd1e: b035         	add	sp, #0xd4
  2ffd20: e8bd 8ff0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  ; --- end of code (Ghidra body ends at 0x2ffd23); words below are literal-pool data ---
  2ffd24: 55fe         	strb	r6, [r7, r7]
  2ffd26: 004c         	lsls	r4, r1, #0x1
  2ffd28: 542a         	strb	r2, [r5, r0]
  2ffd2a: 004c         	lsls	r4, r1, #0x1
  2ffd2c: 51f4         	str	r4, [r6, r7]
  2ffd2e: 004c         	lsls	r4, r1, #0x1

// ==== CoOpStage::sendNetworkData
//      file offset 0x2ffd30 (= ELF address; Ghidra 0x30fd30), 112 bytes, Thumb-2
  2ffd30: b500         	push	{lr}
  2ffd32: b083         	sub	sp, #0xc
  2ffd34: 9001         	str	r0, [sp, #0x4]
  2ffd36: 9100         	str	r1, [sp]
  2ffd38: 9b01         	ldr	r3, [sp, #0x4]
  2ffd3a: 4618         	mov	r0, r3
  2ffd3c: 9900         	ldr	r1, [sp]
  2ffd3e: f0fb fda3    	bl	0x3fb888 <Stage::sendNetworkData(float)> @ imm = #0xfbb46
  2ffd42: 9b01         	ldr	r3, [sp, #0x4]
  2ffd44: ed93 7a60    	vldr	s14, [r3, #384]
  2ffd48: eddd 7a00    	vldr	s15, [sp]
  2ffd4c: ee77 7a27    	vadd.f32	s15, s14, s15
  2ffd50: 9b01         	ldr	r3, [sp, #0x4]
  2ffd52: edc3 7a60    	vstr	s15, [r3, #384]
  2ffd56: 9b01         	ldr	r3, [sp, #0x4]
  2ffd58: edd3 7a60    	vldr	s15, [r3, #384]
  2ffd5c: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  2ffd60: ed9f 7b0d    	vldr	d7, [pc, #52]           @ 0x2ffd98 <CoOpStage::sendNetworkData(float)+0x68>
  2ffd64: eeb4 6bc7    	vcmpe.f64	d6, d7
  2ffd68: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  2ffd6c: dd11         	ble	0x2ffd92 <CoOpStage::sendNetworkData(float)+0x62> @ imm = #0x22
  2ffd6e: f077 fee7    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x77dce
  2ffd72: 4603         	mov	r3, r0
  2ffd74: 4618         	mov	r0, r3
  2ffd76: f07a f887    	bl	0x379e88 <NetworkManager::isHostLeader()> @ imm = #0x7a10e
  2ffd7a: 4603         	mov	r3, r0
  2ffd7c: 2b00         	cmp	r3, #0x0
  2ffd7e: d003         	beq	0x2ffd88 <CoOpStage::sendNetworkData(float)+0x58> @ imm = #0x6
  2ffd80: 9801         	ldr	r0, [sp, #0x4]
  2ffd82: 9900         	ldr	r1, [sp]
  2ffd84: f7ff fcb4    	bl	0x2ff6f0 <CoOpStage::sendEnemyPositionData(float)> @ imm = #-0x698
  2ffd88: 9b01         	ldr	r3, [sp, #0x4]
  2ffd8a: f04f 0200    	mov.w	r2, #0x0
  2ffd8e: f8c3 2180    	str.w	r2, [r3, #0x180]
  2ffd92: b003         	add	sp, #0xc
  2ffd94: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2ffd97); words below are literal-pool data ---
  2ffd98: d70a         	bvc	0x2ffdb0 <CoOpStage::playerScored(cocos2d::CCObject*)+0x10> @ imm = #0x14
  2ffd9a: 70a3         	strb	r3, [r4, #0x2]
  2ffd9c: 0a3d         	lsrs	r5, r7, #0x8
  2ffd9e: 3fb7         	subs	r7, #0xb7

// ==== CoOpStage::playerScored
//      file offset 0x2ffda0 (= ELF address; Ghidra 0x30fda0), 1248 bytes, Thumb-2
  2ffda0: b530         	push	{r4, r5, lr}
  2ffda2: b091         	sub	sp, #0x44
  2ffda4: 9001         	str	r0, [sp, #0x4]
  2ffda6: 9100         	str	r1, [sp]
  2ffda8: f8df 44b0    	ldr.w	r4, [pc, #0x4b0]        @ 0x30025c <CoOpStage::playerScored(cocos2d::CCObject*)+0x4bc>
  2ffdac: 447c         	add	r4, pc
  2ffdae: 9b00         	ldr	r3, [sp]
  2ffdb0: 930e         	str	r3, [sp, #0x38]
  2ffdb2: 980e         	ldr	r0, [sp, #0x38]
  2ffdb4: 2100         	movs	r1, #0x0
  2ffdb6: f29a f9b3    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x29a366
  2ffdba: 4603         	mov	r3, r0
  2ffdbc: 4618         	mov	r0, r3
  2ffdbe: f299 fdb3    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x299b66
  2ffdc2: 4605         	mov	r5, r0
  2ffdc4: ab0b         	add	r3, sp, #0x2c
  2ffdc6: 4618         	mov	r0, r3
  2ffdc8: f08a f314    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x48a628
  2ffdcc: aa04         	add	r2, sp, #0x10
  2ffdce: ab0b         	add	r3, sp, #0x2c
  2ffdd0: 4610         	mov	r0, r2
  2ffdd2: 4629         	mov	r1, r5
  2ffdd4: 461a         	mov	r2, r3
  2ffdd6: f0b6 f643    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4b6c86
  2ffdda: ab0b         	add	r3, sp, #0x2c
  2ffddc: 4618         	mov	r0, r3
  2ffdde: f08a f30d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x48a61a
  2ffde2: 980e         	ldr	r0, [sp, #0x38]
  2ffde4: 2101         	movs	r1, #0x1
  2ffde6: f29a f99b    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x29a336
  2ffdea: 4603         	mov	r3, r0
  2ffdec: 4618         	mov	r0, r3
  2ffdee: f299 fd9b    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x299b36
  2ffdf2: 4605         	mov	r5, r0
  2ffdf4: ab0b         	add	r3, sp, #0x2c
  2ffdf6: 4618         	mov	r0, r3
  2ffdf8: f08a f2fc    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x48a5f8
  2ffdfc: aa05         	add	r2, sp, #0x14
  2ffdfe: ab0b         	add	r3, sp, #0x2c
  2ffe00: 4610         	mov	r0, r2
  2ffe02: 4629         	mov	r1, r5
  2ffe04: 461a         	mov	r2, r3
  2ffe06: f0b6 f62b    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4b6c56
  2ffe0a: ab0b         	add	r3, sp, #0x2c
  2ffe0c: 4618         	mov	r0, r3
  2ffe0e: f08a f2f5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x48a5ea
  2ffe12: ab0b         	add	r3, sp, #0x2c
  2ffe14: 4618         	mov	r0, r3
  2ffe16: f08a f2ed    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x48a5da
  2ffe1a: aa06         	add	r2, sp, #0x18
  2ffe1c: ab0b         	add	r3, sp, #0x2c
  2ffe1e: 4610         	mov	r0, r2
  2ffe20: f8df 243c    	ldr.w	r2, [pc, #0x43c]        @ 0x300260 <CoOpStage::playerScored(cocos2d::CCObject*)+0x4c0>
  2ffe24: 447a         	add	r2, pc
  2ffe26: 4611         	mov	r1, r2
  2ffe28: 461a         	mov	r2, r3
  2ffe2a: f0b6 f619    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4b6c32
  2ffe2e: ab0b         	add	r3, sp, #0x2c
  2ffe30: 4618         	mov	r0, r3
  2ffe32: f08a f2e3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x48a5c6
  2ffe36: ab0b         	add	r3, sp, #0x2c
  2ffe38: 4618         	mov	r0, r3
  2ffe3a: f08a f2db    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x48a5b6
  2ffe3e: aa07         	add	r2, sp, #0x1c
  2ffe40: ab0b         	add	r3, sp, #0x2c
  2ffe42: 4610         	mov	r0, r2
  2ffe44: f8df 241c    	ldr.w	r2, [pc, #0x41c]        @ 0x300264 <CoOpStage::playerScored(cocos2d::CCObject*)+0x4c4>
  2ffe48: 447a         	add	r2, pc
  2ffe4a: 4611         	mov	r1, r2
  2ffe4c: 461a         	mov	r2, r3
  2ffe4e: f0b6 f607    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4b6c0e
  2ffe52: ab0b         	add	r3, sp, #0x2c
  2ffe54: 4618         	mov	r0, r3
  2ffe56: f08a f2d1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x48a5a2
  2ffe5a: 2300         	movs	r3, #0x0
  2ffe5c: 930c         	str	r3, [sp, #0x30]
  2ffe5e: 2300         	movs	r3, #0x0
  2ffe60: 930d         	str	r3, [sp, #0x34]
  2ffe62: 2300         	movs	r3, #0x0
  2ffe64: 930f         	str	r3, [sp, #0x3c]
  2ffe66: 20ff         	movs	r0, #0xff
  2ffe68: 2132         	movs	r1, #0x32
  2ffe6a: 2232         	movs	r2, #0x32
  2ffe6c: f7fe fbb4    	bl	0x2fe5d8 <Boostie::updateStep(float, float, cpVect)+0x578> @ imm = #-0x1898
  2ffe70: 4603         	mov	r3, r0
  2ffe72: 461a         	mov	r2, r3
  2ffe74: f88d 200c    	strb.w	r2, [sp, #0xc]
  2ffe78: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  2ffe7c: f88d 200d    	strb.w	r2, [sp, #0xd]
  2ffe80: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  2ffe84: f88d 300e    	strb.w	r3, [sp, #0xe]
  2ffe88: 4bf7         	ldr	r3, [pc, #0x3dc]        @ 0x300268 <CoOpStage::playerScored(cocos2d::CCObject*)+0x4c8>
  2ffe8a: 58e3         	ldr	r3, [r4, r3]
  2ffe8c: 681b         	ldr	r3, [r3]
  2ffe8e: 681b         	ldr	r3, [r3]
  2ffe90: f503 73e0    	add.w	r3, r3, #0x1c0
  2ffe94: 681b         	ldr	r3, [r3]
  2ffe96: 4af4         	ldr	r2, [pc, #0x3d0]        @ 0x300268 <CoOpStage::playerScored(cocos2d::CCObject*)+0x4c8>
  2ffe98: 58a2         	ldr	r2, [r4, r2]
  2ffe9a: 6812         	ldr	r2, [r2]
  2ffe9c: a908         	add	r1, sp, #0x20
  2ffe9e: 4608         	mov	r0, r1
  2ffea0: 4611         	mov	r1, r2
  2ffea2: 4798         	blx	r3
  2ffea4: aa04         	add	r2, sp, #0x10
  2ffea6: ab08         	add	r3, sp, #0x20
  2ffea8: 4610         	mov	r0, r2
  2ffeaa: 4619         	mov	r1, r3
  2ffeac: f0b5 f3e6    	bl	0x7b567c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18bcc> @ imm = #0x4b57cc
  2ffeb0: 4603         	mov	r3, r0
  2ffeb2: 2b00         	cmp	r3, #0x0
  2ffeb4: bf14         	ite	ne
  2ffeb6: 2300         	movne	r3, #0x0
  2ffeb8: 2301         	moveq	r3, #0x1
  2ffeba: b2dd         	uxtb	r5, r3
  2ffebc: ab08         	add	r3, sp, #0x20
  2ffebe: 4618         	mov	r0, r3
  2ffec0: f0b5 f528    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b5a50
  2ffec4: 2d00         	cmp	r5, #0x0
  2ffec6: d026         	beq	0x2fff16 <CoOpStage::playerScored(cocos2d::CCObject*)+0x176> @ imm = #0x4c
  2ffec8: ab06         	add	r3, sp, #0x18
  2ffeca: 4618         	mov	r0, r3
  2ffecc: 4be7         	ldr	r3, [pc, #0x39c]        @ 0x30026c <CoOpStage::playerScored(cocos2d::CCObject*)+0x4cc>
  2ffece: 447b         	add	r3, pc
  2ffed0: 4619         	mov	r1, r3
  2ffed2: f0b5 f7cd    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4b5f9a
  2ffed6: 2032         	movs	r0, #0x32
  2ffed8: 21c8         	movs	r1, #0xc8
  2ffeda: 2232         	movs	r2, #0x32
  2ffedc: f7fe fb7c    	bl	0x2fe5d8 <Boostie::updateStep(float, float, cpVect)+0x578> @ imm = #-0x1908
  2ffee0: 4603         	mov	r3, r0
  2ffee2: 461a         	mov	r2, r3
  2ffee4: f88d 200c    	strb.w	r2, [sp, #0xc]
  2ffee8: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  2ffeec: f88d 200d    	strb.w	r2, [sp, #0xd]
  2ffef0: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  2ffef4: f88d 300e    	strb.w	r3, [sp, #0xe]
  2ffef8: 4bdb         	ldr	r3, [pc, #0x36c]        @ 0x300268 <CoOpStage::playerScored(cocos2d::CCObject*)+0x4c8>
  2ffefa: 58e3         	ldr	r3, [r4, r3]
  2ffefc: 681b         	ldr	r3, [r3]
  2ffefe: 681b         	ldr	r3, [r3]
  2fff00: f503 73e2    	add.w	r3, r3, #0x1c4
  2fff04: 681b         	ldr	r3, [r3]
  2fff06: 4ad8         	ldr	r2, [pc, #0x360]        @ 0x300268 <CoOpStage::playerScored(cocos2d::CCObject*)+0x4c8>
  2fff08: 58a2         	ldr	r2, [r4, r2]
  2fff0a: 6812         	ldr	r2, [r2]
  2fff0c: 4610         	mov	r0, r2
  2fff0e: 4798         	blx	r3
  2fff10: 4603         	mov	r3, r0
  2fff12: 930c         	str	r3, [sp, #0x30]
  2fff14: e028         	b	0x2fff68 <CoOpStage::playerScored(cocos2d::CCObject*)+0x1c8> @ imm = #0x50
  2fff16: f077 fe13    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x77c26
  2fff1a: 4603         	mov	r3, r0
  2fff1c: 4618         	mov	r0, r3
  2fff1e: f078 fbab    	bl	0x378678 <NetworkManager::getPeerPlayers()> @ imm = #0x78756
  2fff22: 4602         	mov	r2, r0
  2fff24: ab04         	add	r3, sp, #0x10
  2fff26: 4610         	mov	r0, r2
  2fff28: 4619         	mov	r1, r3
  2fff2a: f293 ffe1    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x293fc2
  2fff2e: 4603         	mov	r3, r0
  2fff30: 930f         	str	r3, [sp, #0x3c]
  2fff32: 9b0f         	ldr	r3, [sp, #0x3c]
  2fff34: 2b00         	cmp	r3, #0x0
  2fff36: d017         	beq	0x2fff68 <CoOpStage::playerScored(cocos2d::CCObject*)+0x1c8> @ imm = #0x2e
  2fff38: 980f         	ldr	r0, [sp, #0x3c]
  2fff3a: 2101         	movs	r1, #0x1
  2fff3c: f29a f8f0    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x29a1e0
  2fff40: 4603         	mov	r3, r0
  2fff42: 4618         	mov	r0, r3
  2fff44: f299 fcf0    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2999e0
  2fff48: 4603         	mov	r3, r0
  2fff4a: aa06         	add	r2, sp, #0x18
  2fff4c: 4610         	mov	r0, r2
  2fff4e: 4619         	mov	r1, r3
  2fff50: f0b5 f78e    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4b5f1c
  2fff54: 980f         	ldr	r0, [sp, #0x3c]
  2fff56: 2104         	movs	r1, #0x4
  2fff58: f29a f8e2    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x29a1c4
  2fff5c: 4603         	mov	r3, r0
  2fff5e: 4618         	mov	r0, r3
  2fff60: f7ec ff78    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x13110
  2fff64: 4603         	mov	r3, r0
  2fff66: 930c         	str	r3, [sp, #0x30]
  2fff68: 4bbf         	ldr	r3, [pc, #0x2fc]        @ 0x300268 <CoOpStage::playerScored(cocos2d::CCObject*)+0x4c8>
  2fff6a: 58e3         	ldr	r3, [r4, r3]
  2fff6c: 681b         	ldr	r3, [r3]
  2fff6e: 681b         	ldr	r3, [r3]
  2fff70: f503 73e0    	add.w	r3, r3, #0x1c0
  2fff74: 681b         	ldr	r3, [r3]
  2fff76: 4abc         	ldr	r2, [pc, #0x2f0]        @ 0x300268 <CoOpStage::playerScored(cocos2d::CCObject*)+0x4c8>
  2fff78: 58a2         	ldr	r2, [r4, r2]
  2fff7a: 6812         	ldr	r2, [r2]
  2fff7c: a909         	add	r1, sp, #0x24
  2fff7e: 4608         	mov	r0, r1
  2fff80: 4611         	mov	r1, r2
  2fff82: 4798         	blx	r3
  2fff84: aa05         	add	r2, sp, #0x14
  2fff86: ab09         	add	r3, sp, #0x24
  2fff88: 4610         	mov	r0, r2
  2fff8a: 4619         	mov	r1, r3
  2fff8c: f0b5 f376    	bl	0x7b567c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18bcc> @ imm = #0x4b56ec
  2fff90: 4603         	mov	r3, r0
  2fff92: 2b00         	cmp	r3, #0x0
  2fff94: bf14         	ite	ne
  2fff96: 2300         	movne	r3, #0x0
  2fff98: 2301         	moveq	r3, #0x1
  2fff9a: b2dd         	uxtb	r5, r3
  2fff9c: ab09         	add	r3, sp, #0x24
  2fff9e: 4618         	mov	r0, r3
  2fffa0: f0b5 f4b8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b5970
  2fffa4: 2d00         	cmp	r5, #0x0
  2fffa6: d026         	beq	0x2ffff6 <CoOpStage::playerScored(cocos2d::CCObject*)+0x256> @ imm = #0x4c
  2fffa8: ab07         	add	r3, sp, #0x1c
  2fffaa: 4618         	mov	r0, r3
  2fffac: 4bb0         	ldr	r3, [pc, #0x2c0]        @ 0x300270 <CoOpStage::playerScored(cocos2d::CCObject*)+0x4d0>
  2fffae: 447b         	add	r3, pc
  2fffb0: 4619         	mov	r1, r3
  2fffb2: f0b5 f75d    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4b5eba
  2fffb6: 20ff         	movs	r0, #0xff
  2fffb8: 2132         	movs	r1, #0x32
  2fffba: 2232         	movs	r2, #0x32
  2fffbc: f7fe fb0c    	bl	0x2fe5d8 <Boostie::updateStep(float, float, cpVect)+0x578> @ imm = #-0x19e8
  2fffc0: 4603         	mov	r3, r0
  2fffc2: 461a         	mov	r2, r3
  2fffc4: f88d 200c    	strb.w	r2, [sp, #0xc]
  2fffc8: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  2fffcc: f88d 200d    	strb.w	r2, [sp, #0xd]
  2fffd0: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  2fffd4: f88d 300e    	strb.w	r3, [sp, #0xe]
  2fffd8: 4ba3         	ldr	r3, [pc, #0x28c]        @ 0x300268 <CoOpStage::playerScored(cocos2d::CCObject*)+0x4c8>
  2fffda: 58e3         	ldr	r3, [r4, r3]
  2fffdc: 681b         	ldr	r3, [r3]
  2fffde: 681b         	ldr	r3, [r3]
  2fffe0: f503 73e2    	add.w	r3, r3, #0x1c4
  2fffe4: 681b         	ldr	r3, [r3]
  2fffe6: 4aa0         	ldr	r2, [pc, #0x280]        @ 0x300268 <CoOpStage::playerScored(cocos2d::CCObject*)+0x4c8>
  2fffe8: 58a2         	ldr	r2, [r4, r2]
  2fffea: 6812         	ldr	r2, [r2]
  2fffec: 4610         	mov	r0, r2
  2fffee: 4798         	blx	r3
  2ffff0: 4603         	mov	r3, r0
  2ffff2: 930d         	str	r3, [sp, #0x34]
  2ffff4: e041         	b	0x30007a <CoOpStage::playerScored(cocos2d::CCObject*)+0x2da> @ imm = #0x82
  2ffff6: f077 fda3    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x77b46
  2ffffa: 4603         	mov	r3, r0
  2ffffc: 4618         	mov	r0, r3
  2ffffe: f078 fb3b    	bl	0x378678 <NetworkManager::getPeerPlayers()> @ imm = #0x78676
  300002: 4602         	mov	r2, r0
  300004: ab05         	add	r3, sp, #0x14
  300006: 4610         	mov	r0, r2
  300008: 4619         	mov	r1, r3
  30000a: f293 ff71    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x293ee2
  30000e: 4603         	mov	r3, r0
  300010: 930f         	str	r3, [sp, #0x3c]
  300012: 9b0f         	ldr	r3, [sp, #0x3c]
  300014: 2b00         	cmp	r3, #0x0
  300016: d02e         	beq	0x300076 <CoOpStage::playerScored(cocos2d::CCObject*)+0x2d6> @ imm = #0x5c
  300018: 4b96         	ldr	r3, [pc, #0x258]        @ 0x300274 <CoOpStage::playerScored(cocos2d::CCObject*)+0x4d4>
  30001a: 58e3         	ldr	r3, [r4, r3]
  30001c: 681b         	ldr	r3, [r3]
  30001e: 4a95         	ldr	r2, [pc, #0x254]        @ 0x300274 <CoOpStage::playerScored(cocos2d::CCObject*)+0x4d4>
  300020: 58a2         	ldr	r2, [r4, r2]
  300022: 6812         	ldr	r2, [r2]
  300024: 6a52         	ldr	r2, [r2, #0x24]
  300026: 3a01         	subs	r2, #0x1
  300028: ea22 72e2    	bic.w	r2, r2, r2, asr #31
  30002c: 625a         	str	r2, [r3, #0x24]
  30002e: 9b01         	ldr	r3, [sp, #0x4]
  300030: f8d3 210c    	ldr.w	r2, [r3, #0x10c]
  300034: 4b8f         	ldr	r3, [pc, #0x23c]        @ 0x300274 <CoOpStage::playerScored(cocos2d::CCObject*)+0x4d4>
  300036: 58e3         	ldr	r3, [r4, r3]
  300038: 681b         	ldr	r3, [r3]
  30003a: 6a5b         	ldr	r3, [r3, #0x24]
  30003c: 4610         	mov	r0, r2
  30003e: 4619         	mov	r1, r3
  300040: f03c f9ea    	bl	0x33c418 <HUD::updateLifeCount(int)> @ imm = #0x3c3d4
  300044: 980f         	ldr	r0, [sp, #0x3c]
  300046: 2101         	movs	r1, #0x1
  300048: f29a f86a    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x29a0d4
  30004c: 4603         	mov	r3, r0
  30004e: 4618         	mov	r0, r3
  300050: f299 fc6a    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2998d4
  300054: 4603         	mov	r3, r0
  300056: aa07         	add	r2, sp, #0x1c
  300058: 4610         	mov	r0, r2
  30005a: 4619         	mov	r1, r3
  30005c: f0b5 f708    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4b5e10
  300060: 980f         	ldr	r0, [sp, #0x3c]
  300062: 2104         	movs	r1, #0x4
  300064: f29a f85c    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x29a0b8
  300068: 4603         	mov	r3, r0
  30006a: 4618         	mov	r0, r3
  30006c: f7ec fef2    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x1321c
  300070: 4603         	mov	r3, r0
  300072: 930d         	str	r3, [sp, #0x34]
  300074: e001         	b	0x30007a <CoOpStage::playerScored(cocos2d::CCObject*)+0x2da> @ imm = #0x2
  300076: 2400         	movs	r4, #0x0
  300078: e081         	b	0x30017e <CoOpStage::playerScored(cocos2d::CCObject*)+0x3de> @ imm = #0x102
  30007a: aa04         	add	r2, sp, #0x10
  30007c: ab05         	add	r3, sp, #0x14
  30007e: 4610         	mov	r0, r2
  300080: 4619         	mov	r1, r3
  300082: f0b5 f2fb    	bl	0x7b567c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18bcc> @ imm = #0x4b55f6
  300086: 4603         	mov	r3, r0
  300088: 2b00         	cmp	r3, #0x0
  30008a: bf14         	ite	ne
  30008c: 2300         	movne	r3, #0x0
  30008e: 2301         	moveq	r3, #0x1
  300090: b2db         	uxtb	r3, r3
  300092: 2b00         	cmp	r3, #0x0
  300094: d02d         	beq	0x3000f2 <CoOpStage::playerScored(cocos2d::CCObject*)+0x352> @ imm = #0x5a
  300096: 9b01         	ldr	r3, [sp, #0x4]
  300098: f8d3 410c    	ldr.w	r4, [r3, #0x10c]
  30009c: ab06         	add	r3, sp, #0x18
  30009e: 4618         	mov	r0, r3
  3000a0: f0b5 f12e    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4b525c
  3000a4: 4603         	mov	r3, r0
  3000a6: 4a74         	ldr	r2, [pc, #0x1d0]        @ 0x300278 <CoOpStage::playerScored(cocos2d::CCObject*)+0x4d8>
  3000a8: 447a         	add	r2, pc
  3000aa: 4610         	mov	r0, r2
  3000ac: 4619         	mov	r1, r3
  3000ae: f299 fd2f    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x299a5e
  3000b2: 4603         	mov	r3, r0
  3000b4: 4618         	mov	r0, r3
  3000b6: f299 fc37    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x29986e
  3000ba: 4605         	mov	r5, r0
  3000bc: ab0b         	add	r3, sp, #0x2c
  3000be: 4618         	mov	r0, r3
  3000c0: f08a f198    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x48a330
  3000c4: aa0a         	add	r2, sp, #0x28
  3000c6: ab0b         	add	r3, sp, #0x2c
  3000c8: 4610         	mov	r0, r2
  3000ca: 4629         	mov	r1, r5
  3000cc: 461a         	mov	r2, r3
  3000ce: f0b6 f4c7    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4b698e
  3000d2: ab0a         	add	r3, sp, #0x28
  3000d4: 4620         	mov	r0, r4
  3000d6: 4619         	mov	r1, r3
  3000d8: 9a03         	ldr	r2, [sp, #0xc]
  3000da: 2305         	movs	r3, #0x5
  3000dc: f03d f8f0    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #0x3d1e0
  3000e0: ab0a         	add	r3, sp, #0x28
  3000e2: 4618         	mov	r0, r3
  3000e4: f0b5 f416    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b582c
  3000e8: ab0b         	add	r3, sp, #0x2c
  3000ea: 4618         	mov	r0, r3
  3000ec: f08a f186    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x48a30c
  3000f0: e044         	b	0x30017c <CoOpStage::playerScored(cocos2d::CCObject*)+0x3dc> @ imm = #0x88
  3000f2: 9b0c         	ldr	r3, [sp, #0x30]
  3000f4: 2b00         	cmp	r3, #0x0
  3000f6: d041         	beq	0x30017c <CoOpStage::playerScored(cocos2d::CCObject*)+0x3dc> @ imm = #0x82
  3000f8: 9a0c         	ldr	r2, [sp, #0x30]
  3000fa: 9b0d         	ldr	r3, [sp, #0x34]
  3000fc: 429a         	cmp	r2, r3
  3000fe: d13d         	bne	0x30017c <CoOpStage::playerScored(cocos2d::CCObject*)+0x3dc> @ imm = #0x7a
  300100: 20ff         	movs	r0, #0xff
  300102: 2132         	movs	r1, #0x32
  300104: 2232         	movs	r2, #0x32
  300106: f7fe fa67    	bl	0x2fe5d8 <Boostie::updateStep(float, float, cpVect)+0x578> @ imm = #-0x1b32
  30010a: 4603         	mov	r3, r0
  30010c: 461a         	mov	r2, r3
  30010e: f88d 200c    	strb.w	r2, [sp, #0xc]
  300112: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  300116: f88d 200d    	strb.w	r2, [sp, #0xd]
  30011a: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  30011e: f88d 300e    	strb.w	r3, [sp, #0xe]
  300122: 9b01         	ldr	r3, [sp, #0x4]
  300124: f8d3 410c    	ldr.w	r4, [r3, #0x10c]
  300128: ab07         	add	r3, sp, #0x1c
  30012a: 4618         	mov	r0, r3
  30012c: f0b5 f0e8    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4b51d0
  300130: 4603         	mov	r3, r0
  300132: 4a52         	ldr	r2, [pc, #0x148]        @ 0x30027c <CoOpStage::playerScored(cocos2d::CCObject*)+0x4dc>
  300134: 447a         	add	r2, pc
  300136: 4610         	mov	r0, r2
  300138: 4619         	mov	r1, r3
  30013a: f299 fce9    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x2999d2
  30013e: 4603         	mov	r3, r0
  300140: 4618         	mov	r0, r3
  300142: f299 fbf1    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2997e2
  300146: 4605         	mov	r5, r0
  300148: ab0a         	add	r3, sp, #0x28
  30014a: 4618         	mov	r0, r3
  30014c: f08a f152    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x48a2a4
  300150: aa0b         	add	r2, sp, #0x2c
  300152: ab0a         	add	r3, sp, #0x28
  300154: 4610         	mov	r0, r2
  300156: 4629         	mov	r1, r5
  300158: 461a         	mov	r2, r3
  30015a: f0b6 f481    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4b6902
  30015e: ab0b         	add	r3, sp, #0x2c
  300160: 4620         	mov	r0, r4
  300162: 4619         	mov	r1, r3
  300164: 9a03         	ldr	r2, [sp, #0xc]
  300166: 2305         	movs	r3, #0x5
  300168: f03d f8aa    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #0x3d154
  30016c: ab0b         	add	r3, sp, #0x2c
  30016e: 4618         	mov	r0, r3
  300170: f0b5 f3d0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b57a0
  300174: ab0a         	add	r3, sp, #0x28
  300176: 4618         	mov	r0, r3
  300178: f08a f140    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x48a280
  30017c: 2401         	movs	r4, #0x1
  30017e: ab07         	add	r3, sp, #0x1c
  300180: 4618         	mov	r0, r3
  300182: f0b5 f3c7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b578e
  300186: 2c01         	cmp	r4, #0x1
  300188: d001         	beq	0x30018e <CoOpStage::playerScored(cocos2d::CCObject*)+0x3ee> @ imm = #0x2
  30018a: 2400         	movs	r4, #0x0
  30018c: e001         	b	0x300192 <CoOpStage::playerScored(cocos2d::CCObject*)+0x3f2> @ imm = #0x2
  30018e: bf00         	nop
  300190: 2401         	movs	r4, #0x1
  300192: ab06         	add	r3, sp, #0x18
  300194: 4618         	mov	r0, r3
  300196: f0b5 f3bd    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b577a
  30019a: 2c01         	cmp	r4, #0x1
  30019c: d001         	beq	0x3001a2 <CoOpStage::playerScored(cocos2d::CCObject*)+0x402> @ imm = #0x2
  30019e: 2400         	movs	r4, #0x0
  3001a0: e001         	b	0x3001a6 <CoOpStage::playerScored(cocos2d::CCObject*)+0x406> @ imm = #0x2
  3001a2: bf00         	nop
  3001a4: 2401         	movs	r4, #0x1
  3001a6: ab05         	add	r3, sp, #0x14
  3001a8: 4618         	mov	r0, r3
  3001aa: f0b5 f3b3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b5766
  3001ae: 2c01         	cmp	r4, #0x1
  3001b0: d001         	beq	0x3001b6 <CoOpStage::playerScored(cocos2d::CCObject*)+0x416> @ imm = #0x2
  3001b2: 2400         	movs	r4, #0x0
  3001b4: e001         	b	0x3001ba <CoOpStage::playerScored(cocos2d::CCObject*)+0x41a> @ imm = #0x2
  3001b6: bf00         	nop
  3001b8: 2401         	movs	r4, #0x1
  3001ba: ab04         	add	r3, sp, #0x10
  3001bc: 4618         	mov	r0, r3
  3001be: f0b5 f3a9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b5752
  3001c2: 2c01         	cmp	r4, #0x1
  3001c4: d000         	beq	0x3001c8 <CoOpStage::playerScored(cocos2d::CCObject*)+0x428> @ imm = #0x0
  3001c6: e047         	b	0x300258 <CoOpStage::playerScored(cocos2d::CCObject*)+0x4b8> @ imm = #0x8e
  3001c8: bf00         	nop
  3001ca: e045         	b	0x300258 <CoOpStage::playerScored(cocos2d::CCObject*)+0x4b8> @ imm = #0x8a
  3001cc: ab0b         	add	r3, sp, #0x2c
  3001ce: 4618         	mov	r0, r3
  3001d0: f08a f114    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x48a228
  3001d4: f087 f76a    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x487ed4
  3001d8: ab0b         	add	r3, sp, #0x2c
  3001da: 4618         	mov	r0, r3
  3001dc: f08a f10e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x48a21c
  3001e0: e034         	b	0x30024c <CoOpStage::playerScored(cocos2d::CCObject*)+0x4ac> @ imm = #0x68
  3001e2: ab0b         	add	r3, sp, #0x2c
  3001e4: 4618         	mov	r0, r3
  3001e6: f08a f109    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x48a212
  3001ea: e02a         	b	0x300242 <CoOpStage::playerScored(cocos2d::CCObject*)+0x4a2> @ imm = #0x54
  3001ec: ab0b         	add	r3, sp, #0x2c
  3001ee: 4618         	mov	r0, r3
  3001f0: f08a f104    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x48a208
  3001f4: e021         	b	0x30023a <CoOpStage::playerScored(cocos2d::CCObject*)+0x49a> @ imm = #0x42
  3001f6: ab08         	add	r3, sp, #0x20
  3001f8: 4618         	mov	r0, r3
  3001fa: f0b5 f38b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b5716
  3001fe: e018         	b	0x300232 <CoOpStage::playerScored(cocos2d::CCObject*)+0x492> @ imm = #0x30
  300200: ab09         	add	r3, sp, #0x24
  300202: 4618         	mov	r0, r3
  300204: f0b5 f386    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b570c
  300208: e013         	b	0x300232 <CoOpStage::playerScored(cocos2d::CCObject*)+0x492> @ imm = #0x26
  30020a: ab0a         	add	r3, sp, #0x28
  30020c: 4618         	mov	r0, r3
  30020e: f0b5 f381    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b5702
  300212: e7ff         	b	0x300214 <CoOpStage::playerScored(cocos2d::CCObject*)+0x474> @ imm = #-0x2
  300214: ab0b         	add	r3, sp, #0x2c
  300216: 4618         	mov	r0, r3
  300218: f08a f0f0    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x48a1e0
  30021c: e009         	b	0x300232 <CoOpStage::playerScored(cocos2d::CCObject*)+0x492> @ imm = #0x12
  30021e: ab0b         	add	r3, sp, #0x2c
  300220: 4618         	mov	r0, r3
  300222: f0b5 f377    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b56ee
  300226: e7ff         	b	0x300228 <CoOpStage::playerScored(cocos2d::CCObject*)+0x488> @ imm = #-0x2
  300228: ab0a         	add	r3, sp, #0x28
  30022a: 4618         	mov	r0, r3
  30022c: f08a f0e6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x48a1cc
  300230: e7ff         	b	0x300232 <CoOpStage::playerScored(cocos2d::CCObject*)+0x492> @ imm = #-0x2
  300232: ab07         	add	r3, sp, #0x1c
  300234: 4618         	mov	r0, r3
  300236: f0b5 f36d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b56da
  30023a: ab06         	add	r3, sp, #0x18
  30023c: 4618         	mov	r0, r3
  30023e: f0b5 f369    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b56d2
  300242: ab05         	add	r3, sp, #0x14
  300244: 4618         	mov	r0, r3
  300246: f0b5 f365    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b56ca
  30024a: e7ff         	b	0x30024c <CoOpStage::playerScored(cocos2d::CCObject*)+0x4ac> @ imm = #-0x2
  30024c: ab04         	add	r3, sp, #0x10
  30024e: 4618         	mov	r0, r3
  300250: f0b5 f360    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b56c0
  300254: f087 f72a    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x487e54
  300258: b011         	add	sp, #0x44
  30025a: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x30025b); words below are literal-pool data ---
  30025c: 2c5c         	cmp	r4, #0x5c
  30025e: 0063         	lsls	r3, r4, #0x1
  300260: 50b4         	str	r4, [r6, r2]
  300262: 004c         	lsls	r4, r1, #0x1
  300264: 5090         	str	r0, [r2, r2]
  300266: 004c         	lsls	r4, r1, #0x1
  300268: d784         	bvc	0x300174 <CoOpStage::playerScored(cocos2d::CCObject*)+0x3d4> @ imm = #-0xf8
  30026a: ffff 500e    	<unknown>
  30026e: 004c         	lsls	r4, r1, #0x1
  300270: 4f2e         	ldr	r7, [pc, #0xb8]         @ 0x30032c <CoOpStage::spawnEnemy()+0x9c>
  300272: 004c         	lsls	r4, r1, #0x1
  300274: d910         	bls	0x300298 <CoOpStage::spawnEnemy()+0x8> @ imm = #0x20
  300276: ffff 4e38    	vcvt.f32.u32	d20, d24, #0x1
  30027a: 004c         	lsls	r4, r1, #0x1
  30027c: 4dc4         	ldr	r5, [pc, #0x310]        @ 0x300590 <CoOpStage::getClosestPlayerLocation(cpVect)+0x84>
  30027e: 004c         	lsls	r4, r1, #0x1

// ==== CoOpStage::onPlayerDisconnected
//      file offset 0x300280 (= ELF address; Ghidra 0x310280), 10 bytes, Thumb-2
  300280: b082         	sub	sp, #0x8
  300282: 9001         	str	r0, [sp, #0x4]
  300284: 9100         	str	r1, [sp]
  300286: b002         	add	sp, #0x8
  300288: 4770         	bx	lr

// ==== CoOpStage::spawnEnemy
//      file offset 0x300290 (= ELF address; Ghidra 0x310290), 424 bytes, Thumb-2
  300290: b510         	push	{r4, lr}
  300292: b08c         	sub	sp, #0x30
  300294: 9003         	str	r0, [sp, #0xc]
  300296: f7fe f999    	bl	0x2fe5cc <Boostie::updateStep(float, float, cpVect)+0x56c> @ imm = #-0x1cce
  30029a: 4603         	mov	r3, r0
  30029c: ee06 3a90    	vmov	s13, r3
  3002a0: eeb8 7ae6    	vcvt.f32.s32	s14, s13
  3002a4: eddf 7a62    	vldr	s15, [pc, #392]         @ 0x300430 <CoOpStage::spawnEnemy()+0x1a0>
  3002a8: ee87 7a27    	vdiv.f32	s14, s14, s15
  3002ac: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3002b0: ee77 7a67    	vsub.f32	s15, s14, s15
  3002b4: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3002b8: ed9f 7b57    	vldr	d7, [pc, #348]          @ 0x300418 <CoOpStage::spawnEnemy()+0x188>
  3002bc: ee26 7b07    	vmul.f64	d7, d6, d7
  3002c0: eeb0 7bc7    	vabs.f64	d7, d7
  3002c4: eefd 6bc7    	vcvt.s32.f64	s13, d7
  3002c8: ee16 3a90    	vmov	r3, s13
  3002cc: 9304         	str	r3, [sp, #0x10]
  3002ce: f7fe f97d    	bl	0x2fe5cc <Boostie::updateStep(float, float, cpVect)+0x56c> @ imm = #-0x1d06
  3002d2: 4603         	mov	r3, r0
  3002d4: ee07 3a90    	vmov	s15, r3
  3002d8: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3002dc: eddf 7a54    	vldr	s15, [pc, #336]         @ 0x300430 <CoOpStage::spawnEnemy()+0x1a0>
  3002e0: ee87 7a27    	vdiv.f32	s14, s14, s15
  3002e4: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3002e8: ee37 7a67    	vsub.f32	s14, s14, s15
  3002ec: eddf 7a51    	vldr	s15, [pc, #324]         @ 0x300434 <CoOpStage::spawnEnemy()+0x1a4>
  3002f0: ee67 7a27    	vmul.f32	s15, s14, s15
  3002f4: eef0 7ae7    	vabs.f32	s15, s15
  3002f8: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3002fc: ed9f 7b48    	vldr	d7, [pc, #288]          @ 0x300420 <CoOpStage::spawnEnemy()+0x190>
  300300: ee36 7b07    	vadd.f64	d7, d6, d7
  300304: ab08         	add	r3, sp, #0x20
  300306: 4618         	mov	r0, r3
  300308: eeb0 0b47    	vmov.f64	d0, d7
  30030c: ed9f 1b46    	vldr	d1, [pc, #280]          @ 0x300428 <CoOpStage::spawnEnemy()+0x198>
  300310: f7fe f998    	bl	0x2fe644 <cocos2d::CCDictElement::getObject() const+0x10> @ imm = #-0x1cd0
  300314: 9b04         	ldr	r3, [sp, #0x10]
  300316: 2b00         	cmp	r3, #0x0
  300318: d10b         	bne	0x300332 <CoOpStage::spawnEnemy()+0xa2> @ imm = #0x16
  30031a: 9b03         	ldr	r3, [sp, #0xc]
  30031c: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  300320: 6a1b         	ldr	r3, [r3, #0x20]
  300322: 4618         	mov	r0, r3
  300324: f293 fca2    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x293944
  300328: 4603         	mov	r3, r0
  30032a: 2b00         	cmp	r3, #0x0
  30032c: d001         	beq	0x300332 <CoOpStage::spawnEnemy()+0xa2> @ imm = #0x2
  30032e: 2301         	movs	r3, #0x1
  300330: e000         	b	0x300334 <CoOpStage::spawnEnemy()+0xa4> @ imm = #0x0
  300332: 2300         	movs	r3, #0x0
  300334: 2b00         	cmp	r3, #0x0
  300336: d017         	beq	0x300368 <CoOpStage::spawnEnemy()+0xd8> @ imm = #0x2e
  300338: 9b03         	ldr	r3, [sp, #0xc]
  30033a: f8d3 416c    	ldr.w	r4, [r3, #0x16c]
  30033e: 466b         	mov	r3, sp
  300340: aa0a         	add	r2, sp, #0x28
  300342: e892 0003    	ldm.w	r2, {r0, r1}
  300346: e883 0003    	stm.w	r3, {r0, r1}
  30034a: ab08         	add	r3, sp, #0x20
  30034c: cb0c         	ldm	r3, {r2, r3}
  30034e: 4620         	mov	r0, r4
  300350: f01a f9fa    	bl	0x31a748 <EnemyManager::addHawkDrone(cpVect)> @ imm = #0x1a3f4
  300354: 4603         	mov	r3, r0
  300356: 9305         	str	r3, [sp, #0x14]
  300358: 9b05         	ldr	r3, [sp, #0x14]
  30035a: 2b00         	cmp	r3, #0x0
  30035c: d003         	beq	0x300366 <CoOpStage::spawnEnemy()+0xd6> @ imm = #0x6
  30035e: 9b05         	ldr	r3, [sp, #0x14]
  300360: 2202         	movs	r2, #0x2
  300362: f8c3 215c    	str.w	r2, [r3, #0x15c]
  300366: e053         	b	0x300410 <CoOpStage::spawnEnemy()+0x180> @ imm = #0xa6
  300368: 9b04         	ldr	r3, [sp, #0x10]
  30036a: 2b01         	cmp	r3, #0x1
  30036c: d10b         	bne	0x300386 <CoOpStage::spawnEnemy()+0xf6> @ imm = #0x16
  30036e: 9b03         	ldr	r3, [sp, #0xc]
  300370: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  300374: 6a5b         	ldr	r3, [r3, #0x24]
  300376: 4618         	mov	r0, r3
  300378: f293 fc78    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x2938f0
  30037c: 4603         	mov	r3, r0
  30037e: 2b00         	cmp	r3, #0x0
  300380: d001         	beq	0x300386 <CoOpStage::spawnEnemy()+0xf6> @ imm = #0x2
  300382: 2301         	movs	r3, #0x1
  300384: e000         	b	0x300388 <CoOpStage::spawnEnemy()+0xf8> @ imm = #0x0
  300386: 2300         	movs	r3, #0x0
  300388: 2b00         	cmp	r3, #0x0
  30038a: d017         	beq	0x3003bc <CoOpStage::spawnEnemy()+0x12c> @ imm = #0x2e
  30038c: 9b03         	ldr	r3, [sp, #0xc]
  30038e: f8d3 416c    	ldr.w	r4, [r3, #0x16c]
  300392: 466b         	mov	r3, sp
  300394: aa0a         	add	r2, sp, #0x28
  300396: e892 0003    	ldm.w	r2, {r0, r1}
  30039a: e883 0003    	stm.w	r3, {r0, r1}
  30039e: ab08         	add	r3, sp, #0x20
  3003a0: cb0c         	ldm	r3, {r2, r3}
  3003a2: 4620         	mov	r0, r4
  3003a4: f01a fa62    	bl	0x31a86c <EnemyManager::addHumanoidDrone(cpVect)> @ imm = #0x1a4c4
  3003a8: 4603         	mov	r3, r0
  3003aa: 9306         	str	r3, [sp, #0x18]
  3003ac: 9b06         	ldr	r3, [sp, #0x18]
  3003ae: 2b00         	cmp	r3, #0x0
  3003b0: d003         	beq	0x3003ba <CoOpStage::spawnEnemy()+0x12a> @ imm = #0x6
  3003b2: 9b06         	ldr	r3, [sp, #0x18]
  3003b4: 2202         	movs	r2, #0x2
  3003b6: f8c3 215c    	str.w	r2, [r3, #0x15c]
  3003ba: e029         	b	0x300410 <CoOpStage::spawnEnemy()+0x180> @ imm = #0x52
  3003bc: 9b04         	ldr	r3, [sp, #0x10]
  3003be: 2b02         	cmp	r3, #0x2
  3003c0: d10b         	bne	0x3003da <CoOpStage::spawnEnemy()+0x14a> @ imm = #0x16
  3003c2: 9b03         	ldr	r3, [sp, #0xc]
  3003c4: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  3003c8: 6a9b         	ldr	r3, [r3, #0x28]
  3003ca: 4618         	mov	r0, r3
  3003cc: f293 fc4e    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x29389c
  3003d0: 4603         	mov	r3, r0
  3003d2: 2b00         	cmp	r3, #0x0
  3003d4: d001         	beq	0x3003da <CoOpStage::spawnEnemy()+0x14a> @ imm = #0x2
  3003d6: 2301         	movs	r3, #0x1
  3003d8: e000         	b	0x3003dc <CoOpStage::spawnEnemy()+0x14c> @ imm = #0x0
  3003da: 2300         	movs	r3, #0x0
  3003dc: 2b00         	cmp	r3, #0x0
  3003de: d017         	beq	0x300410 <CoOpStage::spawnEnemy()+0x180> @ imm = #0x2e
  3003e0: 9b03         	ldr	r3, [sp, #0xc]
  3003e2: f8d3 416c    	ldr.w	r4, [r3, #0x16c]
  3003e6: 466b         	mov	r3, sp
  3003e8: aa0a         	add	r2, sp, #0x28
  3003ea: e892 0003    	ldm.w	r2, {r0, r1}
  3003ee: e883 0003    	stm.w	r3, {r0, r1}
  3003f2: ab08         	add	r3, sp, #0x20
  3003f4: cb0c         	ldm	r3, {r2, r3}
  3003f6: 4620         	mov	r0, r4
  3003f8: f01a f914    	bl	0x31a624 <EnemyManager::addWormDrone(cpVect)> @ imm = #0x1a228
  3003fc: 4603         	mov	r3, r0
  3003fe: 9307         	str	r3, [sp, #0x1c]
  300400: 9b07         	ldr	r3, [sp, #0x1c]
  300402: 2b00         	cmp	r3, #0x0
  300404: d003         	beq	0x30040e <CoOpStage::spawnEnemy()+0x17e> @ imm = #0x6
  300406: 9b07         	ldr	r3, [sp, #0x1c]
  300408: 2202         	movs	r2, #0x2
  30040a: f8c3 215c    	str.w	r2, [r3, #0x15c]
  30040e: e7ff         	b	0x300410 <CoOpStage::spawnEnemy()+0x180> @ imm = #-0x2
  300410: b00c         	add	sp, #0x30
  300412: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x300413); words below are literal-pool data ---
  300414: f3af 8000    	nop.w
  300418: 51ec         	str	r4, [r5, r7]
  30041a: 1eb8         	subs	r0, r7, #0x2
  30041c: eb85 4007    	<unknown>
  300420: 0000         	movs	r0, r0
  300422: 0000         	movs	r0, r0
  300424: 4000         	ands	r0, r0
  300426: 406f         	eors	r7, r5
  300428: 0000         	movs	r0, r0
  30042a: 0000         	movs	r0, r0
  30042c: 2000         	movs	r0, #0x0
  30042e: 409c         	lsls	r4, r3
  300430: 0000         	movs	r0, r0
  300432: 4e80         	ldr	r6, [pc, #0x200]        @ 0x300634 <CoOpStage::getClosestPlayerLocation(cpVect)+0x128>
  300434: 4000         	ands	r0, r0
  300436: 451c         	cmp	r4, r3

// ==== CoOpStage::onEnemyAdded
//      file offset 0x300438 (= ELF address; Ghidra 0x310438), 134 bytes, Thumb-2
  300438: b510         	push	{r4, lr}
  30043a: b084         	sub	sp, #0x10
  30043c: 9001         	str	r0, [sp, #0x4]
  30043e: 9100         	str	r1, [sp]
  300440: 9800         	ldr	r0, [sp]
  300442: f299 fa71    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2994e2
  300446: 4604         	mov	r4, r0
  300448: ab03         	add	r3, sp, #0xc
  30044a: 4618         	mov	r0, r3
  30044c: f089 f7d2    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x489fa4
  300450: aa02         	add	r2, sp, #0x8
  300452: ab03         	add	r3, sp, #0xc
  300454: 4610         	mov	r0, r2
  300456: 4621         	mov	r1, r4
  300458: 461a         	mov	r2, r3
  30045a: f0b6 f301    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4b6602
  30045e: ab03         	add	r3, sp, #0xc
  300460: 4618         	mov	r0, r3
  300462: f089 f7cb    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x489f96
  300466: 9b01         	ldr	r3, [sp, #0x4]
  300468: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  30046c: f8d3 4100    	ldr.w	r4, [r3, #0x100]
  300470: aa03         	add	r2, sp, #0xc
  300472: ab02         	add	r3, sp, #0x8
  300474: 4610         	mov	r0, r2
  300476: 4619         	mov	r1, r3
  300478: f0b6 f036    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x4b606c
  30047c: ab03         	add	r3, sp, #0xc
  30047e: 4620         	mov	r0, r4
  300480: 4619         	mov	r1, r3
  300482: f0bd fa95    	bl	0x3bd9b0 <Radar::addAlert(std::string)> @ imm = #0xbd52a
  300486: ab03         	add	r3, sp, #0xc
  300488: 4618         	mov	r0, r3
  30048a: f0b5 f243    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b5486
  30048e: ab02         	add	r3, sp, #0x8
  300490: 4618         	mov	r0, r3
  300492: f0b5 f23f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b547e
  300496: e010         	b	0x3004ba <CoOpStage::onEnemyAdded(cocos2d::CCObject*)+0x82> @ imm = #0x20
  300498: ab03         	add	r3, sp, #0xc
  30049a: 4618         	mov	r0, r3
  30049c: f089 f7ae    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x489f5c
  3004a0: f087 f604    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x487c08
  3004a4: ab03         	add	r3, sp, #0xc
  3004a6: 4618         	mov	r0, r3
  3004a8: f0b5 f234    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b5468
  3004ac: e7ff         	b	0x3004ae <CoOpStage::onEnemyAdded(cocos2d::CCObject*)+0x76> @ imm = #-0x2
  3004ae: ab02         	add	r3, sp, #0x8
  3004b0: 4618         	mov	r0, r3
  3004b2: f0b5 f22f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b545e
  3004b6: f087 f5f9    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x487bf2
  3004ba: b004         	add	sp, #0x10
  3004bc: bd10         	pop	{r4, pc}

// ==== CoOpStage::onRetryGame
//      file offset 0x3004c0 (= ELF address; Ghidra 0x3104c0), 10 bytes, Thumb-2
  3004c0: b082         	sub	sp, #0x8
  3004c2: 9001         	str	r0, [sp, #0x4]
  3004c4: 9100         	str	r1, [sp]
  3004c6: b002         	add	sp, #0x8
  3004c8: 4770         	bx	lr

// ==== CoOpStage::onPlayerDead
//      file offset 0x3004cc (= ELF address; Ghidra 0x3104cc), 64 bytes, Thumb-2
  3004cc: b510         	push	{r4, lr}
  3004ce: b082         	sub	sp, #0x8
  3004d0: 9001         	str	r0, [sp, #0x4]
  3004d2: 9100         	str	r1, [sp]
  3004d4: 4c0b         	ldr	r4, [pc, #0x2c]         @ 0x300504 <CoOpStage::onPlayerDead(cocos2d::CCObject*)+0x38>
  3004d6: 447c         	add	r4, pc
  3004d8: 9b01         	ldr	r3, [sp, #0x4]
  3004da: 4618         	mov	r0, r3
  3004dc: 9900         	ldr	r1, [sp]
  3004de: f0fb fa8b    	bl	0x3fb9f8 <Stage::onPlayerDead(cocos2d::CCObject*)> @ imm = #0xfb516
  3004e2: 4b09         	ldr	r3, [pc, #0x24]         @ 0x300508 <CoOpStage::onPlayerDead(cocos2d::CCObject*)+0x3c>
  3004e4: 58e3         	ldr	r3, [r4, r3]
  3004e6: 681b         	ldr	r3, [r3]
  3004e8: 6a5b         	ldr	r3, [r3, #0x24]
  3004ea: 2b00         	cmp	r3, #0x0
  3004ec: dd07         	ble	0x3004fe <CoOpStage::onPlayerDead(cocos2d::CCObject*)+0x32> @ imm = #0xe
  3004ee: 9b01         	ldr	r3, [sp, #0x4]
  3004f0: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3004f4: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3004f8: 4618         	mov	r0, r3
  3004fa: f06e fccb    	bl	0x36ee94 <MenuScreen::endCoopRound()> @ imm = #0x6e996
  3004fe: b002         	add	sp, #0x8
  300500: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x300501); words below are literal-pool data ---
  300502: bf00         	nop
  300504: 2532         	movs	r5, #0x32
  300506: 0063         	lsls	r3, r4, #0x1
  300508: d910         	bls	0x30052c <CoOpStage::getClosestPlayerLocation(cpVect)+0x20> @ imm = #0x20
  30050a: ffff b082    	<unknown>

// ==== CoOpStage::getClosestPlayerLocation
//      file offset 0x30050c (= ELF address; Ghidra 0x31050c), 376 bytes, Thumb-2
  30050c: b082         	sub	sp, #0x8
  30050e: b510         	push	{r4, lr}
  300510: b098         	sub	sp, #0x60
  300512: 9001         	str	r0, [sp, #0x4]
  300514: 9100         	str	r1, [sp]
  300516: a91a         	add	r1, sp, #0x68
  300518: e881 000c    	stm.w	r1, {r2, r3}
  30051c: 4c56         	ldr	r4, [pc, #0x158]        @ 0x300678 <CoOpStage::getClosestPlayerLocation(cpVect)+0x16c>
  30051e: 447c         	add	r4, pc
  300520: 4b56         	ldr	r3, [pc, #0x158]        @ 0x30067c <CoOpStage::getClosestPlayerLocation(cpVect)+0x170>
  300522: 58e3         	ldr	r3, [r4, r3]
  300524: 681b         	ldr	r3, [r3]
  300526: 9303         	str	r3, [sp, #0xc]
  300528: 9b03         	ldr	r3, [sp, #0xc]
  30052a: 681b         	ldr	r3, [r3]
  30052c: f503 73d6    	add.w	r3, r3, #0x1ac
  300530: 681b         	ldr	r3, [r3]
  300532: aa08         	add	r2, sp, #0x20
  300534: 4610         	mov	r0, r2
  300536: 9903         	ldr	r1, [sp, #0xc]
  300538: 4798         	blx	r3
  30053a: ab0c         	add	r3, sp, #0x30
  30053c: ed9d 4b1a    	vldr	d4, [sp, #104]
  300540: ed9d 5b1c    	vldr	d5, [sp, #112]
  300544: ed9d 6b08    	vldr	d6, [sp, #32]
  300548: ed9d 7b0a    	vldr	d7, [sp, #40]
  30054c: 4618         	mov	r0, r3
  30054e: eeb0 0b44    	vmov.f64	d0, d4
  300552: eeb0 1b45    	vmov.f64	d1, d5
  300556: eeb0 2b46    	vmov.f64	d2, d6
  30055a: eeb0 3b47    	vmov.f64	d3, d7
  30055e: f7fe f885    	bl	0x2fe66c <cocos2d::CCDictElement::getObject() const+0x38> @ imm = #-0x1ef6
  300562: ab0c         	add	r3, sp, #0x30
  300564: cb0f         	ldm	r3, {r0, r1, r2, r3}
  300566: f3d6 fda7    	bl	0x6d70b8 <cpvlength>    @ imm = #0x3d6b4e
  30056a: ec41 0b17    	vmov	d7, r0, r1
  30056e: eef7 7bc7    	vcvt.f32.f64	s15, d7
  300572: edcd 7a06    	vstr	s15, [sp, #24]
  300576: 2300         	movs	r3, #0x0
  300578: 9304         	str	r3, [sp, #0x10]
  30057a: 2300         	movs	r3, #0x0
  30057c: 9305         	str	r3, [sp, #0x14]
  30057e: 4b40         	ldr	r3, [pc, #0x100]        @ 0x300680 <CoOpStage::getClosestPlayerLocation(cpVect)+0x174>
  300580: 58e3         	ldr	r3, [r4, r3]
  300582: 681b         	ldr	r3, [r3]
  300584: 2b00         	cmp	r3, #0x0
  300586: d00a         	beq	0x30059e <CoOpStage::getClosestPlayerLocation(cpVect)+0x92> @ imm = #0x14
  300588: 4b3d         	ldr	r3, [pc, #0xf4]         @ 0x300680 <CoOpStage::getClosestPlayerLocation(cpVect)+0x174>
  30058a: 58e3         	ldr	r3, [r4, r3]
  30058c: 681b         	ldr	r3, [r3]
  30058e: 4618         	mov	r0, r3
  300590: f293 fb6c    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x2936d8
  300594: 4603         	mov	r3, r0
  300596: 2b00         	cmp	r3, #0x0
  300598: d001         	beq	0x30059e <CoOpStage::getClosestPlayerLocation(cpVect)+0x92> @ imm = #0x2
  30059a: 2301         	movs	r3, #0x1
  30059c: e000         	b	0x3005a0 <CoOpStage::getClosestPlayerLocation(cpVect)+0x94> @ imm = #0x0
  30059e: 2300         	movs	r3, #0x0
  3005a0: 2b00         	cmp	r3, #0x0
  3005a2: d05a         	beq	0x30065a <CoOpStage::getClosestPlayerLocation(cpVect)+0x14e> @ imm = #0xb4
  3005a4: 4b36         	ldr	r3, [pc, #0xd8]         @ 0x300680 <CoOpStage::getClosestPlayerLocation(cpVect)+0x174>
  3005a6: 58e3         	ldr	r3, [r4, r3]
  3005a8: 681b         	ldr	r3, [r3]
  3005aa: 695b         	ldr	r3, [r3, #0x14]
  3005ac: 9304         	str	r3, [sp, #0x10]
  3005ae: 4b34         	ldr	r3, [pc, #0xd0]         @ 0x300680 <CoOpStage::getClosestPlayerLocation(cpVect)+0x174>
  3005b0: 58e3         	ldr	r3, [r4, r3]
  3005b2: 681b         	ldr	r3, [r3]
  3005b4: 695b         	ldr	r3, [r3, #0x14]
  3005b6: 2b00         	cmp	r3, #0x0
  3005b8: d006         	beq	0x3005c8 <CoOpStage::getClosestPlayerLocation(cpVect)+0xbc> @ imm = #0xc
  3005ba: 4b31         	ldr	r3, [pc, #0xc4]         @ 0x300680 <CoOpStage::getClosestPlayerLocation(cpVect)+0x174>
  3005bc: 58e3         	ldr	r3, [r4, r3]
  3005be: 681b         	ldr	r3, [r3]
  3005c0: 695b         	ldr	r3, [r3, #0x14]
  3005c2: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3005c6: e000         	b	0x3005ca <CoOpStage::getClosestPlayerLocation(cpVect)+0xbe> @ imm = #0x0
  3005c8: 2300         	movs	r3, #0x0
  3005ca: 9305         	str	r3, [sp, #0x14]
  3005cc: e042         	b	0x300654 <CoOpStage::getClosestPlayerLocation(cpVect)+0x148> @ imm = #0x84
  3005ce: 9804         	ldr	r0, [sp, #0x10]
  3005d0: f7fe f830    	bl	0x2fe634 <cocos2d::CCDictElement::getObject() const> @ imm = #-0x1fa0
  3005d4: 4603         	mov	r3, r0
  3005d6: 9307         	str	r3, [sp, #0x1c]
  3005d8: 9b07         	ldr	r3, [sp, #0x1c]
  3005da: 681b         	ldr	r3, [r3]
  3005dc: f503 73d6    	add.w	r3, r3, #0x1ac
  3005e0: 681b         	ldr	r3, [r3]
  3005e2: aa10         	add	r2, sp, #0x40
  3005e4: 4610         	mov	r0, r2
  3005e6: 9907         	ldr	r1, [sp, #0x1c]
  3005e8: 4798         	blx	r3
  3005ea: ab14         	add	r3, sp, #0x50
  3005ec: ed9d 4b1a    	vldr	d4, [sp, #104]
  3005f0: ed9d 5b1c    	vldr	d5, [sp, #112]
  3005f4: ed9d 6b10    	vldr	d6, [sp, #64]
  3005f8: ed9d 7b12    	vldr	d7, [sp, #72]
  3005fc: 4618         	mov	r0, r3
  3005fe: eeb0 0b44    	vmov.f64	d0, d4
  300602: eeb0 1b45    	vmov.f64	d1, d5
  300606: eeb0 2b46    	vmov.f64	d2, d6
  30060a: eeb0 3b47    	vmov.f64	d3, d7
  30060e: f7fe f82d    	bl	0x2fe66c <cocos2d::CCDictElement::getObject() const+0x38> @ imm = #-0x1fa6
  300612: ab14         	add	r3, sp, #0x50
  300614: cb0f         	ldm	r3, {r0, r1, r2, r3}
  300616: f3d6 fd4f    	bl	0x6d70b8 <cpvlength>    @ imm = #0x3d6a9e
  30061a: ec41 0b16    	vmov	d6, r0, r1
  30061e: eddd 7a06    	vldr	s15, [sp, #24]
  300622: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  300626: eeb4 6bc7    	vcmpe.f64	d6, d7
  30062a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  30062e: bf54         	ite	pl
  300630: 2300         	movpl	r3, #0x0
  300632: 2301         	movmi	r3, #0x1
  300634: b2db         	uxtb	r3, r3
  300636: 2b00         	cmp	r3, #0x0
  300638: d001         	beq	0x30063e <CoOpStage::getClosestPlayerLocation(cpVect)+0x132> @ imm = #0x2
  30063a: 9b07         	ldr	r3, [sp, #0x1c]
  30063c: 9303         	str	r3, [sp, #0xc]
  30063e: 9b05         	ldr	r3, [sp, #0x14]
  300640: 9304         	str	r3, [sp, #0x10]
  300642: 9b05         	ldr	r3, [sp, #0x14]
  300644: 2b00         	cmp	r3, #0x0
  300646: d003         	beq	0x300650 <CoOpStage::getClosestPlayerLocation(cpVect)+0x144> @ imm = #0x6
  300648: 9b05         	ldr	r3, [sp, #0x14]
  30064a: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  30064e: e000         	b	0x300652 <CoOpStage::getClosestPlayerLocation(cpVect)+0x146> @ imm = #0x0
  300650: 2300         	movs	r3, #0x0
  300652: 9305         	str	r3, [sp, #0x14]
  300654: 9b04         	ldr	r3, [sp, #0x10]
  300656: 2b00         	cmp	r3, #0x0
  300658: d1b9         	bne	0x3005ce <CoOpStage::getClosestPlayerLocation(cpVect)+0xc2> @ imm = #-0x8e
  30065a: 9b03         	ldr	r3, [sp, #0xc]
  30065c: 681b         	ldr	r3, [r3]
  30065e: f503 73d6    	add.w	r3, r3, #0x1ac
  300662: 681b         	ldr	r3, [r3]
  300664: 9a01         	ldr	r2, [sp, #0x4]
  300666: 4610         	mov	r0, r2
  300668: 9903         	ldr	r1, [sp, #0xc]
  30066a: 4798         	blx	r3
  30066c: 9801         	ldr	r0, [sp, #0x4]
  30066e: b018         	add	sp, #0x60
  300670: e8bd 4010    	pop.w	{r4, lr}
  300674: b002         	add	sp, #0x8
  300676: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x300677); words below are literal-pool data ---
  300678: 24ea         	movs	r4, #0xea
  30067a: 0063         	lsls	r3, r4, #0x1
  30067c: d784         	bvc	0x300588 <CoOpStage::getClosestPlayerLocation(cpVect)+0x7c> @ imm = #-0xf8
  30067e: ffff d920    	vtbl.8	d29, {d15, d16}, d16
  300682: ffff b570    	<unknown>

// ==== CoOpStage::playRound
//      file offset 0x300684 (= ELF address; Ghidra 0x310684), 688 bytes, Thumb-2
  300684: b570         	push	{r4, r5, r6, lr}
  300686: b0a0         	sub	sp, #0x80
  300688: 9003         	str	r0, [sp, #0xc]
  30068a: 9102         	str	r1, [sp, #0x8]
  30068c: 4ca7         	ldr	r4, [pc, #0x29c]        @ 0x30092c <CoOpStage::playRound(float)+0x2a8>
  30068e: 447c         	add	r4, pc
  300690: 9b03         	ldr	r3, [sp, #0xc]
  300692: ed93 7a5e    	vldr	s14, [r3, #376]
  300696: eddd 7a02    	vldr	s15, [sp, #8]
  30069a: ee77 7a27    	vadd.f32	s15, s14, s15
  30069e: 9b03         	ldr	r3, [sp, #0xc]
  3006a0: edc3 7a5e    	vstr	s15, [r3, #376]
  3006a4: 9b03         	ldr	r3, [sp, #0xc]
  3006a6: ed93 7a5f    	vldr	s14, [r3, #380]
  3006aa: eddd 7a02    	vldr	s15, [sp, #8]
  3006ae: ee77 7a27    	vadd.f32	s15, s14, s15
  3006b2: 9b03         	ldr	r3, [sp, #0xc]
  3006b4: edc3 7a5f    	vstr	s15, [r3, #380]
  3006b8: 9b03         	ldr	r3, [sp, #0xc]
  3006ba: ed93 7a5f    	vldr	s14, [r3, #380]
  3006be: eddf 7a9a    	vldr	s15, [pc, #616]         @ 0x300928 <CoOpStage::playRound(float)+0x2a4>
  3006c2: eeb4 7ae7    	vcmpe.f32	s14, s15
  3006c6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3006ca: dd44         	ble	0x300756 <CoOpStage::playRound(float)+0xd2> @ imm = #0x88
  3006cc: 9b03         	ldr	r3, [sp, #0xc]
  3006ce: f04f 0200    	mov.w	r2, #0x0
  3006d2: f8c3 217c    	str.w	r2, [r3, #0x17c]
  3006d6: f117 f955    	bl	0x417984 <WeaponFactory::sharedWeaponFactory()> @ imm = #0x1172aa
  3006da: 4603         	mov	r3, r0
  3006dc: 4618         	mov	r0, r3
  3006de: 2102         	movs	r1, #0x2
  3006e0: f118 f80c    	bl	0x4186fc <WeaponFactory::createWeaponFromAmmoType(ItemType)> @ imm = #0x118018
  3006e4: 4603         	mov	r3, r0
  3006e6: 9304         	str	r3, [sp, #0x10]
  3006e8: 9b04         	ldr	r3, [sp, #0x10]
  3006ea: 681b         	ldr	r3, [r3]
  3006ec: f503 7300    	add.w	r3, r3, #0x200
  3006f0: 681d         	ldr	r5, [r3]
  3006f2: 4b8f         	ldr	r3, [pc, #0x23c]        @ 0x300930 <CoOpStage::playRound(float)+0x2ac>
  3006f4: 58e3         	ldr	r3, [r4, r3]
  3006f6: 681b         	ldr	r3, [r3]
  3006f8: 681b         	ldr	r3, [r3]
  3006fa: f503 73e0    	add.w	r3, r3, #0x1c0
  3006fe: 681b         	ldr	r3, [r3]
  300700: 4a8b         	ldr	r2, [pc, #0x22c]        @ 0x300930 <CoOpStage::playRound(float)+0x2ac>
  300702: 58a2         	ldr	r2, [r4, r2]
  300704: 6812         	ldr	r2, [r2]
  300706: a91c         	add	r1, sp, #0x70
  300708: 4608         	mov	r0, r1
  30070a: 4611         	mov	r1, r2
  30070c: 4798         	blx	r3
  30070e: ab1c         	add	r3, sp, #0x70
  300710: 9804         	ldr	r0, [sp, #0x10]
  300712: 4619         	mov	r1, r3
  300714: 47a8         	blx	r5
  300716: ab1c         	add	r3, sp, #0x70
  300718: 4618         	mov	r0, r3
  30071a: f0b5 f0fb    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b51f6
  30071e: 9b04         	ldr	r3, [sp, #0x10]
  300720: 681b         	ldr	r3, [r3]
  300722: 334c         	adds	r3, #0x4c
  300724: 681c         	ldr	r4, [r3]
  300726: 9d04         	ldr	r5, [sp, #0x10]
  300728: ab1c         	add	r3, sp, #0x70
  30072a: 4618         	mov	r0, r3
  30072c: f44f 4100    	mov.w	r1, #0x8000
  300730: f2c4 41bb    	movt	r1, #0x44bb
  300734: f44f 4200    	mov.w	r2, #0x8000
  300738: f2c4 42a2    	movt	r2, #0x44a2
  30073c: f292 fad8    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2925b0
  300740: ab1c         	add	r3, sp, #0x70
  300742: 4628         	mov	r0, r5
  300744: 4619         	mov	r1, r3
  300746: 47a0         	blx	r4
  300748: 9b03         	ldr	r3, [sp, #0xc]
  30074a: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  30074e: 4618         	mov	r0, r3
  300750: 9904         	ldr	r1, [sp, #0x10]
  300752: f11a f921    	bl	0x41a998 <WeaponManager::addItem(Item*)> @ imm = #0x11a242
  300756: 9b03         	ldr	r3, [sp, #0xc]
  300758: ed93 7a5e    	vldr	s14, [r3, #376]
  30075c: eef3 7a04    	vmov.f32	s15, #2.000000e+01
  300760: eeb4 7ae7    	vcmpe.f32	s14, s15
  300764: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  300768: dd0e         	ble	0x300788 <CoOpStage::playRound(float)+0x104> @ imm = #0x1c
  30076a: 9b03         	ldr	r3, [sp, #0xc]
  30076c: f04f 0200    	mov.w	r2, #0x0
  300770: f8c3 2178    	str.w	r2, [r3, #0x178]
  300774: 9b03         	ldr	r3, [sp, #0xc]
  300776: ed93 7a5d    	vldr	s14, [r3, #372]
  30077a: eef6 7a00    	vmov.f32	s15, #5.000000e-01
  30077e: ee77 7a67    	vsub.f32	s15, s14, s15
  300782: 9b03         	ldr	r3, [sp, #0xc]
  300784: edc3 7a5d    	vstr	s15, [r3, #372]
  300788: 9b03         	ldr	r3, [sp, #0xc]
  30078a: ed93 7a5c    	vldr	s14, [r3, #368]
  30078e: eddd 7a02    	vldr	s15, [sp, #8]
  300792: ee77 7a27    	vadd.f32	s15, s14, s15
  300796: 9b03         	ldr	r3, [sp, #0xc]
  300798: edc3 7a5c    	vstr	s15, [r3, #368]
  30079c: 9b03         	ldr	r3, [sp, #0xc]
  30079e: ed93 7a5c    	vldr	s14, [r3, #368]
  3007a2: 9b03         	ldr	r3, [sp, #0xc]
  3007a4: edd3 6a5d    	vldr	s13, [r3, #372]
  3007a8: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3007ac: eef4 6ae7    	vcmpe.f32	s13, s15
  3007b0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3007b4: dd03         	ble	0x3007be <CoOpStage::playRound(float)+0x13a> @ imm = #0x6
  3007b6: 9b03         	ldr	r3, [sp, #0xc]
  3007b8: edd3 7a5d    	vldr	s15, [r3, #372]
  3007bc: e001         	b	0x3007c2 <CoOpStage::playRound(float)+0x13e> @ imm = #0x2
  3007be: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3007c2: eeb4 7ae7    	vcmpe.f32	s14, s15
  3007c6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3007ca: dd07         	ble	0x3007dc <CoOpStage::playRound(float)+0x158> @ imm = #0xe
  3007cc: 9803         	ldr	r0, [sp, #0xc]
  3007ce: f7ff fd5f    	bl	0x300290 <CoOpStage::spawnEnemy()> @ imm = #-0x542
  3007d2: 9b03         	ldr	r3, [sp, #0xc]
  3007d4: f04f 0200    	mov.w	r2, #0x0
  3007d8: f8c3 2170    	str.w	r2, [r3, #0x170]
  3007dc: 9b03         	ldr	r3, [sp, #0xc]
  3007de: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  3007e2: 4618         	mov	r0, r3
  3007e4: f01a faa0    	bl	0x31ad28 <EnemyManager::getNextHawk()> @ imm = #0x1a540
  3007e8: 4603         	mov	r3, r0
  3007ea: 9305         	str	r3, [sp, #0x14]
  3007ec: 9b05         	ldr	r3, [sp, #0x14]
  3007ee: 2b00         	cmp	r3, #0x0
  3007f0: d028         	beq	0x300844 <CoOpStage::playRound(float)+0x1c0> @ imm = #0x50
  3007f2: 9b05         	ldr	r3, [sp, #0x14]
  3007f4: 681b         	ldr	r3, [r3]
  3007f6: f503 73f6    	add.w	r3, r3, #0x1ec
  3007fa: 681c         	ldr	r4, [r3]
  3007fc: 9d05         	ldr	r5, [sp, #0x14]
  3007fe: 9b05         	ldr	r3, [sp, #0x14]
  300800: 681b         	ldr	r3, [r3]
  300802: f503 73d6    	add.w	r3, r3, #0x1ac
  300806: 681b         	ldr	r3, [r3]
  300808: aa08         	add	r2, sp, #0x20
  30080a: 4610         	mov	r0, r2
  30080c: 9905         	ldr	r1, [sp, #0x14]
  30080e: 4798         	blx	r3
  300810: ae0c         	add	r6, sp, #0x30
  300812: 466b         	mov	r3, sp
  300814: aa0a         	add	r2, sp, #0x28
  300816: e892 0003    	ldm.w	r2, {r0, r1}
  30081a: e883 0003    	stm.w	r3, {r0, r1}
  30081e: ab08         	add	r3, sp, #0x20
  300820: cb0c         	ldm	r3, {r2, r3}
  300822: 4630         	mov	r0, r6
  300824: 9903         	ldr	r1, [sp, #0xc]
  300826: f7ff fe71    	bl	0x30050c <CoOpStage::getClosestPlayerLocation(cpVect)> @ imm = #-0x31e
  30082a: 466b         	mov	r3, sp
  30082c: aa0e         	add	r2, sp, #0x38
  30082e: e892 0003    	ldm.w	r2, {r0, r1}
  300832: e883 0003    	stm.w	r3, {r0, r1}
  300836: ab0c         	add	r3, sp, #0x30
  300838: cb0c         	ldm	r3, {r2, r3}
  30083a: 4628         	mov	r0, r5
  30083c: 47a0         	blx	r4
  30083e: 9805         	ldr	r0, [sp, #0x14]
  300840: f040 fc12    	bl	0x341068 <HawkDrone::lookForTarget()> @ imm = #0x40824
  300844: 9b03         	ldr	r3, [sp, #0xc]
  300846: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  30084a: 4618         	mov	r0, r3
  30084c: f01a fb3c    	bl	0x31aec8 <EnemyManager::getNextWorm()> @ imm = #0x1a678
  300850: 4603         	mov	r3, r0
  300852: 9306         	str	r3, [sp, #0x18]
  300854: 9b06         	ldr	r3, [sp, #0x18]
  300856: 2b00         	cmp	r3, #0x0
  300858: d028         	beq	0x3008ac <CoOpStage::playRound(float)+0x228> @ imm = #0x50
  30085a: 9b06         	ldr	r3, [sp, #0x18]
  30085c: 681b         	ldr	r3, [r3]
  30085e: f503 73f6    	add.w	r3, r3, #0x1ec
  300862: 681c         	ldr	r4, [r3]
  300864: 9d06         	ldr	r5, [sp, #0x18]
  300866: 9b06         	ldr	r3, [sp, #0x18]
  300868: 681b         	ldr	r3, [r3]
  30086a: f503 73d6    	add.w	r3, r3, #0x1ac
  30086e: 681b         	ldr	r3, [r3]
  300870: aa10         	add	r2, sp, #0x40
  300872: 4610         	mov	r0, r2
  300874: 9906         	ldr	r1, [sp, #0x18]
  300876: 4798         	blx	r3
  300878: ae14         	add	r6, sp, #0x50
  30087a: 466b         	mov	r3, sp
  30087c: aa12         	add	r2, sp, #0x48
  30087e: e892 0003    	ldm.w	r2, {r0, r1}
  300882: e883 0003    	stm.w	r3, {r0, r1}
  300886: ab10         	add	r3, sp, #0x40
  300888: cb0c         	ldm	r3, {r2, r3}
  30088a: 4630         	mov	r0, r6
  30088c: 9903         	ldr	r1, [sp, #0xc]
  30088e: f7ff fe3d    	bl	0x30050c <CoOpStage::getClosestPlayerLocation(cpVect)> @ imm = #-0x386
  300892: 466b         	mov	r3, sp
  300894: aa16         	add	r2, sp, #0x58
  300896: e892 0003    	ldm.w	r2, {r0, r1}
  30089a: e883 0003    	stm.w	r3, {r0, r1}
  30089e: ab14         	add	r3, sp, #0x50
  3008a0: cb0c         	ldm	r3, {r2, r3}
  3008a2: 4628         	mov	r0, r5
  3008a4: 47a0         	blx	r4
  3008a6: 9806         	ldr	r0, [sp, #0x18]
  3008a8: f11e fe0e    	bl	0x41f4c8 <WormDrone::lookForTarget()> @ imm = #0x11ec1c
  3008ac: 9b03         	ldr	r3, [sp, #0xc]
  3008ae: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  3008b2: 4618         	mov	r0, r3
  3008b4: f01a faa0    	bl	0x31adf8 <EnemyManager::getNextHumanoid()> @ imm = #0x1a540
  3008b8: 4603         	mov	r3, r0
  3008ba: 9307         	str	r3, [sp, #0x1c]
  3008bc: 9b07         	ldr	r3, [sp, #0x1c]
  3008be: 2b00         	cmp	r3, #0x0
  3008c0: d02f         	beq	0x300922 <CoOpStage::playRound(float)+0x29e> @ imm = #0x5e
  3008c2: 9b07         	ldr	r3, [sp, #0x1c]
  3008c4: 681b         	ldr	r3, [r3]
  3008c6: f503 73f6    	add.w	r3, r3, #0x1ec
  3008ca: 681c         	ldr	r4, [r3]
  3008cc: 9d07         	ldr	r5, [sp, #0x1c]
  3008ce: 9b07         	ldr	r3, [sp, #0x1c]
  3008d0: 681b         	ldr	r3, [r3]
  3008d2: f503 73d6    	add.w	r3, r3, #0x1ac
  3008d6: 681b         	ldr	r3, [r3]
  3008d8: aa18         	add	r2, sp, #0x60
  3008da: 4610         	mov	r0, r2
  3008dc: 9907         	ldr	r1, [sp, #0x1c]
  3008de: 4798         	blx	r3
  3008e0: ae1c         	add	r6, sp, #0x70
  3008e2: 466b         	mov	r3, sp
  3008e4: aa1a         	add	r2, sp, #0x68
  3008e6: e892 0003    	ldm.w	r2, {r0, r1}
  3008ea: e883 0003    	stm.w	r3, {r0, r1}
  3008ee: ab18         	add	r3, sp, #0x60
  3008f0: cb0c         	ldm	r3, {r2, r3}
  3008f2: 4630         	mov	r0, r6
  3008f4: 9903         	ldr	r1, [sp, #0xc]
  3008f6: f7ff fe09    	bl	0x30050c <CoOpStage::getClosestPlayerLocation(cpVect)> @ imm = #-0x3ee
  3008fa: 466b         	mov	r3, sp
  3008fc: aa1e         	add	r2, sp, #0x78
  3008fe: e892 0003    	ldm.w	r2, {r0, r1}
  300902: e883 0003    	stm.w	r3, {r0, r1}
  300906: ab1c         	add	r3, sp, #0x70
  300908: cb0c         	ldm	r3, {r2, r3}
  30090a: 4628         	mov	r0, r5
  30090c: 47a0         	blx	r4
  30090e: 9807         	ldr	r0, [sp, #0x1c]
  300910: f046 f822    	bl	0x346958 <HumanoidDrone::lookForTarget()> @ imm = #0x46044
  300914: e005         	b	0x300922 <CoOpStage::playRound(float)+0x29e> @ imm = #0xa
  300916: ab1c         	add	r3, sp, #0x70
  300918: 4618         	mov	r0, r3
  30091a: f0b4 f7fb    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4b4ff6
  30091e: f087 f3c5    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48778a
  300922: b020         	add	sp, #0x80
  300924: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x300925); words below are literal-pool data ---
  300926: bf00         	nop
  300928: 0000         	movs	r0, r0
  30092a: 4270         	rsbs	r0, r6, #0
  30092c: 237a         	movs	r3, #0x7a
  30092e: 0063         	lsls	r3, r4, #0x1
  300930: d784         	bvc	0x30083c <CoOpStage::playRound(float)+0x1b8> @ imm = #-0xf8
  300932: ffff 0000    	<unknown>

// ==== CoOpStage::updateStep
//      file offset 0x300938 (= ELF address; Ghidra 0x310938), 372 bytes, Thumb-2
  300938: b530         	push	{r4, r5, lr}
  30093a: b087         	sub	sp, #0x1c
  30093c: 9005         	str	r0, [sp, #0x14]
  30093e: 9104         	str	r1, [sp, #0x10]
  300940: 4c57         	ldr	r4, [pc, #0x15c]        @ 0x300aa0 <CoOpStage::updateStep(float)+0x168>
  300942: 447c         	add	r4, pc
  300944: 9b05         	ldr	r3, [sp, #0x14]
  300946: 4618         	mov	r0, r3
  300948: 9904         	ldr	r1, [sp, #0x10]
  30094a: f0fc fb15    	bl	0x3fcf78 <Stage::updateStep(float)> @ imm = #0xfc62a
  30094e: 4b55         	ldr	r3, [pc, #0x154]        @ 0x300aa4 <CoOpStage::updateStep(float)+0x16c>
  300950: 58e3         	ldr	r3, [r4, r3]
  300952: 681b         	ldr	r3, [r3]
  300954: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  300958: ed93 6b0a    	vldr	d6, [r3, #40]
  30095c: ed9f 7b4c    	vldr	d7, [pc, #304]          @ 0x300a90 <CoOpStage::updateStep(float)+0x158>
  300960: eeb4 6bc7    	vcmpe.f64	d6, d7
  300964: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  300968: d518         	bpl	0x30099c <CoOpStage::updateStep(float)+0x64> @ imm = #0x30
  30096a: 4b4e         	ldr	r3, [pc, #0x138]        @ 0x300aa4 <CoOpStage::updateStep(float)+0x16c>
  30096c: 58e3         	ldr	r3, [r4, r3]
  30096e: 681b         	ldr	r3, [r3]
  300970: f8d3 5138    	ldr.w	r5, [r3, #0x138]
  300974: 4b4b         	ldr	r3, [pc, #0x12c]        @ 0x300aa4 <CoOpStage::updateStep(float)+0x16c>
  300976: 58e3         	ldr	r3, [r4, r3]
  300978: 681b         	ldr	r3, [r3]
  30097a: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  30097e: ed93 7b0c    	vldr	d7, [r3, #48]
  300982: 466b         	mov	r3, sp
  300984: 4618         	mov	r0, r3
  300986: ed9f 0b42    	vldr	d0, [pc, #264]          @ 0x300a90 <CoOpStage::updateStep(float)+0x158>
  30098a: eeb0 1b47    	vmov.f64	d1, d7
  30098e: f7fd fe59    	bl	0x2fe644 <cocos2d::CCDictElement::getObject() const+0x10> @ imm = #-0x234e
  300992: 3528         	adds	r5, #0x28
  300994: 466b         	mov	r3, sp
  300996: cb0f         	ldm	r3, {r0, r1, r2, r3}
  300998: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  30099c: 4b41         	ldr	r3, [pc, #0x104]        @ 0x300aa4 <CoOpStage::updateStep(float)+0x16c>
  30099e: 58e3         	ldr	r3, [r4, r3]
  3009a0: 681b         	ldr	r3, [r3]
  3009a2: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3009a6: ed93 6b0a    	vldr	d6, [r3, #40]
  3009aa: ed9f 7b3b    	vldr	d7, [pc, #236]          @ 0x300a98 <CoOpStage::updateStep(float)+0x160>
  3009ae: eeb4 6bc7    	vcmpe.f64	d6, d7
  3009b2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3009b6: dd18         	ble	0x3009ea <CoOpStage::updateStep(float)+0xb2> @ imm = #0x30
  3009b8: 4b3a         	ldr	r3, [pc, #0xe8]         @ 0x300aa4 <CoOpStage::updateStep(float)+0x16c>
  3009ba: 58e3         	ldr	r3, [r4, r3]
  3009bc: 681b         	ldr	r3, [r3]
  3009be: f8d3 5138    	ldr.w	r5, [r3, #0x138]
  3009c2: 4b38         	ldr	r3, [pc, #0xe0]         @ 0x300aa4 <CoOpStage::updateStep(float)+0x16c>
  3009c4: 58e3         	ldr	r3, [r4, r3]
  3009c6: 681b         	ldr	r3, [r3]
  3009c8: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3009cc: ed93 7b0c    	vldr	d7, [r3, #48]
  3009d0: 466b         	mov	r3, sp
  3009d2: 4618         	mov	r0, r3
  3009d4: ed9f 0b30    	vldr	d0, [pc, #192]          @ 0x300a98 <CoOpStage::updateStep(float)+0x160>
  3009d8: eeb0 1b47    	vmov.f64	d1, d7
  3009dc: f7fd fe32    	bl	0x2fe644 <cocos2d::CCDictElement::getObject() const+0x10> @ imm = #-0x239c
  3009e0: 3528         	adds	r5, #0x28
  3009e2: 466b         	mov	r3, sp
  3009e4: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3009e6: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  3009ea: 4b2f         	ldr	r3, [pc, #0xbc]         @ 0x300aa8 <CoOpStage::updateStep(float)+0x170>
  3009ec: 58e3         	ldr	r3, [r4, r3]
  3009ee: 681b         	ldr	r3, [r3]
  3009f0: 6a5b         	ldr	r3, [r3, #0x24]
  3009f2: 2b00         	cmp	r3, #0x0
  3009f4: dc2d         	bgt	0x300a52 <CoOpStage::updateStep(float)+0x11a> @ imm = #0x5a
  3009f6: 9b05         	ldr	r3, [sp, #0x14]
  3009f8: f893 3150    	ldrb.w	r3, [r3, #0x150]
  3009fc: f083 0301    	eor	r3, r3, #0x1
  300a00: b2db         	uxtb	r3, r3
  300a02: 2b00         	cmp	r3, #0x0
  300a04: d01c         	beq	0x300a40 <CoOpStage::updateStep(float)+0x108> @ imm = #0x38
  300a06: 4b28         	ldr	r3, [pc, #0xa0]         @ 0x300aa8 <CoOpStage::updateStep(float)+0x170>
  300a08: 58e3         	ldr	r3, [r4, r3]
  300a0a: 681b         	ldr	r3, [r3]
  300a0c: 2200         	movs	r2, #0x0
  300a0e: 751a         	strb	r2, [r3, #0x14]
  300a10: 9b05         	ldr	r3, [sp, #0x14]
  300a12: 2201         	movs	r2, #0x1
  300a14: f883 2150    	strb.w	r2, [r3, #0x150]
  300a18: 9b05         	ldr	r3, [sp, #0x14]
  300a1a: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  300a1e: 2201         	movs	r2, #0x1
  300a20: f883 21c5    	strb.w	r2, [r3, #0x1c5]
  300a24: 9b05         	ldr	r3, [sp, #0x14]
  300a26: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  300a2a: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  300a2e: 4618         	mov	r0, r3
  300a30: f06e fb98    	bl	0x36f164 <MenuScreen::endCoopSurvival()> @ imm = #0x6e730
  300a34: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x300aa8 <CoOpStage::updateStep(float)+0x170>
  300a36: 58e3         	ldr	r3, [r4, r3]
  300a38: 681b         	ldr	r3, [r3]
  300a3a: 4618         	mov	r0, r3
  300a3c: f0eb f9aa    	bl	0x3ebd94 <SoldierManager::removeRemotePlayers()> @ imm = #0xeb354
  300a40: 9b05         	ldr	r3, [sp, #0x14]
  300a42: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  300a46: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  300a4a: 4618         	mov	r0, r3
  300a4c: 2101         	movs	r1, #0x1
  300a4e: f06f f98b    	bl	0x36fd68 <MenuScreen::showScreen(bool)> @ imm = #0x6f316
  300a52: f077 f875    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x770ea
  300a56: 4603         	mov	r3, r0
  300a58: 4618         	mov	r0, r3
  300a5a: f079 fa15    	bl	0x379e88 <NetworkManager::isHostLeader()> @ imm = #0x7942a
  300a5e: 4603         	mov	r3, r0
  300a60: 2b00         	cmp	r3, #0x0
  300a62: d00b         	beq	0x300a7c <CoOpStage::updateStep(float)+0x144> @ imm = #0x16
  300a64: 9b05         	ldr	r3, [sp, #0x14]
  300a66: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  300a6a: 4618         	mov	r0, r3
  300a6c: 9904         	ldr	r1, [sp, #0x10]
  300a6e: f018 fe65    	bl	0x31973c <EnemyManager::updateStep(float)> @ imm = #0x18cca
  300a72: 9805         	ldr	r0, [sp, #0x14]
  300a74: 9904         	ldr	r1, [sp, #0x10]
  300a76: f7ff fe05    	bl	0x300684 <CoOpStage::playRound(float)> @ imm = #-0x3f6
  300a7a: e006         	b	0x300a8a <CoOpStage::updateStep(float)+0x152> @ imm = #0xc
  300a7c: 9b05         	ldr	r3, [sp, #0x14]
  300a7e: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  300a82: 4618         	mov	r0, r3
  300a84: 9904         	ldr	r1, [sp, #0x10]
  300a86: f018 fd8f    	bl	0x3195a8 <EnemyManager::updateRemoteStep(float)> @ imm = #0x18b1e
  300a8a: b007         	add	sp, #0x1c
  300a8c: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x300a8d); words below are literal-pool data ---
  300a8e: bf00         	nop
  300a90: 0000         	movs	r0, r0
  300a92: 0000         	movs	r0, r0
  300a94: 0000         	movs	r0, r0
  300a96: 4059         	eors	r1, r3
  300a98: 0000         	movs	r0, r0
  300a9a: 0000         	movs	r0, r0
  300a9c: 2400         	movs	r4, #0x0
  300a9e: 40a8         	lsls	r0, r5
  300aa0: 20c6         	movs	r0, #0xc6
  300aa2: 0063         	lsls	r3, r4, #0x1
  300aa4: d784         	bvc	0x3009b0 <CoOpStage::updateStep(float)+0x78> @ imm = #-0xf8
  300aa6: ffff d910    	vqshrn.u64	d29, q0, #0x1
  300aaa: ffff f3af    	<unknown>

// ==== CoOpStage::create
//      file offset 0x3fe6bc (= ELF address; Ghidra 0x40e6bc), 112 bytes, Thumb-2
  3fe6bc: b510         	push	{r4, lr}
  3fe6be: b082         	sub	sp, #0x8
  3fe6c0: f44f 70c2    	mov.w	r0, #0x184
  3fe6c4: f389 f94e    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x38929c
  3fe6c8: 4603         	mov	r3, r0
  3fe6ca: 461c         	mov	r4, r3
  3fe6cc: 4620         	mov	r0, r4
  3fe6ce: f700 fea5    	bl	0x2ff41c <CoOpStage::CoOpStage()> @ imm = #-0xff2b6
  3fe6d2: 9401         	str	r4, [sp, #0x4]
  3fe6d4: 9b01         	ldr	r3, [sp, #0x4]
  3fe6d6: 2b00         	cmp	r3, #0x0
  3fe6d8: d00a         	beq	0x3fe6f0 <CoOpStage::create()+0x34> @ imm = #0x14
  3fe6da: 9b01         	ldr	r3, [sp, #0x4]
  3fe6dc: 681b         	ldr	r3, [r3]
  3fe6de: 3318         	adds	r3, #0x18
  3fe6e0: 681b         	ldr	r3, [r3]
  3fe6e2: 9801         	ldr	r0, [sp, #0x4]
  3fe6e4: 4798         	blx	r3
  3fe6e6: 4603         	mov	r3, r0
  3fe6e8: 2b00         	cmp	r3, #0x0
  3fe6ea: d001         	beq	0x3fe6f0 <CoOpStage::create()+0x34> @ imm = #0x2
  3fe6ec: 2301         	movs	r3, #0x1
  3fe6ee: e000         	b	0x3fe6f2 <CoOpStage::create()+0x36> @ imm = #0x0
  3fe6f0: 2300         	movs	r3, #0x0
  3fe6f2: 2b00         	cmp	r3, #0x0
  3fe6f4: d005         	beq	0x3fe702 <CoOpStage::create()+0x46> @ imm = #0xa
  3fe6f6: 9b01         	ldr	r3, [sp, #0x4]
  3fe6f8: 4618         	mov	r0, r3
  3fe6fa: f199 fbff    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x1997fe
  3fe6fe: 9b01         	ldr	r3, [sp, #0x4]
  3fe700: e011         	b	0x3fe726 <CoOpStage::create()+0x6a> @ imm = #0x22
  3fe702: 9b01         	ldr	r3, [sp, #0x4]
  3fe704: 2b00         	cmp	r3, #0x0
  3fe706: d005         	beq	0x3fe714 <CoOpStage::create()+0x58> @ imm = #0xa
  3fe708: 9b01         	ldr	r3, [sp, #0x4]
  3fe70a: 681b         	ldr	r3, [r3]
  3fe70c: 3308         	adds	r3, #0x8
  3fe70e: 681b         	ldr	r3, [r3]
  3fe710: 9801         	ldr	r0, [sp, #0x4]
  3fe712: 4798         	blx	r3
  3fe714: 2300         	movs	r3, #0x0
  3fe716: 9301         	str	r3, [sp, #0x4]
  3fe718: 2300         	movs	r3, #0x0
  3fe71a: e004         	b	0x3fe726 <CoOpStage::create()+0x6a> @ imm = #0x8
  3fe71c: 4620         	mov	r0, r4
  3fe71e: f389 fcc1    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x389982
  3fe722: f389 fcc3    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x389986
  3fe726: 4618         	mov	r0, r3
  3fe728: b002         	add	sp, #0x8
  3fe72a: bd10         	pop	{r4, pc}
