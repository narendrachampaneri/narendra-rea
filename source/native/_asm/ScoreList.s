// ScoreList: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 14 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../ScoreList.cpp

// ==== ScoreList::create
//      file offset 0x3ae4fc (= ELF address; Ghidra 0x3be4fc), 110 bytes, Thumb-2
  3ae4fc: b510         	push	{r4, lr}
  3ae4fe: b082         	sub	sp, #0x8
  3ae500: 20f0         	movs	r0, #0xf0
  3ae502: f3d9 fa2f    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x3d945e
  3ae506: 4603         	mov	r3, r0
  3ae508: 461c         	mov	r4, r3
  3ae50a: 4620         	mov	r0, r4
  3ae50c: f026 f9de    	bl	0x3d48cc <ScoreList::ScoreList()> @ imm = #0x263bc
  3ae510: 9401         	str	r4, [sp, #0x4]
  3ae512: 9b01         	ldr	r3, [sp, #0x4]
  3ae514: 2b00         	cmp	r3, #0x0
  3ae516: d00a         	beq	0x3ae52e <ScoreList::create()+0x32> @ imm = #0x14
  3ae518: 9b01         	ldr	r3, [sp, #0x4]
  3ae51a: 681b         	ldr	r3, [r3]
  3ae51c: 3318         	adds	r3, #0x18
  3ae51e: 681b         	ldr	r3, [r3]
  3ae520: 9801         	ldr	r0, [sp, #0x4]
  3ae522: 4798         	blx	r3
  3ae524: 4603         	mov	r3, r0
  3ae526: 2b00         	cmp	r3, #0x0
  3ae528: d001         	beq	0x3ae52e <ScoreList::create()+0x32> @ imm = #0x2
  3ae52a: 2301         	movs	r3, #0x1
  3ae52c: e000         	b	0x3ae530 <ScoreList::create()+0x34> @ imm = #0x0
  3ae52e: 2300         	movs	r3, #0x0
  3ae530: 2b00         	cmp	r3, #0x0
  3ae532: d005         	beq	0x3ae540 <ScoreList::create()+0x44> @ imm = #0xa
  3ae534: 9b01         	ldr	r3, [sp, #0x4]
  3ae536: 4618         	mov	r0, r3
  3ae538: f1e9 fce0    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x1e99c0
  3ae53c: 9b01         	ldr	r3, [sp, #0x4]
  3ae53e: e011         	b	0x3ae564 <ScoreList::create()+0x68> @ imm = #0x22
  3ae540: 9b01         	ldr	r3, [sp, #0x4]
  3ae542: 2b00         	cmp	r3, #0x0
  3ae544: d005         	beq	0x3ae552 <ScoreList::create()+0x56> @ imm = #0xa
  3ae546: 9b01         	ldr	r3, [sp, #0x4]
  3ae548: 681b         	ldr	r3, [r3]
  3ae54a: 3308         	adds	r3, #0x8
  3ae54c: 681b         	ldr	r3, [r3]
  3ae54e: 9801         	ldr	r0, [sp, #0x4]
  3ae550: 4798         	blx	r3
  3ae552: 2300         	movs	r3, #0x0
  3ae554: 9301         	str	r3, [sp, #0x4]
  3ae556: 2300         	movs	r3, #0x0
  3ae558: e004         	b	0x3ae564 <ScoreList::create()+0x68> @ imm = #0x8
  3ae55a: 4620         	mov	r0, r4
  3ae55c: f3d9 fda2    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3d9b44
  3ae560: f3d9 fda4    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3d9b48
  3ae564: 4618         	mov	r0, r3
  3ae566: b002         	add	sp, #0x8
  3ae568: bd10         	pop	{r4, pc}

// ==== ScoreList::ScoreList
//      file offset 0x3d48cc (= ELF address; Ghidra 0x3e48cc), 44 bytes, Thumb-2
  3d48cc: b510         	push	{r4, lr}
  3d48ce: b082         	sub	sp, #0x8
  3d48d0: 9001         	str	r0, [sp, #0x4]
  3d48d2: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x3d48f0 <ScoreList::ScoreList()+0x24>
  3d48d4: 447c         	add	r4, pc
  3d48d6: 9b01         	ldr	r3, [sp, #0x4]
  3d48d8: 4618         	mov	r0, r3
  3d48da: f1ba fead    	bl	0x58f638 <cocos2d::CCNode::CCNode()> @ imm = #0x1bad5a
  3d48de: 9b01         	ldr	r3, [sp, #0x4]
  3d48e0: 4a04         	ldr	r2, [pc, #0x10]         @ 0x3d48f4 <ScoreList::ScoreList()+0x28>
  3d48e2: 58a2         	ldr	r2, [r4, r2]
  3d48e4: 3208         	adds	r2, #0x8
  3d48e6: 601a         	str	r2, [r3]
  3d48e8: 9b01         	ldr	r3, [sp, #0x4]
  3d48ea: 4618         	mov	r0, r3
  3d48ec: b002         	add	sp, #0x8
  3d48ee: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3d48ef); words below are literal-pool data ---
  3d48f0: e134         	b	0x3d4b5c <ScoreList::updateScores()+0x9c> @ imm = #0x268
  3d48f2: 0055         	lsls	r5, r2, #0x1
  3d48f4: debc         	udf	#0xbc
  3d48f6: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== ScoreList::init
//      file offset 0x3d48f8 (= ELF address; Ghidra 0x3e48f8), 308 bytes, Thumb-2
  3d48f8: b530         	push	{r4, r5, lr}
  3d48fa: b089         	sub	sp, #0x24
  3d48fc: 9003         	str	r0, [sp, #0xc]
  3d48fe: 9b03         	ldr	r3, [sp, #0xc]
  3d4900: 4618         	mov	r0, r3
  3d4902: f1bb f8a3    	bl	0x58fa4c <cocos2d::CCNode::init()> @ imm = #0x1bb146
  3d4906: 4603         	mov	r3, r0
  3d4908: f88d 3017    	strb.w	r3, [sp, #0x17]
  3d490c: f89d 3017    	ldrb.w	r3, [sp, #0x17]
  3d4910: f083 0301    	eor	r3, r3, #0x1
  3d4914: b2db         	uxtb	r3, r3
  3d4916: 2b00         	cmp	r3, #0x0
  3d4918: d001         	beq	0x3d491e <ScoreList::init()+0x26> @ imm = #0x2
  3d491a: 2300         	movs	r3, #0x0
  3d491c: e07e         	b	0x3d4a1c <ScoreList::init()+0x124> @ imm = #0xfc
  3d491e: 2320         	movs	r3, #0x20
  3d4920: 9300         	str	r3, [sp]
  3d4922: 4b40         	ldr	r3, [pc, #0x100]        @ 0x3d4a24 <ScoreList::init()+0x12c>
  3d4924: 447b         	add	r3, pc
  3d4926: 4618         	mov	r0, r3
  3d4928: 4b3f         	ldr	r3, [pc, #0xfc]         @ 0x3d4a28 <ScoreList::init()+0x130>
  3d492a: 447b         	add	r3, pc
  3d492c: 4619         	mov	r1, r3
  3d492e: 2220         	movs	r2, #0x20
  3d4930: 2320         	movs	r3, #0x20
  3d4932: f1d0 fd21    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1d0a42
  3d4936: 4602         	mov	r2, r0
  3d4938: 9b03         	ldr	r3, [sp, #0xc]
  3d493a: f8c3 20ec    	str.w	r2, [r3, #0xec]
  3d493e: 9b03         	ldr	r3, [sp, #0xc]
  3d4940: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3d4944: 4618         	mov	r0, r3
  3d4946: f1c3 facf    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1c359e
  3d494a: 9b03         	ldr	r3, [sp, #0xc]
  3d494c: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3d4950: 4618         	mov	r0, r3
  3d4952: 2118         	movs	r1, #0x18
  3d4954: f1d1 fa16    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1d142c
  3d4958: 9b03         	ldr	r3, [sp, #0xc]
  3d495a: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3d495e: 681b         	ldr	r3, [r3]
  3d4960: 337c         	adds	r3, #0x7c
  3d4962: 681c         	ldr	r4, [r3]
  3d4964: 9b03         	ldr	r3, [sp, #0xc]
  3d4966: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3d496a: 461d         	mov	r5, r3
  3d496c: ab06         	add	r3, sp, #0x18
  3d496e: 4618         	mov	r0, r3
  3d4970: f04f 517c    	mov.w	r1, #0x3f000000
  3d4974: f04f 527c    	mov.w	r2, #0x3f000000
  3d4978: f1be f9ba    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1be374
  3d497c: ab06         	add	r3, sp, #0x18
  3d497e: 4628         	mov	r0, r5
  3d4980: 4619         	mov	r1, r3
  3d4982: 47a0         	blx	r4
  3d4984: 9b03         	ldr	r3, [sp, #0xc]
  3d4986: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3d498a: 681b         	ldr	r3, [r3]
  3d498c: 3340         	adds	r3, #0x40
  3d498e: 681b         	ldr	r3, [r3]
  3d4990: 9a03         	ldr	r2, [sp, #0xc]
  3d4992: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  3d4996: 4610         	mov	r0, r2
  3d4998: f04f 517c    	mov.w	r1, #0x3f000000
  3d499c: 4798         	blx	r3
  3d499e: 9b03         	ldr	r3, [sp, #0xc]
  3d49a0: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3d49a4: 681b         	ldr	r3, [r3]
  3d49a6: 334c         	adds	r3, #0x4c
  3d49a8: 681c         	ldr	r4, [r3]
  3d49aa: 9b03         	ldr	r3, [sp, #0xc]
  3d49ac: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3d49b0: 461d         	mov	r5, r3
  3d49b2: ab06         	add	r3, sp, #0x18
  3d49b4: 4618         	mov	r0, r3
  3d49b6: f04f 0100    	mov.w	r1, #0x0
  3d49ba: f2c4 1120    	movt	r1, #0x4120
  3d49be: f04f 0200    	mov.w	r2, #0x0
  3d49c2: f2c4 228c    	movt	r2, #0x428c
  3d49c6: f1be f993    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1be326
  3d49ca: ab06         	add	r3, sp, #0x18
  3d49cc: 4628         	mov	r0, r5
  3d49ce: 4619         	mov	r1, r3
  3d49d0: 47a0         	blx	r4
  3d49d2: 9b03         	ldr	r3, [sp, #0xc]
  3d49d4: 681b         	ldr	r3, [r3]
  3d49d6: 33cc         	adds	r3, #0xcc
  3d49d8: 681b         	ldr	r3, [r3]
  3d49da: 9903         	ldr	r1, [sp, #0xc]
  3d49dc: 9a03         	ldr	r2, [sp, #0xc]
  3d49de: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  3d49e2: 4608         	mov	r0, r1
  3d49e4: 4611         	mov	r1, r2
  3d49e6: 2200         	movs	r2, #0x0
  3d49e8: 4798         	blx	r3
  3d49ea: f1c2 fce1    	bl	0x5973b0 <cocos2d::CCDictionary::create()> @ imm = #0x1c29c2
  3d49ee: 4602         	mov	r2, r0
  3d49f0: 9b03         	ldr	r3, [sp, #0xc]
  3d49f2: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  3d49f6: f1c2 fcdb    	bl	0x5973b0 <cocos2d::CCDictionary::create()> @ imm = #0x1c29b6
  3d49fa: 4602         	mov	r2, r0
  3d49fc: 9b03         	ldr	r3, [sp, #0xc]
  3d49fe: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  3d4a02: 9b03         	ldr	r3, [sp, #0xc]
  3d4a04: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3d4a08: 4618         	mov	r0, r3
  3d4a0a: f1c3 fa6d    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1c34da
  3d4a0e: 9b03         	ldr	r3, [sp, #0xc]
  3d4a10: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3d4a14: 4618         	mov	r0, r3
  3d4a16: f1c3 fa67    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1c34ce
  3d4a1a: 2301         	movs	r3, #0x1
  3d4a1c: 4618         	mov	r0, r3
  3d4a1e: b009         	add	sp, #0x24
  3d4a20: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3d4a21); words below are literal-pool data ---
  3d4a22: bf00         	nop
  3d4a24: 2c14         	cmp	r4, #0x14
  3d4a26: 0040         	lsls	r0, r0, #0x1
  3d4a28: 2bd6         	cmp	r3, #0xd6
  3d4a2a: 0040         	lsls	r0, r0, #0x1

// ==== ScoreList::~ScoreList
//      file offset 0x3d4a2c (= ELF address; Ghidra 0x3e4a2c), 120 bytes, Thumb-2
  3d4a2c: b500         	push	{lr}
  3d4a2e: b083         	sub	sp, #0xc
  3d4a30: 9001         	str	r0, [sp, #0x4]
  3d4a32: 491a         	ldr	r1, [pc, #0x68]         @ 0x3d4a9c <ScoreList::~ScoreList()+0x70>
  3d4a34: 4479         	add	r1, pc
  3d4a36: 9b01         	ldr	r3, [sp, #0x4]
  3d4a38: 4a19         	ldr	r2, [pc, #0x64]         @ 0x3d4aa0 <ScoreList::~ScoreList()+0x74>
  3d4a3a: 588a         	ldr	r2, [r1, r2]
  3d4a3c: 3208         	adds	r2, #0x8
  3d4a3e: 601a         	str	r2, [r3]
  3d4a40: f20b fe36    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x20bc6c
  3d4a44: 4602         	mov	r2, r0
  3d4a46: 9b01         	ldr	r3, [sp, #0x4]
  3d4a48: 4610         	mov	r0, r2
  3d4a4a: 4619         	mov	r1, r3
  3d4a4c: f20b ff68    	bl	0x5e0920 <cocos2d::CCNotificationCenter::removeAllObservers(cocos2d::CCObject*)> @ imm = #0x20bed0
  3d4a50: 9b01         	ldr	r3, [sp, #0x4]
  3d4a52: 4618         	mov	r0, r3
  3d4a54: 2101         	movs	r1, #0x1
  3d4a56: f1bb fdf7    	bl	0x590648 <cocos2d::CCNode::removeAllChildrenWithCleanup(bool)> @ imm = #0x1bbbee
  3d4a5a: 9b01         	ldr	r3, [sp, #0x4]
  3d4a5c: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3d4a60: 4618         	mov	r0, r3
  3d4a62: f1c3 fa29    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1c3452
  3d4a66: 9b01         	ldr	r3, [sp, #0x4]
  3d4a68: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3d4a6c: 4618         	mov	r0, r3
  3d4a6e: f1c3 fa23    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1c3446
  3d4a72: 9b01         	ldr	r3, [sp, #0x4]
  3d4a74: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3d4a78: 4618         	mov	r0, r3
  3d4a7a: f1c3 fa1d    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1c343a
  3d4a7e: 9b01         	ldr	r3, [sp, #0x4]
  3d4a80: 4618         	mov	r0, r3
  3d4a82: f1ba fedf    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x1badbe
  3d4a86: 2300         	movs	r3, #0x0
  3d4a88: 2b00         	cmp	r3, #0x0
  3d4a8a: d002         	beq	0x3d4a92 <ScoreList::~ScoreList()+0x66> @ imm = #0x4
  3d4a8c: 9801         	ldr	r0, [sp, #0x4]
  3d4a8e: f3b3 fb09    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3b3612
  3d4a92: 9b01         	ldr	r3, [sp, #0x4]
  3d4a94: 4618         	mov	r0, r3
  3d4a96: b003         	add	sp, #0xc
  3d4a98: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3d4a9b); words below are literal-pool data ---
  3d4a9c: dfd4         	svc	#0xd4
  3d4a9e: 0055         	lsls	r5, r2, #0x1
  3d4aa0: debc         	udf	#0xbc
  3d4aa2: ffff b500    	<unknown>

// ==== ScoreList::~ScoreList
//      file offset 0x3d4aa4 (= ELF address; Ghidra 0x3e4aa4), 28 bytes, Thumb-2
  3d4aa4: b500         	push	{lr}
  3d4aa6: b083         	sub	sp, #0xc
  3d4aa8: 9001         	str	r0, [sp, #0x4]
  3d4aaa: 9801         	ldr	r0, [sp, #0x4]
  3d4aac: f7ff ffbe    	bl	0x3d4a2c <ScoreList::~ScoreList()> @ imm = #-0x84
  3d4ab0: 9801         	ldr	r0, [sp, #0x4]
  3d4ab2: f3b3 faf7    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3b35ee
  3d4ab6: 9b01         	ldr	r3, [sp, #0x4]
  3d4ab8: 4618         	mov	r0, r3
  3d4aba: b003         	add	sp, #0xc
  3d4abc: f85d fb04    	ldr	pc, [sp], #4

// ==== ScoreList::updateScores
//      file offset 0x3d4ac0 (= ELF address; Ghidra 0x3e4ac0), 1620 bytes, Thumb-2
  3d4ac0: b570         	push	{r4, r5, r6, lr}
  3d4ac2: b0a0         	sub	sp, #0x80
  3d4ac4: 9001         	str	r0, [sp, #0x4]
  3d4ac6: f8df 4620    	ldr.w	r4, [pc, #0x620]        @ 0x3d50e8 <ScoreList::updateScores()+0x628>
  3d4aca: 447c         	add	r4, pc
  3d4acc: ab1a         	add	r3, sp, #0x68
  3d4ace: 4618         	mov	r0, r3
  3d4ad0: f002 fb8e    	bl	0x3d71f0 <std::vector<TeamRow*, std::allocator<TeamRow*>>::vector()> @ imm = #0x271c
  3d4ad4: ab1d         	add	r3, sp, #0x74
  3d4ad6: 4618         	mov	r0, r3
  3d4ad8: f002 fbb0    	bl	0x3d723c <std::vector<ScoreRow*, std::allocator<ScoreRow*>>::vector()> @ imm = #0x2760
  3d4adc: 2300         	movs	r3, #0x0
  3d4ade: 930a         	str	r3, [sp, #0x28]
  3d4ae0: 2300         	movs	r3, #0x0
  3d4ae2: 930b         	str	r3, [sp, #0x2c]
  3d4ae4: 9b01         	ldr	r3, [sp, #0x4]
  3d4ae6: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3d4aea: 2b00         	cmp	r3, #0x0
  3d4aec: d00a         	beq	0x3d4b04 <ScoreList::updateScores()+0x44> @ imm = #0x14
  3d4aee: 9b01         	ldr	r3, [sp, #0x4]
  3d4af0: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3d4af4: 4618         	mov	r0, r3
  3d4af6: f1bf f8b9    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x1bf172
  3d4afa: 4603         	mov	r3, r0
  3d4afc: 2b00         	cmp	r3, #0x0
  3d4afe: d001         	beq	0x3d4b04 <ScoreList::updateScores()+0x44> @ imm = #0x2
  3d4b00: 2301         	movs	r3, #0x1
  3d4b02: e000         	b	0x3d4b06 <ScoreList::updateScores()+0x46> @ imm = #0x0
  3d4b04: 2300         	movs	r3, #0x0
  3d4b06: 2b00         	cmp	r3, #0x0
  3d4b08: d04d         	beq	0x3d4ba6 <ScoreList::updateScores()+0xe6> @ imm = #0x9a
  3d4b0a: 9b01         	ldr	r3, [sp, #0x4]
  3d4b0c: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3d4b10: 695b         	ldr	r3, [r3, #0x14]
  3d4b12: 930a         	str	r3, [sp, #0x28]
  3d4b14: 9b01         	ldr	r3, [sp, #0x4]
  3d4b16: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3d4b1a: 695b         	ldr	r3, [r3, #0x14]
  3d4b1c: 2b00         	cmp	r3, #0x0
  3d4b1e: d006         	beq	0x3d4b2e <ScoreList::updateScores()+0x6e> @ imm = #0xc
  3d4b20: 9b01         	ldr	r3, [sp, #0x4]
  3d4b22: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3d4b26: 695b         	ldr	r3, [r3, #0x14]
  3d4b28: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3d4b2c: e000         	b	0x3d4b30 <ScoreList::updateScores()+0x70> @ imm = #0x0
  3d4b2e: 2300         	movs	r3, #0x0
  3d4b30: 930b         	str	r3, [sp, #0x2c]
  3d4b32: e035         	b	0x3d4ba0 <ScoreList::updateScores()+0xe0> @ imm = #0x6a
  3d4b34: 980a         	ldr	r0, [sp, #0x28]
  3d4b36: f729 fd7d    	bl	0x2fe634 <cocos2d::CCDictElement::getObject() const> @ imm = #-0xd6506
  3d4b3a: 4603         	mov	r3, r0
  3d4b3c: 930f         	str	r3, [sp, #0x3c]
  3d4b3e: ab18         	add	r3, sp, #0x60
  3d4b40: 4618         	mov	r0, r3
  3d4b42: f3b5 fc57    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3b58ae
  3d4b46: aa02         	add	r2, sp, #0x8
  3d4b48: ab18         	add	r3, sp, #0x60
  3d4b4a: 4610         	mov	r0, r2
  3d4b4c: f8df 259c    	ldr.w	r2, [pc, #0x59c]        @ 0x3d50ec <ScoreList::updateScores()+0x62c>
  3d4b50: 447a         	add	r2, pc
  3d4b52: 4611         	mov	r1, r2
  3d4b54: 461a         	mov	r2, r3
  3d4b56: f3e1 ff83    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3e1f06
  3d4b5a: ab02         	add	r3, sp, #0x8
  3d4b5c: 980f         	ldr	r0, [sp, #0x3c]
  3d4b5e: 4619         	mov	r1, r3
  3d4b60: f7ff f8e2    	bl	0x3d3d28 <TeamRow::setKillScore(std::string)> @ imm = #-0xe3c
  3d4b64: ab02         	add	r3, sp, #0x8
  3d4b66: 4618         	mov	r0, r3
  3d4b68: f3e0 fed4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e0da8
  3d4b6c: ab18         	add	r3, sp, #0x60
  3d4b6e: 4618         	mov	r0, r3
  3d4b70: f3b5 fc44    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b5888
  3d4b74: 980a         	ldr	r0, [sp, #0x28]
  3d4b76: f729 fd5d    	bl	0x2fe634 <cocos2d::CCDictElement::getObject() const> @ imm = #-0xd6546
  3d4b7a: 4603         	mov	r3, r0
  3d4b7c: 9318         	str	r3, [sp, #0x60]
  3d4b7e: aa1a         	add	r2, sp, #0x68
  3d4b80: ab18         	add	r3, sp, #0x60
  3d4b82: 4610         	mov	r0, r2
  3d4b84: 4619         	mov	r1, r3
  3d4b86: f002 fb85    	bl	0x3d7294 <std::vector<TeamRow*, std::allocator<TeamRow*>>::push_back(TeamRow*&&)> @ imm = #0x270a
  3d4b8a: 9b0b         	ldr	r3, [sp, #0x2c]
  3d4b8c: 930a         	str	r3, [sp, #0x28]
  3d4b8e: 9b0b         	ldr	r3, [sp, #0x2c]
  3d4b90: 2b00         	cmp	r3, #0x0
  3d4b92: d003         	beq	0x3d4b9c <ScoreList::updateScores()+0xdc> @ imm = #0x6
  3d4b94: 9b0b         	ldr	r3, [sp, #0x2c]
  3d4b96: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3d4b9a: e000         	b	0x3d4b9e <ScoreList::updateScores()+0xde> @ imm = #0x0
  3d4b9c: 2300         	movs	r3, #0x0
  3d4b9e: 930b         	str	r3, [sp, #0x2c]
  3d4ba0: 9b0a         	ldr	r3, [sp, #0x28]
  3d4ba2: 2b00         	cmp	r3, #0x0
  3d4ba4: d1c6         	bne	0x3d4b34 <ScoreList::updateScores()+0x74> @ imm = #-0x74
  3d4ba6: 2300         	movs	r3, #0x0
  3d4ba8: 930c         	str	r3, [sp, #0x30]
  3d4baa: 9b01         	ldr	r3, [sp, #0x4]
  3d4bac: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3d4bb0: 2b00         	cmp	r3, #0x0
  3d4bb2: d00a         	beq	0x3d4bca <ScoreList::updateScores()+0x10a> @ imm = #0x14
  3d4bb4: 9b01         	ldr	r3, [sp, #0x4]
  3d4bb6: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3d4bba: 4618         	mov	r0, r3
  3d4bbc: f1bf f856    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x1bf0ac
  3d4bc0: 4603         	mov	r3, r0
  3d4bc2: 2b00         	cmp	r3, #0x0
  3d4bc4: d001         	beq	0x3d4bca <ScoreList::updateScores()+0x10a> @ imm = #0x2
  3d4bc6: 2301         	movs	r3, #0x1
  3d4bc8: e000         	b	0x3d4bcc <ScoreList::updateScores()+0x10c> @ imm = #0x0
  3d4bca: 2300         	movs	r3, #0x0
  3d4bcc: 2b00         	cmp	r3, #0x0
  3d4bce: f000 8172    	beq.w	0x3d4eb6 <ScoreList::updateScores()+0x3f6> @ imm = #0x2e4
  3d4bd2: 9b01         	ldr	r3, [sp, #0x4]
  3d4bd4: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3d4bd8: 695b         	ldr	r3, [r3, #0x14]
  3d4bda: 930a         	str	r3, [sp, #0x28]
  3d4bdc: 9b01         	ldr	r3, [sp, #0x4]
  3d4bde: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3d4be2: 695b         	ldr	r3, [r3, #0x14]
  3d4be4: 2b00         	cmp	r3, #0x0
  3d4be6: d006         	beq	0x3d4bf6 <ScoreList::updateScores()+0x136> @ imm = #0xc
  3d4be8: 9b01         	ldr	r3, [sp, #0x4]
  3d4bea: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3d4bee: 695b         	ldr	r3, [r3, #0x14]
  3d4bf0: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3d4bf4: e000         	b	0x3d4bf8 <ScoreList::updateScores()+0x138> @ imm = #0x0
  3d4bf6: 2300         	movs	r3, #0x0
  3d4bf8: 930c         	str	r3, [sp, #0x30]
  3d4bfa: e158         	b	0x3d4eae <ScoreList::updateScores()+0x3ee> @ imm = #0x2b0
  3d4bfc: 980a         	ldr	r0, [sp, #0x28]
  3d4bfe: f729 fd19    	bl	0x2fe634 <cocos2d::CCDictElement::getObject() const> @ imm = #-0xd65ce
  3d4c02: 4603         	mov	r3, r0
  3d4c04: 9310         	str	r3, [sp, #0x40]
  3d4c06: f7fd fb5f    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #-0x2942
  3d4c0a: 4605         	mov	r5, r0
  3d4c0c: 9b10         	ldr	r3, [sp, #0x40]
  3d4c0e: f503 7382    	add.w	r3, r3, #0x104
  3d4c12: aa03         	add	r2, sp, #0xc
  3d4c14: 4610         	mov	r0, r2
  3d4c16: 4619         	mov	r1, r3
  3d4c18: f3e1 fc66    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x3e18cc
  3d4c1c: ab03         	add	r3, sp, #0xc
  3d4c1e: 4628         	mov	r0, r5
  3d4c20: 4619         	mov	r1, r3
  3d4c22: f7fd fd79    	bl	0x3d2718 <ScoreKeeper::getKills(std::string)> @ imm = #-0x250e
  3d4c26: 4603         	mov	r3, r0
  3d4c28: 9311         	str	r3, [sp, #0x44]
  3d4c2a: ab03         	add	r3, sp, #0xc
  3d4c2c: 4618         	mov	r0, r3
  3d4c2e: f3e0 fe71    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e0ce2
  3d4c32: f7fd fb49    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #-0x296e
  3d4c36: 4605         	mov	r5, r0
  3d4c38: 9b10         	ldr	r3, [sp, #0x40]
  3d4c3a: f503 7382    	add.w	r3, r3, #0x104
  3d4c3e: aa04         	add	r2, sp, #0x10
  3d4c40: 4610         	mov	r0, r2
  3d4c42: 4619         	mov	r1, r3
  3d4c44: f3e1 fc50    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x3e18a0
  3d4c48: ab04         	add	r3, sp, #0x10
  3d4c4a: 4628         	mov	r0, r5
  3d4c4c: 4619         	mov	r1, r3
  3d4c4e: f7fd fd7f    	bl	0x3d2750 <ScoreKeeper::getDeaths(std::string)> @ imm = #-0x2502
  3d4c52: 4603         	mov	r3, r0
  3d4c54: 9312         	str	r3, [sp, #0x48]
  3d4c56: ab04         	add	r3, sp, #0x10
  3d4c58: 4618         	mov	r0, r3
  3d4c5a: f3e0 fe5b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e0cb6
  3d4c5e: 9a11         	ldr	r2, [sp, #0x44]
  3d4c60: 9b12         	ldr	r3, [sp, #0x48]
  3d4c62: 1ad3         	subs	r3, r2, r3
  3d4c64: 9313         	str	r3, [sp, #0x4c]
  3d4c66: f8df 3488    	ldr.w	r3, [pc, #0x488]        @ 0x3d50f0 <ScoreList::updateScores()+0x630>
  3d4c6a: 447b         	add	r3, pc
  3d4c6c: 4618         	mov	r0, r3
  3d4c6e: 9911         	ldr	r1, [sp, #0x44]
  3d4c70: f1c4 ff4e    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1c4e9c
  3d4c74: 4603         	mov	r3, r0
  3d4c76: 4618         	mov	r0, r3
  3d4c78: f1c4 fe56    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1c4cac
  3d4c7c: 4605         	mov	r5, r0
  3d4c7e: ab18         	add	r3, sp, #0x60
  3d4c80: 4618         	mov	r0, r3
  3d4c82: f3b5 fbb7    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3b576e
  3d4c86: aa05         	add	r2, sp, #0x14
  3d4c88: ab18         	add	r3, sp, #0x60
  3d4c8a: 4610         	mov	r0, r2
  3d4c8c: 4629         	mov	r1, r5
  3d4c8e: 461a         	mov	r2, r3
  3d4c90: f3e1 fee6    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3e1dcc
  3d4c94: ab05         	add	r3, sp, #0x14
  3d4c96: 9810         	ldr	r0, [sp, #0x40]
  3d4c98: 4619         	mov	r1, r3
  3d4c9a: f7ff fd0f    	bl	0x3d46bc <ScoreRow::setKillScore(std::string)> @ imm = #-0x5e2
  3d4c9e: ab05         	add	r3, sp, #0x14
  3d4ca0: 4618         	mov	r0, r3
  3d4ca2: f3e0 fe37    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e0c6e
  3d4ca6: ab18         	add	r3, sp, #0x60
  3d4ca8: 4618         	mov	r0, r3
  3d4caa: f3b5 fba7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b574e
  3d4cae: f8df 3444    	ldr.w	r3, [pc, #0x444]        @ 0x3d50f4 <ScoreList::updateScores()+0x634>
  3d4cb2: 447b         	add	r3, pc
  3d4cb4: 4618         	mov	r0, r3
  3d4cb6: 9912         	ldr	r1, [sp, #0x48]
  3d4cb8: f1c4 ff2a    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1c4e54
  3d4cbc: 4603         	mov	r3, r0
  3d4cbe: 4618         	mov	r0, r3
  3d4cc0: f1c4 fe32    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1c4c64
  3d4cc4: 4605         	mov	r5, r0
  3d4cc6: ab18         	add	r3, sp, #0x60
  3d4cc8: 4618         	mov	r0, r3
  3d4cca: f3b5 fb93    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3b5726
  3d4cce: aa06         	add	r2, sp, #0x18
  3d4cd0: ab18         	add	r3, sp, #0x60
  3d4cd2: 4610         	mov	r0, r2
  3d4cd4: 4629         	mov	r1, r5
  3d4cd6: 461a         	mov	r2, r3
  3d4cd8: f3e1 fec2    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3e1d84
  3d4cdc: ab06         	add	r3, sp, #0x18
  3d4cde: 9810         	ldr	r0, [sp, #0x40]
  3d4ce0: 4619         	mov	r1, r3
  3d4ce2: f7ff fd0d    	bl	0x3d4700 <ScoreRow::setDeaths(std::string)> @ imm = #-0x5e6
  3d4ce6: ab06         	add	r3, sp, #0x18
  3d4ce8: 4618         	mov	r0, r3
  3d4cea: f3e0 fe13    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e0c26
  3d4cee: ab18         	add	r3, sp, #0x60
  3d4cf0: 4618         	mov	r0, r3
  3d4cf2: f3b5 fb83    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b5706
  3d4cf6: 9b13         	ldr	r3, [sp, #0x4c]
  3d4cf8: 2b00         	cmp	r3, #0x0
  3d4cfa: d122         	bne	0x3d4d42 <ScoreList::updateScores()+0x282> @ imm = #0x44
  3d4cfc: 4bfe         	ldr	r3, [pc, #0x3f8]        @ 0x3d50f8 <ScoreList::updateScores()+0x638>
  3d4cfe: 447b         	add	r3, pc
  3d4d00: 4618         	mov	r0, r3
  3d4d02: f1c4 ff05    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1c4e0a
  3d4d06: 4603         	mov	r3, r0
  3d4d08: 4618         	mov	r0, r3
  3d4d0a: f1c4 fe0d    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1c4c1a
  3d4d0e: 4605         	mov	r5, r0
  3d4d10: ab18         	add	r3, sp, #0x60
  3d4d12: 4618         	mov	r0, r3
  3d4d14: f3b5 fb6e    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3b56dc
  3d4d18: aa07         	add	r2, sp, #0x1c
  3d4d1a: ab18         	add	r3, sp, #0x60
  3d4d1c: 4610         	mov	r0, r2
  3d4d1e: 4629         	mov	r1, r5
  3d4d20: 461a         	mov	r2, r3
  3d4d22: f3e1 fe9d    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3e1d3a
  3d4d26: ab07         	add	r3, sp, #0x1c
  3d4d28: 9810         	ldr	r0, [sp, #0x40]
  3d4d2a: 4619         	mov	r1, r3
  3d4d2c: f7ff fd00    	bl	0x3d4730 <ScoreRow::setSpread(std::string)> @ imm = #-0x600
  3d4d30: ab07         	add	r3, sp, #0x1c
  3d4d32: 4618         	mov	r0, r3
  3d4d34: f3e0 fdee    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e0bdc
  3d4d38: ab18         	add	r3, sp, #0x60
  3d4d3a: 4618         	mov	r0, r3
  3d4d3c: f3b5 fb5e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b56bc
  3d4d40: e049         	b	0x3d4dd6 <ScoreList::updateScores()+0x316> @ imm = #0x92
  3d4d42: 9b13         	ldr	r3, [sp, #0x4c]
  3d4d44: 2b00         	cmp	r3, #0x0
  3d4d46: dd23         	ble	0x3d4d90 <ScoreList::updateScores()+0x2d0> @ imm = #0x46
  3d4d48: 4bec         	ldr	r3, [pc, #0x3b0]        @ 0x3d50fc <ScoreList::updateScores()+0x63c>
  3d4d4a: 447b         	add	r3, pc
  3d4d4c: 4618         	mov	r0, r3
  3d4d4e: 9913         	ldr	r1, [sp, #0x4c]
  3d4d50: f1c4 fede    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1c4dbc
  3d4d54: 4603         	mov	r3, r0
  3d4d56: 4618         	mov	r0, r3
  3d4d58: f1c4 fde6    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1c4bcc
  3d4d5c: 4605         	mov	r5, r0
  3d4d5e: ab18         	add	r3, sp, #0x60
  3d4d60: 4618         	mov	r0, r3
  3d4d62: f3b5 fb47    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3b568e
  3d4d66: aa08         	add	r2, sp, #0x20
  3d4d68: ab18         	add	r3, sp, #0x60
  3d4d6a: 4610         	mov	r0, r2
  3d4d6c: 4629         	mov	r1, r5
  3d4d6e: 461a         	mov	r2, r3
  3d4d70: f3e1 fe76    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3e1cec
  3d4d74: ab08         	add	r3, sp, #0x20
  3d4d76: 9810         	ldr	r0, [sp, #0x40]
  3d4d78: 4619         	mov	r1, r3
  3d4d7a: f7ff fcd9    	bl	0x3d4730 <ScoreRow::setSpread(std::string)> @ imm = #-0x64e
  3d4d7e: ab08         	add	r3, sp, #0x20
  3d4d80: 4618         	mov	r0, r3
  3d4d82: f3e0 fdc7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e0b8e
  3d4d86: ab18         	add	r3, sp, #0x60
  3d4d88: 4618         	mov	r0, r3
  3d4d8a: f3b5 fb37    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b566e
  3d4d8e: e022         	b	0x3d4dd6 <ScoreList::updateScores()+0x316> @ imm = #0x44
  3d4d90: 4bdb         	ldr	r3, [pc, #0x36c]        @ 0x3d5100 <ScoreList::updateScores()+0x640>
  3d4d92: 447b         	add	r3, pc
  3d4d94: 4618         	mov	r0, r3
  3d4d96: 9913         	ldr	r1, [sp, #0x4c]
  3d4d98: f1c4 feba    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1c4d74
  3d4d9c: 4603         	mov	r3, r0
  3d4d9e: 4618         	mov	r0, r3
  3d4da0: f1c4 fdc2    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1c4b84
  3d4da4: 4605         	mov	r5, r0
  3d4da6: ab18         	add	r3, sp, #0x60
  3d4da8: 4618         	mov	r0, r3
  3d4daa: f3b5 fb23    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3b5646
  3d4dae: aa09         	add	r2, sp, #0x24
  3d4db0: ab18         	add	r3, sp, #0x60
  3d4db2: 4610         	mov	r0, r2
  3d4db4: 4629         	mov	r1, r5
  3d4db6: 461a         	mov	r2, r3
  3d4db8: f3e1 fe52    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3e1ca4
  3d4dbc: ab09         	add	r3, sp, #0x24
  3d4dbe: 9810         	ldr	r0, [sp, #0x40]
  3d4dc0: 4619         	mov	r1, r3
  3d4dc2: f7ff fcb5    	bl	0x3d4730 <ScoreRow::setSpread(std::string)> @ imm = #-0x696
  3d4dc6: ab09         	add	r3, sp, #0x24
  3d4dc8: 4618         	mov	r0, r3
  3d4dca: f3e0 fda3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e0b46
  3d4dce: ab18         	add	r3, sp, #0x60
  3d4dd0: 4618         	mov	r0, r3
  3d4dd2: f3b5 fb13    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b5626
  3d4dd6: 9b10         	ldr	r3, [sp, #0x40]
  3d4dd8: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3d4ddc: 4ac9         	ldr	r2, [pc, #0x324]        @ 0x3d5104 <ScoreList::updateScores()+0x644>
  3d4dde: 447a         	add	r2, pc
  3d4de0: 4610         	mov	r0, r2
  3d4de2: 4619         	mov	r1, r3
  3d4de4: f1c4 fe94    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1c4d28
  3d4de8: 4603         	mov	r3, r0
  3d4dea: 4618         	mov	r0, r3
  3d4dec: f1c4 fd9c    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1c4b38
  3d4df0: 4605         	mov	r5, r0
  3d4df2: ab18         	add	r3, sp, #0x60
  3d4df4: 4618         	mov	r0, r3
  3d4df6: f3b5 fafd    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3b55fa
  3d4dfa: aa09         	add	r2, sp, #0x24
  3d4dfc: ab18         	add	r3, sp, #0x60
  3d4dfe: 4610         	mov	r0, r2
  3d4e00: 4629         	mov	r1, r5
  3d4e02: 461a         	mov	r2, r3
  3d4e04: f3e1 fe2c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3e1c58
  3d4e08: ab18         	add	r3, sp, #0x60
  3d4e0a: 4618         	mov	r0, r3
  3d4e0c: f3b5 faf6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b55ec
  3d4e10: 9b01         	ldr	r3, [sp, #0x4]
  3d4e12: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  3d4e16: ab09         	add	r3, sp, #0x24
  3d4e18: 4610         	mov	r0, r2
  3d4e1a: 4619         	mov	r1, r3
  3d4e1c: f1bf f868    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x1bf0d0
  3d4e20: 4603         	mov	r3, r0
  3d4e22: 9314         	str	r3, [sp, #0x50]
  3d4e24: 9b14         	ldr	r3, [sp, #0x50]
  3d4e26: 2b00         	cmp	r3, #0x0
  3d4e28: d027         	beq	0x3d4e7a <ScoreList::updateScores()+0x3ba> @ imm = #0x4e
  3d4e2a: 9b14         	ldr	r3, [sp, #0x50]
  3d4e2c: f8d3 20ec    	ldr.w	r2, [r3, #0xec]
  3d4e30: 9b11         	ldr	r3, [sp, #0x44]
  3d4e32: 4413         	add	r3, r2
  3d4e34: 4ab4         	ldr	r2, [pc, #0x2d0]        @ 0x3d5108 <ScoreList::updateScores()+0x648>
  3d4e36: 447a         	add	r2, pc
  3d4e38: 4610         	mov	r0, r2
  3d4e3a: 4619         	mov	r1, r3
  3d4e3c: f1c4 fe68    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1c4cd0
  3d4e40: 4603         	mov	r3, r0
  3d4e42: 4618         	mov	r0, r3
  3d4e44: f1c4 fd70    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1c4ae0
  3d4e48: 4605         	mov	r5, r0
  3d4e4a: ab08         	add	r3, sp, #0x20
  3d4e4c: 4618         	mov	r0, r3
  3d4e4e: f3b5 fad1    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3b55a2
  3d4e52: aa18         	add	r2, sp, #0x60
  3d4e54: ab08         	add	r3, sp, #0x20
  3d4e56: 4610         	mov	r0, r2
  3d4e58: 4629         	mov	r1, r5
  3d4e5a: 461a         	mov	r2, r3
  3d4e5c: f3e1 fe00    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3e1c00
  3d4e60: ab18         	add	r3, sp, #0x60
  3d4e62: 9814         	ldr	r0, [sp, #0x50]
  3d4e64: 4619         	mov	r1, r3
  3d4e66: f7fe ff5f    	bl	0x3d3d28 <TeamRow::setKillScore(std::string)> @ imm = #-0x1142
  3d4e6a: ab18         	add	r3, sp, #0x60
  3d4e6c: 4618         	mov	r0, r3
  3d4e6e: f3e0 fd51    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e0aa2
  3d4e72: ab08         	add	r3, sp, #0x20
  3d4e74: 4618         	mov	r0, r3
  3d4e76: f3b5 fac1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b5582
  3d4e7a: 980a         	ldr	r0, [sp, #0x28]
  3d4e7c: f729 fbda    	bl	0x2fe634 <cocos2d::CCDictElement::getObject() const> @ imm = #-0xd684c
  3d4e80: 4603         	mov	r3, r0
  3d4e82: 9318         	str	r3, [sp, #0x60]
  3d4e84: aa1d         	add	r2, sp, #0x74
  3d4e86: ab18         	add	r3, sp, #0x60
  3d4e88: 4610         	mov	r0, r2
  3d4e8a: 4619         	mov	r1, r3
  3d4e8c: f002 fa18    	bl	0x3d72c0 <std::vector<ScoreRow*, std::allocator<ScoreRow*>>::push_back(ScoreRow*&&)> @ imm = #0x2430
  3d4e90: ab09         	add	r3, sp, #0x24
  3d4e92: 4618         	mov	r0, r3
  3d4e94: f3e0 fd3e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e0a7c
  3d4e98: 9b0c         	ldr	r3, [sp, #0x30]
  3d4e9a: 930a         	str	r3, [sp, #0x28]
  3d4e9c: 9b0c         	ldr	r3, [sp, #0x30]
  3d4e9e: 2b00         	cmp	r3, #0x0
  3d4ea0: d003         	beq	0x3d4eaa <ScoreList::updateScores()+0x3ea> @ imm = #0x6
  3d4ea2: 9b0c         	ldr	r3, [sp, #0x30]
  3d4ea4: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3d4ea8: e000         	b	0x3d4eac <ScoreList::updateScores()+0x3ec> @ imm = #0x0
  3d4eaa: 2300         	movs	r3, #0x0
  3d4eac: 930c         	str	r3, [sp, #0x30]
  3d4eae: 9b0a         	ldr	r3, [sp, #0x28]
  3d4eb0: 2b00         	cmp	r3, #0x0
  3d4eb2: f47f aea3    	bne.w	0x3d4bfc <ScoreList::updateScores()+0x13c> @ imm = #-0x2ba
  3d4eb6: ab1d         	add	r3, sp, #0x74
  3d4eb8: 4618         	mov	r0, r3
  3d4eba: f002 fa11    	bl	0x3d72e0 <std::vector<ScoreRow*, std::allocator<ScoreRow*>>::begin()> @ imm = #0x2422
  3d4ebe: 4605         	mov	r5, r0
  3d4ec0: ab1d         	add	r3, sp, #0x74
  3d4ec2: 4618         	mov	r0, r3
  3d4ec4: f002 fa1a    	bl	0x3d72fc <std::vector<ScoreRow*, std::allocator<ScoreRow*>>::end()> @ imm = #0x2434
  3d4ec8: 4603         	mov	r3, r0
  3d4eca: 4628         	mov	r0, r5
  3d4ecc: 4619         	mov	r1, r3
  3d4ece: 4b8f         	ldr	r3, [pc, #0x23c]        @ 0x3d510c <ScoreList::updateScores()+0x64c>
  3d4ed0: 58e3         	ldr	r3, [r4, r3]
  3d4ed2: 461a         	mov	r2, r3
  3d4ed4: f002 fa22    	bl	0x3d731c <void std::sort<__gnu_cxx::__normal_iterator<ScoreRow**, std::vector<ScoreRow*, std::allocator<ScoreRow*>>>, bool (*)(ScoreRow*, ScoreRow*)>(__gnu_cxx::__normal_iterator<ScoreRow**, std::vector<ScoreRow*, std::allocator<ScoreRow*>>>, __gnu_cxx::__normal_iterator<ScoreRow**, std::vector<ScoreRow*, std::allocator<ScoreRow*>>>, bool (*)(ScoreRow*, ScoreRow*))> @ imm = #0x2444
  3d4ed8: f04f 0300    	mov.w	r3, #0x0
  3d4edc: f2c4 13a0    	movt	r3, #0x41a0
  3d4ee0: 9315         	str	r3, [sp, #0x54]
  3d4ee2: 2300         	movs	r3, #0x0
  3d4ee4: 930d         	str	r3, [sp, #0x34]
  3d4ee6: e029         	b	0x3d4f3c <ScoreList::updateScores()+0x47c> @ imm = #0x52
  3d4ee8: 9b0d         	ldr	r3, [sp, #0x34]
  3d4eea: aa1d         	add	r2, sp, #0x74
  3d4eec: 4610         	mov	r0, r2
  3d4eee: 4619         	mov	r1, r3
  3d4ef0: f002 fa48    	bl	0x3d7384 <std::vector<ScoreRow*, std::allocator<ScoreRow*>>::operator[](unsigned int)> @ imm = #0x2490
  3d4ef4: 4603         	mov	r3, r0
  3d4ef6: 681b         	ldr	r3, [r3]
  3d4ef8: 9316         	str	r3, [sp, #0x58]
  3d4efa: 9b16         	ldr	r3, [sp, #0x58]
  3d4efc: 681b         	ldr	r3, [r3]
  3d4efe: 334c         	adds	r3, #0x4c
  3d4f00: 681d         	ldr	r5, [r3]
  3d4f02: 9e16         	ldr	r6, [sp, #0x58]
  3d4f04: 9b0d         	ldr	r3, [sp, #0x34]
  3d4f06: ee07 3a90    	vmov	s15, r3
  3d4f0a: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3d4f0e: eddd 7a15    	vldr	s15, [sp, #84]
  3d4f12: ee67 7a27    	vmul.f32	s15, s14, s15
  3d4f16: ed9f 7a72    	vldr	s14, [pc, #456]         @ 0x3d50e0 <ScoreList::updateScores()+0x620>
  3d4f1a: ee77 7a67    	vsub.f32	s15, s14, s15
  3d4f1e: ab18         	add	r3, sp, #0x60
  3d4f20: 4618         	mov	r0, r3
  3d4f22: f04f 0100    	mov.w	r1, #0x0
  3d4f26: ee17 2a90    	vmov	r2, s15
  3d4f2a: f1bd fee1    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1bddc2
  3d4f2e: ab18         	add	r3, sp, #0x60
  3d4f30: 4630         	mov	r0, r6
  3d4f32: 4619         	mov	r1, r3
  3d4f34: 47a8         	blx	r5
  3d4f36: 9b0d         	ldr	r3, [sp, #0x34]
  3d4f38: 3301         	adds	r3, #0x1
  3d4f3a: 930d         	str	r3, [sp, #0x34]
  3d4f3c: 9d0d         	ldr	r5, [sp, #0x34]
  3d4f3e: ab1d         	add	r3, sp, #0x74
  3d4f40: 4618         	mov	r0, r3
  3d4f42: f002 fa13    	bl	0x3d736c <std::vector<ScoreRow*, std::allocator<ScoreRow*>>::size() const> @ imm = #0x2426
  3d4f46: 4603         	mov	r3, r0
  3d4f48: 429d         	cmp	r5, r3
  3d4f4a: bf2c         	ite	hs
  3d4f4c: 2300         	movhs	r3, #0x0
  3d4f4e: 2301         	movlo	r3, #0x1
  3d4f50: b2db         	uxtb	r3, r3
  3d4f52: 2b00         	cmp	r3, #0x0
  3d4f54: d1c8         	bne	0x3d4ee8 <ScoreList::updateScores()+0x428> @ imm = #-0x70
  3d4f56: ab1a         	add	r3, sp, #0x68
  3d4f58: 4618         	mov	r0, r3
  3d4f5a: f002 fa1f    	bl	0x3d739c <std::vector<TeamRow*, std::allocator<TeamRow*>>::begin()> @ imm = #0x243e
  3d4f5e: 4605         	mov	r5, r0
  3d4f60: ab1a         	add	r3, sp, #0x68
  3d4f62: 4618         	mov	r0, r3
  3d4f64: f002 fa28    	bl	0x3d73b8 <std::vector<TeamRow*, std::allocator<TeamRow*>>::end()> @ imm = #0x2450
  3d4f68: 4603         	mov	r3, r0
  3d4f6a: 4628         	mov	r0, r5
  3d4f6c: 4619         	mov	r1, r3
  3d4f6e: 4b68         	ldr	r3, [pc, #0x1a0]        @ 0x3d5110 <ScoreList::updateScores()+0x650>
  3d4f70: 58e3         	ldr	r3, [r4, r3]
  3d4f72: 461a         	mov	r2, r3
  3d4f74: f002 fa30    	bl	0x3d73d8 <void std::sort<__gnu_cxx::__normal_iterator<TeamRow**, std::vector<TeamRow*, std::allocator<TeamRow*>>>, bool (*)(TeamRow*, TeamRow*)>(__gnu_cxx::__normal_iterator<TeamRow**, std::vector<TeamRow*, std::allocator<TeamRow*>>>, __gnu_cxx::__normal_iterator<TeamRow**, std::vector<TeamRow*, std::allocator<TeamRow*>>>, bool (*)(TeamRow*, TeamRow*))> @ imm = #0x2460
  3d4f78: 2300         	movs	r3, #0x0
  3d4f7a: 930e         	str	r3, [sp, #0x38]
  3d4f7c: e033         	b	0x3d4fe6 <ScoreList::updateScores()+0x526> @ imm = #0x66
  3d4f7e: 9b0e         	ldr	r3, [sp, #0x38]
  3d4f80: aa1a         	add	r2, sp, #0x68
  3d4f82: 4610         	mov	r0, r2
  3d4f84: 4619         	mov	r1, r3
  3d4f86: f002 fa5b    	bl	0x3d7440 <std::vector<TeamRow*, std::allocator<TeamRow*>>::operator[](unsigned int)> @ imm = #0x24b6
  3d4f8a: 4603         	mov	r3, r0
  3d4f8c: 681b         	ldr	r3, [r3]
  3d4f8e: 9317         	str	r3, [sp, #0x5c]
  3d4f90: 9b17         	ldr	r3, [sp, #0x5c]
  3d4f92: 681b         	ldr	r3, [r3]
  3d4f94: 3390         	adds	r3, #0x90
  3d4f96: 681b         	ldr	r3, [r3]
  3d4f98: 9a17         	ldr	r2, [sp, #0x5c]
  3d4f9a: 4610         	mov	r0, r2
  3d4f9c: 2101         	movs	r1, #0x1
  3d4f9e: 4798         	blx	r3
  3d4fa0: 9b17         	ldr	r3, [sp, #0x5c]
  3d4fa2: 681b         	ldr	r3, [r3]
  3d4fa4: 334c         	adds	r3, #0x4c
  3d4fa6: 681c         	ldr	r4, [r3]
  3d4fa8: 9d17         	ldr	r5, [sp, #0x5c]
  3d4faa: 9b0e         	ldr	r3, [sp, #0x38]
  3d4fac: ee07 3a90    	vmov	s15, r3
  3d4fb0: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3d4fb4: eddd 7a15    	vldr	s15, [sp, #84]
  3d4fb8: ee67 7a27    	vmul.f32	s15, s14, s15
  3d4fbc: ed9f 7a49    	vldr	s14, [pc, #292]         @ 0x3d50e4 <ScoreList::updateScores()+0x624>
  3d4fc0: ee77 7a67    	vsub.f32	s15, s14, s15
  3d4fc4: ab18         	add	r3, sp, #0x60
  3d4fc6: 4618         	mov	r0, r3
  3d4fc8: f04f 0100    	mov.w	r1, #0x0
  3d4fcc: f2c4 3107    	movt	r1, #0x4307
  3d4fd0: ee17 2a90    	vmov	r2, s15
  3d4fd4: f1bd fe8c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1bdd18
  3d4fd8: ab18         	add	r3, sp, #0x60
  3d4fda: 4628         	mov	r0, r5
  3d4fdc: 4619         	mov	r1, r3
  3d4fde: 47a0         	blx	r4
  3d4fe0: 9b0e         	ldr	r3, [sp, #0x38]
  3d4fe2: 3301         	adds	r3, #0x1
  3d4fe4: 930e         	str	r3, [sp, #0x38]
  3d4fe6: 9c0e         	ldr	r4, [sp, #0x38]
  3d4fe8: ab1a         	add	r3, sp, #0x68
  3d4fea: 4618         	mov	r0, r3
  3d4fec: f002 fa1c    	bl	0x3d7428 <std::vector<TeamRow*, std::allocator<TeamRow*>>::size() const> @ imm = #0x2438
  3d4ff0: 4603         	mov	r3, r0
  3d4ff2: 429c         	cmp	r4, r3
  3d4ff4: bf2c         	ite	hs
  3d4ff6: 2300         	movhs	r3, #0x0
  3d4ff8: 2301         	movlo	r3, #0x1
  3d4ffa: b2db         	uxtb	r3, r3
  3d4ffc: 2b00         	cmp	r3, #0x0
  3d4ffe: d1be         	bne	0x3d4f7e <ScoreList::updateScores()+0x4be> @ imm = #-0x84
  3d5000: ab1d         	add	r3, sp, #0x74
  3d5002: 4618         	mov	r0, r3
  3d5004: f002 f926    	bl	0x3d7254 <std::vector<ScoreRow*, std::allocator<ScoreRow*>>::~vector()> @ imm = #0x224c
  3d5008: ab1a         	add	r3, sp, #0x68
  3d500a: 4618         	mov	r0, r3
  3d500c: f002 f8fc    	bl	0x3d7208 <std::vector<TeamRow*, std::allocator<TeamRow*>>::~vector()> @ imm = #0x21f8
  3d5010: e064         	b	0x3d50dc <ScoreList::updateScores()+0x61c> @ imm = #0xc8
  3d5012: ab02         	add	r3, sp, #0x8
  3d5014: 4618         	mov	r0, r3
  3d5016: f3e0 fc7d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e08fa
  3d501a: e7ff         	b	0x3d501c <ScoreList::updateScores()+0x55c> @ imm = #-0x2
  3d501c: ab18         	add	r3, sp, #0x60
  3d501e: 4618         	mov	r0, r3
  3d5020: f3b5 f9ec    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b53d8
  3d5024: e04f         	b	0x3d50c6 <ScoreList::updateScores()+0x606> @ imm = #0x9e
  3d5026: ab03         	add	r3, sp, #0xc
  3d5028: 4618         	mov	r0, r3
  3d502a: f3e0 fc73    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e08e6
  3d502e: e04a         	b	0x3d50c6 <ScoreList::updateScores()+0x606> @ imm = #0x94
  3d5030: ab04         	add	r3, sp, #0x10
  3d5032: 4618         	mov	r0, r3
  3d5034: f3e0 fc6e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e08dc
  3d5038: e045         	b	0x3d50c6 <ScoreList::updateScores()+0x606> @ imm = #0x8a
  3d503a: ab05         	add	r3, sp, #0x14
  3d503c: 4618         	mov	r0, r3
  3d503e: f3e0 fc69    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e08d2
  3d5042: e7ff         	b	0x3d5044 <ScoreList::updateScores()+0x584> @ imm = #-0x2
  3d5044: ab18         	add	r3, sp, #0x60
  3d5046: 4618         	mov	r0, r3
  3d5048: f3b5 f9d8    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b53b0
  3d504c: e03b         	b	0x3d50c6 <ScoreList::updateScores()+0x606> @ imm = #0x76
  3d504e: ab06         	add	r3, sp, #0x18
  3d5050: 4618         	mov	r0, r3
  3d5052: f3e0 fc5f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e08be
  3d5056: e7ff         	b	0x3d5058 <ScoreList::updateScores()+0x598> @ imm = #-0x2
  3d5058: ab18         	add	r3, sp, #0x60
  3d505a: 4618         	mov	r0, r3
  3d505c: f3b5 f9ce    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b539c
  3d5060: e031         	b	0x3d50c6 <ScoreList::updateScores()+0x606> @ imm = #0x62
  3d5062: ab07         	add	r3, sp, #0x1c
  3d5064: 4618         	mov	r0, r3
  3d5066: f3e0 fc55    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e08aa
  3d506a: e7ff         	b	0x3d506c <ScoreList::updateScores()+0x5ac> @ imm = #-0x2
  3d506c: ab18         	add	r3, sp, #0x60
  3d506e: 4618         	mov	r0, r3
  3d5070: f3b5 f9c4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b5388
  3d5074: e027         	b	0x3d50c6 <ScoreList::updateScores()+0x606> @ imm = #0x4e
  3d5076: ab08         	add	r3, sp, #0x20
  3d5078: 4618         	mov	r0, r3
  3d507a: f3e0 fc4b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e0896
  3d507e: e7ff         	b	0x3d5080 <ScoreList::updateScores()+0x5c0> @ imm = #-0x2
  3d5080: ab18         	add	r3, sp, #0x60
  3d5082: 4618         	mov	r0, r3
  3d5084: f3b5 f9ba    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b5374
  3d5088: e01d         	b	0x3d50c6 <ScoreList::updateScores()+0x606> @ imm = #0x3a
  3d508a: ab09         	add	r3, sp, #0x24
  3d508c: 4618         	mov	r0, r3
  3d508e: f3e0 fc41    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e0882
  3d5092: e7ff         	b	0x3d5094 <ScoreList::updateScores()+0x5d4> @ imm = #-0x2
  3d5094: ab18         	add	r3, sp, #0x60
  3d5096: 4618         	mov	r0, r3
  3d5098: f3b5 f9b0    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b5360
  3d509c: e013         	b	0x3d50c6 <ScoreList::updateScores()+0x606> @ imm = #0x26
  3d509e: ab18         	add	r3, sp, #0x60
  3d50a0: 4618         	mov	r0, r3
  3d50a2: f3b5 f9ab    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b5356
  3d50a6: e00e         	b	0x3d50c6 <ScoreList::updateScores()+0x606> @ imm = #0x1c
  3d50a8: ab18         	add	r3, sp, #0x60
  3d50aa: 4618         	mov	r0, r3
  3d50ac: f3e0 fc32    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e0864
  3d50b0: e7ff         	b	0x3d50b2 <ScoreList::updateScores()+0x5f2> @ imm = #-0x2
  3d50b2: ab08         	add	r3, sp, #0x20
  3d50b4: 4618         	mov	r0, r3
  3d50b6: f3b5 f9a1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b5342
  3d50ba: e7ff         	b	0x3d50bc <ScoreList::updateScores()+0x5fc> @ imm = #-0x2
  3d50bc: ab09         	add	r3, sp, #0x24
  3d50be: 4618         	mov	r0, r3
  3d50c0: f3e0 fc28    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e0850
  3d50c4: e7ff         	b	0x3d50c6 <ScoreList::updateScores()+0x606> @ imm = #-0x2
  3d50c6: ab1d         	add	r3, sp, #0x74
  3d50c8: 4618         	mov	r0, r3
  3d50ca: f002 f8c3    	bl	0x3d7254 <std::vector<ScoreRow*, std::allocator<ScoreRow*>>::~vector()> @ imm = #0x2186
  3d50ce: e7ff         	b	0x3d50d0 <ScoreList::updateScores()+0x610> @ imm = #-0x2
  3d50d0: ab1a         	add	r3, sp, #0x68
  3d50d2: 4618         	mov	r0, r3
  3d50d4: f002 f898    	bl	0x3d7208 <std::vector<TeamRow*, std::allocator<TeamRow*>>::~vector()> @ imm = #0x2130
  3d50d8: f3b2 ffe8    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3b2fd0
  3d50dc: b020         	add	sp, #0x80
  3d50de: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3d50df); words below are literal-pool data ---
  3d50e0: 0000         	movs	r0, r0
  3d50e2: 4238         	tst	r0, r7
  3d50e4: 0000         	movs	r0, r0
  3d50e6: 4234         	tst	r4, r6
  3d50e8: df3e         	svc	#0x3e
  3d50ea: 0055         	lsls	r5, r2, #0x1
  3d50ec: 29f0         	cmp	r1, #0xf0
  3d50ee: 0040         	lsls	r0, r0, #0x1
  3d50f0: 28da         	cmp	r0, #0xda
  3d50f2: 0040         	lsls	r0, r0, #0x1
  3d50f4: 2892         	cmp	r0, #0x92
  3d50f6: 0040         	lsls	r0, r0, #0x1
  3d50f8: 2842         	cmp	r0, #0x42
  3d50fa: 0040         	lsls	r0, r0, #0x1
  3d50fc: 27fe         	movs	r7, #0xfe
  3d50fe: 0040         	lsls	r0, r0, #0x1
  3d5100: 27b2         	movs	r7, #0xb2
  3d5102: 0040         	lsls	r0, r0, #0x1
  3d5104: 2766         	movs	r7, #0x66
  3d5106: 0040         	lsls	r0, r0, #0x1
  3d5108: 270e         	movs	r7, #0xe
  3d510a: 0040         	lsls	r0, r0, #0x1
  3d510c: dec0         	udf	#0xc0
  3d510e: ffff dec4    	<unknown>
  3d5112: ffff b570    	<unknown>

// ==== ScoreList::addSoldierScore
//      file offset 0x3d5114 (= ELF address; Ghidra 0x3e5114), 424 bytes, Thumb-2
  3d5114: b570         	push	{r4, r5, r6, lr}
  3d5116: b088         	sub	sp, #0x20
  3d5118: 9003         	str	r0, [sp, #0xc]
  3d511a: 9102         	str	r1, [sp, #0x8]
  3d511c: 9201         	str	r2, [sp, #0x4]
  3d511e: 9300         	str	r3, [sp]
  3d5120: 4c63         	ldr	r4, [pc, #0x18c]        @ 0x3d52b0 <ScoreList::addSoldierScore(std::string, std::string, int)+0x19c>
  3d5122: 447c         	add	r4, pc
  3d5124: f7fe fc52    	bl	0x3d39cc <ScoreRow::create()> @ imm = #-0x175c
  3d5128: 4603         	mov	r3, r0
  3d512a: 9306         	str	r3, [sp, #0x18]
  3d512c: 9b06         	ldr	r3, [sp, #0x18]
  3d512e: f503 7382    	add.w	r3, r3, #0x104
  3d5132: 4618         	mov	r0, r3
  3d5134: 9901         	ldr	r1, [sp, #0x4]
  3d5136: f3e1 fa3d    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x3e147a
  3d513a: ab05         	add	r3, sp, #0x14
  3d513c: 4618         	mov	r0, r3
  3d513e: 9902         	ldr	r1, [sp, #0x8]
  3d5140: f3e1 f9d2    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x3e13a4
  3d5144: ab05         	add	r3, sp, #0x14
  3d5146: 9806         	ldr	r0, [sp, #0x18]
  3d5148: 4619         	mov	r1, r3
  3d514a: f7ff fa67    	bl	0x3d461c <ScoreRow::setPlayerName(std::string)> @ imm = #-0xb32
  3d514e: ab05         	add	r3, sp, #0x14
  3d5150: 4618         	mov	r0, r3
  3d5152: f3e0 fbdf    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e07be
  3d5156: 9806         	ldr	r0, [sp, #0x18]
  3d5158: 9900         	ldr	r1, [sp]
  3d515a: f7ff fa29    	bl	0x3d45b0 <ScoreRow::setPlayerTeamId(int)> @ imm = #-0xbae
  3d515e: 9b03         	ldr	r3, [sp, #0xc]
  3d5160: f8d3 50e4    	ldr.w	r5, [r3, #0xe4]
  3d5164: 9801         	ldr	r0, [sp, #0x4]
  3d5166: f3e0 f8cb    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3e0196
  3d516a: 4606         	mov	r6, r0
  3d516c: ab04         	add	r3, sp, #0x10
  3d516e: 4618         	mov	r0, r3
  3d5170: f3b5 f940    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3b5280
  3d5174: aa05         	add	r2, sp, #0x14
  3d5176: ab04         	add	r3, sp, #0x10
  3d5178: 4610         	mov	r0, r2
  3d517a: 4631         	mov	r1, r6
  3d517c: 461a         	mov	r2, r3
  3d517e: f3e1 fc6f    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3e18de
  3d5182: ab05         	add	r3, sp, #0x14
  3d5184: 4628         	mov	r0, r5
  3d5186: 9906         	ldr	r1, [sp, #0x18]
  3d5188: 461a         	mov	r2, r3
  3d518a: f1bf fbd5    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x1bf7aa
  3d518e: ab05         	add	r3, sp, #0x14
  3d5190: 4618         	mov	r0, r3
  3d5192: f3e0 fbbf    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e077e
  3d5196: ab04         	add	r3, sp, #0x10
  3d5198: 4618         	mov	r0, r3
  3d519a: f3b5 f92f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b525e
  3d519e: 9b03         	ldr	r3, [sp, #0xc]
  3d51a0: 681b         	ldr	r3, [r3]
  3d51a2: 33c8         	adds	r3, #0xc8
  3d51a4: 681b         	ldr	r3, [r3]
  3d51a6: 9a03         	ldr	r2, [sp, #0xc]
  3d51a8: 4610         	mov	r0, r2
  3d51aa: 9906         	ldr	r1, [sp, #0x18]
  3d51ac: 4798         	blx	r3
  3d51ae: 9b06         	ldr	r3, [sp, #0x18]
  3d51b0: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3d51b4: 2b00         	cmp	r3, #0x0
  3d51b6: d078         	beq	0x3d52aa <ScoreList::addSoldierScore(std::string, std::string, int)+0x196> @ imm = #0xf0
  3d51b8: f7fe fc40    	bl	0x3d3a3c <TeamRow::create()> @ imm = #-0x1780
  3d51bc: 4603         	mov	r3, r0
  3d51be: 9307         	str	r3, [sp, #0x1c]
  3d51c0: 9b03         	ldr	r3, [sp, #0xc]
  3d51c2: f8d3 50e8    	ldr.w	r5, [r3, #0xe8]
  3d51c6: 9b06         	ldr	r3, [sp, #0x18]
  3d51c8: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3d51cc: 4a39         	ldr	r2, [pc, #0xe4]         @ 0x3d52b4 <ScoreList::addSoldierScore(std::string, std::string, int)+0x1a0>
  3d51ce: 447a         	add	r2, pc
  3d51d0: 4610         	mov	r0, r2
  3d51d2: 4619         	mov	r1, r3
  3d51d4: f1c4 fc9c    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1c4938
  3d51d8: 4603         	mov	r3, r0
  3d51da: 4618         	mov	r0, r3
  3d51dc: f1c4 fba4    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1c4748
  3d51e0: 4606         	mov	r6, r0
  3d51e2: ab04         	add	r3, sp, #0x10
  3d51e4: 4618         	mov	r0, r3
  3d51e6: f3b5 f905    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3b520a
  3d51ea: aa05         	add	r2, sp, #0x14
  3d51ec: ab04         	add	r3, sp, #0x10
  3d51ee: 4610         	mov	r0, r2
  3d51f0: 4631         	mov	r1, r6
  3d51f2: 461a         	mov	r2, r3
  3d51f4: f3e1 fc34    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3e1868
  3d51f8: ab05         	add	r3, sp, #0x14
  3d51fa: 4628         	mov	r0, r5
  3d51fc: 9907         	ldr	r1, [sp, #0x1c]
  3d51fe: 461a         	mov	r2, r3
  3d5200: f1bf fb9a    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x1bf734
  3d5204: ab05         	add	r3, sp, #0x14
  3d5206: 4618         	mov	r0, r3
  3d5208: f3e0 fb84    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e0708
  3d520c: ab04         	add	r3, sp, #0x10
  3d520e: 4618         	mov	r0, r3
  3d5210: f3b5 f8f4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b51e8
  3d5214: 9b06         	ldr	r3, [sp, #0x18]
  3d5216: f8d3 2110    	ldr.w	r2, [r3, #0x110]
  3d521a: 4b27         	ldr	r3, [pc, #0x9c]         @ 0x3d52b8 <ScoreList::addSoldierScore(std::string, std::string, int)+0x1a4>
  3d521c: 58e3         	ldr	r3, [r4, r3]
  3d521e: 4619         	mov	r1, r3
  3d5220: 4613         	mov	r3, r2
  3d5222: 005b         	lsls	r3, r3, #0x1
  3d5224: 4413         	add	r3, r2
  3d5226: 440b         	add	r3, r1
  3d5228: 781a         	ldrb	r2, [r3]
  3d522a: 7859         	ldrb	r1, [r3, #0x1]
  3d522c: 0209         	lsls	r1, r1, #0x8
  3d522e: 430a         	orrs	r2, r1
  3d5230: 789b         	ldrb	r3, [r3, #0x2]
  3d5232: 041b         	lsls	r3, r3, #0x10
  3d5234: 431a         	orrs	r2, r3
  3d5236: 2300         	movs	r3, #0x0
  3d5238: f362 0317    	bfi	r3, r2, #0, #24
  3d523c: 9807         	ldr	r0, [sp, #0x1c]
  3d523e: 4619         	mov	r1, r3
  3d5240: f7fe fd94    	bl	0x3d3d6c <TeamRow::setColor(cocos2d::_ccColor3B)> @ imm = #-0x14d8
  3d5244: 9b06         	ldr	r3, [sp, #0x18]
  3d5246: f8d3 2110    	ldr.w	r2, [r3, #0x110]
  3d524a: 9b07         	ldr	r3, [sp, #0x1c]
  3d524c: f8c3 20f0    	str.w	r2, [r3, #0xf0]
  3d5250: 9b07         	ldr	r3, [sp, #0x1c]
  3d5252: 681b         	ldr	r3, [r3]
  3d5254: 3390         	adds	r3, #0x90
  3d5256: 681b         	ldr	r3, [r3]
  3d5258: 9a07         	ldr	r2, [sp, #0x1c]
  3d525a: 4610         	mov	r0, r2
  3d525c: 2100         	movs	r1, #0x0
  3d525e: 4798         	blx	r3
  3d5260: 9b03         	ldr	r3, [sp, #0xc]
  3d5262: 681b         	ldr	r3, [r3]
  3d5264: 33c8         	adds	r3, #0xc8
  3d5266: 681b         	ldr	r3, [r3]
  3d5268: 9a03         	ldr	r2, [sp, #0xc]
  3d526a: 4610         	mov	r0, r2
  3d526c: 9907         	ldr	r1, [sp, #0x1c]
  3d526e: 4798         	blx	r3
  3d5270: e01b         	b	0x3d52aa <ScoreList::addSoldierScore(std::string, std::string, int)+0x196> @ imm = #0x36
  3d5272: ab05         	add	r3, sp, #0x14
  3d5274: 4618         	mov	r0, r3
  3d5276: f3e0 fb4d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e069a
  3d527a: f3b2 ff17    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3b2e2e
  3d527e: ab05         	add	r3, sp, #0x14
  3d5280: 4618         	mov	r0, r3
  3d5282: f3e0 fb47    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e068e
  3d5286: e7ff         	b	0x3d5288 <ScoreList::addSoldierScore(std::string, std::string, int)+0x174> @ imm = #-0x2
  3d5288: ab04         	add	r3, sp, #0x10
  3d528a: 4618         	mov	r0, r3
  3d528c: f3b5 f8b6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b516c
  3d5290: f3b2 ff0c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3b2e18
  3d5294: ab05         	add	r3, sp, #0x14
  3d5296: 4618         	mov	r0, r3
  3d5298: f3e0 fb3c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e0678
  3d529c: e7ff         	b	0x3d529e <ScoreList::addSoldierScore(std::string, std::string, int)+0x18a> @ imm = #-0x2
  3d529e: ab04         	add	r3, sp, #0x10
  3d52a0: 4618         	mov	r0, r3
  3d52a2: f3b5 f8ab    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b5156
  3d52a6: f3b2 ff01    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3b2e02
  3d52aa: b008         	add	sp, #0x20
  3d52ac: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3d52ad); words below are literal-pool data ---
  3d52ae: bf00         	nop
  3d52b0: d8e6         	bhi	0x3d5280 <ScoreList::addSoldierScore(std::string, std::string, int)+0x16c> @ imm = #-0x34
  3d52b2: 0055         	lsls	r5, r2, #0x1
  3d52b4: 2376         	movs	r3, #0x76
  3d52b6: 0040         	lsls	r0, r0, #0x1
  3d52b8: d7b8         	bvc	0x3d522c <ScoreList::addSoldierScore(std::string, std::string, int)+0x118> @ imm = #-0x90
  3d52ba: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== ScoreList::setTitle
//      file offset 0x3d52bc (= ELF address; Ghidra 0x3e52bc), 46 bytes, Thumb-2
  3d52bc: b530         	push	{r4, r5, lr}
  3d52be: b083         	sub	sp, #0xc
  3d52c0: 9001         	str	r0, [sp, #0x4]
  3d52c2: 9100         	str	r1, [sp]
  3d52c4: 9b01         	ldr	r3, [sp, #0x4]
  3d52c6: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3d52ca: 681b         	ldr	r3, [r3]
  3d52cc: f503 73fc    	add.w	r3, r3, #0x1f8
  3d52d0: 681c         	ldr	r4, [r3]
  3d52d2: 9b01         	ldr	r3, [sp, #0x4]
  3d52d4: f8d3 50ec    	ldr.w	r5, [r3, #0xec]
  3d52d8: 9800         	ldr	r0, [sp]
  3d52da: f3e0 f811    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3e0022
  3d52de: 4603         	mov	r3, r0
  3d52e0: 4628         	mov	r0, r5
  3d52e2: 4619         	mov	r1, r3
  3d52e4: 47a0         	blx	r4
  3d52e6: b003         	add	sp, #0xc
  3d52e8: bd30         	pop	{r4, r5, pc}

// ==== ScoreList::getScoreRow
//      file offset 0x3d52ec (= ELF address; Ghidra 0x3e52ec), 104 bytes, Thumb-2
  3d52ec: b530         	push	{r4, r5, lr}
  3d52ee: b085         	sub	sp, #0x14
  3d52f0: 9001         	str	r0, [sp, #0x4]
  3d52f2: 9100         	str	r1, [sp]
  3d52f4: 9b01         	ldr	r3, [sp, #0x4]
  3d52f6: f8d3 40e4    	ldr.w	r4, [r3, #0xe4]
  3d52fa: 9800         	ldr	r0, [sp]
  3d52fc: f3e0 f800    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3e0000
  3d5300: 4605         	mov	r5, r0
  3d5302: ab02         	add	r3, sp, #0x8
  3d5304: 4618         	mov	r0, r3
  3d5306: f3b5 f875    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3b50ea
  3d530a: aa03         	add	r2, sp, #0xc
  3d530c: ab02         	add	r3, sp, #0x8
  3d530e: 4610         	mov	r0, r2
  3d5310: 4629         	mov	r1, r5
  3d5312: 461a         	mov	r2, r3
  3d5314: f3e1 fba4    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3e1748
  3d5318: ab03         	add	r3, sp, #0xc
  3d531a: 4620         	mov	r0, r4
  3d531c: 4619         	mov	r1, r3
  3d531e: f1be fde7    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x1bebce
  3d5322: 4604         	mov	r4, r0
  3d5324: ab03         	add	r3, sp, #0xc
  3d5326: 4618         	mov	r0, r3
  3d5328: f3e0 faf4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e05e8
  3d532c: ab02         	add	r3, sp, #0x8
  3d532e: 4618         	mov	r0, r3
  3d5330: f3b5 f864    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b50c8
  3d5334: 4623         	mov	r3, r4
  3d5336: e00a         	b	0x3d534e <ScoreList::getScoreRow(std::string)+0x62> @ imm = #0x14
  3d5338: ab03         	add	r3, sp, #0xc
  3d533a: 4618         	mov	r0, r3
  3d533c: f3e0 faea    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e05d4
  3d5340: e7ff         	b	0x3d5342 <ScoreList::getScoreRow(std::string)+0x56> @ imm = #-0x2
  3d5342: ab02         	add	r3, sp, #0x8
  3d5344: 4618         	mov	r0, r3
  3d5346: f3b5 f859    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b50b2
  3d534a: f3b2 feaf    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3b2d5e
  3d534e: 4618         	mov	r0, r3
  3d5350: b005         	add	sp, #0x14
  3d5352: bd30         	pop	{r4, r5, pc}

// ==== ScoreList::deactivateScore
//      file offset 0x3d5354 (= ELF address; Ghidra 0x3e5354), 116 bytes, Thumb-2
  3d5354: b530         	push	{r4, r5, lr}
  3d5356: b087         	sub	sp, #0x1c
  3d5358: 9001         	str	r0, [sp, #0x4]
  3d535a: 9100         	str	r1, [sp]
  3d535c: 9b01         	ldr	r3, [sp, #0x4]
  3d535e: f8d3 40e4    	ldr.w	r4, [r3, #0xe4]
  3d5362: 9800         	ldr	r0, [sp]
  3d5364: f3df ffcc    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3dff98
  3d5368: 4605         	mov	r5, r0
  3d536a: ab03         	add	r3, sp, #0xc
  3d536c: 4618         	mov	r0, r3
  3d536e: f3b5 f841    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3b5082
  3d5372: aa04         	add	r2, sp, #0x10
  3d5374: ab03         	add	r3, sp, #0xc
  3d5376: 4610         	mov	r0, r2
  3d5378: 4629         	mov	r1, r5
  3d537a: 461a         	mov	r2, r3
  3d537c: f3e1 fb70    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3e16e0
  3d5380: ab04         	add	r3, sp, #0x10
  3d5382: 4620         	mov	r0, r4
  3d5384: 4619         	mov	r1, r3
  3d5386: f1be fdb3    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x1beb66
  3d538a: 4603         	mov	r3, r0
  3d538c: 9305         	str	r3, [sp, #0x14]
  3d538e: ab04         	add	r3, sp, #0x10
  3d5390: 4618         	mov	r0, r3
  3d5392: f3e0 fabf    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e057e
  3d5396: ab03         	add	r3, sp, #0xc
  3d5398: 4618         	mov	r0, r3
  3d539a: f3b5 f82f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b505e
  3d539e: 9b05         	ldr	r3, [sp, #0x14]
  3d53a0: 2b00         	cmp	r3, #0x0
  3d53a2: d00f         	beq	0x3d53c4 <ScoreList::deactivateScore(std::string)+0x70> @ imm = #0x1e
  3d53a4: 9b05         	ldr	r3, [sp, #0x14]
  3d53a6: 2200         	movs	r2, #0x0
  3d53a8: f883 210c    	strb.w	r2, [r3, #0x10c]
  3d53ac: e00a         	b	0x3d53c4 <ScoreList::deactivateScore(std::string)+0x70> @ imm = #0x14
  3d53ae: ab04         	add	r3, sp, #0x10
  3d53b0: 4618         	mov	r0, r3
  3d53b2: f3e0 faaf    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e055e
  3d53b6: e7ff         	b	0x3d53b8 <ScoreList::deactivateScore(std::string)+0x64> @ imm = #-0x2
  3d53b8: ab03         	add	r3, sp, #0xc
  3d53ba: 4618         	mov	r0, r3
  3d53bc: f3b5 f81e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b503c
  3d53c0: f3b2 fe74    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3b2ce8
  3d53c4: b007         	add	sp, #0x1c
  3d53c6: bd30         	pop	{r4, r5, pc}

// ==== ScoreList::activateScore
//      file offset 0x3d53c8 (= ELF address; Ghidra 0x3e53c8), 116 bytes, Thumb-2
  3d53c8: b530         	push	{r4, r5, lr}
  3d53ca: b087         	sub	sp, #0x1c
  3d53cc: 9001         	str	r0, [sp, #0x4]
  3d53ce: 9100         	str	r1, [sp]
  3d53d0: 9b01         	ldr	r3, [sp, #0x4]
  3d53d2: f8d3 40e4    	ldr.w	r4, [r3, #0xe4]
  3d53d6: 9800         	ldr	r0, [sp]
  3d53d8: f3df ff92    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3dff24
  3d53dc: 4605         	mov	r5, r0
  3d53de: ab03         	add	r3, sp, #0xc
  3d53e0: 4618         	mov	r0, r3
  3d53e2: f3b5 f807    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3b500e
  3d53e6: aa04         	add	r2, sp, #0x10
  3d53e8: ab03         	add	r3, sp, #0xc
  3d53ea: 4610         	mov	r0, r2
  3d53ec: 4629         	mov	r1, r5
  3d53ee: 461a         	mov	r2, r3
  3d53f0: f3e1 fb36    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3e166c
  3d53f4: ab04         	add	r3, sp, #0x10
  3d53f6: 4620         	mov	r0, r4
  3d53f8: 4619         	mov	r1, r3
  3d53fa: f1be fd79    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x1beaf2
  3d53fe: 4603         	mov	r3, r0
  3d5400: 9305         	str	r3, [sp, #0x14]
  3d5402: ab04         	add	r3, sp, #0x10
  3d5404: 4618         	mov	r0, r3
  3d5406: f3e0 fa85    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e050a
  3d540a: ab03         	add	r3, sp, #0xc
  3d540c: 4618         	mov	r0, r3
  3d540e: f3b4 fff5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b4fea
  3d5412: 9b05         	ldr	r3, [sp, #0x14]
  3d5414: 2b00         	cmp	r3, #0x0
  3d5416: d00f         	beq	0x3d5438 <ScoreList::activateScore(std::string)+0x70> @ imm = #0x1e
  3d5418: 9b05         	ldr	r3, [sp, #0x14]
  3d541a: 2201         	movs	r2, #0x1
  3d541c: f883 210c    	strb.w	r2, [r3, #0x10c]
  3d5420: e00a         	b	0x3d5438 <ScoreList::activateScore(std::string)+0x70> @ imm = #0x14
  3d5422: ab04         	add	r3, sp, #0x10
  3d5424: 4618         	mov	r0, r3
  3d5426: f3e0 fa75    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3e04ea
  3d542a: e7ff         	b	0x3d542c <ScoreList::activateScore(std::string)+0x64> @ imm = #-0x2
  3d542c: ab03         	add	r3, sp, #0xc
  3d542e: 4618         	mov	r0, r3
  3d5430: f3b4 ffe4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3b4fc8
  3d5434: f3b2 fe3a    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3b2c74
  3d5438: b007         	add	sp, #0x1c
  3d543a: bd30         	pop	{r4, r5, pc}

// ==== ScoreList::setOpacity
//      file offset 0x3d543c (= ELF address; Ghidra 0x3e543c), 310 bytes, Thumb-2
  3d543c: b500         	push	{lr}
  3d543e: b089         	sub	sp, #0x24
  3d5440: 9001         	str	r0, [sp, #0x4]
  3d5442: 9100         	str	r1, [sp]
  3d5444: 2300         	movs	r3, #0x0
  3d5446: 9303         	str	r3, [sp, #0xc]
  3d5448: 2300         	movs	r3, #0x0
  3d544a: 9304         	str	r3, [sp, #0x10]
  3d544c: 9b01         	ldr	r3, [sp, #0x4]
  3d544e: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3d5452: 2b00         	cmp	r3, #0x0
  3d5454: d00a         	beq	0x3d546c <ScoreList::setOpacity(int)+0x30> @ imm = #0x14
  3d5456: 9b01         	ldr	r3, [sp, #0x4]
  3d5458: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3d545c: 4618         	mov	r0, r3
  3d545e: f1be fc05    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x1be80a
  3d5462: 4603         	mov	r3, r0
  3d5464: 2b00         	cmp	r3, #0x0
  3d5466: d001         	beq	0x3d546c <ScoreList::setOpacity(int)+0x30> @ imm = #0x2
  3d5468: 2301         	movs	r3, #0x1
  3d546a: e000         	b	0x3d546e <ScoreList::setOpacity(int)+0x32> @ imm = #0x0
  3d546c: 2300         	movs	r3, #0x0
  3d546e: 2b00         	cmp	r3, #0x0
  3d5470: d02b         	beq	0x3d54ca <ScoreList::setOpacity(int)+0x8e> @ imm = #0x56
  3d5472: 9b01         	ldr	r3, [sp, #0x4]
  3d5474: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3d5478: 695b         	ldr	r3, [r3, #0x14]
  3d547a: 9303         	str	r3, [sp, #0xc]
  3d547c: 9b01         	ldr	r3, [sp, #0x4]
  3d547e: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3d5482: 695b         	ldr	r3, [r3, #0x14]
  3d5484: 2b00         	cmp	r3, #0x0
  3d5486: d006         	beq	0x3d5496 <ScoreList::setOpacity(int)+0x5a> @ imm = #0xc
  3d5488: 9b01         	ldr	r3, [sp, #0x4]
  3d548a: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3d548e: 695b         	ldr	r3, [r3, #0x14]
  3d5490: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3d5494: e000         	b	0x3d5498 <ScoreList::setOpacity(int)+0x5c> @ imm = #0x0
  3d5496: 2300         	movs	r3, #0x0
  3d5498: 9304         	str	r3, [sp, #0x10]
  3d549a: e013         	b	0x3d54c4 <ScoreList::setOpacity(int)+0x88> @ imm = #0x26
  3d549c: 9803         	ldr	r0, [sp, #0xc]
  3d549e: f729 f8c9    	bl	0x2fe634 <cocos2d::CCDictElement::getObject() const> @ imm = #-0xd6e6e
  3d54a2: 4603         	mov	r3, r0
  3d54a4: 9306         	str	r3, [sp, #0x18]
  3d54a6: 9806         	ldr	r0, [sp, #0x18]
  3d54a8: 9900         	ldr	r1, [sp]
  3d54aa: f7ff f959    	bl	0x3d4760 <ScoreRow::setOpacity(int)> @ imm = #-0xd4e
  3d54ae: 9b04         	ldr	r3, [sp, #0x10]
  3d54b0: 9303         	str	r3, [sp, #0xc]
  3d54b2: 9b04         	ldr	r3, [sp, #0x10]
  3d54b4: 2b00         	cmp	r3, #0x0
  3d54b6: d003         	beq	0x3d54c0 <ScoreList::setOpacity(int)+0x84> @ imm = #0x6
  3d54b8: 9b04         	ldr	r3, [sp, #0x10]
  3d54ba: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3d54be: e000         	b	0x3d54c2 <ScoreList::setOpacity(int)+0x86> @ imm = #0x0
  3d54c0: 2300         	movs	r3, #0x0
  3d54c2: 9304         	str	r3, [sp, #0x10]
  3d54c4: 9b03         	ldr	r3, [sp, #0xc]
  3d54c6: 2b00         	cmp	r3, #0x0
  3d54c8: d1e8         	bne	0x3d549c <ScoreList::setOpacity(int)+0x60> @ imm = #-0x30
  3d54ca: 2300         	movs	r3, #0x0
  3d54cc: 9305         	str	r3, [sp, #0x14]
  3d54ce: 9b01         	ldr	r3, [sp, #0x4]
  3d54d0: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3d54d4: 2b00         	cmp	r3, #0x0
  3d54d6: d00a         	beq	0x3d54ee <ScoreList::setOpacity(int)+0xb2> @ imm = #0x14
  3d54d8: 9b01         	ldr	r3, [sp, #0x4]
  3d54da: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3d54de: 4618         	mov	r0, r3
  3d54e0: f1be fbc4    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x1be788
  3d54e4: 4603         	mov	r3, r0
  3d54e6: 2b00         	cmp	r3, #0x0
  3d54e8: d001         	beq	0x3d54ee <ScoreList::setOpacity(int)+0xb2> @ imm = #0x2
  3d54ea: 2301         	movs	r3, #0x1
  3d54ec: e000         	b	0x3d54f0 <ScoreList::setOpacity(int)+0xb4> @ imm = #0x0
  3d54ee: 2300         	movs	r3, #0x0
  3d54f0: 2b00         	cmp	r3, #0x0
  3d54f2: d02b         	beq	0x3d554c <ScoreList::setOpacity(int)+0x110> @ imm = #0x56
  3d54f4: 9b01         	ldr	r3, [sp, #0x4]
  3d54f6: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3d54fa: 695b         	ldr	r3, [r3, #0x14]
  3d54fc: 9303         	str	r3, [sp, #0xc]
  3d54fe: 9b01         	ldr	r3, [sp, #0x4]
  3d5500: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3d5504: 695b         	ldr	r3, [r3, #0x14]
  3d5506: 2b00         	cmp	r3, #0x0
  3d5508: d006         	beq	0x3d5518 <ScoreList::setOpacity(int)+0xdc> @ imm = #0xc
  3d550a: 9b01         	ldr	r3, [sp, #0x4]
  3d550c: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3d5510: 695b         	ldr	r3, [r3, #0x14]
  3d5512: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3d5516: e000         	b	0x3d551a <ScoreList::setOpacity(int)+0xde> @ imm = #0x0
  3d5518: 2300         	movs	r3, #0x0
  3d551a: 9305         	str	r3, [sp, #0x14]
  3d551c: e013         	b	0x3d5546 <ScoreList::setOpacity(int)+0x10a> @ imm = #0x26
  3d551e: 9803         	ldr	r0, [sp, #0xc]
  3d5520: f729 f888    	bl	0x2fe634 <cocos2d::CCDictElement::getObject() const> @ imm = #-0xd6ef0
  3d5524: 4603         	mov	r3, r0
  3d5526: 9307         	str	r3, [sp, #0x1c]
  3d5528: 9807         	ldr	r0, [sp, #0x1c]
  3d552a: 9900         	ldr	r1, [sp]
  3d552c: f7fe fc34    	bl	0x3d3d98 <TeamRow::setOpacity(int)> @ imm = #-0x1798
  3d5530: 9b05         	ldr	r3, [sp, #0x14]
  3d5532: 9303         	str	r3, [sp, #0xc]
  3d5534: 9b05         	ldr	r3, [sp, #0x14]
  3d5536: 2b00         	cmp	r3, #0x0
  3d5538: d003         	beq	0x3d5542 <ScoreList::setOpacity(int)+0x106> @ imm = #0x6
  3d553a: 9b05         	ldr	r3, [sp, #0x14]
  3d553c: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3d5540: e000         	b	0x3d5544 <ScoreList::setOpacity(int)+0x108> @ imm = #0x0
  3d5542: 2300         	movs	r3, #0x0
  3d5544: 9305         	str	r3, [sp, #0x14]
  3d5546: 9b03         	ldr	r3, [sp, #0xc]
  3d5548: 2b00         	cmp	r3, #0x0
  3d554a: d1e8         	bne	0x3d551e <ScoreList::setOpacity(int)+0xe2> @ imm = #-0x30
  3d554c: 9b01         	ldr	r3, [sp, #0x4]
  3d554e: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3d5552: 681b         	ldr	r3, [r3]
  3d5554: f503 73d2    	add.w	r3, r3, #0x1a4
  3d5558: 681b         	ldr	r3, [r3]
  3d555a: 9a01         	ldr	r2, [sp, #0x4]
  3d555c: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  3d5560: 4611         	mov	r1, r2
  3d5562: 9a00         	ldr	r2, [sp]
  3d5564: b2d2         	uxtb	r2, r2
  3d5566: 4608         	mov	r0, r1
  3d5568: 4611         	mov	r1, r2
  3d556a: 4798         	blx	r3
  3d556c: b009         	add	sp, #0x24
  3d556e: f85d fb04    	ldr	pc, [sp], #4

// ==== ScoreList::getScoreRowAt
//      file offset 0x3d5574 (= ELF address; Ghidra 0x3e5574), 280 bytes, Thumb-2
  3d5574: b530         	push	{r4, r5, lr}
  3d5576: b08b         	sub	sp, #0x2c
  3d5578: 9001         	str	r0, [sp, #0x4]
  3d557a: 9100         	str	r1, [sp]
  3d557c: 4c41         	ldr	r4, [pc, #0x104]        @ 0x3d5684 <ScoreList::getScoreRowAt(int)+0x110>
  3d557e: 447c         	add	r4, pc
  3d5580: ab07         	add	r3, sp, #0x1c
  3d5582: 4618         	mov	r0, r3
  3d5584: f001 fe5a    	bl	0x3d723c <std::vector<ScoreRow*, std::allocator<ScoreRow*>>::vector()> @ imm = #0x1cb4
  3d5588: 2300         	movs	r3, #0x0
  3d558a: 9304         	str	r3, [sp, #0x10]
  3d558c: 2300         	movs	r3, #0x0
  3d558e: 9305         	str	r3, [sp, #0x14]
  3d5590: 9b01         	ldr	r3, [sp, #0x4]
  3d5592: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3d5596: 2b00         	cmp	r3, #0x0
  3d5598: d00a         	beq	0x3d55b0 <ScoreList::getScoreRowAt(int)+0x3c> @ imm = #0x14
  3d559a: 9b01         	ldr	r3, [sp, #0x4]
  3d559c: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3d55a0: 4618         	mov	r0, r3
  3d55a2: f1be fb63    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x1be6c6
  3d55a6: 4603         	mov	r3, r0
  3d55a8: 2b00         	cmp	r3, #0x0
  3d55aa: d001         	beq	0x3d55b0 <ScoreList::getScoreRowAt(int)+0x3c> @ imm = #0x2
  3d55ac: 2301         	movs	r3, #0x1
  3d55ae: e000         	b	0x3d55b2 <ScoreList::getScoreRowAt(int)+0x3e> @ imm = #0x0
  3d55b0: 2300         	movs	r3, #0x0
  3d55b2: 2b00         	cmp	r3, #0x0
  3d55b4: d02d         	beq	0x3d5612 <ScoreList::getScoreRowAt(int)+0x9e> @ imm = #0x5a
  3d55b6: 9b01         	ldr	r3, [sp, #0x4]
  3d55b8: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3d55bc: 695b         	ldr	r3, [r3, #0x14]
  3d55be: 9304         	str	r3, [sp, #0x10]
  3d55c0: 9b01         	ldr	r3, [sp, #0x4]
  3d55c2: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3d55c6: 695b         	ldr	r3, [r3, #0x14]
  3d55c8: 2b00         	cmp	r3, #0x0
  3d55ca: d006         	beq	0x3d55da <ScoreList::getScoreRowAt(int)+0x66> @ imm = #0xc
  3d55cc: 9b01         	ldr	r3, [sp, #0x4]
  3d55ce: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3d55d2: 695b         	ldr	r3, [r3, #0x14]
  3d55d4: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3d55d8: e000         	b	0x3d55dc <ScoreList::getScoreRowAt(int)+0x68> @ imm = #0x0
  3d55da: 2300         	movs	r3, #0x0
  3d55dc: 9305         	str	r3, [sp, #0x14]
  3d55de: e015         	b	0x3d560c <ScoreList::getScoreRowAt(int)+0x98> @ imm = #0x2a
  3d55e0: 9804         	ldr	r0, [sp, #0x10]
  3d55e2: f729 f827    	bl	0x2fe634 <cocos2d::CCDictElement::getObject() const> @ imm = #-0xd6fb2
  3d55e6: 4603         	mov	r3, r0
  3d55e8: 9303         	str	r3, [sp, #0xc]
  3d55ea: aa07         	add	r2, sp, #0x1c
  3d55ec: ab03         	add	r3, sp, #0xc
  3d55ee: 4610         	mov	r0, r2
  3d55f0: 4619         	mov	r1, r3
  3d55f2: f001 fe65    	bl	0x3d72c0 <std::vector<ScoreRow*, std::allocator<ScoreRow*>>::push_back(ScoreRow*&&)> @ imm = #0x1cca
  3d55f6: 9b05         	ldr	r3, [sp, #0x14]
  3d55f8: 9304         	str	r3, [sp, #0x10]
  3d55fa: 9b05         	ldr	r3, [sp, #0x14]
  3d55fc: 2b00         	cmp	r3, #0x0
  3d55fe: d003         	beq	0x3d5608 <ScoreList::getScoreRowAt(int)+0x94> @ imm = #0x6
  3d5600: 9b05         	ldr	r3, [sp, #0x14]
  3d5602: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3d5606: e000         	b	0x3d560a <ScoreList::getScoreRowAt(int)+0x96> @ imm = #0x0
  3d5608: 2300         	movs	r3, #0x0
  3d560a: 9305         	str	r3, [sp, #0x14]
  3d560c: 9b04         	ldr	r3, [sp, #0x10]
  3d560e: 2b00         	cmp	r3, #0x0
  3d5610: d1e6         	bne	0x3d55e0 <ScoreList::getScoreRowAt(int)+0x6c> @ imm = #-0x34
  3d5612: ab07         	add	r3, sp, #0x1c
  3d5614: 4618         	mov	r0, r3
  3d5616: f001 fe63    	bl	0x3d72e0 <std::vector<ScoreRow*, std::allocator<ScoreRow*>>::begin()> @ imm = #0x1cc6
  3d561a: 4605         	mov	r5, r0
  3d561c: ab07         	add	r3, sp, #0x1c
  3d561e: 4618         	mov	r0, r3
  3d5620: f001 fe6c    	bl	0x3d72fc <std::vector<ScoreRow*, std::allocator<ScoreRow*>>::end()> @ imm = #0x1cd8
  3d5624: 4603         	mov	r3, r0
  3d5626: 4628         	mov	r0, r5
  3d5628: 4619         	mov	r1, r3
  3d562a: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x3d5688 <ScoreList::getScoreRowAt(int)+0x114>
  3d562c: 58e3         	ldr	r3, [r4, r3]
  3d562e: 461a         	mov	r2, r3
  3d5630: f001 fe74    	bl	0x3d731c <void std::sort<__gnu_cxx::__normal_iterator<ScoreRow**, std::vector<ScoreRow*, std::allocator<ScoreRow*>>>, bool (*)(ScoreRow*, ScoreRow*)>(__gnu_cxx::__normal_iterator<ScoreRow**, std::vector<ScoreRow*, std::allocator<ScoreRow*>>>, __gnu_cxx::__normal_iterator<ScoreRow**, std::vector<ScoreRow*, std::allocator<ScoreRow*>>>, bool (*)(ScoreRow*, ScoreRow*))> @ imm = #0x1ce8
  3d5634: 9c00         	ldr	r4, [sp]
  3d5636: ab07         	add	r3, sp, #0x1c
  3d5638: 4618         	mov	r0, r3
  3d563a: f001 fe97    	bl	0x3d736c <std::vector<ScoreRow*, std::allocator<ScoreRow*>>::size() const> @ imm = #0x1d2e
  3d563e: 4603         	mov	r3, r0
  3d5640: 429c         	cmp	r4, r3
  3d5642: bf34         	ite	lo
  3d5644: 2300         	movlo	r3, #0x0
  3d5646: 2301         	movhs	r3, #0x1
  3d5648: b2db         	uxtb	r3, r3
  3d564a: 2b00         	cmp	r3, #0x0
  3d564c: d001         	beq	0x3d5652 <ScoreList::getScoreRowAt(int)+0xde> @ imm = #0x2
  3d564e: 2400         	movs	r4, #0x0
  3d5650: e009         	b	0x3d5666 <ScoreList::getScoreRowAt(int)+0xf2> @ imm = #0x12
  3d5652: 9b00         	ldr	r3, [sp]
  3d5654: aa07         	add	r2, sp, #0x1c
  3d5656: 4610         	mov	r0, r2
  3d5658: 4619         	mov	r1, r3
  3d565a: f001 fe93    	bl	0x3d7384 <std::vector<ScoreRow*, std::allocator<ScoreRow*>>::operator[](unsigned int)> @ imm = #0x1d26
  3d565e: 4603         	mov	r3, r0
  3d5660: 681b         	ldr	r3, [r3]
  3d5662: 9306         	str	r3, [sp, #0x18]
  3d5664: 9c06         	ldr	r4, [sp, #0x18]
  3d5666: ab07         	add	r3, sp, #0x1c
  3d5668: 4618         	mov	r0, r3
  3d566a: f001 fdf3    	bl	0x3d7254 <std::vector<ScoreRow*, std::allocator<ScoreRow*>>::~vector()> @ imm = #0x1be6
  3d566e: 4623         	mov	r3, r4
  3d5670: e005         	b	0x3d567e <ScoreList::getScoreRowAt(int)+0x10a> @ imm = #0xa
  3d5672: ab07         	add	r3, sp, #0x1c
  3d5674: 4618         	mov	r0, r3
  3d5676: f001 fded    	bl	0x3d7254 <std::vector<ScoreRow*, std::allocator<ScoreRow*>>::~vector()> @ imm = #0x1bda
  3d567a: f3b2 fd17    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3b2a2e
  3d567e: 4618         	mov	r0, r3
  3d5680: b00b         	add	sp, #0x2c
  3d5682: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3d5683); words below are literal-pool data ---
  3d5684: d48a         	bmi	0x3d559c <ScoreList::getScoreRowAt(int)+0x28> @ imm = #-0xec
  3d5686: 0055         	lsls	r5, r2, #0x1
  3d5688: dec0         	udf	#0xc0
  3d568a: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== ScoreList::getTeamRowAt
//      file offset 0x3d568c (= ELF address; Ghidra 0x3e568c), 280 bytes, Thumb-2
  3d568c: b530         	push	{r4, r5, lr}
  3d568e: b08b         	sub	sp, #0x2c
  3d5690: 9001         	str	r0, [sp, #0x4]
  3d5692: 9100         	str	r1, [sp]
  3d5694: 4c41         	ldr	r4, [pc, #0x104]        @ 0x3d579c <ScoreList::getTeamRowAt(int)+0x110>
  3d5696: 447c         	add	r4, pc
  3d5698: ab07         	add	r3, sp, #0x1c
  3d569a: 4618         	mov	r0, r3
  3d569c: f001 fda8    	bl	0x3d71f0 <std::vector<TeamRow*, std::allocator<TeamRow*>>::vector()> @ imm = #0x1b50
  3d56a0: 2300         	movs	r3, #0x0
  3d56a2: 9304         	str	r3, [sp, #0x10]
  3d56a4: 2300         	movs	r3, #0x0
  3d56a6: 9305         	str	r3, [sp, #0x14]
  3d56a8: 9b01         	ldr	r3, [sp, #0x4]
  3d56aa: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3d56ae: 2b00         	cmp	r3, #0x0
  3d56b0: d00a         	beq	0x3d56c8 <ScoreList::getTeamRowAt(int)+0x3c> @ imm = #0x14
  3d56b2: 9b01         	ldr	r3, [sp, #0x4]
  3d56b4: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3d56b8: 4618         	mov	r0, r3
  3d56ba: f1be fad7    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x1be5ae
  3d56be: 4603         	mov	r3, r0
  3d56c0: 2b00         	cmp	r3, #0x0
  3d56c2: d001         	beq	0x3d56c8 <ScoreList::getTeamRowAt(int)+0x3c> @ imm = #0x2
  3d56c4: 2301         	movs	r3, #0x1
  3d56c6: e000         	b	0x3d56ca <ScoreList::getTeamRowAt(int)+0x3e> @ imm = #0x0
  3d56c8: 2300         	movs	r3, #0x0
  3d56ca: 2b00         	cmp	r3, #0x0
  3d56cc: d02d         	beq	0x3d572a <ScoreList::getTeamRowAt(int)+0x9e> @ imm = #0x5a
  3d56ce: 9b01         	ldr	r3, [sp, #0x4]
  3d56d0: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3d56d4: 695b         	ldr	r3, [r3, #0x14]
  3d56d6: 9304         	str	r3, [sp, #0x10]
  3d56d8: 9b01         	ldr	r3, [sp, #0x4]
  3d56da: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3d56de: 695b         	ldr	r3, [r3, #0x14]
  3d56e0: 2b00         	cmp	r3, #0x0
  3d56e2: d006         	beq	0x3d56f2 <ScoreList::getTeamRowAt(int)+0x66> @ imm = #0xc
  3d56e4: 9b01         	ldr	r3, [sp, #0x4]
  3d56e6: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3d56ea: 695b         	ldr	r3, [r3, #0x14]
  3d56ec: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3d56f0: e000         	b	0x3d56f4 <ScoreList::getTeamRowAt(int)+0x68> @ imm = #0x0
  3d56f2: 2300         	movs	r3, #0x0
  3d56f4: 9305         	str	r3, [sp, #0x14]
  3d56f6: e015         	b	0x3d5724 <ScoreList::getTeamRowAt(int)+0x98> @ imm = #0x2a
  3d56f8: 9804         	ldr	r0, [sp, #0x10]
  3d56fa: f728 ff9b    	bl	0x2fe634 <cocos2d::CCDictElement::getObject() const> @ imm = #-0xd70ca
  3d56fe: 4603         	mov	r3, r0
  3d5700: 9303         	str	r3, [sp, #0xc]
  3d5702: aa07         	add	r2, sp, #0x1c
  3d5704: ab03         	add	r3, sp, #0xc
  3d5706: 4610         	mov	r0, r2
  3d5708: 4619         	mov	r1, r3
  3d570a: f001 fdc3    	bl	0x3d7294 <std::vector<TeamRow*, std::allocator<TeamRow*>>::push_back(TeamRow*&&)> @ imm = #0x1b86
  3d570e: 9b05         	ldr	r3, [sp, #0x14]
  3d5710: 9304         	str	r3, [sp, #0x10]
  3d5712: 9b05         	ldr	r3, [sp, #0x14]
  3d5714: 2b00         	cmp	r3, #0x0
  3d5716: d003         	beq	0x3d5720 <ScoreList::getTeamRowAt(int)+0x94> @ imm = #0x6
  3d5718: 9b05         	ldr	r3, [sp, #0x14]
  3d571a: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3d571e: e000         	b	0x3d5722 <ScoreList::getTeamRowAt(int)+0x96> @ imm = #0x0
  3d5720: 2300         	movs	r3, #0x0
  3d5722: 9305         	str	r3, [sp, #0x14]
  3d5724: 9b04         	ldr	r3, [sp, #0x10]
  3d5726: 2b00         	cmp	r3, #0x0
  3d5728: d1e6         	bne	0x3d56f8 <ScoreList::getTeamRowAt(int)+0x6c> @ imm = #-0x34
  3d572a: ab07         	add	r3, sp, #0x1c
  3d572c: 4618         	mov	r0, r3
  3d572e: f001 fe35    	bl	0x3d739c <std::vector<TeamRow*, std::allocator<TeamRow*>>::begin()> @ imm = #0x1c6a
  3d5732: 4605         	mov	r5, r0
  3d5734: ab07         	add	r3, sp, #0x1c
  3d5736: 4618         	mov	r0, r3
  3d5738: f001 fe3e    	bl	0x3d73b8 <std::vector<TeamRow*, std::allocator<TeamRow*>>::end()> @ imm = #0x1c7c
  3d573c: 4603         	mov	r3, r0
  3d573e: 4628         	mov	r0, r5
  3d5740: 4619         	mov	r1, r3
  3d5742: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x3d57a0 <ScoreList::getTeamRowAt(int)+0x114>
  3d5744: 58e3         	ldr	r3, [r4, r3]
  3d5746: 461a         	mov	r2, r3
  3d5748: f001 fe46    	bl	0x3d73d8 <void std::sort<__gnu_cxx::__normal_iterator<TeamRow**, std::vector<TeamRow*, std::allocator<TeamRow*>>>, bool (*)(TeamRow*, TeamRow*)>(__gnu_cxx::__normal_iterator<TeamRow**, std::vector<TeamRow*, std::allocator<TeamRow*>>>, __gnu_cxx::__normal_iterator<TeamRow**, std::vector<TeamRow*, std::allocator<TeamRow*>>>, bool (*)(TeamRow*, TeamRow*))> @ imm = #0x1c8c
  3d574c: 9c00         	ldr	r4, [sp]
  3d574e: ab07         	add	r3, sp, #0x1c
  3d5750: 4618         	mov	r0, r3
  3d5752: f001 fe69    	bl	0x3d7428 <std::vector<TeamRow*, std::allocator<TeamRow*>>::size() const> @ imm = #0x1cd2
  3d5756: 4603         	mov	r3, r0
  3d5758: 429c         	cmp	r4, r3
  3d575a: bf34         	ite	lo
  3d575c: 2300         	movlo	r3, #0x0
  3d575e: 2301         	movhs	r3, #0x1
  3d5760: b2db         	uxtb	r3, r3
  3d5762: 2b00         	cmp	r3, #0x0
  3d5764: d001         	beq	0x3d576a <ScoreList::getTeamRowAt(int)+0xde> @ imm = #0x2
  3d5766: 2400         	movs	r4, #0x0
  3d5768: e009         	b	0x3d577e <ScoreList::getTeamRowAt(int)+0xf2> @ imm = #0x12
  3d576a: 9b00         	ldr	r3, [sp]
  3d576c: aa07         	add	r2, sp, #0x1c
  3d576e: 4610         	mov	r0, r2
  3d5770: 4619         	mov	r1, r3
  3d5772: f001 fe65    	bl	0x3d7440 <std::vector<TeamRow*, std::allocator<TeamRow*>>::operator[](unsigned int)> @ imm = #0x1cca
  3d5776: 4603         	mov	r3, r0
  3d5778: 681b         	ldr	r3, [r3]
  3d577a: 9306         	str	r3, [sp, #0x18]
  3d577c: 9c06         	ldr	r4, [sp, #0x18]
  3d577e: ab07         	add	r3, sp, #0x1c
  3d5780: 4618         	mov	r0, r3
  3d5782: f001 fd41    	bl	0x3d7208 <std::vector<TeamRow*, std::allocator<TeamRow*>>::~vector()> @ imm = #0x1a82
  3d5786: 4623         	mov	r3, r4
  3d5788: e005         	b	0x3d5796 <ScoreList::getTeamRowAt(int)+0x10a> @ imm = #0xa
  3d578a: ab07         	add	r3, sp, #0x1c
  3d578c: 4618         	mov	r0, r3
  3d578e: f001 fd3b    	bl	0x3d7208 <std::vector<TeamRow*, std::allocator<TeamRow*>>::~vector()> @ imm = #0x1a76
  3d5792: f3b2 fc8b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3b2916
  3d5796: 4618         	mov	r0, r3
  3d5798: b00b         	add	sp, #0x2c
  3d579a: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3d579b); words below are literal-pool data ---
  3d579c: d372         	blo	0x3d5884 <ScoreScreen::init()+0x98> @ imm = #0xe4
  3d579e: 0055         	lsls	r5, r2, #0x1
  3d57a0: dec4         	udf	#0xc4
  3d57a2: ffff b510    	vsli.32	d27, d0, #0x1f
