// StageLayer: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 25 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../StageLayer.cpp

// ==== StageLayer::create
//      file offset 0x3fe4fc (= ELF address; Ghidra 0x40e4fc), 112 bytes, Thumb-2
  3fe4fc: b510         	push	{r4, lr}
  3fe4fe: b082         	sub	sp, #0x8
  3fe500: f44f 708e    	mov.w	r0, #0x11c
  3fe504: f389 fa2e    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x38945c
  3fe508: 4603         	mov	r3, r0
  3fe50a: 461c         	mov	r4, r3
  3fe50c: 4620         	mov	r0, r4
  3fe50e: f000 f90d    	bl	0x3fe72c <StageLayer::StageLayer()> @ imm = #0x21a
  3fe512: 9401         	str	r4, [sp, #0x4]
  3fe514: 9b01         	ldr	r3, [sp, #0x4]
  3fe516: 2b00         	cmp	r3, #0x0
  3fe518: d00a         	beq	0x3fe530 <StageLayer::create()+0x34> @ imm = #0x14
  3fe51a: 9b01         	ldr	r3, [sp, #0x4]
  3fe51c: 681b         	ldr	r3, [r3]
  3fe51e: 3318         	adds	r3, #0x18
  3fe520: 681b         	ldr	r3, [r3]
  3fe522: 9801         	ldr	r0, [sp, #0x4]
  3fe524: 4798         	blx	r3
  3fe526: 4603         	mov	r3, r0
  3fe528: 2b00         	cmp	r3, #0x0
  3fe52a: d001         	beq	0x3fe530 <StageLayer::create()+0x34> @ imm = #0x2
  3fe52c: 2301         	movs	r3, #0x1
  3fe52e: e000         	b	0x3fe532 <StageLayer::create()+0x36> @ imm = #0x0
  3fe530: 2300         	movs	r3, #0x0
  3fe532: 2b00         	cmp	r3, #0x0
  3fe534: d005         	beq	0x3fe542 <StageLayer::create()+0x46> @ imm = #0xa
  3fe536: 9b01         	ldr	r3, [sp, #0x4]
  3fe538: 4618         	mov	r0, r3
  3fe53a: f199 fcdf    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x1999be
  3fe53e: 9b01         	ldr	r3, [sp, #0x4]
  3fe540: e011         	b	0x3fe566 <StageLayer::create()+0x6a> @ imm = #0x22
  3fe542: 9b01         	ldr	r3, [sp, #0x4]
  3fe544: 2b00         	cmp	r3, #0x0
  3fe546: d005         	beq	0x3fe554 <StageLayer::create()+0x58> @ imm = #0xa
  3fe548: 9b01         	ldr	r3, [sp, #0x4]
  3fe54a: 681b         	ldr	r3, [r3]
  3fe54c: 3308         	adds	r3, #0x8
  3fe54e: 681b         	ldr	r3, [r3]
  3fe550: 9801         	ldr	r0, [sp, #0x4]
  3fe552: 4798         	blx	r3
  3fe554: 2300         	movs	r3, #0x0
  3fe556: 9301         	str	r3, [sp, #0x4]
  3fe558: 2300         	movs	r3, #0x0
  3fe55a: e004         	b	0x3fe566 <StageLayer::create()+0x6a> @ imm = #0x8
  3fe55c: 4620         	mov	r0, r4
  3fe55e: f389 fda1    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x389b42
  3fe562: f389 fda3    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x389b46
  3fe566: 4618         	mov	r0, r3
  3fe568: b002         	add	sp, #0x8
  3fe56a: bd10         	pop	{r4, pc}

// ==== StageLayer::StageLayer
//      file offset 0x3fe72c (= ELF address; Ghidra 0x40e72c), 112 bytes, Thumb-2
  3fe72c: b510         	push	{r4, lr}
  3fe72e: b082         	sub	sp, #0x8
  3fe730: 9001         	str	r0, [sp, #0x4]
  3fe732: 4c18         	ldr	r4, [pc, #0x60]         @ 0x3fe794 <StageLayer::StageLayer()+0x68>
  3fe734: 447c         	add	r4, pc
  3fe736: 9b01         	ldr	r3, [sp, #0x4]
  3fe738: 4618         	mov	r0, r3
  3fe73a: f1ae fc8f    	bl	0x5ad05c <cocos2d::CCLayer::CCLayer()> @ imm = #0x1ae91e
  3fe73e: 9b01         	ldr	r3, [sp, #0x4]
  3fe740: 4a15         	ldr	r2, [pc, #0x54]         @ 0x3fe798 <StageLayer::StageLayer()+0x6c>
  3fe742: 58a2         	ldr	r2, [r4, r2]
  3fe744: 3208         	adds	r2, #0x8
  3fe746: 601a         	str	r2, [r3]
  3fe748: 9b01         	ldr	r3, [sp, #0x4]
  3fe74a: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x3fe798 <StageLayer::StageLayer()+0x6c>
  3fe74c: 58a2         	ldr	r2, [r4, r2]
  3fe74e: f502 7204    	add.w	r2, r2, #0x210
  3fe752: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  3fe756: 9b01         	ldr	r3, [sp, #0x4]
  3fe758: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x3fe798 <StageLayer::StageLayer()+0x6c>
  3fe75a: 58a2         	ldr	r2, [r4, r2]
  3fe75c: f502 7210    	add.w	r2, r2, #0x240
  3fe760: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  3fe764: 9b01         	ldr	r3, [sp, #0x4]
  3fe766: 4a0c         	ldr	r2, [pc, #0x30]         @ 0x3fe798 <StageLayer::StageLayer()+0x6c>
  3fe768: 58a2         	ldr	r2, [r4, r2]
  3fe76a: f502 7213    	add.w	r2, r2, #0x24c
  3fe76e: f8c3 20ec    	str.w	r2, [r3, #0xec]
  3fe772: 9b01         	ldr	r3, [sp, #0x4]
  3fe774: f503 7384    	add.w	r3, r3, #0x108
  3fe778: 4618         	mov	r0, r3
  3fe77a: f194 fc7d    	bl	0x593078 <cocos2d::CCSize::CCSize()> @ imm = #0x1948fa
  3fe77e: 9b01         	ldr	r3, [sp, #0x4]
  3fe780: e005         	b	0x3fe78e <StageLayer::StageLayer()+0x62> @ imm = #0xa
  3fe782: 9b01         	ldr	r3, [sp, #0x4]
  3fe784: 4618         	mov	r0, r3
  3fe786: f1ae fce1    	bl	0x5ad14c <cocos2d::CCLayer::~CCLayer()> @ imm = #0x1ae9c2
  3fe78a: f389 fc8f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x38991e
  3fe78e: 4618         	mov	r0, r3
  3fe790: b002         	add	sp, #0x8
  3fe792: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3fe793); words below are literal-pool data ---
  3fe794: 42d4         	cmn	r4, r2
  3fe796: 0053         	lsls	r3, r2, #0x1
  3fe798: df44         	svc	#0x44
  3fe79a: ffff b500    	<unknown>

// ==== StageLayer::scene
//      file offset 0x3fe79c (= ELF address; Ghidra 0x40e79c), 46 bytes, Thumb-2
  3fe79c: b500         	push	{lr}
  3fe79e: b083         	sub	sp, #0xc
  3fe7a0: f1b1 f95e    	bl	0x5afa60 <cocos2d::CCScene::create()> @ imm = #0x1b12bc
  3fe7a4: 4603         	mov	r3, r0
  3fe7a6: 9300         	str	r3, [sp]
  3fe7a8: f7ff fea8    	bl	0x3fe4fc <StageLayer::create()> @ imm = #-0x2b0
  3fe7ac: 4603         	mov	r3, r0
  3fe7ae: 9301         	str	r3, [sp, #0x4]
  3fe7b0: 9b00         	ldr	r3, [sp]
  3fe7b2: 681b         	ldr	r3, [r3]
  3fe7b4: 33c8         	adds	r3, #0xc8
  3fe7b6: 681b         	ldr	r3, [r3]
  3fe7b8: 9a00         	ldr	r2, [sp]
  3fe7ba: 4610         	mov	r0, r2
  3fe7bc: 9901         	ldr	r1, [sp, #0x4]
  3fe7be: 4798         	blx	r3
  3fe7c0: 9b00         	ldr	r3, [sp]
  3fe7c2: 4618         	mov	r0, r3
  3fe7c4: b003         	add	sp, #0xc
  3fe7c6: f85d fb04    	ldr	pc, [sp], #4

// ==== StageLayer::init
//      file offset 0x3fe7cc (= ELF address; Ghidra 0x40e7cc), 568 bytes, Thumb-2
  3fe7cc: b510         	push	{r4, lr}
  3fe7ce: b08c         	sub	sp, #0x30
  3fe7d0: 9003         	str	r0, [sp, #0xc]
  3fe7d2: 4c82         	ldr	r4, [pc, #0x208]        @ 0x3fe9dc <StageLayer::init()+0x210>
  3fe7d4: 447c         	add	r4, pc
  3fe7d6: 9b03         	ldr	r3, [sp, #0xc]
  3fe7d8: 4618         	mov	r0, r3
  3fe7da: f1ae fd0d    	bl	0x5ad1f8 <cocos2d::CCLayer::init()> @ imm = #0x1aea1a
  3fe7de: 4603         	mov	r3, r0
  3fe7e0: f88d 3017    	strb.w	r3, [sp, #0x17]
  3fe7e4: f89d 3017    	ldrb.w	r3, [sp, #0x17]
  3fe7e8: f083 0301    	eor	r3, r3, #0x1
  3fe7ec: b2db         	uxtb	r3, r3
  3fe7ee: 2b00         	cmp	r3, #0x0
  3fe7f0: d001         	beq	0x3fe7f6 <StageLayer::init()+0x2a> @ imm = #0x2
  3fe7f2: 2300         	movs	r3, #0x0
  3fe7f4: e0ef         	b	0x3fe9d6 <StageLayer::init()+0x20a> @ imm = #0x1de
  3fe7f6: 9b03         	ldr	r3, [sp, #0xc]
  3fe7f8: 681b         	ldr	r3, [r3]
  3fe7fa: f503 73e8    	add.w	r3, r3, #0x1d0
  3fe7fe: 681b         	ldr	r3, [r3]
  3fe800: 9a03         	ldr	r2, [sp, #0xc]
  3fe802: 4610         	mov	r0, r2
  3fe804: 2101         	movs	r1, #0x1
  3fe806: 4798         	blx	r3
  3fe808: 9b03         	ldr	r3, [sp, #0xc]
  3fe80a: 681b         	ldr	r3, [r3]
  3fe80c: f503 73f4    	add.w	r3, r3, #0x1e8
  3fe810: 681b         	ldr	r3, [r3]
  3fe812: 9a03         	ldr	r2, [sp, #0xc]
  3fe814: 4610         	mov	r0, r2
  3fe816: 2101         	movs	r1, #0x1
  3fe818: 4798         	blx	r3
  3fe81a: 4b71         	ldr	r3, [pc, #0x1c4]        @ 0x3fe9e0 <StageLayer::init()+0x214>
  3fe81c: 58e3         	ldr	r3, [r4, r3]
  3fe81e: 681b         	ldr	r3, [r3]
  3fe820: 2b05         	cmp	r3, #0x5
  3fe822: d85d         	bhi	0x3fe8e0 <StageLayer::init()+0x114> @ imm = #0xba
  3fe824: a102         	adr	r1, #8 <StageLayer::init()+0x5e>
  3fe826: f851 2023    	ldr.w	r2, [r1, r3, lsl #2]
  3fe82a: 4411         	add	r1, r2
  3fe82c: 4708         	bx	r1
  3fe82e: bf00         	nop
  3fe830: 0019         	movs	r1, r3
  3fe832: 0000         	movs	r0, r0
  3fe834: 0035         	movs	r5, r6
  3fe836: 0000         	movs	r0, r0
  3fe838: 0095         	lsls	r5, r2, #0x2
  3fe83a: 0000         	movs	r0, r0
  3fe83c: 0051         	lsls	r1, r2, #0x1
  3fe83e: 0000         	movs	r0, r0
  3fe840: 006d         	lsls	r5, r5, #0x1
  3fe842: 0000         	movs	r0, r0
  3fe844: 0095         	lsls	r5, r2, #0x2
  3fe846: 0000         	movs	r0, r0
  3fe848: f7ff fe90    	bl	0x3fe56c <TrainingStage::create()> @ imm = #-0x2e0
  3fe84c: 4602         	mov	r2, r0
  3fe84e: 9b03         	ldr	r3, [sp, #0xc]
  3fe850: f8c3 2114    	str.w	r2, [r3, #0x114]
  3fe854: 4b63         	ldr	r3, [pc, #0x18c]        @ 0x3fe9e4 <StageLayer::init()+0x218>
  3fe856: 58e3         	ldr	r3, [r4, r3]
  3fe858: 681b         	ldr	r3, [r3]
  3fe85a: 4618         	mov	r0, r3
  3fe85c: 2101         	movs	r1, #0x1
  3fe85e: f7f9 f9b3    	bl	0x3f7bc8 <Sound::loadMapSounds(MapType)> @ imm = #-0x6c9a
  3fe862: e04b         	b	0x3fe8fc <StageLayer::init()+0x130> @ imm = #0x96
  3fe864: f7ff feba    	bl	0x3fe5dc <SurvivalStage::create()> @ imm = #-0x28c
  3fe868: 4602         	mov	r2, r0
  3fe86a: 9b03         	ldr	r3, [sp, #0xc]
  3fe86c: f8c3 2114    	str.w	r2, [r3, #0x114]
  3fe870: 4b5c         	ldr	r3, [pc, #0x170]        @ 0x3fe9e4 <StageLayer::init()+0x218>
  3fe872: 58e3         	ldr	r3, [r4, r3]
  3fe874: 681b         	ldr	r3, [r3]
  3fe876: 4618         	mov	r0, r3
  3fe878: 2102         	movs	r1, #0x2
  3fe87a: f7f9 f9a5    	bl	0x3f7bc8 <Sound::loadMapSounds(MapType)> @ imm = #-0x6cb6
  3fe87e: e03d         	b	0x3fe8fc <StageLayer::init()+0x130> @ imm = #0x7a
  3fe880: f7ff fee4    	bl	0x3fe64c <MultiplayerStage::create()> @ imm = #-0x238
  3fe884: 4602         	mov	r2, r0
  3fe886: 9b03         	ldr	r3, [sp, #0xc]
  3fe888: f8c3 2114    	str.w	r2, [r3, #0x114]
  3fe88c: 4b55         	ldr	r3, [pc, #0x154]        @ 0x3fe9e4 <StageLayer::init()+0x218>
  3fe88e: 58e3         	ldr	r3, [r4, r3]
  3fe890: 681b         	ldr	r3, [r3]
  3fe892: 4618         	mov	r0, r3
  3fe894: 2103         	movs	r1, #0x3
  3fe896: f7f9 f997    	bl	0x3f7bc8 <Sound::loadMapSounds(MapType)> @ imm = #-0x6cd2
  3fe89a: e02f         	b	0x3fe8fc <StageLayer::init()+0x130> @ imm = #0x5e
  3fe89c: f7ff fed6    	bl	0x3fe64c <MultiplayerStage::create()> @ imm = #-0x254
  3fe8a0: 4602         	mov	r2, r0
  3fe8a2: 9b03         	ldr	r3, [sp, #0xc]
  3fe8a4: f8c3 2114    	str.w	r2, [r3, #0x114]
  3fe8a8: 4b4e         	ldr	r3, [pc, #0x138]        @ 0x3fe9e4 <StageLayer::init()+0x218>
  3fe8aa: 58e3         	ldr	r3, [r4, r3]
  3fe8ac: 681b         	ldr	r3, [r3]
  3fe8ae: 4618         	mov	r0, r3
  3fe8b0: 2103         	movs	r1, #0x3
  3fe8b2: f7f9 f989    	bl	0x3f7bc8 <Sound::loadMapSounds(MapType)> @ imm = #-0x6cee
  3fe8b6: f7d3 fd07    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #-0x2c5f2
  3fe8ba: 4603         	mov	r3, r0
  3fe8bc: 2200         	movs	r2, #0x0
  3fe8be: f883 2028    	strb.w	r2, [r3, #0x28]
  3fe8c2: e01b         	b	0x3fe8fc <StageLayer::init()+0x130> @ imm = #0x36
  3fe8c4: f7ff fefa    	bl	0x3fe6bc <CoOpStage::create()> @ imm = #-0x20c
  3fe8c8: 4602         	mov	r2, r0
  3fe8ca: 9b03         	ldr	r3, [sp, #0xc]
  3fe8cc: f8c3 2114    	str.w	r2, [r3, #0x114]
  3fe8d0: 4b44         	ldr	r3, [pc, #0x110]        @ 0x3fe9e4 <StageLayer::init()+0x218>
  3fe8d2: 58e3         	ldr	r3, [r4, r3]
  3fe8d4: 681b         	ldr	r3, [r3]
  3fe8d6: 4618         	mov	r0, r3
  3fe8d8: 2102         	movs	r1, #0x2
  3fe8da: f7f9 f975    	bl	0x3f7bc8 <Sound::loadMapSounds(MapType)> @ imm = #-0x6d16
  3fe8de: e00d         	b	0x3fe8fc <StageLayer::init()+0x130> @ imm = #0x1a
  3fe8e0: f7ff fdd4    	bl	0x3fe48c <Stage::create()> @ imm = #-0x458
  3fe8e4: 4602         	mov	r2, r0
  3fe8e6: 9b03         	ldr	r3, [sp, #0xc]
  3fe8e8: f8c3 2114    	str.w	r2, [r3, #0x114]
  3fe8ec: 4b3d         	ldr	r3, [pc, #0xf4]         @ 0x3fe9e4 <StageLayer::init()+0x218>
  3fe8ee: 58e3         	ldr	r3, [r4, r3]
  3fe8f0: 681b         	ldr	r3, [r3]
  3fe8f2: 4618         	mov	r0, r3
  3fe8f4: 2102         	movs	r1, #0x2
  3fe8f6: f7f9 f967    	bl	0x3f7bc8 <Sound::loadMapSounds(MapType)> @ imm = #-0x6d32
  3fe8fa: bf00         	nop
  3fe8fc: 9b03         	ldr	r3, [sp, #0xc]
  3fe8fe: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3fe902: 4618         	mov	r0, r3
  3fe904: f199 faf0    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1995e0
  3fe908: 9b03         	ldr	r3, [sp, #0xc]
  3fe90a: 681b         	ldr	r3, [r3]
  3fe90c: 33cc         	adds	r3, #0xcc
  3fe90e: 681b         	ldr	r3, [r3]
  3fe910: 9903         	ldr	r1, [sp, #0xc]
  3fe912: 9a03         	ldr	r2, [sp, #0xc]
  3fe914: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  3fe918: 4608         	mov	r0, r1
  3fe91a: 4611         	mov	r1, r2
  3fe91c: 2201         	movs	r2, #0x1
  3fe91e: 4798         	blx	r3
  3fe920: 9b03         	ldr	r3, [sp, #0xc]
  3fe922: 681b         	ldr	r3, [r3]
  3fe924: 3390         	adds	r3, #0x90
  3fe926: 681b         	ldr	r3, [r3]
  3fe928: 9a03         	ldr	r2, [sp, #0xc]
  3fe92a: 4610         	mov	r0, r2
  3fe92c: 2100         	movs	r1, #0x0
  3fe92e: 4798         	blx	r3
  3fe930: 9b03         	ldr	r3, [sp, #0xc]
  3fe932: f503 7384    	add.w	r3, r3, #0x108
  3fe936: 4618         	mov	r0, r3
  3fe938: 4b2b         	ldr	r3, [pc, #0xac]         @ 0x3fe9e8 <StageLayer::init()+0x21c>
  3fe93a: 58e3         	ldr	r3, [r4, r3]
  3fe93c: 4619         	mov	r1, r3
  3fe93e: f194 fbd7    	bl	0x5930f0 <cocos2d::CCSize::operator=(cocos2d::CCSize const&)> @ imm = #0x1947ae
  3fe942: 9b03         	ldr	r3, [sp, #0xc]
  3fe944: 2200         	movs	r2, #0x0
  3fe946: f883 2118    	strb.w	r2, [r3, #0x118]
  3fe94a: f779 f8f9    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x86e0e
  3fe94e: 4603         	mov	r3, r0
  3fe950: 4618         	mov	r0, r3
  3fe952: 2101         	movs	r1, #0x1
  3fe954: f77b fa0c    	bl	0x379d70 <NetworkManager::setInGame(bool)> @ imm = #-0x84be8
  3fe958: f1e1 feaa    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1e1d54
  3fe95c: 4602         	mov	r2, r0
  3fe95e: 9b03         	ldr	r3, [sp, #0xc]
  3fe960: 4922         	ldr	r1, [pc, #0x88]         @ 0x3fe9ec <StageLayer::init()+0x220>
  3fe962: 5861         	ldr	r1, [r4, r1]
  3fe964: 9106         	str	r1, [sp, #0x18]
  3fe966: 2100         	movs	r1, #0x0
  3fe968: 9107         	str	r1, [sp, #0x1c]
  3fe96a: 4921         	ldr	r1, [pc, #0x84]         @ 0x3fe9f0 <StageLayer::init()+0x224>
  3fe96c: 4479         	add	r1, pc
  3fe96e: 9100         	str	r1, [sp]
  3fe970: 2100         	movs	r1, #0x0
  3fe972: 9101         	str	r1, [sp, #0x4]
  3fe974: 4610         	mov	r0, r2
  3fe976: 4619         	mov	r1, r3
  3fe978: ab06         	add	r3, sp, #0x18
  3fe97a: cb0c         	ldm	r3, {r2, r3}
  3fe97c: f1e1 ff34    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x1e1e68
  3fe980: f1e1 fe96    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1e1d2c
  3fe984: 4602         	mov	r2, r0
  3fe986: 9b03         	ldr	r3, [sp, #0xc]
  3fe988: 491a         	ldr	r1, [pc, #0x68]         @ 0x3fe9f4 <StageLayer::init()+0x228>
  3fe98a: 5861         	ldr	r1, [r4, r1]
  3fe98c: 9108         	str	r1, [sp, #0x20]
  3fe98e: 2100         	movs	r1, #0x0
  3fe990: 9109         	str	r1, [sp, #0x24]
  3fe992: 4919         	ldr	r1, [pc, #0x64]         @ 0x3fe9f8 <StageLayer::init()+0x22c>
  3fe994: 4479         	add	r1, pc
  3fe996: 9100         	str	r1, [sp]
  3fe998: 2100         	movs	r1, #0x0
  3fe99a: 9101         	str	r1, [sp, #0x4]
  3fe99c: 4610         	mov	r0, r2
  3fe99e: 4619         	mov	r1, r3
  3fe9a0: ab08         	add	r3, sp, #0x20
  3fe9a2: cb0c         	ldm	r3, {r2, r3}
  3fe9a4: f1e1 ff20    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x1e1e40
  3fe9a8: f1e1 fe82    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1e1d04
  3fe9ac: 4602         	mov	r2, r0
  3fe9ae: 9b03         	ldr	r3, [sp, #0xc]
  3fe9b0: 4912         	ldr	r1, [pc, #0x48]         @ 0x3fe9fc <StageLayer::init()+0x230>
  3fe9b2: 5861         	ldr	r1, [r4, r1]
  3fe9b4: 910a         	str	r1, [sp, #0x28]
  3fe9b6: 2100         	movs	r1, #0x0
  3fe9b8: 910b         	str	r1, [sp, #0x2c]
  3fe9ba: 4911         	ldr	r1, [pc, #0x44]         @ 0x3fea00 <StageLayer::init()+0x234>
  3fe9bc: 4479         	add	r1, pc
  3fe9be: 9100         	str	r1, [sp]
  3fe9c0: 2100         	movs	r1, #0x0
  3fe9c2: 9101         	str	r1, [sp, #0x4]
  3fe9c4: 4610         	mov	r0, r2
  3fe9c6: 4619         	mov	r1, r3
  3fe9c8: ab0a         	add	r3, sp, #0x28
  3fe9ca: cb0c         	ldm	r3, {r2, r3}
  3fe9cc: f1e1 ff0c    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x1e1e18
  3fe9d0: f02d fb6a    	bl	0x42c0a8 <ApplicationInterface::removeAdBanner()> @ imm = #0x2d6d4
  3fe9d4: 2301         	movs	r3, #0x1
  3fe9d6: 4618         	mov	r0, r3
  3fe9d8: b00c         	add	sp, #0x30
  3fe9da: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3fe9db); words below are literal-pool data ---
  3fe9dc: 4234         	tst	r4, r6
  3fe9de: 0053         	lsls	r3, r2, #0x1
  3fe9e0: d838         	bhi	0x3fea54 <StageLayer::~StageLayer()+0x50> @ imm = #0x70
  3fe9e2: ffff d730    	vqshl.u32	d29, d16, #0x1f
  3fe9e6: ffff d724    	<unknown>
  3fe9ea: ffff df48    	<unknown>
  3fe9ee: ffff afa8    	<unknown>
  3fe9f2: 003d         	movs	r5, r7
  3fe9f4: df4c         	svc	#0x4c
  3fe9f6: ffff af8c    	<unknown>
  3fe9fa: 003d         	movs	r5, r7
  3fe9fc: df50         	svc	#0x50
  3fe9fe: ffff af74    	vcvt.u32.f32	q13, q10, #0x1
  3fea02: 003d         	movs	r5, r7

// ==== StageLayer::~StageLayer
//      file offset 0x3fea04 (= ELF address; Ghidra 0x40ea04), 136 bytes, Thumb-2
  3fea04: b500         	push	{lr}
  3fea06: b083         	sub	sp, #0xc
  3fea08: 9001         	str	r0, [sp, #0x4]
  3fea0a: 4b1e         	ldr	r3, [pc, #0x78]         @ 0x3fea84 <StageLayer::~StageLayer()+0x80>
  3fea0c: 447b         	add	r3, pc
  3fea0e: 9a01         	ldr	r2, [sp, #0x4]
  3fea10: 491d         	ldr	r1, [pc, #0x74]         @ 0x3fea88 <StageLayer::~StageLayer()+0x84>
  3fea12: 5859         	ldr	r1, [r3, r1]
  3fea14: 3108         	adds	r1, #0x8
  3fea16: 6011         	str	r1, [r2]
  3fea18: 9a01         	ldr	r2, [sp, #0x4]
  3fea1a: 491b         	ldr	r1, [pc, #0x6c]         @ 0x3fea88 <StageLayer::~StageLayer()+0x84>
  3fea1c: 5859         	ldr	r1, [r3, r1]
  3fea1e: f501 7104    	add.w	r1, r1, #0x210
  3fea22: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  3fea26: 9a01         	ldr	r2, [sp, #0x4]
  3fea28: 4917         	ldr	r1, [pc, #0x5c]         @ 0x3fea88 <StageLayer::~StageLayer()+0x84>
  3fea2a: 5859         	ldr	r1, [r3, r1]
  3fea2c: f501 7110    	add.w	r1, r1, #0x240
  3fea30: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  3fea34: 9a01         	ldr	r2, [sp, #0x4]
  3fea36: 4914         	ldr	r1, [pc, #0x50]         @ 0x3fea88 <StageLayer::~StageLayer()+0x84>
  3fea38: 585b         	ldr	r3, [r3, r1]
  3fea3a: f503 7313    	add.w	r3, r3, #0x24c
  3fea3e: f8c2 30ec    	str.w	r3, [r2, #0xec]
  3fea42: f1e1 fe35    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1e1c6a
  3fea46: 4602         	mov	r2, r0
  3fea48: 9b01         	ldr	r3, [sp, #0x4]
  3fea4a: 4610         	mov	r0, r2
  3fea4c: 4619         	mov	r1, r3
  3fea4e: f1e1 ff67    	bl	0x5e0920 <cocos2d::CCNotificationCenter::removeAllObservers(cocos2d::CCObject*)> @ imm = #0x1e1ece
  3fea52: 9b01         	ldr	r3, [sp, #0x4]
  3fea54: 4618         	mov	r0, r3
  3fea56: f191 fde9    	bl	0x59062c <cocos2d::CCNode::removeAllChildren()> @ imm = #0x191bd2
  3fea5a: 9b01         	ldr	r3, [sp, #0x4]
  3fea5c: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3fea60: 4618         	mov	r0, r3
  3fea62: f199 fa29    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x199452
  3fea66: 9b01         	ldr	r3, [sp, #0x4]
  3fea68: 4618         	mov	r0, r3
  3fea6a: f1ae fb6f    	bl	0x5ad14c <cocos2d::CCLayer::~CCLayer()> @ imm = #0x1ae6de
  3fea6e: 2300         	movs	r3, #0x0
  3fea70: 2b00         	cmp	r3, #0x0
  3fea72: d002         	beq	0x3fea7a <StageLayer::~StageLayer()+0x76> @ imm = #0x4
  3fea74: 9801         	ldr	r0, [sp, #0x4]
  3fea76: f389 fb15    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x38962a
  3fea7a: 9b01         	ldr	r3, [sp, #0x4]
  3fea7c: 4618         	mov	r0, r3
  3fea7e: b003         	add	sp, #0xc
  3fea80: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3fea83); words below are literal-pool data ---
  3fea84: 3ffc         	subs	r7, #0xfc
  3fea86: 0053         	lsls	r3, r2, #0x1
  3fea88: df44         	svc	#0x44
  3fea8a: ffff f1a0    	<unknown>

// ==== StageLayer::~StageLayer
//      file offset 0x3fea8c (= ELF address; Ghidra 0x40ea8c), 8 bytes, Thumb-2
  3fea8c: f1a0 00e4    	sub.w	r0, r0, #0xe4
  3fea90: f7ff bfb8    	b.w	0x3fea04 <StageLayer::~StageLayer()> @ imm = #-0x90

// ==== StageLayer::~StageLayer
//      file offset 0x3fea94 (= ELF address; Ghidra 0x40ea94), 28 bytes, Thumb-2
  3fea94: b500         	push	{lr}
  3fea96: b083         	sub	sp, #0xc
  3fea98: 9001         	str	r0, [sp, #0x4]
  3fea9a: 9801         	ldr	r0, [sp, #0x4]
  3fea9c: f7ff ffb2    	bl	0x3fea04 <StageLayer::~StageLayer()> @ imm = #-0x9c
  3feaa0: 9801         	ldr	r0, [sp, #0x4]
  3feaa2: f389 faff    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3895fe
  3feaa6: 9b01         	ldr	r3, [sp, #0x4]
  3feaa8: 4618         	mov	r0, r3
  3feaaa: b003         	add	sp, #0xc
  3feaac: f85d fb04    	ldr	pc, [sp], #4

// ==== StageLayer::~StageLayer
//      file offset 0x3feab0 (= ELF address; Ghidra 0x40eab0), 8 bytes, Thumb-2
  3feab0: f1a0 00e4    	sub.w	r0, r0, #0xe4
  3feab4: f7ff bfee    	b.w	0x3fea94 <StageLayer::~StageLayer()> @ imm = #-0x24

// ==== StageLayer::onReady
//      file offset 0x3feab8 (= ELF address; Ghidra 0x40eab8), 52 bytes, Thumb-2
  3feab8: b500         	push	{lr}
  3feaba: b085         	sub	sp, #0x14
  3feabc: 9001         	str	r0, [sp, #0x4]
  3feabe: 9100         	str	r1, [sp]
  3feac0: 4908         	ldr	r1, [pc, #0x20]         @ 0x3feae4 <StageLayer::onReady(float)+0x2c>
  3feac2: 4479         	add	r1, pc
  3feac4: 9b01         	ldr	r3, [sp, #0x4]
  3feac6: 4a08         	ldr	r2, [pc, #0x20]         @ 0x3feae8 <StageLayer::onReady(float)+0x30>
  3feac8: 588a         	ldr	r2, [r1, r2]
  3feaca: 9202         	str	r2, [sp, #0x8]
  3feacc: 2200         	movs	r2, #0x0
  3feace: 9203         	str	r2, [sp, #0xc]
  3fead0: 4618         	mov	r0, r3
  3fead2: ab02         	add	r3, sp, #0x8
  3fead4: e893 0006    	ldm.w	r3, {r1, r2}
  3fead8: f192 fb8c    	bl	0x5911f4 <cocos2d::CCNode::schedule(void (cocos2d::CCObject::*)(float))> @ imm = #0x192718
  3feadc: b005         	add	sp, #0x14
  3feade: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3feae1); words below are literal-pool data ---
  3feae2: bf00         	nop
  3feae4: 3f46         	subs	r7, #0x46
  3feae6: 0053         	lsls	r3, r2, #0x1
  3feae8: df54         	svc	#0x54
  3feaea: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== StageLayer::onEnter
//      file offset 0x3feaec (= ELF address; Ghidra 0x40eaec), 208 bytes, Thumb-2
  3feaec: b530         	push	{r4, r5, lr}
  3feaee: b087         	sub	sp, #0x1c
  3feaf0: 9001         	str	r0, [sp, #0x4]
  3feaf2: 4c2e         	ldr	r4, [pc, #0xb8]         @ 0x3febac <StageLayer::onEnter()+0xc0>
  3feaf4: 447c         	add	r4, pc
  3feaf6: 9b01         	ldr	r3, [sp, #0x4]
  3feaf8: f04f 0200    	mov.w	r2, #0x0
  3feafc: f8c3 2110    	str.w	r2, [r3, #0x110]
  3feb00: ab03         	add	r3, sp, #0xc
  3feb02: 4618         	mov	r0, r3
  3feb04: f38b fc76    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x38b8ec
  3feb08: aa04         	add	r2, sp, #0x10
  3feb0a: ab03         	add	r3, sp, #0xc
  3feb0c: 4610         	mov	r0, r2
  3feb0e: 4a28         	ldr	r2, [pc, #0xa0]         @ 0x3febb0 <StageLayer::onEnter()+0xc4>
  3feb10: 447a         	add	r2, pc
  3feb12: 4611         	mov	r1, r2
  3feb14: 461a         	mov	r2, r3
  3feb16: f3b7 ffa3    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3b7f46
  3feb1a: ab04         	add	r3, sp, #0x10
  3feb1c: 4618         	mov	r0, r3
  3feb1e: f032 fe1f    	bl	0x431760 <InAppPurchaseBridge::isProductPurchased(std::string)> @ imm = #0x32c3e
  3feb22: 4603         	mov	r3, r0
  3feb24: f083 0301    	eor	r3, r3, #0x1
  3feb28: b2dd         	uxtb	r5, r3
  3feb2a: ab04         	add	r3, sp, #0x10
  3feb2c: 4618         	mov	r0, r3
  3feb2e: f3b6 fef1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b6de2
  3feb32: ab03         	add	r3, sp, #0xc
  3feb34: 4618         	mov	r0, r3
  3feb36: f38b fc61    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38b8c2
  3feb3a: 2d00         	cmp	r5, #0x0
  3feb3c: d001         	beq	0x3feb42 <StageLayer::onEnter()+0x56> @ imm = #0x2
  3feb3e: f02d fae1    	bl	0x42c104 <ApplicationInterface::prepareInterstitial()> @ imm = #0x2d5c2
  3feb42: f026 fab9    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #0x26572
  3feb46: 4603         	mov	r3, r0
  3feb48: 4618         	mov	r0, r3
  3feb4a: 2100         	movs	r1, #0x0
  3feb4c: f026 fdb2    	bl	0x4256b4 <LeaderBoardBridge::setTryLoadScores(bool)> @ imm = #0x26b64
  3feb50: f021 ff4e    	bl	0x4209f0 <AchievementBridge::sharedAchievementBridge()> @ imm = #0x21e9c
  3feb54: 4603         	mov	r3, r0
  3feb56: 4618         	mov	r0, r3
  3feb58: 2100         	movs	r1, #0x0
  3feb5a: f022 fb51    	bl	0x421200 <AchievementBridge::setTryLoadAchievements(bool)> @ imm = #0x226a2
  3feb5e: 9b01         	ldr	r3, [sp, #0x4]
  3feb60: 4618         	mov	r0, r3
  3feb62: f1ae fe7b    	bl	0x5ad85c <cocos2d::CCLayer::onEnter()> @ imm = #0x1aecf6
  3feb66: 9b01         	ldr	r3, [sp, #0x4]
  3feb68: 4a12         	ldr	r2, [pc, #0x48]         @ 0x3febb4 <StageLayer::onEnter()+0xc8>
  3feb6a: 58a2         	ldr	r2, [r4, r2]
  3feb6c: 9204         	str	r2, [sp, #0x10]
  3feb6e: 2200         	movs	r2, #0x0
  3feb70: 9205         	str	r2, [sp, #0x14]
  3feb72: 4618         	mov	r0, r3
  3feb74: ab04         	add	r3, sp, #0x10
  3feb76: e893 0006    	ldm.w	r3, {r1, r2}
  3feb7a: f04f 537a    	mov.w	r3, #0x3e800000
  3feb7e: f192 fb89    	bl	0x591294 <cocos2d::CCNode::scheduleOnce(void (cocos2d::CCObject::*)(float), float)> @ imm = #0x192712
  3feb82: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x3febb8 <StageLayer::onEnter()+0xcc>
  3feb84: 58e3         	ldr	r3, [r4, r3]
  3feb86: 681b         	ldr	r3, [r3]
  3feb88: 4618         	mov	r0, r3
  3feb8a: f7f9 f8bd    	bl	0x3f7d08 <Sound::stopMusic()> @ imm = #-0x6e86
  3feb8e: e00a         	b	0x3feba6 <StageLayer::onEnter()+0xba> @ imm = #0x14
  3feb90: ab04         	add	r3, sp, #0x10
  3feb92: 4618         	mov	r0, r3
  3feb94: f3b6 febe    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b6d7c
  3feb98: e7ff         	b	0x3feb9a <StageLayer::onEnter()+0xae> @ imm = #-0x2
  3feb9a: ab03         	add	r3, sp, #0xc
  3feb9c: 4618         	mov	r0, r3
  3feb9e: f38b fc2d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38b85a
  3feba2: f389 fa83    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x389506
  3feba6: b007         	add	sp, #0x1c
  3feba8: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3feba9); words below are literal-pool data ---
  3febaa: bf00         	nop
  3febac: 3f14         	subs	r7, #0x14
  3febae: 0053         	lsls	r3, r2, #0x1
  3febb0: ae2c         	add	r6, sp, #0xb0
  3febb2: 003d         	movs	r5, r7
  3febb4: df58         	svc	#0x58
  3febb6: ffff d730    	vqshl.u32	d29, d16, #0x1f
  3febba: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== StageLayer::onExit
//      file offset 0x3febbc (= ELF address; Ghidra 0x40ebbc), 148 bytes, Thumb-2
  3febbc: b510         	push	{r4, lr}
  3febbe: b084         	sub	sp, #0x10
  3febc0: 9001         	str	r0, [sp, #0x4]
  3febc2: 9b01         	ldr	r3, [sp, #0x4]
  3febc4: 4618         	mov	r0, r3
  3febc6: f192 fb97    	bl	0x5912f8 <cocos2d::CCNode::unscheduleAllSelectors()> @ imm = #0x19272e
  3febca: f026 fa75    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #0x264ea
  3febce: 4603         	mov	r3, r0
  3febd0: 4618         	mov	r0, r3
  3febd2: 2101         	movs	r1, #0x1
  3febd4: f026 fd6e    	bl	0x4256b4 <LeaderBoardBridge::setTryLoadScores(bool)> @ imm = #0x26adc
  3febd8: f021 ff0a    	bl	0x4209f0 <AchievementBridge::sharedAchievementBridge()> @ imm = #0x21e14
  3febdc: 4603         	mov	r3, r0
  3febde: 4618         	mov	r0, r3
  3febe0: 2101         	movs	r1, #0x1
  3febe2: f022 fb0d    	bl	0x421200 <AchievementBridge::setTryLoadAchievements(bool)> @ imm = #0x2261a
  3febe6: 9b01         	ldr	r3, [sp, #0x4]
  3febe8: 4618         	mov	r0, r3
  3febea: f1ae fe75    	bl	0x5ad8d8 <cocos2d::CCLayer::onExit()> @ imm = #0x1aecea
  3febee: ab02         	add	r3, sp, #0x8
  3febf0: 4618         	mov	r0, r3
  3febf2: f38b fbff    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x38b7fe
  3febf6: aa03         	add	r2, sp, #0xc
  3febf8: ab02         	add	r3, sp, #0x8
  3febfa: 4610         	mov	r0, r2
  3febfc: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x3fec4c <StageLayer::onExit()+0x90>
  3febfe: 447a         	add	r2, pc
  3fec00: 4611         	mov	r1, r2
  3fec02: 461a         	mov	r2, r3
  3fec04: f3b7 ff2c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3b7e58
  3fec08: ab03         	add	r3, sp, #0xc
  3fec0a: 4618         	mov	r0, r3
  3fec0c: f032 fda8    	bl	0x431760 <InAppPurchaseBridge::isProductPurchased(std::string)> @ imm = #0x32b50
  3fec10: 4603         	mov	r3, r0
  3fec12: f083 0301    	eor	r3, r3, #0x1
  3fec16: b2dc         	uxtb	r4, r3
  3fec18: ab03         	add	r3, sp, #0xc
  3fec1a: 4618         	mov	r0, r3
  3fec1c: f3b6 fe7a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b6cf4
  3fec20: ab02         	add	r3, sp, #0x8
  3fec22: 4618         	mov	r0, r3
  3fec24: f38b fbea    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38b7d4
  3fec28: 2c00         	cmp	r4, #0x0
  3fec2a: d00d         	beq	0x3fec48 <StageLayer::onExit()+0x8c> @ imm = #0x1a
  3fec2c: f02d fa98    	bl	0x42c160 <ApplicationInterface::showInterstitial()> @ imm = #0x2d530
  3fec30: e00a         	b	0x3fec48 <StageLayer::onExit()+0x8c> @ imm = #0x14
  3fec32: ab03         	add	r3, sp, #0xc
  3fec34: 4618         	mov	r0, r3
  3fec36: f3b6 fe6d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b6cda
  3fec3a: e7ff         	b	0x3fec3c <StageLayer::onExit()+0x80> @ imm = #-0x2
  3fec3c: ab02         	add	r3, sp, #0x8
  3fec3e: 4618         	mov	r0, r3
  3fec40: f38b fbdc    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38b7b8
  3fec44: f389 fa32    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x389464
  3fec48: b004         	add	sp, #0x10
  3fec4a: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3fec4b); words below are literal-pool data ---
  3fec4c: ad3e         	add	r5, sp, #0xf8
  3fec4e: 003d         	movs	r5, r7

// ==== StageLayer::onQuitGame
//      file offset 0x3fec50 (= ELF address; Ghidra 0x40ec50), 360 bytes, Thumb-2
  3fec50: b530         	push	{r4, r5, lr}
  3fec52: b083         	sub	sp, #0xc
  3fec54: 9001         	str	r0, [sp, #0x4]
  3fec56: 9100         	str	r1, [sp]
  3fec58: 4c4f         	ldr	r4, [pc, #0x13c]        @ 0x3fed98 <StageLayer::onQuitGame(cocos2d::CCObject*)+0x148>
  3fec5a: 447c         	add	r4, pc
  3fec5c: 9b01         	ldr	r3, [sp, #0x4]
  3fec5e: f893 3118    	ldrb.w	r3, [r3, #0x118]
  3fec62: 2b00         	cmp	r3, #0x0
  3fec64: d000         	beq	0x3fec68 <StageLayer::onQuitGame(cocos2d::CCObject*)+0x18> @ imm = #0x0
  3fec66: e094         	b	0x3fed92 <StageLayer::onQuitGame(cocos2d::CCObject*)+0x142> @ imm = #0x128
  3fec68: 9b01         	ldr	r3, [sp, #0x4]
  3fec6a: 2201         	movs	r2, #0x1
  3fec6c: f883 2118    	strb.w	r2, [r3, #0x118]
  3fec70: 4b4a         	ldr	r3, [pc, #0x128]        @ 0x3fed9c <StageLayer::onQuitGame(cocos2d::CCObject*)+0x14c>
  3fec72: 58e3         	ldr	r3, [r4, r3]
  3fec74: 2200         	movs	r2, #0x0
  3fec76: 701a         	strb	r2, [r3]
  3fec78: f19c fc7c    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x19c8f8
  3fec7c: 4603         	mov	r3, r0
  3fec7e: 4618         	mov	r0, r3
  3fec80: f19d fd9e    	bl	0x59c7c0 <cocos2d::CCDirector::resume()> @ imm = #0x19db3c
  3fec84: f778 ff5c    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x87148
  3fec88: 4603         	mov	r3, r0
  3fec8a: 4618         	mov	r0, r3
  3fec8c: f77b f87c    	bl	0x379d88 <NetworkManager::isInGame()> @ imm = #-0x84f08
  3fec90: 4603         	mov	r3, r0
  3fec92: 2b00         	cmp	r3, #0x0
  3fec94: d006         	beq	0x3feca4 <StageLayer::onQuitGame(cocos2d::CCObject*)+0x54> @ imm = #0xc
  3fec96: 4b42         	ldr	r3, [pc, #0x108]        @ 0x3feda0 <StageLayer::onQuitGame(cocos2d::CCObject*)+0x150>
  3fec98: 58e3         	ldr	r3, [r4, r3]
  3fec9a: 681b         	ldr	r3, [r3]
  3fec9c: 2b04         	cmp	r3, #0x4
  3fec9e: d101         	bne	0x3feca4 <StageLayer::onQuitGame(cocos2d::CCObject*)+0x54> @ imm = #0x2
  3feca0: 2301         	movs	r3, #0x1
  3feca2: e000         	b	0x3feca6 <StageLayer::onQuitGame(cocos2d::CCObject*)+0x56> @ imm = #0x0
  3feca4: 2300         	movs	r3, #0x0
  3feca6: 2b00         	cmp	r3, #0x0
  3feca8: d005         	beq	0x3fecb6 <StageLayer::onQuitGame(cocos2d::CCObject*)+0x66> @ imm = #0xa
  3fecaa: f7d3 fb0d    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #-0x2c9e6
  3fecae: 4603         	mov	r3, r0
  3fecb0: 4618         	mov	r0, r3
  3fecb2: f7d3 fed3    	bl	0x3d2a5c <ScoreKeeper::applyPenalty()> @ imm = #-0x2c25a
  3fecb6: f778 ff43    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x8717a
  3fecba: 4603         	mov	r3, r0
  3fecbc: 4618         	mov	r0, r3
  3fecbe: 2100         	movs	r1, #0x0
  3fecc0: f77b f856    	bl	0x379d70 <NetworkManager::setInGame(bool)> @ imm = #-0x84f54
  3fecc4: f778 ff3c    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x87188
  3fecc8: 4603         	mov	r3, r0
  3fecca: 4618         	mov	r0, r3
  3feccc: f77a ffea    	bl	0x379ca4 <NetworkManager::endMatch()> @ imm = #-0x8502c
  3fecd0: 4b33         	ldr	r3, [pc, #0xcc]         @ 0x3feda0 <StageLayer::onQuitGame(cocos2d::CCObject*)+0x150>
  3fecd2: 58e3         	ldr	r3, [r4, r3]
  3fecd4: 681b         	ldr	r3, [r3]
  3fecd6: 2b03         	cmp	r3, #0x3
  3fecd8: d002         	beq	0x3fece0 <StageLayer::onQuitGame(cocos2d::CCObject*)+0x90> @ imm = #0x4
  3fecda: 2b04         	cmp	r3, #0x4
  3fecdc: d013         	beq	0x3fed06 <StageLayer::onQuitGame(cocos2d::CCObject*)+0xb6> @ imm = #0x26
  3fecde: e045         	b	0x3fed6c <StageLayer::onQuitGame(cocos2d::CCObject*)+0x11c> @ imm = #0x8a
  3fece0: f19c fc48    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x19c890
  3fece4: 4604         	mov	r4, r0
  3fece6: 4b2f         	ldr	r3, [pc, #0xbc]         @ 0x3feda4 <StageLayer::onQuitGame(cocos2d::CCObject*)+0x154>
  3fece8: 447b         	add	r3, pc
  3fecea: 681d         	ldr	r5, [r3]
  3fecec: f737 fbe6    	bl	0x3364bc <GameTypeLayer::scene()> @ imm = #-0xc8834
  3fecf0: 4603         	mov	r3, r0
  3fecf2: 4628         	mov	r0, r5
  3fecf4: 4619         	mov	r1, r3
  3fecf6: f1b3 ffc5    	bl	0x5b2c84 <cocos2d::CCTransitionFade::create(float, cocos2d::CCScene*)> @ imm = #0x1b3f8a
  3fecfa: 4603         	mov	r3, r0
  3fecfc: 4620         	mov	r0, r4
  3fecfe: 4619         	mov	r1, r3
  3fed00: f19d fb2c    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x19d658
  3fed04: e045         	b	0x3fed92 <StageLayer::onQuitGame(cocos2d::CCObject*)+0x142> @ imm = #0x8a
  3fed06: 4b28         	ldr	r3, [pc, #0xa0]         @ 0x3feda8 <StageLayer::onQuitGame(cocos2d::CCObject*)+0x158>
  3fed08: 58e3         	ldr	r3, [r4, r3]
  3fed0a: 2201         	movs	r2, #0x1
  3fed0c: 601a         	str	r2, [r3]
  3fed0e: f778 ff17    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x871d2
  3fed12: 4603         	mov	r3, r0
  3fed14: 4618         	mov	r0, r3
  3fed16: f77b fd05    	bl	0x37a724 <NetworkManager::isUsingHostedServer()> @ imm = #-0x845f6
  3fed1a: 4603         	mov	r3, r0
  3fed1c: 2b00         	cmp	r3, #0x0
  3fed1e: d012         	beq	0x3fed46 <StageLayer::onQuitGame(cocos2d::CCObject*)+0xf6> @ imm = #0x24
  3fed20: f19c fc28    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x19c850
  3fed24: 4604         	mov	r4, r0
  3fed26: 4b21         	ldr	r3, [pc, #0x84]         @ 0x3fedac <StageLayer::onQuitGame(cocos2d::CCObject*)+0x15c>
  3fed28: 447b         	add	r3, pc
  3fed2a: 681d         	ldr	r5, [r3]
  3fed2c: f76a fed2    	bl	0x369ad4 <MenuLayer::scene()> @ imm = #-0x9525c
  3fed30: 4603         	mov	r3, r0
  3fed32: 4628         	mov	r0, r5
  3fed34: 4619         	mov	r1, r3
  3fed36: f1b3 ffa5    	bl	0x5b2c84 <cocos2d::CCTransitionFade::create(float, cocos2d::CCScene*)> @ imm = #0x1b3f4a
  3fed3a: 4603         	mov	r3, r0
  3fed3c: 4620         	mov	r0, r4
  3fed3e: 4619         	mov	r1, r3
  3fed40: f19d fb0c    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x19d618
  3fed44: e025         	b	0x3fed92 <StageLayer::onQuitGame(cocos2d::CCObject*)+0x142> @ imm = #0x4a
  3fed46: f19c fc15    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x19c82a
  3fed4a: 4604         	mov	r4, r0
  3fed4c: 4b18         	ldr	r3, [pc, #0x60]         @ 0x3fedb0 <StageLayer::onQuitGame(cocos2d::CCObject*)+0x160>
  3fed4e: 447b         	add	r3, pc
  3fed50: 681d         	ldr	r5, [r3]
  3fed52: f737 fbb3    	bl	0x3364bc <GameTypeLayer::scene()> @ imm = #-0xc889a
  3fed56: 4603         	mov	r3, r0
  3fed58: 4628         	mov	r0, r5
  3fed5a: 4619         	mov	r1, r3
  3fed5c: f1b3 ff92    	bl	0x5b2c84 <cocos2d::CCTransitionFade::create(float, cocos2d::CCScene*)> @ imm = #0x1b3f24
  3fed60: 4603         	mov	r3, r0
  3fed62: 4620         	mov	r0, r4
  3fed64: 4619         	mov	r1, r3
  3fed66: f19d faf9    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x19d5f2
  3fed6a: e012         	b	0x3fed92 <StageLayer::onQuitGame(cocos2d::CCObject*)+0x142> @ imm = #0x24
  3fed6c: f19c fc02    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x19c804
  3fed70: 4604         	mov	r4, r0
  3fed72: 4b10         	ldr	r3, [pc, #0x40]         @ 0x3fedb4 <StageLayer::onQuitGame(cocos2d::CCObject*)+0x164>
  3fed74: 447b         	add	r3, pc
  3fed76: 681d         	ldr	r5, [r3]
  3fed78: f76a feac    	bl	0x369ad4 <MenuLayer::scene()> @ imm = #-0x952a8
  3fed7c: 4603         	mov	r3, r0
  3fed7e: 4628         	mov	r0, r5
  3fed80: 4619         	mov	r1, r3
  3fed82: f1b3 ff7f    	bl	0x5b2c84 <cocos2d::CCTransitionFade::create(float, cocos2d::CCScene*)> @ imm = #0x1b3efe
  3fed86: 4603         	mov	r3, r0
  3fed88: 4620         	mov	r0, r4
  3fed8a: 4619         	mov	r1, r3
  3fed8c: f19d fae6    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x19d5cc
  3fed90: bf00         	nop
  3fed92: b003         	add	sp, #0xc
  3fed94: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3fed95); words below are literal-pool data ---
  3fed96: bf00         	nop
  3fed98: 3dae         	subs	r5, #0xae
  3fed9a: 0053         	lsls	r3, r2, #0x1
  3fed9c: db18         	blt	0x3fedd0 <StageLayer::onEndedGame(cocos2d::CCObject*)+0x18> @ imm = #0x30
  3fed9e: ffff d838    	vqshrun.s64	d29, q12, #0x1
  3feda2: ffff 49b0    	<unknown>
  3feda6: 0053         	lsls	r3, r2, #0x1
  3feda8: dd4c         	ble	0x3fee44 <StageLayer::onEndedGame(cocos2d::CCObject*)+0x8c> @ imm = #0x98
  3fedaa: ffff 4970    	vqrshrn.u64	d20, q8, #0x1
  3fedae: 0053         	lsls	r3, r2, #0x1
  3fedb0: 494a         	ldr	r1, [pc, #0x128]        @ 0x3feedc <StageLayer::onCompleteGame(cocos2d::CCObject*)+0x38>
  3fedb2: 0053         	lsls	r3, r2, #0x1
  3fedb4: 4924         	ldr	r1, [pc, #0x90]         @ 0x3fee48 <StageLayer::onEndedGame(cocos2d::CCObject*)+0x90>
  3fedb6: 0053         	lsls	r3, r2, #0x1

// ==== StageLayer::onEndedGame
//      file offset 0x3fedb8 (= ELF address; Ghidra 0x40edb8), 236 bytes, Thumb-2
  3fedb8: b530         	push	{r4, r5, lr}
  3fedba: b083         	sub	sp, #0xc
  3fedbc: 9001         	str	r0, [sp, #0x4]
  3fedbe: 9100         	str	r1, [sp]
  3fedc0: 4c31         	ldr	r4, [pc, #0xc4]         @ 0x3fee88 <StageLayer::onEndedGame(cocos2d::CCObject*)+0xd0>
  3fedc2: 447c         	add	r4, pc
  3fedc4: 9b01         	ldr	r3, [sp, #0x4]
  3fedc6: f893 3118    	ldrb.w	r3, [r3, #0x118]
  3fedca: 2b00         	cmp	r3, #0x0
  3fedcc: d000         	beq	0x3fedd0 <StageLayer::onEndedGame(cocos2d::CCObject*)+0x18> @ imm = #0x0
  3fedce: e059         	b	0x3fee84 <StageLayer::onEndedGame(cocos2d::CCObject*)+0xcc> @ imm = #0xb2
  3fedd0: 9b01         	ldr	r3, [sp, #0x4]
  3fedd2: 2201         	movs	r2, #0x1
  3fedd4: f883 2118    	strb.w	r2, [r3, #0x118]
  3fedd8: 4b2c         	ldr	r3, [pc, #0xb0]         @ 0x3fee8c <StageLayer::onEndedGame(cocos2d::CCObject*)+0xd4>
  3fedda: 58e3         	ldr	r3, [r4, r3]
  3feddc: 2200         	movs	r2, #0x0
  3fedde: 701a         	strb	r2, [r3]
  3fede0: f19c fbc8    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x19c790
  3fede4: 4603         	mov	r3, r0
  3fede6: 4618         	mov	r0, r3
  3fede8: f19d fcea    	bl	0x59c7c0 <cocos2d::CCDirector::resume()> @ imm = #0x19d9d4
  3fedec: f778 fea8    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x872b0
  3fedf0: 4603         	mov	r3, r0
  3fedf2: 4618         	mov	r0, r3
  3fedf4: 2100         	movs	r1, #0x0
  3fedf6: f77a ffbb    	bl	0x379d70 <NetworkManager::setInGame(bool)> @ imm = #-0x8508a
  3fedfa: 4b25         	ldr	r3, [pc, #0x94]         @ 0x3fee90 <StageLayer::onEndedGame(cocos2d::CCObject*)+0xd8>
  3fedfc: 58e3         	ldr	r3, [r4, r3]
  3fedfe: 681b         	ldr	r3, [r3]
  3fee00: 2b03         	cmp	r3, #0x3
  3fee02: d002         	beq	0x3fee0a <StageLayer::onEndedGame(cocos2d::CCObject*)+0x52> @ imm = #0x4
  3fee04: 2b04         	cmp	r3, #0x4
  3fee06: d013         	beq	0x3fee30 <StageLayer::onEndedGame(cocos2d::CCObject*)+0x78> @ imm = #0x26
  3fee08: e029         	b	0x3fee5e <StageLayer::onEndedGame(cocos2d::CCObject*)+0xa6> @ imm = #0x52
  3fee0a: f19c fbb3    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x19c766
  3fee0e: 4604         	mov	r4, r0
  3fee10: 4b20         	ldr	r3, [pc, #0x80]         @ 0x3fee94 <StageLayer::onEndedGame(cocos2d::CCObject*)+0xdc>
  3fee12: 447b         	add	r3, pc
  3fee14: 681d         	ldr	r5, [r3]
  3fee16: f752 fbd9    	bl	0x3515cc <LobbyLayer::scene()> @ imm = #-0xad84e
  3fee1a: 4603         	mov	r3, r0
  3fee1c: 4628         	mov	r0, r5
  3fee1e: 4619         	mov	r1, r3
  3fee20: f1b3 ff30    	bl	0x5b2c84 <cocos2d::CCTransitionFade::create(float, cocos2d::CCScene*)> @ imm = #0x1b3e60
  3fee24: 4603         	mov	r3, r0
  3fee26: 4620         	mov	r0, r4
  3fee28: 4619         	mov	r1, r3
  3fee2a: f19d fa97    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x19d52e
  3fee2e: e029         	b	0x3fee84 <StageLayer::onEndedGame(cocos2d::CCObject*)+0xcc> @ imm = #0x52
  3fee30: 4b19         	ldr	r3, [pc, #0x64]         @ 0x3fee98 <StageLayer::onEndedGame(cocos2d::CCObject*)+0xe0>
  3fee32: 58e3         	ldr	r3, [r4, r3]
  3fee34: 2202         	movs	r2, #0x2
  3fee36: 601a         	str	r2, [r3]
  3fee38: f19c fb9c    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x19c738
  3fee3c: 4604         	mov	r4, r0
  3fee3e: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x3fee9c <StageLayer::onEndedGame(cocos2d::CCObject*)+0xe4>
  3fee40: 447b         	add	r3, pc
  3fee42: 681d         	ldr	r5, [r3]
  3fee44: f752 fbc2    	bl	0x3515cc <LobbyLayer::scene()> @ imm = #-0xad87c
  3fee48: 4603         	mov	r3, r0
  3fee4a: 4628         	mov	r0, r5
  3fee4c: 4619         	mov	r1, r3
  3fee4e: f1b3 ff19    	bl	0x5b2c84 <cocos2d::CCTransitionFade::create(float, cocos2d::CCScene*)> @ imm = #0x1b3e32
  3fee52: 4603         	mov	r3, r0
  3fee54: 4620         	mov	r0, r4
  3fee56: 4619         	mov	r1, r3
  3fee58: f19d fa80    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x19d500
  3fee5c: e012         	b	0x3fee84 <StageLayer::onEndedGame(cocos2d::CCObject*)+0xcc> @ imm = #0x24
  3fee5e: f19c fb89    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x19c712
  3fee62: 4604         	mov	r4, r0
  3fee64: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x3feea0 <StageLayer::onEndedGame(cocos2d::CCObject*)+0xe8>
  3fee66: 447b         	add	r3, pc
  3fee68: 681d         	ldr	r5, [r3]
  3fee6a: f76a fe33    	bl	0x369ad4 <MenuLayer::scene()> @ imm = #-0x9539a
  3fee6e: 4603         	mov	r3, r0
  3fee70: 4628         	mov	r0, r5
  3fee72: 4619         	mov	r1, r3
  3fee74: f1b3 ff06    	bl	0x5b2c84 <cocos2d::CCTransitionFade::create(float, cocos2d::CCScene*)> @ imm = #0x1b3e0c
  3fee78: 4603         	mov	r3, r0
  3fee7a: 4620         	mov	r0, r4
  3fee7c: 4619         	mov	r1, r3
  3fee7e: f19d fa6d    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x19d4da
  3fee82: bf00         	nop
  3fee84: b003         	add	sp, #0xc
  3fee86: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3fee87); words below are literal-pool data ---
  3fee88: 3c46         	subs	r4, #0x46
  3fee8a: 0053         	lsls	r3, r2, #0x1
  3fee8c: db18         	blt	0x3feec0 <StageLayer::onCompleteGame(cocos2d::CCObject*)+0x1c> @ imm = #0x30
  3fee8e: ffff d838    	vqshrun.s64	d29, q12, #0x1
  3fee92: ffff 4886    	vtbl.8	d20, {d31}, d6
  3fee96: 0053         	lsls	r3, r2, #0x1
  3fee98: dd4c         	ble	0x3fef34 <StageLayer::onCompleteGame(cocos2d::CCObject*)+0x90> @ imm = #0x98
  3fee9a: ffff 4858    	vqrshrun.s64	d20, q4, #0x1
  3fee9e: 0053         	lsls	r3, r2, #0x1
  3feea0: 4832         	ldr	r0, [pc, #0xc8]         @ 0x3fef6c <StageLayer::onCompleteGame(cocos2d::CCObject*)+0xc8>
  3feea2: 0053         	lsls	r3, r2, #0x1

// ==== StageLayer::onCompleteGame
//      file offset 0x3feea4 (= ELF address; Ghidra 0x40eea4), 260 bytes, Thumb-2
  3feea4: b530         	push	{r4, r5, lr}
  3feea6: b083         	sub	sp, #0xc
  3feea8: 9001         	str	r0, [sp, #0x4]
  3feeaa: 9100         	str	r1, [sp]
  3feeac: 4c37         	ldr	r4, [pc, #0xdc]         @ 0x3fef8c <StageLayer::onCompleteGame(cocos2d::CCObject*)+0xe8>
  3feeae: 447c         	add	r4, pc
  3feeb0: 9b01         	ldr	r3, [sp, #0x4]
  3feeb2: f893 3118    	ldrb.w	r3, [r3, #0x118]
  3feeb6: 2b00         	cmp	r3, #0x0
  3feeb8: d000         	beq	0x3feebc <StageLayer::onCompleteGame(cocos2d::CCObject*)+0x18> @ imm = #0x0
  3feeba: e064         	b	0x3fef86 <StageLayer::onCompleteGame(cocos2d::CCObject*)+0xe2> @ imm = #0xc8
  3feebc: 9b01         	ldr	r3, [sp, #0x4]
  3feebe: 2201         	movs	r2, #0x1
  3feec0: f883 2118    	strb.w	r2, [r3, #0x118]
  3feec4: 4b32         	ldr	r3, [pc, #0xc8]         @ 0x3fef90 <StageLayer::onCompleteGame(cocos2d::CCObject*)+0xec>
  3feec6: 58e3         	ldr	r3, [r4, r3]
  3feec8: 2200         	movs	r2, #0x0
  3feeca: 701a         	strb	r2, [r3]
  3feecc: f19c fb52    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x19c6a4
  3feed0: 4603         	mov	r3, r0
  3feed2: 4618         	mov	r0, r3
  3feed4: f19d fc74    	bl	0x59c7c0 <cocos2d::CCDirector::resume()> @ imm = #0x19d8e8
  3feed8: f778 fe32    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x8739c
  3feedc: 4603         	mov	r3, r0
  3feede: 4618         	mov	r0, r3
  3feee0: 2100         	movs	r1, #0x0
  3feee2: f77a ff45    	bl	0x379d70 <NetworkManager::setInGame(bool)> @ imm = #-0x85176
  3feee6: 4b2b         	ldr	r3, [pc, #0xac]         @ 0x3fef94 <StageLayer::onCompleteGame(cocos2d::CCObject*)+0xf0>
  3feee8: 58e3         	ldr	r3, [r4, r3]
  3feeea: 681b         	ldr	r3, [r3]
  3feeec: 3b02         	subs	r3, #0x2
  3feeee: 2b03         	cmp	r3, #0x3
  3feef0: d836         	bhi	0x3fef60 <StageLayer::onCompleteGame(cocos2d::CCObject*)+0xbc> @ imm = #0x6c
  3feef2: a102         	adr	r1, #8 <StageLayer::onCompleteGame(cocos2d::CCObject*)+0x54>
  3feef4: f851 2023    	ldr.w	r2, [r1, r3, lsl #2]
  3feef8: 4411         	add	r1, r2
  3feefa: 4708         	bx	r1
  3feefc: 0011         	movs	r1, r2
  3feefe: 0000         	movs	r0, r0
  3fef00: 0011         	movs	r1, r2
  3fef02: 0000         	movs	r0, r0
  3fef04: 0037         	movs	r7, r6
  3fef06: 0000         	movs	r0, r0
  3fef08: 0011         	movs	r1, r2
  3fef0a: 0000         	movs	r0, r0
  3fef0c: f19c fb32    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x19c664
  3fef10: 4604         	mov	r4, r0
  3fef12: 4b21         	ldr	r3, [pc, #0x84]         @ 0x3fef98 <StageLayer::onCompleteGame(cocos2d::CCObject*)+0xf4>
  3fef14: 447b         	add	r3, pc
  3fef16: 681d         	ldr	r5, [r3]
  3fef18: f752 fb58    	bl	0x3515cc <LobbyLayer::scene()> @ imm = #-0xad950
  3fef1c: 4603         	mov	r3, r0
  3fef1e: 4628         	mov	r0, r5
  3fef20: 4619         	mov	r1, r3
  3fef22: f1b3 feaf    	bl	0x5b2c84 <cocos2d::CCTransitionFade::create(float, cocos2d::CCScene*)> @ imm = #0x1b3d5e
  3fef26: 4603         	mov	r3, r0
  3fef28: 4620         	mov	r0, r4
  3fef2a: 4619         	mov	r1, r3
  3fef2c: f19d fa16    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x19d42c
  3fef30: e029         	b	0x3fef86 <StageLayer::onCompleteGame(cocos2d::CCObject*)+0xe2> @ imm = #0x52
  3fef32: 4b1a         	ldr	r3, [pc, #0x68]         @ 0x3fef9c <StageLayer::onCompleteGame(cocos2d::CCObject*)+0xf8>
  3fef34: 58e3         	ldr	r3, [r4, r3]
  3fef36: 2203         	movs	r2, #0x3
  3fef38: 601a         	str	r2, [r3]
  3fef3a: f19c fb1b    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x19c636
  3fef3e: 4604         	mov	r4, r0
  3fef40: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x3fefa0 <StageLayer::onCompleteGame(cocos2d::CCObject*)+0xfc>
  3fef42: 447b         	add	r3, pc
  3fef44: 681d         	ldr	r5, [r3]
  3fef46: f752 fb41    	bl	0x3515cc <LobbyLayer::scene()> @ imm = #-0xad97e
  3fef4a: 4603         	mov	r3, r0
  3fef4c: 4628         	mov	r0, r5
  3fef4e: 4619         	mov	r1, r3
  3fef50: f1b3 fe98    	bl	0x5b2c84 <cocos2d::CCTransitionFade::create(float, cocos2d::CCScene*)> @ imm = #0x1b3d30
  3fef54: 4603         	mov	r3, r0
  3fef56: 4620         	mov	r0, r4
  3fef58: 4619         	mov	r1, r3
  3fef5a: f19d f9ff    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x19d3fe
  3fef5e: e012         	b	0x3fef86 <StageLayer::onCompleteGame(cocos2d::CCObject*)+0xe2> @ imm = #0x24
  3fef60: f19c fb08    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x19c610
  3fef64: 4604         	mov	r4, r0
  3fef66: 4b0f         	ldr	r3, [pc, #0x3c]         @ 0x3fefa4 <StageLayer::onCompleteGame(cocos2d::CCObject*)+0x100>
  3fef68: 447b         	add	r3, pc
  3fef6a: 681d         	ldr	r5, [r3]
  3fef6c: f76a fdb2    	bl	0x369ad4 <MenuLayer::scene()> @ imm = #-0x9549c
  3fef70: 4603         	mov	r3, r0
  3fef72: 4628         	mov	r0, r5
  3fef74: 4619         	mov	r1, r3
  3fef76: f1b3 fe85    	bl	0x5b2c84 <cocos2d::CCTransitionFade::create(float, cocos2d::CCScene*)> @ imm = #0x1b3d0a
  3fef7a: 4603         	mov	r3, r0
  3fef7c: 4620         	mov	r0, r4
  3fef7e: 4619         	mov	r1, r3
  3fef80: f19d f9ec    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x19d3d8
  3fef84: bf00         	nop
  3fef86: b003         	add	sp, #0xc
  3fef88: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3fef89); words below are literal-pool data ---
  3fef8a: bf00         	nop
  3fef8c: 3b5a         	subs	r3, #0x5a
  3fef8e: 0053         	lsls	r3, r2, #0x1
  3fef90: db18         	blt	0x3fefc4 <StageLayer::updateStep(float)+0x1c> @ imm = #0x30
  3fef92: ffff d838    	vqshrun.s64	d29, q12, #0x1
  3fef96: ffff 4784    	<unknown>
  3fef9a: 0053         	lsls	r3, r2, #0x1
  3fef9c: dd4c         	ble	0x3ff038 <StageLayer::updateStep(float)+0x90> @ imm = #0x98
  3fef9e: ffff 4756    	vqshl.u32	q10, q3, #0x1f
  3fefa2: 0053         	lsls	r3, r2, #0x1
  3fefa4: 4730         	bx	r6
  3fefa6: 0053         	lsls	r3, r2, #0x1

// ==== StageLayer::updateStep
//      file offset 0x3fefa8 (= ELF address; Ghidra 0x40efa8), 196 bytes, Thumb-2
  3fefa8: b510         	push	{r4, lr}
  3fefaa: b082         	sub	sp, #0x8
  3fefac: 9001         	str	r0, [sp, #0x4]
  3fefae: 9100         	str	r1, [sp]
  3fefb0: 4c2c         	ldr	r4, [pc, #0xb0]         @ 0x3ff064 <StageLayer::updateStep(float)+0xbc>
  3fefb2: 447c         	add	r4, pc
  3fefb4: 4b2c         	ldr	r3, [pc, #0xb0]         @ 0x3ff068 <StageLayer::updateStep(float)+0xc0>
  3fefb6: 58e3         	ldr	r3, [r4, r3]
  3fefb8: 781b         	ldrb	r3, [r3]
  3fefba: 2b00         	cmp	r3, #0x0
  3fefbc: d01b         	beq	0x3feff6 <StageLayer::updateStep(float)+0x4e> @ imm = #0x36
  3fefbe: 9b01         	ldr	r3, [sp, #0x4]
  3fefc0: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3fefc4: 681b         	ldr	r3, [r3]
  3fefc6: f503 7306    	add.w	r3, r3, #0x218
  3fefca: 681b         	ldr	r3, [r3]
  3fefcc: 9a01         	ldr	r2, [sp, #0x4]
  3fefce: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  3fefd2: 4610         	mov	r0, r2
  3fefd4: 4798         	blx	r3
  3fefd6: 9b01         	ldr	r3, [sp, #0x4]
  3fefd8: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3fefdc: 681b         	ldr	r3, [r3]
  3fefde: f503 7307    	add.w	r3, r3, #0x21c
  3fefe2: 681b         	ldr	r3, [r3]
  3fefe4: 9a01         	ldr	r2, [sp, #0x4]
  3fefe6: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  3fefea: 4610         	mov	r0, r2
  3fefec: 4798         	blx	r3
  3fefee: 4b1e         	ldr	r3, [pc, #0x78]         @ 0x3ff068 <StageLayer::updateStep(float)+0xc0>
  3feff0: 58e3         	ldr	r3, [r4, r3]
  3feff2: 2200         	movs	r2, #0x0
  3feff4: 701a         	strb	r2, [r3]
  3feff6: ed9d 7a00    	vldr	s14, [sp]
  3feffa: eef5 7a00    	vmov.f32	s15, #2.500000e-01
  3feffe: eeb4 7ae7    	vcmpe.f32	s14, s15
  3ff002: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3ff006: dd02         	ble	0x3ff00e <StageLayer::updateStep(float)+0x66> @ imm = #0x4
  3ff008: f04f 537a    	mov.w	r3, #0x3e800000
  3ff00c: 9300         	str	r3, [sp]
  3ff00e: 9b01         	ldr	r3, [sp, #0x4]
  3ff010: ed93 7a44    	vldr	s14, [r3, #272]
  3ff014: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3ff018: eeb4 7ae7    	vcmpe.f32	s14, s15
  3ff01c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3ff020: dd07         	ble	0x3ff032 <StageLayer::updateStep(float)+0x8a> @ imm = #0xe
  3ff022: 9b01         	ldr	r3, [sp, #0x4]
  3ff024: 681b         	ldr	r3, [r3]
  3ff026: 3390         	adds	r3, #0x90
  3ff028: 681b         	ldr	r3, [r3]
  3ff02a: 9a01         	ldr	r2, [sp, #0x4]
  3ff02c: 4610         	mov	r0, r2
  3ff02e: 2101         	movs	r1, #0x1
  3ff030: 4798         	blx	r3
  3ff032: 9b01         	ldr	r3, [sp, #0x4]
  3ff034: ed93 7a44    	vldr	s14, [r3, #272]
  3ff038: eddd 7a00    	vldr	s15, [sp]
  3ff03c: ee77 7a27    	vadd.f32	s15, s14, s15
  3ff040: 9b01         	ldr	r3, [sp, #0x4]
  3ff042: edc3 7a44    	vstr	s15, [r3, #272]
  3ff046: 9b01         	ldr	r3, [sp, #0x4]
  3ff048: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3ff04c: 681b         	ldr	r3, [r3]
  3ff04e: f503 7302    	add.w	r3, r3, #0x208
  3ff052: 681b         	ldr	r3, [r3]
  3ff054: 9a01         	ldr	r2, [sp, #0x4]
  3ff056: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  3ff05a: 4610         	mov	r0, r2
  3ff05c: 9900         	ldr	r1, [sp]
  3ff05e: 4798         	blx	r3
  3ff060: b002         	add	sp, #0x8
  3ff062: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3ff063); words below are literal-pool data ---
  3ff064: 3a56         	subs	r2, #0x56
  3ff066: 0053         	lsls	r3, r2, #0x1
  3ff068: df5c         	svc	#0x5c
  3ff06a: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== StageLayer::didAccelerate
//      file offset 0x3ff06c (= ELF address; Ghidra 0x40f06c), 84 bytes, Thumb-2
  3ff06c: b510         	push	{r4, lr}
  3ff06e: b086         	sub	sp, #0x18
  3ff070: 9001         	str	r0, [sp, #0x4]
  3ff072: 9100         	str	r1, [sp]
  3ff074: 9b00         	ldr	r3, [sp]
  3ff076: ed93 7b00    	vldr	d7, [r3]
  3ff07a: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3ff07e: edcd 7a03    	vstr	s15, [sp, #12]
  3ff082: 9b00         	ldr	r3, [sp]
  3ff084: ed93 7b02    	vldr	d7, [r3, #8]
  3ff088: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3ff08c: edcd 7a04    	vstr	s15, [sp, #16]
  3ff090: 9b00         	ldr	r3, [sp]
  3ff092: ed93 7b04    	vldr	d7, [r3, #16]
  3ff096: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3ff09a: edcd 7a05    	vstr	s15, [sp, #20]
  3ff09e: 9b01         	ldr	r3, [sp, #0x4]
  3ff0a0: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3ff0a4: 681b         	ldr	r3, [r3]
  3ff0a6: f503 7308    	add.w	r3, r3, #0x220
  3ff0aa: 681c         	ldr	r4, [r3]
  3ff0ac: 9b01         	ldr	r3, [sp, #0x4]
  3ff0ae: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3ff0b2: 4618         	mov	r0, r3
  3ff0b4: 9903         	ldr	r1, [sp, #0xc]
  3ff0b6: 9a04         	ldr	r2, [sp, #0x10]
  3ff0b8: 9b05         	ldr	r3, [sp, #0x14]
  3ff0ba: 47a0         	blx	r4
  3ff0bc: b006         	add	sp, #0x18
  3ff0be: bd10         	pop	{r4, pc}

// ==== StageLayer::didAccelerate
//      file offset 0x3ff0c0 (= ELF address; Ghidra 0x40f0c0), 8 bytes, Thumb-2
  3ff0c0: f1a0 00e8    	sub.w	r0, r0, #0xe8
  3ff0c4: f7ff bfd2    	b.w	0x3ff06c <StageLayer::didAccelerate(cocos2d::CCAcceleration*)> @ imm = #-0x5c

// ==== StageLayer::ccTouchesCancelled
//      file offset 0x3ff0c8 (= ELF address; Ghidra 0x40f0c8), 40 bytes, Thumb-2
  3ff0c8: b500         	push	{lr}
  3ff0ca: b085         	sub	sp, #0x14
  3ff0cc: 9003         	str	r0, [sp, #0xc]
  3ff0ce: 9102         	str	r1, [sp, #0x8]
  3ff0d0: 9201         	str	r2, [sp, #0x4]
  3ff0d2: 9b03         	ldr	r3, [sp, #0xc]
  3ff0d4: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3ff0d8: 681b         	ldr	r3, [r3]
  3ff0da: f503 7306    	add.w	r3, r3, #0x218
  3ff0de: 681b         	ldr	r3, [r3]
  3ff0e0: 9a03         	ldr	r2, [sp, #0xc]
  3ff0e2: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  3ff0e6: 4610         	mov	r0, r2
  3ff0e8: 4798         	blx	r3
  3ff0ea: b005         	add	sp, #0x14
  3ff0ec: f85d fb04    	ldr	pc, [sp], #4

// ==== StageLayer::ccTouchesCancelled
//      file offset 0x3ff0f0 (= ELF address; Ghidra 0x40f0f0), 8 bytes, Thumb-2
  3ff0f0: f1a0 00e4    	sub.w	r0, r0, #0xe4
  3ff0f4: f7ff bfe8    	b.w	0x3ff0c8 <StageLayer::ccTouchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*)> @ imm = #-0x30

// ==== StageLayer::ccTouchesBegan
//      file offset 0x3ff0f8 (= ELF address; Ghidra 0x40f0f8), 180 bytes, Thumb-2
  3ff0f8: b530         	push	{r4, r5, lr}
  3ff0fa: b08d         	sub	sp, #0x34
  3ff0fc: 9003         	str	r0, [sp, #0xc]
  3ff0fe: 9102         	str	r1, [sp, #0x8]
  3ff100: 9201         	str	r2, [sp, #0x4]
  3ff102: ab05         	add	r3, sp, #0x14
  3ff104: 4618         	mov	r0, r3
  3ff106: f70c fcb3    	bl	0x30ba70 <std::_Rb_tree_const_iterator<cocos2d::CCObject*>::_Rb_tree_const_iterator()> @ imm = #-0xf369a
  3ff10a: 9802         	ldr	r0, [sp, #0x8]
  3ff10c: f199 f936    	bl	0x59837c <cocos2d::CCSet::begin()> @ imm = #0x19926c
  3ff110: 4603         	mov	r3, r0
  3ff112: 9305         	str	r3, [sp, #0x14]
  3ff114: e03a         	b	0x3ff18c <StageLayer::ccTouchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*)+0x94> @ imm = #0x74
  3ff116: ab05         	add	r3, sp, #0x14
  3ff118: 4618         	mov	r0, r3
  3ff11a: f70c fcd7    	bl	0x30bacc <std::_Rb_tree_const_iterator<cocos2d::CCObject*>::operator*() const> @ imm = #-0xf3652
  3ff11e: 4603         	mov	r3, r0
  3ff120: 681b         	ldr	r3, [r3]
  3ff122: 9306         	str	r3, [sp, #0x18]
  3ff124: 9b06         	ldr	r3, [sp, #0x18]
  3ff126: 2b00         	cmp	r3, #0x0
  3ff128: d03e         	beq	0x3ff1a8 <StageLayer::ccTouchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*)+0xb0> @ imm = #0x7c
  3ff12a: ab08         	add	r3, sp, #0x20
  3ff12c: 4618         	mov	r0, r3
  3ff12e: 9906         	ldr	r1, [sp, #0x18]
  3ff130: f201 fdfa    	bl	0x600d28 <cocos2d::CCTouch::getLocationInView() const> @ imm = #0x201bf4
  3ff134: f19c fa1e    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x19c43c
  3ff138: 4602         	mov	r2, r0
  3ff13a: a90a         	add	r1, sp, #0x28
  3ff13c: ab08         	add	r3, sp, #0x20
  3ff13e: 4608         	mov	r0, r1
  3ff140: 4611         	mov	r1, r2
  3ff142: 461a         	mov	r2, r3
  3ff144: f19c ffca    	bl	0x59c0dc <cocos2d::CCDirector::convertToGL(cocos2d::CCPoint const&)> @ imm = #0x19cf94
  3ff148: aa08         	add	r2, sp, #0x20
  3ff14a: ab0a         	add	r3, sp, #0x28
  3ff14c: 4610         	mov	r0, r2
  3ff14e: 4619         	mov	r1, r3
  3ff150: f193 fdfc    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x193bf8
  3ff154: 9b06         	ldr	r3, [sp, #0x18]
  3ff156: 9307         	str	r3, [sp, #0x1c]
  3ff158: 9b03         	ldr	r3, [sp, #0xc]
  3ff15a: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3ff15e: 681b         	ldr	r3, [r3]
  3ff160: f503 7303    	add.w	r3, r3, #0x20c
  3ff164: 681c         	ldr	r4, [r3]
  3ff166: 9b03         	ldr	r3, [sp, #0xc]
  3ff168: f8d3 5114    	ldr.w	r5, [r3, #0x114]
  3ff16c: aa0a         	add	r2, sp, #0x28
  3ff16e: ab08         	add	r3, sp, #0x20
  3ff170: 4610         	mov	r0, r2
  3ff172: 4619         	mov	r1, r3
  3ff174: f193 fdca    	bl	0x592d0c <cocos2d::CCPoint::CCPoint(cocos2d::CCPoint const&)> @ imm = #0x193b94
  3ff178: ab0a         	add	r3, sp, #0x28
  3ff17a: 4628         	mov	r0, r5
  3ff17c: 4619         	mov	r1, r3
  3ff17e: 9a07         	ldr	r2, [sp, #0x1c]
  3ff180: 47a0         	blx	r4
  3ff182: ab05         	add	r3, sp, #0x14
  3ff184: 4618         	mov	r0, r3
  3ff186: 2100         	movs	r1, #0x0
  3ff188: f70c fc8c    	bl	0x30baa4 <std::_Rb_tree_const_iterator<cocos2d::CCObject*>::operator++(int)> @ imm = #-0xf36e8
  3ff18c: 9802         	ldr	r0, [sp, #0x8]
  3ff18e: f199 f903    	bl	0x598398 <cocos2d::CCSet::end()> @ imm = #0x199206
  3ff192: 4603         	mov	r3, r0
  3ff194: 930a         	str	r3, [sp, #0x28]
  3ff196: aa05         	add	r2, sp, #0x14
  3ff198: ab0a         	add	r3, sp, #0x28
  3ff19a: 4610         	mov	r0, r2
  3ff19c: 4619         	mov	r1, r3
  3ff19e: f70c fc71    	bl	0x30ba84 <std::_Rb_tree_const_iterator<cocos2d::CCObject*>::operator!=(std::_Rb_tree_const_iterator<cocos2d::CCObject*> const&) const> @ imm = #-0xf371e
  3ff1a2: 4603         	mov	r3, r0
  3ff1a4: 2b00         	cmp	r3, #0x0
  3ff1a6: d1b6         	bne	0x3ff116 <StageLayer::ccTouchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*)+0x1e> @ imm = #-0x94
  3ff1a8: b00d         	add	sp, #0x34
  3ff1aa: bd30         	pop	{r4, r5, pc}

// ==== StageLayer::ccTouchesBegan
//      file offset 0x3ff1ac (= ELF address; Ghidra 0x40f1ac), 8 bytes, Thumb-2
  3ff1ac: f1a0 00e4    	sub.w	r0, r0, #0xe4
  3ff1b0: f7ff bfa2    	b.w	0x3ff0f8 <StageLayer::ccTouchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*)> @ imm = #-0xbc

// ==== StageLayer::ccTouchesMoved
//      file offset 0x3ff1b4 (= ELF address; Ghidra 0x40f1b4), 180 bytes, Thumb-2
  3ff1b4: b530         	push	{r4, r5, lr}
  3ff1b6: b08d         	sub	sp, #0x34
  3ff1b8: 9003         	str	r0, [sp, #0xc]
  3ff1ba: 9102         	str	r1, [sp, #0x8]
  3ff1bc: 9201         	str	r2, [sp, #0x4]
  3ff1be: ab05         	add	r3, sp, #0x14
  3ff1c0: 4618         	mov	r0, r3
  3ff1c2: f70c fc55    	bl	0x30ba70 <std::_Rb_tree_const_iterator<cocos2d::CCObject*>::_Rb_tree_const_iterator()> @ imm = #-0xf3756
  3ff1c6: 9802         	ldr	r0, [sp, #0x8]
  3ff1c8: f199 f8d8    	bl	0x59837c <cocos2d::CCSet::begin()> @ imm = #0x1991b0
  3ff1cc: 4603         	mov	r3, r0
  3ff1ce: 9305         	str	r3, [sp, #0x14]
  3ff1d0: e03a         	b	0x3ff248 <StageLayer::ccTouchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*)+0x94> @ imm = #0x74
  3ff1d2: ab05         	add	r3, sp, #0x14
  3ff1d4: 4618         	mov	r0, r3
  3ff1d6: f70c fc79    	bl	0x30bacc <std::_Rb_tree_const_iterator<cocos2d::CCObject*>::operator*() const> @ imm = #-0xf370e
  3ff1da: 4603         	mov	r3, r0
  3ff1dc: 681b         	ldr	r3, [r3]
  3ff1de: 9306         	str	r3, [sp, #0x18]
  3ff1e0: 9b06         	ldr	r3, [sp, #0x18]
  3ff1e2: 2b00         	cmp	r3, #0x0
  3ff1e4: d03e         	beq	0x3ff264 <StageLayer::ccTouchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*)+0xb0> @ imm = #0x7c
  3ff1e6: ab08         	add	r3, sp, #0x20
  3ff1e8: 4618         	mov	r0, r3
  3ff1ea: 9906         	ldr	r1, [sp, #0x18]
  3ff1ec: f201 fd9c    	bl	0x600d28 <cocos2d::CCTouch::getLocationInView() const> @ imm = #0x201b38
  3ff1f0: f19c f9c0    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x19c380
  3ff1f4: 4602         	mov	r2, r0
  3ff1f6: a90a         	add	r1, sp, #0x28
  3ff1f8: ab08         	add	r3, sp, #0x20
  3ff1fa: 4608         	mov	r0, r1
  3ff1fc: 4611         	mov	r1, r2
  3ff1fe: 461a         	mov	r2, r3
  3ff200: f19c ff6c    	bl	0x59c0dc <cocos2d::CCDirector::convertToGL(cocos2d::CCPoint const&)> @ imm = #0x19ced8
  3ff204: aa08         	add	r2, sp, #0x20
  3ff206: ab0a         	add	r3, sp, #0x28
  3ff208: 4610         	mov	r0, r2
  3ff20a: 4619         	mov	r1, r3
  3ff20c: f193 fd9e    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x193b3c
  3ff210: 9b06         	ldr	r3, [sp, #0x18]
  3ff212: 9307         	str	r3, [sp, #0x1c]
  3ff214: 9b03         	ldr	r3, [sp, #0xc]
  3ff216: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3ff21a: 681b         	ldr	r3, [r3]
  3ff21c: f503 7304    	add.w	r3, r3, #0x210
  3ff220: 681c         	ldr	r4, [r3]
  3ff222: 9b03         	ldr	r3, [sp, #0xc]
  3ff224: f8d3 5114    	ldr.w	r5, [r3, #0x114]
  3ff228: aa0a         	add	r2, sp, #0x28
  3ff22a: ab08         	add	r3, sp, #0x20
  3ff22c: 4610         	mov	r0, r2
  3ff22e: 4619         	mov	r1, r3
  3ff230: f193 fd6c    	bl	0x592d0c <cocos2d::CCPoint::CCPoint(cocos2d::CCPoint const&)> @ imm = #0x193ad8
  3ff234: ab0a         	add	r3, sp, #0x28
  3ff236: 4628         	mov	r0, r5
  3ff238: 4619         	mov	r1, r3
  3ff23a: 9a07         	ldr	r2, [sp, #0x1c]
  3ff23c: 47a0         	blx	r4
  3ff23e: ab05         	add	r3, sp, #0x14
  3ff240: 4618         	mov	r0, r3
  3ff242: 2100         	movs	r1, #0x0
  3ff244: f70c fc2e    	bl	0x30baa4 <std::_Rb_tree_const_iterator<cocos2d::CCObject*>::operator++(int)> @ imm = #-0xf37a4
  3ff248: 9802         	ldr	r0, [sp, #0x8]
  3ff24a: f199 f8a5    	bl	0x598398 <cocos2d::CCSet::end()> @ imm = #0x19914a
  3ff24e: 4603         	mov	r3, r0
  3ff250: 930a         	str	r3, [sp, #0x28]
  3ff252: aa05         	add	r2, sp, #0x14
  3ff254: ab0a         	add	r3, sp, #0x28
  3ff256: 4610         	mov	r0, r2
  3ff258: 4619         	mov	r1, r3
  3ff25a: f70c fc13    	bl	0x30ba84 <std::_Rb_tree_const_iterator<cocos2d::CCObject*>::operator!=(std::_Rb_tree_const_iterator<cocos2d::CCObject*> const&) const> @ imm = #-0xf37da
  3ff25e: 4603         	mov	r3, r0
  3ff260: 2b00         	cmp	r3, #0x0
  3ff262: d1b6         	bne	0x3ff1d2 <StageLayer::ccTouchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*)+0x1e> @ imm = #-0x94
  3ff264: b00d         	add	sp, #0x34
  3ff266: bd30         	pop	{r4, r5, pc}

// ==== StageLayer::ccTouchesMoved
//      file offset 0x3ff268 (= ELF address; Ghidra 0x40f268), 8 bytes, Thumb-2
  3ff268: f1a0 00e4    	sub.w	r0, r0, #0xe4
  3ff26c: f7ff bfa2    	b.w	0x3ff1b4 <StageLayer::ccTouchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*)> @ imm = #-0xbc

// ==== StageLayer::ccTouchesEnded
//      file offset 0x3ff270 (= ELF address; Ghidra 0x40f270), 180 bytes, Thumb-2
  3ff270: b530         	push	{r4, r5, lr}
  3ff272: b08d         	sub	sp, #0x34
  3ff274: 9003         	str	r0, [sp, #0xc]
  3ff276: 9102         	str	r1, [sp, #0x8]
  3ff278: 9201         	str	r2, [sp, #0x4]
  3ff27a: ab05         	add	r3, sp, #0x14
  3ff27c: 4618         	mov	r0, r3
  3ff27e: f70c fbf7    	bl	0x30ba70 <std::_Rb_tree_const_iterator<cocos2d::CCObject*>::_Rb_tree_const_iterator()> @ imm = #-0xf3812
  3ff282: 9802         	ldr	r0, [sp, #0x8]
  3ff284: f199 f87a    	bl	0x59837c <cocos2d::CCSet::begin()> @ imm = #0x1990f4
  3ff288: 4603         	mov	r3, r0
  3ff28a: 9305         	str	r3, [sp, #0x14]
  3ff28c: e03a         	b	0x3ff304 <StageLayer::ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*)+0x94> @ imm = #0x74
  3ff28e: ab05         	add	r3, sp, #0x14
  3ff290: 4618         	mov	r0, r3
  3ff292: f70c fc1b    	bl	0x30bacc <std::_Rb_tree_const_iterator<cocos2d::CCObject*>::operator*() const> @ imm = #-0xf37ca
  3ff296: 4603         	mov	r3, r0
  3ff298: 681b         	ldr	r3, [r3]
  3ff29a: 9306         	str	r3, [sp, #0x18]
  3ff29c: 9b06         	ldr	r3, [sp, #0x18]
  3ff29e: 2b00         	cmp	r3, #0x0
  3ff2a0: d03e         	beq	0x3ff320 <StageLayer::ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*)+0xb0> @ imm = #0x7c
  3ff2a2: ab08         	add	r3, sp, #0x20
  3ff2a4: 4618         	mov	r0, r3
  3ff2a6: 9906         	ldr	r1, [sp, #0x18]
  3ff2a8: f201 fd3e    	bl	0x600d28 <cocos2d::CCTouch::getLocationInView() const> @ imm = #0x201a7c
  3ff2ac: f19c f962    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x19c2c4
  3ff2b0: 4602         	mov	r2, r0
  3ff2b2: a90a         	add	r1, sp, #0x28
  3ff2b4: ab08         	add	r3, sp, #0x20
  3ff2b6: 4608         	mov	r0, r1
  3ff2b8: 4611         	mov	r1, r2
  3ff2ba: 461a         	mov	r2, r3
  3ff2bc: f19c ff0e    	bl	0x59c0dc <cocos2d::CCDirector::convertToGL(cocos2d::CCPoint const&)> @ imm = #0x19ce1c
  3ff2c0: aa08         	add	r2, sp, #0x20
  3ff2c2: ab0a         	add	r3, sp, #0x28
  3ff2c4: 4610         	mov	r0, r2
  3ff2c6: 4619         	mov	r1, r3
  3ff2c8: f193 fd40    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x193a80
  3ff2cc: 9b06         	ldr	r3, [sp, #0x18]
  3ff2ce: 9307         	str	r3, [sp, #0x1c]
  3ff2d0: 9b03         	ldr	r3, [sp, #0xc]
  3ff2d2: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3ff2d6: 681b         	ldr	r3, [r3]
  3ff2d8: f503 7305    	add.w	r3, r3, #0x214
  3ff2dc: 681c         	ldr	r4, [r3]
  3ff2de: 9b03         	ldr	r3, [sp, #0xc]
  3ff2e0: f8d3 5114    	ldr.w	r5, [r3, #0x114]
  3ff2e4: aa0a         	add	r2, sp, #0x28
  3ff2e6: ab08         	add	r3, sp, #0x20
  3ff2e8: 4610         	mov	r0, r2
  3ff2ea: 4619         	mov	r1, r3
  3ff2ec: f193 fd0e    	bl	0x592d0c <cocos2d::CCPoint::CCPoint(cocos2d::CCPoint const&)> @ imm = #0x193a1c
  3ff2f0: ab0a         	add	r3, sp, #0x28
  3ff2f2: 4628         	mov	r0, r5
  3ff2f4: 4619         	mov	r1, r3
  3ff2f6: 9a07         	ldr	r2, [sp, #0x1c]
  3ff2f8: 47a0         	blx	r4
  3ff2fa: ab05         	add	r3, sp, #0x14
  3ff2fc: 4618         	mov	r0, r3
  3ff2fe: 2100         	movs	r1, #0x0
  3ff300: f70c fbd0    	bl	0x30baa4 <std::_Rb_tree_const_iterator<cocos2d::CCObject*>::operator++(int)> @ imm = #-0xf3860
  3ff304: 9802         	ldr	r0, [sp, #0x8]
  3ff306: f199 f847    	bl	0x598398 <cocos2d::CCSet::end()> @ imm = #0x19908e
  3ff30a: 4603         	mov	r3, r0
  3ff30c: 930a         	str	r3, [sp, #0x28]
  3ff30e: aa05         	add	r2, sp, #0x14
  3ff310: ab0a         	add	r3, sp, #0x28
  3ff312: 4610         	mov	r0, r2
  3ff314: 4619         	mov	r1, r3
  3ff316: f70c fbb5    	bl	0x30ba84 <std::_Rb_tree_const_iterator<cocos2d::CCObject*>::operator!=(std::_Rb_tree_const_iterator<cocos2d::CCObject*> const&) const> @ imm = #-0xf3896
  3ff31a: 4603         	mov	r3, r0
  3ff31c: 2b00         	cmp	r3, #0x0
  3ff31e: d1b6         	bne	0x3ff28e <StageLayer::ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*)+0x1e> @ imm = #-0x94
  3ff320: b00d         	add	sp, #0x34
  3ff322: bd30         	pop	{r4, r5, pc}

// ==== StageLayer::ccTouchesEnded
//      file offset 0x3ff324 (= ELF address; Ghidra 0x40f324), 8 bytes, Thumb-2
  3ff324: f1a0 00e4    	sub.w	r0, r0, #0xe4
  3ff328: f7ff bfa2    	b.w	0x3ff270 <StageLayer::ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*)> @ imm = #-0xbc
