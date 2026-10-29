// TrainingStage: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 12 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../TrainingStage.cpp

// ==== TrainingStage::create
//      file offset 0x3fe56c (= ELF address; Ghidra 0x40e56c), 112 bytes, Thumb-2
  3fe56c: b510         	push	{r4, lr}
  3fe56e: b082         	sub	sp, #0x8
  3fe570: f44f 70d6    	mov.w	r0, #0x1ac
  3fe574: f389 f9f6    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x3893ec
  3fe578: 4603         	mov	r3, r0
  3fe57a: 461c         	mov	r4, r3
  3fe57c: 4620         	mov	r0, r4
  3fe57e: f00a ff39    	bl	0x4093f4 <TrainingStage::TrainingStage()> @ imm = #0xae72
  3fe582: 9401         	str	r4, [sp, #0x4]
  3fe584: 9b01         	ldr	r3, [sp, #0x4]
  3fe586: 2b00         	cmp	r3, #0x0
  3fe588: d00a         	beq	0x3fe5a0 <TrainingStage::create()+0x34> @ imm = #0x14
  3fe58a: 9b01         	ldr	r3, [sp, #0x4]
  3fe58c: 681b         	ldr	r3, [r3]
  3fe58e: 3318         	adds	r3, #0x18
  3fe590: 681b         	ldr	r3, [r3]
  3fe592: 9801         	ldr	r0, [sp, #0x4]
  3fe594: 4798         	blx	r3
  3fe596: 4603         	mov	r3, r0
  3fe598: 2b00         	cmp	r3, #0x0
  3fe59a: d001         	beq	0x3fe5a0 <TrainingStage::create()+0x34> @ imm = #0x2
  3fe59c: 2301         	movs	r3, #0x1
  3fe59e: e000         	b	0x3fe5a2 <TrainingStage::create()+0x36> @ imm = #0x0
  3fe5a0: 2300         	movs	r3, #0x0
  3fe5a2: 2b00         	cmp	r3, #0x0
  3fe5a4: d005         	beq	0x3fe5b2 <TrainingStage::create()+0x46> @ imm = #0xa
  3fe5a6: 9b01         	ldr	r3, [sp, #0x4]
  3fe5a8: 4618         	mov	r0, r3
  3fe5aa: f199 fca7    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x19994e
  3fe5ae: 9b01         	ldr	r3, [sp, #0x4]
  3fe5b0: e011         	b	0x3fe5d6 <TrainingStage::create()+0x6a> @ imm = #0x22
  3fe5b2: 9b01         	ldr	r3, [sp, #0x4]
  3fe5b4: 2b00         	cmp	r3, #0x0
  3fe5b6: d005         	beq	0x3fe5c4 <TrainingStage::create()+0x58> @ imm = #0xa
  3fe5b8: 9b01         	ldr	r3, [sp, #0x4]
  3fe5ba: 681b         	ldr	r3, [r3]
  3fe5bc: 3308         	adds	r3, #0x8
  3fe5be: 681b         	ldr	r3, [r3]
  3fe5c0: 9801         	ldr	r0, [sp, #0x4]
  3fe5c2: 4798         	blx	r3
  3fe5c4: 2300         	movs	r3, #0x0
  3fe5c6: 9301         	str	r3, [sp, #0x4]
  3fe5c8: 2300         	movs	r3, #0x0
  3fe5ca: e004         	b	0x3fe5d6 <TrainingStage::create()+0x6a> @ imm = #0x8
  3fe5cc: 4620         	mov	r0, r4
  3fe5ce: f389 fd69    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x389ad2
  3fe5d2: f389 fd6b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x389ad6
  3fe5d6: 4618         	mov	r0, r3
  3fe5d8: b002         	add	sp, #0x8
  3fe5da: bd10         	pop	{r4, pc}

// ==== TrainingStage::TrainingStage
//      file offset 0x4093f4 (= ELF address; Ghidra 0x4193f4), 88 bytes, Thumb-2
  4093f4: b510         	push	{r4, lr}
  4093f6: b082         	sub	sp, #0x8
  4093f8: 9001         	str	r0, [sp, #0x4]
  4093fa: 4c12         	ldr	r4, [pc, #0x48]         @ 0x409444 <TrainingStage::TrainingStage()+0x50>
  4093fc: 447c         	add	r4, pc
  4093fe: 9b01         	ldr	r3, [sp, #0x4]
  409400: 4618         	mov	r0, r3
  409402: f7f1 fd63    	bl	0x3faecc <Stage::Stage()> @ imm = #-0xe53a
  409406: 9b01         	ldr	r3, [sp, #0x4]
  409408: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x409448 <TrainingStage::TrainingStage()+0x54>
  40940a: 58a2         	ldr	r2, [r4, r2]
  40940c: 3208         	adds	r2, #0x8
  40940e: 601a         	str	r2, [r3]
  409410: 9b01         	ldr	r3, [sp, #0x4]
  409412: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x409448 <TrainingStage::TrainingStage()+0x54>
  409414: 58a2         	ldr	r2, [r4, r2]
  409416: f502 721b    	add.w	r2, r2, #0x26c
  40941a: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  40941e: 9b01         	ldr	r3, [sp, #0x4]
  409420: 4a09         	ldr	r2, [pc, #0x24]         @ 0x409448 <TrainingStage::TrainingStage()+0x54>
  409422: 58a2         	ldr	r2, [r4, r2]
  409424: f502 7227    	add.w	r2, r2, #0x29c
  409428: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  40942c: 9b01         	ldr	r3, [sp, #0x4]
  40942e: 4a06         	ldr	r2, [pc, #0x18]         @ 0x409448 <TrainingStage::TrainingStage()+0x54>
  409430: 58a2         	ldr	r2, [r4, r2]
  409432: f502 722a    	add.w	r2, r2, #0x2a8
  409436: f8c3 20ec    	str.w	r2, [r3, #0xec]
  40943a: 9b01         	ldr	r3, [sp, #0x4]
  40943c: 4618         	mov	r0, r3
  40943e: b002         	add	sp, #0x8
  409440: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x409441); words below are literal-pool data ---
  409442: bf00         	nop
  409444: 960c         	str	r6, [sp, #0x30]
  409446: 0052         	lsls	r2, r2, #0x1
  409448: df94         	svc	#0x94
  40944a: ffff b500    	<unknown>

// ==== TrainingStage::init
//      file offset 0x40944c (= ELF address; Ghidra 0x41944c), 48 bytes, Thumb-2
  40944c: b500         	push	{lr}
  40944e: b085         	sub	sp, #0x14
  409450: 9001         	str	r0, [sp, #0x4]
  409452: 9b01         	ldr	r3, [sp, #0x4]
  409454: 4618         	mov	r0, r3
  409456: f7f1 fd83    	bl	0x3faf60 <Stage::init()> @ imm = #-0xe4fa
  40945a: 4603         	mov	r3, r0
  40945c: f88d 300f    	strb.w	r3, [sp, #0xf]
  409460: f89d 300f    	ldrb.w	r3, [sp, #0xf]
  409464: f083 0301    	eor	r3, r3, #0x1
  409468: b2db         	uxtb	r3, r3
  40946a: 2b00         	cmp	r3, #0x0
  40946c: d001         	beq	0x409472 <TrainingStage::init()+0x26> @ imm = #0x2
  40946e: 2300         	movs	r3, #0x0
  409470: e000         	b	0x409474 <TrainingStage::init()+0x28> @ imm = #0x0
  409472: 2301         	movs	r3, #0x1
  409474: 4618         	mov	r0, r3
  409476: b005         	add	sp, #0x14
  409478: f85d fb04    	ldr	pc, [sp], #4

// ==== TrainingStage::~TrainingStage
//      file offset 0x40947c (= ELF address; Ghidra 0x41947c), 260 bytes, Thumb-2
  40947c: b510         	push	{r4, lr}
  40947e: b082         	sub	sp, #0x8
  409480: 9001         	str	r0, [sp, #0x4]
  409482: 4c3b         	ldr	r4, [pc, #0xec]         @ 0x409570 <TrainingStage::~TrainingStage()+0xf4>
  409484: 447c         	add	r4, pc
  409486: 9b01         	ldr	r3, [sp, #0x4]
  409488: 4a3a         	ldr	r2, [pc, #0xe8]         @ 0x409574 <TrainingStage::~TrainingStage()+0xf8>
  40948a: 58a2         	ldr	r2, [r4, r2]
  40948c: 3208         	adds	r2, #0x8
  40948e: 601a         	str	r2, [r3]
  409490: 9b01         	ldr	r3, [sp, #0x4]
  409492: 4a38         	ldr	r2, [pc, #0xe0]         @ 0x409574 <TrainingStage::~TrainingStage()+0xf8>
  409494: 58a2         	ldr	r2, [r4, r2]
  409496: f502 721b    	add.w	r2, r2, #0x26c
  40949a: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  40949e: 9b01         	ldr	r3, [sp, #0x4]
  4094a0: 4a34         	ldr	r2, [pc, #0xd0]         @ 0x409574 <TrainingStage::~TrainingStage()+0xf8>
  4094a2: 58a2         	ldr	r2, [r4, r2]
  4094a4: f502 7227    	add.w	r2, r2, #0x29c
  4094a8: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  4094ac: 9b01         	ldr	r3, [sp, #0x4]
  4094ae: 4a31         	ldr	r2, [pc, #0xc4]         @ 0x409574 <TrainingStage::~TrainingStage()+0xf8>
  4094b0: 58a2         	ldr	r2, [r4, r2]
  4094b2: f502 722a    	add.w	r2, r2, #0x2a8
  4094b6: f8c3 20ec    	str.w	r2, [r3, #0xec]
  4094ba: 9b01         	ldr	r3, [sp, #0x4]
  4094bc: 4618         	mov	r0, r3
  4094be: f187 f8b5    	bl	0x59062c <cocos2d::CCNode::removeAllChildren()> @ imm = #0x18716a
  4094c2: 9b01         	ldr	r3, [sp, #0x4]
  4094c4: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  4094c8: 4618         	mov	r0, r3
  4094ca: f18e fcf5    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x18e9ea
  4094ce: 9b01         	ldr	r3, [sp, #0x4]
  4094d0: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  4094d4: 681b         	ldr	r3, [r3]
  4094d6: f503 7380    	add.w	r3, r3, #0x100
  4094da: 681b         	ldr	r3, [r3]
  4094dc: 9a01         	ldr	r2, [sp, #0x4]
  4094de: f8d2 2174    	ldr.w	r2, [r2, #0x174]
  4094e2: 4610         	mov	r0, r2
  4094e4: 4798         	blx	r3
  4094e6: 4b24         	ldr	r3, [pc, #0x90]         @ 0x409578 <TrainingStage::~TrainingStage()+0xfc>
  4094e8: 58e3         	ldr	r3, [r4, r3]
  4094ea: 681b         	ldr	r3, [r3]
  4094ec: 681b         	ldr	r3, [r3]
  4094ee: f503 7380    	add.w	r3, r3, #0x100
  4094f2: 681b         	ldr	r3, [r3]
  4094f4: 4a20         	ldr	r2, [pc, #0x80]         @ 0x409578 <TrainingStage::~TrainingStage()+0xfc>
  4094f6: 58a2         	ldr	r2, [r4, r2]
  4094f8: 6812         	ldr	r2, [r2]
  4094fa: 4610         	mov	r0, r2
  4094fc: 4798         	blx	r3
  4094fe: 4b1f         	ldr	r3, [pc, #0x7c]         @ 0x40957c <TrainingStage::~TrainingStage()+0x100>
  409500: 58e3         	ldr	r3, [r4, r3]
  409502: 681b         	ldr	r3, [r3]
  409504: 681b         	ldr	r3, [r3]
  409506: f503 7380    	add.w	r3, r3, #0x100
  40950a: 681b         	ldr	r3, [r3]
  40950c: 4a1b         	ldr	r2, [pc, #0x6c]         @ 0x40957c <TrainingStage::~TrainingStage()+0x100>
  40950e: 58a2         	ldr	r2, [r4, r2]
  409510: 6812         	ldr	r2, [r2]
  409512: 4610         	mov	r0, r2
  409514: 4798         	blx	r3
  409516: 9b01         	ldr	r3, [sp, #0x4]
  409518: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  40951c: 4618         	mov	r0, r3
  40951e: f18e fccb    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x18e996
  409522: 9b01         	ldr	r3, [sp, #0x4]
  409524: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  409528: 4618         	mov	r0, r3
  40952a: f18e fcc5    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x18e98a
  40952e: 9b01         	ldr	r3, [sp, #0x4]
  409530: f8d3 3178    	ldr.w	r3, [r3, #0x178]
  409534: 4618         	mov	r0, r3
  409536: f18e fcbf    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x18e97e
  40953a: 9b01         	ldr	r3, [sp, #0x4]
  40953c: f8d3 3170    	ldr.w	r3, [r3, #0x170]
  409540: 4618         	mov	r0, r3
  409542: f18e fcb9    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x18e972
  409546: 9b01         	ldr	r3, [sp, #0x4]
  409548: f8d3 31a4    	ldr.w	r3, [r3, #0x1a4]
  40954c: 4618         	mov	r0, r3
  40954e: f18e fcb3    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x18e966
  409552: 9b01         	ldr	r3, [sp, #0x4]
  409554: 4618         	mov	r0, r3
  409556: f7f1 fdff    	bl	0x3fb158 <Stage::~Stage()> @ imm = #-0xe402
  40955a: 2300         	movs	r3, #0x0
  40955c: 2b00         	cmp	r3, #0x0
  40955e: d002         	beq	0x409566 <TrainingStage::~TrainingStage()+0xea> @ imm = #0x4
  409560: 9801         	ldr	r0, [sp, #0x4]
  409562: f37e fd9f    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x37eb3e
  409566: 9b01         	ldr	r3, [sp, #0x4]
  409568: 4618         	mov	r0, r3
  40956a: b002         	add	sp, #0x8
  40956c: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x40956d); words below are literal-pool data ---
  40956e: bf00         	nop
  409570: 9584         	str	r5, [sp, #0x210]
  409572: 0052         	lsls	r2, r2, #0x1
  409574: df94         	svc	#0x94
  409576: ffff d720    	<unknown>
  40957a: ffff d744    	<unknown>
  40957e: ffff f1a0    	<unknown>

// ==== TrainingStage::~TrainingStage
//      file offset 0x409580 (= ELF address; Ghidra 0x419580), 8 bytes, Thumb-2
  409580: f1a0 00e4    	sub.w	r0, r0, #0xe4
  409584: f7ff bf7a    	b.w	0x40947c <TrainingStage::~TrainingStage()> @ imm = #-0x10c

// ==== TrainingStage::~TrainingStage
//      file offset 0x409588 (= ELF address; Ghidra 0x419588), 28 bytes, Thumb-2
  409588: b500         	push	{lr}
  40958a: b083         	sub	sp, #0xc
  40958c: 9001         	str	r0, [sp, #0x4]
  40958e: 9801         	ldr	r0, [sp, #0x4]
  409590: f7ff ff74    	bl	0x40947c <TrainingStage::~TrainingStage()> @ imm = #-0x118
  409594: 9801         	ldr	r0, [sp, #0x4]
  409596: f37e fd85    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x37eb0a
  40959a: 9b01         	ldr	r3, [sp, #0x4]
  40959c: 4618         	mov	r0, r3
  40959e: b003         	add	sp, #0xc
  4095a0: f85d fb04    	ldr	pc, [sp], #4

// ==== TrainingStage::~TrainingStage
//      file offset 0x4095a4 (= ELF address; Ghidra 0x4195a4), 8 bytes, Thumb-2
  4095a4: f1a0 00e4    	sub.w	r0, r0, #0xe4
  4095a8: f7ff bfee    	b.w	0x409588 <TrainingStage::~TrainingStage()> @ imm = #-0x24

// ==== TrainingStage::setupStage
//      file offset 0x4095ac (= ELF address; Ghidra 0x4195ac), 2076 bytes, Thumb-2
  4095ac: b570         	push	{r4, r5, r6, lr}
  4095ae: b08c         	sub	sp, #0x30
  4095b0: 9003         	str	r0, [sp, #0xc]
  4095b2: f8df 4680    	ldr.w	r4, [pc, #0x680]        @ 0x409c34 <TrainingStage::setupStage()+0x688>
  4095b6: 447c         	add	r4, pc
  4095b8: 9b03         	ldr	r3, [sp, #0xc]
  4095ba: f503 7590    	add.w	r5, r3, #0x120
  4095be: f191 ffd9    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x191fb2
  4095c2: 4603         	mov	r3, r0
  4095c4: aa0a         	add	r2, sp, #0x28
  4095c6: 4610         	mov	r0, r2
  4095c8: 4619         	mov	r1, r3
  4095ca: f192 fe47    	bl	0x59c25c <cocos2d::CCDirector::getWinSize()> @ imm = #0x192c8e
  4095ce: ab0a         	add	r3, sp, #0x28
  4095d0: 4628         	mov	r0, r5
  4095d2: 4619         	mov	r1, r3
  4095d4: f189 fd8c    	bl	0x5930f0 <cocos2d::CCSize::operator=(cocos2d::CCSize const&)> @ imm = #0x189b18
  4095d8: f1a3 fe40    	bl	0x5ad25c <cocos2d::CCLayer::create()> @ imm = #0x1a3c80
  4095dc: 4603         	mov	r3, r0
  4095de: 461a         	mov	r2, r3
  4095e0: f8df 3654    	ldr.w	r3, [pc, #0x654]        @ 0x409c38 <TrainingStage::setupStage()+0x68c>
  4095e4: 58e3         	ldr	r3, [r4, r3]
  4095e6: 601a         	str	r2, [r3]
  4095e8: f1a3 fe38    	bl	0x5ad25c <cocos2d::CCLayer::create()> @ imm = #0x1a3c70
  4095ec: 4603         	mov	r3, r0
  4095ee: 461a         	mov	r2, r3
  4095f0: f8df 3648    	ldr.w	r3, [pc, #0x648]        @ 0x409c3c <TrainingStage::setupStage()+0x690>
  4095f4: 58e3         	ldr	r3, [r4, r3]
  4095f6: 601a         	str	r2, [r3]
  4095f8: f8df 363c    	ldr.w	r3, [pc, #0x63c]        @ 0x409c38 <TrainingStage::setupStage()+0x68c>
  4095fc: 58e3         	ldr	r3, [r4, r3]
  4095fe: 681b         	ldr	r3, [r3]
  409600: 4618         	mov	r0, r3
  409602: f18e fc71    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x18e8e2
  409606: f8df 3634    	ldr.w	r3, [pc, #0x634]        @ 0x409c3c <TrainingStage::setupStage()+0x690>
  40960a: 58e3         	ldr	r3, [r4, r3]
  40960c: 681b         	ldr	r3, [r3]
  40960e: 4618         	mov	r0, r3
  409610: f18e fc6a    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x18e8d4
  409614: f7f1 fbb2    	bl	0x3fad7c <HUD::create()> @ imm = #-0xe89c
  409618: 4602         	mov	r2, r0
  40961a: 9b03         	ldr	r3, [sp, #0xc]
  40961c: f8c3 210c    	str.w	r2, [r3, #0x10c]
  409620: 9b03         	ldr	r3, [sp, #0xc]
  409622: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  409626: 4618         	mov	r0, r3
  409628: f18e fc5e    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x18e8bc
  40962c: 2014         	movs	r0, #0x14
  40962e: f37e f999    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x37e332
  409632: 4605         	mov	r5, r0
  409634: 4628         	mov	r0, r5
  409636: f788 f8b5    	bl	0x3917a4 <PhysicsManager::PhysicsManager()> @ imm = #-0x77e96
  40963a: 9b03         	ldr	r3, [sp, #0xc]
  40963c: f8c3 5114    	str.w	r5, [r3, #0x114]
  409640: 2064         	movs	r0, #0x64
  409642: f37e f98f    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x37e31e
  409646: 4603         	mov	r3, r0
  409648: 461d         	mov	r5, r3
  40964a: 4628         	mov	r0, r5
  40964c: f755 f956    	bl	0x35e8fc <MapManager::MapManager()> @ imm = #-0xaad54
  409650: f8df 35ec    	ldr.w	r3, [pc, #0x5ec]        @ 0x409c40 <TrainingStage::setupStage()+0x694>
  409654: 58e3         	ldr	r3, [r4, r3]
  409656: 601d         	str	r5, [r3]
  409658: f8df 35e4    	ldr.w	r3, [pc, #0x5e4]        @ 0x409c40 <TrainingStage::setupStage()+0x694>
  40965c: 58e3         	ldr	r3, [r4, r3]
  40965e: 681b         	ldr	r3, [r3]
  409660: 4618         	mov	r0, r3
  409662: f755 fac3    	bl	0x35ebec <MapManager::getGravityFactor()> @ imm = #-0xaaa7a
  409666: 4603         	mov	r3, r0
  409668: 461a         	mov	r2, r3
  40966a: f8df 35d8    	ldr.w	r3, [pc, #0x5d8]        @ 0x409c44 <TrainingStage::setupStage()+0x698>
  40966e: 58e3         	ldr	r3, [r4, r3]
  409670: 601a         	str	r2, [r3]
  409672: 2038         	movs	r0, #0x38
  409674: f37e f976    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x37e2ec
  409678: 4603         	mov	r3, r0
  40967a: 461d         	mov	r5, r3
  40967c: 4628         	mov	r0, r5
  40967e: f7e2 f9c3    	bl	0x3eba08 <SoldierManager::SoldierManager()> @ imm = #-0x1dc7a
  409682: f8df 35c4    	ldr.w	r3, [pc, #0x5c4]        @ 0x409c48 <TrainingStage::setupStage()+0x69c>
  409686: 58e3         	ldr	r3, [r4, r3]
  409688: 601d         	str	r5, [r3]
  40968a: f8df 35bc    	ldr.w	r3, [pc, #0x5bc]        @ 0x409c48 <TrainingStage::setupStage()+0x69c>
  40968e: 58e3         	ldr	r3, [r4, r3]
  409690: 681b         	ldr	r3, [r3]
  409692: 2200         	movs	r2, #0x0
  409694: f883 2034    	strb.w	r2, [r3, #0x34]
  409698: f8df 35ac    	ldr.w	r3, [pc, #0x5ac]        @ 0x409c48 <TrainingStage::setupStage()+0x69c>
  40969c: 58e3         	ldr	r3, [r4, r3]
  40969e: 681b         	ldr	r3, [r3]
  4096a0: 2201         	movs	r2, #0x1
  4096a2: 625a         	str	r2, [r3, #0x24]
  4096a4: f8df 35a0    	ldr.w	r3, [pc, #0x5a0]        @ 0x409c48 <TrainingStage::setupStage()+0x69c>
  4096a8: 58e3         	ldr	r3, [r4, r3]
  4096aa: 681b         	ldr	r3, [r3]
  4096ac: 4618         	mov	r0, r3
  4096ae: f7e3 f8a7    	bl	0x3ec800 <SoldierManager::spawnPlayer()> @ imm = #-0x1ceb2
  4096b2: 2030         	movs	r0, #0x30
  4096b4: f37e f956    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x37e2ac
  4096b8: 4605         	mov	r5, r0
  4096ba: 4628         	mov	r0, r5
  4096bc: f7a9 ff26    	bl	0x3b350c <ProjectileManager::ProjectileManager()> @ imm = #-0x561b4
  4096c0: 9b03         	ldr	r3, [sp, #0xc]
  4096c2: f8c3 5118    	str.w	r5, [r3, #0x118]
  4096c6: 204c         	movs	r0, #0x4c
  4096c8: f37e f94c    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x37e298
  4096cc: 4605         	mov	r5, r0
  4096ce: 4628         	mov	r0, r5
  4096d0: f010 fa28    	bl	0x419b24 <WeaponManager::WeaponManager()> @ imm = #0x10450
  4096d4: 9b03         	ldr	r3, [sp, #0xc]
  4096d6: f8c3 5110    	str.w	r5, [r3, #0x110]
  4096da: 9b03         	ldr	r3, [sp, #0xc]
  4096dc: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  4096e0: 2200         	movs	r2, #0x0
  4096e2: f883 2044    	strb.w	r2, [r3, #0x44]
  4096e6: 9b03         	ldr	r3, [sp, #0xc]
  4096e8: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  4096ec: 2200         	movs	r2, #0x0
  4096ee: f883 2045    	strb.w	r2, [r3, #0x45]
  4096f2: f7f1 fb7b    	bl	0x3fadec <EffectsManager::create()> @ imm = #-0xe90a
  4096f6: 4602         	mov	r2, r0
  4096f8: 9b03         	ldr	r3, [sp, #0xc]
  4096fa: f8c3 211c    	str.w	r2, [r3, #0x11c]
  4096fe: 9b03         	ldr	r3, [sp, #0xc]
  409700: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  409704: 4618         	mov	r0, r3
  409706: f18e fbef    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x18e7de
  40970a: 9b03         	ldr	r3, [sp, #0xc]
  40970c: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  409710: f8df 2538    	ldr.w	r2, [pc, #0x538]        @ 0x409c4c <TrainingStage::setupStage()+0x6a0>
  409714: 58a2         	ldr	r2, [r4, r2]
  409716: 7812         	ldrb	r2, [r2]
  409718: f883 2138    	strb.w	r2, [r3, #0x138]
  40971c: 9b03         	ldr	r3, [sp, #0xc]
  40971e: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  409722: 4618         	mov	r0, r3
  409724: f733 ff40    	bl	0x33d5a8 <HUD::addHostPlayer()> @ imm = #-0xcc180
  409728: f73c fa08    	bl	0x345b3c <SoldierAIController::create()> @ imm = #-0xc3bf0
  40972c: 4602         	mov	r2, r0
  40972e: 9b03         	ldr	r3, [sp, #0xc]
  409730: f8c3 217c    	str.w	r2, [r3, #0x17c]
  409734: 9b03         	ldr	r3, [sp, #0xc]
  409736: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40973a: 4618         	mov	r0, r3
  40973c: f18e fbd4    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x18e7a8
  409740: 9b03         	ldr	r3, [sp, #0xc]
  409742: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  409746: 681b         	ldr	r3, [r3]
  409748: f503 73ea    	add.w	r3, r3, #0x1d4
  40974c: 681d         	ldr	r5, [r3]
  40974e: 9b03         	ldr	r3, [sp, #0xc]
  409750: f8d3 617c    	ldr.w	r6, [r3, #0x17c]
  409754: f6e0 fdb2    	bl	0x2ea2bc <SoldierView::create()> @ imm = #-0x11f49c
  409758: 4603         	mov	r3, r0
  40975a: 4630         	mov	r0, r6
  40975c: 4619         	mov	r1, r3
  40975e: 47a8         	blx	r5
  409760: 9b03         	ldr	r3, [sp, #0xc]
  409762: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  409766: 681b         	ldr	r3, [r3]
  409768: f503 730a    	add.w	r3, r3, #0x228
  40976c: 681b         	ldr	r3, [r3]
  40976e: 9a03         	ldr	r2, [sp, #0xc]
  409770: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  409774: 4610         	mov	r0, r2
  409776: 4798         	blx	r3
  409778: 9b03         	ldr	r3, [sp, #0xc]
  40977a: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40977e: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  409782: 2215         	movs	r2, #0x15
  409784: 655a         	str	r2, [r3, #0x54]
  409786: 9b03         	ldr	r3, [sp, #0xc]
  409788: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40978c: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  409790: 2215         	movs	r2, #0x15
  409792: 65da         	str	r2, [r3, #0x5c]
  409794: 9b03         	ldr	r3, [sp, #0xc]
  409796: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40979a: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  40979e: 2215         	movs	r2, #0x15
  4097a0: 659a         	str	r2, [r3, #0x58]
  4097a2: 9b03         	ldr	r3, [sp, #0xc]
  4097a4: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  4097a8: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  4097ac: 2215         	movs	r2, #0x15
  4097ae: 655a         	str	r2, [r3, #0x54]
  4097b0: 9b03         	ldr	r3, [sp, #0xc]
  4097b2: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  4097b6: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  4097ba: 2215         	movs	r2, #0x15
  4097bc: 65da         	str	r2, [r3, #0x5c]
  4097be: 9b03         	ldr	r3, [sp, #0xc]
  4097c0: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  4097c4: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  4097c8: 2215         	movs	r2, #0x15
  4097ca: 659a         	str	r2, [r3, #0x58]
  4097cc: 9b03         	ldr	r3, [sp, #0xc]
  4097ce: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  4097d2: 2201         	movs	r2, #0x1
  4097d4: f883 215b    	strb.w	r2, [r3, #0x15b]
  4097d8: f6ea f96e    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x115d24
  4097dc: 4603         	mov	r3, r0
  4097de: 4618         	mov	r0, r3
  4097e0: 2100         	movs	r1, #0x0
  4097e2: 2207         	movs	r2, #0x7
  4097e4: f6ed fc44    	bl	0x2f7070 <AvatarRenderer::getHeadTexture(cocos2d::CCArray*, int)> @ imm = #-0x112778
  4097e8: 4603         	mov	r3, r0
  4097ea: 9304         	str	r3, [sp, #0x10]
  4097ec: f6ea f964    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x115d38
  4097f0: 4603         	mov	r3, r0
  4097f2: 4618         	mov	r0, r3
  4097f4: 2100         	movs	r1, #0x0
  4097f6: 2207         	movs	r2, #0x7
  4097f8: f6ee fb44    	bl	0x2f7e84 <AvatarRenderer::getBodyTexture(cocos2d::CCArray*, int)> @ imm = #-0x111978
  4097fc: 4603         	mov	r3, r0
  4097fe: 9305         	str	r3, [sp, #0x14]
  409800: f6ea f95a    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x115d4c
  409804: 4603         	mov	r3, r0
  409806: 4618         	mov	r0, r3
  409808: 2100         	movs	r1, #0x0
  40980a: 2207         	movs	r2, #0x7
  40980c: f6ee fbd8    	bl	0x2f7fc0 <AvatarRenderer::getArmTexture(cocos2d::CCArray*, int)> @ imm = #-0x111850
  409810: 4603         	mov	r3, r0
  409812: 9306         	str	r3, [sp, #0x18]
  409814: f6ea f950    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x115d60
  409818: 4603         	mov	r3, r0
  40981a: 4618         	mov	r0, r3
  40981c: 2100         	movs	r1, #0x0
  40981e: 2207         	movs	r2, #0x7
  409820: f6ee fc6c    	bl	0x2f80fc <AvatarRenderer::getLegTexture(cocos2d::CCArray*, int)> @ imm = #-0x111728
  409824: 4603         	mov	r3, r0
  409826: 9307         	str	r3, [sp, #0x1c]
  409828: 9b03         	ldr	r3, [sp, #0xc]
  40982a: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40982e: 681b         	ldr	r3, [r3]
  409830: f503 73ec    	add.w	r3, r3, #0x1d8
  409834: 681b         	ldr	r3, [r3]
  409836: 9a03         	ldr	r2, [sp, #0xc]
  409838: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40983c: 4610         	mov	r0, r2
  40983e: 4798         	blx	r3
  409840: 4603         	mov	r3, r0
  409842: 9a06         	ldr	r2, [sp, #0x18]
  409844: 9200         	str	r2, [sp]
  409846: 9a07         	ldr	r2, [sp, #0x1c]
  409848: 9201         	str	r2, [sp, #0x4]
  40984a: 4618         	mov	r0, r3
  40984c: 2107         	movs	r1, #0x7
  40984e: 9a04         	ldr	r2, [sp, #0x10]
  409850: 9b05         	ldr	r3, [sp, #0x14]
  409852: f7ea fc17    	bl	0x3f4084 <SoldierView::setPlayerSkin(int, cocos2d::CCTexture2D*, cocos2d::CCTexture2D*, cocos2d::CCTexture2D*, cocos2d::CCTexture2D*)> @ imm = #-0x157d2
  409856: 9b03         	ldr	r3, [sp, #0xc]
  409858: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40985c: 681b         	ldr	r3, [r3]
  40985e: f503 73ec    	add.w	r3, r3, #0x1d8
  409862: 681b         	ldr	r3, [r3]
  409864: 9a03         	ldr	r2, [sp, #0xc]
  409866: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40986a: 4610         	mov	r0, r2
  40986c: 4798         	blx	r3
  40986e: 4605         	mov	r5, r0
  409870: ab08         	add	r3, sp, #0x20
  409872: 4618         	mov	r0, r3
  409874: f380 fdbe    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x380b7c
  409878: aa0a         	add	r2, sp, #0x28
  40987a: ab08         	add	r3, sp, #0x20
  40987c: 4610         	mov	r0, r2
  40987e: 4af4         	ldr	r2, [pc, #0x3d0]        @ 0x409c50 <TrainingStage::setupStage()+0x6a4>
  409880: 447a         	add	r2, pc
  409882: 4611         	mov	r1, r2
  409884: 461a         	mov	r2, r3
  409886: f3ad f8eb    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3ad1d6
  40988a: ab0a         	add	r3, sp, #0x28
  40988c: 4628         	mov	r0, r5
  40988e: 4619         	mov	r1, r3
  409890: f7ea fb68    	bl	0x3f3f64 <SoldierView::setPlayerName(std::string)> @ imm = #-0x15930
  409894: ab0a         	add	r3, sp, #0x28
  409896: 4618         	mov	r0, r3
  409898: f3ac f83c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3ac078
  40989c: ab08         	add	r3, sp, #0x20
  40989e: 4618         	mov	r0, r3
  4098a0: f380 fdac    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x380b58
  4098a4: 4be5         	ldr	r3, [pc, #0x394]        @ 0x409c3c <TrainingStage::setupStage()+0x690>
  4098a6: 58e3         	ldr	r3, [r4, r3]
  4098a8: 681b         	ldr	r3, [r3]
  4098aa: 681b         	ldr	r3, [r3]
  4098ac: 33cc         	adds	r3, #0xcc
  4098ae: 681d         	ldr	r5, [r3]
  4098b0: 4be2         	ldr	r3, [pc, #0x388]        @ 0x409c3c <TrainingStage::setupStage()+0x690>
  4098b2: 58e3         	ldr	r3, [r4, r3]
  4098b4: 681b         	ldr	r3, [r3]
  4098b6: 461e         	mov	r6, r3
  4098b8: 9b03         	ldr	r3, [sp, #0xc]
  4098ba: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  4098be: 681b         	ldr	r3, [r3]
  4098c0: f503 73ec    	add.w	r3, r3, #0x1d8
  4098c4: 681b         	ldr	r3, [r3]
  4098c6: 9a03         	ldr	r2, [sp, #0xc]
  4098c8: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  4098cc: 4610         	mov	r0, r2
  4098ce: 4798         	blx	r3
  4098d0: 4603         	mov	r3, r0
  4098d2: 4630         	mov	r0, r6
  4098d4: 4619         	mov	r1, r3
  4098d6: 2203         	movs	r2, #0x3
  4098d8: 47a8         	blx	r5
  4098da: 9b03         	ldr	r3, [sp, #0xc]
  4098dc: f04f 0200    	mov.w	r2, #0x0
  4098e0: f8c3 2184    	str.w	r2, [r3, #0x184]
  4098e4: 9b03         	ldr	r3, [sp, #0xc]
  4098e6: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  4098ea: 681b         	ldr	r3, [r3]
  4098ec: f503 7313    	add.w	r3, r3, #0x24c
  4098f0: 681d         	ldr	r5, [r3]
  4098f2: 9b03         	ldr	r3, [sp, #0xc]
  4098f4: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  4098f8: 461e         	mov	r6, r3
  4098fa: ab0a         	add	r3, sp, #0x28
  4098fc: 4618         	mov	r0, r3
  4098fe: 4bd5         	ldr	r3, [pc, #0x354]        @ 0x409c54 <TrainingStage::setupStage()+0x6a8>
  409900: 58e3         	ldr	r3, [r4, r3]
  409902: 4619         	mov	r1, r3
  409904: f3ac fdf0    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x3acbe0
  409908: ab0a         	add	r3, sp, #0x28
  40990a: 4630         	mov	r0, r6
  40990c: 4619         	mov	r1, r3
  40990e: 47a8         	blx	r5
  409910: ab0a         	add	r3, sp, #0x28
  409912: 4618         	mov	r0, r3
  409914: f3ab fffe    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3abffc
  409918: 2050         	movs	r0, #0x50
  40991a: f37e f823    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x37e046
  40991e: 4605         	mov	r5, r0
  409920: 4628         	mov	r0, r5
  409922: f70f fa23    	bl	0x318d6c <EnemyManager::EnemyManager()> @ imm = #-0xf0bba
  409926: 9b03         	ldr	r3, [sp, #0xc]
  409928: f8c3 51a4    	str.w	r5, [r3, #0x1a4]
  40992c: 9b03         	ldr	r3, [sp, #0xc]
  40992e: f8d3 31a4    	ldr.w	r3, [r3, #0x1a4]
  409932: 4618         	mov	r0, r3
  409934: f70f fbb0    	bl	0x319098 <EnemyManager::initEnemies()> @ imm = #-0xf08a0
  409938: 4bc7         	ldr	r3, [pc, #0x31c]        @ 0x409c58 <TrainingStage::setupStage()+0x6ac>
  40993a: 58e3         	ldr	r3, [r4, r3]
  40993c: 681b         	ldr	r3, [r3]
  40993e: 2201         	movs	r2, #0x1
  409940: f883 215b    	strb.w	r2, [r3, #0x15b]
  409944: 4bc5         	ldr	r3, [pc, #0x314]        @ 0x409c5c <TrainingStage::setupStage()+0x6b0>
  409946: 447b         	add	r3, pc
  409948: 4618         	mov	r0, r3
  40994a: f1ce fc1b    	bl	0x5d8184 <cocos2d::CCSprite::create(char const*)> @ imm = #0x1ce836
  40994e: 4602         	mov	r2, r0
  409950: 9b03         	ldr	r3, [sp, #0xc]
  409952: f8c3 2108    	str.w	r2, [r3, #0x108]
  409956: 9b03         	ldr	r3, [sp, #0xc]
  409958: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  40995c: 4618         	mov	r0, r3
  40995e: f18e fac3    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x18e586
  409962: 9b03         	ldr	r3, [sp, #0xc]
  409964: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  409968: 681b         	ldr	r3, [r3]
  40996a: 3338         	adds	r3, #0x38
  40996c: 681b         	ldr	r3, [r3]
  40996e: 9a03         	ldr	r2, [sp, #0xc]
  409970: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  409974: 49ba         	ldr	r1, [pc, #0x2e8]        @ 0x409c60 <TrainingStage::setupStage()+0x6b4>
  409976: 5861         	ldr	r1, [r4, r1]
  409978: ed91 7a01    	vldr	s14, [r1, #4]
  40997c: eddf 7aab    	vldr	s15, [pc, #684]         @ 0x409c2c <TrainingStage::setupStage()+0x680>
  409980: eec7 7a27    	vdiv.f32	s15, s14, s15
  409984: 4610         	mov	r0, r2
  409986: ee17 1a90    	vmov	r1, s15
  40998a: 4798         	blx	r3
  40998c: 9b03         	ldr	r3, [sp, #0xc]
  40998e: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  409992: 681b         	ldr	r3, [r3]
  409994: 3330         	adds	r3, #0x30
  409996: 681b         	ldr	r3, [r3]
  409998: 9a03         	ldr	r2, [sp, #0xc]
  40999a: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  40999e: 49b0         	ldr	r1, [pc, #0x2c0]        @ 0x409c60 <TrainingStage::setupStage()+0x6b4>
  4099a0: 5861         	ldr	r1, [r4, r1]
  4099a2: ed91 7a00    	vldr	s14, [r1]
  4099a6: eddf 7aa2    	vldr	s15, [pc, #648]         @ 0x409c30 <TrainingStage::setupStage()+0x684>
  4099aa: eec7 7a27    	vdiv.f32	s15, s14, s15
  4099ae: 4610         	mov	r0, r2
  4099b0: ee17 1a90    	vmov	r1, s15
  4099b4: 4798         	blx	r3
  4099b6: 4bab         	ldr	r3, [pc, #0x2ac]        @ 0x409c64 <TrainingStage::setupStage()+0x6b8>
  4099b8: 58e3         	ldr	r3, [r4, r3]
  4099ba: 781b         	ldrb	r3, [r3]
  4099bc: 2b00         	cmp	r3, #0x0
  4099be: d00c         	beq	0x4099da <TrainingStage::setupStage()+0x42e> @ imm = #0x18
  4099c0: 9b03         	ldr	r3, [sp, #0xc]
  4099c2: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  4099c6: 681b         	ldr	r3, [r3]
  4099c8: f503 73d2    	add.w	r3, r3, #0x1a4
  4099cc: 681b         	ldr	r3, [r3]
  4099ce: 9a03         	ldr	r2, [sp, #0xc]
  4099d0: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  4099d4: 4610         	mov	r0, r2
  4099d6: 2164         	movs	r1, #0x64
  4099d8: 4798         	blx	r3
  4099da: 9b03         	ldr	r3, [sp, #0xc]
  4099dc: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  4099e0: 681b         	ldr	r3, [r3]
  4099e2: 334c         	adds	r3, #0x4c
  4099e4: 681d         	ldr	r5, [r3]
  4099e6: 9b03         	ldr	r3, [sp, #0xc]
  4099e8: f8d3 6108    	ldr.w	r6, [r3, #0x108]
  4099ec: 9b03         	ldr	r3, [sp, #0xc]
  4099ee: ed93 7a48    	vldr	s14, [r3, #288]
  4099f2: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  4099f6: eec7 6a27    	vdiv.f32	s13, s14, s15
  4099fa: 9b03         	ldr	r3, [sp, #0xc]
  4099fc: ed93 7a49    	vldr	s14, [r3, #292]
  409a00: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  409a04: eec7 7a27    	vdiv.f32	s15, s14, s15
  409a08: ab0a         	add	r3, sp, #0x28
  409a0a: 4618         	mov	r0, r3
  409a0c: ee16 1a90    	vmov	r1, s13
  409a10: ee17 2a90    	vmov	r2, s15
  409a14: f189 f96c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1892d8
  409a18: ab0a         	add	r3, sp, #0x28
  409a1a: 4630         	mov	r0, r6
  409a1c: 4619         	mov	r1, r3
  409a1e: 47a8         	blx	r5
  409a20: 9b03         	ldr	r3, [sp, #0xc]
  409a22: 681b         	ldr	r3, [r3]
  409a24: 33cc         	adds	r3, #0xcc
  409a26: 681b         	ldr	r3, [r3]
  409a28: 9903         	ldr	r1, [sp, #0xc]
  409a2a: 9a03         	ldr	r2, [sp, #0xc]
  409a2c: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  409a30: 4608         	mov	r0, r1
  409a32: 4611         	mov	r1, r2
  409a34: 2200         	movs	r2, #0x0
  409a36: 4798         	blx	r3
  409a38: 9b03         	ldr	r3, [sp, #0xc]
  409a3a: 681b         	ldr	r3, [r3]
  409a3c: 33cc         	adds	r3, #0xcc
  409a3e: 681b         	ldr	r3, [r3]
  409a40: 9903         	ldr	r1, [sp, #0xc]
  409a42: 4a7d         	ldr	r2, [pc, #0x1f4]        @ 0x409c38 <TrainingStage::setupStage()+0x68c>
  409a44: 58a2         	ldr	r2, [r4, r2]
  409a46: 6812         	ldr	r2, [r2]
  409a48: 4608         	mov	r0, r1
  409a4a: 4611         	mov	r1, r2
  409a4c: 2201         	movs	r2, #0x1
  409a4e: 4798         	blx	r3
  409a50: 4b79         	ldr	r3, [pc, #0x1e4]        @ 0x409c38 <TrainingStage::setupStage()+0x68c>
  409a52: 58e3         	ldr	r3, [r4, r3]
  409a54: 681b         	ldr	r3, [r3]
  409a56: 681b         	ldr	r3, [r3]
  409a58: 33cc         	adds	r3, #0xcc
  409a5a: 681b         	ldr	r3, [r3]
  409a5c: 4a76         	ldr	r2, [pc, #0x1d8]        @ 0x409c38 <TrainingStage::setupStage()+0x68c>
  409a5e: 58a2         	ldr	r2, [r4, r2]
  409a60: 6812         	ldr	r2, [r2]
  409a62: 4611         	mov	r1, r2
  409a64: 4a75         	ldr	r2, [pc, #0x1d4]        @ 0x409c3c <TrainingStage::setupStage()+0x690>
  409a66: 58a2         	ldr	r2, [r4, r2]
  409a68: 6812         	ldr	r2, [r2]
  409a6a: 4608         	mov	r0, r1
  409a6c: 4611         	mov	r1, r2
  409a6e: 2202         	movs	r2, #0x2
  409a70: 4798         	blx	r3
  409a72: 4b73         	ldr	r3, [pc, #0x1cc]        @ 0x409c40 <TrainingStage::setupStage()+0x694>
  409a74: 58e3         	ldr	r3, [r4, r3]
  409a76: 681a         	ldr	r2, [r3]
  409a78: 4b70         	ldr	r3, [pc, #0x1c0]        @ 0x409c3c <TrainingStage::setupStage()+0x690>
  409a7a: 58e3         	ldr	r3, [r4, r3]
  409a7c: 681b         	ldr	r3, [r3]
  409a7e: 4610         	mov	r0, r2
  409a80: 4619         	mov	r1, r3
  409a82: 2201         	movs	r2, #0x1
  409a84: 2303         	movs	r3, #0x3
  409a86: f756 fa55    	bl	0x35ff34 <MapManager::addToLayer(cocos2d::CCLayer*, int, int)> @ imm = #-0xa9b56
  409a8a: 9b03         	ldr	r3, [sp, #0xc]
  409a8c: 681b         	ldr	r3, [r3]
  409a8e: 33cc         	adds	r3, #0xcc
  409a90: 681b         	ldr	r3, [r3]
  409a92: 9903         	ldr	r1, [sp, #0xc]
  409a94: 9a03         	ldr	r2, [sp, #0xc]
  409a96: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  409a9a: 4608         	mov	r0, r1
  409a9c: 4611         	mov	r1, r2
  409a9e: 2205         	movs	r2, #0x5
  409aa0: 4798         	blx	r3
  409aa2: 9b03         	ldr	r3, [sp, #0xc]
  409aa4: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  409aa8: 4618         	mov	r0, r3
  409aaa: f7a9 fe95    	bl	0x3b37d8 <ProjectileManager::addBodyShapeSprite()> @ imm = #-0x562d6
  409aae: 9b03         	ldr	r3, [sp, #0xc]
  409ab0: 2200         	movs	r2, #0x0
  409ab2: f8c3 2180    	str.w	r2, [r3, #0x180]
  409ab6: 9b03         	ldr	r3, [sp, #0xc]
  409ab8: f04f 0200    	mov.w	r2, #0x0
  409abc: f8c3 2188    	str.w	r2, [r3, #0x188]
  409ac0: 9b03         	ldr	r3, [sp, #0xc]
  409ac2: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  409ac6: 2200         	movs	r2, #0x0
  409ac8: f883 21c4    	strb.w	r2, [r3, #0x1c4]
  409acc: 9b03         	ldr	r3, [sp, #0xc]
  409ace: 2201         	movs	r2, #0x1
  409ad0: f883 218c    	strb.w	r2, [r3, #0x18c]
  409ad4: 9b03         	ldr	r3, [sp, #0xc]
  409ad6: 2200         	movs	r2, #0x0
  409ad8: f8c3 2190    	str.w	r2, [r3, #0x190]
  409adc: f186 fb78    	bl	0x5901d0 <cocos2d::CCNode::create()> @ imm = #0x1866f0
  409ae0: 4602         	mov	r2, r0
  409ae2: 9b03         	ldr	r3, [sp, #0xc]
  409ae4: f8c3 2174    	str.w	r2, [r3, #0x174]
  409ae8: 9b03         	ldr	r3, [sp, #0xc]
  409aea: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  409aee: 4618         	mov	r0, r3
  409af0: f18e f9fa    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x18e3f4
  409af4: 4b5c         	ldr	r3, [pc, #0x170]        @ 0x409c68 <TrainingStage::setupStage()+0x6bc>
  409af6: 447b         	add	r3, pc
  409af8: 4618         	mov	r0, r3
  409afa: f1ce fc03    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x1ce806
  409afe: 4602         	mov	r2, r0
  409b00: 9b03         	ldr	r3, [sp, #0xc]
  409b02: f8c3 216c    	str.w	r2, [r3, #0x16c]
  409b06: 9b03         	ldr	r3, [sp, #0xc]
  409b08: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  409b0c: 4618         	mov	r0, r3
  409b0e: f18e f9eb    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x18e3d6
  409b12: 9b03         	ldr	r3, [sp, #0xc]
  409b14: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  409b18: 681b         	ldr	r3, [r3]
  409b1a: 33c8         	adds	r3, #0xc8
  409b1c: 681b         	ldr	r3, [r3]
  409b1e: 9a03         	ldr	r2, [sp, #0xc]
  409b20: f8d2 1174    	ldr.w	r1, [r2, #0x174]
  409b24: 9a03         	ldr	r2, [sp, #0xc]
  409b26: f8d2 216c    	ldr.w	r2, [r2, #0x16c]
  409b2a: 4608         	mov	r0, r1
  409b2c: 4611         	mov	r1, r2
  409b2e: 4798         	blx	r3
  409b30: 9b03         	ldr	r3, [sp, #0xc]
  409b32: 681b         	ldr	r3, [r3]
  409b34: 33cc         	adds	r3, #0xcc
  409b36: 681b         	ldr	r3, [r3]
  409b38: 9903         	ldr	r1, [sp, #0xc]
  409b3a: 9a03         	ldr	r2, [sp, #0xc]
  409b3c: f8d2 2174    	ldr.w	r2, [r2, #0x174]
  409b40: 4608         	mov	r0, r1
  409b42: 4611         	mov	r1, r2
  409b44: 2206         	movs	r2, #0x6
  409b46: 4798         	blx	r3
  409b48: 2320         	movs	r3, #0x20
  409b4a: 9300         	str	r3, [sp]
  409b4c: 4b47         	ldr	r3, [pc, #0x11c]        @ 0x409c6c <TrainingStage::setupStage()+0x6c0>
  409b4e: 447b         	add	r3, pc
  409b50: 4618         	mov	r0, r3
  409b52: 4b47         	ldr	r3, [pc, #0x11c]        @ 0x409c70 <TrainingStage::setupStage()+0x6c4>
  409b54: 447b         	add	r3, pc
  409b56: 4619         	mov	r1, r3
  409b58: 2220         	movs	r2, #0x20
  409b5a: 2320         	movs	r3, #0x20
  409b5c: f19b fc0c    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x19b818
  409b60: 4602         	mov	r2, r0
  409b62: 9b03         	ldr	r3, [sp, #0xc]
  409b64: f8c3 2178    	str.w	r2, [r3, #0x178]
  409b68: 9b03         	ldr	r3, [sp, #0xc]
  409b6a: f8d3 3178    	ldr.w	r3, [r3, #0x178]
  409b6e: 4618         	mov	r0, r3
  409b70: f18e f9ba    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x18e374
  409b74: 9b03         	ldr	r3, [sp, #0xc]
  409b76: f8d3 3178    	ldr.w	r3, [r3, #0x178]
  409b7a: 681b         	ldr	r3, [r3]
  409b7c: 337c         	adds	r3, #0x7c
  409b7e: 681d         	ldr	r5, [r3]
  409b80: 9b03         	ldr	r3, [sp, #0xc]
  409b82: f8d3 3178    	ldr.w	r3, [r3, #0x178]
  409b86: 461e         	mov	r6, r3
  409b88: ab0a         	add	r3, sp, #0x28
  409b8a: 4618         	mov	r0, r3
  409b8c: f04f 517c    	mov.w	r1, #0x3f000000
  409b90: f04f 527c    	mov.w	r2, #0x3f000000
  409b94: f189 f8ac    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x189158
  409b98: ab0a         	add	r3, sp, #0x28
  409b9a: 4630         	mov	r0, r6
  409b9c: 4619         	mov	r1, r3
  409b9e: 47a8         	blx	r5
  409ba0: 9b03         	ldr	r3, [sp, #0xc]
  409ba2: f8d3 3178    	ldr.w	r3, [r3, #0x178]
  409ba6: 4618         	mov	r0, r3
  409ba8: 2119         	movs	r1, #0x19
  409baa: f19c f8eb    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x19c1d6
  409bae: 9b03         	ldr	r3, [sp, #0xc]
  409bb0: f8d3 3178    	ldr.w	r3, [r3, #0x178]
  409bb4: 681b         	ldr	r3, [r3]
  409bb6: 3340         	adds	r3, #0x40
  409bb8: 681b         	ldr	r3, [r3]
  409bba: 9a03         	ldr	r2, [sp, #0xc]
  409bbc: f8d2 2178    	ldr.w	r2, [r2, #0x178]
  409bc0: 4610         	mov	r0, r2
  409bc2: f64c 41cd    	movw	r1, #0xcccd
  409bc6: f6c3 714c    	movt	r1, #0x3f4c
  409bca: 4798         	blx	r3
  409bcc: 9b03         	ldr	r3, [sp, #0xc]
  409bce: 681b         	ldr	r3, [r3]
  409bd0: 33cc         	adds	r3, #0xcc
  409bd2: 681b         	ldr	r3, [r3]
  409bd4: 9903         	ldr	r1, [sp, #0xc]
  409bd6: 9a03         	ldr	r2, [sp, #0xc]
  409bd8: f8d2 2178    	ldr.w	r2, [r2, #0x178]
  409bdc: 4608         	mov	r0, r1
  409bde: 4611         	mov	r1, r2
  409be0: 2206         	movs	r2, #0x6
  409be2: 4798         	blx	r3
  409be4: 4b23         	ldr	r3, [pc, #0x8c]         @ 0x409c74 <TrainingStage::setupStage()+0x6c8>
  409be6: 447b         	add	r3, pc
  409be8: 4618         	mov	r0, r3
  409bea: f1ce fb8b    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x1ce716
  409bee: 4602         	mov	r2, r0
  409bf0: 9b03         	ldr	r3, [sp, #0xc]
  409bf2: f8c3 2170    	str.w	r2, [r3, #0x170]
  409bf6: 9b03         	ldr	r3, [sp, #0xc]
  409bf8: f8d3 3170    	ldr.w	r3, [r3, #0x170]
  409bfc: 4618         	mov	r0, r3
  409bfe: f18e f973    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x18e2e6
  409c02: 9b03         	ldr	r3, [sp, #0xc]
  409c04: f8d3 3170    	ldr.w	r3, [r3, #0x170]
  409c08: 681b         	ldr	r3, [r3]
  409c0a: 337c         	adds	r3, #0x7c
  409c0c: 681d         	ldr	r5, [r3]
  409c0e: 9b03         	ldr	r3, [sp, #0xc]
  409c10: f8d3 6170    	ldr.w	r6, [r3, #0x170]
  409c14: ab0a         	add	r3, sp, #0x28
  409c16: 4618         	mov	r0, r3
  409c18: f04f 517c    	mov.w	r1, #0x3f000000
  409c1c: f04f 527c    	mov.w	r2, #0x3f000000
  409c20: f189 f866    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1890cc
  409c24: ab0a         	add	r3, sp, #0x28
  409c26: 4630         	mov	r0, r6
  409c28: 4619         	mov	r1, r3
  409c2a: e025         	b	0x409c78 <TrainingStage::setupStage()+0x6cc> @ imm = #0x4a
  409c2c: 0000         	movs	r0, r0
  409c2e: 43a0         	bics	r0, r4
  409c30: 0000         	movs	r0, r0
  409c32: 43f0         	mvns	r0, r6
  409c34: 9452         	str	r4, [sp, #0x148]
  409c36: 0052         	lsls	r2, r2, #0x1
  409c38: d720         	bvc	0x409c7c <TrainingStage::setupStage()+0x6d0> @ imm = #0x40
  409c3a: ffff d744    	<unknown>
  409c3e: ffff df04    	<unknown>
  409c42: ffff da30    	<unknown>
  409c46: ffff d910    	vqshrn.u64	d29, q0, #0x1
  409c4a: ffff d794    	vqshl.u64	d29, d4, #0x3f
  409c4e: ffff 0fb4    	<unknown>
  409c52: 003d         	movs	r5, r7
  409c54: dd10         	ble	0x409c78 <TrainingStage::setupStage()+0x6cc> @ imm = #0x20
  409c56: ffff d784    	<unknown>
  409c5a: ffff 0ef6    	<unknown>
  409c5e: 003d         	movs	r5, r7
  409c60: d724         	bvc	0x409cac <TrainingStage::setupStage()+0x700> @ imm = #0x48
  409c62: ffff db98    	<unknown>
  409c66: ffff 0d52    	<unknown>
  409c6a: 003d         	movs	r5, r7
  409c6c: 0d06         	lsrs	r6, r0, #0x14
  409c6e: 003d         	movs	r5, r7
  409c70: 0d04         	lsrs	r4, r0, #0x14
  409c72: 003d         	movs	r5, r7
  409c74: 0c82         	lsrs	r2, r0, #0x12
  409c76: 003d         	movs	r5, r7
  409c78: 47a8         	blx	r5
  409c7a: 9b03         	ldr	r3, [sp, #0xc]
  409c7c: f8d3 3170    	ldr.w	r3, [r3, #0x170]
  409c80: 681b         	ldr	r3, [r3]
  409c82: 3340         	adds	r3, #0x40
  409c84: 681b         	ldr	r3, [r3]
  409c86: 9a03         	ldr	r2, [sp, #0xc]
  409c88: f8d2 2170    	ldr.w	r2, [r2, #0x170]
  409c8c: 4610         	mov	r0, r2
  409c8e: f04f 517d    	mov.w	r1, #0x3f400000
  409c92: 4798         	blx	r3
  409c94: 9b03         	ldr	r3, [sp, #0xc]
  409c96: f8d3 3170    	ldr.w	r3, [r3, #0x170]
  409c9a: 681b         	ldr	r3, [r3]
  409c9c: f503 73de    	add.w	r3, r3, #0x1bc
  409ca0: 681d         	ldr	r5, [r3]
  409ca2: 9b03         	ldr	r3, [sp, #0xc]
  409ca4: f8d3 6170    	ldr.w	r6, [r3, #0x170]
  409ca8: 20ff         	movs	r0, #0xff
  409caa: 2100         	movs	r1, #0x0
  409cac: 2200         	movs	r2, #0x0
  409cae: f7fe fbd3    	bl	0x408458 <Tracer::checkCollision()+0x3cc> @ imm = #-0x185a
  409cb2: 4603         	mov	r3, r0
  409cb4: 461a         	mov	r2, r3
  409cb6: f88d 2028    	strb.w	r2, [sp, #0x28]
  409cba: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  409cbe: f88d 2029    	strb.w	r2, [sp, #0x29]
  409cc2: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  409cc6: f88d 302a    	strb.w	r3, [sp, #0x2a]
  409cca: ab0a         	add	r3, sp, #0x28
  409ccc: 4630         	mov	r0, r6
  409cce: 4619         	mov	r1, r3
  409cd0: 47a8         	blx	r5
  409cd2: 4b38         	ldr	r3, [pc, #0xe0]         @ 0x409db4 <TrainingStage::setupStage()+0x808>
  409cd4: 58e3         	ldr	r3, [r4, r3]
  409cd6: 681b         	ldr	r3, [r3]
  409cd8: 681b         	ldr	r3, [r3]
  409cda: 33cc         	adds	r3, #0xcc
  409cdc: 681b         	ldr	r3, [r3]
  409cde: 4a35         	ldr	r2, [pc, #0xd4]         @ 0x409db4 <TrainingStage::setupStage()+0x808>
  409ce0: 58a2         	ldr	r2, [r4, r2]
  409ce2: 6812         	ldr	r2, [r2]
  409ce4: 4611         	mov	r1, r2
  409ce6: 9a03         	ldr	r2, [sp, #0xc]
  409ce8: f8d2 2170    	ldr.w	r2, [r2, #0x170]
  409cec: 4608         	mov	r0, r1
  409cee: 4611         	mov	r1, r2
  409cf0: 2206         	movs	r2, #0x6
  409cf2: 4798         	blx	r3
  409cf4: f1d6 fcdc    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1d69b8
  409cf8: 4602         	mov	r2, r0
  409cfa: 9b03         	ldr	r3, [sp, #0xc]
  409cfc: 492e         	ldr	r1, [pc, #0xb8]         @ 0x409db8 <TrainingStage::setupStage()+0x80c>
  409cfe: 4479         	add	r1, pc
  409d00: ac08         	add	r4, sp, #0x20
  409d02: c903         	ldm	r1, {r0, r1}
  409d04: e884 0003    	stm.w	r4, {r0, r1}
  409d08: 492c         	ldr	r1, [pc, #0xb0]         @ 0x409dbc <TrainingStage::setupStage()+0x810>
  409d0a: 4479         	add	r1, pc
  409d0c: 9100         	str	r1, [sp]
  409d0e: 2100         	movs	r1, #0x0
  409d10: 9101         	str	r1, [sp, #0x4]
  409d12: 4610         	mov	r0, r2
  409d14: 4619         	mov	r1, r3
  409d16: ab08         	add	r3, sp, #0x20
  409d18: cb0c         	ldm	r3, {r2, r3}
  409d1a: f1d6 fd65    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x1d6aca
  409d1e: f1d6 fcc7    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1d698e
  409d22: 4602         	mov	r2, r0
  409d24: 9b03         	ldr	r3, [sp, #0xc]
  409d26: 4926         	ldr	r1, [pc, #0x98]         @ 0x409dc0 <TrainingStage::setupStage()+0x814>
  409d28: 4479         	add	r1, pc
  409d2a: ac0a         	add	r4, sp, #0x28
  409d2c: c903         	ldm	r1, {r0, r1}
  409d2e: e884 0003    	stm.w	r4, {r0, r1}
  409d32: 4924         	ldr	r1, [pc, #0x90]         @ 0x409dc4 <TrainingStage::setupStage()+0x818>
  409d34: 4479         	add	r1, pc
  409d36: 9100         	str	r1, [sp]
  409d38: 2100         	movs	r1, #0x0
  409d3a: 9101         	str	r1, [sp, #0x4]
  409d3c: 4610         	mov	r0, r2
  409d3e: 4619         	mov	r1, r3
  409d40: ab0a         	add	r3, sp, #0x28
  409d42: cb0c         	ldm	r3, {r2, r3}
  409d44: f1d6 fd50    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x1d6aa0
  409d48: 9b03         	ldr	r3, [sp, #0xc]
  409d4a: 2200         	movs	r2, #0x0
  409d4c: f8c3 21a8    	str.w	r2, [r3, #0x1a8]
  409d50: e02e         	b	0x409db0 <TrainingStage::setupStage()+0x804> @ imm = #0x5c
  409d52: 4628         	mov	r0, r5
  409d54: f37e f9a6    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x37e34c
  409d58: f37e f9a8    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x37e350
  409d5c: 4628         	mov	r0, r5
  409d5e: f37e f9a1    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x37e342
  409d62: f37e f9a3    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x37e346
  409d66: 4628         	mov	r0, r5
  409d68: f37e f99c    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x37e338
  409d6c: f37e f99e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x37e33c
  409d70: 4628         	mov	r0, r5
  409d72: f37e f997    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x37e32e
  409d76: f37e f999    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x37e332
  409d7a: 4628         	mov	r0, r5
  409d7c: f37e f992    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x37e324
  409d80: f37e f994    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x37e328
  409d84: ab0a         	add	r3, sp, #0x28
  409d86: 4618         	mov	r0, r3
  409d88: f3ab fdc4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3abb88
  409d8c: e7ff         	b	0x409d8e <TrainingStage::setupStage()+0x7e2> @ imm = #-0x2
  409d8e: ab08         	add	r3, sp, #0x20
  409d90: 4618         	mov	r0, r3
  409d92: f380 fb33    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x380666
  409d96: f37e f989    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x37e312
  409d9a: ab0a         	add	r3, sp, #0x28
  409d9c: 4618         	mov	r0, r3
  409d9e: f3ab fdb9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3abb72
  409da2: f37e f983    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x37e306
  409da6: 4628         	mov	r0, r5
  409da8: f37e f97c    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x37e2f8
  409dac: f37e f97e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x37e2fc
  409db0: b00c         	add	sp, #0x30
  409db2: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x409db3); words below are literal-pool data ---
  409db4: d744         	bvc	0x409e40 <TrainingStage::headChatter(float)+0x10> @ imm = #0x88
  409db6: ffff 0b92    	<unknown>
  409dba: 003d         	movs	r5, r7
  409dbc: 0b6e         	lsrs	r6, r5, #0xd
  409dbe: 003d         	movs	r5, r7
  409dc0: 0b70         	lsrs	r0, r6, #0xd
  409dc2: 003d         	movs	r5, r7
  409dc4: 0b50         	lsrs	r0, r2, #0xd
  409dc6: 003d         	movs	r5, r7

// ==== TrainingStage::updateStep
//      file offset 0x409dc8 (= ELF address; Ghidra 0x419dc8), 100 bytes, Thumb-2
  409dc8: b510         	push	{r4, lr}
  409dca: b082         	sub	sp, #0x8
  409dcc: 9001         	str	r0, [sp, #0x4]
  409dce: 9100         	str	r1, [sp]
  409dd0: 4c14         	ldr	r4, [pc, #0x50]         @ 0x409e24 <TrainingStage::updateStep(float)+0x5c>
  409dd2: 447c         	add	r4, pc
  409dd4: 9b01         	ldr	r3, [sp, #0x4]
  409dd6: 4618         	mov	r0, r3
  409dd8: 9900         	ldr	r1, [sp]
  409dda: f7f3 f8cd    	bl	0x3fcf78 <Stage::updateStep(float)> @ imm = #-0xce66
  409dde: 4b12         	ldr	r3, [pc, #0x48]         @ 0x409e28 <TrainingStage::updateStep(float)+0x60>
  409de0: 58e3         	ldr	r3, [r4, r3]
  409de2: 781b         	ldrb	r3, [r3]
  409de4: f083 0301    	eor	r3, r3, #0x1
  409de8: b2db         	uxtb	r3, r3
  409dea: 2b00         	cmp	r3, #0x0
  409dec: d017         	beq	0x409e1e <TrainingStage::updateStep(float)+0x56> @ imm = #0x2e
  409dee: 9b01         	ldr	r3, [sp, #0x4]
  409df0: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  409df4: 681b         	ldr	r3, [r3]
  409df6: f503 73ee    	add.w	r3, r3, #0x1dc
  409dfa: 681b         	ldr	r3, [r3]
  409dfc: 9a01         	ldr	r2, [sp, #0x4]
  409dfe: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  409e02: 4610         	mov	r0, r2
  409e04: 9900         	ldr	r1, [sp]
  409e06: 4798         	blx	r3
  409e08: 9b01         	ldr	r3, [sp, #0x4]
  409e0a: f8d3 31a4    	ldr.w	r3, [r3, #0x1a4]
  409e0e: 4618         	mov	r0, r3
  409e10: 9900         	ldr	r1, [sp]
  409e12: f70f fc93    	bl	0x31973c <EnemyManager::updateStep(float)> @ imm = #-0xf06da
  409e16: 9801         	ldr	r0, [sp, #0x4]
  409e18: 9900         	ldr	r1, [sp]
  409e1a: f000 fa5d    	bl	0x40a2d8 <TrainingStage::doLesson(float)> @ imm = #0x4ba
  409e1e: b002         	add	sp, #0x8
  409e20: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x409e21); words below are literal-pool data ---
  409e22: bf00         	nop
  409e24: 8c36         	ldrh	r6, [r6, #0x20]
  409e26: 0052         	lsls	r2, r2, #0x1
  409e28: db18         	blt	0x409e5c <TrainingStage::headChatter(float)+0x2c> @ imm = #0x30
  409e2a: ffff 0000    	<unknown>

// ==== TrainingStage::headChatter
//      file offset 0x409e30 (= ELF address; Ghidra 0x419e30), 172 bytes, Thumb-2
  409e30: b500         	push	{lr}
  409e32: b083         	sub	sp, #0xc
  409e34: 9001         	str	r0, [sp, #0x4]
  409e36: 9100         	str	r1, [sp]
  409e38: 9b01         	ldr	r3, [sp, #0x4]
  409e3a: edd3 7a61    	vldr	s15, [r3, #388]
  409e3e: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  409e42: ed9f 7b23    	vldr	d7, [pc, #140]          @ 0x409ed0 <TrainingStage::headChatter(float)+0xa0>
  409e46: ee26 7b07    	vmul.f64	d7, d6, d7
  409e4a: eef7 7bc7    	vcvt.f32.f64	s15, d7
  409e4e: 9b01         	ldr	r3, [sp, #0x4]
  409e50: edc3 7a61    	vstr	s15, [r3, #388]
  409e54: f7fe fafa    	bl	0x40844c <Tracer::checkCollision()+0x3c0> @ imm = #-0x1a0c
  409e58: 4603         	mov	r3, r0
  409e5a: ee07 3a90    	vmov	s15, r3
  409e5e: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  409e62: eddf 7a1d    	vldr	s15, [pc, #116]         @ 0x409ed8 <TrainingStage::headChatter(float)+0xa8>
  409e66: ee87 7a27    	vdiv.f32	s14, s14, s15
  409e6a: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  409e6e: ee77 7a67    	vsub.f32	s15, s14, s15
  409e72: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  409e76: ed9f 7b16    	vldr	d7, [pc, #88]           @ 0x409ed0 <TrainingStage::headChatter(float)+0xa0>
  409e7a: eeb4 6bc7    	vcmpe.f64	d6, d7
  409e7e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  409e82: bfd4         	ite	le
  409e84: 2300         	movle	r3, #0x0
  409e86: 2301         	movgt	r3, #0x1
  409e88: b2db         	uxtb	r3, r3
  409e8a: 2b00         	cmp	r3, #0x0
  409e8c: d006         	beq	0x409e9c <TrainingStage::headChatter(float)+0x6c> @ imm = #0xc
  409e8e: 9b01         	ldr	r3, [sp, #0x4]
  409e90: f04f 0200    	mov.w	r2, #0x0
  409e94: f2c4 1220    	movt	r2, #0x4120
  409e98: f8c3 2184    	str.w	r2, [r3, #0x184]
  409e9c: 9b01         	ldr	r3, [sp, #0x4]
  409e9e: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  409ea2: 681b         	ldr	r3, [r3]
  409ea4: f503 73ec    	add.w	r3, r3, #0x1d8
  409ea8: 681b         	ldr	r3, [r3]
  409eaa: 9a01         	ldr	r2, [sp, #0x4]
  409eac: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  409eb0: 4610         	mov	r0, r2
  409eb2: 4798         	blx	r3
  409eb4: 4603         	mov	r3, r0
  409eb6: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  409eba: 681a         	ldr	r2, [r3]
  409ebc: 3298         	adds	r2, #0x98
  409ebe: 6812         	ldr	r2, [r2]
  409ec0: 9901         	ldr	r1, [sp, #0x4]
  409ec2: f8d1 1184    	ldr.w	r1, [r1, #0x184]
  409ec6: 4618         	mov	r0, r3
  409ec8: 4790         	blx	r2
  409eca: b003         	add	sp, #0xc
  409ecc: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x409ecf); words below are literal-pool data ---
  409ed0: cccd         	ldm	r4!, {r0, r2, r3, r6, r7}
  409ed2: cccc         	ldm	r4!, {r2, r3, r6, r7}
  409ed4: cccc         	ldm	r4!, {r2, r3, r6, r7}
  409ed6: 3fec         	subs	r7, #0xec
  409ed8: 0000         	movs	r0, r0
  409eda: 4e80         	ldr	r6, [pc, #0x200]        @ 0x40a0dc <TrainingStage::runFireLesson(float)+0x1fc>

// ==== TrainingStage::runFireLesson
//      file offset 0x409ee0 (= ELF address; Ghidra 0x419ee0), 1016 bytes, Thumb-2
  409ee0: b530         	push	{r4, r5, lr}
  409ee2: b097         	sub	sp, #0x5c
  409ee4: 9001         	str	r0, [sp, #0x4]
  409ee6: 9100         	str	r1, [sp]
  409ee8: 9b01         	ldr	r3, [sp, #0x4]
  409eea: ed93 7a66    	vldr	s14, [r3, #408]
  409eee: eddd 7a00    	vldr	s15, [sp]
  409ef2: ee77 7a27    	vadd.f32	s15, s14, s15
  409ef6: 9b01         	ldr	r3, [sp, #0x4]
  409ef8: edc3 7a66    	vstr	s15, [r3, #408]
  409efc: 9b01         	ldr	r3, [sp, #0x4]
  409efe: f8d3 3178    	ldr.w	r3, [r3, #0x178]
  409f02: 681b         	ldr	r3, [r3]
  409f04: f503 73fc    	add.w	r3, r3, #0x1f8
  409f08: 681b         	ldr	r3, [r3]
  409f0a: 9a01         	ldr	r2, [sp, #0x4]
  409f0c: f8d2 2178    	ldr.w	r2, [r2, #0x178]
  409f10: 4610         	mov	r0, r2
  409f12: 4aee         	ldr	r2, [pc, #0x3b8]        @ 0x40a2cc <TrainingStage::runFireLesson(float)+0x3ec>
  409f14: 447a         	add	r2, pc
  409f16: 4611         	mov	r1, r2
  409f18: 4798         	blx	r3
  409f1a: 2301         	movs	r3, #0x1
  409f1c: 9303         	str	r3, [sp, #0xc]
  409f1e: 9b01         	ldr	r3, [sp, #0x4]
  409f20: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  409f24: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  409f28: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  409f2c: 681b         	ldr	r3, [r3]
  409f2e: 3390         	adds	r3, #0x90
  409f30: 681b         	ldr	r3, [r3]
  409f32: 9a01         	ldr	r2, [sp, #0x4]
  409f34: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  409f38: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  409f3c: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  409f40: 4610         	mov	r0, r2
  409f42: 2100         	movs	r1, #0x0
  409f44: 4798         	blx	r3
  409f46: 9b01         	ldr	r3, [sp, #0x4]
  409f48: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  409f4c: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  409f50: 2200         	movs	r2, #0x0
  409f52: f883 212e    	strb.w	r2, [r3, #0x12e]
  409f56: 9b01         	ldr	r3, [sp, #0x4]
  409f58: f893 3194    	ldrb.w	r3, [r3, #0x194]
  409f5c: 2b00         	cmp	r3, #0x0
  409f5e: f000 8082    	beq.w	0x40a066 <TrainingStage::runFireLesson(float)+0x186> @ imm = #0x104
  409f62: 9b01         	ldr	r3, [sp, #0x4]
  409f64: edd3 7a67    	vldr	s15, [r3, #412]
  409f68: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  409f6c: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
  409f70: ee36 6b47    	vsub.f64	d6, d6, d7
  409f74: eeb2 7b04    	vmov.f64	d7, #1.000000e+01
  409f78: eeb4 6bc7    	vcmpe.f64	d6, d7
  409f7c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  409f80: dd0b         	ble	0x409f9a <TrainingStage::runFireLesson(float)+0xba> @ imm = #0x16
  409f82: 9b01         	ldr	r3, [sp, #0x4]
  409f84: edd3 7a67    	vldr	s15, [r3, #412]
  409f88: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  409f8c: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
  409f90: ee36 7b47    	vsub.f64	d7, d6, d7
  409f94: eef7 7bc7    	vcvt.f32.f64	s15, d7
  409f98: e001         	b	0x409f9e <TrainingStage::runFireLesson(float)+0xbe> @ imm = #0x2
  409f9a: eef2 7a04    	vmov.f32	s15, #1.000000e+01
  409f9e: 9b01         	ldr	r3, [sp, #0x4]
  409fa0: edc3 7a67    	vstr	s15, [r3, #412]
  409fa4: 2303         	movs	r3, #0x3
  409fa6: 9303         	str	r3, [sp, #0xc]
  409fa8: 9b01         	ldr	r3, [sp, #0x4]
  409faa: ed93 7a67    	vldr	s14, [r3, #412]
  409fae: eef2 7a04    	vmov.f32	s15, #1.000000e+01
  409fb2: eeb4 7a67    	vcmp.f32	s14, s15
  409fb6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  409fba: d13f         	bne	0x40a03c <TrainingStage::runFireLesson(float)+0x15c> @ imm = #0x7e
  409fbc: 9b01         	ldr	r3, [sp, #0x4]
  409fbe: ed93 7a68    	vldr	s14, [r3, #416]
  409fc2: 9b03         	ldr	r3, [sp, #0xc]
  409fc4: ee07 3a90    	vmov	s15, r3
  409fc8: eef8 6ae7    	vcvt.f32.s32	s13, s15
  409fcc: eddd 7a00    	vldr	s15, [sp]
  409fd0: ee66 7aa7    	vmul.f32	s15, s13, s15
  409fd4: ee77 7a27    	vadd.f32	s15, s14, s15
  409fd8: 9b01         	ldr	r3, [sp, #0x4]
  409fda: edc3 7a68    	vstr	s15, [r3, #416]
  409fde: 9b01         	ldr	r3, [sp, #0x4]
  409fe0: f8d3 3178    	ldr.w	r3, [r3, #0x178]
  409fe4: 681b         	ldr	r3, [r3]
  409fe6: f503 73fc    	add.w	r3, r3, #0x1f8
  409fea: 681b         	ldr	r3, [r3]
  409fec: 9a01         	ldr	r2, [sp, #0x4]
  409fee: f8d2 2178    	ldr.w	r2, [r2, #0x178]
  409ff2: 4610         	mov	r0, r2
  409ff4: 4ab6         	ldr	r2, [pc, #0x2d8]        @ 0x40a2d0 <TrainingStage::runFireLesson(float)+0x3f0>
  409ff6: 447a         	add	r2, pc
  409ff8: 4611         	mov	r1, r2
  409ffa: 4798         	blx	r3
  409ffc: 9b01         	ldr	r3, [sp, #0x4]
  409ffe: f8d3 3178    	ldr.w	r3, [r3, #0x178]
  40a002: 681b         	ldr	r3, [r3]
  40a004: f503 73de    	add.w	r3, r3, #0x1bc
  40a008: 681c         	ldr	r4, [r3]
  40a00a: 9b01         	ldr	r3, [sp, #0x4]
  40a00c: f8d3 3178    	ldr.w	r3, [r3, #0x178]
  40a010: 461d         	mov	r5, r3
  40a012: 20ff         	movs	r0, #0xff
  40a014: 21ff         	movs	r1, #0xff
  40a016: 2200         	movs	r2, #0x0
  40a018: f7fe fa1e    	bl	0x408458 <Tracer::checkCollision()+0x3cc> @ imm = #-0x1bc4
  40a01c: 4603         	mov	r3, r0
  40a01e: 461a         	mov	r2, r3
  40a020: f88d 2048    	strb.w	r2, [sp, #0x48]
  40a024: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  40a028: f88d 2049    	strb.w	r2, [sp, #0x49]
  40a02c: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  40a030: f88d 304a    	strb.w	r3, [sp, #0x4a]
  40a034: ab12         	add	r3, sp, #0x48
  40a036: 4628         	mov	r0, r5
  40a038: 4619         	mov	r1, r3
  40a03a: 47a0         	blx	r4
  40a03c: 9b01         	ldr	r3, [sp, #0x4]
  40a03e: ed93 7a66    	vldr	s14, [r3, #408]
  40a042: eef1 7a00    	vmov.f32	s15, #4.000000e+00
  40a046: eeb4 7ae7    	vcmpe.f32	s14, s15
  40a04a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40a04e: f340 80a4    	ble.w	0x40a19a <TrainingStage::runFireLesson(float)+0x2ba> @ imm = #0x148
  40a052: 9b01         	ldr	r3, [sp, #0x4]
  40a054: 2200         	movs	r2, #0x0
  40a056: f883 2194    	strb.w	r2, [r3, #0x194]
  40a05a: 9b01         	ldr	r3, [sp, #0x4]
  40a05c: f04f 0200    	mov.w	r2, #0x0
  40a060: f8c3 2198    	str.w	r2, [r3, #0x198]
  40a064: e099         	b	0x40a19a <TrainingStage::runFireLesson(float)+0x2ba> @ imm = #0x132
  40a066: 9b01         	ldr	r3, [sp, #0x4]
  40a068: edd3 7a67    	vldr	s15, [r3, #412]
  40a06c: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  40a070: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
  40a074: ee36 6b07    	vadd.f64	d6, d6, d7
  40a078: ed9f 7b91    	vldr	d7, [pc, #580]          @ 0x40a2c0 <TrainingStage::runFireLesson(float)+0x3e0>
  40a07c: eeb4 6bc7    	vcmpe.f64	d6, d7
  40a080: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40a084: d50b         	bpl	0x40a09e <TrainingStage::runFireLesson(float)+0x1be> @ imm = #0x16
  40a086: 9b01         	ldr	r3, [sp, #0x4]
  40a088: edd3 7a67    	vldr	s15, [r3, #412]
  40a08c: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  40a090: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
  40a094: ee36 7b07    	vadd.f64	d7, d6, d7
  40a098: eef7 7bc7    	vcvt.f32.f64	s15, d7
  40a09c: e001         	b	0x40a0a2 <TrainingStage::runFireLesson(float)+0x1c2> @ imm = #0x2
  40a09e: eddf 7a8a    	vldr	s15, [pc, #552]         @ 0x40a2c8 <TrainingStage::runFireLesson(float)+0x3e8>
  40a0a2: 9b01         	ldr	r3, [sp, #0x4]
  40a0a4: edc3 7a67    	vstr	s15, [r3, #412]
  40a0a8: 9b01         	ldr	r3, [sp, #0x4]
  40a0aa: ed93 7a67    	vldr	s14, [r3, #412]
  40a0ae: eddf 7a86    	vldr	s15, [pc, #536]         @ 0x40a2c8 <TrainingStage::runFireLesson(float)+0x3e8>
  40a0b2: eeb4 7a67    	vcmp.f32	s14, s15
  40a0b6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40a0ba: d15b         	bne	0x40a174 <TrainingStage::runFireLesson(float)+0x294> @ imm = #0xb6
  40a0bc: 9b01         	ldr	r3, [sp, #0x4]
  40a0be: f8d3 3178    	ldr.w	r3, [r3, #0x178]
  40a0c2: 681b         	ldr	r3, [r3]
  40a0c4: f503 73fc    	add.w	r3, r3, #0x1f8
  40a0c8: 681b         	ldr	r3, [r3]
  40a0ca: 9a01         	ldr	r2, [sp, #0x4]
  40a0cc: f8d2 2178    	ldr.w	r2, [r2, #0x178]
  40a0d0: 4610         	mov	r0, r2
  40a0d2: 4a80         	ldr	r2, [pc, #0x200]        @ 0x40a2d4 <TrainingStage::runFireLesson(float)+0x3f4>
  40a0d4: 447a         	add	r2, pc
  40a0d6: 4611         	mov	r1, r2
  40a0d8: 4798         	blx	r3
  40a0da: 9b01         	ldr	r3, [sp, #0x4]
  40a0dc: f8d3 3178    	ldr.w	r3, [r3, #0x178]
  40a0e0: 681b         	ldr	r3, [r3]
  40a0e2: f503 73de    	add.w	r3, r3, #0x1bc
  40a0e6: 681c         	ldr	r4, [r3]
  40a0e8: 9b01         	ldr	r3, [sp, #0x4]
  40a0ea: f8d3 3178    	ldr.w	r3, [r3, #0x178]
  40a0ee: 461d         	mov	r5, r3
  40a0f0: 20ff         	movs	r0, #0xff
  40a0f2: 2100         	movs	r1, #0x0
  40a0f4: 2200         	movs	r2, #0x0
  40a0f6: f7fe f9af    	bl	0x408458 <Tracer::checkCollision()+0x3cc> @ imm = #-0x1ca2
  40a0fa: 4603         	mov	r3, r0
  40a0fc: 461a         	mov	r2, r3
  40a0fe: f88d 2048    	strb.w	r2, [sp, #0x48]
  40a102: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  40a106: f88d 2049    	strb.w	r2, [sp, #0x49]
  40a10a: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  40a10e: f88d 304a    	strb.w	r3, [sp, #0x4a]
  40a112: ab12         	add	r3, sp, #0x48
  40a114: 4628         	mov	r0, r5
  40a116: 4619         	mov	r1, r3
  40a118: 47a0         	blx	r4
  40a11a: 9b01         	ldr	r3, [sp, #0x4]
  40a11c: ed93 7a68    	vldr	s14, [r3, #416]
  40a120: 9b03         	ldr	r3, [sp, #0xc]
  40a122: ee07 3a90    	vmov	s15, r3
  40a126: eef8 6ae7    	vcvt.f32.s32	s13, s15
  40a12a: eddd 7a00    	vldr	s15, [sp]
  40a12e: ee66 7aa7    	vmul.f32	s15, s13, s15
  40a132: ee77 7a27    	vadd.f32	s15, s14, s15
  40a136: 9b01         	ldr	r3, [sp, #0x4]
  40a138: edc3 7a68    	vstr	s15, [r3, #416]
  40a13c: 9b01         	ldr	r3, [sp, #0x4]
  40a13e: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  40a142: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  40a146: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  40a14a: 681b         	ldr	r3, [r3]
  40a14c: 3390         	adds	r3, #0x90
  40a14e: 681b         	ldr	r3, [r3]
  40a150: 9a01         	ldr	r2, [sp, #0x4]
  40a152: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  40a156: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  40a15a: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  40a15e: 4610         	mov	r0, r2
  40a160: 2101         	movs	r1, #0x1
  40a162: 4798         	blx	r3
  40a164: 9b01         	ldr	r3, [sp, #0x4]
  40a166: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  40a16a: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  40a16e: 2201         	movs	r2, #0x1
  40a170: f883 212e    	strb.w	r2, [r3, #0x12e]
  40a174: 9b01         	ldr	r3, [sp, #0x4]
  40a176: ed93 7a66    	vldr	s14, [r3, #408]
  40a17a: eef0 7a08    	vmov.f32	s15, #3.000000e+00
  40a17e: eeb4 7ae7    	vcmpe.f32	s14, s15
  40a182: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40a186: dd08         	ble	0x40a19a <TrainingStage::runFireLesson(float)+0x2ba> @ imm = #0x10
  40a188: 9b01         	ldr	r3, [sp, #0x4]
  40a18a: 2201         	movs	r2, #0x1
  40a18c: f883 2194    	strb.w	r2, [r3, #0x194]
  40a190: 9b01         	ldr	r3, [sp, #0x4]
  40a192: f04f 0200    	mov.w	r2, #0x0
  40a196: f8c3 2198    	str.w	r2, [r3, #0x198]
  40a19a: 9b01         	ldr	r3, [sp, #0x4]
  40a19c: edd3 7a68    	vldr	s15, [r3, #416]
  40a1a0: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  40a1a4: ec51 0b17    	vmov	r0, r1, d7
  40a1a8: f6cb eeae    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x1342a4
  40a1ac: 4604         	mov	r4, r0
  40a1ae: 460d         	mov	r5, r1
  40a1b0: 9b01         	ldr	r3, [sp, #0x4]
  40a1b2: edd3 7a68    	vldr	s15, [r3, #416]
  40a1b6: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  40a1ba: ec51 0b17    	vmov	r0, r1, d7
  40a1be: f6cb eeaa    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x1342ac
  40a1c2: 4602         	mov	r2, r0
  40a1c4: 460b         	mov	r3, r1
  40a1c6: a90e         	add	r1, sp, #0x38
  40a1c8: 4608         	mov	r0, r1
  40a1ca: ec45 4b10    	vmov	d0, r4, r5
  40a1ce: ec43 2b11    	vmov	d1, r2, r3
  40a1d2: f7fe f97f    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x1d02
  40a1d6: 9b01         	ldr	r3, [sp, #0x4]
  40a1d8: edd3 7a67    	vldr	s15, [r3, #412]
  40a1dc: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  40a1e0: ab06         	add	r3, sp, #0x18
  40a1e2: ed9d 5b0e    	vldr	d5, [sp, #56]
  40a1e6: ed9d 6b10    	vldr	d6, [sp, #64]
  40a1ea: 4618         	mov	r0, r3
  40a1ec: eeb0 0b45    	vmov.f64	d0, d5
  40a1f0: eeb0 1b46    	vmov.f64	d1, d6
  40a1f4: eeb0 2b47    	vmov.f64	d2, d7
  40a1f8: f7fe f9d8    	bl	0x4085ac <Tracer::checkCollision()+0x520> @ imm = #-0x1c50
  40a1fc: 9b01         	ldr	r3, [sp, #0x4]
  40a1fe: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  40a202: f8d3 40f4    	ldr.w	r4, [r3, #0xf4]
  40a206: ab06         	add	r3, sp, #0x18
  40a208: cb0f         	ldm	r3, {r0, r1, r2, r3}
  40a20a: f7fe fa79    	bl	0x408700 <Tracer::checkCollision()+0x674> @ imm = #-0x1b0e
  40a20e: 4603         	mov	r3, r0
  40a210: f8c4 3124    	str.w	r3, [r4, #0x124]
  40a214: 9b01         	ldr	r3, [sp, #0x4]
  40a216: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  40a21a: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  40a21e: edd3 7a3f    	vldr	s15, [r3, #252]
  40a222: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  40a226: 9b01         	ldr	r3, [sp, #0x4]
  40a228: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  40a22c: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  40a230: edd3 7a40    	vldr	s15, [r3, #256]
  40a234: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  40a238: ab12         	add	r3, sp, #0x48
  40a23a: 4618         	mov	r0, r3
  40a23c: eeb0 0b46    	vmov.f64	d0, d6
  40a240: eeb0 1b47    	vmov.f64	d1, d7
  40a244: f7fe f946    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x1d74
  40a248: ab0a         	add	r3, sp, #0x28
  40a24a: ed9d 4b06    	vldr	d4, [sp, #24]
  40a24e: ed9d 5b08    	vldr	d5, [sp, #32]
  40a252: ed9d 6b12    	vldr	d6, [sp, #72]
  40a256: ed9d 7b14    	vldr	d7, [sp, #80]
  40a25a: 4618         	mov	r0, r3
  40a25c: eeb0 0b44    	vmov.f64	d0, d4
  40a260: eeb0 1b45    	vmov.f64	d1, d5
  40a264: eeb0 2b46    	vmov.f64	d2, d6
  40a268: eeb0 3b47    	vmov.f64	d3, d7
  40a26c: f7fe f946    	bl	0x4084fc <Tracer::checkCollision()+0x470> @ imm = #-0x1d74
  40a270: 9b01         	ldr	r3, [sp, #0x4]
  40a272: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  40a276: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  40a27a: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  40a27e: 681b         	ldr	r3, [r3]
  40a280: 334c         	adds	r3, #0x4c
  40a282: 681c         	ldr	r4, [r3]
  40a284: 9b01         	ldr	r3, [sp, #0x4]
  40a286: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  40a28a: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  40a28e: f8d3 50e8    	ldr.w	r5, [r3, #0xe8]
  40a292: ed9d 7b0a    	vldr	d7, [sp, #40]
  40a296: eef7 6bc7    	vcvt.f32.f64	s13, d7
  40a29a: ed9d 7b0c    	vldr	d7, [sp, #48]
  40a29e: eef7 7bc7    	vcvt.f32.f64	s15, d7
  40a2a2: ab04         	add	r3, sp, #0x10
  40a2a4: 4618         	mov	r0, r3
  40a2a6: ee16 1a90    	vmov	r1, s13
  40a2aa: ee17 2a90    	vmov	r2, s15
  40a2ae: f188 fd1f    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x188a3e
  40a2b2: ab04         	add	r3, sp, #0x10
  40a2b4: 4628         	mov	r0, r5
  40a2b6: 4619         	mov	r1, r3
  40a2b8: 47a0         	blx	r4
  40a2ba: b017         	add	sp, #0x5c
  40a2bc: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x40a2bd); words below are literal-pool data ---
  40a2be: bf00         	nop
  40a2c0: 0000         	movs	r0, r0
  40a2c2: 0000         	movs	r0, r0
  40a2c4: 8000         	strh	r0, [r0]
  40a2c6: 4041         	eors	r1, r0
  40a2c8: 0000         	movs	r0, r0
  40a2ca: 420c         	tst	r4, r1
  40a2cc: 0940         	lsrs	r0, r0, #0x5
  40a2ce: 003d         	movs	r5, r7
  40a2d0: 08aa         	lsrs	r2, r5, #0x2
  40a2d2: 003d         	movs	r5, r7
  40a2d4: 07d0         	lsls	r0, r2, #0x1f
  40a2d6: 003d         	movs	r5, r7

// ==== TrainingStage::doLesson
//      file offset 0x40a2d8 (= ELF address; Ghidra 0x41a2d8), 31810 bytes, Thumb-2
  40a2d8: b5f0         	push	{r4, r5, r6, r7, lr}
  40a2da: f2ad 4d24    	subw	sp, sp, #0x424
  40a2de: ab07         	add	r3, sp, #0x1c
  40a2e0: 6018         	str	r0, [r3]
  40a2e2: ab06         	add	r3, sp, #0x18
  40a2e4: 6019         	str	r1, [r3]
  40a2e6: 4c74         	ldr	r4, [pc, #0x1d0]        @ 0x40a4b8 <TrainingStage::doLesson(float)+0x1e0>
  40a2e8: 447c         	add	r4, pc
  40a2ea: a938         	add	r1, sp, #0xe0
  40a2ec: f04f 0200    	mov.w	r2, #0x0
  40a2f0: f04f 0300    	mov.w	r3, #0x0
  40a2f4: e9c1 2300    	strd	r2, r3, [r1]
  40a2f8: a938         	add	r1, sp, #0xe0
  40a2fa: f04f 0200    	mov.w	r2, #0x0
  40a2fe: f04f 0300    	mov.w	r3, #0x0
  40a302: e9c1 2302    	strd	r2, r3, [r1, #8]
  40a306: 4b6d         	ldr	r3, [pc, #0x1b4]        @ 0x40a4bc <TrainingStage::doLesson(float)+0x1e4>
  40a308: 58e3         	ldr	r3, [r4, r3]
  40a30a: 681b         	ldr	r3, [r3]
  40a30c: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  40a310: ed93 6b0a    	vldr	d6, [r3, #40]
  40a314: ed9f 7b64    	vldr	d7, [pc, #400]          @ 0x40a4a8 <TrainingStage::doLesson(float)+0x1d0>
  40a318: eeb4 6bc7    	vcmpe.f64	d6, d7
  40a31c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40a320: d518         	bpl	0x40a354 <TrainingStage::doLesson(float)+0x7c> @ imm = #0x30
  40a322: 4b66         	ldr	r3, [pc, #0x198]        @ 0x40a4bc <TrainingStage::doLesson(float)+0x1e4>
  40a324: 58e3         	ldr	r3, [r4, r3]
  40a326: 681b         	ldr	r3, [r3]
  40a328: f8d3 5138    	ldr.w	r5, [r3, #0x138]
  40a32c: 4b63         	ldr	r3, [pc, #0x18c]        @ 0x40a4bc <TrainingStage::doLesson(float)+0x1e4>
  40a32e: 58e3         	ldr	r3, [r4, r3]
  40a330: 681b         	ldr	r3, [r3]
  40a332: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  40a336: ed93 7b0c    	vldr	d7, [r3, #48]
  40a33a: ab02         	add	r3, sp, #0x8
  40a33c: 4618         	mov	r0, r3
  40a33e: ed9f 0b5a    	vldr	d0, [pc, #360]          @ 0x40a4a8 <TrainingStage::doLesson(float)+0x1d0>
  40a342: eeb0 1b47    	vmov.f64	d1, d7
  40a346: f7fe f8c5    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x1e76
  40a34a: ab02         	add	r3, sp, #0x8
  40a34c: 3528         	adds	r5, #0x28
  40a34e: cb0f         	ldm	r3, {r0, r1, r2, r3}
  40a350: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  40a354: 4b59         	ldr	r3, [pc, #0x164]        @ 0x40a4bc <TrainingStage::doLesson(float)+0x1e4>
  40a356: 58e3         	ldr	r3, [r4, r3]
  40a358: 681b         	ldr	r3, [r3]
  40a35a: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  40a35e: ed93 6b0a    	vldr	d6, [r3, #40]
  40a362: ed9f 7b53    	vldr	d7, [pc, #332]          @ 0x40a4b0 <TrainingStage::doLesson(float)+0x1d8>
  40a366: eeb4 6bc7    	vcmpe.f64	d6, d7
  40a36a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40a36e: dd18         	ble	0x40a3a2 <TrainingStage::doLesson(float)+0xca> @ imm = #0x30
  40a370: 4b52         	ldr	r3, [pc, #0x148]        @ 0x40a4bc <TrainingStage::doLesson(float)+0x1e4>
  40a372: 58e3         	ldr	r3, [r4, r3]
  40a374: 681b         	ldr	r3, [r3]
  40a376: f8d3 5138    	ldr.w	r5, [r3, #0x138]
  40a37a: 4b50         	ldr	r3, [pc, #0x140]        @ 0x40a4bc <TrainingStage::doLesson(float)+0x1e4>
  40a37c: 58e3         	ldr	r3, [r4, r3]
  40a37e: 681b         	ldr	r3, [r3]
  40a380: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  40a384: ed93 7b0c    	vldr	d7, [r3, #48]
  40a388: ab02         	add	r3, sp, #0x8
  40a38a: 4618         	mov	r0, r3
  40a38c: ed9f 0b48    	vldr	d0, [pc, #288]          @ 0x40a4b0 <TrainingStage::doLesson(float)+0x1d8>
  40a390: eeb0 1b47    	vmov.f64	d1, d7
  40a394: f7fe f89e    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x1ec4
  40a398: ab02         	add	r3, sp, #0x8
  40a39a: 3528         	adds	r5, #0x28
  40a39c: cb0f         	ldm	r3, {r0, r1, r2, r3}
  40a39e: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  40a3a2: ab34         	add	r3, sp, #0xd0
  40a3a4: 2200         	movs	r2, #0x0
  40a3a6: 601a         	str	r2, [r3]
  40a3a8: ab07         	add	r3, sp, #0x1c
  40a3aa: 681b         	ldr	r3, [r3]
  40a3ac: ed93 7a62    	vldr	s14, [r3, #392]
  40a3b0: ab06         	add	r3, sp, #0x18
  40a3b2: edd3 7a00    	vldr	s15, [r3]
  40a3b6: ee77 7a27    	vadd.f32	s15, s14, s15
  40a3ba: ab07         	add	r3, sp, #0x1c
  40a3bc: 681b         	ldr	r3, [r3]
  40a3be: edc3 7a62    	vstr	s15, [r3, #392]
  40a3c2: ab07         	add	r3, sp, #0x1c
  40a3c4: 681b         	ldr	r3, [r3]
  40a3c6: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  40a3ca: 2b32         	cmp	r3, #0x32
  40a3cc: f207 85a1    	bhi.w	0x411f12 <TrainingStage::doLesson(float)+0x7c3a> @ imm = #0x7b42
  40a3d0: a102         	adr	r1, #8 <TrainingStage::doLesson(float)+0xfe>
  40a3d2: f851 2023    	ldr.w	r2, [r1, r3, lsl #2]
  40a3d6: 4411         	add	r1, r2
  40a3d8: 4708         	bx	r1
  40a3da: bf00         	nop
  40a3dc: 00e5         	lsls	r5, r4, #0x3
  40a3de: 0000         	movs	r0, r0
  40a3e0: 0419         	lsls	r1, r3, #0x10
  40a3e2: 0000         	movs	r0, r0
  40a3e4: 05c3         	lsls	r3, r0, #0x17
  40a3e6: 0000         	movs	r0, r0
  40a3e8: 06dd         	lsls	r5, r3, #0x1b
  40a3ea: 0000         	movs	r0, r0
  40a3ec: 07ff         	lsls	r7, r7, #0x1f
  40a3ee: 0000         	movs	r0, r0
  40a3f0: 0921         	lsrs	r1, r4, #0x4
  40a3f2: 0000         	movs	r0, r0
  40a3f4: 0a53         	lsrs	r3, r2, #0x9
  40a3f6: 0000         	movs	r0, r0
  40a3f8: 0b85         	lsrs	r5, r0, #0xe
  40a3fa: 0000         	movs	r0, r0
  40a3fc: 0e4d         	lsrs	r5, r1, #0x19
  40a3fe: 0000         	movs	r0, r0
  40a400: 0f67         	lsrs	r7, r4, #0x1d
  40a402: 0000         	movs	r0, r0
  40a404: 13cb         	asrs	r3, r1, #0xf
  40a406: 0000         	movs	r0, r0
  40a408: 1575         	asrs	r5, r6, #0x15
  40a40a: 0000         	movs	r0, r0
  40a40c: 1805         	adds	r5, r0, r0
  40a40e: 0000         	movs	r0, r0
  40a410: 1955         	adds	r5, r2, r5
  40a412: 0000         	movs	r0, r0
  40a414: 1b93         	subs	r3, r2, r6
  40a416: 0000         	movs	r0, r0
  40a418: 1cb5         	adds	r5, r6, #0x2
  40a41a: 0000         	movs	r0, r0
  40a41c: 1eff         	subs	r7, r7, #0x3
  40a41e: 0000         	movs	r0, r0
  40a420: 2061         	movs	r0, #0x61
  40a422: 0000         	movs	r0, r0
  40a424: 22af         	movs	r2, #0xaf
  40a426: 0000         	movs	r0, r0
  40a428: 23dd         	movs	r3, #0xdd
  40a42a: 0000         	movs	r0, r0
  40a42c: 25ef         	movs	r5, #0xef
  40a42e: 0000         	movs	r0, r0
  40a430: 2a7d         	cmp	r2, #0x7d
  40a432: 0000         	movs	r0, r0
  40a434: 2b87         	cmp	r3, #0x87
  40a436: 0000         	movs	r0, r0
  40a438: 2c8d         	cmp	r4, #0x8d
  40a43a: 0000         	movs	r0, r0
  40a43c: 2df7         	cmp	r5, #0xf7
  40a43e: 0000         	movs	r0, r0
  40a440: 30c3         	adds	r0, #0xc3
  40a442: 0000         	movs	r0, r0
  40a444: 32bb         	adds	r2, #0xbb
  40a446: 0000         	movs	r0, r0
  40a448: 361d         	adds	r6, #0x1d
  40a44a: 0000         	movs	r0, r0
  40a44c: 3a0f         	subs	r2, #0xf
  40a44e: 0000         	movs	r0, r0
  40a450: 3b29         	subs	r3, #0x29
  40a452: 0000         	movs	r0, r0
  40a454: 3c5d         	subs	r4, #0x5d
  40a456: 0000         	movs	r0, r0
  40a458: 3da7         	subs	r5, #0xa7
  40a45a: 0000         	movs	r0, r0
  40a45c: 3ea5         	subs	r6, #0xa5
  40a45e: 0000         	movs	r0, r0
  40a460: 3fbf         	subs	r7, #0xbf
  40a462: 0000         	movs	r0, r0
  40a464: 428d         	cmp	r5, r1
  40a466: 0000         	movs	r0, r0
  40a468: 4571         	cmp	r1, lr
  40a46a: 0000         	movs	r0, r0
  40a46c: 4869         	ldr	r0, [pc, #0x1a4]        @ 0x40a614 <TrainingStage::doLesson(float)+0x33c>
  40a46e: 0000         	movs	r0, r0
  40a470: 4b79         	ldr	r3, [pc, #0x1e4]        @ 0x40a658 <TrainingStage::doLesson(float)+0x380>
  40a472: 0000         	movs	r0, r0
  40a474: 5239         	strh	r1, [r7, r0]
  40a476: 0000         	movs	r0, r0
  40a478: 5869         	ldr	r1, [r5, r1]
  40a47a: 0000         	movs	r0, r0
  40a47c: 5be9         	ldrh	r1, [r5, r7]
  40a47e: 0000         	movs	r0, r0
  40a480: 5db7         	ldrb	r7, [r6, r6]
  40a482: 0000         	movs	r0, r0
  40a484: 6031         	str	r1, [r6]
  40a486: 0000         	movs	r0, r0
  40a488: 621f         	str	r7, [r3, #0x20]
  40a48a: 0000         	movs	r0, r0
  40a48c: 6383         	str	r3, [r0, #0x38]
  40a48e: 0000         	movs	r0, r0
  40a490: 64cd         	str	r5, [r1, #0x4c]
  40a492: 0000         	movs	r0, r0
  40a494: 6721         	str	r1, [r4, #0x70]
  40a496: 0000         	movs	r0, r0
  40a498: 6991         	ldr	r1, [r2, #0x18]
  40a49a: 0000         	movs	r0, r0
  40a49c: 7005         	strb	r5, [r0]
  40a49e: 0000         	movs	r0, r0
  40a4a0: 7395         	strb	r5, [r2, #0xe]
  40a4a2: 0000         	movs	r0, r0
  40a4a4: 7529         	strb	r1, [r5, #0x14]
  40a4a6: 0000         	movs	r0, r0
  40a4a8: 0000         	movs	r0, r0
  40a4aa: 0000         	movs	r0, r0
  40a4ac: c000         	<unknown>
  40a4ae: 4062         	eors	r2, r4
  40a4b0: 0000         	movs	r0, r0
  40a4b2: 0000         	movs	r0, r0
  40a4b4: 5800         	ldr	r0, [r0, r0]
  40a4b6: 409b         	lsls	r3, r3
  40a4b8: 8720         	strh	r0, [r4, #0x38]
  40a4ba: 0052         	lsls	r2, r2, #0x1
  40a4bc: d784         	bvc	0x40a3c8 <TrainingStage::doLesson(float)+0xf0> @ imm = #-0xf8
  40a4be: ffff ab07    	vtbl.8	d26, {d15, d16, d17, d18}, d7
  40a4c2: 681b         	ldr	r3, [r3]
  40a4c4: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  40a4c8: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  40a4cc: 681b         	ldr	r3, [r3]
  40a4ce: 3390         	adds	r3, #0x90
  40a4d0: 681b         	ldr	r3, [r3]
  40a4d2: aa07         	add	r2, sp, #0x1c
  40a4d4: 6812         	ldr	r2, [r2]
  40a4d6: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  40a4da: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  40a4de: 4610         	mov	r0, r2
  40a4e0: 2100         	movs	r1, #0x0
  40a4e2: 4798         	blx	r3
  40a4e4: ab07         	add	r3, sp, #0x1c
  40a4e6: 681b         	ldr	r3, [r3]
  40a4e8: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  40a4ec: 681b         	ldr	r3, [r3]
  40a4ee: 3390         	adds	r3, #0x90
  40a4f0: 681b         	ldr	r3, [r3]
  40a4f2: aa07         	add	r2, sp, #0x1c
  40a4f4: 6812         	ldr	r2, [r2]
  40a4f6: f8d2 2174    	ldr.w	r2, [r2, #0x174]
  40a4fa: 4610         	mov	r0, r2
  40a4fc: 2100         	movs	r1, #0x0
  40a4fe: 4798         	blx	r3
  40a500: ab07         	add	r3, sp, #0x1c
  40a502: 681b         	ldr	r3, [r3]
  40a504: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  40a508: 681b         	ldr	r3, [r3]
  40a50a: 3338         	adds	r3, #0x38
  40a50c: 681b         	ldr	r3, [r3]
  40a50e: aa07         	add	r2, sp, #0x1c
  40a510: 6812         	ldr	r2, [r2]
  40a512: f8d2 2174    	ldr.w	r2, [r2, #0x174]
  40a516: 4610         	mov	r0, r2
  40a518: f04f 517e    	mov.w	r1, #0x3f800000
  40a51c: 4798         	blx	r3
  40a51e: ab07         	add	r3, sp, #0x1c
  40a520: 681b         	ldr	r3, [r3]
  40a522: 2201         	movs	r2, #0x1
  40a524: f883 218c    	strb.w	r2, [r3, #0x18c]
  40a528: ab07         	add	r3, sp, #0x1c
  40a52a: 681b         	ldr	r3, [r3]
  40a52c: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40a530: f8d3 5138    	ldr.w	r5, [r3, #0x138]
  40a534: ab02         	add	r3, sp, #0x8
  40a536: 4618         	mov	r0, r3
  40a538: ed9f 0ba5    	vldr	d0, [pc, #660]          @ 0x40a7d0 <TrainingStage::doLesson(float)+0x4f8>
  40a53c: ed9f 1ba6    	vldr	d1, [pc, #664]          @ 0x40a7d8 <TrainingStage::doLesson(float)+0x500>
  40a540: f7fd ffc8    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x2070
  40a544: ab02         	add	r3, sp, #0x8
  40a546: 3528         	adds	r5, #0x28
  40a548: cb0f         	ldm	r3, {r0, r1, r2, r3}
  40a54a: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  40a54e: 4ba6         	ldr	r3, [pc, #0x298]        @ 0x40a7e8 <TrainingStage::doLesson(float)+0x510>
  40a550: 58e3         	ldr	r3, [r4, r3]
  40a552: 681b         	ldr	r3, [r3]
  40a554: f8d3 5138    	ldr.w	r5, [r3, #0x138]
  40a558: ab02         	add	r3, sp, #0x8
  40a55a: 4618         	mov	r0, r3
  40a55c: ed9f 0ba0    	vldr	d0, [pc, #640]          @ 0x40a7e0 <TrainingStage::doLesson(float)+0x508>
  40a560: ed9f 1b9d    	vldr	d1, [pc, #628]          @ 0x40a7d8 <TrainingStage::doLesson(float)+0x500>
  40a564: f7fd ffb6    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x2094
  40a568: ab02         	add	r3, sp, #0x8
  40a56a: 3528         	adds	r5, #0x28
  40a56c: cb0f         	ldm	r3, {r0, r1, r2, r3}
  40a56e: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  40a572: ab07         	add	r3, sp, #0x1c
  40a574: 681b         	ldr	r3, [r3]
  40a576: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  40a57a: 1c5a         	adds	r2, r3, #0x1
  40a57c: ab07         	add	r3, sp, #0x1c
  40a57e: 681b         	ldr	r3, [r3]
  40a580: f8c3 2180    	str.w	r2, [r3, #0x180]
  40a584: ab07         	add	r3, sp, #0x1c
  40a586: 681b         	ldr	r3, [r3]
  40a588: 2200         	movs	r2, #0x0
  40a58a: f8c3 2190    	str.w	r2, [r3, #0x190]
  40a58e: ab07         	add	r3, sp, #0x1c
  40a590: 681b         	ldr	r3, [r3]
  40a592: 2201         	movs	r2, #0x1
  40a594: f883 2194    	strb.w	r2, [r3, #0x194]
  40a598: ab07         	add	r3, sp, #0x1c
  40a59a: 681b         	ldr	r3, [r3]
  40a59c: f04f 0200    	mov.w	r2, #0x0
  40a5a0: f8c3 2198    	str.w	r2, [r3, #0x198]
  40a5a4: ab07         	add	r3, sp, #0x1c
  40a5a6: 681b         	ldr	r3, [r3]
  40a5a8: f04f 0200    	mov.w	r2, #0x0
  40a5ac: f2c4 1240    	movt	r2, #0x4140
  40a5b0: f8c3 219c    	str.w	r2, [r3, #0x19c]
  40a5b4: ab07         	add	r3, sp, #0x1c
  40a5b6: 681b         	ldr	r3, [r3]
  40a5b8: f8d3 3178    	ldr.w	r3, [r3, #0x178]
  40a5bc: 681b         	ldr	r3, [r3]
  40a5be: 3390         	adds	r3, #0x90
  40a5c0: 681b         	ldr	r3, [r3]
  40a5c2: aa07         	add	r2, sp, #0x1c
  40a5c4: 6812         	ldr	r2, [r2]
  40a5c6: f8d2 2178    	ldr.w	r2, [r2, #0x178]
  40a5ca: 4610         	mov	r0, r2
  40a5cc: 2100         	movs	r1, #0x0
  40a5ce: 4798         	blx	r3
  40a5d0: ab07         	add	r3, sp, #0x1c
  40a5d2: 681b         	ldr	r3, [r3]
  40a5d4: f8d3 3170    	ldr.w	r3, [r3, #0x170]
  40a5d8: 681b         	ldr	r3, [r3]
  40a5da: 3390         	adds	r3, #0x90
  40a5dc: 681b         	ldr	r3, [r3]
  40a5de: aa07         	add	r2, sp, #0x1c
  40a5e0: 6812         	ldr	r2, [r2]
  40a5e2: f8d2 2170    	ldr.w	r2, [r2, #0x170]
  40a5e6: 4610         	mov	r0, r2
  40a5e8: 2100         	movs	r1, #0x0
  40a5ea: 4798         	blx	r3
  40a5ec: ab07         	add	r3, sp, #0x1c
  40a5ee: 681b         	ldr	r3, [r3]
  40a5f0: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  40a5f4: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  40a5f8: 4618         	mov	r0, r3
  40a5fa: 2101         	movs	r1, #0x1
  40a5fc: f744 f93a    	bl	0x34e874 <Joypad::disableMovement(bool)> @ imm = #-0xbbd8c
  40a600: ab07         	add	r3, sp, #0x1c
  40a602: 681b         	ldr	r3, [r3]
  40a604: f8d3 3178    	ldr.w	r3, [r3, #0x178]
  40a608: 681b         	ldr	r3, [r3]
  40a60a: f503 73de    	add.w	r3, r3, #0x1bc
  40a60e: 681d         	ldr	r5, [r3]
  40a610: ab07         	add	r3, sp, #0x1c
  40a612: 681b         	ldr	r3, [r3]
  40a614: f8d3 3178    	ldr.w	r3, [r3, #0x178]
  40a618: 461e         	mov	r6, r3
  40a61a: 20ff         	movs	r0, #0xff
  40a61c: 21ff         	movs	r1, #0xff
  40a61e: 2200         	movs	r2, #0x0
  40a620: f7fd ff1a    	bl	0x408458 <Tracer::checkCollision()+0x3cc> @ imm = #-0x21cc
  40a624: 4603         	mov	r3, r0
  40a626: 461a         	mov	r2, r3
  40a628: f88d 2410    	strb.w	r2, [sp, #0x410]
  40a62c: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  40a630: f88d 2411    	strb.w	r2, [sp, #0x411]
  40a634: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  40a638: f88d 3412    	strb.w	r3, [sp, #0x412]
  40a63c: f50d 6382    	add.w	r3, sp, #0x410
  40a640: 4630         	mov	r0, r6
  40a642: 4619         	mov	r1, r3
  40a644: 47a8         	blx	r5
  40a646: ab07         	add	r3, sp, #0x1c
  40a648: 681b         	ldr	r3, [r3]
  40a64a: f04f 0200    	mov.w	r2, #0x0
  40a64e: f8c3 21a0    	str.w	r2, [r3, #0x1a0]
  40a652: ab32         	add	r3, sp, #0xc8
  40a654: 2200         	movs	r2, #0x0
  40a656: 601a         	str	r2, [r3]
  40a658: ab07         	add	r3, sp, #0x1c
  40a65a: 681b         	ldr	r3, [r3]
  40a65c: f8d3 21a4    	ldr.w	r2, [r3, #0x1a4]
  40a660: ab35         	add	r3, sp, #0xd4
  40a662: 6952         	ldr	r2, [r2, #0x14]
  40a664: 601a         	str	r2, [r3]
  40a666: ab33         	add	r3, sp, #0xcc
  40a668: 2200         	movs	r2, #0x0
  40a66a: 601a         	str	r2, [r3]
  40a66c: ab35         	add	r3, sp, #0xd4
  40a66e: 681b         	ldr	r3, [r3]
  40a670: 2b00         	cmp	r3, #0x0
  40a672: d008         	beq	0x40a686 <TrainingStage::doLesson(float)+0x3ae> @ imm = #0x10
  40a674: ab35         	add	r3, sp, #0xd4
  40a676: 6818         	ldr	r0, [r3]
  40a678: f189 faf8    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x1895f0
  40a67c: 4603         	mov	r3, r0
  40a67e: 2b00         	cmp	r3, #0x0
  40a680: d001         	beq	0x40a686 <TrainingStage::doLesson(float)+0x3ae> @ imm = #0x2
  40a682: 2301         	movs	r3, #0x1
  40a684: e000         	b	0x40a688 <TrainingStage::doLesson(float)+0x3b0> @ imm = #0x0
  40a686: 2300         	movs	r3, #0x0
  40a688: 2b00         	cmp	r3, #0x0
  40a68a: d049         	beq	0x40a720 <TrainingStage::doLesson(float)+0x448> @ imm = #0x92
  40a68c: ab32         	add	r3, sp, #0xc8
  40a68e: aa35         	add	r2, sp, #0xd4
  40a690: 6812         	ldr	r2, [r2]
  40a692: 6952         	ldr	r2, [r2, #0x14]
  40a694: 601a         	str	r2, [r3]
  40a696: ab35         	add	r3, sp, #0xd4
  40a698: 681b         	ldr	r3, [r3]
  40a69a: 695b         	ldr	r3, [r3, #0x14]
  40a69c: 2b00         	cmp	r3, #0x0
  40a69e: d005         	beq	0x40a6ac <TrainingStage::doLesson(float)+0x3d4> @ imm = #0xa
  40a6a0: ab35         	add	r3, sp, #0xd4
  40a6a2: 681b         	ldr	r3, [r3]
  40a6a4: 695b         	ldr	r3, [r3, #0x14]
  40a6a6: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  40a6aa: e000         	b	0x40a6ae <TrainingStage::doLesson(float)+0x3d6> @ imm = #0x0
  40a6ac: 2300         	movs	r3, #0x0
  40a6ae: aa33         	add	r2, sp, #0xcc
  40a6b0: 6013         	str	r3, [r2]
  40a6b2: e031         	b	0x40a718 <TrainingStage::doLesson(float)+0x440> @ imm = #0x62
  40a6b4: ab32         	add	r3, sp, #0xc8
  40a6b6: 6818         	ldr	r0, [r3]
  40a6b8: f6f3 ffbc    	bl	0x2fe634 <cocos2d::CCDictElement::getObject() const> @ imm = #-0x10c088
  40a6bc: 4602         	mov	r2, r0
  40a6be: ab36         	add	r3, sp, #0xd8
  40a6c0: 601a         	str	r2, [r3]
  40a6c2: ab07         	add	r3, sp, #0x1c
  40a6c4: 681b         	ldr	r3, [r3]
  40a6c6: f8d3 51a4    	ldr.w	r5, [r3, #0x1a4]
  40a6ca: ab36         	add	r3, sp, #0xd8
  40a6cc: 681b         	ldr	r3, [r3]
  40a6ce: 681b         	ldr	r3, [r3]
  40a6d0: f503 73e0    	add.w	r3, r3, #0x1c0
  40a6d4: 681b         	ldr	r3, [r3]
  40a6d6: f50d 6182    	add.w	r1, sp, #0x410
  40a6da: aa36         	add	r2, sp, #0xd8
  40a6dc: 4608         	mov	r0, r1
  40a6de: 6811         	ldr	r1, [r2]
  40a6e0: 4798         	blx	r3
  40a6e2: f50d 6382    	add.w	r3, sp, #0x410
  40a6e6: 4628         	mov	r0, r5
  40a6e8: 4619         	mov	r1, r3
  40a6ea: f70f fb79    	bl	0x319de0 <EnemyManager::removeHawkDrone(std::string)> @ imm = #-0xf090e
  40a6ee: f50d 6382    	add.w	r3, sp, #0x410
  40a6f2: 4618         	mov	r0, r3
  40a6f4: f3ab f90e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3ab21c
  40a6f8: ab32         	add	r3, sp, #0xc8
  40a6fa: aa33         	add	r2, sp, #0xcc
  40a6fc: 6812         	ldr	r2, [r2]
  40a6fe: 601a         	str	r2, [r3]
  40a700: ab33         	add	r3, sp, #0xcc
  40a702: 681b         	ldr	r3, [r3]
  40a704: 2b00         	cmp	r3, #0x0
  40a706: d004         	beq	0x40a712 <TrainingStage::doLesson(float)+0x43a> @ imm = #0x8
  40a708: ab33         	add	r3, sp, #0xcc
  40a70a: 681b         	ldr	r3, [r3]
  40a70c: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  40a710: e000         	b	0x40a714 <TrainingStage::doLesson(float)+0x43c> @ imm = #0x0
  40a712: 2300         	movs	r3, #0x0
  40a714: aa33         	add	r2, sp, #0xcc
  40a716: 6013         	str	r3, [r2]
  40a718: ab32         	add	r3, sp, #0xc8
  40a71a: 681b         	ldr	r3, [r3]
  40a71c: 2b00         	cmp	r3, #0x0
  40a71e: d1c9         	bne	0x40a6b4 <TrainingStage::doLesson(float)+0x3dc> @ imm = #-0x6e
  40a720: ab07         	add	r3, sp, #0x1c
  40a722: 681b         	ldr	r3, [r3]
  40a724: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40a728: 2b00         	cmp	r3, #0x0
  40a72a: d01f         	beq	0x40a76c <TrainingStage::doLesson(float)+0x494> @ imm = #0x3e
  40a72c: ab07         	add	r3, sp, #0x1c
  40a72e: 681b         	ldr	r3, [r3]
  40a730: f8d3 51a4    	ldr.w	r5, [r3, #0x1a4]
  40a734: ab07         	add	r3, sp, #0x1c
  40a736: 681b         	ldr	r3, [r3]
  40a738: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40a73c: 681b         	ldr	r3, [r3]
  40a73e: f503 73e0    	add.w	r3, r3, #0x1c0
  40a742: 681b         	ldr	r3, [r3]
  40a744: aa07         	add	r2, sp, #0x1c
  40a746: 6812         	ldr	r2, [r2]
  40a748: f8d2 21a8    	ldr.w	r2, [r2, #0x1a8]
  40a74c: f50d 6182    	add.w	r1, sp, #0x410
  40a750: 4608         	mov	r0, r1
  40a752: 4611         	mov	r1, r2
  40a754: 4798         	blx	r3
  40a756: f50d 6382    	add.w	r3, sp, #0x410
  40a75a: 4628         	mov	r0, r5
  40a75c: 4619         	mov	r1, r3
  40a75e: f70f fbb7    	bl	0x319ed0 <EnemyManager::removeHumanoidDrone(std::string)> @ imm = #-0xf0892
  40a762: f50d 6382    	add.w	r3, sp, #0x410
  40a766: 4618         	mov	r0, r3
  40a768: f3ab f8d4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3ab1a8
  40a76c: 4b1f         	ldr	r3, [pc, #0x7c]         @ 0x40a7ec <TrainingStage::doLesson(float)+0x514>
  40a76e: 58e3         	ldr	r3, [r4, r3]
  40a770: 681b         	ldr	r3, [r3]
  40a772: 4618         	mov	r0, r3
  40a774: f7ed fac8    	bl	0x3f7d08 <Sound::stopMusic()> @ imm = #-0x12a70
  40a778: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x40a7ec <TrainingStage::doLesson(float)+0x514>
  40a77a: 58e3         	ldr	r3, [r4, r3]
  40a77c: 681c         	ldr	r4, [r3]
  40a77e: f50d 6380    	add.w	r3, sp, #0x400
  40a782: 4618         	mov	r0, r3
  40a784: f37f fe36    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37fc6c
  40a788: f50d 6282    	add.w	r2, sp, #0x410
  40a78c: f50d 6380    	add.w	r3, sp, #0x400
  40a790: 4610         	mov	r0, r2
  40a792: 4a17         	ldr	r2, [pc, #0x5c]         @ 0x40a7f0 <TrainingStage::doLesson(float)+0x518>
  40a794: 447a         	add	r2, pc
  40a796: 4611         	mov	r1, r2
  40a798: 461a         	mov	r2, r3
  40a79a: f3ac f961    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3ac2c2
  40a79e: f50d 6382    	add.w	r3, sp, #0x410
  40a7a2: 4620         	mov	r0, r4
  40a7a4: 4619         	mov	r1, r3
  40a7a6: f64c 42cd    	movw	r2, #0xcccd
  40a7aa: f6c3 52cc    	movt	r2, #0x3dcc
  40a7ae: 2301         	movs	r3, #0x1
  40a7b0: f7ed fa78    	bl	0x3f7ca4 <Sound::playMusicFile(std::string, float, bool)> @ imm = #-0x12b10
  40a7b4: f50d 6382    	add.w	r3, sp, #0x410
  40a7b8: 4618         	mov	r0, r3
  40a7ba: f3ab f8ab    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3ab156
  40a7be: f50d 6380    	add.w	r3, sp, #0x400
  40a7c2: 4618         	mov	r0, r3
  40a7c4: f37f fe1a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37fc34
  40a7c8: f007 bba4    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x7748
  40a7cc: f3af 8000    	nop.w
  40a7d0: 0000         	movs	r0, r0
  40a7d2: 0000         	movs	r0, r0
  40a7d4: 2000         	movs	r0, #0x0
  40a7d6: 408c         	lsls	r4, r1
  40a7d8: 0000         	movs	r0, r0
  40a7da: 0000         	movs	r0, r0
  40a7dc: c000         	<unknown>
  40a7de: 4082         	lsls	r2, r0
  40a7e0: 0000         	movs	r0, r0
  40a7e2: 0000         	movs	r0, r0
  40a7e4: 4000         	ands	r0, r0
  40a7e6: 4080         	lsls	r0, r0
  40a7e8: d784         	bvc	0x40a6f4 <TrainingStage::doLesson(float)+0x41c> @ imm = #-0xf8
  40a7ea: ffff d730    	vqshl.u32	d29, d16, #0x1f
  40a7ee: ffff 0118    	vsra.u32	d16, d8, #0x1
  40a7f2: 003d         	movs	r5, r7
  40a7f4: ab07         	add	r3, sp, #0x1c
  40a7f6: 681b         	ldr	r3, [r3]
  40a7f8: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40a7fc: 681b         	ldr	r3, [r3]
  40a7fe: f503 730e    	add.w	r3, r3, #0x238
  40a802: 681b         	ldr	r3, [r3]
  40a804: aa07         	add	r2, sp, #0x1c
  40a806: 6812         	ldr	r2, [r2]
  40a808: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40a80c: 4610         	mov	r0, r2
  40a80e: f04f 0100    	mov.w	r1, #0x0
  40a812: f2c4 3134    	movt	r1, #0x4334
  40a816: 4798         	blx	r3
  40a818: 4bc3         	ldr	r3, [pc, #0x30c]        @ 0x40ab28 <TrainingStage::doLesson(float)+0x850>
  40a81a: 58e3         	ldr	r3, [r4, r3]
  40a81c: 681b         	ldr	r3, [r3]
  40a81e: 681b         	ldr	r3, [r3]
  40a820: f503 7329    	add.w	r3, r3, #0x2a4
  40a824: 681b         	ldr	r3, [r3]
  40a826: 4ac0         	ldr	r2, [pc, #0x300]        @ 0x40ab28 <TrainingStage::doLesson(float)+0x850>
  40a828: 58a2         	ldr	r2, [r4, r2]
  40a82a: 6812         	ldr	r2, [r2]
  40a82c: 4610         	mov	r0, r2
  40a82e: f04f 0100    	mov.w	r1, #0x0
  40a832: 4798         	blx	r3
  40a834: ab07         	add	r3, sp, #0x1c
  40a836: 681b         	ldr	r3, [r3]
  40a838: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40a83c: 2201         	movs	r2, #0x1
  40a83e: f883 211c    	strb.w	r2, [r3, #0x11c]
  40a842: ab07         	add	r3, sp, #0x1c
  40a844: 681b         	ldr	r3, [r3]
  40a846: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40a84a: 681b         	ldr	r3, [r3]
  40a84c: f503 730c    	add.w	r3, r3, #0x230
  40a850: 681d         	ldr	r5, [r3]
  40a852: ab07         	add	r3, sp, #0x1c
  40a854: 681b         	ldr	r3, [r3]
  40a856: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40a85a: 461e         	mov	r6, r3
  40a85c: ab3c         	add	r3, sp, #0xf0
  40a85e: 4618         	mov	r0, r3
  40a860: eebe 0b08    	vmov.f64	d0, #-7.500000e-01
  40a864: ed9f 1bac    	vldr	d1, [pc, #688]          @ 0x40ab18 <TrainingStage::doLesson(float)+0x840>
  40a868: f7fd fe34    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x2398
  40a86c: ab3c         	add	r3, sp, #0xf0
  40a86e: 466a         	mov	r2, sp
  40a870: f103 0108    	add.w	r1, r3, #0x8
  40a874: c903         	ldm	r1, {r0, r1}
  40a876: e882 0003    	stm.w	r2, {r0, r1}
  40a87a: cb0c         	ldm	r3, {r2, r3}
  40a87c: 4630         	mov	r0, r6
  40a87e: 47a8         	blx	r5
  40a880: ab07         	add	r3, sp, #0x1c
  40a882: 681b         	ldr	r3, [r3]
  40a884: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40a888: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  40a88c: ed93 6b0a    	vldr	d6, [r3, #40]
  40a890: 4ba5         	ldr	r3, [pc, #0x294]        @ 0x40ab28 <TrainingStage::doLesson(float)+0x850>
  40a892: 58e3         	ldr	r3, [r4, r3]
  40a894: 681b         	ldr	r3, [r3]
  40a896: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  40a89a: ed93 5b0a    	vldr	d5, [r3, #40]
  40a89e: ed9f 7ba0    	vldr	d7, [pc, #640]          @ 0x40ab20 <TrainingStage::doLesson(float)+0x848>
  40a8a2: ee35 7b07    	vadd.f64	d7, d5, d7
  40a8a6: eeb4 6bc7    	vcmpe.f64	d6, d7
  40a8aa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40a8ae: d401         	bmi	0x40a8b4 <TrainingStage::doLesson(float)+0x5dc> @ imm = #0x2
  40a8b0: f007 bb30    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x7660
  40a8b4: ab07         	add	r3, sp, #0x1c
  40a8b6: 681b         	ldr	r3, [r3]
  40a8b8: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40a8bc: 681b         	ldr	r3, [r3]
  40a8be: f503 730c    	add.w	r3, r3, #0x230
  40a8c2: 681d         	ldr	r5, [r3]
  40a8c4: ab07         	add	r3, sp, #0x1c
  40a8c6: 681b         	ldr	r3, [r3]
  40a8c8: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40a8cc: 461e         	mov	r6, r3
  40a8ce: ab40         	add	r3, sp, #0x100
  40a8d0: 4618         	mov	r0, r3
  40a8d2: ed9f 0b91    	vldr	d0, [pc, #580]          @ 0x40ab18 <TrainingStage::doLesson(float)+0x840>
  40a8d6: ed9f 1b90    	vldr	d1, [pc, #576]          @ 0x40ab18 <TrainingStage::doLesson(float)+0x840>
  40a8da: f7fd fdfb    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x240a
  40a8de: ab40         	add	r3, sp, #0x100
  40a8e0: 466a         	mov	r2, sp
  40a8e2: f103 0108    	add.w	r1, r3, #0x8
  40a8e6: c903         	ldm	r1, {r0, r1}
  40a8e8: e882 0003    	stm.w	r2, {r0, r1}
  40a8ec: cb0c         	ldm	r3, {r2, r3}
  40a8ee: 4630         	mov	r0, r6
  40a8f0: 47a8         	blx	r5
  40a8f2: ab07         	add	r3, sp, #0x1c
  40a8f4: 681b         	ldr	r3, [r3]
  40a8f6: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40a8fa: 2200         	movs	r2, #0x0
  40a8fc: f883 211c    	strb.w	r2, [r3, #0x11c]
  40a900: ab07         	add	r3, sp, #0x1c
  40a902: 681b         	ldr	r3, [r3]
  40a904: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  40a908: 1c5a         	adds	r2, r3, #0x1
  40a90a: ab07         	add	r3, sp, #0x1c
  40a90c: 681b         	ldr	r3, [r3]
  40a90e: f8c3 2180    	str.w	r2, [r3, #0x180]
  40a912: ab07         	add	r3, sp, #0x1c
  40a914: 681b         	ldr	r3, [r3]
  40a916: f04f 0200    	mov.w	r2, #0x0
  40a91a: f8c3 2188    	str.w	r2, [r3, #0x188]
  40a91e: ab07         	add	r3, sp, #0x1c
  40a920: 681b         	ldr	r3, [r3]
  40a922: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  40a926: f50d 6380    	add.w	r3, sp, #0x400
  40a92a: 4618         	mov	r0, r3
  40a92c: f37f fd62    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37fac4
  40a930: f50d 6282    	add.w	r2, sp, #0x410
  40a934: f50d 6380    	add.w	r3, sp, #0x400
  40a938: 4610         	mov	r0, r2
  40a93a: 4a7c         	ldr	r2, [pc, #0x1f0]        @ 0x40ab2c <TrainingStage::doLesson(float)+0x854>
  40a93c: 447a         	add	r2, pc
  40a93e: 4611         	mov	r1, r2
  40a940: 461a         	mov	r2, r3
  40a942: f3ac f88d    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3ac11a
  40a946: 2000         	movs	r0, #0x0
  40a948: 2100         	movs	r1, #0x0
  40a94a: 22ff         	movs	r2, #0xff
  40a94c: f7fd fd84    	bl	0x408458 <Tracer::checkCollision()+0x3cc> @ imm = #-0x24f8
  40a950: 4602         	mov	r2, r0
  40a952: ab09         	add	r3, sp, #0x24
  40a954: 4611         	mov	r1, r2
  40a956: 7019         	strb	r1, [r3]
  40a958: f3c2 2107    	ubfx	r1, r2, #0x8, #0x8
  40a95c: 7059         	strb	r1, [r3, #0x1]
  40a95e: f3c2 4207    	ubfx	r2, r2, #0x10, #0x8
  40a962: 709a         	strb	r2, [r3, #0x2]
  40a964: f50d 6282    	add.w	r2, sp, #0x410
  40a968: ab09         	add	r3, sp, #0x24
  40a96a: 4628         	mov	r0, r5
  40a96c: 4611         	mov	r1, r2
  40a96e: 681a         	ldr	r2, [r3]
  40a970: 2303         	movs	r3, #0x3
  40a972: f732 fca5    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xcd6b6
  40a976: f50d 6382    	add.w	r3, sp, #0x410
  40a97a: 4618         	mov	r0, r3
  40a97c: f3aa ffca    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3aaf94
  40a980: f50d 6380    	add.w	r3, sp, #0x400
  40a984: 4618         	mov	r0, r3
  40a986: f37f fd39    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37fa72
  40a98a: 4b69         	ldr	r3, [pc, #0x1a4]        @ 0x40ab30 <TrainingStage::doLesson(float)+0x858>
  40a98c: 58e3         	ldr	r3, [r4, r3]
  40a98e: 681b         	ldr	r3, [r3]
  40a990: 4618         	mov	r0, r3
  40a992: 215a         	movs	r1, #0x5a
  40a994: 2201         	movs	r2, #0x1
  40a996: f7ed f9d3    	bl	0x3f7d40 <Sound::playSoundWithVoice(int, int)> @ imm = #-0x12c5a
  40a99a: f007 babb    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x7576
  40a99e: ab07         	add	r3, sp, #0x1c
  40a9a0: 681b         	ldr	r3, [r3]
  40a9a2: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40a9a6: 681b         	ldr	r3, [r3]
  40a9a8: f503 730e    	add.w	r3, r3, #0x238
  40a9ac: 681b         	ldr	r3, [r3]
  40a9ae: aa07         	add	r2, sp, #0x1c
  40a9b0: 6812         	ldr	r2, [r2]
  40a9b2: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40a9b6: 4610         	mov	r0, r2
  40a9b8: f04f 0100    	mov.w	r1, #0x0
  40a9bc: f2c4 3134    	movt	r1, #0x4334
  40a9c0: 4798         	blx	r3
  40a9c2: 4b59         	ldr	r3, [pc, #0x164]        @ 0x40ab28 <TrainingStage::doLesson(float)+0x850>
  40a9c4: 58e3         	ldr	r3, [r4, r3]
  40a9c6: 681b         	ldr	r3, [r3]
  40a9c8: 681b         	ldr	r3, [r3]
  40a9ca: f503 7329    	add.w	r3, r3, #0x2a4
  40a9ce: 681b         	ldr	r3, [r3]
  40a9d0: 4a55         	ldr	r2, [pc, #0x154]        @ 0x40ab28 <TrainingStage::doLesson(float)+0x850>
  40a9d2: 58a2         	ldr	r2, [r4, r2]
  40a9d4: 6812         	ldr	r2, [r2]
  40a9d6: 4610         	mov	r0, r2
  40a9d8: f04f 0100    	mov.w	r1, #0x0
  40a9dc: 4798         	blx	r3
  40a9de: ab07         	add	r3, sp, #0x1c
  40a9e0: 681b         	ldr	r3, [r3]
  40a9e2: ed93 7a62    	vldr	s14, [r3, #392]
  40a9e6: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  40a9ea: eeb4 7ae7    	vcmpe.f32	s14, s15
  40a9ee: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40a9f2: d505         	bpl	0x40aa00 <TrainingStage::doLesson(float)+0x728> @ imm = #0xa
  40a9f4: aa07         	add	r2, sp, #0x1c
  40a9f6: ab06         	add	r3, sp, #0x18
  40a9f8: 6810         	ldr	r0, [r2]
  40a9fa: 6819         	ldr	r1, [r3]
  40a9fc: f7ff fa18    	bl	0x409e30 <TrainingStage::headChatter(float)> @ imm = #-0xbd0
  40aa00: ab07         	add	r3, sp, #0x1c
  40aa02: 681b         	ldr	r3, [r3]
  40aa04: ed93 7a62    	vldr	s14, [r3, #392]
  40aa08: eef0 7a08    	vmov.f32	s15, #3.000000e+00
  40aa0c: eeb4 7ae7    	vcmpe.f32	s14, s15
  40aa10: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40aa14: dc01         	bgt	0x40aa1a <TrainingStage::doLesson(float)+0x742> @ imm = #0x2
  40aa16: f007 ba7d    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x74fa
  40aa1a: ab07         	add	r3, sp, #0x1c
  40aa1c: 681b         	ldr	r3, [r3]
  40aa1e: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  40aa22: 1c5a         	adds	r2, r3, #0x1
  40aa24: ab07         	add	r3, sp, #0x1c
  40aa26: 681b         	ldr	r3, [r3]
  40aa28: f8c3 2180    	str.w	r2, [r3, #0x180]
  40aa2c: ab07         	add	r3, sp, #0x1c
  40aa2e: 681b         	ldr	r3, [r3]
  40aa30: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  40aa34: f50d 6380    	add.w	r3, sp, #0x400
  40aa38: 4618         	mov	r0, r3
  40aa3a: f37f fcdb    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37f9b6
  40aa3e: f50d 6282    	add.w	r2, sp, #0x410
  40aa42: f50d 6380    	add.w	r3, sp, #0x400
  40aa46: 4610         	mov	r0, r2
  40aa48: 4a3a         	ldr	r2, [pc, #0xe8]         @ 0x40ab34 <TrainingStage::doLesson(float)+0x85c>
  40aa4a: 447a         	add	r2, pc
  40aa4c: 4611         	mov	r1, r2
  40aa4e: 461a         	mov	r2, r3
  40aa50: f3ac f806    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3ac00c
  40aa54: 20ff         	movs	r0, #0xff
  40aa56: 21ff         	movs	r1, #0xff
  40aa58: 22ff         	movs	r2, #0xff
  40aa5a: f7fd fcfd    	bl	0x408458 <Tracer::checkCollision()+0x3cc> @ imm = #-0x2606
  40aa5e: 4602         	mov	r2, r0
  40aa60: ab0a         	add	r3, sp, #0x28
  40aa62: 4611         	mov	r1, r2
  40aa64: 7019         	strb	r1, [r3]
  40aa66: f3c2 2107    	ubfx	r1, r2, #0x8, #0x8
  40aa6a: 7059         	strb	r1, [r3, #0x1]
  40aa6c: f3c2 4207    	ubfx	r2, r2, #0x10, #0x8
  40aa70: 709a         	strb	r2, [r3, #0x2]
  40aa72: f50d 6282    	add.w	r2, sp, #0x410
  40aa76: ab0a         	add	r3, sp, #0x28
  40aa78: 4628         	mov	r0, r5
  40aa7a: 4611         	mov	r1, r2
  40aa7c: 681a         	ldr	r2, [r3]
  40aa7e: 2302         	movs	r3, #0x2
  40aa80: f732 fc1e    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xcd7c4
  40aa84: f50d 6382    	add.w	r3, sp, #0x410
  40aa88: 4618         	mov	r0, r3
  40aa8a: f3aa ff43    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3aae86
  40aa8e: f50d 6380    	add.w	r3, sp, #0x400
  40aa92: 4618         	mov	r0, r3
  40aa94: f37f fcb2    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37f964
  40aa98: ab07         	add	r3, sp, #0x1c
  40aa9a: 681b         	ldr	r3, [r3]
  40aa9c: f04f 0200    	mov.w	r2, #0x0
  40aaa0: f8c3 2188    	str.w	r2, [r3, #0x188]
  40aaa4: 4b22         	ldr	r3, [pc, #0x88]         @ 0x40ab30 <TrainingStage::doLesson(float)+0x858>
  40aaa6: 58e3         	ldr	r3, [r4, r3]
  40aaa8: 681b         	ldr	r3, [r3]
  40aaaa: 4618         	mov	r0, r3
  40aaac: 2133         	movs	r1, #0x33
  40aaae: 2201         	movs	r2, #0x1
  40aab0: f7ed f946    	bl	0x3f7d40 <Sound::playSoundWithVoice(int, int)> @ imm = #-0x12d74
  40aab4: f007 ba2e    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x745c
  40aab8: ab07         	add	r3, sp, #0x1c
  40aaba: 681b         	ldr	r3, [r3]
  40aabc: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40aac0: 681b         	ldr	r3, [r3]
  40aac2: f503 730e    	add.w	r3, r3, #0x238
  40aac6: 681b         	ldr	r3, [r3]
  40aac8: aa07         	add	r2, sp, #0x1c
  40aaca: 6812         	ldr	r2, [r2]
  40aacc: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40aad0: 4610         	mov	r0, r2
  40aad2: f04f 0100    	mov.w	r1, #0x0
  40aad6: f2c4 3134    	movt	r1, #0x4334
  40aada: 4798         	blx	r3
  40aadc: 4b12         	ldr	r3, [pc, #0x48]         @ 0x40ab28 <TrainingStage::doLesson(float)+0x850>
  40aade: 58e3         	ldr	r3, [r4, r3]
  40aae0: 681b         	ldr	r3, [r3]
  40aae2: 681b         	ldr	r3, [r3]
  40aae4: f503 7329    	add.w	r3, r3, #0x2a4
  40aae8: 681b         	ldr	r3, [r3]
  40aaea: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x40ab28 <TrainingStage::doLesson(float)+0x850>
  40aaec: 58a2         	ldr	r2, [r4, r2]
  40aaee: 6812         	ldr	r2, [r2]
  40aaf0: 4610         	mov	r0, r2
  40aaf2: f04f 0100    	mov.w	r1, #0x0
  40aaf6: 4798         	blx	r3
  40aaf8: ab07         	add	r3, sp, #0x1c
  40aafa: 681b         	ldr	r3, [r3]
  40aafc: ed93 7a62    	vldr	s14, [r3, #392]
  40ab00: eef0 7a04    	vmov.f32	s15, #2.500000e+00
  40ab04: eeb4 7ae7    	vcmpe.f32	s14, s15
  40ab08: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40ab0c: dc14         	bgt	0x40ab38 <TrainingStage::doLesson(float)+0x860> @ imm = #0x28
  40ab0e: f007 ba01    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x7402
  40ab12: bf00         	nop
  40ab14: f3af 8000    	nop.w
  40ab24: 0000         	movs	r0, r0
  40ab26: 4059         	eors	r1, r3
  40ab28: d784         	bvc	0x40aa34 <TrainingStage::doLesson(float)+0x75c> @ imm = #-0xf8
  40ab2a: ffff ff7c    	<unknown>
  40ab2e: 003c         	movs	r4, r7
  40ab30: d730         	bvc	0x40ab94 <TrainingStage::doLesson(float)+0x8bc> @ imm = #0x60
  40ab32: ffff fea2    	<unknown>
  40ab36: 003c         	movs	r4, r7
  40ab38: ab07         	add	r3, sp, #0x1c
  40ab3a: 681b         	ldr	r3, [r3]
  40ab3c: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  40ab40: 1c5a         	adds	r2, r3, #0x1
  40ab42: ab07         	add	r3, sp, #0x1c
  40ab44: 681b         	ldr	r3, [r3]
  40ab46: f8c3 2180    	str.w	r2, [r3, #0x180]
  40ab4a: ab07         	add	r3, sp, #0x1c
  40ab4c: 681b         	ldr	r3, [r3]
  40ab4e: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  40ab52: f50d 6380    	add.w	r3, sp, #0x400
  40ab56: 4618         	mov	r0, r3
  40ab58: f37f fc4c    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37f898
  40ab5c: f50d 6282    	add.w	r2, sp, #0x410
  40ab60: f50d 6380    	add.w	r3, sp, #0x400
  40ab64: 4610         	mov	r0, r2
  40ab66: f8df 28c8    	ldr.w	r2, [pc, #0x8c8]        @ 0x40b430 <TrainingStage::doLesson(float)+0x1158>
  40ab6a: 447a         	add	r2, pc
  40ab6c: 4611         	mov	r1, r2
  40ab6e: 461a         	mov	r2, r3
  40ab70: f3ab ff76    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3abeec
  40ab74: 2000         	movs	r0, #0x0
  40ab76: 2100         	movs	r1, #0x0
  40ab78: 22ff         	movs	r2, #0xff
  40ab7a: f7fd fc6d    	bl	0x408458 <Tracer::checkCollision()+0x3cc> @ imm = #-0x2726
  40ab7e: 4602         	mov	r2, r0
  40ab80: ab0b         	add	r3, sp, #0x2c
  40ab82: 4611         	mov	r1, r2
  40ab84: 7019         	strb	r1, [r3]
  40ab86: f3c2 2107    	ubfx	r1, r2, #0x8, #0x8
  40ab8a: 7059         	strb	r1, [r3, #0x1]
  40ab8c: f3c2 4207    	ubfx	r2, r2, #0x10, #0x8
  40ab90: 709a         	strb	r2, [r3, #0x2]
  40ab92: f50d 6282    	add.w	r2, sp, #0x410
  40ab96: ab0b         	add	r3, sp, #0x2c
  40ab98: 4628         	mov	r0, r5
  40ab9a: 4611         	mov	r1, r2
  40ab9c: 681a         	ldr	r2, [r3]
  40ab9e: 2302         	movs	r3, #0x2
  40aba0: f732 fb8e    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xcd8e4
  40aba4: f50d 6382    	add.w	r3, sp, #0x410
  40aba8: 4618         	mov	r0, r3
  40abaa: f3aa feb3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3aad66
  40abae: f50d 6380    	add.w	r3, sp, #0x400
  40abb2: 4618         	mov	r0, r3
  40abb4: f37f fc22    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37f844
  40abb8: ab07         	add	r3, sp, #0x1c
  40abba: 681b         	ldr	r3, [r3]
  40abbc: f04f 0200    	mov.w	r2, #0x0
  40abc0: f8c3 2188    	str.w	r2, [r3, #0x188]
  40abc4: f8df 386c    	ldr.w	r3, [pc, #0x86c]        @ 0x40b434 <TrainingStage::doLesson(float)+0x115c>
  40abc8: 58e3         	ldr	r3, [r4, r3]
  40abca: 681b         	ldr	r3, [r3]
  40abcc: 4618         	mov	r0, r3
  40abce: 2134         	movs	r1, #0x34
  40abd0: 2201         	movs	r2, #0x1
  40abd2: f7ed f8b5    	bl	0x3f7d40 <Sound::playSoundWithVoice(int, int)> @ imm = #-0x12e96
  40abd6: f007 b99d    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x733a
  40abda: ab07         	add	r3, sp, #0x1c
  40abdc: 681b         	ldr	r3, [r3]
  40abde: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40abe2: 681b         	ldr	r3, [r3]
  40abe4: f503 730e    	add.w	r3, r3, #0x238
  40abe8: 681b         	ldr	r3, [r3]
  40abea: aa07         	add	r2, sp, #0x1c
  40abec: 6812         	ldr	r2, [r2]
  40abee: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40abf2: 4610         	mov	r0, r2
  40abf4: f04f 0100    	mov.w	r1, #0x0
  40abf8: f2c4 3134    	movt	r1, #0x4334
  40abfc: 4798         	blx	r3
  40abfe: f8df 3838    	ldr.w	r3, [pc, #0x838]        @ 0x40b438 <TrainingStage::doLesson(float)+0x1160>
  40ac02: 58e3         	ldr	r3, [r4, r3]
  40ac04: 681b         	ldr	r3, [r3]
  40ac06: 681b         	ldr	r3, [r3]
  40ac08: f503 7329    	add.w	r3, r3, #0x2a4
  40ac0c: 681b         	ldr	r3, [r3]
  40ac0e: f8df 2828    	ldr.w	r2, [pc, #0x828]        @ 0x40b438 <TrainingStage::doLesson(float)+0x1160>
  40ac12: 58a2         	ldr	r2, [r4, r2]
  40ac14: 6812         	ldr	r2, [r2]
  40ac16: 4610         	mov	r0, r2
  40ac18: f04f 0100    	mov.w	r1, #0x0
  40ac1c: 4798         	blx	r3
  40ac1e: ab07         	add	r3, sp, #0x1c
  40ac20: 681b         	ldr	r3, [r3]
  40ac22: ed93 7a62    	vldr	s14, [r3, #392]
  40ac26: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  40ac2a: eeb4 7ae7    	vcmpe.f32	s14, s15
  40ac2e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40ac32: d505         	bpl	0x40ac40 <TrainingStage::doLesson(float)+0x968> @ imm = #0xa
  40ac34: aa07         	add	r2, sp, #0x1c
  40ac36: ab06         	add	r3, sp, #0x18
  40ac38: 6810         	ldr	r0, [r2]
  40ac3a: 6819         	ldr	r1, [r3]
  40ac3c: f7ff f8f8    	bl	0x409e30 <TrainingStage::headChatter(float)> @ imm = #-0xe10
  40ac40: ab07         	add	r3, sp, #0x1c
  40ac42: 681b         	ldr	r3, [r3]
  40ac44: ed93 7a62    	vldr	s14, [r3, #392]
  40ac48: eef0 7a04    	vmov.f32	s15, #2.500000e+00
  40ac4c: eeb4 7ae7    	vcmpe.f32	s14, s15
  40ac50: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40ac54: dc01         	bgt	0x40ac5a <TrainingStage::doLesson(float)+0x982> @ imm = #0x2
  40ac56: f007 b95d    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x72ba
  40ac5a: ab07         	add	r3, sp, #0x1c
  40ac5c: 681b         	ldr	r3, [r3]
  40ac5e: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  40ac62: 1c5a         	adds	r2, r3, #0x1
  40ac64: ab07         	add	r3, sp, #0x1c
  40ac66: 681b         	ldr	r3, [r3]
  40ac68: f8c3 2180    	str.w	r2, [r3, #0x180]
  40ac6c: ab07         	add	r3, sp, #0x1c
  40ac6e: 681b         	ldr	r3, [r3]
  40ac70: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  40ac74: f50d 6380    	add.w	r3, sp, #0x400
  40ac78: 4618         	mov	r0, r3
  40ac7a: f37f fbbb    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37f776
  40ac7e: f50d 6282    	add.w	r2, sp, #0x410
  40ac82: f50d 6380    	add.w	r3, sp, #0x400
  40ac86: 4610         	mov	r0, r2
  40ac88: f8df 27b0    	ldr.w	r2, [pc, #0x7b0]        @ 0x40b43c <TrainingStage::doLesson(float)+0x1164>
  40ac8c: 447a         	add	r2, pc
  40ac8e: 4611         	mov	r1, r2
  40ac90: 461a         	mov	r2, r3
  40ac92: f3ab fee5    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3abdca
  40ac96: 2000         	movs	r0, #0x0
  40ac98: 2100         	movs	r1, #0x0
  40ac9a: 22ff         	movs	r2, #0xff
  40ac9c: f7fd fbdc    	bl	0x408458 <Tracer::checkCollision()+0x3cc> @ imm = #-0x2848
  40aca0: 4602         	mov	r2, r0
  40aca2: ab0c         	add	r3, sp, #0x30
  40aca4: 4611         	mov	r1, r2
  40aca6: 7019         	strb	r1, [r3]
  40aca8: f3c2 2107    	ubfx	r1, r2, #0x8, #0x8
  40acac: 7059         	strb	r1, [r3, #0x1]
  40acae: f3c2 4207    	ubfx	r2, r2, #0x10, #0x8
  40acb2: 709a         	strb	r2, [r3, #0x2]
  40acb4: f50d 6282    	add.w	r2, sp, #0x410
  40acb8: ab0c         	add	r3, sp, #0x30
  40acba: 4628         	mov	r0, r5
  40acbc: 4611         	mov	r1, r2
  40acbe: 681a         	ldr	r2, [r3]
  40acc0: 2302         	movs	r3, #0x2
  40acc2: f732 fafd    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xcda06
  40acc6: f50d 6382    	add.w	r3, sp, #0x410
  40acca: 4618         	mov	r0, r3
  40accc: f3aa fe22    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3aac44
  40acd0: f50d 6380    	add.w	r3, sp, #0x400
  40acd4: 4618         	mov	r0, r3
  40acd6: f37f fb91    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37f722
  40acda: ab07         	add	r3, sp, #0x1c
  40acdc: 681b         	ldr	r3, [r3]
  40acde: f04f 0200    	mov.w	r2, #0x0
  40ace2: f8c3 2188    	str.w	r2, [r3, #0x188]
  40ace6: f8df 374c    	ldr.w	r3, [pc, #0x74c]        @ 0x40b434 <TrainingStage::doLesson(float)+0x115c>
  40acea: 58e3         	ldr	r3, [r4, r3]
  40acec: 681b         	ldr	r3, [r3]
  40acee: 4618         	mov	r0, r3
  40acf0: 2135         	movs	r1, #0x35
  40acf2: 2201         	movs	r2, #0x1
  40acf4: f7ed f824    	bl	0x3f7d40 <Sound::playSoundWithVoice(int, int)> @ imm = #-0x12fb8
  40acf8: f007 b90c    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x7218
  40acfc: f8df 3738    	ldr.w	r3, [pc, #0x738]        @ 0x40b438 <TrainingStage::doLesson(float)+0x1160>
  40ad00: 58e3         	ldr	r3, [r4, r3]
  40ad02: 681b         	ldr	r3, [r3]
  40ad04: f04f 4280    	mov.w	r2, #0x40000000
  40ad08: f8c3 21a8    	str.w	r2, [r3, #0x1a8]
  40ad0c: ab07         	add	r3, sp, #0x1c
  40ad0e: 681b         	ldr	r3, [r3]
  40ad10: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40ad14: 681b         	ldr	r3, [r3]
  40ad16: f503 730e    	add.w	r3, r3, #0x238
  40ad1a: 681b         	ldr	r3, [r3]
  40ad1c: aa07         	add	r2, sp, #0x1c
  40ad1e: 6812         	ldr	r2, [r2]
  40ad20: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40ad24: 4610         	mov	r0, r2
  40ad26: f04f 0100    	mov.w	r1, #0x0
  40ad2a: f2c4 3134    	movt	r1, #0x4334
  40ad2e: 4798         	blx	r3
  40ad30: f8df 3704    	ldr.w	r3, [pc, #0x704]        @ 0x40b438 <TrainingStage::doLesson(float)+0x1160>
  40ad34: 58e3         	ldr	r3, [r4, r3]
  40ad36: 681b         	ldr	r3, [r3]
  40ad38: 681b         	ldr	r3, [r3]
  40ad3a: f503 7329    	add.w	r3, r3, #0x2a4
  40ad3e: 681b         	ldr	r3, [r3]
  40ad40: f8df 26f4    	ldr.w	r2, [pc, #0x6f4]        @ 0x40b438 <TrainingStage::doLesson(float)+0x1160>
  40ad44: 58a2         	ldr	r2, [r4, r2]
  40ad46: 6812         	ldr	r2, [r2]
  40ad48: 4610         	mov	r0, r2
  40ad4a: f04f 0100    	mov.w	r1, #0x0
  40ad4e: 4798         	blx	r3
  40ad50: ab07         	add	r3, sp, #0x1c
  40ad52: 681b         	ldr	r3, [r3]
  40ad54: ed93 7a62    	vldr	s14, [r3, #392]
  40ad58: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  40ad5c: eeb4 7ae7    	vcmpe.f32	s14, s15
  40ad60: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40ad64: d505         	bpl	0x40ad72 <TrainingStage::doLesson(float)+0xa9a> @ imm = #0xa
  40ad66: aa07         	add	r2, sp, #0x1c
  40ad68: ab06         	add	r3, sp, #0x18
  40ad6a: 6810         	ldr	r0, [r2]
  40ad6c: 6819         	ldr	r1, [r3]
  40ad6e: f7ff f85f    	bl	0x409e30 <TrainingStage::headChatter(float)> @ imm = #-0xf42
  40ad72: ab07         	add	r3, sp, #0x1c
  40ad74: 681b         	ldr	r3, [r3]
  40ad76: ed93 7a62    	vldr	s14, [r3, #392]
  40ad7a: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  40ad7e: eeb4 7ae7    	vcmpe.f32	s14, s15
  40ad82: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40ad86: dc01         	bgt	0x40ad8c <TrainingStage::doLesson(float)+0xab4> @ imm = #0x2
  40ad88: f007 b8c4    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x7188
  40ad8c: ab07         	add	r3, sp, #0x1c
  40ad8e: 681b         	ldr	r3, [r3]
  40ad90: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  40ad94: 1c5a         	adds	r2, r3, #0x1
  40ad96: ab07         	add	r3, sp, #0x1c
  40ad98: 681b         	ldr	r3, [r3]
  40ad9a: f8c3 2180    	str.w	r2, [r3, #0x180]
  40ad9e: ab07         	add	r3, sp, #0x1c
  40ada0: 681b         	ldr	r3, [r3]
  40ada2: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  40ada6: f50d 6380    	add.w	r3, sp, #0x400
  40adaa: 4618         	mov	r0, r3
  40adac: f37f fb22    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37f644
  40adb0: f50d 6282    	add.w	r2, sp, #0x410
  40adb4: f50d 6380    	add.w	r3, sp, #0x400
  40adb8: 4610         	mov	r0, r2
  40adba: f8df 2684    	ldr.w	r2, [pc, #0x684]        @ 0x40b440 <TrainingStage::doLesson(float)+0x1168>
  40adbe: 447a         	add	r2, pc
  40adc0: 4611         	mov	r1, r2
  40adc2: 461a         	mov	r2, r3
  40adc4: f3ab fe4c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3abc98
  40adc8: 2000         	movs	r0, #0x0
  40adca: 2100         	movs	r1, #0x0
  40adcc: 22ff         	movs	r2, #0xff
  40adce: f7fd fb43    	bl	0x408458 <Tracer::checkCollision()+0x3cc> @ imm = #-0x297a
  40add2: 4602         	mov	r2, r0
  40add4: ab0d         	add	r3, sp, #0x34
  40add6: 4611         	mov	r1, r2
  40add8: 7019         	strb	r1, [r3]
  40adda: f3c2 2107    	ubfx	r1, r2, #0x8, #0x8
  40adde: 7059         	strb	r1, [r3, #0x1]
  40ade0: f3c2 4207    	ubfx	r2, r2, #0x10, #0x8
  40ade4: 709a         	strb	r2, [r3, #0x2]
  40ade6: f50d 6282    	add.w	r2, sp, #0x410
  40adea: ab0d         	add	r3, sp, #0x34
  40adec: 4628         	mov	r0, r5
  40adee: 4611         	mov	r1, r2
  40adf0: 681a         	ldr	r2, [r3]
  40adf2: 2302         	movs	r3, #0x2
  40adf4: f732 fa64    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xcdb38
  40adf8: f50d 6382    	add.w	r3, sp, #0x410
  40adfc: 4618         	mov	r0, r3
  40adfe: f3aa fd89    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3aab12
  40ae02: f50d 6380    	add.w	r3, sp, #0x400
  40ae06: 4618         	mov	r0, r3
  40ae08: f37f faf8    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37f5f0
  40ae0c: ab07         	add	r3, sp, #0x1c
  40ae0e: 681b         	ldr	r3, [r3]
  40ae10: f04f 0200    	mov.w	r2, #0x0
  40ae14: f8c3 2188    	str.w	r2, [r3, #0x188]
  40ae18: f8df 3618    	ldr.w	r3, [pc, #0x618]        @ 0x40b434 <TrainingStage::doLesson(float)+0x115c>
  40ae1c: 58e3         	ldr	r3, [r4, r3]
  40ae1e: 681b         	ldr	r3, [r3]
  40ae20: 4618         	mov	r0, r3
  40ae22: 2136         	movs	r1, #0x36
  40ae24: 2201         	movs	r2, #0x1
  40ae26: f7ec ff8b    	bl	0x3f7d40 <Sound::playSoundWithVoice(int, int)> @ imm = #-0x130ea
  40ae2a: f007 b873    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x70e6
  40ae2e: f8df 3608    	ldr.w	r3, [pc, #0x608]        @ 0x40b438 <TrainingStage::doLesson(float)+0x1160>
  40ae32: 58e3         	ldr	r3, [r4, r3]
  40ae34: 681b         	ldr	r3, [r3]
  40ae36: f04f 4280    	mov.w	r2, #0x40000000
  40ae3a: f8c3 21a8    	str.w	r2, [r3, #0x1a8]
  40ae3e: ab07         	add	r3, sp, #0x1c
  40ae40: 681b         	ldr	r3, [r3]
  40ae42: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40ae46: 681b         	ldr	r3, [r3]
  40ae48: f503 730e    	add.w	r3, r3, #0x238
  40ae4c: 681b         	ldr	r3, [r3]
  40ae4e: aa07         	add	r2, sp, #0x1c
  40ae50: 6812         	ldr	r2, [r2]
  40ae52: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40ae56: 4610         	mov	r0, r2
  40ae58: f04f 0100    	mov.w	r1, #0x0
  40ae5c: f2c4 3134    	movt	r1, #0x4334
  40ae60: 4798         	blx	r3
  40ae62: f8df 35d4    	ldr.w	r3, [pc, #0x5d4]        @ 0x40b438 <TrainingStage::doLesson(float)+0x1160>
  40ae66: 58e3         	ldr	r3, [r4, r3]
  40ae68: 681b         	ldr	r3, [r3]
  40ae6a: 681b         	ldr	r3, [r3]
  40ae6c: f503 7329    	add.w	r3, r3, #0x2a4
  40ae70: 681b         	ldr	r3, [r3]
  40ae72: f8df 25c4    	ldr.w	r2, [pc, #0x5c4]        @ 0x40b438 <TrainingStage::doLesson(float)+0x1160>
  40ae76: 58a2         	ldr	r2, [r4, r2]
  40ae78: 6812         	ldr	r2, [r2]
  40ae7a: 4610         	mov	r0, r2
  40ae7c: f04f 0100    	mov.w	r1, #0x0
  40ae80: 4798         	blx	r3
  40ae82: ab07         	add	r3, sp, #0x1c
  40ae84: 681b         	ldr	r3, [r3]
  40ae86: ed93 7a62    	vldr	s14, [r3, #392]
  40ae8a: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  40ae8e: eeb4 7ae7    	vcmpe.f32	s14, s15
  40ae92: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40ae96: d505         	bpl	0x40aea4 <TrainingStage::doLesson(float)+0xbcc> @ imm = #0xa
  40ae98: aa07         	add	r2, sp, #0x1c
  40ae9a: ab06         	add	r3, sp, #0x18
  40ae9c: 6810         	ldr	r0, [r2]
  40ae9e: 6819         	ldr	r1, [r3]
  40aea0: f7fe ffc6    	bl	0x409e30 <TrainingStage::headChatter(float)> @ imm = #-0x1074
  40aea4: ab07         	add	r3, sp, #0x1c
  40aea6: 681b         	ldr	r3, [r3]
  40aea8: ed93 7a62    	vldr	s14, [r3, #392]
  40aeac: eef0 7a04    	vmov.f32	s15, #2.500000e+00
  40aeb0: eeb4 7ae7    	vcmpe.f32	s14, s15
  40aeb4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40aeb8: dc01         	bgt	0x40aebe <TrainingStage::doLesson(float)+0xbe6> @ imm = #0x2
  40aeba: f007 b82b    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x7056
  40aebe: ab07         	add	r3, sp, #0x1c
  40aec0: 681b         	ldr	r3, [r3]
  40aec2: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  40aec6: 1c5a         	adds	r2, r3, #0x1
  40aec8: ab07         	add	r3, sp, #0x1c
  40aeca: 681b         	ldr	r3, [r3]
  40aecc: f8c3 2180    	str.w	r2, [r3, #0x180]
  40aed0: ab07         	add	r3, sp, #0x1c
  40aed2: 681b         	ldr	r3, [r3]
  40aed4: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  40aed8: f50d 6380    	add.w	r3, sp, #0x400
  40aedc: 4618         	mov	r0, r3
  40aede: f37f fa89    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37f512
  40aee2: f50d 6282    	add.w	r2, sp, #0x410
  40aee6: f50d 6380    	add.w	r3, sp, #0x400
  40aeea: 4610         	mov	r0, r2
  40aeec: f8df 2554    	ldr.w	r2, [pc, #0x554]        @ 0x40b444 <TrainingStage::doLesson(float)+0x116c>
  40aef0: 447a         	add	r2, pc
  40aef2: 4611         	mov	r1, r2
  40aef4: 461a         	mov	r2, r3
  40aef6: f3ab fdb3    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3abb66
  40aefa: 2000         	movs	r0, #0x0
  40aefc: 2100         	movs	r1, #0x0
  40aefe: 22ff         	movs	r2, #0xff
  40af00: f7fd faaa    	bl	0x408458 <Tracer::checkCollision()+0x3cc> @ imm = #-0x2aac
  40af04: 4602         	mov	r2, r0
  40af06: ab0e         	add	r3, sp, #0x38
  40af08: 4611         	mov	r1, r2
  40af0a: 7019         	strb	r1, [r3]
  40af0c: f3c2 2107    	ubfx	r1, r2, #0x8, #0x8
  40af10: 7059         	strb	r1, [r3, #0x1]
  40af12: f3c2 4207    	ubfx	r2, r2, #0x10, #0x8
  40af16: 709a         	strb	r2, [r3, #0x2]
  40af18: f50d 6282    	add.w	r2, sp, #0x410
  40af1c: ab0e         	add	r3, sp, #0x38
  40af1e: 4628         	mov	r0, r5
  40af20: 4611         	mov	r1, r2
  40af22: 681a         	ldr	r2, [r3]
  40af24: 2304         	movs	r3, #0x4
  40af26: f732 f9cb    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xcdc6a
  40af2a: f50d 6382    	add.w	r3, sp, #0x410
  40af2e: 4618         	mov	r0, r3
  40af30: f3aa fcf0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3aa9e0
  40af34: f50d 6380    	add.w	r3, sp, #0x400
  40af38: 4618         	mov	r0, r3
  40af3a: f37f fa5f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37f4be
  40af3e: ab07         	add	r3, sp, #0x1c
  40af40: 681b         	ldr	r3, [r3]
  40af42: f04f 0200    	mov.w	r2, #0x0
  40af46: f8c3 2188    	str.w	r2, [r3, #0x188]
  40af4a: f8df 34e8    	ldr.w	r3, [pc, #0x4e8]        @ 0x40b434 <TrainingStage::doLesson(float)+0x115c>
  40af4e: 58e3         	ldr	r3, [r4, r3]
  40af50: 681b         	ldr	r3, [r3]
  40af52: 4618         	mov	r0, r3
  40af54: 2137         	movs	r1, #0x37
  40af56: 2201         	movs	r2, #0x1
  40af58: f7ec fef2    	bl	0x3f7d40 <Sound::playSoundWithVoice(int, int)> @ imm = #-0x1321c
  40af5c: f006 bfda    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x6fb4
  40af60: f8df 34d4    	ldr.w	r3, [pc, #0x4d4]        @ 0x40b438 <TrainingStage::doLesson(float)+0x1160>
  40af64: 58e3         	ldr	r3, [r4, r3]
  40af66: 681b         	ldr	r3, [r3]
  40af68: f04f 4280    	mov.w	r2, #0x40000000
  40af6c: f8c3 21a8    	str.w	r2, [r3, #0x1a8]
  40af70: f8df 34c4    	ldr.w	r3, [pc, #0x4c4]        @ 0x40b438 <TrainingStage::doLesson(float)+0x1160>
  40af74: 58e3         	ldr	r3, [r4, r3]
  40af76: 681b         	ldr	r3, [r3]
  40af78: 2232         	movs	r2, #0x32
  40af7a: f8c3 21a4    	str.w	r2, [r3, #0x1a4]
  40af7e: f8df 34b8    	ldr.w	r3, [pc, #0x4b8]        @ 0x40b438 <TrainingStage::doLesson(float)+0x1160>
  40af82: 58e3         	ldr	r3, [r4, r3]
  40af84: 681b         	ldr	r3, [r3]
  40af86: f04f 4280    	mov.w	r2, #0x40000000
  40af8a: f8c3 21a8    	str.w	r2, [r3, #0x1a8]
  40af8e: ab07         	add	r3, sp, #0x1c
  40af90: 681b         	ldr	r3, [r3]
  40af92: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40af96: 681b         	ldr	r3, [r3]
  40af98: f503 730e    	add.w	r3, r3, #0x238
  40af9c: 681b         	ldr	r3, [r3]
  40af9e: aa07         	add	r2, sp, #0x1c
  40afa0: 6812         	ldr	r2, [r2]
  40afa2: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40afa6: 4610         	mov	r0, r2
  40afa8: f04f 0100    	mov.w	r1, #0x0
  40afac: f2c4 3134    	movt	r1, #0x4334
  40afb0: 4798         	blx	r3
  40afb2: f8df 3484    	ldr.w	r3, [pc, #0x484]        @ 0x40b438 <TrainingStage::doLesson(float)+0x1160>
  40afb6: 58e3         	ldr	r3, [r4, r3]
  40afb8: 681b         	ldr	r3, [r3]
  40afba: 681b         	ldr	r3, [r3]
  40afbc: f503 7329    	add.w	r3, r3, #0x2a4
  40afc0: 681b         	ldr	r3, [r3]
  40afc2: f8df 2474    	ldr.w	r2, [pc, #0x474]        @ 0x40b438 <TrainingStage::doLesson(float)+0x1160>
  40afc6: 58a2         	ldr	r2, [r4, r2]
  40afc8: 6812         	ldr	r2, [r2]
  40afca: 4610         	mov	r0, r2
  40afcc: f04f 0100    	mov.w	r1, #0x0
  40afd0: 4798         	blx	r3
  40afd2: ab07         	add	r3, sp, #0x1c
  40afd4: 681b         	ldr	r3, [r3]
  40afd6: ed93 7a62    	vldr	s14, [r3, #392]
  40afda: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  40afde: eeb4 7ae7    	vcmpe.f32	s14, s15
  40afe2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40afe6: d505         	bpl	0x40aff4 <TrainingStage::doLesson(float)+0xd1c> @ imm = #0xa
  40afe8: aa07         	add	r2, sp, #0x1c
  40afea: ab06         	add	r3, sp, #0x18
  40afec: 6810         	ldr	r0, [r2]
  40afee: 6819         	ldr	r1, [r3]
  40aff0: f7fe ff1e    	bl	0x409e30 <TrainingStage::headChatter(float)> @ imm = #-0x11c4
  40aff4: ab07         	add	r3, sp, #0x1c
  40aff6: 681b         	ldr	r3, [r3]
  40aff8: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  40affc: 681b         	ldr	r3, [r3]
  40affe: 3390         	adds	r3, #0x90
  40b000: 681b         	ldr	r3, [r3]
  40b002: aa07         	add	r2, sp, #0x1c
  40b004: 6812         	ldr	r2, [r2]
  40b006: f8d2 2174    	ldr.w	r2, [r2, #0x174]
  40b00a: 4610         	mov	r0, r2
  40b00c: 2100         	movs	r1, #0x0
  40b00e: 4798         	blx	r3
  40b010: ab07         	add	r3, sp, #0x1c
  40b012: 681b         	ldr	r3, [r3]
  40b014: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  40b018: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  40b01c: f893 3130    	ldrb.w	r3, [r3, #0x130]
  40b020: f083 0301    	eor	r3, r3, #0x1
  40b024: b2db         	uxtb	r3, r3
  40b026: 2b00         	cmp	r3, #0x0
  40b028: f000 808a    	beq.w	0x40b140 <TrainingStage::doLesson(float)+0xe68> @ imm = #0x114
  40b02c: ab07         	add	r3, sp, #0x1c
  40b02e: 681b         	ldr	r3, [r3]
  40b030: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  40b034: 681b         	ldr	r3, [r3]
  40b036: 3390         	adds	r3, #0x90
  40b038: 681b         	ldr	r3, [r3]
  40b03a: aa07         	add	r2, sp, #0x1c
  40b03c: 6812         	ldr	r2, [r2]
  40b03e: f8d2 2174    	ldr.w	r2, [r2, #0x174]
  40b042: 4610         	mov	r0, r2
  40b044: 2101         	movs	r1, #0x1
  40b046: 4798         	blx	r3
  40b048: ab07         	add	r3, sp, #0x1c
  40b04a: 681b         	ldr	r3, [r3]
  40b04c: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  40b050: 681b         	ldr	r3, [r3]
  40b052: 3398         	adds	r3, #0x98
  40b054: 681b         	ldr	r3, [r3]
  40b056: aa07         	add	r2, sp, #0x1c
  40b058: 6812         	ldr	r2, [r2]
  40b05a: f8d2 2174    	ldr.w	r2, [r2, #0x174]
  40b05e: 4610         	mov	r0, r2
  40b060: f04f 0100    	mov.w	r1, #0x0
  40b064: f2c4 21b4    	movt	r1, #0x42b4
  40b068: 4798         	blx	r3
  40b06a: ab07         	add	r3, sp, #0x1c
  40b06c: 681b         	ldr	r3, [r3]
  40b06e: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  40b072: 681b         	ldr	r3, [r3]
  40b074: 334c         	adds	r3, #0x4c
  40b076: 681d         	ldr	r5, [r3]
  40b078: ab07         	add	r3, sp, #0x1c
  40b07a: 681b         	ldr	r3, [r3]
  40b07c: f8d3 616c    	ldr.w	r6, [r3, #0x16c]
  40b080: ab07         	add	r3, sp, #0x1c
  40b082: 681b         	ldr	r3, [r3]
  40b084: ed93 7a62    	vldr	s14, [r3, #392]
  40b088: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  40b08c: ee67 7a27    	vmul.f32	s15, s14, s15
  40b090: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  40b094: ec51 0b17    	vmov	r0, r1, d7
  40b098: f6ca ef36    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x135194
  40b09c: ec41 0b16    	vmov	d6, r0, r1
  40b0a0: eeb2 7b04    	vmov.f64	d7, #1.000000e+01
  40b0a4: ee26 7b07    	vmul.f64	d7, d6, d7
  40b0a8: eef7 7bc7    	vcvt.f32.f64	s15, d7
  40b0ac: f50d 6382    	add.w	r3, sp, #0x410
  40b0b0: 4618         	mov	r0, r3
  40b0b2: ee17 1a90    	vmov	r1, s15
  40b0b6: f04f 0200    	mov.w	r2, #0x0
  40b0ba: f187 fe19    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x187c32
  40b0be: f50d 6382    	add.w	r3, sp, #0x410
  40b0c2: 4630         	mov	r0, r6
  40b0c4: 4619         	mov	r1, r3
  40b0c6: 47a8         	blx	r5
  40b0c8: ab07         	add	r3, sp, #0x1c
  40b0ca: 681b         	ldr	r3, [r3]
  40b0cc: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  40b0d0: 681b         	ldr	r3, [r3]
  40b0d2: 334c         	adds	r3, #0x4c
  40b0d4: 681d         	ldr	r5, [r3]
  40b0d6: ab07         	add	r3, sp, #0x1c
  40b0d8: 681b         	ldr	r3, [r3]
  40b0da: f8d3 6174    	ldr.w	r6, [r3, #0x174]
  40b0de: ab07         	add	r3, sp, #0x1c
  40b0e0: 681b         	ldr	r3, [r3]
  40b0e2: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  40b0e6: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  40b0ea: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  40b0ee: 681b         	ldr	r3, [r3]
  40b0f0: 3350         	adds	r3, #0x50
  40b0f2: 681b         	ldr	r3, [r3]
  40b0f4: aa07         	add	r2, sp, #0x1c
  40b0f6: 6812         	ldr	r2, [r2]
  40b0f8: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  40b0fc: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  40b100: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  40b104: 4610         	mov	r0, r2
  40b106: 4798         	blx	r3
  40b108: 4607         	mov	r7, r0
  40b10a: f50d 6380    	add.w	r3, sp, #0x400
  40b10e: 4618         	mov	r0, r3
  40b110: f04f 0100    	mov.w	r1, #0x0
  40b114: f2cc 1170    	movt	r1, #0xc170
  40b118: f04f 0200    	mov.w	r2, #0x0
  40b11c: f2c4 228c    	movt	r2, #0x428c
  40b120: f187 fde6    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x187bcc
  40b124: f50d 6282    	add.w	r2, sp, #0x410
  40b128: f50d 6380    	add.w	r3, sp, #0x400
  40b12c: 4610         	mov	r0, r2
  40b12e: 4639         	mov	r1, r7
  40b130: 461a         	mov	r2, r3
  40b132: f7fd f9bf    	bl	0x4084b4 <Tracer::checkCollision()+0x428> @ imm = #-0x2c82
  40b136: f50d 6382    	add.w	r3, sp, #0x410
  40b13a: 4630         	mov	r0, r6
  40b13c: 4619         	mov	r1, r3
  40b13e: 47a8         	blx	r5
  40b140: ab07         	add	r3, sp, #0x1c
  40b142: 681b         	ldr	r3, [r3]
  40b144: ed93 7a62    	vldr	s14, [r3, #392]
  40b148: eef2 7a00    	vmov.f32	s15, #8.000000e+00
  40b14c: eeb4 7ae7    	vcmpe.f32	s14, s15
  40b150: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40b154: dc01         	bgt	0x40b15a <TrainingStage::doLesson(float)+0xe82> @ imm = #0x2
  40b156: f006 bedd    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x6dba
  40b15a: ab07         	add	r3, sp, #0x1c
  40b15c: 681b         	ldr	r3, [r3]
  40b15e: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  40b162: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  40b166: f893 3130    	ldrb.w	r3, [r3, #0x130]
  40b16a: 2b00         	cmp	r3, #0x0
  40b16c: d05a         	beq	0x40b224 <TrainingStage::doLesson(float)+0xf4c> @ imm = #0xb4
  40b16e: ab07         	add	r3, sp, #0x1c
  40b170: 681b         	ldr	r3, [r3]
  40b172: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  40b176: 1c5a         	adds	r2, r3, #0x1
  40b178: ab07         	add	r3, sp, #0x1c
  40b17a: 681b         	ldr	r3, [r3]
  40b17c: f8c3 2180    	str.w	r2, [r3, #0x180]
  40b180: ab07         	add	r3, sp, #0x1c
  40b182: 681b         	ldr	r3, [r3]
  40b184: f04f 0200    	mov.w	r2, #0x0
  40b188: f8c3 2188    	str.w	r2, [r3, #0x188]
  40b18c: ab07         	add	r3, sp, #0x1c
  40b18e: 681b         	ldr	r3, [r3]
  40b190: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  40b194: 681b         	ldr	r3, [r3]
  40b196: 3390         	adds	r3, #0x90
  40b198: 681b         	ldr	r3, [r3]
  40b19a: aa07         	add	r2, sp, #0x1c
  40b19c: 6812         	ldr	r2, [r2]
  40b19e: f8d2 2174    	ldr.w	r2, [r2, #0x174]
  40b1a2: 4610         	mov	r0, r2
  40b1a4: 2100         	movs	r1, #0x0
  40b1a6: 4798         	blx	r3
  40b1a8: ab07         	add	r3, sp, #0x1c
  40b1aa: 681b         	ldr	r3, [r3]
  40b1ac: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  40b1b0: f50d 6380    	add.w	r3, sp, #0x400
  40b1b4: 4618         	mov	r0, r3
  40b1b6: f37f f91d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37f23a
  40b1ba: f50d 6282    	add.w	r2, sp, #0x410
  40b1be: f50d 6380    	add.w	r3, sp, #0x400
  40b1c2: 4610         	mov	r0, r2
  40b1c4: 4aa0         	ldr	r2, [pc, #0x280]        @ 0x40b448 <TrainingStage::doLesson(float)+0x1170>
  40b1c6: 447a         	add	r2, pc
  40b1c8: 4611         	mov	r1, r2
  40b1ca: 461a         	mov	r2, r3
  40b1cc: f3ab fc48    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3ab890
  40b1d0: 2000         	movs	r0, #0x0
  40b1d2: 2100         	movs	r1, #0x0
  40b1d4: 22ff         	movs	r2, #0xff
  40b1d6: f7fd f93f    	bl	0x408458 <Tracer::checkCollision()+0x3cc> @ imm = #-0x2d82
  40b1da: 4602         	mov	r2, r0
  40b1dc: ab0f         	add	r3, sp, #0x3c
  40b1de: 4611         	mov	r1, r2
  40b1e0: 7019         	strb	r1, [r3]
  40b1e2: f3c2 2107    	ubfx	r1, r2, #0x8, #0x8
  40b1e6: 7059         	strb	r1, [r3, #0x1]
  40b1e8: f3c2 4207    	ubfx	r2, r2, #0x10, #0x8
  40b1ec: 709a         	strb	r2, [r3, #0x2]
  40b1ee: f50d 6282    	add.w	r2, sp, #0x410
  40b1f2: ab0f         	add	r3, sp, #0x3c
  40b1f4: 4628         	mov	r0, r5
  40b1f6: 4611         	mov	r1, r2
  40b1f8: 681a         	ldr	r2, [r3]
  40b1fa: 2302         	movs	r3, #0x2
  40b1fc: f732 f860    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xcdf40
  40b200: f50d 6382    	add.w	r3, sp, #0x410
  40b204: 4618         	mov	r0, r3
  40b206: f3aa fb85    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3aa70a
  40b20a: f50d 6380    	add.w	r3, sp, #0x400
  40b20e: 4618         	mov	r0, r3
  40b210: f37f f8f4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37f1e8
  40b214: 4b87         	ldr	r3, [pc, #0x21c]        @ 0x40b434 <TrainingStage::doLesson(float)+0x115c>
  40b216: 58e3         	ldr	r3, [r4, r3]
  40b218: 681b         	ldr	r3, [r3]
  40b21a: 4618         	mov	r0, r3
  40b21c: 2138         	movs	r1, #0x38
  40b21e: 2201         	movs	r2, #0x1
  40b220: f7ec fd8e    	bl	0x3f7d40 <Sound::playSoundWithVoice(int, int)> @ imm = #-0x134e4
  40b224: f006 be76    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x6cec
  40b228: ab07         	add	r3, sp, #0x1c
  40b22a: 681b         	ldr	r3, [r3]
  40b22c: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40b230: 681b         	ldr	r3, [r3]
  40b232: f503 730e    	add.w	r3, r3, #0x238
  40b236: 681b         	ldr	r3, [r3]
  40b238: aa07         	add	r2, sp, #0x1c
  40b23a: 6812         	ldr	r2, [r2]
  40b23c: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40b240: 4610         	mov	r0, r2
  40b242: f04f 0100    	mov.w	r1, #0x0
  40b246: f2c4 3134    	movt	r1, #0x4334
  40b24a: 4798         	blx	r3
  40b24c: 4b7a         	ldr	r3, [pc, #0x1e8]        @ 0x40b438 <TrainingStage::doLesson(float)+0x1160>
  40b24e: 58e3         	ldr	r3, [r4, r3]
  40b250: 681b         	ldr	r3, [r3]
  40b252: 681b         	ldr	r3, [r3]
  40b254: f503 7329    	add.w	r3, r3, #0x2a4
  40b258: 681b         	ldr	r3, [r3]
  40b25a: 4a77         	ldr	r2, [pc, #0x1dc]        @ 0x40b438 <TrainingStage::doLesson(float)+0x1160>
  40b25c: 58a2         	ldr	r2, [r4, r2]
  40b25e: 6812         	ldr	r2, [r2]
  40b260: 4610         	mov	r0, r2
  40b262: f04f 0100    	mov.w	r1, #0x0
  40b266: 4798         	blx	r3
  40b268: ab07         	add	r3, sp, #0x1c
  40b26a: 681b         	ldr	r3, [r3]
  40b26c: ed93 7a62    	vldr	s14, [r3, #392]
  40b270: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  40b274: eeb4 7ae7    	vcmpe.f32	s14, s15
  40b278: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40b27c: d505         	bpl	0x40b28a <TrainingStage::doLesson(float)+0xfb2> @ imm = #0xa
  40b27e: aa07         	add	r2, sp, #0x1c
  40b280: ab06         	add	r3, sp, #0x18
  40b282: 6810         	ldr	r0, [r2]
  40b284: 6819         	ldr	r1, [r3]
  40b286: f7fe fdd3    	bl	0x409e30 <TrainingStage::headChatter(float)> @ imm = #-0x145a
  40b28a: ab07         	add	r3, sp, #0x1c
  40b28c: 681b         	ldr	r3, [r3]
  40b28e: ed93 7a62    	vldr	s14, [r3, #392]
  40b292: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  40b296: eeb4 7ae7    	vcmpe.f32	s14, s15
  40b29a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40b29e: dc01         	bgt	0x40b2a4 <TrainingStage::doLesson(float)+0xfcc> @ imm = #0x2
  40b2a0: f006 be38    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x6c70
  40b2a4: ab07         	add	r3, sp, #0x1c
  40b2a6: 681b         	ldr	r3, [r3]
  40b2a8: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  40b2ac: 1c5a         	adds	r2, r3, #0x1
  40b2ae: ab07         	add	r3, sp, #0x1c
  40b2b0: 681b         	ldr	r3, [r3]
  40b2b2: f8c3 2180    	str.w	r2, [r3, #0x180]
  40b2b6: ab07         	add	r3, sp, #0x1c
  40b2b8: 681b         	ldr	r3, [r3]
  40b2ba: f04f 0200    	mov.w	r2, #0x0
  40b2be: f8c3 2188    	str.w	r2, [r3, #0x188]
  40b2c2: ab07         	add	r3, sp, #0x1c
  40b2c4: 681b         	ldr	r3, [r3]
  40b2c6: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  40b2ca: f50d 6380    	add.w	r3, sp, #0x400
  40b2ce: 4618         	mov	r0, r3
  40b2d0: f37f f890    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37f120
  40b2d4: f50d 6282    	add.w	r2, sp, #0x410
  40b2d8: f50d 6380    	add.w	r3, sp, #0x400
  40b2dc: 4610         	mov	r0, r2
  40b2de: 4a5b         	ldr	r2, [pc, #0x16c]        @ 0x40b44c <TrainingStage::doLesson(float)+0x1174>
  40b2e0: 447a         	add	r2, pc
  40b2e2: 4611         	mov	r1, r2
  40b2e4: 461a         	mov	r2, r3
  40b2e6: f3ab fbbb    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3ab776
  40b2ea: 2000         	movs	r0, #0x0
  40b2ec: 2100         	movs	r1, #0x0
  40b2ee: 22ff         	movs	r2, #0xff
  40b2f0: f7fd f8b2    	bl	0x408458 <Tracer::checkCollision()+0x3cc> @ imm = #-0x2e9c
  40b2f4: 4602         	mov	r2, r0
  40b2f6: ab10         	add	r3, sp, #0x40
  40b2f8: 4611         	mov	r1, r2
  40b2fa: 7019         	strb	r1, [r3]
  40b2fc: f3c2 2107    	ubfx	r1, r2, #0x8, #0x8
  40b300: 7059         	strb	r1, [r3, #0x1]
  40b302: f3c2 4207    	ubfx	r2, r2, #0x10, #0x8
  40b306: 709a         	strb	r2, [r3, #0x2]
  40b308: f50d 6282    	add.w	r2, sp, #0x410
  40b30c: ab10         	add	r3, sp, #0x40
  40b30e: 4628         	mov	r0, r5
  40b310: 4611         	mov	r1, r2
  40b312: 681a         	ldr	r2, [r3]
  40b314: 2305         	movs	r3, #0x5
  40b316: f731 ffd3    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xce05a
  40b31a: f50d 6382    	add.w	r3, sp, #0x410
  40b31e: 4618         	mov	r0, r3
  40b320: f3aa faf8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3aa5f0
  40b324: f50d 6380    	add.w	r3, sp, #0x400
  40b328: 4618         	mov	r0, r3
  40b32a: f37f f867    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37f0ce
  40b32e: 4b41         	ldr	r3, [pc, #0x104]        @ 0x40b434 <TrainingStage::doLesson(float)+0x115c>
  40b330: 58e3         	ldr	r3, [r4, r3]
  40b332: 681b         	ldr	r3, [r3]
  40b334: 4618         	mov	r0, r3
  40b336: 2139         	movs	r1, #0x39
  40b338: 2201         	movs	r2, #0x1
  40b33a: f7ec fd01    	bl	0x3f7d40 <Sound::playSoundWithVoice(int, int)> @ imm = #-0x135fe
  40b33e: f006 bde9    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x6bd2
  40b342: ab07         	add	r3, sp, #0x1c
  40b344: 681b         	ldr	r3, [r3]
  40b346: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40b34a: 681b         	ldr	r3, [r3]
  40b34c: f503 730e    	add.w	r3, r3, #0x238
  40b350: 681b         	ldr	r3, [r3]
  40b352: aa07         	add	r2, sp, #0x1c
  40b354: 6812         	ldr	r2, [r2]
  40b356: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40b35a: 4610         	mov	r0, r2
  40b35c: f04f 0100    	mov.w	r1, #0x0
  40b360: f2c4 3134    	movt	r1, #0x4334
  40b364: 4798         	blx	r3
  40b366: 4b34         	ldr	r3, [pc, #0xd0]         @ 0x40b438 <TrainingStage::doLesson(float)+0x1160>
  40b368: 58e3         	ldr	r3, [r4, r3]
  40b36a: 681b         	ldr	r3, [r3]
  40b36c: 681b         	ldr	r3, [r3]
  40b36e: f503 7329    	add.w	r3, r3, #0x2a4
  40b372: 681b         	ldr	r3, [r3]
  40b374: 4a30         	ldr	r2, [pc, #0xc0]         @ 0x40b438 <TrainingStage::doLesson(float)+0x1160>
  40b376: 58a2         	ldr	r2, [r4, r2]
  40b378: 6812         	ldr	r2, [r2]
  40b37a: 4610         	mov	r0, r2
  40b37c: f04f 0100    	mov.w	r1, #0x0
  40b380: 4798         	blx	r3
  40b382: ab07         	add	r3, sp, #0x1c
  40b384: 681b         	ldr	r3, [r3]
  40b386: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40b38a: 2201         	movs	r2, #0x1
  40b38c: f883 211c    	strb.w	r2, [r3, #0x11c]
  40b390: ab07         	add	r3, sp, #0x1c
  40b392: 681b         	ldr	r3, [r3]
  40b394: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40b398: 681b         	ldr	r3, [r3]
  40b39a: f503 730c    	add.w	r3, r3, #0x230
  40b39e: 681d         	ldr	r5, [r3]
  40b3a0: ab07         	add	r3, sp, #0x1c
  40b3a2: 681b         	ldr	r3, [r3]
  40b3a4: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40b3a8: 461e         	mov	r6, r3
  40b3aa: ab44         	add	r3, sp, #0x110
  40b3ac: 4618         	mov	r0, r3
  40b3ae: eebe 0b08    	vmov.f64	d0, #-7.500000e-01
  40b3b2: ed9f 1b1d    	vldr	d1, [pc, #116]          @ 0x40b428 <TrainingStage::doLesson(float)+0x1150>
  40b3b6: f7fd f88d    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x2ee6
  40b3ba: ab44         	add	r3, sp, #0x110
  40b3bc: 466a         	mov	r2, sp
  40b3be: f103 0108    	add.w	r1, r3, #0x8
  40b3c2: c903         	ldm	r1, {r0, r1}
  40b3c4: e882 0003    	stm.w	r2, {r0, r1}
  40b3c8: cb0c         	ldm	r3, {r2, r3}
  40b3ca: 4630         	mov	r0, r6
  40b3cc: 47a8         	blx	r5
  40b3ce: ab07         	add	r3, sp, #0x1c
  40b3d0: 681b         	ldr	r3, [r3]
  40b3d2: ed93 7a62    	vldr	s14, [r3, #392]
  40b3d6: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  40b3da: eeb4 7ae7    	vcmpe.f32	s14, s15
  40b3de: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40b3e2: d505         	bpl	0x40b3f0 <TrainingStage::doLesson(float)+0x1118> @ imm = #0xa
  40b3e4: aa07         	add	r2, sp, #0x1c
  40b3e6: ab06         	add	r3, sp, #0x18
  40b3e8: 6810         	ldr	r0, [r2]
  40b3ea: 6819         	ldr	r1, [r3]
  40b3ec: f7fe fd20    	bl	0x409e30 <TrainingStage::headChatter(float)> @ imm = #-0x15c0
  40b3f0: ab07         	add	r3, sp, #0x1c
  40b3f2: 681b         	ldr	r3, [r3]
  40b3f4: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40b3f8: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  40b3fc: ed93 6b0a    	vldr	d6, [r3, #40]
  40b400: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x40b438 <TrainingStage::doLesson(float)+0x1160>
  40b402: 58e3         	ldr	r3, [r4, r3]
  40b404: 681b         	ldr	r3, [r3]
  40b406: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  40b40a: ed93 5b0a    	vldr	d5, [r3, #40]
  40b40e: eeb2 7b0e    	vmov.f64	d7, #1.500000e+01
  40b412: ee35 7b07    	vadd.f64	d7, d5, d7
  40b416: eeb4 6bc7    	vcmpe.f64	d6, d7
  40b41a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40b41e: d417         	bmi	0x40b450 <TrainingStage::doLesson(float)+0x1178> @ imm = #0x2e
  40b420: f006 bd78    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x6af0
  40b424: f3af 8000    	nop.w
  40b430: fdaa 003c    	stc2	p0, c0, [r10, #240]!
  40b434: d730         	bvc	0x40b498 <TrainingStage::doLesson(float)+0x11c0> @ imm = #0x60
  40b436: ffff d784    	<unknown>
  40b43a: ffff fcac    	<unknown>
  40b43e: 003c         	movs	r4, r7
  40b440: fbaa 003c    	<unknown>
  40b444: faa0 003c    	<unknown>
  40b448: f7fe 003c    	<unknown>
  40b44c: f6fc 003c    	<unknown>
  40b450: ab07         	add	r3, sp, #0x1c
  40b452: 681b         	ldr	r3, [r3]
  40b454: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40b458: 681b         	ldr	r3, [r3]
  40b45a: f503 730c    	add.w	r3, r3, #0x230
  40b45e: 681d         	ldr	r5, [r3]
  40b460: ab07         	add	r3, sp, #0x1c
  40b462: 681b         	ldr	r3, [r3]
  40b464: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40b468: 461e         	mov	r6, r3
  40b46a: ab48         	add	r3, sp, #0x120
  40b46c: 4618         	mov	r0, r3
  40b46e: ed9f 0bb2    	vldr	d0, [pc, #712]          @ 0x40b738 <TrainingStage::doLesson(float)+0x1460>
  40b472: ed9f 1bb1    	vldr	d1, [pc, #708]          @ 0x40b738 <TrainingStage::doLesson(float)+0x1460>
  40b476: f7fd f82d    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x2fa6
  40b47a: ab48         	add	r3, sp, #0x120
  40b47c: 466a         	mov	r2, sp
  40b47e: f103 0108    	add.w	r1, r3, #0x8
  40b482: c903         	ldm	r1, {r0, r1}
  40b484: e882 0003    	stm.w	r2, {r0, r1}
  40b488: cb0c         	ldm	r3, {r2, r3}
  40b48a: 4630         	mov	r0, r6
  40b48c: 47a8         	blx	r5
  40b48e: ab07         	add	r3, sp, #0x1c
  40b490: 681b         	ldr	r3, [r3]
  40b492: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40b496: 2200         	movs	r2, #0x0
  40b498: f883 211c    	strb.w	r2, [r3, #0x11c]
  40b49c: ab07         	add	r3, sp, #0x1c
  40b49e: 681b         	ldr	r3, [r3]
  40b4a0: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  40b4a4: 1c5a         	adds	r2, r3, #0x1
  40b4a6: ab07         	add	r3, sp, #0x1c
  40b4a8: 681b         	ldr	r3, [r3]
  40b4aa: f8c3 2180    	str.w	r2, [r3, #0x180]
  40b4ae: ab07         	add	r3, sp, #0x1c
  40b4b0: 681b         	ldr	r3, [r3]
  40b4b2: f04f 0200    	mov.w	r2, #0x0
  40b4b6: f8c3 2188    	str.w	r2, [r3, #0x188]
  40b4ba: f00c fa63    	bl	0x417984 <WeaponFactory::sharedWeaponFactory()> @ imm = #0xc4c6
  40b4be: 4603         	mov	r3, r0
  40b4c0: 4618         	mov	r0, r3
  40b4c2: 2108         	movs	r1, #0x8
  40b4c4: f00d f91a    	bl	0x4186fc <WeaponFactory::createWeaponFromAmmoType(ItemType)> @ imm = #0xd234
  40b4c8: 4602         	mov	r2, r0
  40b4ca: ab34         	add	r3, sp, #0xd0
  40b4cc: 601a         	str	r2, [r3]
  40b4ce: ab34         	add	r3, sp, #0xd0
  40b4d0: 681b         	ldr	r3, [r3]
  40b4d2: 681b         	ldr	r3, [r3]
  40b4d4: f503 7300    	add.w	r3, r3, #0x200
  40b4d8: 681d         	ldr	r5, [r3]
  40b4da: 4b99         	ldr	r3, [pc, #0x264]        @ 0x40b740 <TrainingStage::doLesson(float)+0x1468>
  40b4dc: 58e3         	ldr	r3, [r4, r3]
  40b4de: 681b         	ldr	r3, [r3]
  40b4e0: 681b         	ldr	r3, [r3]
  40b4e2: f503 73e0    	add.w	r3, r3, #0x1c0
  40b4e6: 681b         	ldr	r3, [r3]
  40b4e8: 4a95         	ldr	r2, [pc, #0x254]        @ 0x40b740 <TrainingStage::doLesson(float)+0x1468>
  40b4ea: 58a2         	ldr	r2, [r4, r2]
  40b4ec: 6812         	ldr	r2, [r2]
  40b4ee: f50d 6182    	add.w	r1, sp, #0x410
  40b4f2: 4608         	mov	r0, r1
  40b4f4: 4611         	mov	r1, r2
  40b4f6: 4798         	blx	r3
  40b4f8: aa34         	add	r2, sp, #0xd0
  40b4fa: f50d 6382    	add.w	r3, sp, #0x410
  40b4fe: 6810         	ldr	r0, [r2]
  40b500: 4619         	mov	r1, r3
  40b502: 47a8         	blx	r5
  40b504: f50d 6382    	add.w	r3, sp, #0x410
  40b508: 4618         	mov	r0, r3
  40b50a: f3aa fa03    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3aa406
  40b50e: ab34         	add	r3, sp, #0xd0
  40b510: 681b         	ldr	r3, [r3]
  40b512: f8d3 60e8    	ldr.w	r6, [r3, #0xe8]
  40b516: 4b8a         	ldr	r3, [pc, #0x228]        @ 0x40b740 <TrainingStage::doLesson(float)+0x1468>
  40b518: 58e3         	ldr	r3, [r4, r3]
  40b51a: 681b         	ldr	r3, [r3]
  40b51c: f8d3 5138    	ldr.w	r5, [r3, #0x138]
  40b520: ab4c         	add	r3, sp, #0x130
  40b522: 4618         	mov	r0, r3
  40b524: eeba 0b04    	vmov.f64	d0, #-1.000000e+01
  40b528: ed9f 1b83    	vldr	d1, [pc, #524]          @ 0x40b738 <TrainingStage::doLesson(float)+0x1460>
  40b52c: f7fc ffd2    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x305c
  40b530: aa02         	add	r2, sp, #0x8
  40b532: ed95 4b0a    	vldr	d4, [r5, #40]
  40b536: ed95 5b0c    	vldr	d5, [r5, #48]
  40b53a: ab4c         	add	r3, sp, #0x130
  40b53c: ed93 6b00    	vldr	d6, [r3]
  40b540: ed93 7b02    	vldr	d7, [r3, #8]
  40b544: 4610         	mov	r0, r2
  40b546: eeb0 0b44    	vmov.f64	d0, d4
  40b54a: eeb0 1b45    	vmov.f64	d1, d5
  40b54e: eeb0 2b46    	vmov.f64	d2, d6
  40b552: eeb0 3b47    	vmov.f64	d3, d7
  40b556: f7fc ffd1    	bl	0x4084fc <Tracer::checkCollision()+0x470> @ imm = #-0x305e
  40b55a: ab02         	add	r3, sp, #0x8
  40b55c: f106 0528    	add.w	r5, r6, #0x28
  40b560: cb0f         	ldm	r3, {r0, r1, r2, r3}
  40b562: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  40b566: ab34         	add	r3, sp, #0xd0
  40b568: 681b         	ldr	r3, [r3]
  40b56a: 681b         	ldr	r3, [r3]
  40b56c: 334c         	adds	r3, #0x4c
  40b56e: 681d         	ldr	r5, [r3]
  40b570: ab34         	add	r3, sp, #0xd0
  40b572: 681e         	ldr	r6, [r3]
  40b574: ab34         	add	r3, sp, #0xd0
  40b576: 681b         	ldr	r3, [r3]
  40b578: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  40b57c: ed93 7b0a    	vldr	d7, [r3, #40]
  40b580: eef7 6bc7    	vcvt.f32.f64	s13, d7
  40b584: ab34         	add	r3, sp, #0xd0
  40b586: 681b         	ldr	r3, [r3]
  40b588: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  40b58c: ed93 7b0c    	vldr	d7, [r3, #48]
  40b590: eef7 7bc7    	vcvt.f32.f64	s15, d7
  40b594: f50d 6382    	add.w	r3, sp, #0x410
  40b598: 4618         	mov	r0, r3
  40b59a: ee16 1a90    	vmov	r1, s13
  40b59e: ee17 2a90    	vmov	r2, s15
  40b5a2: f187 fba5    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x18774a
  40b5a6: f50d 6382    	add.w	r3, sp, #0x410
  40b5aa: 4630         	mov	r0, r6
  40b5ac: 4619         	mov	r1, r3
  40b5ae: 47a8         	blx	r5
  40b5b0: ab34         	add	r3, sp, #0xd0
  40b5b2: 681b         	ldr	r3, [r3]
  40b5b4: f8d3 50e8    	ldr.w	r5, [r3, #0xe8]
  40b5b8: ab02         	add	r3, sp, #0x8
  40b5ba: 4618         	mov	r0, r3
  40b5bc: ed9f 0b5e    	vldr	d0, [pc, #376]          @ 0x40b738 <TrainingStage::doLesson(float)+0x1460>
  40b5c0: eeb3 1b09    	vmov.f64	d1, #2.500000e+01
  40b5c4: f7fc ff86    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x30f4
  40b5c8: ab02         	add	r3, sp, #0x8
  40b5ca: 3538         	adds	r5, #0x38
  40b5cc: cb0f         	ldm	r3, {r0, r1, r2, r3}
  40b5ce: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  40b5d2: ab34         	add	r3, sp, #0xd0
  40b5d4: 681b         	ldr	r3, [r3]
  40b5d6: f8d3 10e8    	ldr.w	r1, [r3, #0xe8]
  40b5da: f04f 0200    	mov.w	r2, #0x0
  40b5de: f04f 4380    	mov.w	r3, #0x40000000
  40b5e2: e9c1 2318    	strd	r2, r3, [r1, #96]
  40b5e6: ab34         	add	r3, sp, #0xd0
  40b5e8: 681b         	ldr	r3, [r3]
  40b5ea: 681b         	ldr	r3, [r3]
  40b5ec: f503 7322    	add.w	r3, r3, #0x288
  40b5f0: 681b         	ldr	r3, [r3]
  40b5f2: aa34         	add	r2, sp, #0xd0
  40b5f4: 6810         	ldr	r0, [r2]
  40b5f6: 2100         	movs	r1, #0x0
  40b5f8: 4798         	blx	r3
  40b5fa: ab34         	add	r3, sp, #0xd0
  40b5fc: 681b         	ldr	r3, [r3]
  40b5fe: 681b         	ldr	r3, [r3]
  40b600: f503 731e    	add.w	r3, r3, #0x278
  40b604: 681b         	ldr	r3, [r3]
  40b606: aa34         	add	r2, sp, #0xd0
  40b608: 6810         	ldr	r0, [r2]
  40b60a: 2100         	movs	r1, #0x0
  40b60c: 4798         	blx	r3
  40b60e: f1d5 f84f    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1d509e
  40b612: 4602         	mov	r2, r0
  40b614: ab34         	add	r3, sp, #0xd0
  40b616: 4610         	mov	r0, r2
  40b618: 4a4a         	ldr	r2, [pc, #0x128]        @ 0x40b744 <TrainingStage::doLesson(float)+0x146c>
  40b61a: 447a         	add	r2, pc
  40b61c: 4611         	mov	r1, r2
  40b61e: 681a         	ldr	r2, [r3]
  40b620: f1d5 fa84    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1d5508
  40b624: f00c f9ae    	bl	0x417984 <WeaponFactory::sharedWeaponFactory()> @ imm = #0xc35c
  40b628: 4603         	mov	r3, r0
  40b62a: 4618         	mov	r0, r3
  40b62c: 2106         	movs	r1, #0x6
  40b62e: f00d f865    	bl	0x4186fc <WeaponFactory::createWeaponFromAmmoType(ItemType)> @ imm = #0xd0ca
  40b632: 4602         	mov	r2, r0
  40b634: ab34         	add	r3, sp, #0xd0
  40b636: 601a         	str	r2, [r3]
  40b638: ab34         	add	r3, sp, #0xd0
  40b63a: 681b         	ldr	r3, [r3]
  40b63c: 681b         	ldr	r3, [r3]
  40b63e: f503 7300    	add.w	r3, r3, #0x200
  40b642: 681d         	ldr	r5, [r3]
  40b644: 4b3e         	ldr	r3, [pc, #0xf8]         @ 0x40b740 <TrainingStage::doLesson(float)+0x1468>
  40b646: 58e3         	ldr	r3, [r4, r3]
  40b648: 681b         	ldr	r3, [r3]
  40b64a: 681b         	ldr	r3, [r3]
  40b64c: f503 73e0    	add.w	r3, r3, #0x1c0
  40b650: 681b         	ldr	r3, [r3]
  40b652: 4a3b         	ldr	r2, [pc, #0xec]         @ 0x40b740 <TrainingStage::doLesson(float)+0x1468>
  40b654: 58a2         	ldr	r2, [r4, r2]
  40b656: 6812         	ldr	r2, [r2]
  40b658: f50d 6182    	add.w	r1, sp, #0x410
  40b65c: 4608         	mov	r0, r1
  40b65e: 4611         	mov	r1, r2
  40b660: 4798         	blx	r3
  40b662: aa34         	add	r2, sp, #0xd0
  40b664: f50d 6382    	add.w	r3, sp, #0x410
  40b668: 6810         	ldr	r0, [r2]
  40b66a: 4619         	mov	r1, r3
  40b66c: 47a8         	blx	r5
  40b66e: f50d 6382    	add.w	r3, sp, #0x410
  40b672: 4618         	mov	r0, r3
  40b674: f3aa f94e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3aa29c
  40b678: ab34         	add	r3, sp, #0xd0
  40b67a: 681b         	ldr	r3, [r3]
  40b67c: f8d3 50e8    	ldr.w	r5, [r3, #0xe8]
  40b680: 4b2f         	ldr	r3, [pc, #0xbc]         @ 0x40b740 <TrainingStage::doLesson(float)+0x1468>
  40b682: 58e3         	ldr	r3, [r4, r3]
  40b684: 681b         	ldr	r3, [r3]
  40b686: f8d3 4138    	ldr.w	r4, [r3, #0x138]
  40b68a: ab50         	add	r3, sp, #0x140
  40b68c: 4618         	mov	r0, r3
  40b68e: eeb2 0b04    	vmov.f64	d0, #1.000000e+01
  40b692: ed9f 1b29    	vldr	d1, [pc, #164]          @ 0x40b738 <TrainingStage::doLesson(float)+0x1460>
  40b696: f7fc ff1d    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x31c6
  40b69a: aa02         	add	r2, sp, #0x8
  40b69c: ed94 4b0a    	vldr	d4, [r4, #40]
  40b6a0: ed94 5b0c    	vldr	d5, [r4, #48]
  40b6a4: ab50         	add	r3, sp, #0x140
  40b6a6: ed93 6b00    	vldr	d6, [r3]
  40b6aa: ed93 7b02    	vldr	d7, [r3, #8]
  40b6ae: 4610         	mov	r0, r2
  40b6b0: eeb0 0b44    	vmov.f64	d0, d4
  40b6b4: eeb0 1b45    	vmov.f64	d1, d5
  40b6b8: eeb0 2b46    	vmov.f64	d2, d6
  40b6bc: eeb0 3b47    	vmov.f64	d3, d7
  40b6c0: f7fc ff1c    	bl	0x4084fc <Tracer::checkCollision()+0x470> @ imm = #-0x31c8
  40b6c4: ab02         	add	r3, sp, #0x8
  40b6c6: f105 0428    	add.w	r4, r5, #0x28
  40b6ca: cb0f         	ldm	r3, {r0, r1, r2, r3}
  40b6cc: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  40b6d0: ab34         	add	r3, sp, #0xd0
  40b6d2: 681b         	ldr	r3, [r3]
  40b6d4: 681b         	ldr	r3, [r3]
  40b6d6: 334c         	adds	r3, #0x4c
  40b6d8: 681c         	ldr	r4, [r3]
  40b6da: ab34         	add	r3, sp, #0xd0
  40b6dc: 681d         	ldr	r5, [r3]
  40b6de: ab34         	add	r3, sp, #0xd0
  40b6e0: 681b         	ldr	r3, [r3]
  40b6e2: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  40b6e6: ed93 7b0a    	vldr	d7, [r3, #40]
  40b6ea: eef7 6bc7    	vcvt.f32.f64	s13, d7
  40b6ee: ab34         	add	r3, sp, #0xd0
  40b6f0: 681b         	ldr	r3, [r3]
  40b6f2: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  40b6f6: ed93 7b0c    	vldr	d7, [r3, #48]
  40b6fa: eef7 7bc7    	vcvt.f32.f64	s15, d7
  40b6fe: f50d 6382    	add.w	r3, sp, #0x410
  40b702: 4618         	mov	r0, r3
  40b704: ee16 1a90    	vmov	r1, s13
  40b708: ee17 2a90    	vmov	r2, s15
  40b70c: f187 faf0    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1875e0
  40b710: f50d 6382    	add.w	r3, sp, #0x410
  40b714: 4628         	mov	r0, r5
  40b716: 4619         	mov	r1, r3
  40b718: 47a0         	blx	r4
  40b71a: ab34         	add	r3, sp, #0xd0
  40b71c: 681b         	ldr	r3, [r3]
  40b71e: f8d3 40e8    	ldr.w	r4, [r3, #0xe8]
  40b722: ab02         	add	r3, sp, #0x8
  40b724: 4618         	mov	r0, r3
  40b726: ed9f 0b04    	vldr	d0, [pc, #16]           @ 0x40b738 <TrainingStage::doLesson(float)+0x1460>
  40b72a: eeb3 1b09    	vmov.f64	d1, #2.500000e+01
  40b72e: f7fc fed1    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x325e
  40b732: ab02         	add	r3, sp, #0x8
  40b734: e008         	b	0x40b748 <TrainingStage::doLesson(float)+0x1470> @ imm = #0x10
  40b736: bf00         	nop
  40b740: d784         	bvc	0x40b64c <TrainingStage::doLesson(float)+0x1374> @ imm = #-0xf8
  40b742: ffff f3ea    	<unknown>
  40b746: 003c         	movs	r4, r7
  40b748: 3438         	adds	r4, #0x38
  40b74a: cb0f         	ldm	r3, {r0, r1, r2, r3}
  40b74c: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  40b750: ab34         	add	r3, sp, #0xd0
  40b752: 681b         	ldr	r3, [r3]
  40b754: f8d3 10e8    	ldr.w	r1, [r3, #0xe8]
  40b758: f04f 0200    	mov.w	r2, #0x0
  40b75c: f04f 4380    	mov.w	r3, #0x40000000
  40b760: e9c1 2318    	strd	r2, r3, [r1, #96]
  40b764: ab34         	add	r3, sp, #0xd0
  40b766: 681b         	ldr	r3, [r3]
  40b768: 681b         	ldr	r3, [r3]
  40b76a: f503 7322    	add.w	r3, r3, #0x288
  40b76e: 681b         	ldr	r3, [r3]
  40b770: aa34         	add	r2, sp, #0xd0
  40b772: 6810         	ldr	r0, [r2]
  40b774: 2100         	movs	r1, #0x0
  40b776: 4798         	blx	r3
  40b778: ab34         	add	r3, sp, #0xd0
  40b77a: 681b         	ldr	r3, [r3]
  40b77c: 681b         	ldr	r3, [r3]
  40b77e: f503 731e    	add.w	r3, r3, #0x278
  40b782: 681b         	ldr	r3, [r3]
  40b784: aa34         	add	r2, sp, #0xd0
  40b786: 6810         	ldr	r0, [r2]
  40b788: 2100         	movs	r1, #0x0
  40b78a: 4798         	blx	r3
  40b78c: f1d4 ff90    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1d4f20
  40b790: 4602         	mov	r2, r0
  40b792: ab34         	add	r3, sp, #0xd0
  40b794: 4610         	mov	r0, r2
  40b796: 4ac6         	ldr	r2, [pc, #0x318]        @ 0x40bab0 <TrainingStage::doLesson(float)+0x17d8>
  40b798: 447a         	add	r2, pc
  40b79a: 4611         	mov	r1, r2
  40b79c: 681a         	ldr	r2, [r3]
  40b79e: f1d5 f9c5    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1d538a
  40b7a2: f006 bbb7    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x676e
  40b7a6: ab07         	add	r3, sp, #0x1c
  40b7a8: 681b         	ldr	r3, [r3]
  40b7aa: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40b7ae: 681b         	ldr	r3, [r3]
  40b7b0: f503 730e    	add.w	r3, r3, #0x238
  40b7b4: 681b         	ldr	r3, [r3]
  40b7b6: aa07         	add	r2, sp, #0x1c
  40b7b8: 6812         	ldr	r2, [r2]
  40b7ba: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40b7be: 4610         	mov	r0, r2
  40b7c0: f04f 0100    	mov.w	r1, #0x0
  40b7c4: f2c4 3134    	movt	r1, #0x4334
  40b7c8: 4798         	blx	r3
  40b7ca: 4bba         	ldr	r3, [pc, #0x2e8]        @ 0x40bab4 <TrainingStage::doLesson(float)+0x17dc>
  40b7cc: 58e3         	ldr	r3, [r4, r3]
  40b7ce: 681b         	ldr	r3, [r3]
  40b7d0: 681b         	ldr	r3, [r3]
  40b7d2: f503 7329    	add.w	r3, r3, #0x2a4
  40b7d6: 681b         	ldr	r3, [r3]
  40b7d8: 4ab6         	ldr	r2, [pc, #0x2d8]        @ 0x40bab4 <TrainingStage::doLesson(float)+0x17dc>
  40b7da: 58a2         	ldr	r2, [r4, r2]
  40b7dc: 6812         	ldr	r2, [r2]
  40b7de: 4610         	mov	r0, r2
  40b7e0: f04f 0100    	mov.w	r1, #0x0
  40b7e4: 4798         	blx	r3
  40b7e6: ab07         	add	r3, sp, #0x1c
  40b7e8: 681b         	ldr	r3, [r3]
  40b7ea: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40b7ee: 2201         	movs	r2, #0x1
  40b7f0: f883 211c    	strb.w	r2, [r3, #0x11c]
  40b7f4: ab07         	add	r3, sp, #0x1c
  40b7f6: 681b         	ldr	r3, [r3]
  40b7f8: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40b7fc: 681b         	ldr	r3, [r3]
  40b7fe: f503 730c    	add.w	r3, r3, #0x230
  40b802: 681d         	ldr	r5, [r3]
  40b804: ab07         	add	r3, sp, #0x1c
  40b806: 681b         	ldr	r3, [r3]
  40b808: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40b80c: 461e         	mov	r6, r3
  40b80e: ab54         	add	r3, sp, #0x150
  40b810: 4618         	mov	r0, r3
  40b812: eeb6 0b08    	vmov.f64	d0, #7.500000e-01
  40b816: ed9f 1ba2    	vldr	d1, [pc, #648]          @ 0x40baa0 <TrainingStage::doLesson(float)+0x17c8>
  40b81a: f7fc fe5b    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x334a
  40b81e: ab54         	add	r3, sp, #0x150
  40b820: 466a         	mov	r2, sp
  40b822: f103 0108    	add.w	r1, r3, #0x8
  40b826: c903         	ldm	r1, {r0, r1}
  40b828: e882 0003    	stm.w	r2, {r0, r1}
  40b82c: cb0c         	ldm	r3, {r2, r3}
  40b82e: 4630         	mov	r0, r6
  40b830: 47a8         	blx	r5
  40b832: ab07         	add	r3, sp, #0x1c
  40b834: 681b         	ldr	r3, [r3]
  40b836: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40b83a: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  40b83e: ed93 6b0a    	vldr	d6, [r3, #40]
  40b842: 4b9c         	ldr	r3, [pc, #0x270]        @ 0x40bab4 <TrainingStage::doLesson(float)+0x17dc>
  40b844: 58e3         	ldr	r3, [r4, r3]
  40b846: 681b         	ldr	r3, [r3]
  40b848: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  40b84c: ed93 5b0a    	vldr	d5, [r3, #40]
  40b850: ed9f 7b95    	vldr	d7, [pc, #596]          @ 0x40baa8 <TrainingStage::doLesson(float)+0x17d0>
  40b854: ee35 7b07    	vadd.f64	d7, d5, d7
  40b858: eeb4 6bc7    	vcmpe.f64	d6, d7
  40b85c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40b860: dc01         	bgt	0x40b866 <TrainingStage::doLesson(float)+0x158e> @ imm = #0x2
  40b862: f006 bb57    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x66ae
  40b866: ab07         	add	r3, sp, #0x1c
  40b868: 681b         	ldr	r3, [r3]
  40b86a: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  40b86e: f50d 6380    	add.w	r3, sp, #0x400
  40b872: 4618         	mov	r0, r3
  40b874: f37e fdbe    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37eb7c
  40b878: f50d 6282    	add.w	r2, sp, #0x410
  40b87c: f50d 6380    	add.w	r3, sp, #0x400
  40b880: 4610         	mov	r0, r2
  40b882: 4a8d         	ldr	r2, [pc, #0x234]        @ 0x40bab8 <TrainingStage::doLesson(float)+0x17e0>
  40b884: 447a         	add	r2, pc
  40b886: 4611         	mov	r1, r2
  40b888: 461a         	mov	r2, r3
  40b88a: f3ab f8e9    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3ab1d2
  40b88e: 2000         	movs	r0, #0x0
  40b890: 2100         	movs	r1, #0x0
  40b892: 22ff         	movs	r2, #0xff
  40b894: f7fc fde0    	bl	0x408458 <Tracer::checkCollision()+0x3cc> @ imm = #-0x3440
  40b898: 4602         	mov	r2, r0
  40b89a: ab11         	add	r3, sp, #0x44
  40b89c: 4611         	mov	r1, r2
  40b89e: 7019         	strb	r1, [r3]
  40b8a0: f3c2 2107    	ubfx	r1, r2, #0x8, #0x8
  40b8a4: 7059         	strb	r1, [r3, #0x1]
  40b8a6: f3c2 4207    	ubfx	r2, r2, #0x10, #0x8
  40b8aa: 709a         	strb	r2, [r3, #0x2]
  40b8ac: f50d 6282    	add.w	r2, sp, #0x410
  40b8b0: ab11         	add	r3, sp, #0x44
  40b8b2: 4628         	mov	r0, r5
  40b8b4: 4611         	mov	r1, r2
  40b8b6: 681a         	ldr	r2, [r3]
  40b8b8: 2305         	movs	r3, #0x5
  40b8ba: f731 fd01    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xce5fe
  40b8be: f50d 6382    	add.w	r3, sp, #0x410
  40b8c2: 4618         	mov	r0, r3
  40b8c4: f3aa f826    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3aa04c
  40b8c8: f50d 6380    	add.w	r3, sp, #0x400
  40b8cc: 4618         	mov	r0, r3
  40b8ce: f37e fd95    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37eb2a
  40b8d2: 4b7a         	ldr	r3, [pc, #0x1e8]        @ 0x40babc <TrainingStage::doLesson(float)+0x17e4>
  40b8d4: 58e3         	ldr	r3, [r4, r3]
  40b8d6: 681b         	ldr	r3, [r3]
  40b8d8: 4618         	mov	r0, r3
  40b8da: 213a         	movs	r1, #0x3a
  40b8dc: 2201         	movs	r2, #0x1
  40b8de: f7ec fa2f    	bl	0x3f7d40 <Sound::playSoundWithVoice(int, int)> @ imm = #-0x13ba2
  40b8e2: ab07         	add	r3, sp, #0x1c
  40b8e4: 681b         	ldr	r3, [r3]
  40b8e6: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40b8ea: 681b         	ldr	r3, [r3]
  40b8ec: f503 730c    	add.w	r3, r3, #0x230
  40b8f0: 681c         	ldr	r4, [r3]
  40b8f2: ab07         	add	r3, sp, #0x1c
  40b8f4: 681b         	ldr	r3, [r3]
  40b8f6: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40b8fa: 461d         	mov	r5, r3
  40b8fc: ab58         	add	r3, sp, #0x160
  40b8fe: 4618         	mov	r0, r3
  40b900: ed9f 0b67    	vldr	d0, [pc, #412]          @ 0x40baa0 <TrainingStage::doLesson(float)+0x17c8>
  40b904: ed9f 1b66    	vldr	d1, [pc, #408]          @ 0x40baa0 <TrainingStage::doLesson(float)+0x17c8>
  40b908: f7fc fde4    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x3438
  40b90c: ab58         	add	r3, sp, #0x160
  40b90e: 466a         	mov	r2, sp
  40b910: f103 0108    	add.w	r1, r3, #0x8
  40b914: c903         	ldm	r1, {r0, r1}
  40b916: e882 0003    	stm.w	r2, {r0, r1}
  40b91a: cb0c         	ldm	r3, {r2, r3}
  40b91c: 4628         	mov	r0, r5
  40b91e: 47a0         	blx	r4
  40b920: ab07         	add	r3, sp, #0x1c
  40b922: 681b         	ldr	r3, [r3]
  40b924: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40b928: 2200         	movs	r2, #0x0
  40b92a: f883 211c    	strb.w	r2, [r3, #0x11c]
  40b92e: ab07         	add	r3, sp, #0x1c
  40b930: 681b         	ldr	r3, [r3]
  40b932: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  40b936: 1c5a         	adds	r2, r3, #0x1
  40b938: ab07         	add	r3, sp, #0x1c
  40b93a: 681b         	ldr	r3, [r3]
  40b93c: f8c3 2180    	str.w	r2, [r3, #0x180]
  40b940: ab07         	add	r3, sp, #0x1c
  40b942: 681b         	ldr	r3, [r3]
  40b944: f04f 0200    	mov.w	r2, #0x0
  40b948: f8c3 2188    	str.w	r2, [r3, #0x188]
  40b94c: f006 bae2    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x65c4
  40b950: ab07         	add	r3, sp, #0x1c
  40b952: 681b         	ldr	r3, [r3]
  40b954: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40b958: 681b         	ldr	r3, [r3]
  40b95a: f503 730e    	add.w	r3, r3, #0x238
  40b95e: 681b         	ldr	r3, [r3]
  40b960: aa07         	add	r2, sp, #0x1c
  40b962: 6812         	ldr	r2, [r2]
  40b964: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40b968: 4610         	mov	r0, r2
  40b96a: f04f 0100    	mov.w	r1, #0x0
  40b96e: f2c4 3134    	movt	r1, #0x4334
  40b972: 4798         	blx	r3
  40b974: 4b4f         	ldr	r3, [pc, #0x13c]        @ 0x40bab4 <TrainingStage::doLesson(float)+0x17dc>
  40b976: 58e3         	ldr	r3, [r4, r3]
  40b978: 681b         	ldr	r3, [r3]
  40b97a: 681b         	ldr	r3, [r3]
  40b97c: f503 7329    	add.w	r3, r3, #0x2a4
  40b980: 681b         	ldr	r3, [r3]
  40b982: 4a4c         	ldr	r2, [pc, #0x130]        @ 0x40bab4 <TrainingStage::doLesson(float)+0x17dc>
  40b984: 58a2         	ldr	r2, [r4, r2]
  40b986: 6812         	ldr	r2, [r2]
  40b988: 4610         	mov	r0, r2
  40b98a: f04f 0100    	mov.w	r1, #0x0
  40b98e: 4798         	blx	r3
  40b990: ab07         	add	r3, sp, #0x1c
  40b992: 681b         	ldr	r3, [r3]
  40b994: ed93 7a62    	vldr	s14, [r3, #392]
  40b998: eef0 7a08    	vmov.f32	s15, #3.000000e+00
  40b99c: eeb4 7ae7    	vcmpe.f32	s14, s15
  40b9a0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40b9a4: d505         	bpl	0x40b9b2 <TrainingStage::doLesson(float)+0x16da> @ imm = #0xa
  40b9a6: aa07         	add	r2, sp, #0x1c
  40b9a8: ab06         	add	r3, sp, #0x18
  40b9aa: 6810         	ldr	r0, [r2]
  40b9ac: 6819         	ldr	r1, [r3]
  40b9ae: f7fe fa3f    	bl	0x409e30 <TrainingStage::headChatter(float)> @ imm = #-0x1b82
  40b9b2: ab07         	add	r3, sp, #0x1c
  40b9b4: 681b         	ldr	r3, [r3]
  40b9b6: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  40b9ba: 681b         	ldr	r3, [r3]
  40b9bc: 3390         	adds	r3, #0x90
  40b9be: 681b         	ldr	r3, [r3]
  40b9c0: aa07         	add	r2, sp, #0x1c
  40b9c2: 6812         	ldr	r2, [r2]
  40b9c4: f8d2 2174    	ldr.w	r2, [r2, #0x174]
  40b9c8: 4610         	mov	r0, r2
  40b9ca: 2100         	movs	r1, #0x0
  40b9cc: 4798         	blx	r3
  40b9ce: 4b39         	ldr	r3, [pc, #0xe4]         @ 0x40bab4 <TrainingStage::doLesson(float)+0x17dc>
  40b9d0: 58e3         	ldr	r3, [r4, r3]
  40b9d2: 681b         	ldr	r3, [r3]
  40b9d4: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  40b9d8: 2b00         	cmp	r3, #0x0
  40b9da: d073         	beq	0x40bac4 <TrainingStage::doLesson(float)+0x17ec> @ imm = #0xe6
  40b9dc: 4b35         	ldr	r3, [pc, #0xd4]         @ 0x40bab4 <TrainingStage::doLesson(float)+0x17dc>
  40b9de: 58e3         	ldr	r3, [r4, r3]
  40b9e0: 681b         	ldr	r3, [r3]
  40b9e2: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  40b9e6: 2b00         	cmp	r3, #0x0
  40b9e8: d06c         	beq	0x40bac4 <TrainingStage::doLesson(float)+0x17ec> @ imm = #0xd8
  40b9ea: ab07         	add	r3, sp, #0x1c
  40b9ec: 681b         	ldr	r3, [r3]
  40b9ee: ed93 7a62    	vldr	s14, [r3, #392]
  40b9f2: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  40b9f6: eeb4 7ae7    	vcmpe.f32	s14, s15
  40b9fa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40b9fe: dd61         	ble	0x40bac4 <TrainingStage::doLesson(float)+0x17ec> @ imm = #0xc2
  40ba00: ab07         	add	r3, sp, #0x1c
  40ba02: 681b         	ldr	r3, [r3]
  40ba04: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  40ba08: 1c5a         	adds	r2, r3, #0x1
  40ba0a: ab07         	add	r3, sp, #0x1c
  40ba0c: 681b         	ldr	r3, [r3]
  40ba0e: f8c3 2180    	str.w	r2, [r3, #0x180]
  40ba12: ab07         	add	r3, sp, #0x1c
  40ba14: 681b         	ldr	r3, [r3]
  40ba16: f04f 0200    	mov.w	r2, #0x0
  40ba1a: f8c3 2188    	str.w	r2, [r3, #0x188]
  40ba1e: ab07         	add	r3, sp, #0x1c
  40ba20: 681b         	ldr	r3, [r3]
  40ba22: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  40ba26: f50d 6380    	add.w	r3, sp, #0x400
  40ba2a: 4618         	mov	r0, r3
  40ba2c: f37e fce2    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37e9c4
  40ba30: f50d 6282    	add.w	r2, sp, #0x410
  40ba34: f50d 6380    	add.w	r3, sp, #0x400
  40ba38: 4610         	mov	r0, r2
  40ba3a: 4a21         	ldr	r2, [pc, #0x84]         @ 0x40bac0 <TrainingStage::doLesson(float)+0x17e8>
  40ba3c: 447a         	add	r2, pc
  40ba3e: 4611         	mov	r1, r2
  40ba40: 461a         	mov	r2, r3
  40ba42: f3ab f80d    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3ab01a
  40ba46: 2000         	movs	r0, #0x0
  40ba48: 2100         	movs	r1, #0x0
  40ba4a: 22ff         	movs	r2, #0xff
  40ba4c: f7fc fd04    	bl	0x408458 <Tracer::checkCollision()+0x3cc> @ imm = #-0x35f8
  40ba50: 4602         	mov	r2, r0
  40ba52: ab12         	add	r3, sp, #0x48
  40ba54: 4611         	mov	r1, r2
  40ba56: 7019         	strb	r1, [r3]
  40ba58: f3c2 2107    	ubfx	r1, r2, #0x8, #0x8
  40ba5c: 7059         	strb	r1, [r3, #0x1]
  40ba5e: f3c2 4207    	ubfx	r2, r2, #0x10, #0x8
  40ba62: 709a         	strb	r2, [r3, #0x2]
  40ba64: f50d 6282    	add.w	r2, sp, #0x410
  40ba68: ab12         	add	r3, sp, #0x48
  40ba6a: 4628         	mov	r0, r5
  40ba6c: 4611         	mov	r1, r2
  40ba6e: 681a         	ldr	r2, [r3]
  40ba70: 2302         	movs	r3, #0x2
  40ba72: f731 fc25    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xce7b6
  40ba76: f50d 6382    	add.w	r3, sp, #0x410
  40ba7a: 4618         	mov	r0, r3
  40ba7c: f3a9 ff4a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a9e94
  40ba80: f50d 6380    	add.w	r3, sp, #0x400
  40ba84: 4618         	mov	r0, r3
  40ba86: f37e fcb9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37e972
  40ba8a: 4b0c         	ldr	r3, [pc, #0x30]         @ 0x40babc <TrainingStage::doLesson(float)+0x17e4>
  40ba8c: 58e3         	ldr	r3, [r4, r3]
  40ba8e: 681b         	ldr	r3, [r3]
  40ba90: 4618         	mov	r0, r3
  40ba92: 213b         	movs	r1, #0x3b
  40ba94: 2201         	movs	r2, #0x1
  40ba96: f7ec f953    	bl	0x3f7d40 <Sound::playSoundWithVoice(int, int)> @ imm = #-0x13d5a
  40ba9a: e09f         	b	0x40bbdc <TrainingStage::doLesson(float)+0x1904> @ imm = #0x13e
  40ba9c: f3af 8000    	nop.w
  40baac: 0000         	movs	r0, r0
  40baae: 4059         	eors	r1, r3
  40bab0: f26c 003c    	<unknown>
  40bab4: d784         	bvc	0x40b9c0 <TrainingStage::doLesson(float)+0x16e8> @ imm = #-0xf8
  40bab6: ffff f190    	vsra.u64	d31, d0, #0x1
  40baba: 003c         	movs	r4, r7
  40babc: d730         	bvc	0x40bb20 <TrainingStage::doLesson(float)+0x1848> @ imm = #0x60
  40babe: ffff f008    	<unknown>
  40bac2: 003c         	movs	r4, r7
  40bac4: f8df 3a8c    	ldr.w	r3, [pc, #0xa8c]        @ 0x40c554 <TrainingStage::doLesson(float)+0x227c>
  40bac8: 58e3         	ldr	r3, [r4, r3]
  40baca: 681b         	ldr	r3, [r3]
  40bacc: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  40bad0: 2b00         	cmp	r3, #0x0
  40bad2: d007         	beq	0x40bae4 <TrainingStage::doLesson(float)+0x180c> @ imm = #0xe
  40bad4: f8df 3a7c    	ldr.w	r3, [pc, #0xa7c]        @ 0x40c554 <TrainingStage::doLesson(float)+0x227c>
  40bad8: 58e3         	ldr	r3, [r4, r3]
  40bada: 681b         	ldr	r3, [r3]
  40badc: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  40bae0: 2b00         	cmp	r3, #0x0
  40bae2: d17b         	bne	0x40bbdc <TrainingStage::doLesson(float)+0x1904> @ imm = #0xf6
  40bae4: ab07         	add	r3, sp, #0x1c
  40bae6: 681b         	ldr	r3, [r3]
  40bae8: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  40baec: 681b         	ldr	r3, [r3]
  40baee: 3390         	adds	r3, #0x90
  40baf0: 681b         	ldr	r3, [r3]
  40baf2: aa07         	add	r2, sp, #0x1c
  40baf4: 6812         	ldr	r2, [r2]
  40baf6: f8d2 2174    	ldr.w	r2, [r2, #0x174]
  40bafa: 4610         	mov	r0, r2
  40bafc: 2101         	movs	r1, #0x1
  40bafe: 4798         	blx	r3
  40bb00: ab07         	add	r3, sp, #0x1c
  40bb02: 681b         	ldr	r3, [r3]
  40bb04: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  40bb08: 681b         	ldr	r3, [r3]
  40bb0a: 3398         	adds	r3, #0x98
  40bb0c: 681b         	ldr	r3, [r3]
  40bb0e: aa07         	add	r2, sp, #0x1c
  40bb10: 6812         	ldr	r2, [r2]
  40bb12: f8d2 2174    	ldr.w	r2, [r2, #0x174]
  40bb16: 4610         	mov	r0, r2
  40bb18: f04f 0100    	mov.w	r1, #0x0
  40bb1c: f2cc 21b4    	movt	r1, #0xc2b4
  40bb20: 4798         	blx	r3
  40bb22: ab07         	add	r3, sp, #0x1c
  40bb24: 681b         	ldr	r3, [r3]
  40bb26: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  40bb2a: 681b         	ldr	r3, [r3]
  40bb2c: 334c         	adds	r3, #0x4c
  40bb2e: 681c         	ldr	r4, [r3]
  40bb30: ab07         	add	r3, sp, #0x1c
  40bb32: 681b         	ldr	r3, [r3]
  40bb34: f8d3 516c    	ldr.w	r5, [r3, #0x16c]
  40bb38: ab07         	add	r3, sp, #0x1c
  40bb3a: 681b         	ldr	r3, [r3]
  40bb3c: ed93 7a62    	vldr	s14, [r3, #392]
  40bb40: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  40bb44: ee67 7a27    	vmul.f32	s15, s14, s15
  40bb48: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  40bb4c: ec51 0b17    	vmov	r0, r1, d7
  40bb50: f6ca e9da    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x135c4c
  40bb54: ec41 0b16    	vmov	d6, r0, r1
  40bb58: eeb2 7b04    	vmov.f64	d7, #1.000000e+01
  40bb5c: ee26 7b07    	vmul.f64	d7, d6, d7
  40bb60: eef7 7bc7    	vcvt.f32.f64	s15, d7
  40bb64: f50d 6382    	add.w	r3, sp, #0x410
  40bb68: 4618         	mov	r0, r3
  40bb6a: ee17 1a90    	vmov	r1, s15
  40bb6e: f04f 0200    	mov.w	r2, #0x0
  40bb72: f187 f8bd    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x18717a
  40bb76: f50d 6382    	add.w	r3, sp, #0x410
  40bb7a: 4628         	mov	r0, r5
  40bb7c: 4619         	mov	r1, r3
  40bb7e: 47a0         	blx	r4
  40bb80: ab07         	add	r3, sp, #0x1c
  40bb82: 681b         	ldr	r3, [r3]
  40bb84: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  40bb88: 681b         	ldr	r3, [r3]
  40bb8a: 334c         	adds	r3, #0x4c
  40bb8c: 681c         	ldr	r4, [r3]
  40bb8e: ab07         	add	r3, sp, #0x1c
  40bb90: 681b         	ldr	r3, [r3]
  40bb92: f8d3 5174    	ldr.w	r5, [r3, #0x174]
  40bb96: ab07         	add	r3, sp, #0x1c
  40bb98: 681b         	ldr	r3, [r3]
  40bb9a: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  40bb9e: f503 76ac    	add.w	r6, r3, #0x158
  40bba2: f50d 6380    	add.w	r3, sp, #0x400
  40bba6: 4618         	mov	r0, r3
  40bba8: f04f 0100    	mov.w	r1, #0x0
  40bbac: f2c4 1170    	movt	r1, #0x4170
  40bbb0: f04f 0200    	mov.w	r2, #0x0
  40bbb4: f2cc 228c    	movt	r2, #0xc28c
  40bbb8: f187 f89a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x187134
  40bbbc: f50d 6282    	add.w	r2, sp, #0x410
  40bbc0: f50d 6380    	add.w	r3, sp, #0x400
  40bbc4: 4610         	mov	r0, r2
  40bbc6: 4631         	mov	r1, r6
  40bbc8: 461a         	mov	r2, r3
  40bbca: f7fc fc73    	bl	0x4084b4 <Tracer::checkCollision()+0x428> @ imm = #-0x371a
  40bbce: f50d 6382    	add.w	r3, sp, #0x410
  40bbd2: 4628         	mov	r0, r5
  40bbd4: 4619         	mov	r1, r3
  40bbd6: 47a0         	blx	r4
  40bbd8: f006 b99c    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x6338
  40bbdc: f006 b99a    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x6334
  40bbe0: ab07         	add	r3, sp, #0x1c
  40bbe2: 681b         	ldr	r3, [r3]
  40bbe4: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40bbe8: 681b         	ldr	r3, [r3]
  40bbea: f503 730e    	add.w	r3, r3, #0x238
  40bbee: 681b         	ldr	r3, [r3]
  40bbf0: aa07         	add	r2, sp, #0x1c
  40bbf2: 6812         	ldr	r2, [r2]
  40bbf4: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40bbf8: 4610         	mov	r0, r2
  40bbfa: f04f 0100    	mov.w	r1, #0x0
  40bbfe: f2c4 3134    	movt	r1, #0x4334
  40bc02: 4798         	blx	r3
  40bc04: f8df 394c    	ldr.w	r3, [pc, #0x94c]        @ 0x40c554 <TrainingStage::doLesson(float)+0x227c>
  40bc08: 58e3         	ldr	r3, [r4, r3]
  40bc0a: 681b         	ldr	r3, [r3]
  40bc0c: 681b         	ldr	r3, [r3]
  40bc0e: f503 7329    	add.w	r3, r3, #0x2a4
  40bc12: 681b         	ldr	r3, [r3]
  40bc14: f8df 293c    	ldr.w	r2, [pc, #0x93c]        @ 0x40c554 <TrainingStage::doLesson(float)+0x227c>
  40bc18: 58a2         	ldr	r2, [r4, r2]
  40bc1a: 6812         	ldr	r2, [r2]
  40bc1c: 4610         	mov	r0, r2
  40bc1e: f04f 0100    	mov.w	r1, #0x0
  40bc22: 4798         	blx	r3
  40bc24: ab07         	add	r3, sp, #0x1c
  40bc26: 681b         	ldr	r3, [r3]
  40bc28: ed93 7a62    	vldr	s14, [r3, #392]
  40bc2c: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  40bc30: eeb4 7ae7    	vcmpe.f32	s14, s15
  40bc34: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40bc38: d505         	bpl	0x40bc46 <TrainingStage::doLesson(float)+0x196e> @ imm = #0xa
  40bc3a: aa07         	add	r2, sp, #0x1c
  40bc3c: ab06         	add	r3, sp, #0x18
  40bc3e: 6810         	ldr	r0, [r2]
  40bc40: 6819         	ldr	r1, [r3]
  40bc42: f7fe f8f5    	bl	0x409e30 <TrainingStage::headChatter(float)> @ imm = #-0x1e16
  40bc46: ab07         	add	r3, sp, #0x1c
  40bc48: 681b         	ldr	r3, [r3]
  40bc4a: ed93 7a62    	vldr	s14, [r3, #392]
  40bc4e: eef0 7a08    	vmov.f32	s15, #3.000000e+00
  40bc52: eeb4 7ae7    	vcmpe.f32	s14, s15
  40bc56: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40bc5a: dc01         	bgt	0x40bc60 <TrainingStage::doLesson(float)+0x1988> @ imm = #0x2
  40bc5c: f006 b95a    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x62b4
  40bc60: ab07         	add	r3, sp, #0x1c
  40bc62: 681b         	ldr	r3, [r3]
  40bc64: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  40bc68: 1c5a         	adds	r2, r3, #0x1
  40bc6a: ab07         	add	r3, sp, #0x1c
  40bc6c: 681b         	ldr	r3, [r3]
  40bc6e: f8c3 2180    	str.w	r2, [r3, #0x180]
  40bc72: ab07         	add	r3, sp, #0x1c
  40bc74: 681b         	ldr	r3, [r3]
  40bc76: f04f 0200    	mov.w	r2, #0x0
  40bc7a: f8c3 2188    	str.w	r2, [r3, #0x188]
  40bc7e: ab07         	add	r3, sp, #0x1c
  40bc80: 681b         	ldr	r3, [r3]
  40bc82: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  40bc86: f50d 6380    	add.w	r3, sp, #0x400
  40bc8a: 4618         	mov	r0, r3
  40bc8c: f37e fbb2    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37e764
  40bc90: f50d 6282    	add.w	r2, sp, #0x410
  40bc94: f50d 6380    	add.w	r3, sp, #0x400
  40bc98: 4610         	mov	r0, r2
  40bc9a: f8df 28bc    	ldr.w	r2, [pc, #0x8bc]        @ 0x40c558 <TrainingStage::doLesson(float)+0x2280>
  40bc9e: 447a         	add	r2, pc
  40bca0: 4611         	mov	r1, r2
  40bca2: 461a         	mov	r2, r3
  40bca4: f3aa fedc    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3aadb8
  40bca8: 2000         	movs	r0, #0x0
  40bcaa: 2100         	movs	r1, #0x0
  40bcac: 22ff         	movs	r2, #0xff
  40bcae: f7fc fbd3    	bl	0x408458 <Tracer::checkCollision()+0x3cc> @ imm = #-0x385a
  40bcb2: 4602         	mov	r2, r0
  40bcb4: ab13         	add	r3, sp, #0x4c
  40bcb6: 4611         	mov	r1, r2
  40bcb8: 7019         	strb	r1, [r3]
  40bcba: f3c2 2107    	ubfx	r1, r2, #0x8, #0x8
  40bcbe: 7059         	strb	r1, [r3, #0x1]
  40bcc0: f3c2 4207    	ubfx	r2, r2, #0x10, #0x8
  40bcc4: 709a         	strb	r2, [r3, #0x2]
  40bcc6: f50d 6282    	add.w	r2, sp, #0x410
  40bcca: ab13         	add	r3, sp, #0x4c
  40bccc: 4628         	mov	r0, r5
  40bcce: 4611         	mov	r1, r2
  40bcd0: 681a         	ldr	r2, [r3]
  40bcd2: 2304         	movs	r3, #0x4
  40bcd4: f731 faf4    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xcea18
  40bcd8: f50d 6382    	add.w	r3, sp, #0x410
  40bcdc: 4618         	mov	r0, r3
  40bcde: f3a9 fe19    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a9c32
  40bce2: f50d 6380    	add.w	r3, sp, #0x400
  40bce6: 4618         	mov	r0, r3
  40bce8: f37e fb88    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37e710
  40bcec: f8df 3864    	ldr.w	r3, [pc, #0x864]        @ 0x40c554 <TrainingStage::doLesson(float)+0x227c>
  40bcf0: 58e3         	ldr	r3, [r4, r3]
  40bcf2: 681b         	ldr	r3, [r3]
  40bcf4: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  40bcf8: 681b         	ldr	r3, [r3]
  40bcfa: f503 731f    	add.w	r3, r3, #0x27c
  40bcfe: 681b         	ldr	r3, [r3]
  40bd00: f8df 2850    	ldr.w	r2, [pc, #0x850]        @ 0x40c554 <TrainingStage::doLesson(float)+0x227c>
  40bd04: 58a2         	ldr	r2, [r4, r2]
  40bd06: 6812         	ldr	r2, [r2]
  40bd08: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  40bd0c: 4610         	mov	r0, r2
  40bd0e: 4798         	blx	r3
  40bd10: 4602         	mov	r2, r0
  40bd12: ab07         	add	r3, sp, #0x1c
  40bd14: 681b         	ldr	r3, [r3]
  40bd16: f8c3 2190    	str.w	r2, [r3, #0x190]
  40bd1a: f8df 3840    	ldr.w	r3, [pc, #0x840]        @ 0x40c55c <TrainingStage::doLesson(float)+0x2284>
  40bd1e: 58e3         	ldr	r3, [r4, r3]
  40bd20: 681b         	ldr	r3, [r3]
  40bd22: 4618         	mov	r0, r3
  40bd24: 213c         	movs	r1, #0x3c
  40bd26: 2201         	movs	r2, #0x1
  40bd28: f7ec f80a    	bl	0x3f7d40 <Sound::playSoundWithVoice(int, int)> @ imm = #-0x13fec
  40bd2c: f006 b8f2    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x61e4
  40bd30: ab07         	add	r3, sp, #0x1c
  40bd32: 681b         	ldr	r3, [r3]
  40bd34: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40bd38: 681b         	ldr	r3, [r3]
  40bd3a: f503 730e    	add.w	r3, r3, #0x238
  40bd3e: 681b         	ldr	r3, [r3]
  40bd40: aa07         	add	r2, sp, #0x1c
  40bd42: 6812         	ldr	r2, [r2]
  40bd44: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40bd48: 4610         	mov	r0, r2
  40bd4a: f04f 0100    	mov.w	r1, #0x0
  40bd4e: f2c4 3134    	movt	r1, #0x4334
  40bd52: 4798         	blx	r3
  40bd54: f8df 37fc    	ldr.w	r3, [pc, #0x7fc]        @ 0x40c554 <TrainingStage::doLesson(float)+0x227c>
  40bd58: 58e3         	ldr	r3, [r4, r3]
  40bd5a: 681b         	ldr	r3, [r3]
  40bd5c: 681b         	ldr	r3, [r3]
  40bd5e: f503 7329    	add.w	r3, r3, #0x2a4
  40bd62: 681b         	ldr	r3, [r3]
  40bd64: f8df 27ec    	ldr.w	r2, [pc, #0x7ec]        @ 0x40c554 <TrainingStage::doLesson(float)+0x227c>
  40bd68: 58a2         	ldr	r2, [r4, r2]
  40bd6a: 6812         	ldr	r2, [r2]
  40bd6c: 4610         	mov	r0, r2
  40bd6e: f04f 0100    	mov.w	r1, #0x0
  40bd72: 4798         	blx	r3
  40bd74: ab07         	add	r3, sp, #0x1c
  40bd76: 681b         	ldr	r3, [r3]
  40bd78: ed93 7a62    	vldr	s14, [r3, #392]
  40bd7c: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  40bd80: eeb4 7ae7    	vcmpe.f32	s14, s15
  40bd84: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40bd88: d505         	bpl	0x40bd96 <TrainingStage::doLesson(float)+0x1abe> @ imm = #0xa
  40bd8a: aa07         	add	r2, sp, #0x1c
  40bd8c: ab06         	add	r3, sp, #0x18
  40bd8e: 6810         	ldr	r0, [r2]
  40bd90: 6819         	ldr	r1, [r3]
  40bd92: f7fe f84d    	bl	0x409e30 <TrainingStage::headChatter(float)> @ imm = #-0x1f66
  40bd96: ab07         	add	r3, sp, #0x1c
  40bd98: 681b         	ldr	r3, [r3]
  40bd9a: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  40bd9e: 681b         	ldr	r3, [r3]
  40bda0: 3390         	adds	r3, #0x90
  40bda2: 681b         	ldr	r3, [r3]
  40bda4: aa07         	add	r2, sp, #0x1c
  40bda6: 6812         	ldr	r2, [r2]
  40bda8: f8d2 2174    	ldr.w	r2, [r2, #0x174]
  40bdac: 4610         	mov	r0, r2
  40bdae: 2100         	movs	r1, #0x0
  40bdb0: 4798         	blx	r3
  40bdb2: f8df 37a0    	ldr.w	r3, [pc, #0x7a0]        @ 0x40c554 <TrainingStage::doLesson(float)+0x227c>
  40bdb6: 58e3         	ldr	r3, [r4, r3]
  40bdb8: 681b         	ldr	r3, [r3]
  40bdba: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  40bdbe: 681b         	ldr	r3, [r3]
  40bdc0: f503 731f    	add.w	r3, r3, #0x27c
  40bdc4: 681b         	ldr	r3, [r3]
  40bdc6: f8df 278c    	ldr.w	r2, [pc, #0x78c]        @ 0x40c554 <TrainingStage::doLesson(float)+0x227c>
  40bdca: 58a2         	ldr	r2, [r4, r2]
  40bdcc: 6812         	ldr	r2, [r2]
  40bdce: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  40bdd2: 4610         	mov	r0, r2
  40bdd4: 4798         	blx	r3
  40bdd6: 4602         	mov	r2, r0
  40bdd8: ab07         	add	r3, sp, #0x1c
  40bdda: 681b         	ldr	r3, [r3]
  40bddc: f8d3 3190    	ldr.w	r3, [r3, #0x190]
  40bde0: 429a         	cmp	r2, r3
  40bde2: d00c         	beq	0x40bdfe <TrainingStage::doLesson(float)+0x1b26> @ imm = #0x18
  40bde4: ab07         	add	r3, sp, #0x1c
  40bde6: 681b         	ldr	r3, [r3]
  40bde8: ed93 7a62    	vldr	s14, [r3, #392]
  40bdec: eef1 7a00    	vmov.f32	s15, #4.000000e+00
  40bdf0: eeb4 7ae7    	vcmpe.f32	s14, s15
  40bdf4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40bdf8: dd01         	ble	0x40bdfe <TrainingStage::doLesson(float)+0x1b26> @ imm = #0x2
  40bdfa: 2301         	movs	r3, #0x1
  40bdfc: e000         	b	0x40be00 <TrainingStage::doLesson(float)+0x1b28> @ imm = #0x0
  40bdfe: 2300         	movs	r3, #0x0
  40be00: 2b00         	cmp	r3, #0x0
  40be02: d00f         	beq	0x40be24 <TrainingStage::doLesson(float)+0x1b4c> @ imm = #0x1e
  40be04: ab07         	add	r3, sp, #0x1c
  40be06: 681b         	ldr	r3, [r3]
  40be08: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  40be0c: 1c5a         	adds	r2, r3, #0x1
  40be0e: ab07         	add	r3, sp, #0x1c
  40be10: 681b         	ldr	r3, [r3]
  40be12: f8c3 2180    	str.w	r2, [r3, #0x180]
  40be16: ab07         	add	r3, sp, #0x1c
  40be18: 681b         	ldr	r3, [r3]
  40be1a: f04f 0200    	mov.w	r2, #0x0
  40be1e: f8c3 2188    	str.w	r2, [r3, #0x188]
  40be22: e0a2         	b	0x40bf6a <TrainingStage::doLesson(float)+0x1c92> @ imm = #0x144
  40be24: f8df 372c    	ldr.w	r3, [pc, #0x72c]        @ 0x40c554 <TrainingStage::doLesson(float)+0x227c>
  40be28: 58e3         	ldr	r3, [r4, r3]
  40be2a: 681b         	ldr	r3, [r3]
  40be2c: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  40be30: 681b         	ldr	r3, [r3]
  40be32: f503 731f    	add.w	r3, r3, #0x27c
  40be36: 681b         	ldr	r3, [r3]
  40be38: f8df 2718    	ldr.w	r2, [pc, #0x718]        @ 0x40c554 <TrainingStage::doLesson(float)+0x227c>
  40be3c: 58a2         	ldr	r2, [r4, r2]
  40be3e: 6812         	ldr	r2, [r2]
  40be40: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  40be44: 4610         	mov	r0, r2
  40be46: 4798         	blx	r3
  40be48: 4602         	mov	r2, r0
  40be4a: ab07         	add	r3, sp, #0x1c
  40be4c: 681b         	ldr	r3, [r3]
  40be4e: f8d3 3190    	ldr.w	r3, [r3, #0x190]
  40be52: 429a         	cmp	r2, r3
  40be54: bf14         	ite	ne
  40be56: 2300         	movne	r3, #0x0
  40be58: 2301         	moveq	r3, #0x1
  40be5a: b2db         	uxtb	r3, r3
  40be5c: 2b00         	cmp	r3, #0x0
  40be5e: f000 8084    	beq.w	0x40bf6a <TrainingStage::doLesson(float)+0x1c92> @ imm = #0x108
  40be62: ab07         	add	r3, sp, #0x1c
  40be64: 681b         	ldr	r3, [r3]
  40be66: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  40be6a: 681b         	ldr	r3, [r3]
  40be6c: 3390         	adds	r3, #0x90
  40be6e: 681b         	ldr	r3, [r3]
  40be70: aa07         	add	r2, sp, #0x1c
  40be72: 6812         	ldr	r2, [r2]
  40be74: f8d2 2174    	ldr.w	r2, [r2, #0x174]
  40be78: 4610         	mov	r0, r2
  40be7a: 2101         	movs	r1, #0x1
  40be7c: 4798         	blx	r3
  40be7e: ab07         	add	r3, sp, #0x1c
  40be80: 681b         	ldr	r3, [r3]
  40be82: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  40be86: 681b         	ldr	r3, [r3]
  40be88: 3398         	adds	r3, #0x98
  40be8a: 681b         	ldr	r3, [r3]
  40be8c: aa07         	add	r2, sp, #0x1c
  40be8e: 6812         	ldr	r2, [r2]
  40be90: f8d2 2174    	ldr.w	r2, [r2, #0x174]
  40be94: 4610         	mov	r0, r2
  40be96: f04f 0100    	mov.w	r1, #0x0
  40be9a: f2cc 218c    	movt	r1, #0xc28c
  40be9e: 4798         	blx	r3
  40bea0: ab07         	add	r3, sp, #0x1c
  40bea2: 681b         	ldr	r3, [r3]
  40bea4: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  40bea8: 681b         	ldr	r3, [r3]
  40beaa: 334c         	adds	r3, #0x4c
  40beac: 681c         	ldr	r4, [r3]
  40beae: ab07         	add	r3, sp, #0x1c
  40beb0: 681b         	ldr	r3, [r3]
  40beb2: f8d3 516c    	ldr.w	r5, [r3, #0x16c]
  40beb6: ab07         	add	r3, sp, #0x1c
  40beb8: 681b         	ldr	r3, [r3]
  40beba: ed93 7a62    	vldr	s14, [r3, #392]
  40bebe: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  40bec2: ee67 7a27    	vmul.f32	s15, s14, s15
  40bec6: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  40beca: ec51 0b17    	vmov	r0, r1, d7
  40bece: f6ca e81c    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x135fc8
  40bed2: ec41 0b16    	vmov	d6, r0, r1
  40bed6: eeb2 7b04    	vmov.f64	d7, #1.000000e+01
  40beda: ee26 7b07    	vmul.f64	d7, d6, d7
  40bede: eef7 7bc7    	vcvt.f32.f64	s15, d7
  40bee2: f50d 6382    	add.w	r3, sp, #0x410
  40bee6: 4618         	mov	r0, r3
  40bee8: ee17 1a90    	vmov	r1, s15
  40beec: f04f 0200    	mov.w	r2, #0x0
  40bef0: f186 fefe    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x186dfc
  40bef4: f50d 6382    	add.w	r3, sp, #0x410
  40bef8: 4628         	mov	r0, r5
  40befa: 4619         	mov	r1, r3
  40befc: 47a0         	blx	r4
  40befe: ab07         	add	r3, sp, #0x1c
  40bf00: 681b         	ldr	r3, [r3]
  40bf02: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  40bf06: 681b         	ldr	r3, [r3]
  40bf08: 334c         	adds	r3, #0x4c
  40bf0a: 681c         	ldr	r4, [r3]
  40bf0c: ab07         	add	r3, sp, #0x1c
  40bf0e: 681b         	ldr	r3, [r3]
  40bf10: f8d3 5174    	ldr.w	r5, [r3, #0x174]
  40bf14: ab07         	add	r3, sp, #0x1c
  40bf16: 681b         	ldr	r3, [r3]
  40bf18: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  40bf1c: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  40bf20: 681b         	ldr	r3, [r3]
  40bf22: 3350         	adds	r3, #0x50
  40bf24: 681b         	ldr	r3, [r3]
  40bf26: aa07         	add	r2, sp, #0x1c
  40bf28: 6812         	ldr	r2, [r2]
  40bf2a: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  40bf2e: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  40bf32: 4610         	mov	r0, r2
  40bf34: 4798         	blx	r3
  40bf36: 4606         	mov	r6, r0
  40bf38: f50d 6380    	add.w	r3, sp, #0x400
  40bf3c: 4618         	mov	r0, r3
  40bf3e: f04f 0100    	mov.w	r1, #0x0
  40bf42: f04f 0200    	mov.w	r2, #0x0
  40bf46: f2cc 2270    	movt	r2, #0xc270
  40bf4a: f186 fed1    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x186da2
  40bf4e: f50d 6282    	add.w	r2, sp, #0x410
  40bf52: f50d 6380    	add.w	r3, sp, #0x400
  40bf56: 4610         	mov	r0, r2
  40bf58: 4631         	mov	r1, r6
  40bf5a: 461a         	mov	r2, r3
  40bf5c: f7fc faaa    	bl	0x4084b4 <Tracer::checkCollision()+0x428> @ imm = #-0x3aac
  40bf60: f50d 6382    	add.w	r3, sp, #0x410
  40bf64: 4628         	mov	r0, r5
  40bf66: 4619         	mov	r1, r3
  40bf68: 47a0         	blx	r4
  40bf6a: f005 bfd3    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x5fa6
  40bf6e: ab07         	add	r3, sp, #0x1c
  40bf70: 681b         	ldr	r3, [r3]
  40bf72: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40bf76: 681b         	ldr	r3, [r3]
  40bf78: f503 730e    	add.w	r3, r3, #0x238
  40bf7c: 681b         	ldr	r3, [r3]
  40bf7e: aa07         	add	r2, sp, #0x1c
  40bf80: 6812         	ldr	r2, [r2]
  40bf82: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40bf86: 4610         	mov	r0, r2
  40bf88: f04f 0100    	mov.w	r1, #0x0
  40bf8c: f2c4 3134    	movt	r1, #0x4334
  40bf90: 4798         	blx	r3
  40bf92: f8df 35c0    	ldr.w	r3, [pc, #0x5c0]        @ 0x40c554 <TrainingStage::doLesson(float)+0x227c>
  40bf96: 58e3         	ldr	r3, [r4, r3]
  40bf98: 681b         	ldr	r3, [r3]
  40bf9a: 681b         	ldr	r3, [r3]
  40bf9c: f503 7329    	add.w	r3, r3, #0x2a4
  40bfa0: 681b         	ldr	r3, [r3]
  40bfa2: f8df 25b0    	ldr.w	r2, [pc, #0x5b0]        @ 0x40c554 <TrainingStage::doLesson(float)+0x227c>
  40bfa6: 58a2         	ldr	r2, [r4, r2]
  40bfa8: 6812         	ldr	r2, [r2]
  40bfaa: 4610         	mov	r0, r2
  40bfac: f04f 0100    	mov.w	r1, #0x0
  40bfb0: 4798         	blx	r3
  40bfb2: ab07         	add	r3, sp, #0x1c
  40bfb4: 681b         	ldr	r3, [r3]
  40bfb6: ed93 7a62    	vldr	s14, [r3, #392]
  40bfba: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  40bfbe: eeb4 7ae7    	vcmpe.f32	s14, s15
  40bfc2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40bfc6: dc01         	bgt	0x40bfcc <TrainingStage::doLesson(float)+0x1cf4> @ imm = #0x2
  40bfc8: f005 bfa4    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x5f48
  40bfcc: ab07         	add	r3, sp, #0x1c
  40bfce: 681b         	ldr	r3, [r3]
  40bfd0: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  40bfd4: 1c5a         	adds	r2, r3, #0x1
  40bfd6: ab07         	add	r3, sp, #0x1c
  40bfd8: 681b         	ldr	r3, [r3]
  40bfda: f8c3 2180    	str.w	r2, [r3, #0x180]
  40bfde: ab07         	add	r3, sp, #0x1c
  40bfe0: 681b         	ldr	r3, [r3]
  40bfe2: f04f 0200    	mov.w	r2, #0x0
  40bfe6: f8c3 2188    	str.w	r2, [r3, #0x188]
  40bfea: ab07         	add	r3, sp, #0x1c
  40bfec: 681b         	ldr	r3, [r3]
  40bfee: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  40bff2: f50d 6380    	add.w	r3, sp, #0x400
  40bff6: 4618         	mov	r0, r3
  40bff8: f37e f9fc    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37e3f8
  40bffc: f50d 6282    	add.w	r2, sp, #0x410
  40c000: f50d 6380    	add.w	r3, sp, #0x400
  40c004: 4610         	mov	r0, r2
  40c006: f8df 2558    	ldr.w	r2, [pc, #0x558]        @ 0x40c560 <TrainingStage::doLesson(float)+0x2288>
  40c00a: 447a         	add	r2, pc
  40c00c: 4611         	mov	r1, r2
  40c00e: 461a         	mov	r2, r3
  40c010: f3aa fd26    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3aaa4c
  40c014: 2000         	movs	r0, #0x0
  40c016: 2100         	movs	r1, #0x0
  40c018: 22ff         	movs	r2, #0xff
  40c01a: f7fc fa1d    	bl	0x408458 <Tracer::checkCollision()+0x3cc> @ imm = #-0x3bc6
  40c01e: 4602         	mov	r2, r0
  40c020: ab14         	add	r3, sp, #0x50
  40c022: 4611         	mov	r1, r2
  40c024: 7019         	strb	r1, [r3]
  40c026: f3c2 2107    	ubfx	r1, r2, #0x8, #0x8
  40c02a: 7059         	strb	r1, [r3, #0x1]
  40c02c: f3c2 4207    	ubfx	r2, r2, #0x10, #0x8
  40c030: 709a         	strb	r2, [r3, #0x2]
  40c032: f50d 6282    	add.w	r2, sp, #0x410
  40c036: ab14         	add	r3, sp, #0x50
  40c038: 4628         	mov	r0, r5
  40c03a: 4611         	mov	r1, r2
  40c03c: 681a         	ldr	r2, [r3]
  40c03e: 2304         	movs	r3, #0x4
  40c040: f731 f93e    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xced84
  40c044: f50d 6382    	add.w	r3, sp, #0x410
  40c048: 4618         	mov	r0, r3
  40c04a: f3a9 fc63    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a98c6
  40c04e: f50d 6380    	add.w	r3, sp, #0x400
  40c052: 4618         	mov	r0, r3
  40c054: f37e f9d2    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37e3a4
  40c058: ab07         	add	r3, sp, #0x1c
  40c05a: 681b         	ldr	r3, [r3]
  40c05c: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  40c060: 681b         	ldr	r3, [r3]
  40c062: 3338         	adds	r3, #0x38
  40c064: 681b         	ldr	r3, [r3]
  40c066: aa07         	add	r2, sp, #0x1c
  40c068: 6812         	ldr	r2, [r2]
  40c06a: f8d2 216c    	ldr.w	r2, [r2, #0x16c]
  40c06e: 4610         	mov	r0, r2
  40c070: f04f 0100    	mov.w	r1, #0x0
  40c074: f6cb 7180    	movt	r1, #0xbf80
  40c078: 4798         	blx	r3
  40c07a: f8df 34e0    	ldr.w	r3, [pc, #0x4e0]        @ 0x40c55c <TrainingStage::doLesson(float)+0x2284>
  40c07e: 58e3         	ldr	r3, [r4, r3]
  40c080: 681b         	ldr	r3, [r3]
  40c082: 4618         	mov	r0, r3
  40c084: 213d         	movs	r1, #0x3d
  40c086: 2201         	movs	r2, #0x1
  40c088: f7eb fe5a    	bl	0x3f7d40 <Sound::playSoundWithVoice(int, int)> @ imm = #-0x1434c
  40c08c: f005 bf42    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x5e84
  40c090: ab07         	add	r3, sp, #0x1c
  40c092: 681b         	ldr	r3, [r3]
  40c094: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40c098: 681b         	ldr	r3, [r3]
  40c09a: f503 730e    	add.w	r3, r3, #0x238
  40c09e: 681b         	ldr	r3, [r3]
  40c0a0: aa07         	add	r2, sp, #0x1c
  40c0a2: 6812         	ldr	r2, [r2]
  40c0a4: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40c0a8: 4610         	mov	r0, r2
  40c0aa: f04f 0100    	mov.w	r1, #0x0
  40c0ae: f2c4 3134    	movt	r1, #0x4334
  40c0b2: 4798         	blx	r3
  40c0b4: f8df 349c    	ldr.w	r3, [pc, #0x49c]        @ 0x40c554 <TrainingStage::doLesson(float)+0x227c>
  40c0b8: 58e3         	ldr	r3, [r4, r3]
  40c0ba: 681b         	ldr	r3, [r3]
  40c0bc: 681b         	ldr	r3, [r3]
  40c0be: f503 7329    	add.w	r3, r3, #0x2a4
  40c0c2: 681b         	ldr	r3, [r3]
  40c0c4: f8df 248c    	ldr.w	r2, [pc, #0x48c]        @ 0x40c554 <TrainingStage::doLesson(float)+0x227c>
  40c0c8: 58a2         	ldr	r2, [r4, r2]
  40c0ca: 6812         	ldr	r2, [r2]
  40c0cc: 4610         	mov	r0, r2
  40c0ce: f04f 0100    	mov.w	r1, #0x0
  40c0d2: 4798         	blx	r3
  40c0d4: ab07         	add	r3, sp, #0x1c
  40c0d6: 681b         	ldr	r3, [r3]
  40c0d8: ed93 7a62    	vldr	s14, [r3, #392]
  40c0dc: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  40c0e0: eeb4 7ae7    	vcmpe.f32	s14, s15
  40c0e4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40c0e8: d505         	bpl	0x40c0f6 <TrainingStage::doLesson(float)+0x1e1e> @ imm = #0xa
  40c0ea: aa07         	add	r2, sp, #0x1c
  40c0ec: ab06         	add	r3, sp, #0x18
  40c0ee: 6810         	ldr	r0, [r2]
  40c0f0: 6819         	ldr	r1, [r3]
  40c0f2: f7fd fe9d    	bl	0x409e30 <TrainingStage::headChatter(float)> @ imm = #-0x22c6
  40c0f6: ab07         	add	r3, sp, #0x1c
  40c0f8: 681b         	ldr	r3, [r3]
  40c0fa: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  40c0fe: 681b         	ldr	r3, [r3]
  40c100: 3390         	adds	r3, #0x90
  40c102: 681b         	ldr	r3, [r3]
  40c104: aa07         	add	r2, sp, #0x1c
  40c106: 6812         	ldr	r2, [r2]
  40c108: f8d2 2174    	ldr.w	r2, [r2, #0x174]
  40c10c: 4610         	mov	r0, r2
  40c10e: 2100         	movs	r1, #0x0
  40c110: 4798         	blx	r3
  40c112: f8df 3440    	ldr.w	r3, [pc, #0x440]        @ 0x40c554 <TrainingStage::doLesson(float)+0x227c>
  40c116: 58e3         	ldr	r3, [r4, r3]
  40c118: 681b         	ldr	r3, [r3]
  40c11a: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  40c11e: 681b         	ldr	r3, [r3]
  40c120: f503 7334    	add.w	r3, r3, #0x2d0
  40c124: 681b         	ldr	r3, [r3]
  40c126: f8df 242c    	ldr.w	r2, [pc, #0x42c]        @ 0x40c554 <TrainingStage::doLesson(float)+0x227c>
  40c12a: 58a2         	ldr	r2, [r4, r2]
  40c12c: 6812         	ldr	r2, [r2]
  40c12e: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  40c132: 4610         	mov	r0, r2
  40c134: 4798         	blx	r3
  40c136: ee07 0a10    	vmov	s14, r0
  40c13a: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  40c13e: eeb4 7ae7    	vcmpe.f32	s14, s15
  40c142: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40c146: d50c         	bpl	0x40c162 <TrainingStage::doLesson(float)+0x1e8a> @ imm = #0x18
  40c148: ab07         	add	r3, sp, #0x1c
  40c14a: 681b         	ldr	r3, [r3]
  40c14c: ed93 7a62    	vldr	s14, [r3, #392]
  40c150: eef0 7a08    	vmov.f32	s15, #3.000000e+00
  40c154: eeb4 7ae7    	vcmpe.f32	s14, s15
  40c158: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40c15c: dd01         	ble	0x40c162 <TrainingStage::doLesson(float)+0x1e8a> @ imm = #0x2
  40c15e: 2301         	movs	r3, #0x1
  40c160: e000         	b	0x40c164 <TrainingStage::doLesson(float)+0x1e8c> @ imm = #0x0
  40c162: 2300         	movs	r3, #0x0
  40c164: 2b00         	cmp	r3, #0x0
  40c166: d01e         	beq	0x40c1a6 <TrainingStage::doLesson(float)+0x1ece> @ imm = #0x3c
  40c168: ab07         	add	r3, sp, #0x1c
  40c16a: 681b         	ldr	r3, [r3]
  40c16c: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  40c170: 1c5a         	adds	r2, r3, #0x1
  40c172: ab07         	add	r3, sp, #0x1c
  40c174: 681b         	ldr	r3, [r3]
  40c176: f8c3 2180    	str.w	r2, [r3, #0x180]
  40c17a: ab07         	add	r3, sp, #0x1c
  40c17c: 681b         	ldr	r3, [r3]
  40c17e: f04f 0200    	mov.w	r2, #0x0
  40c182: f8c3 2188    	str.w	r2, [r3, #0x188]
  40c186: ab07         	add	r3, sp, #0x1c
  40c188: 681b         	ldr	r3, [r3]
  40c18a: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  40c18e: 681b         	ldr	r3, [r3]
  40c190: 3338         	adds	r3, #0x38
  40c192: 681b         	ldr	r3, [r3]
  40c194: aa07         	add	r2, sp, #0x1c
  40c196: 6812         	ldr	r2, [r2]
  40c198: f8d2 216c    	ldr.w	r2, [r2, #0x16c]
  40c19c: 4610         	mov	r0, r2
  40c19e: f04f 517e    	mov.w	r1, #0x3f800000
  40c1a2: 4798         	blx	r3
  40c1a4: e097         	b	0x40c2d6 <TrainingStage::doLesson(float)+0x1ffe> @ imm = #0x12e
  40c1a6: 4beb         	ldr	r3, [pc, #0x3ac]        @ 0x40c554 <TrainingStage::doLesson(float)+0x227c>
  40c1a8: 58e3         	ldr	r3, [r4, r3]
  40c1aa: 681b         	ldr	r3, [r3]
  40c1ac: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  40c1b0: 681b         	ldr	r3, [r3]
  40c1b2: f503 7334    	add.w	r3, r3, #0x2d0
  40c1b6: 681b         	ldr	r3, [r3]
  40c1b8: 4ae6         	ldr	r2, [pc, #0x398]        @ 0x40c554 <TrainingStage::doLesson(float)+0x227c>
  40c1ba: 58a2         	ldr	r2, [r4, r2]
  40c1bc: 6812         	ldr	r2, [r2]
  40c1be: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  40c1c2: 4610         	mov	r0, r2
  40c1c4: 4798         	blx	r3
  40c1c6: ee07 0a10    	vmov	s14, r0
  40c1ca: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  40c1ce: eeb4 7a67    	vcmp.f32	s14, s15
  40c1d2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40c1d6: bf14         	ite	ne
  40c1d8: 2300         	movne	r3, #0x0
  40c1da: 2301         	moveq	r3, #0x1
  40c1dc: b2db         	uxtb	r3, r3
  40c1de: 2b00         	cmp	r3, #0x0
  40c1e0: d079         	beq	0x40c2d6 <TrainingStage::doLesson(float)+0x1ffe> @ imm = #0xf2
  40c1e2: ab07         	add	r3, sp, #0x1c
  40c1e4: 681b         	ldr	r3, [r3]
  40c1e6: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  40c1ea: 681b         	ldr	r3, [r3]
  40c1ec: 3390         	adds	r3, #0x90
  40c1ee: 681b         	ldr	r3, [r3]
  40c1f0: aa07         	add	r2, sp, #0x1c
  40c1f2: 6812         	ldr	r2, [r2]
  40c1f4: f8d2 2174    	ldr.w	r2, [r2, #0x174]
  40c1f8: 4610         	mov	r0, r2
  40c1fa: 2101         	movs	r1, #0x1
  40c1fc: 4798         	blx	r3
  40c1fe: ab07         	add	r3, sp, #0x1c
  40c200: 681b         	ldr	r3, [r3]
  40c202: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  40c206: 681b         	ldr	r3, [r3]
  40c208: 3398         	adds	r3, #0x98
  40c20a: 681b         	ldr	r3, [r3]
  40c20c: aa07         	add	r2, sp, #0x1c
  40c20e: 6812         	ldr	r2, [r2]
  40c210: f8d2 2174    	ldr.w	r2, [r2, #0x174]
  40c214: 4610         	mov	r0, r2
  40c216: f04f 0100    	mov.w	r1, #0x0
  40c21a: f2cc 21f0    	movt	r1, #0xc2f0
  40c21e: 4798         	blx	r3
  40c220: ab07         	add	r3, sp, #0x1c
  40c222: 681b         	ldr	r3, [r3]
  40c224: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  40c228: 681b         	ldr	r3, [r3]
  40c22a: 334c         	adds	r3, #0x4c
  40c22c: 681c         	ldr	r4, [r3]
  40c22e: ab07         	add	r3, sp, #0x1c
  40c230: 681b         	ldr	r3, [r3]
  40c232: f8d3 516c    	ldr.w	r5, [r3, #0x16c]
  40c236: ab07         	add	r3, sp, #0x1c
  40c238: 681b         	ldr	r3, [r3]
  40c23a: ed93 7a62    	vldr	s14, [r3, #392]
  40c23e: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  40c242: ee67 7a27    	vmul.f32	s15, s14, s15
  40c246: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  40c24a: ec51 0b17    	vmov	r0, r1, d7
  40c24e: f6c9 ee5c    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x136348
  40c252: ec41 0b16    	vmov	d6, r0, r1
  40c256: eeb2 7b04    	vmov.f64	d7, #1.000000e+01
  40c25a: ee26 7b07    	vmul.f64	d7, d6, d7
  40c25e: eef7 7bc7    	vcvt.f32.f64	s15, d7
  40c262: f50d 6382    	add.w	r3, sp, #0x410
  40c266: 4618         	mov	r0, r3
  40c268: ee17 1a90    	vmov	r1, s15
  40c26c: f04f 0200    	mov.w	r2, #0x0
  40c270: f186 fd3e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x186a7c
  40c274: f50d 6382    	add.w	r3, sp, #0x410
  40c278: 4628         	mov	r0, r5
  40c27a: 4619         	mov	r1, r3
  40c27c: 47a0         	blx	r4
  40c27e: ab07         	add	r3, sp, #0x1c
  40c280: 681b         	ldr	r3, [r3]
  40c282: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  40c286: 681b         	ldr	r3, [r3]
  40c288: 334c         	adds	r3, #0x4c
  40c28a: 681c         	ldr	r4, [r3]
  40c28c: ab07         	add	r3, sp, #0x1c
  40c28e: 681b         	ldr	r3, [r3]
  40c290: f8d3 5174    	ldr.w	r5, [r3, #0x174]
  40c294: ab07         	add	r3, sp, #0x1c
  40c296: 681b         	ldr	r3, [r3]
  40c298: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  40c29c: f503 76bc    	add.w	r6, r3, #0x178
  40c2a0: f50d 6380    	add.w	r3, sp, #0x400
  40c2a4: 4618         	mov	r0, r3
  40c2a6: f04f 0100    	mov.w	r1, #0x0
  40c2aa: f2c4 1170    	movt	r1, #0x4170
  40c2ae: f04f 0200    	mov.w	r2, #0x0
  40c2b2: f2cc 2270    	movt	r2, #0xc270
  40c2b6: f186 fd1b    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x186a36
  40c2ba: f50d 6282    	add.w	r2, sp, #0x410
  40c2be: f50d 6380    	add.w	r3, sp, #0x400
  40c2c2: 4610         	mov	r0, r2
  40c2c4: 4631         	mov	r1, r6
  40c2c6: 461a         	mov	r2, r3
  40c2c8: f7fc f8f4    	bl	0x4084b4 <Tracer::checkCollision()+0x428> @ imm = #-0x3e18
  40c2cc: f50d 6382    	add.w	r3, sp, #0x410
  40c2d0: 4628         	mov	r0, r5
  40c2d2: 4619         	mov	r1, r3
  40c2d4: 47a0         	blx	r4
  40c2d6: f005 be1d    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x5c3a
  40c2da: ab07         	add	r3, sp, #0x1c
  40c2dc: 681b         	ldr	r3, [r3]
  40c2de: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40c2e2: 681b         	ldr	r3, [r3]
  40c2e4: f503 730e    	add.w	r3, r3, #0x238
  40c2e8: 681b         	ldr	r3, [r3]
  40c2ea: aa07         	add	r2, sp, #0x1c
  40c2ec: 6812         	ldr	r2, [r2]
  40c2ee: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40c2f2: 4610         	mov	r0, r2
  40c2f4: f04f 0100    	mov.w	r1, #0x0
  40c2f8: f2c4 3134    	movt	r1, #0x4334
  40c2fc: 4798         	blx	r3
  40c2fe: 4b95         	ldr	r3, [pc, #0x254]        @ 0x40c554 <TrainingStage::doLesson(float)+0x227c>
  40c300: 58e3         	ldr	r3, [r4, r3]
  40c302: 681b         	ldr	r3, [r3]
  40c304: 681b         	ldr	r3, [r3]
  40c306: f503 7329    	add.w	r3, r3, #0x2a4
  40c30a: 681b         	ldr	r3, [r3]
  40c30c: 4a91         	ldr	r2, [pc, #0x244]        @ 0x40c554 <TrainingStage::doLesson(float)+0x227c>
  40c30e: 58a2         	ldr	r2, [r4, r2]
  40c310: 6812         	ldr	r2, [r2]
  40c312: 4610         	mov	r0, r2
  40c314: f04f 0100    	mov.w	r1, #0x0
  40c318: 4798         	blx	r3
  40c31a: ab07         	add	r3, sp, #0x1c
  40c31c: 681b         	ldr	r3, [r3]
  40c31e: ed93 7a62    	vldr	s14, [r3, #392]
  40c322: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  40c326: eeb4 7ae7    	vcmpe.f32	s14, s15
  40c32a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40c32e: d505         	bpl	0x40c33c <TrainingStage::doLesson(float)+0x2064> @ imm = #0xa
  40c330: aa07         	add	r2, sp, #0x1c
  40c332: ab06         	add	r3, sp, #0x18
  40c334: 6810         	ldr	r0, [r2]
  40c336: 6819         	ldr	r1, [r3]
  40c338: f7fd fd7a    	bl	0x409e30 <TrainingStage::headChatter(float)> @ imm = #-0x250c
  40c33c: ab07         	add	r3, sp, #0x1c
  40c33e: 681b         	ldr	r3, [r3]
  40c340: ed93 7a62    	vldr	s14, [r3, #392]
  40c344: eef0 7a08    	vmov.f32	s15, #3.000000e+00
  40c348: eeb4 7ae7    	vcmpe.f32	s14, s15
  40c34c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40c350: dc01         	bgt	0x40c356 <TrainingStage::doLesson(float)+0x207e> @ imm = #0x2
  40c352: f005 bddf    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x5bbe
  40c356: ab07         	add	r3, sp, #0x1c
  40c358: 681b         	ldr	r3, [r3]
  40c35a: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  40c35e: 1c5a         	adds	r2, r3, #0x1
  40c360: ab07         	add	r3, sp, #0x1c
  40c362: 681b         	ldr	r3, [r3]
  40c364: f8c3 2180    	str.w	r2, [r3, #0x180]
  40c368: ab07         	add	r3, sp, #0x1c
  40c36a: 681b         	ldr	r3, [r3]
  40c36c: f04f 0200    	mov.w	r2, #0x0
  40c370: f8c3 2188    	str.w	r2, [r3, #0x188]
  40c374: ab07         	add	r3, sp, #0x1c
  40c376: 681b         	ldr	r3, [r3]
  40c378: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  40c37c: f50d 6380    	add.w	r3, sp, #0x400
  40c380: 4618         	mov	r0, r3
  40c382: f37e f837    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37e06e
  40c386: f50d 6282    	add.w	r2, sp, #0x410
  40c38a: f50d 6380    	add.w	r3, sp, #0x400
  40c38e: 4610         	mov	r0, r2
  40c390: 4a74         	ldr	r2, [pc, #0x1d0]        @ 0x40c564 <TrainingStage::doLesson(float)+0x228c>
  40c392: 447a         	add	r2, pc
  40c394: 4611         	mov	r1, r2
  40c396: 461a         	mov	r2, r3
  40c398: f3aa fb62    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3aa6c4
  40c39c: 2000         	movs	r0, #0x0
  40c39e: 2100         	movs	r1, #0x0
  40c3a0: 22ff         	movs	r2, #0xff
  40c3a2: f7fc f859    	bl	0x408458 <Tracer::checkCollision()+0x3cc> @ imm = #-0x3f4e
  40c3a6: 4602         	mov	r2, r0
  40c3a8: ab15         	add	r3, sp, #0x54
  40c3aa: 4611         	mov	r1, r2
  40c3ac: 7019         	strb	r1, [r3]
  40c3ae: f3c2 2107    	ubfx	r1, r2, #0x8, #0x8
  40c3b2: 7059         	strb	r1, [r3, #0x1]
  40c3b4: f3c2 4207    	ubfx	r2, r2, #0x10, #0x8
  40c3b8: 709a         	strb	r2, [r3, #0x2]
  40c3ba: f50d 6282    	add.w	r2, sp, #0x410
  40c3be: ab15         	add	r3, sp, #0x54
  40c3c0: 4628         	mov	r0, r5
  40c3c2: 4611         	mov	r1, r2
  40c3c4: 681a         	ldr	r2, [r3]
  40c3c6: 2304         	movs	r3, #0x4
  40c3c8: f730 ff7a    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xcf10c
  40c3cc: f50d 6382    	add.w	r3, sp, #0x410
  40c3d0: 4618         	mov	r0, r3
  40c3d2: f3a9 fa9f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a953e
  40c3d6: f50d 6380    	add.w	r3, sp, #0x400
  40c3da: 4618         	mov	r0, r3
  40c3dc: f37e f80e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37e01c
  40c3e0: 4b5e         	ldr	r3, [pc, #0x178]        @ 0x40c55c <TrainingStage::doLesson(float)+0x2284>
  40c3e2: 58e3         	ldr	r3, [r4, r3]
  40c3e4: 681b         	ldr	r3, [r3]
  40c3e6: 4618         	mov	r0, r3
  40c3e8: 213e         	movs	r1, #0x3e
  40c3ea: 2201         	movs	r2, #0x1
  40c3ec: f7eb fca8    	bl	0x3f7d40 <Sound::playSoundWithVoice(int, int)> @ imm = #-0x146b0
  40c3f0: 4b58         	ldr	r3, [pc, #0x160]        @ 0x40c554 <TrainingStage::doLesson(float)+0x227c>
  40c3f2: 58e3         	ldr	r3, [r4, r3]
  40c3f4: 681b         	ldr	r3, [r3]
  40c3f6: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  40c3fa: 681b         	ldr	r3, [r3]
  40c3fc: f503 731f    	add.w	r3, r3, #0x27c
  40c400: 681b         	ldr	r3, [r3]
  40c402: 4a54         	ldr	r2, [pc, #0x150]        @ 0x40c554 <TrainingStage::doLesson(float)+0x227c>
  40c404: 58a2         	ldr	r2, [r4, r2]
  40c406: 6812         	ldr	r2, [r2]
  40c408: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  40c40c: 4610         	mov	r0, r2
  40c40e: 4798         	blx	r3
  40c410: 4603         	mov	r3, r0
  40c412: 2b08         	cmp	r3, #0x8
  40c414: bf14         	ite	ne
  40c416: 2300         	movne	r3, #0x0
  40c418: 2301         	moveq	r3, #0x1
  40c41a: b2db         	uxtb	r3, r3
  40c41c: 2b00         	cmp	r3, #0x0
  40c41e: d00b         	beq	0x40c438 <TrainingStage::doLesson(float)+0x2160> @ imm = #0x16
  40c420: 4b4c         	ldr	r3, [pc, #0x130]        @ 0x40c554 <TrainingStage::doLesson(float)+0x227c>
  40c422: 58e3         	ldr	r3, [r4, r3]
  40c424: 681b         	ldr	r3, [r3]
  40c426: 681b         	ldr	r3, [r3]
  40c428: f503 732b    	add.w	r3, r3, #0x2ac
  40c42c: 681b         	ldr	r3, [r3]
  40c42e: 4a49         	ldr	r2, [pc, #0x124]        @ 0x40c554 <TrainingStage::doLesson(float)+0x227c>
  40c430: 58a2         	ldr	r2, [r4, r2]
  40c432: 6812         	ldr	r2, [r2]
  40c434: 4610         	mov	r0, r2
  40c436: 4798         	blx	r3
  40c438: f005 bd6c    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x5ad8
  40c43c: ab07         	add	r3, sp, #0x1c
  40c43e: 681b         	ldr	r3, [r3]
  40c440: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  40c444: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  40c448: 4618         	mov	r0, r3
  40c44a: 2101         	movs	r1, #0x1
  40c44c: f742 fa64    	bl	0x34e918 <Joypad::disableFiring(bool)> @ imm = #-0xbdb38
  40c450: ab07         	add	r3, sp, #0x1c
  40c452: 681b         	ldr	r3, [r3]
  40c454: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40c458: 681b         	ldr	r3, [r3]
  40c45a: f503 730e    	add.w	r3, r3, #0x238
  40c45e: 681b         	ldr	r3, [r3]
  40c460: aa07         	add	r2, sp, #0x1c
  40c462: 6812         	ldr	r2, [r2]
  40c464: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40c468: 4610         	mov	r0, r2
  40c46a: f04f 0100    	mov.w	r1, #0x0
  40c46e: f2c4 3134    	movt	r1, #0x4334
  40c472: 4798         	blx	r3
  40c474: 4b37         	ldr	r3, [pc, #0xdc]         @ 0x40c554 <TrainingStage::doLesson(float)+0x227c>
  40c476: 58e3         	ldr	r3, [r4, r3]
  40c478: 681b         	ldr	r3, [r3]
  40c47a: 681b         	ldr	r3, [r3]
  40c47c: f503 7329    	add.w	r3, r3, #0x2a4
  40c480: 681b         	ldr	r3, [r3]
  40c482: 4a34         	ldr	r2, [pc, #0xd0]         @ 0x40c554 <TrainingStage::doLesson(float)+0x227c>
  40c484: 58a2         	ldr	r2, [r4, r2]
  40c486: 6812         	ldr	r2, [r2]
  40c488: 4610         	mov	r0, r2
  40c48a: f04f 0100    	mov.w	r1, #0x0
  40c48e: 4798         	blx	r3
  40c490: 4b30         	ldr	r3, [pc, #0xc0]         @ 0x40c554 <TrainingStage::doLesson(float)+0x227c>
  40c492: 58e3         	ldr	r3, [r4, r3]
  40c494: 681b         	ldr	r3, [r3]
  40c496: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  40c49a: 681b         	ldr	r3, [r3]
  40c49c: f503 731e    	add.w	r3, r3, #0x278
  40c4a0: 681b         	ldr	r3, [r3]
  40c4a2: 4a2c         	ldr	r2, [pc, #0xb0]         @ 0x40c554 <TrainingStage::doLesson(float)+0x227c>
  40c4a4: 58a2         	ldr	r2, [r4, r2]
  40c4a6: 6812         	ldr	r2, [r2]
  40c4a8: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  40c4ac: 4610         	mov	r0, r2
  40c4ae: 2164         	movs	r1, #0x64
  40c4b0: 4798         	blx	r3
  40c4b2: 4b28         	ldr	r3, [pc, #0xa0]         @ 0x40c554 <TrainingStage::doLesson(float)+0x227c>
  40c4b4: 58e3         	ldr	r3, [r4, r3]
  40c4b6: 681b         	ldr	r3, [r3]
  40c4b8: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  40c4bc: 681b         	ldr	r3, [r3]
  40c4be: f503 731e    	add.w	r3, r3, #0x278
  40c4c2: 681b         	ldr	r3, [r3]
  40c4c4: 4a23         	ldr	r2, [pc, #0x8c]         @ 0x40c554 <TrainingStage::doLesson(float)+0x227c>
  40c4c6: 58a2         	ldr	r2, [r4, r2]
  40c4c8: 6812         	ldr	r2, [r2]
  40c4ca: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  40c4ce: 4610         	mov	r0, r2
  40c4d0: 2164         	movs	r1, #0x64
  40c4d2: 4798         	blx	r3
  40c4d4: 4b1f         	ldr	r3, [pc, #0x7c]         @ 0x40c554 <TrainingStage::doLesson(float)+0x227c>
  40c4d6: 58e3         	ldr	r3, [r4, r3]
  40c4d8: 681b         	ldr	r3, [r3]
  40c4da: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  40c4de: 681b         	ldr	r3, [r3]
  40c4e0: f503 7322    	add.w	r3, r3, #0x288
  40c4e4: 681b         	ldr	r3, [r3]
  40c4e6: 4a1b         	ldr	r2, [pc, #0x6c]         @ 0x40c554 <TrainingStage::doLesson(float)+0x227c>
  40c4e8: 58a2         	ldr	r2, [r4, r2]
  40c4ea: 6812         	ldr	r2, [r2]
  40c4ec: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  40c4f0: 4610         	mov	r0, r2
  40c4f2: 2114         	movs	r1, #0x14
  40c4f4: 4798         	blx	r3
  40c4f6: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x40c554 <TrainingStage::doLesson(float)+0x227c>
  40c4f8: 58e3         	ldr	r3, [r4, r3]
  40c4fa: 681b         	ldr	r3, [r3]
  40c4fc: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  40c500: 681b         	ldr	r3, [r3]
  40c502: f503 7322    	add.w	r3, r3, #0x288
  40c506: 681b         	ldr	r3, [r3]
  40c508: 4a12         	ldr	r2, [pc, #0x48]         @ 0x40c554 <TrainingStage::doLesson(float)+0x227c>
  40c50a: 58a2         	ldr	r2, [r4, r2]
  40c50c: 6812         	ldr	r2, [r2]
  40c50e: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  40c512: 4610         	mov	r0, r2
  40c514: 2114         	movs	r1, #0x14
  40c516: 4798         	blx	r3
  40c518: ab07         	add	r3, sp, #0x1c
  40c51a: 681b         	ldr	r3, [r3]
  40c51c: ed93 7a62    	vldr	s14, [r3, #392]
  40c520: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  40c524: eeb4 7ae7    	vcmpe.f32	s14, s15
  40c528: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40c52c: d505         	bpl	0x40c53a <TrainingStage::doLesson(float)+0x2262> @ imm = #0xa
  40c52e: aa07         	add	r2, sp, #0x1c
  40c530: ab06         	add	r3, sp, #0x18
  40c532: 6810         	ldr	r0, [r2]
  40c534: 6819         	ldr	r1, [r3]
  40c536: f7fd fc7b    	bl	0x409e30 <TrainingStage::headChatter(float)> @ imm = #-0x270a
  40c53a: ab07         	add	r3, sp, #0x1c
  40c53c: 681b         	ldr	r3, [r3]
  40c53e: ed93 7a62    	vldr	s14, [r3, #392]
  40c542: eef1 7a00    	vmov.f32	s15, #4.000000e+00
  40c546: eeb4 7ae7    	vcmpe.f32	s14, s15
  40c54a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40c54e: dc0b         	bgt	0x40c568 <TrainingStage::doLesson(float)+0x2290> @ imm = #0x16
  40c550: f005 bce0    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x59c0
  40c554: d784         	bvc	0x40c460 <TrainingStage::doLesson(float)+0x2188> @ imm = #-0xf8
  40c556: ffff edba    	<unknown>
  40c55a: 003c         	movs	r4, r7
  40c55c: d730         	bvc	0x40c5c0 <TrainingStage::doLesson(float)+0x22e8> @ imm = #0x60
  40c55e: ffff ea7e    	<unknown>
  40c562: 003c         	movs	r4, r7
  40c564: e71e         	b	0x40c3a4 <TrainingStage::doLesson(float)+0x20cc> @ imm = #-0x1c4
  40c566: 003c         	movs	r4, r7
  40c568: ab07         	add	r3, sp, #0x1c
  40c56a: 681b         	ldr	r3, [r3]
  40c56c: f8d3 3178    	ldr.w	r3, [r3, #0x178]
  40c570: 681b         	ldr	r3, [r3]
  40c572: 3390         	adds	r3, #0x90
  40c574: 681b         	ldr	r3, [r3]
  40c576: aa07         	add	r2, sp, #0x1c
  40c578: 6812         	ldr	r2, [r2]
  40c57a: f8d2 2178    	ldr.w	r2, [r2, #0x178]
  40c57e: 4610         	mov	r0, r2
  40c580: 2101         	movs	r1, #0x1
  40c582: 4798         	blx	r3
  40c584: ab07         	add	r3, sp, #0x1c
  40c586: 681b         	ldr	r3, [r3]
  40c588: 2200         	movs	r2, #0x0
  40c58a: f883 2194    	strb.w	r2, [r3, #0x194]
  40c58e: ab07         	add	r3, sp, #0x1c
  40c590: 681b         	ldr	r3, [r3]
  40c592: f8d3 3178    	ldr.w	r3, [r3, #0x178]
  40c596: 681b         	ldr	r3, [r3]
  40c598: 334c         	adds	r3, #0x4c
  40c59a: 681d         	ldr	r5, [r3]
  40c59c: ab07         	add	r3, sp, #0x1c
  40c59e: 681b         	ldr	r3, [r3]
  40c5a0: f8d3 3178    	ldr.w	r3, [r3, #0x178]
  40c5a4: 461e         	mov	r6, r3
  40c5a6: ab07         	add	r3, sp, #0x1c
  40c5a8: 681b         	ldr	r3, [r3]
  40c5aa: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  40c5ae: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  40c5b2: f103 07fc    	add.w	r7, r3, #0xfc
  40c5b6: f50d 6380    	add.w	r3, sp, #0x400
  40c5ba: 4618         	mov	r0, r3
  40c5bc: f04f 0100    	mov.w	r1, #0x0
  40c5c0: f04f 0200    	mov.w	r2, #0x0
  40c5c4: f2c4 2270    	movt	r2, #0x4270
  40c5c8: f186 fb92    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x186724
  40c5cc: f50d 6282    	add.w	r2, sp, #0x410
  40c5d0: f50d 6380    	add.w	r3, sp, #0x400
  40c5d4: 4610         	mov	r0, r2
  40c5d6: 4639         	mov	r1, r7
  40c5d8: 461a         	mov	r2, r3
  40c5da: f7fb ff6b    	bl	0x4084b4 <Tracer::checkCollision()+0x428> @ imm = #-0x412a
  40c5de: f50d 6382    	add.w	r3, sp, #0x410
  40c5e2: 4630         	mov	r0, r6
  40c5e4: 4619         	mov	r1, r3
  40c5e6: 47a8         	blx	r5
  40c5e8: ab07         	add	r3, sp, #0x1c
  40c5ea: 681b         	ldr	r3, [r3]
  40c5ec: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  40c5f0: f50d 6380    	add.w	r3, sp, #0x400
  40c5f4: 4618         	mov	r0, r3
  40c5f6: f37d fefd    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37ddfa
  40c5fa: f50d 6282    	add.w	r2, sp, #0x410
  40c5fe: f50d 6380    	add.w	r3, sp, #0x400
  40c602: 4610         	mov	r0, r2
  40c604: f8df 2838    	ldr.w	r2, [pc, #0x838]        @ 0x40ce40 <TrainingStage::doLesson(float)+0x2b68>
  40c608: 447a         	add	r2, pc
  40c60a: 4611         	mov	r1, r2
  40c60c: 461a         	mov	r2, r3
  40c60e: f3aa fa27    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3aa44e
  40c612: 2000         	movs	r0, #0x0
  40c614: 2100         	movs	r1, #0x0
  40c616: 22ff         	movs	r2, #0xff
  40c618: f7fb ff1e    	bl	0x408458 <Tracer::checkCollision()+0x3cc> @ imm = #-0x41c4
  40c61c: 4602         	mov	r2, r0
  40c61e: ab16         	add	r3, sp, #0x58
  40c620: 4611         	mov	r1, r2
  40c622: 7019         	strb	r1, [r3]
  40c624: f3c2 2107    	ubfx	r1, r2, #0x8, #0x8
  40c628: 7059         	strb	r1, [r3, #0x1]
  40c62a: f3c2 4207    	ubfx	r2, r2, #0x10, #0x8
  40c62e: 709a         	strb	r2, [r3, #0x2]
  40c630: f50d 6282    	add.w	r2, sp, #0x410
  40c634: ab16         	add	r3, sp, #0x58
  40c636: 4628         	mov	r0, r5
  40c638: 4611         	mov	r1, r2
  40c63a: 681a         	ldr	r2, [r3]
  40c63c: 2304         	movs	r3, #0x4
  40c63e: f730 fe3f    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xcf382
  40c642: f50d 6382    	add.w	r3, sp, #0x410
  40c646: 4618         	mov	r0, r3
  40c648: f3a9 f964    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a92c8
  40c64c: f50d 6380    	add.w	r3, sp, #0x400
  40c650: 4618         	mov	r0, r3
  40c652: f37d fed3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37dda6
  40c656: ab07         	add	r3, sp, #0x1c
  40c658: 681b         	ldr	r3, [r3]
  40c65a: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  40c65e: 1c5a         	adds	r2, r3, #0x1
  40c660: ab07         	add	r3, sp, #0x1c
  40c662: 681b         	ldr	r3, [r3]
  40c664: f8c3 2180    	str.w	r2, [r3, #0x180]
  40c668: ab07         	add	r3, sp, #0x1c
  40c66a: 681b         	ldr	r3, [r3]
  40c66c: f04f 0200    	mov.w	r2, #0x0
  40c670: f8c3 2188    	str.w	r2, [r3, #0x188]
  40c674: f8df 37cc    	ldr.w	r3, [pc, #0x7cc]        @ 0x40ce44 <TrainingStage::doLesson(float)+0x2b6c>
  40c678: 58e3         	ldr	r3, [r4, r3]
  40c67a: 681b         	ldr	r3, [r3]
  40c67c: 4618         	mov	r0, r3
  40c67e: 213f         	movs	r1, #0x3f
  40c680: 2201         	movs	r2, #0x1
  40c682: f7eb fb5d    	bl	0x3f7d40 <Sound::playSoundWithVoice(int, int)> @ imm = #-0x14946
  40c686: f005 bc45    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x588a
  40c68a: ab07         	add	r3, sp, #0x1c
  40c68c: 681b         	ldr	r3, [r3]
  40c68e: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40c692: 681b         	ldr	r3, [r3]
  40c694: f503 730e    	add.w	r3, r3, #0x238
  40c698: 681b         	ldr	r3, [r3]
  40c69a: aa07         	add	r2, sp, #0x1c
  40c69c: 6812         	ldr	r2, [r2]
  40c69e: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40c6a2: 4610         	mov	r0, r2
  40c6a4: f04f 0100    	mov.w	r1, #0x0
  40c6a8: f2c4 3134    	movt	r1, #0x4334
  40c6ac: 4798         	blx	r3
  40c6ae: f8df 3798    	ldr.w	r3, [pc, #0x798]        @ 0x40ce48 <TrainingStage::doLesson(float)+0x2b70>
  40c6b2: 58e3         	ldr	r3, [r4, r3]
  40c6b4: 681b         	ldr	r3, [r3]
  40c6b6: 681b         	ldr	r3, [r3]
  40c6b8: f503 7329    	add.w	r3, r3, #0x2a4
  40c6bc: 681b         	ldr	r3, [r3]
  40c6be: f8df 2788    	ldr.w	r2, [pc, #0x788]        @ 0x40ce48 <TrainingStage::doLesson(float)+0x2b70>
  40c6c2: 58a2         	ldr	r2, [r4, r2]
  40c6c4: 6812         	ldr	r2, [r2]
  40c6c6: 4610         	mov	r0, r2
  40c6c8: f04f 0100    	mov.w	r1, #0x0
  40c6cc: 4798         	blx	r3
  40c6ce: ab07         	add	r3, sp, #0x1c
  40c6d0: 681b         	ldr	r3, [r3]
  40c6d2: ed93 7a62    	vldr	s14, [r3, #392]
  40c6d6: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  40c6da: eeb4 7ae7    	vcmpe.f32	s14, s15
  40c6de: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40c6e2: d505         	bpl	0x40c6f0 <TrainingStage::doLesson(float)+0x2418> @ imm = #0xa
  40c6e4: aa07         	add	r2, sp, #0x1c
  40c6e6: ab06         	add	r3, sp, #0x18
  40c6e8: 6810         	ldr	r0, [r2]
  40c6ea: 6819         	ldr	r1, [r3]
  40c6ec: f7fd fba0    	bl	0x409e30 <TrainingStage::headChatter(float)> @ imm = #-0x28c0
  40c6f0: aa07         	add	r2, sp, #0x1c
  40c6f2: ab06         	add	r3, sp, #0x18
  40c6f4: 6810         	ldr	r0, [r2]
  40c6f6: 6819         	ldr	r1, [r3]
  40c6f8: f7fd fbf2    	bl	0x409ee0 <TrainingStage::runFireLesson(float)> @ imm = #-0x281c
  40c6fc: ab07         	add	r3, sp, #0x1c
  40c6fe: 681b         	ldr	r3, [r3]
  40c700: ed93 7a62    	vldr	s14, [r3, #392]
  40c704: eef1 7a00    	vmov.f32	s15, #4.000000e+00
  40c708: eeb4 7ae7    	vcmpe.f32	s14, s15
  40c70c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40c710: dc01         	bgt	0x40c716 <TrainingStage::doLesson(float)+0x243e> @ imm = #0x2
  40c712: f005 bbff    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x57fe
  40c716: ab07         	add	r3, sp, #0x1c
  40c718: 681b         	ldr	r3, [r3]
  40c71a: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  40c71e: f50d 6380    	add.w	r3, sp, #0x400
  40c722: 4618         	mov	r0, r3
  40c724: f37d fe66    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37dccc
  40c728: f50d 6282    	add.w	r2, sp, #0x410
  40c72c: f50d 6380    	add.w	r3, sp, #0x400
  40c730: 4610         	mov	r0, r2
  40c732: f8df 2718    	ldr.w	r2, [pc, #0x718]        @ 0x40ce4c <TrainingStage::doLesson(float)+0x2b74>
  40c736: 447a         	add	r2, pc
  40c738: 4611         	mov	r1, r2
  40c73a: 461a         	mov	r2, r3
  40c73c: f3aa f990    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3aa320
  40c740: 2000         	movs	r0, #0x0
  40c742: 2100         	movs	r1, #0x0
  40c744: 22ff         	movs	r2, #0xff
  40c746: f7fb fe87    	bl	0x408458 <Tracer::checkCollision()+0x3cc> @ imm = #-0x42f2
  40c74a: 4602         	mov	r2, r0
  40c74c: ab17         	add	r3, sp, #0x5c
  40c74e: 4611         	mov	r1, r2
  40c750: 7019         	strb	r1, [r3]
  40c752: f3c2 2107    	ubfx	r1, r2, #0x8, #0x8
  40c756: 7059         	strb	r1, [r3, #0x1]
  40c758: f3c2 4207    	ubfx	r2, r2, #0x10, #0x8
  40c75c: 709a         	strb	r2, [r3, #0x2]
  40c75e: f50d 6282    	add.w	r2, sp, #0x410
  40c762: ab17         	add	r3, sp, #0x5c
  40c764: 4628         	mov	r0, r5
  40c766: 4611         	mov	r1, r2
  40c768: 681a         	ldr	r2, [r3]
  40c76a: 2304         	movs	r3, #0x4
  40c76c: f730 fda8    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xcf4b0
  40c770: f50d 6382    	add.w	r3, sp, #0x410
  40c774: 4618         	mov	r0, r3
  40c776: f3a9 f8cd    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a919a
  40c77a: f50d 6380    	add.w	r3, sp, #0x400
  40c77e: 4618         	mov	r0, r3
  40c780: f37d fe3c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37dc78
  40c784: ab07         	add	r3, sp, #0x1c
  40c786: 681b         	ldr	r3, [r3]
  40c788: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  40c78c: 1c5a         	adds	r2, r3, #0x1
  40c78e: ab07         	add	r3, sp, #0x1c
  40c790: 681b         	ldr	r3, [r3]
  40c792: f8c3 2180    	str.w	r2, [r3, #0x180]
  40c796: ab07         	add	r3, sp, #0x1c
  40c798: 681b         	ldr	r3, [r3]
  40c79a: f04f 0200    	mov.w	r2, #0x0
  40c79e: f8c3 2188    	str.w	r2, [r3, #0x188]
  40c7a2: f8df 36a0    	ldr.w	r3, [pc, #0x6a0]        @ 0x40ce44 <TrainingStage::doLesson(float)+0x2b6c>
  40c7a6: 58e3         	ldr	r3, [r4, r3]
  40c7a8: 681b         	ldr	r3, [r3]
  40c7aa: 4618         	mov	r0, r3
  40c7ac: 2140         	movs	r1, #0x40
  40c7ae: 2201         	movs	r2, #0x1
  40c7b0: f7eb fac6    	bl	0x3f7d40 <Sound::playSoundWithVoice(int, int)> @ imm = #-0x14a74
  40c7b4: f005 bbae    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x575c
  40c7b8: ab07         	add	r3, sp, #0x1c
  40c7ba: 681b         	ldr	r3, [r3]
  40c7bc: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40c7c0: 681b         	ldr	r3, [r3]
  40c7c2: f503 730e    	add.w	r3, r3, #0x238
  40c7c6: 681b         	ldr	r3, [r3]
  40c7c8: aa07         	add	r2, sp, #0x1c
  40c7ca: 6812         	ldr	r2, [r2]
  40c7cc: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40c7d0: 4610         	mov	r0, r2
  40c7d2: f04f 0100    	mov.w	r1, #0x0
  40c7d6: f2c4 3134    	movt	r1, #0x4334
  40c7da: 4798         	blx	r3
  40c7dc: f8df 3668    	ldr.w	r3, [pc, #0x668]        @ 0x40ce48 <TrainingStage::doLesson(float)+0x2b70>
  40c7e0: 58e3         	ldr	r3, [r4, r3]
  40c7e2: 681b         	ldr	r3, [r3]
  40c7e4: 681b         	ldr	r3, [r3]
  40c7e6: f503 7329    	add.w	r3, r3, #0x2a4
  40c7ea: 681b         	ldr	r3, [r3]
  40c7ec: f8df 2658    	ldr.w	r2, [pc, #0x658]        @ 0x40ce48 <TrainingStage::doLesson(float)+0x2b70>
  40c7f0: 58a2         	ldr	r2, [r4, r2]
  40c7f2: 6812         	ldr	r2, [r2]
  40c7f4: 4610         	mov	r0, r2
  40c7f6: f04f 0100    	mov.w	r1, #0x0
  40c7fa: 4798         	blx	r3
  40c7fc: ab07         	add	r3, sp, #0x1c
  40c7fe: 681b         	ldr	r3, [r3]
  40c800: ed93 7a62    	vldr	s14, [r3, #392]
  40c804: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  40c808: eeb4 7ae7    	vcmpe.f32	s14, s15
  40c80c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40c810: d505         	bpl	0x40c81e <TrainingStage::doLesson(float)+0x2546> @ imm = #0xa
  40c812: aa07         	add	r2, sp, #0x1c
  40c814: ab06         	add	r3, sp, #0x18
  40c816: 6810         	ldr	r0, [r2]
  40c818: 6819         	ldr	r1, [r3]
  40c81a: f7fd fb09    	bl	0x409e30 <TrainingStage::headChatter(float)> @ imm = #-0x29ee
  40c81e: aa07         	add	r2, sp, #0x1c
  40c820: ab06         	add	r3, sp, #0x18
  40c822: 6810         	ldr	r0, [r2]
  40c824: 6819         	ldr	r1, [r3]
  40c826: f7fd fb5b    	bl	0x409ee0 <TrainingStage::runFireLesson(float)> @ imm = #-0x294a
  40c82a: ab07         	add	r3, sp, #0x1c
  40c82c: 681b         	ldr	r3, [r3]
  40c82e: ed93 7a62    	vldr	s14, [r3, #392]
  40c832: eef2 7a00    	vmov.f32	s15, #8.000000e+00
  40c836: eeb4 7ae7    	vcmpe.f32	s14, s15
  40c83a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40c83e: dc01         	bgt	0x40c844 <TrainingStage::doLesson(float)+0x256c> @ imm = #0x2
  40c840: f005 bb68    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x56d0
  40c844: ab07         	add	r3, sp, #0x1c
  40c846: 681b         	ldr	r3, [r3]
  40c848: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  40c84c: 1c5a         	adds	r2, r3, #0x1
  40c84e: ab07         	add	r3, sp, #0x1c
  40c850: 681b         	ldr	r3, [r3]
  40c852: f8c3 2180    	str.w	r2, [r3, #0x180]
  40c856: ab07         	add	r3, sp, #0x1c
  40c858: 681b         	ldr	r3, [r3]
  40c85a: f04f 0200    	mov.w	r2, #0x0
  40c85e: f8c3 2188    	str.w	r2, [r3, #0x188]
  40c862: ab07         	add	r3, sp, #0x1c
  40c864: 681b         	ldr	r3, [r3]
  40c866: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  40c86a: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  40c86e: 4618         	mov	r0, r3
  40c870: 2100         	movs	r1, #0x0
  40c872: f742 f851    	bl	0x34e918 <Joypad::disableFiring(bool)> @ imm = #-0xbdf5e
  40c876: ab07         	add	r3, sp, #0x1c
  40c878: 681b         	ldr	r3, [r3]
  40c87a: f8d3 3178    	ldr.w	r3, [r3, #0x178]
  40c87e: 681b         	ldr	r3, [r3]
  40c880: 3390         	adds	r3, #0x90
  40c882: 681b         	ldr	r3, [r3]
  40c884: aa07         	add	r2, sp, #0x1c
  40c886: 6812         	ldr	r2, [r2]
  40c888: f8d2 2178    	ldr.w	r2, [r2, #0x178]
  40c88c: 4610         	mov	r0, r2
  40c88e: 2100         	movs	r1, #0x0
  40c890: 4798         	blx	r3
  40c892: f8df 35b4    	ldr.w	r3, [pc, #0x5b4]        @ 0x40ce48 <TrainingStage::doLesson(float)+0x2b70>
  40c896: 58e3         	ldr	r3, [r4, r3]
  40c898: 681b         	ldr	r3, [r3]
  40c89a: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  40c89e: 681b         	ldr	r3, [r3]
  40c8a0: f503 731e    	add.w	r3, r3, #0x278
  40c8a4: 681b         	ldr	r3, [r3]
  40c8a6: f8df 25a0    	ldr.w	r2, [pc, #0x5a0]        @ 0x40ce48 <TrainingStage::doLesson(float)+0x2b70>
  40c8aa: 58a2         	ldr	r2, [r4, r2]
  40c8ac: 6812         	ldr	r2, [r2]
  40c8ae: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  40c8b2: 4610         	mov	r0, r2
  40c8b4: 2164         	movs	r1, #0x64
  40c8b6: 4798         	blx	r3
  40c8b8: f8df 358c    	ldr.w	r3, [pc, #0x58c]        @ 0x40ce48 <TrainingStage::doLesson(float)+0x2b70>
  40c8bc: 58e3         	ldr	r3, [r4, r3]
  40c8be: 681b         	ldr	r3, [r3]
  40c8c0: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  40c8c4: 681b         	ldr	r3, [r3]
  40c8c6: f503 731e    	add.w	r3, r3, #0x278
  40c8ca: 681b         	ldr	r3, [r3]
  40c8cc: f8df 2578    	ldr.w	r2, [pc, #0x578]        @ 0x40ce48 <TrainingStage::doLesson(float)+0x2b70>
  40c8d0: 58a2         	ldr	r2, [r4, r2]
  40c8d2: 6812         	ldr	r2, [r2]
  40c8d4: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  40c8d8: 4610         	mov	r0, r2
  40c8da: 2164         	movs	r1, #0x64
  40c8dc: 4798         	blx	r3
  40c8de: f8df 3568    	ldr.w	r3, [pc, #0x568]        @ 0x40ce48 <TrainingStage::doLesson(float)+0x2b70>
  40c8e2: 58e3         	ldr	r3, [r4, r3]
  40c8e4: 681b         	ldr	r3, [r3]
  40c8e6: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  40c8ea: 681b         	ldr	r3, [r3]
  40c8ec: f503 7322    	add.w	r3, r3, #0x288
  40c8f0: 681b         	ldr	r3, [r3]
  40c8f2: f8df 2554    	ldr.w	r2, [pc, #0x554]        @ 0x40ce48 <TrainingStage::doLesson(float)+0x2b70>
  40c8f6: 58a2         	ldr	r2, [r4, r2]
  40c8f8: 6812         	ldr	r2, [r2]
  40c8fa: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  40c8fe: 4610         	mov	r0, r2
  40c900: 2114         	movs	r1, #0x14
  40c902: 4798         	blx	r3
  40c904: f8df 3540    	ldr.w	r3, [pc, #0x540]        @ 0x40ce48 <TrainingStage::doLesson(float)+0x2b70>
  40c908: 58e3         	ldr	r3, [r4, r3]
  40c90a: 681b         	ldr	r3, [r3]
  40c90c: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  40c910: 681b         	ldr	r3, [r3]
  40c912: f503 7322    	add.w	r3, r3, #0x288
  40c916: 681b         	ldr	r3, [r3]
  40c918: f8df 252c    	ldr.w	r2, [pc, #0x52c]        @ 0x40ce48 <TrainingStage::doLesson(float)+0x2b70>
  40c91c: 58a2         	ldr	r2, [r4, r2]
  40c91e: 6812         	ldr	r2, [r2]
  40c920: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  40c924: 4610         	mov	r0, r2
  40c926: 2114         	movs	r1, #0x14
  40c928: 4798         	blx	r3
  40c92a: ab07         	add	r3, sp, #0x1c
  40c92c: 681b         	ldr	r3, [r3]
  40c92e: 2200         	movs	r2, #0x0
  40c930: f883 2194    	strb.w	r2, [r3, #0x194]
  40c934: ab07         	add	r3, sp, #0x1c
  40c936: 681b         	ldr	r3, [r3]
  40c938: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  40c93c: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  40c940: 2200         	movs	r2, #0x0
  40c942: f883 212e    	strb.w	r2, [r3, #0x12e]
  40c946: ab07         	add	r3, sp, #0x1c
  40c948: 681b         	ldr	r3, [r3]
  40c94a: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  40c94e: f50d 6380    	add.w	r3, sp, #0x400
  40c952: 4618         	mov	r0, r3
  40c954: f37d fd4e    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37da9c
  40c958: f50d 6282    	add.w	r2, sp, #0x410
  40c95c: f50d 6380    	add.w	r3, sp, #0x400
  40c960: 4610         	mov	r0, r2
  40c962: f8df 24ec    	ldr.w	r2, [pc, #0x4ec]        @ 0x40ce50 <TrainingStage::doLesson(float)+0x2b78>
  40c966: 447a         	add	r2, pc
  40c968: 4611         	mov	r1, r2
  40c96a: 461a         	mov	r2, r3
  40c96c: f3aa f878    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3aa0f0
  40c970: 2000         	movs	r0, #0x0
  40c972: 2100         	movs	r1, #0x0
  40c974: 22ff         	movs	r2, #0xff
  40c976: f7fb fd6f    	bl	0x408458 <Tracer::checkCollision()+0x3cc> @ imm = #-0x4522
  40c97a: 4602         	mov	r2, r0
  40c97c: ab18         	add	r3, sp, #0x60
  40c97e: 4611         	mov	r1, r2
  40c980: 7019         	strb	r1, [r3]
  40c982: f3c2 2107    	ubfx	r1, r2, #0x8, #0x8
  40c986: 7059         	strb	r1, [r3, #0x1]
  40c988: f3c2 4207    	ubfx	r2, r2, #0x10, #0x8
  40c98c: 709a         	strb	r2, [r3, #0x2]
  40c98e: f50d 6282    	add.w	r2, sp, #0x410
  40c992: ab18         	add	r3, sp, #0x60
  40c994: 4628         	mov	r0, r5
  40c996: 4611         	mov	r1, r2
  40c998: 681a         	ldr	r2, [r3]
  40c99a: 2306         	movs	r3, #0x6
  40c99c: f730 fc90    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xcf6e0
  40c9a0: f50d 6382    	add.w	r3, sp, #0x410
  40c9a4: 4618         	mov	r0, r3
  40c9a6: f3a8 ffb5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a8f6a
  40c9aa: f50d 6380    	add.w	r3, sp, #0x400
  40c9ae: 4618         	mov	r0, r3
  40c9b0: f37d fd24    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37da48
  40c9b4: f8df 348c    	ldr.w	r3, [pc, #0x48c]        @ 0x40ce44 <TrainingStage::doLesson(float)+0x2b6c>
  40c9b8: 58e3         	ldr	r3, [r4, r3]
  40c9ba: 681b         	ldr	r3, [r3]
  40c9bc: 4618         	mov	r0, r3
  40c9be: 2141         	movs	r1, #0x41
  40c9c0: 2201         	movs	r2, #0x1
  40c9c2: f7eb f9bd    	bl	0x3f7d40 <Sound::playSoundWithVoice(int, int)> @ imm = #-0x14c86
  40c9c6: f005 baa5    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x554a
  40c9ca: ab07         	add	r3, sp, #0x1c
  40c9cc: 681b         	ldr	r3, [r3]
  40c9ce: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40c9d2: 681b         	ldr	r3, [r3]
  40c9d4: f503 730e    	add.w	r3, r3, #0x238
  40c9d8: 681b         	ldr	r3, [r3]
  40c9da: aa07         	add	r2, sp, #0x1c
  40c9dc: 6812         	ldr	r2, [r2]
  40c9de: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40c9e2: 4610         	mov	r0, r2
  40c9e4: f04f 0100    	mov.w	r1, #0x0
  40c9e8: f2c4 3134    	movt	r1, #0x4334
  40c9ec: 4798         	blx	r3
  40c9ee: f8df 3458    	ldr.w	r3, [pc, #0x458]        @ 0x40ce48 <TrainingStage::doLesson(float)+0x2b70>
  40c9f2: 58e3         	ldr	r3, [r4, r3]
  40c9f4: 681b         	ldr	r3, [r3]
  40c9f6: 681b         	ldr	r3, [r3]
  40c9f8: f503 7329    	add.w	r3, r3, #0x2a4
  40c9fc: 681b         	ldr	r3, [r3]
  40c9fe: f8df 2448    	ldr.w	r2, [pc, #0x448]        @ 0x40ce48 <TrainingStage::doLesson(float)+0x2b70>
  40ca02: 58a2         	ldr	r2, [r4, r2]
  40ca04: 6812         	ldr	r2, [r2]
  40ca06: 4610         	mov	r0, r2
  40ca08: f04f 0100    	mov.w	r1, #0x0
  40ca0c: 4798         	blx	r3
  40ca0e: ab07         	add	r3, sp, #0x1c
  40ca10: 681b         	ldr	r3, [r3]
  40ca12: ed93 7a62    	vldr	s14, [r3, #392]
  40ca16: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  40ca1a: eeb4 7ae7    	vcmpe.f32	s14, s15
  40ca1e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40ca22: d505         	bpl	0x40ca30 <TrainingStage::doLesson(float)+0x2758> @ imm = #0xa
  40ca24: aa07         	add	r2, sp, #0x1c
  40ca26: ab06         	add	r3, sp, #0x18
  40ca28: 6810         	ldr	r0, [r2]
  40ca2a: 6819         	ldr	r1, [r3]
  40ca2c: f7fd fa00    	bl	0x409e30 <TrainingStage::headChatter(float)> @ imm = #-0x2c00
  40ca30: ab07         	add	r3, sp, #0x1c
  40ca32: 681b         	ldr	r3, [r3]
  40ca34: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  40ca38: 681b         	ldr	r3, [r3]
  40ca3a: 3390         	adds	r3, #0x90
  40ca3c: 681b         	ldr	r3, [r3]
  40ca3e: aa07         	add	r2, sp, #0x1c
  40ca40: 6812         	ldr	r2, [r2]
  40ca42: f8d2 2174    	ldr.w	r2, [r2, #0x174]
  40ca46: 4610         	mov	r0, r2
  40ca48: 2100         	movs	r1, #0x0
  40ca4a: 4798         	blx	r3
  40ca4c: ab07         	add	r3, sp, #0x1c
  40ca4e: 681b         	ldr	r3, [r3]
  40ca50: ed93 7a62    	vldr	s14, [r3, #392]
  40ca54: eef2 7a04    	vmov.f32	s15, #1.000000e+01
  40ca58: eeb4 7ae7    	vcmpe.f32	s14, s15
  40ca5c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40ca60: dd61         	ble	0x40cb26 <TrainingStage::doLesson(float)+0x284e> @ imm = #0xc2
  40ca62: 4bf9         	ldr	r3, [pc, #0x3e4]        @ 0x40ce48 <TrainingStage::doLesson(float)+0x2b70>
  40ca64: 58e3         	ldr	r3, [r4, r3]
  40ca66: 681b         	ldr	r3, [r3]
  40ca68: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  40ca6c: 681b         	ldr	r3, [r3]
  40ca6e: f503 731d    	add.w	r3, r3, #0x274
  40ca72: 681b         	ldr	r3, [r3]
  40ca74: 4af4         	ldr	r2, [pc, #0x3d0]        @ 0x40ce48 <TrainingStage::doLesson(float)+0x2b70>
  40ca76: 58a2         	ldr	r2, [r4, r2]
  40ca78: 6812         	ldr	r2, [r2]
  40ca7a: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  40ca7e: 4610         	mov	r0, r2
  40ca80: 4798         	blx	r3
  40ca82: 4603         	mov	r3, r0
  40ca84: b29b         	uxth	r3, r3
  40ca86: b21d         	sxth	r5, r3
  40ca88: 4bef         	ldr	r3, [pc, #0x3bc]        @ 0x40ce48 <TrainingStage::doLesson(float)+0x2b70>
  40ca8a: 58e3         	ldr	r3, [r4, r3]
  40ca8c: 681b         	ldr	r3, [r3]
  40ca8e: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  40ca92: 681b         	ldr	r3, [r3]
  40ca94: f503 7321    	add.w	r3, r3, #0x284
  40ca98: 681b         	ldr	r3, [r3]
  40ca9a: 4aeb         	ldr	r2, [pc, #0x3ac]        @ 0x40ce48 <TrainingStage::doLesson(float)+0x2b70>
  40ca9c: 58a2         	ldr	r2, [r4, r2]
  40ca9e: 6812         	ldr	r2, [r2]
  40caa0: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  40caa4: 4610         	mov	r0, r2
  40caa6: 4798         	blx	r3
  40caa8: 4603         	mov	r3, r0
  40caaa: b29b         	uxth	r3, r3
  40caac: b21b         	sxth	r3, r3
  40caae: 442b         	add	r3, r5
  40cab0: 2b77         	cmp	r3, #0x77
  40cab2: dd2a         	ble	0x40cb0a <TrainingStage::doLesson(float)+0x2832> @ imm = #0x54
  40cab4: 4be4         	ldr	r3, [pc, #0x390]        @ 0x40ce48 <TrainingStage::doLesson(float)+0x2b70>
  40cab6: 58e3         	ldr	r3, [r4, r3]
  40cab8: 681b         	ldr	r3, [r3]
  40caba: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  40cabe: 681b         	ldr	r3, [r3]
  40cac0: f503 731d    	add.w	r3, r3, #0x274
  40cac4: 681b         	ldr	r3, [r3]
  40cac6: 4ae0         	ldr	r2, [pc, #0x380]        @ 0x40ce48 <TrainingStage::doLesson(float)+0x2b70>
  40cac8: 58a2         	ldr	r2, [r4, r2]
  40caca: 6812         	ldr	r2, [r2]
  40cacc: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  40cad0: 4610         	mov	r0, r2
  40cad2: 4798         	blx	r3
  40cad4: 4603         	mov	r3, r0
  40cad6: b29b         	uxth	r3, r3
  40cad8: b21d         	sxth	r5, r3
  40cada: 4bdb         	ldr	r3, [pc, #0x36c]        @ 0x40ce48 <TrainingStage::doLesson(float)+0x2b70>
  40cadc: 58e3         	ldr	r3, [r4, r3]
  40cade: 681b         	ldr	r3, [r3]
  40cae0: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  40cae4: 681b         	ldr	r3, [r3]
  40cae6: f503 7321    	add.w	r3, r3, #0x284
  40caea: 681b         	ldr	r3, [r3]
  40caec: 4ad6         	ldr	r2, [pc, #0x358]        @ 0x40ce48 <TrainingStage::doLesson(float)+0x2b70>
  40caee: 58a2         	ldr	r2, [r4, r2]
  40caf0: 6812         	ldr	r2, [r2]
  40caf2: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  40caf6: 4610         	mov	r0, r2
  40caf8: 4798         	blx	r3
  40cafa: 4603         	mov	r3, r0
  40cafc: b29b         	uxth	r3, r3
  40cafe: b21b         	sxth	r3, r3
  40cb00: 442b         	add	r3, r5
  40cb02: 2b77         	cmp	r3, #0x77
  40cb04: dd01         	ble	0x40cb0a <TrainingStage::doLesson(float)+0x2832> @ imm = #0x2
  40cb06: 2301         	movs	r3, #0x1
  40cb08: e000         	b	0x40cb0c <TrainingStage::doLesson(float)+0x2834> @ imm = #0x0
  40cb0a: 2300         	movs	r3, #0x0
  40cb0c: 2b00         	cmp	r3, #0x0
  40cb0e: d00a         	beq	0x40cb26 <TrainingStage::doLesson(float)+0x284e> @ imm = #0x14
  40cb10: ab07         	add	r3, sp, #0x1c
  40cb12: 681b         	ldr	r3, [r3]
  40cb14: 2211         	movs	r2, #0x11
  40cb16: f8c3 2180    	str.w	r2, [r3, #0x180]
  40cb1a: ab07         	add	r3, sp, #0x1c
  40cb1c: 681b         	ldr	r3, [r3]
  40cb1e: f04f 0200    	mov.w	r2, #0x0
  40cb22: f8c3 2188    	str.w	r2, [r3, #0x188]
  40cb26: ab07         	add	r3, sp, #0x1c
  40cb28: 681b         	ldr	r3, [r3]
  40cb2a: ed93 7a62    	vldr	s14, [r3, #392]
  40cb2e: eef2 7a0e    	vmov.f32	s15, #1.500000e+01
  40cb32: eeb4 7ae7    	vcmpe.f32	s14, s15
  40cb36: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40cb3a: f340 80dd    	ble.w	0x40ccf8 <TrainingStage::doLesson(float)+0x2a20> @ imm = #0x1ba
  40cb3e: ab07         	add	r3, sp, #0x1c
  40cb40: 681b         	ldr	r3, [r3]
  40cb42: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  40cb46: 1c5a         	adds	r2, r3, #0x1
  40cb48: ab07         	add	r3, sp, #0x1c
  40cb4a: 681b         	ldr	r3, [r3]
  40cb4c: f8c3 2180    	str.w	r2, [r3, #0x180]
  40cb50: ab07         	add	r3, sp, #0x1c
  40cb52: 681b         	ldr	r3, [r3]
  40cb54: f04f 0200    	mov.w	r2, #0x0
  40cb58: f8c3 2188    	str.w	r2, [r3, #0x188]
  40cb5c: ab07         	add	r3, sp, #0x1c
  40cb5e: 681b         	ldr	r3, [r3]
  40cb60: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  40cb64: f50d 6380    	add.w	r3, sp, #0x400
  40cb68: 4618         	mov	r0, r3
  40cb6a: f37d fc43    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37d886
  40cb6e: f50d 6282    	add.w	r2, sp, #0x410
  40cb72: f50d 6380    	add.w	r3, sp, #0x400
  40cb76: 4610         	mov	r0, r2
  40cb78: 4ab6         	ldr	r2, [pc, #0x2d8]        @ 0x40ce54 <TrainingStage::doLesson(float)+0x2b7c>
  40cb7a: 447a         	add	r2, pc
  40cb7c: 4611         	mov	r1, r2
  40cb7e: 461a         	mov	r2, r3
  40cb80: f3a9 ff6e    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3a9edc
  40cb84: 2000         	movs	r0, #0x0
  40cb86: 2100         	movs	r1, #0x0
  40cb88: 22ff         	movs	r2, #0xff
  40cb8a: f7fb fc65    	bl	0x408458 <Tracer::checkCollision()+0x3cc> @ imm = #-0x4736
  40cb8e: 4602         	mov	r2, r0
  40cb90: ab19         	add	r3, sp, #0x64
  40cb92: 4611         	mov	r1, r2
  40cb94: 7019         	strb	r1, [r3]
  40cb96: f3c2 2107    	ubfx	r1, r2, #0x8, #0x8
  40cb9a: 7059         	strb	r1, [r3, #0x1]
  40cb9c: f3c2 4207    	ubfx	r2, r2, #0x10, #0x8
  40cba0: 709a         	strb	r2, [r3, #0x2]
  40cba2: f50d 6282    	add.w	r2, sp, #0x410
  40cba6: ab19         	add	r3, sp, #0x64
  40cba8: 4628         	mov	r0, r5
  40cbaa: 4611         	mov	r1, r2
  40cbac: 681a         	ldr	r2, [r3]
  40cbae: 2306         	movs	r3, #0x6
  40cbb0: f730 fb86    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xcf8f4
  40cbb4: f50d 6382    	add.w	r3, sp, #0x410
  40cbb8: 4618         	mov	r0, r3
  40cbba: f3a8 feab    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a8d56
  40cbbe: f50d 6380    	add.w	r3, sp, #0x400
  40cbc2: 4618         	mov	r0, r3
  40cbc4: f37d fc1a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37d834
  40cbc8: 4b9e         	ldr	r3, [pc, #0x278]        @ 0x40ce44 <TrainingStage::doLesson(float)+0x2b6c>
  40cbca: 58e3         	ldr	r3, [r4, r3]
  40cbcc: 681b         	ldr	r3, [r3]
  40cbce: 4618         	mov	r0, r3
  40cbd0: 2142         	movs	r1, #0x42
  40cbd2: 2201         	movs	r2, #0x1
  40cbd4: f7eb f8b4    	bl	0x3f7d40 <Sound::playSoundWithVoice(int, int)> @ imm = #-0x14e98
  40cbd8: ab07         	add	r3, sp, #0x1c
  40cbda: 681b         	ldr	r3, [r3]
  40cbdc: f8d3 51a4    	ldr.w	r5, [r3, #0x1a4]
  40cbe0: 4b99         	ldr	r3, [pc, #0x264]        @ 0x40ce48 <TrainingStage::doLesson(float)+0x2b70>
  40cbe2: 58e3         	ldr	r3, [r4, r3]
  40cbe4: 681b         	ldr	r3, [r3]
  40cbe6: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  40cbea: ed93 6b0a    	vldr	d6, [r3, #40]
  40cbee: ed9f 7b90    	vldr	d7, [pc, #576]          @ 0x40ce30 <TrainingStage::doLesson(float)+0x2b58>
  40cbf2: ee36 6b47    	vsub.f64	d6, d6, d7
  40cbf6: 4b94         	ldr	r3, [pc, #0x250]        @ 0x40ce48 <TrainingStage::doLesson(float)+0x2b70>
  40cbf8: 58e3         	ldr	r3, [r4, r3]
  40cbfa: 681b         	ldr	r3, [r3]
  40cbfc: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  40cc00: ed93 5b0c    	vldr	d5, [r3, #48]
  40cc04: ed9f 7b8c    	vldr	d7, [pc, #560]          @ 0x40ce38 <TrainingStage::doLesson(float)+0x2b60>
  40cc08: ee35 7b07    	vadd.f64	d7, d5, d7
  40cc0c: ab5c         	add	r3, sp, #0x170
  40cc0e: 4618         	mov	r0, r3
  40cc10: eeb0 0b46    	vmov.f64	d0, d6
  40cc14: eeb0 1b47    	vmov.f64	d1, d7
  40cc18: f7fb fc5c    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x4748
  40cc1c: ab5c         	add	r3, sp, #0x170
  40cc1e: 466a         	mov	r2, sp
  40cc20: f103 0108    	add.w	r1, r3, #0x8
  40cc24: c903         	ldm	r1, {r0, r1}
  40cc26: e882 0003    	stm.w	r2, {r0, r1}
  40cc2a: cb0c         	ldm	r3, {r2, r3}
  40cc2c: 4628         	mov	r0, r5
  40cc2e: f70d fd8b    	bl	0x31a748 <EnemyManager::addHawkDrone(cpVect)> @ imm = #-0xf24ea
  40cc32: 4603         	mov	r3, r0
  40cc34: 2204         	movs	r2, #0x4
  40cc36: f8c3 215c    	str.w	r2, [r3, #0x15c]
  40cc3a: ab07         	add	r3, sp, #0x1c
  40cc3c: 681b         	ldr	r3, [r3]
  40cc3e: f8d3 51a4    	ldr.w	r5, [r3, #0x1a4]
  40cc42: 4b81         	ldr	r3, [pc, #0x204]        @ 0x40ce48 <TrainingStage::doLesson(float)+0x2b70>
  40cc44: 58e3         	ldr	r3, [r4, r3]
  40cc46: 681b         	ldr	r3, [r3]
  40cc48: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  40cc4c: ed93 6b0a    	vldr	d6, [r3, #40]
  40cc50: 4b7d         	ldr	r3, [pc, #0x1f4]        @ 0x40ce48 <TrainingStage::doLesson(float)+0x2b70>
  40cc52: 58e3         	ldr	r3, [r4, r3]
  40cc54: 681b         	ldr	r3, [r3]
  40cc56: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  40cc5a: ed93 5b0c    	vldr	d5, [r3, #48]
  40cc5e: ed9f 7b76    	vldr	d7, [pc, #472]          @ 0x40ce38 <TrainingStage::doLesson(float)+0x2b60>
  40cc62: ee35 7b07    	vadd.f64	d7, d5, d7
  40cc66: ab60         	add	r3, sp, #0x180
  40cc68: 4618         	mov	r0, r3
  40cc6a: eeb0 0b46    	vmov.f64	d0, d6
  40cc6e: eeb0 1b47    	vmov.f64	d1, d7
  40cc72: f7fb fc2f    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x47a2
  40cc76: ab60         	add	r3, sp, #0x180
  40cc78: 466a         	mov	r2, sp
  40cc7a: f103 0108    	add.w	r1, r3, #0x8
  40cc7e: c903         	ldm	r1, {r0, r1}
  40cc80: e882 0003    	stm.w	r2, {r0, r1}
  40cc84: cb0c         	ldm	r3, {r2, r3}
  40cc86: 4628         	mov	r0, r5
  40cc88: f70d fd5e    	bl	0x31a748 <EnemyManager::addHawkDrone(cpVect)> @ imm = #-0xf2544
  40cc8c: 4603         	mov	r3, r0
  40cc8e: 2204         	movs	r2, #0x4
  40cc90: f8c3 215c    	str.w	r2, [r3, #0x15c]
  40cc94: ab07         	add	r3, sp, #0x1c
  40cc96: 681b         	ldr	r3, [r3]
  40cc98: f8d3 51a4    	ldr.w	r5, [r3, #0x1a4]
  40cc9c: 4b6a         	ldr	r3, [pc, #0x1a8]        @ 0x40ce48 <TrainingStage::doLesson(float)+0x2b70>
  40cc9e: 58e3         	ldr	r3, [r4, r3]
  40cca0: 681b         	ldr	r3, [r3]
  40cca2: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  40cca6: ed93 6b0a    	vldr	d6, [r3, #40]
  40ccaa: ed9f 7b61    	vldr	d7, [pc, #388]          @ 0x40ce30 <TrainingStage::doLesson(float)+0x2b58>
  40ccae: ee36 6b07    	vadd.f64	d6, d6, d7
  40ccb2: 4b65         	ldr	r3, [pc, #0x194]        @ 0x40ce48 <TrainingStage::doLesson(float)+0x2b70>
  40ccb4: 58e3         	ldr	r3, [r4, r3]
  40ccb6: 681b         	ldr	r3, [r3]
  40ccb8: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  40ccbc: ed93 5b0c    	vldr	d5, [r3, #48]
  40ccc0: ed9f 7b5d    	vldr	d7, [pc, #372]          @ 0x40ce38 <TrainingStage::doLesson(float)+0x2b60>
  40ccc4: ee35 7b07    	vadd.f64	d7, d5, d7
  40ccc8: ab64         	add	r3, sp, #0x190
  40ccca: 4618         	mov	r0, r3
  40cccc: eeb0 0b46    	vmov.f64	d0, d6
  40ccd0: eeb0 1b47    	vmov.f64	d1, d7
  40ccd4: f7fb fbfe    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x4804
  40ccd8: ab64         	add	r3, sp, #0x190
  40ccda: 466a         	mov	r2, sp
  40ccdc: f103 0108    	add.w	r1, r3, #0x8
  40cce0: c903         	ldm	r1, {r0, r1}
  40cce2: e882 0003    	stm.w	r2, {r0, r1}
  40cce6: cb0c         	ldm	r3, {r2, r3}
  40cce8: 4628         	mov	r0, r5
  40ccea: f70d fd2d    	bl	0x31a748 <EnemyManager::addHawkDrone(cpVect)> @ imm = #-0xf25a6
  40ccee: 4603         	mov	r3, r0
  40ccf0: 2204         	movs	r2, #0x4
  40ccf2: f8c3 215c    	str.w	r2, [r3, #0x15c]
  40ccf6: e097         	b	0x40ce28 <TrainingStage::doLesson(float)+0x2b50> @ imm = #0x12e
  40ccf8: ab07         	add	r3, sp, #0x1c
  40ccfa: 681b         	ldr	r3, [r3]
  40ccfc: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  40cd00: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  40cd04: f893 3130    	ldrb.w	r3, [r3, #0x130]
  40cd08: f083 0301    	eor	r3, r3, #0x1
  40cd0c: b2db         	uxtb	r3, r3
  40cd0e: 2b00         	cmp	r3, #0x0
  40cd10: f000 808a    	beq.w	0x40ce28 <TrainingStage::doLesson(float)+0x2b50> @ imm = #0x114
  40cd14: ab07         	add	r3, sp, #0x1c
  40cd16: 681b         	ldr	r3, [r3]
  40cd18: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  40cd1c: 681b         	ldr	r3, [r3]
  40cd1e: 3390         	adds	r3, #0x90
  40cd20: 681b         	ldr	r3, [r3]
  40cd22: aa07         	add	r2, sp, #0x1c
  40cd24: 6812         	ldr	r2, [r2]
  40cd26: f8d2 2174    	ldr.w	r2, [r2, #0x174]
  40cd2a: 4610         	mov	r0, r2
  40cd2c: 2101         	movs	r1, #0x1
  40cd2e: 4798         	blx	r3
  40cd30: ab07         	add	r3, sp, #0x1c
  40cd32: 681b         	ldr	r3, [r3]
  40cd34: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  40cd38: 681b         	ldr	r3, [r3]
  40cd3a: 3398         	adds	r3, #0x98
  40cd3c: 681b         	ldr	r3, [r3]
  40cd3e: aa07         	add	r2, sp, #0x1c
  40cd40: 6812         	ldr	r2, [r2]
  40cd42: f8d2 2174    	ldr.w	r2, [r2, #0x174]
  40cd46: 4610         	mov	r0, r2
  40cd48: f04f 0100    	mov.w	r1, #0x0
  40cd4c: f2c4 21b4    	movt	r1, #0x42b4
  40cd50: 4798         	blx	r3
  40cd52: ab07         	add	r3, sp, #0x1c
  40cd54: 681b         	ldr	r3, [r3]
  40cd56: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  40cd5a: 681b         	ldr	r3, [r3]
  40cd5c: 334c         	adds	r3, #0x4c
  40cd5e: 681c         	ldr	r4, [r3]
  40cd60: ab07         	add	r3, sp, #0x1c
  40cd62: 681b         	ldr	r3, [r3]
  40cd64: f8d3 516c    	ldr.w	r5, [r3, #0x16c]
  40cd68: ab07         	add	r3, sp, #0x1c
  40cd6a: 681b         	ldr	r3, [r3]
  40cd6c: ed93 7a62    	vldr	s14, [r3, #392]
  40cd70: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  40cd74: ee67 7a27    	vmul.f32	s15, s14, s15
  40cd78: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  40cd7c: ec51 0b17    	vmov	r0, r1, d7
  40cd80: f6c9 e8c2    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x136e7c
  40cd84: ec41 0b16    	vmov	d6, r0, r1
  40cd88: eeb2 7b04    	vmov.f64	d7, #1.000000e+01
  40cd8c: ee26 7b07    	vmul.f64	d7, d6, d7
  40cd90: eef7 7bc7    	vcvt.f32.f64	s15, d7
  40cd94: f50d 6382    	add.w	r3, sp, #0x410
  40cd98: 4618         	mov	r0, r3
  40cd9a: ee17 1a90    	vmov	r1, s15
  40cd9e: f04f 0200    	mov.w	r2, #0x0
  40cda2: f185 ffa5    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x185f4a
  40cda6: f50d 6382    	add.w	r3, sp, #0x410
  40cdaa: 4628         	mov	r0, r5
  40cdac: 4619         	mov	r1, r3
  40cdae: 47a0         	blx	r4
  40cdb0: ab07         	add	r3, sp, #0x1c
  40cdb2: 681b         	ldr	r3, [r3]
  40cdb4: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  40cdb8: 681b         	ldr	r3, [r3]
  40cdba: 334c         	adds	r3, #0x4c
  40cdbc: 681c         	ldr	r4, [r3]
  40cdbe: ab07         	add	r3, sp, #0x1c
  40cdc0: 681b         	ldr	r3, [r3]
  40cdc2: f8d3 5174    	ldr.w	r5, [r3, #0x174]
  40cdc6: ab07         	add	r3, sp, #0x1c
  40cdc8: 681b         	ldr	r3, [r3]
  40cdca: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  40cdce: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  40cdd2: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  40cdd6: 681b         	ldr	r3, [r3]
  40cdd8: 3350         	adds	r3, #0x50
  40cdda: 681b         	ldr	r3, [r3]
  40cddc: aa07         	add	r2, sp, #0x1c
  40cdde: 6812         	ldr	r2, [r2]
  40cde0: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  40cde4: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  40cde8: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  40cdec: 4610         	mov	r0, r2
  40cdee: 4798         	blx	r3
  40cdf0: 4606         	mov	r6, r0
  40cdf2: f50d 6380    	add.w	r3, sp, #0x400
  40cdf6: 4618         	mov	r0, r3
  40cdf8: f04f 0100    	mov.w	r1, #0x0
  40cdfc: f2cc 1170    	movt	r1, #0xc170
  40ce00: f04f 0200    	mov.w	r2, #0x0
  40ce04: f2c4 228c    	movt	r2, #0x428c
  40ce08: f185 ff72    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x185ee4
  40ce0c: f50d 6282    	add.w	r2, sp, #0x410
  40ce10: f50d 6380    	add.w	r3, sp, #0x400
  40ce14: 4610         	mov	r0, r2
  40ce16: 4631         	mov	r1, r6
  40ce18: 461a         	mov	r2, r3
  40ce1a: f7fb fb4b    	bl	0x4084b4 <Tracer::checkCollision()+0x428> @ imm = #-0x496a
  40ce1e: f50d 6382    	add.w	r3, sp, #0x410
  40ce22: 4628         	mov	r0, r5
  40ce24: 4619         	mov	r1, r3
  40ce26: 47a0         	blx	r4
  40ce28: f005 b874    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x50e8
  40ce2c: f3af 8000    	nop.w
  40ce30: 0000         	movs	r0, r0
  40ce32: 0000         	movs	r0, r0
  40ce34: c000         	<unknown>
  40ce36: 4062         	eors	r2, r4
  40ce38: 0000         	movs	r0, r0
  40ce3a: 0000         	movs	r0, r0
  40ce3c: 0000         	movs	r0, r0
  40ce3e: 4069         	eors	r1, r5
  40ce40: e4d4         	b	0x40c7ec <TrainingStage::doLesson(float)+0x2514> @ imm = #-0x658
  40ce42: 003c         	movs	r4, r7
  40ce44: d730         	bvc	0x40cea8 <TrainingStage::doLesson(float)+0x2bd0> @ imm = #0x60
  40ce46: ffff d784    	<unknown>
  40ce4a: ffff e3d6    	vrsra.u64	q15, q3, #0x1
  40ce4e: 003c         	movs	r4, r7
  40ce50: e1ca         	b	0x40d1e8 <TrainingStage::doLesson(float)+0x2f10> @ imm = #0x394
  40ce52: 003c         	movs	r4, r7
  40ce54: dfd2         	svc	#0xd2
  40ce56: 003c         	movs	r4, r7
  40ce58: ab07         	add	r3, sp, #0x1c
  40ce5a: 681b         	ldr	r3, [r3]
  40ce5c: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40ce60: 681b         	ldr	r3, [r3]
  40ce62: f503 730e    	add.w	r3, r3, #0x238
  40ce66: 681b         	ldr	r3, [r3]
  40ce68: aa07         	add	r2, sp, #0x1c
  40ce6a: 6812         	ldr	r2, [r2]
  40ce6c: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40ce70: 4610         	mov	r0, r2
  40ce72: f04f 0100    	mov.w	r1, #0x0
  40ce76: f2c4 3134    	movt	r1, #0x4334
  40ce7a: 4798         	blx	r3
  40ce7c: f8df 3b48    	ldr.w	r3, [pc, #0xb48]        @ 0x40d9c8 <TrainingStage::doLesson(float)+0x36f0>
  40ce80: 58e3         	ldr	r3, [r4, r3]
  40ce82: 681b         	ldr	r3, [r3]
  40ce84: 681b         	ldr	r3, [r3]
  40ce86: f503 7329    	add.w	r3, r3, #0x2a4
  40ce8a: 681b         	ldr	r3, [r3]
  40ce8c: f8df 2b38    	ldr.w	r2, [pc, #0xb38]        @ 0x40d9c8 <TrainingStage::doLesson(float)+0x36f0>
  40ce90: 58a2         	ldr	r2, [r4, r2]
  40ce92: 6812         	ldr	r2, [r2]
  40ce94: 4610         	mov	r0, r2
  40ce96: f04f 0100    	mov.w	r1, #0x0
  40ce9a: 4798         	blx	r3
  40ce9c: f8df 3b28    	ldr.w	r3, [pc, #0xb28]        @ 0x40d9c8 <TrainingStage::doLesson(float)+0x36f0>
  40cea0: 58e3         	ldr	r3, [r4, r3]
  40cea2: 681b         	ldr	r3, [r3]
  40cea4: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  40cea8: 681b         	ldr	r3, [r3]
  40ceaa: f503 731e    	add.w	r3, r3, #0x278
  40ceae: 681b         	ldr	r3, [r3]
  40ceb0: f8df 2b14    	ldr.w	r2, [pc, #0xb14]        @ 0x40d9c8 <TrainingStage::doLesson(float)+0x36f0>
  40ceb4: 58a2         	ldr	r2, [r4, r2]
  40ceb6: 6812         	ldr	r2, [r2]
  40ceb8: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  40cebc: 4610         	mov	r0, r2
  40cebe: 21c8         	movs	r1, #0xc8
  40cec0: 4798         	blx	r3
  40cec2: f8df 3b04    	ldr.w	r3, [pc, #0xb04]        @ 0x40d9c8 <TrainingStage::doLesson(float)+0x36f0>
  40cec6: 58e3         	ldr	r3, [r4, r3]
  40cec8: 681b         	ldr	r3, [r3]
  40ceca: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  40cece: 681b         	ldr	r3, [r3]
  40ced0: f503 731e    	add.w	r3, r3, #0x278
  40ced4: 681b         	ldr	r3, [r3]
  40ced6: f8df 2af0    	ldr.w	r2, [pc, #0xaf0]        @ 0x40d9c8 <TrainingStage::doLesson(float)+0x36f0>
  40ceda: 58a2         	ldr	r2, [r4, r2]
  40cedc: 6812         	ldr	r2, [r2]
  40cede: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  40cee2: 4610         	mov	r0, r2
  40cee4: 21c8         	movs	r1, #0xc8
  40cee6: 4798         	blx	r3
  40cee8: ab07         	add	r3, sp, #0x1c
  40ceea: 681b         	ldr	r3, [r3]
  40ceec: ed93 7a62    	vldr	s14, [r3, #392]
  40cef0: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  40cef4: eeb4 7ae7    	vcmpe.f32	s14, s15
  40cef8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40cefc: d505         	bpl	0x40cf0a <TrainingStage::doLesson(float)+0x2c32> @ imm = #0xa
  40cefe: aa07         	add	r2, sp, #0x1c
  40cf00: ab06         	add	r3, sp, #0x18
  40cf02: 6810         	ldr	r0, [r2]
  40cf04: 6819         	ldr	r1, [r3]
  40cf06: f7fc ff93    	bl	0x409e30 <TrainingStage::headChatter(float)> @ imm = #-0x30da
  40cf0a: ab07         	add	r3, sp, #0x1c
  40cf0c: 681b         	ldr	r3, [r3]
  40cf0e: f8d3 31a4    	ldr.w	r3, [r3, #0x1a4]
  40cf12: 695b         	ldr	r3, [r3, #0x14]
  40cf14: 4618         	mov	r0, r3
  40cf16: f186 fea9    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x186d52
  40cf1a: 4603         	mov	r3, r0
  40cf1c: 2b00         	cmp	r3, #0x0
  40cf1e: d10c         	bne	0x40cf3a <TrainingStage::doLesson(float)+0x2c62> @ imm = #0x18
  40cf20: ab07         	add	r3, sp, #0x1c
  40cf22: 681b         	ldr	r3, [r3]
  40cf24: ed93 7a62    	vldr	s14, [r3, #392]
  40cf28: eef1 7a08    	vmov.f32	s15, #6.000000e+00
  40cf2c: eeb4 7ae7    	vcmpe.f32	s14, s15
  40cf30: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40cf34: dd01         	ble	0x40cf3a <TrainingStage::doLesson(float)+0x2c62> @ imm = #0x2
  40cf36: 2301         	movs	r3, #0x1
  40cf38: e000         	b	0x40cf3c <TrainingStage::doLesson(float)+0x2c64> @ imm = #0x0
  40cf3a: 2300         	movs	r3, #0x0
  40cf3c: 2b00         	cmp	r3, #0x0
  40cf3e: d00e         	beq	0x40cf5e <TrainingStage::doLesson(float)+0x2c86> @ imm = #0x1c
  40cf40: ab07         	add	r3, sp, #0x1c
  40cf42: 681b         	ldr	r3, [r3]
  40cf44: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  40cf48: 1c5a         	adds	r2, r3, #0x1
  40cf4a: ab07         	add	r3, sp, #0x1c
  40cf4c: 681b         	ldr	r3, [r3]
  40cf4e: f8c3 2180    	str.w	r2, [r3, #0x180]
  40cf52: ab07         	add	r3, sp, #0x1c
  40cf54: 681b         	ldr	r3, [r3]
  40cf56: f04f 0200    	mov.w	r2, #0x0
  40cf5a: f8c3 2188    	str.w	r2, [r3, #0x188]
  40cf5e: f004 bfd9    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x4fb2
  40cf62: ab07         	add	r3, sp, #0x1c
  40cf64: 681b         	ldr	r3, [r3]
  40cf66: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40cf6a: 681b         	ldr	r3, [r3]
  40cf6c: f503 730e    	add.w	r3, r3, #0x238
  40cf70: 681b         	ldr	r3, [r3]
  40cf72: aa07         	add	r2, sp, #0x1c
  40cf74: 6812         	ldr	r2, [r2]
  40cf76: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40cf7a: 4610         	mov	r0, r2
  40cf7c: f04f 0100    	mov.w	r1, #0x0
  40cf80: f2c4 3134    	movt	r1, #0x4334
  40cf84: 4798         	blx	r3
  40cf86: f8df 3a40    	ldr.w	r3, [pc, #0xa40]        @ 0x40d9c8 <TrainingStage::doLesson(float)+0x36f0>
  40cf8a: 58e3         	ldr	r3, [r4, r3]
  40cf8c: 681b         	ldr	r3, [r3]
  40cf8e: 681b         	ldr	r3, [r3]
  40cf90: f503 7329    	add.w	r3, r3, #0x2a4
  40cf94: 681b         	ldr	r3, [r3]
  40cf96: f8df 2a30    	ldr.w	r2, [pc, #0xa30]        @ 0x40d9c8 <TrainingStage::doLesson(float)+0x36f0>
  40cf9a: 58a2         	ldr	r2, [r4, r2]
  40cf9c: 6812         	ldr	r2, [r2]
  40cf9e: 4610         	mov	r0, r2
  40cfa0: f04f 0100    	mov.w	r1, #0x0
  40cfa4: 4798         	blx	r3
  40cfa6: ab07         	add	r3, sp, #0x1c
  40cfa8: 681b         	ldr	r3, [r3]
  40cfaa: f8d3 31a4    	ldr.w	r3, [r3, #0x1a4]
  40cfae: 695b         	ldr	r3, [r3, #0x14]
  40cfb0: 4618         	mov	r0, r3
  40cfb2: f186 fe5b    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x186cb6
  40cfb6: 4603         	mov	r3, r0
  40cfb8: 2b00         	cmp	r3, #0x0
  40cfba: bf14         	ite	ne
  40cfbc: 2300         	movne	r3, #0x0
  40cfbe: 2301         	moveq	r3, #0x1
  40cfc0: b2db         	uxtb	r3, r3
  40cfc2: 2b00         	cmp	r3, #0x0
  40cfc4: d04e         	beq	0x40d064 <TrainingStage::doLesson(float)+0x2d8c> @ imm = #0x9c
  40cfc6: ab07         	add	r3, sp, #0x1c
  40cfc8: 681b         	ldr	r3, [r3]
  40cfca: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  40cfce: f50d 6380    	add.w	r3, sp, #0x400
  40cfd2: 4618         	mov	r0, r3
  40cfd4: f37d fa0e    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37d41c
  40cfd8: f50d 6282    	add.w	r2, sp, #0x410
  40cfdc: f50d 6380    	add.w	r3, sp, #0x400
  40cfe0: 4610         	mov	r0, r2
  40cfe2: f8df 29e8    	ldr.w	r2, [pc, #0x9e8]        @ 0x40d9cc <TrainingStage::doLesson(float)+0x36f4>
  40cfe6: 447a         	add	r2, pc
  40cfe8: 4611         	mov	r1, r2
  40cfea: 461a         	mov	r2, r3
  40cfec: f3a9 fd38    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3a9a70
  40cff0: 2000         	movs	r0, #0x0
  40cff2: 2100         	movs	r1, #0x0
  40cff4: 22ff         	movs	r2, #0xff
  40cff6: f7fb fa2f    	bl	0x408458 <Tracer::checkCollision()+0x3cc> @ imm = #-0x4ba2
  40cffa: 4602         	mov	r2, r0
  40cffc: ab1a         	add	r3, sp, #0x68
  40cffe: 4611         	mov	r1, r2
  40d000: 7019         	strb	r1, [r3]
  40d002: f3c2 2107    	ubfx	r1, r2, #0x8, #0x8
  40d006: 7059         	strb	r1, [r3, #0x1]
  40d008: f3c2 4207    	ubfx	r2, r2, #0x10, #0x8
  40d00c: 709a         	strb	r2, [r3, #0x2]
  40d00e: f50d 6282    	add.w	r2, sp, #0x410
  40d012: ab1a         	add	r3, sp, #0x68
  40d014: 4628         	mov	r0, r5
  40d016: 4611         	mov	r1, r2
  40d018: 681a         	ldr	r2, [r3]
  40d01a: 2303         	movs	r3, #0x3
  40d01c: f730 f950    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xcfd60
  40d020: f50d 6382    	add.w	r3, sp, #0x410
  40d024: 4618         	mov	r0, r3
  40d026: f3a8 fc75    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a88ea
  40d02a: f50d 6380    	add.w	r3, sp, #0x400
  40d02e: 4618         	mov	r0, r3
  40d030: f37d f9e4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37d3c8
  40d034: f8df 3998    	ldr.w	r3, [pc, #0x998]        @ 0x40d9d0 <TrainingStage::doLesson(float)+0x36f8>
  40d038: 58e3         	ldr	r3, [r4, r3]
  40d03a: 681b         	ldr	r3, [r3]
  40d03c: 4618         	mov	r0, r3
  40d03e: 215b         	movs	r1, #0x5b
  40d040: 2201         	movs	r2, #0x1
  40d042: f7ea fe7d    	bl	0x3f7d40 <Sound::playSoundWithVoice(int, int)> @ imm = #-0x15306
  40d046: ab07         	add	r3, sp, #0x1c
  40d048: 681b         	ldr	r3, [r3]
  40d04a: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  40d04e: 1c5a         	adds	r2, r3, #0x1
  40d050: ab07         	add	r3, sp, #0x1c
  40d052: 681b         	ldr	r3, [r3]
  40d054: f8c3 2180    	str.w	r2, [r3, #0x180]
  40d058: ab07         	add	r3, sp, #0x1c
  40d05a: 681b         	ldr	r3, [r3]
  40d05c: f04f 0200    	mov.w	r2, #0x0
  40d060: f8c3 2188    	str.w	r2, [r3, #0x188]
  40d064: f004 bf56    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x4eac
  40d068: ab07         	add	r3, sp, #0x1c
  40d06a: 681b         	ldr	r3, [r3]
  40d06c: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40d070: 681b         	ldr	r3, [r3]
  40d072: f503 730e    	add.w	r3, r3, #0x238
  40d076: 681b         	ldr	r3, [r3]
  40d078: aa07         	add	r2, sp, #0x1c
  40d07a: 6812         	ldr	r2, [r2]
  40d07c: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40d080: 4610         	mov	r0, r2
  40d082: f04f 0100    	mov.w	r1, #0x0
  40d086: f2c4 3134    	movt	r1, #0x4334
  40d08a: 4798         	blx	r3
  40d08c: f8df 3938    	ldr.w	r3, [pc, #0x938]        @ 0x40d9c8 <TrainingStage::doLesson(float)+0x36f0>
  40d090: 58e3         	ldr	r3, [r4, r3]
  40d092: 681b         	ldr	r3, [r3]
  40d094: 681b         	ldr	r3, [r3]
  40d096: f503 7329    	add.w	r3, r3, #0x2a4
  40d09a: 681b         	ldr	r3, [r3]
  40d09c: f8df 2928    	ldr.w	r2, [pc, #0x928]        @ 0x40d9c8 <TrainingStage::doLesson(float)+0x36f0>
  40d0a0: 58a2         	ldr	r2, [r4, r2]
  40d0a2: 6812         	ldr	r2, [r2]
  40d0a4: 4610         	mov	r0, r2
  40d0a6: f04f 0100    	mov.w	r1, #0x0
  40d0aa: 4798         	blx	r3
  40d0ac: ab07         	add	r3, sp, #0x1c
  40d0ae: 681b         	ldr	r3, [r3]
  40d0b0: ed93 7a62    	vldr	s14, [r3, #392]
  40d0b4: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  40d0b8: eeb4 7ae7    	vcmpe.f32	s14, s15
  40d0bc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40d0c0: d505         	bpl	0x40d0ce <TrainingStage::doLesson(float)+0x2df6> @ imm = #0xa
  40d0c2: aa07         	add	r2, sp, #0x1c
  40d0c4: ab06         	add	r3, sp, #0x18
  40d0c6: 6810         	ldr	r0, [r2]
  40d0c8: 6819         	ldr	r1, [r3]
  40d0ca: f7fc feb1    	bl	0x409e30 <TrainingStage::headChatter(float)> @ imm = #-0x329e
  40d0ce: ab07         	add	r3, sp, #0x1c
  40d0d0: 681b         	ldr	r3, [r3]
  40d0d2: ed93 7a62    	vldr	s14, [r3, #392]
  40d0d6: eef1 7a00    	vmov.f32	s15, #4.000000e+00
  40d0da: eeb4 7ae7    	vcmpe.f32	s14, s15
  40d0de: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40d0e2: dc01         	bgt	0x40d0e8 <TrainingStage::doLesson(float)+0x2e10> @ imm = #0x2
  40d0e4: f004 bf16    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x4e2c
  40d0e8: ab07         	add	r3, sp, #0x1c
  40d0ea: 681b         	ldr	r3, [r3]
  40d0ec: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  40d0f0: 1c5a         	adds	r2, r3, #0x1
  40d0f2: ab07         	add	r3, sp, #0x1c
  40d0f4: 681b         	ldr	r3, [r3]
  40d0f6: f8c3 2180    	str.w	r2, [r3, #0x180]
  40d0fa: ab07         	add	r3, sp, #0x1c
  40d0fc: 681b         	ldr	r3, [r3]
  40d0fe: f04f 0200    	mov.w	r2, #0x0
  40d102: f8c3 2188    	str.w	r2, [r3, #0x188]
  40d106: ab07         	add	r3, sp, #0x1c
  40d108: 681b         	ldr	r3, [r3]
  40d10a: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  40d10e: f50d 6380    	add.w	r3, sp, #0x400
  40d112: 4618         	mov	r0, r3
  40d114: f37d f96e    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37d2dc
  40d118: f50d 6282    	add.w	r2, sp, #0x410
  40d11c: f50d 6380    	add.w	r3, sp, #0x400
  40d120: 4610         	mov	r0, r2
  40d122: f8df 28b0    	ldr.w	r2, [pc, #0x8b0]        @ 0x40d9d4 <TrainingStage::doLesson(float)+0x36fc>
  40d126: 447a         	add	r2, pc
  40d128: 4611         	mov	r1, r2
  40d12a: 461a         	mov	r2, r3
  40d12c: f3a9 fc98    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3a9930
  40d130: 2000         	movs	r0, #0x0
  40d132: 2100         	movs	r1, #0x0
  40d134: 22ff         	movs	r2, #0xff
  40d136: f7fb f98f    	bl	0x408458 <Tracer::checkCollision()+0x3cc> @ imm = #-0x4ce2
  40d13a: 4602         	mov	r2, r0
  40d13c: ab1b         	add	r3, sp, #0x6c
  40d13e: 4611         	mov	r1, r2
  40d140: 7019         	strb	r1, [r3]
  40d142: f3c2 2107    	ubfx	r1, r2, #0x8, #0x8
  40d146: 7059         	strb	r1, [r3, #0x1]
  40d148: f3c2 4207    	ubfx	r2, r2, #0x10, #0x8
  40d14c: 709a         	strb	r2, [r3, #0x2]
  40d14e: f50d 6282    	add.w	r2, sp, #0x410
  40d152: ab1b         	add	r3, sp, #0x6c
  40d154: 4628         	mov	r0, r5
  40d156: 4611         	mov	r1, r2
  40d158: 681a         	ldr	r2, [r3]
  40d15a: 2304         	movs	r3, #0x4
  40d15c: f730 f8b0    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xcfea0
  40d160: f50d 6382    	add.w	r3, sp, #0x410
  40d164: 4618         	mov	r0, r3
  40d166: f3a8 fbd5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a87aa
  40d16a: f50d 6380    	add.w	r3, sp, #0x400
  40d16e: 4618         	mov	r0, r3
  40d170: f37d f944    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37d288
  40d174: f8df 3858    	ldr.w	r3, [pc, #0x858]        @ 0x40d9d0 <TrainingStage::doLesson(float)+0x36f8>
  40d178: 58e3         	ldr	r3, [r4, r3]
  40d17a: 681b         	ldr	r3, [r3]
  40d17c: 4618         	mov	r0, r3
  40d17e: 2144         	movs	r1, #0x44
  40d180: 2201         	movs	r2, #0x1
  40d182: f7ea fddd    	bl	0x3f7d40 <Sound::playSoundWithVoice(int, int)> @ imm = #-0x15446
  40d186: f00a fbfd    	bl	0x417984 <WeaponFactory::sharedWeaponFactory()> @ imm = #0xa7fa
  40d18a: 4603         	mov	r3, r0
  40d18c: 4618         	mov	r0, r3
  40d18e: 2102         	movs	r1, #0x2
  40d190: f00b fab4    	bl	0x4186fc <WeaponFactory::createWeaponFromAmmoType(ItemType)> @ imm = #0xb568
  40d194: 4602         	mov	r2, r0
  40d196: ab37         	add	r3, sp, #0xdc
  40d198: 601a         	str	r2, [r3]
  40d19a: ab37         	add	r3, sp, #0xdc
  40d19c: 681b         	ldr	r3, [r3]
  40d19e: 681b         	ldr	r3, [r3]
  40d1a0: f503 731e    	add.w	r3, r3, #0x278
  40d1a4: 681b         	ldr	r3, [r3]
  40d1a6: aa37         	add	r2, sp, #0xdc
  40d1a8: 6810         	ldr	r0, [r2]
  40d1aa: 2103         	movs	r1, #0x3
  40d1ac: 4798         	blx	r3
  40d1ae: f8df 3818    	ldr.w	r3, [pc, #0x818]        @ 0x40d9c8 <TrainingStage::doLesson(float)+0x36f0>
  40d1b2: 58e3         	ldr	r3, [r4, r3]
  40d1b4: 681b         	ldr	r3, [r3]
  40d1b6: 681b         	ldr	r3, [r3]
  40d1b8: f503 7308    	add.w	r3, r3, #0x220
  40d1bc: 681b         	ldr	r3, [r3]
  40d1be: f8df 2808    	ldr.w	r2, [pc, #0x808]        @ 0x40d9c8 <TrainingStage::doLesson(float)+0x36f0>
  40d1c2: 58a2         	ldr	r2, [r4, r2]
  40d1c4: 6811         	ldr	r1, [r2]
  40d1c6: aa37         	add	r2, sp, #0xdc
  40d1c8: 4608         	mov	r0, r1
  40d1ca: 6811         	ldr	r1, [r2]
  40d1cc: 4798         	blx	r3
  40d1ce: f004 bea1    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x4d42
  40d1d2: ab07         	add	r3, sp, #0x1c
  40d1d4: 681b         	ldr	r3, [r3]
  40d1d6: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40d1da: 681b         	ldr	r3, [r3]
  40d1dc: f503 730e    	add.w	r3, r3, #0x238
  40d1e0: 681b         	ldr	r3, [r3]
  40d1e2: aa07         	add	r2, sp, #0x1c
  40d1e4: 6812         	ldr	r2, [r2]
  40d1e6: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40d1ea: 4610         	mov	r0, r2
  40d1ec: f04f 0100    	mov.w	r1, #0x0
  40d1f0: f2c4 3134    	movt	r1, #0x4334
  40d1f4: 4798         	blx	r3
  40d1f6: f8df 37d0    	ldr.w	r3, [pc, #0x7d0]        @ 0x40d9c8 <TrainingStage::doLesson(float)+0x36f0>
  40d1fa: 58e3         	ldr	r3, [r4, r3]
  40d1fc: 681b         	ldr	r3, [r3]
  40d1fe: 681b         	ldr	r3, [r3]
  40d200: f503 7329    	add.w	r3, r3, #0x2a4
  40d204: 681b         	ldr	r3, [r3]
  40d206: f8df 27c0    	ldr.w	r2, [pc, #0x7c0]        @ 0x40d9c8 <TrainingStage::doLesson(float)+0x36f0>
  40d20a: 58a2         	ldr	r2, [r4, r2]
  40d20c: 6812         	ldr	r2, [r2]
  40d20e: 4610         	mov	r0, r2
  40d210: f04f 0100    	mov.w	r1, #0x0
  40d214: 4798         	blx	r3
  40d216: f8df 37b0    	ldr.w	r3, [pc, #0x7b0]        @ 0x40d9c8 <TrainingStage::doLesson(float)+0x36f0>
  40d21a: 58e3         	ldr	r3, [r4, r3]
  40d21c: 681b         	ldr	r3, [r3]
  40d21e: f8d3 2138    	ldr.w	r2, [r3, #0x138]
  40d222: f8df 37b4    	ldr.w	r3, [pc, #0x7b4]        @ 0x40d9d8 <TrainingStage::doLesson(float)+0x3700>
  40d226: 447b         	add	r3, pc
  40d228: ed93 6b00    	vldr	d6, [r3]
  40d22c: ed93 7b02    	vldr	d7, [r3, #8]
  40d230: 4610         	mov	r0, r2
  40d232: eeb0 0b46    	vmov.f64	d0, d6
  40d236: eeb0 1b47    	vmov.f64	d1, d7
  40d23a: f7fb fa05    	bl	0x408648 <Tracer::checkCollision()+0x5bc> @ imm = #-0x4bf6
  40d23e: f8df 3788    	ldr.w	r3, [pc, #0x788]        @ 0x40d9c8 <TrainingStage::doLesson(float)+0x36f0>
  40d242: 58e3         	ldr	r3, [r4, r3]
  40d244: 681b         	ldr	r3, [r3]
  40d246: f8d3 2138    	ldr.w	r2, [r3, #0x138]
  40d24a: f8df 3790    	ldr.w	r3, [pc, #0x790]        @ 0x40d9dc <TrainingStage::doLesson(float)+0x3704>
  40d24e: 447b         	add	r3, pc
  40d250: ed93 6b00    	vldr	d6, [r3]
  40d254: ed93 7b02    	vldr	d7, [r3, #8]
  40d258: 4610         	mov	r0, r2
  40d25a: eeb0 0b46    	vmov.f64	d0, d6
  40d25e: eeb0 1b47    	vmov.f64	d1, d7
  40d262: f7fb fa07    	bl	0x408674 <Tracer::checkCollision()+0x5e8> @ imm = #-0x4bf2
  40d266: ab07         	add	r3, sp, #0x1c
  40d268: 681b         	ldr	r3, [r3]
  40d26a: ed93 7a62    	vldr	s14, [r3, #392]
  40d26e: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  40d272: eeb4 7ae7    	vcmpe.f32	s14, s15
  40d276: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40d27a: d505         	bpl	0x40d288 <TrainingStage::doLesson(float)+0x2fb0> @ imm = #0xa
  40d27c: aa07         	add	r2, sp, #0x1c
  40d27e: ab06         	add	r3, sp, #0x18
  40d280: 6810         	ldr	r0, [r2]
  40d282: 6819         	ldr	r1, [r3]
  40d284: f7fc fdd4    	bl	0x409e30 <TrainingStage::headChatter(float)> @ imm = #-0x3458
  40d288: f8df 373c    	ldr.w	r3, [pc, #0x73c]        @ 0x40d9c8 <TrainingStage::doLesson(float)+0x36f0>
  40d28c: 58e3         	ldr	r3, [r4, r3]
  40d28e: 681b         	ldr	r3, [r3]
  40d290: 681b         	ldr	r3, [r3]
  40d292: f503 7336    	add.w	r3, r3, #0x2d8
  40d296: 681b         	ldr	r3, [r3]
  40d298: f8df 272c    	ldr.w	r2, [pc, #0x72c]        @ 0x40d9c8 <TrainingStage::doLesson(float)+0x36f0>
  40d29c: 58a2         	ldr	r2, [r4, r2]
  40d29e: 6812         	ldr	r2, [r2]
  40d2a0: 4610         	mov	r0, r2
  40d2a2: 4798         	blx	r3
  40d2a4: 4603         	mov	r3, r0
  40d2a6: 2b00         	cmp	r3, #0x0
  40d2a8: d10c         	bne	0x40d2c4 <TrainingStage::doLesson(float)+0x2fec> @ imm = #0x18
  40d2aa: ab07         	add	r3, sp, #0x1c
  40d2ac: 681b         	ldr	r3, [r3]
  40d2ae: ed93 7a62    	vldr	s14, [r3, #392]
  40d2b2: eef1 7a00    	vmov.f32	s15, #4.000000e+00
  40d2b6: eeb4 7ae7    	vcmpe.f32	s14, s15
  40d2ba: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40d2be: dd01         	ble	0x40d2c4 <TrainingStage::doLesson(float)+0x2fec> @ imm = #0x2
  40d2c0: 2301         	movs	r3, #0x1
  40d2c2: e000         	b	0x40d2c6 <TrainingStage::doLesson(float)+0x2fee> @ imm = #0x0
  40d2c4: 2300         	movs	r3, #0x0
  40d2c6: 2b00         	cmp	r3, #0x0
  40d2c8: d06d         	beq	0x40d3a6 <TrainingStage::doLesson(float)+0x30ce> @ imm = #0xda
  40d2ca: ab07         	add	r3, sp, #0x1c
  40d2cc: 681b         	ldr	r3, [r3]
  40d2ce: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  40d2d2: 1c5a         	adds	r2, r3, #0x1
  40d2d4: ab07         	add	r3, sp, #0x1c
  40d2d6: 681b         	ldr	r3, [r3]
  40d2d8: f8c3 2180    	str.w	r2, [r3, #0x180]
  40d2dc: ab07         	add	r3, sp, #0x1c
  40d2de: 681b         	ldr	r3, [r3]
  40d2e0: f04f 0200    	mov.w	r2, #0x0
  40d2e4: f8c3 2188    	str.w	r2, [r3, #0x188]
  40d2e8: ab07         	add	r3, sp, #0x1c
  40d2ea: 681b         	ldr	r3, [r3]
  40d2ec: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  40d2f0: 681b         	ldr	r3, [r3]
  40d2f2: 3390         	adds	r3, #0x90
  40d2f4: 681b         	ldr	r3, [r3]
  40d2f6: aa07         	add	r2, sp, #0x1c
  40d2f8: 6812         	ldr	r2, [r2]
  40d2fa: f8d2 2174    	ldr.w	r2, [r2, #0x174]
  40d2fe: 4610         	mov	r0, r2
  40d300: 2100         	movs	r1, #0x0
  40d302: 4798         	blx	r3
  40d304: ab07         	add	r3, sp, #0x1c
  40d306: 681b         	ldr	r3, [r3]
  40d308: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  40d30c: 681b         	ldr	r3, [r3]
  40d30e: 3338         	adds	r3, #0x38
  40d310: 681b         	ldr	r3, [r3]
  40d312: aa07         	add	r2, sp, #0x1c
  40d314: 6812         	ldr	r2, [r2]
  40d316: f8d2 216c    	ldr.w	r2, [r2, #0x16c]
  40d31a: 4610         	mov	r0, r2
  40d31c: f04f 517e    	mov.w	r1, #0x3f800000
  40d320: 4798         	blx	r3
  40d322: ab07         	add	r3, sp, #0x1c
  40d324: 681b         	ldr	r3, [r3]
  40d326: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  40d32a: f50d 6380    	add.w	r3, sp, #0x400
  40d32e: 4618         	mov	r0, r3
  40d330: f37d f860    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37d0c0
  40d334: f50d 6282    	add.w	r2, sp, #0x410
  40d338: f50d 6380    	add.w	r3, sp, #0x400
  40d33c: 4610         	mov	r0, r2
  40d33e: f8df 26a0    	ldr.w	r2, [pc, #0x6a0]        @ 0x40d9e0 <TrainingStage::doLesson(float)+0x3708>
  40d342: 447a         	add	r2, pc
  40d344: 4611         	mov	r1, r2
  40d346: 461a         	mov	r2, r3
  40d348: f3a9 fb8a    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3a9714
  40d34c: 2000         	movs	r0, #0x0
  40d34e: 2100         	movs	r1, #0x0
  40d350: 22ff         	movs	r2, #0xff
  40d352: f7fb f881    	bl	0x408458 <Tracer::checkCollision()+0x3cc> @ imm = #-0x4efe
  40d356: 4602         	mov	r2, r0
  40d358: ab1c         	add	r3, sp, #0x70
  40d35a: 4611         	mov	r1, r2
  40d35c: 7019         	strb	r1, [r3]
  40d35e: f3c2 2107    	ubfx	r1, r2, #0x8, #0x8
  40d362: 7059         	strb	r1, [r3, #0x1]
  40d364: f3c2 4207    	ubfx	r2, r2, #0x10, #0x8
  40d368: 709a         	strb	r2, [r3, #0x2]
  40d36a: f50d 6282    	add.w	r2, sp, #0x410
  40d36e: ab1c         	add	r3, sp, #0x70
  40d370: 4628         	mov	r0, r5
  40d372: 4611         	mov	r1, r2
  40d374: 681a         	ldr	r2, [r3]
  40d376: 2304         	movs	r3, #0x4
  40d378: f72f ffa2    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xd00bc
  40d37c: f50d 6382    	add.w	r3, sp, #0x410
  40d380: 4618         	mov	r0, r3
  40d382: f3a8 fac7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a858e
  40d386: f50d 6380    	add.w	r3, sp, #0x400
  40d38a: 4618         	mov	r0, r3
  40d38c: f37d f836    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37d06c
  40d390: f8df 363c    	ldr.w	r3, [pc, #0x63c]        @ 0x40d9d0 <TrainingStage::doLesson(float)+0x36f8>
  40d394: 58e3         	ldr	r3, [r4, r3]
  40d396: 681b         	ldr	r3, [r3]
  40d398: 4618         	mov	r0, r3
  40d39a: 2145         	movs	r1, #0x45
  40d39c: 2201         	movs	r2, #0x1
  40d39e: f7ea fccf    	bl	0x3f7d40 <Sound::playSoundWithVoice(int, int)> @ imm = #-0x15662
  40d3a2: f004 bdb7    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x4b6e
  40d3a6: ab07         	add	r3, sp, #0x1c
  40d3a8: 681b         	ldr	r3, [r3]
  40d3aa: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  40d3ae: 681b         	ldr	r3, [r3]
  40d3b0: 3390         	adds	r3, #0x90
  40d3b2: 681b         	ldr	r3, [r3]
  40d3b4: aa07         	add	r2, sp, #0x1c
  40d3b6: 6812         	ldr	r2, [r2]
  40d3b8: f8d2 2174    	ldr.w	r2, [r2, #0x174]
  40d3bc: 4610         	mov	r0, r2
  40d3be: 2101         	movs	r1, #0x1
  40d3c0: 4798         	blx	r3
  40d3c2: ab07         	add	r3, sp, #0x1c
  40d3c4: 681b         	ldr	r3, [r3]
  40d3c6: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  40d3ca: 681b         	ldr	r3, [r3]
  40d3cc: 3398         	adds	r3, #0x98
  40d3ce: 681b         	ldr	r3, [r3]
  40d3d0: aa07         	add	r2, sp, #0x1c
  40d3d2: 6812         	ldr	r2, [r2]
  40d3d4: f8d2 2174    	ldr.w	r2, [r2, #0x174]
  40d3d8: 4610         	mov	r0, r2
  40d3da: f04f 0100    	mov.w	r1, #0x0
  40d3de: f2c4 21b4    	movt	r1, #0x42b4
  40d3e2: 4798         	blx	r3
  40d3e4: ab07         	add	r3, sp, #0x1c
  40d3e6: 681b         	ldr	r3, [r3]
  40d3e8: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  40d3ec: 681b         	ldr	r3, [r3]
  40d3ee: 334c         	adds	r3, #0x4c
  40d3f0: 681c         	ldr	r4, [r3]
  40d3f2: ab07         	add	r3, sp, #0x1c
  40d3f4: 681b         	ldr	r3, [r3]
  40d3f6: f8d3 516c    	ldr.w	r5, [r3, #0x16c]
  40d3fa: ab07         	add	r3, sp, #0x1c
  40d3fc: 681b         	ldr	r3, [r3]
  40d3fe: ed93 7a62    	vldr	s14, [r3, #392]
  40d402: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  40d406: ee67 7a27    	vmul.f32	s15, s14, s15
  40d40a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  40d40e: ec51 0b17    	vmov	r0, r1, d7
  40d412: f6c8 ed7a    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x13750c
  40d416: ec41 0b16    	vmov	d6, r0, r1
  40d41a: eeb2 7b04    	vmov.f64	d7, #1.000000e+01
  40d41e: ee26 7b07    	vmul.f64	d7, d6, d7
  40d422: eef7 7bc7    	vcvt.f32.f64	s15, d7
  40d426: f50d 6382    	add.w	r3, sp, #0x410
  40d42a: 4618         	mov	r0, r3
  40d42c: ee17 1a90    	vmov	r1, s15
  40d430: f04f 0200    	mov.w	r2, #0x0
  40d434: f185 fc5c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1858b8
  40d438: f50d 6382    	add.w	r3, sp, #0x410
  40d43c: 4628         	mov	r0, r5
  40d43e: 4619         	mov	r1, r3
  40d440: 47a0         	blx	r4
  40d442: ab07         	add	r3, sp, #0x1c
  40d444: 681b         	ldr	r3, [r3]
  40d446: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  40d44a: 681b         	ldr	r3, [r3]
  40d44c: 334c         	adds	r3, #0x4c
  40d44e: 681c         	ldr	r4, [r3]
  40d450: ab07         	add	r3, sp, #0x1c
  40d452: 681b         	ldr	r3, [r3]
  40d454: f8d3 5174    	ldr.w	r5, [r3, #0x174]
  40d458: ab07         	add	r3, sp, #0x1c
  40d45a: 681b         	ldr	r3, [r3]
  40d45c: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  40d460: f503 76b4    	add.w	r6, r3, #0x168
  40d464: f50d 6380    	add.w	r3, sp, #0x400
  40d468: 4618         	mov	r0, r3
  40d46a: f04f 0100    	mov.w	r1, #0x0
  40d46e: f2cc 1170    	movt	r1, #0xc170
  40d472: f04f 0200    	mov.w	r2, #0x0
  40d476: f2c4 2270    	movt	r2, #0x4270
  40d47a: f185 fc39    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x185872
  40d47e: f50d 6282    	add.w	r2, sp, #0x410
  40d482: f50d 6380    	add.w	r3, sp, #0x400
  40d486: 4610         	mov	r0, r2
  40d488: 4631         	mov	r1, r6
  40d48a: 461a         	mov	r2, r3
  40d48c: f7fb f812    	bl	0x4084b4 <Tracer::checkCollision()+0x428> @ imm = #-0x4fdc
  40d490: f50d 6382    	add.w	r3, sp, #0x410
  40d494: 4628         	mov	r0, r5
  40d496: 4619         	mov	r1, r3
  40d498: 47a0         	blx	r4
  40d49a: f004 bd3b    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x4a76
  40d49e: ab07         	add	r3, sp, #0x1c
  40d4a0: 681b         	ldr	r3, [r3]
  40d4a2: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40d4a6: 681b         	ldr	r3, [r3]
  40d4a8: f503 730e    	add.w	r3, r3, #0x238
  40d4ac: 681b         	ldr	r3, [r3]
  40d4ae: aa07         	add	r2, sp, #0x1c
  40d4b0: 6812         	ldr	r2, [r2]
  40d4b2: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40d4b6: 4610         	mov	r0, r2
  40d4b8: f04f 0100    	mov.w	r1, #0x0
  40d4bc: f2c4 3134    	movt	r1, #0x4334
  40d4c0: 4798         	blx	r3
  40d4c2: f8df 3504    	ldr.w	r3, [pc, #0x504]        @ 0x40d9c8 <TrainingStage::doLesson(float)+0x36f0>
  40d4c6: 58e3         	ldr	r3, [r4, r3]
  40d4c8: 681b         	ldr	r3, [r3]
  40d4ca: 681b         	ldr	r3, [r3]
  40d4cc: f503 7329    	add.w	r3, r3, #0x2a4
  40d4d0: 681b         	ldr	r3, [r3]
  40d4d2: f8df 24f4    	ldr.w	r2, [pc, #0x4f4]        @ 0x40d9c8 <TrainingStage::doLesson(float)+0x36f0>
  40d4d6: 58a2         	ldr	r2, [r4, r2]
  40d4d8: 6812         	ldr	r2, [r2]
  40d4da: 4610         	mov	r0, r2
  40d4dc: f04f 0100    	mov.w	r1, #0x0
  40d4e0: 4798         	blx	r3
  40d4e2: f8df 34e4    	ldr.w	r3, [pc, #0x4e4]        @ 0x40d9c8 <TrainingStage::doLesson(float)+0x36f0>
  40d4e6: 58e3         	ldr	r3, [r4, r3]
  40d4e8: 681b         	ldr	r3, [r3]
  40d4ea: f8d3 2138    	ldr.w	r2, [r3, #0x138]
  40d4ee: f8df 34f4    	ldr.w	r3, [pc, #0x4f4]        @ 0x40d9e4 <TrainingStage::doLesson(float)+0x370c>
  40d4f2: 447b         	add	r3, pc
  40d4f4: ed93 6b00    	vldr	d6, [r3]
  40d4f8: ed93 7b02    	vldr	d7, [r3, #8]
  40d4fc: 4610         	mov	r0, r2
  40d4fe: eeb0 0b46    	vmov.f64	d0, d6
  40d502: eeb0 1b47    	vmov.f64	d1, d7
  40d506: f7fb f89f    	bl	0x408648 <Tracer::checkCollision()+0x5bc> @ imm = #-0x4ec2
  40d50a: f8df 34bc    	ldr.w	r3, [pc, #0x4bc]        @ 0x40d9c8 <TrainingStage::doLesson(float)+0x36f0>
  40d50e: 58e3         	ldr	r3, [r4, r3]
  40d510: 681b         	ldr	r3, [r3]
  40d512: f8d3 2138    	ldr.w	r2, [r3, #0x138]
  40d516: f8df 34d0    	ldr.w	r3, [pc, #0x4d0]        @ 0x40d9e8 <TrainingStage::doLesson(float)+0x3710>
  40d51a: 447b         	add	r3, pc
  40d51c: ed93 6b00    	vldr	d6, [r3]
  40d520: ed93 7b02    	vldr	d7, [r3, #8]
  40d524: 4610         	mov	r0, r2
  40d526: eeb0 0b46    	vmov.f64	d0, d6
  40d52a: eeb0 1b47    	vmov.f64	d1, d7
  40d52e: f7fb f8a1    	bl	0x408674 <Tracer::checkCollision()+0x5e8> @ imm = #-0x4ebe
  40d532: ab07         	add	r3, sp, #0x1c
  40d534: 681b         	ldr	r3, [r3]
  40d536: ed93 7a62    	vldr	s14, [r3, #392]
  40d53a: eef0 7a08    	vmov.f32	s15, #3.000000e+00
  40d53e: eeb4 7ae7    	vcmpe.f32	s14, s15
  40d542: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40d546: d505         	bpl	0x40d554 <TrainingStage::doLesson(float)+0x327c> @ imm = #0xa
  40d548: aa07         	add	r2, sp, #0x1c
  40d54a: ab06         	add	r3, sp, #0x18
  40d54c: 6810         	ldr	r0, [r2]
  40d54e: 6819         	ldr	r1, [r3]
  40d550: f7fc fc6e    	bl	0x409e30 <TrainingStage::headChatter(float)> @ imm = #-0x3724
  40d554: ab07         	add	r3, sp, #0x1c
  40d556: 681b         	ldr	r3, [r3]
  40d558: ed93 7a62    	vldr	s14, [r3, #392]
  40d55c: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  40d560: eeb4 7ae7    	vcmpe.f32	s14, s15
  40d564: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40d568: dc01         	bgt	0x40d56e <TrainingStage::doLesson(float)+0x3296> @ imm = #0x2
  40d56a: f004 bcd3    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x49a6
  40d56e: ab07         	add	r3, sp, #0x1c
  40d570: 681b         	ldr	r3, [r3]
  40d572: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  40d576: 1c5a         	adds	r2, r3, #0x1
  40d578: ab07         	add	r3, sp, #0x1c
  40d57a: 681b         	ldr	r3, [r3]
  40d57c: f8c3 2180    	str.w	r2, [r3, #0x180]
  40d580: ab07         	add	r3, sp, #0x1c
  40d582: 681b         	ldr	r3, [r3]
  40d584: f04f 0200    	mov.w	r2, #0x0
  40d588: f8c3 2188    	str.w	r2, [r3, #0x188]
  40d58c: ab07         	add	r3, sp, #0x1c
  40d58e: 681b         	ldr	r3, [r3]
  40d590: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  40d594: f50d 6380    	add.w	r3, sp, #0x400
  40d598: 4618         	mov	r0, r3
  40d59a: f37c ff2b    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37ce56
  40d59e: f50d 6282    	add.w	r2, sp, #0x410
  40d5a2: f50d 6380    	add.w	r3, sp, #0x400
  40d5a6: 4610         	mov	r0, r2
  40d5a8: f8df 2440    	ldr.w	r2, [pc, #0x440]        @ 0x40d9ec <TrainingStage::doLesson(float)+0x3714>
  40d5ac: 447a         	add	r2, pc
  40d5ae: 4611         	mov	r1, r2
  40d5b0: 461a         	mov	r2, r3
  40d5b2: f3a9 fa55    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3a94aa
  40d5b6: 2000         	movs	r0, #0x0
  40d5b8: 2100         	movs	r1, #0x0
  40d5ba: 22ff         	movs	r2, #0xff
  40d5bc: f7fa ff4c    	bl	0x408458 <Tracer::checkCollision()+0x3cc> @ imm = #-0x5168
  40d5c0: 4602         	mov	r2, r0
  40d5c2: ab1d         	add	r3, sp, #0x74
  40d5c4: 4611         	mov	r1, r2
  40d5c6: 7019         	strb	r1, [r3]
  40d5c8: f3c2 2107    	ubfx	r1, r2, #0x8, #0x8
  40d5cc: 7059         	strb	r1, [r3, #0x1]
  40d5ce: f3c2 4207    	ubfx	r2, r2, #0x10, #0x8
  40d5d2: 709a         	strb	r2, [r3, #0x2]
  40d5d4: f50d 6282    	add.w	r2, sp, #0x410
  40d5d8: ab1d         	add	r3, sp, #0x74
  40d5da: 4628         	mov	r0, r5
  40d5dc: 4611         	mov	r1, r2
  40d5de: 681a         	ldr	r2, [r3]
  40d5e0: 2303         	movs	r3, #0x3
  40d5e2: f72f fe6d    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xd0326
  40d5e6: f50d 6382    	add.w	r3, sp, #0x410
  40d5ea: 4618         	mov	r0, r3
  40d5ec: f3a8 f992    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a8324
  40d5f0: f50d 6380    	add.w	r3, sp, #0x400
  40d5f4: 4618         	mov	r0, r3
  40d5f6: f37c ff01    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37ce02
  40d5fa: 4bf5         	ldr	r3, [pc, #0x3d4]        @ 0x40d9d0 <TrainingStage::doLesson(float)+0x36f8>
  40d5fc: 58e3         	ldr	r3, [r4, r3]
  40d5fe: 681b         	ldr	r3, [r3]
  40d600: 4618         	mov	r0, r3
  40d602: 2146         	movs	r1, #0x46
  40d604: 2201         	movs	r2, #0x1
  40d606: f7ea fb9b    	bl	0x3f7d40 <Sound::playSoundWithVoice(int, int)> @ imm = #-0x158ca
  40d60a: 4bef         	ldr	r3, [pc, #0x3bc]        @ 0x40d9c8 <TrainingStage::doLesson(float)+0x36f0>
  40d60c: 58e3         	ldr	r3, [r4, r3]
  40d60e: 681b         	ldr	r3, [r3]
  40d610: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  40d614: 681b         	ldr	r3, [r3]
  40d616: f503 7322    	add.w	r3, r3, #0x288
  40d61a: 681b         	ldr	r3, [r3]
  40d61c: 4aea         	ldr	r2, [pc, #0x3a8]        @ 0x40d9c8 <TrainingStage::doLesson(float)+0x36f0>
  40d61e: 58a2         	ldr	r2, [r4, r2]
  40d620: 6812         	ldr	r2, [r2]
  40d622: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  40d626: 4610         	mov	r0, r2
  40d628: 2100         	movs	r1, #0x0
  40d62a: 4798         	blx	r3
  40d62c: 4be6         	ldr	r3, [pc, #0x398]        @ 0x40d9c8 <TrainingStage::doLesson(float)+0x36f0>
  40d62e: 58e3         	ldr	r3, [r4, r3]
  40d630: 681b         	ldr	r3, [r3]
  40d632: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  40d636: 681b         	ldr	r3, [r3]
  40d638: f503 731e    	add.w	r3, r3, #0x278
  40d63c: 681b         	ldr	r3, [r3]
  40d63e: 4ae2         	ldr	r2, [pc, #0x388]        @ 0x40d9c8 <TrainingStage::doLesson(float)+0x36f0>
  40d640: 58a2         	ldr	r2, [r4, r2]
  40d642: 6812         	ldr	r2, [r2]
  40d644: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  40d648: 4610         	mov	r0, r2
  40d64a: 2100         	movs	r1, #0x0
  40d64c: 4798         	blx	r3
  40d64e: 4bde         	ldr	r3, [pc, #0x378]        @ 0x40d9c8 <TrainingStage::doLesson(float)+0x36f0>
  40d650: 58e3         	ldr	r3, [r4, r3]
  40d652: 681b         	ldr	r3, [r3]
  40d654: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  40d658: 681b         	ldr	r3, [r3]
  40d65a: f503 7322    	add.w	r3, r3, #0x288
  40d65e: 681b         	ldr	r3, [r3]
  40d660: 4ad9         	ldr	r2, [pc, #0x364]        @ 0x40d9c8 <TrainingStage::doLesson(float)+0x36f0>
  40d662: 58a2         	ldr	r2, [r4, r2]
  40d664: 6812         	ldr	r2, [r2]
  40d666: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  40d66a: 4610         	mov	r0, r2
  40d66c: 2100         	movs	r1, #0x0
  40d66e: 4798         	blx	r3
  40d670: 4bd5         	ldr	r3, [pc, #0x354]        @ 0x40d9c8 <TrainingStage::doLesson(float)+0x36f0>
  40d672: 58e3         	ldr	r3, [r4, r3]
  40d674: 681b         	ldr	r3, [r3]
  40d676: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  40d67a: 681b         	ldr	r3, [r3]
  40d67c: f503 731e    	add.w	r3, r3, #0x278
  40d680: 681b         	ldr	r3, [r3]
  40d682: 4ad1         	ldr	r2, [pc, #0x344]        @ 0x40d9c8 <TrainingStage::doLesson(float)+0x36f0>
  40d684: 58a2         	ldr	r2, [r4, r2]
  40d686: 6812         	ldr	r2, [r2]
  40d688: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  40d68c: 4610         	mov	r0, r2
  40d68e: 2100         	movs	r1, #0x0
  40d690: 4798         	blx	r3
  40d692: f004 bc3f    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x487e
  40d696: ab07         	add	r3, sp, #0x1c
  40d698: 681b         	ldr	r3, [r3]
  40d69a: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40d69e: 681b         	ldr	r3, [r3]
  40d6a0: f503 730e    	add.w	r3, r3, #0x238
  40d6a4: 681b         	ldr	r3, [r3]
  40d6a6: aa07         	add	r2, sp, #0x1c
  40d6a8: 6812         	ldr	r2, [r2]
  40d6aa: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40d6ae: 4610         	mov	r0, r2
  40d6b0: f04f 0100    	mov.w	r1, #0x0
  40d6b4: f2c4 3134    	movt	r1, #0x4334
  40d6b8: 4798         	blx	r3
  40d6ba: 4bc3         	ldr	r3, [pc, #0x30c]        @ 0x40d9c8 <TrainingStage::doLesson(float)+0x36f0>
  40d6bc: 58e3         	ldr	r3, [r4, r3]
  40d6be: 681b         	ldr	r3, [r3]
  40d6c0: 681b         	ldr	r3, [r3]
  40d6c2: f503 7329    	add.w	r3, r3, #0x2a4
  40d6c6: 681b         	ldr	r3, [r3]
  40d6c8: 4abf         	ldr	r2, [pc, #0x2fc]        @ 0x40d9c8 <TrainingStage::doLesson(float)+0x36f0>
  40d6ca: 58a2         	ldr	r2, [r4, r2]
  40d6cc: 6812         	ldr	r2, [r2]
  40d6ce: 4610         	mov	r0, r2
  40d6d0: f04f 0100    	mov.w	r1, #0x0
  40d6d4: 4798         	blx	r3
  40d6d6: ab07         	add	r3, sp, #0x1c
  40d6d8: 681b         	ldr	r3, [r3]
  40d6da: ed93 7a62    	vldr	s14, [r3, #392]
  40d6de: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  40d6e2: eeb4 7ae7    	vcmpe.f32	s14, s15
  40d6e6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40d6ea: d505         	bpl	0x40d6f8 <TrainingStage::doLesson(float)+0x3420> @ imm = #0xa
  40d6ec: aa07         	add	r2, sp, #0x1c
  40d6ee: ab06         	add	r3, sp, #0x18
  40d6f0: 6810         	ldr	r0, [r2]
  40d6f2: 6819         	ldr	r1, [r3]
  40d6f4: f7fc fb9c    	bl	0x409e30 <TrainingStage::headChatter(float)> @ imm = #-0x38c8
  40d6f8: ab07         	add	r3, sp, #0x1c
  40d6fa: 681b         	ldr	r3, [r3]
  40d6fc: ed93 7a62    	vldr	s14, [r3, #392]
  40d700: eef0 7a08    	vmov.f32	s15, #3.000000e+00
  40d704: eeb4 7ae7    	vcmpe.f32	s14, s15
  40d708: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40d70c: dc01         	bgt	0x40d712 <TrainingStage::doLesson(float)+0x343a> @ imm = #0x2
  40d70e: f004 bc01    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x4802
  40d712: ab07         	add	r3, sp, #0x1c
  40d714: 681b         	ldr	r3, [r3]
  40d716: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  40d71a: 1c5a         	adds	r2, r3, #0x1
  40d71c: ab07         	add	r3, sp, #0x1c
  40d71e: 681b         	ldr	r3, [r3]
  40d720: f8c3 2180    	str.w	r2, [r3, #0x180]
  40d724: ab07         	add	r3, sp, #0x1c
  40d726: 681b         	ldr	r3, [r3]
  40d728: f04f 0200    	mov.w	r2, #0x0
  40d72c: f8c3 2188    	str.w	r2, [r3, #0x188]
  40d730: ab07         	add	r3, sp, #0x1c
  40d732: 681b         	ldr	r3, [r3]
  40d734: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  40d738: f50d 6380    	add.w	r3, sp, #0x400
  40d73c: 4618         	mov	r0, r3
  40d73e: f37c fe59    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37ccb2
  40d742: f50d 6282    	add.w	r2, sp, #0x410
  40d746: f50d 6380    	add.w	r3, sp, #0x400
  40d74a: 4610         	mov	r0, r2
  40d74c: 4aa8         	ldr	r2, [pc, #0x2a0]        @ 0x40d9f0 <TrainingStage::doLesson(float)+0x3718>
  40d74e: 447a         	add	r2, pc
  40d750: 4611         	mov	r1, r2
  40d752: 461a         	mov	r2, r3
  40d754: f3a9 f984    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3a9308
  40d758: 2000         	movs	r0, #0x0
  40d75a: 2100         	movs	r1, #0x0
  40d75c: 22ff         	movs	r2, #0xff
  40d75e: f7fa fe7b    	bl	0x408458 <Tracer::checkCollision()+0x3cc> @ imm = #-0x530a
  40d762: 4602         	mov	r2, r0
  40d764: ab1e         	add	r3, sp, #0x78
  40d766: 4611         	mov	r1, r2
  40d768: 7019         	strb	r1, [r3]
  40d76a: f3c2 2107    	ubfx	r1, r2, #0x8, #0x8
  40d76e: 7059         	strb	r1, [r3, #0x1]
  40d770: f3c2 4207    	ubfx	r2, r2, #0x10, #0x8
  40d774: 709a         	strb	r2, [r3, #0x2]
  40d776: f50d 6282    	add.w	r2, sp, #0x410
  40d77a: ab1e         	add	r3, sp, #0x78
  40d77c: 4628         	mov	r0, r5
  40d77e: 4611         	mov	r1, r2
  40d780: 681a         	ldr	r2, [r3]
  40d782: 2305         	movs	r3, #0x5
  40d784: f72f fd9c    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xd04c8
  40d788: f50d 6382    	add.w	r3, sp, #0x410
  40d78c: 4618         	mov	r0, r3
  40d78e: f3a8 f8c1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a8182
  40d792: f50d 6380    	add.w	r3, sp, #0x400
  40d796: 4618         	mov	r0, r3
  40d798: f37c fe30    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37cc60
  40d79c: ab07         	add	r3, sp, #0x1c
  40d79e: 681b         	ldr	r3, [r3]
  40d7a0: f8d3 31a4    	ldr.w	r3, [r3, #0x1a4]
  40d7a4: 6a5b         	ldr	r3, [r3, #0x24]
  40d7a6: 4618         	mov	r0, r3
  40d7a8: f186 fa70    	bl	0x593c8c <cocos2d::CCDictionary::allKeys()> @ imm = #0x1864e0
  40d7ac: 4603         	mov	r3, r0
  40d7ae: 4618         	mov	r0, r3
  40d7b0: f18c fcc4    	bl	0x59a13c <cocos2d::CCArray::lastObject()> @ imm = #0x18c988
  40d7b4: 4603         	mov	r3, r0
  40d7b6: 4618         	mov	r0, r3
  40d7b8: f18c f8b6    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x18c16c
  40d7bc: 4605         	mov	r5, r0
  40d7be: f50d 6382    	add.w	r3, sp, #0x410
  40d7c2: 4618         	mov	r0, r3
  40d7c4: f37c fe16    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37cc2c
  40d7c8: aafc         	add	r2, sp, #0x3f0
  40d7ca: f50d 6382    	add.w	r3, sp, #0x410
  40d7ce: 4610         	mov	r0, r2
  40d7d0: 4629         	mov	r1, r5
  40d7d2: 461a         	mov	r2, r3
  40d7d4: f3a9 f944    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3a9288
  40d7d8: f50d 6382    	add.w	r3, sp, #0x410
  40d7dc: 4618         	mov	r0, r3
  40d7de: f37c fe0d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37cc1a
  40d7e2: ab07         	add	r3, sp, #0x1c
  40d7e4: 681b         	ldr	r3, [r3]
  40d7e6: f8d3 31a4    	ldr.w	r3, [r3, #0x1a4]
  40d7ea: 6a5d         	ldr	r5, [r3, #0x24]
  40d7ec: abfc         	add	r3, sp, #0x3f0
  40d7ee: 4618         	mov	r0, r3
  40d7f0: f3a7 fd86    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3a7b0c
  40d7f4: 4606         	mov	r6, r0
  40d7f6: f50d 6382    	add.w	r3, sp, #0x410
  40d7fa: 4618         	mov	r0, r3
  40d7fc: f37c fdfa    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37cbf4
  40d800: f50d 6280    	add.w	r2, sp, #0x400
  40d804: f50d 6382    	add.w	r3, sp, #0x410
  40d808: 4610         	mov	r0, r2
  40d80a: 4631         	mov	r1, r6
  40d80c: 461a         	mov	r2, r3
  40d80e: f3a9 f927    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3a924e
  40d812: f50d 6380    	add.w	r3, sp, #0x400
  40d816: 4628         	mov	r0, r5
  40d818: 4619         	mov	r1, r3
  40d81a: f186 fb69    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x1866d2
  40d81e: 4602         	mov	r2, r0
  40d820: ab07         	add	r3, sp, #0x1c
  40d822: 681b         	ldr	r3, [r3]
  40d824: f8c3 21a8    	str.w	r2, [r3, #0x1a8]
  40d828: f50d 6380    	add.w	r3, sp, #0x400
  40d82c: 4618         	mov	r0, r3
  40d82e: f3a8 f871    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a80e2
  40d832: f50d 6382    	add.w	r3, sp, #0x410
  40d836: 4618         	mov	r0, r3
  40d838: f37c fde0    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37cbc0
  40d83c: 4b62         	ldr	r3, [pc, #0x188]        @ 0x40d9c8 <TrainingStage::doLesson(float)+0x36f0>
  40d83e: 58e3         	ldr	r3, [r4, r3]
  40d840: 681b         	ldr	r3, [r3]
  40d842: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  40d846: ed93 6b0a    	vldr	d6, [r3, #40]
  40d84a: ed9f 7b57    	vldr	d7, [pc, #348]          @ 0x40d9a8 <TrainingStage::doLesson(float)+0x36d0>
  40d84e: ee36 6b07    	vadd.f64	d6, d6, d7
  40d852: 4b5d         	ldr	r3, [pc, #0x174]        @ 0x40d9c8 <TrainingStage::doLesson(float)+0x36f0>
  40d854: 58e3         	ldr	r3, [r4, r3]
  40d856: 681b         	ldr	r3, [r3]
  40d858: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  40d85c: ed93 5b0c    	vldr	d5, [r3, #48]
  40d860: ed9f 7b53    	vldr	d7, [pc, #332]          @ 0x40d9b0 <TrainingStage::doLesson(float)+0x36d8>
  40d864: ee35 7b07    	vadd.f64	d7, d5, d7
  40d868: ad38         	add	r5, sp, #0xe0
  40d86a: ab02         	add	r3, sp, #0x8
  40d86c: 4618         	mov	r0, r3
  40d86e: eeb0 0b46    	vmov.f64	d0, d6
  40d872: eeb0 1b47    	vmov.f64	d1, d7
  40d876: f7fa fe2d    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x53a6
  40d87a: ab02         	add	r3, sp, #0x8
  40d87c: cb0f         	ldm	r3, {r0, r1, r2, r3}
  40d87e: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  40d882: ab07         	add	r3, sp, #0x1c
  40d884: 681b         	ldr	r3, [r3]
  40d886: f8d3 21a4    	ldr.w	r2, [r3, #0x1a4]
  40d88a: ab07         	add	r3, sp, #0x1c
  40d88c: 681b         	ldr	r3, [r3]
  40d88e: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40d892: 4610         	mov	r0, r2
  40d894: 4619         	mov	r1, r3
  40d896: f70c f9b7    	bl	0x319c08 <EnemyManager::spawnHumanoidDrone(HumanoidDrone*)> @ imm = #-0xf3c92
  40d89a: ab07         	add	r3, sp, #0x1c
  40d89c: 681b         	ldr	r3, [r3]
  40d89e: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40d8a2: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  40d8a6: f8d3 2138    	ldr.w	r2, [r3, #0x138]
  40d8aa: ab38         	add	r3, sp, #0xe0
  40d8ac: f102 0528    	add.w	r5, r2, #0x28
  40d8b0: cb0f         	ldm	r3, {r0, r1, r2, r3}
  40d8b2: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  40d8b6: ab07         	add	r3, sp, #0x1c
  40d8b8: 681b         	ldr	r3, [r3]
  40d8ba: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40d8be: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  40d8c2: 681b         	ldr	r3, [r3]
  40d8c4: f503 73ec    	add.w	r3, r3, #0x1d8
  40d8c8: 681b         	ldr	r3, [r3]
  40d8ca: aa07         	add	r2, sp, #0x1c
  40d8cc: 6812         	ldr	r2, [r2]
  40d8ce: f8d2 21a8    	ldr.w	r2, [r2, #0x1a8]
  40d8d2: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  40d8d6: 4610         	mov	r0, r2
  40d8d8: 4798         	blx	r3
  40d8da: 4603         	mov	r3, r0
  40d8dc: 461d         	mov	r5, r3
  40d8de: 682b         	ldr	r3, [r5]
  40d8e0: 334c         	adds	r3, #0x4c
  40d8e2: 681e         	ldr	r6, [r3]
  40d8e4: ab38         	add	r3, sp, #0xe0
  40d8e6: ed93 7b00    	vldr	d7, [r3]
  40d8ea: eef7 6bc7    	vcvt.f32.f64	s13, d7
  40d8ee: ab38         	add	r3, sp, #0xe0
  40d8f0: ed93 7b02    	vldr	d7, [r3, #8]
  40d8f4: eef7 7bc7    	vcvt.f32.f64	s15, d7
  40d8f8: f50d 6382    	add.w	r3, sp, #0x410
  40d8fc: 4618         	mov	r0, r3
  40d8fe: ee16 1a90    	vmov	r1, s13
  40d902: ee17 2a90    	vmov	r2, s15
  40d906: f185 f9f3    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1853e6
  40d90a: f50d 6382    	add.w	r3, sp, #0x410
  40d90e: 4628         	mov	r0, r5
  40d910: 4619         	mov	r1, r3
  40d912: 47b0         	blx	r6
  40d914: ab07         	add	r3, sp, #0x1c
  40d916: 681b         	ldr	r3, [r3]
  40d918: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40d91c: f8d3 51a8    	ldr.w	r5, [r3, #0x1a8]
  40d920: f50d 6380    	add.w	r3, sp, #0x400
  40d924: 4618         	mov	r0, r3
  40d926: f37c fd65    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37caca
  40d92a: f50d 6282    	add.w	r2, sp, #0x410
  40d92e: f50d 6380    	add.w	r3, sp, #0x400
  40d932: 4610         	mov	r0, r2
  40d934: 4a2f         	ldr	r2, [pc, #0xbc]         @ 0x40d9f4 <TrainingStage::doLesson(float)+0x371c>
  40d936: 447a         	add	r2, pc
  40d938: 4611         	mov	r1, r2
  40d93a: 461a         	mov	r2, r3
  40d93c: f3a9 f890    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3a9120
  40d940: f50d 6382    	add.w	r3, sp, #0x410
  40d944: 4628         	mov	r0, r5
  40d946: 4619         	mov	r1, r3
  40d948: f7e6 fb0c    	bl	0x3f3f64 <SoldierView::setPlayerName(std::string)> @ imm = #-0x199e8
  40d94c: f50d 6382    	add.w	r3, sp, #0x410
  40d950: 4618         	mov	r0, r3
  40d952: f3a7 ffdf    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a7fbe
  40d956: f50d 6380    	add.w	r3, sp, #0x400
  40d95a: 4618         	mov	r0, r3
  40d95c: f37c fd4e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37ca9c
  40d960: ab07         	add	r3, sp, #0x1c
  40d962: 681b         	ldr	r3, [r3]
  40d964: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40d968: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  40d96c: f8d3 5138    	ldr.w	r5, [r3, #0x138]
  40d970: ab02         	add	r3, sp, #0x8
  40d972: 4618         	mov	r0, r3
  40d974: ed9f 0b10    	vldr	d0, [pc, #64]           @ 0x40d9b8 <TrainingStage::doLesson(float)+0x36e0>
  40d978: ed9f 1b11    	vldr	d1, [pc, #68]           @ 0x40d9c0 <TrainingStage::doLesson(float)+0x36e8>
  40d97c: f7fa fdaa    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x54ac
  40d980: ab02         	add	r3, sp, #0x8
  40d982: 3538         	adds	r5, #0x38
  40d984: cb0f         	ldm	r3, {r0, r1, r2, r3}
  40d986: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  40d98a: 4b11         	ldr	r3, [pc, #0x44]         @ 0x40d9d0 <TrainingStage::doLesson(float)+0x36f8>
  40d98c: 58e3         	ldr	r3, [r4, r3]
  40d98e: 681b         	ldr	r3, [r3]
  40d990: 4618         	mov	r0, r3
  40d992: 2147         	movs	r1, #0x47
  40d994: 2201         	movs	r2, #0x1
  40d996: f7ea f9d3    	bl	0x3f7d40 <Sound::playSoundWithVoice(int, int)> @ imm = #-0x15c5a
  40d99a: abfc         	add	r3, sp, #0x3f0
  40d99c: 4618         	mov	r0, r3
  40d99e: f3a7 ffb9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a7f72
  40d9a2: f004 bab7    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x456e
  40d9a6: bf00         	nop
  40d9a8: 0000         	movs	r0, r0
  40d9aa: 0000         	movs	r0, r0
  40d9ac: 0000         	movs	r0, r0
  40d9ae: 4049         	eors	r1, r1
  40d9b0: 0000         	movs	r0, r0
  40d9b2: 0000         	movs	r0, r0
  40d9b4: 4000         	ands	r0, r0
  40d9b6: 407f         	eors	r7, r7
  40d9c4: 0000         	movs	r0, r0
  40d9c6: c069         	stm	r0!, {r0, r3, r5, r6}
  40d9c8: d784         	bvc	0x40d8d4 <TrainingStage::doLesson(float)+0x35fc> @ imm = #-0xf8
  40d9ca: ffff db8e    	vtbl.8	d29, {d31, fpinst2, mvfr0, mvfr1}, d14
  40d9ce: 003c         	movs	r4, r7
  40d9d0: d730         	bvc	0x40da34 <TrainingStage::doLesson(float)+0x375c> @ imm = #0x60
  40d9d2: ffff da5e    	<unknown>
  40d9d6: 003c         	movs	r4, r7
  40d9d8: dd3e         	ble	0x40da58 <TrainingStage::doLesson(float)+0x3780> @ imm = #0x7c
  40d9da: 003c         	movs	r4, r7
  40d9dc: dd16         	ble	0x40da0c <TrainingStage::doLesson(float)+0x3734> @ imm = #0x2c
  40d9de: 003c         	movs	r4, r7
  40d9e0: d866         	bhi	0x40dab0 <TrainingStage::doLesson(float)+0x37d8> @ imm = #0xcc
  40d9e2: 003c         	movs	r4, r7
  40d9e4: da72         	bge	0x40dacc <TrainingStage::doLesson(float)+0x37f4> @ imm = #0xe4
  40d9e6: 003c         	movs	r4, r7
  40d9e8: da4a         	bge	0x40da80 <TrainingStage::doLesson(float)+0x37a8> @ imm = #0x94
  40d9ea: 003c         	movs	r4, r7
  40d9ec: d634         	bvs	0x40da58 <TrainingStage::doLesson(float)+0x3780> @ imm = #0x68
  40d9ee: 003c         	movs	r4, r7
  40d9f0: d4c2         	bmi	0x40d978 <TrainingStage::doLesson(float)+0x36a0> @ imm = #-0x7c
  40d9f2: 003c         	movs	r4, r7
  40d9f4: d2f6         	bhs	0x40d9e4 <TrainingStage::doLesson(float)+0x370c> @ imm = #-0x14
  40d9f6: 003c         	movs	r4, r7
  40d9f8: ab07         	add	r3, sp, #0x1c
  40d9fa: 681b         	ldr	r3, [r3]
  40d9fc: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40da00: 681b         	ldr	r3, [r3]
  40da02: f503 730e    	add.w	r3, r3, #0x238
  40da06: 681b         	ldr	r3, [r3]
  40da08: aa07         	add	r2, sp, #0x1c
  40da0a: 6812         	ldr	r2, [r2]
  40da0c: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40da10: 4610         	mov	r0, r2
  40da12: f04f 0100    	mov.w	r1, #0x0
  40da16: f2c4 3134    	movt	r1, #0x4334
  40da1a: 4798         	blx	r3
  40da1c: 4bc2         	ldr	r3, [pc, #0x308]        @ 0x40dd28 <TrainingStage::doLesson(float)+0x3a50>
  40da1e: 58e3         	ldr	r3, [r4, r3]
  40da20: 681b         	ldr	r3, [r3]
  40da22: 681b         	ldr	r3, [r3]
  40da24: f503 7329    	add.w	r3, r3, #0x2a4
  40da28: 681b         	ldr	r3, [r3]
  40da2a: 4abf         	ldr	r2, [pc, #0x2fc]        @ 0x40dd28 <TrainingStage::doLesson(float)+0x3a50>
  40da2c: 58a2         	ldr	r2, [r4, r2]
  40da2e: 6812         	ldr	r2, [r2]
  40da30: 4610         	mov	r0, r2
  40da32: f04f 0100    	mov.w	r1, #0x0
  40da36: 4798         	blx	r3
  40da38: 4bbb         	ldr	r3, [pc, #0x2ec]        @ 0x40dd28 <TrainingStage::doLesson(float)+0x3a50>
  40da3a: 58e3         	ldr	r3, [r4, r3]
  40da3c: 681b         	ldr	r3, [r3]
  40da3e: f8d3 2138    	ldr.w	r2, [r3, #0x138]
  40da42: 4bba         	ldr	r3, [pc, #0x2e8]        @ 0x40dd2c <TrainingStage::doLesson(float)+0x3a54>
  40da44: 447b         	add	r3, pc
  40da46: ed93 6b00    	vldr	d6, [r3]
  40da4a: ed93 7b02    	vldr	d7, [r3, #8]
  40da4e: 4610         	mov	r0, r2
  40da50: eeb0 0b46    	vmov.f64	d0, d6
  40da54: eeb0 1b47    	vmov.f64	d1, d7
  40da58: f7fa fdf6    	bl	0x408648 <Tracer::checkCollision()+0x5bc> @ imm = #-0x5414
  40da5c: 4bb2         	ldr	r3, [pc, #0x2c8]        @ 0x40dd28 <TrainingStage::doLesson(float)+0x3a50>
  40da5e: 58e3         	ldr	r3, [r4, r3]
  40da60: 681b         	ldr	r3, [r3]
  40da62: f8d3 2138    	ldr.w	r2, [r3, #0x138]
  40da66: 4bb2         	ldr	r3, [pc, #0x2c8]        @ 0x40dd30 <TrainingStage::doLesson(float)+0x3a58>
  40da68: 447b         	add	r3, pc
  40da6a: ed93 6b00    	vldr	d6, [r3]
  40da6e: ed93 7b02    	vldr	d7, [r3, #8]
  40da72: 4610         	mov	r0, r2
  40da74: eeb0 0b46    	vmov.f64	d0, d6
  40da78: eeb0 1b47    	vmov.f64	d1, d7
  40da7c: f7fa fdfa    	bl	0x408674 <Tracer::checkCollision()+0x5e8> @ imm = #-0x540c
  40da80: ab07         	add	r3, sp, #0x1c
  40da82: 681b         	ldr	r3, [r3]
  40da84: ed93 7a62    	vldr	s14, [r3, #392]
  40da88: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  40da8c: eeb4 7ae7    	vcmpe.f32	s14, s15
  40da90: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40da94: d505         	bpl	0x40daa2 <TrainingStage::doLesson(float)+0x37ca> @ imm = #0xa
  40da96: aa07         	add	r2, sp, #0x1c
  40da98: ab06         	add	r3, sp, #0x18
  40da9a: 6810         	ldr	r0, [r2]
  40da9c: 6819         	ldr	r1, [r3]
  40da9e: f7fc f9c7    	bl	0x409e30 <TrainingStage::headChatter(float)> @ imm = #-0x3c72
  40daa2: ab07         	add	r3, sp, #0x1c
  40daa4: 681b         	ldr	r3, [r3]
  40daa6: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40daaa: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  40daae: ed93 6b0a    	vldr	d6, [r3, #40]
  40dab2: 4b9d         	ldr	r3, [pc, #0x274]        @ 0x40dd28 <TrainingStage::doLesson(float)+0x3a50>
  40dab4: 58e3         	ldr	r3, [r4, r3]
  40dab6: 681b         	ldr	r3, [r3]
  40dab8: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  40dabc: ed93 5b0a    	vldr	d5, [r3, #40]
  40dac0: ed9f 7b93    	vldr	d7, [pc, #588]          @ 0x40dd10 <TrainingStage::doLesson(float)+0x3a38>
  40dac4: ee35 7b07    	vadd.f64	d7, d5, d7
  40dac8: eeb4 6bc7    	vcmpe.f64	d6, d7
  40dacc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40dad0: d526         	bpl	0x40db20 <TrainingStage::doLesson(float)+0x3848> @ imm = #0x4c
  40dad2: ab07         	add	r3, sp, #0x1c
  40dad4: 681b         	ldr	r3, [r3]
  40dad6: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40dada: 2201         	movs	r2, #0x1
  40dadc: f883 211c    	strb.w	r2, [r3, #0x11c]
  40dae0: ab07         	add	r3, sp, #0x1c
  40dae2: 681b         	ldr	r3, [r3]
  40dae4: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40dae8: 681b         	ldr	r3, [r3]
  40daea: f503 730c    	add.w	r3, r3, #0x230
  40daee: 681d         	ldr	r5, [r3]
  40daf0: ab07         	add	r3, sp, #0x1c
  40daf2: 681b         	ldr	r3, [r3]
  40daf4: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40daf8: 461e         	mov	r6, r3
  40dafa: ab68         	add	r3, sp, #0x1a0
  40dafc: 4618         	mov	r0, r3
  40dafe: ed9f 0b86    	vldr	d0, [pc, #536]          @ 0x40dd18 <TrainingStage::doLesson(float)+0x3a40>
  40db02: ed9f 1b87    	vldr	d1, [pc, #540]          @ 0x40dd20 <TrainingStage::doLesson(float)+0x3a48>
  40db06: f7fa fce5    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x5636
  40db0a: ab68         	add	r3, sp, #0x1a0
  40db0c: 466a         	mov	r2, sp
  40db0e: f103 0108    	add.w	r1, r3, #0x8
  40db12: c903         	ldm	r1, {r0, r1}
  40db14: e882 0003    	stm.w	r2, {r0, r1}
  40db18: cb0c         	ldm	r3, {r2, r3}
  40db1a: 4630         	mov	r0, r6
  40db1c: 47a8         	blx	r5
  40db1e: e025         	b	0x40db6c <TrainingStage::doLesson(float)+0x3894> @ imm = #0x4a
  40db20: ab07         	add	r3, sp, #0x1c
  40db22: 681b         	ldr	r3, [r3]
  40db24: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40db28: 2200         	movs	r2, #0x0
  40db2a: f883 211c    	strb.w	r2, [r3, #0x11c]
  40db2e: ab07         	add	r3, sp, #0x1c
  40db30: 681b         	ldr	r3, [r3]
  40db32: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40db36: 681b         	ldr	r3, [r3]
  40db38: f503 730c    	add.w	r3, r3, #0x230
  40db3c: 681d         	ldr	r5, [r3]
  40db3e: ab07         	add	r3, sp, #0x1c
  40db40: 681b         	ldr	r3, [r3]
  40db42: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40db46: 461e         	mov	r6, r3
  40db48: ab6c         	add	r3, sp, #0x1b0
  40db4a: 4618         	mov	r0, r3
  40db4c: ed9f 0b74    	vldr	d0, [pc, #464]          @ 0x40dd20 <TrainingStage::doLesson(float)+0x3a48>
  40db50: ed9f 1b73    	vldr	d1, [pc, #460]          @ 0x40dd20 <TrainingStage::doLesson(float)+0x3a48>
  40db54: f7fa fcbe    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x5684
  40db58: ab6c         	add	r3, sp, #0x1b0
  40db5a: 466a         	mov	r2, sp
  40db5c: f103 0108    	add.w	r1, r3, #0x8
  40db60: c903         	ldm	r1, {r0, r1}
  40db62: e882 0003    	stm.w	r2, {r0, r1}
  40db66: cb0c         	ldm	r3, {r2, r3}
  40db68: 4630         	mov	r0, r6
  40db6a: 47a8         	blx	r5
  40db6c: ab07         	add	r3, sp, #0x1c
  40db6e: 681b         	ldr	r3, [r3]
  40db70: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40db74: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  40db78: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  40db7c: ed93 6b0c    	vldr	d6, [r3, #48]
  40db80: 4b69         	ldr	r3, [pc, #0x1a4]        @ 0x40dd28 <TrainingStage::doLesson(float)+0x3a50>
  40db82: 58e3         	ldr	r3, [r4, r3]
  40db84: 681b         	ldr	r3, [r3]
  40db86: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  40db8a: ed93 5b0c    	vldr	d5, [r3, #48]
  40db8e: eeb3 7b09    	vmov.f64	d7, #2.500000e+01
  40db92: ee35 7b07    	vadd.f64	d7, d5, d7
  40db96: eeb4 6bc7    	vcmpe.f64	d6, d7
  40db9a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40db9e: f140 80cd    	bpl.w	0x40dd3c <TrainingStage::doLesson(float)+0x3a64> @ imm = #0x19a
  40dba2: ab07         	add	r3, sp, #0x1c
  40dba4: 681b         	ldr	r3, [r3]
  40dba6: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  40dbaa: 1c5a         	adds	r2, r3, #0x1
  40dbac: ab07         	add	r3, sp, #0x1c
  40dbae: 681b         	ldr	r3, [r3]
  40dbb0: f8c3 2180    	str.w	r2, [r3, #0x180]
  40dbb4: ab07         	add	r3, sp, #0x1c
  40dbb6: 681b         	ldr	r3, [r3]
  40dbb8: f04f 0200    	mov.w	r2, #0x0
  40dbbc: f8c3 2188    	str.w	r2, [r3, #0x188]
  40dbc0: ab07         	add	r3, sp, #0x1c
  40dbc2: 681b         	ldr	r3, [r3]
  40dbc4: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  40dbc8: f50d 6380    	add.w	r3, sp, #0x400
  40dbcc: 4618         	mov	r0, r3
  40dbce: f37c fc11    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37c822
  40dbd2: f50d 6282    	add.w	r2, sp, #0x410
  40dbd6: f50d 6380    	add.w	r3, sp, #0x400
  40dbda: 4610         	mov	r0, r2
  40dbdc: 4a55         	ldr	r2, [pc, #0x154]        @ 0x40dd34 <TrainingStage::doLesson(float)+0x3a5c>
  40dbde: 447a         	add	r2, pc
  40dbe0: 4611         	mov	r1, r2
  40dbe2: 461a         	mov	r2, r3
  40dbe4: f3a8 ff3c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3a8e78
  40dbe8: 2000         	movs	r0, #0x0
  40dbea: 2100         	movs	r1, #0x0
  40dbec: 22ff         	movs	r2, #0xff
  40dbee: f7fa fc33    	bl	0x408458 <Tracer::checkCollision()+0x3cc> @ imm = #-0x579a
  40dbf2: 4602         	mov	r2, r0
  40dbf4: ab1f         	add	r3, sp, #0x7c
  40dbf6: 4611         	mov	r1, r2
  40dbf8: 7019         	strb	r1, [r3]
  40dbfa: f3c2 2107    	ubfx	r1, r2, #0x8, #0x8
  40dbfe: 7059         	strb	r1, [r3, #0x1]
  40dc00: f3c2 4207    	ubfx	r2, r2, #0x10, #0x8
  40dc04: 709a         	strb	r2, [r3, #0x2]
  40dc06: f50d 6282    	add.w	r2, sp, #0x410
  40dc0a: ab1f         	add	r3, sp, #0x7c
  40dc0c: 4628         	mov	r0, r5
  40dc0e: 4611         	mov	r1, r2
  40dc10: 681a         	ldr	r2, [r3]
  40dc12: 2302         	movs	r3, #0x2
  40dc14: f72f fb54    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xd0958
  40dc18: f50d 6382    	add.w	r3, sp, #0x410
  40dc1c: 4618         	mov	r0, r3
  40dc1e: f3a7 fe79    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a7cf2
  40dc22: f50d 6380    	add.w	r3, sp, #0x400
  40dc26: 4618         	mov	r0, r3
  40dc28: f37c fbe8    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37c7d0
  40dc2c: ab07         	add	r3, sp, #0x1c
  40dc2e: 681b         	ldr	r3, [r3]
  40dc30: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40dc34: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  40dc38: 2200         	movs	r2, #0x0
  40dc3a: f883 211c    	strb.w	r2, [r3, #0x11c]
  40dc3e: ab07         	add	r3, sp, #0x1c
  40dc40: 681b         	ldr	r3, [r3]
  40dc42: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40dc46: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  40dc4a: 681b         	ldr	r3, [r3]
  40dc4c: f503 73f0    	add.w	r3, r3, #0x1e0
  40dc50: 681b         	ldr	r3, [r3]
  40dc52: aa07         	add	r2, sp, #0x1c
  40dc54: 6812         	ldr	r2, [r2]
  40dc56: f8d2 21a8    	ldr.w	r2, [r2, #0x1a8]
  40dc5a: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  40dc5e: 4610         	mov	r0, r2
  40dc60: 2100         	movs	r1, #0x0
  40dc62: 4798         	blx	r3
  40dc64: ab07         	add	r3, sp, #0x1c
  40dc66: 681b         	ldr	r3, [r3]
  40dc68: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40dc6c: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  40dc70: 681b         	ldr	r3, [r3]
  40dc72: f503 730c    	add.w	r3, r3, #0x230
  40dc76: 681d         	ldr	r5, [r3]
  40dc78: ab07         	add	r3, sp, #0x1c
  40dc7a: 681b         	ldr	r3, [r3]
  40dc7c: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40dc80: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  40dc84: 461e         	mov	r6, r3
  40dc86: ab70         	add	r3, sp, #0x1c0
  40dc88: 4618         	mov	r0, r3
  40dc8a: ed9f 0b25    	vldr	d0, [pc, #148]          @ 0x40dd20 <TrainingStage::doLesson(float)+0x3a48>
  40dc8e: ed9f 1b24    	vldr	d1, [pc, #144]          @ 0x40dd20 <TrainingStage::doLesson(float)+0x3a48>
  40dc92: f7fa fc1f    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x57c2
  40dc96: ab70         	add	r3, sp, #0x1c0
  40dc98: 466a         	mov	r2, sp
  40dc9a: f103 0108    	add.w	r1, r3, #0x8
  40dc9e: c903         	ldm	r1, {r0, r1}
  40dca0: e882 0003    	stm.w	r2, {r0, r1}
  40dca4: cb0c         	ldm	r3, {r2, r3}
  40dca6: 4630         	mov	r0, r6
  40dca8: 47a8         	blx	r5
  40dcaa: 4b23         	ldr	r3, [pc, #0x8c]         @ 0x40dd38 <TrainingStage::doLesson(float)+0x3a60>
  40dcac: 58e3         	ldr	r3, [r4, r3]
  40dcae: 681b         	ldr	r3, [r3]
  40dcb0: 4618         	mov	r0, r3
  40dcb2: 2148         	movs	r1, #0x48
  40dcb4: 2201         	movs	r2, #0x1
  40dcb6: f7ea f843    	bl	0x3f7d40 <Sound::playSoundWithVoice(int, int)> @ imm = #-0x15f7a
  40dcba: ab07         	add	r3, sp, #0x1c
  40dcbc: 681b         	ldr	r3, [r3]
  40dcbe: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40dcc2: 2200         	movs	r2, #0x0
  40dcc4: f883 211c    	strb.w	r2, [r3, #0x11c]
  40dcc8: ab07         	add	r3, sp, #0x1c
  40dcca: 681b         	ldr	r3, [r3]
  40dccc: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40dcd0: 681b         	ldr	r3, [r3]
  40dcd2: f503 730c    	add.w	r3, r3, #0x230
  40dcd6: 681c         	ldr	r4, [r3]
  40dcd8: ab07         	add	r3, sp, #0x1c
  40dcda: 681b         	ldr	r3, [r3]
  40dcdc: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40dce0: 461d         	mov	r5, r3
  40dce2: ab74         	add	r3, sp, #0x1d0
  40dce4: 4618         	mov	r0, r3
  40dce6: ed9f 0b0e    	vldr	d0, [pc, #56]           @ 0x40dd20 <TrainingStage::doLesson(float)+0x3a48>
  40dcea: ed9f 1b0d    	vldr	d1, [pc, #52]           @ 0x40dd20 <TrainingStage::doLesson(float)+0x3a48>
  40dcee: f7fa fbf1    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x581e
  40dcf2: ab74         	add	r3, sp, #0x1d0
  40dcf4: 466a         	mov	r2, sp
  40dcf6: f103 0108    	add.w	r1, r3, #0x8
  40dcfa: c903         	ldm	r1, {r0, r1}
  40dcfc: e882 0003    	stm.w	r2, {r0, r1}
  40dd00: cb0c         	ldm	r3, {r2, r3}
  40dd02: 4628         	mov	r0, r5
  40dd04: 47a0         	blx	r4
  40dd06: f004 b905    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x420a
  40dd0a: bf00         	nop
  40dd0c: f3af 8000    	nop.w
  40dd10: 0000         	movs	r0, r0
  40dd12: 0000         	movs	r0, r0
  40dd14: c000         	<unknown>
  40dd16: 4062         	eors	r2, r4
  40dd18: 999a         	ldr	r1, [sp, #0x268]
  40dd1a: 9999         	ldr	r1, [sp, #0x264]
  40dd1c: 9999         	ldr	r1, [sp, #0x264]
  40dd1e: 3fe1         	subs	r7, #0xe1
  40dd28: d784         	bvc	0x40dc34 <TrainingStage::doLesson(float)+0x395c> @ imm = #-0xf8
  40dd2a: ffff d520    	<unknown>
  40dd2e: 003c         	movs	r4, r7
  40dd30: d4fc         	bmi	0x40dd2c <TrainingStage::doLesson(float)+0x3a54> @ imm = #-0x8
  40dd32: 003c         	movs	r4, r7
  40dd34: d05e         	beq	0x40ddf4 <TrainingStage::doLesson(float)+0x3b1c> @ imm = #0xbc
  40dd36: 003c         	movs	r4, r7
  40dd38: d730         	bvc	0x40dd9c <TrainingStage::doLesson(float)+0x3ac4> @ imm = #0x60
  40dd3a: ffff ab07    	vtbl.8	d26, {d15, d16, d17, d18}, d7
  40dd3e: 681b         	ldr	r3, [r3]
  40dd40: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40dd44: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  40dd48: 681b         	ldr	r3, [r3]
  40dd4a: f503 730e    	add.w	r3, r3, #0x238
  40dd4e: 681b         	ldr	r3, [r3]
  40dd50: aa07         	add	r2, sp, #0x1c
  40dd52: 6812         	ldr	r2, [r2]
  40dd54: f8d2 21a8    	ldr.w	r2, [r2, #0x1a8]
  40dd58: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  40dd5c: 4610         	mov	r0, r2
  40dd5e: f04f 0100    	mov.w	r1, #0x0
  40dd62: f2c4 3134    	movt	r1, #0x4334
  40dd66: 4798         	blx	r3
  40dd68: ab07         	add	r3, sp, #0x1c
  40dd6a: 681b         	ldr	r3, [r3]
  40dd6c: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40dd70: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  40dd74: 2201         	movs	r2, #0x1
  40dd76: f883 211c    	strb.w	r2, [r3, #0x11c]
  40dd7a: ab07         	add	r3, sp, #0x1c
  40dd7c: 681b         	ldr	r3, [r3]
  40dd7e: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40dd82: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  40dd86: 681b         	ldr	r3, [r3]
  40dd88: f503 730c    	add.w	r3, r3, #0x230
  40dd8c: 681c         	ldr	r4, [r3]
  40dd8e: ab07         	add	r3, sp, #0x1c
  40dd90: 681b         	ldr	r3, [r3]
  40dd92: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40dd96: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  40dd9a: 461d         	mov	r5, r3
  40dd9c: ab78         	add	r3, sp, #0x1e0
  40dd9e: 4618         	mov	r0, r3
  40dda0: ed9f 0b9f    	vldr	d0, [pc, #636]          @ 0x40e020 <TrainingStage::doLesson(float)+0x3d48>
  40dda4: ed9f 1b9e    	vldr	d1, [pc, #632]          @ 0x40e020 <TrainingStage::doLesson(float)+0x3d48>
  40dda8: f7fa fb94    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x58d8
  40ddac: ab78         	add	r3, sp, #0x1e0
  40ddae: 466a         	mov	r2, sp
  40ddb0: f103 0108    	add.w	r1, r3, #0x8
  40ddb4: c903         	ldm	r1, {r0, r1}
  40ddb6: e882 0003    	stm.w	r2, {r0, r1}
  40ddba: cb0c         	ldm	r3, {r2, r3}
  40ddbc: 4628         	mov	r0, r5
  40ddbe: 47a0         	blx	r4
  40ddc0: ab07         	add	r3, sp, #0x1c
  40ddc2: 681b         	ldr	r3, [r3]
  40ddc4: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40ddc8: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  40ddcc: 681b         	ldr	r3, [r3]
  40ddce: f503 73f0    	add.w	r3, r3, #0x1e0
  40ddd2: 681b         	ldr	r3, [r3]
  40ddd4: aa07         	add	r2, sp, #0x1c
  40ddd6: 6812         	ldr	r2, [r2]
  40ddd8: f8d2 21a8    	ldr.w	r2, [r2, #0x1a8]
  40dddc: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  40dde0: 4610         	mov	r0, r2
  40dde2: 2101         	movs	r1, #0x1
  40dde4: 4798         	blx	r3
  40dde6: f004 b895    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x412a
  40ddea: ab07         	add	r3, sp, #0x1c
  40ddec: 681b         	ldr	r3, [r3]
  40ddee: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40ddf2: 681b         	ldr	r3, [r3]
  40ddf4: f503 730e    	add.w	r3, r3, #0x238
  40ddf8: 681b         	ldr	r3, [r3]
  40ddfa: aa07         	add	r2, sp, #0x1c
  40ddfc: 6812         	ldr	r2, [r2]
  40ddfe: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40de02: 4610         	mov	r0, r2
  40de04: f04f 0100    	mov.w	r1, #0x0
  40de08: f2c4 3134    	movt	r1, #0x4334
  40de0c: 4798         	blx	r3
  40de0e: 4b86         	ldr	r3, [pc, #0x218]        @ 0x40e028 <TrainingStage::doLesson(float)+0x3d50>
  40de10: 58e3         	ldr	r3, [r4, r3]
  40de12: 681b         	ldr	r3, [r3]
  40de14: 681b         	ldr	r3, [r3]
  40de16: f503 7329    	add.w	r3, r3, #0x2a4
  40de1a: 681b         	ldr	r3, [r3]
  40de1c: 4a82         	ldr	r2, [pc, #0x208]        @ 0x40e028 <TrainingStage::doLesson(float)+0x3d50>
  40de1e: 58a2         	ldr	r2, [r4, r2]
  40de20: 6812         	ldr	r2, [r2]
  40de22: 4610         	mov	r0, r2
  40de24: f04f 0100    	mov.w	r1, #0x0
  40de28: 4798         	blx	r3
  40de2a: ab07         	add	r3, sp, #0x1c
  40de2c: 681b         	ldr	r3, [r3]
  40de2e: ed93 7a62    	vldr	s14, [r3, #392]
  40de32: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  40de36: eeb4 7ae7    	vcmpe.f32	s14, s15
  40de3a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40de3e: d505         	bpl	0x40de4c <TrainingStage::doLesson(float)+0x3b74> @ imm = #0xa
  40de40: aa07         	add	r2, sp, #0x1c
  40de42: ab06         	add	r3, sp, #0x18
  40de44: 6810         	ldr	r0, [r2]
  40de46: 6819         	ldr	r1, [r3]
  40de48: f7fb fff2    	bl	0x409e30 <TrainingStage::headChatter(float)> @ imm = #-0x401c
  40de4c: ab07         	add	r3, sp, #0x1c
  40de4e: 681b         	ldr	r3, [r3]
  40de50: ed93 7a62    	vldr	s14, [r3, #392]
  40de54: eef0 7a04    	vmov.f32	s15, #2.500000e+00
  40de58: eeb4 7ae7    	vcmpe.f32	s14, s15
  40de5c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40de60: dc01         	bgt	0x40de66 <TrainingStage::doLesson(float)+0x3b8e> @ imm = #0x2
  40de62: f004 b857    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x40ae
  40de66: ab07         	add	r3, sp, #0x1c
  40de68: 681b         	ldr	r3, [r3]
  40de6a: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  40de6e: 1c5a         	adds	r2, r3, #0x1
  40de70: ab07         	add	r3, sp, #0x1c
  40de72: 681b         	ldr	r3, [r3]
  40de74: f8c3 2180    	str.w	r2, [r3, #0x180]
  40de78: ab07         	add	r3, sp, #0x1c
  40de7a: 681b         	ldr	r3, [r3]
  40de7c: f04f 0200    	mov.w	r2, #0x0
  40de80: f8c3 2188    	str.w	r2, [r3, #0x188]
  40de84: ab07         	add	r3, sp, #0x1c
  40de86: 681b         	ldr	r3, [r3]
  40de88: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  40de8c: f50d 6380    	add.w	r3, sp, #0x400
  40de90: 4618         	mov	r0, r3
  40de92: f37c faaf    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37c55e
  40de96: f50d 6282    	add.w	r2, sp, #0x410
  40de9a: f50d 6380    	add.w	r3, sp, #0x400
  40de9e: 4610         	mov	r0, r2
  40dea0: 4a62         	ldr	r2, [pc, #0x188]        @ 0x40e02c <TrainingStage::doLesson(float)+0x3d54>
  40dea2: 447a         	add	r2, pc
  40dea4: 4611         	mov	r1, r2
  40dea6: 461a         	mov	r2, r3
  40dea8: f3a8 fdda    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3a8bb4
  40deac: 2000         	movs	r0, #0x0
  40deae: 2100         	movs	r1, #0x0
  40deb0: 22ff         	movs	r2, #0xff
  40deb2: f7fa fad1    	bl	0x408458 <Tracer::checkCollision()+0x3cc> @ imm = #-0x5a5e
  40deb6: 4602         	mov	r2, r0
  40deb8: ab20         	add	r3, sp, #0x80
  40deba: 4611         	mov	r1, r2
  40debc: 7019         	strb	r1, [r3]
  40debe: f3c2 2107    	ubfx	r1, r2, #0x8, #0x8
  40dec2: 7059         	strb	r1, [r3, #0x1]
  40dec4: f3c2 4207    	ubfx	r2, r2, #0x10, #0x8
  40dec8: 709a         	strb	r2, [r3, #0x2]
  40deca: f50d 6282    	add.w	r2, sp, #0x410
  40dece: ab20         	add	r3, sp, #0x80
  40ded0: 4628         	mov	r0, r5
  40ded2: 4611         	mov	r1, r2
  40ded4: 681a         	ldr	r2, [r3]
  40ded6: 2302         	movs	r3, #0x2
  40ded8: f72f f9f2    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xd0c1c
  40dedc: f50d 6382    	add.w	r3, sp, #0x410
  40dee0: 4618         	mov	r0, r3
  40dee2: f3a7 fd17    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a7a2e
  40dee6: f50d 6380    	add.w	r3, sp, #0x400
  40deea: 4618         	mov	r0, r3
  40deec: f37c fa86    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37c50c
  40def0: 4b4f         	ldr	r3, [pc, #0x13c]        @ 0x40e030 <TrainingStage::doLesson(float)+0x3d58>
  40def2: 58e3         	ldr	r3, [r4, r3]
  40def4: 681b         	ldr	r3, [r3]
  40def6: 4618         	mov	r0, r3
  40def8: 2149         	movs	r1, #0x49
  40defa: 2201         	movs	r2, #0x1
  40defc: f7e9 ff20    	bl	0x3f7d40 <Sound::playSoundWithVoice(int, int)> @ imm = #-0x161c0
  40df00: f004 b808    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x4010
  40df04: ab07         	add	r3, sp, #0x1c
  40df06: 681b         	ldr	r3, [r3]
  40df08: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40df0c: 681b         	ldr	r3, [r3]
  40df0e: f503 730e    	add.w	r3, r3, #0x238
  40df12: 681b         	ldr	r3, [r3]
  40df14: aa07         	add	r2, sp, #0x1c
  40df16: 6812         	ldr	r2, [r2]
  40df18: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40df1c: 4610         	mov	r0, r2
  40df1e: f04f 0100    	mov.w	r1, #0x0
  40df22: f2c4 3134    	movt	r1, #0x4334
  40df26: 4798         	blx	r3
  40df28: 4b3f         	ldr	r3, [pc, #0xfc]         @ 0x40e028 <TrainingStage::doLesson(float)+0x3d50>
  40df2a: 58e3         	ldr	r3, [r4, r3]
  40df2c: 681b         	ldr	r3, [r3]
  40df2e: 681b         	ldr	r3, [r3]
  40df30: f503 7329    	add.w	r3, r3, #0x2a4
  40df34: 681b         	ldr	r3, [r3]
  40df36: 4a3c         	ldr	r2, [pc, #0xf0]         @ 0x40e028 <TrainingStage::doLesson(float)+0x3d50>
  40df38: 58a2         	ldr	r2, [r4, r2]
  40df3a: 6812         	ldr	r2, [r2]
  40df3c: 4610         	mov	r0, r2
  40df3e: f04f 0100    	mov.w	r1, #0x0
  40df42: 4798         	blx	r3
  40df44: ab07         	add	r3, sp, #0x1c
  40df46: 681b         	ldr	r3, [r3]
  40df48: ed93 7a62    	vldr	s14, [r3, #392]
  40df4c: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  40df50: eeb4 7ae7    	vcmpe.f32	s14, s15
  40df54: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40df58: d505         	bpl	0x40df66 <TrainingStage::doLesson(float)+0x3c8e> @ imm = #0xa
  40df5a: aa07         	add	r2, sp, #0x1c
  40df5c: ab06         	add	r3, sp, #0x18
  40df5e: 6810         	ldr	r0, [r2]
  40df60: 6819         	ldr	r1, [r3]
  40df62: f7fb ff65    	bl	0x409e30 <TrainingStage::headChatter(float)> @ imm = #-0x4136
  40df66: ab07         	add	r3, sp, #0x1c
  40df68: 681b         	ldr	r3, [r3]
  40df6a: ed93 7a62    	vldr	s14, [r3, #392]
  40df6e: eef0 7a04    	vmov.f32	s15, #2.500000e+00
  40df72: eeb4 7ae7    	vcmpe.f32	s14, s15
  40df76: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40df7a: dc01         	bgt	0x40df80 <TrainingStage::doLesson(float)+0x3ca8> @ imm = #0x2
  40df7c: f003 bfca    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x3f94
  40df80: ab07         	add	r3, sp, #0x1c
  40df82: 681b         	ldr	r3, [r3]
  40df84: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  40df88: 1c5a         	adds	r2, r3, #0x1
  40df8a: ab07         	add	r3, sp, #0x1c
  40df8c: 681b         	ldr	r3, [r3]
  40df8e: f8c3 2180    	str.w	r2, [r3, #0x180]
  40df92: ab07         	add	r3, sp, #0x1c
  40df94: 681b         	ldr	r3, [r3]
  40df96: f04f 0200    	mov.w	r2, #0x0
  40df9a: f8c3 2188    	str.w	r2, [r3, #0x188]
  40df9e: ab07         	add	r3, sp, #0x1c
  40dfa0: 681b         	ldr	r3, [r3]
  40dfa2: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  40dfa6: f50d 6380    	add.w	r3, sp, #0x400
  40dfaa: 4618         	mov	r0, r3
  40dfac: f37c fa22    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37c444
  40dfb0: f50d 6282    	add.w	r2, sp, #0x410
  40dfb4: f50d 6380    	add.w	r3, sp, #0x400
  40dfb8: 4610         	mov	r0, r2
  40dfba: 4a1e         	ldr	r2, [pc, #0x78]         @ 0x40e034 <TrainingStage::doLesson(float)+0x3d5c>
  40dfbc: 447a         	add	r2, pc
  40dfbe: 4611         	mov	r1, r2
  40dfc0: 461a         	mov	r2, r3
  40dfc2: f3a8 fd4d    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3a8a9a
  40dfc6: 2000         	movs	r0, #0x0
  40dfc8: 2100         	movs	r1, #0x0
  40dfca: 22ff         	movs	r2, #0xff
  40dfcc: f7fa fa44    	bl	0x408458 <Tracer::checkCollision()+0x3cc> @ imm = #-0x5b78
  40dfd0: 4602         	mov	r2, r0
  40dfd2: ab21         	add	r3, sp, #0x84
  40dfd4: 4611         	mov	r1, r2
  40dfd6: 7019         	strb	r1, [r3]
  40dfd8: f3c2 2107    	ubfx	r1, r2, #0x8, #0x8
  40dfdc: 7059         	strb	r1, [r3, #0x1]
  40dfde: f3c2 4207    	ubfx	r2, r2, #0x10, #0x8
  40dfe2: 709a         	strb	r2, [r3, #0x2]
  40dfe4: f50d 6282    	add.w	r2, sp, #0x410
  40dfe8: ab21         	add	r3, sp, #0x84
  40dfea: 4628         	mov	r0, r5
  40dfec: 4611         	mov	r1, r2
  40dfee: 681a         	ldr	r2, [r3]
  40dff0: 2302         	movs	r3, #0x2
  40dff2: f72f f965    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xd0d36
  40dff6: f50d 6382    	add.w	r3, sp, #0x410
  40dffa: 4618         	mov	r0, r3
  40dffc: f3a7 fc8a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a7914
  40e000: f50d 6380    	add.w	r3, sp, #0x400
  40e004: 4618         	mov	r0, r3
  40e006: f37c f9f9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37c3f2
  40e00a: 4b09         	ldr	r3, [pc, #0x24]         @ 0x40e030 <TrainingStage::doLesson(float)+0x3d58>
  40e00c: 58e3         	ldr	r3, [r4, r3]
  40e00e: 681b         	ldr	r3, [r3]
  40e010: 4618         	mov	r0, r3
  40e012: 214a         	movs	r1, #0x4a
  40e014: 2201         	movs	r2, #0x1
  40e016: f7e9 fe93    	bl	0x3f7d40 <Sound::playSoundWithVoice(int, int)> @ imm = #-0x162da
  40e01a: f003 bf7b    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x3ef6
  40e01e: bf00         	nop
  40e028: d784         	bvc	0x40df34 <TrainingStage::doLesson(float)+0x3c5c> @ imm = #-0xf8
  40e02a: ffff cdbe    	<unknown>
  40e02e: 003c         	movs	r4, r7
  40e030: d730         	bvc	0x40e094 <TrainingStage::doLesson(float)+0x3dbc> @ imm = #0x60
  40e032: ffff ccc8    	<unknown>
  40e036: 003c         	movs	r4, r7
  40e038: ab07         	add	r3, sp, #0x1c
  40e03a: 681b         	ldr	r3, [r3]
  40e03c: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40e040: 681b         	ldr	r3, [r3]
  40e042: f503 730e    	add.w	r3, r3, #0x238
  40e046: 681b         	ldr	r3, [r3]
  40e048: aa07         	add	r2, sp, #0x1c
  40e04a: 6812         	ldr	r2, [r2]
  40e04c: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40e050: 4610         	mov	r0, r2
  40e052: f04f 0100    	mov.w	r1, #0x0
  40e056: f2c4 3134    	movt	r1, #0x4334
  40e05a: 4798         	blx	r3
  40e05c: f8df 35f0    	ldr.w	r3, [pc, #0x5f0]        @ 0x40e650 <TrainingStage::doLesson(float)+0x4378>
  40e060: 58e3         	ldr	r3, [r4, r3]
  40e062: 681b         	ldr	r3, [r3]
  40e064: 681b         	ldr	r3, [r3]
  40e066: f503 7329    	add.w	r3, r3, #0x2a4
  40e06a: 681b         	ldr	r3, [r3]
  40e06c: f8df 25e0    	ldr.w	r2, [pc, #0x5e0]        @ 0x40e650 <TrainingStage::doLesson(float)+0x4378>
  40e070: 58a2         	ldr	r2, [r4, r2]
  40e072: 6812         	ldr	r2, [r2]
  40e074: 4610         	mov	r0, r2
  40e076: f04f 0100    	mov.w	r1, #0x0
  40e07a: 4798         	blx	r3
  40e07c: ab07         	add	r3, sp, #0x1c
  40e07e: 681b         	ldr	r3, [r3]
  40e080: ed93 7a62    	vldr	s14, [r3, #392]
  40e084: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  40e088: eeb4 7ae7    	vcmpe.f32	s14, s15
  40e08c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40e090: d505         	bpl	0x40e09e <TrainingStage::doLesson(float)+0x3dc6> @ imm = #0xa
  40e092: aa07         	add	r2, sp, #0x1c
  40e094: ab06         	add	r3, sp, #0x18
  40e096: 6810         	ldr	r0, [r2]
  40e098: 6819         	ldr	r1, [r3]
  40e09a: f7fb fec9    	bl	0x409e30 <TrainingStage::headChatter(float)> @ imm = #-0x426e
  40e09e: ab07         	add	r3, sp, #0x1c
  40e0a0: 681b         	ldr	r3, [r3]
  40e0a2: ed93 7a62    	vldr	s14, [r3, #392]
  40e0a6: eef0 7a04    	vmov.f32	s15, #2.500000e+00
  40e0aa: eeb4 7ae7    	vcmpe.f32	s14, s15
  40e0ae: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40e0b2: dc01         	bgt	0x40e0b8 <TrainingStage::doLesson(float)+0x3de0> @ imm = #0x2
  40e0b4: f003 bf2e    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x3e5c
  40e0b8: ab07         	add	r3, sp, #0x1c
  40e0ba: 681b         	ldr	r3, [r3]
  40e0bc: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  40e0c0: 1c5a         	adds	r2, r3, #0x1
  40e0c2: ab07         	add	r3, sp, #0x1c
  40e0c4: 681b         	ldr	r3, [r3]
  40e0c6: f8c3 2180    	str.w	r2, [r3, #0x180]
  40e0ca: ab07         	add	r3, sp, #0x1c
  40e0cc: 681b         	ldr	r3, [r3]
  40e0ce: f04f 0200    	mov.w	r2, #0x0
  40e0d2: f8c3 2188    	str.w	r2, [r3, #0x188]
  40e0d6: ab07         	add	r3, sp, #0x1c
  40e0d8: 681b         	ldr	r3, [r3]
  40e0da: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40e0de: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  40e0e2: 681b         	ldr	r3, [r3]
  40e0e4: f503 730e    	add.w	r3, r3, #0x238
  40e0e8: 681b         	ldr	r3, [r3]
  40e0ea: aa07         	add	r2, sp, #0x1c
  40e0ec: 6812         	ldr	r2, [r2]
  40e0ee: f8d2 21a8    	ldr.w	r2, [r2, #0x1a8]
  40e0f2: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  40e0f6: 4610         	mov	r0, r2
  40e0f8: f04f 0100    	mov.w	r1, #0x0
  40e0fc: 4798         	blx	r3
  40e0fe: ab07         	add	r3, sp, #0x1c
  40e100: 681b         	ldr	r3, [r3]
  40e102: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  40e106: f50d 6380    	add.w	r3, sp, #0x400
  40e10a: 4618         	mov	r0, r3
  40e10c: f37c f972    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37c2e4
  40e110: f50d 6282    	add.w	r2, sp, #0x410
  40e114: f50d 6380    	add.w	r3, sp, #0x400
  40e118: 4610         	mov	r0, r2
  40e11a: f8df 2538    	ldr.w	r2, [pc, #0x538]        @ 0x40e654 <TrainingStage::doLesson(float)+0x437c>
  40e11e: 447a         	add	r2, pc
  40e120: 4611         	mov	r1, r2
  40e122: 461a         	mov	r2, r3
  40e124: f3a8 fc9c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3a8938
  40e128: 20ff         	movs	r0, #0xff
  40e12a: 2100         	movs	r1, #0x0
  40e12c: 2200         	movs	r2, #0x0
  40e12e: f7fa f993    	bl	0x408458 <Tracer::checkCollision()+0x3cc> @ imm = #-0x5cda
  40e132: 4602         	mov	r2, r0
  40e134: ab22         	add	r3, sp, #0x88
  40e136: 4611         	mov	r1, r2
  40e138: 7019         	strb	r1, [r3]
  40e13a: f3c2 2107    	ubfx	r1, r2, #0x8, #0x8
  40e13e: 7059         	strb	r1, [r3, #0x1]
  40e140: f3c2 4207    	ubfx	r2, r2, #0x10, #0x8
  40e144: 709a         	strb	r2, [r3, #0x2]
  40e146: f50d 6282    	add.w	r2, sp, #0x410
  40e14a: ab22         	add	r3, sp, #0x88
  40e14c: 4628         	mov	r0, r5
  40e14e: 4611         	mov	r1, r2
  40e150: 681a         	ldr	r2, [r3]
  40e152: 2302         	movs	r3, #0x2
  40e154: f72f f8b4    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xd0e98
  40e158: f50d 6382    	add.w	r3, sp, #0x410
  40e15c: 4618         	mov	r0, r3
  40e15e: f3a7 fbd9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a77b2
  40e162: f50d 6380    	add.w	r3, sp, #0x400
  40e166: 4618         	mov	r0, r3
  40e168: f37c f948    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37c290
  40e16c: f8df 34e8    	ldr.w	r3, [pc, #0x4e8]        @ 0x40e658 <TrainingStage::doLesson(float)+0x4380>
  40e170: 58e3         	ldr	r3, [r4, r3]
  40e172: 681b         	ldr	r3, [r3]
  40e174: 4618         	mov	r0, r3
  40e176: 2159         	movs	r1, #0x59
  40e178: 2201         	movs	r2, #0x1
  40e17a: f7e9 fde1    	bl	0x3f7d40 <Sound::playSoundWithVoice(int, int)> @ imm = #-0x1643e
  40e17e: f003 bec9    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x3d92
  40e182: ab07         	add	r3, sp, #0x1c
  40e184: 681b         	ldr	r3, [r3]
  40e186: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40e18a: 681b         	ldr	r3, [r3]
  40e18c: f503 730e    	add.w	r3, r3, #0x238
  40e190: 681b         	ldr	r3, [r3]
  40e192: aa07         	add	r2, sp, #0x1c
  40e194: 6812         	ldr	r2, [r2]
  40e196: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40e19a: 4610         	mov	r0, r2
  40e19c: f04f 0100    	mov.w	r1, #0x0
  40e1a0: f2c4 3134    	movt	r1, #0x4334
  40e1a4: 4798         	blx	r3
  40e1a6: f8df 34a8    	ldr.w	r3, [pc, #0x4a8]        @ 0x40e650 <TrainingStage::doLesson(float)+0x4378>
  40e1aa: 58e3         	ldr	r3, [r4, r3]
  40e1ac: 681b         	ldr	r3, [r3]
  40e1ae: 681b         	ldr	r3, [r3]
  40e1b0: f503 7329    	add.w	r3, r3, #0x2a4
  40e1b4: 681b         	ldr	r3, [r3]
  40e1b6: f8df 2498    	ldr.w	r2, [pc, #0x498]        @ 0x40e650 <TrainingStage::doLesson(float)+0x4378>
  40e1ba: 58a2         	ldr	r2, [r4, r2]
  40e1bc: 6812         	ldr	r2, [r2]
  40e1be: 4610         	mov	r0, r2
  40e1c0: f04f 0100    	mov.w	r1, #0x0
  40e1c4: 4798         	blx	r3
  40e1c6: ab07         	add	r3, sp, #0x1c
  40e1c8: 681b         	ldr	r3, [r3]
  40e1ca: ed93 7a62    	vldr	s14, [r3, #392]
  40e1ce: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  40e1d2: eeb4 7ae7    	vcmpe.f32	s14, s15
  40e1d6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40e1da: dc01         	bgt	0x40e1e0 <TrainingStage::doLesson(float)+0x3f08> @ imm = #0x2
  40e1dc: f003 be9a    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x3d34
  40e1e0: ab07         	add	r3, sp, #0x1c
  40e1e2: 681b         	ldr	r3, [r3]
  40e1e4: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  40e1e8: 1c5a         	adds	r2, r3, #0x1
  40e1ea: ab07         	add	r3, sp, #0x1c
  40e1ec: 681b         	ldr	r3, [r3]
  40e1ee: f8c3 2180    	str.w	r2, [r3, #0x180]
  40e1f2: ab07         	add	r3, sp, #0x1c
  40e1f4: 681b         	ldr	r3, [r3]
  40e1f6: f04f 0200    	mov.w	r2, #0x0
  40e1fa: f8c3 2188    	str.w	r2, [r3, #0x188]
  40e1fe: ab07         	add	r3, sp, #0x1c
  40e200: 681b         	ldr	r3, [r3]
  40e202: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  40e206: f50d 6380    	add.w	r3, sp, #0x400
  40e20a: 4618         	mov	r0, r3
  40e20c: f37c f8f2    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37c1e4
  40e210: f50d 6282    	add.w	r2, sp, #0x410
  40e214: f50d 6380    	add.w	r3, sp, #0x400
  40e218: 4610         	mov	r0, r2
  40e21a: f8df 2440    	ldr.w	r2, [pc, #0x440]        @ 0x40e65c <TrainingStage::doLesson(float)+0x4384>
  40e21e: 447a         	add	r2, pc
  40e220: 4611         	mov	r1, r2
  40e222: 461a         	mov	r2, r3
  40e224: f3a8 fc1c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3a8838
  40e228: 2000         	movs	r0, #0x0
  40e22a: 2100         	movs	r1, #0x0
  40e22c: 22ff         	movs	r2, #0xff
  40e22e: f7fa f913    	bl	0x408458 <Tracer::checkCollision()+0x3cc> @ imm = #-0x5dda
  40e232: 4602         	mov	r2, r0
  40e234: ab23         	add	r3, sp, #0x8c
  40e236: 4611         	mov	r1, r2
  40e238: 7019         	strb	r1, [r3]
  40e23a: f3c2 2107    	ubfx	r1, r2, #0x8, #0x8
  40e23e: 7059         	strb	r1, [r3, #0x1]
  40e240: f3c2 4207    	ubfx	r2, r2, #0x10, #0x8
  40e244: 709a         	strb	r2, [r3, #0x2]
  40e246: f50d 6282    	add.w	r2, sp, #0x410
  40e24a: ab23         	add	r3, sp, #0x8c
  40e24c: 4628         	mov	r0, r5
  40e24e: 4611         	mov	r1, r2
  40e250: 681a         	ldr	r2, [r3]
  40e252: 2302         	movs	r3, #0x2
  40e254: f72f f834    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xd0f98
  40e258: f50d 6382    	add.w	r3, sp, #0x410
  40e25c: 4618         	mov	r0, r3
  40e25e: f3a7 fb59    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a76b2
  40e262: f50d 6380    	add.w	r3, sp, #0x400
  40e266: 4618         	mov	r0, r3
  40e268: f37c f8c8    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37c190
  40e26c: 4bfa         	ldr	r3, [pc, #0x3e8]        @ 0x40e658 <TrainingStage::doLesson(float)+0x4380>
  40e26e: 58e3         	ldr	r3, [r4, r3]
  40e270: 681b         	ldr	r3, [r3]
  40e272: 4618         	mov	r0, r3
  40e274: 214b         	movs	r1, #0x4b
  40e276: 2201         	movs	r2, #0x1
  40e278: f7e9 fd62    	bl	0x3f7d40 <Sound::playSoundWithVoice(int, int)> @ imm = #-0x1653c
  40e27c: f003 be4a    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x3c94
  40e280: ab07         	add	r3, sp, #0x1c
  40e282: 681b         	ldr	r3, [r3]
  40e284: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40e288: 681b         	ldr	r3, [r3]
  40e28a: f503 730e    	add.w	r3, r3, #0x238
  40e28e: 681b         	ldr	r3, [r3]
  40e290: aa07         	add	r2, sp, #0x1c
  40e292: 6812         	ldr	r2, [r2]
  40e294: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40e298: 4610         	mov	r0, r2
  40e29a: f04f 0100    	mov.w	r1, #0x0
  40e29e: f2c4 3134    	movt	r1, #0x4334
  40e2a2: 4798         	blx	r3
  40e2a4: 4bea         	ldr	r3, [pc, #0x3a8]        @ 0x40e650 <TrainingStage::doLesson(float)+0x4378>
  40e2a6: 58e3         	ldr	r3, [r4, r3]
  40e2a8: 681b         	ldr	r3, [r3]
  40e2aa: 681b         	ldr	r3, [r3]
  40e2ac: f503 7329    	add.w	r3, r3, #0x2a4
  40e2b0: 681b         	ldr	r3, [r3]
  40e2b2: 4ae7         	ldr	r2, [pc, #0x39c]        @ 0x40e650 <TrainingStage::doLesson(float)+0x4378>
  40e2b4: 58a2         	ldr	r2, [r4, r2]
  40e2b6: 6812         	ldr	r2, [r2]
  40e2b8: 4610         	mov	r0, r2
  40e2ba: f04f 0100    	mov.w	r1, #0x0
  40e2be: 4798         	blx	r3
  40e2c0: ab07         	add	r3, sp, #0x1c
  40e2c2: 681b         	ldr	r3, [r3]
  40e2c4: ed93 7a62    	vldr	s14, [r3, #392]
  40e2c8: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  40e2cc: eeb4 7ae7    	vcmpe.f32	s14, s15
  40e2d0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40e2d4: d505         	bpl	0x40e2e2 <TrainingStage::doLesson(float)+0x400a> @ imm = #0xa
  40e2d6: aa07         	add	r2, sp, #0x1c
  40e2d8: ab06         	add	r3, sp, #0x18
  40e2da: 6810         	ldr	r0, [r2]
  40e2dc: 6819         	ldr	r1, [r3]
  40e2de: f7fb fda7    	bl	0x409e30 <TrainingStage::headChatter(float)> @ imm = #-0x44b2
  40e2e2: ab07         	add	r3, sp, #0x1c
  40e2e4: 681b         	ldr	r3, [r3]
  40e2e6: ed93 7a62    	vldr	s14, [r3, #392]
  40e2ea: eef0 7a04    	vmov.f32	s15, #2.500000e+00
  40e2ee: eeb4 7ae7    	vcmpe.f32	s14, s15
  40e2f2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40e2f6: dc01         	bgt	0x40e2fc <TrainingStage::doLesson(float)+0x4024> @ imm = #0x2
  40e2f8: f003 be0c    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x3c18
  40e2fc: ab07         	add	r3, sp, #0x1c
  40e2fe: 681b         	ldr	r3, [r3]
  40e300: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  40e304: 1c5a         	adds	r2, r3, #0x1
  40e306: ab07         	add	r3, sp, #0x1c
  40e308: 681b         	ldr	r3, [r3]
  40e30a: f8c3 2180    	str.w	r2, [r3, #0x180]
  40e30e: ab07         	add	r3, sp, #0x1c
  40e310: 681b         	ldr	r3, [r3]
  40e312: f04f 0200    	mov.w	r2, #0x0
  40e316: f8c3 2188    	str.w	r2, [r3, #0x188]
  40e31a: ab07         	add	r3, sp, #0x1c
  40e31c: 681b         	ldr	r3, [r3]
  40e31e: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  40e322: f50d 6380    	add.w	r3, sp, #0x400
  40e326: 4618         	mov	r0, r3
  40e328: f37c f864    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37c0c8
  40e32c: f50d 6282    	add.w	r2, sp, #0x410
  40e330: f50d 6380    	add.w	r3, sp, #0x400
  40e334: 4610         	mov	r0, r2
  40e336: 4aca         	ldr	r2, [pc, #0x328]        @ 0x40e660 <TrainingStage::doLesson(float)+0x4388>
  40e338: 447a         	add	r2, pc
  40e33a: 4611         	mov	r1, r2
  40e33c: 461a         	mov	r2, r3
  40e33e: f3a8 fb8f    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3a871e
  40e342: 20ff         	movs	r0, #0xff
  40e344: 2100         	movs	r1, #0x0
  40e346: 2200         	movs	r2, #0x0
  40e348: f7fa f886    	bl	0x408458 <Tracer::checkCollision()+0x3cc> @ imm = #-0x5ef4
  40e34c: 4602         	mov	r2, r0
  40e34e: ab24         	add	r3, sp, #0x90
  40e350: 4611         	mov	r1, r2
  40e352: 7019         	strb	r1, [r3]
  40e354: f3c2 2107    	ubfx	r1, r2, #0x8, #0x8
  40e358: 7059         	strb	r1, [r3, #0x1]
  40e35a: f3c2 4207    	ubfx	r2, r2, #0x10, #0x8
  40e35e: 709a         	strb	r2, [r3, #0x2]
  40e360: f50d 6282    	add.w	r2, sp, #0x410
  40e364: ab24         	add	r3, sp, #0x90
  40e366: 4628         	mov	r0, r5
  40e368: 4611         	mov	r1, r2
  40e36a: 681a         	ldr	r2, [r3]
  40e36c: 2302         	movs	r3, #0x2
  40e36e: f72e ffa7    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xd10b2
  40e372: f50d 6382    	add.w	r3, sp, #0x410
  40e376: 4618         	mov	r0, r3
  40e378: f3a7 facc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a7598
  40e37c: f50d 6380    	add.w	r3, sp, #0x400
  40e380: 4618         	mov	r0, r3
  40e382: f37c f83b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37c076
  40e386: 4bb4         	ldr	r3, [pc, #0x2d0]        @ 0x40e658 <TrainingStage::doLesson(float)+0x4380>
  40e388: 58e3         	ldr	r3, [r4, r3]
  40e38a: 681b         	ldr	r3, [r3]
  40e38c: 4618         	mov	r0, r3
  40e38e: 214c         	movs	r1, #0x4c
  40e390: 2201         	movs	r2, #0x1
  40e392: f7e9 fcd5    	bl	0x3f7d40 <Sound::playSoundWithVoice(int, int)> @ imm = #-0x16656
  40e396: f003 bdbd    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x3b7a
  40e39a: ab07         	add	r3, sp, #0x1c
  40e39c: 681b         	ldr	r3, [r3]
  40e39e: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40e3a2: 681b         	ldr	r3, [r3]
  40e3a4: f503 730e    	add.w	r3, r3, #0x238
  40e3a8: 681b         	ldr	r3, [r3]
  40e3aa: aa07         	add	r2, sp, #0x1c
  40e3ac: 6812         	ldr	r2, [r2]
  40e3ae: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40e3b2: 4610         	mov	r0, r2
  40e3b4: f04f 0100    	mov.w	r1, #0x0
  40e3b8: f2c4 3134    	movt	r1, #0x4334
  40e3bc: 4798         	blx	r3
  40e3be: 4ba4         	ldr	r3, [pc, #0x290]        @ 0x40e650 <TrainingStage::doLesson(float)+0x4378>
  40e3c0: 58e3         	ldr	r3, [r4, r3]
  40e3c2: 681b         	ldr	r3, [r3]
  40e3c4: 681b         	ldr	r3, [r3]
  40e3c6: f503 7329    	add.w	r3, r3, #0x2a4
  40e3ca: 681b         	ldr	r3, [r3]
  40e3cc: 4aa0         	ldr	r2, [pc, #0x280]        @ 0x40e650 <TrainingStage::doLesson(float)+0x4378>
  40e3ce: 58a2         	ldr	r2, [r4, r2]
  40e3d0: 6812         	ldr	r2, [r2]
  40e3d2: 4610         	mov	r0, r2
  40e3d4: f04f 0100    	mov.w	r1, #0x0
  40e3d8: 4798         	blx	r3
  40e3da: ab07         	add	r3, sp, #0x1c
  40e3dc: 681b         	ldr	r3, [r3]
  40e3de: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40e3e2: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  40e3e6: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  40e3ea: ed93 6b0a    	vldr	d6, [r3, #40]
  40e3ee: ab07         	add	r3, sp, #0x1c
  40e3f0: 681b         	ldr	r3, [r3]
  40e3f2: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40e3f6: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  40e3fa: ed93 5b0a    	vldr	d5, [r3, #40]
  40e3fe: eeb3 7b09    	vmov.f64	d7, #2.500000e+01
  40e402: ee35 7b47    	vsub.f64	d7, d5, d7
  40e406: eeb4 6bc7    	vcmpe.f64	d6, d7
  40e40a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40e40e: dd7a         	ble	0x40e506 <TrainingStage::doLesson(float)+0x422e> @ imm = #0xf4
  40e410: ab07         	add	r3, sp, #0x1c
  40e412: 681b         	ldr	r3, [r3]
  40e414: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  40e418: 1c5a         	adds	r2, r3, #0x1
  40e41a: ab07         	add	r3, sp, #0x1c
  40e41c: 681b         	ldr	r3, [r3]
  40e41e: f8c3 2180    	str.w	r2, [r3, #0x180]
  40e422: ab07         	add	r3, sp, #0x1c
  40e424: 681b         	ldr	r3, [r3]
  40e426: f04f 0200    	mov.w	r2, #0x0
  40e42a: f8c3 2188    	str.w	r2, [r3, #0x188]
  40e42e: ab07         	add	r3, sp, #0x1c
  40e430: 681b         	ldr	r3, [r3]
  40e432: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  40e436: f50d 6380    	add.w	r3, sp, #0x400
  40e43a: 4618         	mov	r0, r3
  40e43c: f37b ffda    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37bfb4
  40e440: f50d 6282    	add.w	r2, sp, #0x410
  40e444: f50d 6380    	add.w	r3, sp, #0x400
  40e448: 4610         	mov	r0, r2
  40e44a: 4a86         	ldr	r2, [pc, #0x218]        @ 0x40e664 <TrainingStage::doLesson(float)+0x438c>
  40e44c: 447a         	add	r2, pc
  40e44e: 4611         	mov	r1, r2
  40e450: 461a         	mov	r2, r3
  40e452: f3a8 fb05    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3a860a
  40e456: 2000         	movs	r0, #0x0
  40e458: 2100         	movs	r1, #0x0
  40e45a: 22ff         	movs	r2, #0xff
  40e45c: f7f9 fffc    	bl	0x408458 <Tracer::checkCollision()+0x3cc> @ imm = #-0x6008
  40e460: 4602         	mov	r2, r0
  40e462: ab25         	add	r3, sp, #0x94
  40e464: 4611         	mov	r1, r2
  40e466: 7019         	strb	r1, [r3]
  40e468: f3c2 2107    	ubfx	r1, r2, #0x8, #0x8
  40e46c: 7059         	strb	r1, [r3, #0x1]
  40e46e: f3c2 4207    	ubfx	r2, r2, #0x10, #0x8
  40e472: 709a         	strb	r2, [r3, #0x2]
  40e474: f50d 6282    	add.w	r2, sp, #0x410
  40e478: ab25         	add	r3, sp, #0x94
  40e47a: 4628         	mov	r0, r5
  40e47c: 4611         	mov	r1, r2
  40e47e: 681a         	ldr	r2, [r3]
  40e480: 2303         	movs	r3, #0x3
  40e482: f72e ff1d    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xd11c6
  40e486: f50d 6382    	add.w	r3, sp, #0x410
  40e48a: 4618         	mov	r0, r3
  40e48c: f3a7 fa42    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a7484
  40e490: f50d 6380    	add.w	r3, sp, #0x400
  40e494: 4618         	mov	r0, r3
  40e496: f37b ffb1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37bf62
  40e49a: 4b6f         	ldr	r3, [pc, #0x1bc]        @ 0x40e658 <TrainingStage::doLesson(float)+0x4380>
  40e49c: 58e3         	ldr	r3, [r4, r3]
  40e49e: 681b         	ldr	r3, [r3]
  40e4a0: 4618         	mov	r0, r3
  40e4a2: 214d         	movs	r1, #0x4d
  40e4a4: 2201         	movs	r2, #0x1
  40e4a6: f7e9 fc4b    	bl	0x3f7d40 <Sound::playSoundWithVoice(int, int)> @ imm = #-0x1676a
  40e4aa: ab07         	add	r3, sp, #0x1c
  40e4ac: 681b         	ldr	r3, [r3]
  40e4ae: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40e4b2: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  40e4b6: 2200         	movs	r2, #0x0
  40e4b8: f883 211c    	strb.w	r2, [r3, #0x11c]
  40e4bc: ab07         	add	r3, sp, #0x1c
  40e4be: 681b         	ldr	r3, [r3]
  40e4c0: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40e4c4: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  40e4c8: 681b         	ldr	r3, [r3]
  40e4ca: f503 730c    	add.w	r3, r3, #0x230
  40e4ce: 681c         	ldr	r4, [r3]
  40e4d0: ab07         	add	r3, sp, #0x1c
  40e4d2: 681b         	ldr	r3, [r3]
  40e4d4: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40e4d8: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  40e4dc: 461d         	mov	r5, r3
  40e4de: ab7c         	add	r3, sp, #0x1f0
  40e4e0: 4618         	mov	r0, r3
  40e4e2: ed9f 0b57    	vldr	d0, [pc, #348]          @ 0x40e640 <TrainingStage::doLesson(float)+0x4368>
  40e4e6: ed9f 1b56    	vldr	d1, [pc, #344]          @ 0x40e640 <TrainingStage::doLesson(float)+0x4368>
  40e4ea: f7f9 fff3    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x601a
  40e4ee: ab7c         	add	r3, sp, #0x1f0
  40e4f0: 466a         	mov	r2, sp
  40e4f2: f103 0108    	add.w	r1, r3, #0x8
  40e4f6: c903         	ldm	r1, {r0, r1}
  40e4f8: e882 0003    	stm.w	r2, {r0, r1}
  40e4fc: cb0c         	ldm	r3, {r2, r3}
  40e4fe: 4628         	mov	r0, r5
  40e500: 47a0         	blx	r4
  40e502: f003 bd07    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x3a0e
  40e506: ab07         	add	r3, sp, #0x1c
  40e508: 681b         	ldr	r3, [r3]
  40e50a: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40e50e: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  40e512: 681b         	ldr	r3, [r3]
  40e514: f503 730e    	add.w	r3, r3, #0x238
  40e518: 681b         	ldr	r3, [r3]
  40e51a: aa07         	add	r2, sp, #0x1c
  40e51c: 6812         	ldr	r2, [r2]
  40e51e: f8d2 21a8    	ldr.w	r2, [r2, #0x1a8]
  40e522: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  40e526: 4610         	mov	r0, r2
  40e528: f04f 0100    	mov.w	r1, #0x0
  40e52c: 4798         	blx	r3
  40e52e: ab07         	add	r3, sp, #0x1c
  40e530: 681b         	ldr	r3, [r3]
  40e532: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40e536: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40e53a: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  40e53e: 681b         	ldr	r3, [r3]
  40e540: 3398         	adds	r3, #0x98
  40e542: 681c         	ldr	r4, [r3]
  40e544: ab07         	add	r3, sp, #0x1c
  40e546: 681b         	ldr	r3, [r3]
  40e548: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40e54c: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40e550: f8d3 5114    	ldr.w	r5, [r3, #0x114]
  40e554: ab07         	add	r3, sp, #0x1c
  40e556: 681b         	ldr	r3, [r3]
  40e558: edd3 7a62    	vldr	s15, [r3, #392]
  40e55c: ee77 7aa7    	vadd.f32	s15, s15, s15
  40e560: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  40e564: ec51 0b17    	vmov	r0, r1, d7
  40e568: f6c7 ecce    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x138664
  40e56c: ec41 0b16    	vmov	d6, r0, r1
  40e570: eeb2 7b00    	vmov.f64	d7, #8.000000e+00
  40e574: ee26 7b07    	vmul.f64	d7, d6, d7
  40e578: eef7 7bc7    	vcvt.f32.f64	s15, d7
  40e57c: 4628         	mov	r0, r5
  40e57e: ee17 1a90    	vmov	r1, s15
  40e582: 47a0         	blx	r4
  40e584: ab07         	add	r3, sp, #0x1c
  40e586: 681b         	ldr	r3, [r3]
  40e588: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40e58c: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40e590: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  40e594: 681b         	ldr	r3, [r3]
  40e596: 3398         	adds	r3, #0x98
  40e598: 681c         	ldr	r4, [r3]
  40e59a: ab07         	add	r3, sp, #0x1c
  40e59c: 681b         	ldr	r3, [r3]
  40e59e: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40e5a2: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40e5a6: f8d3 5110    	ldr.w	r5, [r3, #0x110]
  40e5aa: ab07         	add	r3, sp, #0x1c
  40e5ac: 681b         	ldr	r3, [r3]
  40e5ae: edd3 7a62    	vldr	s15, [r3, #392]
  40e5b2: ee77 7aa7    	vadd.f32	s15, s15, s15
  40e5b6: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  40e5ba: ed9f 7b23    	vldr	d7, [pc, #140]          @ 0x40e648 <TrainingStage::doLesson(float)+0x4370>
  40e5be: ee36 7b07    	vadd.f64	d7, d6, d7
  40e5c2: ec51 0b17    	vmov	r0, r1, d7
  40e5c6: f6c7 eca0    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x1386c0
  40e5ca: ec41 0b16    	vmov	d6, r0, r1
  40e5ce: eeb2 7b00    	vmov.f64	d7, #8.000000e+00
  40e5d2: ee26 7b07    	vmul.f64	d7, d6, d7
  40e5d6: eef7 7bc7    	vcvt.f32.f64	s15, d7
  40e5da: 4628         	mov	r0, r5
  40e5dc: ee17 1a90    	vmov	r1, s15
  40e5e0: 47a0         	blx	r4
  40e5e2: ab07         	add	r3, sp, #0x1c
  40e5e4: 681b         	ldr	r3, [r3]
  40e5e6: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40e5ea: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  40e5ee: 2201         	movs	r2, #0x1
  40e5f0: f883 211c    	strb.w	r2, [r3, #0x11c]
  40e5f4: ab07         	add	r3, sp, #0x1c
  40e5f6: 681b         	ldr	r3, [r3]
  40e5f8: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40e5fc: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  40e600: 681b         	ldr	r3, [r3]
  40e602: f503 730c    	add.w	r3, r3, #0x230
  40e606: 681c         	ldr	r4, [r3]
  40e608: ab07         	add	r3, sp, #0x1c
  40e60a: 681b         	ldr	r3, [r3]
  40e60c: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40e610: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  40e614: 461d         	mov	r5, r3
  40e616: ab80         	add	r3, sp, #0x200
  40e618: 4618         	mov	r0, r3
  40e61a: eeb6 0b08    	vmov.f64	d0, #7.500000e-01
  40e61e: ed9f 1b08    	vldr	d1, [pc, #32]           @ 0x40e640 <TrainingStage::doLesson(float)+0x4368>
  40e622: f7f9 ff57    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x6152
  40e626: ab80         	add	r3, sp, #0x200
  40e628: 466a         	mov	r2, sp
  40e62a: f103 0108    	add.w	r1, r3, #0x8
  40e62e: c903         	ldm	r1, {r0, r1}
  40e630: e882 0003    	stm.w	r2, {r0, r1}
  40e634: cb0c         	ldm	r3, {r2, r3}
  40e636: 4628         	mov	r0, r5
  40e638: 47a0         	blx	r4
  40e63a: f003 bc6b    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x38d6
  40e63e: bf00         	nop
  40e648: 851f         	strh	r7, [r3, #0x28]
  40e64a: 51eb         	str	r3, [r5, r7]
  40e64c: 1eb8         	subs	r0, r7, #0x2
  40e64e: 4009         	ands	r1, r1
  40e650: d784         	bvc	0x40e55c <TrainingStage::doLesson(float)+0x4284> @ imm = #-0xf8
  40e652: ffff cb96    	<unknown>
  40e656: 003c         	movs	r4, r7
  40e658: d730         	bvc	0x40e6bc <TrainingStage::doLesson(float)+0x43e4> @ imm = #0x60
  40e65a: ffff cab6    	<unknown>
  40e65e: 003c         	movs	r4, r7
  40e660: c9cc         	ldm	r1!, {r2, r3, r6, r7}
  40e662: 003c         	movs	r4, r7
  40e664: c8d8         	ldm	r0!, {r3, r4, r6, r7}
  40e666: 003c         	movs	r4, r7
  40e668: 4bb5         	ldr	r3, [pc, #0x2d4]        @ 0x40e940 <TrainingStage::doLesson(float)+0x4668>
  40e66a: 58e3         	ldr	r3, [r4, r3]
  40e66c: 681b         	ldr	r3, [r3]
  40e66e: 681b         	ldr	r3, [r3]
  40e670: f503 7329    	add.w	r3, r3, #0x2a4
  40e674: 681b         	ldr	r3, [r3]
  40e676: 4ab2         	ldr	r2, [pc, #0x2c8]        @ 0x40e940 <TrainingStage::doLesson(float)+0x4668>
  40e678: 58a2         	ldr	r2, [r4, r2]
  40e67a: 6812         	ldr	r2, [r2]
  40e67c: 4610         	mov	r0, r2
  40e67e: f04f 0100    	mov.w	r1, #0x0
  40e682: 4798         	blx	r3
  40e684: ab07         	add	r3, sp, #0x1c
  40e686: 681b         	ldr	r3, [r3]
  40e688: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40e68c: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  40e690: 681b         	ldr	r3, [r3]
  40e692: f503 730e    	add.w	r3, r3, #0x238
  40e696: 681b         	ldr	r3, [r3]
  40e698: aa07         	add	r2, sp, #0x1c
  40e69a: 6812         	ldr	r2, [r2]
  40e69c: f8d2 21a8    	ldr.w	r2, [r2, #0x1a8]
  40e6a0: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  40e6a4: 4610         	mov	r0, r2
  40e6a6: f04f 0100    	mov.w	r1, #0x0
  40e6aa: 4798         	blx	r3
  40e6ac: ab07         	add	r3, sp, #0x1c
  40e6ae: 681b         	ldr	r3, [r3]
  40e6b0: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40e6b4: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40e6b8: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  40e6bc: 681b         	ldr	r3, [r3]
  40e6be: 3398         	adds	r3, #0x98
  40e6c0: 681d         	ldr	r5, [r3]
  40e6c2: ab07         	add	r3, sp, #0x1c
  40e6c4: 681b         	ldr	r3, [r3]
  40e6c6: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40e6ca: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40e6ce: f8d3 6114    	ldr.w	r6, [r3, #0x114]
  40e6d2: ab07         	add	r3, sp, #0x1c
  40e6d4: 681b         	ldr	r3, [r3]
  40e6d6: edd3 7a62    	vldr	s15, [r3, #392]
  40e6da: ee77 7aa7    	vadd.f32	s15, s15, s15
  40e6de: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  40e6e2: ec51 0b17    	vmov	r0, r1, d7
  40e6e6: f6c7 ec10    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x1387e0
  40e6ea: ec41 0b16    	vmov	d6, r0, r1
  40e6ee: eeb1 7b04    	vmov.f64	d7, #5.000000e+00
  40e6f2: ee26 6b07    	vmul.f64	d6, d6, d7
  40e6f6: eeb2 7b04    	vmov.f64	d7, #1.000000e+01
  40e6fa: ee36 7b07    	vadd.f64	d7, d6, d7
  40e6fe: eef7 7bc7    	vcvt.f32.f64	s15, d7
  40e702: 4630         	mov	r0, r6
  40e704: ee17 1a90    	vmov	r1, s15
  40e708: 47a8         	blx	r5
  40e70a: ab07         	add	r3, sp, #0x1c
  40e70c: 681b         	ldr	r3, [r3]
  40e70e: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40e712: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40e716: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  40e71a: 681b         	ldr	r3, [r3]
  40e71c: 3398         	adds	r3, #0x98
  40e71e: 681d         	ldr	r5, [r3]
  40e720: ab07         	add	r3, sp, #0x1c
  40e722: 681b         	ldr	r3, [r3]
  40e724: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40e728: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40e72c: f8d3 6110    	ldr.w	r6, [r3, #0x110]
  40e730: ab07         	add	r3, sp, #0x1c
  40e732: 681b         	ldr	r3, [r3]
  40e734: edd3 7a62    	vldr	s15, [r3, #392]
  40e738: ee77 7aa7    	vadd.f32	s15, s15, s15
  40e73c: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  40e740: ed9f 7b7d    	vldr	d7, [pc, #500]          @ 0x40e938 <TrainingStage::doLesson(float)+0x4660>
  40e744: ee36 7b07    	vadd.f64	d7, d6, d7
  40e748: ec51 0b17    	vmov	r0, r1, d7
  40e74c: f6c7 ebdc    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x138848
  40e750: ec41 0b16    	vmov	d6, r0, r1
  40e754: eeb1 7b04    	vmov.f64	d7, #5.000000e+00
  40e758: ee26 6b07    	vmul.f64	d6, d6, d7
  40e75c: eeb2 7b04    	vmov.f64	d7, #1.000000e+01
  40e760: ee36 7b47    	vsub.f64	d7, d6, d7
  40e764: eef7 7bc7    	vcvt.f32.f64	s15, d7
  40e768: 4630         	mov	r0, r6
  40e76a: ee17 1a90    	vmov	r1, s15
  40e76e: 47a8         	blx	r5
  40e770: ab07         	add	r3, sp, #0x1c
  40e772: 681b         	ldr	r3, [r3]
  40e774: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40e778: 681b         	ldr	r3, [r3]
  40e77a: f503 730e    	add.w	r3, r3, #0x238
  40e77e: 681b         	ldr	r3, [r3]
  40e780: aa07         	add	r2, sp, #0x1c
  40e782: 6812         	ldr	r2, [r2]
  40e784: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40e788: 4610         	mov	r0, r2
  40e78a: f04f 0100    	mov.w	r1, #0x0
  40e78e: f2c4 315c    	movt	r1, #0x435c
  40e792: 4798         	blx	r3
  40e794: ab07         	add	r3, sp, #0x1c
  40e796: 681b         	ldr	r3, [r3]
  40e798: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40e79c: 681b         	ldr	r3, [r3]
  40e79e: f503 73ec    	add.w	r3, r3, #0x1d8
  40e7a2: 681b         	ldr	r3, [r3]
  40e7a4: aa07         	add	r2, sp, #0x1c
  40e7a6: 6812         	ldr	r2, [r2]
  40e7a8: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40e7ac: 4610         	mov	r0, r2
  40e7ae: 4798         	blx	r3
  40e7b0: 4603         	mov	r3, r0
  40e7b2: f8d3 5114    	ldr.w	r5, [r3, #0x114]
  40e7b6: 682b         	ldr	r3, [r5]
  40e7b8: 3398         	adds	r3, #0x98
  40e7ba: 681e         	ldr	r6, [r3]
  40e7bc: ab07         	add	r3, sp, #0x1c
  40e7be: 681b         	ldr	r3, [r3]
  40e7c0: edd3 7a62    	vldr	s15, [r3, #392]
  40e7c4: ee77 7aa7    	vadd.f32	s15, s15, s15
  40e7c8: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  40e7cc: ec51 0b17    	vmov	r0, r1, d7
  40e7d0: f6c7 eb9a    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x1388cc
  40e7d4: ec41 0b16    	vmov	d6, r0, r1
  40e7d8: eeb1 7b04    	vmov.f64	d7, #5.000000e+00
  40e7dc: ee26 6b07    	vmul.f64	d6, d6, d7
  40e7e0: eeb2 7b04    	vmov.f64	d7, #1.000000e+01
  40e7e4: ee36 7b07    	vadd.f64	d7, d6, d7
  40e7e8: eef7 7bc7    	vcvt.f32.f64	s15, d7
  40e7ec: 4628         	mov	r0, r5
  40e7ee: ee17 1a90    	vmov	r1, s15
  40e7f2: 47b0         	blx	r6
  40e7f4: ab07         	add	r3, sp, #0x1c
  40e7f6: 681b         	ldr	r3, [r3]
  40e7f8: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40e7fc: 681b         	ldr	r3, [r3]
  40e7fe: f503 73ec    	add.w	r3, r3, #0x1d8
  40e802: 681b         	ldr	r3, [r3]
  40e804: aa07         	add	r2, sp, #0x1c
  40e806: 6812         	ldr	r2, [r2]
  40e808: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40e80c: 4610         	mov	r0, r2
  40e80e: 4798         	blx	r3
  40e810: 4603         	mov	r3, r0
  40e812: f8d3 5110    	ldr.w	r5, [r3, #0x110]
  40e816: 682b         	ldr	r3, [r5]
  40e818: 3398         	adds	r3, #0x98
  40e81a: 681e         	ldr	r6, [r3]
  40e81c: ab07         	add	r3, sp, #0x1c
  40e81e: 681b         	ldr	r3, [r3]
  40e820: edd3 7a62    	vldr	s15, [r3, #392]
  40e824: ee77 7aa7    	vadd.f32	s15, s15, s15
  40e828: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  40e82c: ed9f 7b42    	vldr	d7, [pc, #264]          @ 0x40e938 <TrainingStage::doLesson(float)+0x4660>
  40e830: ee36 7b07    	vadd.f64	d7, d6, d7
  40e834: ec51 0b17    	vmov	r0, r1, d7
  40e838: f6c7 eb66    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x138934
  40e83c: ec41 0b16    	vmov	d6, r0, r1
  40e840: eeb1 7b04    	vmov.f64	d7, #5.000000e+00
  40e844: ee26 6b07    	vmul.f64	d6, d6, d7
  40e848: eeb2 7b04    	vmov.f64	d7, #1.000000e+01
  40e84c: ee36 7b47    	vsub.f64	d7, d6, d7
  40e850: eef7 7bc7    	vcvt.f32.f64	s15, d7
  40e854: 4628         	mov	r0, r5
  40e856: ee17 1a90    	vmov	r1, s15
  40e85a: 47b0         	blx	r6
  40e85c: ab07         	add	r3, sp, #0x1c
  40e85e: 681b         	ldr	r3, [r3]
  40e860: ed93 7a62    	vldr	s14, [r3, #392]
  40e864: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  40e868: eeb4 7ae7    	vcmpe.f32	s14, s15
  40e86c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40e870: d505         	bpl	0x40e87e <TrainingStage::doLesson(float)+0x45a6> @ imm = #0xa
  40e872: aa07         	add	r2, sp, #0x1c
  40e874: ab06         	add	r3, sp, #0x18
  40e876: 6810         	ldr	r0, [r2]
  40e878: 6819         	ldr	r1, [r3]
  40e87a: f7fb fad9    	bl	0x409e30 <TrainingStage::headChatter(float)> @ imm = #-0x4a4e
  40e87e: ab07         	add	r3, sp, #0x1c
  40e880: 681b         	ldr	r3, [r3]
  40e882: ed93 7a62    	vldr	s14, [r3, #392]
  40e886: eef0 7a08    	vmov.f32	s15, #3.000000e+00
  40e88a: eeb4 7ae7    	vcmpe.f32	s14, s15
  40e88e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40e892: dc01         	bgt	0x40e898 <TrainingStage::doLesson(float)+0x45c0> @ imm = #0x2
  40e894: f003 bb3e    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x367c
  40e898: ab07         	add	r3, sp, #0x1c
  40e89a: 681b         	ldr	r3, [r3]
  40e89c: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  40e8a0: 1c5a         	adds	r2, r3, #0x1
  40e8a2: ab07         	add	r3, sp, #0x1c
  40e8a4: 681b         	ldr	r3, [r3]
  40e8a6: f8c3 2180    	str.w	r2, [r3, #0x180]
  40e8aa: ab07         	add	r3, sp, #0x1c
  40e8ac: 681b         	ldr	r3, [r3]
  40e8ae: f04f 0200    	mov.w	r2, #0x0
  40e8b2: f8c3 2188    	str.w	r2, [r3, #0x188]
  40e8b6: ab07         	add	r3, sp, #0x1c
  40e8b8: 681b         	ldr	r3, [r3]
  40e8ba: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  40e8be: f50d 6380    	add.w	r3, sp, #0x400
  40e8c2: 4618         	mov	r0, r3
  40e8c4: f37b fd96    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37bb2c
  40e8c8: f50d 6282    	add.w	r2, sp, #0x410
  40e8cc: f50d 6380    	add.w	r3, sp, #0x400
  40e8d0: 4610         	mov	r0, r2
  40e8d2: 4a1c         	ldr	r2, [pc, #0x70]         @ 0x40e944 <TrainingStage::doLesson(float)+0x466c>
  40e8d4: 447a         	add	r2, pc
  40e8d6: 4611         	mov	r1, r2
  40e8d8: 461a         	mov	r2, r3
  40e8da: f3a8 f8c1    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3a8182
  40e8de: 2000         	movs	r0, #0x0
  40e8e0: 2100         	movs	r1, #0x0
  40e8e2: 22ff         	movs	r2, #0xff
  40e8e4: f7f9 fdb8    	bl	0x408458 <Tracer::checkCollision()+0x3cc> @ imm = #-0x6490
  40e8e8: 4602         	mov	r2, r0
  40e8ea: ab26         	add	r3, sp, #0x98
  40e8ec: 4611         	mov	r1, r2
  40e8ee: 7019         	strb	r1, [r3]
  40e8f0: f3c2 2107    	ubfx	r1, r2, #0x8, #0x8
  40e8f4: 7059         	strb	r1, [r3, #0x1]
  40e8f6: f3c2 4207    	ubfx	r2, r2, #0x10, #0x8
  40e8fa: 709a         	strb	r2, [r3, #0x2]
  40e8fc: f50d 6282    	add.w	r2, sp, #0x410
  40e900: ab26         	add	r3, sp, #0x98
  40e902: 4628         	mov	r0, r5
  40e904: 4611         	mov	r1, r2
  40e906: 681a         	ldr	r2, [r3]
  40e908: 2303         	movs	r3, #0x3
  40e90a: f72e fcd9    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xd164e
  40e90e: f50d 6382    	add.w	r3, sp, #0x410
  40e912: 4618         	mov	r0, r3
  40e914: f3a6 fffe    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a6ffc
  40e918: f50d 6380    	add.w	r3, sp, #0x400
  40e91c: 4618         	mov	r0, r3
  40e91e: f37b fd6d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37bada
  40e922: 4b09         	ldr	r3, [pc, #0x24]         @ 0x40e948 <TrainingStage::doLesson(float)+0x4670>
  40e924: 58e3         	ldr	r3, [r4, r3]
  40e926: 681b         	ldr	r3, [r3]
  40e928: 4618         	mov	r0, r3
  40e92a: 214e         	movs	r1, #0x4e
  40e92c: 2201         	movs	r2, #0x1
  40e92e: f7e9 fa07    	bl	0x3f7d40 <Sound::playSoundWithVoice(int, int)> @ imm = #-0x16bf2
  40e932: f003 baef    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x35de
  40e936: bf00         	nop
  40e938: 851f         	strh	r7, [r3, #0x28]
  40e93a: 51eb         	str	r3, [r5, r7]
  40e93c: 1eb8         	subs	r0, r7, #0x2
  40e93e: 4009         	ands	r1, r1
  40e940: d784         	bvc	0x40e84c <TrainingStage::doLesson(float)+0x4574> @ imm = #-0xf8
  40e942: ffff c47c    	vsri.32	q14, q14, #0x1
  40e946: 003c         	movs	r4, r7
  40e948: d730         	bvc	0x40e9ac <TrainingStage::doLesson(float)+0x46d4> @ imm = #0x60
  40e94a: ffff 4bba    	<unknown>
  40e94e: 58e3         	ldr	r3, [r4, r3]
  40e950: 681b         	ldr	r3, [r3]
  40e952: 681b         	ldr	r3, [r3]
  40e954: f503 7329    	add.w	r3, r3, #0x2a4
  40e958: 681b         	ldr	r3, [r3]
  40e95a: 4ab7         	ldr	r2, [pc, #0x2dc]        @ 0x40ec38 <TrainingStage::doLesson(float)+0x4960>
  40e95c: 58a2         	ldr	r2, [r4, r2]
  40e95e: 6812         	ldr	r2, [r2]
  40e960: 4610         	mov	r0, r2
  40e962: f04f 0100    	mov.w	r1, #0x0
  40e966: 4798         	blx	r3
  40e968: ab07         	add	r3, sp, #0x1c
  40e96a: 681b         	ldr	r3, [r3]
  40e96c: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40e970: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  40e974: 681b         	ldr	r3, [r3]
  40e976: f503 730e    	add.w	r3, r3, #0x238
  40e97a: 681b         	ldr	r3, [r3]
  40e97c: aa07         	add	r2, sp, #0x1c
  40e97e: 6812         	ldr	r2, [r2]
  40e980: f8d2 21a8    	ldr.w	r2, [r2, #0x1a8]
  40e984: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  40e988: 4610         	mov	r0, r2
  40e98a: f04f 0100    	mov.w	r1, #0x0
  40e98e: 4798         	blx	r3
  40e990: ab07         	add	r3, sp, #0x1c
  40e992: 681b         	ldr	r3, [r3]
  40e994: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40e998: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40e99c: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  40e9a0: 681b         	ldr	r3, [r3]
  40e9a2: 3398         	adds	r3, #0x98
  40e9a4: 681d         	ldr	r5, [r3]
  40e9a6: ab07         	add	r3, sp, #0x1c
  40e9a8: 681b         	ldr	r3, [r3]
  40e9aa: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40e9ae: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40e9b2: f8d3 6114    	ldr.w	r6, [r3, #0x114]
  40e9b6: ab07         	add	r3, sp, #0x1c
  40e9b8: 681b         	ldr	r3, [r3]
  40e9ba: edd3 7a62    	vldr	s15, [r3, #392]
  40e9be: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  40e9c2: ec51 0b17    	vmov	r0, r1, d7
  40e9c6: f6c7 eaa0    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x138ac0
  40e9ca: ec41 0b16    	vmov	d6, r0, r1
  40e9ce: eeb1 7b04    	vmov.f64	d7, #5.000000e+00
  40e9d2: ee26 6b07    	vmul.f64	d6, d6, d7
  40e9d6: eeb2 7b04    	vmov.f64	d7, #1.000000e+01
  40e9da: ee36 7b47    	vsub.f64	d7, d6, d7
  40e9de: eef7 7bc7    	vcvt.f32.f64	s15, d7
  40e9e2: 4630         	mov	r0, r6
  40e9e4: ee17 1a90    	vmov	r1, s15
  40e9e8: 47a8         	blx	r5
  40e9ea: ab07         	add	r3, sp, #0x1c
  40e9ec: 681b         	ldr	r3, [r3]
  40e9ee: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40e9f2: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40e9f6: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  40e9fa: 681b         	ldr	r3, [r3]
  40e9fc: 3398         	adds	r3, #0x98
  40e9fe: 681d         	ldr	r5, [r3]
  40ea00: ab07         	add	r3, sp, #0x1c
  40ea02: 681b         	ldr	r3, [r3]
  40ea04: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40ea08: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40ea0c: f8d3 6110    	ldr.w	r6, [r3, #0x110]
  40ea10: ab07         	add	r3, sp, #0x1c
  40ea12: 681b         	ldr	r3, [r3]
  40ea14: edd3 7a62    	vldr	s15, [r3, #392]
  40ea18: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  40ea1c: ed9f 7b84    	vldr	d7, [pc, #528]          @ 0x40ec30 <TrainingStage::doLesson(float)+0x4958>
  40ea20: ee36 7b07    	vadd.f64	d7, d6, d7
  40ea24: ec51 0b17    	vmov	r0, r1, d7
  40ea28: f6c7 ea6e    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x138b24
  40ea2c: ec41 0b16    	vmov	d6, r0, r1
  40ea30: eeb1 7b04    	vmov.f64	d7, #5.000000e+00
  40ea34: ee26 6b07    	vmul.f64	d6, d6, d7
  40ea38: eeb2 7b04    	vmov.f64	d7, #1.000000e+01
  40ea3c: ee36 7b07    	vadd.f64	d7, d6, d7
  40ea40: eef7 7bc7    	vcvt.f32.f64	s15, d7
  40ea44: 4630         	mov	r0, r6
  40ea46: ee17 1a90    	vmov	r1, s15
  40ea4a: 47a8         	blx	r5
  40ea4c: ab07         	add	r3, sp, #0x1c
  40ea4e: 681b         	ldr	r3, [r3]
  40ea50: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40ea54: 681b         	ldr	r3, [r3]
  40ea56: f503 730e    	add.w	r3, r3, #0x238
  40ea5a: 681b         	ldr	r3, [r3]
  40ea5c: aa07         	add	r2, sp, #0x1c
  40ea5e: 6812         	ldr	r2, [r2]
  40ea60: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40ea64: 4610         	mov	r0, r2
  40ea66: f04f 0100    	mov.w	r1, #0x0
  40ea6a: f2c4 315c    	movt	r1, #0x435c
  40ea6e: 4798         	blx	r3
  40ea70: ab07         	add	r3, sp, #0x1c
  40ea72: 681b         	ldr	r3, [r3]
  40ea74: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40ea78: 681b         	ldr	r3, [r3]
  40ea7a: f503 73ec    	add.w	r3, r3, #0x1d8
  40ea7e: 681b         	ldr	r3, [r3]
  40ea80: aa07         	add	r2, sp, #0x1c
  40ea82: 6812         	ldr	r2, [r2]
  40ea84: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40ea88: 4610         	mov	r0, r2
  40ea8a: 4798         	blx	r3
  40ea8c: 4603         	mov	r3, r0
  40ea8e: f8d3 5114    	ldr.w	r5, [r3, #0x114]
  40ea92: 682b         	ldr	r3, [r5]
  40ea94: 3398         	adds	r3, #0x98
  40ea96: 681e         	ldr	r6, [r3]
  40ea98: ab07         	add	r3, sp, #0x1c
  40ea9a: 681b         	ldr	r3, [r3]
  40ea9c: edd3 7a62    	vldr	s15, [r3, #392]
  40eaa0: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  40eaa4: ec51 0b17    	vmov	r0, r1, d7
  40eaa8: f6c7 ea2e    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x138ba4
  40eaac: ec41 0b16    	vmov	d6, r0, r1
  40eab0: eeb1 7b04    	vmov.f64	d7, #5.000000e+00
  40eab4: ee26 6b07    	vmul.f64	d6, d6, d7
  40eab8: eeb2 7b04    	vmov.f64	d7, #1.000000e+01
  40eabc: ee36 7b47    	vsub.f64	d7, d6, d7
  40eac0: eef7 7bc7    	vcvt.f32.f64	s15, d7
  40eac4: 4628         	mov	r0, r5
  40eac6: ee17 1a90    	vmov	r1, s15
  40eaca: 47b0         	blx	r6
  40eacc: ab07         	add	r3, sp, #0x1c
  40eace: 681b         	ldr	r3, [r3]
  40ead0: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40ead4: 681b         	ldr	r3, [r3]
  40ead6: f503 73ec    	add.w	r3, r3, #0x1d8
  40eada: 681b         	ldr	r3, [r3]
  40eadc: aa07         	add	r2, sp, #0x1c
  40eade: 6812         	ldr	r2, [r2]
  40eae0: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40eae4: 4610         	mov	r0, r2
  40eae6: 4798         	blx	r3
  40eae8: 4603         	mov	r3, r0
  40eaea: f8d3 5110    	ldr.w	r5, [r3, #0x110]
  40eaee: 682b         	ldr	r3, [r5]
  40eaf0: 3398         	adds	r3, #0x98
  40eaf2: 681e         	ldr	r6, [r3]
  40eaf4: ab07         	add	r3, sp, #0x1c
  40eaf6: 681b         	ldr	r3, [r3]
  40eaf8: edd3 7a62    	vldr	s15, [r3, #392]
  40eafc: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  40eb00: ed9f 7b4b    	vldr	d7, [pc, #300]          @ 0x40ec30 <TrainingStage::doLesson(float)+0x4958>
  40eb04: ee36 7b07    	vadd.f64	d7, d6, d7
  40eb08: ec51 0b17    	vmov	r0, r1, d7
  40eb0c: f6c7 e9fc    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x138c08
  40eb10: ec41 0b16    	vmov	d6, r0, r1
  40eb14: eeb1 7b04    	vmov.f64	d7, #5.000000e+00
  40eb18: ee26 7b07    	vmul.f64	d7, d6, d7
  40eb1c: eef7 7bc7    	vcvt.f32.f64	s15, d7
  40eb20: 4628         	mov	r0, r5
  40eb22: ee17 1a90    	vmov	r1, s15
  40eb26: 47b0         	blx	r6
  40eb28: ab07         	add	r3, sp, #0x1c
  40eb2a: 681b         	ldr	r3, [r3]
  40eb2c: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40eb30: 681b         	ldr	r3, [r3]
  40eb32: f503 73ce    	add.w	r3, r3, #0x19c
  40eb36: 681b         	ldr	r3, [r3]
  40eb38: aa07         	add	r2, sp, #0x1c
  40eb3a: 6812         	ldr	r2, [r2]
  40eb3c: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40eb40: 4610         	mov	r0, r2
  40eb42: 2101         	movs	r1, #0x1
  40eb44: 4798         	blx	r3
  40eb46: ab07         	add	r3, sp, #0x1c
  40eb48: 681b         	ldr	r3, [r3]
  40eb4a: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40eb4e: 2201         	movs	r2, #0x1
  40eb50: f883 211c    	strb.w	r2, [r3, #0x11c]
  40eb54: ab07         	add	r3, sp, #0x1c
  40eb56: 681b         	ldr	r3, [r3]
  40eb58: ed93 7a62    	vldr	s14, [r3, #392]
  40eb5c: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  40eb60: eeb4 7ae7    	vcmpe.f32	s14, s15
  40eb64: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40eb68: d505         	bpl	0x40eb76 <TrainingStage::doLesson(float)+0x489e> @ imm = #0xa
  40eb6a: aa07         	add	r2, sp, #0x1c
  40eb6c: ab06         	add	r3, sp, #0x18
  40eb6e: 6810         	ldr	r0, [r2]
  40eb70: 6819         	ldr	r1, [r3]
  40eb72: f7fb f95d    	bl	0x409e30 <TrainingStage::headChatter(float)> @ imm = #-0x4d46
  40eb76: ab07         	add	r3, sp, #0x1c
  40eb78: 681b         	ldr	r3, [r3]
  40eb7a: ed93 7a62    	vldr	s14, [r3, #392]
  40eb7e: eef0 7a08    	vmov.f32	s15, #3.000000e+00
  40eb82: eeb4 7ae7    	vcmpe.f32	s14, s15
  40eb86: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40eb8a: dc01         	bgt	0x40eb90 <TrainingStage::doLesson(float)+0x48b8> @ imm = #0x2
  40eb8c: f003 b9c2    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x3384
  40eb90: ab07         	add	r3, sp, #0x1c
  40eb92: 681b         	ldr	r3, [r3]
  40eb94: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  40eb98: 1c5a         	adds	r2, r3, #0x1
  40eb9a: ab07         	add	r3, sp, #0x1c
  40eb9c: 681b         	ldr	r3, [r3]
  40eb9e: f8c3 2180    	str.w	r2, [r3, #0x180]
  40eba2: ab07         	add	r3, sp, #0x1c
  40eba4: 681b         	ldr	r3, [r3]
  40eba6: f04f 0200    	mov.w	r2, #0x0
  40ebaa: f8c3 2188    	str.w	r2, [r3, #0x188]
  40ebae: ab07         	add	r3, sp, #0x1c
  40ebb0: 681b         	ldr	r3, [r3]
  40ebb2: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  40ebb6: f50d 6380    	add.w	r3, sp, #0x400
  40ebba: 4618         	mov	r0, r3
  40ebbc: f37b fc1a    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37b834
  40ebc0: f50d 6282    	add.w	r2, sp, #0x410
  40ebc4: f50d 6380    	add.w	r3, sp, #0x400
  40ebc8: 4610         	mov	r0, r2
  40ebca: 4a1c         	ldr	r2, [pc, #0x70]         @ 0x40ec3c <TrainingStage::doLesson(float)+0x4964>
  40ebcc: 447a         	add	r2, pc
  40ebce: 4611         	mov	r1, r2
  40ebd0: 461a         	mov	r2, r3
  40ebd2: f3a7 ff45    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3a7e8a
  40ebd6: 2000         	movs	r0, #0x0
  40ebd8: 2100         	movs	r1, #0x0
  40ebda: 22ff         	movs	r2, #0xff
  40ebdc: f7f9 fc3c    	bl	0x408458 <Tracer::checkCollision()+0x3cc> @ imm = #-0x6788
  40ebe0: 4602         	mov	r2, r0
  40ebe2: ab27         	add	r3, sp, #0x9c
  40ebe4: 4611         	mov	r1, r2
  40ebe6: 7019         	strb	r1, [r3]
  40ebe8: f3c2 2107    	ubfx	r1, r2, #0x8, #0x8
  40ebec: 7059         	strb	r1, [r3, #0x1]
  40ebee: f3c2 4207    	ubfx	r2, r2, #0x10, #0x8
  40ebf2: 709a         	strb	r2, [r3, #0x2]
  40ebf4: f50d 6282    	add.w	r2, sp, #0x410
  40ebf8: ab27         	add	r3, sp, #0x9c
  40ebfa: 4628         	mov	r0, r5
  40ebfc: 4611         	mov	r1, r2
  40ebfe: 681a         	ldr	r2, [r3]
  40ec00: 2303         	movs	r3, #0x3
  40ec02: f72e fb5d    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xd1946
  40ec06: f50d 6382    	add.w	r3, sp, #0x410
  40ec0a: 4618         	mov	r0, r3
  40ec0c: f3a6 fe82    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a6d04
  40ec10: f50d 6380    	add.w	r3, sp, #0x400
  40ec14: 4618         	mov	r0, r3
  40ec16: f37b fbf1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37b7e2
  40ec1a: 4b09         	ldr	r3, [pc, #0x24]         @ 0x40ec40 <TrainingStage::doLesson(float)+0x4968>
  40ec1c: 58e3         	ldr	r3, [r4, r3]
  40ec1e: 681b         	ldr	r3, [r3]
  40ec20: 4618         	mov	r0, r3
  40ec22: 214f         	movs	r1, #0x4f
  40ec24: 2201         	movs	r2, #0x1
  40ec26: f7e9 f88b    	bl	0x3f7d40 <Sound::playSoundWithVoice(int, int)> @ imm = #-0x16eea
  40ec2a: f003 b973    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x32e6
  40ec2e: bf00         	nop
  40ec30: 851f         	strh	r7, [r3, #0x28]
  40ec32: 51eb         	str	r3, [r5, r7]
  40ec34: 1eb8         	subs	r0, r7, #0x2
  40ec36: 4009         	ands	r1, r1
  40ec38: d784         	bvc	0x40eb44 <TrainingStage::doLesson(float)+0x486c> @ imm = #-0xf8
  40ec3a: ffff c1b0    	vsra.u64	d28, d16, #0x1
  40ec3e: 003c         	movs	r4, r7
  40ec40: d730         	bvc	0x40eca4 <TrainingStage::doLesson(float)+0x49cc> @ imm = #0x60
  40ec42: ffff 4bc0    	vtbx.8	d20, {d31, fpinst2, mvfr0, mvfr1}, d0
  40ec46: 58e3         	ldr	r3, [r4, r3]
  40ec48: 681b         	ldr	r3, [r3]
  40ec4a: 681b         	ldr	r3, [r3]
  40ec4c: f503 7329    	add.w	r3, r3, #0x2a4
  40ec50: 681b         	ldr	r3, [r3]
  40ec52: 4abd         	ldr	r2, [pc, #0x2f4]        @ 0x40ef48 <TrainingStage::doLesson(float)+0x4c70>
  40ec54: 58a2         	ldr	r2, [r4, r2]
  40ec56: 6812         	ldr	r2, [r2]
  40ec58: 4610         	mov	r0, r2
  40ec5a: f04f 0100    	mov.w	r1, #0x0
  40ec5e: 4798         	blx	r3
  40ec60: ab07         	add	r3, sp, #0x1c
  40ec62: 681b         	ldr	r3, [r3]
  40ec64: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40ec68: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  40ec6c: 681b         	ldr	r3, [r3]
  40ec6e: f503 730e    	add.w	r3, r3, #0x238
  40ec72: 681b         	ldr	r3, [r3]
  40ec74: aa07         	add	r2, sp, #0x1c
  40ec76: 6812         	ldr	r2, [r2]
  40ec78: f8d2 21a8    	ldr.w	r2, [r2, #0x1a8]
  40ec7c: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  40ec80: 4610         	mov	r0, r2
  40ec82: f04f 0100    	mov.w	r1, #0x0
  40ec86: 4798         	blx	r3
  40ec88: ab07         	add	r3, sp, #0x1c
  40ec8a: 681b         	ldr	r3, [r3]
  40ec8c: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40ec90: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40ec94: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  40ec98: 681b         	ldr	r3, [r3]
  40ec9a: 3398         	adds	r3, #0x98
  40ec9c: 681d         	ldr	r5, [r3]
  40ec9e: ab07         	add	r3, sp, #0x1c
  40eca0: 681b         	ldr	r3, [r3]
  40eca2: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40eca6: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40ecaa: f8d3 6114    	ldr.w	r6, [r3, #0x114]
  40ecae: ab07         	add	r3, sp, #0x1c
  40ecb0: 681b         	ldr	r3, [r3]
  40ecb2: edd3 7a62    	vldr	s15, [r3, #392]
  40ecb6: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  40ecba: ec51 0b17    	vmov	r0, r1, d7
  40ecbe: f6c7 e924    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x138db8
  40ecc2: ec41 0b16    	vmov	d6, r0, r1
  40ecc6: eeb1 7b04    	vmov.f64	d7, #5.000000e+00
  40ecca: ee26 6b07    	vmul.f64	d6, d6, d7
  40ecce: eeb2 7b04    	vmov.f64	d7, #1.000000e+01
  40ecd2: ee36 7b47    	vsub.f64	d7, d6, d7
  40ecd6: eef7 7bc7    	vcvt.f32.f64	s15, d7
  40ecda: 4630         	mov	r0, r6
  40ecdc: ee17 1a90    	vmov	r1, s15
  40ece0: 47a8         	blx	r5
  40ece2: ab07         	add	r3, sp, #0x1c
  40ece4: 681b         	ldr	r3, [r3]
  40ece6: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40ecea: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40ecee: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  40ecf2: 681b         	ldr	r3, [r3]
  40ecf4: 3398         	adds	r3, #0x98
  40ecf6: 681d         	ldr	r5, [r3]
  40ecf8: ab07         	add	r3, sp, #0x1c
  40ecfa: 681b         	ldr	r3, [r3]
  40ecfc: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40ed00: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40ed04: f8d3 6110    	ldr.w	r6, [r3, #0x110]
  40ed08: ab07         	add	r3, sp, #0x1c
  40ed0a: 681b         	ldr	r3, [r3]
  40ed0c: edd3 7a62    	vldr	s15, [r3, #392]
  40ed10: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  40ed14: ed9f 7b8a    	vldr	d7, [pc, #552]          @ 0x40ef40 <TrainingStage::doLesson(float)+0x4c68>
  40ed18: ee36 7b07    	vadd.f64	d7, d6, d7
  40ed1c: ec51 0b17    	vmov	r0, r1, d7
  40ed20: f6c7 e8f2    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x138e1c
  40ed24: ec41 0b16    	vmov	d6, r0, r1
  40ed28: eeb1 7b04    	vmov.f64	d7, #5.000000e+00
  40ed2c: ee26 6b07    	vmul.f64	d6, d6, d7
  40ed30: eeb2 7b04    	vmov.f64	d7, #1.000000e+01
  40ed34: ee36 7b07    	vadd.f64	d7, d6, d7
  40ed38: eef7 7bc7    	vcvt.f32.f64	s15, d7
  40ed3c: 4630         	mov	r0, r6
  40ed3e: ee17 1a90    	vmov	r1, s15
  40ed42: 47a8         	blx	r5
  40ed44: ab07         	add	r3, sp, #0x1c
  40ed46: 681b         	ldr	r3, [r3]
  40ed48: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40ed4c: 681b         	ldr	r3, [r3]
  40ed4e: f503 730e    	add.w	r3, r3, #0x238
  40ed52: 681b         	ldr	r3, [r3]
  40ed54: aa07         	add	r2, sp, #0x1c
  40ed56: 6812         	ldr	r2, [r2]
  40ed58: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40ed5c: 4610         	mov	r0, r2
  40ed5e: f04f 0100    	mov.w	r1, #0x0
  40ed62: f2c4 315c    	movt	r1, #0x435c
  40ed66: 4798         	blx	r3
  40ed68: ab07         	add	r3, sp, #0x1c
  40ed6a: 681b         	ldr	r3, [r3]
  40ed6c: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40ed70: 681b         	ldr	r3, [r3]
  40ed72: f503 73ec    	add.w	r3, r3, #0x1d8
  40ed76: 681b         	ldr	r3, [r3]
  40ed78: aa07         	add	r2, sp, #0x1c
  40ed7a: 6812         	ldr	r2, [r2]
  40ed7c: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40ed80: 4610         	mov	r0, r2
  40ed82: 4798         	blx	r3
  40ed84: 4603         	mov	r3, r0
  40ed86: f8d3 5114    	ldr.w	r5, [r3, #0x114]
  40ed8a: 682b         	ldr	r3, [r5]
  40ed8c: 3398         	adds	r3, #0x98
  40ed8e: 681e         	ldr	r6, [r3]
  40ed90: ab07         	add	r3, sp, #0x1c
  40ed92: 681b         	ldr	r3, [r3]
  40ed94: edd3 7a62    	vldr	s15, [r3, #392]
  40ed98: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  40ed9c: ec51 0b17    	vmov	r0, r1, d7
  40eda0: f6c7 e8b2    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x138e9c
  40eda4: ec41 0b16    	vmov	d6, r0, r1
  40eda8: eeb1 7b04    	vmov.f64	d7, #5.000000e+00
  40edac: ee26 6b07    	vmul.f64	d6, d6, d7
  40edb0: eeb2 7b04    	vmov.f64	d7, #1.000000e+01
  40edb4: ee36 7b47    	vsub.f64	d7, d6, d7
  40edb8: eef7 7bc7    	vcvt.f32.f64	s15, d7
  40edbc: 4628         	mov	r0, r5
  40edbe: ee17 1a90    	vmov	r1, s15
  40edc2: 47b0         	blx	r6
  40edc4: ab07         	add	r3, sp, #0x1c
  40edc6: 681b         	ldr	r3, [r3]
  40edc8: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40edcc: 681b         	ldr	r3, [r3]
  40edce: f503 73ec    	add.w	r3, r3, #0x1d8
  40edd2: 681b         	ldr	r3, [r3]
  40edd4: aa07         	add	r2, sp, #0x1c
  40edd6: 6812         	ldr	r2, [r2]
  40edd8: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40eddc: 4610         	mov	r0, r2
  40edde: 4798         	blx	r3
  40ede0: 4603         	mov	r3, r0
  40ede2: f8d3 5110    	ldr.w	r5, [r3, #0x110]
  40ede6: 682b         	ldr	r3, [r5]
  40ede8: 3398         	adds	r3, #0x98
  40edea: 681e         	ldr	r6, [r3]
  40edec: ab07         	add	r3, sp, #0x1c
  40edee: 681b         	ldr	r3, [r3]
  40edf0: edd3 7a62    	vldr	s15, [r3, #392]
  40edf4: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  40edf8: ed9f 7b51    	vldr	d7, [pc, #324]          @ 0x40ef40 <TrainingStage::doLesson(float)+0x4c68>
  40edfc: ee36 7b07    	vadd.f64	d7, d6, d7
  40ee00: ec51 0b17    	vmov	r0, r1, d7
  40ee04: f6c7 e880    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x138f00
  40ee08: ec41 0b16    	vmov	d6, r0, r1
  40ee0c: eeb1 7b04    	vmov.f64	d7, #5.000000e+00
  40ee10: ee26 7b07    	vmul.f64	d7, d6, d7
  40ee14: eef7 7bc7    	vcvt.f32.f64	s15, d7
  40ee18: 4628         	mov	r0, r5
  40ee1a: ee17 1a90    	vmov	r1, s15
  40ee1e: 47b0         	blx	r6
  40ee20: ab07         	add	r3, sp, #0x1c
  40ee22: 681b         	ldr	r3, [r3]
  40ee24: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40ee28: 681b         	ldr	r3, [r3]
  40ee2a: f503 73ce    	add.w	r3, r3, #0x19c
  40ee2e: 681b         	ldr	r3, [r3]
  40ee30: aa07         	add	r2, sp, #0x1c
  40ee32: 6812         	ldr	r2, [r2]
  40ee34: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40ee38: 4610         	mov	r0, r2
  40ee3a: 2101         	movs	r1, #0x1
  40ee3c: 4798         	blx	r3
  40ee3e: ab07         	add	r3, sp, #0x1c
  40ee40: 681b         	ldr	r3, [r3]
  40ee42: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40ee46: 2201         	movs	r2, #0x1
  40ee48: f883 211c    	strb.w	r2, [r3, #0x11c]
  40ee4c: ab07         	add	r3, sp, #0x1c
  40ee4e: 681b         	ldr	r3, [r3]
  40ee50: ed93 7a62    	vldr	s14, [r3, #392]
  40ee54: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  40ee58: eeb4 7ae7    	vcmpe.f32	s14, s15
  40ee5c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40ee60: d505         	bpl	0x40ee6e <TrainingStage::doLesson(float)+0x4b96> @ imm = #0xa
  40ee62: aa07         	add	r2, sp, #0x1c
  40ee64: ab06         	add	r3, sp, #0x18
  40ee66: 6810         	ldr	r0, [r2]
  40ee68: 6819         	ldr	r1, [r3]
  40ee6a: f7fa ffe1    	bl	0x409e30 <TrainingStage::headChatter(float)> @ imm = #-0x503e
  40ee6e: ab07         	add	r3, sp, #0x1c
  40ee70: 681b         	ldr	r3, [r3]
  40ee72: ed93 7a62    	vldr	s14, [r3, #392]
  40ee76: eef0 7a08    	vmov.f32	s15, #3.000000e+00
  40ee7a: eeb4 7ae7    	vcmpe.f32	s14, s15
  40ee7e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40ee82: dc01         	bgt	0x40ee88 <TrainingStage::doLesson(float)+0x4bb0> @ imm = #0x2
  40ee84: f003 b846    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x308c
  40ee88: ab07         	add	r3, sp, #0x1c
  40ee8a: 681b         	ldr	r3, [r3]
  40ee8c: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  40ee90: 1c5a         	adds	r2, r3, #0x1
  40ee92: ab07         	add	r3, sp, #0x1c
  40ee94: 681b         	ldr	r3, [r3]
  40ee96: f8c3 2180    	str.w	r2, [r3, #0x180]
  40ee9a: ab07         	add	r3, sp, #0x1c
  40ee9c: 681b         	ldr	r3, [r3]
  40ee9e: f04f 0200    	mov.w	r2, #0x0
  40eea2: f8c3 2188    	str.w	r2, [r3, #0x188]
  40eea6: ab07         	add	r3, sp, #0x1c
  40eea8: 681b         	ldr	r3, [r3]
  40eeaa: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  40eeae: f50d 6380    	add.w	r3, sp, #0x400
  40eeb2: 4618         	mov	r0, r3
  40eeb4: f37b fa9e    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37b53c
  40eeb8: f50d 6282    	add.w	r2, sp, #0x410
  40eebc: f50d 6380    	add.w	r3, sp, #0x400
  40eec0: 4610         	mov	r0, r2
  40eec2: 4a22         	ldr	r2, [pc, #0x88]         @ 0x40ef4c <TrainingStage::doLesson(float)+0x4c74>
  40eec4: 447a         	add	r2, pc
  40eec6: 4611         	mov	r1, r2
  40eec8: 461a         	mov	r2, r3
  40eeca: f3a7 fdc9    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3a7b92
  40eece: 2000         	movs	r0, #0x0
  40eed0: 2100         	movs	r1, #0x0
  40eed2: 22ff         	movs	r2, #0xff
  40eed4: f7f9 fac0    	bl	0x408458 <Tracer::checkCollision()+0x3cc> @ imm = #-0x6a80
  40eed8: 4602         	mov	r2, r0
  40eeda: ab28         	add	r3, sp, #0xa0
  40eedc: 4611         	mov	r1, r2
  40eede: 7019         	strb	r1, [r3]
  40eee0: f3c2 2107    	ubfx	r1, r2, #0x8, #0x8
  40eee4: 7059         	strb	r1, [r3, #0x1]
  40eee6: f3c2 4207    	ubfx	r2, r2, #0x10, #0x8
  40eeea: 709a         	strb	r2, [r3, #0x2]
  40eeec: f50d 6282    	add.w	r2, sp, #0x410
  40eef0: ab28         	add	r3, sp, #0xa0
  40eef2: 4628         	mov	r0, r5
  40eef4: 4611         	mov	r1, r2
  40eef6: 681a         	ldr	r2, [r3]
  40eef8: 2303         	movs	r3, #0x3
  40eefa: f72e f9e1    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xd1c3e
  40eefe: f50d 6382    	add.w	r3, sp, #0x410
  40ef02: 4618         	mov	r0, r3
  40ef04: f3a6 fd06    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a6a0c
  40ef08: f50d 6380    	add.w	r3, sp, #0x400
  40ef0c: 4618         	mov	r0, r3
  40ef0e: f37b fa75    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37b4ea
  40ef12: 4b0f         	ldr	r3, [pc, #0x3c]         @ 0x40ef50 <TrainingStage::doLesson(float)+0x4c78>
  40ef14: 58e3         	ldr	r3, [r4, r3]
  40ef16: 681b         	ldr	r3, [r3]
  40ef18: 4618         	mov	r0, r3
  40ef1a: 2150         	movs	r1, #0x50
  40ef1c: 2201         	movs	r2, #0x1
  40ef1e: f7e8 ff0f    	bl	0x3f7d40 <Sound::playSoundWithVoice(int, int)> @ imm = #-0x171e2
  40ef22: ab07         	add	r3, sp, #0x1c
  40ef24: 681b         	ldr	r3, [r3]
  40ef26: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  40ef2a: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  40ef2e: 4618         	mov	r0, r3
  40ef30: 2100         	movs	r1, #0x0
  40ef32: f73f fc9f    	bl	0x34e874 <Joypad::disableMovement(bool)> @ imm = #-0xc06c2
  40ef36: f002 bfed    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x2fda
  40ef3a: bf00         	nop
  40ef3c: f3af 8000    	nop.w
  40ef40: 851f         	strh	r7, [r3, #0x28]
  40ef42: 51eb         	str	r3, [r5, r7]
  40ef44: 1eb8         	subs	r0, r7, #0x2
  40ef46: 4009         	ands	r1, r1
  40ef48: d784         	bvc	0x40ee54 <TrainingStage::doLesson(float)+0x4b7c> @ imm = #-0xf8
  40ef4a: ffff bee8    	<unknown>
  40ef4e: 003c         	movs	r4, r7
  40ef50: d730         	bvc	0x40efb4 <TrainingStage::doLesson(float)+0x4cdc> @ imm = #0x60
  40ef52: ffff 4bf4    	<unknown>
  40ef56: 58e3         	ldr	r3, [r4, r3]
  40ef58: 681b         	ldr	r3, [r3]
  40ef5a: 681b         	ldr	r3, [r3]
  40ef5c: f503 7329    	add.w	r3, r3, #0x2a4
  40ef60: 681b         	ldr	r3, [r3]
  40ef62: 4af1         	ldr	r2, [pc, #0x3c4]        @ 0x40f328 <TrainingStage::doLesson(float)+0x5050>
  40ef64: 58a2         	ldr	r2, [r4, r2]
  40ef66: 6812         	ldr	r2, [r2]
  40ef68: 4610         	mov	r0, r2
  40ef6a: f04f 0100    	mov.w	r1, #0x0
  40ef6e: 4798         	blx	r3
  40ef70: ab07         	add	r3, sp, #0x1c
  40ef72: 681b         	ldr	r3, [r3]
  40ef74: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40ef78: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  40ef7c: 681b         	ldr	r3, [r3]
  40ef7e: f503 730e    	add.w	r3, r3, #0x238
  40ef82: 681b         	ldr	r3, [r3]
  40ef84: aa07         	add	r2, sp, #0x1c
  40ef86: 6812         	ldr	r2, [r2]
  40ef88: f8d2 21a8    	ldr.w	r2, [r2, #0x1a8]
  40ef8c: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  40ef90: 4610         	mov	r0, r2
  40ef92: f04f 0100    	mov.w	r1, #0x0
  40ef96: 4798         	blx	r3
  40ef98: ab07         	add	r3, sp, #0x1c
  40ef9a: 681b         	ldr	r3, [r3]
  40ef9c: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40efa0: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40efa4: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  40efa8: 681b         	ldr	r3, [r3]
  40efaa: 3398         	adds	r3, #0x98
  40efac: 681d         	ldr	r5, [r3]
  40efae: ab07         	add	r3, sp, #0x1c
  40efb0: 681b         	ldr	r3, [r3]
  40efb2: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40efb6: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40efba: f8d3 6114    	ldr.w	r6, [r3, #0x114]
  40efbe: ab07         	add	r3, sp, #0x1c
  40efc0: 681b         	ldr	r3, [r3]
  40efc2: edd3 7a62    	vldr	s15, [r3, #392]
  40efc6: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  40efca: ec51 0b17    	vmov	r0, r1, d7
  40efce: f6c6 ef9c    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x1390c8
  40efd2: ec41 0b16    	vmov	d6, r0, r1
  40efd6: eeb1 7b04    	vmov.f64	d7, #5.000000e+00
  40efda: ee26 6b07    	vmul.f64	d6, d6, d7
  40efde: eeb2 7b04    	vmov.f64	d7, #1.000000e+01
  40efe2: ee36 7b47    	vsub.f64	d7, d6, d7
  40efe6: eef7 7bc7    	vcvt.f32.f64	s15, d7
  40efea: 4630         	mov	r0, r6
  40efec: ee17 1a90    	vmov	r1, s15
  40eff0: 47a8         	blx	r5
  40eff2: ab07         	add	r3, sp, #0x1c
  40eff4: 681b         	ldr	r3, [r3]
  40eff6: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40effa: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40effe: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  40f002: 681b         	ldr	r3, [r3]
  40f004: 3398         	adds	r3, #0x98
  40f006: 681d         	ldr	r5, [r3]
  40f008: ab07         	add	r3, sp, #0x1c
  40f00a: 681b         	ldr	r3, [r3]
  40f00c: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40f010: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40f014: f8d3 6110    	ldr.w	r6, [r3, #0x110]
  40f018: ab07         	add	r3, sp, #0x1c
  40f01a: 681b         	ldr	r3, [r3]
  40f01c: edd3 7a62    	vldr	s15, [r3, #392]
  40f020: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  40f024: ed9f 7bbc    	vldr	d7, [pc, #752]          @ 0x40f318 <TrainingStage::doLesson(float)+0x5040>
  40f028: ee36 7b07    	vadd.f64	d7, d6, d7
  40f02c: ec51 0b17    	vmov	r0, r1, d7
  40f030: f6c6 ef6a    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x13912c
  40f034: ec41 0b16    	vmov	d6, r0, r1
  40f038: eeb1 7b04    	vmov.f64	d7, #5.000000e+00
  40f03c: ee26 6b07    	vmul.f64	d6, d6, d7
  40f040: eeb2 7b04    	vmov.f64	d7, #1.000000e+01
  40f044: ee36 7b07    	vadd.f64	d7, d6, d7
  40f048: eef7 7bc7    	vcvt.f32.f64	s15, d7
  40f04c: 4630         	mov	r0, r6
  40f04e: ee17 1a90    	vmov	r1, s15
  40f052: 47a8         	blx	r5
  40f054: ab07         	add	r3, sp, #0x1c
  40f056: 681b         	ldr	r3, [r3]
  40f058: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40f05c: 681b         	ldr	r3, [r3]
  40f05e: f503 730e    	add.w	r3, r3, #0x238
  40f062: 681b         	ldr	r3, [r3]
  40f064: aa07         	add	r2, sp, #0x1c
  40f066: 6812         	ldr	r2, [r2]
  40f068: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40f06c: 4610         	mov	r0, r2
  40f06e: f04f 0100    	mov.w	r1, #0x0
  40f072: f2c4 315c    	movt	r1, #0x435c
  40f076: 4798         	blx	r3
  40f078: ab07         	add	r3, sp, #0x1c
  40f07a: 681b         	ldr	r3, [r3]
  40f07c: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40f080: 681b         	ldr	r3, [r3]
  40f082: f503 73ec    	add.w	r3, r3, #0x1d8
  40f086: 681b         	ldr	r3, [r3]
  40f088: aa07         	add	r2, sp, #0x1c
  40f08a: 6812         	ldr	r2, [r2]
  40f08c: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40f090: 4610         	mov	r0, r2
  40f092: 4798         	blx	r3
  40f094: 4603         	mov	r3, r0
  40f096: f8d3 5114    	ldr.w	r5, [r3, #0x114]
  40f09a: 682b         	ldr	r3, [r5]
  40f09c: 3398         	adds	r3, #0x98
  40f09e: 681e         	ldr	r6, [r3]
  40f0a0: ab07         	add	r3, sp, #0x1c
  40f0a2: 681b         	ldr	r3, [r3]
  40f0a4: edd3 7a62    	vldr	s15, [r3, #392]
  40f0a8: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  40f0ac: ec51 0b17    	vmov	r0, r1, d7
  40f0b0: f6c6 ef2a    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x1391ac
  40f0b4: ec41 0b16    	vmov	d6, r0, r1
  40f0b8: eeb1 7b04    	vmov.f64	d7, #5.000000e+00
  40f0bc: ee26 6b07    	vmul.f64	d6, d6, d7
  40f0c0: eeb3 7b0e    	vmov.f64	d7, #3.000000e+01
  40f0c4: ee36 7b47    	vsub.f64	d7, d6, d7
  40f0c8: eef7 7bc7    	vcvt.f32.f64	s15, d7
  40f0cc: 4628         	mov	r0, r5
  40f0ce: ee17 1a90    	vmov	r1, s15
  40f0d2: 47b0         	blx	r6
  40f0d4: ab07         	add	r3, sp, #0x1c
  40f0d6: 681b         	ldr	r3, [r3]
  40f0d8: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40f0dc: 681b         	ldr	r3, [r3]
  40f0de: f503 73ec    	add.w	r3, r3, #0x1d8
  40f0e2: 681b         	ldr	r3, [r3]
  40f0e4: aa07         	add	r2, sp, #0x1c
  40f0e6: 6812         	ldr	r2, [r2]
  40f0e8: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40f0ec: 4610         	mov	r0, r2
  40f0ee: 4798         	blx	r3
  40f0f0: 4603         	mov	r3, r0
  40f0f2: f8d3 5110    	ldr.w	r5, [r3, #0x110]
  40f0f6: 682b         	ldr	r3, [r5]
  40f0f8: 3398         	adds	r3, #0x98
  40f0fa: 681e         	ldr	r6, [r3]
  40f0fc: ab07         	add	r3, sp, #0x1c
  40f0fe: 681b         	ldr	r3, [r3]
  40f100: edd3 7a62    	vldr	s15, [r3, #392]
  40f104: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  40f108: ed9f 7b83    	vldr	d7, [pc, #524]          @ 0x40f318 <TrainingStage::doLesson(float)+0x5040>
  40f10c: ee36 7b07    	vadd.f64	d7, d6, d7
  40f110: ec51 0b17    	vmov	r0, r1, d7
  40f114: f6c6 eef8    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x139210
  40f118: ec41 0b16    	vmov	d6, r0, r1
  40f11c: eeb1 7b04    	vmov.f64	d7, #5.000000e+00
  40f120: ee26 6b07    	vmul.f64	d6, d6, d7
  40f124: eeb3 7b04    	vmov.f64	d7, #2.000000e+01
  40f128: ee36 7b47    	vsub.f64	d7, d6, d7
  40f12c: eef7 7bc7    	vcvt.f32.f64	s15, d7
  40f130: 4628         	mov	r0, r5
  40f132: ee17 1a90    	vmov	r1, s15
  40f136: 47b0         	blx	r6
  40f138: ab07         	add	r3, sp, #0x1c
  40f13a: 681b         	ldr	r3, [r3]
  40f13c: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40f140: 681b         	ldr	r3, [r3]
  40f142: f503 730c    	add.w	r3, r3, #0x230
  40f146: 681d         	ldr	r5, [r3]
  40f148: ab07         	add	r3, sp, #0x1c
  40f14a: 681b         	ldr	r3, [r3]
  40f14c: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40f150: 461e         	mov	r6, r3
  40f152: ab84         	add	r3, sp, #0x210
  40f154: 4618         	mov	r0, r3
  40f156: ed9f 0b72    	vldr	d0, [pc, #456]          @ 0x40f320 <TrainingStage::doLesson(float)+0x5048>
  40f15a: eebf 1b00    	vmov.f64	d1, #-1.000000e+00
  40f15e: f7f9 f9b9    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x6c8e
  40f162: ab84         	add	r3, sp, #0x210
  40f164: 466a         	mov	r2, sp
  40f166: f103 0108    	add.w	r1, r3, #0x8
  40f16a: c903         	ldm	r1, {r0, r1}
  40f16c: e882 0003    	stm.w	r2, {r0, r1}
  40f170: cb0c         	ldm	r3, {r2, r3}
  40f172: 4630         	mov	r0, r6
  40f174: 47a8         	blx	r5
  40f176: ab07         	add	r3, sp, #0x1c
  40f178: 681b         	ldr	r3, [r3]
  40f17a: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40f17e: 2201         	movs	r2, #0x1
  40f180: f883 215a    	strb.w	r2, [r3, #0x15a]
  40f184: ab07         	add	r3, sp, #0x1c
  40f186: 681b         	ldr	r3, [r3]
  40f188: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40f18c: 681b         	ldr	r3, [r3]
  40f18e: f503 73ce    	add.w	r3, r3, #0x19c
  40f192: 681b         	ldr	r3, [r3]
  40f194: aa07         	add	r2, sp, #0x1c
  40f196: 6812         	ldr	r2, [r2]
  40f198: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40f19c: 4610         	mov	r0, r2
  40f19e: 2101         	movs	r1, #0x1
  40f1a0: 4798         	blx	r3
  40f1a2: ab07         	add	r3, sp, #0x1c
  40f1a4: 681b         	ldr	r3, [r3]
  40f1a6: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40f1aa: 2201         	movs	r2, #0x1
  40f1ac: f883 211c    	strb.w	r2, [r3, #0x11c]
  40f1b0: ab07         	add	r3, sp, #0x1c
  40f1b2: 681b         	ldr	r3, [r3]
  40f1b4: ed93 7a62    	vldr	s14, [r3, #392]
  40f1b8: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  40f1bc: eeb4 7ae7    	vcmpe.f32	s14, s15
  40f1c0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40f1c4: d505         	bpl	0x40f1d2 <TrainingStage::doLesson(float)+0x4efa> @ imm = #0xa
  40f1c6: aa07         	add	r2, sp, #0x1c
  40f1c8: ab06         	add	r3, sp, #0x18
  40f1ca: 6810         	ldr	r0, [r2]
  40f1cc: 6819         	ldr	r1, [r3]
  40f1ce: f7fa fe2f    	bl	0x409e30 <TrainingStage::headChatter(float)> @ imm = #-0x53a2
  40f1d2: ab07         	add	r3, sp, #0x1c
  40f1d4: 681b         	ldr	r3, [r3]
  40f1d6: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  40f1da: 681b         	ldr	r3, [r3]
  40f1dc: 3390         	adds	r3, #0x90
  40f1de: 681b         	ldr	r3, [r3]
  40f1e0: aa07         	add	r2, sp, #0x1c
  40f1e2: 6812         	ldr	r2, [r2]
  40f1e4: f8d2 2174    	ldr.w	r2, [r2, #0x174]
  40f1e8: 4610         	mov	r0, r2
  40f1ea: 2100         	movs	r1, #0x0
  40f1ec: 4798         	blx	r3
  40f1ee: ab07         	add	r3, sp, #0x1c
  40f1f0: 681b         	ldr	r3, [r3]
  40f1f2: f8d3 3170    	ldr.w	r3, [r3, #0x170]
  40f1f6: 681b         	ldr	r3, [r3]
  40f1f8: 3390         	adds	r3, #0x90
  40f1fa: 681b         	ldr	r3, [r3]
  40f1fc: aa07         	add	r2, sp, #0x1c
  40f1fe: 6812         	ldr	r2, [r2]
  40f200: f8d2 2170    	ldr.w	r2, [r2, #0x170]
  40f204: 4610         	mov	r0, r2
  40f206: 2101         	movs	r1, #0x1
  40f208: 4798         	blx	r3
  40f20a: ab07         	add	r3, sp, #0x1c
  40f20c: 681b         	ldr	r3, [r3]
  40f20e: f8d3 3170    	ldr.w	r3, [r3, #0x170]
  40f212: 681b         	ldr	r3, [r3]
  40f214: 334c         	adds	r3, #0x4c
  40f216: 681d         	ldr	r5, [r3]
  40f218: ab07         	add	r3, sp, #0x1c
  40f21a: 681b         	ldr	r3, [r3]
  40f21c: f8d3 6170    	ldr.w	r6, [r3, #0x170]
  40f220: ab07         	add	r3, sp, #0x1c
  40f222: 681b         	ldr	r3, [r3]
  40f224: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40f228: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  40f22c: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  40f230: ed93 7b0a    	vldr	d7, [r3, #40]
  40f234: eef7 6bc7    	vcvt.f32.f64	s13, d7
  40f238: ab07         	add	r3, sp, #0x1c
  40f23a: 681b         	ldr	r3, [r3]
  40f23c: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40f240: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  40f244: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  40f248: ed93 7b0c    	vldr	d7, [r3, #48]
  40f24c: eef7 7bc7    	vcvt.f32.f64	s15, d7
  40f250: abfc         	add	r3, sp, #0x3f0
  40f252: 4618         	mov	r0, r3
  40f254: ee16 1a90    	vmov	r1, s13
  40f258: ee17 2a90    	vmov	r2, s15
  40f25c: f183 fd48    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x183a90
  40f260: ab07         	add	r3, sp, #0x1c
  40f262: 681b         	ldr	r3, [r3]
  40f264: ed93 7a62    	vldr	s14, [r3, #392]
  40f268: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  40f26c: ee67 7a27    	vmul.f32	s15, s14, s15
  40f270: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  40f274: ec51 0b17    	vmov	r0, r1, d7
  40f278: f6c6 ee46    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x139374
  40f27c: ec41 0b16    	vmov	d6, r0, r1
  40f280: eeb2 7b04    	vmov.f64	d7, #1.000000e+01
  40f284: ee26 6b07    	vmul.f64	d6, d6, d7
  40f288: eeb3 7b09    	vmov.f64	d7, #2.500000e+01
  40f28c: ee36 7b07    	vadd.f64	d7, d6, d7
  40f290: eef7 7bc7    	vcvt.f32.f64	s15, d7
  40f294: f50d 6380    	add.w	r3, sp, #0x400
  40f298: 4618         	mov	r0, r3
  40f29a: f04f 0100    	mov.w	r1, #0x0
  40f29e: f2cc 11c8    	movt	r1, #0xc1c8
  40f2a2: ee17 2a90    	vmov	r2, s15
  40f2a6: f183 fd23    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x183a46
  40f2aa: f50d 6182    	add.w	r1, sp, #0x410
  40f2ae: aafc         	add	r2, sp, #0x3f0
  40f2b0: f50d 6380    	add.w	r3, sp, #0x400
  40f2b4: 4608         	mov	r0, r1
  40f2b6: 4611         	mov	r1, r2
  40f2b8: 461a         	mov	r2, r3
  40f2ba: f7f9 f8fb    	bl	0x4084b4 <Tracer::checkCollision()+0x428> @ imm = #-0x6e0a
  40f2be: f50d 6382    	add.w	r3, sp, #0x410
  40f2c2: 4630         	mov	r0, r6
  40f2c4: 4619         	mov	r1, r3
  40f2c6: 47a8         	blx	r5
  40f2c8: ab07         	add	r3, sp, #0x1c
  40f2ca: 681b         	ldr	r3, [r3]
  40f2cc: f8d3 3170    	ldr.w	r3, [r3, #0x170]
  40f2d0: 681b         	ldr	r3, [r3]
  40f2d2: 3398         	adds	r3, #0x98
  40f2d4: 681b         	ldr	r3, [r3]
  40f2d6: aa07         	add	r2, sp, #0x1c
  40f2d8: 6812         	ldr	r2, [r2]
  40f2da: f8d2 2170    	ldr.w	r2, [r2, #0x170]
  40f2de: 4610         	mov	r0, r2
  40f2e0: f04f 0100    	mov.w	r1, #0x0
  40f2e4: f2c4 21b4    	movt	r1, #0x42b4
  40f2e8: 4798         	blx	r3
  40f2ea: ab07         	add	r3, sp, #0x1c
  40f2ec: 681b         	ldr	r3, [r3]
  40f2ee: ed93 7a62    	vldr	s14, [r3, #392]
  40f2f2: eef0 7a08    	vmov.f32	s15, #3.000000e+00
  40f2f6: eeb4 7ae7    	vcmpe.f32	s14, s15
  40f2fa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40f2fe: dd4c         	ble	0x40f39a <TrainingStage::doLesson(float)+0x50c2> @ imm = #0x98
  40f300: 4b09         	ldr	r3, [pc, #0x24]         @ 0x40f328 <TrainingStage::doLesson(float)+0x5050>
  40f302: 58e3         	ldr	r3, [r4, r3]
  40f304: 681b         	ldr	r3, [r3]
  40f306: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  40f30a: ed93 6b0a    	vldr	d6, [r3, #40]
  40f30e: ab07         	add	r3, sp, #0x1c
  40f310: 681b         	ldr	r3, [r3]
  40f312: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40f316: e009         	b	0x40f32c <TrainingStage::doLesson(float)+0x5054> @ imm = #0x12
  40f318: 851f         	strh	r7, [r3, #0x28]
  40f31a: 51eb         	str	r3, [r5, r7]
  40f31c: 1eb8         	subs	r0, r7, #0x2
  40f31e: 4009         	ands	r1, r1
  40f328: d784         	bvc	0x40f234 <TrainingStage::doLesson(float)+0x4f5c> @ imm = #-0xf8
  40f32a: ffff f8d3    	<unknown>
  40f32e: 3138         	adds	r1, #0x38
  40f330: ed93 7b0a    	vldr	d7, [r3, #40]
  40f334: eeb4 6bc7    	vcmpe.f64	d6, d7
  40f338: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40f33c: d52d         	bpl	0x40f39a <TrainingStage::doLesson(float)+0x50c2> @ imm = #0x5a
  40f33e: 4bb2         	ldr	r3, [pc, #0x2c8]        @ 0x40f608 <TrainingStage::doLesson(float)+0x5330>
  40f340: 58e3         	ldr	r3, [r4, r3]
  40f342: 681b         	ldr	r3, [r3]
  40f344: f8d3 2138    	ldr.w	r2, [r3, #0x138]
  40f348: ab07         	add	r3, sp, #0x1c
  40f34a: 681b         	ldr	r3, [r3]
  40f34c: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40f350: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  40f354: a988         	add	r1, sp, #0x220
  40f356: ed92 4b0a    	vldr	d4, [r2, #40]
  40f35a: ed92 5b0c    	vldr	d5, [r2, #48]
  40f35e: ed93 6b0a    	vldr	d6, [r3, #40]
  40f362: ed93 7b0c    	vldr	d7, [r3, #48]
  40f366: 4608         	mov	r0, r1
  40f368: eeb0 0b44    	vmov.f64	d0, d4
  40f36c: eeb0 1b45    	vmov.f64	d1, d5
  40f370: eeb0 2b46    	vmov.f64	d2, d6
  40f374: eeb0 3b47    	vmov.f64	d3, d7
  40f378: f7f9 f8ec    	bl	0x408554 <Tracer::checkCollision()+0x4c8> @ imm = #-0x6e28
  40f37c: ab88         	add	r3, sp, #0x220
  40f37e: cb0f         	ldm	r3, {r0, r1, r2, r3}
  40f380: f2c7 fe9a    	bl	0x6d70b8 <cpvlength>    @ imm = #0x2c7d34
  40f384: ec41 0b16    	vmov	d6, r0, r1
  40f388: ed9f 7b9d    	vldr	d7, [pc, #628]          @ 0x40f600 <TrainingStage::doLesson(float)+0x5328>
  40f38c: eeb4 6bc7    	vcmpe.f64	d6, d7
  40f390: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40f394: d501         	bpl	0x40f39a <TrainingStage::doLesson(float)+0x50c2> @ imm = #0x2
  40f396: 2301         	movs	r3, #0x1
  40f398: e000         	b	0x40f39c <TrainingStage::doLesson(float)+0x50c4> @ imm = #0x0
  40f39a: 2300         	movs	r3, #0x0
  40f39c: 2b00         	cmp	r3, #0x0
  40f39e: d074         	beq	0x40f48a <TrainingStage::doLesson(float)+0x51b2> @ imm = #0xe8
  40f3a0: ab07         	add	r3, sp, #0x1c
  40f3a2: 681b         	ldr	r3, [r3]
  40f3a4: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  40f3a8: 1c5a         	adds	r2, r3, #0x1
  40f3aa: ab07         	add	r3, sp, #0x1c
  40f3ac: 681b         	ldr	r3, [r3]
  40f3ae: f8c3 2180    	str.w	r2, [r3, #0x180]
  40f3b2: ab07         	add	r3, sp, #0x1c
  40f3b4: 681b         	ldr	r3, [r3]
  40f3b6: f04f 0200    	mov.w	r2, #0x0
  40f3ba: f8c3 2188    	str.w	r2, [r3, #0x188]
  40f3be: ab07         	add	r3, sp, #0x1c
  40f3c0: 681b         	ldr	r3, [r3]
  40f3c2: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  40f3c6: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  40f3ca: 4618         	mov	r0, r3
  40f3cc: 2101         	movs	r1, #0x1
  40f3ce: f73f fa51    	bl	0x34e874 <Joypad::disableMovement(bool)> @ imm = #-0xc0b5e
  40f3d2: ab07         	add	r3, sp, #0x1c
  40f3d4: 681b         	ldr	r3, [r3]
  40f3d6: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  40f3da: 681b         	ldr	r3, [r3]
  40f3dc: 3338         	adds	r3, #0x38
  40f3de: 681b         	ldr	r3, [r3]
  40f3e0: aa07         	add	r2, sp, #0x1c
  40f3e2: 6812         	ldr	r2, [r2]
  40f3e4: f8d2 2174    	ldr.w	r2, [r2, #0x174]
  40f3e8: 4610         	mov	r0, r2
  40f3ea: f04f 517e    	mov.w	r1, #0x3f800000
  40f3ee: 4798         	blx	r3
  40f3f0: ab07         	add	r3, sp, #0x1c
  40f3f2: 681b         	ldr	r3, [r3]
  40f3f4: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  40f3f8: f50d 6380    	add.w	r3, sp, #0x400
  40f3fc: 4618         	mov	r0, r3
  40f3fe: f37a fff9    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37aff2
  40f402: f50d 6282    	add.w	r2, sp, #0x410
  40f406: f50d 6380    	add.w	r3, sp, #0x400
  40f40a: 4610         	mov	r0, r2
  40f40c: 4a7f         	ldr	r2, [pc, #0x1fc]        @ 0x40f60c <TrainingStage::doLesson(float)+0x5334>
  40f40e: 447a         	add	r2, pc
  40f410: 4611         	mov	r1, r2
  40f412: 461a         	mov	r2, r3
  40f414: f3a7 fb24    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3a7648
  40f418: 2000         	movs	r0, #0x0
  40f41a: 2100         	movs	r1, #0x0
  40f41c: 22ff         	movs	r2, #0xff
  40f41e: f7f9 f81b    	bl	0x408458 <Tracer::checkCollision()+0x3cc> @ imm = #-0x6fca
  40f422: 4602         	mov	r2, r0
  40f424: ab29         	add	r3, sp, #0xa4
  40f426: 4611         	mov	r1, r2
  40f428: 7019         	strb	r1, [r3]
  40f42a: f3c2 2107    	ubfx	r1, r2, #0x8, #0x8
  40f42e: 7059         	strb	r1, [r3, #0x1]
  40f430: f3c2 4207    	ubfx	r2, r2, #0x10, #0x8
  40f434: 709a         	strb	r2, [r3, #0x2]
  40f436: f50d 6282    	add.w	r2, sp, #0x410
  40f43a: ab29         	add	r3, sp, #0xa4
  40f43c: 4628         	mov	r0, r5
  40f43e: 4611         	mov	r1, r2
  40f440: 681a         	ldr	r2, [r3]
  40f442: 2303         	movs	r3, #0x3
  40f444: f72d ff3c    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xd2188
  40f448: f50d 6382    	add.w	r3, sp, #0x410
  40f44c: 4618         	mov	r0, r3
  40f44e: f3a6 fa61    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a64c2
  40f452: f50d 6380    	add.w	r3, sp, #0x400
  40f456: 4618         	mov	r0, r3
  40f458: f37a ffd0    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37afa0
  40f45c: 4b6c         	ldr	r3, [pc, #0x1b0]        @ 0x40f610 <TrainingStage::doLesson(float)+0x5338>
  40f45e: 58e3         	ldr	r3, [r4, r3]
  40f460: 681b         	ldr	r3, [r3]
  40f462: 4618         	mov	r0, r3
  40f464: 2151         	movs	r1, #0x51
  40f466: 2201         	movs	r2, #0x1
  40f468: f7e8 fc6a    	bl	0x3f7d40 <Sound::playSoundWithVoice(int, int)> @ imm = #-0x1772c
  40f46c: ab07         	add	r3, sp, #0x1c
  40f46e: 681b         	ldr	r3, [r3]
  40f470: f8d3 3170    	ldr.w	r3, [r3, #0x170]
  40f474: 681b         	ldr	r3, [r3]
  40f476: 3390         	adds	r3, #0x90
  40f478: 681b         	ldr	r3, [r3]
  40f47a: aa07         	add	r2, sp, #0x1c
  40f47c: 6812         	ldr	r2, [r2]
  40f47e: f8d2 2170    	ldr.w	r2, [r2, #0x170]
  40f482: 4610         	mov	r0, r2
  40f484: 2100         	movs	r1, #0x0
  40f486: 4798         	blx	r3
  40f488: e0b7         	b	0x40f5fa <TrainingStage::doLesson(float)+0x5322> @ imm = #0x16e
  40f48a: 4b5f         	ldr	r3, [pc, #0x17c]        @ 0x40f608 <TrainingStage::doLesson(float)+0x5330>
  40f48c: 58e3         	ldr	r3, [r4, r3]
  40f48e: 681b         	ldr	r3, [r3]
  40f490: f893 311c    	ldrb.w	r3, [r3, #0x11c]
  40f494: f083 0301    	eor	r3, r3, #0x1
  40f498: b2db         	uxtb	r3, r3
  40f49a: 2b00         	cmp	r3, #0x0
  40f49c: f000 80ad    	beq.w	0x40f5fa <TrainingStage::doLesson(float)+0x5322> @ imm = #0x15a
  40f4a0: 4b59         	ldr	r3, [pc, #0x164]        @ 0x40f608 <TrainingStage::doLesson(float)+0x5330>
  40f4a2: 58e3         	ldr	r3, [r4, r3]
  40f4a4: 681b         	ldr	r3, [r3]
  40f4a6: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  40f4aa: ed93 7b0e    	vldr	d7, [r3, #56]
  40f4ae: eeb0 6bc7    	vabs.f64	d6, d7
  40f4b2: eeb7 7b00    	vmov.f64	d7, #1.000000e+00
  40f4b6: eeb4 6bc7    	vcmpe.f64	d6, d7
  40f4ba: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40f4be: d401         	bmi	0x40f4c4 <TrainingStage::doLesson(float)+0x51ec> @ imm = #0x2
  40f4c0: f002 bd28    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x2a50
  40f4c4: ab07         	add	r3, sp, #0x1c
  40f4c6: 681b         	ldr	r3, [r3]
  40f4c8: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  40f4cc: 681b         	ldr	r3, [r3]
  40f4ce: 3390         	adds	r3, #0x90
  40f4d0: 681b         	ldr	r3, [r3]
  40f4d2: aa07         	add	r2, sp, #0x1c
  40f4d4: 6812         	ldr	r2, [r2]
  40f4d6: f8d2 2174    	ldr.w	r2, [r2, #0x174]
  40f4da: 4610         	mov	r0, r2
  40f4dc: 2101         	movs	r1, #0x1
  40f4de: 4798         	blx	r3
  40f4e0: ab07         	add	r3, sp, #0x1c
  40f4e2: 681b         	ldr	r3, [r3]
  40f4e4: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  40f4e8: 681b         	ldr	r3, [r3]
  40f4ea: 3338         	adds	r3, #0x38
  40f4ec: 681b         	ldr	r3, [r3]
  40f4ee: aa07         	add	r2, sp, #0x1c
  40f4f0: 6812         	ldr	r2, [r2]
  40f4f2: f8d2 2174    	ldr.w	r2, [r2, #0x174]
  40f4f6: 4610         	mov	r0, r2
  40f4f8: f04f 0100    	mov.w	r1, #0x0
  40f4fc: f6cb 7180    	movt	r1, #0xbf80
  40f500: 4798         	blx	r3
  40f502: ab07         	add	r3, sp, #0x1c
  40f504: 681b         	ldr	r3, [r3]
  40f506: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  40f50a: 681b         	ldr	r3, [r3]
  40f50c: 3398         	adds	r3, #0x98
  40f50e: 681b         	ldr	r3, [r3]
  40f510: aa07         	add	r2, sp, #0x1c
  40f512: 6812         	ldr	r2, [r2]
  40f514: f8d2 2174    	ldr.w	r2, [r2, #0x174]
  40f518: 4610         	mov	r0, r2
  40f51a: f04f 0100    	mov.w	r1, #0x0
  40f51e: f2c4 3107    	movt	r1, #0x4307
  40f522: 4798         	blx	r3
  40f524: ab07         	add	r3, sp, #0x1c
  40f526: 681b         	ldr	r3, [r3]
  40f528: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  40f52c: 681b         	ldr	r3, [r3]
  40f52e: 334c         	adds	r3, #0x4c
  40f530: 681c         	ldr	r4, [r3]
  40f532: ab07         	add	r3, sp, #0x1c
  40f534: 681b         	ldr	r3, [r3]
  40f536: f8d3 516c    	ldr.w	r5, [r3, #0x16c]
  40f53a: ab07         	add	r3, sp, #0x1c
  40f53c: 681b         	ldr	r3, [r3]
  40f53e: ed93 7a62    	vldr	s14, [r3, #392]
  40f542: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  40f546: ee67 7a27    	vmul.f32	s15, s14, s15
  40f54a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  40f54e: ec51 0b17    	vmov	r0, r1, d7
  40f552: f6c6 ecda    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x13964c
  40f556: ec41 0b16    	vmov	d6, r0, r1
  40f55a: eeb2 7b04    	vmov.f64	d7, #1.000000e+01
  40f55e: ee26 7b07    	vmul.f64	d7, d6, d7
  40f562: eef7 7bc7    	vcvt.f32.f64	s15, d7
  40f566: f50d 6382    	add.w	r3, sp, #0x410
  40f56a: 4618         	mov	r0, r3
  40f56c: ee17 1a90    	vmov	r1, s15
  40f570: f04f 0200    	mov.w	r2, #0x0
  40f574: f183 fbbc    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x183778
  40f578: f50d 6382    	add.w	r3, sp, #0x410
  40f57c: 4628         	mov	r0, r5
  40f57e: 4619         	mov	r1, r3
  40f580: 47a0         	blx	r4
  40f582: ab07         	add	r3, sp, #0x1c
  40f584: 681b         	ldr	r3, [r3]
  40f586: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  40f58a: 681b         	ldr	r3, [r3]
  40f58c: 334c         	adds	r3, #0x4c
  40f58e: 681c         	ldr	r4, [r3]
  40f590: ab07         	add	r3, sp, #0x1c
  40f592: 681b         	ldr	r3, [r3]
  40f594: f8d3 5174    	ldr.w	r5, [r3, #0x174]
  40f598: ab07         	add	r3, sp, #0x1c
  40f59a: 681b         	ldr	r3, [r3]
  40f59c: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  40f5a0: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  40f5a4: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  40f5a8: 681b         	ldr	r3, [r3]
  40f5aa: 3350         	adds	r3, #0x50
  40f5ac: 681b         	ldr	r3, [r3]
  40f5ae: aa07         	add	r2, sp, #0x1c
  40f5b0: 6812         	ldr	r2, [r2]
  40f5b2: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  40f5b6: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  40f5ba: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  40f5be: 4610         	mov	r0, r2
  40f5c0: 4798         	blx	r3
  40f5c2: 4606         	mov	r6, r0
  40f5c4: f50d 6380    	add.w	r3, sp, #0x400
  40f5c8: 4618         	mov	r0, r3
  40f5ca: f04f 0100    	mov.w	r1, #0x0
  40f5ce: f2c4 2170    	movt	r1, #0x4270
  40f5d2: f04f 0200    	mov.w	r2, #0x0
  40f5d6: f2c4 225c    	movt	r2, #0x425c
  40f5da: f183 fb89    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x183712
  40f5de: f50d 6282    	add.w	r2, sp, #0x410
  40f5e2: f50d 6380    	add.w	r3, sp, #0x400
  40f5e6: 4610         	mov	r0, r2
  40f5e8: 4631         	mov	r1, r6
  40f5ea: 461a         	mov	r2, r3
  40f5ec: f7f8 ff62    	bl	0x4084b4 <Tracer::checkCollision()+0x428> @ imm = #-0x713c
  40f5f0: f50d 6382    	add.w	r3, sp, #0x410
  40f5f4: 4628         	mov	r0, r5
  40f5f6: 4619         	mov	r1, r3
  40f5f8: 47a0         	blx	r4
  40f5fa: f002 bc8b    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x2916
  40f5fe: bf00         	nop
  40f600: 0000         	movs	r0, r0
  40f602: 0000         	movs	r0, r0
  40f604: 0000         	movs	r0, r0
  40f606: 4049         	eors	r1, r1
  40f608: d784         	bvc	0x40f514 <TrainingStage::doLesson(float)+0x523c> @ imm = #-0xf8
  40f60a: ffff b9be    	<unknown>
  40f60e: 003c         	movs	r4, r7
  40f610: d730         	bvc	0x40f674 <TrainingStage::doLesson(float)+0x539c> @ imm = #0x60
  40f612: ffff 4be8    	vtbx.8	d20, {d31, fpinst2, mvfr0, mvfr1}, d24
  40f616: 58e3         	ldr	r3, [r4, r3]
  40f618: 681b         	ldr	r3, [r3]
  40f61a: 681b         	ldr	r3, [r3]
  40f61c: f503 7329    	add.w	r3, r3, #0x2a4
  40f620: 681b         	ldr	r3, [r3]
  40f622: 4ae5         	ldr	r2, [pc, #0x394]        @ 0x40f9b8 <TrainingStage::doLesson(float)+0x56e0>
  40f624: 58a2         	ldr	r2, [r4, r2]
  40f626: 6812         	ldr	r2, [r2]
  40f628: 4610         	mov	r0, r2
  40f62a: f04f 0100    	mov.w	r1, #0x0
  40f62e: 4798         	blx	r3
  40f630: ab07         	add	r3, sp, #0x1c
  40f632: 681b         	ldr	r3, [r3]
  40f634: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  40f638: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  40f63c: 681b         	ldr	r3, [r3]
  40f63e: 3390         	adds	r3, #0x90
  40f640: 681b         	ldr	r3, [r3]
  40f642: aa07         	add	r2, sp, #0x1c
  40f644: 6812         	ldr	r2, [r2]
  40f646: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  40f64a: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  40f64e: 4610         	mov	r0, r2
  40f650: 2101         	movs	r1, #0x1
  40f652: 4798         	blx	r3
  40f654: ab07         	add	r3, sp, #0x1c
  40f656: 681b         	ldr	r3, [r3]
  40f658: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40f65c: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  40f660: 681b         	ldr	r3, [r3]
  40f662: f503 730e    	add.w	r3, r3, #0x238
  40f666: 681b         	ldr	r3, [r3]
  40f668: aa07         	add	r2, sp, #0x1c
  40f66a: 6812         	ldr	r2, [r2]
  40f66c: f8d2 21a8    	ldr.w	r2, [r2, #0x1a8]
  40f670: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  40f674: 4610         	mov	r0, r2
  40f676: f04f 0100    	mov.w	r1, #0x0
  40f67a: 4798         	blx	r3
  40f67c: ab07         	add	r3, sp, #0x1c
  40f67e: 681b         	ldr	r3, [r3]
  40f680: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40f684: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40f688: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  40f68c: 681b         	ldr	r3, [r3]
  40f68e: 3398         	adds	r3, #0x98
  40f690: 681d         	ldr	r5, [r3]
  40f692: ab07         	add	r3, sp, #0x1c
  40f694: 681b         	ldr	r3, [r3]
  40f696: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40f69a: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40f69e: f8d3 6114    	ldr.w	r6, [r3, #0x114]
  40f6a2: ab07         	add	r3, sp, #0x1c
  40f6a4: 681b         	ldr	r3, [r3]
  40f6a6: edd3 7a62    	vldr	s15, [r3, #392]
  40f6aa: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  40f6ae: ec51 0b17    	vmov	r0, r1, d7
  40f6b2: f6c6 ec2a    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x1397ac
  40f6b6: ec41 0b16    	vmov	d6, r0, r1
  40f6ba: eeb1 7b04    	vmov.f64	d7, #5.000000e+00
  40f6be: ee26 6b07    	vmul.f64	d6, d6, d7
  40f6c2: eeb2 7b04    	vmov.f64	d7, #1.000000e+01
  40f6c6: ee36 7b47    	vsub.f64	d7, d6, d7
  40f6ca: eef7 7bc7    	vcvt.f32.f64	s15, d7
  40f6ce: 4630         	mov	r0, r6
  40f6d0: ee17 1a90    	vmov	r1, s15
  40f6d4: 47a8         	blx	r5
  40f6d6: ab07         	add	r3, sp, #0x1c
  40f6d8: 681b         	ldr	r3, [r3]
  40f6da: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40f6de: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40f6e2: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  40f6e6: 681b         	ldr	r3, [r3]
  40f6e8: 3398         	adds	r3, #0x98
  40f6ea: 681d         	ldr	r5, [r3]
  40f6ec: ab07         	add	r3, sp, #0x1c
  40f6ee: 681b         	ldr	r3, [r3]
  40f6f0: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40f6f4: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40f6f8: f8d3 6110    	ldr.w	r6, [r3, #0x110]
  40f6fc: ab07         	add	r3, sp, #0x1c
  40f6fe: 681b         	ldr	r3, [r3]
  40f700: edd3 7a62    	vldr	s15, [r3, #392]
  40f704: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  40f708: ed9f 7ba7    	vldr	d7, [pc, #668]          @ 0x40f9a8 <TrainingStage::doLesson(float)+0x56d0>
  40f70c: ee36 7b07    	vadd.f64	d7, d6, d7
  40f710: ec51 0b17    	vmov	r0, r1, d7
  40f714: f6c6 ebf8    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x139810
  40f718: ec41 0b16    	vmov	d6, r0, r1
  40f71c: eeb1 7b04    	vmov.f64	d7, #5.000000e+00
  40f720: ee26 6b07    	vmul.f64	d6, d6, d7
  40f724: eeb2 7b04    	vmov.f64	d7, #1.000000e+01
  40f728: ee36 7b07    	vadd.f64	d7, d6, d7
  40f72c: eef7 7bc7    	vcvt.f32.f64	s15, d7
  40f730: 4630         	mov	r0, r6
  40f732: ee17 1a90    	vmov	r1, s15
  40f736: 47a8         	blx	r5
  40f738: ab07         	add	r3, sp, #0x1c
  40f73a: 681b         	ldr	r3, [r3]
  40f73c: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40f740: 681b         	ldr	r3, [r3]
  40f742: f503 730e    	add.w	r3, r3, #0x238
  40f746: 681b         	ldr	r3, [r3]
  40f748: aa07         	add	r2, sp, #0x1c
  40f74a: 6812         	ldr	r2, [r2]
  40f74c: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40f750: 4610         	mov	r0, r2
  40f752: f04f 0100    	mov.w	r1, #0x0
  40f756: f2c4 315c    	movt	r1, #0x435c
  40f75a: 4798         	blx	r3
  40f75c: ab07         	add	r3, sp, #0x1c
  40f75e: 681b         	ldr	r3, [r3]
  40f760: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  40f764: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  40f768: 4618         	mov	r0, r3
  40f76a: 2101         	movs	r1, #0x1
  40f76c: f73f f8d4    	bl	0x34e918 <Joypad::disableFiring(bool)> @ imm = #-0xc0e58
  40f770: ab07         	add	r3, sp, #0x1c
  40f772: 681b         	ldr	r3, [r3]
  40f774: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  40f778: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  40f77c: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  40f780: 681b         	ldr	r3, [r3]
  40f782: 334c         	adds	r3, #0x4c
  40f784: 681d         	ldr	r5, [r3]
  40f786: ab07         	add	r3, sp, #0x1c
  40f788: 681b         	ldr	r3, [r3]
  40f78a: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  40f78e: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  40f792: f8d3 60e8    	ldr.w	r6, [r3, #0xe8]
  40f796: ab07         	add	r3, sp, #0x1c
  40f798: 681b         	ldr	r3, [r3]
  40f79a: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  40f79e: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  40f7a2: f103 07fc    	add.w	r7, r3, #0xfc
  40f7a6: f50d 6380    	add.w	r3, sp, #0x400
  40f7aa: 4618         	mov	r0, r3
  40f7ac: f04f 0100    	mov.w	r1, #0x0
  40f7b0: f2c4 11f0    	movt	r1, #0x41f0
  40f7b4: f04f 0200    	mov.w	r2, #0x0
  40f7b8: f183 fa9a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x183534
  40f7bc: f50d 6282    	add.w	r2, sp, #0x410
  40f7c0: f50d 6380    	add.w	r3, sp, #0x400
  40f7c4: 4610         	mov	r0, r2
  40f7c6: 4639         	mov	r1, r7
  40f7c8: 461a         	mov	r2, r3
  40f7ca: f7f8 fe73    	bl	0x4084b4 <Tracer::checkCollision()+0x428> @ imm = #-0x731a
  40f7ce: f50d 6382    	add.w	r3, sp, #0x410
  40f7d2: 4630         	mov	r0, r6
  40f7d4: 4619         	mov	r1, r3
  40f7d6: 47a8         	blx	r5
  40f7d8: ab07         	add	r3, sp, #0x1c
  40f7da: 681b         	ldr	r3, [r3]
  40f7dc: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  40f7e0: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  40f7e4: f04f 0200    	mov.w	r2, #0x0
  40f7e8: f8c3 2124    	str.w	r2, [r3, #0x124]
  40f7ec: ab07         	add	r3, sp, #0x1c
  40f7ee: 681b         	ldr	r3, [r3]
  40f7f0: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40f7f4: 681b         	ldr	r3, [r3]
  40f7f6: f503 73ec    	add.w	r3, r3, #0x1d8
  40f7fa: 681b         	ldr	r3, [r3]
  40f7fc: aa07         	add	r2, sp, #0x1c
  40f7fe: 6812         	ldr	r2, [r2]
  40f800: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40f804: 4610         	mov	r0, r2
  40f806: 4798         	blx	r3
  40f808: 4603         	mov	r3, r0
  40f80a: f8d3 5114    	ldr.w	r5, [r3, #0x114]
  40f80e: 682b         	ldr	r3, [r5]
  40f810: 3398         	adds	r3, #0x98
  40f812: 681e         	ldr	r6, [r3]
  40f814: ab07         	add	r3, sp, #0x1c
  40f816: 681b         	ldr	r3, [r3]
  40f818: edd3 7a62    	vldr	s15, [r3, #392]
  40f81c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  40f820: ec51 0b17    	vmov	r0, r1, d7
  40f824: f6c6 eb70    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x139920
  40f828: ec41 0b16    	vmov	d6, r0, r1
  40f82c: eeb1 7b04    	vmov.f64	d7, #5.000000e+00
  40f830: ee26 6b07    	vmul.f64	d6, d6, d7
  40f834: eeb3 7b0e    	vmov.f64	d7, #3.000000e+01
  40f838: ee36 7b47    	vsub.f64	d7, d6, d7
  40f83c: eef7 7bc7    	vcvt.f32.f64	s15, d7
  40f840: 4628         	mov	r0, r5
  40f842: ee17 1a90    	vmov	r1, s15
  40f846: 47b0         	blx	r6
  40f848: ab07         	add	r3, sp, #0x1c
  40f84a: 681b         	ldr	r3, [r3]
  40f84c: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40f850: 681b         	ldr	r3, [r3]
  40f852: f503 73ec    	add.w	r3, r3, #0x1d8
  40f856: 681b         	ldr	r3, [r3]
  40f858: aa07         	add	r2, sp, #0x1c
  40f85a: 6812         	ldr	r2, [r2]
  40f85c: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40f860: 4610         	mov	r0, r2
  40f862: 4798         	blx	r3
  40f864: 4603         	mov	r3, r0
  40f866: f8d3 5110    	ldr.w	r5, [r3, #0x110]
  40f86a: 682b         	ldr	r3, [r5]
  40f86c: 3398         	adds	r3, #0x98
  40f86e: 681e         	ldr	r6, [r3]
  40f870: ab07         	add	r3, sp, #0x1c
  40f872: 681b         	ldr	r3, [r3]
  40f874: edd3 7a62    	vldr	s15, [r3, #392]
  40f878: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  40f87c: ed9f 7b4a    	vldr	d7, [pc, #296]          @ 0x40f9a8 <TrainingStage::doLesson(float)+0x56d0>
  40f880: ee36 7b07    	vadd.f64	d7, d6, d7
  40f884: ec51 0b17    	vmov	r0, r1, d7
  40f888: f6c6 eb3e    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x139984
  40f88c: ec41 0b16    	vmov	d6, r0, r1
  40f890: eeb1 7b04    	vmov.f64	d7, #5.000000e+00
  40f894: ee26 6b07    	vmul.f64	d6, d6, d7
  40f898: eeb3 7b04    	vmov.f64	d7, #2.000000e+01
  40f89c: ee36 7b47    	vsub.f64	d7, d6, d7
  40f8a0: eef7 7bc7    	vcvt.f32.f64	s15, d7
  40f8a4: 4628         	mov	r0, r5
  40f8a6: ee17 1a90    	vmov	r1, s15
  40f8aa: 47b0         	blx	r6
  40f8ac: ab07         	add	r3, sp, #0x1c
  40f8ae: 681b         	ldr	r3, [r3]
  40f8b0: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40f8b4: 681b         	ldr	r3, [r3]
  40f8b6: f503 730c    	add.w	r3, r3, #0x230
  40f8ba: 681d         	ldr	r5, [r3]
  40f8bc: ab07         	add	r3, sp, #0x1c
  40f8be: 681b         	ldr	r3, [r3]
  40f8c0: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40f8c4: 461e         	mov	r6, r3
  40f8c6: ab8c         	add	r3, sp, #0x230
  40f8c8: 4618         	mov	r0, r3
  40f8ca: ed9f 0b39    	vldr	d0, [pc, #228]          @ 0x40f9b0 <TrainingStage::doLesson(float)+0x56d8>
  40f8ce: eebf 1b00    	vmov.f64	d1, #-1.000000e+00
  40f8d2: f7f8 fdff    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x7402
  40f8d6: ab8c         	add	r3, sp, #0x230
  40f8d8: 466a         	mov	r2, sp
  40f8da: f103 0108    	add.w	r1, r3, #0x8
  40f8de: c903         	ldm	r1, {r0, r1}
  40f8e0: e882 0003    	stm.w	r2, {r0, r1}
  40f8e4: cb0c         	ldm	r3, {r2, r3}
  40f8e6: 4630         	mov	r0, r6
  40f8e8: 47a8         	blx	r5
  40f8ea: ab07         	add	r3, sp, #0x1c
  40f8ec: 681b         	ldr	r3, [r3]
  40f8ee: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40f8f2: 2201         	movs	r2, #0x1
  40f8f4: f883 215a    	strb.w	r2, [r3, #0x15a]
  40f8f8: ab07         	add	r3, sp, #0x1c
  40f8fa: 681b         	ldr	r3, [r3]
  40f8fc: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40f900: 681b         	ldr	r3, [r3]
  40f902: f503 73ce    	add.w	r3, r3, #0x19c
  40f906: 681b         	ldr	r3, [r3]
  40f908: aa07         	add	r2, sp, #0x1c
  40f90a: 6812         	ldr	r2, [r2]
  40f90c: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40f910: 4610         	mov	r0, r2
  40f912: 2101         	movs	r1, #0x1
  40f914: 4798         	blx	r3
  40f916: ab07         	add	r3, sp, #0x1c
  40f918: 681b         	ldr	r3, [r3]
  40f91a: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40f91e: 2201         	movs	r2, #0x1
  40f920: f883 211c    	strb.w	r2, [r3, #0x11c]
  40f924: ab07         	add	r3, sp, #0x1c
  40f926: 681b         	ldr	r3, [r3]
  40f928: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  40f92c: 681b         	ldr	r3, [r3]
  40f92e: 3390         	adds	r3, #0x90
  40f930: 681b         	ldr	r3, [r3]
  40f932: aa07         	add	r2, sp, #0x1c
  40f934: 6812         	ldr	r2, [r2]
  40f936: f8d2 2174    	ldr.w	r2, [r2, #0x174]
  40f93a: 4610         	mov	r0, r2
  40f93c: 2100         	movs	r1, #0x0
  40f93e: 4798         	blx	r3
  40f940: ab07         	add	r3, sp, #0x1c
  40f942: 681b         	ldr	r3, [r3]
  40f944: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40f948: 681b         	ldr	r3, [r3]
  40f94a: f503 73f2    	add.w	r3, r3, #0x1e4
  40f94e: 681b         	ldr	r3, [r3]
  40f950: aa07         	add	r2, sp, #0x1c
  40f952: 6812         	ldr	r2, [r2]
  40f954: f8d2 21a8    	ldr.w	r2, [r2, #0x1a8]
  40f958: 4610         	mov	r0, r2
  40f95a: 4798         	blx	r3
  40f95c: 4603         	mov	r3, r0
  40f95e: 2b63         	cmp	r3, #0x63
  40f960: bfcc         	ite	gt
  40f962: 2300         	movgt	r3, #0x0
  40f964: 2301         	movle	r3, #0x1
  40f966: b2db         	uxtb	r3, r3
  40f968: 2b00         	cmp	r3, #0x0
  40f96a: d027         	beq	0x40f9bc <TrainingStage::doLesson(float)+0x56e4> @ imm = #0x4e
  40f96c: ab07         	add	r3, sp, #0x1c
  40f96e: 681b         	ldr	r3, [r3]
  40f970: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  40f974: 1c5a         	adds	r2, r3, #0x1
  40f976: ab07         	add	r3, sp, #0x1c
  40f978: 681b         	ldr	r3, [r3]
  40f97a: f8c3 2180    	str.w	r2, [r3, #0x180]
  40f97e: ab07         	add	r3, sp, #0x1c
  40f980: 681b         	ldr	r3, [r3]
  40f982: f04f 0200    	mov.w	r2, #0x0
  40f986: f8c3 2188    	str.w	r2, [r3, #0x188]
  40f98a: ab07         	add	r3, sp, #0x1c
  40f98c: 681b         	ldr	r3, [r3]
  40f98e: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  40f992: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  40f996: 4618         	mov	r0, r3
  40f998: 2100         	movs	r1, #0x0
  40f99a: f73e ffbd    	bl	0x34e918 <Joypad::disableFiring(bool)> @ imm = #-0xc1086
  40f99e: f002 bab9    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x2572
  40f9a2: bf00         	nop
  40f9a4: f3af 8000    	nop.w
  40f9a8: 851f         	strh	r7, [r3, #0x28]
  40f9aa: 51eb         	str	r3, [r5, r7]
  40f9ac: 1eb8         	subs	r0, r7, #0x2
  40f9ae: 4009         	ands	r1, r1
  40f9b8: d784         	bvc	0x40f8c4 <TrainingStage::doLesson(float)+0x55ec> @ imm = #-0xf8
  40f9ba: ffff 4b9e    	<unknown>
  40f9be: 58e3         	ldr	r3, [r4, r3]
  40f9c0: 681b         	ldr	r3, [r3]
  40f9c2: f8d3 6138    	ldr.w	r6, [r3, #0x138]
  40f9c6: 4b9c         	ldr	r3, [pc, #0x270]        @ 0x40fc38 <TrainingStage::doLesson(float)+0x5960>
  40f9c8: 58e3         	ldr	r3, [r4, r3]
  40f9ca: 681b         	ldr	r3, [r3]
  40f9cc: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  40f9d0: aa90         	add	r2, sp, #0x240
  40f9d2: ed93 6b0a    	vldr	d6, [r3, #40]
  40f9d6: ed93 7b0c    	vldr	d7, [r3, #48]
  40f9da: 4610         	mov	r0, r2
  40f9dc: eeb0 0b46    	vmov.f64	d0, d6
  40f9e0: eeb0 1b47    	vmov.f64	d1, d7
  40f9e4: ed9f 2b8e    	vldr	d2, [pc, #568]          @ 0x40fc20 <TrainingStage::doLesson(float)+0x5948>
  40f9e8: f7f8 fde0    	bl	0x4085ac <Tracer::checkCollision()+0x520> @ imm = #-0x7440
  40f9ec: ab07         	add	r3, sp, #0x1c
  40f9ee: 681b         	ldr	r3, [r3]
  40f9f0: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40f9f4: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  40f9f8: f8d3 5138    	ldr.w	r5, [r3, #0x138]
  40f9fc: ab94         	add	r3, sp, #0x250
  40f9fe: 4618         	mov	r0, r3
  40fa00: eebb 0b09    	vmov.f64	d0, #-2.500000e+01
  40fa04: ed9f 1b88    	vldr	d1, [pc, #544]          @ 0x40fc28 <TrainingStage::doLesson(float)+0x5950>
  40fa08: f7f8 fd64    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x7538
  40fa0c: aa98         	add	r2, sp, #0x260
  40fa0e: ed95 4b0a    	vldr	d4, [r5, #40]
  40fa12: ed95 5b0c    	vldr	d5, [r5, #48]
  40fa16: ab94         	add	r3, sp, #0x250
  40fa18: ed93 6b00    	vldr	d6, [r3]
  40fa1c: ed93 7b02    	vldr	d7, [r3, #8]
  40fa20: 4610         	mov	r0, r2
  40fa22: eeb0 0b44    	vmov.f64	d0, d4
  40fa26: eeb0 1b45    	vmov.f64	d1, d5
  40fa2a: eeb0 2b46    	vmov.f64	d2, d6
  40fa2e: eeb0 3b47    	vmov.f64	d3, d7
  40fa32: f7f8 fd63    	bl	0x4084fc <Tracer::checkCollision()+0x470> @ imm = #-0x753a
  40fa36: aa9c         	add	r2, sp, #0x270
  40fa38: ab98         	add	r3, sp, #0x260
  40fa3a: ed93 6b00    	vldr	d6, [r3]
  40fa3e: ed93 7b02    	vldr	d7, [r3, #8]
  40fa42: 4610         	mov	r0, r2
  40fa44: eeb0 0b46    	vmov.f64	d0, d6
  40fa48: eeb0 1b47    	vmov.f64	d1, d7
  40fa4c: ed9f 2b78    	vldr	d2, [pc, #480]          @ 0x40fc30 <TrainingStage::doLesson(float)+0x5958>
  40fa50: f7f8 fdac    	bl	0x4085ac <Tracer::checkCollision()+0x520> @ imm = #-0x74a8
  40fa54: aa02         	add	r2, sp, #0x8
  40fa56: ab90         	add	r3, sp, #0x240
  40fa58: ed93 4b00    	vldr	d4, [r3]
  40fa5c: ed93 5b02    	vldr	d5, [r3, #8]
  40fa60: ab9c         	add	r3, sp, #0x270
  40fa62: ed93 6b00    	vldr	d6, [r3]
  40fa66: ed93 7b02    	vldr	d7, [r3, #8]
  40fa6a: 4610         	mov	r0, r2
  40fa6c: eeb0 0b44    	vmov.f64	d0, d4
  40fa70: eeb0 1b45    	vmov.f64	d1, d5
  40fa74: eeb0 2b46    	vmov.f64	d2, d6
  40fa78: eeb0 3b47    	vmov.f64	d3, d7
  40fa7c: f7f8 fd3e    	bl	0x4084fc <Tracer::checkCollision()+0x470> @ imm = #-0x7584
  40fa80: ab02         	add	r3, sp, #0x8
  40fa82: f106 0528    	add.w	r5, r6, #0x28
  40fa86: cb0f         	ldm	r3, {r0, r1, r2, r3}
  40fa88: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  40fa8c: 4b6a         	ldr	r3, [pc, #0x1a8]        @ 0x40fc38 <TrainingStage::doLesson(float)+0x5960>
  40fa8e: 58e3         	ldr	r3, [r4, r3]
  40fa90: 681b         	ldr	r3, [r3]
  40fa92: 681b         	ldr	r3, [r3]
  40fa94: f503 7329    	add.w	r3, r3, #0x2a4
  40fa98: 681b         	ldr	r3, [r3]
  40fa9a: 4a67         	ldr	r2, [pc, #0x19c]        @ 0x40fc38 <TrainingStage::doLesson(float)+0x5960>
  40fa9c: 58a2         	ldr	r2, [r4, r2]
  40fa9e: 6812         	ldr	r2, [r2]
  40faa0: 4610         	mov	r0, r2
  40faa2: f04f 0100    	mov.w	r1, #0x0
  40faa6: f2c4 21c8    	movt	r1, #0x42c8
  40faaa: 4798         	blx	r3
  40faac: ab07         	add	r3, sp, #0x1c
  40faae: 681b         	ldr	r3, [r3]
  40fab0: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  40fab4: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  40fab8: 681b         	ldr	r3, [r3]
  40faba: 3390         	adds	r3, #0x90
  40fabc: 681b         	ldr	r3, [r3]
  40fabe: aa07         	add	r2, sp, #0x1c
  40fac0: 6812         	ldr	r2, [r2]
  40fac2: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  40fac6: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  40faca: 4610         	mov	r0, r2
  40facc: 2101         	movs	r1, #0x1
  40face: 4798         	blx	r3
  40fad0: ab07         	add	r3, sp, #0x1c
  40fad2: 681b         	ldr	r3, [r3]
  40fad4: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  40fad8: 681b         	ldr	r3, [r3]
  40fada: 3390         	adds	r3, #0x90
  40fadc: 681b         	ldr	r3, [r3]
  40fade: aa07         	add	r2, sp, #0x1c
  40fae0: 6812         	ldr	r2, [r2]
  40fae2: f8d2 2174    	ldr.w	r2, [r2, #0x174]
  40fae6: 4610         	mov	r0, r2
  40fae8: 2101         	movs	r1, #0x1
  40faea: 4798         	blx	r3
  40faec: ab07         	add	r3, sp, #0x1c
  40faee: 681b         	ldr	r3, [r3]
  40faf0: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  40faf4: 681b         	ldr	r3, [r3]
  40faf6: 3398         	adds	r3, #0x98
  40faf8: 681b         	ldr	r3, [r3]
  40fafa: aa07         	add	r2, sp, #0x1c
  40fafc: 6812         	ldr	r2, [r2]
  40fafe: f8d2 2174    	ldr.w	r2, [r2, #0x174]
  40fb02: 4610         	mov	r0, r2
  40fb04: f04f 0100    	mov.w	r1, #0x0
  40fb08: f2c4 21b4    	movt	r1, #0x42b4
  40fb0c: 4798         	blx	r3
  40fb0e: ab07         	add	r3, sp, #0x1c
  40fb10: 681b         	ldr	r3, [r3]
  40fb12: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  40fb16: 681b         	ldr	r3, [r3]
  40fb18: 334c         	adds	r3, #0x4c
  40fb1a: 681c         	ldr	r4, [r3]
  40fb1c: ab07         	add	r3, sp, #0x1c
  40fb1e: 681b         	ldr	r3, [r3]
  40fb20: f8d3 516c    	ldr.w	r5, [r3, #0x16c]
  40fb24: ab07         	add	r3, sp, #0x1c
  40fb26: 681b         	ldr	r3, [r3]
  40fb28: ed93 7a62    	vldr	s14, [r3, #392]
  40fb2c: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  40fb30: ee67 7a27    	vmul.f32	s15, s14, s15
  40fb34: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  40fb38: ec51 0b17    	vmov	r0, r1, d7
  40fb3c: f6c6 e9e4    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x139c38
  40fb40: ec41 0b16    	vmov	d6, r0, r1
  40fb44: eeb2 7b04    	vmov.f64	d7, #1.000000e+01
  40fb48: ee26 7b07    	vmul.f64	d7, d6, d7
  40fb4c: eef7 7bc7    	vcvt.f32.f64	s15, d7
  40fb50: f50d 6382    	add.w	r3, sp, #0x410
  40fb54: 4618         	mov	r0, r3
  40fb56: ee17 1a90    	vmov	r1, s15
  40fb5a: f04f 0200    	mov.w	r2, #0x0
  40fb5e: f183 f8c7    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x18318e
  40fb62: f50d 6382    	add.w	r3, sp, #0x410
  40fb66: 4628         	mov	r0, r5
  40fb68: 4619         	mov	r1, r3
  40fb6a: 47a0         	blx	r4
  40fb6c: ab07         	add	r3, sp, #0x1c
  40fb6e: 681b         	ldr	r3, [r3]
  40fb70: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  40fb74: 681b         	ldr	r3, [r3]
  40fb76: 334c         	adds	r3, #0x4c
  40fb78: 681c         	ldr	r4, [r3]
  40fb7a: ab07         	add	r3, sp, #0x1c
  40fb7c: 681b         	ldr	r3, [r3]
  40fb7e: f8d3 5174    	ldr.w	r5, [r3, #0x174]
  40fb82: ab07         	add	r3, sp, #0x1c
  40fb84: 681b         	ldr	r3, [r3]
  40fb86: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  40fb8a: f503 76b8    	add.w	r6, r3, #0x170
  40fb8e: f50d 6380    	add.w	r3, sp, #0x400
  40fb92: 4618         	mov	r0, r3
  40fb94: f04f 0100    	mov.w	r1, #0x0
  40fb98: f2cc 1170    	movt	r1, #0xc170
  40fb9c: f04f 0200    	mov.w	r2, #0x0
  40fba0: f2c4 228c    	movt	r2, #0x428c
  40fba4: f183 f8a4    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x183148
  40fba8: f50d 6282    	add.w	r2, sp, #0x410
  40fbac: f50d 6380    	add.w	r3, sp, #0x400
  40fbb0: 4610         	mov	r0, r2
  40fbb2: 4631         	mov	r1, r6
  40fbb4: 461a         	mov	r2, r3
  40fbb6: f7f8 fc7d    	bl	0x4084b4 <Tracer::checkCollision()+0x428> @ imm = #-0x7706
  40fbba: f50d 6382    	add.w	r3, sp, #0x410
  40fbbe: 4628         	mov	r0, r5
  40fbc0: 4619         	mov	r1, r3
  40fbc2: 47a0         	blx	r4
  40fbc4: ab07         	add	r3, sp, #0x1c
  40fbc6: 681b         	ldr	r3, [r3]
  40fbc8: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40fbcc: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  40fbd0: f8d3 2138    	ldr.w	r2, [r3, #0x138]
  40fbd4: 4b19         	ldr	r3, [pc, #0x64]         @ 0x40fc3c <TrainingStage::doLesson(float)+0x5964>
  40fbd6: 447b         	add	r3, pc
  40fbd8: ed93 6b00    	vldr	d6, [r3]
  40fbdc: ed93 7b02    	vldr	d7, [r3, #8]
  40fbe0: 4610         	mov	r0, r2
  40fbe2: eeb0 0b46    	vmov.f64	d0, d6
  40fbe6: eeb0 1b47    	vmov.f64	d1, d7
  40fbea: f7f8 fd43    	bl	0x408674 <Tracer::checkCollision()+0x5e8> @ imm = #-0x757a
  40fbee: ab07         	add	r3, sp, #0x1c
  40fbf0: 681b         	ldr	r3, [r3]
  40fbf2: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40fbf6: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  40fbfa: f8d3 2138    	ldr.w	r2, [r3, #0x138]
  40fbfe: 4b10         	ldr	r3, [pc, #0x40]         @ 0x40fc40 <TrainingStage::doLesson(float)+0x5968>
  40fc00: 447b         	add	r3, pc
  40fc02: ed93 6b00    	vldr	d6, [r3]
  40fc06: ed93 7b02    	vldr	d7, [r3, #8]
  40fc0a: 4610         	mov	r0, r2
  40fc0c: eeb0 0b46    	vmov.f64	d0, d6
  40fc10: eeb0 1b47    	vmov.f64	d1, d7
  40fc14: f7f8 fd18    	bl	0x408648 <Tracer::checkCollision()+0x5bc> @ imm = #-0x75d0
  40fc18: f002 b97c    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x22f8
  40fc1c: f3af 8000    	nop.w
  40fc20: 999a         	ldr	r1, [sp, #0x268]
  40fc22: 9999         	ldr	r1, [sp, #0x264]
  40fc24: 9999         	ldr	r1, [sp, #0x264]
  40fc26: 3fe9         	subs	r7, #0xe9
  40fc30: 999a         	ldr	r1, [sp, #0x268]
  40fc32: 9999         	ldr	r1, [sp, #0x264]
  40fc34: 9999         	ldr	r1, [sp, #0x264]
  40fc36: 3fc9         	subs	r7, #0xc9
  40fc38: d784         	bvc	0x40fb44 <TrainingStage::doLesson(float)+0x586c> @ imm = #-0xf8
  40fc3a: ffff b38e    	<unknown>
  40fc3e: 003c         	movs	r4, r7
  40fc40: b364         	cbz	r4, 0x40fc9c <TrainingStage::doLesson(float)+0x59c4> @ imm = #0x58
  40fc42: 003c         	movs	r4, r7
  40fc44: ab07         	add	r3, sp, #0x1c
  40fc46: 681b         	ldr	r3, [r3]
  40fc48: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40fc4c: 681b         	ldr	r3, [r3]
  40fc4e: f503 73f4    	add.w	r3, r3, #0x1e8
  40fc52: 681b         	ldr	r3, [r3]
  40fc54: aa07         	add	r2, sp, #0x1c
  40fc56: 6812         	ldr	r2, [r2]
  40fc58: f8d2 21a8    	ldr.w	r2, [r2, #0x1a8]
  40fc5c: 4610         	mov	r0, r2
  40fc5e: 2164         	movs	r1, #0x64
  40fc60: 4798         	blx	r3
  40fc62: 4bd3         	ldr	r3, [pc, #0x34c]        @ 0x40ffb0 <TrainingStage::doLesson(float)+0x5cd8>
  40fc64: 58e3         	ldr	r3, [r4, r3]
  40fc66: 681b         	ldr	r3, [r3]
  40fc68: 681b         	ldr	r3, [r3]
  40fc6a: f503 7329    	add.w	r3, r3, #0x2a4
  40fc6e: 681b         	ldr	r3, [r3]
  40fc70: 4acf         	ldr	r2, [pc, #0x33c]        @ 0x40ffb0 <TrainingStage::doLesson(float)+0x5cd8>
  40fc72: 58a2         	ldr	r2, [r4, r2]
  40fc74: 6812         	ldr	r2, [r2]
  40fc76: 4610         	mov	r0, r2
  40fc78: f04f 0100    	mov.w	r1, #0x0
  40fc7c: 4798         	blx	r3
  40fc7e: ab07         	add	r3, sp, #0x1c
  40fc80: 681b         	ldr	r3, [r3]
  40fc82: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40fc86: 681b         	ldr	r3, [r3]
  40fc88: f503 730e    	add.w	r3, r3, #0x238
  40fc8c: 681b         	ldr	r3, [r3]
  40fc8e: aa07         	add	r2, sp, #0x1c
  40fc90: 6812         	ldr	r2, [r2]
  40fc92: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40fc96: 4610         	mov	r0, r2
  40fc98: f04f 0100    	mov.w	r1, #0x0
  40fc9c: f2c4 315c    	movt	r1, #0x435c
  40fca0: 4798         	blx	r3
  40fca2: ab07         	add	r3, sp, #0x1c
  40fca4: 681b         	ldr	r3, [r3]
  40fca6: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40fcaa: 681b         	ldr	r3, [r3]
  40fcac: f503 730c    	add.w	r3, r3, #0x230
  40fcb0: 681d         	ldr	r5, [r3]
  40fcb2: ab07         	add	r3, sp, #0x1c
  40fcb4: 681b         	ldr	r3, [r3]
  40fcb6: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40fcba: 461e         	mov	r6, r3
  40fcbc: aba0         	add	r3, sp, #0x280
  40fcbe: 4618         	mov	r0, r3
  40fcc0: ed9f 0bb7    	vldr	d0, [pc, #732]          @ 0x40ffa0 <TrainingStage::doLesson(float)+0x5cc8>
  40fcc4: eebf 1b00    	vmov.f64	d1, #-1.000000e+00
  40fcc8: f7f8 fc04    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x77f8
  40fccc: aba0         	add	r3, sp, #0x280
  40fcce: 466a         	mov	r2, sp
  40fcd0: f103 0108    	add.w	r1, r3, #0x8
  40fcd4: c903         	ldm	r1, {r0, r1}
  40fcd6: e882 0003    	stm.w	r2, {r0, r1}
  40fcda: cb0c         	ldm	r3, {r2, r3}
  40fcdc: 4630         	mov	r0, r6
  40fcde: 47a8         	blx	r5
  40fce0: ab07         	add	r3, sp, #0x1c
  40fce2: 681b         	ldr	r3, [r3]
  40fce4: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40fce8: 2201         	movs	r2, #0x1
  40fcea: f883 215a    	strb.w	r2, [r3, #0x15a]
  40fcee: ab07         	add	r3, sp, #0x1c
  40fcf0: 681b         	ldr	r3, [r3]
  40fcf2: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40fcf6: 681b         	ldr	r3, [r3]
  40fcf8: f503 73ce    	add.w	r3, r3, #0x19c
  40fcfc: 681b         	ldr	r3, [r3]
  40fcfe: aa07         	add	r2, sp, #0x1c
  40fd00: 6812         	ldr	r2, [r2]
  40fd02: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40fd06: 4610         	mov	r0, r2
  40fd08: 2101         	movs	r1, #0x1
  40fd0a: 4798         	blx	r3
  40fd0c: ab07         	add	r3, sp, #0x1c
  40fd0e: 681b         	ldr	r3, [r3]
  40fd10: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40fd14: 2201         	movs	r2, #0x1
  40fd16: f883 211c    	strb.w	r2, [r3, #0x11c]
  40fd1a: ab07         	add	r3, sp, #0x1c
  40fd1c: 681b         	ldr	r3, [r3]
  40fd1e: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40fd22: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  40fd26: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  40fd2a: ed93 6b0c    	vldr	d6, [r3, #48]
  40fd2e: 4ba0         	ldr	r3, [pc, #0x280]        @ 0x40ffb0 <TrainingStage::doLesson(float)+0x5cd8>
  40fd30: 58e3         	ldr	r3, [r4, r3]
  40fd32: 681b         	ldr	r3, [r3]
  40fd34: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  40fd38: ed93 5b0c    	vldr	d5, [r3, #48]
  40fd3c: ed9f 7b9a    	vldr	d7, [pc, #616]          @ 0x40ffa8 <TrainingStage::doLesson(float)+0x5cd0>
  40fd40: ee35 7b07    	vadd.f64	d7, d5, d7
  40fd44: eeb4 6bc7    	vcmpe.f64	d6, d7
  40fd48: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40fd4c: f340 80ce    	ble.w	0x40feec <TrainingStage::doLesson(float)+0x5c14> @ imm = #0x19c
  40fd50: ab07         	add	r3, sp, #0x1c
  40fd52: 681b         	ldr	r3, [r3]
  40fd54: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  40fd58: 1c5a         	adds	r2, r3, #0x1
  40fd5a: ab07         	add	r3, sp, #0x1c
  40fd5c: 681b         	ldr	r3, [r3]
  40fd5e: f8c3 2180    	str.w	r2, [r3, #0x180]
  40fd62: ab07         	add	r3, sp, #0x1c
  40fd64: 681b         	ldr	r3, [r3]
  40fd66: f04f 0200    	mov.w	r2, #0x0
  40fd6a: f8c3 2188    	str.w	r2, [r3, #0x188]
  40fd6e: ab07         	add	r3, sp, #0x1c
  40fd70: 681b         	ldr	r3, [r3]
  40fd72: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40fd76: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  40fd7a: 681b         	ldr	r3, [r3]
  40fd7c: f503 730e    	add.w	r3, r3, #0x238
  40fd80: 681b         	ldr	r3, [r3]
  40fd82: aa07         	add	r2, sp, #0x1c
  40fd84: 6812         	ldr	r2, [r2]
  40fd86: f8d2 21a8    	ldr.w	r2, [r2, #0x1a8]
  40fd8a: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  40fd8e: 4610         	mov	r0, r2
  40fd90: f04f 0100    	mov.w	r1, #0x0
  40fd94: f2c4 21f0    	movt	r1, #0x42f0
  40fd98: 4798         	blx	r3
  40fd9a: ab07         	add	r3, sp, #0x1c
  40fd9c: 681b         	ldr	r3, [r3]
  40fd9e: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40fda2: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  40fda6: 2201         	movs	r2, #0x1
  40fda8: f883 211c    	strb.w	r2, [r3, #0x11c]
  40fdac: ab07         	add	r3, sp, #0x1c
  40fdae: 681b         	ldr	r3, [r3]
  40fdb0: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40fdb4: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  40fdb8: 681b         	ldr	r3, [r3]
  40fdba: f503 730c    	add.w	r3, r3, #0x230
  40fdbe: 681d         	ldr	r5, [r3]
  40fdc0: ab07         	add	r3, sp, #0x1c
  40fdc2: 681b         	ldr	r3, [r3]
  40fdc4: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40fdc8: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  40fdcc: 461e         	mov	r6, r3
  40fdce: aba4         	add	r3, sp, #0x290
  40fdd0: 4618         	mov	r0, r3
  40fdd2: ed9f 0b73    	vldr	d0, [pc, #460]          @ 0x40ffa0 <TrainingStage::doLesson(float)+0x5cc8>
  40fdd6: ed9f 1b72    	vldr	d1, [pc, #456]          @ 0x40ffa0 <TrainingStage::doLesson(float)+0x5cc8>
  40fdda: f7f8 fb7b    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x790a
  40fdde: aba4         	add	r3, sp, #0x290
  40fde0: 466a         	mov	r2, sp
  40fde2: f103 0108    	add.w	r1, r3, #0x8
  40fde6: c903         	ldm	r1, {r0, r1}
  40fde8: e882 0003    	stm.w	r2, {r0, r1}
  40fdec: cb0c         	ldm	r3, {r2, r3}
  40fdee: 4630         	mov	r0, r6
  40fdf0: 47a8         	blx	r5
  40fdf2: ab07         	add	r3, sp, #0x1c
  40fdf4: 681b         	ldr	r3, [r3]
  40fdf6: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40fdfa: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  40fdfe: 681b         	ldr	r3, [r3]
  40fe00: f503 73f0    	add.w	r3, r3, #0x1e0
  40fe04: 681b         	ldr	r3, [r3]
  40fe06: aa07         	add	r2, sp, #0x1c
  40fe08: 6812         	ldr	r2, [r2]
  40fe0a: f8d2 21a8    	ldr.w	r2, [r2, #0x1a8]
  40fe0e: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  40fe12: 4610         	mov	r0, r2
  40fe14: 2101         	movs	r1, #0x1
  40fe16: 4798         	blx	r3
  40fe18: ab07         	add	r3, sp, #0x1c
  40fe1a: 681b         	ldr	r3, [r3]
  40fe1c: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40fe20: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  40fe24: f8d3 2138    	ldr.w	r2, [r3, #0x138]
  40fe28: 4b62         	ldr	r3, [pc, #0x188]        @ 0x40ffb4 <TrainingStage::doLesson(float)+0x5cdc>
  40fe2a: 447b         	add	r3, pc
  40fe2c: ed93 6b00    	vldr	d6, [r3]
  40fe30: ed93 7b02    	vldr	d7, [r3, #8]
  40fe34: 4610         	mov	r0, r2
  40fe36: eeb0 0b46    	vmov.f64	d0, d6
  40fe3a: eeb0 1b47    	vmov.f64	d1, d7
  40fe3e: f7f8 fc19    	bl	0x408674 <Tracer::checkCollision()+0x5e8> @ imm = #-0x77ce
  40fe42: ab07         	add	r3, sp, #0x1c
  40fe44: 681b         	ldr	r3, [r3]
  40fe46: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40fe4a: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  40fe4e: f8d3 2138    	ldr.w	r2, [r3, #0x138]
  40fe52: 4b59         	ldr	r3, [pc, #0x164]        @ 0x40ffb8 <TrainingStage::doLesson(float)+0x5ce0>
  40fe54: 447b         	add	r3, pc
  40fe56: ed93 6b00    	vldr	d6, [r3]
  40fe5a: ed93 7b02    	vldr	d7, [r3, #8]
  40fe5e: 4610         	mov	r0, r2
  40fe60: eeb0 0b46    	vmov.f64	d0, d6
  40fe64: eeb0 1b47    	vmov.f64	d1, d7
  40fe68: f7f8 fbee    	bl	0x408648 <Tracer::checkCollision()+0x5bc> @ imm = #-0x7824
  40fe6c: ab07         	add	r3, sp, #0x1c
  40fe6e: 681b         	ldr	r3, [r3]
  40fe70: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  40fe74: f50d 6380    	add.w	r3, sp, #0x400
  40fe78: 4618         	mov	r0, r3
  40fe7a: f37a fabb    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37a576
  40fe7e: f50d 6282    	add.w	r2, sp, #0x410
  40fe82: f50d 6380    	add.w	r3, sp, #0x400
  40fe86: 4610         	mov	r0, r2
  40fe88: 4a4c         	ldr	r2, [pc, #0x130]        @ 0x40ffbc <TrainingStage::doLesson(float)+0x5ce4>
  40fe8a: 447a         	add	r2, pc
  40fe8c: 4611         	mov	r1, r2
  40fe8e: 461a         	mov	r2, r3
  40fe90: f3a6 fde6    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3a6bcc
  40fe94: 20ff         	movs	r0, #0xff
  40fe96: 2100         	movs	r1, #0x0
  40fe98: 2200         	movs	r2, #0x0
  40fe9a: f7f8 fadd    	bl	0x408458 <Tracer::checkCollision()+0x3cc> @ imm = #-0x7a46
  40fe9e: 4602         	mov	r2, r0
  40fea0: ab2a         	add	r3, sp, #0xa8
  40fea2: 4611         	mov	r1, r2
  40fea4: 7019         	strb	r1, [r3]
  40fea6: f3c2 2107    	ubfx	r1, r2, #0x8, #0x8
  40feaa: 7059         	strb	r1, [r3, #0x1]
  40feac: f3c2 4207    	ubfx	r2, r2, #0x10, #0x8
  40feb0: 709a         	strb	r2, [r3, #0x2]
  40feb2: f50d 6282    	add.w	r2, sp, #0x410
  40feb6: ab2a         	add	r3, sp, #0xa8
  40feb8: 4628         	mov	r0, r5
  40feba: 4611         	mov	r1, r2
  40febc: 681a         	ldr	r2, [r3]
  40febe: 2303         	movs	r3, #0x3
  40fec0: f72d f9fe    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xd2c04
  40fec4: f50d 6382    	add.w	r3, sp, #0x410
  40fec8: 4618         	mov	r0, r3
  40feca: f3a5 fd23    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a5a46
  40fece: f50d 6380    	add.w	r3, sp, #0x400
  40fed2: 4618         	mov	r0, r3
  40fed4: f37a fa92    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37a524
  40fed8: 4b39         	ldr	r3, [pc, #0xe4]         @ 0x40ffc0 <TrainingStage::doLesson(float)+0x5ce8>
  40feda: 58e3         	ldr	r3, [r4, r3]
  40fedc: 681b         	ldr	r3, [r3]
  40fede: 4618         	mov	r0, r3
  40fee0: 2152         	movs	r1, #0x52
  40fee2: 2201         	movs	r2, #0x1
  40fee4: f7e7 ff2c    	bl	0x3f7d40 <Sound::playSoundWithVoice(int, int)> @ imm = #-0x181a8
  40fee8: f002 b814    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x2028
  40feec: ab07         	add	r3, sp, #0x1c
  40feee: 681b         	ldr	r3, [r3]
  40fef0: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40fef4: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  40fef8: 681b         	ldr	r3, [r3]
  40fefa: f503 730e    	add.w	r3, r3, #0x238
  40fefe: 681b         	ldr	r3, [r3]
  40ff00: aa07         	add	r2, sp, #0x1c
  40ff02: 6812         	ldr	r2, [r2]
  40ff04: f8d2 21a8    	ldr.w	r2, [r2, #0x1a8]
  40ff08: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  40ff0c: 4610         	mov	r0, r2
  40ff0e: f04f 0100    	mov.w	r1, #0x0
  40ff12: f2c4 3134    	movt	r1, #0x4334
  40ff16: 4798         	blx	r3
  40ff18: ab07         	add	r3, sp, #0x1c
  40ff1a: 681b         	ldr	r3, [r3]
  40ff1c: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40ff20: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  40ff24: 2201         	movs	r2, #0x1
  40ff26: f883 211c    	strb.w	r2, [r3, #0x11c]
  40ff2a: ab07         	add	r3, sp, #0x1c
  40ff2c: 681b         	ldr	r3, [r3]
  40ff2e: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40ff32: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  40ff36: 681b         	ldr	r3, [r3]
  40ff38: f503 730c    	add.w	r3, r3, #0x230
  40ff3c: 681c         	ldr	r4, [r3]
  40ff3e: ab07         	add	r3, sp, #0x1c
  40ff40: 681b         	ldr	r3, [r3]
  40ff42: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40ff46: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  40ff4a: 461d         	mov	r5, r3
  40ff4c: aba8         	add	r3, sp, #0x2a0
  40ff4e: 4618         	mov	r0, r3
  40ff50: ed9f 0b13    	vldr	d0, [pc, #76]           @ 0x40ffa0 <TrainingStage::doLesson(float)+0x5cc8>
  40ff54: eeb7 1b00    	vmov.f64	d1, #1.000000e+00
  40ff58: f7f8 fabc    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x7a88
  40ff5c: aba8         	add	r3, sp, #0x2a0
  40ff5e: 466a         	mov	r2, sp
  40ff60: f103 0108    	add.w	r1, r3, #0x8
  40ff64: c903         	ldm	r1, {r0, r1}
  40ff66: e882 0003    	stm.w	r2, {r0, r1}
  40ff6a: cb0c         	ldm	r3, {r2, r3}
  40ff6c: 4628         	mov	r0, r5
  40ff6e: 47a0         	blx	r4
  40ff70: ab07         	add	r3, sp, #0x1c
  40ff72: 681b         	ldr	r3, [r3]
  40ff74: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  40ff78: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  40ff7c: 681b         	ldr	r3, [r3]
  40ff7e: f503 73f0    	add.w	r3, r3, #0x1e0
  40ff82: 681b         	ldr	r3, [r3]
  40ff84: aa07         	add	r2, sp, #0x1c
  40ff86: 6812         	ldr	r2, [r2]
  40ff88: f8d2 21a8    	ldr.w	r2, [r2, #0x1a8]
  40ff8c: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  40ff90: 4610         	mov	r0, r2
  40ff92: 2101         	movs	r1, #0x1
  40ff94: 4798         	blx	r3
  40ff96: f001 bfbd    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x1f7a
  40ff9a: bf00         	nop
  40ff9c: f3af 8000    	nop.w
  40ffac: 0000         	movs	r0, r0
  40ffae: 4059         	eors	r1, r3
  40ffb0: d784         	bvc	0x40febc <TrainingStage::doLesson(float)+0x5be4> @ imm = #-0xf8
  40ffb2: ffff b13a    	vsra.u32	d27, d26, #0x1
  40ffb6: 003c         	movs	r4, r7
  40ffb8: b110         	cbz	r0, 0x40ffc0 <TrainingStage::doLesson(float)+0x5ce8> @ imm = #0x4
  40ffba: 003c         	movs	r4, r7
  40ffbc: af62         	add	r7, sp, #0x188
  40ffbe: 003c         	movs	r4, r7
  40ffc0: d730         	bvc	0x410024 <TrainingStage::doLesson(float)+0x5d4c> @ imm = #0x60
  40ffc2: ffff 4bd4    	<unknown>
  40ffc6: 58e3         	ldr	r3, [r4, r3]
  40ffc8: 681b         	ldr	r3, [r3]
  40ffca: 681b         	ldr	r3, [r3]
  40ffcc: f503 7329    	add.w	r3, r3, #0x2a4
  40ffd0: 681b         	ldr	r3, [r3]
  40ffd2: 4ad1         	ldr	r2, [pc, #0x344]        @ 0x410318 <TrainingStage::doLesson(float)+0x6040>
  40ffd4: 58a2         	ldr	r2, [r4, r2]
  40ffd6: 6812         	ldr	r2, [r2]
  40ffd8: 4610         	mov	r0, r2
  40ffda: f04f 0100    	mov.w	r1, #0x0
  40ffde: 4798         	blx	r3
  40ffe0: ab07         	add	r3, sp, #0x1c
  40ffe2: 681b         	ldr	r3, [r3]
  40ffe4: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  40ffe8: 681b         	ldr	r3, [r3]
  40ffea: f503 730e    	add.w	r3, r3, #0x238
  40ffee: 681b         	ldr	r3, [r3]
  40fff0: aa07         	add	r2, sp, #0x1c
  40fff2: 6812         	ldr	r2, [r2]
  40fff4: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  40fff8: 4610         	mov	r0, r2
  40fffa: f04f 0100    	mov.w	r1, #0x0
  40fffe: f2c4 3134    	movt	r1, #0x4334
  410002: 4798         	blx	r3
  410004: ab07         	add	r3, sp, #0x1c
  410006: 681b         	ldr	r3, [r3]
  410008: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  41000c: 681b         	ldr	r3, [r3]
  41000e: f503 730c    	add.w	r3, r3, #0x230
  410012: 681c         	ldr	r4, [r3]
  410014: ab07         	add	r3, sp, #0x1c
  410016: 681b         	ldr	r3, [r3]
  410018: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  41001c: 461d         	mov	r5, r3
  41001e: abac         	add	r3, sp, #0x2b0
  410020: 4618         	mov	r0, r3
  410022: ed9f 0bbb    	vldr	d0, [pc, #748]          @ 0x410310 <TrainingStage::doLesson(float)+0x6038>
  410026: eebf 1b00    	vmov.f64	d1, #-1.000000e+00
  41002a: f7f8 fa53    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x7b5a
  41002e: abac         	add	r3, sp, #0x2b0
  410030: 466a         	mov	r2, sp
  410032: f103 0108    	add.w	r1, r3, #0x8
  410036: c903         	ldm	r1, {r0, r1}
  410038: e882 0003    	stm.w	r2, {r0, r1}
  41003c: cb0c         	ldm	r3, {r2, r3}
  41003e: 4628         	mov	r0, r5
  410040: 47a0         	blx	r4
  410042: ab07         	add	r3, sp, #0x1c
  410044: 681b         	ldr	r3, [r3]
  410046: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  41004a: 2201         	movs	r2, #0x1
  41004c: f883 215a    	strb.w	r2, [r3, #0x15a]
  410050: ab07         	add	r3, sp, #0x1c
  410052: 681b         	ldr	r3, [r3]
  410054: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  410058: 681b         	ldr	r3, [r3]
  41005a: f503 73ce    	add.w	r3, r3, #0x19c
  41005e: 681b         	ldr	r3, [r3]
  410060: aa07         	add	r2, sp, #0x1c
  410062: 6812         	ldr	r2, [r2]
  410064: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  410068: 4610         	mov	r0, r2
  41006a: 2101         	movs	r1, #0x1
  41006c: 4798         	blx	r3
  41006e: ab07         	add	r3, sp, #0x1c
  410070: 681b         	ldr	r3, [r3]
  410072: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  410076: 2201         	movs	r2, #0x1
  410078: f883 211c    	strb.w	r2, [r3, #0x11c]
  41007c: ab07         	add	r3, sp, #0x1c
  41007e: 681b         	ldr	r3, [r3]
  410080: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  410084: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  410088: f8d3 2138    	ldr.w	r2, [r3, #0x138]
  41008c: 4ba3         	ldr	r3, [pc, #0x28c]        @ 0x41031c <TrainingStage::doLesson(float)+0x6044>
  41008e: 447b         	add	r3, pc
  410090: ed93 6b00    	vldr	d6, [r3]
  410094: ed93 7b02    	vldr	d7, [r3, #8]
  410098: 4610         	mov	r0, r2
  41009a: eeb0 0b46    	vmov.f64	d0, d6
  41009e: eeb0 1b47    	vmov.f64	d1, d7
  4100a2: f7f8 fae7    	bl	0x408674 <Tracer::checkCollision()+0x5e8> @ imm = #-0x7a32
  4100a6: ab07         	add	r3, sp, #0x1c
  4100a8: 681b         	ldr	r3, [r3]
  4100aa: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  4100ae: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  4100b2: f8d3 2138    	ldr.w	r2, [r3, #0x138]
  4100b6: 4b9a         	ldr	r3, [pc, #0x268]        @ 0x410320 <TrainingStage::doLesson(float)+0x6048>
  4100b8: 447b         	add	r3, pc
  4100ba: ed93 6b00    	vldr	d6, [r3]
  4100be: ed93 7b02    	vldr	d7, [r3, #8]
  4100c2: 4610         	mov	r0, r2
  4100c4: eeb0 0b46    	vmov.f64	d0, d6
  4100c8: eeb0 1b47    	vmov.f64	d1, d7
  4100cc: f7f8 fabc    	bl	0x408648 <Tracer::checkCollision()+0x5bc> @ imm = #-0x7a88
  4100d0: ab07         	add	r3, sp, #0x1c
  4100d2: 681b         	ldr	r3, [r3]
  4100d4: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  4100d8: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  4100dc: f8d3 5138    	ldr.w	r5, [r3, #0x138]
  4100e0: ab07         	add	r3, sp, #0x1c
  4100e2: 681b         	ldr	r3, [r3]
  4100e4: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  4100e8: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  4100ec: f8d3 4138    	ldr.w	r4, [r3, #0x138]
  4100f0: ab07         	add	r3, sp, #0x1c
  4100f2: 681b         	ldr	r3, [r3]
  4100f4: ed93 7a62    	vldr	s14, [r3, #392]
  4100f8: eef0 7a08    	vmov.f32	s15, #3.000000e+00
  4100fc: ee67 7a27    	vmul.f32	s15, s14, s15
  410100: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  410104: ec51 0b17    	vmov	r0, r1, d7
  410108: f6c5 eefe    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x13a204
  41010c: 4602         	mov	r2, r0
  41010e: 460b         	mov	r3, r1
  410110: a9b0         	add	r1, sp, #0x2c0
  410112: 4608         	mov	r0, r1
  410114: ed9f 0b7e    	vldr	d0, [pc, #504]          @ 0x410310 <TrainingStage::doLesson(float)+0x6038>
  410118: ec43 2b11    	vmov	d1, r2, r3
  41011c: f7f8 f9da    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x7c4c
  410120: aa02         	add	r2, sp, #0x8
  410122: ed94 4b0a    	vldr	d4, [r4, #40]
  410126: ed94 5b0c    	vldr	d5, [r4, #48]
  41012a: abb0         	add	r3, sp, #0x2c0
  41012c: ed93 6b00    	vldr	d6, [r3]
  410130: ed93 7b02    	vldr	d7, [r3, #8]
  410134: 4610         	mov	r0, r2
  410136: eeb0 0b44    	vmov.f64	d0, d4
  41013a: eeb0 1b45    	vmov.f64	d1, d5
  41013e: eeb0 2b46    	vmov.f64	d2, d6
  410142: eeb0 3b47    	vmov.f64	d3, d7
  410146: f7f8 f9d9    	bl	0x4084fc <Tracer::checkCollision()+0x470> @ imm = #-0x7c4e
  41014a: ab02         	add	r3, sp, #0x8
  41014c: f105 0428    	add.w	r4, r5, #0x28
  410150: cb0f         	ldm	r3, {r0, r1, r2, r3}
  410152: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  410156: ab07         	add	r3, sp, #0x1c
  410158: 681b         	ldr	r3, [r3]
  41015a: ed93 7a62    	vldr	s14, [r3, #392]
  41015e: eef0 7a08    	vmov.f32	s15, #3.000000e+00
  410162: eeb4 7ae7    	vcmpe.f32	s14, s15
  410166: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  41016a: dc01         	bgt	0x410170 <TrainingStage::doLesson(float)+0x5e98> @ imm = #0x2
  41016c: f001 bed2    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x1da4
  410170: ab07         	add	r3, sp, #0x1c
  410172: 681b         	ldr	r3, [r3]
  410174: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  410178: 1c5a         	adds	r2, r3, #0x1
  41017a: ab07         	add	r3, sp, #0x1c
  41017c: 681b         	ldr	r3, [r3]
  41017e: f8c3 2180    	str.w	r2, [r3, #0x180]
  410182: ab07         	add	r3, sp, #0x1c
  410184: 681b         	ldr	r3, [r3]
  410186: f04f 0200    	mov.w	r2, #0x0
  41018a: f8c3 2188    	str.w	r2, [r3, #0x188]
  41018e: f001 bec1    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x1d82
  410192: 4b61         	ldr	r3, [pc, #0x184]        @ 0x410318 <TrainingStage::doLesson(float)+0x6040>
  410194: 58e3         	ldr	r3, [r4, r3]
  410196: 681b         	ldr	r3, [r3]
  410198: 681b         	ldr	r3, [r3]
  41019a: f503 7329    	add.w	r3, r3, #0x2a4
  41019e: 681b         	ldr	r3, [r3]
  4101a0: 4a5d         	ldr	r2, [pc, #0x174]        @ 0x410318 <TrainingStage::doLesson(float)+0x6040>
  4101a2: 58a2         	ldr	r2, [r4, r2]
  4101a4: 6812         	ldr	r2, [r2]
  4101a6: 4610         	mov	r0, r2
  4101a8: f04f 0100    	mov.w	r1, #0x0
  4101ac: 4798         	blx	r3
  4101ae: ab07         	add	r3, sp, #0x1c
  4101b0: 681b         	ldr	r3, [r3]
  4101b2: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  4101b6: 681b         	ldr	r3, [r3]
  4101b8: f503 730e    	add.w	r3, r3, #0x238
  4101bc: 681b         	ldr	r3, [r3]
  4101be: aa07         	add	r2, sp, #0x1c
  4101c0: 6812         	ldr	r2, [r2]
  4101c2: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  4101c6: 4610         	mov	r0, r2
  4101c8: f04f 0100    	mov.w	r1, #0x0
  4101cc: f2c4 3134    	movt	r1, #0x4334
  4101d0: 4798         	blx	r3
  4101d2: ab07         	add	r3, sp, #0x1c
  4101d4: 681b         	ldr	r3, [r3]
  4101d6: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  4101da: 681b         	ldr	r3, [r3]
  4101dc: f503 730c    	add.w	r3, r3, #0x230
  4101e0: 681d         	ldr	r5, [r3]
  4101e2: ab07         	add	r3, sp, #0x1c
  4101e4: 681b         	ldr	r3, [r3]
  4101e6: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  4101ea: 461e         	mov	r6, r3
  4101ec: abb4         	add	r3, sp, #0x2d0
  4101ee: 4618         	mov	r0, r3
  4101f0: ed9f 0b47    	vldr	d0, [pc, #284]          @ 0x410310 <TrainingStage::doLesson(float)+0x6038>
  4101f4: eebf 1b00    	vmov.f64	d1, #-1.000000e+00
  4101f8: f7f8 f96c    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x7d28
  4101fc: abb4         	add	r3, sp, #0x2d0
  4101fe: 466a         	mov	r2, sp
  410200: f103 0108    	add.w	r1, r3, #0x8
  410204: c903         	ldm	r1, {r0, r1}
  410206: e882 0003    	stm.w	r2, {r0, r1}
  41020a: cb0c         	ldm	r3, {r2, r3}
  41020c: 4630         	mov	r0, r6
  41020e: 47a8         	blx	r5
  410210: ab07         	add	r3, sp, #0x1c
  410212: 681b         	ldr	r3, [r3]
  410214: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  410218: 2201         	movs	r2, #0x1
  41021a: f883 215a    	strb.w	r2, [r3, #0x15a]
  41021e: ab07         	add	r3, sp, #0x1c
  410220: 681b         	ldr	r3, [r3]
  410222: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  410226: 681b         	ldr	r3, [r3]
  410228: f503 73ce    	add.w	r3, r3, #0x19c
  41022c: 681b         	ldr	r3, [r3]
  41022e: aa07         	add	r2, sp, #0x1c
  410230: 6812         	ldr	r2, [r2]
  410232: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  410236: 4610         	mov	r0, r2
  410238: 2101         	movs	r1, #0x1
  41023a: 4798         	blx	r3
  41023c: ab07         	add	r3, sp, #0x1c
  41023e: 681b         	ldr	r3, [r3]
  410240: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  410244: 2201         	movs	r2, #0x1
  410246: f883 211c    	strb.w	r2, [r3, #0x11c]
  41024a: ab07         	add	r3, sp, #0x1c
  41024c: 681b         	ldr	r3, [r3]
  41024e: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  410252: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  410256: 681b         	ldr	r3, [r3]
  410258: f503 730e    	add.w	r3, r3, #0x238
  41025c: 681b         	ldr	r3, [r3]
  41025e: aa07         	add	r2, sp, #0x1c
  410260: 6812         	ldr	r2, [r2]
  410262: f8d2 21a8    	ldr.w	r2, [r2, #0x1a8]
  410266: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  41026a: 4610         	mov	r0, r2
  41026c: f04f 0100    	mov.w	r1, #0x0
  410270: f2c4 3134    	movt	r1, #0x4334
  410274: 4798         	blx	r3
  410276: ab07         	add	r3, sp, #0x1c
  410278: 681b         	ldr	r3, [r3]
  41027a: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  41027e: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  410282: 2201         	movs	r2, #0x1
  410284: f883 211c    	strb.w	r2, [r3, #0x11c]
  410288: ab07         	add	r3, sp, #0x1c
  41028a: 681b         	ldr	r3, [r3]
  41028c: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  410290: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  410294: 681b         	ldr	r3, [r3]
  410296: f503 730c    	add.w	r3, r3, #0x230
  41029a: 681d         	ldr	r5, [r3]
  41029c: ab07         	add	r3, sp, #0x1c
  41029e: 681b         	ldr	r3, [r3]
  4102a0: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  4102a4: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  4102a8: 461e         	mov	r6, r3
  4102aa: abb8         	add	r3, sp, #0x2e0
  4102ac: 4618         	mov	r0, r3
  4102ae: ed9f 0b18    	vldr	d0, [pc, #96]           @ 0x410310 <TrainingStage::doLesson(float)+0x6038>
  4102b2: eeb7 1b00    	vmov.f64	d1, #1.000000e+00
  4102b6: f7f8 f90d    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x7de6
  4102ba: abb8         	add	r3, sp, #0x2e0
  4102bc: 466a         	mov	r2, sp
  4102be: f103 0108    	add.w	r1, r3, #0x8
  4102c2: c903         	ldm	r1, {r0, r1}
  4102c4: e882 0003    	stm.w	r2, {r0, r1}
  4102c8: cb0c         	ldm	r3, {r2, r3}
  4102ca: 4630         	mov	r0, r6
  4102cc: 47a8         	blx	r5
  4102ce: ab07         	add	r3, sp, #0x1c
  4102d0: 681b         	ldr	r3, [r3]
  4102d2: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  4102d6: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  4102da: 681b         	ldr	r3, [r3]
  4102dc: f503 73f0    	add.w	r3, r3, #0x1e0
  4102e0: 681b         	ldr	r3, [r3]
  4102e2: aa07         	add	r2, sp, #0x1c
  4102e4: 6812         	ldr	r2, [r2]
  4102e6: f8d2 21a8    	ldr.w	r2, [r2, #0x1a8]
  4102ea: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  4102ee: 4610         	mov	r0, r2
  4102f0: 2101         	movs	r1, #0x1
  4102f2: 4798         	blx	r3
  4102f4: ab07         	add	r3, sp, #0x1c
  4102f6: 681b         	ldr	r3, [r3]
  4102f8: ed93 7a62    	vldr	s14, [r3, #392]
  4102fc: eef0 7a08    	vmov.f32	s15, #3.000000e+00
  410300: eeb4 7ae7    	vcmpe.f32	s14, s15
  410304: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  410308: dc0c         	bgt	0x410324 <TrainingStage::doLesson(float)+0x604c> @ imm = #0x18
  41030a: f001 be03    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x1c06
  41030e: bf00         	nop
  410318: d784         	bvc	0x410224 <TrainingStage::doLesson(float)+0x5f4c> @ imm = #-0xf8
  41031a: ffff aed6    	<unknown>
  41031e: 003c         	movs	r4, r7
  410320: aeac         	add	r6, sp, #0x2b0
  410322: 003c         	movs	r4, r7
  410324: ab07         	add	r3, sp, #0x1c
  410326: 681b         	ldr	r3, [r3]
  410328: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  41032c: 1c5a         	adds	r2, r3, #0x1
  41032e: ab07         	add	r3, sp, #0x1c
  410330: 681b         	ldr	r3, [r3]
  410332: f8c3 2180    	str.w	r2, [r3, #0x180]
  410336: ab07         	add	r3, sp, #0x1c
  410338: 681b         	ldr	r3, [r3]
  41033a: f04f 0200    	mov.w	r2, #0x0
  41033e: f8c3 2188    	str.w	r2, [r3, #0x188]
  410342: ab07         	add	r3, sp, #0x1c
  410344: 681b         	ldr	r3, [r3]
  410346: f8d3 51a4    	ldr.w	r5, [r3, #0x1a4]
  41034a: ab07         	add	r3, sp, #0x1c
  41034c: 681b         	ldr	r3, [r3]
  41034e: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  410352: 681b         	ldr	r3, [r3]
  410354: f503 73e0    	add.w	r3, r3, #0x1c0
  410358: 681b         	ldr	r3, [r3]
  41035a: aa07         	add	r2, sp, #0x1c
  41035c: 6812         	ldr	r2, [r2]
  41035e: f8d2 21a8    	ldr.w	r2, [r2, #0x1a8]
  410362: f50d 6182    	add.w	r1, sp, #0x410
  410366: 4608         	mov	r0, r1
  410368: 4611         	mov	r1, r2
  41036a: 4798         	blx	r3
  41036c: f50d 6382    	add.w	r3, sp, #0x410
  410370: 4628         	mov	r0, r5
  410372: 4619         	mov	r1, r3
  410374: f709 fdac    	bl	0x319ed0 <EnemyManager::removeHumanoidDrone(std::string)> @ imm = #-0xf64a8
  410378: f50d 6382    	add.w	r3, sp, #0x410
  41037c: 4618         	mov	r0, r3
  41037e: f3a5 fac9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a5592
  410382: ab07         	add	r3, sp, #0x1c
  410384: 681b         	ldr	r3, [r3]
  410386: 2200         	movs	r2, #0x0
  410388: f8c3 21a8    	str.w	r2, [r3, #0x1a8]
  41038c: ab07         	add	r3, sp, #0x1c
  41038e: 681b         	ldr	r3, [r3]
  410390: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  410394: f50d 6380    	add.w	r3, sp, #0x400
  410398: 4618         	mov	r0, r3
  41039a: f37a f82b    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x37a056
  41039e: f50d 6282    	add.w	r2, sp, #0x410
  4103a2: f50d 6380    	add.w	r3, sp, #0x400
  4103a6: 4610         	mov	r0, r2
  4103a8: 4ac1         	ldr	r2, [pc, #0x304]        @ 0x4106b0 <TrainingStage::doLesson(float)+0x63d8>
  4103aa: 447a         	add	r2, pc
  4103ac: 4611         	mov	r1, r2
  4103ae: 461a         	mov	r2, r3
  4103b0: f3a6 fb56    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3a66ac
  4103b4: 2000         	movs	r0, #0x0
  4103b6: 2100         	movs	r1, #0x0
  4103b8: 22ff         	movs	r2, #0xff
  4103ba: f7f8 f84d    	bl	0x408458 <Tracer::checkCollision()+0x3cc> @ imm = #-0x7f66
  4103be: 4602         	mov	r2, r0
  4103c0: ab2b         	add	r3, sp, #0xac
  4103c2: 4611         	mov	r1, r2
  4103c4: 7019         	strb	r1, [r3]
  4103c6: f3c2 2107    	ubfx	r1, r2, #0x8, #0x8
  4103ca: 7059         	strb	r1, [r3, #0x1]
  4103cc: f3c2 4207    	ubfx	r2, r2, #0x10, #0x8
  4103d0: 709a         	strb	r2, [r3, #0x2]
  4103d2: f50d 6282    	add.w	r2, sp, #0x410
  4103d6: ab2b         	add	r3, sp, #0xac
  4103d8: 4628         	mov	r0, r5
  4103da: 4611         	mov	r1, r2
  4103dc: 681a         	ldr	r2, [r3]
  4103de: 2301         	movs	r3, #0x1
  4103e0: f72c ff6e    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xd3124
  4103e4: f50d 6382    	add.w	r3, sp, #0x410
  4103e8: 4618         	mov	r0, r3
  4103ea: f3a5 fa93    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a5526
  4103ee: f50d 6380    	add.w	r3, sp, #0x400
  4103f2: 4618         	mov	r0, r3
  4103f4: f37a f802    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37a004
  4103f8: 4bae         	ldr	r3, [pc, #0x2b8]        @ 0x4106b4 <TrainingStage::doLesson(float)+0x63dc>
  4103fa: 58e3         	ldr	r3, [r4, r3]
  4103fc: 681b         	ldr	r3, [r3]
  4103fe: 4618         	mov	r0, r3
  410400: 2153         	movs	r1, #0x53
  410402: 2201         	movs	r2, #0x1
  410404: f7e7 fc9c    	bl	0x3f7d40 <Sound::playSoundWithVoice(int, int)> @ imm = #-0x186c8
  410408: f001 bd84    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x1b08
  41040c: 4baa         	ldr	r3, [pc, #0x2a8]        @ 0x4106b8 <TrainingStage::doLesson(float)+0x63e0>
  41040e: 58e3         	ldr	r3, [r4, r3]
  410410: 681b         	ldr	r3, [r3]
  410412: 681b         	ldr	r3, [r3]
  410414: f503 7329    	add.w	r3, r3, #0x2a4
  410418: 681b         	ldr	r3, [r3]
  41041a: 4aa7         	ldr	r2, [pc, #0x29c]        @ 0x4106b8 <TrainingStage::doLesson(float)+0x63e0>
  41041c: 58a2         	ldr	r2, [r4, r2]
  41041e: 6812         	ldr	r2, [r2]
  410420: 4610         	mov	r0, r2
  410422: f04f 0100    	mov.w	r1, #0x0
  410426: 4798         	blx	r3
  410428: ab07         	add	r3, sp, #0x1c
  41042a: 681b         	ldr	r3, [r3]
  41042c: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  410430: 681b         	ldr	r3, [r3]
  410432: f503 730e    	add.w	r3, r3, #0x238
  410436: 681b         	ldr	r3, [r3]
  410438: aa07         	add	r2, sp, #0x1c
  41043a: 6812         	ldr	r2, [r2]
  41043c: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  410440: 4610         	mov	r0, r2
  410442: f04f 0100    	mov.w	r1, #0x0
  410446: f2c4 3134    	movt	r1, #0x4334
  41044a: 4798         	blx	r3
  41044c: ab07         	add	r3, sp, #0x1c
  41044e: 681b         	ldr	r3, [r3]
  410450: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  410454: 681b         	ldr	r3, [r3]
  410456: f503 730c    	add.w	r3, r3, #0x230
  41045a: 681d         	ldr	r5, [r3]
  41045c: ab07         	add	r3, sp, #0x1c
  41045e: 681b         	ldr	r3, [r3]
  410460: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  410464: 461e         	mov	r6, r3
  410466: abbc         	add	r3, sp, #0x2f0
  410468: 4618         	mov	r0, r3
  41046a: ed9f 0b8f    	vldr	d0, [pc, #572]          @ 0x4106a8 <TrainingStage::doLesson(float)+0x63d0>
  41046e: ed9f 1b8e    	vldr	d1, [pc, #568]          @ 0x4106a8 <TrainingStage::doLesson(float)+0x63d0>
  410472: f7f8 f82f    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x7fa2
  410476: abbc         	add	r3, sp, #0x2f0
  410478: 466a         	mov	r2, sp
  41047a: f103 0108    	add.w	r1, r3, #0x8
  41047e: c903         	ldm	r1, {r0, r1}
  410480: e882 0003    	stm.w	r2, {r0, r1}
  410484: cb0c         	ldm	r3, {r2, r3}
  410486: 4630         	mov	r0, r6
  410488: 47a8         	blx	r5
  41048a: ab07         	add	r3, sp, #0x1c
  41048c: 681b         	ldr	r3, [r3]
  41048e: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  410492: 2200         	movs	r2, #0x0
  410494: f883 215a    	strb.w	r2, [r3, #0x15a]
  410498: ab07         	add	r3, sp, #0x1c
  41049a: 681b         	ldr	r3, [r3]
  41049c: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  4104a0: 681b         	ldr	r3, [r3]
  4104a2: f503 73ce    	add.w	r3, r3, #0x19c
  4104a6: 681b         	ldr	r3, [r3]
  4104a8: aa07         	add	r2, sp, #0x1c
  4104aa: 6812         	ldr	r2, [r2]
  4104ac: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  4104b0: 4610         	mov	r0, r2
  4104b2: 2101         	movs	r1, #0x1
  4104b4: 4798         	blx	r3
  4104b6: ab07         	add	r3, sp, #0x1c
  4104b8: 681b         	ldr	r3, [r3]
  4104ba: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  4104be: 2200         	movs	r2, #0x0
  4104c0: f883 211c    	strb.w	r2, [r3, #0x11c]
  4104c4: ab07         	add	r3, sp, #0x1c
  4104c6: 681b         	ldr	r3, [r3]
  4104c8: ed93 7a62    	vldr	s14, [r3, #392]
  4104cc: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  4104d0: eeb4 7ae7    	vcmpe.f32	s14, s15
  4104d4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  4104d8: d505         	bpl	0x4104e6 <TrainingStage::doLesson(float)+0x620e> @ imm = #0xa
  4104da: aa07         	add	r2, sp, #0x1c
  4104dc: ab06         	add	r3, sp, #0x18
  4104de: 6810         	ldr	r0, [r2]
  4104e0: 6819         	ldr	r1, [r3]
  4104e2: f7f9 fca5    	bl	0x409e30 <TrainingStage::headChatter(float)> @ imm = #-0x66b6
  4104e6: ab07         	add	r3, sp, #0x1c
  4104e8: 681b         	ldr	r3, [r3]
  4104ea: ed93 7a62    	vldr	s14, [r3, #392]
  4104ee: eef7 7a08    	vmov.f32	s15, #1.500000e+00
  4104f2: eeb4 7ae7    	vcmpe.f32	s14, s15
  4104f6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  4104fa: dc01         	bgt	0x410500 <TrainingStage::doLesson(float)+0x6228> @ imm = #0x2
  4104fc: f001 bd0a    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x1a14
  410500: ab07         	add	r3, sp, #0x1c
  410502: 681b         	ldr	r3, [r3]
  410504: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  410508: 1c5a         	adds	r2, r3, #0x1
  41050a: ab07         	add	r3, sp, #0x1c
  41050c: 681b         	ldr	r3, [r3]
  41050e: f8c3 2180    	str.w	r2, [r3, #0x180]
  410512: ab07         	add	r3, sp, #0x1c
  410514: 681b         	ldr	r3, [r3]
  410516: f04f 0200    	mov.w	r2, #0x0
  41051a: f8c3 2188    	str.w	r2, [r3, #0x188]
  41051e: ab07         	add	r3, sp, #0x1c
  410520: 681b         	ldr	r3, [r3]
  410522: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  410526: f50d 6380    	add.w	r3, sp, #0x400
  41052a: 4618         	mov	r0, r3
  41052c: f379 ff62    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x379ec4
  410530: f50d 6282    	add.w	r2, sp, #0x410
  410534: f50d 6380    	add.w	r3, sp, #0x400
  410538: 4610         	mov	r0, r2
  41053a: 4a60         	ldr	r2, [pc, #0x180]        @ 0x4106bc <TrainingStage::doLesson(float)+0x63e4>
  41053c: 447a         	add	r2, pc
  41053e: 4611         	mov	r1, r2
  410540: 461a         	mov	r2, r3
  410542: f3a6 fa8d    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3a651a
  410546: 2000         	movs	r0, #0x0
  410548: 2100         	movs	r1, #0x0
  41054a: 22ff         	movs	r2, #0xff
  41054c: f7f7 ff84    	bl	0x408458 <Tracer::checkCollision()+0x3cc> @ imm = #-0x80f8
  410550: 4602         	mov	r2, r0
  410552: ab2c         	add	r3, sp, #0xb0
  410554: 4611         	mov	r1, r2
  410556: 7019         	strb	r1, [r3]
  410558: f3c2 2107    	ubfx	r1, r2, #0x8, #0x8
  41055c: 7059         	strb	r1, [r3, #0x1]
  41055e: f3c2 4207    	ubfx	r2, r2, #0x10, #0x8
  410562: 709a         	strb	r2, [r3, #0x2]
  410564: f50d 6282    	add.w	r2, sp, #0x410
  410568: ab2c         	add	r3, sp, #0xb0
  41056a: 4628         	mov	r0, r5
  41056c: 4611         	mov	r1, r2
  41056e: 681a         	ldr	r2, [r3]
  410570: 2303         	movs	r3, #0x3
  410572: f72c fea5    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xd32b6
  410576: f50d 6382    	add.w	r3, sp, #0x410
  41057a: 4618         	mov	r0, r3
  41057c: f3a5 f9ca    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a5394
  410580: f50d 6380    	add.w	r3, sp, #0x400
  410584: 4618         	mov	r0, r3
  410586: f379 ff39    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x379e72
  41058a: 4b4a         	ldr	r3, [pc, #0x128]        @ 0x4106b4 <TrainingStage::doLesson(float)+0x63dc>
  41058c: 58e3         	ldr	r3, [r4, r3]
  41058e: 681b         	ldr	r3, [r3]
  410590: 4618         	mov	r0, r3
  410592: 2143         	movs	r1, #0x43
  410594: 2201         	movs	r2, #0x1
  410596: f7e7 fbd3    	bl	0x3f7d40 <Sound::playSoundWithVoice(int, int)> @ imm = #-0x1885a
  41059a: ab07         	add	r3, sp, #0x1c
  41059c: 681b         	ldr	r3, [r3]
  41059e: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  4105a2: 681b         	ldr	r3, [r3]
  4105a4: f503 7305    	add.w	r3, r3, #0x214
  4105a8: 681c         	ldr	r4, [r3]
  4105aa: ab07         	add	r3, sp, #0x1c
  4105ac: 681b         	ldr	r3, [r3]
  4105ae: f8d3 517c    	ldr.w	r5, [r3, #0x17c]
  4105b2: f007 f9e7    	bl	0x417984 <WeaponFactory::sharedWeaponFactory()> @ imm = #0x73ce
  4105b6: 4603         	mov	r3, r0
  4105b8: 4618         	mov	r0, r3
  4105ba: 2105         	movs	r1, #0x5
  4105bc: f008 f89e    	bl	0x4186fc <WeaponFactory::createWeaponFromAmmoType(ItemType)> @ imm = #0x813c
  4105c0: 4603         	mov	r3, r0
  4105c2: 4628         	mov	r0, r5
  4105c4: 4619         	mov	r1, r3
  4105c6: 47a0         	blx	r4
  4105c8: ab07         	add	r3, sp, #0x1c
  4105ca: 681b         	ldr	r3, [r3]
  4105cc: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  4105d0: 681b         	ldr	r3, [r3]
  4105d2: f503 7307    	add.w	r3, r3, #0x21c
  4105d6: 681c         	ldr	r4, [r3]
  4105d8: ab07         	add	r3, sp, #0x1c
  4105da: 681b         	ldr	r3, [r3]
  4105dc: f8d3 517c    	ldr.w	r5, [r3, #0x17c]
  4105e0: f007 f9d0    	bl	0x417984 <WeaponFactory::sharedWeaponFactory()> @ imm = #0x73a0
  4105e4: 4603         	mov	r3, r0
  4105e6: 4618         	mov	r0, r3
  4105e8: 2105         	movs	r1, #0x5
  4105ea: f008 f887    	bl	0x4186fc <WeaponFactory::createWeaponFromAmmoType(ItemType)> @ imm = #0x810e
  4105ee: 4603         	mov	r3, r0
  4105f0: 4628         	mov	r0, r5
  4105f2: 4619         	mov	r1, r3
  4105f4: 47a0         	blx	r4
  4105f6: f001 bc8d    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x191a
  4105fa: 4b2f         	ldr	r3, [pc, #0xbc]         @ 0x4106b8 <TrainingStage::doLesson(float)+0x63e0>
  4105fc: 58e3         	ldr	r3, [r4, r3]
  4105fe: 681b         	ldr	r3, [r3]
  410600: 681b         	ldr	r3, [r3]
  410602: f503 7329    	add.w	r3, r3, #0x2a4
  410606: 681b         	ldr	r3, [r3]
  410608: 4a2b         	ldr	r2, [pc, #0xac]         @ 0x4106b8 <TrainingStage::doLesson(float)+0x63e0>
  41060a: 58a2         	ldr	r2, [r4, r2]
  41060c: 6812         	ldr	r2, [r2]
  41060e: 4610         	mov	r0, r2
  410610: f04f 0100    	mov.w	r1, #0x0
  410614: 4798         	blx	r3
  410616: ab07         	add	r3, sp, #0x1c
  410618: 681b         	ldr	r3, [r3]
  41061a: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  41061e: 681b         	ldr	r3, [r3]
  410620: f503 730e    	add.w	r3, r3, #0x238
  410624: 681b         	ldr	r3, [r3]
  410626: aa07         	add	r2, sp, #0x1c
  410628: 6812         	ldr	r2, [r2]
  41062a: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  41062e: 4610         	mov	r0, r2
  410630: f04f 0100    	mov.w	r1, #0x0
  410634: f2c4 310c    	movt	r1, #0x430c
  410638: 4798         	blx	r3
  41063a: ab07         	add	r3, sp, #0x1c
  41063c: 681b         	ldr	r3, [r3]
  41063e: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  410642: 681b         	ldr	r3, [r3]
  410644: f503 73ec    	add.w	r3, r3, #0x1d8
  410648: 681b         	ldr	r3, [r3]
  41064a: aa07         	add	r2, sp, #0x1c
  41064c: 6812         	ldr	r2, [r2]
  41064e: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  410652: 4610         	mov	r0, r2
  410654: 4798         	blx	r3
  410656: 4603         	mov	r3, r0
  410658: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  41065c: 681a         	ldr	r2, [r3]
  41065e: 3298         	adds	r2, #0x98
  410660: 6812         	ldr	r2, [r2]
  410662: 4618         	mov	r0, r3
  410664: f04f 0100    	mov.w	r1, #0x0
  410668: 4790         	blx	r2
  41066a: ab07         	add	r3, sp, #0x1c
  41066c: 681b         	ldr	r3, [r3]
  41066e: ed93 7a62    	vldr	s14, [r3, #392]
  410672: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  410676: eeb4 7ae7    	vcmpe.f32	s14, s15
  41067a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  41067e: d505         	bpl	0x41068c <TrainingStage::doLesson(float)+0x63b4> @ imm = #0xa
  410680: aa07         	add	r2, sp, #0x1c
  410682: ab06         	add	r3, sp, #0x18
  410684: 6810         	ldr	r0, [r2]
  410686: 6819         	ldr	r1, [r3]
  410688: f7f9 fbd2    	bl	0x409e30 <TrainingStage::headChatter(float)> @ imm = #-0x685c
  41068c: ab07         	add	r3, sp, #0x1c
  41068e: 681b         	ldr	r3, [r3]
  410690: ed93 7a62    	vldr	s14, [r3, #392]
  410694: eef0 7a08    	vmov.f32	s15, #3.000000e+00
  410698: eeb4 7ae7    	vcmpe.f32	s14, s15
  41069c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  4106a0: dc0e         	bgt	0x4106c0 <TrainingStage::doLesson(float)+0x63e8> @ imm = #0x1c
  4106a2: f001 bc37    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x186e
  4106a6: bf00         	nop
  4106b0: aa5e         	add	r2, sp, #0x178
  4106b2: 003c         	movs	r4, r7
  4106b4: d730         	bvc	0x410718 <TrainingStage::doLesson(float)+0x6440> @ imm = #0x60
  4106b6: ffff d784    	<unknown>
  4106ba: ffff a8e4    	vtbx.8	d26, {d31}, d20
  4106be: 003c         	movs	r4, r7
  4106c0: ab07         	add	r3, sp, #0x1c
  4106c2: 681b         	ldr	r3, [r3]
  4106c4: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  4106c8: 1c5a         	adds	r2, r3, #0x1
  4106ca: ab07         	add	r3, sp, #0x1c
  4106cc: 681b         	ldr	r3, [r3]
  4106ce: f8c3 2180    	str.w	r2, [r3, #0x180]
  4106d2: ab07         	add	r3, sp, #0x1c
  4106d4: 681b         	ldr	r3, [r3]
  4106d6: f04f 0200    	mov.w	r2, #0x0
  4106da: f8c3 2188    	str.w	r2, [r3, #0x188]
  4106de: ab07         	add	r3, sp, #0x1c
  4106e0: 681b         	ldr	r3, [r3]
  4106e2: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  4106e6: f50d 6380    	add.w	r3, sp, #0x400
  4106ea: 4618         	mov	r0, r3
  4106ec: f379 fe82    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x379d04
  4106f0: f50d 6282    	add.w	r2, sp, #0x410
  4106f4: f50d 6380    	add.w	r3, sp, #0x400
  4106f8: 4610         	mov	r0, r2
  4106fa: 4afb         	ldr	r2, [pc, #0x3ec]        @ 0x410ae8 <TrainingStage::doLesson(float)+0x6810>
  4106fc: 447a         	add	r2, pc
  4106fe: 4611         	mov	r1, r2
  410700: 461a         	mov	r2, r3
  410702: f3a6 f9ad    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3a635a
  410706: 2000         	movs	r0, #0x0
  410708: 2100         	movs	r1, #0x0
  41070a: 22ff         	movs	r2, #0xff
  41070c: f7f7 fea4    	bl	0x408458 <Tracer::checkCollision()+0x3cc> @ imm = #-0x82b8
  410710: 4602         	mov	r2, r0
  410712: ab2d         	add	r3, sp, #0xb4
  410714: 4611         	mov	r1, r2
  410716: 7019         	strb	r1, [r3]
  410718: f3c2 2107    	ubfx	r1, r2, #0x8, #0x8
  41071c: 7059         	strb	r1, [r3, #0x1]
  41071e: f3c2 4207    	ubfx	r2, r2, #0x10, #0x8
  410722: 709a         	strb	r2, [r3, #0x2]
  410724: f50d 6282    	add.w	r2, sp, #0x410
  410728: ab2d         	add	r3, sp, #0xb4
  41072a: 4628         	mov	r0, r5
  41072c: 4611         	mov	r1, r2
  41072e: 681a         	ldr	r2, [r3]
  410730: 2303         	movs	r3, #0x3
  410732: f72c fdc5    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xd3476
  410736: f50d 6382    	add.w	r3, sp, #0x410
  41073a: 4618         	mov	r0, r3
  41073c: f3a5 f8ea    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a51d4
  410740: f50d 6380    	add.w	r3, sp, #0x400
  410744: 4618         	mov	r0, r3
  410746: f379 fe59    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x379cb2
  41074a: 4be8         	ldr	r3, [pc, #0x3a0]        @ 0x410aec <TrainingStage::doLesson(float)+0x6814>
  41074c: 58e3         	ldr	r3, [r4, r3]
  41074e: 681b         	ldr	r3, [r3]
  410750: 4618         	mov	r0, r3
  410752: 2154         	movs	r1, #0x54
  410754: 2201         	movs	r2, #0x1
  410756: f7e7 faf3    	bl	0x3f7d40 <Sound::playSoundWithVoice(int, int)> @ imm = #-0x18a1a
  41075a: f001 bbdb    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x17b6
  41075e: 4be4         	ldr	r3, [pc, #0x390]        @ 0x410af0 <TrainingStage::doLesson(float)+0x6818>
  410760: 58e3         	ldr	r3, [r4, r3]
  410762: 681b         	ldr	r3, [r3]
  410764: 681b         	ldr	r3, [r3]
  410766: f503 7329    	add.w	r3, r3, #0x2a4
  41076a: 681b         	ldr	r3, [r3]
  41076c: 4ae0         	ldr	r2, [pc, #0x380]        @ 0x410af0 <TrainingStage::doLesson(float)+0x6818>
  41076e: 58a2         	ldr	r2, [r4, r2]
  410770: 6812         	ldr	r2, [r2]
  410772: 4610         	mov	r0, r2
  410774: f04f 0100    	mov.w	r1, #0x0
  410778: 4798         	blx	r3
  41077a: ab07         	add	r3, sp, #0x1c
  41077c: 681b         	ldr	r3, [r3]
  41077e: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  410782: 681b         	ldr	r3, [r3]
  410784: f503 730e    	add.w	r3, r3, #0x238
  410788: 681b         	ldr	r3, [r3]
  41078a: aa07         	add	r2, sp, #0x1c
  41078c: 6812         	ldr	r2, [r2]
  41078e: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  410792: 4610         	mov	r0, r2
  410794: f04f 0100    	mov.w	r1, #0x0
  410798: f2c4 310c    	movt	r1, #0x430c
  41079c: 4798         	blx	r3
  41079e: ab07         	add	r3, sp, #0x1c
  4107a0: 681b         	ldr	r3, [r3]
  4107a2: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  4107a6: 681b         	ldr	r3, [r3]
  4107a8: f503 73ec    	add.w	r3, r3, #0x1d8
  4107ac: 681b         	ldr	r3, [r3]
  4107ae: aa07         	add	r2, sp, #0x1c
  4107b0: 6812         	ldr	r2, [r2]
  4107b2: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  4107b6: 4610         	mov	r0, r2
  4107b8: 4798         	blx	r3
  4107ba: 4603         	mov	r3, r0
  4107bc: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  4107c0: 681a         	ldr	r2, [r3]
  4107c2: 3298         	adds	r2, #0x98
  4107c4: 6812         	ldr	r2, [r2]
  4107c6: 4618         	mov	r0, r3
  4107c8: f04f 0100    	mov.w	r1, #0x0
  4107cc: 4790         	blx	r2
  4107ce: ab07         	add	r3, sp, #0x1c
  4107d0: 681b         	ldr	r3, [r3]
  4107d2: ed93 7a62    	vldr	s14, [r3, #392]
  4107d6: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  4107da: eeb4 7ae7    	vcmpe.f32	s14, s15
  4107de: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  4107e2: d505         	bpl	0x4107f0 <TrainingStage::doLesson(float)+0x6518> @ imm = #0xa
  4107e4: aa07         	add	r2, sp, #0x1c
  4107e6: ab06         	add	r3, sp, #0x18
  4107e8: 6810         	ldr	r0, [r2]
  4107ea: 6819         	ldr	r1, [r3]
  4107ec: f7f9 fb20    	bl	0x409e30 <TrainingStage::headChatter(float)> @ imm = #-0x69c0
  4107f0: ab07         	add	r3, sp, #0x1c
  4107f2: 681b         	ldr	r3, [r3]
  4107f4: ed93 7a62    	vldr	s14, [r3, #392]
  4107f8: eef0 7a08    	vmov.f32	s15, #3.000000e+00
  4107fc: eeb4 7ae7    	vcmpe.f32	s14, s15
  410800: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  410804: dc01         	bgt	0x41080a <TrainingStage::doLesson(float)+0x6532> @ imm = #0x2
  410806: f001 bb85    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x170a
  41080a: ab07         	add	r3, sp, #0x1c
  41080c: 681b         	ldr	r3, [r3]
  41080e: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  410812: 1c5a         	adds	r2, r3, #0x1
  410814: ab07         	add	r3, sp, #0x1c
  410816: 681b         	ldr	r3, [r3]
  410818: f8c3 2180    	str.w	r2, [r3, #0x180]
  41081c: ab07         	add	r3, sp, #0x1c
  41081e: 681b         	ldr	r3, [r3]
  410820: f04f 0200    	mov.w	r2, #0x0
  410824: f8c3 2188    	str.w	r2, [r3, #0x188]
  410828: ab07         	add	r3, sp, #0x1c
  41082a: 681b         	ldr	r3, [r3]
  41082c: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  410830: f50d 6380    	add.w	r3, sp, #0x400
  410834: 4618         	mov	r0, r3
  410836: f379 fddd    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x379bba
  41083a: f50d 6282    	add.w	r2, sp, #0x410
  41083e: f50d 6380    	add.w	r3, sp, #0x400
  410842: 4610         	mov	r0, r2
  410844: 4aab         	ldr	r2, [pc, #0x2ac]        @ 0x410af4 <TrainingStage::doLesson(float)+0x681c>
  410846: 447a         	add	r2, pc
  410848: 4611         	mov	r1, r2
  41084a: 461a         	mov	r2, r3
  41084c: f3a6 f908    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3a6210
  410850: 2000         	movs	r0, #0x0
  410852: 2100         	movs	r1, #0x0
  410854: 22ff         	movs	r2, #0xff
  410856: f7f7 fdff    	bl	0x408458 <Tracer::checkCollision()+0x3cc> @ imm = #-0x8402
  41085a: 4602         	mov	r2, r0
  41085c: ab2e         	add	r3, sp, #0xb8
  41085e: 4611         	mov	r1, r2
  410860: 7019         	strb	r1, [r3]
  410862: f3c2 2107    	ubfx	r1, r2, #0x8, #0x8
  410866: 7059         	strb	r1, [r3, #0x1]
  410868: f3c2 4207    	ubfx	r2, r2, #0x10, #0x8
  41086c: 709a         	strb	r2, [r3, #0x2]
  41086e: f50d 6282    	add.w	r2, sp, #0x410
  410872: ab2e         	add	r3, sp, #0xb8
  410874: 4628         	mov	r0, r5
  410876: 4611         	mov	r1, r2
  410878: 681a         	ldr	r2, [r3]
  41087a: 2303         	movs	r3, #0x3
  41087c: f72c fd20    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xd35c0
  410880: f50d 6382    	add.w	r3, sp, #0x410
  410884: 4618         	mov	r0, r3
  410886: f3a5 f845    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a508a
  41088a: f50d 6380    	add.w	r3, sp, #0x400
  41088e: 4618         	mov	r0, r3
  410890: f379 fdb4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x379b68
  410894: 4b95         	ldr	r3, [pc, #0x254]        @ 0x410aec <TrainingStage::doLesson(float)+0x6814>
  410896: 58e3         	ldr	r3, [r4, r3]
  410898: 681b         	ldr	r3, [r3]
  41089a: 4618         	mov	r0, r3
  41089c: 2155         	movs	r1, #0x55
  41089e: 2201         	movs	r2, #0x1
  4108a0: f7e7 fa4e    	bl	0x3f7d40 <Sound::playSoundWithVoice(int, int)> @ imm = #-0x18b64
  4108a4: f001 bb36    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x166c
  4108a8: 4b91         	ldr	r3, [pc, #0x244]        @ 0x410af0 <TrainingStage::doLesson(float)+0x6818>
  4108aa: 58e3         	ldr	r3, [r4, r3]
  4108ac: 681b         	ldr	r3, [r3]
  4108ae: 681b         	ldr	r3, [r3]
  4108b0: f503 7329    	add.w	r3, r3, #0x2a4
  4108b4: 681b         	ldr	r3, [r3]
  4108b6: 4a8e         	ldr	r2, [pc, #0x238]        @ 0x410af0 <TrainingStage::doLesson(float)+0x6818>
  4108b8: 58a2         	ldr	r2, [r4, r2]
  4108ba: 6812         	ldr	r2, [r2]
  4108bc: 4610         	mov	r0, r2
  4108be: f04f 0100    	mov.w	r1, #0x0
  4108c2: 4798         	blx	r3
  4108c4: ab07         	add	r3, sp, #0x1c
  4108c6: 681b         	ldr	r3, [r3]
  4108c8: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  4108cc: 681b         	ldr	r3, [r3]
  4108ce: f503 730e    	add.w	r3, r3, #0x238
  4108d2: 681b         	ldr	r3, [r3]
  4108d4: aa07         	add	r2, sp, #0x1c
  4108d6: 6812         	ldr	r2, [r2]
  4108d8: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  4108dc: 4610         	mov	r0, r2
  4108de: f04f 0100    	mov.w	r1, #0x0
  4108e2: f2c4 310c    	movt	r1, #0x430c
  4108e6: 4798         	blx	r3
  4108e8: ab07         	add	r3, sp, #0x1c
  4108ea: 681b         	ldr	r3, [r3]
  4108ec: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  4108f0: 681b         	ldr	r3, [r3]
  4108f2: f503 73ec    	add.w	r3, r3, #0x1d8
  4108f6: 681b         	ldr	r3, [r3]
  4108f8: aa07         	add	r2, sp, #0x1c
  4108fa: 6812         	ldr	r2, [r2]
  4108fc: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  410900: 4610         	mov	r0, r2
  410902: 4798         	blx	r3
  410904: 4603         	mov	r3, r0
  410906: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  41090a: 681a         	ldr	r2, [r3]
  41090c: 3298         	adds	r2, #0x98
  41090e: 6812         	ldr	r2, [r2]
  410910: 4618         	mov	r0, r3
  410912: f04f 0100    	mov.w	r1, #0x0
  410916: 4790         	blx	r2
  410918: ab07         	add	r3, sp, #0x1c
  41091a: 681b         	ldr	r3, [r3]
  41091c: ed93 7a62    	vldr	s14, [r3, #392]
  410920: eef0 7a08    	vmov.f32	s15, #3.000000e+00
  410924: eeb4 7ae7    	vcmpe.f32	s14, s15
  410928: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  41092c: d505         	bpl	0x41093a <TrainingStage::doLesson(float)+0x6662> @ imm = #0xa
  41092e: aa07         	add	r2, sp, #0x1c
  410930: ab06         	add	r3, sp, #0x18
  410932: 6810         	ldr	r0, [r2]
  410934: 6819         	ldr	r1, [r3]
  410936: f7f9 fa7b    	bl	0x409e30 <TrainingStage::headChatter(float)> @ imm = #-0x6b0a
  41093a: ab07         	add	r3, sp, #0x1c
  41093c: 681b         	ldr	r3, [r3]
  41093e: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  410942: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  410946: ed93 6b0c    	vldr	d6, [r3, #48]
  41094a: 4b69         	ldr	r3, [pc, #0x1a4]        @ 0x410af0 <TrainingStage::doLesson(float)+0x6818>
  41094c: 58e3         	ldr	r3, [r4, r3]
  41094e: 681b         	ldr	r3, [r3]
  410950: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  410954: ed93 5b0c    	vldr	d5, [r3, #48]
  410958: ed9f 7b5d    	vldr	d7, [pc, #372]          @ 0x410ad0 <TrainingStage::doLesson(float)+0x67f8>
  41095c: ee35 7b07    	vadd.f64	d7, d5, d7
  410960: eeb4 6bc7    	vcmpe.f64	d6, d7
  410964: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  410968: d535         	bpl	0x4109d6 <TrainingStage::doLesson(float)+0x66fe> @ imm = #0x6a
  41096a: ab07         	add	r3, sp, #0x1c
  41096c: 681b         	ldr	r3, [r3]
  41096e: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  410972: 2201         	movs	r2, #0x1
  410974: f883 211c    	strb.w	r2, [r3, #0x11c]
  410978: ab07         	add	r3, sp, #0x1c
  41097a: 681b         	ldr	r3, [r3]
  41097c: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  410980: 681b         	ldr	r3, [r3]
  410982: f503 730c    	add.w	r3, r3, #0x230
  410986: 681c         	ldr	r4, [r3]
  410988: ab07         	add	r3, sp, #0x1c
  41098a: 681b         	ldr	r3, [r3]
  41098c: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  410990: 461d         	mov	r5, r3
  410992: abc0         	add	r3, sp, #0x300
  410994: 4618         	mov	r0, r3
  410996: ed9f 0b50    	vldr	d0, [pc, #320]          @ 0x410ad8 <TrainingStage::doLesson(float)+0x6800>
  41099a: ed9f 1b51    	vldr	d1, [pc, #324]          @ 0x410ae0 <TrainingStage::doLesson(float)+0x6808>
  41099e: f7f7 fd99    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x84ce
  4109a2: abc0         	add	r3, sp, #0x300
  4109a4: 466a         	mov	r2, sp
  4109a6: f103 0108    	add.w	r1, r3, #0x8
  4109aa: c903         	ldm	r1, {r0, r1}
  4109ac: e882 0003    	stm.w	r2, {r0, r1}
  4109b0: cb0c         	ldm	r3, {r2, r3}
  4109b2: 4628         	mov	r0, r5
  4109b4: 47a0         	blx	r4
  4109b6: ab07         	add	r3, sp, #0x1c
  4109b8: 681b         	ldr	r3, [r3]
  4109ba: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  4109be: 681b         	ldr	r3, [r3]
  4109c0: f503 73f0    	add.w	r3, r3, #0x1e0
  4109c4: 681b         	ldr	r3, [r3]
  4109c6: aa07         	add	r2, sp, #0x1c
  4109c8: 6812         	ldr	r2, [r2]
  4109ca: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  4109ce: 4610         	mov	r0, r2
  4109d0: 2101         	movs	r1, #0x1
  4109d2: 4798         	blx	r3
  4109d4: e078         	b	0x410ac8 <TrainingStage::doLesson(float)+0x67f0> @ imm = #0xf0
  4109d6: ab07         	add	r3, sp, #0x1c
  4109d8: 681b         	ldr	r3, [r3]
  4109da: ed93 7a62    	vldr	s14, [r3, #392]
  4109de: eef0 7a08    	vmov.f32	s15, #3.000000e+00
  4109e2: eeb4 7ae7    	vcmpe.f32	s14, s15
  4109e6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  4109ea: dc01         	bgt	0x4109f0 <TrainingStage::doLesson(float)+0x6718> @ imm = #0x2
  4109ec: f001 ba92    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x1524
  4109f0: ab07         	add	r3, sp, #0x1c
  4109f2: 681b         	ldr	r3, [r3]
  4109f4: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  4109f8: 1c5a         	adds	r2, r3, #0x1
  4109fa: ab07         	add	r3, sp, #0x1c
  4109fc: 681b         	ldr	r3, [r3]
  4109fe: f8c3 2180    	str.w	r2, [r3, #0x180]
  410a02: ab07         	add	r3, sp, #0x1c
  410a04: 681b         	ldr	r3, [r3]
  410a06: f04f 0200    	mov.w	r2, #0x0
  410a0a: f8c3 2188    	str.w	r2, [r3, #0x188]
  410a0e: ab07         	add	r3, sp, #0x1c
  410a10: 681b         	ldr	r3, [r3]
  410a12: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  410a16: f50d 6380    	add.w	r3, sp, #0x400
  410a1a: 4618         	mov	r0, r3
  410a1c: f379 fcea    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3799d4
  410a20: f50d 6282    	add.w	r2, sp, #0x410
  410a24: f50d 6380    	add.w	r3, sp, #0x400
  410a28: 4610         	mov	r0, r2
  410a2a: 4a33         	ldr	r2, [pc, #0xcc]         @ 0x410af8 <TrainingStage::doLesson(float)+0x6820>
  410a2c: 447a         	add	r2, pc
  410a2e: 4611         	mov	r1, r2
  410a30: 461a         	mov	r2, r3
  410a32: f3a6 f815    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3a602a
  410a36: 2000         	movs	r0, #0x0
  410a38: 2100         	movs	r1, #0x0
  410a3a: 22ff         	movs	r2, #0xff
  410a3c: f7f7 fd0c    	bl	0x408458 <Tracer::checkCollision()+0x3cc> @ imm = #-0x85e8
  410a40: 4602         	mov	r2, r0
  410a42: ab2f         	add	r3, sp, #0xbc
  410a44: 4611         	mov	r1, r2
  410a46: 7019         	strb	r1, [r3]
  410a48: f3c2 2107    	ubfx	r1, r2, #0x8, #0x8
  410a4c: 7059         	strb	r1, [r3, #0x1]
  410a4e: f3c2 4207    	ubfx	r2, r2, #0x10, #0x8
  410a52: 709a         	strb	r2, [r3, #0x2]
  410a54: f50d 6282    	add.w	r2, sp, #0x410
  410a58: ab2f         	add	r3, sp, #0xbc
  410a5a: 4628         	mov	r0, r5
  410a5c: 4611         	mov	r1, r2
  410a5e: 681a         	ldr	r2, [r3]
  410a60: 2304         	movs	r3, #0x4
  410a62: f72c fc2d    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xd37a6
  410a66: f50d 6382    	add.w	r3, sp, #0x410
  410a6a: 4618         	mov	r0, r3
  410a6c: f3a4 ff52    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a4ea4
  410a70: f50d 6380    	add.w	r3, sp, #0x400
  410a74: 4618         	mov	r0, r3
  410a76: f379 fcc1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x379982
  410a7a: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x410aec <TrainingStage::doLesson(float)+0x6814>
  410a7c: 58e3         	ldr	r3, [r4, r3]
  410a7e: 681b         	ldr	r3, [r3]
  410a80: 4618         	mov	r0, r3
  410a82: 2156         	movs	r1, #0x56
  410a84: 2201         	movs	r2, #0x1
  410a86: f7e7 f95b    	bl	0x3f7d40 <Sound::playSoundWithVoice(int, int)> @ imm = #-0x18d4a
  410a8a: ab07         	add	r3, sp, #0x1c
  410a8c: 681b         	ldr	r3, [r3]
  410a8e: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  410a92: 681b         	ldr	r3, [r3]
  410a94: f503 730c    	add.w	r3, r3, #0x230
  410a98: 681c         	ldr	r4, [r3]
  410a9a: ab07         	add	r3, sp, #0x1c
  410a9c: 681b         	ldr	r3, [r3]
  410a9e: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  410aa2: 461d         	mov	r5, r3
  410aa4: abc4         	add	r3, sp, #0x310
  410aa6: 4618         	mov	r0, r3
  410aa8: ed9f 0b0b    	vldr	d0, [pc, #44]           @ 0x410ad8 <TrainingStage::doLesson(float)+0x6800>
  410aac: ed9f 1b0a    	vldr	d1, [pc, #40]           @ 0x410ad8 <TrainingStage::doLesson(float)+0x6800>
  410ab0: f7f7 fd10    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x85e0
  410ab4: abc4         	add	r3, sp, #0x310
  410ab6: 466a         	mov	r2, sp
  410ab8: f103 0108    	add.w	r1, r3, #0x8
  410abc: c903         	ldm	r1, {r0, r1}
  410abe: e882 0003    	stm.w	r2, {r0, r1}
  410ac2: cb0c         	ldm	r3, {r2, r3}
  410ac4: 4628         	mov	r0, r5
  410ac6: 47a0         	blx	r4
  410ac8: f001 ba24    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x1448
  410acc: f3af 8000    	nop.w
  410ad0: 0000         	movs	r0, r0
  410ad2: 0000         	movs	r0, r0
  410ad4: 4000         	ands	r0, r0
  410ad6: 405f         	eors	r7, r3
  410ae0: 999a         	ldr	r1, [sp, #0x268]
  410ae2: 9999         	ldr	r1, [sp, #0x264]
  410ae4: 9999         	ldr	r1, [sp, #0x264]
  410ae6: 3fd9         	subs	r7, #0xd9
  410ae8: a758         	adr	r7, #352 <TrainingStage::doLesson(float)+0x686c>
  410aea: 003c         	movs	r4, r7
  410aec: d730         	bvc	0x410b50 <TrainingStage::doLesson(float)+0x6878> @ imm = #0x60
  410aee: ffff d784    	<unknown>
  410af2: ffff a63e    	vqshlu.s32	d26, d30, #0x1f
  410af6: 003c         	movs	r4, r7
  410af8: a48c         	adr	r4, #560 <TrainingStage::doLesson(float)+0x68b0>
  410afa: 003c         	movs	r4, r7
  410afc: 4b98         	ldr	r3, [pc, #0x260]        @ 0x410d60 <TrainingStage::doLesson(float)+0x6a88>
  410afe: 58e3         	ldr	r3, [r4, r3]
  410b00: 681b         	ldr	r3, [r3]
  410b02: 681b         	ldr	r3, [r3]
  410b04: f503 7329    	add.w	r3, r3, #0x2a4
  410b08: 681b         	ldr	r3, [r3]
  410b0a: 4a95         	ldr	r2, [pc, #0x254]        @ 0x410d60 <TrainingStage::doLesson(float)+0x6a88>
  410b0c: 58a2         	ldr	r2, [r4, r2]
  410b0e: 6812         	ldr	r2, [r2]
  410b10: 4610         	mov	r0, r2
  410b12: f04f 0100    	mov.w	r1, #0x0
  410b16: 4798         	blx	r3
  410b18: ab07         	add	r3, sp, #0x1c
  410b1a: 681b         	ldr	r3, [r3]
  410b1c: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  410b20: 681b         	ldr	r3, [r3]
  410b22: f503 730e    	add.w	r3, r3, #0x238
  410b26: 681b         	ldr	r3, [r3]
  410b28: aa07         	add	r2, sp, #0x1c
  410b2a: 6812         	ldr	r2, [r2]
  410b2c: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  410b30: 4610         	mov	r0, r2
  410b32: f04f 0100    	mov.w	r1, #0x0
  410b36: f2c4 310c    	movt	r1, #0x430c
  410b3a: 4798         	blx	r3
  410b3c: ab07         	add	r3, sp, #0x1c
  410b3e: 681b         	ldr	r3, [r3]
  410b40: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  410b44: 681b         	ldr	r3, [r3]
  410b46: f503 73ec    	add.w	r3, r3, #0x1d8
  410b4a: 681b         	ldr	r3, [r3]
  410b4c: aa07         	add	r2, sp, #0x1c
  410b4e: 6812         	ldr	r2, [r2]
  410b50: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  410b54: 4610         	mov	r0, r2
  410b56: 4798         	blx	r3
  410b58: 4603         	mov	r3, r0
  410b5a: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  410b5e: 681a         	ldr	r2, [r3]
  410b60: 3298         	adds	r2, #0x98
  410b62: 6812         	ldr	r2, [r2]
  410b64: 4618         	mov	r0, r3
  410b66: f04f 0100    	mov.w	r1, #0x0
  410b6a: 4790         	blx	r2
  410b6c: ab07         	add	r3, sp, #0x1c
  410b6e: 681b         	ldr	r3, [r3]
  410b70: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  410b74: 681b         	ldr	r3, [r3]
  410b76: f503 7329    	add.w	r3, r3, #0x2a4
  410b7a: 681b         	ldr	r3, [r3]
  410b7c: aa07         	add	r2, sp, #0x1c
  410b7e: 6812         	ldr	r2, [r2]
  410b80: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  410b84: 4610         	mov	r0, r2
  410b86: f04f 0100    	mov.w	r1, #0x0
  410b8a: f2c4 21c8    	movt	r1, #0x42c8
  410b8e: 4798         	blx	r3
  410b90: ab07         	add	r3, sp, #0x1c
  410b92: 681b         	ldr	r3, [r3]
  410b94: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  410b98: 681b         	ldr	r3, [r3]
  410b9a: f503 730c    	add.w	r3, r3, #0x230
  410b9e: 681d         	ldr	r5, [r3]
  410ba0: ab07         	add	r3, sp, #0x1c
  410ba2: 681b         	ldr	r3, [r3]
  410ba4: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  410ba8: 461e         	mov	r6, r3
  410baa: abc8         	add	r3, sp, #0x320
  410bac: 4618         	mov	r0, r3
  410bae: ed9f 0b6a    	vldr	d0, [pc, #424]          @ 0x410d58 <TrainingStage::doLesson(float)+0x6a80>
  410bb2: ed9f 1b69    	vldr	d1, [pc, #420]          @ 0x410d58 <TrainingStage::doLesson(float)+0x6a80>
  410bb6: f7f7 fc8d    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x86e6
  410bba: abc8         	add	r3, sp, #0x320
  410bbc: 466a         	mov	r2, sp
  410bbe: f103 0108    	add.w	r1, r3, #0x8
  410bc2: c903         	ldm	r1, {r0, r1}
  410bc4: e882 0003    	stm.w	r2, {r0, r1}
  410bc8: cb0c         	ldm	r3, {r2, r3}
  410bca: 4630         	mov	r0, r6
  410bcc: 47a8         	blx	r5
  410bce: ab07         	add	r3, sp, #0x1c
  410bd0: 681b         	ldr	r3, [r3]
  410bd2: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  410bd6: 2201         	movs	r2, #0x1
  410bd8: f883 211c    	strb.w	r2, [r3, #0x11c]
  410bdc: ab07         	add	r3, sp, #0x1c
  410bde: 681b         	ldr	r3, [r3]
  410be0: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  410be4: 681b         	ldr	r3, [r3]
  410be6: f503 73f0    	add.w	r3, r3, #0x1e0
  410bea: 681b         	ldr	r3, [r3]
  410bec: aa07         	add	r2, sp, #0x1c
  410bee: 6812         	ldr	r2, [r2]
  410bf0: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  410bf4: 4610         	mov	r0, r2
  410bf6: 2101         	movs	r1, #0x1
  410bf8: 4798         	blx	r3
  410bfa: ab07         	add	r3, sp, #0x1c
  410bfc: 681b         	ldr	r3, [r3]
  410bfe: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  410c02: f8d3 2138    	ldr.w	r2, [r3, #0x138]
  410c06: 4b57         	ldr	r3, [pc, #0x15c]        @ 0x410d64 <TrainingStage::doLesson(float)+0x6a8c>
  410c08: 447b         	add	r3, pc
  410c0a: ed93 6b00    	vldr	d6, [r3]
  410c0e: ed93 7b02    	vldr	d7, [r3, #8]
  410c12: 4610         	mov	r0, r2
  410c14: eeb0 0b46    	vmov.f64	d0, d6
  410c18: eeb0 1b47    	vmov.f64	d1, d7
  410c1c: f7f7 fd2a    	bl	0x408674 <Tracer::checkCollision()+0x5e8> @ imm = #-0x85ac
  410c20: ab07         	add	r3, sp, #0x1c
  410c22: 681b         	ldr	r3, [r3]
  410c24: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  410c28: f8d3 2138    	ldr.w	r2, [r3, #0x138]
  410c2c: 4b4e         	ldr	r3, [pc, #0x138]        @ 0x410d68 <TrainingStage::doLesson(float)+0x6a90>
  410c2e: 447b         	add	r3, pc
  410c30: ed93 6b00    	vldr	d6, [r3]
  410c34: ed93 7b02    	vldr	d7, [r3, #8]
  410c38: 4610         	mov	r0, r2
  410c3a: eeb0 0b46    	vmov.f64	d0, d6
  410c3e: eeb0 1b47    	vmov.f64	d1, d7
  410c42: f7f7 fd01    	bl	0x408648 <Tracer::checkCollision()+0x5bc> @ imm = #-0x85fe
  410c46: ab07         	add	r3, sp, #0x1c
  410c48: 681b         	ldr	r3, [r3]
  410c4a: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  410c4e: f8d3 6138    	ldr.w	r6, [r3, #0x138]
  410c52: ab07         	add	r3, sp, #0x1c
  410c54: 681b         	ldr	r3, [r3]
  410c56: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  410c5a: f8d3 5138    	ldr.w	r5, [r3, #0x138]
  410c5e: ab07         	add	r3, sp, #0x1c
  410c60: 681b         	ldr	r3, [r3]
  410c62: ed93 7a62    	vldr	s14, [r3, #392]
  410c66: eef0 7a08    	vmov.f32	s15, #3.000000e+00
  410c6a: ee67 7a27    	vmul.f32	s15, s14, s15
  410c6e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  410c72: ec51 0b17    	vmov	r0, r1, d7
  410c76: f6c5 e948    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x13ad70
  410c7a: 4602         	mov	r2, r0
  410c7c: 460b         	mov	r3, r1
  410c7e: a9cc         	add	r1, sp, #0x330
  410c80: 4608         	mov	r0, r1
  410c82: ed9f 0b35    	vldr	d0, [pc, #212]          @ 0x410d58 <TrainingStage::doLesson(float)+0x6a80>
  410c86: ec43 2b11    	vmov	d1, r2, r3
  410c8a: f7f7 fc23    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x87ba
  410c8e: ab02         	add	r3, sp, #0x8
  410c90: ed95 4b0a    	vldr	d4, [r5, #40]
  410c94: ed95 5b0c    	vldr	d5, [r5, #48]
  410c98: ed9d 6bcc    	vldr	d6, [sp, #816]
  410c9c: ed9d 7bce    	vldr	d7, [sp, #824]
  410ca0: 4618         	mov	r0, r3
  410ca2: eeb0 0b44    	vmov.f64	d0, d4
  410ca6: eeb0 1b45    	vmov.f64	d1, d5
  410caa: eeb0 2b46    	vmov.f64	d2, d6
  410cae: eeb0 3b47    	vmov.f64	d3, d7
  410cb2: f7f7 fc23    	bl	0x4084fc <Tracer::checkCollision()+0x470> @ imm = #-0x87ba
  410cb6: ab02         	add	r3, sp, #0x8
  410cb8: f106 0528    	add.w	r5, r6, #0x28
  410cbc: cb0f         	ldm	r3, {r0, r1, r2, r3}
  410cbe: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  410cc2: ab07         	add	r3, sp, #0x1c
  410cc4: 681b         	ldr	r3, [r3]
  410cc6: ed93 7a62    	vldr	s14, [r3, #392]
  410cca: eef0 7a08    	vmov.f32	s15, #3.000000e+00
  410cce: eeb4 7ae7    	vcmpe.f32	s14, s15
  410cd2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  410cd6: d505         	bpl	0x410ce4 <TrainingStage::doLesson(float)+0x6a0c> @ imm = #0xa
  410cd8: aa07         	add	r2, sp, #0x1c
  410cda: ab06         	add	r3, sp, #0x18
  410cdc: 6810         	ldr	r0, [r2]
  410cde: 6819         	ldr	r1, [r3]
  410ce0: f7f9 f8a6    	bl	0x409e30 <TrainingStage::headChatter(float)> @ imm = #-0x6eb4
  410ce4: ab07         	add	r3, sp, #0x1c
  410ce6: 681b         	ldr	r3, [r3]
  410ce8: ed93 7a62    	vldr	s14, [r3, #392]
  410cec: eef1 7a00    	vmov.f32	s15, #4.000000e+00
  410cf0: eeb4 7ae7    	vcmpe.f32	s14, s15
  410cf4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  410cf8: dc01         	bgt	0x410cfe <TrainingStage::doLesson(float)+0x6a26> @ imm = #0x2
  410cfa: f001 b90b    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x1216
  410cfe: 4b18         	ldr	r3, [pc, #0x60]         @ 0x410d60 <TrainingStage::doLesson(float)+0x6a88>
  410d00: 58e3         	ldr	r3, [r4, r3]
  410d02: 681b         	ldr	r3, [r3]
  410d04: 681b         	ldr	r3, [r3]
  410d06: f503 7329    	add.w	r3, r3, #0x2a4
  410d0a: 681b         	ldr	r3, [r3]
  410d0c: 4a14         	ldr	r2, [pc, #0x50]         @ 0x410d60 <TrainingStage::doLesson(float)+0x6a88>
  410d0e: 58a2         	ldr	r2, [r4, r2]
  410d10: 6812         	ldr	r2, [r2]
  410d12: 4610         	mov	r0, r2
  410d14: f04f 0100    	mov.w	r1, #0x0
  410d18: f2c4 21c8    	movt	r1, #0x42c8
  410d1c: 4798         	blx	r3
  410d1e: ab07         	add	r3, sp, #0x1c
  410d20: 681b         	ldr	r3, [r3]
  410d22: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  410d26: 1c5a         	adds	r2, r3, #0x1
  410d28: ab07         	add	r3, sp, #0x1c
  410d2a: 681b         	ldr	r3, [r3]
  410d2c: f8c3 2180    	str.w	r2, [r3, #0x180]
  410d30: ab07         	add	r3, sp, #0x1c
  410d32: 681b         	ldr	r3, [r3]
  410d34: f04f 0200    	mov.w	r2, #0x0
  410d38: f8c3 2188    	str.w	r2, [r3, #0x188]
  410d3c: ab07         	add	r3, sp, #0x1c
  410d3e: 681b         	ldr	r3, [r3]
  410d40: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  410d44: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  410d48: 4618         	mov	r0, r3
  410d4a: 2100         	movs	r1, #0x0
  410d4c: f73d fd92    	bl	0x34e874 <Joypad::disableMovement(bool)> @ imm = #-0xc24dc
  410d50: f001 b8e0    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x11c0
  410d54: f3af 8000    	nop.w
  410d60: d784         	bvc	0x410c6c <TrainingStage::doLesson(float)+0x6994> @ imm = #-0xf8
  410d62: ffff a35c    	vrsra.u32	q13, q6, #0x1
  410d66: 003c         	movs	r4, r7
  410d68: a336         	adr	r3, #216 <TrainingStage::doLesson(float)+0x6aca>
  410d6a: 003c         	movs	r4, r7
  410d6c: ab07         	add	r3, sp, #0x1c
  410d6e: 681b         	ldr	r3, [r3]
  410d70: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  410d74: 681b         	ldr	r3, [r3]
  410d76: f503 730e    	add.w	r3, r3, #0x238
  410d7a: 681b         	ldr	r3, [r3]
  410d7c: aa07         	add	r2, sp, #0x1c
  410d7e: 6812         	ldr	r2, [r2]
  410d80: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  410d84: 4610         	mov	r0, r2
  410d86: f04f 0100    	mov.w	r1, #0x0
  410d8a: f2c4 310c    	movt	r1, #0x430c
  410d8e: 4798         	blx	r3
  410d90: ab07         	add	r3, sp, #0x1c
  410d92: 681b         	ldr	r3, [r3]
  410d94: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  410d98: 681b         	ldr	r3, [r3]
  410d9a: f503 73ec    	add.w	r3, r3, #0x1d8
  410d9e: 681b         	ldr	r3, [r3]
  410da0: aa07         	add	r2, sp, #0x1c
  410da2: 6812         	ldr	r2, [r2]
  410da4: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  410da8: 4610         	mov	r0, r2
  410daa: 4798         	blx	r3
  410dac: 4603         	mov	r3, r0
  410dae: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  410db2: 681a         	ldr	r2, [r3]
  410db4: 3298         	adds	r2, #0x98
  410db6: 6812         	ldr	r2, [r2]
  410db8: 4618         	mov	r0, r3
  410dba: f04f 0100    	mov.w	r1, #0x0
  410dbe: 4790         	blx	r2
  410dc0: ab07         	add	r3, sp, #0x1c
  410dc2: 681b         	ldr	r3, [r3]
  410dc4: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  410dc8: 681b         	ldr	r3, [r3]
  410dca: f503 7329    	add.w	r3, r3, #0x2a4
  410dce: 681b         	ldr	r3, [r3]
  410dd0: aa07         	add	r2, sp, #0x1c
  410dd2: 6812         	ldr	r2, [r2]
  410dd4: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  410dd8: 4610         	mov	r0, r2
  410dda: f04f 0100    	mov.w	r1, #0x0
  410dde: f2c4 21c8    	movt	r1, #0x42c8
  410de2: 4798         	blx	r3
  410de4: ab07         	add	r3, sp, #0x1c
  410de6: 681b         	ldr	r3, [r3]
  410de8: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  410dec: 681b         	ldr	r3, [r3]
  410dee: f503 730c    	add.w	r3, r3, #0x230
  410df2: 681d         	ldr	r5, [r3]
  410df4: ab07         	add	r3, sp, #0x1c
  410df6: 681b         	ldr	r3, [r3]
  410df8: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  410dfc: 461e         	mov	r6, r3
  410dfe: abd0         	add	r3, sp, #0x340
  410e00: 4618         	mov	r0, r3
  410e02: ed9f 0b43    	vldr	d0, [pc, #268]          @ 0x410f10 <TrainingStage::doLesson(float)+0x6c38>
  410e06: ed9f 1b42    	vldr	d1, [pc, #264]          @ 0x410f10 <TrainingStage::doLesson(float)+0x6c38>
  410e0a: f7f7 fb63    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x893a
  410e0e: 466b         	mov	r3, sp
  410e10: aad2         	add	r2, sp, #0x348
  410e12: e892 0003    	ldm.w	r2, {r0, r1}
  410e16: e883 0003    	stm.w	r3, {r0, r1}
  410e1a: abd0         	add	r3, sp, #0x340
  410e1c: cb0c         	ldm	r3, {r2, r3}
  410e1e: 4630         	mov	r0, r6
  410e20: 47a8         	blx	r5
  410e22: ab07         	add	r3, sp, #0x1c
  410e24: 681b         	ldr	r3, [r3]
  410e26: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  410e2a: 2201         	movs	r2, #0x1
  410e2c: f883 211c    	strb.w	r2, [r3, #0x11c]
  410e30: ab07         	add	r3, sp, #0x1c
  410e32: 681b         	ldr	r3, [r3]
  410e34: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  410e38: 681b         	ldr	r3, [r3]
  410e3a: f503 73f0    	add.w	r3, r3, #0x1e0
  410e3e: 681b         	ldr	r3, [r3]
  410e40: aa07         	add	r2, sp, #0x1c
  410e42: 6812         	ldr	r2, [r2]
  410e44: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  410e48: 4610         	mov	r0, r2
  410e4a: 2101         	movs	r1, #0x1
  410e4c: 4798         	blx	r3
  410e4e: 4b34         	ldr	r3, [pc, #0xd0]         @ 0x410f20 <TrainingStage::doLesson(float)+0x6c48>
  410e50: 58e3         	ldr	r3, [r4, r3]
  410e52: 681b         	ldr	r3, [r3]
  410e54: f8d3 2138    	ldr.w	r2, [r3, #0x138]
  410e58: ab07         	add	r3, sp, #0x1c
  410e5a: 681b         	ldr	r3, [r3]
  410e5c: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  410e60: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  410e64: f50d 6182    	add.w	r1, sp, #0x410
  410e68: ed92 4b0a    	vldr	d4, [r2, #40]
  410e6c: ed92 5b0c    	vldr	d5, [r2, #48]
  410e70: ed93 6b0a    	vldr	d6, [r3, #40]
  410e74: ed93 7b0c    	vldr	d7, [r3, #48]
  410e78: 4608         	mov	r0, r1
  410e7a: eeb0 0b44    	vmov.f64	d0, d4
  410e7e: eeb0 1b45    	vmov.f64	d1, d5
  410e82: eeb0 2b46    	vmov.f64	d2, d6
  410e86: eeb0 3b47    	vmov.f64	d3, d7
  410e8a: f7f7 fb63    	bl	0x408554 <Tracer::checkCollision()+0x4c8> @ imm = #-0x893a
  410e8e: f50d 6382    	add.w	r3, sp, #0x410
  410e92: cb0f         	ldm	r3, {r0, r1, r2, r3}
  410e94: f2c6 f910    	bl	0x6d70b8 <cpvlength>    @ imm = #0x2c6220
  410e98: ec41 0b16    	vmov	d6, r0, r1
  410e9c: ed9f 7b1e    	vldr	d7, [pc, #120]          @ 0x410f18 <TrainingStage::doLesson(float)+0x6c40>
  410ea0: eeb4 6bc7    	vcmpe.f64	d6, d7
  410ea4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  410ea8: bfd4         	ite	le
  410eaa: 2300         	movle	r3, #0x0
  410eac: 2301         	movgt	r3, #0x1
  410eae: b2db         	uxtb	r3, r3
  410eb0: 2b00         	cmp	r3, #0x0
  410eb2: d037         	beq	0x410f24 <TrainingStage::doLesson(float)+0x6c4c> @ imm = #0x6e
  410eb4: f50d 6382    	add.w	r3, sp, #0x410
  410eb8: cb0f         	ldm	r3, {r0, r1, r2, r3}
  410eba: f7f7 fc21    	bl	0x408700 <Tracer::checkCollision()+0x674> @ imm = #-0x87be
  410ebe: ab07         	add	r3, sp, #0x1c
  410ec0: 681b         	ldr	r3, [r3]
  410ec2: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  410ec6: 681b         	ldr	r3, [r3]
  410ec8: f503 730c    	add.w	r3, r3, #0x230
  410ecc: 681d         	ldr	r5, [r3]
  410ece: ab07         	add	r3, sp, #0x1c
  410ed0: 681b         	ldr	r3, [r3]
  410ed2: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  410ed6: 461e         	mov	r6, r3
  410ed8: abd4         	add	r3, sp, #0x350
  410eda: f50d 6182    	add.w	r1, sp, #0x410
  410ede: ed91 6b00    	vldr	d6, [r1]
  410ee2: f50d 6283    	add.w	r2, sp, #0x418
  410ee6: ed92 7b00    	vldr	d7, [r2]
  410eea: 4618         	mov	r0, r3
  410eec: eeb0 0b46    	vmov.f64	d0, d6
  410ef0: eeb0 1b47    	vmov.f64	d1, d7
  410ef4: f7f7 fb80    	bl	0x4085f8 <Tracer::checkCollision()+0x56c> @ imm = #-0x8900
  410ef8: 466b         	mov	r3, sp
  410efa: aad6         	add	r2, sp, #0x358
  410efc: e892 0003    	ldm.w	r2, {r0, r1}
  410f00: e883 0003    	stm.w	r3, {r0, r1}
  410f04: abd4         	add	r3, sp, #0x350
  410f06: cb0c         	ldm	r3, {r2, r3}
  410f08: 4630         	mov	r0, r6
  410f0a: 47a8         	blx	r5
  410f0c: e092         	b	0x411034 <TrainingStage::doLesson(float)+0x6d5c> @ imm = #0x124
  410f0e: bf00         	nop
  410f1c: 0000         	movs	r0, r0
  410f1e: 4059         	eors	r1, r3
  410f20: d784         	bvc	0x410e2c <TrainingStage::doLesson(float)+0x6b54> @ imm = #-0xf8
  410f22: ffff ab07    	vtbl.8	d26, {d15, d16, d17, d18}, d7
  410f26: 681b         	ldr	r3, [r3]
  410f28: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  410f2c: f8d3 6138    	ldr.w	r6, [r3, #0x138]
  410f30: ab07         	add	r3, sp, #0x1c
  410f32: 681b         	ldr	r3, [r3]
  410f34: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  410f38: f8d3 5138    	ldr.w	r5, [r3, #0x138]
  410f3c: ab07         	add	r3, sp, #0x1c
  410f3e: 681b         	ldr	r3, [r3]
  410f40: ed93 7a62    	vldr	s14, [r3, #392]
  410f44: eef0 7a08    	vmov.f32	s15, #3.000000e+00
  410f48: ee67 7a27    	vmul.f32	s15, s14, s15
  410f4c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  410f50: ec51 0b17    	vmov	r0, r1, d7
  410f54: f6c4 efd8    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x13b050
  410f58: 4602         	mov	r2, r0
  410f5a: 460b         	mov	r3, r1
  410f5c: a9d8         	add	r1, sp, #0x360
  410f5e: 4608         	mov	r0, r1
  410f60: ed9f 0b95    	vldr	d0, [pc, #596]          @ 0x4111b8 <TrainingStage::doLesson(float)+0x6ee0>
  410f64: ec43 2b11    	vmov	d1, r2, r3
  410f68: f7f7 fab4    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x8a98
  410f6c: ab02         	add	r3, sp, #0x8
  410f6e: ed95 4b0a    	vldr	d4, [r5, #40]
  410f72: ed95 5b0c    	vldr	d5, [r5, #48]
  410f76: ed9d 6bd8    	vldr	d6, [sp, #864]
  410f7a: ed9d 7bda    	vldr	d7, [sp, #872]
  410f7e: 4618         	mov	r0, r3
  410f80: eeb0 0b44    	vmov.f64	d0, d4
  410f84: eeb0 1b45    	vmov.f64	d1, d5
  410f88: eeb0 2b46    	vmov.f64	d2, d6
  410f8c: eeb0 3b47    	vmov.f64	d3, d7
  410f90: f7f7 fab4    	bl	0x4084fc <Tracer::checkCollision()+0x470> @ imm = #-0x8a98
  410f94: ab02         	add	r3, sp, #0x8
  410f96: f106 0528    	add.w	r5, r6, #0x28
  410f9a: cb0f         	ldm	r3, {r0, r1, r2, r3}
  410f9c: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  410fa0: ab07         	add	r3, sp, #0x1c
  410fa2: 681b         	ldr	r3, [r3]
  410fa4: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  410fa8: f8d3 5138    	ldr.w	r5, [r3, #0x138]
  410fac: ab07         	add	r3, sp, #0x1c
  410fae: 681b         	ldr	r3, [r3]
  410fb0: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  410fb4: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  410fb8: aadc         	add	r2, sp, #0x370
  410fba: ed93 6b12    	vldr	d6, [r3, #72]
  410fbe: ed93 7b14    	vldr	d7, [r3, #80]
  410fc2: 4610         	mov	r0, r2
  410fc4: eeb0 0b46    	vmov.f64	d0, d6
  410fc8: eeb0 1b47    	vmov.f64	d1, d7
  410fcc: ed9f 2b7c    	vldr	d2, [pc, #496]          @ 0x4111c0 <TrainingStage::doLesson(float)+0x6ee8>
  410fd0: f7f7 faec    	bl	0x4085ac <Tracer::checkCollision()+0x520> @ imm = #-0x8a28
  410fd4: ed9d 6bdc    	vldr	d6, [sp, #880]
  410fd8: ed9d 7bde    	vldr	d7, [sp, #888]
  410fdc: 4628         	mov	r0, r5
  410fde: eeb0 0b46    	vmov.f64	d0, d6
  410fe2: eeb0 1b47    	vmov.f64	d1, d7
  410fe6: f7f7 fb45    	bl	0x408674 <Tracer::checkCollision()+0x5e8> @ imm = #-0x8976
  410fea: ab07         	add	r3, sp, #0x1c
  410fec: 681b         	ldr	r3, [r3]
  410fee: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  410ff2: f8d3 5138    	ldr.w	r5, [r3, #0x138]
  410ff6: ab07         	add	r3, sp, #0x1c
  410ff8: 681b         	ldr	r3, [r3]
  410ffa: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  410ffe: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  411002: aae0         	add	r2, sp, #0x380
  411004: ed93 6b0e    	vldr	d6, [r3, #56]
  411008: ed93 7b10    	vldr	d7, [r3, #64]
  41100c: 4610         	mov	r0, r2
  41100e: eeb0 0b46    	vmov.f64	d0, d6
  411012: eeb0 1b47    	vmov.f64	d1, d7
  411016: ed9f 2b6a    	vldr	d2, [pc, #424]          @ 0x4111c0 <TrainingStage::doLesson(float)+0x6ee8>
  41101a: f7f7 fac7    	bl	0x4085ac <Tracer::checkCollision()+0x520> @ imm = #-0x8a72
  41101e: ed9d 6be0    	vldr	d6, [sp, #896]
  411022: ed9d 7be2    	vldr	d7, [sp, #904]
  411026: 4628         	mov	r0, r5
  411028: eeb0 0b46    	vmov.f64	d0, d6
  41102c: eeb0 1b47    	vmov.f64	d1, d7
  411030: f7f7 fb0a    	bl	0x408648 <Tracer::checkCollision()+0x5bc> @ imm = #-0x89ec
  411034: ab07         	add	r3, sp, #0x1c
  411036: 681b         	ldr	r3, [r3]
  411038: f8d3 3170    	ldr.w	r3, [r3, #0x170]
  41103c: 681b         	ldr	r3, [r3]
  41103e: 3390         	adds	r3, #0x90
  411040: 681b         	ldr	r3, [r3]
  411042: aa07         	add	r2, sp, #0x1c
  411044: 6812         	ldr	r2, [r2]
  411046: f8d2 2170    	ldr.w	r2, [r2, #0x170]
  41104a: 4610         	mov	r0, r2
  41104c: 2100         	movs	r1, #0x0
  41104e: 4798         	blx	r3
  411050: 4b5f         	ldr	r3, [pc, #0x17c]        @ 0x4111d0 <TrainingStage::doLesson(float)+0x6ef8>
  411052: 58e3         	ldr	r3, [r4, r3]
  411054: 681b         	ldr	r3, [r3]
  411056: 681b         	ldr	r3, [r3]
  411058: f503 73d0    	add.w	r3, r3, #0x1a0
  41105c: 681b         	ldr	r3, [r3]
  41105e: 4a5c         	ldr	r2, [pc, #0x170]        @ 0x4111d0 <TrainingStage::doLesson(float)+0x6ef8>
  411060: 58a2         	ldr	r2, [r4, r2]
  411062: 6812         	ldr	r2, [r2]
  411064: 4610         	mov	r0, r2
  411066: 4798         	blx	r3
  411068: 4603         	mov	r3, r0
  41106a: 2b00         	cmp	r3, #0x0
  41106c: d073         	beq	0x411156 <TrainingStage::doLesson(float)+0x6e7e> @ imm = #0xe6
  41106e: ab07         	add	r3, sp, #0x1c
  411070: 681b         	ldr	r3, [r3]
  411072: f8d3 3170    	ldr.w	r3, [r3, #0x170]
  411076: 681b         	ldr	r3, [r3]
  411078: 3390         	adds	r3, #0x90
  41107a: 681b         	ldr	r3, [r3]
  41107c: aa07         	add	r2, sp, #0x1c
  41107e: 6812         	ldr	r2, [r2]
  411080: f8d2 2170    	ldr.w	r2, [r2, #0x170]
  411084: 4610         	mov	r0, r2
  411086: 2101         	movs	r1, #0x1
  411088: 4798         	blx	r3
  41108a: ab07         	add	r3, sp, #0x1c
  41108c: 681b         	ldr	r3, [r3]
  41108e: f8d3 3170    	ldr.w	r3, [r3, #0x170]
  411092: 681b         	ldr	r3, [r3]
  411094: 334c         	adds	r3, #0x4c
  411096: 681d         	ldr	r5, [r3]
  411098: ab07         	add	r3, sp, #0x1c
  41109a: 681b         	ldr	r3, [r3]
  41109c: f8d3 6170    	ldr.w	r6, [r3, #0x170]
  4110a0: 4b4b         	ldr	r3, [pc, #0x12c]        @ 0x4111d0 <TrainingStage::doLesson(float)+0x6ef8>
  4110a2: 58e3         	ldr	r3, [r4, r3]
  4110a4: 681b         	ldr	r3, [r3]
  4110a6: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  4110aa: ed93 7b0a    	vldr	d7, [r3, #40]
  4110ae: eef7 6bc7    	vcvt.f32.f64	s13, d7
  4110b2: 4b47         	ldr	r3, [pc, #0x11c]        @ 0x4111d0 <TrainingStage::doLesson(float)+0x6ef8>
  4110b4: 58e3         	ldr	r3, [r4, r3]
  4110b6: 681b         	ldr	r3, [r3]
  4110b8: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  4110bc: ed93 7b0c    	vldr	d7, [r3, #48]
  4110c0: eef7 7bc7    	vcvt.f32.f64	s15, d7
  4110c4: abf8         	add	r3, sp, #0x3e0
  4110c6: 4618         	mov	r0, r3
  4110c8: ee16 1a90    	vmov	r1, s13
  4110cc: ee17 2a90    	vmov	r2, s15
  4110d0: f181 fe0e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x181c1c
  4110d4: ab07         	add	r3, sp, #0x1c
  4110d6: 681b         	ldr	r3, [r3]
  4110d8: ed93 7a62    	vldr	s14, [r3, #392]
  4110dc: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  4110e0: ee67 7a27    	vmul.f32	s15, s14, s15
  4110e4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  4110e8: ec51 0b17    	vmov	r0, r1, d7
  4110ec: f6c4 ef0c    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x13b1e8
  4110f0: ec41 0b16    	vmov	d6, r0, r1
  4110f4: eeb2 7b04    	vmov.f64	d7, #1.000000e+01
  4110f8: ee26 6b07    	vmul.f64	d6, d6, d7
  4110fc: ed9f 7b32    	vldr	d7, [pc, #200]          @ 0x4111c8 <TrainingStage::doLesson(float)+0x6ef0>
  411100: ee36 7b07    	vadd.f64	d7, d6, d7
  411104: eef7 7bc7    	vcvt.f32.f64	s15, d7
  411108: abfc         	add	r3, sp, #0x3f0
  41110a: 4618         	mov	r0, r3
  41110c: f04f 0100    	mov.w	r1, #0x0
  411110: ee17 2a90    	vmov	r2, s15
  411114: f181 fdec    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x181bd8
  411118: f50d 6180    	add.w	r1, sp, #0x400
  41111c: aaf8         	add	r2, sp, #0x3e0
  41111e: abfc         	add	r3, sp, #0x3f0
  411120: 4608         	mov	r0, r1
  411122: 4611         	mov	r1, r2
  411124: 461a         	mov	r2, r3
  411126: f7f7 f9c5    	bl	0x4084b4 <Tracer::checkCollision()+0x428> @ imm = #-0x8c76
  41112a: f50d 6380    	add.w	r3, sp, #0x400
  41112e: 4630         	mov	r0, r6
  411130: 4619         	mov	r1, r3
  411132: 47a8         	blx	r5
  411134: ab07         	add	r3, sp, #0x1c
  411136: 681b         	ldr	r3, [r3]
  411138: f8d3 3170    	ldr.w	r3, [r3, #0x170]
  41113c: 681b         	ldr	r3, [r3]
  41113e: 3398         	adds	r3, #0x98
  411140: 681b         	ldr	r3, [r3]
  411142: aa07         	add	r2, sp, #0x1c
  411144: 6812         	ldr	r2, [r2]
  411146: f8d2 2170    	ldr.w	r2, [r2, #0x170]
  41114a: 4610         	mov	r0, r2
  41114c: f04f 0100    	mov.w	r1, #0x0
  411150: f2cc 21b4    	movt	r1, #0xc2b4
  411154: 4798         	blx	r3
  411156: ab07         	add	r3, sp, #0x1c
  411158: 681b         	ldr	r3, [r3]
  41115a: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  41115e: 681b         	ldr	r3, [r3]
  411160: 3390         	adds	r3, #0x90
  411162: 681b         	ldr	r3, [r3]
  411164: aa07         	add	r2, sp, #0x1c
  411166: 6812         	ldr	r2, [r2]
  411168: f8d2 2174    	ldr.w	r2, [r2, #0x174]
  41116c: 4610         	mov	r0, r2
  41116e: 2100         	movs	r1, #0x0
  411170: 4798         	blx	r3
  411172: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x4111d0 <TrainingStage::doLesson(float)+0x6ef8>
  411174: 58e3         	ldr	r3, [r4, r3]
  411176: 681b         	ldr	r3, [r3]
  411178: 681b         	ldr	r3, [r3]
  41117a: f503 7328    	add.w	r3, r3, #0x2a0
  41117e: 681b         	ldr	r3, [r3]
  411180: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x4111d0 <TrainingStage::doLesson(float)+0x6ef8>
  411182: 58a2         	ldr	r2, [r4, r2]
  411184: 6812         	ldr	r2, [r2]
  411186: 4610         	mov	r0, r2
  411188: 4798         	blx	r3
  41118a: ee07 0a10    	vmov	s14, r0
  41118e: eef3 7a09    	vmov.f32	s15, #2.500000e+01
  411192: eeb4 7ae7    	vcmpe.f32	s14, s15
  411196: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  41119a: d40a         	bmi	0x4111b2 <TrainingStage::doLesson(float)+0x6eda> @ imm = #0x14
  41119c: ab07         	add	r3, sp, #0x1c
  41119e: 681b         	ldr	r3, [r3]
  4111a0: ed93 7a62    	vldr	s14, [r3, #392]
  4111a4: eef3 7a09    	vmov.f32	s15, #2.500000e+01
  4111a8: eeb4 7ae7    	vcmpe.f32	s14, s15
  4111ac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  4111b0: dd10         	ble	0x4111d4 <TrainingStage::doLesson(float)+0x6efc> @ imm = #0x20
  4111b2: 2301         	movs	r3, #0x1
  4111b4: e00f         	b	0x4111d6 <TrainingStage::doLesson(float)+0x6efe> @ imm = #0x1e
  4111b6: bf00         	nop
  4111c0: 6666         	str	r6, [r4, #0x64]
  4111c2: 6666         	str	r6, [r4, #0x64]
  4111c4: 6666         	str	r6, [r4, #0x64]
  4111c6: 3fee         	subs	r7, #0xee
  4111c8: 0000         	movs	r0, r0
  4111ca: 0000         	movs	r0, r0
  4111cc: 0000         	movs	r0, r0
  4111ce: 4049         	eors	r1, r1
  4111d0: d784         	bvc	0x4110dc <TrainingStage::doLesson(float)+0x6e04> @ imm = #-0xf8
  4111d2: ffff 2300    	<unknown>
  4111d6: 2b00         	cmp	r3, #0x0
  4111d8: d05b         	beq	0x411292 <TrainingStage::doLesson(float)+0x6fba> @ imm = #0xb6
  4111da: ab07         	add	r3, sp, #0x1c
  4111dc: 681b         	ldr	r3, [r3]
  4111de: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  4111e2: 1c5a         	adds	r2, r3, #0x1
  4111e4: ab07         	add	r3, sp, #0x1c
  4111e6: 681b         	ldr	r3, [r3]
  4111e8: f8c3 2180    	str.w	r2, [r3, #0x180]
  4111ec: ab07         	add	r3, sp, #0x1c
  4111ee: 681b         	ldr	r3, [r3]
  4111f0: f04f 0200    	mov.w	r2, #0x0
  4111f4: f8c3 2188    	str.w	r2, [r3, #0x188]
  4111f8: ab07         	add	r3, sp, #0x1c
  4111fa: 681b         	ldr	r3, [r3]
  4111fc: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  411200: 681b         	ldr	r3, [r3]
  411202: 3338         	adds	r3, #0x38
  411204: 681b         	ldr	r3, [r3]
  411206: aa07         	add	r2, sp, #0x1c
  411208: 6812         	ldr	r2, [r2]
  41120a: f8d2 2174    	ldr.w	r2, [r2, #0x174]
  41120e: 4610         	mov	r0, r2
  411210: f04f 517e    	mov.w	r1, #0x3f800000
  411214: 4798         	blx	r3
  411216: ab07         	add	r3, sp, #0x1c
  411218: 681b         	ldr	r3, [r3]
  41121a: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  41121e: abfc         	add	r3, sp, #0x3f0
  411220: 4618         	mov	r0, r3
  411222: f379 f8e7    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3791ce
  411226: f50d 6280    	add.w	r2, sp, #0x400
  41122a: abfc         	add	r3, sp, #0x3f0
  41122c: 4610         	mov	r0, r2
  41122e: f8df 2530    	ldr.w	r2, [pc, #0x530]        @ 0x411760 <TrainingStage::doLesson(float)+0x7488>
  411232: 447a         	add	r2, pc
  411234: 4611         	mov	r1, r2
  411236: 461a         	mov	r2, r3
  411238: f3a5 fc12    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3a5824
  41123c: 2000         	movs	r0, #0x0
  41123e: 2100         	movs	r1, #0x0
  411240: 22ff         	movs	r2, #0xff
  411242: f7f7 f909    	bl	0x408458 <Tracer::checkCollision()+0x3cc> @ imm = #-0x8dee
  411246: 4602         	mov	r2, r0
  411248: ab30         	add	r3, sp, #0xc0
  41124a: 4611         	mov	r1, r2
  41124c: 7019         	strb	r1, [r3]
  41124e: f3c2 2107    	ubfx	r1, r2, #0x8, #0x8
  411252: 7059         	strb	r1, [r3, #0x1]
  411254: f3c2 4207    	ubfx	r2, r2, #0x10, #0x8
  411258: 709a         	strb	r2, [r3, #0x2]
  41125a: f50d 6280    	add.w	r2, sp, #0x400
  41125e: ab30         	add	r3, sp, #0xc0
  411260: 4628         	mov	r0, r5
  411262: 4611         	mov	r1, r2
  411264: 681a         	ldr	r2, [r3]
  411266: 2303         	movs	r3, #0x3
  411268: f72c f82a    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xd3fac
  41126c: f50d 6380    	add.w	r3, sp, #0x400
  411270: 4618         	mov	r0, r3
  411272: f3a4 fb4f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a469e
  411276: abfc         	add	r3, sp, #0x3f0
  411278: 4618         	mov	r0, r3
  41127a: f379 f8bf    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37917e
  41127e: f8df 34e4    	ldr.w	r3, [pc, #0x4e4]        @ 0x411764 <TrainingStage::doLesson(float)+0x748c>
  411282: 58e3         	ldr	r3, [r4, r3]
  411284: 681b         	ldr	r3, [r3]
  411286: 4618         	mov	r0, r3
  411288: 2157         	movs	r1, #0x57
  41128a: 2201         	movs	r2, #0x1
  41128c: f7e6 fd58    	bl	0x3f7d40 <Sound::playSoundWithVoice(int, int)> @ imm = #-0x19550
  411290: e0a4         	b	0x4113dc <TrainingStage::doLesson(float)+0x7104> @ imm = #0x148
  411292: f8df 34d4    	ldr.w	r3, [pc, #0x4d4]        @ 0x411768 <TrainingStage::doLesson(float)+0x7490>
  411296: 58e3         	ldr	r3, [r4, r3]
  411298: 681b         	ldr	r3, [r3]
  41129a: f893 311c    	ldrb.w	r3, [r3, #0x11c]
  41129e: f083 0301    	eor	r3, r3, #0x1
  4112a2: b2db         	uxtb	r3, r3
  4112a4: 2b00         	cmp	r3, #0x0
  4112a6: f000 8099    	beq.w	0x4113dc <TrainingStage::doLesson(float)+0x7104> @ imm = #0x132
  4112aa: ab07         	add	r3, sp, #0x1c
  4112ac: 681b         	ldr	r3, [r3]
  4112ae: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  4112b2: 681b         	ldr	r3, [r3]
  4112b4: 3390         	adds	r3, #0x90
  4112b6: 681b         	ldr	r3, [r3]
  4112b8: aa07         	add	r2, sp, #0x1c
  4112ba: 6812         	ldr	r2, [r2]
  4112bc: f8d2 2174    	ldr.w	r2, [r2, #0x174]
  4112c0: 4610         	mov	r0, r2
  4112c2: 2101         	movs	r1, #0x1
  4112c4: 4798         	blx	r3
  4112c6: ab07         	add	r3, sp, #0x1c
  4112c8: 681b         	ldr	r3, [r3]
  4112ca: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  4112ce: 681b         	ldr	r3, [r3]
  4112d0: 3338         	adds	r3, #0x38
  4112d2: 681b         	ldr	r3, [r3]
  4112d4: aa07         	add	r2, sp, #0x1c
  4112d6: 6812         	ldr	r2, [r2]
  4112d8: f8d2 2174    	ldr.w	r2, [r2, #0x174]
  4112dc: 4610         	mov	r0, r2
  4112de: f04f 0100    	mov.w	r1, #0x0
  4112e2: f6cb 7180    	movt	r1, #0xbf80
  4112e6: 4798         	blx	r3
  4112e8: ab07         	add	r3, sp, #0x1c
  4112ea: 681b         	ldr	r3, [r3]
  4112ec: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  4112f0: 681b         	ldr	r3, [r3]
  4112f2: 3398         	adds	r3, #0x98
  4112f4: 681b         	ldr	r3, [r3]
  4112f6: aa07         	add	r2, sp, #0x1c
  4112f8: 6812         	ldr	r2, [r2]
  4112fa: f8d2 2174    	ldr.w	r2, [r2, #0x174]
  4112fe: 4610         	mov	r0, r2
  411300: f04f 0100    	mov.w	r1, #0x0
  411304: f2c4 3107    	movt	r1, #0x4307
  411308: 4798         	blx	r3
  41130a: ab07         	add	r3, sp, #0x1c
  41130c: 681b         	ldr	r3, [r3]
  41130e: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  411312: 681b         	ldr	r3, [r3]
  411314: 334c         	adds	r3, #0x4c
  411316: 681c         	ldr	r4, [r3]
  411318: ab07         	add	r3, sp, #0x1c
  41131a: 681b         	ldr	r3, [r3]
  41131c: f8d3 516c    	ldr.w	r5, [r3, #0x16c]
  411320: ab07         	add	r3, sp, #0x1c
  411322: 681b         	ldr	r3, [r3]
  411324: ed93 7a62    	vldr	s14, [r3, #392]
  411328: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  41132c: ee67 7a27    	vmul.f32	s15, s14, s15
  411330: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  411334: ec51 0b17    	vmov	r0, r1, d7
  411338: f6c4 ede6    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x13b434
  41133c: ec41 0b16    	vmov	d6, r0, r1
  411340: eeb2 7b04    	vmov.f64	d7, #1.000000e+01
  411344: ee26 7b07    	vmul.f64	d7, d6, d7
  411348: eef7 7bc7    	vcvt.f32.f64	s15, d7
  41134c: f50d 6380    	add.w	r3, sp, #0x400
  411350: 4618         	mov	r0, r3
  411352: ee17 1a90    	vmov	r1, s15
  411356: f04f 0200    	mov.w	r2, #0x0
  41135a: f181 fcc9    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x181992
  41135e: f50d 6380    	add.w	r3, sp, #0x400
  411362: 4628         	mov	r0, r5
  411364: 4619         	mov	r1, r3
  411366: 47a0         	blx	r4
  411368: ab07         	add	r3, sp, #0x1c
  41136a: 681b         	ldr	r3, [r3]
  41136c: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  411370: 681b         	ldr	r3, [r3]
  411372: 334c         	adds	r3, #0x4c
  411374: 681c         	ldr	r4, [r3]
  411376: ab07         	add	r3, sp, #0x1c
  411378: 681b         	ldr	r3, [r3]
  41137a: f8d3 5174    	ldr.w	r5, [r3, #0x174]
  41137e: ab07         	add	r3, sp, #0x1c
  411380: 681b         	ldr	r3, [r3]
  411382: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  411386: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  41138a: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  41138e: 681b         	ldr	r3, [r3]
  411390: 3350         	adds	r3, #0x50
  411392: 681b         	ldr	r3, [r3]
  411394: aa07         	add	r2, sp, #0x1c
  411396: 6812         	ldr	r2, [r2]
  411398: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  41139c: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  4113a0: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  4113a4: 4610         	mov	r0, r2
  4113a6: 4798         	blx	r3
  4113a8: 4606         	mov	r6, r0
  4113aa: abfc         	add	r3, sp, #0x3f0
  4113ac: 4618         	mov	r0, r3
  4113ae: f04f 0100    	mov.w	r1, #0x0
  4113b2: f2c4 2170    	movt	r1, #0x4270
  4113b6: f04f 0200    	mov.w	r2, #0x0
  4113ba: f2c4 225c    	movt	r2, #0x425c
  4113be: f181 fc97    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x18192e
  4113c2: f50d 6280    	add.w	r2, sp, #0x400
  4113c6: abfc         	add	r3, sp, #0x3f0
  4113c8: 4610         	mov	r0, r2
  4113ca: 4631         	mov	r1, r6
  4113cc: 461a         	mov	r2, r3
  4113ce: f7f7 f871    	bl	0x4084b4 <Tracer::checkCollision()+0x428> @ imm = #-0x8f1e
  4113d2: f50d 6380    	add.w	r3, sp, #0x400
  4113d6: 4628         	mov	r0, r5
  4113d8: 4619         	mov	r1, r3
  4113da: 47a0         	blx	r4
  4113dc: f000 bd9a    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0xb34
  4113e0: ab07         	add	r3, sp, #0x1c
  4113e2: 681b         	ldr	r3, [r3]
  4113e4: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  4113e8: 681b         	ldr	r3, [r3]
  4113ea: f503 730e    	add.w	r3, r3, #0x238
  4113ee: 681b         	ldr	r3, [r3]
  4113f0: aa07         	add	r2, sp, #0x1c
  4113f2: 6812         	ldr	r2, [r2]
  4113f4: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  4113f8: 4610         	mov	r0, r2
  4113fa: f04f 0100    	mov.w	r1, #0x0
  4113fe: f2c4 310c    	movt	r1, #0x430c
  411402: 4798         	blx	r3
  411404: ab07         	add	r3, sp, #0x1c
  411406: 681b         	ldr	r3, [r3]
  411408: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  41140c: 681b         	ldr	r3, [r3]
  41140e: f503 73ec    	add.w	r3, r3, #0x1d8
  411412: 681b         	ldr	r3, [r3]
  411414: aa07         	add	r2, sp, #0x1c
  411416: 6812         	ldr	r2, [r2]
  411418: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  41141c: 4610         	mov	r0, r2
  41141e: 4798         	blx	r3
  411420: 4603         	mov	r3, r0
  411422: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  411426: 681a         	ldr	r2, [r3]
  411428: 3298         	adds	r2, #0x98
  41142a: 6812         	ldr	r2, [r2]
  41142c: 4618         	mov	r0, r3
  41142e: f04f 0100    	mov.w	r1, #0x0
  411432: 4790         	blx	r2
  411434: ab07         	add	r3, sp, #0x1c
  411436: 681b         	ldr	r3, [r3]
  411438: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  41143c: 681b         	ldr	r3, [r3]
  41143e: f503 7329    	add.w	r3, r3, #0x2a4
  411442: 681b         	ldr	r3, [r3]
  411444: aa07         	add	r2, sp, #0x1c
  411446: 6812         	ldr	r2, [r2]
  411448: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  41144c: 4610         	mov	r0, r2
  41144e: f04f 0100    	mov.w	r1, #0x0
  411452: f2c4 21c8    	movt	r1, #0x42c8
  411456: 4798         	blx	r3
  411458: ab07         	add	r3, sp, #0x1c
  41145a: 681b         	ldr	r3, [r3]
  41145c: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  411460: 681b         	ldr	r3, [r3]
  411462: f503 730c    	add.w	r3, r3, #0x230
  411466: 681d         	ldr	r5, [r3]
  411468: ab07         	add	r3, sp, #0x1c
  41146a: 681b         	ldr	r3, [r3]
  41146c: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  411470: 461e         	mov	r6, r3
  411472: abe4         	add	r3, sp, #0x390
  411474: 4618         	mov	r0, r3
  411476: ed9f 0bb4    	vldr	d0, [pc, #720]          @ 0x411748 <TrainingStage::doLesson(float)+0x7470>
  41147a: ed9f 1bb3    	vldr	d1, [pc, #716]          @ 0x411748 <TrainingStage::doLesson(float)+0x7470>
  41147e: f7f7 f829    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x8fae
  411482: 466b         	mov	r3, sp
  411484: aae6         	add	r2, sp, #0x398
  411486: e892 0003    	ldm.w	r2, {r0, r1}
  41148a: e883 0003    	stm.w	r3, {r0, r1}
  41148e: abe4         	add	r3, sp, #0x390
  411490: cb0c         	ldm	r3, {r2, r3}
  411492: 4630         	mov	r0, r6
  411494: 47a8         	blx	r5
  411496: ab07         	add	r3, sp, #0x1c
  411498: 681b         	ldr	r3, [r3]
  41149a: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  41149e: 2201         	movs	r2, #0x1
  4114a0: f883 211c    	strb.w	r2, [r3, #0x11c]
  4114a4: ab07         	add	r3, sp, #0x1c
  4114a6: 681b         	ldr	r3, [r3]
  4114a8: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  4114ac: 681b         	ldr	r3, [r3]
  4114ae: f503 73f0    	add.w	r3, r3, #0x1e0
  4114b2: 681b         	ldr	r3, [r3]
  4114b4: aa07         	add	r2, sp, #0x1c
  4114b6: 6812         	ldr	r2, [r2]
  4114b8: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  4114bc: 4610         	mov	r0, r2
  4114be: 2101         	movs	r1, #0x1
  4114c0: 4798         	blx	r3
  4114c2: 4ba9         	ldr	r3, [pc, #0x2a4]        @ 0x411768 <TrainingStage::doLesson(float)+0x7490>
  4114c4: 58e3         	ldr	r3, [r4, r3]
  4114c6: 681b         	ldr	r3, [r3]
  4114c8: f8d3 2138    	ldr.w	r2, [r3, #0x138]
  4114cc: ab07         	add	r3, sp, #0x1c
  4114ce: 681b         	ldr	r3, [r3]
  4114d0: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  4114d4: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  4114d8: f50d 6182    	add.w	r1, sp, #0x410
  4114dc: ed92 4b0a    	vldr	d4, [r2, #40]
  4114e0: ed92 5b0c    	vldr	d5, [r2, #48]
  4114e4: ed93 6b0a    	vldr	d6, [r3, #40]
  4114e8: ed93 7b0c    	vldr	d7, [r3, #48]
  4114ec: 4608         	mov	r0, r1
  4114ee: eeb0 0b44    	vmov.f64	d0, d4
  4114f2: eeb0 1b45    	vmov.f64	d1, d5
  4114f6: eeb0 2b46    	vmov.f64	d2, d6
  4114fa: eeb0 3b47    	vmov.f64	d3, d7
  4114fe: f7f7 f829    	bl	0x408554 <Tracer::checkCollision()+0x4c8> @ imm = #-0x8fae
  411502: f50d 6382    	add.w	r3, sp, #0x410
  411506: cb0f         	ldm	r3, {r0, r1, r2, r3}
  411508: f2c5 fdd6    	bl	0x6d70b8 <cpvlength>    @ imm = #0x2c5bac
  41150c: ec41 0b16    	vmov	d6, r0, r1
  411510: ed9f 7b8f    	vldr	d7, [pc, #572]          @ 0x411750 <TrainingStage::doLesson(float)+0x7478>
  411514: eeb4 6bc7    	vcmpe.f64	d6, d7
  411518: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  41151c: bfd4         	ite	le
  41151e: 2300         	movle	r3, #0x0
  411520: 2301         	movgt	r3, #0x1
  411522: b2db         	uxtb	r3, r3
  411524: 2b00         	cmp	r3, #0x0
  411526: d02c         	beq	0x411582 <TrainingStage::doLesson(float)+0x72aa> @ imm = #0x58
  411528: f50d 6382    	add.w	r3, sp, #0x410
  41152c: cb0f         	ldm	r3, {r0, r1, r2, r3}
  41152e: f7f7 f8e7    	bl	0x408700 <Tracer::checkCollision()+0x674> @ imm = #-0x8e32
  411532: ab07         	add	r3, sp, #0x1c
  411534: 681b         	ldr	r3, [r3]
  411536: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  41153a: 681b         	ldr	r3, [r3]
  41153c: f503 730c    	add.w	r3, r3, #0x230
  411540: 681d         	ldr	r5, [r3]
  411542: ab07         	add	r3, sp, #0x1c
  411544: 681b         	ldr	r3, [r3]
  411546: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  41154a: 461e         	mov	r6, r3
  41154c: abe8         	add	r3, sp, #0x3a0
  41154e: f50d 6182    	add.w	r1, sp, #0x410
  411552: ed91 6b00    	vldr	d6, [r1]
  411556: f50d 6283    	add.w	r2, sp, #0x418
  41155a: ed92 7b00    	vldr	d7, [r2]
  41155e: 4618         	mov	r0, r3
  411560: eeb0 0b46    	vmov.f64	d0, d6
  411564: eeb0 1b47    	vmov.f64	d1, d7
  411568: f7f7 f846    	bl	0x4085f8 <Tracer::checkCollision()+0x56c> @ imm = #-0x8f74
  41156c: 466b         	mov	r3, sp
  41156e: aaea         	add	r2, sp, #0x3a8
  411570: e892 0003    	ldm.w	r2, {r0, r1}
  411574: e883 0003    	stm.w	r3, {r0, r1}
  411578: abe8         	add	r3, sp, #0x3a0
  41157a: cb0c         	ldm	r3, {r2, r3}
  41157c: 4630         	mov	r0, r6
  41157e: 47a8         	blx	r5
  411580: e087         	b	0x411692 <TrainingStage::doLesson(float)+0x73ba> @ imm = #0x10e
  411582: ab07         	add	r3, sp, #0x1c
  411584: 681b         	ldr	r3, [r3]
  411586: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  41158a: f8d3 6138    	ldr.w	r6, [r3, #0x138]
  41158e: ab07         	add	r3, sp, #0x1c
  411590: 681b         	ldr	r3, [r3]
  411592: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  411596: f8d3 5138    	ldr.w	r5, [r3, #0x138]
  41159a: ab07         	add	r3, sp, #0x1c
  41159c: 681b         	ldr	r3, [r3]
  41159e: ed93 7a62    	vldr	s14, [r3, #392]
  4115a2: eef0 7a08    	vmov.f32	s15, #3.000000e+00
  4115a6: ee67 7a27    	vmul.f32	s15, s14, s15
  4115aa: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  4115ae: ec51 0b17    	vmov	r0, r1, d7
  4115b2: f6c4 ecaa    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x13b6ac
  4115b6: 4602         	mov	r2, r0
  4115b8: 460b         	mov	r3, r1
  4115ba: a9ec         	add	r1, sp, #0x3b0
  4115bc: 4608         	mov	r0, r1
  4115be: ed9f 0b62    	vldr	d0, [pc, #392]          @ 0x411748 <TrainingStage::doLesson(float)+0x7470>
  4115c2: ec43 2b11    	vmov	d1, r2, r3
  4115c6: f7f6 ff85    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x90f6
  4115ca: ab02         	add	r3, sp, #0x8
  4115cc: ed95 4b0a    	vldr	d4, [r5, #40]
  4115d0: ed95 5b0c    	vldr	d5, [r5, #48]
  4115d4: ed9d 6bec    	vldr	d6, [sp, #944]
  4115d8: ed9d 7bee    	vldr	d7, [sp, #952]
  4115dc: 4618         	mov	r0, r3
  4115de: eeb0 0b44    	vmov.f64	d0, d4
  4115e2: eeb0 1b45    	vmov.f64	d1, d5
  4115e6: eeb0 2b46    	vmov.f64	d2, d6
  4115ea: eeb0 3b47    	vmov.f64	d3, d7
  4115ee: f7f6 ff85    	bl	0x4084fc <Tracer::checkCollision()+0x470> @ imm = #-0x90f6
  4115f2: ab02         	add	r3, sp, #0x8
  4115f4: f106 0528    	add.w	r5, r6, #0x28
  4115f8: cb0f         	ldm	r3, {r0, r1, r2, r3}
  4115fa: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  4115fe: ab07         	add	r3, sp, #0x1c
  411600: 681b         	ldr	r3, [r3]
  411602: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  411606: f8d3 5138    	ldr.w	r5, [r3, #0x138]
  41160a: ab07         	add	r3, sp, #0x1c
  41160c: 681b         	ldr	r3, [r3]
  41160e: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  411612: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  411616: aaf0         	add	r2, sp, #0x3c0
  411618: ed93 6b12    	vldr	d6, [r3, #72]
  41161c: ed93 7b14    	vldr	d7, [r3, #80]
  411620: 4610         	mov	r0, r2
  411622: eeb0 0b46    	vmov.f64	d0, d6
  411626: eeb0 1b47    	vmov.f64	d1, d7
  41162a: ed9f 2b4b    	vldr	d2, [pc, #300]          @ 0x411758 <TrainingStage::doLesson(float)+0x7480>
  41162e: f7f6 ffbd    	bl	0x4085ac <Tracer::checkCollision()+0x520> @ imm = #-0x9086
  411632: ed9d 6bf0    	vldr	d6, [sp, #960]
  411636: ed9d 7bf2    	vldr	d7, [sp, #968]
  41163a: 4628         	mov	r0, r5
  41163c: eeb0 0b46    	vmov.f64	d0, d6
  411640: eeb0 1b47    	vmov.f64	d1, d7
  411644: f7f7 f816    	bl	0x408674 <Tracer::checkCollision()+0x5e8> @ imm = #-0x8fd4
  411648: ab07         	add	r3, sp, #0x1c
  41164a: 681b         	ldr	r3, [r3]
  41164c: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  411650: f8d3 5138    	ldr.w	r5, [r3, #0x138]
  411654: ab07         	add	r3, sp, #0x1c
  411656: 681b         	ldr	r3, [r3]
  411658: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  41165c: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  411660: aaf4         	add	r2, sp, #0x3d0
  411662: ed93 6b0e    	vldr	d6, [r3, #56]
  411666: ed93 7b10    	vldr	d7, [r3, #64]
  41166a: 4610         	mov	r0, r2
  41166c: eeb0 0b46    	vmov.f64	d0, d6
  411670: eeb0 1b47    	vmov.f64	d1, d7
  411674: ed9f 2b38    	vldr	d2, [pc, #224]          @ 0x411758 <TrainingStage::doLesson(float)+0x7480>
  411678: f7f6 ff98    	bl	0x4085ac <Tracer::checkCollision()+0x520> @ imm = #-0x90d0
  41167c: ed9d 6bf4    	vldr	d6, [sp, #976]
  411680: ed9d 7bf6    	vldr	d7, [sp, #984]
  411684: 4628         	mov	r0, r5
  411686: eeb0 0b46    	vmov.f64	d0, d6
  41168a: eeb0 1b47    	vmov.f64	d1, d7
  41168e: f7f6 ffdb    	bl	0x408648 <Tracer::checkCollision()+0x5bc> @ imm = #-0x904a
  411692: ab07         	add	r3, sp, #0x1c
  411694: 681b         	ldr	r3, [r3]
  411696: ed93 7a62    	vldr	s14, [r3, #392]
  41169a: eef1 7a00    	vmov.f32	s15, #4.000000e+00
  41169e: eeb4 7ae7    	vcmpe.f32	s14, s15
  4116a2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  4116a6: dc01         	bgt	0x4116ac <TrainingStage::doLesson(float)+0x73d4> @ imm = #0x2
  4116a8: f000 bc34    	b.w	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x868
  4116ac: ab07         	add	r3, sp, #0x1c
  4116ae: 681b         	ldr	r3, [r3]
  4116b0: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  4116b4: 1c5a         	adds	r2, r3, #0x1
  4116b6: ab07         	add	r3, sp, #0x1c
  4116b8: 681b         	ldr	r3, [r3]
  4116ba: f8c3 2180    	str.w	r2, [r3, #0x180]
  4116be: ab07         	add	r3, sp, #0x1c
  4116c0: 681b         	ldr	r3, [r3]
  4116c2: f04f 0200    	mov.w	r2, #0x0
  4116c6: f8c3 2188    	str.w	r2, [r3, #0x188]
  4116ca: ab07         	add	r3, sp, #0x1c
  4116cc: 681b         	ldr	r3, [r3]
  4116ce: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  4116d2: abfc         	add	r3, sp, #0x3f0
  4116d4: 4618         	mov	r0, r3
  4116d6: f378 fe8d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x378d1a
  4116da: f50d 6280    	add.w	r2, sp, #0x400
  4116de: abfc         	add	r3, sp, #0x3f0
  4116e0: 4610         	mov	r0, r2
  4116e2: 4a22         	ldr	r2, [pc, #0x88]         @ 0x41176c <TrainingStage::doLesson(float)+0x7494>
  4116e4: 447a         	add	r2, pc
  4116e6: 4611         	mov	r1, r2
  4116e8: 461a         	mov	r2, r3
  4116ea: f3a5 f9b9    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3a5372
  4116ee: 2000         	movs	r0, #0x0
  4116f0: 2100         	movs	r1, #0x0
  4116f2: 22ff         	movs	r2, #0xff
  4116f4: f7f6 feb0    	bl	0x408458 <Tracer::checkCollision()+0x3cc> @ imm = #-0x92a0
  4116f8: 4602         	mov	r2, r0
  4116fa: ab31         	add	r3, sp, #0xc4
  4116fc: 4611         	mov	r1, r2
  4116fe: 7019         	strb	r1, [r3]
  411700: f3c2 2107    	ubfx	r1, r2, #0x8, #0x8
  411704: 7059         	strb	r1, [r3, #0x1]
  411706: f3c2 4207    	ubfx	r2, r2, #0x10, #0x8
  41170a: 709a         	strb	r2, [r3, #0x2]
  41170c: f50d 6280    	add.w	r2, sp, #0x400
  411710: ab31         	add	r3, sp, #0xc4
  411712: 4628         	mov	r0, r5
  411714: 4611         	mov	r1, r2
  411716: 681a         	ldr	r2, [r3]
  411718: 2304         	movs	r3, #0x4
  41171a: f72b fdd1    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xd445e
  41171e: f50d 6380    	add.w	r3, sp, #0x400
  411722: 4618         	mov	r0, r3
  411724: f3a4 f8f6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a41ec
  411728: abfc         	add	r3, sp, #0x3f0
  41172a: 4618         	mov	r0, r3
  41172c: f378 fe66    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x378ccc
  411730: 4b0c         	ldr	r3, [pc, #0x30]         @ 0x411764 <TrainingStage::doLesson(float)+0x748c>
  411732: 58e3         	ldr	r3, [r4, r3]
  411734: 681b         	ldr	r3, [r3]
  411736: 4618         	mov	r0, r3
  411738: 2158         	movs	r1, #0x58
  41173a: 2201         	movs	r2, #0x1
  41173c: f7e6 fb00    	bl	0x3f7d40 <Sound::playSoundWithVoice(int, int)> @ imm = #-0x19a00
  411740: e3e8         	b	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x7d0
  411742: bf00         	nop
  411744: f3af 8000    	nop.w
  411754: 0000         	movs	r0, r0
  411756: 4059         	eors	r1, r3
  411758: 6666         	str	r6, [r4, #0x64]
  41175a: 6666         	str	r6, [r4, #0x64]
  41175c: 6666         	str	r6, [r4, #0x64]
  41175e: 3fee         	subs	r7, #0xee
  411760: 9cae         	ldr	r4, [sp, #0x2b8]
  411762: 003c         	movs	r4, r7
  411764: d730         	bvc	0x4117c8 <TrainingStage::doLesson(float)+0x74f0> @ imm = #0x60
  411766: ffff d784    	<unknown>
  41176a: ffff 9818    	vqshrun.s64	d25, q4, #0x1
  41176e: 003c         	movs	r4, r7
  411770: ab07         	add	r3, sp, #0x1c
  411772: 681b         	ldr	r3, [r3]
  411774: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  411778: 681b         	ldr	r3, [r3]
  41177a: f503 730e    	add.w	r3, r3, #0x238
  41177e: 681b         	ldr	r3, [r3]
  411780: aa07         	add	r2, sp, #0x1c
  411782: 6812         	ldr	r2, [r2]
  411784: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  411788: 4610         	mov	r0, r2
  41178a: f04f 0100    	mov.w	r1, #0x0
  41178e: f2c4 3182    	movt	r1, #0x4382
  411792: 4798         	blx	r3
  411794: ab07         	add	r3, sp, #0x1c
  411796: 681b         	ldr	r3, [r3]
  411798: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  41179c: 681b         	ldr	r3, [r3]
  41179e: f503 73ec    	add.w	r3, r3, #0x1d8
  4117a2: 681b         	ldr	r3, [r3]
  4117a4: aa07         	add	r2, sp, #0x1c
  4117a6: 6812         	ldr	r2, [r2]
  4117a8: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  4117ac: 4610         	mov	r0, r2
  4117ae: 4798         	blx	r3
  4117b0: 4603         	mov	r3, r0
  4117b2: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  4117b6: 681a         	ldr	r2, [r3]
  4117b8: 3298         	adds	r2, #0x98
  4117ba: 6812         	ldr	r2, [r2]
  4117bc: 4618         	mov	r0, r3
  4117be: f04f 0100    	mov.w	r1, #0x0
  4117c2: 4790         	blx	r2
  4117c4: ab07         	add	r3, sp, #0x1c
  4117c6: 681b         	ldr	r3, [r3]
  4117c8: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  4117cc: 681b         	ldr	r3, [r3]
  4117ce: f503 7329    	add.w	r3, r3, #0x2a4
  4117d2: 681b         	ldr	r3, [r3]
  4117d4: aa07         	add	r2, sp, #0x1c
  4117d6: 6812         	ldr	r2, [r2]
  4117d8: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  4117dc: 4610         	mov	r0, r2
  4117de: f04f 0100    	mov.w	r1, #0x0
  4117e2: f2c4 21c8    	movt	r1, #0x42c8
  4117e6: 4798         	blx	r3
  4117e8: ab07         	add	r3, sp, #0x1c
  4117ea: 681b         	ldr	r3, [r3]
  4117ec: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  4117f0: 681b         	ldr	r3, [r3]
  4117f2: f503 730c    	add.w	r3, r3, #0x230
  4117f6: 681d         	ldr	r5, [r3]
  4117f8: ab07         	add	r3, sp, #0x1c
  4117fa: 681b         	ldr	r3, [r3]
  4117fc: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  411800: 461e         	mov	r6, r3
  411802: abf8         	add	r3, sp, #0x3e0
  411804: 4618         	mov	r0, r3
  411806: ed9f 0bb6    	vldr	d0, [pc, #728]          @ 0x411ae0 <TrainingStage::doLesson(float)+0x7808>
  41180a: ed9f 1bb5    	vldr	d1, [pc, #724]          @ 0x411ae0 <TrainingStage::doLesson(float)+0x7808>
  41180e: f7f6 fe61    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x933e
  411812: 466b         	mov	r3, sp
  411814: aafa         	add	r2, sp, #0x3e8
  411816: e892 0003    	ldm.w	r2, {r0, r1}
  41181a: e883 0003    	stm.w	r3, {r0, r1}
  41181e: abf8         	add	r3, sp, #0x3e0
  411820: cb0c         	ldm	r3, {r2, r3}
  411822: 4630         	mov	r0, r6
  411824: 47a8         	blx	r5
  411826: ab07         	add	r3, sp, #0x1c
  411828: 681b         	ldr	r3, [r3]
  41182a: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  41182e: 2201         	movs	r2, #0x1
  411830: f883 211c    	strb.w	r2, [r3, #0x11c]
  411834: ab07         	add	r3, sp, #0x1c
  411836: 681b         	ldr	r3, [r3]
  411838: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  41183c: 681b         	ldr	r3, [r3]
  41183e: f503 73f0    	add.w	r3, r3, #0x1e0
  411842: 681b         	ldr	r3, [r3]
  411844: aa07         	add	r2, sp, #0x1c
  411846: 6812         	ldr	r2, [r2]
  411848: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  41184c: 4610         	mov	r0, r2
  41184e: 2101         	movs	r1, #0x1
  411850: 4798         	blx	r3
  411852: ab07         	add	r3, sp, #0x1c
  411854: 681b         	ldr	r3, [r3]
  411856: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  41185a: 681b         	ldr	r3, [r3]
  41185c: f503 730c    	add.w	r3, r3, #0x230
  411860: 681d         	ldr	r5, [r3]
  411862: ab07         	add	r3, sp, #0x1c
  411864: 681b         	ldr	r3, [r3]
  411866: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  41186a: 461e         	mov	r6, r3
  41186c: abfc         	add	r3, sp, #0x3f0
  41186e: 4618         	mov	r0, r3
  411870: ed9f 0b9b    	vldr	d0, [pc, #620]          @ 0x411ae0 <TrainingStage::doLesson(float)+0x7808>
  411874: eeb7 1b00    	vmov.f64	d1, #1.000000e+00
  411878: f7f6 fe2c    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x93a8
  41187c: 466b         	mov	r3, sp
  41187e: aafe         	add	r2, sp, #0x3f8
  411880: e892 0003    	ldm.w	r2, {r0, r1}
  411884: e883 0003    	stm.w	r3, {r0, r1}
  411888: abfc         	add	r3, sp, #0x3f0
  41188a: cb0c         	ldm	r3, {r2, r3}
  41188c: 4630         	mov	r0, r6
  41188e: 47a8         	blx	r5
  411890: ab07         	add	r3, sp, #0x1c
  411892: 681b         	ldr	r3, [r3]
  411894: ed93 7a62    	vldr	s14, [r3, #392]
  411898: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  41189c: eeb4 7ae7    	vcmpe.f32	s14, s15
  4118a0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  4118a4: dc00         	bgt	0x4118a8 <TrainingStage::doLesson(float)+0x75d0> @ imm = #0x0
  4118a6: e335         	b	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x66a
  4118a8: ab07         	add	r3, sp, #0x1c
  4118aa: 681b         	ldr	r3, [r3]
  4118ac: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  4118b0: 2201         	movs	r2, #0x1
  4118b2: f883 21c5    	strb.w	r2, [r3, #0x1c5]
  4118b6: ab07         	add	r3, sp, #0x1c
  4118b8: 681b         	ldr	r3, [r3]
  4118ba: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  4118be: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  4118c2: 4618         	mov	r0, r3
  4118c4: f75c fc1a    	bl	0x36e0fc <MenuScreen::endTraining()> @ imm = #-0xa37cc
  4118c8: 4b87         	ldr	r3, [pc, #0x21c]        @ 0x411ae8 <TrainingStage::doLesson(float)+0x7810>
  4118ca: 58e3         	ldr	r3, [r4, r3]
  4118cc: 681b         	ldr	r3, [r3]
  4118ce: 4618         	mov	r0, r3
  4118d0: 2101         	movs	r1, #0x1
  4118d2: 2201         	movs	r2, #0x1
  4118d4: f7e6 fa34    	bl	0x3f7d40 <Sound::playSoundWithVoice(int, int)> @ imm = #-0x19b98
  4118d8: ab07         	add	r3, sp, #0x1c
  4118da: 681b         	ldr	r3, [r3]
  4118dc: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  4118e0: 1c5a         	adds	r2, r3, #0x1
  4118e2: ab07         	add	r3, sp, #0x1c
  4118e4: 681b         	ldr	r3, [r3]
  4118e6: f8c3 2180    	str.w	r2, [r3, #0x180]
  4118ea: ab07         	add	r3, sp, #0x1c
  4118ec: 681b         	ldr	r3, [r3]
  4118ee: f04f 0200    	mov.w	r2, #0x0
  4118f2: f8c3 2188    	str.w	r2, [r3, #0x188]
  4118f6: 4b7c         	ldr	r3, [pc, #0x1f0]        @ 0x411ae8 <TrainingStage::doLesson(float)+0x7810>
  4118f8: 58e3         	ldr	r3, [r4, r3]
  4118fa: 681b         	ldr	r3, [r3]
  4118fc: 4618         	mov	r0, r3
  4118fe: f7e6 fa03    	bl	0x3f7d08 <Sound::stopMusic()> @ imm = #-0x19bfa
  411902: e307         	b	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x60e
  411904: ab07         	add	r3, sp, #0x1c
  411906: 681b         	ldr	r3, [r3]
  411908: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  41190c: 681b         	ldr	r3, [r3]
  41190e: f503 730e    	add.w	r3, r3, #0x238
  411912: 681b         	ldr	r3, [r3]
  411914: aa07         	add	r2, sp, #0x1c
  411916: 6812         	ldr	r2, [r2]
  411918: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  41191c: 4610         	mov	r0, r2
  41191e: f04f 0100    	mov.w	r1, #0x0
  411922: f2c4 3182    	movt	r1, #0x4382
  411926: 4798         	blx	r3
  411928: ab07         	add	r3, sp, #0x1c
  41192a: 681b         	ldr	r3, [r3]
  41192c: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  411930: 681b         	ldr	r3, [r3]
  411932: f503 73ec    	add.w	r3, r3, #0x1d8
  411936: 681b         	ldr	r3, [r3]
  411938: aa07         	add	r2, sp, #0x1c
  41193a: 6812         	ldr	r2, [r2]
  41193c: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  411940: 4610         	mov	r0, r2
  411942: 4798         	blx	r3
  411944: 4603         	mov	r3, r0
  411946: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  41194a: 681a         	ldr	r2, [r3]
  41194c: 3298         	adds	r2, #0x98
  41194e: 6812         	ldr	r2, [r2]
  411950: 4618         	mov	r0, r3
  411952: f04f 0100    	mov.w	r1, #0x0
  411956: 4790         	blx	r2
  411958: ab07         	add	r3, sp, #0x1c
  41195a: 681b         	ldr	r3, [r3]
  41195c: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  411960: 681b         	ldr	r3, [r3]
  411962: f503 7329    	add.w	r3, r3, #0x2a4
  411966: 681b         	ldr	r3, [r3]
  411968: aa07         	add	r2, sp, #0x1c
  41196a: 6812         	ldr	r2, [r2]
  41196c: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  411970: 4610         	mov	r0, r2
  411972: f04f 0100    	mov.w	r1, #0x0
  411976: f2c4 21c8    	movt	r1, #0x42c8
  41197a: 4798         	blx	r3
  41197c: ab07         	add	r3, sp, #0x1c
  41197e: 681b         	ldr	r3, [r3]
  411980: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  411984: 681b         	ldr	r3, [r3]
  411986: f503 730c    	add.w	r3, r3, #0x230
  41198a: 681c         	ldr	r4, [r3]
  41198c: ab07         	add	r3, sp, #0x1c
  41198e: 681b         	ldr	r3, [r3]
  411990: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  411994: 461d         	mov	r5, r3
  411996: f50d 6380    	add.w	r3, sp, #0x400
  41199a: 4618         	mov	r0, r3
  41199c: ed9f 0b50    	vldr	d0, [pc, #320]          @ 0x411ae0 <TrainingStage::doLesson(float)+0x7808>
  4119a0: ed9f 1b4f    	vldr	d1, [pc, #316]          @ 0x411ae0 <TrainingStage::doLesson(float)+0x7808>
  4119a4: f7f6 fd96    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x94d4
  4119a8: 466b         	mov	r3, sp
  4119aa: f50d 6281    	add.w	r2, sp, #0x408
  4119ae: e892 0003    	ldm.w	r2, {r0, r1}
  4119b2: e883 0003    	stm.w	r3, {r0, r1}
  4119b6: f50d 6380    	add.w	r3, sp, #0x400
  4119ba: cb0c         	ldm	r3, {r2, r3}
  4119bc: 4628         	mov	r0, r5
  4119be: 47a0         	blx	r4
  4119c0: ab07         	add	r3, sp, #0x1c
  4119c2: 681b         	ldr	r3, [r3]
  4119c4: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  4119c8: 2201         	movs	r2, #0x1
  4119ca: f883 211c    	strb.w	r2, [r3, #0x11c]
  4119ce: ab07         	add	r3, sp, #0x1c
  4119d0: 681b         	ldr	r3, [r3]
  4119d2: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  4119d6: 681b         	ldr	r3, [r3]
  4119d8: f503 73f0    	add.w	r3, r3, #0x1e0
  4119dc: 681b         	ldr	r3, [r3]
  4119de: aa07         	add	r2, sp, #0x1c
  4119e0: 6812         	ldr	r2, [r2]
  4119e2: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  4119e6: 4610         	mov	r0, r2
  4119e8: 2101         	movs	r1, #0x1
  4119ea: 4798         	blx	r3
  4119ec: ab07         	add	r3, sp, #0x1c
  4119ee: 681b         	ldr	r3, [r3]
  4119f0: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  4119f4: 681b         	ldr	r3, [r3]
  4119f6: f503 730c    	add.w	r3, r3, #0x230
  4119fa: 681c         	ldr	r4, [r3]
  4119fc: ab07         	add	r3, sp, #0x1c
  4119fe: 681b         	ldr	r3, [r3]
  411a00: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  411a04: 461d         	mov	r5, r3
  411a06: f50d 6382    	add.w	r3, sp, #0x410
  411a0a: 4618         	mov	r0, r3
  411a0c: ed9f 0b34    	vldr	d0, [pc, #208]          @ 0x411ae0 <TrainingStage::doLesson(float)+0x7808>
  411a10: eeb7 1b00    	vmov.f64	d1, #1.000000e+00
  411a14: f7f6 fd5e    	bl	0x4084d4 <Tracer::checkCollision()+0x448> @ imm = #-0x9544
  411a18: 466b         	mov	r3, sp
  411a1a: f50d 6283    	add.w	r2, sp, #0x418
  411a1e: e892 0003    	ldm.w	r2, {r0, r1}
  411a22: e883 0003    	stm.w	r3, {r0, r1}
  411a26: f50d 6382    	add.w	r3, sp, #0x410
  411a2a: cb0c         	ldm	r3, {r2, r3}
  411a2c: 4628         	mov	r0, r5
  411a2e: 47a0         	blx	r4
  411a30: bf00         	nop
  411a32: e26f         	b	0x411f14 <TrainingStage::doLesson(float)+0x7c3c> @ imm = #0x4de
  411a34: f50d 6382    	add.w	r3, sp, #0x410
  411a38: 4618         	mov	r0, r3
  411a3a: f3a3 ff6b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3ed6
  411a3e: f376 fb35    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x37666a
  411a42: f50d 6382    	add.w	r3, sp, #0x410
  411a46: 4618         	mov	r0, r3
  411a48: f3a3 ff64    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3ec8
  411a4c: f376 fb2e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x37665c
  411a50: f50d 6382    	add.w	r3, sp, #0x410
  411a54: 4618         	mov	r0, r3
  411a56: f3a3 ff5d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3eba
  411a5a: e7ff         	b	0x411a5c <TrainingStage::doLesson(float)+0x7784> @ imm = #-0x2
  411a5c: f50d 6380    	add.w	r3, sp, #0x400
  411a60: 4618         	mov	r0, r3
  411a62: f378 fccb    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x378996
  411a66: f376 fb21    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x376642
  411a6a: f50d 6382    	add.w	r3, sp, #0x410
  411a6e: 4618         	mov	r0, r3
  411a70: f3a3 ff50    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3ea0
  411a74: e7ff         	b	0x411a76 <TrainingStage::doLesson(float)+0x779e> @ imm = #-0x2
  411a76: f50d 6380    	add.w	r3, sp, #0x400
  411a7a: 4618         	mov	r0, r3
  411a7c: f378 fcbe    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37897c
  411a80: f376 fb14    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x376628
  411a84: f50d 6382    	add.w	r3, sp, #0x410
  411a88: 4618         	mov	r0, r3
  411a8a: f3a3 ff43    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3e86
  411a8e: e7ff         	b	0x411a90 <TrainingStage::doLesson(float)+0x77b8> @ imm = #-0x2
  411a90: f50d 6380    	add.w	r3, sp, #0x400
  411a94: 4618         	mov	r0, r3
  411a96: f378 fcb1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x378962
  411a9a: f376 fb07    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x37660e
  411a9e: f50d 6382    	add.w	r3, sp, #0x410
  411aa2: 4618         	mov	r0, r3
  411aa4: f3a3 ff36    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3e6c
  411aa8: e7ff         	b	0x411aaa <TrainingStage::doLesson(float)+0x77d2> @ imm = #-0x2
  411aaa: f50d 6380    	add.w	r3, sp, #0x400
  411aae: 4618         	mov	r0, r3
  411ab0: f378 fca4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x378948
  411ab4: f376 fafa    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3765f4
  411ab8: f50d 6382    	add.w	r3, sp, #0x410
  411abc: 4618         	mov	r0, r3
  411abe: f3a3 ff29    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3e52
  411ac2: e7ff         	b	0x411ac4 <TrainingStage::doLesson(float)+0x77ec> @ imm = #-0x2
  411ac4: f50d 6380    	add.w	r3, sp, #0x400
  411ac8: 4618         	mov	r0, r3
  411aca: f378 fc97    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37892e
  411ace: f376 faed    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3765da
  411ad2: f50d 6382    	add.w	r3, sp, #0x410
  411ad6: 4618         	mov	r0, r3
  411ad8: f3a3 ff1c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3e38
  411adc: e006         	b	0x411aec <TrainingStage::doLesson(float)+0x7814> @ imm = #0xc
  411ade: bf00         	nop
  411ae8: d730         	bvc	0x411b4c <TrainingStage::doLesson(float)+0x7874> @ imm = #0x60
  411aea: ffff f50d    	<unknown>
  411aee: 6380         	str	r0, [r0, #0x38]
  411af0: 4618         	mov	r0, r3
  411af2: f378 fc83    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x378906
  411af6: f376 fad9    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3765b2
  411afa: f50d 6382    	add.w	r3, sp, #0x410
  411afe: 4618         	mov	r0, r3
  411b00: f3a3 ff08    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3e10
  411b04: e7ff         	b	0x411b06 <TrainingStage::doLesson(float)+0x782e> @ imm = #-0x2
  411b06: f50d 6380    	add.w	r3, sp, #0x400
  411b0a: 4618         	mov	r0, r3
  411b0c: f378 fc76    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3788ec
  411b10: f376 facc    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x376598
  411b14: f50d 6382    	add.w	r3, sp, #0x410
  411b18: 4618         	mov	r0, r3
  411b1a: f3a3 fefb    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3df6
  411b1e: e7ff         	b	0x411b20 <TrainingStage::doLesson(float)+0x7848> @ imm = #-0x2
  411b20: f50d 6380    	add.w	r3, sp, #0x400
  411b24: 4618         	mov	r0, r3
  411b26: f378 fc69    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3788d2
  411b2a: f376 fabf    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x37657e
  411b2e: f50d 6382    	add.w	r3, sp, #0x410
  411b32: 4618         	mov	r0, r3
  411b34: f3a3 feee    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3ddc
  411b38: e7ff         	b	0x411b3a <TrainingStage::doLesson(float)+0x7862> @ imm = #-0x2
  411b3a: f50d 6380    	add.w	r3, sp, #0x400
  411b3e: 4618         	mov	r0, r3
  411b40: f378 fc5c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3788b8
  411b44: f376 fab2    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x376564
  411b48: f50d 6382    	add.w	r3, sp, #0x410
  411b4c: 4618         	mov	r0, r3
  411b4e: f3a3 fee1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3dc2
  411b52: f376 faab    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x376556
  411b56: f50d 6382    	add.w	r3, sp, #0x410
  411b5a: 4618         	mov	r0, r3
  411b5c: f3a3 feda    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3db4
  411b60: f376 faa4    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x376548
  411b64: f50d 6382    	add.w	r3, sp, #0x410
  411b68: 4618         	mov	r0, r3
  411b6a: f3a3 fed3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3da6
  411b6e: e7ff         	b	0x411b70 <TrainingStage::doLesson(float)+0x7898> @ imm = #-0x2
  411b70: f50d 6380    	add.w	r3, sp, #0x400
  411b74: 4618         	mov	r0, r3
  411b76: f378 fc41    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x378882
  411b7a: f376 fa97    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x37652e
  411b7e: f50d 6382    	add.w	r3, sp, #0x410
  411b82: 4618         	mov	r0, r3
  411b84: f3a3 fec6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3d8c
  411b88: e7ff         	b	0x411b8a <TrainingStage::doLesson(float)+0x78b2> @ imm = #-0x2
  411b8a: f50d 6380    	add.w	r3, sp, #0x400
  411b8e: 4618         	mov	r0, r3
  411b90: f378 fc34    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x378868
  411b94: f376 fa8a    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x376514
  411b98: f50d 6382    	add.w	r3, sp, #0x410
  411b9c: 4618         	mov	r0, r3
  411b9e: f3a3 feb9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3d72
  411ba2: e7ff         	b	0x411ba4 <TrainingStage::doLesson(float)+0x78cc> @ imm = #-0x2
  411ba4: f50d 6380    	add.w	r3, sp, #0x400
  411ba8: 4618         	mov	r0, r3
  411baa: f378 fc27    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37884e
  411bae: f376 fa7d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3764fa
  411bb2: f50d 6382    	add.w	r3, sp, #0x410
  411bb6: 4618         	mov	r0, r3
  411bb8: f3a3 feac    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3d58
  411bbc: e7ff         	b	0x411bbe <TrainingStage::doLesson(float)+0x78e6> @ imm = #-0x2
  411bbe: f50d 6380    	add.w	r3, sp, #0x400
  411bc2: 4618         	mov	r0, r3
  411bc4: f378 fc1a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x378834
  411bc8: f376 fa70    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3764e0
  411bcc: f50d 6382    	add.w	r3, sp, #0x410
  411bd0: 4618         	mov	r0, r3
  411bd2: f3a3 fe9f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3d3e
  411bd6: e7ff         	b	0x411bd8 <TrainingStage::doLesson(float)+0x7900> @ imm = #-0x2
  411bd8: f50d 6380    	add.w	r3, sp, #0x400
  411bdc: 4618         	mov	r0, r3
  411bde: f378 fc0d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37881a
  411be2: f376 fa63    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3764c6
  411be6: f50d 6382    	add.w	r3, sp, #0x410
  411bea: 4618         	mov	r0, r3
  411bec: f3a3 fe92    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3d24
  411bf0: e7ff         	b	0x411bf2 <TrainingStage::doLesson(float)+0x791a> @ imm = #-0x2
  411bf2: f50d 6380    	add.w	r3, sp, #0x400
  411bf6: 4618         	mov	r0, r3
  411bf8: f378 fc00    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x378800
  411bfc: f376 fa56    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3764ac
  411c00: f50d 6382    	add.w	r3, sp, #0x410
  411c04: 4618         	mov	r0, r3
  411c06: f3a3 fe85    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3d0a
  411c0a: e7ff         	b	0x411c0c <TrainingStage::doLesson(float)+0x7934> @ imm = #-0x2
  411c0c: f50d 6380    	add.w	r3, sp, #0x400
  411c10: 4618         	mov	r0, r3
  411c12: f378 fbf3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3787e6
  411c16: f376 fa49    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x376492
  411c1a: f50d 6382    	add.w	r3, sp, #0x410
  411c1e: 4618         	mov	r0, r3
  411c20: f3a3 fe78    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3cf0
  411c24: e7ff         	b	0x411c26 <TrainingStage::doLesson(float)+0x794e> @ imm = #-0x2
  411c26: f50d 6380    	add.w	r3, sp, #0x400
  411c2a: 4618         	mov	r0, r3
  411c2c: f378 fbe6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3787cc
  411c30: f376 fa3c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x376478
  411c34: f50d 6382    	add.w	r3, sp, #0x410
  411c38: 4618         	mov	r0, r3
  411c3a: f3a3 fe6b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3cd6
  411c3e: e7ff         	b	0x411c40 <TrainingStage::doLesson(float)+0x7968> @ imm = #-0x2
  411c40: f50d 6380    	add.w	r3, sp, #0x400
  411c44: 4618         	mov	r0, r3
  411c46: f378 fbd9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3787b2
  411c4a: f376 fa2f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x37645e
  411c4e: f50d 6382    	add.w	r3, sp, #0x410
  411c52: 4618         	mov	r0, r3
  411c54: f3a3 fe5e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3cbc
  411c58: e7ff         	b	0x411c5a <TrainingStage::doLesson(float)+0x7982> @ imm = #-0x2
  411c5a: f50d 6380    	add.w	r3, sp, #0x400
  411c5e: 4618         	mov	r0, r3
  411c60: f378 fbcc    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x378798
  411c64: f376 fa22    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x376444
  411c68: f50d 6382    	add.w	r3, sp, #0x410
  411c6c: 4618         	mov	r0, r3
  411c6e: f3a3 fe51    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3ca2
  411c72: e7ff         	b	0x411c74 <TrainingStage::doLesson(float)+0x799c> @ imm = #-0x2
  411c74: f50d 6380    	add.w	r3, sp, #0x400
  411c78: 4618         	mov	r0, r3
  411c7a: f378 fbbf    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37877e
  411c7e: f376 fa15    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x37642a
  411c82: f50d 6382    	add.w	r3, sp, #0x410
  411c86: 4618         	mov	r0, r3
  411c88: f3a3 fe44    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3c88
  411c8c: e7ff         	b	0x411c8e <TrainingStage::doLesson(float)+0x79b6> @ imm = #-0x2
  411c8e: f50d 6380    	add.w	r3, sp, #0x400
  411c92: 4618         	mov	r0, r3
  411c94: f378 fbb2    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x378764
  411c98: f376 fa08    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x376410
  411c9c: f50d 6382    	add.w	r3, sp, #0x410
  411ca0: 4618         	mov	r0, r3
  411ca2: f3a3 fe37    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3c6e
  411ca6: e7ff         	b	0x411ca8 <TrainingStage::doLesson(float)+0x79d0> @ imm = #-0x2
  411ca8: f50d 6380    	add.w	r3, sp, #0x400
  411cac: 4618         	mov	r0, r3
  411cae: f378 fba5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37874a
  411cb2: f376 f9fb    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3763f6
  411cb6: f50d 6382    	add.w	r3, sp, #0x410
  411cba: 4618         	mov	r0, r3
  411cbc: f3a3 fe2a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3c54
  411cc0: e7ff         	b	0x411cc2 <TrainingStage::doLesson(float)+0x79ea> @ imm = #-0x2
  411cc2: f50d 6380    	add.w	r3, sp, #0x400
  411cc6: 4618         	mov	r0, r3
  411cc8: f378 fb98    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x378730
  411ccc: f376 f9ee    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3763dc
  411cd0: f50d 6382    	add.w	r3, sp, #0x410
  411cd4: 4618         	mov	r0, r3
  411cd6: f378 fb91    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x378722
  411cda: f376 f9e7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3763ce
  411cde: f50d 6380    	add.w	r3, sp, #0x400
  411ce2: 4618         	mov	r0, r3
  411ce4: f3a3 fe16    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3c2c
  411ce8: e7ff         	b	0x411cea <TrainingStage::doLesson(float)+0x7a12> @ imm = #-0x2
  411cea: f50d 6382    	add.w	r3, sp, #0x410
  411cee: 4618         	mov	r0, r3
  411cf0: f378 fb84    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x378708
  411cf4: e00b         	b	0x411d0e <TrainingStage::doLesson(float)+0x7a36> @ imm = #0x16
  411cf6: f50d 6382    	add.w	r3, sp, #0x410
  411cfa: 4618         	mov	r0, r3
  411cfc: f3a3 fe0a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3c14
  411d00: e7ff         	b	0x411d02 <TrainingStage::doLesson(float)+0x7a2a> @ imm = #-0x2
  411d02: f50d 6380    	add.w	r3, sp, #0x400
  411d06: 4618         	mov	r0, r3
  411d08: f378 fb78    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3786f0
  411d0c: e7ff         	b	0x411d0e <TrainingStage::doLesson(float)+0x7a36> @ imm = #-0x2
  411d0e: abfc         	add	r3, sp, #0x3f0
  411d10: 4618         	mov	r0, r3
  411d12: f3a3 fdff    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3bfe
  411d16: f376 f9c9    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x376392
  411d1a: f50d 6382    	add.w	r3, sp, #0x410
  411d1e: 4618         	mov	r0, r3
  411d20: f3a3 fdf8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3bf0
  411d24: e7ff         	b	0x411d26 <TrainingStage::doLesson(float)+0x7a4e> @ imm = #-0x2
  411d26: f50d 6380    	add.w	r3, sp, #0x400
  411d2a: 4618         	mov	r0, r3
  411d2c: f378 fb66    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3786cc
  411d30: f376 f9bc    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x376378
  411d34: f50d 6382    	add.w	r3, sp, #0x410
  411d38: 4618         	mov	r0, r3
  411d3a: f3a3 fdeb    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3bd6
  411d3e: e7ff         	b	0x411d40 <TrainingStage::doLesson(float)+0x7a68> @ imm = #-0x2
  411d40: f50d 6380    	add.w	r3, sp, #0x400
  411d44: 4618         	mov	r0, r3
  411d46: f378 fb59    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3786b2
  411d4a: f376 f9af    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x37635e
  411d4e: f50d 6382    	add.w	r3, sp, #0x410
  411d52: 4618         	mov	r0, r3
  411d54: f3a3 fdde    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3bbc
  411d58: e7ff         	b	0x411d5a <TrainingStage::doLesson(float)+0x7a82> @ imm = #-0x2
  411d5a: f50d 6380    	add.w	r3, sp, #0x400
  411d5e: 4618         	mov	r0, r3
  411d60: f378 fb4c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x378698
  411d64: f376 f9a2    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x376344
  411d68: f50d 6382    	add.w	r3, sp, #0x410
  411d6c: 4618         	mov	r0, r3
  411d6e: f3a3 fdd1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3ba2
  411d72: e7ff         	b	0x411d74 <TrainingStage::doLesson(float)+0x7a9c> @ imm = #-0x2
  411d74: f50d 6380    	add.w	r3, sp, #0x400
  411d78: 4618         	mov	r0, r3
  411d7a: f378 fb3f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37867e
  411d7e: f376 f995    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x37632a
  411d82: f50d 6382    	add.w	r3, sp, #0x410
  411d86: 4618         	mov	r0, r3
  411d88: f3a3 fdc4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3b88
  411d8c: e7ff         	b	0x411d8e <TrainingStage::doLesson(float)+0x7ab6> @ imm = #-0x2
  411d8e: f50d 6380    	add.w	r3, sp, #0x400
  411d92: 4618         	mov	r0, r3
  411d94: f378 fb32    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x378664
  411d98: f376 f988    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x376310
  411d9c: f50d 6382    	add.w	r3, sp, #0x410
  411da0: 4618         	mov	r0, r3
  411da2: f3a3 fdb7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3b6e
  411da6: e7ff         	b	0x411da8 <TrainingStage::doLesson(float)+0x7ad0> @ imm = #-0x2
  411da8: f50d 6380    	add.w	r3, sp, #0x400
  411dac: 4618         	mov	r0, r3
  411dae: f378 fb25    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37864a
  411db2: f376 f97b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3762f6
  411db6: f50d 6382    	add.w	r3, sp, #0x410
  411dba: 4618         	mov	r0, r3
  411dbc: f3a3 fdaa    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3b54
  411dc0: e7ff         	b	0x411dc2 <TrainingStage::doLesson(float)+0x7aea> @ imm = #-0x2
  411dc2: f50d 6380    	add.w	r3, sp, #0x400
  411dc6: 4618         	mov	r0, r3
  411dc8: f378 fb18    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x378630
  411dcc: f376 f96e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3762dc
  411dd0: f50d 6382    	add.w	r3, sp, #0x410
  411dd4: 4618         	mov	r0, r3
  411dd6: f3a3 fd9d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3b3a
  411dda: e7ff         	b	0x411ddc <TrainingStage::doLesson(float)+0x7b04> @ imm = #-0x2
  411ddc: f50d 6380    	add.w	r3, sp, #0x400
  411de0: 4618         	mov	r0, r3
  411de2: f378 fb0b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x378616
  411de6: f376 f961    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3762c2
  411dea: f50d 6382    	add.w	r3, sp, #0x410
  411dee: 4618         	mov	r0, r3
  411df0: f3a3 fd90    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3b20
  411df4: e7ff         	b	0x411df6 <TrainingStage::doLesson(float)+0x7b1e> @ imm = #-0x2
  411df6: f50d 6380    	add.w	r3, sp, #0x400
  411dfa: 4618         	mov	r0, r3
  411dfc: f378 fafe    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3785fc
  411e00: f376 f954    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3762a8
  411e04: f50d 6382    	add.w	r3, sp, #0x410
  411e08: 4618         	mov	r0, r3
  411e0a: f3a3 fd83    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3b06
  411e0e: e7ff         	b	0x411e10 <TrainingStage::doLesson(float)+0x7b38> @ imm = #-0x2
  411e10: f50d 6380    	add.w	r3, sp, #0x400
  411e14: 4618         	mov	r0, r3
  411e16: f378 faf1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3785e2
  411e1a: f376 f947    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x37628e
  411e1e: f50d 6382    	add.w	r3, sp, #0x410
  411e22: 4618         	mov	r0, r3
  411e24: f3a3 fd76    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3aec
  411e28: e7ff         	b	0x411e2a <TrainingStage::doLesson(float)+0x7b52> @ imm = #-0x2
  411e2a: f50d 6380    	add.w	r3, sp, #0x400
  411e2e: 4618         	mov	r0, r3
  411e30: f378 fae4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3785c8
  411e34: f376 f93a    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x376274
  411e38: f50d 6382    	add.w	r3, sp, #0x410
  411e3c: 4618         	mov	r0, r3
  411e3e: f3a3 fd69    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3ad2
  411e42: e7ff         	b	0x411e44 <TrainingStage::doLesson(float)+0x7b6c> @ imm = #-0x2
  411e44: f50d 6380    	add.w	r3, sp, #0x400
  411e48: 4618         	mov	r0, r3
  411e4a: f378 fad7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3785ae
  411e4e: f376 f92d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x37625a
  411e52: f50d 6382    	add.w	r3, sp, #0x410
  411e56: 4618         	mov	r0, r3
  411e58: f3a3 fd5c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3ab8
  411e5c: f376 f926    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x37624c
  411e60: f50d 6382    	add.w	r3, sp, #0x410
  411e64: 4618         	mov	r0, r3
  411e66: f3a3 fd55    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3aaa
  411e6a: e7ff         	b	0x411e6c <TrainingStage::doLesson(float)+0x7b94> @ imm = #-0x2
  411e6c: f50d 6380    	add.w	r3, sp, #0x400
  411e70: 4618         	mov	r0, r3
  411e72: f378 fac3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x378586
  411e76: f376 f919    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x376232
  411e7a: f50d 6382    	add.w	r3, sp, #0x410
  411e7e: 4618         	mov	r0, r3
  411e80: f3a3 fd48    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3a90
  411e84: e7ff         	b	0x411e86 <TrainingStage::doLesson(float)+0x7bae> @ imm = #-0x2
  411e86: f50d 6380    	add.w	r3, sp, #0x400
  411e8a: 4618         	mov	r0, r3
  411e8c: f378 fab6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37856c
  411e90: f376 f90c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x376218
  411e94: f50d 6382    	add.w	r3, sp, #0x410
  411e98: 4618         	mov	r0, r3
  411e9a: f3a3 fd3b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3a76
  411e9e: e7ff         	b	0x411ea0 <TrainingStage::doLesson(float)+0x7bc8> @ imm = #-0x2
  411ea0: f50d 6380    	add.w	r3, sp, #0x400
  411ea4: 4618         	mov	r0, r3
  411ea6: f378 faa9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x378552
  411eaa: f376 f8ff    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3761fe
  411eae: f50d 6382    	add.w	r3, sp, #0x410
  411eb2: 4618         	mov	r0, r3
  411eb4: f3a3 fd2e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3a5c
  411eb8: e7ff         	b	0x411eba <TrainingStage::doLesson(float)+0x7be2> @ imm = #-0x2
  411eba: f50d 6380    	add.w	r3, sp, #0x400
  411ebe: 4618         	mov	r0, r3
  411ec0: f378 fa9c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x378538
  411ec4: f376 f8f2    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3761e4
  411ec8: f50d 6382    	add.w	r3, sp, #0x410
  411ecc: 4618         	mov	r0, r3
  411ece: f3a3 fd21    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3a42
  411ed2: e7ff         	b	0x411ed4 <TrainingStage::doLesson(float)+0x7bfc> @ imm = #-0x2
  411ed4: f50d 6380    	add.w	r3, sp, #0x400
  411ed8: 4618         	mov	r0, r3
  411eda: f378 fa8f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37851e
  411ede: f376 f8e5    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3761ca
  411ee2: f50d 6380    	add.w	r3, sp, #0x400
  411ee6: 4618         	mov	r0, r3
  411ee8: f3a3 fd14    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3a28
  411eec: e7ff         	b	0x411eee <TrainingStage::doLesson(float)+0x7c16> @ imm = #-0x2
  411eee: abfc         	add	r3, sp, #0x3f0
  411ef0: 4618         	mov	r0, r3
  411ef2: f378 fa83    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x378506
  411ef6: f376 f8d9    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3761b2
  411efa: f50d 6380    	add.w	r3, sp, #0x400
  411efe: 4618         	mov	r0, r3
  411f00: f3a3 fd08    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a3a10
  411f04: e7ff         	b	0x411f06 <TrainingStage::doLesson(float)+0x7c2e> @ imm = #-0x2
  411f06: abfc         	add	r3, sp, #0x3f0
  411f08: 4618         	mov	r0, r3
  411f0a: f378 fa77    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3784ee
  411f0e: f376 f8cd    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x37619a
  411f12: bf00         	nop
  411f14: f20d 4d24    	addw	sp, sp, #0x424
  411f18: bdf0         	pop	{r4, r5, r6, r7, pc}
